; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGroupDefinition = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, %struct.cVariableDefinition*, i8* }
%struct.cVariableDefinition = type { i8*, i32, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.uExpressionValue = type { i32, %union.anon }
%union.anon = type { double }

@_cctk_one = global i32 1, align 4
@staggered = internal unnamed_addr global i1 false
@n_groups = internal unnamed_addr global i32 0, align 4
@groups = internal unnamed_addr global %struct.cGroupDefinition* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_GroupIndex: No group named '%s' found\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"CCTK_VarIndex: No variable named '%s' found\00", align 1
@maxdim = internal unnamed_addr global i32 0, align 4
@total_variables = internal unnamed_addr global i32 0, align 4
@group_of_variable = internal unnamed_addr global i32* null, align 8
@.str4 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"GF\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"ARRAY\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"INT2\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"INT4\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"INT8\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"REAL4\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"REAL8\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"REAL16\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"COMPLEX\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"COMPLEX8\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"COMPLEX16\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"COMPLEX32\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str22 = private unnamed_addr constant [18 x i8] c"CCTK_VARIABLE_INT\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_INT2\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_INT4\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_INT8\00", align 1
@.str26 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_REAL\00", align 1
@.str27 = private unnamed_addr constant [20 x i8] c"CCTK_VARIABLE_REAL4\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"CCTK_VARIABLE_REAL8\00", align 1
@.str29 = private unnamed_addr constant [22 x i8] c"CCTK_VARIABLE_COMPLEX\00", align 1
@.str30 = private unnamed_addr constant [23 x i8] c"CCTK_VARIABLE_COMPLEX8\00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"CCTK_VARIABLE_COMPLEX16\00", align 1
@.str32 = private unnamed_addr constant [24 x i8] c"CCTK_VARIABLE_COMPLEX32\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_CHAR\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"CCTK_VARIABLE_STRING\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"PROTECTED\00", align 1
@.str37 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str40 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str41 = private unnamed_addr constant [51 x i8] c"CCTK_DecomposeName: Full name '%s' in wrong format\00", align 1
@.str42 = private unnamed_addr constant [45 x i8] c"CCTK_DecomposeName: Memory allocation failed\00", align 1
@.str43 = private unnamed_addr constant [46 x i8] c"CCTK_DecomposeName: Error failed to be caught\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str44 = private unnamed_addr constant [16 x i8] c"Group %d is %s\0A\00", align 1
@.str45 = private unnamed_addr constant [19 x i8] c"Variable %d is %s\0A\00", align 1
@.str46 = private unnamed_addr constant [45 x i8] c"CCTK_VarTypeSize: Unknown variable type (%d)\00", align 1
@.str47 = private unnamed_addr constant [39 x i8] c"CCTK_TraverseString: No callback given\00", align 1
@.str48 = private unnamed_addr constant [85 x i8] c"CCTK_TraverseString: option string '%s' not associated with a group or variable name\00", align 1
@.str49 = private unnamed_addr constant [53 x i8] c"CCTK_TraverseString: unterminated option string '%s'\00", align 1
@.str50 = private unnamed_addr constant [58 x i8] c"CCTK_TraverseString: garbage at end of option string '%s'\00", align 1
@.str51 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str52 = private unnamed_addr constant [61 x i8] c"CCTK_TraverseString: Ignoring '%s' in string (invalid token)\00", align 1
@.str53 = private unnamed_addr constant [52 x i8] c"CCTKi_CreateGroup: length of group %s less than 1 !\00", align 1
@.str54 = private unnamed_addr constant [44 x i8] c"CCTKi_CreateGroup: Unrecognised group scope\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@gfdim = internal unnamed_addr global i32 0, align 4
@.str56 = private unnamed_addr constant [25 x i8] c"CCTKi_CreateGroup: Error\00", align 1
@.str57 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/Groups.c,v 1.111 2001/11/27 23:46:28 tradke Exp $\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str59 = private unnamed_addr constant [42 x i8] c"Unable to parse parameter expression '%s'\00", align 1
@.str60 = private unnamed_addr constant [45 x i8] c"Unable to evaluate parameter expression '%s'\00", align 1
@.str61 = private unnamed_addr constant [51 x i8] c"IntParameterEvaluator: '%s::%s' is not a parameter\00", align 1
@.str62 = private unnamed_addr constant [60 x i8] c"IntParameterEvaluator: '%s::%s' is not an integer parameter\00", align 1
@switch.table = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0)]
@switch.table63 = private unnamed_addr constant [16 x i32] [i32 1, i32 4, i32 2, i32 4, i32 8, i32 8, i32 4, i32 8, i32 16, i32 16, i32 8, i32 16, i32 32, i32 1, i32 8, i32 8]

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Groups_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str57, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_StaggerVars() #1 {
  %.b = load i1* @staggered, align 1
  %1 = zext i1 %.b to i32
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupIndex(i8* %fullgroupname) #2 {
  %impname = alloca i8*, align 8
  %groupname = alloca i8*, align 8
  store i8* null, i8** %groupname, align 8, !tbaa !2
  store i8* null, i8** %impname, align 8, !tbaa !2
  %1 = call i32 @CCTK_DecomposeName(i8* %fullgroupname, i8** %impname, i8** %groupname) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.preheader, label %26

.preheader:                                       ; preds = %0
  %3 = load i32* @n_groups, align 4, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %.preheader ]
  %5 = load i8** %impname, align 8, !tbaa !2
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %indvars.iv, i32 1
  %8 = load i8** %7, align 8, !tbaa !8
  %9 = call i32 @CCTK_Equals(i8* %5, i8* %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

; <label>:11                                      ; preds = %.lr.ph
  %12 = load i8** %groupname, align 8, !tbaa !2
  %13 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %14 = getelementptr inbounds %struct.cGroupDefinition* %13, i64 %indvars.iv, i32 2
  %15 = load i8** %14, align 8, !tbaa !10
  %16 = call i32 @CCTK_Equals(i8* %12, i8* %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %11, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = load i32* @n_groups, align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %indvars.iv.next, %20
  br i1 %21, label %.lr.ph, label %.thread

; <label>:22                                      ; preds = %11
  %23 = trunc i64 %indvars.iv to i32
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %.thread, label %26

.thread:                                          ; preds = %18, %.preheader, %22
  %retval.01 = phi i32 [ %23, %22 ], [ -1, %.preheader ], [ -1, %18 ]
  %25 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 252, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %fullgroupname) #10
  br label %26

; <label>:26                                      ; preds = %0, %22, %.thread
  %retval.1 = phi i32 [ %1, %0 ], [ %retval.01, %.thread ], [ %23, %22 ]
  %27 = load i8** %impname, align 8, !tbaa !2
  %28 = icmp eq i8* %27, null
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %26
  call void @free(i8* %27) #9
  br label %30

; <label>:30                                      ; preds = %26, %29
  %31 = load i8** %groupname, align 8, !tbaa !2
  %32 = icmp eq i8* %31, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %30
  call void @free(i8* %31) #9
  br label %34

; <label>:34                                      ; preds = %30, %33
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_DecomposeName(i8* %fullname, i8** %implementation, i8** %name) #2 {
  %1 = tail call i32 @Util_SplitString(i8** %implementation, i8** %name, i8* %fullname, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #10
  switch i32 %1, label %6 [
    i32 0, label %8
    i32 1, label %2
    i32 2, label %4
  ]

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1026, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str41, i64 0, i64 0), i8* %fullname) #10
  br label %8

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_Warn(i32 2, i32 1033, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str42, i64 0, i64 0)) #10
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_Warn(i32 1, i32 1039, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str43, i64 0, i64 0)) #10
  br label %8

; <label>:8                                       ; preds = %0, %2, %6, %4
  %retval.0 = phi i32 [ -3, %2 ], [ -4, %4 ], [ -2, %6 ], [ 0, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupindex_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_GroupIndex(i8* %1) #9
  store i32 %2, i32* %vindex, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VarIndex(i8* %fullvarname) #2 {
  %impname = alloca i8*, align 8
  %varname = alloca i8*, align 8
  store i8* null, i8** %varname, align 8, !tbaa !2
  store i8* null, i8** %impname, align 8, !tbaa !2
  %1 = call i32 @CCTK_DecomposeName(i8* %fullvarname, i8** %impname, i8** %varname) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.preheader2, label %39

.preheader2:                                      ; preds = %0
  %3 = load i32* @n_groups, align 4, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph7, label %.critedge.thread

.lr.ph7:                                          ; preds = %.preheader2, %.loopexit
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %.loopexit ], [ 0, %.preheader2 ]
  %retval.05 = phi i32 [ %retval.1, %.loopexit ], [ -1, %.preheader2 ]
  %5 = load i8** %impname, align 8, !tbaa !2
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %indvars.iv11, i32 1
  %8 = load i8** %7, align 8, !tbaa !8
  %9 = call i32 @CCTK_Equals(i8* %5, i8* %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph7
  %11 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.cGroupDefinition* %11, i64 %indvars.iv11, i32 11
  %13 = load i32* %12, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph, label %.loopexit

; <label>:15                                      ; preds = %.lr.ph
  %16 = getelementptr inbounds %struct.cGroupDefinition* %28, i64 %indvars.iv11, i32 11
  %17 = load i32* %16, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.preheader ]
  %20 = phi %struct.cGroupDefinition* [ %28, %15 ], [ %11, %.preheader ]
  %21 = load i8** %varname, align 8, !tbaa !2
  %22 = getelementptr inbounds %struct.cGroupDefinition* %20, i64 %indvars.iv11, i32 14
  %23 = load %struct.cVariableDefinition** %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.cVariableDefinition* %23, i64 %indvars.iv, i32 0
  %25 = load i8** %24, align 8, !tbaa !13
  %26 = call i32 @CCTK_Equals(i8* %21, i8* %25) #10
  %27 = icmp eq i32 %26, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %28 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  br i1 %27, label %15, label %29

