; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Interp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.t_interp_operator = type { i8*, i8*, i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)*, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [75 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Interp.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [86 x i8] c"CCTKi_InterpRegisterOperatorGV: NULL pointer passed as interpolation operator routine\00", align 1
@interp_operators = internal global %struct.cHandledData* null, align 8
@num_interp_operators = internal unnamed_addr global i32 0, align 4
@.str3 = private unnamed_addr constant [80 x i8] c"CCTKi_InterpRegisterOperatorGV: Couldn't allocate interpolation operator handle\00", align 1
@.str4 = private unnamed_addr constant [61 x i8] c"CCTKi_InterpRegisterOperatorGV: Operator '%s' already exists\00", align 1
@.str5 = private unnamed_addr constant [89 x i8] c"CCTKi_InterpRegisterOperatorLocal: NULL pointer passed as interpolation operator routine\00", align 1
@.str6 = private unnamed_addr constant [83 x i8] c"CCTKi_InterpRegisterOperatorLocal: Couldn't allocate interpolation operator handle\00", align 1
@.str7 = private unnamed_addr constant [64 x i8] c"CCTKi_InterpRegisterOperatorLocal: Operator '%s' already exists\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"No handle found for interpolation operator '%s'\00", align 1
@.str9 = private unnamed_addr constant [37 x i8] c"CCTK_InterpHandle: Handle %d invalid\00", align 1
@.str10 = private unnamed_addr constant [77 x i8] c"CCTK_InterpGV: Invalid interpolation operator handle passed to CCTK_InterpGV\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"CCTK_InterpGV: Invalid coordinate system handle passed to CCTK_InterpGV\00", align 1
@.str12 = private unnamed_addr constant [56 x i8] c"CCTK_InterpLocal: Invalid interpolation operator handle\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/comm/Interp.c,v 1.24 2001/12/27 19:19:03 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_comm_Interp_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InterpRegisterOperatorGV(i8* %thorn, i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* %operator_GV, i8* %name) #1 {
  %operator = alloca %struct.t_interp_operator*, align 8
  %1 = icmp eq i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* %operator_GV, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 151, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8]* @.str2, i64 0, i64 0)) #6
  br label %36

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %6 = bitcast %struct.t_interp_operator** %operator to i8**
  %7 = call i32 @Util_GetHandle(%struct.cHandledData* %5, i8* %name, i8** %6) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %4
  %10 = call i8* @malloc(i64 32) #6
  store i8* %10, i8** %6, align 8, !tbaa !2
  %11 = icmp eq i8* %10, null
  br i1 %11, label %26, label %12

; <label>:12                                      ; preds = %9
  %13 = call i8* @CCTK_ThornImplementation(i8* %thorn) #6
  %14 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.t_interp_operator* %14, i64 0, i32 0
  store i8* %13, i8** %15, align 8, !tbaa !6
  %16 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %17 = getelementptr inbounds %struct.t_interp_operator* %16, i64 0, i32 1
  store i8* %name, i8** %17, align 8, !tbaa !8
  %18 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %19 = getelementptr inbounds %struct.t_interp_operator* %18, i64 0, i32 2
  store i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* %operator_GV, i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %19, align 8, !tbaa !9
  %20 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %21 = getelementptr inbounds %struct.t_interp_operator* %20, i64 0, i32 3
  store i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* null, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %21, align 8, !tbaa !10
  %22 = load i8** %6, align 8, !tbaa !2
  %23 = call i32 @Util_NewHandle(%struct.cHandledData** @interp_operators, i8* %name, i8* %22) #6
  %24 = load i32* @num_interp_operators, align 4, !tbaa !11
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @num_interp_operators, align 4, !tbaa !11
  br label %36

; <label>:26                                      ; preds = %9
  %27 = call i32 @CCTK_Warn(i32 1, i32 178, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str3, i64 0, i64 0)) #6
  br label %36

; <label>:28                                      ; preds = %4
  %29 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %30 = getelementptr inbounds %struct.t_interp_operator* %29, i64 0, i32 2
  %31 = load i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %30, align 8, !tbaa !9
  %32 = icmp eq i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  store i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* %operator_GV, i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %30, align 8, !tbaa !9
  br label %36

; <label>:34                                      ; preds = %28
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 191, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str4, i64 0, i64 0), i8* %name) #6
  br label %36

; <label>:36                                      ; preds = %26, %12, %34, %33, %2
  %handle.0 = phi i32 [ -1, %2 ], [ %23, %12 ], [ -2, %26 ], [ %7, %33 ], [ -3, %34 ]
  ret i32 %handle.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #2

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InterpRegisterOperatorLocal(i8* %thorn, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* %operator_local, i8* %name) #1 {
  %operator = alloca %struct.t_interp_operator*, align 8
  %1 = icmp eq i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* %operator_local, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 242, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8]* @.str5, i64 0, i64 0)) #6
  br label %36

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %6 = bitcast %struct.t_interp_operator** %operator to i8**
  %7 = call i32 @Util_GetHandle(%struct.cHandledData* %5, i8* %name, i8** %6) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %4
  %10 = call i8* @malloc(i64 32) #6
  store i8* %10, i8** %6, align 8, !tbaa !2
  %11 = icmp eq i8* %10, null
  br i1 %11, label %26, label %12

; <label>:12                                      ; preds = %9
  %13 = call i8* @CCTK_ThornImplementation(i8* %thorn) #6
  %14 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.t_interp_operator* %14, i64 0, i32 0
  store i8* %13, i8** %15, align 8, !tbaa !6
  %16 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %17 = getelementptr inbounds %struct.t_interp_operator* %16, i64 0, i32 1
  store i8* %name, i8** %17, align 8, !tbaa !8
  %18 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %19 = getelementptr inbounds %struct.t_interp_operator* %18, i64 0, i32 3
  store i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* %operator_local, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %19, align 8, !tbaa !10
  %20 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %21 = getelementptr inbounds %struct.t_interp_operator* %20, i64 0, i32 2
  store i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)* null, i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %21, align 8, !tbaa !9
  %22 = load i8** %6, align 8, !tbaa !2
  %23 = call i32 @Util_NewHandle(%struct.cHandledData** @interp_operators, i8* %name, i8* %22) #6
  %24 = load i32* @num_interp_operators, align 4, !tbaa !11
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @num_interp_operators, align 4, !tbaa !11
  br label %36

; <label>:26                                      ; preds = %9
  %27 = call i32 @CCTK_Warn(i32 1, i32 269, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8]* @.str6, i64 0, i64 0)) #6
  br label %36

; <label>:28                                      ; preds = %4
  %29 = load %struct.t_interp_operator** %operator, align 8, !tbaa !2
  %30 = getelementptr inbounds %struct.t_interp_operator* %29, i64 0, i32 3
  %31 = load i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %30, align 8, !tbaa !10
  %32 = icmp eq i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %28
  store i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)* %operator_local, i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %30, align 8, !tbaa !10
  br label %36

; <label>:34                                      ; preds = %28
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 282, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str7, i64 0, i64 0), i8* %name) #6
  br label %36

; <label>:36                                      ; preds = %26, %12, %34, %33, %2
  %handle.0 = phi i32 [ -1, %2 ], [ %23, %12 ], [ -2, %26 ], [ %7, %33 ], [ -3, %34 ]
  ret i32 %handle.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_InterpHandle(i8* %name) #1 {
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #6
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 329, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i8* %name) #6
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_interphandle_(i32* nocapture %handle, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i32 @CCTK_InterpHandle(i8* %1) #7
  store i32 %2, i32* %handle, align 4, !tbaa !11
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_InterpOperator(i32 %handle) #1 {
  %1 = icmp slt i32 %handle, 0
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 373, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str9, i64 0, i64 0), i32 %handle) #6
  br label %14

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %6 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %5, i32 %handle) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds i8* %6, i64 8
  %10 = bitcast i8* %9 to i8**
  %11 = load i8** %10, align 8, !tbaa !8
  br label %14

; <label>:12                                      ; preds = %4
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 386, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str9, i64 0, i64 0), i32 %handle) #6
  br label %14

