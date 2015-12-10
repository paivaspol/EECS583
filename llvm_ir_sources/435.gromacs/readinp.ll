; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [21 x i8] c"Reading MDP file %s\0A\00", align 1
@inp_count = internal unnamed_addr global i32 1, align 4
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"No = on line %d in file %s, ignored\0A\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"Empty left hand side on line %d in file %s, ignored\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"Empty right hand side on line %d in file %s, ignored\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Done reading MDP file, there were %d entries in there\0A\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%-24s = %s\0A\00", align 1
@.str10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@warn_buf = external global [1024 x i8]
@.str11 = private unnamed_addr constant [40 x i8] c"Unknown left-hand %s in parameter file\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str15 = private unnamed_addr constant [48 x i8] c"%snvalid enum '%s' for variable %s, using '%s'\0A\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"ERROR: i\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"Next time use one of:\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"*inp\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"Inp %d = %s\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !28, metadata !209), !dbg !210
  %1 = icmp sgt i32 %__signo, 32, !dbg !211
  br i1 %1, label %5, label %2, !dbg !212

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !213
  %4 = shl i32 1, %3, !dbg !214
  br label %5, !dbg !212

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !212
  ret i32 %6, !dbg !215
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_inpfile* @read_inpfile(i8* %fn, i32* nocapture %ninp) #2 {
  %buf = alloca [4096 x i8], align 16
  %buf21 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  %lbuf = alloca [4096 x i8], align 16
  %lbuf20 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0
  %rbuf = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !34, metadata !209), !dbg !216
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !35, metadata !209), !dbg !217
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !218
  call void @llvm.lifetime.start(i64 4096, i8* %1) #3, !dbg !218
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !96, metadata !209), !dbg !219
  %2 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 0, !dbg !218
  call void @llvm.lifetime.start(i64 4096, i8* %2) #3, !dbg !218
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %lbuf, metadata !100, metadata !209), !dbg !220
  %3 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 0, !dbg !218
  call void @llvm.lifetime.start(i64 4096, i8* %3) #3, !dbg !218
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %rbuf, metadata !101, metadata !209), !dbg !221
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile* null, i64 0, metadata !104, metadata !209), !dbg !222
  %4 = load %struct.__sFILE** @debug, align 8, !dbg !223, !tbaa !225
  %5 = icmp eq %struct.__sFILE* %4, null, !dbg !223
  br i1 %5, label %8, label %6, !dbg !229

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %fn) #8, !dbg !230
  br label %8, !dbg !230

; <label>:8                                       ; preds = %0, %6
  store i32 1, i32* @inp_count, align 4, !dbg !231, !tbaa !232
  %9 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !234
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %9, i64 0, metadata !36, metadata !209), !dbg !235
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !106, metadata !209), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !209), !dbg !237
  %10 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #8, !dbg !238
  call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !102, metadata !209), !dbg !240
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !106, metadata !209), !dbg !236
  %11 = icmp eq i8* %10, null, !dbg !241
  br i1 %11, label %.thread, label %.lr.ph31, !dbg !243

.lr.ph31:                                         ; preds = %8, %.outer
  %12 = phi i32 [ %78, %.outer ], [ 1, %8 ]
  %inp.0.ph36 = phi %struct.t_inpfile* [ %69, %.outer ], [ null, %8 ]
  %nin.0.ph35 = phi i32 [ %66, %.outer ], [ 0, %8 ]
  br label %13, !dbg !243

; <label>:13                                      ; preds = %.lr.ph31, %.backedge
  %14 = phi i32 [ %12, %.lr.ph31 ], [ %47, %.backedge ]
  %15 = call i8* @strchr(i8* %1, i32 59) #8, !dbg !244
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !103, metadata !209), !dbg !247
  %16 = icmp eq i8* %15, null, !dbg !248
  br i1 %16, label %18, label %17, !dbg !249

; <label>:17                                      ; preds = %13
  store i8 0, i8* %15, align 1, !dbg !250, !tbaa !251
  br label %18, !dbg !252

; <label>:18                                      ; preds = %13, %17
  call void @trim(i8* %1) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !209), !dbg !254
  br label %19, !dbg !255

; <label>:19                                      ; preds = %27, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %18 ]
  %20 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %indvars.iv, !dbg !257
  %21 = load i8* %20, align 1, !dbg !257, !tbaa !251
  switch i8 %21, label %27 [
    i8 0, label %28
    i8 61, label %.preheader4
  ], !dbg !259

.preheader4:                                      ; preds = %19
  %22 = trunc i64 %indvars.iv to i32, !dbg !260
  %23 = icmp sgt i32 %22, 0, !dbg !260
  br i1 %23, label %.lr.ph, label %35, !dbg !265

.lr.ph:                                           ; preds = %.preheader4
  %24 = add i64 %indvars.iv, 4294967295, !dbg !265
  %25 = and i64 %24, 4294967295
  %26 = add nuw nsw i64 %25, 1, !dbg !265
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lbuf20, i8* %buf21, i64 %26, i32 16, i1 false), !dbg !266
  br label %35, !dbg !265

; <label>:27                                      ; preds = %19
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !267
  br label %19, !dbg !267

; <label>:28                                      ; preds = %19
  %29 = trunc i64 %indvars.iv to i32, !dbg !268
  %30 = icmp sgt i32 %29, 0, !dbg !268
  %31 = load %struct.__sFILE** @debug, align 8
  %32 = icmp ne %struct.__sFILE* %31, null, !dbg !271
  %or.cond = and i1 %30, %32, !dbg !274
  br i1 %or.cond, label %33, label %.backedge, !dbg !274

; <label>:33                                      ; preds = %28
  %34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %14, i8* %fn) #8, !dbg !275
  br label %.backedge, !dbg !275

; <label>:35                                      ; preds = %.lr.ph, %.preheader4
  %.lcssa = phi i64 [ %26, %.lr.ph ], [ 0, %.preheader4 ]
  %36 = getelementptr inbounds [4096 x i8]* %lbuf, i64 0, i64 %.lcssa, !dbg !276
  store i8 0, i8* %36, align 1, !dbg !277, !tbaa !251
  call void @trim(i8* %2) #8, !dbg !278
  %37 = load i8* %2, align 16, !dbg !279, !tbaa !251
  %38 = icmp eq i8 %37, 0, !dbg !281
  br i1 %38, label %43, label %.preheader, !dbg !282

.preheader:                                       ; preds = %35
  %i.18 = add nsw i32 %22, 1, !dbg !283
  %39 = sext i32 %i.18 to i64, !dbg !286
  %40 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %39, !dbg !286
  %41 = load i8* %40, align 1, !dbg !286, !tbaa !251
  %42 = icmp eq i8 %41, 0, !dbg !288
  br i1 %42, label %._crit_edge12, label %.lr.ph11, !dbg !289

; <label>:43                                      ; preds = %35
  %44 = load %struct.__sFILE** @debug, align 8, !dbg !290, !tbaa !225
  %45 = icmp eq %struct.__sFILE* %44, null, !dbg !290
  br i1 %45, label %.backedge, label %49, !dbg !293

.backedge:                                        ; preds = %43, %60, %49, %63, %28, %33
  %46 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #8, !dbg !238
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !102, metadata !209), !dbg !240
  %47 = add nuw nsw i32 %14, 1, !dbg !294
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !106, metadata !209), !dbg !236
  %48 = icmp eq i8* %46, null, !dbg !241
  br i1 %48, label %.thread, label %13, !dbg !243

; <label>:49                                      ; preds = %43
  %50 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 %14, i8* %fn) #8, !dbg !295
  br label %.backedge, !dbg !295

.lr.ph11:                                         ; preds = %.preheader, %.lr.ph11
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.lr.ph11 ], [ 0, %.preheader ]
  %51 = phi i8* [ %57, %.lr.ph11 ], [ %3, %.preheader ]
  %52 = phi i8 [ %55, %.lr.ph11 ], [ %41, %.preheader ]
  %i.110 = phi i32 [ %i.1, %.lr.ph11 ], [ %i.18, %.preheader ]
  store i8 %52, i8* %51, align 1, !dbg !296, !tbaa !251
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !289
  %i.1 = add nsw i32 %i.110, 1, !dbg !283
  %53 = sext i32 %i.1 to i64, !dbg !286
  %54 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %53, !dbg !286
  %55 = load i8* %54, align 1, !dbg !286, !tbaa !251
  %56 = icmp eq i8 %55, 0, !dbg !288
  %57 = getelementptr inbounds [4096 x i8]* %rbuf, i64 0, i64 %indvars.iv.next26, !dbg !297
  br i1 %56, label %._crit_edge12, label %.lr.ph11, !dbg !289

._crit_edge12:                                    ; preds = %.lr.ph11, %.preheader
  %.lcssa6 = phi i8* [ %3, %.preheader ], [ %57, %.lr.ph11 ]
  store i8 0, i8* %.lcssa6, align 1, !dbg !298, !tbaa !251
  call void @trim(i8* %3) #8, !dbg !299
  %58 = load i8* %3, align 16, !dbg !300, !tbaa !251
  %59 = icmp eq i8 %58, 0, !dbg !302
  br i1 %59, label %60, label %.outer, !dbg !303

