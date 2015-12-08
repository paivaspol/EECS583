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
  %strm1 = getelementptr inbounds %struct.DState* %s, i64 0, i32 0
  %0 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %state = getelementptr inbounds %struct.DState* %s, i64 0, i32 1
  %1 = load i32* %state, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 10
  %save_i = getelementptr inbounds %struct.DState* %s, i64 0, i32 40
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre5254 = load i32* %save_i, align 4, !tbaa !3
  %save_j3.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 41
  %.pre5255 = load i32* %save_j3.phi.trans.insert, align 4, !tbaa !3
  %save_t4.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 42
  %.pre5256 = load i32* %save_t4.phi.trans.insert, align 4, !tbaa !3
  %save_alphaSize5.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 43
  %.pre5257 = load i32* %save_alphaSize5.phi.trans.insert, align 4, !tbaa !3
  %save_nGroups6.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 44
  %.pre5258 = load i32* %save_nGroups6.phi.trans.insert, align 4, !tbaa !3
  %save_nSelectors7.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 45
  %.pre5259 = load i32* %save_nSelectors7.phi.trans.insert, align 4, !tbaa !3
  %save_EOB8.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 46
  %.pre5260 = load i32* %save_EOB8.phi.trans.insert, align 4, !tbaa !3
  %save_groupNo9.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 47
  %.pre5261 = load i32* %save_groupNo9.phi.trans.insert, align 4, !tbaa !3
  %save_groupPos10.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 48
  %.pre5262 = load i32* %save_groupPos10.phi.trans.insert, align 4, !tbaa !3
  %save_nextSym11.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 49
  %.pre5263 = load i32* %save_nextSym11.phi.trans.insert, align 4, !tbaa !3
  %save_nblockMAX12.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 50
  %.pre5264 = load i32* %save_nblockMAX12.phi.trans.insert, align 4, !tbaa !3
  %save_nblock13.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 51
  %.pre5265 = load i32* %save_nblock13.phi.trans.insert, align 4, !tbaa !3
  %save_es14.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 52
  %.pre5266 = load i32* %save_es14.phi.trans.insert, align 4, !tbaa !3
  %save_N15.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 53
  %.pre5267 = load i32* %save_N15.phi.trans.insert, align 4, !tbaa !3
  %save_curr16.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 54
  %.pre5268 = load i32* %save_curr16.phi.trans.insert, align 4, !tbaa !3
  %save_zt17.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 55
  %.pre5269 = load i32* %save_zt17.phi.trans.insert, align 4, !tbaa !3
  %save_zn18.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 56
  %.pre5270 = load i32* %save_zn18.phi.trans.insert, align 4, !tbaa !3
  %save_zvec19.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 57
  %.pre5271 = load i32* %save_zvec19.phi.trans.insert, align 4, !tbaa !3
  %save_zj20.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 58
  %.pre5272 = load i32* %save_zj20.phi.trans.insert, align 4, !tbaa !3
  %save_gSel21.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 59
  %.pre5273 = load i32* %save_gSel21.phi.trans.insert, align 4, !tbaa !3
  %save_gMinlen22.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 60
  %.pre5274 = load i32* %save_gMinlen22.phi.trans.insert, align 4, !tbaa !3
  %save_gLimit23.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 61
  %.pre5275 = load i32** %save_gLimit23.phi.trans.insert, align 8, !tbaa !0
  %save_gBase24.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 62
  %.pre5276 = load i32** %save_gBase24.phi.trans.insert, align 8, !tbaa !0
  %save_gPerm25.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 63
  %.pre5277 = load i32** %save_gPerm25.phi.trans.insert, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %save_i to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 108, i32 4, i1 false)
  br label %if.end

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
  %save_i2 = getelementptr inbounds %struct.DState* %s, i64 0, i32 40
  %save_j3 = getelementptr inbounds %struct.DState* %s, i64 0, i32 41
  %save_t4 = getelementptr inbounds %struct.DState* %s, i64 0, i32 42
  %save_alphaSize5 = getelementptr inbounds %struct.DState* %s, i64 0, i32 43
  %save_nGroups6 = getelementptr inbounds %struct.DState* %s, i64 0, i32 44
  %save_nSelectors7 = getelementptr inbounds %struct.DState* %s, i64 0, i32 45
  %save_EOB8 = getelementptr inbounds %struct.DState* %s, i64 0, i32 46
  %save_groupNo9 = getelementptr inbounds %struct.DState* %s, i64 0, i32 47
  %save_groupPos10 = getelementptr inbounds %struct.DState* %s, i64 0, i32 48
  %save_nextSym11 = getelementptr inbounds %struct.DState* %s, i64 0, i32 49
  %save_nblockMAX12 = getelementptr inbounds %struct.DState* %s, i64 0, i32 50
  %save_nblock13 = getelementptr inbounds %struct.DState* %s, i64 0, i32 51
  %save_es14 = getelementptr inbounds %struct.DState* %s, i64 0, i32 52
  %save_N15 = getelementptr inbounds %struct.DState* %s, i64 0, i32 53
  %save_curr16 = getelementptr inbounds %struct.DState* %s, i64 0, i32 54
  %save_zt17 = getelementptr inbounds %struct.DState* %s, i64 0, i32 55
  %save_zn18 = getelementptr inbounds %struct.DState* %s, i64 0, i32 56
  %save_zvec19 = getelementptr inbounds %struct.DState* %s, i64 0, i32 57
  %save_zj20 = getelementptr inbounds %struct.DState* %s, i64 0, i32 58
  %save_gSel21 = getelementptr inbounds %struct.DState* %s, i64 0, i32 59
  %save_gMinlen22 = getelementptr inbounds %struct.DState* %s, i64 0, i32 60
  %save_gLimit23 = getelementptr inbounds %struct.DState* %s, i64 0, i32 61
  %save_gBase24 = getelementptr inbounds %struct.DState* %s, i64 0, i32 62
  %save_gPerm25 = getelementptr inbounds %struct.DState* %s, i64 0, i32 63
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
  ]

if.end.sw.bb272_crit_edge:                        ; preds = %if.end
  %bsLive275.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %sw.bb272

if.end.sw.bb62_crit_edge:                         ; preds = %if.end
  %bsLive65.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5279 = load i32* %bsLive65.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb62

if.end.sw.bb118_crit_edge:                        ; preds = %if.end
  %bsLive121.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5281 = load i32* %bsLive121.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb118

if.end.sw.bb174_crit_edge:                        ; preds = %if.end
  %bsLive177.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5283 = load i32* %bsLive177.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb174

if.end.sw.bb2942_crit_edge:                       ; preds = %if.end
  %bsLive2946.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5286 = load i32* %bsLive2946.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb2942

if.end.sw.bb3000_crit_edge:                       ; preds = %if.end
  %bsLive3004.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5288 = load i32* %bsLive3004.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3000

if.end.sw.bb3058_crit_edge:                       ; preds = %if.end
  %bsLive3062.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5290 = load i32* %bsLive3062.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3058

if.end.sw.bb3116_crit_edge:                       ; preds = %if.end
  %bsLive3120.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5292 = load i32* %bsLive3120.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3116

if.end.sw.bb3174_crit_edge:                       ; preds = %if.end
  %bsLive3178.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5294 = load i32* %bsLive3178.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3174

if.end.sw.bb3232_crit_edge:                       ; preds = %if.end
  %bsLive3236.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5296 = load i32* %bsLive3236.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3232

if.end.sw.bb3290_crit_edge:                       ; preds = %if.end
  %bsLive3294.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5298 = load i32* %bsLive3294.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3290

if.end.sw.bb3348_crit_edge:                       ; preds = %if.end
  %bsLive3352.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5300 = load i32* %bsLive3352.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3348

if.end.sw.bb3406_crit_edge:                       ; preds = %if.end
  %bsLive3410.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5302 = load i32* %bsLive3410.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb3406

if.end.sw.bb333_crit_edge:                        ; preds = %if.end
  %bsLive336.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5304 = load i32* %bsLive336.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb333

if.end.sw.bb389_crit_edge:                        ; preds = %if.end
  %bsLive392.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5306 = load i32* %bsLive392.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb389

if.end.sw.bb445_crit_edge:                        ; preds = %if.end
  %bsLive448.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5308 = load i32* %bsLive448.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb445

if.end.sw.bb501_crit_edge:                        ; preds = %if.end
  %bsLive504.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5310 = load i32* %bsLive504.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb501

if.end.sw.bb557_crit_edge:                        ; preds = %if.end
  %bsLive560.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5312 = load i32* %bsLive560.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb557

if.end.sw.bb620_crit_edge:                        ; preds = %if.end
  %bsLive623.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %sw.bb620

if.end.sw.bb676_crit_edge:                        ; preds = %if.end
  %bsLive679.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5315 = load i32* %bsLive679.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb676

if.end.sw.bb732_crit_edge:                        ; preds = %if.end
  %bsLive735.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5317 = load i32* %bsLive735.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb732

if.end.sw.bb788_crit_edge:                        ; preds = %if.end
  %bsLive791.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5319 = load i32* %bsLive791.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb788

if.end.sw.bb844_crit_edge:                        ; preds = %if.end
  %bsLive847.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5321 = load i32* %bsLive847.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb844

if.end.sw.bb895_crit_edge:                        ; preds = %if.end
  %bsLive898.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5323 = load i32* %bsLive898.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb895

if.end.sw.bb951_crit_edge:                        ; preds = %if.end
  %bsLive954.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5325 = load i32* %bsLive954.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb951

if.end.sw.bb1007_crit_edge:                       ; preds = %if.end
  %bsLive1010.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5327 = load i32* %bsLive1010.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb1007

if.end.sw.bb1292_crit_edge:                       ; preds = %if.end
  %bsLive1295.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5332 = load i32* %bsLive1295.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb1292

if.end.sw.bb1586_crit_edge:                       ; preds = %if.end
  %bsLive1590.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5336 = load i32* %bsLive1590.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb1586

if.end.sw.bb1855_crit_edge:                       ; preds = %if.end
  %bsLive1859.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5339 = load i32* %bsLive1859.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb1855

if.end.sw.bb2050_crit_edge:                       ; preds = %if.end
  %bsLive2054.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5345 = load i32* %bsLive2054.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb2050

if.end.sw.bb2476_crit_edge:                       ; preds = %if.end
  %bsLive2480.phi.trans.insert = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre5348 = load i32* %bsLive2480.phi.trans.insert, align 4, !tbaa !3
  br label %sw.bb2476

sw.bb:                                            ; preds = %if.end
  store i32 10, i32* %state, align 4, !tbaa !3
  %bsLive = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %27 = load i32* %bsLive, align 4, !tbaa !3
  %cmp285086 = icmp sgt i32 %27, 7
  %bsBuff.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp285086, label %if.then29, label %if.end33.lr.ph

if.end33.lr.ph:                                   ; preds = %sw.bb
  %avail_in.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 1
  %.pre5278 = load i32* %avail_in.phi.trans.insert, align 4, !tbaa !3
  br label %if.end33

if.then29:                                        ; preds = %sw.bb, %while.body.backedge
  %28 = phi %struct.bz_stream* [ %36, %while.body.backedge ], [ %0, %sw.bb ]
  %.lcssa5084 = phi i32 [ %40, %while.body.backedge ], [ %27, %sw.bb ]
  %29 = load i32* %bsBuff.pre, align 4, !tbaa !3
  %sub = add nsw i32 %.lcssa5084, -8
  %shr = lshr i32 %29, %sub
  store i32 %sub, i32* %bsLive, align 4, !tbaa !3
  %conv57 = and i32 %shr, 255
  %cmp58 = icmp eq i32 %conv57, 66
  br i1 %cmp58, label %sw.bb62, label %save_state_and_return

if.end33:                                         ; preds = %if.end33.lr.ph, %while.body.backedge
  %30 = phi i32 [ %.pre5278, %if.end33.lr.ph ], [ %dec, %while.body.backedge ]
  %31 = phi i32 [ %27, %if.end33.lr.ph ], [ %40, %while.body.backedge ]
  %32 = phi %struct.bz_stream* [ %0, %if.end33.lr.ph ], [ %36, %while.body.backedge ]
  %cmp35 = icmp eq i32 %30, 0
  br i1 %cmp35, label %save_state_and_return, label %if.end38

if.end38:                                         ; preds = %if.end33
  %33 = load i32* %bsBuff.pre, align 4, !tbaa !3
  %shl = shl i32 %33, 8
  %next_in = getelementptr inbounds %struct.bz_stream* %32, i64 0, i32 0
  %34 = load i8** %next_in, align 8, !tbaa !0
  %35 = load i8* %34, align 1, !tbaa !1
  %conv41 = zext i8 %35 to i32
  %or = or i32 %conv41, %shl
  store i32 %or, i32* %bsBuff.pre, align 4, !tbaa !3
  %add = add nsw i32 %31, 8
  store i32 %add, i32* %bsLive, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds i8* %34, i64 1
  store i8* %incdec.ptr, i8** %next_in, align 8, !tbaa !0
  %36 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in47 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 1
  %37 = load i32* %avail_in47, align 4, !tbaa !3
  %dec = add i32 %37, -1
  store i32 %dec, i32* %avail_in47, align 4, !tbaa !3
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 2
  %38 = load i32* %total_in_lo32, align 4, !tbaa !3
  %inc = add i32 %38, 1
  store i32 %inc, i32* %total_in_lo32, align 4, !tbaa !3
  %cmp51 = icmp eq i32 %inc, 0
  br i1 %cmp51, label %if.then53, label %while.body.backedge

if.then53:                                        ; preds = %if.end38
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 3
  %39 = load i32* %total_in_hi32, align 4, !tbaa !3
  %inc55 = add i32 %39, 1
  store i32 %inc55, i32* %total_in_hi32, align 4, !tbaa !3
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then53, %if.end38
  %40 = load i32* %bsLive, align 4, !tbaa !3
  %cmp28 = icmp sgt i32 %40, 7
  br i1 %cmp28, label %if.then29, label %if.end33

sw.bb62:                                          ; preds = %if.end.sw.bb62_crit_edge, %if.then29
  %41 = phi i32 [ %sub, %if.then29 ], [ %.pre5279, %if.end.sw.bb62_crit_edge ]
  %42 = phi %struct.bz_stream* [ %28, %if.then29 ], [ %0, %if.end.sw.bb62_crit_edge ]
  store i32 11, i32* %state, align 4, !tbaa !3
  %bsLive65 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp665079 = icmp sgt i32 %41, 7
  %bsBuff70.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp665079, label %if.then68, label %if.end78.lr.ph

if.end78.lr.ph:                                   ; preds = %sw.bb62
  %avail_in80.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %42, i64 0, i32 1
  %.pre5280 = load i32* %avail_in80.phi.trans.insert, align 4, !tbaa !3
  br label %if.end78

if.then68:                                        ; preds = %sw.bb62, %while.body64.backedge
  %43 = phi %struct.bz_stream* [ %51, %while.body64.backedge ], [ %42, %sw.bb62 ]
  %.lcssa5077 = phi i32 [ %55, %while.body64.backedge ], [ %41, %sw.bb62 ]
  %44 = load i32* %bsBuff70.pre, align 4, !tbaa !3
  %sub72 = add nsw i32 %.lcssa5077, -8
  %shr73 = lshr i32 %44, %sub72
  store i32 %sub72, i32* %bsLive65, align 4, !tbaa !3
  %conv113 = and i32 %shr73, 255
  %cmp114 = icmp eq i32 %conv113, 90
  br i1 %cmp114, label %sw.bb118, label %save_state_and_return

if.end78:                                         ; preds = %if.end78.lr.ph, %while.body64.backedge
  %45 = phi i32 [ %.pre5280, %if.end78.lr.ph ], [ %dec99, %while.body64.backedge ]
  %46 = phi i32 [ %41, %if.end78.lr.ph ], [ %55, %while.body64.backedge ]
  %47 = phi %struct.bz_stream* [ %42, %if.end78.lr.ph ], [ %51, %while.body64.backedge ]
  %cmp81 = icmp eq i32 %45, 0
  br i1 %cmp81, label %save_state_and_return, label %if.end84

if.end84:                                         ; preds = %if.end78
  %48 = load i32* %bsBuff70.pre, align 4, !tbaa !3
  %shl86 = shl i32 %48, 8
  %next_in88 = getelementptr inbounds %struct.bz_stream* %47, i64 0, i32 0
  %49 = load i8** %next_in88, align 8, !tbaa !0
  %50 = load i8* %49, align 1, !tbaa !1
  %conv89 = zext i8 %50 to i32
  %or90 = or i32 %conv89, %shl86
  store i32 %or90, i32* %bsBuff70.pre, align 4, !tbaa !3
  %add93 = add nsw i32 %46, 8
  store i32 %add93, i32* %bsLive65, align 4, !tbaa !3
  %incdec.ptr96 = getelementptr inbounds i8* %49, i64 1
  store i8* %incdec.ptr96, i8** %next_in88, align 8, !tbaa !0
  %51 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in98 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 1
  %52 = load i32* %avail_in98, align 4, !tbaa !3
  %dec99 = add i32 %52, -1
  store i32 %dec99, i32* %avail_in98, align 4, !tbaa !3
  %total_in_lo32101 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 2
  %53 = load i32* %total_in_lo32101, align 4, !tbaa !3
  %inc102 = add i32 %53, 1
  store i32 %inc102, i32* %total_in_lo32101, align 4, !tbaa !3
  %cmp105 = icmp eq i32 %inc102, 0
  br i1 %cmp105, label %if.then107, label %while.body64.backedge

if.then107:                                       ; preds = %if.end84
  %total_in_hi32109 = getelementptr inbounds %struct.bz_stream* %51, i64 0, i32 3
  %54 = load i32* %total_in_hi32109, align 4, !tbaa !3
  %inc110 = add i32 %54, 1
  store i32 %inc110, i32* %total_in_hi32109, align 4, !tbaa !3
  br label %while.body64.backedge

while.body64.backedge:                            ; preds = %if.then107, %if.end84
  %55 = load i32* %bsLive65, align 4, !tbaa !3
  %cmp66 = icmp sgt i32 %55, 7
  br i1 %cmp66, label %if.then68, label %if.end78

sw.bb118:                                         ; preds = %if.end.sw.bb118_crit_edge, %if.then68
  %56 = phi i32 [ %sub72, %if.then68 ], [ %.pre5281, %if.end.sw.bb118_crit_edge ]
  %57 = phi %struct.bz_stream* [ %43, %if.then68 ], [ %0, %if.end.sw.bb118_crit_edge ]
  store i32 12, i32* %state, align 4, !tbaa !3
  %bsLive121 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp1225072 = icmp sgt i32 %56, 7
  %bsBuff126.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp1225072, label %if.then124, label %if.end134.lr.ph

if.end134.lr.ph:                                  ; preds = %sw.bb118
  %avail_in136.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %57, i64 0, i32 1
  %.pre5282 = load i32* %avail_in136.phi.trans.insert, align 4, !tbaa !3
  br label %if.end134

if.then124:                                       ; preds = %sw.bb118, %while.body120.backedge
  %58 = phi %struct.bz_stream* [ %66, %while.body120.backedge ], [ %57, %sw.bb118 ]
  %.lcssa5070 = phi i32 [ %70, %while.body120.backedge ], [ %56, %sw.bb118 ]
  %59 = load i32* %bsBuff126.pre, align 4, !tbaa !3
  %sub128 = add nsw i32 %.lcssa5070, -8
  %shr129 = lshr i32 %59, %sub128
  store i32 %sub128, i32* %bsLive121, align 4, !tbaa !3
  %conv169 = and i32 %shr129, 255
  %cmp170 = icmp eq i32 %conv169, 104
  br i1 %cmp170, label %sw.bb174, label %save_state_and_return

if.end134:                                        ; preds = %if.end134.lr.ph, %while.body120.backedge
  %60 = phi i32 [ %.pre5282, %if.end134.lr.ph ], [ %dec155, %while.body120.backedge ]
  %61 = phi i32 [ %56, %if.end134.lr.ph ], [ %70, %while.body120.backedge ]
  %62 = phi %struct.bz_stream* [ %57, %if.end134.lr.ph ], [ %66, %while.body120.backedge ]
  %cmp137 = icmp eq i32 %60, 0
  br i1 %cmp137, label %save_state_and_return, label %if.end140

if.end140:                                        ; preds = %if.end134
  %63 = load i32* %bsBuff126.pre, align 4, !tbaa !3
  %shl142 = shl i32 %63, 8
  %next_in144 = getelementptr inbounds %struct.bz_stream* %62, i64 0, i32 0
  %64 = load i8** %next_in144, align 8, !tbaa !0
  %65 = load i8* %64, align 1, !tbaa !1
  %conv145 = zext i8 %65 to i32
  %or146 = or i32 %conv145, %shl142
  store i32 %or146, i32* %bsBuff126.pre, align 4, !tbaa !3
  %add149 = add nsw i32 %61, 8
  store i32 %add149, i32* %bsLive121, align 4, !tbaa !3
  %incdec.ptr152 = getelementptr inbounds i8* %64, i64 1
  store i8* %incdec.ptr152, i8** %next_in144, align 8, !tbaa !0
  %66 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in154 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 1
  %67 = load i32* %avail_in154, align 4, !tbaa !3
  %dec155 = add i32 %67, -1
  store i32 %dec155, i32* %avail_in154, align 4, !tbaa !3
  %total_in_lo32157 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 2
  %68 = load i32* %total_in_lo32157, align 4, !tbaa !3
  %inc158 = add i32 %68, 1
  store i32 %inc158, i32* %total_in_lo32157, align 4, !tbaa !3
  %cmp161 = icmp eq i32 %inc158, 0
  br i1 %cmp161, label %if.then163, label %while.body120.backedge

if.then163:                                       ; preds = %if.end140
  %total_in_hi32165 = getelementptr inbounds %struct.bz_stream* %66, i64 0, i32 3
  %69 = load i32* %total_in_hi32165, align 4, !tbaa !3
  %inc166 = add i32 %69, 1
  store i32 %inc166, i32* %total_in_hi32165, align 4, !tbaa !3
  br label %while.body120.backedge

while.body120.backedge:                           ; preds = %if.then163, %if.end140
  %70 = load i32* %bsLive121, align 4, !tbaa !3
  %cmp122 = icmp sgt i32 %70, 7
  br i1 %cmp122, label %if.then124, label %if.end134

sw.bb174:                                         ; preds = %if.end.sw.bb174_crit_edge, %if.then124
  %71 = phi i32 [ %sub128, %if.then124 ], [ %.pre5283, %if.end.sw.bb174_crit_edge ]
  %72 = phi %struct.bz_stream* [ %58, %if.then124 ], [ %0, %if.end.sw.bb174_crit_edge ]
  store i32 13, i32* %state, align 4, !tbaa !3
  %bsLive177 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp1785065 = icmp sgt i32 %71, 7
  %bsBuff182.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp1785065, label %if.then180, label %if.end189.lr.ph

if.end189.lr.ph:                                  ; preds = %sw.bb174
  %avail_in191.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %72, i64 0, i32 1
  %.pre5284 = load i32* %avail_in191.phi.trans.insert, align 4, !tbaa !3
  br label %if.end189

if.then180:                                       ; preds = %sw.bb174, %while.body176.backedge
  %.lcssa5063 = phi i32 [ %85, %while.body176.backedge ], [ %71, %sw.bb174 ]
  %73 = load i32* %bsBuff182.pre, align 4, !tbaa !3
  %sub184 = add nsw i32 %.lcssa5063, -8
  %shr185 = lshr i32 %73, %sub184
  %and186 = and i32 %shr185, 255
  store i32 %sub184, i32* %bsLive177, align 4, !tbaa !3
  %blockSize100k = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  store i32 %and186, i32* %blockSize100k, align 4, !tbaa !3
  %and186.off = add i32 %and186, -49
  %74 = icmp ugt i32 %and186.off, 8
  br i1 %74, label %save_state_and_return, label %if.end231

if.end189:                                        ; preds = %if.end189.lr.ph, %while.body176.backedge
  %75 = phi i32 [ %.pre5284, %if.end189.lr.ph ], [ %dec210, %while.body176.backedge ]
  %76 = phi i32 [ %71, %if.end189.lr.ph ], [ %85, %while.body176.backedge ]
  %77 = phi %struct.bz_stream* [ %72, %if.end189.lr.ph ], [ %81, %while.body176.backedge ]
  %cmp192 = icmp eq i32 %75, 0
  br i1 %cmp192, label %save_state_and_return, label %if.end195

if.end195:                                        ; preds = %if.end189
  %78 = load i32* %bsBuff182.pre, align 4, !tbaa !3
  %shl197 = shl i32 %78, 8
  %next_in199 = getelementptr inbounds %struct.bz_stream* %77, i64 0, i32 0
  %79 = load i8** %next_in199, align 8, !tbaa !0
  %80 = load i8* %79, align 1, !tbaa !1
  %conv200 = zext i8 %80 to i32
  %or201 = or i32 %conv200, %shl197
  store i32 %or201, i32* %bsBuff182.pre, align 4, !tbaa !3
  %add204 = add nsw i32 %76, 8
  store i32 %add204, i32* %bsLive177, align 4, !tbaa !3
  %incdec.ptr207 = getelementptr inbounds i8* %79, i64 1
  store i8* %incdec.ptr207, i8** %next_in199, align 8, !tbaa !0
  %81 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in209 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 1
  %82 = load i32* %avail_in209, align 4, !tbaa !3
  %dec210 = add i32 %82, -1
  store i32 %dec210, i32* %avail_in209, align 4, !tbaa !3
  %total_in_lo32212 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 2
  %83 = load i32* %total_in_lo32212, align 4, !tbaa !3
  %inc213 = add i32 %83, 1
  store i32 %inc213, i32* %total_in_lo32212, align 4, !tbaa !3
  %cmp216 = icmp eq i32 %inc213, 0
  br i1 %cmp216, label %if.then218, label %while.body176.backedge

if.then218:                                       ; preds = %if.end195
  %total_in_hi32220 = getelementptr inbounds %struct.bz_stream* %81, i64 0, i32 3
  %84 = load i32* %total_in_hi32220, align 4, !tbaa !3
  %inc221 = add i32 %84, 1
  store i32 %inc221, i32* %total_in_hi32220, align 4, !tbaa !3
  br label %while.body176.backedge

while.body176.backedge:                           ; preds = %if.then218, %if.end195
  %85 = load i32* %bsLive177, align 4, !tbaa !3
  %cmp178 = icmp sgt i32 %85, 7
  br i1 %cmp178, label %if.then180, label %if.end189

if.end231:                                        ; preds = %if.then180
  %sub233 = add nsw i32 %and186, -48
  store i32 %sub233, i32* %blockSize100k, align 4, !tbaa !3
  %smallDecompress = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %86 = load i8* %smallDecompress, align 1, !tbaa !1
  %tobool = icmp eq i8 %86, 0
  %bzalloc = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 9
  %87 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %opaque = getelementptr inbounds %struct.bz_stream* %0, i64 0, i32 11
  %88 = load i8** %opaque, align 8, !tbaa !0
  br i1 %tobool, label %if.else, label %if.then234

if.then234:                                       ; preds = %if.end231
  %mul237 = mul i32 %sub233, 200000
  %call = call i8* %87(i8* %88, i32 %mul237, i32 1) #4
  %89 = bitcast i8* %call to i16*
  %ll16 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  store i16* %89, i16** %ll16, align 8, !tbaa !0
  %90 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %91 = load i8** %opaque, align 8, !tbaa !0
  %92 = load i32* %blockSize100k, align 4, !tbaa !3
  %mul242 = mul nsw i32 %92, 100000
  %shr244 = ashr exact i32 %mul242, 1
  %call248 = call i8* %90(i8* %91, i32 %shr244, i32 1) #4
  %ll4 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22
  store i8* %call248, i8** %ll4, align 8, !tbaa !0
  %93 = load i16** %ll16, align 8, !tbaa !0
  %cmp250 = icmp eq i16* %93, null
  %cmp254 = icmp eq i8* %call248, null
  %or.cond4731 = or i1 %cmp250, %cmp254
  br i1 %or.cond4731, label %save_state_and_return, label %sw.bb272

if.else:                                          ; preds = %if.end231
  %mul263 = mul i32 %sub233, 400000
  %call265 = call i8* %87(i8* %88, i32 %mul263, i32 1) #4
  %94 = bitcast i8* %call265 to i32*
  %tt = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  store i32* %94, i32** %tt, align 8, !tbaa !0
  %cmp267 = icmp eq i8* %call265, null
  br i1 %cmp267, label %save_state_and_return, label %sw.bb272

sw.bb272:                                         ; preds = %if.end.sw.bb272_crit_edge, %if.then234, %if.else
  %bsLive275.pre-phi = phi i32* [ %bsLive275.pre, %if.end.sw.bb272_crit_edge ], [ %bsLive177, %if.then234 ], [ %bsLive177, %if.else ]
  store i32 14, i32* %state, align 4, !tbaa !3
  %95 = load i32* %bsLive275.pre-phi, align 4, !tbaa !3
  %cmp2765058 = icmp sgt i32 %95, 7
  %bsBuff280.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp2765058, label %if.then278, label %if.end288.lr.ph

if.end288.lr.ph:                                  ; preds = %sw.bb272
  %.pre = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in290.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre, i64 0, i32 1
  %.pre5285 = load i32* %avail_in290.phi.trans.insert, align 4, !tbaa !3
  br label %if.end288

if.then278:                                       ; preds = %sw.bb272, %while.body274.backedge
  %.lcssa5056 = phi i32 [ %107, %while.body274.backedge ], [ %95, %sw.bb272 ]
  %96 = load i32* %bsBuff280.pre, align 4, !tbaa !3
  %sub282 = add nsw i32 %.lcssa5056, -8
  %shr283 = lshr i32 %96, %sub282
  store i32 %sub282, i32* %bsLive275.pre-phi, align 4, !tbaa !3
  %conv323 = and i32 %shr283, 255
  switch i32 %conv323, label %save_state_and_return [
    i32 23, label %sw.bb2942
    i32 49, label %sw.bb333
  ]

if.end288:                                        ; preds = %if.end288.lr.ph, %while.body274.backedge
  %97 = phi i32 [ %.pre5285, %if.end288.lr.ph ], [ %dec309, %while.body274.backedge ]
  %98 = phi i32 [ %95, %if.end288.lr.ph ], [ %107, %while.body274.backedge ]
  %99 = phi %struct.bz_stream* [ %.pre, %if.end288.lr.ph ], [ %103, %while.body274.backedge ]
  %cmp291 = icmp eq i32 %97, 0
  br i1 %cmp291, label %save_state_and_return, label %if.end294

if.end294:                                        ; preds = %if.end288
  %100 = load i32* %bsBuff280.pre, align 4, !tbaa !3
  %shl296 = shl i32 %100, 8
  %next_in298 = getelementptr inbounds %struct.bz_stream* %99, i64 0, i32 0
  %101 = load i8** %next_in298, align 8, !tbaa !0
  %102 = load i8* %101, align 1, !tbaa !1
  %conv299 = zext i8 %102 to i32
  %or300 = or i32 %conv299, %shl296
  store i32 %or300, i32* %bsBuff280.pre, align 4, !tbaa !3
  %add303 = add nsw i32 %98, 8
  store i32 %add303, i32* %bsLive275.pre-phi, align 4, !tbaa !3
  %incdec.ptr306 = getelementptr inbounds i8* %101, i64 1
  store i8* %incdec.ptr306, i8** %next_in298, align 8, !tbaa !0
  %103 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in308 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 1
  %104 = load i32* %avail_in308, align 4, !tbaa !3
  %dec309 = add i32 %104, -1
  store i32 %dec309, i32* %avail_in308, align 4, !tbaa !3
  %total_in_lo32311 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 2
  %105 = load i32* %total_in_lo32311, align 4, !tbaa !3
  %inc312 = add i32 %105, 1
  store i32 %inc312, i32* %total_in_lo32311, align 4, !tbaa !3
  %cmp315 = icmp eq i32 %inc312, 0
  br i1 %cmp315, label %if.then317, label %while.body274.backedge

if.then317:                                       ; preds = %if.end294
  %total_in_hi32319 = getelementptr inbounds %struct.bz_stream* %103, i64 0, i32 3
  %106 = load i32* %total_in_hi32319, align 4, !tbaa !3
  %inc320 = add i32 %106, 1
  store i32 %inc320, i32* %total_in_hi32319, align 4, !tbaa !3
  br label %while.body274.backedge

while.body274.backedge:                           ; preds = %if.then317, %if.end294
  %107 = load i32* %bsLive275.pre-phi, align 4, !tbaa !3
  %cmp276 = icmp sgt i32 %107, 7
  br i1 %cmp276, label %if.then278, label %if.end288