; <label>:14                                      ; preds = %8, %12, %2
  %name.0 = phi i8* [ null, %2 ], [ %11, %8 ], [ null, %12 ]
  ret i8* %name.0
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_InterpGV(%struct.cGH* %GH, i32 %operator_handle, i32 %coord_system_handle, i32 %num_points, i32 %num_in_array_indices, i32 %num_out_arrays, ...) #1 {
  %indices = alloca [1 x %struct.__va_list_tag], align 16
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %operator_handle) #6
  %3 = tail call i8* @CCTK_CoordSystemName(i32 %coord_system_handle) #6
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_Warn(i32 3, i32 493, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0)) #6
  br label %141

; <label>:7                                       ; preds = %0
  %8 = icmp eq i8* %3, null
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %7
  %10 = tail call i32 @CCTK_Warn(i32 3, i32 499, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #6
  br label %141

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @CCTK_CoordSystemDim(i8* %3) #6
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call i8* @malloc(i64 %14) #6
  %16 = bitcast i8* %15 to i8**
  %17 = shl nsw i64 %13, 2
  %18 = tail call i8* @malloc(i64 %17) #6
  %19 = bitcast i8* %18 to i32*
  %20 = sext i32 %num_in_array_indices to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call i8* @malloc(i64 %21) #6
  %23 = bitcast i8* %22 to i32*
  %24 = sext i32 %num_out_arrays to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call i8* @malloc(i64 %25) #6
  %27 = bitcast i8* %26 to i8**
  %28 = shl nsw i64 %24, 2
  %29 = tail call i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to i32*
  %31 = bitcast [1 x %struct.__va_list_tag]* %indices to i8*
  call void @llvm.va_start(i8* %31)
  %32 = icmp sgt i32 %12, 0
  br i1 %32, label %.lr.ph21, label %.preheader10

.lr.ph21:                                         ; preds = %11
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %36 = add i32 %12, -1
  %.pre = load i32* %33, align 16
  br label %41

.preheader11:                                     ; preds = %52
  br i1 %32, label %.lr.ph18, label %.preheader10

.lr.ph18:                                         ; preds = %.preheader11
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %40 = add i32 %12, -1
  %.pre38 = load i32* %37, align 16
  br label %63

; <label>:41                                      ; preds = %52, %.lr.ph21
  %42 = phi i32 [ %.pre, %.lr.ph21 ], [ %53, %52 ]
  %indvars.iv34 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next35, %52 ]
  %43 = icmp ult i32 %42, 41
  br i1 %43, label %44, label %49

; <label>:44                                      ; preds = %41
  %45 = load i8** %34, align 16
  %46 = sext i32 %42 to i64
  %47 = getelementptr i8* %45, i64 %46
  %48 = add i32 %42, 8
  store i32 %48, i32* %33, align 16
  br label %52

; <label>:49                                      ; preds = %41
  %50 = load i8** %35, align 8
  %51 = getelementptr i8* %50, i64 8
  store i8* %51, i8** %35, align 8
  br label %52

; <label>:52                                      ; preds = %49, %44
  %53 = phi i32 [ %48, %44 ], [ %42, %49 ]
  %.in8 = phi i8* [ %47, %44 ], [ %50, %49 ]
  %54 = bitcast i8* %.in8 to i64*
  %55 = load i64* %54, align 8
  %56 = getelementptr inbounds i8** %16, i64 %indvars.iv34
  %57 = bitcast i8** %56 to i64*
  store i64 %55, i64* %57, align 8, !tbaa !2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %36
  br i1 %exitcond37, label %.preheader11, label %41

.preheader10:                                     ; preds = %74, %11, %.preheader11
  %58 = icmp sgt i32 %num_in_array_indices, 0
  br i1 %58, label %.lr.ph16, label %.preheader9

.lr.ph16:                                         ; preds = %.preheader10
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %62 = add i32 %num_in_array_indices, -1
  %.pre39 = load i32* %59, align 16
  br label %84

; <label>:63                                      ; preds = %74, %.lr.ph18
  %64 = phi i32 [ %.pre38, %.lr.ph18 ], [ %75, %74 ]
  %indvars.iv30 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next31, %74 ]
  %65 = icmp ult i32 %64, 41
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %63
  %67 = load i8** %38, align 16
  %68 = sext i32 %64 to i64
  %69 = getelementptr i8* %67, i64 %68
  %70 = add i32 %64, 8
  store i32 %70, i32* %37, align 16
  br label %74

; <label>:71                                      ; preds = %63
  %72 = load i8** %39, align 8
  %73 = getelementptr i8* %72, i64 8
  store i8* %73, i8** %39, align 8
  br label %74

; <label>:74                                      ; preds = %71, %66
  %75 = phi i32 [ %70, %66 ], [ %64, %71 ]
  %.in7 = phi i8* [ %69, %66 ], [ %72, %71 ]
  %76 = bitcast i8* %.in7 to i32*
  %77 = load i32* %76, align 4
  %78 = getelementptr inbounds i32* %19, i64 %indvars.iv30
  store i32 %77, i32* %78, align 4, !tbaa !11
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %40
  br i1 %exitcond33, label %.preheader10, label %63

.preheader9:                                      ; preds = %95, %.preheader10
  %79 = icmp sgt i32 %num_out_arrays, 0
  br i1 %79, label %.lr.ph14, label %._crit_edge

.lr.ph14:                                         ; preds = %.preheader9
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %83 = add i32 %num_out_arrays, -1
  %.pre40 = load i32* %80, align 16
  br label %104

; <label>:84                                      ; preds = %95, %.lr.ph16
  %85 = phi i32 [ %.pre39, %.lr.ph16 ], [ %96, %95 ]
  %indvars.iv26 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next27, %95 ]
  %86 = icmp ult i32 %85, 41
  br i1 %86, label %87, label %92

; <label>:87                                      ; preds = %84
  %88 = load i8** %60, align 16
  %89 = sext i32 %85 to i64
  %90 = getelementptr i8* %88, i64 %89
  %91 = add i32 %85, 8
  store i32 %91, i32* %59, align 16
  br label %95

; <label>:92                                      ; preds = %84
  %93 = load i8** %61, align 8
  %94 = getelementptr i8* %93, i64 8
  store i8* %94, i8** %61, align 8
  br label %95

; <label>:95                                      ; preds = %92, %87
  %96 = phi i32 [ %91, %87 ], [ %85, %92 ]
  %.in6 = phi i8* [ %90, %87 ], [ %93, %92 ]
  %97 = bitcast i8* %.in6 to i32*
  %98 = load i32* %97, align 4
  %99 = getelementptr inbounds i32* %23, i64 %indvars.iv26
  store i32 %98, i32* %99, align 4, !tbaa !11
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %62
  br i1 %exitcond29, label %.preheader9, label %84

.preheader:                                       ; preds = %115
  br i1 %79, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %103 = add i32 %num_out_arrays, -1
  %.pre41 = load i32* %100, align 16
  br label %121

; <label>:104                                     ; preds = %115, %.lr.ph14
  %105 = phi i32 [ %.pre40, %.lr.ph14 ], [ %116, %115 ]
  %indvars.iv22 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next23, %115 ]
  %106 = icmp ult i32 %105, 41
  br i1 %106, label %107, label %112

; <label>:107                                     ; preds = %104
  %108 = load i8** %81, align 16
  %109 = sext i32 %105 to i64
  %110 = getelementptr i8* %108, i64 %109
  %111 = add i32 %105, 8
  store i32 %111, i32* %80, align 16
  br label %115

; <label>:112                                     ; preds = %104
  %113 = load i8** %82, align 8
  %114 = getelementptr i8* %113, i64 8
  store i8* %114, i8** %82, align 8
  br label %115

; <label>:115                                     ; preds = %112, %107
  %116 = phi i32 [ %111, %107 ], [ %105, %112 ]
  %.in5 = phi i8* [ %110, %107 ], [ %113, %112 ]
  %117 = bitcast i8* %.in5 to i64*
  %118 = load i64* %117, align 8
  %119 = getelementptr inbounds i8** %27, i64 %indvars.iv22
  %120 = bitcast i8** %119 to i64*
  store i64 %118, i64* %120, align 8, !tbaa !2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %83
  br i1 %exitcond25, label %.preheader, label %104

; <label>:121                                     ; preds = %132, %.lr.ph
  %122 = phi i32 [ %.pre41, %.lr.ph ], [ %133, %132 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %132 ]
  %123 = icmp ult i32 %122, 41
  br i1 %123, label %124, label %129

