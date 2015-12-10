; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/atomprop.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_prop = type { [10 x i8], [10 x i8], float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@get_mass.mass = internal global %struct.t_prop* null, align 8
@get_mass.nmass = internal global i32 0, align 4
@get_mass.maxmass = internal global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [131 x i8] c"WARNING: masses will be determined based on residue and atom names,\0A         this can deviate from the real mass of the atom type\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"atommass.dat\00", align 1
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [30 x i8] c"Mass of atom %s %s set to %g\0A\00", align 1
@get_vdw.vdwr = internal global %struct.t_prop* null, align 8
@get_vdw.nvdwr = internal global i32 0, align 4
@get_vdw.maxvdwr = internal global i32 0, align 4
@.str3 = private unnamed_addr constant [13 x i8] c"vdwradii.dat\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"Van der Waals radius of atom %s %s set to %g\0A\00", align 1
@get_dgsolv.dgs = internal global %struct.t_prop* null, align 8
@get_dgsolv.ndgs = internal global i32 0, align 4
@get_dgsolv.maxdgs = internal global i32 0, align 4
@.str5 = private unnamed_addr constant [11 x i8] c"dgsolv.dat\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"Eisenberg86a\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Atomic solvation factors in kJ/mol nm^2\0A\00", align 1
@.str8 = private unnamed_addr constant [42 x i8] c"Solvation factor of atom %s %s set to %g\0A\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"%s %s %lf\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"ERROR in file %s at line %d\0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"%10s  %10s  %10g\0A\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"atomname\00", align 1
@.str13 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/atomprop.c\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"AAA\00", align 1
@.str17 = private unnamed_addr constant [36 x i8] c"search: %4s %4s match: %4s %4s %8g\0A\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"*props\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !203), !dbg !204
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !203), !dbg !205
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !206
  %2 = load i32* %1, align 4, !dbg !208, !tbaa !209
  %3 = add nsw i32 %2, -1, !dbg !208
  store i32 %3, i32* %1, align 4, !dbg !208, !tbaa !209
  %4 = icmp sgt i32 %2, 0, !dbg !218
  br i1 %4, label %._crit_edge, label %5, !dbg !219

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !220
  br label %10, !dbg !219

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !221
  %7 = load i32* %6, align 4, !dbg !221, !tbaa !222
  %8 = icmp sle i32 %2, %7, !dbg !223
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !224
  %or.cond = or i1 %9, %8, !dbg !225
  br i1 %or.cond, label %15, label %10, !dbg !225

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !220
  %11 = trunc i32 %_c to i8, !dbg !226
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !227
  %13 = load i8** %12, align 8, !dbg !228, !tbaa !229
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !228
  store i8* %14, i8** %12, align 8, !dbg !228, !tbaa !229
  store i8 %11, i8* %13, align 1, !dbg !230, !tbaa !231
  br label %17, !dbg !232

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !233
  br label %17, !dbg !234

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !235
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !203), !dbg !236
  %1 = icmp sgt i32 %__signo, 32, !dbg !237
  br i1 %1, label %5, label %2, !dbg !238

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !239
  %4 = shl i32 1, %3, !dbg !240
  br label %5, !dbg !238

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !238
  ret i32 %6, !dbg !241
}

; Function Attrs: nounwind optsize ssp uwtable
define float @get_mass(i8* %resnm, i8* %atomnm) #4 {
  %m = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %resnm, i64 0, metadata !88, metadata !203), !dbg !242
  tail call void @llvm.dbg.value(metadata i8* %atomnm, i64 0, metadata !89, metadata !203), !dbg !243
  %1 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !244, !tbaa !246
  %2 = icmp eq %struct.t_prop* %1, null, !dbg !244
  br i1 %2, label %3, label %11, !dbg !247

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !248, !tbaa !246
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([131 x i8]* @.str, i64 0, i64 0), i64 130, i64 1, %struct.__sFILE* %4), !dbg !250
  %6 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #10, !dbg !251
  store i32 %6, i32* @get_mass.nmass, align 4, !dbg !252, !tbaa !253
  %7 = load %struct.__sFILE** @debug, align 8, !dbg !254, !tbaa !246
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !254
  br i1 %8, label %11, label %9, !dbg !256

; <label>:9                                       ; preds = %3
  %10 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !257, !tbaa !246
  tail call fastcc void @write_props(%struct.__sFILE* %7, i32 %6, %struct.t_prop* %10) #10, !dbg !258
  br label %11, !dbg !258

; <label>:11                                      ; preds = %3, %0, %9
  %12 = load i32* @get_mass.nmass, align 4, !dbg !259, !tbaa !253
  %13 = load %struct.t_prop** @get_mass.mass, align 8, !dbg !261, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %m, i64 0, metadata !90, metadata !203), !dbg !262
  %14 = call fastcc i32 @get_prop(float* %m, i8* %resnm, i8* %atomnm, i32 %12, %struct.t_prop* %13) #10, !dbg !263
  %15 = icmp eq i32 %14, 0, !dbg !263
  br i1 %15, label %16, label %._crit_edge, !dbg !264

._crit_edge:                                      ; preds = %11
  %.pre = load float* %m, align 4, !dbg !265, !tbaa !266
  br label %19, !dbg !264

; <label>:16                                      ; preds = %11
  tail call void @llvm.dbg.value(metadata float 0x402805A1C0000000, i64 0, metadata !90, metadata !203), !dbg !262
  store float 0x402805A1C0000000, float* %m, align 4, !dbg !268, !tbaa !266
  tail call fastcc void @add_prop(float 0x402805A1C0000000, i8* %resnm, i8* %atomnm, i32* @get_mass.nmass, %struct.t_prop** @get_mass.mass, i32* @get_mass.maxmass) #10, !dbg !270
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !271, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %m, i64 0, metadata !90, metadata !203), !dbg !262
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %resnm, i8* %atomnm, double 0x402805A1C0000000) #9, !dbg !272
  br label %19, !dbg !273

; <label>:19                                      ; preds = %._crit_edge, %16
  %20 = phi float [ %.pre, %._crit_edge ], [ 0x402805A1C0000000, %16 ]
  tail call void @llvm.dbg.value(metadata float* %m, i64 0, metadata !90, metadata !203), !dbg !262
  ret float %20, !dbg !274
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @read_props(i8* %propdata, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #4 {
  %line = alloca [4096 x i8], align 16
  %resname = alloca [10 x i8], align 1
  %atomname = alloca [10 x i8], align 1
  %pp = alloca double, align 8
  %i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %propdata, i64 0, metadata !122, metadata !203), !dbg !275
  tail call void @llvm.dbg.value(metadata %struct.t_prop** %props, i64 0, metadata !123, metadata !203), !dbg !276
  tail call void @llvm.dbg.value(metadata i32* %maxprop, i64 0, metadata !124, metadata !203), !dbg !277
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !278
  call void @llvm.lifetime.start(i64 4096, i8* %1) #6, !dbg !278
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %line, metadata !126, metadata !203), !dbg !279
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %resname, metadata !130, metadata !203), !dbg !280
  tail call void @llvm.dbg.declare(metadata [10 x i8]* %atomname, metadata !131, metadata !203), !dbg !281
  %2 = tail call %struct.__sFILE* @libopen(i8* %propdata) #9, !dbg !282
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %2, i64 0, metadata !125, metadata !203), !dbg !283
  store %struct.t_prop* null, %struct.t_prop** %props, align 8, !dbg !284, !tbaa !246
  store i32 0, i32* %maxprop, align 4, !dbg !285, !tbaa !253
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !134, metadata !203), !dbg !286
  store i32 0, i32* %i, align 4, !dbg !287, !tbaa !253
  %3 = call i32 @get_a_line(%struct.__sFILE* %2, i8* %1, i32 4096) #9, !dbg !288
  %4 = icmp eq i32 %3, 0, !dbg !289
  br i1 %4, label %22, label %.lr.ph, !dbg !289

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds [10 x i8]* %resname, i64 0, i64 0, !dbg !290
  %6 = getelementptr inbounds [10 x i8]* %atomname, i64 0, i64 0, !dbg !293
  br label %7, !dbg !289

