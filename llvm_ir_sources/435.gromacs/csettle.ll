; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/csettle.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @csettle(%struct.__sFILE* %fp, i32 %nshake, i32* nocapture readonly %owptr, float* nocapture readonly %b4, float* nocapture %after, float %dOH, float %dHH, float %mO, float %mH, i32* nocapture %error) #1 {
  store i32 -1, i32* %error, align 4, !tbaa !2
  %.b = load i1* @csettle.bFirst, align 1
  br i1 %.b, label %.preheader, label %1

; <label>:1                                       ; preds = %0
  %2 = icmp ne %struct.__sFILE* %fp, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %1
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %nshake) #4
  br label %5

; <label>:5                                       ; preds = %3, %1
  %6 = fpext float %mO to double
  %7 = fpext float %mH to double
  %8 = fmul double %7, 2.000000e+00
  %9 = fadd double %6, %8
  %10 = fptrunc double %9 to float
  store float %10, float* @csettle.wohh, align 4, !tbaa !6
  %11 = fmul float %dHH, 5.000000e-01
  store float %11, float* @csettle.rc, align 4, !tbaa !6
  %12 = fmul float %dOH, %dOH
  %13 = fmul float %11, %11
  %14 = fsub float %12, %13
  %15 = fpext float %14 to double
  %16 = tail call double @sqrt(double %15) #5
  %17 = fmul double %16, %8
  %18 = fpext float %10 to double
  %19 = fdiv double %17, %18
  %20 = fptrunc double %19 to float
  store float %20, float* @csettle.ra, align 4, !tbaa !6
  %21 = fpext float %20 to double
  %22 = fsub double %16, %21
  %23 = fptrunc double %22 to float
  store float %23, float* @csettle.rb, align 4, !tbaa !6
  store float %dHH, float* @csettle.rc2, align 4, !tbaa !6
  store float 1.000000e+00, float* @csettle.rone, align 4, !tbaa !6
  %24 = fdiv float %mO, %10
  store float %24, float* @csettle.wo, align 4, !tbaa !6
  %25 = fdiv float %mH, %10
  store float %25, float* @csettle.wh, align 4, !tbaa !6
  br i1 %2, label %26, label %40

; <label>:26                                      ; preds = %5
  %27 = fpext float %dHH to double
  %28 = fpext float %24 to double
  %29 = fpext float %25 to double
  %30 = fpext float %11 to double
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), double %28, double %29, double %18, double %30, double %21) #4
  %32 = load float* @csettle.rb, align 4, !tbaa !6
  %33 = fpext float %32 to double
  %34 = load float* @csettle.rc2, align 4, !tbaa !6
  %35 = fpext float %34 to double
  %36 = load float* @csettle.rone, align 4, !tbaa !6
  %37 = fpext float %36 to double
  %38 = fpext float %dOH to double
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), double %33, double %35, double %37, double %27, double %38) #4
  br label %40

; <label>:40                                      ; preds = %26, %5
  store i1 true, i1* @csettle.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %0, %40
  %41 = icmp sgt i32 %nshake, 0
  br i1 %41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %42 = add i32 %nshake, -1
  br label %43