; <label>:124                                     ; preds = %121
  %125 = load i8** %101, align 16
  %126 = sext i32 %122 to i64
  %127 = getelementptr i8* %125, i64 %126
  %128 = add i32 %122, 8
  store i32 %128, i32* %100, align 16
  br label %132

; <label>:129                                     ; preds = %121
  %130 = load i8** %102, align 8
  %131 = getelementptr i8* %130, i64 8
  store i8* %131, i8** %102, align 8
  br label %132

; <label>:132                                     ; preds = %129, %124
  %133 = phi i32 [ %128, %124 ], [ %122, %129 ]
  %.in = phi i8* [ %127, %124 ], [ %130, %129 ]
  %134 = bitcast i8* %.in to i32*
  %135 = load i32* %134, align 4
  %136 = getelementptr inbounds i32* %30, i64 %indvars.iv
  store i32 %135, i32* %136, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %103
  br i1 %exitcond, label %._crit_edge, label %121

._crit_edge:                                      ; preds = %132, %.preheader9, %.preheader
  call void @llvm.va_end(i8* %31)
  %137 = getelementptr inbounds i8* %2, i64 16
  %138 = bitcast i8* %137 to i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)**
  %139 = load i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %138, align 8, !tbaa !9
  %140 = call i32 %139(%struct.cGH* %GH, i8* %3, i32 %num_points, i32 %num_in_array_indices, i32 %num_out_arrays, i8** %16, i32* %19, i32* %23, i8** %27, i32* %30) #6
  call void @free(i8* %29) #7
  call void @free(i8* %26) #7
  call void @free(i8* %22) #7
  call void @free(i8* %18) #7
  call void @free(i8* %15) #7
  br label %141

; <label>:141                                     ; preds = %9, %._crit_edge, %5
  %retcode.0 = phi i32 [ -1, %5 ], [ -2, %9 ], [ %140, %._crit_edge ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare i8* @CCTK_CoordSystemName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_CoordSystemDim(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_interpgv_(i32* nocapture %fortranreturn, %struct.cGH* %GH, i32* nocapture readonly %operator_handle, i32* nocapture readonly %coord_system_handle, i32* nocapture readonly %num_points, i32* nocapture readonly %num_in_array_indices, i32* nocapture readonly %num_out_arrays, ...) #1 {
  %indices = alloca [1 x %struct.__va_list_tag], align 16
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = load i32* %operator_handle, align 4, !tbaa !11
  %3 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %2) #6
  %4 = load i32* %coord_system_handle, align 4, !tbaa !11
  %5 = tail call i8* @CCTK_CoordSystemName(i32 %4) #6
  %6 = icmp eq i8* %3, null
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Warn(i32 3, i32 566, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8]* @.str10, i64 0, i64 0)) #6
  br label %156

; <label>:9                                       ; preds = %0
  %10 = icmp eq i8* %5, null
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = tail call i32 @CCTK_Warn(i32 3, i32 573, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0)) #6
  br label %156

; <label>:13                                      ; preds = %9
  %14 = tail call i32 @CCTK_CoordSystemDim(i8* %5) #6
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call i8* @malloc(i64 %16) #6
  %18 = bitcast i8* %17 to i8**
  %19 = shl nsw i64 %15, 2
  %20 = tail call i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to i32*
  %22 = load i32* %num_in_array_indices, align 4, !tbaa !11
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to i32*
  %27 = load i32* %num_out_arrays, align 4, !tbaa !11
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call i8* @malloc(i64 %29) #6
  %31 = bitcast i8* %30 to i8**
  %32 = shl nsw i64 %28, 2
  %33 = tail call i8* @malloc(i64 %32) #6
  %34 = bitcast i8* %33 to i32*
  %35 = bitcast [1 x %struct.__va_list_tag]* %indices to i8*
  call void @llvm.va_start(i8* %35)
  %36 = icmp sgt i32 %14, 0
  br i1 %36, label %.lr.ph21, label %.preheader10

.lr.ph21:                                         ; preds = %13
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %40 = add i32 %14, -1
  %.pre = load i32* %37, align 16
  br label %45

.preheader11:                                     ; preds = %56
  br i1 %36, label %.lr.ph18, label %.preheader10

.lr.ph18:                                         ; preds = %.preheader11
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %44 = add i32 %14, -1
  %.pre32 = load i32* %41, align 16
  br label %67

; <label>:45                                      ; preds = %56, %.lr.ph21
  %46 = phi i32 [ %.pre, %.lr.ph21 ], [ %57, %56 ]
  %indvars.iv28 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next29, %56 ]
  %47 = icmp ult i32 %46, 41
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %45
  %49 = load i8** %38, align 16
  %50 = sext i32 %46 to i64
  %51 = getelementptr i8* %49, i64 %50
  %52 = add i32 %46, 8
  store i32 %52, i32* %37, align 16
  br label %56

; <label>:53                                      ; preds = %45
  %54 = load i8** %39, align 8
  %55 = getelementptr i8* %54, i64 8
  store i8* %55, i8** %39, align 8
  br label %56

; <label>:56                                      ; preds = %53, %48
  %57 = phi i32 [ %52, %48 ], [ %46, %53 ]
  %.in8 = phi i8* [ %51, %48 ], [ %54, %53 ]
  %58 = bitcast i8* %.in8 to i64*
  %59 = load i64* %58, align 8
  %60 = getelementptr inbounds i8** %18, i64 %indvars.iv28
  %61 = bitcast i8** %60 to i64*
  store i64 %59, i64* %61, align 8, !tbaa !2
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv28 to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %40
  br i1 %exitcond31, label %.preheader11, label %45

.preheader10:                                     ; preds = %78, %13, %.preheader11
  %62 = load i32* %num_in_array_indices, align 4, !tbaa !11
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %.lr.ph16, label %.preheader9

.lr.ph16:                                         ; preds = %.preheader10
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre33 = load i32* %64, align 16
  br label %89

; <label>:67                                      ; preds = %78, %.lr.ph18
  %68 = phi i32 [ %.pre32, %.lr.ph18 ], [ %79, %78 ]
  %indvars.iv26 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next27, %78 ]
  %69 = icmp ult i32 %68, 41
  br i1 %69, label %70, label %75

; <label>:70                                      ; preds = %67
  %71 = load i8** %42, align 16
  %72 = sext i32 %68 to i64
  %73 = getelementptr i8* %71, i64 %72
  %74 = add i32 %68, 8
  store i32 %74, i32* %41, align 16
  br label %78

; <label>:75                                      ; preds = %67
  %76 = load i8** %43, align 8
  %77 = getelementptr i8* %76, i64 8
  store i8* %77, i8** %43, align 8
  br label %78

; <label>:78                                      ; preds = %75, %70
  %79 = phi i32 [ %74, %70 ], [ %68, %75 ]
  %.in7 = phi i8* [ %73, %70 ], [ %76, %75 ]
  %80 = bitcast i8* %.in7 to i32**
  %81 = load i32** %80, align 8
  %82 = load i32* %81, align 4, !tbaa !11
  %83 = getelementptr inbounds i32* %21, i64 %indvars.iv26
  store i32 %82, i32* %83, align 4, !tbaa !11
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv = trunc i64 %indvars.iv26 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %44
  br i1 %exitcond, label %.preheader10, label %67

.preheader9:                                      ; preds = %100, %.preheader10
  %84 = load i32* %num_out_arrays, align 4, !tbaa !11
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %.lr.ph14, label %._crit_edge

.lr.ph14:                                         ; preds = %.preheader9
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %87 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre34 = load i32* %86, align 16
  br label %111

; <label>:89                                      ; preds = %.lr.ph16, %100
  %90 = phi i32 [ %.pre33, %.lr.ph16 ], [ %101, %100 ]
  %indvars.iv24 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next25, %100 ]
  %91 = icmp ult i32 %90, 41
  br i1 %91, label %92, label %97

; <label>:92                                      ; preds = %89
  %93 = load i8** %65, align 16
  %94 = sext i32 %90 to i64
  %95 = getelementptr i8* %93, i64 %94
  %96 = add i32 %90, 8
  store i32 %96, i32* %64, align 16
  br label %100

