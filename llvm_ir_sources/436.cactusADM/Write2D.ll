; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write2D.c'
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
@IOASCII_Write2D.extensions = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"yz\00", align 1
@.str3 = private unnamed_addr constant [77 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write2D.c\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"No IOASCII 2D output for '%s' (no storage)\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"\0A\0A#Time = %%%s\0A\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c" (%%c = %%%s),\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"%%%s\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"gnuplot f(t,x,y)\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"%%%s\09\09\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"%%%s\09\09%%%s\09\09%%d\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"%%%s\09\09%%%s\09\09%%%s\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str14 = private unnamed_addr constant [53 x i8] c"IOASCII_Write2D: No coordinate ranges found for '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str15 = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"%s_[%d]\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"%s/%s_%s.asc\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"%s_%s.asc\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"%s/%s_2D.gnuplot\00", align 1
@.str21 = private unnamed_addr constant [20 x i8] c"%s/%s_2d_%s.gnuplot\00", align 1
@.str22 = private unnamed_addr constant [14 x i8] c"%s_2D.gnuplot\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"%s_2d_%s.gnuplot\00", align 1
@.str24 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"Cannot open 2D output file '%s'\00", align 1
@.str27 = private unnamed_addr constant [28 x i8] c"Two-dimensional slice plots\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str30 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"#Parameter file %s\0A\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str33 = private unnamed_addr constant [13 x i8] c"#Created %s \00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str35 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str36 = private unnamed_addr constant [13 x i8] c"#x-label %c\0A\00", align 1
@.str37 = private unnamed_addr constant [13 x i8] c"#y-label %c\0A\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"#z-label %s\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c" (%ci = %d)\00", align 1
@IOASCII_Write2D.lengths = internal constant [2 x i32] [i32 -1, i32 -1], align 4
@IOASCII_Write2D.downsamples = internal constant [2 x i32] [i32 1, i32 1], align 4
@.str40 = private unnamed_addr constant [49 x i8] c"Failed to extract 2D hyperslab for %c-coordinate\00", align 1
@.str41 = private unnamed_addr constant [49 x i8] c"Failed to extract 2D hyperslab for variable '%s'\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str44 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@.str45 = private unnamed_addr constant [55 x i8] c"$Id: Write2D.c,v 1.30 2001/12/28 21:28:37 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Write2D_c() #0 {
  ret i8* getelementptr inbounds ([55 x i8]* @.str45, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Write2D(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %header_fmt_string = alloca [30 x i8], align 16
  %zlabel_fmt_string = alloca [30 x i8], align 16
  %out_real_format = alloca [30 x i8], align 16
  %time_fmt_string = alloca [30 x i8], align 16
  %data_fmt_string_int = alloca [30 x i8], align 16
  %data_fmt_string_real = alloca [30 x i8], align 16
  %groupinfo = alloca %struct.cGroup, align 4
  %coord_index = alloca [3 x i32], align 4
  %coord_lower = alloca [3 x double], align 16
  %coord_system = alloca [20 x i8], align 16
  %origin = alloca [3 x i32], align 4
  %dummy = alloca double, align 8
  %slicename = alloca [20 x i8], align 16
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %buffer = alloca [128 x i8], align 16
  %directions = alloca [3 x i32], align 4
  %hsize = alloca [2 x i32], align 4
  %coord_data_i = alloca double*, align 8
  %coord_data_j = alloca double*, align 8
  %data = alloca i8*, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 11), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 15), align 8, !tbaa !9
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 28), align 4, !tbaa !10
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 14), align 8, !tbaa !12
  %5 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*
  call void @llvm.lifetime.start(i64 40, i8* %5) #2
  %6 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %6) #2
  %7 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %8 = call i32 @CCTK_GroupData(i32 %7, %struct.cGroup* %groupinfo) #7
  %9 = call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %7) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = call i8* @CCTK_FullName(i32 %vindex) #7
  %13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 164, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i8* %12) #7
  call void @free(i8* %12) #8
  br label %.loopexit176

; <label>:14                                      ; preds = %0
  %15 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #7
  %16 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 4
  %17 = load i32* %16, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 2
  %19 = select i1 %18, i32 1, i32 3
  %20 = getelementptr inbounds [30 x i8]* %header_fmt_string, i64 0, i64 0
  %21 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %20, i32 0, i64 30, i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), i8* %2) #7
  %22 = getelementptr inbounds [30 x i8]* %zlabel_fmt_string, i64 0, i64 0
  %23 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %22, i32 0, i64 30, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* %2) #7
  %24 = getelementptr inbounds [30 x i8]* %out_real_format, i64 0, i64 0
  %25 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %24, i32 0, i64 30, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i8* %2) #7
  %26 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %._crit_edge444, label %28

._crit_edge444:                                   ; preds = %14
  %.pre445 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %.pre446 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  br label %39

; <label>:28                                      ; preds = %14
  %29 = getelementptr inbounds [30 x i8]* %time_fmt_string, i64 0, i64 0
  %30 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %29, i32 0, i64 30, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0), i8* %2) #7
  %31 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %32 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %33 = load double* %32, align 8, !tbaa !15
  %34 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %31, i32 0, i64 30, i8* %29, double %33) #7
  %35 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  %36 = load double* %32, align 8, !tbaa !15
  %37 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %35, i32 0, i64 30, i8* %29, double %36) #7
  %38 = call i64 @strlen(i8* %31) #7
  %phitmp = shl i64 %38, 32
  %phitmp395 = ashr exact i64 %phitmp, 32
  br label %39

; <label>:39                                      ; preds = %._crit_edge444, %28
  %.pre-phi447 = phi i8* [ %.pre446, %._crit_edge444 ], [ %35, %28 ]
  %.pre-phi = phi i8* [ %.pre445, %._crit_edge444 ], [ %31, %28 ]
  %dir.0 = phi i64 [ 0, %._crit_edge444 ], [ %phitmp395, %28 ]
  %40 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 %dir.0
  %41 = call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false)
  %42 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %40, i32 0, i64 %41, i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* %2, i8* %2) #7
  %43 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 %dir.0
  %44 = call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false)
  %45 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %43, i32 0, i64 %44, i8* getelementptr inbounds ([17 x i8]* @.str12, i64 0, i64 0), i8* %2, i8* %2, i8* %2) #7
  %46 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0
  %47 = load i32* %46, align 4, !tbaa !17
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %.critedge.thread

; <label>:49                                      ; preds = %39
  %50 = getelementptr inbounds [20 x i8]* %coord_system, i64 0, i64 0
  %51 = load i32* %16, align 4, !tbaa !13
  %52 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %50, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i32 %51) #7
  %53 = load i32* %16, align 4, !tbaa !13
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %.lr.ph393, label %.critedge.thread

.lr.ph393:                                        ; preds = %49, %.lr.ph393
  %indvars.iv442 = phi i64 [ %indvars.iv.next443, %.lr.ph393 ], [ 0, %49 ]
  %have_coords.0390 = phi i32 [ %60, %.lr.ph393 ], [ 1, %49 ]
  %55 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %indvars.iv442
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1
  %56 = trunc i64 %indvars.iv.next443 to i32
  %57 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %55, double* %dummy, i32 %56, i8* null, i8* %50) #7
  %58 = call i32 @CCTK_CoordIndex(i32 %56, i8* null, i8* %50) #7
  %59 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %indvars.iv442
  store i32 %58, i32* %59, align 4, !tbaa !18
  %.lobit = lshr i32 %58, 31
  %.lobit.not = xor i32 %.lobit, 1
  %60 = and i32 %.lobit.not, %have_coords.0390
  %61 = load i32* %16, align 4, !tbaa !13
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %indvars.iv.next443, %62
  %64 = icmp slt i64 %indvars.iv.next443, 3
  %or.cond = and i1 %64, %63
  br i1 %or.cond, label %.lr.ph393, label %.critedge

.critedge:                                        ; preds = %.lr.ph393
  %65 = icmp eq i32 %60, 0
  br i1 %65, label %66, label %.critedge.thread

; <label>:66                                      ; preds = %.critedge
  %67 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 208, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str14, i64 0, i64 0), i8* %50) #7
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %49, %39, %.critedge, %66
  %have_coords.1 = phi i32 [ %60, %.critedge ], [ 0, %66 ], [ 0, %39 ], [ 1, %49 ]
  %68 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !19
  %69 = call i32 %68(%struct.cGH* %GH) #7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %256

; <label>:71                                      ; preds = %.critedge.thread
  %72 = getelementptr inbounds i8* %15, i64 96
  %73 = bitcast i8* %72 to %struct.PNamedData**
  %74 = load %struct.PNamedData** %73, align 8, !tbaa !20
  %75 = call i8* @GetNamedData(%struct.PNamedData* %74, i8* %alias) #7
  %76 = bitcast i8* %75 to %struct.__sFILE**
  %77 = icmp eq i8* %75, null
  br i1 %77, label %78, label %256

; <label>:78                                      ; preds = %71
  %79 = call i8* @malloc(i64 24) #7
  %80 = bitcast i8* %79 to %struct.__sFILE**
  %81 = getelementptr inbounds i8* %15, i64 48
  %82 = bitcast i8* %81 to i8**
  %83 = load i8** %82, align 8, !tbaa !22
  %84 = call i64 @strlen(i8* %83) #7
  %85 = call i64 @strlen(i8* %alias) #7
  %86 = add i64 %84, 40
  %87 = add i64 %86, %85
  %88 = call i8* @malloc(i64 %87) #7
  %89 = call i8* @CCTK_FullName(i32 %vindex) #7
  %90 = icmp ne i32 %3, 0
  %91 = getelementptr inbounds [20 x i8]* %slicename, i64 0, i64 0
  %92 = call i64 @llvm.objectsize.i64.p0i8(i8* %88, i1 false)
  %93 = getelementptr inbounds i8* %15, i64 120
  %94 = bitcast i8* %93 to i32***
  %95 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3
  %96 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0
  %97 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1
  %98 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4
  %99 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2
  %100 = icmp eq i32 %have_coords.1, 0
  %101 = add nuw nsw i32 %19, 119
  %102 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %103 = zext i32 %19 to i64
  %104 = zext i32 %101 to i64
  br label %105

; <label>:105                                     ; preds = %78, %251
  %indvars.iv440 = phi i64 [ 0, %78 ], [ %indvars.iv.next441, %251 ]
  %dir.2387 = phi i32 [ 0, %78 ], [ %252, %251 ]
  br i1 %90, label %106, label %129

; <label>:106                                     ; preds = %105
  %107 = load i32* %16, align 4, !tbaa !13
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %110

; <label>:109                                     ; preds = %106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0), i64 3, i32 1, i1 false)
  br label %121

; <label>:110                                     ; preds = %106
  %111 = getelementptr inbounds [3 x i8*]* @IOASCII_Write2D.extensions, i64 0, i64 %indvars.iv440
  %112 = load i8** %111, align 8, !tbaa !19
  %113 = add nsw i32 %107, -1
  %114 = sext i32 %113 to i64
  %115 = load i32*** %94, align 8, !tbaa !23
  %116 = getelementptr inbounds i32** %115, i64 %114
  %117 = load i32** %116, align 8, !tbaa !19
  %118 = getelementptr inbounds i32* %117, i64 %indvars.iv440
  %119 = load i32* %118, align 4, !tbaa !18
  %120 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %91, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i8* %112, i32 %119) #7
  br label %121

