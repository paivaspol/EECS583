; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_smoothBy2layers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct.__sFILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in GPart_smoothBy2layers(%p,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A\0A PASS %d : attempting a move towards the larger component\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"\0A YCmapIV\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"\0A calling GPartSmoothYSep\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A\0A bestcost = %.2f, newcost = %.2f\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A\0A PASS %d : attempting a move towards the smaller component\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"\0A\0A no improvement made\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"\0A\0A improvement made\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"\0A\0A compids\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"\0A\0A leaving smoothBy2layers\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @GPart_smoothBy2layers(%struct._GPart* %gpart, i32 %option, float %alpha) #0 {
  %ierr = alloca i32, align 4
  %nY = alloca i32, align 4
  %YCmap = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._GPart* %gpart, i64 0, metadata !137, metadata !168), !dbg !169
  tail call void @llvm.dbg.value(metadata i32 %option, i64 0, metadata !138, metadata !168), !dbg !170
  tail call void @llvm.dbg.value(metadata float %alpha, i64 0, metadata !139, metadata !168), !dbg !171
  %1 = icmp eq %struct._GPart* %gpart, null, !dbg !172
  %2 = fcmp olt float %alpha, 0.000000e+00, !dbg !174
  %or.cond = or i1 %1, %2, !dbg !175
  br i1 %or.cond, label %3, label %7, !dbg !175

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !176, !tbaa !178
  %5 = fpext float %alpha to double, !dbg !182
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, double %5) #6, !dbg !183
  tail call void @exit(i32 -1) #7, !dbg !184
  unreachable, !dbg !184

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !147, metadata !168), !dbg !185
  %8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6, !dbg !186
  %9 = tail call i32* @IV_entries(%struct._IV* %8) #6, !dbg !187
  tail call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !150, metadata !168), !dbg !188
  %10 = load i32* %9, align 4, !dbg !189, !tbaa !190
  %11 = sitofp i32 %10 to float, !dbg !189
  %12 = getelementptr inbounds i32* %9, i64 1, !dbg !192
  %13 = load i32* %12, align 4, !dbg !192, !tbaa !190
  %14 = sitofp i32 %13 to float, !dbg !192
  %15 = getelementptr inbounds i32* %9, i64 2, !dbg !193
  %16 = load i32* %15, align 4, !dbg !193, !tbaa !190
  %17 = sitofp i32 %16 to float, !dbg !193
  tail call void @llvm.dbg.value(metadata float %alpha, i64 0, metadata !159, metadata !168), !dbg !194
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !160, metadata !168), !dbg !196
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !161, metadata !168), !dbg !197
  tail call void @llvm.dbg.value(metadata float %17, i64 0, metadata !162, metadata !168), !dbg !198
  %18 = icmp eq i32 %13, 0, !dbg !199
  %19 = icmp eq i32 %16, 0, !dbg !201
  %or.cond.i = or i1 %18, %19, !dbg !202
  br i1 %or.cond.i, label %20, label %24, !dbg !202

; <label>:20                                      ; preds = %7
  %21 = fadd float %11, %14, !dbg !203
  %22 = fadd float %21, %17, !dbg !205
  %23 = fmul float %22, %22, !dbg !206
  tail call void @llvm.dbg.value(metadata float %23, i64 0, metadata !163, metadata !168), !dbg !207
  br label %eval.exit, !dbg !208

; <label>:24                                      ; preds = %7
  %25 = fcmp ult float %14, %17, !dbg !209
  %26 = fpext float %11 to double, !dbg !211
  br i1 %25, label %34, label %27, !dbg !213

; <label>:27                                      ; preds = %24
  %28 = fmul float %14, %alpha, !dbg !214
  %29 = fdiv float %28, %17, !dbg !215
  %30 = fpext float %29 to double, !dbg !216
  %31 = fadd double %30, 1.000000e+00, !dbg !217
  %32 = fmul double %26, %31, !dbg !218
  %33 = fptrunc double %32 to float, !dbg !211
  tail call void @llvm.dbg.value(metadata float %33, i64 0, metadata !163, metadata !168), !dbg !207
  br label %eval.exit, !dbg !219

; <label>:34                                      ; preds = %24
  %35 = fmul float %17, %alpha, !dbg !220
  %36 = fdiv float %35, %14, !dbg !222
  %37 = fpext float %36 to double, !dbg !223
  %38 = fadd double %37, 1.000000e+00, !dbg !224
  %39 = fmul double %26, %38, !dbg !225
  %40 = fptrunc double %39 to float, !dbg !226
  tail call void @llvm.dbg.value(metadata float %40, i64 0, metadata !163, metadata !168), !dbg !207
  br label %eval.exit, !dbg !227

