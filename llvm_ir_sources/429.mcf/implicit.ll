; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/implicit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@__func__.resize_prob = private unnamed_addr constant [12 x i8] c"resize_prob\00", align 1
@.str = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/implicit.c\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"net->max_new_m >= 3\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"network %s: not enough memory\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*

; Function Attrs: nounwind optsize ssp uwtable
define i64 @resize_prob(%struct.network* %net) #0 {
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !91, metadata !159), !dbg !160
  %1 = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !161
  %2 = load i64* %1, align 8, !dbg !161, !tbaa !162
  %3 = icmp slt i64 %2, 3, !dbg !161
  br i1 %3, label %4, label %5, !dbg !161, !prof !169

; <label>:4                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.resize_prob, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([20 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !161
  unreachable, !dbg !161

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.network* %net, i64 0, i32 4, !dbg !170
  %7 = load i64* %6, align 8, !dbg !171, !tbaa !172
  %8 = add nsw i64 %7, %2, !dbg !171
  store i64 %8, i64* %6, align 8, !dbg !171, !tbaa !172
  %9 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !173
  %10 = load i64* %9, align 8, !dbg !174, !tbaa !175
  %11 = add nsw i64 %10, %2, !dbg !174
  store i64 %11, i64* %9, align 8, !dbg !174, !tbaa !175
  %12 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !176
  %13 = bitcast %struct.arc** %12 to i8**, !dbg !176
  %14 = load i8** %13, align 8, !dbg !176, !tbaa !177
  %15 = shl i64 %8, 6, !dbg !178
  %16 = tail call i8* @realloc(i8* %14, i64 %15) #7, !dbg !179
  tail call void @llvm.dbg.value(metadata %struct.arc* %24, i64 0, metadata !92, metadata !159), !dbg !180
  %17 = icmp eq i8* %16, null, !dbg !181
  br i1 %17, label %18, label %23, !dbg !183

; <label>:18                                      ; preds = %5
  %19 = getelementptr inbounds %struct.network* %net, i64 0, i32 0, i64 0, !dbg !184
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i8* %19) #7, !dbg !186
  %21 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !187, !tbaa !188
  %22 = tail call i32 @fflush(%struct.__sFILE* %21) #7, !dbg !189
  br label %.loopexit, !dbg !190

; <label>:23                                      ; preds = %5
  %24 = bitcast i8* %16 to %struct.arc*, !dbg !191
  %25 = ptrtoint i8* %16 to i64, !dbg !192
  %26 = load %struct.arc** %12, align 8, !dbg !193, !tbaa !177
  %27 = ptrtoint %struct.arc* %26 to i64, !dbg !194
  %28 = sub i64 %25, %27, !dbg !195
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !98, metadata !159), !dbg !196
  store i8* %16, i8** %13, align 8, !dbg !197, !tbaa !177
  %29 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !198
  %30 = load i64* %29, align 8, !dbg !198, !tbaa !199
  %31 = getelementptr inbounds %struct.arc* %24, i64 %30, !dbg !200
  %32 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !201
  store %struct.arc* %31, %struct.arc** %32, align 8, !dbg !202, !tbaa !203
  %33 = getelementptr inbounds %struct.network* %net, i64 0, i32 21, !dbg !204
  %34 = load %struct.node** %33, align 8, !dbg !204, !tbaa !205
  tail call void @llvm.dbg.value(metadata %struct.node* %34, i64 0, metadata !93, metadata !159), !dbg !206
  tail call void @llvm.dbg.value(metadata %struct.node* %34, i64 0, metadata !97, metadata !159), !dbg !207
  %35 = getelementptr inbounds %struct.network* %net, i64 0, i32 22, !dbg !208
  %36 = load %struct.node** %35, align 8, !dbg !208, !tbaa !210
  tail call void @llvm.dbg.value(metadata %struct.node* %36, i64 0, metadata !96, metadata !159), !dbg !211
  %node.01 = getelementptr inbounds %struct.node* %34, i64 1, !dbg !212
  %37 = icmp ult %struct.node* %node.01, %36, !dbg !213
  br i1 %37, label %.lr.ph, label %.loopexit, !dbg !215

.lr.ph:                                           ; preds = %23, %.backedge
  %38 = phi %struct.node* [ %node.03, %.backedge ], [ %34, %23 ]
  %node.03 = phi %struct.node* [ %node.0, %.backedge ], [ %node.01, %23 ]
  %39 = getelementptr inbounds %struct.node* %38, i64 1, i32 3, !dbg !216
  %40 = load %struct.node** %39, align 8, !dbg !216, !tbaa !218
  %41 = icmp eq %struct.node* %40, %34, !dbg !221
  br i1 %41, label %.backedge, label %43, !dbg !222

.backedge:                                        ; preds = %.lr.ph, %43
  %node.0 = getelementptr inbounds %struct.node* %38, i64 2, !dbg !212
  %42 = icmp ult %struct.node* %node.0, %36, !dbg !213
  br i1 %42, label %.lr.ph, label %.loopexit, !dbg !215

; <label>:43                                      ; preds = %.lr.ph
  %44 = getelementptr inbounds %struct.node* %38, i64 1, i32 6, !dbg !223
  %45 = load %struct.arc** %44, align 8, !dbg !223, !tbaa !224
  %46 = ptrtoint %struct.arc* %45 to i64, !dbg !225
  %47 = add i64 %28, %46, !dbg !226
  %48 = inttoptr i64 %47 to %struct.arc*, !dbg !227
  store %struct.arc* %48, %struct.arc** %44, align 8, !dbg !228, !tbaa !224
  br label %.backedge, !dbg !229

.loopexit:                                        ; preds = %.backedge, %23, %18
  %.0 = phi i64 [ -1, %18 ], [ 0, %23 ], [ 0, %.backedge ]
  ret i64 %.0, !dbg !230
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @insert_new_arc(%struct.arc* nocapture %new, i64 %newpos, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
  tail call void @llvm.dbg.value(metadata %struct.arc* %new, i64 0, metadata !103, metadata !159), !dbg !231
  tail call void @llvm.dbg.value(metadata i64 %newpos, i64 0, metadata !104, metadata !159), !dbg !232
  tail call void @llvm.dbg.value(metadata %struct.node* %tail, i64 0, metadata !105, metadata !159), !dbg !233
  tail call void @llvm.dbg.value(metadata %struct.node* %head, i64 0, metadata !106, metadata !159), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %cost, i64 0, metadata !107, metadata !159), !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %red_cost, i64 0, metadata !108, metadata !159), !dbg !236
  %1 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 1, !dbg !237
  store %struct.node* %tail, %struct.node** %1, align 8, !dbg !238, !tbaa !239
  %2 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 2, !dbg !241
  store %struct.node* %head, %struct.node** %2, align 8, !dbg !242, !tbaa !243
  %3 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 7, !dbg !244
  store i64 %cost, i64* %3, align 8, !dbg !245, !tbaa !246
  %4 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 0, !dbg !247
  store i64 %cost, i64* %4, align 8, !dbg !248, !tbaa !249
  %5 = getelementptr inbounds %struct.arc* %new, i64 %newpos, i32 6, !dbg !250
  store i64 %red_cost, i64* %5, align 8, !dbg !251, !tbaa !252
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !109, metadata !159), !dbg !253
  %6 = icmp eq i64 %newpos, 0, !dbg !254
  br i1 %6, label %.critedge, label %.lr.ph, !dbg !255

.lr.ph:                                           ; preds = %0
  %7 = add nsw i64 %newpos, 1, !dbg !256
  br label %8, !dbg !255

; <label>:8                                       ; preds = %.lr.ph, %15
  %9 = phi i64 [ %newpos, %.lr.ph ], [ %11, %15 ]
  %pos.01 = phi i64 [ %7, %.lr.ph ], [ %10, %15 ]
  %10 = sdiv i64 %pos.01, 2, !dbg !257
  %11 = add nsw i64 %10, -1, !dbg !258
  %12 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 6, !dbg !259
  %13 = load i64* %12, align 8, !dbg !259, !tbaa !252
  %14 = icmp slt i64 %13, %red_cost, !dbg !260
  br i1 %14, label %15, label %.critedge, !dbg !261

; <label>:15                                      ; preds = %8
  %16 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 1, !dbg !262
  %17 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 2, !dbg !264
  %18 = bitcast %struct.node** %17 to i64*, !dbg !264
  %19 = load i64* %18, align 8, !dbg !264, !tbaa !243
  %20 = getelementptr inbounds %struct.arc* %new, i64 %9, i32 2, !dbg !265
  %21 = bitcast %struct.node** %20 to i64*, !dbg !266
  store i64 %19, i64* %21, align 8, !dbg !266, !tbaa !243
  %22 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 0, !dbg !267
  %23 = bitcast i64* %22 to <2 x i64>*, !dbg !267
  %24 = load <2 x i64>* %23, align 8, !dbg !267, !tbaa !268
  %25 = getelementptr inbounds %struct.arc* %new, i64 %9, i32 0, !dbg !269
  %26 = bitcast i64* %25 to <2 x i64>*, !dbg !270
  store <2 x i64> %24, <2 x i64>* %26, align 8, !dbg !270, !tbaa !268
  %27 = load i64* %22, align 8, !dbg !271, !tbaa !249
  %28 = getelementptr inbounds %struct.arc* %new, i64 %9, i32 7, !dbg !272
  store i64 %27, i64* %28, align 8, !dbg !273, !tbaa !246
  %29 = getelementptr inbounds %struct.arc* %new, i64 %9, i32 6, !dbg !274
  store i64 %13, i64* %29, align 8, !dbg !275, !tbaa !252
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !109, metadata !159), !dbg !253
  store %struct.node* %tail, %struct.node** %16, align 8, !dbg !276, !tbaa !239
  store %struct.node* %head, %struct.node** %17, align 8, !dbg !277, !tbaa !243
  store i64 %cost, i64* %22, align 8, !dbg !278, !tbaa !249
  %30 = getelementptr inbounds %struct.arc* %new, i64 %11, i32 7, !dbg !279
  store i64 %cost, i64* %30, align 8, !dbg !280, !tbaa !246
  store i64 %red_cost, i64* %12, align 8, !dbg !281, !tbaa !252
  %31 = icmp eq i64 %11, 0, !dbg !254
  br i1 %31, label %.critedge, label %8, !dbg !255

.critedge:                                        ; preds = %8, %15, %0
  ret void, !dbg !282
}