; <label>:7                                       ; preds = %.lr.ph, %.backedge
  call void @llvm.dbg.value(metadata double* %pp, i64 0, metadata !132, metadata !203), !dbg !294
  %8 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* %5, i8* %6, double* %pp) #9, !dbg !295
  %9 = icmp eq i32 %8, 3, !dbg !296
  br i1 %9, label %10, label %13, !dbg !297

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.value(metadata double* %pp, i64 0, metadata !132, metadata !203), !dbg !294
  %11 = load double* %pp, align 8, !dbg !298, !tbaa !299
  %12 = fptrunc double %11 to float, !dbg !298
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !134, metadata !203), !dbg !286
  call fastcc void @add_prop(float %12, i8* %5, i8* %6, i32* %i, %struct.t_prop** %props, i32* %maxprop) #10, !dbg !301
  br label %.backedge, !dbg !301

; <label>:13                                      ; preds = %7
  %14 = load %struct.__sFILE** @debug, align 8, !dbg !302, !tbaa !246
  %15 = icmp eq %struct.__sFILE* %14, null, !dbg !302
  br i1 %15, label %.backedge, label %16, !dbg !304

; <label>:16                                      ; preds = %13
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !305, !tbaa !246
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !134, metadata !203), !dbg !286
  %18 = load i32* %i, align 4, !dbg !306, !tbaa !253
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i8* %propdata, i32 %18) #9, !dbg !307
  br label %.backedge, !dbg !307

.backedge:                                        ; preds = %16, %10, %13
  %20 = call i32 @get_a_line(%struct.__sFILE* %2, i8* %1, i32 4096) #9, !dbg !288
  %21 = icmp eq i32 %20, 0, !dbg !289
  br i1 %21, label %._crit_edge, label %7, !dbg !289

._crit_edge:                                      ; preds = %.backedge
  %.pre = load i32* %i, align 4, !dbg !308, !tbaa !253
  br label %22, !dbg !289

; <label>:22                                      ; preds = %._crit_edge, %0
  %23 = phi i32 [ %.pre, %._crit_edge ], [ 0, %0 ]
  call void @ffclose(%struct.__sFILE* %2) #9, !dbg !309
  call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !134, metadata !203), !dbg !286
  call void @llvm.lifetime.end(i64 4096, i8* %1) #6, !dbg !310
  ret i32 %23, !dbg !310
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @write_props(%struct.__sFILE* %fp, i32 %nprop, %struct.t_prop* %props) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !139, metadata !203), !dbg !311
  tail call void @llvm.dbg.value(metadata i32 %nprop, i64 0, metadata !140, metadata !203), !dbg !312
  tail call void @llvm.dbg.value(metadata %struct.t_prop* %props, i64 0, metadata !141, metadata !203), !dbg !313
  %1 = icmp ne %struct.__sFILE* %fp, null, !dbg !314
  %2 = icmp sgt i32 %nprop, 0, !dbg !316
  %or.cond = and i1 %1, %2, !dbg !319
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !319

.lr.ph:                                           ; preds = %0
  %3 = add i32 %nprop, -1, !dbg !320
  br label %4, !dbg !320

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0, !dbg !321
  %6 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0, !dbg !322
  %7 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2, !dbg !323
  %8 = load float* %7, align 4, !dbg !323, !tbaa !324
  %9 = fpext float %8 to double, !dbg !326
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0), i8* %5, i8* %6, double %9) #9, !dbg !327
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !320
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !320
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !320
  br i1 %exitcond, label %.loopexit, label %4, !dbg !320

.loopexit:                                        ; preds = %4, %0
  ret void, !dbg !328
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @get_prop(float* nocapture %p, i8* %resname, i8* %atomnm, i32 %nprop, %struct.t_prop* %props) #4 {
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !148, metadata !203), !dbg !329
  tail call void @llvm.dbg.value(metadata i8* %resname, i64 0, metadata !149, metadata !203), !dbg !330
  tail call void @llvm.dbg.value(metadata i8* %atomnm, i64 0, metadata !150, metadata !203), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %nprop, i64 0, metadata !151, metadata !203), !dbg !332
  tail call void @llvm.dbg.value(metadata %struct.t_prop* %props, i64 0, metadata !152, metadata !203), !dbg !333
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !203), !dbg !334
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !157, metadata !203), !dbg !335
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !158, metadata !203), !dbg !336
  %1 = load i8* %atomnm, align 1, !dbg !337, !tbaa !231
  %2 = sext i8 %1 to i32, !dbg !337
  %isdigittmp = add nsw i32 %2, -48, !dbg !339
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !339
  br i1 %isdigit, label %3, label %20, !dbg !340

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %atomnm) #9, !dbg !341
  %5 = add i64 %4, 1, !dbg !341
  %6 = trunc i64 %5 to i32, !dbg !341
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 128, i32 %6, i32 1) #9, !dbg !341
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !159, metadata !203), !dbg !343
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !153, metadata !203), !dbg !344
  %8 = tail call i64 @strlen(i8* %atomnm) #9, !dbg !345
  %9 = icmp ugt i64 %8, 1, !dbg !348
  br i1 %9, label %.lr.ph9, label %16, !dbg !349

.lr.ph9:                                          ; preds = %3, %.lr.ph9
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %.lr.ph9 ], [ 1, %3 ]
  %10 = getelementptr inbounds i8* %atomnm, i64 %indvars.iv15, !dbg !350
  %11 = load i8* %10, align 1, !dbg !350, !tbaa !231
  %12 = add nsw i64 %indvars.iv15, -1, !dbg !351
  %13 = getelementptr inbounds i8* %7, i64 %12, !dbg !352
  store i8 %11, i8* %13, align 1, !dbg !353, !tbaa !231
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !349
  %14 = tail call i64 @strlen(i8* %atomnm) #9, !dbg !345
  %15 = icmp ult i64 %indvars.iv.next16, %14, !dbg !348
  br i1 %15, label %.lr.ph9, label %._crit_edge10, !dbg !349

._crit_edge10:                                    ; preds = %.lr.ph9
  %phitmp = shl i64 %indvars.iv15, 32, !dbg !349
  %sext = add i64 %phitmp, 8589934592, !dbg !349
  %phitmp13 = ashr exact i64 %sext, 32, !dbg !349
  br label %16, !dbg !349

; <label>:16                                      ; preds = %._crit_edge10, %3
  %.lcssa = phi i64 [ %indvars.iv.next16, %._crit_edge10 ], [ 1, %3 ]
  %i.0.lcssa = phi i64 [ %phitmp13, %._crit_edge10 ], [ 2, %3 ]
  %17 = load i8* %atomnm, align 1, !dbg !354, !tbaa !231
  %18 = getelementptr inbounds i8* %7, i64 %.lcssa, !dbg !355
  store i8 %17, i8* %18, align 1, !dbg !356, !tbaa !231
  %19 = getelementptr inbounds i8* %7, i64 %i.0.lcssa, !dbg !357
  store i8 0, i8* %19, align 1, !dbg !358, !tbaa !231
  br label %20, !dbg !359

; <label>:20                                      ; preds = %0, %16
  %atomname.0 = phi i8* [ %7, %16 ], [ %atomnm, %0 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !203), !dbg !344
  %21 = icmp sgt i32 %nprop, 0, !dbg !360
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !363

.lr.ph:                                           ; preds = %20
  %22 = bitcast float* %p to i32*, !dbg !364
  %23 = add i32 %nprop, -1, !dbg !363
  br label %24, !dbg !363

