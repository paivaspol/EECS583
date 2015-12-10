; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/selex.c'
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
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.block_struc = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file\00", align 1
@squid_errno = external global i32
@.str1 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@commentsyms = internal global [3 x i8] c"%#\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/selex.c\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"#=SA\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"Parse error in ReadSELEX()\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str14 = private unnamed_addr constant [40 x i8] c"Parse error in #=GA line in ReadSELEX()\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"Parse error in #=TC line in ReadSELEX()\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str18 = private unnamed_addr constant [40 x i8] c"Parse error in #=NC line in ReadSELEX()\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str20 = private unnamed_addr constant [40 x i8] c"Parse error in #=SQ line in ReadSELEX()\00", align 1
@.str21 = private unnamed_addr constant [64 x i8] c"Parse error in #=SQ line in ReadSELEX(): weight is not a number\00", align 1
@.str22 = private unnamed_addr constant [57 x i8] c"Parse error in #=SQ line in ReadSELEX(): incomplete line\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c":\09 \00", align 1
@.str25 = private unnamed_addr constant [40 x i8] c"Parse error in #=CS line in ReadSELEX()\00", align 1
@.str26 = private unnamed_addr constant [40 x i8] c"Parse error in #=RF line in ReadSELEX()\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"Parse error in #=SS line in ReadSELEX()\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"Parse error in #=SA line in ReadSELEX()\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"#=\00", align 1
@.str30 = private unnamed_addr constant [45 x i8] c"Parse error in alignment line in ReadSELEX()\00", align 1
@.str31 = private unnamed_addr constant [54 x i8] c"sequences may be in different orders in blocks of %s?\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"#=ID %s\0A\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"#=AC %s\0A\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"#=DE %s\0A\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"#=AU %s\0A\00", align 1
@.str38 = private unnamed_addr constant [16 x i8] c"#=GA %.1f %.1f\0A\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"#=GA %.1f\0A\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"#=NC %.1f %.1f\0A\00", align 1
@.str41 = private unnamed_addr constant [11 x i8] c"#=NC %.1f\0A\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"#=TC %.1f %.1f\0A\00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"#=TC %.1f\0A\00", align 1
@.str44 = private unnamed_addr constant [39 x i8] c"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\0A\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str46 = private unnamed_addr constant [11 x i8] c"%-*.*s %s\0A\00", align 1
@.str47 = private unnamed_addr constant [73 x i8] c"TAB characters will corrupt a SELEX alignment! Please remove them first.\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* nocapture readonly %afp) #0 {
  %buffer = alloca [4096 x i8], align 16
  %bufcpy = alloca [4096 x i8], align 16
  %base_ainfo = alloca %struct.aliinfo_s, align 8
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !206, metadata !350), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !350), !dbg !352
  %1 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0, !dbg !353
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2, !dbg !353
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buffer, metadata !211, metadata !350), !dbg !354
  %2 = getelementptr inbounds [4096 x i8]* %bufcpy, i64 0, i64 0, !dbg !355
  call void @llvm.lifetime.start(i64 4096, i8* %2) #2, !dbg !355
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %bufcpy, metadata !215, metadata !350), !dbg !356
  tail call void @llvm.dbg.value(metadata %struct.block_struc* null, i64 0, metadata !216, metadata !350), !dbg !357
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !350), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !230, metadata !350), !dbg !359
  %3 = bitcast %struct.aliinfo_s* %base_ainfo to i8*, !dbg !360
  call void @llvm.lifetime.start(i64 104, i8* %3) #2, !dbg !360
  %4 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !361
  %5 = load %struct.__sFILE** %4, align 8, !dbg !361, !tbaa !363
  %6 = tail call i32 @feof(%struct.__sFILE* %5) #7, !dbg !369
  %7 = icmp eq i32 %6, 0, !dbg !369
  br i1 %7, label %8, label %621, !dbg !370

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6, !dbg !371
  %10 = load i32* %9, align 4, !dbg !371, !tbaa !373
  %11 = icmp eq i32 %10, 0, !dbg !374
  br i1 %11, label %12, label %16, !dbg !375

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7, !dbg !376
  %14 = load i32* %13, align 4, !dbg !376, !tbaa !377
  %15 = icmp eq i32 %14, 0, !dbg !378
  br i1 %15, label %17, label %16, !dbg !379

; <label>:16                                      ; preds = %12, %8
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0)) #7, !dbg !380
  br label %17, !dbg !380

; <label>:17                                      ; preds = %12, %16
  %18 = load %struct.__sFILE** %4, align 8, !dbg !381, !tbaa !363
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %18, i64 0, metadata !208, metadata !350), !dbg !382
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %base_ainfo, i64 0, metadata !273, metadata !350), !dbg !383
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %base_ainfo, i64 0, metadata !231, metadata !350), !dbg !384
  call void @InitAinfo(%struct.aliinfo_s* %base_ainfo) #7, !dbg !385
  %19 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !386
  %20 = icmp eq i8* %19, null, !dbg !389
  br i1 %20, label %.critedge._crit_edge, label %.lr.ph89, !dbg !390

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %17
  store i32 2, i32* @squid_errno, align 4, !dbg !391, !tbaa !393
  br label %621, !dbg !394

.lr.ph89:                                         ; preds = %17, %.critedge.backedge
  %have_rf.087 = phi i32 [ %have_rf.1, %.critedge.backedge ], [ 0, %17 ]
  %have_cs.086 = phi i32 [ %have_cs.1, %.critedge.backedge ], [ 0, %17 ]
  %21 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !395
  %22 = load i8* %1, align 16, !dbg !396, !tbaa !398
  %23 = icmp eq i8 %22, 35, !dbg !399
  br i1 %23, label %24, label %30, !dbg !400

; <label>:24                                      ; preds = %.lr.ph89
  %25 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7, !dbg !401
  %26 = icmp eq i32 %25, 0, !dbg !404
  br i1 %26, label %30, label %27, !dbg !405

; <label>:27                                      ; preds = %24
  %28 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7, !dbg !406
  %29 = icmp eq i32 %28, 0, !dbg !408
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !230, metadata !350), !dbg !359
  %.have_rf.0 = select i1 %29, i32 1, i32 %have_rf.087, !dbg !409
  br label %30, !dbg !409

; <label>:30                                      ; preds = %27, %24, %.lr.ph89
  %have_cs.1 = phi i32 [ %have_cs.086, %.lr.ph89 ], [ 1, %24 ], [ %have_cs.086, %27 ]
  %have_rf.1 = phi i32 [ %have_rf.087, %.lr.ph89 ], [ %have_rf.087, %24 ], [ %.have_rf.0, %27 ]
  %31 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !410
  call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !218, metadata !350), !dbg !411
  %32 = icmp eq i8* %31, null, !dbg !412
  br i1 %32, label %.critedge.backedge, label %35, !dbg !413

.critedge.backedge:                               ; preds = %30, %35
  %33 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !386
  %34 = icmp eq i8* %33, null, !dbg !389
  br i1 %34, label %.critedge._crit_edge, label %.lr.ph89, !dbg !390

; <label>:35                                      ; preds = %30
  %36 = load i8* %31, align 1, !dbg !414, !tbaa !398
  %37 = sext i8 %36 to i32, !dbg !414
  %38 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %37) #7, !dbg !415
  %39 = icmp eq i8* %38, null, !dbg !416
  br i1 %39, label %.preheader16, label %.critedge.backedge, !dbg !417

.preheader16:                                     ; preds = %35
  %40 = call i32 @feof(%struct.__sFILE* %18) #7, !dbg !418
  %41 = icmp eq i32 %40, 0, !dbg !419
  br i1 %41, label %.lr.ph79, label %._crit_edge54, !dbg !420

.lr.ph79:                                         ; preds = %.preheader16
  %42 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !421
  %43 = bitcast %struct.seqinfo_s** %42 to i8**, !dbg !427
  %44 = ptrtoint [4096 x i8]* %bufcpy to i64, !dbg !428
  %45 = ptrtoint [4096 x i8]* %buffer to i64, !dbg !432
  br label %51, !dbg !420

.loopexit15:                                      ; preds = %.critedge1.backedge, %158, %150
  %nptr.0.ph = phi i8* [ null, %150 ], [ null, %.critedge1.backedge ], [ %154, %158 ]
  %46 = call i32 @feof(%struct.__sFILE* %18) #7, !dbg !418
  %47 = icmp eq i32 %46, 0, !dbg !419
  br i1 %47, label %51, label %.preheader12, !dbg !420

.preheader12:                                     ; preds = %.loopexit15
  %48 = trunc i64 %indvars.iv.next133 to i32, !dbg !420
  %49 = icmp sgt i32 %48, 0, !dbg !434
  br i1 %49, label %.lr.ph53, label %._crit_edge54, !dbg !437

.lr.ph53:                                         ; preds = %.preheader12
  %50 = add i32 %48, -1, !dbg !437
  br label %163, !dbg !437

; <label>:51                                      ; preds = %.lr.ph79, %.loopexit15
  %indvars.iv132 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next133, %.loopexit15 ]
  %have_rf.278 = phi i32 [ %have_rf.1, %.lr.ph79 ], [ %have_rf.3.lcssa, %.loopexit15 ]
  %have_cs.277 = phi i32 [ %have_cs.1, %.lr.ph79 ], [ %have_cs.3.lcssa, %.loopexit15 ]
  %warn_names.076 = phi i32 [ 0, %.lr.ph79 ], [ %warn_names.1.lcssa, %.loopexit15 ]
  %nptr.075 = phi i8* [ %31, %.lr.ph79 ], [ %nptr.0.ph, %.loopexit15 ]
  %blocks.073 = phi %struct.block_struc* [ null, %.lr.ph79 ], [ %blocks.1, %.loopexit15 ]
  %num.072 = phi i32 [ 0, %.lr.ph79 ], [ %num.1, %.loopexit15 ]
  %52 = trunc i64 %indvars.iv132 to i32, !dbg !438
  %53 = icmp eq i32 %52, 0, !dbg !438
  br i1 %53, label %54, label %56, !dbg !440

; <label>:54                                      ; preds = %51
  %55 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 151, i64 8) #7, !dbg !441
  br label %61, !dbg !442

; <label>:56                                      ; preds = %51
  %57 = bitcast %struct.block_struc* %blocks.073 to i8*, !dbg !443
  %58 = shl i64 %indvars.iv132, 3, !dbg !443
  %59 = add i64 %58, 8, !dbg !443
  %60 = call i8* @sre_realloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 153, i8* %57, i64 %59) #7, !dbg !443
  br label %61

; <label>:61                                      ; preds = %56, %54
  %blocks.1.in = phi i8* [ %55, %54 ], [ %60, %56 ]
  %blocks.1 = bitcast i8* %blocks.1.in to %struct.block_struc*, !dbg !444
  %62 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv132, i32 0, !dbg !445
  store i32 4097, i32* %62, align 4, !dbg !446, !tbaa !447
  %63 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv132, i32 1, !dbg !449
  store i32 -1, i32* %63, align 4, !dbg !450, !tbaa !451
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !220, metadata !350), !dbg !452
  %64 = icmp eq i8* %nptr.075, null, !dbg !453
  br i1 %64, label %146, label %.lr.ph62, !dbg !454

.lr.ph62:                                         ; preds = %140, %61
  %indvars.iv130 = phi i64 [ 0, %61 ], [ %indvars.iv.next131, %140 ]
  %have_rf.360 = phi i32 [ %have_rf.278, %61 ], [ %have_rf.5, %140 ]
  %have_cs.359 = phi i32 [ %have_cs.277, %61 ], [ %have_cs.5, %140 ]
  %warn_names.158 = phi i32 [ %warn_names.076, %61 ], [ %warn_names.2, %140 ]
  %nptr.156 = phi i8* [ %nptr.075, %61 ], [ %138, %140 ]
  br i1 %53, label %65, label %80, !dbg !455

; <label>:65                                      ; preds = %.lr.ph62
  %66 = trunc i64 %indvars.iv130 to i32, !dbg !456
  %67 = icmp eq i32 %66, 0, !dbg !456
  br i1 %67, label %68, label %70, !dbg !457

; <label>:68                                      ; preds = %65
  %69 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 164, i64 360) #7, !dbg !458
  br label %75, !dbg !459

; <label>:70                                      ; preds = %65
  %71 = load i8** %43, align 8, !dbg !460, !tbaa !461
  %72 = mul i64 %indvars.iv130, 360, !dbg !460
  %73 = add i64 %72, 360, !dbg !460
  %74 = call i8* @sre_realloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 166, i8* %71, i64 %73) #7, !dbg !460
  br label %75

; <label>:75                                      ; preds = %70, %68
  %storemerge = phi i8* [ %74, %70 ], [ %69, %68 ]
  %76 = bitcast i8* %storemerge to %struct.seqinfo_s*
  store i8* %storemerge, i8** %43, align 8, !dbg !427, !tbaa !461
  %77 = getelementptr inbounds %struct.seqinfo_s* %76, i64 %indvars.iv130, i32 0, !dbg !464
  store i32 0, i32* %77, align 4, !dbg !465, !tbaa !466
  %78 = getelementptr inbounds %struct.seqinfo_s* %76, i64 %indvars.iv130, !dbg !468
  %79 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %78, i8* %nptr.156, i32 1) #7, !dbg !469
  br label %85, !dbg !470

; <label>:80                                      ; preds = %.lr.ph62
  %81 = load %struct.seqinfo_s** %42, align 8, !dbg !471, !tbaa !461
  %82 = getelementptr inbounds %struct.seqinfo_s* %81, i64 %indvars.iv130, i32 1, i64 0, !dbg !474
  %83 = call i32 @strcmp(i8* %82, i8* %nptr.156) #7, !dbg !475
  %84 = icmp eq i32 %83, 0, !dbg !476
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !225, metadata !350), !dbg !477
  %warn_names.1. = select i1 %84, i32 %warn_names.158, i32 1, !dbg !478
  br label %85, !dbg !478

; <label>:85                                      ; preds = %80, %75
  %warn_names.2 = phi i32 [ %warn_names.158, %75 ], [ %warn_names.1., %80 ]
  %indvars.iv.next131 = add nuw i64 %indvars.iv130, 1, !dbg !454
  %86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !479
  call void @llvm.dbg.value(metadata i8* %86, i64 0, metadata !219, metadata !350), !dbg !480
  %87 = icmp eq i8* %86, null, !dbg !481
  br i1 %87, label %.preheader13, label %88, !dbg !482

; <label>:88                                      ; preds = %85
  %89 = ptrtoint i8* %86 to i64, !dbg !428
  %90 = sub i64 %89, %44, !dbg !428
  %91 = load i32* %62, align 4, !dbg !483, !tbaa !447
  %92 = sext i32 %91 to i64, !dbg !484
  %93 = icmp slt i64 %90, %92, !dbg !485
  br i1 %93, label %94, label %96, !dbg !486

; <label>:94                                      ; preds = %88
  %95 = trunc i64 %90 to i32, !dbg !487
  store i32 %95, i32* %62, align 4, !dbg !488, !tbaa !447
  br label %96, !dbg !489

; <label>:96                                      ; preds = %94, %88
  %97 = call i64 @strlen(i8* %1) #7, !dbg !490
  %.sum = add i64 %97, -1, !dbg !492
  %98 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 %.sum, !dbg !492
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !219, metadata !350), !dbg !480
  br label %99, !dbg !493

; <label>:99                                      ; preds = %99, %96
  %sptr.0 = phi i8* [ %98, %96 ], [ %103, %99 ]
  %100 = load i8* %sptr.0, align 1, !dbg !494, !tbaa !398
  %101 = sext i8 %100 to i32, !dbg !494
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %101, i64 4), !dbg !496
  %102 = icmp eq i8* %memchr, null, !dbg !497
  %103 = getelementptr inbounds i8* %sptr.0, i64 -1, !dbg !498
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !219, metadata !350), !dbg !480
  br i1 %102, label %104, label %99, !dbg !499

; <label>:104                                     ; preds = %99
  %105 = ptrtoint i8* %sptr.0 to i64, !dbg !432
  %106 = sub i64 %105, %45, !dbg !432
  %107 = load i32* %63, align 4, !dbg !500, !tbaa !451
  %108 = sext i32 %107 to i64, !dbg !501
  %109 = icmp sgt i64 %106, %108, !dbg !502
  br i1 %109, label %110, label %.preheader13, !dbg !503

; <label>:110                                     ; preds = %104
  %111 = trunc i64 %106 to i32, !dbg !504
  store i32 %111, i32* %63, align 4, !dbg !505, !tbaa !451
  br label %.preheader13, !dbg !506

.preheader13:                                     ; preds = %85, %110, %104, %140
  %have_cs.4 = phi i32 [ %have_cs.5, %140 ], [ %have_cs.359, %104 ], [ %have_cs.359, %110 ], [ %have_cs.359, %85 ]
  %have_rf.4 = phi i32 [ %have_rf.5, %140 ], [ %have_rf.360, %104 ], [ %have_rf.360, %110 ], [ %have_rf.360, %85 ]
  %112 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !507
  %113 = icmp eq i8* %112, null, !dbg !510
  br i1 %113, label %._crit_edge63, label %114, !dbg !511

; <label>:114                                     ; preds = %.preheader13
  %115 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !512
  %116 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #7, !dbg !513
  %117 = icmp eq i32 %116, 0, !dbg !515
  br i1 %117, label %118, label %123, !dbg !516

; <label>:118                                     ; preds = %114
  %119 = load %struct.seqinfo_s** %42, align 8, !dbg !517, !tbaa !461
  %120 = getelementptr inbounds %struct.seqinfo_s* %119, i64 %indvars.iv130, i32 0, !dbg !518
  %121 = load i32* %120, align 4, !dbg !519, !tbaa !466
  %122 = or i32 %121, 512, !dbg !519
  store i32 %122, i32* %120, align 4, !dbg !519, !tbaa !466
  br label %137, !dbg !520

; <label>:123                                     ; preds = %114
  %124 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #7, !dbg !521
  %125 = icmp eq i32 %124, 0, !dbg !523
  br i1 %125, label %126, label %131, !dbg !524

; <label>:126                                     ; preds = %123
  %127 = load %struct.seqinfo_s** %42, align 8, !dbg !525, !tbaa !461
  %128 = getelementptr inbounds %struct.seqinfo_s* %127, i64 %indvars.iv130, i32 0, !dbg !526
  %129 = load i32* %128, align 4, !dbg !527, !tbaa !466
  %130 = or i32 %129, 1024, !dbg !527
  store i32 %130, i32* %128, align 4, !dbg !527, !tbaa !466
  br label %137, !dbg !528

; <label>:131                                     ; preds = %123
  %132 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7, !dbg !529
  %133 = icmp eq i32 %132, 0, !dbg !531
  br i1 %133, label %137, label %134, !dbg !532

; <label>:134                                     ; preds = %131
  %135 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7, !dbg !533
  %136 = icmp eq i32 %135, 0, !dbg !535
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !230, metadata !350), !dbg !359
  %.have_rf.4 = select i1 %136, i32 1, i32 %have_rf.4, !dbg !536
  br label %137, !dbg !536

; <label>:137                                     ; preds = %134, %131, %126, %118
  %have_cs.5 = phi i32 [ %have_cs.4, %118 ], [ %have_cs.4, %126 ], [ 1, %131 ], [ %have_cs.4, %134 ]
  %have_rf.5 = phi i32 [ %have_rf.4, %118 ], [ %have_rf.4, %126 ], [ %have_rf.4, %131 ], [ %.have_rf.4, %134 ]
  %138 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !537
  call void @llvm.dbg.value(metadata i8* %138, i64 0, metadata !218, metadata !350), !dbg !411
  %139 = icmp eq i8* %138, null, !dbg !539
  br i1 %139, label %._crit_edge63, label %140, !dbg !540

; <label>:140                                     ; preds = %137
  %141 = load i8* %138, align 1, !dbg !541, !tbaa !398
  %142 = sext i8 %141 to i32, !dbg !541
  %143 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %142) #7, !dbg !542
  %144 = icmp eq i8* %143, null, !dbg !543
  br i1 %144, label %.lr.ph62, label %.preheader13, !dbg !544

._crit_edge63:                                    ; preds = %.preheader13, %137
  %have_cs.3.ph.ph = phi i32 [ %have_cs.5, %137 ], [ %have_cs.4, %.preheader13 ]
  %have_rf.3.ph.ph = phi i32 [ %have_rf.5, %137 ], [ %have_rf.4, %.preheader13 ]
  %145 = trunc i64 %indvars.iv.next131 to i32, !dbg !454
  br label %146, !dbg !454

; <label>:146                                     ; preds = %._crit_edge63, %61
  %have_rf.3.lcssa = phi i32 [ %have_rf.3.ph.ph, %._crit_edge63 ], [ %have_rf.278, %61 ]
  %have_cs.3.lcssa = phi i32 [ %have_cs.3.ph.ph, %._crit_edge63 ], [ %have_cs.277, %61 ]
  %warn_names.1.lcssa = phi i32 [ %warn_names.2, %._crit_edge63 ], [ %warn_names.076, %61 ]
  %currnum.0.lcssa = phi i32 [ %145, %._crit_edge63 ], [ 0, %61 ]
  br i1 %53, label %150, label %147, !dbg !545

; <label>:147                                     ; preds = %146
  %148 = icmp eq i32 %currnum.0.lcssa, %num.072, !dbg !546
  br i1 %148, label %150, label %149, !dbg !549

; <label>:149                                     ; preds = %147
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !550
  br label %150, !dbg !550

; <label>:150                                     ; preds = %146, %147, %149
  %num.1 = phi i32 [ %num.072, %149 ], [ %num.072, %147 ], [ %currnum.0.lcssa, %146 ]
  %indvars.iv.next133 = add nuw i64 %indvars.iv132, 1, !dbg !420
  %151 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !551
  %152 = icmp eq i8* %151, null, !dbg !554
  br i1 %152, label %.loopexit15, label %.lr.ph69, !dbg !555

.lr.ph69:                                         ; preds = %150, %.critedge1.backedge
  %153 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !556
  %154 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !557
  call void @llvm.dbg.value(metadata i8* %154, i64 0, metadata !218, metadata !350), !dbg !411
  %155 = icmp eq i8* %154, null, !dbg !558
  br i1 %155, label %.critedge1.backedge, label %158, !dbg !559

.critedge1.backedge:                              ; preds = %.lr.ph69, %158
  %156 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !551
  %157 = icmp eq i8* %156, null, !dbg !554
  br i1 %157, label %.loopexit15, label %.lr.ph69, !dbg !555

; <label>:158                                     ; preds = %.lr.ph69
  %159 = load i8* %154, align 1, !dbg !560, !tbaa !398
  %160 = sext i8 %159 to i32, !dbg !560
  %161 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %160) #7, !dbg !561
  %162 = icmp eq i8* %161, null, !dbg !562
  br i1 %162, label %.loopexit15, label %.critedge1.backedge, !dbg !563

; <label>:163                                     ; preds = %163, %.lr.ph53
  %indvars.iv126 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next127, %163 ]
  %alen.052 = phi i32 [ 0, %.lr.ph53 ], [ %170, %163 ]
  %164 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv126, i32 1, !dbg !564
  %165 = load i32* %164, align 4, !dbg !564, !tbaa !451
  %166 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv126, i32 0, !dbg !565
  %167 = load i32* %166, align 4, !dbg !565, !tbaa !447
  %168 = add i32 %alen.052, 1, !dbg !566
  %169 = add i32 %168, %165, !dbg !567
  %170 = sub i32 %169, %167, !dbg !568
  call void @llvm.dbg.value(metadata i32 %170, i64 0, metadata !224, metadata !350), !dbg !569
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1, !dbg !437
  %lftr.wideiv128 = trunc i64 %indvars.iv126 to i32, !dbg !437
  %exitcond129 = icmp eq i32 %lftr.wideiv128, %50, !dbg !437
  br i1 %exitcond129, label %._crit_edge54, label %163, !dbg !437