; <label>:121                                     ; preds = %110, %109
  %122 = load i8** %82, align 8, !tbaa !22
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0)) #7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

; <label>:125                                     ; preds = %121
  %126 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([13 x i8]* @.str18, i64 0, i64 0), i8* %122, i8* %alias, i8* %91) #7
  br label %149

; <label>:127                                     ; preds = %121
  %128 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i8* %alias, i8* %91) #7
  br label %149

; <label>:129                                     ; preds = %105
  %130 = load i8** %82, align 8, !tbaa !22
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0)) #7
  %132 = icmp eq i32 %131, 0
  %133 = load i32* %16, align 4, !tbaa !13
  %134 = icmp eq i32 %133, 2
  br i1 %132, label %142, label %135

; <label>:135                                     ; preds = %129
  br i1 %134, label %136, label %138

; <label>:136                                     ; preds = %135
  %137 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0), i8* %130, i8* %alias) #7
  br label %149

; <label>:138                                     ; preds = %135
  %139 = getelementptr inbounds [3 x i8*]* @IOASCII_Write2D.extensions, i64 0, i64 %indvars.iv440
  %140 = load i8** %139, align 8, !tbaa !19
  %141 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([20 x i8]* @.str21, i64 0, i64 0), i8* %130, i8* %alias, i8* %140) #7
  br label %149

; <label>:142                                     ; preds = %129
  br i1 %134, label %143, label %145

; <label>:143                                     ; preds = %142
  %144 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([14 x i8]* @.str22, i64 0, i64 0), i8* %alias) #7
  br label %149

; <label>:145                                     ; preds = %142
  %146 = getelementptr inbounds [3 x i8*]* @IOASCII_Write2D.extensions, i64 0, i64 %indvars.iv440
  %147 = load i8** %146, align 8, !tbaa !19
  %148 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %88, i32 0, i64 %92, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), i8* %alias, i8* %147) #7
  br label %149

; <label>:149                                     ; preds = %138, %136, %145, %143, %125, %127
  %150 = getelementptr inbounds %struct.__sFILE** %80, i64 %indvars.iv440
  store %struct.__sFILE* null, %struct.__sFILE** %150, align 8, !tbaa !19
  %151 = call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %thread-pre-split, label %153

; <label>:153                                     ; preds = %149
  %154 = call %struct.__sFILE* @"\01_fopen"(i8* %88, i8* getelementptr inbounds ([2 x i8]* @.str24, i64 0, i64 0)) #7
  store %struct.__sFILE* %154, %struct.__sFILE** %150, align 8, !tbaa !19
  br label %155

thread-pre-split:                                 ; preds = %149
  %.pr = load %struct.__sFILE** %150, align 8, !tbaa !19
  br label %155

; <label>:155                                     ; preds = %thread-pre-split, %153
  %.pr132 = phi %struct.__sFILE* [ %.pr, %thread-pre-split ], [ %154, %153 ]
  %156 = icmp eq %struct.__sFILE* %.pr132, null
  br i1 %156, label %thread-pre-split131, label %thread-pre-split131.thread

thread-pre-split131:                              ; preds = %155
  %157 = call %struct.__sFILE* @"\01_fopen"(i8* %88, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)) #7
  store %struct.__sFILE* %157, %struct.__sFILE** %150, align 8, !tbaa !19
  %158 = icmp eq %struct.__sFILE* %157, null
  br i1 %158, label %159, label %thread-pre-split131.thread

; <label>:159                                     ; preds = %thread-pre-split131
  %160 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 307, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i8* %88) #7
  br label %.loopexit176

thread-pre-split131.thread:                       ; preds = %155, %thread-pre-split131
  br i1 %90, label %164, label %161

; <label>:161                                     ; preds = %thread-pre-split131.thread
  %162 = getelementptr inbounds [3 x i8*]* @IOASCII_Write2D.extensions, i64 0, i64 %indvars.iv440
  %163 = load i8** %162, align 8, !tbaa !19
  br label %164

; <label>:164                                     ; preds = %thread-pre-split131.thread, %161
  %165 = phi i8* [ %163, %161 ], [ %91, %thread-pre-split131.thread ]
  store i8* %165, i8** %95, align 8, !tbaa !24
  store i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8** %96, align 8, !tbaa !26
  store i8* %89, i8** %97, align 8, !tbaa !27
  store i8* getelementptr inbounds ([28 x i8]* @.str27, i64 0, i64 0), i8** %98, align 8, !tbaa !28
  store i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8** %99, align 8, !tbaa !29
  %166 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %88, %struct.ioAdvertisedFileDesc* %advertised_file) #7
  %167 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0)) #7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

; <label>:169                                     ; preds = %164
  %170 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0)) #7
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

; <label>:172                                     ; preds = %169, %164
  store i8 0, i8* %6, align 16, !tbaa !30
  %173 = call i32 @CCTK_ParameterFilename(i32 128, i8* %6) #7
  %174 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %175 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %174, i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i8* %6) #7
  br label %176

; <label>:176                                     ; preds = %169, %172
  %177 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #7
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

; <label>:179                                     ; preds = %176
  %180 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0)) #7
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %189, label %182

; <label>:182                                     ; preds = %179, %176
  store i8 0, i8* %6, align 16, !tbaa !30
  %183 = call i32 @Util_CurrentDate(i32 128, i8* %6) #7
  %184 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %185 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %184, i8* getelementptr inbounds ([13 x i8]* @.str33, i64 0, i64 0), i8* %6) #7
  %186 = call i32 @Util_CurrentTime(i32 128, i8* %6) #7
  %187 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %188 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), i8* %6) #7
  br label %189

; <label>:189                                     ; preds = %179, %182
  %190 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([12 x i8]* @.str35, i64 0, i64 0)) #7
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %195

; <label>:192                                     ; preds = %189
  %193 = call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str30, i64 0, i64 0)) #7
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %251, label %195

; <label>:195                                     ; preds = %192, %189
  %196 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %197 = getelementptr inbounds [3 x i8*]* @IOASCII_Write2D.extensions, i64 0, i64 %indvars.iv440
  %198 = load i8** %197, align 8, !tbaa !19
  %199 = load i8* %198, align 1, !tbaa !30
  %200 = sext i8 %199 to i32
  %201 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %196, i8* getelementptr inbounds ([13 x i8]* @.str36, i64 0, i64 0), i32 %200) #7
  %202 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %203 = getelementptr inbounds i8* %198, i64 1
  %204 = load i8* %203, align 1, !tbaa !30
  %205 = sext i8 %204 to i32
  %206 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %202, i8* getelementptr inbounds ([13 x i8]* @.str37, i64 0, i64 0), i32 %205) #7
  %207 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %208 = load i8** %97, align 8, !tbaa !27
  %209 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %207, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0), i8* %208) #7
  %210 = load i32* %16, align 4, !tbaa !13
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %248, label %212

; <label>:212                                     ; preds = %195
  br i1 %100, label %235, label %213

; <label>:213                                     ; preds = %212
  %214 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %215 = sub nsw i64 %103, %indvars.iv440
  %216 = sub nsw i32 %19, %dir.2387
  %217 = add nsw i64 %215, -1
  %218 = add nsw i32 %216, 119
  %219 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %217
  %220 = load double* %219, align 8, !tbaa !31
  %221 = load double** %102, align 8, !tbaa !32
  %222 = getelementptr inbounds double* %221, i64 %217
  %223 = load double* %222, align 8, !tbaa !31
  %224 = add nsw i32 %210, -1
  %225 = sext i32 %224 to i64
  %226 = load i32*** %94, align 8, !tbaa !23
  %227 = getelementptr inbounds i32** %226, i64 %225
  %228 = load i32** %227, align 8, !tbaa !19
  %229 = getelementptr inbounds i32* %228, i64 %indvars.iv440
  %230 = load i32* %229, align 4, !tbaa !18
  %231 = sitofp i32 %230 to double
  %232 = fmul double %223, %231
  %233 = fadd double %220, %232
  %234 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %214, i8* %22, i32 %218, double %233) #7
  %.pre = load i32* %16, align 4, !tbaa !13
  br label %235

; <label>:235                                     ; preds = %212, %213
  %236 = phi i32 [ %210, %212 ], [ %.pre, %213 ]
  %237 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %238 = sub i64 %104, %indvars.iv440
  %239 = add nsw i32 %236, -1
  %240 = sext i32 %239 to i64
  %241 = load i32*** %94, align 8, !tbaa !23
  %242 = getelementptr inbounds i32** %241, i64 %240
  %243 = load i32** %242, align 8, !tbaa !19
  %244 = getelementptr inbounds i32* %243, i64 %indvars.iv440
  %245 = load i32* %244, align 4, !tbaa !18
  %246 = trunc i64 %238 to i32
  %247 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %237, i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0), i32 %246, i32 %245) #7
  br label %248

; <label>:248                                     ; preds = %195, %235
  %249 = load %struct.__sFILE** %150, align 8, !tbaa !19
  %250 = call i32 @fputc(i32 10, %struct.__sFILE* %249) #7
  br label %251

; <label>:251                                     ; preds = %192, %248
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1
  %252 = add nuw nsw i32 %dir.2387, 1
  %253 = icmp sgt i64 %103, %indvars.iv.next441
  br i1 %253, label %105, label %254

; <label>:254                                     ; preds = %251
  %255 = call i32 @StoreNamedData(%struct.PNamedData** %73, i8* %alias, i8* %79) #7
  call void @free(i8* %88) #8
  call void @free(i8* %89) #8
  br label %256

; <label>:256                                     ; preds = %71, %254, %.critedge.thread
  %fdset_2D.0 = phi %struct.__sFILE** [ %80, %254 ], [ %76, %71 ], [ null, %.critedge.thread ]
  %257 = getelementptr inbounds [3 x i32]* %origin, i64 0, i64 0
  %258 = bitcast [3 x i32]* %origin to i8*
  %259 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %260 = getelementptr inbounds i8* %15, i64 120
  %261 = bitcast i8* %260 to i32***
  %262 = add nsw i32 %19, -1
  %263 = bitcast [3 x i32]* %directions to i8*
  %264 = icmp ne i32 %have_coords.1, 0
  %265 = getelementptr inbounds [3 x i32]* %directions, i64 0, i64 0
  %266 = bitcast double** %coord_data_i to i8**
  %267 = getelementptr inbounds [2 x i32]* %hsize, i64 0, i64 0
  %268 = bitcast double** %coord_data_j to i8**
  %269 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 3
  %270 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %271 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %272 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 1
  %273 = getelementptr inbounds [2 x i32]* %hsize, i64 0, i64 1
  %274 = bitcast i8** %data to i32**
  %275 = bitcast i8** %data to double**
  %276 = bitcast i8** %data to i16**
  %277 = bitcast i8** %data to i64**
  %278 = bitcast i8** %data to float**
  %279 = bitcast i8** %data to x86_fp80**
  %280 = zext i32 %19 to i64
  br label %281

; <label>:281                                     ; preds = %256, %956
  %indvars.iv = phi i64 [ 0, %256 ], [ %indvars.iv.next, %956 ]
  %dir.3386 = phi i32 [ 0, %256 ], [ %957, %956 ]
  %282 = trunc i64 %indvars.iv to i32
  switch i32 %282, label %284 [
    i32 0, label %285
    i32 1, label %283
  ]

; <label>:283                                     ; preds = %281
  br label %285

; <label>:284                                     ; preds = %281
  br label %285

