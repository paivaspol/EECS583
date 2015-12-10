; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stockholm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct.__sFILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.ssifile_s = type { %struct.__sFILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"# STOCKHOLM 1.\00", align 1
@.str1 = private unnamed_addr constant [334 x i8] c"File %s doesn't appear to be in Stockholm format.\0AAssuming there isn't some other problem with your file (it is an\0Aalignment file, right?), please either:\0A  a) use the Babelfish format autotranslator option (-B, usually);\0A  b) specify the file's format with the --informat option; or\0A  a) reformat the alignment to Stockholm format.\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"#=GF\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"#=GS\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"#=GC\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"#=GR\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str7 = private unnamed_addr constant [76 x i8] c"Stockholm format parse error: line %d of file %s while reading alignment %s\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [38 x i8] c"Didn't find // at end of alignment %s\00", align 1
@.str10 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stockholm.c\00", align 1
@.str11 = private unnamed_addr constant [17 x i8] c"# STOCKHOLM 1.0\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"#=GF ID    %s\0A\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"#=GF AC    %s\0A\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"#=GF DE    %s\0A\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"#=GF AU    %s\0A\00", align 1
@.str18 = private unnamed_addr constant [22 x i8] c"#=GF GA    %.1f %.1f\0A\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"#=GF GA    %.1f\0A\00", align 1
@.str20 = private unnamed_addr constant [22 x i8] c"#=GF NC    %.1f %.1f\0A\00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"#=GF NC    %.1f\0A\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"#=GF TC    %.1f %.1f\0A\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"#=GF TC    %.1f\0A\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"#=GF %-5s %s\0A\00", align 1
@.str25 = private unnamed_addr constant [24 x i8] c"#=GS %-*.*s WT    %.2f\0A\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"#=GS %-*.*s AC    %s\0A\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"#=GS %*.*s DE    %s\0A\00", align 1
@.str28 = private unnamed_addr constant [19 x i8] c"#=GS %*.*s %5s %s\0A\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"%-*.*s  %s\0A\00", align 1
@.str30 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SS     %s\0A\00", align 1
@.str31 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SA     %s\0A\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"#=GR %-*.*s %5s  %s\0A\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"#=GC %-*.*s %s\0A\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"SS_cons\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"SA_cons\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str41 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"GA\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"SA\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %afp) #0 {
  %s.i16 = alloca i8*, align 8
  %len.i17 = alloca i32, align 4
  %s.i14 = alloca i8*, align 8
  %len.i11 = alloca i32, align 4
  %s.i12 = alloca i8*, align 8
  %s.i9 = alloca i8*, align 8
  %len.i = alloca i32, align 4
  %s.i3 = alloca i8*, align 8
  %s.i = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !205, metadata !296), !dbg !297
  %1 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !298
  %2 = load %struct.__sFILE** %1, align 8, !dbg !298, !tbaa !300
  %3 = tail call i32 @feof(%struct.__sFILE* %2) #6, !dbg !306
  %4 = icmp eq i32 %3, 0, !dbg !306
  br i1 %4, label %5, label %359, !dbg !307

; <label>:5                                       ; preds = %0
  %6 = tail call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #6, !dbg !308
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !206, metadata !296), !dbg !309
  br label %7, !dbg !310

; <label>:7                                       ; preds = %11, %5
  %8 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !311
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !207, metadata !296), !dbg !314
  %9 = icmp eq i8* %8, null, !dbg !315
  br i1 %9, label %10, label %11, !dbg !316

; <label>:10                                      ; preds = %7
  tail call void @MSAFree(%struct.msa_struct* %6) #6, !dbg !317
  br label %359, !dbg !319

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @IsBlankline(i8* %8) #6, !dbg !320
  %13 = icmp eq i32 %12, 0, !dbg !321
  br i1 %13, label %14, label %7, !dbg !321

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @strncmp(i8* %8, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i64 14) #6, !dbg !322
  %16 = icmp eq i32 %15, 0, !dbg !324
  br i1 %16, label %.preheader19, label %17, !dbg !325

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !326
  %19 = load i8** %18, align 8, !dbg !326, !tbaa !327
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([334 x i8]* @.str1, i64 0, i64 0), i8* %19) #6, !dbg !328
  br label %.preheader19, !dbg !328

.preheader19:                                     ; preds = %17, %14
  %20 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !329
  call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !207, metadata !296), !dbg !314
  %21 = icmp eq i8* %20, null, !dbg !330
  br i1 %21, label %.thread, label %.preheader.lr.ph, !dbg !331

.preheader.lr.ph:                                 ; preds = %.preheader19
  %22 = bitcast i8** %s.i16 to i8*, !dbg !332
  %23 = bitcast i32* %len.i17 to i8*, !dbg !332
  %24 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 45, !dbg !338
  %25 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 0, !dbg !339
  %26 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 42, !dbg !340
  %27 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !341
  %28 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !343
  %29 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 7, !dbg !344
  %30 = bitcast i8** %s.i to i8*, !dbg !345
  %31 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 9, !dbg !349
  %32 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 8, !dbg !352
  %33 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 10, !dbg !354
  %34 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 2, !dbg !356
  %35 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 2, !dbg !359
  %36 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 3, !dbg !360
  %37 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 3, !dbg !363
  %38 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 4, !dbg !364
  %39 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 4, !dbg !367
  %40 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 5, !dbg !368
  %41 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 5, !dbg !371
  %42 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 0, !dbg !372
  %43 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 0, !dbg !375
  %44 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 18, i64 1, !dbg !376
  %45 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 19, i64 1, !dbg !379
  %46 = bitcast i8** %s.i3 to i8*, !dbg !380
  %47 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 2, !dbg !383
  %48 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 5, !dbg !386
  %49 = bitcast i8** %s.i9 to i8*, !dbg !387
  %50 = bitcast i32* %len.i to i8*, !dbg !387
  %51 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 11, !dbg !390
  %52 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 12, !dbg !392
  %53 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 13, !dbg !394
  %54 = bitcast i32* %len.i11 to i8*, !dbg !396
  %55 = bitcast i8** %s.i12 to i8*, !dbg !396
  %56 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 16, !dbg !399
  %57 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 40, !dbg !403
  %58 = bitcast i8*** %56 to i8**, !dbg !405
  %59 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 43, !dbg !406
  %60 = bitcast i32** %59 to i8**, !dbg !407
  %61 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 17, !dbg !408
  %62 = bitcast i8*** %61 to i8**, !dbg !412
  %63 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 44, !dbg !414
  %64 = bitcast i32** %63 to i8**, !dbg !415
  %65 = bitcast i8** %s.i14 to i8*, !dbg !416
  br label %.preheader, !dbg !331

.preheader:                                       ; preds = %.backedge, %67, %.preheader.lr.ph
  %s.0 = phi i8* [ %20, %.preheader.lr.ph ], [ %68, %67 ], [ %321, %.backedge ]
  %66 = load i8* %s.0, align 1, !dbg !418, !tbaa !419
  switch i8 %66, label %316 [
    i8 32, label %67
    i8 9, label %67
    i8 35, label %69
  ], !dbg !420

; <label>:67                                      ; preds = %.preheader, %.preheader
  %68 = getelementptr inbounds i8* %s.0, i64 1, !dbg !421
  call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !207, metadata !296), !dbg !314
  br label %.preheader, !dbg !420

; <label>:69                                      ; preds = %.preheader
  %70 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #6, !dbg !422
  %71 = icmp eq i32 %70, 0, !dbg !423
  br i1 %71, label %72, label %145, !dbg !424

; <label>:72                                      ; preds = %69
  call void @llvm.lifetime.start(i64 8, i8* %30), !dbg !345
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !240, metadata !296) #5, !dbg !345
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !241, metadata !296) #5, !dbg !425
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !245, metadata !296) #5, !dbg !426
  store i8* %s.0, i8** %s.i, align 8, !dbg !427, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %73 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !429
  call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !242, metadata !296) #5, !dbg !431
  %74 = icmp eq i8* %73, null, !dbg !432
  br i1 %74, label %parse_gf.exit, label %75, !dbg !433

; <label>:75                                      ; preds = %72
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %76 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !434
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !243, metadata !296) #5, !dbg !436
  %77 = icmp eq i8* %76, null, !dbg !437
  br i1 %77, label %parse_gf.exit, label %78, !dbg !438

; <label>:78                                      ; preds = %75
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %79 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i32* null) #6, !dbg !439
  call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %80 = icmp eq i8* %79, null, !dbg !442
  br i1 %80, label %parse_gf.exit, label %.preheader.i, !dbg !443

.preheader.i:                                     ; preds = %78, %.critedge1.i
  %text.0.i = phi i8* [ %82, %.critedge1.i ], [ %79, %78 ], !dbg !444
  %81 = load i8* %text.0.i, align 1, !dbg !445, !tbaa !419
  switch i8 %81, label %.critedge.i [
    i8 9, label %.critedge1.i
    i8 32, label %.critedge1.i
  ], !dbg !446

.critedge1.i:                                     ; preds = %.preheader.i, %.preheader.i
  %82 = getelementptr inbounds i8* %text.0.i, i64 1, !dbg !447
  call void @llvm.dbg.value(metadata i8* %82, i64 0, metadata !244, metadata !296) #5, !dbg !441
  br label %.preheader.i, !dbg !448

.critedge.i:                                      ; preds = %.preheader.i
  %83 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0)) #6, !dbg !449
  %84 = icmp eq i32 %83, 0, !dbg !450
  br i1 %84, label %85, label %87, !dbg !451

; <label>:85                                      ; preds = %.critedge.i
  %86 = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !452
  store i8* %86, i8** %29, align 8, !dbg !453, !tbaa !454
  br label %parse_gf.exit, !dbg !456

; <label>:87                                      ; preds = %.critedge.i
  %88 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #6, !dbg !457
  %89 = icmp eq i32 %88, 0, !dbg !458
  br i1 %89, label %90, label %92, !dbg !459

; <label>:90                                      ; preds = %87
  %91 = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !460
  store i8* %91, i8** %31, align 8, !dbg !461, !tbaa !462
  br label %parse_gf.exit, !dbg !463

; <label>:92                                      ; preds = %87
  %93 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str41, i64 0, i64 0)) #6, !dbg !464
  %94 = icmp eq i32 %93, 0, !dbg !465
  br i1 %94, label %95, label %97, !dbg !466

; <label>:95                                      ; preds = %92
  %96 = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !467
  store i8* %96, i8** %32, align 8, !dbg !468, !tbaa !469
  br label %parse_gf.exit, !dbg !470

; <label>:97                                      ; preds = %92
  %98 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0)) #6, !dbg !471
  %99 = icmp eq i32 %98, 0, !dbg !472
  br i1 %99, label %100, label %102, !dbg !473

; <label>:100                                     ; preds = %97
  %101 = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !474
  store i8* %101, i8** %33, align 8, !dbg !475, !tbaa !476
  br label %parse_gf.exit, !dbg !477

; <label>:102                                     ; preds = %97
  %103 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #6, !dbg !478
  %104 = icmp eq i32 %103, 0, !dbg !479
  br i1 %104, label %105, label %116, !dbg !480

; <label>:105                                     ; preds = %102
  call void @llvm.dbg.value(metadata i8* %text.0.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !481, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %106 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !482
  call void @llvm.dbg.value(metadata i8* %106, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %107 = icmp eq i8* %106, null, !dbg !484
  br i1 %107, label %parse_gf.exit, label %108, !dbg !485

; <label>:108                                     ; preds = %105
  %109 = call double @atof(i8* %106) #6, !dbg !486
  %110 = fptrunc double %109 to float, !dbg !486
  store float %110, float* %34, align 4, !dbg !487, !tbaa !488
  store i32 1, i32* %35, align 4, !dbg !490, !tbaa !491
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %111 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !492
  call void @llvm.dbg.value(metadata i8* %111, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %112 = icmp eq i8* %111, null, !dbg !493
  br i1 %112, label %parse_gf.exit, label %113, !dbg !494

; <label>:113                                     ; preds = %108
  %114 = call double @atof(i8* %111) #6, !dbg !495
  %115 = fptrunc double %114 to float, !dbg !495
  store float %115, float* %36, align 4, !dbg !496, !tbaa !488
  store i32 1, i32* %37, align 4, !dbg !497, !tbaa !491
  br label %parse_gf.exit, !dbg !498

; <label>:116                                     ; preds = %102
  %117 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !499
  %118 = icmp eq i32 %117, 0, !dbg !500
  br i1 %118, label %119, label %130, !dbg !501

; <label>:119                                     ; preds = %116
  call void @llvm.dbg.value(metadata i8* %text.0.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !502, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %120 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !503
  call void @llvm.dbg.value(metadata i8* %120, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %121 = icmp eq i8* %120, null, !dbg !505
  br i1 %121, label %parse_gf.exit, label %122, !dbg !506

; <label>:122                                     ; preds = %119
  %123 = call double @atof(i8* %120) #6, !dbg !507
  %124 = fptrunc double %123 to float, !dbg !507
  store float %124, float* %38, align 4, !dbg !508, !tbaa !488
  store i32 1, i32* %39, align 4, !dbg !509, !tbaa !491
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %125 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !510
  call void @llvm.dbg.value(metadata i8* %125, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %126 = icmp eq i8* %125, null, !dbg !511
  br i1 %126, label %parse_gf.exit, label %127, !dbg !512

; <label>:127                                     ; preds = %122
  %128 = call double @atof(i8* %125) #6, !dbg !513
  %129 = fptrunc double %128 to float, !dbg !513
  store float %129, float* %40, align 4, !dbg !514, !tbaa !488
  store i32 1, i32* %41, align 4, !dbg !515, !tbaa !491
  br label %parse_gf.exit, !dbg !516

; <label>:130                                     ; preds = %116
  %131 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !517
  %132 = icmp eq i32 %131, 0, !dbg !518
  br i1 %132, label %133, label %144, !dbg !519

; <label>:133                                     ; preds = %130
  call void @llvm.dbg.value(metadata i8* %text.0.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !520, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %134 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !521
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %135 = icmp eq i8* %134, null, !dbg !523
  br i1 %135, label %parse_gf.exit, label %136, !dbg !524

; <label>:136                                     ; preds = %133
  %137 = call double @atof(i8* %134) #6, !dbg !525
  %138 = fptrunc double %137 to float, !dbg !525
  store float %138, float* %42, align 4, !dbg !526, !tbaa !488
  store i32 1, i32* %43, align 4, !dbg !527, !tbaa !491
  call void @llvm.dbg.value(metadata i8** %s.i, i64 0, metadata !245, metadata !296) #5, !dbg !426
  %139 = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !528
  call void @llvm.dbg.value(metadata i8* %139, i64 0, metadata !244, metadata !296) #5, !dbg !441
  %140 = icmp eq i8* %139, null, !dbg !529
  br i1 %140, label %parse_gf.exit, label %141, !dbg !530

; <label>:141                                     ; preds = %136
  %142 = call double @atof(i8* %139) #6, !dbg !531
  %143 = fptrunc double %142 to float, !dbg !531
  store float %143, float* %44, align 4, !dbg !532, !tbaa !488
  store i32 1, i32* %45, align 4, !dbg !533, !tbaa !491
  br label %parse_gf.exit, !dbg !534

; <label>:144                                     ; preds = %130
  call void @MSAAddGF(%struct.msa_struct* %6, i8* %76, i8* %text.0.i) #6, !dbg !535
  br label %parse_gf.exit, !dbg !444

parse_gf.exit:                                    ; preds = %72, %75, %78, %85, %90, %95, %100, %105, %108, %113, %119, %122, %127, %133, %136, %141, %144
  %.0.i = phi i32 [ 0, %72 ], [ 0, %75 ], [ 0, %78 ], [ 0, %105 ], [ 0, %119 ], [ 0, %133 ], [ 1, %108 ], [ 1, %122 ], [ 1, %136 ], [ 1, %90 ], [ 1, %100 ], [ 1, %127 ], [ 1, %141 ], [ 1, %144 ], [ 1, %113 ], [ 1, %95 ], [ 1, %85 ], !dbg !444
  call void @llvm.lifetime.end(i64 8, i8* %30), !dbg !536
  call void @llvm.dbg.value(metadata i32 %.0.i, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343, !dbg !538

; <label>:145                                     ; preds = %69
  %146 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i64 4) #6, !dbg !539
  %147 = icmp eq i32 %146, 0, !dbg !540
  br i1 %147, label %148, label %184, !dbg !541

; <label>:148                                     ; preds = %145
  call void @llvm.lifetime.start(i64 8, i8* %46), !dbg !380
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !248, metadata !296) #5, !dbg !380
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !249, metadata !296) #5, !dbg !542
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !255, metadata !296) #5, !dbg !543
  store i8* %s.0, i8** %s.i3, align 8, !dbg !544, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i3, i64 0, metadata !255, metadata !296) #5, !dbg !543
  %149 = call i8* @sre_strtok(i8** %s.i3, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !545
  call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !250, metadata !296) #5, !dbg !547
  %150 = icmp eq i8* %149, null, !dbg !548
  br i1 %150, label %parse_gs.exit, label %151, !dbg !549

; <label>:151                                     ; preds = %148
  call void @llvm.dbg.value(metadata i8** %s.i3, i64 0, metadata !255, metadata !296) #5, !dbg !543
  %152 = call i8* @sre_strtok(i8** %s.i3, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !550
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !251, metadata !296) #5, !dbg !552
  %153 = icmp eq i8* %152, null, !dbg !553
  br i1 %153, label %parse_gs.exit, label %154, !dbg !554

; <label>:154                                     ; preds = %151
  call void @llvm.dbg.value(metadata i8** %s.i3, i64 0, metadata !255, metadata !296) #5, !dbg !543
  %155 = call i8* @sre_strtok(i8** %s.i3, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !555
  call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !252, metadata !296) #5, !dbg !557
  %156 = icmp eq i8* %155, null, !dbg !558
  br i1 %156, label %parse_gs.exit, label %157, !dbg !559

; <label>:157                                     ; preds = %154
  call void @llvm.dbg.value(metadata i8** %s.i3, i64 0, metadata !255, metadata !296) #5, !dbg !543
  %158 = call i8* @sre_strtok(i8** %s.i3, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i32* null) #6, !dbg !560
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !253, metadata !296) #5, !dbg !562
  %159 = icmp eq i8* %158, null, !dbg !563
  br i1 %159, label %parse_gs.exit, label %.preheader.i5, !dbg !564

.preheader.i5:                                    ; preds = %157, %.critedge1.i6
  %text.0.i4 = phi i8* [ %161, %.critedge1.i6 ], [ %158, %157 ], !dbg !565
  %160 = load i8* %text.0.i4, align 1, !dbg !566, !tbaa !419
  switch i8 %160, label %.critedge.i7 [
    i8 9, label %.critedge1.i6
    i8 32, label %.critedge1.i6
  ], !dbg !567

.critedge1.i6:                                    ; preds = %.preheader.i5, %.preheader.i5
  %161 = getelementptr inbounds i8* %text.0.i4, i64 1, !dbg !568
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !253, metadata !296) #5, !dbg !562
  br label %.preheader.i5, !dbg !569

.critedge.i7:                                     ; preds = %.preheader.i5
  %162 = load i32* %24, align 4, !dbg !570, !tbaa !571
  %163 = add nsw i32 %162, 1, !dbg !572
  %164 = call i32 @MSAGetSeqidx(%struct.msa_struct* %6, i8* %152, i32 %163) #6, !dbg !573
  call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !254, metadata !296) #5, !dbg !574
  store i32 %164, i32* %24, align 4, !dbg !575, !tbaa !571
  %165 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8]* @.str46, i64 0, i64 0)) #6, !dbg !576
  %166 = icmp eq i32 %165, 0, !dbg !577
  br i1 %166, label %167, label %175, !dbg !578

; <label>:167                                     ; preds = %.critedge.i7
  %168 = call double @atof(i8* %text.0.i4) #6, !dbg !579
  %169 = fptrunc double %168 to float, !dbg !579
  %170 = sext i32 %164 to i64, !dbg !580
  %171 = load float** %47, align 8, !dbg !383, !tbaa !581
  %172 = getelementptr inbounds float* %171, i64 %170, !dbg !580
  store float %169, float* %172, align 4, !dbg !582, !tbaa !488
  %173 = load i32* %48, align 4, !dbg !583, !tbaa !584
  %174 = or i32 %173, 1, !dbg !583
  store i32 %174, i32* %48, align 4, !dbg !583, !tbaa !584
  br label %parse_gs.exit, !dbg !585

; <label>:175                                     ; preds = %.critedge.i7
  %176 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #6, !dbg !586
  %177 = icmp eq i32 %176, 0, !dbg !588
  br i1 %177, label %178, label %179, !dbg !589

; <label>:178                                     ; preds = %175
  call void @MSASetSeqAccession(%struct.msa_struct* %6, i32 %164, i8* %text.0.i4) #6, !dbg !590
  br label %parse_gs.exit, !dbg !590

; <label>:179                                     ; preds = %175
  %180 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8]* @.str41, i64 0, i64 0)) #6, !dbg !591
  %181 = icmp eq i32 %180, 0, !dbg !593
  br i1 %181, label %182, label %183, !dbg !594

; <label>:182                                     ; preds = %179
  call void @MSASetSeqDescription(%struct.msa_struct* %6, i32 %164, i8* %text.0.i4) #6, !dbg !595
  br label %parse_gs.exit, !dbg !595

