; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rdgroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [76 x i8] c"%s atom number (index[%d]=%d) is larger than the number of atoms in %s (%d)\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"the trajectory\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rdgroup.c\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"b->index\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"*grpname\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"b->a\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Something wrong in your indexfile at group %s\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"grpnr\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"grps->index\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"Error: no groups in indexfile\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str20 = private unnamed_addr constant [35 x i8] c"Group %5d (%12s) has %5d elements\0A\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"Select between %d and %d.\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"There is one group in the index\0A\00", align 1
@.str23 = private unnamed_addr constant [9 x i8] c"index[i]\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"Select a group: \00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !249), !dbg !250
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !249), !dbg !251
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !252
  %2 = load i32* %1, align 4, !dbg !254, !tbaa !255
  %3 = add nsw i32 %2, -1, !dbg !254
  store i32 %3, i32* %1, align 4, !dbg !254, !tbaa !255
  %4 = icmp sgt i32 %2, 0, !dbg !264
  br i1 %4, label %._crit_edge, label %5, !dbg !265

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !266
  br label %10, !dbg !265

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !267
  %7 = load i32* %6, align 4, !dbg !267, !tbaa !268
  %8 = icmp sle i32 %2, %7, !dbg !269
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !270
  %or.cond = or i1 %9, %8, !dbg !271
  br i1 %or.cond, label %15, label %10, !dbg !271

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !266
  %11 = trunc i32 %_c to i8, !dbg !272
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !273
  %13 = load i8** %12, align 8, !dbg !274, !tbaa !275
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !274
  store i8* %14, i8** %12, align 8, !dbg !274, !tbaa !275
  store i8 %11, i8* %13, align 1, !dbg !276, !tbaa !277
  br label %17, !dbg !278

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !279
  br label %17, !dbg !280

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !281
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !249), !dbg !282
  %1 = icmp sgt i32 %__signo, 32, !dbg !283
  br i1 %1, label %5, label %2, !dbg !284

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !285
  %4 = shl i32 1, %3, !dbg !286
  br label %5, !dbg !284

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !284
  ret i32 %6, !dbg !287
}

; Function Attrs: nounwind optsize ssp uwtable
define void @check_index(i8* %gname, i32 %n, i32* nocapture readonly %index, i8* %traj, i32 %natoms) #4 {
  tail call void @llvm.dbg.value(metadata i8* %gname, i64 0, metadata !88, metadata !249), !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !89, metadata !249), !dbg !289
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !90, metadata !249), !dbg !290
  tail call void @llvm.dbg.value(metadata i8* %traj, i64 0, metadata !91, metadata !249), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !92, metadata !249), !dbg !292
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !249), !dbg !293
  %1 = icmp sgt i32 %n, 0, !dbg !294
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !297

.lr.ph:                                           ; preds = %0
  %2 = icmp ne i8* %gname, null, !dbg !298
  %3 = select i1 %2, i8* %gname, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), !dbg !298
  %4 = icmp ne i8* %traj, null, !dbg !300
  %5 = select i1 %4, i8* %traj, i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0), !dbg !300
  %6 = add i32 %n, -1, !dbg !297
  br label %7, !dbg !297

; <label>:7                                       ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %.pre, %._crit_edge2 ]
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !301
  %9 = load i32* %8, align 4, !dbg !301, !tbaa !302
  %10 = icmp slt i32 %9, %natoms, !dbg !303
  %.pre = add nuw nsw i64 %indvars.iv, 1, !dbg !297
  br i1 %10, label %._crit_edge2, label %11, !dbg !304

; <label>:11                                      ; preds = %7
  %12 = add nsw i32 %9, 1, !dbg !305
  %13 = trunc i64 %.pre to i32, !dbg !306
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* %3, i32 %13, i32 %12, i8* %5, i32 %natoms) #8, !dbg !306
  br label %._crit_edge2, !dbg !306

._crit_edge2:                                     ; preds = %7, %11
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !297
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !297
  br i1 %exitcond, label %._crit_edge, label %7, !dbg !297

._crit_edge:                                      ; preds = %._crit_edge2, %0
  ret void, !dbg !307
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_block* @init_index(i8* %gfile, i8*** nocapture %grpname) #4 {
  %a = alloca i32, align 4
  %ng = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %gfile, i64 0, metadata !113, metadata !249), !dbg !308
  tail call void @llvm.dbg.value(metadata i8*** %grpname, i64 0, metadata !114, metadata !249), !dbg !309
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !310
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !310
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %line, metadata !122, metadata !249), !dbg !311
  %2 = getelementptr inbounds [4096 x i8]* %str, i64 0, i64 0, !dbg !310
  call void @llvm.lifetime.start(i64 4096, i8* %2) #5, !dbg !310
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %str, metadata !127, metadata !249), !dbg !312
  %3 = tail call %struct.__sFILE* @ffopen(i8* %gfile, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !313
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %3, i64 0, metadata !115, metadata !249), !dbg !314
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 63, i32 1, i32 1056) #8, !dbg !315
  %5 = bitcast i8* %4 to %struct.t_block*, !dbg !315
  tail call void @llvm.dbg.value(metadata %struct.t_block* %5, i64 0, metadata !116, metadata !249), !dbg !316
  %6 = call i32 @get_a_line(%struct.__sFILE* %3, i8* %1, i32 4096) #8, !dbg !317
  %7 = load i8* %1, align 16, !dbg !318, !tbaa !277
  %8 = icmp eq i8 %7, 91, !dbg !320
  %9 = getelementptr inbounds i8* %4, i64 1024, !dbg !321
  %10 = bitcast i8* %9 to i32*, !dbg !321
  br i1 %8, label %11, label %87, !dbg !323

; <label>:11                                      ; preds = %0
  store i32 0, i32* %10, align 4, !dbg !324, !tbaa !325
  %12 = getelementptr inbounds i8* %4, i64 1032, !dbg !327
  %13 = bitcast i8* %12 to i32**, !dbg !327
  store i32* null, i32** %13, align 8, !dbg !328, !tbaa !329
  %14 = getelementptr inbounds i8* %4, i64 1040, !dbg !330
  %15 = bitcast i8* %14 to i32*, !dbg !330
  store i32 0, i32* %15, align 4, !dbg !331, !tbaa !332
  %16 = getelementptr inbounds i8* %4, i64 1048, !dbg !333
  %17 = bitcast i8* %16 to i32**, !dbg !333
  store i32* null, i32** %17, align 8, !dbg !334, !tbaa !335
  store i8** null, i8*** %grpname, align 8, !dbg !336, !tbaa !337
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !249), !dbg !338
  %18 = bitcast i8* %12 to i8**, !dbg !339
  %19 = bitcast i8*** %grpname to i8**, !dbg !343
  %20 = bitcast i8* %16 to i8**, !dbg !344
  br label %21, !dbg !349

; <label>:21                                      ; preds = %.loopexit, %11
  %maxentries.0 = phi i32 [ 0, %11 ], [ %maxentries.3, %.loopexit ]
  %22 = call i32 @get_header(i8* %1, i8* %2) #8, !dbg !350
  %23 = icmp eq i32 %22, 0, !dbg !350
  br i1 %23, label %.preheader, label %26, !dbg !351

.preheader:                                       ; preds = %21
  %24 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %2) #8, !dbg !352
  call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !119, metadata !249), !dbg !353
  %25 = icmp eq i32 %24, 1, !dbg !354
  br i1 %25, label %.lr.ph, label %.loopexit, !dbg !355

; <label>:26                                      ; preds = %21
  %27 = load i32* %10, align 4, !dbg !356, !tbaa !325
  %28 = add nsw i32 %27, 1, !dbg !356
  store i32 %28, i32* %10, align 4, !dbg !356, !tbaa !325
  %29 = load i8** %18, align 8, !dbg !339, !tbaa !329
  %30 = shl i32 %27, 2, !dbg !339
  %31 = add i32 %30, 8, !dbg !339
  %32 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 76, i8* %29, i32 %31) #8, !dbg !339
  store i8* %32, i8** %18, align 8, !dbg !339, !tbaa !329
  %33 = load i8** %19, align 8, !dbg !343, !tbaa !337
  %34 = load i32* %10, align 4, !dbg !343, !tbaa !325
  %35 = shl i32 %34, 3, !dbg !343
  %36 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 77, i8* %33, i32 %35) #8, !dbg !343
  store i8* %36, i8** %19, align 8, !dbg !343, !tbaa !337
  %37 = load i32* %10, align 4, !dbg !357, !tbaa !325
  %38 = icmp eq i32 %37, 1, !dbg !359
  %39 = load i32** %13, align 8, !dbg !360, !tbaa !329
  br i1 %38, label %40, label %._crit_edge, !dbg !361