; <label>:285                                     ; preds = %281, %283, %284
  %dir_i.0 = phi i32 [ 0, %283 ], [ 1, %284 ], [ 0, %281 ]
  %dir_j.0 = phi i32 [ 2, %283 ], [ 2, %284 ], [ 1, %281 ]
  %286 = load i32* %259, align 4, !tbaa !33
  %287 = sext i32 %286 to i64
  %288 = shl nsw i64 %287, 2
  %289 = call i8* @__memset_chk(i8* %258, i32 0, i64 %288, i64 12) #7
  %290 = load i32* %16, align 4, !tbaa !13
  %291 = add nsw i32 %290, -1
  %292 = sext i32 %291 to i64
  %293 = load i32*** %261, align 8, !tbaa !23
  %294 = getelementptr inbounds i32** %293, i64 %292
  %295 = load i32** %294, align 8, !tbaa !19
  %296 = getelementptr inbounds i32* %295, i64 %indvars.iv
  %297 = load i32* %296, align 4, !tbaa !18
  %298 = sub i32 %262, %dir.3386
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [3 x i32]* %origin, i64 0, i64 %299
  store i32 %297, i32* %300, align 4, !tbaa !18
  call void @llvm.memset.p0i8.i64(i8* %263, i8 0, i64 12, i32 4, i1 false)
  %301 = getelementptr inbounds [3 x i32]* %directions, i64 0, i64 %299
  store i32 1, i32* %301, align 4, !tbaa !18
  br i1 %264, label %302, label %321

; <label>:302                                     ; preds = %285
  %303 = zext i32 %dir_i.0 to i64
  %304 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %303
  %305 = load i32* %304, align 4, !tbaa !18
  %306 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %305, i32 0, i32 2, i32* %257, i32* %265, i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.downsamples, i64 0, i64 0), i8** %266, i32* %267) #7
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %311

; <label>:308                                     ; preds = %302
  %309 = or i32 %dir_i.0, 120
  %310 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 410, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str40, i64 0, i64 0), i32 %309) #7
  br label %.loopexit176

; <label>:311                                     ; preds = %302
  %312 = zext i32 %dir_j.0 to i64
  %313 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %312
  %314 = load i32* %313, align 4, !tbaa !18
  %315 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %314, i32 0, i32 2, i32* %257, i32* %265, i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.downsamples, i64 0, i64 0), i8** %268, i32* %267) #7
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %322

; <label>:317                                     ; preds = %311
  %318 = or i32 %dir_j.0, 120
  %319 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 421, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str40, i64 0, i64 0), i32 %318) #7
  %320 = load i8** %266, align 8, !tbaa !19
  call void @free(i8* %320) #8
  br label %.loopexit176

; <label>:321                                     ; preds = %285
  store double* null, double** %coord_data_i, align 8, !tbaa !19
  store double* null, double** %coord_data_j, align 8, !tbaa !19
  br label %322

; <label>:322                                     ; preds = %311, %321
  %323 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %vindex, i32 0, i32 2, i32* %257, i32* %265, i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.lengths, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32]* @IOASCII_Write2D.downsamples, i64 0, i64 0), i8** %data, i32* %267) #7
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %337

; <label>:325                                     ; preds = %322
  %326 = call i8* @CCTK_FullName(i32 %vindex) #7
  %327 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 440, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str41, i64 0, i64 0), i8* %326) #7
  call void @free(i8* %326) #8
  %328 = load double** %coord_data_i, align 8, !tbaa !19
  %329 = icmp eq double* %328, null
  br i1 %329, label %332, label %330

; <label>:330                                     ; preds = %325
  %331 = bitcast double* %328 to i8*
  call void @free(i8* %331) #8
  br label %332

; <label>:332                                     ; preds = %325, %330
  %333 = load double** %coord_data_j, align 8, !tbaa !19
  %334 = icmp eq double* %333, null
  br i1 %334, label %.loopexit176, label %335

; <label>:335                                     ; preds = %332
  %336 = bitcast double* %333 to i8*
  call void @free(i8* %336) #8
  br label %.loopexit176

; <label>:337                                     ; preds = %322
  br i1 %70, label %338, label %956

; <label>:338                                     ; preds = %337
  %339 = load i32* %269, align 4, !tbaa !34
  %340 = call i32 @CCTK_StaggerDirIndex(i32 %dir_i.0, i32 %339) #7
  %341 = sitofp i32 %340 to double
  %342 = fmul double %341, 5.000000e-01
  %343 = zext i32 %dir_i.0 to i64
  %344 = load double** %270, align 8, !tbaa !32
  %345 = getelementptr inbounds double* %344, i64 %343
  %346 = load double* %345, align 8, !tbaa !31
  %347 = fmul double %342, %346
  %348 = load i32* %269, align 4, !tbaa !34
  %349 = call i32 @CCTK_StaggerDirIndex(i32 %dir_j.0, i32 %348) #7
  %350 = sitofp i32 %349 to double
  %351 = fmul double %350, 5.000000e-01
  %352 = zext i32 %dir_j.0 to i64
  %353 = load double** %270, align 8, !tbaa !32
  %354 = getelementptr inbounds double* %353, i64 %352
  %355 = load double* %354, align 8, !tbaa !31
  %356 = fmul double %351, %355
  %357 = getelementptr inbounds %struct.__sFILE** %fdset_2D.0, i64 %indvars.iv
  %358 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %359 = load double* %271, align 8, !tbaa !15
  %360 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %358, i8* %20, double %359) #7
  %361 = load i32* %272, align 4, !tbaa !35
  switch i32 %361, label %942 [
    i32 1, label %362
    i32 2, label %418
    i32 6, label %472
    i32 10, label %472
    i32 3, label %546
    i32 4, label %602
    i32 5, label %656
    i32 7, label %712
    i32 11, label %712
    i32 8, label %790
    i32 12, label %790
    i32 9, label %864
    i32 13, label %864
  ]

; <label>:362                                     ; preds = %338
  %363 = load i8** %data, align 8, !tbaa !19
  %364 = load i32* %273, align 4, !tbaa !18
  %365 = icmp sgt i32 %364, 0
  br i1 %264, label %.preheader150, label %.preheader151

.preheader151:                                    ; preds = %362
  br i1 %365, label %.preheader133, label %.loopexit

.preheader150:                                    ; preds = %362
  br i1 %365, label %.preheader, label %._crit_edge383

.preheader:                                       ; preds = %.preheader150, %._crit_edge378
  %typed_data.0382 = phi i8* [ %typed_data.1.lcssa, %._crit_edge378 ], [ %363, %.preheader150 ]
  %j.0381 = phi i32 [ %387, %._crit_edge378 ], [ 0, %.preheader150 ]
  %366 = load i32* %267, align 4, !tbaa !18
  %367 = icmp sgt i32 %366, 0
  %368 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %367, label %.lr.ph377, label %._crit_edge378

.lr.ph377:                                        ; preds = %.preheader, %.lr.ph377
  %369 = phi %struct.__sFILE* [ %386, %.lr.ph377 ], [ %368, %.preheader ]
  %typed_data.1376 = phi i8* [ %378, %.lr.ph377 ], [ %typed_data.0382, %.preheader ]
  %i.0375 = phi i32 [ %383, %.lr.ph377 ], [ 0, %.preheader ]
  %370 = load double** %coord_data_i, align 8, !tbaa !19
  %371 = getelementptr inbounds double* %370, i64 1
  store double* %371, double** %coord_data_i, align 8, !tbaa !19
  %372 = load double* %370, align 8, !tbaa !31
  %373 = fadd double %347, %372
  %374 = load double** %coord_data_j, align 8, !tbaa !19
  %375 = getelementptr inbounds double* %374, i64 1
  store double* %375, double** %coord_data_j, align 8, !tbaa !19
  %376 = load double* %374, align 8, !tbaa !31
  %377 = fadd double %356, %376
  %378 = getelementptr inbounds i8* %typed_data.1376, i64 1
  %379 = load i8* %typed_data.1376, align 1, !tbaa !30
  %380 = zext i8 %379 to i32
  %381 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %369, i8* %.pre-phi, double %373, double %377, i32 %380) #7
  %382 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc130 = call i32 @fputc(i32 10, %struct.__sFILE* %382) #2
  %383 = add nuw nsw i32 %i.0375, 1
  %384 = load i32* %267, align 4, !tbaa !18
  %385 = icmp slt i32 %383, %384
  %386 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %385, label %.lr.ph377, label %._crit_edge378

._crit_edge378:                                   ; preds = %.lr.ph377, %.preheader
  %.lcssa209 = phi %struct.__sFILE* [ %368, %.preheader ], [ %386, %.lr.ph377 ]
  %typed_data.1.lcssa = phi i8* [ %typed_data.0382, %.preheader ], [ %378, %.lr.ph377 ]
  %fputc127 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa209) #2
  %387 = add nuw nsw i32 %j.0381, 1
  %388 = load i32* %273, align 4, !tbaa !18
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %.preheader, label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge378, %.preheader150
  %390 = phi i32 [ %364, %.preheader150 ], [ %388, %._crit_edge378 ]
  %391 = load i32* %267, align 4, !tbaa !18
  %392 = mul nsw i32 %391, %390
  %393 = load double** %coord_data_i, align 8, !tbaa !19
  %394 = sext i32 %392 to i64
  %395 = sub nsw i64 0, %394
  %396 = getelementptr inbounds double* %393, i64 %395
  store double* %396, double** %coord_data_i, align 8, !tbaa !19
  %397 = load double** %coord_data_j, align 8, !tbaa !19
  %398 = getelementptr inbounds double* %397, i64 %395
  store double* %398, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader133:                                    ; preds = %.preheader151, %._crit_edge370
  %typed_data.2374 = phi i8* [ %typed_data.3.lcssa, %._crit_edge370 ], [ %363, %.preheader151 ]
  %j.1373 = phi i32 [ %415, %._crit_edge370 ], [ 0, %.preheader151 ]
  %399 = load i32* %267, align 4, !tbaa !18
  %400 = icmp sgt i32 %399, 0
  %401 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %400, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %.preheader133
  %402 = sitofp i32 %j.1373 to double
  br label %403

; <label>:403                                     ; preds = %.lr.ph369, %403
  %404 = phi %struct.__sFILE* [ %401, %.lr.ph369 ], [ %414, %403 ]
  %typed_data.3368 = phi i8* [ %typed_data.2374, %.lr.ph369 ], [ %406, %403 ]
  %i.1367 = phi i32 [ 0, %.lr.ph369 ], [ %411, %403 ]
  %405 = sitofp i32 %i.1367 to double
  %406 = getelementptr inbounds i8* %typed_data.3368, i64 1
  %407 = load i8* %typed_data.3368, align 1, !tbaa !30
  %408 = zext i8 %407 to i32
  %409 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %404, i8* %.pre-phi, double %405, double %402, i32 %408) #7
  %410 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc124 = call i32 @fputc(i32 10, %struct.__sFILE* %410) #2
  %411 = add nuw nsw i32 %i.1367, 1
  %412 = load i32* %267, align 4, !tbaa !18
  %413 = icmp slt i32 %411, %412
  %414 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %413, label %403, label %._crit_edge370

._crit_edge370:                                   ; preds = %403, %.preheader133
  %.lcssa208 = phi %struct.__sFILE* [ %401, %.preheader133 ], [ %414, %403 ]
  %typed_data.3.lcssa = phi i8* [ %typed_data.2374, %.preheader133 ], [ %406, %403 ]
  %fputc121 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa208) #2
  %415 = add nuw nsw i32 %j.1373, 1
  %416 = load i32* %273, align 4, !tbaa !18
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %.preheader133, label %.loopexit

