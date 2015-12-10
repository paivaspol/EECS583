; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@IOASCII_Write3D.directions = internal constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@IOASCII_Write3D.origin = internal constant [3 x i32] zeroinitializer, align 4
@IOASCII_Write3D.lengths = internal constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@IOASCII_Write3D.downsamples = internal constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str = private unnamed_addr constant [77 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write3D.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"No IOASCII 3D output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"\0A\0A#Time = %%%s\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"%%%s\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"gnuplot f(t,x,y,z)\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"%%%s\09\09\00", align 1
@.str7 = private unnamed_addr constant [21 x i8] c"%%%s\09\09%%%s\09\09%%d\09\09%%d\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"%%%s\09\09%%%s\09\09%%%s\09\09%%%s\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"cart3d\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"IOASCII_Write3D: No coordinate ranges found for '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str11 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"%s/%s_3D.asc\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"%s_3D.asc\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"Cannot open 3D IOASCII output file '%s'\00", align 1
@.str17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str18 = private unnamed_addr constant [35 x i8] c"Full-dimensional variable contents\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"#Parameter file %s\0A\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"#Created %s \00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str27 = private unnamed_addr constant [13 x i8] c"#z-label %s\0A\00", align 1
@.str28 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for x-coordinate\00", align 1
@.str29 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for y-coordinate\00", align 1
@.str30 = private unnamed_addr constant [48 x i8] c"Failed to extract 3D hyperslab for z-coordinate\00", align 1
@.str31 = private unnamed_addr constant [49 x i8] c"Failed to extract 3D hyperslab for variable '%s'\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str34 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@.str35 = private unnamed_addr constant [54 x i8] c"$Id: Write3D.c,v 1.2 2001/12/28 21:28:37 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Write3D_c() #0 {
  ret i8* getelementptr inbounds ([54 x i8]* @.str35, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %header_fmt_string = alloca [30 x i8], align 16
  %out_real_format = alloca [30 x i8], align 16
  %time_fmt_string = alloca [30 x i8], align 16
  %data_fmt_string_int = alloca [30 x i8], align 16
  %data_fmt_string_real = alloca [30 x i8], align 16
  %coord_index = alloca [3 x i32], align 4
  %coord_lower = alloca [3 x double], align 16
  %dummy = alloca double, align 8
  %groupinfo = alloca %struct.cGroup, align 4
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %buffer = alloca [128 x i8], align 16
  %hsize = alloca [3 x i32], align 4
  %coord_data = alloca [3 x double*], align 16
  %stagger_offset = alloca [3 x double], align 16
  %data = alloca i8*, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 13), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 15), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 14), align 8, !tbaa !10
  %4 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #2
  %5 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %7 = call i32 @CCTK_GroupData(i32 %6, %struct.cGroup* %groupinfo) #7
  %8 = call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %6) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = call i8* @CCTK_FullName(i32 %vindex) #7
  %12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 171, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %11) #7
  call void @free(i8* %11) #8
  br label %.loopexit

; <label>:13                                      ; preds = %0
  %14 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #7
  %15 = getelementptr inbounds [30 x i8]* %header_fmt_string, i64 0, i64 0
  %16 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %15, i32 0, i64 30, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* %2) #7
  %17 = getelementptr inbounds [30 x i8]* %out_real_format, i64 0, i64 0
  %18 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %17, i32 0, i64 30, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* %2) #7
  %19 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %._crit_edge648, label %21

._crit_edge648:                                   ; preds = %13
  %.pre649 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %.pre651 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  br label %32

; <label>:21                                      ; preds = %13
  %22 = getelementptr inbounds [30 x i8]* %time_fmt_string, i64 0, i64 0
  %23 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %22, i32 0, i64 30, i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* %2) #7
  %24 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %25 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %26 = load double* %25, align 8, !tbaa !12
  %27 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %24, i32 0, i64 30, i8* %22, double %26) #7
  %28 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  %29 = load double* %25, align 8, !tbaa !12
  %30 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %28, i32 0, i64 30, i8* %22, double %29) #7
  %31 = call i64 @strlen(i8* %24) #7
  br label %32

; <label>:32                                      ; preds = %._crit_edge648, %21
  %.pre-phi652 = phi i8* [ %.pre651, %._crit_edge648 ], [ %28, %21 ]
  %.pre-phi650 = phi i8* [ %.pre649, %._crit_edge648 ], [ %24, %21 ]
  %dir.0 = phi i64 [ 0, %._crit_edge648 ], [ %31, %21 ]
  %sext = shl i64 %dir.0, 32
  %33 = ashr exact i64 %sext, 32
  %34 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 %33
  %35 = call i64 @llvm.objectsize.i64.p0i8(i8* %34, i1 false)
  %36 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %34, i32 0, i64 %35, i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i8* %2, i8* %2) #7
  %37 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 %33
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %37, i1 false)
  %39 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %37, i32 0, i64 %38, i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i8* %2, i8* %2, i8* %2, i8* %2) #7
  %40 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0
  %41 = load i32* %40, align 4, !tbaa !14
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %.preheader204, label %53

.preheader204:                                    ; preds = %32, %.preheader204
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %.preheader204 ], [ 0, %32 ]
  %have_coords.0484 = phi i32 [ %48, %.preheader204 ], [ 1, %32 ]
  %43 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %indvars.iv529
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1
  %44 = trunc i64 %indvars.iv.next530 to i32
  %45 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %43, double* %dummy, i32 %44, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7
  %46 = call i32 @CCTK_CoordIndex(i32 %44, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7
  %47 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %indvars.iv529
  store i32 %46, i32* %47, align 4, !tbaa !16
  %.lobit = lshr i32 %46, 31
  %.lobit.not = xor i32 %.lobit, 1
  %48 = and i32 %.lobit.not, %have_coords.0484
  %exitcond531 = icmp eq i64 %indvars.iv.next530, 3
  br i1 %exitcond531, label %49, label %.preheader204

; <label>:49                                      ; preds = %.preheader204
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %53

; <label>:51                                      ; preds = %49
  %52 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 209, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str9, i64 0, i64 0)) #7
  br label %53

; <label>:53                                      ; preds = %32, %49, %51
  %have_coords.1 = phi i32 [ %48, %49 ], [ 0, %51 ], [ 0, %32 ]
  %54 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !17
  %55 = call i32 %54(%struct.cGH* %GH) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %136

; <label>:57                                      ; preds = %53
  %58 = getelementptr inbounds i8* %14, i64 104
  %59 = bitcast i8* %58 to %struct.PNamedData**
  %60 = load %struct.PNamedData** %59, align 8, !tbaa !18
  %61 = call i8* @GetNamedData(%struct.PNamedData* %60, i8* %alias) #7
  %62 = bitcast i8* %61 to %struct.__sFILE**
  %63 = icmp eq i8* %61, null
  br i1 %63, label %64, label %133

; <label>:64                                      ; preds = %57
  %65 = call i8* @malloc(i64 8) #7
  %66 = bitcast i8* %65 to %struct.__sFILE**
  %67 = getelementptr inbounds i8* %14, i64 56
  %68 = bitcast i8* %67 to i8**
  %69 = load i8** %68, align 8, !tbaa !20
  %70 = call i64 @strlen(i8* %69) #7
  %71 = call i64 @strlen(i8* %alias) #7
  %72 = add i64 %70, 9
  %73 = add i64 %72, %71
  %74 = call i8* @malloc(i64 %73) #7
  %75 = call i8* @CCTK_FullName(i32 %vindex) #7
  %76 = load i8** %68, align 8, !tbaa !20
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7
  %78 = icmp eq i32 %77, 0
  %79 = call i64 @llvm.objectsize.i64.p0i8(i8* %74, i1 false)
  br i1 %78, label %82, label %80

; <label>:80                                      ; preds = %64
  %81 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %74, i32 0, i64 %79, i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), i8* %76, i8* %alias) #7
  br label %84

; <label>:82                                      ; preds = %64
  %83 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %74, i32 0, i64 %79, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0), i8* %alias) #7
  br label %84

; <label>:84                                      ; preds = %82, %80
  store %struct.__sFILE* null, %struct.__sFILE** %66, align 8, !tbaa !17
  %85 = call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %thread-pre-split, label %87

; <label>:87                                      ; preds = %84
  %88 = call %struct.__sFILE* @"\01_fopen"(i8* %74, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7
  store %struct.__sFILE* %88, %struct.__sFILE** %66, align 8, !tbaa !17
  br label %89

thread-pre-split:                                 ; preds = %84
  %.pr = load %struct.__sFILE** %66, align 8, !tbaa !17
  br label %89

; <label>:89                                      ; preds = %thread-pre-split, %87
  %.pr139 = phi %struct.__sFILE* [ %.pr, %thread-pre-split ], [ %88, %87 ]
  %90 = icmp eq %struct.__sFILE* %.pr139, null
  br i1 %90, label %thread-pre-split138, label %thread-pre-split138.thread

thread-pre-split138:                              ; preds = %89
  %91 = call %struct.__sFILE* @"\01_fopen"(i8* %74, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7
  store %struct.__sFILE* %91, %struct.__sFILE** %66, align 8, !tbaa !17
  %92 = icmp eq %struct.__sFILE* %91, null
  br i1 %92, label %93, label %thread-pre-split138.thread

; <label>:93                                      ; preds = %thread-pre-split138
  %94 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 261, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0), i8* %74) #7
  br label %.loopexit

thread-pre-split138.thread:                       ; preds = %89, %thread-pre-split138
  %95 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3
  store i8* getelementptr inbounds ([1 x i8]* @.str17, i64 0, i64 0), i8** %95, align 8, !tbaa !21
  %96 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0
  store i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8** %96, align 8, !tbaa !23
  %97 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1
  store i8* %75, i8** %97, align 8, !tbaa !24
  %98 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4
  store i8* getelementptr inbounds ([35 x i8]* @.str18, i64 0, i64 0), i8** %98, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2
  store i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8** %99, align 8, !tbaa !26
  %100 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %74, %struct.ioAdvertisedFileDesc* %advertised_file) #7
  %101 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

; <label>:103                                     ; preds = %thread-pre-split138.thread
  %104 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

; <label>:106                                     ; preds = %103, %thread-pre-split138.thread
  store i8 0, i8* %5, align 16, !tbaa !27
  %107 = call i32 @CCTK_ParameterFilename(i32 128, i8* %5) #7
  %108 = load %struct.__sFILE** %66, align 8, !tbaa !17
  %109 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %108, i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* %5) #7
  br label %110

; <label>:110                                     ; preds = %103, %106
  %111 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

; <label>:113                                     ; preds = %110
  %114 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

; <label>:116                                     ; preds = %113, %110
  store i8 0, i8* %5, align 16, !tbaa !27
  %117 = call i32 @Util_CurrentDate(i32 128, i8* %5) #7
  %118 = load %struct.__sFILE** %66, align 8, !tbaa !17
  %119 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %118, i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i8* %5) #7
  %120 = call i32 @Util_CurrentTime(i32 128, i8* %5) #7
  %121 = load %struct.__sFILE** %66, align 8, !tbaa !17
  %122 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %121, i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* %5) #7
  br label %123

; <label>:123                                     ; preds = %113, %116
  %124 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

; <label>:126                                     ; preds = %123
  %127 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

; <label>:129                                     ; preds = %126, %123
  %130 = load %struct.__sFILE** %66, align 8, !tbaa !17
  %131 = load i8** %97, align 8, !tbaa !24
  %132 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %130, i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), i8* %131) #7
  br label %133

; <label>:133                                     ; preds = %126, %129, %57
  %file.0 = phi %struct.__sFILE** [ %66, %129 ], [ %66, %126 ], [ %62, %57 ]
  %filename.0 = phi i8* [ %74, %129 ], [ %74, %126 ], [ null, %57 ]
  %fullname.0 = phi i8* [ %75, %129 ], [ %75, %126 ], [ null, %57 ]
  %134 = bitcast %struct.__sFILE** %file.0 to i8*
  %135 = call i32 @StoreNamedData(%struct.PNamedData** %59, i8* %alias, i8* %134) #7
  call void @free(i8* %filename.0) #8
  call void @free(i8* %fullname.0) #8
  br label %136

; <label>:136                                     ; preds = %133, %53
  %file.1 = phi %struct.__sFILE** [ %file.0, %133 ], [ null, %53 ]
  %137 = icmp ne i32 %have_coords.1, 0
  br i1 %137, label %138, label %168

; <label>:138                                     ; preds = %136
  %139 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 0
  %140 = load i32* %139, align 4, !tbaa !16
  %141 = bitcast [3 x double*]* %coord_data to i8**
  %142 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 0
  %143 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %140, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %141, i32* %142) #7
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

; <label>:145                                     ; preds = %138
  %146 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 315, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str28, i64 0, i64 0)) #7
  br label %.loopexit

; <label>:147                                     ; preds = %138
  %148 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 1
  %149 = load i32* %148, align 4, !tbaa !16
  %150 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %151 = bitcast double** %150 to i8**
  %152 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %149, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %151, i32* %142) #7
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

; <label>:154                                     ; preds = %147
  %155 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 325, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str29, i64 0, i64 0)) #7
  %156 = load i8** %141, align 16, !tbaa !17
  call void @free(i8* %156) #8
  br label %.loopexit

; <label>:157                                     ; preds = %147
  %158 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 2
  %159 = load i32* %158, align 4, !tbaa !16
  %160 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %161 = bitcast double** %160 to i8**
  %162 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %159, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %161, i32* %142) #7
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %157
  %165 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 336, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str30, i64 0, i64 0)) #7
  %166 = load i8** %151, align 8, !tbaa !17
  call void @free(i8* %166) #8
  %167 = load i8** %141, align 16, !tbaa !17
  call void @free(i8* %167) #8
  br label %.loopexit

; <label>:168                                     ; preds = %136
  %.pre584 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 0
  %169 = bitcast [3 x double*]* %coord_data to i8*
  call void @llvm.memset.p0i8.i64(i8* %169, i8 0, i64 24, i32 16, i1 false)
  br label %170

; <label>:170                                     ; preds = %157, %168
  %.pre-phi = phi i32* [ %142, %157 ], [ %.pre584, %168 ]
  %171 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %vindex, i32 0, i32 3, i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.origin, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.directions, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32]* @IOASCII_Write3D.downsamples, i64 0, i64 0), i8** %data, i32* %.pre-phi) #7
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %183

; <label>:173                                     ; preds = %170
  %174 = call i8* @CCTK_FullName(i32 %vindex) #7
  %175 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 354, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0), i8* %174) #7
  call void @free(i8* %174) #8
  br label %176

; <label>:176                                     ; preds = %182, %173
  %indvars.iv = phi i64 [ 0, %173 ], [ %indvars.iv.next, %182 ]
  %177 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 %indvars.iv
  %178 = load double** %177, align 8, !tbaa !17
  %179 = icmp eq double* %178, null
  br i1 %179, label %182, label %180

; <label>:180                                     ; preds = %176
  %181 = bitcast double* %178 to i8*
  call void @free(i8* %181) #8
  br label %182

; <label>:182                                     ; preds = %176, %180
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %176

; <label>:183                                     ; preds = %170
  br i1 %56, label %.preheader203, label %.loopexit

.preheader203:                                    ; preds = %183
  %184 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 3
  %185 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  br label %186