sw.bb333:                                         ; preds = %if.end.sw.bb333_crit_edge, %if.then278
  %108 = phi i32 [ %.pre5304, %if.end.sw.bb333_crit_edge ], [ %sub282, %if.then278 ]
  store i32 15, i32* %state, align 4, !tbaa !3
  %bsLive336 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp3375051 = icmp sgt i32 %108, 7
  %bsBuff341.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp3375051, label %if.then339, label %if.end349.lr.ph

if.end349.lr.ph:                                  ; preds = %sw.bb333
  %.pre5225 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in351.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5225, i64 0, i32 1
  %.pre5305 = load i32* %avail_in351.phi.trans.insert, align 4, !tbaa !3
  br label %if.end349

if.then339:                                       ; preds = %sw.bb333, %while.body335.backedge
  %.lcssa5049 = phi i32 [ %120, %while.body335.backedge ], [ %108, %sw.bb333 ]
  %109 = load i32* %bsBuff341.pre, align 4, !tbaa !3
  %sub343 = add nsw i32 %.lcssa5049, -8
  %shr344 = lshr i32 %109, %sub343
  store i32 %sub343, i32* %bsLive336, align 4, !tbaa !3
  %conv384 = and i32 %shr344, 255
  %cmp385 = icmp eq i32 %conv384, 65
  br i1 %cmp385, label %sw.bb389, label %save_state_and_return

if.end349:                                        ; preds = %if.end349.lr.ph, %while.body335.backedge
  %110 = phi i32 [ %.pre5305, %if.end349.lr.ph ], [ %dec370, %while.body335.backedge ]
  %111 = phi i32 [ %108, %if.end349.lr.ph ], [ %120, %while.body335.backedge ]
  %112 = phi %struct.bz_stream* [ %.pre5225, %if.end349.lr.ph ], [ %116, %while.body335.backedge ]
  %cmp352 = icmp eq i32 %110, 0
  br i1 %cmp352, label %save_state_and_return, label %if.end355

if.end355:                                        ; preds = %if.end349
  %113 = load i32* %bsBuff341.pre, align 4, !tbaa !3
  %shl357 = shl i32 %113, 8
  %next_in359 = getelementptr inbounds %struct.bz_stream* %112, i64 0, i32 0
  %114 = load i8** %next_in359, align 8, !tbaa !0
  %115 = load i8* %114, align 1, !tbaa !1
  %conv360 = zext i8 %115 to i32
  %or361 = or i32 %conv360, %shl357
  store i32 %or361, i32* %bsBuff341.pre, align 4, !tbaa !3
  %add364 = add nsw i32 %111, 8
  store i32 %add364, i32* %bsLive336, align 4, !tbaa !3
  %incdec.ptr367 = getelementptr inbounds i8* %114, i64 1
  store i8* %incdec.ptr367, i8** %next_in359, align 8, !tbaa !0
  %116 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in369 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 1
  %117 = load i32* %avail_in369, align 4, !tbaa !3
  %dec370 = add i32 %117, -1
  store i32 %dec370, i32* %avail_in369, align 4, !tbaa !3
  %total_in_lo32372 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 2
  %118 = load i32* %total_in_lo32372, align 4, !tbaa !3
  %inc373 = add i32 %118, 1
  store i32 %inc373, i32* %total_in_lo32372, align 4, !tbaa !3
  %cmp376 = icmp eq i32 %inc373, 0
  br i1 %cmp376, label %if.then378, label %while.body335.backedge

if.then378:                                       ; preds = %if.end355
  %total_in_hi32380 = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 3
  %119 = load i32* %total_in_hi32380, align 4, !tbaa !3
  %inc381 = add i32 %119, 1
  store i32 %inc381, i32* %total_in_hi32380, align 4, !tbaa !3
  br label %while.body335.backedge

while.body335.backedge:                           ; preds = %if.then378, %if.end355
  %120 = load i32* %bsLive336, align 4, !tbaa !3
  %cmp337 = icmp sgt i32 %120, 7
  br i1 %cmp337, label %if.then339, label %if.end349

sw.bb389:                                         ; preds = %if.end.sw.bb389_crit_edge, %if.then339
  %121 = phi i32 [ %.pre5306, %if.end.sw.bb389_crit_edge ], [ %sub343, %if.then339 ]
  store i32 16, i32* %state, align 4, !tbaa !3
  %bsLive392 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp3935044 = icmp sgt i32 %121, 7
  %bsBuff397.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp3935044, label %if.then395, label %if.end405.lr.ph

if.end405.lr.ph:                                  ; preds = %sw.bb389
  %.pre5226 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in407.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5226, i64 0, i32 1
  %.pre5307 = load i32* %avail_in407.phi.trans.insert, align 4, !tbaa !3
  br label %if.end405

if.then395:                                       ; preds = %sw.bb389, %while.body391.backedge
  %.lcssa5042 = phi i32 [ %133, %while.body391.backedge ], [ %121, %sw.bb389 ]
  %122 = load i32* %bsBuff397.pre, align 4, !tbaa !3
  %sub399 = add nsw i32 %.lcssa5042, -8
  %shr400 = lshr i32 %122, %sub399
  store i32 %sub399, i32* %bsLive392, align 4, !tbaa !3
  %conv440 = and i32 %shr400, 255
  %cmp441 = icmp eq i32 %conv440, 89
  br i1 %cmp441, label %sw.bb445, label %save_state_and_return

if.end405:                                        ; preds = %if.end405.lr.ph, %while.body391.backedge
  %123 = phi i32 [ %.pre5307, %if.end405.lr.ph ], [ %dec426, %while.body391.backedge ]
  %124 = phi i32 [ %121, %if.end405.lr.ph ], [ %133, %while.body391.backedge ]
  %125 = phi %struct.bz_stream* [ %.pre5226, %if.end405.lr.ph ], [ %129, %while.body391.backedge ]
  %cmp408 = icmp eq i32 %123, 0
  br i1 %cmp408, label %save_state_and_return, label %if.end411

if.end411:                                        ; preds = %if.end405
  %126 = load i32* %bsBuff397.pre, align 4, !tbaa !3
  %shl413 = shl i32 %126, 8
  %next_in415 = getelementptr inbounds %struct.bz_stream* %125, i64 0, i32 0
  %127 = load i8** %next_in415, align 8, !tbaa !0
  %128 = load i8* %127, align 1, !tbaa !1
  %conv416 = zext i8 %128 to i32
  %or417 = or i32 %conv416, %shl413
  store i32 %or417, i32* %bsBuff397.pre, align 4, !tbaa !3
  %add420 = add nsw i32 %124, 8
  store i32 %add420, i32* %bsLive392, align 4, !tbaa !3
  %incdec.ptr423 = getelementptr inbounds i8* %127, i64 1
  store i8* %incdec.ptr423, i8** %next_in415, align 8, !tbaa !0
  %129 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in425 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 1
  %130 = load i32* %avail_in425, align 4, !tbaa !3
  %dec426 = add i32 %130, -1
  store i32 %dec426, i32* %avail_in425, align 4, !tbaa !3
  %total_in_lo32428 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 2
  %131 = load i32* %total_in_lo32428, align 4, !tbaa !3
  %inc429 = add i32 %131, 1
  store i32 %inc429, i32* %total_in_lo32428, align 4, !tbaa !3
  %cmp432 = icmp eq i32 %inc429, 0
  br i1 %cmp432, label %if.then434, label %while.body391.backedge

if.then434:                                       ; preds = %if.end411
  %total_in_hi32436 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 3
  %132 = load i32* %total_in_hi32436, align 4, !tbaa !3
  %inc437 = add i32 %132, 1
  store i32 %inc437, i32* %total_in_hi32436, align 4, !tbaa !3
  br label %while.body391.backedge

while.body391.backedge:                           ; preds = %if.then434, %if.end411
  %133 = load i32* %bsLive392, align 4, !tbaa !3
  %cmp393 = icmp sgt i32 %133, 7
  br i1 %cmp393, label %if.then395, label %if.end405

sw.bb445:                                         ; preds = %if.end.sw.bb445_crit_edge, %if.then395
  %134 = phi i32 [ %.pre5308, %if.end.sw.bb445_crit_edge ], [ %sub399, %if.then395 ]
  store i32 17, i32* %state, align 4, !tbaa !3
  %bsLive448 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp4495037 = icmp sgt i32 %134, 7
  %bsBuff453.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp4495037, label %if.then451, label %if.end461.lr.ph

if.end461.lr.ph:                                  ; preds = %sw.bb445
  %.pre5227 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in463.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5227, i64 0, i32 1
  %.pre5309 = load i32* %avail_in463.phi.trans.insert, align 4, !tbaa !3
  br label %if.end461

if.then451:                                       ; preds = %sw.bb445, %while.body447.backedge
  %.lcssa5035 = phi i32 [ %146, %while.body447.backedge ], [ %134, %sw.bb445 ]
  %135 = load i32* %bsBuff453.pre, align 4, !tbaa !3
  %sub455 = add nsw i32 %.lcssa5035, -8
  %shr456 = lshr i32 %135, %sub455
  store i32 %sub455, i32* %bsLive448, align 4, !tbaa !3
  %conv496 = and i32 %shr456, 255
  %cmp497 = icmp eq i32 %conv496, 38
  br i1 %cmp497, label %sw.bb501, label %save_state_and_return

if.end461:                                        ; preds = %if.end461.lr.ph, %while.body447.backedge
  %136 = phi i32 [ %.pre5309, %if.end461.lr.ph ], [ %dec482, %while.body447.backedge ]
  %137 = phi i32 [ %134, %if.end461.lr.ph ], [ %146, %while.body447.backedge ]
  %138 = phi %struct.bz_stream* [ %.pre5227, %if.end461.lr.ph ], [ %142, %while.body447.backedge ]
  %cmp464 = icmp eq i32 %136, 0
  br i1 %cmp464, label %save_state_and_return, label %if.end467

if.end467:                                        ; preds = %if.end461
  %139 = load i32* %bsBuff453.pre, align 4, !tbaa !3
  %shl469 = shl i32 %139, 8
  %next_in471 = getelementptr inbounds %struct.bz_stream* %138, i64 0, i32 0
  %140 = load i8** %next_in471, align 8, !tbaa !0
  %141 = load i8* %140, align 1, !tbaa !1
  %conv472 = zext i8 %141 to i32
  %or473 = or i32 %conv472, %shl469
  store i32 %or473, i32* %bsBuff453.pre, align 4, !tbaa !3
  %add476 = add nsw i32 %137, 8
  store i32 %add476, i32* %bsLive448, align 4, !tbaa !3
  %incdec.ptr479 = getelementptr inbounds i8* %140, i64 1
  store i8* %incdec.ptr479, i8** %next_in471, align 8, !tbaa !0
  %142 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in481 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 1
  %143 = load i32* %avail_in481, align 4, !tbaa !3
  %dec482 = add i32 %143, -1
  store i32 %dec482, i32* %avail_in481, align 4, !tbaa !3
  %total_in_lo32484 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 2
  %144 = load i32* %total_in_lo32484, align 4, !tbaa !3
  %inc485 = add i32 %144, 1
  store i32 %inc485, i32* %total_in_lo32484, align 4, !tbaa !3
  %cmp488 = icmp eq i32 %inc485, 0
  br i1 %cmp488, label %if.then490, label %while.body447.backedge

if.then490:                                       ; preds = %if.end467
  %total_in_hi32492 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 3
  %145 = load i32* %total_in_hi32492, align 4, !tbaa !3
  %inc493 = add i32 %145, 1
  store i32 %inc493, i32* %total_in_hi32492, align 4, !tbaa !3
  br label %while.body447.backedge

while.body447.backedge:                           ; preds = %if.then490, %if.end467
  %146 = load i32* %bsLive448, align 4, !tbaa !3
  %cmp449 = icmp sgt i32 %146, 7
  br i1 %cmp449, label %if.then451, label %if.end461

sw.bb501:                                         ; preds = %if.end.sw.bb501_crit_edge, %if.then451
  %147 = phi i32 [ %.pre5310, %if.end.sw.bb501_crit_edge ], [ %sub455, %if.then451 ]
  store i32 18, i32* %state, align 4, !tbaa !3
  %bsLive504 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp5055030 = icmp sgt i32 %147, 7
  %bsBuff509.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp5055030, label %if.then507, label %if.end517.lr.ph

if.end517.lr.ph:                                  ; preds = %sw.bb501
  %.pre5228 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in519.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5228, i64 0, i32 1
  %.pre5311 = load i32* %avail_in519.phi.trans.insert, align 4, !tbaa !3
  br label %if.end517

if.then507:                                       ; preds = %sw.bb501, %while.body503.backedge
  %.lcssa5028 = phi i32 [ %159, %while.body503.backedge ], [ %147, %sw.bb501 ]
  %148 = load i32* %bsBuff509.pre, align 4, !tbaa !3
  %sub511 = add nsw i32 %.lcssa5028, -8
  %shr512 = lshr i32 %148, %sub511
  store i32 %sub511, i32* %bsLive504, align 4, !tbaa !3
  %conv552 = and i32 %shr512, 255
  %cmp553 = icmp eq i32 %conv552, 83
  br i1 %cmp553, label %sw.bb557, label %save_state_and_return

if.end517:                                        ; preds = %if.end517.lr.ph, %while.body503.backedge
  %149 = phi i32 [ %.pre5311, %if.end517.lr.ph ], [ %dec538, %while.body503.backedge ]
  %150 = phi i32 [ %147, %if.end517.lr.ph ], [ %159, %while.body503.backedge ]
  %151 = phi %struct.bz_stream* [ %.pre5228, %if.end517.lr.ph ], [ %155, %while.body503.backedge ]
  %cmp520 = icmp eq i32 %149, 0
  br i1 %cmp520, label %save_state_and_return, label %if.end523

if.end523:                                        ; preds = %if.end517
  %152 = load i32* %bsBuff509.pre, align 4, !tbaa !3
  %shl525 = shl i32 %152, 8
  %next_in527 = getelementptr inbounds %struct.bz_stream* %151, i64 0, i32 0
  %153 = load i8** %next_in527, align 8, !tbaa !0
  %154 = load i8* %153, align 1, !tbaa !1
  %conv528 = zext i8 %154 to i32
  %or529 = or i32 %conv528, %shl525
  store i32 %or529, i32* %bsBuff509.pre, align 4, !tbaa !3
  %add532 = add nsw i32 %150, 8
  store i32 %add532, i32* %bsLive504, align 4, !tbaa !3
  %incdec.ptr535 = getelementptr inbounds i8* %153, i64 1
  store i8* %incdec.ptr535, i8** %next_in527, align 8, !tbaa !0
  %155 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in537 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 1
  %156 = load i32* %avail_in537, align 4, !tbaa !3
  %dec538 = add i32 %156, -1
  store i32 %dec538, i32* %avail_in537, align 4, !tbaa !3
  %total_in_lo32540 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 2
  %157 = load i32* %total_in_lo32540, align 4, !tbaa !3
  %inc541 = add i32 %157, 1
  store i32 %inc541, i32* %total_in_lo32540, align 4, !tbaa !3
  %cmp544 = icmp eq i32 %inc541, 0
  br i1 %cmp544, label %if.then546, label %while.body503.backedge

if.then546:                                       ; preds = %if.end523
  %total_in_hi32548 = getelementptr inbounds %struct.bz_stream* %155, i64 0, i32 3
  %158 = load i32* %total_in_hi32548, align 4, !tbaa !3
  %inc549 = add i32 %158, 1
  store i32 %inc549, i32* %total_in_hi32548, align 4, !tbaa !3
  br label %while.body503.backedge

while.body503.backedge:                           ; preds = %if.then546, %if.end523
  %159 = load i32* %bsLive504, align 4, !tbaa !3
  %cmp505 = icmp sgt i32 %159, 7
  br i1 %cmp505, label %if.then507, label %if.end517

sw.bb557:                                         ; preds = %if.end.sw.bb557_crit_edge, %if.then507
  %160 = phi i32 [ %.pre5312, %if.end.sw.bb557_crit_edge ], [ %sub511, %if.then507 ]
  store i32 19, i32* %state, align 4, !tbaa !3
  %bsLive560 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp5615023 = icmp sgt i32 %160, 7
  %bsBuff565.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp5615023, label %if.then563, label %if.end573.lr.ph

if.end573.lr.ph:                                  ; preds = %sw.bb557
  %.pre5229 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in575.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5229, i64 0, i32 1
  %.pre5313 = load i32* %avail_in575.phi.trans.insert, align 4, !tbaa !3
  br label %if.end573

if.then563:                                       ; preds = %sw.bb557, %while.body559.backedge
  %.lcssa5021 = phi i32 [ %172, %while.body559.backedge ], [ %160, %sw.bb557 ]
  %161 = load i32* %bsBuff565.pre, align 4, !tbaa !3
  %sub567 = add nsw i32 %.lcssa5021, -8
  %shr568 = lshr i32 %161, %sub567
  store i32 %sub567, i32* %bsLive560, align 4, !tbaa !3
  %conv608 = and i32 %shr568, 255
  %cmp609 = icmp eq i32 %conv608, 89
  br i1 %cmp609, label %if.end612, label %save_state_and_return

if.end573:                                        ; preds = %if.end573.lr.ph, %while.body559.backedge
  %162 = phi i32 [ %.pre5313, %if.end573.lr.ph ], [ %dec594, %while.body559.backedge ]
  %163 = phi i32 [ %160, %if.end573.lr.ph ], [ %172, %while.body559.backedge ]
  %164 = phi %struct.bz_stream* [ %.pre5229, %if.end573.lr.ph ], [ %168, %while.body559.backedge ]
  %cmp576 = icmp eq i32 %162, 0
  br i1 %cmp576, label %save_state_and_return, label %if.end579

if.end579:                                        ; preds = %if.end573
  %165 = load i32* %bsBuff565.pre, align 4, !tbaa !3
  %shl581 = shl i32 %165, 8
  %next_in583 = getelementptr inbounds %struct.bz_stream* %164, i64 0, i32 0
  %166 = load i8** %next_in583, align 8, !tbaa !0
  %167 = load i8* %166, align 1, !tbaa !1
  %conv584 = zext i8 %167 to i32
  %or585 = or i32 %conv584, %shl581
  store i32 %or585, i32* %bsBuff565.pre, align 4, !tbaa !3
  %add588 = add nsw i32 %163, 8
  store i32 %add588, i32* %bsLive560, align 4, !tbaa !3
  %incdec.ptr591 = getelementptr inbounds i8* %166, i64 1
  store i8* %incdec.ptr591, i8** %next_in583, align 8, !tbaa !0
  %168 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in593 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 1
  %169 = load i32* %avail_in593, align 4, !tbaa !3
  %dec594 = add i32 %169, -1
  store i32 %dec594, i32* %avail_in593, align 4, !tbaa !3
  %total_in_lo32596 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 2
  %170 = load i32* %total_in_lo32596, align 4, !tbaa !3
  %inc597 = add i32 %170, 1
  store i32 %inc597, i32* %total_in_lo32596, align 4, !tbaa !3
  %cmp600 = icmp eq i32 %inc597, 0
  br i1 %cmp600, label %if.then602, label %while.body559.backedge

if.then602:                                       ; preds = %if.end579
  %total_in_hi32604 = getelementptr inbounds %struct.bz_stream* %168, i64 0, i32 3
  %171 = load i32* %total_in_hi32604, align 4, !tbaa !3
  %inc605 = add i32 %171, 1
  store i32 %inc605, i32* %total_in_hi32604, align 4, !tbaa !3
  br label %while.body559.backedge

while.body559.backedge:                           ; preds = %if.then602, %if.end579
  %172 = load i32* %bsLive560, align 4, !tbaa !3
  %cmp561 = icmp sgt i32 %172, 7
  br i1 %cmp561, label %if.then563, label %if.end573

if.end612:                                        ; preds = %if.then563
  %currBlockNo = getelementptr inbounds %struct.DState* %s, i64 0, i32 11
  %173 = load i32* %currBlockNo, align 4, !tbaa !3
  %inc613 = add nsw i32 %173, 1
  store i32 %inc613, i32* %currBlockNo, align 4, !tbaa !3
  %verbosity = getelementptr inbounds %struct.DState* %s, i64 0, i32 12
  %174 = load i32* %verbosity, align 4, !tbaa !3
  %cmp614 = icmp sgt i32 %174, 1
  br i1 %cmp614, label %if.then616, label %if.end619

if.then616:                                       ; preds = %if.end612
  %175 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call618 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), i32 %inc613) #4
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end612
  %storedBlockCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  store i32 0, i32* %storedBlockCRC, align 4, !tbaa !3
  br label %sw.bb620

sw.bb620:                                         ; preds = %if.end.sw.bb620_crit_edge, %if.end619
  %bsLive623.pre-phi = phi i32* [ %bsLive623.pre, %if.end.sw.bb620_crit_edge ], [ %bsLive560, %if.end619 ]
  store i32 20, i32* %state, align 4, !tbaa !3
  %176 = load i32* %bsLive623.pre-phi, align 4, !tbaa !3
  %cmp6245016 = icmp sgt i32 %176, 7
  %bsBuff628.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp6245016, label %if.then626, label %if.end636.lr.ph

if.end636.lr.ph:                                  ; preds = %sw.bb620
  %.pre5230 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in638.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5230, i64 0, i32 1
  %.pre5314 = load i32* %avail_in638.phi.trans.insert, align 4, !tbaa !3
  br label %if.end636

if.then626:                                       ; preds = %sw.bb620, %while.body622.backedge
  %.lcssa5014 = phi i32 [ %189, %while.body622.backedge ], [ %176, %sw.bb620 ]
  %177 = load i32* %bsBuff628.pre, align 4, !tbaa !3
  %sub630 = add nsw i32 %.lcssa5014, -8
  %shr631 = lshr i32 %177, %sub630
  store i32 %sub630, i32* %bsLive623.pre-phi, align 4, !tbaa !3
  %storedBlockCRC671 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %178 = load i32* %storedBlockCRC671, align 4, !tbaa !3
  %shl672 = shl i32 %178, 8
  %conv673 = and i32 %shr631, 255
  %or674 = or i32 %shl672, %conv673
  store i32 %or674, i32* %storedBlockCRC671, align 4, !tbaa !3
  br label %sw.bb676

if.end636:                                        ; preds = %if.end636.lr.ph, %while.body622.backedge
  %179 = phi i32 [ %.pre5314, %if.end636.lr.ph ], [ %dec657, %while.body622.backedge ]
  %180 = phi i32 [ %176, %if.end636.lr.ph ], [ %189, %while.body622.backedge ]
  %181 = phi %struct.bz_stream* [ %.pre5230, %if.end636.lr.ph ], [ %185, %while.body622.backedge ]
  %cmp639 = icmp eq i32 %179, 0
  br i1 %cmp639, label %save_state_and_return, label %if.end642

if.end642:                                        ; preds = %if.end636
  %182 = load i32* %bsBuff628.pre, align 4, !tbaa !3
  %shl644 = shl i32 %182, 8
  %next_in646 = getelementptr inbounds %struct.bz_stream* %181, i64 0, i32 0
  %183 = load i8** %next_in646, align 8, !tbaa !0
  %184 = load i8* %183, align 1, !tbaa !1
  %conv647 = zext i8 %184 to i32
  %or648 = or i32 %conv647, %shl644
  store i32 %or648, i32* %bsBuff628.pre, align 4, !tbaa !3
  %add651 = add nsw i32 %180, 8
  store i32 %add651, i32* %bsLive623.pre-phi, align 4, !tbaa !3
  %incdec.ptr654 = getelementptr inbounds i8* %183, i64 1
  store i8* %incdec.ptr654, i8** %next_in646, align 8, !tbaa !0
  %185 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in656 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 1
  %186 = load i32* %avail_in656, align 4, !tbaa !3
  %dec657 = add i32 %186, -1
  store i32 %dec657, i32* %avail_in656, align 4, !tbaa !3
  %total_in_lo32659 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 2
  %187 = load i32* %total_in_lo32659, align 4, !tbaa !3
  %inc660 = add i32 %187, 1
  store i32 %inc660, i32* %total_in_lo32659, align 4, !tbaa !3
  %cmp663 = icmp eq i32 %inc660, 0
  br i1 %cmp663, label %if.then665, label %while.body622.backedge

if.then665:                                       ; preds = %if.end642
  %total_in_hi32667 = getelementptr inbounds %struct.bz_stream* %185, i64 0, i32 3
  %188 = load i32* %total_in_hi32667, align 4, !tbaa !3
  %inc668 = add i32 %188, 1
  store i32 %inc668, i32* %total_in_hi32667, align 4, !tbaa !3
  br label %while.body622.backedge

while.body622.backedge:                           ; preds = %if.then665, %if.end642
  %189 = load i32* %bsLive623.pre-phi, align 4, !tbaa !3
  %cmp624 = icmp sgt i32 %189, 7
  br i1 %cmp624, label %if.then626, label %if.end636

sw.bb676:                                         ; preds = %if.end.sw.bb676_crit_edge, %if.then626
  %190 = phi i32 [ %.pre5315, %if.end.sw.bb676_crit_edge ], [ %sub630, %if.then626 ]
  store i32 21, i32* %state, align 4, !tbaa !3
  %bsLive679 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp6805009 = icmp sgt i32 %190, 7
  %bsBuff684.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp6805009, label %if.then682, label %if.end692.lr.ph

if.end692.lr.ph:                                  ; preds = %sw.bb676
  %.pre5231 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in694.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5231, i64 0, i32 1
  %.pre5316 = load i32* %avail_in694.phi.trans.insert, align 4, !tbaa !3
  br label %if.end692

if.then682:                                       ; preds = %sw.bb676, %while.body678.backedge
  %.lcssa5007 = phi i32 [ %203, %while.body678.backedge ], [ %190, %sw.bb676 ]
  %191 = load i32* %bsBuff684.pre, align 4, !tbaa !3
  %sub686 = add nsw i32 %.lcssa5007, -8
  %shr687 = lshr i32 %191, %sub686
  store i32 %sub686, i32* %bsLive679, align 4, !tbaa !3
  %storedBlockCRC727 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %192 = load i32* %storedBlockCRC727, align 4, !tbaa !3
  %shl728 = shl i32 %192, 8
  %conv729 = and i32 %shr687, 255
  %or730 = or i32 %shl728, %conv729
  store i32 %or730, i32* %storedBlockCRC727, align 4, !tbaa !3
  br label %sw.bb732

if.end692:                                        ; preds = %if.end692.lr.ph, %while.body678.backedge
  %193 = phi i32 [ %.pre5316, %if.end692.lr.ph ], [ %dec713, %while.body678.backedge ]
  %194 = phi i32 [ %190, %if.end692.lr.ph ], [ %203, %while.body678.backedge ]
  %195 = phi %struct.bz_stream* [ %.pre5231, %if.end692.lr.ph ], [ %199, %while.body678.backedge ]
  %cmp695 = icmp eq i32 %193, 0
  br i1 %cmp695, label %save_state_and_return, label %if.end698

if.end698:                                        ; preds = %if.end692
  %196 = load i32* %bsBuff684.pre, align 4, !tbaa !3
  %shl700 = shl i32 %196, 8
  %next_in702 = getelementptr inbounds %struct.bz_stream* %195, i64 0, i32 0
  %197 = load i8** %next_in702, align 8, !tbaa !0
  %198 = load i8* %197, align 1, !tbaa !1
  %conv703 = zext i8 %198 to i32
  %or704 = or i32 %conv703, %shl700
  store i32 %or704, i32* %bsBuff684.pre, align 4, !tbaa !3
  %add707 = add nsw i32 %194, 8
  store i32 %add707, i32* %bsLive679, align 4, !tbaa !3
  %incdec.ptr710 = getelementptr inbounds i8* %197, i64 1
  store i8* %incdec.ptr710, i8** %next_in702, align 8, !tbaa !0
  %199 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in712 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 1
  %200 = load i32* %avail_in712, align 4, !tbaa !3
  %dec713 = add i32 %200, -1
  store i32 %dec713, i32* %avail_in712, align 4, !tbaa !3
  %total_in_lo32715 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 2
  %201 = load i32* %total_in_lo32715, align 4, !tbaa !3
  %inc716 = add i32 %201, 1
  store i32 %inc716, i32* %total_in_lo32715, align 4, !tbaa !3
  %cmp719 = icmp eq i32 %inc716, 0
  br i1 %cmp719, label %if.then721, label %while.body678.backedge

if.then721:                                       ; preds = %if.end698
  %total_in_hi32723 = getelementptr inbounds %struct.bz_stream* %199, i64 0, i32 3
  %202 = load i32* %total_in_hi32723, align 4, !tbaa !3
  %inc724 = add i32 %202, 1
  store i32 %inc724, i32* %total_in_hi32723, align 4, !tbaa !3
  br label %while.body678.backedge

while.body678.backedge:                           ; preds = %if.then721, %if.end698
  %203 = load i32* %bsLive679, align 4, !tbaa !3
  %cmp680 = icmp sgt i32 %203, 7
  br i1 %cmp680, label %if.then682, label %if.end692

sw.bb732:                                         ; preds = %if.end.sw.bb732_crit_edge, %if.then682
  %204 = phi i32 [ %.pre5317, %if.end.sw.bb732_crit_edge ], [ %sub686, %if.then682 ]
  store i32 22, i32* %state, align 4, !tbaa !3
  %bsLive735 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp7365002 = icmp sgt i32 %204, 7
  %bsBuff740.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp7365002, label %if.then738, label %if.end748.lr.ph

if.end748.lr.ph:                                  ; preds = %sw.bb732
  %.pre5232 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in750.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5232, i64 0, i32 1
  %.pre5318 = load i32* %avail_in750.phi.trans.insert, align 4, !tbaa !3
  br label %if.end748

if.then738:                                       ; preds = %sw.bb732, %while.body734.backedge
  %.lcssa5000 = phi i32 [ %217, %while.body734.backedge ], [ %204, %sw.bb732 ]
  %205 = load i32* %bsBuff740.pre, align 4, !tbaa !3
  %sub742 = add nsw i32 %.lcssa5000, -8
  %shr743 = lshr i32 %205, %sub742
  store i32 %sub742, i32* %bsLive735, align 4, !tbaa !3
  %storedBlockCRC783 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %206 = load i32* %storedBlockCRC783, align 4, !tbaa !3
  %shl784 = shl i32 %206, 8
  %conv785 = and i32 %shr743, 255
  %or786 = or i32 %shl784, %conv785
  store i32 %or786, i32* %storedBlockCRC783, align 4, !tbaa !3
  br label %sw.bb788

if.end748:                                        ; preds = %if.end748.lr.ph, %while.body734.backedge
  %207 = phi i32 [ %.pre5318, %if.end748.lr.ph ], [ %dec769, %while.body734.backedge ]
  %208 = phi i32 [ %204, %if.end748.lr.ph ], [ %217, %while.body734.backedge ]
  %209 = phi %struct.bz_stream* [ %.pre5232, %if.end748.lr.ph ], [ %213, %while.body734.backedge ]
  %cmp751 = icmp eq i32 %207, 0
  br i1 %cmp751, label %save_state_and_return, label %if.end754

if.end754:                                        ; preds = %if.end748
  %210 = load i32* %bsBuff740.pre, align 4, !tbaa !3
  %shl756 = shl i32 %210, 8
  %next_in758 = getelementptr inbounds %struct.bz_stream* %209, i64 0, i32 0
  %211 = load i8** %next_in758, align 8, !tbaa !0
  %212 = load i8* %211, align 1, !tbaa !1
  %conv759 = zext i8 %212 to i32
  %or760 = or i32 %conv759, %shl756
  store i32 %or760, i32* %bsBuff740.pre, align 4, !tbaa !3
  %add763 = add nsw i32 %208, 8
  store i32 %add763, i32* %bsLive735, align 4, !tbaa !3
  %incdec.ptr766 = getelementptr inbounds i8* %211, i64 1
  store i8* %incdec.ptr766, i8** %next_in758, align 8, !tbaa !0
  %213 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in768 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 1
  %214 = load i32* %avail_in768, align 4, !tbaa !3
  %dec769 = add i32 %214, -1
  store i32 %dec769, i32* %avail_in768, align 4, !tbaa !3
  %total_in_lo32771 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 2
  %215 = load i32* %total_in_lo32771, align 4, !tbaa !3
  %inc772 = add i32 %215, 1
  store i32 %inc772, i32* %total_in_lo32771, align 4, !tbaa !3
  %cmp775 = icmp eq i32 %inc772, 0
  br i1 %cmp775, label %if.then777, label %while.body734.backedge