; <label>:418                                     ; preds = %338
  %419 = load i32** %274, align 8, !tbaa !19
  %420 = load i32* %273, align 4, !tbaa !18
  %421 = icmp sgt i32 %420, 0
  br i1 %264, label %.preheader152, label %.preheader153

.preheader153:                                    ; preds = %418
  br i1 %421, label %.preheader135, label %.loopexit

.preheader152:                                    ; preds = %418
  br i1 %421, label %.preheader134, label %._crit_edge364

.preheader134:                                    ; preds = %.preheader152, %._crit_edge359
  %typed_data3.0363 = phi i32* [ %typed_data3.1.lcssa, %._crit_edge359 ], [ %419, %.preheader152 ]
  %j2.0362 = phi i32 [ %442, %._crit_edge359 ], [ 0, %.preheader152 ]
  %422 = load i32* %267, align 4, !tbaa !18
  %423 = icmp sgt i32 %422, 0
  %424 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %423, label %.lr.ph358, label %._crit_edge359

.lr.ph358:                                        ; preds = %.preheader134, %.lr.ph358
  %425 = phi %struct.__sFILE* [ %441, %.lr.ph358 ], [ %424, %.preheader134 ]
  %typed_data3.1357 = phi i32* [ %434, %.lr.ph358 ], [ %typed_data3.0363, %.preheader134 ]
  %i1.0356 = phi i32 [ %438, %.lr.ph358 ], [ 0, %.preheader134 ]
  %426 = load double** %coord_data_i, align 8, !tbaa !19
  %427 = getelementptr inbounds double* %426, i64 1
  store double* %427, double** %coord_data_i, align 8, !tbaa !19
  %428 = load double* %426, align 8, !tbaa !31
  %429 = fadd double %347, %428
  %430 = load double** %coord_data_j, align 8, !tbaa !19
  %431 = getelementptr inbounds double* %430, i64 1
  store double* %431, double** %coord_data_j, align 8, !tbaa !19
  %432 = load double* %430, align 8, !tbaa !31
  %433 = fadd double %356, %432
  %434 = getelementptr inbounds i32* %typed_data3.1357, i64 1
  %435 = load i32* %typed_data3.1357, align 4, !tbaa !18
  %436 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %425, i8* %.pre-phi, double %429, double %433, i32 %435) #7
  %437 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc118 = call i32 @fputc(i32 10, %struct.__sFILE* %437) #2
  %438 = add nuw nsw i32 %i1.0356, 1
  %439 = load i32* %267, align 4, !tbaa !18
  %440 = icmp slt i32 %438, %439
  %441 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %440, label %.lr.ph358, label %._crit_edge359

._crit_edge359:                                   ; preds = %.lr.ph358, %.preheader134
  %.lcssa205 = phi %struct.__sFILE* [ %424, %.preheader134 ], [ %441, %.lr.ph358 ]
  %typed_data3.1.lcssa = phi i32* [ %typed_data3.0363, %.preheader134 ], [ %434, %.lr.ph358 ]
  %fputc115 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa205) #2
  %442 = add nuw nsw i32 %j2.0362, 1
  %443 = load i32* %273, align 4, !tbaa !18
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %.preheader134, label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge359, %.preheader152
  %445 = phi i32 [ %420, %.preheader152 ], [ %443, %._crit_edge359 ]
  %446 = load i32* %267, align 4, !tbaa !18
  %447 = mul nsw i32 %446, %445
  %448 = load double** %coord_data_i, align 8, !tbaa !19
  %449 = sext i32 %447 to i64
  %450 = sub nsw i64 0, %449
  %451 = getelementptr inbounds double* %448, i64 %450
  store double* %451, double** %coord_data_i, align 8, !tbaa !19
  %452 = load double** %coord_data_j, align 8, !tbaa !19
  %453 = getelementptr inbounds double* %452, i64 %450
  store double* %453, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader135:                                    ; preds = %.preheader153, %._crit_edge351
  %typed_data3.2355 = phi i32* [ %typed_data3.3.lcssa, %._crit_edge351 ], [ %419, %.preheader153 ]
  %j2.1354 = phi i32 [ %469, %._crit_edge351 ], [ 0, %.preheader153 ]
  %454 = load i32* %267, align 4, !tbaa !18
  %455 = icmp sgt i32 %454, 0
  %456 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %455, label %.lr.ph350, label %._crit_edge351

.lr.ph350:                                        ; preds = %.preheader135
  %457 = sitofp i32 %j2.1354 to double
  br label %458

; <label>:458                                     ; preds = %.lr.ph350, %458
  %459 = phi %struct.__sFILE* [ %456, %.lr.ph350 ], [ %468, %458 ]
  %typed_data3.3349 = phi i32* [ %typed_data3.2355, %.lr.ph350 ], [ %461, %458 ]
  %i1.1348 = phi i32 [ 0, %.lr.ph350 ], [ %465, %458 ]
  %460 = sitofp i32 %i1.1348 to double
  %461 = getelementptr inbounds i32* %typed_data3.3349, i64 1
  %462 = load i32* %typed_data3.3349, align 4, !tbaa !18
  %463 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %459, i8* %.pre-phi, double %460, double %457, i32 %462) #7
  %464 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc112 = call i32 @fputc(i32 10, %struct.__sFILE* %464) #2
  %465 = add nuw nsw i32 %i1.1348, 1
  %466 = load i32* %267, align 4, !tbaa !18
  %467 = icmp slt i32 %465, %466
  %468 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %467, label %458, label %._crit_edge351

._crit_edge351:                                   ; preds = %458, %.preheader135
  %.lcssa204 = phi %struct.__sFILE* [ %456, %.preheader135 ], [ %468, %458 ]
  %typed_data3.3.lcssa = phi i32* [ %typed_data3.2355, %.preheader135 ], [ %461, %458 ]
  %fputc109 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa204) #2
  %469 = add nuw nsw i32 %j2.1354, 1
  %470 = load i32* %273, align 4, !tbaa !18
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %.preheader135, label %.loopexit

; <label>:472                                     ; preds = %338, %338
  %473 = load double** %275, align 8, !tbaa !19
  %474 = load i32* %273, align 4, !tbaa !18
  %475 = icmp sgt i32 %474, 0
  br i1 %264, label %.preheader155, label %.preheader156

.preheader156:                                    ; preds = %472
  br i1 %475, label %.preheader137, label %.loopexit

.preheader155:                                    ; preds = %472
  br i1 %475, label %.preheader136, label %._crit_edge345

.preheader136:                                    ; preds = %.preheader155, %._crit_edge340
  %typed_data6.0344 = phi double* [ %typed_data6.1.lcssa, %._crit_edge340 ], [ %473, %.preheader155 ]
  %j5.0343 = phi i32 [ %506, %._crit_edge340 ], [ 0, %.preheader155 ]
  %476 = load i32* %267, align 4, !tbaa !18
  %477 = icmp sgt i32 %476, 0
  %478 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %477, label %.lr.ph339, label %._crit_edge340

.lr.ph339:                                        ; preds = %.preheader136, %500
  %479 = phi %struct.__sFILE* [ %505, %500 ], [ %478, %.preheader136 ]
  %typed_data6.1338 = phi double* [ %typed_data6.2, %500 ], [ %typed_data6.0344, %.preheader136 ]
  %i4.0337 = phi i32 [ %502, %500 ], [ 0, %.preheader136 ]
  %480 = load double** %coord_data_i, align 8, !tbaa !19
  %481 = getelementptr inbounds double* %480, i64 1
  store double* %481, double** %coord_data_i, align 8, !tbaa !19
  %482 = load double* %480, align 8, !tbaa !31
  %483 = fadd double %347, %482
  %484 = load double** %coord_data_j, align 8, !tbaa !19
  %485 = getelementptr inbounds double* %484, i64 1
  store double* %485, double** %coord_data_j, align 8, !tbaa !19
  %486 = load double* %484, align 8, !tbaa !31
  %487 = fadd double %356, %486
  %488 = getelementptr inbounds double* %typed_data6.1338, i64 1
  %489 = load double* %typed_data6.1338, align 8, !tbaa !31
  %490 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %479, i8* %.pre-phi447, double %483, double %487, double %489) #7
  %491 = load i32* %272, align 4, !tbaa !35
  %492 = icmp eq i32 %491, 10
  br i1 %492, label %493, label %500

; <label>:493                                     ; preds = %.lr.ph339
  %494 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %495 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %494)
  %496 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %497 = getelementptr inbounds double* %typed_data6.1338, i64 2
  %498 = load double* %488, align 8, !tbaa !31
  %499 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %496, i8* %24, double %498) #7
  br label %500

; <label>:500                                     ; preds = %493, %.lr.ph339
  %typed_data6.2 = phi double* [ %497, %493 ], [ %488, %.lr.ph339 ]
  %501 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc106 = call i32 @fputc(i32 10, %struct.__sFILE* %501) #2
  %502 = add nuw nsw i32 %i4.0337, 1
  %503 = load i32* %267, align 4, !tbaa !18
  %504 = icmp slt i32 %502, %503
  %505 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %504, label %.lr.ph339, label %._crit_edge340

._crit_edge340:                                   ; preds = %500, %.preheader136
  %.lcssa201 = phi %struct.__sFILE* [ %478, %.preheader136 ], [ %505, %500 ]
  %typed_data6.1.lcssa = phi double* [ %typed_data6.0344, %.preheader136 ], [ %typed_data6.2, %500 ]
  %fputc103 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa201) #2
  %506 = add nuw nsw i32 %j5.0343, 1
  %507 = load i32* %273, align 4, !tbaa !18
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %.preheader136, label %._crit_edge345

._crit_edge345:                                   ; preds = %._crit_edge340, %.preheader155
  %509 = phi i32 [ %474, %.preheader155 ], [ %507, %._crit_edge340 ]
  %510 = load i32* %267, align 4, !tbaa !18
  %511 = mul nsw i32 %510, %509
  %512 = load double** %coord_data_i, align 8, !tbaa !19
  %513 = sext i32 %511 to i64
  %514 = sub nsw i64 0, %513
  %515 = getelementptr inbounds double* %512, i64 %514
  store double* %515, double** %coord_data_i, align 8, !tbaa !19
  %516 = load double** %coord_data_j, align 8, !tbaa !19
  %517 = getelementptr inbounds double* %516, i64 %514
  store double* %517, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader137:                                    ; preds = %.preheader156, %._crit_edge332
  %typed_data6.3336 = phi double* [ %typed_data6.4.lcssa, %._crit_edge332 ], [ %473, %.preheader156 ]
  %j5.1335 = phi i32 [ %543, %._crit_edge332 ], [ 0, %.preheader156 ]
  %518 = load i32* %267, align 4, !tbaa !18
  %519 = icmp sgt i32 %518, 0
  %520 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %519, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %.preheader137
  %521 = sitofp i32 %j5.1335 to double
  br label %522