; <label>:186                                     ; preds = %186, %.preheader203
  %indvars.iv526 = phi i64 [ 0, %.preheader203 ], [ %indvars.iv.next527, %186 ]
  %187 = load i32* %184, align 4, !tbaa !28
  %188 = trunc i64 %indvars.iv526 to i32
  %189 = call i32 @CCTK_StaggerDirIndex(i32 %188, i32 %187) #7
  %190 = sitofp i32 %189 to double
  %191 = fmul double %190, 5.000000e-01
  %192 = load double** %185, align 8, !tbaa !29
  %193 = getelementptr inbounds double* %192, i64 %indvars.iv526
  %194 = load double* %193, align 8, !tbaa !30
  %195 = fmul double %191, %194
  %196 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 %indvars.iv526
  store double %195, double* %196, align 8, !tbaa !30
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1
  %exitcond528 = icmp eq i64 %indvars.iv.next527, 3
  br i1 %exitcond528, label %197, label %186

; <label>:197                                     ; preds = %186
  %198 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %199 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %200 = load double* %199, align 8, !tbaa !12
  %201 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %198, i8* %15, double %200) #7
  %202 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 1
  %203 = load i32* %202, align 4, !tbaa !31
  switch i32 %203, label %1179 [
    i32 1, label %204
    i32 2, label %303
    i32 6, label %401
    i32 10, label %401
    i32 3, label %519
    i32 4, label %619
    i32 5, label %717
    i32 7, label %817
    i32 11, label %817
    i32 8, label %939
    i32 12, label %939
    i32 9, label %1057
    i32 13, label %1057
  ]

; <label>:204                                     ; preds = %197
  %205 = load i8** %data, align 8, !tbaa !17
  %206 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %207 = load i32* %206, align 4, !tbaa !16
  %208 = icmp sgt i32 %207, 0
  br i1 %137, label %.preheader142, label %.preheader145

.preheader145:                                    ; preds = %204
  br i1 %208, label %.preheader144.lr.ph, label %.loopexit146

.preheader144.lr.ph:                              ; preds = %.preheader145
  %209 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre578 = load i32* %209, align 4, !tbaa !16
  br label %.preheader144

.preheader142:                                    ; preds = %204
  %210 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %208, label %.preheader141.lr.ph, label %.preheader142._crit_edge

.preheader142._crit_edge:                         ; preds = %.preheader142
  %.pre583 = load i32* %210, align 4, !tbaa !16
  %.pre586 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre588 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre590 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge251

.preheader141.lr.ph:                              ; preds = %.preheader142
  %211 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %212 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %213 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %214 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %215 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %216 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre580 = load i32* %210, align 4, !tbaa !16
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.lr.ph, %253
  %217 = phi i32 [ %207, %.preheader141.lr.ph ], [ %254, %253 ]
  %218 = phi i32 [ %.pre580, %.preheader141.lr.ph ], [ %255, %253 ]
  %_typed_data.0250 = phi i8* [ %205, %.preheader141.lr.ph ], [ %_typed_data.1.lcssa, %253 ]
  %_k.0249 = phi i32 [ 0, %.preheader141.lr.ph ], [ %256, %253 ]
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %.preheader, label %253

.preheader:                                       ; preds = %.preheader141, %._crit_edge
  %_typed_data.1246 = phi i8* [ %_typed_data.2.lcssa, %._crit_edge ], [ %_typed_data.0250, %.preheader141 ]
  %_j.0245 = phi i32 [ %250, %._crit_edge ], [ 0, %.preheader141 ]
  %220 = load i32* %.pre-phi, align 4, !tbaa !16
  %221 = icmp sgt i32 %220, 0
  %222 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %221, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %223 = phi %struct.__sFILE* [ %249, %.lr.ph ], [ %222, %.preheader ]
  %_typed_data.2243 = phi i8* [ %241, %.lr.ph ], [ %_typed_data.1246, %.preheader ]
  %_i.0242 = phi i32 [ %246, %.lr.ph ], [ 0, %.preheader ]
  %224 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %225 = load <2 x double*>* %224, align 16, !tbaa !17
  %226 = extractelement <2 x double*> %225, i32 0
  %227 = load double* %226, align 8, !tbaa !30
  %228 = load double* %212, align 16, !tbaa !30
  %229 = fadd double %227, %228
  %230 = getelementptr <2 x double*> %225, <2 x i64> <i64 1, i64 1>
  %231 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %230, <2 x double*>* %231, align 16, !tbaa !17
  %232 = extractelement <2 x double*> %225, i32 1
  %233 = load double* %232, align 8, !tbaa !30
  %234 = load double* %214, align 8, !tbaa !30
  %235 = fadd double %233, %234
  %236 = load double** %215, align 16, !tbaa !17
  %237 = getelementptr inbounds double* %236, i64 1
  store double* %237, double** %215, align 16, !tbaa !17
  %238 = load double* %236, align 8, !tbaa !30
  %239 = load double* %216, align 16, !tbaa !30
  %240 = fadd double %238, %239
  %241 = getelementptr inbounds i8* %_typed_data.2243, i64 1
  %242 = load i8* %_typed_data.2243, align 1, !tbaa !27
  %243 = zext i8 %242 to i32
  %244 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %223, i8* %.pre-phi650, double %229, double %235, double %240, i32 %243) #7
  %245 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc137 = call i32 @fputc(i32 10, %struct.__sFILE* %245)
  %246 = add nuw nsw i32 %_i.0242, 1
  %247 = load i32* %.pre-phi, align 4, !tbaa !16
  %248 = icmp slt i32 %246, %247
  %249 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %248, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi %struct.__sFILE* [ %222, %.preheader ], [ %249, %.lr.ph ]
  %_typed_data.2.lcssa = phi i8* [ %_typed_data.1246, %.preheader ], [ %241, %.lr.ph ]
  %fputc134 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa)
  %250 = add nuw nsw i32 %_j.0245, 1
  %251 = load i32* %210, align 4, !tbaa !16
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %.preheader, label %._crit_edge247

._crit_edge247:                                   ; preds = %._crit_edge
  %.pre581 = load i32* %206, align 4, !tbaa !16
  br label %253

; <label>:253                                     ; preds = %._crit_edge247, %.preheader141
  %254 = phi i32 [ %.pre581, %._crit_edge247 ], [ %217, %.preheader141 ]
  %255 = phi i32 [ %251, %._crit_edge247 ], [ %218, %.preheader141 ]
  %_typed_data.1.lcssa = phi i8* [ %_typed_data.2.lcssa, %._crit_edge247 ], [ %_typed_data.0250, %.preheader141 ]
  %256 = add nuw nsw i32 %_k.0249, 1
  %257 = icmp slt i32 %256, %254
  br i1 %257, label %.preheader141, label %._crit_edge251

._crit_edge251:                                   ; preds = %253, %.preheader142._crit_edge
  %.pre-phi591 = phi double** [ %.pre590, %.preheader142._crit_edge ], [ %215, %253 ]
  %.pre-phi589 = phi double** [ %.pre588, %.preheader142._crit_edge ], [ %213, %253 ]
  %.pre-phi587 = phi double** [ %.pre586, %.preheader142._crit_edge ], [ %211, %253 ]
  %258 = phi i32 [ %.pre583, %.preheader142._crit_edge ], [ %255, %253 ]
  %259 = phi i32 [ %207, %.preheader142._crit_edge ], [ %254, %253 ]
  %260 = load i32* %.pre-phi, align 4, !tbaa !16
  %261 = mul i32 %260, %259
  %262 = mul i32 %261, %258
  %263 = load double** %.pre-phi587, align 16, !tbaa !17
  %264 = sext i32 %262 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds double* %263, i64 %265
  store double* %266, double** %.pre-phi587, align 16, !tbaa !17
  %267 = mul nsw i32 %258, %260
  %268 = mul nsw i32 %267, %259
  %269 = load double** %.pre-phi589, align 8, !tbaa !17
  %270 = sext i32 %268 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds double* %269, i64 %271
  store double* %272, double** %.pre-phi589, align 8, !tbaa !17
  %273 = load double** %.pre-phi591, align 16, !tbaa !17
  %274 = getelementptr inbounds double* %273, i64 %271
  store double* %274, double** %.pre-phi591, align 16, !tbaa !17
  br label %.loopexit146

.preheader144:                                    ; preds = %.preheader144.lr.ph, %298
  %275 = phi i32 [ %207, %.preheader144.lr.ph ], [ %299, %298 ]
  %276 = phi i32 [ %.pre578, %.preheader144.lr.ph ], [ %300, %298 ]
  %_typed_data.3265 = phi i8* [ %205, %.preheader144.lr.ph ], [ %_typed_data.4.lcssa, %298 ]
  %_k.1264 = phi i32 [ 0, %.preheader144.lr.ph ], [ %301, %298 ]
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %.preheader143.lr.ph, label %298

.preheader143.lr.ph:                              ; preds = %.preheader144
  %278 = sitofp i32 %_k.1264 to double
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %._crit_edge257
  %_typed_data.4261 = phi i8* [ %_typed_data.3265, %.preheader143.lr.ph ], [ %_typed_data.5.lcssa, %._crit_edge257 ]
  %_j.1260 = phi i32 [ 0, %.preheader143.lr.ph ], [ %295, %._crit_edge257 ]
  %279 = load i32* %.pre-phi, align 4, !tbaa !16
  %280 = icmp sgt i32 %279, 0
  %281 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %280, label %.lr.ph256, label %._crit_edge257

.lr.ph256:                                        ; preds = %.preheader143
  %282 = sitofp i32 %_j.1260 to double
  br label %283

; <label>:283                                     ; preds = %.lr.ph256, %283
  %284 = phi %struct.__sFILE* [ %281, %.lr.ph256 ], [ %294, %283 ]
  %_typed_data.5255 = phi i8* [ %_typed_data.4261, %.lr.ph256 ], [ %286, %283 ]
  %_i.1254 = phi i32 [ 0, %.lr.ph256 ], [ %291, %283 ]
  %285 = sitofp i32 %_i.1254 to double
  %286 = getelementptr inbounds i8* %_typed_data.5255, i64 1
  %287 = load i8* %_typed_data.5255, align 1, !tbaa !27
  %288 = zext i8 %287 to i32
  %289 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %284, i8* %.pre-phi650, double %285, double %282, double %278, i32 %288) #7
  %290 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc131 = call i32 @fputc(i32 10, %struct.__sFILE* %290)
  %291 = add nuw nsw i32 %_i.1254, 1
  %292 = load i32* %.pre-phi, align 4, !tbaa !16
  %293 = icmp slt i32 %291, %292
  %294 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %293, label %283, label %._crit_edge257

._crit_edge257:                                   ; preds = %283, %.preheader143
  %.lcssa207 = phi %struct.__sFILE* [ %281, %.preheader143 ], [ %294, %283 ]
  %_typed_data.5.lcssa = phi i8* [ %_typed_data.4261, %.preheader143 ], [ %286, %283 ]
  %fputc128 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa207)
  %295 = add nuw nsw i32 %_j.1260, 1
  %296 = load i32* %209, align 4, !tbaa !16
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %.preheader143, label %._crit_edge262

._crit_edge262:                                   ; preds = %._crit_edge257
  %.pre579 = load i32* %206, align 4, !tbaa !16
  br label %298

; <label>:298                                     ; preds = %._crit_edge262, %.preheader144
  %299 = phi i32 [ %.pre579, %._crit_edge262 ], [ %275, %.preheader144 ]
  %300 = phi i32 [ %296, %._crit_edge262 ], [ %276, %.preheader144 ]
  %_typed_data.4.lcssa = phi i8* [ %_typed_data.5.lcssa, %._crit_edge262 ], [ %_typed_data.3265, %.preheader144 ]
  %301 = add nuw nsw i32 %_k.1264, 1
  %302 = icmp slt i32 %301, %299
  br i1 %302, label %.preheader144, label %.loopexit146

; <label>:303                                     ; preds = %197
  %304 = bitcast i8** %data to i32**
  %305 = load i32** %304, align 8, !tbaa !17
  %306 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %307 = load i32* %306, align 4, !tbaa !16
  %308 = icmp sgt i32 %307, 0
  br i1 %137, label %.preheader149, label %.preheader152

.preheader152:                                    ; preds = %303
  br i1 %308, label %.preheader151.lr.ph, label %.loopexit146

.preheader151.lr.ph:                              ; preds = %.preheader152
  %309 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre572 = load i32* %309, align 4, !tbaa !16
  br label %.preheader151

.preheader149:                                    ; preds = %303
  %310 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %308, label %.preheader148.lr.ph, label %.preheader149._crit_edge

.preheader149._crit_edge:                         ; preds = %.preheader149
  %.pre577 = load i32* %310, align 4, !tbaa !16
  %.pre593 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre595 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre597 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge278

.preheader148.lr.ph:                              ; preds = %.preheader149
  %311 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %312 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %313 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %314 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %315 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %316 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre574 = load i32* %310, align 4, !tbaa !16
  br label %.preheader148

.preheader148:                                    ; preds = %.preheader148.lr.ph, %352
  %317 = phi i32 [ %307, %.preheader148.lr.ph ], [ %353, %352 ]
  %318 = phi i32 [ %.pre574, %.preheader148.lr.ph ], [ %354, %352 ]
  %_typed_data4.0277 = phi i32* [ %305, %.preheader148.lr.ph ], [ %_typed_data4.1.lcssa, %352 ]
  %_k3.0276 = phi i32 [ 0, %.preheader148.lr.ph ], [ %355, %352 ]
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %.preheader147, label %352

.preheader147:                                    ; preds = %.preheader148, %._crit_edge269
  %_typed_data4.1273 = phi i32* [ %_typed_data4.2.lcssa, %._crit_edge269 ], [ %_typed_data4.0277, %.preheader148 ]
  %_j2.0272 = phi i32 [ %349, %._crit_edge269 ], [ 0, %.preheader148 ]
  %320 = load i32* %.pre-phi, align 4, !tbaa !16
  %321 = icmp sgt i32 %320, 0
  %322 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %321, label %.lr.ph268, label %._crit_edge269

.lr.ph268:                                        ; preds = %.preheader147, %.lr.ph268
  %323 = phi %struct.__sFILE* [ %348, %.lr.ph268 ], [ %322, %.preheader147 ]
  %_typed_data4.2267 = phi i32* [ %341, %.lr.ph268 ], [ %_typed_data4.1273, %.preheader147 ]
  %_i1.0266 = phi i32 [ %345, %.lr.ph268 ], [ 0, %.preheader147 ]
  %324 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %325 = load <2 x double*>* %324, align 16, !tbaa !17
  %326 = extractelement <2 x double*> %325, i32 0
  %327 = load double* %326, align 8, !tbaa !30
  %328 = load double* %312, align 16, !tbaa !30
  %329 = fadd double %327, %328
  %330 = getelementptr <2 x double*> %325, <2 x i64> <i64 1, i64 1>
  %331 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %330, <2 x double*>* %331, align 16, !tbaa !17
  %332 = extractelement <2 x double*> %325, i32 1
  %333 = load double* %332, align 8, !tbaa !30
  %334 = load double* %314, align 8, !tbaa !30
  %335 = fadd double %333, %334
  %336 = load double** %315, align 16, !tbaa !17
  %337 = getelementptr inbounds double* %336, i64 1
  store double* %337, double** %315, align 16, !tbaa !17
  %338 = load double* %336, align 8, !tbaa !30
  %339 = load double* %316, align 16, !tbaa !30
  %340 = fadd double %338, %339
  %341 = getelementptr inbounds i32* %_typed_data4.2267, i64 1
  %342 = load i32* %_typed_data4.2267, align 4, !tbaa !16
  %343 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %323, i8* %.pre-phi650, double %329, double %335, double %340, i32 %342) #7
  %344 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc125 = call i32 @fputc(i32 10, %struct.__sFILE* %344)
  %345 = add nuw nsw i32 %_i1.0266, 1
  %346 = load i32* %.pre-phi, align 4, !tbaa !16
  %347 = icmp slt i32 %345, %346
  %348 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %347, label %.lr.ph268, label %._crit_edge269