if.then777:                                       ; preds = %if.end754
  %total_in_hi32779 = getelementptr inbounds %struct.bz_stream* %213, i64 0, i32 3
  %216 = load i32* %total_in_hi32779, align 4, !tbaa !3
  %inc780 = add i32 %216, 1
  store i32 %inc780, i32* %total_in_hi32779, align 4, !tbaa !3
  br label %while.body734.backedge

while.body734.backedge:                           ; preds = %if.then777, %if.end754
  %217 = load i32* %bsLive735, align 4, !tbaa !3
  %cmp736 = icmp sgt i32 %217, 7
  br i1 %cmp736, label %if.then738, label %if.end748

sw.bb788:                                         ; preds = %if.end.sw.bb788_crit_edge, %if.then738
  %218 = phi i32 [ %.pre5319, %if.end.sw.bb788_crit_edge ], [ %sub742, %if.then738 ]
  store i32 23, i32* %state, align 4, !tbaa !3
  %bsLive791 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp7924995 = icmp sgt i32 %218, 7
  %bsBuff796.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp7924995, label %if.then794, label %if.end804.lr.ph

if.end804.lr.ph:                                  ; preds = %sw.bb788
  %.pre5233 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in806.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5233, i64 0, i32 1
  %.pre5320 = load i32* %avail_in806.phi.trans.insert, align 4, !tbaa !3
  br label %if.end804

if.then794:                                       ; preds = %sw.bb788, %while.body790.backedge
  %.lcssa4993 = phi i32 [ %231, %while.body790.backedge ], [ %218, %sw.bb788 ]
  %219 = load i32* %bsBuff796.pre, align 4, !tbaa !3
  %sub798 = add nsw i32 %.lcssa4993, -8
  %shr799 = lshr i32 %219, %sub798
  store i32 %sub798, i32* %bsLive791, align 4, !tbaa !3
  %storedBlockCRC839 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %220 = load i32* %storedBlockCRC839, align 4, !tbaa !3
  %shl840 = shl i32 %220, 8
  %conv841 = and i32 %shr799, 255
  %or842 = or i32 %shl840, %conv841
  store i32 %or842, i32* %storedBlockCRC839, align 4, !tbaa !3
  br label %sw.bb844

if.end804:                                        ; preds = %if.end804.lr.ph, %while.body790.backedge
  %221 = phi i32 [ %.pre5320, %if.end804.lr.ph ], [ %dec825, %while.body790.backedge ]
  %222 = phi i32 [ %218, %if.end804.lr.ph ], [ %231, %while.body790.backedge ]
  %223 = phi %struct.bz_stream* [ %.pre5233, %if.end804.lr.ph ], [ %227, %while.body790.backedge ]
  %cmp807 = icmp eq i32 %221, 0
  br i1 %cmp807, label %save_state_and_return, label %if.end810

if.end810:                                        ; preds = %if.end804
  %224 = load i32* %bsBuff796.pre, align 4, !tbaa !3
  %shl812 = shl i32 %224, 8
  %next_in814 = getelementptr inbounds %struct.bz_stream* %223, i64 0, i32 0
  %225 = load i8** %next_in814, align 8, !tbaa !0
  %226 = load i8* %225, align 1, !tbaa !1
  %conv815 = zext i8 %226 to i32
  %or816 = or i32 %conv815, %shl812
  store i32 %or816, i32* %bsBuff796.pre, align 4, !tbaa !3
  %add819 = add nsw i32 %222, 8
  store i32 %add819, i32* %bsLive791, align 4, !tbaa !3
  %incdec.ptr822 = getelementptr inbounds i8* %225, i64 1
  store i8* %incdec.ptr822, i8** %next_in814, align 8, !tbaa !0
  %227 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in824 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 1
  %228 = load i32* %avail_in824, align 4, !tbaa !3
  %dec825 = add i32 %228, -1
  store i32 %dec825, i32* %avail_in824, align 4, !tbaa !3
  %total_in_lo32827 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 2
  %229 = load i32* %total_in_lo32827, align 4, !tbaa !3
  %inc828 = add i32 %229, 1
  store i32 %inc828, i32* %total_in_lo32827, align 4, !tbaa !3
  %cmp831 = icmp eq i32 %inc828, 0
  br i1 %cmp831, label %if.then833, label %while.body790.backedge

if.then833:                                       ; preds = %if.end810
  %total_in_hi32835 = getelementptr inbounds %struct.bz_stream* %227, i64 0, i32 3
  %230 = load i32* %total_in_hi32835, align 4, !tbaa !3
  %inc836 = add i32 %230, 1
  store i32 %inc836, i32* %total_in_hi32835, align 4, !tbaa !3
  br label %while.body790.backedge

while.body790.backedge:                           ; preds = %if.then833, %if.end810
  %231 = load i32* %bsLive791, align 4, !tbaa !3
  %cmp792 = icmp sgt i32 %231, 7
  br i1 %cmp792, label %if.then794, label %if.end804

sw.bb844:                                         ; preds = %if.end.sw.bb844_crit_edge, %if.then794
  %232 = phi i32 [ %.pre5321, %if.end.sw.bb844_crit_edge ], [ %sub798, %if.then794 ]
  store i32 24, i32* %state, align 4, !tbaa !3
  %bsLive847 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp8484988 = icmp sgt i32 %232, 0
  %bsBuff852.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp8484988, label %if.then850, label %if.end860.lr.ph

if.end860.lr.ph:                                  ; preds = %sw.bb844
  %.pre5234 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in862.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5234, i64 0, i32 1
  %.pre5322 = load i32* %avail_in862.phi.trans.insert, align 4, !tbaa !3
  br label %if.end860

if.then850:                                       ; preds = %sw.bb844, %while.body846.backedge
  %.lcssa4986 = phi i32 [ %244, %while.body846.backedge ], [ %232, %sw.bb844 ]
  %233 = load i32* %bsBuff852.pre, align 4, !tbaa !3
  %sub854 = add nsw i32 %.lcssa4986, -1
  %shr855 = lshr i32 %233, %sub854
  store i32 %sub854, i32* %bsLive847, align 4, !tbaa !3
  %shr855.tr = trunc i32 %shr855 to i8
  %conv859 = and i8 %shr855.tr, 1
  %blockRandomised = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  store i8 %conv859, i8* %blockRandomised, align 1, !tbaa !1
  %origPtr = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  store i32 0, i32* %origPtr, align 4, !tbaa !3
  br label %sw.bb895

if.end860:                                        ; preds = %if.end860.lr.ph, %while.body846.backedge
  %234 = phi i32 [ %.pre5322, %if.end860.lr.ph ], [ %dec881, %while.body846.backedge ]
  %235 = phi i32 [ %232, %if.end860.lr.ph ], [ %244, %while.body846.backedge ]
  %236 = phi %struct.bz_stream* [ %.pre5234, %if.end860.lr.ph ], [ %240, %while.body846.backedge ]
  %cmp863 = icmp eq i32 %234, 0
  br i1 %cmp863, label %save_state_and_return, label %if.end866

if.end866:                                        ; preds = %if.end860
  %237 = load i32* %bsBuff852.pre, align 4, !tbaa !3
  %shl868 = shl i32 %237, 8
  %next_in870 = getelementptr inbounds %struct.bz_stream* %236, i64 0, i32 0
  %238 = load i8** %next_in870, align 8, !tbaa !0
  %239 = load i8* %238, align 1, !tbaa !1
  %conv871 = zext i8 %239 to i32
  %or872 = or i32 %conv871, %shl868
  store i32 %or872, i32* %bsBuff852.pre, align 4, !tbaa !3
  %add875 = add nsw i32 %235, 8
  store i32 %add875, i32* %bsLive847, align 4, !tbaa !3
  %incdec.ptr878 = getelementptr inbounds i8* %238, i64 1
  store i8* %incdec.ptr878, i8** %next_in870, align 8, !tbaa !0
  %240 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in880 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 1
  %241 = load i32* %avail_in880, align 4, !tbaa !3
  %dec881 = add i32 %241, -1
  store i32 %dec881, i32* %avail_in880, align 4, !tbaa !3
  %total_in_lo32883 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 2
  %242 = load i32* %total_in_lo32883, align 4, !tbaa !3
  %inc884 = add i32 %242, 1
  store i32 %inc884, i32* %total_in_lo32883, align 4, !tbaa !3
  %cmp887 = icmp eq i32 %inc884, 0
  br i1 %cmp887, label %if.then889, label %while.body846.backedge

if.then889:                                       ; preds = %if.end866
  %total_in_hi32891 = getelementptr inbounds %struct.bz_stream* %240, i64 0, i32 3
  %243 = load i32* %total_in_hi32891, align 4, !tbaa !3
  %inc892 = add i32 %243, 1
  store i32 %inc892, i32* %total_in_hi32891, align 4, !tbaa !3
  br label %while.body846.backedge

while.body846.backedge:                           ; preds = %if.then889, %if.end866
  %244 = load i32* %bsLive847, align 4, !tbaa !3
  %cmp848 = icmp sgt i32 %244, 0
  br i1 %cmp848, label %if.then850, label %if.end860

sw.bb895:                                         ; preds = %if.end.sw.bb895_crit_edge, %if.then850
  %245 = phi i32 [ %.pre5323, %if.end.sw.bb895_crit_edge ], [ %sub854, %if.then850 ]
  store i32 25, i32* %state, align 4, !tbaa !3
  %bsLive898 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp8994981 = icmp sgt i32 %245, 7
  %bsBuff903.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp8994981, label %if.then901, label %if.end911.lr.ph

if.end911.lr.ph:                                  ; preds = %sw.bb895
  %.pre5235 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in913.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5235, i64 0, i32 1
  %.pre5324 = load i32* %avail_in913.phi.trans.insert, align 4, !tbaa !3
  br label %if.end911

if.then901:                                       ; preds = %sw.bb895, %while.body897.backedge
  %.lcssa4979 = phi i32 [ %258, %while.body897.backedge ], [ %245, %sw.bb895 ]
  %246 = load i32* %bsBuff903.pre, align 4, !tbaa !3
  %sub905 = add nsw i32 %.lcssa4979, -8
  %shr906 = lshr i32 %246, %sub905
  store i32 %sub905, i32* %bsLive898, align 4, !tbaa !3
  %origPtr946 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %247 = load i32* %origPtr946, align 4, !tbaa !3
  %shl947 = shl i32 %247, 8
  %conv948 = and i32 %shr906, 255
  %or949 = or i32 %shl947, %conv948
  store i32 %or949, i32* %origPtr946, align 4, !tbaa !3
  br label %sw.bb951

if.end911:                                        ; preds = %if.end911.lr.ph, %while.body897.backedge
  %248 = phi i32 [ %.pre5324, %if.end911.lr.ph ], [ %dec932, %while.body897.backedge ]
  %249 = phi i32 [ %245, %if.end911.lr.ph ], [ %258, %while.body897.backedge ]
  %250 = phi %struct.bz_stream* [ %.pre5235, %if.end911.lr.ph ], [ %254, %while.body897.backedge ]
  %cmp914 = icmp eq i32 %248, 0
  br i1 %cmp914, label %save_state_and_return, label %if.end917

if.end917:                                        ; preds = %if.end911
  %251 = load i32* %bsBuff903.pre, align 4, !tbaa !3
  %shl919 = shl i32 %251, 8
  %next_in921 = getelementptr inbounds %struct.bz_stream* %250, i64 0, i32 0
  %252 = load i8** %next_in921, align 8, !tbaa !0
  %253 = load i8* %252, align 1, !tbaa !1
  %conv922 = zext i8 %253 to i32
  %or923 = or i32 %conv922, %shl919
  store i32 %or923, i32* %bsBuff903.pre, align 4, !tbaa !3
  %add926 = add nsw i32 %249, 8
  store i32 %add926, i32* %bsLive898, align 4, !tbaa !3
  %incdec.ptr929 = getelementptr inbounds i8* %252, i64 1
  store i8* %incdec.ptr929, i8** %next_in921, align 8, !tbaa !0
  %254 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in931 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 1
  %255 = load i32* %avail_in931, align 4, !tbaa !3
  %dec932 = add i32 %255, -1
  store i32 %dec932, i32* %avail_in931, align 4, !tbaa !3
  %total_in_lo32934 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 2
  %256 = load i32* %total_in_lo32934, align 4, !tbaa !3
  %inc935 = add i32 %256, 1
  store i32 %inc935, i32* %total_in_lo32934, align 4, !tbaa !3
  %cmp938 = icmp eq i32 %inc935, 0
  br i1 %cmp938, label %if.then940, label %while.body897.backedge

if.then940:                                       ; preds = %if.end917
  %total_in_hi32942 = getelementptr inbounds %struct.bz_stream* %254, i64 0, i32 3
  %257 = load i32* %total_in_hi32942, align 4, !tbaa !3
  %inc943 = add i32 %257, 1
  store i32 %inc943, i32* %total_in_hi32942, align 4, !tbaa !3
  br label %while.body897.backedge

while.body897.backedge:                           ; preds = %if.then940, %if.end917
  %258 = load i32* %bsLive898, align 4, !tbaa !3
  %cmp899 = icmp sgt i32 %258, 7
  br i1 %cmp899, label %if.then901, label %if.end911

sw.bb951:                                         ; preds = %if.end.sw.bb951_crit_edge, %if.then901
  %259 = phi i32 [ %.pre5325, %if.end.sw.bb951_crit_edge ], [ %sub905, %if.then901 ]
  store i32 26, i32* %state, align 4, !tbaa !3
  %bsLive954 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp9554974 = icmp sgt i32 %259, 7
  %bsBuff959.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp9554974, label %if.then957, label %if.end967.lr.ph

if.end967.lr.ph:                                  ; preds = %sw.bb951
  %.pre5236 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in969.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5236, i64 0, i32 1
  %.pre5326 = load i32* %avail_in969.phi.trans.insert, align 4, !tbaa !3
  br label %if.end967

if.then957:                                       ; preds = %sw.bb951, %while.body953.backedge
  %.lcssa4972 = phi i32 [ %272, %while.body953.backedge ], [ %259, %sw.bb951 ]
  %260 = load i32* %bsBuff959.pre, align 4, !tbaa !3
  %sub961 = add nsw i32 %.lcssa4972, -8
  %shr962 = lshr i32 %260, %sub961
  store i32 %sub961, i32* %bsLive954, align 4, !tbaa !3
  %origPtr1002 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %261 = load i32* %origPtr1002, align 4, !tbaa !3
  %shl1003 = shl i32 %261, 8
  %conv1004 = and i32 %shr962, 255
  %or1005 = or i32 %shl1003, %conv1004
  store i32 %or1005, i32* %origPtr1002, align 4, !tbaa !3
  br label %sw.bb1007

if.end967:                                        ; preds = %if.end967.lr.ph, %while.body953.backedge
  %262 = phi i32 [ %.pre5326, %if.end967.lr.ph ], [ %dec988, %while.body953.backedge ]
  %263 = phi i32 [ %259, %if.end967.lr.ph ], [ %272, %while.body953.backedge ]
  %264 = phi %struct.bz_stream* [ %.pre5236, %if.end967.lr.ph ], [ %268, %while.body953.backedge ]
  %cmp970 = icmp eq i32 %262, 0
  br i1 %cmp970, label %save_state_and_return, label %if.end973

if.end973:                                        ; preds = %if.end967
  %265 = load i32* %bsBuff959.pre, align 4, !tbaa !3
  %shl975 = shl i32 %265, 8
  %next_in977 = getelementptr inbounds %struct.bz_stream* %264, i64 0, i32 0
  %266 = load i8** %next_in977, align 8, !tbaa !0
  %267 = load i8* %266, align 1, !tbaa !1
  %conv978 = zext i8 %267 to i32
  %or979 = or i32 %conv978, %shl975
  store i32 %or979, i32* %bsBuff959.pre, align 4, !tbaa !3
  %add982 = add nsw i32 %263, 8
  store i32 %add982, i32* %bsLive954, align 4, !tbaa !3
  %incdec.ptr985 = getelementptr inbounds i8* %266, i64 1
  store i8* %incdec.ptr985, i8** %next_in977, align 8, !tbaa !0
  %268 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in987 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 1
  %269 = load i32* %avail_in987, align 4, !tbaa !3
  %dec988 = add i32 %269, -1
  store i32 %dec988, i32* %avail_in987, align 4, !tbaa !3
  %total_in_lo32990 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 2
  %270 = load i32* %total_in_lo32990, align 4, !tbaa !3
  %inc991 = add i32 %270, 1
  store i32 %inc991, i32* %total_in_lo32990, align 4, !tbaa !3
  %cmp994 = icmp eq i32 %inc991, 0
  br i1 %cmp994, label %if.then996, label %while.body953.backedge

if.then996:                                       ; preds = %if.end973
  %total_in_hi32998 = getelementptr inbounds %struct.bz_stream* %268, i64 0, i32 3
  %271 = load i32* %total_in_hi32998, align 4, !tbaa !3
  %inc999 = add i32 %271, 1
  store i32 %inc999, i32* %total_in_hi32998, align 4, !tbaa !3
  br label %while.body953.backedge

while.body953.backedge:                           ; preds = %if.then996, %if.end973
  %272 = load i32* %bsLive954, align 4, !tbaa !3
  %cmp955 = icmp sgt i32 %272, 7
  br i1 %cmp955, label %if.then957, label %if.end967

sw.bb1007:                                        ; preds = %if.end.sw.bb1007_crit_edge, %if.then957
  %273 = phi i32 [ %.pre5327, %if.end.sw.bb1007_crit_edge ], [ %sub961, %if.then957 ]
  store i32 27, i32* %state, align 4, !tbaa !3
  %bsLive1010 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp10114967 = icmp sgt i32 %273, 7
  %bsBuff1015.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp10114967, label %if.then1013, label %if.end1023.lr.ph

if.end1023.lr.ph:                                 ; preds = %sw.bb1007
  %.pre5237 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1025.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5237, i64 0, i32 1
  %.pre5328 = load i32* %avail_in1025.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1023

if.then1013:                                      ; preds = %sw.bb1007, %while.body1009.backedge
  %.lcssa4965 = phi i32 [ %286, %while.body1009.backedge ], [ %273, %sw.bb1007 ]
  %274 = load i32* %bsBuff1015.pre, align 4, !tbaa !3
  %sub1017 = add nsw i32 %.lcssa4965, -8
  %shr1018 = lshr i32 %274, %sub1017
  store i32 %sub1017, i32* %bsLive1010, align 4, !tbaa !3
  %origPtr1058 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %275 = load i32* %origPtr1058, align 4, !tbaa !3
  %shl1059 = shl i32 %275, 8
  %conv1060 = and i32 %shr1018, 255
  %or1061 = or i32 %shl1059, %conv1060
  store i32 %or1061, i32* %origPtr1058, align 4, !tbaa !3
  %cmp1064 = icmp slt i32 %or1061, 0
  br i1 %cmp1064, label %save_state_and_return, label %if.end1067

if.end1023:                                       ; preds = %if.end1023.lr.ph, %while.body1009.backedge
  %276 = phi i32 [ %.pre5328, %if.end1023.lr.ph ], [ %dec1044, %while.body1009.backedge ]
  %277 = phi i32 [ %273, %if.end1023.lr.ph ], [ %286, %while.body1009.backedge ]
  %278 = phi %struct.bz_stream* [ %.pre5237, %if.end1023.lr.ph ], [ %282, %while.body1009.backedge ]
  %cmp1026 = icmp eq i32 %276, 0
  br i1 %cmp1026, label %save_state_and_return, label %if.end1029

if.end1029:                                       ; preds = %if.end1023
  %279 = load i32* %bsBuff1015.pre, align 4, !tbaa !3
  %shl1031 = shl i32 %279, 8
  %next_in1033 = getelementptr inbounds %struct.bz_stream* %278, i64 0, i32 0
  %280 = load i8** %next_in1033, align 8, !tbaa !0
  %281 = load i8* %280, align 1, !tbaa !1
  %conv1034 = zext i8 %281 to i32
  %or1035 = or i32 %conv1034, %shl1031
  store i32 %or1035, i32* %bsBuff1015.pre, align 4, !tbaa !3
  %add1038 = add nsw i32 %277, 8
  store i32 %add1038, i32* %bsLive1010, align 4, !tbaa !3
  %incdec.ptr1041 = getelementptr inbounds i8* %280, i64 1
  store i8* %incdec.ptr1041, i8** %next_in1033, align 8, !tbaa !0
  %282 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1043 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 1
  %283 = load i32* %avail_in1043, align 4, !tbaa !3
  %dec1044 = add i32 %283, -1
  store i32 %dec1044, i32* %avail_in1043, align 4, !tbaa !3
  %total_in_lo321046 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 2
  %284 = load i32* %total_in_lo321046, align 4, !tbaa !3
  %inc1047 = add i32 %284, 1
  store i32 %inc1047, i32* %total_in_lo321046, align 4, !tbaa !3
  %cmp1050 = icmp eq i32 %inc1047, 0
  br i1 %cmp1050, label %if.then1052, label %while.body1009.backedge

if.then1052:                                      ; preds = %if.end1029
  %total_in_hi321054 = getelementptr inbounds %struct.bz_stream* %282, i64 0, i32 3
  %285 = load i32* %total_in_hi321054, align 4, !tbaa !3
  %inc1055 = add i32 %285, 1
  store i32 %inc1055, i32* %total_in_hi321054, align 4, !tbaa !3
  br label %while.body1009.backedge

while.body1009.backedge:                          ; preds = %if.then1052, %if.end1029
  %286 = load i32* %bsLive1010, align 4, !tbaa !3
  %cmp1011 = icmp sgt i32 %286, 7
  br i1 %cmp1011, label %if.then1013, label %if.end1023

if.end1067:                                       ; preds = %if.then1013
  %blockSize100k1069 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  %287 = load i32* %blockSize100k1069, align 4, !tbaa !3
  %mul1070 = mul nsw i32 %287, 100000
  %add10714728 = or i32 %mul1070, 10
  %cmp1072 = icmp sgt i32 %or1061, %add10714728
  br i1 %cmp1072, label %save_state_and_return, label %for.cond

for.cond:                                         ; preds = %if.end1067, %if.then1084
  %i.0 = phi i32 [ %inc1138, %if.then1084 ], [ 0, %if.end1067 ]
  %cmp1076 = icmp slt i32 %i.0, 16
  br i1 %cmp1076, label %sw.bb1078, label %for.cond1139.preheader

for.cond1139.preheader:                           ; preds = %for.cond
  %scevgep5197 = getelementptr %struct.DState* %s, i64 0, i32 28, i64 0
  call void @llvm.memset.p0i8.i64(i8* %scevgep5197, i8 0, i64 256, i32 1, i1 false)
  br label %for.cond1148

sw.bb1078:                                        ; preds = %for.cond, %if.end
  %i.1 = phi i32 [ %26, %if.end ], [ %i.0, %for.cond ]
  store i32 28, i32* %state, align 4, !tbaa !3
  %bsLive1081 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %288 = load i32* %bsLive1081, align 4, !tbaa !3
  %cmp10824800 = icmp sgt i32 %288, 0
  %bsBuff1086.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp10824800, label %if.then1084, label %if.end1094.lr.ph

if.end1094.lr.ph:                                 ; preds = %sw.bb1078
  %.pre5238 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1096.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5238, i64 0, i32 1
  %.pre5329 = load i32* %avail_in1096.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1094

if.then1084:                                      ; preds = %sw.bb1078, %while.body1080.backedge
  %.lcssa4798 = phi i32 [ %301, %while.body1080.backedge ], [ %288, %sw.bb1078 ]
  %289 = load i32* %bsBuff1086.pre, align 4, !tbaa !3
  %sub1088 = add nsw i32 %.lcssa4798, -1
  store i32 %sub1088, i32* %bsLive1081, align 4, !tbaa !3
  %290 = shl i32 1, %sub1088
  %conv10934726 = and i32 %289, %290
  %idxprom = sext i32 %i.1 to i64
  %arrayidx = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %idxprom
  %not.cmp1130 = icmp ne i32 %conv10934726, 0
  %. = zext i1 %not.cmp1130 to i8
  store i8 %., i8* %arrayidx, align 1, !tbaa !1
  %inc1138 = add nsw i32 %i.1, 1
  br label %for.cond

if.end1094:                                       ; preds = %if.end1094.lr.ph, %while.body1080.backedge
  %291 = phi i32 [ %.pre5329, %if.end1094.lr.ph ], [ %dec1115, %while.body1080.backedge ]
  %292 = phi i32 [ %288, %if.end1094.lr.ph ], [ %301, %while.body1080.backedge ]
  %293 = phi %struct.bz_stream* [ %.pre5238, %if.end1094.lr.ph ], [ %297, %while.body1080.backedge ]
  %cmp1097 = icmp eq i32 %291, 0
  br i1 %cmp1097, label %save_state_and_return, label %if.end1100

if.end1100:                                       ; preds = %if.end1094
  %294 = load i32* %bsBuff1086.pre, align 4, !tbaa !3
  %shl1102 = shl i32 %294, 8
  %next_in1104 = getelementptr inbounds %struct.bz_stream* %293, i64 0, i32 0
  %295 = load i8** %next_in1104, align 8, !tbaa !0
  %296 = load i8* %295, align 1, !tbaa !1
  %conv1105 = zext i8 %296 to i32
  %or1106 = or i32 %conv1105, %shl1102
  store i32 %or1106, i32* %bsBuff1086.pre, align 4, !tbaa !3
  %add1109 = add nsw i32 %292, 8
  store i32 %add1109, i32* %bsLive1081, align 4, !tbaa !3
  %incdec.ptr1112 = getelementptr inbounds i8* %295, i64 1
  store i8* %incdec.ptr1112, i8** %next_in1104, align 8, !tbaa !0
  %297 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1114 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 1
  %298 = load i32* %avail_in1114, align 4, !tbaa !3
  %dec1115 = add i32 %298, -1
  store i32 %dec1115, i32* %avail_in1114, align 4, !tbaa !3
  %total_in_lo321117 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 2
  %299 = load i32* %total_in_lo321117, align 4, !tbaa !3
  %inc1118 = add i32 %299, 1
  store i32 %inc1118, i32* %total_in_lo321117, align 4, !tbaa !3
  %cmp1121 = icmp eq i32 %inc1118, 0
  br i1 %cmp1121, label %if.then1123, label %while.body1080.backedge

if.then1123:                                      ; preds = %if.end1100
  %total_in_hi321125 = getelementptr inbounds %struct.bz_stream* %297, i64 0, i32 3
  %300 = load i32* %total_in_hi321125, align 4, !tbaa !3
  %inc1126 = add i32 %300, 1
  store i32 %inc1126, i32* %total_in_hi321125, align 4, !tbaa !3
  br label %while.body1080.backedge

while.body1080.backedge:                          ; preds = %if.then1123, %if.end1100
  %301 = load i32* %bsLive1081, align 4, !tbaa !3
  %cmp1082 = icmp sgt i32 %301, 0
  br i1 %cmp1082, label %if.then1084, label %if.end1094

for.cond1148:                                     ; preds = %for.cond1139.preheader, %for.inc1226
  %j.0 = phi i32 [ %j.3, %for.inc1226 ], [ %25, %for.cond1139.preheader ]
  %i.3 = phi i32 [ %inc1227, %for.inc1226 ], [ 0, %for.cond1139.preheader ]
  %cmp1149 = icmp slt i32 %i.3, 16
  br i1 %cmp1149, label %for.body1151, label %for.end1228

for.body1151:                                     ; preds = %for.cond1148
  %idxprom1152 = sext i32 %i.3 to i64
  %arrayidx1154 = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %idxprom1152
  %302 = load i8* %arrayidx1154, align 1, !tbaa !1
  %tobool1155 = icmp eq i8 %302, 0
  br i1 %tobool1155, label %for.inc1226, label %for.cond1157

for.cond1157:                                     ; preds = %for.body1151, %for.inc1222
  %j.1 = phi i32 [ %inc1223, %for.inc1222 ], [ 0, %for.body1151 ]
  %i.4 = phi i32 [ %i.5, %for.inc1222 ], [ %i.3, %for.body1151 ]
  %cmp1158 = icmp slt i32 %j.1, 16
  br i1 %cmp1158, label %sw.bb1161, label %for.inc1226

sw.bb1161:                                        ; preds = %for.cond1157, %if.end
  %j.2 = phi i32 [ %25, %if.end ], [ %j.1, %for.cond1157 ]
  %i.5 = phi i32 [ %26, %if.end ], [ %i.4, %for.cond1157 ]
  store i32 29, i32* %state, align 4, !tbaa !3
  %bsLive1164 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %303 = load i32* %bsLive1164, align 4, !tbaa !3
  %cmp11654807 = icmp sgt i32 %303, 0
  %bsBuff1169.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp11654807, label %if.then1167, label %if.end1177.lr.ph

if.end1177.lr.ph:                                 ; preds = %sw.bb1161
  %.pre5239 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1179.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5239, i64 0, i32 1
  %.pre5330 = load i32* %avail_in1179.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1177

if.then1167:                                      ; preds = %sw.bb1161, %while.body1163.backedge
  %.lcssa4805 = phi i32 [ %316, %while.body1163.backedge ], [ %303, %sw.bb1161 ]
  %304 = load i32* %bsBuff1169.pre, align 4, !tbaa !3
  %sub1171 = add nsw i32 %.lcssa4805, -1
  store i32 %sub1171, i32* %bsLive1164, align 4, !tbaa !3
  %305 = shl i32 1, %sub1171
  %conv11764725 = and i32 %304, %305
  %cmp1213 = icmp eq i32 %conv11764725, 0
  br i1 %cmp1213, label %for.inc1222, label %if.then1215

if.end1177:                                       ; preds = %if.end1177.lr.ph, %while.body1163.backedge
  %306 = phi i32 [ %.pre5330, %if.end1177.lr.ph ], [ %dec1198, %while.body1163.backedge ]
  %307 = phi i32 [ %303, %if.end1177.lr.ph ], [ %316, %while.body1163.backedge ]
  %308 = phi %struct.bz_stream* [ %.pre5239, %if.end1177.lr.ph ], [ %312, %while.body1163.backedge ]
  %cmp1180 = icmp eq i32 %306, 0
  br i1 %cmp1180, label %save_state_and_return, label %if.end1183

if.end1183:                                       ; preds = %if.end1177
  %309 = load i32* %bsBuff1169.pre, align 4, !tbaa !3
  %shl1185 = shl i32 %309, 8
  %next_in1187 = getelementptr inbounds %struct.bz_stream* %308, i64 0, i32 0
  %310 = load i8** %next_in1187, align 8, !tbaa !0
  %311 = load i8* %310, align 1, !tbaa !1
  %conv1188 = zext i8 %311 to i32
  %or1189 = or i32 %conv1188, %shl1185
  store i32 %or1189, i32* %bsBuff1169.pre, align 4, !tbaa !3
  %add1192 = add nsw i32 %307, 8
  store i32 %add1192, i32* %bsLive1164, align 4, !tbaa !3
  %incdec.ptr1195 = getelementptr inbounds i8* %310, i64 1
  store i8* %incdec.ptr1195, i8** %next_in1187, align 8, !tbaa !0
  %312 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1197 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 1
  %313 = load i32* %avail_in1197, align 4, !tbaa !3
  %dec1198 = add i32 %313, -1
  store i32 %dec1198, i32* %avail_in1197, align 4, !tbaa !3
  %total_in_lo321200 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 2
  %314 = load i32* %total_in_lo321200, align 4, !tbaa !3
  %inc1201 = add i32 %314, 1
  store i32 %inc1201, i32* %total_in_lo321200, align 4, !tbaa !3
  %cmp1204 = icmp eq i32 %inc1201, 0
  br i1 %cmp1204, label %if.then1206, label %while.body1163.backedge

if.then1206:                                      ; preds = %if.end1183
  %total_in_hi321208 = getelementptr inbounds %struct.bz_stream* %312, i64 0, i32 3
  %315 = load i32* %total_in_hi321208, align 4, !tbaa !3
  %inc1209 = add i32 %315, 1
  store i32 %inc1209, i32* %total_in_hi321208, align 4, !tbaa !3
  br label %while.body1163.backedge

while.body1163.backedge:                          ; preds = %if.then1206, %if.end1183
  %316 = load i32* %bsLive1164, align 4, !tbaa !3
  %cmp1165 = icmp sgt i32 %316, 0
  br i1 %cmp1165, label %if.then1167, label %if.end1177

if.then1215:                                      ; preds = %if.then1167
  %mul1216 = shl i32 %i.5, 4
  %add1217 = add nsw i32 %mul1216, %j.2
  %idxprom1218 = sext i32 %add1217 to i64
  %arrayidx1220 = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %idxprom1218
  store i8 1, i8* %arrayidx1220, align 1, !tbaa !1
  br label %for.inc1222

for.inc1222:                                      ; preds = %if.then1167, %if.then1215
  %inc1223 = add nsw i32 %j.2, 1
  br label %for.cond1157