; <label>:40                                      ; preds = %26
  store i32 0, i32* %39, align 4, !dbg !362, !tbaa !302
  %.pre = load i32* %10, align 4, !dbg !363, !tbaa !325
  br label %._crit_edge, !dbg !364

._crit_edge:                                      ; preds = %26, %40
  %41 = phi i32 [ %.pre, %40 ], [ %37, %26 ]
  %42 = add nsw i32 %41, -1, !dbg !365
  %43 = sext i32 %42 to i64, !dbg !366
  %44 = getelementptr inbounds i32* %39, i64 %43, !dbg !366
  %45 = load i32* %44, align 4, !dbg !366, !tbaa !302
  %46 = sext i32 %41 to i64, !dbg !367
  %47 = getelementptr inbounds i32* %39, i64 %46, !dbg !367
  store i32 %45, i32* %47, align 4, !dbg !368, !tbaa !302
  %48 = call i8* @strdup(i8* %2) #8, !dbg !369
  %49 = load i32* %10, align 4, !dbg !370, !tbaa !325
  %50 = add nsw i32 %49, -1, !dbg !371
  %51 = sext i32 %50 to i64, !dbg !372
  %52 = load i8*** %grpname, align 8, !dbg !373, !tbaa !337
  %53 = getelementptr inbounds i8** %52, i64 %51, !dbg !372
  store i8* %48, i8** %53, align 8, !dbg !374, !tbaa !337
  br label %.loopexit, !dbg !375

.lr.ph:                                           ; preds = %.preheader, %66
  %maxentries.16 = phi i32 [ %maxentries.2, %66 ], [ %maxentries.0, %.preheader ]
  %pt.05 = phi i8* [ %82, %66 ], [ %1, %.preheader ]
  %54 = load i32* %10, align 4, !dbg !376, !tbaa !325
  %55 = sext i32 %54 to i64, !dbg !377
  %56 = load i32** %13, align 8, !dbg !378, !tbaa !329
  %57 = getelementptr inbounds i32* %56, i64 %55, !dbg !377
  %58 = load i32* %57, align 4, !dbg !377, !tbaa !302
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !119, metadata !249), !dbg !353
  %59 = icmp slt i32 %58, %maxentries.16, !dbg !379
  br i1 %59, label %._crit_edge12, label %60, !dbg !380

._crit_edge12:                                    ; preds = %.lr.ph
  %.pre13 = load i32** %17, align 8, !dbg !381, !tbaa !335
  br label %66, !dbg !380

; <label>:60                                      ; preds = %.lr.ph
  %61 = add nsw i32 %maxentries.16, 100, !dbg !382
  call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !118, metadata !249), !dbg !338
  %62 = load i8** %20, align 8, !dbg !344, !tbaa !335
  %63 = shl i32 %61, 2, !dbg !344
  %64 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 88, i8* %62, i32 %63) #8, !dbg !344
  store i8* %64, i8** %20, align 8, !dbg !344, !tbaa !335
  %65 = bitcast i8* %64 to i32*
  %.pre14 = load i32** %13, align 8, !dbg !383, !tbaa !329
  br label %66, !dbg !384

; <label>:66                                      ; preds = %._crit_edge12, %60
  %67 = phi i32* [ %.pre14, %60 ], [ %56, %._crit_edge12 ]
  %68 = phi i32* [ %65, %60 ], [ %.pre13, %._crit_edge12 ]
  %maxentries.2 = phi i32 [ %61, %60 ], [ %maxentries.16, %._crit_edge12 ]
  %69 = call i32 @atoi(i8* %2) #8, !dbg !385
  %70 = add nsw i32 %69, -1, !dbg !386
  %71 = sext i32 %58 to i64, !dbg !387
  %72 = getelementptr inbounds i32* %68, i64 %71, !dbg !387
  store i32 %70, i32* %72, align 4, !dbg !388, !tbaa !302
  %73 = load i32* %10, align 4, !dbg !389, !tbaa !325
  %74 = sext i32 %73 to i64, !dbg !390
  %75 = getelementptr inbounds i32* %67, i64 %74, !dbg !390
  %76 = load i32* %75, align 4, !dbg !391, !tbaa !302
  %77 = add nsw i32 %76, 1, !dbg !391
  store i32 %77, i32* %75, align 4, !dbg !391, !tbaa !302
  %78 = load i32* %15, align 4, !dbg !392, !tbaa !332
  %79 = add nsw i32 %78, 1, !dbg !392
  store i32 %79, i32* %15, align 4, !dbg !392, !tbaa !332
  %80 = call i8* @strstr(i8* %pt.05, i8* %2) #8, !dbg !393
  %81 = call i64 @strlen(i8* %2) #8, !dbg !394
  %82 = getelementptr inbounds i8* %80, i64 %81, !dbg !395
  call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !126, metadata !249), !dbg !396
  %83 = call i32 (i8*, i8*, ...)* @sscanf(i8* %82, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %2) #8, !dbg !352
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !119, metadata !249), !dbg !353
  %84 = icmp eq i32 %83, 1, !dbg !354
  br i1 %84, label %.lr.ph, label %.loopexit, !dbg !355

.loopexit:                                        ; preds = %66, %.preheader, %._crit_edge
  %maxentries.3 = phi i32 [ %maxentries.0, %._crit_edge ], [ %maxentries.0, %.preheader ], [ %maxentries.2, %66 ]
  %85 = call i32 @get_a_line(%struct.__sFILE* %3, i8* %1, i32 4096) #8, !dbg !397
  %86 = icmp eq i32 %85, 0, !dbg !398
  br i1 %86, label %.loopexit1, label %21, !dbg !398

; <label>:87                                      ; preds = %0
  %88 = getelementptr inbounds i8* %4, i64 1040, !dbg !399
  %89 = bitcast i8* %88 to i32*, !dbg !399
  %90 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %9, i8* %88) #8, !dbg !401
  %91 = load i32* %10, align 4, !dbg !402, !tbaa !325
  %92 = add nsw i32 %91, 1, !dbg !402
  %93 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 101, i32 %92, i32 4) #8, !dbg !402
  %94 = getelementptr inbounds i8* %4, i64 1032, !dbg !402
  %95 = bitcast i8* %94 to i32**, !dbg !402
  %96 = bitcast i8* %94 to i8**, !dbg !402
  store i8* %93, i8** %96, align 8, !dbg !402, !tbaa !329
  %97 = load i32* %10, align 4, !dbg !403, !tbaa !325
  %98 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 102, i32 %97, i32 8) #8, !dbg !403
  %99 = bitcast i8*** %grpname to i8**, !dbg !403
  store i8* %98, i8** %99, align 8, !dbg !403, !tbaa !337
  %100 = load i32** %95, align 8, !dbg !404, !tbaa !329
  store i32 0, i32* %100, align 4, !dbg !405, !tbaa !302
  %101 = load i32* %89, align 4, !dbg !406, !tbaa !332
  %102 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 104, i32 %101, i32 4) #8, !dbg !406
  %103 = getelementptr inbounds i8* %4, i64 1048, !dbg !406
  %104 = bitcast i8* %103 to i32**, !dbg !406
  %105 = bitcast i8* %103 to i8**, !dbg !406
  store i8* %102, i8** %105, align 8, !dbg !406, !tbaa !335
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !249), !dbg !353
  %106 = load i32* %10, align 4, !dbg !407, !tbaa !325
  %107 = icmp sgt i32 %106, 0, !dbg !410
  br i1 %107, label %.lr.ph10, label %.loopexit1, !dbg !411

.loopexit3:                                       ; preds = %.lr.ph8, %.preheader2
  %108 = load i32* %10, align 4, !dbg !407, !tbaa !325
  %109 = sext i32 %108 to i64, !dbg !410
  %110 = icmp slt i64 %indvars.iv.next, %109, !dbg !410
  br i1 %110, label %.lr.ph10, label %.loopexit1, !dbg !411

