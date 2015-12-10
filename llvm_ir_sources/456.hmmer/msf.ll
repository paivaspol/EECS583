; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\5C.\5C.\00", align 1
@sqd_parse = external global [10 x i8*]
@.str5 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"Weight:\00", align 1
@.str8 = private unnamed_addr constant [61 x i8] c"No Weight: on line %d for %s in name section of MSF file %s\0A\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str10 = private unnamed_addr constant [63 x i8] c"Invalid line (probably %d) in name section of MSF file %s:\0A%s\0A\00", align 1
@squid_errno = external global i32
@.str11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Didn't find a sequence for %s in MSF file %s\0A\00", align 1
@.str13 = private unnamed_addr constant [61 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msf.c\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"!!NA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"!!AA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str16 = private unnamed_addr constant [70 x i8] c"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\0A\00", align 1
@.str17 = private unnamed_addr constant [40 x i8] c"Invalid sequence type %d in WriteMSF()\0A\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"%B %d, %Y %H:%M\00", align 1
@.str20 = private unnamed_addr constant [60 x i8] c"What time is it on earth? strftime() failed in WriteMSF().\0A\00", align 1
@.str21 = private unnamed_addr constant [43 x i8] c" %s  MSF: %d  Type: %c  %s  Check: %d  ..\0A\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"squid.msf\00", align 1
@.str23 = private unnamed_addr constant [52 x i8] c" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\0A\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"%*s  %-6d%*s%6d\0A\00", align 1
@.str26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str27 = private unnamed_addr constant [11 x i8] c"%*s  %-6d\0A\00", align 1
@.str28 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %afp) #0 {
  %sp = alloca i8*, align 8
  %slen = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !206, metadata !275), !dbg !276
  %1 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !277
  %2 = load %struct.__sFILE** %1, align 8, !dbg !277, !tbaa !279
  %3 = tail call i32 @feof(%struct.__sFILE* %2) #6, !dbg !285
  %4 = icmp eq i32 %3, 0, !dbg !285
  br i1 %4, label %5, label %182, !dbg !286

; <label>:5                                       ; preds = %0
  %6 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !287
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !208, metadata !275), !dbg !289
  %7 = icmp eq i8* %6, null, !dbg !290
  br i1 %7, label %182, label %8, !dbg !291

; <label>:8                                       ; preds = %5
  %9 = tail call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #6, !dbg !292
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %9, i64 0, metadata !207, metadata !275), !dbg !293
  %10 = tail call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i64 23) #6, !dbg !294
  %11 = icmp eq i32 %10, 0, !dbg !296
  br i1 %11, label %12, label %16, !dbg !297

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 6, !dbg !298
  store i32 3, i32* %13, align 4, !dbg !300, !tbaa !301
  %14 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !303
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !208, metadata !275), !dbg !289
  %15 = icmp eq i8* %14, null, !dbg !305
  br i1 %15, label %182, label %.preheader7, !dbg !306

; <label>:16                                      ; preds = %8
  %17 = tail call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0), i64 23) #6, !dbg !307
  %18 = icmp eq i32 %17, 0, !dbg !309
  br i1 %18, label %19, label %.preheader7, !dbg !310

; <label>:19                                      ; preds = %16
  %20 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 6, !dbg !311
  store i32 2, i32* %20, align 4, !dbg !313, !tbaa !301
  %21 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !314
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !208, metadata !275), !dbg !289
  %22 = icmp eq i8* %21, null, !dbg !316
  br i1 %22, label %182, label %.preheader7, !dbg !317

.preheader7:                                      ; preds = %12, %19, %16, %47
  %s.0 = phi i8* [ %48, %47 ], [ %14, %12 ], [ %21, %19 ], [ %6, %16 ]
  %23 = tail call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !318
  %24 = icmp eq i8* %23, null, !dbg !321
  br i1 %24, label %43, label %25, !dbg !322

; <label>:25                                      ; preds = %.preheader7
  %26 = tail call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !323
  %27 = icmp eq i8* %26, null, !dbg !324
  br i1 %27, label %43, label %28, !dbg !325

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @Strparse(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), i8* %s.0, i32 3) #6, !dbg !326
  %30 = icmp eq i32 %29, 0, !dbg !326
  br i1 %30, label %43, label %31, !dbg !327

; <label>:31                                      ; preds = %28
  %32 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !dbg !328, !tbaa !330
  %33 = load i8* %32, align 1, !dbg !331, !tbaa !332
  %34 = sext i8 %33 to i32, !dbg !331
  switch i32 %34, label %37 [
    i32 78, label %38
    i32 80, label %35
    i32 88, label %36
  ], !dbg !333

; <label>:35                                      ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !210, metadata !275), !dbg !334
  br label %38, !dbg !335

; <label>:36                                      ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !275), !dbg !334
  br label %38, !dbg !337

; <label>:37                                      ; preds = %31
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !275), !dbg !334
  br label %38, !dbg !338

; <label>:38                                      ; preds = %31, %37, %36, %35
  %alleged_type.0 = phi i32 [ 0, %37 ], [ 0, %36 ], [ 3, %35 ], [ 2, %31 ]
  %39 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 6, !dbg !339
  %40 = load i32* %39, align 4, !dbg !339, !tbaa !301
  %41 = icmp eq i32 %40, 0, !dbg !341
  br i1 %41, label %42, label %.preheader5, !dbg !342

; <label>:42                                      ; preds = %38
  store i32 %alleged_type.0, i32* %39, align 4, !dbg !343, !tbaa !301
  br label %.preheader5, !dbg !344

; <label>:43                                      ; preds = %28, %25, %.preheader7
  %44 = tail call i32 @IsBlankline(i8* %s.0) #6, !dbg !345
  %45 = icmp eq i32 %44, 0, !dbg !345
  br i1 %45, label %46, label %47, !dbg !347

; <label>:46                                      ; preds = %43
  tail call void @MSAAddComment(%struct.msa_struct* %9, i8* %s.0) #6, !dbg !348
  br label %47, !dbg !348

; <label>:47                                      ; preds = %43, %46
  %48 = tail call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !349
  tail call void @llvm.dbg.value(metadata i8* %48, i64 0, metadata !208, metadata !275), !dbg !289
  %49 = icmp eq i8* %48, null, !dbg !350
  br i1 %49, label %.preheader5, label %.preheader7, !dbg !351

.preheader5:                                      ; preds = %47, %38, %42
  %50 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !352
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !208, metadata !275), !dbg !289
  %51 = icmp eq i8* %50, null, !dbg !353
  br i1 %51, label %.preheader3, label %.preheader4.lr.ph, !dbg !354

.preheader4.lr.ph:                                ; preds = %.preheader5
  %52 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 39, !dbg !355
  %53 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 40, !dbg !361
  %54 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 1, !dbg !363
  %55 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 4, !dbg !364
  %56 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !365
  %57 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !367
  %58 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 2, !dbg !368
  %59 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 5, !dbg !369
  br label %.preheader4, !dbg !354

.preheader3:                                      ; preds = %.backedge6, %.preheader5, %109
  %60 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !370
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !208, metadata !275), !dbg !289
  %61 = icmp eq i8* %60, null, !dbg !371
  br i1 %61, label %.preheader, label %.lr.ph9, !dbg !372

.lr.ph9:                                          ; preds = %.preheader3
  %62 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 39, !dbg !373
  %63 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 0, !dbg !375
  %64 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 42, !dbg !376
  br label %122, !dbg !372

.preheader4:                                      ; preds = %.backedge6, %66, %.preheader4.lr.ph
  %s.1 = phi i8* [ %50, %.preheader4.lr.ph ], [ %67, %66 ], [ %69, %.backedge6 ]
  %65 = load i8* %s.1, align 1, !dbg !377, !tbaa !332
  switch i8 %65, label %71 [
    i8 32, label %66
    i8 9, label %66
    i8 10, label %.backedge6
    i8 33, label %68
  ], !dbg !378

; <label>:66                                      ; preds = %.preheader4, %.preheader4
  %67 = getelementptr inbounds i8* %s.1, i64 1, !dbg !379
  call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !208, metadata !275), !dbg !289
  br label %.preheader4, !dbg !380

; <label>:68                                      ; preds = %.preheader4
  call void @MSAAddComment(%struct.msa_struct* %9, i8* %s.1) #6, !dbg !381
  br label %.backedge6, !dbg !381

.backedge6:                                       ; preds = %.preheader4, %68, %99
  %69 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !352
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !208, metadata !275), !dbg !289
  %70 = icmp eq i8* %69, null, !dbg !353
  br i1 %70, label %.preheader3, label %.preheader4, !dbg !354

; <label>:71                                      ; preds = %.preheader4
  %72 = call i8* @strstr(i8* %s.1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !382
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %72, i8** %sp, align 8, !dbg !384, !tbaa !330
  %73 = icmp eq i8* %72, null, !dbg !385
  br i1 %73, label %109, label %74, !dbg !386

; <label>:74                                      ; preds = %71
  %75 = getelementptr inbounds i8* %72, i64 5, !dbg !387
  call void @llvm.dbg.value(metadata i8* %75, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %75, i8** %sp, align 8, !dbg !387, !tbaa !330
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !214, metadata !275), !dbg !388
  %76 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #6, !dbg !389
  call void @llvm.dbg.value(metadata i8* %76, i64 0, metadata !212, metadata !275), !dbg !390
  %77 = load %struct.GKI** %52, align 8, !dbg !355, !tbaa !391
  %78 = call i32 @GKIStoreKey(%struct.GKI* %77, i8* %76) #6, !dbg !392
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !215, metadata !275), !dbg !393
  %79 = load i32* %53, align 4, !dbg !361, !tbaa !394
  %80 = icmp slt i32 %78, %79, !dbg !395
  br i1 %80, label %82, label %81, !dbg !396

; <label>:81                                      ; preds = %74
  call void @MSAExpand(%struct.msa_struct* %9) #6, !dbg !397
  br label %82, !dbg !397

; <label>:82                                      ; preds = %74, %81
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !214, metadata !275), !dbg !388
  %83 = load i32* %slen, align 4, !dbg !398, !tbaa !399
  %84 = call i8* @sre_strdup(i8* %76, i32 %83) #6, !dbg !400
  %85 = sext i32 %78 to i64, !dbg !401
  %86 = load i8*** %54, align 8, !dbg !363, !tbaa !402
  %87 = getelementptr inbounds i8** %86, i64 %85, !dbg !401
  store i8* %84, i8** %87, align 8, !dbg !403, !tbaa !330
  %88 = load i32* %55, align 4, !dbg !404, !tbaa !405
  %89 = add nsw i32 %88, 1, !dbg !404
  store i32 %89, i32* %55, align 4, !dbg !404, !tbaa !405
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  %90 = load i8** %sp, align 8, !dbg !406, !tbaa !330
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !407
  call void @llvm.dbg.value(metadata i8* %91, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %91, i8** %sp, align 8, !dbg !408, !tbaa !330
  %92 = icmp eq i8* %91, null, !dbg !409
  br i1 %92, label %93, label %99, !dbg !410

; <label>:93                                      ; preds = %82
  %94 = load i32* %56, align 4, !dbg !365, !tbaa !411
  %95 = load i8*** %54, align 8, !dbg !412, !tbaa !402
  %96 = getelementptr inbounds i8** %95, i64 %85, !dbg !413
  %97 = load i8** %96, align 8, !dbg !413, !tbaa !330
  %98 = load i8** %57, align 8, !dbg !367, !tbaa !414
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str8, i64 0, i64 0), i32 %94, i8* %97, i8* %98) #6, !dbg !415
  %.pre = load i8** %sp, align 8, !dbg !416, !tbaa !330
  br label %99, !dbg !415

