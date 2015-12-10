; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/dayhoff.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@squid_errno = external global i32
@.str = private unnamed_addr constant [32 x i8] c"BLOSUM Clustered Scoring Matrix\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"substitution matrix,\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@.str4 = private unnamed_addr constant [64 x i8] c"Failed to parse PAM matrix scale factor. Defaulting to ln(2)/2!\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ParsePAMFile(%struct.__sFILE* %fp, i32*** nocapture %ret_pam, float* %ret_scale) #0 {
  %buffer = alloca [512 x i8], align 16
  %order = alloca [27 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !78, metadata !127), !dbg !128
  tail call void @llvm.dbg.value(metadata i32*** %ret_pam, i64 0, metadata !79, metadata !127), !dbg !129
  tail call void @llvm.dbg.value(metadata float* %ret_scale, i64 0, metadata !80, metadata !127), !dbg !130
  %1 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0, !dbg !131
  call void @llvm.lifetime.start(i64 512, i8* %1) #2, !dbg !131
  tail call void @llvm.dbg.declare(metadata [512 x i8]* %buffer, metadata !82, metadata !127), !dbg !132
  %2 = bitcast [27 x i32]* %order to i8*, !dbg !133
  call void @llvm.lifetime.start(i64 108, i8* %2) #2, !dbg !133
  tail call void @llvm.dbg.declare(metadata [27 x i32]* %order, metadata !86, metadata !127), !dbg !134
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !96, metadata !127), !dbg !135
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !95, metadata !127), !dbg !136
  %3 = icmp eq %struct.__sFILE* %fp, null, !dbg !137
  br i1 %3, label %6, label %.critedge.preheader, !dbg !139

.critedge.preheader:                              ; preds = %0
  %4 = call i8* @fgets(i8* %1, i32 512, %struct.__sFILE* %fp) #6, !dbg !140
  %5 = icmp eq i8* %4, null, !dbg !143
  br i1 %5, label %.critedge._crit_edge, label %.lr.ph17, !dbg !144

; <label>:6                                       ; preds = %0
  store i32 2, i32* @squid_errno, align 4, !dbg !145, !tbaa !147
  br label %118, !dbg !151

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %.critedge.preheader
  store i32 2, i32* @squid_errno, align 4, !dbg !152, !tbaa !147
  br label %118, !dbg !154

.lr.ph17:                                         ; preds = %.critedge.preheader, %.critedge.backedge
  %gotscale.016 = phi i32 [ %gotscale.1, %.critedge.backedge ], [ 0, %.critedge.preheader ]
  %scale.015 = phi float [ %scale.1, %.critedge.backedge ], [ 0.000000e+00, %.critedge.preheader ]
  %7 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #6, !dbg !155
  %8 = icmp eq i8* %7, null, !dbg !157
  br i1 %8, label %21, label %9, !dbg !158

; <label>:9                                       ; preds = %.lr.ph17
  %10 = call i8* @strchr(i8* %1, i32 47) #6, !dbg !159
  call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !91, metadata !127), !dbg !160
  %11 = icmp eq i8* %10, null, !dbg !161
  br i1 %11, label %21, label %12, !dbg !162

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds i8* %10, i64 1, !dbg !163
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !91, metadata !127), !dbg !160
  %14 = load i8* %13, align 1, !dbg !165, !tbaa !167
  %15 = sext i8 %14 to i32, !dbg !168
  %isdigittmp = add nsw i32 %15, -48, !dbg !169
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !169
  br i1 %isdigit, label %17, label %16, !dbg !170

; <label>:16                                      ; preds = %12
  store i32 5, i32* @squid_errno, align 4, !dbg !171, !tbaa !147
  br label %118, !dbg !173

; <label>:17                                      ; preds = %12
  %18 = call double @atof(i8* %13) #6, !dbg !174
  %19 = fdiv double 0x3FE62E42FEFA39EF, %18, !dbg !175
  %20 = fptrunc double %19 to float, !dbg !176
  call void @llvm.dbg.value(metadata float %20, i64 0, metadata !95, metadata !127), !dbg !136
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !96, metadata !127), !dbg !135
  br label %.loopexit, !dbg !177