; Function Attrs: nounwind optsize ssp uwtable
define void @replace_weaker_arc(%struct.network* nocapture readonly %net, %struct.arc* nocapture %new, %struct.node* %tail, %struct.node* %head, i64 %cost, i64 %red_cost) #0 {
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !114, metadata !159), !dbg !283
  tail call void @llvm.dbg.value(metadata %struct.arc* %new, i64 0, metadata !115, metadata !159), !dbg !284
  tail call void @llvm.dbg.value(metadata %struct.node* %tail, i64 0, metadata !116, metadata !159), !dbg !285
  tail call void @llvm.dbg.value(metadata %struct.node* %head, i64 0, metadata !117, metadata !159), !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %cost, i64 0, metadata !118, metadata !159), !dbg !287
  tail call void @llvm.dbg.value(metadata i64 %red_cost, i64 0, metadata !119, metadata !159), !dbg !288
  %1 = getelementptr inbounds %struct.arc* %new, i64 0, i32 1, !dbg !289
  store %struct.node* %tail, %struct.node** %1, align 8, !dbg !290, !tbaa !239
  %2 = getelementptr inbounds %struct.arc* %new, i64 0, i32 2, !dbg !291
  store %struct.node* %head, %struct.node** %2, align 8, !dbg !292, !tbaa !243
  %3 = getelementptr inbounds %struct.arc* %new, i64 0, i32 7, !dbg !293
  store i64 %cost, i64* %3, align 8, !dbg !294, !tbaa !246
  %4 = getelementptr inbounds %struct.arc* %new, i64 0, i32 0, !dbg !295
  store i64 %cost, i64* %4, align 8, !dbg !296, !tbaa !249
  %5 = getelementptr inbounds %struct.arc* %new, i64 0, i32 6, !dbg !297
  store i64 %red_cost, i64* %5, align 8, !dbg !298, !tbaa !252
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !120, metadata !159), !dbg !299
  %6 = getelementptr inbounds %struct.arc* %new, i64 1, i32 6, !dbg !300
  %7 = load i64* %6, align 8, !dbg !300, !tbaa !252
  %8 = getelementptr inbounds %struct.arc* %new, i64 2, i32 6, !dbg !301
  %9 = load i64* %8, align 8, !dbg !301, !tbaa !252
  %10 = icmp sgt i64 %7, %9, !dbg !302
  %11 = select i1 %10, i64 2, i64 3, !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !121, metadata !159), !dbg !304
  %12 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !305
  %13 = load i64* %12, align 8, !dbg !305, !tbaa !175
  %14 = icmp sgt i64 %11, %13, !dbg !306
  br i1 %14, label %.critedge, label %.lr.ph, !dbg !307

.lr.ph:                                           ; preds = %0, %.backedge
  %cmp.02 = phi i64 [ %cmp.0.be, %.backedge ], [ %11, %0 ]
  %pos.01 = phi i64 [ %cmp.02, %.backedge ], [ 1, %0 ]
  %15 = add nsw i64 %cmp.02, -1, !dbg !308
  %16 = getelementptr inbounds %struct.arc* %new, i64 %15, i32 6, !dbg !309
  %17 = load i64* %16, align 8, !dbg !309, !tbaa !252
  %18 = icmp sgt i64 %17, %red_cost, !dbg !310
  br i1 %18, label %19, label %.critedge, !dbg !311

; <label>:19                                      ; preds = %.lr.ph
  %20 = getelementptr inbounds %struct.arc* %new, i64 %15, i32 1, !dbg !312
  %21 = add nsw i64 %pos.01, -1, !dbg !314
  %22 = getelementptr inbounds %struct.arc* %new, i64 %15, i32 2, !dbg !315
  %23 = bitcast %struct.node** %22 to i64*, !dbg !315
  %24 = load i64* %23, align 8, !dbg !315, !tbaa !243
  %25 = getelementptr inbounds %struct.arc* %new, i64 %21, i32 2, !dbg !316
  %26 = bitcast %struct.node** %25 to i64*, !dbg !317
  store i64 %24, i64* %26, align 8, !dbg !317, !tbaa !243
  %27 = getelementptr inbounds %struct.arc* %new, i64 %15, i32 0, !dbg !318
  %28 = bitcast i64* %27 to <2 x i64>*, !dbg !318
  %29 = load <2 x i64>* %28, align 8, !dbg !318, !tbaa !268
  %30 = getelementptr inbounds %struct.arc* %new, i64 %21, i32 0, !dbg !319
  %31 = bitcast i64* %30 to <2 x i64>*, !dbg !320
  store <2 x i64> %29, <2 x i64>* %31, align 8, !dbg !320, !tbaa !268
  %32 = load i64* %27, align 8, !dbg !321, !tbaa !249
  %33 = getelementptr inbounds %struct.arc* %new, i64 %21, i32 7, !dbg !322
  store i64 %32, i64* %33, align 8, !dbg !323, !tbaa !246
  %34 = getelementptr inbounds %struct.arc* %new, i64 %21, i32 6, !dbg !324
  store i64 %17, i64* %34, align 8, !dbg !325, !tbaa !252
  store %struct.node* %tail, %struct.node** %20, align 8, !dbg !326, !tbaa !239
  store %struct.node* %head, %struct.node** %22, align 8, !dbg !327, !tbaa !243
  store i64 %cost, i64* %27, align 8, !dbg !328, !tbaa !249
  %35 = getelementptr inbounds %struct.arc* %new, i64 %15, i32 7, !dbg !329
  store i64 %cost, i64* %35, align 8, !dbg !330, !tbaa !246
  store i64 %red_cost, i64* %16, align 8, !dbg !331, !tbaa !252
  tail call void @llvm.dbg.value(metadata i64 %cmp.0.be, i64 0, metadata !120, metadata !159), !dbg !299
  %36 = shl nsw i64 %cmp.02, 1, !dbg !332
  tail call void @llvm.dbg.value(metadata i64 %36, i64 0, metadata !121, metadata !159), !dbg !304
  %37 = or i64 %36, 1, !dbg !333
  %38 = icmp sgt i64 %37, %13, !dbg !335
  br i1 %38, label %.backedge, label %40, !dbg !336

.backedge:                                        ; preds = %19, %40
  %cmp.0.be = phi i64 [ %36, %19 ], [ %., %40 ]
  %39 = icmp sgt i64 %cmp.0.be, %13, !dbg !306
  br i1 %39, label %.critedge, label %.lr.ph, !dbg !307

; <label>:40                                      ; preds = %19
  %41 = add nsw i64 %36, -1, !dbg !337
  %42 = getelementptr inbounds %struct.arc* %new, i64 %41, i32 6, !dbg !339
  %43 = load i64* %42, align 8, !dbg !339, !tbaa !252
  %44 = getelementptr inbounds %struct.arc* %new, i64 %36, i32 6, !dbg !340
  %45 = load i64* %44, align 8, !dbg !340, !tbaa !252
  %46 = icmp slt i64 %43, %45, !dbg !341
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !121, metadata !159), !dbg !304
  %. = select i1 %46, i64 %37, i64 %36, !dbg !342
  br label %.backedge, !dbg !342

.critedge:                                        ; preds = %.lr.ph, %.backedge, %0
  ret void, !dbg !343
}

; Function Attrs: nounwind optsize ssp uwtable
define i64 @price_out_impl(%struct.network* %net) #0 {
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !124, metadata !159), !dbg !344
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !127, metadata !159), !dbg !345
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !128, metadata !159), !dbg !346
  tail call void @llvm.dbg.value(metadata i64 15, i64 0, metadata !130, metadata !159), !dbg !347
  %1 = getelementptr inbounds %struct.network* %net, i64 0, i32 18, !dbg !348
  %2 = load i64* %1, align 8, !dbg !348, !tbaa !349
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !131, metadata !159), !dbg !350
  tail call void @llvm.dbg.value(metadata i64 30, i64 0, metadata !133, metadata !159), !dbg !351
  tail call void @llvm.dbg.value(metadata i64 %80, i64 0, metadata !135, metadata !159), !dbg !352
  %3 = getelementptr inbounds %struct.network* %net, i64 0, i32 3, !dbg !353
  %4 = load i64* %3, align 8, !dbg !353, !tbaa !355
  %5 = icmp slt i64 %4, 15001, !dbg !356
  br i1 %5, label %10, label %.thread, !dbg !357

.thread:                                          ; preds = %0
  %6 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !358
  %7 = load %struct.arc** %6, align 8, !dbg !358, !tbaa !203
  tail call void @llvm.dbg.value(metadata %struct.arc* %31, i64 0, metadata !138, metadata !159), !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !126, metadata !159), !dbg !360
  %8 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !361
  %9 = load %struct.arc** %8, align 8, !dbg !361, !tbaa !177
  tail call void @llvm.dbg.value(metadata %struct.arc* %33, i64 0, metadata !136, metadata !159), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !125, metadata !159), !dbg !363
  br label %.lr.ph23, !dbg !364

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !367
  %12 = load i64* %11, align 8, !dbg !367, !tbaa !199
  %13 = getelementptr inbounds %struct.network* %net, i64 0, i32 9, !dbg !370
  %14 = load i64* %13, align 8, !dbg !370, !tbaa !162
  %15 = add nsw i64 %14, %12, !dbg !371
  %16 = getelementptr inbounds %struct.network* %net, i64 0, i32 4, !dbg !372
  %17 = load i64* %16, align 8, !dbg !372, !tbaa !172
  %18 = icmp sgt i64 %15, %17, !dbg !373
  br i1 %18, label %19, label %28, !dbg !374

; <label>:19                                      ; preds = %10
  %20 = mul nsw i64 %4, %4, !dbg !375
  %21 = lshr i64 %20, 1, !dbg !376
  %22 = add nsw i64 %12, %21, !dbg !377
  %23 = icmp sgt i64 %22, %17, !dbg !378
  br i1 %23, label %24, label %28, !dbg !379

; <label>:24                                      ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !128, metadata !159), !dbg !346
  %25 = tail call i64 @resize_prob(%struct.network* %net) #8, !dbg !380
  %26 = icmp eq i64 %25, 0, !dbg !380
  br i1 %26, label %27, label %.critedge._crit_edge.thread, !dbg !383

; <label>:27                                      ; preds = %24
  tail call void @refresh_neighbour_lists(%struct.network* %net) #7, !dbg !384
  %.pre = load i64* %3, align 8, !dbg !385, !tbaa !355
  br label %28, !dbg !386

; <label>:28                                      ; preds = %10, %19, %27
  %29 = phi i64 [ %.pre, %27 ], [ %4, %19 ], [ %4, %10 ]
  %resized.0 = phi i64 [ 1, %27 ], [ 0, %19 ], [ 0, %10 ]
  %30 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !358
  %31 = load %struct.arc** %30, align 8, !dbg !358, !tbaa !203
  tail call void @llvm.dbg.value(metadata %struct.arc* %31, i64 0, metadata !138, metadata !159), !dbg !359
  tail call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !126, metadata !159), !dbg !360
  %32 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !361
  %33 = load %struct.arc** %32, align 8, !dbg !361, !tbaa !177
  tail call void @llvm.dbg.value(metadata %struct.arc* %33, i64 0, metadata !136, metadata !159), !dbg !362
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !125, metadata !159), !dbg !363
  %34 = icmp sgt i64 %29, 0, !dbg !387
  br i1 %34, label %.lr.ph23, label %.critedge.preheader, !dbg !364