._crit_edge54:                                    ; preds = %163, %.preheader16, %.preheader12
  %171 = phi i1 [ false, %.preheader12 ], [ false, %.preheader16 ], [ %49, %163 ]
  %num.0.lcssa150 = phi i32 [ %num.1, %.preheader12 ], [ 0, %.preheader16 ], [ %num.1, %163 ]
  %blocks.0.lcssa148 = phi %struct.block_struc* [ %blocks.1, %.preheader12 ], [ null, %.preheader16 ], [ %blocks.1, %163 ]
  %blocknum.0.lcssa147 = phi i32 [ %48, %.preheader12 ], [ 0, %.preheader16 ], [ %48, %163 ]
  %warn_names.0.lcssa146 = phi i32 [ %warn_names.1.lcssa, %.preheader12 ], [ 0, %.preheader16 ], [ %warn_names.1.lcssa, %163 ]
  %have_cs.2.lcssa145 = phi i32 [ %have_cs.3.lcssa, %.preheader12 ], [ %have_cs.1, %.preheader16 ], [ %have_cs.3.lcssa, %163 ]
  %have_rf.2.lcssa144 = phi i32 [ %have_rf.3.lcssa, %.preheader12 ], [ %have_rf.1, %.preheader16 ], [ %have_rf.3.lcssa, %163 ]
  %alen.0.lcssa = phi i32 [ 0, %.preheader12 ], [ 0, %.preheader16 ], [ %170, %163 ]
  call void @rewind(%struct.__sFILE* %18) #7, !dbg !570
  %172 = sext i32 %num.0.lcssa150 to i64, !dbg !571
  %173 = shl nsw i64 %172, 3, !dbg !571
  %174 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 247, i64 %173) #7, !dbg !571
  %175 = bitcast i8* %174 to i8**, !dbg !572
  call void @llvm.dbg.value(metadata i8** %175, i64 0, metadata !209, metadata !350), !dbg !573
  %176 = icmp eq i32 %have_cs.2.lcssa145, 0, !dbg !574
  br i1 %176, label %182, label %177, !dbg !576

; <label>:177                                     ; preds = %._crit_edge54
  %178 = add nsw i32 %alen.0.lcssa, 1, !dbg !577
  %179 = sext i32 %178 to i64, !dbg !577
  %180 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 249, i64 %179) #7, !dbg !577
  %181 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !578
  store i8* %180, i8** %181, align 8, !dbg !579, !tbaa !580
  br label %182, !dbg !581

; <label>:182                                     ; preds = %._crit_edge54, %177
  %183 = icmp eq i32 %have_rf.2.lcssa144, 0, !dbg !582
  br i1 %183, label %.preheader11, label %184, !dbg !584

; <label>:184                                     ; preds = %182
  %185 = add nsw i32 %alen.0.lcssa, 1, !dbg !585
  %186 = sext i32 %185 to i64, !dbg !585
  %187 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 251, i64 %186) #7, !dbg !585
  %188 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !586
  store i8* %187, i8** %188, align 8, !dbg !587, !tbaa !588
  br label %.preheader11, !dbg !589

.preheader11:                                     ; preds = %182, %184
  %189 = icmp sgt i32 %num.0.lcssa150, 0, !dbg !590
  br i1 %189, label %.lr.ph49, label %.preheader11._crit_edge, !dbg !593

.preheader11._crit_edge:                          ; preds = %.preheader11
  %.pre139 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !594
  br label %._crit_edge50, !dbg !593

.lr.ph49:                                         ; preds = %.preheader11
  %190 = add nsw i32 %alen.0.lcssa, 1, !dbg !608
  %191 = sext i32 %190 to i64, !dbg !608
  %192 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !610
  %193 = add i32 %num.0.lcssa150, -1, !dbg !593
  br label %194, !dbg !593

; <label>:194                                     ; preds = %214, %.lr.ph49
  %indvars.iv122 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next123, %214 ]
  %195 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 257, i64 %191) #7, !dbg !608
  %196 = getelementptr inbounds i8** %175, i64 %indvars.iv122, !dbg !612
  store i8* %195, i8** %196, align 8, !dbg !613, !tbaa !614
  %197 = load %struct.seqinfo_s** %192, align 8, !dbg !610, !tbaa !461
  %198 = getelementptr inbounds %struct.seqinfo_s* %197, i64 %indvars.iv122, i32 0, !dbg !615
  %199 = load i32* %198, align 4, !dbg !615, !tbaa !466
  %200 = and i32 %199, 512, !dbg !616
  %201 = icmp eq i32 %200, 0, !dbg !616
  br i1 %201, label %206, label %202, !dbg !617

; <label>:202                                     ; preds = %194
  %203 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 259, i64 %191) #7, !dbg !618
  %204 = load %struct.seqinfo_s** %192, align 8, !dbg !619, !tbaa !461
  %205 = getelementptr inbounds %struct.seqinfo_s* %204, i64 %indvars.iv122, i32 10, !dbg !620
  store i8* %203, i8** %205, align 8, !dbg !621, !tbaa !622
  %.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %204, i64 %indvars.iv122, i32 0
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !623, !tbaa !466
  br label %206, !dbg !625

; <label>:206                                     ; preds = %194, %202
  %207 = phi i32 [ %199, %194 ], [ %.pre, %202 ]
  %208 = and i32 %207, 1024, !dbg !626
  %209 = icmp eq i32 %208, 0, !dbg !626
  br i1 %209, label %214, label %210, !dbg !627

; <label>:210                                     ; preds = %206
  %211 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 261, i64 %191) #7, !dbg !628
  %212 = load %struct.seqinfo_s** %192, align 8, !dbg !629, !tbaa !461
  %213 = getelementptr inbounds %struct.seqinfo_s* %212, i64 %indvars.iv122, i32 11, !dbg !630
  store i8* %211, i8** %213, align 8, !dbg !631, !tbaa !632
  br label %214, !dbg !633

; <label>:214                                     ; preds = %206, %210
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1, !dbg !593
  %lftr.wideiv124 = trunc i64 %indvars.iv122 to i32, !dbg !593
  %exitcond125 = icmp eq i32 %lftr.wideiv124, %193, !dbg !593
  br i1 %exitcond125, label %._crit_edge50, label %194, !dbg !593

._crit_edge50:                                    ; preds = %214, %.preheader11._crit_edge
  %.pre-phi = phi %struct.seqinfo_s** [ %.pre139, %.preheader11._crit_edge ], [ %192, %214 ], !dbg !594
  %215 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 1, !dbg !634
  store i32 %alen.0.lcssa, i32* %215, align 4, !dbg !635, !tbaa !636
  %216 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 2, !dbg !637
  store i32 %num.0.lcssa150, i32* %216, align 8, !dbg !638, !tbaa !639
  %217 = shl nsw i64 %172, 2, !dbg !640
  %218 = call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 266, i64 %217) #7, !dbg !640
  %219 = bitcast i8* %218 to float*, !dbg !641
  %220 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 3, !dbg !642
  %221 = bitcast float** %220 to i8**, !dbg !643
  store i8* %218, i8** %221, align 8, !dbg !643, !tbaa !644
  call void @FSet(float* %219, i32 %num.0.lcssa150, float 1.000000e+00) #7, !dbg !645
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !350), !dbg !646
  %222 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 10, !dbg !647
  %223 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 7, !dbg !648
  %224 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 9, !dbg !649
  %225 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 8, !dbg !650
  %226 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 15, !dbg !651
  %227 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 16, !dbg !653
  %228 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 0, !dbg !654
  %229 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 11, !dbg !655
  %230 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 12, !dbg !657
  %231 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 13, !dbg !658
  %232 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 14, !dbg !660
  br label %.backedge10, !dbg !661

.backedge10:                                      ; preds = %246, %262, %285, %321, %400, %392, %303, %270, %254, %236, %._crit_edge50
  %warn_names.3 = phi i32 [ %warn_names.0.lcssa146, %._crit_edge50 ], [ %warn_names.3, %236 ], [ %warn_names.3, %246 ], [ %warn_names.3, %254 ], [ %warn_names.3, %262 ], [ %warn_names.3, %270 ], [ %warn_names.3, %285 ], [ %warn_names.3, %303 ], [ %warn_names.3, %321 ], [ %warn_names.3., %392 ], [ %warn_names.3, %400 ]
  %headnum.0 = phi i32 [ 0, %._crit_edge50 ], [ %headnum.0, %236 ], [ %headnum.0, %246 ], [ %headnum.0, %254 ], [ %headnum.0, %262 ], [ %headnum.0, %270 ], [ %headnum.0, %285 ], [ %headnum.0, %303 ], [ %headnum.0, %321 ], [ %393, %392 ], [ %headnum.0, %400 ]
  %233 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !662
  %234 = icmp eq i8* %233, null, !dbg !664
  br i1 %234, label %235, label %236, !dbg !665

; <label>:235                                     ; preds = %.backedge10
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !666
  br label %236, !dbg !666

; <label>:236                                     ; preds = %235, %.backedge10
  %237 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !667
  %238 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !668
  call void @llvm.dbg.value(metadata i8* %238, i64 0, metadata !218, metadata !350), !dbg !411
  %239 = icmp eq i8* %238, null, !dbg !670
  br i1 %239, label %.backedge10, label %240, !dbg !671

; <label>:240                                     ; preds = %236
  %241 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !672
  %242 = icmp eq i32 %241, 0, !dbg !673
  br i1 %242, label %243, label %248, !dbg !674

; <label>:243                                     ; preds = %240
  %244 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !675
  call void @llvm.dbg.value(metadata i8* %244, i64 0, metadata !219, metadata !350), !dbg !480
  %245 = icmp eq i8* %244, null, !dbg !676
  br i1 %245, label %248, label %246, !dbg !677

; <label>:246                                     ; preds = %243
  %247 = call i8* @Strdup(i8* %244) #7, !dbg !678
  store i8* %247, i8** %222, align 8, !dbg !679, !tbaa !680
  br label %.backedge10, !dbg !681

; <label>:248                                     ; preds = %243, %240
  %249 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !682
  %250 = icmp eq i32 %249, 0, !dbg !683
  br i1 %250, label %251, label %256, !dbg !684

; <label>:251                                     ; preds = %248
  %252 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !685
  call void @llvm.dbg.value(metadata i8* %252, i64 0, metadata !219, metadata !350), !dbg !480
  %253 = icmp eq i8* %252, null, !dbg !686
  br i1 %253, label %256, label %254, !dbg !687

; <label>:254                                     ; preds = %251
  %255 = call i8* @Strdup(i8* %252) #7, !dbg !688
  store i8* %255, i8** %223, align 8, !dbg !689, !tbaa !690
  br label %.backedge10, !dbg !691

; <label>:256                                     ; preds = %251, %248
  %257 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !692
  %258 = icmp eq i32 %257, 0, !dbg !693
  br i1 %258, label %259, label %264, !dbg !694

; <label>:259                                     ; preds = %256
  %260 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !695
  call void @llvm.dbg.value(metadata i8* %260, i64 0, metadata !219, metadata !350), !dbg !480
  %261 = icmp eq i8* %260, null, !dbg !696
  br i1 %261, label %264, label %262, !dbg !697

; <label>:262                                     ; preds = %259
  %263 = call i8* @Strdup(i8* %260) #7, !dbg !698
  store i8* %263, i8** %224, align 8, !dbg !699, !tbaa !700
  br label %.backedge10, !dbg !701

; <label>:264                                     ; preds = %259, %256
  %265 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !702
  %266 = icmp eq i32 %265, 0, !dbg !703
  br i1 %266, label %267, label %272, !dbg !704

; <label>:267                                     ; preds = %264
  %268 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !705
  call void @llvm.dbg.value(metadata i8* %268, i64 0, metadata !219, metadata !350), !dbg !480
  %269 = icmp eq i8* %268, null, !dbg !706
  br i1 %269, label %272, label %270, !dbg !707

; <label>:270                                     ; preds = %267
  %271 = call i8* @Strdup(i8* %268) #7, !dbg !708
  store i8* %271, i8** %225, align 8, !dbg !709, !tbaa !710
  br label %.backedge10, !dbg !711

; <label>:272                                     ; preds = %267, %264
  %273 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !712
  %274 = icmp eq i32 %273, 0, !dbg !713
  br i1 %274, label %275, label %290, !dbg !714

; <label>:275                                     ; preds = %272
  %276 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !715
  call void @llvm.dbg.value(metadata i8* %276, i64 0, metadata !219, metadata !350), !dbg !480
  %277 = icmp eq i8* %276, null, !dbg !717
  br i1 %277, label %278, label %279, !dbg !718

; <label>:278                                     ; preds = %275
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !719
  br label %279, !dbg !719

; <label>:279                                     ; preds = %278, %275
  %280 = call double @atof(i8* %276) #7, !dbg !720
  %281 = fptrunc double %280 to float, !dbg !720
  store float %281, float* %226, align 8, !dbg !721, !tbaa !722
  %282 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !723
  call void @llvm.dbg.value(metadata i8* %282, i64 0, metadata !219, metadata !350), !dbg !480
  %283 = icmp eq i8* %282, null, !dbg !725
  br i1 %283, label %284, label %285, !dbg !726

; <label>:284                                     ; preds = %279
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !727
  br label %285, !dbg !727

; <label>:285                                     ; preds = %284, %279
  %286 = call double @atof(i8* %282) #7, !dbg !728
  %287 = fptrunc double %286 to float, !dbg !728
  store float %287, float* %227, align 4, !dbg !729, !tbaa !730
  %288 = load i32* %228, align 8, !dbg !731, !tbaa !732
  %289 = or i32 %288, 4, !dbg !731
  store i32 %289, i32* %228, align 8, !dbg !731, !tbaa !732
  br label %.backedge10, !dbg !733

; <label>:290                                     ; preds = %272
  %291 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !734
  %292 = icmp eq i32 %291, 0, !dbg !735
  br i1 %292, label %293, label %308, !dbg !736

; <label>:293                                     ; preds = %290
  %294 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !737
  call void @llvm.dbg.value(metadata i8* %294, i64 0, metadata !219, metadata !350), !dbg !480
  %295 = icmp eq i8* %294, null, !dbg !739
  br i1 %295, label %296, label %297, !dbg !740

; <label>:296                                     ; preds = %293
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !741
  br label %297, !dbg !741

; <label>:297                                     ; preds = %296, %293
  %298 = call double @atof(i8* %294) #7, !dbg !742
  %299 = fptrunc double %298 to float, !dbg !742
  store float %299, float* %229, align 8, !dbg !743, !tbaa !744
  %300 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !745
  call void @llvm.dbg.value(metadata i8* %300, i64 0, metadata !219, metadata !350), !dbg !480
  %301 = icmp eq i8* %300, null, !dbg !747
  br i1 %301, label %302, label %303, !dbg !748

; <label>:302                                     ; preds = %297
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !749
  br label %303, !dbg !749

; <label>:303                                     ; preds = %302, %297
  %304 = call double @atof(i8* %300) #7, !dbg !750
  %305 = fptrunc double %304 to float, !dbg !750
  store float %305, float* %230, align 4, !dbg !751, !tbaa !752
  %306 = load i32* %228, align 8, !dbg !753, !tbaa !732
  %307 = or i32 %306, 1, !dbg !753
  store i32 %307, i32* %228, align 8, !dbg !753, !tbaa !732
  br label %.backedge10, !dbg !754

; <label>:308                                     ; preds = %290
  %309 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !755
  %310 = icmp eq i32 %309, 0, !dbg !756
  br i1 %310, label %311, label %326, !dbg !757

; <label>:311                                     ; preds = %308
  %312 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !758
  call void @llvm.dbg.value(metadata i8* %312, i64 0, metadata !219, metadata !350), !dbg !480
  %313 = icmp eq i8* %312, null, !dbg !760
  br i1 %313, label %314, label %315, !dbg !761

; <label>:314                                     ; preds = %311
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !762
  br label %315, !dbg !762

; <label>:315                                     ; preds = %314, %311
  %316 = call double @atof(i8* %312) #7, !dbg !763
  %317 = fptrunc double %316 to float, !dbg !763
  store float %317, float* %231, align 8, !dbg !764, !tbaa !765
  %318 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !766
  call void @llvm.dbg.value(metadata i8* %318, i64 0, metadata !219, metadata !350), !dbg !480
  %319 = icmp eq i8* %318, null, !dbg !768
  br i1 %319, label %320, label %321, !dbg !769

; <label>:320                                     ; preds = %315
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !770
  br label %321, !dbg !770

; <label>:321                                     ; preds = %320, %315
  %322 = call double @atof(i8* %318) #7, !dbg !771
  %323 = fptrunc double %322 to float, !dbg !771
  store float %323, float* %232, align 4, !dbg !772, !tbaa !773
  %324 = load i32* %228, align 8, !dbg !774, !tbaa !732
  %325 = or i32 %324, 2, !dbg !774
  store i32 %325, i32* %228, align 8, !dbg !774, !tbaa !732
  br label %.backedge10, !dbg !775

; <label>:326                                     ; preds = %308
  %327 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !776
  %328 = icmp eq i32 %327, 0, !dbg !777
  br i1 %328, label %329, label %394, !dbg !778

; <label>:329                                     ; preds = %326
  %330 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !779
  call void @llvm.dbg.value(metadata i8* %330, i64 0, metadata !219, metadata !350), !dbg !480
  %331 = icmp eq i8* %330, null, !dbg !781
  br i1 %331, label %332, label %333, !dbg !782

; <label>:332                                     ; preds = %329
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !783
  br label %333, !dbg !783

; <label>:333                                     ; preds = %332, %329
  %334 = sext i32 %headnum.0 to i64, !dbg !784
  %335 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !594, !tbaa !461
  %336 = getelementptr inbounds %struct.seqinfo_s* %335, i64 %334, i32 1, i64 0, !dbg !784
  %337 = call i32 @strcmp(i8* %330, i8* %336) #7, !dbg !785
  %338 = icmp eq i32 %337, 0, !dbg !786
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !225, metadata !350), !dbg !477
  %warn_names.3. = select i1 %338, i32 %warn_names.3, i32 1, !dbg !787
  %339 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !788
  call void @llvm.dbg.value(metadata i8* %339, i64 0, metadata !219, metadata !350), !dbg !480
  %340 = icmp eq i8* %339, null, !dbg !790
  br i1 %340, label %341, label %342, !dbg !791

; <label>:341                                     ; preds = %333
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !792
  br label %342, !dbg !792

; <label>:342                                     ; preds = %341, %333
  %343 = call i32 @IsReal(i8* %339) #7, !dbg !793
  %344 = icmp eq i32 %343, 0, !dbg !793
  br i1 %344, label %345, label %346, !dbg !795

; <label>:345                                     ; preds = %342
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !796
  br label %346, !dbg !796

; <label>:346                                     ; preds = %342, %345
  %347 = call double @atof(i8* %339) #7, !dbg !797
  %348 = fptrunc double %347 to float, !dbg !797
  %349 = load float** %220, align 8, !dbg !798, !tbaa !644
  %350 = getelementptr inbounds float* %349, i64 %334, !dbg !799
  store float %348, float* %350, align 4, !dbg !800, !tbaa !801
  %351 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !802
  call void @llvm.dbg.value(metadata i8* %351, i64 0, metadata !219, metadata !350), !dbg !480
  %352 = icmp eq i8* %351, null, !dbg !804
  br i1 %352, label %353, label %354, !dbg !805

; <label>:353                                     ; preds = %346
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !806
  br label %354, !dbg !806

; <label>:354                                     ; preds = %353, %346
  %355 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !807, !tbaa !461
  %356 = getelementptr inbounds %struct.seqinfo_s* %355, i64 %334, !dbg !808
  %357 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %356, i8* %351, i32 2) #7, !dbg !809
  %358 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !810
  call void @llvm.dbg.value(metadata i8* %358, i64 0, metadata !219, metadata !350), !dbg !480
  %359 = icmp eq i8* %358, null, !dbg !812
  br i1 %359, label %360, label %361, !dbg !813

; <label>:360                                     ; preds = %354
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !814
  br label %361, !dbg !814

; <label>:361                                     ; preds = %360, %354
  %362 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !815, !tbaa !461
  %363 = getelementptr inbounds %struct.seqinfo_s* %362, i64 %334, !dbg !816
  %364 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %363, i8* %358, i32 4) #7, !dbg !817
  %365 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !818
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !219, metadata !350), !dbg !480
  %366 = icmp eq i8* %365, null, !dbg !820
  br i1 %366, label %367, label %368, !dbg !821

; <label>:367                                     ; preds = %361
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !822
  br label %368, !dbg !822

; <label>:368                                     ; preds = %367, %361
  %369 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !823, !tbaa !461
  %370 = getelementptr inbounds %struct.seqinfo_s* %369, i64 %334, !dbg !824
  %371 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %370, i8* %365, i32 16) #7, !dbg !825
  %372 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !826
  call void @llvm.dbg.value(metadata i8* %372, i64 0, metadata !219, metadata !350), !dbg !480
  %373 = icmp eq i8* %372, null, !dbg !828
  br i1 %373, label %374, label %375, !dbg !829

; <label>:374                                     ; preds = %368
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !830
  br label %375, !dbg !830

; <label>:375                                     ; preds = %374, %368
  %376 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !831, !tbaa !461
  %377 = getelementptr inbounds %struct.seqinfo_s* %376, i64 %334, !dbg !832
  %378 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %377, i8* %372, i32 32) #7, !dbg !833
  %379 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0)) #7, !dbg !834
  call void @llvm.dbg.value(metadata i8* %379, i64 0, metadata !219, metadata !350), !dbg !480
  %380 = icmp eq i8* %379, null, !dbg !836
  br i1 %380, label %381, label %382, !dbg !837

; <label>:381                                     ; preds = %375
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !838
  br label %382, !dbg !838

; <label>:382                                     ; preds = %381, %375
  %383 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !839, !tbaa !461
  %384 = getelementptr inbounds %struct.seqinfo_s* %383, i64 %334, !dbg !840
  %385 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %384, i8* %379, i32 256) #7, !dbg !841
  %386 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !842
  call void @llvm.dbg.value(metadata i8* %386, i64 0, metadata !219, metadata !350), !dbg !480
  %387 = icmp eq i8* %386, null, !dbg !844
  br i1 %387, label %392, label %388, !dbg !845

; <label>:388                                     ; preds = %382
  %389 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !846, !tbaa !461
  %390 = getelementptr inbounds %struct.seqinfo_s* %389, i64 %334, !dbg !847
  %391 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %390, i8* %386, i32 8) #7, !dbg !848
  br label %392, !dbg !848

; <label>:392                                     ; preds = %382, %388
  %393 = add nsw i32 %headnum.0, 1, !dbg !849
  call void @llvm.dbg.value(metadata i32 %393, i64 0, metadata !226, metadata !350), !dbg !646
  br label %.backedge10, !dbg !850

; <label>:394                                     ; preds = %326
  %395 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !851
  %396 = icmp eq i32 %395, 0, !dbg !853
  br i1 %396, label %.preheader9, label %397, !dbg !854

; <label>:397                                     ; preds = %394
  %398 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !855
  %399 = icmp eq i32 %398, 0, !dbg !857
  br i1 %399, label %.preheader9, label %400, !dbg !858

; <label>:400                                     ; preds = %397
  %401 = load i8* %238, align 1, !dbg !859, !tbaa !398
  %402 = sext i8 %401 to i32, !dbg !859
  %403 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %402) #7, !dbg !861
  %404 = icmp eq i8* %403, null, !dbg !862
  br i1 %404, label %.preheader9, label %.backedge10, !dbg !863

.preheader9:                                      ; preds = %400, %397, %394
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !223, metadata !350), !dbg !864
  br i1 %171, label %.preheader8.lr.ph, label %.preheader6, !dbg !865

.preheader8.lr.ph:                                ; preds = %.preheader9
  %405 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !867
  %406 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !874
  %407 = add i32 %blocknum.0.lcssa147, -1, !dbg !865
  br label %.preheader8, !dbg !865

.preheader8:                                      ; preds = %._crit_edge39, %.preheader8.lr.ph
  %indvars.iv118 = phi i64 [ 0, %.preheader8.lr.ph ], [ %indvars.iv.next119, %._crit_edge39 ]
  %currlen.047 = phi i32 [ 0, %.preheader8.lr.ph ], [ %509, %._crit_edge39 ]
  %nptr.245 = phi i8* [ %238, %.preheader8.lr.ph ], [ %nptr.5, %._crit_edge39 ]
  %408 = icmp eq i8* %nptr.245, null, !dbg !878
  br i1 %408, label %.preheader8._crit_edge, label %.lr.ph35, !dbg !879

.preheader8._crit_edge:                           ; preds = %.preheader8
  %.pre140 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa148, i64 %indvars.iv118, i32 1, !dbg !880
  %.pre142 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa148, i64 %indvars.iv118, i32 0, !dbg !881
  br label %._crit_edge36, !dbg !879

.lr.ph35:                                         ; preds = %.preheader8
  %409 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa148, i64 %indvars.iv118, i32 0, !dbg !882
  %410 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa148, i64 %indvars.iv118, i32 1, !dbg !883
  br label %.loopexit.thread155, !dbg !879

.preheader6:                                      ; preds = %._crit_edge39, %.preheader9
  br i1 %189, label %.lr.ph31, label %._crit_edge32, !dbg !884

.lr.ph31:                                         ; preds = %.preheader6
  %411 = icmp sgt i32 %alen.0.lcssa, 0, !dbg !885
  %412 = add i32 %alen.0.lcssa, -1, !dbg !884
  %413 = add i32 %num.0.lcssa150, -1, !dbg !884
  br label %525, !dbg !884