; <label>:60                                      ; preds = %._crit_edge12
  %61 = load %struct.__sFILE** @debug, align 8, !dbg !304, !tbaa !225
  %62 = icmp eq %struct.__sFILE* %61, null, !dbg !304
  br i1 %62, label %.backedge, label %63, !dbg !307

; <label>:63                                      ; preds = %60
  %64 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %61, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 %14, i8* %fn) #8, !dbg !308
  br label %.backedge, !dbg !308

.outer:                                           ; preds = %._crit_edge12
  %65 = bitcast %struct.t_inpfile* %inp.0.ph36 to i8*, !dbg !309
  %66 = add nsw i32 %nin.0.ph35, 1, !dbg !309
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !105, metadata !209), !dbg !237
  %67 = mul i32 %66, 24, !dbg !309
  %68 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), i32 96, i8* %65, i32 %67) #8, !dbg !309
  %69 = bitcast i8* %68 to %struct.t_inpfile*, !dbg !309
  call void @llvm.dbg.value(metadata %struct.t_inpfile* %69, i64 0, metadata !104, metadata !209), !dbg !222
  %70 = sext i32 %nin.0.ph35 to i64, !dbg !311
  %71 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 0, !dbg !312
  store i32 0, i32* %71, align 4, !dbg !313, !tbaa !314
  %72 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 1, !dbg !316
  store i32 0, i32* %72, align 4, !dbg !317, !tbaa !318
  %73 = call i8* @strdup(i8* %2) #8, !dbg !319
  %74 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 2, !dbg !320
  store i8* %73, i8** %74, align 8, !dbg !321, !tbaa !322
  %75 = call i8* @strdup(i8* %3) #8, !dbg !323
  %76 = getelementptr inbounds %struct.t_inpfile* %69, i64 %70, i32 3, !dbg !324
  store i8* %75, i8** %76, align 8, !dbg !325, !tbaa !326
  %77 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %9) #8, !dbg !238
  call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !102, metadata !209), !dbg !240
  %78 = add nuw nsw i32 %14, 1, !dbg !294
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !106, metadata !209), !dbg !236
  %79 = icmp eq i8* %77, null, !dbg !241
  br i1 %79, label %.thread, label %.lr.ph31, !dbg !243

.thread:                                          ; preds = %.backedge, %8, %.outer
  %inp.0.ph.lcssa = phi %struct.t_inpfile* [ null, %8 ], [ %69, %.outer ], [ %inp.0.ph36, %.backedge ]
  %nin.0.ph.lcssa = phi i32 [ 0, %8 ], [ %66, %.outer ], [ %nin.0.ph35, %.backedge ]
  call void @ffclose(%struct.__sFILE* %9) #8, !dbg !327
  %80 = load %struct.__sFILE** @debug, align 8, !dbg !328, !tbaa !225
  %81 = icmp eq %struct.__sFILE* %80, null, !dbg !328
  br i1 %81, label %84, label %82, !dbg !330

; <label>:82                                      ; preds = %.thread
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i32 %nin.0.ph.lcssa) #8, !dbg !331
  br label %84, !dbg !331

; <label>:84                                      ; preds = %.thread, %82
  store i32 %nin.0.ph.lcssa, i32* %ninp, align 4, !dbg !332, !tbaa !232
  call void @llvm.lifetime.end(i64 4096, i8* %3) #3, !dbg !333
  call void @llvm.lifetime.end(i64 4096, i8* %2) #3, !dbg !333
  call void @llvm.lifetime.end(i64 4096, i8* %1) #3, !dbg !333
  ret %struct.t_inpfile* %inp.0.ph.lcssa, !dbg !333
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #5

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: optsize
declare void @trim(i8*) #5

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #5

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @write_inpfile(i8* %fn, i32 %ninp, %struct.t_inpfile* %inp) #2 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !114, metadata !209), !dbg !334
  tail call void @llvm.dbg.value(metadata i32 %ninp, i64 0, metadata !115, metadata !209), !dbg !335
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile* %inp, i64 0, metadata !116, metadata !209), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %ninp, i64 0, metadata !183, metadata !209) #3, !dbg !337
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile* %inp, i64 0, metadata !184, metadata !209) #3, !dbg !339
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !186, metadata !209) #3, !dbg !340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !209) #3, !dbg !341
  %1 = icmp sgt i32 %ninp, 0, !dbg !342
  br i1 %1, label %.lr.ph6.i, label %sort_inp.exit, !dbg !345

.lr.ph6.i:                                        ; preds = %0
  %2 = add i32 %ninp, -1, !dbg !345
  br label %3, !dbg !345

; <label>:3                                       ; preds = %3, %.lr.ph6.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next8.i, %3 ], !dbg !346
  %mm.04.i = phi i32 [ -1, %.lr.ph6.i ], [ %mm.0..i, %3 ], !dbg !346
  %4 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv7.i, i32 0, !dbg !347
  %5 = load i32* %4, align 4, !dbg !347, !tbaa !314
  %6 = icmp sgt i32 %mm.04.i, %5, !dbg !347
  %mm.0..i = select i1 %6, i32 %mm.04.i, i32 %5, !dbg !347
  tail call void @llvm.dbg.value(metadata i32 %mm.0..i, i64 0, metadata !186, metadata !209) #3, !dbg !340
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1, !dbg !345
  %lftr.wideiv4 = trunc i64 %indvars.iv7.i to i32, !dbg !345
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %2, !dbg !345
  br i1 %exitcond5, label %.lr.ph.i, label %3, !dbg !345

.lr.ph.i:                                         ; preds = %3, %12
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %12 ], [ 0, %3 ], !dbg !346
  %mm.12.i = phi i32 [ %mm.2.i, %12 ], [ %mm.0..i, %3 ], !dbg !346
  %7 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv.i, i32 0, !dbg !348
  %8 = load i32* %7, align 4, !dbg !348, !tbaa !314
  %9 = icmp eq i32 %8, 0, !dbg !353
  br i1 %9, label %10, label %12, !dbg !354

; <label>:10                                      ; preds = %.lr.ph.i
  %11 = add nsw i32 %mm.12.i, 1, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !186, metadata !209) #3, !dbg !340
  store i32 %mm.12.i, i32* %7, align 4, !dbg !356, !tbaa !314
  br label %12, !dbg !357

; <label>:12                                      ; preds = %10, %.lr.ph.i
  %mm.2.i = phi i32 [ %11, %10 ], [ %mm.12.i, %.lr.ph.i ], !dbg !346
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !358
  %lftr.wideiv2 = trunc i64 %indvars.iv.i to i32, !dbg !358
  %exitcond3 = icmp eq i32 %lftr.wideiv2, %2, !dbg !358
  br i1 %exitcond3, label %sort_inp.exit, label %.lr.ph.i, !dbg !358

sort_inp.exit:                                    ; preds = %12, %0
  %13 = bitcast %struct.t_inpfile* %inp to i8*, !dbg !359
  %14 = sext i32 %ninp to i64, !dbg !360
  tail call void @qsort(i8* %13, i64 %14, i64 24, i32 (i8*, i8*)* @inp_comp) #8, !dbg !361
  %15 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !362
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %15, i64 0, metadata !117, metadata !209), !dbg !363
  tail call void @nice_header(%struct.__sFILE* %15, i8* %fn) #8, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !209), !dbg !365
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !366

.lr.ph:                                           ; preds = %sort_inp.exit
  %16 = add i32 %ninp, -1, !dbg !366
  br label %17, !dbg !366

; <label>:17                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %18 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 1, !dbg !368
  %19 = load i32* %18, align 4, !dbg !368, !tbaa !318
  %20 = icmp eq i32 %19, 0, !dbg !372
  %21 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 2, !dbg !373
  %22 = load i8** %21, align 8, !dbg !373, !tbaa !322
  br i1 %20, label %28, label %23, !dbg !375

; <label>:23                                      ; preds = %17
  %24 = getelementptr inbounds %struct.t_inpfile* %inp, i64 %indvars.iv, i32 3, !dbg !376
  %25 = load i8** %24, align 8, !dbg !376, !tbaa !326
  %26 = icmp eq i8* %25, null, !dbg !377
  %. = select i1 %26, i8* getelementptr inbounds ([1 x i8]* @.str10, i64 0, i64 0), i8* %25, !dbg !377
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* %22, i8* %.) #8, !dbg !378
  br label %30, !dbg !378

; <label>:28                                      ; preds = %17
  %29 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* %22) #8, !dbg !373
  tail call void @warning(i8* null) #8, !dbg !379
  br label %30

; <label>:30                                      ; preds = %23, %28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !366
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !366
  %exitcond = icmp eq i32 %lftr.wideiv, %16, !dbg !366
  br i1 %exitcond, label %._crit_edge, label %17, !dbg !366