for.inc1226:                                      ; preds = %for.body1151, %for.cond1157
  %j.3 = phi i32 [ %j.1, %for.cond1157 ], [ %j.0, %for.body1151 ]
  %i.6 = phi i32 [ %i.4, %for.cond1157 ], [ %i.3, %for.body1151 ]
  %inc1227 = add nsw i32 %i.6, 1
  br label %for.cond1148

for.end1228:                                      ; preds = %for.cond1148
  %nInUse.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 27
  store i32 0, i32* %nInUse.i, align 4, !tbaa !3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.end1228
  %317 = phi i32 [ 0, %for.end1228 ], [ %320, %for.inc.i ]
  %indvars.iv.i = phi i64 [ 0, %for.end1228 ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %indvars.iv.i
  %318 = load i8* %arrayidx.i, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %318, 0
  br i1 %tobool.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %conv.i = trunc i64 %indvars.iv.i to i8
  %idxprom2.i = sext i32 %317 to i64
  %arrayidx3.i = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2.i
  store i8 %conv.i, i8* %arrayidx3.i, align 1, !tbaa !1
  %319 = load i32* %nInUse.i, align 4, !tbaa !3
  %inc.i = add nsw i32 %319, 1
  store i32 %inc.i, i32* %nInUse.i, align 4, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %320 = phi i32 [ %317, %for.body.i ], [ %inc.i, %if.then.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv5191 = trunc i64 %indvars.iv.next.i to i32
  %exitcond5192 = icmp eq i32 %lftr.wideiv5191, 256
  br i1 %exitcond5192, label %makeMaps_d.exit, label %for.body.i

makeMaps_d.exit:                                  ; preds = %for.inc.i
  %cmp1229 = icmp eq i32 %320, 0
  br i1 %cmp1229, label %save_state_and_return, label %if.end1232

if.end1232:                                       ; preds = %makeMaps_d.exit
  %add1234 = add nsw i32 %320, 2
  br label %sw.bb1235

sw.bb1235:                                        ; preds = %if.end, %if.end1232
  %alphaSize.0 = phi i32 [ %add1234, %if.end1232 ], [ %23, %if.end ]
  %j.4 = phi i32 [ %j.0, %if.end1232 ], [ %25, %if.end ]
  %i.7 = phi i32 [ %i.3, %if.end1232 ], [ %26, %if.end ]
  store i32 30, i32* %state, align 4, !tbaa !3
  %bsLive1238 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %321 = load i32* %bsLive1238, align 4, !tbaa !3
  %cmp12394959 = icmp sgt i32 %321, 2
  %bsBuff1243.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp12394959, label %if.then1241, label %if.end1250.lr.ph

if.end1250.lr.ph:                                 ; preds = %sw.bb1235
  %.pre5240 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1252.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5240, i64 0, i32 1
  %.pre5331 = load i32* %avail_in1252.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1250

if.then1241:                                      ; preds = %sw.bb1235, %while.body1237.backedge
  %.lcssa4957 = phi i32 [ %333, %while.body1237.backedge ], [ %321, %sw.bb1235 ]
  %322 = load i32* %bsBuff1243.pre, align 4, !tbaa !3
  %sub1245 = add nsw i32 %.lcssa4957, -3
  %shr1246 = lshr i32 %322, %sub1245
  %and1247 = and i32 %shr1246, 7
  store i32 %sub1245, i32* %bsLive1238, align 4, !tbaa !3
  switch i32 %and1247, label %sw.bb1292 [
    i32 7, label %save_state_and_return
    i32 1, label %save_state_and_return
    i32 0, label %save_state_and_return
  ]

if.end1250:                                       ; preds = %if.end1250.lr.ph, %while.body1237.backedge
  %323 = phi i32 [ %.pre5331, %if.end1250.lr.ph ], [ %dec1271, %while.body1237.backedge ]
  %324 = phi i32 [ %321, %if.end1250.lr.ph ], [ %333, %while.body1237.backedge ]
  %325 = phi %struct.bz_stream* [ %.pre5240, %if.end1250.lr.ph ], [ %329, %while.body1237.backedge ]
  %cmp1253 = icmp eq i32 %323, 0
  br i1 %cmp1253, label %save_state_and_return, label %if.end1256

if.end1256:                                       ; preds = %if.end1250
  %326 = load i32* %bsBuff1243.pre, align 4, !tbaa !3
  %shl1258 = shl i32 %326, 8
  %next_in1260 = getelementptr inbounds %struct.bz_stream* %325, i64 0, i32 0
  %327 = load i8** %next_in1260, align 8, !tbaa !0
  %328 = load i8* %327, align 1, !tbaa !1
  %conv1261 = zext i8 %328 to i32
  %or1262 = or i32 %conv1261, %shl1258
  store i32 %or1262, i32* %bsBuff1243.pre, align 4, !tbaa !3
  %add1265 = add nsw i32 %324, 8
  store i32 %add1265, i32* %bsLive1238, align 4, !tbaa !3
  %incdec.ptr1268 = getelementptr inbounds i8* %327, i64 1
  store i8* %incdec.ptr1268, i8** %next_in1260, align 8, !tbaa !0
  %329 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1270 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 1
  %330 = load i32* %avail_in1270, align 4, !tbaa !3
  %dec1271 = add i32 %330, -1
  store i32 %dec1271, i32* %avail_in1270, align 4, !tbaa !3
  %total_in_lo321273 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 2
  %331 = load i32* %total_in_lo321273, align 4, !tbaa !3
  %inc1274 = add i32 %331, 1
  store i32 %inc1274, i32* %total_in_lo321273, align 4, !tbaa !3
  %cmp1277 = icmp eq i32 %inc1274, 0
  br i1 %cmp1277, label %if.then1279, label %while.body1237.backedge

if.then1279:                                      ; preds = %if.end1256
  %total_in_hi321281 = getelementptr inbounds %struct.bz_stream* %329, i64 0, i32 3
  %332 = load i32* %total_in_hi321281, align 4, !tbaa !3
  %inc1282 = add i32 %332, 1
  store i32 %inc1282, i32* %total_in_hi321281, align 4, !tbaa !3
  br label %while.body1237.backedge

while.body1237.backedge:                          ; preds = %if.then1279, %if.end1256
  %333 = load i32* %bsLive1238, align 4, !tbaa !3
  %cmp1239 = icmp sgt i32 %333, 2
  br i1 %cmp1239, label %if.then1241, label %if.end1250

sw.bb1292:                                        ; preds = %if.end.sw.bb1292_crit_edge, %if.then1241
  %334 = phi i32 [ %.pre5332, %if.end.sw.bb1292_crit_edge ], [ %sub1245, %if.then1241 ]
  %nGroups.0 = phi i32 [ %22, %if.end.sw.bb1292_crit_edge ], [ %and1247, %if.then1241 ]
  %alphaSize.1 = phi i32 [ %23, %if.end.sw.bb1292_crit_edge ], [ %alphaSize.0, %if.then1241 ]
  %j.5 = phi i32 [ %25, %if.end.sw.bb1292_crit_edge ], [ %j.4, %if.then1241 ]
  %i.8 = phi i32 [ %26, %if.end.sw.bb1292_crit_edge ], [ %i.7, %if.then1241 ]
  store i32 31, i32* %state, align 4, !tbaa !3
  %bsLive1295 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp12964952 = icmp sgt i32 %334, 14
  %bsBuff1300.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp12964952, label %if.then1298, label %if.end1307.lr.ph

if.end1307.lr.ph:                                 ; preds = %sw.bb1292
  %.pre5241 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1309.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5241, i64 0, i32 1
  %.pre5333 = load i32* %avail_in1309.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1307

if.then1298:                                      ; preds = %sw.bb1292, %while.body1294.backedge
  %.lcssa4950 = phi i32 [ %346, %while.body1294.backedge ], [ %334, %sw.bb1292 ]
  %335 = load i32* %bsBuff1300.pre, align 4, !tbaa !3
  %sub1302 = add nsw i32 %.lcssa4950, -15
  %shr1303 = lshr i32 %335, %sub1302
  %and1304 = and i32 %shr1303, 32767
  store i32 %sub1302, i32* %bsLive1295, align 4, !tbaa !3
  %cmp1342 = icmp eq i32 %and1304, 0
  br i1 %cmp1342, label %save_state_and_return, label %for.cond1346

if.end1307:                                       ; preds = %if.end1307.lr.ph, %while.body1294.backedge
  %336 = phi i32 [ %.pre5333, %if.end1307.lr.ph ], [ %dec1328, %while.body1294.backedge ]
  %337 = phi i32 [ %334, %if.end1307.lr.ph ], [ %346, %while.body1294.backedge ]
  %338 = phi %struct.bz_stream* [ %.pre5241, %if.end1307.lr.ph ], [ %342, %while.body1294.backedge ]
  %cmp1310 = icmp eq i32 %336, 0
  br i1 %cmp1310, label %save_state_and_return, label %if.end1313

if.end1313:                                       ; preds = %if.end1307
  %339 = load i32* %bsBuff1300.pre, align 4, !tbaa !3
  %shl1315 = shl i32 %339, 8
  %next_in1317 = getelementptr inbounds %struct.bz_stream* %338, i64 0, i32 0
  %340 = load i8** %next_in1317, align 8, !tbaa !0
  %341 = load i8* %340, align 1, !tbaa !1
  %conv1318 = zext i8 %341 to i32
  %or1319 = or i32 %conv1318, %shl1315
  store i32 %or1319, i32* %bsBuff1300.pre, align 4, !tbaa !3
  %add1322 = add nsw i32 %337, 8
  store i32 %add1322, i32* %bsLive1295, align 4, !tbaa !3
  %incdec.ptr1325 = getelementptr inbounds i8* %340, i64 1
  store i8* %incdec.ptr1325, i8** %next_in1317, align 8, !tbaa !0
  %342 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1327 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 1
  %343 = load i32* %avail_in1327, align 4, !tbaa !3
  %dec1328 = add i32 %343, -1
  store i32 %dec1328, i32* %avail_in1327, align 4, !tbaa !3
  %total_in_lo321330 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 2
  %344 = load i32* %total_in_lo321330, align 4, !tbaa !3
  %inc1331 = add i32 %344, 1
  store i32 %inc1331, i32* %total_in_lo321330, align 4, !tbaa !3
  %cmp1334 = icmp eq i32 %inc1331, 0
  br i1 %cmp1334, label %if.then1336, label %while.body1294.backedge

if.then1336:                                      ; preds = %if.end1313
  %total_in_hi321338 = getelementptr inbounds %struct.bz_stream* %342, i64 0, i32 3
  %345 = load i32* %total_in_hi321338, align 4, !tbaa !3
  %inc1339 = add i32 %345, 1
  store i32 %inc1339, i32* %total_in_hi321338, align 4, !tbaa !3
  br label %while.body1294.backedge

while.body1294.backedge:                          ; preds = %if.then1336, %if.end1313
  %346 = load i32* %bsLive1295, align 4, !tbaa !3
  %cmp1296 = icmp sgt i32 %346, 14
  br i1 %cmp1296, label %if.then1298, label %if.end1307

for.cond1346:                                     ; preds = %if.then1298, %while.end1413
  %nSelectors.0 = phi i32 [ %nSelectors.1.ph, %while.end1413 ], [ %and1304, %if.then1298 ]
  %nGroups.1 = phi i32 [ %nGroups.2.ph, %while.end1413 ], [ %nGroups.0, %if.then1298 ]
  %alphaSize.2 = phi i32 [ %alphaSize.3.ph, %while.end1413 ], [ %alphaSize.1, %if.then1298 ]
  %j.6 = phi i32 [ %j.7, %while.end1413 ], [ %j.5, %if.then1298 ]
  %i.9 = phi i32 [ %inc1418, %while.end1413 ], [ 0, %if.then1298 ]
  %cmp1347 = icmp slt i32 %i.9, %nSelectors.0
  br i1 %cmp1347, label %sw.bb1351.preheader, label %for.cond1422.preheader

for.cond1422.preheader:                           ; preds = %for.cond1346
  %cmp14244946 = icmp sgt i32 %nGroups.1, 0
  br i1 %cmp14244946, label %for.body1426, label %for.cond1432.preheader

sw.bb1351.preheader:                              ; preds = %for.cond1346, %if.end
  %nSelectors.1.ph = phi i32 [ %21, %if.end ], [ %nSelectors.0, %for.cond1346 ]
  %nGroups.2.ph = phi i32 [ %22, %if.end ], [ %nGroups.1, %for.cond1346 ]
  %alphaSize.3.ph = phi i32 [ %23, %if.end ], [ %alphaSize.2, %for.cond1346 ]
  %j.7.ph = phi i32 [ %25, %if.end ], [ 0, %for.cond1346 ]
  %i.10.ph = phi i32 [ %26, %if.end ], [ %i.9, %for.cond1346 ]
  %bsLive1355 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %bsBuff1360 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  %.pre5252 = load i32* %bsLive1355, align 4, !tbaa !3
  br label %sw.bb1351

sw.bb1351:                                        ; preds = %sw.bb1351.preheader, %if.end1407
  %347 = phi i32 [ %sub1362, %if.end1407 ], [ %.pre5252, %sw.bb1351.preheader ]
  %j.7 = phi i32 [ %inc1408, %if.end1407 ], [ %j.7.ph, %sw.bb1351.preheader ]
  store i32 32, i32* %state, align 4, !tbaa !3
  %cmp13564814 = icmp sgt i32 %347, 0
  br i1 %cmp13564814, label %if.then1358, label %if.end1368.lr.ph

if.end1368.lr.ph:                                 ; preds = %sw.bb1351
  %.pre5253 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1370.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5253, i64 0, i32 1
  %.pre5350 = load i32* %avail_in1370.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1368

if.then1358:                                      ; preds = %while.body1354.backedge, %sw.bb1351
  %.lcssa4812 = phi i32 [ %347, %sw.bb1351 ], [ %360, %while.body1354.backedge ]
  %348 = load i32* %bsBuff1360, align 4, !tbaa !3
  %sub1362 = add nsw i32 %.lcssa4812, -1
  store i32 %sub1362, i32* %bsLive1355, align 4, !tbaa !3
  %349 = shl i32 1, %sub1362
  %conv13674724 = and i32 %348, %349
  %cmp1404 = icmp eq i32 %conv13674724, 0
  br i1 %cmp1404, label %while.end1413, label %if.end1407

if.end1368:                                       ; preds = %if.end1368.lr.ph, %while.body1354.backedge
  %350 = phi i32 [ %.pre5350, %if.end1368.lr.ph ], [ %dec1389, %while.body1354.backedge ]
  %351 = phi i32 [ %347, %if.end1368.lr.ph ], [ %360, %while.body1354.backedge ]
  %352 = phi %struct.bz_stream* [ %.pre5253, %if.end1368.lr.ph ], [ %356, %while.body1354.backedge ]
  %cmp1371 = icmp eq i32 %350, 0
  br i1 %cmp1371, label %save_state_and_return, label %if.end1374

if.end1374:                                       ; preds = %if.end1368
  %353 = load i32* %bsBuff1360, align 4, !tbaa !3
  %shl1376 = shl i32 %353, 8
  %next_in1378 = getelementptr inbounds %struct.bz_stream* %352, i64 0, i32 0
  %354 = load i8** %next_in1378, align 8, !tbaa !0
  %355 = load i8* %354, align 1, !tbaa !1
  %conv1379 = zext i8 %355 to i32
  %or1380 = or i32 %conv1379, %shl1376
  store i32 %or1380, i32* %bsBuff1360, align 4, !tbaa !3
  %add1383 = add nsw i32 %351, 8
  store i32 %add1383, i32* %bsLive1355, align 4, !tbaa !3
  %incdec.ptr1386 = getelementptr inbounds i8* %354, i64 1
  store i8* %incdec.ptr1386, i8** %next_in1378, align 8, !tbaa !0
  %356 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1388 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 1
  %357 = load i32* %avail_in1388, align 4, !tbaa !3
  %dec1389 = add i32 %357, -1
  store i32 %dec1389, i32* %avail_in1388, align 4, !tbaa !3
  %total_in_lo321391 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 2
  %358 = load i32* %total_in_lo321391, align 4, !tbaa !3
  %inc1392 = add i32 %358, 1
  store i32 %inc1392, i32* %total_in_lo321391, align 4, !tbaa !3
  %cmp1395 = icmp eq i32 %inc1392, 0
  br i1 %cmp1395, label %if.then1397, label %while.body1354.backedge

if.then1397:                                      ; preds = %if.end1374
  %total_in_hi321399 = getelementptr inbounds %struct.bz_stream* %356, i64 0, i32 3
  %359 = load i32* %total_in_hi321399, align 4, !tbaa !3
  %inc1400 = add i32 %359, 1
  store i32 %inc1400, i32* %total_in_hi321399, align 4, !tbaa !3
  br label %while.body1354.backedge

while.body1354.backedge:                          ; preds = %if.then1397, %if.end1374
  %360 = load i32* %bsLive1355, align 4, !tbaa !3
  %cmp1356 = icmp sgt i32 %360, 0
  br i1 %cmp1356, label %if.then1358, label %if.end1368

if.end1407:                                       ; preds = %if.then1358
  %inc1408 = add nsw i32 %j.7, 1
  %cmp1409 = icmp slt i32 %inc1408, %nGroups.2.ph
  br i1 %cmp1409, label %sw.bb1351, label %save_state_and_return

while.end1413:                                    ; preds = %if.then1358
  %conv1414 = trunc i32 %j.7 to i8
  %idxprom1415 = sext i32 %i.10.ph to i64
  %arrayidx1416 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %idxprom1415
  store i8 %conv1414, i8* %arrayidx1416, align 1, !tbaa !1
  %inc1418 = add nsw i32 %i.10.ph, 1
  br label %for.cond1346

for.cond1432.preheader:                           ; preds = %for.body1426, %for.cond1422.preheader
  %cmp14334943 = icmp sgt i32 %nSelectors.0, 0
  br i1 %cmp14334943, label %for.body1435.lr.ph, label %for.cond1459

for.body1435.lr.ph:                               ; preds = %for.cond1432.preheader
  %arrayidx1453 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 0
  br label %for.body1435

for.body1426:                                     ; preds = %for.cond1422.preheader, %for.body1426
  %v1421.04947 = phi i8 [ %inc1430, %for.body1426 ], [ 0, %for.cond1422.preheader ]
  %idxprom1427 = zext i8 %v1421.04947 to i64
  %arrayidx1428 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %idxprom1427
  store i8 %v1421.04947, i8* %arrayidx1428, align 1, !tbaa !1
  %inc1430 = add i8 %v1421.04947, 1
  %conv1423 = zext i8 %inc1430 to i32
  %cmp1424 = icmp slt i32 %conv1423, %nGroups.1
  br i1 %cmp1424, label %for.body1426, label %for.cond1432.preheader

for.body1435:                                     ; preds = %while.end1452, %for.body1435.lr.ph
  %indvars.iv5185 = phi i64 [ 0, %for.body1435.lr.ph ], [ %indvars.iv.next5186, %while.end1452 ]
  %arrayidx1438 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %indvars.iv5185
  %361 = load i8* %arrayidx1438, align 1, !tbaa !1
  %idxprom1439 = zext i8 %361 to i64
  %arrayidx1440 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %idxprom1439
  %362 = load i8* %arrayidx1440, align 1, !tbaa !1
  %cmp14424941 = icmp eq i8 %361, 0
  br i1 %cmp14424941, label %while.end1452, label %while.body1444

while.body1444:                                   ; preds = %for.body1435, %while.body1444
  %indvars.iv5182 = phi i64 [ %sub1446, %while.body1444 ], [ %idxprom1439, %for.body1435 ]
  %v1421.14942 = phi i8 [ %dec1451, %while.body1444 ], [ %361, %for.body1435 ]
  %sub1446 = add i64 %indvars.iv5182, -1
  %arrayidx1448 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %sub1446
  %363 = load i8* %arrayidx1448, align 1, !tbaa !1
  %arrayidx1450 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %indvars.iv5182
  store i8 %363, i8* %arrayidx1450, align 1, !tbaa !1
  %dec1451 = add i8 %v1421.14942, -1
  %cmp1442 = icmp eq i8 %dec1451, 0
  br i1 %cmp1442, label %while.end1452, label %while.body1444

while.end1452:                                    ; preds = %while.body1444, %for.body1435
  store i8 %362, i8* %arrayidx1453, align 1, !tbaa !1
  %arrayidx1455 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %indvars.iv5185
  store i8 %362, i8* %arrayidx1455, align 1, !tbaa !1
  %indvars.iv.next5186 = add i64 %indvars.iv5185, 1
  %lftr.wideiv5187 = trunc i64 %indvars.iv.next5186 to i32
  %exitcond5188 = icmp eq i32 %lftr.wideiv5187, %nSelectors.0
  br i1 %exitcond5188, label %for.cond1459, label %for.body1435

for.cond1459:                                     ; preds = %for.cond1432.preheader, %while.end1452, %for.inc1656
  %curr.0 = phi i32 [ %curr.2, %for.inc1656 ], [ %12, %while.end1452 ], [ %12, %for.cond1432.preheader ]
  %nSelectors.2 = phi i32 [ %nSelectors.4, %for.inc1656 ], [ %nSelectors.0, %while.end1452 ], [ %nSelectors.0, %for.cond1432.preheader ]
  %nGroups.3 = phi i32 [ %nGroups.5, %for.inc1656 ], [ %nGroups.1, %while.end1452 ], [ %nGroups.1, %for.cond1432.preheader ]
  %alphaSize.4 = phi i32 [ %alphaSize.6, %for.inc1656 ], [ %alphaSize.2, %while.end1452 ], [ %alphaSize.2, %for.cond1432.preheader ]
  %t.0 = phi i32 [ %inc1657, %for.inc1656 ], [ 0, %while.end1452 ], [ 0, %for.cond1432.preheader ]
  %j.8 = phi i32 [ %j.10, %for.inc1656 ], [ %j.6, %while.end1452 ], [ %j.6, %for.cond1432.preheader ]
  %i.12 = phi i32 [ %i.14, %for.inc1656 ], [ %nSelectors.0, %while.end1452 ], [ 0, %for.cond1432.preheader ]
  %cmp1460 = icmp slt i32 %t.0, %nGroups.3
  br i1 %cmp1460, label %sw.bb1463, label %for.cond1659.preheader

for.cond1659.preheader:                           ; preds = %for.cond1459
  %cmp16604938 = icmp sgt i32 %nGroups.3, 0
  br i1 %cmp16604938, label %for.cond1663.preheader.lr.ph, label %for.end1719

for.cond1663.preheader.lr.ph:                     ; preds = %for.cond1659.preheader
  %cmp16644932 = icmp sgt i32 %alphaSize.4, 0
  br label %for.cond1663.preheader

sw.bb1463:                                        ; preds = %for.cond1459, %if.end
  %curr.1 = phi i32 [ %12, %if.end ], [ %curr.0, %for.cond1459 ]
  %nSelectors.3 = phi i32 [ %21, %if.end ], [ %nSelectors.2, %for.cond1459 ]
  %nGroups.4 = phi i32 [ %22, %if.end ], [ %nGroups.3, %for.cond1459 ]
  %alphaSize.5 = phi i32 [ %23, %if.end ], [ %alphaSize.4, %for.cond1459 ]
  %t.1 = phi i32 [ %24, %if.end ], [ %t.0, %for.cond1459 ]
  %j.9 = phi i32 [ %25, %if.end ], [ %j.8, %for.cond1459 ]
  %i.13 = phi i32 [ %26, %if.end ], [ %i.12, %for.cond1459 ]
  store i32 33, i32* %state, align 4, !tbaa !3
  %bsLive1467 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %364 = load i32* %bsLive1467, align 4, !tbaa !3
  %cmp14684838 = icmp sgt i32 %364, 4
  %bsBuff1473.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp14684838, label %if.then1470, label %if.end1480.lr.ph

if.end1480.lr.ph:                                 ; preds = %sw.bb1463
  %.pre5242 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1482.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5242, i64 0, i32 1
  %.pre5334 = load i32* %avail_in1482.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1480

if.then1470:                                      ; preds = %sw.bb1463, %while.body1466.backedge
  %.lcssa4836 = phi i32 [ %376, %while.body1466.backedge ], [ %364, %sw.bb1463 ]
  %365 = load i32* %bsBuff1473.pre, align 4, !tbaa !3
  %sub1475 = add nsw i32 %.lcssa4836, -5
  %shr1476 = lshr i32 %365, %sub1475
  %and1477 = and i32 %shr1476, 31
  store i32 %sub1475, i32* %bsLive1467, align 4, !tbaa !3
  br label %for.cond1515

if.end1480:                                       ; preds = %if.end1480.lr.ph, %while.body1466.backedge
  %366 = phi i32 [ %.pre5334, %if.end1480.lr.ph ], [ %dec1501, %while.body1466.backedge ]
  %367 = phi i32 [ %364, %if.end1480.lr.ph ], [ %376, %while.body1466.backedge ]
  %368 = phi %struct.bz_stream* [ %.pre5242, %if.end1480.lr.ph ], [ %372, %while.body1466.backedge ]
  %cmp1483 = icmp eq i32 %366, 0
  br i1 %cmp1483, label %save_state_and_return, label %if.end1486

if.end1486:                                       ; preds = %if.end1480
  %369 = load i32* %bsBuff1473.pre, align 4, !tbaa !3
  %shl1488 = shl i32 %369, 8
  %next_in1490 = getelementptr inbounds %struct.bz_stream* %368, i64 0, i32 0
  %370 = load i8** %next_in1490, align 8, !tbaa !0
  %371 = load i8* %370, align 1, !tbaa !1
  %conv1491 = zext i8 %371 to i32
  %or1492 = or i32 %conv1491, %shl1488
  store i32 %or1492, i32* %bsBuff1473.pre, align 4, !tbaa !3
  %add1495 = add nsw i32 %367, 8
  store i32 %add1495, i32* %bsLive1467, align 4, !tbaa !3
  %incdec.ptr1498 = getelementptr inbounds i8* %370, i64 1
  store i8* %incdec.ptr1498, i8** %next_in1490, align 8, !tbaa !0
  %372 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1500 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 1
  %373 = load i32* %avail_in1500, align 4, !tbaa !3
  %dec1501 = add i32 %373, -1
  store i32 %dec1501, i32* %avail_in1500, align 4, !tbaa !3
  %total_in_lo321503 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 2
  %374 = load i32* %total_in_lo321503, align 4, !tbaa !3
  %inc1504 = add i32 %374, 1
  store i32 %inc1504, i32* %total_in_lo321503, align 4, !tbaa !3
  %cmp1507 = icmp eq i32 %inc1504, 0
  br i1 %cmp1507, label %if.then1509, label %while.body1466.backedge

if.then1509:                                      ; preds = %if.end1486
  %total_in_hi321511 = getelementptr inbounds %struct.bz_stream* %372, i64 0, i32 3
  %375 = load i32* %total_in_hi321511, align 4, !tbaa !3
  %inc1512 = add i32 %375, 1
  store i32 %inc1512, i32* %total_in_hi321511, align 4, !tbaa !3
  br label %while.body1466.backedge

while.body1466.backedge:                          ; preds = %if.then1509, %if.end1486
  %376 = load i32* %bsLive1467, align 4, !tbaa !3
  %cmp1468 = icmp sgt i32 %376, 4
  br i1 %cmp1468, label %if.then1470, label %if.end1480

for.cond1515:                                     ; preds = %while.end1647, %if.then1470
  %curr.2 = phi i32 [ %curr.4, %while.end1647 ], [ %and1477, %if.then1470 ]
  %nSelectors.4 = phi i32 [ %nSelectors.6, %while.end1647 ], [ %nSelectors.3, %if.then1470 ]
  %nGroups.5 = phi i32 [ %nGroups.7, %while.end1647 ], [ %nGroups.4, %if.then1470 ]
  %alphaSize.6 = phi i32 [ %alphaSize.8, %while.end1647 ], [ %alphaSize.5, %if.then1470 ]
  %t.2 = phi i32 [ %t.4, %while.end1647 ], [ %t.1, %if.then1470 ]
  %j.10 = phi i32 [ %j.12, %while.end1647 ], [ %j.9, %if.then1470 ]
  %i.14 = phi i32 [ %inc1654, %while.end1647 ], [ 0, %if.then1470 ]
  %cmp1516 = icmp slt i32 %i.14, %alphaSize.6
  br i1 %cmp1516, label %while.body1520, label %for.inc1656

while.body1520:                                   ; preds = %if.then1642, %if.else1644, %for.cond1515
  %curr.3 = phi i32 [ %inc1643, %if.then1642 ], [ %curr.2, %for.cond1515 ], [ %dec1645, %if.else1644 ]
  %nSelectors.5 = phi i32 [ %nSelectors.7, %if.then1642 ], [ %nSelectors.4, %for.cond1515 ], [ %nSelectors.7, %if.else1644 ]
  %nGroups.6 = phi i32 [ %nGroups.8, %if.then1642 ], [ %nGroups.5, %for.cond1515 ], [ %nGroups.8, %if.else1644 ]
  %alphaSize.7 = phi i32 [ %alphaSize.9, %if.then1642 ], [ %alphaSize.6, %for.cond1515 ], [ %alphaSize.9, %if.else1644 ]
  %t.3 = phi i32 [ %t.5, %if.then1642 ], [ %t.2, %for.cond1515 ], [ %t.5, %if.else1644 ]
  %j.11 = phi i32 [ %j.13, %if.then1642 ], [ %j.10, %for.cond1515 ], [ %j.13, %if.else1644 ]
  %i.15 = phi i32 [ %i.17, %if.then1642 ], [ %i.14, %for.cond1515 ], [ %i.17, %if.else1644 ]
  %curr.3.off = add i32 %curr.3, -1
  %377 = icmp ugt i32 %curr.3.off, 19
  br i1 %377, label %save_state_and_return, label %sw.bb1528

sw.bb1528:                                        ; preds = %while.body1520, %if.end
  %curr.4 = phi i32 [ %12, %if.end ], [ %curr.3, %while.body1520 ]
  %nSelectors.6 = phi i32 [ %21, %if.end ], [ %nSelectors.5, %while.body1520 ]
  %nGroups.7 = phi i32 [ %22, %if.end ], [ %nGroups.6, %while.body1520 ]
  %alphaSize.8 = phi i32 [ %23, %if.end ], [ %alphaSize.7, %while.body1520 ]
  %t.4 = phi i32 [ %24, %if.end ], [ %t.3, %while.body1520 ]
  %j.12 = phi i32 [ %25, %if.end ], [ %j.11, %while.body1520 ]
  %i.16 = phi i32 [ %26, %if.end ], [ %i.15, %while.body1520 ]
  store i32 34, i32* %state, align 4, !tbaa !3
  %bsLive1532 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %378 = load i32* %bsLive1532, align 4, !tbaa !3
  %cmp15334831 = icmp sgt i32 %378, 0
  %bsBuff1538.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp15334831, label %if.then1535, label %if.end1546.lr.ph

if.end1546.lr.ph:                                 ; preds = %sw.bb1528
  %.pre5243 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1548.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5243, i64 0, i32 1
  %.pre5335 = load i32* %avail_in1548.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1546

if.then1535:                                      ; preds = %sw.bb1528, %while.body1531.backedge
  %.lcssa4829 = phi i32 [ %391, %while.body1531.backedge ], [ %378, %sw.bb1528 ]
  %379 = load i32* %bsBuff1538.pre, align 4, !tbaa !3
  %sub1540 = add nsw i32 %.lcssa4829, -1
  store i32 %sub1540, i32* %bsLive1532, align 4, !tbaa !3
  %380 = shl i32 1, %sub1540
  %conv15454723 = and i32 %379, %380
  %cmp1582 = icmp eq i32 %conv15454723, 0
  br i1 %cmp1582, label %while.end1647, label %sw.bb1586

if.end1546:                                       ; preds = %if.end1546.lr.ph, %while.body1531.backedge
  %381 = phi i32 [ %.pre5335, %if.end1546.lr.ph ], [ %dec1567, %while.body1531.backedge ]
  %382 = phi i32 [ %378, %if.end1546.lr.ph ], [ %391, %while.body1531.backedge ]
  %383 = phi %struct.bz_stream* [ %.pre5243, %if.end1546.lr.ph ], [ %387, %while.body1531.backedge ]
  %cmp1549 = icmp eq i32 %381, 0
  br i1 %cmp1549, label %save_state_and_return, label %if.end1552

if.end1552:                                       ; preds = %if.end1546
  %384 = load i32* %bsBuff1538.pre, align 4, !tbaa !3
  %shl1554 = shl i32 %384, 8
  %next_in1556 = getelementptr inbounds %struct.bz_stream* %383, i64 0, i32 0
  %385 = load i8** %next_in1556, align 8, !tbaa !0
  %386 = load i8* %385, align 1, !tbaa !1
  %conv1557 = zext i8 %386 to i32
  %or1558 = or i32 %conv1557, %shl1554
  store i32 %or1558, i32* %bsBuff1538.pre, align 4, !tbaa !3
  %add1561 = add nsw i32 %382, 8
  store i32 %add1561, i32* %bsLive1532, align 4, !tbaa !3
  %incdec.ptr1564 = getelementptr inbounds i8* %385, i64 1
  store i8* %incdec.ptr1564, i8** %next_in1556, align 8, !tbaa !0
  %387 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1566 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 1
  %388 = load i32* %avail_in1566, align 4, !tbaa !3
  %dec1567 = add i32 %388, -1
  store i32 %dec1567, i32* %avail_in1566, align 4, !tbaa !3
  %total_in_lo321569 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 2
  %389 = load i32* %total_in_lo321569, align 4, !tbaa !3
  %inc1570 = add i32 %389, 1
  store i32 %inc1570, i32* %total_in_lo321569, align 4, !tbaa !3
  %cmp1573 = icmp eq i32 %inc1570, 0
  br i1 %cmp1573, label %if.then1575, label %while.body1531.backedge

if.then1575:                                      ; preds = %if.end1552
  %total_in_hi321577 = getelementptr inbounds %struct.bz_stream* %387, i64 0, i32 3
  %390 = load i32* %total_in_hi321577, align 4, !tbaa !3
  %inc1578 = add i32 %390, 1
  store i32 %inc1578, i32* %total_in_hi321577, align 4, !tbaa !3
  br label %while.body1531.backedge

while.body1531.backedge:                          ; preds = %if.then1575, %if.end1552
  %391 = load i32* %bsLive1532, align 4, !tbaa !3
  %cmp1533 = icmp sgt i32 %391, 0
  br i1 %cmp1533, label %if.then1535, label %if.end1546

sw.bb1586:                                        ; preds = %if.end.sw.bb1586_crit_edge, %if.then1535
  %392 = phi i32 [ %.pre5336, %if.end.sw.bb1586_crit_edge ], [ %sub1540, %if.then1535 ]
  %curr.5 = phi i32 [ %12, %if.end.sw.bb1586_crit_edge ], [ %curr.4, %if.then1535 ]
  %nSelectors.7 = phi i32 [ %21, %if.end.sw.bb1586_crit_edge ], [ %nSelectors.6, %if.then1535 ]
  %nGroups.8 = phi i32 [ %22, %if.end.sw.bb1586_crit_edge ], [ %nGroups.7, %if.then1535 ]
  %alphaSize.9 = phi i32 [ %23, %if.end.sw.bb1586_crit_edge ], [ %alphaSize.8, %if.then1535 ]
  %t.5 = phi i32 [ %24, %if.end.sw.bb1586_crit_edge ], [ %t.4, %if.then1535 ]
  %j.13 = phi i32 [ %25, %if.end.sw.bb1586_crit_edge ], [ %j.12, %if.then1535 ]
  %i.17 = phi i32 [ %26, %if.end.sw.bb1586_crit_edge ], [ %i.16, %if.then1535 ]
  store i32 35, i32* %state, align 4, !tbaa !3
  %bsLive1590 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp15914824 = icmp sgt i32 %392, 0
  %bsBuff1596.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp15914824, label %if.then1593, label %if.end1604.lr.ph

if.end1604.lr.ph:                                 ; preds = %sw.bb1586
  %.pre5244 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1606.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5244, i64 0, i32 1
  %.pre5337 = load i32* %avail_in1606.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1604

if.then1593:                                      ; preds = %sw.bb1586, %while.body1589.backedge
  %.lcssa4822 = phi i32 [ %405, %while.body1589.backedge ], [ %392, %sw.bb1586 ]
  %393 = load i32* %bsBuff1596.pre, align 4, !tbaa !3
  %sub1598 = add nsw i32 %.lcssa4822, -1
  store i32 %sub1598, i32* %bsLive1590, align 4, !tbaa !3
  %394 = shl i32 1, %sub1598
  %conv16034722 = and i32 %393, %394
  %cmp1640 = icmp eq i32 %conv16034722, 0
  br i1 %cmp1640, label %if.then1642, label %if.else1644

if.end1604:                                       ; preds = %if.end1604.lr.ph, %while.body1589.backedge
  %395 = phi i32 [ %.pre5337, %if.end1604.lr.ph ], [ %dec1625, %while.body1589.backedge ]
  %396 = phi i32 [ %392, %if.end1604.lr.ph ], [ %405, %while.body1589.backedge ]
  %397 = phi %struct.bz_stream* [ %.pre5244, %if.end1604.lr.ph ], [ %401, %while.body1589.backedge ]
  %cmp1607 = icmp eq i32 %395, 0
  br i1 %cmp1607, label %save_state_and_return, label %if.end1610

if.end1610:                                       ; preds = %if.end1604
  %398 = load i32* %bsBuff1596.pre, align 4, !tbaa !3
  %shl1612 = shl i32 %398, 8
  %next_in1614 = getelementptr inbounds %struct.bz_stream* %397, i64 0, i32 0
  %399 = load i8** %next_in1614, align 8, !tbaa !0
  %400 = load i8* %399, align 1, !tbaa !1
  %conv1615 = zext i8 %400 to i32
  %or1616 = or i32 %conv1615, %shl1612
  store i32 %or1616, i32* %bsBuff1596.pre, align 4, !tbaa !3
  %add1619 = add nsw i32 %396, 8
  store i32 %add1619, i32* %bsLive1590, align 4, !tbaa !3
  %incdec.ptr1622 = getelementptr inbounds i8* %399, i64 1
  store i8* %incdec.ptr1622, i8** %next_in1614, align 8, !tbaa !0
  %401 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1624 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 1
  %402 = load i32* %avail_in1624, align 4, !tbaa !3
  %dec1625 = add i32 %402, -1
  store i32 %dec1625, i32* %avail_in1624, align 4, !tbaa !3
  %total_in_lo321627 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 2
  %403 = load i32* %total_in_lo321627, align 4, !tbaa !3
  %inc1628 = add i32 %403, 1
  store i32 %inc1628, i32* %total_in_lo321627, align 4, !tbaa !3
  %cmp1631 = icmp eq i32 %inc1628, 0
  br i1 %cmp1631, label %if.then1633, label %while.body1589.backedge

if.then1633:                                      ; preds = %if.end1610
  %total_in_hi321635 = getelementptr inbounds %struct.bz_stream* %401, i64 0, i32 3
  %404 = load i32* %total_in_hi321635, align 4, !tbaa !3
  %inc1636 = add i32 %404, 1
  store i32 %inc1636, i32* %total_in_hi321635, align 4, !tbaa !3
  br label %while.body1589.backedge

while.body1589.backedge:                          ; preds = %if.then1633, %if.end1610
  %405 = load i32* %bsLive1590, align 4, !tbaa !3
  %cmp1591 = icmp sgt i32 %405, 0
  br i1 %cmp1591, label %if.then1593, label %if.end1604

if.then1642:                                      ; preds = %if.then1593
  %inc1643 = add nsw i32 %curr.5, 1
  br label %while.body1520

if.else1644:                                      ; preds = %if.then1593
  %dec1645 = add nsw i32 %curr.5, -1
  br label %while.body1520

while.end1647:                                    ; preds = %if.then1535
  %conv1648 = trunc i32 %curr.4 to i8
  %idxprom1649 = sext i32 %i.16 to i64
  %idxprom1650 = sext i32 %t.4 to i64
  %arrayidx1652 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %idxprom1650, i64 %idxprom1649
  store i8 %conv1648, i8* %arrayidx1652, align 1, !tbaa !1
  %inc1654 = add nsw i32 %i.16, 1
  br label %for.cond1515

for.inc1656:                                      ; preds = %for.cond1515
  %inc1657 = add nsw i32 %t.2, 1
  br label %for.cond1459

for.cond1663.preheader:                           ; preds = %for.end1701, %for.cond1663.preheader.lr.ph
  %indvars.iv5178 = phi i64 [ 0, %for.cond1663.preheader.lr.ph ], [ %indvars.iv.next5179, %for.end1701 ]
  br i1 %cmp16644932, label %for.body1666, label %for.end1701

for.body1666:                                     ; preds = %for.cond1663.preheader, %for.body1666
  %indvars.iv5174 = phi i64 [ %indvars.iv.next5175, %for.body1666 ], [ 0, %for.cond1663.preheader ]
  %minLen.04935 = phi i32 [ %minLen.1, %for.body1666 ], [ 32, %for.cond1663.preheader ]
  %maxLen.04934 = phi i32 [ %conv1672.maxLen.0, %for.body1666 ], [ 0, %for.cond1663.preheader ]
  %arrayidx1671 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv5178, i64 %indvars.iv5174
  %406 = load i8* %arrayidx1671, align 1, !tbaa !1
  %conv1672 = zext i8 %406 to i32
  %cmp1673 = icmp sgt i32 %conv1672, %maxLen.04934
  %conv1672.maxLen.0 = select i1 %cmp1673, i32 %conv1672, i32 %maxLen.04934
  %cmp1689 = icmp slt i32 %conv1672, %minLen.04935
  %minLen.1 = select i1 %cmp1689, i32 %conv1672, i32 %minLen.04935
  %indvars.iv.next5175 = add i64 %indvars.iv5174, 1
  %lftr.wideiv5176 = trunc i64 %indvars.iv.next5175 to i32
  %exitcond5177 = icmp eq i32 %lftr.wideiv5176, %alphaSize.4
  br i1 %exitcond5177, label %for.end1701, label %for.body1666

for.end1701:                                      ; preds = %for.body1666, %for.cond1663.preheader
  %minLen.0.lcssa = phi i32 [ 32, %for.cond1663.preheader ], [ %minLen.1, %for.body1666 ]
  %maxLen.0.lcssa = phi i32 [ 0, %for.cond1663.preheader ], [ %conv1672.maxLen.0, %for.body1666 ]
  %arrayidx1704 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %indvars.iv5178, i64 0
  %arrayidx1707 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %indvars.iv5178, i64 0
  %arrayidx1710 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %indvars.iv5178, i64 0
  %arrayidx1714 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv5178, i64 0
  call void @BZ2_hbCreateDecodeTables(i32* %arrayidx1704, i32* %arrayidx1707, i32* %arrayidx1710, i8* %arrayidx1714, i32 %minLen.0.lcssa, i32 %maxLen.0.lcssa, i32 %alphaSize.4) #4
  %arrayidx1716 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %indvars.iv5178
  store i32 %minLen.0.lcssa, i32* %arrayidx1716, align 4, !tbaa !3
  %indvars.iv.next5179 = add i64 %indvars.iv5178, 1
  %lftr.wideiv5180 = trunc i64 %indvars.iv.next5179 to i32
  %exitcond5181 = icmp eq i32 %lftr.wideiv5180, %nGroups.3
  br i1 %exitcond5181, label %for.end1719, label %for.cond1663.preheader

for.end1719:                                      ; preds = %for.end1701, %for.cond1659.preheader
  %t.6.lcssa = phi i32 [ 0, %for.cond1659.preheader ], [ %nGroups.3, %for.end1701 ]
  %nInUse1720 = getelementptr inbounds %struct.DState* %s, i64 0, i32 27
  %407 = load i32* %nInUse1720, align 4, !tbaa !3
  %blockSize100k1722 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  %408 = load i32* %blockSize100k1722, align 4, !tbaa !3
  %scevgep = getelementptr %struct.DState* %s, i64 0, i32 16, i64 0
  %scevgep5173 = bitcast i32* %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep5173, i8 0, i64 1024, i32 4, i1 false)
  %add1721 = add nsw i32 %407, 1
  %mul1723 = mul nsw i32 %408, 100000
  br label %for.cond1740.preheader

for.cond1740.preheader:                           ; preds = %for.end1719, %for.end1752
  %indvars.iv5166 = phi i64 [ 15, %for.end1719 ], [ %indvars.iv.next5167, %for.end1752 ]
  %indvars.iv5164 = phi i64 [ 4095, %for.end1719 ], [ %indvars.iv.next5165, %for.end1752 ]
  %indvars.iv5162 = phi i32 [ 4080, %for.end1719 ], [ %indvars.iv.next5163, %for.end1752 ]
  %409 = shl i64 %indvars.iv5166, 4
  br label %for.body1743

for.body1743:                                     ; preds = %for.cond1740.preheader, %for.body1743
  %indvars.iv5160 = phi i64 [ %indvars.iv5164, %for.cond1740.preheader ], [ %indvars.iv.next5161, %for.body1743 ]
  %jj.04927 = phi i32 [ 15, %for.cond1740.preheader ], [ %dec1751, %for.body1743 ]
  %410 = trunc i64 %409 to i32
  %add1745 = add nsw i32 %jj.04927, %410
  %conv1746 = trunc i32 %add1745 to i8
  %arrayidx1748 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5160
  store i8 %conv1746, i8* %arrayidx1748, align 1, !tbaa !1
  %indvars.iv.next5161 = add i64 %indvars.iv5160, -1
  %dec1751 = add nsw i32 %jj.04927, -1
  %cmp1741 = icmp sgt i32 %jj.04927, 0
  br i1 %cmp1741, label %for.body1743, label %for.end1752

for.end1752:                                      ; preds = %for.body1743
  %indvars.iv.next5165 = add i64 %indvars.iv5164, -16
  %arrayidx1755 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5166
  store i32 %indvars.iv5162, i32* %arrayidx1755, align 4, !tbaa !3
  %indvars.iv.next5167 = add i64 %indvars.iv5166, -1
  %411 = trunc i64 %indvars.iv5166 to i32
  %cmp1737 = icmp sgt i32 %411, 0
  %indvars.iv.next5163 = add i32 %indvars.iv5162, -16
  br i1 %cmp1737, label %for.cond1740.preheader, label %if.then1761

if.then1761:                                      ; preds = %for.end1752
  %cmp1763 = icmp slt i32 %nSelectors.2, 1
  br i1 %cmp1763, label %save_state_and_return, label %if.end1766

if.end1766:                                       ; preds = %if.then1761
  %arrayidx1769 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 0
  %412 = load i8* %arrayidx1769, align 1, !tbaa !1
  %conv1770 = zext i8 %412 to i32
  %idxprom1771 = zext i8 %412 to i64
  %arrayidx1773 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom1771
  %413 = load i32* %arrayidx1773, align 4, !tbaa !3
  %arrayidx1777 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom1771, i64 0
  %arrayidx1781 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom1771, i64 0
  %arrayidx1785 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom1771, i64 0
  br label %sw.bb1788

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
  store i32 36, i32* %state, align 4, !tbaa !3
  %bsLive1792 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %414 = load i32* %bsLive1792, align 4, !tbaa !3
  %cmp17934924 = icmp slt i32 %414, %zn.0
  %bsBuff1814 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp17934924, label %if.end1807.lr.ph, label %if.then1795

if.end1807.lr.ph:                                 ; preds = %sw.bb1788
  %.pre5245 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1809.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5245, i64 0, i32 1
  %.pre5338 = load i32* %avail_in1809.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1807

if.then1795:                                      ; preds = %sw.bb1788, %while.body1791.backedge
  %.lcssa4922 = phi i32 [ %426, %while.body1791.backedge ], [ %414, %sw.bb1788 ]
  %415 = load i32* %bsBuff1814, align 4, !tbaa !3
  %sub1800 = sub nsw i32 %.lcssa4922, %zn.0
  %shr1801 = lshr i32 %415, %sub1800
  %shl1802 = shl i32 1, %zn.0
  %sub1803 = add nsw i32 %shl1802, -1
  %and1804 = and i32 %shr1801, %sub1803
  store i32 %sub1800, i32* %bsLive1792, align 4, !tbaa !3
  br label %while.body1843

if.end1807:                                       ; preds = %if.end1807.lr.ph, %while.body1791.backedge
  %416 = phi i32 [ %.pre5338, %if.end1807.lr.ph ], [ %dec1828, %while.body1791.backedge ]
  %417 = phi i32 [ %414, %if.end1807.lr.ph ], [ %426, %while.body1791.backedge ]
  %418 = phi %struct.bz_stream* [ %.pre5245, %if.end1807.lr.ph ], [ %422, %while.body1791.backedge ]
  %cmp1810 = icmp eq i32 %416, 0
  br i1 %cmp1810, label %save_state_and_return, label %if.end1813

if.end1813:                                       ; preds = %if.end1807
  %419 = load i32* %bsBuff1814, align 4, !tbaa !3
  %shl1815 = shl i32 %419, 8
  %next_in1817 = getelementptr inbounds %struct.bz_stream* %418, i64 0, i32 0
  %420 = load i8** %next_in1817, align 8, !tbaa !0
  %421 = load i8* %420, align 1, !tbaa !1
  %conv1818 = zext i8 %421 to i32
  %or1819 = or i32 %conv1818, %shl1815
  store i32 %or1819, i32* %bsBuff1814, align 4, !tbaa !3
  %add1822 = add nsw i32 %417, 8
  store i32 %add1822, i32* %bsLive1792, align 4, !tbaa !3
  %incdec.ptr1825 = getelementptr inbounds i8* %420, i64 1
  store i8* %incdec.ptr1825, i8** %next_in1817, align 8, !tbaa !0
  %422 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1827 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 1
  %423 = load i32* %avail_in1827, align 4, !tbaa !3
  %dec1828 = add i32 %423, -1
  store i32 %dec1828, i32* %avail_in1827, align 4, !tbaa !3
  %total_in_lo321830 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 2
  %424 = load i32* %total_in_lo321830, align 4, !tbaa !3
  %inc1831 = add i32 %424, 1
  store i32 %inc1831, i32* %total_in_lo321830, align 4, !tbaa !3
  %cmp1834 = icmp eq i32 %inc1831, 0
  br i1 %cmp1834, label %if.then1836, label %while.body1791.backedge

if.then1836:                                      ; preds = %if.end1813
  %total_in_hi321838 = getelementptr inbounds %struct.bz_stream* %422, i64 0, i32 3
  %425 = load i32* %total_in_hi321838, align 4, !tbaa !3
  %inc1839 = add i32 %425, 1
  store i32 %inc1839, i32* %total_in_hi321838, align 4, !tbaa !3
  br label %while.body1791.backedge

while.body1791.backedge:                          ; preds = %if.then1836, %if.end1813
  %426 = load i32* %bsLive1792, align 4, !tbaa !3
  %cmp1793 = icmp slt i32 %426, %zn.0
  br i1 %cmp1793, label %if.end1807, label %if.then1795

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
  %cmp1844 = icmp sgt i32 %zn.1, 20
  br i1 %cmp1844, label %save_state_and_return, label %if.end1847

if.end1847:                                       ; preds = %while.body1843
  %idxprom1848 = sext i32 %zn.1 to i64
  %arrayidx1849 = getelementptr inbounds i32* %gLimit.2, i64 %idxprom1848
  %428 = load i32* %arrayidx1849, align 4, !tbaa !3
  %cmp1850 = icmp sgt i32 %zvec.0, %428
  br i1 %cmp1850, label %if.end1853, label %while.end1909

if.end1853:                                       ; preds = %if.end1847
  %inc1854 = add nsw i32 %zn.1, 1
  %bsLive1859.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %sw.bb1855

sw.bb1855:                                        ; preds = %if.end.sw.bb1855_crit_edge, %if.end1853
  %bsLive1859.pre-phi = phi i32* [ %bsLive1859.phi.trans.insert, %if.end.sw.bb1855_crit_edge ], [ %bsLive1859.pre, %if.end1853 ]
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
  store i32 37, i32* %state, align 4, !tbaa !3
  %cmp18604845 = icmp sgt i32 %429, 0
  %bsBuff1865.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp18604845, label %if.then1862, label %if.end1872.lr.ph

if.end1872.lr.ph:                                 ; preds = %sw.bb1855
  %.pre5246 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1874.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5246, i64 0, i32 1
  %.pre5340 = load i32* %avail_in1874.phi.trans.insert, align 4, !tbaa !3
  br label %if.end1872

if.then1862:                                      ; preds = %sw.bb1855, %while.body1858.backedge
  %.lcssa4843 = phi i32 [ %441, %while.body1858.backedge ], [ %429, %sw.bb1855 ]
  %430 = load i32* %bsBuff1865.pre, align 4, !tbaa !3
  %sub1867 = add nsw i32 %.lcssa4843, -1
  %shr1868 = lshr i32 %430, %sub1867
  %and1869 = and i32 %shr1868, 1
  store i32 %sub1867, i32* %bsLive1859.pre-phi, align 4, !tbaa !3
  %shl1907 = shl i32 %zvec.1, 1
  %or1908 = or i32 %and1869, %shl1907
  br label %while.body1843

if.end1872:                                       ; preds = %if.end1872.lr.ph, %while.body1858.backedge
  %431 = phi i32 [ %.pre5340, %if.end1872.lr.ph ], [ %dec1893, %while.body1858.backedge ]
  %432 = phi i32 [ %429, %if.end1872.lr.ph ], [ %441, %while.body1858.backedge ]
  %433 = phi %struct.bz_stream* [ %.pre5246, %if.end1872.lr.ph ], [ %437, %while.body1858.backedge ]
  %cmp1875 = icmp eq i32 %431, 0
  br i1 %cmp1875, label %save_state_and_return, label %if.end1878

if.end1878:                                       ; preds = %if.end1872
  %434 = load i32* %bsBuff1865.pre, align 4, !tbaa !3
  %shl1880 = shl i32 %434, 8
  %next_in1882 = getelementptr inbounds %struct.bz_stream* %433, i64 0, i32 0
  %435 = load i8** %next_in1882, align 8, !tbaa !0
  %436 = load i8* %435, align 1, !tbaa !1
  %conv1883 = zext i8 %436 to i32
  %or1884 = or i32 %conv1883, %shl1880
  store i32 %or1884, i32* %bsBuff1865.pre, align 4, !tbaa !3
  %add1887 = add nsw i32 %432, 8
  store i32 %add1887, i32* %bsLive1859.pre-phi, align 4, !tbaa !3
  %incdec.ptr1890 = getelementptr inbounds i8* %435, i64 1
  store i8* %incdec.ptr1890, i8** %next_in1882, align 8, !tbaa !0
  %437 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in1892 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 1
  %438 = load i32* %avail_in1892, align 4, !tbaa !3
  %dec1893 = add i32 %438, -1
  store i32 %dec1893, i32* %avail_in1892, align 4, !tbaa !3
  %total_in_lo321895 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 2
  %439 = load i32* %total_in_lo321895, align 4, !tbaa !3
  %inc1896 = add i32 %439, 1
  store i32 %inc1896, i32* %total_in_lo321895, align 4, !tbaa !3
  %cmp1899 = icmp eq i32 %inc1896, 0
  br i1 %cmp1899, label %if.then1901, label %while.body1858.backedge

if.then1901:                                      ; preds = %if.end1878
  %total_in_hi321903 = getelementptr inbounds %struct.bz_stream* %437, i64 0, i32 3
  %440 = load i32* %total_in_hi321903, align 4, !tbaa !3
  %inc1904 = add i32 %440, 1
  store i32 %inc1904, i32* %total_in_hi321903, align 4, !tbaa !3
  br label %while.body1858.backedge

while.body1858.backedge:                          ; preds = %if.then1901, %if.end1878
  %441 = load i32* %bsLive1859.pre-phi, align 4, !tbaa !3
  %cmp1860 = icmp sgt i32 %441, 0
  br i1 %cmp1860, label %if.then1862, label %if.end1872

while.end1909:                                    ; preds = %if.end1847
  %arrayidx1911 = getelementptr inbounds i32* %gBase.2, i64 %idxprom1848
  %442 = load i32* %arrayidx1911, align 4, !tbaa !3
  %sub1912 = sub nsw i32 %zvec.0, %442
  %443 = icmp ugt i32 %sub1912, 257
  br i1 %443, label %save_state_and_return, label %if.end1922

if.end1922:                                       ; preds = %while.end1909
  %idxprom1926 = sext i32 %sub1912 to i64
  %arrayidx1927 = getelementptr inbounds i32* %gPerm.2, i64 %idxprom1926
  %444 = load i32* %arrayidx1927, align 4, !tbaa !3
  br label %while.body1929

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
  %cmp1930 = icmp eq i32 %nextSym.0, %EOB.3
  br i1 %cmp1930, label %while.end2549, label %if.end1933

if.end1933:                                       ; preds = %while.body1929
  %445 = icmp ult i32 %nextSym.0, 2
  br i1 %445, label %do.body, label %if.else2174

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
  ]