; <label>:522                                     ; preds = %.lr.ph331, %537
  %523 = phi %struct.__sFILE* [ %520, %.lr.ph331 ], [ %542, %537 ]
  %typed_data6.4330 = phi double* [ %typed_data6.3336, %.lr.ph331 ], [ %typed_data6.5, %537 ]
  %i4.1329 = phi i32 [ 0, %.lr.ph331 ], [ %539, %537 ]
  %524 = sitofp i32 %i4.1329 to double
  %525 = getelementptr inbounds double* %typed_data6.4330, i64 1
  %526 = load double* %typed_data6.4330, align 8, !tbaa !31
  %527 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %523, i8* %.pre-phi447, double %524, double %521, double %526) #7
  %528 = load i32* %272, align 4, !tbaa !35
  %529 = icmp eq i32 %528, 10
  br i1 %529, label %530, label %537

; <label>:530                                     ; preds = %522
  %531 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %532 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %531)
  %533 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %534 = getelementptr inbounds double* %typed_data6.4330, i64 2
  %535 = load double* %525, align 8, !tbaa !31
  %536 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %533, i8* %24, double %535) #7
  br label %537

; <label>:537                                     ; preds = %530, %522
  %typed_data6.5 = phi double* [ %534, %530 ], [ %525, %522 ]
  %538 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc100 = call i32 @fputc(i32 10, %struct.__sFILE* %538) #2
  %539 = add nuw nsw i32 %i4.1329, 1
  %540 = load i32* %267, align 4, !tbaa !18
  %541 = icmp slt i32 %539, %540
  %542 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %541, label %522, label %._crit_edge332

._crit_edge332:                                   ; preds = %537, %.preheader137
  %.lcssa200 = phi %struct.__sFILE* [ %520, %.preheader137 ], [ %542, %537 ]
  %typed_data6.4.lcssa = phi double* [ %typed_data6.3336, %.preheader137 ], [ %typed_data6.5, %537 ]
  %fputc97 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa200) #2
  %543 = add nuw nsw i32 %j5.1335, 1
  %544 = load i32* %273, align 4, !tbaa !18
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %.preheader137, label %.loopexit

; <label>:546                                     ; preds = %338
  %547 = load i16** %276, align 8, !tbaa !19
  %548 = load i32* %273, align 4, !tbaa !18
  %549 = icmp sgt i32 %548, 0
  br i1 %264, label %.preheader158, label %.preheader159

.preheader159:                                    ; preds = %546
  br i1 %549, label %.preheader139, label %.loopexit

.preheader158:                                    ; preds = %546
  br i1 %549, label %.preheader138, label %._crit_edge326

.preheader138:                                    ; preds = %.preheader158, %._crit_edge321
  %typed_data9.0325 = phi i16* [ %typed_data9.1.lcssa, %._crit_edge321 ], [ %547, %.preheader158 ]
  %j8.0324 = phi i32 [ %571, %._crit_edge321 ], [ 0, %.preheader158 ]
  %550 = load i32* %267, align 4, !tbaa !18
  %551 = icmp sgt i32 %550, 0
  %552 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %551, label %.lr.ph320, label %._crit_edge321

.lr.ph320:                                        ; preds = %.preheader138, %.lr.ph320
  %553 = phi %struct.__sFILE* [ %570, %.lr.ph320 ], [ %552, %.preheader138 ]
  %typed_data9.1319 = phi i16* [ %562, %.lr.ph320 ], [ %typed_data9.0325, %.preheader138 ]
  %i7.0318 = phi i32 [ %567, %.lr.ph320 ], [ 0, %.preheader138 ]
  %554 = load double** %coord_data_i, align 8, !tbaa !19
  %555 = getelementptr inbounds double* %554, i64 1
  store double* %555, double** %coord_data_i, align 8, !tbaa !19
  %556 = load double* %554, align 8, !tbaa !31
  %557 = fadd double %347, %556
  %558 = load double** %coord_data_j, align 8, !tbaa !19
  %559 = getelementptr inbounds double* %558, i64 1
  store double* %559, double** %coord_data_j, align 8, !tbaa !19
  %560 = load double* %558, align 8, !tbaa !31
  %561 = fadd double %356, %560
  %562 = getelementptr inbounds i16* %typed_data9.1319, i64 1
  %563 = load i16* %typed_data9.1319, align 2, !tbaa !36
  %564 = sext i16 %563 to i32
  %565 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %553, i8* %.pre-phi, double %557, double %561, i32 %564) #7
  %566 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc94 = call i32 @fputc(i32 10, %struct.__sFILE* %566) #2
  %567 = add nuw nsw i32 %i7.0318, 1
  %568 = load i32* %267, align 4, !tbaa !18
  %569 = icmp slt i32 %567, %568
  %570 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %569, label %.lr.ph320, label %._crit_edge321

._crit_edge321:                                   ; preds = %.lr.ph320, %.preheader138
  %.lcssa197 = phi %struct.__sFILE* [ %552, %.preheader138 ], [ %570, %.lr.ph320 ]
  %typed_data9.1.lcssa = phi i16* [ %typed_data9.0325, %.preheader138 ], [ %562, %.lr.ph320 ]
  %fputc91 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa197) #2
  %571 = add nuw nsw i32 %j8.0324, 1
  %572 = load i32* %273, align 4, !tbaa !18
  %573 = icmp slt i32 %571, %572
  br i1 %573, label %.preheader138, label %._crit_edge326

._crit_edge326:                                   ; preds = %._crit_edge321, %.preheader158
  %574 = phi i32 [ %548, %.preheader158 ], [ %572, %._crit_edge321 ]
  %575 = load i32* %267, align 4, !tbaa !18
  %576 = mul nsw i32 %575, %574
  %577 = load double** %coord_data_i, align 8, !tbaa !19
  %578 = sext i32 %576 to i64
  %579 = sub nsw i64 0, %578
  %580 = getelementptr inbounds double* %577, i64 %579
  store double* %580, double** %coord_data_i, align 8, !tbaa !19
  %581 = load double** %coord_data_j, align 8, !tbaa !19
  %582 = getelementptr inbounds double* %581, i64 %579
  store double* %582, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader139:                                    ; preds = %.preheader159, %._crit_edge313
  %typed_data9.2317 = phi i16* [ %typed_data9.3.lcssa, %._crit_edge313 ], [ %547, %.preheader159 ]
  %j8.1316 = phi i32 [ %599, %._crit_edge313 ], [ 0, %.preheader159 ]
  %583 = load i32* %267, align 4, !tbaa !18
  %584 = icmp sgt i32 %583, 0
  %585 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %584, label %.lr.ph312, label %._crit_edge313

.lr.ph312:                                        ; preds = %.preheader139
  %586 = sitofp i32 %j8.1316 to double
  br label %587

; <label>:587                                     ; preds = %.lr.ph312, %587
  %588 = phi %struct.__sFILE* [ %585, %.lr.ph312 ], [ %598, %587 ]
  %typed_data9.3311 = phi i16* [ %typed_data9.2317, %.lr.ph312 ], [ %590, %587 ]
  %i7.1310 = phi i32 [ 0, %.lr.ph312 ], [ %595, %587 ]
  %589 = sitofp i32 %i7.1310 to double
  %590 = getelementptr inbounds i16* %typed_data9.3311, i64 1
  %591 = load i16* %typed_data9.3311, align 2, !tbaa !36
  %592 = sext i16 %591 to i32
  %593 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %588, i8* %.pre-phi, double %589, double %586, i32 %592) #7
  %594 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc88 = call i32 @fputc(i32 10, %struct.__sFILE* %594) #2
  %595 = add nuw nsw i32 %i7.1310, 1
  %596 = load i32* %267, align 4, !tbaa !18
  %597 = icmp slt i32 %595, %596
  %598 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %597, label %587, label %._crit_edge313

._crit_edge313:                                   ; preds = %587, %.preheader139
  %.lcssa196 = phi %struct.__sFILE* [ %585, %.preheader139 ], [ %598, %587 ]
  %typed_data9.3.lcssa = phi i16* [ %typed_data9.2317, %.preheader139 ], [ %590, %587 ]
  %fputc85 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa196) #2
  %599 = add nuw nsw i32 %j8.1316, 1
  %600 = load i32* %273, align 4, !tbaa !18
  %601 = icmp slt i32 %599, %600
  br i1 %601, label %.preheader139, label %.loopexit

; <label>:602                                     ; preds = %338
  %603 = load i32** %274, align 8, !tbaa !19
  %604 = load i32* %273, align 4, !tbaa !18
  %605 = icmp sgt i32 %604, 0
  br i1 %264, label %.preheader161, label %.preheader162

.preheader162:                                    ; preds = %602
  br i1 %605, label %.preheader141, label %.loopexit

.preheader161:                                    ; preds = %602
  br i1 %605, label %.preheader140, label %._crit_edge307

.preheader140:                                    ; preds = %.preheader161, %._crit_edge302
  %typed_data12.0306 = phi i32* [ %typed_data12.1.lcssa, %._crit_edge302 ], [ %603, %.preheader161 ]
  %j11.0305 = phi i32 [ %626, %._crit_edge302 ], [ 0, %.preheader161 ]
  %606 = load i32* %267, align 4, !tbaa !18
  %607 = icmp sgt i32 %606, 0
  %608 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %607, label %.lr.ph301, label %._crit_edge302

.lr.ph301:                                        ; preds = %.preheader140, %.lr.ph301
  %609 = phi %struct.__sFILE* [ %625, %.lr.ph301 ], [ %608, %.preheader140 ]
  %typed_data12.1300 = phi i32* [ %618, %.lr.ph301 ], [ %typed_data12.0306, %.preheader140 ]
  %i10.0299 = phi i32 [ %622, %.lr.ph301 ], [ 0, %.preheader140 ]
  %610 = load double** %coord_data_i, align 8, !tbaa !19
  %611 = getelementptr inbounds double* %610, i64 1
  store double* %611, double** %coord_data_i, align 8, !tbaa !19
  %612 = load double* %610, align 8, !tbaa !31
  %613 = fadd double %347, %612
  %614 = load double** %coord_data_j, align 8, !tbaa !19
  %615 = getelementptr inbounds double* %614, i64 1
  store double* %615, double** %coord_data_j, align 8, !tbaa !19
  %616 = load double* %614, align 8, !tbaa !31
  %617 = fadd double %356, %616
  %618 = getelementptr inbounds i32* %typed_data12.1300, i64 1
  %619 = load i32* %typed_data12.1300, align 4, !tbaa !18
  %620 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %609, i8* %.pre-phi, double %613, double %617, i32 %619) #7
  %621 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc82 = call i32 @fputc(i32 10, %struct.__sFILE* %621) #2
  %622 = add nuw nsw i32 %i10.0299, 1
  %623 = load i32* %267, align 4, !tbaa !18
  %624 = icmp slt i32 %622, %623
  %625 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %624, label %.lr.ph301, label %._crit_edge302

._crit_edge302:                                   ; preds = %.lr.ph301, %.preheader140
  %.lcssa193 = phi %struct.__sFILE* [ %608, %.preheader140 ], [ %625, %.lr.ph301 ]
  %typed_data12.1.lcssa = phi i32* [ %typed_data12.0306, %.preheader140 ], [ %618, %.lr.ph301 ]
  %fputc79 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa193) #2
  %626 = add nuw nsw i32 %j11.0305, 1
  %627 = load i32* %273, align 4, !tbaa !18
  %628 = icmp slt i32 %626, %627
  br i1 %628, label %.preheader140, label %._crit_edge307