._crit_edge:                                      ; preds = %30, %sort_inp.exit
  tail call void @ffclose(%struct.__sFILE* %15) #8, !dbg !380
  ret void, !dbg !381
}

; Function Attrs: optsize
declare void @nice_header(%struct.__sFILE*, i8*) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #5

; Function Attrs: optsize
declare void @warning(i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eint(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i32 %def) #2 {
  %buf = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !124, metadata !209), !dbg !382
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !125, metadata !209), !dbg !383
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !126, metadata !209), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %def, i64 0, metadata !127, metadata !209), !dbg !385
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !128, metadata !209), !dbg !386
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9, !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !132, metadata !209), !dbg !388
  %2 = icmp eq i32 %1, -1, !dbg !389
  br i1 %2, label %3, label %12, !dbg !391

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !392
  %5 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i32 %def) #8, !dbg !392
  %6 = call i8* @strdup(i8* %4) #8, !dbg !394
  %7 = load i32* %ninp, align 4, !dbg !395, !tbaa !232
  %8 = add nsw i32 %7, -1, !dbg !396
  %9 = sext i32 %8 to i64, !dbg !397
  %10 = load %struct.t_inpfile** %inp, align 8, !dbg !398, !tbaa !225
  %11 = getelementptr inbounds %struct.t_inpfile* %10, i64 %9, i32 3, !dbg !399
  store i8* %6, i8** %11, align 8, !dbg !400, !tbaa !326
  br label %18, !dbg !401

; <label>:12                                      ; preds = %0
  %13 = sext i32 %1 to i64, !dbg !402
  %14 = load %struct.t_inpfile** %inp, align 8, !dbg !403, !tbaa !225
  %15 = getelementptr inbounds %struct.t_inpfile* %14, i64 %13, i32 3, !dbg !404
  %16 = load i8** %15, align 8, !dbg !404, !tbaa !326
  %17 = tail call i32 @atoi(i8* %16) #8, !dbg !405
  br label %18, !dbg !406

; <label>:18                                      ; preds = %12, %3
  %.0 = phi i32 [ %def, %3 ], [ %17, %12 ]
  ret i32 %.0, !dbg !407
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_einp(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name) #2 {
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !199, metadata !209), !dbg !408
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !200, metadata !209), !dbg !409
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !201, metadata !209), !dbg !410
  %1 = icmp eq %struct.t_inpfile** %inp, null, !dbg !411
  br i1 %1, label %46, label %.preheader, !dbg !413

.preheader:                                       ; preds = %0
  %2 = load i32* %ninp, align 4, !dbg !414, !tbaa !232
  %3 = icmp sgt i32 %2, 0, !dbg !417
  br i1 %3, label %.lr.ph, label %15, !dbg !418

.lr.ph:                                           ; preds = %.preheader, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %.preheader ]
  %4 = load %struct.t_inpfile** %inp, align 8, !dbg !419, !tbaa !225
  %5 = getelementptr inbounds %struct.t_inpfile* %4, i64 %indvars.iv, i32 2, !dbg !421
  %6 = load i8** %5, align 8, !dbg !421, !tbaa !322
  %7 = tail call i32 @strcasecmp_min(i8* %name, i8* %6) #8, !dbg !422
  %8 = icmp eq i32 %7, 0, !dbg !423
  br i1 %8, label %._crit_edge, label %9, !dbg !424

; <label>:9                                       ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !418
  %10 = load i32* %ninp, align 4, !dbg !414, !tbaa !232
  %11 = sext i32 %10 to i64, !dbg !417
  %12 = icmp slt i64 %indvars.iv.next, %11, !dbg !417
  br i1 %12, label %.lr.ph, label %._crit_edge2, !dbg !418

._crit_edge:                                      ; preds = %.lr.ph
  %13 = trunc i64 %indvars.iv to i32, !dbg !424
  %.pre = load i32* %ninp, align 4, !dbg !425, !tbaa !232
  br label %15, !dbg !424

._crit_edge2:                                     ; preds = %9
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !418
  br label %15, !dbg !418

; <label>:15                                      ; preds = %._crit_edge2, %._crit_edge, %.preheader
  %16 = phi i32 [ %.pre, %._crit_edge ], [ %10, %._crit_edge2 ], [ %2, %.preheader ]
  %i.0.lcssa = phi i32 [ %13, %._crit_edge ], [ %14, %._crit_edge2 ], [ 0, %.preheader ]
  %17 = icmp eq i32 %i.0.lcssa, %16, !dbg !427
  br i1 %17, label %18, label %._crit_edge5, !dbg !428

._crit_edge5:                                     ; preds = %15
  %.pre6 = load %struct.t_inpfile** %inp, align 8, !dbg !429, !tbaa !225
  %.pre7 = sext i32 %i.0.lcssa to i64, !dbg !430
  br label %30, !dbg !428

; <label>:18                                      ; preds = %15
  %19 = add nsw i32 %16, 1, !dbg !431
  store i32 %19, i32* %ninp, align 4, !dbg !431, !tbaa !232
  %20 = bitcast %struct.t_inpfile** %inp to i8**, !dbg !433
  %21 = load i8** %20, align 8, !dbg !433, !tbaa !225
  %22 = mul i32 %19, 24, !dbg !433
  %23 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), i32 165, i8* %21, i32 %22) #8, !dbg !433
  store i8* %23, i8** %20, align 8, !dbg !433, !tbaa !225
  %24 = tail call i8* @strdup(i8* %name) #8, !dbg !434
  %25 = sext i32 %16 to i64, !dbg !435
  %26 = load %struct.t_inpfile** %inp, align 8, !dbg !436, !tbaa !225
  %27 = getelementptr inbounds %struct.t_inpfile* %26, i64 %25, i32 2, !dbg !437
  store i8* %24, i8** %27, align 8, !dbg !438, !tbaa !322
  %28 = load %struct.t_inpfile** %inp, align 8, !dbg !439, !tbaa !225
  %29 = getelementptr inbounds %struct.t_inpfile* %28, i64 %25, i32 1, !dbg !440
  store i32 1, i32* %29, align 4, !dbg !441, !tbaa !318
  br label %30, !dbg !442

; <label>:30                                      ; preds = %._crit_edge5, %18
  %.pre-phi = phi i64 [ %.pre7, %._crit_edge5 ], [ %25, %18 ], !dbg !430
  %31 = phi %struct.t_inpfile* [ %.pre6, %._crit_edge5 ], [ %28, %18 ]
  %32 = load i32* @inp_count, align 4, !dbg !443, !tbaa !232
  %33 = add nsw i32 %32, 1, !dbg !443
  store i32 %33, i32* @inp_count, align 4, !dbg !443, !tbaa !232
  %34 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 0, !dbg !444
  store i32 %32, i32* %34, align 4, !dbg !445, !tbaa !314
  %35 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 1, !dbg !446
  store i32 1, i32* %35, align 4, !dbg !447, !tbaa !318
  %36 = load %struct.__sFILE** @debug, align 8, !dbg !448, !tbaa !225
  %37 = icmp eq %struct.__sFILE* %36, null, !dbg !448
  br i1 %37, label %42, label %38, !dbg !450

; <label>:38                                      ; preds = %30
  %39 = getelementptr inbounds %struct.t_inpfile* %31, i64 %.pre-phi, i32 2, !dbg !451
  %40 = load i8** %39, align 8, !dbg !451, !tbaa !322
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i32 %32, i8* %40) #8, !dbg !452
  br label %42, !dbg !452

; <label>:42                                      ; preds = %30, %38
  %43 = load i32* %ninp, align 4, !dbg !453, !tbaa !232
  %44 = add nsw i32 %43, -1, !dbg !455
  %45 = icmp eq i32 %i.0.lcssa, %44, !dbg !456
  %.i.0 = select i1 %45, i32 -1, i32 %i.0.lcssa, !dbg !457
  br label %46, !dbg !457

; <label>:46                                      ; preds = %42, %0
  %.0 = phi i32 [ -1, %0 ], [ %.i.0, %42 ]
  ret i32 %.0, !dbg !458
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define float @get_ereal(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, float %def) #2 {
  %buf = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !140, metadata !209), !dbg !459
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !141, metadata !209), !dbg !460
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !142, metadata !209), !dbg !461
  tail call void @llvm.dbg.value(metadata float %def, i64 0, metadata !143, metadata !209), !dbg !462
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !144, metadata !209), !dbg !463
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9, !dbg !464
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !145, metadata !209), !dbg !465
  %2 = icmp eq i32 %1, -1, !dbg !466
  br i1 %2, label %3, label %13, !dbg !468

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !469
  %5 = fpext float %def to double, !dbg !469
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), double %5) #8, !dbg !469
  %7 = call i8* @strdup(i8* %4) #8, !dbg !471
  %8 = load i32* %ninp, align 4, !dbg !472, !tbaa !232
  %9 = add nsw i32 %8, -1, !dbg !473
  %10 = sext i32 %9 to i64, !dbg !474
  %11 = load %struct.t_inpfile** %inp, align 8, !dbg !475, !tbaa !225
  %12 = getelementptr inbounds %struct.t_inpfile* %11, i64 %10, i32 3, !dbg !476
  store i8* %7, i8** %12, align 8, !dbg !477, !tbaa !326
  br label %20, !dbg !478