; <label>:24                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %mrlen.04 = phi i32 [ -3, %.lr.ph ], [ %mrlen.1, %49 ]
  %malen.03 = phi i32 [ -3, %.lr.ph ], [ %malen.1, %49 ]
  %j.01 = phi i32 [ 0, %.lr.ph ], [ %j.1, %49 ]
  %25 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 1, i64 0, !dbg !368
  %26 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !370
  %27 = icmp eq i32 %26, 0, !dbg !371
  br i1 %27, label %39, label %28, !dbg !372

; <label>:28                                      ; preds = %24
  %29 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0)) #9, !dbg !373
  %30 = icmp eq i32 %29, 0, !dbg !374
  br i1 %30, label %39, label %31, !dbg !375

; <label>:31                                      ; preds = %28
  %32 = tail call i32 @is_protein(i8* %resname) #9, !dbg !376
  %33 = icmp eq i32 %32, 0, !dbg !376
  br i1 %33, label %37, label %34, !dbg !378

; <label>:34                                      ; preds = %31
  %35 = tail call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !379
  %36 = icmp eq i32 %35, 0, !dbg !380
  br i1 %36, label %39, label %37, !dbg !381

; <label>:37                                      ; preds = %31, %34
  %38 = tail call fastcc i32 @dbcmp_len(i8* %resname, i8* %25) #10, !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !156, metadata !203), !dbg !384
  br label %39

; <label>:39                                      ; preds = %34, %24, %28, %37
  %rlen.0 = phi i32 [ %38, %37 ], [ -2, %28 ], [ -2, %24 ], [ -1, %34 ]
  %40 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 0, i64 0, !dbg !385
  %41 = tail call fastcc i32 @dbcmp_len(i8* %atomname.0, i8* %40) #10, !dbg !386
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !155, metadata !203), !dbg !387
  %42 = icmp slt i32 %41, %malen.03, !dbg !388
  %43 = icmp slt i32 %rlen.0, %mrlen.04, !dbg !389
  %or.cond = or i1 %43, %42, !dbg !390
  br i1 %or.cond, label %._crit_edge17, label %44, !dbg !390

._crit_edge17:                                    ; preds = %39
  %.pre = trunc i64 %indvars.iv to i32, !dbg !363
  br label %49, !dbg !390

; <label>:44                                      ; preds = %39
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !157, metadata !203), !dbg !335
  tail call void @llvm.dbg.value(metadata i32 %rlen.0, i64 0, metadata !158, metadata !203), !dbg !336
  %45 = getelementptr inbounds %struct.t_prop* %props, i64 %indvars.iv, i32 2, !dbg !391
  %46 = bitcast float* %45 to i32*, !dbg !391
  %47 = load i32* %46, align 4, !dbg !391, !tbaa !324
  store i32 %47, i32* %22, align 4, !dbg !364, !tbaa !266
  %48 = trunc i64 %indvars.iv to i32, !dbg !392
  br label %49, !dbg !392

; <label>:49                                      ; preds = %._crit_edge17, %44
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge17 ], [ %48, %44 ], !dbg !363
  %j.1 = phi i32 [ %j.01, %._crit_edge17 ], [ %48, %44 ]
  %malen.1 = phi i32 [ %malen.03, %._crit_edge17 ], [ %41, %44 ]
  %mrlen.1 = phi i32 [ %mrlen.04, %._crit_edge17 ], [ %rlen.0, %44 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !363
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %23, !dbg !363
  br i1 %exitcond, label %._crit_edge, label %24, !dbg !363

._crit_edge:                                      ; preds = %49, %20
  %mrlen.0.lcssa = phi i32 [ -3, %20 ], [ %mrlen.1, %49 ]
  %malen.0.lcssa = phi i32 [ -3, %20 ], [ %malen.1, %49 ]
  %j.0.lcssa = phi i32 [ 0, %20 ], [ %j.1, %49 ]
  %50 = load %struct.__sFILE** @debug, align 8, !dbg !393, !tbaa !246
  %51 = icmp eq %struct.__sFILE* %50, null, !dbg !393
  br i1 %51, label %59, label %52, !dbg !395

; <label>:52                                      ; preds = %._crit_edge
  %53 = sext i32 %j.0.lcssa to i64, !dbg !396
  %54 = getelementptr inbounds %struct.t_prop* %props, i64 %53, i32 1, i64 0, !dbg !396
  %55 = getelementptr inbounds %struct.t_prop* %props, i64 %53, i32 0, i64 0, !dbg !397
  %56 = load float* %p, align 4, !dbg !398, !tbaa !266
  %57 = fpext float %56 to double, !dbg !398
  %58 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([36 x i8]* @.str17, i64 0, i64 0), i8* %resname, i8* %atomname.0, i8* %54, i8* %55, double %57) #9, !dbg !399
  br label %59, !dbg !399

; <label>:59                                      ; preds = %._crit_edge, %52
  %60 = icmp ne i32 %mrlen.0.lcssa, -3, !dbg !400
  %not. = icmp ne i32 %malen.0.lcssa, -3, !dbg !401
  %. = and i1 %not., %60, !dbg !401
  %61 = zext i1 %. to i32, !dbg !401
  ret i32 %61, !dbg !402
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_prop(float %p, i8* %resnm, i8* %atomnm, i32* nocapture %nprop, %struct.t_prop** nocapture %props, i32* nocapture %maxprop) #4 {
  tail call void @llvm.dbg.value(metadata float %p, i64 0, metadata !183, metadata !203), !dbg !403
  tail call void @llvm.dbg.value(metadata i8* %resnm, i64 0, metadata !184, metadata !203), !dbg !404
  tail call void @llvm.dbg.value(metadata i8* %atomnm, i64 0, metadata !185, metadata !203), !dbg !405
  tail call void @llvm.dbg.value(metadata i32* %nprop, i64 0, metadata !186, metadata !203), !dbg !406
  tail call void @llvm.dbg.value(metadata %struct.t_prop** %props, i64 0, metadata !187, metadata !203), !dbg !407
  tail call void @llvm.dbg.value(metadata i32* %maxprop, i64 0, metadata !188, metadata !203), !dbg !408
  %1 = load i32* %nprop, align 4, !dbg !409, !tbaa !253
  %2 = load i32* %maxprop, align 4, !dbg !411, !tbaa !253
  %3 = icmp slt i32 %1, %2, !dbg !412
  br i1 %3, label %._crit_edge, label %4, !dbg !413

._crit_edge:                                      ; preds = %0
  %.pre1 = load %struct.t_prop** %props, align 8, !dbg !414, !tbaa !246
  br label %11, !dbg !413

; <label>:4                                       ; preds = %0
  %5 = add nsw i32 %2, 10, !dbg !415
  store i32 %5, i32* %maxprop, align 4, !dbg !415, !tbaa !253
  %6 = bitcast %struct.t_prop** %props to i8**, !dbg !417
  %7 = load i8** %6, align 8, !dbg !417, !tbaa !246
  %8 = mul i32 %5, 24, !dbg !417
  %9 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str13, i64 0, i64 0), i32 56, i8* %7, i32 %8) #9, !dbg !417
  store i8* %9, i8** %6, align 8, !dbg !417, !tbaa !246
  %.pre = load i32* %nprop, align 4, !dbg !414, !tbaa !253
  %10 = bitcast i8* %9 to %struct.t_prop*
  br label %11, !dbg !418