._crit_edge269:                                   ; preds = %.lr.ph268, %.preheader147
  %.lcssa208 = phi %struct.__sFILE* [ %322, %.preheader147 ], [ %348, %.lr.ph268 ]
  %_typed_data4.2.lcssa = phi i32* [ %_typed_data4.1273, %.preheader147 ], [ %341, %.lr.ph268 ]
  %fputc122 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa208)
  %349 = add nuw nsw i32 %_j2.0272, 1
  %350 = load i32* %310, align 4, !tbaa !16
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %.preheader147, label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge269
  %.pre575 = load i32* %306, align 4, !tbaa !16
  br label %352

; <label>:352                                     ; preds = %._crit_edge274, %.preheader148
  %353 = phi i32 [ %.pre575, %._crit_edge274 ], [ %317, %.preheader148 ]
  %354 = phi i32 [ %350, %._crit_edge274 ], [ %318, %.preheader148 ]
  %_typed_data4.1.lcssa = phi i32* [ %_typed_data4.2.lcssa, %._crit_edge274 ], [ %_typed_data4.0277, %.preheader148 ]
  %355 = add nuw nsw i32 %_k3.0276, 1
  %356 = icmp slt i32 %355, %353
  br i1 %356, label %.preheader148, label %._crit_edge278

._crit_edge278:                                   ; preds = %352, %.preheader149._crit_edge
  %.pre-phi598 = phi double** [ %.pre597, %.preheader149._crit_edge ], [ %315, %352 ]
  %.pre-phi596 = phi double** [ %.pre595, %.preheader149._crit_edge ], [ %313, %352 ]
  %.pre-phi594 = phi double** [ %.pre593, %.preheader149._crit_edge ], [ %311, %352 ]
  %357 = phi i32 [ %.pre577, %.preheader149._crit_edge ], [ %354, %352 ]
  %358 = phi i32 [ %307, %.preheader149._crit_edge ], [ %353, %352 ]
  %359 = load i32* %.pre-phi, align 4, !tbaa !16
  %360 = mul i32 %359, %358
  %361 = mul i32 %360, %357
  %362 = load double** %.pre-phi594, align 16, !tbaa !17
  %363 = sext i32 %361 to i64
  %364 = sub nsw i64 0, %363
  %365 = getelementptr inbounds double* %362, i64 %364
  store double* %365, double** %.pre-phi594, align 16, !tbaa !17
  %366 = mul nsw i32 %357, %359
  %367 = mul nsw i32 %366, %358
  %368 = load double** %.pre-phi596, align 8, !tbaa !17
  %369 = sext i32 %367 to i64
  %370 = sub nsw i64 0, %369
  %371 = getelementptr inbounds double* %368, i64 %370
  store double* %371, double** %.pre-phi596, align 8, !tbaa !17
  %372 = load double** %.pre-phi598, align 16, !tbaa !17
  %373 = getelementptr inbounds double* %372, i64 %370
  store double* %373, double** %.pre-phi598, align 16, !tbaa !17
  br label %.loopexit146

.preheader151:                                    ; preds = %.preheader151.lr.ph, %396
  %374 = phi i32 [ %307, %.preheader151.lr.ph ], [ %397, %396 ]
  %375 = phi i32 [ %.pre572, %.preheader151.lr.ph ], [ %398, %396 ]
  %_typed_data4.3292 = phi i32* [ %305, %.preheader151.lr.ph ], [ %_typed_data4.4.lcssa, %396 ]
  %_k3.1291 = phi i32 [ 0, %.preheader151.lr.ph ], [ %399, %396 ]
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %.preheader150.lr.ph, label %396

.preheader150.lr.ph:                              ; preds = %.preheader151
  %377 = sitofp i32 %_k3.1291 to double
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.lr.ph, %._crit_edge284
  %_typed_data4.4288 = phi i32* [ %_typed_data4.3292, %.preheader150.lr.ph ], [ %_typed_data4.5.lcssa, %._crit_edge284 ]
  %_j2.1287 = phi i32 [ 0, %.preheader150.lr.ph ], [ %393, %._crit_edge284 ]
  %378 = load i32* %.pre-phi, align 4, !tbaa !16
  %379 = icmp sgt i32 %378, 0
  %380 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %379, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %.preheader150
  %381 = sitofp i32 %_j2.1287 to double
  br label %382

; <label>:382                                     ; preds = %.lr.ph283, %382
  %383 = phi %struct.__sFILE* [ %380, %.lr.ph283 ], [ %392, %382 ]
  %_typed_data4.5282 = phi i32* [ %_typed_data4.4288, %.lr.ph283 ], [ %385, %382 ]
  %_i1.1281 = phi i32 [ 0, %.lr.ph283 ], [ %389, %382 ]
  %384 = sitofp i32 %_i1.1281 to double
  %385 = getelementptr inbounds i32* %_typed_data4.5282, i64 1
  %386 = load i32* %_typed_data4.5282, align 4, !tbaa !16
  %387 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %383, i8* %.pre-phi650, double %384, double %381, double %377, i32 %386) #7
  %388 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc119 = call i32 @fputc(i32 10, %struct.__sFILE* %388)
  %389 = add nuw nsw i32 %_i1.1281, 1
  %390 = load i32* %.pre-phi, align 4, !tbaa !16
  %391 = icmp slt i32 %389, %390
  %392 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %391, label %382, label %._crit_edge284

._crit_edge284:                                   ; preds = %382, %.preheader150
  %.lcssa211 = phi %struct.__sFILE* [ %380, %.preheader150 ], [ %392, %382 ]
  %_typed_data4.5.lcssa = phi i32* [ %_typed_data4.4288, %.preheader150 ], [ %385, %382 ]
  %fputc116 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa211)
  %393 = add nuw nsw i32 %_j2.1287, 1
  %394 = load i32* %309, align 4, !tbaa !16
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %.preheader150, label %._crit_edge289

._crit_edge289:                                   ; preds = %._crit_edge284
  %.pre573 = load i32* %306, align 4, !tbaa !16
  br label %396

; <label>:396                                     ; preds = %._crit_edge289, %.preheader151
  %397 = phi i32 [ %.pre573, %._crit_edge289 ], [ %374, %.preheader151 ]
  %398 = phi i32 [ %394, %._crit_edge289 ], [ %375, %.preheader151 ]
  %_typed_data4.4.lcssa = phi i32* [ %_typed_data4.5.lcssa, %._crit_edge289 ], [ %_typed_data4.3292, %.preheader151 ]
  %399 = add nuw nsw i32 %_k3.1291, 1
  %400 = icmp slt i32 %399, %397
  br i1 %400, label %.preheader151, label %.loopexit146

; <label>:401                                     ; preds = %197, %197
  %402 = bitcast i8** %data to double**
  %403 = load double** %402, align 8, !tbaa !17
  %404 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %405 = load i32* %404, align 4, !tbaa !16
  %406 = icmp sgt i32 %405, 0
  br i1 %137, label %.preheader156, label %.preheader159

.preheader159:                                    ; preds = %401
  br i1 %406, label %.preheader158.lr.ph, label %.loopexit146

.preheader158.lr.ph:                              ; preds = %.preheader159
  %407 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre566 = load i32* %407, align 4, !tbaa !16
  br label %.preheader158

.preheader156:                                    ; preds = %401
  %408 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %406, label %.preheader155.lr.ph, label %.preheader156._crit_edge

.preheader156._crit_edge:                         ; preds = %.preheader156
  %.pre571 = load i32* %408, align 4, !tbaa !16
  %.pre600 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre602 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre604 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge305

.preheader155.lr.ph:                              ; preds = %.preheader156
  %409 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %410 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %411 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %412 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %413 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %414 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre568 = load i32* %408, align 4, !tbaa !16
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph, %460
  %415 = phi i32 [ %405, %.preheader155.lr.ph ], [ %461, %460 ]
  %416 = phi i32 [ %.pre568, %.preheader155.lr.ph ], [ %462, %460 ]
  %_typed_data8.0304 = phi double* [ %403, %.preheader155.lr.ph ], [ %_typed_data8.1.lcssa, %460 ]
  %_k7.0303 = phi i32 [ 0, %.preheader155.lr.ph ], [ %463, %460 ]
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %.preheader154, label %460

.preheader154:                                    ; preds = %.preheader155, %._crit_edge296
  %_typed_data8.1300 = phi double* [ %_typed_data8.2.lcssa, %._crit_edge296 ], [ %_typed_data8.0304, %.preheader155 ]
  %_j6.0299 = phi i32 [ %457, %._crit_edge296 ], [ 0, %.preheader155 ]
  %418 = load i32* %.pre-phi, align 4, !tbaa !16
  %419 = icmp sgt i32 %418, 0
  %420 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %419, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.preheader154, %451
  %421 = phi %struct.__sFILE* [ %456, %451 ], [ %420, %.preheader154 ]
  %_typed_data8.2294 = phi double* [ %_typed_data8.3, %451 ], [ %_typed_data8.1300, %.preheader154 ]
  %_i5.0293 = phi i32 [ %453, %451 ], [ 0, %.preheader154 ]
  %422 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %423 = load <2 x double*>* %422, align 16, !tbaa !17
  %424 = extractelement <2 x double*> %423, i32 0
  %425 = load double* %424, align 8, !tbaa !30
  %426 = load double* %410, align 16, !tbaa !30
  %427 = fadd double %425, %426
  %428 = getelementptr <2 x double*> %423, <2 x i64> <i64 1, i64 1>
  %429 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %428, <2 x double*>* %429, align 16, !tbaa !17
  %430 = extractelement <2 x double*> %423, i32 1
  %431 = load double* %430, align 8, !tbaa !30
  %432 = load double* %412, align 8, !tbaa !30
  %433 = fadd double %431, %432
  %434 = load double** %413, align 16, !tbaa !17
  %435 = getelementptr inbounds double* %434, i64 1
  store double* %435, double** %413, align 16, !tbaa !17
  %436 = load double* %434, align 8, !tbaa !30
  %437 = load double* %414, align 16, !tbaa !30
  %438 = fadd double %436, %437
  %439 = getelementptr inbounds double* %_typed_data8.2294, i64 1
  %440 = load double* %_typed_data8.2294, align 8, !tbaa !30
  %441 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %421, i8* %.pre-phi652, double %427, double %433, double %438, double %440) #7
  %442 = load i32* %202, align 4, !tbaa !31
  %443 = icmp eq i32 %442, 10
  br i1 %443, label %444, label %451

; <label>:444                                     ; preds = %.lr.ph295
  %445 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %446 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %445)
  %447 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %448 = getelementptr inbounds double* %_typed_data8.2294, i64 2
  %449 = load double* %439, align 8, !tbaa !30
  %450 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %447, i8* %17, double %449) #7
  br label %451

; <label>:451                                     ; preds = %444, %.lr.ph295
  %_typed_data8.3 = phi double* [ %448, %444 ], [ %439, %.lr.ph295 ]
  %452 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc113 = call i32 @fputc(i32 10, %struct.__sFILE* %452)
  %453 = add nuw nsw i32 %_i5.0293, 1
  %454 = load i32* %.pre-phi, align 4, !tbaa !16
  %455 = icmp slt i32 %453, %454
  %456 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %455, label %.lr.ph295, label %._crit_edge296

._crit_edge296:                                   ; preds = %451, %.preheader154
  %.lcssa212 = phi %struct.__sFILE* [ %420, %.preheader154 ], [ %456, %451 ]
  %_typed_data8.2.lcssa = phi double* [ %_typed_data8.1300, %.preheader154 ], [ %_typed_data8.3, %451 ]
  %fputc110 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa212)
  %457 = add nuw nsw i32 %_j6.0299, 1
  %458 = load i32* %408, align 4, !tbaa !16
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %.preheader154, label %._crit_edge301

._crit_edge301:                                   ; preds = %._crit_edge296
  %.pre569 = load i32* %404, align 4, !tbaa !16
  br label %460

; <label>:460                                     ; preds = %._crit_edge301, %.preheader155
  %461 = phi i32 [ %.pre569, %._crit_edge301 ], [ %415, %.preheader155 ]
  %462 = phi i32 [ %458, %._crit_edge301 ], [ %416, %.preheader155 ]
  %_typed_data8.1.lcssa = phi double* [ %_typed_data8.2.lcssa, %._crit_edge301 ], [ %_typed_data8.0304, %.preheader155 ]
  %463 = add nuw nsw i32 %_k7.0303, 1
  %464 = icmp slt i32 %463, %461
  br i1 %464, label %.preheader155, label %._crit_edge305

._crit_edge305:                                   ; preds = %460, %.preheader156._crit_edge
  %.pre-phi605 = phi double** [ %.pre604, %.preheader156._crit_edge ], [ %413, %460 ]
  %.pre-phi603 = phi double** [ %.pre602, %.preheader156._crit_edge ], [ %411, %460 ]
  %.pre-phi601 = phi double** [ %.pre600, %.preheader156._crit_edge ], [ %409, %460 ]
  %465 = phi i32 [ %.pre571, %.preheader156._crit_edge ], [ %462, %460 ]
  %466 = phi i32 [ %405, %.preheader156._crit_edge ], [ %461, %460 ]
  %467 = load i32* %.pre-phi, align 4, !tbaa !16
  %468 = mul i32 %467, %466
  %469 = mul i32 %468, %465
  %470 = load double** %.pre-phi601, align 16, !tbaa !17
  %471 = sext i32 %469 to i64
  %472 = sub nsw i64 0, %471
  %473 = getelementptr inbounds double* %470, i64 %472
  store double* %473, double** %.pre-phi601, align 16, !tbaa !17
  %474 = mul nsw i32 %465, %467
  %475 = mul nsw i32 %474, %466
  %476 = load double** %.pre-phi603, align 8, !tbaa !17
  %477 = sext i32 %475 to i64
  %478 = sub nsw i64 0, %477
  %479 = getelementptr inbounds double* %476, i64 %478
  store double* %479, double** %.pre-phi603, align 8, !tbaa !17
  %480 = load double** %.pre-phi605, align 16, !tbaa !17
  %481 = getelementptr inbounds double* %480, i64 %478
  store double* %481, double** %.pre-phi605, align 16, !tbaa !17
  br label %.loopexit146

.preheader158:                                    ; preds = %.preheader158.lr.ph, %514
  %482 = phi i32 [ %405, %.preheader158.lr.ph ], [ %515, %514 ]
  %483 = phi i32 [ %.pre566, %.preheader158.lr.ph ], [ %516, %514 ]
  %_typed_data8.4319 = phi double* [ %403, %.preheader158.lr.ph ], [ %_typed_data8.5.lcssa, %514 ]
  %_k7.1318 = phi i32 [ 0, %.preheader158.lr.ph ], [ %517, %514 ]
  %484 = icmp sgt i32 %483, 0
  br i1 %484, label %.preheader157.lr.ph, label %514

.preheader157.lr.ph:                              ; preds = %.preheader158
  %485 = sitofp i32 %_k7.1318 to double
  br label %.preheader157

.preheader157:                                    ; preds = %.preheader157.lr.ph, %._crit_edge311
  %_typed_data8.5315 = phi double* [ %_typed_data8.4319, %.preheader157.lr.ph ], [ %_typed_data8.6.lcssa, %._crit_edge311 ]
  %_j6.1314 = phi i32 [ 0, %.preheader157.lr.ph ], [ %511, %._crit_edge311 ]
  %486 = load i32* %.pre-phi, align 4, !tbaa !16
  %487 = icmp sgt i32 %486, 0
  %488 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %487, label %.lr.ph310, label %._crit_edge311