.lr.ph23:                                         ; preds = %.thread, %28
  %35 = phi %struct.arc* [ %9, %.thread ], [ %33, %28 ]
  %36 = phi %struct.arc* [ %7, %.thread ], [ %31, %28 ]
  %37 = phi %struct.arc** [ %6, %.thread ], [ %30, %28 ]
  %resized.036 = phi i64 [ 0, %.thread ], [ %resized.0, %28 ]
  %38 = phi i64 [ %4, %.thread ], [ %29, %28 ]
  br label %39, !dbg !364

; <label>:39                                      ; preds = %.lr.ph23, %51
  %i.022 = phi i64 [ 0, %.lr.ph23 ], [ %52, %51 ]
  %arcout.021 = phi %struct.arc* [ %35, %.lr.ph23 ], [ %53, %51 ]
  %40 = getelementptr inbounds %struct.arc* %arcout.021, i64 1, i32 3, !dbg !388
  %41 = load i32* %40, align 4, !dbg !388, !tbaa !389
  %42 = icmp eq i32 %41, -1, !dbg !390
  br i1 %42, label %51, label %.critedge.preheader, !dbg !391

.critedge.preheader:                              ; preds = %39, %51, %28
  %43 = phi %struct.arc* [ %31, %28 ], [ %36, %51 ], [ %36, %39 ]
  %44 = phi %struct.arc** [ %30, %28 ], [ %37, %51 ], [ %37, %39 ]
  %resized.035 = phi i64 [ %resized.0, %28 ], [ %resized.036, %51 ], [ %resized.036, %39 ]
  %45 = phi i64 [ %29, %28 ], [ %38, %51 ], [ %38, %39 ]
  %i.0.lcssa = phi i64 [ 0, %28 ], [ %52, %51 ], [ %i.022, %39 ]
  %arcout.0.lcssa = phi %struct.arc* [ %33, %28 ], [ %53, %51 ], [ %arcout.021, %39 ]
  %46 = icmp slt i64 %i.0.lcssa, %45, !dbg !392
  br i1 %46, label %.lr.ph19, label %.critedge._crit_edge.thread, !dbg !395

.lr.ph19:                                         ; preds = %.critedge.preheader
  %47 = add i64 %2, -15, !dbg !396
  %48 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !398
  %49 = getelementptr inbounds %struct.arc* %43, i64 0, i32 6, !dbg !403
  %50 = add i64 %45, -1, !dbg !395
  br label %55, !dbg !395

; <label>:51                                      ; preds = %39
  %52 = add nuw nsw i64 %i.022, 1, !dbg !405
  tail call void @llvm.dbg.value(metadata i64 %52, i64 0, metadata !125, metadata !159), !dbg !363
  %53 = getelementptr inbounds %struct.arc* %arcout.021, i64 3, !dbg !406
  tail call void @llvm.dbg.value(metadata %struct.arc* %53, i64 0, metadata !136, metadata !159), !dbg !362
  %54 = icmp slt i64 %52, %38, !dbg !387
  br i1 %54, label %39, label %.critedge.preheader, !dbg !364

; <label>:55                                      ; preds = %.critedge, %.lr.ph19
  %i.118 = phi i64 [ %i.0.lcssa, %.lr.ph19 ], [ %118, %.critedge ]
  %first_of_sparse_list.017 = phi %struct.arc* [ null, %.lr.ph19 ], [ %first_of_sparse_list.1, %.critedge ]
  %new_arcs.016 = phi i64 [ 0, %.lr.ph19 ], [ %new_arcs.3, %.critedge ]
  %arcout.115 = phi %struct.arc* [ %arcout.0.lcssa, %.lr.ph19 ], [ %119, %.critedge ]
  %56 = getelementptr inbounds %struct.arc* %arcout.115, i64 1, i32 3, !dbg !407
  %57 = load i32* %56, align 4, !dbg !407, !tbaa !389
  %58 = icmp eq i32 %57, -1, !dbg !409
  br i1 %58, label %68, label %59, !dbg !410

; <label>:59                                      ; preds = %55
  %60 = getelementptr inbounds %struct.arc* %arcout.115, i64 1, !dbg !411
  %61 = getelementptr inbounds %struct.arc* %arcout.115, i64 0, i32 2, !dbg !412
  %62 = load %struct.node** %61, align 8, !dbg !412, !tbaa !243
  %63 = getelementptr inbounds %struct.node* %62, i64 0, i32 7, !dbg !414
  %64 = load %struct.arc** %63, align 8, !dbg !414, !tbaa !415
  %65 = getelementptr inbounds %struct.arc* %64, i64 0, i32 2, !dbg !416
  %66 = load %struct.node** %65, align 8, !dbg !416, !tbaa !243
  %67 = getelementptr inbounds %struct.node* %66, i64 0, i32 9, !dbg !417
  store %struct.arc* %first_of_sparse_list.017, %struct.arc** %67, align 8, !dbg !418, !tbaa !419
  tail call void @llvm.dbg.value(metadata %struct.arc* %60, i64 0, metadata !140, metadata !159), !dbg !420
  br label %68, !dbg !421

; <label>:68                                      ; preds = %55, %59
  %first_of_sparse_list.1 = phi %struct.arc* [ %60, %59 ], [ %first_of_sparse_list.017, %55 ]
  %69 = getelementptr inbounds %struct.arc* %arcout.115, i64 0, i32 3, !dbg !422
  %70 = load i32* %69, align 4, !dbg !422, !tbaa !389
  %71 = icmp eq i32 %70, -1, !dbg !424
  br i1 %71, label %.critedge, label %72, !dbg !425

; <label>:72                                      ; preds = %68
  %73 = getelementptr inbounds %struct.arc* %arcout.115, i64 0, i32 2, !dbg !426
  %74 = load %struct.node** %73, align 8, !dbg !426, !tbaa !243
  tail call void @llvm.dbg.value(metadata %struct.node* %74, i64 0, metadata !142, metadata !159), !dbg !427
  %75 = getelementptr inbounds %struct.node* %74, i64 0, i32 13, !dbg !428
  %76 = load i32* %75, align 4, !dbg !428, !tbaa !429
  %77 = sext i32 %76 to i64, !dbg !430
  %78 = getelementptr inbounds %struct.arc* %arcout.115, i64 0, i32 7, !dbg !431
  %79 = load i64* %78, align 8, !dbg !431, !tbaa !246
  %80 = sub i64 %47, %79, !dbg !432
  %81 = add i64 %80, %77, !dbg !433
  tail call void @llvm.dbg.value(metadata i64 %81, i64 0, metadata !129, metadata !159), !dbg !434
  %82 = getelementptr inbounds %struct.node* %74, i64 0, i32 0, !dbg !435
  %83 = getelementptr inbounds %struct.arc* %first_of_sparse_list.1, i64 0, i32 1, !dbg !436
  %84 = load %struct.node** %83, align 8, !dbg !436, !tbaa !239
  %85 = getelementptr inbounds %struct.node* %84, i64 0, i32 9, !dbg !437
  %arcin.0711 = load %struct.arc** %85, align 8, !dbg !437
  %86 = icmp eq %struct.arc* %arcin.0711, null, !dbg !438
  br i1 %86, label %.critedge, label %.lr.ph9, !dbg !438

.lr.ph9:                                          ; preds = %72, %.outer
  %arcin.0713 = phi %struct.arc* [ %arcin.07, %.outer ], [ %arcin.0711, %72 ]
  %new_arcs.1.ph12 = phi i64 [ %new_arcs.2, %.outer ], [ %new_arcs.016, %72 ]
  br label %87, !dbg !438

; <label>:87                                      ; preds = %.lr.ph9, %97
  %arcin.08 = phi %struct.arc* [ %arcin.0713, %.lr.ph9 ], [ %arcin.0, %97 ]
  %88 = getelementptr inbounds %struct.arc* %arcin.08, i64 0, i32 1, !dbg !439
  %89 = load %struct.node** %88, align 8, !dbg !439, !tbaa !239
  tail call void @llvm.dbg.value(metadata %struct.node* %89, i64 0, metadata !141, metadata !159), !dbg !440
  %90 = getelementptr inbounds %struct.node* %89, i64 0, i32 13, !dbg !441
  %91 = load i32* %90, align 4, !dbg !441, !tbaa !429
  %92 = sext i32 %91 to i64, !dbg !443
  %93 = getelementptr inbounds %struct.arc* %arcin.08, i64 0, i32 7, !dbg !444
  %94 = load i64* %93, align 8, !dbg !444, !tbaa !246
  %95 = add nsw i64 %92, %94, !dbg !445
  %96 = icmp sgt i64 %95, %81, !dbg !446
  br i1 %96, label %97, label %100, !dbg !447

; <label>:97                                      ; preds = %87
  %98 = getelementptr inbounds %struct.node* %89, i64 0, i32 9, !dbg !448
  %arcin.0 = load %struct.arc** %98, align 8, !dbg !437
  %99 = icmp eq %struct.arc* %arcin.0, null, !dbg !438
  br i1 %99, label %.critedge, label %87, !dbg !438

; <label>:100                                     ; preds = %87
  %101 = getelementptr inbounds %struct.node* %89, i64 0, i32 0, !dbg !450
  %102 = load i64* %101, align 8, !dbg !450, !tbaa !451
  %103 = sub nsw i64 30, %102, !dbg !452
  %104 = load i64* %82, align 8, !dbg !453, !tbaa !451
  %105 = add nsw i64 %103, %104, !dbg !454
  tail call void @llvm.dbg.value(metadata i64 %105, i64 0, metadata !134, metadata !159), !dbg !455
  %106 = icmp slt i64 %105, 0, !dbg !456
  br i1 %106, label %107, label %.outer, !dbg !457

; <label>:107                                     ; preds = %100
  %108 = load i64* %48, align 8, !dbg !398, !tbaa !175
  %109 = icmp slt i64 %new_arcs.1.ph12, %108, !dbg !458
  br i1 %109, label %110, label %112, !dbg !459

; <label>:110                                     ; preds = %107
  tail call void @insert_new_arc(%struct.arc* %43, i64 %new_arcs.1.ph12, %struct.node* %89, %struct.node* %74, i64 30, i64 %105) #8, !dbg !460
  %111 = add nsw i64 %new_arcs.1.ph12, 1, !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %111, i64 0, metadata !127, metadata !159), !dbg !345
  br label %.outer, !dbg !463

; <label>:112                                     ; preds = %107
  %113 = load i64* %49, align 8, !dbg !403, !tbaa !252
  %114 = icmp sgt i64 %113, %105, !dbg !464
  br i1 %114, label %115, label %.outer, !dbg !465