eval.exit:                                        ; preds = %20, %27, %34
  %bestcost.0.i = phi float [ %23, %20 ], [ %33, %27 ], [ %40, %34 ], !dbg !227
  tail call void @llvm.dbg.value(metadata float %bestcost.0.i, i64 0, metadata !141, metadata !168), !dbg !228
  %41 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12, !dbg !229
  %42 = load %struct.__sFILE** %41, align 8, !dbg !229, !tbaa !230
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %42, i64 0, metadata !140, metadata !168), !dbg !233
  %43 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11, !dbg !234
  %44 = load i32* %43, align 4, !dbg !234, !tbaa !235
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !145, metadata !168), !dbg !236
  %45 = icmp sgt i32 %44, 2, !dbg !237
  %46 = icmp eq i32 %option, 1, !dbg !240
  %47 = icmp sgt i32 %44, 3, !dbg !242
  %48 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2, !dbg !246
  %49 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5, !dbg !248
  br label %50, !dbg !249

; <label>:50                                      ; preds = %eval.exit, %.thread
  %pass.0 = phi i32 [ 1, %eval.exit ], [ %147, %.thread ]
  %bestcost.0 = phi float [ %bestcost.0.i, %eval.exit ], [ %newcost.0, %.thread ]
  br i1 %45, label %51, label %54, !dbg !250

; <label>:51                                      ; preds = %50
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), i32 %pass.0) #6, !dbg !251
  %53 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !253
  br label %54, !dbg !254

; <label>:54                                      ; preds = %51, %50
  %55 = load i32* %12, align 4, !dbg !255, !tbaa !190
  %56 = load i32* %15, align 4, !dbg !257, !tbaa !190
  %57 = icmp slt i32 %55, %56, !dbg !258
  br i1 %57, label %60, label %58, !dbg !259

; <label>:58                                      ; preds = %54
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !144, metadata !168), !dbg !260
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !148, metadata !168), !dbg !261
  %59 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 1, i32 0) #6, !dbg !262
  call void @llvm.dbg.value(metadata %struct._IV* %59, i64 0, metadata !154, metadata !168), !dbg !264
  br label %62, !dbg !265

; <label>:60                                      ; preds = %54
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !144, metadata !168), !dbg !260
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !148, metadata !168), !dbg !261
  %61 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 0, i32 1) #6, !dbg !266
  call void @llvm.dbg.value(metadata %struct._IV* %61, i64 0, metadata !154, metadata !168), !dbg !264
  br label %62

; <label>:62                                      ; preds = %60, %58
  %large.0 = phi i32 [ 1, %58 ], [ 2, %60 ]
  %small.0 = phi i32 [ 2, %58 ], [ 1, %60 ]
  %YVmapIV.0 = phi %struct._IV* [ %59, %58 ], [ %61, %60 ]
  %63 = call %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0) #6, !dbg !268
  call void @llvm.dbg.value(metadata %struct._IV* %63, i64 0, metadata !152, metadata !168), !dbg !269
  br i1 %45, label %64, label %68, !dbg !270

; <label>:64                                      ; preds = %62
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %42), !dbg !271
  %66 = call i32 @IV_writeForHumanEye(%struct._IV* %63, %struct.__sFILE* %42) #6, !dbg !274
  %67 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !275
  br label %68, !dbg !276

; <label>:68                                      ; preds = %64, %62
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  call void @llvm.dbg.value(metadata i32** %YCmap, i64 0, metadata !151, metadata !168), !dbg !278
  call void @IV_sizeAndEntries(%struct._IV* %63, i32* %nY, i32** %YCmap) #6, !dbg !279
  br i1 %46, label %.preheader1, label %.loopexit2, !dbg !280

.preheader1:                                      ; preds = %68
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  %69 = load i32* %nY, align 4, !dbg !281, !tbaa !190
  %70 = icmp sgt i32 %69, 0, !dbg !285
  br i1 %70, label %.lr.ph, label %.loopexit2, !dbg !286

.lr.ph:                                           ; preds = %.preheader1
  %71 = load i32** %YCmap, align 8, !dbg !287, !tbaa !178
  br label %72, !dbg !286

; <label>:72                                      ; preds = %.lr.ph, %78
  %73 = phi i32 [ %69, %.lr.ph ], [ %79, %78 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %78 ]
  call void @llvm.dbg.value(metadata i32** %YCmap, i64 0, metadata !151, metadata !168), !dbg !278
  %74 = getelementptr inbounds i32* %71, i64 %indvars.iv, !dbg !287
  %75 = load i32* %74, align 4, !dbg !287, !tbaa !190
  %76 = icmp eq i32 %75, %small.0, !dbg !290
  br i1 %76, label %78, label %77, !dbg !291

; <label>:77                                      ; preds = %72
  store i32 %large.0, i32* %74, align 4, !dbg !292, !tbaa !190
  %.pre = load i32* %nY, align 4, !dbg !281, !tbaa !190
  br label %78, !dbg !294

; <label>:78                                      ; preds = %72, %77
  %79 = phi i32 [ %73, %72 ], [ %.pre, %77 ], !dbg !286
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !286
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  %80 = sext i32 %79 to i64, !dbg !285
  %81 = icmp slt i64 %indvars.iv.next, %80, !dbg !285
  br i1 %81, label %72, label %.loopexit2, !dbg !286