; <label>:11                                      ; preds = %._crit_edge, %4
  %12 = phi %struct.t_prop* [ %.pre1, %._crit_edge ], [ %10, %4 ]
  %13 = phi i32 [ %1, %._crit_edge ], [ %.pre, %4 ]
  %14 = sext i32 %13 to i64, !dbg !414
  %15 = getelementptr inbounds %struct.t_prop* %12, i64 %14, i32 0, i64 0, !dbg !414
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false), !dbg !414
  %17 = tail call i8* @__strcpy_chk(i8* %15, i8* %atomnm, i64 %16) #9, !dbg !414
  %18 = load i32* %nprop, align 4, !dbg !419, !tbaa !253
  %19 = sext i32 %18 to i64, !dbg !419
  %20 = load %struct.t_prop** %props, align 8, !dbg !419, !tbaa !246
  %21 = getelementptr inbounds %struct.t_prop* %20, i64 %19, i32 1, i64 0, !dbg !419
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %21, i1 false), !dbg !419
  %23 = tail call i8* @__strcpy_chk(i8* %21, i8* %resnm, i64 %22) #9, !dbg !419
  %24 = load i32* %nprop, align 4, !dbg !420, !tbaa !253
  %25 = sext i32 %24 to i64, !dbg !421
  %26 = load %struct.t_prop** %props, align 8, !dbg !422, !tbaa !246
  %27 = getelementptr inbounds %struct.t_prop* %26, i64 %25, i32 2, !dbg !423
  store float %p, float* %27, align 4, !dbg !424, !tbaa !324
  %28 = add nsw i32 %24, 1, !dbg !425
  store i32 %28, i32* %nprop, align 4, !dbg !425, !tbaa !253
  ret void, !dbg !426
}

; Function Attrs: nounwind optsize ssp uwtable
define float @get_vdw(i8* %resnm, i8* %atomnm, float %default_r) #4 {
  %r = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %resnm, i64 0, metadata !95, metadata !203), !dbg !427
  tail call void @llvm.dbg.value(metadata i8* %atomnm, i64 0, metadata !96, metadata !203), !dbg !428
  tail call void @llvm.dbg.value(metadata float %default_r, i64 0, metadata !97, metadata !203), !dbg !429
  %1 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !430, !tbaa !246
  %2 = icmp eq %struct.t_prop* %1, null, !dbg !430
  br i1 %2, label %3, label %9, !dbg !432

; <label>:3                                       ; preds = %0
  %4 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #10, !dbg !433
  store i32 %4, i32* @get_vdw.nvdwr, align 4, !dbg !435, !tbaa !253
  %5 = load %struct.__sFILE** @debug, align 8, !dbg !436, !tbaa !246
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !436
  br i1 %6, label %9, label %7, !dbg !438

; <label>:7                                       ; preds = %3
  %8 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !439, !tbaa !246
  tail call fastcc void @write_props(%struct.__sFILE* %5, i32 %4, %struct.t_prop* %8) #10, !dbg !440
  br label %9, !dbg !440

; <label>:9                                       ; preds = %3, %0, %7
  %10 = load i32* @get_vdw.nvdwr, align 4, !dbg !441, !tbaa !253
  %11 = load %struct.t_prop** @get_vdw.vdwr, align 8, !dbg !443, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !98, metadata !203), !dbg !444
  %12 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %10, %struct.t_prop* %11) #10, !dbg !445
  %13 = icmp eq i32 %12, 0, !dbg !445
  br i1 %13, label %14, label %._crit_edge, !dbg !446

._crit_edge:                                      ; preds = %9
  %.pre = load float* %r, align 4, !dbg !447, !tbaa !266
  br label %18, !dbg !446

; <label>:14                                      ; preds = %9
  tail call void @llvm.dbg.value(metadata float %default_r, i64 0, metadata !98, metadata !203), !dbg !444
  store float %default_r, float* %r, align 4, !dbg !448, !tbaa !266
  tail call fastcc void @add_prop(float %default_r, i8* %resnm, i8* %atomnm, i32* @get_vdw.nvdwr, %struct.t_prop** @get_vdw.vdwr, i32* @get_vdw.maxvdwr) #10, !dbg !450
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !451, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !98, metadata !203), !dbg !444
  %16 = fpext float %default_r to double, !dbg !452
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %16) #9, !dbg !453
  br label %18, !dbg !454

; <label>:18                                      ; preds = %._crit_edge, %14
  %19 = phi float [ %.pre, %._crit_edge ], [ %default_r, %14 ]
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !98, metadata !203), !dbg !444
  ret float %19, !dbg !455
}

; Function Attrs: nounwind optsize ssp uwtable
define float @get_dgsolv(i8* %resnm, i8* %atomnm, float %default_s) #4 {
  %r = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %resnm, i64 0, metadata !101, metadata !203), !dbg !456
  tail call void @llvm.dbg.value(metadata i8* %atomnm, i64 0, metadata !102, metadata !203), !dbg !457
  tail call void @llvm.dbg.value(metadata float %default_s, i64 0, metadata !103, metadata !203), !dbg !458
  %1 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !459, !tbaa !246
  %2 = icmp eq %struct.t_prop* %1, null, !dbg !459
  br i1 %2, label %3, label %24, !dbg !461

; <label>:3                                       ; preds = %0
  %4 = tail call fastcc i32 @read_props(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #10, !dbg !462
  store i32 %4, i32* @get_dgsolv.ndgs, align 4, !dbg !464, !tbaa !253
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !465, !tbaa !246
  tail call void @please_cite(%struct.__sFILE* %5, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0)) #9, !dbg !466
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !203), !dbg !467
  %6 = load i32* @get_dgsolv.ndgs, align 4, !dbg !468, !tbaa !253
  %7 = icmp sgt i32 %6, 0, !dbg !471
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !472

.lr.ph:                                           ; preds = %3
  %8 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !473, !tbaa !246
  %9 = sext i32 %6 to i64, !dbg !472
  br label %10, !dbg !472

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = getelementptr inbounds %struct.t_prop* %8, i64 %indvars.iv, i32 2, !dbg !474
  %12 = load float* %11, align 4, !dbg !475, !tbaa !324
  %13 = fpext float %12 to double, !dbg !475
  %14 = fmul double %13, 4.184000e+02, !dbg !475
  %15 = fptrunc double %14 to float, !dbg !475
  store float %15, float* %11, align 4, !dbg !475, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !472
  %16 = icmp slt i64 %indvars.iv.next, %9, !dbg !471
  br i1 %16, label %10, label %._crit_edge, !dbg !472

._crit_edge:                                      ; preds = %10, %3
  %17 = load %struct.__sFILE** @debug, align 8, !dbg !476, !tbaa !246
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !476
  br i1 %18, label %24, label %19, !dbg !478

; <label>:19                                      ; preds = %._crit_edge
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str7, i64 0, i64 0), i64 40, i64 1, %struct.__sFILE* %17), !dbg !479
  %21 = load %struct.__sFILE** @debug, align 8, !dbg !481, !tbaa !246
  %22 = load i32* @get_dgsolv.ndgs, align 4, !dbg !482, !tbaa !253
  %23 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !483, !tbaa !246
  tail call fastcc void @write_props(%struct.__sFILE* %21, i32 %22, %struct.t_prop* %23) #10, !dbg !484
  br label %24, !dbg !485

; <label>:24                                      ; preds = %._crit_edge, %0, %19
  %25 = load i32* @get_dgsolv.ndgs, align 4, !dbg !486, !tbaa !253
  %26 = load %struct.t_prop** @get_dgsolv.dgs, align 8, !dbg !488, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !104, metadata !203), !dbg !489
  %27 = call fastcc i32 @get_prop(float* %r, i8* %resnm, i8* %atomnm, i32 %25, %struct.t_prop* %26) #10, !dbg !490
  %28 = icmp eq i32 %27, 0, !dbg !490
  br i1 %28, label %29, label %._crit_edge2, !dbg !491

._crit_edge2:                                     ; preds = %24
  %.pre = load float* %r, align 4, !dbg !492, !tbaa !266
  br label %33, !dbg !491