; <label>:99                                      ; preds = %93, %82
  %100 = phi i8* [ %.pre, %93 ], [ %91, %82 ]
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  %101 = getelementptr inbounds i8* %100, i64 7, !dbg !416
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %101, i8** %sp, align 8, !dbg !416, !tbaa !330
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !214, metadata !275), !dbg !388
  %102 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #6, !dbg !417
  call void @llvm.dbg.value(metadata i8* %102, i64 0, metadata !212, metadata !275), !dbg !390
  %103 = call double @atof(i8* %102) #6, !dbg !418
  %104 = fptrunc double %103 to float, !dbg !418
  %105 = load float** %58, align 8, !dbg !368, !tbaa !419
  %106 = getelementptr inbounds float* %105, i64 %85, !dbg !420
  store float %104, float* %106, align 4, !dbg !421, !tbaa !422
  %107 = load i32* %59, align 4, !dbg !424, !tbaa !425
  %108 = or i32 %107, 1, !dbg !424
  store i32 %108, i32* %59, align 4, !dbg !424, !tbaa !425
  br label %.backedge6

; <label>:109                                     ; preds = %71
  %110 = call i32 @strncmp(i8* %s.1, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2) #6, !dbg !426
  %111 = icmp eq i32 %110, 0, !dbg !428
  br i1 %111, label %.preheader3, label %112, !dbg !429

; <label>:112                                     ; preds = %109
  %113 = load i32* %56, align 4, !dbg !430, !tbaa !411
  %114 = load i8** %57, align 8, !dbg !432, !tbaa !414
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), i32 %113, i8* %114, i8* %s.1) #6, !dbg !433
  store i32 5, i32* @squid_errno, align 4, !dbg !434, !tbaa !399
  br label %182, !dbg !435

.preheader:                                       ; preds = %.backedge, %.preheader3
  %115 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 4, !dbg !436
  %116 = load i32* %115, align 4, !dbg !436, !tbaa !405
  %117 = icmp sgt i32 %116, 0, !dbg !439
  br i1 %117, label %.lr.ph, label %._crit_edge, !dbg !440

.lr.ph:                                           ; preds = %.preheader
  %118 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 0, !dbg !441
  %119 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 1, !dbg !444
  %120 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !445
  %121 = getelementptr inbounds %struct.msa_struct* %9, i64 0, i32 42, !dbg !446
  br label %152, !dbg !440

; <label>:122                                     ; preds = %.lr.ph9, %.backedge
  %123 = phi i8* [ %60, %.lr.ph9 ], [ %150, %.backedge ]
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %123, i8** %sp, align 8, !dbg !452, !tbaa !330
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  %124 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* null) #6, !dbg !453
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !216, metadata !275), !dbg !455
  %125 = icmp eq i8* %124, null, !dbg !456
  br i1 %125, label %.backedge, label %126, !dbg !457

; <label>:126                                     ; preds = %122
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !214, metadata !275), !dbg !388
  %127 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* %slen) #6, !dbg !458
  call void @llvm.dbg.value(metadata i8* %127, i64 0, metadata !217, metadata !275), !dbg !460
  %128 = icmp eq i8* %127, null, !dbg !461
  br i1 %128, label %.backedge, label %129, !dbg !462

; <label>:129                                     ; preds = %126
  %130 = load i8* %124, align 1, !dbg !463, !tbaa !332
  %131 = sext i8 %130 to i32, !dbg !465
  %isdigittmp = add nsw i32 %131, -48, !dbg !466
  %isdigit = icmp ult i32 %isdigittmp, 10, !dbg !466
  br i1 %isdigit, label %132, label %135, !dbg !467

; <label>:132                                     ; preds = %129
  %133 = load i8* %127, align 1, !dbg !468, !tbaa !332
  %134 = sext i8 %133 to i32, !dbg !469
  %isdigittmp1 = add nsw i32 %134, -48, !dbg !470
  %isdigit2 = icmp ult i32 %isdigittmp1, 10, !dbg !470
  br i1 %isdigit2, label %.backedge, label %135, !dbg !471

; <label>:135                                     ; preds = %132, %129
  %136 = load %struct.GKI** %62, align 8, !dbg !373, !tbaa !391
  %137 = call i32 @GKIKeyIndex(%struct.GKI* %136, i8* %124) #6, !dbg !472
  call void @llvm.dbg.value(metadata i32 %137, i64 0, metadata !215, metadata !275), !dbg !393
  %138 = icmp slt i32 %137, 0, !dbg !473
  br i1 %138, label %.backedge, label %139, !dbg !475

; <label>:139                                     ; preds = %135
  %140 = sext i32 %137 to i64, !dbg !476
  %141 = load i8*** %63, align 8, !dbg !375, !tbaa !477
  %142 = getelementptr inbounds i8** %141, i64 %140, !dbg !476
  %143 = load i32** %64, align 8, !dbg !376, !tbaa !478
  %144 = getelementptr inbounds i32* %143, i64 %140, !dbg !479
  %145 = load i32* %144, align 4, !dbg !479, !tbaa !399
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !214, metadata !275), !dbg !388
  %146 = load i32* %slen, align 4, !dbg !480, !tbaa !399
  %147 = call i32 @sre_strcat(i8** %142, i32 %145, i8* %127, i32 %146) #6, !dbg !481
  %148 = load i32** %64, align 8, !dbg !482, !tbaa !478
  %149 = getelementptr inbounds i32* %148, i64 %140, !dbg !483
  store i32 %147, i32* %149, align 4, !dbg !484, !tbaa !399
  br label %.backedge, !dbg !372

.backedge:                                        ; preds = %139, %122, %126, %132, %135
  %150 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !370
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !208, metadata !275), !dbg !289
  %151 = icmp eq i8* %150, null, !dbg !371
  br i1 %151, label %.preheader, label %122, !dbg !372

; <label>:152                                     ; preds = %.lr.ph, %178
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %178 ]
  %153 = load i8*** %118, align 8, !dbg !441, !tbaa !477
  %154 = getelementptr inbounds i8** %153, i64 %indvars.iv, !dbg !485
  %155 = load i8** %154, align 8, !dbg !485, !tbaa !330
  %156 = icmp eq i8* %155, null, !dbg !486
  br i1 %156, label %157, label %162, !dbg !487

; <label>:157                                     ; preds = %152
  %158 = load i8*** %119, align 8, !dbg !444, !tbaa !402
  %159 = getelementptr inbounds i8** %158, i64 %indvars.iv, !dbg !488
  %160 = load i8** %159, align 8, !dbg !488, !tbaa !330
  %161 = load i8** %120, align 8, !dbg !445, !tbaa !414
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %160, i8* %161) #6, !dbg !489
  %.pre11 = load i8*** %118, align 8, !dbg !490, !tbaa !477
  %.phi.trans.insert = getelementptr inbounds i8** %.pre11, i64 %indvars.iv
  %.pre12 = load i8** %.phi.trans.insert, align 8, !dbg !491, !tbaa !330
  br label %162, !dbg !489

; <label>:162                                     ; preds = %157, %152
  %163 = phi i8* [ %.pre12, %157 ], [ %155, %152 ]
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %163, i8** %sp, align 8, !dbg !492, !tbaa !330
  call void @llvm.dbg.value(metadata i8* %163, i64 0, metadata !208, metadata !275), !dbg !289
  br label %164, !dbg !493

; <label>:164                                     ; preds = %175, %162
  %165 = phi i8* [ %163, %162 ], [ %176, %175 ]
  %s.2 = phi i8* [ %163, %162 ], [ %177, %175 ]
  %166 = load i8* %s.2, align 1, !dbg !494, !tbaa !332
  switch i8 %166, label %172 [
    i8 0, label %178
    i8 32, label %167
    i8 9, label %167
  ], !dbg !495

; <label>:167                                     ; preds = %164, %164
  %168 = load i32** %121, align 8, !dbg !446, !tbaa !478
  %169 = getelementptr inbounds i32* %168, i64 %indvars.iv, !dbg !496
  %170 = load i32* %169, align 4, !dbg !497, !tbaa !399
  %171 = add nsw i32 %170, -1, !dbg !497
  store i32 %171, i32* %169, align 4, !dbg !497, !tbaa !399
  br label %175, !dbg !498

; <label>:172                                     ; preds = %164
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  store i8 %166, i8* %165, align 1, !dbg !499, !tbaa !332
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  %173 = load i8** %sp, align 8, !dbg !501, !tbaa !330
  %174 = getelementptr inbounds i8* %173, i64 1, !dbg !501
  call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !213, metadata !275), !dbg !383
  store i8* %174, i8** %sp, align 8, !dbg !501, !tbaa !330
  br label %175

; <label>:175                                     ; preds = %167, %172
  %176 = phi i8* [ %165, %167 ], [ %174, %172 ]
  %177 = getelementptr inbounds i8* %s.2, i64 1, !dbg !502
  call void @llvm.dbg.value(metadata i8* %177, i64 0, metadata !208, metadata !275), !dbg !289
  br label %164, !dbg !503

; <label>:178                                     ; preds = %164
  call void @llvm.dbg.value(metadata i8** %sp, i64 0, metadata !213, metadata !275), !dbg !383
  store i8 0, i8* %165, align 1, !dbg !504, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !440
  %179 = load i32* %115, align 4, !dbg !436, !tbaa !405
  %180 = sext i32 %179 to i64, !dbg !439
  %181 = icmp slt i64 %indvars.iv.next, %180, !dbg !439
  br i1 %181, label %152, label %._crit_edge, !dbg !440

._crit_edge:                                      ; preds = %178, %.preheader
  call void @MSAVerifyParse(%struct.msa_struct* %9) #6, !dbg !505
  br label %182, !dbg !506