; <label>:21                                      ; preds = %9, %.lr.ph17
  %22 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !178
  %23 = icmp eq i8* %22, null, !dbg !180
  br i1 %23, label %.loopexit, label %.preheader5, !dbg !181

.preheader5:                                      ; preds = %21, %26
  %24 = call i8* @strrchr(i8* %1, i32 61) #6, !dbg !182
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !91, metadata !127), !dbg !160
  %25 = icmp eq i8* %24, null, !dbg !184
  br i1 %25, label %.loopexit, label %26, !dbg !185

; <label>:26                                      ; preds = %.preheader5
  %27 = getelementptr inbounds i8* %24, i64 2, !dbg !186
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !91, metadata !127), !dbg !160
  %28 = call i32 @IsReal(i8* %27) #6, !dbg !188
  %29 = icmp eq i32 %28, 0, !dbg !188
  br i1 %29, label %.preheader5, label %30, !dbg !190

; <label>:30                                      ; preds = %26
  %31 = call double @atof(i8* %27) #6, !dbg !191
  %32 = fptrunc double %31 to float, !dbg !191
  call void @llvm.dbg.value(metadata float %32, i64 0, metadata !95, metadata !127), !dbg !136
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !96, metadata !127), !dbg !135
  br label %.loopexit, !dbg !193

.loopexit:                                        ; preds = %.preheader5, %21, %17, %30
  %scale.1 = phi float [ %20, %17 ], [ %32, %30 ], [ %scale.015, %21 ], [ %scale.015, %.preheader5 ]
  %gotscale.1 = phi i32 [ 1, %17 ], [ 1, %30 ], [ %gotscale.016, %21 ], [ %gotscale.016, %.preheader5 ]
  %33 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !194
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !91, metadata !127), !dbg !160
  %34 = icmp eq i8* %33, null, !dbg !195
  br i1 %34, label %.critedge.backedge, label %35, !dbg !196

; <label>:35                                      ; preds = %.loopexit
  %36 = load i8* %33, align 1, !dbg !197, !tbaa !167
  %37 = icmp eq i8 %36, 35, !dbg !198
  br i1 %37, label %.critedge.backedge, label %.preheader4.preheader, !dbg !199

.preheader4.preheader:                            ; preds = %35
  %38 = sext i8 %36 to i32, !dbg !200
  %39 = add nsw i32 %38, -65, !dbg !202
  %40 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 0, !dbg !203
  %41 = icmp slt i8 %36, 65, !dbg !204
  %42 = icmp sgt i32 %39, 25, !dbg !206
  %or.cond31 = or i1 %41, %42, !dbg !207
  %.32 = select i1 %or.cond31, i32 26, i32 %39, !dbg !207
  store i32 %.32, i32* %40, align 16, !dbg !208, !tbaa !147
  %43 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !209
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !91, metadata !127), !dbg !160
  %44 = icmp eq i8* %43, null, !dbg !210
  br i1 %44, label %.preheader4._crit_edge, label %._crit_edge27, !dbg !211

.critedge.backedge:                               ; preds = %35, %.loopexit
  %45 = call i8* @fgets(i8* %1, i32 512, %struct.__sFILE* %fp) #6, !dbg !140
  %46 = icmp eq i8* %45, null, !dbg !143
  br i1 %46, label %.critedge._crit_edge, label %.lr.ph17, !dbg !144

._crit_edge27:                                    ; preds = %.preheader4.preheader, %._crit_edge27
  %47 = phi i8* [ %53, %._crit_edge27 ], [ %43, %.preheader4.preheader ]
  %indvars.iv.next2633 = phi i64 [ %indvars.iv.next26, %._crit_edge27 ], [ 1, %.preheader4.preheader ]
  %.pre = load i8* %47, align 1, !dbg !212, !tbaa !167
  %48 = sext i8 %.pre to i32, !dbg !200
  %49 = add nsw i32 %48, -65, !dbg !202
  %50 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv.next2633, !dbg !203
  %51 = icmp slt i8 %.pre, 65, !dbg !204
  %52 = icmp sgt i32 %49, 25, !dbg !206
  %or.cond = or i1 %51, %52, !dbg !207
  %. = select i1 %or.cond, i32 26, i32 %49, !dbg !207
  store i32 %., i32* %50, align 4, !dbg !208, !tbaa !147
  %indvars.iv.next26 = add nuw i64 %indvars.iv.next2633, 1, !dbg !211
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !209
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !91, metadata !127), !dbg !160
  %54 = icmp eq i8* %53, null, !dbg !210
  br i1 %54, label %.preheader4._crit_edge, label %._crit_edge27, !dbg !211

