; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.1 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%union.anon = type { i8* }
%union.anon.0 = type { %struct.cGH* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGA: No scalar output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"%%%s\09%%%s\0A\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c".asc\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c".xg\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Invalid reduction operator '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str8 = private unnamed_addr constant [10 x i8] c"%s%s_%s%s\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"norm1\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"nm1\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"norm2\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"nm2\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"%s%s_%s.tl\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"Reduction on Grid Arrays\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Could not open output file '%s'\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGS: No scalar output for '%s' (no storage)\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"%%%s\09%%d\0A\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c".tl\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str25 = private unnamed_addr constant [13 x i8] c"Scalar value\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"Unsupported data type\00", align 1
@.str27 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGS: Could not open output file '%s'\00", align 1
@.str28 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteScalar.c,v 1.7 2002/01/18 15:30:33 tradke Exp $\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str29 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str32 = private unnamed_addr constant [20 x i8] c"application/x-graph\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"%cParameter file %s\0A\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"%cCreated %s \00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"%cx-label time\0A\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"%cy-label %s\0A\00", align 1
@.str42 = private unnamed_addr constant [13 x i8] c"%c%s v time\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteScalar_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str28, i64 0, i64 0), !dbg !357
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %format_str = alloca [15 x i8], align 1
  %reduction_value = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !96, metadata !358), !dbg !359
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !97, metadata !358), !dbg !360
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !98, metadata !358), !dbg !361
  tail call void @llvm.dbg.declare(metadata [15 x i8]* %format_str, metadata !165, metadata !358), !dbg !362
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !172, metadata !358), !dbg !363
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !177, metadata !358), !dbg !364
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 2), align 8, !dbg !365, !tbaa !366
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !185, metadata !358), !dbg !365
  %2 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !365, !tbaa !372
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !186, metadata !358), !dbg !365
  %3 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !dbg !365, !tbaa !373
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !188, metadata !358), !dbg !365
  %4 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !dbg !365, !tbaa !374
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !196, metadata !358), !dbg !365
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !172, metadata !358), !dbg !363
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !177, metadata !358), !dbg !364
  %5 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7, !dbg !377
  %6 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %5) #7, !dbg !379
  %7 = icmp eq i32 %6, 0, !dbg !379
  br i1 %7, label %8, label %11, !dbg !380

; <label>:8                                       ; preds = %0
  %9 = tail call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !381
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !170, metadata !358), !dbg !383
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 112, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i8* %9) #7, !dbg !384
  tail call void @free(i8* %9) #8, !dbg !385
  br label %124, !dbg !386

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds [15 x i8]* %format_str, i64 0, i64 0, !dbg !387
  %13 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %12, i32 0, i64 15, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %3, i8* %3) #7, !dbg !387
  %14 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !388
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !169, metadata !358), !dbg !389
  %15 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !390
  %16 = call i64 @strlen(i8* %1) #7, !dbg !391
  %17 = add i64 %16, 1, !dbg !392
  %18 = call i8* @malloc(i64 %17) #7, !dbg !393
  call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !162, metadata !358), !dbg !394
  call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !163, metadata !358), !dbg !395
  %19 = icmp eq i8* %1, null, !dbg !396
  br i1 %19, label %.critedge, label %.lr.ph.lr.ph, !dbg !397

.lr.ph.lr.ph:                                     ; preds = %11
  %20 = call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false), !dbg !398
  %21 = bitcast double* %reduction_value to i8*, !dbg !400
  %22 = icmp eq i32 %4, 0, !dbg !401
  %23 = getelementptr inbounds i8* %15, i64 24, !dbg !405
  %24 = bitcast i8* %23 to i8**, !dbg !405
  %25 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !407
  %26 = load i8* %1, align 1, !dbg !410, !tbaa !411
  %27 = icmp eq i8 %26, 0, !dbg !397
  br i1 %27, label %.critedge, label %.preheader8.preheader.lr.ph.lr.ph, !dbg !412

.preheader8.preheader.lr.ph.lr.ph:                ; preds = %.lr.ph.lr.ph
  %28 = icmp ne i32 %14, 0, !dbg !388
  %29 = select i1 %28, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !388
  br label %.preheader8.preheader.lr.ph, !dbg !412

.preheader8.preheader.lr.ph:                      ; preds = %.preheader8.preheader.lr.ph.lr.ph, %.outer
  %30 = phi i8 [ %26, %.preheader8.preheader.lr.ph.lr.ph ], [ %122, %.outer ]
  %file_extension.0.ph1217 = phi i8* [ %29, %.preheader8.preheader.lr.ph.lr.ph ], [ %file_extension.2, %.outer ]
  %string_start.0.ph1316 = phi i8* [ %1, %.preheader8.preheader.lr.ph.lr.ph ], [ %string_end.0, %.outer ]
  br label %.preheader8, !dbg !412

.preheader8:                                      ; preds = %.backedge.backedge, %.preheader8.preheader.lr.ph, %isspace.exit._crit_edge
  %31 = phi i8 [ %.pre, %isspace.exit._crit_edge ], [ %30, %.preheader8.preheader.lr.ph ], [ %64, %.backedge.backedge ]
  %string_start.1 = phi i8* [ %40, %isspace.exit._crit_edge ], [ %string_start.0.ph1316, %.preheader8.preheader.lr.ph ], [ %string_end.0, %.backedge.backedge ]
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !234, metadata !358) #6, !dbg !413
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !241, metadata !358) #6, !dbg !415
  call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !242, metadata !358) #6, !dbg !417
  %isascii.i.i6 = icmp sgt i8 %31, -1, !dbg !418
  br i1 %isascii.i.i6, label %32, label %37, !dbg !418

; <label>:32                                      ; preds = %.preheader8
  %33 = sext i8 %31 to i64, !dbg !419
  %34 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %33, !dbg !419
  %35 = load i32* %34, align 4, !dbg !419, !tbaa !420
  %36 = and i32 %35, 16384, !dbg !421
  br label %isspace.exit, !dbg !418

; <label>:37                                      ; preds = %.preheader8
  %38 = sext i8 %31 to i32, !dbg !422
  %39 = call i32 @__maskrune(i32 %38, i64 16384) #7, !dbg !423
  br label %isspace.exit, !dbg !418

isspace.exit:                                     ; preds = %32, %37
  %.sink.i.in.i = phi i32 [ %36, %32 ], [ %39, %37 ], !dbg !424
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !425
  %40 = getelementptr inbounds i8* %string_start.1, i64 1, !dbg !426
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !163, metadata !358), !dbg !395
  br i1 %.sink.i.i, label %41, label %isspace.exit._crit_edge, !dbg !428

isspace.exit._crit_edge:                          ; preds = %isspace.exit
  %.pre = load i8* %40, align 1, !dbg !429, !tbaa !411
  br label %.preheader8, !dbg !428

; <label>:41                                      ; preds = %isspace.exit
  %42 = load i8* %string_start.1, align 1, !dbg !430, !tbaa !411
  %43 = icmp eq i8 %42, 0, !dbg !430
  br i1 %43, label %.critedge, label %.preheader, !dbg !432

.preheader:                                       ; preds = %41, %isspace.exit5
  %string_start.1.pn = phi i8* [ %string_end.0, %isspace.exit5 ], [ %string_start.1, %41 ]
  %string_end.0 = getelementptr inbounds i8* %string_start.1.pn, i64 1, !dbg !433
  %44 = load i8* %string_end.0, align 1, !dbg !434, !tbaa !411
  %45 = icmp eq i8 %44, 0, !dbg !434
  br i1 %45, label %.critedge1, label %46, !dbg !435

; <label>:46                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !234, metadata !358) #6, !dbg !436
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !241, metadata !358) #6, !dbg !438
  call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !242, metadata !358) #6, !dbg !440
  %isascii.i.i27 = icmp sgt i8 %44, -1, !dbg !441
  br i1 %isascii.i.i27, label %47, label %52, !dbg !441

; <label>:47                                      ; preds = %46
  %48 = sext i8 %44 to i64, !dbg !442
  %49 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %48, !dbg !442
  %50 = load i32* %49, align 4, !dbg !442, !tbaa !420
  %51 = and i32 %50, 16384, !dbg !443
  br label %isspace.exit5, !dbg !441

; <label>:52                                      ; preds = %46
  %53 = sext i8 %44 to i32, !dbg !434
  %54 = call i32 @__maskrune(i32 %53, i64 16384) #7, !dbg !444
  br label %isspace.exit5, !dbg !441

isspace.exit5:                                    ; preds = %47, %52
  %.sink.i.in.i3 = phi i32 [ %51, %47 ], [ %54, %52 ], !dbg !445
  %.sink.i.i4 = icmp eq i32 %.sink.i.in.i3, 0, !dbg !446
  br i1 %.sink.i.i4, label %.preheader, label %.critedge1, !dbg !447