.lr.ph310:                                        ; preds = %.preheader157
  %489 = sitofp i32 %_j6.1314 to double
  br label %490

; <label>:490                                     ; preds = %.lr.ph310, %505
  %491 = phi %struct.__sFILE* [ %488, %.lr.ph310 ], [ %510, %505 ]
  %_typed_data8.6309 = phi double* [ %_typed_data8.5315, %.lr.ph310 ], [ %_typed_data8.7, %505 ]
  %_i5.1308 = phi i32 [ 0, %.lr.ph310 ], [ %507, %505 ]
  %492 = sitofp i32 %_i5.1308 to double
  %493 = getelementptr inbounds double* %_typed_data8.6309, i64 1
  %494 = load double* %_typed_data8.6309, align 8, !tbaa !30
  %495 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %491, i8* %.pre-phi652, double %492, double %489, double %485, double %494) #7
  %496 = load i32* %202, align 4, !tbaa !31
  %497 = icmp eq i32 %496, 10
  br i1 %497, label %498, label %505

; <label>:498                                     ; preds = %490
  %499 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %500 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %499)
  %501 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %502 = getelementptr inbounds double* %_typed_data8.6309, i64 2
  %503 = load double* %493, align 8, !tbaa !30
  %504 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %501, i8* %17, double %503) #7
  br label %505

; <label>:505                                     ; preds = %498, %490
  %_typed_data8.7 = phi double* [ %502, %498 ], [ %493, %490 ]
  %506 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc107 = call i32 @fputc(i32 10, %struct.__sFILE* %506)
  %507 = add nuw nsw i32 %_i5.1308, 1
  %508 = load i32* %.pre-phi, align 4, !tbaa !16
  %509 = icmp slt i32 %507, %508
  %510 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %509, label %490, label %._crit_edge311

._crit_edge311:                                   ; preds = %505, %.preheader157
  %.lcssa215 = phi %struct.__sFILE* [ %488, %.preheader157 ], [ %510, %505 ]
  %_typed_data8.6.lcssa = phi double* [ %_typed_data8.5315, %.preheader157 ], [ %_typed_data8.7, %505 ]
  %fputc104 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa215)
  %511 = add nuw nsw i32 %_j6.1314, 1
  %512 = load i32* %407, align 4, !tbaa !16
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %.preheader157, label %._crit_edge316

._crit_edge316:                                   ; preds = %._crit_edge311
  %.pre567 = load i32* %404, align 4, !tbaa !16
  br label %514

; <label>:514                                     ; preds = %._crit_edge316, %.preheader158
  %515 = phi i32 [ %.pre567, %._crit_edge316 ], [ %482, %.preheader158 ]
  %516 = phi i32 [ %512, %._crit_edge316 ], [ %483, %.preheader158 ]
  %_typed_data8.5.lcssa = phi double* [ %_typed_data8.6.lcssa, %._crit_edge316 ], [ %_typed_data8.4319, %.preheader158 ]
  %517 = add nuw nsw i32 %_k7.1318, 1
  %518 = icmp slt i32 %517, %515
  br i1 %518, label %.preheader158, label %.loopexit146

; <label>:519                                     ; preds = %197
  %520 = bitcast i8** %data to i16**
  %521 = load i16** %520, align 8, !tbaa !17
  %522 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %523 = load i32* %522, align 4, !tbaa !16
  %524 = icmp sgt i32 %523, 0
  br i1 %137, label %.preheader163, label %.preheader166

.preheader166:                                    ; preds = %519
  br i1 %524, label %.preheader165.lr.ph, label %.loopexit146

.preheader165.lr.ph:                              ; preds = %.preheader166
  %525 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre560 = load i32* %525, align 4, !tbaa !16
  br label %.preheader165

.preheader163:                                    ; preds = %519
  %526 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %524, label %.preheader162.lr.ph, label %.preheader163._crit_edge

.preheader163._crit_edge:                         ; preds = %.preheader163
  %.pre565 = load i32* %526, align 4, !tbaa !16
  %.pre607 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre609 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre611 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge332

.preheader162.lr.ph:                              ; preds = %.preheader163
  %527 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %528 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %529 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %530 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %531 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %532 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre562 = load i32* %526, align 4, !tbaa !16
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.lr.ph, %569
  %533 = phi i32 [ %523, %.preheader162.lr.ph ], [ %570, %569 ]
  %534 = phi i32 [ %.pre562, %.preheader162.lr.ph ], [ %571, %569 ]
  %_typed_data12.0331 = phi i16* [ %521, %.preheader162.lr.ph ], [ %_typed_data12.1.lcssa, %569 ]
  %_k11.0330 = phi i32 [ 0, %.preheader162.lr.ph ], [ %572, %569 ]
  %535 = icmp sgt i32 %534, 0
  br i1 %535, label %.preheader161, label %569

.preheader161:                                    ; preds = %.preheader162, %._crit_edge323
  %_typed_data12.1327 = phi i16* [ %_typed_data12.2.lcssa, %._crit_edge323 ], [ %_typed_data12.0331, %.preheader162 ]
  %_j10.0326 = phi i32 [ %566, %._crit_edge323 ], [ 0, %.preheader162 ]
  %536 = load i32* %.pre-phi, align 4, !tbaa !16
  %537 = icmp sgt i32 %536, 0
  %538 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %537, label %.lr.ph322, label %._crit_edge323

.lr.ph322:                                        ; preds = %.preheader161, %.lr.ph322
  %539 = phi %struct.__sFILE* [ %565, %.lr.ph322 ], [ %538, %.preheader161 ]
  %_typed_data12.2321 = phi i16* [ %557, %.lr.ph322 ], [ %_typed_data12.1327, %.preheader161 ]
  %_i9.0320 = phi i32 [ %562, %.lr.ph322 ], [ 0, %.preheader161 ]
  %540 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %541 = load <2 x double*>* %540, align 16, !tbaa !17
  %542 = extractelement <2 x double*> %541, i32 0
  %543 = load double* %542, align 8, !tbaa !30
  %544 = load double* %528, align 16, !tbaa !30
  %545 = fadd double %543, %544
  %546 = getelementptr <2 x double*> %541, <2 x i64> <i64 1, i64 1>
  %547 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %546, <2 x double*>* %547, align 16, !tbaa !17
  %548 = extractelement <2 x double*> %541, i32 1
  %549 = load double* %548, align 8, !tbaa !30
  %550 = load double* %530, align 8, !tbaa !30
  %551 = fadd double %549, %550
  %552 = load double** %531, align 16, !tbaa !17
  %553 = getelementptr inbounds double* %552, i64 1
  store double* %553, double** %531, align 16, !tbaa !17
  %554 = load double* %552, align 8, !tbaa !30
  %555 = load double* %532, align 16, !tbaa !30
  %556 = fadd double %554, %555
  %557 = getelementptr inbounds i16* %_typed_data12.2321, i64 1
  %558 = load i16* %_typed_data12.2321, align 2, !tbaa !32
  %559 = sext i16 %558 to i32
  %560 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %539, i8* %.pre-phi650, double %545, double %551, double %556, i32 %559) #7
  %561 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc101 = call i32 @fputc(i32 10, %struct.__sFILE* %561)
  %562 = add nuw nsw i32 %_i9.0320, 1
  %563 = load i32* %.pre-phi, align 4, !tbaa !16
  %564 = icmp slt i32 %562, %563
  %565 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %564, label %.lr.ph322, label %._crit_edge323

._crit_edge323:                                   ; preds = %.lr.ph322, %.preheader161
  %.lcssa216 = phi %struct.__sFILE* [ %538, %.preheader161 ], [ %565, %.lr.ph322 ]
  %_typed_data12.2.lcssa = phi i16* [ %_typed_data12.1327, %.preheader161 ], [ %557, %.lr.ph322 ]
  %fputc98 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa216)
  %566 = add nuw nsw i32 %_j10.0326, 1
  %567 = load i32* %526, align 4, !tbaa !16
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %.preheader161, label %._crit_edge328

._crit_edge328:                                   ; preds = %._crit_edge323
  %.pre563 = load i32* %522, align 4, !tbaa !16
  br label %569

; <label>:569                                     ; preds = %._crit_edge328, %.preheader162
  %570 = phi i32 [ %.pre563, %._crit_edge328 ], [ %533, %.preheader162 ]
  %571 = phi i32 [ %567, %._crit_edge328 ], [ %534, %.preheader162 ]
  %_typed_data12.1.lcssa = phi i16* [ %_typed_data12.2.lcssa, %._crit_edge328 ], [ %_typed_data12.0331, %.preheader162 ]
  %572 = add nuw nsw i32 %_k11.0330, 1
  %573 = icmp slt i32 %572, %570
  br i1 %573, label %.preheader162, label %._crit_edge332

._crit_edge332:                                   ; preds = %569, %.preheader163._crit_edge
  %.pre-phi612 = phi double** [ %.pre611, %.preheader163._crit_edge ], [ %531, %569 ]
  %.pre-phi610 = phi double** [ %.pre609, %.preheader163._crit_edge ], [ %529, %569 ]
  %.pre-phi608 = phi double** [ %.pre607, %.preheader163._crit_edge ], [ %527, %569 ]
  %574 = phi i32 [ %.pre565, %.preheader163._crit_edge ], [ %571, %569 ]
  %575 = phi i32 [ %523, %.preheader163._crit_edge ], [ %570, %569 ]
  %576 = load i32* %.pre-phi, align 4, !tbaa !16
  %577 = mul i32 %576, %575
  %578 = mul i32 %577, %574
  %579 = load double** %.pre-phi608, align 16, !tbaa !17
  %580 = sext i32 %578 to i64
  %581 = sub nsw i64 0, %580
  %582 = getelementptr inbounds double* %579, i64 %581
  store double* %582, double** %.pre-phi608, align 16, !tbaa !17
  %583 = mul nsw i32 %574, %576
  %584 = mul nsw i32 %583, %575
  %585 = load double** %.pre-phi610, align 8, !tbaa !17
  %586 = sext i32 %584 to i64
  %587 = sub nsw i64 0, %586
  %588 = getelementptr inbounds double* %585, i64 %587
  store double* %588, double** %.pre-phi610, align 8, !tbaa !17
  %589 = load double** %.pre-phi612, align 16, !tbaa !17
  %590 = getelementptr inbounds double* %589, i64 %587
  store double* %590, double** %.pre-phi612, align 16, !tbaa !17
  br label %.loopexit146

.preheader165:                                    ; preds = %.preheader165.lr.ph, %614
  %591 = phi i32 [ %523, %.preheader165.lr.ph ], [ %615, %614 ]
  %592 = phi i32 [ %.pre560, %.preheader165.lr.ph ], [ %616, %614 ]
  %_typed_data12.3346 = phi i16* [ %521, %.preheader165.lr.ph ], [ %_typed_data12.4.lcssa, %614 ]
  %_k11.1345 = phi i32 [ 0, %.preheader165.lr.ph ], [ %617, %614 ]
  %593 = icmp sgt i32 %592, 0
  br i1 %593, label %.preheader164.lr.ph, label %614

.preheader164.lr.ph:                              ; preds = %.preheader165
  %594 = sitofp i32 %_k11.1345 to double
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %._crit_edge338
  %_typed_data12.4342 = phi i16* [ %_typed_data12.3346, %.preheader164.lr.ph ], [ %_typed_data12.5.lcssa, %._crit_edge338 ]
  %_j10.1341 = phi i32 [ 0, %.preheader164.lr.ph ], [ %611, %._crit_edge338 ]
  %595 = load i32* %.pre-phi, align 4, !tbaa !16
  %596 = icmp sgt i32 %595, 0
  %597 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %596, label %.lr.ph337, label %._crit_edge338

.lr.ph337:                                        ; preds = %.preheader164
  %598 = sitofp i32 %_j10.1341 to double
  br label %599

; <label>:599                                     ; preds = %.lr.ph337, %599
  %600 = phi %struct.__sFILE* [ %597, %.lr.ph337 ], [ %610, %599 ]
  %_typed_data12.5336 = phi i16* [ %_typed_data12.4342, %.lr.ph337 ], [ %602, %599 ]
  %_i9.1335 = phi i32 [ 0, %.lr.ph337 ], [ %607, %599 ]
  %601 = sitofp i32 %_i9.1335 to double
  %602 = getelementptr inbounds i16* %_typed_data12.5336, i64 1
  %603 = load i16* %_typed_data12.5336, align 2, !tbaa !32
  %604 = sext i16 %603 to i32
  %605 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %600, i8* %.pre-phi650, double %601, double %598, double %594, i32 %604) #7
  %606 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc95 = call i32 @fputc(i32 10, %struct.__sFILE* %606)
  %607 = add nuw nsw i32 %_i9.1335, 1
  %608 = load i32* %.pre-phi, align 4, !tbaa !16
  %609 = icmp slt i32 %607, %608
  %610 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %609, label %599, label %._crit_edge338

._crit_edge338:                                   ; preds = %599, %.preheader164
  %.lcssa219 = phi %struct.__sFILE* [ %597, %.preheader164 ], [ %610, %599 ]
  %_typed_data12.5.lcssa = phi i16* [ %_typed_data12.4342, %.preheader164 ], [ %602, %599 ]
  %fputc92 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa219)
  %611 = add nuw nsw i32 %_j10.1341, 1
  %612 = load i32* %525, align 4, !tbaa !16
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %.preheader164, label %._crit_edge343

._crit_edge343:                                   ; preds = %._crit_edge338
  %.pre561 = load i32* %522, align 4, !tbaa !16
  br label %614

; <label>:614                                     ; preds = %._crit_edge343, %.preheader165
  %615 = phi i32 [ %.pre561, %._crit_edge343 ], [ %591, %.preheader165 ]
  %616 = phi i32 [ %612, %._crit_edge343 ], [ %592, %.preheader165 ]
  %_typed_data12.4.lcssa = phi i16* [ %_typed_data12.5.lcssa, %._crit_edge343 ], [ %_typed_data12.3346, %.preheader165 ]
  %617 = add nuw nsw i32 %_k11.1345, 1
  %618 = icmp slt i32 %617, %615
  br i1 %618, label %.preheader165, label %.loopexit146

; <label>:619                                     ; preds = %197
  %620 = bitcast i8** %data to i32**
  %621 = load i32** %620, align 8, !tbaa !17
  %622 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %623 = load i32* %622, align 4, !tbaa !16
  %624 = icmp sgt i32 %623, 0
  br i1 %137, label %.preheader170, label %.preheader173

.preheader173:                                    ; preds = %619
  br i1 %624, label %.preheader172.lr.ph, label %.loopexit146

.preheader172.lr.ph:                              ; preds = %.preheader173
  %625 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre554 = load i32* %625, align 4, !tbaa !16
  br label %.preheader172

.preheader170:                                    ; preds = %619
  %626 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %624, label %.preheader169.lr.ph, label %.preheader170._crit_edge

.preheader170._crit_edge:                         ; preds = %.preheader170
  %.pre559 = load i32* %626, align 4, !tbaa !16
  %.pre614 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre616 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre618 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge359

.preheader169.lr.ph:                              ; preds = %.preheader170
  %627 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %628 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %629 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %630 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %631 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %632 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre556 = load i32* %626, align 4, !tbaa !16
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %668
  %633 = phi i32 [ %623, %.preheader169.lr.ph ], [ %669, %668 ]
  %634 = phi i32 [ %.pre556, %.preheader169.lr.ph ], [ %670, %668 ]
  %_typed_data16.0358 = phi i32* [ %621, %.preheader169.lr.ph ], [ %_typed_data16.1.lcssa, %668 ]
  %_k15.0357 = phi i32 [ 0, %.preheader169.lr.ph ], [ %671, %668 ]
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %.preheader168, label %668