; <label>:183                                     ; preds = %179
  call void @MSAAddGS(%struct.msa_struct* %6, i8* %155, i32 %164, i8* %text.0.i4) #6, !dbg !596
  br label %parse_gs.exit, !dbg !565

parse_gs.exit:                                    ; preds = %148, %151, %154, %157, %167, %178, %182, %183
  %.0.i8 = phi i32 [ 0, %148 ], [ 0, %151 ], [ 0, %154 ], [ 0, %157 ], [ 1, %178 ], [ 1, %183 ], [ 1, %182 ], [ 1, %167 ], !dbg !565
  call void @llvm.lifetime.end(i64 8, i8* %46), !dbg !597
  call void @llvm.dbg.value(metadata i32 %.0.i8, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343, !dbg !598

; <label>:184                                     ; preds = %145
  %185 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i64 4) #6, !dbg !599
  %186 = icmp eq i32 %185, 0, !dbg !600
  br i1 %186, label %187, label %215, !dbg !601

; <label>:187                                     ; preds = %184
  call void @llvm.lifetime.start(i64 8, i8* %49), !dbg !387
  call void @llvm.lifetime.start(i64 4, i8* %50), !dbg !387
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !258, metadata !296) #5, !dbg !387
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !259, metadata !296) #5, !dbg !602
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !263, metadata !296) #5, !dbg !603
  store i8* %s.0, i8** %s.i9, align 8, !dbg !604, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i9, i64 0, metadata !263, metadata !296) #5, !dbg !603
  %188 = call i8* @sre_strtok(i8** %s.i9, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !605
  call void @llvm.dbg.value(metadata i8* %188, i64 0, metadata !260, metadata !296) #5, !dbg !607
  %189 = icmp eq i8* %188, null, !dbg !608
  br i1 %189, label %parse_gc.exit, label %190, !dbg !609

; <label>:190                                     ; preds = %187
  call void @llvm.dbg.value(metadata i8** %s.i9, i64 0, metadata !263, metadata !296) #5, !dbg !603
  %191 = call i8* @sre_strtok(i8** %s.i9, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !610
  call void @llvm.dbg.value(metadata i8* %191, i64 0, metadata !261, metadata !296) #5, !dbg !612
  %192 = icmp eq i8* %191, null, !dbg !613
  br i1 %192, label %parse_gc.exit, label %193, !dbg !614

; <label>:193                                     ; preds = %190
  call void @llvm.dbg.value(metadata i8** %s.i9, i64 0, metadata !263, metadata !296) #5, !dbg !603
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !264, metadata !296) #5, !dbg !615
  %194 = call i8* @sre_strtok(i8** %s.i9, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* %len.i) #6, !dbg !616
  call void @llvm.dbg.value(metadata i8* %194, i64 0, metadata !262, metadata !296) #5, !dbg !618
  %195 = icmp eq i8* %194, null, !dbg !619
  br i1 %195, label %parse_gc.exit, label %196, !dbg !620

; <label>:196                                     ; preds = %193
  %197 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !621
  %198 = icmp eq i32 %197, 0, !dbg !622
  br i1 %198, label %199, label %202, !dbg !623

; <label>:199                                     ; preds = %196
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !264, metadata !296) #5, !dbg !615
  %200 = load i32* %len.i, align 4, !dbg !624, !tbaa !491
  %201 = call i32 @sre_strcat(i8** %51, i32 -1, i8* %194, i32 %200) #6, !dbg !625
  br label %parse_gc.exit, !dbg !625

; <label>:202                                     ; preds = %196
  %203 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !626
  %204 = icmp eq i32 %203, 0, !dbg !627
  br i1 %204, label %205, label %208, !dbg !628

; <label>:205                                     ; preds = %202
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !264, metadata !296) #5, !dbg !615
  %206 = load i32* %len.i, align 4, !dbg !629, !tbaa !491
  %207 = call i32 @sre_strcat(i8** %52, i32 -1, i8* %194, i32 %206) #6, !dbg !630
  br label %parse_gc.exit, !dbg !630

; <label>:208                                     ; preds = %202
  %209 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0)) #6, !dbg !631
  %210 = icmp eq i32 %209, 0, !dbg !632
  br i1 %210, label %211, label %214, !dbg !633

; <label>:211                                     ; preds = %208
  call void @llvm.dbg.value(metadata i32* %len.i, i64 0, metadata !264, metadata !296) #5, !dbg !615
  %212 = load i32* %len.i, align 4, !dbg !634, !tbaa !491
  %213 = call i32 @sre_strcat(i8** %53, i32 -1, i8* %194, i32 %212) #6, !dbg !635
  br label %parse_gc.exit, !dbg !635

; <label>:214                                     ; preds = %208
  call void @MSAAppendGC(%struct.msa_struct* %6, i8* %191, i8* %194) #6, !dbg !636
  br label %parse_gc.exit, !dbg !637

parse_gc.exit:                                    ; preds = %187, %190, %193, %199, %205, %211, %214
  %.0.i10 = phi i32 [ 0, %187 ], [ 0, %190 ], [ 0, %193 ], [ 1, %205 ], [ 1, %214 ], [ 1, %211 ], [ 1, %199 ], !dbg !637
  call void @llvm.lifetime.end(i64 8, i8* %49), !dbg !638
  call void @llvm.lifetime.end(i64 4, i8* %50), !dbg !638
  call void @llvm.dbg.value(metadata i32 %.0.i10, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343, !dbg !639

; <label>:215                                     ; preds = %184
  %216 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #6, !dbg !640
  %217 = icmp eq i32 %216, 0, !dbg !641
  br i1 %217, label %218, label %307, !dbg !642

; <label>:218                                     ; preds = %215
  call void @llvm.lifetime.start(i64 4, i8* %54), !dbg !396
  call void @llvm.lifetime.start(i64 8, i8* %55), !dbg !396
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !267, metadata !296) #5, !dbg !396
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !268, metadata !296) #5, !dbg !643
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !276, metadata !296) #5, !dbg !644
  store i8* %s.0, i8** %s.i12, align 8, !dbg !645, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i12, i64 0, metadata !276, metadata !296) #5, !dbg !644
  %219 = call i8* @sre_strtok(i8** %s.i12, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !646
  call void @llvm.dbg.value(metadata i8* %219, i64 0, metadata !269, metadata !296) #5, !dbg !648
  %220 = icmp eq i8* %219, null, !dbg !649
  br i1 %220, label %parse_gr.exit, label %221, !dbg !650

; <label>:221                                     ; preds = %218
  call void @llvm.dbg.value(metadata i8** %s.i12, i64 0, metadata !276, metadata !296) #5, !dbg !644
  %222 = call i8* @sre_strtok(i8** %s.i12, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !651
  call void @llvm.dbg.value(metadata i8* %222, i64 0, metadata !270, metadata !296) #5, !dbg !653
  %223 = icmp eq i8* %222, null, !dbg !654
  br i1 %223, label %parse_gr.exit, label %224, !dbg !655

; <label>:224                                     ; preds = %221
  call void @llvm.dbg.value(metadata i8** %s.i12, i64 0, metadata !276, metadata !296) #5, !dbg !644
  %225 = call i8* @sre_strtok(i8** %s.i12, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !656
  call void @llvm.dbg.value(metadata i8* %225, i64 0, metadata !271, metadata !296) #5, !dbg !658
  %226 = icmp eq i8* %225, null, !dbg !659
  br i1 %226, label %parse_gr.exit, label %227, !dbg !660

; <label>:227                                     ; preds = %224
  call void @llvm.dbg.value(metadata i32* %len.i11, i64 0, metadata !274, metadata !296) #5, !dbg !661
  call void @llvm.dbg.value(metadata i8** %s.i12, i64 0, metadata !276, metadata !296) #5, !dbg !644
  %228 = call i8* @sre_strtok(i8** %s.i12, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* %len.i11) #6, !dbg !662
  call void @llvm.dbg.value(metadata i8* %228, i64 0, metadata !272, metadata !296) #5, !dbg !664
  %229 = icmp eq i8* %228, null, !dbg !665
  br i1 %229, label %parse_gr.exit, label %230, !dbg !666

; <label>:230                                     ; preds = %227
  %231 = load i32* %24, align 4, !dbg !667, !tbaa !571
  %232 = call i32 @MSAGetSeqidx(%struct.msa_struct* %6, i8* %222, i32 %231) #6, !dbg !668
  call void @llvm.dbg.value(metadata i32 %232, i64 0, metadata !273, metadata !296) #5, !dbg !669
  store i32 %232, i32* %24, align 4, !dbg !670, !tbaa !571
  %233 = call i32 @strcmp(i8* %225, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0)) #6, !dbg !671
  %234 = icmp eq i32 %233, 0, !dbg !672
  br i1 %234, label %235, label %269, !dbg !673

; <label>:235                                     ; preds = %230
  %236 = load i8*** %56, align 8, !dbg !399, !tbaa !674
  %237 = icmp eq i8** %236, null, !dbg !675
  br i1 %237, label %238, label %._crit_edge9.i, !dbg !676

._crit_edge9.i:                                   ; preds = %235
  %.pre11.i = load i32** %59, align 8, !dbg !677, !tbaa !678
  br label %258, !dbg !676

; <label>:238                                     ; preds = %235
  %239 = load i32* %57, align 4, !dbg !403, !tbaa !679
  %240 = sext i32 %239 to i64, !dbg !403
  %241 = shl nsw i64 %240, 3, !dbg !403
  %242 = call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), i32 561, i64 %241) #6, !dbg !403
  store i8* %242, i8** %58, align 8, !dbg !405, !tbaa !674
  %243 = load i32* %57, align 4, !dbg !680, !tbaa !679
  %244 = sext i32 %243 to i64, !dbg !680
  %245 = shl nsw i64 %244, 2, !dbg !680
  %246 = call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), i32 562, i64 %245) #6, !dbg !680
  store i8* %246, i8** %60, align 8, !dbg !407, !tbaa !678
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !275, metadata !296) #5, !dbg !681
  %247 = load i32* %57, align 4, !dbg !682, !tbaa !679
  %248 = icmp sgt i32 %247, 0, !dbg !685
  %249 = bitcast i8* %246 to i32*, !dbg !686
  br i1 %248, label %.lr.ph.i, label %.loopexit.i, !dbg !687

.lr.ph.i:                                         ; preds = %238, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %238 ], !dbg !686
  %250 = load i8*** %56, align 8, !dbg !688, !tbaa !674
  %251 = getelementptr inbounds i8** %250, i64 %indvars.iv.i, !dbg !690
  store i8* null, i8** %251, align 8, !dbg !691, !tbaa !428
  %252 = load i32** %59, align 8, !dbg !692, !tbaa !678
  %253 = getelementptr inbounds i32* %252, i64 %indvars.iv.i, !dbg !693
  store i32 0, i32* %253, align 4, !dbg !694, !tbaa !491
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !687
  %254 = load i32* %57, align 4, !dbg !682, !tbaa !679
  %255 = sext i32 %254 to i64, !dbg !685
  %256 = icmp slt i64 %indvars.iv.next.i, %255, !dbg !685
  br i1 %256, label %.lr.ph.i, label %.loopexit.i, !dbg !687

.loopexit.i:                                      ; preds = %.lr.ph.i, %238
  %257 = phi i32* [ %249, %238 ], [ %252, %.lr.ph.i ], !dbg !686
  %.pre8.i = load i8*** %56, align 8, !dbg !695, !tbaa !674
  br label %258, !dbg !686

; <label>:258                                     ; preds = %.loopexit.i, %._crit_edge9.i
  %259 = phi i32* [ %.pre11.i, %._crit_edge9.i ], [ %257, %.loopexit.i ], !dbg !686
  %260 = phi i8** [ %236, %._crit_edge9.i ], [ %.pre8.i, %.loopexit.i ], !dbg !686
  %261 = sext i32 %232 to i64, !dbg !696
  %262 = getelementptr inbounds i8** %260, i64 %261, !dbg !696
  %263 = getelementptr inbounds i32* %259, i64 %261, !dbg !697
  %264 = load i32* %263, align 4, !dbg !697, !tbaa !491
  call void @llvm.dbg.value(metadata i32* %len.i11, i64 0, metadata !274, metadata !296) #5, !dbg !661
  %265 = load i32* %len.i11, align 4, !dbg !698, !tbaa !491
  %266 = call i32 @sre_strcat(i8** %262, i32 %264, i8* %228, i32 %265) #6, !dbg !699
  %267 = load i32** %59, align 8, !dbg !700, !tbaa !678
  %268 = getelementptr inbounds i32* %267, i64 %261, !dbg !701
  store i32 %266, i32* %268, align 4, !dbg !702, !tbaa !491
  br label %parse_gr.exit, !dbg !703

; <label>:269                                     ; preds = %230
  %270 = call i32 @strcmp(i8* %225, i8* getelementptr inbounds ([3 x i8]* @.str48, i64 0, i64 0)) #6, !dbg !704
  %271 = icmp eq i32 %270, 0, !dbg !705
  br i1 %271, label %272, label %306, !dbg !706

; <label>:272                                     ; preds = %269
  %273 = load i8*** %61, align 8, !dbg !408, !tbaa !707
  %274 = icmp eq i8** %273, null, !dbg !708
  br i1 %274, label %275, label %._crit_edge.i, !dbg !709

._crit_edge.i:                                    ; preds = %272
  %.pre7.i = load i32** %63, align 8, !dbg !710, !tbaa !711
  br label %295, !dbg !709

; <label>:275                                     ; preds = %272
  %276 = load i32* %57, align 4, !dbg !712, !tbaa !679
  %277 = sext i32 %276 to i64, !dbg !712
  %278 = shl nsw i64 %277, 3, !dbg !712
  %279 = call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), i32 575, i64 %278) #6, !dbg !712
  store i8* %279, i8** %62, align 8, !dbg !412, !tbaa !707
  %280 = load i32* %57, align 4, !dbg !713, !tbaa !679
  %281 = sext i32 %280 to i64, !dbg !713
  %282 = shl nsw i64 %281, 2, !dbg !713
  %283 = call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), i32 576, i64 %282) #6, !dbg !713
  store i8* %283, i8** %64, align 8, !dbg !415, !tbaa !711
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !275, metadata !296) #5, !dbg !681
  %284 = load i32* %57, align 4, !dbg !714, !tbaa !679
  %285 = icmp sgt i32 %284, 0, !dbg !717
  %286 = bitcast i8* %283 to i32*, !dbg !686
  br i1 %285, label %.lr.ph4.i, label %.loopexit1.i, !dbg !718

.lr.ph4.i:                                        ; preds = %275, %.lr.ph4.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %.lr.ph4.i ], [ 0, %275 ], !dbg !686
  %287 = load i8*** %61, align 8, !dbg !719, !tbaa !707
  %288 = getelementptr inbounds i8** %287, i64 %indvars.iv5.i, !dbg !721
  store i8* null, i8** %288, align 8, !dbg !722, !tbaa !428
  %289 = load i32** %63, align 8, !dbg !723, !tbaa !711
  %290 = getelementptr inbounds i32* %289, i64 %indvars.iv5.i, !dbg !724
  store i32 0, i32* %290, align 4, !dbg !725, !tbaa !491
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !dbg !718
  %291 = load i32* %57, align 4, !dbg !714, !tbaa !679
  %292 = sext i32 %291 to i64, !dbg !717
  %293 = icmp slt i64 %indvars.iv.next6.i, %292, !dbg !717
  br i1 %293, label %.lr.ph4.i, label %.loopexit1.i, !dbg !718

.loopexit1.i:                                     ; preds = %.lr.ph4.i, %275
  %294 = phi i32* [ %286, %275 ], [ %289, %.lr.ph4.i ], !dbg !686
  %.pre.i = load i8*** %61, align 8, !dbg !726, !tbaa !707
  br label %295, !dbg !686

; <label>:295                                     ; preds = %.loopexit1.i, %._crit_edge.i
  %296 = phi i32* [ %.pre7.i, %._crit_edge.i ], [ %294, %.loopexit1.i ], !dbg !686
  %297 = phi i8** [ %273, %._crit_edge.i ], [ %.pre.i, %.loopexit1.i ], !dbg !686
  %298 = sext i32 %232 to i64, !dbg !727
  %299 = getelementptr inbounds i8** %297, i64 %298, !dbg !727
  %300 = getelementptr inbounds i32* %296, i64 %298, !dbg !728
  %301 = load i32* %300, align 4, !dbg !728, !tbaa !491
  call void @llvm.dbg.value(metadata i32* %len.i11, i64 0, metadata !274, metadata !296) #5, !dbg !661
  %302 = load i32* %len.i11, align 4, !dbg !729, !tbaa !491
  %303 = call i32 @sre_strcat(i8** %299, i32 %301, i8* %228, i32 %302) #6, !dbg !730
  %304 = load i32** %63, align 8, !dbg !731, !tbaa !711
  %305 = getelementptr inbounds i32* %304, i64 %298, !dbg !732
  store i32 %303, i32* %305, align 4, !dbg !733, !tbaa !491
  br label %parse_gr.exit, !dbg !734

; <label>:306                                     ; preds = %269
  call void @MSAAppendGR(%struct.msa_struct* %6, i8* %225, i32 %232, i8* %228) #6, !dbg !735
  br label %parse_gr.exit, !dbg !686

parse_gr.exit:                                    ; preds = %218, %221, %224, %227, %258, %295, %306
  %.0.i13 = phi i32 [ 0, %218 ], [ 0, %221 ], [ 0, %224 ], [ 0, %227 ], [ 1, %295 ], [ 1, %306 ], [ 1, %258 ], !dbg !686
  call void @llvm.lifetime.end(i64 4, i8* %54), !dbg !736
  call void @llvm.lifetime.end(i64 8, i8* %55), !dbg !736
  call void @llvm.dbg.value(metadata i32 %.0.i13, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343, !dbg !737

; <label>:307                                     ; preds = %215
  call void @llvm.lifetime.start(i64 8, i8* %65), !dbg !416
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !279, metadata !296) #5, !dbg !416
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !280, metadata !296) #5, !dbg !738
  %308 = getelementptr inbounds i8* %s.0, i64 1, !dbg !739
  call void @llvm.dbg.value(metadata i8* %308, i64 0, metadata !281, metadata !296) #5, !dbg !740
  store i8* %308, i8** %s.i14, align 8, !dbg !741, !tbaa !428
  %309 = load i8* %308, align 1, !dbg !742, !tbaa !419
  %310 = icmp eq i8 %309, 10, !dbg !744
  br i1 %310, label %311, label %312, !dbg !745

; <label>:311                                     ; preds = %307
  store i8 0, i8* %308, align 1, !dbg !746, !tbaa !419
  call void @llvm.dbg.value(metadata i8** %s.i14, i64 0, metadata !281, metadata !296) #5, !dbg !740
  call void @llvm.dbg.value(metadata i8* %308, i64 0, metadata !282, metadata !296) #5, !dbg !748
  br label %315, !dbg !749

; <label>:312                                     ; preds = %307
  call void @llvm.dbg.value(metadata i8** %s.i14, i64 0, metadata !281, metadata !296) #5, !dbg !740
  %313 = call i8* @sre_strtok(i8** %s.i14, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i32* null) #6, !dbg !750
  call void @llvm.dbg.value(metadata i8* %313, i64 0, metadata !282, metadata !296) #5, !dbg !748
  %314 = icmp eq i8* %313, null, !dbg !752
  br i1 %314, label %parse_comment.exit, label %315, !dbg !753

; <label>:315                                     ; preds = %312, %311
  %comment.0.i = phi i8* [ %308, %311 ], [ %313, %312 ], !dbg !754
  call void @MSAAddComment(%struct.msa_struct* %6, i8* %comment.0.i) #6, !dbg !755
  br label %parse_comment.exit, !dbg !756

parse_comment.exit:                               ; preds = %312, %315
  %.0.i15 = phi i32 [ 1, %315 ], [ 0, %312 ], !dbg !754
  call void @llvm.lifetime.end(i64 8, i8* %65), !dbg !757
  call void @llvm.dbg.value(metadata i32 %.0.i15, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343

; <label>:316                                     ; preds = %.preheader
  %317 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i64 2) #6, !dbg !758
  %318 = icmp eq i32 %317, 0, !dbg !759
  br i1 %318, label %350, label %319, !dbg !760

; <label>:319                                     ; preds = %316
  %320 = icmp eq i8 %66, 10, !dbg !761
  br i1 %320, label %.backedge, label %323, !dbg !762

.backedge:                                        ; preds = %319, %345, %343
  %321 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !329
  call void @llvm.dbg.value(metadata i8* %321, i64 0, metadata !207, metadata !296), !dbg !314
  %322 = icmp eq i8* %321, null, !dbg !330
  br i1 %322, label %.thread, label %.preheader, !dbg !331

; <label>:323                                     ; preds = %319
  call void @llvm.lifetime.start(i64 8, i8* %22), !dbg !332
  call void @llvm.lifetime.start(i64 4, i8* %23), !dbg !332
  call void @llvm.dbg.value(metadata %struct.msa_struct* %6, i64 0, metadata !285, metadata !296) #5, !dbg !332
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !286, metadata !296) #5, !dbg !763
  call void @llvm.dbg.value(metadata i8* %s.0, i64 0, metadata !287, metadata !296) #5, !dbg !764
  store i8* %s.0, i8** %s.i16, align 8, !dbg !765, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s.i16, i64 0, metadata !287, metadata !296) #5, !dbg !764
  %324 = call i8* @sre_strtok(i8** %s.i16, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* null) #6, !dbg !766
  call void @llvm.dbg.value(metadata i8* %324, i64 0, metadata !288, metadata !296) #5, !dbg !768
  %325 = icmp eq i8* %324, null, !dbg !769
  br i1 %325, label %parse_sequence.exit, label %326, !dbg !770

