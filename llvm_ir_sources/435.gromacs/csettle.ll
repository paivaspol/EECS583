; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/csettle.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@csettle.bFirst = internal unnamed_addr global i1 false
@csettle.wo = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.wh = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.wohh = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.ra = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.rb = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.rc = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.rc2 = internal unnamed_addr global float 0.000000e+00, align 4
@csettle.rone = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [35 x i8] c"Going to use C-settle (%d waters)\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c"wo = %g, wh =%g, wohh = %g, rc = %g, ra = %g\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"rb = %g, rc2 = %g, rone = %g, dHH = %g, dOH = %g\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @csettle(%struct._IO_FILE* %fp, i32 %nshake, i32* nocapture %owptr, float* nocapture %b4, float* nocapture %after, float %dOH, float %dHH, float %mO, float %mH, i32* nocapture %error) #0 {
entry:
  store i32 -1, i32* %error, align 4, !tbaa !0
  %.b = load i1* @csettle.bFirst, align 1
  br i1 %.b, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %tobool84 = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool84, label %if.then85, label %if.end

if.then85:                                        ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %nshake) #2
  br label %if.end

if.end:                                           ; preds = %if.then85, %if.then
  store float %mO, float* @csettle.wo, align 4, !tbaa !3
  store float %mH, float* @csettle.wh, align 4, !tbaa !3
  %conv = fpext float %mO to double
  %conv86 = fpext float %mH to double
  %mul = fmul double %conv86, 2.000000e+00
  %add = fadd double %conv, %mul
  %conv87 = fptrunc double %add to float
  store float %conv87, float* @csettle.wohh, align 4, !tbaa !3
  %conv89 = fmul float %dHH, 5.000000e-01
  store float %conv89, float* @csettle.rc, align 4, !tbaa !3
  %mul92 = fmul float %dOH, %dOH
  %mul93 = fmul float %conv89, %conv89
  %sub = fsub float %mul92, %mul93
  %conv94 = fpext float %sub to double
  %call95 = tail call double @sqrt(double %conv94) #2
  %mul96 = fmul double %call95, %mul
  %0 = load float* @csettle.wohh, align 4, !tbaa !3
  %conv97 = fpext float %0 to double
  %div98 = fdiv double %mul96, %conv97
  %conv99 = fptrunc double %div98 to float
  store float %conv99, float* @csettle.ra, align 4, !tbaa !3
  %1 = load float* @csettle.rc, align 4, !tbaa !3
  %mul101 = fmul float %1, %1
  %sub102 = fsub float %mul92, %mul101
  %conv103 = fpext float %sub102 to double
  %call104 = tail call double @sqrt(double %conv103) #2
  %2 = load float* @csettle.ra, align 4, !tbaa !3
  %conv105 = fpext float %2 to double
  %sub106 = fsub double %call104, %conv105
  %conv107 = fptrunc double %sub106 to float
  store float %conv107, float* @csettle.rb, align 4, !tbaa !3
  store float %dHH, float* @csettle.rc2, align 4, !tbaa !3
  store float 1.000000e+00, float* @csettle.rone, align 4, !tbaa !3
  %3 = load float* @csettle.wohh, align 4, !tbaa !3
  %4 = load float* @csettle.wo, align 4, !tbaa !3
  %div108 = fdiv float %4, %3
  store float %div108, float* @csettle.wo, align 4, !tbaa !3
  %5 = load float* @csettle.wh, align 4, !tbaa !3
  %div109 = fdiv float %5, %3
  store float %div109, float* @csettle.wh, align 4, !tbaa !3
  br i1 %tobool84, label %if.then111, label %if.end124

if.then111:                                       ; preds = %if.end
  %conv88 = fpext float %dHH to double
  %conv112 = fpext float %div108 to double
  %conv113 = fpext float %div109 to double
  %conv114 = fpext float %3 to double
  %6 = load float* @csettle.rc, align 4, !tbaa !3
  %conv115 = fpext float %6 to double
  %call117 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), double %conv112, double %conv113, double %conv114, double %conv115, double %conv105) #2
  %7 = load float* @csettle.rb, align 4, !tbaa !3
  %conv118 = fpext float %7 to double
  %8 = load float* @csettle.rc2, align 4, !tbaa !3
  %conv119 = fpext float %8 to double
  %9 = load float* @csettle.rone, align 4, !tbaa !3
  %conv120 = fpext float %9 to double
  %conv122 = fpext float %dOH to double
  %call123 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), double %conv118, double %conv119, double %conv120, double %conv88, double %conv122) #2
  br label %if.end124