; <label>:29                                      ; preds = %24
  tail call void @llvm.dbg.value(metadata float %default_s, i64 0, metadata !104, metadata !203), !dbg !489
  store float %default_s, float* %r, align 4, !dbg !493, !tbaa !266
  tail call fastcc void @add_prop(float %default_s, i8* %resnm, i8* %atomnm, i32* @get_dgsolv.ndgs, %struct.t_prop** @get_dgsolv.dgs, i32* @get_dgsolv.maxdgs) #10, !dbg !495
  %30 = load %struct.__sFILE** @__stderrp, align 8, !dbg !496, !tbaa !246
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !104, metadata !203), !dbg !489
  %31 = fpext float %default_s to double, !dbg !497
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([42 x i8]* @.str8, i64 0, i64 0), i8* %resnm, i8* %atomnm, double %31) #9, !dbg !498
  br label %33, !dbg !499

; <label>:33                                      ; preds = %._crit_edge2, %29
  %34 = phi float [ %.pre, %._crit_edge2 ], [ %default_s, %29 ]
  tail call void @llvm.dbg.value(metadata float* %r, i64 0, metadata !104, metadata !203), !dbg !489
  ret float %34, !dbg !500
}

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare %struct.__sFILE* @libopen(i8*) #2

; Function Attrs: optsize
declare i32 @get_a_line(%struct.__sFILE*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @is_protein(i8*) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @dbcmp_len(i8* nocapture readonly %search, i8* nocapture readonly %database) #8 {
  tail call void @llvm.dbg.value(metadata i8* %search, i64 0, metadata !176, metadata !203), !dbg !501
  tail call void @llvm.dbg.value(metadata i8* %database, i64 0, metadata !177, metadata !203), !dbg !502
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !178, metadata !203), !dbg !503
  %1 = load i8* %search, align 1, !dbg !504, !tbaa !231
  %2 = icmp eq i8 %1, 0, !dbg !504
  br i1 %2, label %.critedge, label %.lr.ph, !dbg !505

.lr.ph:                                           ; preds = %0, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %3 = phi i8 [ %9, %7 ], [ %1, %0 ]
  %4 = getelementptr inbounds i8* %database, i64 %indvars.iv, !dbg !506
  %5 = load i8* %4, align 1, !dbg !506, !tbaa !231
  %6 = icmp eq i8 %3, %5, !dbg !507
  %not. = icmp ne i8 %5, 0, !dbg !508
  %. = and i1 %6, %not., !dbg !508
  br i1 %., label %7, label %..critedge_crit_edge3, !dbg !509

; <label>:7                                       ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !505
  %8 = getelementptr inbounds i8* %search, i64 %indvars.iv.next, !dbg !504
  %9 = load i8* %8, align 1, !dbg !504, !tbaa !231
  %10 = icmp eq i8 %9, 0, !dbg !504
  br i1 %10, label %..critedge_crit_edge, label %.lr.ph, !dbg !505

..critedge_crit_edge:                             ; preds = %7
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !505
  br label %.critedge, !dbg !505

..critedge_crit_edge3:                            ; preds = %.lr.ph
  %12 = trunc i64 %indvars.iv to i32, !dbg !509
  br label %.critedge, !dbg !509