; <label>:29                                      ; preds = %.lr.ph
  %30 = getelementptr inbounds %struct.cGroupDefinition* %28, i64 %indvars.iv11, i32 14
  %31 = load %struct.cVariableDefinition** %30, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.cVariableDefinition* %31, i64 %indvars.iv, i32 1
  %33 = load i32* %32, align 4, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %15, %.preheader, %.lr.ph7, %29
  %retval.1 = phi i32 [ %33, %29 ], [ %retval.05, %.lr.ph7 ], [ %retval.05, %.preheader ], [ %retval.05, %15 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %34 = load i32* @n_groups, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %indvars.iv.next12, %35
  %37 = icmp slt i32 %retval.1, 0
  %or.cond = and i1 %37, %36
  br i1 %or.cond, label %.lr.ph7, label %.critedge

.critedge:                                        ; preds = %.loopexit
  br i1 %37, label %.critedge.thread, label %39

.critedge.thread:                                 ; preds = %.preheader2, %.critedge
  %retval.0.lcssa13 = phi i32 [ %retval.1, %.critedge ], [ -1, %.preheader2 ]
  %38 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 327, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i8* %fullvarname) #10
  br label %39

; <label>:39                                      ; preds = %0, %.critedge, %.critedge.thread
  %retval.2 = phi i32 [ %1, %0 ], [ %retval.0.lcssa13, %.critedge.thread ], [ %retval.1, %.critedge ]
  %40 = load i8** %impname, align 8, !tbaa !2
  %41 = icmp eq i8* %40, null
  br i1 %41, label %43, label %42

; <label>:42                                      ; preds = %39
  call void @free(i8* %40) #9
  br label %43

; <label>:43                                      ; preds = %39, %42
  %44 = load i8** %varname, align 8, !tbaa !2
  %45 = icmp eq i8* %44, null
  br i1 %45, label %47, label %46

; <label>:46                                      ; preds = %43
  call void @free(i8* %44) #9
  br label %47

; <label>:47                                      ; preds = %43, %46
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_varindex_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_VarIndex(i8* %1) #9
  store i32 %2, i32* %vindex, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_MaxDim() #1 {
  %1 = load i32* @maxdim, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_maxdim_(i32* nocapture %dim) #2 {
  %1 = load i32* @maxdim, align 4, !tbaa !6
  store i32 %1, i32* %dim, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumVars() #1 {
  %1 = load i32* @total_variables, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numvars_(i32* nocapture %num_vars) #2 {
  %1 = load i32* @total_variables, align 4, !tbaa !6
  store i32 %1, i32* %num_vars, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumGroups() #1 {
  %1 = load i32* @n_groups, align 4, !tbaa !6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numgroups_(i32* nocapture %num_groups) #2 {
  %1 = load i32* @n_groups, align 4, !tbaa !6
  store i32 %1, i32* %num_groups, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_GroupNameFromVarI(i32 %var) #2 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %26

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 2
  %12 = load i8** %11, align 8, !tbaa !10
  %13 = tail call i64 @strlen(i8* %12) #10
  %14 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 1
  %15 = load i8** %14, align 8, !tbaa !8
  %16 = tail call i64 @strlen(i8* %15) #10
  %17 = add i64 %13, 3
  %18 = add i64 %17, %16
  %19 = tail call i8* @malloc(i64 %18) #10
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

; <label>:21                                      ; preds = %4
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %19, i1 false)
  %23 = load i8** %14, align 8, !tbaa !8
  %24 = load i8** %11, align 8, !tbaa !10
  %25 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %19, i32 0, i64 %22, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %23, i8* %24) #10
  br label %26

; <label>:26                                      ; preds = %0, %4, %21
  %fullname.0 = phi i8* [ %19, %21 ], [ null, %4 ], [ null, %0 ]
  ret i8* %fullname.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupIndexFromVarI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupindexfromvari_(i32* nocapture %gindex, i32* nocapture readonly %var) #2 {
  %1 = load i32* %var, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_GroupIndexFromVarI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  br label %CCTK_GroupIndexFromVarI.exit

CCTK_GroupIndexFromVarI.exit:                     ; preds = %0, %5
  %10 = phi i32 [ %9, %5 ], [ -1, %0 ]
  store i32 %10, i32* %gindex, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupIndexFromVar(i8* %var) #2 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %var) #9
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_GroupIndexFromVarI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  br label %CCTK_GroupIndexFromVarI.exit

CCTK_GroupIndexFromVarI.exit:                     ; preds = %0, %5
  %10 = phi i32 [ %9, %5 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupindexfromvar_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_GroupIndexFromVar(i8* %1) #9
  store i32 %2, i32* %vindex, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @CCTK_ImpFromVarI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 1
  %12 = load i8** %11, align 8, !tbaa !8
  br label %13

; <label>:13                                      ; preds = %0, %4
  %14 = phi i8* [ %12, %4 ], [ null, %0 ]
  ret i8* %14
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_FullName(i32 %var) #2 {
  %1 = tail call i8* @CCTK_VarName(i32 %var) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %21, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i32 %var to i64
  %5 = load i32** @group_of_variable, align 8, !tbaa !2
  %6 = getelementptr inbounds i32* %5, i64 %4
  %7 = load i32* %6, align 4, !tbaa !6
  %8 = sext i32 %7 to i64
  %9 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 1
  %11 = load i8** %10, align 8, !tbaa !8
  %12 = tail call i64 @strlen(i8* %1) #10
  %13 = tail call i64 @strlen(i8* %11) #10
  %14 = add i64 %12, 3
  %15 = add i64 %14, %13
  %16 = tail call i8* @malloc(i64 %15) #10
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %3
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false)
  %20 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %16, i32 0, i64 %19, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %11, i8* %1) #10
  br label %21

; <label>:21                                      ; preds = %0, %3, %18
  %fullname.0 = phi i8* [ %16, %18 ], [ null, %3 ], [ null, %0 ]
  ret i8* %fullname.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @CCTK_VarName(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %19

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 14
  %12 = load %struct.cVariableDefinition** %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.cVariableDefinition* %12, i64 0, i32 1
  %14 = load i32* %13, align 4, !tbaa !15
  %15 = sub nsw i32 %var, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cVariableDefinition* %12, i64 %16, i32 0
  %18 = load i8** %17, align 8, !tbaa !13
  br label %19

; <label>:19                                      ; preds = %0, %4
  %20 = phi i8* [ %18, %4 ], [ null, %0 ]
  ret i8* %20
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupTypeNumber(i8* nocapture readonly %type) #1 {
  %1 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #10
  %8 = icmp eq i32 %7, 0
  %. = select i1 %8, i32 3, i32 -1
  br label %9

; <label>:9                                       ; preds = %6, %3, %0
  %retval.0 = phi i32 [ 1, %0 ], [ 2, %3 ], [ %., %6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouptypenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_GroupTypeNumber(i8* %1) #9
  store i32 %2, i32* %number, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_VarTypeNumber(i8* nocapture readonly %type) #1 {
  %1 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %42, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

; <label>:9                                       ; preds = %6
  %10 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %42, label %12

; <label>:12                                      ; preds = %9
  %13 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %42, label %18

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %42, label %21

; <label>:21                                      ; preds = %18
  %22 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

; <label>:24                                      ; preds = %21
  %25 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

; <label>:27                                      ; preds = %24
  %28 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

; <label>:30                                      ; preds = %27
  %31 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0)) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0)) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

; <label>:36                                      ; preds = %33
  %37 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

; <label>:39                                      ; preds = %36
  %40 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #10
  %41 = icmp eq i32 %40, 0
  %. = select i1 %41, i32 1, i32 -1
  br label %42

; <label>:42                                      ; preds = %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6, %3, %0
  %retval.0 = phi i32 [ 2, %0 ], [ 3, %3 ], [ 4, %6 ], [ 5, %9 ], [ 6, %12 ], [ 7, %15 ], [ 8, %18 ], [ 9, %21 ], [ 10, %24 ], [ 11, %27 ], [ 12, %30 ], [ 13, %33 ], [ 1, %36 ], [ %., %39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_vartypenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_VarTypeNumber(i8* %1) #9
  store i32 %2, i32* %number, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_VarTypeName(i32 %vtype) #0 {
  %switch.tableidx = add i32 %vtype, -1
  %1 = icmp ult i32 %switch.tableidx, 14
  br i1 %1, label %switch.lookup, label %3

switch.lookup:                                    ; preds = %0
  %2 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [14 x i8*]* @switch.table, i64 0, i64 %2
  %switch.load = load i8** %switch.gep, align 8
  ret i8* %switch.load

; <label>:3                                       ; preds = %0
  ret i8* null
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupScopeNumber(i8* nocapture readonly %type) #1 {
  %1 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0)) #10
  %8 = icmp eq i32 %7, 0
  %. = select i1 %8, i32 3, i32 -1
  br label %9

; <label>:9                                       ; preds = %6, %3, %0
  %retval.0 = phi i32 [ 1, %0 ], [ 2, %3 ], [ %., %6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupscopenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_GroupScopeNumber(i8* %1) #9
  store i32 %2, i32* %number, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupDistribNumber(i8* nocapture readonly %dtype) #1 {
  %1 = tail call i32 @strcmp(i8* %dtype, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0)) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @strcmp(i8* %dtype, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0)) #10
  %5 = icmp eq i32 %4, 0
  %. = select i1 %5, i32 2, i32 -1
  br label %6