; <label>:97                                      ; preds = %89
  %98 = load i8** %66, align 8
  %99 = getelementptr i8* %98, i64 8
  store i8* %99, i8** %66, align 8
  br label %100

; <label>:100                                     ; preds = %97, %92
  %101 = phi i32 [ %96, %92 ], [ %90, %97 ]
  %.in6 = phi i8* [ %95, %92 ], [ %98, %97 ]
  %102 = bitcast i8* %.in6 to i32**
  %103 = load i32** %102, align 8
  %104 = load i32* %103, align 4, !tbaa !11
  %105 = getelementptr inbounds i32* %26, i64 %indvars.iv24
  store i32 %104, i32* %105, align 4, !tbaa !11
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %106 = sext i32 %62 to i64
  %107 = icmp slt i64 %indvars.iv.next25, %106
  br i1 %107, label %89, label %.preheader9

.preheader:                                       ; preds = %122
  br i1 %85, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %108 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre35 = load i32* %108, align 16
  br label %130

; <label>:111                                     ; preds = %.lr.ph14, %122
  %112 = phi i32 [ %.pre34, %.lr.ph14 ], [ %123, %122 ]
  %indvars.iv22 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next23, %122 ]
  %113 = icmp ult i32 %112, 41
  br i1 %113, label %114, label %119

; <label>:114                                     ; preds = %111
  %115 = load i8** %87, align 16
  %116 = sext i32 %112 to i64
  %117 = getelementptr i8* %115, i64 %116
  %118 = add i32 %112, 8
  store i32 %118, i32* %86, align 16
  br label %122

; <label>:119                                     ; preds = %111
  %120 = load i8** %88, align 8
  %121 = getelementptr i8* %120, i64 8
  store i8* %121, i8** %88, align 8
  br label %122

; <label>:122                                     ; preds = %119, %114
  %123 = phi i32 [ %118, %114 ], [ %112, %119 ]
  %.in5 = phi i8* [ %117, %114 ], [ %120, %119 ]
  %124 = bitcast i8* %.in5 to i64*
  %125 = load i64* %124, align 8
  %126 = getelementptr inbounds i8** %31, i64 %indvars.iv22
  %127 = bitcast i8** %126 to i64*
  store i64 %125, i64* %127, align 8, !tbaa !2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %128 = sext i32 %84 to i64
  %129 = icmp slt i64 %indvars.iv.next23, %128
  br i1 %129, label %111, label %.preheader

; <label>:130                                     ; preds = %.lr.ph, %141
  %131 = phi i32 [ %.pre35, %.lr.ph ], [ %142, %141 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %141 ]
  %132 = icmp ult i32 %131, 41
  br i1 %132, label %133, label %138

; <label>:133                                     ; preds = %130
  %134 = load i8** %109, align 16
  %135 = sext i32 %131 to i64
  %136 = getelementptr i8* %134, i64 %135
  %137 = add i32 %131, 8
  store i32 %137, i32* %108, align 16
  br label %141

; <label>:138                                     ; preds = %130
  %139 = load i8** %110, align 8
  %140 = getelementptr i8* %139, i64 8
  store i8* %140, i8** %110, align 8
  br label %141

; <label>:141                                     ; preds = %138, %133
  %142 = phi i32 [ %137, %133 ], [ %131, %138 ]
  %.in = phi i8* [ %136, %133 ], [ %139, %138 ]
  %143 = bitcast i8* %.in to i32**
  %144 = load i32** %143, align 8
  %145 = load i32* %144, align 4, !tbaa !11
  %146 = getelementptr inbounds i32* %34, i64 %indvars.iv
  store i32 %145, i32* %146, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %147 = sext i32 %84 to i64
  %148 = icmp slt i64 %indvars.iv.next, %147
  br i1 %148, label %130, label %._crit_edge

._crit_edge:                                      ; preds = %141, %.preheader9, %.preheader
  call void @llvm.va_end(i8* %35)
  %149 = getelementptr inbounds i8* %3, i64 16
  %150 = bitcast i8* %149 to i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)**
  %151 = load i32 (%struct.cGH*, i8*, i32, i32, i32, i8**, i32*, i32*, i8**, i32*)** %150, align 8, !tbaa !9
  %152 = load i32* %num_points, align 4, !tbaa !11
  %153 = load i32* %num_in_array_indices, align 4, !tbaa !11
  %154 = load i32* %num_out_arrays, align 4, !tbaa !11
  %155 = call i32 %151(%struct.cGH* %GH, i8* %5, i32 %152, i32 %153, i32 %154, i8** %18, i32* %21, i32* %26, i8** %31, i32* %34) #6
  call void @free(i8* %33) #7
  call void @free(i8* %30) #7
  call void @free(i8* %25) #7
  call void @free(i8* %20) #7
  call void @free(i8* %17) #7
  br label %156

; <label>:156                                     ; preds = %11, %._crit_edge, %7
  %retcode.0 = phi i32 [ -1, %7 ], [ -1, %11 ], [ %155, %._crit_edge ]
  store i32 %retcode.0, i32* %fortranreturn, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_InterpLocal(%struct.cGH* %GH, i32 %operator_handle, i32 %num_points, i32 %num_dims, i32 %num_in_arrays, i32 %num_out_arrays, ...) #1 {
  %indices = alloca [1 x %struct.__va_list_tag], align 16
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %operator_handle) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_Warn(i32 3, i32 731, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str12, i64 0, i64 0)) #6
  br label %226

; <label>:6                                       ; preds = %0
  %7 = sext i32 %num_dims to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call i8* @malloc(i64 %8) #6
  %10 = bitcast i8* %9 to i32*
  %11 = shl nsw i64 %7, 3
  %12 = tail call i8* @malloc(i64 %11) #6
  %13 = bitcast i8* %12 to i8**
  %14 = tail call i8* @malloc(i64 %8) #6
  %15 = bitcast i8* %14 to i32*
  %16 = tail call i8* @malloc(i64 %11) #6
  %17 = bitcast i8* %16 to i8**
  %18 = tail call i8* @malloc(i64 %8) #6
  %19 = bitcast i8* %18 to i32*
  %20 = sext i32 %num_in_arrays to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call i8* @malloc(i64 %21) #6
  %23 = bitcast i8* %22 to i8**
  %24 = shl nsw i64 %20, 2
  %25 = tail call i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to i32*
  %27 = sext i32 %num_out_arrays to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to i8**
  %31 = shl nsw i64 %27, 2
  %32 = tail call i8* @malloc(i64 %31) #6
  %33 = bitcast i8* %32 to i32*
  %34 = bitcast [1 x %struct.__va_list_tag]* %indices to i8*
  call void @llvm.va_start(i8* %34)
  %35 = icmp sgt i32 %num_dims, 0
  br i1 %35, label %.lr.ph41, label %.preheader19

.lr.ph41:                                         ; preds = %6
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %39 = add i32 %num_dims, -1
  %.pre = load i32* %36, align 16
  br label %44

.preheader23:                                     ; preds = %55
  br i1 %35, label %.lr.ph38, label %.preheader19

.lr.ph38:                                         ; preds = %.preheader23
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %43 = add i32 %num_dims, -1
  %.pre74 = load i32* %40, align 16
  br label %64

; <label>:44                                      ; preds = %55, %.lr.ph41
  %45 = phi i32 [ %.pre, %.lr.ph41 ], [ %56, %55 ]
  %indvars.iv70 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next71, %55 ]
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %52

; <label>:47                                      ; preds = %44
  %48 = load i8** %37, align 16
  %49 = sext i32 %45 to i64
  %50 = getelementptr i8* %48, i64 %49
  %51 = add i32 %45, 8
  store i32 %51, i32* %36, align 16
  br label %55

; <label>:52                                      ; preds = %44
  %53 = load i8** %38, align 8
  %54 = getelementptr i8* %53, i64 8
  store i8* %54, i8** %38, align 8
  br label %55

; <label>:55                                      ; preds = %52, %47
  %56 = phi i32 [ %51, %47 ], [ %45, %52 ]
  %.in16 = phi i8* [ %50, %47 ], [ %53, %52 ]
  %57 = bitcast i8* %.in16 to i32*
  %58 = load i32* %57, align 4
  %59 = getelementptr inbounds i32* %10, i64 %indvars.iv70
  store i32 %58, i32* %59, align 4, !tbaa !11
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv70 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %39
  br i1 %exitcond73, label %.preheader23, label %44

