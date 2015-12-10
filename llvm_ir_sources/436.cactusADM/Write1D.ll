; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write1D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@IOASCII_Write1D.extensions = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"yl\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"zl\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [77 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Write1D.c\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str6 = private unnamed_addr constant [60 x i8] c"IOASCII_Write1D: No IOASCII_1D output for '%s' (no storage)\00", align 1
@CCTK_GroupDynamicData = external global i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)*
@.str7 = private unnamed_addr constant [106 x i8] c"IOASCII_Write1D: No IOASCII_1D diagonal output for '%s' (only implemented for non-staggered 3D variables)\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"out_style\00", align 1
@IOASCII_Write1D.user_was_warned = internal unnamed_addr global i1 false
@.str9 = private unnamed_addr constant [115 x i8] c"IOASCII_Write1D: parameter 'IOASCII::out_style' is deprecated in BETA12, please use 'IOASCII::out1D_style' instead\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"gnuplot f(x)\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"xgraph\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c".xg\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"\0A\0A%cTime = %%%s\0A\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c".asc\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"\0A%cTime = %%%s\0A\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c" (%%c = %%%s\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c", %%c = %%%s\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"\09\09%%%s\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"gnuplot f(t,x)\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"%%%s\09\09\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"%%%s\09\09%%d\00", align 1
@.str23 = private unnamed_addr constant [11 x i8] c"%%%s\09\09%%%s\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str25 = private unnamed_addr constant [53 x i8] c"IOASCII_Write1D: No coordinate ranges found for '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str26 = private unnamed_addr constant [4 x i8] c"re_\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"im_\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"_re\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"_im\00", align 1
@.str30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str31 = private unnamed_addr constant [5 x i8] c"%s1D\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"%s%c_[%d]\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"%s%c_[%d][%d]\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"%s%dD_diagonal\00", align 1
@.str35 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str36 = private unnamed_addr constant [11 x i8] c"%s/%s_%s%s\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"%s_%s%s\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"%s/%s%s.%s\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"%s%s.%s\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str42 = private unnamed_addr constant [49 x i8] c"IOASCII_Write1D: Cannot open 1D output file '%s'\00", align 1
@.str43 = private unnamed_addr constant [27 x i8] c"One-dimensional line plots\00", align 1
@.str44 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str45 = private unnamed_addr constant [20 x i8] c"application/x-graph\00", align 1
@.str46 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str48 = private unnamed_addr constant [21 x i8] c"%cParameter file %s\0A\00", align 1
@.str49 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str50 = private unnamed_addr constant [14 x i8] c"%cCreated %s \00", align 1
@.str51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str52 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str53 = private unnamed_addr constant [14 x i8] c"%cx-label %c\0A\00", align 1
@.str54 = private unnamed_addr constant [20 x i8] c"%cx-label diagonal\0A\00", align 1
@.str55 = private unnamed_addr constant [13 x i8] c"%cy-label %s\00", align 1
@.str56 = private unnamed_addr constant [3 x i8] c"),\00", align 1
@.str57 = private unnamed_addr constant [11 x i8] c" (%ci = %d\00", align 1
@.str58 = private unnamed_addr constant [11 x i8] c", %ci = %d\00", align 1
@.str59 = private unnamed_addr constant [4 x i8] c") \0A\00", align 1
@IOASCII_Write1D.zero_point = internal constant [3 x i32] zeroinitializer, align 4
@.str60 = private unnamed_addr constant [62 x i8] c"IOASCII_Write1D: Failed to extract hyperslab for%c-coordinate\00", align 1
@.str61 = private unnamed_addr constant [63 x i8] c"IOASCII_Write1D: Failed to extract hyperslab for variable '%s'\00", align 1
@.str62 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@.str63 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusBase/IOASCII/src/Write1D.c,v 1.43 2002/01/04 11:17:28 allen Exp $\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Write1D_c() #0 {
  ret i8* getelementptr inbounds ([89 x i8]* @.str63, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
  %Do_it = alloca [4 x i32], align 16
  %coord_index = alloca [3 x i32], align 4
  %coord_system = alloca [20 x i8], align 16
  %slicename = alloca [20 x i8], align 16
  %group_static_data = alloca %struct.cGroup, align 4
  %group_dynamic_data = alloca %struct.GROUPDYNAMICDATA, align 8
  %header_fmt_string = alloca [18 x i8], align 16
  %ylabel1_fmt_string = alloca [13 x i8], align 1
  %ylabel2_fmt_string = alloca [13 x i8], align 1
  %time_fmt_string = alloca [30 x i8], align 16
  %data_fmt_string_int = alloca [30 x i8], align 16
  %data_fmt_string_real = alloca [30 x i8], align 16
  %out_real_format = alloca [30 x i8], align 16
  %file = alloca [8 x %struct.__sFILE*], align 16
  %coord_lower = alloca [3 x double], align 16
  %offset = alloca double, align 8
  %fileinfo = alloca %struct.stat, align 8
  %buffer = alloca [128 x i8], align 16
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %length = alloca i32, align 4
  %gsh = alloca [3 x i32], align 4
  %downsample = alloca i32, align 4
  %directions = alloca [3 x i32], align 4
  %1 = bitcast [3 x i32]* %directions to i8*
  %hsize = alloca i32, align 4
  %data = alloca i8*, align 8
  %coord_data = alloca double*, align 8
  %2 = bitcast %struct.GROUPDYNAMICDATA* %group_dynamic_data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %2) #2
  %3 = bitcast [8 x %struct.__sFILE*]* %file to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #2
  %4 = bitcast %struct.stat* %fileinfo to i8*
  call void @llvm.lifetime.start(i64 144, i8* %4) #2
  %5 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #2
  %7 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 9), align 8, !tbaa !2
  %8 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 15), align 8, !tbaa !9
  %9 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 16), align 8, !tbaa !10
  %10 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 20), align 8, !tbaa !11
  %11 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 22), align 8, !tbaa !12
  %12 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 25), align 4, !tbaa !13
  %13 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 28), align 8, !tbaa !14
  %14 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 28), align 4, !tbaa !15
  %15 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 14), align 8, !tbaa !17
  %16 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %17 = tail call i8* @CCTK_FullName(i32 %vindex) #7
  %18 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %16) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %0
  %21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 163, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str6, i64 0, i64 0), i8* %17) #7
  tail call void @free(i8* %17) #8
  br label %1219

; <label>:22                                      ; preds = %0
  %23 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0)) #7
  %24 = call i32 @CCTK_GroupData(i32 %16, %struct.cGroup* %group_static_data) #7
  %25 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !18
  %26 = call i32 %25(%struct.cGH* %GH, i32 %16, %struct.GROUPDYNAMICDATA* %group_dynamic_data) #7
  %27 = icmp eq i32 %11, 0
  br i1 %27, label %32, label %28

; <label>:28                                      ; preds = %22
  %29 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %30 = load i32* %29, align 4, !tbaa !19
  %31 = icmp sgt i32 %30, 0
  br label %32

; <label>:32                                      ; preds = %22, %28
  %33 = phi i1 [ false, %22 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 0
  store i32 %34, i32* %35, align 16, !tbaa !21
  %36 = icmp eq i32 %12, 0
  br i1 %36, label %41, label %37

; <label>:37                                      ; preds = %32
  %38 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %39 = load i32* %38, align 4, !tbaa !19
  %40 = icmp sgt i32 %39, 1
  br label %41

; <label>:41                                      ; preds = %32, %37
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 1
  store i32 %43, i32* %44, align 4, !tbaa !21
  %45 = icmp eq i32 %13, 0
  br i1 %45, label %50, label %46

; <label>:46                                      ; preds = %41
  %47 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %48 = load i32* %47, align 4, !tbaa !19
  %49 = icmp sgt i32 %48, 2
  br label %50

; <label>:50                                      ; preds = %41, %46
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 2
  store i32 %52, i32* %53, align 8, !tbaa !21
  %54 = icmp eq i32 %10, 0
  br i1 %54, label %.thread, label %56

.thread:                                          ; preds = %50
  %55 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 3
  store i32 0, i32* %55, align 4, !tbaa !21
  br label %78

; <label>:56                                      ; preds = %50
  %57 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %58 = load i32* %57, align 4, !tbaa !19
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %61, label %.thread342

.thread342:                                       ; preds = %56
  %60 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 3
  store i32 0, i32* %60, align 4, !tbaa !21
  br label %67

; <label>:61                                      ; preds = %56
  %62 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 3
  %63 = load i32* %62, align 4, !tbaa !22
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 3
  store i32 %65, i32* %66, align 4, !tbaa !21
  br i1 %64, label %78, label %67

; <label>:67                                      ; preds = %.thread342, %61
  %68 = phi i32 [ 0, %.thread342 ], [ %65, %61 ]
  %69 = sext i32 %vindex to i64
  %70 = getelementptr inbounds i8* %23, i64 64
  %71 = bitcast i8* %70 to i32**
  %72 = load i32** %71, align 8, !tbaa !23
  %73 = getelementptr inbounds i32* %72, i64 %69
  %74 = load i32* %73, align 4, !tbaa !21
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

; <label>:76                                      ; preds = %67
  %77 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 187, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str7, i64 0, i64 0), i8* %17) #7
  br label %78

; <label>:78                                      ; preds = %.thread, %61, %76, %67
  %79 = phi i32 [ 0, %.thread ], [ %65, %61 ], [ %68, %76 ], [ %68, %67 ]
  %80 = or i1 %42, %33
  %81 = or i1 %80, %51
  %82 = zext i1 %81 to i32
  %83 = or i32 %82, %79
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85                                      ; preds = %78
  call void @free(i8* %17) #8
  br label %1219

; <label>:86                                      ; preds = %78
  %87 = call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0)) #7
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

; <label>:89                                      ; preds = %86
  %.b = load i1* @IOASCII_Write1D.user_was_warned, align 1
  br i1 %.b, label %92, label %90

; <label>:90                                      ; preds = %89
  %91 = call i32 @CCTK_Warn(i32 1, i32 210, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([115 x i8]* @.str9, i64 0, i64 0)) #7
  store i1 true, i1* @IOASCII_Write1D.user_was_warned, align 1
  br label %92

; <label>:92                                      ; preds = %90, %89
  %93 = call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0)) #7
  %94 = icmp eq i32 %93, 0
  %. = select i1 %94, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0)
  br label %95

; <label>:95                                      ; preds = %92, %86
  %out1D_style.0 = phi i8* [ %7, %86 ], [ %., %92 ]
  %96 = call i32 @CCTK_Equals(i8* %out1D_style.0, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0)) #7
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds [18 x i8]* %header_fmt_string, i64 0, i64 0
  br i1 %97, label %101, label %99

; <label>:99                                      ; preds = %95
  %100 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %98, i32 0, i64 18, i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 34, i8* %8) #7
  br label %103

; <label>:101                                     ; preds = %95
  %102 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %98, i32 0, i64 18, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0), i32 35, i8* %8) #7
  br label %103

; <label>:103                                     ; preds = %101, %99
  %comment_char.0 = phi i32 [ 34, %99 ], [ 35, %101 ]
  %file_extension.0 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), %99 ], [ getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), %101 ]
  %104 = getelementptr inbounds [13 x i8]* %ylabel1_fmt_string, i64 0, i64 0
  %105 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %104, i32 0, i64 13, i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i8* %8) #7
  %106 = getelementptr inbounds [13 x i8]* %ylabel2_fmt_string, i64 0, i64 0
  %107 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %106, i32 0, i64 13, i8* getelementptr inbounds ([13 x i8]* @.str18, i64 0, i64 0), i8* %8) #7
  %108 = getelementptr inbounds [30 x i8]* %out_real_format, i64 0, i64 0
  %109 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %108, i32 0, i64 30, i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* %8) #7
  %110 = call i32 @CCTK_Equals(i8* %out1D_style.0, i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0)) #7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %._crit_edge326, label %112

._crit_edge326:                                   ; preds = %103
  %.pre327 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %.pre328 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  br label %123

; <label>:112                                     ; preds = %103
  %113 = getelementptr inbounds [30 x i8]* %time_fmt_string, i64 0, i64 0
  %114 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %113, i32 0, i64 30, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i8* %8) #7
  %115 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 0
  %116 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %117 = load double* %116, align 8, !tbaa !25
  %118 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %115, i32 0, i64 30, i8* %113, double %117) #7
  %119 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 0
  %120 = load double* %116, align 8, !tbaa !25
  %121 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %119, i32 0, i64 30, i8* %113, double %120) #7
  %122 = call i64 @strlen(i8* %115) #7
  %phitmp = shl i64 %122, 32
  %phitmp222 = ashr exact i64 %phitmp, 32
  br label %123