.preheader4._crit_edge:                           ; preds = %._crit_edge27, %.preheader4.preheader
  %indvars.iv.next26.lcssa = phi i64 [ 1, %.preheader4.preheader ], [ %indvars.iv.next26, %._crit_edge27 ]
  %indvars.iv25.lcssa = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next2633, %._crit_edge27 ]
  %55 = trunc i64 %indvars.iv25.lcssa to i32, !dbg !213
  %56 = trunc i64 %indvars.iv.next26.lcssa to i32, !dbg !213
  %57 = call i8* @calloc(i64 27, i64 8) #6, !dbg !214
  %58 = bitcast i8* %57 to i32**, !dbg !216
  call void @llvm.dbg.value(metadata i32** %58, i64 0, metadata !81, metadata !127), !dbg !217
  %59 = icmp eq i8* %57, null, !dbg !218
  br i1 %59, label %60, label %.preheader3, !dbg !219

; <label>:60                                      ; preds = %.preheader4._crit_edge
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !220
  br label %.preheader3, !dbg !220

.preheader2:                                      ; preds = %68
  %61 = icmp sgt i32 %55, -1, !dbg !221
  br i1 %61, label %.lr.ph12, label %._crit_edge13, !dbg !224

.lr.ph12:                                         ; preds = %.preheader2
  %sext = shl i64 %indvars.iv.next26.lcssa, 32, !dbg !224
  %62 = ashr exact i64 %sext, 32, !dbg !224
  br label %69, !dbg !224

.preheader3:                                      ; preds = %.preheader4._crit_edge, %60, %68
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %68 ], [ 0, %60 ], [ 0, %.preheader4._crit_edge ]
  %63 = call i8* @calloc(i64 27, i64 4) #6, !dbg !225
  %64 = getelementptr inbounds i32** %58, i64 %indvars.iv23, !dbg !229
  %65 = bitcast i32** %64 to i8**, !dbg !230
  store i8* %63, i8** %65, align 8, !dbg !230, !tbaa !231
  %66 = icmp eq i8* %63, null, !dbg !233
  br i1 %66, label %67, label %68, !dbg !234

; <label>:67                                      ; preds = %.preheader3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !235
  br label %68, !dbg !235

; <label>:68                                      ; preds = %.preheader3, %67
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !236
  %exitcond = icmp eq i64 %indvars.iv.next24, 27, !dbg !236
  br i1 %exitcond, label %.preheader2, label %.preheader3, !dbg !236

; <label>:69                                      ; preds = %.lr.ph12, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next, %._crit_edge ]
  %70 = call i8* @fgets(i8* %1, i32 512, %struct.__sFILE* %fp) #6, !dbg !237
  %71 = icmp eq i8* %70, null, !dbg !240
  br i1 %71, label %72, label %73, !dbg !241

; <label>:72                                      ; preds = %69
  store i32 2, i32* @squid_errno, align 4, !dbg !242, !tbaa !147
  br label %118, !dbg !244

; <label>:73                                      ; preds = %69
  %74 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !245
  call void @llvm.dbg.value(metadata i8* %74, i64 0, metadata !91, metadata !127), !dbg !160
  %75 = icmp eq i8* %74, null, !dbg !247
  br i1 %75, label %77, label %.lr.ph, !dbg !248

.lr.ph:                                           ; preds = %73
  %76 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %indvars.iv, !dbg !249
  br label %78, !dbg !254

; <label>:77                                      ; preds = %73
  store i32 2, i32* @squid_errno, align 4, !dbg !255, !tbaa !147
  br label %118, !dbg !257