; <label>:115                                     ; preds = %112
  tail call void @replace_weaker_arc(%struct.network* %net, %struct.arc* %43, %struct.node* %89, %struct.node* %74, i64 30, i64 %105) #8, !dbg !466
  br label %.outer, !dbg !466

.outer:                                           ; preds = %110, %115, %112, %100
  %new_arcs.2 = phi i64 [ %111, %110 ], [ %new_arcs.1.ph12, %115 ], [ %new_arcs.1.ph12, %112 ], [ %new_arcs.1.ph12, %100 ]
  %116 = getelementptr inbounds %struct.node* %89, i64 0, i32 9, !dbg !467
  %arcin.07 = load %struct.arc** %116, align 8, !dbg !437
  %117 = icmp eq %struct.arc* %arcin.07, null, !dbg !438
  br i1 %117, label %.critedge, label %.lr.ph9, !dbg !438

.critedge:                                        ; preds = %.outer, %97, %72, %68
  %new_arcs.3 = phi i64 [ %new_arcs.016, %68 ], [ %new_arcs.016, %72 ], [ %new_arcs.1.ph12, %97 ], [ %new_arcs.2, %.outer ]
  %118 = add nsw i64 %i.118, 1, !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %118, i64 0, metadata !125, metadata !159), !dbg !363
  %119 = getelementptr inbounds %struct.arc* %arcout.115, i64 3, !dbg !469
  tail call void @llvm.dbg.value(metadata %struct.arc* %119, i64 0, metadata !136, metadata !159), !dbg !362
  %exitcond = icmp eq i64 %i.118, %50, !dbg !395
  br i1 %exitcond, label %.critedge._crit_edge, label %55, !dbg !395

.critedge._crit_edge:                             ; preds = %.critedge
  %120 = icmp eq i64 %new_arcs.3, 0, !dbg !470
  br i1 %120, label %.critedge._crit_edge.thread, label %121, !dbg !472

; <label>:121                                     ; preds = %.critedge._crit_edge
  %122 = load %struct.arc** %44, align 8, !dbg !473, !tbaa !203
  tail call void @llvm.dbg.value(metadata %struct.arc* %122, i64 0, metadata !138, metadata !159), !dbg !359
  %123 = getelementptr inbounds %struct.arc* %122, i64 %new_arcs.3, !dbg !475
  store %struct.arc* %123, %struct.arc** %44, align 8, !dbg !475, !tbaa !203
  tail call void @llvm.dbg.value(metadata %struct.arc* %123, i64 0, metadata !139, metadata !159), !dbg !476
  %124 = icmp eq i64 %resized.035, 0, !dbg !477
  br i1 %124, label %.lr.ph, label %.lr.ph6, !dbg !479

.lr.ph6:                                          ; preds = %121, %.lr.ph6
  %arcnew.05 = phi %struct.arc* [ %127, %.lr.ph6 ], [ %122, %121 ]
  %125 = getelementptr inbounds %struct.arc* %arcnew.05, i64 0, i32 6, !dbg !480
  store i64 0, i64* %125, align 8, !dbg !485, !tbaa !252
  %126 = getelementptr inbounds %struct.arc* %arcnew.05, i64 0, i32 3, !dbg !486
  store i32 1, i32* %126, align 4, !dbg !487, !tbaa !389
  %127 = getelementptr inbounds %struct.arc* %arcnew.05, i64 1, !dbg !488
  tail call void @llvm.dbg.value(metadata %struct.arc* %127, i64 0, metadata !138, metadata !159), !dbg !359
  %128 = icmp eq %struct.arc* %127, %123, !dbg !489
  br i1 %128, label %.loopexit, label %.lr.ph6, !dbg !490

.lr.ph:                                           ; preds = %121, %.lr.ph
  %arcnew.14 = phi %struct.arc* [ %145, %.lr.ph ], [ %122, %121 ]
  %129 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 6, !dbg !491
  store i64 0, i64* %129, align 8, !dbg !496, !tbaa !252
  %130 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 3, !dbg !497
  store i32 1, i32* %130, align 4, !dbg !498, !tbaa !389
  %131 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 1, !dbg !499
  %132 = load %struct.node** %131, align 8, !dbg !499, !tbaa !239
  %133 = getelementptr inbounds %struct.node* %132, i64 0, i32 7, !dbg !500
  %134 = bitcast %struct.arc** %133 to i64*, !dbg !500
  %135 = load i64* %134, align 8, !dbg !500, !tbaa !415
  %136 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 4, !dbg !501
  %137 = bitcast %struct.arc** %136 to i64*, !dbg !502
  store i64 %135, i64* %137, align 8, !dbg !502, !tbaa !503
  store %struct.arc* %arcnew.14, %struct.arc** %133, align 8, !dbg !504, !tbaa !415
  %138 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 2, !dbg !505
  %139 = load %struct.node** %138, align 8, !dbg !505, !tbaa !243
  %140 = getelementptr inbounds %struct.node* %139, i64 0, i32 8, !dbg !506
  %141 = bitcast %struct.arc** %140 to i64*, !dbg !506
  %142 = load i64* %141, align 8, !dbg !506, !tbaa !507
  %143 = getelementptr inbounds %struct.arc* %arcnew.14, i64 0, i32 5, !dbg !508
  %144 = bitcast %struct.arc** %143 to i64*, !dbg !509
  store i64 %142, i64* %144, align 8, !dbg !509, !tbaa !510
  store %struct.arc* %arcnew.14, %struct.arc** %140, align 8, !dbg !511, !tbaa !507
  %145 = getelementptr inbounds %struct.arc* %arcnew.14, i64 1, !dbg !512
  tail call void @llvm.dbg.value(metadata %struct.arc* %145, i64 0, metadata !138, metadata !159), !dbg !359
  %146 = icmp eq %struct.arc* %145, %123, !dbg !513
  br i1 %146, label %.loopexit, label %.lr.ph, !dbg !514

.loopexit:                                        ; preds = %.lr.ph6, %.lr.ph
  %147 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !515
  %148 = load i64* %147, align 8, !dbg !516, !tbaa !199
  %149 = add nsw i64 %148, %new_arcs.3, !dbg !516
  store i64 %149, i64* %147, align 8, !dbg !516, !tbaa !199
  %150 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !517
  %151 = load i64* %150, align 8, !dbg !518, !tbaa !519
  %152 = add nsw i64 %151, %new_arcs.3, !dbg !518
  store i64 %152, i64* %150, align 8, !dbg !518, !tbaa !519
  %153 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !520
  %154 = load i64* %153, align 8, !dbg !521, !tbaa !175
  %155 = sub nsw i64 %154, %new_arcs.3, !dbg !521
  store i64 %155, i64* %153, align 8, !dbg !521, !tbaa !175
  br label %.critedge._crit_edge.thread, !dbg !522

.critedge._crit_edge.thread:                      ; preds = %.critedge.preheader, %.loopexit, %.critedge._crit_edge, %24
  %.0 = phi i64 [ -1, %24 ], [ 0, %.critedge._crit_edge ], [ %new_arcs.3, %.loopexit ], [ 0, %.critedge.preheader ]
  ret i64 %.0, !dbg !523
}

; Function Attrs: optsize
declare void @refresh_neighbour_lists(%struct.network*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i64 @suspend_impl(%struct.network* %net, i64 %threshold, i64 %all) #0 {
  tail call void @llvm.dbg.value(metadata %struct.network* %net, i64 0, metadata !147, metadata !159), !dbg !524
  tail call void @llvm.dbg.value(metadata i64 %threshold, i64 0, metadata !148, metadata !159), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %all, i64 0, metadata !149, metadata !159), !dbg !526
  %1 = icmp eq i64 %all, 0, !dbg !527
  br i1 %1, label %5, label %2, !dbg !529

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !530
  %4 = load i64* %3, align 8, !dbg !530, !tbaa !519
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !150, metadata !159), !dbg !531
  br label %.loopexit, !dbg !532

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !533
  %7 = load %struct.arc** %6, align 8, !dbg !533, !tbaa !203
  %8 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !535
  %9 = load i64* %8, align 8, !dbg !535, !tbaa !199
  %10 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !536
  %11 = load i64* %10, align 8, !dbg !536, !tbaa !519
  %12 = sub nsw i64 %9, %11, !dbg !537
  %13 = getelementptr inbounds %struct.network* %net, i64 0, i32 23, !dbg !538
  %14 = load %struct.arc** %13, align 8, !dbg !538, !tbaa !177
  %15 = getelementptr inbounds %struct.arc* %14, i64 %12, !dbg !539
  tail call void @llvm.dbg.value(metadata %struct.arc* %15, i64 0, metadata !152, metadata !159), !dbg !540
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !150, metadata !159), !dbg !531
  tail call void @llvm.dbg.value(metadata %struct.arc* %15, i64 0, metadata !153, metadata !159), !dbg !541
  %16 = icmp ult %struct.arc* %15, %7, !dbg !542
  br i1 %16, label %.lr.ph, label %.loopexit.thread, !dbg !545

.lr.ph:                                           ; preds = %5, %51
  %susp.03 = phi i64 [ %susp.1, %51 ], [ 0, %5 ]
  %arc.02 = phi %struct.arc* [ %52, %51 ], [ %15, %5 ]
  %new_arc.01 = phi %struct.arc* [ %new_arc.1, %51 ], [ %15, %5 ]
  %17 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 3, !dbg !546
  %18 = load i32* %17, align 4, !dbg !546, !tbaa !389
  switch i32 %18, label %43 [
    i32 1, label %19
    i32 0, label %32
  ], !dbg !549

; <label>:19                                      ; preds = %.lr.ph
  %20 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 0, !dbg !550
  %21 = load i64* %20, align 8, !dbg !550, !tbaa !249
  %22 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 1, !dbg !551
  %23 = load %struct.node** %22, align 8, !dbg !551, !tbaa !239
  %24 = getelementptr inbounds %struct.node* %23, i64 0, i32 0, !dbg !552
  %25 = load i64* %24, align 8, !dbg !552, !tbaa !451
  %26 = sub i64 %21, %25, !dbg !553
  %27 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 2, !dbg !554
  %28 = load %struct.node** %27, align 8, !dbg !554, !tbaa !243
  %29 = getelementptr inbounds %struct.node* %28, i64 0, i32 0, !dbg !555
  %30 = load i64* %29, align 8, !dbg !555, !tbaa !451
  %31 = add nsw i64 %26, %30, !dbg !556
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !151, metadata !159), !dbg !557
  br label %43, !dbg !558