.preheader168:                                    ; preds = %.preheader169, %._crit_edge350
  %_typed_data16.1354 = phi i32* [ %_typed_data16.2.lcssa, %._crit_edge350 ], [ %_typed_data16.0358, %.preheader169 ]
  %_j14.0353 = phi i32 [ %665, %._crit_edge350 ], [ 0, %.preheader169 ]
  %636 = load i32* %.pre-phi, align 4, !tbaa !16
  %637 = icmp sgt i32 %636, 0
  %638 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %637, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %.preheader168, %.lr.ph349
  %639 = phi %struct.__sFILE* [ %664, %.lr.ph349 ], [ %638, %.preheader168 ]
  %_typed_data16.2348 = phi i32* [ %657, %.lr.ph349 ], [ %_typed_data16.1354, %.preheader168 ]
  %_i13.0347 = phi i32 [ %661, %.lr.ph349 ], [ 0, %.preheader168 ]
  %640 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %641 = load <2 x double*>* %640, align 16, !tbaa !17
  %642 = extractelement <2 x double*> %641, i32 0
  %643 = load double* %642, align 8, !tbaa !30
  %644 = load double* %628, align 16, !tbaa !30
  %645 = fadd double %643, %644
  %646 = getelementptr <2 x double*> %641, <2 x i64> <i64 1, i64 1>
  %647 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %646, <2 x double*>* %647, align 16, !tbaa !17
  %648 = extractelement <2 x double*> %641, i32 1
  %649 = load double* %648, align 8, !tbaa !30
  %650 = load double* %630, align 8, !tbaa !30
  %651 = fadd double %649, %650
  %652 = load double** %631, align 16, !tbaa !17
  %653 = getelementptr inbounds double* %652, i64 1
  store double* %653, double** %631, align 16, !tbaa !17
  %654 = load double* %652, align 8, !tbaa !30
  %655 = load double* %632, align 16, !tbaa !30
  %656 = fadd double %654, %655
  %657 = getelementptr inbounds i32* %_typed_data16.2348, i64 1
  %658 = load i32* %_typed_data16.2348, align 4, !tbaa !16
  %659 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %639, i8* %.pre-phi650, double %645, double %651, double %656, i32 %658) #7
  %660 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc89 = call i32 @fputc(i32 10, %struct.__sFILE* %660)
  %661 = add nuw nsw i32 %_i13.0347, 1
  %662 = load i32* %.pre-phi, align 4, !tbaa !16
  %663 = icmp slt i32 %661, %662
  %664 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %663, label %.lr.ph349, label %._crit_edge350

._crit_edge350:                                   ; preds = %.lr.ph349, %.preheader168
  %.lcssa220 = phi %struct.__sFILE* [ %638, %.preheader168 ], [ %664, %.lr.ph349 ]
  %_typed_data16.2.lcssa = phi i32* [ %_typed_data16.1354, %.preheader168 ], [ %657, %.lr.ph349 ]
  %fputc86 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa220)
  %665 = add nuw nsw i32 %_j14.0353, 1
  %666 = load i32* %626, align 4, !tbaa !16
  %667 = icmp slt i32 %665, %666
  br i1 %667, label %.preheader168, label %._crit_edge355

._crit_edge355:                                   ; preds = %._crit_edge350
  %.pre557 = load i32* %622, align 4, !tbaa !16
  br label %668

; <label>:668                                     ; preds = %._crit_edge355, %.preheader169
  %669 = phi i32 [ %.pre557, %._crit_edge355 ], [ %633, %.preheader169 ]
  %670 = phi i32 [ %666, %._crit_edge355 ], [ %634, %.preheader169 ]
  %_typed_data16.1.lcssa = phi i32* [ %_typed_data16.2.lcssa, %._crit_edge355 ], [ %_typed_data16.0358, %.preheader169 ]
  %671 = add nuw nsw i32 %_k15.0357, 1
  %672 = icmp slt i32 %671, %669
  br i1 %672, label %.preheader169, label %._crit_edge359

._crit_edge359:                                   ; preds = %668, %.preheader170._crit_edge
  %.pre-phi619 = phi double** [ %.pre618, %.preheader170._crit_edge ], [ %631, %668 ]
  %.pre-phi617 = phi double** [ %.pre616, %.preheader170._crit_edge ], [ %629, %668 ]
  %.pre-phi615 = phi double** [ %.pre614, %.preheader170._crit_edge ], [ %627, %668 ]
  %673 = phi i32 [ %.pre559, %.preheader170._crit_edge ], [ %670, %668 ]
  %674 = phi i32 [ %623, %.preheader170._crit_edge ], [ %669, %668 ]
  %675 = load i32* %.pre-phi, align 4, !tbaa !16
  %676 = mul i32 %675, %674
  %677 = mul i32 %676, %673
  %678 = load double** %.pre-phi615, align 16, !tbaa !17
  %679 = sext i32 %677 to i64
  %680 = sub nsw i64 0, %679
  %681 = getelementptr inbounds double* %678, i64 %680
  store double* %681, double** %.pre-phi615, align 16, !tbaa !17
  %682 = mul nsw i32 %673, %675
  %683 = mul nsw i32 %682, %674
  %684 = load double** %.pre-phi617, align 8, !tbaa !17
  %685 = sext i32 %683 to i64
  %686 = sub nsw i64 0, %685
  %687 = getelementptr inbounds double* %684, i64 %686
  store double* %687, double** %.pre-phi617, align 8, !tbaa !17
  %688 = load double** %.pre-phi619, align 16, !tbaa !17
  %689 = getelementptr inbounds double* %688, i64 %686
  store double* %689, double** %.pre-phi619, align 16, !tbaa !17
  br label %.loopexit146

.preheader172:                                    ; preds = %.preheader172.lr.ph, %712
  %690 = phi i32 [ %623, %.preheader172.lr.ph ], [ %713, %712 ]
  %691 = phi i32 [ %.pre554, %.preheader172.lr.ph ], [ %714, %712 ]
  %_typed_data16.3373 = phi i32* [ %621, %.preheader172.lr.ph ], [ %_typed_data16.4.lcssa, %712 ]
  %_k15.1372 = phi i32 [ 0, %.preheader172.lr.ph ], [ %715, %712 ]
  %692 = icmp sgt i32 %691, 0
  br i1 %692, label %.preheader171.lr.ph, label %712

.preheader171.lr.ph:                              ; preds = %.preheader172
  %693 = sitofp i32 %_k15.1372 to double
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.lr.ph, %._crit_edge365
  %_typed_data16.4369 = phi i32* [ %_typed_data16.3373, %.preheader171.lr.ph ], [ %_typed_data16.5.lcssa, %._crit_edge365 ]
  %_j14.1368 = phi i32 [ 0, %.preheader171.lr.ph ], [ %709, %._crit_edge365 ]
  %694 = load i32* %.pre-phi, align 4, !tbaa !16
  %695 = icmp sgt i32 %694, 0
  %696 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %695, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %.preheader171
  %697 = sitofp i32 %_j14.1368 to double
  br label %698

; <label>:698                                     ; preds = %.lr.ph364, %698
  %699 = phi %struct.__sFILE* [ %696, %.lr.ph364 ], [ %708, %698 ]
  %_typed_data16.5363 = phi i32* [ %_typed_data16.4369, %.lr.ph364 ], [ %701, %698 ]
  %_i13.1362 = phi i32 [ 0, %.lr.ph364 ], [ %705, %698 ]
  %700 = sitofp i32 %_i13.1362 to double
  %701 = getelementptr inbounds i32* %_typed_data16.5363, i64 1
  %702 = load i32* %_typed_data16.5363, align 4, !tbaa !16
  %703 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %699, i8* %.pre-phi650, double %700, double %697, double %693, i32 %702) #7
  %704 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc83 = call i32 @fputc(i32 10, %struct.__sFILE* %704)
  %705 = add nuw nsw i32 %_i13.1362, 1
  %706 = load i32* %.pre-phi, align 4, !tbaa !16
  %707 = icmp slt i32 %705, %706
  %708 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %707, label %698, label %._crit_edge365

._crit_edge365:                                   ; preds = %698, %.preheader171
  %.lcssa223 = phi %struct.__sFILE* [ %696, %.preheader171 ], [ %708, %698 ]
  %_typed_data16.5.lcssa = phi i32* [ %_typed_data16.4369, %.preheader171 ], [ %701, %698 ]
  %fputc80 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa223)
  %709 = add nuw nsw i32 %_j14.1368, 1
  %710 = load i32* %625, align 4, !tbaa !16
  %711 = icmp slt i32 %709, %710
  br i1 %711, label %.preheader171, label %._crit_edge370

._crit_edge370:                                   ; preds = %._crit_edge365
  %.pre555 = load i32* %622, align 4, !tbaa !16
  br label %712

; <label>:712                                     ; preds = %._crit_edge370, %.preheader172
  %713 = phi i32 [ %.pre555, %._crit_edge370 ], [ %690, %.preheader172 ]
  %714 = phi i32 [ %710, %._crit_edge370 ], [ %691, %.preheader172 ]
  %_typed_data16.4.lcssa = phi i32* [ %_typed_data16.5.lcssa, %._crit_edge370 ], [ %_typed_data16.3373, %.preheader172 ]
  %715 = add nuw nsw i32 %_k15.1372, 1
  %716 = icmp slt i32 %715, %713
  br i1 %716, label %.preheader172, label %.loopexit146

; <label>:717                                     ; preds = %197
  %718 = bitcast i8** %data to i64**
  %719 = load i64** %718, align 8, !tbaa !17
  %720 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %721 = load i32* %720, align 4, !tbaa !16
  %722 = icmp sgt i32 %721, 0
  br i1 %137, label %.preheader177, label %.preheader180

.preheader180:                                    ; preds = %717
  br i1 %722, label %.preheader179.lr.ph, label %.loopexit146

.preheader179.lr.ph:                              ; preds = %.preheader180
  %723 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre548 = load i32* %723, align 4, !tbaa !16
  br label %.preheader179

.preheader177:                                    ; preds = %717
  %724 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %722, label %.preheader176.lr.ph, label %.preheader177._crit_edge

.preheader177._crit_edge:                         ; preds = %.preheader177
  %.pre553 = load i32* %724, align 4, !tbaa !16
  %.pre621 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre623 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre625 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge386

.preheader176.lr.ph:                              ; preds = %.preheader177
  %725 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %726 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %727 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %728 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %729 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %730 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre550 = load i32* %724, align 4, !tbaa !16
  br label %.preheader176

.preheader176:                                    ; preds = %.preheader176.lr.ph, %767
  %731 = phi i32 [ %721, %.preheader176.lr.ph ], [ %768, %767 ]
  %732 = phi i32 [ %.pre550, %.preheader176.lr.ph ], [ %769, %767 ]
  %_typed_data20.0385 = phi i64* [ %719, %.preheader176.lr.ph ], [ %_typed_data20.1.lcssa, %767 ]
  %_k19.0384 = phi i32 [ 0, %.preheader176.lr.ph ], [ %770, %767 ]
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %.preheader175, label %767

.preheader175:                                    ; preds = %.preheader176, %._crit_edge377
  %_typed_data20.1381 = phi i64* [ %_typed_data20.2.lcssa, %._crit_edge377 ], [ %_typed_data20.0385, %.preheader176 ]
  %_j18.0380 = phi i32 [ %764, %._crit_edge377 ], [ 0, %.preheader176 ]
  %734 = load i32* %.pre-phi, align 4, !tbaa !16
  %735 = icmp sgt i32 %734, 0
  %736 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %735, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %.preheader175, %.lr.ph376
  %737 = phi %struct.__sFILE* [ %763, %.lr.ph376 ], [ %736, %.preheader175 ]
  %_typed_data20.2375 = phi i64* [ %755, %.lr.ph376 ], [ %_typed_data20.1381, %.preheader175 ]
  %_i17.0374 = phi i32 [ %760, %.lr.ph376 ], [ 0, %.preheader175 ]
  %738 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %739 = load <2 x double*>* %738, align 16, !tbaa !17
  %740 = extractelement <2 x double*> %739, i32 0
  %741 = load double* %740, align 8, !tbaa !30
  %742 = load double* %726, align 16, !tbaa !30
  %743 = fadd double %741, %742
  %744 = getelementptr <2 x double*> %739, <2 x i64> <i64 1, i64 1>
  %745 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %744, <2 x double*>* %745, align 16, !tbaa !17
  %746 = extractelement <2 x double*> %739, i32 1
  %747 = load double* %746, align 8, !tbaa !30
  %748 = load double* %728, align 8, !tbaa !30
  %749 = fadd double %747, %748
  %750 = load double** %729, align 16, !tbaa !17
  %751 = getelementptr inbounds double* %750, i64 1
  store double* %751, double** %729, align 16, !tbaa !17
  %752 = load double* %750, align 8, !tbaa !30
  %753 = load double* %730, align 16, !tbaa !30
  %754 = fadd double %752, %753
  %755 = getelementptr inbounds i64* %_typed_data20.2375, i64 1
  %756 = load i64* %_typed_data20.2375, align 8, !tbaa !34
  %757 = trunc i64 %756 to i32
  %758 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %737, i8* %.pre-phi650, double %743, double %749, double %754, i32 %757) #7
  %759 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc77 = call i32 @fputc(i32 10, %struct.__sFILE* %759)
  %760 = add nuw nsw i32 %_i17.0374, 1
  %761 = load i32* %.pre-phi, align 4, !tbaa !16
  %762 = icmp slt i32 %760, %761
  %763 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %762, label %.lr.ph376, label %._crit_edge377

._crit_edge377:                                   ; preds = %.lr.ph376, %.preheader175
  %.lcssa224 = phi %struct.__sFILE* [ %736, %.preheader175 ], [ %763, %.lr.ph376 ]
  %_typed_data20.2.lcssa = phi i64* [ %_typed_data20.1381, %.preheader175 ], [ %755, %.lr.ph376 ]
  %fputc74 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa224)
  %764 = add nuw nsw i32 %_j18.0380, 1
  %765 = load i32* %724, align 4, !tbaa !16
  %766 = icmp slt i32 %764, %765
  br i1 %766, label %.preheader175, label %._crit_edge382

._crit_edge382:                                   ; preds = %._crit_edge377
  %.pre551 = load i32* %720, align 4, !tbaa !16
  br label %767

; <label>:767                                     ; preds = %._crit_edge382, %.preheader176
  %768 = phi i32 [ %.pre551, %._crit_edge382 ], [ %731, %.preheader176 ]
  %769 = phi i32 [ %765, %._crit_edge382 ], [ %732, %.preheader176 ]
  %_typed_data20.1.lcssa = phi i64* [ %_typed_data20.2.lcssa, %._crit_edge382 ], [ %_typed_data20.0385, %.preheader176 ]
  %770 = add nuw nsw i32 %_k19.0384, 1
  %771 = icmp slt i32 %770, %768
  br i1 %771, label %.preheader176, label %._crit_edge386