._crit_edge307:                                   ; preds = %._crit_edge302, %.preheader161
  %629 = phi i32 [ %604, %.preheader161 ], [ %627, %._crit_edge302 ]
  %630 = load i32* %267, align 4, !tbaa !18
  %631 = mul nsw i32 %630, %629
  %632 = load double** %coord_data_i, align 8, !tbaa !19
  %633 = sext i32 %631 to i64
  %634 = sub nsw i64 0, %633
  %635 = getelementptr inbounds double* %632, i64 %634
  store double* %635, double** %coord_data_i, align 8, !tbaa !19
  %636 = load double** %coord_data_j, align 8, !tbaa !19
  %637 = getelementptr inbounds double* %636, i64 %634
  store double* %637, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader141:                                    ; preds = %.preheader162, %._crit_edge294
  %typed_data12.2298 = phi i32* [ %typed_data12.3.lcssa, %._crit_edge294 ], [ %603, %.preheader162 ]
  %j11.1297 = phi i32 [ %653, %._crit_edge294 ], [ 0, %.preheader162 ]
  %638 = load i32* %267, align 4, !tbaa !18
  %639 = icmp sgt i32 %638, 0
  %640 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %639, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.preheader141
  %641 = sitofp i32 %j11.1297 to double
  br label %642

; <label>:642                                     ; preds = %.lr.ph293, %642
  %643 = phi %struct.__sFILE* [ %640, %.lr.ph293 ], [ %652, %642 ]
  %typed_data12.3292 = phi i32* [ %typed_data12.2298, %.lr.ph293 ], [ %645, %642 ]
  %i10.1291 = phi i32 [ 0, %.lr.ph293 ], [ %649, %642 ]
  %644 = sitofp i32 %i10.1291 to double
  %645 = getelementptr inbounds i32* %typed_data12.3292, i64 1
  %646 = load i32* %typed_data12.3292, align 4, !tbaa !18
  %647 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %643, i8* %.pre-phi, double %644, double %641, i32 %646) #7
  %648 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc76 = call i32 @fputc(i32 10, %struct.__sFILE* %648) #2
  %649 = add nuw nsw i32 %i10.1291, 1
  %650 = load i32* %267, align 4, !tbaa !18
  %651 = icmp slt i32 %649, %650
  %652 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %651, label %642, label %._crit_edge294

._crit_edge294:                                   ; preds = %642, %.preheader141
  %.lcssa192 = phi %struct.__sFILE* [ %640, %.preheader141 ], [ %652, %642 ]
  %typed_data12.3.lcssa = phi i32* [ %typed_data12.2298, %.preheader141 ], [ %645, %642 ]
  %fputc73 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa192) #2
  %653 = add nuw nsw i32 %j11.1297, 1
  %654 = load i32* %273, align 4, !tbaa !18
  %655 = icmp slt i32 %653, %654
  br i1 %655, label %.preheader141, label %.loopexit

; <label>:656                                     ; preds = %338
  %657 = load i64** %277, align 8, !tbaa !19
  %658 = load i32* %273, align 4, !tbaa !18
  %659 = icmp sgt i32 %658, 0
  br i1 %264, label %.preheader164, label %.preheader165

.preheader165:                                    ; preds = %656
  br i1 %659, label %.preheader143, label %.loopexit

.preheader164:                                    ; preds = %656
  br i1 %659, label %.preheader142, label %._crit_edge288

.preheader142:                                    ; preds = %.preheader164, %._crit_edge283
  %typed_data15.0287 = phi i64* [ %typed_data15.1.lcssa, %._crit_edge283 ], [ %657, %.preheader164 ]
  %j14.0286 = phi i32 [ %681, %._crit_edge283 ], [ 0, %.preheader164 ]
  %660 = load i32* %267, align 4, !tbaa !18
  %661 = icmp sgt i32 %660, 0
  %662 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %661, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.preheader142, %.lr.ph282
  %663 = phi %struct.__sFILE* [ %680, %.lr.ph282 ], [ %662, %.preheader142 ]
  %typed_data15.1281 = phi i64* [ %672, %.lr.ph282 ], [ %typed_data15.0287, %.preheader142 ]
  %i13.0280 = phi i32 [ %677, %.lr.ph282 ], [ 0, %.preheader142 ]
  %664 = load double** %coord_data_i, align 8, !tbaa !19
  %665 = getelementptr inbounds double* %664, i64 1
  store double* %665, double** %coord_data_i, align 8, !tbaa !19
  %666 = load double* %664, align 8, !tbaa !31
  %667 = fadd double %347, %666
  %668 = load double** %coord_data_j, align 8, !tbaa !19
  %669 = getelementptr inbounds double* %668, i64 1
  store double* %669, double** %coord_data_j, align 8, !tbaa !19
  %670 = load double* %668, align 8, !tbaa !31
  %671 = fadd double %356, %670
  %672 = getelementptr inbounds i64* %typed_data15.1281, i64 1
  %673 = load i64* %typed_data15.1281, align 8, !tbaa !38
  %674 = trunc i64 %673 to i32
  %675 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %663, i8* %.pre-phi, double %667, double %671, i32 %674) #7
  %676 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc70 = call i32 @fputc(i32 10, %struct.__sFILE* %676) #2
  %677 = add nuw nsw i32 %i13.0280, 1
  %678 = load i32* %267, align 4, !tbaa !18
  %679 = icmp slt i32 %677, %678
  %680 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %679, label %.lr.ph282, label %._crit_edge283

._crit_edge283:                                   ; preds = %.lr.ph282, %.preheader142
  %.lcssa189 = phi %struct.__sFILE* [ %662, %.preheader142 ], [ %680, %.lr.ph282 ]
  %typed_data15.1.lcssa = phi i64* [ %typed_data15.0287, %.preheader142 ], [ %672, %.lr.ph282 ]
  %fputc67 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa189) #2
  %681 = add nuw nsw i32 %j14.0286, 1
  %682 = load i32* %273, align 4, !tbaa !18
  %683 = icmp slt i32 %681, %682
  br i1 %683, label %.preheader142, label %._crit_edge288

._crit_edge288:                                   ; preds = %._crit_edge283, %.preheader164
  %684 = phi i32 [ %658, %.preheader164 ], [ %682, %._crit_edge283 ]
  %685 = load i32* %267, align 4, !tbaa !18
  %686 = mul nsw i32 %685, %684
  %687 = load double** %coord_data_i, align 8, !tbaa !19
  %688 = sext i32 %686 to i64
  %689 = sub nsw i64 0, %688
  %690 = getelementptr inbounds double* %687, i64 %689
  store double* %690, double** %coord_data_i, align 8, !tbaa !19
  %691 = load double** %coord_data_j, align 8, !tbaa !19
  %692 = getelementptr inbounds double* %691, i64 %689
  store double* %692, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader143:                                    ; preds = %.preheader165, %._crit_edge275
  %typed_data15.2279 = phi i64* [ %typed_data15.3.lcssa, %._crit_edge275 ], [ %657, %.preheader165 ]
  %j14.1278 = phi i32 [ %709, %._crit_edge275 ], [ 0, %.preheader165 ]
  %693 = load i32* %267, align 4, !tbaa !18
  %694 = icmp sgt i32 %693, 0
  %695 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %694, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %.preheader143
  %696 = sitofp i32 %j14.1278 to double
  br label %697

; <label>:697                                     ; preds = %.lr.ph274, %697
  %698 = phi %struct.__sFILE* [ %695, %.lr.ph274 ], [ %708, %697 ]
  %typed_data15.3273 = phi i64* [ %typed_data15.2279, %.lr.ph274 ], [ %700, %697 ]
  %i13.1272 = phi i32 [ 0, %.lr.ph274 ], [ %705, %697 ]
  %699 = sitofp i32 %i13.1272 to double
  %700 = getelementptr inbounds i64* %typed_data15.3273, i64 1
  %701 = load i64* %typed_data15.3273, align 8, !tbaa !38
  %702 = trunc i64 %701 to i32
  %703 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %698, i8* %.pre-phi, double %699, double %696, i32 %702) #7
  %704 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc64 = call i32 @fputc(i32 10, %struct.__sFILE* %704) #2
  %705 = add nuw nsw i32 %i13.1272, 1
  %706 = load i32* %267, align 4, !tbaa !18
  %707 = icmp slt i32 %705, %706
  %708 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %707, label %697, label %._crit_edge275

._crit_edge275:                                   ; preds = %697, %.preheader143
  %.lcssa188 = phi %struct.__sFILE* [ %695, %.preheader143 ], [ %708, %697 ]
  %typed_data15.3.lcssa = phi i64* [ %typed_data15.2279, %.preheader143 ], [ %700, %697 ]
  %fputc61 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa188) #2
  %709 = add nuw nsw i32 %j14.1278, 1
  %710 = load i32* %273, align 4, !tbaa !18
  %711 = icmp slt i32 %709, %710
  br i1 %711, label %.preheader143, label %.loopexit

; <label>:712                                     ; preds = %338, %338
  %713 = load float** %278, align 8, !tbaa !19
  %714 = load i32* %273, align 4, !tbaa !18
  %715 = icmp sgt i32 %714, 0
  br i1 %264, label %.preheader167, label %.preheader168

.preheader168:                                    ; preds = %712
  br i1 %715, label %.preheader145, label %.loopexit

.preheader167:                                    ; preds = %712
  br i1 %715, label %.preheader144, label %._crit_edge269

.preheader144:                                    ; preds = %.preheader167, %._crit_edge264
  %typed_data18.0268 = phi float* [ %typed_data18.1.lcssa, %._crit_edge264 ], [ %713, %.preheader167 ]
  %j17.0267 = phi i32 [ %748, %._crit_edge264 ], [ 0, %.preheader167 ]
  %716 = load i32* %267, align 4, !tbaa !18
  %717 = icmp sgt i32 %716, 0
  %718 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %717, label %.lr.ph263, label %._crit_edge264

.lr.ph263:                                        ; preds = %.preheader144, %742
  %719 = phi %struct.__sFILE* [ %747, %742 ], [ %718, %.preheader144 ]
  %typed_data18.1262 = phi float* [ %typed_data18.2, %742 ], [ %typed_data18.0268, %.preheader144 ]
  %i16.0261 = phi i32 [ %744, %742 ], [ 0, %.preheader144 ]
  %720 = load double** %coord_data_i, align 8, !tbaa !19
  %721 = getelementptr inbounds double* %720, i64 1
  store double* %721, double** %coord_data_i, align 8, !tbaa !19
  %722 = load double* %720, align 8, !tbaa !31
  %723 = fadd double %347, %722
  %724 = load double** %coord_data_j, align 8, !tbaa !19
  %725 = getelementptr inbounds double* %724, i64 1
  store double* %725, double** %coord_data_j, align 8, !tbaa !19
  %726 = load double* %724, align 8, !tbaa !31
  %727 = fadd double %356, %726
  %728 = getelementptr inbounds float* %typed_data18.1262, i64 1
  %729 = load float* %typed_data18.1262, align 4, !tbaa !40
  %730 = fpext float %729 to double
  %731 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %719, i8* %.pre-phi447, double %723, double %727, double %730) #7
  %732 = load i32* %272, align 4, !tbaa !35
  %733 = icmp eq i32 %732, 11
  br i1 %733, label %734, label %742

; <label>:734                                     ; preds = %.lr.ph263
  %735 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %736 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %735)
  %737 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %738 = getelementptr inbounds float* %typed_data18.1262, i64 2
  %739 = load float* %728, align 4, !tbaa !40
  %740 = fpext float %739 to double
  %741 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %737, i8* %24, double %740) #7
  br label %742