.preheader22:                                     ; preds = %75
  br i1 %35, label %.lr.ph36, label %.preheader19

.lr.ph36:                                         ; preds = %.preheader22
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %63 = add i32 %num_dims, -1
  %.pre75 = load i32* %60, align 16
  br label %85

; <label>:64                                      ; preds = %75, %.lr.ph38
  %65 = phi i32 [ %.pre74, %.lr.ph38 ], [ %76, %75 ]
  %indvars.iv66 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next67, %75 ]
  %66 = icmp ult i32 %65, 41
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %64
  %68 = load i8** %41, align 16
  %69 = sext i32 %65 to i64
  %70 = getelementptr i8* %68, i64 %69
  %71 = add i32 %65, 8
  store i32 %71, i32* %40, align 16
  br label %75

; <label>:72                                      ; preds = %64
  %73 = load i8** %42, align 8
  %74 = getelementptr i8* %73, i64 8
  store i8* %74, i8** %42, align 8
  br label %75

; <label>:75                                      ; preds = %72, %67
  %76 = phi i32 [ %71, %67 ], [ %65, %72 ]
  %.in15 = phi i8* [ %70, %67 ], [ %73, %72 ]
  %77 = bitcast i8* %.in15 to i64*
  %78 = load i64* %77, align 8
  %79 = getelementptr inbounds i8** %13, i64 %indvars.iv66
  %80 = bitcast i8** %79 to i64*
  store i64 %78, i64* %80, align 8, !tbaa !2
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %lftr.wideiv68 = trunc i64 %indvars.iv66 to i32
  %exitcond69 = icmp eq i32 %lftr.wideiv68, %43
  br i1 %exitcond69, label %.preheader22, label %64

.preheader21:                                     ; preds = %96
  br i1 %35, label %.lr.ph34, label %.preheader19

.lr.ph34:                                         ; preds = %.preheader21
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %83 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %84 = add i32 %num_dims, -1
  %.pre76 = load i32* %81, align 16
  br label %105

; <label>:85                                      ; preds = %96, %.lr.ph36
  %86 = phi i32 [ %.pre75, %.lr.ph36 ], [ %97, %96 ]
  %indvars.iv62 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next63, %96 ]
  %87 = icmp ult i32 %86, 41
  br i1 %87, label %88, label %93

; <label>:88                                      ; preds = %85
  %89 = load i8** %61, align 16
  %90 = sext i32 %86 to i64
  %91 = getelementptr i8* %89, i64 %90
  %92 = add i32 %86, 8
  store i32 %92, i32* %60, align 16
  br label %96

; <label>:93                                      ; preds = %85
  %94 = load i8** %62, align 8
  %95 = getelementptr i8* %94, i64 8
  store i8* %95, i8** %62, align 8
  br label %96

; <label>:96                                      ; preds = %93, %88
  %97 = phi i32 [ %92, %88 ], [ %86, %93 ]
  %.in14 = phi i8* [ %91, %88 ], [ %94, %93 ]
  %98 = bitcast i8* %.in14 to i32*
  %99 = load i32* %98, align 4
  %100 = getelementptr inbounds i32* %15, i64 %indvars.iv62
  store i32 %99, i32* %100, align 4, !tbaa !11
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %lftr.wideiv64 = trunc i64 %indvars.iv62 to i32
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %63
  br i1 %exitcond65, label %.preheader21, label %85

.preheader20:                                     ; preds = %116
  br i1 %35, label %.lr.ph32, label %.preheader19

.lr.ph32:                                         ; preds = %.preheader20
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %103 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %104 = add i32 %num_dims, -1
  %.pre77 = load i32* %101, align 16
  br label %127

; <label>:105                                     ; preds = %116, %.lr.ph34
  %106 = phi i32 [ %.pre76, %.lr.ph34 ], [ %117, %116 ]
  %indvars.iv58 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next59, %116 ]
  %107 = icmp ult i32 %106, 41
  br i1 %107, label %108, label %113

; <label>:108                                     ; preds = %105
  %109 = load i8** %82, align 16
  %110 = sext i32 %106 to i64
  %111 = getelementptr i8* %109, i64 %110
  %112 = add i32 %106, 8
  store i32 %112, i32* %81, align 16
  br label %116

; <label>:113                                     ; preds = %105
  %114 = load i8** %83, align 8
  %115 = getelementptr i8* %114, i64 8
  store i8* %115, i8** %83, align 8
  br label %116

; <label>:116                                     ; preds = %113, %108
  %117 = phi i32 [ %112, %108 ], [ %106, %113 ]
  %.in13 = phi i8* [ %111, %108 ], [ %114, %113 ]
  %118 = bitcast i8* %.in13 to i64*
  %119 = load i64* %118, align 8
  %120 = getelementptr inbounds i8** %17, i64 %indvars.iv58
  %121 = bitcast i8** %120 to i64*
  store i64 %119, i64* %121, align 8, !tbaa !2
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %lftr.wideiv60 = trunc i64 %indvars.iv58 to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %84
  br i1 %exitcond61, label %.preheader20, label %105

.preheader19:                                     ; preds = %138, %6, %.preheader23, %.preheader22, %.preheader21, %.preheader20
  %122 = icmp sgt i32 %num_in_arrays, 0
  br i1 %122, label %.lr.ph30, label %.preheader17

.lr.ph30:                                         ; preds = %.preheader19
  %123 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %124 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %126 = add i32 %num_in_arrays, -1
  %.pre78 = load i32* %123, align 16
  br label %147

; <label>:127                                     ; preds = %138, %.lr.ph32
  %128 = phi i32 [ %.pre77, %.lr.ph32 ], [ %139, %138 ]
  %indvars.iv54 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next55, %138 ]
  %129 = icmp ult i32 %128, 41
  br i1 %129, label %130, label %135

; <label>:130                                     ; preds = %127
  %131 = load i8** %102, align 16
  %132 = sext i32 %128 to i64
  %133 = getelementptr i8* %131, i64 %132
  %134 = add i32 %128, 8
  store i32 %134, i32* %101, align 16
  br label %138

; <label>:135                                     ; preds = %127
  %136 = load i8** %103, align 8
  %137 = getelementptr i8* %136, i64 8
  store i8* %137, i8** %103, align 8
  br label %138

; <label>:138                                     ; preds = %135, %130
  %139 = phi i32 [ %134, %130 ], [ %128, %135 ]
  %.in12 = phi i8* [ %133, %130 ], [ %136, %135 ]
  %140 = bitcast i8* %.in12 to i32*
  %141 = load i32* %140, align 4
  %142 = getelementptr inbounds i32* %19, i64 %indvars.iv54
  store i32 %141, i32* %142, align 4, !tbaa !11
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv54 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %104
  br i1 %exitcond57, label %.preheader19, label %127

.preheader18:                                     ; preds = %158
  br i1 %122, label %.lr.ph28, label %.preheader17

.lr.ph28:                                         ; preds = %.preheader18
  %143 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %145 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %146 = add i32 %num_in_arrays, -1
  %.pre79 = load i32* %143, align 16
  br label %169

; <label>:147                                     ; preds = %158, %.lr.ph30
  %148 = phi i32 [ %.pre78, %.lr.ph30 ], [ %159, %158 ]
  %indvars.iv50 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next51, %158 ]
  %149 = icmp ult i32 %148, 41
  br i1 %149, label %150, label %155

; <label>:150                                     ; preds = %147
  %151 = load i8** %124, align 16
  %152 = sext i32 %148 to i64
  %153 = getelementptr i8* %151, i64 %152
  %154 = add i32 %148, 8
  store i32 %154, i32* %123, align 16
  br label %158

; <label>:155                                     ; preds = %147
  %156 = load i8** %125, align 8
  %157 = getelementptr i8* %156, i64 8
  store i8* %157, i8** %125, align 8
  br label %158

; <label>:158                                     ; preds = %155, %150
  %159 = phi i32 [ %154, %150 ], [ %148, %155 ]
  %.in11 = phi i8* [ %153, %150 ], [ %156, %155 ]
  %160 = bitcast i8* %.in11 to i64*
  %161 = load i64* %160, align 8
  %162 = getelementptr inbounds i8** %23, i64 %indvars.iv50
  %163 = bitcast i8** %162 to i64*
  store i64 %161, i64* %163, align 8, !tbaa !2
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %126
  br i1 %exitcond53, label %.preheader18, label %147