; <label>:6                                       ; preds = %3, %0
  %retval.0 = phi i32 [ 1, %0 ], [ %., %3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupdistribnumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_GroupDistribNumber(i8* %1) #9
  store i32 %2, i32* %number, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupData(i32 %group, %struct.cGroup* %gp) #2 {
  %1 = icmp sgt i32 %group, -1
  br i1 %1, label %2, label %.thread

; <label>:2                                       ; preds = %0
  %3 = load i32* @n_groups, align 4, !tbaa !6
  %phitmp = icmp sle i32 %3, %group
  %4 = sext i1 %phitmp to i32
  br i1 %phitmp, label %.thread, label %5

; <label>:5                                       ; preds = %2
  %6 = icmp eq %struct.cGroup* %gp, null
  br i1 %6, label %.thread, label %7

; <label>:7                                       ; preds = %5
  %8 = sext i32 %group to i64
  %9 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 4
  %11 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 9
  %12 = load i32* %11, align 4, !tbaa !16
  %13 = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 4
  store i32 %12, i32* %13, align 4, !tbaa !17
  %14 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 11
  %15 = load i32* %14, align 4, !tbaa !11
  %16 = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 5
  store i32 %15, i32* %16, align 4, !tbaa !19
  %17 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 10
  %18 = load i32* %17, align 4, !tbaa !20
  %19 = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 6
  store i32 %18, i32* %19, align 4, !tbaa !21
  %20 = bitcast i32* %10 to <4 x i32>*
  %21 = load <4 x i32>* %20, align 4, !tbaa !6
  %22 = bitcast %struct.cGroup* %gp to <4 x i32>*
  store <4 x i32> %21, <4 x i32>* %22, align 4, !tbaa !6
  %23 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %8, i32 15
  %24 = load i8** %23, align 8, !tbaa !22
  %25 = icmp eq i8* %24, null
  %26 = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 7
  br i1 %25, label %28, label %27

; <label>:27                                      ; preds = %7
  store i32 1, i32* %26, align 4, !tbaa !23
  br label %.thread

; <label>:28                                      ; preds = %7
  store i32 0, i32* %26, align 4, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %0, %5, %28, %27, %2
  %retval.0 = phi i32 [ %4, %2 ], [ %4, %27 ], [ %4, %28 ], [ -2, %5 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_GroupName(i32 %group) #2 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %22

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 1
  %8 = load i8** %7, align 8, !tbaa !8
  %9 = tail call i64 @strlen(i8* %8) #10
  %10 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 2
  %11 = load i8** %10, align 8, !tbaa !10
  %12 = tail call i64 @strlen(i8* %11) #10
  %13 = add i64 %9, 3
  %14 = add i64 %13, %12
  %15 = tail call i8* @malloc(i64 %14) #10
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

; <label>:17                                      ; preds = %4
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false)
  %19 = load i8** %7, align 8, !tbaa !8
  %20 = load i8** %10, align 8, !tbaa !10
  %21 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %15, i32 0, i64 %18, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %19, i8* %20) #10
  br label %22

; <label>:22                                      ; preds = %4, %17, %0
  %name.0 = phi i8* [ %15, %17 ], [ null, %4 ], [ null, %0 ]
  ret i8* %name.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_FirstVarIndexI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 14
  %8 = load %struct.cVariableDefinition** %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.cVariableDefinition* %8, i64 0, i32 1
  %10 = load i32* %9, align 4, !tbaa !15
  br label %11