; <label>:123                                     ; preds = %._crit_edge326, %112
  %.pre-phi329 = phi i8* [ %.pre328, %._crit_edge326 ], [ %119, %112 ]
  %.pre-phi = phi i8* [ %.pre327, %._crit_edge326 ], [ %115, %112 ]
  %i.0 = phi i64 [ 0, %._crit_edge326 ], [ %phitmp222, %112 ]
  %124 = getelementptr inbounds [30 x i8]* %data_fmt_string_int, i64 0, i64 %i.0
  %125 = call i64 @llvm.objectsize.i64.p0i8(i8* %124, i1 false)
  %126 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %124, i32 0, i64 %125, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %8) #7
  %127 = getelementptr inbounds [30 x i8]* %data_fmt_string_real, i64 0, i64 %i.0
  %128 = call i64 @llvm.objectsize.i64.p0i8(i8* %127, i1 false)
  %129 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %127, i32 0, i64 %128, i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), i8* %8, i8* %8) #7
  %130 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 0
  %131 = load i32* %130, align 4, !tbaa !27
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %.critedge.thread

; <label>:133                                     ; preds = %123
  %134 = getelementptr inbounds [20 x i8]* %coord_system, i64 0, i64 0
  %135 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %136 = load i32* %135, align 4, !tbaa !19
  %137 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %134, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0), i32 %136) #7
  %138 = load i32* %135, align 4, !tbaa !19
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %.lr.ph221, label %.critedge.thread

.lr.ph221:                                        ; preds = %133, %.lr.ph221
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %.lr.ph221 ], [ 0, %133 ]
  %have_coords.0218 = phi i32 [ %145, %.lr.ph221 ], [ 1, %133 ]
  %140 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %indvars.iv303
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1
  %141 = trunc i64 %indvars.iv.next304 to i32
  %142 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %140, double* %offset, i32 %141, i8* null, i8* %134) #7
  %143 = call i32 @CCTK_CoordIndex(i32 %141, i8* null, i8* %134) #7
  %144 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %indvars.iv303
  store i32 %143, i32* %144, align 4, !tbaa !21
  %.lobit = lshr i32 %143, 31
  %.lobit.not = xor i32 %.lobit, 1
  %145 = and i32 %.lobit.not, %have_coords.0218
  %146 = load i32* %135, align 4, !tbaa !19
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %indvars.iv.next304, %147
  %149 = icmp slt i64 %indvars.iv.next304, 3
  %or.cond35 = and i1 %149, %148
  br i1 %or.cond35, label %.lr.ph221, label %.critedge

.critedge:                                        ; preds = %.lr.ph221
  %150 = icmp eq i32 %145, 0
  br i1 %150, label %151, label %.critedge.thread

; <label>:151                                     ; preds = %.critedge
  %152 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 273, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str25, i64 0, i64 0), i8* %134) #7
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %133, %123, %.critedge, %151
  %have_coords.1 = phi i32 [ %145, %.critedge ], [ 0, %151 ], [ 0, %123 ], [ 1, %133 ]
  %153 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !18
  %154 = call i32 %153(%struct.cGH* %GH) #7
  %155 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 1
  %156 = load i32* %155, align 4, !tbaa !28
  %157 = icmp eq i32 %156, 10
  br i1 %157, label %158, label %161

; <label>:158                                     ; preds = %.critedge.thread
  %159 = call i32 @CCTK_Equals(i8* %out1D_style.0, i8* getelementptr inbounds ([7 x i8]* @.str12, i64 0, i64 0)) #7
  %160 = icmp ne i32 %159, 0
  br label %161

; <label>:161                                     ; preds = %158, %.critedge.thread
  %162 = phi i1 [ false, %.critedge.thread ], [ %160, %158 ]
  %163 = select i1 %162, i32 2, i32 1
  %164 = icmp eq i32 %154, 0
  br i1 %164, label %165, label %..preheader137_crit_edge

..preheader137_crit_edge:                         ; preds = %161
  %.pre330 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %.pre332 = getelementptr inbounds i8* %23, i64 112
  %.pre334 = bitcast i8* %.pre332 to i32****
  %.pre336 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  br label %.preheader137

; <label>:165                                     ; preds = %161
  %166 = shl nuw nsw i32 %163, 2
  %167 = getelementptr inbounds i8* %23, i64 40
  %168 = bitcast i8* %167 to i8**
  %169 = load i8** %168, align 8, !tbaa !29
  %170 = call i64 @strlen(i8* %169) #7
  %171 = call i64 @strlen(i8* %alias) #7
  %172 = add i64 %170, 40
  %173 = add i64 %172, %171
  %174 = call i8* @malloc(i64 %173) #7
  %175 = icmp eq i32 %14, 0
  %176 = icmp ne i32 %14, 0
  %177 = getelementptr inbounds [20 x i8]* %slicename, i64 0, i64 0
  %178 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 4
  %179 = call i64 @llvm.objectsize.i64.p0i8(i8* %174, i1 false)
  %180 = getelementptr inbounds i8* %23, i64 112
  %181 = bitcast i8* %180 to i32****
  %182 = getelementptr inbounds i8* %23, i64 88
  %183 = bitcast i8* %182 to %struct.PNamedData**
  %184 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3
  %185 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0
  %186 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1
  %187 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4
  %188 = icmp eq i32 %comment_char.0, 35
  %189 = select i1 %188, i8* getelementptr inbounds ([20 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str45, i64 0, i64 0)
  %190 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2
  %191 = icmp eq i32 %have_coords.1, 0
  %192 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %193 = zext i32 %166 to i64
  br label %194

; <label>:194                                     ; preds = %165, %418
  %indvars.iv301 = phi i64 [ 0, %165 ], [ %indvars.iv.next302, %418 ]
  %195 = trunc i64 %indvars.iv301 to i32
  %196 = srem i32 %195, 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 %197
  %199 = load i32* %198, align 4, !tbaa !21
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %418, label %201

; <label>:201                                     ; preds = %194
  %202 = load i32* %155, align 4, !tbaa !28
  %203 = icmp eq i32 %202, 10
  %or.cond = and i1 %162, %203
  br i1 %or.cond, label %204, label %210

; <label>:204                                     ; preds = %201
  %205 = icmp slt i64 %indvars.iv301, 4
  br i1 %175, label %208, label %206

; <label>:206                                     ; preds = %204
  %207 = select i1 %205, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)
  br label %210

; <label>:208                                     ; preds = %204
  %209 = select i1 %205, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i64 0, i64 0)
  br label %210

; <label>:210                                     ; preds = %201, %206, %208
  %type_extension.0 = phi i8* [ %207, %206 ], [ %209, %208 ], [ getelementptr inbounds ([1 x i8]* @.str30, i64 0, i64 0), %201 ]
  %211 = add nsw i32 %196, 1
  %212 = srem i32 %211, 3
  %213 = add nsw i32 %196, 2
  %214 = srem i32 %213, 3
  %215 = icmp slt i32 %214, %212
  %.57 = select i1 %215, i32 0, i32 %212
  %.58 = select i1 %215, i32 %212, i32 %214
  br i1 %176, label %216, label %255

; <label>:216                                     ; preds = %210
  %217 = add nuw nsw i64 %indvars.iv301, 1
  %218 = and i64 %217, 3
  %219 = icmp eq i64 %218, 0
  %220 = load i32* %178, align 4, !tbaa !19
  br i1 %219, label %245, label %221

; <label>:221                                     ; preds = %216
  %222 = icmp eq i32 %220, 1
  br i1 %222, label %223, label %225

; <label>:223                                     ; preds = %221
  %224 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %177, i32 0, i64 20, i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0), i8* %type_extension.0) #7
  br label %247

; <label>:225                                     ; preds = %221
  %226 = icmp eq i32 %220, 2
  %227 = add nsw i32 %196, 120
  %228 = sext i32 %.57 to i64
  %229 = add nsw i32 %220, -1
  %230 = sext i32 %229 to i64
  %231 = load i32**** %181, align 8, !tbaa !30
  %232 = getelementptr inbounds i32*** %231, i64 %230
  %233 = load i32*** %232, align 8, !tbaa !18
  %234 = getelementptr inbounds i32** %233, i64 %197
  %235 = load i32** %234, align 8, !tbaa !18
  %236 = getelementptr inbounds i32* %235, i64 %228
  %237 = load i32* %236, align 4, !tbaa !21
  br i1 %226, label %238, label %240

; <label>:238                                     ; preds = %225
  %239 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %177, i32 0, i64 20, i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0), i8* %type_extension.0, i32 %227, i32 %237) #7
  br label %247

; <label>:240                                     ; preds = %225
  %241 = sext i32 %.58 to i64
  %242 = getelementptr inbounds i32* %235, i64 %241
  %243 = load i32* %242, align 4, !tbaa !21
  %244 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %177, i32 0, i64 20, i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0), i8* %type_extension.0, i32 %227, i32 %237, i32 %243) #7
  br label %247

; <label>:245                                     ; preds = %216
  %246 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %177, i32 0, i64 20, i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* %type_extension.0, i32 %220) #7
  br label %247

; <label>:247                                     ; preds = %223, %240, %238, %245
  %248 = load i8** %168, align 8, !tbaa !29
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([2 x i8]* @.str35, i64 0, i64 0)) #7
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

; <label>:251                                     ; preds = %247
  %252 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %174, i32 0, i64 %179, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* %248, i8* %alias, i8* %177, i8* %file_extension.0) #7
  br label %265

; <label>:253                                     ; preds = %247
  %254 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %174, i32 0, i64 %179, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* %alias, i8* %177, i8* %file_extension.0) #7
  br label %265

; <label>:255                                     ; preds = %210
  %256 = load i8** %168, align 8, !tbaa !29
  %257 = call i32 @strcmp(i8* %256, i8* getelementptr inbounds ([2 x i8]* @.str35, i64 0, i64 0)) #7
  %258 = icmp eq i32 %257, 0
  %259 = getelementptr inbounds [4 x i8*]* @IOASCII_Write1D.extensions, i64 0, i64 %197
  %260 = load i8** %259, align 8, !tbaa !18
  br i1 %258, label %263, label %261

; <label>:261                                     ; preds = %255
  %262 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %174, i32 0, i64 %179, i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* %256, i8* %alias, i8* %type_extension.0, i8* %260) #7
  br label %265

; <label>:263                                     ; preds = %255
  %264 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %174, i32 0, i64 %179, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* %alias, i8* %type_extension.0, i8* %260) #7
  br label %265

; <label>:265                                     ; preds = %261, %263, %251, %253
  %266 = load %struct.PNamedData** %183, align 8, !tbaa !31
  %267 = call i8* @GetNamedData(%struct.PNamedData* %266, i8* %174) #7
  %268 = icmp eq i8* %267, null
  br i1 %268, label %269, label %278

; <label>:269                                     ; preds = %265
  %270 = call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #7
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %276, label %272

; <label>:272                                     ; preds = %269
  %273 = call i32 @"\01_stat$INODE64"(i8* %174, %struct.stat* %fileinfo) #7
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0)
  br label %276

; <label>:276                                     ; preds = %269, %272
  %openmode.0 = phi i8* [ %275, %272 ], [ getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), %269 ]
  %277 = call i32 @StoreNamedData(%struct.PNamedData** %183, i8* %174, i8* inttoptr (i64 1 to i8*)) #7
  br label %278

; <label>:278                                     ; preds = %265, %276
  %openmode.1 = phi i8* [ %openmode.0, %276 ], [ getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), %265 ]
  %279 = call %struct.__sFILE* @"\01_fopen"(i8* %174, i8* %openmode.1) #7
  %280 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %indvars.iv301
  store %struct.__sFILE* %279, %struct.__sFILE** %280, align 8, !tbaa !18
  %281 = icmp eq %struct.__sFILE* %279, null
  br i1 %281, label %282, label %284

; <label>:282                                     ; preds = %278
  %283 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 414, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str42, i64 0, i64 0), i8* %174) #7
  br label %418

; <label>:284                                     ; preds = %278
  %285 = load i8* %openmode.1, align 1, !tbaa !32
  %286 = icmp eq i8 %285, 119
  br i1 %286, label %287, label %418

; <label>:287                                     ; preds = %284
  br i1 %176, label %291, label %288

; <label>:288                                     ; preds = %287
  %289 = getelementptr inbounds [4 x i8*]* @IOASCII_Write1D.extensions, i64 0, i64 %197
  %290 = load i8** %289, align 8, !tbaa !18
  br label %291

; <label>:291                                     ; preds = %287, %288
  %292 = phi i8* [ %290, %288 ], [ %177, %287 ]
  store i8* %292, i8** %184, align 8, !tbaa !33
  store i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8** %185, align 8, !tbaa !35
  store i8* %17, i8** %186, align 8, !tbaa !36
  store i8* getelementptr inbounds ([27 x i8]* @.str43, i64 0, i64 0), i8** %187, align 8, !tbaa !37
  store i8* %189, i8** %190, align 8, !tbaa !38
  %293 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %174, %struct.ioAdvertisedFileDesc* %advertised_file) #7
  %294 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([19 x i8]* @.str46, i64 0, i64 0)) #7
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