.critedge1:                                       ; preds = %isspace.exit5, %.preheader
  %55 = ptrtoint i8* %string_end.0 to i64, !dbg !398
  %56 = ptrtoint i8* %string_start.1 to i64, !dbg !398
  %57 = sub i64 %55, %56, !dbg !398
  %58 = call i8* @__strncpy_chk(i8* %18, i8* %string_start.1, i64 %57, i64 %20) #7, !dbg !398
  %59 = getelementptr inbounds i8* %18, i64 %57, !dbg !448
  store i8 0, i8* %59, align 1, !dbg !449, !tbaa !411
  call void @llvm.dbg.value(metadata i8* %string_end.0, i64 0, metadata !163, metadata !358), !dbg !395
  %60 = call i32 @CCTK_ReductionHandle(i8* %18) #7, !dbg !450
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !100, metadata !358), !dbg !451
  %61 = icmp slt i32 %60, 0, !dbg !452
  br i1 %61, label %62, label %66, !dbg !454

; <label>:62                                      ; preds = %.critedge1
  %63 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 161, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %18) #7, !dbg !455
  br label %.backedge.backedge, !dbg !457

.backedge.backedge:                               ; preds = %62, %69, %66
  %64 = load i8* %string_end.0, align 1, !dbg !410, !tbaa !411
  %65 = icmp eq i8 %64, 0, !dbg !397
  br i1 %65, label %.critedge, label %.preheader8, !dbg !412

; <label>:66                                      ; preds = %.critedge1
  %67 = call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %60, i32 1, i32 6, i8* %21, i32 1, i32 %vindex) #7, !dbg !458
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !99, metadata !358), !dbg !459
  %68 = icmp eq i32 %67, 0, !dbg !460
  br i1 %68, label %69, label %.backedge.backedge, !dbg !461

; <label>:69                                      ; preds = %66
  %70 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !462, !tbaa !463
  %71 = call i32 %70(%struct.cGH* %GH) #7, !dbg !462
  %72 = icmp eq i32 %71, 0, !dbg !464
  br i1 %72, label %73, label %.backedge.backedge, !dbg !465

; <label>:73                                      ; preds = %69
  br i1 %22, label %88, label %74, !dbg !466

; <label>:74                                      ; preds = %73
  %75 = load i8** %24, align 8, !dbg !467, !tbaa !469
  %76 = call i64 @strlen(i8* %75) #7, !dbg !471
  %77 = call i64 @strlen(i8* %alias) #7, !dbg !472
  %78 = call i64 @strlen(i8* %18) #7, !dbg !473
  %79 = call i64 @strlen(i8* %file_extension.0.ph1217) #7, !dbg !474
  %80 = add i64 %76, 2, !dbg !475
  %81 = add i64 %80, %77, !dbg !476
  %82 = add i64 %81, %78, !dbg !477
  %83 = add i64 %82, %79, !dbg !478
  %84 = call i8* @malloc(i64 %83) #7, !dbg !479
  call void @llvm.dbg.value(metadata i8* %84, i64 0, metadata !161, metadata !358), !dbg !480
  %85 = call i64 @llvm.objectsize.i64.p0i8(i8* %84, i1 false), !dbg !481
  %86 = load i8** %24, align 8, !dbg !481, !tbaa !469
  %87 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %84, i32 0, i64 %85, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i8* %86, i8* %alias, i8* %18, i8* %file_extension.0.ph1217) #7, !dbg !481
  br label %112, !dbg !482

; <label>:88                                      ; preds = %73
  %89 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !483
  %90 = icmp eq i32 %89, 0, !dbg !485
  br i1 %90, label %100, label %91, !dbg !486

; <label>:91                                      ; preds = %88
  %92 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !487
  %93 = icmp eq i32 %92, 0, !dbg !489
  br i1 %93, label %100, label %94, !dbg !490

; <label>:94                                      ; preds = %91
  %95 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !491
  %96 = icmp eq i32 %95, 0, !dbg !493
  br i1 %96, label %100, label %97, !dbg !494

; <label>:97                                      ; preds = %94
  %98 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !495
  %99 = icmp eq i32 %98, 0, !dbg !497
  %. = select i1 %99, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %18, !dbg !498
  br label %100, !dbg !498

; <label>:100                                     ; preds = %97, %94, %91, %88
  %file_extension.1 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), %88 ], [ getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), %91 ], [ getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), %94 ], [ %., %97 ]
  %101 = load i8** %24, align 8, !dbg !405, !tbaa !469
  %102 = call i64 @strlen(i8* %101) #7, !dbg !500
  %103 = call i64 @strlen(i8* %alias) #7, !dbg !501
  %104 = call i64 @strlen(i8* %file_extension.1) #7, !dbg !502
  %105 = add i64 %102, 5, !dbg !503
  %106 = add i64 %105, %103, !dbg !504
  %107 = add i64 %106, %104, !dbg !505
  %108 = call i8* @malloc(i64 %107) #7, !dbg !506
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !161, metadata !358), !dbg !480
  %109 = call i64 @llvm.objectsize.i64.p0i8(i8* %108, i1 false), !dbg !507
  %110 = load i8** %24, align 8, !dbg !507, !tbaa !469
  %111 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %108, i32 0, i64 %109, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i8* %110, i8* %alias, i8* %file_extension.1) #7, !dbg !507
  br label %112

; <label>:112                                     ; preds = %100, %74
  %file_extension.2 = phi i8* [ %file_extension.0.ph1217, %74 ], [ %file_extension.1, %100 ]
  %filename.0 = phi i8* [ %84, %74 ], [ %108, %100 ]
  %113 = call fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename.0, i8* %18, i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), i8* %alias) #8, !dbg !508
  call void @llvm.dbg.value(metadata %struct.__sFILE* %113, i64 0, metadata !102, metadata !358), !dbg !509
  %114 = icmp eq %struct.__sFILE* %113, null, !dbg !510
  br i1 %114, label %120, label %115, !dbg !511

; <label>:115                                     ; preds = %112
  %116 = load double* %25, align 8, !dbg !407, !tbaa !512
  call void @llvm.dbg.value(metadata double* %reduction_value, i64 0, metadata !171, metadata !358), !dbg !514
  %117 = load double* %reduction_value, align 8, !dbg !515, !tbaa !516
  %118 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %113, i8* %12, double %116, double %117) #7, !dbg !517
  %119 = call i32 @fclose(%struct.__sFILE* %113) #7, !dbg !518
  br label %.outer, !dbg !519

; <label>:120                                     ; preds = %112
  %121 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 225, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i8* %filename.0) #7, !dbg !520
  br label %.outer

.outer:                                           ; preds = %120, %115
  call void @free(i8* %filename.0) #8, !dbg !522
  %122 = load i8* %string_end.0, align 1, !dbg !410, !tbaa !411
  %123 = icmp eq i8 %122, 0, !dbg !397
  br i1 %123, label %.critedge, label %.preheader8.preheader.lr.ph, !dbg !412

.critedge:                                        ; preds = %.outer, %.lr.ph.lr.ph, %41, %.backedge.backedge, %11
  call void @free(i8* %18) #8, !dbg !523
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !198, metadata !358), !dbg !365
  br label %124, !dbg !524

; <label>:124                                     ; preds = %.critedge, %8
  %.0 = phi i32 [ 0, %.critedge ], [ -1, %8 ]
  ret i32 %.0, !dbg !525
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: optsize
declare i32 @CCTK_ReductionHandle(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename, i8* %slicename, i8* %description, i8* %aliasname) #1 {
  %buffer = alloca [128 x i8], align 16
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %fileinfo = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !250, metadata !358), !dbg !526
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !251, metadata !358), !dbg !527
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !252, metadata !358), !dbg !528
  tail call void @llvm.dbg.value(metadata i8* %slicename, i64 0, metadata !253, metadata !358), !dbg !529
  tail call void @llvm.dbg.value(metadata i8* %description, i64 0, metadata !254, metadata !358), !dbg !530
  tail call void @llvm.dbg.value(metadata i8* %aliasname, i64 0, metadata !255, metadata !358), !dbg !531
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !532, !tbaa !372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !259, metadata !358), !dbg !532
  %2 = load i8** getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 14), align 8, !dbg !532, !tbaa !533
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !269, metadata !358), !dbg !532
  %3 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0, !dbg !534
  call void @llvm.lifetime.start(i64 128, i8* %3) #6, !dbg !534
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buffer, metadata !273, metadata !358), !dbg !535
  %4 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*, !dbg !536
  call void @llvm.lifetime.start(i64 40, i8* %4) #6, !dbg !536
  %5 = bitcast %struct.stat* %fileinfo to i8*, !dbg !537
  call void @llvm.lifetime.start(i64 144, i8* %5) #6, !dbg !537
  %6 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !538
  %7 = tail call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !539
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !289, metadata !358), !dbg !540
  %8 = getelementptr inbounds i8* %6, i64 56, !dbg !541
  %9 = bitcast i8* %8 to %struct.PNamedData**, !dbg !541
  %10 = load %struct.PNamedData** %9, align 8, !dbg !541, !tbaa !543
  %11 = tail call i8* @GetNamedData(%struct.PNamedData* %10, i8* %filename) #7, !dbg !544
  %12 = icmp eq i8* %11, null, !dbg !545
  br i1 %12, label %13, label %20, !dbg !546