; <label>:326                                     ; preds = %323
  call void @llvm.dbg.value(metadata i8** %s.i16, i64 0, metadata !287, metadata !296) #5, !dbg !764
  call void @llvm.dbg.value(metadata i32* %len.i17, i64 0, metadata !291, metadata !296) #5, !dbg !771
  %327 = call i8* @sre_strtok(i8** %s.i16, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i32* %len.i17) #6, !dbg !772
  call void @llvm.dbg.value(metadata i8* %327, i64 0, metadata !289, metadata !296) #5, !dbg !774
  %328 = icmp eq i8* %327, null, !dbg !775
  br i1 %328, label %parse_sequence.exit, label %329, !dbg !776

; <label>:329                                     ; preds = %326
  %330 = load i32* %24, align 4, !dbg !338, !tbaa !571
  %331 = add nsw i32 %330, 1, !dbg !777
  %332 = call i32 @MSAGetSeqidx(%struct.msa_struct* %6, i8* %324, i32 %331) #6, !dbg !778
  call void @llvm.dbg.value(metadata i32 %332, i64 0, metadata !290, metadata !296) #5, !dbg !779
  store i32 %332, i32* %24, align 4, !dbg !780, !tbaa !571
  %333 = sext i32 %332 to i64, !dbg !781
  %334 = load i8*** %25, align 8, !dbg !339, !tbaa !782
  %335 = getelementptr inbounds i8** %334, i64 %333, !dbg !781
  %336 = load i32** %26, align 8, !dbg !340, !tbaa !783
  %337 = getelementptr inbounds i32* %336, i64 %333, !dbg !784
  %338 = load i32* %337, align 4, !dbg !784, !tbaa !491
  call void @llvm.dbg.value(metadata i32* %len.i17, i64 0, metadata !291, metadata !296) #5, !dbg !771
  %339 = load i32* %len.i17, align 4, !dbg !785, !tbaa !491
  %340 = call i32 @sre_strcat(i8** %335, i32 %338, i8* %327, i32 %339) #6, !dbg !786
  %341 = load i32** %26, align 8, !dbg !787, !tbaa !783
  %342 = getelementptr inbounds i32* %341, i64 %333, !dbg !788
  store i32 %340, i32* %342, align 4, !dbg !789, !tbaa !491
  br label %parse_sequence.exit, !dbg !790

parse_sequence.exit:                              ; preds = %323, %326, %329
  %.0.i18 = phi i32 [ 1, %329 ], [ 0, %323 ], [ 0, %326 ], !dbg !791
  call void @llvm.lifetime.end(i64 8, i8* %22), !dbg !792
  call void @llvm.lifetime.end(i64 4, i8* %23), !dbg !792
  call void @llvm.dbg.value(metadata i32 %.0.i18, i64 0, metadata !208, metadata !296), !dbg !537
  br label %343

; <label>:343                                     ; preds = %parse_gf.exit, %parse_gc.exit, %parse_comment.exit, %parse_gr.exit, %parse_gs.exit, %parse_sequence.exit
  %status.0 = phi i32 [ %.0.i, %parse_gf.exit ], [ %.0.i8, %parse_gs.exit ], [ %.0.i10, %parse_gc.exit ], [ %.0.i13, %parse_gr.exit ], [ %.0.i15, %parse_comment.exit ], [ %.0.i18, %parse_sequence.exit ]
  %344 = icmp eq i32 %status.0, 0, !dbg !793
  br i1 %344, label %345, label %.backedge, !dbg !794

; <label>:345                                     ; preds = %343
  %346 = load i32* %27, align 4, !dbg !341, !tbaa !795
  %347 = load i8** %28, align 8, !dbg !343, !tbaa !327
  %348 = load i8** %29, align 8, !dbg !344, !tbaa !454
  %349 = icmp eq i8* %348, null, !dbg !796
  %.1 = select i1 %349, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %348, !dbg !797
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %346, i8* %347, i8* %.1) #6, !dbg !798
  br label %.backedge, !dbg !798

; <label>:350                                     ; preds = %316
  %351 = icmp eq i8* %s.0, null, !dbg !799
  br i1 %351, label %.thread, label %.critedge, !dbg !801

.thread:                                          ; preds = %.backedge, %.preheader19, %350
  %352 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 4, !dbg !802
  %353 = load i32* %352, align 4, !dbg !802, !tbaa !803
  %354 = icmp eq i32 %353, 0, !dbg !804
  br i1 %354, label %.thread32, label %355, !dbg !805

; <label>:355                                     ; preds = %.thread
  %356 = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 7, !dbg !806
  %357 = load i8** %356, align 8, !dbg !806, !tbaa !454
  %358 = icmp eq i8* %357, null, !dbg !807
  %.2 = select i1 %358, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %357, !dbg !808
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str9, i64 0, i64 0), i8* %.2) #6, !dbg !809
  %.pre = load i32* %352, align 4, !dbg !810, !tbaa !803
  %phitmp = icmp eq i32 %.pre, 0, !dbg !809
  br i1 %phitmp, label %.thread32, label %.critedge, !dbg !812

.thread32:                                        ; preds = %.thread, %355
  call void @MSAFree(%struct.msa_struct* %6) #6, !dbg !813
  br label %359, !dbg !815

.critedge:                                        ; preds = %350, %355
  call void @MSAVerifyParse(%struct.msa_struct* %6) #6, !dbg !816
  br label %359, !dbg !817

; <label>:359                                     ; preds = %0, %.critedge, %.thread32, %10
  %.0 = phi %struct.msa_struct* [ null, %10 ], [ null, %.thread32 ], [ %6, %.critedge ], [ null, %0 ]
  ret %struct.msa_struct* %.0, !dbg !818
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #1

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #2

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteStockholm(%struct.__sFILE* %fp, %struct.msa_struct* %msa) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !213, metadata !296), !dbg !819
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !214, metadata !296), !dbg !820
  tail call fastcc void @actually_write_stockholm(%struct.__sFILE* %fp, %struct.msa_struct* %msa, i32 50) #7, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @actually_write_stockholm(%struct.__sFILE* %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
  %s = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !223, metadata !296), !dbg !823
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !224, metadata !296), !dbg !824
  tail call void @llvm.dbg.value(metadata i32 %cpl, i64 0, metadata !225, metadata !296), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !228, metadata !296), !dbg !826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !296), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !231, metadata !296), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !296), !dbg !829
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !296), !dbg !830
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !831
  %2 = load i32* %1, align 4, !dbg !831, !tbaa !803
  %3 = icmp sgt i32 %2, 0, !dbg !834
  br i1 %3, label %.lr.ph84, label %._crit_edge85, !dbg !835

.lr.ph84:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !836
  %5 = load i8*** %4, align 8, !dbg !836, !tbaa !838
  %6 = sext i32 %2 to i64, !dbg !835
  br label %7, !dbg !835

; <label>:7                                       ; preds = %.lr.ph84, %7
  %indvars.iv113 = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next114, %7 ]
  %namewidth.081 = phi i32 [ 0, %.lr.ph84 ], [ %.namewidth.0, %7 ]
  %8 = getelementptr inbounds i8** %5, i64 %indvars.iv113, !dbg !839
  %9 = load i8** %8, align 8, !dbg !839, !tbaa !428
  %10 = tail call i64 @strlen(i8* %9) #6, !dbg !840
  %11 = trunc i64 %10 to i32, !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !228, metadata !296), !dbg !826
  %12 = icmp sgt i32 %11, %namewidth.081, !dbg !841
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !229, metadata !296), !dbg !829
  %.namewidth.0 = select i1 %12, i32 %11, i32 %namewidth.081, !dbg !842
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1, !dbg !835
  %13 = icmp slt i64 %indvars.iv.next114, %6, !dbg !834
  br i1 %13, label %7, label %._crit_edge85, !dbg !835

._crit_edge85:                                    ; preds = %7, %0
  %namewidth.0.lcssa = phi i32 [ 0, %0 ], [ %.namewidth.0, %7 ]
  %14 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !843
  %15 = load i8*** %14, align 8, !dbg !843, !tbaa !674
  %16 = icmp eq i8** %15, null, !dbg !845
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !231, metadata !296), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !230, metadata !296), !dbg !827
  %17 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !846
  %18 = load i8*** %17, align 8, !dbg !846, !tbaa !707
  %19 = icmp eq i8** %18, null, !dbg !848
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !231, metadata !296), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !230, metadata !296), !dbg !827
  %20 = and i1 %16, %19, !dbg !849
  %typewidth.1 = select i1 %20, i32 0, i32 2, !dbg !849
  %markupwidth.1 = select i1 %20, i32 0, i32 4, !dbg !849
  %21 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !850
  %22 = load i32* %21, align 4, !dbg !850, !tbaa !853
  %23 = icmp sgt i32 %22, 0, !dbg !854
  br i1 %23, label %.lr.ph77, label %._crit_edge78, !dbg !855

.lr.ph77:                                         ; preds = %._crit_edge85
  %24 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !856
  %25 = load i8*** %24, align 8, !dbg !856, !tbaa !858
  %26 = sext i32 %22 to i64, !dbg !855
  br label %27, !dbg !855

; <label>:27                                      ; preds = %.lr.ph77, %27
  %indvars.iv111 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next112, %27 ]
  %typewidth.274 = phi i32 [ %typewidth.1, %.lr.ph77 ], [ %.typewidth.2, %27 ]
  %28 = getelementptr inbounds i8** %25, i64 %indvars.iv111, !dbg !859
  %29 = load i8** %28, align 8, !dbg !859, !tbaa !428
  %30 = tail call i64 @strlen(i8* %29) #6, !dbg !860
  %31 = trunc i64 %30 to i32, !dbg !860
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !228, metadata !296), !dbg !826
  %32 = icmp sgt i32 %31, %typewidth.274, !dbg !861
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !230, metadata !296), !dbg !827
  %.typewidth.2 = select i1 %32, i32 %31, i32 %typewidth.274, !dbg !862
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1, !dbg !855
  %33 = icmp slt i64 %indvars.iv.next112, %26, !dbg !854
  br i1 %33, label %27, label %._crit_edge78, !dbg !855

._crit_edge78:                                    ; preds = %27, %._crit_edge85
  %typewidth.2.lcssa = phi i32 [ %typewidth.1, %._crit_edge85 ], [ %.typewidth.2, %27 ]
  %34 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !863
  %35 = load i8** %34, align 8, !dbg !863, !tbaa !865
  %36 = icmp eq i8* %35, null, !dbg !866
  br i1 %36, label %39, label %37, !dbg !867

; <label>:37                                      ; preds = %._crit_edge78
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !231, metadata !296), !dbg !828
  %38 = icmp slt i32 %typewidth.2.lcssa, 2, !dbg !868
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !230, metadata !296), !dbg !827
  %.typewidth.220 = select i1 %38, i32 2, i32 %typewidth.2.lcssa, !dbg !871
  br label %39, !dbg !871

; <label>:39                                      ; preds = %37, %._crit_edge78
  %typewidth.4 = phi i32 [ %typewidth.2.lcssa, %._crit_edge78 ], [ %.typewidth.220, %37 ]
  %markupwidth.2 = phi i32 [ %markupwidth.1, %._crit_edge78 ], [ 4, %37 ]
  %40 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !872
  %41 = load i8** %40, align 8, !dbg !872, !tbaa !874
  %42 = icmp eq i8* %41, null, !dbg !875
  br i1 %42, label %45, label %43, !dbg !876

; <label>:43                                      ; preds = %39
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !231, metadata !296), !dbg !828
  %44 = icmp slt i32 %typewidth.4, 7, !dbg !877
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !230, metadata !296), !dbg !827
  %.typewidth.4 = select i1 %44, i32 7, i32 %typewidth.4, !dbg !880
  br label %45, !dbg !880

; <label>:45                                      ; preds = %43, %39
  %typewidth.5 = phi i32 [ %typewidth.4, %39 ], [ %.typewidth.4, %43 ]
  %markupwidth.3 = phi i32 [ %markupwidth.2, %39 ], [ 4, %43 ]
  %46 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !881
  %47 = load i8** %46, align 8, !dbg !881, !tbaa !883
  %48 = icmp eq i8* %47, null, !dbg !884
  br i1 %48, label %51, label %49, !dbg !885

; <label>:49                                      ; preds = %45
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !231, metadata !296), !dbg !828
  %50 = icmp slt i32 %typewidth.5, 7, !dbg !886
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !230, metadata !296), !dbg !827
  %.typewidth.5 = select i1 %50, i32 7, i32 %typewidth.5, !dbg !889
  br label %51, !dbg !889

; <label>:51                                      ; preds = %49, %45
  %typewidth.6 = phi i32 [ %typewidth.5, %45 ], [ %.typewidth.5, %49 ]
  %markupwidth.4 = phi i32 [ %markupwidth.3, %45 ], [ 4, %49 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !296), !dbg !830
  %52 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !890
  %53 = load i32* %52, align 4, !dbg !890, !tbaa !893
  %54 = icmp sgt i32 %53, 0, !dbg !894
  br i1 %54, label %.lr.ph70, label %._crit_edge71, !dbg !895

.lr.ph70:                                         ; preds = %51
  %55 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !896
  %56 = load i8*** %55, align 8, !dbg !896, !tbaa !898
  %57 = sext i32 %53 to i64, !dbg !895
  br label %58, !dbg !895

; <label>:58                                      ; preds = %.lr.ph70, %58
  %indvars.iv109 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next110, %58 ]
  %typewidth.767 = phi i32 [ %typewidth.6, %.lr.ph70 ], [ %.typewidth.7, %58 ]
  %59 = getelementptr inbounds i8** %56, i64 %indvars.iv109, !dbg !899
  %60 = load i8** %59, align 8, !dbg !899, !tbaa !428
  %61 = tail call i64 @strlen(i8* %60) #6, !dbg !900
  %62 = trunc i64 %61 to i32, !dbg !900
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !228, metadata !296), !dbg !826
  %63 = icmp sgt i32 %62, %typewidth.767, !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !230, metadata !296), !dbg !827
  %.typewidth.7 = select i1 %63, i32 %62, i32 %typewidth.767, !dbg !902
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1, !dbg !895
  %64 = icmp slt i64 %indvars.iv.next110, %57, !dbg !894
  br i1 %64, label %58, label %._crit_edge71, !dbg !895

._crit_edge71:                                    ; preds = %58, %51
  %typewidth.7.lcssa = phi i32 [ %typewidth.6, %51 ], [ %.typewidth.7, %58 ]
  %65 = add i32 %cpl, 61, !dbg !903
  %66 = add i32 %65, %namewidth.0.lcssa, !dbg !903
  %67 = add i32 %66, %markupwidth.4, !dbg !903
  %68 = add i32 %67, %typewidth.7.lcssa, !dbg !903
  %69 = sext i32 %68 to i64, !dbg !903
  %70 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), i32 251, i64 %69) #6, !dbg !903
  tail call void @llvm.dbg.value(metadata i8* %70, i64 0, metadata !232, metadata !296), !dbg !904
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %fp), !dbg !905
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !296), !dbg !830
  %72 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !906
  %73 = load i32* %72, align 4, !dbg !906, !tbaa !909
  %74 = icmp sgt i32 %73, 0, !dbg !910
  br i1 %74, label %.lr.ph65, label %._crit_edge66.thread, !dbg !911

.lr.ph65:                                         ; preds = %._crit_edge71
  %75 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !912
  br label %76, !dbg !911

; <label>:76                                      ; preds = %.lr.ph65, %76
  %indvars.iv107 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next108, %76 ]
  %77 = load i8*** %75, align 8, !dbg !912, !tbaa !913
  %78 = getelementptr inbounds i8** %77, i64 %indvars.iv107, !dbg !914
  %79 = load i8** %78, align 8, !dbg !914, !tbaa !428
  %80 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* %79) #6, !dbg !915
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1, !dbg !911
  %81 = load i32* %72, align 4, !dbg !906, !tbaa !909
  %82 = sext i32 %81 to i64, !dbg !910
  %83 = icmp slt i64 %indvars.iv.next108, %82, !dbg !910
  br i1 %83, label %76, label %._crit_edge66, !dbg !911

._crit_edge66:                                    ; preds = %76
  %84 = icmp sgt i32 %81, 0, !dbg !916
  br i1 %84, label %85, label %._crit_edge66.thread, !dbg !918

; <label>:85                                      ; preds = %._crit_edge66
  %fputc18 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !919
  br label %._crit_edge66.thread, !dbg !919

._crit_edge66.thread:                             ; preds = %._crit_edge71, %85, %._crit_edge66
  %86 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !920
  %87 = load i8** %86, align 8, !dbg !920, !tbaa !454
  %88 = icmp eq i8* %87, null, !dbg !922
  br i1 %88, label %91, label %89, !dbg !923

; <label>:89                                      ; preds = %._crit_edge66.thread
  %90 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* %87) #6, !dbg !924
  br label %91, !dbg !924

; <label>:91                                      ; preds = %._crit_edge66.thread, %89
  %92 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !925
  %93 = load i8** %92, align 8, !dbg !925, !tbaa !462
  %94 = icmp eq i8* %93, null, !dbg !927
  br i1 %94, label %97, label %95, !dbg !928

; <label>:95                                      ; preds = %91
  %96 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str15, i64 0, i64 0), i8* %93) #6, !dbg !929
  br label %97, !dbg !929

; <label>:97                                      ; preds = %91, %95
  %98 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !930
  %99 = load i8** %98, align 8, !dbg !930, !tbaa !469
  %100 = icmp eq i8* %99, null, !dbg !932
  br i1 %100, label %103, label %101, !dbg !933

; <label>:101                                     ; preds = %97
  %102 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str16, i64 0, i64 0), i8* %99) #6, !dbg !934
  br label %103, !dbg !934

; <label>:103                                     ; preds = %97, %101
  %104 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !935
  %105 = load i8** %104, align 8, !dbg !935, !tbaa !476
  %106 = icmp eq i8* %105, null, !dbg !937
  br i1 %106, label %109, label %107, !dbg !938

; <label>:107                                     ; preds = %103
  %108 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0), i8* %105) #6, !dbg !939
  br label %109, !dbg !939

; <label>:109                                     ; preds = %103, %107
  %110 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2, !dbg !940
  %111 = load i32* %110, align 4, !dbg !940, !tbaa !491
  %112 = icmp eq i32 %111, 0, !dbg !940
  br i1 %112, label %.thread, label %113, !dbg !942

; <label>:113                                     ; preds = %109
  %114 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3, !dbg !943
  %115 = load i32* %114, align 4, !dbg !943, !tbaa !491
  %116 = icmp eq i32 %115, 0, !dbg !943
  %117 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2, !dbg !944
  %118 = load float* %117, align 4, !dbg !944, !tbaa !488
  %119 = fpext float %118 to double, !dbg !944
  br i1 %116, label %125, label %120, !dbg !946

; <label>:120                                     ; preds = %113
  %121 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3, !dbg !947
  %122 = load float* %121, align 4, !dbg !947, !tbaa !488
  %123 = fpext float %122 to double, !dbg !947
  %124 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str18, i64 0, i64 0), double %119, double %123) #6, !dbg !948
  br label %.thread, !dbg !948

; <label>:125                                     ; preds = %113
  %126 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str19, i64 0, i64 0), double %119) #6, !dbg !949
  br label %.thread, !dbg !949

.thread:                                          ; preds = %109, %125, %120
  %127 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4, !dbg !950
  %128 = load i32* %127, align 4, !dbg !950, !tbaa !491
  %129 = icmp eq i32 %128, 0, !dbg !950
  br i1 %129, label %.thread22, label %130, !dbg !952

; <label>:130                                     ; preds = %.thread
  %131 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5, !dbg !953
  %132 = load i32* %131, align 4, !dbg !953, !tbaa !491
  %133 = icmp eq i32 %132, 0, !dbg !953
  %134 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4, !dbg !954
  %135 = load float* %134, align 4, !dbg !954, !tbaa !488
  %136 = fpext float %135 to double, !dbg !954
  br i1 %133, label %142, label %137, !dbg !956

; <label>:137                                     ; preds = %130
  %138 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5, !dbg !957
  %139 = load float* %138, align 4, !dbg !957, !tbaa !488
  %140 = fpext float %139 to double, !dbg !957
  %141 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str20, i64 0, i64 0), double %136, double %140) #6, !dbg !958
  br label %.thread22, !dbg !958

; <label>:142                                     ; preds = %130
  %143 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0), double %136) #6, !dbg !959
  br label %.thread22, !dbg !959

.thread22:                                        ; preds = %.thread, %142, %137
  %144 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0, !dbg !960
  %145 = load i32* %144, align 4, !dbg !960, !tbaa !491
  %146 = icmp eq i32 %145, 0, !dbg !960
  br i1 %146, label %.thread24.preheader, label %147, !dbg !962

; <label>:147                                     ; preds = %.thread22
  %148 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1, !dbg !963
  %149 = load i32* %148, align 4, !dbg !963, !tbaa !491
  %150 = icmp eq i32 %149, 0, !dbg !963
  %151 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0, !dbg !964
  %152 = load float* %151, align 4, !dbg !964, !tbaa !488
  %153 = fpext float %152 to double, !dbg !964
  br i1 %150, label %159, label %154, !dbg !966