; <label>:182                                     ; preds = %19, %12, %5, %0, %._crit_edge, %112
  %.0 = phi %struct.msa_struct* [ %9, %._crit_edge ], [ null, %112 ], [ null, %0 ], [ null, %5 ], [ null, %12 ], [ null, %19 ]
  ret %struct.msa_struct* %.0, !dbg !507
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #3

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @WriteMSF(%struct.__sFILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
  %now = alloca i64, align 8
  %date = alloca [64 x i8], align 16
  %buffer = alloca [51 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !222, metadata !275), !dbg !508
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !223, metadata !275), !dbg !509
  %1 = getelementptr inbounds [64 x i8]* %date, i64 0, i64 0, !dbg !510
  call void @llvm.lifetime.start(i64 64, i8* %1) #5, !dbg !510
  tail call void @llvm.dbg.declare(metadata [64 x i8]* %date, metadata !229, metadata !275), !dbg !511
  %2 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 0, !dbg !512
  call void @llvm.lifetime.start(i64 51, i8* %2) #5, !dbg !512
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %buffer, metadata !240, metadata !275), !dbg !513
  %3 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !514
  %4 = load i32* %3, align 4, !dbg !514, !tbaa !405
  %5 = sext i32 %4 to i64, !dbg !514
  %6 = shl nsw i64 %5, 3, !dbg !514
  %7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i32 273, i64 %6) #6, !dbg !514
  %8 = bitcast i8* %7 to i8**, !dbg !514
  tail call void @llvm.dbg.value(metadata i8** %8, i64 0, metadata !233, metadata !275), !dbg !515
  %9 = load i32* %3, align 4, !dbg !516, !tbaa !405
  %10 = sext i32 %9 to i64, !dbg !516
  %11 = shl nsw i64 %10, 3, !dbg !516
  %12 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i32 274, i64 %11) #6, !dbg !516
  %13 = bitcast i8* %12 to i8**, !dbg !516
  tail call void @llvm.dbg.value(metadata i8** %13, i64 0, metadata !234, metadata !275), !dbg !517
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !235, metadata !275), !dbg !518
  %14 = load i32* %3, align 4, !dbg !519, !tbaa !405
  %15 = icmp sgt i32 %14, 0, !dbg !522
  br i1 %15, label %.lr.ph59, label %._crit_edge42, !dbg !523

.lr.ph59:                                         ; preds = %0
  %16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !524
  %17 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !526
  %18 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !527
  br label %20, !dbg !523

.preheader24:                                     ; preds = %20
  %19 = icmp sgt i32 %32, 0, !dbg !528
  br i1 %19, label %.lr.ph56, label %._crit_edge42, !dbg !531

; <label>:20                                      ; preds = %.lr.ph59, %20
  %indvars.iv80 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next81, %20 ]
  %21 = load i8*** %16, align 8, !dbg !524, !tbaa !477
  %22 = getelementptr inbounds i8** %21, i64 %indvars.iv80, !dbg !532
  %23 = load i8** %22, align 8, !dbg !532, !tbaa !330
  %24 = load i32* %17, align 4, !dbg !526, !tbaa !533
  %25 = tail call i8* @sre_strdup(i8* %23, i32 %24) #6, !dbg !534
  %26 = getelementptr inbounds i8** %8, i64 %indvars.iv80, !dbg !535
  store i8* %25, i8** %26, align 8, !dbg !536, !tbaa !330
  %27 = load i8*** %18, align 8, !dbg !527, !tbaa !402
  %28 = getelementptr inbounds i8** %27, i64 %indvars.iv80, !dbg !537
  %29 = load i8** %28, align 8, !dbg !537, !tbaa !330
  %30 = tail call i8* @sre_strdup(i8* %29, i32 -1) #6, !dbg !538
  %31 = getelementptr inbounds i8** %13, i64 %indvars.iv80, !dbg !539
  store i8* %30, i8** %31, align 8, !dbg !540, !tbaa !330
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1, !dbg !523
  %32 = load i32* %3, align 4, !dbg !519, !tbaa !405
  %33 = sext i32 %32 to i64, !dbg !522
  %34 = icmp slt i64 %indvars.iv.next81, %33, !dbg !522
  br i1 %34, label %20, label %.preheader24, !dbg !523

.preheader23:                                     ; preds = %._crit_edge54
  %35 = icmp sgt i32 %57, 0, !dbg !541
  br i1 %35, label %.lr.ph50, label %._crit_edge42, !dbg !544

.lr.ph50:                                         ; preds = %.preheader23
  %36 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !545
  br label %64, !dbg !544

.lr.ph56:                                         ; preds = %.preheader24, %._crit_edge54
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %._crit_edge54 ], [ 0, %.preheader24 ]
  %37 = getelementptr inbounds i8** %13, i64 %indvars.iv78, !dbg !548
  %38 = load i8** %37, align 8, !dbg !548, !tbaa !330
  tail call void @llvm.dbg.value(metadata i8* %38, i64 0, metadata !236, metadata !275), !dbg !550
  %39 = load i8* %38, align 1, !dbg !551, !tbaa !332
  %40 = icmp eq i8 %39, 0, !dbg !553
  br i1 %40, label %._crit_edge54, label %.lr.ph53, !dbg !554

.lr.ph53:                                         ; preds = %.lr.ph56, %53
  %41 = phi i8 [ %55, %53 ], [ %39, %.lr.ph56 ]
  %s.051 = phi i8* [ %54, %53 ], [ %38, %.lr.ph56 ]
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !261, metadata !275) #5, !dbg !555
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !266, metadata !275) #5, !dbg !558
  tail call void @llvm.dbg.value(metadata i64 1280, i64 0, metadata !267, metadata !275) #5, !dbg !560
  %isascii.i.i20 = icmp sgt i8 %41, -1, !dbg !561
  br i1 %isascii.i.i20, label %42, label %47, !dbg !561

; <label>:42                                      ; preds = %.lr.ph53
  %43 = sext i8 %41 to i64, !dbg !562
  %44 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %43, !dbg !562
  %45 = load i32* %44, align 4, !dbg !562, !tbaa !399
  %46 = and i32 %45, 1280, !dbg !563
  br label %isalnum.exit, !dbg !561

; <label>:47                                      ; preds = %.lr.ph53
  %48 = sext i8 %41 to i32, !dbg !551
  %49 = tail call i32 @__maskrune(i32 %48, i64 1280) #6, !dbg !564
  br label %isalnum.exit, !dbg !561

isalnum.exit:                                     ; preds = %42, %47
  %.sink.i.in.i = phi i32 [ %46, %42 ], [ %49, %47 ], !dbg !565
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !566
  br i1 %.sink.i.i, label %50, label %53, !dbg !567

; <label>:50                                      ; preds = %isalnum.exit
  %51 = load i8* %s.051, align 1, !dbg !568, !tbaa !332
  switch i8 %51, label %52 [
    i8 45, label %53
    i8 95, label %53
  ], !dbg !569

; <label>:52                                      ; preds = %50
  store i8 95, i8* %s.051, align 1, !dbg !570, !tbaa !332
  br label %53, !dbg !571

; <label>:53                                      ; preds = %isalnum.exit, %50, %50, %52
  %54 = getelementptr inbounds i8* %s.051, i64 1, !dbg !572
  tail call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !236, metadata !275), !dbg !550
  %55 = load i8* %54, align 1, !dbg !551, !tbaa !332
  %56 = icmp eq i8 %55, 0, !dbg !553
  br i1 %56, label %._crit_edge54, label %.lr.ph53, !dbg !554

._crit_edge54:                                    ; preds = %53, %.lr.ph56
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !531
  %57 = load i32* %3, align 4, !dbg !573, !tbaa !405
  %58 = sext i32 %57 to i64, !dbg !528
  %59 = icmp slt i64 %indvars.iv.next79, %58, !dbg !528
  br i1 %59, label %.lr.ph56, label %.preheader23, !dbg !531

.preheader22:                                     ; preds = %.critedge5
  %60 = icmp sgt i32 %83, 0, !dbg !574
  br i1 %60, label %.lr.ph41, label %._crit_edge42, !dbg !577

.lr.ph41:                                         ; preds = %.preheader22
  %61 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !578
  %62 = load i8*** %61, align 8, !dbg !578, !tbaa !402
  %63 = sext i32 %83 to i64, !dbg !577
  br label %86, !dbg !577

; <label>:64                                      ; preds = %.lr.ph50, %.critedge5
  %indvars.iv76 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next77, %.critedge5 ]
  %65 = getelementptr inbounds i8** %8, i64 %indvars.iv76, !dbg !580
  %66 = load i8** %65, align 8, !dbg !580, !tbaa !330
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !236, metadata !275), !dbg !550
  br label %67, !dbg !582

; <label>:67                                      ; preds = %.critedge1, %64
  %s.1 = phi i8* [ %66, %64 ], [ %69, %.critedge1 ]
  %68 = load i8* %s.1, align 1, !dbg !583, !tbaa !332
  switch i8 %68, label %.critedge [
    i8 126, label %.critedge1
    i8 32, label %.critedge1
    i8 46, label %.critedge1
    i8 95, label %.critedge1
    i8 45, label %.critedge1
  ], !dbg !585

.critedge1:                                       ; preds = %67, %67, %67, %67, %67
  store i8 126, i8* %s.1, align 1, !dbg !586, !tbaa !332
  %69 = getelementptr inbounds i8* %s.1, i64 1, !dbg !587
  tail call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !236, metadata !275), !dbg !550
  br label %67, !dbg !588

.critedge:                                        ; preds = %67, %72
  %70 = phi i8 [ %.pre, %72 ], [ %68, %67 ]
  %s.2 = phi i8* [ %73, %72 ], [ %s.1, %67 ]
  switch i8 %70, label %72 [
    i8 0, label %74
    i8 32, label %71
    i8 46, label %71
    i8 95, label %71
    i8 45, label %71
    i8 126, label %71
  ], !dbg !589

; <label>:71                                      ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  store i8 46, i8* %s.2, align 1, !dbg !591, !tbaa !332
  br label %72, !dbg !594

; <label>:72                                      ; preds = %.critedge, %71
  %73 = getelementptr inbounds i8* %s.2, i64 1, !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %73, i64 0, metadata !236, metadata !275), !dbg !550
  %.pre = load i8* %73, align 1, !dbg !596, !tbaa !332
  br label %.critedge, !dbg !597

; <label>:74                                      ; preds = %.critedge
  %75 = load i32* %36, align 4, !dbg !545, !tbaa !533
  %76 = icmp sgt i32 %75, 1, !dbg !598
  br i1 %76, label %.lr.ph47, label %.critedge5, !dbg !600

.lr.ph47:                                         ; preds = %74
  %77 = sext i32 %75 to i64
  br label %78, !dbg !600

; <label>:78                                      ; preds = %.lr.ph47, %.critedge6
  %indvars.iv74 = phi i64 [ %77, %.lr.ph47 ], [ %indvars.iv.next75, %.critedge6 ]
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, -1, !dbg !600
  %79 = load i8** %65, align 8, !dbg !601, !tbaa !330
  %80 = getelementptr inbounds i8* %79, i64 %indvars.iv.next75, !dbg !601
  %81 = load i8* %80, align 1, !dbg !601, !tbaa !332
  switch i8 %81, label %.critedge5 [
    i8 32, label %.critedge6
    i8 46, label %.critedge6
    i8 95, label %.critedge6
    i8 45, label %.critedge6
    i8 126, label %.critedge6
  ], !dbg !601

.critedge6:                                       ; preds = %78, %78, %78, %78, %78
  store i8 126, i8* %80, align 1, !dbg !602, !tbaa !332
  %82 = icmp sgt i64 %indvars.iv.next75, 1, !dbg !598
  br i1 %82, label %78, label %.critedge5, !dbg !600

.critedge5:                                       ; preds = %.critedge6, %78, %74
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1, !dbg !544
  %83 = load i32* %3, align 4, !dbg !603, !tbaa !405
  %84 = sext i32 %83 to i64, !dbg !541
  %85 = icmp slt i64 %indvars.iv.next77, %84, !dbg !541
  br i1 %85, label %64, label %.preheader22, !dbg !544