; <label>:78                                      ; preds = %.lr.ph, %106
  %col.09 = phi i32 [ 0, %.lr.ph ], [ %108, %106 ]
  %sptr.18 = phi i8* [ %74, %.lr.ph ], [ %107, %106 ]
  %79 = icmp eq i8* %sptr.18, null, !dbg !258
  br i1 %79, label %80, label %81, !dbg !260

; <label>:80                                      ; preds = %78
  store i32 2, i32* @squid_errno, align 4, !dbg !261, !tbaa !147
  br label %118, !dbg !263

; <label>:81                                      ; preds = %78
  %82 = load i8* %sptr.18, align 1, !dbg !264, !tbaa !167
  %83 = icmp eq i8 %82, 42, !dbg !265
  br i1 %83, label %93, label %84, !dbg !266

; <label>:84                                      ; preds = %81
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !113, metadata !127) #2, !dbg !267
  call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !118, metadata !127) #2, !dbg !269
  call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !119, metadata !127) #2, !dbg !271
  %isascii.i.i1 = icmp sgt i8 %82, -1, !dbg !272
  br i1 %isascii.i.i1, label %85, label %90, !dbg !272

; <label>:85                                      ; preds = %84
  %86 = sext i8 %82 to i64, !dbg !273
  %87 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %86, !dbg !273
  %88 = load i32* %87, align 4, !dbg !273, !tbaa !147
  %89 = and i32 %88, 256, !dbg !274
  br label %isalpha.exit, !dbg !272

; <label>:90                                      ; preds = %84
  %91 = sext i8 %82 to i32, !dbg !264
  %92 = call i32 @__maskrune(i32 %91, i64 256) #6, !dbg !275
  br label %isalpha.exit, !dbg !272

isalpha.exit:                                     ; preds = %85, %90
  %.sink.i.in.i = phi i32 [ %89, %85 ], [ %92, %90 ], !dbg !276
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !277
  br i1 %.sink.i.i, label %95, label %93, !dbg !278

; <label>:93                                      ; preds = %isalpha.exit, %81
  %94 = add nsw i32 %col.09, -1, !dbg !279
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !94, metadata !127), !dbg !280
  br label %106, !dbg !281

; <label>:95                                      ; preds = %isalpha.exit
  %96 = call i32 @atoi(i8* %sptr.18) #6, !dbg !282
  %97 = sext i32 %col.09 to i64, !dbg !283
  %98 = getelementptr inbounds [27 x i32]* %order, i64 0, i64 %97, !dbg !283
  %99 = load i32* %98, align 4, !dbg !283, !tbaa !147
  %100 = sext i32 %99 to i64, !dbg !284
  %101 = load i32* %76, align 4, !dbg !249, !tbaa !147
  %102 = sext i32 %101 to i64, !dbg !284
  %103 = getelementptr inbounds i32** %58, i64 %102, !dbg !284
  %104 = load i32** %103, align 8, !dbg !284, !tbaa !231
  %105 = getelementptr inbounds i32* %104, i64 %100, !dbg !284
  store i32 %96, i32* %105, align 4, !dbg !285, !tbaa !147
  br label %106

; <label>:106                                     ; preds = %95, %93
  %col.1 = phi i32 [ %94, %93 ], [ %col.09, %95 ]
  %107 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !286
  call void @llvm.dbg.value(metadata i8* %107, i64 0, metadata !91, metadata !127), !dbg !160
  %108 = add nsw i32 %col.1, 1, !dbg !287
  call void @llvm.dbg.value(metadata i32 %108, i64 0, metadata !94, metadata !127), !dbg !280
  %109 = icmp slt i32 %108, %56, !dbg !288
  br i1 %109, label %78, label %._crit_edge, !dbg !254

._crit_edge:                                      ; preds = %106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !224
  %110 = icmp slt i64 %indvars.iv.next, %62, !dbg !221
  br i1 %110, label %69, label %._crit_edge13, !dbg !224

._crit_edge13:                                    ; preds = %._crit_edge, %.preheader2
  %111 = icmp eq float* %ret_scale, null, !dbg !289
  br i1 %111, label %116, label %112, !dbg !291

; <label>:112                                     ; preds = %._crit_edge13
  %113 = icmp eq i32 %gotscale.1, 0, !dbg !292
  br i1 %113, label %115, label %114, !dbg !295