; <label>:43                                      ; preds = %267, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %267 ]
  %44 = getelementptr inbounds i32* %owptr, i64 %indvars.iv
  %45 = load i32* %44, align 4, !tbaa !2
  %46 = mul nsw i32 %45, 3
  %47 = add nsw i32 %46, 3
  %48 = add nsw i32 %46, 6
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds float* %b4, i64 %49
  %51 = load float* %50, align 4, !tbaa !6
  %52 = sext i32 %46 to i64
  %53 = getelementptr inbounds float* %b4, i64 %52
  %54 = load float* %53, align 4, !tbaa !6
  %55 = fsub float %51, %54
  %56 = add nsw i32 %46, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float* %b4, i64 %57
  %59 = load float* %58, align 4, !tbaa !6
  %60 = add nsw i32 %46, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float* %b4, i64 %61
  %63 = load float* %62, align 4, !tbaa !6
  %64 = fsub float %59, %63
  %65 = add nsw i32 %46, 5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float* %b4, i64 %66
  %68 = load float* %67, align 4, !tbaa !6
  %69 = add nsw i32 %46, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float* %b4, i64 %70
  %72 = load float* %71, align 4, !tbaa !6
  %73 = fsub float %68, %72
  %74 = sext i32 %48 to i64
  %75 = getelementptr inbounds float* %b4, i64 %74
  %76 = load float* %75, align 4, !tbaa !6
  %77 = fsub float %76, %54
  %78 = add nsw i32 %46, 7
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float* %b4, i64 %79
  %81 = load float* %80, align 4, !tbaa !6
  %82 = fsub float %81, %63
  %83 = add nsw i32 %46, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float* %b4, i64 %84
  %86 = load float* %85, align 4, !tbaa !6
  %87 = fsub float %86, %72
  %88 = getelementptr inbounds float* %after, i64 %52
  %89 = load float* %88, align 4, !tbaa !6
  %90 = load float* @csettle.wo, align 4, !tbaa !6
  %91 = fmul float %89, %90
  %92 = getelementptr inbounds float* %after, i64 %49
  %93 = load float* %92, align 4, !tbaa !6
  %94 = getelementptr inbounds float* %after, i64 %74
  %95 = load float* %94, align 4, !tbaa !6
  %96 = fadd float %93, %95
  %97 = load float* @csettle.wh, align 4, !tbaa !6
  %98 = fmul float %96, %97
  %99 = fadd float %91, %98
  %100 = getelementptr inbounds float* %after, i64 %61
  %101 = load float* %100, align 4, !tbaa !6
  %102 = fmul float %90, %101
  %103 = getelementptr inbounds float* %after, i64 %57
  %104 = load float* %103, align 4, !tbaa !6
  %105 = getelementptr inbounds float* %after, i64 %79
  %106 = load float* %105, align 4, !tbaa !6
  %107 = fadd float %104, %106
  %108 = fmul float %97, %107
  %109 = fadd float %102, %108
  %110 = getelementptr inbounds float* %after, i64 %70
  %111 = load float* %110, align 4, !tbaa !6
  %112 = fmul float %90, %111
  %113 = getelementptr inbounds float* %after, i64 %66
  %114 = load float* %113, align 4, !tbaa !6
  %115 = getelementptr inbounds float* %after, i64 %84
  %116 = load float* %115, align 4, !tbaa !6
  %117 = fadd float %114, %116
  %118 = fmul float %97, %117
  %119 = fadd float %112, %118
  %120 = fsub float %89, %99
  %121 = fsub float %101, %109
  %122 = fsub float %111, %119
  %123 = fsub float %93, %99
  %124 = fsub float %104, %109
  %125 = fsub float %114, %119
  %126 = fsub float %95, %99
  %127 = fsub float %106, %109
  %128 = fsub float %116, %119
  %129 = fmul float %64, %87
  %130 = fmul float %73, %82
  %131 = fsub float %129, %130
  %132 = fmul float %73, %77
  %133 = fmul float %55, %87
  %134 = fsub float %132, %133
  %135 = fmul float %55, %82
  %136 = fmul float %64, %77
  %137 = fsub float %135, %136
  %138 = fmul float %137, %121
  %139 = fmul float %134, %122
  %140 = fsub float %138, %139
  %141 = fmul float %131, %122
  %142 = fmul float %137, %120
  %143 = fsub float %141, %142
  %144 = fmul float %134, %120
  %145 = fmul float %131, %121
  %146 = fsub float %144, %145
  %147 = fmul float %134, %146
  %148 = fmul float %137, %143
  %149 = fsub float %147, %148
  %150 = fmul float %137, %140
  %151 = fmul float %131, %146
  %152 = fsub float %150, %151
  %153 = fmul float %131, %143
  %154 = fmul float %134, %140
  %155 = fsub float %153, %154
  %156 = fmul float %140, %140
  %157 = fmul float %143, %143
  %158 = fadd float %156, %157
  %159 = fmul float %146, %146
  %160 = fadd float %159, %158
  %161 = fpext float %160 to double
  %162 = tail call double @sqrt(double %161) #5
  %163 = fdiv double 1.000000e+00, %162
  %164 = fptrunc double %163 to float
  %165 = fmul float %149, %149
  %166 = fmul float %152, %152
  %167 = fadd float %165, %166
  %168 = fmul float %155, %155
  %169 = fadd float %168, %167
  %170 = fpext float %169 to double
  %171 = tail call double @sqrt(double %170) #5
  %172 = fdiv double 1.000000e+00, %171
  %173 = fptrunc double %172 to float
  %174 = fmul float %131, %131
  %175 = fmul float %134, %134
  %176 = fadd float %174, %175
  %177 = fmul float %137, %137
  %178 = fadd float %177, %176
  %179 = fpext float %178 to double
  %180 = tail call double @sqrt(double %179) #5
  %181 = fdiv double 1.000000e+00, %180
  %182 = fptrunc double %181 to float
  %183 = fmul float %164, %140
  %184 = fmul float %164, %143
  %185 = fmul float %146, %164
  %186 = fmul float %173, %149
  %187 = fmul float %173, %152
  %188 = fmul float %173, %155
  %189 = fmul float %131, %182
  %190 = fmul float %134, %182
  %191 = fmul float %137, %182
  %192 = fmul float %55, %183
  %193 = fmul float %64, %184
  %194 = fadd float %192, %193
  %195 = fmul float %73, %185
  %196 = fadd float %195, %194
  %197 = fmul float %55, %186
  %198 = fmul float %64, %187
  %199 = fadd float %197, %198
  %200 = fmul float %73, %188
  %201 = fadd float %200, %199
  %202 = fmul float %77, %183
  %203 = fmul float %82, %184
  %204 = fadd float %202, %203
  %205 = fmul float %87, %185
  %206 = fadd float %205, %204
  %207 = fmul float %77, %186
  %208 = fmul float %82, %187
  %209 = fadd float %207, %208
  %210 = fmul float %87, %188
  %211 = fadd float %210, %209
  %212 = fmul float %120, %189
  %213 = fmul float %121, %190
  %214 = fadd float %212, %213
  %215 = fmul float %122, %191
  %216 = fadd float %215, %214
  %217 = fmul float %123, %183
  %218 = fmul float %124, %184
  %219 = fadd float %217, %218
  %220 = fmul float %185, %125
  %221 = fadd float %220, %219
  %222 = fmul float %123, %186
  %223 = fmul float %124, %187
  %224 = fadd float %222, %223
  %225 = fmul float %125, %188
  %226 = fadd float %225, %224
  %227 = fmul float %123, %189
  %228 = fmul float %124, %190
  %229 = fadd float %227, %228
  %230 = fmul float %125, %191
  %231 = fadd float %230, %229
  %232 = fmul float %126, %183
  %233 = fmul float %127, %184
  %234 = fadd float %232, %233
  %235 = fmul float %185, %128
  %236 = fadd float %235, %234
  %237 = fmul float %126, %186
  %238 = fmul float %127, %187
  %239 = fadd float %237, %238
  %240 = fmul float %128, %188
  %241 = fadd float %240, %239
  %242 = fmul float %126, %189
  %243 = fmul float %127, %190
  %244 = fadd float %242, %243
  %245 = fmul float %128, %191
  %246 = fadd float %245, %244
  %247 = load float* @csettle.ra, align 4, !tbaa !6
  %248 = fdiv float %216, %247
  %249 = load float* @csettle.rone, align 4, !tbaa !6
  %250 = fmul float %248, %248
  %251 = fsub float %249, %250
  %252 = fcmp ugt float %251, 0.000000e+00
  br i1 %252, label %255, label %253