; <label>:13                                      ; preds = %0
  %14 = tail call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7, !dbg !547
  %15 = icmp eq i32 %14, 0, !dbg !547
  br i1 %15, label %20, label %16, !dbg !550

; <label>:16                                      ; preds = %13
  tail call void @llvm.dbg.value(metadata %struct.stat* %fileinfo, i64 0, metadata !290, metadata !358), !dbg !551
  %17 = call i32 @"\01_stat$INODE64"(i8* %filename, %struct.stat* %fileinfo) #7, !dbg !552
  %18 = icmp eq i32 %17, 0, !dbg !553
  %19 = select i1 %18, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0), !dbg !552
  call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !288, metadata !358), !dbg !554
  br label %20, !dbg !555

; <label>:20                                      ; preds = %0, %13, %16
  %openmode.0 = phi i8* [ %19, %16 ], [ getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0), %13 ], [ getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), %0 ]
  %21 = call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* %openmode.0) #7, !dbg !556
  call void @llvm.dbg.value(metadata %struct.__sFILE* %21, i64 0, metadata !271, metadata !358), !dbg !557
  %22 = icmp eq %struct.__sFILE* %21, null, !dbg !558
  br i1 %22, label %67, label %23, !dbg !560

; <label>:23                                      ; preds = %20
  %24 = load i8* %openmode.0, align 1, !dbg !561, !tbaa !411
  %25 = icmp eq i8 %24, 119, !dbg !562
  br i1 %25, label %26, label %67, !dbg !563

; <label>:26                                      ; preds = %23
  %27 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !564
  %28 = icmp eq i32 %27, 0, !dbg !564
  %29 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2, !dbg !567
  %. = select i1 %28, i8* getelementptr inbounds ([20 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0)
  %.1 = select i1 %28, i32 34, i32 35
  store i8* %., i8** %29, align 8, !dbg !569, !tbaa !570
  %30 = call i32 @StoreNamedData(%struct.PNamedData** %9, i8* %filename, i8* inttoptr (i64 1 to i8*)) #7, !dbg !572
  %31 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3, !dbg !573
  store i8* %slicename, i8** %31, align 8, !dbg !574, !tbaa !575
  %32 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0, !dbg !576
  store i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8** %32, align 8, !dbg !577, !tbaa !578
  %33 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1, !dbg !579
  store i8* %7, i8** %33, align 8, !dbg !580, !tbaa !581
  %34 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4, !dbg !582
  store i8* %description, i8** %34, align 8, !dbg !583, !tbaa !584
  call void @llvm.dbg.value(metadata %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, metadata !277, metadata !358), !dbg !585
  %35 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %advertised_file) #7, !dbg !586
  %36 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !587
  %37 = icmp eq i32 %36, 0, !dbg !587
  br i1 %37, label %38, label %41, !dbg !589

; <label>:38                                      ; preds = %26
  %39 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !590
  %40 = icmp eq i32 %39, 0, !dbg !590
  br i1 %40, label %44, label %41, !dbg !591

; <label>:41                                      ; preds = %38, %26
  store i8 0, i8* %3, align 16, !dbg !592, !tbaa !411
  %42 = call i32 @CCTK_ParameterFilename(i32 128, i8* %3) #7, !dbg !594
  %43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %.1, i8* %3) #7, !dbg !595
  br label %44, !dbg !596

; <label>:44                                      ; preds = %38, %41
  %45 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !597
  %46 = icmp eq i32 %45, 0, !dbg !597
  br i1 %46, label %47, label %50, !dbg !599

; <label>:47                                      ; preds = %44
  %48 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !600
  %49 = icmp eq i32 %48, 0, !dbg !600
  br i1 %49, label %55, label %50, !dbg !601

; <label>:50                                      ; preds = %47, %44
  store i8 0, i8* %3, align 16, !dbg !602, !tbaa !411
  %51 = call i32 @Util_CurrentDate(i32 128, i8* %3) #7, !dbg !604
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0), i32 %.1, i8* %3) #7, !dbg !605
  %53 = call i32 @Util_CurrentTime(i32 128, i8* %3) #7, !dbg !606
  %54 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* %3) #7, !dbg !607
  br label %55, !dbg !608

; <label>:55                                      ; preds = %47, %50
  %56 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0)) #7, !dbg !609
  %57 = icmp eq i32 %56, 0, !dbg !609
  br i1 %57, label %58, label %61, !dbg !611

; <label>:58                                      ; preds = %55
  %59 = call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !612
  %60 = icmp eq i32 %59, 0, !dbg !612
  br i1 %60, label %65, label %61, !dbg !613

; <label>:61                                      ; preds = %58, %55
  %62 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0), i32 %.1) #7, !dbg !614
  %63 = load i8** %33, align 8, !dbg !616, !tbaa !581
  %64 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i32 %.1, i8* %63) #7, !dbg !617
  br label %65, !dbg !618

; <label>:65                                      ; preds = %58, %61
  %66 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([13 x i8]* @.str42, i64 0, i64 0), i32 %.1, i8* %aliasname) #7, !dbg !619
  br label %67, !dbg !620

; <label>:67                                      ; preds = %20, %65, %23
  call void @free(i8* %7) #8, !dbg !621
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !270, metadata !358), !dbg !532
  call void @llvm.lifetime.end(i64 144, i8* %5) #6, !dbg !622
  call void @llvm.lifetime.end(i64 40, i8* %4) #6, !dbg !622
  call void @llvm.lifetime.end(i64 128, i8* %3) #6, !dbg !622
  ret %struct.__sFILE* %21, !dbg !622
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %format_str_real = alloca [15 x i8], align 1
  %format_str_int = alloca [15 x i8], align 1
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !203, metadata !358), !dbg !623
  tail call void @llvm.dbg.value(metadata i32 %vindex, i64 0, metadata !204, metadata !358), !dbg !624
  tail call void @llvm.dbg.value(metadata i8* %alias, i64 0, metadata !205, metadata !358), !dbg !625
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !626, !tbaa !372
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !209, metadata !358), !dbg !626
  %2 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !dbg !626, !tbaa !373
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !211, metadata !358), !dbg !626
  %3 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !dbg !626, !tbaa !374
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !218, metadata !358), !dbg !626
  tail call void @llvm.dbg.declare(metadata [15 x i8]* %format_str_real, metadata !227, metadata !358), !dbg !627
  tail call void @llvm.dbg.declare(metadata [15 x i8]* %format_str_int, metadata !228, metadata !358), !dbg !628
  %4 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !629, !tbaa !463
  %5 = tail call i32 %4(%struct.cGH* %GH) #7, !dbg !629
  %6 = icmp eq i32 %5, 0, !dbg !631
  br i1 %6, label %7, label %63, !dbg !632

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7, !dbg !633
  %9 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %8) #7, !dbg !635
  %10 = icmp eq i32 %9, 0, !dbg !635
  br i1 %10, label %11, label %14, !dbg !636

; <label>:11                                      ; preds = %7
  %12 = tail call i8* @CCTK_FullName(i32 %vindex) #7, !dbg !637
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !224, metadata !358), !dbg !639
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 298, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), i8* %12) #7, !dbg !640
  tail call void @free(i8* %12) #8, !dbg !641
  br label %63, !dbg !642

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds [15 x i8]* %format_str_real, i64 0, i64 0, !dbg !643
  %16 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %15, i32 0, i64 15, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %2, i8* %2) #7, !dbg !643
  %17 = getelementptr inbounds [15 x i8]* %format_str_int, i64 0, i64 0, !dbg !644
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %17, i32 0, i64 15, i8* getelementptr inbounds ([10 x i8]* @.str21, i64 0, i64 0), i8* %2) #7, !dbg !644
  %19 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !645
  %20 = icmp eq i32 %3, 0, !dbg !646
  br i1 %20, label %25, label %21, !dbg !648

; <label>:21                                      ; preds = %14
  %22 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !649
  %23 = icmp ne i32 %22, 0, !dbg !649
  %24 = select i1 %23, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !649
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !226, metadata !358), !dbg !651
  br label %25, !dbg !652