._crit_edge386:                                   ; preds = %767, %.preheader177._crit_edge
  %.pre-phi626 = phi double** [ %.pre625, %.preheader177._crit_edge ], [ %729, %767 ]
  %.pre-phi624 = phi double** [ %.pre623, %.preheader177._crit_edge ], [ %727, %767 ]
  %.pre-phi622 = phi double** [ %.pre621, %.preheader177._crit_edge ], [ %725, %767 ]
  %772 = phi i32 [ %.pre553, %.preheader177._crit_edge ], [ %769, %767 ]
  %773 = phi i32 [ %721, %.preheader177._crit_edge ], [ %768, %767 ]
  %774 = load i32* %.pre-phi, align 4, !tbaa !16
  %775 = mul i32 %774, %773
  %776 = mul i32 %775, %772
  %777 = load double** %.pre-phi622, align 16, !tbaa !17
  %778 = sext i32 %776 to i64
  %779 = sub nsw i64 0, %778
  %780 = getelementptr inbounds double* %777, i64 %779
  store double* %780, double** %.pre-phi622, align 16, !tbaa !17
  %781 = mul nsw i32 %772, %774
  %782 = mul nsw i32 %781, %773
  %783 = load double** %.pre-phi624, align 8, !tbaa !17
  %784 = sext i32 %782 to i64
  %785 = sub nsw i64 0, %784
  %786 = getelementptr inbounds double* %783, i64 %785
  store double* %786, double** %.pre-phi624, align 8, !tbaa !17
  %787 = load double** %.pre-phi626, align 16, !tbaa !17
  %788 = getelementptr inbounds double* %787, i64 %785
  store double* %788, double** %.pre-phi626, align 16, !tbaa !17
  br label %.loopexit146

.preheader179:                                    ; preds = %.preheader179.lr.ph, %812
  %789 = phi i32 [ %721, %.preheader179.lr.ph ], [ %813, %812 ]
  %790 = phi i32 [ %.pre548, %.preheader179.lr.ph ], [ %814, %812 ]
  %_typed_data20.3400 = phi i64* [ %719, %.preheader179.lr.ph ], [ %_typed_data20.4.lcssa, %812 ]
  %_k19.1399 = phi i32 [ 0, %.preheader179.lr.ph ], [ %815, %812 ]
  %791 = icmp sgt i32 %790, 0
  br i1 %791, label %.preheader178.lr.ph, label %812

.preheader178.lr.ph:                              ; preds = %.preheader179
  %792 = sitofp i32 %_k19.1399 to double
  br label %.preheader178

.preheader178:                                    ; preds = %.preheader178.lr.ph, %._crit_edge392
  %_typed_data20.4396 = phi i64* [ %_typed_data20.3400, %.preheader178.lr.ph ], [ %_typed_data20.5.lcssa, %._crit_edge392 ]
  %_j18.1395 = phi i32 [ 0, %.preheader178.lr.ph ], [ %809, %._crit_edge392 ]
  %793 = load i32* %.pre-phi, align 4, !tbaa !16
  %794 = icmp sgt i32 %793, 0
  %795 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %794, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader178
  %796 = sitofp i32 %_j18.1395 to double
  br label %797

; <label>:797                                     ; preds = %.lr.ph391, %797
  %798 = phi %struct.__sFILE* [ %795, %.lr.ph391 ], [ %808, %797 ]
  %_typed_data20.5390 = phi i64* [ %_typed_data20.4396, %.lr.ph391 ], [ %800, %797 ]
  %_i17.1389 = phi i32 [ 0, %.lr.ph391 ], [ %805, %797 ]
  %799 = sitofp i32 %_i17.1389 to double
  %800 = getelementptr inbounds i64* %_typed_data20.5390, i64 1
  %801 = load i64* %_typed_data20.5390, align 8, !tbaa !34
  %802 = trunc i64 %801 to i32
  %803 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %798, i8* %.pre-phi650, double %799, double %796, double %792, i32 %802) #7
  %804 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc71 = call i32 @fputc(i32 10, %struct.__sFILE* %804)
  %805 = add nuw nsw i32 %_i17.1389, 1
  %806 = load i32* %.pre-phi, align 4, !tbaa !16
  %807 = icmp slt i32 %805, %806
  %808 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %807, label %797, label %._crit_edge392

._crit_edge392:                                   ; preds = %797, %.preheader178
  %.lcssa227 = phi %struct.__sFILE* [ %795, %.preheader178 ], [ %808, %797 ]
  %_typed_data20.5.lcssa = phi i64* [ %_typed_data20.4396, %.preheader178 ], [ %800, %797 ]
  %fputc68 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa227)
  %809 = add nuw nsw i32 %_j18.1395, 1
  %810 = load i32* %723, align 4, !tbaa !16
  %811 = icmp slt i32 %809, %810
  br i1 %811, label %.preheader178, label %._crit_edge397

._crit_edge397:                                   ; preds = %._crit_edge392
  %.pre549 = load i32* %720, align 4, !tbaa !16
  br label %812

; <label>:812                                     ; preds = %._crit_edge397, %.preheader179
  %813 = phi i32 [ %.pre549, %._crit_edge397 ], [ %789, %.preheader179 ]
  %814 = phi i32 [ %810, %._crit_edge397 ], [ %790, %.preheader179 ]
  %_typed_data20.4.lcssa = phi i64* [ %_typed_data20.5.lcssa, %._crit_edge397 ], [ %_typed_data20.3400, %.preheader179 ]
  %815 = add nuw nsw i32 %_k19.1399, 1
  %816 = icmp slt i32 %815, %813
  br i1 %816, label %.preheader179, label %.loopexit146

; <label>:817                                     ; preds = %197, %197
  %818 = bitcast i8** %data to float**
  %819 = load float** %818, align 8, !tbaa !17
  %820 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %821 = load i32* %820, align 4, !tbaa !16
  %822 = icmp sgt i32 %821, 0
  br i1 %137, label %.preheader184, label %.preheader187

.preheader187:                                    ; preds = %817
  br i1 %822, label %.preheader186.lr.ph, label %.loopexit146

.preheader186.lr.ph:                              ; preds = %.preheader187
  %823 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre542 = load i32* %823, align 4, !tbaa !16
  br label %.preheader186

.preheader184:                                    ; preds = %817
  %824 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %822, label %.preheader183.lr.ph, label %.preheader184._crit_edge

.preheader184._crit_edge:                         ; preds = %.preheader184
  %.pre547 = load i32* %824, align 4, !tbaa !16
  %.pre628 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre630 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre632 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge413

.preheader183.lr.ph:                              ; preds = %.preheader184
  %825 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %826 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %827 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %828 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %829 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %830 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre544 = load i32* %824, align 4, !tbaa !16
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader183.lr.ph, %878
  %831 = phi i32 [ %821, %.preheader183.lr.ph ], [ %879, %878 ]
  %832 = phi i32 [ %.pre544, %.preheader183.lr.ph ], [ %880, %878 ]
  %_typed_data24.0412 = phi float* [ %819, %.preheader183.lr.ph ], [ %_typed_data24.1.lcssa, %878 ]
  %_k23.0411 = phi i32 [ 0, %.preheader183.lr.ph ], [ %881, %878 ]
  %833 = icmp sgt i32 %832, 0
  br i1 %833, label %.preheader182, label %878

.preheader182:                                    ; preds = %.preheader183, %._crit_edge404
  %_typed_data24.1408 = phi float* [ %_typed_data24.2.lcssa, %._crit_edge404 ], [ %_typed_data24.0412, %.preheader183 ]
  %_j22.0407 = phi i32 [ %875, %._crit_edge404 ], [ 0, %.preheader183 ]
  %834 = load i32* %.pre-phi, align 4, !tbaa !16
  %835 = icmp sgt i32 %834, 0
  %836 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %835, label %.lr.ph403, label %._crit_edge404

.lr.ph403:                                        ; preds = %.preheader182, %869
  %837 = phi %struct.__sFILE* [ %874, %869 ], [ %836, %.preheader182 ]
  %_typed_data24.2402 = phi float* [ %_typed_data24.3, %869 ], [ %_typed_data24.1408, %.preheader182 ]
  %_i21.0401 = phi i32 [ %871, %869 ], [ 0, %.preheader182 ]
  %838 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %839 = load <2 x double*>* %838, align 16, !tbaa !17
  %840 = extractelement <2 x double*> %839, i32 0
  %841 = load double* %840, align 8, !tbaa !30
  %842 = load double* %826, align 16, !tbaa !30
  %843 = fadd double %841, %842
  %844 = getelementptr <2 x double*> %839, <2 x i64> <i64 1, i64 1>
  %845 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %844, <2 x double*>* %845, align 16, !tbaa !17
  %846 = extractelement <2 x double*> %839, i32 1
  %847 = load double* %846, align 8, !tbaa !30
  %848 = load double* %828, align 8, !tbaa !30
  %849 = fadd double %847, %848
  %850 = load double** %829, align 16, !tbaa !17
  %851 = getelementptr inbounds double* %850, i64 1
  store double* %851, double** %829, align 16, !tbaa !17
  %852 = load double* %850, align 8, !tbaa !30
  %853 = load double* %830, align 16, !tbaa !30
  %854 = fadd double %852, %853
  %855 = getelementptr inbounds float* %_typed_data24.2402, i64 1
  %856 = load float* %_typed_data24.2402, align 4, !tbaa !36
  %857 = fpext float %856 to double
  %858 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %837, i8* %.pre-phi652, double %843, double %849, double %854, double %857) #7
  %859 = load i32* %202, align 4, !tbaa !31
  %860 = icmp eq i32 %859, 11
  br i1 %860, label %861, label %869

; <label>:861                                     ; preds = %.lr.ph403
  %862 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %863 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %862)
  %864 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %865 = getelementptr inbounds float* %_typed_data24.2402, i64 2
  %866 = load float* %855, align 4, !tbaa !36
  %867 = fpext float %866 to double
  %868 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %864, i8* %17, double %867) #7
  br label %869

; <label>:869                                     ; preds = %861, %.lr.ph403
  %_typed_data24.3 = phi float* [ %865, %861 ], [ %855, %.lr.ph403 ]
  %870 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc65 = call i32 @fputc(i32 10, %struct.__sFILE* %870)
  %871 = add nuw nsw i32 %_i21.0401, 1
  %872 = load i32* %.pre-phi, align 4, !tbaa !16
  %873 = icmp slt i32 %871, %872
  %874 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %873, label %.lr.ph403, label %._crit_edge404

._crit_edge404:                                   ; preds = %869, %.preheader182
  %.lcssa228 = phi %struct.__sFILE* [ %836, %.preheader182 ], [ %874, %869 ]
  %_typed_data24.2.lcssa = phi float* [ %_typed_data24.1408, %.preheader182 ], [ %_typed_data24.3, %869 ]
  %fputc62 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa228)
  %875 = add nuw nsw i32 %_j22.0407, 1
  %876 = load i32* %824, align 4, !tbaa !16
  %877 = icmp slt i32 %875, %876
  br i1 %877, label %.preheader182, label %._crit_edge409

._crit_edge409:                                   ; preds = %._crit_edge404
  %.pre545 = load i32* %820, align 4, !tbaa !16
  br label %878

; <label>:878                                     ; preds = %._crit_edge409, %.preheader183
  %879 = phi i32 [ %.pre545, %._crit_edge409 ], [ %831, %.preheader183 ]
  %880 = phi i32 [ %876, %._crit_edge409 ], [ %832, %.preheader183 ]
  %_typed_data24.1.lcssa = phi float* [ %_typed_data24.2.lcssa, %._crit_edge409 ], [ %_typed_data24.0412, %.preheader183 ]
  %881 = add nuw nsw i32 %_k23.0411, 1
  %882 = icmp slt i32 %881, %879
  br i1 %882, label %.preheader183, label %._crit_edge413

._crit_edge413:                                   ; preds = %878, %.preheader184._crit_edge
  %.pre-phi633 = phi double** [ %.pre632, %.preheader184._crit_edge ], [ %829, %878 ]
  %.pre-phi631 = phi double** [ %.pre630, %.preheader184._crit_edge ], [ %827, %878 ]
  %.pre-phi629 = phi double** [ %.pre628, %.preheader184._crit_edge ], [ %825, %878 ]
  %883 = phi i32 [ %.pre547, %.preheader184._crit_edge ], [ %880, %878 ]
  %884 = phi i32 [ %821, %.preheader184._crit_edge ], [ %879, %878 ]
  %885 = load i32* %.pre-phi, align 4, !tbaa !16
  %886 = mul i32 %885, %884
  %887 = mul i32 %886, %883
  %888 = load double** %.pre-phi629, align 16, !tbaa !17
  %889 = sext i32 %887 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds double* %888, i64 %890
  store double* %891, double** %.pre-phi629, align 16, !tbaa !17
  %892 = mul nsw i32 %883, %885
  %893 = mul nsw i32 %892, %884
  %894 = load double** %.pre-phi631, align 8, !tbaa !17
  %895 = sext i32 %893 to i64
  %896 = sub nsw i64 0, %895
  %897 = getelementptr inbounds double* %894, i64 %896
  store double* %897, double** %.pre-phi631, align 8, !tbaa !17
  %898 = load double** %.pre-phi633, align 16, !tbaa !17
  %899 = getelementptr inbounds double* %898, i64 %896
  store double* %899, double** %.pre-phi633, align 16, !tbaa !17
  br label %.loopexit146

.preheader186:                                    ; preds = %.preheader186.lr.ph, %934
  %900 = phi i32 [ %821, %.preheader186.lr.ph ], [ %935, %934 ]
  %901 = phi i32 [ %.pre542, %.preheader186.lr.ph ], [ %936, %934 ]
  %_typed_data24.4427 = phi float* [ %819, %.preheader186.lr.ph ], [ %_typed_data24.5.lcssa, %934 ]
  %_k23.1426 = phi i32 [ 0, %.preheader186.lr.ph ], [ %937, %934 ]
  %902 = icmp sgt i32 %901, 0
  br i1 %902, label %.preheader185.lr.ph, label %934

.preheader185.lr.ph:                              ; preds = %.preheader186
  %903 = sitofp i32 %_k23.1426 to double
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.lr.ph, %._crit_edge419
  %_typed_data24.5423 = phi float* [ %_typed_data24.4427, %.preheader185.lr.ph ], [ %_typed_data24.6.lcssa, %._crit_edge419 ]
  %_j22.1422 = phi i32 [ 0, %.preheader185.lr.ph ], [ %931, %._crit_edge419 ]
  %904 = load i32* %.pre-phi, align 4, !tbaa !16
  %905 = icmp sgt i32 %904, 0
  %906 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %905, label %.lr.ph418, label %._crit_edge419

.lr.ph418:                                        ; preds = %.preheader185
  %907 = sitofp i32 %_j22.1422 to double
  br label %908

; <label>:908                                     ; preds = %.lr.ph418, %925
  %909 = phi %struct.__sFILE* [ %906, %.lr.ph418 ], [ %930, %925 ]
  %_typed_data24.6417 = phi float* [ %_typed_data24.5423, %.lr.ph418 ], [ %_typed_data24.7, %925 ]
  %_i21.1416 = phi i32 [ 0, %.lr.ph418 ], [ %927, %925 ]
  %910 = sitofp i32 %_i21.1416 to double
  %911 = getelementptr inbounds float* %_typed_data24.6417, i64 1
  %912 = load float* %_typed_data24.6417, align 4, !tbaa !36
  %913 = fpext float %912 to double
  %914 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %909, i8* %.pre-phi652, double %910, double %907, double %903, double %913) #7
  %915 = load i32* %202, align 4, !tbaa !31
  %916 = icmp eq i32 %915, 11
  br i1 %916, label %917, label %925

; <label>:917                                     ; preds = %908
  %918 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %919 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %918)
  %920 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %921 = getelementptr inbounds float* %_typed_data24.6417, i64 2
  %922 = load float* %911, align 4, !tbaa !36
  %923 = fpext float %922 to double
  %924 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %920, i8* %17, double %923) #7
  br label %925

; <label>:925                                     ; preds = %917, %908
  %_typed_data24.7 = phi float* [ %921, %917 ], [ %911, %908 ]
  %926 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc59 = call i32 @fputc(i32 10, %struct.__sFILE* %926)
  %927 = add nuw nsw i32 %_i21.1416, 1
  %928 = load i32* %.pre-phi, align 4, !tbaa !16
  %929 = icmp slt i32 %927, %928
  %930 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %929, label %908, label %._crit_edge419