if.then1942:                                      ; preds = %do.body
  %add1944 = add nsw i32 %es.1, %N.1
  br label %if.end1952

if.then1948:                                      ; preds = %do.body
  %mul1949 = shl i32 %N.1, 1
  %add1950 = add nsw i32 %es.1, %mul1949
  br label %if.end1952

if.end1952:                                       ; preds = %do.body, %if.then1948, %if.then1942
  %es.2 = phi i32 [ %add1944, %if.then1942 ], [ %add1950, %if.then1948 ], [ %es.1, %do.body ]
  %mul1953 = shl nsw i32 %N.1, 1
  %cmp1954 = icmp eq i32 %groupPos.5, 0
  br i1 %cmp1954, label %if.then1956, label %if.end1981

if.then1956:                                      ; preds = %if.end1952
  %inc1957 = add nsw i32 %groupNo.5, 1
  %cmp1958 = icmp slt i32 %inc1957, %nSelectors.12
  br i1 %cmp1958, label %if.end1961, label %save_state_and_return

if.end1961:                                       ; preds = %if.then1956
  %idxprom1962 = sext i32 %inc1957 to i64
  %arrayidx1964 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %idxprom1962
  %446 = load i8* %arrayidx1964, align 1, !tbaa !1
  %conv1965 = zext i8 %446 to i32
  %idxprom1966 = zext i8 %446 to i64
  %arrayidx1968 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom1966
  %447 = load i32* %arrayidx1968, align 4, !tbaa !3
  %arrayidx1972 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom1966, i64 0
  %arrayidx1976 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom1966, i64 0
  %arrayidx1980 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom1966, i64 0
  br label %if.end1981

if.end1981:                                       ; preds = %if.end1961, %if.end1952
  %gPerm.6 = phi i32* [ %arrayidx1976, %if.end1961 ], [ %gPerm.5, %if.end1952 ]
  %gBase.6 = phi i32* [ %arrayidx1980, %if.end1961 ], [ %gBase.5, %if.end1952 ]
  %gLimit.6 = phi i32* [ %arrayidx1972, %if.end1961 ], [ %gLimit.5, %if.end1952 ]
  %gMinlen.6 = phi i32 [ %447, %if.end1961 ], [ %gMinlen.5, %if.end1952 ]
  %gSel.6 = phi i32 [ %conv1965, %if.end1961 ], [ %gSel.5, %if.end1952 ]
  %groupPos.6 = phi i32 [ 50, %if.end1961 ], [ %groupPos.5, %if.end1952 ]
  %groupNo.6 = phi i32 [ %inc1957, %if.end1961 ], [ %groupNo.5, %if.end1952 ]
  %dec1982 = add nsw i32 %groupPos.6, -1
  br label %sw.bb1983

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
  store i32 38, i32* %state, align 4, !tbaa !3
  %bsLive1987 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %448 = load i32* %bsLive1987, align 4, !tbaa !3
  %cmp19884888 = icmp slt i32 %448, %zn.5
  %bsBuff2009 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp19884888, label %if.end2002.lr.ph, label %if.then1990

if.end2002.lr.ph:                                 ; preds = %sw.bb1983
  %.pre5248 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2004.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5248, i64 0, i32 1
  %.pre5344 = load i32* %avail_in2004.phi.trans.insert, align 4, !tbaa !3
  br label %if.end2002

if.then1990:                                      ; preds = %sw.bb1983, %while.body1986.backedge
  %.lcssa4886 = phi i32 [ %460, %while.body1986.backedge ], [ %448, %sw.bb1983 ]
  %449 = load i32* %bsBuff2009, align 4, !tbaa !3
  %sub1995 = sub nsw i32 %.lcssa4886, %zn.5
  %shr1996 = lshr i32 %449, %sub1995
  %shl1997 = shl i32 1, %zn.5
  %sub1998 = add nsw i32 %shl1997, -1
  %and1999 = and i32 %shr1996, %sub1998
  store i32 %sub1995, i32* %bsLive1987, align 4, !tbaa !3
  br label %while.body2038

if.end2002:                                       ; preds = %if.end2002.lr.ph, %while.body1986.backedge
  %450 = phi i32 [ %.pre5344, %if.end2002.lr.ph ], [ %dec2023, %while.body1986.backedge ]
  %451 = phi i32 [ %448, %if.end2002.lr.ph ], [ %460, %while.body1986.backedge ]
  %452 = phi %struct.bz_stream* [ %.pre5248, %if.end2002.lr.ph ], [ %456, %while.body1986.backedge ]
  %cmp2005 = icmp eq i32 %450, 0
  br i1 %cmp2005, label %save_state_and_return, label %if.end2008

if.end2008:                                       ; preds = %if.end2002
  %453 = load i32* %bsBuff2009, align 4, !tbaa !3
  %shl2010 = shl i32 %453, 8
  %next_in2012 = getelementptr inbounds %struct.bz_stream* %452, i64 0, i32 0
  %454 = load i8** %next_in2012, align 8, !tbaa !0
  %455 = load i8* %454, align 1, !tbaa !1
  %conv2013 = zext i8 %455 to i32
  %or2014 = or i32 %conv2013, %shl2010
  store i32 %or2014, i32* %bsBuff2009, align 4, !tbaa !3
  %add2017 = add nsw i32 %451, 8
  store i32 %add2017, i32* %bsLive1987, align 4, !tbaa !3
  %incdec.ptr2020 = getelementptr inbounds i8* %454, i64 1
  store i8* %incdec.ptr2020, i8** %next_in2012, align 8, !tbaa !0
  %456 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2022 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 1
  %457 = load i32* %avail_in2022, align 4, !tbaa !3
  %dec2023 = add i32 %457, -1
  store i32 %dec2023, i32* %avail_in2022, align 4, !tbaa !3
  %total_in_lo322025 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 2
  %458 = load i32* %total_in_lo322025, align 4, !tbaa !3
  %inc2026 = add i32 %458, 1
  store i32 %inc2026, i32* %total_in_lo322025, align 4, !tbaa !3
  %cmp2029 = icmp eq i32 %inc2026, 0
  br i1 %cmp2029, label %if.then2031, label %while.body1986.backedge

if.then2031:                                      ; preds = %if.end2008
  %total_in_hi322033 = getelementptr inbounds %struct.bz_stream* %456, i64 0, i32 3
  %459 = load i32* %total_in_hi322033, align 4, !tbaa !3
  %inc2034 = add i32 %459, 1
  store i32 %inc2034, i32* %total_in_hi322033, align 4, !tbaa !3
  br label %while.body1986.backedge

while.body1986.backedge:                          ; preds = %if.then2031, %if.end2008
  %460 = load i32* %bsLive1987, align 4, !tbaa !3
  %cmp1988 = icmp slt i32 %460, %zn.5
  br i1 %cmp1988, label %if.end2002, label %if.then1990

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
  %cmp2039 = icmp sgt i32 %zn.6, 20
  br i1 %cmp2039, label %save_state_and_return, label %if.end2042

if.end2042:                                       ; preds = %while.body2038
  %idxprom2043 = sext i32 %zn.6 to i64
  %arrayidx2044 = getelementptr inbounds i32* %gLimit.8, i64 %idxprom2043
  %462 = load i32* %arrayidx2044, align 4, !tbaa !3
  %cmp2045 = icmp sgt i32 %zvec.5, %462
  br i1 %cmp2045, label %if.end2048, label %while.end2104

if.end2048:                                       ; preds = %if.end2042
  %inc2049 = add nsw i32 %zn.6, 1
  %bsLive2054.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %sw.bb2050

sw.bb2050:                                        ; preds = %if.end.sw.bb2050_crit_edge, %if.end2048
  %bsLive2054.pre-phi = phi i32* [ %bsLive2054.phi.trans.insert, %if.end.sw.bb2050_crit_edge ], [ %bsLive2054.pre, %if.end2048 ]
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
  store i32 39, i32* %state, align 4, !tbaa !3
  %cmp20554864 = icmp sgt i32 %463, 0
  %bsBuff2060.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp20554864, label %if.then2057, label %if.end2067.lr.ph

if.end2067.lr.ph:                                 ; preds = %sw.bb2050
  %.pre5249 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2069.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5249, i64 0, i32 1
  %.pre5346 = load i32* %avail_in2069.phi.trans.insert, align 4, !tbaa !3
  br label %if.end2067