.loopexit2:                                       ; preds = %78, %.preheader1, %68
  br i1 %45, label %84, label %82, !dbg !295

; <label>:82                                      ; preds = %.loopexit2
  %83 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0, %struct._IV* %63, float %alpha) #6, !dbg !296
  call void @llvm.dbg.value(metadata float %83, i64 0, metadata !142, metadata !168), !dbg !297
  br label %92

; <label>:84                                      ; preds = %.loopexit2
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %42), !dbg !298
  %86 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !301
  %87 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0, %struct._IV* %63, float %alpha) #6, !dbg !296
  call void @llvm.dbg.value(metadata float %83, i64 0, metadata !142, metadata !168), !dbg !297
  %88 = fpext float %bestcost.0 to double, !dbg !302
  %89 = fpext float %87 to double, !dbg !305
  %90 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), double %88, double %89) #6, !dbg !306
  %91 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !307
  br label %92, !dbg !308

; <label>:92                                      ; preds = %82, %84
  %93 = phi float [ %87, %84 ], [ %83, %82 ]
  call void @IV_free(%struct._IV* %YVmapIV.0) #6, !dbg !309
  call void @IV_free(%struct._IV* %63) #6, !dbg !310
  %94 = fcmp oeq float %93, %bestcost.0, !dbg !311
  br i1 %94, label %95, label %129, !dbg !313

; <label>:95                                      ; preds = %92
  br i1 %45, label %96, label %99, !dbg !314

; <label>:96                                      ; preds = %95
  %97 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %pass.0) #6, !dbg !316
  %98 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !319
  br label %99, !dbg !320

; <label>:99                                      ; preds = %96, %95
  %100 = load i32* %12, align 4, !dbg !321, !tbaa !190
  %101 = load i32* %15, align 4, !dbg !323, !tbaa !190
  %102 = icmp slt i32 %100, %101, !dbg !324
  br i1 %102, label %105, label %103, !dbg !325

; <label>:103                                     ; preds = %99
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !144, metadata !168), !dbg !260
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !148, metadata !168), !dbg !261
  %104 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 0, i32 1) #6, !dbg !326
  call void @llvm.dbg.value(metadata %struct._IV* %104, i64 0, metadata !154, metadata !168), !dbg !264
  br label %107, !dbg !328

; <label>:105                                     ; preds = %99
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !144, metadata !168), !dbg !260
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !148, metadata !168), !dbg !261
  %106 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 1, i32 0) #6, !dbg !329
  call void @llvm.dbg.value(metadata %struct._IV* %106, i64 0, metadata !154, metadata !168), !dbg !264
  br label %107

; <label>:107                                     ; preds = %105, %103
  %large.1 = phi i32 [ 1, %103 ], [ 2, %105 ]
  %small.1 = phi i32 [ 2, %103 ], [ 1, %105 ]
  %YVmapIV.1 = phi %struct._IV* [ %104, %103 ], [ %106, %105 ]
  %108 = call %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV.1) #6, !dbg !331
  call void @llvm.dbg.value(metadata %struct._IV* %108, i64 0, metadata !152, metadata !168), !dbg !269
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  call void @llvm.dbg.value(metadata i32** %YCmap, i64 0, metadata !151, metadata !168), !dbg !278
  call void @IV_sizeAndEntries(%struct._IV* %108, i32* %nY, i32** %YCmap) #6, !dbg !332
  br i1 %46, label %.preheader, label %.loopexit, !dbg !333

.preheader:                                       ; preds = %107
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  %109 = load i32* %nY, align 4, !dbg !334, !tbaa !190
  %110 = icmp sgt i32 %109, 0, !dbg !339
  br i1 %110, label %.lr.ph5, label %.loopexit, !dbg !340

.lr.ph5:                                          ; preds = %.preheader
  %111 = load i32** %YCmap, align 8, !dbg !341, !tbaa !178
  br label %112, !dbg !340

; <label>:112                                     ; preds = %.lr.ph5, %118
  %113 = phi i32 [ %109, %.lr.ph5 ], [ %119, %118 ]
  %indvars.iv6 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next7, %118 ]
  call void @llvm.dbg.value(metadata i32** %YCmap, i64 0, metadata !151, metadata !168), !dbg !278
  %114 = getelementptr inbounds i32* %111, i64 %indvars.iv6, !dbg !341
  %115 = load i32* %114, align 4, !dbg !341, !tbaa !190
  %116 = icmp eq i32 %115, %large.1, !dbg !344
  br i1 %116, label %118, label %117, !dbg !345

; <label>:117                                     ; preds = %112
  store i32 %small.1, i32* %114, align 4, !dbg !346, !tbaa !190
  %.pre8 = load i32* %nY, align 4, !dbg !334, !tbaa !190
  br label %118, !dbg !348