; <label>:11                                      ; preds = %0, %4
  %12 = phi i32 [ %10, %4 ], [ -1, %0 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_firstvarindexi_(i32* nocapture %first, i32* nocapture readonly %group) #2 {
  %1 = load i32* %group, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @n_groups, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_FirstVarIndexI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.cGroupDefinition* %7, i64 %6, i32 14
  %9 = load %struct.cVariableDefinition** %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.cVariableDefinition* %9, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !15
  br label %CCTK_FirstVarIndexI.exit

CCTK_FirstVarIndexI.exit:                         ; preds = %0, %5
  %12 = phi i32 [ %11, %5 ], [ -1, %0 ]
  store i32 %12, i32* %first, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_FirstVarIndex(i8* %groupname) #2 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #9
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @n_groups, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_FirstVarIndexI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.cGroupDefinition* %7, i64 %6, i32 14
  %9 = load %struct.cVariableDefinition** %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.cVariableDefinition* %9, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !15
  br label %CCTK_FirstVarIndexI.exit

CCTK_FirstVarIndexI.exit:                         ; preds = %0, %5
  %12 = phi i32 [ %11, %5 ], [ -1, %0 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumVarsInGroupI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 11
  %8 = load i32* %7, align 4, !tbaa !11
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_NumVarsInGroup(i8* %groupname) #2 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #9
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @n_groups, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_NumVarsInGroupI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.cGroupDefinition* %7, i64 %6, i32 11
  %9 = load i32* %8, align 4, !tbaa !11
  br label %CCTK_NumVarsInGroupI.exit

CCTK_NumVarsInGroupI.exit:                        ; preds = %0, %5
  %10 = phi i32 [ %9, %5 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numvarsingroup_(i32* nocapture %num, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_NumVarsInGroup(i8* %1) #9
  store i32 %2, i32* %num, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupTypeFromVarI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 4
  %12 = load i32* %11, align 4, !tbaa !24
  br label %13

; <label>:13                                      ; preds = %0, %4
  %14 = phi i32 [ %12, %4 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupTypeI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 4
  %8 = load i32* %7, align 4, !tbaa !24
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_VarTypeI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 5
  %12 = load i32* %11, align 4, !tbaa !25
  br label %13

; <label>:13                                      ; preds = %0, %4
  %14 = phi i32 [ %12, %4 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_vartypei_(i32* nocapture %type, i32* nocapture readonly %var) #2 {
  %1 = load i32* %var, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_VarTypeI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  %10 = sext i32 %9 to i64
  %11 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.cGroupDefinition* %11, i64 %10, i32 5
  %13 = load i32* %12, align 4, !tbaa !25
  br label %CCTK_VarTypeI.exit

CCTK_VarTypeI.exit:                               ; preds = %0, %5
  %14 = phi i32 [ %13, %5 ], [ -1, %0 ]
  store i32 %14, i32* %type, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumTimeLevelsFromVarI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 10
  %12 = load i32* %11, align 4, !tbaa !20
  br label %13

; <label>:13                                      ; preds = %0, %4
  %14 = phi i32 [ %12, %4 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numtimelevelsfromvari_(i32* nocapture %num, i32* nocapture readonly %var) #2 {
  %1 = load i32* %var, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_NumTimeLevelsFromVarI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  %10 = sext i32 %9 to i64
  %11 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.cGroupDefinition* %11, i64 %10, i32 10
  %13 = load i32* %12, align 4, !tbaa !20
  br label %CCTK_NumTimeLevelsFromVarI.exit

CCTK_NumTimeLevelsFromVarI.exit:                  ; preds = %0, %5
  %14 = phi i32 [ %13, %5 ], [ -1, %0 ]
  store i32 %14, i32* %num, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_NumTimeLevelsFromVar(i8* %var) #2 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %var) #9
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_NumTimeLevelsFromVarI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  %10 = sext i32 %9 to i64
  %11 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.cGroupDefinition* %11, i64 %10, i32 10
  %13 = load i32* %12, align 4, !tbaa !20
  br label %CCTK_NumTimeLevelsFromVarI.exit

CCTK_NumTimeLevelsFromVarI.exit:                  ; preds = %0, %5
  %14 = phi i32 [ %13, %5 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_numtimelevelsfromvar_(i32* nocapture %num, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #10
  %2 = tail call i32 @CCTK_NumTimeLevelsFromVar(i8* %1) #9
  store i32 %2, i32* %num, align 4, !tbaa !6
  tail call void @free(i8* %1) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_printgroup_(i32* nocapture readonly %group) #2 {
  %1 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %2 = load i32* %group, align 4, !tbaa !6
  %3 = tail call i8* @CCTK_GroupName(i32 %2) #9
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0), i32 %2, i8* %3) #10
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_printvar_(i32* nocapture readonly %var) #2 {
  %1 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %2 = load i32* %var, align 4, !tbaa !6
  %3 = tail call i8* @CCTK_VarName(i32 %2) #9
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([19 x i8]* @.str45, i64 0, i64 0), i32 %2, i8* %3) #10
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32** @CCTK_GroupSizesI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 12
  %8 = load i32*** %7, align 8, !tbaa !26
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32** [ %8, %4 ], [ null, %0 ]
  ret i32** %10
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32** @CCTK_GroupGhostsizesI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 13
  %8 = load i32*** %7, align 8, !tbaa !27
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32** [ %8, %4 ], [ null, %0 ]
  ret i32** %10
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_VarTypeSize(i32 %vtype) #2 {
  %switch.tableidx = add i32 %vtype, -1
  %1 = icmp ult i32 %switch.tableidx, 16
  br i1 %1, label %switch.hole_check, label %2

; <label>:2                                       ; preds = %switch.hole_check, %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 1474, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str46, i64 0, i64 0), i32 %vtype) #10
  ret i32 -1

switch.hole_check:                                ; preds = %0
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -8193, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  %switch.lobit = icmp eq i16 %4, 0
  br i1 %switch.lobit, label %2, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %5 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [16 x i32]* @switch.table63, i64 0, i64 %5
  %switch.load = load i32* %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupDimI(i32 %group) #1 {
  %1 = icmp sgt i32 %group, -1
  %2 = load i32* @n_groups, align 4
  %3 = icmp sgt i32 %2, %group
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %9

; <label>:4                                       ; preds = %0
  %5 = sext i32 %group to i64
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %5, i32 9
  %8 = load i32* %7, align 4, !tbaa !16
  br label %9

; <label>:9                                       ; preds = %0, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %0 ]
  ret i32 %10
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupdimi_(i32* nocapture %dim, i32* nocapture readonly %group) #2 {
  %1 = load i32* %group, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @n_groups, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_GroupDimI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.cGroupDefinition* %7, i64 %6, i32 9
  %9 = load i32* %8, align 4, !tbaa !16
  br label %CCTK_GroupDimI.exit

CCTK_GroupDimI.exit:                              ; preds = %0, %5
  %10 = phi i32 [ %9, %5 ], [ -1, %0 ]
  store i32 %10, i32* %dim, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_GroupDimFromVarI(i32 %var) #1 {
  %1 = icmp sgt i32 %var, -1
  %2 = load i32* @total_variables, align 4
  %3 = icmp sgt i32 %2, %var
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = sext i32 %var to i64
  %6 = load i32** @group_of_variable, align 8, !tbaa !2
  %7 = getelementptr inbounds i32* %6, i64 %5
  %8 = load i32* %7, align 4, !tbaa !6
  %9 = sext i32 %8 to i64
  %10 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %9, i32 9
  %12 = load i32* %11, align 4, !tbaa !16
  br label %13

; <label>:13                                      ; preds = %0, %4
  %14 = phi i32 [ %12, %4 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupdimfromvari_(i32* nocapture %dim, i32* nocapture readonly %var) #2 {
  %1 = load i32* %var, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, -1
  %3 = load i32* @total_variables, align 4
  %4 = icmp sgt i32 %3, %1
  %or.cond.i = and i1 %2, %4
  br i1 %or.cond.i, label %5, label %CCTK_GroupDimFromVarI.exit

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64
  %7 = load i32** @group_of_variable, align 8, !tbaa !2
  %8 = getelementptr inbounds i32* %7, i64 %6
  %9 = load i32* %8, align 4, !tbaa !6
  %10 = sext i32 %9 to i64
  %11 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %12 = getelementptr inbounds %struct.cGroupDefinition* %11, i64 %10, i32 9
  %13 = load i32* %12, align 4, !tbaa !16
  br label %CCTK_GroupDimFromVarI.exit

CCTK_GroupDimFromVarI.exit:                       ; preds = %0, %5
  %14 = phi i32 [ %13, %5 ], [ -1, %0 ]
  store i32 %14, i32* %dim, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TraverseString(i8* nocapture readonly %traverse_string, void (i32, i8*, i8*)* %callback, i8* %callback_arg, i32 %selection) #2 {
  %1 = icmp eq void (i32, i8*, i8*)* %callback, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1595, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str47, i64 0, i64 0)) #10
  br label %124

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @strdup(i8* %traverse_string) #10
  %6 = icmp eq i8* %5, null
  br i1 %6, label %.critedge, label %.lr.ph60

.lr.ph60:                                         ; preds = %4
  %7 = and i32 %selection, -3
  %8 = icmp eq i32 %7, 1
  %9 = and i32 %selection, -2
  %10 = icmp eq i32 %9, 2
  %11 = icmp eq i32 %selection, 2
  br label %12

; <label>:12                                      ; preds = %.lr.ph60, %120
  %retval.057 = phi i32 [ 0, %.lr.ph60 ], [ %retval.1, %120 ]
  %string.056 = phi i8* [ %5, %.lr.ph60 ], [ %string.4., %120 ]
  %13 = load i8* %string.056, align 1, !tbaa !28
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %12, %24
  %15 = phi i8 [ %26, %24 ], [ %13, %12 ]
  %string.146 = phi i8* [ %25, %24 ], [ %string.056, %12 ]
  %isascii.i.i26 = icmp sgt i8 %15, -1
  br i1 %isascii.i.i26, label %16, label %21

; <label>:16                                      ; preds = %.lr.ph
  %17 = sext i8 %15 to i64
  %18 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %17
  %19 = load i32* %18, align 4, !tbaa !6
  %20 = and i32 %19, 16384
  br label %isspace.exit

; <label>:21                                      ; preds = %.lr.ph
  %22 = sext i8 %15 to i32
  %23 = tail call i32 @__maskrune(i32 %22, i64 16384) #10
  br label %isspace.exit

isspace.exit:                                     ; preds = %16, %21
  %.sink.i.in.i = phi i32 [ %20, %16 ], [ %23, %21 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  br i1 %.sink.i.i, label %.critedge6, label %24

; <label>:24                                      ; preds = %isspace.exit
  %25 = getelementptr inbounds i8* %string.146, i64 1
  %26 = load i8* %25, align 1, !tbaa !28
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %.critedge, label %.lr.ph

.critedge6:                                       ; preds = %isspace.exit
  %.pr = load i8* %string.146, align 1, !tbaa !28
  %28 = icmp eq i8 %.pr, 0
  br i1 %28, label %.critedge, label %.lr.ph49

.lr.ph49:                                         ; preds = %.critedge6, %41
  %29 = phi i8 [ %43, %41 ], [ %.pr, %.critedge6 ]
  %string.248 = phi i8* [ %42, %41 ], [ %string.146, %.critedge6 ]
  %isascii.i.i1228 = icmp sgt i8 %29, -1
  br i1 %isascii.i.i1228, label %30, label %35

; <label>:30                                      ; preds = %.lr.ph49
  %31 = sext i8 %29 to i64
  %32 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %31
  %33 = load i32* %32, align 4, !tbaa !6
  %34 = and i32 %33, 16384
  br label %isspace.exit15

; <label>:35                                      ; preds = %.lr.ph49
  %36 = sext i8 %29 to i32
  %37 = tail call i32 @__maskrune(i32 %36, i64 16384) #10
  br label %isspace.exit15

isspace.exit15:                                   ; preds = %30, %35
  %.sink.i.in.i13 = phi i32 [ %34, %30 ], [ %37, %35 ]
  %.sink.i.i14 = icmp eq i32 %.sink.i.in.i13, 0
  br i1 %.sink.i.i14, label %38, label %isspace.exit15._crit_edge

; <label>:38                                      ; preds = %isspace.exit15
  %39 = load i8* %string.248, align 1, !tbaa !28
  %40 = icmp eq i8 %39, 91
  br i1 %40, label %isspace.exit15._crit_edge, label %41

; <label>:41                                      ; preds = %38
  %42 = getelementptr inbounds i8* %string.248, i64 1
  %43 = load i8* %42, align 1, !tbaa !28
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %isspace.exit15._crit_edge, label %.lr.ph49

isspace.exit15._crit_edge:                        ; preds = %38, %41, %isspace.exit15
  %string.2.lcssa = phi i8* [ %string.248, %isspace.exit15 ], [ %42, %41 ], [ %string.248, %38 ]
  %45 = load i8* %string.2.lcssa, align 1, !tbaa !28
  store i8 0, i8* %string.2.lcssa, align 1, !tbaa !28
  %46 = icmp eq i8 %45, 91
  %47 = getelementptr inbounds i8* %string.2.lcssa, i64 1
  %. = select i1 %46, i8* %47, i8* null
  %48 = icmp eq i8* %., null
  br i1 %48, label %81, label %.outer

.outer:                                           ; preds = %54, %52, %isspace.exit15._crit_edge
  %string.3.ph = phi i8* [ %string.2.lcssa, %isspace.exit15._crit_edge ], [ %50, %52 ], [ %50, %54 ]
  %nesting.0.ph = phi i32 [ 1, %isspace.exit15._crit_edge ], [ %53, %52 ], [ %55, %54 ]
  br label %49

; <label>:49                                      ; preds = %.outer, %49
  %string.3 = phi i8* [ %50, %49 ], [ %string.3.ph, %.outer ]
  %50 = getelementptr inbounds i8* %string.3, i64 1
  %51 = load i8* %50, align 1, !tbaa !28
  switch i8 %51, label %49 [
    i8 0, label %.loopexit
    i8 91, label %52
    i8 93, label %54
  ]

; <label>:52                                      ; preds = %49
  %53 = add nsw i32 %nesting.0.ph, 1
  br label %.outer

; <label>:54                                      ; preds = %49
  %55 = add nsw i32 %nesting.0.ph, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %.loopexit, label %.outer

.loopexit:                                        ; preds = %54, %49
  %nesting.1 = phi i32 [ %nesting.0.ph, %49 ], [ 0, %54 ]
  store i8 0, i8* %50, align 1, !tbaa !28
  %57 = getelementptr inbounds i8* %string.146, i64 1
  %58 = icmp eq i8* %., %57
  br i1 %58, label %59, label %61

; <label>:59                                      ; preds = %.loopexit
  %60 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1661, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str48, i64 0, i64 0), i8* %57) #10
  br label %.critedge

; <label>:61                                      ; preds = %.loopexit
  %62 = icmp eq i8 %51, 93
  %63 = icmp eq i32 %nesting.1, 0
  %or.cond = and i1 %63, %62
  br i1 %or.cond, label %66, label %64

; <label>:64                                      ; preds = %61
  %65 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1669, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str49, i64 0, i64 0), i8* %.) #10
  br label %.critedge

; <label>:66                                      ; preds = %61
  %67 = getelementptr inbounds i8* %string.3, i64 2
  %68 = load i8* %67, align 1, !tbaa !28
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

; <label>:70                                      ; preds = %66
  %isascii.i.i1627 = icmp sgt i8 %68, -1
  br i1 %isascii.i.i1627, label %71, label %76

; <label>:71                                      ; preds = %70
  %72 = sext i8 %68 to i64
  %73 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %72
  %74 = load i32* %73, align 4, !tbaa !6
  %75 = and i32 %74, 16384
  br label %isspace.exit19

; <label>:76                                      ; preds = %70
  %77 = sext i8 %68 to i32
  %78 = tail call i32 @__maskrune(i32 %77, i64 16384) #10
  br label %isspace.exit19

isspace.exit19:                                   ; preds = %71, %76
  %.sink.i.in.i17 = phi i32 [ %75, %71 ], [ %78, %76 ]
  %.sink.i.i18 = icmp eq i32 %.sink.i.in.i17, 0
  br i1 %.sink.i.i18, label %79, label %81

; <label>:79                                      ; preds = %isspace.exit19
  %80 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1677, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str50, i64 0, i64 0), i8* %.) #10
  br label %.critedge

; <label>:81                                      ; preds = %isspace.exit19, %isspace.exit15._crit_edge, %66
  %delimiter.0 = phi i8 [ 93, %66 ], [ 93, %isspace.exit19 ], [ %45, %isspace.exit15._crit_edge ]
  %string.4 = phi i8* [ %50, %66 ], [ %50, %isspace.exit19 ], [ %string.2.lcssa, %isspace.exit15._crit_edge ]
  %82 = tail call i32 @CCTK_Equals(i8* %string.146, i8* getelementptr inbounds ([4 x i8]* @.str51, i64 0, i64 0)) #10
  %83 = icmp ne i32 %82, 0
  %.not = xor i1 %83, true
  %or.cond8 = and i1 %8, %.not
  br i1 %or.cond8, label %84, label %.thread