; <label>:296                                     ; preds = %291
  %297 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0)) #7
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %303, label %299

; <label>:299                                     ; preds = %296, %291
  store i8 0, i8* %5, align 16, !tbaa !32
  %300 = call i32 @CCTK_ParameterFilename(i32 128, i8* %5) #7
  %301 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %302 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %301, i8* getelementptr inbounds ([21 x i8]* @.str48, i64 0, i64 0), i32 %comment_char.0, i8* %5) #7
  br label %303

; <label>:303                                     ; preds = %296, %299
  %304 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0)) #7
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %309

; <label>:306                                     ; preds = %303
  %307 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0)) #7
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %316, label %309

; <label>:309                                     ; preds = %306, %303
  store i8 0, i8* %5, align 16, !tbaa !32
  %310 = call i32 @Util_CurrentDate(i32 128, i8* %5) #7
  %311 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %312 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %311, i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0), i32 %comment_char.0, i8* %5) #7
  %313 = call i32 @Util_CurrentTime(i32 128, i8* %5) #7
  %314 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %315 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %314, i8* getelementptr inbounds ([4 x i8]* @.str51, i64 0, i64 0), i8* %5) #7
  br label %316

; <label>:316                                     ; preds = %306, %309
  %317 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([12 x i8]* @.str52, i64 0, i64 0)) #7
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %322

; <label>:319                                     ; preds = %316
  %320 = call i32 @CCTK_Equals(i8* %15, i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0)) #7
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %418, label %322

; <label>:322                                     ; preds = %319, %316
  %323 = icmp slt i32 %196, 3
  %324 = load %struct.__sFILE** %280, align 8, !tbaa !18
  br i1 %323, label %329, label %325

; <label>:325                                     ; preds = %322
  %326 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %324, i8* getelementptr inbounds ([20 x i8]* @.str54, i64 0, i64 0), i32 %comment_char.0) #7
  %327 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %328 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %327, i8* getelementptr inbounds ([13 x i8]* @.str55, i64 0, i64 0), i32 %comment_char.0, i8* %17) #7
  br label %418

; <label>:329                                     ; preds = %322
  %330 = add nsw i32 %196, 120
  %331 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %324, i8* getelementptr inbounds ([14 x i8]* @.str53, i64 0, i64 0), i32 %comment_char.0, i32 %330) #7
  %332 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %333 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %332, i8* getelementptr inbounds ([13 x i8]* @.str55, i64 0, i64 0), i32 %comment_char.0, i8* %17) #7
  %334 = load i32* %178, align 4, !tbaa !19
  %335 = icmp sgt i32 %334, 1
  br i1 %335, label %336, label %418

; <label>:336                                     ; preds = %329
  br i1 %191, label %._crit_edge325, label %337

._crit_edge325:                                   ; preds = %336
  %.pre338 = add nsw i32 %.57, 120
  %.pre340 = sext i32 %.57 to i64
  br label %386

; <label>:337                                     ; preds = %336
  %338 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %339 = add nsw i32 %.57, 120
  %340 = sext i32 %.57 to i64
  %341 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %340
  %342 = load double* %341, align 8, !tbaa !39
  %343 = load double** %192, align 8, !tbaa !40
  %344 = getelementptr inbounds double* %343, i64 %340
  %345 = load double* %344, align 8, !tbaa !39
  %346 = add nsw i32 %334, -1
  %347 = sext i32 %346 to i64
  %348 = load i32**** %181, align 8, !tbaa !30
  %349 = getelementptr inbounds i32*** %348, i64 %347
  %350 = load i32*** %349, align 8, !tbaa !18
  %351 = getelementptr inbounds i32** %350, i64 %197
  %352 = load i32** %351, align 8, !tbaa !18
  %353 = getelementptr inbounds i32* %352, i64 %340
  %354 = load i32* %353, align 4, !tbaa !21
  %355 = sitofp i32 %354 to double
  %356 = fmul double %345, %355
  %357 = fadd double %342, %356
  %358 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %338, i8* %104, i32 %339, double %357) #7
  %359 = load i32* %178, align 4, !tbaa !19
  %360 = icmp sgt i32 %359, 2
  br i1 %360, label %361, label %383

; <label>:361                                     ; preds = %337
  %362 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %363 = add nsw i32 %.58, 120
  %364 = sext i32 %.58 to i64
  %365 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 %364
  %366 = load double* %365, align 8, !tbaa !39
  %367 = load double** %192, align 8, !tbaa !40
  %368 = getelementptr inbounds double* %367, i64 %364
  %369 = load double* %368, align 8, !tbaa !39
  %370 = add nsw i32 %359, -1
  %371 = sext i32 %370 to i64
  %372 = load i32**** %181, align 8, !tbaa !30
  %373 = getelementptr inbounds i32*** %372, i64 %371
  %374 = load i32*** %373, align 8, !tbaa !18
  %375 = getelementptr inbounds i32** %374, i64 %197
  %376 = load i32** %375, align 8, !tbaa !18
  %377 = getelementptr inbounds i32* %376, i64 %364
  %378 = load i32* %377, align 4, !tbaa !21
  %379 = sitofp i32 %378 to double
  %380 = fmul double %369, %379
  %381 = fadd double %366, %380
  %382 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %362, i8* %106, i32 %363, double %381) #7
  br label %383

; <label>:383                                     ; preds = %361, %337
  %384 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %385 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %384)
  %.pre = load i32* %178, align 4, !tbaa !19
  br label %386

; <label>:386                                     ; preds = %._crit_edge325, %383
  %.pre-phi341 = phi i64 [ %.pre340, %._crit_edge325 ], [ %340, %383 ]
  %.pre-phi339 = phi i32 [ %.pre338, %._crit_edge325 ], [ %339, %383 ]
  %387 = phi i32 [ %334, %._crit_edge325 ], [ %.pre, %383 ]
  %388 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %389 = add nsw i32 %387, -1
  %390 = sext i32 %389 to i64
  %391 = load i32**** %181, align 8, !tbaa !30
  %392 = getelementptr inbounds i32*** %391, i64 %390
  %393 = load i32*** %392, align 8, !tbaa !18
  %394 = getelementptr inbounds i32** %393, i64 %197
  %395 = load i32** %394, align 8, !tbaa !18
  %396 = getelementptr inbounds i32* %395, i64 %.pre-phi341
  %397 = load i32* %396, align 4, !tbaa !21
  %398 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %388, i8* getelementptr inbounds ([11 x i8]* @.str57, i64 0, i64 0), i32 %.pre-phi339, i32 %397) #7
  %399 = load i32* %178, align 4, !tbaa !19
  %400 = icmp sgt i32 %399, 2
  br i1 %400, label %401, label %415

; <label>:401                                     ; preds = %386
  %402 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %403 = add nsw i32 %.58, 120
  %404 = sext i32 %.58 to i64
  %405 = add nsw i32 %399, -1
  %406 = sext i32 %405 to i64
  %407 = load i32**** %181, align 8, !tbaa !30
  %408 = getelementptr inbounds i32*** %407, i64 %406
  %409 = load i32*** %408, align 8, !tbaa !18
  %410 = getelementptr inbounds i32** %409, i64 %197
  %411 = load i32** %410, align 8, !tbaa !18
  %412 = getelementptr inbounds i32* %411, i64 %404
  %413 = load i32* %412, align 4, !tbaa !21
  %414 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %402, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0), i32 %403, i32 %413) #7
  br label %415

; <label>:415                                     ; preds = %401, %386
  %416 = load %struct.__sFILE** %280, align 8, !tbaa !18
  %417 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str59, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %416)
  br label %418

; <label>:418                                     ; preds = %325, %319, %194, %282, %329, %415, %284
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1
  %419 = icmp slt i64 %indvars.iv.next302, %193
  br i1 %419, label %194, label %420

; <label>:420                                     ; preds = %418
  call void @free(i8* %174) #8
  br label %.preheader137

.preheader137:                                    ; preds = %..preheader137_crit_edge, %420
  %.pre-phi337 = phi double** [ %.pre336, %..preheader137_crit_edge ], [ %192, %420 ]
  %.pre-phi335 = phi i32**** [ %.pre334, %..preheader137_crit_edge ], [ %181, %420 ]
  %.pre-phi331 = phi i32* [ %.pre330, %..preheader137_crit_edge ], [ %178, %420 ]
  %421 = icmp eq i32 %have_coords.1, 0
  %422 = getelementptr inbounds [3 x i32]* %directions, i64 0, i64 0
  %423 = bitcast double** %coord_data to i8**
  %424 = getelementptr inbounds %struct.cGroup* %group_static_data, i64 0, i32 3
  %425 = icmp ne i32 %have_coords.1, 0
  %426 = getelementptr inbounds [3 x double]* %coord_lower, i64 0, i64 0
  %427 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %428 = bitcast i8** %data to i32**
  %429 = bitcast i8** %data to double**
  %430 = bitcast i8** %data to i16**
  %431 = bitcast i8** %data to i64**
  %432 = bitcast i8** %data to float**
  %433 = bitcast i8** %data to x86_fp80**
  %434 = getelementptr inbounds [3 x i32]* %gsh, i64 0, i64 0
  %435 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %group_dynamic_data, i64 0, i32 1
  %436 = zext i32 %163 to i64
  br label %437

; <label>:437                                     ; preds = %._crit_edge305, %.preheader137
  %438 = phi i32 [ %34, %.preheader137 ], [ %.pre306, %._crit_edge305 ]
  %indvars.iv298 = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next299, %._crit_edge305 ]
  store i32 -1, i32* %length, align 4, !tbaa !21
  store i32 1, i32* %downsample, align 4, !tbaa !21
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %1217, label %440

; <label>:440                                     ; preds = %437
  %441 = icmp slt i64 %indvars.iv298, 3
  br i1 %441, label %452, label %442

; <label>:442                                     ; preds = %440
  %443 = call i32 @CCTK_GroupgshVI(%struct.cGH* %GH, i32 3, i32* %434, i32 %vindex) #7
  %444 = load i32** %435, align 8, !tbaa !41
  %445 = load i32* %444, align 4, !tbaa !21
  store i32 %445, i32* %length, align 4, !tbaa !21
  %446 = getelementptr inbounds i32* %444, i64 1
  %447 = load i32* %446, align 4, !tbaa !21
  %448 = icmp sgt i32 %445, %447
  %.59 = select i1 %448, i32 %447, i32 %445
  store i32 %.59, i32* %length, align 4, !tbaa !21
  %449 = getelementptr inbounds i32* %444, i64 2
  %450 = load i32* %449, align 4, !tbaa !21
  %451 = icmp sgt i32 %.59, %450
  %..59 = select i1 %451, i32 %450, i32 %.59
  br label %452

; <label>:452                                     ; preds = %440, %442
  %storemerge = phi i32 [ %..59, %442 ], [ -1, %440 ]
  store i32 %storemerge, i32* %length, align 4, !tbaa !21
  %453 = load i32* %130, align 4, !tbaa !27
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %457, label %.preheader136

.preheader136:                                    ; preds = %452
  %455 = trunc i64 %indvars.iv298 to i32
  %456 = icmp eq i32 %455, 3
  br label %478

; <label>:457                                     ; preds = %452
  br i1 %441, label %458, label %.preheader135

.preheader135:                                    ; preds = %457
  call void @memset_pattern16(i8* %1, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 12) #2
  store double* null, double** %coord_data, align 8, !tbaa !18
  br label %484

; <label>:458                                     ; preds = %457
  %459 = load i32* %.pre-phi331, align 4, !tbaa !19
  %460 = add nsw i32 %459, -1
  %461 = sext i32 %460 to i64
  %462 = load i32**** %.pre-phi335, align 8, !tbaa !30
  %463 = getelementptr inbounds i32*** %462, i64 %461
  %464 = load i32*** %463, align 8, !tbaa !18
  %465 = getelementptr inbounds i32** %464, i64 %indvars.iv298
  %466 = load i32** %465, align 8, !tbaa !18
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 12, i32 4, i1 false)
  %467 = getelementptr inbounds [3 x i32]* %directions, i64 0, i64 %indvars.iv298
  store i32 1, i32* %467, align 4, !tbaa !21
  br i1 %421, label %477, label %468

; <label>:468                                     ; preds = %458
  %469 = getelementptr inbounds [3 x i32]* %coord_index, i64 0, i64 %indvars.iv298
  %470 = load i32* %469, align 4, !tbaa !21
  %471 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %470, i32 0, i32 1, i32* %466, i32* %422, i32* %length, i32* %downsample, i8** %423, i32* %hsize) #7
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %473, label %484