if.then2057:                                      ; preds = %sw.bb2050, %while.body2053.backedge
  %.lcssa4862 = phi i32 [ %475, %while.body2053.backedge ], [ %463, %sw.bb2050 ]
  %464 = load i32* %bsBuff2060.pre, align 4, !tbaa !3
  %sub2062 = add nsw i32 %.lcssa4862, -1
  %shr2063 = lshr i32 %464, %sub2062
  %and2064 = and i32 %shr2063, 1
  store i32 %sub2062, i32* %bsLive2054.pre-phi, align 4, !tbaa !3
  %shl2102 = shl i32 %zvec.6, 1
  %or2103 = or i32 %and2064, %shl2102
  br label %while.body2038

if.end2067:                                       ; preds = %if.end2067.lr.ph, %while.body2053.backedge
  %465 = phi i32 [ %.pre5346, %if.end2067.lr.ph ], [ %dec2088, %while.body2053.backedge ]
  %466 = phi i32 [ %463, %if.end2067.lr.ph ], [ %475, %while.body2053.backedge ]
  %467 = phi %struct.bz_stream* [ %.pre5249, %if.end2067.lr.ph ], [ %471, %while.body2053.backedge ]
  %cmp2070 = icmp eq i32 %465, 0
  br i1 %cmp2070, label %save_state_and_return, label %if.end2073

if.end2073:                                       ; preds = %if.end2067
  %468 = load i32* %bsBuff2060.pre, align 4, !tbaa !3
  %shl2075 = shl i32 %468, 8
  %next_in2077 = getelementptr inbounds %struct.bz_stream* %467, i64 0, i32 0
  %469 = load i8** %next_in2077, align 8, !tbaa !0
  %470 = load i8* %469, align 1, !tbaa !1
  %conv2078 = zext i8 %470 to i32
  %or2079 = or i32 %conv2078, %shl2075
  store i32 %or2079, i32* %bsBuff2060.pre, align 4, !tbaa !3
  %add2082 = add nsw i32 %466, 8
  store i32 %add2082, i32* %bsLive2054.pre-phi, align 4, !tbaa !3
  %incdec.ptr2085 = getelementptr inbounds i8* %469, i64 1
  store i8* %incdec.ptr2085, i8** %next_in2077, align 8, !tbaa !0
  %471 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2087 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 1
  %472 = load i32* %avail_in2087, align 4, !tbaa !3
  %dec2088 = add i32 %472, -1
  store i32 %dec2088, i32* %avail_in2087, align 4, !tbaa !3
  %total_in_lo322090 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 2
  %473 = load i32* %total_in_lo322090, align 4, !tbaa !3
  %inc2091 = add i32 %473, 1
  store i32 %inc2091, i32* %total_in_lo322090, align 4, !tbaa !3
  %cmp2094 = icmp eq i32 %inc2091, 0
  br i1 %cmp2094, label %if.then2096, label %while.body2053.backedge

if.then2096:                                      ; preds = %if.end2073
  %total_in_hi322098 = getelementptr inbounds %struct.bz_stream* %471, i64 0, i32 3
  %474 = load i32* %total_in_hi322098, align 4, !tbaa !3
  %inc2099 = add i32 %474, 1
  store i32 %inc2099, i32* %total_in_hi322098, align 4, !tbaa !3
  br label %while.body2053.backedge

while.body2053.backedge:                          ; preds = %if.then2096, %if.end2073
  %475 = load i32* %bsLive2054.pre-phi, align 4, !tbaa !3
  %cmp2055 = icmp sgt i32 %475, 0
  br i1 %cmp2055, label %if.then2057, label %if.end2067

while.end2104:                                    ; preds = %if.end2042
  %arrayidx2106 = getelementptr inbounds i32* %gBase.8, i64 %idxprom2043
  %476 = load i32* %arrayidx2106, align 4, !tbaa !3
  %sub2107 = sub nsw i32 %zvec.5, %476
  %477 = icmp ugt i32 %sub2107, 257
  br i1 %477, label %save_state_and_return, label %if.end2117

if.end2117:                                       ; preds = %while.end2104
  %idxprom2121 = sext i32 %sub2107 to i64
  %arrayidx2122 = getelementptr inbounds i32* %gPerm.8, i64 %idxprom2121
  %478 = load i32* %arrayidx2122, align 4, !tbaa !3
  %479 = icmp ult i32 %478, 2
  br i1 %479, label %do.body, label %do.end

do.end:                                           ; preds = %if.end2117
  %inc2127 = add nsw i32 %es.4, 1
  %arrayidx2129 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %480 = load i32* %arrayidx2129, align 4, !tbaa !3
  %idxprom2130 = sext i32 %480 to i64
  %arrayidx2132 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2130
  %481 = load i8* %arrayidx2132, align 1, !tbaa !1
  %idxprom2133 = zext i8 %481 to i64
  %arrayidx2134 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2133
  %482 = load i8* %arrayidx2134, align 1, !tbaa !1
  %idxprom2135 = zext i8 %482 to i64
  %arrayidx2137 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %idxprom2135
  %483 = load i32* %arrayidx2137, align 4, !tbaa !3
  %add2138 = add nsw i32 %483, %inc2127
  store i32 %add2138, i32* %arrayidx2137, align 4, !tbaa !3
  %smallDecompress2139 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %484 = load i8* %smallDecompress2139, align 1, !tbaa !1
  %tobool2140 = icmp eq i8 %484, 0
  %cmp21594870 = icmp sgt i32 %es.4, -1
  br i1 %tobool2140, label %while.cond2158.preheader, label %while.cond2142.preheader

while.cond2142.preheader:                         ; preds = %do.end
  br i1 %cmp21594870, label %while.body2145.lr.ph, label %while.body1929

while.body2145.lr.ph:                             ; preds = %while.cond2142.preheader
  %conv2150 = zext i8 %482 to i16
  %ll162152 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %485 = sext i32 %nblock.6 to i64
  br label %while.body2145

while.cond2158.preheader:                         ; preds = %do.end
  br i1 %cmp21594870, label %while.body2161.lr.ph, label %while.body1929

while.body2161.lr.ph:                             ; preds = %while.cond2158.preheader
  %conv2166 = zext i8 %482 to i32
  %tt2168 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  %486 = sext i32 %nblock.6 to i64
  br label %while.body2161

while.body2145:                                   ; preds = %while.body2145.lr.ph, %if.end2149
  %indvars.iv5138 = phi i64 [ %485, %while.body2145.lr.ph ], [ %indvars.iv.next5139, %if.end2149 ]
  %nblock.84881 = phi i32 [ %nblock.6, %while.body2145.lr.ph ], [ %inc2154, %if.end2149 ]
  %es.64880 = phi i32 [ %inc2127, %while.body2145.lr.ph ], [ %dec2155, %if.end2149 ]
  %487 = trunc i64 %indvars.iv5138 to i32
  %cmp2146 = icmp slt i32 %487, %nblockMAX.6
  br i1 %cmp2146, label %if.end2149, label %save_state_and_return

if.end2149:                                       ; preds = %while.body2145
  %488 = load i16** %ll162152, align 8, !tbaa !0
  %arrayidx2153 = getelementptr inbounds i16* %488, i64 %indvars.iv5138
  store i16 %conv2150, i16* %arrayidx2153, align 2, !tbaa !4
  %indvars.iv.next5139 = add i64 %indvars.iv5138, 1
  %inc2154 = add nsw i32 %nblock.84881, 1
  %dec2155 = add nsw i32 %es.64880, -1
  %cmp2143 = icmp sgt i32 %dec2155, 0
  br i1 %cmp2143, label %while.body2145, label %while.body1929

while.body2161:                                   ; preds = %while.body2161.lr.ph, %if.end2165
  %indvars.iv5134 = phi i64 [ %486, %while.body2161.lr.ph ], [ %indvars.iv.next5135, %if.end2165 ]
  %nblock.94872 = phi i32 [ %nblock.6, %while.body2161.lr.ph ], [ %inc2170, %if.end2165 ]
  %es.74871 = phi i32 [ %inc2127, %while.body2161.lr.ph ], [ %dec2171, %if.end2165 ]
  %489 = trunc i64 %indvars.iv5134 to i32
  %cmp2162 = icmp slt i32 %489, %nblockMAX.6
  br i1 %cmp2162, label %if.end2165, label %save_state_and_return

if.end2165:                                       ; preds = %while.body2161
  %490 = load i32** %tt2168, align 8, !tbaa !0
  %arrayidx2169 = getelementptr inbounds i32* %490, i64 %indvars.iv5134
  store i32 %conv2166, i32* %arrayidx2169, align 4, !tbaa !3
  %indvars.iv.next5135 = add i64 %indvars.iv5134, 1
  %inc2170 = add nsw i32 %nblock.94872, 1
  %dec2171 = add nsw i32 %es.74871, -1
  %cmp2159 = icmp sgt i32 %dec2171, 0
  br i1 %cmp2159, label %while.body2161, label %while.body1929

if.else2174:                                      ; preds = %if.end1933
  %cmp2175 = icmp slt i32 %nblock.3, %nblockMAX.3
  br i1 %cmp2175, label %if.end2178, label %save_state_and_return

if.end2178:                                       ; preds = %if.else2174
  %sub2189 = add i32 %nextSym.0, -1
  %cmp2190 = icmp ult i32 %sub2189, 16
  br i1 %cmp2190, label %if.then2192, label %if.else2256

if.then2192:                                      ; preds = %if.end2178
  %arrayidx2194 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %491 = load i32* %arrayidx2194, align 4, !tbaa !3
  %add2195 = add i32 %491, %sub2189
  %idxprom2196 = zext i32 %add2195 to i64
  %arrayidx2198 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2196
  %492 = load i8* %arrayidx2198, align 1, !tbaa !1
  %cmp22004907 = icmp ugt i32 %sub2189, 3
  br i1 %cmp22004907, label %while.body2202, label %while.cond2238.preheader

while.cond2238.preheader:                         ; preds = %while.body2202, %if.then2192
  %nn.0.lcssa = phi i32 [ %sub2189, %if.then2192 ], [ %sub2236, %while.body2202 ]
  %cmp22394905 = icmp eq i32 %nn.0.lcssa, 0
  br i1 %cmp22394905, label %while.end2252, label %while.body2241.lr.ph

while.body2241.lr.ph:                             ; preds = %while.cond2238.preheader
  %493 = zext i32 %nn.0.lcssa to i64
  br label %while.body2241

while.body2202:                                   ; preds = %if.then2192, %while.body2202
  %nn.04908 = phi i32 [ %sub2236, %while.body2202 ], [ %sub2189, %if.then2192 ]
  %add2204 = add i32 %nn.04908, %491
  %sub2205 = add nsw i32 %add2204, -1
  %idxprom2206 = sext i32 %sub2205 to i64
  %arrayidx2208 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2206
  %494 = load i8* %arrayidx2208, align 1, !tbaa !1
  %idxprom2209 = sext i32 %add2204 to i64
  %arrayidx2211 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2209
  store i8 %494, i8* %arrayidx2211, align 1, !tbaa !1
  %sub2212 = add nsw i32 %add2204, -2
  %idxprom2213 = sext i32 %sub2212 to i64
  %arrayidx2215 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2213
  %495 = load i8* %arrayidx2215, align 1, !tbaa !1
  store i8 %495, i8* %arrayidx2208, align 1, !tbaa !1
  %sub2220 = add nsw i32 %add2204, -3
  %idxprom2221 = sext i32 %sub2220 to i64
  %arrayidx2223 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2221
  %496 = load i8* %arrayidx2223, align 1, !tbaa !1
  store i8 %496, i8* %arrayidx2215, align 1, !tbaa !1
  %sub2228 = add nsw i32 %add2204, -4
  %idxprom2229 = sext i32 %sub2228 to i64
  %arrayidx2231 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2229
  %497 = load i8* %arrayidx2231, align 1, !tbaa !1
  store i8 %497, i8* %arrayidx2223, align 1, !tbaa !1
  %sub2236 = add i32 %nn.04908, -4
  %cmp2200 = icmp ugt i32 %sub2236, 3
  br i1 %cmp2200, label %while.body2202, label %while.cond2238.preheader

while.body2241:                                   ; preds = %while.body2241.lr.ph, %while.body2241
  %indvars.iv5143 = phi i64 [ %493, %while.body2241.lr.ph ], [ %indvars.iv.next5144, %while.body2241 ]
  %nn.14906 = phi i32 [ %nn.0.lcssa, %while.body2241.lr.ph ], [ %dec2251, %while.body2241 ]
  %498 = trunc i64 %indvars.iv5143 to i32
  %add2242 = add i32 %498, %491
  %sub2243 = add i32 %add2242, -1
  %idxprom2244 = zext i32 %sub2243 to i64
  %arrayidx2246 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2244
  %499 = load i8* %arrayidx2246, align 1, !tbaa !1
  %idxprom2248 = zext i32 %add2242 to i64
  %arrayidx2250 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2248
  store i8 %499, i8* %arrayidx2250, align 1, !tbaa !1
  %dec2251 = add i32 %nn.14906, -1
  %cmp2239 = icmp eq i32 %dec2251, 0
  %indvars.iv.next5144 = add i64 %indvars.iv5143, -1
  br i1 %cmp2239, label %while.end2252, label %while.body2241

while.end2252:                                    ; preds = %while.body2241, %while.cond2238.preheader
  %idxprom2253 = sext i32 %491 to i64
  %arrayidx2255 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2253
  store i8 %492, i8* %arrayidx2255, align 1, !tbaa !1
  br label %if.end2352

if.else2256:                                      ; preds = %if.end2178
  %div = lshr i32 %sub2189, 4
  %rem = and i32 %sub2189, 15
  %idxprom22574720 = zext i32 %div to i64
  %arrayidx2259 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %idxprom22574720
  %500 = load i32* %arrayidx2259, align 4, !tbaa !3
  %add2260 = add nsw i32 %500, %rem
  %idxprom2261 = sext i32 %add2260 to i64
  %arrayidx2263 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2261
  %501 = load i8* %arrayidx2263, align 1, !tbaa !1
  %cmp22684917 = icmp eq i32 %rem, 0
  br i1 %cmp22684917, label %while.end2279, label %while.body2270.lr.ph

while.body2270.lr.ph:                             ; preds = %if.else2256
  %502 = and i32 %sub2189, 15
  %503 = add i32 %500, %502
  %504 = sext i32 %503 to i64
  br label %while.body2270

while.body2270:                                   ; preds = %while.body2270.lr.ph, %while.body2270
  %indvars.iv5157 = phi i64 [ %504, %while.body2270.lr.ph ], [ %indvars.iv.next5158, %while.body2270 ]
  %indvars.iv.next5158 = add i64 %indvars.iv5157, -1
  %arrayidx2274 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv.next5158
  %505 = load i8* %arrayidx2274, align 1, !tbaa !1
  %arrayidx2277 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5157
  store i8 %505, i8* %arrayidx2277, align 1, !tbaa !1
  %506 = load i32* %arrayidx2259, align 4, !tbaa !3
  %507 = trunc i64 %indvars.iv.next5158 to i32
  %cmp2268 = icmp sgt i32 %507, %506
  br i1 %cmp2268, label %while.body2270, label %while.end2279

while.end2279:                                    ; preds = %while.body2270, %if.else2256
  %.lcssa4916 = phi i32 [ %500, %if.else2256 ], [ %506, %while.body2270 ]
  %inc2283 = add nsw i32 %.lcssa4916, 1
  store i32 %inc2283, i32* %arrayidx2259, align 4, !tbaa !3
  %cmp22854914 = icmp eq i32 %div, 0
  br i1 %cmp22854914, label %while.end2308, label %while.body2287

while.body2287:                                   ; preds = %while.end2279, %while.body2287.while.body2287_crit_edge
  %508 = phi i32 [ %.pre5343, %while.body2287.while.body2287_crit_edge ], [ %inc2283, %while.end2279 ]
  %indvars.iv5154 = phi i64 [ %indvars.iv.next5155, %while.body2287.while.body2287_crit_edge ], [ %idxprom22574720, %while.end2279 ]
  %arrayidx2290 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5154
  %dec2291 = add nsw i32 %508, -1
  store i32 %dec2291, i32* %arrayidx2290, align 4, !tbaa !3
  %indvars.iv.next5155 = add i64 %indvars.iv5154, -1
  %arrayidx2295 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv.next5155
  %509 = load i32* %arrayidx2295, align 4, !tbaa !3
  %sub2297 = add nsw i32 %509, 15
  %idxprom2298 = sext i32 %sub2297 to i64
  %arrayidx2300 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2298
  %510 = load i8* %arrayidx2300, align 1, !tbaa !1
  %idxprom2304 = sext i32 %dec2291 to i64
  %arrayidx2306 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2304
  store i8 %510, i8* %arrayidx2306, align 1, !tbaa !1
  %511 = trunc i64 %indvars.iv.next5155 to i32
  %cmp2285 = icmp sgt i32 %511, 0
  br i1 %cmp2285, label %while.body2287.while.body2287_crit_edge, label %while.end2308

while.body2287.while.body2287_crit_edge:          ; preds = %while.body2287
  %.pre5343 = load i32* %arrayidx2295, align 4, !tbaa !3
  br label %while.body2287

while.end2308:                                    ; preds = %while.body2287, %while.end2279
  %arrayidx2310 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %512 = load i32* %arrayidx2310, align 4, !tbaa !3
  %dec2311 = add nsw i32 %512, -1
  store i32 %dec2311, i32* %arrayidx2310, align 4, !tbaa !3
  %idxprom2314 = sext i32 %dec2311 to i64
  %arrayidx2316 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2314
  store i8 %501, i8* %arrayidx2316, align 1, !tbaa !1
  %513 = load i32* %arrayidx2310, align 4, !tbaa !3
  %cmp2319 = icmp eq i32 %513, 0
  br i1 %cmp2319, label %for.cond2326.preheader, label %if.end2352

for.cond2326.preheader:                           ; preds = %while.end2308, %for.end2343
  %indvars.iv5152 = phi i64 [ %indvars.iv.next5153, %for.end2343 ], [ 15, %while.end2308 ]
  %indvars.iv5150 = phi i64 [ %indvars.iv.next5151, %for.end2343 ], [ 4095, %while.end2308 ]
  %indvars.iv5148 = phi i32 [ %indvars.iv.next5149, %for.end2343 ], [ 4080, %while.end2308 ]
  %arrayidx2332 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv5152
  br label %for.body2329

for.body2329:                                     ; preds = %for.cond2326.preheader, %for.body2329
  %indvars.iv5146 = phi i64 [ %indvars.iv5150, %for.cond2326.preheader ], [ %indvars.iv.next5147, %for.body2329 ]
  %jj2182.04910 = phi i32 [ 15, %for.cond2326.preheader ], [ %dec2342, %for.body2329 ]
  %514 = load i32* %arrayidx2332, align 4, !tbaa !3
  %add2333 = add nsw i32 %514, %jj2182.04910
  %idxprom2334 = sext i32 %add2333 to i64
  %arrayidx2336 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %idxprom2334
  %515 = load i8* %arrayidx2336, align 1, !tbaa !1
  %arrayidx2339 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv5146
  store i8 %515, i8* %arrayidx2339, align 1, !tbaa !1
  %indvars.iv.next5147 = add i64 %indvars.iv5146, -1
  %dec2342 = add nsw i32 %jj2182.04910, -1
  %cmp2327 = icmp sgt i32 %jj2182.04910, 0
  br i1 %cmp2327, label %for.body2329, label %for.end2343

for.end2343:                                      ; preds = %for.body2329
  %indvars.iv.next5151 = add i64 %indvars.iv5150, -16
  store i32 %indvars.iv5148, i32* %arrayidx2332, align 4, !tbaa !3
  %indvars.iv.next5153 = add i64 %indvars.iv5152, -1
  %516 = trunc i64 %indvars.iv5152 to i32
  %cmp2323 = icmp sgt i32 %516, 0
  %indvars.iv.next5149 = add i32 %indvars.iv5148, -16
  br i1 %cmp2323, label %for.cond2326.preheader, label %if.end2352

if.end2352:                                       ; preds = %for.end2343, %while.end2308, %while.end2252
  %uc.0 = phi i8 [ %492, %while.end2252 ], [ %501, %while.end2308 ], [ %501, %for.end2343 ]
  %idxprom2353 = zext i8 %uc.0 to i64
  %arrayidx2355 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %idxprom2353
  %517 = load i8* %arrayidx2355, align 1, !tbaa !1
  %idxprom2356 = zext i8 %517 to i64
  %arrayidx2358 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %idxprom2356
  %518 = load i32* %arrayidx2358, align 4, !tbaa !3
  %inc2359 = add nsw i32 %518, 1
  store i32 %inc2359, i32* %arrayidx2358, align 4, !tbaa !3
  %smallDecompress2360 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %519 = load i8* %smallDecompress2360, align 1, !tbaa !1
  %tobool2361 = icmp eq i8 %519, 0
  %520 = load i8* %arrayidx2355, align 1, !tbaa !1
  br i1 %tobool2361, label %if.else2370, label %if.then2362

if.then2362:                                      ; preds = %if.end2352
  %conv2366 = zext i8 %520 to i16
  %idxprom2367 = sext i32 %nblock.3 to i64
  %ll162368 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %521 = load i16** %ll162368, align 8, !tbaa !0
  %arrayidx2369 = getelementptr inbounds i16* %521, i64 %idxprom2367
  store i16 %conv2366, i16* %arrayidx2369, align 2, !tbaa !4
  br label %if.end2378

if.else2370:                                      ; preds = %if.end2352
  %conv2374 = zext i8 %520 to i32
  %idxprom2375 = sext i32 %nblock.3 to i64
  %tt2376 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  %522 = load i32** %tt2376, align 8, !tbaa !0
  %arrayidx2377 = getelementptr inbounds i32* %522, i64 %idxprom2375
  store i32 %conv2374, i32* %arrayidx2377, align 4, !tbaa !3
  br label %if.end2378

if.end2378:                                       ; preds = %if.else2370, %if.then2362
  %inc2379 = add nsw i32 %nblock.3, 1
  %cmp2380 = icmp eq i32 %groupPos.4, 0
  br i1 %cmp2380, label %if.then2382, label %if.end2407

if.then2382:                                      ; preds = %if.end2378
  %inc2383 = add nsw i32 %groupNo.4, 1
  %cmp2384 = icmp slt i32 %inc2383, %nSelectors.11
  br i1 %cmp2384, label %if.end2387, label %save_state_and_return

if.end2387:                                       ; preds = %if.then2382
  %idxprom2388 = sext i32 %inc2383 to i64
  %arrayidx2390 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %idxprom2388
  %523 = load i8* %arrayidx2390, align 1, !tbaa !1
  %conv2391 = zext i8 %523 to i32
  %idxprom2392 = zext i8 %523 to i64
  %arrayidx2394 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %idxprom2392
  %524 = load i32* %arrayidx2394, align 4, !tbaa !3
  %arrayidx2398 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %idxprom2392, i64 0
  %arrayidx2402 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %idxprom2392, i64 0
  %arrayidx2406 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %idxprom2392, i64 0
  br label %if.end2407

if.end2407:                                       ; preds = %if.end2387, %if.end2378
  %gPerm.10 = phi i32* [ %arrayidx2402, %if.end2387 ], [ %gPerm.4, %if.end2378 ]
  %gBase.10 = phi i32* [ %arrayidx2406, %if.end2387 ], [ %gBase.4, %if.end2378 ]
  %gLimit.10 = phi i32* [ %arrayidx2398, %if.end2387 ], [ %gLimit.4, %if.end2378 ]
  %gMinlen.10 = phi i32 [ %524, %if.end2387 ], [ %gMinlen.4, %if.end2378 ]
  %gSel.10 = phi i32 [ %conv2391, %if.end2387 ], [ %gSel.4, %if.end2378 ]
  %groupPos.10 = phi i32 [ 50, %if.end2387 ], [ %groupPos.4, %if.end2378 ]
  %groupNo.10 = phi i32 [ %inc2383, %if.end2387 ], [ %groupNo.4, %if.end2378 ]
  %dec2408 = add nsw i32 %groupPos.10, -1
  br label %sw.bb2409

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
  store i32 40, i32* %state, align 4, !tbaa !3
  %bsLive2413 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %525 = load i32* %bsLive2413, align 4, !tbaa !3
  %cmp24144902 = icmp slt i32 %525, %zn.8
  %bsBuff2435 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp24144902, label %if.end2428.lr.ph, label %if.then2416

if.end2428.lr.ph:                                 ; preds = %sw.bb2409
  %.pre5250 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2430.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5250, i64 0, i32 1
  %.pre5347 = load i32* %avail_in2430.phi.trans.insert, align 4, !tbaa !3
  br label %if.end2428

if.then2416:                                      ; preds = %sw.bb2409, %while.body2412.backedge
  %.lcssa4900 = phi i32 [ %537, %while.body2412.backedge ], [ %525, %sw.bb2409 ]
  %526 = load i32* %bsBuff2435, align 4, !tbaa !3
  %sub2421 = sub nsw i32 %.lcssa4900, %zn.8
  %shr2422 = lshr i32 %526, %sub2421
  %shl2423 = shl i32 1, %zn.8
  %sub2424 = add nsw i32 %shl2423, -1
  %and2425 = and i32 %shr2422, %sub2424
  store i32 %sub2421, i32* %bsLive2413, align 4, !tbaa !3
  br label %while.body2464

if.end2428:                                       ; preds = %if.end2428.lr.ph, %while.body2412.backedge
  %527 = phi i32 [ %.pre5347, %if.end2428.lr.ph ], [ %dec2449, %while.body2412.backedge ]
  %528 = phi i32 [ %525, %if.end2428.lr.ph ], [ %537, %while.body2412.backedge ]
  %529 = phi %struct.bz_stream* [ %.pre5250, %if.end2428.lr.ph ], [ %533, %while.body2412.backedge ]
  %cmp2431 = icmp eq i32 %527, 0
  br i1 %cmp2431, label %save_state_and_return, label %if.end2434

if.end2434:                                       ; preds = %if.end2428
  %530 = load i32* %bsBuff2435, align 4, !tbaa !3
  %shl2436 = shl i32 %530, 8
  %next_in2438 = getelementptr inbounds %struct.bz_stream* %529, i64 0, i32 0
  %531 = load i8** %next_in2438, align 8, !tbaa !0
  %532 = load i8* %531, align 1, !tbaa !1
  %conv2439 = zext i8 %532 to i32
  %or2440 = or i32 %conv2439, %shl2436
  store i32 %or2440, i32* %bsBuff2435, align 4, !tbaa !3
  %add2443 = add nsw i32 %528, 8
  store i32 %add2443, i32* %bsLive2413, align 4, !tbaa !3
  %incdec.ptr2446 = getelementptr inbounds i8* %531, i64 1
  store i8* %incdec.ptr2446, i8** %next_in2438, align 8, !tbaa !0
  %533 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2448 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 1
  %534 = load i32* %avail_in2448, align 4, !tbaa !3
  %dec2449 = add i32 %534, -1
  store i32 %dec2449, i32* %avail_in2448, align 4, !tbaa !3
  %total_in_lo322451 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 2
  %535 = load i32* %total_in_lo322451, align 4, !tbaa !3
  %inc2452 = add i32 %535, 1
  store i32 %inc2452, i32* %total_in_lo322451, align 4, !tbaa !3
  %cmp2455 = icmp eq i32 %inc2452, 0
  br i1 %cmp2455, label %if.then2457, label %while.body2412.backedge

if.then2457:                                      ; preds = %if.end2434
  %total_in_hi322459 = getelementptr inbounds %struct.bz_stream* %533, i64 0, i32 3
  %536 = load i32* %total_in_hi322459, align 4, !tbaa !3
  %inc2460 = add i32 %536, 1
  store i32 %inc2460, i32* %total_in_hi322459, align 4, !tbaa !3
  br label %while.body2412.backedge

while.body2412.backedge:                          ; preds = %if.then2457, %if.end2434
  %537 = load i32* %bsLive2413, align 4, !tbaa !3
  %cmp2414 = icmp slt i32 %537, %zn.8
  br i1 %cmp2414, label %if.end2428, label %if.then2416

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
  %cmp2465 = icmp sgt i32 %zn.9, 20
  br i1 %cmp2465, label %save_state_and_return, label %if.end2468

if.end2468:                                       ; preds = %while.body2464
  %idxprom2469 = sext i32 %zn.9 to i64
  %arrayidx2470 = getelementptr inbounds i32* %gLimit.12, i64 %idxprom2469
  %539 = load i32* %arrayidx2470, align 4, !tbaa !3
  %cmp2471 = icmp sgt i32 %zvec.8, %539
  br i1 %cmp2471, label %if.end2474, label %while.end2530

if.end2474:                                       ; preds = %if.end2468
  %inc2475 = add nsw i32 %zn.9, 1
  %bsLive2480.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %sw.bb2476

sw.bb2476:                                        ; preds = %if.end.sw.bb2476_crit_edge, %if.end2474
  %bsLive2480.pre-phi = phi i32* [ %bsLive2480.phi.trans.insert, %if.end.sw.bb2476_crit_edge ], [ %bsLive2480.pre, %if.end2474 ]
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
  store i32 41, i32* %state, align 4, !tbaa !3
  %cmp24814895 = icmp sgt i32 %540, 0
  %bsBuff2486.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp24814895, label %if.then2483, label %if.end2493.lr.ph

if.end2493.lr.ph:                                 ; preds = %sw.bb2476
  %.pre5251 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2495.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5251, i64 0, i32 1
  %.pre5349 = load i32* %avail_in2495.phi.trans.insert, align 4, !tbaa !3
  br label %if.end2493

if.then2483:                                      ; preds = %sw.bb2476, %while.body2479.backedge
  %.lcssa4893 = phi i32 [ %552, %while.body2479.backedge ], [ %540, %sw.bb2476 ]
  %541 = load i32* %bsBuff2486.pre, align 4, !tbaa !3
  %sub2488 = add nsw i32 %.lcssa4893, -1
  %shr2489 = lshr i32 %541, %sub2488
  %and2490 = and i32 %shr2489, 1
  store i32 %sub2488, i32* %bsLive2480.pre-phi, align 4, !tbaa !3
  %shl2528 = shl i32 %zvec.9, 1
  %or2529 = or i32 %and2490, %shl2528
  br label %while.body2464

if.end2493:                                       ; preds = %if.end2493.lr.ph, %while.body2479.backedge
  %542 = phi i32 [ %.pre5349, %if.end2493.lr.ph ], [ %dec2514, %while.body2479.backedge ]
  %543 = phi i32 [ %540, %if.end2493.lr.ph ], [ %552, %while.body2479.backedge ]
  %544 = phi %struct.bz_stream* [ %.pre5251, %if.end2493.lr.ph ], [ %548, %while.body2479.backedge ]
  %cmp2496 = icmp eq i32 %542, 0
  br i1 %cmp2496, label %save_state_and_return, label %if.end2499

if.end2499:                                       ; preds = %if.end2493
  %545 = load i32* %bsBuff2486.pre, align 4, !tbaa !3
  %shl2501 = shl i32 %545, 8
  %next_in2503 = getelementptr inbounds %struct.bz_stream* %544, i64 0, i32 0
  %546 = load i8** %next_in2503, align 8, !tbaa !0
  %547 = load i8* %546, align 1, !tbaa !1
  %conv2504 = zext i8 %547 to i32
  %or2505 = or i32 %conv2504, %shl2501
  store i32 %or2505, i32* %bsBuff2486.pre, align 4, !tbaa !3
  %add2508 = add nsw i32 %543, 8
  store i32 %add2508, i32* %bsLive2480.pre-phi, align 4, !tbaa !3
  %incdec.ptr2511 = getelementptr inbounds i8* %546, i64 1
  store i8* %incdec.ptr2511, i8** %next_in2503, align 8, !tbaa !0
  %548 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2513 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 1
  %549 = load i32* %avail_in2513, align 4, !tbaa !3
  %dec2514 = add i32 %549, -1
  store i32 %dec2514, i32* %avail_in2513, align 4, !tbaa !3
  %total_in_lo322516 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 2
  %550 = load i32* %total_in_lo322516, align 4, !tbaa !3
  %inc2517 = add i32 %550, 1
  store i32 %inc2517, i32* %total_in_lo322516, align 4, !tbaa !3
  %cmp2520 = icmp eq i32 %inc2517, 0
  br i1 %cmp2520, label %if.then2522, label %while.body2479.backedge

if.then2522:                                      ; preds = %if.end2499
  %total_in_hi322524 = getelementptr inbounds %struct.bz_stream* %548, i64 0, i32 3
  %551 = load i32* %total_in_hi322524, align 4, !tbaa !3
  %inc2525 = add i32 %551, 1
  store i32 %inc2525, i32* %total_in_hi322524, align 4, !tbaa !3
  br label %while.body2479.backedge