if.end124:                                        ; preds = %if.then111, %if.end
  store i1 true, i1* @csettle.bFirst, align 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end124
  %cmp827 = icmp sgt i32 %nshake, 0
  br i1 %cmp827, label %for.body, label %for.end

for.body:                                         ; preds = %if.end377, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %if.end377 ]
  %arrayidx = getelementptr inbounds i32* %owptr, i64 %indvars.iv
  %10 = load i32* %arrayidx, align 4, !tbaa !0
  %mul127 = mul nsw i32 %10, 3
  %add128 = add nsw i32 %mul127, 3
  %add129 = add nsw i32 %mul127, 6
  %idxprom130 = sext i32 %add128 to i64
  %arrayidx131 = getelementptr inbounds float* %b4, i64 %idxprom130
  %11 = load float* %arrayidx131, align 4, !tbaa !3
  %idxprom132 = sext i32 %mul127 to i64
  %arrayidx133 = getelementptr inbounds float* %b4, i64 %idxprom132
  %12 = load float* %arrayidx133, align 4, !tbaa !3
  %sub134 = fsub float %11, %12
  %add135 = add nsw i32 %mul127, 4
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds float* %b4, i64 %idxprom136
  %13 = load float* %arrayidx137, align 4, !tbaa !3
  %add138 = add nsw i32 %mul127, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds float* %b4, i64 %idxprom139
  %14 = load float* %arrayidx140, align 4, !tbaa !3
  %sub141 = fsub float %13, %14
  %add142 = add nsw i32 %mul127, 5
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds float* %b4, i64 %idxprom143
  %15 = load float* %arrayidx144, align 4, !tbaa !3
  %add145 = add nsw i32 %mul127, 2
  %idxprom146 = sext i32 %add145 to i64
  %arrayidx147 = getelementptr inbounds float* %b4, i64 %idxprom146
  %16 = load float* %arrayidx147, align 4, !tbaa !3
  %sub148 = fsub float %15, %16
  %idxprom149 = sext i32 %add129 to i64
  %arrayidx150 = getelementptr inbounds float* %b4, i64 %idxprom149
  %17 = load float* %arrayidx150, align 4, !tbaa !3
  %sub153 = fsub float %17, %12
  %add154 = add nsw i32 %mul127, 7
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds float* %b4, i64 %idxprom155
  %18 = load float* %arrayidx156, align 4, !tbaa !3
  %sub160 = fsub float %18, %14
  %add161 = add nsw i32 %mul127, 8
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds float* %b4, i64 %idxprom162
  %19 = load float* %arrayidx163, align 4, !tbaa !3
  %sub167 = fsub float %19, %16
  %arrayidx169 = getelementptr inbounds float* %after, i64 %idxprom132
  %20 = load float* %arrayidx169, align 4, !tbaa !3
  %21 = load float* @csettle.wo, align 4, !tbaa !3
  %mul170 = fmul float %20, %21
  %arrayidx172 = getelementptr inbounds float* %after, i64 %idxprom130
  %22 = load float* %arrayidx172, align 4, !tbaa !3
  %arrayidx174 = getelementptr inbounds float* %after, i64 %idxprom149
  %23 = load float* %arrayidx174, align 4, !tbaa !3
  %add175 = fadd float %22, %23
  %24 = load float* @csettle.wh, align 4, !tbaa !3
  %mul176 = fmul float %add175, %24
  %add177 = fadd float %mul170, %mul176
  %arrayidx180 = getelementptr inbounds float* %after, i64 %idxprom139
  %25 = load float* %arrayidx180, align 4, !tbaa !3
  %mul181 = fmul float %21, %25
  %arrayidx184 = getelementptr inbounds float* %after, i64 %idxprom136
  %26 = load float* %arrayidx184, align 4, !tbaa !3
  %arrayidx187 = getelementptr inbounds float* %after, i64 %idxprom155
  %27 = load float* %arrayidx187, align 4, !tbaa !3
  %add188 = fadd float %26, %27
  %mul189 = fmul float %24, %add188
  %add190 = fadd float %mul181, %mul189
  %arrayidx193 = getelementptr inbounds float* %after, i64 %idxprom146
  %28 = load float* %arrayidx193, align 4, !tbaa !3
  %mul194 = fmul float %21, %28
  %arrayidx197 = getelementptr inbounds float* %after, i64 %idxprom143
  %29 = load float* %arrayidx197, align 4, !tbaa !3
  %arrayidx200 = getelementptr inbounds float* %after, i64 %idxprom162
  %30 = load float* %arrayidx200, align 4, !tbaa !3
  %add201 = fadd float %29, %30
  %mul202 = fmul float %24, %add201
  %add203 = fadd float %mul194, %mul202
  %sub206 = fsub float %20, %add177
  %sub210 = fsub float %25, %add190
  %sub214 = fsub float %28, %add203
  %sub217 = fsub float %22, %add177
  %sub221 = fsub float %26, %add190
  %sub225 = fsub float %29, %add203
  %sub228 = fsub float %23, %add177
  %sub232 = fsub float %27, %add190
  %sub236 = fsub float %30, %add203
  %mul237 = fmul float %sub141, %sub167
  %mul238 = fmul float %sub148, %sub160
  %sub239 = fsub float %mul237, %mul238
  %mul240 = fmul float %sub148, %sub153
  %mul241 = fmul float %sub134, %sub167
  %sub242 = fsub float %mul240, %mul241
  %mul243 = fmul float %sub134, %sub160
  %mul244 = fmul float %sub141, %sub153
  %sub245 = fsub float %mul243, %mul244
  %mul246 = fmul float %sub245, %sub210
  %mul247 = fmul float %sub242, %sub214
  %sub248 = fsub float %mul246, %mul247
  %mul249 = fmul float %sub239, %sub214
  %mul250 = fmul float %sub245, %sub206
  %sub251 = fsub float %mul249, %mul250
  %mul252 = fmul float %sub242, %sub206
  %mul253 = fmul float %sub239, %sub210
  %sub254 = fsub float %mul252, %mul253
  %mul255 = fmul float %sub242, %sub254
  %mul256 = fmul float %sub245, %sub251
  %sub257 = fsub float %mul255, %mul256
  %mul258 = fmul float %sub245, %sub248
  %mul259 = fmul float %sub239, %sub254
  %sub260 = fsub float %mul258, %mul259
  %mul261 = fmul float %sub239, %sub251
  %mul262 = fmul float %sub242, %sub248
  %sub263 = fsub float %mul261, %mul262
  %mul264 = fmul float %sub248, %sub248
  %mul265 = fmul float %sub251, %sub251
  %add266 = fadd float %mul264, %mul265
  %mul267 = fmul float %sub254, %sub254
  %add268 = fadd float %mul267, %add266
  %conv269 = fpext float %add268 to double
  %call270 = tail call double @sqrt(double %conv269) #2
  %div271 = fdiv double 1.000000e+00, %call270
  %conv272 = fptrunc double %div271 to float
  %mul273 = fmul float %sub257, %sub257
  %mul274 = fmul float %sub260, %sub260
  %add275 = fadd float %mul273, %mul274
  %mul276 = fmul float %sub263, %sub263
  %add277 = fadd float %mul276, %add275
  %conv278 = fpext float %add277 to double
  %call279 = tail call double @sqrt(double %conv278) #2
  %div280 = fdiv double 1.000000e+00, %call279
  %conv281 = fptrunc double %div280 to float
  %mul282 = fmul float %sub239, %sub239
  %mul283 = fmul float %sub242, %sub242
  %add284 = fadd float %mul282, %mul283
  %mul285 = fmul float %sub245, %sub245
  %add286 = fadd float %mul285, %add284
  %conv287 = fpext float %add286 to double
  %call288 = tail call double @sqrt(double %conv287) #2
  %div289 = fdiv double 1.000000e+00, %call288
  %conv290 = fptrunc double %div289 to float
  %mul291 = fmul float %conv272, %sub248
  %mul292 = fmul float %conv272, %sub251
  %mul293 = fmul float %sub254, %conv272
  %mul294 = fmul float %conv281, %sub257
  %mul295 = fmul float %conv281, %sub260
  %mul296 = fmul float %conv281, %sub263
  %mul297 = fmul float %sub239, %conv290
  %mul298 = fmul float %sub242, %conv290
  %mul299 = fmul float %sub245, %conv290
  %mul300 = fmul float %sub134, %mul291
  %mul301 = fmul float %sub141, %mul292
  %add302 = fadd float %mul300, %mul301
  %mul303 = fmul float %sub148, %mul293
  %add304 = fadd float %mul303, %add302
  %mul305 = fmul float %sub134, %mul294
  %mul306 = fmul float %sub141, %mul295
  %add307 = fadd float %mul305, %mul306
  %mul308 = fmul float %sub148, %mul296
  %add309 = fadd float %mul308, %add307
  %mul310 = fmul float %sub153, %mul291
  %mul311 = fmul float %sub160, %mul292
  %add312 = fadd float %mul310, %mul311
  %mul313 = fmul float %sub167, %mul293
  %add314 = fadd float %mul313, %add312
  %mul315 = fmul float %sub153, %mul294
  %mul316 = fmul float %sub160, %mul295
  %add317 = fadd float %mul315, %mul316
  %mul318 = fmul float %sub167, %mul296
  %add319 = fadd float %mul318, %add317
  %mul320 = fmul float %sub206, %mul297
  %mul321 = fmul float %sub210, %mul298
  %add322 = fadd float %mul320, %mul321
  %mul323 = fmul float %sub214, %mul299
  %add324 = fadd float %mul323, %add322
  %mul325 = fmul float %sub217, %mul291
  %mul326 = fmul float %sub221, %mul292
  %add327 = fadd float %mul325, %mul326
  %mul328 = fmul float %mul293, %sub225
  %add329 = fadd float %mul328, %add327
  %mul330 = fmul float %sub217, %mul294
  %mul331 = fmul float %sub221, %mul295
  %add332 = fadd float %mul330, %mul331
  %mul333 = fmul float %sub225, %mul296
  %add334 = fadd float %mul333, %add332
  %mul335 = fmul float %sub217, %mul297
  %mul336 = fmul float %sub221, %mul298
  %add337 = fadd float %mul335, %mul336
  %mul338 = fmul float %sub225, %mul299
  %add339 = fadd float %mul338, %add337
  %mul340 = fmul float %sub228, %mul291
  %mul341 = fmul float %sub232, %mul292
  %add342 = fadd float %mul340, %mul341
  %mul343 = fmul float %mul293, %sub236
  %add344 = fadd float %mul343, %add342
  %mul345 = fmul float %sub228, %mul294
  %mul346 = fmul float %sub232, %mul295
  %add347 = fadd float %mul345, %mul346
  %mul348 = fmul float %sub236, %mul296
  %add349 = fadd float %mul348, %add347
  %mul350 = fmul float %sub228, %mul297
  %mul351 = fmul float %sub232, %mul298
  %add352 = fadd float %mul350, %mul351
  %mul353 = fmul float %sub236, %mul299
  %add354 = fadd float %mul353, %add352
  %31 = load float* @csettle.ra, align 4, !tbaa !3
  %div355 = fdiv float %add324, %31
  %32 = load float* @csettle.rone, align 4, !tbaa !3
  %mul356 = fmul float %div355, %div355
  %sub357 = fsub float %32, %mul356
  %cmp358 = fcmp ugt float %sub357, 0.000000e+00
  br i1 %cmp358, label %if.else, label %if.then360