; <label>:473                                     ; preds = %468
  %474 = add nuw nsw i64 %indvars.iv298, 120
  %475 = trunc i64 %474 to i32
  %476 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 552, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str60, i64 0, i64 0), i32 %475) #7
  br label %484

; <label>:477                                     ; preds = %458
  store double* null, double** %coord_data, align 8, !tbaa !18
  br label %484

; <label>:478                                     ; preds = %478, %.preheader136
  %indvars.iv = phi i64 [ 0, %.preheader136 ], [ %indvars.iv.next, %478 ]
  %479 = trunc i64 %indvars.iv to i32
  %480 = icmp eq i32 %455, %479
  %.60 = or i1 %456, %480
  %481 = zext i1 %.60 to i32
  %482 = getelementptr inbounds [3 x i32]* %directions, i64 0, i64 %indvars.iv
  store i32 %481, i32* %482, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %483, label %478

; <label>:483                                     ; preds = %478
  store double* null, double** %coord_data, align 8, !tbaa !18
  br label %484

; <label>:484                                     ; preds = %.preheader135, %468, %473, %477, %483
  %origin.0 = phi i32* [ %466, %473 ], [ %466, %468 ], [ %466, %477 ], [ getelementptr inbounds ([3 x i32]* @IOASCII_Write1D.zero_point, i64 0, i64 0), %.preheader135 ], [ getelementptr inbounds ([3 x i32]* @IOASCII_Write1D.zero_point, i64 0, i64 0), %483 ]
  %485 = call i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 0, i32 %vindex, i32 0, i32 1, i32* %origin.0, i32* %422, i32* %length, i32* %downsample, i8** %data, i32* %hsize) #7
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %493

; <label>:487                                     ; preds = %484
  %488 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 598, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str61, i64 0, i64 0), i8* %17) #7
  %489 = load double** %coord_data, align 8, !tbaa !18
  %490 = icmp eq double* %489, null
  br i1 %490, label %1217, label %491

; <label>:491                                     ; preds = %487
  %492 = bitcast double* %489 to i8*
  call void @free(i8* %492) #8
  br label %1217

; <label>:493                                     ; preds = %484
  br i1 %164, label %494, label %1217

; <label>:494                                     ; preds = %493
  %495 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %indvars.iv298
  %496 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %497 = icmp eq %struct.__sFILE* %496, null
  br i1 %497, label %1217, label %498

; <label>:498                                     ; preds = %494
  %499 = load i32* %130, align 4, !tbaa !27
  %500 = icmp eq i32 %499, 2
  br i1 %500, label %501, label %.loopexit134

; <label>:501                                     ; preds = %498
  br i1 %441, label %502, label %523

; <label>:502                                     ; preds = %501
  %503 = load i32* %424, align 4, !tbaa !22
  %504 = trunc i64 %indvars.iv298 to i32
  %505 = call i32 @CCTK_StaggerDirIndex(i32 %504, i32 %503) #7
  %506 = sitofp i32 %505 to double
  %507 = fmul double %506, 5.000000e-01
  %508 = load double** %.pre-phi337, align 8, !tbaa !40
  %509 = getelementptr inbounds double* %508, i64 %indvars.iv298
  %510 = load double* %509, align 8, !tbaa !39
  %511 = fmul double %507, %510
  store double %511, double* %offset, align 8, !tbaa !39
  br i1 %421, label %512, label %.loopexit134

; <label>:512                                     ; preds = %502
  %513 = load i32* %hsize, align 4, !tbaa !21
  %514 = sext i32 %513 to i64
  %515 = shl nsw i64 %514, 3
  %516 = call i8* @malloc(i64 %515) #7
  store i8* %516, i8** %423, align 8, !tbaa !18
  %517 = icmp sgt i32 %513, 0
  %518 = bitcast i8* %516 to double*
  br i1 %517, label %.lr.ph143, label %.loopexit134

.lr.ph143:                                        ; preds = %512, %.lr.ph143
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %.lr.ph143 ], [ 0, %512 ]
  %519 = trunc i64 %indvars.iv228 to i32
  %520 = sitofp i32 %519 to double
  %521 = getelementptr inbounds double* %518, i64 %indvars.iv228
  store double %520, double* %521, align 8, !tbaa !39
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %522 = icmp slt i64 %indvars.iv.next229, %514
  br i1 %522, label %.lr.ph143, label %.loopexit134

; <label>:523                                     ; preds = %501
  br i1 %425, label %524, label %528

; <label>:524                                     ; preds = %523
  %525 = load double** %.pre-phi337, align 8, !tbaa !40
  %526 = load double* %525, align 8, !tbaa !39
  %527 = fmul double %526, 0x3FFBB67AE8584CAA
  br label %528

; <label>:528                                     ; preds = %523, %524
  %529 = phi double [ %527, %524 ], [ 0x3FFBB67AE8584CAA, %523 ]
  store double %529, double* %offset, align 8, !tbaa !39
  %530 = load i32* %hsize, align 4, !tbaa !21
  %531 = sext i32 %530 to i64
  %532 = shl nsw i64 %531, 3
  %533 = call i8* @malloc(i64 %532) #7
  store i8* %533, i8** %423, align 8, !tbaa !18
  %534 = icmp sgt i32 %530, 0
  %535 = bitcast i8* %533 to double*
  br i1 %534, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %528
  %536 = fmul double %529, 0.000000e+00
  store double %536, double* %535, align 8, !tbaa !39
  %537 = icmp sgt i32 %530, 1
  br i1 %537, label %._crit_edge307, label %._crit_edge

._crit_edge307:                                   ; preds = %.lr.ph.preheader, %._crit_edge307
  %indvars.iv.next227380 = phi i64 [ %indvars.iv.next227, %._crit_edge307 ], [ 1, %.lr.ph.preheader ]
  %.pre308 = load double* %offset, align 8, !tbaa !39
  %538 = trunc i64 %indvars.iv.next227380 to i32
  %539 = sitofp i32 %538 to double
  %540 = fmul double %539, %.pre308
  %541 = getelementptr inbounds double* %535, i64 %indvars.iv.next227380
  store double %540, double* %541, align 8, !tbaa !39
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv.next227380, 1
  %542 = icmp slt i64 %indvars.iv.next227, %531
  br i1 %542, label %._crit_edge307, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %._crit_edge307, %528
  br i1 %425, label %543, label %546

; <label>:543                                     ; preds = %._crit_edge
  %544 = load double* %426, align 16, !tbaa !39
  %545 = fmul double %544, 0x3FFBB67AE8584CAA
  store double %545, double* %offset, align 8, !tbaa !39
  br label %.loopexit134

; <label>:546                                     ; preds = %._crit_edge
  store double 0.000000e+00, double* %offset, align 8, !tbaa !39
  br label %.loopexit134

.loopexit134:                                     ; preds = %.lr.ph143, %512, %502, %546, %543, %498
  %547 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %548 = load double* %427, align 8, !tbaa !25
  %549 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %547, i8* %98, double %548) #7
  %550 = load i32* %155, align 4, !tbaa !28
  switch i32 %550, label %1192 [
    i32 1, label %551
    i32 2, label %584
    i32 6, label %615
    i32 10, label %646
    i32 3, label %731
    i32 4, label %764
    i32 5, label %795
    i32 7, label %828
    i32 11, label %861
    i32 8, label %952
    i32 12, label %983
    i32 9, label %1068
    i32 13, label %1101
  ]

; <label>:551                                     ; preds = %.loopexit134
  %552 = load i8** %data, align 8, !tbaa !18
  %553 = load i32* %130, align 4, !tbaa !27
  %554 = icmp eq i32 %553, 2
  %555 = load i32* %hsize, align 4, !tbaa !21
  %556 = icmp sgt i32 %555, 0
  br i1 %554, label %.preheader, label %.preheader68

.preheader68:                                     ; preds = %551
  br i1 %556, label %.lr.ph209, label %.loopexit

.preheader:                                       ; preds = %551
  br i1 %556, label %.lr.ph211, label %.loopexit

.lr.ph211:                                        ; preds = %.preheader, %.lr.ph211
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.lr.ph211 ], [ 0, %.preheader ]
  %557 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %558 = load double** %coord_data, align 8, !tbaa !18
  %559 = getelementptr inbounds double* %558, i64 %indvars.iv296
  %560 = load double* %559, align 8, !tbaa !39
  %561 = load double* %offset, align 8, !tbaa !39
  %562 = fadd double %560, %561
  %563 = getelementptr inbounds i8* %552, i64 %indvars.iv296
  %564 = load i8* %563, align 1, !tbaa !32
  %565 = zext i8 %564 to i32
  %566 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %557, i8* %.pre-phi, double %562, i32 %565) #7
  %567 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %568 = call i32 @fputc(i32 10, %struct.__sFILE* %567) #7
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %569 = load i32* %hsize, align 4, !tbaa !21
  %570 = sext i32 %569 to i64
  %571 = icmp slt i64 %indvars.iv.next297, %570
  br i1 %571, label %.lr.ph211, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader68, %.lr.ph209
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph209 ], [ 0, %.preheader68 ]
  %572 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %573 = trunc i64 %indvars.iv294 to i32
  %574 = sitofp i32 %573 to double
  %575 = getelementptr inbounds i8* %552, i64 %indvars.iv294
  %576 = load i8* %575, align 1, !tbaa !32
  %577 = zext i8 %576 to i32
  %578 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %572, i8* %.pre-phi, double %574, i32 %577) #7
  %579 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %580 = call i32 @fputc(i32 10, %struct.__sFILE* %579) #7
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  %581 = load i32* %hsize, align 4, !tbaa !21
  %582 = sext i32 %581 to i64
  %583 = icmp slt i64 %indvars.iv.next295, %582
  br i1 %583, label %.lr.ph209, label %.loopexit

; <label>:584                                     ; preds = %.loopexit134
  %585 = load i32** %428, align 8, !tbaa !18
  %586 = load i32* %130, align 4, !tbaa !27
  %587 = icmp eq i32 %586, 2
  %588 = load i32* %hsize, align 4, !tbaa !21
  %589 = icmp sgt i32 %588, 0
  br i1 %587, label %.preheader70, label %.preheader72

.preheader72:                                     ; preds = %584
  br i1 %589, label %.lr.ph205, label %.loopexit

.preheader70:                                     ; preds = %584
  br i1 %589, label %.lr.ph207, label %.loopexit

.lr.ph207:                                        ; preds = %.preheader70, %.lr.ph207
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %.lr.ph207 ], [ 0, %.preheader70 ]
  %590 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %591 = load double** %coord_data, align 8, !tbaa !18
  %592 = getelementptr inbounds double* %591, i64 %indvars.iv292
  %593 = load double* %592, align 8, !tbaa !39
  %594 = load double* %offset, align 8, !tbaa !39
  %595 = fadd double %593, %594
  %596 = getelementptr inbounds i32* %585, i64 %indvars.iv292
  %597 = load i32* %596, align 4, !tbaa !21
  %598 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %590, i8* %.pre-phi, double %595, i32 %597) #7
  %599 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %600 = call i32 @fputc(i32 10, %struct.__sFILE* %599) #7
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %601 = load i32* %hsize, align 4, !tbaa !21
  %602 = sext i32 %601 to i64
  %603 = icmp slt i64 %indvars.iv.next293, %602
  br i1 %603, label %.lr.ph207, label %.loopexit

.lr.ph205:                                        ; preds = %.preheader72, %.lr.ph205
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph205 ], [ 0, %.preheader72 ]
  %604 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %605 = trunc i64 %indvars.iv290 to i32
  %606 = sitofp i32 %605 to double
  %607 = getelementptr inbounds i32* %585, i64 %indvars.iv290
  %608 = load i32* %607, align 4, !tbaa !21
  %609 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %604, i8* %.pre-phi, double %606, i32 %608) #7
  %610 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %611 = call i32 @fputc(i32 10, %struct.__sFILE* %610) #7
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1
  %612 = load i32* %hsize, align 4, !tbaa !21
  %613 = sext i32 %612 to i64
  %614 = icmp slt i64 %indvars.iv.next291, %613
  br i1 %614, label %.lr.ph205, label %.loopexit

; <label>:615                                     ; preds = %.loopexit134
  %616 = load double** %429, align 8, !tbaa !18
  %617 = load i32* %130, align 4, !tbaa !27
  %618 = icmp eq i32 %617, 2
  %619 = load i32* %hsize, align 4, !tbaa !21
  %620 = icmp sgt i32 %619, 0
  br i1 %618, label %.preheader74, label %.preheader76

.preheader76:                                     ; preds = %615
  br i1 %620, label %.lr.ph201, label %.loopexit