.preheader17:                                     ; preds = %180, %.preheader19, %.preheader18
  %164 = icmp sgt i32 %num_out_arrays, 0
  br i1 %164, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %.preheader17
  %165 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %166 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %167 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %168 = add i32 %num_out_arrays, -1
  %.pre80 = load i32* %165, align 16
  br label %189

; <label>:169                                     ; preds = %180, %.lr.ph28
  %170 = phi i32 [ %.pre79, %.lr.ph28 ], [ %181, %180 ]
  %indvars.iv46 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next47, %180 ]
  %171 = icmp ult i32 %170, 41
  br i1 %171, label %172, label %177

; <label>:172                                     ; preds = %169
  %173 = load i8** %144, align 16
  %174 = sext i32 %170 to i64
  %175 = getelementptr i8* %173, i64 %174
  %176 = add i32 %170, 8
  store i32 %176, i32* %143, align 16
  br label %180

; <label>:177                                     ; preds = %169
  %178 = load i8** %145, align 8
  %179 = getelementptr i8* %178, i64 8
  store i8* %179, i8** %145, align 8
  br label %180

; <label>:180                                     ; preds = %177, %172
  %181 = phi i32 [ %176, %172 ], [ %170, %177 ]
  %.in10 = phi i8* [ %175, %172 ], [ %178, %177 ]
  %182 = bitcast i8* %.in10 to i32*
  %183 = load i32* %182, align 4
  %184 = getelementptr inbounds i32* %26, i64 %indvars.iv46
  store i32 %183, i32* %184, align 4, !tbaa !11
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv46 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %146
  br i1 %exitcond49, label %.preheader17, label %169

.preheader:                                       ; preds = %200
  br i1 %164, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %185 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %186 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %187 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %188 = add i32 %num_out_arrays, -1
  %.pre81 = load i32* %185, align 16
  br label %206

; <label>:189                                     ; preds = %200, %.lr.ph26
  %190 = phi i32 [ %.pre80, %.lr.ph26 ], [ %201, %200 ]
  %indvars.iv42 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next43, %200 ]
  %191 = icmp ult i32 %190, 41
  br i1 %191, label %192, label %197

; <label>:192                                     ; preds = %189
  %193 = load i8** %166, align 16
  %194 = sext i32 %190 to i64
  %195 = getelementptr i8* %193, i64 %194
  %196 = add i32 %190, 8
  store i32 %196, i32* %165, align 16
  br label %200

; <label>:197                                     ; preds = %189
  %198 = load i8** %167, align 8
  %199 = getelementptr i8* %198, i64 8
  store i8* %199, i8** %167, align 8
  br label %200

; <label>:200                                     ; preds = %197, %192
  %201 = phi i32 [ %196, %192 ], [ %190, %197 ]
  %.in9 = phi i8* [ %195, %192 ], [ %198, %197 ]
  %202 = bitcast i8* %.in9 to i64*
  %203 = load i64* %202, align 8
  %204 = getelementptr inbounds i8** %30, i64 %indvars.iv42
  %205 = bitcast i8** %204 to i64*
  store i64 %203, i64* %205, align 8, !tbaa !2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %168
  br i1 %exitcond45, label %.preheader, label %189

; <label>:206                                     ; preds = %217, %.lr.ph
  %207 = phi i32 [ %.pre81, %.lr.ph ], [ %218, %217 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %217 ]
  %208 = icmp ult i32 %207, 41
  br i1 %208, label %209, label %214

; <label>:209                                     ; preds = %206
  %210 = load i8** %186, align 16
  %211 = sext i32 %207 to i64
  %212 = getelementptr i8* %210, i64 %211
  %213 = add i32 %207, 8
  store i32 %213, i32* %185, align 16
  br label %217

; <label>:214                                     ; preds = %206
  %215 = load i8** %187, align 8
  %216 = getelementptr i8* %215, i64 8
  store i8* %216, i8** %187, align 8
  br label %217

; <label>:217                                     ; preds = %214, %209
  %218 = phi i32 [ %213, %209 ], [ %207, %214 ]
  %.in = phi i8* [ %212, %209 ], [ %215, %214 ]
  %219 = bitcast i8* %.in to i32*
  %220 = load i32* %219, align 4
  %221 = getelementptr inbounds i32* %33, i64 %indvars.iv
  store i32 %220, i32* %221, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %188
  br i1 %exitcond, label %._crit_edge, label %206

._crit_edge:                                      ; preds = %217, %.preheader17, %.preheader
  call void @llvm.va_end(i8* %34)
  %222 = getelementptr inbounds i8* %2, i64 24
  %223 = bitcast i8* %222 to i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)**
  %224 = load i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %223, align 8, !tbaa !10
  %225 = call i32 %224(%struct.cGH* %GH, i32 %num_points, i32 %num_dims, i32 %num_in_arrays, i32 %num_out_arrays, i32* %10, i8** %13, i32* %15, i8** %17, i32* %19, i8** %23, i32* %26, i8** %30, i32* %33) #6
  call void @free(i8* %32) #7
  call void @free(i8* %29) #7
  call void @free(i8* %25) #7
  call void @free(i8* %22) #7
  call void @free(i8* %18) #7
  call void @free(i8* %16) #7
  call void @free(i8* %14) #7
  call void @free(i8* %12) #7
  call void @free(i8* %9) #7
  br label %226

; <label>:226                                     ; preds = %._crit_edge, %4
  %retcode.0 = phi i32 [ -1, %4 ], [ %225, %._crit_edge ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_interplocal_(i32* nocapture %fortranreturn, %struct.cGH* %GH, i32* nocapture readonly %operator_handle, i32* nocapture readonly %num_points, i32* nocapture readonly %num_dims, i32* nocapture readonly %num_in_arrays, i32* nocapture readonly %num_out_arrays, ...) #1 {
  %indices = alloca [1 x %struct.__va_list_tag], align 16
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = load i32* %operator_handle, align 4, !tbaa !11
  %3 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %2) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_Warn(i32 3, i32 809, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str12, i64 0, i64 0)) #6
  br label %251

; <label>:7                                       ; preds = %0
  %8 = load i32* %num_dims, align 4, !tbaa !11
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  %11 = tail call i8* @malloc(i64 %10) #6
  %12 = bitcast i8* %11 to i32*
  %13 = shl nsw i64 %9, 3
  %14 = tail call i8* @malloc(i64 %13) #6
  %15 = bitcast i8* %14 to i8**
  %16 = tail call i8* @malloc(i64 %10) #6
  %17 = bitcast i8* %16 to i32*
  %18 = tail call i8* @malloc(i64 %13) #6
  %19 = bitcast i8* %18 to i8**
  %20 = tail call i8* @malloc(i64 %10) #6
  %21 = bitcast i8* %20 to i32*
  %22 = load i32* %num_in_arrays, align 4, !tbaa !11
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to i8**
  %27 = shl nsw i64 %23, 2
  %28 = tail call i8* @malloc(i64 %27) #6
  %29 = bitcast i8* %28 to i32*
  %30 = load i32* %num_out_arrays, align 4, !tbaa !11
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call i8* @malloc(i64 %32) #6
  %34 = bitcast i8* %33 to i8**
  %35 = shl nsw i64 %31, 2
  %36 = tail call i8* @malloc(i64 %35) #6
  %37 = bitcast i8* %36 to i32*
  %38 = bitcast [1 x %struct.__va_list_tag]* %indices to i8*
  call void @llvm.va_start(i8* %38)
  %39 = load i32* %num_dims, align 4, !tbaa !11
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %.lr.ph41, label %.preheader19

.lr.ph41:                                         ; preds = %7
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre = load i32* %41, align 16
  br label %47

.preheader23:                                     ; preds = %58
  br i1 %40, label %.lr.ph38, label %.preheader19

.lr.ph38:                                         ; preds = %.preheader23
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre58 = load i32* %44, align 16
  br label %69