; <label>:13                                      ; preds = %0
  %14 = sext i32 %1 to i64, !dbg !479
  %15 = load %struct.t_inpfile** %inp, align 8, !dbg !480, !tbaa !225
  %16 = getelementptr inbounds %struct.t_inpfile* %15, i64 %14, i32 3, !dbg !481
  %17 = load i8** %16, align 8, !dbg !481, !tbaa !326
  %18 = tail call double @atof(i8* %17) #8, !dbg !482
  %19 = fptrunc double %18 to float, !dbg !482
  br label %20, !dbg !483

; <label>:20                                      ; preds = %13, %3
  %.0 = phi float [ %def, %3 ], [ %19, %13 ]
  ret float %.0, !dbg !484
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i8* @get_estr(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8* %def) #2 {
  %buf = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !150, metadata !209), !dbg !485
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !151, metadata !209), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !152, metadata !209), !dbg !487
  tail call void @llvm.dbg.value(metadata i8* %def, i64 0, metadata !153, metadata !209), !dbg !488
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !154, metadata !209), !dbg !489
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9, !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !155, metadata !209), !dbg !491
  %2 = icmp eq i32 %1, -1, !dbg !492
  br i1 %2, label %3, label %20, !dbg !494

; <label>:3                                       ; preds = %0
  %4 = icmp eq i8* %def, null, !dbg !495
  br i1 %4, label %14, label %5, !dbg !498

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 0, !dbg !499
  %7 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i8* %def) #8, !dbg !499
  %8 = call i8* @strdup(i8* %6) #8, !dbg !501
  %9 = load i32* %ninp, align 4, !dbg !502, !tbaa !232
  %10 = add nsw i32 %9, -1, !dbg !503
  %11 = sext i32 %10 to i64, !dbg !504
  %12 = load %struct.t_inpfile** %inp, align 8, !dbg !505, !tbaa !225
  %13 = getelementptr inbounds %struct.t_inpfile* %12, i64 %11, i32 3, !dbg !506
  store i8* %8, i8** %13, align 8, !dbg !507, !tbaa !326
  br label %25, !dbg !508

; <label>:14                                      ; preds = %3
  %15 = load i32* %ninp, align 4, !dbg !509, !tbaa !232
  %16 = add nsw i32 %15, -1, !dbg !510
  %17 = sext i32 %16 to i64, !dbg !511
  %18 = load %struct.t_inpfile** %inp, align 8, !dbg !512, !tbaa !225
  %19 = getelementptr inbounds %struct.t_inpfile* %18, i64 %17, i32 3, !dbg !513
  store i8* null, i8** %19, align 8, !dbg !514, !tbaa !326
  br label %25

; <label>:20                                      ; preds = %0
  %21 = sext i32 %1 to i64, !dbg !515
  %22 = load %struct.t_inpfile** %inp, align 8, !dbg !516, !tbaa !225
  %23 = getelementptr inbounds %struct.t_inpfile* %22, i64 %21, i32 3, !dbg !517
  %24 = load i8** %23, align 8, !dbg !517, !tbaa !326
  br label %25, !dbg !518

; <label>:25                                      ; preds = %5, %14, %20
  %.0 = phi i8* [ %24, %20 ], [ null, %14 ], [ %def, %5 ]
  ret i8* %.0, !dbg !519
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eeenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture readonly %defs, i32* nocapture %nerror, i32 %bPrintError) #2 {
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !161, metadata !209), !dbg !520
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !162, metadata !209), !dbg !521
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !163, metadata !209), !dbg !522
  tail call void @llvm.dbg.value(metadata i8** %defs, i64 0, metadata !164, metadata !209), !dbg !523
  tail call void @llvm.dbg.value(metadata i32* %nerror, i64 0, metadata !165, metadata !209), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %bPrintError, i64 0, metadata !166, metadata !209), !dbg !525
  %1 = tail call fastcc i32 @get_einp(i32* %ninp, %struct.t_inpfile** %inp, i8* %name) #9, !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !167, metadata !209), !dbg !527
  %2 = icmp eq i32 %1, -1, !dbg !528
  %3 = load i8** %defs, align 8, !dbg !530, !tbaa !225
  br i1 %2, label %5, label %.preheader, !dbg !532

.preheader:                                       ; preds = %0
  %4 = icmp eq i8* %3, null, !dbg !533
  %.pre13 = sext i32 %1 to i64, !dbg !536
  br i1 %4, label %.thread, label %.lr.ph6, !dbg !539

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @strdup(i8* %3) #8, !dbg !540
  %7 = load i32* %ninp, align 4, !dbg !541, !tbaa !232
  %8 = add nsw i32 %7, -1, !dbg !542
  %9 = sext i32 %8 to i64, !dbg !543
  %10 = load %struct.t_inpfile** %inp, align 8, !dbg !544, !tbaa !225
  %11 = getelementptr inbounds %struct.t_inpfile* %10, i64 %9, i32 3, !dbg !545
  store i8* %6, i8** %11, align 8, !dbg !546, !tbaa !326
  br label %52, !dbg !547

.lr.ph6:                                          ; preds = %.preheader, %19
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %19 ], [ 0, %.preheader ]
  %12 = phi i8* [ %21, %19 ], [ %3, %.preheader ]
  %13 = phi i8** [ %20, %19 ], [ %defs, %.preheader ]
  %14 = load %struct.t_inpfile** %inp, align 8, !dbg !548, !tbaa !225
  %15 = getelementptr inbounds %struct.t_inpfile* %14, i64 %.pre13, i32 3, !dbg !550
  %16 = load i8** %15, align 8, !dbg !550, !tbaa !326
  %17 = tail call i32 @strcasecmp_min(i8* %12, i8* %16) #8, !dbg !551
  %18 = icmp eq i32 %17, 0, !dbg !552
  br i1 %18, label %23, label %19, !dbg !553

; <label>:19                                      ; preds = %.lr.ph6
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !539
  %20 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next12, !dbg !554
  %21 = load i8** %20, align 8, !dbg !554, !tbaa !225
  %22 = icmp eq i8* %21, null, !dbg !533
  br i1 %22, label %.thread, label %.lr.ph6, !dbg !539

; <label>:23                                      ; preds = %.lr.ph6
  %24 = trunc i64 %indvars.iv11 to i32, !dbg !555
  %.pr = load i8** %13, align 8, !dbg !555, !tbaa !225
  %25 = icmp eq i8* %.pr, null, !dbg !556
  br i1 %25, label %.thread, label %52, !dbg !557

.thread:                                          ; preds = %19, %.preheader, %23
  %26 = load %struct.__sFILE** @__stderrp, align 8, !dbg !558, !tbaa !225
  %27 = icmp ne i32 %bPrintError, 0, !dbg !559
  %28 = select i1 %27, i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), !dbg !559
  %29 = load %struct.t_inpfile** %inp, align 8, !dbg !560, !tbaa !225
  %30 = getelementptr inbounds %struct.t_inpfile* %29, i64 %.pre13, i32 3, !dbg !561
  %31 = load i8** %30, align 8, !dbg !561, !tbaa !326
  %32 = load i8** %defs, align 8, !dbg !562, !tbaa !225
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i8* %28, i8* %31, i8* %name, i8* %32) #8, !dbg !563
  %34 = load %struct.__sFILE** @__stderrp, align 8, !dbg !564, !tbaa !225
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %34), !dbg !565
  %36 = load i32* %nerror, align 4, !dbg !566, !tbaa !232
  %37 = add nsw i32 %36, 1, !dbg !566
  store i32 %37, i32* %nerror, align 4, !dbg !566, !tbaa !232
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !169, metadata !209), !dbg !567
  %38 = load i8** %defs, align 8, !dbg !568, !tbaa !225
  %39 = icmp eq i8* %38, null, !dbg !569
  %40 = load %struct.__sFILE** @__stderrp, align 8, !dbg !570, !tbaa !225
  br i1 %39, label %._crit_edge, label %.lr.ph, !dbg !569

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.thread ]
  %41 = phi %struct.__sFILE* [ %47, %.lr.ph ], [ %40, %.thread ]
  %42 = phi i8* [ %45, %.lr.ph ], [ %38, %.thread ]
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* %42) #8, !dbg !572
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !569
  %44 = getelementptr inbounds i8** %defs, i64 %indvars.iv.next, !dbg !568
  %45 = load i8** %44, align 8, !dbg !568, !tbaa !225
  %46 = icmp eq i8* %45, null, !dbg !569
  %47 = load %struct.__sFILE** @__stderrp, align 8, !dbg !570, !tbaa !225
  br i1 %46, label %._crit_edge, label %.lr.ph, !dbg !569