.preheader74:                                     ; preds = %615
  br i1 %620, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %.preheader74, %.lr.ph203
  %indvars.iv288 = phi i64 [ %indvars.iv.next289, %.lr.ph203 ], [ 0, %.preheader74 ]
  %621 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %622 = load double** %coord_data, align 8, !tbaa !18
  %623 = getelementptr inbounds double* %622, i64 %indvars.iv288
  %624 = load double* %623, align 8, !tbaa !39
  %625 = load double* %offset, align 8, !tbaa !39
  %626 = fadd double %624, %625
  %627 = getelementptr inbounds double* %616, i64 %indvars.iv288
  %628 = load double* %627, align 8, !tbaa !39
  %629 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %621, i8* %.pre-phi329, double %626, double %628) #7
  %630 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %631 = call i32 @fputc(i32 10, %struct.__sFILE* %630) #7
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1
  %632 = load i32* %hsize, align 4, !tbaa !21
  %633 = sext i32 %632 to i64
  %634 = icmp slt i64 %indvars.iv.next289, %633
  br i1 %634, label %.lr.ph203, label %.loopexit

.lr.ph201:                                        ; preds = %.preheader76, %.lr.ph201
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph201 ], [ 0, %.preheader76 ]
  %635 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %636 = trunc i64 %indvars.iv286 to i32
  %637 = sitofp i32 %636 to double
  %638 = getelementptr inbounds double* %616, i64 %indvars.iv286
  %639 = load double* %638, align 8, !tbaa !39
  %640 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %635, i8* %.pre-phi329, double %637, double %639) #7
  %641 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %642 = call i32 @fputc(i32 10, %struct.__sFILE* %641) #7
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1
  %643 = load i32* %hsize, align 4, !tbaa !21
  %644 = sext i32 %643 to i64
  %645 = icmp slt i64 %indvars.iv.next287, %644
  br i1 %645, label %.lr.ph201, label %.loopexit

; <label>:646                                     ; preds = %.loopexit134
  %647 = load double** %429, align 8, !tbaa !18
  %648 = load i32* %130, align 4, !tbaa !27
  %649 = icmp eq i32 %648, 2
  %650 = load i32* %hsize, align 4, !tbaa !21
  %651 = mul nsw i32 %650, %163
  %652 = icmp sgt i32 %651, 0
  br i1 %649, label %.preheader82, label %.preheader84

.preheader84:                                     ; preds = %646
  br i1 %652, label %.lr.ph193, label %.loopexit83

.preheader82:                                     ; preds = %646
  br i1 %652, label %.lr.ph195, label %.loopexit83

.lr.ph195:                                        ; preds = %.preheader82, %668
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %668 ], [ 0, %.preheader82 ]
  %653 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %654 = load double** %coord_data, align 8, !tbaa !18
  %655 = getelementptr inbounds double* %654, i64 %indvars.iv280
  %656 = load double* %655, align 8, !tbaa !39
  %657 = load double* %offset, align 8, !tbaa !39
  %658 = fadd double %656, %657
  %659 = getelementptr inbounds double* %647, i64 %indvars.iv280
  %660 = load double* %659, align 8, !tbaa !39
  %661 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %653, i8* %.pre-phi329, double %658, double %660) #7
  br i1 %162, label %668, label %662

; <label>:662                                     ; preds = %.lr.ph195
  %663 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %664 = add nsw i64 %indvars.iv280, 1
  %665 = getelementptr inbounds double* %647, i64 %664
  %666 = load double* %665, align 8, !tbaa !39
  %667 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %663, i8* %108, double %666) #7
  br label %668

; <label>:668                                     ; preds = %.lr.ph195, %662
  %669 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %670 = call i32 @fputc(i32 10, %struct.__sFILE* %669) #7
  %indvars.iv.next281 = add i64 %indvars.iv280, %436
  %671 = load i32* %hsize, align 4, !tbaa !21
  %672 = mul nsw i32 %671, %163
  %673 = sext i32 %672 to i64
  %674 = icmp slt i64 %indvars.iv.next281, %673
  br i1 %674, label %.lr.ph195, label %.loopexit83

.lr.ph193:                                        ; preds = %.preheader84, %687
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %687 ], [ 0, %.preheader84 ]
  %675 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %676 = trunc i64 %indvars.iv278 to i32
  %677 = sitofp i32 %676 to double
  %678 = getelementptr inbounds double* %647, i64 %indvars.iv278
  %679 = load double* %678, align 8, !tbaa !39
  %680 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %675, i8* %.pre-phi329, double %677, double %679) #7
  br i1 %162, label %687, label %681

; <label>:681                                     ; preds = %.lr.ph193
  %682 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %683 = add nsw i64 %indvars.iv278, 1
  %684 = getelementptr inbounds double* %647, i64 %683
  %685 = load double* %684, align 8, !tbaa !39
  %686 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %682, i8* %108, double %685) #7
  br label %687

; <label>:687                                     ; preds = %.lr.ph193, %681
  %688 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %689 = call i32 @fputc(i32 10, %struct.__sFILE* %688) #7
  %indvars.iv.next279 = add i64 %indvars.iv278, %436
  %690 = load i32* %hsize, align 4, !tbaa !21
  %691 = mul nsw i32 %690, %163
  %692 = sext i32 %691 to i64
  %693 = icmp slt i64 %indvars.iv.next279, %692
  br i1 %693, label %.lr.ph193, label %.loopexit83

.loopexit83:                                      ; preds = %687, %668, %.preheader84, %.preheader82
  br i1 %162, label %694, label %.critedge64

; <label>:694                                     ; preds = %.loopexit83
  %695 = add nuw nsw i64 %indvars.iv298, 4
  %696 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %695
  %697 = load %struct.__sFILE** %696, align 8, !tbaa !18
  %698 = load double* %427, align 8, !tbaa !25
  %699 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %697, i8* %98, double %698) #7
  %700 = load double** %429, align 8, !tbaa !18
  %701 = load i32* %130, align 4, !tbaa !27
  %702 = icmp eq i32 %701, 2
  %703 = load i32* %hsize, align 4, !tbaa !21
  %704 = mul nsw i32 %703, %163
  %705 = icmp sgt i32 %704, 1
  br i1 %702, label %.preheader78, label %.preheader80

.preheader80:                                     ; preds = %694
  br i1 %705, label %.preheader350, label %.loopexit.thread

.preheader78:                                     ; preds = %694
  br i1 %705, label %.preheader348, label %.loopexit.thread

.preheader348:                                    ; preds = %.preheader78, %.preheader348
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.preheader348 ], [ 1, %.preheader78 ]
  %706 = load %struct.__sFILE** %696, align 8, !tbaa !18
  %707 = load double** %coord_data, align 8, !tbaa !18
  %708 = getelementptr inbounds double* %707, i64 %indvars.iv284
  %709 = load double* %708, align 8, !tbaa !39
  %710 = load double* %offset, align 8, !tbaa !39
  %711 = fadd double %709, %710
  %712 = getelementptr inbounds double* %700, i64 %indvars.iv284
  %713 = load double* %712, align 8, !tbaa !39
  %714 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %706, i8* %.pre-phi329, double %711, double %713) #7
  %.pre324 = load %struct.__sFILE** %696, align 8, !tbaa !18
  %715 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre324) #7
  %indvars.iv.next285 = add i64 %indvars.iv284, %436
  %716 = load i32* %hsize, align 4, !tbaa !21
  %717 = mul nsw i32 %716, %163
  %718 = sext i32 %717 to i64
  %719 = icmp slt i64 %indvars.iv.next285, %718
  br i1 %719, label %.preheader348, label %.loopexit

.preheader350:                                    ; preds = %.preheader80, %.preheader350
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %.preheader350 ], [ 1, %.preheader80 ]
  %720 = load %struct.__sFILE** %696, align 8, !tbaa !18
  %721 = trunc i64 %indvars.iv282 to i32
  %722 = sitofp i32 %721 to double
  %723 = getelementptr inbounds double* %700, i64 %indvars.iv282
  %724 = load double* %723, align 8, !tbaa !39
  %725 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %720, i8* %.pre-phi329, double %722, double %724) #7
  %.pre322 = load %struct.__sFILE** %696, align 8, !tbaa !18
  %726 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre322) #7
  %indvars.iv.next283 = add i64 %indvars.iv282, %436
  %727 = load i32* %hsize, align 4, !tbaa !21
  %728 = mul nsw i32 %727, %163
  %729 = sext i32 %728 to i64
  %730 = icmp slt i64 %indvars.iv.next283, %729
  br i1 %730, label %.preheader350, label %.loopexit

; <label>:731                                     ; preds = %.loopexit134
  %732 = load i16** %430, align 8, !tbaa !18
  %733 = load i32* %130, align 4, !tbaa !27
  %734 = icmp eq i32 %733, 2
  %735 = load i32* %hsize, align 4, !tbaa !21
  %736 = icmp sgt i32 %735, 0
  br i1 %734, label %.preheader86, label %.preheader88

.preheader88:                                     ; preds = %731
  br i1 %736, label %.lr.ph189, label %.loopexit

.preheader86:                                     ; preds = %731
  br i1 %736, label %.lr.ph191, label %.loopexit

.lr.ph191:                                        ; preds = %.preheader86, %.lr.ph191
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.lr.ph191 ], [ 0, %.preheader86 ]
  %737 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %738 = load double** %coord_data, align 8, !tbaa !18
  %739 = getelementptr inbounds double* %738, i64 %indvars.iv276
  %740 = load double* %739, align 8, !tbaa !39
  %741 = load double* %offset, align 8, !tbaa !39
  %742 = fadd double %740, %741
  %743 = getelementptr inbounds i16* %732, i64 %indvars.iv276
  %744 = load i16* %743, align 2, !tbaa !43
  %745 = sext i16 %744 to i32
  %746 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %737, i8* %.pre-phi, double %742, i32 %745) #7
  %747 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %748 = call i32 @fputc(i32 10, %struct.__sFILE* %747) #7
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  %749 = load i32* %hsize, align 4, !tbaa !21
  %750 = sext i32 %749 to i64
  %751 = icmp slt i64 %indvars.iv.next277, %750
  br i1 %751, label %.lr.ph191, label %.loopexit

.lr.ph189:                                        ; preds = %.preheader88, %.lr.ph189
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.lr.ph189 ], [ 0, %.preheader88 ]
  %752 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %753 = trunc i64 %indvars.iv274 to i32
  %754 = sitofp i32 %753 to double
  %755 = getelementptr inbounds i16* %732, i64 %indvars.iv274
  %756 = load i16* %755, align 2, !tbaa !43
  %757 = sext i16 %756 to i32
  %758 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %752, i8* %.pre-phi, double %754, i32 %757) #7
  %759 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %760 = call i32 @fputc(i32 10, %struct.__sFILE* %759) #7
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1
  %761 = load i32* %hsize, align 4, !tbaa !21
  %762 = sext i32 %761 to i64
  %763 = icmp slt i64 %indvars.iv.next275, %762
  br i1 %763, label %.lr.ph189, label %.loopexit

; <label>:764                                     ; preds = %.loopexit134
  %765 = load i32** %428, align 8, !tbaa !18
  %766 = load i32* %130, align 4, !tbaa !27
  %767 = icmp eq i32 %766, 2
  %768 = load i32* %hsize, align 4, !tbaa !21
  %769 = icmp sgt i32 %768, 0
  br i1 %767, label %.preheader90, label %.preheader92

.preheader92:                                     ; preds = %764
  br i1 %769, label %.lr.ph185, label %.loopexit

.preheader90:                                     ; preds = %764
  br i1 %769, label %.lr.ph187, label %.loopexit

.lr.ph187:                                        ; preds = %.preheader90, %.lr.ph187
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %.lr.ph187 ], [ 0, %.preheader90 ]
  %770 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %771 = load double** %coord_data, align 8, !tbaa !18
  %772 = getelementptr inbounds double* %771, i64 %indvars.iv272
  %773 = load double* %772, align 8, !tbaa !39
  %774 = load double* %offset, align 8, !tbaa !39
  %775 = fadd double %773, %774
  %776 = getelementptr inbounds i32* %765, i64 %indvars.iv272
  %777 = load i32* %776, align 4, !tbaa !21
  %778 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %770, i8* %.pre-phi, double %775, i32 %777) #7
  %779 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %780 = call i32 @fputc(i32 10, %struct.__sFILE* %779) #7
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %781 = load i32* %hsize, align 4, !tbaa !21
  %782 = sext i32 %781 to i64
  %783 = icmp slt i64 %indvars.iv.next273, %782
  br i1 %783, label %.lr.ph187, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader92, %.lr.ph185
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %.lr.ph185 ], [ 0, %.preheader92 ]
  %784 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %785 = trunc i64 %indvars.iv270 to i32
  %786 = sitofp i32 %785 to double
  %787 = getelementptr inbounds i32* %765, i64 %indvars.iv270
  %788 = load i32* %787, align 4, !tbaa !21
  %789 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %784, i8* %.pre-phi, double %786, i32 %788) #7
  %790 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %791 = call i32 @fputc(i32 10, %struct.__sFILE* %790) #7
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1
  %792 = load i32* %hsize, align 4, !tbaa !21
  %793 = sext i32 %792 to i64
  %794 = icmp slt i64 %indvars.iv.next271, %793
  br i1 %794, label %.lr.ph185, label %.loopexit

