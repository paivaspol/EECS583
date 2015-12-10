; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external global [512 x i32]

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_decompress(%struct.DState* %s) #0 {
entry:
  %pos = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.DState* %s}, i64 0, metadata !142), !dbg !348
  %strm1 = getelementptr inbounds %struct.DState* %s, i64 0, i32 0, !dbg !349
  %0 = load %struct.bz_stream** %strm1, align 8, !dbg !349, !tbaa !350
  call void @llvm.dbg.value(metadata !{%struct.bz_stream* %0}, i64 0, metadata !147), !dbg !349
  %state = getelementptr inbounds %struct.DState* %s, i64 0, i32 1, !dbg !353
  %1 = load i32* %state, align 4, !dbg !353, !tbaa !354
  %cmp = icmp eq i32 %1, 10, !dbg !353
  %save_i = getelementptr inbounds %struct.DState* %s, i64 0, i32 40, !dbg !355
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !353

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre5254 = load i32* %save_i, align 4, !dbg !357, !tbaa !354
  %save_j3.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 41
  %.pre5255 = load i32* %save_j3.phi.trans.insert, align 4, !dbg !358, !tbaa !354
  %save_t4.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 42
  %.pre5256 = load i32* %save_t4.phi.trans.insert, align 4, !dbg !359, !tbaa !354
  %save_alphaSize5.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 43
  %.pre5257 = load i32* %save_alphaSize5.phi.trans.insert, align 4, !dbg !360, !tbaa !354
  %save_nGroups6.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 44
  %.pre5258 = load i32* %save_nGroups6.phi.trans.insert, align 4, !dbg !361, !tbaa !354
  %save_nSelectors7.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 45
  %.pre5259 = load i32* %save_nSelectors7.phi.trans.insert, align 4, !dbg !362, !tbaa !354
  %save_EOB8.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 46
  %.pre5260 = load i32* %save_EOB8.phi.trans.insert, align 4, !dbg !363, !tbaa !354
  %save_groupNo9.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 47
  %.pre5261 = load i32* %save_groupNo9.phi.trans.insert, align 4, !dbg !364, !tbaa !354
  %save_groupPos10.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 48
  %.pre5262 = load i32* %save_groupPos10.phi.trans.insert, align 4, !dbg !365, !tbaa !354
  %save_nextSym11.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 49
  %.pre5263 = load i32* %save_nextSym11.phi.trans.insert, align 4, !dbg !366, !tbaa !354
  %save_nblockMAX12.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 50
  %.pre5264 = load i32* %save_nblockMAX12.phi.trans.insert, align 4, !dbg !367, !tbaa !354
  %save_nblock13.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 51
  %.pre5265 = load i32* %save_nblock13.phi.trans.insert, align 4, !dbg !368, !tbaa !354
  %save_es14.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 52
  %.pre5266 = load i32* %save_es14.phi.trans.insert, align 4, !dbg !369, !tbaa !354
  %save_N15.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 53
  %.pre5267 = load i32* %save_N15.phi.trans.insert, align 4, !dbg !370, !tbaa !354
  %save_curr16.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 54
  %.pre5268 = load i32* %save_curr16.phi.trans.insert, align 4, !dbg !371, !tbaa !354
  %save_zt17.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 55
  %.pre5269 = load i32* %save_zt17.phi.trans.insert, align 4, !dbg !372, !tbaa !354
  %save_zn18.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 56
  %.pre5270 = load i32* %save_zn18.phi.trans.insert, align 4, !dbg !373, !tbaa !354
  %save_zvec19.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 57
  %.pre5271 = load i32* %save_zvec19.phi.trans.insert, align 4, !dbg !374, !tbaa !354
  %save_zj20.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 58
  %.pre5272 = load i32* %save_zj20.phi.trans.insert, align 4, !dbg !375, !tbaa !354
  %save_gSel21.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 59
  %.pre5273 = load i32* %save_gSel21.phi.trans.insert, align 4, !dbg !376, !tbaa !354
  %save_gMinlen22.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 60
  %.pre5274 = load i32* %save_gMinlen22.phi.trans.insert, align 4, !dbg !377, !tbaa !354
  %save_gLimit23.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 61
  %.pre5275 = load i32** %save_gLimit23.phi.trans.insert, align 8, !dbg !378, !tbaa !350
  %save_gBase24.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 62
  %.pre5276 = load i32** %save_gBase24.phi.trans.insert, align 8, !dbg !379, !tbaa !350
  %save_gPerm25.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 63
  %.pre5277 = load i32** %save_gPerm25.phi.trans.insert, align 8, !dbg !380, !tbaa !350
  br label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %save_i to i8*, !dbg !381
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 108, i32 4, i1 false), !dbg !382
  br label %if.end, !dbg !381

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32* [ %.pre5277, %entry.if.end_crit_edge ], [ null, %if.then ]
  %4 = phi i32* [ %.pre5276, %entry.if.end_crit_edge ], [ null, %if.then ]
  %5 = phi i32* [ %.pre5275, %entry.if.end_crit_edge ], [ null, %if.then ]
  %6 = phi i32 [ %.pre5274, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %7 = phi i32 [ %.pre5273, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %8 = phi i32 [ %.pre5272, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %9 = phi i32 [ %.pre5271, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %10 = phi i32 [ %.pre5270, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %11 = phi i32 [ %.pre5269, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %12 = phi i32 [ %.pre5268, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %13 = phi i32 [ %.pre5267, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %14 = phi i32 [ %.pre5266, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %15 = phi i32 [ %.pre5265, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %16 = phi i32 [ %.pre5264, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %17 = phi i32 [ %.pre5263, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %18 = phi i32 [ %.pre5262, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %19 = phi i32 [ %.pre5261, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %20 = phi i32 [ %.pre5260, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %21 = phi i32 [ %.pre5259, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %22 = phi i32 [ %.pre5258, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %23 = phi i32 [ %.pre5257, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %24 = phi i32 [ %.pre5256, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %25 = phi i32 [ %.pre5255, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %26 = phi i32 [ %.pre5254, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %save_i2 = getelementptr inbounds %struct.DState* %s, i64 0, i32 40, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !148), !dbg !357
  %save_j3 = getelementptr inbounds %struct.DState* %s, i64 0, i32 41, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !149), !dbg !358
  %save_t4 = getelementptr inbounds %struct.DState* %s, i64 0, i32 42, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !150), !dbg !359
  %save_alphaSize5 = getelementptr inbounds %struct.DState* %s, i64 0, i32 43, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !151), !dbg !360
  %save_nGroups6 = getelementptr inbounds %struct.DState* %s, i64 0, i32 44, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !152), !dbg !361
  %save_nSelectors7 = getelementptr inbounds %struct.DState* %s, i64 0, i32 45, !dbg !362
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !153), !dbg !362
  %save_EOB8 = getelementptr inbounds %struct.DState* %s, i64 0, i32 46, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !154), !dbg !363
  %save_groupNo9 = getelementptr inbounds %struct.DState* %s, i64 0, i32 47, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !155), !dbg !364
  %save_groupPos10 = getelementptr inbounds %struct.DState* %s, i64 0, i32 48, !dbg !365
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !156), !dbg !365
  %save_nextSym11 = getelementptr inbounds %struct.DState* %s, i64 0, i32 49, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !157), !dbg !366
  %save_nblockMAX12 = getelementptr inbounds %struct.DState* %s, i64 0, i32 50, !dbg !367
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !158), !dbg !367
  %save_nblock13 = getelementptr inbounds %struct.DState* %s, i64 0, i32 51, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !159), !dbg !368
  %save_es14 = getelementptr inbounds %struct.DState* %s, i64 0, i32 52, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !160), !dbg !369
  %save_N15 = getelementptr inbounds %struct.DState* %s, i64 0, i32 53, !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !161), !dbg !370
  %save_curr16 = getelementptr inbounds %struct.DState* %s, i64 0, i32 54, !dbg !371
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !162), !dbg !371
  %save_zt17 = getelementptr inbounds %struct.DState* %s, i64 0, i32 55, !dbg !372
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !163), !dbg !372
  %save_zn18 = getelementptr inbounds %struct.DState* %s, i64 0, i32 56, !dbg !373
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !164), !dbg !373
  %save_zvec19 = getelementptr inbounds %struct.DState* %s, i64 0, i32 57, !dbg !374
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !165), !dbg !374
  %save_zj20 = getelementptr inbounds %struct.DState* %s, i64 0, i32 58, !dbg !375
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !166), !dbg !375
  %save_gSel21 = getelementptr inbounds %struct.DState* %s, i64 0, i32 59, !dbg !376
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !167), !dbg !376
  %save_gMinlen22 = getelementptr inbounds %struct.DState* %s, i64 0, i32 60, !dbg !377
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !168), !dbg !377
  %save_gLimit23 = getelementptr inbounds %struct.DState* %s, i64 0, i32 61, !dbg !378
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !169), !dbg !378
  %save_gBase24 = getelementptr inbounds %struct.DState* %s, i64 0, i32 62, !dbg !379
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !170), !dbg !379
  %save_gPerm25 = getelementptr inbounds %struct.DState* %s, i64 0, i32 63, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !171), !dbg !380
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !383
  switch i32 %1, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %if.end.sw.bb62_crit_edge
    i32 12, label %if.end.sw.bb118_crit_edge
    i32 13, label %if.end.sw.bb174_crit_edge
    i32 14, label %if.end.sw.bb272_crit_edge
    i32 15, label %if.end.sw.bb333_crit_edge
    i32 16, label %if.end.sw.bb389_crit_edge
    i32 17, label %if.end.sw.bb445_crit_edge
    i32 18, label %if.end.sw.bb501_crit_edge
    i32 19, label %if.end.sw.bb557_crit_edge
    i32 20, label %if.end.sw.bb620_crit_edge
    i32 21, label %if.end.sw.bb676_crit_edge
    i32 22, label %if.end.sw.bb732_crit_edge
    i32 23, label %if.end.sw.bb788_crit_edge
    i32 24, label %if.end.sw.bb844_crit_edge
    i32 25, label %if.end.sw.bb895_crit_edge
    i32 26, label %if.end.sw.bb951_crit_edge
    i32 27, label %if.end.sw.bb1007_crit_edge
    i32 28, label %sw.bb1078
    i32 29, label %sw.bb1161
    i32 30, label %sw.bb1235
    i32 31, label %if.end.sw.bb1292_crit_edge
    i32 32, label %sw.bb1351.preheader
    i32 33, label %sw.bb1463
    i32 34, label %sw.bb1528
    i32 35, label %if.end.sw.bb1586_crit_edge
    i32 36, label %sw.bb1788
    i32 37, label %if.end.sw.bb1855_crit_edge
    i32 38, label %sw.bb1983
    i32 39, label %if.end.sw.bb2050_crit_edge
    i32 40, label %sw.bb2409
    i32 41, label %if.end.sw.bb2476_crit_edge
    i32 42, label %if.end.sw.bb2942_crit_edge
    i32 43, label %if.end.sw.bb3000_crit_edge
    i32 44, label %if.end.sw.bb3058_crit_edge
    i32 45, label %if.end.sw.bb3116_crit_edge
    i32 46, label %if.end.sw.bb3174_crit_edge
    i32 47, label %if.end.sw.bb3232_crit_edge
    i32 48, label %if.end.sw.bb3290_crit_edge
    i32 49, label %if.end.sw.bb3348_crit_edge
    i32 50, label %if.end.sw.bb3406_crit_edge
  ], !dbg !384

if.end.sw.bb272_crit_edge:                        ; preds = %if.end
  %bsLive275.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !385
  br label %sw.bb272, !dbg !384

if.end.sw.bb62_crit_edge:                         ; preds = %if.end
  %bsLive65.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5279 = load i32* %bsLive65.phi.trans.insert, align 4, !dbg !386, !tbaa !354
  br label %sw.bb62, !dbg !384

if.end.sw.bb118_crit_edge:                        ; preds = %if.end
  %bsLive121.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5281 = load i32* %bsLive121.phi.trans.insert, align 4, !dbg !387, !tbaa !354
  br label %sw.bb118, !dbg !384

if.end.sw.bb174_crit_edge:                        ; preds = %if.end
  %bsLive177.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5283 = load i32* %bsLive177.phi.trans.insert, align 4, !dbg !388, !tbaa !354
  br label %sw.bb174, !dbg !384

if.end.sw.bb2942_crit_edge:                       ; preds = %if.end
  %bsLive2946.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5286 = load i32* %bsLive2946.phi.trans.insert, align 4, !dbg !389, !tbaa !354
  br label %sw.bb2942, !dbg !384

if.end.sw.bb3000_crit_edge:                       ; preds = %if.end
  %bsLive3004.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5288 = load i32* %bsLive3004.phi.trans.insert, align 4, !dbg !390, !tbaa !354
  br label %sw.bb3000, !dbg !384

if.end.sw.bb3058_crit_edge:                       ; preds = %if.end
  %bsLive3062.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5290 = load i32* %bsLive3062.phi.trans.insert, align 4, !dbg !391, !tbaa !354
  br label %sw.bb3058, !dbg !384

if.end.sw.bb3116_crit_edge:                       ; preds = %if.end
  %bsLive3120.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5292 = load i32* %bsLive3120.phi.trans.insert, align 4, !dbg !392, !tbaa !354
  br label %sw.bb3116, !dbg !384

if.end.sw.bb3174_crit_edge:                       ; preds = %if.end
  %bsLive3178.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5294 = load i32* %bsLive3178.phi.trans.insert, align 4, !dbg !393, !tbaa !354
  br label %sw.bb3174, !dbg !384

if.end.sw.bb3232_crit_edge:                       ; preds = %if.end
  %bsLive3236.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5296 = load i32* %bsLive3236.phi.trans.insert, align 4, !dbg !394, !tbaa !354
  br label %sw.bb3232, !dbg !384

if.end.sw.bb3290_crit_edge:                       ; preds = %if.end
  %bsLive3294.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5298 = load i32* %bsLive3294.phi.trans.insert, align 4, !dbg !395, !tbaa !354
  br label %sw.bb3290, !dbg !384

if.end.sw.bb3348_crit_edge:                       ; preds = %if.end
  %bsLive3352.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5300 = load i32* %bsLive3352.phi.trans.insert, align 4, !dbg !396, !tbaa !354
  br label %sw.bb3348, !dbg !384

if.end.sw.bb3406_crit_edge:                       ; preds = %if.end
  %bsLive3410.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5302 = load i32* %bsLive3410.phi.trans.insert, align 4, !dbg !397, !tbaa !354
  br label %sw.bb3406, !dbg !384

if.end.sw.bb333_crit_edge:                        ; preds = %if.end
  %bsLive336.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5304 = load i32* %bsLive336.phi.trans.insert, align 4, !dbg !398, !tbaa !354
  br label %sw.bb333, !dbg !384

if.end.sw.bb389_crit_edge:                        ; preds = %if.end
  %bsLive392.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5306 = load i32* %bsLive392.phi.trans.insert, align 4, !dbg !399, !tbaa !354
  br label %sw.bb389, !dbg !384

if.end.sw.bb445_crit_edge:                        ; preds = %if.end
  %bsLive448.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5308 = load i32* %bsLive448.phi.trans.insert, align 4, !dbg !400, !tbaa !354
  br label %sw.bb445, !dbg !384

if.end.sw.bb501_crit_edge:                        ; preds = %if.end
  %bsLive504.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5310 = load i32* %bsLive504.phi.trans.insert, align 4, !dbg !401, !tbaa !354
  br label %sw.bb501, !dbg !384

if.end.sw.bb557_crit_edge:                        ; preds = %if.end
  %bsLive560.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5312 = load i32* %bsLive560.phi.trans.insert, align 4, !dbg !402, !tbaa !354
  br label %sw.bb557, !dbg !384

if.end.sw.bb620_crit_edge:                        ; preds = %if.end
  %bsLive623.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !403
  br label %sw.bb620, !dbg !384

if.end.sw.bb676_crit_edge:                        ; preds = %if.end
  %bsLive679.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5315 = load i32* %bsLive679.phi.trans.insert, align 4, !dbg !404, !tbaa !354
  br label %sw.bb676, !dbg !384

if.end.sw.bb732_crit_edge:                        ; preds = %if.end
  %bsLive735.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5317 = load i32* %bsLive735.phi.trans.insert, align 4, !dbg !405, !tbaa !354
  br label %sw.bb732, !dbg !384

if.end.sw.bb788_crit_edge:                        ; preds = %if.end
  %bsLive791.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5319 = load i32* %bsLive791.phi.trans.insert, align 4, !dbg !406, !tbaa !354
  br label %sw.bb788, !dbg !384

if.end.sw.bb844_crit_edge:                        ; preds = %if.end
  %bsLive847.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5321 = load i32* %bsLive847.phi.trans.insert, align 4, !dbg !407, !tbaa !354
  br label %sw.bb844, !dbg !384

if.end.sw.bb895_crit_edge:                        ; preds = %if.end
  %bsLive898.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5323 = load i32* %bsLive898.phi.trans.insert, align 4, !dbg !408, !tbaa !354
  br label %sw.bb895, !dbg !384

if.end.sw.bb951_crit_edge:                        ; preds = %if.end
  %bsLive954.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5325 = load i32* %bsLive954.phi.trans.insert, align 4, !dbg !409, !tbaa !354
  br label %sw.bb951, !dbg !384

if.end.sw.bb1007_crit_edge:                       ; preds = %if.end
  %bsLive1010.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5327 = load i32* %bsLive1010.phi.trans.insert, align 4, !dbg !410, !tbaa !354
  br label %sw.bb1007, !dbg !384

if.end.sw.bb1292_crit_edge:                       ; preds = %if.end
  %bsLive1295.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5332 = load i32* %bsLive1295.phi.trans.insert, align 4, !dbg !411, !tbaa !354
  br label %sw.bb1292, !dbg !384

if.end.sw.bb1586_crit_edge:                       ; preds = %if.end
  %bsLive1590.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5336 = load i32* %bsLive1590.phi.trans.insert, align 4, !dbg !412, !tbaa !354
  br label %sw.bb1586, !dbg !384

if.end.sw.bb1855_crit_edge:                       ; preds = %if.end
  %bsLive1859.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5339 = load i32* %bsLive1859.phi.trans.insert, align 4, !dbg !413, !tbaa !354
  br label %sw.bb1855, !dbg !384

if.end.sw.bb2050_crit_edge:                       ; preds = %if.end
  %bsLive2054.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5345 = load i32* %bsLive2054.phi.trans.insert, align 4, !dbg !414, !tbaa !354
  br label %sw.bb2050, !dbg !384

if.end.sw.bb2476_crit_edge:                       ; preds = %if.end
  %bsLive2480.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5348 = load i32* %bsLive2480.phi.trans.insert, align 4, !dbg !415, !tbaa !354
  br label %sw.bb2476, !dbg !384

sw.bb:                                            ; preds = %if.end
  store i32 10, i32* %state, align 4, !dbg !416, !tbaa !354
  %bsLive = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !417
  %27 = load i32* %bsLive, align 4, !dbg !417, !tbaa !354
  %cmp285086 = icmp sgt i32 %27, 7, !dbg !417
  %bsBuff.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !418
  br i1 %cmp285086, label %if.then29, label %if.end33.lr.ph, !dbg !417

if.end33.lr.ph:                                   ; preds = %sw.bb
  %avail_in.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 1
  %.pre5278 = load i32* %avail_in.phi.trans.insert, align 4, !dbg !417, !tbaa !354
  br label %if.end33, !dbg !417

if.then29:                                        ; preds = %sw.bb, %while.body.backedge
  %28 = phi %struct.bz_stream* [ %36, %while.body.backedge ], [ %0, %sw.bb ]
  %.lcssa5084 = phi i32 [ %40, %while.body.backedge ], [ %27, %sw.bb ]
  %29 = load i32* %bsBuff.pre, align 4, !dbg !418, !tbaa !354
  %sub = add nsw i32 %.lcssa5084, -8, !dbg !418
  %shr = lshr i32 %29, %sub, !dbg !418
  store i32 %sub, i32* %bsLive, align 4, !dbg !418, !tbaa !354
  %conv57 = and i32 %shr, 255, !dbg !419
  %cmp58 = icmp eq i32 %conv57, 66, !dbg !419
  br i1 %cmp58, label %sw.bb62, label %save_state_and_return, !dbg !419

if.end33:                                         ; preds = %if.end33.lr.ph, %while.body.backedge
  %30 = phi i32 [ %.pre5278, %if.end33.lr.ph ], [ %dec, %while.body.backedge ]
  %31 = phi i32 [ %27, %if.end33.lr.ph ], [ %40, %while.body.backedge ]
  %32 = phi %struct.bz_stream* [ %0, %if.end33.lr.ph ], [ %36, %while.body.backedge ]
  %cmp35 = icmp eq i32 %30, 0, !dbg !417
  br i1 %cmp35, label %save_state_and_return, label %if.end38, !dbg !417

if.end38:                                         ; preds = %if.end33
  %33 = load i32* %bsBuff.pre, align 4, !dbg !417, !tbaa !354
  %shl = shl i32 %33, 8, !dbg !417
  %next_in = getelementptr inbounds %struct.bz_stream* %32, i64 0, i32 0, !dbg !417
  %34 = load i8** %next_in, align 8, !dbg !417, !tbaa !350
  %35 = load i8* %34, align 1, !dbg !417, !tbaa !351
  %conv41 = zext i8 %35 to i32, !dbg !417
  %or = or i32 %conv41, %shl, !dbg !417
  store i32 %or, i32* %bsBuff.pre, align 4, !dbg !417, !tbaa !354
  %add = add nsw i32 %31, 8, !dbg !417
  store i32 %add, i32* %bsLive, align 4, !dbg !417, !tbaa !354
  %incdec.ptr = getelementptr inbounds i8* %34, i64 1, !dbg !417
  store i8* %incdec.ptr, i8** %next_in, align 8, !dbg !417, !tbaa !350
  %36 = load %struct.bz_stream** %strm1, align 8, !dbg !417, !tbaa !350
  %avail_in47 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 1, !dbg !417
  %37 = load i32* %avail_in47, align 4, !dbg !417, !tbaa !354
  %dec = add i32 %37, -1, !dbg !417
  store i32 %dec, i32* %avail_in47, align 4, !dbg !417, !tbaa !354
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 2, !dbg !417
  %38 = load i32* %total_in_lo32, align 4, !dbg !417, !tbaa !354
  %inc = add i32 %38, 1, !dbg !417
  store i32 %inc, i32* %total_in_lo32, align 4, !dbg !417, !tbaa !354
  %cmp51 = icmp eq i32 %inc, 0, !dbg !417
  br i1 %cmp51, label %if.then53, label %while.body.backedge, !dbg !417

if.then53:                                        ; preds = %if.end38
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 3, !dbg !417
  %39 = load i32* %total_in_hi32, align 4, !dbg !417, !tbaa !354
  %inc55 = add i32 %39, 1, !dbg !417
  store i32 %inc55, i32* %total_in_hi32, align 4, !dbg !417, !tbaa !354
  br label %while.body.backedge, !dbg !417

while.body.backedge:                              ; preds = %if.then53, %if.end38
  %40 = load i32* %bsLive, align 4, !dbg !417, !tbaa !354
  %cmp28 = icmp sgt i32 %40, 7, !dbg !417
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !417

sw.bb62:                                          ; preds = %if.end.sw.bb62_crit_edge, %if.then29
  %41 = phi i32 [ %sub, %if.then29 ], [ %.pre5279, %if.end.sw.bb62_crit_edge ]
  %42 = phi %struct.bz_stream* [ %28, %if.then29 ], [ %0, %if.end.sw.bb62_crit_edge ]
  store i32 11, i32* %state, align 4, !dbg !420, !tbaa !354
  %bsLive65 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !386
  %cmp665079 = icmp sgt i32 %41, 7, !dbg !386
  %bsBuff70.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !421
  br i1 %cmp665079, label %if.then68, label %if.end78.lr.ph, !dbg !386

if.end78.lr.ph:                                   ; preds = %sw.bb62
  %avail_in80.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %42, i64 0, i32 1
  %.pre5280 = load i32* %avail_in80.phi.trans.insert, align 4, !dbg !386, !tbaa !354
  br label %if.end78, !dbg !386

if.then68:                                        ; preds = %sw.bb62, %while.body64.backedge
  %43 = phi %struct.bz_stream* [ %51, %while.body64.backedge ], [ %42, %sw.bb62 ]
  %.lcssa5077 = phi i32 [ %55, %while.body64.backedge ], [ %41, %sw.bb62 ]
  %44 = load i32* %bsBuff70.pre, align 4, !dbg !421, !tbaa !354
  %sub72 = add nsw i32 %.lcssa5077, -8, !dbg !421
  %shr73 = lshr i32 %44, %sub72, !dbg !421
  store i32 %sub72, i32* %bsLive65, align 4, !dbg !421, !tbaa !354
  %conv113 = and i32 %shr73, 255, !dbg !422
  %cmp114 = icmp eq i32 %conv113, 90, !dbg !422
  br i1 %cmp114, label %sw.bb118, label %save_state_and_return, !dbg !422

if.end78:                                         ; preds = %if.end78.lr.ph, %while.body64.backedge
  %45 = phi i32 [ %.pre5280, %if.end78.lr.ph ], [ %dec99, %while.body64.backedge ]
  %46 = phi i32 [ %41, %if.end78.lr.ph ], [ %55, %while.body64.backedge ]
  %47 = phi %struct.bz_stream* [ %42, %if.end78.lr.ph ], [ %51, %while.body64.backedge ]
  %cmp81 = icmp eq i32 %45, 0, !dbg !386
  br i1 %cmp81, label %save_state_and_return, label %if.end84, !dbg !386

if.end84:                                         ; preds = %if.end78
  %48 = load i32* %bsBuff70.pre, align 4, !dbg !386, !tbaa !354
  %shl86 = shl i32 %48, 8, !dbg !386
  %next_in88 = getelementptr inbounds %struct.bz_stream* %47, i64 0, i32 0, !dbg !386
  %49 = load i8** %next_in88, align 8, !dbg !386, !tbaa !350
  %50 = load i8* %49, align 1, !dbg !386, !tbaa !351
  %conv89 = zext i8 %50 to i32, !dbg !386
  %or90 = or i32 %conv89, %shl86, !dbg !386
  store i32 %or90, i32* %bsBuff70.pre, align 4, !dbg !386, !tbaa !354
  %add93 = add nsw i32 %46, 8, !dbg !386
  store i32 %add93, i32* %bsLive65, align 4, !dbg !386, !tbaa !354
  %incdec.ptr96 = getelementptr inbounds i8* %49, i64 1, !dbg !386
  store i8* %incdec.ptr96, i8** %next_in88, align 8, !dbg !386, !tbaa !350
  %51 = load %struct.bz_stream** %strm1, align 8, !dbg !386, !tbaa !350
  %avail_in98 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 1, !dbg !386
  %52 = load i32* %avail_in98, align 4, !dbg !386, !tbaa !354
  %dec99 = add i32 %52, -1, !dbg !386
  store i32 %dec99, i32* %avail_in98, align 4, !dbg !386, !tbaa !354
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 2, !dbg !386
  %53 = load i32* %total_in_lo32101, align 4, !dbg !386, !tbaa !354
  %inc102 = add i32 %53, 1, !dbg !386
  store i32 %inc102, i32* %total_in_lo32101, align 4, !dbg !386, !tbaa !354
  %cmp105 = icmp eq i32 %inc102, 0, !dbg !386
  br i1 %cmp105, label %if.then107, label %while.body64.backedge, !dbg !386

if.then107:                                       ; preds = %if.end84
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 3, !dbg !386
  %54 = load i32* %total_in_hi32109, align 4, !dbg !386, !tbaa !354
  %inc110 = add i32 %54, 1, !dbg !386
  store i32 %inc110, i32* %total_in_hi32109, align 4, !dbg !386, !tbaa !354
  br label %while.body64.backedge, !dbg !386

while.body64.backedge:                            ; preds = %if.then107, %if.end84
  %55 = load i32* %bsLive65, align 4, !dbg !386, !tbaa !354
  %cmp66 = icmp sgt i32 %55, 7, !dbg !386
  br i1 %cmp66, label %if.then68, label %if.end78, !dbg !386

sw.bb118:                                         ; preds = %if.end.sw.bb118_crit_edge, %if.then68
  %56 = phi i32 [ %sub72, %if.then68 ], [ %.pre5281, %if.end.sw.bb118_crit_edge ]
  %57 = phi %struct.bz_stream* [ %43, %if.then68 ], [ %0, %if.end.sw.bb118_crit_edge ]
  store i32 12, i32* %state, align 4, !dbg !423, !tbaa !354
  %bsLive121 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !387
  %cmp1225072 = icmp sgt i32 %56, 7, !dbg !387
  %bsBuff126.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !424
  br i1 %cmp1225072, label %if.then124, label %if.end134.lr.ph, !dbg !387

if.end134.lr.ph:                                  ; preds = %sw.bb118
  %avail_in136.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %57, i64 0, i32 1
  %.pre5282 = load i32* %avail_in136.phi.trans.insert, align 4, !dbg !387, !tbaa !354
  br label %if.end134, !dbg !387

if.then124:                                       ; preds = %sw.bb118, %while.body120.backedge
  %58 = phi %struct.bz_stream* [ %66, %while.body120.backedge ], [ %57, %sw.bb118 ]
  %.lcssa5070 = phi i32 [ %70, %while.body120.backedge ], [ %56, %sw.bb118 ]
  %59 = load i32* %bsBuff126.pre, align 4, !dbg !424, !tbaa !354
  %sub128 = add nsw i32 %.lcssa5070, -8, !dbg !424
  %shr129 = lshr i32 %59, %sub128, !dbg !424
  store i32 %sub128, i32* %bsLive121, align 4, !dbg !424, !tbaa !354
  %conv169 = and i32 %shr129, 255, !dbg !425
  %cmp170 = icmp eq i32 %conv169, 104, !dbg !425
  br i1 %cmp170, label %sw.bb174, label %save_state_and_return, !dbg !425

if.end134:                                        ; preds = %if.end134.lr.ph, %while.body120.backedge
  %60 = phi i32 [ %.pre5282, %if.end134.lr.ph ], [ %dec155, %while.body120.backedge ]
  %61 = phi i32 [ %56, %if.end134.lr.ph ], [ %70, %while.body120.backedge ]
  %62 = phi %struct.bz_stream* [ %57, %if.end134.lr.ph ], [ %66, %while.body120.backedge ]
  %cmp137 = icmp eq i32 %60, 0, !dbg !387
  br i1 %cmp137, label %save_state_and_return, label %if.end140, !dbg !387

if.end140:                                        ; preds = %if.end134
  %63 = load i32* %bsBuff126.pre, align 4, !dbg !387, !tbaa !354
  %shl142 = shl i32 %63, 8, !dbg !387
  %next_in144 = getelementptr inbounds %struct.bz_stream* %62, i64 0, i32 0, !dbg !387
  %64 = load i8** %next_in144, align 8, !dbg !387, !tbaa !350
  %65 = load i8* %64, align 1, !dbg !387, !tbaa !351
  %conv145 = zext i8 %65 to i32, !dbg !387
  %or146 = or i32 %conv145, %shl142, !dbg !387
  store i32 %or146, i32* %bsBuff126.pre, align 4, !dbg !387, !tbaa !354
  %add149 = add nsw i32 %61, 8, !dbg !387
  store i32 %add149, i32* %bsLive121, align 4, !dbg !387, !tbaa !354
  %incdec.ptr152 = getelementptr inbounds i8* %64, i64 1, !dbg !387
  store i8* %incdec.ptr152, i8** %next_in144, align 8, !dbg !387, !tbaa !350
  %66 = load %struct.bz_stream** %strm1, align 8, !dbg !387, !tbaa !350
  %avail_in154 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 1, !dbg !387
  %67 = load i32* %avail_in154, align 4, !dbg !387, !tbaa !354
  %dec155 = add i32 %67, -1, !dbg !387
  store i32 %dec155, i32* %avail_in154, align 4, !dbg !387, !tbaa !354
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 2, !dbg !387
  %68 = load i32* %total_in_lo32157, align 4, !dbg !387, !tbaa !354
  %inc158 = add i32 %68, 1, !dbg !387
  store i32 %inc158, i32* %total_in_lo32157, align 4, !dbg !387, !tbaa !354
  %cmp161 = icmp eq i32 %inc158, 0, !dbg !387
  br i1 %cmp161, label %if.then163, label %while.body120.backedge, !dbg !387

if.then163:                                       ; preds = %if.end140
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 3, !dbg !387
  %69 = load i32* %total_in_hi32165, align 4, !dbg !387, !tbaa !354
  %inc166 = add i32 %69, 1, !dbg !387
  store i32 %inc166, i32* %total_in_hi32165, align 4, !dbg !387, !tbaa !354
  br label %while.body120.backedge, !dbg !387

while.body120.backedge:                           ; preds = %if.then163, %if.end140
  %70 = load i32* %bsLive121, align 4, !dbg !387, !tbaa !354
  %cmp122 = icmp sgt i32 %70, 7, !dbg !387
  br i1 %cmp122, label %if.then124, label %if.end134, !dbg !387

sw.bb174:                                         ; preds = %if.end.sw.bb174_crit_edge, %if.then124
  %71 = phi i32 [ %sub128, %if.then124 ], [ %.pre5283, %if.end.sw.bb174_crit_edge ]
  %72 = phi %struct.bz_stream* [ %58, %if.then124 ], [ %0, %if.end.sw.bb174_crit_edge ]
  store i32 13, i32* %state, align 4, !dbg !426, !tbaa !354
  %bsLive177 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !388
  %cmp1785065 = icmp sgt i32 %71, 7, !dbg !388
  %bsBuff182.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !427
  br i1 %cmp1785065, label %if.then180, label %if.end189.lr.ph, !dbg !388

if.end189.lr.ph:                                  ; preds = %sw.bb174
  %avail_in191.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %72, i64 0, i32 1
  %.pre5284 = load i32* %avail_in191.phi.trans.insert, align 4, !dbg !388, !tbaa !354
  br label %if.end189, !dbg !388

if.then180:                                       ; preds = %sw.bb174, %while.body176.backedge
  %.lcssa5063 = phi i32 [ %85, %while.body176.backedge ], [ %71, %sw.bb174 ]
  %73 = load i32* %bsBuff182.pre, align 4, !dbg !427, !tbaa !354
  %sub184 = add nsw i32 %.lcssa5063, -8, !dbg !427
  %shr185 = lshr i32 %73, %sub184, !dbg !427
  %and186 = and i32 %shr185, 255, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %and186}, i64 0, metadata !182), !dbg !427
  store i32 %sub184, i32* %bsLive177, align 4, !dbg !427, !tbaa !354
  %blockSize100k = getelementptr inbounds %struct.DState* %s, i64 0, i32 9, !dbg !427
  store i32 %and186, i32* %blockSize100k, align 4, !dbg !427, !tbaa !354
  %and186.off = add i32 %and186, -49, !dbg !428
  %74 = icmp ugt i32 %and186.off, 8, !dbg !428
  br i1 %74, label %save_state_and_return, label %if.end231, !dbg !428

if.end189:                                        ; preds = %if.end189.lr.ph, %while.body176.backedge
  %75 = phi i32 [ %.pre5284, %if.end189.lr.ph ], [ %dec210, %while.body176.backedge ]
  %76 = phi i32 [ %71, %if.end189.lr.ph ], [ %85, %while.body176.backedge ]
  %77 = phi %struct.bz_stream* [ %72, %if.end189.lr.ph ], [ %81, %while.body176.backedge ]
  %cmp192 = icmp eq i32 %75, 0, !dbg !388
  br i1 %cmp192, label %save_state_and_return, label %if.end195, !dbg !388

if.end195:                                        ; preds = %if.end189
  %78 = load i32* %bsBuff182.pre, align 4, !dbg !388, !tbaa !354
  %shl197 = shl i32 %78, 8, !dbg !388
  %next_in199 = getelementptr inbounds %struct.bz_stream* %77, i64 0, i32 0, !dbg !388
  %79 = load i8** %next_in199, align 8, !dbg !388, !tbaa !350
  %80 = load i8* %79, align 1, !dbg !388, !tbaa !351
  %conv200 = zext i8 %80 to i32, !dbg !388
  %or201 = or i32 %conv200, %shl197, !dbg !388
  store i32 %or201, i32* %bsBuff182.pre, align 4, !dbg !388, !tbaa !354
  %add204 = add nsw i32 %76, 8, !dbg !388
  store i32 %add204, i32* %bsLive177, align 4, !dbg !388, !tbaa !354
  %incdec.ptr207 = getelementptr inbounds i8* %79, i64 1, !dbg !388
  store i8* %incdec.ptr207, i8** %next_in199, align 8, !dbg !388, !tbaa !350
  %81 = load %struct.bz_stream** %strm1, align 8, !dbg !388, !tbaa !350
  %avail_in209 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 1, !dbg !388
  %82 = load i32* %avail_in209, align 4, !dbg !388, !tbaa !354
  %dec210 = add i32 %82, -1, !dbg !388
  store i32 %dec210, i32* %avail_in209, align 4, !dbg !388, !tbaa !354
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 2, !dbg !388
  %83 = load i32* %total_in_lo32212, align 4, !dbg !388, !tbaa !354
  %inc213 = add i32 %83, 1, !dbg !388
  store i32 %inc213, i32* %total_in_lo32212, align 4, !dbg !388, !tbaa !354
  %cmp216 = icmp eq i32 %inc213, 0, !dbg !388
  br i1 %cmp216, label %if.then218, label %while.body176.backedge, !dbg !388

if.then218:                                       ; preds = %if.end195
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 3, !dbg !388
  %84 = load i32* %total_in_hi32220, align 4, !dbg !388, !tbaa !354
  %inc221 = add i32 %84, 1, !dbg !388
  store i32 %inc221, i32* %total_in_hi32220, align 4, !dbg !388, !tbaa !354
  br label %while.body176.backedge, !dbg !388

while.body176.backedge:                           ; preds = %if.then218, %if.end195
  %85 = load i32* %bsLive177, align 4, !dbg !388, !tbaa !354
  %cmp178 = icmp sgt i32 %85, 7, !dbg !388
  br i1 %cmp178, label %if.then180, label %if.end189, !dbg !388

if.end231:                                        ; preds = %if.then180
  %sub233 = add nsw i32 %and186, -48, !dbg !429
  store i32 %sub233, i32* %blockSize100k, align 4, !dbg !429, !tbaa !354
  %smallDecompress = getelementptr inbounds %struct.DState* %s, i64 0, i32 10, !dbg !430
  %86 = load i8* %smallDecompress, align 1, !dbg !430, !tbaa !351
  %tobool = icmp eq i8 %86, 0, !dbg !430
  %bzalloc = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 9, !dbg !431
  %87 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !431, !tbaa !350
  %opaque = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 11, !dbg !431
  %88 = load i8** %opaque, align 8, !dbg !431, !tbaa !350
  br i1 %tobool, label %if.else, label %if.then234, !dbg !430

if.then234:                                       ; preds = %if.end231
  %mul237 = mul i32 %sub233, 200000, !dbg !431
  %call = call i8* %87(i8* %88, i32 %mul237, i32 1) #5, !dbg !431
  %89 = bitcast i8* %call to i16*, !dbg !431
  %ll16 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21, !dbg !431
  store i16* %89, i16** %ll16, align 8, !dbg !431, !tbaa !350
  %90 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !433, !tbaa !350
  %91 = load i8** %opaque, align 8, !dbg !433, !tbaa !350
  %92 = load i32* %blockSize100k, align 4, !dbg !433, !tbaa !354
  %mul242 = mul nsw i32 %92, 100000, !dbg !433
  %shr244 = ashr exact i32 %mul242, 1, !dbg !433
  %call248 = call i8* %90(i8* %91, i32 %shr244, i32 1) #5, !dbg !433
  %ll4 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22, !dbg !433
  store i8* %call248, i8** %ll4, align 8, !dbg !433, !tbaa !350
  %93 = load i16** %ll16, align 8, !dbg !434, !tbaa !350
  %cmp250 = icmp eq i16* %93, null, !dbg !434
  %cmp254 = icmp eq i8* %call248, null, !dbg !434
  %or.cond4731 = or i1 %cmp250, %cmp254, !dbg !434
  br i1 %or.cond4731, label %save_state_and_return, label %sw.bb272, !dbg !434

if.else:                                          ; preds = %if.end231
  %mul263 = mul i32 %sub233, 400000, !dbg !435
  %call265 = call i8* %87(i8* %88, i32 %mul263, i32 1) #5, !dbg !435
  %94 = bitcast i8* %call265 to i32*, !dbg !435
  %tt = getelementptr inbounds %struct.DState* %s, i64 0, i32 20, !dbg !435
  store i32* %94, i32** %tt, align 8, !dbg !435, !tbaa !350
  %cmp267 = icmp eq i8* %call265, null, !dbg !437
  br i1 %cmp267, label %save_state_and_return, label %sw.bb272, !dbg !437

sw.bb272:                                         ; preds = %if.end.sw.bb272_crit_edge, %if.then234, %if.else
  %bsLive275.pre-phi = phi i32* [ %bsLive275.pre, %if.end.sw.bb272_crit_edge ], [ %bsLive177, %if.then234 ], [ %bsLive177, %if.else ], !dbg !385
  store i32 14, i32* %state, align 4, !dbg !438, !tbaa !354
  %95 = load i32* %bsLive275.pre-phi, align 4, !dbg !385, !tbaa !354
  %cmp2765058 = icmp sgt i32 %95, 7, !dbg !385
  %bsBuff280.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !439
  br i1 %cmp2765058, label %if.then278, label %if.end288.lr.ph, !dbg !385

if.end288.lr.ph:                                  ; preds = %sw.bb272
  %.pre = load %struct.bz_stream** %strm1, align 8, !dbg !385, !tbaa !350
  %avail_in290.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre, i64 0, i32 1
  %.pre5285 = load i32* %avail_in290.phi.trans.insert, align 4, !dbg !385, !tbaa !354
  br label %if.end288, !dbg !385

if.then278:                                       ; preds = %sw.bb272, %while.body274.backedge
  %.lcssa5056 = phi i32 [ %107, %while.body274.backedge ], [ %95, %sw.bb272 ]
  %96 = load i32* %bsBuff280.pre, align 4, !dbg !439, !tbaa !354
  %sub282 = add nsw i32 %.lcssa5056, -8, !dbg !439
  %shr283 = lshr i32 %96, %sub282, !dbg !439
  store i32 %sub282, i32* %bsLive275.pre-phi, align 4, !dbg !439, !tbaa !354
  %conv323 = and i32 %shr283, 255, !dbg !440
  switch i32 %conv323, label %save_state_and_return [
    i32 23, label %sw.bb2942
    i32 49, label %sw.bb333
  ], !dbg !440

if.end288:                                        ; preds = %if.end288.lr.ph, %while.body274.backedge
  %97 = phi i32 [ %.pre5285, %if.end288.lr.ph ], [ %dec309, %while.body274.backedge ]
  %98 = phi i32 [ %95, %if.end288.lr.ph ], [ %107, %while.body274.backedge ]
  %99 = phi %struct.bz_stream* [ %.pre, %if.end288.lr.ph ], [ %103, %while.body274.backedge ]
  %cmp291 = icmp eq i32 %97, 0, !dbg !385
  br i1 %cmp291, label %save_state_and_return, label %if.end294, !dbg !385

if.end294:                                        ; preds = %if.end288
  %100 = load i32* %bsBuff280.pre, align 4, !dbg !385, !tbaa !354
  %shl296 = shl i32 %100, 8, !dbg !385
  %next_in298 = getelementptr inbounds %struct.bz_stream* %99, i64 0, i32 0, !dbg !385
  %101 = load i8** %next_in298, align 8, !dbg !385, !tbaa !350
  %102 = load i8* %101, align 1, !dbg !385, !tbaa !351
  %conv299 = zext i8 %102 to i32, !dbg !385
  %or300 = or i32 %conv299, %shl296, !dbg !385
  store i32 %or300, i32* %bsBuff280.pre, align 4, !dbg !385, !tbaa !354
  %add303 = add nsw i32 %98, 8, !dbg !385
  store i32 %add303, i32* %bsLive275.pre-phi, align 4, !dbg !385, !tbaa !354
  %incdec.ptr306 = getelementptr inbounds i8* %101, i64 1, !dbg !385
  store i8* %incdec.ptr306, i8** %next_in298, align 8, !dbg !385, !tbaa !350
  %103 = load %struct.bz_stream** %strm1, align 8, !dbg !385, !tbaa !350
  %avail_in308 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 1, !dbg !385
  %104 = load i32* %avail_in308, align 4, !dbg !385, !tbaa !354
  %dec309 = add i32 %104, -1, !dbg !385
  store i32 %dec309, i32* %avail_in308, align 4, !dbg !385, !tbaa !354
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 2, !dbg !385
  %105 = load i32* %total_in_lo32311, align 4, !dbg !385, !tbaa !354
  %inc312 = add i32 %105, 1, !dbg !385
  store i32 %inc312, i32* %total_in_lo32311, align 4, !dbg !385, !tbaa !354
  %cmp315 = icmp eq i32 %inc312, 0, !dbg !385
  br i1 %cmp315, label %if.then317, label %while.body274.backedge, !dbg !385

if.then317:                                       ; preds = %if.end294
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 3, !dbg !385
  %106 = load i32* %total_in_hi32319, align 4, !dbg !385, !tbaa !354
  %inc320 = add i32 %106, 1, !dbg !385
  store i32 %inc320, i32* %total_in_hi32319, align 4, !dbg !385, !tbaa !354
  br label %while.body274.backedge, !dbg !385

while.body274.backedge:                           ; preds = %if.then317, %if.end294
  %107 = load i32* %bsLive275.pre-phi, align 4, !dbg !385, !tbaa !354
  %cmp276 = icmp sgt i32 %107, 7, !dbg !385
  br i1 %cmp276, label %if.then278, label %if.end288, !dbg !385

sw.bb333:                                         ; preds = %if.end.sw.bb333_crit_edge, %if.then278
  %108 = phi i32 [ %.pre5304, %if.end.sw.bb333_crit_edge ], [ %sub282, %if.then278 ]
  store i32 15, i32* %state, align 4, !dbg !441, !tbaa !354
  %bsLive336 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !398
  %cmp3375051 = icmp sgt i32 %108, 7, !dbg !398
  %bsBuff341.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !442
  br i1 %cmp3375051, label %if.then339, label %if.end349.lr.ph, !dbg !398

if.end349.lr.ph:                                  ; preds = %sw.bb333
  %.pre5225 = load %struct.bz_stream** %strm1, align 8, !dbg !398, !tbaa !350
  %avail_in351.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5225, i64 0, i32 1
  %.pre5305 = load i32* %avail_in351.phi.trans.insert, align 4, !dbg !398, !tbaa !354
  br label %if.end349, !dbg !398

if.then339:                                       ; preds = %sw.bb333, %while.body335.backedge
  %.lcssa5049 = phi i32 [ %120, %while.body335.backedge ], [ %108, %sw.bb333 ]
  %109 = load i32* %bsBuff341.pre, align 4, !dbg !442, !tbaa !354
  %sub343 = add nsw i32 %.lcssa5049, -8, !dbg !442
  %shr344 = lshr i32 %109, %sub343, !dbg !442
  store i32 %sub343, i32* %bsLive336, align 4, !dbg !442, !tbaa !354
  %conv384 = and i32 %shr344, 255, !dbg !443
  %cmp385 = icmp eq i32 %conv384, 65, !dbg !443
  br i1 %cmp385, label %sw.bb389, label %save_state_and_return, !dbg !443

if.end349:                                        ; preds = %if.end349.lr.ph, %while.body335.backedge
  %110 = phi i32 [ %.pre5305, %if.end349.lr.ph ], [ %dec370, %while.body335.backedge ]
  %111 = phi i32 [ %108, %if.end349.lr.ph ], [ %120, %while.body335.backedge ]
  %112 = phi %struct.bz_stream* [ %.pre5225, %if.end349.lr.ph ], [ %116, %while.body335.backedge ]
  %cmp352 = icmp eq i32 %110, 0, !dbg !398
  br i1 %cmp352, label %save_state_and_return, label %if.end355, !dbg !398

if.end355:                                        ; preds = %if.end349
  %113 = load i32* %bsBuff341.pre, align 4, !dbg !398, !tbaa !354
  %shl357 = shl i32 %113, 8, !dbg !398
  %next_in359 = getelementptr inbounds %struct.bz_stream* %112, i64 0, i32 0, !dbg !398
  %114 = load i8** %next_in359, align 8, !dbg !398, !tbaa !350
  %115 = load i8* %114, align 1, !dbg !398, !tbaa !351
  %conv360 = zext i8 %115 to i32, !dbg !398
  %or361 = or i32 %conv360, %shl357, !dbg !398
  store i32 %or361, i32* %bsBuff341.pre, align 4, !dbg !398, !tbaa !354
  %add364 = add nsw i32 %111, 8, !dbg !398
  store i32 %add364, i32* %bsLive336, align 4, !dbg !398, !tbaa !354
  %incdec.ptr367 = getelementptr inbounds i8* %114, i64 1, !dbg !398
  store i8* %incdec.ptr367, i8** %next_in359, align 8, !dbg !398, !tbaa !350
  %116 = load %struct.bz_stream** %strm1, align 8, !dbg !398, !tbaa !350
  %avail_in369 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 1, !dbg !398
  %117 = load i32* %avail_in369, align 4, !dbg !398, !tbaa !354
  %dec370 = add i32 %117, -1, !dbg !398
  store i32 %dec370, i32* %avail_in369, align 4, !dbg !398, !tbaa !354
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 2, !dbg !398
  %118 = load i32* %total_in_lo32372, align 4, !dbg !398, !tbaa !354
  %inc373 = add i32 %118, 1, !dbg !398
  store i32 %inc373, i32* %total_in_lo32372, align 4, !dbg !398, !tbaa !354
  %cmp376 = icmp eq i32 %inc373, 0, !dbg !398
  br i1 %cmp376, label %if.then378, label %while.body335.backedge, !dbg !398

if.then378:                                       ; preds = %if.end355
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 3, !dbg !398
  %119 = load i32* %total_in_hi32380, align 4, !dbg !398, !tbaa !354
  %inc381 = add i32 %119, 1, !dbg !398
  store i32 %inc381, i32* %total_in_hi32380, align 4, !dbg !398, !tbaa !354
  br label %while.body335.backedge, !dbg !398

while.body335.backedge:                           ; preds = %if.then378, %if.end355
  %120 = load i32* %bsLive336, align 4, !dbg !398, !tbaa !354
  %cmp337 = icmp sgt i32 %120, 7, !dbg !398
  br i1 %cmp337, label %if.then339, label %if.end349, !dbg !398

sw.bb389:                                         ; preds = %if.end.sw.bb389_crit_edge, %if.then339
  %121 = phi i32 [ %.pre5306, %if.end.sw.bb389_crit_edge ], [ %sub343, %if.then339 ]
  store i32 16, i32* %state, align 4, !dbg !444, !tbaa !354
  %bsLive392 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !399
  %cmp3935044 = icmp sgt i32 %121, 7, !dbg !399
  %bsBuff397.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !445
  br i1 %cmp3935044, label %if.then395, label %if.end405.lr.ph, !dbg !399

if.end405.lr.ph:                                  ; preds = %sw.bb389
  %.pre5226 = load %struct.bz_stream** %strm1, align 8, !dbg !399, !tbaa !350
  %avail_in407.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5226, i64 0, i32 1
  %.pre5307 = load i32* %avail_in407.phi.trans.insert, align 4, !dbg !399, !tbaa !354
  br label %if.end405, !dbg !399

if.then395:                                       ; preds = %sw.bb389, %while.body391.backedge
  %.lcssa5042 = phi i32 [ %133, %while.body391.backedge ], [ %121, %sw.bb389 ]
  %122 = load i32* %bsBuff397.pre, align 4, !dbg !445, !tbaa !354
  %sub399 = add nsw i32 %.lcssa5042, -8, !dbg !445
  %shr400 = lshr i32 %122, %sub399, !dbg !445
  store i32 %sub399, i32* %bsLive392, align 4, !dbg !445, !tbaa !354
  %conv440 = and i32 %shr400, 255, !dbg !446
  %cmp441 = icmp eq i32 %conv440, 89, !dbg !446
  br i1 %cmp441, label %sw.bb445, label %save_state_and_return, !dbg !446

if.end405:                                        ; preds = %if.end405.lr.ph, %while.body391.backedge
  %123 = phi i32 [ %.pre5307, %if.end405.lr.ph ], [ %dec426, %while.body391.backedge ]
  %124 = phi i32 [ %121, %if.end405.lr.ph ], [ %133, %while.body391.backedge ]
  %125 = phi %struct.bz_stream* [ %.pre5226, %if.end405.lr.ph ], [ %129, %while.body391.backedge ]
  %cmp408 = icmp eq i32 %123, 0, !dbg !399
  br i1 %cmp408, label %save_state_and_return, label %if.end411, !dbg !399

if.end411:                                        ; preds = %if.end405
  %126 = load i32* %bsBuff397.pre, align 4, !dbg !399, !tbaa !354
  %shl413 = shl i32 %126, 8, !dbg !399
  %next_in415 = getelementptr inbounds %struct.bz_stream* %125, i64 0, i32 0, !dbg !399
  %127 = load i8** %next_in415, align 8, !dbg !399, !tbaa !350
  %128 = load i8* %127, align 1, !dbg !399, !tbaa !351
  %conv416 = zext i8 %128 to i32, !dbg !399
  %or417 = or i32 %conv416, %shl413, !dbg !399
  store i32 %or417, i32* %bsBuff397.pre, align 4, !dbg !399, !tbaa !354
  %add420 = add nsw i32 %124, 8, !dbg !399
  store i32 %add420, i32* %bsLive392, align 4, !dbg !399, !tbaa !354
  %incdec.ptr423 = getelementptr inbounds i8* %127, i64 1, !dbg !399
  store i8* %incdec.ptr423, i8** %next_in415, align 8, !dbg !399, !tbaa !350
  %129 = load %struct.bz_stream** %strm1, align 8, !dbg !399, !tbaa !350
  %avail_in425 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 1, !dbg !399
  %130 = load i32* %avail_in425, align 4, !dbg !399, !tbaa !354
  %dec426 = add i32 %130, -1, !dbg !399
  store i32 %dec426, i32* %avail_in425, align 4, !dbg !399, !tbaa !354
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 2, !dbg !399
  %131 = load i32* %total_in_lo32428, align 4, !dbg !399, !tbaa !354
  %inc429 = add i32 %131, 1, !dbg !399
  store i32 %inc429, i32* %total_in_lo32428, align 4, !dbg !399, !tbaa !354
  %cmp432 = icmp eq i32 %inc429, 0, !dbg !399
  br i1 %cmp432, label %if.then434, label %while.body391.backedge, !dbg !399

if.then434:                                       ; preds = %if.end411
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 3, !dbg !399
  %132 = load i32* %total_in_hi32436, align 4, !dbg !399, !tbaa !354
  %inc437 = add i32 %132, 1, !dbg !399
  store i32 %inc437, i32* %total_in_hi32436, align 4, !dbg !399, !tbaa !354
  br label %while.body391.backedge, !dbg !399

while.body391.backedge:                           ; preds = %if.then434, %if.end411
  %133 = load i32* %bsLive392, align 4, !dbg !399, !tbaa !354
  %cmp393 = icmp sgt i32 %133, 7, !dbg !399
  br i1 %cmp393, label %if.then395, label %if.end405, !dbg !399

sw.bb445:                                         ; preds = %if.end.sw.bb445_crit_edge, %if.then395
  %134 = phi i32 [ %.pre5308, %if.end.sw.bb445_crit_edge ], [ %sub399, %if.then395 ]
  store i32 17, i32* %state, align 4, !dbg !447, !tbaa !354
  %bsLive448 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !400
  %cmp4495037 = icmp sgt i32 %134, 7, !dbg !400
  %bsBuff453.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !448
  br i1 %cmp4495037, label %if.then451, label %if.end461.lr.ph, !dbg !400

if.end461.lr.ph:                                  ; preds = %sw.bb445
  %.pre5227 = load %struct.bz_stream** %strm1, align 8, !dbg !400, !tbaa !350
  %avail_in463.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5227, i64 0, i32 1
  %.pre5309 = load i32* %avail_in463.phi.trans.insert, align 4, !dbg !400, !tbaa !354
  br label %if.end461, !dbg !400

if.then451:                                       ; preds = %sw.bb445, %while.body447.backedge
  %.lcssa5035 = phi i32 [ %146, %while.body447.backedge ], [ %134, %sw.bb445 ]
  %135 = load i32* %bsBuff453.pre, align 4, !dbg !448, !tbaa !354
  %sub455 = add nsw i32 %.lcssa5035, -8, !dbg !448
  %shr456 = lshr i32 %135, %sub455, !dbg !448
  store i32 %sub455, i32* %bsLive448, align 4, !dbg !448, !tbaa !354
  %conv496 = and i32 %shr456, 255, !dbg !449
  %cmp497 = icmp eq i32 %conv496, 38, !dbg !449
  br i1 %cmp497, label %sw.bb501, label %save_state_and_return, !dbg !449

if.end461:                                        ; preds = %if.end461.lr.ph, %while.body447.backedge
  %136 = phi i32 [ %.pre5309, %if.end461.lr.ph ], [ %dec482, %while.body447.backedge ]
  %137 = phi i32 [ %134, %if.end461.lr.ph ], [ %146, %while.body447.backedge ]
  %138 = phi %struct.bz_stream* [ %.pre5227, %if.end461.lr.ph ], [ %142, %while.body447.backedge ]
  %cmp464 = icmp eq i32 %136, 0, !dbg !400
  br i1 %cmp464, label %save_state_and_return, label %if.end467, !dbg !400

if.end467:                                        ; preds = %if.end461
  %139 = load i32* %bsBuff453.pre, align 4, !dbg !400, !tbaa !354
  %shl469 = shl i32 %139, 8, !dbg !400
  %next_in471 = getelementptr inbounds %struct.bz_stream* %138, i64 0, i32 0, !dbg !400
  %140 = load i8** %next_in471, align 8, !dbg !400, !tbaa !350
  %141 = load i8* %140, align 1, !dbg !400, !tbaa !351
  %conv472 = zext i8 %141 to i32, !dbg !400
  %or473 = or i32 %conv472, %shl469, !dbg !400
  store i32 %or473, i32* %bsBuff453.pre, align 4, !dbg !400, !tbaa !354
  %add476 = add nsw i32 %137, 8, !dbg !400
  store i32 %add476, i32* %bsLive448, align 4, !dbg !400, !tbaa !354
  %incdec.ptr479 = getelementptr inbounds i8* %140, i64 1, !dbg !400
  store i8* %incdec.ptr479, i8** %next_in471, align 8, !dbg !400, !tbaa !350
  %142 = load %struct.bz_stream** %strm1, align 8, !dbg !400, !tbaa !350
  %avail_in481 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 1, !dbg !400
  %143 = load i32* %avail_in481, align 4, !dbg !400, !tbaa !354
  %dec482 = add i32 %143, -1, !dbg !400
  store i32 %dec482, i32* %avail_in481, align 4, !dbg !400, !tbaa !354
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 2, !dbg !400
  %144 = load i32* %total_in_lo32484, align 4, !dbg !400, !tbaa !354
  %inc485 = add i32 %144, 1, !dbg !400
  store i32 %inc485, i32* %total_in_lo32484, align 4, !dbg !400, !tbaa !354
  %cmp488 = icmp eq i32 %inc485, 0, !dbg !400
  br i1 %cmp488, label %if.then490, label %while.body447.backedge, !dbg !400

if.then490:                                       ; preds = %if.end467
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 3, !dbg !400
  %145 = load i32* %total_in_hi32492, align 4, !dbg !400, !tbaa !354
  %inc493 = add i32 %145, 1, !dbg !400
  store i32 %inc493, i32* %total_in_hi32492, align 4, !dbg !400, !tbaa !354
  br label %while.body447.backedge, !dbg !400

while.body447.backedge:                           ; preds = %if.then490, %if.end467
  %146 = load i32* %bsLive448, align 4, !dbg !400, !tbaa !354
  %cmp449 = icmp sgt i32 %146, 7, !dbg !400
  br i1 %cmp449, label %if.then451, label %if.end461, !dbg !400

sw.bb501:                                         ; preds = %if.end.sw.bb501_crit_edge, %if.then451
  %147 = phi i32 [ %.pre5310, %if.end.sw.bb501_crit_edge ], [ %sub455, %if.then451 ]
  store i32 18, i32* %state, align 4, !dbg !450, !tbaa !354
  %bsLive504 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !401
  %cmp5055030 = icmp sgt i32 %147, 7, !dbg !401
  %bsBuff509.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !451
  br i1 %cmp5055030, label %if.then507, label %if.end517.lr.ph, !dbg !401

if.end517.lr.ph:                                  ; preds = %sw.bb501
  %.pre5228 = load %struct.bz_stream** %strm1, align 8, !dbg !401, !tbaa !350
  %avail_in519.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5228, i64 0, i32 1
  %.pre5311 = load i32* %avail_in519.phi.trans.insert, align 4, !dbg !401, !tbaa !354
  br label %if.end517, !dbg !401

if.then507:                                       ; preds = %sw.bb501, %while.body503.backedge
  %.lcssa5028 = phi i32 [ %159, %while.body503.backedge ], [ %147, %sw.bb501 ]
  %148 = load i32* %bsBuff509.pre, align 4, !dbg !451, !tbaa !354
  %sub511 = add nsw i32 %.lcssa5028, -8, !dbg !451
  %shr512 = lshr i32 %148, %sub511, !dbg !451
  store i32 %sub511, i32* %bsLive504, align 4, !dbg !451, !tbaa !354
  %conv552 = and i32 %shr512, 255, !dbg !452
  %cmp553 = icmp eq i32 %conv552, 83, !dbg !452
  br i1 %cmp553, label %sw.bb557, label %save_state_and_return, !dbg !452

if.end517:                                        ; preds = %if.end517.lr.ph, %while.body503.backedge
  %149 = phi i32 [ %.pre5311, %if.end517.lr.ph ], [ %dec538, %while.body503.backedge ]
  %150 = phi i32 [ %147, %if.end517.lr.ph ], [ %159, %while.body503.backedge ]
  %151 = phi %struct.bz_stream* [ %.pre5228, %if.end517.lr.ph ], [ %155, %while.body503.backedge ]
  %cmp520 = icmp eq i32 %149, 0, !dbg !401
  br i1 %cmp520, label %save_state_and_return, label %if.end523, !dbg !401

if.end523:                                        ; preds = %if.end517
  %152 = load i32* %bsBuff509.pre, align 4, !dbg !401, !tbaa !354
  %shl525 = shl i32 %152, 8, !dbg !401
  %next_in527 = getelementptr inbounds %struct.bz_stream* %151, i64 0, i32 0, !dbg !401
  %153 = load i8** %next_in527, align 8, !dbg !401, !tbaa !350
  %154 = load i8* %153, align 1, !dbg !401, !tbaa !351
  %conv528 = zext i8 %154 to i32, !dbg !401
  %or529 = or i32 %conv528, %shl525, !dbg !401
  store i32 %or529, i32* %bsBuff509.pre, align 4, !dbg !401, !tbaa !354
  %add532 = add nsw i32 %150, 8, !dbg !401
  store i32 %add532, i32* %bsLive504, align 4, !dbg !401, !tbaa !354
  %incdec.ptr535 = getelementptr inbounds i8* %153, i64 1, !dbg !401
  store i8* %incdec.ptr535, i8** %next_in527, align 8, !dbg !401, !tbaa !350
  %155 = load %struct.bz_stream** %strm1, align 8, !dbg !401, !tbaa !350
  %avail_in537 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 1, !dbg !401
  %156 = load i32* %avail_in537, align 4, !dbg !401, !tbaa !354
  %dec538 = add i32 %156, -1, !dbg !401
  store i32 %dec538, i32* %avail_in537, align 4, !dbg !401, !tbaa !354
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 2, !dbg !401
  %157 = load i32* %total_in_lo32540, align 4, !dbg !401, !tbaa !354
  %inc541 = add i32 %157, 1, !dbg !401
  store i32 %inc541, i32* %total_in_lo32540, align 4, !dbg !401, !tbaa !354
  %cmp544 = icmp eq i32 %inc541, 0, !dbg !401
  br i1 %cmp544, label %if.then546, label %while.body503.backedge, !dbg !401

if.then546:                                       ; preds = %if.end523
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 3, !dbg !401
  %158 = load i32* %total_in_hi32548, align 4, !dbg !401, !tbaa !354
  %inc549 = add i32 %158, 1, !dbg !401
  store i32 %inc549, i32* %total_in_hi32548, align 4, !dbg !401, !tbaa !354
  br label %while.body503.backedge, !dbg !401

while.body503.backedge:                           ; preds = %if.then546, %if.end523
  %159 = load i32* %bsLive504, align 4, !dbg !401, !tbaa !354
  %cmp505 = icmp sgt i32 %159, 7, !dbg !401
  br i1 %cmp505, label %if.then507, label %if.end517, !dbg !401

sw.bb557:                                         ; preds = %if.end.sw.bb557_crit_edge, %if.then507
  %160 = phi i32 [ %.pre5312, %if.end.sw.bb557_crit_edge ], [ %sub511, %if.then507 ]
  store i32 19, i32* %state, align 4, !dbg !453, !tbaa !354
  %bsLive560 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !402
  %cmp5615023 = icmp sgt i32 %160, 7, !dbg !402
  %bsBuff565.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !454
  br i1 %cmp5615023, label %if.then563, label %if.end573.lr.ph, !dbg !402

if.end573.lr.ph:                                  ; preds = %sw.bb557
  %.pre5229 = load %struct.bz_stream** %strm1, align 8, !dbg !402, !tbaa !350
  %avail_in575.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5229, i64 0, i32 1
  %.pre5313 = load i32* %avail_in575.phi.trans.insert, align 4, !dbg !402, !tbaa !354
  br label %if.end573, !dbg !402

if.then563:                                       ; preds = %sw.bb557, %while.body559.backedge
  %.lcssa5021 = phi i32 [ %172, %while.body559.backedge ], [ %160, %sw.bb557 ]
  %161 = load i32* %bsBuff565.pre, align 4, !dbg !454, !tbaa !354
  %sub567 = add nsw i32 %.lcssa5021, -8, !dbg !454
  %shr568 = lshr i32 %161, %sub567, !dbg !454
  store i32 %sub567, i32* %bsLive560, align 4, !dbg !454, !tbaa !354
  %conv608 = and i32 %shr568, 255, !dbg !455
  %cmp609 = icmp eq i32 %conv608, 89, !dbg !455
  br i1 %cmp609, label %if.end612, label %save_state_and_return, !dbg !455

if.end573:                                        ; preds = %if.end573.lr.ph, %while.body559.backedge
  %162 = phi i32 [ %.pre5313, %if.end573.lr.ph ], [ %dec594, %while.body559.backedge ]
  %163 = phi i32 [ %160, %if.end573.lr.ph ], [ %172, %while.body559.backedge ]
  %164 = phi %struct.bz_stream* [ %.pre5229, %if.end573.lr.ph ], [ %168, %while.body559.backedge ]
  %cmp576 = icmp eq i32 %162, 0, !dbg !402
  br i1 %cmp576, label %save_state_and_return, label %if.end579, !dbg !402

if.end579:                                        ; preds = %if.end573
  %165 = load i32* %bsBuff565.pre, align 4, !dbg !402, !tbaa !354
  %shl581 = shl i32 %165, 8, !dbg !402
  %next_in583 = getelementptr inbounds %struct.bz_stream* %164, i64 0, i32 0, !dbg !402
  %166 = load i8** %next_in583, align 8, !dbg !402, !tbaa !350
  %167 = load i8* %166, align 1, !dbg !402, !tbaa !351
  %conv584 = zext i8 %167 to i32, !dbg !402
  %or585 = or i32 %conv584, %shl581, !dbg !402
  store i32 %or585, i32* %bsBuff565.pre, align 4, !dbg !402, !tbaa !354
  %add588 = add nsw i32 %163, 8, !dbg !402
  store i32 %add588, i32* %bsLive560, align 4, !dbg !402, !tbaa !354
  %incdec.ptr591 = getelementptr inbounds i8* %166, i64 1, !dbg !402
  store i8* %incdec.ptr591, i8** %next_in583, align 8, !dbg !402, !tbaa !350
  %168 = load %struct.bz_stream** %strm1, align 8, !dbg !402, !tbaa !350
  %avail_in593 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 1, !dbg !402
  %169 = load i32* %avail_in593, align 4, !dbg !402, !tbaa !354
  %dec594 = add i32 %169, -1, !dbg !402
  store i32 %dec594, i32* %avail_in593, align 4, !dbg !402, !tbaa !354
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 2, !dbg !402
  %170 = load i32* %total_in_lo32596, align 4, !dbg !402, !tbaa !354
  %inc597 = add i32 %170, 1, !dbg !402
  store i32 %inc597, i32* %total_in_lo32596, align 4, !dbg !402, !tbaa !354
  %cmp600 = icmp eq i32 %inc597, 0, !dbg !402
  br i1 %cmp600, label %if.then602, label %while.body559.backedge, !dbg !402

if.then602:                                       ; preds = %if.end579
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 3, !dbg !402
  %171 = load i32* %total_in_hi32604, align 4, !dbg !402, !tbaa !354
  %inc605 = add i32 %171, 1, !dbg !402
  store i32 %inc605, i32* %total_in_hi32604, align 4, !dbg !402, !tbaa !354
  br label %while.body559.backedge, !dbg !402

while.body559.backedge:                           ; preds = %if.then602, %if.end579
  %172 = load i32* %bsLive560, align 4, !dbg !402, !tbaa !354
  %cmp561 = icmp sgt i32 %172, 7, !dbg !402
  br i1 %cmp561, label %if.then563, label %if.end573, !dbg !402

if.end612:                                        ; preds = %if.then563
  %currBlockNo = getelementptr inbounds %struct.DState* %s, i64 0, i32 11, !dbg !456
  %173 = load i32* %currBlockNo, align 4, !dbg !456, !tbaa !354
  %inc613 = add nsw i32 %173, 1, !dbg !456
  store i32 %inc613, i32* %currBlockNo, align 4, !dbg !456, !tbaa !354
  %verbosity = getelementptr inbounds %struct.DState* %s, i64 0, i32 12, !dbg !457
  %174 = load i32* %verbosity, align 4, !dbg !457, !tbaa !354
  %cmp614 = icmp sgt i32 %174, 1, !dbg !457
  br i1 %cmp614, label %if.then616, label %if.end619, !dbg !457

if.then616:                                       ; preds = %if.end612
  %175 = load %struct._IO_FILE** @stderr, align 8, !dbg !458, !tbaa !350
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), i32 %inc613) #5, !dbg !458
  br label %if.end619, !dbg !458

if.end619:                                        ; preds = %if.then616, %if.end612
  %storedBlockCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 23, !dbg !459
  store i32 0, i32* %storedBlockCRC, align 4, !dbg !459, !tbaa !354
  br label %sw.bb620, !dbg !459

sw.bb620:                                         ; preds = %if.end.sw.bb620_crit_edge, %if.end619
  %bsLive623.pre-phi = phi i32* [ %bsLive623.pre, %if.end.sw.bb620_crit_edge ], [ %bsLive560, %if.end619 ], !dbg !403
  store i32 20, i32* %state, align 4, !dbg !460, !tbaa !354
  %176 = load i32* %bsLive623.pre-phi, align 4, !dbg !403, !tbaa !354
  %cmp6245016 = icmp sgt i32 %176, 7, !dbg !403
  %bsBuff628.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !461
  br i1 %cmp6245016, label %if.then626, label %if.end636.lr.ph, !dbg !403

if.end636.lr.ph:                                  ; preds = %sw.bb620
  %.pre5230 = load %struct.bz_stream** %strm1, align 8, !dbg !403, !tbaa !350
  %avail_in638.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5230, i64 0, i32 1
  %.pre5314 = load i32* %avail_in638.phi.trans.insert, align 4, !dbg !403, !tbaa !354
  br label %if.end636, !dbg !403

if.then626:                                       ; preds = %sw.bb620, %while.body622.backedge
  %.lcssa5014 = phi i32 [ %189, %while.body622.backedge ], [ %176, %sw.bb620 ]
  %177 = load i32* %bsBuff628.pre, align 4, !dbg !461, !tbaa !354
  %sub630 = add nsw i32 %.lcssa5014, -8, !dbg !461
  %shr631 = lshr i32 %177, %sub630, !dbg !461
  store i32 %sub630, i32* %bsLive623.pre-phi, align 4, !dbg !461, !tbaa !354
  %storedBlockCRC671 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23, !dbg !462
  %178 = load i32* %storedBlockCRC671, align 4, !dbg !462, !tbaa !354
  %shl672 = shl i32 %178, 8, !dbg !462
  %conv673 = and i32 %shr631, 255, !dbg !462
  %or674 = or i32 %shl672, %conv673, !dbg !462
  store i32 %or674, i32* %storedBlockCRC671, align 4, !dbg !462, !tbaa !354
  br label %sw.bb676, !dbg !462

if.end636:                                        ; preds = %if.end636.lr.ph, %while.body622.backedge
  %179 = phi i32 [ %.pre5314, %if.end636.lr.ph ], [ %dec657, %while.body622.backedge ]
  %180 = phi i32 [ %176, %if.end636.lr.ph ], [ %189, %while.body622.backedge ]
  %181 = phi %struct.bz_stream* [ %.pre5230, %if.end636.lr.ph ], [ %185, %while.body622.backedge ]
  %cmp639 = icmp eq i32 %179, 0, !dbg !403
  br i1 %cmp639, label %save_state_and_return, label %if.end642, !dbg !403

if.end642:                                        ; preds = %if.end636
  %182 = load i32* %bsBuff628.pre, align 4, !dbg !403, !tbaa !354
  %shl644 = shl i32 %182, 8, !dbg !403
  %next_in646 = getelementptr inbounds %struct.bz_stream* %181, i64 0, i32 0, !dbg !403
  %183 = load i8** %next_in646, align 8, !dbg !403, !tbaa !350
  %184 = load i8* %183, align 1, !dbg !403, !tbaa !351
  %conv647 = zext i8 %184 to i32, !dbg !403
  %or648 = or i32 %conv647, %shl644, !dbg !403
  store i32 %or648, i32* %bsBuff628.pre, align 4, !dbg !403, !tbaa !354
  %add651 = add nsw i32 %180, 8, !dbg !403
  store i32 %add651, i32* %bsLive623.pre-phi, align 4, !dbg !403, !tbaa !354
  %incdec.ptr654 = getelementptr inbounds i8* %183, i64 1, !dbg !403
  store i8* %incdec.ptr654, i8** %next_in646, align 8, !dbg !403, !tbaa !350
  %185 = load %struct.bz_stream** %strm1, align 8, !dbg !403, !tbaa !350
  %avail_in656 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 1, !dbg !403
  %186 = load i32* %avail_in656, align 4, !dbg !403, !tbaa !354
  %dec657 = add i32 %186, -1, !dbg !403
  store i32 %dec657, i32* %avail_in656, align 4, !dbg !403, !tbaa !354
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 2, !dbg !403
  %187 = load i32* %total_in_lo32659, align 4, !dbg !403, !tbaa !354
  %inc660 = add i32 %187, 1, !dbg !403
  store i32 %inc660, i32* %total_in_lo32659, align 4, !dbg !403, !tbaa !354
  %cmp663 = icmp eq i32 %inc660, 0, !dbg !403
  br i1 %cmp663, label %if.then665, label %while.body622.backedge, !dbg !403

if.then665:                                       ; preds = %if.end642
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 3, !dbg !403
  %188 = load i32* %total_in_hi32667, align 4, !dbg !403, !tbaa !354
  %inc668 = add i32 %188, 1, !dbg !403
  store i32 %inc668, i32* %total_in_hi32667, align 4, !dbg !403, !tbaa !354
  br label %while.body622.backedge, !dbg !403

while.body622.backedge:                           ; preds = %if.then665, %if.end642
  %189 = load i32* %bsLive623.pre-phi, align 4, !dbg !403, !tbaa !354
  %cmp624 = icmp sgt i32 %189, 7, !dbg !403
  br i1 %cmp624, label %if.then626, label %if.end636, !dbg !403

sw.bb676:                                         ; preds = %if.end.sw.bb676_crit_edge, %if.then626
  %190 = phi i32 [ %.pre5315, %if.end.sw.bb676_crit_edge ], [ %sub630, %if.then626 ]
  store i32 21, i32* %state, align 4, !dbg !463, !tbaa !354
  %bsLive679 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !404
  %cmp6805009 = icmp sgt i32 %190, 7, !dbg !404
  %bsBuff684.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !464
  br i1 %cmp6805009, label %if.then682, label %if.end692.lr.ph, !dbg !404

if.end692.lr.ph:                                  ; preds = %sw.bb676
  %.pre5231 = load %struct.bz_stream** %strm1, align 8, !dbg !404, !tbaa !350
  %avail_in694.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5231, i64 0, i32 1
  %.pre5316 = load i32* %avail_in694.phi.trans.insert, align 4, !dbg !404, !tbaa !354
  br label %if.end692, !dbg !404

if.then682:                                       ; preds = %sw.bb676, %while.body678.backedge
  %.lcssa5007 = phi i32 [ %203, %while.body678.backedge ], [ %190, %sw.bb676 ]
  %191 = load i32* %bsBuff684.pre, align 4, !dbg !464, !tbaa !354
  %sub686 = add nsw i32 %.lcssa5007, -8, !dbg !464
  %shr687 = lshr i32 %191, %sub686, !dbg !464
  store i32 %sub686, i32* %bsLive679, align 4, !dbg !464, !tbaa !354
  %storedBlockCRC727 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23, !dbg !465
  %192 = load i32* %storedBlockCRC727, align 4, !dbg !465, !tbaa !354
  %shl728 = shl i32 %192, 8, !dbg !465
  %conv729 = and i32 %shr687, 255, !dbg !465
  %or730 = or i32 %shl728, %conv729, !dbg !465
  store i32 %or730, i32* %storedBlockCRC727, align 4, !dbg !465, !tbaa !354
  br label %sw.bb732, !dbg !465

if.end692:                                        ; preds = %if.end692.lr.ph, %while.body678.backedge
  %193 = phi i32 [ %.pre5316, %if.end692.lr.ph ], [ %dec713, %while.body678.backedge ]
  %194 = phi i32 [ %190, %if.end692.lr.ph ], [ %203, %while.body678.backedge ]
  %195 = phi %struct.bz_stream* [ %.pre5231, %if.end692.lr.ph ], [ %199, %while.body678.backedge ]
  %cmp695 = icmp eq i32 %193, 0, !dbg !404
  br i1 %cmp695, label %save_state_and_return, label %if.end698, !dbg !404

if.end698:                                        ; preds = %if.end692
  %196 = load i32* %bsBuff684.pre, align 4, !dbg !404, !tbaa !354
  %shl700 = shl i32 %196, 8, !dbg !404
  %next_in702 = getelementptr inbounds %struct.bz_stream* %195, i64 0, i32 0, !dbg !404
  %197 = load i8** %next_in702, align 8, !dbg !404, !tbaa !350
  %198 = load i8* %197, align 1, !dbg !404, !tbaa !351
  %conv703 = zext i8 %198 to i32, !dbg !404
  %or704 = or i32 %conv703, %shl700, !dbg !404
  store i32 %or704, i32* %bsBuff684.pre, align 4, !dbg !404, !tbaa !354
  %add707 = add nsw i32 %194, 8, !dbg !404
  store i32 %add707, i32* %bsLive679, align 4, !dbg !404, !tbaa !354
  %incdec.ptr710 = getelementptr inbounds i8* %197, i64 1, !dbg !404
  store i8* %incdec.ptr710, i8** %next_in702, align 8, !dbg !404, !tbaa !350
  %199 = load %struct.bz_stream** %strm1, align 8, !dbg !404, !tbaa !350
  %avail_in712 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 1, !dbg !404
  %200 = load i32* %avail_in712, align 4, !dbg !404, !tbaa !354
  %dec713 = add i32 %200, -1, !dbg !404
  store i32 %dec713, i32* %avail_in712, align 4, !dbg !404, !tbaa !354
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 2, !dbg !404
  %201 = load i32* %total_in_lo32715, align 4, !dbg !404, !tbaa !354
  %inc716 = add i32 %201, 1, !dbg !404
  store i32 %inc716, i32* %total_in_lo32715, align 4, !dbg !404, !tbaa !354
  %cmp719 = icmp eq i32 %inc716, 0, !dbg !404
  br i1 %cmp719, label %if.then721, label %while.body678.backedge, !dbg !404

if.then721:                                       ; preds = %if.end698
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 3, !dbg !404
  %202 = load i32* %total_in_hi32723, align 4, !dbg !404, !tbaa !354
  %inc724 = add i32 %202, 1, !dbg !404
  store i32 %inc724, i32* %total_in_hi32723, align 4, !dbg !404, !tbaa !354
  br label %while.body678.backedge, !dbg !404

while.body678.backedge:                           ; preds = %if.then721, %if.end698
  %203 = load i32* %bsLive679, align 4, !dbg !404, !tbaa !354
  %cmp680 = icmp sgt i32 %203, 7, !dbg !404
  br i1 %cmp680, label %if.then682, label %if.end692, !dbg !404

sw.bb732:                                         ; preds = %if.end.sw.bb732_crit_edge, %if.then682
  %204 = phi i32 [ %.pre5317, %if.end.sw.bb732_crit_edge ], [ %sub686, %if.then682 ]
  store i32 22, i32* %state, align 4, !dbg !466, !tbaa !354
  %bsLive735 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !405
  %cmp7365002 = icmp sgt i32 %204, 7, !dbg !405
  %bsBuff740.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !467
  br i1 %cmp7365002, label %if.then738, label %if.end748.lr.ph, !dbg !405

if.end748.lr.ph:                                  ; preds = %sw.bb732
  %.pre5232 = load %struct.bz_stream** %strm1, align 8, !dbg !405, !tbaa !350
  %avail_in750.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5232, i64 0, i32 1
  %.pre5318 = load i32* %avail_in750.phi.trans.insert, align 4, !dbg !405, !tbaa !354
  br label %if.end748, !dbg !405

if.then738:                                       ; preds = %sw.bb732, %while.body734.backedge
  %.lcssa5000 = phi i32 [ %217, %while.body734.backedge ], [ %204, %sw.bb732 ]
  %205 = load i32* %bsBuff740.pre, align 4, !dbg !467, !tbaa !354
  %sub742 = add nsw i32 %.lcssa5000, -8, !dbg !467
  %shr743 = lshr i32 %205, %sub742, !dbg !467
  store i32 %sub742, i32* %bsLive735, align 4, !dbg !467, !tbaa !354
  %storedBlockCRC783 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23, !dbg !468
  %206 = load i32* %storedBlockCRC783, align 4, !dbg !468, !tbaa !354
  %shl784 = shl i32 %206, 8, !dbg !468
  %conv785 = and i32 %shr743, 255, !dbg !468
  %or786 = or i32 %shl784, %conv785, !dbg !468
  store i32 %or786, i32* %storedBlockCRC783, align 4, !dbg !468, !tbaa !354
  br label %sw.bb788, !dbg !468

if.end748:                                        ; preds = %if.end748.lr.ph, %while.body734.backedge
  %207 = phi i32 [ %.pre5318, %if.end748.lr.ph ], [ %dec769, %while.body734.backedge ]
  %208 = phi i32 [ %204, %if.end748.lr.ph ], [ %217, %while.body734.backedge ]
  %209 = phi %struct.bz_stream* [ %.pre5232, %if.end748.lr.ph ], [ %213, %while.body734.backedge ]
  %cmp751 = icmp eq i32 %207, 0, !dbg !405
  br i1 %cmp751, label %save_state_and_return, label %if.end754, !dbg !405

if.end754:                                        ; preds = %if.end748
  %210 = load i32* %bsBuff740.pre, align 4, !dbg !405, !tbaa !354
  %shl756 = shl i32 %210, 8, !dbg !405
  %next_in758 = getelementptr inbounds %struct.bz_stream* %209, i64 0, i32 0, !dbg !405
  %211 = load i8** %next_in758, align 8, !dbg !405, !tbaa !350
  %212 = load i8* %211, align 1, !dbg !405, !tbaa !351
  %conv759 = zext i8 %212 to i32, !dbg !405
  %or760 = or i32 %conv759, %shl756, !dbg !405
  store i32 %or760, i32* %bsBuff740.pre, align 4, !dbg !405, !tbaa !354
  %add763 = add nsw i32 %208, 8, !dbg !405
  store i32 %add763, i32* %bsLive735, align 4, !dbg !405, !tbaa !354
  %incdec.ptr766 = getelementptr inbounds i8* %211, i64 1, !dbg !405
  store i8* %incdec.ptr766, i8** %next_in758, align 8, !dbg !405, !tbaa !350
  %213 = load %struct.bz_stream** %strm1, align 8, !dbg !405, !tbaa !350
  %avail_in768 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 1, !dbg !405
  %214 = load i32* %avail_in768, align 4, !dbg !405, !tbaa !354
  %dec769 = add i32 %214, -1, !dbg !405
  store i32 %dec769, i32* %avail_in768, align 4, !dbg !405, !tbaa !354
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 2, !dbg !405
  %215 = load i32* %total_in_lo32771, align 4, !dbg !405, !tbaa !354
  %inc772 = add i32 %215, 1, !dbg !405
  store i32 %inc772, i32* %total_in_lo32771, align 4, !dbg !405, !tbaa !354
  %cmp775 = icmp eq i32 %inc772, 0, !dbg !405
  br i1 %cmp775, label %if.then777, label %while.body734.backedge, !dbg !405

if.then777:                                       ; preds = %if.end754
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 3, !dbg !405
  %216 = load i32* %total_in_hi32779, align 4, !dbg !405, !tbaa !354
  %inc780 = add i32 %216, 1, !dbg !405
  store i32 %inc780, i32* %total_in_hi32779, align 4, !dbg !405, !tbaa !354
  br label %while.body734.backedge, !dbg !405

while.body734.backedge:                           ; preds = %if.then777, %if.end754
  %217 = load i32* %bsLive735, align 4, !dbg !405, !tbaa !354
  %cmp736 = icmp sgt i32 %217, 7, !dbg !405
  br i1 %cmp736, label %if.then738, label %if.end748, !dbg !405

sw.bb788:                                         ; preds = %if.end.sw.bb788_crit_edge, %if.then738
  %218 = phi i32 [ %.pre5319, %if.end.sw.bb788_crit_edge ], [ %sub742, %if.then738 ]
  store i32 23, i32* %state, align 4, !dbg !469, !tbaa !354
  %bsLive791 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !406
  %cmp7924995 = icmp sgt i32 %218, 7, !dbg !406
  %bsBuff796.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !470
  br i1 %cmp7924995, label %if.then794, label %if.end804.lr.ph, !dbg !406

if.end804.lr.ph:                                  ; preds = %sw.bb788
  %.pre5233 = load %struct.bz_stream** %strm1, align 8, !dbg !406, !tbaa !350
  %avail_in806.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5233, i64 0, i32 1
  %.pre5320 = load i32* %avail_in806.phi.trans.insert, align 4, !dbg !406, !tbaa !354
  br label %if.end804, !dbg !406

if.then794:                                       ; preds = %sw.bb788, %while.body790.backedge
  %.lcssa4993 = phi i32 [ %231, %while.body790.backedge ], [ %218, %sw.bb788 ]
  %219 = load i32* %bsBuff796.pre, align 4, !dbg !470, !tbaa !354
  %sub798 = add nsw i32 %.lcssa4993, -8, !dbg !470
  %shr799 = lshr i32 %219, %sub798, !dbg !470
  store i32 %sub798, i32* %bsLive791, align 4, !dbg !470, !tbaa !354
  %storedBlockCRC839 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23, !dbg !471
  %220 = load i32* %storedBlockCRC839, align 4, !dbg !471, !tbaa !354
  %shl840 = shl i32 %220, 8, !dbg !471
  %conv841 = and i32 %shr799, 255, !dbg !471
  %or842 = or i32 %shl840, %conv841, !dbg !471
  store i32 %or842, i32* %storedBlockCRC839, align 4, !dbg !471, !tbaa !354
  br label %sw.bb844, !dbg !471

if.end804:                                        ; preds = %if.end804.lr.ph, %while.body790.backedge
  %221 = phi i32 [ %.pre5320, %if.end804.lr.ph ], [ %dec825, %while.body790.backedge ]
  %222 = phi i32 [ %218, %if.end804.lr.ph ], [ %231, %while.body790.backedge ]
  %223 = phi %struct.bz_stream* [ %.pre5233, %if.end804.lr.ph ], [ %227, %while.body790.backedge ]
  %cmp807 = icmp eq i32 %221, 0, !dbg !406
  br i1 %cmp807, label %save_state_and_return, label %if.end810, !dbg !406

if.end810:                                        ; preds = %if.end804
  %224 = load i32* %bsBuff796.pre, align 4, !dbg !406, !tbaa !354
  %shl812 = shl i32 %224, 8, !dbg !406
  %next_in814 = getelementptr inbounds %struct.bz_stream* %223, i64 0, i32 0, !dbg !406
  %225 = load i8** %next_in814, align 8, !dbg !406, !tbaa !350
  %226 = load i8* %225, align 1, !dbg !406, !tbaa !351
  %conv815 = zext i8 %226 to i32, !dbg !406
  %or816 = or i32 %conv815, %shl812, !dbg !406
  store i32 %or816, i32* %bsBuff796.pre, align 4, !dbg !406, !tbaa !354
  %add819 = add nsw i32 %222, 8, !dbg !406
  store i32 %add819, i32* %bsLive791, align 4, !dbg !406, !tbaa !354
  %incdec.ptr822 = getelementptr inbounds i8* %225, i64 1, !dbg !406
  store i8* %incdec.ptr822, i8** %next_in814, align 8, !dbg !406, !tbaa !350
  %227 = load %struct.bz_stream** %strm1, align 8, !dbg !406, !tbaa !350
  %avail_in824 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 1, !dbg !406
  %228 = load i32* %avail_in824, align 4, !dbg !406, !tbaa !354
  %dec825 = add i32 %228, -1, !dbg !406
  store i32 %dec825, i32* %avail_in824, align 4, !dbg !406, !tbaa !354
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 2, !dbg !406
  %229 = load i32* %total_in_lo32827, align 4, !dbg !406, !tbaa !354
  %inc828 = add i32 %229, 1, !dbg !406
  store i32 %inc828, i32* %total_in_lo32827, align 4, !dbg !406, !tbaa !354
  %cmp831 = icmp eq i32 %inc828, 0, !dbg !406
  br i1 %cmp831, label %if.then833, label %while.body790.backedge, !dbg !406

if.then833:                                       ; preds = %if.end810
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 3, !dbg !406
  %230 = load i32* %total_in_hi32835, align 4, !dbg !406, !tbaa !354
  %inc836 = add i32 %230, 1, !dbg !406
  store i32 %inc836, i32* %total_in_hi32835, align 4, !dbg !406, !tbaa !354
  br label %while.body790.backedge, !dbg !406

while.body790.backedge:                           ; preds = %if.then833, %if.end810
  %231 = load i32* %bsLive791, align 4, !dbg !406, !tbaa !354
  %cmp792 = icmp sgt i32 %231, 7, !dbg !406
  br i1 %cmp792, label %if.then794, label %if.end804, !dbg !406

sw.bb844:                                         ; preds = %if.end.sw.bb844_crit_edge, %if.then794
  %232 = phi i32 [ %.pre5321, %if.end.sw.bb844_crit_edge ], [ %sub798, %if.then794 ]
  store i32 24, i32* %state, align 4, !dbg !472, !tbaa !354
  %bsLive847 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !407
  %cmp8484988 = icmp sgt i32 %232, 0, !dbg !407
  %bsBuff852.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !473
  br i1 %cmp8484988, label %if.then850, label %if.end860.lr.ph, !dbg !407

if.end860.lr.ph:                                  ; preds = %sw.bb844
  %.pre5234 = load %struct.bz_stream** %strm1, align 8, !dbg !407, !tbaa !350
  %avail_in862.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5234, i64 0, i32 1
  %.pre5322 = load i32* %avail_in862.phi.trans.insert, align 4, !dbg !407, !tbaa !354
  br label %if.end860, !dbg !407

if.then850:                                       ; preds = %sw.bb844, %while.body846.backedge
  %.lcssa4986 = phi i32 [ %244, %while.body846.backedge ], [ %232, %sw.bb844 ]
  %233 = load i32* %bsBuff852.pre, align 4, !dbg !473, !tbaa !354
  %sub854 = add nsw i32 %.lcssa4986, -1, !dbg !473
  %shr855 = lshr i32 %233, %sub854, !dbg !473
  store i32 %sub854, i32* %bsLive847, align 4, !dbg !473, !tbaa !354
  %shr855.tr = trunc i32 %shr855 to i8, !dbg !473
  %conv859 = and i8 %shr855.tr, 1, !dbg !473
  %blockRandomised = getelementptr inbounds %struct.DState* %s, i64 0, i32 4, !dbg !473
  store i8 %conv859, i8* %blockRandomised, align 1, !dbg !473, !tbaa !351
  %origPtr = getelementptr inbounds %struct.DState* %s, i64 0, i32 13, !dbg !474
  store i32 0, i32* %origPtr, align 4, !dbg !474, !tbaa !354
  br label %sw.bb895, !dbg !474

if.end860:                                        ; preds = %if.end860.lr.ph, %while.body846.backedge
  %234 = phi i32 [ %.pre5322, %if.end860.lr.ph ], [ %dec881, %while.body846.backedge ]
  %235 = phi i32 [ %232, %if.end860.lr.ph ], [ %244, %while.body846.backedge ]
  %236 = phi %struct.bz_stream* [ %.pre5234, %if.end860.lr.ph ], [ %240, %while.body846.backedge ]
  %cmp863 = icmp eq i32 %234, 0, !dbg !407
  br i1 %cmp863, label %save_state_and_return, label %if.end866, !dbg !407

if.end866:                                        ; preds = %if.end860
  %237 = load i32* %bsBuff852.pre, align 4, !dbg !407, !tbaa !354
  %shl868 = shl i32 %237, 8, !dbg !407
  %next_in870 = getelementptr inbounds %struct.bz_stream* %236, i64 0, i32 0, !dbg !407
  %238 = load i8** %next_in870, align 8, !dbg !407, !tbaa !350
  %239 = load i8* %238, align 1, !dbg !407, !tbaa !351
  %conv871 = zext i8 %239 to i32, !dbg !407
  %or872 = or i32 %conv871, %shl868, !dbg !407
  store i32 %or872, i32* %bsBuff852.pre, align 4, !dbg !407, !tbaa !354
  %add875 = add nsw i32 %235, 8, !dbg !407
  store i32 %add875, i32* %bsLive847, align 4, !dbg !407, !tbaa !354
  %incdec.ptr878 = getelementptr inbounds i8* %238, i64 1, !dbg !407
  store i8* %incdec.ptr878, i8** %next_in870, align 8, !dbg !407, !tbaa !350
  %240 = load %struct.bz_stream** %strm1, align 8, !dbg !407, !tbaa !350
  %avail_in880 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 1, !dbg !407
  %241 = load i32* %avail_in880, align 4, !dbg !407, !tbaa !354
  %dec881 = add i32 %241, -1, !dbg !407
  store i32 %dec881, i32* %avail_in880, align 4, !dbg !407, !tbaa !354
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 2, !dbg !407
  %242 = load i32* %total_in_lo32883, align 4, !dbg !407, !tbaa !354
  %inc884 = add i32 %242, 1, !dbg !407
  store i32 %inc884, i32* %total_in_lo32883, align 4, !dbg !407, !tbaa !354
  %cmp887 = icmp eq i32 %inc884, 0, !dbg !407
  br i1 %cmp887, label %if.then889, label %while.body846.backedge, !dbg !407

if.then889:                                       ; preds = %if.end866
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 3, !dbg !407
  %243 = load i32* %total_in_hi32891, align 4, !dbg !407, !tbaa !354
  %inc892 = add i32 %243, 1, !dbg !407
  store i32 %inc892, i32* %total_in_hi32891, align 4, !dbg !407, !tbaa !354
  br label %while.body846.backedge, !dbg !407

while.body846.backedge:                           ; preds = %if.then889, %if.end866
  %244 = load i32* %bsLive847, align 4, !dbg !407, !tbaa !354
  %cmp848 = icmp sgt i32 %244, 0, !dbg !407
  br i1 %cmp848, label %if.then850, label %if.end860, !dbg !407

sw.bb895:                                         ; preds = %if.end.sw.bb895_crit_edge, %if.then850
  %245 = phi i32 [ %.pre5323, %if.end.sw.bb895_crit_edge ], [ %sub854, %if.then850 ]
  store i32 25, i32* %state, align 4, !dbg !475, !tbaa !354
  %bsLive898 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !408
  %cmp8994981 = icmp sgt i32 %245, 7, !dbg !408
  %bsBuff903.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !476
  br i1 %cmp8994981, label %if.then901, label %if.end911.lr.ph, !dbg !408

if.end911.lr.ph:                                  ; preds = %sw.bb895
  %.pre5235 = load %struct.bz_stream** %strm1, align 8, !dbg !408, !tbaa !350
  %avail_in913.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5235, i64 0, i32 1
  %.pre5324 = load i32* %avail_in913.phi.trans.insert, align 4, !dbg !408, !tbaa !354
  br label %if.end911, !dbg !408

if.then901:                                       ; preds = %sw.bb895, %while.body897.backedge
  %.lcssa4979 = phi i32 [ %258, %while.body897.backedge ], [ %245, %sw.bb895 ]
  %246 = load i32* %bsBuff903.pre, align 4, !dbg !476, !tbaa !354
  %sub905 = add nsw i32 %.lcssa4979, -8, !dbg !476
  %shr906 = lshr i32 %246, %sub905, !dbg !476
  store i32 %sub905, i32* %bsLive898, align 4, !dbg !476, !tbaa !354
  %origPtr946 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13, !dbg !477
  %247 = load i32* %origPtr946, align 4, !dbg !477, !tbaa !354
  %shl947 = shl i32 %247, 8, !dbg !477
  %conv948 = and i32 %shr906, 255, !dbg !477
  %or949 = or i32 %shl947, %conv948, !dbg !477
  store i32 %or949, i32* %origPtr946, align 4, !dbg !477, !tbaa !354
  br label %sw.bb951, !dbg !477

if.end911:                                        ; preds = %if.end911.lr.ph, %while.body897.backedge
  %248 = phi i32 [ %.pre5324, %if.end911.lr.ph ], [ %dec932, %while.body897.backedge ]
  %249 = phi i32 [ %245, %if.end911.lr.ph ], [ %258, %while.body897.backedge ]
  %250 = phi %struct.bz_stream* [ %.pre5235, %if.end911.lr.ph ], [ %254, %while.body897.backedge ]
  %cmp914 = icmp eq i32 %248, 0, !dbg !408
  br i1 %cmp914, label %save_state_and_return, label %if.end917, !dbg !408

if.end917:                                        ; preds = %if.end911
  %251 = load i32* %bsBuff903.pre, align 4, !dbg !408, !tbaa !354
  %shl919 = shl i32 %251, 8, !dbg !408
  %next_in921 = getelementptr inbounds %struct.bz_stream* %250, i64 0, i32 0, !dbg !408
  %252 = load i8** %next_in921, align 8, !dbg !408, !tbaa !350
  %253 = load i8* %252, align 1, !dbg !408, !tbaa !351
  %conv922 = zext i8 %253 to i32, !dbg !408
  %or923 = or i32 %conv922, %shl919, !dbg !408
  store i32 %or923, i32* %bsBuff903.pre, align 4, !dbg !408, !tbaa !354
  %add926 = add nsw i32 %249, 8, !dbg !408
  store i32 %add926, i32* %bsLive898, align 4, !dbg !408, !tbaa !354
  %incdec.ptr929 = getelementptr inbounds i8* %252, i64 1, !dbg !408
  store i8* %incdec.ptr929, i8** %next_in921, align 8, !dbg !408, !tbaa !350
  %254 = load %struct.bz_stream** %strm1, align 8, !dbg !408, !tbaa !350
  %avail_in931 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 1, !dbg !408
  %255 = load i32* %avail_in931, align 4, !dbg !408, !tbaa !354
  %dec932 = add i32 %255, -1, !dbg !408
  store i32 %dec932, i32* %avail_in931, align 4, !dbg !408, !tbaa !354
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 2, !dbg !408
  %256 = load i32* %total_in_lo32934, align 4, !dbg !408, !tbaa !354
  %inc935 = add i32 %256, 1, !dbg !408
  store i32 %inc935, i32* %total_in_lo32934, align 4, !dbg !408, !tbaa !354
  %cmp938 = icmp eq i32 %inc935, 0, !dbg !408
  br i1 %cmp938, label %if.then940, label %while.body897.backedge, !dbg !408

if.then940:                                       ; preds = %if.end917
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 3, !dbg !408
  %257 = load i32* %total_in_hi32942, align 4, !dbg !408, !tbaa !354
  %inc943 = add i32 %257, 1, !dbg !408
  store i32 %inc943, i32* %total_in_hi32942, align 4, !dbg !408, !tbaa !354
  br label %while.body897.backedge, !dbg !408

while.body897.backedge:                           ; preds = %if.then940, %if.end917
  %258 = load i32* %bsLive898, align 4, !dbg !408, !tbaa !354
  %cmp899 = icmp sgt i32 %258, 7, !dbg !408
  br i1 %cmp899, label %if.then901, label %if.end911, !dbg !408

sw.bb951:                                         ; preds = %if.end.sw.bb951_crit_edge, %if.then901
  %259 = phi i32 [ %.pre5325, %if.end.sw.bb951_crit_edge ], [ %sub905, %if.then901 ]
  store i32 26, i32* %state, align 4, !dbg !478, !tbaa !354
  %bsLive954 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !409
  %cmp9554974 = icmp sgt i32 %259, 7, !dbg !409
  %bsBuff959.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !479
  br i1 %cmp9554974, label %if.then957, label %if.end967.lr.ph, !dbg !409

if.end967.lr.ph:                                  ; preds = %sw.bb951
  %.pre5236 = load %struct.bz_stream** %strm1, align 8, !dbg !409, !tbaa !350
  %avail_in969.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5236, i64 0, i32 1
  %.pre5326 = load i32* %avail_in969.phi.trans.insert, align 4, !dbg !409, !tbaa !354
  br label %if.end967, !dbg !409

if.then957:                                       ; preds = %sw.bb951, %while.body953.backedge
  %.lcssa4972 = phi i32 [ %272, %while.body953.backedge ], [ %259, %sw.bb951 ]
  %260 = load i32* %bsBuff959.pre, align 4, !dbg !479, !tbaa !354
  %sub961 = add nsw i32 %.lcssa4972, -8, !dbg !479
  %shr962 = lshr i32 %260, %sub961, !dbg !479
  store i32 %sub961, i32* %bsLive954, align 4, !dbg !479, !tbaa !354
  %origPtr1002 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13, !dbg !480
  %261 = load i32* %origPtr1002, align 4, !dbg !480, !tbaa !354
  %shl1003 = shl i32 %261, 8, !dbg !480
  %conv1004 = and i32 %shr962, 255, !dbg !480
  %or1005 = or i32 %shl1003, %conv1004, !dbg !480
  store i32 %or1005, i32* %origPtr1002, align 4, !dbg !480, !tbaa !354
  br label %sw.bb1007, !dbg !480

if.end967:                                        ; preds = %if.end967.lr.ph, %while.body953.backedge
  %262 = phi i32 [ %.pre5326, %if.end967.lr.ph ], [ %dec988, %while.body953.backedge ]
  %263 = phi i32 [ %259, %if.end967.lr.ph ], [ %272, %while.body953.backedge ]
  %264 = phi %struct.bz_stream* [ %.pre5236, %if.end967.lr.ph ], [ %268, %while.body953.backedge ]
  %cmp970 = icmp eq i32 %262, 0, !dbg !409
  br i1 %cmp970, label %save_state_and_return, label %if.end973, !dbg !409

if.end973:                                        ; preds = %if.end967
  %265 = load i32* %bsBuff959.pre, align 4, !dbg !409, !tbaa !354
  %shl975 = shl i32 %265, 8, !dbg !409
  %next_in977 = getelementptr inbounds %struct.bz_stream* %264, i64 0, i32 0, !dbg !409
  %266 = load i8** %next_in977, align 8, !dbg !409, !tbaa !350
  %267 = load i8* %266, align 1, !dbg !409, !tbaa !351
  %conv978 = zext i8 %267 to i32, !dbg !409
  %or979 = or i32 %conv978, %shl975, !dbg !409
  store i32 %or979, i32* %bsBuff959.pre, align 4, !dbg !409, !tbaa !354
  %add982 = add nsw i32 %263, 8, !dbg !409
  store i32 %add982, i32* %bsLive954, align 4, !dbg !409, !tbaa !354
  %incdec.ptr985 = getelementptr inbounds i8* %266, i64 1, !dbg !409
  store i8* %incdec.ptr985, i8** %next_in977, align 8, !dbg !409, !tbaa !350
  %268 = load %struct.bz_stream** %strm1, align 8, !dbg !409, !tbaa !350
  %avail_in987 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 1, !dbg !409
  %269 = load i32* %avail_in987, align 4, !dbg !409, !tbaa !354
  %dec988 = add i32 %269, -1, !dbg !409
  store i32 %dec988, i32* %avail_in987, align 4, !dbg !409, !tbaa !354
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 2, !dbg !409
  %270 = load i32* %total_in_lo32990, align 4, !dbg !409, !tbaa !354
  %inc991 = add i32 %270, 1, !dbg !409
  store i32 %inc991, i32* %total_in_lo32990, align 4, !dbg !409, !tbaa !354
  %cmp994 = icmp eq i32 %inc991, 0, !dbg !409
  br i1 %cmp994, label %if.then996, label %while.body953.backedge, !dbg !409

if.then996:                                       ; preds = %if.end973
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 3, !dbg !409
  %271 = load i32* %total_in_hi32998, align 4, !dbg !409, !tbaa !354
  %inc999 = add i32 %271, 1, !dbg !409
  store i32 %inc999, i32* %total_in_hi32998, align 4, !dbg !409, !tbaa !354
  br label %while.body953.backedge, !dbg !409

while.body953.backedge:                           ; preds = %if.then996, %if.end973
  %272 = load i32* %bsLive954, align 4, !dbg !409, !tbaa !354
  %cmp955 = icmp sgt i32 %272, 7, !dbg !409
  br i1 %cmp955, label %if.then957, label %if.end967, !dbg !409

sw.bb1007:                                        ; preds = %if.end.sw.bb1007_crit_edge, %if.then957
  %273 = phi i32 [ %.pre5327, %if.end.sw.bb1007_crit_edge ], [ %sub961, %if.then957 ]
  store i32 27, i32* %state, align 4, !dbg !481, !tbaa !354
  %bsLive1010 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !410
  %cmp10114967 = icmp sgt i32 %273, 7, !dbg !410
  %bsBuff1015.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !482
  br i1 %cmp10114967, label %if.then1013, label %if.end1023.lr.ph, !dbg !410

if.end1023.lr.ph:                                 ; preds = %sw.bb1007
  %.pre5237 = load %struct.bz_stream** %strm1, align 8, !dbg !410, !tbaa !350
  %avail_in1025.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5237, i64 0, i32 1
  %.pre5328 = load i32* %avail_in1025.phi.trans.insert, align 4, !dbg !410, !tbaa !354
  br label %if.end1023, !dbg !410

if.then1013:                                      ; preds = %sw.bb1007, %while.body1009.backedge
  %.lcssa4965 = phi i32 [ %286, %while.body1009.backedge ], [ %273, %sw.bb1007 ]
  %274 = load i32* %bsBuff1015.pre, align 4, !dbg !482, !tbaa !354
  %sub1017 = add nsw i32 %.lcssa4965, -8, !dbg !482
  %shr1018 = lshr i32 %274, %sub1017, !dbg !482
  store i32 %sub1017, i32* %bsLive1010, align 4, !dbg !482, !tbaa !354
  %origPtr1058 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13, !dbg !483
  %275 = load i32* %origPtr1058, align 4, !dbg !483, !tbaa !354
  %shl1059 = shl i32 %275, 8, !dbg !483
  %conv1060 = and i32 %shr1018, 255, !dbg !483
  %or1061 = or i32 %shl1059, %conv1060, !dbg !483
  store i32 %or1061, i32* %origPtr1058, align 4, !dbg !483, !tbaa !354
  %cmp1064 = icmp slt i32 %or1061, 0, !dbg !484
  br i1 %cmp1064, label %save_state_and_return, label %if.end1067, !dbg !484

if.end1023:                                       ; preds = %if.end1023.lr.ph, %while.body1009.backedge
  %276 = phi i32 [ %.pre5328, %if.end1023.lr.ph ], [ %dec1044, %while.body1009.backedge ]
  %277 = phi i32 [ %273, %if.end1023.lr.ph ], [ %286, %while.body1009.backedge ]
  %278 = phi %struct.bz_stream* [ %.pre5237, %if.end1023.lr.ph ], [ %282, %while.body1009.backedge ]
  %cmp1026 = icmp eq i32 %276, 0, !dbg !410
  br i1 %cmp1026, label %save_state_and_return, label %if.end1029, !dbg !410

if.end1029:                                       ; preds = %if.end1023
  %279 = load i32* %bsBuff1015.pre, align 4, !dbg !410, !tbaa !354
  %shl1031 = shl i32 %279, 8, !dbg !410
  %next_in1033 = getelementptr inbounds %struct.bz_stream* %278, i64 0, i32 0, !dbg !410
  %280 = load i8** %next_in1033, align 8, !dbg !410, !tbaa !350
  %281 = load i8* %280, align 1, !dbg !410, !tbaa !351
  %conv1034 = zext i8 %281 to i32, !dbg !410
  %or1035 = or i32 %conv1034, %shl1031, !dbg !410
  store i32 %or1035, i32* %bsBuff1015.pre, align 4, !dbg !410, !tbaa !354
  %add1038 = add nsw i32 %277, 8, !dbg !410
  store i32 %add1038, i32* %bsLive1010, align 4, !dbg !410, !tbaa !354
  %incdec.ptr1041 = getelementptr inbounds i8* %280, i64 1, !dbg !410
  store i8* %incdec.ptr1041, i8** %next_in1033, align 8, !dbg !410, !tbaa !350
  %282 = load %struct.bz_stream** %strm1, align 8, !dbg !410, !tbaa !350
  %avail_in1043 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 1, !dbg !410
  %283 = load i32* %avail_in1043, align 4, !dbg !410, !tbaa !354
  %dec1044 = add i32 %283, -1, !dbg !410
  store i32 %dec1044, i32* %avail_in1043, align 4, !dbg !410, !tbaa !354
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 2, !dbg !410
  %284 = load i32* %total_in_lo321046, align 4, !dbg !410, !tbaa !354
  %inc1047 = add i32 %284, 1, !dbg !410
  store i32 %inc1047, i32* %total_in_lo321046, align 4, !dbg !410, !tbaa !354
  %cmp1050 = icmp eq i32 %inc1047, 0, !dbg !410
  br i1 %cmp1050, label %if.then1052, label %while.body1009.backedge, !dbg !410

if.then1052:                                      ; preds = %if.end1029
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 3, !dbg !410
  %285 = load i32* %total_in_hi321054, align 4, !dbg !410, !tbaa !354
  %inc1055 = add i32 %285, 1, !dbg !410
  store i32 %inc1055, i32* %total_in_hi321054, align 4, !dbg !410, !tbaa !354
  br label %while.body1009.backedge, !dbg !410

while.body1009.backedge:                          ; preds = %if.then1052, %if.end1029
  %286 = load i32* %bsLive1010, align 4, !dbg !410, !tbaa !354
  %cmp1011 = icmp sgt i32 %286, 7, !dbg !410
  br i1 %cmp1011, label %if.then1013, label %if.end1023, !dbg !410

if.end1067:                                       ; preds = %if.then1013
  %blockSize100k1069 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9, !dbg !485
  %287 = load i32* %blockSize100k1069, align 4, !dbg !485, !tbaa !354
  %mul1070 = mul nsw i32 %287, 100000, !dbg !485
  %add10714728 = or i32 %mul1070, 10, !dbg !485
  %cmp1072 = icmp sgt i32 %or1061, %add10714728, !dbg !485
  br i1 %cmp1072, label %save_state_and_return, label %for.cond, !dbg !485

for.cond:                                         ; preds = %if.end1067, %if.then1084
  %i.0 = phi i32 [ %inc1138, %if.then1084 ], [ 0, %if.end1067 ]
  %cmp1076 = icmp slt i32 %i.0, 16, !dbg !486
  br i1 %cmp1076, label %sw.bb1078, label %for.cond1139.preheader, !dbg !486

for.cond1139.preheader:                           ; preds = %for.cond
  %scevgep5197 = getelementptr %struct.DState* %s, i64 0, i32 28, i64 0
  call void @llvm.memset.p0i8.i64(i8* %scevgep5197, i8 0, i64 256, i32 1, i1 false), !dbg !487
  br label %for.cond1148

sw.bb1078:                                        ; preds = %for.cond, %if.end
  %i.1 = phi i32 [ %26, %if.end ], [ %i.0, %for.cond ]
  store i32 28, i32* %state, align 4, !dbg !489, !tbaa !354
  %bsLive1081 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !490
  %288 = load i32* %bsLive1081, align 4, !dbg !490, !tbaa !354
  %cmp10824800 = icmp sgt i32 %288, 0, !dbg !490
  %bsBuff1086.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !491
  br i1 %cmp10824800, label %if.then1084, label %if.end1094.lr.ph, !dbg !490

if.end1094.lr.ph:                                 ; preds = %sw.bb1078
  %.pre5238 = load %struct.bz_stream** %strm1, align 8, !dbg !490, !tbaa !350
  %avail_in1096.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5238, i64 0, i32 1
  %.pre5329 = load i32* %avail_in1096.phi.trans.insert, align 4, !dbg !490, !tbaa !354
  br label %if.end1094, !dbg !490

if.then1084:                                      ; preds = %sw.bb1078, %while.body1080.backedge
  %.lcssa4798 = phi i32 [ %301, %while.body1080.backedge ], [ %288, %sw.bb1078 ]
  %289 = load i32* %bsBuff1086.pre, align 4, !dbg !491, !tbaa !354
  %sub1088 = add nsw i32 %.lcssa4798, -1, !dbg !491
  store i32 %sub1088, i32* %bsLive1081, align 4, !dbg !491, !tbaa !354
  %290 = shl i32 1, %sub1088, !dbg !492
  %conv10934726 = and i32 %289, %290, !dbg !492
  %idxprom = sext i32 %i.1 to i64, !dbg !493
  %arrayidx = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %idxprom, !dbg !493
  %not.cmp1130 = icmp ne i32 %conv10934726, 0
  %. = zext i1 %not.cmp1130 to i8
  store i8 %., i8* %arrayidx, align 1, !dbg !493, !tbaa !351
  %inc1138 = add nsw i32 %i.1, 1, !dbg !486
  call void @llvm.dbg.value(metadata !{i32 %inc1138}, i64 0, metadata !148), !dbg !486
  br label %for.cond, !dbg !486

if.end1094:                                       ; preds = %if.end1094.lr.ph, %while.body1080.backedge
  %291 = phi i32 [ %.pre5329, %if.end1094.lr.ph ], [ %dec1115, %while.body1080.backedge ]
  %292 = phi i32 [ %288, %if.end1094.lr.ph ], [ %301, %while.body1080.backedge ]
  %293 = phi %struct.bz_stream* [ %.pre5238, %if.end1094.lr.ph ], [ %297, %while.body1080.backedge ]
  %cmp1097 = icmp eq i32 %291, 0, !dbg !490
  br i1 %cmp1097, label %save_state_and_return, label %if.end1100, !dbg !490

if.end1100:                                       ; preds = %if.end1094
  %294 = load i32* %bsBuff1086.pre, align 4, !dbg !490, !tbaa !354
  %shl1102 = shl i32 %294, 8, !dbg !490
  %next_in1104 = getelementptr inbounds %struct.bz_stream* %293, i64 0, i32 0, !dbg !490
  %295 = load i8** %next_in1104, align 8, !dbg !490, !tbaa !350
  %296 = load i8* %295, align 1, !dbg !490, !tbaa !351
  %conv1105 = zext i8 %296 to i32, !dbg !490
  %or1106 = or i32 %conv1105, %shl1102, !dbg !490
  store i32 %or1106, i32* %bsBuff1086.pre, align 4, !dbg !490, !tbaa !354
  %add1109 = add nsw i32 %292, 8, !dbg !490
  store i32 %add1109, i32* %bsLive1081, align 4, !dbg !490, !tbaa !354
  %incdec.ptr1112 = getelementptr inbounds i8* %295, i64 1, !dbg !490
  store i8* %incdec.ptr1112, i8** %next_in1104, align 8, !dbg !490, !tbaa !350
  %297 = load %struct.bz_stream** %strm1, align 8, !dbg !490, !tbaa !350
  %avail_in1114 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 1, !dbg !490
  %298 = load i32* %avail_in1114, align 4, !dbg !490, !tbaa !354
  %dec1115 = add i32 %298, -1, !dbg !490
  store i32 %dec1115, i32* %avail_in1114, align 4, !dbg !490, !tbaa !354
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 2, !dbg !490
  %299 = load i32* %total_in_lo321117, align 4, !dbg !490, !tbaa !354
  %inc1118 = add i32 %299, 1, !dbg !490
  store i32 %inc1118, i32* %total_in_lo321117, align 4, !dbg !490, !tbaa !354
  %cmp1121 = icmp eq i32 %inc1118, 0, !dbg !490
  br i1 %cmp1121, label %if.then1123, label %while.body1080.backedge, !dbg !490

if.then1123:                                      ; preds = %if.end1100
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 3, !dbg !490
  %300 = load i32* %total_in_hi321125, align 4, !dbg !490, !tbaa !354
  %inc1126 = add i32 %300, 1, !dbg !490
  store i32 %inc1126, i32* %total_in_hi321125, align 4, !dbg !490, !tbaa !354
  br label %while.body1080.backedge, !dbg !490

while.body1080.backedge:                          ; preds = %if.then1123, %if.end1100
  %301 = load i32* %bsLive1081, align 4, !dbg !490, !tbaa !354
  %cmp1082 = icmp sgt i32 %301, 0, !dbg !490
  br i1 %cmp1082, label %if.then1084, label %if.end1094, !dbg !490

for.cond1148:                                     ; preds = %for.cond1139.preheader, %for.inc1226
  %j.0 = phi i32 [ %j.3, %for.inc1226 ], [ %25, %for.cond1139.preheader ]
  %i.3 = phi i32 [ %inc1227, %for.inc1226 ], [ 0, %for.cond1139.preheader ]
  %cmp1149 = icmp slt i32 %i.3, 16, !dbg !494
  br i1 %cmp1149, label %for.body1151, label %for.end1228, !dbg !494

for.body1151:                                     ; preds = %for.cond1148
  %idxprom1152 = sext i32 %i.3 to i64, !dbg !495
  %arrayidx1154 = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %idxprom1152, !dbg !495
  %302 = load i8* %arrayidx1154, align 1, !dbg !495, !tbaa !351
  %tobool1155 = icmp eq i8 %302, 0, !dbg !495
  br i1 %tobool1155, label %for.inc1226, label %for.cond1157, !dbg !495

for.cond1157:                                     ; preds = %for.body1151, %for.inc1222
  %j.1 = phi i32 [ %inc1223, %for.inc1222 ], [ 0, %for.body1151 ]
  %i.4 = phi i32 [ %i.5, %for.inc1222 ], [ %i.3, %for.body1151 ]
  %cmp1158 = icmp slt i32 %j.1, 16, !dbg !496
  br i1 %cmp1158, label %sw.bb1161, label %for.inc1226, !dbg !496

sw.bb1161:                                        ; preds = %for.cond1157, %if.end
  %j.2 = phi i32 [ %25, %if.end ], [ %j.1, %for.cond1157 ]
  %i.5 = phi i32 [ %26, %if.end ], [ %i.4, %for.cond1157 ]
  store i32 29, i32* %state, align 4, !dbg !497, !tbaa !354
  %bsLive1164 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !498
  %303 = load i32* %bsLive1164, align 4, !dbg !498, !tbaa !354
  %cmp11654807 = icmp sgt i32 %303, 0, !dbg !498
  %bsBuff1169.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !499
  br i1 %cmp11654807, label %if.then1167, label %if.end1177.lr.ph, !dbg !498

if.end1177.lr.ph:                                 ; preds = %sw.bb1161
  %.pre5239 = load %struct.bz_stream** %strm1, align 8, !dbg !498, !tbaa !350
  %avail_in1179.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5239, i64 0, i32 1
  %.pre5330 = load i32* %avail_in1179.phi.trans.insert, align 4, !dbg !498, !tbaa !354
  br label %if.end1177, !dbg !498

if.then1167:                                      ; preds = %sw.bb1161, %while.body1163.backedge
  %.lcssa4805 = phi i32 [ %316, %while.body1163.backedge ], [ %303, %sw.bb1161 ]
  %304 = load i32* %bsBuff1169.pre, align 4, !dbg !499, !tbaa !354
  %sub1171 = add nsw i32 %.lcssa4805, -1, !dbg !499
  store i32 %sub1171, i32* %bsLive1164, align 4, !dbg !499, !tbaa !354
  %305 = shl i32 1, %sub1171, !dbg !500
  %conv11764725 = and i32 %304, %305, !dbg !500
  %cmp1213 = icmp eq i32 %conv11764725, 0, !dbg !500
  br i1 %cmp1213, label %for.inc1222, label %if.then1215, !dbg !500

if.end1177:                                       ; preds = %if.end1177.lr.ph, %while.body1163.backedge
  %306 = phi i32 [ %.pre5330, %if.end1177.lr.ph ], [ %dec1198, %while.body1163.backedge ]
  %307 = phi i32 [ %303, %if.end1177.lr.ph ], [ %316, %while.body1163.backedge ]
  %308 = phi %struct.bz_stream* [ %.pre5239, %if.end1177.lr.ph ], [ %312, %while.body1163.backedge ]
  %cmp1180 = icmp eq i32 %306, 0, !dbg !498
  br i1 %cmp1180, label %save_state_and_return, label %if.end1183, !dbg !498

if.end1183:                                       ; preds = %if.end1177
  %309 = load i32* %bsBuff1169.pre, align 4, !dbg !498, !tbaa !354
  %shl1185 = shl i32 %309, 8, !dbg !498
  %next_in1187 = getelementptr inbounds %struct.bz_stream* %308, i64 0, i32 0, !dbg !498
  %310 = load i8** %next_in1187, align 8, !dbg !498, !tbaa !350
  %311 = load i8* %310, align 1, !dbg !498, !tbaa !351
  %conv1188 = zext i8 %311 to i32, !dbg !498
  %or1189 = or i32 %conv1188, %shl1185, !dbg !498
  store i32 %or1189, i32* %bsBuff1169.pre, align 4, !dbg !498, !tbaa !354
  %add1192 = add nsw i32 %307, 8, !dbg !498
  store i32 %add1192, i32* %bsLive1164, align 4, !dbg !498, !tbaa !354
  %incdec.ptr1195 = getelementptr inbounds i8* %310, i64 1, !dbg !498
  store i8* %incdec.ptr1195, i8** %next_in1187, align 8, !dbg !498, !tbaa !350
  %312 = load %struct.bz_stream** %strm1, align 8, !dbg !498, !tbaa !350
  %avail_in1197 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 1, !dbg !498
  %313 = load i32* %avail_in1197, align 4, !dbg !498, !tbaa !354
  %dec1198 = add i32 %313, -1, !dbg !498
  store i32 %dec1198, i32* %avail_in1197, align 4, !dbg !498, !tbaa !354
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 2, !dbg !498
  %314 = load i32* %total_in_lo321200, align 4, !dbg !498, !tbaa !354
  %inc1201 = add i32 %314, 1, !dbg !498
  store i32 %inc1201, i32* %total_in_lo321200, align 4, !dbg !498, !tbaa !354
  %cmp1204 = icmp eq i32 %inc1201, 0, !dbg !498
  br i1 %cmp1204, label %if.then1206, label %while.body1163.backedge, !dbg !498

if.then1206:                                      ; preds = %if.end1183
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 3, !dbg !498
  %315 = load i32* %total_in_hi321208, align 4, !dbg !498, !tbaa !354
  %inc1209 = add i32 %315, 1, !dbg !498
  store i32 %inc1209, i32* %total_in_hi321208, align 4, !dbg !498, !tbaa !354
  br label %while.body1163.backedge, !dbg !498

while.body1163.backedge:                          ; preds = %if.then1206, %if.end1183
  %316 = load i32* %bsLive1164, align 4, !dbg !498, !tbaa !354
  %cmp1165 = icmp sgt i32 %316, 0, !dbg !498
  br i1 %cmp1165, label %if.then1167, label %if.end1177, !dbg !498

if.then1215:                                      ; preds = %if.then1167
  %mul1216 = shl i32 %i.5, 4, !dbg !500
  %add1217 = add nsw i32 %mul1216, %j.2, !dbg !500
  %idxprom1218 = sext i32 %add1217 to i64, !dbg !500
  %arrayidx1220 = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %idxprom1218, !dbg !500
  store i8 1, i8* %arrayidx1220, align 1, !dbg !500, !tbaa !351
  br label %for.inc1222, !dbg !500

for.inc1222:                                      ; preds = %if.then1167, %if.then1215
  %inc1223 = add nsw i32 %j.2, 1, !dbg !496
  call void @llvm.dbg.value(metadata !{i32 %inc1223}, i64 0, metadata !149), !dbg !496
  br label %for.cond1157, !dbg !496

for.inc1226:                                      ; preds = %for.body1151, %for.cond1157
  %j.3 = phi i32 [ %j.1, %for.cond1157 ], [ %j.0, %for.body1151 ]
  %i.6 = phi i32 [ %i.4, %for.cond1157 ], [ %i.3, %for.body1151 ]
  %inc1227 = add nsw i32 %i.6, 1, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %inc1227}, i64 0, metadata !148), !dbg !494
  br label %for.cond1148, !dbg !494

for.end1228:                                      ; preds = %for.cond1148
  tail call void @llvm.dbg.value(metadata !{%struct.DState* %s}, i64 0, metadata !501), !dbg !503
  %nInUse.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 27, !dbg !504
  store i32 0, i32* %nInUse.i, align 4, !dbg !504, !tbaa !354
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !505), !dbg !506
  br label %for.body.i, !dbg !506

for.body.i:                                       ; preds = %for.inc.i, %for.end1228
  %317 = phi i32 [ 0, %for.end1228 ], [ %320, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.end1228 ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %indvars.iv.i, !dbg !508
  %318 = load i8* %arrayidx.i, align 1, !dbg !508, !tbaa !351
  %tobool.i = icmp eq i8 %318, 0, !dbg !508
  br i1 %tobool.i, label %for.inc.i, label %if.then.i, !dbg !508

if.then.i:                                        ; preds = %for.body.i
  %conv.i = trunc i64 %indvars.iv.i to i8, !dbg !509
  %idxprom2.i = sext i32 %317 to i64, !dbg !509
  %arrayidx3.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2.i, !dbg !509
  store i8 %conv.i, i8* %arrayidx3.i, align 1, !dbg !509, !tbaa !351
  %319 = load i32* %nInUse.i, align 4, !dbg !511, !tbaa !354
  %inc.i = add nsw i32 %319, 1, !dbg !511
  store i32 %inc.i, i32* %nInUse.i, align 4, !dbg !511, !tbaa !354
  br label %for.inc.i, !dbg !512

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %320 = phi i32 [ %317, %for.body.i ], [ %inc.i, %if.then.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !506
  %lftr.wideiv5191 = trunc i64 %indvars.iv.next.i to i32, !dbg !506
  %exitcond5192 = icmp eq i32 %lftr.wideiv5191, 256, !dbg !506
  br i1 %exitcond5192, label %makeMaps_d.exit, label %for.body.i, !dbg !506

makeMaps_d.exit:                                  ; preds = %for.inc.i
  %cmp1229 = icmp eq i32 %320, 0, !dbg !513
  br i1 %cmp1229, label %save_state_and_return, label %if.end1232, !dbg !513

if.end1232:                                       ; preds = %makeMaps_d.exit
  %add1234 = add nsw i32 %320, 2, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %add1234}, i64 0, metadata !151), !dbg !514
  br label %sw.bb1235, !dbg !514

sw.bb1235:                                        ; preds = %if.end, %if.end1232
  %alphaSize.0 = phi i32 [ %add1234, %if.end1232 ], [ %23, %if.end ]
  %j.4 = phi i32 [ %j.0, %if.end1232 ], [ %25, %if.end ]
  %i.7 = phi i32 [ %i.3, %if.end1232 ], [ %26, %if.end ]
  store i32 30, i32* %state, align 4, !dbg !515, !tbaa !354
  %bsLive1238 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !516
  %321 = load i32* %bsLive1238, align 4, !dbg !516, !tbaa !354
  %cmp12394959 = icmp sgt i32 %321, 2, !dbg !516
  %bsBuff1243.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !517
  br i1 %cmp12394959, label %if.then1241, label %if.end1250.lr.ph, !dbg !516

if.end1250.lr.ph:                                 ; preds = %sw.bb1235
  %.pre5240 = load %struct.bz_stream** %strm1, align 8, !dbg !516, !tbaa !350
  %avail_in1252.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5240, i64 0, i32 1
  %.pre5331 = load i32* %avail_in1252.phi.trans.insert, align 4, !dbg !516, !tbaa !354
  br label %if.end1250, !dbg !516

if.then1241:                                      ; preds = %sw.bb1235, %while.body1237.backedge
  %.lcssa4957 = phi i32 [ %333, %while.body1237.backedge ], [ %321, %sw.bb1235 ]
  %322 = load i32* %bsBuff1243.pre, align 4, !dbg !517, !tbaa !354
  %sub1245 = add nsw i32 %.lcssa4957, -3, !dbg !517
  %shr1246 = lshr i32 %322, %sub1245, !dbg !517
  %and1247 = and i32 %shr1246, 7, !dbg !517
  call void @llvm.dbg.value(metadata !{i32 %and1247}, i64 0, metadata !238), !dbg !517
  store i32 %sub1245, i32* %bsLive1238, align 4, !dbg !517, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1247}, i64 0, metadata !152), !dbg !517
  switch i32 %and1247, label %sw.bb1292 [
    i32 7, label %save_state_and_return
    i32 1, label %save_state_and_return
    i32 0, label %save_state_and_return
  ], !dbg !518

if.end1250:                                       ; preds = %if.end1250.lr.ph, %while.body1237.backedge
  %323 = phi i32 [ %.pre5331, %if.end1250.lr.ph ], [ %dec1271, %while.body1237.backedge ]
  %324 = phi i32 [ %321, %if.end1250.lr.ph ], [ %333, %while.body1237.backedge ]
  %325 = phi %struct.bz_stream* [ %.pre5240, %if.end1250.lr.ph ], [ %329, %while.body1237.backedge ]
  %cmp1253 = icmp eq i32 %323, 0, !dbg !516
  br i1 %cmp1253, label %save_state_and_return, label %if.end1256, !dbg !516

if.end1256:                                       ; preds = %if.end1250
  %326 = load i32* %bsBuff1243.pre, align 4, !dbg !516, !tbaa !354
  %shl1258 = shl i32 %326, 8, !dbg !516
  %next_in1260 = getelementptr inbounds %struct.bz_stream* %325, i64 0, i32 0, !dbg !516
  %327 = load i8** %next_in1260, align 8, !dbg !516, !tbaa !350
  %328 = load i8* %327, align 1, !dbg !516, !tbaa !351
  %conv1261 = zext i8 %328 to i32, !dbg !516
  %or1262 = or i32 %conv1261, %shl1258, !dbg !516
  store i32 %or1262, i32* %bsBuff1243.pre, align 4, !dbg !516, !tbaa !354
  %add1265 = add nsw i32 %324, 8, !dbg !516
  store i32 %add1265, i32* %bsLive1238, align 4, !dbg !516, !tbaa !354
  %incdec.ptr1268 = getelementptr inbounds i8* %327, i64 1, !dbg !516
  store i8* %incdec.ptr1268, i8** %next_in1260, align 8, !dbg !516, !tbaa !350
  %329 = load %struct.bz_stream** %strm1, align 8, !dbg !516, !tbaa !350
  %avail_in1270 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 1, !dbg !516
  %330 = load i32* %avail_in1270, align 4, !dbg !516, !tbaa !354
  %dec1271 = add i32 %330, -1, !dbg !516
  store i32 %dec1271, i32* %avail_in1270, align 4, !dbg !516, !tbaa !354
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 2, !dbg !516
  %331 = load i32* %total_in_lo321273, align 4, !dbg !516, !tbaa !354
  %inc1274 = add i32 %331, 1, !dbg !516
  store i32 %inc1274, i32* %total_in_lo321273, align 4, !dbg !516, !tbaa !354
  %cmp1277 = icmp eq i32 %inc1274, 0, !dbg !516
  br i1 %cmp1277, label %if.then1279, label %while.body1237.backedge, !dbg !516

if.then1279:                                      ; preds = %if.end1256
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 3, !dbg !516
  %332 = load i32* %total_in_hi321281, align 4, !dbg !516, !tbaa !354
  %inc1282 = add i32 %332, 1, !dbg !516
  store i32 %inc1282, i32* %total_in_hi321281, align 4, !dbg !516, !tbaa !354
  br label %while.body1237.backedge, !dbg !516

while.body1237.backedge:                          ; preds = %if.then1279, %if.end1256
  %333 = load i32* %bsLive1238, align 4, !dbg !516, !tbaa !354
  %cmp1239 = icmp sgt i32 %333, 2, !dbg !516
  br i1 %cmp1239, label %if.then1241, label %if.end1250, !dbg !516

sw.bb1292:                                        ; preds = %if.end.sw.bb1292_crit_edge, %if.then1241
  %334 = phi i32 [ %.pre5332, %if.end.sw.bb1292_crit_edge ], [ %sub1245, %if.then1241 ]
  %nGroups.0 = phi i32 [ %22, %if.end.sw.bb1292_crit_edge ], [ %and1247, %if.then1241 ]
  %alphaSize.1 = phi i32 [ %23, %if.end.sw.bb1292_crit_edge ], [ %alphaSize.0, %if.then1241 ]
  %j.5 = phi i32 [ %25, %if.end.sw.bb1292_crit_edge ], [ %j.4, %if.then1241 ]
  %i.8 = phi i32 [ %26, %if.end.sw.bb1292_crit_edge ], [ %i.7, %if.then1241 ]
  store i32 31, i32* %state, align 4, !dbg !519, !tbaa !354
  %bsLive1295 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !411
  %cmp12964952 = icmp sgt i32 %334, 14, !dbg !411
  %bsBuff1300.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !520
  br i1 %cmp12964952, label %if.then1298, label %if.end1307.lr.ph, !dbg !411

if.end1307.lr.ph:                                 ; preds = %sw.bb1292
  %.pre5241 = load %struct.bz_stream** %strm1, align 8, !dbg !411, !tbaa !350
  %avail_in1309.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5241, i64 0, i32 1
  %.pre5333 = load i32* %avail_in1309.phi.trans.insert, align 4, !dbg !411, !tbaa !354
  br label %if.end1307, !dbg !411

if.then1298:                                      ; preds = %sw.bb1292, %while.body1294.backedge
  %.lcssa4950 = phi i32 [ %346, %while.body1294.backedge ], [ %334, %sw.bb1292 ]
  %335 = load i32* %bsBuff1300.pre, align 4, !dbg !520, !tbaa !354
  %sub1302 = add nsw i32 %.lcssa4950, -15, !dbg !520
  %shr1303 = lshr i32 %335, %sub1302, !dbg !520
  %and1304 = and i32 %shr1303, 32767, !dbg !520
  call void @llvm.dbg.value(metadata !{i32 %and1304}, i64 0, metadata !241), !dbg !520
  store i32 %sub1302, i32* %bsLive1295, align 4, !dbg !520, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1304}, i64 0, metadata !153), !dbg !520
  %cmp1342 = icmp eq i32 %and1304, 0, !dbg !521
  br i1 %cmp1342, label %save_state_and_return, label %for.cond1346, !dbg !521

if.end1307:                                       ; preds = %if.end1307.lr.ph, %while.body1294.backedge
  %336 = phi i32 [ %.pre5333, %if.end1307.lr.ph ], [ %dec1328, %while.body1294.backedge ]
  %337 = phi i32 [ %334, %if.end1307.lr.ph ], [ %346, %while.body1294.backedge ]
  %338 = phi %struct.bz_stream* [ %.pre5241, %if.end1307.lr.ph ], [ %342, %while.body1294.backedge ]
  %cmp1310 = icmp eq i32 %336, 0, !dbg !411
  br i1 %cmp1310, label %save_state_and_return, label %if.end1313, !dbg !411

if.end1313:                                       ; preds = %if.end1307
  %339 = load i32* %bsBuff1300.pre, align 4, !dbg !411, !tbaa !354
  %shl1315 = shl i32 %339, 8, !dbg !411
  %next_in1317 = getelementptr inbounds %struct.bz_stream* %338, i64 0, i32 0, !dbg !411
  %340 = load i8** %next_in1317, align 8, !dbg !411, !tbaa !350
  %341 = load i8* %340, align 1, !dbg !411, !tbaa !351
  %conv1318 = zext i8 %341 to i32, !dbg !411
  %or1319 = or i32 %conv1318, %shl1315, !dbg !411
  store i32 %or1319, i32* %bsBuff1300.pre, align 4, !dbg !411, !tbaa !354
  %add1322 = add nsw i32 %337, 8, !dbg !411
  store i32 %add1322, i32* %bsLive1295, align 4, !dbg !411, !tbaa !354
  %incdec.ptr1325 = getelementptr inbounds i8* %340, i64 1, !dbg !411
  store i8* %incdec.ptr1325, i8** %next_in1317, align 8, !dbg !411, !tbaa !350
  %342 = load %struct.bz_stream** %strm1, align 8, !dbg !411, !tbaa !350
  %avail_in1327 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 1, !dbg !411
  %343 = load i32* %avail_in1327, align 4, !dbg !411, !tbaa !354
  %dec1328 = add i32 %343, -1, !dbg !411
  store i32 %dec1328, i32* %avail_in1327, align 4, !dbg !411, !tbaa !354
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 2, !dbg !411
  %344 = load i32* %total_in_lo321330, align 4, !dbg !411, !tbaa !354
  %inc1331 = add i32 %344, 1, !dbg !411
  store i32 %inc1331, i32* %total_in_lo321330, align 4, !dbg !411, !tbaa !354
  %cmp1334 = icmp eq i32 %inc1331, 0, !dbg !411
  br i1 %cmp1334, label %if.then1336, label %while.body1294.backedge, !dbg !411

if.then1336:                                      ; preds = %if.end1313
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 3, !dbg !411
  %345 = load i32* %total_in_hi321338, align 4, !dbg !411, !tbaa !354
  %inc1339 = add i32 %345, 1, !dbg !411
  store i32 %inc1339, i32* %total_in_hi321338, align 4, !dbg !411, !tbaa !354
  br label %while.body1294.backedge, !dbg !411

while.body1294.backedge:                          ; preds = %if.then1336, %if.end1313
  %346 = load i32* %bsLive1295, align 4, !dbg !411, !tbaa !354
  %cmp1296 = icmp sgt i32 %346, 14, !dbg !411
  br i1 %cmp1296, label %if.then1298, label %if.end1307, !dbg !411

for.cond1346:                                     ; preds = %if.then1298, %while.end1413
  %nSelectors.0 = phi i32 [ %nSelectors.1.ph, %while.end1413 ], [ %and1304, %if.then1298 ]
  %nGroups.1 = phi i32 [ %nGroups.2.ph, %while.end1413 ], [ %nGroups.0, %if.then1298 ]
  %alphaSize.2 = phi i32 [ %alphaSize.3.ph, %while.end1413 ], [ %alphaSize.1, %if.then1298 ]
  %j.6 = phi i32 [ %j.7, %while.end1413 ], [ %j.5, %if.then1298 ]
  %i.9 = phi i32 [ %inc1418, %while.end1413 ], [ 0, %if.then1298 ]
  %cmp1347 = icmp slt i32 %i.9, %nSelectors.0, !dbg !522
  br i1 %cmp1347, label %sw.bb1351.preheader, label %for.cond1422.preheader, !dbg !522

for.cond1422.preheader:                           ; preds = %for.cond1346
  %cmp14244946 = icmp sgt i32 %nGroups.1, 0, !dbg !523
  br i1 %cmp14244946, label %for.body1426, label %for.cond1432.preheader, !dbg !523

sw.bb1351.preheader:                              ; preds = %for.cond1346, %if.end
  %nSelectors.1.ph = phi i32 [ %21, %if.end ], [ %nSelectors.0, %for.cond1346 ]
  %nGroups.2.ph = phi i32 [ %22, %if.end ], [ %nGroups.1, %for.cond1346 ]
  %alphaSize.3.ph = phi i32 [ %23, %if.end ], [ %alphaSize.2, %for.cond1346 ]
  %j.7.ph = phi i32 [ %25, %if.end ], [ 0, %for.cond1346 ]
  %i.10.ph = phi i32 [ %26, %if.end ], [ %i.9, %for.cond1346 ]
  %bsLive1355 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !525
  %bsBuff1360 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !526
  %.pre5252 = load i32* %bsLive1355, align 4, !dbg !525, !tbaa !354
  br label %sw.bb1351, !dbg !527

sw.bb1351:                                        ; preds = %sw.bb1351.preheader, %if.end1407
  %347 = phi i32 [ %sub1362, %if.end1407 ], [ %.pre5252, %sw.bb1351.preheader ]
  %j.7 = phi i32 [ %inc1408, %if.end1407 ], [ %j.7.ph, %sw.bb1351.preheader ]
  store i32 32, i32* %state, align 4, !dbg !527, !tbaa !354
  %cmp13564814 = icmp sgt i32 %347, 0, !dbg !525
  br i1 %cmp13564814, label %if.then1358, label %if.end1368.lr.ph, !dbg !525

if.end1368.lr.ph:                                 ; preds = %sw.bb1351
  %.pre5253 = load %struct.bz_stream** %strm1, align 8, !dbg !525, !tbaa !350
  %avail_in1370.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5253, i64 0, i32 1
  %.pre5350 = load i32* %avail_in1370.phi.trans.insert, align 4, !dbg !525, !tbaa !354
  br label %if.end1368, !dbg !525

if.then1358:                                      ; preds = %while.body1354.backedge, %sw.bb1351
  %.lcssa4812 = phi i32 [ %347, %sw.bb1351 ], [ %360, %while.body1354.backedge ]
  %348 = load i32* %bsBuff1360, align 4, !dbg !526, !tbaa !354
  %sub1362 = add nsw i32 %.lcssa4812, -1, !dbg !526
  store i32 %sub1362, i32* %bsLive1355, align 4, !dbg !526, !tbaa !354
  %349 = shl i32 1, %sub1362, !dbg !528
  %conv13674724 = and i32 %348, %349, !dbg !528
  %cmp1404 = icmp eq i32 %conv13674724, 0, !dbg !528
  br i1 %cmp1404, label %while.end1413, label %if.end1407, !dbg !528

if.end1368:                                       ; preds = %if.end1368.lr.ph, %while.body1354.backedge
  %350 = phi i32 [ %.pre5350, %if.end1368.lr.ph ], [ %dec1389, %while.body1354.backedge ]
  %351 = phi i32 [ %347, %if.end1368.lr.ph ], [ %360, %while.body1354.backedge ]
  %352 = phi %struct.bz_stream* [ %.pre5253, %if.end1368.lr.ph ], [ %356, %while.body1354.backedge ]
  %cmp1371 = icmp eq i32 %350, 0, !dbg !525
  br i1 %cmp1371, label %save_state_and_return, label %if.end1374, !dbg !525

if.end1374:                                       ; preds = %if.end1368
  %353 = load i32* %bsBuff1360, align 4, !dbg !525, !tbaa !354
  %shl1376 = shl i32 %353, 8, !dbg !525
  %next_in1378 = getelementptr inbounds %struct.bz_stream* %352, i64 0, i32 0, !dbg !525
  %354 = load i8** %next_in1378, align 8, !dbg !525, !tbaa !350
  %355 = load i8* %354, align 1, !dbg !525, !tbaa !351
  %conv1379 = zext i8 %355 to i32, !dbg !525
  %or1380 = or i32 %conv1379, %shl1376, !dbg !525
  store i32 %or1380, i32* %bsBuff1360, align 4, !dbg !525, !tbaa !354
  %add1383 = add nsw i32 %351, 8, !dbg !525
  store i32 %add1383, i32* %bsLive1355, align 4, !dbg !525, !tbaa !354
  %incdec.ptr1386 = getelementptr inbounds i8* %354, i64 1, !dbg !525
  store i8* %incdec.ptr1386, i8** %next_in1378, align 8, !dbg !525, !tbaa !350
  %356 = load %struct.bz_stream** %strm1, align 8, !dbg !525, !tbaa !350
  %avail_in1388 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 1, !dbg !525
  %357 = load i32* %avail_in1388, align 4, !dbg !525, !tbaa !354
  %dec1389 = add i32 %357, -1, !dbg !525
  store i32 %dec1389, i32* %avail_in1388, align 4, !dbg !525, !tbaa !354
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 2, !dbg !525
  %358 = load i32* %total_in_lo321391, align 4, !dbg !525, !tbaa !354
  %inc1392 = add i32 %358, 1, !dbg !525
  store i32 %inc1392, i32* %total_in_lo321391, align 4, !dbg !525, !tbaa !354
  %cmp1395 = icmp eq i32 %inc1392, 0, !dbg !525
  br i1 %cmp1395, label %if.then1397, label %while.body1354.backedge, !dbg !525

if.then1397:                                      ; preds = %if.end1374
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 3, !dbg !525
  %359 = load i32* %total_in_hi321399, align 4, !dbg !525, !tbaa !354
  %inc1400 = add i32 %359, 1, !dbg !525
  store i32 %inc1400, i32* %total_in_hi321399, align 4, !dbg !525, !tbaa !354
  br label %while.body1354.backedge, !dbg !525

while.body1354.backedge:                          ; preds = %if.then1397, %if.end1374
  %360 = load i32* %bsLive1355, align 4, !dbg !525, !tbaa !354
  %cmp1356 = icmp sgt i32 %360, 0, !dbg !525
  br i1 %cmp1356, label %if.then1358, label %if.end1368, !dbg !525

if.end1407:                                       ; preds = %if.then1358
  %inc1408 = add nsw i32 %j.7, 1, !dbg !529
  call void @llvm.dbg.value(metadata !{i32 %inc1408}, i64 0, metadata !149), !dbg !529
  %cmp1409 = icmp slt i32 %inc1408, %nGroups.2.ph, !dbg !530
  br i1 %cmp1409, label %sw.bb1351, label %save_state_and_return, !dbg !530

while.end1413:                                    ; preds = %if.then1358
  %conv1414 = trunc i32 %j.7 to i8, !dbg !531
  %idxprom1415 = sext i32 %i.10.ph to i64, !dbg !531
  %arrayidx1416 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %idxprom1415, !dbg !531
  store i8 %conv1414, i8* %arrayidx1416, align 1, !dbg !531, !tbaa !351
  %inc1418 = add nsw i32 %i.10.ph, 1, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %inc1418}, i64 0, metadata !148), !dbg !522
  br label %for.cond1346, !dbg !522

for.cond1432.preheader:                           ; preds = %for.body1426, %for.cond1422.preheader
  %cmp14334943 = icmp sgt i32 %nSelectors.0, 0, !dbg !532
  br i1 %cmp14334943, label %for.body1435.lr.ph, label %for.cond1459, !dbg !532

for.body1435.lr.ph:                               ; preds = %for.cond1432.preheader
  %arrayidx1453 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 0, !dbg !534
  br label %for.body1435, !dbg !532

for.body1426:                                     ; preds = %for.cond1422.preheader, %for.body1426
  %v1421.04947 = phi i8 [ %inc1430, %for.body1426 ], [ 0, %for.cond1422.preheader ]
  %idxprom1427 = zext i8 %v1421.04947 to i64, !dbg !523
  %arrayidx1428 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %idxprom1427, !dbg !523
  store i8 %v1421.04947, i8* %arrayidx1428, align 1, !dbg !523, !tbaa !351
  %inc1430 = add i8 %v1421.04947, 1, !dbg !523
  call void @llvm.dbg.value(metadata !{i8 %inc1430}, i64 0, metadata !254), !dbg !523
  %conv1423 = zext i8 %inc1430 to i32, !dbg !523
  %cmp1424 = icmp slt i32 %conv1423, %nGroups.1, !dbg !523
  br i1 %cmp1424, label %for.body1426, label %for.cond1432.preheader, !dbg !523

for.body1435:                                     ; preds = %while.end1452, %for.body1435.lr.ph
  %indvars.iv5185 = phi i64 [ 0, %for.body1435.lr.ph ], [ %indvars.iv.next5186, %while.end1452 ]
  %arrayidx1438 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %indvars.iv5185, !dbg !536
  %361 = load i8* %arrayidx1438, align 1, !dbg !536, !tbaa !351
  call void @llvm.dbg.value(metadata !{i8 %361}, i64 0, metadata !254), !dbg !536
  %idxprom1439 = zext i8 %361 to i64, !dbg !537
  %arrayidx1440 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %idxprom1439, !dbg !537
  %362 = load i8* %arrayidx1440, align 1, !dbg !537, !tbaa !351
  call void @llvm.dbg.value(metadata !{i8 %362}, i64 0, metadata !253), !dbg !537
  %cmp14424941 = icmp eq i8 %361, 0, !dbg !538
  br i1 %cmp14424941, label %while.end1452, label %while.body1444, !dbg !538

while.body1444:                                   ; preds = %for.body1435, %while.body1444
  %indvars.iv5182 = phi i64 [ %sub1446, %while.body1444 ], [ %idxprom1439, %for.body1435 ]
  %v1421.14942 = phi i8 [ %dec1451, %while.body1444 ], [ %361, %for.body1435 ]
  %sub1446 = add i64 %indvars.iv5182, -1, !dbg !539
  %arrayidx1448 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %sub1446, !dbg !539
  %363 = load i8* %arrayidx1448, align 1, !dbg !539, !tbaa !351
  %arrayidx1450 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %indvars.iv5182, !dbg !539
  store i8 %363, i8* %arrayidx1450, align 1, !dbg !539, !tbaa !351
  %dec1451 = add i8 %v1421.14942, -1, !dbg !539
  call void @llvm.dbg.value(metadata !{i8 %dec1451}, i64 0, metadata !254), !dbg !539
  %cmp1442 = icmp eq i8 %dec1451, 0, !dbg !538
  br i1 %cmp1442, label %while.end1452, label %while.body1444, !dbg !538

while.end1452:                                    ; preds = %while.body1444, %for.body1435
  store i8 %362, i8* %arrayidx1453, align 1, !dbg !534, !tbaa !351
  %arrayidx1455 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %indvars.iv5185, !dbg !541
  store i8 %362, i8* %arrayidx1455, align 1, !dbg !541, !tbaa !351
  %indvars.iv.next5186 = add i64 %indvars.iv5185, 1, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %nSelectors.0}, i64 0, metadata !148), !dbg !532
  %lftr.wideiv5187 = trunc i64 %indvars.iv.next5186 to i32, !dbg !532
  %exitcond5188 = icmp eq i32 %lftr.wideiv5187, %nSelectors.0, !dbg !532
  br i1 %exitcond5188, label %for.cond1459, label %for.body1435, !dbg !532

for.cond1459:                                     ; preds = %for.cond1432.preheader, %while.end1452, %for.inc1656
  %curr.0 = phi i32 [ %curr.2, %for.inc1656 ], [ %12, %while.end1452 ], [ %12, %for.cond1432.preheader ]
  %nSelectors.2 = phi i32 [ %nSelectors.4, %for.inc1656 ], [ %nSelectors.0, %while.end1452 ], [ %nSelectors.0, %for.cond1432.preheader ]
  %nGroups.3 = phi i32 [ %nGroups.5, %for.inc1656 ], [ %nGroups.1, %while.end1452 ], [ %nGroups.1, %for.cond1432.preheader ]
  %alphaSize.4 = phi i32 [ %alphaSize.6, %for.inc1656 ], [ %alphaSize.2, %while.end1452 ], [ %alphaSize.2, %for.cond1432.preheader ]
  %t.0 = phi i32 [ %inc1657, %for.inc1656 ], [ 0, %while.end1452 ], [ 0, %for.cond1432.preheader ]
  %j.8 = phi i32 [ %j.10, %for.inc1656 ], [ %j.6, %while.end1452 ], [ %j.6, %for.cond1432.preheader ]
  %i.12 = phi i32 [ %i.14, %for.inc1656 ], [ %nSelectors.0, %while.end1452 ], [ 0, %for.cond1432.preheader ]
  %cmp1460 = icmp slt i32 %t.0, %nGroups.3, !dbg !542
  br i1 %cmp1460, label %sw.bb1463, label %for.cond1659.preheader, !dbg !542

for.cond1659.preheader:                           ; preds = %for.cond1459
  %cmp16604938 = icmp sgt i32 %nGroups.3, 0, !dbg !543
  br i1 %cmp16604938, label %for.cond1663.preheader.lr.ph, label %for.end1719, !dbg !543

for.cond1663.preheader.lr.ph:                     ; preds = %for.cond1659.preheader
  %cmp16644932 = icmp sgt i32 %alphaSize.4, 0, !dbg !545
  br label %for.cond1663.preheader, !dbg !543

sw.bb1463:                                        ; preds = %for.cond1459, %if.end
  %curr.1 = phi i32 [ %12, %if.end ], [ %curr.0, %for.cond1459 ]
  %nSelectors.3 = phi i32 [ %21, %if.end ], [ %nSelectors.2, %for.cond1459 ]
  %nGroups.4 = phi i32 [ %22, %if.end ], [ %nGroups.3, %for.cond1459 ]
  %alphaSize.5 = phi i32 [ %23, %if.end ], [ %alphaSize.4, %for.cond1459 ]
  %t.1 = phi i32 [ %24, %if.end ], [ %t.0, %for.cond1459 ]
  %j.9 = phi i32 [ %25, %if.end ], [ %j.8, %for.cond1459 ]
  %i.13 = phi i32 [ %26, %if.end ], [ %i.12, %for.cond1459 ]
  store i32 33, i32* %state, align 4, !dbg !548, !tbaa !354
  %bsLive1467 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !549
  %364 = load i32* %bsLive1467, align 4, !dbg !549, !tbaa !354
  %cmp14684838 = icmp sgt i32 %364, 4, !dbg !549
  %bsBuff1473.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !550
  br i1 %cmp14684838, label %if.then1470, label %if.end1480.lr.ph, !dbg !549

if.end1480.lr.ph:                                 ; preds = %sw.bb1463
  %.pre5242 = load %struct.bz_stream** %strm1, align 8, !dbg !549, !tbaa !350
  %avail_in1482.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5242, i64 0, i32 1
  %.pre5334 = load i32* %avail_in1482.phi.trans.insert, align 4, !dbg !549, !tbaa !354
  br label %if.end1480, !dbg !549

if.then1470:                                      ; preds = %sw.bb1463, %while.body1466.backedge
  %.lcssa4836 = phi i32 [ %376, %while.body1466.backedge ], [ %364, %sw.bb1463 ]
  %365 = load i32* %bsBuff1473.pre, align 4, !dbg !550, !tbaa !354
  %sub1475 = add nsw i32 %.lcssa4836, -5, !dbg !550
  %shr1476 = lshr i32 %365, %sub1475, !dbg !550
  %and1477 = and i32 %shr1476, 31, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %and1477}, i64 0, metadata !255), !dbg !550
  store i32 %sub1475, i32* %bsLive1467, align 4, !dbg !550, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1477}, i64 0, metadata !162), !dbg !550
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !551
  br label %for.cond1515, !dbg !551

if.end1480:                                       ; preds = %if.end1480.lr.ph, %while.body1466.backedge
  %366 = phi i32 [ %.pre5334, %if.end1480.lr.ph ], [ %dec1501, %while.body1466.backedge ]
  %367 = phi i32 [ %364, %if.end1480.lr.ph ], [ %376, %while.body1466.backedge ]
  %368 = phi %struct.bz_stream* [ %.pre5242, %if.end1480.lr.ph ], [ %372, %while.body1466.backedge ]
  %cmp1483 = icmp eq i32 %366, 0, !dbg !549
  br i1 %cmp1483, label %save_state_and_return, label %if.end1486, !dbg !549

if.end1486:                                       ; preds = %if.end1480
  %369 = load i32* %bsBuff1473.pre, align 4, !dbg !549, !tbaa !354
  %shl1488 = shl i32 %369, 8, !dbg !549
  %next_in1490 = getelementptr inbounds %struct.bz_stream* %368, i64 0, i32 0, !dbg !549
  %370 = load i8** %next_in1490, align 8, !dbg !549, !tbaa !350
  %371 = load i8* %370, align 1, !dbg !549, !tbaa !351
  %conv1491 = zext i8 %371 to i32, !dbg !549
  %or1492 = or i32 %conv1491, %shl1488, !dbg !549
  store i32 %or1492, i32* %bsBuff1473.pre, align 4, !dbg !549, !tbaa !354
  %add1495 = add nsw i32 %367, 8, !dbg !549
  store i32 %add1495, i32* %bsLive1467, align 4, !dbg !549, !tbaa !354
  %incdec.ptr1498 = getelementptr inbounds i8* %370, i64 1, !dbg !549
  store i8* %incdec.ptr1498, i8** %next_in1490, align 8, !dbg !549, !tbaa !350
  %372 = load %struct.bz_stream** %strm1, align 8, !dbg !549, !tbaa !350
  %avail_in1500 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 1, !dbg !549
  %373 = load i32* %avail_in1500, align 4, !dbg !549, !tbaa !354
  %dec1501 = add i32 %373, -1, !dbg !549
  store i32 %dec1501, i32* %avail_in1500, align 4, !dbg !549, !tbaa !354
  %total_in_lo321503 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 2, !dbg !549
  %374 = load i32* %total_in_lo321503, align 4, !dbg !549, !tbaa !354
  %inc1504 = add i32 %374, 1, !dbg !549
  store i32 %inc1504, i32* %total_in_lo321503, align 4, !dbg !549, !tbaa !354
  %cmp1507 = icmp eq i32 %inc1504, 0, !dbg !549
  br i1 %cmp1507, label %if.then1509, label %while.body1466.backedge, !dbg !549

if.then1509:                                      ; preds = %if.end1486
  %total_in_hi321511 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 3, !dbg !549
  %375 = load i32* %total_in_hi321511, align 4, !dbg !549, !tbaa !354
  %inc1512 = add i32 %375, 1, !dbg !549
  store i32 %inc1512, i32* %total_in_hi321511, align 4, !dbg !549, !tbaa !354
  br label %while.body1466.backedge, !dbg !549

while.body1466.backedge:                          ; preds = %if.then1509, %if.end1486
  %376 = load i32* %bsLive1467, align 4, !dbg !549, !tbaa !354
  %cmp1468 = icmp sgt i32 %376, 4, !dbg !549
  br i1 %cmp1468, label %if.then1470, label %if.end1480, !dbg !549

for.cond1515:                                     ; preds = %while.end1647, %if.then1470
  %curr.2 = phi i32 [ %curr.4, %while.end1647 ], [ %and1477, %if.then1470 ]
  %nSelectors.4 = phi i32 [ %nSelectors.6, %while.end1647 ], [ %nSelectors.3, %if.then1470 ]
  %nGroups.5 = phi i32 [ %nGroups.7, %while.end1647 ], [ %nGroups.4, %if.then1470 ]
  %alphaSize.6 = phi i32 [ %alphaSize.8, %while.end1647 ], [ %alphaSize.5, %if.then1470 ]
  %t.2 = phi i32 [ %t.4, %while.end1647 ], [ %t.1, %if.then1470 ]
  %j.10 = phi i32 [ %j.12, %while.end1647 ], [ %j.9, %if.then1470 ]
  %i.14 = phi i32 [ %inc1654, %while.end1647 ], [ 0, %if.then1470 ]
  %cmp1516 = icmp slt i32 %i.14, %alphaSize.6, !dbg !551
  br i1 %cmp1516, label %while.body1520, label %for.inc1656, !dbg !551

while.body1520:                                   ; preds = %if.then1642, %if.else1644, %for.cond1515
  %curr.3 = phi i32 [ %inc1643, %if.then1642 ], [ %curr.2, %for.cond1515 ], [ %dec1645, %if.else1644 ]
  %nSelectors.5 = phi i32 [ %nSelectors.7, %if.then1642 ], [ %nSelectors.4, %for.cond1515 ], [ %nSelectors.7, %if.else1644 ]
  %nGroups.6 = phi i32 [ %nGroups.8, %if.then1642 ], [ %nGroups.5, %for.cond1515 ], [ %nGroups.8, %if.else1644 ]
  %alphaSize.7 = phi i32 [ %alphaSize.9, %if.then1642 ], [ %alphaSize.6, %for.cond1515 ], [ %alphaSize.9, %if.else1644 ]
  %t.3 = phi i32 [ %t.5, %if.then1642 ], [ %t.2, %for.cond1515 ], [ %t.5, %if.else1644 ]
  %j.11 = phi i32 [ %j.13, %if.then1642 ], [ %j.10, %for.cond1515 ], [ %j.13, %if.else1644 ]
  %i.15 = phi i32 [ %i.17, %if.then1642 ], [ %i.14, %for.cond1515 ], [ %i.17, %if.else1644 ]
  %curr.3.off = add i32 %curr.3, -1, !dbg !552
  %377 = icmp ugt i32 %curr.3.off, 19, !dbg !552
  br i1 %377, label %save_state_and_return, label %sw.bb1528, !dbg !552

sw.bb1528:                                        ; preds = %while.body1520, %if.end
  %curr.4 = phi i32 [ %12, %if.end ], [ %curr.3, %while.body1520 ]
  %nSelectors.6 = phi i32 [ %21, %if.end ], [ %nSelectors.5, %while.body1520 ]
  %nGroups.7 = phi i32 [ %22, %if.end ], [ %nGroups.6, %while.body1520 ]
  %alphaSize.8 = phi i32 [ %23, %if.end ], [ %alphaSize.7, %while.body1520 ]
  %t.4 = phi i32 [ %24, %if.end ], [ %t.3, %while.body1520 ]
  %j.12 = phi i32 [ %25, %if.end ], [ %j.11, %while.body1520 ]
  %i.16 = phi i32 [ %26, %if.end ], [ %i.15, %while.body1520 ]
  store i32 34, i32* %state, align 4, !dbg !553, !tbaa !354
  %bsLive1532 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !554
  %378 = load i32* %bsLive1532, align 4, !dbg !554, !tbaa !354
  %cmp15334831 = icmp sgt i32 %378, 0, !dbg !554
  %bsBuff1538.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !555
  br i1 %cmp15334831, label %if.then1535, label %if.end1546.lr.ph, !dbg !554

if.end1546.lr.ph:                                 ; preds = %sw.bb1528
  %.pre5243 = load %struct.bz_stream** %strm1, align 8, !dbg !554, !tbaa !350
  %avail_in1548.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5243, i64 0, i32 1
  %.pre5335 = load i32* %avail_in1548.phi.trans.insert, align 4, !dbg !554, !tbaa !354
  br label %if.end1546, !dbg !554

if.then1535:                                      ; preds = %sw.bb1528, %while.body1531.backedge
  %.lcssa4829 = phi i32 [ %391, %while.body1531.backedge ], [ %378, %sw.bb1528 ]
  %379 = load i32* %bsBuff1538.pre, align 4, !dbg !555, !tbaa !354
  %sub1540 = add nsw i32 %.lcssa4829, -1, !dbg !555
  store i32 %sub1540, i32* %bsLive1532, align 4, !dbg !555, !tbaa !354
  %380 = shl i32 1, %sub1540, !dbg !556
  %conv15454723 = and i32 %379, %380, !dbg !556
  %cmp1582 = icmp eq i32 %conv15454723, 0, !dbg !556
  br i1 %cmp1582, label %while.end1647, label %sw.bb1586, !dbg !556

if.end1546:                                       ; preds = %if.end1546.lr.ph, %while.body1531.backedge
  %381 = phi i32 [ %.pre5335, %if.end1546.lr.ph ], [ %dec1567, %while.body1531.backedge ]
  %382 = phi i32 [ %378, %if.end1546.lr.ph ], [ %391, %while.body1531.backedge ]
  %383 = phi %struct.bz_stream* [ %.pre5243, %if.end1546.lr.ph ], [ %387, %while.body1531.backedge ]
  %cmp1549 = icmp eq i32 %381, 0, !dbg !554
  br i1 %cmp1549, label %save_state_and_return, label %if.end1552, !dbg !554

if.end1552:                                       ; preds = %if.end1546
  %384 = load i32* %bsBuff1538.pre, align 4, !dbg !554, !tbaa !354
  %shl1554 = shl i32 %384, 8, !dbg !554
  %next_in1556 = getelementptr inbounds %struct.bz_stream* %383, i64 0, i32 0, !dbg !554
  %385 = load i8** %next_in1556, align 8, !dbg !554, !tbaa !350
  %386 = load i8* %385, align 1, !dbg !554, !tbaa !351
  %conv1557 = zext i8 %386 to i32, !dbg !554
  %or1558 = or i32 %conv1557, %shl1554, !dbg !554
  store i32 %or1558, i32* %bsBuff1538.pre, align 4, !dbg !554, !tbaa !354
  %add1561 = add nsw i32 %382, 8, !dbg !554
  store i32 %add1561, i32* %bsLive1532, align 4, !dbg !554, !tbaa !354
  %incdec.ptr1564 = getelementptr inbounds i8* %385, i64 1, !dbg !554
  store i8* %incdec.ptr1564, i8** %next_in1556, align 8, !dbg !554, !tbaa !350
  %387 = load %struct.bz_stream** %strm1, align 8, !dbg !554, !tbaa !350
  %avail_in1566 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 1, !dbg !554
  %388 = load i32* %avail_in1566, align 4, !dbg !554, !tbaa !354
  %dec1567 = add i32 %388, -1, !dbg !554
  store i32 %dec1567, i32* %avail_in1566, align 4, !dbg !554, !tbaa !354
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 2, !dbg !554
  %389 = load i32* %total_in_lo321569, align 4, !dbg !554, !tbaa !354
  %inc1570 = add i32 %389, 1, !dbg !554
  store i32 %inc1570, i32* %total_in_lo321569, align 4, !dbg !554, !tbaa !354
  %cmp1573 = icmp eq i32 %inc1570, 0, !dbg !554
  br i1 %cmp1573, label %if.then1575, label %while.body1531.backedge, !dbg !554

if.then1575:                                      ; preds = %if.end1552
  %total_in_hi321577 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 3, !dbg !554
  %390 = load i32* %total_in_hi321577, align 4, !dbg !554, !tbaa !354
  %inc1578 = add i32 %390, 1, !dbg !554
  store i32 %inc1578, i32* %total_in_hi321577, align 4, !dbg !554, !tbaa !354
  br label %while.body1531.backedge, !dbg !554

while.body1531.backedge:                          ; preds = %if.then1575, %if.end1552
  %391 = load i32* %bsLive1532, align 4, !dbg !554, !tbaa !354
  %cmp1533 = icmp sgt i32 %391, 0, !dbg !554
  br i1 %cmp1533, label %if.then1535, label %if.end1546, !dbg !554

sw.bb1586:                                        ; preds = %if.end.sw.bb1586_crit_edge, %if.then1535
  %392 = phi i32 [ %.pre5336, %if.end.sw.bb1586_crit_edge ], [ %sub1540, %if.then1535 ]
  %curr.5 = phi i32 [ %12, %if.end.sw.bb1586_crit_edge ], [ %curr.4, %if.then1535 ]
  %nSelectors.7 = phi i32 [ %21, %if.end.sw.bb1586_crit_edge ], [ %nSelectors.6, %if.then1535 ]
  %nGroups.8 = phi i32 [ %22, %if.end.sw.bb1586_crit_edge ], [ %nGroups.7, %if.then1535 ]
  %alphaSize.9 = phi i32 [ %23, %if.end.sw.bb1586_crit_edge ], [ %alphaSize.8, %if.then1535 ]
  %t.5 = phi i32 [ %24, %if.end.sw.bb1586_crit_edge ], [ %t.4, %if.then1535 ]
  %j.13 = phi i32 [ %25, %if.end.sw.bb1586_crit_edge ], [ %j.12, %if.then1535 ]
  %i.17 = phi i32 [ %26, %if.end.sw.bb1586_crit_edge ], [ %i.16, %if.then1535 ]
  store i32 35, i32* %state, align 4, !dbg !557, !tbaa !354
  %bsLive1590 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !412
  %cmp15914824 = icmp sgt i32 %392, 0, !dbg !412
  %bsBuff1596.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !558
  br i1 %cmp15914824, label %if.then1593, label %if.end1604.lr.ph, !dbg !412

if.end1604.lr.ph:                                 ; preds = %sw.bb1586
  %.pre5244 = load %struct.bz_stream** %strm1, align 8, !dbg !412, !tbaa !350
  %avail_in1606.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5244, i64 0, i32 1
  %.pre5337 = load i32* %avail_in1606.phi.trans.insert, align 4, !dbg !412, !tbaa !354
  br label %if.end1604, !dbg !412

if.then1593:                                      ; preds = %sw.bb1586, %while.body1589.backedge
  %.lcssa4822 = phi i32 [ %405, %while.body1589.backedge ], [ %392, %sw.bb1586 ]
  %393 = load i32* %bsBuff1596.pre, align 4, !dbg !558, !tbaa !354
  %sub1598 = add nsw i32 %.lcssa4822, -1, !dbg !558
  store i32 %sub1598, i32* %bsLive1590, align 4, !dbg !558, !tbaa !354
  %394 = shl i32 1, %sub1598, !dbg !559
  %conv16034722 = and i32 %393, %394, !dbg !559
  %cmp1640 = icmp eq i32 %conv16034722, 0, !dbg !559
  br i1 %cmp1640, label %if.then1642, label %if.else1644, !dbg !559

if.end1604:                                       ; preds = %if.end1604.lr.ph, %while.body1589.backedge
  %395 = phi i32 [ %.pre5337, %if.end1604.lr.ph ], [ %dec1625, %while.body1589.backedge ]
  %396 = phi i32 [ %392, %if.end1604.lr.ph ], [ %405, %while.body1589.backedge ]
  %397 = phi %struct.bz_stream* [ %.pre5244, %if.end1604.lr.ph ], [ %401, %while.body1589.backedge ]
  %cmp1607 = icmp eq i32 %395, 0, !dbg !412
  br i1 %cmp1607, label %save_state_and_return, label %if.end1610, !dbg !412

if.end1610:                                       ; preds = %if.end1604
  %398 = load i32* %bsBuff1596.pre, align 4, !dbg !412, !tbaa !354
  %shl1612 = shl i32 %398, 8, !dbg !412
  %next_in1614 = getelementptr inbounds %struct.bz_stream* %397, i64 0, i32 0, !dbg !412
  %399 = load i8** %next_in1614, align 8, !dbg !412, !tbaa !350
  %400 = load i8* %399, align 1, !dbg !412, !tbaa !351
  %conv1615 = zext i8 %400 to i32, !dbg !412
  %or1616 = or i32 %conv1615, %shl1612, !dbg !412
  store i32 %or1616, i32* %bsBuff1596.pre, align 4, !dbg !412, !tbaa !354
  %add1619 = add nsw i32 %396, 8, !dbg !412
  store i32 %add1619, i32* %bsLive1590, align 4, !dbg !412, !tbaa !354
  %incdec.ptr1622 = getelementptr inbounds i8* %399, i64 1, !dbg !412
  store i8* %incdec.ptr1622, i8** %next_in1614, align 8, !dbg !412, !tbaa !350
  %401 = load %struct.bz_stream** %strm1, align 8, !dbg !412, !tbaa !350
  %avail_in1624 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 1, !dbg !412
  %402 = load i32* %avail_in1624, align 4, !dbg !412, !tbaa !354
  %dec1625 = add i32 %402, -1, !dbg !412
  store i32 %dec1625, i32* %avail_in1624, align 4, !dbg !412, !tbaa !354
  %total_in_lo321627 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 2, !dbg !412
  %403 = load i32* %total_in_lo321627, align 4, !dbg !412, !tbaa !354
  %inc1628 = add i32 %403, 1, !dbg !412
  store i32 %inc1628, i32* %total_in_lo321627, align 4, !dbg !412, !tbaa !354
  %cmp1631 = icmp eq i32 %inc1628, 0, !dbg !412
  br i1 %cmp1631, label %if.then1633, label %while.body1589.backedge, !dbg !412

if.then1633:                                      ; preds = %if.end1610
  %total_in_hi321635 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 3, !dbg !412
  %404 = load i32* %total_in_hi321635, align 4, !dbg !412, !tbaa !354
  %inc1636 = add i32 %404, 1, !dbg !412
  store i32 %inc1636, i32* %total_in_hi321635, align 4, !dbg !412, !tbaa !354
  br label %while.body1589.backedge, !dbg !412

while.body1589.backedge:                          ; preds = %if.then1633, %if.end1610
  %405 = load i32* %bsLive1590, align 4, !dbg !412, !tbaa !354
  %cmp1591 = icmp sgt i32 %405, 0, !dbg !412
  br i1 %cmp1591, label %if.then1593, label %if.end1604, !dbg !412

if.then1642:                                      ; preds = %if.then1593
  %inc1643 = add nsw i32 %curr.5, 1, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %inc1643}, i64 0, metadata !162), !dbg !559
  br label %while.body1520, !dbg !559

if.else1644:                                      ; preds = %if.then1593
  %dec1645 = add nsw i32 %curr.5, -1, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %dec1645}, i64 0, metadata !162), !dbg !559
  br label %while.body1520

while.end1647:                                    ; preds = %if.then1535
  %conv1648 = trunc i32 %curr.4 to i8, !dbg !560
  %idxprom1649 = sext i32 %i.16 to i64, !dbg !560
  %idxprom1650 = sext i32 %t.4 to i64, !dbg !560
  %arrayidx1652 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %idxprom1650, i64 %idxprom1649, !dbg !560
  store i8 %conv1648, i8* %arrayidx1652, align 1, !dbg !560, !tbaa !351
  %inc1654 = add nsw i32 %i.16, 1, !dbg !551
  call void @llvm.dbg.value(metadata !{i32 %inc1654}, i64 0, metadata !148), !dbg !551
  br label %for.cond1515, !dbg !551

for.inc1656:                                      ; preds = %for.cond1515
  %inc1657 = add nsw i32 %t.2, 1, !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %inc1657}, i64 0, metadata !150), !dbg !542
  br label %for.cond1459, !dbg !542

for.cond1663.preheader:                           ; preds = %for.end1701, %for.cond1663.preheader.lr.ph
  %indvars.iv5178 = phi i64 [ 0, %for.cond1663.preheader.lr.ph ], [ %indvars.iv.next5179, %for.end1701 ]
  br i1 %cmp16644932, label %for.body1666, label %for.end1701, !dbg !545

for.body1666:                                     ; preds = %for.cond1663.preheader, %for.body1666
  %indvars.iv5174 = phi i64 [ %indvars.iv.next5175, %for.body1666 ], [ 0, %for.cond1663.preheader ]
  %minLen.04935 = phi i32 [ %minLen.1, %for.body1666 ], [ 32, %for.cond1663.preheader ]
  %maxLen.04934 = phi i32 [ %conv1672.maxLen.0, %for.body1666 ], [ 0, %for.cond1663.preheader ]
  %arrayidx1671 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv5178, i64 %indvars.iv5174, !dbg !561
  %406 = load i8* %arrayidx1671, align 1, !dbg !561, !tbaa !351
  %conv1672 = zext i8 %406 to i32, !dbg !561
  %cmp1673 = icmp sgt i32 %conv1672, %maxLen.04934, !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %conv1672}, i64 0, metadata !146), !dbg !561
  %conv1672.maxLen.0 = select i1 %cmp1673, i32 %conv1672, i32 %maxLen.04934, !dbg !561
  %cmp1689 = icmp slt i32 %conv1672, %minLen.04935, !dbg !563
  call void @llvm.dbg.value(metadata !{i32 %conv1672}, i64 0, metadata !145), !dbg !563
  %minLen.1 = select i1 %cmp1689, i32 %conv1672, i32 %minLen.04935, !dbg !563
  %indvars.iv.next5175 = add i64 %indvars.iv5174, 1, !dbg !545
  %lftr.wideiv5176 = trunc i64 %indvars.iv.next5175 to i32, !dbg !545
  %exitcond5177 = icmp eq i32 %lftr.wideiv5176, %alphaSize.4, !dbg !545
  br i1 %exitcond5177, label %for.end1701, label %for.body1666, !dbg !545

for.end1701:                                      ; preds = %for.body1666, %for.cond1663.preheader
  %minLen.0.lcssa = phi i32 [ 32, %for.cond1663.preheader ], [ %minLen.1, %for.body1666 ]
  %maxLen.0.lcssa = phi i32 [ 0, %for.cond1663.preheader ], [ %conv1672.maxLen.0, %for.body1666 ]
  %arrayidx1704 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %indvars.iv5178, i64 0, !dbg !564
  %arrayidx1707 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %indvars.iv5178, i64 0, !dbg !564
  %arrayidx1710 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %indvars.iv5178, i64 0, !dbg !564
  %arrayidx1714 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv5178, i64 0, !dbg !564
  call void @BZ2_hbCreateDecodeTables(i32* %arrayidx1704, i32* %arrayidx1707, i32* %arrayidx1710, i8* %arrayidx1714, i32 %minLen.0.lcssa, i32 %maxLen.0.lcssa, i32 %alphaSize.4) #5, !dbg !564
  %arrayidx1716 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %indvars.iv5178, !dbg !565
  store i32 %minLen.0.lcssa, i32* %arrayidx1716, align 4, !dbg !565, !tbaa !354
  %indvars.iv.next5179 = add i64 %indvars.iv5178, 1, !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %nGroups.3}, i64 0, metadata !150), !dbg !543
  %lftr.wideiv5180 = trunc i64 %indvars.iv.next5179 to i32, !dbg !543
  %exitcond5181 = icmp eq i32 %lftr.wideiv5180, %nGroups.3, !dbg !543
  br i1 %exitcond5181, label %for.end1719, label %for.cond1663.preheader, !dbg !543

for.end1719:                                      ; preds = %for.end1701, %for.cond1659.preheader
  %t.6.lcssa = phi i32 [ 0, %for.cond1659.preheader ], [ %nGroups.3, %for.end1701 ]
  %nInUse1720 = getelementptr inbounds %struct.DState* %s, i64 0, i32 27, !dbg !566
  %407 = load i32* %nInUse1720, align 4, !dbg !566, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %add1721}, i64 0, metadata !154), !dbg !566
  %blockSize100k1722 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9, !dbg !567
  %408 = load i32* %blockSize100k1722, align 4, !dbg !567, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %mul1723}, i64 0, metadata !158), !dbg !567
  call void @llvm.dbg.value(metadata !568, i64 0, metadata !155), !dbg !569
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !570
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !571
  %scevgep = getelementptr %struct.DState* %s, i64 0, i32 16, i64 0
  %scevgep5173 = bitcast i32* %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep5173, i8 0, i64 1024, i32 4, i1 false), !dbg !571
  %add1721 = add nsw i32 %407, 1, !dbg !566
  %mul1723 = mul nsw i32 %408, 100000, !dbg !567
  br label %for.cond1740.preheader, !dbg !573

for.cond1740.preheader:                           ; preds = %for.end1719, %for.end1752
  %indvars.iv5166 = phi i64 [ 15, %for.end1719 ], [ %indvars.iv.next5167, %for.end1752 ], !dbg !573
  %indvars.iv5164 = phi i64 [ 4095, %for.end1719 ], [ %indvars.iv.next5165, %for.end1752 ]
  %indvars.iv5162 = phi i32 [ 4080, %for.end1719 ], [ %indvars.iv.next5163, %for.end1752 ], !dbg !575
  %409 = shl i64 %indvars.iv5166, 4, !dbg !578
  br label %for.body1743, !dbg !575

for.body1743:                                     ; preds = %for.cond1740.preheader, %for.body1743
  %indvars.iv5160 = phi i64 [ %indvars.iv5164, %for.cond1740.preheader ], [ %indvars.iv.next5161, %for.body1743 ]
  %jj.04927 = phi i32 [ 15, %for.cond1740.preheader ], [ %dec1751, %for.body1743 ]
  %410 = trunc i64 %409 to i32, !dbg !578
  %add1745 = add nsw i32 %jj.04927, %410, !dbg !578
  %conv1746 = trunc i32 %add1745 to i8, !dbg !578
  %arrayidx1748 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5160, !dbg !578
  store i8 %conv1746, i8* %arrayidx1748, align 1, !dbg !578, !tbaa !351
  %indvars.iv.next5161 = add i64 %indvars.iv5160, -1, !dbg !575
  %dec1751 = add nsw i32 %jj.04927, -1, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %dec1751}, i64 0, metadata !271), !dbg !575
  %cmp1741 = icmp sgt i32 %jj.04927, 0, !dbg !575
  br i1 %cmp1741, label %for.body1743, label %for.end1752, !dbg !575

for.end1752:                                      ; preds = %for.body1743
  %indvars.iv.next5165 = add i64 %indvars.iv5164, -16, !dbg !573
  %arrayidx1755 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5166, !dbg !580
  store i32 %indvars.iv5162, i32* %arrayidx1755, align 4, !dbg !580, !tbaa !354
  %indvars.iv.next5167 = add i64 %indvars.iv5166, -1, !dbg !573
  %411 = trunc i64 %indvars.iv5166 to i32, !dbg !573
  %cmp1737 = icmp sgt i32 %411, 0, !dbg !573
  %indvars.iv.next5163 = add i32 %indvars.iv5162, -16, !dbg !573
  br i1 %cmp1737, label %for.cond1740.preheader, label %if.then1761, !dbg !573

if.then1761:                                      ; preds = %for.end1752
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !159), !dbg !581
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !582
  %cmp1763 = icmp slt i32 %nSelectors.2, 1, !dbg !582
  br i1 %cmp1763, label %save_state_and_return, label %if.end1766, !dbg !582

if.end1766:                                       ; preds = %if.then1761
  call void @llvm.dbg.value(metadata !584, i64 0, metadata !156), !dbg !582
  %arrayidx1769 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 0, !dbg !582
  %412 = load i8* %arrayidx1769, align 1, !dbg !582, !tbaa !351
  %conv1770 = zext i8 %412 to i32, !dbg !582
  call void @llvm.dbg.value(metadata !{i32 %conv1770}, i64 0, metadata !167), !dbg !582
  %idxprom1771 = zext i8 %412 to i64, !dbg !582
  %arrayidx1773 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom1771, !dbg !582
  %413 = load i32* %arrayidx1773, align 4, !dbg !582, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %413}, i64 0, metadata !168), !dbg !582
  %arrayidx1777 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom1771, i64 0, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1777}, i64 0, metadata !169), !dbg !582
  %arrayidx1781 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom1771, i64 0, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1781}, i64 0, metadata !171), !dbg !582
  %arrayidx1785 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom1771, i64 0, !dbg !582
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1785}, i64 0, metadata !170), !dbg !582
  call void @llvm.dbg.value(metadata !585, i64 0, metadata !156), !dbg !586
  call void @llvm.dbg.value(metadata !{i32 %413}, i64 0, metadata !164), !dbg !586
  br label %sw.bb1788, !dbg !586

sw.bb1788:                                        ; preds = %if.end, %if.end1766
  %gPerm.1 = phi i32* [ %3, %if.end ], [ %arrayidx1781, %if.end1766 ]
  %gBase.1 = phi i32* [ %4, %if.end ], [ %arrayidx1785, %if.end1766 ]
  %gLimit.1 = phi i32* [ %5, %if.end ], [ %arrayidx1777, %if.end1766 ]
  %gMinlen.1 = phi i32 [ %6, %if.end ], [ %413, %if.end1766 ]
  %gSel.1 = phi i32 [ %7, %if.end ], [ %conv1770, %if.end1766 ]
  %zn.0 = phi i32 [ %10, %if.end ], [ %413, %if.end1766 ]
  %curr.6 = phi i32 [ %12, %if.end ], [ %curr.0, %if.end1766 ]
  %nblock.0 = phi i32 [ %15, %if.end ], [ 0, %if.end1766 ]
  %nblockMAX.0 = phi i32 [ %16, %if.end ], [ %mul1723, %if.end1766 ]
  %groupPos.1 = phi i32 [ %18, %if.end ], [ 49, %if.end1766 ]
  %groupNo.1 = phi i32 [ %19, %if.end ], [ 0, %if.end1766 ]
  %EOB.0 = phi i32 [ %20, %if.end ], [ %add1721, %if.end1766 ]
  %nSelectors.8 = phi i32 [ %21, %if.end ], [ %nSelectors.2, %if.end1766 ]
  %nGroups.9 = phi i32 [ %22, %if.end ], [ %nGroups.3, %if.end1766 ]
  %alphaSize.10 = phi i32 [ %23, %if.end ], [ %alphaSize.4, %if.end1766 ]
  %t.7 = phi i32 [ %24, %if.end ], [ %t.6.lcssa, %if.end1766 ]
  %j.14 = phi i32 [ %25, %if.end ], [ %j.8, %if.end1766 ]
  %i.20 = phi i32 [ %26, %if.end ], [ 256, %if.end1766 ]
  store i32 36, i32* %state, align 4, !dbg !586, !tbaa !354
  %bsLive1792 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !587
  %414 = load i32* %bsLive1792, align 4, !dbg !587, !tbaa !354
  %cmp17934924 = icmp slt i32 %414, %zn.0, !dbg !587
  %bsBuff1814 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !587
  br i1 %cmp17934924, label %if.end1807.lr.ph, label %if.then1795, !dbg !587

if.end1807.lr.ph:                                 ; preds = %sw.bb1788
  %.pre5245 = load %struct.bz_stream** %strm1, align 8, !dbg !587, !tbaa !350
  %avail_in1809.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5245, i64 0, i32 1
  %.pre5338 = load i32* %avail_in1809.phi.trans.insert, align 4, !dbg !587, !tbaa !354
  br label %if.end1807, !dbg !587

if.then1795:                                      ; preds = %sw.bb1788, %while.body1791.backedge
  %.lcssa4922 = phi i32 [ %426, %while.body1791.backedge ], [ %414, %sw.bb1788 ]
  %415 = load i32* %bsBuff1814, align 4, !dbg !588, !tbaa !354
  %sub1800 = sub nsw i32 %.lcssa4922, %zn.0, !dbg !588
  %shr1801 = lshr i32 %415, %sub1800, !dbg !588
  %shl1802 = shl i32 1, %zn.0, !dbg !588
  %sub1803 = add nsw i32 %shl1802, -1, !dbg !588
  %and1804 = and i32 %shr1801, %sub1803, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %and1804}, i64 0, metadata !273), !dbg !588
  store i32 %sub1800, i32* %bsLive1792, align 4, !dbg !588, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1804}, i64 0, metadata !165), !dbg !588
  br label %while.body1843, !dbg !586

if.end1807:                                       ; preds = %if.end1807.lr.ph, %while.body1791.backedge
  %416 = phi i32 [ %.pre5338, %if.end1807.lr.ph ], [ %dec1828, %while.body1791.backedge ]
  %417 = phi i32 [ %414, %if.end1807.lr.ph ], [ %426, %while.body1791.backedge ]
  %418 = phi %struct.bz_stream* [ %.pre5245, %if.end1807.lr.ph ], [ %422, %while.body1791.backedge ]
  %cmp1810 = icmp eq i32 %416, 0, !dbg !587
  br i1 %cmp1810, label %save_state_and_return, label %if.end1813, !dbg !587

if.end1813:                                       ; preds = %if.end1807
  %419 = load i32* %bsBuff1814, align 4, !dbg !587, !tbaa !354
  %shl1815 = shl i32 %419, 8, !dbg !587
  %next_in1817 = getelementptr inbounds %struct.bz_stream* %418, i64 0, i32 0, !dbg !587
  %420 = load i8** %next_in1817, align 8, !dbg !587, !tbaa !350
  %421 = load i8* %420, align 1, !dbg !587, !tbaa !351
  %conv1818 = zext i8 %421 to i32, !dbg !587
  %or1819 = or i32 %conv1818, %shl1815, !dbg !587
  store i32 %or1819, i32* %bsBuff1814, align 4, !dbg !587, !tbaa !354
  %add1822 = add nsw i32 %417, 8, !dbg !587
  store i32 %add1822, i32* %bsLive1792, align 4, !dbg !587, !tbaa !354
  %incdec.ptr1825 = getelementptr inbounds i8* %420, i64 1, !dbg !587
  store i8* %incdec.ptr1825, i8** %next_in1817, align 8, !dbg !587, !tbaa !350
  %422 = load %struct.bz_stream** %strm1, align 8, !dbg !587, !tbaa !350
  %avail_in1827 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 1, !dbg !587
  %423 = load i32* %avail_in1827, align 4, !dbg !587, !tbaa !354
  %dec1828 = add i32 %423, -1, !dbg !587
  store i32 %dec1828, i32* %avail_in1827, align 4, !dbg !587, !tbaa !354
  %total_in_lo321830 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 2, !dbg !587
  %424 = load i32* %total_in_lo321830, align 4, !dbg !587, !tbaa !354
  %inc1831 = add i32 %424, 1, !dbg !587
  store i32 %inc1831, i32* %total_in_lo321830, align 4, !dbg !587, !tbaa !354
  %cmp1834 = icmp eq i32 %inc1831, 0, !dbg !587
  br i1 %cmp1834, label %if.then1836, label %while.body1791.backedge, !dbg !587

if.then1836:                                      ; preds = %if.end1813
  %total_in_hi321838 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 3, !dbg !587
  %425 = load i32* %total_in_hi321838, align 4, !dbg !587, !tbaa !354
  %inc1839 = add i32 %425, 1, !dbg !587
  store i32 %inc1839, i32* %total_in_hi321838, align 4, !dbg !587, !tbaa !354
  br label %while.body1791.backedge, !dbg !587

while.body1791.backedge:                          ; preds = %if.then1836, %if.end1813
  %426 = load i32* %bsLive1792, align 4, !dbg !587, !tbaa !354
  %cmp1793 = icmp slt i32 %426, %zn.0, !dbg !587
  br i1 %cmp1793, label %if.end1807, label %if.then1795, !dbg !587

while.body1843:                                   ; preds = %if.then1795, %if.then1862
  %427 = phi i32 [ %sub1867, %if.then1862 ], [ %sub1800, %if.then1795 ]
  %gPerm.2 = phi i32* [ %gPerm.3, %if.then1862 ], [ %gPerm.1, %if.then1795 ]
  %gBase.2 = phi i32* [ %gBase.3, %if.then1862 ], [ %gBase.1, %if.then1795 ]
  %gLimit.2 = phi i32* [ %gLimit.3, %if.then1862 ], [ %gLimit.1, %if.then1795 ]
  %gMinlen.2 = phi i32 [ %gMinlen.3, %if.then1862 ], [ %gMinlen.1, %if.then1795 ]
  %gSel.2 = phi i32 [ %gSel.3, %if.then1862 ], [ %gSel.1, %if.then1795 ]
  %zj.0 = phi i32 [ %and1869, %if.then1862 ], [ %8, %if.then1795 ]
  %zvec.0 = phi i32 [ %or1908, %if.then1862 ], [ %and1804, %if.then1795 ]
  %zn.1 = phi i32 [ %zn.2, %if.then1862 ], [ %zn.0, %if.then1795 ]
  %curr.7 = phi i32 [ %curr.8, %if.then1862 ], [ %curr.6, %if.then1795 ]
  %nblock.1 = phi i32 [ %nblock.2, %if.then1862 ], [ %nblock.0, %if.then1795 ]
  %nblockMAX.1 = phi i32 [ %nblockMAX.2, %if.then1862 ], [ %nblockMAX.0, %if.then1795 ]
  %groupPos.2 = phi i32 [ %groupPos.3, %if.then1862 ], [ %groupPos.1, %if.then1795 ]
  %groupNo.2 = phi i32 [ %groupNo.3, %if.then1862 ], [ %groupNo.1, %if.then1795 ]
  %EOB.1 = phi i32 [ %EOB.2, %if.then1862 ], [ %EOB.0, %if.then1795 ]
  %nSelectors.9 = phi i32 [ %nSelectors.10, %if.then1862 ], [ %nSelectors.8, %if.then1795 ]
  %nGroups.10 = phi i32 [ %nGroups.11, %if.then1862 ], [ %nGroups.9, %if.then1795 ]
  %alphaSize.11 = phi i32 [ %alphaSize.12, %if.then1862 ], [ %alphaSize.10, %if.then1795 ]
  %t.8 = phi i32 [ %t.9, %if.then1862 ], [ %t.7, %if.then1795 ]
  %j.15 = phi i32 [ %j.16, %if.then1862 ], [ %j.14, %if.then1795 ]
  %i.21 = phi i32 [ %i.22, %if.then1862 ], [ %i.20, %if.then1795 ]
  %cmp1844 = icmp sgt i32 %zn.1, 20, !dbg !589
  br i1 %cmp1844, label %save_state_and_return, label %if.end1847, !dbg !589

if.end1847:                                       ; preds = %while.body1843
  %idxprom1848 = sext i32 %zn.1 to i64, !dbg !589
  %arrayidx1849 = getelementptr inbounds i32* %gLimit.2, i64 %idxprom1848, !dbg !589
  %428 = load i32* %arrayidx1849, align 4, !dbg !589, !tbaa !354
  %cmp1850 = icmp sgt i32 %zvec.0, %428, !dbg !589
  br i1 %cmp1850, label %if.end1853, label %while.end1909, !dbg !589

if.end1853:                                       ; preds = %if.end1847
  %inc1854 = add nsw i32 %zn.1, 1, !dbg !589
  call void @llvm.dbg.value(metadata !{i32 %inc1854}, i64 0, metadata !164), !dbg !589
  %bsLive1859.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !413
  br label %sw.bb1855, !dbg !589

sw.bb1855:                                        ; preds = %if.end.sw.bb1855_crit_edge, %if.end1853
  %bsLive1859.pre-phi = phi i32* [ %bsLive1859.phi.trans.insert, %if.end.sw.bb1855_crit_edge ], [ %bsLive1859.pre, %if.end1853 ], !dbg !413
  %429 = phi i32 [ %.pre5339, %if.end.sw.bb1855_crit_edge ], [ %427, %if.end1853 ]
  %gPerm.3 = phi i32* [ %3, %if.end.sw.bb1855_crit_edge ], [ %gPerm.2, %if.end1853 ]
  %gBase.3 = phi i32* [ %4, %if.end.sw.bb1855_crit_edge ], [ %gBase.2, %if.end1853 ]
  %gLimit.3 = phi i32* [ %5, %if.end.sw.bb1855_crit_edge ], [ %gLimit.2, %if.end1853 ]
  %gMinlen.3 = phi i32 [ %6, %if.end.sw.bb1855_crit_edge ], [ %gMinlen.2, %if.end1853 ]
  %gSel.3 = phi i32 [ %7, %if.end.sw.bb1855_crit_edge ], [ %gSel.2, %if.end1853 ]
  %zj.1 = phi i32 [ %8, %if.end.sw.bb1855_crit_edge ], [ %zj.0, %if.end1853 ]
  %zvec.1 = phi i32 [ %9, %if.end.sw.bb1855_crit_edge ], [ %zvec.0, %if.end1853 ]
  %zn.2 = phi i32 [ %10, %if.end.sw.bb1855_crit_edge ], [ %inc1854, %if.end1853 ]
  %curr.8 = phi i32 [ %12, %if.end.sw.bb1855_crit_edge ], [ %curr.7, %if.end1853 ]
  %nblock.2 = phi i32 [ %15, %if.end.sw.bb1855_crit_edge ], [ %nblock.1, %if.end1853 ]
  %nblockMAX.2 = phi i32 [ %16, %if.end.sw.bb1855_crit_edge ], [ %nblockMAX.1, %if.end1853 ]
  %groupPos.3 = phi i32 [ %18, %if.end.sw.bb1855_crit_edge ], [ %groupPos.2, %if.end1853 ]
  %groupNo.3 = phi i32 [ %19, %if.end.sw.bb1855_crit_edge ], [ %groupNo.2, %if.end1853 ]
  %EOB.2 = phi i32 [ %20, %if.end.sw.bb1855_crit_edge ], [ %EOB.1, %if.end1853 ]
  %nSelectors.10 = phi i32 [ %21, %if.end.sw.bb1855_crit_edge ], [ %nSelectors.9, %if.end1853 ]
  %nGroups.11 = phi i32 [ %22, %if.end.sw.bb1855_crit_edge ], [ %nGroups.10, %if.end1853 ]
  %alphaSize.12 = phi i32 [ %23, %if.end.sw.bb1855_crit_edge ], [ %alphaSize.11, %if.end1853 ]
  %t.9 = phi i32 [ %24, %if.end.sw.bb1855_crit_edge ], [ %t.8, %if.end1853 ]
  %j.16 = phi i32 [ %25, %if.end.sw.bb1855_crit_edge ], [ %j.15, %if.end1853 ]
  %i.22 = phi i32 [ %26, %if.end.sw.bb1855_crit_edge ], [ %i.21, %if.end1853 ]
  store i32 37, i32* %state, align 4, !dbg !589, !tbaa !354
  %cmp18604845 = icmp sgt i32 %429, 0, !dbg !413
  %bsBuff1865.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !590
  br i1 %cmp18604845, label %if.then1862, label %if.end1872.lr.ph, !dbg !413

if.end1872.lr.ph:                                 ; preds = %sw.bb1855
  %.pre5246 = load %struct.bz_stream** %strm1, align 8, !dbg !413, !tbaa !350
  %avail_in1874.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5246, i64 0, i32 1
  %.pre5340 = load i32* %avail_in1874.phi.trans.insert, align 4, !dbg !413, !tbaa !354
  br label %if.end1872, !dbg !413

if.then1862:                                      ; preds = %sw.bb1855, %while.body1858.backedge
  %.lcssa4843 = phi i32 [ %441, %while.body1858.backedge ], [ %429, %sw.bb1855 ]
  %430 = load i32* %bsBuff1865.pre, align 4, !dbg !590, !tbaa !354
  %sub1867 = add nsw i32 %.lcssa4843, -1, !dbg !590
  %shr1868 = lshr i32 %430, %sub1867, !dbg !590
  %and1869 = and i32 %shr1868, 1, !dbg !590
  call void @llvm.dbg.value(metadata !{i32 %and1869}, i64 0, metadata !277), !dbg !590
  store i32 %sub1867, i32* %bsLive1859.pre-phi, align 4, !dbg !590, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1869}, i64 0, metadata !166), !dbg !590
  %shl1907 = shl i32 %zvec.1, 1, !dbg !589
  %or1908 = or i32 %and1869, %shl1907, !dbg !589
  call void @llvm.dbg.value(metadata !{i32 %or1908}, i64 0, metadata !165), !dbg !589
  br label %while.body1843, !dbg !589

if.end1872:                                       ; preds = %if.end1872.lr.ph, %while.body1858.backedge
  %431 = phi i32 [ %.pre5340, %if.end1872.lr.ph ], [ %dec1893, %while.body1858.backedge ]
  %432 = phi i32 [ %429, %if.end1872.lr.ph ], [ %441, %while.body1858.backedge ]
  %433 = phi %struct.bz_stream* [ %.pre5246, %if.end1872.lr.ph ], [ %437, %while.body1858.backedge ]
  %cmp1875 = icmp eq i32 %431, 0, !dbg !413
  br i1 %cmp1875, label %save_state_and_return, label %if.end1878, !dbg !413

if.end1878:                                       ; preds = %if.end1872
  %434 = load i32* %bsBuff1865.pre, align 4, !dbg !413, !tbaa !354
  %shl1880 = shl i32 %434, 8, !dbg !413
  %next_in1882 = getelementptr inbounds %struct.bz_stream* %433, i64 0, i32 0, !dbg !413
  %435 = load i8** %next_in1882, align 8, !dbg !413, !tbaa !350
  %436 = load i8* %435, align 1, !dbg !413, !tbaa !351
  %conv1883 = zext i8 %436 to i32, !dbg !413
  %or1884 = or i32 %conv1883, %shl1880, !dbg !413
  store i32 %or1884, i32* %bsBuff1865.pre, align 4, !dbg !413, !tbaa !354
  %add1887 = add nsw i32 %432, 8, !dbg !413
  store i32 %add1887, i32* %bsLive1859.pre-phi, align 4, !dbg !413, !tbaa !354
  %incdec.ptr1890 = getelementptr inbounds i8* %435, i64 1, !dbg !413
  store i8* %incdec.ptr1890, i8** %next_in1882, align 8, !dbg !413, !tbaa !350
  %437 = load %struct.bz_stream** %strm1, align 8, !dbg !413, !tbaa !350
  %avail_in1892 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 1, !dbg !413
  %438 = load i32* %avail_in1892, align 4, !dbg !413, !tbaa !354
  %dec1893 = add i32 %438, -1, !dbg !413
  store i32 %dec1893, i32* %avail_in1892, align 4, !dbg !413, !tbaa !354
  %total_in_lo321895 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 2, !dbg !413
  %439 = load i32* %total_in_lo321895, align 4, !dbg !413, !tbaa !354
  %inc1896 = add i32 %439, 1, !dbg !413
  store i32 %inc1896, i32* %total_in_lo321895, align 4, !dbg !413, !tbaa !354
  %cmp1899 = icmp eq i32 %inc1896, 0, !dbg !413
  br i1 %cmp1899, label %if.then1901, label %while.body1858.backedge, !dbg !413

if.then1901:                                      ; preds = %if.end1878
  %total_in_hi321903 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 3, !dbg !413
  %440 = load i32* %total_in_hi321903, align 4, !dbg !413, !tbaa !354
  %inc1904 = add i32 %440, 1, !dbg !413
  store i32 %inc1904, i32* %total_in_hi321903, align 4, !dbg !413, !tbaa !354
  br label %while.body1858.backedge, !dbg !413

while.body1858.backedge:                          ; preds = %if.then1901, %if.end1878
  %441 = load i32* %bsLive1859.pre-phi, align 4, !dbg !413, !tbaa !354
  %cmp1860 = icmp sgt i32 %441, 0, !dbg !413
  br i1 %cmp1860, label %if.then1862, label %if.end1872, !dbg !413

while.end1909:                                    ; preds = %if.end1847
  %arrayidx1911 = getelementptr inbounds i32* %gBase.2, i64 %idxprom1848, !dbg !586
  %442 = load i32* %arrayidx1911, align 4, !dbg !586, !tbaa !354
  %sub1912 = sub nsw i32 %zvec.0, %442, !dbg !586
  %443 = icmp ugt i32 %sub1912, 257, !dbg !586
  br i1 %443, label %save_state_and_return, label %if.end1922, !dbg !586

if.end1922:                                       ; preds = %while.end1909
  %idxprom1926 = sext i32 %sub1912 to i64, !dbg !586
  %arrayidx1927 = getelementptr inbounds i32* %gPerm.2, i64 %idxprom1926, !dbg !586
  %444 = load i32* %arrayidx1927, align 4, !dbg !586, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %444}, i64 0, metadata !157), !dbg !586
  br label %while.body1929, !dbg !591

while.body1929:                                   ; preds = %while.cond2142.preheader, %if.end2149, %while.cond2158.preheader, %if.end2165, %if.end1922, %if.end2543
  %gPerm.4 = phi i32* [ %gPerm.12, %if.end2543 ], [ %gPerm.2, %if.end1922 ], [ %gPerm.8, %if.end2165 ], [ %gPerm.8, %while.cond2158.preheader ], [ %gPerm.8, %if.end2149 ], [ %gPerm.8, %while.cond2142.preheader ]
  %gBase.4 = phi i32* [ %gBase.12, %if.end2543 ], [ %gBase.2, %if.end1922 ], [ %gBase.8, %if.end2165 ], [ %gBase.8, %while.cond2158.preheader ], [ %gBase.8, %if.end2149 ], [ %gBase.8, %while.cond2142.preheader ]
  %gLimit.4 = phi i32* [ %gLimit.12, %if.end2543 ], [ %gLimit.2, %if.end1922 ], [ %gLimit.8, %if.end2165 ], [ %gLimit.8, %while.cond2158.preheader ], [ %gLimit.8, %if.end2149 ], [ %gLimit.8, %while.cond2142.preheader ]
  %gMinlen.4 = phi i32 [ %gMinlen.12, %if.end2543 ], [ %gMinlen.2, %if.end1922 ], [ %gMinlen.8, %if.end2165 ], [ %gMinlen.8, %while.cond2158.preheader ], [ %gMinlen.8, %if.end2149 ], [ %gMinlen.8, %while.cond2142.preheader ]
  %gSel.4 = phi i32 [ %gSel.12, %if.end2543 ], [ %gSel.2, %if.end1922 ], [ %gSel.8, %if.end2165 ], [ %gSel.8, %while.cond2158.preheader ], [ %gSel.8, %if.end2149 ], [ %gSel.8, %while.cond2142.preheader ]
  %zj.2 = phi i32 [ %zj.8, %if.end2543 ], [ %zj.0, %if.end1922 ], [ %zj.5, %if.end2165 ], [ %zj.5, %while.cond2158.preheader ], [ %zj.5, %if.end2149 ], [ %zj.5, %while.cond2142.preheader ]
  %zvec.2 = phi i32 [ %zvec.8, %if.end2543 ], [ %zvec.0, %if.end1922 ], [ %zvec.5, %if.end2165 ], [ %zvec.5, %while.cond2158.preheader ], [ %zvec.5, %if.end2149 ], [ %zvec.5, %while.cond2142.preheader ]
  %zn.3 = phi i32 [ %zn.9, %if.end2543 ], [ %zn.1, %if.end1922 ], [ %zn.6, %if.end2165 ], [ %zn.6, %while.cond2158.preheader ], [ %zn.6, %if.end2149 ], [ %zn.6, %while.cond2142.preheader ]
  %curr.9 = phi i32 [ %curr.15, %if.end2543 ], [ %curr.7, %if.end1922 ], [ %curr.12, %if.end2165 ], [ %curr.12, %while.cond2158.preheader ], [ %curr.12, %if.end2149 ], [ %curr.12, %while.cond2142.preheader ]
  %N.0 = phi i32 [ %N.6, %if.end2543 ], [ %13, %if.end1922 ], [ %N.3, %if.end2165 ], [ %N.3, %while.cond2158.preheader ], [ %N.3, %if.end2149 ], [ %N.3, %while.cond2142.preheader ]
  %es.0 = phi i32 [ %es.9, %if.end2543 ], [ %14, %if.end1922 ], [ %dec2171, %if.end2165 ], [ %inc2127, %while.cond2158.preheader ], [ %dec2155, %if.end2149 ], [ %inc2127, %while.cond2142.preheader ]
  %nblock.3 = phi i32 [ %nblock.11, %if.end2543 ], [ %nblock.1, %if.end1922 ], [ %inc2170, %if.end2165 ], [ %nblock.6, %while.cond2158.preheader ], [ %inc2154, %if.end2149 ], [ %nblock.6, %while.cond2142.preheader ]
  %nblockMAX.3 = phi i32 [ %nblockMAX.9, %if.end2543 ], [ %nblockMAX.1, %if.end1922 ], [ %nblockMAX.6, %if.end2165 ], [ %nblockMAX.6, %while.cond2158.preheader ], [ %nblockMAX.6, %if.end2149 ], [ %nblockMAX.6, %while.cond2142.preheader ]
  %nextSym.0 = phi i32 [ %555, %if.end2543 ], [ %444, %if.end1922 ], [ %478, %if.end2165 ], [ %478, %while.cond2158.preheader ], [ %478, %if.end2149 ], [ %478, %while.cond2142.preheader ]
  %groupPos.4 = phi i32 [ %groupPos.12, %if.end2543 ], [ %groupPos.2, %if.end1922 ], [ %groupPos.8, %if.end2165 ], [ %groupPos.8, %while.cond2158.preheader ], [ %groupPos.8, %if.end2149 ], [ %groupPos.8, %while.cond2142.preheader ]
  %groupNo.4 = phi i32 [ %groupNo.12, %if.end2543 ], [ %groupNo.2, %if.end1922 ], [ %groupNo.8, %if.end2165 ], [ %groupNo.8, %while.cond2158.preheader ], [ %groupNo.8, %if.end2149 ], [ %groupNo.8, %while.cond2142.preheader ]
  %EOB.3 = phi i32 [ %EOB.9, %if.end2543 ], [ %EOB.1, %if.end1922 ], [ %EOB.6, %if.end2165 ], [ %EOB.6, %while.cond2158.preheader ], [ %EOB.6, %if.end2149 ], [ %EOB.6, %while.cond2142.preheader ]
  %nSelectors.11 = phi i32 [ %nSelectors.17, %if.end2543 ], [ %nSelectors.9, %if.end1922 ], [ %nSelectors.14, %if.end2165 ], [ %nSelectors.14, %while.cond2158.preheader ], [ %nSelectors.14, %if.end2149 ], [ %nSelectors.14, %while.cond2142.preheader ]
  %nGroups.12 = phi i32 [ %nGroups.18, %if.end2543 ], [ %nGroups.10, %if.end1922 ], [ %nGroups.15, %if.end2165 ], [ %nGroups.15, %while.cond2158.preheader ], [ %nGroups.15, %if.end2149 ], [ %nGroups.15, %while.cond2142.preheader ]
  %alphaSize.13 = phi i32 [ %alphaSize.19, %if.end2543 ], [ %alphaSize.11, %if.end1922 ], [ %alphaSize.16, %if.end2165 ], [ %alphaSize.16, %while.cond2158.preheader ], [ %alphaSize.16, %if.end2149 ], [ %alphaSize.16, %while.cond2142.preheader ]
  %t.10 = phi i32 [ %t.16, %if.end2543 ], [ %t.8, %if.end1922 ], [ %t.13, %if.end2165 ], [ %t.13, %while.cond2158.preheader ], [ %t.13, %if.end2149 ], [ %t.13, %while.cond2142.preheader ]
  %j.17 = phi i32 [ %j.23, %if.end2543 ], [ %j.15, %if.end1922 ], [ %j.20, %if.end2165 ], [ %j.20, %while.cond2158.preheader ], [ %j.20, %if.end2149 ], [ %j.20, %while.cond2142.preheader ]
  %i.23 = phi i32 [ %i.29, %if.end2543 ], [ %i.21, %if.end1922 ], [ %i.26, %if.end2165 ], [ %i.26, %while.cond2158.preheader ], [ %i.26, %if.end2149 ], [ %i.26, %while.cond2142.preheader ]
  %cmp1930 = icmp eq i32 %nextSym.0, %EOB.3, !dbg !592
  br i1 %cmp1930, label %while.end2549, label %if.end1933, !dbg !592

if.end1933:                                       ; preds = %while.body1929
  %445 = icmp ult i32 %nextSym.0, 2, !dbg !593
  br i1 %445, label %do.body, label %if.else2174, !dbg !593

do.body:                                          ; preds = %if.end1933, %if.end2117
  %gPerm.5 = phi i32* [ %gPerm.8, %if.end2117 ], [ %gPerm.4, %if.end1933 ]
  %gBase.5 = phi i32* [ %gBase.8, %if.end2117 ], [ %gBase.4, %if.end1933 ]
  %gLimit.5 = phi i32* [ %gLimit.8, %if.end2117 ], [ %gLimit.4, %if.end1933 ]
  %gMinlen.5 = phi i32 [ %gMinlen.8, %if.end2117 ], [ %gMinlen.4, %if.end1933 ]
  %gSel.5 = phi i32 [ %gSel.8, %if.end2117 ], [ %gSel.4, %if.end1933 ]
  %zj.3 = phi i32 [ %zj.5, %if.end2117 ], [ %zj.2, %if.end1933 ]
  %zvec.3 = phi i32 [ %zvec.5, %if.end2117 ], [ %zvec.2, %if.end1933 ]
  %zn.4 = phi i32 [ %zn.6, %if.end2117 ], [ %zn.3, %if.end1933 ]
  %curr.10 = phi i32 [ %curr.12, %if.end2117 ], [ %curr.9, %if.end1933 ]
  %N.1 = phi i32 [ %N.3, %if.end2117 ], [ 1, %if.end1933 ]
  %es.1 = phi i32 [ %es.4, %if.end2117 ], [ -1, %if.end1933 ]
  %nblock.4 = phi i32 [ %nblock.6, %if.end2117 ], [ %nblock.3, %if.end1933 ]
  %nblockMAX.4 = phi i32 [ %nblockMAX.6, %if.end2117 ], [ %nblockMAX.3, %if.end1933 ]
  %nextSym.1 = phi i32 [ %478, %if.end2117 ], [ %nextSym.0, %if.end1933 ]
  %groupPos.5 = phi i32 [ %groupPos.8, %if.end2117 ], [ %groupPos.4, %if.end1933 ]
  %groupNo.5 = phi i32 [ %groupNo.8, %if.end2117 ], [ %groupNo.4, %if.end1933 ]
  %EOB.4 = phi i32 [ %EOB.6, %if.end2117 ], [ %EOB.3, %if.end1933 ]
  %nSelectors.12 = phi i32 [ %nSelectors.14, %if.end2117 ], [ %nSelectors.11, %if.end1933 ]
  %nGroups.13 = phi i32 [ %nGroups.15, %if.end2117 ], [ %nGroups.12, %if.end1933 ]
  %alphaSize.14 = phi i32 [ %alphaSize.16, %if.end2117 ], [ %alphaSize.13, %if.end1933 ]
  %t.11 = phi i32 [ %t.13, %if.end2117 ], [ %t.10, %if.end1933 ]
  %j.18 = phi i32 [ %j.20, %if.end2117 ], [ %j.17, %if.end1933 ]
  %i.24 = phi i32 [ %i.26, %if.end2117 ], [ %i.23, %if.end1933 ]
  switch i32 %nextSym.1, label %if.end1952 [
    i32 0, label %if.then1942
    i32 1, label %if.then1948
  ], !dbg !594

if.then1942:                                      ; preds = %do.body
  %add1944 = add nsw i32 %es.1, %N.1, !dbg !594
  call void @llvm.dbg.value(metadata !{i32 %add1944}, i64 0, metadata !160), !dbg !594
  br label %if.end1952, !dbg !594

if.then1948:                                      ; preds = %do.body
  %mul1949 = shl i32 %N.1, 1, !dbg !595
  %add1950 = add nsw i32 %es.1, %mul1949, !dbg !595
  call void @llvm.dbg.value(metadata !{i32 %add1950}, i64 0, metadata !160), !dbg !595
  br label %if.end1952, !dbg !595

if.end1952:                                       ; preds = %do.body, %if.then1948, %if.then1942
  %es.2 = phi i32 [ %add1944, %if.then1942 ], [ %add1950, %if.then1948 ], [ %es.1, %do.body ]
  %mul1953 = shl nsw i32 %N.1, 1, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %mul1953}, i64 0, metadata !161), !dbg !596
  %cmp1954 = icmp eq i32 %groupPos.5, 0, !dbg !597
  br i1 %cmp1954, label %if.then1956, label %if.end1981, !dbg !597

if.then1956:                                      ; preds = %if.end1952
  %inc1957 = add nsw i32 %groupNo.5, 1, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %inc1957}, i64 0, metadata !155), !dbg !598
  %cmp1958 = icmp slt i32 %inc1957, %nSelectors.12, !dbg !598
  br i1 %cmp1958, label %if.end1961, label %save_state_and_return, !dbg !598

if.end1961:                                       ; preds = %if.then1956
  call void @llvm.dbg.value(metadata !584, i64 0, metadata !156), !dbg !598
  %idxprom1962 = sext i32 %inc1957 to i64, !dbg !598
  %arrayidx1964 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %idxprom1962, !dbg !598
  %446 = load i8* %arrayidx1964, align 1, !dbg !598, !tbaa !351
  %conv1965 = zext i8 %446 to i32, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %conv1965}, i64 0, metadata !167), !dbg !598
  %idxprom1966 = zext i8 %446 to i64, !dbg !598
  %arrayidx1968 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom1966, !dbg !598
  %447 = load i32* %arrayidx1968, align 4, !dbg !598, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %447}, i64 0, metadata !168), !dbg !598
  %arrayidx1972 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom1966, i64 0, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1972}, i64 0, metadata !169), !dbg !598
  %arrayidx1976 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom1966, i64 0, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1976}, i64 0, metadata !171), !dbg !598
  %arrayidx1980 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom1966, i64 0, !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %arrayidx1980}, i64 0, metadata !170), !dbg !598
  br label %if.end1981, !dbg !598

if.end1981:                                       ; preds = %if.end1961, %if.end1952
  %gPerm.6 = phi i32* [ %arrayidx1976, %if.end1961 ], [ %gPerm.5, %if.end1952 ]
  %gBase.6 = phi i32* [ %arrayidx1980, %if.end1961 ], [ %gBase.5, %if.end1952 ]
  %gLimit.6 = phi i32* [ %arrayidx1972, %if.end1961 ], [ %gLimit.5, %if.end1952 ]
  %gMinlen.6 = phi i32 [ %447, %if.end1961 ], [ %gMinlen.5, %if.end1952 ]
  %gSel.6 = phi i32 [ %conv1965, %if.end1961 ], [ %gSel.5, %if.end1952 ]
  %groupPos.6 = phi i32 [ 50, %if.end1961 ], [ %groupPos.5, %if.end1952 ]
  %groupNo.6 = phi i32 [ %inc1957, %if.end1961 ], [ %groupNo.5, %if.end1952 ]
  %dec1982 = add nsw i32 %groupPos.6, -1, !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %dec1982}, i64 0, metadata !156), !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %gMinlen.6}, i64 0, metadata !164), !dbg !597
  br label %sw.bb1983, !dbg !597

sw.bb1983:                                        ; preds = %if.end, %if.end1981
  %gPerm.7 = phi i32* [ %gPerm.6, %if.end1981 ], [ %3, %if.end ]
  %gBase.7 = phi i32* [ %gBase.6, %if.end1981 ], [ %4, %if.end ]
  %gLimit.7 = phi i32* [ %gLimit.6, %if.end1981 ], [ %5, %if.end ]
  %gMinlen.7 = phi i32 [ %gMinlen.6, %if.end1981 ], [ %6, %if.end ]
  %gSel.7 = phi i32 [ %gSel.6, %if.end1981 ], [ %7, %if.end ]
  %zj.4 = phi i32 [ %zj.3, %if.end1981 ], [ %8, %if.end ]
  %zvec.4 = phi i32 [ %zvec.3, %if.end1981 ], [ %9, %if.end ]
  %zn.5 = phi i32 [ %gMinlen.6, %if.end1981 ], [ %10, %if.end ]
  %curr.11 = phi i32 [ %curr.10, %if.end1981 ], [ %12, %if.end ]
  %N.2 = phi i32 [ %mul1953, %if.end1981 ], [ %13, %if.end ]
  %es.3 = phi i32 [ %es.2, %if.end1981 ], [ %14, %if.end ]
  %nblock.5 = phi i32 [ %nblock.4, %if.end1981 ], [ %15, %if.end ]
  %nblockMAX.5 = phi i32 [ %nblockMAX.4, %if.end1981 ], [ %16, %if.end ]
  %nextSym.2 = phi i32 [ %nextSym.1, %if.end1981 ], [ %17, %if.end ]
  %groupPos.7 = phi i32 [ %dec1982, %if.end1981 ], [ %18, %if.end ]
  %groupNo.7 = phi i32 [ %groupNo.6, %if.end1981 ], [ %19, %if.end ]
  %EOB.5 = phi i32 [ %EOB.4, %if.end1981 ], [ %20, %if.end ]
  %nSelectors.13 = phi i32 [ %nSelectors.12, %if.end1981 ], [ %21, %if.end ]
  %nGroups.14 = phi i32 [ %nGroups.13, %if.end1981 ], [ %22, %if.end ]
  %alphaSize.15 = phi i32 [ %alphaSize.14, %if.end1981 ], [ %23, %if.end ]
  %t.12 = phi i32 [ %t.11, %if.end1981 ], [ %24, %if.end ]
  %j.19 = phi i32 [ %j.18, %if.end1981 ], [ %25, %if.end ]
  %i.25 = phi i32 [ %i.24, %if.end1981 ], [ %26, %if.end ]
  store i32 38, i32* %state, align 4, !dbg !597, !tbaa !354
  %bsLive1987 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !600
  %448 = load i32* %bsLive1987, align 4, !dbg !600, !tbaa !354
  %cmp19884888 = icmp slt i32 %448, %zn.5, !dbg !600
  %bsBuff2009 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !600
  br i1 %cmp19884888, label %if.end2002.lr.ph, label %if.then1990, !dbg !600

if.end2002.lr.ph:                                 ; preds = %sw.bb1983
  %.pre5248 = load %struct.bz_stream** %strm1, align 8, !dbg !600, !tbaa !350
  %avail_in2004.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5248, i64 0, i32 1
  %.pre5344 = load i32* %avail_in2004.phi.trans.insert, align 4, !dbg !600, !tbaa !354
  br label %if.end2002, !dbg !600

if.then1990:                                      ; preds = %sw.bb1983, %while.body1986.backedge
  %.lcssa4886 = phi i32 [ %460, %while.body1986.backedge ], [ %448, %sw.bb1983 ]
  %449 = load i32* %bsBuff2009, align 4, !dbg !601, !tbaa !354
  %sub1995 = sub nsw i32 %.lcssa4886, %zn.5, !dbg !601
  %shr1996 = lshr i32 %449, %sub1995, !dbg !601
  %shl1997 = shl i32 1, %zn.5, !dbg !601
  %sub1998 = add nsw i32 %shl1997, -1, !dbg !601
  %and1999 = and i32 %shr1996, %sub1998, !dbg !601
  call void @llvm.dbg.value(metadata !{i32 %and1999}, i64 0, metadata !281), !dbg !601
  store i32 %sub1995, i32* %bsLive1987, align 4, !dbg !601, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and1999}, i64 0, metadata !165), !dbg !601
  br label %while.body2038, !dbg !597

if.end2002:                                       ; preds = %if.end2002.lr.ph, %while.body1986.backedge
  %450 = phi i32 [ %.pre5344, %if.end2002.lr.ph ], [ %dec2023, %while.body1986.backedge ]
  %451 = phi i32 [ %448, %if.end2002.lr.ph ], [ %460, %while.body1986.backedge ]
  %452 = phi %struct.bz_stream* [ %.pre5248, %if.end2002.lr.ph ], [ %456, %while.body1986.backedge ]
  %cmp2005 = icmp eq i32 %450, 0, !dbg !600
  br i1 %cmp2005, label %save_state_and_return, label %if.end2008, !dbg !600

if.end2008:                                       ; preds = %if.end2002
  %453 = load i32* %bsBuff2009, align 4, !dbg !600, !tbaa !354
  %shl2010 = shl i32 %453, 8, !dbg !600
  %next_in2012 = getelementptr inbounds %struct.bz_stream* %452, i64 0, i32 0, !dbg !600
  %454 = load i8** %next_in2012, align 8, !dbg !600, !tbaa !350
  %455 = load i8* %454, align 1, !dbg !600, !tbaa !351
  %conv2013 = zext i8 %455 to i32, !dbg !600
  %or2014 = or i32 %conv2013, %shl2010, !dbg !600
  store i32 %or2014, i32* %bsBuff2009, align 4, !dbg !600, !tbaa !354
  %add2017 = add nsw i32 %451, 8, !dbg !600
  store i32 %add2017, i32* %bsLive1987, align 4, !dbg !600, !tbaa !354
  %incdec.ptr2020 = getelementptr inbounds i8* %454, i64 1, !dbg !600
  store i8* %incdec.ptr2020, i8** %next_in2012, align 8, !dbg !600, !tbaa !350
  %456 = load %struct.bz_stream** %strm1, align 8, !dbg !600, !tbaa !350
  %avail_in2022 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 1, !dbg !600
  %457 = load i32* %avail_in2022, align 4, !dbg !600, !tbaa !354
  %dec2023 = add i32 %457, -1, !dbg !600
  store i32 %dec2023, i32* %avail_in2022, align 4, !dbg !600, !tbaa !354
  %total_in_lo322025 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 2, !dbg !600
  %458 = load i32* %total_in_lo322025, align 4, !dbg !600, !tbaa !354
  %inc2026 = add i32 %458, 1, !dbg !600
  store i32 %inc2026, i32* %total_in_lo322025, align 4, !dbg !600, !tbaa !354
  %cmp2029 = icmp eq i32 %inc2026, 0, !dbg !600
  br i1 %cmp2029, label %if.then2031, label %while.body1986.backedge, !dbg !600

if.then2031:                                      ; preds = %if.end2008
  %total_in_hi322033 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 3, !dbg !600
  %459 = load i32* %total_in_hi322033, align 4, !dbg !600, !tbaa !354
  %inc2034 = add i32 %459, 1, !dbg !600
  store i32 %inc2034, i32* %total_in_hi322033, align 4, !dbg !600, !tbaa !354
  br label %while.body1986.backedge, !dbg !600

while.body1986.backedge:                          ; preds = %if.then2031, %if.end2008
  %460 = load i32* %bsLive1987, align 4, !dbg !600, !tbaa !354
  %cmp1988 = icmp slt i32 %460, %zn.5, !dbg !600
  br i1 %cmp1988, label %if.end2002, label %if.then1990, !dbg !600

while.body2038:                                   ; preds = %if.then1990, %if.then2057
  %461 = phi i32 [ %sub1995, %if.then1990 ], [ %sub2062, %if.then2057 ]
  %gPerm.8 = phi i32* [ %gPerm.7, %if.then1990 ], [ %gPerm.9, %if.then2057 ]
  %gBase.8 = phi i32* [ %gBase.7, %if.then1990 ], [ %gBase.9, %if.then2057 ]
  %gLimit.8 = phi i32* [ %gLimit.7, %if.then1990 ], [ %gLimit.9, %if.then2057 ]
  %gMinlen.8 = phi i32 [ %gMinlen.7, %if.then1990 ], [ %gMinlen.9, %if.then2057 ]
  %gSel.8 = phi i32 [ %gSel.7, %if.then1990 ], [ %gSel.9, %if.then2057 ]
  %zj.5 = phi i32 [ %zj.4, %if.then1990 ], [ %and2064, %if.then2057 ]
  %zvec.5 = phi i32 [ %and1999, %if.then1990 ], [ %or2103, %if.then2057 ]
  %zn.6 = phi i32 [ %zn.5, %if.then1990 ], [ %zn.7, %if.then2057 ]
  %curr.12 = phi i32 [ %curr.11, %if.then1990 ], [ %curr.13, %if.then2057 ]
  %N.3 = phi i32 [ %N.2, %if.then1990 ], [ %N.4, %if.then2057 ]
  %es.4 = phi i32 [ %es.3, %if.then1990 ], [ %es.5, %if.then2057 ]
  %nblock.6 = phi i32 [ %nblock.5, %if.then1990 ], [ %nblock.7, %if.then2057 ]
  %nblockMAX.6 = phi i32 [ %nblockMAX.5, %if.then1990 ], [ %nblockMAX.7, %if.then2057 ]
  %nextSym.3 = phi i32 [ %nextSym.2, %if.then1990 ], [ %nextSym.4, %if.then2057 ]
  %groupPos.8 = phi i32 [ %groupPos.7, %if.then1990 ], [ %groupPos.9, %if.then2057 ]
  %groupNo.8 = phi i32 [ %groupNo.7, %if.then1990 ], [ %groupNo.9, %if.then2057 ]
  %EOB.6 = phi i32 [ %EOB.5, %if.then1990 ], [ %EOB.7, %if.then2057 ]
  %nSelectors.14 = phi i32 [ %nSelectors.13, %if.then1990 ], [ %nSelectors.15, %if.then2057 ]
  %nGroups.15 = phi i32 [ %nGroups.14, %if.then1990 ], [ %nGroups.16, %if.then2057 ]
  %alphaSize.16 = phi i32 [ %alphaSize.15, %if.then1990 ], [ %alphaSize.17, %if.then2057 ]
  %t.13 = phi i32 [ %t.12, %if.then1990 ], [ %t.14, %if.then2057 ]
  %j.20 = phi i32 [ %j.19, %if.then1990 ], [ %j.21, %if.then2057 ]
  %i.26 = phi i32 [ %i.25, %if.then1990 ], [ %i.27, %if.then2057 ]
  %cmp2039 = icmp sgt i32 %zn.6, 20, !dbg !602
  br i1 %cmp2039, label %save_state_and_return, label %if.end2042, !dbg !602

if.end2042:                                       ; preds = %while.body2038
  %idxprom2043 = sext i32 %zn.6 to i64, !dbg !602
  %arrayidx2044 = getelementptr inbounds i32* %gLimit.8, i64 %idxprom2043, !dbg !602
  %462 = load i32* %arrayidx2044, align 4, !dbg !602, !tbaa !354
  %cmp2045 = icmp sgt i32 %zvec.5, %462, !dbg !602
  br i1 %cmp2045, label %if.end2048, label %while.end2104, !dbg !602

if.end2048:                                       ; preds = %if.end2042
  %inc2049 = add nsw i32 %zn.6, 1, !dbg !602
  call void @llvm.dbg.value(metadata !{i32 %inc2049}, i64 0, metadata !164), !dbg !602
  %bsLive2054.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !414
  br label %sw.bb2050, !dbg !602

sw.bb2050:                                        ; preds = %if.end.sw.bb2050_crit_edge, %if.end2048
  %bsLive2054.pre-phi = phi i32* [ %bsLive2054.phi.trans.insert, %if.end.sw.bb2050_crit_edge ], [ %bsLive2054.pre, %if.end2048 ], !dbg !414
  %463 = phi i32 [ %.pre5345, %if.end.sw.bb2050_crit_edge ], [ %461, %if.end2048 ]
  %gPerm.9 = phi i32* [ %3, %if.end.sw.bb2050_crit_edge ], [ %gPerm.8, %if.end2048 ]
  %gBase.9 = phi i32* [ %4, %if.end.sw.bb2050_crit_edge ], [ %gBase.8, %if.end2048 ]
  %gLimit.9 = phi i32* [ %5, %if.end.sw.bb2050_crit_edge ], [ %gLimit.8, %if.end2048 ]
  %gMinlen.9 = phi i32 [ %6, %if.end.sw.bb2050_crit_edge ], [ %gMinlen.8, %if.end2048 ]
  %gSel.9 = phi i32 [ %7, %if.end.sw.bb2050_crit_edge ], [ %gSel.8, %if.end2048 ]
  %zj.6 = phi i32 [ %8, %if.end.sw.bb2050_crit_edge ], [ %zj.5, %if.end2048 ]
  %zvec.6 = phi i32 [ %9, %if.end.sw.bb2050_crit_edge ], [ %zvec.5, %if.end2048 ]
  %zn.7 = phi i32 [ %10, %if.end.sw.bb2050_crit_edge ], [ %inc2049, %if.end2048 ]
  %curr.13 = phi i32 [ %12, %if.end.sw.bb2050_crit_edge ], [ %curr.12, %if.end2048 ]
  %N.4 = phi i32 [ %13, %if.end.sw.bb2050_crit_edge ], [ %N.3, %if.end2048 ]
  %es.5 = phi i32 [ %14, %if.end.sw.bb2050_crit_edge ], [ %es.4, %if.end2048 ]
  %nblock.7 = phi i32 [ %15, %if.end.sw.bb2050_crit_edge ], [ %nblock.6, %if.end2048 ]
  %nblockMAX.7 = phi i32 [ %16, %if.end.sw.bb2050_crit_edge ], [ %nblockMAX.6, %if.end2048 ]
  %nextSym.4 = phi i32 [ %17, %if.end.sw.bb2050_crit_edge ], [ %nextSym.3, %if.end2048 ]
  %groupPos.9 = phi i32 [ %18, %if.end.sw.bb2050_crit_edge ], [ %groupPos.8, %if.end2048 ]
  %groupNo.9 = phi i32 [ %19, %if.end.sw.bb2050_crit_edge ], [ %groupNo.8, %if.end2048 ]
  %EOB.7 = phi i32 [ %20, %if.end.sw.bb2050_crit_edge ], [ %EOB.6, %if.end2048 ]
  %nSelectors.15 = phi i32 [ %21, %if.end.sw.bb2050_crit_edge ], [ %nSelectors.14, %if.end2048 ]
  %nGroups.16 = phi i32 [ %22, %if.end.sw.bb2050_crit_edge ], [ %nGroups.15, %if.end2048 ]
  %alphaSize.17 = phi i32 [ %23, %if.end.sw.bb2050_crit_edge ], [ %alphaSize.16, %if.end2048 ]
  %t.14 = phi i32 [ %24, %if.end.sw.bb2050_crit_edge ], [ %t.13, %if.end2048 ]
  %j.21 = phi i32 [ %25, %if.end.sw.bb2050_crit_edge ], [ %j.20, %if.end2048 ]
  %i.27 = phi i32 [ %26, %if.end.sw.bb2050_crit_edge ], [ %i.26, %if.end2048 ]
  store i32 39, i32* %state, align 4, !dbg !602, !tbaa !354
  %cmp20554864 = icmp sgt i32 %463, 0, !dbg !414
  %bsBuff2060.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !603
  br i1 %cmp20554864, label %if.then2057, label %if.end2067.lr.ph, !dbg !414

if.end2067.lr.ph:                                 ; preds = %sw.bb2050
  %.pre5249 = load %struct.bz_stream** %strm1, align 8, !dbg !414, !tbaa !350
  %avail_in2069.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5249, i64 0, i32 1
  %.pre5346 = load i32* %avail_in2069.phi.trans.insert, align 4, !dbg !414, !tbaa !354
  br label %if.end2067, !dbg !414

if.then2057:                                      ; preds = %sw.bb2050, %while.body2053.backedge
  %.lcssa4862 = phi i32 [ %475, %while.body2053.backedge ], [ %463, %sw.bb2050 ]
  %464 = load i32* %bsBuff2060.pre, align 4, !dbg !603, !tbaa !354
  %sub2062 = add nsw i32 %.lcssa4862, -1, !dbg !603
  %shr2063 = lshr i32 %464, %sub2062, !dbg !603
  %and2064 = and i32 %shr2063, 1, !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %and2064}, i64 0, metadata !288), !dbg !603
  store i32 %sub2062, i32* %bsLive2054.pre-phi, align 4, !dbg !603, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and2064}, i64 0, metadata !166), !dbg !603
  %shl2102 = shl i32 %zvec.6, 1, !dbg !602
  %or2103 = or i32 %and2064, %shl2102, !dbg !602
  call void @llvm.dbg.value(metadata !{i32 %or2103}, i64 0, metadata !165), !dbg !602
  br label %while.body2038, !dbg !602

if.end2067:                                       ; preds = %if.end2067.lr.ph, %while.body2053.backedge
  %465 = phi i32 [ %.pre5346, %if.end2067.lr.ph ], [ %dec2088, %while.body2053.backedge ]
  %466 = phi i32 [ %463, %if.end2067.lr.ph ], [ %475, %while.body2053.backedge ]
  %467 = phi %struct.bz_stream* [ %.pre5249, %if.end2067.lr.ph ], [ %471, %while.body2053.backedge ]
  %cmp2070 = icmp eq i32 %465, 0, !dbg !414
  br i1 %cmp2070, label %save_state_and_return, label %if.end2073, !dbg !414

if.end2073:                                       ; preds = %if.end2067
  %468 = load i32* %bsBuff2060.pre, align 4, !dbg !414, !tbaa !354
  %shl2075 = shl i32 %468, 8, !dbg !414
  %next_in2077 = getelementptr inbounds %struct.bz_stream* %467, i64 0, i32 0, !dbg !414
  %469 = load i8** %next_in2077, align 8, !dbg !414, !tbaa !350
  %470 = load i8* %469, align 1, !dbg !414, !tbaa !351
  %conv2078 = zext i8 %470 to i32, !dbg !414
  %or2079 = or i32 %conv2078, %shl2075, !dbg !414
  store i32 %or2079, i32* %bsBuff2060.pre, align 4, !dbg !414, !tbaa !354
  %add2082 = add nsw i32 %466, 8, !dbg !414
  store i32 %add2082, i32* %bsLive2054.pre-phi, align 4, !dbg !414, !tbaa !354
  %incdec.ptr2085 = getelementptr inbounds i8* %469, i64 1, !dbg !414
  store i8* %incdec.ptr2085, i8** %next_in2077, align 8, !dbg !414, !tbaa !350
  %471 = load %struct.bz_stream** %strm1, align 8, !dbg !414, !tbaa !350
  %avail_in2087 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 1, !dbg !414
  %472 = load i32* %avail_in2087, align 4, !dbg !414, !tbaa !354
  %dec2088 = add i32 %472, -1, !dbg !414
  store i32 %dec2088, i32* %avail_in2087, align 4, !dbg !414, !tbaa !354
  %total_in_lo322090 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 2, !dbg !414
  %473 = load i32* %total_in_lo322090, align 4, !dbg !414, !tbaa !354
  %inc2091 = add i32 %473, 1, !dbg !414
  store i32 %inc2091, i32* %total_in_lo322090, align 4, !dbg !414, !tbaa !354
  %cmp2094 = icmp eq i32 %inc2091, 0, !dbg !414
  br i1 %cmp2094, label %if.then2096, label %while.body2053.backedge, !dbg !414

if.then2096:                                      ; preds = %if.end2073
  %total_in_hi322098 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 3, !dbg !414
  %474 = load i32* %total_in_hi322098, align 4, !dbg !414, !tbaa !354
  %inc2099 = add i32 %474, 1, !dbg !414
  store i32 %inc2099, i32* %total_in_hi322098, align 4, !dbg !414, !tbaa !354
  br label %while.body2053.backedge, !dbg !414

while.body2053.backedge:                          ; preds = %if.then2096, %if.end2073
  %475 = load i32* %bsLive2054.pre-phi, align 4, !dbg !414, !tbaa !354
  %cmp2055 = icmp sgt i32 %475, 0, !dbg !414
  br i1 %cmp2055, label %if.then2057, label %if.end2067, !dbg !414

while.end2104:                                    ; preds = %if.end2042
  %arrayidx2106 = getelementptr inbounds i32* %gBase.8, i64 %idxprom2043, !dbg !597
  %476 = load i32* %arrayidx2106, align 4, !dbg !597, !tbaa !354
  %sub2107 = sub nsw i32 %zvec.5, %476, !dbg !597
  %477 = icmp ugt i32 %sub2107, 257, !dbg !597
  br i1 %477, label %save_state_and_return, label %if.end2117, !dbg !597

if.end2117:                                       ; preds = %while.end2104
  %idxprom2121 = sext i32 %sub2107 to i64, !dbg !597
  %arrayidx2122 = getelementptr inbounds i32* %gPerm.8, i64 %idxprom2121, !dbg !597
  %478 = load i32* %arrayidx2122, align 4, !dbg !597, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %478}, i64 0, metadata !157), !dbg !597
  %479 = icmp ult i32 %478, 2, !dbg !604
  br i1 %479, label %do.body, label %do.end, !dbg !604

do.end:                                           ; preds = %if.end2117
  %inc2127 = add nsw i32 %es.4, 1, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %inc2127}, i64 0, metadata !160), !dbg !605
  %arrayidx2129 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0, !dbg !606
  %480 = load i32* %arrayidx2129, align 4, !dbg !606, !tbaa !354
  %idxprom2130 = sext i32 %480 to i64, !dbg !606
  %arrayidx2132 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2130, !dbg !606
  %481 = load i8* %arrayidx2132, align 1, !dbg !606, !tbaa !351
  %idxprom2133 = zext i8 %481 to i64, !dbg !606
  %arrayidx2134 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2133, !dbg !606
  %482 = load i8* %arrayidx2134, align 1, !dbg !606, !tbaa !351
  call void @llvm.dbg.value(metadata !{i8 %482}, i64 0, metadata !143), !dbg !606
  %idxprom2135 = zext i8 %482 to i64, !dbg !607
  %arrayidx2137 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %idxprom2135, !dbg !607
  %483 = load i32* %arrayidx2137, align 4, !dbg !607, !tbaa !354
  %add2138 = add nsw i32 %483, %inc2127, !dbg !607
  store i32 %add2138, i32* %arrayidx2137, align 4, !dbg !607, !tbaa !354
  %smallDecompress2139 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10, !dbg !608
  %484 = load i8* %smallDecompress2139, align 1, !dbg !608, !tbaa !351
  %tobool2140 = icmp eq i8 %484, 0, !dbg !608
  %cmp21594870 = icmp sgt i32 %es.4, -1, !dbg !609
  br i1 %tobool2140, label %while.cond2158.preheader, label %while.cond2142.preheader, !dbg !608

while.cond2142.preheader:                         ; preds = %do.end
  br i1 %cmp21594870, label %while.body2145.lr.ph, label %while.body1929, !dbg !610

while.body2145.lr.ph:                             ; preds = %while.cond2142.preheader
  %conv2150 = zext i8 %482 to i16, !dbg !611
  %ll162152 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21, !dbg !611
  %485 = sext i32 %nblock.6 to i64
  br label %while.body2145, !dbg !610

while.cond2158.preheader:                         ; preds = %do.end
  br i1 %cmp21594870, label %while.body2161.lr.ph, label %while.body1929, !dbg !609

while.body2161.lr.ph:                             ; preds = %while.cond2158.preheader
  %conv2166 = zext i8 %482 to i32, !dbg !613
  %tt2168 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20, !dbg !613
  %486 = sext i32 %nblock.6 to i64
  br label %while.body2161, !dbg !609

while.body2145:                                   ; preds = %while.body2145.lr.ph, %if.end2149
  %indvars.iv5138 = phi i64 [ %485, %while.body2145.lr.ph ], [ %indvars.iv.next5139, %if.end2149 ]
  %nblock.84881 = phi i32 [ %nblock.6, %while.body2145.lr.ph ], [ %inc2154, %if.end2149 ]
  %es.64880 = phi i32 [ %inc2127, %while.body2145.lr.ph ], [ %dec2155, %if.end2149 ]
  %487 = trunc i64 %indvars.iv5138 to i32, !dbg !615
  %cmp2146 = icmp slt i32 %487, %nblockMAX.6, !dbg !615
  br i1 %cmp2146, label %if.end2149, label %save_state_and_return, !dbg !615

if.end2149:                                       ; preds = %while.body2145
  %488 = load i16** %ll162152, align 8, !dbg !611, !tbaa !350
  %arrayidx2153 = getelementptr inbounds i16* %488, i64 %indvars.iv5138, !dbg !611
  store i16 %conv2150, i16* %arrayidx2153, align 2, !dbg !611, !tbaa !616
  %indvars.iv.next5139 = add i64 %indvars.iv5138, 1, !dbg !610
  %inc2154 = add nsw i32 %nblock.84881, 1, !dbg !617
  call void @llvm.dbg.value(metadata !{i32 %inc2154}, i64 0, metadata !159), !dbg !617
  %dec2155 = add nsw i32 %es.64880, -1, !dbg !618
  call void @llvm.dbg.value(metadata !{i32 %dec2155}, i64 0, metadata !160), !dbg !618
  %cmp2143 = icmp sgt i32 %dec2155, 0, !dbg !610
  br i1 %cmp2143, label %while.body2145, label %while.body1929, !dbg !610

while.body2161:                                   ; preds = %while.body2161.lr.ph, %if.end2165
  %indvars.iv5134 = phi i64 [ %486, %while.body2161.lr.ph ], [ %indvars.iv.next5135, %if.end2165 ]
  %nblock.94872 = phi i32 [ %nblock.6, %while.body2161.lr.ph ], [ %inc2170, %if.end2165 ]
  %es.74871 = phi i32 [ %inc2127, %while.body2161.lr.ph ], [ %dec2171, %if.end2165 ]
  %489 = trunc i64 %indvars.iv5134 to i32, !dbg !619
  %cmp2162 = icmp slt i32 %489, %nblockMAX.6, !dbg !619
  br i1 %cmp2162, label %if.end2165, label %save_state_and_return, !dbg !619

if.end2165:                                       ; preds = %while.body2161
  %490 = load i32** %tt2168, align 8, !dbg !613, !tbaa !350
  %arrayidx2169 = getelementptr inbounds i32* %490, i64 %indvars.iv5134, !dbg !613
  store i32 %conv2166, i32* %arrayidx2169, align 4, !dbg !613, !tbaa !354
  %indvars.iv.next5135 = add i64 %indvars.iv5134, 1, !dbg !609
  %inc2170 = add nsw i32 %nblock.94872, 1, !dbg !620
  call void @llvm.dbg.value(metadata !{i32 %inc2170}, i64 0, metadata !159), !dbg !620
  %dec2171 = add nsw i32 %es.74871, -1, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %dec2171}, i64 0, metadata !160), !dbg !621
  %cmp2159 = icmp sgt i32 %dec2171, 0, !dbg !609
  br i1 %cmp2159, label %while.body2161, label %while.body1929, !dbg !609

if.else2174:                                      ; preds = %if.end1933
  %cmp2175 = icmp slt i32 %nblock.3, %nblockMAX.3, !dbg !622
  br i1 %cmp2175, label %if.end2178, label %save_state_and_return, !dbg !622

if.end2178:                                       ; preds = %if.else2174
  %sub2189 = add i32 %nextSym.0, -1, !dbg !623
  call void @llvm.dbg.value(metadata !{i32 %sub2189}, i64 0, metadata !300), !dbg !623
  %cmp2190 = icmp ult i32 %sub2189, 16, !dbg !624
  br i1 %cmp2190, label %if.then2192, label %if.else2256, !dbg !624

if.then2192:                                      ; preds = %if.end2178
  %arrayidx2194 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0, !dbg !625
  %491 = load i32* %arrayidx2194, align 4, !dbg !625, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %491}, i64 0, metadata !297), !dbg !625
  %add2195 = add i32 %491, %sub2189, !dbg !626
  %idxprom2196 = zext i32 %add2195 to i64, !dbg !626
  %arrayidx2198 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2196, !dbg !626
  %492 = load i8* %arrayidx2198, align 1, !dbg !626, !tbaa !351
  call void @llvm.dbg.value(metadata !{i8 %492}, i64 0, metadata !143), !dbg !626
  %cmp22004907 = icmp ugt i32 %sub2189, 3, !dbg !627
  br i1 %cmp22004907, label %while.body2202, label %while.cond2238.preheader, !dbg !627

while.cond2238.preheader:                         ; preds = %while.body2202, %if.then2192
  %nn.0.lcssa = phi i32 [ %sub2189, %if.then2192 ], [ %sub2236, %while.body2202 ]
  %cmp22394905 = icmp eq i32 %nn.0.lcssa, 0, !dbg !628
  br i1 %cmp22394905, label %while.end2252, label %while.body2241.lr.ph, !dbg !628

while.body2241.lr.ph:                             ; preds = %while.cond2238.preheader
  %493 = zext i32 %nn.0.lcssa to i64
  br label %while.body2241, !dbg !628

while.body2202:                                   ; preds = %if.then2192, %while.body2202
  %nn.04908 = phi i32 [ %sub2236, %while.body2202 ], [ %sub2189, %if.then2192 ]
  %add2204 = add i32 %nn.04908, %491, !dbg !629
  call void @llvm.dbg.value(metadata !{i32 %add2204}, i64 0, metadata !301), !dbg !629
  %sub2205 = add nsw i32 %add2204, -1, !dbg !630
  %idxprom2206 = sext i32 %sub2205 to i64, !dbg !630
  %arrayidx2208 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2206, !dbg !630
  %494 = load i8* %arrayidx2208, align 1, !dbg !630, !tbaa !351
  %idxprom2209 = sext i32 %add2204 to i64, !dbg !630
  %arrayidx2211 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2209, !dbg !630
  store i8 %494, i8* %arrayidx2211, align 1, !dbg !630, !tbaa !351
  %sub2212 = add nsw i32 %add2204, -2, !dbg !631
  %idxprom2213 = sext i32 %sub2212 to i64, !dbg !631
  %arrayidx2215 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2213, !dbg !631
  %495 = load i8* %arrayidx2215, align 1, !dbg !631, !tbaa !351
  store i8 %495, i8* %arrayidx2208, align 1, !dbg !631, !tbaa !351
  %sub2220 = add nsw i32 %add2204, -3, !dbg !632
  %idxprom2221 = sext i32 %sub2220 to i64, !dbg !632
  %arrayidx2223 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2221, !dbg !632
  %496 = load i8* %arrayidx2223, align 1, !dbg !632, !tbaa !351
  store i8 %496, i8* %arrayidx2215, align 1, !dbg !632, !tbaa !351
  %sub2228 = add nsw i32 %add2204, -4, !dbg !633
  %idxprom2229 = sext i32 %sub2228 to i64, !dbg !633
  %arrayidx2231 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2229, !dbg !633
  %497 = load i8* %arrayidx2231, align 1, !dbg !633, !tbaa !351
  store i8 %497, i8* %arrayidx2223, align 1, !dbg !633, !tbaa !351
  %sub2236 = add i32 %nn.04908, -4, !dbg !634
  call void @llvm.dbg.value(metadata !{i32 %sub2236}, i64 0, metadata !300), !dbg !634
  %cmp2200 = icmp ugt i32 %sub2236, 3, !dbg !627
  br i1 %cmp2200, label %while.body2202, label %while.cond2238.preheader, !dbg !627

while.body2241:                                   ; preds = %while.body2241.lr.ph, %while.body2241
  %indvars.iv5143 = phi i64 [ %493, %while.body2241.lr.ph ], [ %indvars.iv.next5144, %while.body2241 ]
  %nn.14906 = phi i32 [ %nn.0.lcssa, %while.body2241.lr.ph ], [ %dec2251, %while.body2241 ]
  %498 = trunc i64 %indvars.iv5143 to i32, !dbg !635
  %add2242 = add i32 %498, %491, !dbg !635
  %sub2243 = add i32 %add2242, -1, !dbg !635
  %idxprom2244 = zext i32 %sub2243 to i64, !dbg !635
  %arrayidx2246 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2244, !dbg !635
  %499 = load i8* %arrayidx2246, align 1, !dbg !635, !tbaa !351
  %idxprom2248 = zext i32 %add2242 to i64, !dbg !635
  %arrayidx2250 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2248, !dbg !635
  store i8 %499, i8* %arrayidx2250, align 1, !dbg !635, !tbaa !351
  %dec2251 = add i32 %nn.14906, -1, !dbg !635
  call void @llvm.dbg.value(metadata !{i32 %dec2251}, i64 0, metadata !300), !dbg !635
  %cmp2239 = icmp eq i32 %dec2251, 0, !dbg !628
  %indvars.iv.next5144 = add i64 %indvars.iv5143, -1, !dbg !628
  br i1 %cmp2239, label %while.end2252, label %while.body2241, !dbg !628

while.end2252:                                    ; preds = %while.body2241, %while.cond2238.preheader
  %idxprom2253 = sext i32 %491 to i64, !dbg !637
  %arrayidx2255 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2253, !dbg !637
  store i8 %492, i8* %arrayidx2255, align 1, !dbg !637, !tbaa !351
  br label %if.end2352, !dbg !638

if.else2256:                                      ; preds = %if.end2178
  %div = lshr i32 %sub2189, 4, !dbg !639
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !298), !dbg !639
  %rem = and i32 %sub2189, 15, !dbg !641
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !299), !dbg !641
  %idxprom22574720 = zext i32 %div to i64, !dbg !642
  %arrayidx2259 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %idxprom22574720, !dbg !642
  %500 = load i32* %arrayidx2259, align 4, !dbg !642, !tbaa !354
  %add2260 = add nsw i32 %500, %rem, !dbg !642
  call void @llvm.dbg.value(metadata !{i32 %add2260}, i64 0, metadata !297), !dbg !642
  %idxprom2261 = sext i32 %add2260 to i64, !dbg !643
  %arrayidx2263 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2261, !dbg !643
  %501 = load i8* %arrayidx2263, align 1, !dbg !643, !tbaa !351
  call void @llvm.dbg.value(metadata !{i8 %501}, i64 0, metadata !143), !dbg !643
  %cmp22684917 = icmp eq i32 %rem, 0, !dbg !644
  br i1 %cmp22684917, label %while.end2279, label %while.body2270.lr.ph, !dbg !644

while.body2270.lr.ph:                             ; preds = %if.else2256
  %502 = and i32 %sub2189, 15
  %503 = add i32 %500, %502, !dbg !644
  %504 = sext i32 %503 to i64
  br label %while.body2270, !dbg !644

while.body2270:                                   ; preds = %while.body2270.lr.ph, %while.body2270
  %indvars.iv5157 = phi i64 [ %504, %while.body2270.lr.ph ], [ %indvars.iv.next5158, %while.body2270 ]
  %indvars.iv.next5158 = add i64 %indvars.iv5157, -1, !dbg !644
  %arrayidx2274 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv.next5158, !dbg !645
  %505 = load i8* %arrayidx2274, align 1, !dbg !645, !tbaa !351
  %arrayidx2277 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5157, !dbg !645
  store i8 %505, i8* %arrayidx2277, align 1, !dbg !645, !tbaa !351
  %506 = load i32* %arrayidx2259, align 4, !dbg !644, !tbaa !354
  %507 = trunc i64 %indvars.iv.next5158 to i32, !dbg !644
  %cmp2268 = icmp sgt i32 %507, %506, !dbg !644
  br i1 %cmp2268, label %while.body2270, label %while.end2279, !dbg !644

while.end2279:                                    ; preds = %while.body2270, %if.else2256
  %.lcssa4916 = phi i32 [ %500, %if.else2256 ], [ %506, %while.body2270 ]
  %inc2283 = add nsw i32 %.lcssa4916, 1, !dbg !647
  store i32 %inc2283, i32* %arrayidx2259, align 4, !dbg !647, !tbaa !354
  %cmp22854914 = icmp eq i32 %div, 0, !dbg !648
  br i1 %cmp22854914, label %while.end2308, label %while.body2287, !dbg !648

while.body2287:                                   ; preds = %while.end2279, %while.body2287.while.body2287_crit_edge
  %508 = phi i32 [ %.pre5343, %while.body2287.while.body2287_crit_edge ], [ %inc2283, %while.end2279 ]
  %indvars.iv5154 = phi i64 [ %indvars.iv.next5155, %while.body2287.while.body2287_crit_edge ], [ %idxprom22574720, %while.end2279 ]
  %arrayidx2290 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5154, !dbg !649
  %dec2291 = add nsw i32 %508, -1, !dbg !649
  store i32 %dec2291, i32* %arrayidx2290, align 4, !dbg !649, !tbaa !354
  %indvars.iv.next5155 = add i64 %indvars.iv5154, -1, !dbg !648
  %arrayidx2295 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv.next5155, !dbg !651
  %509 = load i32* %arrayidx2295, align 4, !dbg !651, !tbaa !354
  %sub2297 = add nsw i32 %509, 15, !dbg !651
  %idxprom2298 = sext i32 %sub2297 to i64, !dbg !651
  %arrayidx2300 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2298, !dbg !651
  %510 = load i8* %arrayidx2300, align 1, !dbg !651, !tbaa !351
  %idxprom2304 = sext i32 %dec2291 to i64, !dbg !651
  %arrayidx2306 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2304, !dbg !651
  store i8 %510, i8* %arrayidx2306, align 1, !dbg !651, !tbaa !351
  %511 = trunc i64 %indvars.iv.next5155 to i32, !dbg !648
  %cmp2285 = icmp sgt i32 %511, 0, !dbg !648
  br i1 %cmp2285, label %while.body2287.while.body2287_crit_edge, label %while.end2308, !dbg !648

while.body2287.while.body2287_crit_edge:          ; preds = %while.body2287
  %.pre5343 = load i32* %arrayidx2295, align 4, !dbg !649, !tbaa !354
  br label %while.body2287, !dbg !648

while.end2308:                                    ; preds = %while.body2287, %while.end2279
  %arrayidx2310 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0, !dbg !652
  %512 = load i32* %arrayidx2310, align 4, !dbg !652, !tbaa !354
  %dec2311 = add nsw i32 %512, -1, !dbg !652
  store i32 %dec2311, i32* %arrayidx2310, align 4, !dbg !652, !tbaa !354
  %idxprom2314 = sext i32 %dec2311 to i64, !dbg !653
  %arrayidx2316 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2314, !dbg !653
  store i8 %501, i8* %arrayidx2316, align 1, !dbg !653, !tbaa !351
  %513 = load i32* %arrayidx2310, align 4, !dbg !654, !tbaa !354
  %cmp2319 = icmp eq i32 %513, 0, !dbg !654
  br i1 %cmp2319, label %for.cond2326.preheader, label %if.end2352, !dbg !654

for.cond2326.preheader:                           ; preds = %while.end2308, %for.end2343
  %indvars.iv5152 = phi i64 [ %indvars.iv.next5153, %for.end2343 ], [ 15, %while.end2308 ], !dbg !655
  %indvars.iv5150 = phi i64 [ %indvars.iv.next5151, %for.end2343 ], [ 4095, %while.end2308 ]
  %indvars.iv5148 = phi i32 [ %indvars.iv.next5149, %for.end2343 ], [ 4080, %while.end2308 ], !dbg !658
  %arrayidx2332 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5152, !dbg !661
  br label %for.body2329, !dbg !658

for.body2329:                                     ; preds = %for.cond2326.preheader, %for.body2329
  %indvars.iv5146 = phi i64 [ %indvars.iv5150, %for.cond2326.preheader ], [ %indvars.iv.next5147, %for.body2329 ]
  %jj2182.04910 = phi i32 [ 15, %for.cond2326.preheader ], [ %dec2342, %for.body2329 ]
  %514 = load i32* %arrayidx2332, align 4, !dbg !661, !tbaa !354
  %add2333 = add nsw i32 %514, %jj2182.04910, !dbg !661
  %idxprom2334 = sext i32 %add2333 to i64, !dbg !661
  %arrayidx2336 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2334, !dbg !661
  %515 = load i8* %arrayidx2336, align 1, !dbg !661, !tbaa !351
  %arrayidx2339 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5146, !dbg !661
  store i8 %515, i8* %arrayidx2339, align 1, !dbg !661, !tbaa !351
  %indvars.iv.next5147 = add i64 %indvars.iv5146, -1, !dbg !658
  %dec2342 = add nsw i32 %jj2182.04910, -1, !dbg !658
  call void @llvm.dbg.value(metadata !{i32 %dec2342}, i64 0, metadata !295), !dbg !658
  %cmp2327 = icmp sgt i32 %jj2182.04910, 0, !dbg !658
  br i1 %cmp2327, label %for.body2329, label %for.end2343, !dbg !658

for.end2343:                                      ; preds = %for.body2329
  %indvars.iv.next5151 = add i64 %indvars.iv5150, -16, !dbg !655
  store i32 %indvars.iv5148, i32* %arrayidx2332, align 4, !dbg !663, !tbaa !354
  %indvars.iv.next5153 = add i64 %indvars.iv5152, -1, !dbg !655
  %516 = trunc i64 %indvars.iv5152 to i32, !dbg !655
  %cmp2323 = icmp sgt i32 %516, 0, !dbg !655
  %indvars.iv.next5149 = add i32 %indvars.iv5148, -16, !dbg !655
  br i1 %cmp2323, label %for.cond2326.preheader, label %if.end2352, !dbg !655

if.end2352:                                       ; preds = %for.end2343, %while.end2308, %while.end2252
  %uc.0 = phi i8 [ %492, %while.end2252 ], [ %501, %while.end2308 ], [ %501, %for.end2343 ]
  %idxprom2353 = zext i8 %uc.0 to i64, !dbg !664
  %arrayidx2355 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2353, !dbg !664
  %517 = load i8* %arrayidx2355, align 1, !dbg !664, !tbaa !351
  %idxprom2356 = zext i8 %517 to i64, !dbg !664
  %arrayidx2358 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %idxprom2356, !dbg !664
  %518 = load i32* %arrayidx2358, align 4, !dbg !664, !tbaa !354
  %inc2359 = add nsw i32 %518, 1, !dbg !664
  store i32 %inc2359, i32* %arrayidx2358, align 4, !dbg !664, !tbaa !354
  %smallDecompress2360 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10, !dbg !665
  %519 = load i8* %smallDecompress2360, align 1, !dbg !665, !tbaa !351
  %tobool2361 = icmp eq i8 %519, 0, !dbg !665
  %520 = load i8* %arrayidx2355, align 1, !dbg !666, !tbaa !351
  br i1 %tobool2361, label %if.else2370, label %if.then2362, !dbg !665

if.then2362:                                      ; preds = %if.end2352
  %conv2366 = zext i8 %520 to i16, !dbg !666
  %idxprom2367 = sext i32 %nblock.3 to i64, !dbg !666
  %ll162368 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21, !dbg !666
  %521 = load i16** %ll162368, align 8, !dbg !666, !tbaa !350
  %arrayidx2369 = getelementptr inbounds i16* %521, i64 %idxprom2367, !dbg !666
  store i16 %conv2366, i16* %arrayidx2369, align 2, !dbg !666, !tbaa !616
  br label %if.end2378, !dbg !666

if.else2370:                                      ; preds = %if.end2352
  %conv2374 = zext i8 %520 to i32, !dbg !667
  %idxprom2375 = sext i32 %nblock.3 to i64, !dbg !667
  %tt2376 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20, !dbg !667
  %522 = load i32** %tt2376, align 8, !dbg !667, !tbaa !350
  %arrayidx2377 = getelementptr inbounds i32* %522, i64 %idxprom2375, !dbg !667
  store i32 %conv2374, i32* %arrayidx2377, align 4, !dbg !667, !tbaa !354
  br label %if.end2378

if.end2378:                                       ; preds = %if.else2370, %if.then2362
  %inc2379 = add nsw i32 %nblock.3, 1, !dbg !668
  call void @llvm.dbg.value(metadata !{i32 %inc2379}, i64 0, metadata !159), !dbg !668
  %cmp2380 = icmp eq i32 %groupPos.4, 0, !dbg !669
  br i1 %cmp2380, label %if.then2382, label %if.end2407, !dbg !669

if.then2382:                                      ; preds = %if.end2378
  %inc2383 = add nsw i32 %groupNo.4, 1, !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %inc2383}, i64 0, metadata !155), !dbg !670
  %cmp2384 = icmp slt i32 %inc2383, %nSelectors.11, !dbg !670
  br i1 %cmp2384, label %if.end2387, label %save_state_and_return, !dbg !670

if.end2387:                                       ; preds = %if.then2382
  call void @llvm.dbg.value(metadata !584, i64 0, metadata !156), !dbg !670
  %idxprom2388 = sext i32 %inc2383 to i64, !dbg !670
  %arrayidx2390 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %idxprom2388, !dbg !670
  %523 = load i8* %arrayidx2390, align 1, !dbg !670, !tbaa !351
  %conv2391 = zext i8 %523 to i32, !dbg !670
  call void @llvm.dbg.value(metadata !{i32 %conv2391}, i64 0, metadata !167), !dbg !670
  %idxprom2392 = zext i8 %523 to i64, !dbg !670
  %arrayidx2394 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom2392, !dbg !670
  %524 = load i32* %arrayidx2394, align 4, !dbg !670, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %524}, i64 0, metadata !168), !dbg !670
  %arrayidx2398 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom2392, i64 0, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %arrayidx2398}, i64 0, metadata !169), !dbg !670
  %arrayidx2402 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom2392, i64 0, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %arrayidx2402}, i64 0, metadata !171), !dbg !670
  %arrayidx2406 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom2392, i64 0, !dbg !670
  call void @llvm.dbg.value(metadata !{i32* %arrayidx2406}, i64 0, metadata !170), !dbg !670
  br label %if.end2407, !dbg !670

if.end2407:                                       ; preds = %if.end2387, %if.end2378
  %gPerm.10 = phi i32* [ %arrayidx2402, %if.end2387 ], [ %gPerm.4, %if.end2378 ]
  %gBase.10 = phi i32* [ %arrayidx2406, %if.end2387 ], [ %gBase.4, %if.end2378 ]
  %gLimit.10 = phi i32* [ %arrayidx2398, %if.end2387 ], [ %gLimit.4, %if.end2378 ]
  %gMinlen.10 = phi i32 [ %524, %if.end2387 ], [ %gMinlen.4, %if.end2378 ]
  %gSel.10 = phi i32 [ %conv2391, %if.end2387 ], [ %gSel.4, %if.end2378 ]
  %groupPos.10 = phi i32 [ 50, %if.end2387 ], [ %groupPos.4, %if.end2378 ]
  %groupNo.10 = phi i32 [ %inc2383, %if.end2387 ], [ %groupNo.4, %if.end2378 ]
  %dec2408 = add nsw i32 %groupPos.10, -1, !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %dec2408}, i64 0, metadata !156), !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %gMinlen.10}, i64 0, metadata !164), !dbg !669
  br label %sw.bb2409, !dbg !669

sw.bb2409:                                        ; preds = %if.end, %if.end2407
  %gPerm.11 = phi i32* [ %gPerm.10, %if.end2407 ], [ %3, %if.end ]
  %gBase.11 = phi i32* [ %gBase.10, %if.end2407 ], [ %4, %if.end ]
  %gLimit.11 = phi i32* [ %gLimit.10, %if.end2407 ], [ %5, %if.end ]
  %gMinlen.11 = phi i32 [ %gMinlen.10, %if.end2407 ], [ %6, %if.end ]
  %gSel.11 = phi i32 [ %gSel.10, %if.end2407 ], [ %7, %if.end ]
  %zj.7 = phi i32 [ %zj.2, %if.end2407 ], [ %8, %if.end ]
  %zvec.7 = phi i32 [ %zvec.2, %if.end2407 ], [ %9, %if.end ]
  %zn.8 = phi i32 [ %gMinlen.10, %if.end2407 ], [ %10, %if.end ]
  %curr.14 = phi i32 [ %curr.9, %if.end2407 ], [ %12, %if.end ]
  %N.5 = phi i32 [ %N.0, %if.end2407 ], [ %13, %if.end ]
  %es.8 = phi i32 [ %es.0, %if.end2407 ], [ %14, %if.end ]
  %nblock.10 = phi i32 [ %inc2379, %if.end2407 ], [ %15, %if.end ]
  %nblockMAX.8 = phi i32 [ %nblockMAX.3, %if.end2407 ], [ %16, %if.end ]
  %nextSym.5 = phi i32 [ %nextSym.0, %if.end2407 ], [ %17, %if.end ]
  %groupPos.11 = phi i32 [ %dec2408, %if.end2407 ], [ %18, %if.end ]
  %groupNo.11 = phi i32 [ %groupNo.10, %if.end2407 ], [ %19, %if.end ]
  %EOB.8 = phi i32 [ %EOB.3, %if.end2407 ], [ %20, %if.end ]
  %nSelectors.16 = phi i32 [ %nSelectors.11, %if.end2407 ], [ %21, %if.end ]
  %nGroups.17 = phi i32 [ %nGroups.12, %if.end2407 ], [ %22, %if.end ]
  %alphaSize.18 = phi i32 [ %alphaSize.13, %if.end2407 ], [ %23, %if.end ]
  %t.15 = phi i32 [ %t.10, %if.end2407 ], [ %24, %if.end ]
  %j.22 = phi i32 [ %j.17, %if.end2407 ], [ %25, %if.end ]
  %i.28 = phi i32 [ %i.23, %if.end2407 ], [ %26, %if.end ]
  store i32 40, i32* %state, align 4, !dbg !669, !tbaa !354
  %bsLive2413 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !672
  %525 = load i32* %bsLive2413, align 4, !dbg !672, !tbaa !354
  %cmp24144902 = icmp slt i32 %525, %zn.8, !dbg !672
  %bsBuff2435 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !672
  br i1 %cmp24144902, label %if.end2428.lr.ph, label %if.then2416, !dbg !672

if.end2428.lr.ph:                                 ; preds = %sw.bb2409
  %.pre5250 = load %struct.bz_stream** %strm1, align 8, !dbg !672, !tbaa !350
  %avail_in2430.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5250, i64 0, i32 1
  %.pre5347 = load i32* %avail_in2430.phi.trans.insert, align 4, !dbg !672, !tbaa !354
  br label %if.end2428, !dbg !672

if.then2416:                                      ; preds = %sw.bb2409, %while.body2412.backedge
  %.lcssa4900 = phi i32 [ %537, %while.body2412.backedge ], [ %525, %sw.bb2409 ]
  %526 = load i32* %bsBuff2435, align 4, !dbg !673, !tbaa !354
  %sub2421 = sub nsw i32 %.lcssa4900, %zn.8, !dbg !673
  %shr2422 = lshr i32 %526, %sub2421, !dbg !673
  %shl2423 = shl i32 1, %zn.8, !dbg !673
  %sub2424 = add nsw i32 %shl2423, -1, !dbg !673
  %and2425 = and i32 %shr2422, %sub2424, !dbg !673
  call void @llvm.dbg.value(metadata !{i32 %and2425}, i64 0, metadata !304), !dbg !673
  store i32 %sub2421, i32* %bsLive2413, align 4, !dbg !673, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and2425}, i64 0, metadata !165), !dbg !673
  br label %while.body2464, !dbg !669

if.end2428:                                       ; preds = %if.end2428.lr.ph, %while.body2412.backedge
  %527 = phi i32 [ %.pre5347, %if.end2428.lr.ph ], [ %dec2449, %while.body2412.backedge ]
  %528 = phi i32 [ %525, %if.end2428.lr.ph ], [ %537, %while.body2412.backedge ]
  %529 = phi %struct.bz_stream* [ %.pre5250, %if.end2428.lr.ph ], [ %533, %while.body2412.backedge ]
  %cmp2431 = icmp eq i32 %527, 0, !dbg !672
  br i1 %cmp2431, label %save_state_and_return, label %if.end2434, !dbg !672

if.end2434:                                       ; preds = %if.end2428
  %530 = load i32* %bsBuff2435, align 4, !dbg !672, !tbaa !354
  %shl2436 = shl i32 %530, 8, !dbg !672
  %next_in2438 = getelementptr inbounds %struct.bz_stream* %529, i64 0, i32 0, !dbg !672
  %531 = load i8** %next_in2438, align 8, !dbg !672, !tbaa !350
  %532 = load i8* %531, align 1, !dbg !672, !tbaa !351
  %conv2439 = zext i8 %532 to i32, !dbg !672
  %or2440 = or i32 %conv2439, %shl2436, !dbg !672
  store i32 %or2440, i32* %bsBuff2435, align 4, !dbg !672, !tbaa !354
  %add2443 = add nsw i32 %528, 8, !dbg !672
  store i32 %add2443, i32* %bsLive2413, align 4, !dbg !672, !tbaa !354
  %incdec.ptr2446 = getelementptr inbounds i8* %531, i64 1, !dbg !672
  store i8* %incdec.ptr2446, i8** %next_in2438, align 8, !dbg !672, !tbaa !350
  %533 = load %struct.bz_stream** %strm1, align 8, !dbg !672, !tbaa !350
  %avail_in2448 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 1, !dbg !672
  %534 = load i32* %avail_in2448, align 4, !dbg !672, !tbaa !354
  %dec2449 = add i32 %534, -1, !dbg !672
  store i32 %dec2449, i32* %avail_in2448, align 4, !dbg !672, !tbaa !354
  %total_in_lo322451 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 2, !dbg !672
  %535 = load i32* %total_in_lo322451, align 4, !dbg !672, !tbaa !354
  %inc2452 = add i32 %535, 1, !dbg !672
  store i32 %inc2452, i32* %total_in_lo322451, align 4, !dbg !672, !tbaa !354
  %cmp2455 = icmp eq i32 %inc2452, 0, !dbg !672
  br i1 %cmp2455, label %if.then2457, label %while.body2412.backedge, !dbg !672

if.then2457:                                      ; preds = %if.end2434
  %total_in_hi322459 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 3, !dbg !672
  %536 = load i32* %total_in_hi322459, align 4, !dbg !672, !tbaa !354
  %inc2460 = add i32 %536, 1, !dbg !672
  store i32 %inc2460, i32* %total_in_hi322459, align 4, !dbg !672, !tbaa !354
  br label %while.body2412.backedge, !dbg !672

while.body2412.backedge:                          ; preds = %if.then2457, %if.end2434
  %537 = load i32* %bsLive2413, align 4, !dbg !672, !tbaa !354
  %cmp2414 = icmp slt i32 %537, %zn.8, !dbg !672
  br i1 %cmp2414, label %if.end2428, label %if.then2416, !dbg !672

while.body2464:                                   ; preds = %if.then2416, %if.then2483
  %538 = phi i32 [ %sub2488, %if.then2483 ], [ %sub2421, %if.then2416 ]
  %gPerm.12 = phi i32* [ %gPerm.13, %if.then2483 ], [ %gPerm.11, %if.then2416 ]
  %gBase.12 = phi i32* [ %gBase.13, %if.then2483 ], [ %gBase.11, %if.then2416 ]
  %gLimit.12 = phi i32* [ %gLimit.13, %if.then2483 ], [ %gLimit.11, %if.then2416 ]
  %gMinlen.12 = phi i32 [ %gMinlen.13, %if.then2483 ], [ %gMinlen.11, %if.then2416 ]
  %gSel.12 = phi i32 [ %gSel.13, %if.then2483 ], [ %gSel.11, %if.then2416 ]
  %zj.8 = phi i32 [ %and2490, %if.then2483 ], [ %zj.7, %if.then2416 ]
  %zvec.8 = phi i32 [ %or2529, %if.then2483 ], [ %and2425, %if.then2416 ]
  %zn.9 = phi i32 [ %zn.10, %if.then2483 ], [ %zn.8, %if.then2416 ]
  %curr.15 = phi i32 [ %curr.16, %if.then2483 ], [ %curr.14, %if.then2416 ]
  %N.6 = phi i32 [ %N.7, %if.then2483 ], [ %N.5, %if.then2416 ]
  %es.9 = phi i32 [ %es.10, %if.then2483 ], [ %es.8, %if.then2416 ]
  %nblock.11 = phi i32 [ %nblock.12, %if.then2483 ], [ %nblock.10, %if.then2416 ]
  %nblockMAX.9 = phi i32 [ %nblockMAX.10, %if.then2483 ], [ %nblockMAX.8, %if.then2416 ]
  %nextSym.6 = phi i32 [ %nextSym.7, %if.then2483 ], [ %nextSym.5, %if.then2416 ]
  %groupPos.12 = phi i32 [ %groupPos.13, %if.then2483 ], [ %groupPos.11, %if.then2416 ]
  %groupNo.12 = phi i32 [ %groupNo.13, %if.then2483 ], [ %groupNo.11, %if.then2416 ]
  %EOB.9 = phi i32 [ %EOB.10, %if.then2483 ], [ %EOB.8, %if.then2416 ]
  %nSelectors.17 = phi i32 [ %nSelectors.18, %if.then2483 ], [ %nSelectors.16, %if.then2416 ]
  %nGroups.18 = phi i32 [ %nGroups.19, %if.then2483 ], [ %nGroups.17, %if.then2416 ]
  %alphaSize.19 = phi i32 [ %alphaSize.20, %if.then2483 ], [ %alphaSize.18, %if.then2416 ]
  %t.16 = phi i32 [ %t.17, %if.then2483 ], [ %t.15, %if.then2416 ]
  %j.23 = phi i32 [ %j.24, %if.then2483 ], [ %j.22, %if.then2416 ]
  %i.29 = phi i32 [ %i.30, %if.then2483 ], [ %i.28, %if.then2416 ]
  %cmp2465 = icmp sgt i32 %zn.9, 20, !dbg !674
  br i1 %cmp2465, label %save_state_and_return, label %if.end2468, !dbg !674

if.end2468:                                       ; preds = %while.body2464
  %idxprom2469 = sext i32 %zn.9 to i64, !dbg !674
  %arrayidx2470 = getelementptr inbounds i32* %gLimit.12, i64 %idxprom2469, !dbg !674
  %539 = load i32* %arrayidx2470, align 4, !dbg !674, !tbaa !354
  %cmp2471 = icmp sgt i32 %zvec.8, %539, !dbg !674
  br i1 %cmp2471, label %if.end2474, label %while.end2530, !dbg !674

if.end2474:                                       ; preds = %if.end2468
  %inc2475 = add nsw i32 %zn.9, 1, !dbg !674
  call void @llvm.dbg.value(metadata !{i32 %inc2475}, i64 0, metadata !164), !dbg !674
  %bsLive2480.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !415
  br label %sw.bb2476, !dbg !674

sw.bb2476:                                        ; preds = %if.end.sw.bb2476_crit_edge, %if.end2474
  %bsLive2480.pre-phi = phi i32* [ %bsLive2480.phi.trans.insert, %if.end.sw.bb2476_crit_edge ], [ %bsLive2480.pre, %if.end2474 ], !dbg !415
  %540 = phi i32 [ %.pre5348, %if.end.sw.bb2476_crit_edge ], [ %538, %if.end2474 ]
  %gPerm.13 = phi i32* [ %3, %if.end.sw.bb2476_crit_edge ], [ %gPerm.12, %if.end2474 ]
  %gBase.13 = phi i32* [ %4, %if.end.sw.bb2476_crit_edge ], [ %gBase.12, %if.end2474 ]
  %gLimit.13 = phi i32* [ %5, %if.end.sw.bb2476_crit_edge ], [ %gLimit.12, %if.end2474 ]
  %gMinlen.13 = phi i32 [ %6, %if.end.sw.bb2476_crit_edge ], [ %gMinlen.12, %if.end2474 ]
  %gSel.13 = phi i32 [ %7, %if.end.sw.bb2476_crit_edge ], [ %gSel.12, %if.end2474 ]
  %zj.9 = phi i32 [ %8, %if.end.sw.bb2476_crit_edge ], [ %zj.8, %if.end2474 ]
  %zvec.9 = phi i32 [ %9, %if.end.sw.bb2476_crit_edge ], [ %zvec.8, %if.end2474 ]
  %zn.10 = phi i32 [ %10, %if.end.sw.bb2476_crit_edge ], [ %inc2475, %if.end2474 ]
  %curr.16 = phi i32 [ %12, %if.end.sw.bb2476_crit_edge ], [ %curr.15, %if.end2474 ]
  %N.7 = phi i32 [ %13, %if.end.sw.bb2476_crit_edge ], [ %N.6, %if.end2474 ]
  %es.10 = phi i32 [ %14, %if.end.sw.bb2476_crit_edge ], [ %es.9, %if.end2474 ]
  %nblock.12 = phi i32 [ %15, %if.end.sw.bb2476_crit_edge ], [ %nblock.11, %if.end2474 ]
  %nblockMAX.10 = phi i32 [ %16, %if.end.sw.bb2476_crit_edge ], [ %nblockMAX.9, %if.end2474 ]
  %nextSym.7 = phi i32 [ %17, %if.end.sw.bb2476_crit_edge ], [ %nextSym.6, %if.end2474 ]
  %groupPos.13 = phi i32 [ %18, %if.end.sw.bb2476_crit_edge ], [ %groupPos.12, %if.end2474 ]
  %groupNo.13 = phi i32 [ %19, %if.end.sw.bb2476_crit_edge ], [ %groupNo.12, %if.end2474 ]
  %EOB.10 = phi i32 [ %20, %if.end.sw.bb2476_crit_edge ], [ %EOB.9, %if.end2474 ]
  %nSelectors.18 = phi i32 [ %21, %if.end.sw.bb2476_crit_edge ], [ %nSelectors.17, %if.end2474 ]
  %nGroups.19 = phi i32 [ %22, %if.end.sw.bb2476_crit_edge ], [ %nGroups.18, %if.end2474 ]
  %alphaSize.20 = phi i32 [ %23, %if.end.sw.bb2476_crit_edge ], [ %alphaSize.19, %if.end2474 ]
  %t.17 = phi i32 [ %24, %if.end.sw.bb2476_crit_edge ], [ %t.16, %if.end2474 ]
  %j.24 = phi i32 [ %25, %if.end.sw.bb2476_crit_edge ], [ %j.23, %if.end2474 ]
  %i.30 = phi i32 [ %26, %if.end.sw.bb2476_crit_edge ], [ %i.29, %if.end2474 ]
  store i32 41, i32* %state, align 4, !dbg !674, !tbaa !354
  %cmp24814895 = icmp sgt i32 %540, 0, !dbg !415
  %bsBuff2486.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !675
  br i1 %cmp24814895, label %if.then2483, label %if.end2493.lr.ph, !dbg !415

if.end2493.lr.ph:                                 ; preds = %sw.bb2476
  %.pre5251 = load %struct.bz_stream** %strm1, align 8, !dbg !415, !tbaa !350
  %avail_in2495.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5251, i64 0, i32 1
  %.pre5349 = load i32* %avail_in2495.phi.trans.insert, align 4, !dbg !415, !tbaa !354
  br label %if.end2493, !dbg !415

if.then2483:                                      ; preds = %sw.bb2476, %while.body2479.backedge
  %.lcssa4893 = phi i32 [ %552, %while.body2479.backedge ], [ %540, %sw.bb2476 ]
  %541 = load i32* %bsBuff2486.pre, align 4, !dbg !675, !tbaa !354
  %sub2488 = add nsw i32 %.lcssa4893, -1, !dbg !675
  %shr2489 = lshr i32 %541, %sub2488, !dbg !675
  %and2490 = and i32 %shr2489, 1, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %and2490}, i64 0, metadata !308), !dbg !675
  store i32 %sub2488, i32* %bsLive2480.pre-phi, align 4, !dbg !675, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %and2490}, i64 0, metadata !166), !dbg !675
  %shl2528 = shl i32 %zvec.9, 1, !dbg !674
  %or2529 = or i32 %and2490, %shl2528, !dbg !674
  call void @llvm.dbg.value(metadata !{i32 %or2529}, i64 0, metadata !165), !dbg !674
  br label %while.body2464, !dbg !674

if.end2493:                                       ; preds = %if.end2493.lr.ph, %while.body2479.backedge
  %542 = phi i32 [ %.pre5349, %if.end2493.lr.ph ], [ %dec2514, %while.body2479.backedge ]
  %543 = phi i32 [ %540, %if.end2493.lr.ph ], [ %552, %while.body2479.backedge ]
  %544 = phi %struct.bz_stream* [ %.pre5251, %if.end2493.lr.ph ], [ %548, %while.body2479.backedge ]
  %cmp2496 = icmp eq i32 %542, 0, !dbg !415
  br i1 %cmp2496, label %save_state_and_return, label %if.end2499, !dbg !415

if.end2499:                                       ; preds = %if.end2493
  %545 = load i32* %bsBuff2486.pre, align 4, !dbg !415, !tbaa !354
  %shl2501 = shl i32 %545, 8, !dbg !415
  %next_in2503 = getelementptr inbounds %struct.bz_stream* %544, i64 0, i32 0, !dbg !415
  %546 = load i8** %next_in2503, align 8, !dbg !415, !tbaa !350
  %547 = load i8* %546, align 1, !dbg !415, !tbaa !351
  %conv2504 = zext i8 %547 to i32, !dbg !415
  %or2505 = or i32 %conv2504, %shl2501, !dbg !415
  store i32 %or2505, i32* %bsBuff2486.pre, align 4, !dbg !415, !tbaa !354
  %add2508 = add nsw i32 %543, 8, !dbg !415
  store i32 %add2508, i32* %bsLive2480.pre-phi, align 4, !dbg !415, !tbaa !354
  %incdec.ptr2511 = getelementptr inbounds i8* %546, i64 1, !dbg !415
  store i8* %incdec.ptr2511, i8** %next_in2503, align 8, !dbg !415, !tbaa !350
  %548 = load %struct.bz_stream** %strm1, align 8, !dbg !415, !tbaa !350
  %avail_in2513 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 1, !dbg !415
  %549 = load i32* %avail_in2513, align 4, !dbg !415, !tbaa !354
  %dec2514 = add i32 %549, -1, !dbg !415
  store i32 %dec2514, i32* %avail_in2513, align 4, !dbg !415, !tbaa !354
  %total_in_lo322516 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 2, !dbg !415
  %550 = load i32* %total_in_lo322516, align 4, !dbg !415, !tbaa !354
  %inc2517 = add i32 %550, 1, !dbg !415
  store i32 %inc2517, i32* %total_in_lo322516, align 4, !dbg !415, !tbaa !354
  %cmp2520 = icmp eq i32 %inc2517, 0, !dbg !415
  br i1 %cmp2520, label %if.then2522, label %while.body2479.backedge, !dbg !415

if.then2522:                                      ; preds = %if.end2499
  %total_in_hi322524 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 3, !dbg !415
  %551 = load i32* %total_in_hi322524, align 4, !dbg !415, !tbaa !354
  %inc2525 = add i32 %551, 1, !dbg !415
  store i32 %inc2525, i32* %total_in_hi322524, align 4, !dbg !415, !tbaa !354
  br label %while.body2479.backedge, !dbg !415

while.body2479.backedge:                          ; preds = %if.then2522, %if.end2499
  %552 = load i32* %bsLive2480.pre-phi, align 4, !dbg !415, !tbaa !354
  %cmp2481 = icmp sgt i32 %552, 0, !dbg !415
  br i1 %cmp2481, label %if.then2483, label %if.end2493, !dbg !415

while.end2530:                                    ; preds = %if.end2468
  %arrayidx2532 = getelementptr inbounds i32* %gBase.12, i64 %idxprom2469, !dbg !669
  %553 = load i32* %arrayidx2532, align 4, !dbg !669, !tbaa !354
  %sub2533 = sub nsw i32 %zvec.8, %553, !dbg !669
  %554 = icmp ugt i32 %sub2533, 257, !dbg !669
  br i1 %554, label %save_state_and_return, label %if.end2543, !dbg !669

if.end2543:                                       ; preds = %while.end2530
  %idxprom2547 = sext i32 %sub2533 to i64, !dbg !669
  %arrayidx2548 = getelementptr inbounds i32* %gPerm.12, i64 %idxprom2547, !dbg !669
  %555 = load i32* %arrayidx2548, align 4, !dbg !669, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %555}, i64 0, metadata !157), !dbg !669
  br label %while.body1929, !dbg !676

while.end2549:                                    ; preds = %while.body1929
  %origPtr2550 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13, !dbg !677
  %556 = load i32* %origPtr2550, align 4, !dbg !677, !tbaa !354
  %cmp2551 = icmp sgt i32 %556, -1, !dbg !677
  %cmp2555 = icmp slt i32 %556, %nblock.3, !dbg !677
  %or.cond4734 = and i1 %cmp2551, %cmp2555, !dbg !677
  br i1 %or.cond4734, label %if.end2558, label %save_state_and_return, !dbg !677

if.end2558:                                       ; preds = %while.end2549
  %arrayidx2559 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 0, !dbg !678
  store i32 0, i32* %arrayidx2559, align 4, !dbg !678, !tbaa !354
  call void @llvm.dbg.value(metadata !679, i64 0, metadata !148), !dbg !680
  br label %for.body2563, !dbg !680

for.cond2574.preheader:                           ; preds = %for.body2563
  %.pre5247 = load i32* %arrayidx2559, align 4, !dbg !682, !tbaa !354
  br label %for.body2577, !dbg !682

for.body2563:                                     ; preds = %for.body2563, %if.end2558
  %indvars.iv5125 = phi i64 [ 1, %if.end2558 ], [ %indvars.iv.next5126, %for.body2563 ]
  %557 = add nsw i64 %indvars.iv5125, -1, !dbg !680
  %arrayidx2567 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %557, !dbg !680
  %558 = load i32* %arrayidx2567, align 4, !dbg !680, !tbaa !354
  %arrayidx2570 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5125, !dbg !680
  store i32 %558, i32* %arrayidx2570, align 4, !dbg !680, !tbaa !354
  %indvars.iv.next5126 = add i64 %indvars.iv5125, 1, !dbg !680
  %lftr.wideiv5128 = trunc i64 %indvars.iv.next5126 to i32, !dbg !680
  %exitcond5129 = icmp eq i32 %lftr.wideiv5128, 257, !dbg !680
  br i1 %exitcond5129, label %for.cond2574.preheader, label %for.body2563, !dbg !680

for.body2577:                                     ; preds = %for.body2577, %for.cond2574.preheader
  %559 = phi i32 [ %.pre5247, %for.cond2574.preheader ], [ %add2585, %for.body2577 ], !dbg !682
  %indvars.iv5120 = phi i64 [ 1, %for.cond2574.preheader ], [ %indvars.iv.next5121, %for.body2577 ]
  %arrayidx2584 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5120, !dbg !682
  %560 = load i32* %arrayidx2584, align 4, !dbg !682, !tbaa !354
  %add2585 = add nsw i32 %560, %559, !dbg !682
  store i32 %add2585, i32* %arrayidx2584, align 4, !dbg !682, !tbaa !354
  %indvars.iv.next5121 = add i64 %indvars.iv5120, 1, !dbg !682
  %lftr.wideiv5123 = trunc i64 %indvars.iv.next5121 to i32, !dbg !682
  %exitcond5124 = icmp eq i32 %lftr.wideiv5123, 257, !dbg !682
  br i1 %exitcond5124, label %for.body2592, label %for.body2577, !dbg !682

for.cond2589:                                     ; preds = %for.body2592
  %inc2607 = add nsw i32 %i.334857, 1, !dbg !684
  %561 = trunc i64 %indvars.iv.next5119 to i32, !dbg !684
  %cmp2590 = icmp slt i32 %561, 257, !dbg !684
  br i1 %cmp2590, label %for.body2592, label %for.end2608, !dbg !684

for.body2592:                                     ; preds = %for.body2577, %for.cond2589
  %indvars.iv5118 = phi i64 [ %indvars.iv.next5119, %for.cond2589 ], [ 0, %for.body2577 ]
  %i.334857 = phi i32 [ %inc2607, %for.cond2589 ], [ 0, %for.body2577 ]
  %arrayidx2595 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5118, !dbg !686
  %562 = load i32* %arrayidx2595, align 4, !dbg !686, !tbaa !354
  %cmp2596 = icmp slt i32 %562, 0, !dbg !686
  %cmp2602 = icmp sgt i32 %562, %nblock.3, !dbg !686
  %or.cond4735 = or i1 %cmp2596, %cmp2602, !dbg !686
  %indvars.iv.next5119 = add i64 %indvars.iv5118, 1, !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %inc2607}, i64 0, metadata !148), !dbg !684
  br i1 %or.cond4735, label %save_state_and_return, label %for.cond2589, !dbg !686

for.end2608:                                      ; preds = %for.cond2589
  %state_out_len = getelementptr inbounds %struct.DState* %s, i64 0, i32 3, !dbg !688
  store i32 0, i32* %state_out_len, align 4, !dbg !688, !tbaa !354
  %state_out_ch = getelementptr inbounds %struct.DState* %s, i64 0, i32 2, !dbg !689
  store i8 0, i8* %state_out_ch, align 1, !dbg !689, !tbaa !351
  %calculatedBlockCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 25, !dbg !690
  store i32 -1, i32* %calculatedBlockCRC, align 4, !dbg !690, !tbaa !354
  store i32 2, i32* %state, align 4, !dbg !692, !tbaa !354
  %verbosity2610 = getelementptr inbounds %struct.DState* %s, i64 0, i32 12, !dbg !693
  %563 = load i32* %verbosity2610, align 4, !dbg !693, !tbaa !354
  %cmp2611 = icmp sgt i32 %563, 1, !dbg !693
  br i1 %cmp2611, label %if.then2613, label %if.end2615, !dbg !693

if.then2613:                                      ; preds = %for.end2608
  %564 = load %struct._IO_FILE** @stderr, align 8, !dbg !693, !tbaa !350
  %565 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %564), !dbg !693
  br label %if.end2615, !dbg !693

if.end2615:                                       ; preds = %if.then2613, %for.end2608
  %smallDecompress2616 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10, !dbg !694
  %566 = load i8* %smallDecompress2616, align 1, !dbg !694, !tbaa !351
  %tobool2617 = icmp eq i8 %566, 0, !dbg !694
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !695
  br i1 %tobool2617, label %for.cond2850.preheader, label %for.body2622, !dbg !694

for.cond2850.preheader:                           ; preds = %if.end2615
  %cmp28514848 = icmp sgt i32 %nblock.3, 0, !dbg !697
  %tt2855 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20, !dbg !700
  br i1 %cmp28514848, label %for.body2853, label %for.end2873, !dbg !697

for.cond2631.preheader:                           ; preds = %for.body2622
  %cmp26324852 = icmp sgt i32 %nblock.3, 0, !dbg !702
  %ll162636 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21, !dbg !704
  %ll42653 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22, !dbg !706
  br i1 %cmp26324852, label %for.body2634, label %for.end2692, !dbg !702

for.body2622:                                     ; preds = %if.end2615, %for.body2622
  %indvars.iv5112 = phi i64 [ %indvars.iv.next5113, %for.body2622 ], [ 0, %if.end2615 ]
  %arrayidx2625 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5112, !dbg !695
  %567 = load i32* %arrayidx2625, align 4, !dbg !695, !tbaa !354
  %arrayidx2627 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %indvars.iv5112, !dbg !695
  store i32 %567, i32* %arrayidx2627, align 4, !dbg !695, !tbaa !354
  %indvars.iv.next5113 = add i64 %indvars.iv5112, 1, !dbg !695
  %lftr.wideiv5114 = trunc i64 %indvars.iv.next5113 to i32, !dbg !695
  %exitcond5115 = icmp eq i32 %lftr.wideiv5114, 257, !dbg !695
  br i1 %exitcond5115, label %for.cond2631.preheader, label %for.body2622, !dbg !695

for.body2634:                                     ; preds = %for.cond2631.preheader, %if.end2685
  %indvars.iv5108 = phi i64 [ %indvars.iv.next5109, %if.end2685 ], [ 0, %for.cond2631.preheader ]
  %568 = load i16** %ll162636, align 8, !dbg !704, !tbaa !350
  %arrayidx2637 = getelementptr inbounds i16* %568, i64 %indvars.iv5108, !dbg !704
  %569 = load i16* %arrayidx2637, align 2, !dbg !704, !tbaa !616
  %conv2638 = zext i16 %569 to i64, !dbg !704
  %idxprom2639 = and i64 %conv2638, 255, !dbg !709
  %arrayidx2641 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %idxprom2639, !dbg !709
  %570 = load i32* %arrayidx2641, align 4, !dbg !709, !tbaa !354
  %conv2643 = trunc i32 %570 to i16, !dbg !709
  store i16 %conv2643, i16* %arrayidx2637, align 2, !dbg !709, !tbaa !616
  %571 = trunc i64 %indvars.iv5108 to i32, !dbg !706
  %and2647 = and i32 %571, 1, !dbg !706
  %cmp2648 = icmp eq i32 %and2647, 0, !dbg !706
  %shr2651 = ashr i32 %571, 1, !dbg !706
  %idxprom2652 = sext i32 %shr2651 to i64, !dbg !706
  %572 = load i8** %ll42653, align 8, !dbg !706, !tbaa !350
  %arrayidx2654 = getelementptr inbounds i8* %572, i64 %idxprom2652, !dbg !706
  %573 = load i8* %arrayidx2654, align 1, !dbg !706, !tbaa !351
  %conv2655 = zext i8 %573 to i32, !dbg !706
  br i1 %cmp2648, label %if.then2650, label %if.else2667, !dbg !706

if.then2650:                                      ; preds = %for.body2634
  %and2656 = and i32 %conv2655, 240, !dbg !706
  %shr2660 = ashr i32 %570, 16, !dbg !706
  %or2661 = or i32 %shr2660, %and2656, !dbg !706
  br label %if.end2685, !dbg !706

if.else2667:                                      ; preds = %for.body2634
  %and2673 = and i32 %conv2655, 15, !dbg !706
  %shr2677 = ashr i32 %570, 16, !dbg !706
  %shl2678 = shl nsw i32 %shr2677, 4, !dbg !706
  %or2679 = or i32 %shl2678, %and2673, !dbg !706
  br label %if.end2685

if.end2685:                                       ; preds = %if.else2667, %if.then2650
  %storemerge4721.in = phi i32 [ %or2679, %if.else2667 ], [ %or2661, %if.then2650 ]
  %storemerge4721 = trunc i32 %storemerge4721.in to i8, !dbg !706
  store i8 %storemerge4721, i8* %arrayidx2654, align 1, !dbg !706, !tbaa !351
  %574 = load i32* %arrayidx2641, align 4, !dbg !710, !tbaa !354
  %inc2689 = add nsw i32 %574, 1, !dbg !710
  store i32 %inc2689, i32* %arrayidx2641, align 4, !dbg !710, !tbaa !354
  %indvars.iv.next5109 = add i64 %indvars.iv5108, 1, !dbg !702
  %lftr.wideiv5110 = trunc i64 %indvars.iv.next5109 to i32, !dbg !702
  %exitcond5111 = icmp eq i32 %lftr.wideiv5110, %nblock.3, !dbg !702
  br i1 %exitcond5111, label %for.end2692, label %for.body2634, !dbg !702

for.end2692:                                      ; preds = %for.cond2631.preheader, %if.end2685
  %575 = load i32* %origPtr2550, align 4, !dbg !711, !tbaa !354
  call void @llvm.dbg.value(metadata !{i32 %575}, i64 0, metadata !148), !dbg !711
  %idxprom2694 = sext i32 %575 to i64, !dbg !712
  %576 = load i16** %ll162636, align 8, !dbg !712, !tbaa !350
  %arrayidx2696 = getelementptr inbounds i16* %576, i64 %idxprom2694, !dbg !712
  %577 = load i16* %arrayidx2696, align 2, !dbg !712, !tbaa !616
  %conv2697 = zext i16 %577 to i32, !dbg !712
  %shr2698 = ashr i32 %575, 1, !dbg !712
  %idxprom2699 = sext i32 %shr2698 to i64, !dbg !712
  %578 = load i8** %ll42653, align 8, !dbg !712, !tbaa !350
  %arrayidx2701 = getelementptr inbounds i8* %578, i64 %idxprom2699, !dbg !712
  %579 = load i8* %arrayidx2701, align 1, !dbg !712, !tbaa !351
  %conv2702 = zext i8 %579 to i32, !dbg !712
  %shl2703 = shl i32 %575, 2, !dbg !712
  %and2704 = and i32 %shl2703, 4, !dbg !712
  %shr2705 = lshr i32 %conv2702, %and2704, !dbg !712
  %and2706 = shl i32 %shr2705, 16, !dbg !712
  %shl2707 = and i32 %and2706, 983040, !dbg !712
  %or2708 = or i32 %shl2707, %conv2697, !dbg !712
  call void @llvm.dbg.value(metadata !{i32 %or2708}, i64 0, metadata !149), !dbg !712
  br label %do.body2709, !dbg !713

do.body2709:                                      ; preds = %if.end2764.do.body2709_crit_edge, %for.end2692
  %580 = phi i8* [ %578, %for.end2692 ], [ %.pre5342, %if.end2764.do.body2709_crit_edge ]
  %581 = phi i16* [ %576, %for.end2692 ], [ %.pre5341, %if.end2764.do.body2709_crit_edge ]
  %582 = phi i32 [ %or2708, %for.end2692 ], [ %or2726, %if.end2764.do.body2709_crit_edge ]
  %i.36 = phi i32 [ %575, %for.end2692 ], [ %582, %if.end2764.do.body2709_crit_edge ]
  %idxprom2712 = sext i32 %582 to i64, !dbg !714
  %arrayidx2714 = getelementptr inbounds i16* %581, i64 %idxprom2712, !dbg !714
  %583 = load i16* %arrayidx2714, align 2, !dbg !714, !tbaa !616
  %conv2715 = zext i16 %583 to i32, !dbg !714
  %shr2716 = ashr i32 %582, 1, !dbg !714
  %idxprom2717 = sext i32 %shr2716 to i64, !dbg !714
  %arrayidx2719 = getelementptr inbounds i8* %580, i64 %idxprom2717, !dbg !714
  %584 = load i8* %arrayidx2719, align 1, !dbg !714, !tbaa !351
  %conv2720 = zext i8 %584 to i32, !dbg !714
  %shl2721 = shl nsw i32 %582, 2, !dbg !714
  %and2722 = and i32 %shl2721, 4, !dbg !714
  %shr2723 = lshr i32 %conv2720, %and2722, !dbg !714
  %and2724 = shl i32 %shr2723, 16, !dbg !714
  %shl2725 = and i32 %and2724, 983040, !dbg !714
  %or2726 = or i32 %shl2725, %conv2715, !dbg !714
  call void @llvm.dbg.value(metadata !{i32 %or2726}, i64 0, metadata !312), !dbg !714
  %conv2728 = trunc i32 %i.36 to i16, !dbg !715
  store i16 %conv2728, i16* %arrayidx2714, align 2, !dbg !715, !tbaa !616
  %and2732 = and i32 %582, 1, !dbg !717
  %cmp2733 = icmp eq i32 %and2732, 0, !dbg !717
  %585 = load i8* %arrayidx2719, align 1, !dbg !717, !tbaa !351
  %conv2740 = zext i8 %585 to i32, !dbg !717
  br i1 %cmp2733, label %if.then2735, label %if.else2749, !dbg !717

if.then2735:                                      ; preds = %do.body2709
  %and2741 = and i32 %conv2740, 240, !dbg !717
  %shr2742 = ashr i32 %i.36, 16, !dbg !717
  %or2743 = or i32 %and2741, %shr2742, !dbg !717
  br label %if.end2764, !dbg !717

if.else2749:                                      ; preds = %do.body2709
  %and2755 = and i32 %conv2740, 15, !dbg !717
  %shr2756 = ashr i32 %i.36, 16, !dbg !717
  %shl2757 = shl nsw i32 %shr2756, 4, !dbg !717
  %or2758 = or i32 %and2755, %shl2757, !dbg !717
  br label %if.end2764

if.end2764:                                       ; preds = %if.else2749, %if.then2735
  %storemerge.in = phi i32 [ %or2758, %if.else2749 ], [ %or2743, %if.then2735 ]
  %storemerge = trunc i32 %storemerge.in to i8, !dbg !717
  store i8 %storemerge, i8* %arrayidx2719, align 1, !dbg !717, !tbaa !351
  call void @llvm.dbg.value(metadata !{i32 %582}, i64 0, metadata !148), !dbg !719
  call void @llvm.dbg.value(metadata !{i32 %or2726}, i64 0, metadata !149), !dbg !720
  %586 = load i32* %origPtr2550, align 4, !dbg !721, !tbaa !354
  %cmp2767 = icmp eq i32 %582, %586, !dbg !721
  br i1 %cmp2767, label %do.end2769, label %if.end2764.do.body2709_crit_edge, !dbg !721

if.end2764.do.body2709_crit_edge:                 ; preds = %if.end2764
  %.pre5341 = load i16** %ll162636, align 8, !dbg !714, !tbaa !350
  %.pre5342 = load i8** %ll42653, align 8, !dbg !714, !tbaa !350
  br label %do.body2709, !dbg !721

do.end2769:                                       ; preds = %if.end2764
  %tPos = getelementptr inbounds %struct.DState* %s, i64 0, i32 14, !dbg !722
  store i32 %582, i32* %tPos, align 4, !dbg !722, !tbaa !354
  %nblock_used = getelementptr inbounds %struct.DState* %s, i64 0, i32 17, !dbg !723
  store i32 0, i32* %nblock_used, align 4, !dbg !723, !tbaa !354
  %blockRandomised2771 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4, !dbg !724
  %587 = load i8* %blockRandomised2771, align 1, !dbg !724, !tbaa !351
  %tobool2772 = icmp eq i8 %587, 0, !dbg !724
  br i1 %tobool2772, label %if.else2821, label %if.then2773, !dbg !724

if.then2773:                                      ; preds = %do.end2769
  %rNToGo = getelementptr inbounds %struct.DState* %s, i64 0, i32 5, !dbg !725
  store i32 0, i32* %rNToGo, align 4, !dbg !725, !tbaa !354
  %rTPos = getelementptr inbounds %struct.DState* %s, i64 0, i32 6, !dbg !725
  store i32 0, i32* %rTPos, align 4, !dbg !725, !tbaa !354
  %call2776 = call i32 @BZ2_indexIntoF(i32 %582, i32* %arrayidx2559) #5, !dbg !727
  %k0 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15, !dbg !727
  store i32 %call2776, i32* %k0, align 4, !dbg !727, !tbaa !354
  %588 = load i32* %tPos, align 4, !dbg !727, !tbaa !354
  %idxprom2778 = zext i32 %588 to i64, !dbg !727
  %589 = load i16** %ll162636, align 8, !dbg !727, !tbaa !350
  %arrayidx2780 = getelementptr inbounds i16* %589, i64 %idxprom2778, !dbg !727
  %590 = load i16* %arrayidx2780, align 2, !dbg !727, !tbaa !616
  %conv2781 = zext i16 %590 to i32, !dbg !727
  %shr2783 = lshr i32 %588, 1, !dbg !727
  %idxprom2784 = zext i32 %shr2783 to i64, !dbg !727
  %591 = load i8** %ll42653, align 8, !dbg !727, !tbaa !350
  %arrayidx2786 = getelementptr inbounds i8* %591, i64 %idxprom2784, !dbg !727
  %592 = load i8* %arrayidx2786, align 1, !dbg !727, !tbaa !351
  %conv2787 = zext i8 %592 to i32, !dbg !727
  %shl2789 = shl i32 %588, 2, !dbg !727
  %and2790 = and i32 %shl2789, 4, !dbg !727
  %shr2791 = lshr i32 %conv2787, %and2790, !dbg !727
  %and2792 = shl i32 %shr2791, 16, !dbg !727
  %shl2793 = and i32 %and2792, 983040, !dbg !727
  %or2794 = or i32 %shl2793, %conv2781, !dbg !727
  store i32 %or2794, i32* %tPos, align 4, !dbg !727, !tbaa !354
  %593 = load i32* %nblock_used, align 4, !dbg !727, !tbaa !354
  %inc2797 = add nsw i32 %593, 1, !dbg !727
  store i32 %inc2797, i32* %nblock_used, align 4, !dbg !727, !tbaa !354
  %594 = load i32* %rNToGo, align 4, !dbg !728, !tbaa !354
  %cmp2799 = icmp eq i32 %594, 0, !dbg !728
  br i1 %cmp2799, label %if.then2801, label %if.end2814, !dbg !728

if.then2801:                                      ; preds = %if.then2773
  %595 = load i32* %rTPos, align 4, !dbg !729, !tbaa !354
  %idxprom2803 = sext i32 %595 to i64, !dbg !729
  %arrayidx2804 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2803, !dbg !729
  %596 = load i32* %arrayidx2804, align 4, !dbg !729, !tbaa !354
  store i32 %596, i32* %rNToGo, align 4, !dbg !729, !tbaa !354
  %inc2807 = add nsw i32 %595, 1, !dbg !729
  %cmp2809 = icmp eq i32 %inc2807, 512, !dbg !729
  %.inc2807 = select i1 %cmp2809, i32 0, i32 %inc2807, !dbg !729
  store i32 %.inc2807, i32* %rTPos, align 4, !dbg !729, !tbaa !354
  br label %if.end2814, !dbg !729

if.end2814:                                       ; preds = %if.then2801, %if.then2773
  %597 = phi i32 [ %596, %if.then2801 ], [ %594, %if.then2773 ]
  %dec2816 = add nsw i32 %597, -1, !dbg !728
  store i32 %dec2816, i32* %rNToGo, align 4, !dbg !728, !tbaa !354
  %cmp2818 = icmp eq i32 %dec2816, 1, !dbg !728
  %cond = zext i1 %cmp2818 to i32, !dbg !728
  %xor = xor i32 %cond, %call2776, !dbg !728
  store i32 %xor, i32* %k0, align 4, !dbg !728, !tbaa !354
  br label %save_state_and_return, !dbg !731

if.else2821:                                      ; preds = %do.end2769
  %call2825 = call i32 @BZ2_indexIntoF(i32 %582, i32* %arrayidx2559) #5, !dbg !732
  %k02826 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15, !dbg !732
  store i32 %call2825, i32* %k02826, align 4, !dbg !732, !tbaa !354
  %598 = load i32* %tPos, align 4, !dbg !732, !tbaa !354
  %idxprom2828 = zext i32 %598 to i64, !dbg !732
  %599 = load i16** %ll162636, align 8, !dbg !732, !tbaa !350
  %arrayidx2830 = getelementptr inbounds i16* %599, i64 %idxprom2828, !dbg !732
  %600 = load i16* %arrayidx2830, align 2, !dbg !732, !tbaa !616
  %conv2831 = zext i16 %600 to i32, !dbg !732
  %shr2833 = lshr i32 %598, 1, !dbg !732
  %idxprom2834 = zext i32 %shr2833 to i64, !dbg !732
  %601 = load i8** %ll42653, align 8, !dbg !732, !tbaa !350
  %arrayidx2836 = getelementptr inbounds i8* %601, i64 %idxprom2834, !dbg !732
  %602 = load i8* %arrayidx2836, align 1, !dbg !732, !tbaa !351
  %conv2837 = zext i8 %602 to i32, !dbg !732
  %shl2839 = shl i32 %598, 2, !dbg !732
  %and2840 = and i32 %shl2839, 4, !dbg !732
  %shr2841 = lshr i32 %conv2837, %and2840, !dbg !732
  %and2842 = shl i32 %shr2841, 16, !dbg !732
  %shl2843 = and i32 %and2842, 983040, !dbg !732
  %or2844 = or i32 %shl2843, %conv2831, !dbg !732
  store i32 %or2844, i32* %tPos, align 4, !dbg !732, !tbaa !354
  %603 = load i32* %nblock_used, align 4, !dbg !732, !tbaa !354
  %inc2847 = add nsw i32 %603, 1, !dbg !732
  store i32 %inc2847, i32* %nblock_used, align 4, !dbg !732, !tbaa !354
  br label %save_state_and_return

for.body2853:                                     ; preds = %for.cond2850.preheader, %for.body2853
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body2853 ], [ 0, %for.cond2850.preheader ]
  %604 = load i32** %tt2855, align 8, !dbg !700, !tbaa !350
  %arrayidx2856 = getelementptr inbounds i32* %604, i64 %indvars.iv, !dbg !700
  %605 = load i32* %arrayidx2856, align 4, !dbg !700, !tbaa !354
  %conv2858 = zext i32 %605 to i64, !dbg !700
  %606 = trunc i64 %indvars.iv to i32, !dbg !734
  %shl2859 = shl i32 %606, 8, !dbg !734
  %idxprom2860 = and i64 %conv2858, 255, !dbg !734
  %arrayidx2862 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %idxprom2860, !dbg !734
  %607 = load i32* %arrayidx2862, align 4, !dbg !734, !tbaa !354
  %idxprom2863 = sext i32 %607 to i64, !dbg !734
  %arrayidx2865 = getelementptr inbounds i32* %604, i64 %idxprom2863, !dbg !734
  %608 = load i32* %arrayidx2865, align 4, !dbg !734, !tbaa !354
  %or2866 = or i32 %608, %shl2859, !dbg !734
  store i32 %or2866, i32* %arrayidx2865, align 4, !dbg !734, !tbaa !354
  %609 = load i32* %arrayidx2862, align 4, !dbg !735, !tbaa !354
  %inc2870 = add nsw i32 %609, 1, !dbg !735
  store i32 %inc2870, i32* %arrayidx2862, align 4, !dbg !735, !tbaa !354
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %nblock.3}, i64 0, metadata !148), !dbg !697
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !697
  %exitcond = icmp eq i32 %lftr.wideiv, %nblock.3, !dbg !697
  br i1 %exitcond, label %for.end2873, label %for.body2853, !dbg !697

for.end2873:                                      ; preds = %for.cond2850.preheader, %for.body2853
  %i.37.lcssa = phi i32 [ %nblock.3, %for.body2853 ], [ 0, %for.cond2850.preheader ]
  %610 = load i32* %origPtr2550, align 4, !dbg !736, !tbaa !354
  %idxprom2875 = sext i32 %610 to i64, !dbg !736
  %611 = load i32** %tt2855, align 8, !dbg !736, !tbaa !350
  %arrayidx2877 = getelementptr inbounds i32* %611, i64 %idxprom2875, !dbg !736
  %612 = load i32* %arrayidx2877, align 4, !dbg !736, !tbaa !354
  %shr2878 = lshr i32 %612, 8, !dbg !736
  %tPos2879 = getelementptr inbounds %struct.DState* %s, i64 0, i32 14, !dbg !736
  store i32 %shr2878, i32* %tPos2879, align 4, !dbg !736, !tbaa !354
  %nblock_used2880 = getelementptr inbounds %struct.DState* %s, i64 0, i32 17, !dbg !737
  store i32 0, i32* %nblock_used2880, align 4, !dbg !737, !tbaa !354
  %blockRandomised2881 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4, !dbg !738
  %613 = load i8* %blockRandomised2881, align 1, !dbg !738, !tbaa !351
  %tobool2882 = icmp eq i8 %613, 0, !dbg !738
  br i1 %tobool2882, label %if.else2925, label %if.end2916, !dbg !738

if.end2916:                                       ; preds = %for.end2873
  %rNToGo2884 = getelementptr inbounds %struct.DState* %s, i64 0, i32 5, !dbg !739
  store i32 0, i32* %rNToGo2884, align 4, !dbg !739, !tbaa !354
  %rTPos2885 = getelementptr inbounds %struct.DState* %s, i64 0, i32 6, !dbg !739
  store i32 0, i32* %rTPos2885, align 4, !dbg !739, !tbaa !354
  %idxprom2887 = zext i32 %shr2878 to i64, !dbg !741
  %arrayidx2889 = getelementptr inbounds i32* %611, i64 %idxprom2887, !dbg !741
  %614 = load i32* %arrayidx2889, align 4, !dbg !741, !tbaa !354
  %conv2894 = and i32 %614, 255, !dbg !741
  %k02895 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15, !dbg !741
  store i32 %conv2894, i32* %k02895, align 4, !dbg !741, !tbaa !354
  %shr2897 = lshr i32 %614, 8, !dbg !741
  store i32 %shr2897, i32* %tPos2879, align 4, !dbg !741, !tbaa !354
  store i32 1, i32* %nblock_used2880, align 4, !dbg !741, !tbaa !354
  %615 = load i32* getelementptr inbounds ([512 x i32]* @BZ2_rNums, i64 0, i64 0), align 4, !dbg !742, !tbaa !354
  store i32 1, i32* %rTPos2885, align 4, !dbg !742, !tbaa !354
  %phitmp = add i32 %615, -1, !dbg !742
  store i32 %phitmp, i32* %rNToGo2884, align 4, !dbg !744, !tbaa !354
  %cmp2920 = icmp eq i32 %phitmp, 1, !dbg !744
  %cond2922 = zext i1 %cmp2920 to i32, !dbg !744
  %xor2924 = xor i32 %cond2922, %conv2894, !dbg !744
  store i32 %xor2924, i32* %k02895, align 4, !dbg !744, !tbaa !354
  br label %save_state_and_return, !dbg !745

if.else2925:                                      ; preds = %for.end2873
  %idxprom2927 = zext i32 %shr2878 to i64, !dbg !746
  %arrayidx2929 = getelementptr inbounds i32* %611, i64 %idxprom2927, !dbg !746
  %616 = load i32* %arrayidx2929, align 4, !dbg !746, !tbaa !354
  %conv2934 = and i32 %616, 255, !dbg !746
  %k02935 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15, !dbg !746
  store i32 %conv2934, i32* %k02935, align 4, !dbg !746, !tbaa !354
  %shr2937 = lshr i32 %616, 8, !dbg !746
  store i32 %shr2937, i32* %tPos2879, align 4, !dbg !746, !tbaa !354
  store i32 1, i32* %nblock_used2880, align 4, !dbg !746, !tbaa !354
  br label %save_state_and_return

sw.bb2942:                                        ; preds = %if.end.sw.bb2942_crit_edge, %if.then278
  %617 = phi i32 [ %.pre5286, %if.end.sw.bb2942_crit_edge ], [ %sub282, %if.then278 ]
  store i32 42, i32* %state, align 4, !dbg !748, !tbaa !354
  %bsLive2946 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !389
  %cmp29474793 = icmp sgt i32 %617, 7, !dbg !389
  %bsBuff2952.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !749
  br i1 %cmp29474793, label %if.then2949, label %if.end2960.lr.ph, !dbg !389

if.end2960.lr.ph:                                 ; preds = %sw.bb2942
  %.pre5216 = load %struct.bz_stream** %strm1, align 8, !dbg !389, !tbaa !350
  %avail_in2962.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5216, i64 0, i32 1
  %.pre5287 = load i32* %avail_in2962.phi.trans.insert, align 4, !dbg !389, !tbaa !354
  br label %if.end2960, !dbg !389

if.then2949:                                      ; preds = %sw.bb2942, %while.body2945.backedge
  %.lcssa4791 = phi i32 [ %629, %while.body2945.backedge ], [ %617, %sw.bb2942 ]
  %618 = load i32* %bsBuff2952.pre, align 4, !dbg !749, !tbaa !354
  %sub2954 = add nsw i32 %.lcssa4791, -8, !dbg !749
  %shr2955 = lshr i32 %618, %sub2954, !dbg !749
  store i32 %sub2954, i32* %bsLive2946, align 4, !dbg !749, !tbaa !354
  %conv2995 = and i32 %shr2955, 255, !dbg !750
  %cmp2996 = icmp eq i32 %conv2995, 114, !dbg !750
  br i1 %cmp2996, label %sw.bb3000, label %save_state_and_return, !dbg !750

if.end2960:                                       ; preds = %if.end2960.lr.ph, %while.body2945.backedge
  %619 = phi i32 [ %.pre5287, %if.end2960.lr.ph ], [ %dec2981, %while.body2945.backedge ]
  %620 = phi i32 [ %617, %if.end2960.lr.ph ], [ %629, %while.body2945.backedge ]
  %621 = phi %struct.bz_stream* [ %.pre5216, %if.end2960.lr.ph ], [ %625, %while.body2945.backedge ]
  %cmp2963 = icmp eq i32 %619, 0, !dbg !389
  br i1 %cmp2963, label %save_state_and_return, label %if.end2966, !dbg !389

if.end2966:                                       ; preds = %if.end2960
  %622 = load i32* %bsBuff2952.pre, align 4, !dbg !389, !tbaa !354
  %shl2968 = shl i32 %622, 8, !dbg !389
  %next_in2970 = getelementptr inbounds %struct.bz_stream* %621, i64 0, i32 0, !dbg !389
  %623 = load i8** %next_in2970, align 8, !dbg !389, !tbaa !350
  %624 = load i8* %623, align 1, !dbg !389, !tbaa !351
  %conv2971 = zext i8 %624 to i32, !dbg !389
  %or2972 = or i32 %conv2971, %shl2968, !dbg !389
  store i32 %or2972, i32* %bsBuff2952.pre, align 4, !dbg !389, !tbaa !354
  %add2975 = add nsw i32 %620, 8, !dbg !389
  store i32 %add2975, i32* %bsLive2946, align 4, !dbg !389, !tbaa !354
  %incdec.ptr2978 = getelementptr inbounds i8* %623, i64 1, !dbg !389
  store i8* %incdec.ptr2978, i8** %next_in2970, align 8, !dbg !389, !tbaa !350
  %625 = load %struct.bz_stream** %strm1, align 8, !dbg !389, !tbaa !350
  %avail_in2980 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 1, !dbg !389
  %626 = load i32* %avail_in2980, align 4, !dbg !389, !tbaa !354
  %dec2981 = add i32 %626, -1, !dbg !389
  store i32 %dec2981, i32* %avail_in2980, align 4, !dbg !389, !tbaa !354
  %total_in_lo322983 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 2, !dbg !389
  %627 = load i32* %total_in_lo322983, align 4, !dbg !389, !tbaa !354
  %inc2984 = add i32 %627, 1, !dbg !389
  store i32 %inc2984, i32* %total_in_lo322983, align 4, !dbg !389, !tbaa !354
  %cmp2987 = icmp eq i32 %inc2984, 0, !dbg !389
  br i1 %cmp2987, label %if.then2989, label %while.body2945.backedge, !dbg !389

if.then2989:                                      ; preds = %if.end2966
  %total_in_hi322991 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 3, !dbg !389
  %628 = load i32* %total_in_hi322991, align 4, !dbg !389, !tbaa !354
  %inc2992 = add i32 %628, 1, !dbg !389
  store i32 %inc2992, i32* %total_in_hi322991, align 4, !dbg !389, !tbaa !354
  br label %while.body2945.backedge, !dbg !389

while.body2945.backedge:                          ; preds = %if.then2989, %if.end2966
  %629 = load i32* %bsLive2946, align 4, !dbg !389, !tbaa !354
  %cmp2947 = icmp sgt i32 %629, 7, !dbg !389
  br i1 %cmp2947, label %if.then2949, label %if.end2960, !dbg !389

sw.bb3000:                                        ; preds = %if.end.sw.bb3000_crit_edge, %if.then2949
  %630 = phi i32 [ %.pre5288, %if.end.sw.bb3000_crit_edge ], [ %sub2954, %if.then2949 ]
  store i32 43, i32* %state, align 4, !dbg !751, !tbaa !354
  %bsLive3004 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !390
  %cmp30054786 = icmp sgt i32 %630, 7, !dbg !390
  %bsBuff3010.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !752
  br i1 %cmp30054786, label %if.then3007, label %if.end3018.lr.ph, !dbg !390

if.end3018.lr.ph:                                 ; preds = %sw.bb3000
  %.pre5217 = load %struct.bz_stream** %strm1, align 8, !dbg !390, !tbaa !350
  %avail_in3020.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5217, i64 0, i32 1
  %.pre5289 = load i32* %avail_in3020.phi.trans.insert, align 4, !dbg !390, !tbaa !354
  br label %if.end3018, !dbg !390

if.then3007:                                      ; preds = %sw.bb3000, %while.body3003.backedge
  %.lcssa4784 = phi i32 [ %642, %while.body3003.backedge ], [ %630, %sw.bb3000 ]
  %631 = load i32* %bsBuff3010.pre, align 4, !dbg !752, !tbaa !354
  %sub3012 = add nsw i32 %.lcssa4784, -8, !dbg !752
  %shr3013 = lshr i32 %631, %sub3012, !dbg !752
  store i32 %sub3012, i32* %bsLive3004, align 4, !dbg !752, !tbaa !354
  %conv3053 = and i32 %shr3013, 255, !dbg !753
  %cmp3054 = icmp eq i32 %conv3053, 69, !dbg !753
  br i1 %cmp3054, label %sw.bb3058, label %save_state_and_return, !dbg !753

if.end3018:                                       ; preds = %if.end3018.lr.ph, %while.body3003.backedge
  %632 = phi i32 [ %.pre5289, %if.end3018.lr.ph ], [ %dec3039, %while.body3003.backedge ]
  %633 = phi i32 [ %630, %if.end3018.lr.ph ], [ %642, %while.body3003.backedge ]
  %634 = phi %struct.bz_stream* [ %.pre5217, %if.end3018.lr.ph ], [ %638, %while.body3003.backedge ]
  %cmp3021 = icmp eq i32 %632, 0, !dbg !390
  br i1 %cmp3021, label %save_state_and_return, label %if.end3024, !dbg !390

if.end3024:                                       ; preds = %if.end3018
  %635 = load i32* %bsBuff3010.pre, align 4, !dbg !390, !tbaa !354
  %shl3026 = shl i32 %635, 8, !dbg !390
  %next_in3028 = getelementptr inbounds %struct.bz_stream* %634, i64 0, i32 0, !dbg !390
  %636 = load i8** %next_in3028, align 8, !dbg !390, !tbaa !350
  %637 = load i8* %636, align 1, !dbg !390, !tbaa !351
  %conv3029 = zext i8 %637 to i32, !dbg !390
  %or3030 = or i32 %conv3029, %shl3026, !dbg !390
  store i32 %or3030, i32* %bsBuff3010.pre, align 4, !dbg !390, !tbaa !354
  %add3033 = add nsw i32 %633, 8, !dbg !390
  store i32 %add3033, i32* %bsLive3004, align 4, !dbg !390, !tbaa !354
  %incdec.ptr3036 = getelementptr inbounds i8* %636, i64 1, !dbg !390
  store i8* %incdec.ptr3036, i8** %next_in3028, align 8, !dbg !390, !tbaa !350
  %638 = load %struct.bz_stream** %strm1, align 8, !dbg !390, !tbaa !350
  %avail_in3038 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 1, !dbg !390
  %639 = load i32* %avail_in3038, align 4, !dbg !390, !tbaa !354
  %dec3039 = add i32 %639, -1, !dbg !390
  store i32 %dec3039, i32* %avail_in3038, align 4, !dbg !390, !tbaa !354
  %total_in_lo323041 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 2, !dbg !390
  %640 = load i32* %total_in_lo323041, align 4, !dbg !390, !tbaa !354
  %inc3042 = add i32 %640, 1, !dbg !390
  store i32 %inc3042, i32* %total_in_lo323041, align 4, !dbg !390, !tbaa !354
  %cmp3045 = icmp eq i32 %inc3042, 0, !dbg !390
  br i1 %cmp3045, label %if.then3047, label %while.body3003.backedge, !dbg !390

if.then3047:                                      ; preds = %if.end3024
  %total_in_hi323049 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 3, !dbg !390
  %641 = load i32* %total_in_hi323049, align 4, !dbg !390, !tbaa !354
  %inc3050 = add i32 %641, 1, !dbg !390
  store i32 %inc3050, i32* %total_in_hi323049, align 4, !dbg !390, !tbaa !354
  br label %while.body3003.backedge, !dbg !390

while.body3003.backedge:                          ; preds = %if.then3047, %if.end3024
  %642 = load i32* %bsLive3004, align 4, !dbg !390, !tbaa !354
  %cmp3005 = icmp sgt i32 %642, 7, !dbg !390
  br i1 %cmp3005, label %if.then3007, label %if.end3018, !dbg !390

sw.bb3058:                                        ; preds = %if.end.sw.bb3058_crit_edge, %if.then3007
  %643 = phi i32 [ %.pre5290, %if.end.sw.bb3058_crit_edge ], [ %sub3012, %if.then3007 ]
  store i32 44, i32* %state, align 4, !dbg !754, !tbaa !354
  %bsLive3062 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !391
  %cmp30634779 = icmp sgt i32 %643, 7, !dbg !391
  %bsBuff3068.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !755
  br i1 %cmp30634779, label %if.then3065, label %if.end3076.lr.ph, !dbg !391

if.end3076.lr.ph:                                 ; preds = %sw.bb3058
  %.pre5218 = load %struct.bz_stream** %strm1, align 8, !dbg !391, !tbaa !350
  %avail_in3078.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5218, i64 0, i32 1
  %.pre5291 = load i32* %avail_in3078.phi.trans.insert, align 4, !dbg !391, !tbaa !354
  br label %if.end3076, !dbg !391

if.then3065:                                      ; preds = %sw.bb3058, %while.body3061.backedge
  %.lcssa4777 = phi i32 [ %655, %while.body3061.backedge ], [ %643, %sw.bb3058 ]
  %644 = load i32* %bsBuff3068.pre, align 4, !dbg !755, !tbaa !354
  %sub3070 = add nsw i32 %.lcssa4777, -8, !dbg !755
  %shr3071 = lshr i32 %644, %sub3070, !dbg !755
  store i32 %sub3070, i32* %bsLive3062, align 4, !dbg !755, !tbaa !354
  %conv3111 = and i32 %shr3071, 255, !dbg !756
  %cmp3112 = icmp eq i32 %conv3111, 56, !dbg !756
  br i1 %cmp3112, label %sw.bb3116, label %save_state_and_return, !dbg !756

if.end3076:                                       ; preds = %if.end3076.lr.ph, %while.body3061.backedge
  %645 = phi i32 [ %.pre5291, %if.end3076.lr.ph ], [ %dec3097, %while.body3061.backedge ]
  %646 = phi i32 [ %643, %if.end3076.lr.ph ], [ %655, %while.body3061.backedge ]
  %647 = phi %struct.bz_stream* [ %.pre5218, %if.end3076.lr.ph ], [ %651, %while.body3061.backedge ]
  %cmp3079 = icmp eq i32 %645, 0, !dbg !391
  br i1 %cmp3079, label %save_state_and_return, label %if.end3082, !dbg !391

if.end3082:                                       ; preds = %if.end3076
  %648 = load i32* %bsBuff3068.pre, align 4, !dbg !391, !tbaa !354
  %shl3084 = shl i32 %648, 8, !dbg !391
  %next_in3086 = getelementptr inbounds %struct.bz_stream* %647, i64 0, i32 0, !dbg !391
  %649 = load i8** %next_in3086, align 8, !dbg !391, !tbaa !350
  %650 = load i8* %649, align 1, !dbg !391, !tbaa !351
  %conv3087 = zext i8 %650 to i32, !dbg !391
  %or3088 = or i32 %conv3087, %shl3084, !dbg !391
  store i32 %or3088, i32* %bsBuff3068.pre, align 4, !dbg !391, !tbaa !354
  %add3091 = add nsw i32 %646, 8, !dbg !391
  store i32 %add3091, i32* %bsLive3062, align 4, !dbg !391, !tbaa !354
  %incdec.ptr3094 = getelementptr inbounds i8* %649, i64 1, !dbg !391
  store i8* %incdec.ptr3094, i8** %next_in3086, align 8, !dbg !391, !tbaa !350
  %651 = load %struct.bz_stream** %strm1, align 8, !dbg !391, !tbaa !350
  %avail_in3096 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 1, !dbg !391
  %652 = load i32* %avail_in3096, align 4, !dbg !391, !tbaa !354
  %dec3097 = add i32 %652, -1, !dbg !391
  store i32 %dec3097, i32* %avail_in3096, align 4, !dbg !391, !tbaa !354
  %total_in_lo323099 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 2, !dbg !391
  %653 = load i32* %total_in_lo323099, align 4, !dbg !391, !tbaa !354
  %inc3100 = add i32 %653, 1, !dbg !391
  store i32 %inc3100, i32* %total_in_lo323099, align 4, !dbg !391, !tbaa !354
  %cmp3103 = icmp eq i32 %inc3100, 0, !dbg !391
  br i1 %cmp3103, label %if.then3105, label %while.body3061.backedge, !dbg !391

if.then3105:                                      ; preds = %if.end3082
  %total_in_hi323107 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 3, !dbg !391
  %654 = load i32* %total_in_hi323107, align 4, !dbg !391, !tbaa !354
  %inc3108 = add i32 %654, 1, !dbg !391
  store i32 %inc3108, i32* %total_in_hi323107, align 4, !dbg !391, !tbaa !354
  br label %while.body3061.backedge, !dbg !391

while.body3061.backedge:                          ; preds = %if.then3105, %if.end3082
  %655 = load i32* %bsLive3062, align 4, !dbg !391, !tbaa !354
  %cmp3063 = icmp sgt i32 %655, 7, !dbg !391
  br i1 %cmp3063, label %if.then3065, label %if.end3076, !dbg !391

sw.bb3116:                                        ; preds = %if.end.sw.bb3116_crit_edge, %if.then3065
  %656 = phi i32 [ %.pre5292, %if.end.sw.bb3116_crit_edge ], [ %sub3070, %if.then3065 ]
  store i32 45, i32* %state, align 4, !dbg !757, !tbaa !354
  %bsLive3120 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !392
  %cmp31214772 = icmp sgt i32 %656, 7, !dbg !392
  %bsBuff3126.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !758
  br i1 %cmp31214772, label %if.then3123, label %if.end3134.lr.ph, !dbg !392

if.end3134.lr.ph:                                 ; preds = %sw.bb3116
  %.pre5219 = load %struct.bz_stream** %strm1, align 8, !dbg !392, !tbaa !350
  %avail_in3136.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5219, i64 0, i32 1
  %.pre5293 = load i32* %avail_in3136.phi.trans.insert, align 4, !dbg !392, !tbaa !354
  br label %if.end3134, !dbg !392

if.then3123:                                      ; preds = %sw.bb3116, %while.body3119.backedge
  %.lcssa4770 = phi i32 [ %668, %while.body3119.backedge ], [ %656, %sw.bb3116 ]
  %657 = load i32* %bsBuff3126.pre, align 4, !dbg !758, !tbaa !354
  %sub3128 = add nsw i32 %.lcssa4770, -8, !dbg !758
  %shr3129 = lshr i32 %657, %sub3128, !dbg !758
  store i32 %sub3128, i32* %bsLive3120, align 4, !dbg !758, !tbaa !354
  %conv3169 = and i32 %shr3129, 255, !dbg !759
  %cmp3170 = icmp eq i32 %conv3169, 80, !dbg !759
  br i1 %cmp3170, label %sw.bb3174, label %save_state_and_return, !dbg !759

if.end3134:                                       ; preds = %if.end3134.lr.ph, %while.body3119.backedge
  %658 = phi i32 [ %.pre5293, %if.end3134.lr.ph ], [ %dec3155, %while.body3119.backedge ]
  %659 = phi i32 [ %656, %if.end3134.lr.ph ], [ %668, %while.body3119.backedge ]
  %660 = phi %struct.bz_stream* [ %.pre5219, %if.end3134.lr.ph ], [ %664, %while.body3119.backedge ]
  %cmp3137 = icmp eq i32 %658, 0, !dbg !392
  br i1 %cmp3137, label %save_state_and_return, label %if.end3140, !dbg !392

if.end3140:                                       ; preds = %if.end3134
  %661 = load i32* %bsBuff3126.pre, align 4, !dbg !392, !tbaa !354
  %shl3142 = shl i32 %661, 8, !dbg !392
  %next_in3144 = getelementptr inbounds %struct.bz_stream* %660, i64 0, i32 0, !dbg !392
  %662 = load i8** %next_in3144, align 8, !dbg !392, !tbaa !350
  %663 = load i8* %662, align 1, !dbg !392, !tbaa !351
  %conv3145 = zext i8 %663 to i32, !dbg !392
  %or3146 = or i32 %conv3145, %shl3142, !dbg !392
  store i32 %or3146, i32* %bsBuff3126.pre, align 4, !dbg !392, !tbaa !354
  %add3149 = add nsw i32 %659, 8, !dbg !392
  store i32 %add3149, i32* %bsLive3120, align 4, !dbg !392, !tbaa !354
  %incdec.ptr3152 = getelementptr inbounds i8* %662, i64 1, !dbg !392
  store i8* %incdec.ptr3152, i8** %next_in3144, align 8, !dbg !392, !tbaa !350
  %664 = load %struct.bz_stream** %strm1, align 8, !dbg !392, !tbaa !350
  %avail_in3154 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 1, !dbg !392
  %665 = load i32* %avail_in3154, align 4, !dbg !392, !tbaa !354
  %dec3155 = add i32 %665, -1, !dbg !392
  store i32 %dec3155, i32* %avail_in3154, align 4, !dbg !392, !tbaa !354
  %total_in_lo323157 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 2, !dbg !392
  %666 = load i32* %total_in_lo323157, align 4, !dbg !392, !tbaa !354
  %inc3158 = add i32 %666, 1, !dbg !392
  store i32 %inc3158, i32* %total_in_lo323157, align 4, !dbg !392, !tbaa !354
  %cmp3161 = icmp eq i32 %inc3158, 0, !dbg !392
  br i1 %cmp3161, label %if.then3163, label %while.body3119.backedge, !dbg !392

if.then3163:                                      ; preds = %if.end3140
  %total_in_hi323165 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 3, !dbg !392
  %667 = load i32* %total_in_hi323165, align 4, !dbg !392, !tbaa !354
  %inc3166 = add i32 %667, 1, !dbg !392
  store i32 %inc3166, i32* %total_in_hi323165, align 4, !dbg !392, !tbaa !354
  br label %while.body3119.backedge, !dbg !392

while.body3119.backedge:                          ; preds = %if.then3163, %if.end3140
  %668 = load i32* %bsLive3120, align 4, !dbg !392, !tbaa !354
  %cmp3121 = icmp sgt i32 %668, 7, !dbg !392
  br i1 %cmp3121, label %if.then3123, label %if.end3134, !dbg !392

sw.bb3174:                                        ; preds = %if.end.sw.bb3174_crit_edge, %if.then3123
  %669 = phi i32 [ %.pre5294, %if.end.sw.bb3174_crit_edge ], [ %sub3128, %if.then3123 ]
  store i32 46, i32* %state, align 4, !dbg !760, !tbaa !354
  %bsLive3178 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !393
  %cmp31794765 = icmp sgt i32 %669, 7, !dbg !393
  %bsBuff3184.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !761
  br i1 %cmp31794765, label %if.then3181, label %if.end3192.lr.ph, !dbg !393

if.end3192.lr.ph:                                 ; preds = %sw.bb3174
  %.pre5220 = load %struct.bz_stream** %strm1, align 8, !dbg !393, !tbaa !350
  %avail_in3194.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5220, i64 0, i32 1
  %.pre5295 = load i32* %avail_in3194.phi.trans.insert, align 4, !dbg !393, !tbaa !354
  br label %if.end3192, !dbg !393

if.then3181:                                      ; preds = %sw.bb3174, %while.body3177.backedge
  %.lcssa4763 = phi i32 [ %681, %while.body3177.backedge ], [ %669, %sw.bb3174 ]
  %670 = load i32* %bsBuff3184.pre, align 4, !dbg !761, !tbaa !354
  %sub3186 = add nsw i32 %.lcssa4763, -8, !dbg !761
  %shr3187 = lshr i32 %670, %sub3186, !dbg !761
  store i32 %sub3186, i32* %bsLive3178, align 4, !dbg !761, !tbaa !354
  %conv3227 = and i32 %shr3187, 255, !dbg !762
  %cmp3228 = icmp eq i32 %conv3227, 144, !dbg !762
  br i1 %cmp3228, label %if.end3231, label %save_state_and_return, !dbg !762

if.end3192:                                       ; preds = %if.end3192.lr.ph, %while.body3177.backedge
  %671 = phi i32 [ %.pre5295, %if.end3192.lr.ph ], [ %dec3213, %while.body3177.backedge ]
  %672 = phi i32 [ %669, %if.end3192.lr.ph ], [ %681, %while.body3177.backedge ]
  %673 = phi %struct.bz_stream* [ %.pre5220, %if.end3192.lr.ph ], [ %677, %while.body3177.backedge ]
  %cmp3195 = icmp eq i32 %671, 0, !dbg !393
  br i1 %cmp3195, label %save_state_and_return, label %if.end3198, !dbg !393

if.end3198:                                       ; preds = %if.end3192
  %674 = load i32* %bsBuff3184.pre, align 4, !dbg !393, !tbaa !354
  %shl3200 = shl i32 %674, 8, !dbg !393
  %next_in3202 = getelementptr inbounds %struct.bz_stream* %673, i64 0, i32 0, !dbg !393
  %675 = load i8** %next_in3202, align 8, !dbg !393, !tbaa !350
  %676 = load i8* %675, align 1, !dbg !393, !tbaa !351
  %conv3203 = zext i8 %676 to i32, !dbg !393
  %or3204 = or i32 %conv3203, %shl3200, !dbg !393
  store i32 %or3204, i32* %bsBuff3184.pre, align 4, !dbg !393, !tbaa !354
  %add3207 = add nsw i32 %672, 8, !dbg !393
  store i32 %add3207, i32* %bsLive3178, align 4, !dbg !393, !tbaa !354
  %incdec.ptr3210 = getelementptr inbounds i8* %675, i64 1, !dbg !393
  store i8* %incdec.ptr3210, i8** %next_in3202, align 8, !dbg !393, !tbaa !350
  %677 = load %struct.bz_stream** %strm1, align 8, !dbg !393, !tbaa !350
  %avail_in3212 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 1, !dbg !393
  %678 = load i32* %avail_in3212, align 4, !dbg !393, !tbaa !354
  %dec3213 = add i32 %678, -1, !dbg !393
  store i32 %dec3213, i32* %avail_in3212, align 4, !dbg !393, !tbaa !354
  %total_in_lo323215 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 2, !dbg !393
  %679 = load i32* %total_in_lo323215, align 4, !dbg !393, !tbaa !354
  %inc3216 = add i32 %679, 1, !dbg !393
  store i32 %inc3216, i32* %total_in_lo323215, align 4, !dbg !393, !tbaa !354
  %cmp3219 = icmp eq i32 %inc3216, 0, !dbg !393
  br i1 %cmp3219, label %if.then3221, label %while.body3177.backedge, !dbg !393

if.then3221:                                      ; preds = %if.end3198
  %total_in_hi323223 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 3, !dbg !393
  %680 = load i32* %total_in_hi323223, align 4, !dbg !393, !tbaa !354
  %inc3224 = add i32 %680, 1, !dbg !393
  store i32 %inc3224, i32* %total_in_hi323223, align 4, !dbg !393, !tbaa !354
  br label %while.body3177.backedge, !dbg !393

while.body3177.backedge:                          ; preds = %if.then3221, %if.end3198
  %681 = load i32* %bsLive3178, align 4, !dbg !393, !tbaa !354
  %cmp3179 = icmp sgt i32 %681, 7, !dbg !393
  br i1 %cmp3179, label %if.then3181, label %if.end3192, !dbg !393

if.end3231:                                       ; preds = %if.then3181
  %storedCombinedCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 24, !dbg !763
  store i32 0, i32* %storedCombinedCRC, align 4, !dbg !763, !tbaa !354
  br label %sw.bb3232, !dbg !763

sw.bb3232:                                        ; preds = %if.end.sw.bb3232_crit_edge, %if.end3231
  %682 = phi i32 [ %.pre5296, %if.end.sw.bb3232_crit_edge ], [ %sub3186, %if.end3231 ]
  store i32 47, i32* %state, align 4, !dbg !764, !tbaa !354
  %bsLive3236 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !394
  %cmp32374758 = icmp sgt i32 %682, 7, !dbg !394
  %bsBuff3242.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !765
  br i1 %cmp32374758, label %if.then3239, label %if.end3250.lr.ph, !dbg !394

if.end3250.lr.ph:                                 ; preds = %sw.bb3232
  %.pre5221 = load %struct.bz_stream** %strm1, align 8, !dbg !394, !tbaa !350
  %avail_in3252.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5221, i64 0, i32 1
  %.pre5297 = load i32* %avail_in3252.phi.trans.insert, align 4, !dbg !394, !tbaa !354
  br label %if.end3250, !dbg !394

if.then3239:                                      ; preds = %sw.bb3232, %while.body3235.backedge
  %.lcssa4756 = phi i32 [ %695, %while.body3235.backedge ], [ %682, %sw.bb3232 ]
  %683 = load i32* %bsBuff3242.pre, align 4, !dbg !765, !tbaa !354
  %sub3244 = add nsw i32 %.lcssa4756, -8, !dbg !765
  %shr3245 = lshr i32 %683, %sub3244, !dbg !765
  store i32 %sub3244, i32* %bsLive3236, align 4, !dbg !765, !tbaa !354
  %storedCombinedCRC3285 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24, !dbg !766
  %684 = load i32* %storedCombinedCRC3285, align 4, !dbg !766, !tbaa !354
  %shl3286 = shl i32 %684, 8, !dbg !766
  %conv3287 = and i32 %shr3245, 255, !dbg !766
  %or3288 = or i32 %shl3286, %conv3287, !dbg !766
  store i32 %or3288, i32* %storedCombinedCRC3285, align 4, !dbg !766, !tbaa !354
  br label %sw.bb3290, !dbg !766

if.end3250:                                       ; preds = %if.end3250.lr.ph, %while.body3235.backedge
  %685 = phi i32 [ %.pre5297, %if.end3250.lr.ph ], [ %dec3271, %while.body3235.backedge ]
  %686 = phi i32 [ %682, %if.end3250.lr.ph ], [ %695, %while.body3235.backedge ]
  %687 = phi %struct.bz_stream* [ %.pre5221, %if.end3250.lr.ph ], [ %691, %while.body3235.backedge ]
  %cmp3253 = icmp eq i32 %685, 0, !dbg !394
  br i1 %cmp3253, label %save_state_and_return, label %if.end3256, !dbg !394

if.end3256:                                       ; preds = %if.end3250
  %688 = load i32* %bsBuff3242.pre, align 4, !dbg !394, !tbaa !354
  %shl3258 = shl i32 %688, 8, !dbg !394
  %next_in3260 = getelementptr inbounds %struct.bz_stream* %687, i64 0, i32 0, !dbg !394
  %689 = load i8** %next_in3260, align 8, !dbg !394, !tbaa !350
  %690 = load i8* %689, align 1, !dbg !394, !tbaa !351
  %conv3261 = zext i8 %690 to i32, !dbg !394
  %or3262 = or i32 %conv3261, %shl3258, !dbg !394
  store i32 %or3262, i32* %bsBuff3242.pre, align 4, !dbg !394, !tbaa !354
  %add3265 = add nsw i32 %686, 8, !dbg !394
  store i32 %add3265, i32* %bsLive3236, align 4, !dbg !394, !tbaa !354
  %incdec.ptr3268 = getelementptr inbounds i8* %689, i64 1, !dbg !394
  store i8* %incdec.ptr3268, i8** %next_in3260, align 8, !dbg !394, !tbaa !350
  %691 = load %struct.bz_stream** %strm1, align 8, !dbg !394, !tbaa !350
  %avail_in3270 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 1, !dbg !394
  %692 = load i32* %avail_in3270, align 4, !dbg !394, !tbaa !354
  %dec3271 = add i32 %692, -1, !dbg !394
  store i32 %dec3271, i32* %avail_in3270, align 4, !dbg !394, !tbaa !354
  %total_in_lo323273 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 2, !dbg !394
  %693 = load i32* %total_in_lo323273, align 4, !dbg !394, !tbaa !354
  %inc3274 = add i32 %693, 1, !dbg !394
  store i32 %inc3274, i32* %total_in_lo323273, align 4, !dbg !394, !tbaa !354
  %cmp3277 = icmp eq i32 %inc3274, 0, !dbg !394
  br i1 %cmp3277, label %if.then3279, label %while.body3235.backedge, !dbg !394

if.then3279:                                      ; preds = %if.end3256
  %total_in_hi323281 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 3, !dbg !394
  %694 = load i32* %total_in_hi323281, align 4, !dbg !394, !tbaa !354
  %inc3282 = add i32 %694, 1, !dbg !394
  store i32 %inc3282, i32* %total_in_hi323281, align 4, !dbg !394, !tbaa !354
  br label %while.body3235.backedge, !dbg !394

while.body3235.backedge:                          ; preds = %if.then3279, %if.end3256
  %695 = load i32* %bsLive3236, align 4, !dbg !394, !tbaa !354
  %cmp3237 = icmp sgt i32 %695, 7, !dbg !394
  br i1 %cmp3237, label %if.then3239, label %if.end3250, !dbg !394

sw.bb3290:                                        ; preds = %if.end.sw.bb3290_crit_edge, %if.then3239
  %696 = phi i32 [ %.pre5298, %if.end.sw.bb3290_crit_edge ], [ %sub3244, %if.then3239 ]
  store i32 48, i32* %state, align 4, !dbg !767, !tbaa !354
  %bsLive3294 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !395
  %cmp32954751 = icmp sgt i32 %696, 7, !dbg !395
  %bsBuff3300.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !768
  br i1 %cmp32954751, label %if.then3297, label %if.end3308.lr.ph, !dbg !395

if.end3308.lr.ph:                                 ; preds = %sw.bb3290
  %.pre5222 = load %struct.bz_stream** %strm1, align 8, !dbg !395, !tbaa !350
  %avail_in3310.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5222, i64 0, i32 1
  %.pre5299 = load i32* %avail_in3310.phi.trans.insert, align 4, !dbg !395, !tbaa !354
  br label %if.end3308, !dbg !395

if.then3297:                                      ; preds = %sw.bb3290, %while.body3293.backedge
  %.lcssa4749 = phi i32 [ %709, %while.body3293.backedge ], [ %696, %sw.bb3290 ]
  %697 = load i32* %bsBuff3300.pre, align 4, !dbg !768, !tbaa !354
  %sub3302 = add nsw i32 %.lcssa4749, -8, !dbg !768
  %shr3303 = lshr i32 %697, %sub3302, !dbg !768
  store i32 %sub3302, i32* %bsLive3294, align 4, !dbg !768, !tbaa !354
  %storedCombinedCRC3343 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24, !dbg !769
  %698 = load i32* %storedCombinedCRC3343, align 4, !dbg !769, !tbaa !354
  %shl3344 = shl i32 %698, 8, !dbg !769
  %conv3345 = and i32 %shr3303, 255, !dbg !769
  %or3346 = or i32 %shl3344, %conv3345, !dbg !769
  store i32 %or3346, i32* %storedCombinedCRC3343, align 4, !dbg !769, !tbaa !354
  br label %sw.bb3348, !dbg !769

if.end3308:                                       ; preds = %if.end3308.lr.ph, %while.body3293.backedge
  %699 = phi i32 [ %.pre5299, %if.end3308.lr.ph ], [ %dec3329, %while.body3293.backedge ]
  %700 = phi i32 [ %696, %if.end3308.lr.ph ], [ %709, %while.body3293.backedge ]
  %701 = phi %struct.bz_stream* [ %.pre5222, %if.end3308.lr.ph ], [ %705, %while.body3293.backedge ]
  %cmp3311 = icmp eq i32 %699, 0, !dbg !395
  br i1 %cmp3311, label %save_state_and_return, label %if.end3314, !dbg !395

if.end3314:                                       ; preds = %if.end3308
  %702 = load i32* %bsBuff3300.pre, align 4, !dbg !395, !tbaa !354
  %shl3316 = shl i32 %702, 8, !dbg !395
  %next_in3318 = getelementptr inbounds %struct.bz_stream* %701, i64 0, i32 0, !dbg !395
  %703 = load i8** %next_in3318, align 8, !dbg !395, !tbaa !350
  %704 = load i8* %703, align 1, !dbg !395, !tbaa !351
  %conv3319 = zext i8 %704 to i32, !dbg !395
  %or3320 = or i32 %conv3319, %shl3316, !dbg !395
  store i32 %or3320, i32* %bsBuff3300.pre, align 4, !dbg !395, !tbaa !354
  %add3323 = add nsw i32 %700, 8, !dbg !395
  store i32 %add3323, i32* %bsLive3294, align 4, !dbg !395, !tbaa !354
  %incdec.ptr3326 = getelementptr inbounds i8* %703, i64 1, !dbg !395
  store i8* %incdec.ptr3326, i8** %next_in3318, align 8, !dbg !395, !tbaa !350
  %705 = load %struct.bz_stream** %strm1, align 8, !dbg !395, !tbaa !350
  %avail_in3328 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 1, !dbg !395
  %706 = load i32* %avail_in3328, align 4, !dbg !395, !tbaa !354
  %dec3329 = add i32 %706, -1, !dbg !395
  store i32 %dec3329, i32* %avail_in3328, align 4, !dbg !395, !tbaa !354
  %total_in_lo323331 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 2, !dbg !395
  %707 = load i32* %total_in_lo323331, align 4, !dbg !395, !tbaa !354
  %inc3332 = add i32 %707, 1, !dbg !395
  store i32 %inc3332, i32* %total_in_lo323331, align 4, !dbg !395, !tbaa !354
  %cmp3335 = icmp eq i32 %inc3332, 0, !dbg !395
  br i1 %cmp3335, label %if.then3337, label %while.body3293.backedge, !dbg !395

if.then3337:                                      ; preds = %if.end3314
  %total_in_hi323339 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 3, !dbg !395
  %708 = load i32* %total_in_hi323339, align 4, !dbg !395, !tbaa !354
  %inc3340 = add i32 %708, 1, !dbg !395
  store i32 %inc3340, i32* %total_in_hi323339, align 4, !dbg !395, !tbaa !354
  br label %while.body3293.backedge, !dbg !395

while.body3293.backedge:                          ; preds = %if.then3337, %if.end3314
  %709 = load i32* %bsLive3294, align 4, !dbg !395, !tbaa !354
  %cmp3295 = icmp sgt i32 %709, 7, !dbg !395
  br i1 %cmp3295, label %if.then3297, label %if.end3308, !dbg !395

sw.bb3348:                                        ; preds = %if.end.sw.bb3348_crit_edge, %if.then3297
  %710 = phi i32 [ %.pre5300, %if.end.sw.bb3348_crit_edge ], [ %sub3302, %if.then3297 ]
  store i32 49, i32* %state, align 4, !dbg !770, !tbaa !354
  %bsLive3352 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !396
  %cmp33534744 = icmp sgt i32 %710, 7, !dbg !396
  %bsBuff3358.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !771
  br i1 %cmp33534744, label %if.then3355, label %if.end3366.lr.ph, !dbg !396

if.end3366.lr.ph:                                 ; preds = %sw.bb3348
  %.pre5223 = load %struct.bz_stream** %strm1, align 8, !dbg !396, !tbaa !350
  %avail_in3368.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5223, i64 0, i32 1
  %.pre5301 = load i32* %avail_in3368.phi.trans.insert, align 4, !dbg !396, !tbaa !354
  br label %if.end3366, !dbg !396

if.then3355:                                      ; preds = %sw.bb3348, %while.body3351.backedge
  %.lcssa4742 = phi i32 [ %723, %while.body3351.backedge ], [ %710, %sw.bb3348 ]
  %711 = load i32* %bsBuff3358.pre, align 4, !dbg !771, !tbaa !354
  %sub3360 = add nsw i32 %.lcssa4742, -8, !dbg !771
  %shr3361 = lshr i32 %711, %sub3360, !dbg !771
  store i32 %sub3360, i32* %bsLive3352, align 4, !dbg !771, !tbaa !354
  %storedCombinedCRC3401 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24, !dbg !772
  %712 = load i32* %storedCombinedCRC3401, align 4, !dbg !772, !tbaa !354
  %shl3402 = shl i32 %712, 8, !dbg !772
  %conv3403 = and i32 %shr3361, 255, !dbg !772
  %or3404 = or i32 %shl3402, %conv3403, !dbg !772
  store i32 %or3404, i32* %storedCombinedCRC3401, align 4, !dbg !772, !tbaa !354
  br label %sw.bb3406, !dbg !772

if.end3366:                                       ; preds = %if.end3366.lr.ph, %while.body3351.backedge
  %713 = phi i32 [ %.pre5301, %if.end3366.lr.ph ], [ %dec3387, %while.body3351.backedge ]
  %714 = phi i32 [ %710, %if.end3366.lr.ph ], [ %723, %while.body3351.backedge ]
  %715 = phi %struct.bz_stream* [ %.pre5223, %if.end3366.lr.ph ], [ %719, %while.body3351.backedge ]
  %cmp3369 = icmp eq i32 %713, 0, !dbg !396
  br i1 %cmp3369, label %save_state_and_return, label %if.end3372, !dbg !396

if.end3372:                                       ; preds = %if.end3366
  %716 = load i32* %bsBuff3358.pre, align 4, !dbg !396, !tbaa !354
  %shl3374 = shl i32 %716, 8, !dbg !396
  %next_in3376 = getelementptr inbounds %struct.bz_stream* %715, i64 0, i32 0, !dbg !396
  %717 = load i8** %next_in3376, align 8, !dbg !396, !tbaa !350
  %718 = load i8* %717, align 1, !dbg !396, !tbaa !351
  %conv3377 = zext i8 %718 to i32, !dbg !396
  %or3378 = or i32 %conv3377, %shl3374, !dbg !396
  store i32 %or3378, i32* %bsBuff3358.pre, align 4, !dbg !396, !tbaa !354
  %add3381 = add nsw i32 %714, 8, !dbg !396
  store i32 %add3381, i32* %bsLive3352, align 4, !dbg !396, !tbaa !354
  %incdec.ptr3384 = getelementptr inbounds i8* %717, i64 1, !dbg !396
  store i8* %incdec.ptr3384, i8** %next_in3376, align 8, !dbg !396, !tbaa !350
  %719 = load %struct.bz_stream** %strm1, align 8, !dbg !396, !tbaa !350
  %avail_in3386 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 1, !dbg !396
  %720 = load i32* %avail_in3386, align 4, !dbg !396, !tbaa !354
  %dec3387 = add i32 %720, -1, !dbg !396
  store i32 %dec3387, i32* %avail_in3386, align 4, !dbg !396, !tbaa !354
  %total_in_lo323389 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 2, !dbg !396
  %721 = load i32* %total_in_lo323389, align 4, !dbg !396, !tbaa !354
  %inc3390 = add i32 %721, 1, !dbg !396
  store i32 %inc3390, i32* %total_in_lo323389, align 4, !dbg !396, !tbaa !354
  %cmp3393 = icmp eq i32 %inc3390, 0, !dbg !396
  br i1 %cmp3393, label %if.then3395, label %while.body3351.backedge, !dbg !396

if.then3395:                                      ; preds = %if.end3372
  %total_in_hi323397 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 3, !dbg !396
  %722 = load i32* %total_in_hi323397, align 4, !dbg !396, !tbaa !354
  %inc3398 = add i32 %722, 1, !dbg !396
  store i32 %inc3398, i32* %total_in_hi323397, align 4, !dbg !396, !tbaa !354
  br label %while.body3351.backedge, !dbg !396

while.body3351.backedge:                          ; preds = %if.then3395, %if.end3372
  %723 = load i32* %bsLive3352, align 4, !dbg !396, !tbaa !354
  %cmp3353 = icmp sgt i32 %723, 7, !dbg !396
  br i1 %cmp3353, label %if.then3355, label %if.end3366, !dbg !396

sw.bb3406:                                        ; preds = %if.end.sw.bb3406_crit_edge, %if.then3355
  %724 = phi i32 [ %.pre5302, %if.end.sw.bb3406_crit_edge ], [ %sub3360, %if.then3355 ]
  store i32 50, i32* %state, align 4, !dbg !773, !tbaa !354
  %bsLive3410 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8, !dbg !397
  %cmp34114738 = icmp sgt i32 %724, 7, !dbg !397
  %bsBuff3416.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7, !dbg !774
  br i1 %cmp34114738, label %if.then3413, label %if.end3424.lr.ph, !dbg !397

if.end3424.lr.ph:                                 ; preds = %sw.bb3406
  %.pre5224 = load %struct.bz_stream** %strm1, align 8, !dbg !397, !tbaa !350
  %avail_in3426.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5224, i64 0, i32 1
  %.pre5303 = load i32* %avail_in3426.phi.trans.insert, align 4, !dbg !397, !tbaa !354
  br label %if.end3424, !dbg !397

if.then3413:                                      ; preds = %sw.bb3406, %while.body3409.backedge
  %.lcssa = phi i32 [ %737, %while.body3409.backedge ], [ %724, %sw.bb3406 ]
  %725 = load i32* %bsBuff3416.pre, align 4, !dbg !774, !tbaa !354
  %sub3418 = add nsw i32 %.lcssa, -8, !dbg !774
  %shr3419 = lshr i32 %725, %sub3418, !dbg !774
  store i32 %sub3418, i32* %bsLive3410, align 4, !dbg !774, !tbaa !354
  %storedCombinedCRC3459 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24, !dbg !775
  %726 = load i32* %storedCombinedCRC3459, align 4, !dbg !775, !tbaa !354
  %shl3460 = shl i32 %726, 8, !dbg !775
  %conv3461 = and i32 %shr3419, 255, !dbg !775
  %or3462 = or i32 %shl3460, %conv3461, !dbg !775
  store i32 %or3462, i32* %storedCombinedCRC3459, align 4, !dbg !775, !tbaa !354
  store i32 1, i32* %state, align 4, !dbg !776, !tbaa !354
  call void @llvm.dbg.value(metadata !777, i64 0, metadata !144), !dbg !778
  br label %save_state_and_return, !dbg !778

if.end3424:                                       ; preds = %if.end3424.lr.ph, %while.body3409.backedge
  %727 = phi i32 [ %.pre5303, %if.end3424.lr.ph ], [ %dec3445, %while.body3409.backedge ]
  %728 = phi i32 [ %724, %if.end3424.lr.ph ], [ %737, %while.body3409.backedge ]
  %729 = phi %struct.bz_stream* [ %.pre5224, %if.end3424.lr.ph ], [ %733, %while.body3409.backedge ]
  %cmp3427 = icmp eq i32 %727, 0, !dbg !397
  br i1 %cmp3427, label %save_state_and_return, label %if.end3430, !dbg !397

if.end3430:                                       ; preds = %if.end3424
  %730 = load i32* %bsBuff3416.pre, align 4, !dbg !397, !tbaa !354
  %shl3432 = shl i32 %730, 8, !dbg !397
  %next_in3434 = getelementptr inbounds %struct.bz_stream* %729, i64 0, i32 0, !dbg !397
  %731 = load i8** %next_in3434, align 8, !dbg !397, !tbaa !350
  %732 = load i8* %731, align 1, !dbg !397, !tbaa !351
  %conv3435 = zext i8 %732 to i32, !dbg !397
  %or3436 = or i32 %conv3435, %shl3432, !dbg !397
  store i32 %or3436, i32* %bsBuff3416.pre, align 4, !dbg !397, !tbaa !354
  %add3439 = add nsw i32 %728, 8, !dbg !397
  store i32 %add3439, i32* %bsLive3410, align 4, !dbg !397, !tbaa !354
  %incdec.ptr3442 = getelementptr inbounds i8* %731, i64 1, !dbg !397
  store i8* %incdec.ptr3442, i8** %next_in3434, align 8, !dbg !397, !tbaa !350
  %733 = load %struct.bz_stream** %strm1, align 8, !dbg !397, !tbaa !350
  %avail_in3444 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 1, !dbg !397
  %734 = load i32* %avail_in3444, align 4, !dbg !397, !tbaa !354
  %dec3445 = add i32 %734, -1, !dbg !397
  store i32 %dec3445, i32* %avail_in3444, align 4, !dbg !397, !tbaa !354
  %total_in_lo323447 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 2, !dbg !397
  %735 = load i32* %total_in_lo323447, align 4, !dbg !397, !tbaa !354
  %inc3448 = add i32 %735, 1, !dbg !397
  store i32 %inc3448, i32* %total_in_lo323447, align 4, !dbg !397, !tbaa !354
  %cmp3451 = icmp eq i32 %inc3448, 0, !dbg !397
  br i1 %cmp3451, label %if.then3453, label %while.body3409.backedge, !dbg !397

if.then3453:                                      ; preds = %if.end3430
  %total_in_hi323455 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 3, !dbg !397
  %736 = load i32* %total_in_hi323455, align 4, !dbg !397, !tbaa !354
  %inc3456 = add i32 %736, 1, !dbg !397
  store i32 %inc3456, i32* %total_in_hi323455, align 4, !dbg !397, !tbaa !354
  br label %while.body3409.backedge, !dbg !397

while.body3409.backedge:                          ; preds = %if.then3453, %if.end3430
  %737 = load i32* %bsLive3410, align 4, !dbg !397, !tbaa !354
  %cmp3411 = icmp sgt i32 %737, 7, !dbg !397
  br i1 %cmp3411, label %if.then3413, label %if.end3424, !dbg !397

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 4001) #5, !dbg !780
  call void @BZ2_bz__AssertH__fail(i32 4002) #5, !dbg !782
  br label %save_state_and_return, !dbg !782

save_state_and_return:                            ; preds = %if.end33, %if.end78, %if.end134, %if.end189, %if.end288, %if.end349, %if.end405, %if.end461, %if.end517, %if.end573, %if.end636, %if.end692, %if.end748, %if.end804, %if.end860, %if.end911, %if.end967, %if.end1023, %if.end1250, %if.end1307, %if.end1807, %if.end2428, %if.end2493, %if.end2002, %while.body2145, %while.body2161, %if.end2067, %for.body2592, %if.end1872, %if.end1480, %if.end1546, %if.end1604, %if.end1407, %if.end1368, %if.end1177, %if.end1094, %if.end2960, %if.end3018, %if.end3076, %if.end3134, %if.end3192, %if.end3250, %if.end3308, %if.end3366, %if.end3424, %if.then3181, %if.then3123, %if.then3065, %if.then3007, %if.then2949, %if.else2821, %if.end2814, %if.else2925, %if.end2916, %while.end2549, %while.end2530, %while.body2464, %if.then2382, %if.else2174, %while.end2104, %while.body2038, %if.then1956, %while.end1909, %while.body1843, %if.then1761, %while.body1520, %if.then1298, %if.then1241, %if.then1241, %if.then1241, %makeMaps_d.exit, %if.end1067, %if.then1013, %if.then563, %if.then507, %if.then451, %if.then395, %if.then339, %if.then278, %if.else, %if.then234, %if.then180, %if.then124, %if.then68, %if.then29, %sw.default, %if.then3413
  %gPerm.14 = phi i32* [ %3, %sw.default ], [ %3, %if.then3413 ], [ %3, %if.then29 ], [ %3, %if.then68 ], [ %3, %if.then124 ], [ %3, %if.then180 ], [ %3, %if.then234 ], [ %3, %if.else ], [ %3, %if.then278 ], [ %3, %if.then339 ], [ %3, %if.then395 ], [ %3, %if.then451 ], [ %3, %if.then507 ], [ %3, %if.then563 ], [ %3, %if.then1013 ], [ %3, %if.end1067 ], [ %3, %makeMaps_d.exit ], [ %3, %if.then1241 ], [ %3, %if.then1241 ], [ %3, %if.then1241 ], [ %3, %if.then1298 ], [ %3, %while.body1520 ], [ %3, %if.then1761 ], [ %gPerm.2, %while.body1843 ], [ %gPerm.2, %while.end1909 ], [ %gPerm.5, %if.then1956 ], [ %gPerm.8, %while.body2038 ], [ %gPerm.8, %while.end2104 ], [ %gPerm.4, %if.else2174 ], [ %gPerm.4, %if.then2382 ], [ %gPerm.12, %while.body2464 ], [ %gPerm.12, %while.end2530 ], [ %gPerm.4, %while.end2549 ], [ %gPerm.4, %if.end2916 ], [ %gPerm.4, %if.else2925 ], [ %gPerm.4, %if.end2814 ], [ %gPerm.4, %if.else2821 ], [ %3, %if.then2949 ], [ %3, %if.then3007 ], [ %3, %if.then3065 ], [ %3, %if.then3123 ], [ %3, %if.then3181 ], [ %3, %if.end3424 ], [ %3, %if.end3366 ], [ %3, %if.end3308 ], [ %3, %if.end3250 ], [ %3, %if.end3192 ], [ %3, %if.end3134 ], [ %3, %if.end3076 ], [ %3, %if.end3018 ], [ %3, %if.end2960 ], [ %3, %if.end1094 ], [ %3, %if.end1177 ], [ %3, %if.end1368 ], [ %3, %if.end1407 ], [ %3, %if.end1604 ], [ %3, %if.end1546 ], [ %3, %if.end1480 ], [ %gPerm.3, %if.end1872 ], [ %gPerm.4, %for.body2592 ], [ %gPerm.9, %if.end2067 ], [ %gPerm.8, %while.body2161 ], [ %gPerm.8, %while.body2145 ], [ %gPerm.7, %if.end2002 ], [ %gPerm.13, %if.end2493 ], [ %gPerm.11, %if.end2428 ], [ %gPerm.1, %if.end1807 ], [ %3, %if.end1307 ], [ %3, %if.end1250 ], [ %3, %if.end1023 ], [ %3, %if.end967 ], [ %3, %if.end911 ], [ %3, %if.end860 ], [ %3, %if.end804 ], [ %3, %if.end748 ], [ %3, %if.end692 ], [ %3, %if.end636 ], [ %3, %if.end573 ], [ %3, %if.end517 ], [ %3, %if.end461 ], [ %3, %if.end405 ], [ %3, %if.end349 ], [ %3, %if.end288 ], [ %3, %if.end189 ], [ %3, %if.end134 ], [ %3, %if.end78 ], [ %3, %if.end33 ]
  %gBase.14 = phi i32* [ %4, %sw.default ], [ %4, %if.then3413 ], [ %4, %if.then29 ], [ %4, %if.then68 ], [ %4, %if.then124 ], [ %4, %if.then180 ], [ %4, %if.then234 ], [ %4, %if.else ], [ %4, %if.then278 ], [ %4, %if.then339 ], [ %4, %if.then395 ], [ %4, %if.then451 ], [ %4, %if.then507 ], [ %4, %if.then563 ], [ %4, %if.then1013 ], [ %4, %if.end1067 ], [ %4, %makeMaps_d.exit ], [ %4, %if.then1241 ], [ %4, %if.then1241 ], [ %4, %if.then1241 ], [ %4, %if.then1298 ], [ %4, %while.body1520 ], [ %4, %if.then1761 ], [ %gBase.2, %while.body1843 ], [ %gBase.2, %while.end1909 ], [ %gBase.5, %if.then1956 ], [ %gBase.8, %while.body2038 ], [ %gBase.8, %while.end2104 ], [ %gBase.4, %if.else2174 ], [ %gBase.4, %if.then2382 ], [ %gBase.12, %while.body2464 ], [ %gBase.12, %while.end2530 ], [ %gBase.4, %while.end2549 ], [ %gBase.4, %if.end2916 ], [ %gBase.4, %if.else2925 ], [ %gBase.4, %if.end2814 ], [ %gBase.4, %if.else2821 ], [ %4, %if.then2949 ], [ %4, %if.then3007 ], [ %4, %if.then3065 ], [ %4, %if.then3123 ], [ %4, %if.then3181 ], [ %4, %if.end3424 ], [ %4, %if.end3366 ], [ %4, %if.end3308 ], [ %4, %if.end3250 ], [ %4, %if.end3192 ], [ %4, %if.end3134 ], [ %4, %if.end3076 ], [ %4, %if.end3018 ], [ %4, %if.end2960 ], [ %4, %if.end1094 ], [ %4, %if.end1177 ], [ %4, %if.end1368 ], [ %4, %if.end1407 ], [ %4, %if.end1604 ], [ %4, %if.end1546 ], [ %4, %if.end1480 ], [ %gBase.3, %if.end1872 ], [ %gBase.4, %for.body2592 ], [ %gBase.9, %if.end2067 ], [ %gBase.8, %while.body2161 ], [ %gBase.8, %while.body2145 ], [ %gBase.7, %if.end2002 ], [ %gBase.13, %if.end2493 ], [ %gBase.11, %if.end2428 ], [ %gBase.1, %if.end1807 ], [ %4, %if.end1307 ], [ %4, %if.end1250 ], [ %4, %if.end1023 ], [ %4, %if.end967 ], [ %4, %if.end911 ], [ %4, %if.end860 ], [ %4, %if.end804 ], [ %4, %if.end748 ], [ %4, %if.end692 ], [ %4, %if.end636 ], [ %4, %if.end573 ], [ %4, %if.end517 ], [ %4, %if.end461 ], [ %4, %if.end405 ], [ %4, %if.end349 ], [ %4, %if.end288 ], [ %4, %if.end189 ], [ %4, %if.end134 ], [ %4, %if.end78 ], [ %4, %if.end33 ]
  %gLimit.14 = phi i32* [ %5, %sw.default ], [ %5, %if.then3413 ], [ %5, %if.then29 ], [ %5, %if.then68 ], [ %5, %if.then124 ], [ %5, %if.then180 ], [ %5, %if.then234 ], [ %5, %if.else ], [ %5, %if.then278 ], [ %5, %if.then339 ], [ %5, %if.then395 ], [ %5, %if.then451 ], [ %5, %if.then507 ], [ %5, %if.then563 ], [ %5, %if.then1013 ], [ %5, %if.end1067 ], [ %5, %makeMaps_d.exit ], [ %5, %if.then1241 ], [ %5, %if.then1241 ], [ %5, %if.then1241 ], [ %5, %if.then1298 ], [ %5, %while.body1520 ], [ %5, %if.then1761 ], [ %gLimit.2, %while.body1843 ], [ %gLimit.2, %while.end1909 ], [ %gLimit.5, %if.then1956 ], [ %gLimit.8, %while.body2038 ], [ %gLimit.8, %while.end2104 ], [ %gLimit.4, %if.else2174 ], [ %gLimit.4, %if.then2382 ], [ %gLimit.12, %while.body2464 ], [ %gLimit.12, %while.end2530 ], [ %gLimit.4, %while.end2549 ], [ %gLimit.4, %if.end2916 ], [ %gLimit.4, %if.else2925 ], [ %gLimit.4, %if.end2814 ], [ %gLimit.4, %if.else2821 ], [ %5, %if.then2949 ], [ %5, %if.then3007 ], [ %5, %if.then3065 ], [ %5, %if.then3123 ], [ %5, %if.then3181 ], [ %5, %if.end3424 ], [ %5, %if.end3366 ], [ %5, %if.end3308 ], [ %5, %if.end3250 ], [ %5, %if.end3192 ], [ %5, %if.end3134 ], [ %5, %if.end3076 ], [ %5, %if.end3018 ], [ %5, %if.end2960 ], [ %5, %if.end1094 ], [ %5, %if.end1177 ], [ %5, %if.end1368 ], [ %5, %if.end1407 ], [ %5, %if.end1604 ], [ %5, %if.end1546 ], [ %5, %if.end1480 ], [ %gLimit.3, %if.end1872 ], [ %gLimit.4, %for.body2592 ], [ %gLimit.9, %if.end2067 ], [ %gLimit.8, %while.body2161 ], [ %gLimit.8, %while.body2145 ], [ %gLimit.7, %if.end2002 ], [ %gLimit.13, %if.end2493 ], [ %gLimit.11, %if.end2428 ], [ %gLimit.1, %if.end1807 ], [ %5, %if.end1307 ], [ %5, %if.end1250 ], [ %5, %if.end1023 ], [ %5, %if.end967 ], [ %5, %if.end911 ], [ %5, %if.end860 ], [ %5, %if.end804 ], [ %5, %if.end748 ], [ %5, %if.end692 ], [ %5, %if.end636 ], [ %5, %if.end573 ], [ %5, %if.end517 ], [ %5, %if.end461 ], [ %5, %if.end405 ], [ %5, %if.end349 ], [ %5, %if.end288 ], [ %5, %if.end189 ], [ %5, %if.end134 ], [ %5, %if.end78 ], [ %5, %if.end33 ]
  %gMinlen.14 = phi i32 [ %6, %sw.default ], [ %6, %if.then3413 ], [ %6, %if.then29 ], [ %6, %if.then68 ], [ %6, %if.then124 ], [ %6, %if.then180 ], [ %6, %if.then234 ], [ %6, %if.else ], [ %6, %if.then278 ], [ %6, %if.then339 ], [ %6, %if.then395 ], [ %6, %if.then451 ], [ %6, %if.then507 ], [ %6, %if.then563 ], [ %6, %if.then1013 ], [ %6, %if.end1067 ], [ %6, %makeMaps_d.exit ], [ %6, %if.then1241 ], [ %6, %if.then1241 ], [ %6, %if.then1241 ], [ %6, %if.then1298 ], [ %6, %while.body1520 ], [ %6, %if.then1761 ], [ %gMinlen.2, %while.body1843 ], [ %gMinlen.2, %while.end1909 ], [ %gMinlen.5, %if.then1956 ], [ %gMinlen.8, %while.body2038 ], [ %gMinlen.8, %while.end2104 ], [ %gMinlen.4, %if.else2174 ], [ %gMinlen.4, %if.then2382 ], [ %gMinlen.12, %while.body2464 ], [ %gMinlen.12, %while.end2530 ], [ %gMinlen.4, %while.end2549 ], [ %gMinlen.4, %if.end2916 ], [ %gMinlen.4, %if.else2925 ], [ %gMinlen.4, %if.end2814 ], [ %gMinlen.4, %if.else2821 ], [ %6, %if.then2949 ], [ %6, %if.then3007 ], [ %6, %if.then3065 ], [ %6, %if.then3123 ], [ %6, %if.then3181 ], [ %6, %if.end3424 ], [ %6, %if.end3366 ], [ %6, %if.end3308 ], [ %6, %if.end3250 ], [ %6, %if.end3192 ], [ %6, %if.end3134 ], [ %6, %if.end3076 ], [ %6, %if.end3018 ], [ %6, %if.end2960 ], [ %6, %if.end1094 ], [ %6, %if.end1177 ], [ %6, %if.end1368 ], [ %6, %if.end1407 ], [ %6, %if.end1604 ], [ %6, %if.end1546 ], [ %6, %if.end1480 ], [ %gMinlen.3, %if.end1872 ], [ %gMinlen.4, %for.body2592 ], [ %gMinlen.9, %if.end2067 ], [ %gMinlen.8, %while.body2161 ], [ %gMinlen.8, %while.body2145 ], [ %gMinlen.7, %if.end2002 ], [ %gMinlen.13, %if.end2493 ], [ %gMinlen.11, %if.end2428 ], [ %gMinlen.1, %if.end1807 ], [ %6, %if.end1307 ], [ %6, %if.end1250 ], [ %6, %if.end1023 ], [ %6, %if.end967 ], [ %6, %if.end911 ], [ %6, %if.end860 ], [ %6, %if.end804 ], [ %6, %if.end748 ], [ %6, %if.end692 ], [ %6, %if.end636 ], [ %6, %if.end573 ], [ %6, %if.end517 ], [ %6, %if.end461 ], [ %6, %if.end405 ], [ %6, %if.end349 ], [ %6, %if.end288 ], [ %6, %if.end189 ], [ %6, %if.end134 ], [ %6, %if.end78 ], [ %6, %if.end33 ]
  %gSel.14 = phi i32 [ %7, %sw.default ], [ %7, %if.then3413 ], [ %7, %if.then29 ], [ %7, %if.then68 ], [ %7, %if.then124 ], [ %7, %if.then180 ], [ %7, %if.then234 ], [ %7, %if.else ], [ %7, %if.then278 ], [ %7, %if.then339 ], [ %7, %if.then395 ], [ %7, %if.then451 ], [ %7, %if.then507 ], [ %7, %if.then563 ], [ %7, %if.then1013 ], [ %7, %if.end1067 ], [ %7, %makeMaps_d.exit ], [ %7, %if.then1241 ], [ %7, %if.then1241 ], [ %7, %if.then1241 ], [ %7, %if.then1298 ], [ %7, %while.body1520 ], [ %7, %if.then1761 ], [ %gSel.2, %while.body1843 ], [ %gSel.2, %while.end1909 ], [ %gSel.5, %if.then1956 ], [ %gSel.8, %while.body2038 ], [ %gSel.8, %while.end2104 ], [ %gSel.4, %if.else2174 ], [ %gSel.4, %if.then2382 ], [ %gSel.12, %while.body2464 ], [ %gSel.12, %while.end2530 ], [ %gSel.4, %while.end2549 ], [ %gSel.4, %if.end2916 ], [ %gSel.4, %if.else2925 ], [ %gSel.4, %if.end2814 ], [ %gSel.4, %if.else2821 ], [ %7, %if.then2949 ], [ %7, %if.then3007 ], [ %7, %if.then3065 ], [ %7, %if.then3123 ], [ %7, %if.then3181 ], [ %7, %if.end3424 ], [ %7, %if.end3366 ], [ %7, %if.end3308 ], [ %7, %if.end3250 ], [ %7, %if.end3192 ], [ %7, %if.end3134 ], [ %7, %if.end3076 ], [ %7, %if.end3018 ], [ %7, %if.end2960 ], [ %7, %if.end1094 ], [ %7, %if.end1177 ], [ %7, %if.end1368 ], [ %7, %if.end1407 ], [ %7, %if.end1604 ], [ %7, %if.end1546 ], [ %7, %if.end1480 ], [ %gSel.3, %if.end1872 ], [ %gSel.4, %for.body2592 ], [ %gSel.9, %if.end2067 ], [ %gSel.8, %while.body2161 ], [ %gSel.8, %while.body2145 ], [ %gSel.7, %if.end2002 ], [ %gSel.13, %if.end2493 ], [ %gSel.11, %if.end2428 ], [ %gSel.1, %if.end1807 ], [ %7, %if.end1307 ], [ %7, %if.end1250 ], [ %7, %if.end1023 ], [ %7, %if.end967 ], [ %7, %if.end911 ], [ %7, %if.end860 ], [ %7, %if.end804 ], [ %7, %if.end748 ], [ %7, %if.end692 ], [ %7, %if.end636 ], [ %7, %if.end573 ], [ %7, %if.end517 ], [ %7, %if.end461 ], [ %7, %if.end405 ], [ %7, %if.end349 ], [ %7, %if.end288 ], [ %7, %if.end189 ], [ %7, %if.end134 ], [ %7, %if.end78 ], [ %7, %if.end33 ]
  %zj.10 = phi i32 [ %8, %sw.default ], [ %8, %if.then3413 ], [ %8, %if.then29 ], [ %8, %if.then68 ], [ %8, %if.then124 ], [ %8, %if.then180 ], [ %8, %if.then234 ], [ %8, %if.else ], [ %8, %if.then278 ], [ %8, %if.then339 ], [ %8, %if.then395 ], [ %8, %if.then451 ], [ %8, %if.then507 ], [ %8, %if.then563 ], [ %8, %if.then1013 ], [ %8, %if.end1067 ], [ %8, %makeMaps_d.exit ], [ %8, %if.then1241 ], [ %8, %if.then1241 ], [ %8, %if.then1241 ], [ %8, %if.then1298 ], [ %8, %while.body1520 ], [ %8, %if.then1761 ], [ %zj.0, %while.body1843 ], [ %zj.0, %while.end1909 ], [ %zj.3, %if.then1956 ], [ %zj.5, %while.body2038 ], [ %zj.5, %while.end2104 ], [ %zj.2, %if.else2174 ], [ %zj.2, %if.then2382 ], [ %zj.8, %while.body2464 ], [ %zj.8, %while.end2530 ], [ %zj.2, %while.end2549 ], [ %zj.2, %if.end2916 ], [ %zj.2, %if.else2925 ], [ %zj.2, %if.end2814 ], [ %zj.2, %if.else2821 ], [ %8, %if.then2949 ], [ %8, %if.then3007 ], [ %8, %if.then3065 ], [ %8, %if.then3123 ], [ %8, %if.then3181 ], [ %8, %if.end3424 ], [ %8, %if.end3366 ], [ %8, %if.end3308 ], [ %8, %if.end3250 ], [ %8, %if.end3192 ], [ %8, %if.end3134 ], [ %8, %if.end3076 ], [ %8, %if.end3018 ], [ %8, %if.end2960 ], [ %8, %if.end1094 ], [ %8, %if.end1177 ], [ %8, %if.end1368 ], [ %8, %if.end1407 ], [ %8, %if.end1604 ], [ %8, %if.end1546 ], [ %8, %if.end1480 ], [ %zj.1, %if.end1872 ], [ %zj.2, %for.body2592 ], [ %zj.6, %if.end2067 ], [ %zj.5, %while.body2161 ], [ %zj.5, %while.body2145 ], [ %zj.4, %if.end2002 ], [ %zj.9, %if.end2493 ], [ %zj.7, %if.end2428 ], [ %8, %if.end1807 ], [ %8, %if.end1307 ], [ %8, %if.end1250 ], [ %8, %if.end1023 ], [ %8, %if.end967 ], [ %8, %if.end911 ], [ %8, %if.end860 ], [ %8, %if.end804 ], [ %8, %if.end748 ], [ %8, %if.end692 ], [ %8, %if.end636 ], [ %8, %if.end573 ], [ %8, %if.end517 ], [ %8, %if.end461 ], [ %8, %if.end405 ], [ %8, %if.end349 ], [ %8, %if.end288 ], [ %8, %if.end189 ], [ %8, %if.end134 ], [ %8, %if.end78 ], [ %8, %if.end33 ]
  %zvec.10 = phi i32 [ %9, %sw.default ], [ %9, %if.then3413 ], [ %9, %if.then29 ], [ %9, %if.then68 ], [ %9, %if.then124 ], [ %9, %if.then180 ], [ %9, %if.then234 ], [ %9, %if.else ], [ %9, %if.then278 ], [ %9, %if.then339 ], [ %9, %if.then395 ], [ %9, %if.then451 ], [ %9, %if.then507 ], [ %9, %if.then563 ], [ %9, %if.then1013 ], [ %9, %if.end1067 ], [ %9, %makeMaps_d.exit ], [ %9, %if.then1241 ], [ %9, %if.then1241 ], [ %9, %if.then1241 ], [ %9, %if.then1298 ], [ %9, %while.body1520 ], [ %9, %if.then1761 ], [ %zvec.0, %while.body1843 ], [ %zvec.0, %while.end1909 ], [ %zvec.3, %if.then1956 ], [ %zvec.5, %while.body2038 ], [ %zvec.5, %while.end2104 ], [ %zvec.2, %if.else2174 ], [ %zvec.2, %if.then2382 ], [ %zvec.8, %while.body2464 ], [ %zvec.8, %while.end2530 ], [ %zvec.2, %while.end2549 ], [ %zvec.2, %if.end2916 ], [ %zvec.2, %if.else2925 ], [ %zvec.2, %if.end2814 ], [ %zvec.2, %if.else2821 ], [ %9, %if.then2949 ], [ %9, %if.then3007 ], [ %9, %if.then3065 ], [ %9, %if.then3123 ], [ %9, %if.then3181 ], [ %9, %if.end3424 ], [ %9, %if.end3366 ], [ %9, %if.end3308 ], [ %9, %if.end3250 ], [ %9, %if.end3192 ], [ %9, %if.end3134 ], [ %9, %if.end3076 ], [ %9, %if.end3018 ], [ %9, %if.end2960 ], [ %9, %if.end1094 ], [ %9, %if.end1177 ], [ %9, %if.end1368 ], [ %9, %if.end1407 ], [ %9, %if.end1604 ], [ %9, %if.end1546 ], [ %9, %if.end1480 ], [ %zvec.1, %if.end1872 ], [ %zvec.2, %for.body2592 ], [ %zvec.6, %if.end2067 ], [ %zvec.5, %while.body2161 ], [ %zvec.5, %while.body2145 ], [ %zvec.4, %if.end2002 ], [ %zvec.9, %if.end2493 ], [ %zvec.7, %if.end2428 ], [ %9, %if.end1807 ], [ %9, %if.end1307 ], [ %9, %if.end1250 ], [ %9, %if.end1023 ], [ %9, %if.end967 ], [ %9, %if.end911 ], [ %9, %if.end860 ], [ %9, %if.end804 ], [ %9, %if.end748 ], [ %9, %if.end692 ], [ %9, %if.end636 ], [ %9, %if.end573 ], [ %9, %if.end517 ], [ %9, %if.end461 ], [ %9, %if.end405 ], [ %9, %if.end349 ], [ %9, %if.end288 ], [ %9, %if.end189 ], [ %9, %if.end134 ], [ %9, %if.end78 ], [ %9, %if.end33 ]
  %zn.11 = phi i32 [ %10, %sw.default ], [ %10, %if.then3413 ], [ %10, %if.then29 ], [ %10, %if.then68 ], [ %10, %if.then124 ], [ %10, %if.then180 ], [ %10, %if.then234 ], [ %10, %if.else ], [ %10, %if.then278 ], [ %10, %if.then339 ], [ %10, %if.then395 ], [ %10, %if.then451 ], [ %10, %if.then507 ], [ %10, %if.then563 ], [ %10, %if.then1013 ], [ %10, %if.end1067 ], [ %10, %makeMaps_d.exit ], [ %10, %if.then1241 ], [ %10, %if.then1241 ], [ %10, %if.then1241 ], [ %10, %if.then1298 ], [ %10, %while.body1520 ], [ %10, %if.then1761 ], [ %zn.1, %while.body1843 ], [ %zn.1, %while.end1909 ], [ %zn.4, %if.then1956 ], [ %zn.6, %while.body2038 ], [ %zn.6, %while.end2104 ], [ %zn.3, %if.else2174 ], [ %zn.3, %if.then2382 ], [ %zn.9, %while.body2464 ], [ %zn.9, %while.end2530 ], [ %zn.3, %while.end2549 ], [ %zn.3, %if.end2916 ], [ %zn.3, %if.else2925 ], [ %zn.3, %if.end2814 ], [ %zn.3, %if.else2821 ], [ %10, %if.then2949 ], [ %10, %if.then3007 ], [ %10, %if.then3065 ], [ %10, %if.then3123 ], [ %10, %if.then3181 ], [ %10, %if.end3424 ], [ %10, %if.end3366 ], [ %10, %if.end3308 ], [ %10, %if.end3250 ], [ %10, %if.end3192 ], [ %10, %if.end3134 ], [ %10, %if.end3076 ], [ %10, %if.end3018 ], [ %10, %if.end2960 ], [ %10, %if.end1094 ], [ %10, %if.end1177 ], [ %10, %if.end1368 ], [ %10, %if.end1407 ], [ %10, %if.end1604 ], [ %10, %if.end1546 ], [ %10, %if.end1480 ], [ %zn.2, %if.end1872 ], [ %zn.3, %for.body2592 ], [ %zn.7, %if.end2067 ], [ %zn.6, %while.body2161 ], [ %zn.6, %while.body2145 ], [ %zn.5, %if.end2002 ], [ %zn.10, %if.end2493 ], [ %zn.8, %if.end2428 ], [ %zn.0, %if.end1807 ], [ %10, %if.end1307 ], [ %10, %if.end1250 ], [ %10, %if.end1023 ], [ %10, %if.end967 ], [ %10, %if.end911 ], [ %10, %if.end860 ], [ %10, %if.end804 ], [ %10, %if.end748 ], [ %10, %if.end692 ], [ %10, %if.end636 ], [ %10, %if.end573 ], [ %10, %if.end517 ], [ %10, %if.end461 ], [ %10, %if.end405 ], [ %10, %if.end349 ], [ %10, %if.end288 ], [ %10, %if.end189 ], [ %10, %if.end134 ], [ %10, %if.end78 ], [ %10, %if.end33 ]
  %curr.17 = phi i32 [ %12, %sw.default ], [ %12, %if.then3413 ], [ %12, %if.then29 ], [ %12, %if.then68 ], [ %12, %if.then124 ], [ %12, %if.then180 ], [ %12, %if.then234 ], [ %12, %if.else ], [ %12, %if.then278 ], [ %12, %if.then339 ], [ %12, %if.then395 ], [ %12, %if.then451 ], [ %12, %if.then507 ], [ %12, %if.then563 ], [ %12, %if.then1013 ], [ %12, %if.end1067 ], [ %12, %makeMaps_d.exit ], [ %12, %if.then1241 ], [ %12, %if.then1241 ], [ %12, %if.then1241 ], [ %12, %if.then1298 ], [ %curr.3, %while.body1520 ], [ %curr.0, %if.then1761 ], [ %curr.7, %while.body1843 ], [ %curr.7, %while.end1909 ], [ %curr.10, %if.then1956 ], [ %curr.12, %while.body2038 ], [ %curr.12, %while.end2104 ], [ %curr.9, %if.else2174 ], [ %curr.9, %if.then2382 ], [ %curr.15, %while.body2464 ], [ %curr.15, %while.end2530 ], [ %curr.9, %while.end2549 ], [ %curr.9, %if.end2916 ], [ %curr.9, %if.else2925 ], [ %curr.9, %if.end2814 ], [ %curr.9, %if.else2821 ], [ %12, %if.then2949 ], [ %12, %if.then3007 ], [ %12, %if.then3065 ], [ %12, %if.then3123 ], [ %12, %if.then3181 ], [ %12, %if.end3424 ], [ %12, %if.end3366 ], [ %12, %if.end3308 ], [ %12, %if.end3250 ], [ %12, %if.end3192 ], [ %12, %if.end3134 ], [ %12, %if.end3076 ], [ %12, %if.end3018 ], [ %12, %if.end2960 ], [ %12, %if.end1094 ], [ %12, %if.end1177 ], [ %12, %if.end1368 ], [ %12, %if.end1407 ], [ %curr.5, %if.end1604 ], [ %curr.4, %if.end1546 ], [ %curr.1, %if.end1480 ], [ %curr.8, %if.end1872 ], [ %curr.9, %for.body2592 ], [ %curr.13, %if.end2067 ], [ %curr.12, %while.body2161 ], [ %curr.12, %while.body2145 ], [ %curr.11, %if.end2002 ], [ %curr.16, %if.end2493 ], [ %curr.14, %if.end2428 ], [ %curr.6, %if.end1807 ], [ %12, %if.end1307 ], [ %12, %if.end1250 ], [ %12, %if.end1023 ], [ %12, %if.end967 ], [ %12, %if.end911 ], [ %12, %if.end860 ], [ %12, %if.end804 ], [ %12, %if.end748 ], [ %12, %if.end692 ], [ %12, %if.end636 ], [ %12, %if.end573 ], [ %12, %if.end517 ], [ %12, %if.end461 ], [ %12, %if.end405 ], [ %12, %if.end349 ], [ %12, %if.end288 ], [ %12, %if.end189 ], [ %12, %if.end134 ], [ %12, %if.end78 ], [ %12, %if.end33 ]
  %N.8 = phi i32 [ %13, %sw.default ], [ %13, %if.then3413 ], [ %13, %if.then29 ], [ %13, %if.then68 ], [ %13, %if.then124 ], [ %13, %if.then180 ], [ %13, %if.then234 ], [ %13, %if.else ], [ %13, %if.then278 ], [ %13, %if.then339 ], [ %13, %if.then395 ], [ %13, %if.then451 ], [ %13, %if.then507 ], [ %13, %if.then563 ], [ %13, %if.then1013 ], [ %13, %if.end1067 ], [ %13, %makeMaps_d.exit ], [ %13, %if.then1241 ], [ %13, %if.then1241 ], [ %13, %if.then1241 ], [ %13, %if.then1298 ], [ %13, %while.body1520 ], [ %13, %if.then1761 ], [ %13, %while.body1843 ], [ %13, %while.end1909 ], [ %mul1953, %if.then1956 ], [ %N.3, %while.body2038 ], [ %N.3, %while.end2104 ], [ %N.0, %if.else2174 ], [ %N.0, %if.then2382 ], [ %N.6, %while.body2464 ], [ %N.6, %while.end2530 ], [ %N.0, %while.end2549 ], [ %N.0, %if.end2916 ], [ %N.0, %if.else2925 ], [ %N.0, %if.end2814 ], [ %N.0, %if.else2821 ], [ %13, %if.then2949 ], [ %13, %if.then3007 ], [ %13, %if.then3065 ], [ %13, %if.then3123 ], [ %13, %if.then3181 ], [ %13, %if.end3424 ], [ %13, %if.end3366 ], [ %13, %if.end3308 ], [ %13, %if.end3250 ], [ %13, %if.end3192 ], [ %13, %if.end3134 ], [ %13, %if.end3076 ], [ %13, %if.end3018 ], [ %13, %if.end2960 ], [ %13, %if.end1094 ], [ %13, %if.end1177 ], [ %13, %if.end1368 ], [ %13, %if.end1407 ], [ %13, %if.end1604 ], [ %13, %if.end1546 ], [ %13, %if.end1480 ], [ %13, %if.end1872 ], [ %N.0, %for.body2592 ], [ %N.4, %if.end2067 ], [ %N.3, %while.body2161 ], [ %N.3, %while.body2145 ], [ %N.2, %if.end2002 ], [ %N.7, %if.end2493 ], [ %N.5, %if.end2428 ], [ %13, %if.end1807 ], [ %13, %if.end1307 ], [ %13, %if.end1250 ], [ %13, %if.end1023 ], [ %13, %if.end967 ], [ %13, %if.end911 ], [ %13, %if.end860 ], [ %13, %if.end804 ], [ %13, %if.end748 ], [ %13, %if.end692 ], [ %13, %if.end636 ], [ %13, %if.end573 ], [ %13, %if.end517 ], [ %13, %if.end461 ], [ %13, %if.end405 ], [ %13, %if.end349 ], [ %13, %if.end288 ], [ %13, %if.end189 ], [ %13, %if.end134 ], [ %13, %if.end78 ], [ %13, %if.end33 ]
  %es.11 = phi i32 [ %14, %sw.default ], [ %14, %if.then3413 ], [ %14, %if.then29 ], [ %14, %if.then68 ], [ %14, %if.then124 ], [ %14, %if.then180 ], [ %14, %if.then234 ], [ %14, %if.else ], [ %14, %if.then278 ], [ %14, %if.then339 ], [ %14, %if.then395 ], [ %14, %if.then451 ], [ %14, %if.then507 ], [ %14, %if.then563 ], [ %14, %if.then1013 ], [ %14, %if.end1067 ], [ %14, %makeMaps_d.exit ], [ %14, %if.then1241 ], [ %14, %if.then1241 ], [ %14, %if.then1241 ], [ %14, %if.then1298 ], [ %14, %while.body1520 ], [ %14, %if.then1761 ], [ %14, %while.body1843 ], [ %14, %while.end1909 ], [ %es.2, %if.then1956 ], [ %es.4, %while.body2038 ], [ %es.4, %while.end2104 ], [ %es.0, %if.else2174 ], [ %es.0, %if.then2382 ], [ %es.9, %while.body2464 ], [ %es.9, %while.end2530 ], [ %es.0, %while.end2549 ], [ %es.0, %if.end2916 ], [ %es.0, %if.else2925 ], [ %es.0, %if.end2814 ], [ %es.0, %if.else2821 ], [ %14, %if.then2949 ], [ %14, %if.then3007 ], [ %14, %if.then3065 ], [ %14, %if.then3123 ], [ %14, %if.then3181 ], [ %14, %if.end3424 ], [ %14, %if.end3366 ], [ %14, %if.end3308 ], [ %14, %if.end3250 ], [ %14, %if.end3192 ], [ %14, %if.end3134 ], [ %14, %if.end3076 ], [ %14, %if.end3018 ], [ %14, %if.end2960 ], [ %14, %if.end1094 ], [ %14, %if.end1177 ], [ %14, %if.end1368 ], [ %14, %if.end1407 ], [ %14, %if.end1604 ], [ %14, %if.end1546 ], [ %14, %if.end1480 ], [ %14, %if.end1872 ], [ %es.0, %for.body2592 ], [ %es.5, %if.end2067 ], [ %es.74871, %while.body2161 ], [ %es.64880, %while.body2145 ], [ %es.3, %if.end2002 ], [ %es.10, %if.end2493 ], [ %es.8, %if.end2428 ], [ %14, %if.end1807 ], [ %14, %if.end1307 ], [ %14, %if.end1250 ], [ %14, %if.end1023 ], [ %14, %if.end967 ], [ %14, %if.end911 ], [ %14, %if.end860 ], [ %14, %if.end804 ], [ %14, %if.end748 ], [ %14, %if.end692 ], [ %14, %if.end636 ], [ %14, %if.end573 ], [ %14, %if.end517 ], [ %14, %if.end461 ], [ %14, %if.end405 ], [ %14, %if.end349 ], [ %14, %if.end288 ], [ %14, %if.end189 ], [ %14, %if.end134 ], [ %14, %if.end78 ], [ %14, %if.end33 ]
  %nblock.13 = phi i32 [ %15, %sw.default ], [ %15, %if.then3413 ], [ %15, %if.then29 ], [ %15, %if.then68 ], [ %15, %if.then124 ], [ %15, %if.then180 ], [ %15, %if.then234 ], [ %15, %if.else ], [ %15, %if.then278 ], [ %15, %if.then339 ], [ %15, %if.then395 ], [ %15, %if.then451 ], [ %15, %if.then507 ], [ %15, %if.then563 ], [ %15, %if.then1013 ], [ %15, %if.end1067 ], [ %15, %makeMaps_d.exit ], [ %15, %if.then1241 ], [ %15, %if.then1241 ], [ %15, %if.then1241 ], [ %15, %if.then1298 ], [ %15, %while.body1520 ], [ 0, %if.then1761 ], [ %nblock.1, %while.body1843 ], [ %nblock.1, %while.end1909 ], [ %nblock.4, %if.then1956 ], [ %nblock.6, %while.body2038 ], [ %nblock.6, %while.end2104 ], [ %nblock.3, %if.else2174 ], [ %inc2379, %if.then2382 ], [ %nblock.11, %while.body2464 ], [ %nblock.11, %while.end2530 ], [ %nblock.3, %while.end2549 ], [ %nblock.3, %if.end2916 ], [ %nblock.3, %if.else2925 ], [ %nblock.3, %if.end2814 ], [ %nblock.3, %if.else2821 ], [ %15, %if.then2949 ], [ %15, %if.then3007 ], [ %15, %if.then3065 ], [ %15, %if.then3123 ], [ %15, %if.then3181 ], [ %15, %if.end3424 ], [ %15, %if.end3366 ], [ %15, %if.end3308 ], [ %15, %if.end3250 ], [ %15, %if.end3192 ], [ %15, %if.end3134 ], [ %15, %if.end3076 ], [ %15, %if.end3018 ], [ %15, %if.end2960 ], [ %15, %if.end1094 ], [ %15, %if.end1177 ], [ %15, %if.end1368 ], [ %15, %if.end1407 ], [ %15, %if.end1604 ], [ %15, %if.end1546 ], [ %15, %if.end1480 ], [ %nblock.2, %if.end1872 ], [ %nblock.3, %for.body2592 ], [ %nblock.7, %if.end2067 ], [ %nblock.94872, %while.body2161 ], [ %nblock.84881, %while.body2145 ], [ %nblock.5, %if.end2002 ], [ %nblock.12, %if.end2493 ], [ %nblock.10, %if.end2428 ], [ %nblock.0, %if.end1807 ], [ %15, %if.end1307 ], [ %15, %if.end1250 ], [ %15, %if.end1023 ], [ %15, %if.end967 ], [ %15, %if.end911 ], [ %15, %if.end860 ], [ %15, %if.end804 ], [ %15, %if.end748 ], [ %15, %if.end692 ], [ %15, %if.end636 ], [ %15, %if.end573 ], [ %15, %if.end517 ], [ %15, %if.end461 ], [ %15, %if.end405 ], [ %15, %if.end349 ], [ %15, %if.end288 ], [ %15, %if.end189 ], [ %15, %if.end134 ], [ %15, %if.end78 ], [ %15, %if.end33 ]
  %nblockMAX.11 = phi i32 [ %16, %sw.default ], [ %16, %if.then3413 ], [ %16, %if.then29 ], [ %16, %if.then68 ], [ %16, %if.then124 ], [ %16, %if.then180 ], [ %16, %if.then234 ], [ %16, %if.else ], [ %16, %if.then278 ], [ %16, %if.then339 ], [ %16, %if.then395 ], [ %16, %if.then451 ], [ %16, %if.then507 ], [ %16, %if.then563 ], [ %16, %if.then1013 ], [ %16, %if.end1067 ], [ %16, %makeMaps_d.exit ], [ %16, %if.then1241 ], [ %16, %if.then1241 ], [ %16, %if.then1241 ], [ %16, %if.then1298 ], [ %16, %while.body1520 ], [ %mul1723, %if.then1761 ], [ %nblockMAX.1, %while.body1843 ], [ %nblockMAX.1, %while.end1909 ], [ %nblockMAX.4, %if.then1956 ], [ %nblockMAX.6, %while.body2038 ], [ %nblockMAX.6, %while.end2104 ], [ %nblockMAX.3, %if.else2174 ], [ %nblockMAX.3, %if.then2382 ], [ %nblockMAX.9, %while.body2464 ], [ %nblockMAX.9, %while.end2530 ], [ %nblockMAX.3, %while.end2549 ], [ %nblockMAX.3, %if.end2916 ], [ %nblockMAX.3, %if.else2925 ], [ %nblockMAX.3, %if.end2814 ], [ %nblockMAX.3, %if.else2821 ], [ %16, %if.then2949 ], [ %16, %if.then3007 ], [ %16, %if.then3065 ], [ %16, %if.then3123 ], [ %16, %if.then3181 ], [ %16, %if.end3424 ], [ %16, %if.end3366 ], [ %16, %if.end3308 ], [ %16, %if.end3250 ], [ %16, %if.end3192 ], [ %16, %if.end3134 ], [ %16, %if.end3076 ], [ %16, %if.end3018 ], [ %16, %if.end2960 ], [ %16, %if.end1094 ], [ %16, %if.end1177 ], [ %16, %if.end1368 ], [ %16, %if.end1407 ], [ %16, %if.end1604 ], [ %16, %if.end1546 ], [ %16, %if.end1480 ], [ %nblockMAX.2, %if.end1872 ], [ %nblockMAX.3, %for.body2592 ], [ %nblockMAX.7, %if.end2067 ], [ %nblockMAX.6, %while.body2161 ], [ %nblockMAX.6, %while.body2145 ], [ %nblockMAX.5, %if.end2002 ], [ %nblockMAX.10, %if.end2493 ], [ %nblockMAX.8, %if.end2428 ], [ %nblockMAX.0, %if.end1807 ], [ %16, %if.end1307 ], [ %16, %if.end1250 ], [ %16, %if.end1023 ], [ %16, %if.end967 ], [ %16, %if.end911 ], [ %16, %if.end860 ], [ %16, %if.end804 ], [ %16, %if.end748 ], [ %16, %if.end692 ], [ %16, %if.end636 ], [ %16, %if.end573 ], [ %16, %if.end517 ], [ %16, %if.end461 ], [ %16, %if.end405 ], [ %16, %if.end349 ], [ %16, %if.end288 ], [ %16, %if.end189 ], [ %16, %if.end134 ], [ %16, %if.end78 ], [ %16, %if.end33 ]
  %nextSym.8 = phi i32 [ %17, %sw.default ], [ %17, %if.then3413 ], [ %17, %if.then29 ], [ %17, %if.then68 ], [ %17, %if.then124 ], [ %17, %if.then180 ], [ %17, %if.then234 ], [ %17, %if.else ], [ %17, %if.then278 ], [ %17, %if.then339 ], [ %17, %if.then395 ], [ %17, %if.then451 ], [ %17, %if.then507 ], [ %17, %if.then563 ], [ %17, %if.then1013 ], [ %17, %if.end1067 ], [ %17, %makeMaps_d.exit ], [ %17, %if.then1241 ], [ %17, %if.then1241 ], [ %17, %if.then1241 ], [ %17, %if.then1298 ], [ %17, %while.body1520 ], [ %17, %if.then1761 ], [ %17, %while.body1843 ], [ %17, %while.end1909 ], [ %nextSym.1, %if.then1956 ], [ %nextSym.3, %while.body2038 ], [ %nextSym.3, %while.end2104 ], [ %nextSym.0, %if.else2174 ], [ %nextSym.0, %if.then2382 ], [ %nextSym.6, %while.body2464 ], [ %nextSym.6, %while.end2530 ], [ %nextSym.0, %while.end2549 ], [ %nextSym.0, %if.end2916 ], [ %nextSym.0, %if.else2925 ], [ %nextSym.0, %if.end2814 ], [ %nextSym.0, %if.else2821 ], [ %17, %if.then2949 ], [ %17, %if.then3007 ], [ %17, %if.then3065 ], [ %17, %if.then3123 ], [ %17, %if.then3181 ], [ %17, %if.end3424 ], [ %17, %if.end3366 ], [ %17, %if.end3308 ], [ %17, %if.end3250 ], [ %17, %if.end3192 ], [ %17, %if.end3134 ], [ %17, %if.end3076 ], [ %17, %if.end3018 ], [ %17, %if.end2960 ], [ %17, %if.end1094 ], [ %17, %if.end1177 ], [ %17, %if.end1368 ], [ %17, %if.end1407 ], [ %17, %if.end1604 ], [ %17, %if.end1546 ], [ %17, %if.end1480 ], [ %17, %if.end1872 ], [ %nextSym.0, %for.body2592 ], [ %nextSym.4, %if.end2067 ], [ %478, %while.body2161 ], [ %478, %while.body2145 ], [ %nextSym.2, %if.end2002 ], [ %nextSym.7, %if.end2493 ], [ %nextSym.5, %if.end2428 ], [ %17, %if.end1807 ], [ %17, %if.end1307 ], [ %17, %if.end1250 ], [ %17, %if.end1023 ], [ %17, %if.end967 ], [ %17, %if.end911 ], [ %17, %if.end860 ], [ %17, %if.end804 ], [ %17, %if.end748 ], [ %17, %if.end692 ], [ %17, %if.end636 ], [ %17, %if.end573 ], [ %17, %if.end517 ], [ %17, %if.end461 ], [ %17, %if.end405 ], [ %17, %if.end349 ], [ %17, %if.end288 ], [ %17, %if.end189 ], [ %17, %if.end134 ], [ %17, %if.end78 ], [ %17, %if.end33 ]
  %groupPos.14 = phi i32 [ %18, %sw.default ], [ %18, %if.then3413 ], [ %18, %if.then29 ], [ %18, %if.then68 ], [ %18, %if.then124 ], [ %18, %if.then180 ], [ %18, %if.then234 ], [ %18, %if.else ], [ %18, %if.then278 ], [ %18, %if.then339 ], [ %18, %if.then395 ], [ %18, %if.then451 ], [ %18, %if.then507 ], [ %18, %if.then563 ], [ %18, %if.then1013 ], [ %18, %if.end1067 ], [ %18, %makeMaps_d.exit ], [ %18, %if.then1241 ], [ %18, %if.then1241 ], [ %18, %if.then1241 ], [ %18, %if.then1298 ], [ %18, %while.body1520 ], [ 0, %if.then1761 ], [ %groupPos.2, %while.body1843 ], [ %groupPos.2, %while.end1909 ], [ 0, %if.then1956 ], [ %groupPos.8, %while.body2038 ], [ %groupPos.8, %while.end2104 ], [ %groupPos.4, %if.else2174 ], [ 0, %if.then2382 ], [ %groupPos.12, %while.body2464 ], [ %groupPos.12, %while.end2530 ], [ %groupPos.4, %while.end2549 ], [ %groupPos.4, %if.end2916 ], [ %groupPos.4, %if.else2925 ], [ %groupPos.4, %if.end2814 ], [ %groupPos.4, %if.else2821 ], [ %18, %if.then2949 ], [ %18, %if.then3007 ], [ %18, %if.then3065 ], [ %18, %if.then3123 ], [ %18, %if.then3181 ], [ %18, %if.end3424 ], [ %18, %if.end3366 ], [ %18, %if.end3308 ], [ %18, %if.end3250 ], [ %18, %if.end3192 ], [ %18, %if.end3134 ], [ %18, %if.end3076 ], [ %18, %if.end3018 ], [ %18, %if.end2960 ], [ %18, %if.end1094 ], [ %18, %if.end1177 ], [ %18, %if.end1368 ], [ %18, %if.end1407 ], [ %18, %if.end1604 ], [ %18, %if.end1546 ], [ %18, %if.end1480 ], [ %groupPos.3, %if.end1872 ], [ %groupPos.4, %for.body2592 ], [ %groupPos.9, %if.end2067 ], [ %groupPos.8, %while.body2161 ], [ %groupPos.8, %while.body2145 ], [ %groupPos.7, %if.end2002 ], [ %groupPos.13, %if.end2493 ], [ %groupPos.11, %if.end2428 ], [ %groupPos.1, %if.end1807 ], [ %18, %if.end1307 ], [ %18, %if.end1250 ], [ %18, %if.end1023 ], [ %18, %if.end967 ], [ %18, %if.end911 ], [ %18, %if.end860 ], [ %18, %if.end804 ], [ %18, %if.end748 ], [ %18, %if.end692 ], [ %18, %if.end636 ], [ %18, %if.end573 ], [ %18, %if.end517 ], [ %18, %if.end461 ], [ %18, %if.end405 ], [ %18, %if.end349 ], [ %18, %if.end288 ], [ %18, %if.end189 ], [ %18, %if.end134 ], [ %18, %if.end78 ], [ %18, %if.end33 ]
  %groupNo.14 = phi i32 [ %19, %sw.default ], [ %19, %if.then3413 ], [ %19, %if.then29 ], [ %19, %if.then68 ], [ %19, %if.then124 ], [ %19, %if.then180 ], [ %19, %if.then234 ], [ %19, %if.else ], [ %19, %if.then278 ], [ %19, %if.then339 ], [ %19, %if.then395 ], [ %19, %if.then451 ], [ %19, %if.then507 ], [ %19, %if.then563 ], [ %19, %if.then1013 ], [ %19, %if.end1067 ], [ %19, %makeMaps_d.exit ], [ %19, %if.then1241 ], [ %19, %if.then1241 ], [ %19, %if.then1241 ], [ %19, %if.then1298 ], [ %19, %while.body1520 ], [ 0, %if.then1761 ], [ %groupNo.2, %while.body1843 ], [ %groupNo.2, %while.end1909 ], [ %inc1957, %if.then1956 ], [ %groupNo.8, %while.body2038 ], [ %groupNo.8, %while.end2104 ], [ %groupNo.4, %if.else2174 ], [ %inc2383, %if.then2382 ], [ %groupNo.12, %while.body2464 ], [ %groupNo.12, %while.end2530 ], [ %groupNo.4, %while.end2549 ], [ %groupNo.4, %if.end2916 ], [ %groupNo.4, %if.else2925 ], [ %groupNo.4, %if.end2814 ], [ %groupNo.4, %if.else2821 ], [ %19, %if.then2949 ], [ %19, %if.then3007 ], [ %19, %if.then3065 ], [ %19, %if.then3123 ], [ %19, %if.then3181 ], [ %19, %if.end3424 ], [ %19, %if.end3366 ], [ %19, %if.end3308 ], [ %19, %if.end3250 ], [ %19, %if.end3192 ], [ %19, %if.end3134 ], [ %19, %if.end3076 ], [ %19, %if.end3018 ], [ %19, %if.end2960 ], [ %19, %if.end1094 ], [ %19, %if.end1177 ], [ %19, %if.end1368 ], [ %19, %if.end1407 ], [ %19, %if.end1604 ], [ %19, %if.end1546 ], [ %19, %if.end1480 ], [ %groupNo.3, %if.end1872 ], [ %groupNo.4, %for.body2592 ], [ %groupNo.9, %if.end2067 ], [ %groupNo.8, %while.body2161 ], [ %groupNo.8, %while.body2145 ], [ %groupNo.7, %if.end2002 ], [ %groupNo.13, %if.end2493 ], [ %groupNo.11, %if.end2428 ], [ %groupNo.1, %if.end1807 ], [ %19, %if.end1307 ], [ %19, %if.end1250 ], [ %19, %if.end1023 ], [ %19, %if.end967 ], [ %19, %if.end911 ], [ %19, %if.end860 ], [ %19, %if.end804 ], [ %19, %if.end748 ], [ %19, %if.end692 ], [ %19, %if.end636 ], [ %19, %if.end573 ], [ %19, %if.end517 ], [ %19, %if.end461 ], [ %19, %if.end405 ], [ %19, %if.end349 ], [ %19, %if.end288 ], [ %19, %if.end189 ], [ %19, %if.end134 ], [ %19, %if.end78 ], [ %19, %if.end33 ]
  %EOB.11 = phi i32 [ %20, %sw.default ], [ %20, %if.then3413 ], [ %20, %if.then29 ], [ %20, %if.then68 ], [ %20, %if.then124 ], [ %20, %if.then180 ], [ %20, %if.then234 ], [ %20, %if.else ], [ %20, %if.then278 ], [ %20, %if.then339 ], [ %20, %if.then395 ], [ %20, %if.then451 ], [ %20, %if.then507 ], [ %20, %if.then563 ], [ %20, %if.then1013 ], [ %20, %if.end1067 ], [ %20, %makeMaps_d.exit ], [ %20, %if.then1241 ], [ %20, %if.then1241 ], [ %20, %if.then1241 ], [ %20, %if.then1298 ], [ %20, %while.body1520 ], [ %add1721, %if.then1761 ], [ %EOB.1, %while.body1843 ], [ %EOB.1, %while.end1909 ], [ %EOB.4, %if.then1956 ], [ %EOB.6, %while.body2038 ], [ %EOB.6, %while.end2104 ], [ %EOB.3, %if.else2174 ], [ %EOB.3, %if.then2382 ], [ %EOB.9, %while.body2464 ], [ %EOB.9, %while.end2530 ], [ %nextSym.0, %while.end2549 ], [ %nextSym.0, %if.end2916 ], [ %nextSym.0, %if.else2925 ], [ %nextSym.0, %if.end2814 ], [ %nextSym.0, %if.else2821 ], [ %20, %if.then2949 ], [ %20, %if.then3007 ], [ %20, %if.then3065 ], [ %20, %if.then3123 ], [ %20, %if.then3181 ], [ %20, %if.end3424 ], [ %20, %if.end3366 ], [ %20, %if.end3308 ], [ %20, %if.end3250 ], [ %20, %if.end3192 ], [ %20, %if.end3134 ], [ %20, %if.end3076 ], [ %20, %if.end3018 ], [ %20, %if.end2960 ], [ %20, %if.end1094 ], [ %20, %if.end1177 ], [ %20, %if.end1368 ], [ %20, %if.end1407 ], [ %20, %if.end1604 ], [ %20, %if.end1546 ], [ %20, %if.end1480 ], [ %EOB.2, %if.end1872 ], [ %nextSym.0, %for.body2592 ], [ %EOB.7, %if.end2067 ], [ %EOB.6, %while.body2161 ], [ %EOB.6, %while.body2145 ], [ %EOB.5, %if.end2002 ], [ %EOB.10, %if.end2493 ], [ %EOB.8, %if.end2428 ], [ %EOB.0, %if.end1807 ], [ %20, %if.end1307 ], [ %20, %if.end1250 ], [ %20, %if.end1023 ], [ %20, %if.end967 ], [ %20, %if.end911 ], [ %20, %if.end860 ], [ %20, %if.end804 ], [ %20, %if.end748 ], [ %20, %if.end692 ], [ %20, %if.end636 ], [ %20, %if.end573 ], [ %20, %if.end517 ], [ %20, %if.end461 ], [ %20, %if.end405 ], [ %20, %if.end349 ], [ %20, %if.end288 ], [ %20, %if.end189 ], [ %20, %if.end134 ], [ %20, %if.end78 ], [ %20, %if.end33 ]
  %nSelectors.19 = phi i32 [ %21, %sw.default ], [ %21, %if.then3413 ], [ %21, %if.then29 ], [ %21, %if.then68 ], [ %21, %if.then124 ], [ %21, %if.then180 ], [ %21, %if.then234 ], [ %21, %if.else ], [ %21, %if.then278 ], [ %21, %if.then339 ], [ %21, %if.then395 ], [ %21, %if.then451 ], [ %21, %if.then507 ], [ %21, %if.then563 ], [ %21, %if.then1013 ], [ %21, %if.end1067 ], [ %21, %makeMaps_d.exit ], [ %21, %if.then1241 ], [ %21, %if.then1241 ], [ %21, %if.then1241 ], [ 0, %if.then1298 ], [ %nSelectors.5, %while.body1520 ], [ %nSelectors.2, %if.then1761 ], [ %nSelectors.9, %while.body1843 ], [ %nSelectors.9, %while.end1909 ], [ %nSelectors.12, %if.then1956 ], [ %nSelectors.14, %while.body2038 ], [ %nSelectors.14, %while.end2104 ], [ %nSelectors.11, %if.else2174 ], [ %nSelectors.11, %if.then2382 ], [ %nSelectors.17, %while.body2464 ], [ %nSelectors.17, %while.end2530 ], [ %nSelectors.11, %while.end2549 ], [ %nSelectors.11, %if.end2916 ], [ %nSelectors.11, %if.else2925 ], [ %nSelectors.11, %if.end2814 ], [ %nSelectors.11, %if.else2821 ], [ %21, %if.then2949 ], [ %21, %if.then3007 ], [ %21, %if.then3065 ], [ %21, %if.then3123 ], [ %21, %if.then3181 ], [ %21, %if.end3424 ], [ %21, %if.end3366 ], [ %21, %if.end3308 ], [ %21, %if.end3250 ], [ %21, %if.end3192 ], [ %21, %if.end3134 ], [ %21, %if.end3076 ], [ %21, %if.end3018 ], [ %21, %if.end2960 ], [ %21, %if.end1094 ], [ %21, %if.end1177 ], [ %nSelectors.1.ph, %if.end1368 ], [ %nSelectors.1.ph, %if.end1407 ], [ %nSelectors.7, %if.end1604 ], [ %nSelectors.6, %if.end1546 ], [ %nSelectors.3, %if.end1480 ], [ %nSelectors.10, %if.end1872 ], [ %nSelectors.11, %for.body2592 ], [ %nSelectors.15, %if.end2067 ], [ %nSelectors.14, %while.body2161 ], [ %nSelectors.14, %while.body2145 ], [ %nSelectors.13, %if.end2002 ], [ %nSelectors.18, %if.end2493 ], [ %nSelectors.16, %if.end2428 ], [ %nSelectors.8, %if.end1807 ], [ %21, %if.end1307 ], [ %21, %if.end1250 ], [ %21, %if.end1023 ], [ %21, %if.end967 ], [ %21, %if.end911 ], [ %21, %if.end860 ], [ %21, %if.end804 ], [ %21, %if.end748 ], [ %21, %if.end692 ], [ %21, %if.end636 ], [ %21, %if.end573 ], [ %21, %if.end517 ], [ %21, %if.end461 ], [ %21, %if.end405 ], [ %21, %if.end349 ], [ %21, %if.end288 ], [ %21, %if.end189 ], [ %21, %if.end134 ], [ %21, %if.end78 ], [ %21, %if.end33 ]
  %nGroups.20 = phi i32 [ %22, %sw.default ], [ %22, %if.then3413 ], [ %22, %if.then29 ], [ %22, %if.then68 ], [ %22, %if.then124 ], [ %22, %if.then180 ], [ %22, %if.then234 ], [ %22, %if.else ], [ %22, %if.then278 ], [ %22, %if.then339 ], [ %22, %if.then395 ], [ %22, %if.then451 ], [ %22, %if.then507 ], [ %22, %if.then563 ], [ %22, %if.then1013 ], [ %22, %if.end1067 ], [ %22, %makeMaps_d.exit ], [ %and1247, %if.then1241 ], [ %and1247, %if.then1241 ], [ %and1247, %if.then1241 ], [ %nGroups.0, %if.then1298 ], [ %nGroups.6, %while.body1520 ], [ %nGroups.3, %if.then1761 ], [ %nGroups.10, %while.body1843 ], [ %nGroups.10, %while.end1909 ], [ %nGroups.13, %if.then1956 ], [ %nGroups.15, %while.body2038 ], [ %nGroups.15, %while.end2104 ], [ %nGroups.12, %if.else2174 ], [ %nGroups.12, %if.then2382 ], [ %nGroups.18, %while.body2464 ], [ %nGroups.18, %while.end2530 ], [ %nGroups.12, %while.end2549 ], [ %nGroups.12, %if.end2916 ], [ %nGroups.12, %if.else2925 ], [ %nGroups.12, %if.end2814 ], [ %nGroups.12, %if.else2821 ], [ %22, %if.then2949 ], [ %22, %if.then3007 ], [ %22, %if.then3065 ], [ %22, %if.then3123 ], [ %22, %if.then3181 ], [ %22, %if.end3424 ], [ %22, %if.end3366 ], [ %22, %if.end3308 ], [ %22, %if.end3250 ], [ %22, %if.end3192 ], [ %22, %if.end3134 ], [ %22, %if.end3076 ], [ %22, %if.end3018 ], [ %22, %if.end2960 ], [ %22, %if.end1094 ], [ %22, %if.end1177 ], [ %nGroups.2.ph, %if.end1368 ], [ %nGroups.2.ph, %if.end1407 ], [ %nGroups.8, %if.end1604 ], [ %nGroups.7, %if.end1546 ], [ %nGroups.4, %if.end1480 ], [ %nGroups.11, %if.end1872 ], [ %nGroups.12, %for.body2592 ], [ %nGroups.16, %if.end2067 ], [ %nGroups.15, %while.body2161 ], [ %nGroups.15, %while.body2145 ], [ %nGroups.14, %if.end2002 ], [ %nGroups.19, %if.end2493 ], [ %nGroups.17, %if.end2428 ], [ %nGroups.9, %if.end1807 ], [ %nGroups.0, %if.end1307 ], [ %22, %if.end1250 ], [ %22, %if.end1023 ], [ %22, %if.end967 ], [ %22, %if.end911 ], [ %22, %if.end860 ], [ %22, %if.end804 ], [ %22, %if.end748 ], [ %22, %if.end692 ], [ %22, %if.end636 ], [ %22, %if.end573 ], [ %22, %if.end517 ], [ %22, %if.end461 ], [ %22, %if.end405 ], [ %22, %if.end349 ], [ %22, %if.end288 ], [ %22, %if.end189 ], [ %22, %if.end134 ], [ %22, %if.end78 ], [ %22, %if.end33 ]
  %alphaSize.21 = phi i32 [ %23, %sw.default ], [ %23, %if.then3413 ], [ %23, %if.then29 ], [ %23, %if.then68 ], [ %23, %if.then124 ], [ %23, %if.then180 ], [ %23, %if.then234 ], [ %23, %if.else ], [ %23, %if.then278 ], [ %23, %if.then339 ], [ %23, %if.then395 ], [ %23, %if.then451 ], [ %23, %if.then507 ], [ %23, %if.then563 ], [ %23, %if.then1013 ], [ %23, %if.end1067 ], [ %23, %makeMaps_d.exit ], [ %alphaSize.0, %if.then1241 ], [ %alphaSize.0, %if.then1241 ], [ %alphaSize.0, %if.then1241 ], [ %alphaSize.1, %if.then1298 ], [ %alphaSize.7, %while.body1520 ], [ %alphaSize.4, %if.then1761 ], [ %alphaSize.11, %while.body1843 ], [ %alphaSize.11, %while.end1909 ], [ %alphaSize.14, %if.then1956 ], [ %alphaSize.16, %while.body2038 ], [ %alphaSize.16, %while.end2104 ], [ %alphaSize.13, %if.else2174 ], [ %alphaSize.13, %if.then2382 ], [ %alphaSize.19, %while.body2464 ], [ %alphaSize.19, %while.end2530 ], [ %alphaSize.13, %while.end2549 ], [ %alphaSize.13, %if.end2916 ], [ %alphaSize.13, %if.else2925 ], [ %alphaSize.13, %if.end2814 ], [ %alphaSize.13, %if.else2821 ], [ %23, %if.then2949 ], [ %23, %if.then3007 ], [ %23, %if.then3065 ], [ %23, %if.then3123 ], [ %23, %if.then3181 ], [ %23, %if.end3424 ], [ %23, %if.end3366 ], [ %23, %if.end3308 ], [ %23, %if.end3250 ], [ %23, %if.end3192 ], [ %23, %if.end3134 ], [ %23, %if.end3076 ], [ %23, %if.end3018 ], [ %23, %if.end2960 ], [ %23, %if.end1094 ], [ %23, %if.end1177 ], [ %alphaSize.3.ph, %if.end1368 ], [ %alphaSize.3.ph, %if.end1407 ], [ %alphaSize.9, %if.end1604 ], [ %alphaSize.8, %if.end1546 ], [ %alphaSize.5, %if.end1480 ], [ %alphaSize.12, %if.end1872 ], [ %alphaSize.13, %for.body2592 ], [ %alphaSize.17, %if.end2067 ], [ %alphaSize.16, %while.body2161 ], [ %alphaSize.16, %while.body2145 ], [ %alphaSize.15, %if.end2002 ], [ %alphaSize.20, %if.end2493 ], [ %alphaSize.18, %if.end2428 ], [ %alphaSize.10, %if.end1807 ], [ %alphaSize.1, %if.end1307 ], [ %alphaSize.0, %if.end1250 ], [ %23, %if.end1023 ], [ %23, %if.end967 ], [ %23, %if.end911 ], [ %23, %if.end860 ], [ %23, %if.end804 ], [ %23, %if.end748 ], [ %23, %if.end692 ], [ %23, %if.end636 ], [ %23, %if.end573 ], [ %23, %if.end517 ], [ %23, %if.end461 ], [ %23, %if.end405 ], [ %23, %if.end349 ], [ %23, %if.end288 ], [ %23, %if.end189 ], [ %23, %if.end134 ], [ %23, %if.end78 ], [ %23, %if.end33 ]
  %t.18 = phi i32 [ %24, %sw.default ], [ %24, %if.then3413 ], [ %24, %if.then29 ], [ %24, %if.then68 ], [ %24, %if.then124 ], [ %24, %if.then180 ], [ %24, %if.then234 ], [ %24, %if.else ], [ %24, %if.then278 ], [ %24, %if.then339 ], [ %24, %if.then395 ], [ %24, %if.then451 ], [ %24, %if.then507 ], [ %24, %if.then563 ], [ %24, %if.then1013 ], [ %24, %if.end1067 ], [ %24, %makeMaps_d.exit ], [ %24, %if.then1241 ], [ %24, %if.then1241 ], [ %24, %if.then1241 ], [ %24, %if.then1298 ], [ %t.3, %while.body1520 ], [ %t.6.lcssa, %if.then1761 ], [ %t.8, %while.body1843 ], [ %t.8, %while.end1909 ], [ %t.11, %if.then1956 ], [ %t.13, %while.body2038 ], [ %t.13, %while.end2104 ], [ %t.10, %if.else2174 ], [ %t.10, %if.then2382 ], [ %t.16, %while.body2464 ], [ %t.16, %while.end2530 ], [ %t.10, %while.end2549 ], [ %t.10, %if.end2916 ], [ %t.10, %if.else2925 ], [ %t.10, %if.end2814 ], [ %t.10, %if.else2821 ], [ %24, %if.then2949 ], [ %24, %if.then3007 ], [ %24, %if.then3065 ], [ %24, %if.then3123 ], [ %24, %if.then3181 ], [ %24, %if.end3424 ], [ %24, %if.end3366 ], [ %24, %if.end3308 ], [ %24, %if.end3250 ], [ %24, %if.end3192 ], [ %24, %if.end3134 ], [ %24, %if.end3076 ], [ %24, %if.end3018 ], [ %24, %if.end2960 ], [ %24, %if.end1094 ], [ %24, %if.end1177 ], [ %24, %if.end1368 ], [ %24, %if.end1407 ], [ %t.5, %if.end1604 ], [ %t.4, %if.end1546 ], [ %t.1, %if.end1480 ], [ %t.9, %if.end1872 ], [ %t.10, %for.body2592 ], [ %t.14, %if.end2067 ], [ %t.13, %while.body2161 ], [ %t.13, %while.body2145 ], [ %t.12, %if.end2002 ], [ %t.17, %if.end2493 ], [ %t.15, %if.end2428 ], [ %t.7, %if.end1807 ], [ %24, %if.end1307 ], [ %24, %if.end1250 ], [ %24, %if.end1023 ], [ %24, %if.end967 ], [ %24, %if.end911 ], [ %24, %if.end860 ], [ %24, %if.end804 ], [ %24, %if.end748 ], [ %24, %if.end692 ], [ %24, %if.end636 ], [ %24, %if.end573 ], [ %24, %if.end517 ], [ %24, %if.end461 ], [ %24, %if.end405 ], [ %24, %if.end349 ], [ %24, %if.end288 ], [ %24, %if.end189 ], [ %24, %if.end134 ], [ %24, %if.end78 ], [ %24, %if.end33 ]
  %j.27 = phi i32 [ %25, %sw.default ], [ %25, %if.then3413 ], [ %25, %if.then29 ], [ %25, %if.then68 ], [ %25, %if.then124 ], [ %25, %if.then180 ], [ %25, %if.then234 ], [ %25, %if.else ], [ %25, %if.then278 ], [ %25, %if.then339 ], [ %25, %if.then395 ], [ %25, %if.then451 ], [ %25, %if.then507 ], [ %25, %if.then563 ], [ %25, %if.then1013 ], [ %25, %if.end1067 ], [ %j.0, %makeMaps_d.exit ], [ %j.4, %if.then1241 ], [ %j.4, %if.then1241 ], [ %j.4, %if.then1241 ], [ %j.5, %if.then1298 ], [ %j.11, %while.body1520 ], [ %j.8, %if.then1761 ], [ %j.15, %while.body1843 ], [ %j.15, %while.end1909 ], [ %j.18, %if.then1956 ], [ %j.20, %while.body2038 ], [ %j.20, %while.end2104 ], [ %j.17, %if.else2174 ], [ %j.17, %if.then2382 ], [ %j.23, %while.body2464 ], [ %j.23, %while.end2530 ], [ %j.17, %while.end2549 ], [ %j.17, %if.end2916 ], [ %j.17, %if.else2925 ], [ %or2726, %if.end2814 ], [ %or2726, %if.else2821 ], [ %25, %if.then2949 ], [ %25, %if.then3007 ], [ %25, %if.then3065 ], [ %25, %if.then3123 ], [ %25, %if.then3181 ], [ %25, %if.end3424 ], [ %25, %if.end3366 ], [ %25, %if.end3308 ], [ %25, %if.end3250 ], [ %25, %if.end3192 ], [ %25, %if.end3134 ], [ %25, %if.end3076 ], [ %25, %if.end3018 ], [ %25, %if.end2960 ], [ %25, %if.end1094 ], [ %j.2, %if.end1177 ], [ %j.7, %if.end1368 ], [ %inc1408, %if.end1407 ], [ %j.13, %if.end1604 ], [ %j.12, %if.end1546 ], [ %j.9, %if.end1480 ], [ %j.16, %if.end1872 ], [ %j.17, %for.body2592 ], [ %j.21, %if.end2067 ], [ %j.20, %while.body2161 ], [ %j.20, %while.body2145 ], [ %j.19, %if.end2002 ], [ %j.24, %if.end2493 ], [ %j.22, %if.end2428 ], [ %j.14, %if.end1807 ], [ %j.5, %if.end1307 ], [ %j.4, %if.end1250 ], [ %25, %if.end1023 ], [ %25, %if.end967 ], [ %25, %if.end911 ], [ %25, %if.end860 ], [ %25, %if.end804 ], [ %25, %if.end748 ], [ %25, %if.end692 ], [ %25, %if.end636 ], [ %25, %if.end573 ], [ %25, %if.end517 ], [ %25, %if.end461 ], [ %25, %if.end405 ], [ %25, %if.end349 ], [ %25, %if.end288 ], [ %25, %if.end189 ], [ %25, %if.end134 ], [ %25, %if.end78 ], [ %25, %if.end33 ]
  %i.39 = phi i32 [ %26, %sw.default ], [ %26, %if.then3413 ], [ %26, %if.then29 ], [ %26, %if.then68 ], [ %26, %if.then124 ], [ %26, %if.then180 ], [ %26, %if.then234 ], [ %26, %if.else ], [ %26, %if.then278 ], [ %26, %if.then339 ], [ %26, %if.then395 ], [ %26, %if.then451 ], [ %26, %if.then507 ], [ %26, %if.then563 ], [ %26, %if.then1013 ], [ %26, %if.end1067 ], [ %i.3, %makeMaps_d.exit ], [ %i.7, %if.then1241 ], [ %i.7, %if.then1241 ], [ %i.7, %if.then1241 ], [ %i.8, %if.then1298 ], [ %i.15, %while.body1520 ], [ 256, %if.then1761 ], [ %i.21, %while.body1843 ], [ %i.21, %while.end1909 ], [ %i.24, %if.then1956 ], [ %i.26, %while.body2038 ], [ %i.26, %while.end2104 ], [ %i.23, %if.else2174 ], [ %i.23, %if.then2382 ], [ %i.29, %while.body2464 ], [ %i.29, %while.end2530 ], [ %i.23, %while.end2549 ], [ %i.37.lcssa, %if.end2916 ], [ %i.37.lcssa, %if.else2925 ], [ %582, %if.end2814 ], [ %582, %if.else2821 ], [ %26, %if.then2949 ], [ %26, %if.then3007 ], [ %26, %if.then3065 ], [ %26, %if.then3123 ], [ %26, %if.then3181 ], [ %26, %if.end3424 ], [ %26, %if.end3366 ], [ %26, %if.end3308 ], [ %26, %if.end3250 ], [ %26, %if.end3192 ], [ %26, %if.end3134 ], [ %26, %if.end3076 ], [ %26, %if.end3018 ], [ %26, %if.end2960 ], [ %i.1, %if.end1094 ], [ %i.5, %if.end1177 ], [ %i.10.ph, %if.end1368 ], [ %i.10.ph, %if.end1407 ], [ %i.17, %if.end1604 ], [ %i.16, %if.end1546 ], [ %i.13, %if.end1480 ], [ %i.22, %if.end1872 ], [ %i.334857, %for.body2592 ], [ %i.27, %if.end2067 ], [ %i.26, %while.body2161 ], [ %i.26, %while.body2145 ], [ %i.25, %if.end2002 ], [ %i.30, %if.end2493 ], [ %i.28, %if.end2428 ], [ %i.20, %if.end1807 ], [ %i.8, %if.end1307 ], [ %i.7, %if.end1250 ], [ %26, %if.end1023 ], [ %26, %if.end967 ], [ %26, %if.end911 ], [ %26, %if.end860 ], [ %26, %if.end804 ], [ %26, %if.end748 ], [ %26, %if.end692 ], [ %26, %if.end636 ], [ %26, %if.end573 ], [ %26, %if.end517 ], [ %26, %if.end461 ], [ %26, %if.end405 ], [ %26, %if.end349 ], [ %26, %if.end288 ], [ %26, %if.end189 ], [ %26, %if.end134 ], [ %26, %if.end78 ], [ %26, %if.end33 ]
  %retVal.0 = phi i32 [ 0, %sw.default ], [ 4, %if.then3413 ], [ -5, %if.then29 ], [ -5, %if.then68 ], [ -5, %if.then124 ], [ -5, %if.then180 ], [ -3, %if.then234 ], [ -3, %if.else ], [ -4, %if.then278 ], [ -4, %if.then339 ], [ -4, %if.then395 ], [ -4, %if.then451 ], [ -4, %if.then507 ], [ -4, %if.then563 ], [ -4, %if.then1013 ], [ -4, %if.end1067 ], [ -4, %makeMaps_d.exit ], [ -4, %if.then1241 ], [ -4, %if.then1241 ], [ -4, %if.then1241 ], [ -4, %if.then1298 ], [ -4, %while.body1520 ], [ -4, %if.then1761 ], [ -4, %while.body1843 ], [ -4, %while.end1909 ], [ -4, %if.then1956 ], [ -4, %while.body2038 ], [ -4, %while.end2104 ], [ -4, %if.else2174 ], [ -4, %if.then2382 ], [ -4, %while.body2464 ], [ -4, %while.end2530 ], [ -4, %while.end2549 ], [ 0, %if.end2916 ], [ 0, %if.else2925 ], [ 0, %if.end2814 ], [ 0, %if.else2821 ], [ -4, %if.then2949 ], [ -4, %if.then3007 ], [ -4, %if.then3065 ], [ -4, %if.then3123 ], [ -4, %if.then3181 ], [ 0, %if.end3424 ], [ 0, %if.end3366 ], [ 0, %if.end3308 ], [ 0, %if.end3250 ], [ 0, %if.end3192 ], [ 0, %if.end3134 ], [ 0, %if.end3076 ], [ 0, %if.end3018 ], [ 0, %if.end2960 ], [ 0, %if.end1094 ], [ 0, %if.end1177 ], [ 0, %if.end1368 ], [ -4, %if.end1407 ], [ 0, %if.end1604 ], [ 0, %if.end1546 ], [ 0, %if.end1480 ], [ 0, %if.end1872 ], [ -4, %for.body2592 ], [ 0, %if.end2067 ], [ -4, %while.body2161 ], [ -4, %while.body2145 ], [ 0, %if.end2002 ], [ 0, %if.end2493 ], [ 0, %if.end2428 ], [ 0, %if.end1807 ], [ 0, %if.end1307 ], [ 0, %if.end1250 ], [ 0, %if.end1023 ], [ 0, %if.end967 ], [ 0, %if.end911 ], [ 0, %if.end860 ], [ 0, %if.end804 ], [ 0, %if.end748 ], [ 0, %if.end692 ], [ 0, %if.end636 ], [ 0, %if.end573 ], [ 0, %if.end517 ], [ 0, %if.end461 ], [ 0, %if.end405 ], [ 0, %if.end349 ], [ 0, %if.end288 ], [ 0, %if.end189 ], [ 0, %if.end134 ], [ 0, %if.end78 ], [ 0, %if.end33 ]
  store i32 %i.39, i32* %save_i2, align 4, !dbg !784, !tbaa !354
  store i32 %j.27, i32* %save_j3, align 4, !dbg !785, !tbaa !354
  store i32 %t.18, i32* %save_t4, align 4, !dbg !786, !tbaa !354
  store i32 %alphaSize.21, i32* %save_alphaSize5, align 4, !dbg !787, !tbaa !354
  store i32 %nGroups.20, i32* %save_nGroups6, align 4, !dbg !788, !tbaa !354
  store i32 %nSelectors.19, i32* %save_nSelectors7, align 4, !dbg !789, !tbaa !354
  store i32 %EOB.11, i32* %save_EOB8, align 4, !dbg !790, !tbaa !354
  store i32 %groupNo.14, i32* %save_groupNo9, align 4, !dbg !791, !tbaa !354
  store i32 %groupPos.14, i32* %save_groupPos10, align 4, !dbg !792, !tbaa !354
  store i32 %nextSym.8, i32* %save_nextSym11, align 4, !dbg !793, !tbaa !354
  store i32 %nblockMAX.11, i32* %save_nblockMAX12, align 4, !dbg !794, !tbaa !354
  store i32 %nblock.13, i32* %save_nblock13, align 4, !dbg !795, !tbaa !354
  store i32 %es.11, i32* %save_es14, align 4, !dbg !796, !tbaa !354
  store i32 %N.8, i32* %save_N15, align 4, !dbg !797, !tbaa !354
  store i32 %curr.17, i32* %save_curr16, align 4, !dbg !798, !tbaa !354
  store i32 %11, i32* %save_zt17, align 4, !dbg !799, !tbaa !354
  store i32 %zn.11, i32* %save_zn18, align 4, !dbg !800, !tbaa !354
  store i32 %zvec.10, i32* %save_zvec19, align 4, !dbg !801, !tbaa !354
  store i32 %zj.10, i32* %save_zj20, align 4, !dbg !802, !tbaa !354
  store i32 %gSel.14, i32* %save_gSel21, align 4, !dbg !803, !tbaa !354
  store i32 %gMinlen.14, i32* %save_gMinlen22, align 4, !dbg !804, !tbaa !354
  store i32* %gLimit.14, i32** %save_gLimit23, align 8, !dbg !805, !tbaa !350
  store i32* %gBase.14, i32** %save_gBase24, align 8, !dbg !806, !tbaa !350
  store i32* %gPerm.14, i32** %save_gPerm25, align 8, !dbg !807, !tbaa !350
  ret i32 %retVal.0, !dbg !808
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @BZ2_indexIntoF(i32, i32*) #2

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !342}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BZ2_decompress", metadata !"BZ2_decompress", metadata !"", i32 146, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.DState*)* @BZ2_decompress, null, null, metadata !141, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [BZ2_decompress]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"Int32", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [Int32] [line 84, size 0, align 0, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DState]
!11 = metadata !{i32 786454, metadata !1, null, metadata !"DState", i32 472, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [DState] [line 472, size 0, align 0, offset 0] [from ]
!12 = metadata !{i32 786451, metadata !13, null, metadata !"", i32 382, i64 513152, i64 64, i32 0, i32 0, null, metadata !14, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 382, size 513152, align 64, offset 0] [from ]
!13 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib_private.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!14 = metadata !{metadata !15, metadata !43, metadata !44, metadata !47, metadata !48, metadata !50, metadata !51, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !66, metadata !67, metadata !71, metadata !72, metadata !74, metadata !78, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !91, metadata !93, metadata !97, metadata !99, metadata !103, metadata !104, metadata !109, metadata !111, metadata !112, metadata !113, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !139, metadata !140}
!15 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"strm", i32 384, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [strm] [line 384, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from bz_stream]
!17 = metadata !{i32 786454, metadata !13, null, metadata !"bz_stream", i32 221, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [bz_stream] [line 221, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 204, i64 640, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 204, size 640, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !34, metadata !38, metadata !42}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"next_in", i32 205, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [next_in] [line 205, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!23 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!24 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"avail_in", i32 206, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [avail_in] [line 206, size 32, align 32, offset 64] [from unsigned int]
!25 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"total_in_lo32", i32 207, i64 32, i64 32, i64 96, i32 0, metadata !25} ; [ DW_TAG_member ] [total_in_lo32] [line 207, size 32, align 32, offset 96] [from unsigned int]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"total_in_hi32", i32 208, i64 32, i64 32, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [total_in_hi32] [line 208, size 32, align 32, offset 128] [from unsigned int]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"next_out", i32 210, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [next_out] [line 210, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"avail_out", i32 211, i64 32, i64 32, i64 256, i32 0, metadata !25} ; [ DW_TAG_member ] [avail_out] [line 211, size 32, align 32, offset 256] [from unsigned int]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"total_out_lo32", i32 212, i64 32, i64 32, i64 288, i32 0, metadata !25} ; [ DW_TAG_member ] [total_out_lo32] [line 212, size 32, align 32, offset 288] [from unsigned int]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"total_out_hi32", i32 213, i64 32, i64 32, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [total_out_hi32] [line 213, size 32, align 32, offset 320] [from unsigned int]
!32 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"state", i32 215, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [state] [line 215, size 64, align 64, offset 384] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"bzalloc", i32 217, i64 64, i64 64, i64 448, i32 0, metadata !35} ; [ DW_TAG_member ] [bzalloc] [line 217, size 64, align 64, offset 448] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !33, metadata !33, metadata !9, metadata !9}
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"bzfree", i32 218, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ] [bzfree] [line 218, size 64, align 64, offset 512] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !33, metadata !33}
!42 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"opaque", i32 219, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [opaque] [line 219, size 64, align 64, offset 576] [from ]
!43 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"state", i32 387, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [state] [line 387, size 32, align 32, offset 64] [from Int32]
!44 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"state_out_ch", i32 390, i64 8, i64 8, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [state_out_ch] [line 390, size 8, align 8, offset 96] [from UChar]
!45 = metadata !{i32 786454, metadata !13, null, metadata !"UChar", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [UChar] [line 83, size 0, align 0, offset 0] [from unsigned char]
!46 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!47 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"state_out_len", i32 391, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [state_out_len] [line 391, size 32, align 32, offset 128] [from Int32]
!48 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"blockRandomised", i32 392, i64 8, i64 8, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [blockRandomised] [line 392, size 8, align 8, offset 160] [from Bool]
!49 = metadata !{i32 786454, metadata !13, null, metadata !"Bool", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [Bool] [line 82, size 0, align 0, offset 0] [from unsigned char]
!50 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"rNToGo", i32 393, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [rNToGo] [line 393, size 32, align 32, offset 192] [from Int32]
!51 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"rTPos", i32 393, i64 32, i64 32, i64 224, i32 0, metadata !8} ; [ DW_TAG_member ] [rTPos] [line 393, size 32, align 32, offset 224] [from Int32]
!52 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"bsBuff", i32 396, i64 32, i64 32, i64 256, i32 0, metadata !53} ; [ DW_TAG_member ] [bsBuff] [line 396, size 32, align 32, offset 256] [from UInt32]
!53 = metadata !{i32 786454, metadata !13, null, metadata !"UInt32", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [UInt32] [line 85, size 0, align 0, offset 0] [from unsigned int]
!54 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"bsLive", i32 397, i64 32, i64 32, i64 288, i32 0, metadata !8} ; [ DW_TAG_member ] [bsLive] [line 397, size 32, align 32, offset 288] [from Int32]
!55 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"blockSize100k", i32 400, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [blockSize100k] [line 400, size 32, align 32, offset 320] [from Int32]
!56 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"smallDecompress", i32 401, i64 8, i64 8, i64 352, i32 0, metadata !49} ; [ DW_TAG_member ] [smallDecompress] [line 401, size 8, align 8, offset 352] [from Bool]
!57 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"currBlockNo", i32 402, i64 32, i64 32, i64 384, i32 0, metadata !8} ; [ DW_TAG_member ] [currBlockNo] [line 402, size 32, align 32, offset 384] [from Int32]
!58 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"verbosity", i32 403, i64 32, i64 32, i64 416, i32 0, metadata !8} ; [ DW_TAG_member ] [verbosity] [line 403, size 32, align 32, offset 416] [from Int32]
!59 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"origPtr", i32 406, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [origPtr] [line 406, size 32, align 32, offset 448] [from Int32]
!60 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"tPos", i32 407, i64 32, i64 32, i64 480, i32 0, metadata !53} ; [ DW_TAG_member ] [tPos] [line 407, size 32, align 32, offset 480] [from UInt32]
!61 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"k0", i32 408, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [k0] [line 408, size 32, align 32, offset 512] [from Int32]
!62 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"unzftab", i32 409, i64 8192, i64 32, i64 544, i32 0, metadata !63} ; [ DW_TAG_member ] [unzftab] [line 409, size 8192, align 32, offset 544] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !8, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from Int32]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!66 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"nblock_used", i32 410, i64 32, i64 32, i64 8736, i32 0, metadata !8} ; [ DW_TAG_member ] [nblock_used] [line 410, size 32, align 32, offset 8736] [from Int32]
!67 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"cftab", i32 411, i64 8224, i64 32, i64 8768, i32 0, metadata !68} ; [ DW_TAG_member ] [cftab] [line 411, size 8224, align 32, offset 8768] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8224, i64 32, i32 0, i32 0, metadata !8, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8224, align 32, offset 0] [from Int32]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 257}      ; [ DW_TAG_subrange_type ] [0, 256]
!71 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"cftabCopy", i32 412, i64 8224, i64 32, i64 16992, i32 0, metadata !68} ; [ DW_TAG_member ] [cftabCopy] [line 412, size 8224, align 32, offset 16992] [from ]
!72 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"tt", i32 415, i64 64, i64 64, i64 25216, i32 0, metadata !73} ; [ DW_TAG_member ] [tt] [line 415, size 64, align 64, offset 25216] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UInt32]
!74 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"ll16", i32 418, i64 64, i64 64, i64 25280, i32 0, metadata !75} ; [ DW_TAG_member ] [ll16] [line 418, size 64, align 64, offset 25280] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UInt16]
!76 = metadata !{i32 786454, metadata !13, null, metadata !"UInt16", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [UInt16] [line 87, size 0, align 0, offset 0] [from unsigned short]
!77 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!78 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"ll4", i32 419, i64 64, i64 64, i64 25344, i32 0, metadata !79} ; [ DW_TAG_member ] [ll4] [line 419, size 64, align 64, offset 25344] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UChar]
!80 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"storedBlockCRC", i32 422, i64 32, i64 32, i64 25408, i32 0, metadata !53} ; [ DW_TAG_member ] [storedBlockCRC] [line 422, size 32, align 32, offset 25408] [from UInt32]
!81 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"storedCombinedCRC", i32 423, i64 32, i64 32, i64 25440, i32 0, metadata !53} ; [ DW_TAG_member ] [storedCombinedCRC] [line 423, size 32, align 32, offset 25440] [from UInt32]
!82 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"calculatedBlockCRC", i32 424, i64 32, i64 32, i64 25472, i32 0, metadata !53} ; [ DW_TAG_member ] [calculatedBlockCRC] [line 424, size 32, align 32, offset 25472] [from UInt32]
!83 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"calculatedCombinedCRC", i32 425, i64 32, i64 32, i64 25504, i32 0, metadata !53} ; [ DW_TAG_member ] [calculatedCombinedCRC] [line 425, size 32, align 32, offset 25504] [from UInt32]
!84 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"nInUse", i32 428, i64 32, i64 32, i64 25536, i32 0, metadata !8} ; [ DW_TAG_member ] [nInUse] [line 428, size 32, align 32, offset 25536] [from Int32]
!85 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"inUse", i32 429, i64 2048, i64 8, i64 25568, i32 0, metadata !86} ; [ DW_TAG_member ] [inUse] [line 429, size 2048, align 8, offset 25568] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !49, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from Bool]
!87 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"inUse16", i32 430, i64 128, i64 8, i64 27616, i32 0, metadata !88} ; [ DW_TAG_member ] [inUse16] [line 430, size 128, align 8, offset 27616] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !49, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from Bool]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!91 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"seqToUnseq", i32 431, i64 2048, i64 8, i64 27744, i32 0, metadata !92} ; [ DW_TAG_member ] [seqToUnseq] [line 431, size 2048, align 8, offset 27744] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !45, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from UChar]
!93 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"mtfa", i32 434, i64 32768, i64 8, i64 29792, i32 0, metadata !94} ; [ DW_TAG_member ] [mtfa] [line 434, size 32768, align 8, offset 29792] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !45, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from UChar]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 4096}     ; [ DW_TAG_subrange_type ] [0, 4095]
!97 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"mtfbase", i32 435, i64 512, i64 32, i64 62560, i32 0, metadata !98} ; [ DW_TAG_member ] [mtfbase] [line 435, size 512, align 32, offset 62560] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !8, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from Int32]
!99 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"selector", i32 436, i64 144016, i64 8, i64 63072, i32 0, metadata !100} ; [ DW_TAG_member ] [selector] [line 436, size 144016, align 8, offset 63072] [from ]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 144016, i64 8, i32 0, i32 0, metadata !45, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 144016, align 8, offset 0] [from UChar]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 18002}   ; [ DW_TAG_subrange_type ] [0, 18001]
!103 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"selectorMtf", i32 437, i64 144016, i64 8, i64 207088, i32 0, metadata !100} ; [ DW_TAG_member ] [selectorMtf] [line 437, size 144016, align 8, offset 207088] [from ]
!104 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"len", i32 438, i64 12384, i64 8, i64 351104, i32 0, metadata !105} ; [ DW_TAG_member ] [len] [line 438, size 12384, align 8, offset 351104] [from ]
!105 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12384, i64 8, i32 0, i32 0, metadata !45, metadata !106, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12384, align 8, offset 0] [from UChar]
!106 = metadata !{metadata !107, metadata !108}
!107 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!108 = metadata !{i32 786465, i64 0, i64 258}     ; [ DW_TAG_subrange_type ] [0, 257]
!109 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"limit", i32 440, i64 49536, i64 32, i64 363488, i32 0, metadata !110} ; [ DW_TAG_member ] [limit] [line 440, size 49536, align 32, offset 363488] [from ]
!110 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 49536, i64 32, i32 0, i32 0, metadata !8, metadata !106, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 49536, align 32, offset 0] [from Int32]
!111 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"base", i32 441, i64 49536, i64 32, i64 413024, i32 0, metadata !110} ; [ DW_TAG_member ] [base] [line 441, size 49536, align 32, offset 413024] [from ]
!112 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"perm", i32 442, i64 49536, i64 32, i64 462560, i32 0, metadata !110} ; [ DW_TAG_member ] [perm] [line 442, size 49536, align 32, offset 462560] [from ]
!113 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"minLens", i32 443, i64 192, i64 32, i64 512096, i32 0, metadata !114} ; [ DW_TAG_member ] [minLens] [line 443, size 192, align 32, offset 512096] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from Int32]
!115 = metadata !{metadata !107}
!116 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_i", i32 446, i64 32, i64 32, i64 512288, i32 0, metadata !8} ; [ DW_TAG_member ] [save_i] [line 446, size 32, align 32, offset 512288] [from Int32]
!117 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_j", i32 447, i64 32, i64 32, i64 512320, i32 0, metadata !8} ; [ DW_TAG_member ] [save_j] [line 447, size 32, align 32, offset 512320] [from Int32]
!118 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_t", i32 448, i64 32, i64 32, i64 512352, i32 0, metadata !8} ; [ DW_TAG_member ] [save_t] [line 448, size 32, align 32, offset 512352] [from Int32]
!119 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_alphaSize", i32 449, i64 32, i64 32, i64 512384, i32 0, metadata !8} ; [ DW_TAG_member ] [save_alphaSize] [line 449, size 32, align 32, offset 512384] [from Int32]
!120 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_nGroups", i32 450, i64 32, i64 32, i64 512416, i32 0, metadata !8} ; [ DW_TAG_member ] [save_nGroups] [line 450, size 32, align 32, offset 512416] [from Int32]
!121 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_nSelectors", i32 451, i64 32, i64 32, i64 512448, i32 0, metadata !8} ; [ DW_TAG_member ] [save_nSelectors] [line 451, size 32, align 32, offset 512448] [from Int32]
!122 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_EOB", i32 452, i64 32, i64 32, i64 512480, i32 0, metadata !8} ; [ DW_TAG_member ] [save_EOB] [line 452, size 32, align 32, offset 512480] [from Int32]
!123 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_groupNo", i32 453, i64 32, i64 32, i64 512512, i32 0, metadata !8} ; [ DW_TAG_member ] [save_groupNo] [line 453, size 32, align 32, offset 512512] [from Int32]
!124 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_groupPos", i32 454, i64 32, i64 32, i64 512544, i32 0, metadata !8} ; [ DW_TAG_member ] [save_groupPos] [line 454, size 32, align 32, offset 512544] [from Int32]
!125 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_nextSym", i32 455, i64 32, i64 32, i64 512576, i32 0, metadata !8} ; [ DW_TAG_member ] [save_nextSym] [line 455, size 32, align 32, offset 512576] [from Int32]
!126 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_nblockMAX", i32 456, i64 32, i64 32, i64 512608, i32 0, metadata !8} ; [ DW_TAG_member ] [save_nblockMAX] [line 456, size 32, align 32, offset 512608] [from Int32]
!127 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_nblock", i32 457, i64 32, i64 32, i64 512640, i32 0, metadata !8} ; [ DW_TAG_member ] [save_nblock] [line 457, size 32, align 32, offset 512640] [from Int32]
!128 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_es", i32 458, i64 32, i64 32, i64 512672, i32 0, metadata !8} ; [ DW_TAG_member ] [save_es] [line 458, size 32, align 32, offset 512672] [from Int32]
!129 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_N", i32 459, i64 32, i64 32, i64 512704, i32 0, metadata !8} ; [ DW_TAG_member ] [save_N] [line 459, size 32, align 32, offset 512704] [from Int32]
!130 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_curr", i32 460, i64 32, i64 32, i64 512736, i32 0, metadata !8} ; [ DW_TAG_member ] [save_curr] [line 460, size 32, align 32, offset 512736] [from Int32]
!131 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_zt", i32 461, i64 32, i64 32, i64 512768, i32 0, metadata !8} ; [ DW_TAG_member ] [save_zt] [line 461, size 32, align 32, offset 512768] [from Int32]
!132 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_zn", i32 462, i64 32, i64 32, i64 512800, i32 0, metadata !8} ; [ DW_TAG_member ] [save_zn] [line 462, size 32, align 32, offset 512800] [from Int32]
!133 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_zvec", i32 463, i64 32, i64 32, i64 512832, i32 0, metadata !8} ; [ DW_TAG_member ] [save_zvec] [line 463, size 32, align 32, offset 512832] [from Int32]
!134 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_zj", i32 464, i64 32, i64 32, i64 512864, i32 0, metadata !8} ; [ DW_TAG_member ] [save_zj] [line 464, size 32, align 32, offset 512864] [from Int32]
!135 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_gSel", i32 465, i64 32, i64 32, i64 512896, i32 0, metadata !8} ; [ DW_TAG_member ] [save_gSel] [line 465, size 32, align 32, offset 512896] [from Int32]
!136 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_gMinlen", i32 466, i64 32, i64 32, i64 512928, i32 0, metadata !8} ; [ DW_TAG_member ] [save_gMinlen] [line 466, size 32, align 32, offset 512928] [from Int32]
!137 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_gLimit", i32 467, i64 64, i64 64, i64 512960, i32 0, metadata !138} ; [ DW_TAG_member ] [save_gLimit] [line 467, size 64, align 64, offset 512960] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Int32]
!139 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_gBase", i32 468, i64 64, i64 64, i64 513024, i32 0, metadata !138} ; [ DW_TAG_member ] [save_gBase] [line 468, size 64, align 64, offset 513024] [from ]
!140 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"save_gPerm", i32 469, i64 64, i64 64, i64 513088, i32 0, metadata !138} ; [ DW_TAG_member ] [save_gPerm] [line 469, size 64, align 64, offset 513088] [from ]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !176, metadata !179, metadata !182, metadata !185, metadata !188, metadata !191, metadata !194, metadata !197, metadata !200, metadata !203, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !232, metadata !238, metadata !241, metadata !244, metadata !250, metadata !253, metadata !254, metadata !255, metadata !260, metadata !266, metadata !269, metadata !271, metadata !272, metadata !273, metadata !277, metadata !281, metadata !288, metadata !292, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !304, metadata !308, metadata !312, metadata !315, metadata !318, metadata !321, metadata !324, metadata !327, metadata !330, metadata !333, metadata !336, metadata !339}
!142 = metadata !{i32 786689, metadata !4, metadata !"s", metadata !5, i32 16777362, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 146]
!143 = metadata !{i32 786688, metadata !4, metadata !"uc", metadata !5, i32 148, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc] [line 148]
!144 = metadata !{i32 786688, metadata !4, metadata !"retVal", metadata !5, i32 149, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 149]
!145 = metadata !{i32 786688, metadata !4, metadata !"minLen", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minLen] [line 150]
!146 = metadata !{i32 786688, metadata !4, metadata !"maxLen", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxLen] [line 150]
!147 = metadata !{i32 786688, metadata !4, metadata !"strm", metadata !5, i32 151, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strm] [line 151]
!148 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 154, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 154]
!149 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 155, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 155]
!150 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 156, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 156]
!151 = metadata !{i32 786688, metadata !4, metadata !"alphaSize", metadata !5, i32 157, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alphaSize] [line 157]
!152 = metadata !{i32 786688, metadata !4, metadata !"nGroups", metadata !5, i32 158, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nGroups] [line 158]
!153 = metadata !{i32 786688, metadata !4, metadata !"nSelectors", metadata !5, i32 159, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nSelectors] [line 159]
!154 = metadata !{i32 786688, metadata !4, metadata !"EOB", metadata !5, i32 160, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EOB] [line 160]
!155 = metadata !{i32 786688, metadata !4, metadata !"groupNo", metadata !5, i32 161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupNo] [line 161]
!156 = metadata !{i32 786688, metadata !4, metadata !"groupPos", metadata !5, i32 162, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupPos] [line 162]
!157 = metadata !{i32 786688, metadata !4, metadata !"nextSym", metadata !5, i32 163, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextSym] [line 163]
!158 = metadata !{i32 786688, metadata !4, metadata !"nblockMAX", metadata !5, i32 164, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblockMAX] [line 164]
!159 = metadata !{i32 786688, metadata !4, metadata !"nblock", metadata !5, i32 165, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nblock] [line 165]
!160 = metadata !{i32 786688, metadata !4, metadata !"es", metadata !5, i32 166, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [es] [line 166]
!161 = metadata !{i32 786688, metadata !4, metadata !"N", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 167]
!162 = metadata !{i32 786688, metadata !4, metadata !"curr", metadata !5, i32 168, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 168]
!163 = metadata !{i32 786688, metadata !4, metadata !"zt", metadata !5, i32 169, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zt] [line 169]
!164 = metadata !{i32 786688, metadata !4, metadata !"zn", metadata !5, i32 170, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zn] [line 170]
!165 = metadata !{i32 786688, metadata !4, metadata !"zvec", metadata !5, i32 171, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zvec] [line 171]
!166 = metadata !{i32 786688, metadata !4, metadata !"zj", metadata !5, i32 172, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zj] [line 172]
!167 = metadata !{i32 786688, metadata !4, metadata !"gSel", metadata !5, i32 173, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gSel] [line 173]
!168 = metadata !{i32 786688, metadata !4, metadata !"gMinlen", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gMinlen] [line 174]
!169 = metadata !{i32 786688, metadata !4, metadata !"gLimit", metadata !5, i32 175, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gLimit] [line 175]
!170 = metadata !{i32 786688, metadata !4, metadata !"gBase", metadata !5, i32 176, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gBase] [line 176]
!171 = metadata !{i32 786688, metadata !4, metadata !"gPerm", metadata !5, i32 177, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gPerm] [line 177]
!172 = metadata !{i32 786688, metadata !173, metadata !"v", metadata !5, i32 237, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 237]
!173 = metadata !{i32 786443, metadata !1, metadata !174, i32 237, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!174 = metadata !{i32 786443, metadata !1, metadata !175, i32 237, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!175 = metadata !{i32 786443, metadata !1, metadata !4, i32 235, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!176 = metadata !{i32 786688, metadata !177, metadata !"v", metadata !5, i32 240, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 240]
!177 = metadata !{i32 786443, metadata !1, metadata !178, i32 240, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!178 = metadata !{i32 786443, metadata !1, metadata !175, i32 240, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!179 = metadata !{i32 786688, metadata !180, metadata !"v", metadata !5, i32 243, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 243]
!180 = metadata !{i32 786443, metadata !1, metadata !181, i32 243, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!181 = metadata !{i32 786443, metadata !1, metadata !175, i32 243, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!182 = metadata !{i32 786688, metadata !183, metadata !"v", metadata !5, i32 246, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 246]
!183 = metadata !{i32 786443, metadata !1, metadata !184, i32 246, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!184 = metadata !{i32 786443, metadata !1, metadata !175, i32 246, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!185 = metadata !{i32 786688, metadata !186, metadata !"v", metadata !5, i32 262, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 262]
!186 = metadata !{i32 786443, metadata !1, metadata !187, i32 262, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!187 = metadata !{i32 786443, metadata !1, metadata !175, i32 262, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!188 = metadata !{i32 786688, metadata !189, metadata !"v", metadata !5, i32 266, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 266]
!189 = metadata !{i32 786443, metadata !1, metadata !190, i32 266, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!190 = metadata !{i32 786443, metadata !1, metadata !175, i32 266, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!191 = metadata !{i32 786688, metadata !192, metadata !"v", metadata !5, i32 268, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 268]
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 268, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!193 = metadata !{i32 786443, metadata !1, metadata !175, i32 268, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!194 = metadata !{i32 786688, metadata !195, metadata !"v", metadata !5, i32 270, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 270]
!195 = metadata !{i32 786443, metadata !1, metadata !196, i32 270, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!196 = metadata !{i32 786443, metadata !1, metadata !175, i32 270, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!197 = metadata !{i32 786688, metadata !198, metadata !"v", metadata !5, i32 272, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 272]
!198 = metadata !{i32 786443, metadata !1, metadata !199, i32 272, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!199 = metadata !{i32 786443, metadata !1, metadata !175, i32 272, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!200 = metadata !{i32 786688, metadata !201, metadata !"v", metadata !5, i32 274, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 274]
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 274, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!202 = metadata !{i32 786443, metadata !1, metadata !175, i32 274, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!203 = metadata !{i32 786688, metadata !204, metadata !"v", metadata !5, i32 282, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 282]
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 282, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!205 = metadata !{i32 786443, metadata !1, metadata !175, i32 282, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!206 = metadata !{i32 786688, metadata !207, metadata !"v", metadata !5, i32 284, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 284]
!207 = metadata !{i32 786443, metadata !1, metadata !208, i32 284, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!208 = metadata !{i32 786443, metadata !1, metadata !175, i32 284, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!209 = metadata !{i32 786688, metadata !210, metadata !"v", metadata !5, i32 286, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 286]
!210 = metadata !{i32 786443, metadata !1, metadata !211, i32 286, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!211 = metadata !{i32 786443, metadata !1, metadata !175, i32 286, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!212 = metadata !{i32 786688, metadata !213, metadata !"v", metadata !5, i32 288, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 288]
!213 = metadata !{i32 786443, metadata !1, metadata !214, i32 288, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!214 = metadata !{i32 786443, metadata !1, metadata !175, i32 288, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!215 = metadata !{i32 786688, metadata !216, metadata !"v", metadata !5, i32 291, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 291]
!216 = metadata !{i32 786443, metadata !1, metadata !217, i32 291, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!217 = metadata !{i32 786443, metadata !1, metadata !175, i32 291, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!218 = metadata !{i32 786688, metadata !219, metadata !"v", metadata !5, i32 294, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 294]
!219 = metadata !{i32 786443, metadata !1, metadata !220, i32 294, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!220 = metadata !{i32 786443, metadata !1, metadata !175, i32 294, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!221 = metadata !{i32 786688, metadata !222, metadata !"v", metadata !5, i32 296, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 296]
!222 = metadata !{i32 786443, metadata !1, metadata !223, i32 296, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!223 = metadata !{i32 786443, metadata !1, metadata !175, i32 296, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!224 = metadata !{i32 786688, metadata !225, metadata !"v", metadata !5, i32 298, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 298]
!225 = metadata !{i32 786443, metadata !1, metadata !226, i32 298, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!226 = metadata !{i32 786443, metadata !1, metadata !175, i32 298, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!227 = metadata !{i32 786688, metadata !228, metadata !"v", metadata !5, i32 308, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 308]
!228 = metadata !{i32 786443, metadata !1, metadata !229, i32 308, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!229 = metadata !{i32 786443, metadata !1, metadata !230, i32 308, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!230 = metadata !{i32 786443, metadata !1, metadata !231, i32 307, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!231 = metadata !{i32 786443, metadata !1, metadata !175, i32 307, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!232 = metadata !{i32 786688, metadata !233, metadata !"v", metadata !5, i32 319, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 319]
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 319, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!234 = metadata !{i32 786443, metadata !1, metadata !235, i32 319, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 318, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!236 = metadata !{i32 786443, metadata !1, metadata !237, i32 318, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!237 = metadata !{i32 786443, metadata !1, metadata !175, i32 316, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!238 = metadata !{i32 786688, metadata !239, metadata !"v", metadata !5, i32 327, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 327]
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 327, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!240 = metadata !{i32 786443, metadata !1, metadata !175, i32 327, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!241 = metadata !{i32 786688, metadata !242, metadata !"v", metadata !5, i32 329, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 329]
!242 = metadata !{i32 786443, metadata !1, metadata !243, i32 329, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!243 = metadata !{i32 786443, metadata !1, metadata !175, i32 329, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!244 = metadata !{i32 786688, metadata !245, metadata !"v", metadata !5, i32 334, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 334]
!245 = metadata !{i32 786443, metadata !1, metadata !246, i32 334, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!246 = metadata !{i32 786443, metadata !1, metadata !247, i32 334, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!247 = metadata !{i32 786443, metadata !1, metadata !248, i32 333, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 331, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!249 = metadata !{i32 786443, metadata !1, metadata !175, i32 331, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!250 = metadata !{i32 786688, metadata !251, metadata !"pos", metadata !5, i32 344, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 344]
!251 = metadata !{i32 786443, metadata !1, metadata !175, i32 343, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !45, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from UChar]
!253 = metadata !{i32 786688, metadata !251, metadata !"tmp", metadata !5, i32 344, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 344]
!254 = metadata !{i32 786688, metadata !251, metadata !"v", metadata !5, i32 344, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 344]
!255 = metadata !{i32 786688, metadata !256, metadata !"v", metadata !5, i32 358, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 358]
!256 = metadata !{i32 786443, metadata !1, metadata !257, i32 358, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!257 = metadata !{i32 786443, metadata !1, metadata !258, i32 358, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!258 = metadata !{i32 786443, metadata !1, metadata !259, i32 357, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!259 = metadata !{i32 786443, metadata !1, metadata !175, i32 357, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!260 = metadata !{i32 786688, metadata !261, metadata !"v", metadata !5, i32 362, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 362]
!261 = metadata !{i32 786443, metadata !1, metadata !262, i32 362, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!262 = metadata !{i32 786443, metadata !1, metadata !263, i32 362, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!263 = metadata !{i32 786443, metadata !1, metadata !264, i32 360, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!264 = metadata !{i32 786443, metadata !1, metadata !265, i32 359, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!265 = metadata !{i32 786443, metadata !1, metadata !258, i32 359, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!266 = metadata !{i32 786688, metadata !267, metadata !"v", metadata !5, i32 364, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 364]
!267 = metadata !{i32 786443, metadata !1, metadata !268, i32 364, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!268 = metadata !{i32 786443, metadata !1, metadata !263, i32 364, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!269 = metadata !{i32 786688, metadata !270, metadata !"ii", metadata !5, i32 400, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 400]
!270 = metadata !{i32 786443, metadata !1, metadata !175, i32 399, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!271 = metadata !{i32 786688, metadata !270, metadata !"jj", metadata !5, i32 400, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 400]
!272 = metadata !{i32 786688, metadata !270, metadata !"kk", metadata !5, i32 400, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 400]
!273 = metadata !{i32 786688, metadata !274, metadata !"v", metadata !5, i32 413, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 413]
!274 = metadata !{i32 786443, metadata !1, metadata !275, i32 413, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!275 = metadata !{i32 786443, metadata !1, metadata !276, i32 413, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!276 = metadata !{i32 786443, metadata !1, metadata !175, i32 413, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!277 = metadata !{i32 786688, metadata !278, metadata !"v", metadata !5, i32 413, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 413]
!278 = metadata !{i32 786443, metadata !1, metadata !279, i32 413, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!279 = metadata !{i32 786443, metadata !1, metadata !280, i32 413, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!280 = metadata !{i32 786443, metadata !1, metadata !276, i32 413, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!281 = metadata !{i32 786688, metadata !282, metadata !"v", metadata !5, i32 427, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 427]
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 427, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!283 = metadata !{i32 786443, metadata !1, metadata !284, i32 427, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!284 = metadata !{i32 786443, metadata !1, metadata !285, i32 427, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 423, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 419, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!287 = metadata !{i32 786443, metadata !1, metadata !175, i32 415, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!288 = metadata !{i32 786688, metadata !289, metadata !"v", metadata !5, i32 427, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 427]
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 427, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 427, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!291 = metadata !{i32 786443, metadata !1, metadata !284, i32 427, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!292 = metadata !{i32 786688, metadata !293, metadata !"ii", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 458]
!293 = metadata !{i32 786443, metadata !1, metadata !294, i32 457, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!294 = metadata !{i32 786443, metadata !1, metadata !287, i32 452, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!295 = metadata !{i32 786688, metadata !293, metadata !"jj", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 458]
!296 = metadata !{i32 786688, metadata !293, metadata !"kk", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 458]
!297 = metadata !{i32 786688, metadata !293, metadata !"pp", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pp] [line 458]
!298 = metadata !{i32 786688, metadata !293, metadata !"lno", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lno] [line 458]
!299 = metadata !{i32 786688, metadata !293, metadata !"off", metadata !5, i32 458, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 458]
!300 = metadata !{i32 786688, metadata !293, metadata !"nn", metadata !5, i32 459, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 459]
!301 = metadata !{i32 786688, metadata !302, metadata !"z", metadata !5, i32 467, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 467]
!302 = metadata !{i32 786443, metadata !1, metadata !303, i32 466, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!303 = metadata !{i32 786443, metadata !1, metadata !293, i32 462, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!304 = metadata !{i32 786688, metadata !305, metadata !"v", metadata !5, i32 516, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 516]
!305 = metadata !{i32 786443, metadata !1, metadata !306, i32 516, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!306 = metadata !{i32 786443, metadata !1, metadata !307, i32 516, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!307 = metadata !{i32 786443, metadata !1, metadata !294, i32 516, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!308 = metadata !{i32 786688, metadata !309, metadata !"v", metadata !5, i32 516, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 516]
!309 = metadata !{i32 786443, metadata !1, metadata !310, i32 516, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!310 = metadata !{i32 786443, metadata !1, metadata !311, i32 516, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!311 = metadata !{i32 786443, metadata !1, metadata !307, i32 516, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!312 = metadata !{i32 786688, metadata !313, metadata !"tmp", metadata !5, i32 560, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 560]
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 559, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!314 = metadata !{i32 786443, metadata !1, metadata !175, i32 544, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!315 = metadata !{i32 786688, metadata !316, metadata !"v", metadata !5, i32 604, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 604]
!316 = metadata !{i32 786443, metadata !1, metadata !317, i32 604, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!317 = metadata !{i32 786443, metadata !1, metadata !175, i32 604, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!318 = metadata !{i32 786688, metadata !319, metadata !"v", metadata !5, i32 606, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 606]
!319 = metadata !{i32 786443, metadata !1, metadata !320, i32 606, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!320 = metadata !{i32 786443, metadata !1, metadata !175, i32 606, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!321 = metadata !{i32 786688, metadata !322, metadata !"v", metadata !5, i32 608, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 608]
!322 = metadata !{i32 786443, metadata !1, metadata !323, i32 608, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!323 = metadata !{i32 786443, metadata !1, metadata !175, i32 608, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!324 = metadata !{i32 786688, metadata !325, metadata !"v", metadata !5, i32 610, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 610]
!325 = metadata !{i32 786443, metadata !1, metadata !326, i32 610, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!326 = metadata !{i32 786443, metadata !1, metadata !175, i32 610, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!327 = metadata !{i32 786688, metadata !328, metadata !"v", metadata !5, i32 612, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 612]
!328 = metadata !{i32 786443, metadata !1, metadata !329, i32 612, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!329 = metadata !{i32 786443, metadata !1, metadata !175, i32 612, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!330 = metadata !{i32 786688, metadata !331, metadata !"v", metadata !5, i32 616, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 616]
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 616, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!332 = metadata !{i32 786443, metadata !1, metadata !175, i32 616, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!333 = metadata !{i32 786688, metadata !334, metadata !"v", metadata !5, i32 618, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 618]
!334 = metadata !{i32 786443, metadata !1, metadata !335, i32 618, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!335 = metadata !{i32 786443, metadata !1, metadata !175, i32 618, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!336 = metadata !{i32 786688, metadata !337, metadata !"v", metadata !5, i32 620, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 620]
!337 = metadata !{i32 786443, metadata !1, metadata !338, i32 620, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!338 = metadata !{i32 786443, metadata !1, metadata !175, i32 620, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!339 = metadata !{i32 786688, metadata !340, metadata !"v", metadata !5, i32 622, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 622]
!340 = metadata !{i32 786443, metadata !1, metadata !341, i32 622, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!341 = metadata !{i32 786443, metadata !1, metadata !175, i32 622, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!342 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"makeMaps_d", metadata !"makeMaps_d", metadata !"", i32 67, metadata !343, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !345, i32 68} ; [ DW_TAG_subprogram ] [line 67] [local] [def] [scope 68] [makeMaps_d]
!343 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{null, metadata !10}
!345 = metadata !{metadata !346, metadata !347}
!346 = metadata !{i32 786689, metadata !342, metadata !"s", metadata !5, i32 16777283, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 67]
!347 = metadata !{i32 786688, metadata !342, metadata !"i", metadata !5, i32 69, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 69]
!348 = metadata !{i32 146, i32 0, metadata !4, null}
!349 = metadata !{i32 151, i32 0, metadata !4, null}
!350 = metadata !{metadata !"any pointer", metadata !351}
!351 = metadata !{metadata !"omnipotent char", metadata !352}
!352 = metadata !{metadata !"Simple C/C++ TBAA"}
!353 = metadata !{i32 179, i32 0, metadata !4, null}
!354 = metadata !{metadata !"int", metadata !351}
!355 = metadata !{i32 181, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !4, i32 179, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!357 = metadata !{i32 208, i32 0, metadata !4, null}
!358 = metadata !{i32 209, i32 0, metadata !4, null}
!359 = metadata !{i32 210, i32 0, metadata !4, null}
!360 = metadata !{i32 211, i32 0, metadata !4, null}
!361 = metadata !{i32 212, i32 0, metadata !4, null}
!362 = metadata !{i32 213, i32 0, metadata !4, null}
!363 = metadata !{i32 214, i32 0, metadata !4, null}
!364 = metadata !{i32 215, i32 0, metadata !4, null}
!365 = metadata !{i32 216, i32 0, metadata !4, null}
!366 = metadata !{i32 217, i32 0, metadata !4, null}
!367 = metadata !{i32 218, i32 0, metadata !4, null}
!368 = metadata !{i32 219, i32 0, metadata !4, null}
!369 = metadata !{i32 220, i32 0, metadata !4, null}
!370 = metadata !{i32 221, i32 0, metadata !4, null}
!371 = metadata !{i32 222, i32 0, metadata !4, null}
!372 = metadata !{i32 223, i32 0, metadata !4, null}
!373 = metadata !{i32 224, i32 0, metadata !4, null}
!374 = metadata !{i32 225, i32 0, metadata !4, null}
!375 = metadata !{i32 226, i32 0, metadata !4, null}
!376 = metadata !{i32 227, i32 0, metadata !4, null}
!377 = metadata !{i32 228, i32 0, metadata !4, null}
!378 = metadata !{i32 229, i32 0, metadata !4, null}
!379 = metadata !{i32 230, i32 0, metadata !4, null}
!380 = metadata !{i32 231, i32 0, metadata !4, null}
!381 = metadata !{i32 205, i32 0, metadata !356, null}
!382 = metadata !{i32 182, i32 0, metadata !356, null}
!383 = metadata !{i32 233, i32 0, metadata !4, null}
!384 = metadata !{i32 235, i32 0, metadata !4, null}
!385 = metadata !{i32 262, i32 0, metadata !187, null}
!386 = metadata !{i32 240, i32 0, metadata !178, null}
!387 = metadata !{i32 243, i32 0, metadata !181, null}
!388 = metadata !{i32 246, i32 0, metadata !184, null}
!389 = metadata !{i32 604, i32 0, metadata !317, null}
!390 = metadata !{i32 606, i32 0, metadata !320, null}
!391 = metadata !{i32 608, i32 0, metadata !323, null}
!392 = metadata !{i32 610, i32 0, metadata !326, null}
!393 = metadata !{i32 612, i32 0, metadata !329, null}
!394 = metadata !{i32 616, i32 0, metadata !332, null}
!395 = metadata !{i32 618, i32 0, metadata !335, null}
!396 = metadata !{i32 620, i32 0, metadata !338, null}
!397 = metadata !{i32 622, i32 0, metadata !341, null}
!398 = metadata !{i32 266, i32 0, metadata !190, null}
!399 = metadata !{i32 268, i32 0, metadata !193, null}
!400 = metadata !{i32 270, i32 0, metadata !196, null}
!401 = metadata !{i32 272, i32 0, metadata !199, null}
!402 = metadata !{i32 274, i32 0, metadata !202, null}
!403 = metadata !{i32 282, i32 0, metadata !205, null}
!404 = metadata !{i32 284, i32 0, metadata !208, null}
!405 = metadata !{i32 286, i32 0, metadata !211, null}
!406 = metadata !{i32 288, i32 0, metadata !214, null}
!407 = metadata !{i32 291, i32 0, metadata !217, null}
!408 = metadata !{i32 294, i32 0, metadata !220, null}
!409 = metadata !{i32 296, i32 0, metadata !223, null}
!410 = metadata !{i32 298, i32 0, metadata !226, null}
!411 = metadata !{i32 329, i32 0, metadata !243, null}
!412 = metadata !{i32 364, i32 0, metadata !268, null}
!413 = metadata !{i32 413, i32 0, metadata !279, null}
!414 = metadata !{i32 427, i32 0, metadata !290, null}
!415 = metadata !{i32 516, i32 0, metadata !310, null}
!416 = metadata !{i32 237, i32 0, metadata !175, null}
!417 = metadata !{i32 237, i32 0, metadata !174, null}
!418 = metadata !{i32 237, i32 0, metadata !173, null}
!419 = metadata !{i32 238, i32 0, metadata !175, null}
!420 = metadata !{i32 240, i32 0, metadata !175, null}
!421 = metadata !{i32 240, i32 0, metadata !177, null}
!422 = metadata !{i32 241, i32 0, metadata !175, null}
!423 = metadata !{i32 243, i32 0, metadata !175, null}
!424 = metadata !{i32 243, i32 0, metadata !180, null}
!425 = metadata !{i32 244, i32 0, metadata !175, null}
!426 = metadata !{i32 246, i32 0, metadata !175, null}
!427 = metadata !{i32 246, i32 0, metadata !183, null}
!428 = metadata !{i32 247, i32 0, metadata !175, null}
!429 = metadata !{i32 249, i32 0, metadata !175, null}
!430 = metadata !{i32 251, i32 0, metadata !175, null}
!431 = metadata !{i32 252, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !175, i32 251, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!433 = metadata !{i32 253, i32 0, metadata !432, null}
!434 = metadata !{i32 256, i32 0, metadata !432, null}
!435 = metadata !{i32 258, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !175, i32 257, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!437 = metadata !{i32 259, i32 0, metadata !436, null}
!438 = metadata !{i32 262, i32 0, metadata !175, null}
!439 = metadata !{i32 262, i32 0, metadata !186, null}
!440 = metadata !{i32 264, i32 0, metadata !175, null}
!441 = metadata !{i32 266, i32 0, metadata !175, null}
!442 = metadata !{i32 266, i32 0, metadata !189, null}
!443 = metadata !{i32 267, i32 0, metadata !175, null}
!444 = metadata !{i32 268, i32 0, metadata !175, null}
!445 = metadata !{i32 268, i32 0, metadata !192, null}
!446 = metadata !{i32 269, i32 0, metadata !175, null}
!447 = metadata !{i32 270, i32 0, metadata !175, null}
!448 = metadata !{i32 270, i32 0, metadata !195, null}
!449 = metadata !{i32 271, i32 0, metadata !175, null}
!450 = metadata !{i32 272, i32 0, metadata !175, null}
!451 = metadata !{i32 272, i32 0, metadata !198, null}
!452 = metadata !{i32 273, i32 0, metadata !175, null}
!453 = metadata !{i32 274, i32 0, metadata !175, null}
!454 = metadata !{i32 274, i32 0, metadata !201, null}
!455 = metadata !{i32 275, i32 0, metadata !175, null}
!456 = metadata !{i32 277, i32 0, metadata !175, null}
!457 = metadata !{i32 278, i32 0, metadata !175, null}
!458 = metadata !{i32 279, i32 0, metadata !175, null}
!459 = metadata !{i32 281, i32 0, metadata !175, null}
!460 = metadata !{i32 282, i32 0, metadata !175, null}
!461 = metadata !{i32 282, i32 0, metadata !204, null}
!462 = metadata !{i32 283, i32 0, metadata !175, null}
!463 = metadata !{i32 284, i32 0, metadata !175, null}
!464 = metadata !{i32 284, i32 0, metadata !207, null}
!465 = metadata !{i32 285, i32 0, metadata !175, null}
!466 = metadata !{i32 286, i32 0, metadata !175, null}
!467 = metadata !{i32 286, i32 0, metadata !210, null}
!468 = metadata !{i32 287, i32 0, metadata !175, null}
!469 = metadata !{i32 288, i32 0, metadata !175, null}
!470 = metadata !{i32 288, i32 0, metadata !213, null}
!471 = metadata !{i32 289, i32 0, metadata !175, null}
!472 = metadata !{i32 291, i32 0, metadata !175, null}
!473 = metadata !{i32 291, i32 0, metadata !216, null}
!474 = metadata !{i32 293, i32 0, metadata !175, null}
!475 = metadata !{i32 294, i32 0, metadata !175, null}
!476 = metadata !{i32 294, i32 0, metadata !219, null}
!477 = metadata !{i32 295, i32 0, metadata !175, null}
!478 = metadata !{i32 296, i32 0, metadata !175, null}
!479 = metadata !{i32 296, i32 0, metadata !222, null}
!480 = metadata !{i32 297, i32 0, metadata !175, null}
!481 = metadata !{i32 298, i32 0, metadata !175, null}
!482 = metadata !{i32 298, i32 0, metadata !225, null}
!483 = metadata !{i32 299, i32 0, metadata !175, null}
!484 = metadata !{i32 301, i32 0, metadata !175, null}
!485 = metadata !{i32 303, i32 0, metadata !175, null}
!486 = metadata !{i32 307, i32 0, metadata !231, null}
!487 = metadata !{i32 314, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !175, i32 314, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!489 = metadata !{i32 308, i32 0, metadata !230, null}
!490 = metadata !{i32 308, i32 0, metadata !229, null}
!491 = metadata !{i32 308, i32 0, metadata !228, null}
!492 = metadata !{i32 309, i32 0, metadata !230, null}
!493 = metadata !{i32 310, i32 0, metadata !230, null}
!494 = metadata !{i32 316, i32 0, metadata !237, null}
!495 = metadata !{i32 317, i32 0, metadata !237, null}
!496 = metadata !{i32 318, i32 0, metadata !236, null}
!497 = metadata !{i32 319, i32 0, metadata !235, null}
!498 = metadata !{i32 319, i32 0, metadata !234, null}
!499 = metadata !{i32 319, i32 0, metadata !233, null}
!500 = metadata !{i32 320, i32 0, metadata !235, null}
!501 = metadata !{i32 786689, metadata !342, metadata !"s", metadata !5, i32 16777283, metadata !10, i32 0, metadata !502} ; [ DW_TAG_arg_variable ] [s] [line 67]
!502 = metadata !{i32 322, i32 0, metadata !175, null}
!503 = metadata !{i32 67, i32 0, metadata !342, metadata !502}
!504 = metadata !{i32 70, i32 0, metadata !342, metadata !502}
!505 = metadata !{i32 786688, metadata !342, metadata !"i", metadata !5, i32 69, metadata !8, i32 0, metadata !502} ; [ DW_TAG_auto_variable ] [i] [line 69]
!506 = metadata !{i32 71, i32 0, metadata !507, metadata !502}
!507 = metadata !{i32 786443, metadata !1, metadata !342, i32 71, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!508 = metadata !{i32 72, i32 0, metadata !507, metadata !502}
!509 = metadata !{i32 73, i32 0, metadata !510, metadata !502}
!510 = metadata !{i32 786443, metadata !1, metadata !507, i32 72, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!511 = metadata !{i32 74, i32 0, metadata !510, metadata !502}
!512 = metadata !{i32 75, i32 0, metadata !510, metadata !502}
!513 = metadata !{i32 323, i32 0, metadata !175, null}
!514 = metadata !{i32 324, i32 0, metadata !175, null}
!515 = metadata !{i32 327, i32 0, metadata !175, null}
!516 = metadata !{i32 327, i32 0, metadata !240, null}
!517 = metadata !{i32 327, i32 0, metadata !239, null}
!518 = metadata !{i32 328, i32 0, metadata !175, null}
!519 = metadata !{i32 329, i32 0, metadata !175, null}
!520 = metadata !{i32 329, i32 0, metadata !242, null}
!521 = metadata !{i32 330, i32 0, metadata !175, null}
!522 = metadata !{i32 331, i32 0, metadata !249, null}
!523 = metadata !{i32 345, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !251, i32 345, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!525 = metadata !{i32 334, i32 0, metadata !246, null}
!526 = metadata !{i32 334, i32 0, metadata !245, null}
!527 = metadata !{i32 334, i32 0, metadata !247, null}
!528 = metadata !{i32 335, i32 0, metadata !247, null}
!529 = metadata !{i32 336, i32 0, metadata !247, null}
!530 = metadata !{i32 337, i32 0, metadata !247, null}
!531 = metadata !{i32 339, i32 0, metadata !248, null}
!532 = metadata !{i32 347, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !251, i32 347, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!534 = metadata !{i32 351, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !533, i32 347, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!536 = metadata !{i32 348, i32 0, metadata !535, null}
!537 = metadata !{i32 349, i32 0, metadata !535, null}
!538 = metadata !{i32 350, i32 0, metadata !535, null}
!539 = metadata !{i32 350, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !535, i32 350, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!541 = metadata !{i32 352, i32 0, metadata !535, null}
!542 = metadata !{i32 357, i32 0, metadata !259, null}
!543 = metadata !{i32 372, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !175, i32 372, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!545 = metadata !{i32 375, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !547, i32 375, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!547 = metadata !{i32 786443, metadata !1, metadata !544, i32 372, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!548 = metadata !{i32 358, i32 0, metadata !258, null}
!549 = metadata !{i32 358, i32 0, metadata !257, null}
!550 = metadata !{i32 358, i32 0, metadata !256, null}
!551 = metadata !{i32 359, i32 0, metadata !265, null}
!552 = metadata !{i32 361, i32 0, metadata !263, null}
!553 = metadata !{i32 362, i32 0, metadata !263, null}
!554 = metadata !{i32 362, i32 0, metadata !262, null}
!555 = metadata !{i32 362, i32 0, metadata !261, null}
!556 = metadata !{i32 363, i32 0, metadata !263, null}
!557 = metadata !{i32 364, i32 0, metadata !263, null}
!558 = metadata !{i32 364, i32 0, metadata !267, null}
!559 = metadata !{i32 365, i32 0, metadata !263, null}
!560 = metadata !{i32 367, i32 0, metadata !264, null}
!561 = metadata !{i32 376, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !546, i32 375, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!563 = metadata !{i32 377, i32 0, metadata !562, null}
!564 = metadata !{i32 379, i32 0, metadata !547, null}
!565 = metadata !{i32 386, i32 0, metadata !547, null}
!566 = metadata !{i32 391, i32 0, metadata !175, null}
!567 = metadata !{i32 392, i32 0, metadata !175, null}
!568 = metadata !{i32 -1}
!569 = metadata !{i32 393, i32 0, metadata !175, null}
!570 = metadata !{i32 394, i32 0, metadata !175, null}
!571 = metadata !{i32 396, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !175, i32 396, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!573 = metadata !{i32 402, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !270, i32 402, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!575 = metadata !{i32 403, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !577, i32 403, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!577 = metadata !{i32 786443, metadata !1, metadata !574, i32 402, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!578 = metadata !{i32 404, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !576, i32 403, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!580 = metadata !{i32 407, i32 0, metadata !577, null}
!581 = metadata !{i32 412, i32 0, metadata !175, null}
!582 = metadata !{i32 413, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !276, i32 413, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!584 = metadata !{i32 50}
!585 = metadata !{i32 49}
!586 = metadata !{i32 413, i32 0, metadata !276, null}
!587 = metadata !{i32 413, i32 0, metadata !275, null}
!588 = metadata !{i32 413, i32 0, metadata !274, null}
!589 = metadata !{i32 413, i32 0, metadata !280, null}
!590 = metadata !{i32 413, i32 0, metadata !278, null}
!591 = metadata !{i32 415, i32 0, metadata !175, null}
!592 = metadata !{i32 417, i32 0, metadata !287, null}
!593 = metadata !{i32 419, i32 0, metadata !287, null}
!594 = metadata !{i32 424, i32 0, metadata !285, null}
!595 = metadata !{i32 425, i32 0, metadata !285, null}
!596 = metadata !{i32 426, i32 0, metadata !285, null}
!597 = metadata !{i32 427, i32 0, metadata !284, null}
!598 = metadata !{i32 427, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !284, i32 427, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!600 = metadata !{i32 427, i32 0, metadata !283, null}
!601 = metadata !{i32 427, i32 0, metadata !282, null}
!602 = metadata !{i32 427, i32 0, metadata !291, null}
!603 = metadata !{i32 427, i32 0, metadata !289, null}
!604 = metadata !{i32 428, i32 0, metadata !285, null}
!605 = metadata !{i32 431, i32 0, metadata !286, null}
!606 = metadata !{i32 432, i32 0, metadata !286, null}
!607 = metadata !{i32 433, i32 0, metadata !286, null}
!608 = metadata !{i32 435, i32 0, metadata !286, null}
!609 = metadata !{i32 443, i32 0, metadata !286, null}
!610 = metadata !{i32 436, i32 0, metadata !286, null}
!611 = metadata !{i32 438, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !286, i32 436, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!613 = metadata !{i32 445, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !286, i32 443, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!615 = metadata !{i32 437, i32 0, metadata !612, null}
!616 = metadata !{metadata !"short", metadata !351}
!617 = metadata !{i32 439, i32 0, metadata !612, null}
!618 = metadata !{i32 440, i32 0, metadata !612, null}
!619 = metadata !{i32 444, i32 0, metadata !614, null}
!620 = metadata !{i32 446, i32 0, metadata !614, null}
!621 = metadata !{i32 447, i32 0, metadata !614, null}
!622 = metadata !{i32 454, i32 0, metadata !294, null}
!623 = metadata !{i32 460, i32 0, metadata !293, null}
!624 = metadata !{i32 462, i32 0, metadata !293, null}
!625 = metadata !{i32 464, i32 0, metadata !303, null}
!626 = metadata !{i32 465, i32 0, metadata !303, null}
!627 = metadata !{i32 466, i32 0, metadata !303, null}
!628 = metadata !{i32 474, i32 0, metadata !303, null}
!629 = metadata !{i32 467, i32 0, metadata !302, null}
!630 = metadata !{i32 468, i32 0, metadata !302, null}
!631 = metadata !{i32 469, i32 0, metadata !302, null}
!632 = metadata !{i32 470, i32 0, metadata !302, null}
!633 = metadata !{i32 471, i32 0, metadata !302, null}
!634 = metadata !{i32 472, i32 0, metadata !302, null}
!635 = metadata !{i32 475, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !303, i32 474, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!637 = metadata !{i32 477, i32 0, metadata !303, null}
!638 = metadata !{i32 478, i32 0, metadata !303, null}
!639 = metadata !{i32 480, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !293, i32 478, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!641 = metadata !{i32 481, i32 0, metadata !640, null}
!642 = metadata !{i32 482, i32 0, metadata !640, null}
!643 = metadata !{i32 483, i32 0, metadata !640, null}
!644 = metadata !{i32 484, i32 0, metadata !640, null}
!645 = metadata !{i32 485, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !640, i32 484, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!647 = metadata !{i32 487, i32 0, metadata !640, null}
!648 = metadata !{i32 488, i32 0, metadata !640, null}
!649 = metadata !{i32 489, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !640, i32 488, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!651 = metadata !{i32 490, i32 0, metadata !650, null}
!652 = metadata !{i32 494, i32 0, metadata !640, null}
!653 = metadata !{i32 495, i32 0, metadata !640, null}
!654 = metadata !{i32 496, i32 0, metadata !640, null}
!655 = metadata !{i32 498, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !657, i32 498, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!657 = metadata !{i32 786443, metadata !1, metadata !640, i32 496, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!658 = metadata !{i32 499, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 499, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!660 = metadata !{i32 786443, metadata !1, metadata !656, i32 498, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!661 = metadata !{i32 500, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !659, i32 499, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!663 = metadata !{i32 503, i32 0, metadata !660, null}
!664 = metadata !{i32 510, i32 0, metadata !294, null}
!665 = metadata !{i32 511, i32 0, metadata !294, null}
!666 = metadata !{i32 512, i32 0, metadata !294, null}
!667 = metadata !{i32 513, i32 0, metadata !294, null}
!668 = metadata !{i32 514, i32 0, metadata !294, null}
!669 = metadata !{i32 516, i32 0, metadata !307, null}
!670 = metadata !{i32 516, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !307, i32 516, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!672 = metadata !{i32 516, i32 0, metadata !306, null}
!673 = metadata !{i32 516, i32 0, metadata !305, null}
!674 = metadata !{i32 516, i32 0, metadata !311, null}
!675 = metadata !{i32 516, i32 0, metadata !309, null}
!676 = metadata !{i32 517, i32 0, metadata !294, null}
!677 = metadata !{i32 524, i32 0, metadata !175, null}
!678 = metadata !{i32 528, i32 0, metadata !175, null}
!679 = metadata !{i32 1}
!680 = metadata !{i32 529, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !175, i32 529, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!682 = metadata !{i32 530, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !175, i32 530, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!684 = metadata !{i32 531, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !175, i32 531, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!686 = metadata !{i32 532, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !685, i32 531, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!688 = metadata !{i32 538, i32 0, metadata !175, null}
!689 = metadata !{i32 539, i32 0, metadata !175, null}
!690 = metadata !{i32 540, i32 0, metadata !691, null}
!691 = metadata !{i32 786443, metadata !1, metadata !175, i32 540, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!692 = metadata !{i32 541, i32 0, metadata !175, null}
!693 = metadata !{i32 542, i32 0, metadata !175, null}
!694 = metadata !{i32 544, i32 0, metadata !175, null}
!695 = metadata !{i32 547, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !314, i32 547, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!697 = metadata !{i32 580, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !699, i32 580, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!699 = metadata !{i32 786443, metadata !1, metadata !175, i32 577, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!700 = metadata !{i32 581, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !698, i32 580, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!702 = metadata !{i32 550, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !314, i32 550, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!704 = metadata !{i32 551, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 550, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!706 = metadata !{i32 552, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !708, i32 552, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!708 = metadata !{i32 786443, metadata !1, metadata !705, i32 552, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!709 = metadata !{i32 552, i32 0, metadata !708, null}
!710 = metadata !{i32 553, i32 0, metadata !705, null}
!711 = metadata !{i32 557, i32 0, metadata !314, null}
!712 = metadata !{i32 558, i32 0, metadata !314, null}
!713 = metadata !{i32 559, i32 0, metadata !314, null}
!714 = metadata !{i32 560, i32 0, metadata !313, null}
!715 = metadata !{i32 561, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !313, i32 561, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!717 = metadata !{i32 561, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 561, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!719 = metadata !{i32 562, i32 0, metadata !313, null}
!720 = metadata !{i32 563, i32 0, metadata !313, null}
!721 = metadata !{i32 564, i32 0, metadata !313, null}
!722 = metadata !{i32 567, i32 0, metadata !314, null}
!723 = metadata !{i32 568, i32 0, metadata !314, null}
!724 = metadata !{i32 569, i32 0, metadata !314, null}
!725 = metadata !{i32 570, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !314, i32 569, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!727 = metadata !{i32 571, i32 0, metadata !726, null}
!728 = metadata !{i32 572, i32 0, metadata !726, null}
!729 = metadata !{i32 572, i32 0, metadata !730, null}
!730 = metadata !{i32 786443, metadata !1, metadata !726, i32 572, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!731 = metadata !{i32 573, i32 0, metadata !726, null}
!732 = metadata !{i32 574, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !314, i32 573, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!734 = metadata !{i32 582, i32 0, metadata !701, null}
!735 = metadata !{i32 583, i32 0, metadata !701, null}
!736 = metadata !{i32 586, i32 0, metadata !699, null}
!737 = metadata !{i32 587, i32 0, metadata !699, null}
!738 = metadata !{i32 588, i32 0, metadata !699, null}
!739 = metadata !{i32 589, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !699, i32 588, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!741 = metadata !{i32 590, i32 0, metadata !740, null}
!742 = metadata !{i32 591, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !740, i32 591, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!744 = metadata !{i32 591, i32 0, metadata !740, null}
!745 = metadata !{i32 592, i32 0, metadata !740, null}
!746 = metadata !{i32 593, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !699, i32 592, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!748 = metadata !{i32 604, i32 0, metadata !175, null}
!749 = metadata !{i32 604, i32 0, metadata !316, null}
!750 = metadata !{i32 605, i32 0, metadata !175, null}
!751 = metadata !{i32 606, i32 0, metadata !175, null}
!752 = metadata !{i32 606, i32 0, metadata !319, null}
!753 = metadata !{i32 607, i32 0, metadata !175, null}
!754 = metadata !{i32 608, i32 0, metadata !175, null}
!755 = metadata !{i32 608, i32 0, metadata !322, null}
!756 = metadata !{i32 609, i32 0, metadata !175, null}
!757 = metadata !{i32 610, i32 0, metadata !175, null}
!758 = metadata !{i32 610, i32 0, metadata !325, null}
!759 = metadata !{i32 611, i32 0, metadata !175, null}
!760 = metadata !{i32 612, i32 0, metadata !175, null}
!761 = metadata !{i32 612, i32 0, metadata !328, null}
!762 = metadata !{i32 613, i32 0, metadata !175, null}
!763 = metadata !{i32 615, i32 0, metadata !175, null}
!764 = metadata !{i32 616, i32 0, metadata !175, null}
!765 = metadata !{i32 616, i32 0, metadata !331, null}
!766 = metadata !{i32 617, i32 0, metadata !175, null}
!767 = metadata !{i32 618, i32 0, metadata !175, null}
!768 = metadata !{i32 618, i32 0, metadata !334, null}
!769 = metadata !{i32 619, i32 0, metadata !175, null}
!770 = metadata !{i32 620, i32 0, metadata !175, null}
!771 = metadata !{i32 620, i32 0, metadata !337, null}
!772 = metadata !{i32 621, i32 0, metadata !175, null}
!773 = metadata !{i32 622, i32 0, metadata !175, null}
!774 = metadata !{i32 622, i32 0, metadata !340, null}
!775 = metadata !{i32 623, i32 0, metadata !175, null}
!776 = metadata !{i32 625, i32 0, metadata !175, null}
!777 = metadata !{i32 4}
!778 = metadata !{i32 626, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !175, i32 626, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!780 = metadata !{i32 628, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !175, i32 628, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!782 = metadata !{i32 631, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !4, i32 631, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/decompress.c]
!784 = metadata !{i32 635, i32 0, metadata !4, null}
!785 = metadata !{i32 636, i32 0, metadata !4, null}
!786 = metadata !{i32 637, i32 0, metadata !4, null}
!787 = metadata !{i32 638, i32 0, metadata !4, null}
!788 = metadata !{i32 639, i32 0, metadata !4, null}
!789 = metadata !{i32 640, i32 0, metadata !4, null}
!790 = metadata !{i32 641, i32 0, metadata !4, null}
!791 = metadata !{i32 642, i32 0, metadata !4, null}
!792 = metadata !{i32 643, i32 0, metadata !4, null}
!793 = metadata !{i32 644, i32 0, metadata !4, null}
!794 = metadata !{i32 645, i32 0, metadata !4, null}
!795 = metadata !{i32 646, i32 0, metadata !4, null}
!796 = metadata !{i32 647, i32 0, metadata !4, null}
!797 = metadata !{i32 648, i32 0, metadata !4, null}
!798 = metadata !{i32 649, i32 0, metadata !4, null}
!799 = metadata !{i32 650, i32 0, metadata !4, null}
!800 = metadata !{i32 651, i32 0, metadata !4, null}
!801 = metadata !{i32 652, i32 0, metadata !4, null}
!802 = metadata !{i32 653, i32 0, metadata !4, null}
!803 = metadata !{i32 654, i32 0, metadata !4, null}
!804 = metadata !{i32 655, i32 0, metadata !4, null}
!805 = metadata !{i32 656, i32 0, metadata !4, null}
!806 = metadata !{i32 657, i32 0, metadata !4, null}
!807 = metadata !{i32 658, i32 0, metadata !4, null}
!808 = metadata !{i32 660, i32 0, metadata !4, null}