; <label>:47                                      ; preds = %.lr.ph41, %58
  %48 = phi i32 [ %.pre, %.lr.ph41 ], [ %59, %58 ]
  %indvars.iv56 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next57, %58 ]
  %49 = icmp ult i32 %48, 41
  br i1 %49, label %50, label %55

; <label>:50                                      ; preds = %47
  %51 = load i8** %42, align 16
  %52 = sext i32 %48 to i64
  %53 = getelementptr i8* %51, i64 %52
  %54 = add i32 %48, 8
  store i32 %54, i32* %41, align 16
  br label %58

; <label>:55                                      ; preds = %47
  %56 = load i8** %43, align 8
  %57 = getelementptr i8* %56, i64 8
  store i8* %57, i8** %43, align 8
  br label %58

; <label>:58                                      ; preds = %55, %50
  %59 = phi i32 [ %54, %50 ], [ %48, %55 ]
  %.in16 = phi i8* [ %53, %50 ], [ %56, %55 ]
  %60 = bitcast i8* %.in16 to i32**
  %61 = load i32** %60, align 8
  %62 = load i32* %61, align 4, !tbaa !11
  %63 = getelementptr inbounds i32* %12, i64 %indvars.iv56
  store i32 %62, i32* %63, align 4, !tbaa !11
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %64 = sext i32 %39 to i64
  %65 = icmp slt i64 %indvars.iv.next57, %64
  br i1 %65, label %47, label %.preheader23

.preheader22:                                     ; preds = %80
  br i1 %40, label %.lr.ph36, label %.preheader19

.lr.ph36:                                         ; preds = %.preheader22
  %66 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre59 = load i32* %66, align 16
  br label %91

; <label>:69                                      ; preds = %.lr.ph38, %80
  %70 = phi i32 [ %.pre58, %.lr.ph38 ], [ %81, %80 ]
  %indvars.iv54 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next55, %80 ]
  %71 = icmp ult i32 %70, 41
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %69
  %73 = load i8** %45, align 16
  %74 = sext i32 %70 to i64
  %75 = getelementptr i8* %73, i64 %74
  %76 = add i32 %70, 8
  store i32 %76, i32* %44, align 16
  br label %80

; <label>:77                                      ; preds = %69
  %78 = load i8** %46, align 8
  %79 = getelementptr i8* %78, i64 8
  store i8* %79, i8** %46, align 8
  br label %80

; <label>:80                                      ; preds = %77, %72
  %81 = phi i32 [ %76, %72 ], [ %70, %77 ]
  %.in15 = phi i8* [ %75, %72 ], [ %78, %77 ]
  %82 = bitcast i8* %.in15 to i64*
  %83 = load i64* %82, align 8
  %84 = getelementptr inbounds i8** %15, i64 %indvars.iv54
  %85 = bitcast i8** %84 to i64*
  store i64 %83, i64* %85, align 8, !tbaa !2
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %86 = sext i32 %39 to i64
  %87 = icmp slt i64 %indvars.iv.next55, %86
  br i1 %87, label %69, label %.preheader22

.preheader21:                                     ; preds = %102
  br i1 %40, label %.lr.ph34, label %.preheader19

.lr.ph34:                                         ; preds = %.preheader21
  %88 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %89 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %90 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre60 = load i32* %88, align 16
  br label %113

; <label>:91                                      ; preds = %.lr.ph36, %102
  %92 = phi i32 [ %.pre59, %.lr.ph36 ], [ %103, %102 ]
  %indvars.iv52 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next53, %102 ]
  %93 = icmp ult i32 %92, 41
  br i1 %93, label %94, label %99

; <label>:94                                      ; preds = %91
  %95 = load i8** %67, align 16
  %96 = sext i32 %92 to i64
  %97 = getelementptr i8* %95, i64 %96
  %98 = add i32 %92, 8
  store i32 %98, i32* %66, align 16
  br label %102

; <label>:99                                      ; preds = %91
  %100 = load i8** %68, align 8
  %101 = getelementptr i8* %100, i64 8
  store i8* %101, i8** %68, align 8
  br label %102

; <label>:102                                     ; preds = %99, %94
  %103 = phi i32 [ %98, %94 ], [ %92, %99 ]
  %.in14 = phi i8* [ %97, %94 ], [ %100, %99 ]
  %104 = bitcast i8* %.in14 to i32**
  %105 = load i32** %104, align 8
  %106 = load i32* %105, align 4, !tbaa !11
  %107 = getelementptr inbounds i32* %17, i64 %indvars.iv52
  store i32 %106, i32* %107, align 4, !tbaa !11
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %108 = sext i32 %39 to i64
  %109 = icmp slt i64 %indvars.iv.next53, %108
  br i1 %109, label %91, label %.preheader21

.preheader20:                                     ; preds = %124
  br i1 %40, label %.lr.ph32, label %.preheader19

.lr.ph32:                                         ; preds = %.preheader20
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %111 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre61 = load i32* %110, align 16
  br label %137

; <label>:113                                     ; preds = %.lr.ph34, %124
  %114 = phi i32 [ %.pre60, %.lr.ph34 ], [ %125, %124 ]
  %indvars.iv50 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next51, %124 ]
  %115 = icmp ult i32 %114, 41
  br i1 %115, label %116, label %121

; <label>:116                                     ; preds = %113
  %117 = load i8** %89, align 16
  %118 = sext i32 %114 to i64
  %119 = getelementptr i8* %117, i64 %118
  %120 = add i32 %114, 8
  store i32 %120, i32* %88, align 16
  br label %124

; <label>:121                                     ; preds = %113
  %122 = load i8** %90, align 8
  %123 = getelementptr i8* %122, i64 8
  store i8* %123, i8** %90, align 8
  br label %124

; <label>:124                                     ; preds = %121, %116
  %125 = phi i32 [ %120, %116 ], [ %114, %121 ]
  %.in13 = phi i8* [ %119, %116 ], [ %122, %121 ]
  %126 = bitcast i8* %.in13 to i64*
  %127 = load i64* %126, align 8
  %128 = getelementptr inbounds i8** %19, i64 %indvars.iv50
  %129 = bitcast i8** %128 to i64*
  store i64 %127, i64* %129, align 8, !tbaa !2
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %130 = sext i32 %39 to i64
  %131 = icmp slt i64 %indvars.iv.next51, %130
  br i1 %131, label %113, label %.preheader20

.preheader19:                                     ; preds = %148, %7, %.preheader23, %.preheader22, %.preheader21, %.preheader20
  %132 = load i32* %num_in_arrays, align 4, !tbaa !11
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %.lr.ph30, label %.preheader17

.lr.ph30:                                         ; preds = %.preheader19
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %135 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %136 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre62 = load i32* %134, align 16
  br label %159

; <label>:137                                     ; preds = %.lr.ph32, %148
  %138 = phi i32 [ %.pre61, %.lr.ph32 ], [ %149, %148 ]
  %indvars.iv48 = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next49, %148 ]
  %139 = icmp ult i32 %138, 41
  br i1 %139, label %140, label %145

; <label>:140                                     ; preds = %137
  %141 = load i8** %111, align 16
  %142 = sext i32 %138 to i64
  %143 = getelementptr i8* %141, i64 %142
  %144 = add i32 %138, 8
  store i32 %144, i32* %110, align 16
  br label %148

; <label>:145                                     ; preds = %137
  %146 = load i8** %112, align 8
  %147 = getelementptr i8* %146, i64 8
  store i8* %147, i8** %112, align 8
  br label %148

; <label>:148                                     ; preds = %145, %140
  %149 = phi i32 [ %144, %140 ], [ %138, %145 ]
  %.in12 = phi i8* [ %143, %140 ], [ %146, %145 ]
  %150 = bitcast i8* %.in12 to i32**
  %151 = load i32** %150, align 8
  %152 = load i32* %151, align 4, !tbaa !11
  %153 = getelementptr inbounds i32* %21, i64 %indvars.iv48
  store i32 %152, i32* %153, align 4, !tbaa !11
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %154 = sext i32 %39 to i64
  %155 = icmp slt i64 %indvars.iv.next49, %154
  br i1 %155, label %137, label %.preheader19

.preheader18:                                     ; preds = %170
  br i1 %133, label %.lr.ph28, label %.preheader17

.lr.ph28:                                         ; preds = %.preheader18
  %156 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %157 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %158 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre63 = load i32* %156, align 16
  br label %183