.lr.ph10:                                         ; preds = %87, %.loopexit3
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit3 ], [ 0, %87 ]
  call void @llvm.dbg.value(metadata i32* %ng, i64 0, metadata !121, metadata !249), !dbg !412
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* %2, i32* %ng) #8, !dbg !413
  %112 = call i8* @strdup(i8* %2) #8, !dbg !415
  %113 = load i8*** %grpname, align 8, !dbg !416, !tbaa !337
  %114 = getelementptr inbounds i8** %113, i64 %indvars.iv, !dbg !417
  store i8* %112, i8** %114, align 8, !dbg !418, !tbaa !337
  %115 = load i32** %95, align 8, !dbg !419, !tbaa !329
  %116 = getelementptr inbounds i32* %115, i64 %indvars.iv, !dbg !420
  %117 = load i32* %116, align 4, !dbg !420, !tbaa !302
  call void @llvm.dbg.value(metadata i32* %ng, i64 0, metadata !121, metadata !249), !dbg !412
  %118 = load i32* %ng, align 4, !dbg !421, !tbaa !302
  %119 = add nsw i32 %118, %117, !dbg !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !411
  %120 = getelementptr inbounds i32* %115, i64 %indvars.iv.next, !dbg !423
  store i32 %119, i32* %120, align 4, !dbg !424, !tbaa !302
  %121 = load i32* %89, align 4, !dbg !425, !tbaa !332
  %122 = icmp sgt i32 %119, %121, !dbg !427
  br i1 %122, label %123, label %.preheader2, !dbg !428

; <label>:123                                     ; preds = %.lr.ph10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %2) #8, !dbg !429
  br label %.preheader2, !dbg !429

.preheader2:                                      ; preds = %123, %.lr.ph10
  call void @llvm.dbg.value(metadata i32* %ng, i64 0, metadata !121, metadata !249), !dbg !412
  %124 = load i32* %ng, align 4, !dbg !430, !tbaa !302
  %125 = icmp sgt i32 %124, 0, !dbg !433
  br i1 %125, label %.lr.ph8, label %.loopexit3, !dbg !434

.lr.ph8:                                          ; preds = %.preheader2, %.lr.ph8
  %j.07 = phi i32 [ %135, %.lr.ph8 ], [ 0, %.preheader2 ]
  call void @llvm.dbg.value(metadata i32* %a, i64 0, metadata !117, metadata !249), !dbg !435
  %126 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %a) #8, !dbg !436
  call void @llvm.dbg.value(metadata i32* %a, i64 0, metadata !117, metadata !249), !dbg !435
  %127 = load i32* %a, align 4, !dbg !438, !tbaa !302
  %128 = load i32** %95, align 8, !dbg !439, !tbaa !329
  %129 = getelementptr inbounds i32* %128, i64 %indvars.iv, !dbg !440
  %130 = load i32* %129, align 4, !dbg !440, !tbaa !302
  %131 = add nsw i32 %130, %j.07, !dbg !441
  %132 = sext i32 %131 to i64, !dbg !442
  %133 = load i32** %104, align 8, !dbg !443, !tbaa !335
  %134 = getelementptr inbounds i32* %133, i64 %132, !dbg !442
  store i32 %127, i32* %134, align 4, !dbg !444, !tbaa !302
  %135 = add nuw nsw i32 %j.07, 1, !dbg !445
  call void @llvm.dbg.value(metadata i32 %135, i64 0, metadata !120, metadata !249), !dbg !446
  call void @llvm.dbg.value(metadata i32* %ng, i64 0, metadata !121, metadata !249), !dbg !412
  %136 = load i32* %ng, align 4, !dbg !430, !tbaa !302
  %137 = icmp slt i32 %135, %136, !dbg !433
  br i1 %137, label %.lr.ph8, label %.loopexit3, !dbg !434

.loopexit1:                                       ; preds = %.loopexit3, %.loopexit, %87
  call void @ffclose(%struct.__sFILE* %3) #8, !dbg !447
  call void @llvm.lifetime.end(i64 4096, i8* %2) #5, !dbg !448
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !448
  ret %struct.t_block* %5, !dbg !448
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @get_a_line(%struct.__sFILE*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @get_header(i8*, i8*) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #6

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @rd_index(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #4 {
  %gnames = alloca i8**, align 8
  tail call void @llvm.dbg.value(metadata i8* %statfile, i64 0, metadata !134, metadata !249), !dbg !449
  tail call void @llvm.dbg.value(metadata i32 %ngrps, i64 0, metadata !135, metadata !249), !dbg !450
  tail call void @llvm.dbg.value(metadata i32* %isize, i64 0, metadata !136, metadata !249), !dbg !451
  tail call void @llvm.dbg.value(metadata i32** %index, i64 0, metadata !137, metadata !249), !dbg !452
  tail call void @llvm.dbg.value(metadata i8** %grpnames, i64 0, metadata !138, metadata !249), !dbg !453
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 204, i32 %ngrps, i32 4) #8, !dbg !454
  %2 = bitcast i8* %1 to i32*, !dbg !454
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !141, metadata !249), !dbg !455
  %3 = icmp eq i8* %statfile, null, !dbg !456
  br i1 %3, label %4, label %5, !dbg !458

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !459
  br label %5, !dbg !459

; <label>:5                                       ; preds = %0, %4
  tail call void @llvm.dbg.value(metadata i8*** %gnames, i64 0, metadata !139, metadata !249), !dbg !460
  %6 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #9, !dbg !461
  tail call void @llvm.dbg.value(metadata %struct.t_block* %6, i64 0, metadata !140, metadata !249), !dbg !462
  tail call void @llvm.dbg.value(metadata i8*** %gnames, i64 0, metadata !139, metadata !249), !dbg !460
  %7 = load i8*** %gnames, align 8, !dbg !463, !tbaa !337
  tail call fastcc void @rd_groups(%struct.t_block* %6, i8** %7, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %2) #9, !dbg !464
  ret void, !dbg !465
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @rd_groups(%struct.t_block* nocapture readonly %grps, i8** nocapture readonly %grpname, i8** nocapture %gnames, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i32* %grpnr) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %grps, i64 0, metadata !230, metadata !249), !dbg !466
  tail call void @llvm.dbg.value(metadata i8** %grpname, i64 0, metadata !231, metadata !249), !dbg !467
  tail call void @llvm.dbg.value(metadata i8** %gnames, i64 0, metadata !232, metadata !249), !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %ngrps, i64 0, metadata !233, metadata !249), !dbg !469
  tail call void @llvm.dbg.value(metadata i32* %isize, i64 0, metadata !234, metadata !249), !dbg !470
  tail call void @llvm.dbg.value(metadata i32** %index, i64 0, metadata !235, metadata !249), !dbg !471
  tail call void @llvm.dbg.value(metadata i32* %grpnr, i64 0, metadata !236, metadata !249), !dbg !472
  %1 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 1, !dbg !473
  %2 = load i32* %1, align 4, !dbg !473, !tbaa !325
  %3 = icmp eq i32 %2, 0, !dbg !475
  br i1 %3, label %4, label %.preheader1, !dbg !476

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0)) #8, !dbg !477
  %.pre = load i32* %1, align 4, !dbg !478, !tbaa !325
  br label %.preheader1, !dbg !477

.preheader1:                                      ; preds = %4, %0
  %5 = phi i32 [ %.pre, %4 ], [ %2, %0 ]
  %6 = icmp sgt i32 %5, 0, !dbg !481
  br i1 %6, label %.lr.ph7, label %.preheader, !dbg !482

.lr.ph7:                                          ; preds = %.preheader1
  %7 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2, !dbg !483
  br label %13, !dbg !482

.preheader:                                       ; preds = %13, %.preheader1
  %8 = phi i32 [ %5, %.preheader1 ], [ %25, %13 ]
  %9 = icmp sgt i32 %ngrps, 0, !dbg !484
  br i1 %9, label %.lr.ph4, label %._crit_edge5, !dbg !487

.lr.ph4:                                          ; preds = %.preheader
  %10 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2, !dbg !488
  %11 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 4, !dbg !490
  %12 = add i32 %ngrps, -1, !dbg !487
  br label %28, !dbg !487

; <label>:13                                      ; preds = %.lr.ph7, %13
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %13 ]
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !493, !tbaa !337
  %15 = getelementptr inbounds i8** %grpname, i64 %indvars.iv10, !dbg !494
  %16 = load i8** %15, align 8, !dbg !494, !tbaa !337
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !482
  %17 = load i32** %7, align 8, !dbg !483, !tbaa !329
  %18 = getelementptr inbounds i32* %17, i64 %indvars.iv.next11, !dbg !495
  %19 = load i32* %18, align 4, !dbg !495, !tbaa !302
  %20 = getelementptr inbounds i32* %17, i64 %indvars.iv10, !dbg !496
  %21 = load i32* %20, align 4, !dbg !496, !tbaa !302
  %22 = sub nsw i32 %19, %21, !dbg !497
  %23 = trunc i64 %indvars.iv10 to i32, !dbg !498
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i32 %23, i8* %16, i32 %22) #8, !dbg !498
  %25 = load i32* %1, align 4, !dbg !478, !tbaa !325
  %26 = sext i32 %25 to i64, !dbg !481
  %27 = icmp slt i64 %indvars.iv.next11, %26, !dbg !481
  br i1 %27, label %13, label %.preheader, !dbg !482