; <label>:795                                     ; preds = %.loopexit134
  %796 = load i64** %431, align 8, !tbaa !18
  %797 = load i32* %130, align 4, !tbaa !27
  %798 = icmp eq i32 %797, 2
  %799 = load i32* %hsize, align 4, !tbaa !21
  %800 = icmp sgt i32 %799, 0
  br i1 %798, label %.preheader94, label %.preheader96

.preheader96:                                     ; preds = %795
  br i1 %800, label %.lr.ph181, label %.loopexit

.preheader94:                                     ; preds = %795
  br i1 %800, label %.lr.ph183, label %.loopexit

.lr.ph183:                                        ; preds = %.preheader94, %.lr.ph183
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph183 ], [ 0, %.preheader94 ]
  %801 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %802 = load double** %coord_data, align 8, !tbaa !18
  %803 = getelementptr inbounds double* %802, i64 %indvars.iv268
  %804 = load double* %803, align 8, !tbaa !39
  %805 = load double* %offset, align 8, !tbaa !39
  %806 = fadd double %804, %805
  %807 = getelementptr inbounds i64* %796, i64 %indvars.iv268
  %808 = load i64* %807, align 8, !tbaa !45
  %809 = trunc i64 %808 to i32
  %810 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %801, i8* %.pre-phi, double %806, i32 %809) #7
  %811 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %812 = call i32 @fputc(i32 10, %struct.__sFILE* %811) #7
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1
  %813 = load i32* %hsize, align 4, !tbaa !21
  %814 = sext i32 %813 to i64
  %815 = icmp slt i64 %indvars.iv.next269, %814
  br i1 %815, label %.lr.ph183, label %.loopexit

.lr.ph181:                                        ; preds = %.preheader96, %.lr.ph181
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph181 ], [ 0, %.preheader96 ]
  %816 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %817 = trunc i64 %indvars.iv266 to i32
  %818 = sitofp i32 %817 to double
  %819 = getelementptr inbounds i64* %796, i64 %indvars.iv266
  %820 = load i64* %819, align 8, !tbaa !45
  %821 = trunc i64 %820 to i32
  %822 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %816, i8* %.pre-phi, double %818, i32 %821) #7
  %823 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %824 = call i32 @fputc(i32 10, %struct.__sFILE* %823) #7
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  %825 = load i32* %hsize, align 4, !tbaa !21
  %826 = sext i32 %825 to i64
  %827 = icmp slt i64 %indvars.iv.next267, %826
  br i1 %827, label %.lr.ph181, label %.loopexit

; <label>:828                                     ; preds = %.loopexit134
  %829 = load float** %432, align 8, !tbaa !18
  %830 = load i32* %130, align 4, !tbaa !27
  %831 = icmp eq i32 %830, 2
  %832 = load i32* %hsize, align 4, !tbaa !21
  %833 = icmp sgt i32 %832, 0
  br i1 %831, label %.preheader98, label %.preheader100

.preheader100:                                    ; preds = %828
  br i1 %833, label %.lr.ph177, label %.loopexit

.preheader98:                                     ; preds = %828
  br i1 %833, label %.lr.ph179, label %.loopexit

.lr.ph179:                                        ; preds = %.preheader98, %.lr.ph179
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.lr.ph179 ], [ 0, %.preheader98 ]
  %834 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %835 = load double** %coord_data, align 8, !tbaa !18
  %836 = getelementptr inbounds double* %835, i64 %indvars.iv264
  %837 = load double* %836, align 8, !tbaa !39
  %838 = load double* %offset, align 8, !tbaa !39
  %839 = fadd double %837, %838
  %840 = getelementptr inbounds float* %829, i64 %indvars.iv264
  %841 = load float* %840, align 4, !tbaa !47
  %842 = fpext float %841 to double
  %843 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %834, i8* %.pre-phi329, double %839, double %842) #7
  %844 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %845 = call i32 @fputc(i32 10, %struct.__sFILE* %844) #7
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1
  %846 = load i32* %hsize, align 4, !tbaa !21
  %847 = sext i32 %846 to i64
  %848 = icmp slt i64 %indvars.iv.next265, %847
  br i1 %848, label %.lr.ph179, label %.loopexit

.lr.ph177:                                        ; preds = %.preheader100, %.lr.ph177
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph177 ], [ 0, %.preheader100 ]
  %849 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %850 = trunc i64 %indvars.iv262 to i32
  %851 = sitofp i32 %850 to double
  %852 = getelementptr inbounds float* %829, i64 %indvars.iv262
  %853 = load float* %852, align 4, !tbaa !47
  %854 = fpext float %853 to double
  %855 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %849, i8* %.pre-phi329, double %851, double %854) #7
  %856 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %857 = call i32 @fputc(i32 10, %struct.__sFILE* %856) #7
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1
  %858 = load i32* %hsize, align 4, !tbaa !21
  %859 = sext i32 %858 to i64
  %860 = icmp slt i64 %indvars.iv.next263, %859
  br i1 %860, label %.lr.ph177, label %.loopexit

; <label>:861                                     ; preds = %.loopexit134
  %862 = load float** %432, align 8, !tbaa !18
  %863 = load i32* %130, align 4, !tbaa !27
  %864 = icmp eq i32 %863, 2
  %865 = load i32* %hsize, align 4, !tbaa !21
  %866 = mul nsw i32 %865, %163
  %867 = icmp sgt i32 %866, 0
  br i1 %864, label %.preheader106, label %.preheader108

.preheader108:                                    ; preds = %861
  br i1 %867, label %.lr.ph169, label %.loopexit107

.preheader106:                                    ; preds = %861
  br i1 %867, label %.lr.ph171, label %.loopexit107

.lr.ph171:                                        ; preds = %.preheader106, %885
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %885 ], [ 0, %.preheader106 ]
  %868 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %869 = load double** %coord_data, align 8, !tbaa !18
  %870 = getelementptr inbounds double* %869, i64 %indvars.iv256
  %871 = load double* %870, align 8, !tbaa !39
  %872 = load double* %offset, align 8, !tbaa !39
  %873 = fadd double %871, %872
  %874 = getelementptr inbounds float* %862, i64 %indvars.iv256
  %875 = load float* %874, align 4, !tbaa !47
  %876 = fpext float %875 to double
  %877 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %868, i8* %.pre-phi329, double %873, double %876) #7
  br i1 %162, label %885, label %878

; <label>:878                                     ; preds = %.lr.ph171
  %879 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %880 = add nsw i64 %indvars.iv256, 1
  %881 = getelementptr inbounds float* %862, i64 %880
  %882 = load float* %881, align 4, !tbaa !47
  %883 = fpext float %882 to double
  %884 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %879, i8* %108, double %883) #7
  br label %885

; <label>:885                                     ; preds = %.lr.ph171, %878
  %886 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %887 = call i32 @fputc(i32 10, %struct.__sFILE* %886) #7
  %indvars.iv.next257 = add i64 %indvars.iv256, %436
  %888 = load i32* %hsize, align 4, !tbaa !21
  %889 = mul nsw i32 %888, %163
  %890 = sext i32 %889 to i64
  %891 = icmp slt i64 %indvars.iv.next257, %890
  br i1 %891, label %.lr.ph171, label %.loopexit107

.lr.ph169:                                        ; preds = %.preheader108, %906
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %906 ], [ 0, %.preheader108 ]
  %892 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %893 = trunc i64 %indvars.iv254 to i32
  %894 = sitofp i32 %893 to double
  %895 = getelementptr inbounds float* %862, i64 %indvars.iv254
  %896 = load float* %895, align 4, !tbaa !47
  %897 = fpext float %896 to double
  %898 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %892, i8* %.pre-phi329, double %894, double %897) #7
  br i1 %162, label %906, label %899

; <label>:899                                     ; preds = %.lr.ph169
  %900 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %901 = add nsw i64 %indvars.iv254, 1
  %902 = getelementptr inbounds float* %862, i64 %901
  %903 = load float* %902, align 4, !tbaa !47
  %904 = fpext float %903 to double
  %905 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %900, i8* %108, double %904) #7
  br label %906

; <label>:906                                     ; preds = %.lr.ph169, %899
  %907 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %908 = call i32 @fputc(i32 10, %struct.__sFILE* %907) #7
  %indvars.iv.next255 = add i64 %indvars.iv254, %436
  %909 = load i32* %hsize, align 4, !tbaa !21
  %910 = mul nsw i32 %909, %163
  %911 = sext i32 %910 to i64
  %912 = icmp slt i64 %indvars.iv.next255, %911
  br i1 %912, label %.lr.ph169, label %.loopexit107

.loopexit107:                                     ; preds = %906, %885, %.preheader108, %.preheader106
  br i1 %162, label %913, label %.critedge63

; <label>:913                                     ; preds = %.loopexit107
  %914 = add nuw nsw i64 %indvars.iv298, 4
  %915 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %914
  %916 = load %struct.__sFILE** %915, align 8, !tbaa !18
  %917 = load double* %427, align 8, !tbaa !25
  %918 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %916, i8* %98, double %917) #7
  %919 = load float** %432, align 8, !tbaa !18
  %920 = load i32* %130, align 4, !tbaa !27
  %921 = icmp eq i32 %920, 2
  %922 = load i32* %hsize, align 4, !tbaa !21
  %923 = mul nsw i32 %922, %163
  %924 = icmp sgt i32 %923, 1
  br i1 %921, label %.preheader102, label %.preheader104

.preheader104:                                    ; preds = %913
  br i1 %924, label %.preheader363, label %.loopexit.thread

.preheader102:                                    ; preds = %913
  br i1 %924, label %.preheader361, label %.loopexit.thread

.preheader361:                                    ; preds = %.preheader102, %.preheader361
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %.preheader361 ], [ 1, %.preheader102 ]
  %925 = load %struct.__sFILE** %915, align 8, !tbaa !18
  %926 = load double** %coord_data, align 8, !tbaa !18
  %927 = getelementptr inbounds double* %926, i64 %indvars.iv260
  %928 = load double* %927, align 8, !tbaa !39
  %929 = load double* %offset, align 8, !tbaa !39
  %930 = fadd double %928, %929
  %931 = getelementptr inbounds float* %919, i64 %indvars.iv260
  %932 = load float* %931, align 4, !tbaa !47
  %933 = fpext float %932 to double
  %934 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %925, i8* %.pre-phi329, double %930, double %933) #7
  %.pre320 = load %struct.__sFILE** %915, align 8, !tbaa !18
  %935 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre320) #7
  %indvars.iv.next261 = add i64 %indvars.iv260, %436
  %936 = load i32* %hsize, align 4, !tbaa !21
  %937 = mul nsw i32 %936, %163
  %938 = sext i32 %937 to i64
  %939 = icmp slt i64 %indvars.iv.next261, %938
  br i1 %939, label %.preheader361, label %.loopexit

.preheader363:                                    ; preds = %.preheader104, %.preheader363
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %.preheader363 ], [ 1, %.preheader104 ]
  %940 = load %struct.__sFILE** %915, align 8, !tbaa !18
  %941 = trunc i64 %indvars.iv258 to i32
  %942 = sitofp i32 %941 to double
  %943 = getelementptr inbounds float* %919, i64 %indvars.iv258
  %944 = load float* %943, align 4, !tbaa !47
  %945 = fpext float %944 to double
  %946 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %940, i8* %.pre-phi329, double %942, double %945) #7
  %.pre318 = load %struct.__sFILE** %915, align 8, !tbaa !18
  %947 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre318) #7
  %indvars.iv.next259 = add i64 %indvars.iv258, %436
  %948 = load i32* %hsize, align 4, !tbaa !21
  %949 = mul nsw i32 %948, %163
  %950 = sext i32 %949 to i64
  %951 = icmp slt i64 %indvars.iv.next259, %950
  br i1 %951, label %.preheader363, label %.loopexit

; <label>:952                                     ; preds = %.loopexit134
  %953 = load double** %429, align 8, !tbaa !18
  %954 = load i32* %130, align 4, !tbaa !27
  %955 = icmp eq i32 %954, 2
  %956 = load i32* %hsize, align 4, !tbaa !21
  %957 = icmp sgt i32 %956, 0
  br i1 %955, label %.preheader110, label %.preheader112