; <label>:154                                     ; preds = %147
  %155 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1, !dbg !967
  %156 = load float* %155, align 4, !dbg !967, !tbaa !488
  %157 = fpext float %156 to double, !dbg !967
  %158 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str22, i64 0, i64 0), double %153, double %157) #6, !dbg !968
  br label %.thread24.preheader, !dbg !968

; <label>:159                                     ; preds = %147
  %160 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), double %153) #6, !dbg !969
  br label %.thread24.preheader, !dbg !969

.thread24.preheader:                              ; preds = %159, %154, %.thread22
  %161 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25, !dbg !970
  %162 = load i32* %161, align 4, !dbg !970, !tbaa !973
  %163 = icmp sgt i32 %162, 0, !dbg !974
  br i1 %163, label %.lr.ph62, label %.thread24._crit_edge, !dbg !975

.lr.ph62:                                         ; preds = %.thread24.preheader
  %164 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23, !dbg !976
  %165 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !977
  br label %.thread24, !dbg !975

.thread24:                                        ; preds = %.lr.ph62, %.thread24
  %indvars.iv105 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next106, %.thread24 ]
  %166 = load i8*** %164, align 8, !dbg !976, !tbaa !978
  %167 = getelementptr inbounds i8** %166, i64 %indvars.iv105, !dbg !979
  %168 = load i8** %167, align 8, !dbg !979, !tbaa !428
  %169 = load i8*** %165, align 8, !dbg !977, !tbaa !980
  %170 = getelementptr inbounds i8** %169, i64 %indvars.iv105, !dbg !981
  %171 = load i8** %170, align 8, !dbg !981, !tbaa !428
  %172 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0), i8* %168, i8* %171) #6, !dbg !982
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1, !dbg !975
  %173 = load i32* %161, align 4, !dbg !970, !tbaa !973
  %174 = sext i32 %173 to i64, !dbg !974
  %175 = icmp slt i64 %indvars.iv.next106, %174, !dbg !974
  br i1 %175, label %.thread24, label %.thread24._crit_edge, !dbg !975

.thread24._crit_edge:                             ; preds = %.thread24, %.thread24.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !983
  %176 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5, !dbg !984
  %177 = load i32* %176, align 4, !dbg !984, !tbaa !584
  %178 = and i32 %177, 1, !dbg !986
  %179 = icmp eq i32 %178, 0, !dbg !986
  br i1 %179, label %196, label %.preheader32, !dbg !987

.preheader32:                                     ; preds = %.thread24._crit_edge
  %180 = load i32* %1, align 4, !dbg !988, !tbaa !803
  %181 = icmp sgt i32 %180, 0, !dbg !992
  br i1 %181, label %.lr.ph59, label %._crit_edge60, !dbg !993

.lr.ph59:                                         ; preds = %.preheader32
  %182 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !994
  %183 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !995
  br label %184, !dbg !993

; <label>:184                                     ; preds = %.lr.ph59, %184
  %indvars.iv103 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next104, %184 ]
  %185 = load i8*** %182, align 8, !dbg !994, !tbaa !838
  %186 = getelementptr inbounds i8** %185, i64 %indvars.iv103, !dbg !996
  %187 = load i8** %186, align 8, !dbg !996, !tbaa !428
  %188 = load float** %183, align 8, !dbg !995, !tbaa !581
  %189 = getelementptr inbounds float* %188, i64 %indvars.iv103, !dbg !997
  %190 = load float* %189, align 4, !dbg !997, !tbaa !488
  %191 = fpext float %190 to double, !dbg !997
  %192 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str25, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %187, double %191) #6, !dbg !998
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1, !dbg !993
  %193 = load i32* %1, align 4, !dbg !988, !tbaa !803
  %194 = sext i32 %193 to i64, !dbg !992
  %195 = icmp slt i64 %indvars.iv.next104, %194, !dbg !992
  br i1 %195, label %184, label %._crit_edge60, !dbg !993

._crit_edge60:                                    ; preds = %184, %.preheader32
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !999
  br label %196, !dbg !1000

; <label>:196                                     ; preds = %.thread24._crit_edge, %._crit_edge60
  %197 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !1001
  %198 = load i8*** %197, align 8, !dbg !1001, !tbaa !1003
  %199 = icmp eq i8** %198, null, !dbg !1004
  br i1 %199, label %218, label %.preheader31, !dbg !1005

.preheader31:                                     ; preds = %196
  %200 = load i32* %1, align 4, !dbg !1006, !tbaa !803
  %201 = icmp sgt i32 %200, 0, !dbg !1010
  br i1 %201, label %.lr.ph56, label %._crit_edge57, !dbg !1011

.lr.ph56:                                         ; preds = %.preheader31
  %202 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1012
  br label %203, !dbg !1011

; <label>:203                                     ; preds = %._crit_edge115, %.lr.ph56
  %204 = phi i32 [ %200, %.lr.ph56 ], [ %215, %._crit_edge115 ]
  %205 = phi i8** [ %198, %.lr.ph56 ], [ %.pre, %._crit_edge115 ], !dbg !1014
  %indvars.iv101 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next102, %._crit_edge115 ]
  %206 = getelementptr inbounds i8** %205, i64 %indvars.iv101, !dbg !1015
  %207 = load i8** %206, align 8, !dbg !1015, !tbaa !428
  %208 = icmp eq i8* %207, null, !dbg !1016
  br i1 %208, label %214, label %209, !dbg !1017

; <label>:209                                     ; preds = %203
  %210 = load i8*** %202, align 8, !dbg !1012, !tbaa !838
  %211 = getelementptr inbounds i8** %210, i64 %indvars.iv101, !dbg !1018
  %212 = load i8** %211, align 8, !dbg !1018, !tbaa !428
  %213 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %212, i8* %207) #6, !dbg !1019
  %.pre116 = load i32* %1, align 4, !dbg !1006, !tbaa !803
  br label %214, !dbg !1019

; <label>:214                                     ; preds = %203, %209
  %215 = phi i32 [ %204, %203 ], [ %.pre116, %209 ], !dbg !1011
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1, !dbg !1011
  %216 = sext i32 %215 to i64, !dbg !1010
  %217 = icmp slt i64 %indvars.iv.next102, %216, !dbg !1010
  br i1 %217, label %._crit_edge115, label %._crit_edge57, !dbg !1011

._crit_edge115:                                   ; preds = %214
  %.pre = load i8*** %197, align 8, !dbg !1014, !tbaa !1003
  br label %203, !dbg !1011

._crit_edge57:                                    ; preds = %214, %.preheader31
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1020
  br label %218, !dbg !1021

; <label>:218                                     ; preds = %196, %._crit_edge57
  %219 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !1022
  %220 = load i8*** %219, align 8, !dbg !1022, !tbaa !1024
  %221 = icmp eq i8** %220, null, !dbg !1025
  br i1 %221, label %.preheader29, label %.preheader30, !dbg !1026

.preheader30:                                     ; preds = %218
  %222 = load i32* %1, align 4, !dbg !1027, !tbaa !803
  %223 = icmp sgt i32 %222, 0, !dbg !1031
  br i1 %223, label %.lr.ph53, label %._crit_edge54, !dbg !1032

.lr.ph53:                                         ; preds = %.preheader30
  %224 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1033
  br label %225, !dbg !1032

; <label>:225                                     ; preds = %._crit_edge117, %.lr.ph53
  %226 = phi i32 [ %222, %.lr.ph53 ], [ %237, %._crit_edge117 ]
  %227 = phi i8** [ %220, %.lr.ph53 ], [ %.pre118, %._crit_edge117 ], !dbg !1035
  %indvars.iv99 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next100, %._crit_edge117 ]
  %228 = getelementptr inbounds i8** %227, i64 %indvars.iv99, !dbg !1036
  %229 = load i8** %228, align 8, !dbg !1036, !tbaa !428
  %230 = icmp eq i8* %229, null, !dbg !1037
  br i1 %230, label %236, label %231, !dbg !1038

; <label>:231                                     ; preds = %225
  %232 = load i8*** %224, align 8, !dbg !1033, !tbaa !838
  %233 = getelementptr inbounds i8** %232, i64 %indvars.iv99, !dbg !1039
  %234 = load i8** %233, align 8, !dbg !1039, !tbaa !428
  %235 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %234, i8* %229) #6, !dbg !1040
  %.pre119 = load i32* %1, align 4, !dbg !1027, !tbaa !803
  br label %236, !dbg !1040

; <label>:236                                     ; preds = %225, %231
  %237 = phi i32 [ %226, %225 ], [ %.pre119, %231 ], !dbg !1032
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1, !dbg !1032
  %238 = sext i32 %237 to i64, !dbg !1031
  %239 = icmp slt i64 %indvars.iv.next100, %238, !dbg !1031
  br i1 %239, label %._crit_edge117, label %._crit_edge54, !dbg !1032

._crit_edge117:                                   ; preds = %236
  %.pre118 = load i8*** %219, align 8, !dbg !1035, !tbaa !1024
  br label %225, !dbg !1032

._crit_edge54:                                    ; preds = %236, %.preheader30
  %fputc9 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1041
  br label %.preheader29, !dbg !1042

.preheader29:                                     ; preds = %218, %._crit_edge54
  %240 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !1043
  %241 = load i32* %240, align 4, !dbg !1043, !tbaa !1046
  %242 = icmp sgt i32 %241, 0, !dbg !1047
  br i1 %242, label %.preheader28.lr.ph, label %.preheader27, !dbg !1048

.preheader28.lr.ph:                               ; preds = %.preheader29
  %243 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !1049
  %244 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1054
  %245 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27, !dbg !1056
  br label %.preheader28, !dbg !1048

.preheader28:                                     ; preds = %.preheader28.lr.ph, %._crit_edge50
  %indvars.iv97 = phi i64 [ 0, %.preheader28.lr.ph ], [ %indvars.iv.next98, %._crit_edge50 ]
  %246 = load i32* %1, align 4, !dbg !1057, !tbaa !803
  %247 = icmp sgt i32 %246, 0, !dbg !1058
  br i1 %247, label %.lr.ph49, label %._crit_edge50, !dbg !1059

.preheader27:                                     ; preds = %._crit_edge50, %.preheader29
  %248 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1060
  %249 = load i32* %248, align 4, !dbg !1060, !tbaa !1063
  %250 = icmp sgt i32 %249, 0, !dbg !1064
  br i1 %250, label %.lr.ph44, label %._crit_edge45, !dbg !1065

.lr.ph44:                                         ; preds = %.preheader27
  %251 = sext i32 %cpl to i64, !dbg !1066
  %252 = call i64 @llvm.objectsize.i64.p0i8(i8* %70, i1 false), !dbg !1066
  %253 = getelementptr inbounds i8* %70, i64 %251, !dbg !1070
  %254 = add nsw i32 %typewidth.7.lcssa, %namewidth.0.lcssa, !dbg !1071
  %255 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !1072
  %256 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !1076
  %257 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1077
  %258 = add i32 %markupwidth.4, %namewidth.0.lcssa, !dbg !1081
  %259 = add i32 %258, %typewidth.7.lcssa, !dbg !1082
  %260 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1083
  %261 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !1084
  %262 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !1088
  br label %290, !dbg !1065

.lr.ph49:                                         ; preds = %.preheader28, %283
  %263 = phi i32 [ %284, %283 ], [ %246, %.preheader28 ]
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %283 ], [ 0, %.preheader28 ]
  %264 = load i8**** %243, align 8, !dbg !1049, !tbaa !1090
  %265 = getelementptr inbounds i8*** %264, i64 %indvars.iv97, !dbg !1091
  %266 = load i8*** %265, align 8, !dbg !1091, !tbaa !428
  %267 = getelementptr inbounds i8** %266, i64 %indvars.iv95, !dbg !1091
  %268 = load i8** %267, align 8, !dbg !1091, !tbaa !428
  %269 = icmp eq i8* %268, null, !dbg !1092
  br i1 %269, label %283, label %270, !dbg !1093

; <label>:270                                     ; preds = %.lr.ph49
  call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !234, metadata !296), !dbg !1094
  store i8* %268, i8** %s, align 8, !dbg !1095, !tbaa !428
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !234, metadata !296), !dbg !1094
  %271 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i32* null) #6, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %271, i64 0, metadata !235, metadata !296), !dbg !1097
  %272 = icmp eq i8* %271, null, !dbg !1098
  br i1 %272, label %.loopexit, label %.lr.ph47, !dbg !1099

.lr.ph47:                                         ; preds = %270, %.lr.ph47
  %273 = phi i8* [ %281, %.lr.ph47 ], [ %271, %270 ]
  %274 = load i8*** %244, align 8, !dbg !1054, !tbaa !838
  %275 = getelementptr inbounds i8** %274, i64 %indvars.iv95, !dbg !1100
  %276 = load i8** %275, align 8, !dbg !1100, !tbaa !428
  %277 = load i8*** %245, align 8, !dbg !1056, !tbaa !1101
  %278 = getelementptr inbounds i8** %277, i64 %indvars.iv97, !dbg !1102
  %279 = load i8** %278, align 8, !dbg !1102, !tbaa !428
  %280 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str28, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %276, i8* %279, i8* %273) #6, !dbg !1103
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !234, metadata !296), !dbg !1094
  %281 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i32* null) #6, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %281, i64 0, metadata !235, metadata !296), !dbg !1097
  %282 = icmp eq i8* %281, null, !dbg !1098
  br i1 %282, label %.loopexit, label %.lr.ph47, !dbg !1099

.loopexit:                                        ; preds = %.lr.ph47, %270
  %.pre120 = load i32* %1, align 4, !dbg !1057, !tbaa !803
  br label %283

; <label>:283                                     ; preds = %.loopexit, %.lr.ph49
  %284 = phi i32 [ %.pre120, %.loopexit ], [ %263, %.lr.ph49 ], !dbg !1059
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1, !dbg !1059
  %285 = sext i32 %284 to i64, !dbg !1058
  %286 = icmp slt i64 %indvars.iv.next96, %285, !dbg !1058
  br i1 %286, label %.lr.ph49, label %._crit_edge50, !dbg !1059

._crit_edge50:                                    ; preds = %283, %.preheader28
  %fputc15 = call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1104
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1, !dbg !1048
  %287 = load i32* %240, align 4, !dbg !1043, !tbaa !1046
  %288 = sext i32 %287 to i64, !dbg !1047
  %289 = icmp slt i64 %indvars.iv.next98, %288, !dbg !1047
  br i1 %289, label %.preheader28, label %.preheader27, !dbg !1048

; <label>:290                                     ; preds = %.lr.ph44, %._crit_edge42
  %indvars.iv93 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next94, %._crit_edge42 ]
  %291 = icmp sgt i64 %indvars.iv93, 0, !dbg !1105
  br i1 %291, label %292, label %.preheader26, !dbg !1107

; <label>:292                                     ; preds = %290
  %fputc12 = call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1108
  br label %.preheader26, !dbg !1108

.preheader26:                                     ; preds = %292, %290
  %293 = load i32* %1, align 4, !dbg !1109, !tbaa !803
  %294 = icmp sgt i32 %293, 0, !dbg !1110
  br i1 %294, label %.lr.ph38, label %._crit_edge39, !dbg !1111

.lr.ph38:                                         ; preds = %.preheader26, %._crit_edge
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge ], [ 0, %.preheader26 ]
  %295 = load i8*** %257, align 8, !dbg !1077, !tbaa !782
  %296 = getelementptr inbounds i8** %295, i64 %indvars.iv89, !dbg !1077
  %297 = load i8** %296, align 8, !dbg !1077, !tbaa !428
  %298 = getelementptr inbounds i8* %297, i64 %indvars.iv93, !dbg !1077
  %299 = call i8* @__strncpy_chk(i8* %70, i8* %298, i64 %251, i64 %252) #6, !dbg !1077
  store i8 0, i8* %253, align 1, !dbg !1112, !tbaa !419
  %300 = load i8*** %260, align 8, !dbg !1083, !tbaa !838
  %301 = getelementptr inbounds i8** %300, i64 %indvars.iv89, !dbg !1113
  %302 = load i8** %301, align 8, !dbg !1113, !tbaa !428
  %303 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i32 %259, i32 %259, i8* %302, i8* %70) #6, !dbg !1114
  %304 = load i8*** %14, align 8, !dbg !1115, !tbaa !674
  %305 = icmp eq i8** %304, null, !dbg !1117
  br i1 %305, label %317, label %306, !dbg !1118

; <label>:306                                     ; preds = %.lr.ph38
  %307 = getelementptr inbounds i8** %304, i64 %indvars.iv89, !dbg !1119
  %308 = load i8** %307, align 8, !dbg !1119, !tbaa !428
  %309 = icmp eq i8* %308, null, !dbg !1120
  br i1 %309, label %317, label %310, !dbg !1121

; <label>:310                                     ; preds = %306
  %311 = getelementptr inbounds i8* %308, i64 %indvars.iv93, !dbg !1122
  %312 = call i8* @__strncpy_chk(i8* %70, i8* %311, i64 %251, i64 %252) #6, !dbg !1122
  store i8 0, i8* %253, align 1, !dbg !1124, !tbaa !419
  %313 = load i8*** %260, align 8, !dbg !1125, !tbaa !838
  %314 = getelementptr inbounds i8** %313, i64 %indvars.iv89, !dbg !1126
  %315 = load i8** %314, align 8, !dbg !1126, !tbaa !428
  %316 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str30, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %315, i8* %70) #6, !dbg !1127
  br label %317, !dbg !1128

; <label>:317                                     ; preds = %306, %.lr.ph38, %310
  %318 = load i8*** %17, align 8, !dbg !1129, !tbaa !707
  %319 = icmp eq i8** %318, null, !dbg !1131
  br i1 %319, label %.preheader, label %320, !dbg !1132

; <label>:320                                     ; preds = %317
  %321 = getelementptr inbounds i8** %318, i64 %indvars.iv89, !dbg !1133
  %322 = load i8** %321, align 8, !dbg !1133, !tbaa !428
  %323 = icmp eq i8* %322, null, !dbg !1134
  br i1 %323, label %.preheader, label %324, !dbg !1135

; <label>:324                                     ; preds = %320
  %325 = getelementptr inbounds i8* %322, i64 %indvars.iv93, !dbg !1136
  %326 = call i8* @__strncpy_chk(i8* %70, i8* %325, i64 %251, i64 %252) #6, !dbg !1136
  store i8 0, i8* %253, align 1, !dbg !1138, !tbaa !419
  %327 = load i8*** %260, align 8, !dbg !1139, !tbaa !838
  %328 = getelementptr inbounds i8** %327, i64 %indvars.iv89, !dbg !1140
  %329 = load i8** %328, align 8, !dbg !1140, !tbaa !428
  %330 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str31, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %329, i8* %70) #6, !dbg !1141
  br label %.preheader, !dbg !1142

.preheader:                                       ; preds = %320, %317, %324
  %331 = load i32* %21, align 4, !dbg !1143, !tbaa !853
  %332 = icmp sgt i32 %331, 0, !dbg !1144
  br i1 %332, label %.lr.ph, label %._crit_edge, !dbg !1145

.lr.ph:                                           ; preds = %.preheader, %350
  %333 = phi i32 [ %351, %350 ], [ %331, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %350 ], [ 0, %.preheader ]
  %334 = load i8**** %261, align 8, !dbg !1084, !tbaa !1146
  %335 = getelementptr inbounds i8*** %334, i64 %indvars.iv, !dbg !1147
  %336 = load i8*** %335, align 8, !dbg !1147, !tbaa !428
  %337 = getelementptr inbounds i8** %336, i64 %indvars.iv89, !dbg !1147
  %338 = load i8** %337, align 8, !dbg !1147, !tbaa !428
  %339 = icmp eq i8* %338, null, !dbg !1148
  br i1 %339, label %350, label %340, !dbg !1149

; <label>:340                                     ; preds = %.lr.ph
  %341 = getelementptr inbounds i8* %338, i64 %indvars.iv93, !dbg !1150
  %342 = call i8* @__strncpy_chk(i8* %70, i8* %341, i64 %251, i64 %252) #6, !dbg !1150
  store i8 0, i8* %253, align 1, !dbg !1151, !tbaa !419
  %343 = load i8*** %260, align 8, !dbg !1152, !tbaa !838
  %344 = getelementptr inbounds i8** %343, i64 %indvars.iv89, !dbg !1153
  %345 = load i8** %344, align 8, !dbg !1153, !tbaa !428
  %346 = load i8*** %262, align 8, !dbg !1088, !tbaa !858
  %347 = getelementptr inbounds i8** %346, i64 %indvars.iv, !dbg !1154
  %348 = load i8** %347, align 8, !dbg !1154, !tbaa !428
  %349 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %345, i8* %348, i8* %70) #6, !dbg !1155
  %.pre121 = load i32* %21, align 4, !dbg !1143, !tbaa !853
  br label %350, !dbg !1156

; <label>:350                                     ; preds = %.lr.ph, %340
  %351 = phi i32 [ %333, %.lr.ph ], [ %.pre121, %340 ], !dbg !1145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1145
  %352 = sext i32 %351 to i64, !dbg !1144
  %353 = icmp slt i64 %indvars.iv.next, %352, !dbg !1144
  br i1 %353, label %.lr.ph, label %._crit_edge, !dbg !1145

._crit_edge:                                      ; preds = %350, %.preheader
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1, !dbg !1111
  %354 = load i32* %1, align 4, !dbg !1109, !tbaa !803
  %355 = sext i32 %354 to i64, !dbg !1110
  %356 = icmp slt i64 %indvars.iv.next90, %355, !dbg !1110
  br i1 %356, label %.lr.ph38, label %._crit_edge39, !dbg !1111