; <label>:86                                      ; preds = %.lr.ph41, %86
  %indvars.iv72 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next73, %86 ]
  %namelen.039 = phi i32 [ 0, %.lr.ph41 ], [ %.namelen.0, %86 ]
  %87 = getelementptr inbounds i8** %62, i64 %indvars.iv72, !dbg !604
  %88 = load i8** %87, align 8, !dbg !604, !tbaa !330
  %89 = tail call i64 @strlen(i8* %88) #6, !dbg !605
  %90 = trunc i64 %89 to i32, !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !237, metadata !275), !dbg !606
  %91 = icmp sgt i32 %90, %namelen.039, !dbg !607
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !238, metadata !275), !dbg !608
  %.namelen.0 = select i1 %91, i32 %90, i32 %namelen.039, !dbg !609
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1, !dbg !577
  %92 = icmp slt i64 %indvars.iv.next73, %63, !dbg !574
  br i1 %92, label %86, label %._crit_edge42, !dbg !577

._crit_edge42:                                    ; preds = %86, %0, %.preheader24, %.preheader23, %.preheader22
  %93 = phi i32 [ %83, %.preheader22 ], [ %57, %.preheader23 ], [ %32, %.preheader24 ], [ %14, %0 ], [ %83, %86 ]
  %namelen.0.lcssa = phi i32 [ 0, %.preheader22 ], [ 0, %.preheader23 ], [ 0, %.preheader24 ], [ 0, %0 ], [ %.namelen.0, %86 ]
  %94 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 6, !dbg !610
  %95 = load i32* %94, align 4, !dbg !610, !tbaa !301
  %96 = icmp eq i32 %95, 0, !dbg !612
  br i1 %96, label %97, label %101, !dbg !613

; <label>:97                                      ; preds = %._crit_edge42
  %98 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !614
  %99 = load i8*** %98, align 8, !dbg !614, !tbaa !477
  %100 = tail call i32 @GuessAlignmentSeqtype(i8** %99, i32 %93) #6, !dbg !615
  store i32 %100, i32* %94, align 4, !dbg !616, !tbaa !301
  br label %101, !dbg !617

; <label>:101                                     ; preds = %97, %._crit_edge42
  %102 = phi i32 [ %100, %97 ], [ %95, %._crit_edge42 ], !dbg !618
  switch i32 %102, label %110 [
    i32 2, label %103
    i32 1, label %105
    i32 3, label %107
    i32 0, label %109
  ], !dbg !620

; <label>:103                                     ; preds = %101
  %104 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %fp), !dbg !621
  br label %111, !dbg !621

; <label>:105                                     ; preds = %101
  %106 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %fp), !dbg !622
  br label %111, !dbg !622

; <label>:107                                     ; preds = %101
  %108 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %fp), !dbg !624
  br label %111, !dbg !624

; <label>:109                                     ; preds = %101
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !626
  br label %111, !dbg !626

; <label>:110                                     ; preds = %101
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i32 %102) #6, !dbg !628
  br label %111

; <label>:111                                     ; preds = %105, %109, %110, %107, %103
  %112 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !629
  %113 = load i32* %112, align 4, !dbg !629, !tbaa !631
  %114 = icmp sgt i32 %113, 0, !dbg !632
  br i1 %114, label %.lr.ph37, label %124, !dbg !633

.lr.ph37:                                         ; preds = %111
  %115 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !634
  br label %116, !dbg !638

; <label>:116                                     ; preds = %.lr.ph37, %116
  %indvars.iv70 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next71, %116 ]
  %117 = load i8*** %115, align 8, !dbg !634, !tbaa !639
  %118 = getelementptr inbounds i8** %117, i64 %indvars.iv70, !dbg !640
  %119 = load i8** %118, align 8, !dbg !640, !tbaa !330
  %120 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0), i8* %119) #6, !dbg !641
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1, !dbg !638
  %121 = load i32* %112, align 4, !dbg !642, !tbaa !631
  %122 = sext i32 %121 to i64, !dbg !643
  %123 = icmp slt i64 %indvars.iv.next71, %122, !dbg !643
  br i1 %123, label %116, label %._crit_edge38, !dbg !638

._crit_edge38:                                    ; preds = %116
  %fputc18 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp) #5, !dbg !644
  br label %124, !dbg !645

; <label>:124                                     ; preds = %._crit_edge38, %111
  %125 = tail call i64 @time(i64* null) #6, !dbg !646
  tail call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !224, metadata !275), !dbg !647
  store i64 %125, i64* %now, align 8, !dbg !648, !tbaa !649
  tail call void @llvm.dbg.value(metadata i64* %now, i64 0, metadata !224, metadata !275), !dbg !647
  %126 = call %struct.tm* @localtime(i64* %now) #6, !dbg !651
  %127 = call i64 @"\01_strftime"(i8* %1, i64 64, i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0), %struct.tm* %126) #6, !dbg !653
  %128 = icmp eq i64 %127, 0, !dbg !654
  br i1 %128, label %129, label %130, !dbg !655

; <label>:129                                     ; preds = %124
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !656
  br label %130, !dbg !656

; <label>:130                                     ; preds = %129, %124
  %131 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !657
  %132 = load i8** %131, align 8, !dbg !657, !tbaa !658
  %133 = icmp eq i8* %132, null, !dbg !659
  %. = select i1 %133, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %132, !dbg !660
  %134 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !661
  %135 = load i32* %134, align 4, !dbg !661, !tbaa !533
  %136 = load i32* %94, align 4, !dbg !662, !tbaa !301
  %137 = icmp eq i32 %136, 2, !dbg !663
  %138 = select i1 %137, i32 78, i32 80, !dbg !664
  %139 = load i32* %3, align 4, !dbg !665, !tbaa !405
  %140 = call i32 @GCGMultchecksum(i8** %8, i32 %139) #6, !dbg !666
  %141 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0), i8* %., i32 %135, i32 %138, i8* %1, i32 %140) #6, !dbg !667
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp) #5, !dbg !668
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !235, metadata !275), !dbg !518
  %142 = load i32* %3, align 4, !dbg !669, !tbaa !405
  %143 = icmp sgt i32 %142, 0, !dbg !672
  br i1 %143, label %.lr.ph34, label %._crit_edge35, !dbg !673

.lr.ph34:                                         ; preds = %130
  %144 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !674
  br label %145, !dbg !673

; <label>:145                                     ; preds = %.lr.ph34, %145
  %indvars.iv68 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next69, %145 ]
  %146 = getelementptr inbounds i8** %13, i64 %indvars.iv68, !dbg !676
  %147 = load i8** %146, align 8, !dbg !676, !tbaa !330
  %148 = load i32* %134, align 4, !dbg !677, !tbaa !533
  %149 = getelementptr inbounds i8** %8, i64 %indvars.iv68, !dbg !678
  %150 = load i8** %149, align 8, !dbg !678, !tbaa !330
  %151 = call i32 @GCGchecksum(i8* %150, i32 %148) #6, !dbg !679
  %152 = load float** %144, align 8, !dbg !674, !tbaa !419
  %153 = getelementptr inbounds float* %152, i64 %indvars.iv68, !dbg !680
  %154 = load float* %153, align 4, !dbg !680, !tbaa !422
  %155 = fpext float %154 to double, !dbg !680
  %156 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str23, i64 0, i64 0), i32 %namelen.0.lcssa, i32 %namelen.0.lcssa, i8* %147, i32 %148, i32 %151, double %155) #6, !dbg !681
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1, !dbg !673
  %157 = load i32* %3, align 4, !dbg !669, !tbaa !405
  %158 = sext i32 %157 to i64, !dbg !672
  %159 = icmp slt i64 %indvars.iv.next69, %158, !dbg !672
  br i1 %159, label %145, label %._crit_edge35, !dbg !673

._crit_edge35:                                    ; preds = %145, %130
  %fputc12 = call i32 @fputc(i32 10, %struct.__sFILE* %fp) #5, !dbg !682
  %160 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp), !dbg !683
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !239, metadata !275), !dbg !684
  %161 = load i32* %134, align 4, !dbg !685, !tbaa !533
  %162 = icmp sgt i32 %161, 0, !dbg !688
  br i1 %162, label %.lr.ph30, label %._crit_edge82, !dbg !689

._crit_edge82:                                    ; preds = %._crit_edge35
  %.pre83 = load i32* %3, align 4, !dbg !690, !tbaa !405
  br label %._crit_edge31, !dbg !689

.lr.ph30:                                         ; preds = %._crit_edge35
  %163 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 50, !dbg !691
  br label %168, !dbg !689

.loopexit:                                        ; preds = %._crit_edge, %.preheader
  %164 = phi i32 [ %187, %.preheader ], [ %211, %._crit_edge ]
  %165 = load i32* %134, align 4, !dbg !685, !tbaa !533
  %166 = sext i32 %165 to i64, !dbg !688
  %167 = icmp slt i64 %indvars.iv.next67, %166, !dbg !688
  %indvars.iv.next61 = add i32 %indvars.iv60, -50, !dbg !689
  %indvars.iv.next63 = add i32 %indvars.iv62, -50, !dbg !689
  br i1 %167, label %168, label %._crit_edge31, !dbg !689

; <label>:168                                     ; preds = %.lr.ph30, %.loopexit
  %indvars.iv66 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next67, %.loopexit ]
  %indvars.iv62 = phi i32 [ -51, %.lr.ph30 ], [ %indvars.iv.next63, %.loopexit ]
  %indvars.iv60 = phi i32 [ -2, %.lr.ph30 ], [ %indvars.iv.next61, %.loopexit ]
  %fputc15 = call i32 @fputc(i32 10, %struct.__sFILE* %fp) #5, !dbg !696
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 50, !dbg !689
  %169 = load i32* %134, align 4, !dbg !697, !tbaa !533
  %170 = sext i32 %169 to i64, !dbg !698
  %171 = icmp sgt i64 %indvars.iv.next67, %170, !dbg !698
  %172 = trunc i64 %indvars.iv66 to i32, !dbg !699
  %173 = sub nsw i32 %169, %172, !dbg !699
  %.19 = select i1 %171, i32 %173, i32 50, !dbg !700
  call void @llvm.dbg.value(metadata i32 %.19, i64 0, metadata !237, metadata !275), !dbg !606
  %174 = icmp sgt i32 %.19, 10, !dbg !701
  %175 = or i64 %indvars.iv66, 1, !dbg !703
  br i1 %174, label %176, label %184, !dbg !704

; <label>:176                                     ; preds = %168
  %177 = add nsw i32 %.19, -1, !dbg !705
  %178 = sdiv i32 %177, 10, !dbg !706
  %179 = add i32 %.19, -12, !dbg !707
  %180 = add i32 %179, %178, !dbg !708
  %181 = add nsw i32 %.19, %172, !dbg !709
  %182 = trunc i64 %175 to i32, !dbg !710
  %183 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %182, i32 %180, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %181) #6, !dbg !710
  br label %.preheader, !dbg !710

; <label>:184                                     ; preds = %168
  %185 = trunc i64 %175 to i32, !dbg !711
  %186 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %185) #6, !dbg !711
  br label %.preheader

.preheader:                                       ; preds = %184, %176
  %187 = load i32* %3, align 4, !dbg !712, !tbaa !405
  %188 = icmp sgt i32 %187, 0, !dbg !713
  br i1 %188, label %.lr.ph27, label %.loopexit, !dbg !714