.loopexit.thread155:                              ; preds = %497, %500, %.lr.ph35
  %seqidx.034 = phi i32 [ 0, %.lr.ph35 ], [ %seqidx.1.ph, %500 ], [ %seqidx.1.ph, %497 ]
  %nptr.333 = phi i8* [ %nptr.245, %.lr.ph35 ], [ %495, %500 ], [ %495, %497 ]
  %414 = call i32 @strcmp(i8* %nptr.333, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !890
  %415 = icmp eq i32 %414, 0, !dbg !891
  br i1 %415, label %416, label %426, !dbg !892

; <label>:416                                     ; preds = %.loopexit.thread155
  %417 = load i8** %405, align 8, !dbg !867, !tbaa !580
  %418 = call i64 @strlen(i8* %nptr.333) #7, !dbg !893
  %419 = add i64 %418, 4294967295, !dbg !894
  %420 = trunc i64 %419 to i32, !dbg !893
  %421 = load i32* %409, align 4, !dbg !882, !tbaa !447
  %422 = load i32* %410, align 4, !dbg !883, !tbaa !451
  %423 = call fastcc i32 @copy_alignment_line(i8* %417, i32 %currlen.047, i32 %420, i8* %1, i32 %421, i32 %422) #8, !dbg !895
  %424 = icmp eq i32 %423, 0, !dbg !895
  br i1 %424, label %425, label %.preheader7, !dbg !896

; <label>:425                                     ; preds = %416
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !897
  br label %.preheader7, !dbg !897

; <label>:426                                     ; preds = %.loopexit.thread155
  %427 = call i32 @strcmp(i8* %nptr.333, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !898
  %428 = icmp eq i32 %427, 0, !dbg !899
  br i1 %428, label %429, label %439, !dbg !900

; <label>:429                                     ; preds = %426
  %430 = load i8** %406, align 8, !dbg !874, !tbaa !588
  %431 = call i64 @strlen(i8* %nptr.333) #7, !dbg !901
  %432 = add i64 %431, 4294967295, !dbg !902
  %433 = trunc i64 %432 to i32, !dbg !901
  %434 = load i32* %409, align 4, !dbg !903, !tbaa !447
  %435 = load i32* %410, align 4, !dbg !904, !tbaa !451
  %436 = call fastcc i32 @copy_alignment_line(i8* %430, i32 %currlen.047, i32 %433, i8* %1, i32 %434, i32 %435) #8, !dbg !905
  %437 = icmp eq i32 %436, 0, !dbg !905
  br i1 %437, label %438, label %.preheader7, !dbg !906

; <label>:438                                     ; preds = %429
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !907
  br label %.preheader7, !dbg !907

; <label>:439                                     ; preds = %426
  %440 = call i32 @strcmp(i8* %nptr.333, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !908
  %441 = icmp eq i32 %440, 0, !dbg !910
  br i1 %441, label %442, label %456, !dbg !911

; <label>:442                                     ; preds = %439
  %443 = add nsw i32 %seqidx.034, -1, !dbg !912
  %444 = sext i32 %443 to i64, !dbg !915
  %445 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !916, !tbaa !461
  %446 = getelementptr inbounds %struct.seqinfo_s* %445, i64 %444, i32 10, !dbg !917
  %447 = load i8** %446, align 8, !dbg !917, !tbaa !622
  %448 = call i64 @strlen(i8* %nptr.333) #7, !dbg !918
  %449 = add i64 %448, 4294967295, !dbg !919
  %450 = trunc i64 %449 to i32, !dbg !918
  %451 = load i32* %409, align 4, !dbg !920, !tbaa !447
  %452 = load i32* %410, align 4, !dbg !921, !tbaa !451
  %453 = call fastcc i32 @copy_alignment_line(i8* %447, i32 %currlen.047, i32 %450, i8* %1, i32 %451, i32 %452) #8, !dbg !922
  %454 = icmp eq i32 %453, 0, !dbg !922
  br i1 %454, label %455, label %.preheader7, !dbg !923

; <label>:455                                     ; preds = %442
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0)) #7, !dbg !924
  br label %.preheader7, !dbg !924

; <label>:456                                     ; preds = %439
  %457 = call i32 @strcmp(i8* %nptr.333, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !925
  %458 = icmp eq i32 %457, 0, !dbg !927
  br i1 %458, label %459, label %473, !dbg !928

; <label>:459                                     ; preds = %456
  %460 = add nsw i32 %seqidx.034, -1, !dbg !929
  %461 = sext i32 %460 to i64, !dbg !932
  %462 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !933, !tbaa !461
  %463 = getelementptr inbounds %struct.seqinfo_s* %462, i64 %461, i32 11, !dbg !934
  %464 = load i8** %463, align 8, !dbg !934, !tbaa !632
  %465 = call i64 @strlen(i8* %nptr.333) #7, !dbg !935
  %466 = add i64 %465, 4294967295, !dbg !936
  %467 = trunc i64 %466 to i32, !dbg !935
  %468 = load i32* %409, align 4, !dbg !937, !tbaa !447
  %469 = load i32* %410, align 4, !dbg !938, !tbaa !451
  %470 = call fastcc i32 @copy_alignment_line(i8* %464, i32 %currlen.047, i32 %467, i8* %1, i32 %468, i32 %469) #8, !dbg !939
  %471 = icmp eq i32 %470, 0, !dbg !939
  br i1 %471, label %472, label %.preheader7, !dbg !940

; <label>:472                                     ; preds = %459
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !941
  br label %.preheader7, !dbg !941

; <label>:473                                     ; preds = %456
  %474 = call i32 @strncmp(i8* %nptr.333, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7, !dbg !942
  %475 = icmp eq i32 %474, 0, !dbg !944
  br i1 %475, label %.preheader7, label %476, !dbg !945

; <label>:476                                     ; preds = %473
  %477 = sext i32 %seqidx.034 to i64, !dbg !946
  %478 = getelementptr inbounds i8** %175, i64 %477, !dbg !946
  %479 = load i8** %478, align 8, !dbg !946, !tbaa !614
  %480 = call i64 @strlen(i8* %nptr.333) #7, !dbg !949
  %481 = add i64 %480, 4294967295, !dbg !950
  %482 = trunc i64 %481 to i32, !dbg !949
  %483 = load i32* %409, align 4, !dbg !951, !tbaa !447
  %484 = load i32* %410, align 4, !dbg !952, !tbaa !451
  %485 = call fastcc i32 @copy_alignment_line(i8* %479, i32 %currlen.047, i32 %482, i8* %1, i32 %483, i32 %484) #8, !dbg !953
  %486 = icmp eq i32 %485, 0, !dbg !953
  br i1 %486, label %487, label %488, !dbg !954

; <label>:487                                     ; preds = %476
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !955
  br label %488, !dbg !955

; <label>:488                                     ; preds = %476, %487
  %489 = add nsw i32 %seqidx.034, 1, !dbg !956
  call void @llvm.dbg.value(metadata i32 %489, i64 0, metadata !223, metadata !350), !dbg !864
  br label %.preheader7, !dbg !957

.preheader7:                                      ; preds = %438, %472, %488, %455, %425, %473, %459, %442, %429, %416
  %seqidx.1.ph = phi i32 [ %seqidx.034, %473 ], [ %489, %488 ], [ %seqidx.034, %472 ], [ %seqidx.034, %459 ], [ %seqidx.034, %455 ], [ %seqidx.034, %442 ], [ %seqidx.034, %438 ], [ %seqidx.034, %429 ], [ %seqidx.034, %425 ], [ %seqidx.034, %416 ]
  br label %490, !dbg !411

; <label>:490                                     ; preds = %.preheader7, %500
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !218, metadata !350), !dbg !411
  %491 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !958
  %492 = icmp eq i8* %491, null, !dbg !963
  br i1 %492, label %._crit_edge36, label %493, !dbg !964

; <label>:493                                     ; preds = %490
  %494 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !965
  %495 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !966
  call void @llvm.dbg.value(metadata i8* %495, i64 0, metadata !218, metadata !350), !dbg !411
  %496 = icmp eq i8* %495, null, !dbg !968
  br i1 %496, label %._crit_edge36, label %497, !dbg !969

; <label>:497                                     ; preds = %493
  %498 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7, !dbg !970
  %499 = icmp eq i32 %498, 0, !dbg !972
  br i1 %499, label %.loopexit.thread155, label %500, !dbg !973

; <label>:500                                     ; preds = %497
  %501 = load i8* %495, align 1, !dbg !974, !tbaa !398
  %502 = sext i8 %501 to i32, !dbg !974
  %503 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %502) #7, !dbg !976
  %504 = icmp eq i8* %503, null, !dbg !977
  br i1 %504, label %.loopexit.thread155, label %490, !dbg !978

._crit_edge36:                                    ; preds = %490, %493, %.preheader8._crit_edge
  %.pre-phi143 = phi i32* [ %.pre142, %.preheader8._crit_edge ], [ %409, %493 ], [ %409, %490 ], !dbg !881
  %.pre-phi141 = phi i32* [ %.pre140, %.preheader8._crit_edge ], [ %410, %493 ], [ %410, %490 ], !dbg !880
  %505 = load i32* %.pre-phi141, align 4, !dbg !880, !tbaa !451
  %506 = load i32* %.pre-phi143, align 4, !dbg !881, !tbaa !447
  %507 = add i32 %currlen.047, 1, !dbg !979
  %508 = add i32 %507, %505, !dbg !980
  %509 = sub i32 %508, %506, !dbg !981
  call void @llvm.dbg.value(metadata i32 %509, i64 0, metadata !227, metadata !350), !dbg !982
  %510 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !983
  %511 = icmp eq i8* %510, null, !dbg !988
  br i1 %511, label %._crit_edge39, label %.lr.ph38, !dbg !989

.lr.ph38:                                         ; preds = %._crit_edge36, %.backedge
  %512 = call i8* @__strcpy_chk(i8* %2, i8* %1, i64 4096) #7, !dbg !990
  %513 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !991
  call void @llvm.dbg.value(metadata i8* %513, i64 0, metadata !218, metadata !350), !dbg !411
  %514 = icmp eq i8* %513, null, !dbg !993
  br i1 %514, label %.backedge, label %517, !dbg !994

.backedge:                                        ; preds = %.lr.ph38, %520
  %nptr.4.be = phi i8* [ null, %.lr.ph38 ], [ %513, %520 ]
  %515 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %18) #7, !dbg !983
  %516 = icmp eq i8* %515, null, !dbg !988
  br i1 %516, label %._crit_edge39, label %.lr.ph38, !dbg !989

; <label>:517                                     ; preds = %.lr.ph38
  %518 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7, !dbg !995
  %519 = icmp eq i32 %518, 0, !dbg !997
  br i1 %519, label %._crit_edge39, label %520, !dbg !998

; <label>:520                                     ; preds = %517
  %521 = load i8* %513, align 1, !dbg !999, !tbaa !398
  %522 = sext i8 %521 to i32, !dbg !999
  %523 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %522) #7, !dbg !1001
  %524 = icmp eq i8* %523, null, !dbg !1002
  br i1 %524, label %._crit_edge39, label %.backedge, !dbg !1003

._crit_edge39:                                    ; preds = %520, %517, %.backedge, %._crit_edge36
  %nptr.5 = phi i8* [ null, %._crit_edge36 ], [ %513, %520 ], [ %513, %517 ], [ %nptr.4.be, %.backedge ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1, !dbg !865
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !223, metadata !350), !dbg !864
  %lftr.wideiv120 = trunc i64 %indvars.iv118 to i32, !dbg !865
  %exitcond121 = icmp eq i32 %lftr.wideiv120, %407, !dbg !865
  br i1 %exitcond121, label %.preheader6, label %.preheader8, !dbg !865

; <label>:525                                     ; preds = %578, %.lr.ph31
  %indvars.iv114 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next115, %578 ]
  %526 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1004, !tbaa !461
  %527 = getelementptr inbounds %struct.seqinfo_s* %526, i64 %indvars.iv114, i32 0, !dbg !1006
  %528 = load i32* %527, align 4, !dbg !1006, !tbaa !466
  %529 = and i32 %528, 512, !dbg !1007
  %530 = icmp eq i32 %529, 0, !dbg !1007
  br i1 %530, label %552, label %.preheader5, !dbg !1008

.preheader5:                                      ; preds = %525
  br i1 %411, label %.lr.ph23, label %546, !dbg !1009

.lr.ph23:                                         ; preds = %.preheader5
  %531 = getelementptr inbounds i8** %175, i64 %indvars.iv114, !dbg !1012
  br label %532, !dbg !1009

; <label>:532                                     ; preds = %545, %.lr.ph23
  %indvars.iv106 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next107, %545 ]
  %rpos.022 = phi i32 [ 0, %.lr.ph23 ], [ %rpos.1, %545 ]
  %533 = load i8** %531, align 8, !dbg !1012, !tbaa !614
  %534 = getelementptr inbounds i8* %533, i64 %indvars.iv106, !dbg !1012
  %535 = load i8* %534, align 1, !dbg !1012, !tbaa !398
  switch i8 %535, label %536 [
    i8 32, label %545
    i8 46, label %545
    i8 95, label %545
    i8 45, label %545
    i8 126, label %545
  ], !dbg !1012

; <label>:536                                     ; preds = %532
  %537 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1015, !tbaa !461
  %538 = getelementptr inbounds %struct.seqinfo_s* %537, i64 %indvars.iv114, i32 10, !dbg !1017
  %539 = load i8** %538, align 8, !dbg !1017, !tbaa !622
  %540 = getelementptr inbounds i8* %539, i64 %indvars.iv106, !dbg !1018
  %541 = load i8* %540, align 1, !dbg !1018, !tbaa !398
  %542 = sext i32 %rpos.022 to i64, !dbg !1019
  %543 = getelementptr inbounds i8* %539, i64 %542, !dbg !1019
  store i8 %541, i8* %543, align 1, !dbg !1020, !tbaa !398
  %544 = add nsw i32 %rpos.022, 1, !dbg !1021
  call void @llvm.dbg.value(metadata i32 %544, i64 0, metadata !279, metadata !350), !dbg !1022
  br label %545, !dbg !1023

; <label>:545                                     ; preds = %532, %532, %532, %532, %532, %536
  %rpos.1 = phi i32 [ %rpos.022, %532 ], [ %544, %536 ], [ %rpos.022, %532 ], [ %rpos.022, %532 ], [ %rpos.022, %532 ], [ %rpos.022, %532 ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1, !dbg !1009
  %lftr.wideiv108 = trunc i64 %indvars.iv106 to i32, !dbg !1009
  %exitcond109 = icmp eq i32 %lftr.wideiv108, %412, !dbg !1009
  br i1 %exitcond109, label %._crit_edge24, label %532, !dbg !1009

._crit_edge24:                                    ; preds = %545
  %.pre134 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1024, !tbaa !461
  br label %546, !dbg !1009

; <label>:546                                     ; preds = %._crit_edge24, %.preheader5
  %547 = phi %struct.seqinfo_s* [ %.pre134, %._crit_edge24 ], [ %526, %.preheader5 ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %._crit_edge24 ], [ 0, %.preheader5 ]
  %548 = sext i32 %rpos.0.lcssa to i64, !dbg !1025
  %549 = getelementptr inbounds %struct.seqinfo_s* %547, i64 %indvars.iv114, i32 10, !dbg !1026
  %550 = load i8** %549, align 8, !dbg !1026, !tbaa !622
  %551 = getelementptr inbounds i8* %550, i64 %548, !dbg !1025
  store i8 0, i8* %551, align 1, !dbg !1027, !tbaa !398
  %.pre135 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1028, !tbaa !461
  %.phi.trans.insert136 = getelementptr inbounds %struct.seqinfo_s* %.pre135, i64 %indvars.iv114, i32 0
  %.pre137 = load i32* %.phi.trans.insert136, align 4, !dbg !1029, !tbaa !466
  br label %552, !dbg !1030

; <label>:552                                     ; preds = %525, %546
  %553 = phi i32 [ %528, %525 ], [ %.pre137, %546 ]
  %554 = phi %struct.seqinfo_s* [ %526, %525 ], [ %.pre135, %546 ]
  %555 = and i32 %553, 1024, !dbg !1031
  %556 = icmp eq i32 %555, 0, !dbg !1031
  br i1 %556, label %578, label %.preheader4, !dbg !1032

.preheader4:                                      ; preds = %552
  br i1 %411, label %.lr.ph27, label %572, !dbg !1033

.lr.ph27:                                         ; preds = %.preheader4
  %557 = getelementptr inbounds i8** %175, i64 %indvars.iv114, !dbg !1034
  br label %558, !dbg !1033

; <label>:558                                     ; preds = %571, %.lr.ph27
  %indvars.iv110 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next111, %571 ]
  %rpos.226 = phi i32 [ 0, %.lr.ph27 ], [ %rpos.3, %571 ]
  %559 = load i8** %557, align 8, !dbg !1034, !tbaa !614
  %560 = getelementptr inbounds i8* %559, i64 %indvars.iv110, !dbg !1034
  %561 = load i8* %560, align 1, !dbg !1034, !tbaa !398
  switch i8 %561, label %562 [
    i8 32, label %571
    i8 46, label %571
    i8 95, label %571
    i8 45, label %571
    i8 126, label %571
  ], !dbg !1034

; <label>:562                                     ; preds = %558
  %563 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1036, !tbaa !461
  %564 = getelementptr inbounds %struct.seqinfo_s* %563, i64 %indvars.iv114, i32 11, !dbg !1038
  %565 = load i8** %564, align 8, !dbg !1038, !tbaa !632
  %566 = getelementptr inbounds i8* %565, i64 %indvars.iv110, !dbg !1039
  %567 = load i8* %566, align 1, !dbg !1039, !tbaa !398
  %568 = sext i32 %rpos.226 to i64, !dbg !1040
  %569 = getelementptr inbounds i8* %565, i64 %568, !dbg !1040
  store i8 %567, i8* %569, align 1, !dbg !1041, !tbaa !398
  %570 = add nsw i32 %rpos.226, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %570, i64 0, metadata !279, metadata !350), !dbg !1022
  br label %571, !dbg !1043

; <label>:571                                     ; preds = %558, %558, %558, %558, %558, %562
  %rpos.3 = phi i32 [ %rpos.226, %558 ], [ %570, %562 ], [ %rpos.226, %558 ], [ %rpos.226, %558 ], [ %rpos.226, %558 ], [ %rpos.226, %558 ]
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1, !dbg !1033
  %lftr.wideiv112 = trunc i64 %indvars.iv110 to i32, !dbg !1033
  %exitcond113 = icmp eq i32 %lftr.wideiv112, %412, !dbg !1033
  br i1 %exitcond113, label %._crit_edge28, label %558, !dbg !1033

._crit_edge28:                                    ; preds = %571
  %.pre138 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1044, !tbaa !461
  br label %572, !dbg !1033

; <label>:572                                     ; preds = %._crit_edge28, %.preheader4
  %573 = phi %struct.seqinfo_s* [ %.pre138, %._crit_edge28 ], [ %554, %.preheader4 ]
  %rpos.2.lcssa = phi i32 [ %rpos.3, %._crit_edge28 ], [ 0, %.preheader4 ]
  %574 = sext i32 %rpos.2.lcssa to i64, !dbg !1045
  %575 = getelementptr inbounds %struct.seqinfo_s* %573, i64 %indvars.iv114, i32 11, !dbg !1046
  %576 = load i8** %575, align 8, !dbg !1046, !tbaa !632
  %577 = getelementptr inbounds i8* %576, i64 %574, !dbg !1045
  store i8 0, i8* %577, align 1, !dbg !1047, !tbaa !398
  br label %578, !dbg !1048

; <label>:578                                     ; preds = %552, %572
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1, !dbg !884
  %lftr.wideiv116 = trunc i64 %indvars.iv114 to i32, !dbg !884
  %exitcond117 = icmp eq i32 %lftr.wideiv116, %413, !dbg !884
  br i1 %exitcond117, label %._crit_edge32, label %525, !dbg !884

._crit_edge32:                                    ; preds = %578, %.preheader6
  %579 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !1049
  %580 = load i8** %579, align 8, !dbg !1049, !tbaa !588
  %581 = icmp eq i8* %580, null, !dbg !1051
  br i1 %581, label %585, label %582, !dbg !1052

; <label>:582                                     ; preds = %._crit_edge32
  %583 = sext i32 %alen.0.lcssa to i64, !dbg !1053
  %584 = getelementptr inbounds i8* %580, i64 %583, !dbg !1053
  store i8 0, i8* %584, align 1, !dbg !1054, !tbaa !398
  br label %585, !dbg !1053

; <label>:585                                     ; preds = %._crit_edge32, %582
  %586 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !1055
  %587 = load i8** %586, align 8, !dbg !1055, !tbaa !580
  %588 = icmp eq i8* %587, null, !dbg !1057
  br i1 %588, label %.preheader3, label %589, !dbg !1058

; <label>:589                                     ; preds = %585
  %590 = sext i32 %alen.0.lcssa to i64, !dbg !1059
  %591 = getelementptr inbounds i8* %587, i64 %590, !dbg !1059
  store i8 0, i8* %591, align 1, !dbg !1060, !tbaa !398
  br label %.preheader3, !dbg !1059

.preheader3:                                      ; preds = %585, %589
  br i1 %189, label %.lr.ph20, label %._crit_edge, !dbg !1061

.lr.ph20:                                         ; preds = %.preheader3
  %592 = sext i32 %alen.0.lcssa to i64, !dbg !1063
  %593 = add i32 %num.0.lcssa150, -1, !dbg !1061
  br label %595, !dbg !1061

.preheader:                                       ; preds = %595
  br i1 %189, label %.lr.ph, label %._crit_edge, !dbg !1065

.lr.ph:                                           ; preds = %.preheader
  %594 = add i32 %num.0.lcssa150, -1, !dbg !1065
  br label %599, !dbg !1065

; <label>:595                                     ; preds = %595, %.lr.ph20
  %indvars.iv102 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next103, %595 ]
  %596 = getelementptr inbounds i8** %175, i64 %indvars.iv102, !dbg !1063
  %597 = load i8** %596, align 8, !dbg !1063, !tbaa !614
  %598 = getelementptr inbounds i8* %597, i64 %592, !dbg !1063
  store i8 0, i8* %598, align 1, !dbg !1067, !tbaa !398
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1, !dbg !1061
  %lftr.wideiv104 = trunc i64 %indvars.iv102 to i32, !dbg !1061
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %593, !dbg !1061
  br i1 %exitcond105, label %.preheader, label %595, !dbg !1061

; <label>:599                                     ; preds = %608, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %608 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !228, metadata !350), !dbg !1068
  %600 = getelementptr inbounds i8** %175, i64 %indvars.iv, !dbg !1069
  %601 = load i8** %600, align 8, !dbg !1069, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %601, i64 0, metadata !219, metadata !350), !dbg !480
  br label %602, !dbg !1073

; <label>:602                                     ; preds = %606, %599
  %sptr.1 = phi i8* [ %601, %599 ], [ %607, %606 ]
  %count.0 = phi i32 [ 0, %599 ], [ %count.1, %606 ]
  %603 = load i8* %sptr.1, align 1, !dbg !1074, !tbaa !398
  switch i8 %603, label %604 [
    i8 0, label %608
    i8 32, label %606
    i8 46, label %606
    i8 95, label %606
    i8 45, label %606
    i8 126, label %606
  ], !dbg !1076

; <label>:604                                     ; preds = %602
  %605 = add nsw i32 %count.0, 1, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %605, i64 0, metadata !228, metadata !350), !dbg !1068
  br label %606, !dbg !1079

; <label>:606                                     ; preds = %602, %602, %602, %602, %602, %604
  %count.1 = phi i32 [ %605, %604 ], [ %count.0, %602 ], [ %count.0, %602 ], [ %count.0, %602 ], [ %count.0, %602 ], [ %count.0, %602 ]
  %607 = getelementptr inbounds i8* %sptr.1, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata i8* %607, i64 0, metadata !219, metadata !350), !dbg !480
  br label %602, !dbg !1081

; <label>:608                                     ; preds = %602
  %609 = load %struct.seqinfo_s** %.pre-phi, align 8, !dbg !1082, !tbaa !461
  %610 = getelementptr inbounds %struct.seqinfo_s* %609, i64 %indvars.iv, i32 5, !dbg !1083
  store i32 %count.0, i32* %610, align 4, !dbg !1084, !tbaa !1085
  %611 = getelementptr inbounds %struct.seqinfo_s* %609, i64 %indvars.iv, i32 0, !dbg !1086
  %612 = load i32* %611, align 4, !dbg !1087, !tbaa !466
  %613 = or i32 %612, 64, !dbg !1087
  store i32 %613, i32* %611, align 4, !dbg !1087, !tbaa !466
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1065
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1065
  %exitcond = icmp eq i32 %lftr.wideiv, %594, !dbg !1065
  br i1 %exitcond, label %._crit_edge, label %599, !dbg !1065