if.then360:                                       ; preds = %for.body
  %33 = trunc i64 %indvars.iv to i32
  store i32 %33, i32* %error, align 4, !tbaa !0
  br label %if.end364

if.else:                                          ; preds = %for.body
  %conv363 = tail call float @sqrtf(float %sub357) #1
  %.pre = load float* @csettle.rone, align 4, !tbaa !3
  br label %if.end364

if.end364:                                        ; preds = %if.else, %if.then360
  %34 = phi float [ %32, %if.then360 ], [ %.pre, %if.else ]
  %cosphi.0 = phi float [ 0.000000e+00, %if.then360 ], [ %conv363, %if.else ]
  %sub365 = fsub float %add339, %add354
  %35 = load float* @csettle.rc2, align 4, !tbaa !3
  %mul366 = fmul float %cosphi.0, %35
  %div367 = fdiv float %sub365, %mul366
  %mul368 = fmul float %div367, %div367
  %sub369 = fsub float %34, %mul368
  %cmp370 = fcmp ugt float %sub369, 0.000000e+00
  br i1 %cmp370, label %if.else373, label %if.then372

if.then372:                                       ; preds = %if.end364
  %36 = trunc i64 %indvars.iv to i32
  store i32 %36, i32* %error, align 4, !tbaa !0
  br label %if.end377