._crit_edge:                                      ; preds = %.lr.ph, %.thread
  %.lcssa = phi %struct.__sFILE* [ %40, %.thread ], [ %47, %.lr.ph ]
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa), !dbg !573
  %48 = load i8** %defs, align 8, !dbg !574, !tbaa !225
  %49 = tail call i8* @strdup(i8* %48) #8, !dbg !575
  %50 = load %struct.t_inpfile** %inp, align 8, !dbg !576, !tbaa !225
  %51 = getelementptr inbounds %struct.t_inpfile* %50, i64 %.pre13, i32 3, !dbg !577
  store i8* %49, i8** %51, align 8, !dbg !578, !tbaa !326
  br label %52, !dbg !579

; <label>:52                                      ; preds = %23, %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %._crit_edge ], [ %24, %23 ]
  ret i32 %.0, !dbg !580
}

; Function Attrs: optsize
declare i32 @strcasecmp_min(i8*, i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_eenum(i32* nocapture %ninp, %struct.t_inpfile** %inp, i8* %name, i8** nocapture readonly %defs) #2 {
  %dum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %ninp, i64 0, metadata !174, metadata !209), !dbg !581
  tail call void @llvm.dbg.value(metadata %struct.t_inpfile** %inp, i64 0, metadata !175, metadata !209), !dbg !582
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !176, metadata !209), !dbg !583
  tail call void @llvm.dbg.value(metadata i8** %defs, i64 0, metadata !177, metadata !209), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !178, metadata !209), !dbg !585
  store i32 0, i32* %dum, align 4, !dbg !585, !tbaa !232
  tail call void @llvm.dbg.value(metadata i32* %dum, i64 0, metadata !178, metadata !209), !dbg !585
  %1 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %name, i8** %defs, i32* %dum, i32 0) #9, !dbg !586
  ret i32 %1, !dbg !587
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @inp_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #7 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !193, metadata !209), !dbg !588
  tail call void @llvm.dbg.value(metadata i8* %b, i64 0, metadata !194, metadata !209), !dbg !589
  %1 = bitcast i8* %a to i32*, !dbg !590
  %2 = load i32* %1, align 4, !dbg !590, !tbaa !314
  %3 = bitcast i8* %b to i32*, !dbg !591
  %4 = load i32* %3, align 4, !dbg !591, !tbaa !314
  %5 = sub nsw i32 %2, %4, !dbg !592
  ret i32 %5, !dbg !593
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!205, !206, !207}
!llvm.ident = !{!208}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !22, globals: !203, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 30, baseType: !7)
!6 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !8, line: 92, baseType: !9)
!8 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inpfile", file: !12, line: 48, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/readinp.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 43, size: 192, align: 64, elements: !14)
!14 = !{!15, !17, !18, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !12, line: 44, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "bSet", scope: !13, file: !12, line: 45, baseType: !16, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !12, line: 46, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !13, file: !12, line: 47, baseType: !19, size: 64, align: 64, offset: 128)
!22 = !{!23, !29, !110, !119, !133, !146, !156, !170, !179, !187, !195}
!23 = !DISubprogram(name: "__sigbits", scope: !24, file: !24, line: 114, type: !25, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !27)
!24 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !16}
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !23, file: !24, line: 114, type: !16)
!29 = !DISubprogram(name: "read_inpfile", scope: !1, file: !1, line: 45, type: !30, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_inpfile* (i8*, i32*)* @read_inpfile, variables: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!10, !19, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!33 = !{!34, !35, !36, !96, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !29, file: !1, line: 45, type: !19)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 2, scope: !29, file: !1, line: 45, type: !32)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !29, file: !1, line: 47, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 153, baseType: !40)
!39 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 122, size: 1216, align: 64, elements: !41)
!41 = !{!42, !45, !46, !47, !49, !50, !55, !56, !57, !61, !65, !74, !80, !81, !84, !85, !89, !93, !94, !95}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !40, file: !39, line: 123, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !40, file: !39, line: 124, baseType: !16, size: 32, align: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !40, file: !39, line: 125, baseType: !16, size: 32, align: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !39, line: 126, baseType: !48, size: 16, align: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !40, file: !39, line: 127, baseType: !48, size: 16, align: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !40, file: !39, line: 128, baseType: !51, size: 128, align: 64, offset: 192)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 88, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !39, line: 89, baseType: !43, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !39, line: 90, baseType: !16, size: 32, align: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !40, file: !39, line: 129, baseType: !16, size: 32, align: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !40, file: !39, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !40, file: !39, line: 133, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!16, !4}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !40, file: !39, line: 134, baseType: !62, size: 64, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!16, !4, !19, !16}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !40, file: !39, line: 135, baseType: !66, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !4, !69, !16}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !39, line: 77, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !71, line: 71, baseType: !72)
!71 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 46, baseType: !73)
!73 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !40, file: !39, line: 136, baseType: !75, size: 64, align: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!16, !4, !78, !16}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !40, file: !39, line: 139, baseType: !51, size: 128, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !40, file: !39, line: 140, baseType: !82, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !39, line: 94, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !40, file: !39, line: 141, baseType: !16, size: 32, align: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !40, file: !39, line: 144, baseType: !86, size: 24, align: 8, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 24, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !40, file: !39, line: 145, baseType: !90, size: 8, align: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !40, file: !39, line: 148, baseType: !51, size: 128, align: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !40, file: !39, line: 151, baseType: !16, size: 32, align: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !39, line: 152, baseType: !69, size: 64, align: 64, offset: 1152)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !29, file: !1, line: 48, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32768, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4096)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lbuf", scope: !29, file: !1, line: 48, type: !97)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rbuf", scope: !29, file: !1, line: 48, type: !97)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !29, file: !1, line: 49, type: !19)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cptr", scope: !29, file: !1, line: 49, type: !19)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inp", scope: !29, file: !1, line: 50, type: !10)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nin", scope: !29, file: !1, line: 51, type: !16)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lc", scope: !29, file: !1, line: 51, type: !16)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !1, line: 51, type: !16)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !29, file: !1, line: 51, type: !16)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !29, file: !1, line: 51, type: !16)
!110 = !DISubprogram(name: "write_inpfile", scope: !1, file: !1, line: 134, type: !111, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, %struct.t_inpfile*)* @write_inpfile, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !19, !16, !10}
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !110, file: !1, line: 134, type: !19)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 2, scope: !110, file: !1, line: 134, type: !16)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 3, scope: !110, file: !1, line: 134, type: !10)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !110, file: !1, line: 136, type: !37)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !110, file: !1, line: 137, type: !16)
!119 = !DISubprogram(name: "get_eint", scope: !1, file: !1, line: 180, type: !120, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.t_inpfile**, i8*, i32)* @get_eint, variables: !123)
!120 = !DISubroutineType(types: !121)
!121 = !{!16, !32, !122, !19, !16}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!123 = !{!124, !125, !126, !127, !128, !132}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !119, file: !1, line: 180, type: !32)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !119, file: !1, line: 180, type: !122)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !119, file: !1, line: 180, type: !19)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "def", arg: 4, scope: !119, file: !1, line: 180, type: !16)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !119, file: !1, line: 182, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, align: 8, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 32)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !119, file: !1, line: 183, type: !16)
!133 = !DISubprogram(name: "get_ereal", scope: !1, file: !1, line: 197, type: !134, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, function: float (i32*, %struct.t_inpfile**, i8*, float)* @get_ereal, variables: !139)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !32, !122, !19, !136}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !137, line: 87, baseType: !138)
!137 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!138 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !133, file: !1, line: 197, type: !32)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !133, file: !1, line: 197, type: !122)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !133, file: !1, line: 197, type: !19)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "def", arg: 4, scope: !133, file: !1, line: 197, type: !136)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !133, file: !1, line: 199, type: !129)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !133, file: !1, line: 200, type: !16)
!146 = !DISubprogram(name: "get_estr", scope: !1, file: !1, line: 214, type: !147, isLocal: false, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32*, %struct.t_inpfile**, i8*, i8*)* @get_estr, variables: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{!19, !32, !122, !19, !19}
!149 = !{!150, !151, !152, !153, !154, !155}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !146, file: !1, line: 214, type: !32)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !146, file: !1, line: 214, type: !122)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !146, file: !1, line: 214, type: !19)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "def", arg: 4, scope: !146, file: !1, line: 214, type: !19)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !146, file: !1, line: 216, type: !129)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !146, file: !1, line: 217, type: !16)
!156 = !DISubprogram(name: "get_eeenum", scope: !1, file: !1, line: 235, type: !157, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.t_inpfile**, i8*, i8**, i32*, i32)* @get_eeenum, variables: !160)
!157 = !DISubroutineType(types: !158)
!158 = !{!16, !32, !122, !19, !159, !32, !16}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !156, file: !1, line: 235, type: !32)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !156, file: !1, line: 235, type: !122)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !156, file: !1, line: 235, type: !19)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defs", arg: 4, scope: !156, file: !1, line: 235, type: !159)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nerror", arg: 5, scope: !156, file: !1, line: 236, type: !32)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bPrintError", arg: 6, scope: !156, file: !1, line: 236, type: !16)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !156, file: !1, line: 238, type: !16)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !156, file: !1, line: 238, type: !16)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !156, file: !1, line: 238, type: !16)
!170 = !DISubprogram(name: "get_eenum", scope: !1, file: !1, line: 271, type: !171, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.t_inpfile**, i8*, i8**)* @get_eenum, variables: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!16, !32, !122, !19, !159}
!173 = !{!174, !175, !176, !177, !178}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !170, file: !1, line: 271, type: !32)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !170, file: !1, line: 271, type: !122)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !170, file: !1, line: 271, type: !19)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "defs", arg: 4, scope: !170, file: !1, line: 271, type: !159)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dum", scope: !170, file: !1, line: 273, type: !16)
!179 = !DISubprogram(name: "sort_inp", scope: !1, file: !1, line: 120, type: !180, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !16, !10}
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !179, file: !1, line: 120, type: !16)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !179, file: !1, line: 120, type: !10)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !179, file: !1, line: 122, type: !16)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mm", scope: !179, file: !1, line: 122, type: !16)
!187 = !DISubprogram(name: "inp_comp", scope: !1, file: !1, line: 115, type: !188, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @inp_comp, variables: !192)
!188 = !DISubroutineType(types: !189)
!189 = !{!16, !190, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !{!193, !194}
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !187, file: !1, line: 115, type: !190)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !187, file: !1, line: 115, type: !190)
!195 = !DISubprogram(name: "get_einp", scope: !1, file: !1, line: 154, type: !196, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, %struct.t_inpfile**, i8*)* @get_einp, variables: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!16, !32, !122, !19}
!198 = !{!199, !200, !201, !202}
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ninp", arg: 1, scope: !195, file: !1, line: 154, type: !32)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inp", arg: 2, scope: !195, file: !1, line: 154, type: !122)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 3, scope: !195, file: !1, line: 154, type: !19)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !195, file: !1, line: 156, type: !16)
!203 = !{!204}
!204 = !DIGlobalVariable(name: "inp_count", scope: !0, file: !1, line: 43, type: !16, isLocal: true, isDefinition: true, variable: i32* @inp_count)
!205 = !{i32 2, !"Dwarf Version", i32 2}
!206 = !{i32 2, !"Debug Info Version", i32 700000003}
!207 = !{i32 1, !"PIC Level", i32 2}
!208 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!209 = !DIExpression()
!210 = !DILocation(line: 114, column: 15, scope: !23)
!211 = !DILocation(line: 116, column: 20, scope: !23)
!212 = !DILocation(line: 116, column: 12, scope: !23)
!213 = !DILocation(line: 116, column: 57, scope: !23)
!214 = !DILocation(line: 116, column: 45, scope: !23)
!215 = !DILocation(line: 116, column: 5, scope: !23)
!216 = !DILocation(line: 45, column: 31, scope: !29)
!217 = !DILocation(line: 45, column: 39, scope: !29)
!218 = !DILocation(line: 48, column: 3, scope: !29)
!219 = !DILocation(line: 48, column: 13, scope: !29)
!220 = !DILocation(line: 48, column: 25, scope: !29)
!221 = !DILocation(line: 48, column: 38, scope: !29)
!222 = !DILocation(line: 50, column: 14, scope: !29)
!223 = !DILocation(line: 53, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !29, file: !1, line: 53, column: 7)
!225 = !{!226, !226, i64 0}
!226 = !{!"any pointer", !227, i64 0}
!227 = !{!"omnipotent char", !228, i64 0}
!228 = !{!"Simple C/C++ TBAA"}
!229 = !DILocation(line: 53, column: 7, scope: !29)
!230 = !DILocation(line: 54, column: 5, scope: !224)
!231 = !DILocation(line: 55, column: 13, scope: !29)
!232 = !{!233, !233, i64 0}
!233 = !{!"int", !227, i64 0}
!234 = !DILocation(line: 56, column: 15, scope: !29)
!235 = !DILocation(line: 47, column: 14, scope: !29)
!236 = !DILocation(line: 51, column: 17, scope: !29)
!237 = !DILocation(line: 51, column: 13, scope: !29)
!238 = !DILocation(line: 59, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !29, file: !1, line: 58, column: 6)
!240 = !DILocation(line: 49, column: 14, scope: !29)
!241 = !DILocation(line: 61, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 61, column: 9)
!243 = !DILocation(line: 61, column: 9, scope: !239)
!244 = !DILocation(line: 63, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 63, column: 11)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 61, column: 14)
!247 = !DILocation(line: 49, column: 19, scope: !29)
!248 = !DILocation(line: 63, column: 42, scope: !245)
!249 = !DILocation(line: 63, column: 11, scope: !246)
!250 = !DILocation(line: 64, column: 7, scope: !245)
!251 = !{!227, !227, i64 0}
!252 = !DILocation(line: 64, column: 2, scope: !245)
!253 = !DILocation(line: 66, column: 7, scope: !246)
!254 = !DILocation(line: 51, column: 22, scope: !29)
!255 = !DILocation(line: 68, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !246, file: !1, line: 68, column: 7)
!257 = !DILocation(line: 68, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !256, file: !1, line: 68, column: 7)
!259 = !DILocation(line: 68, column: 32, scope: !258)
!260 = !DILocation(line: 77, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 77, column: 2)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 77, column: 2)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 76, column: 12)
!264 = distinct !DILexicalBlock(scope: !246, file: !1, line: 70, column: 11)
!265 = !DILocation(line: 77, column: 2, scope: !262)
!266 = !DILocation(line: 78, column: 11, scope: !261)
!267 = !DILocation(line: 68, column: 7, scope: !258)
!268 = !DILocation(line: 71, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 71, column: 6)
!270 = distinct !DILexicalBlock(scope: !264, file: !1, line: 70, column: 27)
!271 = !DILocation(line: 72, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 72, column: 8)
!273 = distinct !DILexicalBlock(scope: !269, file: !1, line: 71, column: 13)
!274 = !DILocation(line: 71, column: 6, scope: !270)
!275 = !DILocation(line: 73, column: 6, scope: !272)
!276 = !DILocation(line: 79, column: 2, scope: !263)
!277 = !DILocation(line: 79, column: 9, scope: !263)
!278 = !DILocation(line: 80, column: 2, scope: !263)
!279 = !DILocation(line: 81, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !263, file: !1, line: 81, column: 6)
!281 = !DILocation(line: 81, column: 14, scope: !280)
!282 = !DILocation(line: 81, column: 6, scope: !263)
!283 = !DILocation(line: 86, column: 11, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 86, column: 4)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 85, column: 7)
!286 = !DILocation(line: 86, column: 20, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 86, column: 4)
!288 = !DILocation(line: 86, column: 27, scope: !287)
!289 = !DILocation(line: 86, column: 4, scope: !284)
!290 = !DILocation(line: 82, column: 8, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 82, column: 8)
!292 = distinct !DILexicalBlock(scope: !280, file: !1, line: 81, column: 23)
!293 = !DILocation(line: 82, column: 8, scope: !292)
!294 = !DILocation(line: 60, column: 7, scope: !239)
!295 = !DILocation(line: 83, column: 6, scope: !291)
!296 = !DILocation(line: 87, column: 13, scope: !287)
!297 = !DILocation(line: 88, column: 4, scope: !285)
!298 = !DILocation(line: 88, column: 11, scope: !285)
!299 = !DILocation(line: 89, column: 4, scope: !285)
!300 = !DILocation(line: 90, column: 8, scope: !301)
!301 = distinct !DILexicalBlock(scope: !285, file: !1, line: 90, column: 8)
!302 = !DILocation(line: 90, column: 16, scope: !301)
!303 = !DILocation(line: 90, column: 8, scope: !285)
!304 = !DILocation(line: 91, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 91, column: 10)
!306 = distinct !DILexicalBlock(scope: !301, file: !1, line: 90, column: 25)
!307 = !DILocation(line: 91, column: 10, scope: !306)
!308 = !DILocation(line: 92, column: 8, scope: !305)
!309 = !DILocation(line: 96, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !301, file: !1, line: 94, column: 9)
!311 = !DILocation(line: 97, column: 6, scope: !310)
!312 = !DILocation(line: 97, column: 17, scope: !310)
!313 = !DILocation(line: 97, column: 23, scope: !310)
!314 = !{!315, !233, i64 0}
!315 = !{!"", !233, i64 0, !233, i64 4, !226, i64 8, !226, i64 16}
!316 = !DILocation(line: 98, column: 17, scope: !310)
!317 = !DILocation(line: 98, column: 23, scope: !310)
!318 = !{!315, !233, i64 4}
!319 = !DILocation(line: 99, column: 25, scope: !310)
!320 = !DILocation(line: 99, column: 17, scope: !310)
!321 = !DILocation(line: 99, column: 23, scope: !310)
!322 = !{!315, !226, i64 8}
!323 = !DILocation(line: 100, column: 25, scope: !310)
!324 = !DILocation(line: 100, column: 17, scope: !310)
!325 = !DILocation(line: 100, column: 23, scope: !310)
!326 = !{!315, !226, i64 16}
!327 = !DILocation(line: 106, column: 3, scope: !29)
!328 = !DILocation(line: 108, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !29, file: !1, line: 108, column: 7)
!330 = !DILocation(line: 108, column: 7, scope: !29)
!331 = !DILocation(line: 109, column: 5, scope: !329)
!332 = !DILocation(line: 111, column: 8, scope: !29)
!333 = !DILocation(line: 113, column: 1, scope: !29)
!334 = !DILocation(line: 134, column: 26, scope: !110)
!335 = !DILocation(line: 134, column: 33, scope: !110)
!336 = !DILocation(line: 134, column: 48, scope: !110)
!337 = !DILocation(line: 120, column: 26, scope: !179, inlinedAt: !338)
!338 = distinct !DILocation(line: 139, column: 3, scope: !110)
!339 = !DILocation(line: 120, column: 41, scope: !179, inlinedAt: !338)
!340 = !DILocation(line: 122, column: 9, scope: !179, inlinedAt: !338)
!341 = !DILocation(line: 122, column: 7, scope: !179, inlinedAt: !338)
!342 = !DILocation(line: 125, column: 14, scope: !343, inlinedAt: !338)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 125, column: 3)
!344 = distinct !DILexicalBlock(scope: !179, file: !1, line: 125, column: 3)
!345 = !DILocation(line: 125, column: 3, scope: !344, inlinedAt: !338)
!346 = !DILocation(line: 139, column: 3, scope: !110)
!347 = !DILocation(line: 126, column: 8, scope: !343, inlinedAt: !338)
!348 = !DILocation(line: 128, column: 16, scope: !349, inlinedAt: !338)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 128, column: 9)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 127, column: 27)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 127, column: 3)
!352 = distinct !DILexicalBlock(scope: !179, file: !1, line: 127, column: 3)
!353 = !DILocation(line: 128, column: 22, scope: !349, inlinedAt: !338)
!354 = !DILocation(line: 128, column: 9, scope: !350, inlinedAt: !338)
!355 = !DILocation(line: 129, column: 24, scope: !349, inlinedAt: !338)
!356 = !DILocation(line: 129, column: 20, scope: !349, inlinedAt: !338)
!357 = !DILocation(line: 129, column: 7, scope: !349, inlinedAt: !338)
!358 = !DILocation(line: 127, column: 3, scope: !352, inlinedAt: !338)
!359 = !DILocation(line: 131, column: 9, scope: !179, inlinedAt: !338)
!360 = !DILocation(line: 131, column: 13, scope: !179, inlinedAt: !338)
!361 = !DILocation(line: 131, column: 3, scope: !179, inlinedAt: !338)
!362 = !DILocation(line: 140, column: 7, scope: !110)
!363 = !DILocation(line: 136, column: 9, scope: !110)
!364 = !DILocation(line: 141, column: 3, scope: !110)
!365 = !DILocation(line: 137, column: 8, scope: !110)
!366 = !DILocation(line: 142, column: 3, scope: !367)
!367 = distinct !DILexicalBlock(scope: !110, file: !1, line: 142, column: 3)
!368 = !DILocation(line: 143, column: 16, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 143, column: 9)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 142, column: 27)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 142, column: 3)
!372 = !DILocation(line: 143, column: 9, scope: !369)
!373 = !DILocation(line: 146, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !369, file: !1, line: 145, column: 10)
!375 = !DILocation(line: 143, column: 9, scope: !370)
!376 = !DILocation(line: 144, column: 53, scope: !369)
!377 = !DILocation(line: 144, column: 46, scope: !369)
!378 = !DILocation(line: 144, column: 7, scope: !369)
!379 = !DILocation(line: 148, column: 7, scope: !374)
!380 = !DILocation(line: 151, column: 3, scope: !110)
!381 = !DILocation(line: 152, column: 1, scope: !110)
!382 = !DILocation(line: 180, column: 19, scope: !119)
!383 = !DILocation(line: 180, column: 36, scope: !119)
!384 = !DILocation(line: 180, column: 46, scope: !119)
!385 = !DILocation(line: 180, column: 55, scope: !119)
!386 = !DILocation(line: 182, column: 8, scope: !119)
!387 = !DILocation(line: 185, column: 6, scope: !119)
!388 = !DILocation(line: 183, column: 8, scope: !119)
!389 = !DILocation(line: 187, column: 10, scope: !390)
!390 = distinct !DILexicalBlock(scope: !119, file: !1, line: 187, column: 7)
!391 = !DILocation(line: 187, column: 7, scope: !119)
!392 = !DILocation(line: 188, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !390, file: !1, line: 187, column: 17)
!394 = !DILocation(line: 189, column: 29, scope: !393)
!395 = !DILocation(line: 189, column: 13, scope: !393)
!396 = !DILocation(line: 189, column: 19, scope: !393)
!397 = !DILocation(line: 189, column: 5, scope: !393)
!398 = !DILocation(line: 189, column: 6, scope: !393)
!399 = !DILocation(line: 189, column: 23, scope: !393)
!400 = !DILocation(line: 189, column: 28, scope: !393)
!401 = !DILocation(line: 191, column: 5, scope: !393)
!402 = !DILocation(line: 194, column: 17, scope: !390)
!403 = !DILocation(line: 194, column: 18, scope: !390)
!404 = !DILocation(line: 194, column: 28, scope: !390)
!405 = !DILocation(line: 194, column: 12, scope: !390)
!406 = !DILocation(line: 194, column: 5, scope: !390)
!407 = !DILocation(line: 195, column: 1, scope: !119)
!408 = !DILocation(line: 154, column: 26, scope: !195)
!409 = !DILocation(line: 154, column: 43, scope: !195)
!410 = !DILocation(line: 154, column: 53, scope: !195)
!411 = !DILocation(line: 158, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !195, file: !1, line: 158, column: 7)
!413 = !DILocation(line: 158, column: 7, scope: !195)
!414 = !DILocation(line: 160, column: 16, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 160, column: 3)
!416 = distinct !DILexicalBlock(scope: !195, file: !1, line: 160, column: 3)
!417 = !DILocation(line: 160, column: 14, scope: !415)
!418 = !DILocation(line: 160, column: 3, scope: !416)
!419 = !DILocation(line: 161, column: 30, scope: !420)
!420 = distinct !DILexicalBlock(scope: !415, file: !1, line: 161, column: 9)
!421 = !DILocation(line: 161, column: 39, scope: !420)
!422 = !DILocation(line: 161, column: 9, scope: !420)
!423 = !DILocation(line: 161, column: 45, scope: !420)
!424 = !DILocation(line: 161, column: 9, scope: !415)
!425 = !DILocation(line: 163, column: 13, scope: !426)
!426 = distinct !DILexicalBlock(scope: !195, file: !1, line: 163, column: 7)
!427 = !DILocation(line: 163, column: 9, scope: !426)
!428 = !DILocation(line: 163, column: 7, scope: !195)
!429 = !DILocation(line: 169, column: 4, scope: !195)
!430 = !DILocation(line: 169, column: 3, scope: !195)
!431 = !DILocation(line: 164, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !1, line: 163, column: 21)
!433 = !DILocation(line: 165, column: 5, scope: !432)
!434 = !DILocation(line: 166, column: 20, scope: !432)
!435 = !DILocation(line: 166, column: 5, scope: !432)
!436 = !DILocation(line: 166, column: 6, scope: !432)
!437 = !DILocation(line: 166, column: 15, scope: !432)
!438 = !DILocation(line: 166, column: 19, scope: !432)
!439 = !DILocation(line: 167, column: 6, scope: !432)
!440 = !DILocation(line: 167, column: 15, scope: !432)
!441 = !DILocation(line: 167, column: 19, scope: !432)
!442 = !DILocation(line: 168, column: 3, scope: !432)
!443 = !DILocation(line: 169, column: 30, scope: !195)
!444 = !DILocation(line: 169, column: 13, scope: !195)
!445 = !DILocation(line: 169, column: 19, scope: !195)
!446 = !DILocation(line: 170, column: 13, scope: !195)
!447 = !DILocation(line: 170, column: 19, scope: !195)
!448 = !DILocation(line: 171, column: 7, scope: !449)
!449 = distinct !DILexicalBlock(scope: !195, file: !1, line: 171, column: 7)
!450 = !DILocation(line: 171, column: 7, scope: !195)
!451 = !DILocation(line: 172, column: 61, scope: !449)
!452 = !DILocation(line: 172, column: 5, scope: !449)
!453 = !DILocation(line: 174, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !195, file: !1, line: 174, column: 7)
!455 = !DILocation(line: 174, column: 19, scope: !454)
!456 = !DILocation(line: 174, column: 9, scope: !454)
!457 = !DILocation(line: 175, column: 5, scope: !454)
!458 = !DILocation(line: 178, column: 1, scope: !195)
!459 = !DILocation(line: 197, column: 21, scope: !133)
!460 = !DILocation(line: 197, column: 38, scope: !133)
!461 = !DILocation(line: 197, column: 48, scope: !133)
!462 = !DILocation(line: 197, column: 58, scope: !133)
!463 = !DILocation(line: 199, column: 8, scope: !133)
!464 = !DILocation(line: 202, column: 6, scope: !133)
!465 = !DILocation(line: 200, column: 8, scope: !133)
!466 = !DILocation(line: 204, column: 10, scope: !467)
!467 = distinct !DILexicalBlock(scope: !133, file: !1, line: 204, column: 7)
!468 = !DILocation(line: 204, column: 7, scope: !133)
!469 = !DILocation(line: 205, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !1, line: 204, column: 17)
!471 = !DILocation(line: 206, column: 29, scope: !470)
!472 = !DILocation(line: 206, column: 13, scope: !470)
!473 = !DILocation(line: 206, column: 19, scope: !470)
!474 = !DILocation(line: 206, column: 5, scope: !470)
!475 = !DILocation(line: 206, column: 6, scope: !470)
!476 = !DILocation(line: 206, column: 23, scope: !470)
!477 = !DILocation(line: 206, column: 28, scope: !470)
!478 = !DILocation(line: 208, column: 5, scope: !470)
!479 = !DILocation(line: 211, column: 17, scope: !467)
!480 = !DILocation(line: 211, column: 18, scope: !467)
!481 = !DILocation(line: 211, column: 28, scope: !467)
!482 = !DILocation(line: 211, column: 12, scope: !467)
!483 = !DILocation(line: 211, column: 5, scope: !467)
!484 = !DILocation(line: 212, column: 1, scope: !133)
!485 = !DILocation(line: 214, column: 21, scope: !146)
!486 = !DILocation(line: 214, column: 38, scope: !146)
!487 = !DILocation(line: 214, column: 48, scope: !146)
!488 = !DILocation(line: 214, column: 59, scope: !146)
!489 = !DILocation(line: 216, column: 8, scope: !146)
!490 = !DILocation(line: 219, column: 6, scope: !146)
!491 = !DILocation(line: 217, column: 8, scope: !146)
!492 = !DILocation(line: 221, column: 10, scope: !493)
!493 = distinct !DILexicalBlock(scope: !146, file: !1, line: 221, column: 7)
!494 = !DILocation(line: 221, column: 7, scope: !146)
!495 = !DILocation(line: 222, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 222, column: 9)
!497 = distinct !DILexicalBlock(scope: !493, file: !1, line: 221, column: 17)
!498 = !DILocation(line: 222, column: 9, scope: !497)
!499 = !DILocation(line: 223, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !1, line: 222, column: 14)
!501 = !DILocation(line: 224, column: 31, scope: !500)
!502 = !DILocation(line: 224, column: 15, scope: !500)
!503 = !DILocation(line: 224, column: 21, scope: !500)
!504 = !DILocation(line: 224, column: 7, scope: !500)
!505 = !DILocation(line: 224, column: 8, scope: !500)
!506 = !DILocation(line: 224, column: 25, scope: !500)
!507 = !DILocation(line: 224, column: 30, scope: !500)
!508 = !DILocation(line: 225, column: 5, scope: !500)
!509 = !DILocation(line: 227, column: 15, scope: !496)
!510 = !DILocation(line: 227, column: 21, scope: !496)
!511 = !DILocation(line: 227, column: 7, scope: !496)
!512 = !DILocation(line: 227, column: 8, scope: !496)
!513 = !DILocation(line: 227, column: 25, scope: !496)
!514 = !DILocation(line: 227, column: 30, scope: !496)
!515 = !DILocation(line: 232, column: 12, scope: !493)
!516 = !DILocation(line: 232, column: 13, scope: !493)
!517 = !DILocation(line: 232, column: 23, scope: !493)
!518 = !DILocation(line: 232, column: 5, scope: !493)
!519 = !DILocation(line: 233, column: 1, scope: !146)
!520 = !DILocation(line: 235, column: 21, scope: !156)
!521 = !DILocation(line: 235, column: 38, scope: !156)
!522 = !DILocation(line: 235, column: 48, scope: !156)
!523 = !DILocation(line: 235, column: 60, scope: !156)
!524 = !DILocation(line: 236, column: 14, scope: !156)
!525 = !DILocation(line: 236, column: 26, scope: !156)
!526 = !DILocation(line: 240, column: 6, scope: !156)
!527 = !DILocation(line: 238, column: 8, scope: !156)
!528 = !DILocation(line: 242, column: 10, scope: !529)
!529 = distinct !DILexicalBlock(scope: !156, file: !1, line: 242, column: 7)
!530 = !DILocation(line: 243, column: 36, scope: !531)
!531 = distinct !DILexicalBlock(scope: !529, file: !1, line: 242, column: 17)
!532 = !DILocation(line: 242, column: 7, scope: !156)
!533 = !DILocation(line: 248, column: 21, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 248, column: 3)
!535 = distinct !DILexicalBlock(scope: !156, file: !1, line: 248, column: 3)
!536 = !DILocation(line: 254, column: 37, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 252, column: 24)
!538 = distinct !DILexicalBlock(scope: !156, file: !1, line: 252, column: 7)
!539 = !DILocation(line: 248, column: 3, scope: !535)
!540 = !DILocation(line: 243, column: 29, scope: !531)
!541 = !DILocation(line: 243, column: 13, scope: !531)
!542 = !DILocation(line: 243, column: 19, scope: !531)
!543 = !DILocation(line: 243, column: 5, scope: !531)
!544 = !DILocation(line: 243, column: 6, scope: !531)
!545 = !DILocation(line: 243, column: 23, scope: !531)
!546 = !DILocation(line: 243, column: 28, scope: !531)
!547 = !DILocation(line: 245, column: 5, scope: !531)
!548 = !DILocation(line: 249, column: 33, scope: !549)
!549 = distinct !DILexicalBlock(scope: !534, file: !1, line: 249, column: 9)
!550 = !DILocation(line: 249, column: 43, scope: !549)
!551 = !DILocation(line: 249, column: 9, scope: !549)
!552 = !DILocation(line: 249, column: 50, scope: !549)
!553 = !DILocation(line: 249, column: 9, scope: !534)
!554 = !DILocation(line: 248, column: 13, scope: !534)
!555 = !DILocation(line: 252, column: 7, scope: !538)
!556 = !DILocation(line: 252, column: 15, scope: !538)
!557 = !DILocation(line: 252, column: 7, scope: !156)
!558 = !DILocation(line: 253, column: 13, scope: !537)
!559 = !DILocation(line: 254, column: 6, scope: !537)
!560 = !DILocation(line: 254, column: 38, scope: !537)
!561 = !DILocation(line: 254, column: 48, scope: !537)
!562 = !DILocation(line: 254, column: 59, scope: !537)
!563 = !DILocation(line: 253, column: 5, scope: !537)
!564 = !DILocation(line: 255, column: 13, scope: !537)
!565 = !DILocation(line: 255, column: 5, scope: !537)
!566 = !DILocation(line: 256, column: 14, scope: !537)
!567 = !DILocation(line: 238, column: 13, scope: !156)
!568 = !DILocation(line: 258, column: 12, scope: !537)
!569 = !DILocation(line: 258, column: 5, scope: !537)
!570 = !DILocation(line: 259, column: 15, scope: !571)
!571 = distinct !DILexicalBlock(scope: !537, file: !1, line: 258, column: 21)
!572 = !DILocation(line: 259, column: 7, scope: !571)
!573 = !DILocation(line: 262, column: 5, scope: !537)
!574 = !DILocation(line: 263, column: 29, scope: !537)
!575 = !DILocation(line: 263, column: 22, scope: !537)
!576 = !DILocation(line: 263, column: 6, scope: !537)
!577 = !DILocation(line: 263, column: 16, scope: !537)
!578 = !DILocation(line: 263, column: 21, scope: !537)
!579 = !DILocation(line: 265, column: 5, scope: !537)
!580 = !DILocation(line: 269, column: 1, scope: !156)
!581 = !DILocation(line: 271, column: 20, scope: !170)
!582 = !DILocation(line: 271, column: 37, scope: !170)
!583 = !DILocation(line: 271, column: 47, scope: !170)
!584 = !DILocation(line: 271, column: 59, scope: !170)
!585 = !DILocation(line: 273, column: 7, scope: !170)
!586 = !DILocation(line: 275, column: 10, scope: !170)
!587 = !DILocation(line: 275, column: 3, scope: !170)
!588 = !DILocation(line: 115, column: 33, scope: !187)
!589 = !DILocation(line: 115, column: 47, scope: !187)
!590 = !DILocation(line: 117, column: 28, scope: !187)
!591 = !DILocation(line: 117, column: 54, scope: !187)
!592 = !DILocation(line: 117, column: 34, scope: !187)
!593 = !DILocation(line: 117, column: 3, scope: !187)