._crit_edge:                                      ; preds = %608, %.preheader3, %.preheader
  %614 = bitcast %struct.block_struc* %blocks.0.lcssa148 to i8*, !dbg !1088
  call void @free(i8* %614) #8, !dbg !1089
  %615 = icmp eq i32 %warn_names.3, 0, !dbg !1090
  br i1 %615, label %619, label %616, !dbg !1092

; <label>:616                                     ; preds = %._crit_edge
  %617 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !1093
  %618 = load i8** %617, align 8, !dbg !1093, !tbaa !1094
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([54 x i8]* @.str31, i64 0, i64 0), i8* %618) #7, !dbg !1095
  br label %619, !dbg !1095

; <label>:619                                     ; preds = %._crit_edge, %616
  call void @llvm.dbg.value(metadata %struct.aliinfo_s* %base_ainfo, i64 0, metadata !231, metadata !350), !dbg !384
  %620 = call %struct.msa_struct* @MSAFromAINFO(i8** %175, %struct.aliinfo_s* %base_ainfo) #7, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.msa_struct* %620, i64 0, metadata !207, metadata !350), !dbg !1097
  call void @MSAVerifyParse(%struct.msa_struct* %620) #7, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.aliinfo_s* %base_ainfo, i64 0, metadata !231, metadata !350), !dbg !384
  call void @FreeAlignment(i8** %175, %struct.aliinfo_s* %base_ainfo) #7, !dbg !1099
  br label %621, !dbg !1100

; <label>:621                                     ; preds = %0, %619, %.critedge._crit_edge
  %.0 = phi %struct.msa_struct* [ null, %.critedge._crit_edge ], [ %620, %619 ], [ null, %0 ]
  call void @llvm.lifetime.end(i64 104, i8* %3) #2, !dbg !1101
  call void @llvm.lifetime.end(i64 4096, i8* %2) #2, !dbg !1101
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2, !dbg !1101
  ret %struct.msa_struct* %.0, !dbg !1101
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: optsize
declare void @InitAinfo(%struct.aliinfo_s*) #4

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #4

; Function Attrs: optsize
declare i32 @SetSeqinfoString(%struct.seqinfo_s*, i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare void @rewind(%struct.__sFILE* nocapture) #3

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare i8* @Strdup(i8*) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @IsReal(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @copy_alignment_line(i8* nocapture %aseq, i32 %apos, i32 %name_rcol, i8* nocapture readonly %buffer, i32 %lcol, i32 %rcol) #0 {
  tail call void @llvm.dbg.value(metadata i8 46, i64 0, metadata !339, metadata !350), !dbg !1102
  %1 = sext i32 %apos to i64, !dbg !1103
  %2 = getelementptr inbounds i8* %aseq, i64 %1, !dbg !1103
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !340, metadata !350), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !342, metadata !350), !dbg !1105
  %3 = icmp sgt i32 %lcol, 0, !dbg !1106
  br i1 %3, label %.lr.ph7, label %.preheader, !dbg !1109

.lr.ph7:                                          ; preds = %0
  %4 = add i32 %lcol, -1, !dbg !1109
  br label %6, !dbg !1109

.preheader:                                       ; preds = %6, %0
  %s2.0.lcssa = phi i8* [ %buffer, %0 ], [ %s2.0., %6 ]
  %5 = icmp sgt i32 %lcol, %rcol, !dbg !1110
  br i1 %5, label %.loopexit, label %.lr.ph, !dbg !1113

; <label>:6                                       ; preds = %6, %.lr.ph7
  %i.06 = phi i32 [ 0, %.lr.ph7 ], [ %10, %6 ]
  %s2.05 = phi i8* [ %buffer, %.lr.ph7 ], [ %s2.0., %6 ]
  %7 = load i8* %s2.05, align 1, !dbg !1114, !tbaa !398
  %8 = icmp eq i8 %7, 0, !dbg !1114
  %9 = getelementptr inbounds i8* %s2.05, i64 1, !dbg !1116
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !341, metadata !350), !dbg !1117
  %s2.0. = select i1 %8, i8* %s2.05, i8* %9, !dbg !1118
  %10 = add nuw nsw i32 %i.06, 1, !dbg !1119
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !342, metadata !350), !dbg !1105
  %exitcond = icmp eq i32 %i.06, %4, !dbg !1109
  br i1 %exitcond, label %.preheader, label %6, !dbg !1109

.lr.ph:                                           ; preds = %.preheader, %21
  %i.14 = phi i32 [ %26, %21 ], [ %lcol, %.preheader ]
  %s2.23 = phi i8* [ %s2.2., %21 ], [ %s2.0.lcssa, %.preheader ]
  %s1.01 = phi i8* [ %22, %21 ], [ %2, %.preheader ]
  %11 = load i8* %s2.23, align 1, !dbg !1120, !tbaa !398
  %12 = icmp eq i8 %11, 9, !dbg !1123
  br i1 %12, label %13, label %14, !dbg !1124

; <label>:13                                      ; preds = %.lr.ph
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([73 x i8]* @.str47, i64 0, i64 0)) #7, !dbg !1125
  br label %.loopexit, !dbg !1127

; <label>:14                                      ; preds = %.lr.ph
  %15 = icmp sgt i32 %i.14, %name_rcol, !dbg !1128
  br i1 %15, label %17, label %16, !dbg !1130

; <label>:16                                      ; preds = %14
  store i8 46, i8* %s1.01, align 1, !dbg !1131, !tbaa !398
  br label %21, !dbg !1132

; <label>:17                                      ; preds = %14
  switch i8 %11, label %20 [
    i8 0, label %18
    i8 10, label %18
    i8 32, label %19
  ], !dbg !1133

; <label>:18                                      ; preds = %17, %17
  store i8 46, i8* %s1.01, align 1, !dbg !1135, !tbaa !398
  br label %21, !dbg !1136

; <label>:19                                      ; preds = %17
  store i8 46, i8* %s1.01, align 1, !dbg !1137, !tbaa !398
  br label %21, !dbg !1139

; <label>:20                                      ; preds = %17
  store i8 %11, i8* %s1.01, align 1, !dbg !1140, !tbaa !398
  br label %21

; <label>:21                                      ; preds = %18, %20, %19, %16
  %22 = getelementptr inbounds i8* %s1.01, i64 1, !dbg !1141
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !340, metadata !350), !dbg !1104
  %23 = load i8* %s2.23, align 1, !dbg !1142, !tbaa !398
  %24 = icmp eq i8 %23, 0, !dbg !1142
  %25 = getelementptr inbounds i8* %s2.23, i64 1, !dbg !1144
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !341, metadata !350), !dbg !1117
  %s2.2. = select i1 %24, i8* %s2.23, i8* %25, !dbg !1145
  %26 = add nsw i32 %i.14, 1, !dbg !1146
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !342, metadata !350), !dbg !1105
  %27 = icmp slt i32 %i.14, %rcol, !dbg !1110
  br i1 %27, label %.lr.ph, label %.loopexit, !dbg !1113

.loopexit:                                        ; preds = %21, %.preheader, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %.preheader ], [ 1, %21 ]
  ret i32 %.0, !dbg !1147
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @Warn(i8*, ...) #4

; Function Attrs: optsize
declare %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #4

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #4

; Function Attrs: optsize
declare void @FreeAlignment(i8**, %struct.aliinfo_s*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteSELEX(%struct.__sFILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !290, metadata !350), !dbg !1148
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !291, metadata !350), !dbg !1149
  tail call fastcc void @actually_write_selex(%struct.__sFILE* %fp, %struct.msa_struct* %msa, i32 50) #8, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @actually_write_selex(%struct.__sFILE* nocapture %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !321, metadata !350), !dbg !1152
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !322, metadata !350), !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %cpl, i64 0, metadata !323, metadata !350), !dbg !1154
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !325, metadata !350), !dbg !1155
  %1 = add nsw i32 %cpl, 101, !dbg !1156
  %2 = sext i32 %1 to i64, !dbg !1157
  %3 = tail call i8* @malloc(i64 %2) #7, !dbg !1158
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !327, metadata !350), !dbg !1159
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !326, metadata !350), !dbg !1160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !324, metadata !350), !dbg !1161
  %4 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1162
  %5 = load i32* %4, align 4, !dbg !1162, !tbaa !1165
  %6 = icmp sgt i32 %5, 0, !dbg !1167
  br i1 %6, label %.lr.ph28, label %._crit_edge29, !dbg !1168

.lr.ph28:                                         ; preds = %0
  %7 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1169
  %8 = load i8*** %7, align 8, !dbg !1169, !tbaa !1171
  %9 = sext i32 %5 to i64, !dbg !1168
  br label %10, !dbg !1168

; <label>:10                                      ; preds = %.lr.ph28, %10
  %indvars.iv39 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next40, %10 ]
  %namewidth.025 = phi i32 [ 0, %.lr.ph28 ], [ %.namewidth.0, %10 ]
  %11 = getelementptr inbounds i8** %8, i64 %indvars.iv39, !dbg !1172
  %12 = load i8** %11, align 8, !dbg !1172, !tbaa !614
  %13 = tail call i64 @strlen(i8* %12) #7, !dbg !1173
  %14 = trunc i64 %13 to i32, !dbg !1173
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !325, metadata !350), !dbg !1155
  %15 = icmp sgt i32 %14, %namewidth.025, !dbg !1174
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !326, metadata !350), !dbg !1160
  %.namewidth.0 = select i1 %15, i32 %14, i32 %namewidth.025, !dbg !1175
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !1168
  %16 = icmp slt i64 %indvars.iv.next40, %9, !dbg !1167
  br i1 %16, label %10, label %._crit_edge29, !dbg !1168

._crit_edge29:                                    ; preds = %10, %0
  %namewidth.0.lcssa = phi i32 [ 0, %0 ], [ %.namewidth.0, %10 ]
  %17 = icmp slt i32 %namewidth.0.lcssa, 6, !dbg !1176
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !326, metadata !350), !dbg !1160
  %.namewidth.07 = select i1 %17, i32 6, i32 %namewidth.0.lcssa, !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !324, metadata !350), !dbg !1161
  %18 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !1179
  %19 = load i32* %18, align 4, !dbg !1179, !tbaa !1182
  %20 = icmp sgt i32 %19, 0, !dbg !1183
  br i1 %20, label %.lr.ph23, label %._crit_edge24.thread, !dbg !1184

.lr.ph23:                                         ; preds = %._crit_edge29
  %21 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !1185
  br label %22, !dbg !1184

; <label>:22                                      ; preds = %.lr.ph23, %22
  %indvars.iv37 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next38, %22 ]
  %23 = load i8*** %21, align 8, !dbg !1185, !tbaa !1186
  %24 = getelementptr inbounds i8** %23, i64 %indvars.iv37, !dbg !1187
  %25 = load i8** %24, align 8, !dbg !1187, !tbaa !614
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0), i8* %25) #7, !dbg !1188
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !1184
  %27 = load i32* %18, align 4, !dbg !1179, !tbaa !1182
  %28 = sext i32 %27 to i64, !dbg !1183
  %29 = icmp slt i64 %indvars.iv.next38, %28, !dbg !1183
  br i1 %29, label %22, label %._crit_edge24, !dbg !1184

._crit_edge24:                                    ; preds = %22
  %30 = icmp sgt i32 %27, 0, !dbg !1189
  br i1 %30, label %31, label %._crit_edge24.thread, !dbg !1191

; <label>:31                                      ; preds = %._crit_edge24
  %fputc6 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1192
  br label %._crit_edge24.thread, !dbg !1192

._crit_edge24.thread:                             ; preds = %._crit_edge29, %31, %._crit_edge24
  %32 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !1193
  %33 = load i8** %32, align 8, !dbg !1193, !tbaa !1195
  %34 = icmp eq i8* %33, null, !dbg !1196
  br i1 %34, label %37, label %35, !dbg !1197

; <label>:35                                      ; preds = %._crit_edge24.thread
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* %33) #7, !dbg !1198
  br label %37, !dbg !1198

; <label>:37                                      ; preds = %._crit_edge24.thread, %35
  %38 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !1199
  %39 = load i8** %38, align 8, !dbg !1199, !tbaa !1201
  %40 = icmp eq i8* %39, null, !dbg !1202
  br i1 %40, label %43, label %41, !dbg !1203

; <label>:41                                      ; preds = %37
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* %39) #7, !dbg !1204
  br label %43, !dbg !1204

; <label>:43                                      ; preds = %37, %41
  %44 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !1205
  %45 = load i8** %44, align 8, !dbg !1205, !tbaa !1207
  %46 = icmp eq i8* %45, null, !dbg !1208
  br i1 %46, label %49, label %47, !dbg !1209

; <label>:47                                      ; preds = %43
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* %45) #7, !dbg !1210
  br label %49, !dbg !1210

; <label>:49                                      ; preds = %43, %47
  %50 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !1211
  %51 = load i8** %50, align 8, !dbg !1211, !tbaa !1213
  %52 = icmp eq i8* %51, null, !dbg !1214
  br i1 %52, label %55, label %53, !dbg !1215

; <label>:53                                      ; preds = %49
  %54 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* %51) #7, !dbg !1216
  br label %55, !dbg !1216

; <label>:55                                      ; preds = %49, %53
  %56 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2, !dbg !1217
  %57 = load i32* %56, align 4, !dbg !1217, !tbaa !393
  %58 = icmp eq i32 %57, 0, !dbg !1217
  br i1 %58, label %.thread, label %59, !dbg !1219

; <label>:59                                      ; preds = %55
  %60 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3, !dbg !1220
  %61 = load i32* %60, align 4, !dbg !1220, !tbaa !393
  %62 = icmp eq i32 %61, 0, !dbg !1220
  %63 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2, !dbg !1221
  %64 = load float* %63, align 4, !dbg !1221, !tbaa !801
  %65 = fpext float %64 to double, !dbg !1221
  br i1 %62, label %71, label %66, !dbg !1223

; <label>:66                                      ; preds = %59
  %67 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3, !dbg !1224
  %68 = load float* %67, align 4, !dbg !1224, !tbaa !801
  %69 = fpext float %68 to double, !dbg !1224
  %70 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str38, i64 0, i64 0), double %65, double %69) #7, !dbg !1225
  br label %.thread, !dbg !1225

; <label>:71                                      ; preds = %59
  %72 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str39, i64 0, i64 0), double %65) #7, !dbg !1226
  br label %.thread, !dbg !1226

.thread:                                          ; preds = %55, %71, %66
  %73 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4, !dbg !1227
  %74 = load i32* %73, align 4, !dbg !1227, !tbaa !393
  %75 = icmp eq i32 %74, 0, !dbg !1227
  br i1 %75, label %.thread10, label %76, !dbg !1229

; <label>:76                                      ; preds = %.thread
  %77 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5, !dbg !1230
  %78 = load i32* %77, align 4, !dbg !1230, !tbaa !393
  %79 = icmp eq i32 %78, 0, !dbg !1230
  %80 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4, !dbg !1231
  %81 = load float* %80, align 4, !dbg !1231, !tbaa !801
  %82 = fpext float %81 to double, !dbg !1231
  br i1 %79, label %88, label %83, !dbg !1233

; <label>:83                                      ; preds = %76
  %84 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5, !dbg !1234
  %85 = load float* %84, align 4, !dbg !1234, !tbaa !801
  %86 = fpext float %85 to double, !dbg !1234
  %87 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0), double %82, double %86) #7, !dbg !1235
  br label %.thread10, !dbg !1235

; <label>:88                                      ; preds = %76
  %89 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str41, i64 0, i64 0), double %82) #7, !dbg !1236
  br label %.thread10, !dbg !1236

.thread10:                                        ; preds = %.thread, %88, %83
  %90 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0, !dbg !1237
  %91 = load i32* %90, align 4, !dbg !1237, !tbaa !393
  %92 = icmp eq i32 %91, 0, !dbg !1237
  br i1 %92, label %.thread12.preheader, label %93, !dbg !1239

; <label>:93                                      ; preds = %.thread10
  %94 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1, !dbg !1240
  %95 = load i32* %94, align 4, !dbg !1240, !tbaa !393
  %96 = icmp eq i32 %95, 0, !dbg !1240
  %97 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0, !dbg !1241
  %98 = load float* %97, align 4, !dbg !1241, !tbaa !801
  %99 = fpext float %98 to double, !dbg !1241
  br i1 %96, label %105, label %100, !dbg !1243

; <label>:100                                     ; preds = %93
  %101 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1, !dbg !1244
  %102 = load float* %101, align 4, !dbg !1244, !tbaa !801
  %103 = fpext float %102 to double, !dbg !1244
  %104 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0), double %99, double %103) #7, !dbg !1245
  br label %.thread12.preheader, !dbg !1245

; <label>:105                                     ; preds = %93
  %106 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str43, i64 0, i64 0), double %99) #7, !dbg !1246
  br label %.thread12.preheader, !dbg !1246

.thread12.preheader:                              ; preds = %105, %100, %.thread10
  %107 = load i32* %4, align 4, !dbg !1247, !tbaa !1165
  %108 = icmp sgt i32 %107, 0, !dbg !1250
  br i1 %108, label %.lr.ph20, label %.thread12._crit_edge, !dbg !1251

.lr.ph20:                                         ; preds = %.thread12.preheader
  %109 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1252
  %110 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !1253
  %111 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !1254
  %112 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !1255
  br label %113, !dbg !1251

; <label>:113                                     ; preds = %.lr.ph20, %.thread12
  %indvars.iv35 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next36, %.thread12 ]
  %114 = load i8*** %109, align 8, !dbg !1252, !tbaa !1171
  %115 = getelementptr inbounds i8** %114, i64 %indvars.iv35, !dbg !1256
  %116 = load i8** %115, align 8, !dbg !1256, !tbaa !614
  %117 = load float** %110, align 8, !dbg !1253, !tbaa !1257
  %118 = getelementptr inbounds float* %117, i64 %indvars.iv35, !dbg !1258
  %119 = load float* %118, align 4, !dbg !1258, !tbaa !801
  %120 = fpext float %119 to double, !dbg !1258
  %121 = load i8*** %111, align 8, !dbg !1254, !tbaa !1259
  %122 = icmp eq i8** %121, null, !dbg !1260
  br i1 %122, label %127, label %123, !dbg !1261

; <label>:123                                     ; preds = %113
  %124 = getelementptr inbounds i8** %121, i64 %indvars.iv35, !dbg !1262
  %125 = load i8** %124, align 8, !dbg !1262, !tbaa !614
  %126 = icmp eq i8* %125, null, !dbg !1263
  %. = select i1 %126, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), i8* %125, !dbg !1264
  br label %127, !dbg !1264

; <label>:127                                     ; preds = %123, %113
  %128 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), %113 ], [ %., %123 ], !dbg !1264
  %129 = load i8*** %112, align 8, !dbg !1255, !tbaa !1265
  %130 = icmp eq i8** %129, null, !dbg !1266
  br i1 %130, label %.thread12, label %131, !dbg !1267

; <label>:131                                     ; preds = %127
  %132 = getelementptr inbounds i8** %129, i64 %indvars.iv35, !dbg !1268
  %133 = load i8** %132, align 8, !dbg !1268, !tbaa !614
  %134 = icmp eq i8* %133, null, !dbg !1269
  %.8 = select i1 %134, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), i8* %133, !dbg !1270
  br label %.thread12, !dbg !1270

.thread12:                                        ; preds = %131, %127
  %135 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), %127 ], [ %.8, %131 ], !dbg !1270
  %136 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str44, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* %116, double %120, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0), i8* %128, i32 0, i32 0, i32 0, i8* %135) #7, !dbg !1271
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !1251
  %137 = load i32* %4, align 4, !dbg !1247, !tbaa !1165
  %138 = sext i32 %137 to i64, !dbg !1250
  %139 = icmp slt i64 %indvars.iv.next36, %138, !dbg !1250
  br i1 %139, label %113, label %.thread12._crit_edge, !dbg !1251

.thread12._crit_edge:                             ; preds = %.thread12, %.thread12.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !328, metadata !350), !dbg !1273
  %140 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1274
  %141 = load i32* %140, align 4, !dbg !1274, !tbaa !1277
  %142 = icmp sgt i32 %141, 0, !dbg !1278
  br i1 %142, label %.lr.ph17, label %._crit_edge18, !dbg !1279

.lr.ph17:                                         ; preds = %.thread12._crit_edge
  %143 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !1280
  %144 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !1283
  %145 = sext i32 %cpl to i64, !dbg !1285
  %146 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false), !dbg !1285
  %147 = getelementptr inbounds i8* %3, i64 %145, !dbg !1287
  %148 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1288
  %149 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1292
  %150 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !1293
  %151 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !1295
  br label %152, !dbg !1279

; <label>:152                                     ; preds = %.lr.ph17, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next34, %._crit_edge ]
  %153 = icmp sgt i64 %indvars.iv33, 0, !dbg !1297
  br i1 %153, label %154, label %155, !dbg !1299

; <label>:154                                     ; preds = %152
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !1300
  br label %155, !dbg !1300

; <label>:155                                     ; preds = %154, %152
  %156 = load i8** %143, align 8, !dbg !1280, !tbaa !1301
  %157 = icmp eq i8* %156, null, !dbg !1302
  br i1 %157, label %162, label %158, !dbg !1303

; <label>:158                                     ; preds = %155
  %159 = getelementptr inbounds i8* %156, i64 %indvars.iv33, !dbg !1304
  %160 = tail call i8* @__strncpy_chk(i8* %3, i8* %159, i64 %145, i64 %146) #7, !dbg !1304
  store i8 0, i8* %147, align 1, !dbg !1306, !tbaa !398
  %161 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* %3) #7, !dbg !1307
  br label %162, !dbg !1308

; <label>:162                                     ; preds = %155, %158
  %163 = load i8** %144, align 8, !dbg !1283, !tbaa !1309
  %164 = icmp eq i8* %163, null, !dbg !1310
  br i1 %164, label %.preheader, label %165, !dbg !1311

; <label>:165                                     ; preds = %162
  %166 = getelementptr inbounds i8* %163, i64 %indvars.iv33, !dbg !1285
  %167 = tail call i8* @__strncpy_chk(i8* %3, i8* %166, i64 %145, i64 %146) #7, !dbg !1285
  store i8 0, i8* %147, align 1, !dbg !1312, !tbaa !398
  %168 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %3) #7, !dbg !1313
  br label %.preheader, !dbg !1314

.preheader:                                       ; preds = %162, %165
  %169 = load i32* %4, align 4, !dbg !1315, !tbaa !1165
  %170 = icmp sgt i32 %169, 0, !dbg !1316
  br i1 %170, label %.lr.ph, label %._crit_edge, !dbg !1317

.lr.ph:                                           ; preds = %.preheader, %201
  %indvars.iv = phi i64 [ %indvars.iv.next, %201 ], [ 0, %.preheader ]
  %171 = load i8*** %148, align 8, !dbg !1288, !tbaa !1318
  %172 = getelementptr inbounds i8** %171, i64 %indvars.iv, !dbg !1288
  %173 = load i8** %172, align 8, !dbg !1288, !tbaa !614
  %174 = getelementptr inbounds i8* %173, i64 %indvars.iv33, !dbg !1288
  %175 = tail call i8* @__strncpy_chk(i8* %3, i8* %174, i64 %145, i64 %146) #7, !dbg !1288
  store i8 0, i8* %147, align 1, !dbg !1319, !tbaa !398
  %176 = load i8*** %149, align 8, !dbg !1292, !tbaa !1171
  %177 = getelementptr inbounds i8** %176, i64 %indvars.iv, !dbg !1320
  %178 = load i8** %177, align 8, !dbg !1320, !tbaa !614
  %179 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* %178, i8* %3) #7, !dbg !1321
  %180 = load i8*** %150, align 8, !dbg !1293, !tbaa !1322
  %181 = icmp eq i8** %180, null, !dbg !1323
  br i1 %181, label %190, label %182, !dbg !1324

; <label>:182                                     ; preds = %.lr.ph
  %183 = getelementptr inbounds i8** %180, i64 %indvars.iv, !dbg !1325
  %184 = load i8** %183, align 8, !dbg !1325, !tbaa !614
  %185 = icmp eq i8* %184, null, !dbg !1326
  br i1 %185, label %190, label %186, !dbg !1327

; <label>:186                                     ; preds = %182
  %187 = getelementptr inbounds i8* %184, i64 %indvars.iv33, !dbg !1328
  %188 = tail call i8* @__strncpy_chk(i8* %3, i8* %187, i64 %145, i64 %146) #7, !dbg !1328
  store i8 0, i8* %147, align 1, !dbg !1330, !tbaa !398
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* %3) #7, !dbg !1331
  br label %190, !dbg !1332