.preheader112:                                    ; preds = %952
  br i1 %957, label %.lr.ph165, label %.loopexit

.preheader110:                                    ; preds = %952
  br i1 %957, label %.lr.ph167, label %.loopexit

.lr.ph167:                                        ; preds = %.preheader110, %.lr.ph167
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %.lr.ph167 ], [ 0, %.preheader110 ]
  %958 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %959 = load double** %coord_data, align 8, !tbaa !18
  %960 = getelementptr inbounds double* %959, i64 %indvars.iv252
  %961 = load double* %960, align 8, !tbaa !39
  %962 = load double* %offset, align 8, !tbaa !39
  %963 = fadd double %961, %962
  %964 = getelementptr inbounds double* %953, i64 %indvars.iv252
  %965 = load double* %964, align 8, !tbaa !39
  %966 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %958, i8* %.pre-phi329, double %963, double %965) #7
  %967 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %968 = call i32 @fputc(i32 10, %struct.__sFILE* %967) #7
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  %969 = load i32* %hsize, align 4, !tbaa !21
  %970 = sext i32 %969 to i64
  %971 = icmp slt i64 %indvars.iv.next253, %970
  br i1 %971, label %.lr.ph167, label %.loopexit

.lr.ph165:                                        ; preds = %.preheader112, %.lr.ph165
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %.lr.ph165 ], [ 0, %.preheader112 ]
  %972 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %973 = trunc i64 %indvars.iv250 to i32
  %974 = sitofp i32 %973 to double
  %975 = getelementptr inbounds double* %953, i64 %indvars.iv250
  %976 = load double* %975, align 8, !tbaa !39
  %977 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %972, i8* %.pre-phi329, double %974, double %976) #7
  %978 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %979 = call i32 @fputc(i32 10, %struct.__sFILE* %978) #7
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %980 = load i32* %hsize, align 4, !tbaa !21
  %981 = sext i32 %980 to i64
  %982 = icmp slt i64 %indvars.iv.next251, %981
  br i1 %982, label %.lr.ph165, label %.loopexit

; <label>:983                                     ; preds = %.loopexit134
  %984 = load double** %429, align 8, !tbaa !18
  %985 = load i32* %130, align 4, !tbaa !27
  %986 = icmp eq i32 %985, 2
  %987 = load i32* %hsize, align 4, !tbaa !21
  %988 = mul nsw i32 %987, %163
  %989 = icmp sgt i32 %988, 0
  br i1 %986, label %.preheader118, label %.preheader120

.preheader120:                                    ; preds = %983
  br i1 %989, label %.lr.ph157, label %.loopexit119

.preheader118:                                    ; preds = %983
  br i1 %989, label %.lr.ph159, label %.loopexit119

.lr.ph159:                                        ; preds = %.preheader118, %1005
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %1005 ], [ 0, %.preheader118 ]
  %990 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %991 = load double** %coord_data, align 8, !tbaa !18
  %992 = getelementptr inbounds double* %991, i64 %indvars.iv244
  %993 = load double* %992, align 8, !tbaa !39
  %994 = load double* %offset, align 8, !tbaa !39
  %995 = fadd double %993, %994
  %996 = getelementptr inbounds double* %984, i64 %indvars.iv244
  %997 = load double* %996, align 8, !tbaa !39
  %998 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %990, i8* %.pre-phi329, double %995, double %997) #7
  br i1 %162, label %1005, label %999

; <label>:999                                     ; preds = %.lr.ph159
  %1000 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1001 = add nsw i64 %indvars.iv244, 1
  %1002 = getelementptr inbounds double* %984, i64 %1001
  %1003 = load double* %1002, align 8, !tbaa !39
  %1004 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1000, i8* %108, double %1003) #7
  br label %1005

; <label>:1005                                    ; preds = %.lr.ph159, %999
  %1006 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1007 = call i32 @fputc(i32 10, %struct.__sFILE* %1006) #7
  %indvars.iv.next245 = add i64 %indvars.iv244, %436
  %1008 = load i32* %hsize, align 4, !tbaa !21
  %1009 = mul nsw i32 %1008, %163
  %1010 = sext i32 %1009 to i64
  %1011 = icmp slt i64 %indvars.iv.next245, %1010
  br i1 %1011, label %.lr.ph159, label %.loopexit119

.lr.ph157:                                        ; preds = %.preheader120, %1024
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %1024 ], [ 0, %.preheader120 ]
  %1012 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1013 = trunc i64 %indvars.iv242 to i32
  %1014 = sitofp i32 %1013 to double
  %1015 = getelementptr inbounds double* %984, i64 %indvars.iv242
  %1016 = load double* %1015, align 8, !tbaa !39
  %1017 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1012, i8* %.pre-phi329, double %1014, double %1016) #7
  br i1 %162, label %1024, label %1018

; <label>:1018                                    ; preds = %.lr.ph157
  %1019 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1020 = add nsw i64 %indvars.iv242, 1
  %1021 = getelementptr inbounds double* %984, i64 %1020
  %1022 = load double* %1021, align 8, !tbaa !39
  %1023 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1019, i8* %108, double %1022) #7
  br label %1024

; <label>:1024                                    ; preds = %.lr.ph157, %1018
  %1025 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1026 = call i32 @fputc(i32 10, %struct.__sFILE* %1025) #7
  %indvars.iv.next243 = add i64 %indvars.iv242, %436
  %1027 = load i32* %hsize, align 4, !tbaa !21
  %1028 = mul nsw i32 %1027, %163
  %1029 = sext i32 %1028 to i64
  %1030 = icmp slt i64 %indvars.iv.next243, %1029
  br i1 %1030, label %.lr.ph157, label %.loopexit119

.loopexit119:                                     ; preds = %1024, %1005, %.preheader120, %.preheader118
  br i1 %162, label %1031, label %.critedge62

; <label>:1031                                    ; preds = %.loopexit119
  %1032 = add nuw nsw i64 %indvars.iv298, 4
  %1033 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %1032
  %1034 = load %struct.__sFILE** %1033, align 8, !tbaa !18
  %1035 = load double* %427, align 8, !tbaa !25
  %1036 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1034, i8* %98, double %1035) #7
  %1037 = load double** %429, align 8, !tbaa !18
  %1038 = load i32* %130, align 4, !tbaa !27
  %1039 = icmp eq i32 %1038, 2
  %1040 = load i32* %hsize, align 4, !tbaa !21
  %1041 = mul nsw i32 %1040, %163
  %1042 = icmp sgt i32 %1041, 1
  br i1 %1039, label %.preheader114, label %.preheader116

.preheader116:                                    ; preds = %1031
  br i1 %1042, label %.preheader370, label %.loopexit.thread

.preheader114:                                    ; preds = %1031
  br i1 %1042, label %.preheader368, label %.loopexit.thread

.preheader368:                                    ; preds = %.preheader114, %.preheader368
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.preheader368 ], [ 1, %.preheader114 ]
  %1043 = load %struct.__sFILE** %1033, align 8, !tbaa !18
  %1044 = load double** %coord_data, align 8, !tbaa !18
  %1045 = getelementptr inbounds double* %1044, i64 %indvars.iv248
  %1046 = load double* %1045, align 8, !tbaa !39
  %1047 = load double* %offset, align 8, !tbaa !39
  %1048 = fadd double %1046, %1047
  %1049 = getelementptr inbounds double* %1037, i64 %indvars.iv248
  %1050 = load double* %1049, align 8, !tbaa !39
  %1051 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1043, i8* %.pre-phi329, double %1048, double %1050) #7
  %.pre316 = load %struct.__sFILE** %1033, align 8, !tbaa !18
  %1052 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre316) #7
  %indvars.iv.next249 = add i64 %indvars.iv248, %436
  %1053 = load i32* %hsize, align 4, !tbaa !21
  %1054 = mul nsw i32 %1053, %163
  %1055 = sext i32 %1054 to i64
  %1056 = icmp slt i64 %indvars.iv.next249, %1055
  br i1 %1056, label %.preheader368, label %.loopexit

.preheader370:                                    ; preds = %.preheader116, %.preheader370
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.preheader370 ], [ 1, %.preheader116 ]
  %1057 = load %struct.__sFILE** %1033, align 8, !tbaa !18
  %1058 = trunc i64 %indvars.iv246 to i32
  %1059 = sitofp i32 %1058 to double
  %1060 = getelementptr inbounds double* %1037, i64 %indvars.iv246
  %1061 = load double* %1060, align 8, !tbaa !39
  %1062 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1057, i8* %.pre-phi329, double %1059, double %1061) #7
  %.pre314 = load %struct.__sFILE** %1033, align 8, !tbaa !18
  %1063 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre314) #7
  %indvars.iv.next247 = add i64 %indvars.iv246, %436
  %1064 = load i32* %hsize, align 4, !tbaa !21
  %1065 = mul nsw i32 %1064, %163
  %1066 = sext i32 %1065 to i64
  %1067 = icmp slt i64 %indvars.iv.next247, %1066
  br i1 %1067, label %.preheader370, label %.loopexit

; <label>:1068                                    ; preds = %.loopexit134
  %1069 = load x86_fp80** %433, align 8, !tbaa !18
  %1070 = load i32* %130, align 4, !tbaa !27
  %1071 = icmp eq i32 %1070, 2
  %1072 = load i32* %hsize, align 4, !tbaa !21
  %1073 = icmp sgt i32 %1072, 0
  br i1 %1071, label %.preheader122, label %.preheader124

.preheader124:                                    ; preds = %1068
  br i1 %1073, label %.lr.ph153, label %.loopexit

.preheader122:                                    ; preds = %1068
  br i1 %1073, label %.lr.ph155, label %.loopexit

.lr.ph155:                                        ; preds = %.preheader122, %.lr.ph155
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.lr.ph155 ], [ 0, %.preheader122 ]
  %1074 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1075 = load double** %coord_data, align 8, !tbaa !18
  %1076 = getelementptr inbounds double* %1075, i64 %indvars.iv240
  %1077 = load double* %1076, align 8, !tbaa !39
  %1078 = load double* %offset, align 8, !tbaa !39
  %1079 = fadd double %1077, %1078
  %1080 = getelementptr inbounds x86_fp80* %1069, i64 %indvars.iv240
  %1081 = load x86_fp80* %1080, align 16, !tbaa !49
  %1082 = fptrunc x86_fp80 %1081 to double
  %1083 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1074, i8* %.pre-phi329, double %1079, double %1082) #7
  %1084 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1085 = call i32 @fputc(i32 10, %struct.__sFILE* %1084) #7
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  %1086 = load i32* %hsize, align 4, !tbaa !21
  %1087 = sext i32 %1086 to i64
  %1088 = icmp slt i64 %indvars.iv.next241, %1087
  br i1 %1088, label %.lr.ph155, label %.loopexit

.lr.ph153:                                        ; preds = %.preheader124, %.lr.ph153
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %.lr.ph153 ], [ 0, %.preheader124 ]
  %1089 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1090 = trunc i64 %indvars.iv238 to i32
  %1091 = sitofp i32 %1090 to double
  %1092 = getelementptr inbounds x86_fp80* %1069, i64 %indvars.iv238
  %1093 = load x86_fp80* %1092, align 16, !tbaa !49
  %1094 = fptrunc x86_fp80 %1093 to double
  %1095 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1089, i8* %.pre-phi329, double %1091, double %1094) #7
  %1096 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1097 = call i32 @fputc(i32 10, %struct.__sFILE* %1096) #7
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  %1098 = load i32* %hsize, align 4, !tbaa !21
  %1099 = sext i32 %1098 to i64
  %1100 = icmp slt i64 %indvars.iv.next239, %1099
  br i1 %1100, label %.lr.ph153, label %.loopexit

; <label>:1101                                    ; preds = %.loopexit134
  %1102 = load x86_fp80** %433, align 8, !tbaa !18
  %1103 = load i32* %130, align 4, !tbaa !27
  %1104 = icmp eq i32 %1103, 2
  %1105 = load i32* %hsize, align 4, !tbaa !21
  %1106 = mul nsw i32 %1105, %163
  %1107 = icmp sgt i32 %1106, 0
  br i1 %1104, label %.preheader130, label %.preheader132

.preheader132:                                    ; preds = %1101
  br i1 %1107, label %.lr.ph145, label %.loopexit131

.preheader130:                                    ; preds = %1101
  br i1 %1107, label %.lr.ph147, label %.loopexit131