; <label>:28                                      ; preds = %._crit_edge12, %.lr.ph4
  %29 = phi i32 [ %8, %.lr.ph4 ], [ %.pre13, %._crit_edge12 ]
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %._crit_edge12 ]
  %30 = icmp sgt i32 %29, 1, !dbg !499
  br i1 %30, label %.critedge.preheader, label %49, !dbg !501

.critedge.preheader:                              ; preds = %28
  %31 = getelementptr inbounds i32* %grpnr, i64 %indvars.iv8, !dbg !502
  br label %.critedge, !dbg !502

.critedge.critedge:                               ; preds = %.critedge
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !504, !tbaa !337
  %33 = load i32* %1, align 4, !dbg !506, !tbaa !325
  %34 = add nsw i32 %33, -1, !dbg !507
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %34) #8, !dbg !508
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %.thread, %.critedge.preheader
  tail call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !244, metadata !249) #5, !dbg !509
  %36 = load %struct.__sFILE** @__stderrp, align 8, !dbg !511, !tbaa !337
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %36) #5, !dbg !512
  %38 = tail call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %31) #8, !dbg !513
  %39 = load i32* %31, align 4, !dbg !514, !tbaa !302
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !239, metadata !249), !dbg !515
  %40 = icmp slt i32 %39, 0, !dbg !516
  br i1 %40, label %.critedge.critedge, label %41, !dbg !517

; <label>:41                                      ; preds = %.critedge
  %42 = load i32* %1, align 4, !dbg !518, !tbaa !325
  %43 = icmp slt i32 %39, %42, !dbg !519
  br i1 %43, label %.thread, label %..thread_crit_edge, !dbg !520

..thread_crit_edge:                               ; preds = %41
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !504, !tbaa !337
  %45 = add nsw i32 %42, -1, !dbg !507
  %46 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %45) #8, !dbg !508
  %.pre14 = load i32* %1, align 4, !dbg !521, !tbaa !325
  br label %.thread, !dbg !522

.thread:                                          ; preds = %..thread_crit_edge, %41
  %47 = phi i32 [ %.pre14, %..thread_crit_edge ], [ %42, %41 ]
  %48 = icmp slt i32 %39, %47, !dbg !523
  br i1 %48, label %.loopexit, label %.critedge, !dbg !524

; <label>:49                                      ; preds = %28
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !525, !tbaa !337
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %50), !dbg !527
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !239, metadata !249), !dbg !515
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %49
  %gnr1.0 = phi i32 [ 0, %49 ], [ %39, %.thread ]
  %52 = sext i32 %gnr1.0 to i64, !dbg !528
  %53 = getelementptr inbounds i8** %grpname, i64 %52, !dbg !528
  %54 = load i8** %53, align 8, !dbg !528, !tbaa !337
  %55 = tail call i8* @strdup(i8* %54) #8, !dbg !529
  %56 = getelementptr inbounds i8** %gnames, i64 %indvars.iv8, !dbg !530
  store i8* %55, i8** %56, align 8, !dbg !531, !tbaa !337
  %57 = add nsw i32 %gnr1.0, 1, !dbg !532
  %58 = sext i32 %57 to i64, !dbg !533
  %59 = load i32** %10, align 8, !dbg !488, !tbaa !329
  %60 = getelementptr inbounds i32* %59, i64 %58, !dbg !533
  %61 = load i32* %60, align 4, !dbg !533, !tbaa !302
  %62 = getelementptr inbounds i32* %59, i64 %52, !dbg !534
  %63 = load i32* %62, align 4, !dbg !534, !tbaa !302
  %64 = sub nsw i32 %61, %63, !dbg !535
  %65 = getelementptr inbounds i32* %isize, i64 %indvars.iv8, !dbg !536
  store i32 %64, i32* %65, align 4, !dbg !537, !tbaa !302
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 191, i32 %64, i32 4) #8, !dbg !538
  %67 = getelementptr inbounds i32** %index, i64 %indvars.iv8, !dbg !538
  %68 = bitcast i32** %67 to i8**, !dbg !538
  store i8* %66, i8** %68, align 8, !dbg !538, !tbaa !337
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !238, metadata !249), !dbg !539
  %69 = load i32* %65, align 4, !dbg !540, !tbaa !302
  %70 = icmp sgt i32 %69, 0, !dbg !541
  %71 = bitcast i8* %66 to i32*
  br i1 %70, label %.lr.ph, label %._crit_edge, !dbg !542

.lr.ph:                                           ; preds = %.loopexit
  %72 = load i32** %10, align 8, !dbg !543, !tbaa !329
  %73 = getelementptr inbounds i32* %72, i64 %52, !dbg !544
  %74 = load i32** %11, align 8, !dbg !490, !tbaa !335
  br label %75, !dbg !542

; <label>:75                                      ; preds = %.lr.ph, %75
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %75 ]
  %76 = load i32* %73, align 4, !dbg !544, !tbaa !302
  %77 = trunc i64 %indvars.iv to i32, !dbg !545
  %78 = add nsw i32 %76, %77, !dbg !545
  %79 = sext i32 %78 to i64, !dbg !546
  %80 = getelementptr inbounds i32* %74, i64 %79, !dbg !546
  %81 = load i32* %80, align 4, !dbg !546, !tbaa !302
  %82 = getelementptr inbounds i32* %71, i64 %indvars.iv, !dbg !547
  store i32 %81, i32* %82, align 4, !dbg !548, !tbaa !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !542
  %83 = load i32* %65, align 4, !dbg !540, !tbaa !302
  %84 = sext i32 %83 to i64, !dbg !541
  %85 = icmp slt i64 %indvars.iv.next, %84, !dbg !541
  br i1 %85, label %75, label %._crit_edge, !dbg !542

._crit_edge:                                      ; preds = %75, %.loopexit
  %lftr.wideiv = trunc i64 %indvars.iv8 to i32, !dbg !487
  %exitcond = icmp eq i32 %lftr.wideiv, %12, !dbg !487
  br i1 %exitcond, label %._crit_edge5, label %._crit_edge12, !dbg !487

._crit_edge12:                                    ; preds = %._crit_edge
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !487
  %.pre13 = load i32* %1, align 4, !dbg !549, !tbaa !325
  br label %28, !dbg !487

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader
  ret void, !dbg !550
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rd_index_nrs(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames, i32* %grpnr) #4 {
  %gnames = alloca i8**, align 8
  tail call void @llvm.dbg.value(metadata i8* %statfile, i64 0, metadata !146, metadata !249), !dbg !551
  tail call void @llvm.dbg.value(metadata i32 %ngrps, i64 0, metadata !147, metadata !249), !dbg !552
  tail call void @llvm.dbg.value(metadata i32* %isize, i64 0, metadata !148, metadata !249), !dbg !553
  tail call void @llvm.dbg.value(metadata i32** %index, i64 0, metadata !149, metadata !249), !dbg !554
  tail call void @llvm.dbg.value(metadata i8** %grpnames, i64 0, metadata !150, metadata !249), !dbg !555
  tail call void @llvm.dbg.value(metadata i32* %grpnr, i64 0, metadata !151, metadata !249), !dbg !556
  %1 = icmp eq i8* %statfile, null, !dbg !557
  br i1 %1, label %2, label %3, !dbg !559

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !560
  br label %3, !dbg !560

; <label>:3                                       ; preds = %0, %2
  tail call void @llvm.dbg.value(metadata i8*** %gnames, i64 0, metadata !152, metadata !249), !dbg !561
  %4 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #9, !dbg !562
  tail call void @llvm.dbg.value(metadata %struct.t_block* %4, i64 0, metadata !153, metadata !249), !dbg !563
  tail call void @llvm.dbg.value(metadata i8*** %gnames, i64 0, metadata !152, metadata !249), !dbg !561
  %5 = load i8*** %gnames, align 8, !dbg !564, !tbaa !337
  tail call fastcc void @rd_groups(%struct.t_block* %4, i8** %5, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %grpnr) #9, !dbg !565
  ret void, !dbg !566
}