; <label>:32                                      ; preds = %.lr.ph
  %33 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 1, !dbg !559
  %34 = load %struct.node** %33, align 8, !dbg !559, !tbaa !239
  %35 = getelementptr inbounds %struct.node* %34, i64 0, i32 6, !dbg !564
  %36 = load %struct.arc** %35, align 8, !dbg !564, !tbaa !224
  %37 = icmp eq %struct.arc* %36, %arc.02, !dbg !565
  br i1 %37, label %38, label %39, !dbg !566

; <label>:38                                      ; preds = %32
  store %struct.arc* %new_arc.01, %struct.arc** %35, align 8, !dbg !567, !tbaa !224
  br label %43, !dbg !568

; <label>:39                                      ; preds = %32
  %40 = getelementptr inbounds %struct.arc* %arc.02, i64 0, i32 2, !dbg !569
  %41 = load %struct.node** %40, align 8, !dbg !569, !tbaa !243
  %42 = getelementptr inbounds %struct.node* %41, i64 0, i32 6, !dbg !570
  store %struct.arc* %new_arc.01, %struct.arc** %42, align 8, !dbg !571, !tbaa !224
  br label %43

; <label>:43                                      ; preds = %.lr.ph, %39, %38, %19
  %red_cost.0 = phi i64 [ %31, %19 ], [ -2, %38 ], [ -2, %39 ], [ -2, %.lr.ph ]
  %44 = icmp sgt i64 %red_cost.0, %threshold, !dbg !572
  br i1 %44, label %45, label %47, !dbg !574

; <label>:45                                      ; preds = %43
  %46 = add nsw i64 %susp.03, 1, !dbg !575
  tail call void @llvm.dbg.value(metadata i64 %46, i64 0, metadata !150, metadata !159), !dbg !531
  br label %51, !dbg !576

; <label>:47                                      ; preds = %43
  %48 = bitcast %struct.arc* %new_arc.01 to i8*, !dbg !577
  %49 = bitcast %struct.arc* %arc.02 to i8*, !dbg !577
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 64, i32 8, i1 false), !dbg !577, !tbaa.struct !579
  %50 = getelementptr inbounds %struct.arc* %new_arc.01, i64 1, !dbg !582
  tail call void @llvm.dbg.value(metadata %struct.arc* %50, i64 0, metadata !152, metadata !159), !dbg !540
  br label %51

; <label>:51                                      ; preds = %45, %47
  %new_arc.1 = phi %struct.arc* [ %new_arc.01, %45 ], [ %50, %47 ]
  %susp.1 = phi i64 [ %46, %45 ], [ %susp.03, %47 ]
  %52 = getelementptr inbounds %struct.arc* %arc.02, i64 1, !dbg !583
  tail call void @llvm.dbg.value(metadata %struct.arc* %52, i64 0, metadata !153, metadata !159), !dbg !541
  %53 = icmp ult %struct.arc* %52, %7, !dbg !542
  br i1 %53, label %.lr.ph, label %.loopexit, !dbg !545

.loopexit:                                        ; preds = %51, %2
  %susp.2 = phi i64 [ %4, %2 ], [ %susp.1, %51 ]
  %54 = icmp eq i64 %susp.2, 0, !dbg !584
  br i1 %54, label %.loopexit.thread, label %55, !dbg !586

; <label>:55                                      ; preds = %.loopexit
  %56 = getelementptr inbounds %struct.network* %net, i64 0, i32 5, !dbg !587
  %57 = load i64* %56, align 8, !dbg !589, !tbaa !199
  %58 = sub nsw i64 %57, %susp.2, !dbg !589
  store i64 %58, i64* %56, align 8, !dbg !589, !tbaa !199
  %59 = getelementptr inbounds %struct.network* %net, i64 0, i32 7, !dbg !590
  %60 = load i64* %59, align 8, !dbg !591, !tbaa !519
  %61 = sub nsw i64 %60, %susp.2, !dbg !591
  store i64 %61, i64* %59, align 8, !dbg !591, !tbaa !519
  %62 = getelementptr inbounds %struct.network* %net, i64 0, i32 24, !dbg !592
  %63 = load %struct.arc** %62, align 8, !dbg !593, !tbaa !203
  %64 = sub i64 0, %susp.2, !dbg !593
  %65 = getelementptr inbounds %struct.arc* %63, i64 %64, !dbg !593
  store %struct.arc* %65, %struct.arc** %62, align 8, !dbg !593, !tbaa !203
  %66 = getelementptr inbounds %struct.network* %net, i64 0, i32 8, !dbg !594
  %67 = load i64* %66, align 8, !dbg !595, !tbaa !175
  %68 = add nsw i64 %67, %susp.2, !dbg !595
  store i64 %68, i64* %66, align 8, !dbg !595, !tbaa !175
  tail call void @refresh_neighbour_lists(%struct.network* %net) #7, !dbg !596
  br label %.loopexit.thread, !dbg !597