.lr.ph147:                                        ; preds = %.preheader130, %1125
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %1125 ], [ 0, %.preheader130 ]
  %1108 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1109 = load double** %coord_data, align 8, !tbaa !18
  %1110 = getelementptr inbounds double* %1109, i64 %indvars.iv232
  %1111 = load double* %1110, align 8, !tbaa !39
  %1112 = load double* %offset, align 8, !tbaa !39
  %1113 = fadd double %1111, %1112
  %1114 = getelementptr inbounds x86_fp80* %1102, i64 %indvars.iv232
  %1115 = load x86_fp80* %1114, align 16, !tbaa !49
  %1116 = fptrunc x86_fp80 %1115 to double
  %1117 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1108, i8* %.pre-phi329, double %1113, double %1116) #7
  br i1 %162, label %1125, label %1118

; <label>:1118                                    ; preds = %.lr.ph147
  %1119 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1120 = add nsw i64 %indvars.iv232, 1
  %1121 = getelementptr inbounds x86_fp80* %1102, i64 %1120
  %1122 = load x86_fp80* %1121, align 16, !tbaa !49
  %1123 = fptrunc x86_fp80 %1122 to double
  %1124 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1119, i8* %108, double %1123) #7
  br label %1125

; <label>:1125                                    ; preds = %.lr.ph147, %1118
  %1126 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1127 = call i32 @fputc(i32 10, %struct.__sFILE* %1126) #7
  %indvars.iv.next233 = add i64 %indvars.iv232, %436
  %1128 = load i32* %hsize, align 4, !tbaa !21
  %1129 = mul nsw i32 %1128, %163
  %1130 = sext i32 %1129 to i64
  %1131 = icmp slt i64 %indvars.iv.next233, %1130
  br i1 %1131, label %.lr.ph147, label %.loopexit131

.lr.ph145:                                        ; preds = %.preheader132, %1146
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %1146 ], [ 0, %.preheader132 ]
  %1132 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1133 = trunc i64 %indvars.iv230 to i32
  %1134 = sitofp i32 %1133 to double
  %1135 = getelementptr inbounds x86_fp80* %1102, i64 %indvars.iv230
  %1136 = load x86_fp80* %1135, align 16, !tbaa !49
  %1137 = fptrunc x86_fp80 %1136 to double
  %1138 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1132, i8* %.pre-phi329, double %1134, double %1137) #7
  br i1 %162, label %1146, label %1139

; <label>:1139                                    ; preds = %.lr.ph145
  %1140 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1141 = add nsw i64 %indvars.iv230, 1
  %1142 = getelementptr inbounds x86_fp80* %1102, i64 %1141
  %1143 = load x86_fp80* %1142, align 16, !tbaa !49
  %1144 = fptrunc x86_fp80 %1143 to double
  %1145 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1140, i8* %108, double %1144) #7
  br label %1146

; <label>:1146                                    ; preds = %.lr.ph145, %1139
  %1147 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1148 = call i32 @fputc(i32 10, %struct.__sFILE* %1147) #7
  %indvars.iv.next231 = add i64 %indvars.iv230, %436
  %1149 = load i32* %hsize, align 4, !tbaa !21
  %1150 = mul nsw i32 %1149, %163
  %1151 = sext i32 %1150 to i64
  %1152 = icmp slt i64 %indvars.iv.next231, %1151
  br i1 %1152, label %.lr.ph145, label %.loopexit131

.loopexit131:                                     ; preds = %1146, %1125, %.preheader132, %.preheader130
  br i1 %162, label %1153, label %.critedge61

; <label>:1153                                    ; preds = %.loopexit131
  %1154 = add nuw nsw i64 %indvars.iv298, 4
  %1155 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %1154
  %1156 = load %struct.__sFILE** %1155, align 8, !tbaa !18
  %1157 = load double* %427, align 8, !tbaa !25
  %1158 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1156, i8* %98, double %1157) #7
  %1159 = load x86_fp80** %433, align 8, !tbaa !18
  %1160 = load i32* %130, align 4, !tbaa !27
  %1161 = icmp eq i32 %1160, 2
  %1162 = load i32* %hsize, align 4, !tbaa !21
  %1163 = mul nsw i32 %1162, %163
  %1164 = icmp sgt i32 %1163, 1
  br i1 %1161, label %.preheader126, label %.preheader128

.preheader128:                                    ; preds = %1153
  br i1 %1164, label %.preheader377, label %.loopexit.thread

.preheader126:                                    ; preds = %1153
  br i1 %1164, label %.preheader375, label %.loopexit.thread

.preheader375:                                    ; preds = %.preheader126, %.preheader375
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %.preheader375 ], [ 1, %.preheader126 ]
  %1165 = load %struct.__sFILE** %1155, align 8, !tbaa !18
  %1166 = load double** %coord_data, align 8, !tbaa !18
  %1167 = getelementptr inbounds double* %1166, i64 %indvars.iv236
  %1168 = load double* %1167, align 8, !tbaa !39
  %1169 = load double* %offset, align 8, !tbaa !39
  %1170 = fadd double %1168, %1169
  %1171 = getelementptr inbounds x86_fp80* %1159, i64 %indvars.iv236
  %1172 = load x86_fp80* %1171, align 16, !tbaa !49
  %1173 = fptrunc x86_fp80 %1172 to double
  %1174 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1165, i8* %.pre-phi329, double %1170, double %1173) #7
  %.pre312 = load %struct.__sFILE** %1155, align 8, !tbaa !18
  %1175 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre312) #7
  %indvars.iv.next237 = add i64 %indvars.iv236, %436
  %1176 = load i32* %hsize, align 4, !tbaa !21
  %1177 = mul nsw i32 %1176, %163
  %1178 = sext i32 %1177 to i64
  %1179 = icmp slt i64 %indvars.iv.next237, %1178
  br i1 %1179, label %.preheader375, label %.loopexit

.preheader377:                                    ; preds = %.preheader128, %.preheader377
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.preheader377 ], [ 1, %.preheader128 ]
  %1180 = load %struct.__sFILE** %1155, align 8, !tbaa !18
  %1181 = trunc i64 %indvars.iv234 to i32
  %1182 = sitofp i32 %1181 to double
  %1183 = getelementptr inbounds x86_fp80* %1159, i64 %indvars.iv234
  %1184 = load x86_fp80* %1183, align 16, !tbaa !49
  %1185 = fptrunc x86_fp80 %1184 to double
  %1186 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1180, i8* %.pre-phi329, double %1182, double %1185) #7
  %.pre310 = load %struct.__sFILE** %1155, align 8, !tbaa !18
  %1187 = call i32 @fputc(i32 10, %struct.__sFILE* %.pre310) #7
  %indvars.iv.next235 = add i64 %indvars.iv234, %436
  %1188 = load i32* %hsize, align 4, !tbaa !21
  %1189 = mul nsw i32 %1188, %163
  %1190 = sext i32 %1189 to i64
  %1191 = icmp slt i64 %indvars.iv.next235, %1190
  br i1 %1191, label %.preheader377, label %.loopexit

; <label>:1192                                    ; preds = %.loopexit134
  %1193 = call i32 @CCTK_Warn(i32 1, i32 776, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str62, i64 0, i64 0)) #7
  br label %.loopexit

.loopexit.thread:                                 ; preds = %.preheader128, %.preheader126, %.preheader116, %.preheader114, %.preheader104, %.preheader102, %.preheader80, %.preheader78
  %1194 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1195 = call i32 @fclose(%struct.__sFILE* %1194) #7
  br label %1198

.loopexit:                                        ; preds = %.preheader377, %.preheader375, %.lr.ph153, %.lr.ph155, %.preheader370, %.preheader368, %.lr.ph165, %.lr.ph167, %.preheader363, %.preheader361, %.lr.ph177, %.lr.ph179, %.lr.ph181, %.lr.ph183, %.lr.ph185, %.lr.ph187, %.lr.ph189, %.lr.ph191, %.preheader350, %.preheader348, %.lr.ph201, %.lr.ph203, %.lr.ph205, %.lr.ph207, %.lr.ph209, %.lr.ph211, %.preheader124, %.preheader122, %.preheader112, %.preheader110, %.preheader100, %.preheader98, %.preheader96, %.preheader94, %.preheader92, %.preheader90, %.preheader88, %.preheader86, %.preheader76, %.preheader74, %.preheader72, %.preheader70, %.preheader68, %.preheader, %1192
  %1196 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1197 = call i32 @fclose(%struct.__sFILE* %1196) #7
  br i1 %162, label %1198, label %1211

; <label>:1198                                    ; preds = %.loopexit.thread, %.loopexit
  %1199 = add nuw nsw i64 %indvars.iv298, 4
  %1200 = getelementptr inbounds [8 x %struct.__sFILE*]* %file, i64 0, i64 %1199
  %1201 = load %struct.__sFILE** %1200, align 8, !tbaa !18
  %1202 = call i32 @fclose(%struct.__sFILE* %1201) #7
  br label %1211

.critedge61:                                      ; preds = %.loopexit131
  %1203 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1204 = call i32 @fclose(%struct.__sFILE* %1203) #7
  br label %1211

.critedge62:                                      ; preds = %.loopexit119
  %1205 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1206 = call i32 @fclose(%struct.__sFILE* %1205) #7
  br label %1211

.critedge63:                                      ; preds = %.loopexit107
  %1207 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1208 = call i32 @fclose(%struct.__sFILE* %1207) #7
  br label %1211

.critedge64:                                      ; preds = %.loopexit83
  %1209 = load %struct.__sFILE** %495, align 8, !tbaa !18
  %1210 = call i32 @fclose(%struct.__sFILE* %1209) #7
  br label %1211

; <label>:1211                                    ; preds = %.critedge64, %.critedge63, %.critedge62, %.critedge61, %1198, %.loopexit
  %1212 = load i8** %data, align 8, !tbaa !18
  call void @free(i8* %1212) #8
  %1213 = load double** %coord_data, align 8, !tbaa !18
  %1214 = icmp eq double* %1213, null
  br i1 %1214, label %1217, label %1215

; <label>:1215                                    ; preds = %1211
  %1216 = bitcast double* %1213 to i8*
  call void @free(i8* %1216) #8
  br label %1217

; <label>:1217                                    ; preds = %487, %1211, %494, %437, %493, %1215, %491
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1
  %exitcond300 = icmp eq i64 %indvars.iv.next299, 4
  br i1 %exitcond300, label %1218, label %._crit_edge305

._crit_edge305:                                   ; preds = %1217
  %.phi.trans.insert = getelementptr inbounds [4 x i32]* %Do_it, i64 0, i64 %indvars.iv.next299
  %.pre306 = load i32* %.phi.trans.insert, align 4, !tbaa !21
  br label %437

; <label>:1218                                    ; preds = %1217
  call void @free(i8* %17) #8
  br label %1219

; <label>:1219                                    ; preds = %1218, %85, %20
  %.0 = phi i32 [ 0, %1218 ], [ 0, %85 ], [ -1, %20 ]
  call void @llvm.lifetime.end(i64 40, i8* %6) #2
  call void @llvm.lifetime.end(i64 128, i8* %5) #2
  call void @llvm.lifetime.end(i64 144, i8* %4) #2
  call void @llvm.lifetime.end(i64 64, i8* %3) #2
  call void @llvm.lifetime.end(i64 56, i8* %2) #2
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: optsize
declare i32 @CCTK_CoordRange(%struct.cGH*, double*, double*, i32, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #3

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

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
declare i32 @CCTK_GroupgshVI(%struct.cGH*, i32, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: optsize
declare i32 @Hyperslab_GetHyperslab(%struct.cGH*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i8**, i32*) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

declare void @memset_pattern16(i8*, i8*, i64)

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
!2 = !{!3, !7, i64 72}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 120}
!10 = !{!3, !7, i64 128}
!11 = !{!3, !8, i64 160}
!12 = !{!3, !8, i64 168}
!13 = !{!3, !8, i64 180}
!14 = !{!3, !8, i64 192}
!15 = !{!16, !8, i64 204}
!16 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292}
!17 = !{!16, !7, i64 112}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !8, i64 16}
!20 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!21 = !{!8, !8, i64 0}
!22 = !{!20, !8, i64 12}
!23 = !{!24, !7, i64 64}
!24 = !{!"IOASCIIGH", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!25 = !{!26, !4, i64 120}
!26 = !{!"", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !8, i64 104, !7, i64 112, !4, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!27 = !{!20, !8, i64 0}
!28 = !{!20, !8, i64 4}
!29 = !{!24, !7, i64 40}
!30 = !{!24, !7, i64 112}
!31 = !{!24, !7, i64 88}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !7, i64 24}
!34 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!35 = !{!34, !7, i64 0}
!36 = !{!34, !7, i64 8}
!37 = !{!34, !7, i64 32}
!38 = !{!34, !7, i64 16}
!39 = !{!4, !4, i64 0}
!40 = !{!26, !7, i64 72}
!41 = !{!42, !7, i64 8}
!42 = !{!"GROUPDYNAMICDATA", !8, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !5, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !5, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !5, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"long double", !5, i64 0}