; <label>:25                                      ; preds = %14, %21
  %file_extension.0 = phi i8* [ %24, %21 ], [ getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), %14 ]
  %26 = getelementptr inbounds i8* %19, i64 24, !dbg !653
  %27 = bitcast i8* %26 to i8**, !dbg !653
  %28 = load i8** %27, align 8, !dbg !653, !tbaa !469
  %29 = call i64 @strlen(i8* %28) #7, !dbg !654
  %30 = call i64 @strlen(i8* %alias) #7, !dbg !655
  %31 = call i64 @strlen(i8* %file_extension.0) #7, !dbg !656
  %32 = add i64 %29, 1, !dbg !657
  %33 = add i64 %32, %30, !dbg !658
  %34 = add i64 %33, %31, !dbg !659
  %35 = call i8* @malloc(i64 %34) #7, !dbg !660
  call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !225, metadata !358), !dbg !661
  %36 = call i64 @llvm.objectsize.i64.p0i8(i8* %35, i1 false), !dbg !662
  %37 = load i8** %27, align 8, !dbg !662, !tbaa !469
  %38 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %35, i32 0, i64 %36, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* %37, i8* %alias, i8* %file_extension.0) #7, !dbg !662
  %39 = call fastcc %struct.__sFILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %35, i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str25, i64 0, i64 0), i8* %alias) #8, !dbg !663
  call void @llvm.dbg.value(metadata %struct.__sFILE* %39, i64 0, metadata !221, metadata !358), !dbg !664
  %40 = icmp eq %struct.__sFILE* %39, null, !dbg !665
  br i1 %40, label %60, label %41, !dbg !667

; <label>:41                                      ; preds = %25
  %42 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #7, !dbg !668
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !222, metadata !358), !dbg !670
  %43 = call i32 @CCTK_VarTypeI(i32 %vindex) #7, !dbg !671
  switch i32 %43, label %56 [
    i32 6, label %44
    i32 2, label %50
  ], !dbg !672

; <label>:44                                      ; preds = %41
  %45 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !673
  %46 = load double* %45, align 8, !dbg !673, !tbaa !512
  %47 = bitcast i8* %42 to double*, !dbg !675
  %48 = load double* %47, align 8, !dbg !676, !tbaa !516
  %49 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* %15, double %46, double %48) #7, !dbg !677
  br label %58, !dbg !678

; <label>:50                                      ; preds = %41
  %51 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !679
  %52 = load double* %51, align 8, !dbg !679, !tbaa !512
  %53 = bitcast i8* %42 to i32*, !dbg !680
  %54 = load i32* %53, align 4, !dbg !681, !tbaa !420
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* %17, double %52, i32 %54) #7, !dbg !682
  br label %58, !dbg !683

; <label>:56                                      ; preds = %41
  %57 = call i32 @CCTK_Warn(i32 3, i32 345, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !684
  br label %58, !dbg !685

; <label>:58                                      ; preds = %56, %50, %44
  %59 = call i32 @fclose(%struct.__sFILE* %39) #7, !dbg !686
  br label %62, !dbg !687

; <label>:60                                      ; preds = %25
  %61 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 354, i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i8* %35) #7, !dbg !688
  br label %62

; <label>:62                                      ; preds = %60, %58
  call void @free(i8* %35) #8, !dbg !690
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !220, metadata !358), !dbg !626
  br label %63, !dbg !691