; <label>:159                                     ; preds = %.lr.ph30, %170
  %160 = phi i32 [ %.pre62, %.lr.ph30 ], [ %171, %170 ]
  %indvars.iv46 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next47, %170 ]
  %161 = icmp ult i32 %160, 41
  br i1 %161, label %162, label %167

; <label>:162                                     ; preds = %159
  %163 = load i8** %135, align 16
  %164 = sext i32 %160 to i64
  %165 = getelementptr i8* %163, i64 %164
  %166 = add i32 %160, 8
  store i32 %166, i32* %134, align 16
  br label %170

; <label>:167                                     ; preds = %159
  %168 = load i8** %136, align 8
  %169 = getelementptr i8* %168, i64 8
  store i8* %169, i8** %136, align 8
  br label %170

; <label>:170                                     ; preds = %167, %162
  %171 = phi i32 [ %166, %162 ], [ %160, %167 ]
  %.in11 = phi i8* [ %165, %162 ], [ %168, %167 ]
  %172 = bitcast i8* %.in11 to i64*
  %173 = load i64* %172, align 8
  %174 = getelementptr inbounds i8** %26, i64 %indvars.iv46
  %175 = bitcast i8** %174 to i64*
  store i64 %173, i64* %175, align 8, !tbaa !2
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %176 = sext i32 %132 to i64
  %177 = icmp slt i64 %indvars.iv.next47, %176
  br i1 %177, label %159, label %.preheader18

.preheader17:                                     ; preds = %194, %.preheader19, %.preheader18
  %178 = load i32* %num_out_arrays, align 4, !tbaa !11
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %.preheader17
  %180 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %181 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %182 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre64 = load i32* %180, align 16
  br label %205

; <label>:183                                     ; preds = %.lr.ph28, %194
  %184 = phi i32 [ %.pre63, %.lr.ph28 ], [ %195, %194 ]
  %indvars.iv44 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next45, %194 ]
  %185 = icmp ult i32 %184, 41
  br i1 %185, label %186, label %191

; <label>:186                                     ; preds = %183
  %187 = load i8** %157, align 16
  %188 = sext i32 %184 to i64
  %189 = getelementptr i8* %187, i64 %188
  %190 = add i32 %184, 8
  store i32 %190, i32* %156, align 16
  br label %194

; <label>:191                                     ; preds = %183
  %192 = load i8** %158, align 8
  %193 = getelementptr i8* %192, i64 8
  store i8* %193, i8** %158, align 8
  br label %194

; <label>:194                                     ; preds = %191, %186
  %195 = phi i32 [ %190, %186 ], [ %184, %191 ]
  %.in10 = phi i8* [ %189, %186 ], [ %192, %191 ]
  %196 = bitcast i8* %.in10 to i32**
  %197 = load i32** %196, align 8
  %198 = load i32* %197, align 4, !tbaa !11
  %199 = getelementptr inbounds i32* %29, i64 %indvars.iv44
  store i32 %198, i32* %199, align 4, !tbaa !11
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %200 = sext i32 %132 to i64
  %201 = icmp slt i64 %indvars.iv.next45, %200
  br i1 %201, label %183, label %.preheader17

.preheader:                                       ; preds = %216
  br i1 %179, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %202 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 0
  %203 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 3
  %204 = getelementptr inbounds [1 x %struct.__va_list_tag]* %indices, i64 0, i64 0, i32 2
  %.pre65 = load i32* %202, align 16
  br label %224

; <label>:205                                     ; preds = %.lr.ph26, %216
  %206 = phi i32 [ %.pre64, %.lr.ph26 ], [ %217, %216 ]
  %indvars.iv42 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next43, %216 ]
  %207 = icmp ult i32 %206, 41
  br i1 %207, label %208, label %213

; <label>:208                                     ; preds = %205
  %209 = load i8** %181, align 16
  %210 = sext i32 %206 to i64
  %211 = getelementptr i8* %209, i64 %210
  %212 = add i32 %206, 8
  store i32 %212, i32* %180, align 16
  br label %216

; <label>:213                                     ; preds = %205
  %214 = load i8** %182, align 8
  %215 = getelementptr i8* %214, i64 8
  store i8* %215, i8** %182, align 8
  br label %216

; <label>:216                                     ; preds = %213, %208
  %217 = phi i32 [ %212, %208 ], [ %206, %213 ]
  %.in9 = phi i8* [ %211, %208 ], [ %214, %213 ]
  %218 = bitcast i8* %.in9 to i64*
  %219 = load i64* %218, align 8
  %220 = getelementptr inbounds i8** %34, i64 %indvars.iv42
  %221 = bitcast i8** %220 to i64*
  store i64 %219, i64* %221, align 8, !tbaa !2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %222 = sext i32 %178 to i64
  %223 = icmp slt i64 %indvars.iv.next43, %222
  br i1 %223, label %205, label %.preheader

; <label>:224                                     ; preds = %.lr.ph, %235
  %225 = phi i32 [ %.pre65, %.lr.ph ], [ %236, %235 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %235 ]
  %226 = icmp ult i32 %225, 41
  br i1 %226, label %227, label %232

; <label>:227                                     ; preds = %224
  %228 = load i8** %203, align 16
  %229 = sext i32 %225 to i64
  %230 = getelementptr i8* %228, i64 %229
  %231 = add i32 %225, 8
  store i32 %231, i32* %202, align 16
  br label %235

; <label>:232                                     ; preds = %224
  %233 = load i8** %204, align 8
  %234 = getelementptr i8* %233, i64 8
  store i8* %234, i8** %204, align 8
  br label %235

; <label>:235                                     ; preds = %232, %227
  %236 = phi i32 [ %231, %227 ], [ %225, %232 ]
  %.in = phi i8* [ %230, %227 ], [ %233, %232 ]
  %237 = bitcast i8* %.in to i32**
  %238 = load i32** %237, align 8
  %239 = load i32* %238, align 4, !tbaa !11
  %240 = getelementptr inbounds i32* %37, i64 %indvars.iv
  store i32 %239, i32* %240, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %241 = sext i32 %178 to i64
  %242 = icmp slt i64 %indvars.iv.next, %241
  br i1 %242, label %224, label %._crit_edge

._crit_edge:                                      ; preds = %235, %.preheader17, %.preheader
  call void @llvm.va_end(i8* %38)
  %243 = getelementptr inbounds i8* %3, i64 24
  %244 = bitcast i8* %243 to i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)**
  %245 = load i32 (%struct.cGH*, i32, i32, i32, i32, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*)** %244, align 8, !tbaa !10
  %246 = load i32* %num_points, align 4, !tbaa !11
  %247 = load i32* %num_dims, align 4, !tbaa !11
  %248 = load i32* %num_in_arrays, align 4, !tbaa !11
  %249 = load i32* %num_out_arrays, align 4, !tbaa !11
  %250 = call i32 %245(%struct.cGH* %GH, i32 %246, i32 %247, i32 %248, i32 %249, i32* %12, i8** %15, i32* %17, i8** %19, i32* %21, i8** %26, i32* %29, i8** %34, i32* %37) #6
  call void @free(i8* %36) #7
  call void @free(i8* %33) #7
  call void @free(i8* %28) #7
  call void @free(i8* %25) #7
  call void @free(i8* %20) #7
  call void @free(i8* %18) #7
  call void @free(i8* %16) #7
  call void @free(i8* %14) #7
  call void @free(i8* %11) #7
  br label %251

; <label>:251                                     ; preds = %._crit_edge, %5
  %retcode.0 = phi i32 [ -1, %5 ], [ %250, %._crit_edge ]
  store i32 %retcode.0, i32* %fortranreturn, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumInterpOperators() #5 {
  %1 = load i32* @num_interp_operators, align 4, !tbaa !11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_InterpOperatorImplementation(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @interp_operators, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**
  %6 = load i8** %5, align 8, !tbaa !6
  br label %7

; <label>:7                                       ; preds = %0, %4
  %imp.0 = phi i8* [ %6, %4 ], [ null, %0 ]
  ret i8* %imp.0
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!8 = !{!7, !3, i64 8}
!9 = !{!7, !3, i64 16}
!10 = !{!7, !3, i64 24}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !4, i64 0}