; <label>:118                                     ; preds = %112, %117
  %119 = phi i32 [ %113, %112 ], [ %.pre8, %117 ], !dbg !340
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !340
  call void @llvm.dbg.value(metadata i32* %nY, i64 0, metadata !146, metadata !168), !dbg !277
  %120 = sext i32 %119 to i64, !dbg !339
  %121 = icmp slt i64 %indvars.iv.next7, %120, !dbg !339
  br i1 %121, label %112, label %.loopexit, !dbg !340

.loopexit:                                        ; preds = %118, %.preheader, %107
  %122 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.1, %struct._IV* %108, float %alpha) #6, !dbg !349
  call void @llvm.dbg.value(metadata float %122, i64 0, metadata !142, metadata !168), !dbg !297
  br i1 %45, label %123, label %128, !dbg !350

; <label>:123                                     ; preds = %.loopexit
  %124 = fpext float %bestcost.0 to double, !dbg !351
  %125 = fpext float %122 to double, !dbg !354
  %126 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), double %124, double %125) #6, !dbg !355
  %127 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !356
  br label %128, !dbg !357

; <label>:128                                     ; preds = %123, %.loopexit
  call void @IV_free(%struct._IV* %YVmapIV.1) #6, !dbg !358
  call void @IV_free(%struct._IV* %108) #6, !dbg !359
  br label %129, !dbg !360

; <label>:129                                     ; preds = %128, %92
  %newcost.0 = phi float [ %122, %128 ], [ %93, %92 ]
  %130 = fcmp oeq float %newcost.0, %bestcost.0, !dbg !361
  br i1 %130, label %131, label %137, !dbg !362

; <label>:131                                     ; preds = %129
  br i1 %45, label %132, label %.critedge, !dbg !363

; <label>:132                                     ; preds = %131
  %133 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %42), !dbg !365
  %134 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !368
  %135 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %42), !dbg !369
  %136 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !372
  br label %.critedge, !dbg !373

; <label>:137                                     ; preds = %129
  call void @llvm.dbg.value(metadata float %newcost.0, i64 0, metadata !141, metadata !168), !dbg !228
  br i1 %45, label %138, label %.thread, !dbg !374

; <label>:138                                     ; preds = %137
  %139 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %42), !dbg !375
  %140 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !378
  br i1 %47, label %141, label %.thread, !dbg !379

; <label>:141                                     ; preds = %138
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %42), !dbg !380
  %143 = load i32* %48, align 4, !dbg !246, !tbaa !381
  %144 = call i32* @IV_entries(%struct._IV* %49) #6, !dbg !382
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !143, metadata !168), !dbg !383
  %145 = call i32 @IVfp80(%struct.__sFILE* %42, i32 %143, i32* %144, i32 80, i32* %ierr) #6, !dbg !384
  %146 = call i32 @fflush(%struct.__sFILE* %42) #6, !dbg !385
  br label %.thread, !dbg !386

.thread:                                          ; preds = %137, %138, %141
  %147 = add nuw nsw i32 %pass.0, 1, !dbg !387
  call void @llvm.dbg.value(metadata i32 %147, i64 0, metadata !147, metadata !168), !dbg !185
  br label %50, !dbg !249

.critedge:                                        ; preds = %131, %132
  ret void, !dbg !388
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: optsize
declare %struct._IV* @GPart_identifyWideSep(%struct._GPart*, i32, i32) #3