.critedge:                                        ; preds = %..critedge_crit_edge3, %..critedge_crit_edge, %0
  %.lcssa = phi i64 [ %indvars.iv.next, %..critedge_crit_edge ], [ %indvars.iv, %..critedge_crit_edge3 ], [ 0, %0 ]
  %i.0.lcssa = phi i32 [ %11, %..critedge_crit_edge ], [ %12, %..critedge_crit_edge3 ], [ 0, %0 ]
  %13 = getelementptr inbounds i8* %database, i64 %.lcssa, !dbg !510
  %14 = load i8* %13, align 1, !dbg !510, !tbaa !231
  %15 = icmp eq i8 %14, 0, !dbg !510
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !178, metadata !203), !dbg !503
  %i.0. = select i1 %15, i32 %i.0.lcssa, i32 -3, !dbg !512
  ret i32 %i.0., !dbg !513
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!199, !200, !201}
!llvm.ident = !{!202}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !189, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/atomprop.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !91, !99, !106, !135, !143, !160, !164, !172, !179}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "get_mass", scope: !1, file: !1, line: 163, type: !82, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i8*)* @get_mass, variables: !87)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !39, !39}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !85, line: 87, baseType: !86)
!85 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!87 = !{!88, !89, !90}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resnm", arg: 1, scope: !81, file: !1, line: 163, type: !39)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomnm", arg: 2, scope: !81, file: !1, line: 163, type: !39)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !81, file: !1, line: 165, type: !84)
!91 = !DISubprogram(name: "get_vdw", scope: !1, file: !1, line: 189, type: !92, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i8*, float)* @get_vdw, variables: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!84, !39, !39, !84}
!94 = !{!95, !96, !97, !98}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resnm", arg: 1, scope: !91, file: !1, line: 189, type: !39)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomnm", arg: 2, scope: !91, file: !1, line: 189, type: !39)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "default_r", arg: 3, scope: !91, file: !1, line: 189, type: !84)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !91, file: !1, line: 191, type: !84)
!99 = !DISubprogram(name: "get_dgsolv", scope: !1, file: !1, line: 211, type: !92, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, function: float (i8*, i8*, float)* @get_dgsolv, variables: !100)
!100 = !{!101, !102, !103, !104, !105}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resnm", arg: 1, scope: !99, file: !1, line: 211, type: !39)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomnm", arg: 2, scope: !99, file: !1, line: 211, type: !39)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "default_s", arg: 3, scope: !99, file: !1, line: 211, type: !84)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !99, file: !1, line: 216, type: !84)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !99, file: !1, line: 217, type: !10)
!106 = !DISubprogram(name: "read_props", scope: !1, file: !1, line: 64, type: !107, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct.t_prop**, i32*)* @read_props, variables: !121)
!107 = !DISubroutineType(types: !108)
!108 = !{!10, !39, !109, !120}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_prop", file: !1, line: 49, baseType: !112)
!112 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 45, size: 192, align: 32, elements: !113)
!113 = !{!114, !118, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !112, file: !1, line: 46, baseType: !115, size: 80, align: 8)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 10)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !112, file: !1, line: 47, baseType: !115, size: 80, align: 8, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "prop", scope: !112, file: !1, line: 48, baseType: !84, size: 32, align: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!121 = !{!122, !123, !124, !125, !126, !130, !131, !132, !134}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "propdata", arg: 1, scope: !106, file: !1, line: 64, type: !39)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "props", arg: 2, scope: !106, file: !1, line: 64, type: !109)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxprop", arg: 3, scope: !106, file: !1, line: 64, type: !120)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !106, file: !1, line: 66, type: !11)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !106, file: !1, line: 67, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 4096)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resname", scope: !106, file: !1, line: 67, type: !115)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomname", scope: !106, file: !1, line: 67, type: !115)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pp", scope: !106, file: !1, line: 68, type: !133)
!133 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !106, file: !1, line: 69, type: !10)
!135 = !DISubprogram(name: "write_props", scope: !1, file: !1, line: 87, type: !136, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, %struct.t_prop*)* @write_props, variables: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !11, !10, !110}
!138 = !{!139, !140, !141, !142}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !135, file: !1, line: 87, type: !11)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprop", arg: 2, scope: !135, file: !1, line: 87, type: !10)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "props", arg: 3, scope: !135, file: !1, line: 87, type: !110)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !135, file: !1, line: 89, type: !10)
!143 = !DISubprogram(name: "get_prop", scope: !1, file: !1, line: 117, type: !144, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float*, i8*, i8*, i32, %struct.t_prop*)* @get_prop, variables: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!10, !146, !39, !39, !10, !110}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !143, file: !1, line: 117, type: !146)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resname", arg: 2, scope: !143, file: !1, line: 117, type: !39)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomnm", arg: 3, scope: !143, file: !1, line: 117, type: !39)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprop", arg: 4, scope: !143, file: !1, line: 118, type: !10)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "props", arg: 5, scope: !143, file: !1, line: 118, type: !110)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !143, file: !1, line: 120, type: !10)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !143, file: !1, line: 120, type: !10)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alen", scope: !143, file: !1, line: 120, type: !10)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rlen", scope: !143, file: !1, line: 120, type: !10)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "malen", scope: !143, file: !1, line: 120, type: !10)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mrlen", scope: !143, file: !1, line: 120, type: !10)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomname", scope: !143, file: !1, line: 121, type: !39)
!160 = !DISubprogram(name: "isdigit", scope: !161, file: !161, line: 237, type: !77, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !162)
!161 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!162 = !{!163}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !160, file: !161, line: 237, type: !10)
!164 = !DISubprogram(name: "__isctype", scope: !161, file: !161, line: 164, type: !165, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !169)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !167, !168}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !48, line: 70, baseType: !10)
!168 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!169 = !{!170, !171}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !164, file: !161, line: 164, type: !167)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !164, file: !161, line: 164, type: !168)
!172 = !DISubprogram(name: "dbcmp_len", scope: !1, file: !1, line: 104, type: !173, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @dbcmp_len, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!10, !39, !39}
!175 = !{!176, !177, !178}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search", arg: 1, scope: !172, file: !1, line: 104, type: !39)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "database", arg: 2, scope: !172, file: !1, line: 104, type: !39)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !172, file: !1, line: 106, type: !10)
!179 = !DISubprogram(name: "add_prop", scope: !1, file: !1, line: 51, type: !180, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: void (float, i8*, i8*, i32*, %struct.t_prop**, i32*)* @add_prop, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !84, !39, !39, !120, !109, !120}
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !179, file: !1, line: 51, type: !84)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resnm", arg: 2, scope: !179, file: !1, line: 51, type: !39)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atomnm", arg: 3, scope: !179, file: !1, line: 51, type: !39)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprop", arg: 4, scope: !179, file: !1, line: 52, type: !120)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "props", arg: 5, scope: !179, file: !1, line: 52, type: !109)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxprop", arg: 6, scope: !179, file: !1, line: 52, type: !120)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198}
!190 = !DIGlobalVariable(name: "mass", scope: !81, file: !1, line: 166, type: !110, isLocal: true, isDefinition: true, variable: %struct.t_prop** @get_mass.mass)
!191 = !DIGlobalVariable(name: "nmass", scope: !81, file: !1, line: 167, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_mass.nmass)
!192 = !DIGlobalVariable(name: "maxmass", scope: !81, file: !1, line: 168, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_mass.maxmass)
!193 = !DIGlobalVariable(name: "vdwr", scope: !91, file: !1, line: 192, type: !110, isLocal: true, isDefinition: true, variable: %struct.t_prop** @get_vdw.vdwr)
!194 = !DIGlobalVariable(name: "nvdwr", scope: !91, file: !1, line: 193, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_vdw.nvdwr)
!195 = !DIGlobalVariable(name: "maxvdwr", scope: !91, file: !1, line: 194, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_vdw.maxvdwr)
!196 = !DIGlobalVariable(name: "dgs", scope: !99, file: !1, line: 213, type: !110, isLocal: true, isDefinition: true, variable: %struct.t_prop** @get_dgsolv.dgs)
!197 = !DIGlobalVariable(name: "ndgs", scope: !99, file: !1, line: 214, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_dgsolv.ndgs)
!198 = !DIGlobalVariable(name: "maxdgs", scope: !99, file: !1, line: 215, type: !10, isLocal: true, isDefinition: true, variable: i32* @get_dgsolv.maxdgs)
!199 = !{i32 2, !"Dwarf Version", i32 2}
!200 = !{i32 2, !"Debug Info Version", i32 700000003}
!201 = !{i32 1, !"PIC Level", i32 2}
!202 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!203 = !DIExpression()
!204 = !DILocation(line: 348, column: 40, scope: !6)
!205 = !DILocation(line: 348, column: 50, scope: !6)
!206 = !DILocation(line: 349, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!208 = !DILocation(line: 349, column: 6, scope: !207)
!209 = !{!210, !214, i64 12}
!210 = !{!"__sFILE", !211, i64 0, !214, i64 8, !214, i64 12, !215, i64 16, !215, i64 18, !216, i64 24, !214, i64 40, !211, i64 48, !211, i64 56, !211, i64 64, !211, i64 72, !211, i64 80, !216, i64 88, !211, i64 104, !214, i64 112, !212, i64 116, !212, i64 119, !216, i64 120, !214, i64 136, !217, i64 144}
!211 = !{!"any pointer", !212, i64 0}
!212 = !{!"omnipotent char", !213, i64 0}
!213 = !{!"Simple C/C++ TBAA"}
!214 = !{!"int", !212, i64 0}
!215 = !{!"short", !212, i64 0}
!216 = !{!"__sbuf", !211, i64 0, !214, i64 8}
!217 = !{!"long long", !212, i64 0}
!218 = !DILocation(line: 349, column: 15, scope: !207)
!219 = !DILocation(line: 349, column: 20, scope: !207)
!220 = !DILocation(line: 350, column: 10, scope: !207)
!221 = !DILocation(line: 349, column: 38, scope: !207)
!222 = !{!210, !214, i64 40}
!223 = !DILocation(line: 349, column: 31, scope: !207)
!224 = !DILocation(line: 349, column: 59, scope: !207)
!225 = !DILocation(line: 349, column: 47, scope: !207)
!226 = !DILocation(line: 350, column: 23, scope: !207)
!227 = !DILocation(line: 350, column: 16, scope: !207)
!228 = !DILocation(line: 350, column: 18, scope: !207)
!229 = !{!210, !211, i64 0}
!230 = !DILocation(line: 350, column: 21, scope: !207)
!231 = !{!212, !212, i64 0}
!232 = !DILocation(line: 350, column: 3, scope: !207)
!233 = !DILocation(line: 352, column: 11, scope: !207)
!234 = !DILocation(line: 352, column: 3, scope: !207)
!235 = !DILocation(line: 353, column: 1, scope: !6)
!236 = !DILocation(line: 114, column: 15, scope: !75)
!237 = !DILocation(line: 116, column: 20, scope: !75)
!238 = !DILocation(line: 116, column: 12, scope: !75)
!239 = !DILocation(line: 116, column: 57, scope: !75)
!240 = !DILocation(line: 116, column: 45, scope: !75)
!241 = !DILocation(line: 116, column: 5, scope: !75)
!242 = !DILocation(line: 163, column: 21, scope: !81)
!243 = !DILocation(line: 163, column: 34, scope: !81)
!244 = !DILocation(line: 170, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !81, file: !1, line: 170, column: 7)
!246 = !{!211, !211, i64 0}
!247 = !DILocation(line: 170, column: 7, scope: !81)
!248 = !DILocation(line: 171, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 170, column: 14)
!250 = !DILocation(line: 171, column: 5, scope: !249)
!251 = !DILocation(line: 174, column: 13, scope: !249)
!252 = !DILocation(line: 174, column: 11, scope: !249)
!253 = !{!214, !214, i64 0}
!254 = !DILocation(line: 175, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !1, line: 175, column: 9)
!256 = !DILocation(line: 175, column: 9, scope: !249)
!257 = !DILocation(line: 176, column: 31, scope: !255)
!258 = !DILocation(line: 176, column: 7, scope: !255)
!259 = !DILocation(line: 179, column: 38, scope: !260)
!260 = distinct !DILexicalBlock(scope: !81, file: !1, line: 179, column: 8)
!261 = !DILocation(line: 179, column: 45, scope: !260)
!262 = !DILocation(line: 165, column: 8, scope: !81)
!263 = !DILocation(line: 179, column: 10, scope: !260)
!264 = !DILocation(line: 179, column: 8, scope: !81)
!265 = !DILocation(line: 186, column: 10, scope: !81)
!266 = !{!267, !267, i64 0}
!267 = !{!"float", !212, i64 0}
!268 = !DILocation(line: 180, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !1, line: 179, column: 53)
!270 = !DILocation(line: 181, column: 5, scope: !269)
!271 = !DILocation(line: 182, column: 13, scope: !269)
!272 = !DILocation(line: 182, column: 5, scope: !269)
!273 = !DILocation(line: 184, column: 3, scope: !269)
!274 = !DILocation(line: 186, column: 3, scope: !81)
!275 = !DILocation(line: 64, column: 29, scope: !106)
!276 = !DILocation(line: 64, column: 47, scope: !106)
!277 = !DILocation(line: 64, column: 58, scope: !106)
!278 = !DILocation(line: 67, column: 3, scope: !106)
!279 = !DILocation(line: 67, column: 10, scope: !106)
!280 = !DILocation(line: 67, column: 23, scope: !106)
!281 = !DILocation(line: 67, column: 35, scope: !106)
!282 = !DILocation(line: 71, column: 6, scope: !106)
!283 = !DILocation(line: 66, column: 11, scope: !106)
!284 = !DILocation(line: 72, column: 9, scope: !106)
!285 = !DILocation(line: 73, column: 12, scope: !106)
!286 = !DILocation(line: 69, column: 10, scope: !106)
!287 = !DILocation(line: 74, column: 4, scope: !106)
!288 = !DILocation(line: 75, column: 9, scope: !106)
!289 = !DILocation(line: 75, column: 3, scope: !106)
!290 = !DILocation(line: 76, column: 33, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 76, column: 9)
!292 = distinct !DILexicalBlock(scope: !106, file: !1, line: 75, column: 37)
!293 = !DILocation(line: 76, column: 41, scope: !291)
!294 = !DILocation(line: 68, column: 10, scope: !106)
!295 = !DILocation(line: 76, column: 9, scope: !291)
!296 = !DILocation(line: 76, column: 54, scope: !291)
!297 = !DILocation(line: 76, column: 9, scope: !292)
!298 = !DILocation(line: 77, column: 16, scope: !291)
!299 = !{!300, !300, i64 0}
!300 = !{!"double", !212, i64 0}
!301 = !DILocation(line: 77, column: 7, scope: !291)
!302 = !DILocation(line: 79, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !291, file: !1, line: 79, column: 11)
!304 = !DILocation(line: 79, column: 11, scope: !291)
!305 = !DILocation(line: 80, column: 10, scope: !303)
!306 = !DILocation(line: 80, column: 58, scope: !303)
!307 = !DILocation(line: 80, column: 2, scope: !303)
!308 = !DILocation(line: 84, column: 10, scope: !106)
!309 = !DILocation(line: 82, column: 3, scope: !106)
!310 = !DILocation(line: 85, column: 1, scope: !106)
!311 = !DILocation(line: 87, column: 31, scope: !135)
!312 = !DILocation(line: 87, column: 38, scope: !135)
!313 = !DILocation(line: 87, column: 51, scope: !135)
!314 = !DILocation(line: 91, column: 8, scope: !315)
!315 = distinct !DILexicalBlock(scope: !135, file: !1, line: 91, column: 8)
!316 = !DILocation(line: 92, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 92, column: 9)
!318 = distinct !DILexicalBlock(scope: !315, file: !1, line: 92, column: 9)
!319 = !DILocation(line: 91, column: 8, scope: !135)
!320 = !DILocation(line: 92, column: 9, scope: !318)
!321 = !DILocation(line: 94, column: 21, scope: !317)
!322 = !DILocation(line: 94, column: 38, scope: !317)
!323 = !DILocation(line: 94, column: 65, scope: !317)
!324 = !{!325, !267, i64 20}
!325 = !{!"", !212, i64 0, !212, i64 10, !267, i64 20}
!326 = !DILocation(line: 94, column: 56, scope: !317)
!327 = !DILocation(line: 93, column: 13, scope: !317)
!328 = !DILocation(line: 95, column: 1, scope: !135)
!329 = !DILocation(line: 117, column: 28, scope: !143)
!330 = !DILocation(line: 117, column: 37, scope: !143)
!331 = !DILocation(line: 117, column: 52, scope: !143)
!332 = !DILocation(line: 118, column: 12, scope: !143)
!333 = !DILocation(line: 118, column: 27, scope: !143)
!334 = !DILocation(line: 120, column: 10, scope: !143)
!335 = !DILocation(line: 120, column: 24, scope: !143)
!336 = !DILocation(line: 120, column: 30, scope: !143)
!337 = !DILocation(line: 126, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !143, file: !1, line: 126, column: 7)
!339 = !DILocation(line: 126, column: 7, scope: !338)
!340 = !DILocation(line: 126, column: 7, scope: !143)
!341 = !DILocation(line: 128, column: 5, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 126, column: 27)
!343 = !DILocation(line: 121, column: 9, scope: !143)
!344 = !DILocation(line: 120, column: 8, scope: !143)
!345 = !DILocation(line: 129, column: 18, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 129, column: 5)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 129, column: 5)
!348 = !DILocation(line: 129, column: 17, scope: !346)
!349 = !DILocation(line: 129, column: 5, scope: !347)
!350 = !DILocation(line: 130, column: 21, scope: !346)
!351 = !DILocation(line: 130, column: 17, scope: !346)
!352 = !DILocation(line: 130, column: 7, scope: !346)
!353 = !DILocation(line: 130, column: 20, scope: !346)
!354 = !DILocation(line: 131, column: 19, scope: !342)
!355 = !DILocation(line: 131, column: 5, scope: !342)
!356 = !DILocation(line: 131, column: 18, scope: !342)
!357 = !DILocation(line: 132, column: 5, scope: !342)
!358 = !DILocation(line: 132, column: 16, scope: !342)
!359 = !DILocation(line: 133, column: 3, scope: !342)
!360 = !DILocation(line: 136, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 136, column: 3)
!362 = distinct !DILexicalBlock(scope: !143, file: !1, line: 136, column: 3)
!363 = !DILocation(line: 136, column: 3, scope: !362)
!364 = !DILocation(line: 149, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 146, column: 39)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 146, column: 10)
!367 = distinct !DILexicalBlock(scope: !361, file: !1, line: 136, column: 28)
!368 = !DILocation(line: 137, column: 18, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 137, column: 10)
!370 = !DILocation(line: 137, column: 11, scope: !369)
!371 = !DILocation(line: 137, column: 39, scope: !369)
!372 = !DILocation(line: 137, column: 44, scope: !369)
!373 = !DILocation(line: 138, column: 4, scope: !369)
!374 = !DILocation(line: 138, column: 34, scope: !369)
!375 = !DILocation(line: 137, column: 10, scope: !367)
!376 = !DILocation(line: 140, column: 15, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !1, line: 140, column: 15)
!378 = !DILocation(line: 140, column: 35, scope: !377)
!379 = !DILocation(line: 140, column: 39, scope: !377)
!380 = !DILocation(line: 140, column: 69, scope: !377)
!381 = !DILocation(line: 140, column: 15, scope: !369)
!382 = !DILocation(line: 143, column: 14, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !1, line: 142, column: 10)
!384 = !DILocation(line: 120, column: 19, scope: !143)
!385 = !DILocation(line: 145, column: 32, scope: !367)
!386 = !DILocation(line: 145, column: 12, scope: !367)
!387 = !DILocation(line: 120, column: 14, scope: !143)
!388 = !DILocation(line: 146, column: 14, scope: !366)
!389 = !DILocation(line: 146, column: 29, scope: !366)
!390 = !DILocation(line: 146, column: 22, scope: !366)
!391 = !DILocation(line: 149, column: 21, scope: !365)
!392 = !DILocation(line: 151, column: 5, scope: !365)
!393 = !DILocation(line: 153, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !143, file: !1, line: 153, column: 7)
!395 = !DILocation(line: 153, column: 7, scope: !143)
!396 = !DILocation(line: 155, column: 25, scope: !394)
!397 = !DILocation(line: 155, column: 43, scope: !394)
!398 = !DILocation(line: 155, column: 62, scope: !394)
!399 = !DILocation(line: 154, column: 5, scope: !394)
!400 = !DILocation(line: 157, column: 35, scope: !143)
!401 = !DILocation(line: 157, column: 27, scope: !143)
!402 = !DILocation(line: 157, column: 3, scope: !143)
!403 = !DILocation(line: 51, column: 27, scope: !179)
!404 = !DILocation(line: 51, column: 36, scope: !179)
!405 = !DILocation(line: 51, column: 49, scope: !179)
!406 = !DILocation(line: 52, column: 13, scope: !179)
!407 = !DILocation(line: 52, column: 29, scope: !179)
!408 = !DILocation(line: 52, column: 41, scope: !179)
!409 = !DILocation(line: 54, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !179, file: !1, line: 54, column: 7)
!411 = !DILocation(line: 54, column: 17, scope: !410)
!412 = !DILocation(line: 54, column: 14, scope: !410)
!413 = !DILocation(line: 54, column: 7, scope: !179)
!414 = !DILocation(line: 58, column: 3, scope: !179)
!415 = !DILocation(line: 55, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !410, file: !1, line: 54, column: 27)
!417 = !DILocation(line: 56, column: 5, scope: !416)
!418 = !DILocation(line: 57, column: 3, scope: !416)
!419 = !DILocation(line: 59, column: 3, scope: !179)
!420 = !DILocation(line: 60, column: 12, scope: !179)
!421 = !DILocation(line: 60, column: 3, scope: !179)
!422 = !DILocation(line: 60, column: 4, scope: !179)
!423 = !DILocation(line: 60, column: 20, scope: !179)
!424 = !DILocation(line: 60, column: 24, scope: !179)
!425 = !DILocation(line: 61, column: 11, scope: !179)
!426 = !DILocation(line: 62, column: 1, scope: !179)
!427 = !DILocation(line: 189, column: 20, scope: !91)
!428 = !DILocation(line: 189, column: 33, scope: !91)
!429 = !DILocation(line: 189, column: 46, scope: !91)
!430 = !DILocation(line: 196, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !91, file: !1, line: 196, column: 7)
!432 = !DILocation(line: 196, column: 7, scope: !91)
!433 = !DILocation(line: 197, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 196, column: 14)
!435 = !DILocation(line: 197, column: 11, scope: !434)
!436 = !DILocation(line: 198, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !1, line: 198, column: 9)
!438 = !DILocation(line: 198, column: 9, scope: !434)
!439 = !DILocation(line: 199, column: 31, scope: !437)
!440 = !DILocation(line: 199, column: 7, scope: !437)
!441 = !DILocation(line: 202, column: 37, scope: !442)
!442 = distinct !DILexicalBlock(scope: !91, file: !1, line: 202, column: 7)
!443 = !DILocation(line: 202, column: 44, scope: !442)
!444 = !DILocation(line: 191, column: 8, scope: !91)
!445 = !DILocation(line: 202, column: 9, scope: !442)
!446 = !DILocation(line: 202, column: 7, scope: !91)
!447 = !DILocation(line: 208, column: 10, scope: !91)
!448 = !DILocation(line: 203, column: 6, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !1, line: 202, column: 52)
!450 = !DILocation(line: 204, column: 5, scope: !449)
!451 = !DILocation(line: 205, column: 13, scope: !449)
!452 = !DILocation(line: 206, column: 19, scope: !449)
!453 = !DILocation(line: 205, column: 5, scope: !449)
!454 = !DILocation(line: 207, column: 3, scope: !449)
!455 = !DILocation(line: 208, column: 3, scope: !91)
!456 = !DILocation(line: 211, column: 23, scope: !99)
!457 = !DILocation(line: 211, column: 36, scope: !99)
!458 = !DILocation(line: 211, column: 49, scope: !99)
!459 = !DILocation(line: 219, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !99, file: !1, line: 219, column: 7)
!461 = !DILocation(line: 219, column: 7, scope: !99)
!462 = !DILocation(line: 220, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !1, line: 219, column: 13)
!464 = !DILocation(line: 220, column: 10, scope: !463)
!465 = !DILocation(line: 221, column: 17, scope: !463)
!466 = !DILocation(line: 221, column: 5, scope: !463)
!467 = !DILocation(line: 217, column: 10, scope: !99)
!468 = !DILocation(line: 223, column: 17, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 223, column: 5)
!470 = distinct !DILexicalBlock(scope: !463, file: !1, line: 223, column: 5)
!471 = !DILocation(line: 223, column: 16, scope: !469)
!472 = !DILocation(line: 223, column: 5, scope: !470)
!473 = !DILocation(line: 224, column: 7, scope: !469)
!474 = !DILocation(line: 224, column: 14, scope: !469)
!475 = !DILocation(line: 224, column: 19, scope: !469)
!476 = !DILocation(line: 226, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !463, file: !1, line: 226, column: 9)
!478 = !DILocation(line: 226, column: 9, scope: !463)
!479 = !DILocation(line: 227, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 226, column: 16)
!481 = !DILocation(line: 228, column: 19, scope: !480)
!482 = !DILocation(line: 228, column: 25, scope: !480)
!483 = !DILocation(line: 228, column: 30, scope: !480)
!484 = !DILocation(line: 228, column: 7, scope: !480)
!485 = !DILocation(line: 229, column: 5, scope: !480)
!486 = !DILocation(line: 232, column: 38, scope: !487)
!487 = distinct !DILexicalBlock(scope: !99, file: !1, line: 232, column: 8)
!488 = !DILocation(line: 232, column: 44, scope: !487)
!489 = !DILocation(line: 216, column: 10, scope: !99)
!490 = !DILocation(line: 232, column: 10, scope: !487)
!491 = !DILocation(line: 232, column: 8, scope: !99)
!492 = !DILocation(line: 238, column: 10, scope: !99)
!493 = !DILocation(line: 233, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !1, line: 232, column: 51)
!495 = !DILocation(line: 234, column: 5, scope: !494)
!496 = !DILocation(line: 235, column: 13, scope: !494)
!497 = !DILocation(line: 236, column: 19, scope: !494)
!498 = !DILocation(line: 235, column: 5, scope: !494)
!499 = !DILocation(line: 237, column: 3, scope: !494)
!500 = !DILocation(line: 238, column: 3, scope: !99)
!501 = !DILocation(line: 104, column: 28, scope: !172)
!502 = !DILocation(line: 104, column: 42, scope: !172)
!503 = !DILocation(line: 106, column: 7, scope: !172)
!504 = !DILocation(line: 109, column: 9, scope: !172)
!505 = !DILocation(line: 109, column: 19, scope: !172)
!506 = !DILocation(line: 109, column: 22, scope: !172)
!507 = !DILocation(line: 109, column: 47, scope: !172)
!508 = !DILocation(line: 109, column: 34, scope: !172)
!509 = !DILocation(line: 109, column: 3, scope: !172)
!510 = !DILocation(line: 112, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !172, file: !1, line: 112, column: 7)
!512 = !DILocation(line: 112, column: 7, scope: !172)
!513 = !DILocation(line: 114, column: 3, scope: !172)