._crit_edge419:                                   ; preds = %925, %.preheader185
  %.lcssa231 = phi %struct.__sFILE* [ %906, %.preheader185 ], [ %930, %925 ]
  %_typed_data24.6.lcssa = phi float* [ %_typed_data24.5423, %.preheader185 ], [ %_typed_data24.7, %925 ]
  %fputc56 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa231)
  %931 = add nuw nsw i32 %_j22.1422, 1
  %932 = load i32* %823, align 4, !tbaa !16
  %933 = icmp slt i32 %931, %932
  br i1 %933, label %.preheader185, label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge419
  %.pre543 = load i32* %820, align 4, !tbaa !16
  br label %934

; <label>:934                                     ; preds = %._crit_edge424, %.preheader186
  %935 = phi i32 [ %.pre543, %._crit_edge424 ], [ %900, %.preheader186 ]
  %936 = phi i32 [ %932, %._crit_edge424 ], [ %901, %.preheader186 ]
  %_typed_data24.5.lcssa = phi float* [ %_typed_data24.6.lcssa, %._crit_edge424 ], [ %_typed_data24.4427, %.preheader186 ]
  %937 = add nuw nsw i32 %_k23.1426, 1
  %938 = icmp slt i32 %937, %935
  br i1 %938, label %.preheader186, label %.loopexit146

; <label>:939                                     ; preds = %197, %197
  %940 = bitcast i8** %data to double**
  %941 = load double** %940, align 8, !tbaa !17
  %942 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %943 = load i32* %942, align 4, !tbaa !16
  %944 = icmp sgt i32 %943, 0
  br i1 %137, label %.preheader191, label %.preheader194

.preheader194:                                    ; preds = %939
  br i1 %944, label %.preheader193.lr.ph, label %.loopexit146

.preheader193.lr.ph:                              ; preds = %.preheader194
  %945 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre536 = load i32* %945, align 4, !tbaa !16
  br label %.preheader193

.preheader191:                                    ; preds = %939
  %946 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %944, label %.preheader190.lr.ph, label %.preheader191._crit_edge

.preheader191._crit_edge:                         ; preds = %.preheader191
  %.pre541 = load i32* %946, align 4, !tbaa !16
  %.pre635 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre637 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre639 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge440

.preheader190.lr.ph:                              ; preds = %.preheader191
  %947 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %948 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %949 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %950 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %951 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %952 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre538 = load i32* %946, align 4, !tbaa !16
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %998
  %953 = phi i32 [ %943, %.preheader190.lr.ph ], [ %999, %998 ]
  %954 = phi i32 [ %.pre538, %.preheader190.lr.ph ], [ %1000, %998 ]
  %_typed_data28.0439 = phi double* [ %941, %.preheader190.lr.ph ], [ %_typed_data28.1.lcssa, %998 ]
  %_k27.0438 = phi i32 [ 0, %.preheader190.lr.ph ], [ %1001, %998 ]
  %955 = icmp sgt i32 %954, 0
  br i1 %955, label %.preheader189, label %998

.preheader189:                                    ; preds = %.preheader190, %._crit_edge431
  %_typed_data28.1435 = phi double* [ %_typed_data28.2.lcssa, %._crit_edge431 ], [ %_typed_data28.0439, %.preheader190 ]
  %_j26.0434 = phi i32 [ %995, %._crit_edge431 ], [ 0, %.preheader190 ]
  %956 = load i32* %.pre-phi, align 4, !tbaa !16
  %957 = icmp sgt i32 %956, 0
  %958 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %957, label %.lr.ph430, label %._crit_edge431

.lr.ph430:                                        ; preds = %.preheader189, %989
  %959 = phi %struct.__sFILE* [ %994, %989 ], [ %958, %.preheader189 ]
  %_typed_data28.2429 = phi double* [ %_typed_data28.3, %989 ], [ %_typed_data28.1435, %.preheader189 ]
  %_i25.0428 = phi i32 [ %991, %989 ], [ 0, %.preheader189 ]
  %960 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %961 = load <2 x double*>* %960, align 16, !tbaa !17
  %962 = extractelement <2 x double*> %961, i32 0
  %963 = load double* %962, align 8, !tbaa !30
  %964 = load double* %948, align 16, !tbaa !30
  %965 = fadd double %963, %964
  %966 = getelementptr <2 x double*> %961, <2 x i64> <i64 1, i64 1>
  %967 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %966, <2 x double*>* %967, align 16, !tbaa !17
  %968 = extractelement <2 x double*> %961, i32 1
  %969 = load double* %968, align 8, !tbaa !30
  %970 = load double* %950, align 8, !tbaa !30
  %971 = fadd double %969, %970
  %972 = load double** %951, align 16, !tbaa !17
  %973 = getelementptr inbounds double* %972, i64 1
  store double* %973, double** %951, align 16, !tbaa !17
  %974 = load double* %972, align 8, !tbaa !30
  %975 = load double* %952, align 16, !tbaa !30
  %976 = fadd double %974, %975
  %977 = getelementptr inbounds double* %_typed_data28.2429, i64 1
  %978 = load double* %_typed_data28.2429, align 8, !tbaa !30
  %979 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %959, i8* %.pre-phi652, double %965, double %971, double %976, double %978) #7
  %980 = load i32* %202, align 4, !tbaa !31
  %981 = icmp eq i32 %980, 12
  br i1 %981, label %982, label %989

; <label>:982                                     ; preds = %.lr.ph430
  %983 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %984 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %983)
  %985 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %986 = getelementptr inbounds double* %_typed_data28.2429, i64 2
  %987 = load double* %977, align 8, !tbaa !30
  %988 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %985, i8* %17, double %987) #7
  br label %989

; <label>:989                                     ; preds = %982, %.lr.ph430
  %_typed_data28.3 = phi double* [ %986, %982 ], [ %977, %.lr.ph430 ]
  %990 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc53 = call i32 @fputc(i32 10, %struct.__sFILE* %990)
  %991 = add nuw nsw i32 %_i25.0428, 1
  %992 = load i32* %.pre-phi, align 4, !tbaa !16
  %993 = icmp slt i32 %991, %992
  %994 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %993, label %.lr.ph430, label %._crit_edge431

._crit_edge431:                                   ; preds = %989, %.preheader189
  %.lcssa232 = phi %struct.__sFILE* [ %958, %.preheader189 ], [ %994, %989 ]
  %_typed_data28.2.lcssa = phi double* [ %_typed_data28.1435, %.preheader189 ], [ %_typed_data28.3, %989 ]
  %fputc50 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa232)
  %995 = add nuw nsw i32 %_j26.0434, 1
  %996 = load i32* %946, align 4, !tbaa !16
  %997 = icmp slt i32 %995, %996
  br i1 %997, label %.preheader189, label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge431
  %.pre539 = load i32* %942, align 4, !tbaa !16
  br label %998

; <label>:998                                     ; preds = %._crit_edge436, %.preheader190
  %999 = phi i32 [ %.pre539, %._crit_edge436 ], [ %953, %.preheader190 ]
  %1000 = phi i32 [ %996, %._crit_edge436 ], [ %954, %.preheader190 ]
  %_typed_data28.1.lcssa = phi double* [ %_typed_data28.2.lcssa, %._crit_edge436 ], [ %_typed_data28.0439, %.preheader190 ]
  %1001 = add nuw nsw i32 %_k27.0438, 1
  %1002 = icmp slt i32 %1001, %999
  br i1 %1002, label %.preheader190, label %._crit_edge440

._crit_edge440:                                   ; preds = %998, %.preheader191._crit_edge
  %.pre-phi640 = phi double** [ %.pre639, %.preheader191._crit_edge ], [ %951, %998 ]
  %.pre-phi638 = phi double** [ %.pre637, %.preheader191._crit_edge ], [ %949, %998 ]
  %.pre-phi636 = phi double** [ %.pre635, %.preheader191._crit_edge ], [ %947, %998 ]
  %1003 = phi i32 [ %.pre541, %.preheader191._crit_edge ], [ %1000, %998 ]
  %1004 = phi i32 [ %943, %.preheader191._crit_edge ], [ %999, %998 ]
  %1005 = load i32* %.pre-phi, align 4, !tbaa !16
  %1006 = mul i32 %1005, %1004
  %1007 = mul i32 %1006, %1003
  %1008 = load double** %.pre-phi636, align 16, !tbaa !17
  %1009 = sext i32 %1007 to i64
  %1010 = sub nsw i64 0, %1009
  %1011 = getelementptr inbounds double* %1008, i64 %1010
  store double* %1011, double** %.pre-phi636, align 16, !tbaa !17
  %1012 = mul nsw i32 %1003, %1005
  %1013 = mul nsw i32 %1012, %1004
  %1014 = load double** %.pre-phi638, align 8, !tbaa !17
  %1015 = sext i32 %1013 to i64
  %1016 = sub nsw i64 0, %1015
  %1017 = getelementptr inbounds double* %1014, i64 %1016
  store double* %1017, double** %.pre-phi638, align 8, !tbaa !17
  %1018 = load double** %.pre-phi640, align 16, !tbaa !17
  %1019 = getelementptr inbounds double* %1018, i64 %1016
  store double* %1019, double** %.pre-phi640, align 16, !tbaa !17
  br label %.loopexit146

.preheader193:                                    ; preds = %.preheader193.lr.ph, %1052
  %1020 = phi i32 [ %943, %.preheader193.lr.ph ], [ %1053, %1052 ]
  %1021 = phi i32 [ %.pre536, %.preheader193.lr.ph ], [ %1054, %1052 ]
  %_typed_data28.4454 = phi double* [ %941, %.preheader193.lr.ph ], [ %_typed_data28.5.lcssa, %1052 ]
  %_k27.1453 = phi i32 [ 0, %.preheader193.lr.ph ], [ %1055, %1052 ]
  %1022 = icmp sgt i32 %1021, 0
  br i1 %1022, label %.preheader192.lr.ph, label %1052

.preheader192.lr.ph:                              ; preds = %.preheader193
  %1023 = sitofp i32 %_k27.1453 to double
  br label %.preheader192

.preheader192:                                    ; preds = %.preheader192.lr.ph, %._crit_edge446
  %_typed_data28.5450 = phi double* [ %_typed_data28.4454, %.preheader192.lr.ph ], [ %_typed_data28.6.lcssa, %._crit_edge446 ]
  %_j26.1449 = phi i32 [ 0, %.preheader192.lr.ph ], [ %1049, %._crit_edge446 ]
  %1024 = load i32* %.pre-phi, align 4, !tbaa !16
  %1025 = icmp sgt i32 %1024, 0
  %1026 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1025, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %.preheader192
  %1027 = sitofp i32 %_j26.1449 to double
  br label %1028

; <label>:1028                                    ; preds = %.lr.ph445, %1043
  %1029 = phi %struct.__sFILE* [ %1026, %.lr.ph445 ], [ %1048, %1043 ]
  %_typed_data28.6444 = phi double* [ %_typed_data28.5450, %.lr.ph445 ], [ %_typed_data28.7, %1043 ]
  %_i25.1443 = phi i32 [ 0, %.lr.ph445 ], [ %1045, %1043 ]
  %1030 = sitofp i32 %_i25.1443 to double
  %1031 = getelementptr inbounds double* %_typed_data28.6444, i64 1
  %1032 = load double* %_typed_data28.6444, align 8, !tbaa !30
  %1033 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1029, i8* %.pre-phi652, double %1030, double %1027, double %1023, double %1032) #7
  %1034 = load i32* %202, align 4, !tbaa !31
  %1035 = icmp eq i32 %1034, 12
  br i1 %1035, label %1036, label %1043

; <label>:1036                                    ; preds = %1028
  %1037 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1038 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %1037)
  %1039 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1040 = getelementptr inbounds double* %_typed_data28.6444, i64 2
  %1041 = load double* %1031, align 8, !tbaa !30
  %1042 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1039, i8* %17, double %1041) #7
  br label %1043

; <label>:1043                                    ; preds = %1036, %1028
  %_typed_data28.7 = phi double* [ %1040, %1036 ], [ %1031, %1028 ]
  %1044 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc47 = call i32 @fputc(i32 10, %struct.__sFILE* %1044)
  %1045 = add nuw nsw i32 %_i25.1443, 1
  %1046 = load i32* %.pre-phi, align 4, !tbaa !16
  %1047 = icmp slt i32 %1045, %1046
  %1048 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1047, label %1028, label %._crit_edge446

._crit_edge446:                                   ; preds = %1043, %.preheader192
  %.lcssa235 = phi %struct.__sFILE* [ %1026, %.preheader192 ], [ %1048, %1043 ]
  %_typed_data28.6.lcssa = phi double* [ %_typed_data28.5450, %.preheader192 ], [ %_typed_data28.7, %1043 ]
  %fputc44 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa235)
  %1049 = add nuw nsw i32 %_j26.1449, 1
  %1050 = load i32* %945, align 4, !tbaa !16
  %1051 = icmp slt i32 %1049, %1050
  br i1 %1051, label %.preheader192, label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge446
  %.pre537 = load i32* %942, align 4, !tbaa !16
  br label %1052

; <label>:1052                                    ; preds = %._crit_edge451, %.preheader193
  %1053 = phi i32 [ %.pre537, %._crit_edge451 ], [ %1020, %.preheader193 ]
  %1054 = phi i32 [ %1050, %._crit_edge451 ], [ %1021, %.preheader193 ]
  %_typed_data28.5.lcssa = phi double* [ %_typed_data28.6.lcssa, %._crit_edge451 ], [ %_typed_data28.4454, %.preheader193 ]
  %1055 = add nuw nsw i32 %_k27.1453, 1
  %1056 = icmp slt i32 %1055, %1053
  br i1 %1056, label %.preheader193, label %.loopexit146

; <label>:1057                                    ; preds = %197, %197
  %1058 = bitcast i8** %data to x86_fp80**
  %1059 = load x86_fp80** %1058, align 8, !tbaa !17
  %1060 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 2
  %1061 = load i32* %1060, align 4, !tbaa !16
  %1062 = icmp sgt i32 %1061, 0
  br i1 %137, label %.preheader198, label %.preheader201

.preheader201:                                    ; preds = %1057
  br i1 %1062, label %.preheader200.lr.ph, label %.loopexit146

.preheader200.lr.ph:                              ; preds = %.preheader201
  %1063 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  %.pre = load i32* %1063, align 4, !tbaa !16
  br label %.preheader200

.preheader198:                                    ; preds = %1057
  %1064 = getelementptr inbounds [3 x i32]* %hsize, i64 0, i64 1
  br i1 %1062, label %.preheader197.lr.ph, label %.preheader198._crit_edge

.preheader198._crit_edge:                         ; preds = %.preheader198
  %.pre535 = load i32* %1064, align 4, !tbaa !16
  %.pre642 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %.pre644 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %.pre646 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  br label %._crit_edge467

.preheader197.lr.ph:                              ; preds = %.preheader198
  %1065 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 0
  %1066 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 0
  %1067 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 1
  %1068 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 1
  %1069 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 2
  %1070 = getelementptr inbounds [3 x double]* %stagger_offset, i64 0, i64 2
  %.pre533 = load i32* %1064, align 4, !tbaa !16
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.lr.ph, %1118
  %1071 = phi i32 [ %1061, %.preheader197.lr.ph ], [ %1119, %1118 ]
  %1072 = phi i32 [ %.pre533, %.preheader197.lr.ph ], [ %1120, %1118 ]
  %_typed_data32.0466 = phi x86_fp80* [ %1059, %.preheader197.lr.ph ], [ %_typed_data32.1.lcssa, %1118 ]
  %_k31.0465 = phi i32 [ 0, %.preheader197.lr.ph ], [ %1121, %1118 ]
  %1073 = icmp sgt i32 %1072, 0
  br i1 %1073, label %.preheader196, label %1118