while.body2479.backedge:                          ; preds = %if.then2522, %if.end2499
  %552 = load i32* %bsLive2480.pre-phi, align 4, !tbaa !3
  %cmp2481 = icmp sgt i32 %552, 0
  br i1 %cmp2481, label %if.then2483, label %if.end2493

while.end2530:                                    ; preds = %if.end2468
  %arrayidx2532 = getelementptr inbounds i32* %gBase.12, i64 %idxprom2469
  %553 = load i32* %arrayidx2532, align 4, !tbaa !3
  %sub2533 = sub nsw i32 %zvec.8, %553
  %554 = icmp ugt i32 %sub2533, 257
  br i1 %554, label %save_state_and_return, label %if.end2543

if.end2543:                                       ; preds = %while.end2530
  %idxprom2547 = sext i32 %sub2533 to i64
  %arrayidx2548 = getelementptr inbounds i32* %gPerm.12, i64 %idxprom2547
  %555 = load i32* %arrayidx2548, align 4, !tbaa !3
  br label %while.body1929

while.end2549:                                    ; preds = %while.body1929
  %origPtr2550 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %556 = load i32* %origPtr2550, align 4, !tbaa !3
  %cmp2551 = icmp sgt i32 %556, -1
  %cmp2555 = icmp slt i32 %556, %nblock.3
  %or.cond4734 = and i1 %cmp2551, %cmp2555
  br i1 %or.cond4734, label %if.end2558, label %save_state_and_return

if.end2558:                                       ; preds = %while.end2549
  %arrayidx2559 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 0
  store i32 0, i32* %arrayidx2559, align 4, !tbaa !3
  br label %for.body2563

for.cond2574.preheader:                           ; preds = %for.body2563
  %.pre5247 = load i32* %arrayidx2559, align 4, !tbaa !3
  br label %for.body2577

for.body2563:                                     ; preds = %for.body2563, %if.end2558
  %indvars.iv5125 = phi i64 [ 1, %if.end2558 ], [ %indvars.iv.next5126, %for.body2563 ]
  %557 = add nsw i64 %indvars.iv5125, -1
  %arrayidx2567 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %557
  %558 = load i32* %arrayidx2567, align 4, !tbaa !3
  %arrayidx2570 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5125
  store i32 %558, i32* %arrayidx2570, align 4, !tbaa !3
  %indvars.iv.next5126 = add i64 %indvars.iv5125, 1
  %lftr.wideiv5128 = trunc i64 %indvars.iv.next5126 to i32
  %exitcond5129 = icmp eq i32 %lftr.wideiv5128, 257
  br i1 %exitcond5129, label %for.cond2574.preheader, label %for.body2563

for.body2577:                                     ; preds = %for.body2577, %for.cond2574.preheader
  %559 = phi i32 [ %.pre5247, %for.cond2574.preheader ], [ %add2585, %for.body2577 ]
  %indvars.iv5120 = phi i64 [ 1, %for.cond2574.preheader ], [ %indvars.iv.next5121, %for.body2577 ]
  %arrayidx2584 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5120
  %560 = load i32* %arrayidx2584, align 4, !tbaa !3
  %add2585 = add nsw i32 %560, %559
  store i32 %add2585, i32* %arrayidx2584, align 4, !tbaa !3
  %indvars.iv.next5121 = add i64 %indvars.iv5120, 1
  %lftr.wideiv5123 = trunc i64 %indvars.iv.next5121 to i32
  %exitcond5124 = icmp eq i32 %lftr.wideiv5123, 257
  br i1 %exitcond5124, label %for.body2592, label %for.body2577

for.cond2589:                                     ; preds = %for.body2592
  %inc2607 = add nsw i32 %i.334857, 1
  %561 = trunc i64 %indvars.iv.next5119 to i32
  %cmp2590 = icmp slt i32 %561, 257
  br i1 %cmp2590, label %for.body2592, label %for.end2608

for.body2592:                                     ; preds = %for.body2577, %for.cond2589
  %indvars.iv5118 = phi i64 [ %indvars.iv.next5119, %for.cond2589 ], [ 0, %for.body2577 ]
  %i.334857 = phi i32 [ %inc2607, %for.cond2589 ], [ 0, %for.body2577 ]
  %arrayidx2595 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5118
  %562 = load i32* %arrayidx2595, align 4, !tbaa !3
  %cmp2596 = icmp slt i32 %562, 0
  %cmp2602 = icmp sgt i32 %562, %nblock.3
  %or.cond4735 = or i1 %cmp2596, %cmp2602
  %indvars.iv.next5119 = add i64 %indvars.iv5118, 1
  br i1 %or.cond4735, label %save_state_and_return, label %for.cond2589

for.end2608:                                      ; preds = %for.cond2589
  %state_out_len = getelementptr inbounds %struct.DState* %s, i64 0, i32 3
  store i32 0, i32* %state_out_len, align 4, !tbaa !3
  %state_out_ch = getelementptr inbounds %struct.DState* %s, i64 0, i32 2
  store i8 0, i8* %state_out_ch, align 1, !tbaa !1
  %calculatedBlockCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 25
  store i32 -1, i32* %calculatedBlockCRC, align 4, !tbaa !3
  store i32 2, i32* %state, align 4, !tbaa !3
  %verbosity2610 = getelementptr inbounds %struct.DState* %s, i64 0, i32 12
  %563 = load i32* %verbosity2610, align 4, !tbaa !3
  %cmp2611 = icmp sgt i32 %563, 1
  br i1 %cmp2611, label %if.then2613, label %if.end2615

if.then2613:                                      ; preds = %for.end2608
  %564 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %565 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %564)
  br label %if.end2615

if.end2615:                                       ; preds = %if.then2613, %for.end2608
  %smallDecompress2616 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %566 = load i8* %smallDecompress2616, align 1, !tbaa !1
  %tobool2617 = icmp eq i8 %566, 0
  br i1 %tobool2617, label %for.cond2850.preheader, label %for.body2622

for.cond2850.preheader:                           ; preds = %if.end2615
  %cmp28514848 = icmp sgt i32 %nblock.3, 0
  %tt2855 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  br i1 %cmp28514848, label %for.body2853, label %for.end2873

for.cond2631.preheader:                           ; preds = %for.body2622
  %cmp26324852 = icmp sgt i32 %nblock.3, 0
  %ll162636 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %ll42653 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22
  br i1 %cmp26324852, label %for.body2634, label %for.end2692

for.body2622:                                     ; preds = %if.end2615, %for.body2622
  %indvars.iv5112 = phi i64 [ %indvars.iv.next5113, %for.body2622 ], [ 0, %if.end2615 ]
  %arrayidx2625 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv5112
  %567 = load i32* %arrayidx2625, align 4, !tbaa !3
  %arrayidx2627 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %indvars.iv5112
  store i32 %567, i32* %arrayidx2627, align 4, !tbaa !3
  %indvars.iv.next5113 = add i64 %indvars.iv5112, 1
  %lftr.wideiv5114 = trunc i64 %indvars.iv.next5113 to i32
  %exitcond5115 = icmp eq i32 %lftr.wideiv5114, 257
  br i1 %exitcond5115, label %for.cond2631.preheader, label %for.body2622

for.body2634:                                     ; preds = %for.cond2631.preheader, %if.end2685
  %indvars.iv5108 = phi i64 [ %indvars.iv.next5109, %if.end2685 ], [ 0, %for.cond2631.preheader ]
  %568 = load i16** %ll162636, align 8, !tbaa !0
  %arrayidx2637 = getelementptr inbounds i16* %568, i64 %indvars.iv5108
  %569 = load i16* %arrayidx2637, align 2, !tbaa !4
  %conv2638 = zext i16 %569 to i64
  %idxprom2639 = and i64 %conv2638, 255
  %arrayidx2641 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %idxprom2639
  %570 = load i32* %arrayidx2641, align 4, !tbaa !3
  %conv2643 = trunc i32 %570 to i16
  store i16 %conv2643, i16* %arrayidx2637, align 2, !tbaa !4
  %571 = trunc i64 %indvars.iv5108 to i32
  %and2647 = and i32 %571, 1
  %cmp2648 = icmp eq i32 %and2647, 0
  %shr2651 = ashr i32 %571, 1
  %idxprom2652 = sext i32 %shr2651 to i64
  %572 = load i8** %ll42653, align 8, !tbaa !0
  %arrayidx2654 = getelementptr inbounds i8* %572, i64 %idxprom2652
  %573 = load i8* %arrayidx2654, align 1, !tbaa !1
  %conv2655 = zext i8 %573 to i32
  br i1 %cmp2648, label %if.then2650, label %if.else2667

if.then2650:                                      ; preds = %for.body2634
  %and2656 = and i32 %conv2655, 240
  %shr2660 = ashr i32 %570, 16
  %or2661 = or i32 %shr2660, %and2656
  br label %if.end2685

if.else2667:                                      ; preds = %for.body2634
  %and2673 = and i32 %conv2655, 15
  %shr2677 = ashr i32 %570, 16
  %shl2678 = shl nsw i32 %shr2677, 4
  %or2679 = or i32 %shl2678, %and2673
  br label %if.end2685

if.end2685:                                       ; preds = %if.else2667, %if.then2650
  %storemerge4721.in = phi i32 [ %or2679, %if.else2667 ], [ %or2661, %if.then2650 ]
  %storemerge4721 = trunc i32 %storemerge4721.in to i8
  store i8 %storemerge4721, i8* %arrayidx2654, align 1, !tbaa !1
  %574 = load i32* %arrayidx2641, align 4, !tbaa !3
  %inc2689 = add nsw i32 %574, 1
  store i32 %inc2689, i32* %arrayidx2641, align 4, !tbaa !3
  %indvars.iv.next5109 = add i64 %indvars.iv5108, 1
  %lftr.wideiv5110 = trunc i64 %indvars.iv.next5109 to i32
  %exitcond5111 = icmp eq i32 %lftr.wideiv5110, %nblock.3
  br i1 %exitcond5111, label %for.end2692, label %for.body2634

for.end2692:                                      ; preds = %for.cond2631.preheader, %if.end2685
  %575 = load i32* %origPtr2550, align 4, !tbaa !3
  %idxprom2694 = sext i32 %575 to i64
  %576 = load i16** %ll162636, align 8, !tbaa !0
  %arrayidx2696 = getelementptr inbounds i16* %576, i64 %idxprom2694
  %577 = load i16* %arrayidx2696, align 2, !tbaa !4
  %conv2697 = zext i16 %577 to i32
  %shr2698 = ashr i32 %575, 1
  %idxprom2699 = sext i32 %shr2698 to i64
  %578 = load i8** %ll42653, align 8, !tbaa !0
  %arrayidx2701 = getelementptr inbounds i8* %578, i64 %idxprom2699
  %579 = load i8* %arrayidx2701, align 1, !tbaa !1
  %conv2702 = zext i8 %579 to i32
  %shl2703 = shl i32 %575, 2
  %and2704 = and i32 %shl2703, 4
  %shr2705 = lshr i32 %conv2702, %and2704
  %and2706 = shl i32 %shr2705, 16
  %shl2707 = and i32 %and2706, 983040
  %or2708 = or i32 %shl2707, %conv2697
  br label %do.body2709

do.body2709:                                      ; preds = %if.end2764.do.body2709_crit_edge, %for.end2692
  %580 = phi i8* [ %578, %for.end2692 ], [ %.pre5342, %if.end2764.do.body2709_crit_edge ]
  %581 = phi i16* [ %576, %for.end2692 ], [ %.pre5341, %if.end2764.do.body2709_crit_edge ]
  %582 = phi i32 [ %or2708, %for.end2692 ], [ %or2726, %if.end2764.do.body2709_crit_edge ]
  %i.36 = phi i32 [ %575, %for.end2692 ], [ %582, %if.end2764.do.body2709_crit_edge ]
  %idxprom2712 = sext i32 %582 to i64
  %arrayidx2714 = getelementptr inbounds i16* %581, i64 %idxprom2712
  %583 = load i16* %arrayidx2714, align 2, !tbaa !4
  %conv2715 = zext i16 %583 to i32
  %shr2716 = ashr i32 %582, 1
  %idxprom2717 = sext i32 %shr2716 to i64
  %arrayidx2719 = getelementptr inbounds i8* %580, i64 %idxprom2717
  %584 = load i8* %arrayidx2719, align 1, !tbaa !1
  %conv2720 = zext i8 %584 to i32
  %shl2721 = shl nsw i32 %582, 2
  %and2722 = and i32 %shl2721, 4
  %shr2723 = lshr i32 %conv2720, %and2722
  %and2724 = shl i32 %shr2723, 16
  %shl2725 = and i32 %and2724, 983040
  %or2726 = or i32 %shl2725, %conv2715
  %conv2728 = trunc i32 %i.36 to i16
  store i16 %conv2728, i16* %arrayidx2714, align 2, !tbaa !4
  %and2732 = and i32 %582, 1
  %cmp2733 = icmp eq i32 %and2732, 0
  %585 = load i8* %arrayidx2719, align 1, !tbaa !1
  %conv2740 = zext i8 %585 to i32
  br i1 %cmp2733, label %if.then2735, label %if.else2749

if.then2735:                                      ; preds = %do.body2709
  %and2741 = and i32 %conv2740, 240
  %shr2742 = ashr i32 %i.36, 16
  %or2743 = or i32 %and2741, %shr2742
  br label %if.end2764

if.else2749:                                      ; preds = %do.body2709
  %and2755 = and i32 %conv2740, 15
  %shr2756 = ashr i32 %i.36, 16
  %shl2757 = shl nsw i32 %shr2756, 4
  %or2758 = or i32 %and2755, %shl2757
  br label %if.end2764

if.end2764:                                       ; preds = %if.else2749, %if.then2735
  %storemerge.in = phi i32 [ %or2758, %if.else2749 ], [ %or2743, %if.then2735 ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, i8* %arrayidx2719, align 1, !tbaa !1
  %586 = load i32* %origPtr2550, align 4, !tbaa !3
  %cmp2767 = icmp eq i32 %582, %586
  br i1 %cmp2767, label %do.end2769, label %if.end2764.do.body2709_crit_edge

if.end2764.do.body2709_crit_edge:                 ; preds = %if.end2764
  %.pre5341 = load i16** %ll162636, align 8, !tbaa !0
  %.pre5342 = load i8** %ll42653, align 8, !tbaa !0
  br label %do.body2709

do.end2769:                                       ; preds = %if.end2764
  %tPos = getelementptr inbounds %struct.DState* %s, i64 0, i32 14
  store i32 %582, i32* %tPos, align 4, !tbaa !3
  %nblock_used = getelementptr inbounds %struct.DState* %s, i64 0, i32 17
  store i32 0, i32* %nblock_used, align 4, !tbaa !3
  %blockRandomised2771 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  %587 = load i8* %blockRandomised2771, align 1, !tbaa !1
  %tobool2772 = icmp eq i8 %587, 0
  br i1 %tobool2772, label %if.else2821, label %if.then2773

if.then2773:                                      ; preds = %do.end2769
  %rNToGo = getelementptr inbounds %struct.DState* %s, i64 0, i32 5
  store i32 0, i32* %rNToGo, align 4, !tbaa !3
  %rTPos = getelementptr inbounds %struct.DState* %s, i64 0, i32 6
  store i32 0, i32* %rTPos, align 4, !tbaa !3
  %call2776 = call i32 @BZ2_indexIntoF(i32 %582, i32* %arrayidx2559) #4
  %k0 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %call2776, i32* %k0, align 4, !tbaa !3
  %588 = load i32* %tPos, align 4, !tbaa !3
  %idxprom2778 = zext i32 %588 to i64
  %589 = load i16** %ll162636, align 8, !tbaa !0
  %arrayidx2780 = getelementptr inbounds i16* %589, i64 %idxprom2778
  %590 = load i16* %arrayidx2780, align 2, !tbaa !4
  %conv2781 = zext i16 %590 to i32
  %shr2783 = lshr i32 %588, 1
  %idxprom2784 = zext i32 %shr2783 to i64
  %591 = load i8** %ll42653, align 8, !tbaa !0
  %arrayidx2786 = getelementptr inbounds i8* %591, i64 %idxprom2784
  %592 = load i8* %arrayidx2786, align 1, !tbaa !1
  %conv2787 = zext i8 %592 to i32
  %shl2789 = shl i32 %588, 2
  %and2790 = and i32 %shl2789, 4
  %shr2791 = lshr i32 %conv2787, %and2790
  %and2792 = shl i32 %shr2791, 16
  %shl2793 = and i32 %and2792, 983040
  %or2794 = or i32 %shl2793, %conv2781
  store i32 %or2794, i32* %tPos, align 4, !tbaa !3
  %593 = load i32* %nblock_used, align 4, !tbaa !3
  %inc2797 = add nsw i32 %593, 1
  store i32 %inc2797, i32* %nblock_used, align 4, !tbaa !3
  %594 = load i32* %rNToGo, align 4, !tbaa !3
  %cmp2799 = icmp eq i32 %594, 0
  br i1 %cmp2799, label %if.then2801, label %if.end2814

if.then2801:                                      ; preds = %if.then2773
  %595 = load i32* %rTPos, align 4, !tbaa !3
  %idxprom2803 = sext i32 %595 to i64
  %arrayidx2804 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom2803
  %596 = load i32* %arrayidx2804, align 4, !tbaa !3
  store i32 %596, i32* %rNToGo, align 4, !tbaa !3
  %inc2807 = add nsw i32 %595, 1
  %cmp2809 = icmp eq i32 %inc2807, 512
  %.inc2807 = select i1 %cmp2809, i32 0, i32 %inc2807
  store i32 %.inc2807, i32* %rTPos, align 4, !tbaa !3
  br label %if.end2814

if.end2814:                                       ; preds = %if.then2801, %if.then2773
  %597 = phi i32 [ %596, %if.then2801 ], [ %594, %if.then2773 ]
  %dec2816 = add nsw i32 %597, -1
  store i32 %dec2816, i32* %rNToGo, align 4, !tbaa !3
  %cmp2818 = icmp eq i32 %dec2816, 1
  %cond = zext i1 %cmp2818 to i32
  %xor = xor i32 %cond, %call2776
  store i32 %xor, i32* %k0, align 4, !tbaa !3
  br label %save_state_and_return

if.else2821:                                      ; preds = %do.end2769
  %call2825 = call i32 @BZ2_indexIntoF(i32 %582, i32* %arrayidx2559) #4
  %k02826 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %call2825, i32* %k02826, align 4, !tbaa !3
  %598 = load i32* %tPos, align 4, !tbaa !3
  %idxprom2828 = zext i32 %598 to i64
  %599 = load i16** %ll162636, align 8, !tbaa !0
  %arrayidx2830 = getelementptr inbounds i16* %599, i64 %idxprom2828
  %600 = load i16* %arrayidx2830, align 2, !tbaa !4
  %conv2831 = zext i16 %600 to i32
  %shr2833 = lshr i32 %598, 1
  %idxprom2834 = zext i32 %shr2833 to i64
  %601 = load i8** %ll42653, align 8, !tbaa !0
  %arrayidx2836 = getelementptr inbounds i8* %601, i64 %idxprom2834
  %602 = load i8* %arrayidx2836, align 1, !tbaa !1
  %conv2837 = zext i8 %602 to i32
  %shl2839 = shl i32 %598, 2
  %and2840 = and i32 %shl2839, 4
  %shr2841 = lshr i32 %conv2837, %and2840
  %and2842 = shl i32 %shr2841, 16
  %shl2843 = and i32 %and2842, 983040
  %or2844 = or i32 %shl2843, %conv2831
  store i32 %or2844, i32* %tPos, align 4, !tbaa !3
  %603 = load i32* %nblock_used, align 4, !tbaa !3
  %inc2847 = add nsw i32 %603, 1
  store i32 %inc2847, i32* %nblock_used, align 4, !tbaa !3
  br label %save_state_and_return

for.body2853:                                     ; preds = %for.cond2850.preheader, %for.body2853
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body2853 ], [ 0, %for.cond2850.preheader ]
  %604 = load i32** %tt2855, align 8, !tbaa !0
  %arrayidx2856 = getelementptr inbounds i32* %604, i64 %indvars.iv
  %605 = load i32* %arrayidx2856, align 4, !tbaa !3
  %conv2858 = zext i32 %605 to i64
  %606 = trunc i64 %indvars.iv to i32
  %shl2859 = shl i32 %606, 8
  %idxprom2860 = and i64 %conv2858, 255
  %arrayidx2862 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %idxprom2860
  %607 = load i32* %arrayidx2862, align 4, !tbaa !3
  %idxprom2863 = sext i32 %607 to i64
  %arrayidx2865 = getelementptr inbounds i32* %604, i64 %idxprom2863
  %608 = load i32* %arrayidx2865, align 4, !tbaa !3
  %or2866 = or i32 %608, %shl2859
  store i32 %or2866, i32* %arrayidx2865, align 4, !tbaa !3
  %609 = load i32* %arrayidx2862, align 4, !tbaa !3
  %inc2870 = add nsw i32 %609, 1
  store i32 %inc2870, i32* %arrayidx2862, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nblock.3
  br i1 %exitcond, label %for.end2873, label %for.body2853

for.end2873:                                      ; preds = %for.cond2850.preheader, %for.body2853
  %i.37.lcssa = phi i32 [ %nblock.3, %for.body2853 ], [ 0, %for.cond2850.preheader ]
  %610 = load i32* %origPtr2550, align 4, !tbaa !3
  %idxprom2875 = sext i32 %610 to i64
  %611 = load i32** %tt2855, align 8, !tbaa !0
  %arrayidx2877 = getelementptr inbounds i32* %611, i64 %idxprom2875
  %612 = load i32* %arrayidx2877, align 4, !tbaa !3
  %shr2878 = lshr i32 %612, 8
  %tPos2879 = getelementptr inbounds %struct.DState* %s, i64 0, i32 14
  store i32 %shr2878, i32* %tPos2879, align 4, !tbaa !3
  %nblock_used2880 = getelementptr inbounds %struct.DState* %s, i64 0, i32 17
  store i32 0, i32* %nblock_used2880, align 4, !tbaa !3
  %blockRandomised2881 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  %613 = load i8* %blockRandomised2881, align 1, !tbaa !1
  %tobool2882 = icmp eq i8 %613, 0
  br i1 %tobool2882, label %if.else2925, label %if.end2916

if.end2916:                                       ; preds = %for.end2873
  %rNToGo2884 = getelementptr inbounds %struct.DState* %s, i64 0, i32 5
  store i32 0, i32* %rNToGo2884, align 4, !tbaa !3
  %rTPos2885 = getelementptr inbounds %struct.DState* %s, i64 0, i32 6
  store i32 0, i32* %rTPos2885, align 4, !tbaa !3
  %idxprom2887 = zext i32 %shr2878 to i64
  %arrayidx2889 = getelementptr inbounds i32* %611, i64 %idxprom2887
  %614 = load i32* %arrayidx2889, align 4, !tbaa !3
  %conv2894 = and i32 %614, 255
  %k02895 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %conv2894, i32* %k02895, align 4, !tbaa !3
  %shr2897 = lshr i32 %614, 8
  store i32 %shr2897, i32* %tPos2879, align 4, !tbaa !3
  store i32 1, i32* %nblock_used2880, align 4, !tbaa !3
  %615 = load i32* getelementptr inbounds ([512 x i32]* @BZ2_rNums, i64 0, i64 0), align 4, !tbaa !3
  store i32 1, i32* %rTPos2885, align 4, !tbaa !3
  %phitmp = add i32 %615, -1
  store i32 %phitmp, i32* %rNToGo2884, align 4, !tbaa !3
  %cmp2920 = icmp eq i32 %phitmp, 1
  %cond2922 = zext i1 %cmp2920 to i32
  %xor2924 = xor i32 %cond2922, %conv2894
  store i32 %xor2924, i32* %k02895, align 4, !tbaa !3
  br label %save_state_and_return

if.else2925:                                      ; preds = %for.end2873
  %idxprom2927 = zext i32 %shr2878 to i64
  %arrayidx2929 = getelementptr inbounds i32* %611, i64 %idxprom2927
  %616 = load i32* %arrayidx2929, align 4, !tbaa !3
  %conv2934 = and i32 %616, 255
  %k02935 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %conv2934, i32* %k02935, align 4, !tbaa !3
  %shr2937 = lshr i32 %616, 8
  store i32 %shr2937, i32* %tPos2879, align 4, !tbaa !3
  store i32 1, i32* %nblock_used2880, align 4, !tbaa !3
  br label %save_state_and_return

sw.bb2942:                                        ; preds = %if.end.sw.bb2942_crit_edge, %if.then278
  %617 = phi i32 [ %.pre5286, %if.end.sw.bb2942_crit_edge ], [ %sub282, %if.then278 ]
  store i32 42, i32* %state, align 4, !tbaa !3
  %bsLive2946 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp29474793 = icmp sgt i32 %617, 7
  %bsBuff2952.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp29474793, label %if.then2949, label %if.end2960.lr.ph

if.end2960.lr.ph:                                 ; preds = %sw.bb2942
  %.pre5216 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2962.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5216, i64 0, i32 1
  %.pre5287 = load i32* %avail_in2962.phi.trans.insert, align 4, !tbaa !3
  br label %if.end2960

if.then2949:                                      ; preds = %sw.bb2942, %while.body2945.backedge
  %.lcssa4791 = phi i32 [ %629, %while.body2945.backedge ], [ %617, %sw.bb2942 ]
  %618 = load i32* %bsBuff2952.pre, align 4, !tbaa !3
  %sub2954 = add nsw i32 %.lcssa4791, -8
  %shr2955 = lshr i32 %618, %sub2954
  store i32 %sub2954, i32* %bsLive2946, align 4, !tbaa !3
  %conv2995 = and i32 %shr2955, 255
  %cmp2996 = icmp eq i32 %conv2995, 114
  br i1 %cmp2996, label %sw.bb3000, label %save_state_and_return

if.end2960:                                       ; preds = %if.end2960.lr.ph, %while.body2945.backedge
  %619 = phi i32 [ %.pre5287, %if.end2960.lr.ph ], [ %dec2981, %while.body2945.backedge ]
  %620 = phi i32 [ %617, %if.end2960.lr.ph ], [ %629, %while.body2945.backedge ]
  %621 = phi %struct.bz_stream* [ %.pre5216, %if.end2960.lr.ph ], [ %625, %while.body2945.backedge ]
  %cmp2963 = icmp eq i32 %619, 0
  br i1 %cmp2963, label %save_state_and_return, label %if.end2966

if.end2966:                                       ; preds = %if.end2960
  %622 = load i32* %bsBuff2952.pre, align 4, !tbaa !3
  %shl2968 = shl i32 %622, 8
  %next_in2970 = getelementptr inbounds %struct.bz_stream* %621, i64 0, i32 0
  %623 = load i8** %next_in2970, align 8, !tbaa !0
  %624 = load i8* %623, align 1, !tbaa !1
  %conv2971 = zext i8 %624 to i32
  %or2972 = or i32 %conv2971, %shl2968
  store i32 %or2972, i32* %bsBuff2952.pre, align 4, !tbaa !3
  %add2975 = add nsw i32 %620, 8
  store i32 %add2975, i32* %bsLive2946, align 4, !tbaa !3
  %incdec.ptr2978 = getelementptr inbounds i8* %623, i64 1
  store i8* %incdec.ptr2978, i8** %next_in2970, align 8, !tbaa !0
  %625 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in2980 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 1
  %626 = load i32* %avail_in2980, align 4, !tbaa !3
  %dec2981 = add i32 %626, -1
  store i32 %dec2981, i32* %avail_in2980, align 4, !tbaa !3
  %total_in_lo322983 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 2
  %627 = load i32* %total_in_lo322983, align 4, !tbaa !3
  %inc2984 = add i32 %627, 1
  store i32 %inc2984, i32* %total_in_lo322983, align 4, !tbaa !3
  %cmp2987 = icmp eq i32 %inc2984, 0
  br i1 %cmp2987, label %if.then2989, label %while.body2945.backedge

if.then2989:                                      ; preds = %if.end2966
  %total_in_hi322991 = getelementptr inbounds %struct.bz_stream* %625, i64 0, i32 3
  %628 = load i32* %total_in_hi322991, align 4, !tbaa !3
  %inc2992 = add i32 %628, 1
  store i32 %inc2992, i32* %total_in_hi322991, align 4, !tbaa !3
  br label %while.body2945.backedge

while.body2945.backedge:                          ; preds = %if.then2989, %if.end2966
  %629 = load i32* %bsLive2946, align 4, !tbaa !3
  %cmp2947 = icmp sgt i32 %629, 7
  br i1 %cmp2947, label %if.then2949, label %if.end2960

sw.bb3000:                                        ; preds = %if.end.sw.bb3000_crit_edge, %if.then2949
  %630 = phi i32 [ %.pre5288, %if.end.sw.bb3000_crit_edge ], [ %sub2954, %if.then2949 ]
  store i32 43, i32* %state, align 4, !tbaa !3
  %bsLive3004 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp30054786 = icmp sgt i32 %630, 7
  %bsBuff3010.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp30054786, label %if.then3007, label %if.end3018.lr.ph

if.end3018.lr.ph:                                 ; preds = %sw.bb3000
  %.pre5217 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3020.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5217, i64 0, i32 1
  %.pre5289 = load i32* %avail_in3020.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3018

if.then3007:                                      ; preds = %sw.bb3000, %while.body3003.backedge
  %.lcssa4784 = phi i32 [ %642, %while.body3003.backedge ], [ %630, %sw.bb3000 ]
  %631 = load i32* %bsBuff3010.pre, align 4, !tbaa !3
  %sub3012 = add nsw i32 %.lcssa4784, -8
  %shr3013 = lshr i32 %631, %sub3012
  store i32 %sub3012, i32* %bsLive3004, align 4, !tbaa !3
  %conv3053 = and i32 %shr3013, 255
  %cmp3054 = icmp eq i32 %conv3053, 69
  br i1 %cmp3054, label %sw.bb3058, label %save_state_and_return

if.end3018:                                       ; preds = %if.end3018.lr.ph, %while.body3003.backedge
  %632 = phi i32 [ %.pre5289, %if.end3018.lr.ph ], [ %dec3039, %while.body3003.backedge ]
  %633 = phi i32 [ %630, %if.end3018.lr.ph ], [ %642, %while.body3003.backedge ]
  %634 = phi %struct.bz_stream* [ %.pre5217, %if.end3018.lr.ph ], [ %638, %while.body3003.backedge ]
  %cmp3021 = icmp eq i32 %632, 0
  br i1 %cmp3021, label %save_state_and_return, label %if.end3024

if.end3024:                                       ; preds = %if.end3018
  %635 = load i32* %bsBuff3010.pre, align 4, !tbaa !3
  %shl3026 = shl i32 %635, 8
  %next_in3028 = getelementptr inbounds %struct.bz_stream* %634, i64 0, i32 0
  %636 = load i8** %next_in3028, align 8, !tbaa !0
  %637 = load i8* %636, align 1, !tbaa !1
  %conv3029 = zext i8 %637 to i32
  %or3030 = or i32 %conv3029, %shl3026
  store i32 %or3030, i32* %bsBuff3010.pre, align 4, !tbaa !3
  %add3033 = add nsw i32 %633, 8
  store i32 %add3033, i32* %bsLive3004, align 4, !tbaa !3
  %incdec.ptr3036 = getelementptr inbounds i8* %636, i64 1
  store i8* %incdec.ptr3036, i8** %next_in3028, align 8, !tbaa !0
  %638 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3038 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 1
  %639 = load i32* %avail_in3038, align 4, !tbaa !3
  %dec3039 = add i32 %639, -1
  store i32 %dec3039, i32* %avail_in3038, align 4, !tbaa !3
  %total_in_lo323041 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 2
  %640 = load i32* %total_in_lo323041, align 4, !tbaa !3
  %inc3042 = add i32 %640, 1
  store i32 %inc3042, i32* %total_in_lo323041, align 4, !tbaa !3
  %cmp3045 = icmp eq i32 %inc3042, 0
  br i1 %cmp3045, label %if.then3047, label %while.body3003.backedge

if.then3047:                                      ; preds = %if.end3024
  %total_in_hi323049 = getelementptr inbounds %struct.bz_stream* %638, i64 0, i32 3
  %641 = load i32* %total_in_hi323049, align 4, !tbaa !3
  %inc3050 = add i32 %641, 1
  store i32 %inc3050, i32* %total_in_hi323049, align 4, !tbaa !3
  br label %while.body3003.backedge