; Function Attrs: nounwind optsize ssp uwtable
define void @get_index(%struct.t_atoms* %atoms, i8* %fnm, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !217, metadata !249), !dbg !567
  tail call void @llvm.dbg.value(metadata i8* %fnm, i64 0, metadata !218, metadata !249), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %ngrps, i64 0, metadata !219, metadata !249), !dbg !569
  tail call void @llvm.dbg.value(metadata i32* %isize, i64 0, metadata !220, metadata !249), !dbg !570
  tail call void @llvm.dbg.value(metadata i32** %index, i64 0, metadata !221, metadata !249), !dbg !571
  tail call void @llvm.dbg.value(metadata i8** %grpnames, i64 0, metadata !222, metadata !249), !dbg !572
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 231, i32 %ngrps, i32 4) #8, !dbg !573
  %2 = bitcast i8* %1 to i32*, !dbg !573
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !225, metadata !249), !dbg !574
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 232, i32 1, i32 8) #8, !dbg !575
  %4 = bitcast i8* %3 to i8***, !dbg !575
  tail call void @llvm.dbg.value(metadata i8*** %4, i64 0, metadata !223, metadata !249), !dbg !576
  %5 = icmp eq i8* %fnm, null, !dbg !577
  br i1 %5, label %8, label %6, !dbg !579

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.t_block* @init_index(i8* %fnm, i8*** %4) #9, !dbg !580
  tail call void @llvm.dbg.value(metadata %struct.t_block* %7, i64 0, metadata !224, metadata !249), !dbg !582
  br label %14, !dbg !583

; <label>:8                                       ; preds = %0
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 237, i32 1, i32 1056) #8, !dbg !584
  %10 = bitcast i8* %9 to %struct.t_block*, !dbg !584
  tail call void @llvm.dbg.value(metadata %struct.t_block* %10, i64 0, metadata !224, metadata !249), !dbg !582
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 238, i32 1, i32 4) #8, !dbg !586
  %12 = getelementptr inbounds i8* %9, i64 1032, !dbg !586
  %13 = bitcast i8* %12 to i8**, !dbg !586
  store i8* %11, i8** %13, align 8, !dbg !586, !tbaa !329
  tail call void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %10, i8*** %4, i32 0, i32 0) #8, !dbg !587
  br label %14

; <label>:14                                      ; preds = %8, %6
  %grps.0 = phi %struct.t_block* [ %7, %6 ], [ %10, %8 ]
  %15 = load i8*** %4, align 8, !dbg !588, !tbaa !337
  tail call fastcc void @rd_groups(%struct.t_block* %grps.0, i8** %15, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %2) #9, !dbg !589
  ret void, !dbg !590
}