; Function Attrs: optsize
declare %struct._IV* @GPart_makeYCmap(%struct._GPart*, %struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct.__sFILE*) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare float @GPart_smoothYSep(%struct._GPart*, %struct._IV*, %struct._IV*, float) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166}
!llvm.ident = !{!167}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_smoothBy2layers.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !155}
!6 = !DISubprogram(name: "GPart_smoothBy2layers", scope: !1, file: !1, line: 27, type: !7, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._GPart*, i32, float)* @GPart_smoothBy2layers, variables: !136)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !135}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPart", file: !11, line: 37, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../GPart.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GPart", file: !11, line: 38, size: 1152, align: 64, elements: !13)
!13 = !{!14, !16, !54, !55, !56, !57, !66, !67, !68, !69, !70, !71, !72}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 39, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !12, file: !11, line: 40, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !19, line: 49, baseType: !20)
!19 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !19, line: 50, size: 384, align: 64, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !52, !53}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !20, file: !19, line: 51, baseType: !15, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !20, file: !19, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !20, file: !19, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !20, file: !19, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !20, file: !19, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !20, file: !19, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !20, file: !19, line: 57, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !31, line: 55, baseType: !32)
!31 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !31, line: 79, size: 384, align: 64, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !40, !42, !43}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !31, line: 80, baseType: !15, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !32, file: !31, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !32, file: !31, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !32, file: !31, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !32, file: !31, line: 84, baseType: !39, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !32, file: !31, line: 85, baseType: !41, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !32, file: !31, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !32, file: !31, line: 87, baseType: !44, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !31, line: 56, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !31, line: 102, size: 192, align: 64, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !31, line: 103, baseType: !15, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !46, file: !31, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !46, file: !31, line: 105, baseType: !39, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !46, file: !31, line: 106, baseType: !44, size: 64, align: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !20, file: !19, line: 58, baseType: !39, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !20, file: !19, line: 59, baseType: !29, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !12, file: !11, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !12, file: !11, line: 42, baseType: !15, size: 32, align: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ncomp", scope: !12, file: !11, line: 43, baseType: !15, size: 32, align: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "compidsIV", scope: !12, file: !11, line: 44, baseType: !58, size: 192, align: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !59, line: 20, baseType: !60)
!59 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !59, line: 21, size: 192, align: 64, elements: !61)
!61 = !{!62, !63, !64, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !59, line: 22, baseType: !15, size: 32, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !60, file: !59, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !60, file: !59, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !60, file: !59, line: 25, baseType: !39, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cweightsIV", scope: !12, file: !11, line: 45, baseType: !58, size: 192, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !12, file: !11, line: 46, baseType: !9, size: 64, align: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !12, file: !11, line: 47, baseType: !9, size: 64, align: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !12, file: !11, line: 48, baseType: !9, size: 64, align: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "vtxMapIV", scope: !12, file: !11, line: 49, baseType: !58, size: 192, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "msglvl", scope: !12, file: !11, line: 50, baseType: !15, size: 32, align: 32, offset: 1024)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "msgFile", scope: !12, file: !11, line: 51, baseType: !73, size: 64, align: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 153, baseType: !76)
!75 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !75, line: 122, size: 1216, align: 64, elements: !77)
!77 = !{!78, !81, !82, !83, !85, !86, !91, !92, !93, !97, !103, !113, !119, !120, !123, !124, !128, !132, !133, !134}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !76, file: !75, line: 123, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !76, file: !75, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !76, file: !75, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !75, line: 126, baseType: !84, size: 16, align: 16, offset: 128)
!84 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !76, file: !75, line: 127, baseType: !84, size: 16, align: 16, offset: 144)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !76, file: !75, line: 128, baseType: !87, size: 128, align: 64, offset: 192)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !75, line: 88, size: 128, align: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !87, file: !75, line: 89, baseType: !79, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !87, file: !75, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !76, file: !75, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !76, file: !75, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !76, file: !75, line: 133, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !4}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !76, file: !75, line: 134, baseType: !98, size: 64, align: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!15, !4, !101, !15}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !76, file: !75, line: 135, baseType: !104, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !4, !107, !15}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !75, line: 77, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !109, line: 71, baseType: !110)
!109 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!112 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !76, file: !75, line: 136, baseType: !114, size: 64, align: 64, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!15, !4, !117, !15}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !76, file: !75, line: 139, baseType: !87, size: 128, align: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !76, file: !75, line: 140, baseType: !121, size: 64, align: 64, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !75, line: 94, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !76, file: !75, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !76, file: !75, line: 144, baseType: !125, size: 24, align: 8, offset: 928)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 24, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !76, file: !75, line: 145, baseType: !129, size: 8, align: 8, offset: 952)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !76, file: !75, line: 148, baseType: !87, size: 128, align: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !76, file: !75, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !75, line: 152, baseType: !107, size: 64, align: 64, offset: 1152)
!135 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !154}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gpart", arg: 1, scope: !6, file: !1, line: 28, type: !9)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "option", arg: 2, scope: !6, file: !1, line: 29, type: !15)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 3, scope: !6, file: !1, line: 30, type: !135)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msgFile", scope: !6, file: !1, line: 32, type: !73)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestcost", scope: !6, file: !1, line: 33, type: !135)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newcost", scope: !6, file: !1, line: 33, type: !135)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !6, file: !1, line: 34, type: !15)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "large", scope: !6, file: !1, line: 34, type: !15)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msglvl", scope: !6, file: !1, line: 34, type: !15)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nY", scope: !6, file: !1, line: 34, type: !15)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pass", scope: !6, file: !1, line: 34, type: !15)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "small", scope: !6, file: !1, line: 34, type: !15)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !6, file: !1, line: 34, type: !15)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cweights", scope: !6, file: !1, line: 35, type: !39)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YCmap", scope: !6, file: !1, line: 35, type: !39)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YCmapIV", scope: !6, file: !1, line: 36, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "YVmapIV", scope: !6, file: !1, line: 36, type: !153)
!155 = !DISubprogram(name: "eval", scope: !1, file: !1, line: 168, type: !156, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, variables: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!135, !135, !135, !135, !135}
!158 = !{!159, !160, !161, !162, !163}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alpha", arg: 1, scope: !155, file: !1, line: 169, type: !135)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wS", arg: 2, scope: !155, file: !1, line: 170, type: !135)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wB", arg: 3, scope: !155, file: !1, line: 171, type: !135)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wW", arg: 4, scope: !155, file: !1, line: 172, type: !135)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bestcost", scope: !155, file: !1, line: 174, type: !135)
!164 = !{i32 2, !"Dwarf Version", i32 2}
!165 = !{i32 2, !"Debug Info Version", i32 700000003}
!166 = !{i32 1, !"PIC Level", i32 2}
!167 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!168 = !DIExpression()
!169 = !DILocation(line: 28, column: 13, scope: !6)
!170 = !DILocation(line: 29, column: 12, scope: !6)
!171 = !DILocation(line: 30, column: 12, scope: !6)
!172 = !DILocation(line: 42, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !6, file: !1, line: 42, column: 6)
!174 = !DILocation(line: 42, column: 29, scope: !173)
!175 = !DILocation(line: 42, column: 20, scope: !173)
!176 = !DILocation(line: 43, column: 12, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 42, column: 37)
!178 = !{!179, !179, i64 0}
!179 = !{!"any pointer", !180, i64 0}
!180 = !{!"omnipotent char", !181, i64 0}
!181 = !{!"Simple C/C++ TBAA"}
!182 = !DILocation(line: 44, column: 37, scope: !177)
!183 = !DILocation(line: 43, column: 4, scope: !177)
!184 = !DILocation(line: 45, column: 4, scope: !177)
!185 = !DILocation(line: 34, column: 34, scope: !6)
!186 = !DILocation(line: 48, column: 31, scope: !6)
!187 = !DILocation(line: 48, column: 12, scope: !6)
!188 = !DILocation(line: 35, column: 10, scope: !6)
!189 = !DILocation(line: 49, column: 24, scope: !6)
!190 = !{!191, !191, i64 0}
!191 = !{!"int", !180, i64 0}
!192 = !DILocation(line: 49, column: 37, scope: !6)
!193 = !DILocation(line: 49, column: 50, scope: !6)
!194 = !DILocation(line: 169, column: 12, scope: !155, inlinedAt: !195)
!195 = distinct !DILocation(line: 49, column: 12, scope: !6)
!196 = !DILocation(line: 170, column: 12, scope: !155, inlinedAt: !195)
!197 = !DILocation(line: 171, column: 12, scope: !155, inlinedAt: !195)
!198 = !DILocation(line: 172, column: 12, scope: !155, inlinedAt: !195)
!199 = !DILocation(line: 176, column: 9, scope: !200, inlinedAt: !195)
!200 = distinct !DILexicalBlock(scope: !155, file: !1, line: 176, column: 6)
!201 = !DILocation(line: 176, column: 20, scope: !200, inlinedAt: !195)
!202 = !DILocation(line: 176, column: 14, scope: !200, inlinedAt: !195)
!203 = !DILocation(line: 177, column: 19, scope: !204, inlinedAt: !195)
!204 = distinct !DILexicalBlock(scope: !200, file: !1, line: 176, column: 27)
!205 = !DILocation(line: 177, column: 24, scope: !204, inlinedAt: !195)
!206 = !DILocation(line: 177, column: 30, scope: !204, inlinedAt: !195)
!207 = !DILocation(line: 174, column: 9, scope: !155, inlinedAt: !195)
!208 = !DILocation(line: 178, column: 1, scope: !204, inlinedAt: !195)
!209 = !DILocation(line: 178, column: 16, scope: !210, inlinedAt: !195)
!210 = distinct !DILexicalBlock(scope: !200, file: !1, line: 178, column: 13)
!211 = !DILocation(line: 179, column: 15, scope: !212, inlinedAt: !195)
!212 = distinct !DILexicalBlock(scope: !210, file: !1, line: 178, column: 24)
!213 = !DILocation(line: 178, column: 13, scope: !200, inlinedAt: !195)
!214 = !DILocation(line: 179, column: 30, scope: !212, inlinedAt: !195)
!215 = !DILocation(line: 179, column: 34, scope: !212, inlinedAt: !195)
!216 = !DILocation(line: 179, column: 24, scope: !212, inlinedAt: !195)
!217 = !DILocation(line: 179, column: 22, scope: !212, inlinedAt: !195)
!218 = !DILocation(line: 179, column: 17, scope: !212, inlinedAt: !195)
!219 = !DILocation(line: 180, column: 1, scope: !212, inlinedAt: !195)
!220 = !DILocation(line: 181, column: 30, scope: !221, inlinedAt: !195)
!221 = distinct !DILexicalBlock(scope: !210, file: !1, line: 180, column: 8)
!222 = !DILocation(line: 181, column: 34, scope: !221, inlinedAt: !195)
!223 = !DILocation(line: 181, column: 24, scope: !221, inlinedAt: !195)
!224 = !DILocation(line: 181, column: 22, scope: !221, inlinedAt: !195)
!225 = !DILocation(line: 181, column: 17, scope: !221, inlinedAt: !195)
!226 = !DILocation(line: 181, column: 15, scope: !221, inlinedAt: !195)
!227 = !DILocation(line: 49, column: 12, scope: !6)
!228 = !DILocation(line: 33, column: 9, scope: !6)
!229 = !DILocation(line: 50, column: 19, scope: !6)
!230 = !{!231, !179, i64 136}
!231 = !{!"_GPart", !191, i64 0, !179, i64 8, !191, i64 16, !191, i64 20, !191, i64 24, !232, i64 32, !232, i64 56, !179, i64 80, !179, i64 88, !179, i64 96, !232, i64 104, !191, i64 128, !179, i64 136}
!232 = !{!"_IV", !191, i64 0, !191, i64 4, !191, i64 8, !179, i64 16}
!233 = !DILocation(line: 32, column: 10, scope: !6)
!234 = !DILocation(line: 51, column: 19, scope: !6)
!235 = !{!231, !191, i64 128}
!236 = !DILocation(line: 34, column: 22, scope: !6)
!237 = !DILocation(line: 53, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 53, column: 9)
!239 = distinct !DILexicalBlock(scope: !6, file: !1, line: 52, column: 13)
!240 = !DILocation(line: 73, column: 16, scope: !241)
!241 = distinct !DILexicalBlock(scope: !239, file: !1, line: 73, column: 9)
!242 = !DILocation(line: 146, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !1, line: 146, column: 12)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 140, column: 11)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 134, column: 9)
!246 = !DILocation(line: 148, column: 33, scope: !247)
!247 = distinct !DILexicalBlock(scope: !243, file: !1, line: 146, column: 25)
!248 = !DILocation(line: 148, column: 58, scope: !247)
!249 = !DILocation(line: 52, column: 1, scope: !6)
!250 = !DILocation(line: 53, column: 9, scope: !239)
!251 = !DILocation(line: 54, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !238, file: !1, line: 53, column: 22)
!253 = !DILocation(line: 57, column: 7, scope: !252)
!254 = !DILocation(line: 58, column: 4, scope: !252)
!255 = !DILocation(line: 59, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !239, file: !1, line: 59, column: 9)
!257 = !DILocation(line: 59, column: 24, scope: !256)
!258 = !DILocation(line: 59, column: 21, scope: !256)
!259 = !DILocation(line: 59, column: 9, scope: !239)
!260 = !DILocation(line: 34, column: 15, scope: !6)
!261 = !DILocation(line: 34, column: 40, scope: !6)
!262 = !DILocation(line: 61, column: 17, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !1, line: 59, column: 38)
!264 = !DILocation(line: 36, column: 20, scope: !6)
!265 = !DILocation(line: 62, column: 4, scope: !263)
!266 = !DILocation(line: 64, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !256, file: !1, line: 62, column: 11)
!268 = !DILocation(line: 66, column: 14, scope: !239)
!269 = !DILocation(line: 36, column: 10, scope: !6)
!270 = !DILocation(line: 67, column: 9, scope: !239)
!271 = !DILocation(line: 68, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 67, column: 22)
!273 = distinct !DILexicalBlock(scope: !239, file: !1, line: 67, column: 9)
!274 = !DILocation(line: 69, column: 7, scope: !272)
!275 = !DILocation(line: 70, column: 7, scope: !272)
!276 = !DILocation(line: 71, column: 4, scope: !272)
!277 = !DILocation(line: 34, column: 30, scope: !6)
!278 = !DILocation(line: 35, column: 21, scope: !6)
!279 = !DILocation(line: 72, column: 4, scope: !239)
!280 = !DILocation(line: 73, column: 9, scope: !239)
!281 = !DILocation(line: 79, column: 25, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 79, column: 7)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 79, column: 7)
!284 = distinct !DILexicalBlock(scope: !241, file: !1, line: 73, column: 23)
!285 = !DILocation(line: 79, column: 23, scope: !282)
!286 = !DILocation(line: 79, column: 7, scope: !283)
!287 = !DILocation(line: 80, column: 15, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 80, column: 15)
!289 = distinct !DILexicalBlock(scope: !282, file: !1, line: 79, column: 36)
!290 = !DILocation(line: 80, column: 24, scope: !288)
!291 = !DILocation(line: 80, column: 15, scope: !289)
!292 = !DILocation(line: 81, column: 22, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !1, line: 80, column: 35)
!294 = !DILocation(line: 82, column: 10, scope: !293)
!295 = !DILocation(line: 85, column: 9, scope: !239)
!296 = !DILocation(line: 89, column: 14, scope: !239)
!297 = !DILocation(line: 33, column: 19, scope: !6)
!298 = !DILocation(line: 86, column: 7, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 85, column: 22)
!300 = distinct !DILexicalBlock(scope: !239, file: !1, line: 85, column: 9)
!301 = !DILocation(line: 87, column: 7, scope: !299)
!302 = !DILocation(line: 92, column: 52, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !1, line: 90, column: 22)
!304 = distinct !DILexicalBlock(scope: !239, file: !1, line: 90, column: 9)
!305 = !DILocation(line: 92, column: 62, scope: !303)
!306 = !DILocation(line: 91, column: 7, scope: !303)
!307 = !DILocation(line: 93, column: 7, scope: !303)
!308 = !DILocation(line: 94, column: 4, scope: !303)
!309 = !DILocation(line: 95, column: 4, scope: !239)
!310 = !DILocation(line: 96, column: 4, scope: !239)
!311 = !DILocation(line: 97, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !239, file: !1, line: 97, column: 9)
!313 = !DILocation(line: 97, column: 9, scope: !239)
!314 = !DILocation(line: 98, column: 12, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 97, column: 31)
!316 = !DILocation(line: 99, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 98, column: 25)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 98, column: 12)
!319 = !DILocation(line: 102, column: 10, scope: !317)
!320 = !DILocation(line: 103, column: 7, scope: !317)
!321 = !DILocation(line: 104, column: 12, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !1, line: 104, column: 12)
!323 = !DILocation(line: 104, column: 27, scope: !322)
!324 = !DILocation(line: 104, column: 24, scope: !322)
!325 = !DILocation(line: 104, column: 12, scope: !315)
!326 = !DILocation(line: 106, column: 20, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 104, column: 41)
!328 = !DILocation(line: 107, column: 7, scope: !327)
!329 = !DILocation(line: 109, column: 20, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !1, line: 107, column: 14)
!331 = !DILocation(line: 111, column: 17, scope: !315)
!332 = !DILocation(line: 112, column: 7, scope: !315)
!333 = !DILocation(line: 113, column: 12, scope: !315)
!334 = !DILocation(line: 119, column: 28, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 119, column: 10)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 119, column: 10)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 113, column: 26)
!338 = distinct !DILexicalBlock(scope: !315, file: !1, line: 113, column: 12)
!339 = !DILocation(line: 119, column: 26, scope: !335)
!340 = !DILocation(line: 119, column: 10, scope: !336)
!341 = !DILocation(line: 120, column: 18, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 120, column: 18)
!343 = distinct !DILexicalBlock(scope: !335, file: !1, line: 119, column: 39)
!344 = !DILocation(line: 120, column: 27, scope: !342)
!345 = !DILocation(line: 120, column: 18, scope: !343)
!346 = !DILocation(line: 121, column: 25, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 120, column: 38)
!348 = !DILocation(line: 122, column: 13, scope: !347)
!349 = !DILocation(line: 125, column: 17, scope: !315)
!350 = !DILocation(line: 126, column: 12, scope: !315)
!351 = !DILocation(line: 128, column: 52, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 126, column: 25)
!353 = distinct !DILexicalBlock(scope: !315, file: !1, line: 126, column: 12)
!354 = !DILocation(line: 128, column: 62, scope: !352)
!355 = !DILocation(line: 127, column: 10, scope: !352)
!356 = !DILocation(line: 129, column: 10, scope: !352)
!357 = !DILocation(line: 130, column: 7, scope: !352)
!358 = !DILocation(line: 131, column: 7, scope: !315)
!359 = !DILocation(line: 132, column: 7, scope: !315)
!360 = !DILocation(line: 133, column: 4, scope: !315)
!361 = !DILocation(line: 134, column: 17, scope: !245)
!362 = !DILocation(line: 134, column: 9, scope: !239)
!363 = !DILocation(line: 135, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !245, file: !1, line: 134, column: 31)
!365 = !DILocation(line: 136, column: 10, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 135, column: 25)
!367 = distinct !DILexicalBlock(scope: !364, file: !1, line: 135, column: 12)
!368 = !DILocation(line: 137, column: 10, scope: !366)
!369 = !DILocation(line: 156, column: 4, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 155, column: 19)
!371 = distinct !DILexicalBlock(scope: !6, file: !1, line: 155, column: 6)
!372 = !DILocation(line: 157, column: 4, scope: !370)
!373 = !DILocation(line: 158, column: 1, scope: !370)
!374 = !DILocation(line: 142, column: 12, scope: !244)
!375 = !DILocation(line: 143, column: 10, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !1, line: 142, column: 25)
!377 = distinct !DILexicalBlock(scope: !244, file: !1, line: 142, column: 12)
!378 = !DILocation(line: 144, column: 10, scope: !376)
!379 = !DILocation(line: 146, column: 12, scope: !244)
!380 = !DILocation(line: 147, column: 10, scope: !247)
!381 = !{!231, !191, i64 16}
!382 = !DILocation(line: 148, column: 39, scope: !247)
!383 = !DILocation(line: 34, column: 9, scope: !6)
!384 = !DILocation(line: 148, column: 10, scope: !247)
!385 = !DILocation(line: 150, column: 10, scope: !247)
!386 = !DILocation(line: 151, column: 7, scope: !247)
!387 = !DILocation(line: 153, column: 8, scope: !239)
!388 = !DILocation(line: 159, column: 1, scope: !6)