; <label>:253                                     ; preds = %43
  %254 = trunc i64 %indvars.iv to i32
  store i32 %254, i32* %error, align 4, !tbaa !2
  br label %256

; <label>:255                                     ; preds = %43
  %sqrtf = tail call float @sqrtf(float %251) #3
  br label %256

; <label>:256                                     ; preds = %255, %253
  %cosphi.0 = phi float [ 0.000000e+00, %253 ], [ %sqrtf, %255 ]
  %257 = fsub float %231, %246
  %258 = load float* @csettle.rc2, align 4, !tbaa !6
  %259 = fmul float %cosphi.0, %258
  %260 = fdiv float %257, %259
  %261 = fmul float %260, %260
  %262 = fsub float %249, %261
  %263 = fcmp ugt float %262, 0.000000e+00
  br i1 %263, label %266, label %264

; <label>:264                                     ; preds = %256
  %265 = trunc i64 %indvars.iv to i32
  store i32 %265, i32* %error, align 4, !tbaa !2
  br label %267

; <label>:266                                     ; preds = %256
  %sqrtf1 = tail call float @sqrtf(float %262) #3
  %.pre = trunc i64 %indvars.iv to i32
  br label %267

; <label>:267                                     ; preds = %266, %264
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %266 ], [ %265, %264 ]
  %cospsi.0 = phi float [ %sqrtf1, %266 ], [ 0.000000e+00, %264 ]
  %268 = fmul float %cosphi.0, %247
  %269 = load float* @csettle.rc, align 4, !tbaa !6
  %270 = fmul float %cospsi.0, %269
  %271 = fsub float -0.000000e+00, %270
  %272 = load float* @csettle.rb, align 4, !tbaa !6
  %273 = fmul float %cosphi.0, %272
  %274 = fsub float -0.000000e+00, %273
  %275 = fmul float %260, %269
  %276 = fmul float %248, %275
  %277 = fsub float %274, %276
  %278 = fsub float %276, %273
  %279 = fsub float %196, %206
  %280 = fmul float %279, %271
  %281 = fmul float %201, %277
  %282 = fadd float %280, %281
  %283 = fmul float %211, %278
  %284 = fadd float %283, %282
  %285 = fsub float %211, %201
  %286 = fmul float %285, %271
  %287 = fmul float %196, %277
  %288 = fadd float %286, %287
  %289 = fmul float %206, %278
  %290 = fadd float %289, %288
  %291 = fmul float %196, %226
  %292 = fmul float %221, %201
  %293 = fsub float %291, %292
  %294 = fmul float %206, %241
  %295 = fadd float %294, %293
  %296 = fmul float %236, %211
  %297 = fsub float %295, %296
  %298 = fmul float %284, %284
  %299 = fmul float %290, %290
  %300 = fadd float %298, %299
  %301 = fmul float %297, %284
  %302 = fpext float %301 to double
  %303 = fpext float %290 to double
  %304 = fmul float %297, %297
  %305 = fsub float %300, %304
  %306 = fpext float %305 to double
  %307 = tail call double @sqrt(double %306) #5
  %308 = fmul double %307, %303
  %309 = fsub double %302, %308
  %310 = fpext float %300 to double
  %311 = fdiv double %309, %310
  %312 = fptrunc double %311 to float
  %313 = fmul float %312, %312
  %314 = fsub float %249, %313
  %sqrtf2 = tail call float @sqrtf(float %314) #3
  %315 = fmul float %268, %312
  %316 = fsub float -0.000000e+00, %315
  %317 = fmul float %268, %sqrtf2
  %318 = fmul float %sqrtf2, %271
  %319 = fmul float %277, %312
  %320 = fsub float %318, %319
  %321 = fmul float %312, %271
  %322 = fmul float %277, %sqrtf2
  %323 = fadd float %321, %322
  %324 = fmul float %270, %sqrtf2
  %325 = fmul float %278, %312
  %326 = fsub float %324, %325
  %327 = fmul float %270, %312
  %328 = fmul float %278, %sqrtf2
  %329 = fadd float %327, %328
  %330 = fmul float %183, %316
  %331 = fmul float %186, %317
  %332 = fadd float %330, %331
  %333 = fmul float %189, %216
  %334 = fadd float %333, %332
  %335 = fmul float %184, %316
  %336 = fmul float %187, %317
  %337 = fadd float %335, %336
  %338 = fmul float %190, %216
  %339 = fadd float %338, %337
  %340 = fmul float %185, %316
  %341 = fmul float %188, %317
  %342 = fadd float %340, %341
  %343 = fmul float %191, %216
  %344 = fadd float %343, %342
  %345 = fmul float %183, %320
  %346 = fmul float %186, %323
  %347 = fadd float %345, %346
  %348 = fmul float %189, %231
  %349 = fadd float %348, %347
  %350 = fmul float %184, %320
  %351 = fmul float %187, %323
  %352 = fadd float %350, %351
  %353 = fmul float %190, %231
  %354 = fadd float %353, %352
  %355 = fmul float %185, %320
  %356 = fmul float %188, %323
  %357 = fadd float %355, %356
  %358 = fmul float %191, %231
  %359 = fadd float %358, %357
  %360 = fmul float %183, %326
  %361 = fmul float %186, %329
  %362 = fadd float %360, %361
  %363 = fmul float %189, %246
  %364 = fadd float %363, %362
  %365 = fmul float %184, %326
  %366 = fmul float %187, %329
  %367 = fadd float %365, %366
  %368 = fmul float %190, %246
  %369 = fadd float %368, %367
  %370 = fmul float %185, %326
  %371 = fmul float %188, %329
  %372 = fadd float %370, %371
  %373 = fmul float %191, %246
  %374 = fadd float %373, %372
  %375 = fadd float %99, %334
  store float %375, float* %88, align 4, !tbaa !6
  %376 = fadd float %109, %339
  store float %376, float* %100, align 4, !tbaa !6
  %377 = fadd float %119, %344
  store float %377, float* %110, align 4, !tbaa !6
  %378 = fadd float %99, %349
  store float %378, float* %92, align 4, !tbaa !6
  %379 = fadd float %109, %354
  store float %379, float* %103, align 4, !tbaa !6
  %380 = fadd float %119, %359
  store float %380, float* %113, align 4, !tbaa !6
  %381 = fadd float %99, %364
  store float %381, float* %94, align 4, !tbaa !6
  %382 = fadd float %109, %369
  store float %382, float* %105, align 4, !tbaa !6
  %383 = fadd float %119, %374
  store float %383, float* %115, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %42
  br i1 %exitcond, label %._crit_edge, label %43

._crit_edge:                                      ; preds = %267, %.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

declare float @sqrtf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !4, i64 0}