while.body3003.backedge:                          ; preds = %if.then3047, %if.end3024
  %642 = load i32* %bsLive3004, align 4, !tbaa !3
  %cmp3005 = icmp sgt i32 %642, 7
  br i1 %cmp3005, label %if.then3007, label %if.end3018

sw.bb3058:                                        ; preds = %if.end.sw.bb3058_crit_edge, %if.then3007
  %643 = phi i32 [ %.pre5290, %if.end.sw.bb3058_crit_edge ], [ %sub3012, %if.then3007 ]
  store i32 44, i32* %state, align 4, !tbaa !3
  %bsLive3062 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp30634779 = icmp sgt i32 %643, 7
  %bsBuff3068.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp30634779, label %if.then3065, label %if.end3076.lr.ph

if.end3076.lr.ph:                                 ; preds = %sw.bb3058
  %.pre5218 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3078.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5218, i64 0, i32 1
  %.pre5291 = load i32* %avail_in3078.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3076

if.then3065:                                      ; preds = %sw.bb3058, %while.body3061.backedge
  %.lcssa4777 = phi i32 [ %655, %while.body3061.backedge ], [ %643, %sw.bb3058 ]
  %644 = load i32* %bsBuff3068.pre, align 4, !tbaa !3
  %sub3070 = add nsw i32 %.lcssa4777, -8
  %shr3071 = lshr i32 %644, %sub3070
  store i32 %sub3070, i32* %bsLive3062, align 4, !tbaa !3
  %conv3111 = and i32 %shr3071, 255
  %cmp3112 = icmp eq i32 %conv3111, 56
  br i1 %cmp3112, label %sw.bb3116, label %save_state_and_return

if.end3076:                                       ; preds = %if.end3076.lr.ph, %while.body3061.backedge
  %645 = phi i32 [ %.pre5291, %if.end3076.lr.ph ], [ %dec3097, %while.body3061.backedge ]
  %646 = phi i32 [ %643, %if.end3076.lr.ph ], [ %655, %while.body3061.backedge ]
  %647 = phi %struct.bz_stream* [ %.pre5218, %if.end3076.lr.ph ], [ %651, %while.body3061.backedge ]
  %cmp3079 = icmp eq i32 %645, 0
  br i1 %cmp3079, label %save_state_and_return, label %if.end3082

if.end3082:                                       ; preds = %if.end3076
  %648 = load i32* %bsBuff3068.pre, align 4, !tbaa !3
  %shl3084 = shl i32 %648, 8
  %next_in3086 = getelementptr inbounds %struct.bz_stream* %647, i64 0, i32 0
  %649 = load i8** %next_in3086, align 8, !tbaa !0
  %650 = load i8* %649, align 1, !tbaa !1
  %conv3087 = zext i8 %650 to i32
  %or3088 = or i32 %conv3087, %shl3084
  store i32 %or3088, i32* %bsBuff3068.pre, align 4, !tbaa !3
  %add3091 = add nsw i32 %646, 8
  store i32 %add3091, i32* %bsLive3062, align 4, !tbaa !3
  %incdec.ptr3094 = getelementptr inbounds i8* %649, i64 1
  store i8* %incdec.ptr3094, i8** %next_in3086, align 8, !tbaa !0
  %651 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3096 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 1
  %652 = load i32* %avail_in3096, align 4, !tbaa !3
  %dec3097 = add i32 %652, -1
  store i32 %dec3097, i32* %avail_in3096, align 4, !tbaa !3
  %total_in_lo323099 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 2
  %653 = load i32* %total_in_lo323099, align 4, !tbaa !3
  %inc3100 = add i32 %653, 1
  store i32 %inc3100, i32* %total_in_lo323099, align 4, !tbaa !3
  %cmp3103 = icmp eq i32 %inc3100, 0
  br i1 %cmp3103, label %if.then3105, label %while.body3061.backedge

if.then3105:                                      ; preds = %if.end3082
  %total_in_hi323107 = getelementptr inbounds %struct.bz_stream* %651, i64 0, i32 3
  %654 = load i32* %total_in_hi323107, align 4, !tbaa !3
  %inc3108 = add i32 %654, 1
  store i32 %inc3108, i32* %total_in_hi323107, align 4, !tbaa !3
  br label %while.body3061.backedge

while.body3061.backedge:                          ; preds = %if.then3105, %if.end3082
  %655 = load i32* %bsLive3062, align 4, !tbaa !3
  %cmp3063 = icmp sgt i32 %655, 7
  br i1 %cmp3063, label %if.then3065, label %if.end3076

sw.bb3116:                                        ; preds = %if.end.sw.bb3116_crit_edge, %if.then3065
  %656 = phi i32 [ %.pre5292, %if.end.sw.bb3116_crit_edge ], [ %sub3070, %if.then3065 ]
  store i32 45, i32* %state, align 4, !tbaa !3
  %bsLive3120 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp31214772 = icmp sgt i32 %656, 7
  %bsBuff3126.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp31214772, label %if.then3123, label %if.end3134.lr.ph

if.end3134.lr.ph:                                 ; preds = %sw.bb3116
  %.pre5219 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3136.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5219, i64 0, i32 1
  %.pre5293 = load i32* %avail_in3136.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3134

if.then3123:                                      ; preds = %sw.bb3116, %while.body3119.backedge
  %.lcssa4770 = phi i32 [ %668, %while.body3119.backedge ], [ %656, %sw.bb3116 ]
  %657 = load i32* %bsBuff3126.pre, align 4, !tbaa !3
  %sub3128 = add nsw i32 %.lcssa4770, -8
  %shr3129 = lshr i32 %657, %sub3128
  store i32 %sub3128, i32* %bsLive3120, align 4, !tbaa !3
  %conv3169 = and i32 %shr3129, 255
  %cmp3170 = icmp eq i32 %conv3169, 80
  br i1 %cmp3170, label %sw.bb3174, label %save_state_and_return

if.end3134:                                       ; preds = %if.end3134.lr.ph, %while.body3119.backedge
  %658 = phi i32 [ %.pre5293, %if.end3134.lr.ph ], [ %dec3155, %while.body3119.backedge ]
  %659 = phi i32 [ %656, %if.end3134.lr.ph ], [ %668, %while.body3119.backedge ]
  %660 = phi %struct.bz_stream* [ %.pre5219, %if.end3134.lr.ph ], [ %664, %while.body3119.backedge ]
  %cmp3137 = icmp eq i32 %658, 0
  br i1 %cmp3137, label %save_state_and_return, label %if.end3140

if.end3140:                                       ; preds = %if.end3134
  %661 = load i32* %bsBuff3126.pre, align 4, !tbaa !3
  %shl3142 = shl i32 %661, 8
  %next_in3144 = getelementptr inbounds %struct.bz_stream* %660, i64 0, i32 0
  %662 = load i8** %next_in3144, align 8, !tbaa !0
  %663 = load i8* %662, align 1, !tbaa !1
  %conv3145 = zext i8 %663 to i32
  %or3146 = or i32 %conv3145, %shl3142
  store i32 %or3146, i32* %bsBuff3126.pre, align 4, !tbaa !3
  %add3149 = add nsw i32 %659, 8
  store i32 %add3149, i32* %bsLive3120, align 4, !tbaa !3
  %incdec.ptr3152 = getelementptr inbounds i8* %662, i64 1
  store i8* %incdec.ptr3152, i8** %next_in3144, align 8, !tbaa !0
  %664 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3154 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 1
  %665 = load i32* %avail_in3154, align 4, !tbaa !3
  %dec3155 = add i32 %665, -1
  store i32 %dec3155, i32* %avail_in3154, align 4, !tbaa !3
  %total_in_lo323157 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 2
  %666 = load i32* %total_in_lo323157, align 4, !tbaa !3
  %inc3158 = add i32 %666, 1
  store i32 %inc3158, i32* %total_in_lo323157, align 4, !tbaa !3
  %cmp3161 = icmp eq i32 %inc3158, 0
  br i1 %cmp3161, label %if.then3163, label %while.body3119.backedge

if.then3163:                                      ; preds = %if.end3140
  %total_in_hi323165 = getelementptr inbounds %struct.bz_stream* %664, i64 0, i32 3
  %667 = load i32* %total_in_hi323165, align 4, !tbaa !3
  %inc3166 = add i32 %667, 1
  store i32 %inc3166, i32* %total_in_hi323165, align 4, !tbaa !3
  br label %while.body3119.backedge

while.body3119.backedge:                          ; preds = %if.then3163, %if.end3140
  %668 = load i32* %bsLive3120, align 4, !tbaa !3
  %cmp3121 = icmp sgt i32 %668, 7
  br i1 %cmp3121, label %if.then3123, label %if.end3134

sw.bb3174:                                        ; preds = %if.end.sw.bb3174_crit_edge, %if.then3123
  %669 = phi i32 [ %.pre5294, %if.end.sw.bb3174_crit_edge ], [ %sub3128, %if.then3123 ]
  store i32 46, i32* %state, align 4, !tbaa !3
  %bsLive3178 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp31794765 = icmp sgt i32 %669, 7
  %bsBuff3184.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp31794765, label %if.then3181, label %if.end3192.lr.ph

if.end3192.lr.ph:                                 ; preds = %sw.bb3174
  %.pre5220 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3194.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5220, i64 0, i32 1
  %.pre5295 = load i32* %avail_in3194.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3192

if.then3181:                                      ; preds = %sw.bb3174, %while.body3177.backedge
  %.lcssa4763 = phi i32 [ %681, %while.body3177.backedge ], [ %669, %sw.bb3174 ]
  %670 = load i32* %bsBuff3184.pre, align 4, !tbaa !3
  %sub3186 = add nsw i32 %.lcssa4763, -8
  %shr3187 = lshr i32 %670, %sub3186
  store i32 %sub3186, i32* %bsLive3178, align 4, !tbaa !3
  %conv3227 = and i32 %shr3187, 255
  %cmp3228 = icmp eq i32 %conv3227, 144
  br i1 %cmp3228, label %if.end3231, label %save_state_and_return

if.end3192:                                       ; preds = %if.end3192.lr.ph, %while.body3177.backedge
  %671 = phi i32 [ %.pre5295, %if.end3192.lr.ph ], [ %dec3213, %while.body3177.backedge ]
  %672 = phi i32 [ %669, %if.end3192.lr.ph ], [ %681, %while.body3177.backedge ]
  %673 = phi %struct.bz_stream* [ %.pre5220, %if.end3192.lr.ph ], [ %677, %while.body3177.backedge ]
  %cmp3195 = icmp eq i32 %671, 0
  br i1 %cmp3195, label %save_state_and_return, label %if.end3198

if.end3198:                                       ; preds = %if.end3192
  %674 = load i32* %bsBuff3184.pre, align 4, !tbaa !3
  %shl3200 = shl i32 %674, 8
  %next_in3202 = getelementptr inbounds %struct.bz_stream* %673, i64 0, i32 0
  %675 = load i8** %next_in3202, align 8, !tbaa !0
  %676 = load i8* %675, align 1, !tbaa !1
  %conv3203 = zext i8 %676 to i32
  %or3204 = or i32 %conv3203, %shl3200
  store i32 %or3204, i32* %bsBuff3184.pre, align 4, !tbaa !3
  %add3207 = add nsw i32 %672, 8
  store i32 %add3207, i32* %bsLive3178, align 4, !tbaa !3
  %incdec.ptr3210 = getelementptr inbounds i8* %675, i64 1
  store i8* %incdec.ptr3210, i8** %next_in3202, align 8, !tbaa !0
  %677 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3212 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 1
  %678 = load i32* %avail_in3212, align 4, !tbaa !3
  %dec3213 = add i32 %678, -1
  store i32 %dec3213, i32* %avail_in3212, align 4, !tbaa !3
  %total_in_lo323215 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 2
  %679 = load i32* %total_in_lo323215, align 4, !tbaa !3
  %inc3216 = add i32 %679, 1
  store i32 %inc3216, i32* %total_in_lo323215, align 4, !tbaa !3
  %cmp3219 = icmp eq i32 %inc3216, 0
  br i1 %cmp3219, label %if.then3221, label %while.body3177.backedge

if.then3221:                                      ; preds = %if.end3198
  %total_in_hi323223 = getelementptr inbounds %struct.bz_stream* %677, i64 0, i32 3
  %680 = load i32* %total_in_hi323223, align 4, !tbaa !3
  %inc3224 = add i32 %680, 1
  store i32 %inc3224, i32* %total_in_hi323223, align 4, !tbaa !3
  br label %while.body3177.backedge

while.body3177.backedge:                          ; preds = %if.then3221, %if.end3198
  %681 = load i32* %bsLive3178, align 4, !tbaa !3
  %cmp3179 = icmp sgt i32 %681, 7
  br i1 %cmp3179, label %if.then3181, label %if.end3192

if.end3231:                                       ; preds = %if.then3181
  %storedCombinedCRC = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  store i32 0, i32* %storedCombinedCRC, align 4, !tbaa !3
  br label %sw.bb3232

sw.bb3232:                                        ; preds = %if.end.sw.bb3232_crit_edge, %if.end3231
  %682 = phi i32 [ %.pre5296, %if.end.sw.bb3232_crit_edge ], [ %sub3186, %if.end3231 ]
  store i32 47, i32* %state, align 4, !tbaa !3
  %bsLive3236 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp32374758 = icmp sgt i32 %682, 7
  %bsBuff3242.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp32374758, label %if.then3239, label %if.end3250.lr.ph

if.end3250.lr.ph:                                 ; preds = %sw.bb3232
  %.pre5221 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3252.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5221, i64 0, i32 1
  %.pre5297 = load i32* %avail_in3252.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3250

if.then3239:                                      ; preds = %sw.bb3232, %while.body3235.backedge
  %.lcssa4756 = phi i32 [ %695, %while.body3235.backedge ], [ %682, %sw.bb3232 ]
  %683 = load i32* %bsBuff3242.pre, align 4, !tbaa !3
  %sub3244 = add nsw i32 %.lcssa4756, -8
  %shr3245 = lshr i32 %683, %sub3244
  store i32 %sub3244, i32* %bsLive3236, align 4, !tbaa !3
  %storedCombinedCRC3285 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %684 = load i32* %storedCombinedCRC3285, align 4, !tbaa !3
  %shl3286 = shl i32 %684, 8
  %conv3287 = and i32 %shr3245, 255
  %or3288 = or i32 %shl3286, %conv3287
  store i32 %or3288, i32* %storedCombinedCRC3285, align 4, !tbaa !3
  br label %sw.bb3290

if.end3250:                                       ; preds = %if.end3250.lr.ph, %while.body3235.backedge
  %685 = phi i32 [ %.pre5297, %if.end3250.lr.ph ], [ %dec3271, %while.body3235.backedge ]
  %686 = phi i32 [ %682, %if.end3250.lr.ph ], [ %695, %while.body3235.backedge ]
  %687 = phi %struct.bz_stream* [ %.pre5221, %if.end3250.lr.ph ], [ %691, %while.body3235.backedge ]
  %cmp3253 = icmp eq i32 %685, 0
  br i1 %cmp3253, label %save_state_and_return, label %if.end3256

if.end3256:                                       ; preds = %if.end3250
  %688 = load i32* %bsBuff3242.pre, align 4, !tbaa !3
  %shl3258 = shl i32 %688, 8
  %next_in3260 = getelementptr inbounds %struct.bz_stream* %687, i64 0, i32 0
  %689 = load i8** %next_in3260, align 8, !tbaa !0
  %690 = load i8* %689, align 1, !tbaa !1
  %conv3261 = zext i8 %690 to i32
  %or3262 = or i32 %conv3261, %shl3258
  store i32 %or3262, i32* %bsBuff3242.pre, align 4, !tbaa !3
  %add3265 = add nsw i32 %686, 8
  store i32 %add3265, i32* %bsLive3236, align 4, !tbaa !3
  %incdec.ptr3268 = getelementptr inbounds i8* %689, i64 1
  store i8* %incdec.ptr3268, i8** %next_in3260, align 8, !tbaa !0
  %691 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3270 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 1
  %692 = load i32* %avail_in3270, align 4, !tbaa !3
  %dec3271 = add i32 %692, -1
  store i32 %dec3271, i32* %avail_in3270, align 4, !tbaa !3
  %total_in_lo323273 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 2
  %693 = load i32* %total_in_lo323273, align 4, !tbaa !3
  %inc3274 = add i32 %693, 1
  store i32 %inc3274, i32* %total_in_lo323273, align 4, !tbaa !3
  %cmp3277 = icmp eq i32 %inc3274, 0
  br i1 %cmp3277, label %if.then3279, label %while.body3235.backedge

if.then3279:                                      ; preds = %if.end3256
  %total_in_hi323281 = getelementptr inbounds %struct.bz_stream* %691, i64 0, i32 3
  %694 = load i32* %total_in_hi323281, align 4, !tbaa !3
  %inc3282 = add i32 %694, 1
  store i32 %inc3282, i32* %total_in_hi323281, align 4, !tbaa !3
  br label %while.body3235.backedge

while.body3235.backedge:                          ; preds = %if.then3279, %if.end3256
  %695 = load i32* %bsLive3236, align 4, !tbaa !3
  %cmp3237 = icmp sgt i32 %695, 7
  br i1 %cmp3237, label %if.then3239, label %if.end3250

sw.bb3290:                                        ; preds = %if.end.sw.bb3290_crit_edge, %if.then3239
  %696 = phi i32 [ %.pre5298, %if.end.sw.bb3290_crit_edge ], [ %sub3244, %if.then3239 ]
  store i32 48, i32* %state, align 4, !tbaa !3
  %bsLive3294 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp32954751 = icmp sgt i32 %696, 7
  %bsBuff3300.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp32954751, label %if.then3297, label %if.end3308.lr.ph

if.end3308.lr.ph:                                 ; preds = %sw.bb3290
  %.pre5222 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3310.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5222, i64 0, i32 1
  %.pre5299 = load i32* %avail_in3310.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3308

if.then3297:                                      ; preds = %sw.bb3290, %while.body3293.backedge
  %.lcssa4749 = phi i32 [ %709, %while.body3293.backedge ], [ %696, %sw.bb3290 ]
  %697 = load i32* %bsBuff3300.pre, align 4, !tbaa !3
  %sub3302 = add nsw i32 %.lcssa4749, -8
  %shr3303 = lshr i32 %697, %sub3302
  store i32 %sub3302, i32* %bsLive3294, align 4, !tbaa !3
  %storedCombinedCRC3343 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %698 = load i32* %storedCombinedCRC3343, align 4, !tbaa !3
  %shl3344 = shl i32 %698, 8
  %conv3345 = and i32 %shr3303, 255
  %or3346 = or i32 %shl3344, %conv3345
  store i32 %or3346, i32* %storedCombinedCRC3343, align 4, !tbaa !3
  br label %sw.bb3348

if.end3308:                                       ; preds = %if.end3308.lr.ph, %while.body3293.backedge
  %699 = phi i32 [ %.pre5299, %if.end3308.lr.ph ], [ %dec3329, %while.body3293.backedge ]
  %700 = phi i32 [ %696, %if.end3308.lr.ph ], [ %709, %while.body3293.backedge ]
  %701 = phi %struct.bz_stream* [ %.pre5222, %if.end3308.lr.ph ], [ %705, %while.body3293.backedge ]
  %cmp3311 = icmp eq i32 %699, 0
  br i1 %cmp3311, label %save_state_and_return, label %if.end3314

if.end3314:                                       ; preds = %if.end3308
  %702 = load i32* %bsBuff3300.pre, align 4, !tbaa !3
  %shl3316 = shl i32 %702, 8
  %next_in3318 = getelementptr inbounds %struct.bz_stream* %701, i64 0, i32 0
  %703 = load i8** %next_in3318, align 8, !tbaa !0
  %704 = load i8* %703, align 1, !tbaa !1
  %conv3319 = zext i8 %704 to i32
  %or3320 = or i32 %conv3319, %shl3316
  store i32 %or3320, i32* %bsBuff3300.pre, align 4, !tbaa !3
  %add3323 = add nsw i32 %700, 8
  store i32 %add3323, i32* %bsLive3294, align 4, !tbaa !3
  %incdec.ptr3326 = getelementptr inbounds i8* %703, i64 1
  store i8* %incdec.ptr3326, i8** %next_in3318, align 8, !tbaa !0
  %705 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3328 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 1
  %706 = load i32* %avail_in3328, align 4, !tbaa !3
  %dec3329 = add i32 %706, -1
  store i32 %dec3329, i32* %avail_in3328, align 4, !tbaa !3
  %total_in_lo323331 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 2
  %707 = load i32* %total_in_lo323331, align 4, !tbaa !3
  %inc3332 = add i32 %707, 1
  store i32 %inc3332, i32* %total_in_lo323331, align 4, !tbaa !3
  %cmp3335 = icmp eq i32 %inc3332, 0
  br i1 %cmp3335, label %if.then3337, label %while.body3293.backedge

if.then3337:                                      ; preds = %if.end3314
  %total_in_hi323339 = getelementptr inbounds %struct.bz_stream* %705, i64 0, i32 3
  %708 = load i32* %total_in_hi323339, align 4, !tbaa !3
  %inc3340 = add i32 %708, 1
  store i32 %inc3340, i32* %total_in_hi323339, align 4, !tbaa !3
  br label %while.body3293.backedge

while.body3293.backedge:                          ; preds = %if.then3337, %if.end3314
  %709 = load i32* %bsLive3294, align 4, !tbaa !3
  %cmp3295 = icmp sgt i32 %709, 7
  br i1 %cmp3295, label %if.then3297, label %if.end3308

sw.bb3348:                                        ; preds = %if.end.sw.bb3348_crit_edge, %if.then3297
  %710 = phi i32 [ %.pre5300, %if.end.sw.bb3348_crit_edge ], [ %sub3302, %if.then3297 ]
  store i32 49, i32* %state, align 4, !tbaa !3
  %bsLive3352 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp33534744 = icmp sgt i32 %710, 7
  %bsBuff3358.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp33534744, label %if.then3355, label %if.end3366.lr.ph

if.end3366.lr.ph:                                 ; preds = %sw.bb3348
  %.pre5223 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3368.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5223, i64 0, i32 1
  %.pre5301 = load i32* %avail_in3368.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3366

if.then3355:                                      ; preds = %sw.bb3348, %while.body3351.backedge
  %.lcssa4742 = phi i32 [ %723, %while.body3351.backedge ], [ %710, %sw.bb3348 ]
  %711 = load i32* %bsBuff3358.pre, align 4, !tbaa !3
  %sub3360 = add nsw i32 %.lcssa4742, -8
  %shr3361 = lshr i32 %711, %sub3360
  store i32 %sub3360, i32* %bsLive3352, align 4, !tbaa !3
  %storedCombinedCRC3401 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %712 = load i32* %storedCombinedCRC3401, align 4, !tbaa !3
  %shl3402 = shl i32 %712, 8
  %conv3403 = and i32 %shr3361, 255
  %or3404 = or i32 %shl3402, %conv3403
  store i32 %or3404, i32* %storedCombinedCRC3401, align 4, !tbaa !3
  br label %sw.bb3406

if.end3366:                                       ; preds = %if.end3366.lr.ph, %while.body3351.backedge
  %713 = phi i32 [ %.pre5301, %if.end3366.lr.ph ], [ %dec3387, %while.body3351.backedge ]
  %714 = phi i32 [ %710, %if.end3366.lr.ph ], [ %723, %while.body3351.backedge ]
  %715 = phi %struct.bz_stream* [ %.pre5223, %if.end3366.lr.ph ], [ %719, %while.body3351.backedge ]
  %cmp3369 = icmp eq i32 %713, 0
  br i1 %cmp3369, label %save_state_and_return, label %if.end3372

if.end3372:                                       ; preds = %if.end3366
  %716 = load i32* %bsBuff3358.pre, align 4, !tbaa !3
  %shl3374 = shl i32 %716, 8
  %next_in3376 = getelementptr inbounds %struct.bz_stream* %715, i64 0, i32 0
  %717 = load i8** %next_in3376, align 8, !tbaa !0
  %718 = load i8* %717, align 1, !tbaa !1
  %conv3377 = zext i8 %718 to i32
  %or3378 = or i32 %conv3377, %shl3374
  store i32 %or3378, i32* %bsBuff3358.pre, align 4, !tbaa !3
  %add3381 = add nsw i32 %714, 8
  store i32 %add3381, i32* %bsLive3352, align 4, !tbaa !3
  %incdec.ptr3384 = getelementptr inbounds i8* %717, i64 1
  store i8* %incdec.ptr3384, i8** %next_in3376, align 8, !tbaa !0
  %719 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3386 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 1
  %720 = load i32* %avail_in3386, align 4, !tbaa !3
  %dec3387 = add i32 %720, -1
  store i32 %dec3387, i32* %avail_in3386, align 4, !tbaa !3
  %total_in_lo323389 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 2
  %721 = load i32* %total_in_lo323389, align 4, !tbaa !3
  %inc3390 = add i32 %721, 1
  store i32 %inc3390, i32* %total_in_lo323389, align 4, !tbaa !3
  %cmp3393 = icmp eq i32 %inc3390, 0
  br i1 %cmp3393, label %if.then3395, label %while.body3351.backedge

if.then3395:                                      ; preds = %if.end3372
  %total_in_hi323397 = getelementptr inbounds %struct.bz_stream* %719, i64 0, i32 3
  %722 = load i32* %total_in_hi323397, align 4, !tbaa !3
  %inc3398 = add i32 %722, 1
  store i32 %inc3398, i32* %total_in_hi323397, align 4, !tbaa !3
  br label %while.body3351.backedge

while.body3351.backedge:                          ; preds = %if.then3395, %if.end3372
  %723 = load i32* %bsLive3352, align 4, !tbaa !3
  %cmp3353 = icmp sgt i32 %723, 7
  br i1 %cmp3353, label %if.then3355, label %if.end3366

sw.bb3406:                                        ; preds = %if.end.sw.bb3406_crit_edge, %if.then3355
  %724 = phi i32 [ %.pre5302, %if.end.sw.bb3406_crit_edge ], [ %sub3360, %if.then3355 ]
  store i32 50, i32* %state, align 4, !tbaa !3
  %bsLive3410 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %cmp34114738 = icmp sgt i32 %724, 7
  %bsBuff3416.pre = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %cmp34114738, label %if.then3413, label %if.end3424.lr.ph

if.end3424.lr.ph:                                 ; preds = %sw.bb3406
  %.pre5224 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3426.phi.trans.insert = getelementptr inbounds %struct.bz_stream* %.pre5224, i64 0, i32 1
  %.pre5303 = load i32* %avail_in3426.phi.trans.insert, align 4, !tbaa !3
  br label %if.end3424

if.then3413:                                      ; preds = %sw.bb3406, %while.body3409.backedge
  %.lcssa = phi i32 [ %737, %while.body3409.backedge ], [ %724, %sw.bb3406 ]
  %725 = load i32* %bsBuff3416.pre, align 4, !tbaa !3
  %sub3418 = add nsw i32 %.lcssa, -8
  %shr3419 = lshr i32 %725, %sub3418
  store i32 %sub3418, i32* %bsLive3410, align 4, !tbaa !3
  %storedCombinedCRC3459 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %726 = load i32* %storedCombinedCRC3459, align 4, !tbaa !3
  %shl3460 = shl i32 %726, 8
  %conv3461 = and i32 %shr3419, 255
  %or3462 = or i32 %shl3460, %conv3461
  store i32 %or3462, i32* %storedCombinedCRC3459, align 4, !tbaa !3
  store i32 1, i32* %state, align 4, !tbaa !3
  br label %save_state_and_return

if.end3424:                                       ; preds = %if.end3424.lr.ph, %while.body3409.backedge
  %727 = phi i32 [ %.pre5303, %if.end3424.lr.ph ], [ %dec3445, %while.body3409.backedge ]
  %728 = phi i32 [ %724, %if.end3424.lr.ph ], [ %737, %while.body3409.backedge ]
  %729 = phi %struct.bz_stream* [ %.pre5224, %if.end3424.lr.ph ], [ %733, %while.body3409.backedge ]
  %cmp3427 = icmp eq i32 %727, 0
  br i1 %cmp3427, label %save_state_and_return, label %if.end3430

if.end3430:                                       ; preds = %if.end3424
  %730 = load i32* %bsBuff3416.pre, align 4, !tbaa !3
  %shl3432 = shl i32 %730, 8
  %next_in3434 = getelementptr inbounds %struct.bz_stream* %729, i64 0, i32 0
  %731 = load i8** %next_in3434, align 8, !tbaa !0
  %732 = load i8* %731, align 1, !tbaa !1
  %conv3435 = zext i8 %732 to i32
  %or3436 = or i32 %conv3435, %shl3432
  store i32 %or3436, i32* %bsBuff3416.pre, align 4, !tbaa !3
  %add3439 = add nsw i32 %728, 8
  store i32 %add3439, i32* %bsLive3410, align 4, !tbaa !3
  %incdec.ptr3442 = getelementptr inbounds i8* %731, i64 1
  store i8* %incdec.ptr3442, i8** %next_in3434, align 8, !tbaa !0
  %733 = load %struct.bz_stream** %strm1, align 8, !tbaa !0
  %avail_in3444 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 1
  %734 = load i32* %avail_in3444, align 4, !tbaa !3
  %dec3445 = add i32 %734, -1
  store i32 %dec3445, i32* %avail_in3444, align 4, !tbaa !3
  %total_in_lo323447 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 2
  %735 = load i32* %total_in_lo323447, align 4, !tbaa !3
  %inc3448 = add i32 %735, 1
  store i32 %inc3448, i32* %total_in_lo323447, align 4, !tbaa !3
  %cmp3451 = icmp eq i32 %inc3448, 0
  br i1 %cmp3451, label %if.then3453, label %while.body3409.backedge

if.then3453:                                      ; preds = %if.end3430
  %total_in_hi323455 = getelementptr inbounds %struct.bz_stream* %733, i64 0, i32 3
  %736 = load i32* %total_in_hi323455, align 4, !tbaa !3
  %inc3456 = add i32 %736, 1
  store i32 %inc3456, i32* %total_in_hi323455, align 4, !tbaa !3
  br label %while.body3409.backedge

while.body3409.backedge:                          ; preds = %if.then3453, %if.end3430
  %737 = load i32* %bsLive3410, align 4, !tbaa !3
  %cmp3411 = icmp sgt i32 %737, 7
  br i1 %cmp3411, label %if.then3413, label %if.end3424

sw.default:                                       ; preds = %if.end
  call void @BZ2_bz__AssertH__fail(i32 4001) #4
  call void @BZ2_bz__AssertH__fail(i32 4002) #4
  br label %save_state_and_return

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
  store i32 %i.39, i32* %save_i2, align 4, !tbaa !3
  store i32 %j.27, i32* %save_j3, align 4, !tbaa !3
  store i32 %t.18, i32* %save_t4, align 4, !tbaa !3
  store i32 %alphaSize.21, i32* %save_alphaSize5, align 4, !tbaa !3
  store i32 %nGroups.20, i32* %save_nGroups6, align 4, !tbaa !3
  store i32 %nSelectors.19, i32* %save_nSelectors7, align 4, !tbaa !3
  store i32 %EOB.11, i32* %save_EOB8, align 4, !tbaa !3
  store i32 %groupNo.14, i32* %save_groupNo9, align 4, !tbaa !3
  store i32 %groupPos.14, i32* %save_groupPos10, align 4, !tbaa !3
  store i32 %nextSym.8, i32* %save_nextSym11, align 4, !tbaa !3
  store i32 %nblockMAX.11, i32* %save_nblockMAX12, align 4, !tbaa !3
  store i32 %nblock.13, i32* %save_nblock13, align 4, !tbaa !3
  store i32 %es.11, i32* %save_es14, align 4, !tbaa !3
  store i32 %N.8, i32* %save_N15, align 4, !tbaa !3
  store i32 %curr.17, i32* %save_curr16, align 4, !tbaa !3
  store i32 %11, i32* %save_zt17, align 4, !tbaa !3
  store i32 %zn.11, i32* %save_zn18, align 4, !tbaa !3
  store i32 %zvec.10, i32* %save_zvec19, align 4, !tbaa !3
  store i32 %zj.10, i32* %save_zj20, align 4, !tbaa !3
  store i32 %gSel.14, i32* %save_gSel21, align 4, !tbaa !3
  store i32 %gMinlen.14, i32* %save_gMinlen22, align 4, !tbaa !3
  store i32* %gLimit.14, i32** %save_gLimit23, align 8, !tbaa !0
  store i32* %gBase.14, i32** %save_gBase24, align 8, !tbaa !0
  store i32* %gPerm.14, i32** %save_gPerm25, align 8, !tbaa !0
  ret i32 %retVal.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @BZ2_indexIntoF(i32, i32*) #2

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