if.else373:                                       ; preds = %if.end364
  %conv376 = tail call float @sqrtf(float %sub369) #1
  br label %if.end377

if.end377:                                        ; preds = %if.else373, %if.then372
  %cospsi.0 = phi float [ 0.000000e+00, %if.then372 ], [ %conv376, %if.else373 ]
  %37 = load float* @csettle.ra, align 4, !tbaa !3
  %mul378 = fmul float %cosphi.0, %37
  %38 = load float* @csettle.rc, align 4, !tbaa !3
  %39 = fmul float %cospsi.0, %38
  %mul380 = fsub float -0.000000e+00, %39
  %40 = load float* @csettle.rb, align 4, !tbaa !3
  %41 = fmul float %cosphi.0, %40
  %mul382 = fsub float -0.000000e+00, %41
  %mul383 = fmul float %div367, %38
  %mul384 = fmul float %div355, %mul383
  %sub385 = fsub float %mul382, %mul384
  %add386 = fsub float %mul384, %41
  %sub387 = fsub float %add304, %add314
  %mul388 = fmul float %sub387, %mul380
  %mul389 = fmul float %add309, %sub385
  %add390 = fadd float %mul388, %mul389
  %mul391 = fmul float %add319, %add386
  %add392 = fadd float %mul391, %add390
  %sub393 = fsub float %add319, %add309
  %mul394 = fmul float %sub393, %mul380
  %mul395 = fmul float %add304, %sub385
  %add396 = fadd float %mul394, %mul395
  %mul397 = fmul float %add314, %add386
  %add398 = fadd float %mul397, %add396
  %mul399 = fmul float %add304, %add334
  %mul400 = fmul float %add329, %add309
  %sub401 = fsub float %mul399, %mul400
  %mul402 = fmul float %add314, %add349
  %add403 = fadd float %mul402, %sub401
  %mul404 = fmul float %add344, %add319
  %sub405 = fsub float %add403, %mul404
  %mul406 = fmul float %add392, %add392
  %mul407 = fmul float %add398, %add398
  %add408 = fadd float %mul406, %mul407
  %mul409 = fmul float %sub405, %add392
  %conv410 = fpext float %mul409 to double
  %conv411 = fpext float %add398 to double
  %mul412 = fmul float %sub405, %sub405
  %sub413 = fsub float %add408, %mul412
  %conv414 = fpext float %sub413 to double
  %call415 = tail call double @sqrt(double %conv414) #2
  %mul416 = fmul double %call415, %conv411
  %sub417 = fsub double %conv410, %mul416
  %conv418 = fpext float %add408 to double
  %div419 = fdiv double %sub417, %conv418
  %conv420 = fptrunc double %div419 to float
  %42 = load float* @csettle.rone, align 4, !tbaa !3
  %mul421 = fmul float %conv420, %conv420
  %sub422 = fsub float %42, %mul421
  %conv425 = tail call float @sqrtf(float %sub422) #1
  %43 = fmul float %mul378, %conv420
  %mul427 = fsub float -0.000000e+00, %43
  %mul428 = fmul float %mul378, %conv425
  %mul429 = fmul float %conv425, %mul380
  %mul430 = fmul float %sub385, %conv420
  %sub431 = fsub float %mul429, %mul430
  %mul432 = fmul float %conv420, %mul380
  %mul433 = fmul float %sub385, %conv425
  %add434 = fadd float %mul432, %mul433
  %mul436 = fmul float %39, %conv425
  %mul437 = fmul float %add386, %conv420
  %sub438 = fsub float %mul436, %mul437
  %mul440 = fmul float %39, %conv420
  %mul441 = fmul float %add386, %conv425
  %add442 = fadd float %mul440, %mul441
  %mul443 = fmul float %mul291, %mul427
  %mul444 = fmul float %mul294, %mul428
  %add445 = fadd float %mul443, %mul444
  %mul446 = fmul float %mul297, %add324
  %add447 = fadd float %mul446, %add445
  %mul448 = fmul float %mul292, %mul427
  %mul449 = fmul float %mul295, %mul428
  %add450 = fadd float %mul448, %mul449
  %mul451 = fmul float %mul298, %add324
  %add452 = fadd float %mul451, %add450
  %mul453 = fmul float %mul293, %mul427
  %mul454 = fmul float %mul296, %mul428
  %add455 = fadd float %mul453, %mul454
  %mul456 = fmul float %mul299, %add324
  %add457 = fadd float %mul456, %add455
  %mul458 = fmul float %mul291, %sub431
  %mul459 = fmul float %mul294, %add434
  %add460 = fadd float %mul458, %mul459
  %mul461 = fmul float %mul297, %add339
  %add462 = fadd float %mul461, %add460
  %mul463 = fmul float %mul292, %sub431
  %mul464 = fmul float %mul295, %add434
  %add465 = fadd float %mul463, %mul464
  %mul466 = fmul float %mul298, %add339
  %add467 = fadd float %mul466, %add465
  %mul468 = fmul float %mul293, %sub431
  %mul469 = fmul float %mul296, %add434
  %add470 = fadd float %mul468, %mul469
  %mul471 = fmul float %mul299, %add339
  %add472 = fadd float %mul471, %add470
  %mul473 = fmul float %mul291, %sub438
  %mul474 = fmul float %mul294, %add442
  %add475 = fadd float %mul473, %mul474
  %mul476 = fmul float %mul297, %add354
  %add477 = fadd float %mul476, %add475
  %mul478 = fmul float %mul292, %sub438
  %mul479 = fmul float %mul295, %add442
  %add480 = fadd float %mul478, %mul479
  %mul481 = fmul float %mul298, %add354
  %add482 = fadd float %mul481, %add480
  %mul483 = fmul float %mul293, %sub438
  %mul484 = fmul float %mul296, %add442
  %add485 = fadd float %mul483, %mul484
  %mul486 = fmul float %mul299, %add354
  %add487 = fadd float %mul486, %add485
  %add488 = fadd float %add177, %add447
  store float %add488, float* %arrayidx169, align 4, !tbaa !3
  %add491 = fadd float %add190, %add452
  store float %add491, float* %arrayidx180, align 4, !tbaa !3
  %add495 = fadd float %add203, %add457
  store float %add495, float* %arrayidx193, align 4, !tbaa !3
  %add499 = fadd float %add177, %add462
  store float %add499, float* %arrayidx172, align 4, !tbaa !3
  %add502 = fadd float %add190, %add467
  store float %add502, float* %arrayidx184, align 4, !tbaa !3
  %add506 = fadd float %add203, %add472
  store float %add506, float* %arrayidx197, align 4, !tbaa !3
  %add510 = fadd float %add177, %add477
  store float %add510, float* %arrayidx174, align 4, !tbaa !3
  %add513 = fadd float %add190, %add482
  store float %add513, float* %arrayidx187, align 4, !tbaa !3
  %add517 = fadd float %add203, %add487
  store float %add517, float* %arrayidx200, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nshake
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end377, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