; <label>:190                                     ; preds = %182, %.lr.ph, %186
  %191 = load i8*** %151, align 8, !dbg !1295, !tbaa !1333
  %192 = icmp eq i8** %191, null, !dbg !1334
  br i1 %192, label %201, label %193, !dbg !1335

; <label>:193                                     ; preds = %190
  %194 = getelementptr inbounds i8** %191, i64 %indvars.iv, !dbg !1336
  %195 = load i8** %194, align 8, !dbg !1336, !tbaa !614
  %196 = icmp eq i8* %195, null, !dbg !1337
  br i1 %196, label %201, label %197, !dbg !1338

; <label>:197                                     ; preds = %193
  %198 = getelementptr inbounds i8* %195, i64 %indvars.iv33, !dbg !1339
  %199 = tail call i8* @__strncpy_chk(i8* %3, i8* %198, i64 %145, i64 %146) #7, !dbg !1339
  store i8 0, i8* %147, align 1, !dbg !1341, !tbaa !398
  %200 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str46, i64 0, i64 0), i32 %.namewidth.07, i32 %.namewidth.07, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %3) #7, !dbg !1342
  br label %201, !dbg !1343

; <label>:201                                     ; preds = %193, %190, %197
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1317
  %202 = load i32* %4, align 4, !dbg !1315, !tbaa !1165
  %203 = sext i32 %202 to i64, !dbg !1316
  %204 = icmp slt i64 %indvars.iv.next, %203, !dbg !1316
  br i1 %204, label %.lr.ph, label %._crit_edge, !dbg !1317

._crit_edge:                                      ; preds = %201, %.preheader
  %indvars.iv.next34 = add i64 %indvars.iv33, %145, !dbg !1279
  %205 = load i32* %140, align 4, !dbg !1274, !tbaa !1277
  %206 = sext i32 %205 to i64, !dbg !1278
  %207 = icmp slt i64 %indvars.iv.next34, %206, !dbg !1278
  br i1 %207, label %152, label %._crit_edge18, !dbg !1279

._crit_edge18:                                    ; preds = %._crit_edge, %.thread12._crit_edge
  tail call void @free(i8* %3) #8, !dbg !1344
  ret void, !dbg !1345
}

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteSELEXOneBlock(%struct.__sFILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !294, metadata !350), !dbg !1346
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !295, metadata !350), !dbg !1347
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1348
  %2 = load i32* %1, align 4, !dbg !1348, !tbaa !1277
  tail call fastcc void @actually_write_selex(%struct.__sFILE* %fp, %struct.msa_struct* %msa, i32 %2) #8, !dbg !1349
  ret void, !dbg !1350
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DealignAseqs(i8** nocapture readonly %aseqs, i32 %num, i8*** nocapture %ret_rseqs) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !300, metadata !350), !dbg !1351
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !301, metadata !350), !dbg !1352
  tail call void @llvm.dbg.value(metadata i8*** %ret_rseqs, i64 0, metadata !302, metadata !350), !dbg !1353
  %1 = sext i32 %num to i64, !dbg !1354
  %2 = shl nsw i64 %1, 3, !dbg !1354
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 738, i64 %2) #7, !dbg !1354
  %4 = bitcast i8* %3 to i8**, !dbg !1355
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !303, metadata !350), !dbg !1356
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !304, metadata !350), !dbg !1357
  %5 = icmp sgt i32 %num, 0, !dbg !1358
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !1361

.lr.ph:                                           ; preds = %0
  %6 = add i32 %num, -1, !dbg !1361
  br label %7, !dbg !1361

; <label>:7                                       ; preds = %25, %.lr.ph
  %indvars.iv2 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3, %25 ]
  %8 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv2, !dbg !1362
  %9 = load i8** %8, align 8, !dbg !1362, !tbaa !614
  %10 = tail call i64 @strlen(i8* %9) #7, !dbg !1364
  %11 = shl i64 %10, 32, !dbg !1365
  %sext = add i64 %11, 4294967296, !dbg !1365
  %12 = ashr exact i64 %sext, 32, !dbg !1365
  %13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 744, i64 %12) #7, !dbg !1365
  %14 = getelementptr inbounds i8** %4, i64 %indvars.iv2, !dbg !1366
  store i8* %13, i8** %14, align 8, !dbg !1367, !tbaa !614
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !350), !dbg !1368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !306, metadata !350), !dbg !1369
  br label %15, !dbg !1370

; <label>:15                                      ; preds = %24, %7
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %7 ]
  %depos.0 = phi i32 [ %depos.1, %24 ], [ 0, %7 ]
  %16 = load i8** %8, align 8, !dbg !1372, !tbaa !614
  %17 = getelementptr inbounds i8* %16, i64 %indvars.iv, !dbg !1372
  %18 = load i8* %17, align 1, !dbg !1372, !tbaa !398
  switch i8 %18, label %19 [
    i8 0, label %25
    i8 32, label %24
    i8 46, label %24
    i8 95, label %24
    i8 45, label %24
    i8 126, label %24
  ], !dbg !1374

; <label>:19                                      ; preds = %15
  %20 = sext i32 %depos.0 to i64, !dbg !1375
  %21 = load i8** %14, align 8, !dbg !1375, !tbaa !614
  %22 = getelementptr inbounds i8* %21, i64 %20, !dbg !1375
  store i8 %18, i8* %22, align 1, !dbg !1378, !tbaa !398
  %23 = add nsw i32 %depos.0, 1, !dbg !1379
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !305, metadata !350), !dbg !1368
  br label %24, !dbg !1380

; <label>:24                                      ; preds = %15, %15, %15, %15, %15, %19
  %depos.1 = phi i32 [ %23, %19 ], [ %depos.0, %15 ], [ %depos.0, %15 ], [ %depos.0, %15 ], [ %depos.0, %15 ], [ %depos.0, %15 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !1381
  br label %15, !dbg !1381

; <label>:25                                      ; preds = %15
  %26 = sext i32 %depos.0 to i64, !dbg !1382
  %27 = load i8** %14, align 8, !dbg !1382, !tbaa !614
  %28 = getelementptr inbounds i8* %27, i64 %26, !dbg !1382
  store i8 0, i8* %28, align 1, !dbg !1383, !tbaa !398
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !1361
  %lftr.wideiv = trunc i64 %indvars.iv2 to i32, !dbg !1361
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !1361
  br i1 %exitcond, label %._crit_edge, label %7, !dbg !1361

._crit_edge:                                      ; preds = %25, %0
  %29 = bitcast i8*** %ret_rseqs to i8**, !dbg !1384
  store i8* %3, i8** %29, align 8, !dbg !1384, !tbaa !614
  ret i32 1, !dbg !1385
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IsSELEXFormat(i8* %filename) #0 {
  %buffer = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !312, metadata !350), !dbg !1386
  %1 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0, !dbg !1387
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2, !dbg !1387
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buffer, metadata !314, metadata !350), !dbg !1388
  %2 = tail call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !1389
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %2, i64 0, metadata !313, metadata !350), !dbg !1391
  %3 = icmp eq %struct.__sFILE* %2, null, !dbg !1392
  br i1 %3, label %4, label %.preheader, !dbg !1393

; <label>:4                                       ; preds = %0
  store i32 4, i32* @squid_errno, align 4, !dbg !1394, !tbaa !393
  br label %59, !dbg !1396

.preheader:                                       ; preds = %0, %.backedge
  %linenum.01 = phi i32 [ %8, %.backedge ], [ 0, %0 ]
  %5 = call i8* @fgets(i8* %1, i32 4096, %struct.__sFILE* %2) #7, !dbg !1397
  %6 = icmp eq i8* %5, null, !dbg !1398
  br i1 %6, label %.critedge, label %7, !dbg !1399

; <label>:7                                       ; preds = %.preheader
  %8 = add nuw nsw i32 %linenum.01, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !316, metadata !350), !dbg !1402
  %9 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i64 4) #7, !dbg !1403
  %10 = icmp eq i32 %9, 0, !dbg !1405
  br i1 %10, label %.critedge, label %11, !dbg !1406

; <label>:11                                      ; preds = %7
  %12 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4) #7, !dbg !1407
  %13 = icmp eq i32 %12, 0, !dbg !1409
  br i1 %13, label %.critedge, label %14, !dbg !1410

; <label>:14                                      ; preds = %11
  %15 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i64 4) #7, !dbg !1411
  %16 = icmp eq i32 %15, 0, !dbg !1413
  br i1 %16, label %.critedge, label %17, !dbg !1414

; <label>:17                                      ; preds = %14
  %18 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 4) #7, !dbg !1415
  %19 = icmp eq i32 %18, 0, !dbg !1417
  br i1 %19, label %.critedge, label %20, !dbg !1418

; <label>:20                                      ; preds = %17
  %21 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #7, !dbg !1419
  %22 = icmp eq i32 %21, 0, !dbg !1421
  br i1 %22, label %.critedge, label %23, !dbg !1422

; <label>:23                                      ; preds = %20
  %24 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #7, !dbg !1423
  %25 = icmp eq i32 %24, 0, !dbg !1425
  br i1 %25, label %.critedge, label %26, !dbg !1426

; <label>:26                                      ; preds = %23
  %27 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #7, !dbg !1427
  %28 = icmp eq i32 %27, 0, !dbg !1429
  br i1 %28, label %.critedge, label %29, !dbg !1430

; <label>:29                                      ; preds = %26
  %30 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4) #7, !dbg !1431
  %31 = icmp eq i32 %30, 0, !dbg !1433
  br i1 %31, label %.critedge, label %32, !dbg !1434

; <label>:32                                      ; preds = %29
  %33 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #7, !dbg !1435
  %34 = icmp eq i32 %33, 0, !dbg !1437
  br i1 %34, label %.critedge, label %35, !dbg !1438

; <label>:35                                      ; preds = %32
  %36 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7, !dbg !1439
  %37 = icmp eq i32 %36, 0, !dbg !1441
  br i1 %37, label %.critedge, label %38, !dbg !1442

; <label>:38                                      ; preds = %35
  %39 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7, !dbg !1443
  %40 = icmp eq i32 %39, 0, !dbg !1445
  br i1 %40, label %.critedge, label %41, !dbg !1446

; <label>:41                                      ; preds = %38
  %42 = load i8* %1, align 16, !dbg !1447, !tbaa !398
  %43 = sext i8 %42 to i32, !dbg !1447
  %44 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %43) #7, !dbg !1449
  %45 = icmp eq i8* %44, null, !dbg !1450
  br i1 %45, label %46, label %.backedge, !dbg !1451

; <label>:46                                      ; preds = %41
  %47 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !315, metadata !350), !dbg !1454
  %48 = icmp eq i8* %47, null, !dbg !1455
  br i1 %48, label %.backedge, label %50, !dbg !1456

.backedge:                                        ; preds = %46, %50, %53, %41
  %49 = icmp slt i32 %8, 500, !dbg !1457
  br i1 %49, label %.preheader, label %.critedge, !dbg !1458

; <label>:50                                      ; preds = %46
  %51 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !1459
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !315, metadata !350), !dbg !1454
  %52 = icmp eq i8* %51, null, !dbg !1461
  br i1 %52, label %.backedge, label %53, !dbg !1462

; <label>:53                                      ; preds = %50
  %54 = call i32 @Seqtype(i8* %51) #7, !dbg !1463
  %55 = icmp eq i32 %54, 0, !dbg !1465
  br i1 %55, label %56, label %.backedge, !dbg !1466

; <label>:56                                      ; preds = %53
  %57 = call i32 @fclose(%struct.__sFILE* %2) #7, !dbg !1467
  br label %59, !dbg !1469

.critedge:                                        ; preds = %.preheader, %.backedge, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %7
  %58 = call i32 @fclose(%struct.__sFILE* %2) #7, !dbg !1470
  br label %59, !dbg !1471