; <label>:84                                      ; preds = %81
  %85 = tail call i32 @CCTK_VarIndex(i8* %string.146) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %.thread, label %.lr.ph55

.thread:                                          ; preds = %81, %84
  %or.cond11 = and i1 %10, %.not
  br i1 %or.cond11, label %87, label %.thread21

; <label>:87                                      ; preds = %.thread
  %88 = tail call i32 @CCTK_GroupIndex(i8* %string.146) #9
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %.thread21

; <label>:90                                      ; preds = %87
  %91 = load i32* @n_groups, align 4
  %92 = icmp sgt i32 %91, %88
  br i1 %92, label %100, label %.thread25

.thread21:                                        ; preds = %.thread, %87
  br i1 %83, label %93, label %.thread25

; <label>:93                                      ; preds = %.thread21
  br i1 %11, label %94, label %97

; <label>:94                                      ; preds = %93
  %95 = load i32* @n_groups, align 4, !tbaa !6
  %96 = add nsw i32 %95, -1
  br label %.thread22.preheader

; <label>:97                                      ; preds = %93
  %98 = load i32* @total_variables, align 4, !tbaa !6
  %99 = add nsw i32 %98, -1
  br label %.thread22.preheader

; <label>:100                                     ; preds = %90
  %101 = sext i32 %88 to i64
  %102 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %103 = getelementptr inbounds %struct.cGroupDefinition* %102, i64 %101, i32 14
  %104 = load %struct.cVariableDefinition** %103, align 8, !tbaa !12
  %105 = getelementptr inbounds %struct.cVariableDefinition* %104, i64 0, i32 1
  %106 = load i32* %105, align 4, !tbaa !15
  %107 = sext i32 %88 to i64
  %108 = getelementptr inbounds %struct.cGroupDefinition* %102, i64 %107, i32 11
  %109 = load i32* %108, align 4, !tbaa !11
  %110 = add i32 %106, -1
  %111 = add i32 %110, %109
  %112 = icmp sgt i32 %106, -1
  br i1 %112, label %.thread22.preheader, label %.thread25

.thread22.preheader:                              ; preds = %100, %94, %97
  %last.124.ph = phi i32 [ %96, %94 ], [ %99, %97 ], [ %111, %100 ]
  %first.123.ph = phi i32 [ 0, %94 ], [ 0, %97 ], [ %106, %100 ]
  %113 = icmp sgt i32 %first.123.ph, %last.124.ph
  br i1 %113, label %.thread22._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %84, %.thread22.preheader
  %vindex.0.ph92 = phi i32 [ %first.123.ph, %.thread22.preheader ], [ %85, %84 ]
  %last.124.ph88 = phi i32 [ %last.124.ph, %.thread22.preheader ], [ %85, %84 ]
  br label %.thread22

.thread22:                                        ; preds = %.thread22, %.lr.ph55
  %vindex.054 = phi i32 [ %vindex.0.ph92, %.lr.ph55 ], [ %114, %.thread22 ]
  tail call void %callback(i32 %vindex.054, i8* %., i8* %callback_arg) #10
  %114 = add nsw i32 %vindex.054, 1
  %115 = icmp slt i32 %vindex.054, %last.124.ph88
  br i1 %115, label %.thread22, label %.thread22._crit_edge

.thread22._crit_edge:                             ; preds = %.thread22, %.thread22.preheader
  %first.123.ph91 = phi i32 [ %first.123.ph, %.thread22.preheader ], [ %vindex.0.ph92, %.thread22 ]
  %last.124.ph89 = phi i32 [ %last.124.ph, %.thread22.preheader ], [ %last.124.ph88, %.thread22 ]
  %116 = add i32 %retval.057, 1
  %117 = add i32 %116, %last.124.ph89
  %118 = sub i32 %117, %first.123.ph91
  br label %120

.thread25:                                        ; preds = %90, %.thread21, %100
  %119 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1751, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str52, i64 0, i64 0), i8* %string.146) #10
  br label %120

; <label>:120                                     ; preds = %.thread25, %.thread22._crit_edge
  %retval.1 = phi i32 [ %118, %.thread22._crit_edge ], [ %retval.057, %.thread25 ]
  %121 = icmp eq i8 %delimiter.0, 0
  %122 = getelementptr inbounds i8* %string.4, i64 1
  %string.4. = select i1 %121, i8* %string.4, i8* %122
  %123 = icmp eq i8* %string.4., null
  br i1 %123, label %.critedge, label %12

.critedge:                                        ; preds = %120, %12, %.critedge6, %24, %4, %79, %64, %59
  %retval.2 = phi i32 [ -2, %59 ], [ -4, %79 ], [ -3, %64 ], [ 0, %4 ], [ %retval.057, %24 ], [ %retval.057, %.critedge6 ], [ %retval.057, %12 ], [ %retval.1, %120 ]
  tail call void @free(i8* %5) #9
  br label %124

; <label>:124                                     ; preds = %.critedge, %2
  %.0 = phi i32 [ -1, %2 ], [ %retval.2, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_CreateGroup(i8* %gname, i8* %thorn, i8* %imp, i8* nocapture readonly %gtype, i8* nocapture readonly %vtype, i8* nocapture readonly %gscope, i32 %dimension, i32 %ntimelevels, i8* %stype, i8* nocapture readonly %dtype, i8* %size, i8* %ghostsize, i32 %n_variables, ...) #2 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %name = alloca i8*, align 8
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = call i32 @CCTKi_ParseStaggerString(i32 %dimension, i8* %imp, i8* %gname, i8* %stype) #10
  %3 = icmp eq i32 %n_variables, -1
  br i1 %3, label %4, label %42

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %6 = load i32* %5, align 16
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %13, label %.thread20

.thread20:                                        ; preds = %4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %9 = load i8** %8, align 8
  %10 = getelementptr i8* %9, i64 8
  store i8* %10, i8** %8, align 8
  %11 = bitcast i8* %9 to i8**
  %12 = load i8** %11, align 8
  br label %28

; <label>:13                                      ; preds = %4
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %15 = load i8** %14, align 16
  %16 = sext i32 %6 to i64
  %17 = getelementptr i8* %15, i64 %16
  %18 = add i32 %6, 8
  store i32 %18, i32* %5, align 16
  %19 = bitcast i8* %17 to i8**
  %20 = load i8** %19, align 8
  %21 = icmp ult i32 %18, 41
  br i1 %21, label %22, label %28

; <label>:22                                      ; preds = %13
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %24 = load i8** %23, align 16
  %25 = sext i32 %18 to i64
  %26 = getelementptr i8* %24, i64 %25
  %27 = add i32 %6, 16
  store i32 %27, i32* %5, align 16
  br label %33

; <label>:28                                      ; preds = %.thread20, %13
  %29 = phi i8* [ %12, %.thread20 ], [ %20, %13 ]
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %31 = load i8** %30, align 8
  %32 = getelementptr i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

; <label>:33                                      ; preds = %28, %22
  %34 = phi i8* [ %20, %22 ], [ %29, %28 ]
  %.in4 = phi i8* [ %26, %22 ], [ %31, %28 ]
  %35 = bitcast i8* %.in4 to i8**
  %36 = load i8** %35, align 8
  %37 = call i8* @Util_Strdup(i8* %36) #10
  %38 = call fastcc i32 @CCTKi_ParamExpressionToInt(i8* %37, i8* %thorn) #9
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %33
  %41 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 1864, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str53, i64 0, i64 0), i8* %gname) #10
  br label %42

; <label>:42                                      ; preds = %33, %40, %0
  %.0 = phi i32 [ %38, %40 ], [ %38, %33 ], [ %n_variables, %0 ]
  %variable_name.0 = phi i8* [ %34, %40 ], [ %34, %33 ], [ null, %0 ]
  %vararraysize.0 = phi i8* [ %37, %40 ], [ %37, %33 ], [ null, %0 ]
  %43 = call i32 @CCTK_GroupScopeNumber(i8* %gscope) #9
  %44 = and i32 %43, -2
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %48

; <label>:46                                      ; preds = %42
  %47 = call fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %imp, i8* %gname, i32 %2, i32 %.0) #9
  br label %53

; <label>:48                                      ; preds = %42
  %49 = icmp eq i32 %43, 1
  br i1 %49, label %50, label %.thread

; <label>:50                                      ; preds = %48
  %51 = call fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %thorn, i8* %gname, i32 %2, i32 %.0) #9
  br label %53

.thread:                                          ; preds = %48
  %52 = call i32 @CCTK_Warn(i32 1, i32 1882, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str54, i64 0, i64 0)) #10
  br label %.thread6

; <label>:53                                      ; preds = %50, %46
  %group.0 = phi %struct.cGroupDefinition* [ %47, %46 ], [ %51, %50 ]
  %54 = icmp eq %struct.cGroupDefinition* %group.0, null
  br i1 %54, label %.thread6, label %55

; <label>:55                                      ; preds = %53
  %56 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 9
  store i32 %dimension, i32* %56, align 4, !tbaa !16
  %57 = call i32 @CCTK_GroupTypeNumber(i8* %gtype) #9
  %58 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 4
  store i32 %57, i32* %58, align 4, !tbaa !24
  %59 = call i32 @CCTK_VarTypeNumber(i8* %vtype) #9
  %60 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 5
  store i32 %59, i32* %60, align 4, !tbaa !25
  %61 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 8
  store i32 %43, i32* %61, align 4, !tbaa !29
  %62 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 7
  store i32 %2, i32* %62, align 4, !tbaa !30
  %63 = call i32 @CCTK_GroupDistribNumber(i8* %dtype) #9
  %64 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 6
  store i32 %63, i32* %64, align 4, !tbaa !31
  %65 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 10
  store i32 %ntimelevels, i32* %65, align 4, !tbaa !20
  %66 = icmp eq i8* %vararraysize.0, null
  br i1 %66, label %67, label %99

; <label>:67                                      ; preds = %55
  %68 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 15
  store i8* null, i8** %68, align 8, !tbaa !22
  %69 = icmp sgt i32 %.0, 0
  br i1 %69, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %67
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %72 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 14
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %74 = sext i32 %.0 to i64
  br label %75