; <label>:742                                     ; preds = %734, %.lr.ph263
  %typed_data18.2 = phi float* [ %738, %734 ], [ %728, %.lr.ph263 ]
  %743 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc58 = call i32 @fputc(i32 10, %struct.__sFILE* %743) #2
  %744 = add nuw nsw i32 %i16.0261, 1
  %745 = load i32* %267, align 4, !tbaa !18
  %746 = icmp slt i32 %744, %745
  %747 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %746, label %.lr.ph263, label %._crit_edge264

._crit_edge264:                                   ; preds = %742, %.preheader144
  %.lcssa185 = phi %struct.__sFILE* [ %718, %.preheader144 ], [ %747, %742 ]
  %typed_data18.1.lcssa = phi float* [ %typed_data18.0268, %.preheader144 ], [ %typed_data18.2, %742 ]
  %fputc55 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa185) #2
  %748 = add nuw nsw i32 %j17.0267, 1
  %749 = load i32* %273, align 4, !tbaa !18
  %750 = icmp slt i32 %748, %749
  br i1 %750, label %.preheader144, label %._crit_edge269

._crit_edge269:                                   ; preds = %._crit_edge264, %.preheader167
  %751 = phi i32 [ %714, %.preheader167 ], [ %749, %._crit_edge264 ]
  %752 = load i32* %267, align 4, !tbaa !18
  %753 = mul nsw i32 %752, %751
  %754 = load double** %coord_data_i, align 8, !tbaa !19
  %755 = sext i32 %753 to i64
  %756 = sub nsw i64 0, %755
  %757 = getelementptr inbounds double* %754, i64 %756
  store double* %757, double** %coord_data_i, align 8, !tbaa !19
  %758 = load double** %coord_data_j, align 8, !tbaa !19
  %759 = getelementptr inbounds double* %758, i64 %756
  store double* %759, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader145:                                    ; preds = %.preheader168, %._crit_edge256
  %typed_data18.3260 = phi float* [ %typed_data18.4.lcssa, %._crit_edge256 ], [ %713, %.preheader168 ]
  %j17.1259 = phi i32 [ %787, %._crit_edge256 ], [ 0, %.preheader168 ]
  %760 = load i32* %267, align 4, !tbaa !18
  %761 = icmp sgt i32 %760, 0
  %762 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %761, label %.lr.ph255, label %._crit_edge256

.lr.ph255:                                        ; preds = %.preheader145
  %763 = sitofp i32 %j17.1259 to double
  br label %764

; <label>:764                                     ; preds = %.lr.ph255, %781
  %765 = phi %struct.__sFILE* [ %762, %.lr.ph255 ], [ %786, %781 ]
  %typed_data18.4254 = phi float* [ %typed_data18.3260, %.lr.ph255 ], [ %typed_data18.5, %781 ]
  %i16.1253 = phi i32 [ 0, %.lr.ph255 ], [ %783, %781 ]
  %766 = sitofp i32 %i16.1253 to double
  %767 = getelementptr inbounds float* %typed_data18.4254, i64 1
  %768 = load float* %typed_data18.4254, align 4, !tbaa !40
  %769 = fpext float %768 to double
  %770 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %765, i8* %.pre-phi447, double %766, double %763, double %769) #7
  %771 = load i32* %272, align 4, !tbaa !35
  %772 = icmp eq i32 %771, 11
  br i1 %772, label %773, label %781

; <label>:773                                     ; preds = %764
  %774 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %775 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %774)
  %776 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %777 = getelementptr inbounds float* %typed_data18.4254, i64 2
  %778 = load float* %767, align 4, !tbaa !40
  %779 = fpext float %778 to double
  %780 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %776, i8* %24, double %779) #7
  br label %781

; <label>:781                                     ; preds = %773, %764
  %typed_data18.5 = phi float* [ %777, %773 ], [ %767, %764 ]
  %782 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc52 = call i32 @fputc(i32 10, %struct.__sFILE* %782) #2
  %783 = add nuw nsw i32 %i16.1253, 1
  %784 = load i32* %267, align 4, !tbaa !18
  %785 = icmp slt i32 %783, %784
  %786 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %785, label %764, label %._crit_edge256

._crit_edge256:                                   ; preds = %781, %.preheader145
  %.lcssa184 = phi %struct.__sFILE* [ %762, %.preheader145 ], [ %786, %781 ]
  %typed_data18.4.lcssa = phi float* [ %typed_data18.3260, %.preheader145 ], [ %typed_data18.5, %781 ]
  %fputc49 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa184) #2
  %787 = add nuw nsw i32 %j17.1259, 1
  %788 = load i32* %273, align 4, !tbaa !18
  %789 = icmp slt i32 %787, %788
  br i1 %789, label %.preheader145, label %.loopexit

; <label>:790                                     ; preds = %338, %338
  %791 = load double** %275, align 8, !tbaa !19
  %792 = load i32* %273, align 4, !tbaa !18
  %793 = icmp sgt i32 %792, 0
  br i1 %264, label %.preheader170, label %.preheader171

.preheader171:                                    ; preds = %790
  br i1 %793, label %.preheader147, label %.loopexit

.preheader170:                                    ; preds = %790
  br i1 %793, label %.preheader146, label %._crit_edge250

.preheader146:                                    ; preds = %.preheader170, %._crit_edge245
  %typed_data21.0249 = phi double* [ %typed_data21.1.lcssa, %._crit_edge245 ], [ %791, %.preheader170 ]
  %j20.0248 = phi i32 [ %824, %._crit_edge245 ], [ 0, %.preheader170 ]
  %794 = load i32* %267, align 4, !tbaa !18
  %795 = icmp sgt i32 %794, 0
  %796 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %795, label %.lr.ph244, label %._crit_edge245

.lr.ph244:                                        ; preds = %.preheader146, %818
  %797 = phi %struct.__sFILE* [ %823, %818 ], [ %796, %.preheader146 ]
  %typed_data21.1243 = phi double* [ %typed_data21.2, %818 ], [ %typed_data21.0249, %.preheader146 ]
  %i19.0242 = phi i32 [ %820, %818 ], [ 0, %.preheader146 ]
  %798 = load double** %coord_data_i, align 8, !tbaa !19
  %799 = getelementptr inbounds double* %798, i64 1
  store double* %799, double** %coord_data_i, align 8, !tbaa !19
  %800 = load double* %798, align 8, !tbaa !31
  %801 = fadd double %347, %800
  %802 = load double** %coord_data_j, align 8, !tbaa !19
  %803 = getelementptr inbounds double* %802, i64 1
  store double* %803, double** %coord_data_j, align 8, !tbaa !19
  %804 = load double* %802, align 8, !tbaa !31
  %805 = fadd double %356, %804
  %806 = getelementptr inbounds double* %typed_data21.1243, i64 1
  %807 = load double* %typed_data21.1243, align 8, !tbaa !31
  %808 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %797, i8* %.pre-phi447, double %801, double %805, double %807) #7
  %809 = load i32* %272, align 4, !tbaa !35
  %810 = icmp eq i32 %809, 12
  br i1 %810, label %811, label %818

; <label>:811                                     ; preds = %.lr.ph244
  %812 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %813 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %812)
  %814 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %815 = getelementptr inbounds double* %typed_data21.1243, i64 2
  %816 = load double* %806, align 8, !tbaa !31
  %817 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %814, i8* %24, double %816) #7
  br label %818

; <label>:818                                     ; preds = %811, %.lr.ph244
  %typed_data21.2 = phi double* [ %815, %811 ], [ %806, %.lr.ph244 ]
  %819 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc46 = call i32 @fputc(i32 10, %struct.__sFILE* %819) #2
  %820 = add nuw nsw i32 %i19.0242, 1
  %821 = load i32* %267, align 4, !tbaa !18
  %822 = icmp slt i32 %820, %821
  %823 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %822, label %.lr.ph244, label %._crit_edge245

._crit_edge245:                                   ; preds = %818, %.preheader146
  %.lcssa181 = phi %struct.__sFILE* [ %796, %.preheader146 ], [ %823, %818 ]
  %typed_data21.1.lcssa = phi double* [ %typed_data21.0249, %.preheader146 ], [ %typed_data21.2, %818 ]
  %fputc43 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa181) #2
  %824 = add nuw nsw i32 %j20.0248, 1
  %825 = load i32* %273, align 4, !tbaa !18
  %826 = icmp slt i32 %824, %825
  br i1 %826, label %.preheader146, label %._crit_edge250

._crit_edge250:                                   ; preds = %._crit_edge245, %.preheader170
  %827 = phi i32 [ %792, %.preheader170 ], [ %825, %._crit_edge245 ]
  %828 = load i32* %267, align 4, !tbaa !18
  %829 = mul nsw i32 %828, %827
  %830 = load double** %coord_data_i, align 8, !tbaa !19
  %831 = sext i32 %829 to i64
  %832 = sub nsw i64 0, %831
  %833 = getelementptr inbounds double* %830, i64 %832
  store double* %833, double** %coord_data_i, align 8, !tbaa !19
  %834 = load double** %coord_data_j, align 8, !tbaa !19
  %835 = getelementptr inbounds double* %834, i64 %832
  store double* %835, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader147:                                    ; preds = %.preheader171, %._crit_edge237
  %typed_data21.3241 = phi double* [ %typed_data21.4.lcssa, %._crit_edge237 ], [ %791, %.preheader171 ]
  %j20.1240 = phi i32 [ %861, %._crit_edge237 ], [ 0, %.preheader171 ]
  %836 = load i32* %267, align 4, !tbaa !18
  %837 = icmp sgt i32 %836, 0
  %838 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %837, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %.preheader147
  %839 = sitofp i32 %j20.1240 to double
  br label %840

; <label>:840                                     ; preds = %.lr.ph236, %855
  %841 = phi %struct.__sFILE* [ %838, %.lr.ph236 ], [ %860, %855 ]
  %typed_data21.4235 = phi double* [ %typed_data21.3241, %.lr.ph236 ], [ %typed_data21.5, %855 ]
  %i19.1234 = phi i32 [ 0, %.lr.ph236 ], [ %857, %855 ]
  %842 = sitofp i32 %i19.1234 to double
  %843 = getelementptr inbounds double* %typed_data21.4235, i64 1
  %844 = load double* %typed_data21.4235, align 8, !tbaa !31
  %845 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %841, i8* %.pre-phi447, double %842, double %839, double %844) #7
  %846 = load i32* %272, align 4, !tbaa !35
  %847 = icmp eq i32 %846, 12
  br i1 %847, label %848, label %855

; <label>:848                                     ; preds = %840
  %849 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %850 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %849)
  %851 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %852 = getelementptr inbounds double* %typed_data21.4235, i64 2
  %853 = load double* %843, align 8, !tbaa !31
  %854 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %851, i8* %24, double %853) #7
  br label %855

; <label>:855                                     ; preds = %848, %840
  %typed_data21.5 = phi double* [ %852, %848 ], [ %843, %840 ]
  %856 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc40 = call i32 @fputc(i32 10, %struct.__sFILE* %856) #2
  %857 = add nuw nsw i32 %i19.1234, 1
  %858 = load i32* %267, align 4, !tbaa !18
  %859 = icmp slt i32 %857, %858
  %860 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %859, label %840, label %._crit_edge237