; <label>:63                                      ; preds = %0, %62, %11
  %.0 = phi i32 [ 0, %62 ], [ -1, %11 ], [ 0, %0 ]
  ret i32 %.0, !dbg !692
}

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_AdvertiseFile(%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #3

; Function Attrs: optsize
declare i32 @Util_CurrentDate(i32, i8*) #3

; Function Attrs: optsize
declare i32 @Util_CurrentTime(i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!353, !354, !355}
!llvm.ident = !{!356}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !52, globals: !351, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !15, !10, !36, !51, !18, !50}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasicGH", file: !6, line: 52, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_GH", file: !6, line: 29, size: 512, align: 64, elements: !8)
!8 = !{!9, !11, !12, !14, !16, !17, !19, !20, !39}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_every", scope: !7, file: !6, line: 32, baseType: !10, size: 32, align: 32)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_every", scope: !7, file: !6, line: 33, baseType: !10, size: 32, align: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions_changed", scope: !7, file: !6, line: 34, baseType: !13, size: 8, align: 8, offset: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "do_outScalar", scope: !7, file: !6, line: 37, baseType: !15, size: 64, align: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "outdirScalar", scope: !7, file: !6, line: 40, baseType: !15, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "outInfo_last", scope: !7, file: !6, line: 43, baseType: !18, size: 64, align: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "outScalar_last", scope: !7, file: !6, line: 44, baseType: !18, size: 64, align: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "info_reductions", scope: !7, file: !6, line: 47, baseType: !21, size: 64, align: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reductionlist_t", file: !6, line: 27, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTIONLIST", file: !6, line: 23, size: 128, align: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "num_reductions", scope: !23, file: !6, line: 25, baseType: !26, size: 32, align: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reductions", scope: !23, file: !6, line: 26, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "iobasic_reduction_t", file: !6, line: 21, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "IOBASIC_REDUCTION", file: !6, line: 14, size: 320, align: 64, elements: !31)
!31 = !{!32, !33, !34, !35, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !30, file: !6, line: 16, baseType: !10, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !30, file: !6, line: 17, baseType: !15, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !30, file: !6, line: 18, baseType: !13, size: 8, align: 8, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !30, file: !6, line: 19, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !6, line: 20, baseType: !38, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "filenameListScalar", scope: !7, file: !6, line: 50, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pNamedData", file: !42, line: 26, baseType: !43)
!42 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "PNamedData", file: !42, line: 18, size: 256, align: 64, elements: !44)
!44 = !{!45, !47, !48, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !43, file: !42, line: 20, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !42, line: 21, baseType: !46, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !42, line: 23, baseType: !15, size: 64, align: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !43, file: !42, line: 25, baseType: !50, size: 64, align: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!52 = !{!53, !58, !201, !229, !235, !243, !246}
!53 = !DISubprogram(name: "CCTKi_version_CactusBase_IOBasic_WriteScalar_c", scope: !1, file: !1, line: 27, type: !54, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusBase_IOBasic_WriteScalar_c, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!58 = !DISubprogram(name: "IOBasic_WriteScalarGA", scope: !1, file: !1, line: 75, type: !59, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i8*)* @IOBasic_WriteScalarGA, variables: !95)
!59 = !DISubroutineType(types: !60)
!60 = !{!10, !61, !10, !56}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !64, line: 75, baseType: !65)
!64 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!65 = !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 24, size: 1216, align: 64, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !88}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !65, file: !64, line: 26, baseType: !10, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !65, file: !64, line: 27, baseType: !10, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !65, file: !64, line: 30, baseType: !18, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !65, file: !64, line: 31, baseType: !18, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !65, file: !64, line: 32, baseType: !18, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !65, file: !64, line: 33, baseType: !18, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !65, file: !64, line: 36, baseType: !18, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !65, file: !64, line: 39, baseType: !18, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !65, file: !64, line: 40, baseType: !18, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !65, file: !64, line: 43, baseType: !36, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !65, file: !64, line: 44, baseType: !51, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !65, file: !64, line: 47, baseType: !51, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !65, file: !64, line: 51, baseType: !18, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !65, file: !64, line: 54, baseType: !18, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !65, file: !64, line: 57, baseType: !10, size: 32, align: 32, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !65, file: !64, line: 60, baseType: !18, size: 64, align: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !65, file: !64, line: 63, baseType: !36, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !65, file: !64, line: 67, baseType: !85, size: 64, align: 64, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !65, file: !64, line: 70, baseType: !86, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !65, file: !64, line: 73, baseType: !89, size: 64, align: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !64, line: 22, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 18, size: 16, align: 8, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !91, file: !64, line: 20, baseType: !13, size: 8, align: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !91, file: !64, line: 21, baseType: !13, size: 8, align: 8, offset: 8)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !161, !162, !163, !164, !165, !169, !170, !171, !172, !177, !183, !184, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !196, !197, !198}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !58, file: !1, line: 75, type: !61)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !58, file: !1, line: 75, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !58, file: !1, line: 75, type: !56)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !58, file: !1, line: 77, type: !10)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reduction_handle", scope: !58, file: !1, line: 78, type: !10)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !58, file: !1, line: 79, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !58, file: !1, line: 80, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !105, line: 153, baseType: !106)
!105 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !105, line: 122, size: 1216, align: 64, elements: !107)
!107 = !{!108, !111, !112, !113, !115, !116, !121, !122, !123, !127, !131, !141, !145, !146, !149, !150, !154, !158, !159, !160}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !106, file: !105, line: 123, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !106, file: !105, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !106, file: !105, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !106, file: !105, line: 126, baseType: !114, size: 16, align: 16, offset: 128)
!114 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !106, file: !105, line: 127, baseType: !114, size: 16, align: 16, offset: 144)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !106, file: !105, line: 128, baseType: !117, size: 128, align: 64, offset: 192)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !105, line: 88, size: 128, align: 64, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !117, file: !105, line: 89, baseType: !109, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !117, file: !105, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !106, file: !105, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !106, file: !105, line: 132, baseType: !50, size: 64, align: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !106, file: !105, line: 133, baseType: !124, size: 64, align: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!10, !50}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !106, file: !105, line: 134, baseType: !128, size: 64, align: 64, offset: 512)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!10, !50, !15, !10}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !106, file: !105, line: 135, baseType: !132, size: 64, align: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!135, !50, !135, !10}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !105, line: 77, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !137, line: 71, baseType: !138)
!137 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!140 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !106, file: !105, line: 136, baseType: !142, size: 64, align: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!10, !50, !56, !10}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !106, file: !105, line: 139, baseType: !117, size: 128, align: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !106, file: !105, line: 140, baseType: !147, size: 64, align: 64, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !105, line: 94, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !106, file: !105, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !106, file: !105, line: 144, baseType: !151, size: 24, align: 8, offset: 928)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, align: 8, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 3)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !106, file: !105, line: 145, baseType: !155, size: 8, align: 8, offset: 952)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 8, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 1)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !106, file: !105, line: 148, baseType: !117, size: 128, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !106, file: !105, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !106, file: !105, line: 152, baseType: !135, size: 64, align: 64, offset: 1152)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !58, file: !1, line: 81, type: !15)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reduction_op", scope: !58, file: !1, line: 82, type: !15)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string_start", scope: !58, file: !1, line: 83, type: !15)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "string_end", scope: !58, file: !1, line: 84, type: !15)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_str", scope: !58, file: !1, line: 85, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 120, align: 8, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 15)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_extension", scope: !58, file: !1, line: 86, type: !56)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !58, file: !1, line: 87, type: !15)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reduction_value", scope: !58, file: !1, line: 88, type: !36)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reductions", scope: !58, file: !1, line: 93, type: !173)
!173 = !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !1, line: 89, size: 64, align: 64, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "non_const_ptr", scope: !173, file: !1, line: 91, baseType: !15, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "const_ptr", scope: !173, file: !1, line: 92, baseType: !56, size: 64, align: 64)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GH_fake_const", scope: !58, file: !1, line: 99, type: !178)
!178 = !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !1, line: 95, size: 64, align: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "const_ptr", scope: !178, file: !1, line: 97, baseType: !61, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "non_const_ptr", scope: !178, file: !1, line: 98, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !58, file: !1, line: 100, type: !56)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !58, file: !1, line: 100, type: !56)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !58, file: !1, line: 100, type: !56)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !58, file: !1, line: 100, type: !56)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !58, file: !1, line: 100, type: !56)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !58, file: !1, line: 100, type: !56)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !58, file: !1, line: 100, type: !56)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !58, file: !1, line: 100, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !58, file: !1, line: 100, type: !191)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !58, file: !1, line: 100, type: !56)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !58, file: !1, line: 100, type: !191)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !58, file: !1, line: 100, type: !56)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !58, file: !1, line: 100, type: !191)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !58, file: !1, line: 100, type: !56)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !58, file: !1, line: 100, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!201 = !DISubprogram(name: "IOBasic_WriteScalarGS", scope: !1, file: !1, line: 277, type: !59, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i8*)* @IOBasic_WriteScalarGS, variables: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !201, file: !1, line: 277, type: !61)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !201, file: !1, line: 277, type: !10)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alias", arg: 3, scope: !201, file: !1, line: 277, type: !56)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !201, file: !1, line: 279, type: !56)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !201, file: !1, line: 279, type: !56)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !201, file: !1, line: 279, type: !56)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !201, file: !1, line: 279, type: !56)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !201, file: !1, line: 279, type: !56)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !201, file: !1, line: 279, type: !56)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !201, file: !1, line: 279, type: !56)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !201, file: !1, line: 279, type: !191)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !201, file: !1, line: 279, type: !191)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !201, file: !1, line: 279, type: !56)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !201, file: !1, line: 279, type: !191)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !201, file: !1, line: 279, type: !56)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !201, file: !1, line: 279, type: !191)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !201, file: !1, line: 279, type: !56)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !201, file: !1, line: 279, type: !199)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !201, file: !1, line: 280, type: !103)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !201, file: !1, line: 281, type: !50)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !201, file: !1, line: 282, type: !4)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !201, file: !1, line: 283, type: !15)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !201, file: !1, line: 283, type: !15)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_extension", scope: !201, file: !1, line: 284, type: !56)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_str_real", scope: !201, file: !1, line: 285, type: !166)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_str_int", scope: !201, file: !1, line: 285, type: !166)
!229 = !DISubprogram(name: "isspace", scope: !230, file: !230, line: 267, type: !231, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !233)
!230 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!231 = !DISubroutineType(types: !232)
!232 = !{!10, !10}
!233 = !{!234}
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !229, file: !230, line: 267, type: !10)
!235 = !DISubprogram(name: "__istype", scope: !230, file: !230, line: 153, type: !236, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !240)
!236 = !DISubroutineType(types: !237)
!237 = !{!10, !238, !239}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !139, line: 70, baseType: !10)
!239 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!240 = !{!241, !242}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !235, file: !230, line: 153, type: !238)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !235, file: !230, line: 153, type: !239)
!243 = !DISubprogram(name: "isascii", scope: !230, file: !230, line: 135, type: !231, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !244)
!244 = !{!245}
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !243, file: !230, line: 135, type: !10)
!246 = !DISubprogram(name: "OpenScalarFile", scope: !1, file: !1, line: 366, type: !247, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (%struct.cGH*, i32, i8*, i8*, i8*, i8*)* @OpenScalarFile, variables: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!103, !61, !10, !56, !56, !56, !56}
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !277, !287, !288, !289, !290}
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !246, file: !1, line: 366, type: !61)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 2, scope: !246, file: !1, line: 367, type: !10)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !246, file: !1, line: 368, type: !56)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "slicename", arg: 4, scope: !246, file: !1, line: 369, type: !56)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "description", arg: 5, scope: !246, file: !1, line: 370, type: !56)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aliasname", arg: 6, scope: !246, file: !1, line: 371, type: !56)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !246, file: !1, line: 373, type: !56)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !246, file: !1, line: 373, type: !56)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !246, file: !1, line: 373, type: !56)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !246, file: !1, line: 373, type: !56)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !246, file: !1, line: 373, type: !56)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !246, file: !1, line: 373, type: !56)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !246, file: !1, line: 373, type: !56)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !246, file: !1, line: 373, type: !191)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !246, file: !1, line: 373, type: !191)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !246, file: !1, line: 373, type: !56)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !246, file: !1, line: 373, type: !191)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !246, file: !1, line: 373, type: !56)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !246, file: !1, line: 373, type: !191)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !246, file: !1, line: 373, type: !56)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !246, file: !1, line: 373, type: !199)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !246, file: !1, line: 374, type: !103)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "comment_char", scope: !246, file: !1, line: 375, type: !13)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !246, file: !1, line: 375, type: !274)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, align: 8, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 128)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advertised_file", scope: !246, file: !1, line: 376, type: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioAdvertisedFileDesc", file: !279, line: 36, baseType: !280)
!279 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/ioutil_AdvertisedFiles.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!280 = !DICompositeType(tag: DW_TAG_structure_type, file: !279, line: 29, size: 320, align: 64, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "thorn", scope: !280, file: !279, line: 31, baseType: !56, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !280, file: !279, line: 32, baseType: !56, size: 64, align: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mimetype", scope: !280, file: !279, line: 33, baseType: !56, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !280, file: !279, line: 34, baseType: !56, size: 64, align: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !280, file: !279, line: 35, baseType: !56, size: 64, align: 64, offset: 256)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myGH", scope: !246, file: !1, line: 377, type: !4)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "openmode", scope: !246, file: !1, line: 378, type: !15)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !246, file: !1, line: 378, type: !15)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fileinfo", scope: !246, file: !1, line: 379, type: !291)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !292, line: 182, size: 1152, align: 64, elements: !293)
!292 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!293 = !{!294, !299, !305, !308, !312, !317, !321, !322, !330, !331, !332, !333, !336, !340, !344, !345, !346, !347}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !291, file: !292, line: 182, baseType: !295, size: 32, align: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !296, line: 30, baseType: !297)
!296 = !DIFile(filename: "/usr/include/sys/_types/_dev_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !137, line: 57, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !139, line: 44, baseType: !10)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !291, file: !292, line: 182, baseType: !300, size: 16, align: 16, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !301, line: 30, baseType: !302)
!301 = !DIFile(filename: "/usr/include/sys/_types/_mode_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !137, line: 70, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !139, line: 43, baseType: !304)
!304 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !291, file: !292, line: 182, baseType: !306, size: 16, align: 16, offset: 48)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !307, line: 30, baseType: !303)
!307 = !DIFile(filename: "/usr/include/sys/_types/_nlink_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !291, file: !292, line: 182, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !137, line: 62, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !139, line: 47, baseType: !311)
!311 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !291, file: !292, line: 182, baseType: !313, size: 32, align: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !314, line: 30, baseType: !315)
!314 = !DIFile(filename: "/usr/include/sys/_types/_uid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !137, line: 75, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !139, line: 45, baseType: !26)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !291, file: !292, line: 182, baseType: !318, size: 32, align: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !319, line: 30, baseType: !320)
!319 = !DIFile(filename: "/usr/include/sys/_types/_gid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !137, line: 60, baseType: !316)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !291, file: !292, line: 182, baseType: !295, size: 32, align: 32, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !291, file: !292, line: 182, baseType: !323, size: 128, align: 64, offset: 256)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !324, line: 30, size: 128, align: 64, elements: !325)
!324 = !DIFile(filename: "/usr/include/sys/_types/_timespec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!325 = !{!326, !329}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !323, file: !324, line: 32, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !139, line: 120, baseType: !328)
!328 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !323, file: !324, line: 33, baseType: !328, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !291, file: !292, line: 182, baseType: !323, size: 128, align: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !291, file: !292, line: 182, baseType: !323, size: 128, align: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !291, file: !292, line: 182, baseType: !323, size: 128, align: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !291, file: !292, line: 182, baseType: !334, size: 64, align: 64, offset: 768)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !335, line: 30, baseType: !136)
!335 = !DIFile(filename: "/usr/include/sys/_types/_off_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !291, file: !292, line: 182, baseType: !337, size: 64, align: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !338, line: 30, baseType: !339)
!338 = !DIFile(filename: "/usr/include/sys/_types/_blkcnt_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !137, line: 55, baseType: !138)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !291, file: !292, line: 182, baseType: !341, size: 32, align: 32, offset: 896)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !342, line: 30, baseType: !343)
!342 = !DIFile(filename: "/usr/include/sys/_types/_blksize_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !137, line: 56, baseType: !298)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !291, file: !292, line: 182, baseType: !316, size: 32, align: 32, offset: 928)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !291, file: !292, line: 182, baseType: !316, size: 32, align: 32, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !291, file: !292, line: 182, baseType: !298, size: 32, align: 32, offset: 992)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !291, file: !292, line: 182, baseType: !348, size: 128, align: 64, offset: 1024)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, align: 64, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 2)
!351 = !{!352}
!352 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 25, type: !56, isLocal: true, isDefinition: true)
!353 = !{i32 2, !"Dwarf Version", i32 2}
!354 = !{i32 2, !"Debug Info Version", i32 700000003}
!355 = !{i32 1, !"PIC Level", i32 2}
!356 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!357 = !DILocation(line: 27, column: 1, scope: !53)
!358 = !DIExpression()
!359 = !DILocation(line: 75, column: 39, scope: !58)
!360 = !DILocation(line: 75, column: 47, scope: !58)
!361 = !DILocation(line: 75, column: 67, scope: !58)
!362 = !DILocation(line: 85, column: 8, scope: !58)
!363 = !DILocation(line: 93, column: 5, scope: !58)
!364 = !DILocation(line: 99, column: 5, scope: !58)
!365 = !DILocation(line: 100, column: 3, scope: !58)
!366 = !{!367, !368, i64 16}
!367 = !{!"", !368, i64 0, !368, i64 8, !368, i64 16, !368, i64 24, !368, i64 32, !368, i64 40, !368, i64 48, !371, i64 56, !371, i64 60}
!368 = !{!"any pointer", !369, i64 0}
!369 = !{!"omnipotent char", !370, i64 0}
!370 = !{!"Simple C/C++ TBAA"}
!371 = !{!"int", !369, i64 0}
!372 = !{!367, !368, i64 24}
!373 = !{!367, !368, i64 40}
!374 = !{!375, !371, i64 204}
!375 = !{!"", !376, i64 0, !376, i64 8, !376, i64 16, !376, i64 24, !376, i64 32, !376, i64 40, !376, i64 48, !376, i64 56, !376, i64 64, !368, i64 72, !368, i64 80, !368, i64 88, !368, i64 96, !368, i64 104, !368, i64 112, !368, i64 120, !368, i64 128, !368, i64 136, !368, i64 144, !368, i64 152, !368, i64 160, !368, i64 168, !368, i64 176, !371, i64 184, !371, i64 188, !371, i64 192, !371, i64 196, !371, i64 200, !371, i64 204, !371, i64 208, !371, i64 212, !371, i64 216, !371, i64 220, !371, i64 224, !371, i64 228, !371, i64 232, !371, i64 236, !371, i64 240, !371, i64 244, !371, i64 248, !371, i64 252, !371, i64 256, !371, i64 260, !371, i64 264, !371, i64 268, !371, i64 272, !371, i64 276, !371, i64 280, !371, i64 284, !371, i64 288, !371, i64 292}
!376 = !{!"double", !369, i64 0}
!377 = !DILocation(line: 109, column: 38, scope: !378)
!378 = distinct !DILexicalBlock(scope: !58, file: !1, line: 109, column: 7)
!379 = !DILocation(line: 109, column: 9, scope: !378)
!380 = !DILocation(line: 109, column: 7, scope: !58)
!381 = !DILocation(line: 111, column: 16, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !1, line: 110, column: 3)
!383 = !DILocation(line: 87, column: 9, scope: !58)
!384 = !DILocation(line: 112, column: 5, scope: !382)
!385 = !DILocation(line: 115, column: 5, scope: !382)
!386 = !DILocation(line: 116, column: 5, scope: !382)
!387 = !DILocation(line: 120, column: 3, scope: !58)
!388 = !DILocation(line: 123, column: 20, scope: !58)
!389 = !DILocation(line: 86, column: 15, scope: !58)
!390 = !DILocation(line: 126, column: 24, scope: !58)
!391 = !DILocation(line: 129, column: 35, scope: !58)
!392 = !DILocation(line: 129, column: 65, scope: !58)
!393 = !DILocation(line: 129, column: 27, scope: !58)
!394 = !DILocation(line: 82, column: 9, scope: !58)
!395 = !DILocation(line: 83, column: 9, scope: !58)
!396 = !DILocation(line: 133, column: 10, scope: !58)
!397 = !DILocation(line: 133, column: 23, scope: !58)
!398 = !DILocation(line: 153, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !58, file: !1, line: 134, column: 3)
!400 = !DILocation(line: 169, column: 45, scope: !399)
!401 = !DILocation(line: 175, column: 11, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 175, column: 11)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 173, column: 5)
!404 = distinct !DILexicalBlock(scope: !399, file: !1, line: 172, column: 9)
!405 = !DILocation(line: 209, column: 51, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !1, line: 185, column: 7)
!407 = !DILocation(line: 220, column: 40, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 218, column: 7)
!409 = distinct !DILexicalBlock(scope: !403, file: !1, line: 217, column: 11)
!410 = !DILocation(line: 133, column: 26, scope: !58)
!411 = !{!369, !369, i64 0}
!412 = !DILocation(line: 133, column: 3, scope: !58)
!413 = !DILocation(line: 267, column: 13, scope: !229, inlinedAt: !414)
!414 = distinct !DILocation(line: 136, column: 12, scope: !399)
!415 = !DILocation(line: 153, column: 29, scope: !235, inlinedAt: !416)
!416 = distinct !DILocation(line: 269, column: 10, scope: !229, inlinedAt: !414)
!417 = !DILocation(line: 153, column: 47, scope: !235, inlinedAt: !416)
!418 = !DILocation(line: 158, column: 10, scope: !235, inlinedAt: !416)
!419 = !DILocation(line: 158, column: 27, scope: !235, inlinedAt: !416)
!420 = !{!371, !371, i64 0}
!421 = !DILocation(line: 158, column: 25, scope: !235, inlinedAt: !416)
!422 = !DILocation(line: 136, column: 21, scope: !399)
!423 = !DILocation(line: 159, column: 7, scope: !235, inlinedAt: !416)
!424 = !DILocation(line: 136, column: 12, scope: !399)
!425 = !DILocation(line: 269, column: 10, scope: !229, inlinedAt: !414)
!426 = !DILocation(line: 138, column: 19, scope: !427)
!427 = distinct !DILexicalBlock(scope: !399, file: !1, line: 137, column: 5)
!428 = !DILocation(line: 136, column: 5, scope: !399)
!429 = !DILocation(line: 136, column: 27, scope: !399)
!430 = !DILocation(line: 140, column: 11, scope: !431)
!431 = distinct !DILexicalBlock(scope: !399, file: !1, line: 140, column: 9)
!432 = !DILocation(line: 140, column: 9, scope: !399)
!433 = !DILocation(line: 146, column: 31, scope: !399)
!434 = !DILocation(line: 147, column: 12, scope: !399)
!435 = !DILocation(line: 147, column: 24, scope: !399)
!436 = !DILocation(line: 267, column: 13, scope: !229, inlinedAt: !437)
!437 = distinct !DILocation(line: 147, column: 29, scope: !399)
!438 = !DILocation(line: 153, column: 29, scope: !235, inlinedAt: !439)
!439 = distinct !DILocation(line: 269, column: 10, scope: !229, inlinedAt: !437)
!440 = !DILocation(line: 153, column: 47, scope: !235, inlinedAt: !439)
!441 = !DILocation(line: 158, column: 10, scope: !235, inlinedAt: !439)
!442 = !DILocation(line: 158, column: 27, scope: !235, inlinedAt: !439)
!443 = !DILocation(line: 158, column: 25, scope: !235, inlinedAt: !439)
!444 = !DILocation(line: 159, column: 7, scope: !235, inlinedAt: !439)
!445 = !DILocation(line: 147, column: 29, scope: !399)
!446 = !DILocation(line: 269, column: 10, scope: !229, inlinedAt: !437)
!447 = !DILocation(line: 147, column: 5, scope: !399)
!448 = !DILocation(line: 154, column: 5, scope: !399)
!449 = !DILocation(line: 154, column: 45, scope: !399)
!450 = !DILocation(line: 158, column: 24, scope: !399)
!451 = !DILocation(line: 78, column: 7, scope: !58)
!452 = !DILocation(line: 159, column: 26, scope: !453)
!453 = distinct !DILexicalBlock(scope: !399, file: !1, line: 159, column: 9)
!454 = !DILocation(line: 159, column: 9, scope: !399)
!455 = !DILocation(line: 161, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !1, line: 160, column: 5)
!457 = !DILocation(line: 164, column: 7, scope: !456)
!458 = !DILocation(line: 168, column: 12, scope: !399)
!459 = !DILocation(line: 77, column: 7, scope: !58)
!460 = !DILocation(line: 172, column: 14, scope: !404)
!461 = !DILocation(line: 172, column: 19, scope: !404)
!462 = !DILocation(line: 172, column: 22, scope: !404)
!463 = !{!368, !368, i64 0}
!464 = !DILocation(line: 172, column: 39, scope: !404)
!465 = !DILocation(line: 172, column: 9, scope: !399)
!466 = !DILocation(line: 175, column: 11, scope: !403)
!467 = !DILocation(line: 178, column: 51, scope: !468)
!468 = distinct !DILexicalBlock(scope: !402, file: !1, line: 176, column: 7)
!469 = !{!470, !368, i64 24}
!470 = !{!"IOBASIC_GH", !371, i64 0, !371, i64 4, !369, i64 8, !368, i64 16, !368, i64 24, !368, i64 32, !368, i64 40, !368, i64 48, !368, i64 56}
!471 = !DILocation(line: 178, column: 37, scope: !468)
!472 = !DILocation(line: 179, column: 37, scope: !468)
!473 = !DILocation(line: 179, column: 54, scope: !468)
!474 = !DILocation(line: 180, column: 37, scope: !468)
!475 = !DILocation(line: 178, column: 65, scope: !468)
!476 = !DILocation(line: 179, column: 52, scope: !468)
!477 = !DILocation(line: 179, column: 76, scope: !468)
!478 = !DILocation(line: 180, column: 61, scope: !468)
!479 = !DILocation(line: 178, column: 29, scope: !468)
!480 = !DILocation(line: 81, column: 9, scope: !58)
!481 = !DILocation(line: 181, column: 9, scope: !468)
!482 = !DILocation(line: 183, column: 7, scope: !468)
!483 = !DILocation(line: 187, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !406, file: !1, line: 187, column: 13)
!485 = !DILocation(line: 187, column: 46, scope: !484)
!486 = !DILocation(line: 187, column: 13, scope: !406)
!487 = !DILocation(line: 191, column: 18, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !1, line: 191, column: 18)
!489 = !DILocation(line: 191, column: 51, scope: !488)
!490 = !DILocation(line: 191, column: 18, scope: !484)
!491 = !DILocation(line: 195, column: 18, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !1, line: 195, column: 18)
!493 = !DILocation(line: 195, column: 49, scope: !492)
!494 = !DILocation(line: 195, column: 18, scope: !488)
!495 = !DILocation(line: 199, column: 18, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !1, line: 199, column: 18)
!497 = !DILocation(line: 199, column: 49, scope: !496)
!498 = !DILocation(line: 202, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !1, line: 200, column: 9)
!500 = !DILocation(line: 209, column: 37, scope: !406)
!501 = !DILocation(line: 210, column: 37, scope: !406)
!502 = !DILocation(line: 210, column: 54, scope: !406)
!503 = !DILocation(line: 209, column: 65, scope: !406)
!504 = !DILocation(line: 210, column: 52, scope: !406)
!505 = !DILocation(line: 210, column: 77, scope: !406)
!506 = !DILocation(line: 209, column: 29, scope: !406)
!507 = !DILocation(line: 211, column: 9, scope: !406)
!508 = !DILocation(line: 215, column: 14, scope: !403)
!509 = !DILocation(line: 80, column: 9, scope: !58)
!510 = !DILocation(line: 217, column: 11, scope: !409)
!511 = !DILocation(line: 217, column: 11, scope: !403)
!512 = !{!513, !376, i64 120}
!513 = !{!"", !371, i64 0, !371, i64 4, !368, i64 8, !368, i64 16, !368, i64 24, !368, i64 32, !368, i64 40, !368, i64 48, !368, i64 56, !376, i64 64, !368, i64 72, !368, i64 80, !368, i64 88, !368, i64 96, !371, i64 104, !368, i64 112, !376, i64 120, !368, i64 128, !368, i64 136, !368, i64 144}
!514 = !DILocation(line: 88, column: 13, scope: !58)
!515 = !DILocation(line: 220, column: 51, scope: !408)
!516 = !{!376, !376, i64 0}
!517 = !DILocation(line: 220, column: 9, scope: !408)
!518 = !DILocation(line: 221, column: 9, scope: !408)
!519 = !DILocation(line: 222, column: 7, scope: !408)
!520 = !DILocation(line: 225, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !409, file: !1, line: 224, column: 7)
!522 = !DILocation(line: 229, column: 7, scope: !403)
!523 = !DILocation(line: 234, column: 3, scope: !58)
!524 = !DILocation(line: 236, column: 26, scope: !58)
!525 = !DILocation(line: 237, column: 1, scope: !58)
!526 = !DILocation(line: 366, column: 41, scope: !246)
!527 = !DILocation(line: 367, column: 34, scope: !246)
!528 = !DILocation(line: 368, column: 42, scope: !246)
!529 = !DILocation(line: 369, column: 42, scope: !246)
!530 = !DILocation(line: 370, column: 42, scope: !246)
!531 = !DILocation(line: 371, column: 42, scope: !246)
!532 = !DILocation(line: 373, column: 3, scope: !246)
!533 = !{!375, !368, i64 112}
!534 = !DILocation(line: 375, column: 3, scope: !246)
!535 = !DILocation(line: 375, column: 22, scope: !246)
!536 = !DILocation(line: 376, column: 3, scope: !246)
!537 = !DILocation(line: 379, column: 3, scope: !246)
!538 = !DILocation(line: 383, column: 24, scope: !246)
!539 = !DILocation(line: 386, column: 14, scope: !246)
!540 = !DILocation(line: 378, column: 20, scope: !246)
!541 = !DILocation(line: 389, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !246, file: !1, line: 389, column: 7)
!543 = !{!470, !368, i64 56}
!544 = !DILocation(line: 389, column: 7, scope: !542)
!545 = !DILocation(line: 389, column: 57, scope: !542)
!546 = !DILocation(line: 389, column: 7, scope: !246)
!547 = !DILocation(line: 393, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !1, line: 393, column: 9)
!549 = distinct !DILexicalBlock(scope: !542, file: !1, line: 390, column: 3)
!550 = !DILocation(line: 393, column: 9, scope: !549)
!551 = !DILocation(line: 379, column: 15, scope: !246)
!552 = !DILocation(line: 394, column: 18, scope: !548)
!553 = !DILocation(line: 394, column: 45, scope: !548)
!554 = !DILocation(line: 378, column: 9, scope: !246)
!555 = !DILocation(line: 394, column: 7, scope: !548)
!556 = !DILocation(line: 404, column: 10, scope: !246)
!557 = !DILocation(line: 374, column: 9, scope: !246)
!558 = !DILocation(line: 405, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !246, file: !1, line: 405, column: 7)
!560 = !DILocation(line: 405, column: 12, scope: !559)
!561 = !DILocation(line: 405, column: 15, scope: !559)
!562 = !DILocation(line: 405, column: 25, scope: !559)
!563 = !DILocation(line: 405, column: 7, scope: !246)
!564 = !DILocation(line: 407, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 407, column: 9)
!566 = distinct !DILexicalBlock(scope: !559, file: !1, line: 406, column: 3)
!567 = !DILocation(line: 415, column: 23, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !1, line: 413, column: 5)
!569 = !DILocation(line: 415, column: 32, scope: !568)
!570 = !{!571, !368, i64 16}
!571 = !{!"", !368, i64 0, !368, i64 8, !368, i64 16, !368, i64 24, !368, i64 32}
!572 = !DILocation(line: 419, column: 5, scope: !566)
!573 = !DILocation(line: 422, column: 21, scope: !566)
!574 = !DILocation(line: 422, column: 27, scope: !566)
!575 = !{!571, !368, i64 24}
!576 = !DILocation(line: 423, column: 21, scope: !566)
!577 = !DILocation(line: 423, column: 27, scope: !566)
!578 = !{!571, !368, i64 0}
!579 = !DILocation(line: 424, column: 21, scope: !566)
!580 = !DILocation(line: 424, column: 29, scope: !566)
!581 = !{!571, !368, i64 8}
!582 = !DILocation(line: 425, column: 21, scope: !566)
!583 = !DILocation(line: 425, column: 33, scope: !566)
!584 = !{!571, !368, i64 32}
!585 = !DILocation(line: 376, column: 24, scope: !246)
!586 = !DILocation(line: 427, column: 5, scope: !566)
!587 = !DILocation(line: 430, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !566, file: !1, line: 430, column: 9)
!589 = !DILocation(line: 430, column: 58, scope: !588)
!590 = !DILocation(line: 431, column: 9, scope: !588)
!591 = !DILocation(line: 430, column: 9, scope: !566)
!592 = !DILocation(line: 433, column: 17, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !1, line: 432, column: 5)
!594 = !DILocation(line: 434, column: 7, scope: !593)
!595 = !DILocation(line: 435, column: 7, scope: !593)
!596 = !DILocation(line: 436, column: 5, scope: !593)
!597 = !DILocation(line: 437, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !566, file: !1, line: 437, column: 9)
!599 = !DILocation(line: 437, column: 53, scope: !598)
!600 = !DILocation(line: 438, column: 9, scope: !598)
!601 = !DILocation(line: 437, column: 9, scope: !566)
!602 = !DILocation(line: 440, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !1, line: 439, column: 5)
!604 = !DILocation(line: 441, column: 7, scope: !603)
!605 = !DILocation(line: 442, column: 7, scope: !603)
!606 = !DILocation(line: 443, column: 7, scope: !603)
!607 = !DILocation(line: 444, column: 7, scope: !603)
!608 = !DILocation(line: 445, column: 5, scope: !603)
!609 = !DILocation(line: 446, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !566, file: !1, line: 446, column: 9)
!611 = !DILocation(line: 446, column: 51, scope: !610)
!612 = !DILocation(line: 447, column: 9, scope: !610)
!613 = !DILocation(line: 446, column: 9, scope: !566)
!614 = !DILocation(line: 449, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !1, line: 448, column: 5)
!616 = !DILocation(line: 450, column: 70, scope: !615)
!617 = !DILocation(line: 450, column: 7, scope: !615)
!618 = !DILocation(line: 451, column: 5, scope: !615)
!619 = !DILocation(line: 452, column: 5, scope: !566)
!620 = !DILocation(line: 454, column: 3, scope: !566)
!621 = !DILocation(line: 456, column: 3, scope: !246)
!622 = !DILocation(line: 459, column: 1, scope: !246)
!623 = !DILocation(line: 277, column: 39, scope: !201)
!624 = !DILocation(line: 277, column: 47, scope: !201)
!625 = !DILocation(line: 277, column: 67, scope: !201)
!626 = !DILocation(line: 279, column: 3, scope: !201)
!627 = !DILocation(line: 285, column: 8, scope: !201)
!628 = !DILocation(line: 285, column: 29, scope: !201)
!629 = !DILocation(line: 289, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !201, file: !1, line: 289, column: 7)
!631 = !DILocation(line: 289, column: 24, scope: !630)
!632 = !DILocation(line: 289, column: 7, scope: !201)
!633 = !DILocation(line: 295, column: 38, scope: !634)
!634 = distinct !DILexicalBlock(scope: !201, file: !1, line: 295, column: 7)
!635 = !DILocation(line: 295, column: 9, scope: !634)
!636 = !DILocation(line: 295, column: 7, scope: !201)
!637 = !DILocation(line: 297, column: 16, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !1, line: 296, column: 3)
!639 = !DILocation(line: 283, column: 9, scope: !201)
!640 = !DILocation(line: 298, column: 5, scope: !638)
!641 = !DILocation(line: 301, column: 5, scope: !638)
!642 = !DILocation(line: 302, column: 5, scope: !638)
!643 = !DILocation(line: 306, column: 3, scope: !201)
!644 = !DILocation(line: 307, column: 3, scope: !201)
!645 = !DILocation(line: 310, column: 24, scope: !201)
!646 = !DILocation(line: 313, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !201, file: !1, line: 313, column: 7)
!648 = !DILocation(line: 313, column: 7, scope: !201)
!649 = !DILocation(line: 315, column: 22, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !1, line: 314, column: 3)
!651 = !DILocation(line: 284, column: 15, scope: !201)
!652 = !DILocation(line: 316, column: 3, scope: !650)
!653 = !DILocation(line: 323, column: 45, scope: !201)
!654 = !DILocation(line: 323, column: 31, scope: !201)
!655 = !DILocation(line: 323, column: 61, scope: !201)
!656 = !DILocation(line: 324, column: 31, scope: !201)
!657 = !DILocation(line: 323, column: 59, scope: !201)
!658 = !DILocation(line: 323, column: 76, scope: !201)
!659 = !DILocation(line: 324, column: 55, scope: !201)
!660 = !DILocation(line: 323, column: 23, scope: !201)
!661 = !DILocation(line: 283, column: 20, scope: !201)
!662 = !DILocation(line: 325, column: 3, scope: !201)
!663 = !DILocation(line: 328, column: 10, scope: !201)
!664 = !DILocation(line: 280, column: 9, scope: !201)
!665 = !DILocation(line: 329, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !201, file: !1, line: 329, column: 7)
!667 = !DILocation(line: 329, column: 7, scope: !201)
!668 = !DILocation(line: 332, column: 12, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !1, line: 330, column: 3)
!670 = !DILocation(line: 281, column: 9, scope: !201)
!671 = !DILocation(line: 334, column: 13, scope: !669)
!672 = !DILocation(line: 334, column: 5, scope: !669)
!673 = !DILocation(line: 337, column: 45, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 335, column: 5)
!675 = !DILocation(line: 338, column: 28, scope: !674)
!676 = !DILocation(line: 338, column: 27, scope: !674)
!677 = !DILocation(line: 337, column: 9, scope: !674)
!678 = !DILocation(line: 339, column: 9, scope: !674)
!679 = !DILocation(line: 341, column: 44, scope: !674)
!680 = !DILocation(line: 342, column: 25, scope: !674)
!681 = !DILocation(line: 342, column: 24, scope: !674)
!682 = !DILocation(line: 341, column: 9, scope: !674)
!683 = !DILocation(line: 343, column: 9, scope: !674)
!684 = !DILocation(line: 345, column: 9, scope: !674)
!685 = !DILocation(line: 346, column: 9, scope: !674)
!686 = !DILocation(line: 350, column: 5, scope: !669)
!687 = !DILocation(line: 351, column: 3, scope: !669)
!688 = !DILocation(line: 354, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !666, file: !1, line: 353, column: 3)
!690 = !DILocation(line: 360, column: 3, scope: !201)
!691 = !DILocation(line: 362, column: 26, scope: !201)
!692 = !DILocation(line: 363, column: 1, scope: !201)