.loopexit.thread:                                 ; preds = %5, %.loopexit, %55
  %susp.24 = phi i64 [ 0, %.loopexit ], [ %susp.2, %55 ], [ 0, %5 ]
  ret i64 %susp.24, !dbg !598
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!155, !156, !157}
!llvm.ident = !{!158}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !47, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/implicit.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !41, !46, !31, !10, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_t", file: !6, line: 102, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/429.mcf/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !6, line: 126, size: 512, align: 64, elements: !8)
!8 = !{!9, !12, !35, !36, !37, !38, !39, !40}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !7, file: !6, line: 128, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !6, line: 69, baseType: !11)
!11 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !7, file: !6, line: 129, baseType: !13, size: 64, align: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !6, line: 100, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !6, line: 107, size: 832, align: 64, elements: !16)
!16 = !{!17, !18, !20, !21, !22, !23, !24, !27, !28, !29, !30, !32, !33, !34}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !15, file: !6, line: 109, baseType: !10, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !15, file: !6, line: 110, baseType: !19, size: 32, align: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !15, file: !6, line: 111, baseType: !13, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !15, file: !6, line: 112, baseType: !13, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !15, file: !6, line: 113, baseType: !13, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !15, file: !6, line: 114, baseType: !13, size: 64, align: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !15, file: !6, line: 115, baseType: !25, size: 64, align: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !6, line: 103, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !15, file: !6, line: 116, baseType: !25, size: 64, align: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !15, file: !6, line: 116, baseType: !25, size: 64, align: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !15, file: !6, line: 117, baseType: !25, size: 64, align: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !15, file: !6, line: 118, baseType: !31, size: 64, align: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !6, line: 68, baseType: !11)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !15, file: !6, line: 119, baseType: !11, size: 64, align: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !15, file: !6, line: 120, baseType: !19, size: 32, align: 32, offset: 768)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !15, file: !6, line: 121, baseType: !19, size: 32, align: 32, offset: 800)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !7, file: !6, line: 129, baseType: !13, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !7, file: !6, line: 130, baseType: !19, size: 32, align: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !7, file: !6, line: 131, baseType: !25, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !7, file: !6, line: 131, baseType: !25, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !7, file: !6, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !7, file: !6, line: 133, baseType: !10, size: 64, align: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 30, baseType: !43)
!42 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !44, line: 92, baseType: !45)
!44 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!47 = !{!48, !99, !110, !122, !143}
!48 = !DISubprogram(name: "resize_prob", scope: !1, file: !1, line: 28, type: !49, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.network*)* @resize_prob, variables: !90)
!49 = !DISubroutineType(types: !50)
!50 = !{!11, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "network_t", file: !6, line: 163, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "network", file: !6, line: 138, size: 4992, align: 64, elements: !54)
!54 = !{!55, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "inputfile", scope: !53, file: !6, line: 140, baseType: !56, size: 1600, align: 8)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1600, align: 8, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !{!59}
!59 = !DISubrange(count: 200)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "clustfile", scope: !53, file: !6, line: 141, baseType: !56, size: 1600, align: 8, offset: 1600)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !53, file: !6, line: 142, baseType: !11, size: 64, align: 64, offset: 3200)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "n_trips", scope: !53, file: !6, line: 142, baseType: !11, size: 64, align: 64, offset: 3264)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "max_m", scope: !53, file: !6, line: 143, baseType: !11, size: 64, align: 64, offset: 3328)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !53, file: !6, line: 143, baseType: !11, size: 64, align: 64, offset: 3392)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "m_org", scope: !53, file: !6, line: 143, baseType: !11, size: 64, align: 64, offset: 3456)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "m_impl", scope: !53, file: !6, line: 143, baseType: !11, size: 64, align: 64, offset: 3520)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "max_residual_new_m", scope: !53, file: !6, line: 144, baseType: !11, size: 64, align: 64, offset: 3584)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "max_new_m", scope: !53, file: !6, line: 144, baseType: !11, size: 64, align: 64, offset: 3648)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "primal_unbounded", scope: !53, file: !6, line: 146, baseType: !11, size: 64, align: 64, offset: 3712)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dual_unbounded", scope: !53, file: !6, line: 147, baseType: !11, size: 64, align: 64, offset: 3776)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "perturbed", scope: !53, file: !6, line: 148, baseType: !11, size: 64, align: 64, offset: 3840)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "feasible", scope: !53, file: !6, line: 149, baseType: !11, size: 64, align: 64, offset: 3904)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !53, file: !6, line: 150, baseType: !11, size: 64, align: 64, offset: 3968)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "opt_tol", scope: !53, file: !6, line: 151, baseType: !11, size: 64, align: 64, offset: 4032)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "feas_tol", scope: !53, file: !6, line: 152, baseType: !11, size: 64, align: 64, offset: 4096)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pert_val", scope: !53, file: !6, line: 153, baseType: !11, size: 64, align: 64, offset: 4160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bigM", scope: !53, file: !6, line: 154, baseType: !11, size: 64, align: 64, offset: 4224)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "optcost", scope: !53, file: !6, line: 155, baseType: !79, size: 64, align: 64, offset: 4288)
!79 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_impl", scope: !53, file: !6, line: 156, baseType: !10, size: 64, align: 64, offset: 4352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !53, file: !6, line: 157, baseType: !13, size: 64, align: 64, offset: 4416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "stop_nodes", scope: !53, file: !6, line: 157, baseType: !13, size: 64, align: 64, offset: 4480)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "arcs", scope: !53, file: !6, line: 158, baseType: !25, size: 64, align: 64, offset: 4544)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "stop_arcs", scope: !53, file: !6, line: 158, baseType: !25, size: 64, align: 64, offset: 4608)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_arcs", scope: !53, file: !6, line: 159, baseType: !25, size: 64, align: 64, offset: 4672)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "stop_dummy", scope: !53, file: !6, line: 159, baseType: !25, size: 64, align: 64, offset: 4736)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !53, file: !6, line: 160, baseType: !11, size: 64, align: 64, offset: 4800)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bound_exchanges", scope: !53, file: !6, line: 161, baseType: !11, size: 64, align: 64, offset: 4864)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !53, file: !6, line: 162, baseType: !11, size: 64, align: 64, offset: 4928)
!90 = !{!91, !92, !93, !96, !97, !98}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !48, file: !1, line: 28, type: !51)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !48, file: !1, line: 34, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !48, file: !1, line: 35, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !6, line: 99, baseType: !15)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !48, file: !1, line: 35, type: !94)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !48, file: !1, line: 35, type: !94)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "off", scope: !48, file: !1, line: 36, type: !41)
!99 = !DISubprogram(name: "insert_new_arc", scope: !1, file: !1, line: 83, type: !100, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.arc*, i64, %struct.node*, %struct.node*, i64, i64)* @insert_new_arc, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !4, !11, !94, !94, !10, !10}
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new", arg: 1, scope: !99, file: !1, line: 83, type: !4)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newpos", arg: 2, scope: !99, file: !1, line: 83, type: !11)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tail", arg: 3, scope: !99, file: !1, line: 83, type: !94)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 4, scope: !99, file: !1, line: 83, type: !94)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cost", arg: 5, scope: !99, file: !1, line: 84, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "red_cost", arg: 6, scope: !99, file: !1, line: 84, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !99, file: !1, line: 95, type: !11)
!110 = !DISubprogram(name: "replace_weaker_arc", scope: !1, file: !1, line: 129, type: !111, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.network*, %struct.arc*, %struct.node*, %struct.node*, i64, i64)* @replace_weaker_arc, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !51, !4, !94, !94, !10, !10}
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !110, file: !1, line: 129, type: !51)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "new", arg: 2, scope: !110, file: !1, line: 129, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tail", arg: 3, scope: !110, file: !1, line: 129, type: !94)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "head", arg: 4, scope: !110, file: !1, line: 129, type: !94)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cost", arg: 5, scope: !110, file: !1, line: 130, type: !10)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "red_cost", arg: 6, scope: !110, file: !1, line: 130, type: !10)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !110, file: !1, line: 141, type: !11)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !110, file: !1, line: 142, type: !11)
!122 = !DISubprogram(name: "price_out_impl", scope: !1, file: !1, line: 194, type: !49, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.network*)* @price_out_impl, variables: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !122, file: !1, line: 194, type: !51)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !122, file: !1, line: 200, type: !11)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trips", scope: !122, file: !1, line: 201, type: !11)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_arcs", scope: !122, file: !1, line: 202, type: !11)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resized", scope: !122, file: !1, line: 203, type: !11)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "latest", scope: !122, file: !1, line: 204, type: !11)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min_impl_duration", scope: !122, file: !1, line: 205, type: !11)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bigM", scope: !122, file: !1, line: 207, type: !10)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head_potential", scope: !122, file: !1, line: 208, type: !10)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc_cost", scope: !122, file: !1, line: 209, type: !10)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "red_cost", scope: !122, file: !1, line: 210, type: !10)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bigM_minus_min_impl_duration", scope: !122, file: !1, line: 211, type: !10)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arcout", scope: !122, file: !1, line: 213, type: !4)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arcin", scope: !122, file: !1, line: 213, type: !4)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arcnew", scope: !122, file: !1, line: 213, type: !4)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !122, file: !1, line: 213, type: !4)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_of_sparse_list", scope: !122, file: !1, line: 214, type: !4)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tail", scope: !122, file: !1, line: 215, type: !94)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "head", scope: !122, file: !1, line: 215, type: !94)
!143 = !DISubprogram(name: "suspend_impl", scope: !1, file: !1, line: 359, type: !144, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.network*, i64, i64)* @suspend_impl, variables: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!11, !51, !10, !11}
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "net", arg: 1, scope: !143, file: !1, line: 359, type: !51)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "threshold", arg: 2, scope: !143, file: !1, line: 359, type: !10)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "all", arg: 3, scope: !143, file: !1, line: 359, type: !11)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "susp", scope: !143, file: !1, line: 367, type: !11)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "red_cost", scope: !143, file: !1, line: 369, type: !10)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_arc", scope: !143, file: !1, line: 370, type: !4)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc", scope: !143, file: !1, line: 370, type: !4)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stop", scope: !143, file: !1, line: 371, type: !46)
!155 = !{i32 2, !"Dwarf Version", i32 2}
!156 = !{i32 2, !"Debug Info Version", i32 700000003}
!157 = !{i32 1, !"PIC Level", i32 2}
!158 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!159 = !DIExpression()
!160 = !DILocation(line: 28, column: 30, scope: !48)
!161 = !DILocation(line: 39, column: 5, scope: !48)
!162 = !{!163, !166, i64 456}
!163 = !{!"network", !164, i64 0, !164, i64 200, !166, i64 400, !166, i64 408, !166, i64 416, !166, i64 424, !166, i64 432, !166, i64 440, !166, i64 448, !166, i64 456, !166, i64 464, !166, i64 472, !166, i64 480, !166, i64 488, !166, i64 496, !166, i64 504, !166, i64 512, !166, i64 520, !166, i64 528, !167, i64 536, !166, i64 544, !168, i64 552, !168, i64 560, !168, i64 568, !168, i64 576, !168, i64 584, !168, i64 592, !166, i64 600, !166, i64 608, !166, i64 616}
!164 = !{!"omnipotent char", !165, i64 0}
!165 = !{!"Simple C/C++ TBAA"}
!166 = !{!"long", !164, i64 0}
!167 = !{!"double", !164, i64 0}
!168 = !{!"any pointer", !164, i64 0}
!169 = !{!"branch_weights", i32 4, i32 64}
!170 = !DILocation(line: 42, column: 10, scope: !48)
!171 = !DILocation(line: 42, column: 16, scope: !48)
!172 = !{!163, !166, i64 416}
!173 = !DILocation(line: 43, column: 10, scope: !48)
!174 = !DILocation(line: 43, column: 29, scope: !48)
!175 = !{!163, !166, i64 448}
!176 = !DILocation(line: 55, column: 35, scope: !48)
!177 = !{!163, !168, i64 568}
!178 = !DILocation(line: 55, column: 52, scope: !48)
!179 = !DILocation(line: 55, column: 21, scope: !48)
!180 = !DILocation(line: 34, column: 12, scope: !48)
!181 = !DILocation(line: 56, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !48, file: !1, line: 56, column: 9)
!183 = !DILocation(line: 56, column: 9, scope: !48)
!184 = !DILocation(line: 58, column: 52, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 57, column: 5)
!186 = !DILocation(line: 58, column: 9, scope: !185)
!187 = !DILocation(line: 59, column: 17, scope: !185)
!188 = !{!168, !168, i64 0}
!189 = !DILocation(line: 59, column: 9, scope: !185)
!190 = !DILocation(line: 60, column: 9, scope: !185)
!191 = !DILocation(line: 55, column: 11, scope: !48)
!192 = !DILocation(line: 63, column: 11, scope: !48)
!193 = !DILocation(line: 63, column: 38, scope: !48)
!194 = !DILocation(line: 63, column: 25, scope: !48)
!195 = !DILocation(line: 63, column: 23, scope: !48)
!196 = !DILocation(line: 36, column: 12, scope: !48)
!197 = !DILocation(line: 65, column: 15, scope: !48)
!198 = !DILocation(line: 66, column: 33, scope: !48)
!199 = !{!163, !166, i64 424}
!200 = !DILocation(line: 66, column: 26, scope: !48)
!201 = !DILocation(line: 66, column: 10, scope: !48)
!202 = !DILocation(line: 66, column: 20, scope: !48)
!203 = !{!163, !168, i64 576}
!204 = !DILocation(line: 68, column: 24, scope: !48)
!205 = !{!163, !168, i64 552}
!206 = !DILocation(line: 35, column: 13, scope: !48)
!207 = !DILocation(line: 35, column: 27, scope: !48)
!208 = !DILocation(line: 69, column: 38, scope: !209)
!209 = distinct !DILexicalBlock(scope: !48, file: !1, line: 69, column: 5)
!210 = !{!163, !168, i64 560}
!211 = !DILocation(line: 35, column: 20, scope: !48)
!212 = !DILocation(line: 69, column: 14, scope: !209)
!213 = !DILocation(line: 69, column: 55, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 69, column: 5)
!215 = !DILocation(line: 69, column: 5, scope: !209)
!216 = !DILocation(line: 70, column: 19, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 70, column: 13)
!218 = !{!219, !168, i64 24}
!219 = !{!"node", !166, i64 0, !220, i64 8, !168, i64 16, !168, i64 24, !168, i64 32, !168, i64 40, !168, i64 48, !168, i64 56, !168, i64 64, !168, i64 72, !166, i64 80, !166, i64 88, !220, i64 96, !220, i64 100}
!220 = !{!"int", !164, i64 0}
!221 = !DILocation(line: 70, column: 24, scope: !217)
!222 = !DILocation(line: 70, column: 13, scope: !214)
!223 = !DILocation(line: 71, column: 55, scope: !217)
!224 = !{!219, !168, i64 48}
!225 = !DILocation(line: 71, column: 41, scope: !217)
!226 = !DILocation(line: 71, column: 65, scope: !217)
!227 = !DILocation(line: 71, column: 31, scope: !217)
!228 = !DILocation(line: 71, column: 29, scope: !217)
!229 = !DILocation(line: 71, column: 13, scope: !217)
!230 = !DILocation(line: 74, column: 1, scope: !48)
!231 = !DILocation(line: 83, column: 29, scope: !99)
!232 = !DILocation(line: 83, column: 39, scope: !99)
!233 = !DILocation(line: 83, column: 55, scope: !99)
!234 = !DILocation(line: 83, column: 69, scope: !99)
!235 = !DILocation(line: 84, column: 29, scope: !99)
!236 = !DILocation(line: 84, column: 42, scope: !99)
!237 = !DILocation(line: 97, column: 17, scope: !99)
!238 = !DILocation(line: 97, column: 27, scope: !99)
!239 = !{!240, !168, i64 8}
!240 = !{!"arc", !166, i64 0, !168, i64 8, !168, i64 16, !220, i64 24, !168, i64 32, !168, i64 40, !166, i64 48, !166, i64 56}
!241 = !DILocation(line: 98, column: 17, scope: !99)
!242 = !DILocation(line: 98, column: 27, scope: !99)
!243 = !{!240, !168, i64 16}
!244 = !DILocation(line: 99, column: 17, scope: !99)
!245 = !DILocation(line: 99, column: 27, scope: !99)
!246 = !{!240, !166, i64 56}
!247 = !DILocation(line: 100, column: 17, scope: !99)
!248 = !DILocation(line: 100, column: 27, scope: !99)
!249 = !{!240, !166, i64 0}
!250 = !DILocation(line: 101, column: 17, scope: !99)
!251 = !DILocation(line: 101, column: 27, scope: !99)
!252 = !{!240, !166, i64 48}
!253 = !DILocation(line: 95, column: 10, scope: !99)
!254 = !DILocation(line: 104, column: 15, scope: !99)
!255 = !DILocation(line: 104, column: 18, scope: !99)
!256 = !DILocation(line: 103, column: 17, scope: !99)
!257 = !DILocation(line: 104, column: 47, scope: !99)
!258 = !DILocation(line: 104, column: 49, scope: !99)
!259 = !DILocation(line: 104, column: 53, scope: !99)
!260 = !DILocation(line: 104, column: 30, scope: !99)
!261 = !DILocation(line: 104, column: 5, scope: !99)
!262 = !DILocation(line: 106, column: 44, scope: !263)
!263 = distinct !DILexicalBlock(scope: !99, file: !1, line: 105, column: 5)
!264 = !DILocation(line: 107, column: 44, scope: !263)
!265 = !DILocation(line: 107, column: 20, scope: !263)
!266 = !DILocation(line: 107, column: 29, scope: !263)
!267 = !DILocation(line: 108, column: 44, scope: !263)
!268 = !{!164, !164, i64 0}
!269 = !DILocation(line: 108, column: 20, scope: !263)
!270 = !DILocation(line: 108, column: 29, scope: !263)
!271 = !DILocation(line: 109, column: 44, scope: !263)
!272 = !DILocation(line: 109, column: 20, scope: !263)
!273 = !DILocation(line: 109, column: 29, scope: !263)
!274 = !DILocation(line: 110, column: 20, scope: !263)
!275 = !DILocation(line: 110, column: 29, scope: !263)
!276 = !DILocation(line: 113, column: 29, scope: !263)
!277 = !DILocation(line: 114, column: 29, scope: !263)
!278 = !DILocation(line: 115, column: 29, scope: !263)
!279 = !DILocation(line: 116, column: 20, scope: !263)
!280 = !DILocation(line: 116, column: 29, scope: !263)
!281 = !DILocation(line: 117, column: 29, scope: !263)
!282 = !DILocation(line: 120, column: 5, scope: !99)
!283 = !DILocation(line: 129, column: 37, scope: !110)
!284 = !DILocation(line: 129, column: 49, scope: !110)
!285 = !DILocation(line: 129, column: 62, scope: !110)
!286 = !DILocation(line: 129, column: 76, scope: !110)
!287 = !DILocation(line: 130, column: 33, scope: !110)
!288 = !DILocation(line: 130, column: 46, scope: !110)
!289 = !DILocation(line: 144, column: 12, scope: !110)
!290 = !DILocation(line: 144, column: 21, scope: !110)
!291 = !DILocation(line: 145, column: 12, scope: !110)
!292 = !DILocation(line: 145, column: 21, scope: !110)
!293 = !DILocation(line: 146, column: 12, scope: !110)
!294 = !DILocation(line: 146, column: 21, scope: !110)
!295 = !DILocation(line: 147, column: 12, scope: !110)
!296 = !DILocation(line: 147, column: 21, scope: !110)
!297 = !DILocation(line: 148, column: 12, scope: !110)
!298 = !DILocation(line: 148, column: 21, scope: !110)
!299 = !DILocation(line: 141, column: 10, scope: !110)
!300 = !DILocation(line: 151, column: 19, scope: !110)
!301 = !DILocation(line: 151, column: 33, scope: !110)
!302 = !DILocation(line: 151, column: 24, scope: !110)
!303 = !DILocation(line: 151, column: 11, scope: !110)
!304 = !DILocation(line: 142, column: 10, scope: !110)
!305 = !DILocation(line: 152, column: 24, scope: !110)
!306 = !DILocation(line: 152, column: 16, scope: !110)
!307 = !DILocation(line: 152, column: 43, scope: !110)
!308 = !DILocation(line: 152, column: 64, scope: !110)
!309 = !DILocation(line: 152, column: 68, scope: !110)
!310 = !DILocation(line: 152, column: 55, scope: !110)
!311 = !DILocation(line: 152, column: 5, scope: !110)
!312 = !DILocation(line: 154, column: 38, scope: !313)
!313 = distinct !DILexicalBlock(scope: !110, file: !1, line: 153, column: 5)
!314 = !DILocation(line: 154, column: 16, scope: !313)
!315 = !DILocation(line: 155, column: 38, scope: !313)
!316 = !DILocation(line: 155, column: 20, scope: !313)
!317 = !DILocation(line: 155, column: 25, scope: !313)
!318 = !DILocation(line: 156, column: 38, scope: !313)
!319 = !DILocation(line: 156, column: 20, scope: !313)
!320 = !DILocation(line: 156, column: 25, scope: !313)
!321 = !DILocation(line: 157, column: 42, scope: !313)
!322 = !DILocation(line: 157, column: 20, scope: !313)
!323 = !DILocation(line: 157, column: 29, scope: !313)
!324 = !DILocation(line: 158, column: 20, scope: !313)
!325 = !DILocation(line: 158, column: 25, scope: !313)
!326 = !DILocation(line: 160, column: 25, scope: !313)
!327 = !DILocation(line: 161, column: 25, scope: !313)
!328 = !DILocation(line: 162, column: 25, scope: !313)
!329 = !DILocation(line: 163, column: 20, scope: !313)
!330 = !DILocation(line: 163, column: 29, scope: !313)
!331 = !DILocation(line: 164, column: 25, scope: !313)
!332 = !DILocation(line: 166, column: 13, scope: !313)
!333 = !DILocation(line: 167, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !313, file: !1, line: 167, column: 13)
!335 = !DILocation(line: 167, column: 21, scope: !334)
!336 = !DILocation(line: 167, column: 13, scope: !313)
!337 = !DILocation(line: 168, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 168, column: 17)
!339 = !DILocation(line: 168, column: 28, scope: !338)
!340 = !DILocation(line: 168, column: 44, scope: !338)
!341 = !DILocation(line: 168, column: 33, scope: !338)
!342 = !DILocation(line: 168, column: 17, scope: !334)
!343 = !DILocation(line: 172, column: 5, scope: !110)
!344 = !DILocation(line: 194, column: 33, scope: !122)
!345 = !DILocation(line: 202, column: 10, scope: !122)
!346 = !DILocation(line: 203, column: 10, scope: !122)
!347 = !DILocation(line: 205, column: 10, scope: !122)
!348 = !DILocation(line: 207, column: 33, scope: !122)
!349 = !{!163, !166, i64 528}
!350 = !DILocation(line: 207, column: 21, scope: !122)
!351 = !DILocation(line: 209, column: 21, scope: !122)
!352 = !DILocation(line: 211, column: 21, scope: !122)
!353 = !DILocation(line: 227, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !122, file: !1, line: 227, column: 9)
!355 = !{!163, !166, i64 408}
!356 = !DILocation(line: 227, column: 22, scope: !354)
!357 = !DILocation(line: 227, column: 9, scope: !122)
!358 = !DILocation(line: 259, column: 19, scope: !122)
!359 = !DILocation(line: 213, column: 38, scope: !122)
!360 = !DILocation(line: 201, column: 10, scope: !122)
!361 = !DILocation(line: 262, column: 19, scope: !122)
!362 = !DILocation(line: 213, column: 21, scope: !122)
!363 = !DILocation(line: 200, column: 10, scope: !122)
!364 = !DILocation(line: 263, column: 27, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 263, column: 5)
!366 = distinct !DILexicalBlock(scope: !122, file: !1, line: 263, column: 5)
!367 = !DILocation(line: 229, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 229, column: 11)
!369 = distinct !DILexicalBlock(scope: !354, file: !1, line: 228, column: 5)
!370 = !DILocation(line: 229, column: 25, scope: !368)
!371 = !DILocation(line: 229, column: 18, scope: !368)
!372 = !DILocation(line: 229, column: 42, scope: !368)
!373 = !DILocation(line: 229, column: 35, scope: !368)
!374 = !DILocation(line: 230, column: 11, scope: !368)
!375 = !DILocation(line: 231, column: 24, scope: !368)
!376 = !DILocation(line: 231, column: 38, scope: !368)
!377 = !DILocation(line: 231, column: 41, scope: !368)
!378 = !DILocation(line: 231, column: 50, scope: !368)
!379 = !DILocation(line: 229, column: 11, scope: !369)
!380 = !DILocation(line: 235, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 235, column: 13)
!382 = distinct !DILexicalBlock(scope: !368, file: !1, line: 233, column: 7)
!383 = !DILocation(line: 235, column: 13, scope: !382)
!384 = !DILocation(line: 238, column: 9, scope: !382)
!385 = !DILocation(line: 260, column: 18, scope: !122)
!386 = !DILocation(line: 239, column: 7, scope: !382)
!387 = !DILocation(line: 263, column: 19, scope: !365)
!388 = !DILocation(line: 263, column: 40, scope: !365)
!389 = !{!240, !220, i64 24}
!390 = !DILocation(line: 263, column: 46, scope: !365)
!391 = !DILocation(line: 263, column: 5, scope: !366)
!392 = !DILocation(line: 265, column: 14, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !1, line: 265, column: 5)
!394 = distinct !DILexicalBlock(scope: !122, file: !1, line: 265, column: 5)
!395 = !DILocation(line: 265, column: 5, scope: !394)
!396 = !DILocation(line: 277, column: 29, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 266, column: 5)
!398 = !DILocation(line: 297, column: 37, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 297, column: 21)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 296, column: 13)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 295, column: 17)
!402 = distinct !DILexicalBlock(scope: !397, file: !1, line: 284, column: 9)
!403 = !DILocation(line: 303, column: 44, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !1, line: 303, column: 26)
!405 = !DILocation(line: 263, column: 57, scope: !365)
!406 = !DILocation(line: 263, column: 68, scope: !365)
!407 = !DILocation(line: 267, column: 23, scope: !408)
!408 = distinct !DILexicalBlock(scope: !397, file: !1, line: 267, column: 13)
!409 = !DILocation(line: 267, column: 29, scope: !408)
!410 = !DILocation(line: 267, column: 13, scope: !397)
!411 = !DILocation(line: 267, column: 13, scope: !408)
!412 = !DILocation(line: 269, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !1, line: 268, column: 9)
!414 = !DILocation(line: 269, column: 27, scope: !413)
!415 = !{!219, !168, i64 56}
!416 = !DILocation(line: 269, column: 37, scope: !413)
!417 = !DILocation(line: 269, column: 43, scope: !413)
!418 = !DILocation(line: 269, column: 51, scope: !413)
!419 = !{!219, !168, i64 72}
!420 = !DILocation(line: 214, column: 21, scope: !122)
!421 = !DILocation(line: 271, column: 9, scope: !413)
!422 = !DILocation(line: 273, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !397, file: !1, line: 273, column: 13)
!424 = !DILocation(line: 273, column: 27, scope: !423)
!425 = !DILocation(line: 273, column: 13, scope: !397)
!426 = !DILocation(line: 276, column: 24, scope: !397)
!427 = !DILocation(line: 215, column: 29, scope: !122)
!428 = !DILocation(line: 277, column: 24, scope: !397)
!429 = !{!219, !220, i64 100}
!430 = !DILocation(line: 277, column: 18, scope: !397)
!431 = !DILocation(line: 277, column: 39, scope: !397)
!432 = !DILocation(line: 223, column: 49, scope: !122)
!433 = !DILocation(line: 278, column: 13, scope: !397)
!434 = !DILocation(line: 204, column: 10, scope: !122)
!435 = !DILocation(line: 280, column: 32, scope: !397)
!436 = !DILocation(line: 282, column: 39, scope: !397)
!437 = !DILocation(line: 282, column: 45, scope: !397)
!438 = !DILocation(line: 283, column: 9, scope: !397)
!439 = !DILocation(line: 285, column: 27, scope: !402)
!440 = !DILocation(line: 215, column: 22, scope: !122)
!441 = !DILocation(line: 287, column: 23, scope: !442)
!442 = distinct !DILexicalBlock(scope: !402, file: !1, line: 287, column: 17)
!443 = !DILocation(line: 287, column: 17, scope: !442)
!444 = !DILocation(line: 287, column: 37, scope: !442)
!445 = !DILocation(line: 287, column: 28, scope: !442)
!446 = !DILocation(line: 287, column: 46, scope: !442)
!447 = !DILocation(line: 287, column: 17, scope: !402)
!448 = !DILocation(line: 289, column: 31, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !1, line: 288, column: 13)
!450 = !DILocation(line: 293, column: 41, scope: !402)
!451 = !{!219, !166, i64 0}
!452 = !DILocation(line: 293, column: 33, scope: !402)
!453 = !DILocation(line: 293, column: 59, scope: !402)
!454 = !DILocation(line: 293, column: 51, scope: !402)
!455 = !DILocation(line: 210, column: 21, scope: !122)
!456 = !DILocation(line: 295, column: 26, scope: !401)
!457 = !DILocation(line: 295, column: 17, scope: !402)
!458 = !DILocation(line: 297, column: 30, scope: !399)
!459 = !DILocation(line: 297, column: 21, scope: !400)
!460 = !DILocation(line: 299, column: 21, scope: !461)
!461 = distinct !DILexicalBlock(scope: !399, file: !1, line: 298, column: 17)
!462 = !DILocation(line: 301, column: 29, scope: !461)
!463 = !DILocation(line: 302, column: 17, scope: !461)
!464 = !DILocation(line: 303, column: 49, scope: !404)
!465 = !DILocation(line: 303, column: 26, scope: !399)
!466 = !DILocation(line: 304, column: 21, scope: !404)
!467 = !DILocation(line: 308, column: 27, scope: !402)
!468 = !DILocation(line: 265, column: 24, scope: !393)
!469 = !DILocation(line: 265, column: 35, scope: !393)
!470 = !DILocation(line: 312, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !122, file: !1, line: 312, column: 9)
!472 = !DILocation(line: 312, column: 9, scope: !122)
!473 = !DILocation(line: 314, column: 23, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 313, column: 5)
!475 = !DILocation(line: 315, column: 24, scope: !474)
!476 = !DILocation(line: 213, column: 47, scope: !122)
!477 = !DILocation(line: 317, column: 13, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !1, line: 317, column: 13)
!479 = !DILocation(line: 317, column: 13, scope: !474)
!480 = !DILocation(line: 321, column: 25, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !1, line: 320, column: 13)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 319, column: 13)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 319, column: 13)
!484 = distinct !DILexicalBlock(scope: !478, file: !1, line: 318, column: 9)
!485 = !DILocation(line: 321, column: 30, scope: !481)
!486 = !DILocation(line: 322, column: 25, scope: !481)
!487 = !DILocation(line: 322, column: 31, scope: !481)
!488 = !DILocation(line: 319, column: 42, scope: !482)
!489 = !DILocation(line: 319, column: 27, scope: !482)
!490 = !DILocation(line: 319, column: 13, scope: !483)
!491 = !DILocation(line: 329, column: 25, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 328, column: 13)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 327, column: 13)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 327, column: 13)
!495 = distinct !DILexicalBlock(scope: !478, file: !1, line: 326, column: 9)
!496 = !DILocation(line: 329, column: 30, scope: !492)
!497 = !DILocation(line: 330, column: 25, scope: !492)
!498 = !DILocation(line: 330, column: 31, scope: !492)
!499 = !DILocation(line: 331, column: 43, scope: !492)
!500 = !DILocation(line: 331, column: 49, scope: !492)
!501 = !DILocation(line: 331, column: 25, scope: !492)
!502 = !DILocation(line: 331, column: 33, scope: !492)
!503 = !{!240, !168, i64 32}
!504 = !DILocation(line: 332, column: 40, scope: !492)
!505 = !DILocation(line: 333, column: 42, scope: !492)
!506 = !DILocation(line: 333, column: 48, scope: !492)
!507 = !{!219, !168, i64 64}
!508 = !DILocation(line: 333, column: 25, scope: !492)
!509 = !DILocation(line: 333, column: 32, scope: !492)
!510 = !{!240, !168, i64 40}
!511 = !DILocation(line: 334, column: 39, scope: !492)
!512 = !DILocation(line: 327, column: 42, scope: !493)
!513 = !DILocation(line: 327, column: 27, scope: !493)
!514 = !DILocation(line: 327, column: 13, scope: !494)
!515 = !DILocation(line: 338, column: 14, scope: !474)
!516 = !DILocation(line: 338, column: 16, scope: !474)
!517 = !DILocation(line: 339, column: 14, scope: !474)
!518 = !DILocation(line: 339, column: 21, scope: !474)
!519 = !{!163, !166, i64 440}
!520 = !DILocation(line: 340, column: 14, scope: !474)
!521 = !DILocation(line: 340, column: 33, scope: !474)
!522 = !DILocation(line: 341, column: 5, scope: !474)
!523 = !DILocation(line: 351, column: 1, scope: !122)
!524 = !DILocation(line: 359, column: 31, scope: !143)
!525 = !DILocation(line: 359, column: 43, scope: !143)
!526 = !DILocation(line: 359, column: 59, scope: !143)
!527 = !DILocation(line: 375, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !143, file: !1, line: 375, column: 9)
!529 = !DILocation(line: 375, column: 9, scope: !143)
!530 = !DILocation(line: 376, column: 21, scope: !528)
!531 = !DILocation(line: 367, column: 10, scope: !143)
!532 = !DILocation(line: 376, column: 9, scope: !528)
!533 = !DILocation(line: 379, column: 29, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !1, line: 378, column: 5)
!535 = !DILocation(line: 380, column: 36, scope: !534)
!536 = !DILocation(line: 380, column: 45, scope: !534)
!537 = !DILocation(line: 380, column: 38, scope: !534)
!538 = !DILocation(line: 380, column: 26, scope: !534)
!539 = !DILocation(line: 380, column: 21, scope: !534)
!540 = !DILocation(line: 370, column: 12, scope: !143)
!541 = !DILocation(line: 370, column: 22, scope: !143)
!542 = !DILocation(line: 381, column: 43, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 381, column: 9)
!544 = distinct !DILexicalBlock(scope: !534, file: !1, line: 381, column: 9)
!545 = !DILocation(line: 381, column: 9, scope: !544)
!546 = !DILocation(line: 383, column: 22, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 383, column: 17)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 382, column: 9)
!549 = !DILocation(line: 383, column: 17, scope: !548)
!550 = !DILocation(line: 384, column: 33, scope: !547)
!551 = !DILocation(line: 384, column: 45, scope: !547)
!552 = !DILocation(line: 384, column: 51, scope: !547)
!553 = !DILocation(line: 384, column: 38, scope: !547)
!554 = !DILocation(line: 385, column: 32, scope: !547)
!555 = !DILocation(line: 385, column: 38, scope: !547)
!556 = !DILocation(line: 385, column: 25, scope: !547)
!557 = !DILocation(line: 369, column: 12, scope: !143)
!558 = !DILocation(line: 384, column: 17, scope: !547)
!559 = !DILocation(line: 392, column: 30, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !1, line: 392, column: 25)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 391, column: 17)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 390, column: 21)
!563 = distinct !DILexicalBlock(scope: !547, file: !1, line: 387, column: 13)
!564 = !DILocation(line: 392, column: 36, scope: !560)
!565 = !DILocation(line: 392, column: 46, scope: !560)
!566 = !DILocation(line: 392, column: 25, scope: !561)
!567 = !DILocation(line: 393, column: 46, scope: !560)
!568 = !DILocation(line: 393, column: 25, scope: !560)
!569 = !DILocation(line: 395, column: 30, scope: !560)
!570 = !DILocation(line: 395, column: 36, scope: !560)
!571 = !DILocation(line: 395, column: 46, scope: !560)
!572 = !DILocation(line: 399, column: 26, scope: !573)
!573 = distinct !DILexicalBlock(scope: !548, file: !1, line: 399, column: 17)
!574 = !DILocation(line: 399, column: 17, scope: !548)
!575 = !DILocation(line: 400, column: 21, scope: !573)
!576 = !DILocation(line: 400, column: 17, scope: !573)
!577 = !DILocation(line: 403, column: 28, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !1, line: 402, column: 13)
!579 = !{i64 0, i64 8, !580, i64 8, i64 8, !188, i64 16, i64 8, !188, i64 24, i64 4, !581, i64 32, i64 8, !188, i64 40, i64 8, !188, i64 48, i64 8, !580, i64 56, i64 8, !580}
!580 = !{!166, !166, i64 0}
!581 = !{!220, !220, i64 0}
!582 = !DILocation(line: 404, column: 24, scope: !578)
!583 = !DILocation(line: 381, column: 63, scope: !543)
!584 = !DILocation(line: 415, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !143, file: !1, line: 415, column: 9)
!586 = !DILocation(line: 415, column: 9, scope: !143)
!587 = !DILocation(line: 417, column: 14, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !1, line: 416, column: 5)
!589 = !DILocation(line: 417, column: 16, scope: !588)
!590 = !DILocation(line: 418, column: 14, scope: !588)
!591 = !DILocation(line: 418, column: 21, scope: !588)
!592 = !DILocation(line: 419, column: 14, scope: !588)
!593 = !DILocation(line: 419, column: 24, scope: !588)
!594 = !DILocation(line: 420, column: 14, scope: !588)
!595 = !DILocation(line: 420, column: 33, scope: !588)
!596 = !DILocation(line: 422, column: 9, scope: !588)
!597 = !DILocation(line: 423, column: 5, scope: !588)
!598 = !DILocation(line: 425, column: 5, scope: !143)