._crit_edge237:                                   ; preds = %855, %.preheader147
  %.lcssa180 = phi %struct.__sFILE* [ %838, %.preheader147 ], [ %860, %855 ]
  %typed_data21.4.lcssa = phi double* [ %typed_data21.3241, %.preheader147 ], [ %typed_data21.5, %855 ]
  %fputc37 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa180) #2
  %861 = add nuw nsw i32 %j20.1240, 1
  %862 = load i32* %273, align 4, !tbaa !18
  %863 = icmp slt i32 %861, %862
  br i1 %863, label %.preheader147, label %.loopexit

; <label>:864                                     ; preds = %338, %338
  %865 = load x86_fp80** %279, align 8, !tbaa !19
  %866 = load i32* %273, align 4, !tbaa !18
  %867 = icmp sgt i32 %866, 0
  br i1 %264, label %.preheader173, label %.preheader174

.preheader174:                                    ; preds = %864
  br i1 %867, label %.preheader149, label %.loopexit

.preheader173:                                    ; preds = %864
  br i1 %867, label %.preheader148, label %._crit_edge231

.preheader148:                                    ; preds = %.preheader173, %._crit_edge226
  %typed_data24.0230 = phi x86_fp80* [ %typed_data24.1.lcssa, %._crit_edge226 ], [ %865, %.preheader173 ]
  %j23.0229 = phi i32 [ %900, %._crit_edge226 ], [ 0, %.preheader173 ]
  %868 = load i32* %267, align 4, !tbaa !18
  %869 = icmp sgt i32 %868, 0
  %870 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %869, label %.lr.ph225, label %._crit_edge226

.lr.ph225:                                        ; preds = %.preheader148, %894
  %871 = phi %struct.__sFILE* [ %899, %894 ], [ %870, %.preheader148 ]
  %typed_data24.1224 = phi x86_fp80* [ %typed_data24.2, %894 ], [ %typed_data24.0230, %.preheader148 ]
  %i22.0223 = phi i32 [ %896, %894 ], [ 0, %.preheader148 ]
  %872 = load double** %coord_data_i, align 8, !tbaa !19
  %873 = getelementptr inbounds double* %872, i64 1
  store double* %873, double** %coord_data_i, align 8, !tbaa !19
  %874 = load double* %872, align 8, !tbaa !31
  %875 = fadd double %347, %874
  %876 = load double** %coord_data_j, align 8, !tbaa !19
  %877 = getelementptr inbounds double* %876, i64 1
  store double* %877, double** %coord_data_j, align 8, !tbaa !19
  %878 = load double* %876, align 8, !tbaa !31
  %879 = fadd double %356, %878
  %880 = getelementptr inbounds x86_fp80* %typed_data24.1224, i64 1
  %881 = load x86_fp80* %typed_data24.1224, align 16, !tbaa !42
  %882 = fptrunc x86_fp80 %881 to double
  %883 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %871, i8* %.pre-phi447, double %875, double %879, double %882) #7
  %884 = load i32* %272, align 4, !tbaa !35
  %885 = icmp eq i32 %884, 13
  br i1 %885, label %886, label %894

; <label>:886                                     ; preds = %.lr.ph225
  %887 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %888 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %887)
  %889 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %890 = getelementptr inbounds x86_fp80* %typed_data24.1224, i64 2
  %891 = load x86_fp80* %880, align 16, !tbaa !42
  %892 = fptrunc x86_fp80 %891 to double
  %893 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %889, i8* %24, double %892) #7
  br label %894

; <label>:894                                     ; preds = %886, %.lr.ph225
  %typed_data24.2 = phi x86_fp80* [ %890, %886 ], [ %880, %.lr.ph225 ]
  %895 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc34 = call i32 @fputc(i32 10, %struct.__sFILE* %895) #2
  %896 = add nuw nsw i32 %i22.0223, 1
  %897 = load i32* %267, align 4, !tbaa !18
  %898 = icmp slt i32 %896, %897
  %899 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %898, label %.lr.ph225, label %._crit_edge226

._crit_edge226:                                   ; preds = %894, %.preheader148
  %.lcssa177 = phi %struct.__sFILE* [ %870, %.preheader148 ], [ %899, %894 ]
  %typed_data24.1.lcssa = phi x86_fp80* [ %typed_data24.0230, %.preheader148 ], [ %typed_data24.2, %894 ]
  %fputc31 = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa177) #2
  %900 = add nuw nsw i32 %j23.0229, 1
  %901 = load i32* %273, align 4, !tbaa !18
  %902 = icmp slt i32 %900, %901
  br i1 %902, label %.preheader148, label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge226, %.preheader173
  %903 = phi i32 [ %866, %.preheader173 ], [ %901, %._crit_edge226 ]
  %904 = load i32* %267, align 4, !tbaa !18
  %905 = mul nsw i32 %904, %903
  %906 = load double** %coord_data_i, align 8, !tbaa !19
  %907 = sext i32 %905 to i64
  %908 = sub nsw i64 0, %907
  %909 = getelementptr inbounds double* %906, i64 %908
  store double* %909, double** %coord_data_i, align 8, !tbaa !19
  %910 = load double** %coord_data_j, align 8, !tbaa !19
  %911 = getelementptr inbounds double* %910, i64 %908
  store double* %911, double** %coord_data_j, align 8, !tbaa !19
  br label %.loopexit

.preheader149:                                    ; preds = %.preheader174, %._crit_edge
  %typed_data24.3222 = phi x86_fp80* [ %typed_data24.4.lcssa, %._crit_edge ], [ %865, %.preheader174 ]
  %j23.1221 = phi i32 [ %939, %._crit_edge ], [ 0, %.preheader174 ]
  %912 = load i32* %267, align 4, !tbaa !18
  %913 = icmp sgt i32 %912, 0
  %914 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %913, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader149
  %915 = sitofp i32 %j23.1221 to double
  br label %916

; <label>:916                                     ; preds = %.lr.ph, %933
  %917 = phi %struct.__sFILE* [ %914, %.lr.ph ], [ %938, %933 ]
  %typed_data24.4219 = phi x86_fp80* [ %typed_data24.3222, %.lr.ph ], [ %typed_data24.5, %933 ]
  %i22.1218 = phi i32 [ 0, %.lr.ph ], [ %935, %933 ]
  %918 = sitofp i32 %i22.1218 to double
  %919 = getelementptr inbounds x86_fp80* %typed_data24.4219, i64 1
  %920 = load x86_fp80* %typed_data24.4219, align 16, !tbaa !42
  %921 = fptrunc x86_fp80 %920 to double
  %922 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %917, i8* %.pre-phi447, double %918, double %915, double %921) #7
  %923 = load i32* %272, align 4, !tbaa !35
  %924 = icmp eq i32 %923, 13
  br i1 %924, label %925, label %933

; <label>:925                                     ; preds = %916
  %926 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %927 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %926)
  %928 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %929 = getelementptr inbounds x86_fp80* %typed_data24.4219, i64 2
  %930 = load x86_fp80* %919, align 16, !tbaa !42
  %931 = fptrunc x86_fp80 %930 to double
  %932 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %928, i8* %24, double %931) #7
  br label %933

; <label>:933                                     ; preds = %925, %916
  %typed_data24.5 = phi x86_fp80* [ %929, %925 ], [ %919, %916 ]
  %934 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %fputc28 = call i32 @fputc(i32 10, %struct.__sFILE* %934) #2
  %935 = add nuw nsw i32 %i22.1218, 1
  %936 = load i32* %267, align 4, !tbaa !18
  %937 = icmp slt i32 %935, %936
  %938 = load %struct.__sFILE** %357, align 8, !tbaa !19
  br i1 %937, label %916, label %._crit_edge

._crit_edge:                                      ; preds = %933, %.preheader149
  %.lcssa = phi %struct.__sFILE* [ %914, %.preheader149 ], [ %938, %933 ]
  %typed_data24.4.lcssa = phi x86_fp80* [ %typed_data24.3222, %.preheader149 ], [ %typed_data24.5, %933 ]
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %.lcssa) #2
  %939 = add nuw nsw i32 %j23.1221, 1
  %940 = load i32* %273, align 4, !tbaa !18
  %941 = icmp slt i32 %939, %940
  br i1 %941, label %.preheader149, label %.loopexit

; <label>:942                                     ; preds = %338
  %943 = call i32 @CCTK_Warn(i32 1, i32 546, i8* getelementptr inbounds ([77 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str44, i64 0, i64 0)) #7
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge237, %._crit_edge256, %._crit_edge275, %._crit_edge294, %._crit_edge313, %._crit_edge332, %._crit_edge351, %._crit_edge370, %.preheader174, %.preheader171, %.preheader168, %.preheader165, %.preheader162, %.preheader159, %.preheader156, %.preheader153, %.preheader151, %._crit_edge231, %._crit_edge250, %._crit_edge269, %._crit_edge288, %._crit_edge307, %._crit_edge326, %._crit_edge345, %._crit_edge364, %._crit_edge383, %942
  %944 = load %struct.__sFILE** %357, align 8, !tbaa !19
  %945 = call i32 @fflush(%struct.__sFILE* %944) #7
  %946 = load i8** %data, align 8, !tbaa !19
  call void @free(i8* %946) #8
  %947 = load double** %coord_data_i, align 8, !tbaa !19
  %948 = icmp eq double* %947, null
  br i1 %948, label %951, label %949

; <label>:949                                     ; preds = %.loopexit
  %950 = bitcast double* %947 to i8*
  call void @free(i8* %950) #8
  br label %951

; <label>:951                                     ; preds = %.loopexit, %949
  %952 = load double** %coord_data_j, align 8, !tbaa !19
  %953 = icmp eq double* %952, null
  br i1 %953, label %956, label %954

; <label>:954                                     ; preds = %951
  %955 = bitcast double* %952 to i8*
  call void @free(i8* %955) #8
  br label %956

; <label>:956                                     ; preds = %951, %337, %954
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %957 = add nuw nsw i32 %dir.3386, 1
  %958 = icmp sgt i64 %280, %indvars.iv.next
  br i1 %958, label %281, label %.loopexit176

.loopexit176:                                     ; preds = %956, %335, %332, %317, %308, %159, %11
  %.0 = phi i32 [ -2, %159 ], [ -3, %308 ], [ -3, %317 ], [ -1, %11 ], [ -3, %332 ], [ -3, %335 ], [ 0, %956 ]
  call void @llvm.lifetime.end(i64 128, i8* %6) #2
  call void @llvm.lifetime.end(i64 40, i8* %5) #2
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

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

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
!2 = !{!3, !7, i64 88}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 120}
!10 = !{!11, !8, i64 204}
!11 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292}
!12 = !{!11, !7, i64 112}
!13 = !{!14, !8, i64 16}
!14 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!15 = !{!16, !4, i64 120}
!16 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !8, i64 104, !7, i64 112, !4, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!17 = !{!14, !8, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !7, i64 96}
!21 = !{!"IOASCIIGH", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!22 = !{!21, !7, i64 48}
!23 = !{!21, !7, i64 120}
!24 = !{!25, !7, i64 24}
!25 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!26 = !{!25, !7, i64 0}
!27 = !{!25, !7, i64 8}
!28 = !{!25, !7, i64 32}
!29 = !{!25, !7, i64 16}
!30 = !{!5, !5, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!16, !7, i64 72}
!33 = !{!16, !8, i64 0}
!34 = !{!14, !8, i64 12}
!35 = !{!14, !8, i64 4}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !5, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !5, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !5, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long double", !5, i64 0}