; <label>:75                                      ; preds = %.lr.ph, %95
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %95 ]
  %76 = load i32* %70, align 16
  %77 = icmp ult i32 %76, 41
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %75
  %79 = load i8** %71, align 16
  %80 = sext i32 %76 to i64
  %81 = getelementptr i8* %79, i64 %80
  %82 = add i32 %76, 8
  store i32 %82, i32* %70, align 16
  br label %86

; <label>:83                                      ; preds = %75
  %84 = load i8** %73, align 8
  %85 = getelementptr i8* %84, i64 8
  store i8* %85, i8** %73, align 8
  br label %86

; <label>:86                                      ; preds = %83, %78
  %.in = phi i8* [ %81, %78 ], [ %84, %83 ]
  %87 = bitcast i8* %.in to i8**
  %88 = load i8** %87, align 8
  %89 = call i64 @strlen(i8* %88) #10
  %90 = add i64 %89, 1
  %91 = call i8* @malloc(i64 %90) #10
  %92 = load %struct.cVariableDefinition** %72, align 8, !tbaa !12
  %93 = getelementptr inbounds %struct.cVariableDefinition* %92, i64 %indvars.iv, i32 0
  store i8* %91, i8** %93, align 8, !tbaa !13
  %94 = icmp eq i8* %91, null
  br i1 %94, label %..loopexit_crit_edge11, label %95

; <label>:95                                      ; preds = %86
  %96 = call i64 @llvm.objectsize.i64.p0i8(i8* %91, i1 false)
  %97 = call i8* @__strcpy_chk(i8* %91, i8* %88, i64 %96) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %98 = icmp slt i64 %indvars.iv.next, %74
  br i1 %98, label %75, label %..loopexit_crit_edge

; <label>:99                                      ; preds = %55
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %101 = load i32* %100, align 16
  %102 = icmp ult i32 %101, 41
  br i1 %102, label %103, label %109

; <label>:103                                     ; preds = %99
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %105 = load i8** %104, align 16
  %106 = sext i32 %101 to i64
  %107 = getelementptr i8* %105, i64 %106
  %108 = add i32 %101, 8
  store i32 %108, i32* %100, align 16
  br label %113

; <label>:109                                     ; preds = %99
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %111 = load i8** %110, align 8
  %112 = getelementptr i8* %111, i64 8
  store i8* %112, i8** %110, align 8
  br label %113

; <label>:113                                     ; preds = %109, %103
  %.in2 = phi i8* [ %107, %103 ], [ %111, %109 ]
  %114 = bitcast i8* %.in2 to i8**
  %115 = load i8** %114, align 8
  %116 = call i8* @Util_Strdup(i8* %115) #10
  %117 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 15
  store i8* %116, i8** %117, align 8, !tbaa !22
  %118 = icmp sgt i32 %.0, 0
  br i1 %118, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %113
  %119 = bitcast i8** %name to i64*
  %120 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 14
  %121 = add i32 %.0, -1
  br label %122

; <label>:122                                     ; preds = %122, %.lr.ph14
  %indvars.iv18 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next19, %122 ]
  store i8* null, i8** %name, align 8, !tbaa !2
  %123 = trunc i64 %indvars.iv18 to i32
  %124 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %name, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i8* %variable_name.0, i32 %123) #10
  %125 = load i64* %119, align 8, !tbaa !2
  %126 = load %struct.cVariableDefinition** %120, align 8, !tbaa !12
  %127 = getelementptr inbounds %struct.cVariableDefinition* %126, i64 %indvars.iv18
  %128 = bitcast %struct.cVariableDefinition* %127 to i64*
  store i64 %125, i64* %128, align 8, !tbaa !13
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond = icmp eq i32 %123, %121
  br i1 %exitcond, label %.loopexit.thread, label %122

.loopexit.thread:                                 ; preds = %122
  call void @llvm.va_end(i8* %1)
  br label %132

..loopexit_crit_edge:                             ; preds = %95
  %129 = trunc i64 %indvars.iv.next to i32
  br label %.loopexit

..loopexit_crit_edge11:                           ; preds = %86
  %130 = trunc i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %113, %67, %..loopexit_crit_edge, %..loopexit_crit_edge11
  %variable.2 = phi i32 [ %129, %..loopexit_crit_edge ], [ %130, %..loopexit_crit_edge11 ], [ 0, %67 ], [ 0, %113 ]
  call void @llvm.va_end(i8* %1)
  %131 = icmp slt i32 %variable.2, %.0
  br i1 %131, label %144, label %132

; <label>:132                                     ; preds = %.loopexit.thread, %.loopexit
  %133 = load i32* @maxdim, align 4, !tbaa !6
  %134 = icmp slt i32 %133, %dimension
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %132
  store i32 %dimension, i32* @maxdim, align 4, !tbaa !6
  br label %136

; <label>:136                                     ; preds = %135, %132
  %137 = icmp sgt i32 %2, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %136
  store i1 true, i1* @staggered, align 1
  br label %139

; <label>:139                                     ; preds = %138, %136
  %140 = call fastcc i32** @CCTKi_ExtractSize(i32 %dimension, i8* %thorn, i8* %size) #9
  %141 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 12
  store i32** %140, i32*** %141, align 8, !tbaa !26
  %142 = call fastcc i32** @CCTKi_ExtractSize(i32 %dimension, i8* %thorn, i8* %ghostsize) #9
  %143 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 13
  store i32** %142, i32*** %143, align 8, !tbaa !27
  br label %144

; <label>:144                                     ; preds = %.loopexit, %139
  %retval.0 = phi i32 [ 0, %139 ], [ 3, %.loopexit ]
  %145 = load i32* %58, align 4, !tbaa !24
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %select.unfold

; <label>:147                                     ; preds = %144
  %148 = load i32* @gfdim, align 4, !tbaa !6
  %149 = icmp sgt i32 %148, 0
  %150 = load i32* %56, align 4, !tbaa !16
  br i1 %149, label %151, label %153

; <label>:151                                     ; preds = %147
  %152 = icmp eq i32 %150, %148
  br i1 %152, label %select.unfold, label %.thread6

; <label>:153                                     ; preds = %147
  store i32 %150, i32* @gfdim, align 4, !tbaa !6
  br label %select.unfold

select.unfold:                                    ; preds = %151, %144, %153
  %154 = icmp eq i32 %retval.0, 0
  br i1 %154, label %156, label %.thread6

.thread6:                                         ; preds = %.thread, %53, %151, %select.unfold
  %retval.17 = phi i32 [ %retval.0, %select.unfold ], [ 2, %.thread ], [ 2, %53 ], [ 1, %151 ]
  %155 = call i32 @CCTK_Warn(i32 4, i32 1976, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #10
  br label %156

; <label>:156                                     ; preds = %select.unfold, %.thread6
  %retval.18 = phi i32 [ 0, %select.unfold ], [ %retval.17, %.thread6 ]
  ret i32 %retval.18
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: optsize
declare i32 @CCTKi_ParseStaggerString(i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CCTKi_ParamExpressionToInt(i8* %expression, i8* %thorn) #2 {
  %value = alloca %struct.uExpressionValue, align 8
  %1 = tail call i8* @Util_Strdup(i8* %thorn) #10
  %2 = tail call i8* @Util_ExpressionParse(i8* %expression) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %.thread, label %5

.thread:                                          ; preds = %0
  %4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2443, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str59, i64 0, i64 0), i8* %expression) #10
  tail call void @free(i8* %1) #9
  br label %12

; <label>:5                                       ; preds = %0
  %6 = call i32 @Util_ExpressionEvaluate(i8* %2, %struct.uExpressionValue* %value, i32 (i32, i8**, %struct.uExpressionValue*, i8*)* @IntParameterEvaluator, i8* %1) #10
  call void @Util_ExpressionFree(i8* %2) #10
  call void @free(i8* %1) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct.uExpressionValue* %value, i64 0, i32 1
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32* %10, align 8, !tbaa !6
  br label %14

; <label>:12                                      ; preds = %.thread, %5
  %retval.01 = phi i32 [ -1, %.thread ], [ %6, %5 ]
  %13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2457, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str60, i64 0, i64 0), i8* %expression) #10
  br label %14

; <label>:14                                      ; preds = %12, %8
  %retval.1 = phi i32 [ %11, %8 ], [ %retval.01, %12 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %implementation, i8* %name, i32 %staggercode, i32 %n_variables) #2 {
  %1 = load i32* @n_groups, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph5, label %20