; <label>:114                                     ; preds = %112
  store float %scale.1, float* %ret_scale, align 4, !dbg !296, !tbaa !297
  br label %116, !dbg !299

; <label>:115                                     ; preds = %112
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !300
  store float 0x3FD62E4300000000, float* %ret_scale, align 4, !dbg !302, !tbaa !297
  br label %116

; <label>:116                                     ; preds = %._crit_edge13, %114, %115
  %117 = bitcast i32*** %ret_pam to i8**, !dbg !303
  store i8* %57, i8** %117, align 8, !dbg !303, !tbaa !231
  br label %118, !dbg !304

; <label>:118                                     ; preds = %116, %80, %77, %72, %16, %.critedge._crit_edge, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %.critedge._crit_edge ], [ 0, %72 ], [ 0, %77 ], [ 0, %80 ], [ 1, %116 ], [ 0, %16 ]
  call void @llvm.lifetime.end(i64 108, i8* %2) #2, !dbg !305
  call void @llvm.lifetime.end(i64 512, i8* %1) #2, !dbg !305
  ret i32 %.0, !dbg !305
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: optsize
declare i32 @IsReal(i8*) #5

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare void @Warn(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!123, !124, !125}
!llvm.ident = !{!126}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/dayhoff.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!9 = !{!10, !97, !103, !111, !114, !120}
!10 = !DISubprogram(name: "ParsePAMFile", scope: !1, file: !1, line: 64, type: !11, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i32***, float*)* @ParsePAMFile, variables: !77)
!11 = !DISubroutineType(types: !12)
!12 = !{!5, !13, !75, !76}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !15, line: 153, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 122, size: 1216, align: 64, elements: !17)
!17 = !{!18, !21, !22, !23, !25, !26, !31, !32, !33, !37, !43, !53, !59, !60, !63, !64, !68, !72, !73, !74}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !16, file: !15, line: 123, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !16, file: !15, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !16, file: !15, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !16, file: !15, line: 126, baseType: !24, size: 16, align: 16, offset: 128)
!24 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !16, file: !15, line: 127, baseType: !24, size: 16, align: 16, offset: 144)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !16, file: !15, line: 128, baseType: !27, size: 128, align: 64, offset: 192)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 88, size: 128, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !27, file: !15, line: 89, baseType: !19, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !27, file: !15, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !16, file: !15, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !16, file: !15, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !16, file: !15, line: 133, baseType: !34, size: 64, align: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!5, !4}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !16, file: !15, line: 134, baseType: !38, size: 64, align: 64, offset: 512)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!5, !4, !41, !5}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !16, file: !15, line: 135, baseType: !44, size: 64, align: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !4, !47, !5}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !15, line: 77, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !49, line: 71, baseType: !50)
!49 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!52 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !16, file: !15, line: 136, baseType: !54, size: 64, align: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!5, !4, !57, !5}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !16, file: !15, line: 139, baseType: !27, size: 128, align: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !16, file: !15, line: 140, baseType: !61, size: 64, align: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !15, line: 94, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !16, file: !15, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !16, file: !15, line: 144, baseType: !65, size: 24, align: 8, offset: 928)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, align: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !16, file: !15, line: 145, baseType: !69, size: 8, align: 8, offset: 952)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, align: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !16, file: !15, line: 148, baseType: !27, size: 128, align: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !16, file: !15, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !16, file: !15, line: 152, baseType: !47, size: 64, align: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!77 = !{!78, !79, !80, !81, !82, !86, !90, !91, !92, !93, !94, !95, !96}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !10, file: !1, line: 64, type: !13)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_pam", arg: 2, scope: !10, file: !1, line: 64, type: !75)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_scale", arg: 3, scope: !10, file: !1, line: 64, type: !76)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pam", scope: !10, file: !1, line: 66, type: !7)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !10, file: !1, line: 67, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4096, align: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 512)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !10, file: !1, line: 68, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 864, align: 32, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 27)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsymbols", scope: !10, file: !1, line: 69, type: !5)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sptr", scope: !10, file: !1, line: 70, type: !41)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !10, file: !1, line: 71, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "row", scope: !10, file: !1, line: 72, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !10, file: !1, line: 72, type: !5)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scale", scope: !10, file: !1, line: 73, type: !6)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gotscale", scope: !10, file: !1, line: 74, type: !5)
!97 = !DISubprogram(name: "isdigit", scope: !98, file: !98, line: 237, type: !99, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !101)
!98 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!99 = !DISubroutineType(types: !100)
!100 = !{!5, !5}
!101 = !{!102}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !97, file: !98, line: 237, type: !5)
!103 = !DISubprogram(name: "__isctype", scope: !98, file: !98, line: 164, type: !104, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !108)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !106, !107}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !51, line: 70, baseType: !5)
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !{!109, !110}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !103, file: !98, line: 164, type: !106)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !103, file: !98, line: 164, type: !107)
!111 = !DISubprogram(name: "isalpha", scope: !98, file: !98, line: 218, type: !99, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !112)
!112 = !{!113}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !111, file: !98, line: 218, type: !5)
!114 = !DISubprogram(name: "__istype", scope: !98, file: !98, line: 153, type: !115, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!5, !106, !107}
!117 = !{!118, !119}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !114, file: !98, line: 153, type: !106)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !114, file: !98, line: 153, type: !107)
!120 = !DISubprogram(name: "isascii", scope: !98, file: !98, line: 135, type: !99, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !121)
!121 = !{!122}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !120, file: !98, line: 135, type: !5)
!123 = !{i32 2, !"Dwarf Version", i32 2}
!124 = !{i32 2, !"Debug Info Version", i32 700000003}
!125 = !{i32 1, !"PIC Level", i32 2}
!126 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!127 = !DIExpression()
!128 = !DILocation(line: 64, column: 20, scope: !10)
!129 = !DILocation(line: 64, column: 31, scope: !10)
!130 = !DILocation(line: 64, column: 47, scope: !10)
!131 = !DILocation(line: 67, column: 3, scope: !10)
!132 = !DILocation(line: 67, column: 12, scope: !10)
!133 = !DILocation(line: 68, column: 3, scope: !10)
!134 = !DILocation(line: 68, column: 12, scope: !10)
!135 = !DILocation(line: 74, column: 12, scope: !10)
!136 = !DILocation(line: 73, column: 12, scope: !10)
!137 = !DILocation(line: 77, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !10, file: !1, line: 77, column: 7)
!139 = !DILocation(line: 77, column: 7, scope: !10)
!140 = !DILocation(line: 84, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 84, column: 9)
!142 = distinct !DILexicalBlock(scope: !10, file: !1, line: 83, column: 6)
!143 = !DILocation(line: 84, column: 32, scope: !141)
!144 = !DILocation(line: 84, column: 9, scope: !142)
!145 = !DILocation(line: 77, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 77, column: 19)
!147 = !{!148, !148, i64 0}
!148 = !{!"int", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !DILocation(line: 77, column: 49, scope: !146)
!152 = !DILocation(line: 85, column: 21, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !1, line: 85, column: 7)
!154 = !DILocation(line: 85, column: 37, scope: !153)
!155 = !DILocation(line: 96, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !142, file: !1, line: 96, column: 9)
!157 = !DILocation(line: 96, column: 59, scope: !156)
!158 = !DILocation(line: 96, column: 67, scope: !156)
!159 = !DILocation(line: 97, column: 10, scope: !156)
!160 = !DILocation(line: 70, column: 12, scope: !10)
!161 = !DILocation(line: 97, column: 31, scope: !156)
!162 = !DILocation(line: 96, column: 9, scope: !142)
!163 = !DILocation(line: 99, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !156, file: !1, line: 98, column: 7)
!165 = !DILocation(line: 100, column: 23, scope: !166)
!166 = distinct !DILexicalBlock(scope: !164, file: !1, line: 100, column: 6)
!167 = !{!149, !149, i64 0}
!168 = !DILocation(line: 100, column: 16, scope: !166)
!169 = !DILocation(line: 100, column: 8, scope: !166)
!170 = !DILocation(line: 100, column: 6, scope: !164)
!171 = !DILocation(line: 100, column: 46, scope: !172)
!172 = distinct !DILexicalBlock(scope: !166, file: !1, line: 100, column: 32)
!173 = !DILocation(line: 100, column: 62, scope: !172)
!174 = !DILocation(line: 101, column: 34, scope: !164)
!175 = !DILocation(line: 101, column: 31, scope: !164)
!176 = !DILocation(line: 101, column: 10, scope: !164)
!177 = !DILocation(line: 103, column: 7, scope: !164)
!178 = !DILocation(line: 104, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !156, file: !1, line: 104, column: 14)
!180 = !DILocation(line: 104, column: 53, scope: !179)
!181 = !DILocation(line: 104, column: 14, scope: !156)
!182 = !DILocation(line: 106, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 105, column: 7)
!184 = !DILocation(line: 106, column: 39, scope: !183)
!185 = !DILocation(line: 106, column: 2, scope: !183)
!186 = !DILocation(line: 107, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 106, column: 48)
!188 = !DILocation(line: 108, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !1, line: 108, column: 8)
!190 = !DILocation(line: 108, column: 8, scope: !187)
!191 = !DILocation(line: 109, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !1, line: 108, column: 22)
!193 = !DILocation(line: 111, column: 6, scope: !192)
!194 = !DILocation(line: 115, column: 20, scope: !10)
!195 = !DILocation(line: 115, column: 45, scope: !10)
!196 = !DILocation(line: 115, column: 53, scope: !10)
!197 = !DILocation(line: 115, column: 56, scope: !10)
!198 = !DILocation(line: 115, column: 62, scope: !10)
!199 = !DILocation(line: 115, column: 3, scope: !142)
!200 = !DILocation(line: 119, column: 18, scope: !201)
!201 = distinct !DILexicalBlock(scope: !10, file: !1, line: 118, column: 6)
!202 = !DILocation(line: 119, column: 30, scope: !201)
!203 = !DILocation(line: 119, column: 5, scope: !201)
!204 = !DILocation(line: 120, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 120, column: 9)
!206 = !DILocation(line: 120, column: 38, scope: !205)
!207 = !DILocation(line: 120, column: 24, scope: !205)
!208 = !DILocation(line: 120, column: 55, scope: !205)
!209 = !DILocation(line: 122, column: 20, scope: !10)
!210 = !DILocation(line: 122, column: 43, scope: !10)
!211 = !DILocation(line: 122, column: 3, scope: !201)
!212 = !DILocation(line: 119, column: 24, scope: !201)
!213 = !DILocation(line: 69, column: 12, scope: !10)
!214 = !DILocation(line: 130, column: 23, scope: !215)
!215 = distinct !DILexicalBlock(scope: !10, file: !1, line: 130, column: 7)
!216 = !DILocation(line: 130, column: 14, scope: !215)
!217 = !DILocation(line: 66, column: 12, scope: !10)
!218 = !DILocation(line: 130, column: 51, scope: !215)
!219 = !DILocation(line: 130, column: 7, scope: !10)
!220 = !DILocation(line: 131, column: 5, scope: !215)
!221 = !DILocation(line: 138, column: 21, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 138, column: 3)
!223 = distinct !DILexicalBlock(scope: !10, file: !1, line: 138, column: 3)
!224 = !DILocation(line: 138, column: 3, scope: !223)
!225 = !DILocation(line: 133, column: 29, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 133, column: 9)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 132, column: 3)
!228 = distinct !DILexicalBlock(scope: !10, file: !1, line: 132, column: 3)
!229 = !DILocation(line: 133, column: 10, scope: !226)
!230 = !DILocation(line: 133, column: 19, scope: !226)
!231 = !{!232, !232, i64 0}
!232 = !{!"any pointer", !149, i64 0}
!233 = !DILocation(line: 133, column: 55, scope: !226)
!234 = !DILocation(line: 133, column: 9, scope: !227)
!235 = !DILocation(line: 134, column: 7, scope: !226)
!236 = !DILocation(line: 132, column: 3, scope: !228)
!237 = !DILocation(line: 140, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 140, column: 11)
!239 = distinct !DILexicalBlock(scope: !222, file: !1, line: 139, column: 5)
!240 = !DILocation(line: 140, column: 34, scope: !238)
!241 = !DILocation(line: 140, column: 11, scope: !239)
!242 = !DILocation(line: 141, column: 16, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 141, column: 2)
!244 = !DILocation(line: 141, column: 32, scope: !243)
!245 = !DILocation(line: 143, column: 19, scope: !246)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 143, column: 11)
!247 = !DILocation(line: 143, column: 44, scope: !246)
!248 = !DILocation(line: 143, column: 11, scope: !239)
!249 = !DILocation(line: 154, column: 11, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 151, column: 8)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 146, column: 2)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 145, column: 7)
!253 = distinct !DILexicalBlock(scope: !239, file: !1, line: 145, column: 7)
!254 = !DILocation(line: 145, column: 7, scope: !253)
!255 = !DILocation(line: 144, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !1, line: 144, column: 2)
!257 = !DILocation(line: 144, column: 32, scope: !256)
!258 = !DILocation(line: 147, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !1, line: 147, column: 8)
!260 = !DILocation(line: 147, column: 8, scope: !251)
!261 = !DILocation(line: 147, column: 36, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 147, column: 22)
!263 = !DILocation(line: 147, column: 52, scope: !262)
!264 = !DILocation(line: 151, column: 8, scope: !250)
!265 = !DILocation(line: 151, column: 14, scope: !250)
!266 = !DILocation(line: 151, column: 21, scope: !250)
!267 = !DILocation(line: 218, column: 13, scope: !111, inlinedAt: !268)
!268 = distinct !DILocation(line: 151, column: 24, scope: !250)
!269 = !DILocation(line: 153, column: 29, scope: !114, inlinedAt: !270)
!270 = distinct !DILocation(line: 220, column: 10, scope: !111, inlinedAt: !268)
!271 = !DILocation(line: 153, column: 47, scope: !114, inlinedAt: !270)
!272 = !DILocation(line: 158, column: 10, scope: !114, inlinedAt: !270)
!273 = !DILocation(line: 158, column: 27, scope: !114, inlinedAt: !270)
!274 = !DILocation(line: 158, column: 25, scope: !114, inlinedAt: !270)
!275 = !DILocation(line: 159, column: 7, scope: !114, inlinedAt: !270)
!276 = !DILocation(line: 151, column: 24, scope: !250)
!277 = !DILocation(line: 220, column: 10, scope: !111, inlinedAt: !268)
!278 = !DILocation(line: 151, column: 8, scope: !251)
!279 = !DILocation(line: 152, column: 9, scope: !250)
!280 = !DILocation(line: 72, column: 17, scope: !10)
!281 = !DILocation(line: 152, column: 6, scope: !250)
!282 = !DILocation(line: 154, column: 38, scope: !250)
!283 = !DILocation(line: 154, column: 24, scope: !250)
!284 = !DILocation(line: 154, column: 6, scope: !250)
!285 = !DILocation(line: 154, column: 36, scope: !250)
!286 = !DILocation(line: 156, column: 11, scope: !251)
!287 = !DILocation(line: 145, column: 40, scope: !252)
!288 = !DILocation(line: 145, column: 25, scope: !252)
!289 = !DILocation(line: 162, column: 17, scope: !290)
!290 = distinct !DILexicalBlock(scope: !10, file: !1, line: 162, column: 7)
!291 = !DILocation(line: 162, column: 7, scope: !10)
!292 = !DILocation(line: 164, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 164, column: 11)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 163, column: 5)
!295 = !DILocation(line: 164, column: 11, scope: !294)
!296 = !DILocation(line: 164, column: 32, scope: !293)
!297 = !{!298, !298, i64 0}
!298 = !{!"float", !149, i64 0}
!299 = !DILocation(line: 164, column: 21, scope: !293)
!300 = !DILocation(line: 167, column: 4, scope: !301)
!301 = distinct !DILexicalBlock(scope: !293, file: !1, line: 166, column: 2)
!302 = !DILocation(line: 168, column: 15, scope: !301)
!303 = !DILocation(line: 171, column: 12, scope: !10)
!304 = !DILocation(line: 172, column: 3, scope: !10)
!305 = !DILocation(line: 173, column: 1, scope: !10)