._crit_edge39:                                    ; preds = %._crit_edge, %.preheader26
  %357 = load i8** %40, align 8, !dbg !1157, !tbaa !874
  %358 = icmp eq i8* %357, null, !dbg !1159
  br i1 %358, label %363, label %359, !dbg !1160

; <label>:359                                     ; preds = %._crit_edge39
  %360 = getelementptr inbounds i8* %357, i64 %indvars.iv93, !dbg !1161
  %361 = call i8* @__strncpy_chk(i8* %70, i8* %360, i64 %251, i64 %252) #6, !dbg !1161
  store i8 0, i8* %253, align 1, !dbg !1163, !tbaa !419
  %362 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0), i32 %254, i32 %254, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i8* %70) #6, !dbg !1164
  br label %363, !dbg !1165

; <label>:363                                     ; preds = %._crit_edge39, %359
  %364 = load i8** %46, align 8, !dbg !1166, !tbaa !883
  %365 = icmp eq i8* %364, null, !dbg !1168
  br i1 %365, label %370, label %366, !dbg !1169

; <label>:366                                     ; preds = %363
  %367 = getelementptr inbounds i8* %364, i64 %indvars.iv93, !dbg !1170
  %368 = call i8* @__strncpy_chk(i8* %70, i8* %367, i64 %251, i64 %252) #6, !dbg !1170
  store i8 0, i8* %253, align 1, !dbg !1172, !tbaa !419
  %369 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0), i32 %254, i32 %254, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0), i8* %70) #6, !dbg !1173
  br label %370, !dbg !1174

; <label>:370                                     ; preds = %363, %366
  %371 = load i8** %34, align 8, !dbg !1175, !tbaa !865
  %372 = icmp eq i8* %371, null, !dbg !1176
  br i1 %372, label %.preheader25, label %373, !dbg !1177

; <label>:373                                     ; preds = %370
  %374 = getelementptr inbounds i8* %371, i64 %indvars.iv93, !dbg !1066
  %375 = call i8* @__strncpy_chk(i8* %70, i8* %374, i64 %251, i64 %252) #6, !dbg !1066
  store i8 0, i8* %253, align 1, !dbg !1178, !tbaa !419
  %376 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0), i32 %254, i32 %254, i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0), i8* %70) #6, !dbg !1179
  br label %.preheader25, !dbg !1180

.preheader25:                                     ; preds = %370, %373
  %377 = load i32* %52, align 4, !dbg !1181, !tbaa !893
  %378 = icmp sgt i32 %377, 0, !dbg !1182
  br i1 %378, label %.lr.ph41, label %._crit_edge42, !dbg !1183

.lr.ph41:                                         ; preds = %.preheader25, %.lr.ph41
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph41 ], [ 0, %.preheader25 ]
  %379 = load i8*** %255, align 8, !dbg !1072, !tbaa !1184
  %380 = getelementptr inbounds i8** %379, i64 %indvars.iv91, !dbg !1072
  %381 = load i8** %380, align 8, !dbg !1072, !tbaa !428
  %382 = getelementptr inbounds i8* %381, i64 %indvars.iv93, !dbg !1072
  %383 = call i8* @__strncpy_chk(i8* %70, i8* %382, i64 %251, i64 %252) #6, !dbg !1072
  store i8 0, i8* %253, align 1, !dbg !1185, !tbaa !419
  %384 = load i8*** %256, align 8, !dbg !1076, !tbaa !898
  %385 = getelementptr inbounds i8** %384, i64 %indvars.iv91, !dbg !1186
  %386 = load i8** %385, align 8, !dbg !1186, !tbaa !428
  %387 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0), i32 %254, i32 %254, i8* %386, i8* %70) #6, !dbg !1187
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !1183
  %388 = load i32* %52, align 4, !dbg !1181, !tbaa !893
  %389 = sext i32 %388 to i64, !dbg !1182
  %390 = icmp slt i64 %indvars.iv.next92, %389, !dbg !1182
  br i1 %390, label %.lr.ph41, label %._crit_edge42, !dbg !1183

._crit_edge42:                                    ; preds = %.lr.ph41, %.preheader25
  %indvars.iv.next94 = add i64 %indvars.iv93, %251, !dbg !1065
  %391 = load i32* %248, align 4, !dbg !1060, !tbaa !1063
  %392 = sext i32 %391 to i64, !dbg !1064
  %393 = icmp slt i64 %indvars.iv.next94, %392, !dbg !1064
  br i1 %393, label %290, label %._crit_edge45, !dbg !1065