.lr.ph5:                                          ; preds = %0, %14
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %14 ], [ 0, %0 ]
  %3 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %indvars.iv10, i32 1
  %5 = load i8** %4, align 8, !tbaa !8
  %6 = tail call i32 @CCTK_Equals(i8* %implementation, i8* %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %.lr.ph5
  %9 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %indvars.iv10, i32 2
  %11 = load i8** %10, align 8, !tbaa !10
  %12 = tail call i32 @CCTK_Equals(i8* %name, i8* %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %._crit_edge6

; <label>:14                                      ; preds = %8, %.lr.ph5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %15 = load i32* @n_groups, align 4, !tbaa !6
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %indvars.iv.next11, %16
  br i1 %17, label %.lr.ph5, label %._crit_edge7

._crit_edge6:                                     ; preds = %8
  %18 = trunc i64 %indvars.iv10 to i32
  %.pre = load i32* @n_groups, align 4, !tbaa !6
  br label %20

._crit_edge7:                                     ; preds = %14
  %19 = trunc i64 %indvars.iv.next11 to i32
  br label %20

; <label>:20                                      ; preds = %._crit_edge7, %._crit_edge6, %0
  %21 = phi i32 [ %.pre, %._crit_edge6 ], [ %15, %._crit_edge7 ], [ %1, %0 ]
  %group.0.lcssa = phi i32 [ %18, %._crit_edge6 ], [ %19, %._crit_edge7 ], [ 0, %0 ]
  %22 = icmp slt i32 %group.0.lcssa, %21
  br i1 %22, label %136, label %23

; <label>:23                                      ; preds = %20
  %24 = load i8** bitcast (%struct.cGroupDefinition** @groups to i8**), align 8, !tbaa !2
  %25 = add nsw i32 %21, 1
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %26, 96
  %28 = tail call i8* @realloc(i8* %24, i64 %27) #10
  %29 = icmp eq i8* %28, null
  br i1 %29, label %.critedge, label %30

; <label>:30                                      ; preds = %23
  store i8* %28, i8** bitcast (%struct.cGroupDefinition** @groups to i8**), align 8, !tbaa !2
  %31 = tail call i64 @strlen(i8* %implementation) #10
  %32 = add i64 %31, 1
  %33 = tail call i8* @malloc(i64 %32) #10
  %34 = load i32* @n_groups, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = bitcast i8* %28 to %struct.cGroupDefinition*
  %37 = getelementptr inbounds %struct.cGroupDefinition* %36, i64 %35, i32 1
  store i8* %33, i8** %37, align 8, !tbaa !8
  %38 = tail call i64 @strlen(i8* %name) #10
  %39 = add i64 %38, 1
  %40 = tail call i8* @malloc(i64 %39) #10
  %41 = getelementptr inbounds %struct.cGroupDefinition* %36, i64 %35, i32 2
  store i8* %40, i8** %41, align 8, !tbaa !10
  %42 = sext i32 %n_variables to i64
  %43 = mul nsw i64 %42, 24
  %44 = tail call i8* @malloc(i64 %43) #10
  %45 = getelementptr inbounds %struct.cGroupDefinition* %36, i64 %35, i32 14
  %46 = bitcast %struct.cVariableDefinition** %45 to i8**
  store i8* %44, i8** %46, align 8, !tbaa !12
  %47 = load i8** bitcast (i32** @group_of_variable to i8**), align 8, !tbaa !2
  %48 = load i32* @total_variables, align 4, !tbaa !6
  %49 = add nsw i32 %48, %n_variables
  %50 = sext i32 %49 to i64
  %51 = shl nsw i64 %50, 2
  %52 = tail call i8* @realloc(i8* %47, i64 %51) #10
  %53 = load i32* @n_groups, align 4, !tbaa !6
  %54 = sext i32 %53 to i64
  %55 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %56 = getelementptr inbounds %struct.cGroupDefinition* %55, i64 %54, i32 1
  %57 = load i8** %56, align 8, !tbaa !8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %.thread, label %59

; <label>:59                                      ; preds = %30
  %60 = getelementptr inbounds %struct.cGroupDefinition* %55, i64 %54, i32 2
  %61 = load i8** %60, align 8, !tbaa !10
  %62 = icmp eq i8* %61, null
  br i1 %62, label %.thread, label %63

; <label>:63                                      ; preds = %59
  %64 = getelementptr inbounds %struct.cGroupDefinition* %55, i64 %54, i32 14
  %65 = load %struct.cVariableDefinition** %64, align 8, !tbaa !12
  %66 = icmp ne %struct.cVariableDefinition* %65, null
  %67 = icmp ne i8* %52, null
  %or.cond = and i1 %67, %66
  br i1 %or.cond, label %68, label %.thread

; <label>:68                                      ; preds = %63
  store i8* %52, i8** bitcast (i32** @group_of_variable to i8**), align 8, !tbaa !2
  %69 = load i8** %56, align 8, !tbaa !8
  %70 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %69, i1 false)
  %71 = tail call i8* @__strcpy_chk(i8* %69, i8* %implementation, i64 %70) #10
  %72 = load i32* @n_groups, align 4, !tbaa !6
  %73 = sext i32 %72 to i64
  %74 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %75 = getelementptr inbounds %struct.cGroupDefinition* %74, i64 %73, i32 2
  %76 = load i8** %75, align 8, !tbaa !10
  %77 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %76, i1 false)
  %78 = tail call i8* @__strcpy_chk(i8* %76, i8* %name, i64 %77) #10
  %79 = load i32* @n_groups, align 4, !tbaa !6
  %80 = sext i32 %79 to i64
  %81 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %82 = getelementptr inbounds %struct.cGroupDefinition* %81, i64 %80, i32 3
  store i32 %79, i32* %82, align 4, !tbaa !32
  %83 = load i32* @n_groups, align 4, !tbaa !6
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cGroupDefinition* %81, i64 %84, i32 7
  store i32 %staggercode, i32* %85, align 4, !tbaa !30
  %86 = load i32* @n_groups, align 4, !tbaa !6
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cGroupDefinition* %81, i64 %87, i32 11
  store i32 %n_variables, i32* %88, align 4, !tbaa !11
  %89 = icmp sgt i32 %n_variables, 0
  br i1 %89, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %68
  %90 = load i32** @group_of_variable, align 8, !tbaa !2
  %91 = add i32 %n_variables, -1
  %.pre12 = load i32* @total_variables, align 4, !tbaa !6
  br label %92

; <label>:92                                      ; preds = %92, %.lr.ph
  %93 = phi i32 [ %.pre12, %.lr.ph ], [ %104, %92 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %92 ]
  %94 = load i32* @n_groups, align 4, !tbaa !6
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cGroupDefinition* %81, i64 %95, i32 14
  %97 = load %struct.cVariableDefinition** %96, align 8, !tbaa !12
  %98 = getelementptr inbounds %struct.cVariableDefinition* %97, i64 %indvars.iv, i32 1
  store i32 %93, i32* %98, align 4, !tbaa !15
  %99 = load i32* @n_groups, align 4, !tbaa !6
  %100 = load i32* @total_variables, align 4, !tbaa !6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32* %90, i64 %101
  store i32 %99, i32* %102, align 4, !tbaa !6
  %103 = load i32* @total_variables, align 4, !tbaa !6
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @total_variables, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %91
  br i1 %exitcond, label %._crit_edge, label %92

.thread:                                          ; preds = %63, %30, %59
  tail call void @free(i8* %57) #9
  %105 = load i32* @n_groups, align 4, !tbaa !6
  %106 = sext i32 %105 to i64
  %107 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %108 = getelementptr inbounds %struct.cGroupDefinition* %107, i64 %106, i32 1
  store i8* null, i8** %108, align 8, !tbaa !8
  %109 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %110 = getelementptr inbounds %struct.cGroupDefinition* %109, i64 %106, i32 2
  %111 = load i8** %110, align 8, !tbaa !10
  tail call void @free(i8* %111) #9
  %112 = load i32* @n_groups, align 4, !tbaa !6
  %113 = sext i32 %112 to i64
  %114 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %115 = getelementptr inbounds %struct.cGroupDefinition* %114, i64 %113, i32 2
  store i8* null, i8** %115, align 8, !tbaa !10
  %116 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %117 = getelementptr inbounds %struct.cGroupDefinition* %116, i64 %113, i32 14
  %118 = bitcast %struct.cVariableDefinition** %117 to i8**
  %119 = load i8** %118, align 8, !tbaa !12
  tail call void @free(i8* %119) #9
  %120 = load i32* @n_groups, align 4, !tbaa !6
  %121 = sext i32 %120 to i64
  %122 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %123 = getelementptr inbounds %struct.cGroupDefinition* %122, i64 %121, i32 14
  store %struct.cVariableDefinition* null, %struct.cVariableDefinition** %123, align 8, !tbaa !12
  %.pre13 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  br label %126

._crit_edge:                                      ; preds = %92, %68
  %124 = load i32* @n_groups, align 4, !tbaa !6
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @n_groups, align 4, !tbaa !6
  br label %126

; <label>:126                                     ; preds = %._crit_edge, %.thread
  %127 = phi %struct.cGroupDefinition* [ %.pre13, %.thread ], [ %81, %._crit_edge ]
  %128 = phi i32 [ %120, %.thread ], [ %125, %._crit_edge ]
  %129 = add nsw i32 %128, -1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cGroupDefinition* %127, i64 %130, i32 2
  %132 = load i8** %131, align 8, !tbaa !10
  %133 = icmp eq i8* %132, null
  br i1 %133, label %.critedge, label %134

; <label>:134                                     ; preds = %126
  %135 = getelementptr inbounds %struct.cGroupDefinition* %127, i64 %130
  br label %.critedge

; <label>:136                                     ; preds = %20
  %137 = sext i32 %group.0.lcssa to i64
  %138 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %139 = getelementptr inbounds %struct.cGroupDefinition* %138, i64 %137
  br label %.critedge

.critedge:                                        ; preds = %23, %126, %134, %136
  %returndata.0 = phi %struct.cGroupDefinition* [ %135, %134 ], [ %139, %136 ], [ null, %23 ], [ null, %126 ]
  ret %struct.cGroupDefinition* %returndata.0
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc noalias i32** @CCTKi_ExtractSize(i32 %dimension, i8* %this_thorn, i8* %sizestring) #2 {
  %strlenfirst = load i8* %sizestring, align 1
  %1 = icmp eq i8 %strlenfirst, 0
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %dimension to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call i8* @malloc(i64 %4) #10
  %6 = bitcast i8* %5 to i32**
  %7 = icmp eq i8* %5, null
  br i1 %7, label %.loopexit, label %8

; <label>:8                                       ; preds = %2
  %9 = shl nsw i64 %3, 2
  %10 = tail call i8* @malloc(i64 %9) #10
  %11 = bitcast i8* %5 to i8**
  store i8* %10, i8** %11, align 8, !tbaa !2
  %12 = icmp sgt i32 %dimension, 1
  br i1 %12, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %8
  %13 = add i32 %dimension, -1
  %14 = getelementptr inbounds i8* %10, i64 4
  %15 = getelementptr inbounds i8* %5, i64 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !2
  %exitcond811 = icmp eq i32 %13, 1
  br i1 %exitcond811, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.lr.ph4, %._crit_edge, %8
  %17 = icmp sgt i32 %dimension, 0
  br i1 %17, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %18 = add i32 %dimension, -1
  br label %21