; <label>:59                                      ; preds = %.critedge, %56, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %.critedge ], [ 0, %56 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2, !dbg !1472
  ret i32 %.0, !dbg !1472
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #4

; Function Attrs: optsize
declare i32 @Seqtype(i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!346, !347, !348}
!llvm.ident = !{!349}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !285, globals: !343, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/selex.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !283, !16, !17, !21, !18}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_struc", scope: !7, file: !1, line: 91, size: 64, align: 32, elements: !280)
!7 = !DISubprogram(name: "ReadSELEX", scope: !1, file: !1, line: 83, type: !8, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadSELEX, variables: !205)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !89}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !12, line: 112, size: 2880, align: 64, elements: !14)
!14 = !{!15, !19, !20, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !13, file: !12, line: 115, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !13, file: !12, line: 116, baseType: !16, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !13, file: !12, line: 117, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !13, file: !12, line: 118, baseType: !24, size: 32, align: 32, offset: 192)
!24 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !13, file: !12, line: 119, baseType: !24, size: 32, align: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !12, line: 123, baseType: !24, size: 32, align: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 124, baseType: !24, size: 32, align: 32, offset: 288)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !12, line: 125, baseType: !17, size: 64, align: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !13, file: !12, line: 126, baseType: !17, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !13, file: !12, line: 127, baseType: !17, size: 64, align: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !13, file: !12, line: 128, baseType: !17, size: 64, align: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !13, file: !12, line: 129, baseType: !17, size: 64, align: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !13, file: !12, line: 130, baseType: !17, size: 64, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !13, file: !12, line: 131, baseType: !17, size: 64, align: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !13, file: !12, line: 132, baseType: !16, size: 64, align: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !13, file: !12, line: 133, baseType: !16, size: 64, align: 64, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !13, file: !12, line: 134, baseType: !16, size: 64, align: 64, offset: 896)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !13, file: !12, line: 135, baseType: !16, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !13, file: !12, line: 136, baseType: !40, size: 192, align: 32, offset: 1024)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, align: 32, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !13, file: !12, line: 137, baseType: !44, size: 192, align: 32, offset: 1216)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, align: 32, elements: !41)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !13, file: !12, line: 144, baseType: !16, size: 64, align: 64, offset: 1408)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !13, file: !12, line: 145, baseType: !24, size: 32, align: 32, offset: 1472)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !13, file: !12, line: 146, baseType: !24, size: 32, align: 32, offset: 1504)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !13, file: !12, line: 148, baseType: !16, size: 64, align: 64, offset: 1536)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !13, file: !12, line: 149, baseType: !16, size: 64, align: 64, offset: 1600)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !13, file: !12, line: 150, baseType: !24, size: 32, align: 32, offset: 1664)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !13, file: !12, line: 151, baseType: !24, size: 32, align: 32, offset: 1696)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !13, file: !12, line: 153, baseType: !16, size: 64, align: 64, offset: 1728)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !13, file: !12, line: 154, baseType: !54, size: 64, align: 64, offset: 1792)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !13, file: !12, line: 155, baseType: !56, size: 64, align: 64, offset: 1856)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !58, line: 42, baseType: !59)
!58 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!59 = !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 36, size: 192, align: 64, elements: !60)
!60 = !{!61, !69, !70, !71}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !59, file: !58, line: 37, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !58, line: 26, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !64, file: !58, line: 27, baseType: !17, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !64, file: !58, line: 28, baseType: !24, size: 32, align: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !64, file: !58, line: 29, baseType: !63, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !59, file: !58, line: 39, baseType: !24, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !59, file: !58, line: 40, baseType: !24, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !59, file: !58, line: 41, baseType: !24, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !13, file: !12, line: 156, baseType: !24, size: 32, align: 32, offset: 1920)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !13, file: !12, line: 158, baseType: !16, size: 64, align: 64, offset: 1984)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !13, file: !12, line: 159, baseType: !16, size: 64, align: 64, offset: 2048)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !13, file: !12, line: 160, baseType: !56, size: 64, align: 64, offset: 2112)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !13, file: !12, line: 161, baseType: !24, size: 32, align: 32, offset: 2176)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !13, file: !12, line: 163, baseType: !16, size: 64, align: 64, offset: 2240)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !13, file: !12, line: 164, baseType: !54, size: 64, align: 64, offset: 2304)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !13, file: !12, line: 165, baseType: !56, size: 64, align: 64, offset: 2368)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !13, file: !12, line: 166, baseType: !24, size: 32, align: 32, offset: 2432)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !13, file: !12, line: 170, baseType: !56, size: 64, align: 64, offset: 2496)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !13, file: !12, line: 171, baseType: !24, size: 32, align: 32, offset: 2560)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !13, file: !12, line: 172, baseType: !24, size: 32, align: 32, offset: 2592)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !13, file: !12, line: 173, baseType: !85, size: 64, align: 64, offset: 2624)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !13, file: !12, line: 174, baseType: !85, size: 64, align: 64, offset: 2688)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !13, file: !12, line: 175, baseType: !85, size: 64, align: 64, offset: 2752)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !13, file: !12, line: 176, baseType: !24, size: 32, align: 32, offset: 2816)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !12, line: 199, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !12, line: 186, size: 512, align: 64, elements: !92)
!92 = !{!93, !154, !155, !156, !157, !158, !202, !203, !204}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !91, file: !12, line: 187, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !96, line: 153, baseType: !97)
!96 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !96, line: 122, size: 1216, align: 64, elements: !98)
!98 = !{!99, !102, !103, !104, !106, !107, !112, !113, !114, !118, !122, !132, !138, !139, !142, !143, !147, !151, !152, !153}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !97, file: !96, line: 123, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !97, file: !96, line: 124, baseType: !24, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !97, file: !96, line: 125, baseType: !24, size: 32, align: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !97, file: !96, line: 126, baseType: !105, size: 16, align: 16, offset: 128)
!105 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !97, file: !96, line: 127, baseType: !105, size: 16, align: 16, offset: 144)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !97, file: !96, line: 128, baseType: !108, size: 128, align: 64, offset: 192)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !96, line: 88, size: 128, align: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !108, file: !96, line: 89, baseType: !100, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !108, file: !96, line: 90, baseType: !24, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !97, file: !96, line: 129, baseType: !24, size: 32, align: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !97, file: !96, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !97, file: !96, line: 133, baseType: !115, size: 64, align: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!24, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !97, file: !96, line: 134, baseType: !119, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!24, !4, !17, !24}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !97, file: !96, line: 135, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !4, !126, !24}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !96, line: 77, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !128, line: 71, baseType: !129)
!128 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!131 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !97, file: !96, line: 136, baseType: !133, size: 64, align: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!24, !4, !136, !24}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !97, file: !96, line: 139, baseType: !108, size: 128, align: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !97, file: !96, line: 140, baseType: !140, size: 64, align: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !96, line: 94, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !97, file: !96, line: 141, baseType: !24, size: 32, align: 32, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !97, file: !96, line: 144, baseType: !144, size: 24, align: 8, offset: 928)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, align: 8, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 3)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !97, file: !96, line: 145, baseType: !148, size: 8, align: 8, offset: 952)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8, align: 8, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !97, file: !96, line: 148, baseType: !108, size: 128, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !97, file: !96, line: 151, baseType: !24, size: 32, align: 32, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !97, file: !96, line: 152, baseType: !126, size: 64, align: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !91, file: !12, line: 188, baseType: !17, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !91, file: !12, line: 189, baseType: !24, size: 32, align: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !12, line: 191, baseType: !17, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !91, file: !12, line: 192, baseType: !24, size: 32, align: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !91, file: !12, line: 194, baseType: !159, size: 64, align: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !161, line: 76, baseType: !162)
!161 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !161, line: 49, size: 1152, align: 64, elements: !163)
!163 = !{!164, !165, !169, !172, !173, !174, !175, !176, !177, !178, !179, !180, !192, !193, !194, !195, !196, !197, !199, !200, !201}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !162, file: !161, line: 50, baseType: !94, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !161, line: 51, baseType: !166, size: 32, align: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !167, line: 41, baseType: !168)
!167 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!168 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !162, file: !161, line: 52, baseType: !170, size: 16, align: 16, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !167, line: 40, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !162, file: !161, line: 53, baseType: !166, size: 32, align: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !162, file: !161, line: 54, baseType: !166, size: 32, align: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !162, file: !161, line: 55, baseType: !166, size: 32, align: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !162, file: !161, line: 56, baseType: !166, size: 32, align: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !162, file: !161, line: 57, baseType: !166, size: 32, align: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !162, file: !161, line: 58, baseType: !166, size: 32, align: 32, offset: 288)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !162, file: !161, line: 59, baseType: !166, size: 32, align: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !162, file: !161, line: 60, baseType: !166, size: 32, align: 32, offset: 352)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !162, file: !161, line: 61, baseType: !181, size: 128, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !161, line: 42, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !161, line: 35, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !182, file: !161, line: 36, baseType: !18, size: 8, align: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !182, file: !161, line: 40, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !161, line: 37, size: 64, align: 64, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !186, file: !161, line: 38, baseType: !166, size: 32, align: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !186, file: !161, line: 39, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !167, line: 42, baseType: !191)
!191 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !162, file: !161, line: 62, baseType: !181, size: 128, align: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !162, file: !161, line: 63, baseType: !181, size: 128, align: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !162, file: !161, line: 65, baseType: !18, size: 8, align: 8, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !162, file: !161, line: 66, baseType: !18, size: 8, align: 8, offset: 776)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !162, file: !161, line: 70, baseType: !16, size: 64, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !162, file: !161, line: 71, baseType: !198, size: 64, align: 64, offset: 896)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !162, file: !161, line: 72, baseType: !198, size: 64, align: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !162, file: !161, line: 73, baseType: !198, size: 64, align: 64, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !162, file: !161, line: 74, baseType: !198, size: 64, align: 64, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !91, file: !12, line: 196, baseType: !24, size: 32, align: 32, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !91, file: !12, line: 197, baseType: !24, size: 32, align: 32, offset: 416)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !91, file: !12, line: 198, baseType: !24, size: 32, align: 32, offset: 448)
!205 = !{!206, !207, !208, !209, !210, !211, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !273, !275, !279}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !7, file: !1, line: 83, type: !89)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !7, file: !1, line: 85, type: !10)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !7, file: !1, line: 86, type: !94)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aseqs", scope: !7, file: !1, line: 87, type: !16)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !7, file: !1, line: 88, type: !24)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !7, file: !1, line: 89, type: !212)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32768, align: 8, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 4096)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufcpy", scope: !7, file: !1, line: 90, type: !212)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocks", scope: !7, file: !1, line: 94, type: !5)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocknum", scope: !7, file: !1, line: 95, type: !24)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nptr", scope: !7, file: !1, line: 96, type: !17)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sptr", scope: !7, file: !1, line: 97, type: !17)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currnum", scope: !7, file: !1, line: 98, type: !24)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currblock", scope: !7, file: !1, line: 99, type: !24)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !7, file: !1, line: 100, type: !24)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqidx", scope: !7, file: !1, line: 101, type: !24)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alen", scope: !7, file: !1, line: 102, type: !24)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "warn_names", scope: !7, file: !1, line: 103, type: !24)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "headnum", scope: !7, file: !1, line: 104, type: !24)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currlen", scope: !7, file: !1, line: 105, type: !24)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !7, file: !1, line: 106, type: !24)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "have_cs", scope: !7, file: !1, line: 107, type: !24)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "have_rf", scope: !7, file: !1, line: 108, type: !24)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base_ainfo", scope: !7, file: !1, line: 109, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "AINFO", file: !12, line: 83, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "aliinfo_s", file: !12, line: 65, size: 832, align: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !12, line: 66, baseType: !24, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !233, file: !12, line: 67, baseType: !24, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !233, file: !12, line: 68, baseType: !24, size: 32, align: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !233, file: !12, line: 69, baseType: !21, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !233, file: !12, line: 70, baseType: !17, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !233, file: !12, line: 71, baseType: !17, size: 64, align: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "sqinfo", scope: !233, file: !12, line: 72, baseType: !242, size: 64, align: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "seqinfo_s", file: !167, line: 84, size: 2880, align: 64, elements: !244)
!244 = !{!245, !246, !250, !251, !252, !256, !257, !258, !259, !260, !261, !262}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !167, line: 85, baseType: !24, size: 32, align: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !167, line: 86, baseType: !247, size: 512, align: 8, offset: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, align: 8, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !243, file: !167, line: 87, baseType: !247, size: 512, align: 8, offset: 544)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !243, file: !167, line: 88, baseType: !247, size: 512, align: 8, offset: 1056)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !243, file: !167, line: 89, baseType: !253, size: 1024, align: 8, offset: 1568)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, align: 8, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !243, file: !167, line: 90, baseType: !24, size: 32, align: 32, offset: 2592)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !243, file: !167, line: 91, baseType: !24, size: 32, align: 32, offset: 2624)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !243, file: !167, line: 92, baseType: !24, size: 32, align: 32, offset: 2656)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "olen", scope: !243, file: !167, line: 93, baseType: !24, size: 32, align: 32, offset: 2688)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !243, file: !167, line: 94, baseType: !24, size: 32, align: 32, offset: 2720)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !243, file: !167, line: 95, baseType: !17, size: 64, align: 64, offset: 2752)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !243, file: !167, line: 96, baseType: !17, size: 64, align: 64, offset: 2816)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !12, line: 75, baseType: !17, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !233, file: !12, line: 76, baseType: !17, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !233, file: !12, line: 77, baseType: !17, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !233, file: !12, line: 78, baseType: !17, size: 64, align: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !233, file: !12, line: 79, baseType: !22, size: 32, align: 32, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !233, file: !12, line: 79, baseType: !22, size: 32, align: 32, offset: 672)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !233, file: !12, line: 80, baseType: !22, size: 32, align: 32, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !233, file: !12, line: 80, baseType: !22, size: 32, align: 32, offset: 736)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !233, file: !12, line: 81, baseType: !22, size: 32, align: 32, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !233, file: !12, line: 81, baseType: !22, size: 32, align: 32, offset: 800)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ainfo", scope: !7, file: !1, line: 109, type: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !276, file: !1, line: 461, type: !24)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 460, column: 5)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 459, column: 3)
!278 = distinct !DILexicalBlock(scope: !7, file: !1, line: 459, column: 3)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos", scope: !276, file: !1, line: 461, type: !24)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lcol", scope: !6, file: !1, line: 92, baseType: !24, size: 32, align: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rcol", scope: !6, file: !1, line: 93, baseType: !24, size: 32, align: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "SQINFO", file: !167, line: 98, baseType: !243)
!285 = !{!7, !286, !292, !296, !308, !317, !329}
!286 = !DISubprogram(name: "WriteSELEX", scope: !1, file: !1, line: 530, type: !287, isLocal: false, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteSELEX, variables: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !94, !10}
!289 = !{!290, !291}
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !286, file: !1, line: 530, type: !94)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !286, file: !1, line: 530, type: !10)
!292 = !DISubprogram(name: "WriteSELEXOneBlock", scope: !1, file: !1, line: 547, type: !287, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteSELEXOneBlock, variables: !293)
!293 = !{!294, !295}
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !292, file: !1, line: 547, type: !94)
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !292, file: !1, line: 547, type: !10)
!296 = !DISubprogram(name: "DealignAseqs", scope: !1, file: !1, line: 729, type: !297, isLocal: false, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i32, i8***)* @DealignAseqs, variables: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!24, !16, !24, !54}
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !296, file: !1, line: 729, type: !16)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 2, scope: !296, file: !1, line: 729, type: !24)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_rseqs", arg: 3, scope: !296, file: !1, line: 729, type: !54)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rseqs", scope: !296, file: !1, line: 731, type: !16)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !296, file: !1, line: 732, type: !24)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "depos", scope: !296, file: !1, line: 733, type: !24)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !296, file: !1, line: 734, type: !24)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seqlen", scope: !296, file: !1, line: 735, type: !24)
!308 = !DISubprogram(name: "IsSELEXFormat", scope: !1, file: !1, line: 775, type: !309, isLocal: false, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @IsSELEXFormat, variables: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!24, !17}
!311 = !{!312, !313, !314, !315, !316}
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 1, scope: !308, file: !1, line: 775, type: !17)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !308, file: !1, line: 777, type: !94)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !308, file: !1, line: 778, type: !212)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sptr", scope: !308, file: !1, line: 779, type: !17)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linenum", scope: !308, file: !1, line: 780, type: !24)
!317 = !DISubprogram(name: "actually_write_selex", scope: !1, file: !1, line: 568, type: !318, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*, i32)* @actually_write_selex, variables: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !94, !10, !24}
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328}
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !317, file: !1, line: 568, type: !94)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !317, file: !1, line: 568, type: !10)
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cpl", arg: 3, scope: !317, file: !1, line: 568, type: !24)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !317, file: !1, line: 570, type: !24)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !317, file: !1, line: 571, type: !24)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namewidth", scope: !317, file: !1, line: 572, type: !24)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !317, file: !1, line: 573, type: !17)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "currpos", scope: !317, file: !1, line: 574, type: !24)
!329 = !DISubprogram(name: "copy_alignment_line", scope: !1, file: !1, line: 678, type: !330, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i32, i8*, i32, i32)* @copy_alignment_line, variables: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!24, !17, !24, !24, !17, !24, !24, !18}
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !329, file: !1, line: 678, type: !17)
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "apos", arg: 2, scope: !329, file: !1, line: 678, type: !24)
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name_rcol", arg: 3, scope: !329, file: !1, line: 678, type: !24)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buffer", arg: 4, scope: !329, file: !1, line: 679, type: !17)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lcol", arg: 5, scope: !329, file: !1, line: 679, type: !24)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rcol", arg: 6, scope: !329, file: !1, line: 679, type: !24)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gapsym", arg: 7, scope: !329, file: !1, line: 679, type: !18)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s1", scope: !329, file: !1, line: 681, type: !17)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s2", scope: !329, file: !1, line: 681, type: !17)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !329, file: !1, line: 682, type: !24)
!343 = !{!344}
!344 = !DIGlobalVariable(name: "commentsyms", scope: !0, file: !1, line: 53, type: !345, isLocal: true, isDefinition: true, variable: [3 x i8]* @commentsyms)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, align: 8, elements: !145)
!346 = !{i32 2, !"Dwarf Version", i32 2}
!347 = !{i32 2, !"Debug Info Version", i32 700000003}
!348 = !{i32 1, !"PIC Level", i32 2}
!349 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!350 = !DIExpression()
!351 = !DILocation(line: 83, column: 20, scope: !7)
!352 = !DILocation(line: 88, column: 12, scope: !7)
!353 = !DILocation(line: 89, column: 3, scope: !7)
!354 = !DILocation(line: 89, column: 12, scope: !7)
!355 = !DILocation(line: 90, column: 3, scope: !7)
!356 = !DILocation(line: 90, column: 12, scope: !7)
!357 = !DILocation(line: 94, column: 6, scope: !7)
!358 = !DILocation(line: 107, column: 12, scope: !7)
!359 = !DILocation(line: 108, column: 12, scope: !7)
!360 = !DILocation(line: 109, column: 3, scope: !7)
!361 = !DILocation(line: 116, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !7, file: !1, line: 116, column: 7)
!363 = !{!364, !365, i64 0}
!364 = !{!"msafile_struct", !365, i64 0, !365, i64 8, !368, i64 16, !365, i64 24, !368, i64 32, !365, i64 40, !368, i64 48, !368, i64 52, !368, i64 56}
!365 = !{!"any pointer", !366, i64 0}
!366 = !{!"omnipotent char", !367, i64 0}
!367 = !{!"Simple C/C++ TBAA"}
!368 = !{!"int", !366, i64 0}
!369 = !DILocation(line: 116, column: 7, scope: !362)
!370 = !DILocation(line: 116, column: 7, scope: !7)
!371 = !DILocation(line: 117, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !7, file: !1, line: 117, column: 7)
!373 = !{!364, !368, i64 48}
!374 = !DILocation(line: 117, column: 7, scope: !372)
!375 = !DILocation(line: 117, column: 20, scope: !372)
!376 = !DILocation(line: 117, column: 28, scope: !372)
!377 = !{!364, !368, i64 52}
!378 = !DILocation(line: 117, column: 23, scope: !372)
!379 = !DILocation(line: 117, column: 7, scope: !7)
!380 = !DILocation(line: 118, column: 5, scope: !372)
!381 = !DILocation(line: 119, column: 16, scope: !7)
!382 = !DILocation(line: 86, column: 12, scope: !7)
!383 = !DILocation(line: 109, column: 25, scope: !7)
!384 = !DILocation(line: 109, column: 12, scope: !7)
!385 = !DILocation(line: 128, column: 3, scope: !7)
!386 = !DILocation(line: 133, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 133, column: 11)
!388 = distinct !DILexicalBlock(scope: !7, file: !1, line: 132, column: 5)
!389 = !DILocation(line: 133, column: 41, scope: !387)
!390 = !DILocation(line: 133, column: 11, scope: !388)
!391 = !DILocation(line: 134, column: 16, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !1, line: 134, column: 2)
!393 = !{!368, !368, i64 0}
!394 = !DILocation(line: 134, column: 32, scope: !392)
!395 = !DILocation(line: 135, column: 7, scope: !388)
!396 = !DILocation(line: 136, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !388, file: !1, line: 136, column: 11)
!398 = !{!366, !366, i64 0}
!399 = !DILocation(line: 136, column: 19, scope: !397)
!400 = !DILocation(line: 136, column: 11, scope: !388)
!401 = !DILocation(line: 138, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 138, column: 13)
!403 = distinct !DILexicalBlock(scope: !397, file: !1, line: 137, column: 2)
!404 = !DILocation(line: 138, column: 43, scope: !402)
!405 = !DILocation(line: 138, column: 13, scope: !403)
!406 = !DILocation(line: 139, column: 13, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !1, line: 139, column: 13)
!408 = !DILocation(line: 139, column: 43, scope: !407)
!409 = !DILocation(line: 139, column: 13, scope: !402)
!410 = !DILocation(line: 142, column: 18, scope: !7)
!411 = !DILocation(line: 96, column: 12, scope: !7)
!412 = !DILocation(line: 142, column: 46, scope: !7)
!413 = !DILocation(line: 142, column: 54, scope: !7)
!414 = !DILocation(line: 143, column: 24, scope: !7)
!415 = !DILocation(line: 143, column: 4, scope: !7)
!416 = !DILocation(line: 143, column: 31, scope: !7)
!417 = !DILocation(line: 141, column: 5, scope: !388)
!418 = !DILocation(line: 147, column: 11, scope: !7)
!419 = !DILocation(line: 147, column: 10, scope: !7)
!420 = !DILocation(line: 147, column: 3, scope: !7)
!421 = !DILocation(line: 164, column: 15, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 163, column: 10)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 162, column: 4)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 161, column: 6)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 159, column: 7)
!426 = distinct !DILexicalBlock(scope: !7, file: !1, line: 148, column: 5)
!427 = !DILocation(line: 164, column: 22, scope: !422)
!428 = !DILocation(line: 183, column: 15, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 183, column: 10)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 180, column: 4)
!431 = distinct !DILexicalBlock(scope: !425, file: !1, line: 179, column: 6)
!432 = !DILocation(line: 190, column: 15, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !1, line: 190, column: 10)
!434 = !DILocation(line: 239, column: 33, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 239, column: 3)
!436 = distinct !DILexicalBlock(scope: !7, file: !1, line: 239, column: 3)
!437 = !DILocation(line: 239, column: 3, scope: !436)
!438 = !DILocation(line: 150, column: 20, scope: !439)
!439 = distinct !DILexicalBlock(scope: !426, file: !1, line: 150, column: 11)
!440 = !DILocation(line: 150, column: 11, scope: !426)
!441 = !DILocation(line: 151, column: 34, scope: !439)
!442 = !DILocation(line: 151, column: 2, scope: !439)
!443 = !DILocation(line: 153, column: 34, scope: !439)
!444 = !DILocation(line: 151, column: 11, scope: !439)
!445 = !DILocation(line: 154, column: 24, scope: !426)
!446 = !DILocation(line: 154, column: 29, scope: !426)
!447 = !{!448, !368, i64 0}
!448 = !{!"block_struc", !368, i64 0, !368, i64 4}
!449 = !DILocation(line: 155, column: 24, scope: !426)
!450 = !DILocation(line: 155, column: 29, scope: !426)
!451 = !{!448, !368, i64 4}
!452 = !DILocation(line: 98, column: 12, scope: !7)
!453 = !DILocation(line: 158, column: 19, scope: !426)
!454 = !DILocation(line: 158, column: 7, scope: !426)
!455 = !DILocation(line: 161, column: 6, scope: !425)
!456 = !DILocation(line: 163, column: 18, scope: !422)
!457 = !DILocation(line: 163, column: 10, scope: !423)
!458 = !DILocation(line: 164, column: 35, scope: !422)
!459 = !DILocation(line: 164, column: 8, scope: !422)
!460 = !DILocation(line: 166, column: 35, scope: !422)
!461 = !{!462, !365, i64 40}
!462 = !{!"aliinfo_s", !368, i64 0, !368, i64 4, !368, i64 8, !365, i64 16, !365, i64 24, !365, i64 32, !365, i64 40, !365, i64 48, !365, i64 56, !365, i64 64, !365, i64 72, !463, i64 80, !463, i64 84, !463, i64 88, !463, i64 92, !463, i64 96, !463, i64 100}
!463 = !{!"float", !366, i64 0}
!464 = !DILocation(line: 168, column: 29, scope: !423)
!465 = !DILocation(line: 168, column: 35, scope: !423)
!466 = !{!467, !368, i64 0}
!467 = !{!"seqinfo_s", !368, i64 0, !366, i64 4, !366, i64 68, !366, i64 132, !366, i64 196, !368, i64 324, !368, i64 328, !368, i64 332, !368, i64 336, !368, i64 340, !365, i64 344, !365, i64 352}
!468 = !DILocation(line: 169, column: 25, scope: !423)
!469 = !DILocation(line: 169, column: 6, scope: !423)
!470 = !DILocation(line: 170, column: 4, scope: !423)
!471 = !DILocation(line: 173, column: 24, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 173, column: 10)
!473 = distinct !DILexicalBlock(scope: !424, file: !1, line: 172, column: 4)
!474 = !DILocation(line: 173, column: 17, scope: !472)
!475 = !DILocation(line: 173, column: 10, scope: !472)
!476 = !DILocation(line: 173, column: 52, scope: !472)
!477 = !DILocation(line: 103, column: 12, scope: !7)
!478 = !DILocation(line: 173, column: 10, scope: !473)
!479 = !DILocation(line: 179, column: 14, scope: !431)
!480 = !DILocation(line: 97, column: 12, scope: !7)
!481 = !DILocation(line: 179, column: 40, scope: !431)
!482 = !DILocation(line: 179, column: 6, scope: !425)
!483 = !DILocation(line: 183, column: 43, scope: !429)
!484 = !DILocation(line: 183, column: 26, scope: !429)
!485 = !DILocation(line: 183, column: 24, scope: !429)
!486 = !DILocation(line: 183, column: 10, scope: !430)
!487 = !DILocation(line: 184, column: 32, scope: !429)
!488 = !DILocation(line: 184, column: 30, scope: !429)
!489 = !DILocation(line: 184, column: 8, scope: !429)
!490 = !DILocation(line: 186, column: 27, scope: !491)
!491 = distinct !DILexicalBlock(scope: !430, file: !1, line: 186, column: 6)
!492 = !DILocation(line: 186, column: 42, scope: !491)
!493 = !DILocation(line: 186, column: 11, scope: !491)
!494 = !DILocation(line: 187, column: 23, scope: !495)
!495 = distinct !DILexicalBlock(scope: !491, file: !1, line: 186, column: 6)
!496 = !DILocation(line: 187, column: 4, scope: !495)
!497 = !DILocation(line: 187, column: 30, scope: !495)
!498 = !DILocation(line: 188, column: 9, scope: !495)
!499 = !DILocation(line: 186, column: 6, scope: !491)
!500 = !DILocation(line: 190, column: 43, scope: !433)
!501 = !DILocation(line: 190, column: 26, scope: !433)
!502 = !DILocation(line: 190, column: 24, scope: !433)
!503 = !DILocation(line: 190, column: 10, scope: !430)
!504 = !DILocation(line: 191, column: 32, scope: !433)
!505 = !DILocation(line: 191, column: 30, scope: !433)
!506 = !DILocation(line: 191, column: 8, scope: !433)
!507 = !DILocation(line: 197, column: 10, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 197, column: 10)
!509 = distinct !DILexicalBlock(scope: !425, file: !1, line: 196, column: 4)
!510 = !DILocation(line: 197, column: 40, scope: !508)
!511 = !DILocation(line: 197, column: 10, scope: !509)
!512 = !DILocation(line: 199, column: 6, scope: !509)
!513 = !DILocation(line: 201, column: 15, scope: !514)
!514 = distinct !DILexicalBlock(scope: !509, file: !1, line: 201, column: 15)
!515 = !DILocation(line: 201, column: 45, scope: !514)
!516 = !DILocation(line: 201, column: 15, scope: !509)
!517 = !DILocation(line: 201, column: 58, scope: !514)
!518 = !DILocation(line: 201, column: 76, scope: !514)
!519 = !DILocation(line: 201, column: 82, scope: !514)
!520 = !DILocation(line: 201, column: 51, scope: !514)
!521 = !DILocation(line: 202, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !514, file: !1, line: 202, column: 15)
!523 = !DILocation(line: 202, column: 45, scope: !522)
!524 = !DILocation(line: 202, column: 15, scope: !514)
!525 = !DILocation(line: 202, column: 58, scope: !522)
!526 = !DILocation(line: 202, column: 76, scope: !522)
!527 = !DILocation(line: 202, column: 82, scope: !522)
!528 = !DILocation(line: 202, column: 51, scope: !522)
!529 = !DILocation(line: 203, column: 15, scope: !530)
!530 = distinct !DILexicalBlock(scope: !522, file: !1, line: 203, column: 15)
!531 = !DILocation(line: 203, column: 45, scope: !530)
!532 = !DILocation(line: 203, column: 15, scope: !522)
!533 = !DILocation(line: 204, column: 15, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 204, column: 15)
!535 = !DILocation(line: 204, column: 45, scope: !534)
!536 = !DILocation(line: 204, column: 15, scope: !530)
!537 = !DILocation(line: 206, column: 18, scope: !538)
!538 = distinct !DILexicalBlock(scope: !509, file: !1, line: 206, column: 10)
!539 = !DILocation(line: 206, column: 46, scope: !538)
!540 = !DILocation(line: 206, column: 10, scope: !509)
!541 = !DILocation(line: 208, column: 33, scope: !425)
!542 = !DILocation(line: 208, column: 13, scope: !425)
!543 = !DILocation(line: 208, column: 40, scope: !425)
!544 = !DILocation(line: 208, column: 4, scope: !509)
!545 = !DILocation(line: 213, column: 11, scope: !426)
!546 = !DILocation(line: 215, column: 24, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 215, column: 16)
!548 = distinct !DILexicalBlock(scope: !426, file: !1, line: 213, column: 11)
!549 = !DILocation(line: 215, column: 16, scope: !548)
!550 = !DILocation(line: 216, column: 2, scope: !547)
!551 = !DILocation(line: 223, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !1, line: 223, column: 8)
!553 = distinct !DILexicalBlock(scope: !426, file: !1, line: 222, column: 2)
!554 = !DILocation(line: 223, column: 38, scope: !552)
!555 = !DILocation(line: 223, column: 8, scope: !553)
!556 = !DILocation(line: 224, column: 4, scope: !553)
!557 = !DILocation(line: 226, column: 22, scope: !426)
!558 = !DILocation(line: 226, column: 50, scope: !426)
!559 = !DILocation(line: 226, column: 58, scope: !426)
!560 = !DILocation(line: 227, column: 28, scope: !426)
!561 = !DILocation(line: 227, column: 8, scope: !426)
!562 = !DILocation(line: 227, column: 35, scope: !426)
!563 = !DILocation(line: 225, column: 2, scope: !553)
!564 = !DILocation(line: 240, column: 31, scope: !435)
!565 = !DILocation(line: 240, column: 56, scope: !435)
!566 = !DILocation(line: 240, column: 36, scope: !435)
!567 = !DILocation(line: 240, column: 61, scope: !435)
!568 = !DILocation(line: 240, column: 10, scope: !435)
!569 = !DILocation(line: 102, column: 12, scope: !7)
!570 = !DILocation(line: 242, column: 3, scope: !7)
!571 = !DILocation(line: 247, column: 25, scope: !7)
!572 = !DILocation(line: 247, column: 15, scope: !7)
!573 = !DILocation(line: 87, column: 12, scope: !7)
!574 = !DILocation(line: 248, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !7, file: !1, line: 248, column: 7)
!576 = !DILocation(line: 248, column: 7, scope: !7)
!577 = !DILocation(line: 249, column: 26, scope: !575)
!578 = !DILocation(line: 249, column: 12, scope: !575)
!579 = !DILocation(line: 249, column: 15, scope: !575)
!580 = !{!462, !365, i64 24}
!581 = !DILocation(line: 249, column: 5, scope: !575)
!582 = !DILocation(line: 250, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !7, file: !1, line: 250, column: 7)
!584 = !DILocation(line: 250, column: 7, scope: !7)
!585 = !DILocation(line: 251, column: 26, scope: !583)
!586 = !DILocation(line: 251, column: 12, scope: !583)
!587 = !DILocation(line: 251, column: 15, scope: !583)
!588 = !{!462, !365, i64 32}
!589 = !DILocation(line: 251, column: 5, scope: !583)
!590 = !DILocation(line: 255, column: 17, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 255, column: 3)
!592 = distinct !DILexicalBlock(scope: !7, file: !1, line: 255, column: 3)
!593 = !DILocation(line: 255, column: 3, scope: !592)
!594 = !DILocation(line: 338, column: 28, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 338, column: 8)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 334, column: 2)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 333, column: 16)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 321, column: 16)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 309, column: 16)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 297, column: 16)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 295, column: 16)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 293, column: 16)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 291, column: 16)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 289, column: 11)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 283, column: 5)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 282, column: 3)
!607 = distinct !DILexicalBlock(scope: !7, file: !1, line: 282, column: 3)
!608 = !DILocation(line: 257, column: 31, scope: !609)
!609 = distinct !DILexicalBlock(scope: !591, file: !1, line: 256, column: 5)
!610 = !DILocation(line: 258, column: 18, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !1, line: 258, column: 11)
!612 = !DILocation(line: 257, column: 7, scope: !609)
!613 = !DILocation(line: 257, column: 20, scope: !609)
!614 = !{!365, !365, i64 0}
!615 = !DILocation(line: 258, column: 28, scope: !611)
!616 = !DILocation(line: 258, column: 34, scope: !611)
!617 = !DILocation(line: 258, column: 11, scope: !609)
!618 = !DILocation(line: 259, column: 33, scope: !611)
!619 = !DILocation(line: 259, column: 9, scope: !611)
!620 = !DILocation(line: 259, column: 19, scope: !611)
!621 = !DILocation(line: 259, column: 22, scope: !611)
!622 = !{!467, !365, i64 344}
!623 = !DILocation(line: 260, column: 28, scope: !624)
!624 = distinct !DILexicalBlock(scope: !609, file: !1, line: 260, column: 11)
!625 = !DILocation(line: 259, column: 2, scope: !611)
!626 = !DILocation(line: 260, column: 34, scope: !624)
!627 = !DILocation(line: 260, column: 11, scope: !609)
!628 = !DILocation(line: 261, column: 33, scope: !624)
!629 = !DILocation(line: 261, column: 9, scope: !624)
!630 = !DILocation(line: 261, column: 19, scope: !624)
!631 = !DILocation(line: 261, column: 22, scope: !624)
!632 = !{!467, !365, i64 352}
!633 = !DILocation(line: 261, column: 2, scope: !624)
!634 = !DILocation(line: 264, column: 10, scope: !7)
!635 = !DILocation(line: 264, column: 15, scope: !7)
!636 = !{!462, !368, i64 4}
!637 = !DILocation(line: 265, column: 10, scope: !7)
!638 = !DILocation(line: 265, column: 15, scope: !7)
!639 = !{!462, !368, i64 8}
!640 = !DILocation(line: 266, column: 27, scope: !7)
!641 = !DILocation(line: 266, column: 17, scope: !7)
!642 = !DILocation(line: 266, column: 10, scope: !7)
!643 = !DILocation(line: 266, column: 15, scope: !7)
!644 = !{!462, !365, i64 16}
!645 = !DILocation(line: 267, column: 3, scope: !7)
!646 = !DILocation(line: 104, column: 12, scope: !7)
!647 = !DILocation(line: 290, column: 9, scope: !604)
!648 = !DILocation(line: 292, column: 9, scope: !603)
!649 = !DILocation(line: 294, column: 9, scope: !602)
!650 = !DILocation(line: 296, column: 9, scope: !601)
!651 = !DILocation(line: 301, column: 11, scope: !652)
!652 = distinct !DILexicalBlock(scope: !600, file: !1, line: 298, column: 2)
!653 = !DILocation(line: 305, column: 11, scope: !652)
!654 = !DILocation(line: 307, column: 11, scope: !652)
!655 = !DILocation(line: 313, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !599, file: !1, line: 310, column: 2)
!657 = !DILocation(line: 317, column: 11, scope: !656)
!658 = !DILocation(line: 325, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !598, file: !1, line: 322, column: 2)
!660 = !DILocation(line: 329, column: 11, scope: !659)
!661 = !DILocation(line: 282, column: 3, scope: !7)
!662 = !DILocation(line: 284, column: 11, scope: !663)
!663 = distinct !DILexicalBlock(scope: !605, file: !1, line: 284, column: 11)
!664 = !DILocation(line: 284, column: 41, scope: !663)
!665 = !DILocation(line: 284, column: 11, scope: !605)
!666 = !DILocation(line: 285, column: 2, scope: !663)
!667 = !DILocation(line: 286, column: 7, scope: !605)
!668 = !DILocation(line: 287, column: 19, scope: !669)
!669 = distinct !DILexicalBlock(scope: !605, file: !1, line: 287, column: 11)
!670 = !DILocation(line: 287, column: 47, scope: !669)
!671 = !DILocation(line: 287, column: 11, scope: !605)
!672 = !DILocation(line: 289, column: 11, scope: !604)
!673 = !DILocation(line: 289, column: 32, scope: !604)
!674 = !DILocation(line: 289, column: 38, scope: !604)
!675 = !DILocation(line: 289, column: 49, scope: !604)
!676 = !DILocation(line: 289, column: 69, scope: !604)
!677 = !DILocation(line: 289, column: 11, scope: !605)
!678 = !DILocation(line: 290, column: 14, scope: !604)
!679 = !DILocation(line: 290, column: 12, scope: !604)
!680 = !{!462, !365, i64 72}
!681 = !DILocation(line: 290, column: 2, scope: !604)
!682 = !DILocation(line: 291, column: 16, scope: !603)
!683 = !DILocation(line: 291, column: 37, scope: !603)
!684 = !DILocation(line: 291, column: 42, scope: !603)
!685 = !DILocation(line: 291, column: 53, scope: !603)
!686 = !DILocation(line: 291, column: 73, scope: !603)
!687 = !DILocation(line: 291, column: 16, scope: !604)
!688 = !DILocation(line: 292, column: 16, scope: !603)
!689 = !DILocation(line: 292, column: 14, scope: !603)
!690 = !{!462, !365, i64 48}
!691 = !DILocation(line: 292, column: 2, scope: !603)
!692 = !DILocation(line: 293, column: 16, scope: !602)
!693 = !DILocation(line: 293, column: 37, scope: !602)
!694 = !DILocation(line: 293, column: 42, scope: !602)
!695 = !DILocation(line: 293, column: 53, scope: !602)
!696 = !DILocation(line: 293, column: 73, scope: !602)
!697 = !DILocation(line: 293, column: 16, scope: !603)
!698 = !DILocation(line: 294, column: 16, scope: !602)
!699 = !DILocation(line: 294, column: 14, scope: !602)
!700 = !{!462, !365, i64 64}
!701 = !DILocation(line: 294, column: 2, scope: !602)
!702 = !DILocation(line: 295, column: 16, scope: !601)
!703 = !DILocation(line: 295, column: 37, scope: !601)
!704 = !DILocation(line: 295, column: 42, scope: !601)
!705 = !DILocation(line: 295, column: 53, scope: !601)
!706 = !DILocation(line: 295, column: 73, scope: !601)
!707 = !DILocation(line: 295, column: 16, scope: !602)
!708 = !DILocation(line: 296, column: 16, scope: !601)
!709 = !DILocation(line: 296, column: 14, scope: !601)
!710 = !{!462, !365, i64 56}
!711 = !DILocation(line: 296, column: 2, scope: !601)
!712 = !DILocation(line: 297, column: 16, scope: !600)
!713 = !DILocation(line: 297, column: 37, scope: !600)
!714 = !DILocation(line: 297, column: 16, scope: !601)
!715 = !DILocation(line: 299, column: 16, scope: !716)
!716 = distinct !DILexicalBlock(scope: !652, file: !1, line: 299, column: 8)
!717 = !DILocation(line: 299, column: 42, scope: !716)
!718 = !DILocation(line: 299, column: 8, scope: !652)
!719 = !DILocation(line: 300, column: 6, scope: !716)
!720 = !DILocation(line: 301, column: 17, scope: !652)
!721 = !DILocation(line: 301, column: 15, scope: !652)
!722 = !{!462, !463, i64 96}
!723 = !DILocation(line: 303, column: 16, scope: !724)
!724 = distinct !DILexicalBlock(scope: !652, file: !1, line: 303, column: 8)
!725 = !DILocation(line: 303, column: 42, scope: !724)
!726 = !DILocation(line: 303, column: 8, scope: !652)
!727 = !DILocation(line: 304, column: 6, scope: !724)
!728 = !DILocation(line: 305, column: 17, scope: !652)
!729 = !DILocation(line: 305, column: 15, scope: !652)
!730 = !{!462, !463, i64 100}
!731 = !DILocation(line: 307, column: 17, scope: !652)
!732 = !{!462, !368, i64 0}
!733 = !DILocation(line: 308, column: 2, scope: !652)
!734 = !DILocation(line: 309, column: 16, scope: !599)
!735 = !DILocation(line: 309, column: 37, scope: !599)
!736 = !DILocation(line: 309, column: 16, scope: !600)
!737 = !DILocation(line: 311, column: 16, scope: !738)
!738 = distinct !DILexicalBlock(scope: !656, file: !1, line: 311, column: 8)
!739 = !DILocation(line: 311, column: 42, scope: !738)
!740 = !DILocation(line: 311, column: 8, scope: !656)
!741 = !DILocation(line: 312, column: 6, scope: !738)
!742 = !DILocation(line: 313, column: 17, scope: !656)
!743 = !DILocation(line: 313, column: 15, scope: !656)
!744 = !{!462, !463, i64 80}
!745 = !DILocation(line: 315, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !656, file: !1, line: 315, column: 8)
!747 = !DILocation(line: 315, column: 42, scope: !746)
!748 = !DILocation(line: 315, column: 8, scope: !656)
!749 = !DILocation(line: 316, column: 6, scope: !746)
!750 = !DILocation(line: 317, column: 17, scope: !656)
!751 = !DILocation(line: 317, column: 15, scope: !656)
!752 = !{!462, !463, i64 84}
!753 = !DILocation(line: 319, column: 17, scope: !656)
!754 = !DILocation(line: 320, column: 2, scope: !656)
!755 = !DILocation(line: 321, column: 16, scope: !598)
!756 = !DILocation(line: 321, column: 37, scope: !598)
!757 = !DILocation(line: 321, column: 16, scope: !599)
!758 = !DILocation(line: 323, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !659, file: !1, line: 323, column: 8)
!760 = !DILocation(line: 323, column: 42, scope: !759)
!761 = !DILocation(line: 323, column: 8, scope: !659)
!762 = !DILocation(line: 324, column: 6, scope: !759)
!763 = !DILocation(line: 325, column: 17, scope: !659)
!764 = !DILocation(line: 325, column: 15, scope: !659)
!765 = !{!462, !463, i64 88}
!766 = !DILocation(line: 327, column: 16, scope: !767)
!767 = distinct !DILexicalBlock(scope: !659, file: !1, line: 327, column: 8)
!768 = !DILocation(line: 327, column: 42, scope: !767)
!769 = !DILocation(line: 327, column: 8, scope: !659)
!770 = !DILocation(line: 328, column: 6, scope: !767)
!771 = !DILocation(line: 329, column: 17, scope: !659)
!772 = !DILocation(line: 329, column: 15, scope: !659)
!773 = !{!462, !463, i64 92}
!774 = !DILocation(line: 331, column: 17, scope: !659)
!775 = !DILocation(line: 332, column: 2, scope: !659)
!776 = !DILocation(line: 333, column: 16, scope: !597)
!777 = !DILocation(line: 333, column: 37, scope: !597)
!778 = !DILocation(line: 333, column: 16, scope: !598)
!779 = !DILocation(line: 336, column: 16, scope: !780)
!780 = distinct !DILexicalBlock(scope: !596, file: !1, line: 336, column: 8)
!781 = !DILocation(line: 336, column: 42, scope: !780)
!782 = !DILocation(line: 336, column: 8, scope: !596)
!783 = !DILocation(line: 337, column: 6, scope: !780)
!784 = !DILocation(line: 338, column: 21, scope: !595)
!785 = !DILocation(line: 338, column: 8, scope: !595)
!786 = !DILocation(line: 338, column: 50, scope: !595)
!787 = !DILocation(line: 338, column: 8, scope: !596)
!788 = !DILocation(line: 341, column: 16, scope: !789)
!789 = distinct !DILexicalBlock(scope: !596, file: !1, line: 341, column: 8)
!790 = !DILocation(line: 341, column: 42, scope: !789)
!791 = !DILocation(line: 341, column: 8, scope: !596)
!792 = !DILocation(line: 342, column: 6, scope: !789)
!793 = !DILocation(line: 343, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !596, file: !1, line: 343, column: 8)
!795 = !DILocation(line: 343, column: 8, scope: !596)
!796 = !DILocation(line: 344, column: 6, scope: !794)
!797 = !DILocation(line: 345, column: 26, scope: !596)
!798 = !DILocation(line: 345, column: 11, scope: !596)
!799 = !DILocation(line: 345, column: 4, scope: !596)
!800 = !DILocation(line: 345, column: 24, scope: !596)
!801 = !{!463, !463, i64 0}
!802 = !DILocation(line: 348, column: 16, scope: !803)
!803 = distinct !DILexicalBlock(scope: !596, file: !1, line: 348, column: 8)
!804 = !DILocation(line: 348, column: 42, scope: !803)
!805 = !DILocation(line: 348, column: 8, scope: !596)
!806 = !DILocation(line: 349, column: 6, scope: !803)
!807 = !DILocation(line: 350, column: 30, scope: !596)
!808 = !DILocation(line: 350, column: 23, scope: !596)
!809 = !DILocation(line: 350, column: 4, scope: !596)
!810 = !DILocation(line: 353, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !596, file: !1, line: 353, column: 8)
!812 = !DILocation(line: 353, column: 42, scope: !811)
!813 = !DILocation(line: 353, column: 8, scope: !596)
!814 = !DILocation(line: 354, column: 6, scope: !811)
!815 = !DILocation(line: 355, column: 30, scope: !596)
!816 = !DILocation(line: 355, column: 23, scope: !596)
!817 = !DILocation(line: 355, column: 4, scope: !596)
!818 = !DILocation(line: 358, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !596, file: !1, line: 358, column: 8)
!820 = !DILocation(line: 358, column: 36, scope: !819)
!821 = !DILocation(line: 358, column: 8, scope: !596)
!822 = !DILocation(line: 359, column: 6, scope: !819)
!823 = !DILocation(line: 360, column: 30, scope: !596)
!824 = !DILocation(line: 360, column: 23, scope: !596)
!825 = !DILocation(line: 360, column: 4, scope: !596)
!826 = !DILocation(line: 362, column: 16, scope: !827)
!827 = distinct !DILexicalBlock(scope: !596, file: !1, line: 362, column: 8)
!828 = !DILocation(line: 362, column: 36, scope: !827)
!829 = !DILocation(line: 362, column: 8, scope: !596)
!830 = !DILocation(line: 363, column: 6, scope: !827)
!831 = !DILocation(line: 364, column: 30, scope: !596)
!832 = !DILocation(line: 364, column: 23, scope: !596)
!833 = !DILocation(line: 364, column: 4, scope: !596)
!834 = !DILocation(line: 366, column: 16, scope: !835)
!835 = distinct !DILexicalBlock(scope: !596, file: !1, line: 366, column: 8)
!836 = !DILocation(line: 366, column: 38, scope: !835)
!837 = !DILocation(line: 366, column: 8, scope: !596)
!838 = !DILocation(line: 367, column: 6, scope: !835)
!839 = !DILocation(line: 368, column: 30, scope: !596)
!840 = !DILocation(line: 368, column: 23, scope: !596)
!841 = !DILocation(line: 368, column: 4, scope: !596)
!842 = !DILocation(line: 371, column: 16, scope: !843)
!843 = distinct !DILexicalBlock(scope: !596, file: !1, line: 371, column: 8)
!844 = !DILocation(line: 371, column: 36, scope: !843)
!845 = !DILocation(line: 371, column: 8, scope: !596)
!846 = !DILocation(line: 372, column: 32, scope: !843)
!847 = !DILocation(line: 372, column: 25, scope: !843)
!848 = !DILocation(line: 372, column: 6, scope: !843)
!849 = !DILocation(line: 374, column: 11, scope: !596)
!850 = !DILocation(line: 375, column: 2, scope: !596)
!851 = !DILocation(line: 376, column: 16, scope: !852)
!852 = distinct !DILexicalBlock(scope: !597, file: !1, line: 376, column: 16)
!853 = !DILocation(line: 376, column: 37, scope: !852)
!854 = !DILocation(line: 376, column: 16, scope: !597)
!855 = !DILocation(line: 377, column: 16, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !1, line: 377, column: 16)
!857 = !DILocation(line: 377, column: 37, scope: !856)
!858 = !DILocation(line: 377, column: 16, scope: !852)
!859 = !DILocation(line: 378, column: 36, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !1, line: 378, column: 16)
!861 = !DILocation(line: 378, column: 16, scope: !860)
!862 = !DILocation(line: 378, column: 43, scope: !860)
!863 = !DILocation(line: 378, column: 16, scope: !856)
!864 = !DILocation(line: 101, column: 12, scope: !7)
!865 = !DILocation(line: 383, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !7, file: !1, line: 383, column: 3)
!867 = !DILocation(line: 392, column: 41, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !1, line: 392, column: 12)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 391, column: 6)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 390, column: 8)
!871 = distinct !DILexicalBlock(scope: !872, file: !1, line: 388, column: 2)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 384, column: 5)
!873 = distinct !DILexicalBlock(scope: !866, file: !1, line: 383, column: 3)
!874 = !DILocation(line: 400, column: 41, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 400, column: 12)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 399, column: 6)
!877 = distinct !DILexicalBlock(scope: !870, file: !1, line: 398, column: 13)
!878 = !DILocation(line: 387, column: 19, scope: !872)
!879 = !DILocation(line: 387, column: 7, scope: !872)
!880 = !DILocation(line: 442, column: 36, scope: !872)
!881 = !DILocation(line: 442, column: 61, scope: !872)
!882 = !DILocation(line: 393, column: 32, scope: !868)
!883 = !DILocation(line: 393, column: 56, scope: !868)
!884 = !DILocation(line: 459, column: 3, scope: !278)
!885 = !DILocation(line: 476, column: 31, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 476, column: 4)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 476, column: 4)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 475, column: 2)
!889 = distinct !DILexicalBlock(scope: !276, file: !1, line: 474, column: 11)
!890 = !DILocation(line: 390, column: 8, scope: !870)
!891 = !DILocation(line: 390, column: 29, scope: !870)
!892 = !DILocation(line: 390, column: 8, scope: !871)
!893 = !DILocation(line: 392, column: 54, scope: !868)
!894 = !DILocation(line: 392, column: 66, scope: !868)
!895 = !DILocation(line: 392, column: 14, scope: !868)
!896 = !DILocation(line: 392, column: 12, scope: !869)
!897 = !DILocation(line: 394, column: 3, scope: !868)
!898 = !DILocation(line: 398, column: 13, scope: !877)
!899 = !DILocation(line: 398, column: 34, scope: !877)
!900 = !DILocation(line: 398, column: 13, scope: !870)
!901 = !DILocation(line: 400, column: 54, scope: !875)
!902 = !DILocation(line: 400, column: 66, scope: !875)
!903 = !DILocation(line: 401, column: 32, scope: !875)
!904 = !DILocation(line: 401, column: 56, scope: !875)
!905 = !DILocation(line: 400, column: 14, scope: !875)
!906 = !DILocation(line: 400, column: 12, scope: !876)
!907 = !DILocation(line: 402, column: 3, scope: !875)
!908 = !DILocation(line: 405, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !877, file: !1, line: 405, column: 13)
!910 = !DILocation(line: 405, column: 34, scope: !909)
!911 = !DILocation(line: 405, column: 13, scope: !877)
!912 = !DILocation(line: 407, column: 54, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 407, column: 12)
!914 = distinct !DILexicalBlock(scope: !909, file: !1, line: 406, column: 6)
!915 = !DILocation(line: 407, column: 34, scope: !913)
!916 = !DILocation(line: 407, column: 41, scope: !913)
!917 = !DILocation(line: 407, column: 58, scope: !913)
!918 = !DILocation(line: 407, column: 71, scope: !913)
!919 = !DILocation(line: 407, column: 83, scope: !913)
!920 = !DILocation(line: 408, column: 32, scope: !913)
!921 = !DILocation(line: 409, column: 24, scope: !913)
!922 = !DILocation(line: 407, column: 14, scope: !913)
!923 = !DILocation(line: 407, column: 12, scope: !914)
!924 = !DILocation(line: 410, column: 3, scope: !913)
!925 = !DILocation(line: 414, column: 13, scope: !926)
!926 = distinct !DILexicalBlock(scope: !909, file: !1, line: 414, column: 13)
!927 = !DILocation(line: 414, column: 34, scope: !926)
!928 = !DILocation(line: 414, column: 13, scope: !909)
!929 = !DILocation(line: 416, column: 54, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 416, column: 12)
!931 = distinct !DILexicalBlock(scope: !926, file: !1, line: 415, column: 6)
!932 = !DILocation(line: 416, column: 34, scope: !930)
!933 = !DILocation(line: 416, column: 41, scope: !930)
!934 = !DILocation(line: 416, column: 58, scope: !930)
!935 = !DILocation(line: 416, column: 71, scope: !930)
!936 = !DILocation(line: 416, column: 83, scope: !930)
!937 = !DILocation(line: 417, column: 32, scope: !930)
!938 = !DILocation(line: 418, column: 24, scope: !930)
!939 = !DILocation(line: 416, column: 14, scope: !930)
!940 = !DILocation(line: 416, column: 12, scope: !931)
!941 = !DILocation(line: 419, column: 3, scope: !930)
!942 = !DILocation(line: 422, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !926, file: !1, line: 422, column: 13)
!944 = !DILocation(line: 422, column: 36, scope: !943)
!945 = !DILocation(line: 422, column: 13, scope: !926)
!946 = !DILocation(line: 424, column: 34, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 424, column: 12)
!948 = distinct !DILexicalBlock(scope: !943, file: !1, line: 423, column: 6)
!949 = !DILocation(line: 424, column: 58, scope: !947)
!950 = !DILocation(line: 424, column: 70, scope: !947)
!951 = !DILocation(line: 425, column: 32, scope: !947)
!952 = !DILocation(line: 425, column: 56, scope: !947)
!953 = !DILocation(line: 424, column: 14, scope: !947)
!954 = !DILocation(line: 424, column: 12, scope: !948)
!955 = !DILocation(line: 426, column: 3, scope: !947)
!956 = !DILocation(line: 427, column: 14, scope: !948)
!957 = !DILocation(line: 428, column: 6, scope: !948)
!958 = !DILocation(line: 434, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 434, column: 12)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 432, column: 6)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 431, column: 4)
!962 = distinct !DILexicalBlock(scope: !871, file: !1, line: 431, column: 4)
!963 = !DILocation(line: 434, column: 42, scope: !959)
!964 = !DILocation(line: 434, column: 12, scope: !960)
!965 = !DILocation(line: 435, column: 8, scope: !960)
!966 = !DILocation(line: 436, column: 20, scope: !967)
!967 = distinct !DILexicalBlock(scope: !960, file: !1, line: 436, column: 12)
!968 = !DILocation(line: 436, column: 48, scope: !967)
!969 = !DILocation(line: 436, column: 12, scope: !960)
!970 = !DILocation(line: 437, column: 12, scope: !971)
!971 = distinct !DILexicalBlock(scope: !960, file: !1, line: 437, column: 12)
!972 = !DILocation(line: 437, column: 37, scope: !971)
!973 = !DILocation(line: 437, column: 12, scope: !960)
!974 = !DILocation(line: 438, column: 32, scope: !975)
!975 = distinct !DILexicalBlock(scope: !960, file: !1, line: 438, column: 12)
!976 = !DILocation(line: 438, column: 12, scope: !975)
!977 = !DILocation(line: 438, column: 39, scope: !975)
!978 = !DILocation(line: 438, column: 12, scope: !960)
!979 = !DILocation(line: 442, column: 41, scope: !872)
!980 = !DILocation(line: 442, column: 66, scope: !872)
!981 = !DILocation(line: 442, column: 15, scope: !872)
!982 = !DILocation(line: 105, column: 12, scope: !7)
!983 = !DILocation(line: 447, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 447, column: 8)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 446, column: 2)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 445, column: 7)
!987 = distinct !DILexicalBlock(scope: !872, file: !1, line: 445, column: 7)
!988 = !DILocation(line: 447, column: 38, scope: !984)
!989 = !DILocation(line: 447, column: 8, scope: !985)
!990 = !DILocation(line: 448, column: 4, scope: !985)
!991 = !DILocation(line: 449, column: 16, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !1, line: 449, column: 8)
!993 = !DILocation(line: 449, column: 44, scope: !992)
!994 = !DILocation(line: 449, column: 8, scope: !985)
!995 = !DILocation(line: 450, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !985, file: !1, line: 450, column: 8)
!997 = !DILocation(line: 450, column: 33, scope: !996)
!998 = !DILocation(line: 450, column: 8, scope: !985)
!999 = !DILocation(line: 451, column: 28, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !985, file: !1, line: 451, column: 8)
!1001 = !DILocation(line: 451, column: 8, scope: !1000)
!1002 = !DILocation(line: 451, column: 35, scope: !1000)
!1003 = !DILocation(line: 451, column: 8, scope: !985)
!1004 = !DILocation(line: 463, column: 18, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !276, file: !1, line: 463, column: 11)
!1006 = !DILocation(line: 463, column: 33, scope: !1005)
!1007 = !DILocation(line: 463, column: 39, scope: !1005)
!1008 = !DILocation(line: 463, column: 11, scope: !276)
!1009 = !DILocation(line: 465, column: 4, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 465, column: 4)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 464, column: 2)
!1012 = !DILocation(line: 466, column: 12, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 466, column: 10)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 465, column: 4)
!1015 = !DILocation(line: 468, column: 43, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 467, column: 8)
!1017 = !DILocation(line: 468, column: 58, scope: !1016)
!1018 = !DILocation(line: 468, column: 36, scope: !1016)
!1019 = !DILocation(line: 468, column: 3, scope: !1016)
!1020 = !DILocation(line: 468, column: 34, scope: !1016)
!1021 = !DILocation(line: 469, column: 7, scope: !1016)
!1022 = !DILocation(line: 461, column: 17, scope: !276)
!1023 = !DILocation(line: 470, column: 8, scope: !1016)
!1024 = !DILocation(line: 471, column: 11, scope: !1011)
!1025 = !DILocation(line: 471, column: 4, scope: !1011)
!1026 = !DILocation(line: 471, column: 26, scope: !1011)
!1027 = !DILocation(line: 471, column: 35, scope: !1011)
!1028 = !DILocation(line: 474, column: 18, scope: !889)
!1029 = !DILocation(line: 474, column: 33, scope: !889)
!1030 = !DILocation(line: 472, column: 2, scope: !1011)
!1031 = !DILocation(line: 474, column: 39, scope: !889)
!1032 = !DILocation(line: 474, column: 11, scope: !276)
!1033 = !DILocation(line: 476, column: 4, scope: !887)
!1034 = !DILocation(line: 477, column: 12, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !886, file: !1, line: 477, column: 10)
!1036 = !DILocation(line: 479, column: 43, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 478, column: 8)
!1038 = !DILocation(line: 479, column: 58, scope: !1037)
!1039 = !DILocation(line: 479, column: 36, scope: !1037)
!1040 = !DILocation(line: 479, column: 3, scope: !1037)
!1041 = !DILocation(line: 479, column: 34, scope: !1037)
!1042 = !DILocation(line: 480, column: 7, scope: !1037)
!1043 = !DILocation(line: 481, column: 8, scope: !1037)
!1044 = !DILocation(line: 482, column: 11, scope: !888)
!1045 = !DILocation(line: 482, column: 4, scope: !888)
!1046 = !DILocation(line: 482, column: 26, scope: !888)
!1047 = !DILocation(line: 482, column: 35, scope: !888)
!1048 = !DILocation(line: 483, column: 2, scope: !888)
!1049 = !DILocation(line: 487, column: 14, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !7, file: !1, line: 487, column: 7)
!1051 = !DILocation(line: 487, column: 17, scope: !1050)
!1052 = !DILocation(line: 487, column: 7, scope: !7)
!1053 = !DILocation(line: 487, column: 26, scope: !1050)
!1054 = !DILocation(line: 487, column: 42, scope: !1050)
!1055 = !DILocation(line: 488, column: 14, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !7, file: !1, line: 488, column: 7)
!1057 = !DILocation(line: 488, column: 17, scope: !1056)
!1058 = !DILocation(line: 488, column: 7, scope: !7)
!1059 = !DILocation(line: 488, column: 26, scope: !1056)
!1060 = !DILocation(line: 488, column: 42, scope: !1056)
!1061 = !DILocation(line: 489, column: 3, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !7, file: !1, line: 489, column: 3)
!1063 = !DILocation(line: 490, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 489, column: 3)
!1065 = !DILocation(line: 493, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !7, file: !1, line: 493, column: 3)
!1067 = !DILocation(line: 490, column: 36, scope: !1064)
!1068 = !DILocation(line: 106, column: 12, scope: !7)
!1069 = !DILocation(line: 496, column: 19, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 496, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 494, column: 5)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 493, column: 3)
!1073 = !DILocation(line: 496, column: 12, scope: !1070)
!1074 = !DILocation(line: 496, column: 34, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 496, column: 7)
!1076 = !DILocation(line: 496, column: 7, scope: !1070)
!1077 = !DILocation(line: 497, column: 26, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 497, column: 6)
!1079 = !DILocation(line: 497, column: 21, scope: !1078)
!1080 = !DILocation(line: 496, column: 53, scope: !1075)
!1081 = !DILocation(line: 496, column: 7, scope: !1075)
!1082 = !DILocation(line: 498, column: 14, scope: !1071)
!1083 = !DILocation(line: 498, column: 29, scope: !1071)
!1084 = !DILocation(line: 498, column: 36, scope: !1071)
!1085 = !{!467, !368, i64 324}
!1086 = !DILocation(line: 499, column: 29, scope: !1071)
!1087 = !DILocation(line: 499, column: 35, scope: !1071)
!1088 = !DILocation(line: 506, column: 8, scope: !7)
!1089 = !DILocation(line: 506, column: 3, scope: !7)
!1090 = !DILocation(line: 507, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !7, file: !1, line: 507, column: 7)
!1092 = !DILocation(line: 507, column: 7, scope: !7)
!1093 = !DILocation(line: 508, column: 72, scope: !1091)
!1094 = !{!364, !365, i64 8}
!1095 = !DILocation(line: 508, column: 5, scope: !1091)
!1096 = !DILocation(line: 512, column: 9, scope: !7)
!1097 = !DILocation(line: 85, column: 12, scope: !7)
!1098 = !DILocation(line: 513, column: 3, scope: !7)
!1099 = !DILocation(line: 514, column: 3, scope: !7)
!1100 = !DILocation(line: 515, column: 3, scope: !7)
!1101 = !DILocation(line: 516, column: 1, scope: !7)
!1102 = !DILocation(line: 679, column: 46, scope: !329)
!1103 = !DILocation(line: 684, column: 13, scope: !329)
!1104 = !DILocation(line: 681, column: 9, scope: !329)
!1105 = !DILocation(line: 682, column: 9, scope: !329)
!1106 = !DILocation(line: 686, column: 17, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 686, column: 3)
!1108 = distinct !DILexicalBlock(scope: !329, file: !1, line: 686, column: 3)
!1109 = !DILocation(line: 686, column: 3, scope: !1108)
!1110 = !DILocation(line: 689, column: 20, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 689, column: 3)
!1112 = distinct !DILexicalBlock(scope: !329, file: !1, line: 689, column: 3)
!1113 = !DILocation(line: 689, column: 3, scope: !1112)
!1114 = !DILocation(line: 687, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 687, column: 9)
!1116 = !DILocation(line: 687, column: 16, scope: !1115)
!1117 = !DILocation(line: 681, column: 14, scope: !329)
!1118 = !DILocation(line: 687, column: 9, scope: !1107)
!1119 = !DILocation(line: 686, column: 26, scope: !1107)
!1120 = !DILocation(line: 691, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 691, column: 11)
!1122 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 690, column: 5)
!1123 = !DILocation(line: 691, column: 15, scope: !1121)
!1124 = !DILocation(line: 691, column: 11, scope: !1122)
!1125 = !DILocation(line: 692, column: 2, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 691, column: 24)
!1127 = !DILocation(line: 693, column: 2, scope: !1126)
!1128 = !DILocation(line: 695, column: 21, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 695, column: 11)
!1130 = !DILocation(line: 695, column: 11, scope: !1122)
!1131 = !DILocation(line: 696, column: 6, scope: !1129)
!1132 = !DILocation(line: 696, column: 2, scope: !1129)
!1133 = !DILocation(line: 698, column: 28, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 698, column: 16)
!1135 = !DILocation(line: 699, column: 6, scope: !1134)
!1136 = !DILocation(line: 699, column: 2, scope: !1134)
!1137 = !DILocation(line: 702, column: 6, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 701, column: 16)
!1139 = !DILocation(line: 702, column: 2, scope: !1138)
!1140 = !DILocation(line: 705, column: 6, scope: !1138)
!1141 = !DILocation(line: 707, column: 9, scope: !1122)
!1142 = !DILocation(line: 708, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 708, column: 11)
!1144 = !DILocation(line: 708, column: 18, scope: !1143)
!1145 = !DILocation(line: 708, column: 11, scope: !1122)
!1146 = !DILocation(line: 689, column: 30, scope: !1111)
!1147 = !DILocation(line: 711, column: 1, scope: !329)
!1148 = !DILocation(line: 530, column: 18, scope: !286)
!1149 = !DILocation(line: 530, column: 27, scope: !286)
!1150 = !DILocation(line: 532, column: 3, scope: !286)
!1151 = !DILocation(line: 533, column: 1, scope: !286)
!1152 = !DILocation(line: 568, column: 28, scope: !317)
!1153 = !DILocation(line: 568, column: 37, scope: !317)
!1154 = !DILocation(line: 568, column: 46, scope: !317)
!1155 = !DILocation(line: 571, column: 8, scope: !317)
!1156 = !DILocation(line: 576, column: 35, scope: !317)
!1157 = !DILocation(line: 576, column: 31, scope: !317)
!1158 = !DILocation(line: 576, column: 9, scope: !317)
!1159 = !DILocation(line: 573, column: 9, scope: !317)
!1160 = !DILocation(line: 572, column: 8, scope: !317)
!1161 = !DILocation(line: 570, column: 8, scope: !317)
!1162 = !DILocation(line: 584, column: 24, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 584, column: 3)
!1164 = distinct !DILexicalBlock(scope: !317, file: !1, line: 584, column: 3)
!1165 = !{!1166, !368, i64 28}
!1166 = !{!"msa_struct", !365, i64 0, !365, i64 8, !365, i64 16, !368, i64 24, !368, i64 28, !368, i64 32, !368, i64 36, !365, i64 40, !365, i64 48, !365, i64 56, !365, i64 64, !365, i64 72, !365, i64 80, !365, i64 88, !365, i64 96, !365, i64 104, !365, i64 112, !365, i64 120, !366, i64 128, !366, i64 152, !365, i64 176, !368, i64 184, !368, i64 188, !365, i64 192, !365, i64 200, !368, i64 208, !368, i64 212, !365, i64 216, !365, i64 224, !365, i64 232, !368, i64 240, !365, i64 248, !365, i64 256, !365, i64 264, !368, i64 272, !365, i64 280, !365, i64 288, !365, i64 296, !368, i64 304, !365, i64 312, !368, i64 320, !368, i64 324, !365, i64 328, !365, i64 336, !365, i64 344, !368, i64 352}
!1167 = !DILocation(line: 584, column: 17, scope: !1163)
!1168 = !DILocation(line: 584, column: 3, scope: !1164)
!1169 = !DILocation(line: 585, column: 28, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 585, column: 9)
!1171 = !{!1166, !365, i64 8}
!1172 = !DILocation(line: 585, column: 23, scope: !1170)
!1173 = !DILocation(line: 585, column: 16, scope: !1170)
!1174 = !DILocation(line: 585, column: 40, scope: !1170)
!1175 = !DILocation(line: 585, column: 9, scope: !1163)
!1176 = !DILocation(line: 587, column: 17, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !317, file: !1, line: 587, column: 7)
!1178 = !DILocation(line: 587, column: 7, scope: !317)
!1179 = !DILocation(line: 591, column: 25, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 591, column: 3)
!1181 = distinct !DILexicalBlock(scope: !317, file: !1, line: 591, column: 3)
!1182 = !{!1166, !368, i64 184}
!1183 = !DILocation(line: 591, column: 18, scope: !1180)
!1184 = !DILocation(line: 591, column: 3, scope: !1181)
!1185 = !DILocation(line: 592, column: 32, scope: !1180)
!1186 = !{!1166, !365, i64 176}
!1187 = !DILocation(line: 592, column: 27, scope: !1180)
!1188 = !DILocation(line: 592, column: 5, scope: !1180)
!1189 = !DILocation(line: 593, column: 21, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !317, file: !1, line: 593, column: 7)
!1191 = !DILocation(line: 593, column: 7, scope: !317)
!1192 = !DILocation(line: 593, column: 26, scope: !1190)
!1193 = !DILocation(line: 597, column: 12, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !317, file: !1, line: 597, column: 7)
!1195 = !{!1166, !365, i64 40}
!1196 = !DILocation(line: 597, column: 18, scope: !1194)
!1197 = !DILocation(line: 597, column: 7, scope: !317)
!1198 = !DILocation(line: 597, column: 33, scope: !1194)
!1199 = !DILocation(line: 598, column: 12, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !317, file: !1, line: 598, column: 7)
!1201 = !{!1166, !365, i64 56}
!1202 = !DILocation(line: 598, column: 18, scope: !1200)
!1203 = !DILocation(line: 598, column: 7, scope: !317)
!1204 = !DILocation(line: 598, column: 33, scope: !1200)
!1205 = !DILocation(line: 599, column: 12, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !317, file: !1, line: 599, column: 7)
!1207 = !{!1166, !365, i64 48}
!1208 = !DILocation(line: 599, column: 18, scope: !1206)
!1209 = !DILocation(line: 599, column: 7, scope: !317)
!1210 = !DILocation(line: 599, column: 33, scope: !1206)
!1211 = !DILocation(line: 600, column: 12, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !317, file: !1, line: 600, column: 7)
!1213 = !{!1166, !365, i64 64}
!1214 = !DILocation(line: 600, column: 18, scope: !1212)
!1215 = !DILocation(line: 600, column: 7, scope: !317)
!1216 = !DILocation(line: 600, column: 33, scope: !1212)
!1217 = !DILocation(line: 604, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !317, file: !1, line: 604, column: 12)
!1219 = !DILocation(line: 604, column: 47, scope: !1218)
!1220 = !DILocation(line: 604, column: 50, scope: !1218)
!1221 = !DILocation(line: 607, column: 32, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 606, column: 12)
!1223 = !DILocation(line: 604, column: 12, scope: !317)
!1224 = !DILocation(line: 605, column: 66, scope: !1218)
!1225 = !DILocation(line: 605, column: 5, scope: !1218)
!1226 = !DILocation(line: 607, column: 5, scope: !1222)
!1227 = !DILocation(line: 608, column: 12, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !317, file: !1, line: 608, column: 12)
!1229 = !DILocation(line: 608, column: 47, scope: !1228)
!1230 = !DILocation(line: 608, column: 50, scope: !1228)
!1231 = !DILocation(line: 611, column: 32, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 610, column: 12)
!1233 = !DILocation(line: 608, column: 12, scope: !317)
!1234 = !DILocation(line: 609, column: 66, scope: !1228)
!1235 = !DILocation(line: 609, column: 5, scope: !1228)
!1236 = !DILocation(line: 611, column: 5, scope: !1232)
!1237 = !DILocation(line: 612, column: 12, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !317, file: !1, line: 612, column: 12)
!1239 = !DILocation(line: 612, column: 47, scope: !1238)
!1240 = !DILocation(line: 612, column: 50, scope: !1238)
!1241 = !DILocation(line: 615, column: 32, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 614, column: 12)
!1243 = !DILocation(line: 612, column: 12, scope: !317)
!1244 = !DILocation(line: 613, column: 66, scope: !1238)
!1245 = !DILocation(line: 613, column: 5, scope: !1238)
!1246 = !DILocation(line: 615, column: 5, scope: !1242)
!1247 = !DILocation(line: 619, column: 24, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 619, column: 3)
!1249 = distinct !DILexicalBlock(scope: !317, file: !1, line: 619, column: 3)
!1250 = !DILocation(line: 619, column: 17, scope: !1248)
!1251 = !DILocation(line: 619, column: 3, scope: !1249)
!1252 = !DILocation(line: 621, column: 33, scope: !1248)
!1253 = !DILocation(line: 622, column: 11, scope: !1248)
!1254 = !DILocation(line: 624, column: 12, scope: !1248)
!1255 = !DILocation(line: 626, column: 12, scope: !1248)
!1256 = !DILocation(line: 621, column: 28, scope: !1248)
!1257 = !{!1166, !365, i64 16}
!1258 = !DILocation(line: 622, column: 6, scope: !1248)
!1259 = !{!1166, !365, i64 96}
!1260 = !DILocation(line: 624, column: 18, scope: !1248)
!1261 = !DILocation(line: 624, column: 26, scope: !1248)
!1262 = !DILocation(line: 624, column: 29, scope: !1248)
!1263 = !DILocation(line: 624, column: 43, scope: !1248)
!1264 = !DILocation(line: 624, column: 6, scope: !1248)
!1265 = !{!1166, !365, i64 104}
!1266 = !DILocation(line: 626, column: 19, scope: !1248)
!1267 = !DILocation(line: 626, column: 27, scope: !1248)
!1268 = !DILocation(line: 626, column: 30, scope: !1248)
!1269 = !DILocation(line: 626, column: 45, scope: !1248)
!1270 = !DILocation(line: 626, column: 6, scope: !1248)
!1271 = !DILocation(line: 620, column: 5, scope: !1248)
!1272 = !DILocation(line: 627, column: 3, scope: !317)
!1273 = !DILocation(line: 574, column: 8, scope: !317)
!1274 = !DILocation(line: 631, column: 36, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 631, column: 3)
!1276 = distinct !DILexicalBlock(scope: !317, file: !1, line: 631, column: 3)
!1277 = !{!1166, !368, i64 24}
!1278 = !DILocation(line: 631, column: 29, scope: !1275)
!1279 = !DILocation(line: 631, column: 3, scope: !1276)
!1280 = !DILocation(line: 635, column: 16, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 635, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 632, column: 5)
!1283 = !DILocation(line: 640, column: 16, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 640, column: 11)
!1285 = !DILocation(line: 641, column: 2, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 640, column: 28)
!1287 = !DILocation(line: 642, column: 2, scope: !1286)
!1288 = !DILocation(line: 647, column: 4, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 646, column: 2)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !1, line: 645, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 645, column: 7)
!1292 = !DILocation(line: 649, column: 58, scope: !1289)
!1293 = !DILocation(line: 651, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 651, column: 8)
!1295 = !DILocation(line: 656, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 656, column: 8)
!1297 = !DILocation(line: 633, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 633, column: 11)
!1299 = !DILocation(line: 633, column: 11, scope: !1282)
!1300 = !DILocation(line: 633, column: 24, scope: !1298)
!1301 = !{!1166, !365, i64 72}
!1302 = !DILocation(line: 635, column: 24, scope: !1281)
!1303 = !DILocation(line: 635, column: 11, scope: !1282)
!1304 = !DILocation(line: 636, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 635, column: 33)
!1306 = !DILocation(line: 637, column: 11, scope: !1305)
!1307 = !DILocation(line: 638, column: 2, scope: !1305)
!1308 = !DILocation(line: 639, column: 7, scope: !1305)
!1309 = !{!1166, !365, i64 88}
!1310 = !DILocation(line: 640, column: 19, scope: !1284)
!1311 = !DILocation(line: 640, column: 11, scope: !1282)
!1312 = !DILocation(line: 642, column: 11, scope: !1286)
!1313 = !DILocation(line: 643, column: 2, scope: !1286)
!1314 = !DILocation(line: 644, column: 7, scope: !1286)
!1315 = !DILocation(line: 645, column: 28, scope: !1290)
!1316 = !DILocation(line: 645, column: 21, scope: !1290)
!1317 = !DILocation(line: 645, column: 7, scope: !1291)
!1318 = !{!1166, !365, i64 0}
!1319 = !DILocation(line: 648, column: 13, scope: !1289)
!1320 = !DILocation(line: 649, column: 53, scope: !1289)
!1321 = !DILocation(line: 649, column: 4, scope: !1289)
!1322 = !{!1166, !365, i64 112}
!1323 = !DILocation(line: 651, column: 16, scope: !1294)
!1324 = !DILocation(line: 651, column: 24, scope: !1294)
!1325 = !DILocation(line: 651, column: 27, scope: !1294)
!1326 = !DILocation(line: 651, column: 38, scope: !1294)
!1327 = !DILocation(line: 651, column: 8, scope: !1289)
!1328 = !DILocation(line: 652, column: 6, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 651, column: 47)
!1330 = !DILocation(line: 653, column: 15, scope: !1329)
!1331 = !DILocation(line: 654, column: 6, scope: !1329)
!1332 = !DILocation(line: 655, column: 4, scope: !1329)
!1333 = !{!1166, !365, i64 120}
!1334 = !DILocation(line: 656, column: 16, scope: !1296)
!1335 = !DILocation(line: 656, column: 24, scope: !1296)
!1336 = !DILocation(line: 656, column: 27, scope: !1296)
!1337 = !DILocation(line: 656, column: 38, scope: !1296)
!1338 = !DILocation(line: 656, column: 8, scope: !1289)
!1339 = !DILocation(line: 657, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 656, column: 47)
!1341 = !DILocation(line: 658, column: 15, scope: !1340)
!1342 = !DILocation(line: 659, column: 6, scope: !1340)
!1343 = !DILocation(line: 660, column: 4, scope: !1340)
!1344 = !DILocation(line: 663, column: 3, scope: !317)
!1345 = !DILocation(line: 664, column: 1, scope: !317)
!1346 = !DILocation(line: 547, column: 26, scope: !292)
!1347 = !DILocation(line: 547, column: 35, scope: !292)
!1348 = !DILocation(line: 549, column: 38, scope: !292)
!1349 = !DILocation(line: 549, column: 3, scope: !292)
!1350 = !DILocation(line: 550, column: 1, scope: !292)
!1351 = !DILocation(line: 729, column: 21, scope: !296)
!1352 = !DILocation(line: 729, column: 32, scope: !296)
!1353 = !DILocation(line: 729, column: 45, scope: !296)
!1354 = !DILocation(line: 738, column: 21, scope: !296)
!1355 = !DILocation(line: 738, column: 11, scope: !296)
!1356 = !DILocation(line: 731, column: 10, scope: !296)
!1357 = !DILocation(line: 732, column: 10, scope: !296)
!1358 = !DILocation(line: 740, column: 21, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 740, column: 3)
!1360 = distinct !DILexicalBlock(scope: !296, file: !1, line: 740, column: 3)
!1361 = !DILocation(line: 740, column: 3, scope: !1360)
!1362 = !DILocation(line: 742, column: 23, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !1, line: 741, column: 5)
!1364 = !DILocation(line: 742, column: 16, scope: !1363)
!1365 = !DILocation(line: 744, column: 29, scope: !1363)
!1366 = !DILocation(line: 744, column: 7, scope: !1363)
!1367 = !DILocation(line: 744, column: 18, scope: !1363)
!1368 = !DILocation(line: 733, column: 10, scope: !296)
!1369 = !DILocation(line: 734, column: 10, scope: !296)
!1370 = !DILocation(line: 748, column: 12, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 748, column: 7)
!1372 = !DILocation(line: 748, column: 22, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 748, column: 7)
!1374 = !DILocation(line: 748, column: 7, scope: !1371)
!1375 = !DILocation(line: 751, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 750, column: 4)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 749, column: 6)
!1378 = !DILocation(line: 751, column: 24, scope: !1376)
!1379 = !DILocation(line: 752, column: 11, scope: !1376)
!1380 = !DILocation(line: 753, column: 4, scope: !1376)
!1381 = !DILocation(line: 748, column: 7, scope: !1373)
!1382 = !DILocation(line: 754, column: 7, scope: !1363)
!1383 = !DILocation(line: 754, column: 25, scope: !1363)
!1384 = !DILocation(line: 756, column: 14, scope: !296)
!1385 = !DILocation(line: 757, column: 3, scope: !296)
!1386 = !DILocation(line: 775, column: 21, scope: !308)
!1387 = !DILocation(line: 778, column: 3, scope: !308)
!1388 = !DILocation(line: 778, column: 9, scope: !308)
!1389 = !DILocation(line: 783, column: 13, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !308, file: !1, line: 783, column: 7)
!1391 = !DILocation(line: 777, column: 9, scope: !308)
!1392 = !DILocation(line: 783, column: 35, scope: !1390)
!1393 = !DILocation(line: 783, column: 7, scope: !308)
!1394 = !DILocation(line: 784, column: 19, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 784, column: 5)
!1396 = !DILocation(line: 784, column: 35, scope: !1395)
!1397 = !DILocation(line: 788, column: 3, scope: !308)
!1398 = !DILocation(line: 788, column: 33, scope: !308)
!1399 = !DILocation(line: 787, column: 3, scope: !308)
!1400 = !DILocation(line: 790, column: 14, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !308, file: !1, line: 789, column: 5)
!1402 = !DILocation(line: 780, column: 9, scope: !308)
!1403 = !DILocation(line: 792, column: 16, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 792, column: 16)
!1405 = !DILocation(line: 792, column: 43, scope: !1404)
!1406 = !DILocation(line: 792, column: 16, scope: !1401)
!1407 = !DILocation(line: 793, column: 16, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 793, column: 16)
!1409 = !DILocation(line: 793, column: 43, scope: !1408)
!1410 = !DILocation(line: 793, column: 16, scope: !1404)
!1411 = !DILocation(line: 794, column: 16, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 794, column: 16)
!1413 = !DILocation(line: 794, column: 43, scope: !1412)
!1414 = !DILocation(line: 794, column: 16, scope: !1408)
!1415 = !DILocation(line: 795, column: 16, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 795, column: 16)
!1417 = !DILocation(line: 795, column: 43, scope: !1416)
!1418 = !DILocation(line: 795, column: 16, scope: !1412)
!1419 = !DILocation(line: 796, column: 16, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 796, column: 16)
!1421 = !DILocation(line: 796, column: 43, scope: !1420)
!1422 = !DILocation(line: 796, column: 16, scope: !1416)
!1423 = !DILocation(line: 797, column: 16, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !1, line: 797, column: 16)
!1425 = !DILocation(line: 797, column: 43, scope: !1424)
!1426 = !DILocation(line: 797, column: 16, scope: !1420)
!1427 = !DILocation(line: 798, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 798, column: 16)
!1429 = !DILocation(line: 798, column: 43, scope: !1428)
!1430 = !DILocation(line: 798, column: 16, scope: !1424)
!1431 = !DILocation(line: 799, column: 16, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 799, column: 16)
!1433 = !DILocation(line: 799, column: 43, scope: !1432)
!1434 = !DILocation(line: 799, column: 16, scope: !1428)
!1435 = !DILocation(line: 800, column: 16, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 800, column: 16)
!1437 = !DILocation(line: 800, column: 43, scope: !1436)
!1438 = !DILocation(line: 800, column: 16, scope: !1432)
!1439 = !DILocation(line: 801, column: 16, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !1, line: 801, column: 16)
!1441 = !DILocation(line: 801, column: 43, scope: !1440)
!1442 = !DILocation(line: 801, column: 16, scope: !1436)
!1443 = !DILocation(line: 802, column: 16, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 802, column: 16)
!1445 = !DILocation(line: 802, column: 43, scope: !1444)
!1446 = !DILocation(line: 802, column: 16, scope: !1440)
!1447 = !DILocation(line: 805, column: 31, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 805, column: 11)
!1449 = !DILocation(line: 805, column: 11, scope: !1448)
!1450 = !DILocation(line: 805, column: 40, scope: !1448)
!1451 = !DILocation(line: 805, column: 11, scope: !1401)
!1452 = !DILocation(line: 808, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 808, column: 11)
!1454 = !DILocation(line: 779, column: 9, scope: !308)
!1455 = !DILocation(line: 808, column: 47, scope: !1453)
!1456 = !DILocation(line: 808, column: 11, scope: !1401)
!1457 = !DILocation(line: 787, column: 18, scope: !308)
!1458 = !DILocation(line: 787, column: 24, scope: !308)
!1459 = !DILocation(line: 812, column: 19, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 812, column: 11)
!1461 = !DILocation(line: 812, column: 39, scope: !1460)
!1462 = !DILocation(line: 812, column: 11, scope: !1401)
!1463 = !DILocation(line: 814, column: 11, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1401, file: !1, line: 814, column: 11)
!1465 = !DILocation(line: 814, column: 25, scope: !1464)
!1466 = !DILocation(line: 814, column: 11, scope: !1401)
!1467 = !DILocation(line: 814, column: 40, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 814, column: 39)
!1469 = !DILocation(line: 814, column: 52, scope: !1468)
!1470 = !DILocation(line: 818, column: 3, scope: !308)
!1471 = !DILocation(line: 819, column: 3, scope: !308)
!1472 = !DILocation(line: 820, column: 1, scope: !308)