._crit_edge45:                                    ; preds = %._crit_edge42, %.preheader27
  %394 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !1188
  call void @free(i8* %70) #7, !dbg !1189
  ret void, !dbg !1190
}

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteStockholmOneBlock(%struct.__sFILE* %fp, %struct.msa_struct* %msa) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !217, metadata !296), !dbg !1191
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !218, metadata !296), !dbg !1192
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1193
  %2 = load i32* %1, align 4, !dbg !1193, !tbaa !1063
  tail call fastcc void @actually_write_stockholm(%struct.__sFILE* %fp, %struct.msa_struct* %msa, i32 %2) #7, !dbg !1194
  ret void, !dbg !1195
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: optsize
declare void @MSAAddGF(%struct.msa_struct*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

; Function Attrs: optsize
declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSAAddGS(%struct.msa_struct*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAAppendGC(%struct.msa_struct*, i8*, i8*) #2

; Function Attrs: optsize
declare void @MSAAppendGR(%struct.msa_struct*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!292, !293, !294}
!llvm.ident = !{!295}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/stockholm.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !209, !215, !219, !236, !246, !256, !265, !277, !283}
!6 = !DISubprogram(name: "ReadStockholm", scope: !1, file: !1, line: 94, type: !7, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadStockholm, variables: !204)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !88}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !11, line: 112, size: 2880, align: 64, elements: !13)
!13 = !{!14, !18, !19, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !12, file: !11, line: 115, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !12, file: !11, line: 116, baseType: !15, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !12, file: !11, line: 117, baseType: !20, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !12, file: !11, line: 118, baseType: !23, size: 32, align: 32, offset: 192)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !12, file: !11, line: 119, baseType: !23, size: 32, align: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 123, baseType: !23, size: 32, align: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 124, baseType: !23, size: 32, align: 32, offset: 288)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 125, baseType: !16, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !12, file: !11, line: 126, baseType: !16, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !12, file: !11, line: 127, baseType: !16, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !12, file: !11, line: 128, baseType: !16, size: 64, align: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !12, file: !11, line: 129, baseType: !16, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !12, file: !11, line: 130, baseType: !16, size: 64, align: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !12, file: !11, line: 131, baseType: !16, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !12, file: !11, line: 132, baseType: !15, size: 64, align: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !12, file: !11, line: 133, baseType: !15, size: 64, align: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !12, file: !11, line: 134, baseType: !15, size: 64, align: 64, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !12, file: !11, line: 135, baseType: !15, size: 64, align: 64, offset: 960)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !12, file: !11, line: 136, baseType: !39, size: 192, align: 32, offset: 1024)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !12, file: !11, line: 137, baseType: !43, size: 192, align: 32, offset: 1216)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 32, elements: !40)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !12, file: !11, line: 144, baseType: !15, size: 64, align: 64, offset: 1408)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !12, file: !11, line: 145, baseType: !23, size: 32, align: 32, offset: 1472)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !12, file: !11, line: 146, baseType: !23, size: 32, align: 32, offset: 1504)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !12, file: !11, line: 148, baseType: !15, size: 64, align: 64, offset: 1536)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !12, file: !11, line: 149, baseType: !15, size: 64, align: 64, offset: 1600)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !12, file: !11, line: 150, baseType: !23, size: 32, align: 32, offset: 1664)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !12, file: !11, line: 151, baseType: !23, size: 32, align: 32, offset: 1696)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !12, file: !11, line: 153, baseType: !15, size: 64, align: 64, offset: 1728)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !12, file: !11, line: 154, baseType: !53, size: 64, align: 64, offset: 1792)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !12, file: !11, line: 155, baseType: !55, size: 64, align: 64, offset: 1856)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !57, line: 42, baseType: !58)
!57 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 36, size: 192, align: 64, elements: !59)
!59 = !{!60, !68, !69, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !58, file: !57, line: 37, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !57, line: 26, size: 192, align: 64, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !63, file: !57, line: 27, baseType: !16, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !63, file: !57, line: 28, baseType: !23, size: 32, align: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !63, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !58, file: !57, line: 39, baseType: !23, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !58, file: !57, line: 40, baseType: !23, size: 32, align: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !58, file: !57, line: 41, baseType: !23, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !12, file: !11, line: 156, baseType: !23, size: 32, align: 32, offset: 1920)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !12, file: !11, line: 158, baseType: !15, size: 64, align: 64, offset: 1984)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !12, file: !11, line: 159, baseType: !15, size: 64, align: 64, offset: 2048)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !12, file: !11, line: 160, baseType: !55, size: 64, align: 64, offset: 2112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !12, file: !11, line: 161, baseType: !23, size: 32, align: 32, offset: 2176)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !12, file: !11, line: 163, baseType: !15, size: 64, align: 64, offset: 2240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !12, file: !11, line: 164, baseType: !53, size: 64, align: 64, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !12, file: !11, line: 165, baseType: !55, size: 64, align: 64, offset: 2368)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !12, file: !11, line: 166, baseType: !23, size: 32, align: 32, offset: 2432)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !12, file: !11, line: 170, baseType: !55, size: 64, align: 64, offset: 2496)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !12, file: !11, line: 171, baseType: !23, size: 32, align: 32, offset: 2560)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !12, file: !11, line: 172, baseType: !23, size: 32, align: 32, offset: 2592)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !12, file: !11, line: 173, baseType: !84, size: 64, align: 64, offset: 2624)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !12, file: !11, line: 174, baseType: !84, size: 64, align: 64, offset: 2688)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !12, file: !11, line: 175, baseType: !84, size: 64, align: 64, offset: 2752)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !12, file: !11, line: 176, baseType: !23, size: 32, align: 32, offset: 2816)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !11, line: 199, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !11, line: 186, size: 512, align: 64, elements: !91)
!91 = !{!92, !153, !154, !155, !156, !157, !201, !202, !203}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !90, file: !11, line: 187, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !95, line: 153, baseType: !96)
!95 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !95, line: 122, size: 1216, align: 64, elements: !97)
!97 = !{!98, !101, !102, !103, !105, !106, !111, !112, !113, !117, !121, !131, !137, !138, !141, !142, !146, !150, !151, !152}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !96, file: !95, line: 123, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !96, file: !95, line: 124, baseType: !23, size: 32, align: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !96, file: !95, line: 125, baseType: !23, size: 32, align: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !96, file: !95, line: 126, baseType: !104, size: 16, align: 16, offset: 128)
!104 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !96, file: !95, line: 127, baseType: !104, size: 16, align: 16, offset: 144)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !96, file: !95, line: 128, baseType: !107, size: 128, align: 64, offset: 192)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !95, line: 88, size: 128, align: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !107, file: !95, line: 89, baseType: !99, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !107, file: !95, line: 90, baseType: !23, size: 32, align: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !96, file: !95, line: 129, baseType: !23, size: 32, align: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !96, file: !95, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !96, file: !95, line: 133, baseType: !114, size: 64, align: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!23, !4}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !96, file: !95, line: 134, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!23, !4, !16, !23}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !96, file: !95, line: 135, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !4, !125, !23}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !95, line: 77, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !127, line: 71, baseType: !128)
!127 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!130 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !96, file: !95, line: 136, baseType: !132, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!23, !4, !135, !23}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !96, file: !95, line: 139, baseType: !107, size: 128, align: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !96, file: !95, line: 140, baseType: !139, size: 64, align: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !95, line: 94, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !96, file: !95, line: 141, baseType: !23, size: 32, align: 32, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !96, file: !95, line: 144, baseType: !143, size: 24, align: 8, offset: 928)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, align: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !96, file: !95, line: 145, baseType: !147, size: 8, align: 8, offset: 952)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 8, align: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !96, file: !95, line: 148, baseType: !107, size: 128, align: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !96, file: !95, line: 151, baseType: !23, size: 32, align: 32, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !96, file: !95, line: 152, baseType: !125, size: 64, align: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !90, file: !11, line: 188, baseType: !16, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !90, file: !11, line: 189, baseType: !23, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !90, file: !11, line: 191, baseType: !16, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !90, file: !11, line: 192, baseType: !23, size: 32, align: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !90, file: !11, line: 194, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !160, line: 76, baseType: !161)
!160 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !160, line: 49, size: 1152, align: 64, elements: !162)
!162 = !{!163, !164, !168, !171, !172, !173, !174, !175, !176, !177, !178, !179, !191, !192, !193, !194, !195, !196, !198, !199, !200}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !161, file: !160, line: 50, baseType: !93, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !160, line: 51, baseType: !165, size: 32, align: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !166, line: 41, baseType: !167)
!166 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!167 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !161, file: !160, line: 52, baseType: !169, size: 16, align: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !166, line: 40, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !161, file: !160, line: 53, baseType: !165, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !161, file: !160, line: 54, baseType: !165, size: 32, align: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !161, file: !160, line: 55, baseType: !165, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !161, file: !160, line: 56, baseType: !165, size: 32, align: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !161, file: !160, line: 57, baseType: !165, size: 32, align: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !161, file: !160, line: 58, baseType: !165, size: 32, align: 32, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !161, file: !160, line: 59, baseType: !165, size: 32, align: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !161, file: !160, line: 60, baseType: !165, size: 32, align: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !161, file: !160, line: 61, baseType: !180, size: 128, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !160, line: 42, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !160, line: 35, size: 128, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !181, file: !160, line: 36, baseType: !17, size: 8, align: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !181, file: !160, line: 40, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !160, line: 37, size: 64, align: 64, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !185, file: !160, line: 38, baseType: !165, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !185, file: !160, line: 39, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !166, line: 42, baseType: !190)
!190 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !161, file: !160, line: 62, baseType: !180, size: 128, align: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !161, file: !160, line: 63, baseType: !180, size: 128, align: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !161, file: !160, line: 65, baseType: !17, size: 8, align: 8, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !161, file: !160, line: 66, baseType: !17, size: 8, align: 8, offset: 776)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !161, file: !160, line: 70, baseType: !15, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !161, file: !160, line: 71, baseType: !197, size: 64, align: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !161, file: !160, line: 72, baseType: !197, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !161, file: !160, line: 73, baseType: !197, size: 64, align: 64, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !161, file: !160, line: 74, baseType: !197, size: 64, align: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !90, file: !11, line: 196, baseType: !23, size: 32, align: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !90, file: !11, line: 197, baseType: !23, size: 32, align: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !90, file: !11, line: 198, baseType: !23, size: 32, align: 32, offset: 448)
!204 = !{!205, !206, !207, !208}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !6, file: !1, line: 94, type: !88)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !6, file: !1, line: 96, type: !9)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !6, file: !1, line: 97, type: !16)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "status", scope: !6, file: !1, line: 98, type: !23)
!209 = !DISubprogram(name: "WriteStockholm", scope: !1, file: !1, line: 177, type: !210, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteStockholm, variables: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !93, !9}
!212 = !{!213, !214}
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !209, file: !1, line: 177, type: !93)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !209, file: !1, line: 177, type: !9)
!215 = !DISubprogram(name: "WriteStockholmOneBlock", scope: !1, file: !1, line: 195, type: !210, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteStockholmOneBlock, variables: !216)
!216 = !{!217, !218}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !215, file: !1, line: 195, type: !93)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !215, file: !1, line: 195, type: !9)
!219 = !DISubprogram(name: "actually_write_stockholm", scope: !1, file: !1, line: 216, type: !220, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*, i32)* @actually_write_stockholm, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !93, !9, !23}
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !219, file: !1, line: 216, type: !93)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !219, file: !1, line: 216, type: !9)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cpl", arg: 3, scope: !219, file: !1, line: 216, type: !23)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !219, file: !1, line: 218, type: !23)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !219, file: !1, line: 218, type: !23)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !219, file: !1, line: 219, type: !23)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namewidth", scope: !219, file: !1, line: 220, type: !23)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typewidth", scope: !219, file: !1, line: 221, type: !23)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "markupwidth", scope: !219, file: !1, line: 222, type: !23)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !219, file: !1, line: 223, type: !16)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currpos", scope: !219, file: !1, line: 224, type: !23)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !219, file: !1, line: 225, type: !16)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !219, file: !1, line: 225, type: !16)
!236 = !DISubprogram(name: "parse_gf", scope: !1, file: !1, line: 399, type: !237, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, variables: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!23, !9, !16}
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !236, file: !1, line: 399, type: !9)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !236, file: !1, line: 399, type: !16)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gf", scope: !236, file: !1, line: 401, type: !16)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "featurename", scope: !236, file: !1, line: 402, type: !16)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !236, file: !1, line: 403, type: !16)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !236, file: !1, line: 404, type: !16)
!246 = !DISubprogram(name: "parse_gs", scope: !1, file: !1, line: 464, type: !237, isLocal: true, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, variables: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !246, file: !1, line: 464, type: !9)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !246, file: !1, line: 464, type: !16)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gs", scope: !246, file: !1, line: 466, type: !16)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqname", scope: !246, file: !1, line: 467, type: !16)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "featurename", scope: !246, file: !1, line: 468, type: !16)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !246, file: !1, line: 469, type: !16)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqidx", scope: !246, file: !1, line: 470, type: !23)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !246, file: !1, line: 471, type: !16)
!256 = !DISubprogram(name: "parse_gc", scope: !1, file: !1, line: 507, type: !237, isLocal: true, isDefinition: true, scopeLine: 508, flags: DIFlagPrototyped, isOptimized: true, variables: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264}
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !256, file: !1, line: 507, type: !9)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !256, file: !1, line: 507, type: !16)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gc", scope: !256, file: !1, line: 509, type: !16)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "featurename", scope: !256, file: !1, line: 510, type: !16)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !256, file: !1, line: 511, type: !16)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !256, file: !1, line: 512, type: !16)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !256, file: !1, line: 513, type: !23)
!265 = !DISubprogram(name: "parse_gr", scope: !1, file: !1, line: 536, type: !237, isLocal: true, isDefinition: true, scopeLine: 537, flags: DIFlagPrototyped, isOptimized: true, variables: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !265, file: !1, line: 536, type: !9)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !265, file: !1, line: 536, type: !16)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gr", scope: !265, file: !1, line: 538, type: !16)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqname", scope: !265, file: !1, line: 539, type: !16)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "featurename", scope: !265, file: !1, line: 540, type: !16)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !265, file: !1, line: 541, type: !16)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqidx", scope: !265, file: !1, line: 542, type: !23)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !265, file: !1, line: 543, type: !23)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !265, file: !1, line: 544, type: !23)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !265, file: !1, line: 545, type: !16)
!277 = !DISubprogram(name: "parse_comment", scope: !1, file: !1, line: 595, type: !237, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, variables: !278)
!278 = !{!279, !280, !281, !282}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !277, file: !1, line: 595, type: !9)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !277, file: !1, line: 595, type: !16)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !277, file: !1, line: 597, type: !16)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "comment", scope: !277, file: !1, line: 598, type: !16)
!283 = !DISubprogram(name: "parse_sequence", scope: !1, file: !1, line: 609, type: !237, isLocal: true, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: true, variables: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291}
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !283, file: !1, line: 609, type: !9)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 2, scope: !283, file: !1, line: 609, type: !16)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !283, file: !1, line: 611, type: !16)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqname", scope: !283, file: !1, line: 612, type: !16)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "text", scope: !283, file: !1, line: 613, type: !16)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqidx", scope: !283, file: !1, line: 614, type: !23)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !283, file: !1, line: 615, type: !23)
!292 = !{i32 2, !"Dwarf Version", i32 2}
!293 = !{i32 2, !"Debug Info Version", i32 700000003}
!294 = !{i32 1, !"PIC Level", i32 2}
!295 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!296 = !DIExpression()
!297 = !DILocation(line: 94, column: 24, scope: !6)
!298 = !DILocation(line: 100, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !6, file: !1, line: 100, column: 7)
!300 = !{!301, !302, i64 0}
!301 = !{!"msafile_struct", !302, i64 0, !302, i64 8, !305, i64 16, !302, i64 24, !305, i64 32, !302, i64 40, !305, i64 48, !305, i64 52, !305, i64 56}
!302 = !{!"any pointer", !303, i64 0}
!303 = !{!"omnipotent char", !304, i64 0}
!304 = !{!"Simple C/C++ TBAA"}
!305 = !{!"int", !303, i64 0}
!306 = !DILocation(line: 100, column: 7, scope: !299)
!307 = !DILocation(line: 100, column: 7, scope: !6)
!308 = !DILocation(line: 104, column: 9, scope: !6)
!309 = !DILocation(line: 96, column: 10, scope: !6)
!310 = !DILocation(line: 111, column: 3, scope: !6)
!311 = !DILocation(line: 112, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 112, column: 9)
!313 = distinct !DILexicalBlock(scope: !6, file: !1, line: 111, column: 6)
!314 = !DILocation(line: 97, column: 10, scope: !6)
!315 = !DILocation(line: 112, column: 35, scope: !312)
!316 = !DILocation(line: 112, column: 9, scope: !313)
!317 = !DILocation(line: 113, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 112, column: 44)
!319 = !DILocation(line: 114, column: 7, scope: !318)
!320 = !DILocation(line: 116, column: 12, scope: !6)
!321 = !DILocation(line: 116, column: 3, scope: !313)
!322 = !DILocation(line: 118, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !6, file: !1, line: 118, column: 7)
!324 = !DILocation(line: 118, column: 40, scope: !323)
!325 = !DILocation(line: 118, column: 7, scope: !6)
!326 = !DILocation(line: 126, column: 7, scope: !323)
!327 = !{!301, !302, i64 8}
!328 = !DILocation(line: 119, column: 5, scope: !323)
!329 = !DILocation(line: 130, column: 15, scope: !6)
!330 = !DILocation(line: 130, column: 36, scope: !6)
!331 = !DILocation(line: 130, column: 3, scope: !6)
!332 = !DILocation(line: 609, column: 21, scope: !283, inlinedAt: !333)
!333 = distinct !DILocation(line: 143, column: 55, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 142, column: 16)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 141, column: 16)
!336 = distinct !DILexicalBlock(scope: !337, file: !1, line: 134, column: 11)
!337 = distinct !DILexicalBlock(scope: !6, file: !1, line: 131, column: 5)
!338 = !DILocation(line: 622, column: 44, scope: !283, inlinedAt: !333)
!339 = !DILocation(line: 625, column: 42, scope: !283, inlinedAt: !333)
!340 = !DILocation(line: 625, column: 62, scope: !283, inlinedAt: !333)
!341 = !DILocation(line: 147, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 145, column: 11)
!343 = !DILocation(line: 147, column: 28, scope: !342)
!344 = !DILocation(line: 147, column: 40, scope: !342)
!345 = !DILocation(line: 399, column: 15, scope: !236, inlinedAt: !346)
!346 = distinct !DILocation(line: 135, column: 50, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 135, column: 11)
!348 = distinct !DILexicalBlock(scope: !336, file: !1, line: 134, column: 22)
!349 = !DILocation(line: 415, column: 10, scope: !350, inlinedAt: !346)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 414, column: 12)
!351 = distinct !DILexicalBlock(scope: !236, file: !1, line: 412, column: 12)
!352 = !DILocation(line: 417, column: 10, scope: !353, inlinedAt: !346)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 416, column: 12)
!354 = !DILocation(line: 419, column: 10, scope: !355, inlinedAt: !346)
!355 = distinct !DILexicalBlock(scope: !353, file: !1, line: 418, column: 12)
!356 = !DILocation(line: 424, column: 7, scope: !357, inlinedAt: !346)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 421, column: 5)
!358 = distinct !DILexicalBlock(scope: !355, file: !1, line: 420, column: 12)
!359 = !DILocation(line: 425, column: 7, scope: !357, inlinedAt: !346)
!360 = !DILocation(line: 427, column: 2, scope: !361, inlinedAt: !346)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 426, column: 62)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 426, column: 11)
!363 = !DILocation(line: 428, column: 2, scope: !361, inlinedAt: !346)
!364 = !DILocation(line: 435, column: 7, scope: !365, inlinedAt: !346)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 432, column: 5)
!366 = distinct !DILexicalBlock(scope: !358, file: !1, line: 431, column: 12)
!367 = !DILocation(line: 436, column: 7, scope: !365, inlinedAt: !346)
!368 = !DILocation(line: 438, column: 2, scope: !369, inlinedAt: !346)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 437, column: 62)
!370 = distinct !DILexicalBlock(scope: !365, file: !1, line: 437, column: 11)
!371 = !DILocation(line: 439, column: 2, scope: !369, inlinedAt: !346)
!372 = !DILocation(line: 446, column: 7, scope: !373, inlinedAt: !346)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 443, column: 5)
!374 = distinct !DILexicalBlock(scope: !366, file: !1, line: 442, column: 12)
!375 = !DILocation(line: 447, column: 7, scope: !373, inlinedAt: !346)
!376 = !DILocation(line: 449, column: 2, scope: !377, inlinedAt: !346)
!377 = distinct !DILexicalBlock(scope: !378, file: !1, line: 448, column: 62)
!378 = distinct !DILexicalBlock(scope: !373, file: !1, line: 448, column: 11)
!379 = !DILocation(line: 450, column: 2, scope: !377, inlinedAt: !346)
!380 = !DILocation(line: 464, column: 15, scope: !246, inlinedAt: !381)
!381 = distinct !DILocation(line: 136, column: 50, scope: !382)
!382 = distinct !DILexicalBlock(scope: !347, file: !1, line: 136, column: 11)
!383 = !DILocation(line: 487, column: 12, scope: !384, inlinedAt: !381)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 486, column: 5)
!385 = distinct !DILexicalBlock(scope: !246, file: !1, line: 485, column: 7)
!386 = !DILocation(line: 488, column: 12, scope: !384, inlinedAt: !381)
!387 = !DILocation(line: 507, column: 15, scope: !256, inlinedAt: !388)
!388 = distinct !DILocation(line: 137, column: 50, scope: !389)
!389 = distinct !DILexicalBlock(scope: !382, file: !1, line: 137, column: 11)
!390 = !DILocation(line: 521, column: 23, scope: !391, inlinedAt: !388)
!391 = distinct !DILexicalBlock(scope: !256, file: !1, line: 520, column: 7)
!392 = !DILocation(line: 523, column: 23, scope: !393, inlinedAt: !388)
!393 = distinct !DILexicalBlock(scope: !391, file: !1, line: 522, column: 12)
!394 = !DILocation(line: 525, column: 23, scope: !395, inlinedAt: !388)
!395 = distinct !DILexicalBlock(scope: !393, file: !1, line: 524, column: 12)
!396 = !DILocation(line: 536, column: 15, scope: !265, inlinedAt: !397)
!397 = distinct !DILocation(line: 138, column: 50, scope: !398)
!398 = distinct !DILexicalBlock(scope: !389, file: !1, line: 138, column: 11)
!399 = !DILocation(line: 559, column: 16, scope: !400, inlinedAt: !397)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 559, column: 11)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 558, column: 5)
!402 = distinct !DILexicalBlock(scope: !265, file: !1, line: 557, column: 7)
!403 = !DILocation(line: 561, column: 17, scope: !404, inlinedAt: !397)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 560, column: 2)
!405 = !DILocation(line: 561, column: 15, scope: !404, inlinedAt: !397)
!406 = !DILocation(line: 562, column: 9, scope: !404, inlinedAt: !397)
!407 = !DILocation(line: 562, column: 15, scope: !404, inlinedAt: !397)
!408 = !DILocation(line: 573, column: 16, scope: !409, inlinedAt: !397)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 573, column: 11)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 572, column: 5)
!411 = distinct !DILexicalBlock(scope: !402, file: !1, line: 571, column: 12)
!412 = !DILocation(line: 575, column: 15, scope: !413, inlinedAt: !397)
!413 = distinct !DILexicalBlock(scope: !409, file: !1, line: 574, column: 2)
!414 = !DILocation(line: 576, column: 9, scope: !413, inlinedAt: !397)
!415 = !DILocation(line: 576, column: 15, scope: !413, inlinedAt: !397)
!416 = !DILocation(line: 595, column: 20, scope: !277, inlinedAt: !417)
!417 = distinct !DILocation(line: 139, column: 50, scope: !398)
!418 = !DILocation(line: 132, column: 14, scope: !337)
!419 = !{!303, !303, i64 0}
!420 = !DILocation(line: 132, column: 7, scope: !337)
!421 = !DILocation(line: 132, column: 40, scope: !337)
!422 = !DILocation(line: 135, column: 11, scope: !347)
!423 = !DILocation(line: 135, column: 33, scope: !347)
!424 = !DILocation(line: 135, column: 11, scope: !348)
!425 = !DILocation(line: 399, column: 26, scope: !236, inlinedAt: !346)
!426 = !DILocation(line: 404, column: 9, scope: !236, inlinedAt: !346)
!427 = !DILocation(line: 406, column: 5, scope: !236, inlinedAt: !346)
!428 = !{!302, !302, i64 0}
!429 = !DILocation(line: 407, column: 22, scope: !430, inlinedAt: !346)
!430 = distinct !DILexicalBlock(scope: !236, file: !1, line: 407, column: 7)
!431 = !DILocation(line: 401, column: 9, scope: !236, inlinedAt: !346)
!432 = !DILocation(line: 407, column: 56, scope: !430, inlinedAt: !346)
!433 = !DILocation(line: 407, column: 7, scope: !236, inlinedAt: !346)
!434 = !DILocation(line: 408, column: 22, scope: !435, inlinedAt: !346)
!435 = distinct !DILexicalBlock(scope: !236, file: !1, line: 408, column: 7)
!436 = !DILocation(line: 402, column: 9, scope: !236, inlinedAt: !346)
!437 = !DILocation(line: 408, column: 56, scope: !435, inlinedAt: !346)
!438 = !DILocation(line: 408, column: 7, scope: !236, inlinedAt: !346)
!439 = !DILocation(line: 409, column: 22, scope: !440, inlinedAt: !346)
!440 = distinct !DILexicalBlock(scope: !236, file: !1, line: 409, column: 7)
!441 = !DILocation(line: 403, column: 9, scope: !236, inlinedAt: !346)
!442 = !DILocation(line: 409, column: 56, scope: !440, inlinedAt: !346)
!443 = !DILocation(line: 409, column: 7, scope: !236, inlinedAt: !346)
!444 = !DILocation(line: 135, column: 50, scope: !347)
!445 = !DILocation(line: 410, column: 10, scope: !236, inlinedAt: !346)
!446 = !DILocation(line: 410, column: 16, scope: !236, inlinedAt: !346)
!447 = !DILocation(line: 410, column: 56, scope: !236, inlinedAt: !346)
!448 = !DILocation(line: 410, column: 3, scope: !236, inlinedAt: !346)
!449 = !DILocation(line: 412, column: 12, scope: !351, inlinedAt: !346)
!450 = !DILocation(line: 412, column: 38, scope: !351, inlinedAt: !346)
!451 = !DILocation(line: 412, column: 12, scope: !236, inlinedAt: !346)
!452 = !DILocation(line: 413, column: 33, scope: !351, inlinedAt: !346)
!453 = !DILocation(line: 413, column: 31, scope: !351, inlinedAt: !346)
!454 = !{!455, !302, i64 40}
!455 = !{!"msa_struct", !302, i64 0, !302, i64 8, !302, i64 16, !305, i64 24, !305, i64 28, !305, i64 32, !305, i64 36, !302, i64 40, !302, i64 48, !302, i64 56, !302, i64 64, !302, i64 72, !302, i64 80, !302, i64 88, !302, i64 96, !302, i64 104, !302, i64 112, !302, i64 120, !303, i64 128, !303, i64 152, !302, i64 176, !305, i64 184, !305, i64 188, !302, i64 192, !302, i64 200, !305, i64 208, !305, i64 212, !302, i64 216, !302, i64 224, !302, i64 232, !305, i64 240, !302, i64 248, !302, i64 256, !302, i64 264, !305, i64 272, !302, i64 280, !302, i64 288, !302, i64 296, !305, i64 304, !302, i64 312, !305, i64 320, !305, i64 324, !302, i64 328, !302, i64 336, !302, i64 344, !305, i64 352}
!456 = !DILocation(line: 413, column: 5, scope: !351, inlinedAt: !346)
!457 = !DILocation(line: 414, column: 12, scope: !350, inlinedAt: !346)
!458 = !DILocation(line: 414, column: 38, scope: !350, inlinedAt: !346)
!459 = !DILocation(line: 414, column: 12, scope: !351, inlinedAt: !346)
!460 = !DILocation(line: 415, column: 33, scope: !350, inlinedAt: !346)
!461 = !DILocation(line: 415, column: 31, scope: !350, inlinedAt: !346)
!462 = !{!455, !302, i64 56}
!463 = !DILocation(line: 415, column: 5, scope: !350, inlinedAt: !346)
!464 = !DILocation(line: 416, column: 12, scope: !353, inlinedAt: !346)
!465 = !DILocation(line: 416, column: 38, scope: !353, inlinedAt: !346)
!466 = !DILocation(line: 416, column: 12, scope: !350, inlinedAt: !346)
!467 = !DILocation(line: 417, column: 33, scope: !353, inlinedAt: !346)
!468 = !DILocation(line: 417, column: 31, scope: !353, inlinedAt: !346)
!469 = !{!455, !302, i64 48}
!470 = !DILocation(line: 417, column: 5, scope: !353, inlinedAt: !346)
!471 = !DILocation(line: 418, column: 12, scope: !355, inlinedAt: !346)
!472 = !DILocation(line: 418, column: 38, scope: !355, inlinedAt: !346)
!473 = !DILocation(line: 418, column: 12, scope: !353, inlinedAt: !346)
!474 = !DILocation(line: 419, column: 33, scope: !355, inlinedAt: !346)
!475 = !DILocation(line: 419, column: 31, scope: !355, inlinedAt: !346)
!476 = !{!455, !302, i64 64}
!477 = !DILocation(line: 419, column: 5, scope: !355, inlinedAt: !346)
!478 = !DILocation(line: 420, column: 12, scope: !358, inlinedAt: !346)
!479 = !DILocation(line: 420, column: 38, scope: !358, inlinedAt: !346)
!480 = !DILocation(line: 420, column: 12, scope: !355, inlinedAt: !346)
!481 = !DILocation(line: 422, column: 9, scope: !357, inlinedAt: !346)
!482 = !DILocation(line: 423, column: 19, scope: !483, inlinedAt: !346)
!483 = distinct !DILexicalBlock(scope: !357, file: !1, line: 423, column: 11)
!484 = !DILocation(line: 423, column: 53, scope: !483, inlinedAt: !346)
!485 = !DILocation(line: 423, column: 11, scope: !357, inlinedAt: !346)
!486 = !DILocation(line: 424, column: 44, scope: !357, inlinedAt: !346)
!487 = !DILocation(line: 424, column: 42, scope: !357, inlinedAt: !346)
!488 = !{!489, !489, i64 0}
!489 = !{!"float", !303, i64 0}
!490 = !DILocation(line: 425, column: 42, scope: !357, inlinedAt: !346)
!491 = !{!305, !305, i64 0}
!492 = !DILocation(line: 426, column: 19, scope: !362, inlinedAt: !346)
!493 = !DILocation(line: 426, column: 53, scope: !362, inlinedAt: !346)
!494 = !DILocation(line: 426, column: 11, scope: !357, inlinedAt: !346)
!495 = !DILocation(line: 427, column: 39, scope: !361, inlinedAt: !346)
!496 = !DILocation(line: 427, column: 37, scope: !361, inlinedAt: !346)
!497 = !DILocation(line: 428, column: 37, scope: !361, inlinedAt: !346)
!498 = !DILocation(line: 429, column: 7, scope: !361, inlinedAt: !346)
!499 = !DILocation(line: 431, column: 12, scope: !366, inlinedAt: !346)
!500 = !DILocation(line: 431, column: 38, scope: !366, inlinedAt: !346)
!501 = !DILocation(line: 431, column: 12, scope: !358, inlinedAt: !346)
!502 = !DILocation(line: 433, column: 9, scope: !365, inlinedAt: !346)
!503 = !DILocation(line: 434, column: 19, scope: !504, inlinedAt: !346)
!504 = distinct !DILexicalBlock(scope: !365, file: !1, line: 434, column: 11)
!505 = !DILocation(line: 434, column: 53, scope: !504, inlinedAt: !346)
!506 = !DILocation(line: 434, column: 11, scope: !365, inlinedAt: !346)
!507 = !DILocation(line: 435, column: 44, scope: !365, inlinedAt: !346)
!508 = !DILocation(line: 435, column: 42, scope: !365, inlinedAt: !346)
!509 = !DILocation(line: 436, column: 42, scope: !365, inlinedAt: !346)
!510 = !DILocation(line: 437, column: 19, scope: !370, inlinedAt: !346)
!511 = !DILocation(line: 437, column: 53, scope: !370, inlinedAt: !346)
!512 = !DILocation(line: 437, column: 11, scope: !365, inlinedAt: !346)
!513 = !DILocation(line: 438, column: 39, scope: !369, inlinedAt: !346)
!514 = !DILocation(line: 438, column: 37, scope: !369, inlinedAt: !346)
!515 = !DILocation(line: 439, column: 37, scope: !369, inlinedAt: !346)
!516 = !DILocation(line: 440, column: 7, scope: !369, inlinedAt: !346)
!517 = !DILocation(line: 442, column: 12, scope: !374, inlinedAt: !346)
!518 = !DILocation(line: 442, column: 38, scope: !374, inlinedAt: !346)
!519 = !DILocation(line: 442, column: 12, scope: !366, inlinedAt: !346)
!520 = !DILocation(line: 444, column: 9, scope: !373, inlinedAt: !346)
!521 = !DILocation(line: 445, column: 19, scope: !522, inlinedAt: !346)
!522 = distinct !DILexicalBlock(scope: !373, file: !1, line: 445, column: 11)
!523 = !DILocation(line: 445, column: 53, scope: !522, inlinedAt: !346)
!524 = !DILocation(line: 445, column: 11, scope: !373, inlinedAt: !346)
!525 = !DILocation(line: 446, column: 44, scope: !373, inlinedAt: !346)
!526 = !DILocation(line: 446, column: 42, scope: !373, inlinedAt: !346)
!527 = !DILocation(line: 447, column: 42, scope: !373, inlinedAt: !346)
!528 = !DILocation(line: 448, column: 19, scope: !378, inlinedAt: !346)
!529 = !DILocation(line: 448, column: 53, scope: !378, inlinedAt: !346)
!530 = !DILocation(line: 448, column: 11, scope: !373, inlinedAt: !346)
!531 = !DILocation(line: 449, column: 39, scope: !377, inlinedAt: !346)
!532 = !DILocation(line: 449, column: 37, scope: !377, inlinedAt: !346)
!533 = !DILocation(line: 450, column: 37, scope: !377, inlinedAt: !346)
!534 = !DILocation(line: 451, column: 7, scope: !377, inlinedAt: !346)
!535 = !DILocation(line: 454, column: 5, scope: !374, inlinedAt: !346)
!536 = !DILocation(line: 457, column: 1, scope: !236, inlinedAt: !346)
!537 = !DILocation(line: 98, column: 10, scope: !6)
!538 = !DILocation(line: 135, column: 41, scope: !347)
!539 = !DILocation(line: 136, column: 11, scope: !382)
!540 = !DILocation(line: 136, column: 33, scope: !382)
!541 = !DILocation(line: 136, column: 11, scope: !347)
!542 = !DILocation(line: 464, column: 26, scope: !246, inlinedAt: !381)
!543 = !DILocation(line: 471, column: 9, scope: !246, inlinedAt: !381)
!544 = !DILocation(line: 473, column: 5, scope: !246, inlinedAt: !381)
!545 = !DILocation(line: 474, column: 22, scope: !546, inlinedAt: !381)
!546 = distinct !DILexicalBlock(scope: !246, file: !1, line: 474, column: 7)
!547 = !DILocation(line: 466, column: 9, scope: !246, inlinedAt: !381)
!548 = !DILocation(line: 474, column: 56, scope: !546, inlinedAt: !381)
!549 = !DILocation(line: 474, column: 7, scope: !246, inlinedAt: !381)
!550 = !DILocation(line: 475, column: 22, scope: !551, inlinedAt: !381)
!551 = distinct !DILexicalBlock(scope: !246, file: !1, line: 475, column: 7)
!552 = !DILocation(line: 467, column: 9, scope: !246, inlinedAt: !381)
!553 = !DILocation(line: 475, column: 56, scope: !551, inlinedAt: !381)
!554 = !DILocation(line: 475, column: 7, scope: !246, inlinedAt: !381)
!555 = !DILocation(line: 476, column: 22, scope: !556, inlinedAt: !381)
!556 = distinct !DILexicalBlock(scope: !246, file: !1, line: 476, column: 7)
!557 = !DILocation(line: 468, column: 9, scope: !246, inlinedAt: !381)
!558 = !DILocation(line: 476, column: 56, scope: !556, inlinedAt: !381)
!559 = !DILocation(line: 476, column: 7, scope: !246, inlinedAt: !381)
!560 = !DILocation(line: 477, column: 22, scope: !561, inlinedAt: !381)
!561 = distinct !DILexicalBlock(scope: !246, file: !1, line: 477, column: 7)
!562 = !DILocation(line: 469, column: 9, scope: !246, inlinedAt: !381)
!563 = !DILocation(line: 477, column: 56, scope: !561, inlinedAt: !381)
!564 = !DILocation(line: 477, column: 7, scope: !246, inlinedAt: !381)
!565 = !DILocation(line: 136, column: 50, scope: !382)
!566 = !DILocation(line: 478, column: 10, scope: !246, inlinedAt: !381)
!567 = !DILocation(line: 478, column: 16, scope: !246, inlinedAt: !381)
!568 = !DILocation(line: 478, column: 56, scope: !246, inlinedAt: !381)
!569 = !DILocation(line: 478, column: 3, scope: !246, inlinedAt: !381)
!570 = !DILocation(line: 482, column: 44, scope: !246, inlinedAt: !381)
!571 = !{!455, !305, i64 352}
!572 = !DILocation(line: 482, column: 51, scope: !246, inlinedAt: !381)
!573 = !DILocation(line: 482, column: 12, scope: !246, inlinedAt: !381)
!574 = !DILocation(line: 470, column: 9, scope: !246, inlinedAt: !381)
!575 = !DILocation(line: 483, column: 16, scope: !246, inlinedAt: !381)
!576 = !DILocation(line: 485, column: 7, scope: !385, inlinedAt: !381)
!577 = !DILocation(line: 485, column: 33, scope: !385, inlinedAt: !381)
!578 = !DILocation(line: 485, column: 7, scope: !246, inlinedAt: !381)
!579 = !DILocation(line: 487, column: 35, scope: !384, inlinedAt: !381)
!580 = !DILocation(line: 487, column: 7, scope: !384, inlinedAt: !381)
!581 = !{!455, !302, i64 16}
!582 = !DILocation(line: 487, column: 33, scope: !384, inlinedAt: !381)
!583 = !DILocation(line: 488, column: 18, scope: !384, inlinedAt: !381)
!584 = !{!455, !305, i64 32}
!585 = !DILocation(line: 489, column: 5, scope: !384, inlinedAt: !381)
!586 = !DILocation(line: 491, column: 12, scope: !587, inlinedAt: !381)
!587 = distinct !DILexicalBlock(scope: !385, file: !1, line: 491, column: 12)
!588 = !DILocation(line: 491, column: 38, scope: !587, inlinedAt: !381)
!589 = !DILocation(line: 491, column: 12, scope: !385, inlinedAt: !381)
!590 = !DILocation(line: 492, column: 5, scope: !587, inlinedAt: !381)
!591 = !DILocation(line: 494, column: 12, scope: !592, inlinedAt: !381)
!592 = distinct !DILexicalBlock(scope: !587, file: !1, line: 494, column: 12)
!593 = !DILocation(line: 494, column: 38, scope: !592, inlinedAt: !381)
!594 = !DILocation(line: 494, column: 12, scope: !587, inlinedAt: !381)
!595 = !DILocation(line: 495, column: 5, scope: !592, inlinedAt: !381)
!596 = !DILocation(line: 498, column: 5, scope: !592, inlinedAt: !381)
!597 = !DILocation(line: 501, column: 1, scope: !246, inlinedAt: !381)
!598 = !DILocation(line: 136, column: 41, scope: !382)
!599 = !DILocation(line: 137, column: 11, scope: !389)
!600 = !DILocation(line: 137, column: 33, scope: !389)
!601 = !DILocation(line: 137, column: 11, scope: !382)
!602 = !DILocation(line: 507, column: 26, scope: !256, inlinedAt: !388)
!603 = !DILocation(line: 512, column: 9, scope: !256, inlinedAt: !388)
!604 = !DILocation(line: 515, column: 5, scope: !256, inlinedAt: !388)
!605 = !DILocation(line: 516, column: 22, scope: !606, inlinedAt: !388)
!606 = distinct !DILexicalBlock(scope: !256, file: !1, line: 516, column: 7)
!607 = !DILocation(line: 509, column: 9, scope: !256, inlinedAt: !388)
!608 = !DILocation(line: 516, column: 56, scope: !606, inlinedAt: !388)
!609 = !DILocation(line: 516, column: 7, scope: !256, inlinedAt: !388)
!610 = !DILocation(line: 517, column: 22, scope: !611, inlinedAt: !388)
!611 = distinct !DILexicalBlock(scope: !256, file: !1, line: 517, column: 7)
!612 = !DILocation(line: 510, column: 9, scope: !256, inlinedAt: !388)
!613 = !DILocation(line: 517, column: 56, scope: !611, inlinedAt: !388)
!614 = !DILocation(line: 517, column: 7, scope: !256, inlinedAt: !388)
!615 = !DILocation(line: 513, column: 9, scope: !256, inlinedAt: !388)
!616 = !DILocation(line: 518, column: 22, scope: !617, inlinedAt: !388)
!617 = distinct !DILexicalBlock(scope: !256, file: !1, line: 518, column: 7)
!618 = !DILocation(line: 511, column: 9, scope: !256, inlinedAt: !388)
!619 = !DILocation(line: 518, column: 56, scope: !617, inlinedAt: !388)
!620 = !DILocation(line: 518, column: 7, scope: !256, inlinedAt: !388)
!621 = !DILocation(line: 520, column: 7, scope: !391, inlinedAt: !388)
!622 = !DILocation(line: 520, column: 38, scope: !391, inlinedAt: !388)
!623 = !DILocation(line: 520, column: 7, scope: !256, inlinedAt: !388)
!624 = !DILocation(line: 521, column: 43, scope: !391, inlinedAt: !388)
!625 = !DILocation(line: 521, column: 5, scope: !391, inlinedAt: !388)
!626 = !DILocation(line: 522, column: 12, scope: !393, inlinedAt: !388)
!627 = !DILocation(line: 522, column: 43, scope: !393, inlinedAt: !388)
!628 = !DILocation(line: 522, column: 12, scope: !391, inlinedAt: !388)
!629 = !DILocation(line: 523, column: 43, scope: !393, inlinedAt: !388)
!630 = !DILocation(line: 523, column: 5, scope: !393, inlinedAt: !388)
!631 = !DILocation(line: 524, column: 12, scope: !395, inlinedAt: !388)
!632 = !DILocation(line: 524, column: 38, scope: !395, inlinedAt: !388)
!633 = !DILocation(line: 524, column: 12, scope: !393, inlinedAt: !388)
!634 = !DILocation(line: 525, column: 38, scope: !395, inlinedAt: !388)
!635 = !DILocation(line: 525, column: 5, scope: !395, inlinedAt: !388)
!636 = !DILocation(line: 527, column: 5, scope: !395, inlinedAt: !388)
!637 = !DILocation(line: 137, column: 50, scope: !389)
!638 = !DILocation(line: 530, column: 1, scope: !256, inlinedAt: !388)
!639 = !DILocation(line: 137, column: 41, scope: !389)
!640 = !DILocation(line: 138, column: 11, scope: !398)
!641 = !DILocation(line: 138, column: 33, scope: !398)
!642 = !DILocation(line: 138, column: 11, scope: !389)
!643 = !DILocation(line: 536, column: 26, scope: !265, inlinedAt: !397)
!644 = !DILocation(line: 545, column: 9, scope: !265, inlinedAt: !397)
!645 = !DILocation(line: 547, column: 5, scope: !265, inlinedAt: !397)
!646 = !DILocation(line: 548, column: 22, scope: !647, inlinedAt: !397)
!647 = distinct !DILexicalBlock(scope: !265, file: !1, line: 548, column: 7)
!648 = !DILocation(line: 538, column: 9, scope: !265, inlinedAt: !397)
!649 = !DILocation(line: 548, column: 56, scope: !647, inlinedAt: !397)
!650 = !DILocation(line: 548, column: 7, scope: !265, inlinedAt: !397)
!651 = !DILocation(line: 549, column: 22, scope: !652, inlinedAt: !397)
!652 = distinct !DILexicalBlock(scope: !265, file: !1, line: 549, column: 7)
!653 = !DILocation(line: 539, column: 9, scope: !265, inlinedAt: !397)
!654 = !DILocation(line: 549, column: 56, scope: !652, inlinedAt: !397)
!655 = !DILocation(line: 549, column: 7, scope: !265, inlinedAt: !397)
!656 = !DILocation(line: 550, column: 22, scope: !657, inlinedAt: !397)
!657 = distinct !DILexicalBlock(scope: !265, file: !1, line: 550, column: 7)
!658 = !DILocation(line: 540, column: 9, scope: !265, inlinedAt: !397)
!659 = !DILocation(line: 550, column: 56, scope: !657, inlinedAt: !397)
!660 = !DILocation(line: 550, column: 7, scope: !265, inlinedAt: !397)
!661 = !DILocation(line: 543, column: 9, scope: !265, inlinedAt: !397)
!662 = !DILocation(line: 551, column: 22, scope: !663, inlinedAt: !397)
!663 = distinct !DILexicalBlock(scope: !265, file: !1, line: 551, column: 7)
!664 = !DILocation(line: 541, column: 9, scope: !265, inlinedAt: !397)
!665 = !DILocation(line: 551, column: 56, scope: !663, inlinedAt: !397)
!666 = !DILocation(line: 551, column: 7, scope: !265, inlinedAt: !397)
!667 = !DILocation(line: 554, column: 44, scope: !265, inlinedAt: !397)
!668 = !DILocation(line: 554, column: 12, scope: !265, inlinedAt: !397)
!669 = !DILocation(line: 542, column: 9, scope: !265, inlinedAt: !397)
!670 = !DILocation(line: 555, column: 16, scope: !265, inlinedAt: !397)
!671 = !DILocation(line: 557, column: 7, scope: !402, inlinedAt: !397)
!672 = !DILocation(line: 557, column: 33, scope: !402, inlinedAt: !397)
!673 = !DILocation(line: 557, column: 7, scope: !265, inlinedAt: !397)
!674 = !{!455, !302, i64 112}
!675 = !DILocation(line: 559, column: 19, scope: !400, inlinedAt: !397)
!676 = !DILocation(line: 559, column: 11, scope: !401, inlinedAt: !397)
!677 = !DILocation(line: 569, column: 64, scope: !401, inlinedAt: !397)
!678 = !{!455, !302, i64 336}
!679 = !{!455, !305, i64 320}
!680 = !DILocation(line: 562, column: 17, scope: !404, inlinedAt: !397)
!681 = !DILocation(line: 544, column: 9, scope: !265, inlinedAt: !397)
!682 = !DILocation(line: 563, column: 25, scope: !683, inlinedAt: !397)
!683 = distinct !DILexicalBlock(scope: !684, file: !1, line: 563, column: 4)
!684 = distinct !DILexicalBlock(scope: !404, file: !1, line: 563, column: 4)
!685 = !DILocation(line: 563, column: 18, scope: !683, inlinedAt: !397)
!686 = !DILocation(line: 138, column: 50, scope: !398)
!687 = !DILocation(line: 563, column: 4, scope: !684, inlinedAt: !397)
!688 = !DILocation(line: 565, column: 13, scope: !689, inlinedAt: !397)
!689 = distinct !DILexicalBlock(scope: !683, file: !1, line: 564, column: 6)
!690 = !DILocation(line: 565, column: 8, scope: !689, inlinedAt: !397)
!691 = !DILocation(line: 565, column: 22, scope: !689, inlinedAt: !397)
!692 = !DILocation(line: 566, column: 13, scope: !689, inlinedAt: !397)
!693 = !DILocation(line: 566, column: 8, scope: !689, inlinedAt: !397)
!694 = !DILocation(line: 566, column: 22, scope: !689, inlinedAt: !397)
!695 = !DILocation(line: 569, column: 46, scope: !401, inlinedAt: !397)
!696 = !DILocation(line: 569, column: 41, scope: !401, inlinedAt: !397)
!697 = !DILocation(line: 569, column: 59, scope: !401, inlinedAt: !397)
!698 = !DILocation(line: 569, column: 85, scope: !401, inlinedAt: !397)
!699 = !DILocation(line: 569, column: 28, scope: !401, inlinedAt: !397)
!700 = !DILocation(line: 569, column: 12, scope: !401, inlinedAt: !397)
!701 = !DILocation(line: 569, column: 7, scope: !401, inlinedAt: !397)
!702 = !DILocation(line: 569, column: 26, scope: !401, inlinedAt: !397)
!703 = !DILocation(line: 570, column: 5, scope: !401, inlinedAt: !397)
!704 = !DILocation(line: 571, column: 12, scope: !411, inlinedAt: !397)
!705 = !DILocation(line: 571, column: 38, scope: !411, inlinedAt: !397)
!706 = !DILocation(line: 571, column: 12, scope: !402, inlinedAt: !397)
!707 = !{!455, !302, i64 120}
!708 = !DILocation(line: 573, column: 19, scope: !409, inlinedAt: !397)
!709 = !DILocation(line: 573, column: 11, scope: !410, inlinedAt: !397)
!710 = !DILocation(line: 583, column: 64, scope: !410, inlinedAt: !397)
!711 = !{!455, !302, i64 344}
!712 = !DILocation(line: 575, column: 17, scope: !413, inlinedAt: !397)
!713 = !DILocation(line: 576, column: 17, scope: !413, inlinedAt: !397)
!714 = !DILocation(line: 577, column: 25, scope: !715, inlinedAt: !397)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 577, column: 4)
!716 = distinct !DILexicalBlock(scope: !413, file: !1, line: 577, column: 4)
!717 = !DILocation(line: 577, column: 18, scope: !715, inlinedAt: !397)
!718 = !DILocation(line: 577, column: 4, scope: !716, inlinedAt: !397)
!719 = !DILocation(line: 579, column: 13, scope: !720, inlinedAt: !397)
!720 = distinct !DILexicalBlock(scope: !715, file: !1, line: 578, column: 6)
!721 = !DILocation(line: 579, column: 8, scope: !720, inlinedAt: !397)
!722 = !DILocation(line: 579, column: 22, scope: !720, inlinedAt: !397)
!723 = !DILocation(line: 580, column: 13, scope: !720, inlinedAt: !397)
!724 = !DILocation(line: 580, column: 8, scope: !720, inlinedAt: !397)
!725 = !DILocation(line: 580, column: 22, scope: !720, inlinedAt: !397)
!726 = !DILocation(line: 583, column: 46, scope: !410, inlinedAt: !397)
!727 = !DILocation(line: 583, column: 41, scope: !410, inlinedAt: !397)
!728 = !DILocation(line: 583, column: 59, scope: !410, inlinedAt: !397)
!729 = !DILocation(line: 583, column: 85, scope: !410, inlinedAt: !397)
!730 = !DILocation(line: 583, column: 28, scope: !410, inlinedAt: !397)
!731 = !DILocation(line: 583, column: 12, scope: !410, inlinedAt: !397)
!732 = !DILocation(line: 583, column: 7, scope: !410, inlinedAt: !397)
!733 = !DILocation(line: 583, column: 26, scope: !410, inlinedAt: !397)
!734 = !DILocation(line: 584, column: 5, scope: !410, inlinedAt: !397)
!735 = !DILocation(line: 586, column: 5, scope: !411, inlinedAt: !397)
!736 = !DILocation(line: 589, column: 1, scope: !265, inlinedAt: !397)
!737 = !DILocation(line: 138, column: 41, scope: !398)
!738 = !DILocation(line: 595, column: 31, scope: !277, inlinedAt: !417)
!739 = !DILocation(line: 600, column: 11, scope: !277, inlinedAt: !417)
!740 = !DILocation(line: 597, column: 9, scope: !277, inlinedAt: !417)
!741 = !DILocation(line: 600, column: 5, scope: !277, inlinedAt: !417)
!742 = !DILocation(line: 601, column: 7, scope: !743, inlinedAt: !417)
!743 = distinct !DILexicalBlock(scope: !277, file: !1, line: 601, column: 7)
!744 = !DILocation(line: 601, column: 10, scope: !743, inlinedAt: !417)
!745 = !DILocation(line: 601, column: 7, scope: !277, inlinedAt: !417)
!746 = !DILocation(line: 601, column: 24, scope: !747, inlinedAt: !417)
!747 = distinct !DILexicalBlock(scope: !743, file: !1, line: 601, column: 19)
!748 = !DILocation(line: 598, column: 9, scope: !277, inlinedAt: !417)
!749 = !DILocation(line: 601, column: 45, scope: !747, inlinedAt: !417)
!750 = !DILocation(line: 602, column: 23, scope: !751, inlinedAt: !417)
!751 = distinct !DILexicalBlock(scope: !743, file: !1, line: 602, column: 12)
!752 = !DILocation(line: 602, column: 51, scope: !751, inlinedAt: !417)
!753 = !DILocation(line: 602, column: 12, scope: !743, inlinedAt: !417)
!754 = !DILocation(line: 139, column: 50, scope: !398)
!755 = !DILocation(line: 604, column: 3, scope: !277, inlinedAt: !417)
!756 = !DILocation(line: 605, column: 3, scope: !277, inlinedAt: !417)
!757 = !DILocation(line: 606, column: 1, scope: !277, inlinedAt: !417)
!758 = !DILocation(line: 141, column: 16, scope: !335)
!759 = !DILocation(line: 141, column: 38, scope: !335)
!760 = !DILocation(line: 141, column: 16, scope: !336)
!761 = !DILocation(line: 142, column: 19, scope: !334)
!762 = !DILocation(line: 142, column: 16, scope: !335)
!763 = !DILocation(line: 609, column: 32, scope: !283, inlinedAt: !333)
!764 = !DILocation(line: 611, column: 9, scope: !283, inlinedAt: !333)
!765 = !DILocation(line: 617, column: 5, scope: !283, inlinedAt: !333)
!766 = !DILocation(line: 618, column: 22, scope: !767, inlinedAt: !333)
!767 = distinct !DILexicalBlock(scope: !283, file: !1, line: 618, column: 7)
!768 = !DILocation(line: 612, column: 9, scope: !283, inlinedAt: !333)
!769 = !DILocation(line: 618, column: 56, scope: !767, inlinedAt: !333)
!770 = !DILocation(line: 618, column: 7, scope: !283, inlinedAt: !333)
!771 = !DILocation(line: 615, column: 9, scope: !283, inlinedAt: !333)
!772 = !DILocation(line: 619, column: 22, scope: !773, inlinedAt: !333)
!773 = distinct !DILexicalBlock(scope: !283, file: !1, line: 619, column: 7)
!774 = !DILocation(line: 613, column: 9, scope: !283, inlinedAt: !333)
!775 = !DILocation(line: 619, column: 56, scope: !773, inlinedAt: !333)
!776 = !DILocation(line: 619, column: 7, scope: !283, inlinedAt: !333)
!777 = !DILocation(line: 622, column: 51, scope: !283, inlinedAt: !333)
!778 = !DILocation(line: 622, column: 12, scope: !283, inlinedAt: !333)
!779 = !DILocation(line: 614, column: 9, scope: !283, inlinedAt: !333)
!780 = !DILocation(line: 623, column: 16, scope: !283, inlinedAt: !333)
!781 = !DILocation(line: 625, column: 37, scope: !283, inlinedAt: !333)
!782 = !{!455, !302, i64 0}
!783 = !{!455, !302, i64 328}
!784 = !DILocation(line: 625, column: 57, scope: !283, inlinedAt: !333)
!785 = !DILocation(line: 625, column: 83, scope: !283, inlinedAt: !333)
!786 = !DILocation(line: 625, column: 24, scope: !283, inlinedAt: !333)
!787 = !DILocation(line: 625, column: 8, scope: !283, inlinedAt: !333)
!788 = !DILocation(line: 625, column: 3, scope: !283, inlinedAt: !333)
!789 = !DILocation(line: 625, column: 22, scope: !283, inlinedAt: !333)
!790 = !DILocation(line: 626, column: 3, scope: !283, inlinedAt: !333)
!791 = !DILocation(line: 143, column: 55, scope: !334)
!792 = !DILocation(line: 627, column: 1, scope: !283, inlinedAt: !333)
!793 = !DILocation(line: 145, column: 18, scope: !342)
!794 = !DILocation(line: 145, column: 11, scope: !337)
!795 = !{!301, !305, i64 16}
!796 = !DILocation(line: 147, column: 45, scope: !342)
!797 = !DILocation(line: 147, column: 35, scope: !342)
!798 = !DILocation(line: 146, column: 2, scope: !342)
!799 = !DILocation(line: 150, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !6, file: !1, line: 150, column: 7)
!801 = !DILocation(line: 150, column: 17, scope: !800)
!802 = !DILocation(line: 150, column: 25, scope: !800)
!803 = !{!455, !305, i64 28}
!804 = !DILocation(line: 150, column: 30, scope: !800)
!805 = !DILocation(line: 150, column: 7, scope: !6)
!806 = !DILocation(line: 151, column: 56, scope: !800)
!807 = !DILocation(line: 151, column: 61, scope: !800)
!808 = !DILocation(line: 151, column: 51, scope: !800)
!809 = !DILocation(line: 151, column: 5, scope: !800)
!810 = !DILocation(line: 153, column: 25, scope: !811)
!811 = distinct !DILexicalBlock(scope: !6, file: !1, line: 153, column: 7)
!812 = !DILocation(line: 153, column: 7, scope: !6)
!813 = !DILocation(line: 155, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !1, line: 153, column: 36)
!815 = !DILocation(line: 156, column: 7, scope: !814)
!816 = !DILocation(line: 159, column: 3, scope: !6)
!817 = !DILocation(line: 160, column: 3, scope: !6)
!818 = !DILocation(line: 161, column: 1, scope: !6)
!819 = !DILocation(line: 177, column: 22, scope: !209)
!820 = !DILocation(line: 177, column: 31, scope: !209)
!821 = !DILocation(line: 179, column: 3, scope: !209)
!822 = !DILocation(line: 180, column: 1, scope: !209)
!823 = !DILocation(line: 216, column: 32, scope: !219)
!824 = !DILocation(line: 216, column: 41, scope: !219)
!825 = !DILocation(line: 216, column: 50, scope: !219)
!826 = !DILocation(line: 219, column: 8, scope: !219)
!827 = !DILocation(line: 221, column: 8, scope: !219)
!828 = !DILocation(line: 222, column: 8, scope: !219)
!829 = !DILocation(line: 220, column: 8, scope: !219)
!830 = !DILocation(line: 218, column: 8, scope: !219)
!831 = !DILocation(line: 232, column: 24, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 232, column: 3)
!833 = distinct !DILexicalBlock(scope: !219, file: !1, line: 232, column: 3)
!834 = !DILocation(line: 232, column: 17, scope: !832)
!835 = !DILocation(line: 232, column: 3, scope: !833)
!836 = !DILocation(line: 233, column: 28, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !1, line: 233, column: 9)
!838 = !{!455, !302, i64 8}
!839 = !DILocation(line: 233, column: 23, scope: !837)
!840 = !DILocation(line: 233, column: 16, scope: !837)
!841 = !DILocation(line: 233, column: 40, scope: !837)
!842 = !DILocation(line: 233, column: 9, scope: !832)
!843 = !DILocation(line: 240, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !219, file: !1, line: 240, column: 7)
!845 = !DILocation(line: 240, column: 20, scope: !844)
!846 = !DILocation(line: 241, column: 12, scope: !847)
!847 = distinct !DILexicalBlock(scope: !219, file: !1, line: 241, column: 7)
!848 = !DILocation(line: 241, column: 20, scope: !847)
!849 = !DILocation(line: 241, column: 7, scope: !219)
!850 = !DILocation(line: 242, column: 24, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 242, column: 3)
!852 = distinct !DILexicalBlock(scope: !219, file: !1, line: 242, column: 3)
!853 = !{!455, !305, i64 304}
!854 = !DILocation(line: 242, column: 17, scope: !851)
!855 = !DILocation(line: 242, column: 3, scope: !852)
!856 = !DILocation(line: 243, column: 28, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !1, line: 243, column: 9)
!858 = !{!455, !302, i64 280}
!859 = !DILocation(line: 243, column: 23, scope: !857)
!860 = !DILocation(line: 243, column: 16, scope: !857)
!861 = !DILocation(line: 243, column: 40, scope: !857)
!862 = !DILocation(line: 243, column: 9, scope: !851)
!863 = !DILocation(line: 245, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !219, file: !1, line: 245, column: 7)
!865 = !{!455, !302, i64 88}
!866 = !DILocation(line: 245, column: 20, scope: !864)
!867 = !DILocation(line: 245, column: 7, scope: !219)
!868 = !DILocation(line: 245, column: 62, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 245, column: 52)
!870 = distinct !DILexicalBlock(scope: !864, file: !1, line: 245, column: 29)
!871 = !DILocation(line: 245, column: 52, scope: !870)
!872 = !DILocation(line: 246, column: 12, scope: !873)
!873 = distinct !DILexicalBlock(scope: !219, file: !1, line: 246, column: 7)
!874 = !{!455, !302, i64 72}
!875 = !DILocation(line: 246, column: 20, scope: !873)
!876 = !DILocation(line: 246, column: 7, scope: !219)
!877 = !DILocation(line: 246, column: 62, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 246, column: 52)
!879 = distinct !DILexicalBlock(scope: !873, file: !1, line: 246, column: 29)
!880 = !DILocation(line: 246, column: 52, scope: !879)
!881 = !DILocation(line: 247, column: 12, scope: !882)
!882 = distinct !DILexicalBlock(scope: !219, file: !1, line: 247, column: 7)
!883 = !{!455, !302, i64 80}
!884 = !DILocation(line: 247, column: 20, scope: !882)
!885 = !DILocation(line: 247, column: 7, scope: !219)
!886 = !DILocation(line: 247, column: 62, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 247, column: 52)
!888 = distinct !DILexicalBlock(scope: !882, file: !1, line: 247, column: 29)
!889 = !DILocation(line: 247, column: 52, scope: !888)
!890 = !DILocation(line: 248, column: 24, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 248, column: 3)
!892 = distinct !DILexicalBlock(scope: !219, file: !1, line: 248, column: 3)
!893 = !{!455, !305, i64 272}
!894 = !DILocation(line: 248, column: 17, scope: !891)
!895 = !DILocation(line: 248, column: 3, scope: !892)
!896 = !DILocation(line: 249, column: 28, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !1, line: 249, column: 9)
!898 = !{!455, !302, i64 248}
!899 = !DILocation(line: 249, column: 23, scope: !897)
!900 = !DILocation(line: 249, column: 16, scope: !897)
!901 = !DILocation(line: 249, column: 40, scope: !897)
!902 = !DILocation(line: 249, column: 9, scope: !891)
!903 = !DILocation(line: 251, column: 9, scope: !219)
!904 = !DILocation(line: 223, column: 9, scope: !219)
!905 = !DILocation(line: 255, column: 3, scope: !219)
!906 = !DILocation(line: 259, column: 25, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 259, column: 3)
!908 = distinct !DILexicalBlock(scope: !219, file: !1, line: 259, column: 3)
!909 = !{!455, !305, i64 184}
!910 = !DILocation(line: 259, column: 18, scope: !907)
!911 = !DILocation(line: 259, column: 3, scope: !908)
!912 = !DILocation(line: 260, column: 32, scope: !907)
!913 = !{!455, !302, i64 176}
!914 = !DILocation(line: 260, column: 27, scope: !907)
!915 = !DILocation(line: 260, column: 5, scope: !907)
!916 = !DILocation(line: 261, column: 21, scope: !917)
!917 = distinct !DILexicalBlock(scope: !219, file: !1, line: 261, column: 7)
!918 = !DILocation(line: 261, column: 7, scope: !219)
!919 = !DILocation(line: 261, column: 26, scope: !917)
!920 = !DILocation(line: 265, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !219, file: !1, line: 265, column: 7)
!922 = !DILocation(line: 265, column: 18, scope: !921)
!923 = !DILocation(line: 265, column: 7, scope: !219)
!924 = !DILocation(line: 265, column: 33, scope: !921)
!925 = !DILocation(line: 266, column: 12, scope: !926)
!926 = distinct !DILexicalBlock(scope: !219, file: !1, line: 266, column: 7)
!927 = !DILocation(line: 266, column: 18, scope: !926)
!928 = !DILocation(line: 266, column: 7, scope: !219)
!929 = !DILocation(line: 266, column: 33, scope: !926)
!930 = !DILocation(line: 267, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !219, file: !1, line: 267, column: 7)
!932 = !DILocation(line: 267, column: 18, scope: !931)
!933 = !DILocation(line: 267, column: 7, scope: !219)
!934 = !DILocation(line: 267, column: 33, scope: !931)
!935 = !DILocation(line: 268, column: 12, scope: !936)
!936 = distinct !DILexicalBlock(scope: !219, file: !1, line: 268, column: 7)
!937 = !DILocation(line: 268, column: 18, scope: !936)
!938 = !DILocation(line: 268, column: 7, scope: !219)
!939 = !DILocation(line: 268, column: 33, scope: !936)
!940 = !DILocation(line: 272, column: 12, scope: !941)
!941 = distinct !DILexicalBlock(scope: !219, file: !1, line: 272, column: 12)
!942 = !DILocation(line: 272, column: 47, scope: !941)
!943 = !DILocation(line: 272, column: 50, scope: !941)
!944 = !DILocation(line: 275, column: 38, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !1, line: 274, column: 12)
!946 = !DILocation(line: 272, column: 12, scope: !219)
!947 = !DILocation(line: 273, column: 72, scope: !941)
!948 = !DILocation(line: 273, column: 5, scope: !941)
!949 = !DILocation(line: 275, column: 5, scope: !945)
!950 = !DILocation(line: 276, column: 12, scope: !951)
!951 = distinct !DILexicalBlock(scope: !219, file: !1, line: 276, column: 12)
!952 = !DILocation(line: 276, column: 47, scope: !951)
!953 = !DILocation(line: 276, column: 50, scope: !951)
!954 = !DILocation(line: 279, column: 38, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !1, line: 278, column: 12)
!956 = !DILocation(line: 276, column: 12, scope: !219)
!957 = !DILocation(line: 277, column: 72, scope: !951)
!958 = !DILocation(line: 277, column: 5, scope: !951)
!959 = !DILocation(line: 279, column: 5, scope: !955)
!960 = !DILocation(line: 280, column: 12, scope: !961)
!961 = distinct !DILexicalBlock(scope: !219, file: !1, line: 280, column: 12)
!962 = !DILocation(line: 280, column: 47, scope: !961)
!963 = !DILocation(line: 280, column: 50, scope: !961)
!964 = !DILocation(line: 283, column: 38, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !1, line: 282, column: 12)
!966 = !DILocation(line: 280, column: 12, scope: !219)
!967 = !DILocation(line: 281, column: 72, scope: !961)
!968 = !DILocation(line: 281, column: 5, scope: !961)
!969 = !DILocation(line: 283, column: 5, scope: !965)
!970 = !DILocation(line: 285, column: 24, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 285, column: 3)
!972 = distinct !DILexicalBlock(scope: !219, file: !1, line: 285, column: 3)
!973 = !{!455, !305, i64 208}
!974 = !DILocation(line: 285, column: 17, scope: !971)
!975 = !DILocation(line: 285, column: 3, scope: !972)
!976 = !DILocation(line: 286, column: 40, scope: !971)
!977 = !DILocation(line: 286, column: 56, scope: !971)
!978 = !{!455, !302, i64 192}
!979 = !DILocation(line: 286, column: 35, scope: !971)
!980 = !{!455, !302, i64 200}
!981 = !DILocation(line: 286, column: 51, scope: !971)
!982 = !DILocation(line: 286, column: 5, scope: !971)
!983 = !DILocation(line: 287, column: 3, scope: !219)
!984 = !DILocation(line: 292, column: 12, scope: !985)
!985 = distinct !DILexicalBlock(scope: !219, file: !1, line: 292, column: 7)
!986 = !DILocation(line: 292, column: 18, scope: !985)
!987 = !DILocation(line: 292, column: 7, scope: !219)
!988 = !DILocation(line: 294, column: 28, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 294, column: 7)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 294, column: 7)
!991 = distinct !DILexicalBlock(scope: !985, file: !1, line: 293, column: 5)
!992 = !DILocation(line: 294, column: 21, scope: !989)
!993 = !DILocation(line: 294, column: 7, scope: !990)
!994 = !DILocation(line: 295, column: 69, scope: !989)
!995 = !DILocation(line: 295, column: 85, scope: !989)
!996 = !DILocation(line: 295, column: 64, scope: !989)
!997 = !DILocation(line: 295, column: 80, scope: !989)
!998 = !DILocation(line: 295, column: 2, scope: !989)
!999 = !DILocation(line: 296, column: 7, scope: !991)
!1000 = !DILocation(line: 297, column: 5, scope: !991)
!1001 = !DILocation(line: 298, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !219, file: !1, line: 298, column: 7)
!1003 = !{!455, !302, i64 96}
!1004 = !DILocation(line: 298, column: 18, scope: !1002)
!1005 = !DILocation(line: 298, column: 7, scope: !219)
!1006 = !DILocation(line: 300, column: 28, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 300, column: 7)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 300, column: 7)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 299, column: 5)
!1010 = !DILocation(line: 300, column: 21, scope: !1007)
!1011 = !DILocation(line: 300, column: 7, scope: !1008)
!1012 = !DILocation(line: 302, column: 69, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 301, column: 6)
!1014 = !DILocation(line: 301, column: 11, scope: !1013)
!1015 = !DILocation(line: 301, column: 6, scope: !1013)
!1016 = !DILocation(line: 301, column: 20, scope: !1013)
!1017 = !DILocation(line: 301, column: 6, scope: !1007)
!1018 = !DILocation(line: 302, column: 64, scope: !1013)
!1019 = !DILocation(line: 302, column: 4, scope: !1013)
!1020 = !DILocation(line: 303, column: 7, scope: !1009)
!1021 = !DILocation(line: 304, column: 5, scope: !1009)
!1022 = !DILocation(line: 305, column: 12, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !219, file: !1, line: 305, column: 7)
!1024 = !{!455, !302, i64 104}
!1025 = !DILocation(line: 305, column: 19, scope: !1023)
!1026 = !DILocation(line: 305, column: 7, scope: !219)
!1027 = !DILocation(line: 307, column: 28, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 307, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 307, column: 7)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 306, column: 5)
!1031 = !DILocation(line: 307, column: 21, scope: !1028)
!1032 = !DILocation(line: 307, column: 7, scope: !1029)
!1033 = !DILocation(line: 309, column: 68, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 308, column: 6)
!1035 = !DILocation(line: 308, column: 11, scope: !1034)
!1036 = !DILocation(line: 308, column: 6, scope: !1034)
!1037 = !DILocation(line: 308, column: 21, scope: !1034)
!1038 = !DILocation(line: 308, column: 6, scope: !1028)
!1039 = !DILocation(line: 309, column: 63, scope: !1034)
!1040 = !DILocation(line: 309, column: 4, scope: !1034)
!1041 = !DILocation(line: 310, column: 7, scope: !1030)
!1042 = !DILocation(line: 311, column: 5, scope: !1030)
!1043 = !DILocation(line: 312, column: 24, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 312, column: 3)
!1045 = distinct !DILexicalBlock(scope: !219, file: !1, line: 312, column: 3)
!1046 = !{!455, !305, i64 240}
!1047 = !DILocation(line: 312, column: 17, scope: !1044)
!1048 = !DILocation(line: 312, column: 3, scope: !1045)
!1049 = !DILocation(line: 322, column: 11, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 322, column: 6)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 321, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 321, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 313, column: 5)
!1054 = !DILocation(line: 327, column: 14, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 323, column: 4)
!1056 = !DILocation(line: 327, column: 30, scope: !1055)
!1057 = !DILocation(line: 321, column: 28, scope: !1051)
!1058 = !DILocation(line: 321, column: 21, scope: !1051)
!1059 = !DILocation(line: 321, column: 7, scope: !1052)
!1060 = !DILocation(line: 335, column: 36, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 335, column: 3)
!1062 = distinct !DILexicalBlock(scope: !219, file: !1, line: 335, column: 3)
!1063 = !{!455, !305, i64 24}
!1064 = !DILocation(line: 335, column: 29, scope: !1061)
!1065 = !DILocation(line: 335, column: 3, scope: !1062)
!1066 = !DILocation(line: 376, column: 2, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 375, column: 28)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 375, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 336, column: 5)
!1070 = !DILocation(line: 377, column: 2, scope: !1067)
!1071 = !DILocation(line: 378, column: 43, scope: !1067)
!1072 = !DILocation(line: 381, column: 2, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 380, column: 38)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 380, column: 7)
!1075 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 380, column: 7)
!1076 = !DILocation(line: 384, column: 8, scope: !1073)
!1077 = !DILocation(line: 340, column: 4, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 339, column: 2)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 338, column: 7)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 338, column: 7)
!1081 = !DILocation(line: 342, column: 41, scope: !1078)
!1082 = !DILocation(line: 342, column: 51, scope: !1078)
!1083 = !DILocation(line: 343, column: 10, scope: !1078)
!1084 = !DILocation(line: 356, column: 15, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 356, column: 10)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 355, column: 4)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 355, column: 4)
!1088 = !DILocation(line: 360, column: 52, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 356, column: 33)
!1090 = !{!455, !302, i64 224}
!1091 = !DILocation(line: 322, column: 6, scope: !1050)
!1092 = !DILocation(line: 322, column: 20, scope: !1050)
!1093 = !DILocation(line: 322, column: 6, scope: !1051)
!1094 = !DILocation(line: 225, column: 9, scope: !219)
!1095 = !DILocation(line: 324, column: 8, scope: !1055)
!1096 = !DILocation(line: 325, column: 20, scope: !1055)
!1097 = !DILocation(line: 225, column: 13, scope: !219)
!1098 = !DILocation(line: 325, column: 48, scope: !1055)
!1099 = !DILocation(line: 325, column: 6, scope: !1055)
!1100 = !DILocation(line: 327, column: 9, scope: !1055)
!1101 = !{!455, !302, i64 216}
!1102 = !DILocation(line: 327, column: 25, scope: !1055)
!1103 = !DILocation(line: 326, column: 8, scope: !1055)
!1104 = !DILocation(line: 329, column: 7, scope: !1053)
!1105 = !DILocation(line: 337, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 337, column: 11)
!1107 = !DILocation(line: 337, column: 11, scope: !1069)
!1108 = !DILocation(line: 337, column: 24, scope: !1106)
!1109 = !DILocation(line: 338, column: 28, scope: !1079)
!1110 = !DILocation(line: 338, column: 21, scope: !1079)
!1111 = !DILocation(line: 338, column: 7, scope: !1080)
!1112 = !DILocation(line: 341, column: 13, scope: !1078)
!1113 = !DILocation(line: 343, column: 5, scope: !1078)
!1114 = !DILocation(line: 342, column: 4, scope: !1078)
!1115 = !DILocation(line: 345, column: 13, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 345, column: 8)
!1117 = !DILocation(line: 345, column: 16, scope: !1116)
!1118 = !DILocation(line: 345, column: 24, scope: !1116)
!1119 = !DILocation(line: 345, column: 27, scope: !1116)
!1120 = !DILocation(line: 345, column: 38, scope: !1116)
!1121 = !DILocation(line: 345, column: 8, scope: !1078)
!1122 = !DILocation(line: 346, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 345, column: 47)
!1124 = !DILocation(line: 347, column: 15, scope: !1123)
!1125 = !DILocation(line: 348, column: 72, scope: !1123)
!1126 = !DILocation(line: 348, column: 67, scope: !1123)
!1127 = !DILocation(line: 348, column: 6, scope: !1123)
!1128 = !DILocation(line: 349, column: 4, scope: !1123)
!1129 = !DILocation(line: 350, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 350, column: 8)
!1131 = !DILocation(line: 350, column: 16, scope: !1130)
!1132 = !DILocation(line: 350, column: 24, scope: !1130)
!1133 = !DILocation(line: 350, column: 27, scope: !1130)
!1134 = !DILocation(line: 350, column: 38, scope: !1130)
!1135 = !DILocation(line: 350, column: 8, scope: !1078)
!1136 = !DILocation(line: 351, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 350, column: 47)
!1138 = !DILocation(line: 352, column: 15, scope: !1137)
!1139 = !DILocation(line: 353, column: 72, scope: !1137)
!1140 = !DILocation(line: 353, column: 67, scope: !1137)
!1141 = !DILocation(line: 353, column: 6, scope: !1137)
!1142 = !DILocation(line: 354, column: 4, scope: !1137)
!1143 = !DILocation(line: 355, column: 25, scope: !1086)
!1144 = !DILocation(line: 355, column: 18, scope: !1086)
!1145 = !DILocation(line: 355, column: 4, scope: !1087)
!1146 = !{!455, !302, i64 288}
!1147 = !DILocation(line: 356, column: 10, scope: !1085)
!1148 = !DILocation(line: 356, column: 24, scope: !1085)
!1149 = !DILocation(line: 356, column: 10, scope: !1086)
!1150 = !DILocation(line: 357, column: 8, scope: !1089)
!1151 = !DILocation(line: 358, column: 17, scope: !1089)
!1152 = !DILocation(line: 360, column: 36, scope: !1089)
!1153 = !DILocation(line: 360, column: 31, scope: !1089)
!1154 = !DILocation(line: 360, column: 47, scope: !1089)
!1155 = !DILocation(line: 359, column: 8, scope: !1089)
!1156 = !DILocation(line: 361, column: 6, scope: !1089)
!1157 = !DILocation(line: 363, column: 16, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 363, column: 11)
!1159 = !DILocation(line: 363, column: 24, scope: !1158)
!1160 = !DILocation(line: 363, column: 11, scope: !1069)
!1161 = !DILocation(line: 364, column: 2, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 363, column: 33)
!1163 = !DILocation(line: 365, column: 11, scope: !1162)
!1164 = !DILocation(line: 366, column: 2, scope: !1162)
!1165 = !DILocation(line: 367, column: 7, scope: !1162)
!1166 = !DILocation(line: 369, column: 16, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 369, column: 11)
!1168 = !DILocation(line: 369, column: 24, scope: !1167)
!1169 = !DILocation(line: 369, column: 11, scope: !1069)
!1170 = !DILocation(line: 370, column: 2, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 369, column: 33)
!1172 = !DILocation(line: 371, column: 11, scope: !1171)
!1173 = !DILocation(line: 372, column: 2, scope: !1171)
!1174 = !DILocation(line: 373, column: 7, scope: !1171)
!1175 = !DILocation(line: 375, column: 16, scope: !1068)
!1176 = !DILocation(line: 375, column: 19, scope: !1068)
!1177 = !DILocation(line: 375, column: 11, scope: !1069)
!1178 = !DILocation(line: 377, column: 11, scope: !1067)
!1179 = !DILocation(line: 378, column: 2, scope: !1067)
!1180 = !DILocation(line: 379, column: 7, scope: !1067)
!1181 = !DILocation(line: 380, column: 28, scope: !1074)
!1182 = !DILocation(line: 380, column: 21, scope: !1074)
!1183 = !DILocation(line: 380, column: 7, scope: !1075)
!1184 = !{!455, !302, i64 256}
!1185 = !DILocation(line: 382, column: 11, scope: !1073)
!1186 = !DILocation(line: 384, column: 3, scope: !1073)
!1187 = !DILocation(line: 383, column: 2, scope: !1073)
!1188 = !DILocation(line: 387, column: 3, scope: !219)
!1189 = !DILocation(line: 388, column: 3, scope: !219)
!1190 = !DILocation(line: 389, column: 1, scope: !219)
!1191 = !DILocation(line: 195, column: 30, scope: !215)
!1192 = !DILocation(line: 195, column: 39, scope: !215)
!1193 = !DILocation(line: 197, column: 42, scope: !215)
!1194 = !DILocation(line: 197, column: 3, scope: !215)
!1195 = !DILocation(line: 198, column: 1, scope: !215)