._crit_edge:                                      ; preds = %.lr.ph4, %._crit_edge
  %indvars.iv512 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 1, %.lr.ph4 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv512, 1
  %.pre = load i32** %6, align 8, !tbaa !2
  %19 = getelementptr inbounds i32* %.pre, i64 %indvars.iv.next6
  %20 = getelementptr inbounds i32** %6, i64 %indvars.iv.next6
  store i32* %19, i32** %20, align 8, !tbaa !2
  %lftr.wideiv7 = trunc i64 %indvars.iv.next6 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %13
  br i1 %exitcond8, label %.preheader, label %._crit_edge

; <label>:21                                      ; preds = %._crit_edge9, %.lr.ph
  %22 = phi i8 [ %strlenfirst, %.lr.ph ], [ %.pre10, %._crit_edge9 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge9 ]
  %next_comma.02 = phi i8* [ %sizestring, %.lr.ph ], [ %strchr, %._crit_edge9 ]
  %23 = icmp eq i8 %22, 44
  %24 = getelementptr inbounds i8* %next_comma.02, i64 1
  %25 = select i1 %23, i8* %24, i8* %next_comma.02
  %strchr = tail call i8* @strchr(i8* %25, i32 44)
  %26 = tail call i8* @strdup(i8* %25) #10
  %27 = icmp eq i8* %strchr, null
  br i1 %27, label %33, label %28

; <label>:28                                      ; preds = %21
  %29 = ptrtoint i8* %strchr to i64
  %30 = ptrtoint i8* %25 to i64
  %31 = sub i64 %29, %30
  %32 = getelementptr inbounds i8* %26, i64 %31
  store i8 0, i8* %32, align 1, !tbaa !28
  br label %33

; <label>:33                                      ; preds = %21, %28
  %34 = tail call fastcc i32 @CCTKi_ParamExpressionToInt(i8* %26, i8* %this_thorn) #9
  %35 = getelementptr inbounds i32** %6, i64 %indvars.iv
  %36 = load i32** %35, align 8, !tbaa !2
  store i32 %34, i32* %36, align 4, !tbaa !6
  tail call void @free(i8* %26) #9
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %18
  br i1 %exitcond, label %.loopexit, label %._crit_edge9

._crit_edge9:                                     ; preds = %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre10 = load i8* %strchr, align 1, !tbaa !28
  br label %21

.loopexit:                                        ; preds = %33, %.preheader, %0, %2
  %size_array.0 = phi i32** [ %6, %2 ], [ null, %0 ], [ %6, %.preheader ], [ %6, %33 ]
  ret i32** %size_array.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @CCTK_GroupImplementationI(i32 %group) #1 {
  %1 = sext i32 %group to i64
  %2 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %3 = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %1, i32 1
  %4 = load i8** %3, align 8, !tbaa !8
  ret i8* %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @CCTKi_GroupLengthAsPointer(i8* %fullgroupname) #2 {
  %impname = alloca i8*, align 8
  %groupname = alloca i8*, align 8
  store i8* null, i8** %impname, align 8, !tbaa !2
  store i8* null, i8** %groupname, align 8, !tbaa !2
  %1 = call i32 @CCTK_DecomposeName(i8* %fullgroupname, i8** %impname, i8** %groupname) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.preheader, label %26

.preheader:                                       ; preds = %0
  %3 = load i32* @n_groups, align 4, !tbaa !6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %.preheader ]
  %5 = load i8** %impname, align 8, !tbaa !2
  %6 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.cGroupDefinition* %6, i64 %indvars.iv, i32 1
  %8 = load i8** %7, align 8, !tbaa !8
  %9 = call i32 @CCTK_Equals(i8* %5, i8* %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

; <label>:11                                      ; preds = %.lr.ph
  %12 = load i8** %groupname, align 8, !tbaa !2
  %13 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %14 = getelementptr inbounds %struct.cGroupDefinition* %13, i64 %indvars.iv, i32 2
  %15 = load i8** %14, align 8, !tbaa !10
  %16 = call i32 @CCTK_Equals(i8* %12, i8* %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %11, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = load i32* @n_groups, align 4, !tbaa !6
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %indvars.iv.next, %20
  br i1 %21, label %.lr.ph, label %.thread

; <label>:22                                      ; preds = %11
  %23 = load %struct.cGroupDefinition** @groups, align 8, !tbaa !2
  %24 = getelementptr inbounds %struct.cGroupDefinition* %23, i64 %indvars.iv, i32 11
  br label %26

.thread:                                          ; preds = %18, %.preheader
  %25 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 2256, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %fullgroupname) #10
  br label %26

; <label>:26                                      ; preds = %22, %0, %.thread
  %retval.1 = phi i32* [ null, %0 ], [ null, %.thread ], [ %24, %22 ]
  %27 = load i8** %impname, align 8, !tbaa !2
  %28 = icmp eq i8* %27, null
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %26
  call void @free(i8* %27) #9
  br label %30

; <label>:30                                      ; preds = %26, %29
  %31 = load i8** %groupname, align 8, !tbaa !2
  %32 = icmp eq i8* %31, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %30
  call void @free(i8* %31) #9
  br label %34

; <label>:34                                      ; preds = %30, %33
  ret i32* %retval.1
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #4

; Function Attrs: optsize
declare i8* @Util_ExpressionParse(i8*) #3

; Function Attrs: optsize
declare i32 @Util_ExpressionEvaluate(i8*, %struct.uExpressionValue*, i32 (i32, i8**, %struct.uExpressionValue*, i8*)*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @IntParameterEvaluator(i32 %nvars, i8** nocapture readonly %vars, %struct.uExpressionValue* nocapture %vals, i8* %data) #2 {
  %endptr = alloca i8*, align 8
  %thorn = alloca i8*, align 8
  %param = alloca i8*, align 8
  %type = alloca i32, align 4
  %1 = icmp sgt i32 %nvars, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nvars, -1
  br label %3

; <label>:3                                       ; preds = %37, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %4 = getelementptr inbounds %struct.uExpressionValue* %vals, i64 %indvars.iv, i32 0
  store i32 1, i32* %4, align 4, !tbaa !33
  %5 = getelementptr inbounds i8** %vars, i64 %indvars.iv
  %6 = load i8** %5, align 8, !tbaa !2
  %7 = call i8* @Util_Strdup(i8* %6) #10
  %8 = call i64 @strtol(i8* %7, i8** %endptr, i32 0) #10
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.uExpressionValue* %vals, i64 %indvars.iv, i32 1
  %11 = bitcast %union.anon* %10 to i32*
  store i32 %9, i32* %11, align 4, !tbaa !6
  %12 = load i8** %endptr, align 8, !tbaa !2
  %13 = icmp eq i8* %12, %7
  br i1 %13, label %14, label %37

; <label>:14                                      ; preds = %3
  %15 = call i32 @CCTK_DecomposeName(i8* %7, i8** %thorn, i8** %param) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17                                      ; preds = %14
  store i8* null, i8** %thorn, align 8, !tbaa !2
  store i8* null, i8** %param, align 8, !tbaa !2
  br label %21

; <label>:18                                      ; preds = %14
  %19 = load i8** %thorn, align 8, !tbaa !2
  %20 = load i8** %param, align 8, !tbaa !2
  br label %21

; <label>:21                                      ; preds = %18, %17
  %use_thorn.0 = phi i8* [ %data, %17 ], [ %19, %18 ]
  %use_param.0 = phi i8* [ %7, %17 ], [ %20, %18 ]
  %22 = call i8* @CCTK_ParameterGet(i8* %use_param.0, i8* %use_thorn.0, i32* %type) #10
  %23 = icmp ne i8* %22, null
  %24 = load i32* %type, align 4
  %25 = icmp eq i32 %24, 4
  %or.cond = and i1 %23, %25
  br i1 %or.cond, label %26, label %29

; <label>:26                                      ; preds = %21
  %27 = bitcast i8* %22 to i32*
  %28 = load i32* %27, align 4, !tbaa !6
  store i32 %28, i32* %11, align 4, !tbaa !6
  br label %34

; <label>:29                                      ; preds = %21
  br i1 %23, label %32, label %30

; <label>:30                                      ; preds = %29
  %31 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2367, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str61, i64 0, i64 0), i8* %use_thorn.0, i8* %use_param.0) #10
  br label %34

; <label>:32                                      ; preds = %29
  %33 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2373, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str62, i64 0, i64 0), i8* %use_thorn.0, i8* %use_param.0) #10
  br label %34

; <label>:34                                      ; preds = %30, %32, %26
  %35 = load i8** %thorn, align 8, !tbaa !2
  call void @free(i8* %35) #9
  %36 = load i8** %param, align 8, !tbaa !2
  call void @free(i8* %36) #9
  br label %37

; <label>:37                                      ; preds = %34, %3
  call void @free(i8* %7) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %37, %0
  ret i32 0
}

; Function Attrs: optsize
declare void @Util_ExpressionFree(i8*) #3

; Function Attrs: nounwind optsize
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #4

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #8

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 8}
!9 = !{!"", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88}
!10 = !{!9, !3, i64 16}
!11 = !{!9, !7, i64 56}
!12 = !{!9, !3, i64 80}
!13 = !{!14, !3, i64 0}
!14 = !{!"", !3, i64 0, !7, i64 8, !3, i64 16}
!15 = !{!14, !7, i64 8}
!16 = !{!9, !7, i64 48}
!17 = !{!18, !7, i64 16}
!18 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!19 = !{!18, !7, i64 20}
!20 = !{!9, !7, i64 52}
!21 = !{!18, !7, i64 24}
!22 = !{!9, !3, i64 88}
!23 = !{!18, !7, i64 28}
!24 = !{!9, !7, i64 28}
!25 = !{!9, !7, i64 32}
!26 = !{!9, !3, i64 64}
!27 = !{!9, !3, i64 72}
!28 = !{!4, !4, i64 0}
!29 = !{!9, !7, i64 44}
!30 = !{!9, !7, i64 40}
!31 = !{!9, !7, i64 36}
!32 = !{!9, !7, i64 24}
!33 = !{!34, !4, i64 0}
!34 = !{!"", !4, i64 0, !4, i64 8}