; Function Attrs: optsize
declare void @analyse(%struct.t_atoms*, %struct.t_block*, i8***, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!245, !246, !247}
!llvm.ident = !{!248}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rdgroup.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !{!7, !75, !81, !94, !128, !142, !154, !226, !240}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !15)
!15 = !{!16, !19, !20, !21, !23, !24, !29, !30, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !14, file: !8, line: 123, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !14, file: !8, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !14, file: !8, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !8, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !14, file: !8, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !14, file: !8, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !8, line: 89, baseType: !17, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !8, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !14, file: !8, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !14, file: !8, line: 132, baseType: !5, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !14, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!11, !5}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !14, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !5, !39, !11}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !14, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !44, !11}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !14, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !5, !54, !11}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !14, file: !8, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !14, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !14, file: !8, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !14, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !14, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !14, file: !8, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !14, file: !8, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !11)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !12)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!11, !11}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !11)
!81 = !DISubprogram(name: "check_index", scope: !1, file: !1, line: 43, type: !82, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32*, i8*, i32)* @check_index, variables: !87)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !39, !11, !84, !39, !11}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !86, line: 73, baseType: !11)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gname", arg: 1, scope: !81, file: !1, line: 43, type: !39)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !81, file: !1, line: 43, type: !11)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !81, file: !1, line: 43, type: !84)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traj", arg: 4, scope: !81, file: !1, line: 43, type: !39)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 5, scope: !81, file: !1, line: 43, type: !11)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 45, type: !11)
!94 = !DISubprogram(name: "init_index", scope: !1, file: !1, line: 54, type: !95, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_block* (i8*, i8***)* @init_index, variables: !112)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !39, !110}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !99, line: 52, baseType: !100)
!99 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!100 = !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 36, size: 8448, align: 64, elements: !101)
!101 = !{!102, !106, !107, !108, !109}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !100, file: !99, line: 37, baseType: !103, size: 8192, align: 32)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, align: 32, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !100, file: !99, line: 43, baseType: !11, size: 32, align: 32, offset: 8192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !100, file: !99, line: 44, baseType: !84, size: 64, align: 64, offset: 8256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !100, file: !99, line: 45, baseType: !11, size: 32, align: 32, offset: 8320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !100, file: !99, line: 46, baseType: !84, size: 64, align: 64, offset: 8384)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !126, !127}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gfile", arg: 1, scope: !94, file: !1, line: 54, type: !39)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpname", arg: 2, scope: !94, file: !1, line: 54, type: !110)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !94, file: !1, line: 56, type: !12)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !94, file: !1, line: 57, type: !97)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !94, file: !1, line: 58, type: !11)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxentries", scope: !94, file: !1, line: 58, type: !11)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !94, file: !1, line: 59, type: !11)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !94, file: !1, line: 59, type: !11)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ng", scope: !94, file: !1, line: 59, type: !11)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !94, file: !1, line: 60, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 4096)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !94, file: !1, line: 60, type: !39)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !94, file: !1, line: 60, type: !123)
!128 = !DISubprogram(name: "rd_index", scope: !1, file: !1, line: 197, type: !129, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32*, i32**, i8**)* @rd_index, variables: !133)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !39, !11, !131, !132, !111}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statfile", arg: 1, scope: !128, file: !1, line: 197, type: !39)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrps", arg: 2, scope: !128, file: !1, line: 197, type: !11)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isize", arg: 3, scope: !128, file: !1, line: 197, type: !131)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !128, file: !1, line: 198, type: !132)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpnames", arg: 5, scope: !128, file: !1, line: 198, type: !111)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gnames", scope: !128, file: !1, line: 200, type: !111)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grps", scope: !128, file: !1, line: 201, type: !97)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grpnr", scope: !128, file: !1, line: 202, type: !131)
!142 = !DISubprogram(name: "rd_index_nrs", scope: !1, file: !1, line: 211, type: !143, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32*, i32**, i8**, i32*)* @rd_index_nrs, variables: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !39, !11, !131, !132, !111, !131}
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "statfile", arg: 1, scope: !142, file: !1, line: 211, type: !39)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrps", arg: 2, scope: !142, file: !1, line: 211, type: !11)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isize", arg: 3, scope: !142, file: !1, line: 211, type: !131)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !142, file: !1, line: 212, type: !132)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpnames", arg: 5, scope: !142, file: !1, line: 212, type: !111)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpnr", arg: 6, scope: !142, file: !1, line: 212, type: !131)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gnames", scope: !142, file: !1, line: 214, type: !111)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grps", scope: !142, file: !1, line: 215, type: !97)
!154 = !DISubprogram(name: "get_index", scope: !1, file: !1, line: 224, type: !155, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*, i8*, i32, i32*, i32**, i8**)* @get_index, variables: !216)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !157, !39, !11, !131, !132, !111}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !159, line: 94, baseType: !160)
!159 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!160 = !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 75, size: 10240, align: 64, elements: !161)
!161 = !{!162, !163, !184, !185, !186, !187, !188, !189, !190, !191, !192, !199}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !160, file: !159, line: 76, baseType: !11, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !160, file: !159, line: 77, baseType: !164, size: 64, align: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !159, line: 57, baseType: !166)
!166 = !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 48, size: 320, align: 32, elements: !167)
!167 = !{!168, !171, !172, !173, !174, !176, !177, !178, !179, !183}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !166, file: !159, line: 49, baseType: !169, size: 32, align: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !86, line: 87, baseType: !170)
!170 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !166, file: !159, line: 49, baseType: !169, size: 32, align: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !166, file: !159, line: 50, baseType: !169, size: 32, align: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !166, file: !159, line: 50, baseType: !169, size: 32, align: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !159, line: 51, baseType: !175, size: 16, align: 16, offset: 128)
!175 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !166, file: !159, line: 52, baseType: !175, size: 16, align: 16, offset: 144)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !166, file: !159, line: 53, baseType: !11, size: 32, align: 32, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !166, file: !159, line: 54, baseType: !11, size: 32, align: 32, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !166, file: !159, line: 55, baseType: !180, size: 72, align: 8, offset: 224)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 72, align: 8, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 9)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !166, file: !159, line: 56, baseType: !18, size: 8, align: 8, offset: 296)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !160, file: !159, line: 80, baseType: !110, size: 64, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !160, file: !159, line: 82, baseType: !110, size: 64, align: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !160, file: !159, line: 84, baseType: !110, size: 64, align: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !160, file: !159, line: 86, baseType: !11, size: 32, align: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !160, file: !159, line: 87, baseType: !110, size: 64, align: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !160, file: !159, line: 89, baseType: !11, size: 32, align: 32, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !160, file: !159, line: 90, baseType: !110, size: 64, align: 64, offset: 512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !160, file: !159, line: 91, baseType: !98, size: 8448, align: 64, offset: 576)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !160, file: !159, line: 92, baseType: !193, size: 1152, align: 64, offset: 9024)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1152, align: 64, elements: !181)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !159, line: 73, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 70, size: 128, align: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !195, file: !159, line: 71, baseType: !11, size: 32, align: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !195, file: !159, line: 72, baseType: !131, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !160, file: !159, line: 93, baseType: !200, size: 64, align: 64, offset: 10176)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !159, line: 68, baseType: !202)
!202 = !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 59, size: 416, align: 32, elements: !203)
!203 = !{!204, !205, !206, !207, !211, !212, !213, !214}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !159, line: 60, baseType: !11, size: 32, align: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !202, file: !159, line: 61, baseType: !11, size: 32, align: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !202, file: !159, line: 62, baseType: !4, size: 8, align: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !202, file: !159, line: 63, baseType: !208, size: 48, align: 8, offset: 72)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 6)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !202, file: !159, line: 64, baseType: !169, size: 32, align: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !202, file: !159, line: 65, baseType: !169, size: 32, align: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !202, file: !159, line: 66, baseType: !11, size: 32, align: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !202, file: !159, line: 67, baseType: !215, size: 192, align: 32, offset: 224)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, align: 32, elements: !209)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !154, file: !1, line: 224, type: !157)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnm", arg: 2, scope: !154, file: !1, line: 224, type: !39)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrps", arg: 3, scope: !154, file: !1, line: 224, type: !11)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isize", arg: 4, scope: !154, file: !1, line: 225, type: !131)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 5, scope: !154, file: !1, line: 225, type: !132)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpnames", arg: 6, scope: !154, file: !1, line: 225, type: !111)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gnames", scope: !154, file: !1, line: 227, type: !110)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grps", scope: !154, file: !1, line: 228, type: !97)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grpnr", scope: !154, file: !1, line: 229, type: !131)
!226 = !DISubprogram(name: "rd_groups", scope: !1, file: !1, line: 168, type: !227, isLocal: true, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*, i8**, i8**, i32, i32*, i32**, i32*)* @rd_groups, variables: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !97, !111, !111, !11, !131, !132, !131}
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 1, scope: !226, file: !1, line: 168, type: !97)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpname", arg: 2, scope: !226, file: !1, line: 168, type: !111)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gnames", arg: 3, scope: !226, file: !1, line: 168, type: !111)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ngrps", arg: 4, scope: !226, file: !1, line: 169, type: !11)
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isize", arg: 5, scope: !226, file: !1, line: 169, type: !131)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 6, scope: !226, file: !1, line: 169, type: !132)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grpnr", arg: 7, scope: !226, file: !1, line: 169, type: !131)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !226, file: !1, line: 171, type: !11)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !226, file: !1, line: 171, type: !11)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gnr1", scope: !226, file: !1, line: 171, type: !11)
!240 = !DISubprogram(name: "qgroup", scope: !1, file: !1, line: 123, type: !241, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, variables: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!11, !131}
!243 = !{!244}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !240, file: !1, line: 123, type: !131)
!245 = !{i32 2, !"Dwarf Version", i32 2}
!246 = !{i32 2, !"Debug Info Version", i32 700000003}
!247 = !{i32 1, !"PIC Level", i32 2}
!248 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!249 = !DIExpression()
!250 = !DILocation(line: 348, column: 40, scope: !7)
!251 = !DILocation(line: 348, column: 50, scope: !7)
!252 = !DILocation(line: 349, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!254 = !DILocation(line: 349, column: 6, scope: !253)
!255 = !{!256, !260, i64 12}
!256 = !{!"__sFILE", !257, i64 0, !260, i64 8, !260, i64 12, !261, i64 16, !261, i64 18, !262, i64 24, !260, i64 40, !257, i64 48, !257, i64 56, !257, i64 64, !257, i64 72, !257, i64 80, !262, i64 88, !257, i64 104, !260, i64 112, !258, i64 116, !258, i64 119, !262, i64 120, !260, i64 136, !263, i64 144}
!257 = !{!"any pointer", !258, i64 0}
!258 = !{!"omnipotent char", !259, i64 0}
!259 = !{!"Simple C/C++ TBAA"}
!260 = !{!"int", !258, i64 0}
!261 = !{!"short", !258, i64 0}
!262 = !{!"__sbuf", !257, i64 0, !260, i64 8}
!263 = !{!"long long", !258, i64 0}
!264 = !DILocation(line: 349, column: 15, scope: !253)
!265 = !DILocation(line: 349, column: 20, scope: !253)
!266 = !DILocation(line: 350, column: 10, scope: !253)
!267 = !DILocation(line: 349, column: 38, scope: !253)
!268 = !{!256, !260, i64 40}
!269 = !DILocation(line: 349, column: 31, scope: !253)
!270 = !DILocation(line: 349, column: 59, scope: !253)
!271 = !DILocation(line: 349, column: 47, scope: !253)
!272 = !DILocation(line: 350, column: 23, scope: !253)
!273 = !DILocation(line: 350, column: 16, scope: !253)
!274 = !DILocation(line: 350, column: 18, scope: !253)
!275 = !{!256, !257, i64 0}
!276 = !DILocation(line: 350, column: 21, scope: !253)
!277 = !{!258, !258, i64 0}
!278 = !DILocation(line: 350, column: 3, scope: !253)
!279 = !DILocation(line: 352, column: 11, scope: !253)
!280 = !DILocation(line: 352, column: 3, scope: !253)
!281 = !DILocation(line: 353, column: 1, scope: !7)
!282 = !DILocation(line: 114, column: 15, scope: !75)
!283 = !DILocation(line: 116, column: 20, scope: !75)
!284 = !DILocation(line: 116, column: 12, scope: !75)
!285 = !DILocation(line: 116, column: 57, scope: !75)
!286 = !DILocation(line: 116, column: 45, scope: !75)
!287 = !DILocation(line: 116, column: 5, scope: !75)
!288 = !DILocation(line: 43, column: 24, scope: !81)
!289 = !DILocation(line: 43, column: 34, scope: !81)
!290 = !DILocation(line: 43, column: 44, scope: !81)
!291 = !DILocation(line: 43, column: 58, scope: !81)
!292 = !DILocation(line: 43, column: 67, scope: !81)
!293 = !DILocation(line: 45, column: 7, scope: !81)
!294 = !DILocation(line: 47, column: 13, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 47, column: 3)
!296 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 3)
!297 = !DILocation(line: 47, column: 3, scope: !296)
!298 = !DILocation(line: 50, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 48, column: 9)
!300 = !DILocation(line: 51, column: 5, scope: !299)
!301 = !DILocation(line: 48, column: 9, scope: !299)
!302 = !{!260, !260, i64 0}
!303 = !DILocation(line: 48, column: 18, scope: !299)
!304 = !DILocation(line: 48, column: 9, scope: !295)
!305 = !DILocation(line: 50, column: 42, scope: !299)
!306 = !DILocation(line: 49, column: 7, scope: !299)
!307 = !DILocation(line: 52, column: 1, scope: !81)
!308 = !DILocation(line: 54, column: 27, scope: !94)
!309 = !DILocation(line: 54, column: 42, scope: !94)
!310 = !DILocation(line: 60, column: 3, scope: !94)
!311 = !DILocation(line: 60, column: 12, scope: !94)
!312 = !DILocation(line: 60, column: 29, scope: !94)
!313 = !DILocation(line: 62, column: 6, scope: !94)
!314 = !DILocation(line: 56, column: 13, scope: !94)
!315 = !DILocation(line: 63, column: 3, scope: !94)
!316 = !DILocation(line: 57, column: 13, scope: !94)
!317 = !DILocation(line: 64, column: 3, scope: !94)
!318 = !DILocation(line: 65, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !94, file: !1, line: 65, column: 8)
!320 = !DILocation(line: 65, column: 15, scope: !319)
!321 = !DILocation(line: 67, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 65, column: 23)
!323 = !DILocation(line: 65, column: 8, scope: !94)
!324 = !DILocation(line: 67, column: 10, scope: !322)
!325 = !{!326, !260, i64 1024}
!326 = !{!"", !258, i64 0, !260, i64 1024, !257, i64 1032, !260, i64 1040, !257, i64 1048}
!327 = !DILocation(line: 68, column: 8, scope: !322)
!328 = !DILocation(line: 68, column: 13, scope: !322)
!329 = !{!326, !257, i64 1032}
!330 = !DILocation(line: 69, column: 8, scope: !322)
!331 = !DILocation(line: 69, column: 11, scope: !322)
!332 = !{!326, !260, i64 1040}
!333 = !DILocation(line: 70, column: 8, scope: !322)
!334 = !DILocation(line: 70, column: 9, scope: !322)
!335 = !{!326, !257, i64 1048}
!336 = !DILocation(line: 71, column: 13, scope: !322)
!337 = !{!257, !257, i64 0}
!338 = !DILocation(line: 58, column: 14, scope: !94)
!339 = !DILocation(line: 76, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 74, column: 33)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 74, column: 11)
!342 = distinct !DILexicalBlock(scope: !322, file: !1, line: 73, column: 8)
!343 = !DILocation(line: 77, column: 2, scope: !340)
!344 = !DILocation(line: 88, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 86, column: 23)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 86, column: 8)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 84, column: 39)
!348 = distinct !DILexicalBlock(scope: !341, file: !1, line: 82, column: 14)
!349 = !DILocation(line: 73, column: 5, scope: !322)
!350 = !DILocation(line: 74, column: 11, scope: !341)
!351 = !DILocation(line: 74, column: 11, scope: !342)
!352 = !DILocation(line: 84, column: 12, scope: !348)
!353 = !DILocation(line: 59, column: 12, scope: !94)
!354 = !DILocation(line: 84, column: 33, scope: !348)
!355 = !DILocation(line: 84, column: 2, scope: !348)
!356 = !DILocation(line: 75, column: 7, scope: !340)
!357 = !DILocation(line: 78, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !340, file: !1, line: 78, column: 6)
!359 = !DILocation(line: 78, column: 11, scope: !358)
!360 = !DILocation(line: 79, column: 7, scope: !358)
!361 = !DILocation(line: 78, column: 6, scope: !340)
!362 = !DILocation(line: 79, column: 15, scope: !358)
!363 = !DILocation(line: 80, column: 30, scope: !340)
!364 = !DILocation(line: 79, column: 4, scope: !358)
!365 = !DILocation(line: 80, column: 32, scope: !340)
!366 = !DILocation(line: 80, column: 18, scope: !340)
!367 = !DILocation(line: 80, column: 2, scope: !340)
!368 = !DILocation(line: 80, column: 17, scope: !340)
!369 = !DILocation(line: 81, column: 22, scope: !340)
!370 = !DILocation(line: 81, column: 16, scope: !340)
!371 = !DILocation(line: 81, column: 18, scope: !340)
!372 = !DILocation(line: 81, column: 2, scope: !340)
!373 = !DILocation(line: 81, column: 3, scope: !340)
!374 = !DILocation(line: 81, column: 21, scope: !340)
!375 = !DILocation(line: 82, column: 7, scope: !340)
!376 = !DILocation(line: 85, column: 18, scope: !347)
!377 = !DILocation(line: 85, column: 6, scope: !347)
!378 = !DILocation(line: 85, column: 9, scope: !347)
!379 = !DILocation(line: 86, column: 9, scope: !346)
!380 = !DILocation(line: 86, column: 8, scope: !347)
!381 = !DILocation(line: 90, column: 7, scope: !347)
!382 = !DILocation(line: 87, column: 16, scope: !345)
!383 = !DILocation(line: 91, column: 7, scope: !347)
!384 = !DILocation(line: 89, column: 4, scope: !345)
!385 = !DILocation(line: 90, column: 12, scope: !347)
!386 = !DILocation(line: 90, column: 21, scope: !347)
!387 = !DILocation(line: 90, column: 4, scope: !347)
!388 = !DILocation(line: 90, column: 11, scope: !347)
!389 = !DILocation(line: 91, column: 16, scope: !347)
!390 = !DILocation(line: 91, column: 4, scope: !347)
!391 = !DILocation(line: 91, column: 19, scope: !347)
!392 = !DILocation(line: 92, column: 12, scope: !347)
!393 = !DILocation(line: 93, column: 7, scope: !347)
!394 = !DILocation(line: 93, column: 22, scope: !347)
!395 = !DILocation(line: 93, column: 21, scope: !347)
!396 = !DILocation(line: 60, column: 26, scope: !94)
!397 = !DILocation(line: 96, column: 14, scope: !322)
!398 = !DILocation(line: 96, column: 5, scope: !342)
!399 = !DILocation(line: 100, column: 35, scope: !400)
!400 = distinct !DILexicalBlock(scope: !319, file: !1, line: 98, column: 8)
!401 = !DILocation(line: 100, column: 5, scope: !400)
!402 = !DILocation(line: 101, column: 5, scope: !400)
!403 = !DILocation(line: 102, column: 5, scope: !400)
!404 = !DILocation(line: 103, column: 8, scope: !400)
!405 = !DILocation(line: 103, column: 16, scope: !400)
!406 = !DILocation(line: 104, column: 5, scope: !400)
!407 = !DILocation(line: 105, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 105, column: 5)
!409 = distinct !DILexicalBlock(scope: !400, file: !1, line: 105, column: 5)
!410 = !DILocation(line: 105, column: 17, scope: !408)
!411 = !DILocation(line: 105, column: 5, scope: !409)
!412 = !DILocation(line: 59, column: 16, scope: !94)
!413 = !DILocation(line: 106, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !1, line: 105, column: 31)
!415 = !DILocation(line: 107, column: 21, scope: !414)
!416 = !DILocation(line: 107, column: 8, scope: !414)
!417 = !DILocation(line: 107, column: 7, scope: !414)
!418 = !DILocation(line: 107, column: 20, scope: !414)
!419 = !DILocation(line: 108, column: 24, scope: !414)
!420 = !DILocation(line: 108, column: 21, scope: !414)
!421 = !DILocation(line: 108, column: 33, scope: !414)
!422 = !DILocation(line: 108, column: 32, scope: !414)
!423 = !DILocation(line: 108, column: 7, scope: !414)
!424 = !DILocation(line: 108, column: 20, scope: !414)
!425 = !DILocation(line: 109, column: 30, scope: !426)
!426 = distinct !DILexicalBlock(scope: !414, file: !1, line: 109, column: 11)
!427 = !DILocation(line: 109, column: 25, scope: !426)
!428 = !DILocation(line: 109, column: 11, scope: !414)
!429 = !DILocation(line: 110, column: 2, scope: !426)
!430 = !DILocation(line: 111, column: 19, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 111, column: 7)
!432 = distinct !DILexicalBlock(scope: !414, file: !1, line: 111, column: 7)
!433 = !DILocation(line: 111, column: 18, scope: !431)
!434 = !DILocation(line: 111, column: 7, scope: !432)
!435 = !DILocation(line: 58, column: 12, scope: !94)
!436 = !DILocation(line: 112, column: 2, scope: !437)
!437 = distinct !DILexicalBlock(scope: !431, file: !1, line: 111, column: 29)
!438 = !DILocation(line: 113, column: 22, scope: !437)
!439 = !DILocation(line: 113, column: 10, scope: !437)
!440 = !DILocation(line: 113, column: 7, scope: !437)
!441 = !DILocation(line: 113, column: 18, scope: !437)
!442 = !DILocation(line: 113, column: 2, scope: !437)
!443 = !DILocation(line: 113, column: 5, scope: !437)
!444 = !DILocation(line: 113, column: 21, scope: !437)
!445 = !DILocation(line: 111, column: 25, scope: !431)
!446 = !DILocation(line: 59, column: 14, scope: !94)
!447 = !DILocation(line: 118, column: 3, scope: !94)
!448 = !DILocation(line: 121, column: 1, scope: !94)
!449 = !DILocation(line: 197, column: 21, scope: !128)
!450 = !DILocation(line: 197, column: 34, scope: !128)
!451 = !DILocation(line: 197, column: 44, scope: !128)
!452 = !DILocation(line: 198, column: 17, scope: !128)
!453 = !DILocation(line: 198, column: 31, scope: !128)
!454 = !DILocation(line: 204, column: 3, scope: !128)
!455 = !DILocation(line: 202, column: 12, scope: !128)
!456 = !DILocation(line: 205, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !128, file: !1, line: 205, column: 7)
!458 = !DILocation(line: 205, column: 7, scope: !128)
!459 = !DILocation(line: 206, column: 5, scope: !457)
!460 = !DILocation(line: 200, column: 13, scope: !128)
!461 = !DILocation(line: 207, column: 8, scope: !128)
!462 = !DILocation(line: 201, column: 12, scope: !128)
!463 = !DILocation(line: 208, column: 18, scope: !128)
!464 = !DILocation(line: 208, column: 3, scope: !128)
!465 = !DILocation(line: 209, column: 1, scope: !128)
!466 = !DILocation(line: 168, column: 32, scope: !226)
!467 = !DILocation(line: 168, column: 44, scope: !226)
!468 = !DILocation(line: 168, column: 58, scope: !226)
!469 = !DILocation(line: 169, column: 13, scope: !226)
!470 = !DILocation(line: 169, column: 23, scope: !226)
!471 = !DILocation(line: 169, column: 40, scope: !226)
!472 = !DILocation(line: 169, column: 52, scope: !226)
!473 = !DILocation(line: 173, column: 13, scope: !474)
!474 = distinct !DILexicalBlock(scope: !226, file: !1, line: 173, column: 7)
!475 = !DILocation(line: 173, column: 15, scope: !474)
!476 = !DILocation(line: 173, column: 7, scope: !226)
!477 = !DILocation(line: 174, column: 5, scope: !474)
!478 = !DILocation(line: 175, column: 21, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 175, column: 3)
!480 = distinct !DILexicalBlock(scope: !226, file: !1, line: 175, column: 3)
!481 = !DILocation(line: 175, column: 14, scope: !479)
!482 = !DILocation(line: 175, column: 3, scope: !480)
!483 = !DILocation(line: 177, column: 11, scope: !479)
!484 = !DILocation(line: 178, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !1, line: 178, column: 3)
!486 = distinct !DILexicalBlock(scope: !226, file: !1, line: 178, column: 3)
!487 = !DILocation(line: 178, column: 3, scope: !486)
!488 = !DILocation(line: 190, column: 20, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !1, line: 178, column: 28)
!490 = !DILocation(line: 193, column: 25, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 192, column: 5)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 192, column: 5)
!493 = !DILocation(line: 176, column: 13, scope: !479)
!494 = !DILocation(line: 176, column: 60, scope: !479)
!495 = !DILocation(line: 177, column: 5, scope: !479)
!496 = !DILocation(line: 177, column: 22, scope: !479)
!497 = !DILocation(line: 177, column: 21, scope: !479)
!498 = !DILocation(line: 176, column: 5, scope: !479)
!499 = !DILocation(line: 179, column: 18, scope: !500)
!500 = distinct !DILexicalBlock(scope: !489, file: !1, line: 179, column: 9)
!501 = !DILocation(line: 179, column: 9, scope: !489)
!502 = !DILocation(line: 181, column: 15, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !1, line: 180, column: 10)
!504 = !DILocation(line: 183, column: 12, scope: !505)
!505 = distinct !DILexicalBlock(scope: !503, file: !1, line: 182, column: 6)
!506 = !DILocation(line: 183, column: 57, scope: !505)
!507 = !DILocation(line: 183, column: 59, scope: !505)
!508 = !DILocation(line: 183, column: 4, scope: !505)
!509 = !DILocation(line: 123, column: 24, scope: !240, inlinedAt: !510)
!510 = distinct !DILocation(line: 181, column: 7, scope: !503)
!511 = !DILocation(line: 125, column: 11, scope: !240, inlinedAt: !510)
!512 = !DILocation(line: 125, column: 3, scope: !240, inlinedAt: !510)
!513 = !DILocation(line: 126, column: 3, scope: !240, inlinedAt: !510)
!514 = !DILocation(line: 127, column: 10, scope: !240, inlinedAt: !510)
!515 = !DILocation(line: 171, column: 11, scope: !226)
!516 = !DILocation(line: 182, column: 11, scope: !505)
!517 = !DILocation(line: 182, column: 15, scope: !505)
!518 = !DILocation(line: 182, column: 31, scope: !505)
!519 = !DILocation(line: 182, column: 23, scope: !505)
!520 = !DILocation(line: 182, column: 6, scope: !503)
!521 = !DILocation(line: 184, column: 41, scope: !500)
!522 = !DILocation(line: 184, column: 25, scope: !500)
!523 = !DILocation(line: 184, column: 33, scope: !500)
!524 = !DILocation(line: 184, column: 7, scope: !503)
!525 = !DILocation(line: 186, column: 15, scope: !526)
!526 = distinct !DILexicalBlock(scope: !500, file: !1, line: 185, column: 10)
!527 = !DILocation(line: 186, column: 7, scope: !526)
!528 = !DILocation(line: 189, column: 22, scope: !489)
!529 = !DILocation(line: 189, column: 15, scope: !489)
!530 = !DILocation(line: 189, column: 5, scope: !489)
!531 = !DILocation(line: 189, column: 14, scope: !489)
!532 = !DILocation(line: 190, column: 30, scope: !489)
!533 = !DILocation(line: 190, column: 14, scope: !489)
!534 = !DILocation(line: 190, column: 34, scope: !489)
!535 = !DILocation(line: 190, column: 33, scope: !489)
!536 = !DILocation(line: 190, column: 5, scope: !489)
!537 = !DILocation(line: 190, column: 13, scope: !489)
!538 = !DILocation(line: 191, column: 5, scope: !489)
!539 = !DILocation(line: 171, column: 9, scope: !226)
!540 = !DILocation(line: 192, column: 17, scope: !491)
!541 = !DILocation(line: 192, column: 16, scope: !491)
!542 = !DILocation(line: 192, column: 5, scope: !492)
!543 = !DILocation(line: 193, column: 33, scope: !491)
!544 = !DILocation(line: 193, column: 27, scope: !491)
!545 = !DILocation(line: 193, column: 44, scope: !491)
!546 = !DILocation(line: 193, column: 19, scope: !491)
!547 = !DILocation(line: 193, column: 7, scope: !491)
!548 = !DILocation(line: 193, column: 18, scope: !491)
!549 = !DILocation(line: 179, column: 15, scope: !500)
!550 = !DILocation(line: 195, column: 1, scope: !226)
!551 = !DILocation(line: 211, column: 25, scope: !142)
!552 = !DILocation(line: 211, column: 38, scope: !142)
!553 = !DILocation(line: 211, column: 48, scope: !142)
!554 = !DILocation(line: 212, column: 14, scope: !142)
!555 = !DILocation(line: 212, column: 28, scope: !142)
!556 = !DILocation(line: 212, column: 43, scope: !142)
!557 = !DILocation(line: 217, column: 8, scope: !558)
!558 = distinct !DILexicalBlock(scope: !142, file: !1, line: 217, column: 7)
!559 = !DILocation(line: 217, column: 7, scope: !142)
!560 = !DILocation(line: 218, column: 5, scope: !558)
!561 = !DILocation(line: 214, column: 13, scope: !142)
!562 = !DILocation(line: 219, column: 8, scope: !142)
!563 = !DILocation(line: 215, column: 12, scope: !142)
!564 = !DILocation(line: 221, column: 18, scope: !142)
!565 = !DILocation(line: 221, column: 3, scope: !142)
!566 = !DILocation(line: 222, column: 1, scope: !142)
!567 = !DILocation(line: 224, column: 25, scope: !154)
!568 = !DILocation(line: 224, column: 38, scope: !154)
!569 = !DILocation(line: 224, column: 47, scope: !154)
!570 = !DILocation(line: 225, column: 13, scope: !154)
!571 = !DILocation(line: 225, column: 31, scope: !154)
!572 = !DILocation(line: 225, column: 45, scope: !154)
!573 = !DILocation(line: 231, column: 3, scope: !154)
!574 = !DILocation(line: 229, column: 12, scope: !154)
!575 = !DILocation(line: 232, column: 3, scope: !154)
!576 = !DILocation(line: 227, column: 14, scope: !154)
!577 = !DILocation(line: 233, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !154, file: !1, line: 233, column: 7)
!579 = !DILocation(line: 233, column: 7, scope: !154)
!580 = !DILocation(line: 234, column: 10, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 233, column: 20)
!582 = !DILocation(line: 228, column: 12, scope: !154)
!583 = !DILocation(line: 235, column: 3, scope: !581)
!584 = !DILocation(line: 237, column: 5, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !1, line: 236, column: 8)
!586 = !DILocation(line: 238, column: 5, scope: !585)
!587 = !DILocation(line: 239, column: 5, scope: !585)
!588 = !DILocation(line: 241, column: 18, scope: !154)
!589 = !DILocation(line: 241, column: 3, scope: !154)
!590 = !DILocation(line: 242, column: 1, scope: !154)