.lr.ph27:                                         ; preds = %.preheader
  %189 = icmp sgt i32 %.19, 0, !dbg !715
  %190 = xor i32 %169, -1, !dbg !714
  %191 = icmp sgt i32 %indvars.iv62, %190
  %smax = select i1 %191, i32 %indvars.iv62, i32 %190
  %192 = sub i32 %indvars.iv60, %smax, !dbg !714
  br label %193, !dbg !714

; <label>:193                                     ; preds = %.lr.ph27, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next65, %._crit_edge ]
  %194 = getelementptr inbounds i8** %13, i64 %indvars.iv64, !dbg !718
  %195 = load i8** %194, align 8, !dbg !718, !tbaa !330
  %196 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str28, i64 0, i64 0), i32 %namelen.0.lcssa, i8* %195) #6, !dbg !719
  %197 = getelementptr inbounds i8** %8, i64 %indvars.iv64, !dbg !720
  %198 = load i8** %197, align 8, !dbg !720, !tbaa !330
  %199 = getelementptr inbounds i8* %198, i64 %indvars.iv66, !dbg !720
  %strncpy = call i8* @strncpy(i8* %2, i8* %199, i64 50), !dbg !720
  store i8 0, i8* %163, align 2, !dbg !721, !tbaa !332
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !244, metadata !275), !dbg !722
  br i1 %189, label %.lr.ph, label %._crit_edge, !dbg !723

.lr.ph:                                           ; preds = %193, %205
  %indvars.iv = phi i64 [ %indvars.iv.next, %205 ], [ 0, %193 ]
  %200 = trunc i64 %indvars.iv to i32, !dbg !724
  %201 = srem i32 %200, 10, !dbg !724
  %202 = icmp eq i32 %201, 0, !dbg !724
  br i1 %202, label %203, label %205, !dbg !727

; <label>:203                                     ; preds = %.lr.ph
  %204 = call i32 @fputc(i32 32, %struct.__sFILE* %fp) #6, !dbg !728
  br label %205, !dbg !728

; <label>:205                                     ; preds = %.lr.ph, %203
  %206 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 %indvars.iv, !dbg !729
  %207 = load i8* %206, align 1, !dbg !729, !tbaa !332
  %208 = sext i8 %207 to i32, !dbg !729
  %209 = call i32 @fputc(i32 %208, %struct.__sFILE* %fp) #6, !dbg !730
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !723
  %exitcond = icmp eq i32 %200, %192, !dbg !723
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !723

._crit_edge:                                      ; preds = %205, %193
  %210 = call i32 @fputc(i32 10, %struct.__sFILE* %fp) #6, !dbg !731
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !714
  %211 = load i32* %3, align 4, !dbg !712, !tbaa !405
  %212 = sext i32 %211 to i64, !dbg !713
  %213 = icmp slt i64 %indvars.iv.next65, %212, !dbg !713
  br i1 %213, label %193, label %.loopexit, !dbg !714