.preheader196:                                    ; preds = %.preheader197, %._crit_edge458
  %_typed_data32.1462 = phi x86_fp80* [ %_typed_data32.2.lcssa, %._crit_edge458 ], [ %_typed_data32.0466, %.preheader197 ]
  %_j30.0461 = phi i32 [ %1115, %._crit_edge458 ], [ 0, %.preheader197 ]
  %1074 = load i32* %.pre-phi, align 4, !tbaa !16
  %1075 = icmp sgt i32 %1074, 0
  %1076 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1075, label %.lr.ph457, label %._crit_edge458

.lr.ph457:                                        ; preds = %.preheader196, %1109
  %1077 = phi %struct.__sFILE* [ %1114, %1109 ], [ %1076, %.preheader196 ]
  %_typed_data32.2456 = phi x86_fp80* [ %_typed_data32.3, %1109 ], [ %_typed_data32.1462, %.preheader196 ]
  %_i29.0455 = phi i32 [ %1111, %1109 ], [ 0, %.preheader196 ]
  %1078 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  %1079 = load <2 x double*>* %1078, align 16, !tbaa !17
  %1080 = extractelement <2 x double*> %1079, i32 0
  %1081 = load double* %1080, align 8, !tbaa !30
  %1082 = load double* %1066, align 16, !tbaa !30
  %1083 = fadd double %1081, %1082
  %1084 = getelementptr <2 x double*> %1079, <2 x i64> <i64 1, i64 1>
  %1085 = bitcast [3 x double*]* %coord_data to <2 x double*>*
  store <2 x double*> %1084, <2 x double*>* %1085, align 16, !tbaa !17
  %1086 = extractelement <2 x double*> %1079, i32 1
  %1087 = load double* %1086, align 8, !tbaa !30
  %1088 = load double* %1068, align 8, !tbaa !30
  %1089 = fadd double %1087, %1088
  %1090 = load double** %1069, align 16, !tbaa !17
  %1091 = getelementptr inbounds double* %1090, i64 1
  store double* %1091, double** %1069, align 16, !tbaa !17
  %1092 = load double* %1090, align 8, !tbaa !30
  %1093 = load double* %1070, align 16, !tbaa !30
  %1094 = fadd double %1092, %1093
  %1095 = getelementptr inbounds x86_fp80* %_typed_data32.2456, i64 1
  %1096 = load x86_fp80* %_typed_data32.2456, align 16, !tbaa !38
  %1097 = fptrunc x86_fp80 %1096 to double
  %1098 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1077, i8* %.pre-phi652, double %1083, double %1089, double %1094, double %1097) #7
  %1099 = load i32* %202, align 4, !tbaa !31
  %1100 = icmp eq i32 %1099, 13
  br i1 %1100, label %1101, label %1109

; <label>:1101                                    ; preds = %.lr.ph457
  %1102 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1103 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %1102)
  %1104 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1105 = getelementptr inbounds x86_fp80* %_typed_data32.2456, i64 2
  %1106 = load x86_fp80* %1095, align 16, !tbaa !38
  %1107 = fptrunc x86_fp80 %1106 to double
  %1108 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1104, i8* %17, double %1107) #7
  br label %1109

; <label>:1109                                    ; preds = %1101, %.lr.ph457
  %_typed_data32.3 = phi x86_fp80* [ %1105, %1101 ], [ %1095, %.lr.ph457 ]
  %1110 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc41 = call i32 @fputc(i32 10, %struct.__sFILE* %1110)
  %1111 = add nuw nsw i32 %_i29.0455, 1
  %1112 = load i32* %.pre-phi, align 4, !tbaa !16
  %1113 = icmp slt i32 %1111, %1112
  %1114 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1113, label %.lr.ph457, label %._crit_edge458

._crit_edge458:                                   ; preds = %1109, %.preheader196
  %.lcssa236 = phi %struct.__sFILE* [ %1076, %.preheader196 ], [ %1114, %1109 ]
  %_typed_data32.2.lcssa = phi x86_fp80* [ %_typed_data32.1462, %.preheader196 ], [ %_typed_data32.3, %1109 ]
  %fputc38 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa236)
  %1115 = add nuw nsw i32 %_j30.0461, 1
  %1116 = load i32* %1064, align 4, !tbaa !16
  %1117 = icmp slt i32 %1115, %1116
  br i1 %1117, label %.preheader196, label %._crit_edge463

._crit_edge463:                                   ; preds = %._crit_edge458
  %.pre534 = load i32* %1060, align 4, !tbaa !16
  br label %1118

; <label>:1118                                    ; preds = %._crit_edge463, %.preheader197
  %1119 = phi i32 [ %.pre534, %._crit_edge463 ], [ %1071, %.preheader197 ]
  %1120 = phi i32 [ %1116, %._crit_edge463 ], [ %1072, %.preheader197 ]
  %_typed_data32.1.lcssa = phi x86_fp80* [ %_typed_data32.2.lcssa, %._crit_edge463 ], [ %_typed_data32.0466, %.preheader197 ]
  %1121 = add nuw nsw i32 %_k31.0465, 1
  %1122 = icmp slt i32 %1121, %1119
  br i1 %1122, label %.preheader197, label %._crit_edge467

._crit_edge467:                                   ; preds = %1118, %.preheader198._crit_edge
  %.pre-phi647 = phi double** [ %.pre646, %.preheader198._crit_edge ], [ %1069, %1118 ]
  %.pre-phi645 = phi double** [ %.pre644, %.preheader198._crit_edge ], [ %1067, %1118 ]
  %.pre-phi643 = phi double** [ %.pre642, %.preheader198._crit_edge ], [ %1065, %1118 ]
  %1123 = phi i32 [ %.pre535, %.preheader198._crit_edge ], [ %1120, %1118 ]
  %1124 = phi i32 [ %1061, %.preheader198._crit_edge ], [ %1119, %1118 ]
  %1125 = load i32* %.pre-phi, align 4, !tbaa !16
  %1126 = mul i32 %1125, %1124
  %1127 = mul i32 %1126, %1123
  %1128 = load double** %.pre-phi643, align 16, !tbaa !17
  %1129 = sext i32 %1127 to i64
  %1130 = sub nsw i64 0, %1129
  %1131 = getelementptr inbounds double* %1128, i64 %1130
  store double* %1131, double** %.pre-phi643, align 16, !tbaa !17
  %1132 = mul nsw i32 %1123, %1125
  %1133 = mul nsw i32 %1132, %1124
  %1134 = load double** %.pre-phi645, align 8, !tbaa !17
  %1135 = sext i32 %1133 to i64
  %1136 = sub nsw i64 0, %1135
  %1137 = getelementptr inbounds double* %1134, i64 %1136
  store double* %1137, double** %.pre-phi645, align 8, !tbaa !17
  %1138 = load double** %.pre-phi647, align 16, !tbaa !17
  %1139 = getelementptr inbounds double* %1138, i64 %1136
  store double* %1139, double** %.pre-phi647, align 16, !tbaa !17
  br label %.loopexit146

.preheader200:                                    ; preds = %.preheader200.lr.ph, %1174
  %1140 = phi i32 [ %1061, %.preheader200.lr.ph ], [ %1175, %1174 ]
  %1141 = phi i32 [ %.pre, %.preheader200.lr.ph ], [ %1176, %1174 ]
  %_typed_data32.4481 = phi x86_fp80* [ %1059, %.preheader200.lr.ph ], [ %_typed_data32.5.lcssa, %1174 ]
  %_k31.1480 = phi i32 [ 0, %.preheader200.lr.ph ], [ %1177, %1174 ]
  %1142 = icmp sgt i32 %1141, 0
  br i1 %1142, label %.preheader199.lr.ph, label %1174

.preheader199.lr.ph:                              ; preds = %.preheader200
  %1143 = sitofp i32 %_k31.1480 to double
  br label %.preheader199

.preheader199:                                    ; preds = %.preheader199.lr.ph, %._crit_edge473
  %_typed_data32.5477 = phi x86_fp80* [ %_typed_data32.4481, %.preheader199.lr.ph ], [ %_typed_data32.6.lcssa, %._crit_edge473 ]
  %_j30.1476 = phi i32 [ 0, %.preheader199.lr.ph ], [ %1171, %._crit_edge473 ]
  %1144 = load i32* %.pre-phi, align 4, !tbaa !16
  %1145 = icmp sgt i32 %1144, 0
  %1146 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1145, label %.lr.ph472, label %._crit_edge473

.lr.ph472:                                        ; preds = %.preheader199
  %1147 = sitofp i32 %_j30.1476 to double
  br label %1148

; <label>:1148                                    ; preds = %.lr.ph472, %1165
  %1149 = phi %struct.__sFILE* [ %1146, %.lr.ph472 ], [ %1170, %1165 ]
  %_typed_data32.6471 = phi x86_fp80* [ %_typed_data32.5477, %.lr.ph472 ], [ %_typed_data32.7, %1165 ]
  %_i29.1470 = phi i32 [ 0, %.lr.ph472 ], [ %1167, %1165 ]
  %1150 = sitofp i32 %_i29.1470 to double
  %1151 = getelementptr inbounds x86_fp80* %_typed_data32.6471, i64 1
  %1152 = load x86_fp80* %_typed_data32.6471, align 16, !tbaa !38
  %1153 = fptrunc x86_fp80 %1152 to double
  %1154 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1149, i8* %.pre-phi652, double %1150, double %1147, double %1143, double %1153) #7
  %1155 = load i32* %202, align 4, !tbaa !31
  %1156 = icmp eq i32 %1155, 13
  br i1 %1156, label %1157, label %1165

; <label>:1157                                    ; preds = %1148
  %1158 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1159 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str33, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %1158)
  %1160 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1161 = getelementptr inbounds x86_fp80* %_typed_data32.6471, i64 2
  %1162 = load x86_fp80* %1151, align 16, !tbaa !38
  %1163 = fptrunc x86_fp80 %1162 to double
  %1164 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1160, i8* %17, double %1163) #7
  br label %1165

; <label>:1165                                    ; preds = %1157, %1148
  %_typed_data32.7 = phi x86_fp80* [ %1161, %1157 ], [ %1151, %1148 ]
  %1166 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %fputc35 = call i32 @fputc(i32 10, %struct.__sFILE* %1166)
  %1167 = add nuw nsw i32 %_i29.1470, 1
  %1168 = load i32* %.pre-phi, align 4, !tbaa !16
  %1169 = icmp slt i32 %1167, %1168
  %1170 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  br i1 %1169, label %1148, label %._crit_edge473

._crit_edge473:                                   ; preds = %1165, %.preheader199
  %.lcssa239 = phi %struct.__sFILE* [ %1146, %.preheader199 ], [ %1170, %1165 ]
  %_typed_data32.6.lcssa = phi x86_fp80* [ %_typed_data32.5477, %.preheader199 ], [ %_typed_data32.7, %1165 ]
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa239)
  %1171 = add nuw nsw i32 %_j30.1476, 1
  %1172 = load i32* %1063, align 4, !tbaa !16
  %1173 = icmp slt i32 %1171, %1172
  br i1 %1173, label %.preheader199, label %._crit_edge478

._crit_edge478:                                   ; preds = %._crit_edge473
  %.pre532 = load i32* %1060, align 4, !tbaa !16
  br label %1174

; <label>:1174                                    ; preds = %._crit_edge478, %.preheader200
  %1175 = phi i32 [ %.pre532, %._crit_edge478 ], [ %1140, %.preheader200 ]
  %1176 = phi i32 [ %1172, %._crit_edge478 ], [ %1141, %.preheader200 ]
  %_typed_data32.5.lcssa = phi x86_fp80* [ %_typed_data32.6.lcssa, %._crit_edge478 ], [ %_typed_data32.4481, %.preheader200 ]
  %1177 = add nuw nsw i32 %_k31.1480, 1
  %1178 = icmp slt i32 %1177, %1175
  br i1 %1178, label %.preheader200, label %.loopexit146

; <label>:1179                                    ; preds = %197
  %1180 = call i32 @CCTK_Warn(i32 1, i32 452, i8* getelementptr inbounds ([77 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str34, i64 0, i64 0)) #7
  br label %.loopexit146

.loopexit146:                                     ; preds = %1174, %1052, %934, %812, %712, %614, %514, %396, %298, %.preheader201, %.preheader194, %.preheader187, %.preheader180, %.preheader173, %.preheader166, %.preheader159, %.preheader152, %.preheader145, %._crit_edge467, %._crit_edge440, %._crit_edge413, %._crit_edge386, %._crit_edge359, %._crit_edge332, %._crit_edge305, %._crit_edge278, %._crit_edge251, %1179
  %1181 = load %struct.__sFILE** %file.1, align 8, !tbaa !17
  %1182 = call i32 @fflush(%struct.__sFILE* %1181) #7
  %1183 = load i8** %data, align 8, !tbaa !17
  call void @free(i8* %1183) #8
  br label %1184

; <label>:1184                                    ; preds = %1190, %.loopexit146
  %indvars.iv523 = phi i64 [ 0, %.loopexit146 ], [ %indvars.iv.next524, %1190 ]
  %1185 = getelementptr inbounds [3 x double*]* %coord_data, i64 0, i64 %indvars.iv523
  %1186 = load double** %1185, align 8, !tbaa !17
  %1187 = icmp eq double* %1186, null
  br i1 %1187, label %1190, label %1188

; <label>:1188                                    ; preds = %1184
  %1189 = bitcast double* %1186 to i8*
  call void @free(i8* %1189) #8
  br label %1190

; <label>:1190                                    ; preds = %1184, %1188
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1
  %exitcond525 = icmp eq i64 %indvars.iv.next524, 3
  br i1 %exitcond525, label %.loopexit, label %1184

.loopexit:                                        ; preds = %1190, %182, %183, %164, %154, %145, %93, %10
  %.0 = phi i32 [ -3, %145 ], [ -3, %154 ], [ -3, %164 ], [ -2, %93 ], [ -1, %10 ], [ 0, %183 ], [ -3, %182 ], [ 0, %1190 ]
  call void @llvm.lifetime.end(i64 128, i8* %5) #2
  call void @llvm.lifetime.end(i64 40, i8* %4) #2
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare i32 @CCTK_CoordRange(%struct.cGH*, double*, double*, i32, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #3

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_AdvertiseFile(%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare i32 @Util_CurrentDate(i32, i8*) #3

; Function Attrs: optsize
declare i32 @Util_CurrentTime(i32, i8*) #3

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @Hyperslab_GetHyperslab(%struct.cGH*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 104}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 120}
!10 = !{!11, !7, i64 112}
!11 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292}
!12 = !{!13, !4, i64 120}
!13 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !8, i64 104, !7, i64 112, !4, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!14 = !{!15, !8, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!16 = !{!8, !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !7, i64 104}
!19 = !{!"IOASCIIGH", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!20 = !{!19, !7, i64 56}
!21 = !{!22, !7, i64 24}
!22 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!23 = !{!22, !7, i64 0}
!24 = !{!22, !7, i64 8}
!25 = !{!22, !7, i64 32}
!26 = !{!22, !7, i64 16}
!27 = !{!5, !5, i64 0}
!28 = !{!15, !8, i64 12}
!29 = !{!13, !7, i64 72}
!30 = !{!4, !4, i64 0}
!31 = !{!15, !8, i64 4}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !5, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !5, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !5, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"long double", !5, i64 0}