._crit_edge31:                                    ; preds = %.loopexit, %._crit_edge82
  %214 = phi i32 [ %.pre83, %._crit_edge82 ], [ %164, %.loopexit ]
  call void @Free2DArray(i8** %8, i32 %214) #6, !dbg !732
  %215 = load i32* %3, align 4, !dbg !733, !tbaa !405
  call void @Free2DArray(i8** %13, i32 %215) #6, !dbg !734
  call void @llvm.lifetime.end(i64 51, i8* %2) #5, !dbg !735
  call void @llvm.lifetime.end(i64 64, i8* %1) #5, !dbg !735
  ret void, !dbg !735
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @GuessAlignmentSeqtype(i8**, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare i64 @"\01_strftime"(i8*, i64, i8*, %struct.tm*) #3

; Function Attrs: optsize
declare %struct.tm* @localtime(i64*) #3

; Function Attrs: optsize
declare i32 @GCGMultchecksum(i8**, i32) #3

; Function Attrs: optsize
declare i32 @GCGchecksum(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!271, !272, !273}
!llvm.ident = !{!274}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!7 = !{!8, !218, !245, !251, !259, !262, !268}
!8 = !DISubprogram(name: "ReadMSF", scope: !1, file: !1, line: 82, type: !9, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadMSF, variables: !205)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !89}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !13, line: 177, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !13, line: 112, size: 2880, align: 64, elements: !15)
!15 = !{!16, !20, !21, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !55, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !14, file: !13, line: 115, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !14, file: !13, line: 116, baseType: !17, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !14, file: !13, line: 117, baseType: !22, size: 64, align: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !14, file: !13, line: 118, baseType: !5, size: 32, align: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !14, file: !13, line: 119, baseType: !5, size: 32, align: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !13, line: 123, baseType: !5, size: 32, align: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !13, line: 124, baseType: !5, size: 32, align: 32, offset: 288)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !13, line: 125, baseType: !18, size: 64, align: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !14, file: !13, line: 126, baseType: !18, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !14, file: !13, line: 127, baseType: !18, size: 64, align: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !14, file: !13, line: 128, baseType: !18, size: 64, align: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !14, file: !13, line: 129, baseType: !18, size: 64, align: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !14, file: !13, line: 130, baseType: !18, size: 64, align: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !14, file: !13, line: 131, baseType: !18, size: 64, align: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !14, file: !13, line: 132, baseType: !17, size: 64, align: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !14, file: !13, line: 133, baseType: !17, size: 64, align: 64, offset: 832)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !14, file: !13, line: 134, baseType: !17, size: 64, align: 64, offset: 896)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !14, file: !13, line: 135, baseType: !17, size: 64, align: 64, offset: 960)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !14, file: !13, line: 136, baseType: !40, size: 192, align: 32, offset: 1024)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, align: 32, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !14, file: !13, line: 137, baseType: !44, size: 192, align: 32, offset: 1216)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, align: 32, elements: !41)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !14, file: !13, line: 144, baseType: !17, size: 64, align: 64, offset: 1408)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !14, file: !13, line: 145, baseType: !5, size: 32, align: 32, offset: 1472)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !14, file: !13, line: 146, baseType: !5, size: 32, align: 32, offset: 1504)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !14, file: !13, line: 148, baseType: !17, size: 64, align: 64, offset: 1536)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !14, file: !13, line: 149, baseType: !17, size: 64, align: 64, offset: 1600)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !14, file: !13, line: 150, baseType: !5, size: 32, align: 32, offset: 1664)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !14, file: !13, line: 151, baseType: !5, size: 32, align: 32, offset: 1696)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !14, file: !13, line: 153, baseType: !17, size: 64, align: 64, offset: 1728)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !14, file: !13, line: 154, baseType: !54, size: 64, align: 64, offset: 1792)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !14, file: !13, line: 155, baseType: !56, size: 64, align: 64, offset: 1856)
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
!66 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !64, file: !58, line: 27, baseType: !18, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !64, file: !58, line: 28, baseType: !5, size: 32, align: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !64, file: !58, line: 29, baseType: !63, size: 64, align: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !59, file: !58, line: 39, baseType: !5, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !59, file: !58, line: 40, baseType: !5, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !59, file: !58, line: 41, baseType: !5, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !14, file: !13, line: 156, baseType: !5, size: 32, align: 32, offset: 1920)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !14, file: !13, line: 158, baseType: !17, size: 64, align: 64, offset: 1984)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !14, file: !13, line: 159, baseType: !17, size: 64, align: 64, offset: 2048)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !14, file: !13, line: 160, baseType: !56, size: 64, align: 64, offset: 2112)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !14, file: !13, line: 161, baseType: !5, size: 32, align: 32, offset: 2176)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !14, file: !13, line: 163, baseType: !17, size: 64, align: 64, offset: 2240)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !14, file: !13, line: 164, baseType: !54, size: 64, align: 64, offset: 2304)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !14, file: !13, line: 165, baseType: !56, size: 64, align: 64, offset: 2368)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !14, file: !13, line: 166, baseType: !5, size: 32, align: 32, offset: 2432)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !14, file: !13, line: 170, baseType: !56, size: 64, align: 64, offset: 2496)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !14, file: !13, line: 171, baseType: !5, size: 32, align: 32, offset: 2560)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !14, file: !13, line: 172, baseType: !5, size: 32, align: 32, offset: 2592)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !14, file: !13, line: 173, baseType: !85, size: 64, align: 64, offset: 2624)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !14, file: !13, line: 174, baseType: !85, size: 64, align: 64, offset: 2688)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !14, file: !13, line: 175, baseType: !85, size: 64, align: 64, offset: 2752)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !14, file: !13, line: 176, baseType: !5, size: 32, align: 32, offset: 2816)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !13, line: 199, baseType: !91)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !13, line: 186, size: 512, align: 64, elements: !92)
!92 = !{!93, !154, !155, !156, !157, !158, !202, !203, !204}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !91, file: !13, line: 187, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !96, line: 153, baseType: !97)
!96 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !96, line: 122, size: 1216, align: 64, elements: !98)
!98 = !{!99, !102, !103, !104, !106, !107, !112, !113, !114, !118, !122, !132, !138, !139, !142, !143, !147, !151, !152, !153}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !97, file: !96, line: 123, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !97, file: !96, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !97, file: !96, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !97, file: !96, line: 126, baseType: !105, size: 16, align: 16, offset: 128)
!105 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !97, file: !96, line: 127, baseType: !105, size: 16, align: 16, offset: 144)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !97, file: !96, line: 128, baseType: !108, size: 128, align: 64, offset: 192)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !96, line: 88, size: 128, align: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !108, file: !96, line: 89, baseType: !100, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !108, file: !96, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !97, file: !96, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !97, file: !96, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !97, file: !96, line: 133, baseType: !115, size: 64, align: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !97, file: !96, line: 134, baseType: !119, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!5, !4, !18, !5}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !97, file: !96, line: 135, baseType: !123, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !4, !126, !5}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !96, line: 77, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !128, line: 71, baseType: !129)
!128 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !130, line: 46, baseType: !131)
!130 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!131 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !97, file: !96, line: 136, baseType: !133, size: 64, align: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!5, !4, !136, !5}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !97, file: !96, line: 139, baseType: !108, size: 128, align: 64, offset: 704)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !97, file: !96, line: 140, baseType: !140, size: 64, align: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !96, line: 94, flags: DIFlagFwdDecl)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !97, file: !96, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !97, file: !96, line: 144, baseType: !144, size: 24, align: 8, offset: 928)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 24, align: 8, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 3)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !97, file: !96, line: 145, baseType: !148, size: 8, align: 8, offset: 952)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 8, align: 8, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 1)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !97, file: !96, line: 148, baseType: !108, size: 128, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !97, file: !96, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !97, file: !96, line: 152, baseType: !126, size: 64, align: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !91, file: !13, line: 188, baseType: !18, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !91, file: !13, line: 189, baseType: !5, size: 32, align: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !13, line: 191, baseType: !18, size: 64, align: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !91, file: !13, line: 192, baseType: !5, size: 32, align: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !91, file: !13, line: 194, baseType: !159, size: 64, align: 64, offset: 320)
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
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !182, file: !161, line: 36, baseType: !19, size: 8, align: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !182, file: !161, line: 40, baseType: !186, size: 64, align: 64, offset: 64)
!186 = !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !161, line: 37, size: 64, align: 64, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !186, file: !161, line: 38, baseType: !166, size: 32, align: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !186, file: !161, line: 39, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !167, line: 42, baseType: !191)
!191 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !162, file: !161, line: 62, baseType: !181, size: 128, align: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !162, file: !161, line: 63, baseType: !181, size: 128, align: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !162, file: !161, line: 65, baseType: !19, size: 8, align: 8, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !162, file: !161, line: 66, baseType: !19, size: 8, align: 8, offset: 776)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !162, file: !161, line: 70, baseType: !17, size: 64, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !162, file: !161, line: 71, baseType: !198, size: 64, align: 64, offset: 896)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !162, file: !161, line: 72, baseType: !198, size: 64, align: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !162, file: !161, line: 73, baseType: !198, size: 64, align: 64, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !162, file: !161, line: 74, baseType: !198, size: 64, align: 64, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !91, file: !13, line: 196, baseType: !5, size: 32, align: 32, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !91, file: !13, line: 197, baseType: !5, size: 32, align: 32, offset: 416)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !91, file: !13, line: 198, baseType: !5, size: 32, align: 32, offset: 448)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !8, file: !1, line: 82, type: !89)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !8, file: !1, line: 84, type: !11)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !8, file: !1, line: 85, type: !18)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alleged_alen", scope: !8, file: !1, line: 86, type: !5)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alleged_type", scope: !8, file: !1, line: 87, type: !5)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alleged_checksum", scope: !8, file: !1, line: 88, type: !5)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tok", scope: !8, file: !1, line: 89, type: !18)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !8, file: !1, line: 90, type: !18)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !8, file: !1, line: 91, type: !5)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqidx", scope: !8, file: !1, line: 92, type: !5)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !8, file: !1, line: 93, type: !18)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !8, file: !1, line: 94, type: !18)
!218 = !DISubprogram(name: "WriteMSF", scope: !1, file: !1, line: 245, type: !219, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WriteMSF, variables: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !94, !11}
!221 = !{!222, !223, !224, !229, !233, !234, !235, !236, !237, !238, !239, !240, !244}
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !218, file: !1, line: 245, type: !94)
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !218, file: !1, line: 245, type: !11)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !218, file: !1, line: 247, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !226, line: 30, baseType: !227)
!226 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !130, line: 120, baseType: !228)
!228 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !218, file: !1, line: 248, type: !230)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, align: 8, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 64)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gcg_aseq", scope: !218, file: !1, line: 249, type: !17)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gcg_sqname", scope: !218, file: !1, line: 250, type: !17)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !218, file: !1, line: 251, type: !5)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !218, file: !1, line: 252, type: !18)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !218, file: !1, line: 253, type: !5)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namelen", scope: !218, file: !1, line: 254, type: !5)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !218, file: !1, line: 255, type: !5)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !218, file: !1, line: 256, type: !241)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 408, align: 8, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 51)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !218, file: !1, line: 257, type: !5)
!245 = !DISubprogram(name: "isdigit", scope: !246, file: !246, line: 237, type: !247, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !249)
!246 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!247 = !DISubroutineType(types: !248)
!248 = !{!5, !5}
!249 = !{!250}
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !245, file: !246, line: 237, type: !5)
!251 = !DISubprogram(name: "__isctype", scope: !246, file: !246, line: 164, type: !252, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !256)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !254, !255}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !130, line: 70, baseType: !5)
!255 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!256 = !{!257, !258}
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !251, file: !246, line: 164, type: !254)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !251, file: !246, line: 164, type: !255)
!259 = !DISubprogram(name: "isalnum", scope: !246, file: !246, line: 212, type: !247, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, variables: !260)
!260 = !{!261}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !259, file: !246, line: 212, type: !5)
!262 = !DISubprogram(name: "__istype", scope: !246, file: !246, line: 153, type: !263, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!5, !254, !255}
!265 = !{!266, !267}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !262, file: !246, line: 153, type: !254)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !262, file: !246, line: 153, type: !255)
!268 = !DISubprogram(name: "isascii", scope: !246, file: !246, line: 135, type: !247, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !269)
!269 = !{!270}
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !268, file: !246, line: 135, type: !5)
!271 = !{i32 2, !"Dwarf Version", i32 2}
!272 = !{i32 2, !"Debug Info Version", i32 700000003}
!273 = !{i32 1, !"PIC Level", i32 2}
!274 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!275 = !DIExpression()
!276 = !DILocation(line: 82, column: 18, scope: !8)
!277 = !DILocation(line: 96, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !8, file: !1, line: 96, column: 7)
!279 = !{!280, !281, i64 0}
!280 = !{!"msafile_struct", !281, i64 0, !281, i64 8, !284, i64 16, !281, i64 24, !284, i64 32, !281, i64 40, !284, i64 48, !284, i64 52, !284, i64 56}
!281 = !{!"any pointer", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !{!"int", !282, i64 0}
!285 = !DILocation(line: 96, column: 7, scope: !278)
!286 = !DILocation(line: 96, column: 7, scope: !8)
!287 = !DILocation(line: 97, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !8, file: !1, line: 97, column: 7)
!289 = !DILocation(line: 85, column: 11, scope: !8)
!290 = !DILocation(line: 97, column: 33, scope: !288)
!291 = !DILocation(line: 97, column: 7, scope: !8)
!292 = !DILocation(line: 104, column: 9, scope: !8)
!293 = !DILocation(line: 84, column: 11, scope: !8)
!294 = !DILocation(line: 105, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !8, file: !1, line: 105, column: 12)
!296 = !DILocation(line: 105, column: 54, scope: !295)
!297 = !DILocation(line: 105, column: 12, scope: !8)
!298 = !DILocation(line: 106, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !1, line: 105, column: 60)
!300 = !DILocation(line: 106, column: 15, scope: !299)
!301 = !{!302, !284, i64 36}
!302 = !{!"msa_struct", !281, i64 0, !281, i64 8, !281, i64 16, !284, i64 24, !284, i64 28, !284, i64 32, !284, i64 36, !281, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !281, i64 88, !281, i64 96, !281, i64 104, !281, i64 112, !281, i64 120, !282, i64 128, !282, i64 152, !281, i64 176, !284, i64 184, !284, i64 188, !281, i64 192, !281, i64 200, !284, i64 208, !284, i64 212, !281, i64 216, !281, i64 224, !281, i64 232, !284, i64 240, !281, i64 248, !281, i64 256, !281, i64 264, !284, i64 272, !281, i64 280, !281, i64 288, !281, i64 296, !284, i64 304, !281, i64 312, !284, i64 320, !284, i64 324, !281, i64 328, !281, i64 336, !281, i64 344, !284, i64 352}
!303 = !DILocation(line: 107, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 107, column: 9)
!305 = !DILocation(line: 107, column: 35, scope: !304)
!306 = !DILocation(line: 107, column: 9, scope: !299)
!307 = !DILocation(line: 108, column: 14, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !1, line: 108, column: 14)
!309 = !DILocation(line: 108, column: 56, scope: !308)
!310 = !DILocation(line: 108, column: 14, scope: !295)
!311 = !DILocation(line: 109, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 108, column: 62)
!313 = !DILocation(line: 109, column: 15, scope: !312)
!314 = !DILocation(line: 110, column: 14, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !1, line: 110, column: 9)
!316 = !DILocation(line: 110, column: 35, scope: !315)
!317 = !DILocation(line: 110, column: 9, scope: !312)
!318 = !DILocation(line: 119, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !1, line: 119, column: 11)
!320 = distinct !DILexicalBlock(scope: !8, file: !1, line: 118, column: 5)
!321 = !DILocation(line: 119, column: 28, scope: !319)
!322 = !DILocation(line: 119, column: 36, scope: !319)
!323 = !DILocation(line: 119, column: 39, scope: !319)
!324 = !DILocation(line: 119, column: 57, scope: !319)
!325 = !DILocation(line: 119, column: 66, scope: !319)
!326 = !DILocation(line: 120, column: 4, scope: !319)
!327 = !DILocation(line: 119, column: 11, scope: !320)
!328 = !DILocation(line: 123, column: 14, scope: !329)
!329 = distinct !DILexicalBlock(scope: !319, file: !1, line: 121, column: 2)
!330 = !{!281, !281, i64 0}
!331 = !DILocation(line: 123, column: 12, scope: !329)
!332 = !{!282, !282, i64 0}
!333 = !DILocation(line: 123, column: 4, scope: !329)
!334 = !DILocation(line: 87, column: 11, scope: !8)
!335 = !DILocation(line: 125, column: 41, scope: !336)
!336 = distinct !DILexicalBlock(scope: !329, file: !1, line: 123, column: 29)
!337 = !DILocation(line: 126, column: 41, scope: !336)
!338 = !DILocation(line: 128, column: 4, scope: !336)
!339 = !DILocation(line: 130, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !329, file: !1, line: 130, column: 8)
!341 = !DILocation(line: 130, column: 18, scope: !340)
!342 = !DILocation(line: 130, column: 8, scope: !329)
!343 = !DILocation(line: 130, column: 42, scope: !340)
!344 = !DILocation(line: 130, column: 32, scope: !340)
!345 = !DILocation(line: 133, column: 13, scope: !346)
!346 = distinct !DILexicalBlock(scope: !320, file: !1, line: 133, column: 11)
!347 = !DILocation(line: 133, column: 11, scope: !320)
!348 = !DILocation(line: 134, column: 2, scope: !346)
!349 = !DILocation(line: 135, column: 19, scope: !8)
!350 = !DILocation(line: 135, column: 40, scope: !8)
!351 = !DILocation(line: 135, column: 5, scope: !320)
!352 = !DILocation(line: 146, column: 15, scope: !8)
!353 = !DILocation(line: 146, column: 36, scope: !8)
!354 = !DILocation(line: 146, column: 3, scope: !8)
!355 = !DILocation(line: 157, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 153, column: 2)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 152, column: 16)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 151, column: 16)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 150, column: 16)
!360 = distinct !DILexicalBlock(scope: !8, file: !1, line: 147, column: 5)
!361 = !DILocation(line: 158, column: 22, scope: !362)
!362 = distinct !DILexicalBlock(scope: !356, file: !1, line: 158, column: 8)
!363 = !DILocation(line: 159, column: 9, scope: !356)
!364 = !DILocation(line: 160, column: 9, scope: !356)
!365 = !DILocation(line: 164, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !1, line: 162, column: 8)
!367 = !DILocation(line: 164, column: 46, scope: !366)
!368 = !DILocation(line: 167, column: 9, scope: !356)
!369 = !DILocation(line: 168, column: 9, scope: !356)
!370 = !DILocation(line: 187, column: 15, scope: !8)
!371 = !DILocation(line: 187, column: 36, scope: !8)
!372 = !DILocation(line: 187, column: 3, scope: !8)
!373 = !DILocation(line: 200, column: 32, scope: !374)
!374 = distinct !DILexicalBlock(scope: !8, file: !1, line: 188, column: 5)
!375 = !DILocation(line: 203, column: 45, scope: !374)
!376 = !DILocation(line: 203, column: 64, scope: !374)
!377 = !DILocation(line: 148, column: 15, scope: !360)
!378 = !DILocation(line: 148, column: 25, scope: !360)
!379 = !DILocation(line: 148, column: 48, scope: !360)
!380 = !DILocation(line: 148, column: 7, scope: !360)
!381 = !DILocation(line: 151, column: 30, scope: !358)
!382 = !DILocation(line: 152, column: 23, scope: !357)
!383 = !DILocation(line: 90, column: 11, scope: !8)
!384 = !DILocation(line: 152, column: 21, scope: !357)
!385 = !DILocation(line: 152, column: 43, scope: !357)
!386 = !DILocation(line: 152, column: 16, scope: !358)
!387 = !DILocation(line: 155, column: 9, scope: !356)
!388 = !DILocation(line: 91, column: 11, scope: !8)
!389 = !DILocation(line: 156, column: 12, scope: !356)
!390 = !DILocation(line: 89, column: 11, scope: !8)
!391 = !{!302, !281, i64 312}
!392 = !DILocation(line: 157, column: 12, scope: !356)
!393 = !DILocation(line: 92, column: 11, scope: !8)
!394 = !{!302, !284, i64 320}
!395 = !DILocation(line: 158, column: 14, scope: !362)
!396 = !DILocation(line: 158, column: 8, scope: !356)
!397 = !DILocation(line: 158, column: 33, scope: !362)
!398 = !DILocation(line: 159, column: 41, scope: !356)
!399 = !{!284, !284, i64 0}
!400 = !DILocation(line: 159, column: 25, scope: !356)
!401 = !DILocation(line: 159, column: 4, scope: !356)
!402 = !{!302, !281, i64 8}
!403 = !DILocation(line: 159, column: 23, scope: !356)
!404 = !DILocation(line: 160, column: 13, scope: !356)
!405 = !{!302, !284, i64 28}
!406 = !DILocation(line: 162, column: 21, scope: !366)
!407 = !DILocation(line: 162, column: 14, scope: !366)
!408 = !DILocation(line: 162, column: 12, scope: !366)
!409 = !DILocation(line: 162, column: 37, scope: !366)
!410 = !DILocation(line: 162, column: 8, scope: !356)
!411 = !{!280, !284, i64 16}
!412 = !DILocation(line: 164, column: 25, scope: !366)
!413 = !DILocation(line: 164, column: 20, scope: !366)
!414 = !{!280, !281, i64 8}
!415 = !DILocation(line: 163, column: 6, scope: !366)
!416 = !DILocation(line: 165, column: 7, scope: !356)
!417 = !DILocation(line: 166, column: 10, scope: !356)
!418 = !DILocation(line: 167, column: 22, scope: !356)
!419 = !{!302, !281, i64 16}
!420 = !DILocation(line: 167, column: 4, scope: !356)
!421 = !DILocation(line: 167, column: 20, scope: !356)
!422 = !{!423, !423, i64 0}
!423 = !{!"float", !282, i64 0}
!424 = !DILocation(line: 168, column: 15, scope: !356)
!425 = !{!302, !284, i64 32}
!426 = !DILocation(line: 170, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !357, file: !1, line: 170, column: 16)
!428 = !DILocation(line: 170, column: 36, scope: !427)
!429 = !DILocation(line: 170, column: 16, scope: !357)
!430 = !DILocation(line: 175, column: 13, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !1, line: 173, column: 2)
!432 = !DILocation(line: 175, column: 30, scope: !431)
!433 = !DILocation(line: 174, column: 4, scope: !431)
!434 = !DILocation(line: 176, column: 16, scope: !431)
!435 = !DILocation(line: 177, column: 4, scope: !431)
!436 = !DILocation(line: 208, column: 33, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 208, column: 3)
!438 = distinct !DILexicalBlock(scope: !8, file: !1, line: 208, column: 3)
!439 = !DILocation(line: 208, column: 25, scope: !437)
!440 = !DILocation(line: 208, column: 3, scope: !438)
!441 = !DILocation(line: 210, column: 16, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 210, column: 11)
!443 = distinct !DILexicalBlock(scope: !437, file: !1, line: 209, column: 5)
!444 = !DILocation(line: 211, column: 61, scope: !442)
!445 = !DILocation(line: 211, column: 81, scope: !442)
!446 = !DILocation(line: 216, column: 11, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 215, column: 33)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 215, column: 8)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 214, column: 2)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 213, column: 7)
!451 = distinct !DILexicalBlock(scope: !443, file: !1, line: 213, column: 7)
!452 = !DILocation(line: 189, column: 11, scope: !374)
!453 = !DILocation(line: 190, column: 19, scope: !454)
!454 = distinct !DILexicalBlock(scope: !374, file: !1, line: 190, column: 11)
!455 = !DILocation(line: 93, column: 11, scope: !8)
!456 = !DILocation(line: 190, column: 49, scope: !454)
!457 = !DILocation(line: 190, column: 11, scope: !374)
!458 = !DILocation(line: 191, column: 19, scope: !459)
!459 = distinct !DILexicalBlock(scope: !374, file: !1, line: 191, column: 11)
!460 = !DILocation(line: 94, column: 11, scope: !8)
!461 = !DILocation(line: 191, column: 50, scope: !459)
!462 = !DILocation(line: 191, column: 11, scope: !374)
!463 = !DILocation(line: 195, column: 25, scope: !464)
!464 = distinct !DILexicalBlock(scope: !374, file: !1, line: 195, column: 11)
!465 = !DILocation(line: 195, column: 19, scope: !464)
!466 = !DILocation(line: 195, column: 11, scope: !464)
!467 = !DILocation(line: 195, column: 32, scope: !464)
!468 = !DILocation(line: 195, column: 49, scope: !464)
!469 = !DILocation(line: 195, column: 43, scope: !464)
!470 = !DILocation(line: 195, column: 35, scope: !464)
!471 = !DILocation(line: 195, column: 11, scope: !374)
!472 = !DILocation(line: 200, column: 15, scope: !374)
!473 = !DILocation(line: 201, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !374, file: !1, line: 201, column: 11)
!475 = !DILocation(line: 201, column: 11, scope: !374)
!476 = !DILocation(line: 203, column: 40, scope: !374)
!477 = !{!302, !281, i64 0}
!478 = !{!302, !281, i64 328}
!479 = !DILocation(line: 203, column: 59, scope: !374)
!480 = !DILocation(line: 203, column: 83, scope: !374)
!481 = !DILocation(line: 203, column: 27, scope: !374)
!482 = !DILocation(line: 203, column: 12, scope: !374)
!483 = !DILocation(line: 203, column: 7, scope: !374)
!484 = !DILocation(line: 203, column: 25, scope: !374)
!485 = !DILocation(line: 210, column: 11, scope: !442)
!486 = !DILocation(line: 210, column: 28, scope: !442)
!487 = !DILocation(line: 210, column: 11, scope: !443)
!488 = !DILocation(line: 211, column: 56, scope: !442)
!489 = !DILocation(line: 211, column: 2, scope: !442)
!490 = !DILocation(line: 213, column: 26, scope: !451)
!491 = !DILocation(line: 213, column: 21, scope: !451)
!492 = !DILocation(line: 213, column: 19, scope: !451)
!493 = !DILocation(line: 213, column: 12, scope: !451)
!494 = !DILocation(line: 213, column: 39, scope: !450)
!495 = !DILocation(line: 213, column: 7, scope: !451)
!496 = !DILocation(line: 216, column: 6, scope: !447)
!497 = !DILocation(line: 216, column: 23, scope: !447)
!498 = !DILocation(line: 217, column: 4, scope: !447)
!499 = !DILocation(line: 218, column: 10, scope: !500)
!500 = distinct !DILexicalBlock(scope: !448, file: !1, line: 217, column: 11)
!501 = !DILocation(line: 219, column: 8, scope: !500)
!502 = !DILocation(line: 213, column: 52, scope: !450)
!503 = !DILocation(line: 213, column: 7, scope: !450)
!504 = !DILocation(line: 222, column: 11, scope: !443)
!505 = !DILocation(line: 225, column: 3, scope: !8)
!506 = !DILocation(line: 226, column: 3, scope: !8)
!507 = !DILocation(line: 227, column: 1, scope: !8)
!508 = !DILocation(line: 245, column: 16, scope: !218)
!509 = !DILocation(line: 245, column: 25, scope: !218)
!510 = !DILocation(line: 248, column: 3, scope: !218)
!511 = !DILocation(line: 248, column: 10, scope: !218)
!512 = !DILocation(line: 256, column: 3, scope: !218)
!513 = !DILocation(line: 256, column: 10, scope: !218)
!514 = !DILocation(line: 273, column: 17, scope: !218)
!515 = !DILocation(line: 249, column: 10, scope: !218)
!516 = !DILocation(line: 274, column: 17, scope: !218)
!517 = !DILocation(line: 250, column: 10, scope: !218)
!518 = !DILocation(line: 251, column: 10, scope: !218)
!519 = !DILocation(line: 275, column: 29, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 275, column: 4)
!521 = distinct !DILexicalBlock(scope: !218, file: !1, line: 275, column: 4)
!522 = !DILocation(line: 275, column: 22, scope: !520)
!523 = !DILocation(line: 275, column: 4, scope: !521)
!524 = !DILocation(line: 277, column: 42, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 276, column: 6)
!526 = !DILocation(line: 277, column: 60, scope: !525)
!527 = !DILocation(line: 278, column: 42, scope: !525)
!528 = !DILocation(line: 281, column: 22, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 281, column: 4)
!530 = distinct !DILexicalBlock(scope: !218, file: !1, line: 281, column: 4)
!531 = !DILocation(line: 281, column: 4, scope: !530)
!532 = !DILocation(line: 277, column: 37, scope: !525)
!533 = !{!302, !284, i64 24}
!534 = !DILocation(line: 277, column: 26, scope: !525)
!535 = !DILocation(line: 277, column: 8, scope: !525)
!536 = !DILocation(line: 277, column: 24, scope: !525)
!537 = !DILocation(line: 278, column: 37, scope: !525)
!538 = !DILocation(line: 278, column: 26, scope: !525)
!539 = !DILocation(line: 278, column: 8, scope: !525)
!540 = !DILocation(line: 278, column: 24, scope: !525)
!541 = !DILocation(line: 286, column: 22, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 286, column: 4)
!543 = distinct !DILexicalBlock(scope: !218, file: !1, line: 286, column: 4)
!544 = !DILocation(line: 286, column: 4, scope: !543)
!545 = !DILocation(line: 292, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 292, column: 8)
!547 = distinct !DILexicalBlock(scope: !542, file: !1, line: 287, column: 6)
!548 = !DILocation(line: 282, column: 15, scope: !549)
!549 = distinct !DILexicalBlock(scope: !529, file: !1, line: 282, column: 6)
!550 = !DILocation(line: 252, column: 10, scope: !218)
!551 = !DILocation(line: 282, column: 32, scope: !552)
!552 = distinct !DILexicalBlock(scope: !549, file: !1, line: 282, column: 6)
!553 = !DILocation(line: 282, column: 35, scope: !552)
!554 = !DILocation(line: 282, column: 6, scope: !549)
!555 = !DILocation(line: 212, column: 13, scope: !259, inlinedAt: !556)
!556 = distinct !DILocation(line: 283, column: 14, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !1, line: 283, column: 12)
!558 = !DILocation(line: 153, column: 29, scope: !262, inlinedAt: !559)
!559 = distinct !DILocation(line: 214, column: 10, scope: !259, inlinedAt: !556)
!560 = !DILocation(line: 153, column: 47, scope: !262, inlinedAt: !559)
!561 = !DILocation(line: 158, column: 10, scope: !262, inlinedAt: !559)
!562 = !DILocation(line: 158, column: 27, scope: !262, inlinedAt: !559)
!563 = !DILocation(line: 158, column: 25, scope: !262, inlinedAt: !559)
!564 = !DILocation(line: 159, column: 7, scope: !262, inlinedAt: !559)
!565 = !DILocation(line: 283, column: 14, scope: !557)
!566 = !DILocation(line: 214, column: 10, scope: !259, inlinedAt: !556)
!567 = !DILocation(line: 283, column: 32, scope: !557)
!568 = !DILocation(line: 283, column: 35, scope: !557)
!569 = !DILocation(line: 283, column: 45, scope: !557)
!570 = !DILocation(line: 284, column: 6, scope: !557)
!571 = !DILocation(line: 284, column: 3, scope: !557)
!572 = !DILocation(line: 282, column: 45, scope: !552)
!573 = !DILocation(line: 281, column: 29, scope: !529)
!574 = !DILocation(line: 297, column: 21, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 297, column: 3)
!576 = distinct !DILexicalBlock(scope: !218, file: !1, line: 297, column: 3)
!577 = !DILocation(line: 297, column: 3, scope: !576)
!578 = !DILocation(line: 298, column: 28, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !1, line: 298, column: 9)
!580 = !DILocation(line: 288, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !547, file: !1, line: 288, column: 8)
!582 = !DILocation(line: 288, column: 13, scope: !581)
!583 = !DILocation(line: 288, column: 32, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !1, line: 288, column: 8)
!585 = !DILocation(line: 288, column: 43, scope: !584)
!586 = !DILocation(line: 289, column: 6, scope: !584)
!587 = !DILocation(line: 288, column: 58, scope: !584)
!588 = !DILocation(line: 288, column: 8, scope: !584)
!589 = !DILocation(line: 290, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !547, file: !1, line: 290, column: 8)
!591 = !DILocation(line: 291, column: 21, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 291, column: 7)
!593 = distinct !DILexicalBlock(scope: !590, file: !1, line: 290, column: 8)
!594 = !DILocation(line: 291, column: 18, scope: !592)
!595 = !DILocation(line: 290, column: 28, scope: !593)
!596 = !DILocation(line: 290, column: 15, scope: !593)
!597 = !DILocation(line: 290, column: 8, scope: !593)
!598 = !DILocation(line: 292, column: 36, scope: !599)
!599 = distinct !DILexicalBlock(scope: !546, file: !1, line: 292, column: 8)
!600 = !DILocation(line: 292, column: 40, scope: !599)
!601 = !DILocation(line: 292, column: 43, scope: !599)
!602 = !DILocation(line: 293, column: 22, scope: !599)
!603 = !DILocation(line: 286, column: 29, scope: !542)
!604 = !DILocation(line: 298, column: 23, scope: !579)
!605 = !DILocation(line: 298, column: 16, scope: !579)
!606 = !DILocation(line: 253, column: 10, scope: !218)
!607 = !DILocation(line: 298, column: 42, scope: !579)
!608 = !DILocation(line: 254, column: 10, scope: !218)
!609 = !DILocation(line: 298, column: 9, scope: !575)
!610 = !DILocation(line: 305, column: 12, scope: !611)
!611 = distinct !DILexicalBlock(scope: !218, file: !1, line: 305, column: 7)
!612 = !DILocation(line: 305, column: 17, scope: !611)
!613 = !DILocation(line: 305, column: 7, scope: !218)
!614 = !DILocation(line: 306, column: 44, scope: !611)
!615 = !DILocation(line: 306, column: 17, scope: !611)
!616 = !DILocation(line: 306, column: 15, scope: !611)
!617 = !DILocation(line: 306, column: 5, scope: !611)
!618 = !DILocation(line: 308, column: 17, scope: !619)
!619 = distinct !DILexicalBlock(scope: !218, file: !1, line: 308, column: 12)
!620 = !DILocation(line: 308, column: 12, scope: !218)
!621 = !DILocation(line: 308, column: 33, scope: !619)
!622 = !DILocation(line: 309, column: 33, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !1, line: 309, column: 12)
!624 = !DILocation(line: 310, column: 33, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !1, line: 310, column: 12)
!626 = !DILocation(line: 312, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !625, file: !1, line: 311, column: 12)
!628 = !DILocation(line: 314, column: 5, scope: !627)
!629 = !DILocation(line: 317, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !218, file: !1, line: 317, column: 7)
!631 = !{!302, !284, i64 184}
!632 = !DILocation(line: 317, column: 21, scope: !630)
!633 = !DILocation(line: 317, column: 7, scope: !218)
!634 = !DILocation(line: 320, column: 27, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 319, column: 7)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 319, column: 7)
!637 = distinct !DILexicalBlock(scope: !630, file: !1, line: 318, column: 5)
!638 = !DILocation(line: 319, column: 7, scope: !636)
!639 = !{!302, !281, i64 176}
!640 = !DILocation(line: 320, column: 22, scope: !635)
!641 = !DILocation(line: 320, column: 2, scope: !635)
!642 = !DILocation(line: 319, column: 32, scope: !635)
!643 = !DILocation(line: 319, column: 25, scope: !635)
!644 = !DILocation(line: 321, column: 7, scope: !637)
!645 = !DILocation(line: 322, column: 5, scope: !637)
!646 = !DILocation(line: 324, column: 9, scope: !218)
!647 = !DILocation(line: 247, column: 10, scope: !218)
!648 = !DILocation(line: 324, column: 7, scope: !218)
!649 = !{!650, !650, i64 0}
!650 = !{!"long", !282, i64 0}
!651 = !DILocation(line: 325, column: 45, scope: !652)
!652 = distinct !DILexicalBlock(scope: !218, file: !1, line: 325, column: 7)
!653 = !DILocation(line: 325, column: 7, scope: !652)
!654 = !DILocation(line: 325, column: 62, scope: !652)
!655 = !DILocation(line: 325, column: 7, scope: !218)
!656 = !DILocation(line: 326, column: 5, scope: !652)
!657 = !DILocation(line: 328, column: 9, scope: !218)
!658 = !{!302, !281, i64 40}
!659 = !DILocation(line: 328, column: 14, scope: !218)
!660 = !DILocation(line: 328, column: 4, scope: !218)
!661 = !DILocation(line: 329, column: 9, scope: !218)
!662 = !DILocation(line: 330, column: 9, scope: !218)
!663 = !DILocation(line: 330, column: 14, scope: !218)
!664 = !DILocation(line: 330, column: 4, scope: !218)
!665 = !DILocation(line: 332, column: 35, scope: !218)
!666 = !DILocation(line: 332, column: 4, scope: !218)
!667 = !DILocation(line: 327, column: 3, scope: !218)
!668 = !DILocation(line: 333, column: 3, scope: !218)
!669 = !DILocation(line: 339, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 339, column: 3)
!671 = distinct !DILexicalBlock(scope: !218, file: !1, line: 339, column: 3)
!672 = !DILocation(line: 339, column: 21, scope: !670)
!673 = !DILocation(line: 339, column: 3, scope: !671)
!674 = !DILocation(line: 346, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !1, line: 340, column: 5)
!676 = !DILocation(line: 343, column: 8, scope: !675)
!677 = !DILocation(line: 344, column: 13, scope: !675)
!678 = !DILocation(line: 345, column: 20, scope: !675)
!679 = !DILocation(line: 345, column: 8, scope: !675)
!680 = !DILocation(line: 346, column: 8, scope: !675)
!681 = !DILocation(line: 341, column: 7, scope: !675)
!682 = !DILocation(line: 348, column: 3, scope: !218)
!683 = !DILocation(line: 349, column: 3, scope: !218)
!684 = !DILocation(line: 255, column: 10, scope: !218)
!685 = !DILocation(line: 355, column: 28, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 355, column: 3)
!687 = distinct !DILexicalBlock(scope: !218, file: !1, line: 355, column: 3)
!688 = !DILocation(line: 355, column: 21, scope: !686)
!689 = !DILocation(line: 355, column: 3, scope: !687)
!690 = !DILocation(line: 385, column: 42, scope: !218)
!691 = !DILocation(line: 374, column: 4, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 370, column: 2)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 369, column: 7)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 369, column: 7)
!695 = distinct !DILexicalBlock(scope: !686, file: !1, line: 356, column: 5)
!696 = !DILocation(line: 357, column: 7, scope: !695)
!697 = !DILocation(line: 360, column: 31, scope: !695)
!698 = !DILocation(line: 360, column: 24, scope: !695)
!699 = !DILocation(line: 360, column: 48, scope: !695)
!700 = !DILocation(line: 360, column: 13, scope: !695)
!701 = !DILocation(line: 361, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !695, file: !1, line: 361, column: 11)
!703 = !DILocation(line: 363, column: 6, scope: !702)
!704 = !DILocation(line: 361, column: 11, scope: !695)
!705 = !DILocation(line: 364, column: 14, scope: !702)
!706 = !DILocation(line: 364, column: 17, scope: !702)
!707 = !DILocation(line: 364, column: 7, scope: !702)
!708 = !DILocation(line: 364, column: 22, scope: !702)
!709 = !DILocation(line: 365, column: 7, scope: !702)
!710 = !DILocation(line: 362, column: 2, scope: !702)
!711 = !DILocation(line: 367, column: 2, scope: !702)
!712 = !DILocation(line: 369, column: 32, scope: !693)
!713 = !DILocation(line: 369, column: 25, scope: !693)
!714 = !DILocation(line: 369, column: 7, scope: !694)
!715 = !DILocation(line: 376, column: 18, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 376, column: 4)
!717 = distinct !DILexicalBlock(scope: !692, file: !1, line: 376, column: 4)
!718 = !DILocation(line: 371, column: 34, scope: !692)
!719 = !DILocation(line: 371, column: 4, scope: !692)
!720 = !DILocation(line: 373, column: 4, scope: !692)
!721 = !DILocation(line: 374, column: 15, scope: !692)
!722 = !DILocation(line: 257, column: 10, scope: !218)
!723 = !DILocation(line: 376, column: 4, scope: !717)
!724 = !DILocation(line: 378, column: 17, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 378, column: 12)
!726 = distinct !DILexicalBlock(scope: !716, file: !1, line: 377, column: 6)
!727 = !DILocation(line: 378, column: 12, scope: !726)
!728 = !DILocation(line: 378, column: 24, scope: !725)
!729 = !DILocation(line: 379, column: 14, scope: !726)
!730 = !DILocation(line: 379, column: 8, scope: !726)
!731 = !DILocation(line: 381, column: 4, scope: !692)
!732 = !DILocation(line: 385, column: 3, scope: !218)
!733 = !DILocation(line: 386, column: 42, scope: !218)
!734 = !DILocation(line: 386, column: 3, scope: !218)
!735 = !DILocation(line: 388, column: 1, scope: !218)
