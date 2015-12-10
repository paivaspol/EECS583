; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGroupDefinition = type { i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, %struct.cVariableDefinition*, i8* }
%struct.cVariableDefinition = type { i8*, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.uExpressionValue = type { i32, %union.anon }
%union.anon = type { double }

@_cctk_one = global i32 1, align 4
@staggered = internal unnamed_addr global i1 false
@n_groups = internal unnamed_addr global i32 0, align 4
@groups = internal unnamed_addr global %struct.cGroupDefinition* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c\00", align 1
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
@stdout = external global %struct._IO_FILE*
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
@.str57 = private unnamed_addr constant [42 x i8] c"Unable to parse parameter expression '%s'\00", align 1
@.str58 = private unnamed_addr constant [45 x i8] c"Unable to evaluate parameter expression '%s'\00", align 1
@.str59 = private unnamed_addr constant [51 x i8] c"IntParameterEvaluator: '%s::%s' is not a parameter\00", align 1
@.str60 = private unnamed_addr constant [60 x i8] c"IntParameterEvaluator: '%s::%s' is not an integer parameter\00", align 1
@.str62 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/Groups.c,v 1.111 2001/11/27 23:46:28 tradke Exp $\00", align 1
@switch.table = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([22 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0)]

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Groups_c() #0 {
entry:
  ret i8* getelementptr inbounds ([83 x i8]* @.str62, i64 0, i64 0), !dbg !473
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_StaggerVars() #1 {
entry:
  %.b = load i1* @staggered, align 1
  %0 = zext i1 %.b to i32
  ret i32 %0, !dbg !474
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupIndex(i8* %fullgroupname) #2 {
entry:
  %impname = alloca i8*, align 8
  %groupname = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %fullgroupname}, i64 0, metadata !49), !dbg !475
  call void @llvm.dbg.declare(metadata !{i8** %impname}, metadata !52), !dbg !476
  call void @llvm.dbg.declare(metadata !{i8** %groupname}, metadata !54), !dbg !477
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !54), !dbg !479
  store i8* null, i8** %groupname, align 8, !dbg !479, !tbaa !480
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !52), !dbg !479
  store i8* null, i8** %impname, align 8, !dbg !479, !tbaa !480
  %call = call i32 @CCTK_DecomposeName(i8* %fullgroupname, i8** %impname, i8** %groupname) #10, !dbg !483
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !51), !dbg !483
  %tobool = icmp eq i32 %call, 0, !dbg !484
  br i1 %tobool, label %for.cond.preheader, label %if.end13, !dbg !484

for.cond.preheader:                               ; preds = %entry
  %0 = load i32* @n_groups, align 4, !dbg !485, !tbaa !488
  %cmp30 = icmp sgt i32 %0, 0, !dbg !485
  br i1 %cmp30, label %for.body, label %if.then10, !dbg !485

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %group.031 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !52), !dbg !489
  %1 = load i8** %impname, align 8, !dbg !489, !tbaa !480
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !489, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %indvars.iv, i32 1, !dbg !489
  %3 = load i8** %implementation, align 8, !dbg !489, !tbaa !480
  %call2 = call i32 @CCTK_Equals(i8* %1, i8* %3) #11, !dbg !489
  %tobool3 = icmp eq i32 %call2, 0, !dbg !489
  br i1 %tobool3, label %for.inc, label %land.lhs.true, !dbg !489

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i8** %groupname}, i64 0, metadata !54), !dbg !491
  %4 = load i8** %groupname, align 8, !dbg !491, !tbaa !480
  %5 = load %struct.cGroupDefinition** @groups, align 8, !dbg !491, !tbaa !480
  %name = getelementptr inbounds %struct.cGroupDefinition* %5, i64 %indvars.iv, i32 2, !dbg !491
  %6 = load i8** %name, align 8, !dbg !491, !tbaa !480
  %call6 = call i32 @CCTK_Equals(i8* %4, i8* %6) #11, !dbg !491
  %tobool7 = icmp eq i32 %call6, 0, !dbg !491
  br i1 %tobool7, label %for.inc, label %for.end, !dbg !491

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !485
  %inc = add nsw i32 %group.031, 1, !dbg !485
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !50), !dbg !485
  %7 = load i32* @n_groups, align 4, !dbg !485, !tbaa !488
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !485
  %cmp = icmp slt i32 %8, %7, !dbg !485
  br i1 %cmp, label %for.body, label %if.then10, !dbg !485

for.end:                                          ; preds = %land.lhs.true
  %cmp9 = icmp slt i32 %group.031, 0, !dbg !492
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !492

if.then10:                                        ; preds = %for.cond.preheader, %for.inc, %for.end
  %retval1.028 = phi i32 [ %group.031, %for.end ], [ -1, %for.inc ], [ -1, %for.cond.preheader ]
  %call11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 252, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %fullgroupname) #11, !dbg !493
  br label %if.end13, !dbg !495

if.end13:                                         ; preds = %entry, %for.end, %if.then10
  %retval1.1 = phi i32 [ %call, %entry ], [ %retval1.028, %if.then10 ], [ %group.031, %for.end ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !52), !dbg !496
  %9 = load i8** %impname, align 8, !dbg !496, !tbaa !480
  %tobool14 = icmp eq i8* %9, null, !dbg !496
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !496

if.then15:                                        ; preds = %if.end13
  call void @free(i8* %9) #11, !dbg !497
  br label %if.end16, !dbg !499

if.end16:                                         ; preds = %if.end13, %if.then15
  call void @llvm.dbg.value(metadata !{i8** %groupname}, i64 0, metadata !54), !dbg !500
  %10 = load i8** %groupname, align 8, !dbg !500, !tbaa !480
  %tobool17 = icmp eq i8* %10, null, !dbg !500
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !500

if.then18:                                        ; preds = %if.end16
  call void @free(i8* %10) #11, !dbg !501
  br label %if.end19, !dbg !503

if.end19:                                         ; preds = %if.end16, %if.then18
  ret i32 %retval1.1, !dbg !504
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_DecomposeName(i8* %fullname, i8** %implementation, i8** %name) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fullname}, i64 0, metadata !205), !dbg !505
  tail call void @llvm.dbg.value(metadata !{i8** %implementation}, i64 0, metadata !206), !dbg !506
  tail call void @llvm.dbg.value(metadata !{i8** %name}, i64 0, metadata !207), !dbg !507
  %call = tail call i32 @Util_SplitString(i8** %implementation, i8** %name, i8* %fullname, i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0)) #11, !dbg !508
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !208), !dbg !508
  switch i32 %call, label %if.else7 [
    i32 0, label %if.end10
    i32 1, label %if.then2
    i32 2, label %if.then5
  ], !dbg !509

if.then2:                                         ; preds = %entry
  %call3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 1026, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str41, i64 0, i64 0), i8* %fullname) #11, !dbg !510
  tail call void @llvm.dbg.value(metadata !513, i64 0, metadata !208), !dbg !514
  br label %if.end10, !dbg !515

if.then5:                                         ; preds = %entry
  %call6 = tail call i32 @CCTK_Warn(i32 2, i32 1033, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str42, i64 0, i64 0)) #11, !dbg !516
  tail call void @llvm.dbg.value(metadata !518, i64 0, metadata !208), !dbg !519
  br label %if.end10, !dbg !520

if.else7:                                         ; preds = %entry
  %call8 = tail call i32 @CCTK_Warn(i32 1, i32 1039, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str43, i64 0, i64 0)) #11, !dbg !521
  tail call void @llvm.dbg.value(metadata !523, i64 0, metadata !208), !dbg !524
  br label %if.end10

if.end10:                                         ; preds = %entry, %if.then2, %if.else7, %if.then5
  %retval1.0 = phi i32 [ -3, %if.then2 ], [ -4, %if.then5 ], [ -2, %if.else7 ], [ 0, %entry ]
  ret i32 %retval1.0, !dbg !525
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupindex_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %vindex}, i64 0, metadata !61), !dbg !526
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !62), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !63), !dbg !527
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !528
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !64), !dbg !528
  %call1 = tail call i32 @CCTK_GroupIndex(i8* %call) #10, !dbg !529
  store i32 %call1, i32* %vindex, align 4, !dbg !529, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_VarIndex(i8* %fullvarname) #2 {
entry:
  %impname = alloca i8*, align 8
  %varname = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %fullvarname}, i64 0, metadata !67), !dbg !532
  call void @llvm.dbg.declare(metadata !{i8** %impname}, metadata !71), !dbg !533
  call void @llvm.dbg.declare(metadata !{i8** %varname}, metadata !72), !dbg !534
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !72), !dbg !535
  store i8* null, i8** %varname, align 8, !dbg !535, !tbaa !480
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !71), !dbg !535
  store i8* null, i8** %impname, align 8, !dbg !535, !tbaa !480
  %call = call i32 @CCTK_DecomposeName(i8* %fullvarname, i8** %impname, i8** %varname) #10, !dbg !536
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !68), !dbg !536
  %tobool = icmp eq i32 %call, 0, !dbg !537
  br i1 %tobool, label %for.cond.preheader, label %if.end31, !dbg !537

for.cond.preheader:                               ; preds = %entry
  %0 = load i32* @n_groups, align 4, !dbg !538, !tbaa !488
  %cmp52 = icmp sgt i32 %0, 0, !dbg !538
  br i1 %cmp52, label %for.body, label %if.then28, !dbg !538

for.body:                                         ; preds = %for.inc24, %for.cond.preheader
  %indvars.iv58 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next59, %for.inc24 ]
  %retval1.053 = phi i32 [ -1, %for.cond.preheader ], [ %retval1.1, %for.inc24 ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !71), !dbg !541
  %1 = load i8** %impname, align 8, !dbg !541, !tbaa !480
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !541, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %indvars.iv58, i32 1, !dbg !541
  %3 = load i8** %implementation, align 8, !dbg !541, !tbaa !480
  %call3 = call i32 @CCTK_Equals(i8* %1, i8* %3) #11, !dbg !541
  %tobool4 = icmp eq i32 %call3, 0, !dbg !541
  br i1 %tobool4, label %for.inc24, label %for.cond6.preheader, !dbg !541

for.cond6.preheader:                              ; preds = %for.body
  %4 = load %struct.cGroupDefinition** @groups, align 8, !dbg !543, !tbaa !480
  %n_variables49 = getelementptr inbounds %struct.cGroupDefinition* %4, i64 %indvars.iv58, i32 11, !dbg !543
  %5 = load i32* %n_variables49, align 4, !dbg !543, !tbaa !488
  %cmp950 = icmp sgt i32 %5, 0, !dbg !543
  br i1 %cmp950, label %for.body10, label %for.inc24, !dbg !543

for.cond6:                                        ; preds = %for.body10
  %n_variables = getelementptr inbounds %struct.cGroupDefinition* %12, i64 %indvars.iv58, i32 11, !dbg !543
  %6 = load i32* %n_variables, align 4, !dbg !543, !tbaa !488
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !543
  %cmp9 = icmp slt i32 %7, %6, !dbg !543
  br i1 %cmp9, label %for.body10, label %for.inc24, !dbg !543

for.body10:                                       ; preds = %for.cond6.preheader, %for.cond6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond6 ], [ 0, %for.cond6.preheader ]
  %8 = phi %struct.cGroupDefinition* [ %12, %for.cond6 ], [ %4, %for.cond6.preheader ]
  call void @llvm.dbg.value(metadata !{i8** %varname}, i64 0, metadata !72), !dbg !546
  %9 = load i8** %varname, align 8, !dbg !546, !tbaa !480
  %variables = getelementptr inbounds %struct.cGroupDefinition* %8, i64 %indvars.iv58, i32 14, !dbg !546
  %10 = load %struct.cVariableDefinition** %variables, align 8, !dbg !546, !tbaa !480
  %name = getelementptr inbounds %struct.cVariableDefinition* %10, i64 %indvars.iv, i32 0, !dbg !546
  %11 = load i8** %name, align 8, !dbg !546, !tbaa !480
  %call15 = call i32 @CCTK_Equals(i8* %9, i8* %11) #11, !dbg !546
  %tobool16 = icmp eq i32 %call15, 0, !dbg !546
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !543
  %12 = load %struct.cGroupDefinition** @groups, align 8, !dbg !543, !tbaa !480
  br i1 %tobool16, label %for.cond6, label %if.then17, !dbg !546

if.then17:                                        ; preds = %for.body10
  %variables21 = getelementptr inbounds %struct.cGroupDefinition* %12, i64 %indvars.iv58, i32 14, !dbg !548
  %13 = load %struct.cVariableDefinition** %variables21, align 8, !dbg !548, !tbaa !480
  %number = getelementptr inbounds %struct.cVariableDefinition* %13, i64 %indvars.iv, i32 1, !dbg !548
  %14 = load i32* %number, align 4, !dbg !548, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !68), !dbg !548
  br label %for.inc24, !dbg !550

for.inc24:                                        ; preds = %for.cond6.preheader, %for.cond6, %for.body, %if.then17
  %retval1.1 = phi i32 [ %14, %if.then17 ], [ %retval1.053, %for.body ], [ %retval1.053, %for.cond6 ], [ %retval1.053, %for.cond6.preheader ]
  %indvars.iv.next59 = add i64 %indvars.iv58, 1, !dbg !538
  %15 = load i32* @n_groups, align 4, !dbg !538, !tbaa !488
  %16 = trunc i64 %indvars.iv.next59 to i32, !dbg !538
  %cmp = icmp slt i32 %16, %15, !dbg !538
  %cmp2 = icmp slt i32 %retval1.1, 0, !dbg !538
  %or.cond = and i1 %cmp, %cmp2, !dbg !538
  br i1 %or.cond, label %for.body, label %for.end26, !dbg !538

for.end26:                                        ; preds = %for.inc24
  br i1 %cmp2, label %if.then28, label %if.end31, !dbg !551

if.then28:                                        ; preds = %for.cond.preheader, %for.end26
  %retval1.0.lcssa60 = phi i32 [ %retval1.1, %for.end26 ], [ -1, %for.cond.preheader ]
  %call29 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 327, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i8* %fullvarname) #11, !dbg !552
  br label %if.end31, !dbg !554

if.end31:                                         ; preds = %entry, %for.end26, %if.then28
  %retval1.2 = phi i32 [ %call, %entry ], [ %retval1.0.lcssa60, %if.then28 ], [ %retval1.1, %for.end26 ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !71), !dbg !555
  %17 = load i8** %impname, align 8, !dbg !555, !tbaa !480
  %tobool32 = icmp eq i8* %17, null, !dbg !555
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !555

if.then33:                                        ; preds = %if.end31
  call void @free(i8* %17) #11, !dbg !556
  br label %if.end34, !dbg !558

if.end34:                                         ; preds = %if.end31, %if.then33
  call void @llvm.dbg.value(metadata !{i8** %varname}, i64 0, metadata !72), !dbg !559
  %18 = load i8** %varname, align 8, !dbg !559, !tbaa !480
  %tobool35 = icmp eq i8* %18, null, !dbg !559
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !559

if.then36:                                        ; preds = %if.end34
  call void @free(i8* %18) #11, !dbg !560
  br label %if.end37, !dbg !562

if.end37:                                         ; preds = %if.end34, %if.then36
  ret i32 %retval1.2, !dbg !563
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_varindex_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %vindex}, i64 0, metadata !75), !dbg !564
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !76), !dbg !565
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !77), !dbg !565
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !566
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !78), !dbg !566
  %call1 = tail call i32 @CCTK_VarIndex(i8* %call) #10, !dbg !567
  store i32 %call1, i32* %vindex, align 4, !dbg !567, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !568
  ret void, !dbg !569
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_MaxDim() #1 {
entry:
  %0 = load i32* @maxdim, align 4, !dbg !570, !tbaa !488
  ret i32 %0, !dbg !570
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_maxdim_(i32* nocapture %dim) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !84), !dbg !571
  %0 = load i32* @maxdim, align 4, !dbg !572, !tbaa !488
  store i32 %0, i32* %dim, align 4, !dbg !573, !tbaa !488
  ret void, !dbg !574
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumVars() #1 {
entry:
  %0 = load i32* @total_variables, align 4, !dbg !575, !tbaa !488
  ret i32 %0, !dbg !575
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numvars_(i32* nocapture %num_vars) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %num_vars}, i64 0, metadata !88), !dbg !576
  %0 = load i32* @total_variables, align 4, !dbg !577, !tbaa !488
  store i32 %0, i32* %num_vars, align 4, !dbg !578, !tbaa !488
  ret void, !dbg !579
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumGroups() #1 {
entry:
  %0 = load i32* @n_groups, align 4, !dbg !580, !tbaa !488
  ret i32 %0, !dbg !580
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numgroups_(i32* nocapture %num_groups) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %num_groups}, i64 0, metadata !92), !dbg !581
  %0 = load i32* @n_groups, align 4, !dbg !582, !tbaa !488
  store i32 %0, i32* %num_groups, align 4, !dbg !583, !tbaa !488
  ret void, !dbg !584
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @CCTK_GroupNameFromVarI(i32 %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !97), !dbg !585
  %cmp = icmp sgt i32 %var, -1, !dbg !586
  %0 = load i32* @total_variables, align 4, !dbg !586, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !586
  %or.cond = and i1 %cmp, %cmp1, !dbg !586
  br i1 %or.cond, label %if.then, label %if.end17, !dbg !586

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !587
  %1 = load i32** @group_of_variable, align 8, !dbg !587, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !587
  %2 = load i32* %arrayidx, align 4, !dbg !587, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !98), !dbg !587
  %idxprom2 = sext i32 %2 to i64, !dbg !589
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !589, !tbaa !480
  %name = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 2, !dbg !589
  %4 = load i8** %name, align 8, !dbg !589, !tbaa !480
  %call = tail call i64 @strlen(i8* %4) #12, !dbg !589
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 1, !dbg !590
  %5 = load i8** %implementation, align 8, !dbg !590, !tbaa !480
  %call6 = tail call i64 @strlen(i8* %5) #12, !dbg !590
  %add = add i64 %call, 3, !dbg !590
  %add7 = add i64 %add, %call6, !dbg !590
  %call8 = tail call noalias i8* @malloc(i64 %add7) #11, !dbg !590
  tail call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !99), !dbg !590
  %tobool = icmp eq i8* %call8, null, !dbg !591
  br i1 %tobool, label %if.end17, label %if.then9, !dbg !591

if.then9:                                         ; preds = %if.then
  %call16 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call8, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %5, i8* %4) #11, !dbg !592
  br label %if.end17, !dbg !594

if.end17:                                         ; preds = %entry, %if.then, %if.then9
  %fullname.0 = phi i8* [ %call8, %if.then9 ], [ null, %if.then ], [ null, %entry ]
  ret i8* %fullname.0, !dbg !595
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupIndexFromVarI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !104), !dbg !596
  %cmp = icmp sgt i32 %var, -1, !dbg !597
  %0 = load i32* @total_variables, align 4, !dbg !597, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !597
  %or.cond = and i1 %cmp, %cmp1, !dbg !597
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !597

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !597
  %1 = load i32** @group_of_variable, align 8, !dbg !597, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !597
  %2 = load i32* %arrayidx, align 4, !dbg !597, !tbaa !488
  br label %cond.end, !dbg !597

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %entry ], !dbg !597
  ret i32 %cond, !dbg !597
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupindexfromvari_(i32* nocapture %gindex, i32* nocapture %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %gindex}, i64 0, metadata !111), !dbg !598
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !112), !dbg !599
  %0 = load i32* %var, align 4, !dbg !600, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !601), !dbg !602
  %cmp.i = icmp sgt i32 %0, -1, !dbg !603
  %1 = load i32* @total_variables, align 4, !dbg !603, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !603
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !603
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_GroupIndexFromVarI.exit, !dbg !603

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !603
  %2 = load i32** @group_of_variable, align 8, !dbg !603, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %idxprom.i, !dbg !603
  %3 = load i32* %arrayidx.i, align 4, !dbg !603, !tbaa !488
  br label %CCTK_GroupIndexFromVarI.exit, !dbg !603

CCTK_GroupIndexFromVarI.exit:                     ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry ], !dbg !603
  store i32 %cond.i, i32* %gindex, align 4, !dbg !600, !tbaa !488
  ret void, !dbg !604
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupIndexFromVar(i8* %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !115), !dbg !605
  %call = tail call i32 @CCTK_VarIndex(i8* %var) #10, !dbg !606
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !607), !dbg !608
  %cmp.i = icmp sgt i32 %call, -1, !dbg !609
  %0 = load i32* @total_variables, align 4, !dbg !609, !tbaa !488
  %cmp1.i = icmp sgt i32 %0, %call, !dbg !609
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !609
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_GroupIndexFromVarI.exit, !dbg !609

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %call to i64, !dbg !609
  %1 = load i32** @group_of_variable, align 8, !dbg !609, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %idxprom.i, !dbg !609
  %2 = load i32* %arrayidx.i, align 4, !dbg !609, !tbaa !488
  br label %CCTK_GroupIndexFromVarI.exit, !dbg !609

CCTK_GroupIndexFromVarI.exit:                     ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %2, %cond.true.i ], [ -1, %entry ], !dbg !609
  ret i32 %cond.i, !dbg !606
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupindexfromvar_(i32* nocapture %vindex, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %vindex}, i64 0, metadata !118), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !119), !dbg !611
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !120), !dbg !611
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !612
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !121), !dbg !612
  %call1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %call) #10, !dbg !613
  store i32 %call1, i32* %vindex, align 4, !dbg !613, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @CCTK_ImpFromVarI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !126), !dbg !616
  %cmp = icmp sgt i32 %var, -1, !dbg !617
  %0 = load i32* @total_variables, align 4, !dbg !617, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !617
  %or.cond = and i1 %cmp, %cmp1, !dbg !617
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !617

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !617
  %1 = load i32** @group_of_variable, align 8, !dbg !617, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !617
  %2 = load i32* %arrayidx, align 4, !dbg !617, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !617
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !617, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 1, !dbg !617
  %4 = load i8** %implementation, align 8, !dbg !617, !tbaa !480
  br label %cond.end, !dbg !617

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ null, %entry ], !dbg !617
  ret i8* %cond, !dbg !617
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @CCTK_FullName(i32 %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !129), !dbg !618
  %call = tail call i8* @CCTK_VarName(i32 %var) #10, !dbg !619
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !131), !dbg !619
  %tobool = icmp eq i8* %call, null, !dbg !620
  br i1 %tobool, label %if.end10, label %if.then, !dbg !620

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !621
  %0 = load i32** @group_of_variable, align 8, !dbg !621, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %0, i64 %idxprom, !dbg !621
  %1 = load i32* %arrayidx, align 4, !dbg !621, !tbaa !488
  %idxprom1 = sext i32 %1 to i64, !dbg !621
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !621, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %idxprom1, i32 1, !dbg !621
  %3 = load i8** %implementation, align 8, !dbg !621, !tbaa !480
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !130), !dbg !621
  %call3 = tail call i64 @strlen(i8* %call) #12, !dbg !623
  %call4 = tail call i64 @strlen(i8* %3) #12, !dbg !623
  %add = add i64 %call3, 3, !dbg !623
  %add5 = add i64 %add, %call4, !dbg !623
  %call6 = tail call noalias i8* @malloc(i64 %add5) #11, !dbg !623
  tail call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !132), !dbg !623
  %tobool7 = icmp eq i8* %call6, null, !dbg !624
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !624

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call6, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %3, i8* %call) #11, !dbg !625
  br label %if.end10, !dbg !627

if.end10:                                         ; preds = %entry, %if.then, %if.then8
  %fullname.0 = phi i8* [ %call6, %if.then8 ], [ null, %if.then ], [ null, %entry ]
  ret i8* %fullname.0, !dbg !628
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @CCTK_VarName(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !199), !dbg !629
  %cmp = icmp sgt i32 %var, -1, !dbg !630
  %0 = load i32* @total_variables, align 4, !dbg !630, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !630
  %or.cond = and i1 %cmp, %cmp1, !dbg !630
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !630

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !630
  %1 = load i32** @group_of_variable, align 8, !dbg !630, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !630
  %2 = load i32* %arrayidx, align 4, !dbg !630, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !630
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !630, !tbaa !480
  %variables = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 14, !dbg !630
  %4 = load %struct.cVariableDefinition** %variables, align 8, !dbg !630, !tbaa !480
  %number = getelementptr inbounds %struct.cVariableDefinition* %4, i64 0, i32 1, !dbg !630
  %5 = load i32* %number, align 4, !dbg !630, !tbaa !488
  %sub = sub nsw i32 %var, %5, !dbg !630
  %idxprom5 = sext i32 %sub to i64, !dbg !630
  %name = getelementptr inbounds %struct.cVariableDefinition* %4, i64 %idxprom5, i32 0, !dbg !630
  %6 = load i8** %name, align 8, !dbg !630, !tbaa !480
  br label %cond.end, !dbg !630

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ null, %entry ], !dbg !630
  ret i8* %cond, !dbg !630
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupTypeNumber(i8* nocapture %type) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %type}, i64 0, metadata !135), !dbg !631
  %call = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #12, !dbg !632
  %tobool = icmp eq i32 %call, 0, !dbg !632
  br i1 %tobool, label %if.end11, label %if.else, !dbg !632

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #12, !dbg !633
  %tobool3 = icmp eq i32 %call2, 0, !dbg !633
  br i1 %tobool3, label %if.end11, label %if.else5, !dbg !633

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #12, !dbg !634
  %tobool7 = icmp eq i32 %call6, 0, !dbg !634
  %. = select i1 %tobool7, i32 3, i32 -1, !dbg !635
  br label %if.end11, !dbg !635

if.end11:                                         ; preds = %if.else5, %if.else, %entry
  %retval1.0 = phi i32 [ 1, %entry ], [ 2, %if.else ], [ %., %if.else5 ]
  ret i32 %retval1.0, !dbg !637
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @cctk_grouptypenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %number}, i64 0, metadata !139), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !140), !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !141), !dbg !639
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !142), !dbg !640
  %call1 = tail call i32 @CCTK_GroupTypeNumber(i8* %call) #10, !dbg !641
  store i32 %call1, i32* %number, align 4, !dbg !641, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !642
  ret void, !dbg !643
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_VarTypeNumber(i8* nocapture %type) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %type}, i64 0, metadata !145), !dbg !644
  %call = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #12, !dbg !645
  %tobool = icmp eq i32 %call, 0, !dbg !645
  br i1 %tobool, label %if.end66, label %if.else, !dbg !645

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !646
  %tobool3 = icmp eq i32 %call2, 0, !dbg !646
  br i1 %tobool3, label %if.end66, label %if.else5, !dbg !646

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #12, !dbg !647
  %tobool7 = icmp eq i32 %call6, 0, !dbg !647
  br i1 %tobool7, label %if.end66, label %if.else9, !dbg !647

if.else9:                                         ; preds = %if.else5
  %call10 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #12, !dbg !648
  %tobool11 = icmp eq i32 %call10, 0, !dbg !648
  br i1 %tobool11, label %if.end66, label %if.else13, !dbg !648

if.else13:                                        ; preds = %if.else9
  %call14 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #12, !dbg !649
  %tobool15 = icmp eq i32 %call14, 0, !dbg !649
  br i1 %tobool15, label %if.end66, label %if.else17, !dbg !649

if.else17:                                        ; preds = %if.else13
  %call18 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #12, !dbg !650
  %tobool19 = icmp eq i32 %call18, 0, !dbg !650
  br i1 %tobool19, label %if.end66, label %if.else21, !dbg !650

if.else21:                                        ; preds = %if.else17
  %call22 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #12, !dbg !651
  %tobool23 = icmp eq i32 %call22, 0, !dbg !651
  br i1 %tobool23, label %if.end66, label %if.else25, !dbg !651

if.else25:                                        ; preds = %if.else21
  %call26 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #12, !dbg !652
  %tobool27 = icmp eq i32 %call26, 0, !dbg !652
  br i1 %tobool27, label %if.end66, label %if.else29, !dbg !652

if.else29:                                        ; preds = %if.else25
  %call30 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #12, !dbg !653
  %tobool31 = icmp eq i32 %call30, 0, !dbg !653
  br i1 %tobool31, label %if.end66, label %if.else33, !dbg !653

if.else33:                                        ; preds = %if.else29
  %call34 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #12, !dbg !654
  %tobool35 = icmp eq i32 %call34, 0, !dbg !654
  br i1 %tobool35, label %if.end66, label %if.else37, !dbg !654

if.else37:                                        ; preds = %if.else33
  %call38 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0)) #12, !dbg !655
  %tobool39 = icmp eq i32 %call38, 0, !dbg !655
  br i1 %tobool39, label %if.end66, label %if.else41, !dbg !655

if.else41:                                        ; preds = %if.else37
  %call42 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0)) #12, !dbg !656
  %tobool43 = icmp eq i32 %call42, 0, !dbg !656
  br i1 %tobool43, label %if.end66, label %if.else45, !dbg !656

if.else45:                                        ; preds = %if.else41
  %call46 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0)) #12, !dbg !657
  %tobool47 = icmp eq i32 %call46, 0, !dbg !657
  br i1 %tobool47, label %if.end66, label %if.else49, !dbg !657

if.else49:                                        ; preds = %if.else45
  %call50 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)) #12, !dbg !658
  %tobool51 = icmp eq i32 %call50, 0, !dbg !658
  %. = select i1 %tobool51, i32 1, i32 -1, !dbg !659
  br label %if.end66, !dbg !659

if.end66:                                         ; preds = %if.else49, %if.else45, %if.else41, %if.else37, %if.else33, %if.else29, %if.else25, %if.else21, %if.else17, %if.else13, %if.else9, %if.else5, %if.else, %entry
  %retval1.0 = phi i32 [ 2, %entry ], [ 3, %if.else ], [ 4, %if.else5 ], [ 5, %if.else9 ], [ 6, %if.else13 ], [ 7, %if.else17 ], [ 8, %if.else21 ], [ 9, %if.else25 ], [ 10, %if.else29 ], [ 11, %if.else33 ], [ 12, %if.else37 ], [ 13, %if.else41 ], [ 1, %if.else45 ], [ %., %if.else49 ]
  ret i32 %retval1.0, !dbg !661
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_vartypenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %number}, i64 0, metadata !149), !dbg !662
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !150), !dbg !663
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !151), !dbg !663
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !664
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !152), !dbg !664
  %call1 = tail call i32 @CCTK_VarTypeNumber(i8* %call) #10, !dbg !665
  store i32 %call1, i32* %number, align 4, !dbg !665, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !666
  ret void, !dbg !667
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_VarTypeName(i32 %vtype) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !155), !dbg !668
  %switch.tableidx = add i32 %vtype, -1, !dbg !669
  %0 = icmp ult i32 %switch.tableidx, 14, !dbg !669
  br i1 %0, label %switch.lookup, label %sw.epilog, !dbg !669

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64, !dbg !669
  %switch.gep = getelementptr inbounds [14 x i8*]* @switch.table, i64 0, i64 %1, !dbg !669
  %switch.load = load i8** %switch.gep, align 8, !dbg !669
  ret i8* %switch.load, !dbg !669

sw.epilog:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata !478, i64 0, metadata !156), !dbg !670
  ret i8* null, !dbg !672
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupScopeNumber(i8* nocapture %type) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %type}, i64 0, metadata !159), !dbg !673
  %call = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #12, !dbg !674
  %tobool = icmp eq i32 %call, 0, !dbg !674
  br i1 %tobool, label %if.end11, label %if.else, !dbg !674

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0)) #12, !dbg !675
  %tobool3 = icmp eq i32 %call2, 0, !dbg !675
  br i1 %tobool3, label %if.end11, label %if.else5, !dbg !675

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @strcmp(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0)) #12, !dbg !676
  %tobool7 = icmp eq i32 %call6, 0, !dbg !676
  %. = select i1 %tobool7, i32 3, i32 -1, !dbg !677
  br label %if.end11, !dbg !677

if.end11:                                         ; preds = %if.else5, %if.else, %entry
  %retval1.0 = phi i32 [ 1, %entry ], [ 2, %if.else ], [ %., %if.else5 ]
  ret i32 %retval1.0, !dbg !679
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupscopenumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %number}, i64 0, metadata !163), !dbg !680
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !164), !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !165), !dbg !681
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !682
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !166), !dbg !682
  %call1 = tail call i32 @CCTK_GroupScopeNumber(i8* %call) #10, !dbg !683
  store i32 %call1, i32* %number, align 4, !dbg !683, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !684
  ret void, !dbg !685
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupDistribNumber(i8* nocapture %dtype) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dtype}, i64 0, metadata !169), !dbg !686
  %call = tail call i32 @strcmp(i8* %dtype, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0)) #12, !dbg !687
  %tobool = icmp eq i32 %call, 0, !dbg !687
  br i1 %tobool, label %if.end6, label %if.else, !dbg !687

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* %dtype, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0)) #12, !dbg !688
  %tobool3 = icmp eq i32 %call2, 0, !dbg !688
  %. = select i1 %tobool3, i32 2, i32 -1, !dbg !689
  br label %if.end6, !dbg !689

if.end6:                                          ; preds = %if.else, %entry
  %retval1.0 = phi i32 [ 1, %entry ], [ %., %if.else ]
  ret i32 %retval1.0, !dbg !691
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupdistribnumber_(i32* nocapture %number, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %number}, i64 0, metadata !173), !dbg !692
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !174), !dbg !693
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !175), !dbg !693
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !694
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !176), !dbg !694
  %call1 = tail call i32 @CCTK_GroupDistribNumber(i8* %call) #10, !dbg !695
  store i32 %call1, i32* %number, align 4, !dbg !695, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !696
  ret void, !dbg !697
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupData(i32 %group, %struct.cGroup* %gp) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !194), !dbg !698
  tail call void @llvm.dbg.value(metadata !{%struct.cGroup* %gp}, i64 0, metadata !195), !dbg !698
  %cmp = icmp sgt i32 %group, -1, !dbg !699
  br i1 %cmp, label %land.end, label %if.end25, !dbg !699

land.end:                                         ; preds = %entry
  %0 = load i32* @n_groups, align 4, !dbg !699, !tbaa !488
  %phitmp = icmp sle i32 %0, %group
  %cond = sext i1 %phitmp to i32
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !196), !dbg !700
  br i1 %phitmp, label %if.end25, label %if.then, !dbg !701

if.then:                                          ; preds = %land.end
  %tobool3 = icmp eq %struct.cGroup* %gp, null, !dbg !702
  br i1 %tobool3, label %if.end25, label %if.then4, !dbg !702

if.then4:                                         ; preds = %if.then
  %idxprom = sext i32 %group to i64, !dbg !704
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !704, !tbaa !480
  %gtype = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 4, !dbg !704
  %2 = load i32* %gtype, align 4, !dbg !704, !tbaa !488
  %grouptype = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 0, !dbg !704
  store i32 %2, i32* %grouptype, align 4, !dbg !704, !tbaa !488
  %vtype = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 5, !dbg !706
  %3 = load i32* %vtype, align 4, !dbg !706, !tbaa !488
  %vartype = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 1, !dbg !706
  store i32 %3, i32* %vartype, align 4, !dbg !706, !tbaa !488
  %dtype = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 6, !dbg !707
  %4 = load i32* %dtype, align 4, !dbg !707, !tbaa !488
  %disttype = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 2, !dbg !707
  store i32 %4, i32* %disttype, align 4, !dbg !707, !tbaa !488
  %dim = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 9, !dbg !708
  %5 = load i32* %dim, align 4, !dbg !708, !tbaa !488
  %dim11 = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 4, !dbg !708
  store i32 %5, i32* %dim11, align 4, !dbg !708, !tbaa !488
  %n_variables = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 11, !dbg !709
  %6 = load i32* %n_variables, align 4, !dbg !709, !tbaa !488
  %numvars = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 5, !dbg !709
  store i32 %6, i32* %numvars, align 4, !dbg !709, !tbaa !488
  %n_timelevels = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 10, !dbg !710
  %7 = load i32* %n_timelevels, align 4, !dbg !710, !tbaa !488
  %numtimelevels = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 6, !dbg !710
  store i32 %7, i32* %numtimelevels, align 4, !dbg !710, !tbaa !488
  %staggertype = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 7, !dbg !711
  %8 = load i32* %staggertype, align 4, !dbg !711, !tbaa !488
  %stagtype = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 3, !dbg !711
  store i32 %8, i32* %stagtype, align 4, !dbg !711, !tbaa !488
  %vararraysize = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 15, !dbg !712
  %9 = load i8** %vararraysize, align 8, !dbg !712, !tbaa !480
  %tobool20 = icmp eq i8* %9, null, !dbg !712
  %vectorgroup = getelementptr inbounds %struct.cGroup* %gp, i64 0, i32 7, !dbg !713
  br i1 %tobool20, label %if.else, label %if.then21, !dbg !712

if.then21:                                        ; preds = %if.then4
  store i32 1, i32* %vectorgroup, align 4, !dbg !713, !tbaa !488
  br label %if.end25, !dbg !715

if.else:                                          ; preds = %if.then4
  store i32 0, i32* %vectorgroup, align 4, !dbg !716, !tbaa !488
  br label %if.end25

if.end25:                                         ; preds = %entry, %if.then, %if.else, %if.then21, %land.end
  %retval1.0 = phi i32 [ %cond, %land.end ], [ %cond, %if.then21 ], [ %cond, %if.else ], [ -2, %if.then ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !718
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @CCTK_GroupName(i32 %group) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !211), !dbg !719
  tail call void @llvm.dbg.value(metadata !478, i64 0, metadata !212), !dbg !720
  %cmp = icmp sgt i32 %group, -1, !dbg !721
  %0 = load i32* @n_groups, align 4, !dbg !721, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !721
  %or.cond = and i1 %cmp, %cmp1, !dbg !721
  br i1 %or.cond, label %if.then, label %if.end16, !dbg !721

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !722
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !722, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 1, !dbg !722
  %2 = load i8** %implementation, align 8, !dbg !722, !tbaa !480
  %call = tail call i64 @strlen(i8* %2) #12, !dbg !722
  %name4 = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 2, !dbg !724
  %3 = load i8** %name4, align 8, !dbg !724, !tbaa !480
  %call5 = tail call i64 @strlen(i8* %3) #12, !dbg !724
  %add = add i64 %call, 3, !dbg !724
  %add6 = add i64 %add, %call5, !dbg !724
  %call7 = tail call noalias i8* @malloc(i64 %add6) #11, !dbg !724
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !212), !dbg !724
  %tobool = icmp eq i8* %call7, null, !dbg !725
  br i1 %tobool, label %if.end16, label %if.then8, !dbg !725

if.then8:                                         ; preds = %if.then
  %call15 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call7, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !726
  br label %if.end16, !dbg !728

if.end16:                                         ; preds = %if.then, %if.then8, %entry
  %name.0 = phi i8* [ %call7, %if.then8 ], [ null, %if.then ], [ null, %entry ]
  ret i8* %name.0, !dbg !729
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_FirstVarIndexI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !215), !dbg !730
  %cmp = icmp sgt i32 %group, -1, !dbg !731
  %0 = load i32* @n_groups, align 4, !dbg !731, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !731
  %or.cond = and i1 %cmp, %cmp1, !dbg !731
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !731

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !731
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !731, !tbaa !480
  %variables = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 14, !dbg !731
  %2 = load %struct.cVariableDefinition** %variables, align 8, !dbg !731, !tbaa !480
  %number = getelementptr inbounds %struct.cVariableDefinition* %2, i64 0, i32 1, !dbg !731
  %3 = load i32* %number, align 4, !dbg !731, !tbaa !488
  br label %cond.end, !dbg !731

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ -1, %entry ], !dbg !731
  ret i32 %cond, !dbg !731
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_firstvarindexi_(i32* nocapture %first, i32* nocapture %group) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %first}, i64 0, metadata !218), !dbg !732
  tail call void @llvm.dbg.value(metadata !{i32* %group}, i64 0, metadata !219), !dbg !733
  %0 = load i32* %group, align 4, !dbg !734, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !735), !dbg !736
  %cmp.i = icmp sgt i32 %0, -1, !dbg !737
  %1 = load i32* @n_groups, align 4, !dbg !737, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !737
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !737
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_FirstVarIndexI.exit, !dbg !737

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !737
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !737, !tbaa !480
  %variables.i = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %idxprom.i, i32 14, !dbg !737
  %3 = load %struct.cVariableDefinition** %variables.i, align 8, !dbg !737, !tbaa !480
  %number.i = getelementptr inbounds %struct.cVariableDefinition* %3, i64 0, i32 1, !dbg !737
  %4 = load i32* %number.i, align 4, !dbg !737, !tbaa !488
  br label %CCTK_FirstVarIndexI.exit, !dbg !737

CCTK_FirstVarIndexI.exit:                         ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %4, %cond.true.i ], [ -1, %entry ], !dbg !737
  store i32 %cond.i, i32* %first, align 4, !dbg !734, !tbaa !488
  ret void, !dbg !738
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_FirstVarIndex(i8* %groupname) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !222), !dbg !739
  %call = tail call i32 @CCTK_GroupIndex(i8* %groupname) #10, !dbg !740
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !741), !dbg !742
  %cmp.i = icmp sgt i32 %call, -1, !dbg !743
  %0 = load i32* @n_groups, align 4, !dbg !743, !tbaa !488
  %cmp1.i = icmp sgt i32 %0, %call, !dbg !743
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !743
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_FirstVarIndexI.exit, !dbg !743

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %call to i64, !dbg !743
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !743, !tbaa !480
  %variables.i = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom.i, i32 14, !dbg !743
  %2 = load %struct.cVariableDefinition** %variables.i, align 8, !dbg !743, !tbaa !480
  %number.i = getelementptr inbounds %struct.cVariableDefinition* %2, i64 0, i32 1, !dbg !743
  %3 = load i32* %number.i, align 4, !dbg !743, !tbaa !488
  br label %CCTK_FirstVarIndexI.exit, !dbg !743

CCTK_FirstVarIndexI.exit:                         ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry ], !dbg !743
  ret i32 %cond.i, !dbg !740
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumVarsInGroupI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !225), !dbg !744
  %cmp = icmp sgt i32 %group, -1, !dbg !745
  %0 = load i32* @n_groups, align 4, !dbg !745, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !745
  %or.cond = and i1 %cmp, %cmp1, !dbg !745
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !745

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !745
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !745, !tbaa !480
  %n_variables = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 11, !dbg !745
  %2 = load i32* %n_variables, align 4, !dbg !745, !tbaa !488
  br label %cond.end, !dbg !745

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %entry ], !dbg !745
  ret i32 %cond, !dbg !745
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_NumVarsInGroup(i8* %groupname) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !228), !dbg !746
  %call = tail call i32 @CCTK_GroupIndex(i8* %groupname) #10, !dbg !747
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !748), !dbg !749
  %cmp.i = icmp sgt i32 %call, -1, !dbg !750
  %0 = load i32* @n_groups, align 4, !dbg !750, !tbaa !488
  %cmp1.i = icmp sgt i32 %0, %call, !dbg !750
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !750
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_NumVarsInGroupI.exit, !dbg !750

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %call to i64, !dbg !750
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !750, !tbaa !480
  %n_variables.i = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom.i, i32 11, !dbg !750
  %2 = load i32* %n_variables.i, align 4, !dbg !750, !tbaa !488
  br label %CCTK_NumVarsInGroupI.exit, !dbg !750

CCTK_NumVarsInGroupI.exit:                        ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %2, %cond.true.i ], [ -1, %entry ], !dbg !750
  ret i32 %cond.i, !dbg !747
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numvarsingroup_(i32* nocapture %num, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !231), !dbg !751
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !232), !dbg !752
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !233), !dbg !752
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !753
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !234), !dbg !753
  %call1 = tail call i32 @CCTK_NumVarsInGroup(i8* %call) #10, !dbg !754
  store i32 %call1, i32* %num, align 4, !dbg !754, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !755
  ret void, !dbg !756
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupTypeFromVarI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !237), !dbg !757
  %cmp = icmp sgt i32 %var, -1, !dbg !758
  %0 = load i32* @total_variables, align 4, !dbg !758, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !758
  %or.cond = and i1 %cmp, %cmp1, !dbg !758
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !758

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !758
  %1 = load i32** @group_of_variable, align 8, !dbg !758, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !758
  %2 = load i32* %arrayidx, align 4, !dbg !758, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !758
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !758, !tbaa !480
  %gtype = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 4, !dbg !758
  %4 = load i32* %gtype, align 4, !dbg !758, !tbaa !488
  br label %cond.end, !dbg !758

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry ], !dbg !758
  ret i32 %cond, !dbg !758
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupTypeI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !240), !dbg !759
  %cmp = icmp sgt i32 %group, -1, !dbg !760
  %0 = load i32* @n_groups, align 4, !dbg !760, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !760
  %or.cond = and i1 %cmp, %cmp1, !dbg !760
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !760

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !760
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !760, !tbaa !480
  %gtype = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 4, !dbg !760
  %2 = load i32* %gtype, align 4, !dbg !760, !tbaa !488
  br label %cond.end, !dbg !760

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %entry ], !dbg !760
  ret i32 %cond, !dbg !760
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_VarTypeI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !243), !dbg !761
  %cmp = icmp sgt i32 %var, -1, !dbg !762
  %0 = load i32* @total_variables, align 4, !dbg !762, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !762
  %or.cond = and i1 %cmp, %cmp1, !dbg !762
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !762

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !762
  %1 = load i32** @group_of_variable, align 8, !dbg !762, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !762
  %2 = load i32* %arrayidx, align 4, !dbg !762, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !762
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !762, !tbaa !480
  %vtype = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 5, !dbg !762
  %4 = load i32* %vtype, align 4, !dbg !762, !tbaa !488
  br label %cond.end, !dbg !762

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry ], !dbg !762
  ret i32 %cond, !dbg !762
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_vartypei_(i32* nocapture %type, i32* nocapture %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !246), !dbg !763
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !247), !dbg !764
  %0 = load i32* %var, align 4, !dbg !765, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !766), !dbg !767
  %cmp.i = icmp sgt i32 %0, -1, !dbg !768
  %1 = load i32* @total_variables, align 4, !dbg !768, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !768
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !768
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_VarTypeI.exit, !dbg !768

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !768
  %2 = load i32** @group_of_variable, align 8, !dbg !768, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %idxprom.i, !dbg !768
  %3 = load i32* %arrayidx.i, align 4, !dbg !768, !tbaa !488
  %idxprom2.i = sext i32 %3 to i64, !dbg !768
  %4 = load %struct.cGroupDefinition** @groups, align 8, !dbg !768, !tbaa !480
  %vtype.i = getelementptr inbounds %struct.cGroupDefinition* %4, i64 %idxprom2.i, i32 5, !dbg !768
  %5 = load i32* %vtype.i, align 4, !dbg !768, !tbaa !488
  br label %CCTK_VarTypeI.exit, !dbg !768

CCTK_VarTypeI.exit:                               ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry ], !dbg !768
  store i32 %cond.i, i32* %type, align 4, !dbg !765, !tbaa !488
  ret void, !dbg !769
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumTimeLevelsFromVarI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !250), !dbg !770
  %cmp = icmp sgt i32 %var, -1, !dbg !771
  %0 = load i32* @total_variables, align 4, !dbg !771, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !771
  %or.cond = and i1 %cmp, %cmp1, !dbg !771
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !771

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !771
  %1 = load i32** @group_of_variable, align 8, !dbg !771, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !771
  %2 = load i32* %arrayidx, align 4, !dbg !771, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !771
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !771, !tbaa !480
  %n_timelevels = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 10, !dbg !771
  %4 = load i32* %n_timelevels, align 4, !dbg !771, !tbaa !488
  br label %cond.end, !dbg !771

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry ], !dbg !771
  ret i32 %cond, !dbg !771
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numtimelevelsfromvari_(i32* nocapture %num, i32* nocapture %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !253), !dbg !772
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !254), !dbg !773
  %0 = load i32* %var, align 4, !dbg !774, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !775), !dbg !776
  %cmp.i = icmp sgt i32 %0, -1, !dbg !777
  %1 = load i32* @total_variables, align 4, !dbg !777, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !777
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !777
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_NumTimeLevelsFromVarI.exit, !dbg !777

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !777
  %2 = load i32** @group_of_variable, align 8, !dbg !777, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %idxprom.i, !dbg !777
  %3 = load i32* %arrayidx.i, align 4, !dbg !777, !tbaa !488
  %idxprom2.i = sext i32 %3 to i64, !dbg !777
  %4 = load %struct.cGroupDefinition** @groups, align 8, !dbg !777, !tbaa !480
  %n_timelevels.i = getelementptr inbounds %struct.cGroupDefinition* %4, i64 %idxprom2.i, i32 10, !dbg !777
  %5 = load i32* %n_timelevels.i, align 4, !dbg !777, !tbaa !488
  br label %CCTK_NumTimeLevelsFromVarI.exit, !dbg !777

CCTK_NumTimeLevelsFromVarI.exit:                  ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry ], !dbg !777
  store i32 %cond.i, i32* %num, align 4, !dbg !774, !tbaa !488
  ret void, !dbg !778
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_NumTimeLevelsFromVar(i8* %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %var}, i64 0, metadata !257), !dbg !779
  %call = tail call i32 @CCTK_VarIndex(i8* %var) #10, !dbg !780
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !781), !dbg !782
  %cmp.i = icmp sgt i32 %call, -1, !dbg !783
  %0 = load i32* @total_variables, align 4, !dbg !783, !tbaa !488
  %cmp1.i = icmp sgt i32 %0, %call, !dbg !783
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !783
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_NumTimeLevelsFromVarI.exit, !dbg !783

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %call to i64, !dbg !783
  %1 = load i32** @group_of_variable, align 8, !dbg !783, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %idxprom.i, !dbg !783
  %2 = load i32* %arrayidx.i, align 4, !dbg !783, !tbaa !488
  %idxprom2.i = sext i32 %2 to i64, !dbg !783
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !783, !tbaa !480
  %n_timelevels.i = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2.i, i32 10, !dbg !783
  %4 = load i32* %n_timelevels.i, align 4, !dbg !783, !tbaa !488
  br label %CCTK_NumTimeLevelsFromVarI.exit, !dbg !783

CCTK_NumTimeLevelsFromVarI.exit:                  ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %4, %cond.true.i ], [ -1, %entry ], !dbg !783
  ret i32 %cond.i, !dbg !780
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_numtimelevelsfromvar_(i32* nocapture %num, i8* %cctk_str1, i32 %cctk_strlen1) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %num}, i64 0, metadata !260), !dbg !784
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !261), !dbg !785
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !262), !dbg !785
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #11, !dbg !786
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !263), !dbg !786
  %call1 = tail call i32 @CCTK_NumTimeLevelsFromVar(i8* %call) #10, !dbg !787
  store i32 %call1, i32* %num, align 4, !dbg !787, !tbaa !488
  tail call void @free(i8* %call) #11, !dbg !788
  ret void, !dbg !789
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_printgroup_(i32* nocapture %group) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %group}, i64 0, metadata !268), !dbg !790
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !480
  %1 = load i32* %group, align 4, !dbg !791, !tbaa !488
  %call = tail call i8* @CCTK_GroupName(i32 %1) #10, !dbg !791
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0), i32 %1, i8* %call) #11, !dbg !791
  ret void, !dbg !792
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define void @cctk_printvar_(i32* nocapture %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !271), !dbg !793
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !794, !tbaa !480
  %1 = load i32* %var, align 4, !dbg !794, !tbaa !488
  %call = tail call i8* @CCTK_VarName(i32 %1) #10, !dbg !794
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8]* @.str45, i64 0, i64 0), i32 %1, i8* %call) #11, !dbg !794
  ret void, !dbg !795
}

; Function Attrs: nounwind optsize readonly uwtable
define i32** @CCTK_GroupSizesI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !277), !dbg !796
  %cmp = icmp sgt i32 %group, -1, !dbg !797
  %0 = load i32* @n_groups, align 4, !dbg !797, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !797
  %or.cond = and i1 %cmp, %cmp1, !dbg !797
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !797

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !797
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !797, !tbaa !480
  %size = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 12, !dbg !797
  %2 = load i32*** %size, align 8, !dbg !797, !tbaa !480
  br label %cond.end, !dbg !797

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32** [ %2, %cond.true ], [ null, %entry ], !dbg !797
  ret i32** %cond, !dbg !797
}

; Function Attrs: nounwind optsize readonly uwtable
define i32** @CCTK_GroupGhostsizesI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !280), !dbg !798
  %cmp = icmp sgt i32 %group, -1, !dbg !799
  %0 = load i32* @n_groups, align 4, !dbg !799, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !799
  %or.cond = and i1 %cmp, %cmp1, !dbg !799
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !799

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !799
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !799, !tbaa !480
  %ghostsize = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 13, !dbg !799
  %2 = load i32*** %ghostsize, align 8, !dbg !799, !tbaa !480
  br label %cond.end, !dbg !799

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32** [ %2, %cond.true ], [ null, %entry ], !dbg !799
  ret i32** %cond, !dbg !799
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_VarTypeSize(i32 %vtype) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %vtype}, i64 0, metadata !283), !dbg !800
  switch i32 %vtype, label %sw.default [
    i32 1, label %sw.epilog
    i32 15, label %sw.bb1
    i32 16, label %sw.bb2
    i32 2, label %sw.bb3
    i32 6, label %sw.bb4
    i32 10, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.epilog
    i32 5, label %sw.bb8
    i32 7, label %sw.bb9
    i32 11, label %sw.bb10
    i32 8, label %sw.epilog
    i32 12, label %sw.bb12
    i32 9, label %sw.bb13
    i32 13, label %sw.bb14
  ], !dbg !801

sw.bb1:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !802, i64 0, metadata !284), !dbg !803
  br label %sw.epilog, !dbg !805

sw.bb2:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !802, i64 0, metadata !284), !dbg !806
  br label %sw.epilog, !dbg !807

sw.bb3:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !808, i64 0, metadata !284), !dbg !809
  br label %sw.epilog, !dbg !810

sw.bb4:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !802, i64 0, metadata !284), !dbg !811
  br label %sw.epilog, !dbg !812

sw.bb5:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !813, i64 0, metadata !284), !dbg !814
  br label %sw.epilog, !dbg !815

sw.bb6:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !816, i64 0, metadata !284), !dbg !817
  br label %sw.epilog, !dbg !818

sw.bb8:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !802, i64 0, metadata !284), !dbg !819
  br label %sw.epilog, !dbg !820

sw.bb9:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !808, i64 0, metadata !284), !dbg !821
  br label %sw.epilog, !dbg !822

sw.bb10:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !802, i64 0, metadata !284), !dbg !823
  br label %sw.epilog, !dbg !824

sw.bb12:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !813, i64 0, metadata !284), !dbg !825
  br label %sw.epilog, !dbg !826

sw.bb13:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !813, i64 0, metadata !284), !dbg !827
  br label %sw.epilog, !dbg !828

sw.bb14:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !829, i64 0, metadata !284), !dbg !830
  br label %sw.epilog, !dbg !831

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 1474, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str46, i64 0, i64 0), i32 %vtype) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata !833, i64 0, metadata !284), !dbg !834
  br label %sw.epilog, !dbg !835

sw.epilog:                                        ; preds = %entry, %entry, %entry, %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %var_size.0 = phi i32 [ -1, %sw.default ], [ 32, %sw.bb14 ], [ 16, %sw.bb13 ], [ 16, %sw.bb12 ], [ 8, %sw.bb10 ], [ 4, %sw.bb9 ], [ 8, %sw.bb8 ], [ 2, %sw.bb6 ], [ 16, %sw.bb5 ], [ 8, %sw.bb4 ], [ 4, %sw.bb3 ], [ 8, %sw.bb2 ], [ 8, %sw.bb1 ], [ %vtype, %entry ], [ %vtype, %entry ], [ %vtype, %entry ]
  ret i32 %var_size.0, !dbg !836
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupDimI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !287), !dbg !837
  %cmp = icmp sgt i32 %group, -1, !dbg !838
  %0 = load i32* @n_groups, align 4, !dbg !838, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %group, !dbg !838
  %or.cond = and i1 %cmp, %cmp1, !dbg !838
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !838

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %group to i64, !dbg !838
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !838, !tbaa !480
  %dim = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %idxprom, i32 9, !dbg !838
  %2 = load i32* %dim, align 4, !dbg !838, !tbaa !488
  br label %cond.end, !dbg !838

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %entry ], !dbg !838
  ret i32 %cond, !dbg !838
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupdimi_(i32* nocapture %dim, i32* nocapture %group) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !290), !dbg !839
  tail call void @llvm.dbg.value(metadata !{i32* %group}, i64 0, metadata !291), !dbg !840
  %0 = load i32* %group, align 4, !dbg !841, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !842), !dbg !843
  %cmp.i = icmp sgt i32 %0, -1, !dbg !844
  %1 = load i32* @n_groups, align 4, !dbg !844, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !844
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !844
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_GroupDimI.exit, !dbg !844

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !844
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !844, !tbaa !480
  %dim.i = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %idxprom.i, i32 9, !dbg !844
  %3 = load i32* %dim.i, align 4, !dbg !844, !tbaa !488
  br label %CCTK_GroupDimI.exit, !dbg !844

CCTK_GroupDimI.exit:                              ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ -1, %entry ], !dbg !844
  store i32 %cond.i, i32* %dim, align 4, !dbg !841, !tbaa !488
  ret void, !dbg !845
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_GroupDimFromVarI(i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !294), !dbg !846
  %cmp = icmp sgt i32 %var, -1, !dbg !847
  %0 = load i32* @total_variables, align 4, !dbg !847, !tbaa !488
  %cmp1 = icmp sgt i32 %0, %var, !dbg !847
  %or.cond = and i1 %cmp, %cmp1, !dbg !847
  br i1 %or.cond, label %cond.true, label %cond.end, !dbg !847

cond.true:                                        ; preds = %entry
  %idxprom = sext i32 %var to i64, !dbg !847
  %1 = load i32** @group_of_variable, align 8, !dbg !847, !tbaa !480
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !847
  %2 = load i32* %arrayidx, align 4, !dbg !847, !tbaa !488
  %idxprom2 = sext i32 %2 to i64, !dbg !847
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !847, !tbaa !480
  %dim = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %idxprom2, i32 9, !dbg !847
  %4 = load i32* %dim, align 4, !dbg !847, !tbaa !488
  br label %cond.end, !dbg !847

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ -1, %entry ], !dbg !847
  ret i32 %cond, !dbg !847
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupdimfromvari_(i32* nocapture %dim, i32* nocapture %var) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !297), !dbg !848
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !298), !dbg !849
  %0 = load i32* %var, align 4, !dbg !850, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !851), !dbg !852
  %cmp.i = icmp sgt i32 %0, -1, !dbg !853
  %1 = load i32* @total_variables, align 4, !dbg !853, !tbaa !488
  %cmp1.i = icmp sgt i32 %1, %0, !dbg !853
  %or.cond.i = and i1 %cmp.i, %cmp1.i, !dbg !853
  br i1 %or.cond.i, label %cond.true.i, label %CCTK_GroupDimFromVarI.exit, !dbg !853

cond.true.i:                                      ; preds = %entry
  %idxprom.i = sext i32 %0 to i64, !dbg !853
  %2 = load i32** @group_of_variable, align 8, !dbg !853, !tbaa !480
  %arrayidx.i = getelementptr inbounds i32* %2, i64 %idxprom.i, !dbg !853
  %3 = load i32* %arrayidx.i, align 4, !dbg !853, !tbaa !488
  %idxprom2.i = sext i32 %3 to i64, !dbg !853
  %4 = load %struct.cGroupDefinition** @groups, align 8, !dbg !853, !tbaa !480
  %dim.i = getelementptr inbounds %struct.cGroupDefinition* %4, i64 %idxprom2.i, i32 9, !dbg !853
  %5 = load i32* %dim.i, align 4, !dbg !853, !tbaa !488
  br label %CCTK_GroupDimFromVarI.exit, !dbg !853

CCTK_GroupDimFromVarI.exit:                       ; preds = %entry, %cond.true.i
  %cond.i = phi i32 [ %5, %cond.true.i ], [ -1, %entry ], !dbg !853
  store i32 %cond.i, i32* %dim, align 4, !dbg !850, !tbaa !488
  ret void, !dbg !854
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_TraverseString(i8* nocapture %traverse_string, void (i32, i8*, i8*)* %callback, i8* %callback_arg, i32 %selection) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %traverse_string}, i64 0, metadata !307), !dbg !855
  tail call void @llvm.dbg.value(metadata !{void (i32, i8*, i8*)* %callback}, i64 0, metadata !308), !dbg !856
  tail call void @llvm.dbg.value(metadata !{i8* %callback_arg}, i64 0, metadata !309), !dbg !857
  tail call void @llvm.dbg.value(metadata !{i32 %selection}, i64 0, metadata !310), !dbg !858
  %cmp = icmp eq void (i32, i8*, i8*)* %callback, null, !dbg !859
  br i1 %cmp, label %if.then, label %if.end, !dbg !859

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1595, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str47, i64 0, i64 0)) #11, !dbg !860
  br label %return, !dbg !862

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !311), !dbg !863
  %call2 = tail call noalias i8* @strdup(i8* %traverse_string) #11, !dbg !864
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !320), !dbg !864
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !319), !dbg !865
  %tobool250 = icmp eq i8* %call2, null, !dbg !866
  br i1 %tobool250, label %while.end156, label %land.rhs.lr.ph, !dbg !866

land.rhs.lr.ph:                                   ; preds = %if.end
  %cmp127 = icmp eq i32 %selection, 2, !dbg !867
  %0 = and i32 %selection, -3, !dbg !871
  %1 = icmp eq i32 %0, 1, !dbg !871
  %2 = and i32 %selection, -2, !dbg !872
  %3 = icmp eq i32 %2, 2, !dbg !872
  br label %land.rhs, !dbg !866

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end151
  %retval1.0252 = phi i32 [ 0, %land.rhs.lr.ph ], [ %retval1.1, %if.end151 ]
  %string.0251 = phi i8* [ %call2, %land.rhs.lr.ph ], [ %string.4.incdec.ptr154, %if.end151 ]
  %4 = load i8* %string.0251, align 1, !dbg !866, !tbaa !481
  %tobool3 = icmp eq i8 %4, 0, !dbg !866
  br i1 %tobool3, label %while.end156, label %land.rhs7.lr.ph

land.rhs7.lr.ph:                                  ; preds = %land.rhs
  %call9 = tail call i16** @__ctype_b_loc() #13, !dbg !873
  %5 = load i16** %call9, align 8, !dbg !873, !tbaa !480
  br label %land.rhs7, !dbg !873

while.cond4:                                      ; preds = %land.rhs7
  %6 = load i8* %incdec.ptr, align 1, !dbg !873, !tbaa !481
  %tobool6 = icmp eq i8 %6, 0, !dbg !873
  br i1 %tobool6, label %while.end156, label %land.rhs7, !dbg !873

land.rhs7:                                        ; preds = %land.rhs7.lr.ph, %while.cond4
  %7 = phi i8 [ %4, %land.rhs7.lr.ph ], [ %6, %while.cond4 ]
  %string.1228 = phi i8* [ %string.0251, %land.rhs7.lr.ph ], [ %incdec.ptr, %while.cond4 ]
  %idxprom = sext i8 %7 to i64, !dbg !873
  %arrayidx = getelementptr inbounds i16* %5, i64 %idxprom, !dbg !873
  %8 = load i16* %arrayidx, align 2, !dbg !873, !tbaa !874
  %and = and i16 %8, 8192, !dbg !873
  %tobool11 = icmp eq i16 %and, 0, !dbg !873
  %incdec.ptr = getelementptr inbounds i8* %string.1228, i64 1, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !319), !dbg !875
  br i1 %tobool11, label %while.end, label %while.cond4

while.end:                                        ; preds = %land.rhs7
  %tobool14 = icmp eq i8 %7, 0, !dbg !877
  br i1 %tobool14, label %while.end156, label %lor.lhs.false, !dbg !877

while.cond17:                                     ; preds = %lor.lhs.false
  %9 = load i8* %incdec.ptr34, align 1, !dbg !878, !tbaa !481
  %tobool18 = icmp eq i8 %9, 0, !dbg !878
  br i1 %tobool18, label %while.end35, label %while.cond17.lor.lhs.false_crit_edge, !dbg !878

while.cond17.lor.lhs.false_crit_edge:             ; preds = %while.cond17
  %idxprom22.phi.trans.insert = sext i8 %9 to i64
  %arrayidx24.phi.trans.insert = getelementptr inbounds i16* %5, i64 %idxprom22.phi.trans.insert
  %.pre = load i16* %arrayidx24.phi.trans.insert, align 2, !dbg !879, !tbaa !874
  br label %lor.lhs.false, !dbg !878

lor.lhs.false:                                    ; preds = %while.end, %while.cond17.lor.lhs.false_crit_edge
  %10 = phi i16 [ %.pre, %while.cond17.lor.lhs.false_crit_edge ], [ %8, %while.end ]
  %11 = phi i8 [ %9, %while.cond17.lor.lhs.false_crit_edge ], [ %7, %while.end ]
  %string.2230 = phi i8* [ %incdec.ptr34, %while.cond17.lor.lhs.false_crit_edge ], [ %string.1228, %while.end ]
  %and26 = and i16 %10, 8192, !dbg !879
  %tobool27 = icmp ne i16 %and26, 0, !dbg !879
  %cmp30 = icmp eq i8 %11, 91, !dbg !879
  %or.cond = or i1 %tobool27, %cmp30, !dbg !879
  %incdec.ptr34 = getelementptr inbounds i8* %string.2230, i64 1, !dbg !881
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr34}, i64 0, metadata !319), !dbg !881
  br i1 %or.cond, label %while.end35, label %while.cond17, !dbg !879

while.end35:                                      ; preds = %while.cond17, %lor.lhs.false
  %12 = phi i8 [ %11, %lor.lhs.false ], [ 0, %while.cond17 ]
  %string.2.lcssa = phi i8* [ %string.2230, %lor.lhs.false ], [ %incdec.ptr34, %while.cond17 ]
  tail call void @llvm.dbg.value(metadata !{i8 %12}, i64 0, metadata !318), !dbg !882
  store i8 0, i8* %string.2.lcssa, align 1, !dbg !883, !tbaa !481
  %cmp37 = icmp eq i8 %12, 91, !dbg !884
  %add.ptr = getelementptr inbounds i8* %string.2.lcssa, i64 1, !dbg !884
  %add.ptr. = select i1 %cmp37, i8* %add.ptr, i8* null, !dbg !884
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !322), !dbg !884
  %tobool39 = icmp eq i8* %add.ptr., null, !dbg !885
  br i1 %tobool39, label %if.end92, label %while.cond41.outer, !dbg !885

while.cond41.outer:                               ; preds = %if.then52, %if.then48, %while.end35
  %string.3.ph = phi i8* [ %string.2.lcssa, %while.end35 ], [ %incdec.ptr42, %if.then48 ], [ %incdec.ptr42, %if.then52 ]
  %nesting.0.ph = phi i32 [ 1, %while.end35 ], [ %inc, %if.then48 ], [ %dec, %if.then52 ]
  br label %while.cond41

while.cond41:                                     ; preds = %while.cond41.outer, %while.cond41
  %string.3 = phi i8* [ %incdec.ptr42, %while.cond41 ], [ %string.3.ph, %while.cond41.outer ]
  %incdec.ptr42 = getelementptr inbounds i8* %string.3, i64 1, !dbg !886
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr42}, i64 0, metadata !319), !dbg !886
  %13 = load i8* %incdec.ptr42, align 1, !dbg !886, !tbaa !481
  switch i8 %13, label %while.cond41 [
    i8 0, label %while.end59
    i8 91, label %if.then48
    i8 93, label %if.then52
  ], !dbg !886

if.then48:                                        ; preds = %while.cond41
  %inc = add nsw i32 %nesting.0.ph, 1, !dbg !888
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !312), !dbg !888
  br label %while.cond41.outer, !dbg !891

if.then52:                                        ; preds = %while.cond41
  %dec = add nsw i32 %nesting.0.ph, -1, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !312), !dbg !892
  %cmp53 = icmp eq i32 %dec, 0, !dbg !892
  br i1 %cmp53, label %while.end59, label %while.cond41.outer, !dbg !892

while.end59:                                      ; preds = %if.then52, %while.cond41
  %nesting.1 = phi i32 [ %nesting.0.ph, %while.cond41 ], [ 0, %if.then52 ]
  tail call void @llvm.dbg.value(metadata !{i8 %13}, i64 0, metadata !318), !dbg !894
  store i8 0, i8* %incdec.ptr42, align 1, !dbg !895, !tbaa !481
  %cmp61 = icmp eq i8* %add.ptr., %incdec.ptr, !dbg !896
  br i1 %cmp61, label %if.then63, label %if.else65, !dbg !896

if.then63:                                        ; preds = %while.end59
  %call64 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1661, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str48, i64 0, i64 0), i8* %incdec.ptr) #11, !dbg !897
  tail call void @llvm.dbg.value(metadata !523, i64 0, metadata !311), !dbg !899
  br label %while.end156, !dbg !900

if.else65:                                        ; preds = %while.end59
  %cmp67 = icmp eq i8 %13, 93, !dbg !901
  %cmp69 = icmp eq i32 %nesting.1, 0, !dbg !901
  %or.cond210 = and i1 %cmp67, %cmp69, !dbg !901
  br i1 %or.cond210, label %if.else73, label %if.then71, !dbg !901

if.then71:                                        ; preds = %if.else65
  %call72 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1669, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str49, i64 0, i64 0), i8* %add.ptr.) #11, !dbg !902
  tail call void @llvm.dbg.value(metadata !513, i64 0, metadata !311), !dbg !904
  br label %while.end156, !dbg !905

if.else73:                                        ; preds = %if.else65
  %arrayidx74 = getelementptr inbounds i8* %string.3, i64 2, !dbg !906
  %14 = load i8* %arrayidx74, align 1, !dbg !906, !tbaa !481
  %cmp76 = icmp eq i8 %14, 0, !dbg !906
  br i1 %cmp76, label %if.end92, label %lor.lhs.false78, !dbg !906

lor.lhs.false78:                                  ; preds = %if.else73
  %idxprom81 = sext i8 %14 to i64, !dbg !906
  %15 = load i16** %call9, align 8, !dbg !906, !tbaa !480
  %arrayidx83 = getelementptr inbounds i16* %15, i64 %idxprom81, !dbg !906
  %16 = load i16* %arrayidx83, align 2, !dbg !906, !tbaa !874
  %and85 = and i16 %16, 8192, !dbg !906
  %tobool86 = icmp eq i16 %and85, 0, !dbg !906
  br i1 %tobool86, label %if.then87, label %if.end92, !dbg !906

if.then87:                                        ; preds = %lor.lhs.false78
  %call88 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1677, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str50, i64 0, i64 0), i8* %add.ptr.) #11, !dbg !907
  tail call void @llvm.dbg.value(metadata !518, i64 0, metadata !311), !dbg !909
  br label %while.end156, !dbg !910

if.end92:                                         ; preds = %lor.lhs.false78, %while.end35, %if.else73
  %delimiter.0 = phi i8 [ 93, %if.else73 ], [ 93, %lor.lhs.false78 ], [ %12, %while.end35 ]
  %string.4 = phi i8* [ %incdec.ptr42, %if.else73 ], [ %incdec.ptr42, %lor.lhs.false78 ], [ %string.2.lcssa, %while.end35 ]
  %call93 = tail call i32 @CCTK_Equals(i8* %string.1228, i8* getelementptr inbounds ([4 x i8]* @.str51, i64 0, i64 0)) #11, !dbg !911
  tail call void @llvm.dbg.value(metadata !{i32 %call93}, i64 0, metadata !317), !dbg !911
  %tobool94 = icmp eq i32 %call93, 0, !dbg !871
  br i1 %tobool94, label %land.lhs.true95, label %if.then126, !dbg !871

land.lhs.true95:                                  ; preds = %if.end92
  br i1 %1, label %if.end104, label %land.lhs.true109, !dbg !871

if.end104:                                        ; preds = %land.lhs.true95
  %call102 = tail call i32 @CCTK_VarIndex(i8* %string.1228) #10, !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32 %call102}, i64 0, metadata !316), !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32 %call102}, i64 0, metadata !315), !dbg !912
  %cmp105 = icmp slt i32 %call102, 0, !dbg !914
  br i1 %cmp105, label %land.lhs.true109, label %for.body.lr.ph, !dbg !914

land.lhs.true109:                                 ; preds = %if.end104, %land.lhs.true95
  br i1 %3, label %if.end118, label %if.else149, !dbg !872

if.end118:                                        ; preds = %land.lhs.true109
  %call116 = tail call i32 @CCTK_GroupIndex(i8* %string.1228) #10, !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %call116}, i64 0, metadata !314), !dbg !915
  %cmp119 = icmp sgt i32 %call116, -1, !dbg !917
  %17 = load i32* @n_groups, align 4, !dbg !918, !tbaa !488
  %cmp1.i = icmp sgt i32 %17, %call116, !dbg !918
  %or.cond288 = and i1 %cmp119, %cmp1.i, !dbg !917
  tail call void @llvm.dbg.value(metadata !{i32 %call116}, i64 0, metadata !921), !dbg !922
  br i1 %or.cond288, label %if.end139, label %if.else149, !dbg !917

if.then126:                                       ; preds = %if.end92
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !315), !dbg !923
  br i1 %cmp127, label %if.then129, label %if.else132, !dbg !867

if.then129:                                       ; preds = %if.then126
  %18 = load i32* @n_groups, align 4, !dbg !924, !tbaa !488
  %sub131 = add nsw i32 %18, -1, !dbg !925
  tail call void @llvm.dbg.value(metadata !{i32 %sub131}, i64 0, metadata !316), !dbg !925
  br label %for.cond.preheader, !dbg !927

if.else132:                                       ; preds = %if.then126
  %19 = load i32* @total_variables, align 4, !dbg !928, !tbaa !488
  %sub134 = add nsw i32 %19, -1, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32 %sub134}, i64 0, metadata !316), !dbg !929
  br label %for.cond.preheader

if.end139:                                        ; preds = %if.end118
  %idxprom.i = sext i32 %call116 to i64, !dbg !918
  %20 = load %struct.cGroupDefinition** @groups, align 8, !dbg !918, !tbaa !480
  %variables.i = getelementptr inbounds %struct.cGroupDefinition* %20, i64 %idxprom.i, i32 14, !dbg !918
  %21 = load %struct.cVariableDefinition** %variables.i, align 8, !dbg !918, !tbaa !480
  %number.i = getelementptr inbounds %struct.cVariableDefinition* %21, i64 0, i32 1, !dbg !918
  %22 = load i32* %number.i, align 4, !dbg !918, !tbaa !488
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !315), !dbg !919
  tail call void @llvm.dbg.value(metadata !{i32 %call116}, i64 0, metadata !931), !dbg !933
  %idxprom.i214 = sext i32 %call116 to i64, !dbg !934
  %n_variables.i = getelementptr inbounds %struct.cGroupDefinition* %20, i64 %idxprom.i214, i32 11, !dbg !934
  %23 = load i32* %n_variables.i, align 4, !dbg !934, !tbaa !488
  %add = add i32 %22, -1, !dbg !932
  %sub = add i32 %add, %23, !dbg !932
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !316), !dbg !932
  %cmp140 = icmp sgt i32 %22, -1, !dbg !935
  br i1 %cmp140, label %for.cond.preheader, label %if.else149, !dbg !935

for.cond.preheader:                               ; preds = %if.end139, %if.then129, %if.else132
  %last.1223.ph = phi i32 [ %sub134, %if.else132 ], [ %sub131, %if.then129 ], [ %sub, %if.end139 ]
  %first.1222.ph = phi i32 [ 0, %if.else132 ], [ 0, %if.then129 ], [ %22, %if.end139 ]
  %cmp143237 = icmp sgt i32 %first.1222.ph, %last.1223.ph, !dbg !936
  br i1 %cmp143237, label %for.end, label %for.body.lr.ph, !dbg !936

for.body.lr.ph:                                   ; preds = %if.end104, %for.cond.preheader
  %vindex.0.ph287 = phi i32 [ %first.1222.ph, %for.cond.preheader ], [ %call102, %if.end104 ]
  %last.1223.ph283 = phi i32 [ %last.1223.ph, %for.cond.preheader ], [ %call102, %if.end104 ]
  br label %for.body, !dbg !936

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %vindex.0238 = phi i32 [ %vindex.0.ph287, %for.body.lr.ph ], [ %inc145, %for.body ]
  tail call void %callback(i32 %vindex.0238, i8* %add.ptr., i8* %callback_arg) #11, !dbg !939
  %inc145 = add nsw i32 %vindex.0238, 1, !dbg !936
  tail call void @llvm.dbg.value(metadata !{i32 %inc145}, i64 0, metadata !313), !dbg !936
  %cmp143 = icmp slt i32 %vindex.0238, %last.1223.ph283, !dbg !936
  br i1 %cmp143, label %for.body, label %for.end, !dbg !936

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %first.1222.ph286 = phi i32 [ %first.1222.ph, %for.cond.preheader ], [ %vindex.0.ph287, %for.body ]
  %last.1223.ph284 = phi i32 [ %last.1223.ph, %for.cond.preheader ], [ %last.1223.ph283, %for.body ]
  %sub146 = add i32 %retval1.0252, 1, !dbg !941
  %add147 = add i32 %sub146, %last.1223.ph284, !dbg !941
  %add148 = sub i32 %add147, %first.1222.ph286, !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32 %add148}, i64 0, metadata !311), !dbg !941
  br label %if.end151, !dbg !942

if.else149:                                       ; preds = %if.end118, %land.lhs.true109, %if.end139
  %call150 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1751, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str52, i64 0, i64 0), i8* %string.1228) #11, !dbg !943
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %for.end
  %retval1.1 = phi i32 [ %add148, %for.end ], [ %retval1.0252, %if.else149 ]
  %tobool152 = icmp eq i8 %delimiter.0, 0, !dbg !945
  %incdec.ptr154 = getelementptr inbounds i8* %string.4, i64 1, !dbg !946
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr154}, i64 0, metadata !319), !dbg !946
  %string.4.incdec.ptr154 = select i1 %tobool152, i8* %string.4, i8* %incdec.ptr154, !dbg !945
  %tobool = icmp eq i8* %string.4.incdec.ptr154, null, !dbg !866
  br i1 %tobool, label %while.end156, label %land.rhs, !dbg !866

while.end156:                                     ; preds = %if.end, %while.end, %land.rhs, %if.end151, %while.cond4, %if.then87, %if.then71, %if.then63
  %retval1.2 = phi i32 [ -2, %if.then63 ], [ -4, %if.then87 ], [ -3, %if.then71 ], [ %retval1.0252, %while.cond4 ], [ 0, %if.end ], [ %retval1.0252, %while.end ], [ %retval1.0252, %land.rhs ], [ %retval1.1, %if.end151 ]
  tail call void @free(i8* %call2) #11, !dbg !948
  br label %return, !dbg !949

return:                                           ; preds = %while.end156, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %retval1.2, %while.end156 ]
  ret i32 %retval.0, !dbg !950
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_CreateGroup(i8* %gname, i8* %thorn, i8* %imp, i8* nocapture %gtype, i8* nocapture %vtype, i8* nocapture %gscope, i32 %dimension, i32 %ntimelevels, i8* %stype, i8* nocapture %dtype, i8* %size, i8* %ghostsize, i32 %n_variables, ...) #2 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %name91 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !327), !dbg !951
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !328), !dbg !952
  call void @llvm.dbg.value(metadata !{i8* %imp}, i64 0, metadata !329), !dbg !953
  call void @llvm.dbg.value(metadata !{i8* %gtype}, i64 0, metadata !330), !dbg !954
  call void @llvm.dbg.value(metadata !{i8* %vtype}, i64 0, metadata !331), !dbg !955
  call void @llvm.dbg.value(metadata !{i8* %gscope}, i64 0, metadata !332), !dbg !956
  call void @llvm.dbg.value(metadata !{i32 %dimension}, i64 0, metadata !333), !dbg !957
  call void @llvm.dbg.value(metadata !{i32 %ntimelevels}, i64 0, metadata !334), !dbg !958
  call void @llvm.dbg.value(metadata !{i8* %stype}, i64 0, metadata !335), !dbg !959
  call void @llvm.dbg.value(metadata !{i8* %dtype}, i64 0, metadata !336), !dbg !960
  call void @llvm.dbg.value(metadata !{i8* %size}, i64 0, metadata !337), !dbg !961
  call void @llvm.dbg.value(metadata !{i8* %ghostsize}, i64 0, metadata !338), !dbg !962
  call void @llvm.dbg.value(metadata !{i32 %n_variables}, i64 0, metadata !339), !dbg !963
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !344), !dbg !964
  call void @llvm.dbg.value(metadata !965, i64 0, metadata !360), !dbg !966
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !358), !dbg !967
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !359), !dbg !968
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !340), !dbg !969
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !970
  call void @llvm.va_start(i8* %arraydecay2), !dbg !970
  %call = call i32 @CCTKi_ParseStaggerString(i32 %dimension, i8* %imp, i8* %gname, i8* %stype) #11, !dbg !971
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !342), !dbg !971
  %cmp = icmp eq i32 %n_variables, -1, !dbg !972
  br i1 %cmp, label %if.then, label %if.end21, !dbg !972

if.then:                                          ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !973
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !973
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !973
  br i1 %fits_in_gp, label %vaarg.end, label %vaarg.end.thread, !dbg !973

vaarg.end.thread:                                 ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !973
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !973
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !973
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !973
  %vaarg.addr204 = bitcast i8* %overflow_arg_area to i8**, !dbg !973
  %0 = load i8** %vaarg.addr204, align 8, !dbg !973
  call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !358), !dbg !973
  br label %vaarg.in_mem10, !dbg !975

vaarg.end:                                        ; preds = %if.then
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !973
  %reg_save_area = load i8** %1, align 16, !dbg !973
  %2 = sext i32 %gp_offset to i64, !dbg !973
  %3 = getelementptr i8* %reg_save_area, i64 %2, !dbg !973
  %4 = add i32 %gp_offset, 8, !dbg !973
  store i32 %4, i32* %gp_offset_p, align 16, !dbg !973
  %vaarg.addr = bitcast i8* %3 to i8**, !dbg !973
  %5 = load i8** %vaarg.addr, align 8, !dbg !973
  call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !358), !dbg !973
  %fits_in_gp7 = icmp ult i32 %4, 41, !dbg !975
  br i1 %fits_in_gp7, label %vaarg.in_reg8, label %vaarg.in_mem10, !dbg !975

vaarg.in_reg8:                                    ; preds = %vaarg.end
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !975
  %reg_save_area9 = load i8** %6, align 16, !dbg !975
  %7 = sext i32 %4 to i64, !dbg !975
  %8 = getelementptr i8* %reg_save_area9, i64 %7, !dbg !975
  %9 = add i32 %gp_offset, 16, !dbg !975
  store i32 %9, i32* %gp_offset_p, align 16, !dbg !975
  br label %vaarg.end14, !dbg !975

vaarg.in_mem10:                                   ; preds = %vaarg.end.thread, %vaarg.end
  %10 = phi i8* [ %0, %vaarg.end.thread ], [ %5, %vaarg.end ]
  %overflow_arg_area_p11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !975
  %overflow_arg_area12 = load i8** %overflow_arg_area_p11, align 8, !dbg !975
  %overflow_arg_area.next13 = getelementptr i8* %overflow_arg_area12, i64 8, !dbg !975
  store i8* %overflow_arg_area.next13, i8** %overflow_arg_area_p11, align 8, !dbg !975
  br label %vaarg.end14, !dbg !975

vaarg.end14:                                      ; preds = %vaarg.in_mem10, %vaarg.in_reg8
  %11 = phi i8* [ %5, %vaarg.in_reg8 ], [ %10, %vaarg.in_mem10 ]
  %vaarg.addr15.in = phi i8* [ %8, %vaarg.in_reg8 ], [ %overflow_arg_area12, %vaarg.in_mem10 ]
  %vaarg.addr15 = bitcast i8* %vaarg.addr15.in to i8**, !dbg !975
  %12 = load i8** %vaarg.addr15, align 8, !dbg !975
  %call16 = call i8* @Util_Strdup(i8* %12) #11, !dbg !975
  call void @llvm.dbg.value(metadata !{i8* %call16}, i64 0, metadata !359), !dbg !975
  %call17 = call fastcc i32 @CCTKi_ParamExpressionToInt(i8* %call16, i8* %thorn) #10, !dbg !976
  call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !339), !dbg !976
  %cmp18 = icmp slt i32 %call17, 1, !dbg !977
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !977

if.then19:                                        ; preds = %vaarg.end14
  %call20 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 1864, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str53, i64 0, i64 0), i8* %gname) #11, !dbg !978
  br label %if.end21, !dbg !980

if.end21:                                         ; preds = %vaarg.end14, %if.then19, %entry
  %n_variables.addr.0 = phi i32 [ %call17, %if.then19 ], [ %call17, %vaarg.end14 ], [ %n_variables, %entry ]
  %variable_name.0 = phi i8* [ %11, %if.then19 ], [ %11, %vaarg.end14 ], [ null, %entry ]
  %vararraysize.0 = phi i8* [ %call16, %if.then19 ], [ %call16, %vaarg.end14 ], [ null, %entry ]
  %call22 = call i32 @CCTK_GroupScopeNumber(i8* %gscope) #10, !dbg !981
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !341), !dbg !981
  %13 = and i32 %call22, -2, !dbg !982
  %14 = icmp eq i32 %13, 2, !dbg !982
  br i1 %14, label %if.then25, label %if.else, !dbg !982

if.then25:                                        ; preds = %if.end21
  %call26 = call fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %imp, i8* %gname, i32 %call, i32 %n_variables.addr.0) #10, !dbg !983
  call void @llvm.dbg.value(metadata !{%struct.cGroupDefinition* %call26}, i64 0, metadata !360), !dbg !983
  br label %if.end33, !dbg !985

if.else:                                          ; preds = %if.end21
  %cmp27 = icmp eq i32 %call22, 1, !dbg !986
  br i1 %cmp27, label %if.then28, label %if.end33.thread, !dbg !986

if.then28:                                        ; preds = %if.else
  %call29 = call fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %thorn, i8* %gname, i32 %call, i32 %n_variables.addr.0) #10, !dbg !987
  call void @llvm.dbg.value(metadata !{%struct.cGroupDefinition* %call29}, i64 0, metadata !360), !dbg !987
  br label %if.end33, !dbg !989

if.end33.thread:                                  ; preds = %if.else
  %call31 = call i32 @CCTK_Warn(i32 1, i32 1882, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str54, i64 0, i64 0)) #11, !dbg !990
  br label %if.then133, !dbg !992

if.end33:                                         ; preds = %if.then28, %if.then25
  %group.0 = phi %struct.cGroupDefinition* [ %call26, %if.then25 ], [ %call29, %if.then28 ]
  %tobool = icmp eq %struct.cGroupDefinition* %group.0, null, !dbg !992
  br i1 %tobool, label %if.then133, label %if.then34, !dbg !992

if.then34:                                        ; preds = %if.end33
  %dim = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 9, !dbg !993
  store i32 %dimension, i32* %dim, align 4, !dbg !993, !tbaa !488
  %call35 = call i32 @CCTK_GroupTypeNumber(i8* %gtype) #10, !dbg !994
  %gtype36 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 4, !dbg !994
  store i32 %call35, i32* %gtype36, align 4, !dbg !994, !tbaa !488
  %call37 = call i32 @CCTK_VarTypeNumber(i8* %vtype) #10, !dbg !995
  %vtype38 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 5, !dbg !995
  store i32 %call37, i32* %vtype38, align 4, !dbg !995, !tbaa !488
  %gscope39 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 8, !dbg !996
  store i32 %call22, i32* %gscope39, align 4, !dbg !996, !tbaa !488
  %staggertype = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 7, !dbg !997
  store i32 %call, i32* %staggertype, align 4, !dbg !997, !tbaa !488
  %call40 = call i32 @CCTK_GroupDistribNumber(i8* %dtype) #10, !dbg !998
  %dtype41 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 6, !dbg !998
  store i32 %call40, i32* %dtype41, align 4, !dbg !998, !tbaa !488
  %n_timelevels = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 10, !dbg !999
  store i32 %ntimelevels, i32* %n_timelevels, align 4, !dbg !999, !tbaa !488
  %tobool42 = icmp eq i8* %vararraysize.0, null, !dbg !1000
  br i1 %tobool42, label %if.then43, label %if.else73, !dbg !1000

if.then43:                                        ; preds = %if.then34
  %vararraysize44 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 15, !dbg !1001
  store i8* null, i8** %vararraysize44, align 8, !dbg !1001, !tbaa !480
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !343), !dbg !1003
  %cmp45195 = icmp sgt i32 %n_variables.addr.0, 0, !dbg !1003
  br i1 %cmp45195, label %for.body.lr.ph, label %if.end100, !dbg !1003

for.body.lr.ph:                                   ; preds = %if.then43
  %gp_offset_p47 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1005
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1005
  %variables = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 14, !dbg !1007
  %overflow_arg_area_p53 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1005
  br label %for.body, !dbg !1003

for.body:                                         ; preds = %for.body.lr.ph, %if.then65
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.then65 ]
  %variable.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.then65 ]
  %gp_offset48 = load i32* %gp_offset_p47, align 16, !dbg !1005
  %fits_in_gp49 = icmp ult i32 %gp_offset48, 41, !dbg !1005
  br i1 %fits_in_gp49, label %vaarg.in_reg50, label %vaarg.in_mem52, !dbg !1005

vaarg.in_reg50:                                   ; preds = %for.body
  %reg_save_area51 = load i8** %15, align 16, !dbg !1005
  %16 = sext i32 %gp_offset48 to i64, !dbg !1005
  %17 = getelementptr i8* %reg_save_area51, i64 %16, !dbg !1005
  %18 = add i32 %gp_offset48, 8, !dbg !1005
  store i32 %18, i32* %gp_offset_p47, align 16, !dbg !1005
  br label %vaarg.end56, !dbg !1005

vaarg.in_mem52:                                   ; preds = %for.body
  %overflow_arg_area54 = load i8** %overflow_arg_area_p53, align 8, !dbg !1005
  %overflow_arg_area.next55 = getelementptr i8* %overflow_arg_area54, i64 8, !dbg !1005
  store i8* %overflow_arg_area.next55, i8** %overflow_arg_area_p53, align 8, !dbg !1005
  br label %vaarg.end56, !dbg !1005

vaarg.end56:                                      ; preds = %vaarg.in_mem52, %vaarg.in_reg50
  %vaarg.addr57.in = phi i8* [ %17, %vaarg.in_reg50 ], [ %overflow_arg_area54, %vaarg.in_mem52 ]
  %vaarg.addr57 = bitcast i8* %vaarg.addr57.in to i8**, !dbg !1005
  %19 = load i8** %vaarg.addr57, align 8, !dbg !1005
  call void @llvm.dbg.value(metadata !{i8* %19}, i64 0, metadata !358), !dbg !1005
  %call58 = call i64 @strlen(i8* %19) #12, !dbg !1007
  %add = add i64 %call58, 1, !dbg !1007
  %call59 = call noalias i8* @malloc(i64 %add) #11, !dbg !1007
  %20 = load %struct.cVariableDefinition** %variables, align 8, !dbg !1007, !tbaa !480
  %name = getelementptr inbounds %struct.cVariableDefinition* %20, i64 %indvars.iv, i32 0, !dbg !1007
  store i8* %call59, i8** %name, align 8, !dbg !1007, !tbaa !480
  %21 = load %struct.cVariableDefinition** %variables, align 8, !dbg !1008, !tbaa !480
  %name63 = getelementptr inbounds %struct.cVariableDefinition* %21, i64 %indvars.iv, i32 0, !dbg !1008
  %22 = load i8** %name63, align 8, !dbg !1008, !tbaa !480
  %tobool64 = icmp eq i8* %22, null, !dbg !1008
  br i1 %tobool64, label %if.end100, label %if.then65, !dbg !1008

if.then65:                                        ; preds = %vaarg.end56
  %call70 = call i8* @strcpy(i8* %22, i8* %19) #11, !dbg !1009
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1003
  %inc = add nsw i32 %variable.0196, 1, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !343), !dbg !1003
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !1003
  %cmp45 = icmp slt i32 %23, %n_variables.addr.0, !dbg !1003
  br i1 %cmp45, label %for.body, label %if.end100, !dbg !1003

if.else73:                                        ; preds = %if.then34
  %gp_offset_p75 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1011
  %gp_offset76 = load i32* %gp_offset_p75, align 16, !dbg !1011
  %fits_in_gp77 = icmp ult i32 %gp_offset76, 41, !dbg !1011
  br i1 %fits_in_gp77, label %vaarg.in_reg78, label %vaarg.in_mem80, !dbg !1011

vaarg.in_reg78:                                   ; preds = %if.else73
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1011
  %reg_save_area79 = load i8** %24, align 16, !dbg !1011
  %25 = sext i32 %gp_offset76 to i64, !dbg !1011
  %26 = getelementptr i8* %reg_save_area79, i64 %25, !dbg !1011
  %27 = add i32 %gp_offset76, 8, !dbg !1011
  store i32 %27, i32* %gp_offset_p75, align 16, !dbg !1011
  br label %vaarg.end84, !dbg !1011

vaarg.in_mem80:                                   ; preds = %if.else73
  %overflow_arg_area_p81 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1011
  %overflow_arg_area82 = load i8** %overflow_arg_area_p81, align 8, !dbg !1011
  %overflow_arg_area.next83 = getelementptr i8* %overflow_arg_area82, i64 8, !dbg !1011
  store i8* %overflow_arg_area.next83, i8** %overflow_arg_area_p81, align 8, !dbg !1011
  br label %vaarg.end84, !dbg !1011

vaarg.end84:                                      ; preds = %vaarg.in_mem80, %vaarg.in_reg78
  %vaarg.addr85.in = phi i8* [ %26, %vaarg.in_reg78 ], [ %overflow_arg_area82, %vaarg.in_mem80 ]
  %vaarg.addr85 = bitcast i8* %vaarg.addr85.in to i8**, !dbg !1011
  %28 = load i8** %vaarg.addr85, align 8, !dbg !1011
  %call86 = call i8* @Util_Strdup(i8* %28) #11, !dbg !1011
  %vararraysize87 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 15, !dbg !1011
  store i8* %call86, i8** %vararraysize87, align 8, !dbg !1011, !tbaa !480
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !343), !dbg !1012
  %cmp89198 = icmp sgt i32 %n_variables.addr.0, 0, !dbg !1012
  br i1 %cmp89198, label %for.body90.lr.ph, label %if.end100, !dbg !1012

for.body90.lr.ph:                                 ; preds = %vaarg.end84
  %variables94 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 14, !dbg !1013
  br label %for.body90, !dbg !1012

for.body90:                                       ; preds = %for.body90, %for.body90.lr.ph
  %indvars.iv202 = phi i64 [ 0, %for.body90.lr.ph ], [ %indvars.iv.next203, %for.body90 ]
  call void @llvm.dbg.declare(metadata !{i8** %name91}, metadata !388), !dbg !1014
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !388), !dbg !1014
  store i8* null, i8** %name91, align 8, !dbg !1014, !tbaa !480
  %29 = trunc i64 %indvars.iv202 to i32, !dbg !1015
  %call92 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %name91, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i8* %variable_name.0, i32 %29) #11, !dbg !1015
  call void @llvm.dbg.value(metadata !{i8** %name91}, i64 0, metadata !388), !dbg !1013
  %30 = load i8** %name91, align 8, !dbg !1013, !tbaa !480
  %31 = load %struct.cVariableDefinition** %variables94, align 8, !dbg !1013, !tbaa !480
  %name96 = getelementptr inbounds %struct.cVariableDefinition* %31, i64 %indvars.iv202, i32 0, !dbg !1013
  store i8* %30, i8** %name96, align 8, !dbg !1013, !tbaa !480
  %indvars.iv.next203 = add i64 %indvars.iv202, 1, !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %n_variables.addr.0}, i64 0, metadata !343), !dbg !1012
  %lftr.wideiv = trunc i64 %indvars.iv.next203 to i32, !dbg !1012
  %exitcond = icmp eq i32 %lftr.wideiv, %n_variables.addr.0, !dbg !1012
  br i1 %exitcond, label %if.end100.thread, label %for.body90, !dbg !1012

if.end100.thread:                                 ; preds = %for.body90
  call void @llvm.va_end(i8* %arraydecay2), !dbg !1016
  br label %if.else105, !dbg !1017

if.end100:                                        ; preds = %vaarg.end84, %if.then43, %vaarg.end56, %if.then65
  %variable.2 = phi i32 [ 0, %if.then43 ], [ %variable.0196, %vaarg.end56 ], [ %inc, %if.then65 ], [ 0, %vaarg.end84 ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !1016
  %cmp103 = icmp slt i32 %variable.2, %n_variables.addr.0, !dbg !1017
  br i1 %cmp103, label %if.end116, label %if.else105, !dbg !1017

if.else105:                                       ; preds = %if.end100.thread, %if.end100
  %32 = load i32* @maxdim, align 4, !dbg !1018, !tbaa !488
  %cmp106 = icmp slt i32 %32, %dimension, !dbg !1018
  br i1 %cmp106, label %if.then107, label %if.end108, !dbg !1018

if.then107:                                       ; preds = %if.else105
  store i32 %dimension, i32* @maxdim, align 4, !dbg !1020, !tbaa !488
  br label %if.end108, !dbg !1022

if.end108:                                        ; preds = %if.then107, %if.else105
  %cmp109 = icmp sgt i32 %call, 0, !dbg !1023
  br i1 %cmp109, label %if.then110, label %if.end111, !dbg !1023

if.then110:                                       ; preds = %if.end108
  store i1 true, i1* @staggered, align 1
  br label %if.end111, !dbg !1024

if.end111:                                        ; preds = %if.then110, %if.end108
  %call112 = call fastcc i32** @CCTKi_ExtractSize(i32 %dimension, i8* %thorn, i8* %size) #10, !dbg !1026
  %size113 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 12, !dbg !1026
  store i32** %call112, i32*** %size113, align 8, !dbg !1026, !tbaa !480
  %call114 = call fastcc i32** @CCTKi_ExtractSize(i32 %dimension, i8* %thorn, i8* %ghostsize) #10, !dbg !1027
  %ghostsize115 = getelementptr inbounds %struct.cGroupDefinition* %group.0, i64 0, i32 13, !dbg !1027
  store i32** %call114, i32*** %ghostsize115, align 8, !dbg !1027, !tbaa !480
  br label %if.end116

if.end116:                                        ; preds = %if.end100, %if.end111
  %retval1.0 = phi i32 [ 0, %if.end111 ], [ 3, %if.end100 ]
  %33 = load i32* %gtype36, align 4, !dbg !1028, !tbaa !488
  %cmp118 = icmp eq i32 %33, 2, !dbg !1028
  br i1 %cmp118, label %if.then119, label %if.end131, !dbg !1028

if.then119:                                       ; preds = %if.end116
  %34 = load i32* @gfdim, align 4, !dbg !1029, !tbaa !488
  %cmp120 = icmp sgt i32 %34, 0, !dbg !1029
  %35 = load i32* %dim, align 4, !dbg !1031, !tbaa !488
  br i1 %cmp120, label %if.then121, label %if.else126, !dbg !1029

if.then121:                                       ; preds = %if.then119
  %cmp123 = icmp eq i32 %35, %34, !dbg !1031
  call void @llvm.dbg.value(metadata !1033, i64 0, metadata !340), !dbg !1034
  %retval1.0. = select i1 %cmp123, i32 %retval1.0, i32 1, !dbg !1031
  br label %if.end131, !dbg !1031

if.else126:                                       ; preds = %if.then119
  store i32 %35, i32* @gfdim, align 4, !dbg !1036, !tbaa !488
  br label %if.end131

if.end131:                                        ; preds = %if.then121, %if.end116, %if.else126
  %retval1.1 = phi i32 [ %retval1.0, %if.else126 ], [ %retval1.0, %if.end116 ], [ %retval1.0., %if.then121 ]
  %tobool132 = icmp eq i32 %retval1.1, 0, !dbg !1038
  br i1 %tobool132, label %if.end135, label %if.then133, !dbg !1038

if.then133:                                       ; preds = %if.end33.thread, %if.end33, %if.end131
  %retval1.1193 = phi i32 [ %retval1.1, %if.end131 ], [ 2, %if.end33 ], [ 2, %if.end33.thread ]
  %call134 = call i32 @CCTK_Warn(i32 4, i32 1976, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #11, !dbg !1039
  br label %if.end135, !dbg !1041

if.end135:                                        ; preds = %if.end131, %if.then133
  %retval1.1194 = phi i32 [ 0, %if.end131 ], [ %retval1.1193, %if.then133 ]
  ret i32 %retval1.1194, !dbg !1042
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare i32 @CCTKi_ParseStaggerString(i32, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CCTKi_ParamExpressionToInt(i8* %expression, i8* %thorn) #2 {
entry:
  %value = alloca %struct.uExpressionValue, align 8
  call void @llvm.dbg.value(metadata !{i8* %expression}, i64 0, metadata !410), !dbg !1043
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !411), !dbg !1043
  call void @llvm.dbg.declare(metadata !{%struct.uExpressionValue* %value}, metadata !415), !dbg !1044
  %call = call i8* @Util_Strdup(i8* %thorn) #11, !dbg !1045
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !417), !dbg !1045
  %call2 = call i8* @Util_ExpressionParse(i8* %expression) #11, !dbg !1046
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !413), !dbg !1046
  %tobool = icmp eq i8* %call2, null, !dbg !1047
  br i1 %tobool, label %if.end.thread, label %if.end, !dbg !1047

if.end.thread:                                    ; preds = %entry
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2443, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str57, i64 0, i64 0), i8* %expression) #11, !dbg !1048
  call void @llvm.dbg.value(metadata !833, i64 0, metadata !412), !dbg !1050
  call void @free(i8* %call) #11, !dbg !1051
  br label %if.else7, !dbg !1052

if.end:                                           ; preds = %entry
  %call3 = call i32 @Util_ExpressionEvaluate(i8* %call2, %struct.uExpressionValue* %value, i32 (i32, i8**, %struct.uExpressionValue*, i8*)* @IntParameterEvaluator, i8* %call) #11, !dbg !1053
  call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !412), !dbg !1053
  call void @Util_ExpressionFree(i8* %call2) #11, !dbg !1055
  call void @free(i8* %call) #11, !dbg !1051
  %cmp = icmp eq i32 %call3, 0, !dbg !1052
  br i1 %cmp, label %if.then5, label %if.else7, !dbg !1052

if.then5:                                         ; preds = %if.end
  %value6 = getelementptr inbounds %struct.uExpressionValue* %value, i64 0, i32 1, !dbg !1056
  %ival = bitcast %union.anon* %value6 to i32*, !dbg !1056
  %0 = load i32* %ival, align 8, !dbg !1056, !tbaa !488
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !412), !dbg !1056
  br label %if.end9, !dbg !1058

if.else7:                                         ; preds = %if.end.thread, %if.end
  %retval1.017 = phi i32 [ -1, %if.end.thread ], [ %call3, %if.end ]
  %call8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2457, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str58, i64 0, i64 0), i8* %expression) #11, !dbg !1059
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  %retval1.1 = phi i32 [ %0, %if.then5 ], [ %retval1.017, %if.else7 ]
  ret i32 %retval1.1, !dbg !1061
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.cGroupDefinition* @CCTKi_SetupGroup(i8* %implementation, i8* %name, i32 %staggercode, i32 %n_variables) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %implementation}, i64 0, metadata !454), !dbg !1062
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !455), !dbg !1063
  tail call void @llvm.dbg.value(metadata !{i32 %staggercode}, i64 0, metadata !456), !dbg !1064
  tail call void @llvm.dbg.value(metadata !{i32 %n_variables}, i64 0, metadata !457), !dbg !1065
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !462), !dbg !1066
  %0 = load i32* @n_groups, align 4, !dbg !1066, !tbaa !488
  %cmp137 = icmp sgt i32 %0, 0, !dbg !1066
  br i1 %cmp137, label %for.body, label %for.end, !dbg !1066

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.inc ], [ 0, %entry ]
  %group.0138 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1068, !tbaa !480
  %implementation1 = getelementptr inbounds %struct.cGroupDefinition* %1, i64 %indvars.iv140, i32 1, !dbg !1068
  %2 = load i8** %implementation1, align 8, !dbg !1068, !tbaa !480
  %call = tail call i32 @CCTK_Equals(i8* %implementation, i8* %2) #11, !dbg !1068
  %tobool = icmp eq i32 %call, 0, !dbg !1068
  br i1 %tobool, label %for.inc, label %land.lhs.true, !dbg !1068

land.lhs.true:                                    ; preds = %for.body
  %3 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1070, !tbaa !480
  %name4 = getelementptr inbounds %struct.cGroupDefinition* %3, i64 %indvars.iv140, i32 2, !dbg !1070
  %4 = load i8** %name4, align 8, !dbg !1070, !tbaa !480
  %call5 = tail call i32 @CCTK_Equals(i8* %name, i8* %4) #11, !dbg !1070
  %tobool6 = icmp eq i32 %call5, 0, !dbg !1070
  br i1 %tobool6, label %for.inc, label %for.endsplit, !dbg !1070

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next141 = add i64 %indvars.iv140, 1, !dbg !1066
  %inc = add nsw i32 %group.0138, 1, !dbg !1066
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !462), !dbg !1066
  %5 = load i32* @n_groups, align 4, !dbg !1066, !tbaa !488
  %6 = trunc i64 %indvars.iv.next141 to i32, !dbg !1066
  %cmp = icmp slt i32 %6, %5, !dbg !1066
  br i1 %cmp, label %for.body, label %for.end, !dbg !1066

for.endsplit:                                     ; preds = %land.lhs.true
  %.pre = load i32* @n_groups, align 4, !dbg !1071, !tbaa !488
  br label %for.end

for.end:                                          ; preds = %for.inc, %for.endsplit, %entry
  %7 = phi i32 [ %0, %entry ], [ %.pre, %for.endsplit ], [ %5, %for.inc ]
  %group.0.lcssa = phi i32 [ 0, %entry ], [ %group.0138, %for.endsplit ], [ %inc, %for.inc ]
  %cmp7 = icmp slt i32 %group.0.lcssa, %7, !dbg !1071
  br i1 %cmp7, label %if.else114, label %if.then8, !dbg !1071

if.then8:                                         ; preds = %for.end
  %8 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1072, !tbaa !480
  %9 = bitcast %struct.cGroupDefinition* %8 to i8*, !dbg !1072
  %add = add nsw i32 %7, 1, !dbg !1072
  %conv = sext i32 %add to i64, !dbg !1072
  %mul = mul i64 %conv, 96, !dbg !1072
  %call9 = tail call i8* @realloc(i8* %9, i64 %mul) #11, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i8* %call9}, i64 0, metadata !459), !dbg !1072
  %tobool10 = icmp eq i8* %call9, null, !dbg !1074
  br i1 %tobool10, label %if.end117, label %if.then11, !dbg !1074

if.then11:                                        ; preds = %if.then8
  %10 = bitcast i8* %call9 to %struct.cGroupDefinition*, !dbg !1075
  store %struct.cGroupDefinition* %10, %struct.cGroupDefinition** @groups, align 8, !dbg !1075, !tbaa !480
  %call12 = tail call i64 @strlen(i8* %implementation) #12, !dbg !1077
  %add13 = add i64 %call12, 1, !dbg !1077
  %call14 = tail call noalias i8* @malloc(i64 %add13) #11, !dbg !1077
  %11 = load i32* @n_groups, align 4, !dbg !1077, !tbaa !488
  %idxprom15 = sext i32 %11 to i64, !dbg !1077
  %implementation17 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %idxprom15, i32 1, !dbg !1077
  store i8* %call14, i8** %implementation17, align 8, !dbg !1077, !tbaa !480
  %call18 = tail call i64 @strlen(i8* %name) #12, !dbg !1078
  %add19 = add i64 %call18, 1, !dbg !1078
  %call20 = tail call noalias i8* @malloc(i64 %add19) #11, !dbg !1078
  %name23 = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %idxprom15, i32 2, !dbg !1078
  store i8* %call20, i8** %name23, align 8, !dbg !1078, !tbaa !480
  %conv24 = sext i32 %n_variables to i64, !dbg !1079
  %mul25 = mul i64 %conv24, 24, !dbg !1079
  %call26 = tail call noalias i8* @malloc(i64 %mul25) #11, !dbg !1079
  %12 = bitcast i8* %call26 to %struct.cVariableDefinition*, !dbg !1079
  %variables = getelementptr inbounds %struct.cGroupDefinition* %10, i64 %idxprom15, i32 14, !dbg !1079
  store %struct.cVariableDefinition* %12, %struct.cVariableDefinition** %variables, align 8, !dbg !1079, !tbaa !480
  %13 = load i32** @group_of_variable, align 8, !dbg !1080, !tbaa !480
  %14 = bitcast i32* %13 to i8*, !dbg !1080
  %15 = load i32* @total_variables, align 4, !dbg !1080, !tbaa !488
  %add29 = add nsw i32 %15, %n_variables, !dbg !1080
  %conv30 = sext i32 %add29 to i64, !dbg !1080
  %mul31 = shl nsw i64 %conv30, 2, !dbg !1080
  %call32 = tail call i8* @realloc(i8* %14, i64 %mul31) #11, !dbg !1080
  %16 = bitcast i8* %call32 to i32*, !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !458), !dbg !1080
  %17 = load i32* @n_groups, align 4, !dbg !1081, !tbaa !488
  %idxprom33 = sext i32 %17 to i64, !dbg !1081
  %18 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1081, !tbaa !480
  %implementation35 = getelementptr inbounds %struct.cGroupDefinition* %18, i64 %idxprom33, i32 1, !dbg !1081
  %19 = load i8** %implementation35, align 8, !dbg !1081, !tbaa !480
  %tobool36 = icmp eq i8* %19, null, !dbg !1081
  br i1 %tobool36, label %if.else, label %land.lhs.true37, !dbg !1081

land.lhs.true37:                                  ; preds = %if.then11
  %name40 = getelementptr inbounds %struct.cGroupDefinition* %18, i64 %idxprom33, i32 2, !dbg !1081
  %20 = load i8** %name40, align 8, !dbg !1081, !tbaa !480
  %tobool41 = icmp eq i8* %20, null, !dbg !1081
  br i1 %tobool41, label %if.else, label %land.lhs.true42, !dbg !1081

land.lhs.true42:                                  ; preds = %land.lhs.true37
  %variables45 = getelementptr inbounds %struct.cGroupDefinition* %18, i64 %idxprom33, i32 14, !dbg !1081
  %21 = load %struct.cVariableDefinition** %variables45, align 8, !dbg !1081, !tbaa !480
  %tobool46 = icmp eq %struct.cVariableDefinition* %21, null, !dbg !1081
  %tobool48 = icmp eq i8* %call32, null, !dbg !1081
  %or.cond = or i1 %tobool46, %tobool48, !dbg !1081
  br i1 %or.cond, label %if.else, label %if.then49, !dbg !1081

if.then49:                                        ; preds = %land.lhs.true42
  store i32* %16, i32** @group_of_variable, align 8, !dbg !1082, !tbaa !480
  %22 = load i8** %implementation35, align 8, !dbg !1084, !tbaa !480
  %call53 = tail call i8* @strcpy(i8* %22, i8* %implementation) #11, !dbg !1084
  %23 = load i32* @n_groups, align 4, !dbg !1085, !tbaa !488
  %idxprom54 = sext i32 %23 to i64, !dbg !1085
  %24 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1085, !tbaa !480
  %name56 = getelementptr inbounds %struct.cGroupDefinition* %24, i64 %idxprom54, i32 2, !dbg !1085
  %25 = load i8** %name56, align 8, !dbg !1085, !tbaa !480
  %call57 = tail call i8* @strcpy(i8* %25, i8* %name) #11, !dbg !1085
  %26 = load i32* @n_groups, align 4, !dbg !1086, !tbaa !488
  %idxprom58 = sext i32 %26 to i64, !dbg !1086
  %27 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1086, !tbaa !480
  %number = getelementptr inbounds %struct.cGroupDefinition* %27, i64 %idxprom58, i32 3, !dbg !1086
  store i32 %26, i32* %number, align 4, !dbg !1086, !tbaa !488
  %28 = load i32* @n_groups, align 4, !dbg !1087, !tbaa !488
  %idxprom60 = sext i32 %28 to i64, !dbg !1087
  %staggertype = getelementptr inbounds %struct.cGroupDefinition* %27, i64 %idxprom60, i32 7, !dbg !1087
  store i32 %staggercode, i32* %staggertype, align 4, !dbg !1087, !tbaa !488
  %29 = load i32* @n_groups, align 4, !dbg !1088, !tbaa !488
  %idxprom62 = sext i32 %29 to i64, !dbg !1088
  %n_variables64 = getelementptr inbounds %struct.cGroupDefinition* %27, i64 %idxprom62, i32 11, !dbg !1088
  store i32 %n_variables, i32* %n_variables64, align 4, !dbg !1088, !tbaa !488
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !461), !dbg !1089
  %cmp66135 = icmp sgt i32 %n_variables, 0, !dbg !1089
  br i1 %cmp66135, label %for.body68.lr.ph, label %for.end80, !dbg !1089

for.body68.lr.ph:                                 ; preds = %if.then49
  %30 = load i32** @group_of_variable, align 8, !dbg !1091, !tbaa !480
  %.pre142 = load i32* @total_variables, align 4, !dbg !1093, !tbaa !488
  br label %for.body68, !dbg !1089

for.body68:                                       ; preds = %for.body68, %for.body68.lr.ph
  %31 = phi i32 [ %.pre142, %for.body68.lr.ph ], [ %inc77, %for.body68 ], !dbg !1093
  %indvars.iv = phi i64 [ 0, %for.body68.lr.ph ], [ %indvars.iv.next, %for.body68 ]
  %32 = load i32* @n_groups, align 4, !dbg !1093, !tbaa !488
  %idxprom70 = sext i32 %32 to i64, !dbg !1093
  %variables72 = getelementptr inbounds %struct.cGroupDefinition* %27, i64 %idxprom70, i32 14, !dbg !1093
  %33 = load %struct.cVariableDefinition** %variables72, align 8, !dbg !1093, !tbaa !480
  %number74 = getelementptr inbounds %struct.cVariableDefinition* %33, i64 %indvars.iv, i32 1, !dbg !1093
  store i32 %31, i32* %number74, align 4, !dbg !1093, !tbaa !488
  %34 = load i32* @n_groups, align 4, !dbg !1091, !tbaa !488
  %35 = load i32* @total_variables, align 4, !dbg !1091, !tbaa !488
  %idxprom75 = sext i32 %35 to i64, !dbg !1091
  %arrayidx76 = getelementptr inbounds i32* %30, i64 %idxprom75, !dbg !1091
  store i32 %34, i32* %arrayidx76, align 4, !dbg !1091, !tbaa !488
  %36 = load i32* @total_variables, align 4, !dbg !1094, !tbaa !488
  %inc77 = add nsw i32 %36, 1, !dbg !1094
  store i32 %inc77, i32* @total_variables, align 4, !dbg !1094, !tbaa !488
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1089
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1089
  %exitcond = icmp eq i32 %lftr.wideiv, %n_variables, !dbg !1089
  br i1 %exitcond, label %for.end80, label %for.body68, !dbg !1089

for.end80:                                        ; preds = %for.body68, %if.then49
  %37 = load i32* @n_groups, align 4, !dbg !1095, !tbaa !488
  %inc81 = add nsw i32 %37, 1, !dbg !1095
  store i32 %inc81, i32* @n_groups, align 4, !dbg !1095, !tbaa !488
  br label %land.lhs.true103, !dbg !1096

if.else:                                          ; preds = %land.lhs.true42, %land.lhs.true37, %if.then11
  tail call void @free(i8* %19) #11, !dbg !1097
  %38 = load i32* @n_groups, align 4, !dbg !1099, !tbaa !488
  %idxprom85 = sext i32 %38 to i64, !dbg !1099
  %39 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1099, !tbaa !480
  %implementation87 = getelementptr inbounds %struct.cGroupDefinition* %39, i64 %idxprom85, i32 1, !dbg !1099
  store i8* null, i8** %implementation87, align 8, !dbg !1099, !tbaa !480
  %40 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1100, !tbaa !480
  %name90 = getelementptr inbounds %struct.cGroupDefinition* %40, i64 %idxprom85, i32 2, !dbg !1100
  %41 = load i8** %name90, align 8, !dbg !1100, !tbaa !480
  tail call void @free(i8* %41) #11, !dbg !1100
  %42 = load i32* @n_groups, align 4, !dbg !1101, !tbaa !488
  %idxprom91 = sext i32 %42 to i64, !dbg !1101
  %43 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1101, !tbaa !480
  %name93 = getelementptr inbounds %struct.cGroupDefinition* %43, i64 %idxprom91, i32 2, !dbg !1101
  store i8* null, i8** %name93, align 8, !dbg !1101, !tbaa !480
  %44 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1102, !tbaa !480
  %variables96 = getelementptr inbounds %struct.cGroupDefinition* %44, i64 %idxprom91, i32 14, !dbg !1102
  %45 = load %struct.cVariableDefinition** %variables96, align 8, !dbg !1102, !tbaa !480
  %46 = bitcast %struct.cVariableDefinition* %45 to i8*, !dbg !1102
  tail call void @free(i8* %46) #11, !dbg !1102
  %47 = load i32* @n_groups, align 4, !dbg !1103, !tbaa !488
  %idxprom97 = sext i32 %47 to i64, !dbg !1103
  %48 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1103, !tbaa !480
  %variables99 = getelementptr inbounds %struct.cGroupDefinition* %48, i64 %idxprom97, i32 14, !dbg !1103
  store %struct.cVariableDefinition* null, %struct.cVariableDefinition** %variables99, align 8, !dbg !1103, !tbaa !480
  br label %land.lhs.true103

land.lhs.true103:                                 ; preds = %if.else, %for.end80
  %49 = phi i32 [ %inc81, %for.end80 ], [ %47, %if.else ]
  %sub = add nsw i32 %49, -1, !dbg !1104
  %idxprom104 = sext i32 %sub to i64, !dbg !1104
  %50 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1104, !tbaa !480
  %name106 = getelementptr inbounds %struct.cGroupDefinition* %50, i64 %idxprom104, i32 2, !dbg !1104
  %51 = load i8** %name106, align 8, !dbg !1104, !tbaa !480
  %tobool107 = icmp eq i8* %51, null, !dbg !1104
  br i1 %tobool107, label %if.end117, label %if.then108, !dbg !1104

if.then108:                                       ; preds = %land.lhs.true103
  %arrayidx105 = getelementptr inbounds %struct.cGroupDefinition* %50, i64 %idxprom104, !dbg !1104
  tail call void @llvm.dbg.value(metadata !{%struct.cGroupDefinition* %arrayidx105}, i64 0, metadata !460), !dbg !1105
  br label %if.end117, !dbg !1107

if.else114:                                       ; preds = %for.end
  %idxprom115 = sext i32 %group.0.lcssa to i64, !dbg !1108
  %52 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1108, !tbaa !480
  %arrayidx116 = getelementptr inbounds %struct.cGroupDefinition* %52, i64 %idxprom115, !dbg !1108
  tail call void @llvm.dbg.value(metadata !{%struct.cGroupDefinition* %arrayidx116}, i64 0, metadata !460), !dbg !1108
  br label %if.end117

if.end117:                                        ; preds = %if.then8, %land.lhs.true103, %if.then108, %if.else114
  %returndata.0 = phi %struct.cGroupDefinition* [ %arrayidx105, %if.then108 ], [ %arrayidx116, %if.else114 ], [ null, %if.then8 ], [ null, %land.lhs.true103 ]
  ret %struct.cGroupDefinition* %returndata.0, !dbg !1110
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias i32** @CCTKi_ExtractSize(i32 %dimension, i8* %this_thorn, i8* %sizestring) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dimension}, i64 0, metadata !442), !dbg !1111
  tail call void @llvm.dbg.value(metadata !{i8* %this_thorn}, i64 0, metadata !443), !dbg !1112
  tail call void @llvm.dbg.value(metadata !{i8* %sizestring}, i64 0, metadata !444), !dbg !1113
  %strlenfirst = load i8* %sizestring, align 1, !dbg !1114
  %tobool = icmp eq i8 %strlenfirst, 0, !dbg !1114
  br i1 %tobool, label %if.end34, label %if.then, !dbg !1114

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i8* %sizestring}, i64 0, metadata !448), !dbg !1115
  %conv = sext i32 %dimension to i64, !dbg !1117
  %mul = shl nsw i64 %conv, 3, !dbg !1117
  %call4 = tail call noalias i8* @malloc(i64 %mul) #11, !dbg !1117
  %0 = bitcast i8* %call4 to i32**, !dbg !1117
  tail call void @llvm.dbg.value(metadata !{i32** %0}, i64 0, metadata !449), !dbg !1117
  %tobool5 = icmp eq i8* %call4, null, !dbg !1118
  br i1 %tobool5, label %if.end34, label %if.then6, !dbg !1118

if.then6:                                         ; preds = %if.then
  %mul8 = shl nsw i64 %conv, 2, !dbg !1119
  %call9 = tail call noalias i8* @malloc(i64 %mul8) #11, !dbg !1119
  %1 = bitcast i8* %call9 to i32*, !dbg !1119
  store i32* %1, i32** %0, align 8, !dbg !1119, !tbaa !480
  tail call void @llvm.dbg.value(metadata !1033, i64 0, metadata !445), !dbg !1121
  %cmp60 = icmp sgt i32 %dimension, 1, !dbg !1121
  br i1 %cmp60, label %for.body, label %for.cond13.preheader, !dbg !1121

for.cond13.preheader:                             ; preds = %for.body, %if.then6
  %cmp1457 = icmp sgt i32 %dimension, 0, !dbg !1123
  br i1 %cmp1457, label %for.body16, label %if.end34, !dbg !1123

for.body:                                         ; preds = %if.then6, %for.body.for.body_crit_edge
  %2 = phi i32* [ %.pre66, %for.body.for.body_crit_edge ], [ %1, %if.then6 ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body.for.body_crit_edge ], [ 1, %if.then6 ]
  %add.ptr = getelementptr inbounds i32* %2, i64 %indvars.iv62, !dbg !1125
  %arrayidx12 = getelementptr inbounds i32** %0, i64 %indvars.iv62, !dbg !1125
  store i32* %add.ptr, i32** %arrayidx12, align 8, !dbg !1125, !tbaa !480
  %indvars.iv.next63 = add i64 %indvars.iv62, 1, !dbg !1121
  %lftr.wideiv64 = trunc i64 %indvars.iv.next63 to i32, !dbg !1121
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %dimension, !dbg !1121
  br i1 %exitcond65, label %for.cond13.preheader, label %for.body.for.body_crit_edge, !dbg !1121

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre66 = load i32** %0, align 8, !dbg !1125, !tbaa !480
  br label %for.body, !dbg !1121

for.body16:                                       ; preds = %for.cond13.preheader, %if.end.for.body16_crit_edge
  %3 = phi i8 [ %.pre, %if.end.for.body16_crit_edge ], [ %strlenfirst, %for.cond13.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.for.body16_crit_edge ], [ 0, %for.cond13.preheader ]
  %next_comma.059 = phi i8* [ %strchr, %if.end.for.body16_crit_edge ], [ %sizestring, %for.cond13.preheader ]
  %cmp19 = icmp eq i8 %3, 44, !dbg !1127
  %add.ptr21 = getelementptr inbounds i8* %next_comma.059, i64 1, !dbg !1127
  %cond = select i1 %cmp19, i8* %add.ptr21, i8* %next_comma.059, !dbg !1127
  tail call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !447), !dbg !1127
  %strchr = tail call i8* @strchr(i8* %cond, i32 44), !dbg !1129
  tail call void @llvm.dbg.value(metadata !{i8* %strchr}, i64 0, metadata !448), !dbg !1129
  %call23 = tail call noalias i8* @strdup(i8* %cond) #11, !dbg !1130
  tail call void @llvm.dbg.value(metadata !{i8* %call23}, i64 0, metadata !446), !dbg !1130
  %tobool24 = icmp eq i8* %strchr, null, !dbg !1131
  br i1 %tobool24, label %if.end, label %if.then25, !dbg !1131

if.then25:                                        ; preds = %for.body16
  %sub.ptr.lhs.cast = ptrtoint i8* %strchr to i64, !dbg !1132
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64, !dbg !1132
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1132
  %arrayidx26 = getelementptr inbounds i8* %call23, i64 %sub.ptr.sub, !dbg !1132
  store i8 0, i8* %arrayidx26, align 1, !dbg !1132, !tbaa !481
  br label %if.end, !dbg !1134

if.end:                                           ; preds = %for.body16, %if.then25
  %call27 = tail call fastcc i32 @CCTKi_ParamExpressionToInt(i8* %call23, i8* %this_thorn) #10, !dbg !1135
  %arrayidx29 = getelementptr inbounds i32** %0, i64 %indvars.iv, !dbg !1135
  %4 = load i32** %arrayidx29, align 8, !dbg !1135, !tbaa !480
  store i32 %call27, i32* %4, align 4, !dbg !1135, !tbaa !488
  tail call void @free(i8* %call23) #11, !dbg !1136
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1123
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1123
  %exitcond = icmp eq i32 %lftr.wideiv, %dimension, !dbg !1123
  br i1 %exitcond, label %if.end34, label %if.end.for.body16_crit_edge, !dbg !1123

if.end.for.body16_crit_edge:                      ; preds = %if.end
  %.pre = load i8* %strchr, align 1, !dbg !1127, !tbaa !481
  br label %for.body16, !dbg !1123

if.end34:                                         ; preds = %for.cond13.preheader, %if.end, %entry, %if.then
  %size_array.0 = phi i32** [ %0, %if.then ], [ null, %entry ], [ %0, %if.end ], [ %0, %for.cond13.preheader ]
  ret i32** %size_array.0, !dbg !1137
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @CCTK_GroupImplementationI(i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !395), !dbg !1138
  %idxprom = sext i32 %group to i64, !dbg !1139
  %0 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1139, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %0, i64 %idxprom, i32 1, !dbg !1139
  %1 = load i8** %implementation, align 8, !dbg !1139, !tbaa !480
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !396), !dbg !1139
  ret i8* %1, !dbg !1140
}

; Function Attrs: nounwind optsize uwtable
define i32* @CCTKi_GroupLengthAsPointer(i8* %fullgroupname) #2 {
entry:
  %impname = alloca i8*, align 8
  %groupname = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %fullgroupname}, i64 0, metadata !401), !dbg !1141
  call void @llvm.dbg.declare(metadata !{i8** %impname}, metadata !404), !dbg !1142
  call void @llvm.dbg.declare(metadata !{i8** %groupname}, metadata !405), !dbg !1142
  call void @llvm.dbg.value(metadata !1143, i64 0, metadata !403), !dbg !1144
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !404), !dbg !1145
  store i8* null, i8** %impname, align 8, !dbg !1145, !tbaa !480
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !405), !dbg !1146
  store i8* null, i8** %groupname, align 8, !dbg !1146, !tbaa !480
  %call = call i32 @CCTK_DecomposeName(i8* %fullgroupname, i8** %impname, i8** %groupname) #10, !dbg !1147
  %tobool = icmp eq i32 %call, 0, !dbg !1147
  br i1 %tobool, label %for.cond.preheader, label %if.end15, !dbg !1147

for.cond.preheader:                               ; preds = %entry
  %0 = load i32* @n_groups, align 4, !dbg !1148, !tbaa !488
  %cmp30 = icmp sgt i32 %0, 0, !dbg !1148
  br i1 %cmp30, label %for.body, label %if.then12, !dbg !1148

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !404), !dbg !1151
  %1 = load i8** %impname, align 8, !dbg !1151, !tbaa !480
  %2 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1151, !tbaa !480
  %implementation = getelementptr inbounds %struct.cGroupDefinition* %2, i64 %indvars.iv, i32 1, !dbg !1151
  %3 = load i8** %implementation, align 8, !dbg !1151, !tbaa !480
  %call2 = call i32 @CCTK_Equals(i8* %1, i8* %3) #11, !dbg !1151
  %tobool3 = icmp eq i32 %call2, 0, !dbg !1151
  br i1 %tobool3, label %for.inc, label %land.lhs.true, !dbg !1151

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i8** %groupname}, i64 0, metadata !405), !dbg !1153
  %4 = load i8** %groupname, align 8, !dbg !1153, !tbaa !480
  %5 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1153, !tbaa !480
  %name = getelementptr inbounds %struct.cGroupDefinition* %5, i64 %indvars.iv, i32 2, !dbg !1153
  %6 = load i8** %name, align 8, !dbg !1153, !tbaa !480
  %call6 = call i32 @CCTK_Equals(i8* %4, i8* %6) #11, !dbg !1153
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1153
  br i1 %tobool7, label %for.inc, label %for.end, !dbg !1153

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1148
  %7 = load i32* @n_groups, align 4, !dbg !1148, !tbaa !488
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !1148
  %cmp = icmp slt i32 %8, %7, !dbg !1148
  br i1 %cmp, label %for.body, label %if.then12, !dbg !1148

for.end:                                          ; preds = %land.lhs.true
  %9 = load %struct.cGroupDefinition** @groups, align 8, !dbg !1154, !tbaa !480
  %n_variables = getelementptr inbounds %struct.cGroupDefinition* %9, i64 %indvars.iv, i32 11, !dbg !1154
  call void @llvm.dbg.value(metadata !{i32* %n_variables}, i64 0, metadata !403), !dbg !1154
  br label %if.end15, !dbg !1156

if.then12:                                        ; preds = %for.inc, %for.cond.preheader
  %call13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 6, i32 2256, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %fullgroupname) #11, !dbg !1157
  br label %if.end15, !dbg !1159

if.end15:                                         ; preds = %for.end, %entry, %if.then12
  %retval1.1 = phi i32* [ null, %entry ], [ null, %if.then12 ], [ %n_variables, %for.end ]
  call void @llvm.dbg.value(metadata !{i8** %impname}, i64 0, metadata !404), !dbg !1160
  %10 = load i8** %impname, align 8, !dbg !1160, !tbaa !480
  %tobool16 = icmp eq i8* %10, null, !dbg !1160
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1160

if.then17:                                        ; preds = %if.end15
  call void @free(i8* %10) #11, !dbg !1161
  br label %if.end18, !dbg !1163

if.end18:                                         ; preds = %if.end15, %if.then17
  call void @llvm.dbg.value(metadata !{i8** %groupname}, i64 0, metadata !405), !dbg !1164
  %11 = load i8** %groupname, align 8, !dbg !1164, !tbaa !480
  %tobool19 = icmp eq i8* %11, null, !dbg !1164
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1164

if.then20:                                        ; preds = %if.end18
  call void @free(i8* %11) #11, !dbg !1165
  br label %if.end21, !dbg !1167

if.end21:                                         ; preds = %if.end18, %if.then20
  ret i32* %retval1.1, !dbg !1168
}

; Function Attrs: optsize
declare i8* @Util_ExpressionParse(i8*) #4

; Function Attrs: optsize
declare i32 @Util_ExpressionEvaluate(i8*, %struct.uExpressionValue*, i32 (i32, i8**, %struct.uExpressionValue*, i8*)*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @IntParameterEvaluator(i32 %nvars, i8** nocapture %vars, %struct.uExpressionValue* nocapture %vals, i8* %data) #2 {
entry:
  %endptr = alloca i8*, align 8
  %thorn = alloca i8*, align 8
  %param = alloca i8*, align 8
  %type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %nvars}, i64 0, metadata !425), !dbg !1169
  call void @llvm.dbg.value(metadata !{i8** %vars}, i64 0, metadata !426), !dbg !1170
  call void @llvm.dbg.value(metadata !{%struct.uExpressionValue* %vals}, i64 0, metadata !427), !dbg !1171
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !428), !dbg !1172
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !431), !dbg !1173
  call void @llvm.dbg.declare(metadata !{i8** %thorn}, metadata !433), !dbg !1174
  call void @llvm.dbg.declare(metadata !{i8** %param}, metadata !434), !dbg !1175
  call void @llvm.dbg.declare(metadata !{i32* %type}, metadata !437), !dbg !1176
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !429), !dbg !1177
  %cmp51 = icmp sgt i32 %nvars, 0, !dbg !1177
  br i1 %cmp51, label %for.body, label %for.end, !dbg !1177

for.body:                                         ; preds = %entry, %if.end35
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end35 ], [ 0, %entry ]
  %type8 = getelementptr inbounds %struct.uExpressionValue* %vals, i64 %indvars.iv, i32 0, !dbg !1179
  store i32 1, i32* %type8, align 4, !dbg !1179, !tbaa !1181
  %arrayidx10 = getelementptr inbounds i8** %vars, i64 %indvars.iv, !dbg !1182
  %0 = load i8** %arrayidx10, align 8, !dbg !1182, !tbaa !480
  %call = call i8* @Util_Strdup(i8* %0) #11, !dbg !1182
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !430), !dbg !1182
  %call11 = call i64 @strtol(i8* %call, i8** %endptr, i32 0) #11, !dbg !1183
  %conv = trunc i64 %call11 to i32, !dbg !1183
  %value = getelementptr inbounds %struct.uExpressionValue* %vals, i64 %indvars.iv, i32 1, !dbg !1183
  %ival = bitcast %union.anon* %value to i32*, !dbg !1183
  store i32 %conv, i32* %ival, align 4, !dbg !1183, !tbaa !488
  call void @llvm.dbg.value(metadata !{i8** %endptr}, i64 0, metadata !431), !dbg !1184
  %1 = load i8** %endptr, align 8, !dbg !1184, !tbaa !480
  %cmp14 = icmp eq i8* %1, %call, !dbg !1184
  br i1 %cmp14, label %if.then, label %if.end35, !dbg !1184

if.then:                                          ; preds = %for.body
  %call16 = call i32 @CCTK_DecomposeName(i8* %call, i8** %thorn, i8** %param) #10, !dbg !1185
  %tobool = icmp eq i32 %call16, 0, !dbg !1185
  br i1 %tobool, label %if.else, label %if.then17, !dbg !1185

if.then17:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !433), !dbg !1187
  store i8* null, i8** %thorn, align 8, !dbg !1187, !tbaa !480
  call void @llvm.dbg.value(metadata !478, i64 0, metadata !434), !dbg !1189
  store i8* null, i8** %param, align 8, !dbg !1189, !tbaa !480
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !435), !dbg !1190
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !436), !dbg !1191
  br label %if.end, !dbg !1192

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata !{i8** %thorn}, i64 0, metadata !433), !dbg !1193
  %2 = load i8** %thorn, align 8, !dbg !1193, !tbaa !480
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !435), !dbg !1193
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !434), !dbg !1195
  %3 = load i8** %param, align 8, !dbg !1195, !tbaa !480
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !436), !dbg !1195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then17
  %use_thorn.0 = phi i8* [ %data, %if.then17 ], [ %2, %if.else ]
  %use_param.0 = phi i8* [ %call, %if.then17 ], [ %3, %if.else ]
  %call18 = call i8* @CCTK_ParameterGet(i8* %use_param.0, i8* %use_thorn.0, i32* %type) #11, !dbg !1196
  call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !432), !dbg !1196
  %tobool19 = icmp ne i8* %call18, null, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !437), !dbg !1197
  %4 = load i32* %type, align 4, !dbg !1197, !tbaa !488
  %cmp20 = icmp eq i32 %4, 4, !dbg !1197
  %or.cond = and i1 %tobool19, %cmp20, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !437), !dbg !1197
  br i1 %or.cond, label %if.then22, label %if.else27, !dbg !1197

if.then22:                                        ; preds = %if.end
  %5 = bitcast i8* %call18 to i32*, !dbg !1196
  %6 = load i32* %5, align 4, !dbg !1198, !tbaa !488
  store i32 %6, i32* %ival, align 4, !dbg !1198, !tbaa !488
  br label %if.end34, !dbg !1200

if.else27:                                        ; preds = %if.end
  br i1 %tobool19, label %if.else31, label %if.then29, !dbg !1201

if.then29:                                        ; preds = %if.else27
  %call30 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2367, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str59, i64 0, i64 0), i8* %use_thorn.0, i8* %use_param.0) #11, !dbg !1202
  br label %if.end34, !dbg !1204

if.else31:                                        ; preds = %if.else27
  %call32 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 2373, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str60, i64 0, i64 0), i8* %use_thorn.0, i8* %use_param.0) #11, !dbg !1205
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.else31, %if.then22
  call void @llvm.dbg.value(metadata !{i8** %thorn}, i64 0, metadata !433), !dbg !1207
  %7 = load i8** %thorn, align 8, !dbg !1207, !tbaa !480
  call void @free(i8* %7) #11, !dbg !1207
  call void @llvm.dbg.value(metadata !{i8** %param}, i64 0, metadata !434), !dbg !1208
  %8 = load i8** %param, align 8, !dbg !1208, !tbaa !480
  call void @free(i8* %8) #11, !dbg !1208
  br label %if.end35, !dbg !1209

if.end35:                                         ; preds = %if.end34, %for.body
  call void @free(i8* %call) #11, !dbg !1210
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1177
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1177
  %exitcond = icmp eq i32 %lftr.wideiv, %nvars, !dbg !1177
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1177

for.end:                                          ; preds = %if.end35, %entry
  ret i32 0, !dbg !1211
}

; Function Attrs: optsize
declare void @Util_ExpressionFree(i8*) #4

; Function Attrs: nounwind optsize
declare i64 @strtol(i8*, i8** nocapture, i32) #5

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #4

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #9

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !33, metadata !34, metadata !463, metadata !33, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !18}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 786436, metadata !19, metadata !20, metadata !"", i32 22, i64 32, i64 32, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 22, size 32, align 32, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_Expression.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 20, i64 128, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 20, size 128, align 64, offset 0] [from ]
!21 = metadata !{metadata !22, metadata !23}
!22 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"type", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [type] [line 22, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"value", i32 28, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 28, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786455, metadata !19, metadata !20, metadata !"", i32 24, i64 64, i64 64, i64 0, i32 0, null, metadata !25, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 24, size 64, align 64, offset 0] [from ]
!25 = metadata !{metadata !26, metadata !28}
!26 = metadata !{i32 786445, metadata !19, metadata !24, metadata !"rval", i32 26, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [rval] [line 26, size 64, align 64, offset 0] [from double]
!27 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!28 = metadata !{i32 786445, metadata !19, metadata !24, metadata !"ival", i32 27, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [ival] [line 27, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786472, metadata !"rval", i64 0} ; [ DW_TAG_enumerator ] [rval :: 0]
!32 = metadata !{i32 786472, metadata !"ival", i64 1} ; [ DW_TAG_enumerator ] [ival :: 1]
!33 = metadata !{i32 0}
!34 = metadata !{metadata !35, metadata !42, metadata !45, metadata !55, metadata !65, metadata !73, metadata !79, metadata !80, metadata !85, metadata !86, metadata !89, metadata !90, metadata !93, metadata !100, metadata !105, metadata !113, metadata !116, metadata !122, metadata !127, metadata !133, metadata !137, metadata !143, metadata !147, metadata !153, metadata !157, metadata !161, metadata !167, metadata !171, metadata !177, metadata !197, metadata !200, metadata !209, metadata !213, metadata !216, metadata !220, metadata !223, metadata !226, metadata !229, metadata !235, metadata !238, metadata !241, metadata !244, metadata !248, metadata !251, metadata !255, metadata !258, metadata !264, metadata !269, metadata !272, metadata !278, metadata !281, metadata !285, metadata !288, metadata !292, metadata !295, metadata !299, metadata !323, metadata !393, metadata !397, metadata !406, metadata !418, metadata !438, metadata !450}
!35 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_version_main_Groups_c", metadata !"CCTKi_version_main_Groups_c", metadata !"", i32 39, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Groups_c, null, null, metadata !33, i32 39} ; [ DW_TAG_subprogram ] [line 39] [def] [CCTKi_version_main_Groups_c]
!36 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!41 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!42 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_StaggerVars", metadata !"CCTK_StaggerVars", metadata !"", i32 206, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_StaggerVars, null, null, metadata !33, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [CCTK_StaggerVars]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !29}
!45 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupIndex", metadata !"CCTK_GroupIndex", metadata !"", i32 227, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupIndex, null, null, metadata !48, i32 228} ; [ DW_TAG_subprogram ] [line 227] [def] [scope 228] [CCTK_GroupIndex]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !29, metadata !39}
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !54}
!49 = metadata !{i32 786689, metadata !45, metadata !"fullgroupname", metadata !36, i32 16777443, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullgroupname] [line 227]
!50 = metadata !{i32 786688, metadata !45, metadata !"group", metadata !36, i32 229, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 229]
!51 = metadata !{i32 786688, metadata !45, metadata !"retval", metadata !36, i32 230, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 230]
!52 = metadata !{i32 786688, metadata !45, metadata !"impname", metadata !36, i32 231, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impname] [line 231]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!54 = metadata !{i32 786688, metadata !45, metadata !"groupname", metadata !36, i32 232, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupname] [line 232]
!55 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupindex_", metadata !"cctk_groupindex_", metadata !"", i32 271, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_groupindex_, null, null, metadata !60, i32 274} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 274] [cctk_groupindex_]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !58, metadata !53, metadata !59}
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64}
!61 = metadata !{i32 786689, metadata !55, metadata !"vindex", metadata !36, i32 16777488, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 272]
!62 = metadata !{i32 786689, metadata !55, metadata !"cctk_str1", metadata !36, i32 33554705, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 273]
!63 = metadata !{i32 786689, metadata !55, metadata !"cctk_strlen1", metadata !36, i32 50331921, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 273]
!64 = metadata !{i32 786688, metadata !55, metadata !"name", metadata !36, i32 275, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 275]
!65 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarIndex", metadata !"CCTK_VarIndex", metadata !"", i32 296, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_VarIndex, null, null, metadata !66, i32 297} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 297] [CCTK_VarIndex]
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!67 = metadata !{i32 786689, metadata !65, metadata !"fullvarname", metadata !36, i32 16777512, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullvarname] [line 296]
!68 = metadata !{i32 786688, metadata !65, metadata !"retval", metadata !36, i32 298, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 298]
!69 = metadata !{i32 786688, metadata !65, metadata !"group", metadata !36, i32 299, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 299]
!70 = metadata !{i32 786688, metadata !65, metadata !"variable", metadata !36, i32 300, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 300]
!71 = metadata !{i32 786688, metadata !65, metadata !"impname", metadata !36, i32 301, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impname] [line 301]
!72 = metadata !{i32 786688, metadata !65, metadata !"varname", metadata !36, i32 302, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [varname] [line 302]
!73 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_varindex_", metadata !"cctk_varindex_", metadata !"", i32 352, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_varindex_, null, null, metadata !74, i32 355} ; [ DW_TAG_subprogram ] [line 352] [def] [scope 355] [cctk_varindex_]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78}
!75 = metadata !{i32 786689, metadata !73, metadata !"vindex", metadata !36, i32 16777569, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 353]
!76 = metadata !{i32 786689, metadata !73, metadata !"cctk_str1", metadata !36, i32 33554786, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 354]
!77 = metadata !{i32 786689, metadata !73, metadata !"cctk_strlen1", metadata !36, i32 50332002, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 354]
!78 = metadata !{i32 786688, metadata !73, metadata !"name", metadata !36, i32 356, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 356]
!79 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_MaxDim", metadata !"CCTK_MaxDim", metadata !"", i32 375, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_MaxDim, null, null, metadata !33, i32 376} ; [ DW_TAG_subprogram ] [line 375] [def] [scope 376] [CCTK_MaxDim]
!80 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_maxdim_", metadata !"cctk_maxdim_", metadata !"", i32 380, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_maxdim_, null, null, metadata !83, i32 382} ; [ DW_TAG_subprogram ] [line 380] [def] [scope 382] [cctk_maxdim_]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{null, metadata !58}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786689, metadata !80, metadata !"dim", metadata !36, i32 16777597, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 381]
!85 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumVars", metadata !"CCTK_NumVars", metadata !"", i32 400, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumVars, null, null, metadata !33, i32 401} ; [ DW_TAG_subprogram ] [line 400] [def] [scope 401] [CCTK_NumVars]
!86 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_numvars_", metadata !"cctk_numvars_", metadata !"", i32 405, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_numvars_, null, null, metadata !87, i32 407} ; [ DW_TAG_subprogram ] [line 405] [def] [scope 407] [cctk_numvars_]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786689, metadata !86, metadata !"num_vars", metadata !36, i32 16777622, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_vars] [line 406]
!89 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumGroups", metadata !"CCTK_NumGroups", metadata !"", i32 425, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumGroups, null, null, metadata !33, i32 426} ; [ DW_TAG_subprogram ] [line 425] [def] [scope 426] [CCTK_NumGroups]
!90 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_numgroups_", metadata !"cctk_numgroups_", metadata !"", i32 430, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_numgroups_, null, null, metadata !91, i32 432} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 432] [cctk_numgroups_]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786689, metadata !90, metadata !"num_groups", metadata !36, i32 16777647, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_groups] [line 431]
!93 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupNameFromVarI", metadata !"CCTK_GroupNameFromVarI", metadata !"", i32 452, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_GroupNameFromVarI, null, null, metadata !96, i32 453} ; [ DW_TAG_subprogram ] [line 452] [def] [scope 453] [CCTK_GroupNameFromVarI]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{metadata !53, metadata !29}
!96 = metadata !{metadata !97, metadata !98, metadata !99}
!97 = metadata !{i32 786689, metadata !93, metadata !"var", metadata !36, i32 16777668, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 452]
!98 = metadata !{i32 786688, metadata !93, metadata !"group", metadata !36, i32 454, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 454]
!99 = metadata !{i32 786688, metadata !93, metadata !"fullname", metadata !36, i32 455, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 455]
!100 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupIndexFromVarI", metadata !"CCTK_GroupIndexFromVarI", metadata !"", i32 492, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupIndexFromVarI, null, null, metadata !103, i32 493} ; [ DW_TAG_subprogram ] [line 492] [def] [scope 493] [CCTK_GroupIndexFromVarI]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{metadata !29, metadata !29}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786689, metadata !100, metadata !"var", metadata !36, i32 16777708, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 492]
!105 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupindexfromvari_", metadata !"cctk_groupindexfromvari_", metadata !"", i32 497, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_groupindexfromvari_, null, null, metadata !110, i32 500} ; [ DW_TAG_subprogram ] [line 497] [def] [scope 500] [cctk_groupindexfromvari_]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !58, metadata !108}
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!110 = metadata !{metadata !111, metadata !112}
!111 = metadata !{i32 786689, metadata !105, metadata !"gindex", metadata !36, i32 16777714, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gindex] [line 498]
!112 = metadata !{i32 786689, metadata !105, metadata !"var", metadata !36, i32 33554931, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 499]
!113 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupIndexFromVar", metadata !"CCTK_GroupIndexFromVar", metadata !"", i32 520, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupIndexFromVar, null, null, metadata !114, i32 521} ; [ DW_TAG_subprogram ] [line 520] [def] [scope 521] [CCTK_GroupIndexFromVar]
!114 = metadata !{metadata !115}
!115 = metadata !{i32 786689, metadata !113, metadata !"var", metadata !36, i32 16777736, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 520]
!116 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupindexfromvar_", metadata !"cctk_groupindexfromvar_", metadata !"", i32 525, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_groupindexfromvar_, null, null, metadata !117, i32 528} ; [ DW_TAG_subprogram ] [line 525] [def] [scope 528] [cctk_groupindexfromvar_]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786689, metadata !116, metadata !"vindex", metadata !36, i32 16777742, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 526]
!119 = metadata !{i32 786689, metadata !116, metadata !"cctk_str1", metadata !36, i32 33554959, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 527]
!120 = metadata !{i32 786689, metadata !116, metadata !"cctk_strlen1", metadata !36, i32 50332175, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 527]
!121 = metadata !{i32 786688, metadata !116, metadata !"var", metadata !36, i32 529, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 529]
!122 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_ImpFromVarI", metadata !"CCTK_ImpFromVarI", metadata !"", i32 549, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_ImpFromVarI, null, null, metadata !125, i32 550} ; [ DW_TAG_subprogram ] [line 549] [def] [scope 550] [CCTK_ImpFromVarI]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !39, metadata !29}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786689, metadata !122, metadata !"var", metadata !36, i32 16777765, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 549]
!127 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_FullName", metadata !"CCTK_FullName", metadata !"", i32 572, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_FullName, null, null, metadata !128, i32 573} ; [ DW_TAG_subprogram ] [line 572] [def] [scope 573] [CCTK_FullName]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132}
!129 = metadata !{i32 786689, metadata !127, metadata !"var", metadata !36, i32 16777788, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 572]
!130 = metadata !{i32 786688, metadata !127, metadata !"impname", metadata !36, i32 574, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impname] [line 574]
!131 = metadata !{i32 786688, metadata !127, metadata !"varname", metadata !36, i32 575, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [varname] [line 575]
!132 = metadata !{i32 786688, metadata !127, metadata !"fullname", metadata !36, i32 576, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 576]
!133 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupTypeNumber", metadata !"CCTK_GroupTypeNumber", metadata !"", i32 612, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupTypeNumber, null, null, metadata !134, i32 613} ; [ DW_TAG_subprogram ] [line 612] [def] [scope 613] [CCTK_GroupTypeNumber]
!134 = metadata !{metadata !135, metadata !136}
!135 = metadata !{i32 786689, metadata !133, metadata !"type", metadata !36, i32 16777828, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 612]
!136 = metadata !{i32 786688, metadata !133, metadata !"retval", metadata !36, i32 614, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 614]
!137 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_grouptypenumber_", metadata !"cctk_grouptypenumber_", metadata !"", i32 637, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_grouptypenumber_, null, null, metadata !138, i32 640} ; [ DW_TAG_subprogram ] [line 637] [def] [scope 640] [cctk_grouptypenumber_]
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142}
!139 = metadata !{i32 786689, metadata !137, metadata !"number", metadata !36, i32 16777854, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 638]
!140 = metadata !{i32 786689, metadata !137, metadata !"cctk_str1", metadata !36, i32 33555071, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 639]
!141 = metadata !{i32 786689, metadata !137, metadata !"cctk_strlen1", metadata !36, i32 50332287, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 639]
!142 = metadata !{i32 786688, metadata !137, metadata !"type", metadata !36, i32 641, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 641]
!143 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarTypeNumber", metadata !"CCTK_VarTypeNumber", metadata !"", i32 661, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_VarTypeNumber, null, null, metadata !144, i32 662} ; [ DW_TAG_subprogram ] [line 661] [def] [scope 662] [CCTK_VarTypeNumber]
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786689, metadata !143, metadata !"type", metadata !36, i32 16777877, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 661]
!146 = metadata !{i32 786688, metadata !143, metadata !"retval", metadata !36, i32 663, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 663]
!147 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_vartypenumber_", metadata !"cctk_vartypenumber_", metadata !"", i32 731, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_vartypenumber_, null, null, metadata !148, i32 734} ; [ DW_TAG_subprogram ] [line 731] [def] [scope 734] [cctk_vartypenumber_]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152}
!149 = metadata !{i32 786689, metadata !147, metadata !"number", metadata !36, i32 16777948, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 732]
!150 = metadata !{i32 786689, metadata !147, metadata !"cctk_str1", metadata !36, i32 33555165, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 733]
!151 = metadata !{i32 786689, metadata !147, metadata !"cctk_strlen1", metadata !36, i32 50332381, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 733]
!152 = metadata !{i32 786688, metadata !147, metadata !"type", metadata !36, i32 735, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 735]
!153 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarTypeName", metadata !"CCTK_VarTypeName", metadata !"", i32 755, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_VarTypeName, null, null, metadata !154, i32 756} ; [ DW_TAG_subprogram ] [line 755] [def] [scope 756] [CCTK_VarTypeName]
!154 = metadata !{metadata !155, metadata !156}
!155 = metadata !{i32 786689, metadata !153, metadata !"vtype", metadata !36, i32 16777971, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 755]
!156 = metadata !{i32 786688, metadata !153, metadata !"retval", metadata !36, i32 757, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 757]
!157 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupScopeNumber", metadata !"CCTK_GroupScopeNumber", metadata !"", i32 837, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupScopeNumber, null, null, metadata !158, i32 838} ; [ DW_TAG_subprogram ] [line 837] [def] [scope 838] [CCTK_GroupScopeNumber]
!158 = metadata !{metadata !159, metadata !160}
!159 = metadata !{i32 786689, metadata !157, metadata !"type", metadata !36, i32 16778053, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 837]
!160 = metadata !{i32 786688, metadata !157, metadata !"retval", metadata !36, i32 839, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 839]
!161 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupscopenumber_", metadata !"cctk_groupscopenumber_", metadata !"", i32 862, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_groupscopenumber_, null, null, metadata !162, i32 865} ; [ DW_TAG_subprogram ] [line 862] [def] [scope 865] [cctk_groupscopenumber_]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166}
!163 = metadata !{i32 786689, metadata !161, metadata !"number", metadata !36, i32 16778079, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 863]
!164 = metadata !{i32 786689, metadata !161, metadata !"cctk_str1", metadata !36, i32 33555296, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 864]
!165 = metadata !{i32 786689, metadata !161, metadata !"cctk_strlen1", metadata !36, i32 50332512, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 864]
!166 = metadata !{i32 786688, metadata !161, metadata !"type", metadata !36, i32 866, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 866]
!167 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupDistribNumber", metadata !"CCTK_GroupDistribNumber", metadata !"", i32 886, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupDistribNumber, null, null, metadata !168, i32 887} ; [ DW_TAG_subprogram ] [line 886] [def] [scope 887] [CCTK_GroupDistribNumber]
!168 = metadata !{metadata !169, metadata !170}
!169 = metadata !{i32 786689, metadata !167, metadata !"dtype", metadata !36, i32 16778102, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtype] [line 886]
!170 = metadata !{i32 786688, metadata !167, metadata !"retval", metadata !36, i32 888, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 888]
!171 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupdistribnumber_", metadata !"cctk_groupdistribnumber_", metadata !"", i32 907, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_groupdistribnumber_, null, null, metadata !172, i32 910} ; [ DW_TAG_subprogram ] [line 907] [def] [scope 910] [cctk_groupdistribnumber_]
!172 = metadata !{metadata !173, metadata !174, metadata !175, metadata !176}
!173 = metadata !{i32 786689, metadata !171, metadata !"number", metadata !36, i32 16778124, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number] [line 908]
!174 = metadata !{i32 786689, metadata !171, metadata !"cctk_str1", metadata !36, i32 33555341, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 909]
!175 = metadata !{i32 786689, metadata !171, metadata !"cctk_strlen1", metadata !36, i32 50332557, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 909]
!176 = metadata !{i32 786688, metadata !171, metadata !"type", metadata !36, i32 911, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 911]
!177 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupData", metadata !"CCTK_GroupData", metadata !"", i32 933, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.cGroup*)* @CCTK_GroupData, null, null, metadata !193, i32 934} ; [ DW_TAG_subprogram ] [line 933] [def] [scope 934] [CCTK_GroupData]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !29, metadata !29, metadata !180}
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGroup]
!181 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!182 = metadata !{i32 786451, metadata !183, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!183 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!185 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!186 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!187 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!188 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!189 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!190 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!191 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!192 = metadata !{i32 786445, metadata !183, metadata !182, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !29} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!193 = metadata !{metadata !194, metadata !195, metadata !196}
!194 = metadata !{i32 786689, metadata !177, metadata !"group", metadata !36, i32 16778149, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 933]
!195 = metadata !{i32 786689, metadata !177, metadata !"gp", metadata !36, i32 33555365, metadata !180, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gp] [line 933]
!196 = metadata !{i32 786688, metadata !177, metadata !"retval", metadata !36, i32 935, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 935]
!197 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarName", metadata !"CCTK_VarName", metadata !"", i32 984, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_VarName, null, null, metadata !198, i32 985} ; [ DW_TAG_subprogram ] [line 984] [def] [scope 985] [CCTK_VarName]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786689, metadata !197, metadata !"var", metadata !36, i32 16778200, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 984]
!200 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_DecomposeName", metadata !"CCTK_DecomposeName", metadata !"", i32 1014, metadata !201, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8**, i8**)* @CCTK_DecomposeName, null, null, metadata !204, i32 1017} ; [ DW_TAG_subprogram ] [line 1014] [def] [scope 1017] [CCTK_DecomposeName]
!201 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!202 = metadata !{metadata !29, metadata !39, metadata !203, metadata !203}
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208}
!205 = metadata !{i32 786689, metadata !200, metadata !"fullname", metadata !36, i32 16778230, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullname] [line 1014]
!206 = metadata !{i32 786689, metadata !200, metadata !"implementation", metadata !36, i32 33555447, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [implementation] [line 1015]
!207 = metadata !{i32 786689, metadata !200, metadata !"name", metadata !36, i32 50332664, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1016]
!208 = metadata !{i32 786688, metadata !200, metadata !"retval", metadata !36, i32 1018, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1018]
!209 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupName", metadata !"CCTK_GroupName", metadata !"", i32 1064, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_GroupName, null, null, metadata !210, i32 1065} ; [ DW_TAG_subprogram ] [line 1064] [def] [scope 1065] [CCTK_GroupName]
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786689, metadata !209, metadata !"group", metadata !36, i32 16778280, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1064]
!212 = metadata !{i32 786688, metadata !209, metadata !"name", metadata !36, i32 1066, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1066]
!213 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_FirstVarIndexI", metadata !"CCTK_FirstVarIndexI", metadata !"", i32 1099, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_FirstVarIndexI, null, null, metadata !214, i32 1100} ; [ DW_TAG_subprogram ] [line 1099] [def] [scope 1100] [CCTK_FirstVarIndexI]
!214 = metadata !{metadata !215}
!215 = metadata !{i32 786689, metadata !213, metadata !"group", metadata !36, i32 16778315, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1099]
!216 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_firstvarindexi_", metadata !"cctk_firstvarindexi_", metadata !"", i32 1105, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_firstvarindexi_, null, null, metadata !217, i32 1108} ; [ DW_TAG_subprogram ] [line 1105] [def] [scope 1108] [cctk_firstvarindexi_]
!217 = metadata !{metadata !218, metadata !219}
!218 = metadata !{i32 786689, metadata !216, metadata !"first", metadata !36, i32 16778322, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 1106]
!219 = metadata !{i32 786689, metadata !216, metadata !"group", metadata !36, i32 33555539, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1107]
!220 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_FirstVarIndex", metadata !"CCTK_FirstVarIndex", metadata !"", i32 1127, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_FirstVarIndex, null, null, metadata !221, i32 1128} ; [ DW_TAG_subprogram ] [line 1127] [def] [scope 1128] [CCTK_FirstVarIndex]
!221 = metadata !{metadata !222}
!222 = metadata !{i32 786689, metadata !220, metadata !"groupname", metadata !36, i32 16778343, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 1127]
!223 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumVarsInGroupI", metadata !"CCTK_NumVarsInGroupI", metadata !"", i32 1147, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_NumVarsInGroupI, null, null, metadata !224, i32 1148} ; [ DW_TAG_subprogram ] [line 1147] [def] [scope 1148] [CCTK_NumVarsInGroupI]
!224 = metadata !{metadata !225}
!225 = metadata !{i32 786689, metadata !223, metadata !"group", metadata !36, i32 16778363, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1147]
!226 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumVarsInGroup", metadata !"CCTK_NumVarsInGroup", metadata !"", i32 1167, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_NumVarsInGroup, null, null, metadata !227, i32 1168} ; [ DW_TAG_subprogram ] [line 1167] [def] [scope 1168] [CCTK_NumVarsInGroup]
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786689, metadata !226, metadata !"groupname", metadata !36, i32 16778383, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 1167]
!229 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_numvarsingroup_", metadata !"cctk_numvarsingroup_", metadata !"", i32 1172, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_numvarsingroup_, null, null, metadata !230, i32 1175} ; [ DW_TAG_subprogram ] [line 1172] [def] [scope 1175] [cctk_numvarsingroup_]
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234}
!231 = metadata !{i32 786689, metadata !229, metadata !"num", metadata !36, i32 16778389, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 1173]
!232 = metadata !{i32 786689, metadata !229, metadata !"cctk_str1", metadata !36, i32 33555606, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1174]
!233 = metadata !{i32 786689, metadata !229, metadata !"cctk_strlen1", metadata !36, i32 50332822, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1174]
!234 = metadata !{i32 786688, metadata !229, metadata !"groupname", metadata !36, i32 1176, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupname] [line 1176]
!235 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupTypeFromVarI", metadata !"CCTK_GroupTypeFromVarI", metadata !"", i32 1196, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupTypeFromVarI, null, null, metadata !236, i32 1197} ; [ DW_TAG_subprogram ] [line 1196] [def] [scope 1197] [CCTK_GroupTypeFromVarI]
!236 = metadata !{metadata !237}
!237 = metadata !{i32 786689, metadata !235, metadata !"var", metadata !36, i32 16778412, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1196]
!238 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupTypeI", metadata !"CCTK_GroupTypeI", metadata !"", i32 1217, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupTypeI, null, null, metadata !239, i32 1218} ; [ DW_TAG_subprogram ] [line 1217] [def] [scope 1218] [CCTK_GroupTypeI]
!239 = metadata !{metadata !240}
!240 = metadata !{i32 786689, metadata !238, metadata !"group", metadata !36, i32 16778433, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1217]
!241 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarTypeI", metadata !"CCTK_VarTypeI", metadata !"", i32 1237, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_VarTypeI, null, null, metadata !242, i32 1238} ; [ DW_TAG_subprogram ] [line 1237] [def] [scope 1238] [CCTK_VarTypeI]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786689, metadata !241, metadata !"var", metadata !36, i32 16778453, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1237]
!244 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_vartypei_", metadata !"cctk_vartypei_", metadata !"", i32 1243, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_vartypei_, null, null, metadata !245, i32 1246} ; [ DW_TAG_subprogram ] [line 1243] [def] [scope 1246] [cctk_vartypei_]
!245 = metadata !{metadata !246, metadata !247}
!246 = metadata !{i32 786689, metadata !244, metadata !"type", metadata !36, i32 16778460, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 1244]
!247 = metadata !{i32 786689, metadata !244, metadata !"var", metadata !36, i32 33555677, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1245]
!248 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumTimeLevelsFromVarI", metadata !"CCTK_NumTimeLevelsFromVarI", metadata !"", i32 1265, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_NumTimeLevelsFromVarI, null, null, metadata !249, i32 1266} ; [ DW_TAG_subprogram ] [line 1265] [def] [scope 1266] [CCTK_NumTimeLevelsFromVarI]
!249 = metadata !{metadata !250}
!250 = metadata !{i32 786689, metadata !248, metadata !"var", metadata !36, i32 16778481, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1265]
!251 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_numtimelevelsfromvari_", metadata !"cctk_numtimelevelsfromvari_", metadata !"", i32 1271, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_numtimelevelsfromvari_, null, null, metadata !252, i32 1274} ; [ DW_TAG_subprogram ] [line 1271] [def] [scope 1274] [cctk_numtimelevelsfromvari_]
!252 = metadata !{metadata !253, metadata !254}
!253 = metadata !{i32 786689, metadata !251, metadata !"num", metadata !36, i32 16778488, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 1272]
!254 = metadata !{i32 786689, metadata !251, metadata !"var", metadata !36, i32 33555705, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1273]
!255 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_NumTimeLevelsFromVar", metadata !"CCTK_NumTimeLevelsFromVar", metadata !"", i32 1292, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_NumTimeLevelsFromVar, null, null, metadata !256, i32 1293} ; [ DW_TAG_subprogram ] [line 1292] [def] [scope 1293] [CCTK_NumTimeLevelsFromVar]
!256 = metadata !{metadata !257}
!257 = metadata !{i32 786689, metadata !255, metadata !"var", metadata !36, i32 16778508, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1292]
!258 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_numtimelevelsfromvar_", metadata !"cctk_numtimelevelsfromvar_", metadata !"", i32 1297, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_numtimelevelsfromvar_, null, null, metadata !259, i32 1300} ; [ DW_TAG_subprogram ] [line 1297] [def] [scope 1300] [cctk_numtimelevelsfromvar_]
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263}
!260 = metadata !{i32 786689, metadata !258, metadata !"num", metadata !36, i32 16778514, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 1298]
!261 = metadata !{i32 786689, metadata !258, metadata !"cctk_str1", metadata !36, i32 33555731, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1299]
!262 = metadata !{i32 786689, metadata !258, metadata !"cctk_strlen1", metadata !36, i32 50332947, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1299]
!263 = metadata !{i32 786688, metadata !258, metadata !"var", metadata !36, i32 1301, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 1301]
!264 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_printgroup_", metadata !"cctk_printgroup_", metadata !"", i32 1316, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_printgroup_, null, null, metadata !267, i32 1318} ; [ DW_TAG_subprogram ] [line 1316] [def] [scope 1318] [cctk_printgroup_]
!265 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{null, metadata !108}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 786689, metadata !264, metadata !"group", metadata !36, i32 16778533, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1317]
!269 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_printvar_", metadata !"cctk_printvar_", metadata !"", i32 1332, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @cctk_printvar_, null, null, metadata !270, i32 1334} ; [ DW_TAG_subprogram ] [line 1332] [def] [scope 1334] [cctk_printvar_]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786689, metadata !269, metadata !"var", metadata !36, i32 16778549, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1333]
!272 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupSizesI", metadata !"CCTK_GroupSizesI", metadata !"", i32 1353, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32** (i32)* @CCTK_GroupSizesI, null, null, metadata !276, i32 1354} ; [ DW_TAG_subprogram ] [line 1353] [def] [scope 1354] [CCTK_GroupSizesI]
!273 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{metadata !275, metadata !29}
!275 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!276 = metadata !{metadata !277}
!277 = metadata !{i32 786689, metadata !272, metadata !"group", metadata !36, i32 16778569, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1353]
!278 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupGhostsizesI", metadata !"CCTK_GroupGhostsizesI", metadata !"", i32 1374, metadata !273, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32** (i32)* @CCTK_GroupGhostsizesI, null, null, metadata !279, i32 1375} ; [ DW_TAG_subprogram ] [line 1374] [def] [scope 1375] [CCTK_GroupGhostsizesI]
!279 = metadata !{metadata !280}
!280 = metadata !{i32 786689, metadata !278, metadata !"group", metadata !36, i32 16778590, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1374]
!281 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_VarTypeSize", metadata !"CCTK_VarTypeSize", metadata !"", i32 1394, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_VarTypeSize, null, null, metadata !282, i32 1395} ; [ DW_TAG_subprogram ] [line 1394] [def] [scope 1395] [CCTK_VarTypeSize]
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786689, metadata !281, metadata !"vtype", metadata !36, i32 16778610, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 1394]
!284 = metadata !{i32 786688, metadata !281, metadata !"var_size", metadata !36, i32 1396, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var_size] [line 1396]
!285 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupDimI", metadata !"CCTK_GroupDimI", metadata !"", i32 1497, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupDimI, null, null, metadata !286, i32 1498} ; [ DW_TAG_subprogram ] [line 1497] [def] [scope 1498] [CCTK_GroupDimI]
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786689, metadata !285, metadata !"group", metadata !36, i32 16778713, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1497]
!288 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupdimi_", metadata !"cctk_groupdimi_", metadata !"", i32 1502, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_groupdimi_, null, null, metadata !289, i32 1505} ; [ DW_TAG_subprogram ] [line 1502] [def] [scope 1505] [cctk_groupdimi_]
!289 = metadata !{metadata !290, metadata !291}
!290 = metadata !{i32 786689, metadata !288, metadata !"dim", metadata !36, i32 16778719, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1503]
!291 = metadata !{i32 786689, metadata !288, metadata !"group", metadata !36, i32 33555936, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1504]
!292 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupDimFromVarI", metadata !"CCTK_GroupDimFromVarI", metadata !"", i32 1524, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupDimFromVarI, null, null, metadata !293, i32 1525} ; [ DW_TAG_subprogram ] [line 1524] [def] [scope 1525] [CCTK_GroupDimFromVarI]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786689, metadata !292, metadata !"var", metadata !36, i32 16778740, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1524]
!295 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cctk_groupdimfromvari_", metadata !"cctk_groupdimfromvari_", metadata !"", i32 1530, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_groupdimfromvari_, null, null, metadata !296, i32 1533} ; [ DW_TAG_subprogram ] [line 1530] [def] [scope 1533] [cctk_groupdimfromvari_]
!296 = metadata !{metadata !297, metadata !298}
!297 = metadata !{i32 786689, metadata !295, metadata !"dim", metadata !36, i32 16778747, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 1531]
!298 = metadata !{i32 786689, metadata !295, metadata !"var", metadata !36, i32 33555964, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 1532]
!299 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_TraverseString", metadata !"CCTK_TraverseString", metadata !"", i32 1582, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, void (i32, i8*, i8*)*, i8*, i32)* @CCTK_TraverseString, null, null, metadata !306, i32 1588} ; [ DW_TAG_subprogram ] [line 1582] [def] [scope 1588] [CCTK_TraverseString]
!300 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !29, metadata !39, metadata !302, metadata !305, metadata !29}
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!303 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{null, metadata !29, metadata !39, metadata !305}
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322}
!307 = metadata !{i32 786689, metadata !299, metadata !"traverse_string", metadata !36, i32 16778798, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [traverse_string] [line 1582]
!308 = metadata !{i32 786689, metadata !299, metadata !"callback", metadata !36, i32 33556015, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [callback] [line 1583]
!309 = metadata !{i32 786689, metadata !299, metadata !"callback_arg", metadata !36, i32 50333234, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [callback_arg] [line 1586]
!310 = metadata !{i32 786689, metadata !299, metadata !"selection", metadata !36, i32 67110451, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [selection] [line 1587]
!311 = metadata !{i32 786688, metadata !299, metadata !"retval", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1589]
!312 = metadata !{i32 786688, metadata !299, metadata !"nesting", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nesting] [line 1589]
!313 = metadata !{i32 786688, metadata !299, metadata !"vindex", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 1589]
!314 = metadata !{i32 786688, metadata !299, metadata !"gindex", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gindex] [line 1589]
!315 = metadata !{i32 786688, metadata !299, metadata !"first", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1589]
!316 = metadata !{i32 786688, metadata !299, metadata !"last", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1589]
!317 = metadata !{i32 786688, metadata !299, metadata !"selected_all", metadata !36, i32 1589, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [selected_all] [line 1589]
!318 = metadata !{i32 786688, metadata !299, metadata !"delimiter", metadata !36, i32 1590, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delimiter] [line 1590]
!319 = metadata !{i32 786688, metadata !299, metadata !"string", metadata !36, i32 1590, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string] [line 1590]
!320 = metadata !{i32 786688, metadata !299, metadata !"parse_string", metadata !36, i32 1590, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parse_string] [line 1590]
!321 = metadata !{i32 786688, metadata !299, metadata !"group_var_string", metadata !36, i32 1590, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_var_string] [line 1590]
!322 = metadata !{i32 786688, metadata !299, metadata !"option_string", metadata !36, i32 1590, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option_string] [line 1590]
!323 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_CreateGroup", metadata !"CCTKi_CreateGroup", metadata !"", i32 1815, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup, null, null, metadata !326, i32 1830} ; [ DW_TAG_subprogram ] [line 1815] [def] [scope 1830] [CCTKi_CreateGroup]
!324 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!325 = metadata !{metadata !29, metadata !39, metadata !39, metadata !39, metadata !39, metadata !39, metadata !39, metadata !29, metadata !29, metadata !39, metadata !39, metadata !39, metadata !39, metadata !29}
!326 = metadata !{metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !358, metadata !359, metadata !360, metadata !388}
!327 = metadata !{i32 786689, metadata !323, metadata !"gname", metadata !36, i32 16779031, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 1815]
!328 = metadata !{i32 786689, metadata !323, metadata !"thorn", metadata !36, i32 33556248, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 1816]
!329 = metadata !{i32 786689, metadata !323, metadata !"imp", metadata !36, i32 50333465, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imp] [line 1817]
!330 = metadata !{i32 786689, metadata !323, metadata !"gtype", metadata !36, i32 67110682, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gtype] [line 1818]
!331 = metadata !{i32 786689, metadata !323, metadata !"vtype", metadata !36, i32 83887899, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtype] [line 1819]
!332 = metadata !{i32 786689, metadata !323, metadata !"gscope", metadata !36, i32 100665116, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gscope] [line 1820]
!333 = metadata !{i32 786689, metadata !323, metadata !"dimension", metadata !36, i32 117442333, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dimension] [line 1821]
!334 = metadata !{i32 786689, metadata !323, metadata !"ntimelevels", metadata !36, i32 134219550, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntimelevels] [line 1822]
!335 = metadata !{i32 786689, metadata !323, metadata !"stype", metadata !36, i32 150996767, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stype] [line 1823]
!336 = metadata !{i32 786689, metadata !323, metadata !"dtype", metadata !36, i32 167773984, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtype] [line 1824]
!337 = metadata !{i32 786689, metadata !323, metadata !"size", metadata !36, i32 184551201, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1825]
!338 = metadata !{i32 786689, metadata !323, metadata !"ghostsize", metadata !36, i32 201328418, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghostsize] [line 1826]
!339 = metadata !{i32 786689, metadata !323, metadata !"n_variables", metadata !36, i32 218105635, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 1827]
!340 = metadata !{i32 786688, metadata !323, metadata !"retval", metadata !36, i32 1831, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1831]
!341 = metadata !{i32 786688, metadata !323, metadata !"groupscope", metadata !36, i32 1832, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupscope] [line 1832]
!342 = metadata !{i32 786688, metadata !323, metadata !"staggercode", metadata !36, i32 1833, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [staggercode] [line 1833]
!343 = metadata !{i32 786688, metadata !323, metadata !"variable", metadata !36, i32 1834, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 1834]
!344 = metadata !{i32 786688, metadata !323, metadata !"ap", metadata !36, i32 1836, metadata !345, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1836]
!345 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!346 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!347 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 1836, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 1836, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !349, metadata !356, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!349 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 1836, i64 0, i64 0, i64 0, i32 0, metadata !350} ; [ DW_TAG_typedef ] [__va_list_tag] [line 1836, size 0, align 0, offset 0] [from __va_list_tag]
!350 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 1836, i64 192, i64 64, i32 0, i32 0, null, metadata !351, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 1836, size 192, align 64, offset 0] [from ]
!351 = metadata !{metadata !352, metadata !353, metadata !354, metadata !355}
!352 = metadata !{i32 786445, metadata !1, metadata !350, metadata !"gp_offset", i32 1836, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [gp_offset] [line 1836, size 32, align 32, offset 0] [from unsigned int]
!353 = metadata !{i32 786445, metadata !1, metadata !350, metadata !"fp_offset", i32 1836, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [fp_offset] [line 1836, size 32, align 32, offset 32] [from unsigned int]
!354 = metadata !{i32 786445, metadata !1, metadata !350, metadata !"overflow_arg_area", i32 1836, i64 64, i64 64, i64 64, i32 0, metadata !305} ; [ DW_TAG_member ] [overflow_arg_area] [line 1836, size 64, align 64, offset 64] [from ]
!355 = metadata !{i32 786445, metadata !1, metadata !350, metadata !"reg_save_area", i32 1836, i64 64, i64 64, i64 128, i32 0, metadata !305} ; [ DW_TAG_member ] [reg_save_area] [line 1836, size 64, align 64, offset 128] [from ]
!356 = metadata !{metadata !357}
!357 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!358 = metadata !{i32 786688, metadata !323, metadata !"variable_name", metadata !36, i32 1838, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable_name] [line 1838]
!359 = metadata !{i32 786688, metadata !323, metadata !"vararraysize", metadata !36, i32 1839, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vararraysize] [line 1839]
!360 = metadata !{i32 786688, metadata !323, metadata !"group", metadata !36, i32 1841, metadata !361, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 1841]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !362} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGroupDefinition]
!362 = metadata !{i32 786454, metadata !1, null, metadata !"cGroupDefinition", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_typedef ] [cGroupDefinition] [line 153, size 0, align 0, offset 0] [from ]
!363 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 116, i64 768, i64 64, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 116, size 768, align 64, offset 0] [from ]
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !387}
!365 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"thorn", i32 119, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [thorn] [line 119, size 64, align 64, offset 0] [from ]
!366 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"implementation", i32 120, i64 64, i64 64, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ] [implementation] [line 120, size 64, align 64, offset 64] [from ]
!367 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"name", i32 121, i64 64, i64 64, i64 128, i32 0, metadata !53} ; [ DW_TAG_member ] [name] [line 121, size 64, align 64, offset 128] [from ]
!368 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"number", i32 124, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [number] [line 124, size 32, align 32, offset 192] [from int]
!369 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"gtype", i32 127, i64 32, i64 32, i64 224, i32 0, metadata !29} ; [ DW_TAG_member ] [gtype] [line 127, size 32, align 32, offset 224] [from int]
!370 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"vtype", i32 128, i64 32, i64 32, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtype] [line 128, size 32, align 32, offset 256] [from int]
!371 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"dtype", i32 129, i64 32, i64 32, i64 288, i32 0, metadata !29} ; [ DW_TAG_member ] [dtype] [line 129, size 32, align 32, offset 288] [from int]
!372 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"staggertype", i32 130, i64 32, i64 32, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [staggertype] [line 130, size 32, align 32, offset 320] [from int]
!373 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"gscope", i32 132, i64 32, i64 32, i64 352, i32 0, metadata !29} ; [ DW_TAG_member ] [gscope] [line 132, size 32, align 32, offset 352] [from int]
!374 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"dim", i32 134, i64 32, i64 32, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [dim] [line 134, size 32, align 32, offset 384] [from int]
!375 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"n_timelevels", i32 136, i64 32, i64 32, i64 416, i32 0, metadata !29} ; [ DW_TAG_member ] [n_timelevels] [line 136, size 32, align 32, offset 416] [from int]
!376 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"n_variables", i32 138, i64 32, i64 32, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [n_variables] [line 138, size 32, align 32, offset 448] [from int]
!377 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"size", i32 141, i64 64, i64 64, i64 512, i32 0, metadata !275} ; [ DW_TAG_member ] [size] [line 141, size 64, align 64, offset 512] [from ]
!378 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"ghostsize", i32 144, i64 64, i64 64, i64 576, i32 0, metadata !275} ; [ DW_TAG_member ] [ghostsize] [line 144, size 64, align 64, offset 576] [from ]
!379 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"variables", i32 147, i64 64, i64 64, i64 640, i32 0, metadata !380} ; [ DW_TAG_member ] [variables] [line 147, size 64, align 64, offset 640] [from ]
!380 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !381} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cVariableDefinition]
!381 = metadata !{i32 786454, metadata !1, null, metadata !"cVariableDefinition", i32 114, i64 0, i64 0, i64 0, i32 0, metadata !382} ; [ DW_TAG_typedef ] [cVariableDefinition] [line 114, size 0, align 0, offset 0] [from ]
!382 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 107, i64 192, i64 64, i32 0, i32 0, null, metadata !383, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 107, size 192, align 64, offset 0] [from ]
!383 = metadata !{metadata !384, metadata !385, metadata !386}
!384 = metadata !{i32 786445, metadata !1, metadata !382, metadata !"name", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [name] [line 109, size 64, align 64, offset 0] [from ]
!385 = metadata !{i32 786445, metadata !1, metadata !382, metadata !"number", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [number] [line 110, size 32, align 32, offset 64] [from int]
!386 = metadata !{i32 786445, metadata !1, metadata !382, metadata !"dimensional_comm_array", i32 113, i64 64, i64 64, i64 128, i32 0, metadata !53} ; [ DW_TAG_member ] [dimensional_comm_array] [line 113, size 64, align 64, offset 128] [from ]
!387 = metadata !{i32 786445, metadata !1, metadata !363, metadata !"vararraysize", i32 151, i64 64, i64 64, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [vararraysize] [line 151, size 64, align 64, offset 704] [from ]
!388 = metadata !{i32 786688, metadata !389, metadata !"name", metadata !36, i32 1925, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1925]
!389 = metadata !{i32 786443, metadata !1, metadata !390, i32 1924, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!390 = metadata !{i32 786443, metadata !1, metadata !391, i32 1923, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!391 = metadata !{i32 786443, metadata !1, metadata !392, i32 1920, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!392 = metadata !{i32 786443, metadata !1, metadata !323, i32 1888, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!393 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTK_GroupImplementationI", metadata !"CCTK_GroupImplementationI", metadata !"", i32 1997, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_GroupImplementationI, null, null, metadata !394, i32 1998} ; [ DW_TAG_subprogram ] [line 1997] [def] [scope 1998] [CCTK_GroupImplementationI]
!394 = metadata !{metadata !395, metadata !396}
!395 = metadata !{i32 786689, metadata !393, metadata !"group", metadata !36, i32 16779213, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 1997]
!396 = metadata !{i32 786688, metadata !393, metadata !"imp", metadata !36, i32 1999, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imp] [line 1999]
!397 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_GroupLengthAsPointer", metadata !"CCTKi_GroupLengthAsPointer", metadata !"", i32 2230, metadata !398, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (i8*)* @CCTKi_GroupLengthAsPointer, null, null, metadata !400, i32 2231} ; [ DW_TAG_subprogram ] [line 2230] [def] [scope 2231] [CCTKi_GroupLengthAsPointer]
!398 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{metadata !108, metadata !39}
!400 = metadata !{metadata !401, metadata !402, metadata !403, metadata !404, metadata !405}
!401 = metadata !{i32 786689, metadata !397, metadata !"fullgroupname", metadata !36, i32 16779446, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullgroupname] [line 2230]
!402 = metadata !{i32 786688, metadata !397, metadata !"group", metadata !36, i32 2232, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 2232]
!403 = metadata !{i32 786688, metadata !397, metadata !"retval", metadata !36, i32 2233, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 2233]
!404 = metadata !{i32 786688, metadata !397, metadata !"impname", metadata !36, i32 2234, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [impname] [line 2234]
!405 = metadata !{i32 786688, metadata !397, metadata !"groupname", metadata !36, i32 2234, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupname] [line 2234]
!406 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_ParamExpressionToInt", metadata !"CCTKi_ParamExpressionToInt", metadata !"", i32 2420, metadata !407, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTKi_ParamExpressionToInt, null, null, metadata !409, i32 2421} ; [ DW_TAG_subprogram ] [line 2420] [local] [def] [scope 2421] [CCTKi_ParamExpressionToInt]
!407 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{metadata !29, metadata !39, metadata !39}
!409 = metadata !{metadata !410, metadata !411, metadata !412, metadata !413, metadata !415, metadata !417}
!410 = metadata !{i32 786689, metadata !406, metadata !"expression", metadata !36, i32 16779636, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [expression] [line 2420]
!411 = metadata !{i32 786689, metadata !406, metadata !"thorn", metadata !36, i32 33556852, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 2420]
!412 = metadata !{i32 786688, metadata !406, metadata !"retval", metadata !36, i32 2422, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 2422]
!413 = metadata !{i32 786688, metadata !406, metadata !"parsed_expression", metadata !36, i32 2423, metadata !414, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parsed_expression] [line 2423]
!414 = metadata !{i32 786454, metadata !1, null, metadata !"uExpression", i32 33, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [uExpression] [line 33, size 0, align 0, offset 0] [from ]
!415 = metadata !{i32 786688, metadata !406, metadata !"value", metadata !36, i32 2424, metadata !416, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 2424]
!416 = metadata !{i32 786454, metadata !1, null, metadata !"uExpressionValue", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [uExpressionValue] [line 29, size 0, align 0, offset 0] [from ]
!417 = metadata !{i32 786688, metadata !406, metadata !"this_thorn", metadata !36, i32 2425, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_thorn] [line 2425]
!418 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"IntParameterEvaluator", metadata !"IntParameterEvaluator", metadata !"", i32 2321, metadata !419, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**, %struct.uExpressionValue*, i8*)* @IntParameterEvaluator, null, null, metadata !424, i32 2325} ; [ DW_TAG_subprogram ] [line 2321] [local] [def] [scope 2325] [IntParameterEvaluator]
!419 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!420 = metadata !{metadata !29, metadata !29, metadata !421, metadata !423, metadata !305}
!421 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !422} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!422 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !416} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uExpressionValue]
!424 = metadata !{metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437}
!425 = metadata !{i32 786689, metadata !418, metadata !"nvars", metadata !36, i32 16779537, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvars] [line 2321]
!426 = metadata !{i32 786689, metadata !418, metadata !"vars", metadata !36, i32 33556754, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vars] [line 2322]
!427 = metadata !{i32 786689, metadata !418, metadata !"vals", metadata !36, i32 50333971, metadata !423, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vals] [line 2323]
!428 = metadata !{i32 786689, metadata !418, metadata !"data", metadata !36, i32 67111188, metadata !305, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 2324]
!429 = metadata !{i32 786688, metadata !418, metadata !"i", metadata !36, i32 2326, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2326]
!430 = metadata !{i32 786688, metadata !418, metadata !"tmp", metadata !36, i32 2328, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 2328]
!431 = metadata !{i32 786688, metadata !418, metadata !"endptr", metadata !36, i32 2329, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 2329]
!432 = metadata !{i32 786688, metadata !418, metadata !"paramval", metadata !36, i32 2330, metadata !108, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [paramval] [line 2330]
!433 = metadata !{i32 786688, metadata !418, metadata !"thorn", metadata !36, i32 2331, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 2331]
!434 = metadata !{i32 786688, metadata !418, metadata !"param", metadata !36, i32 2332, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param] [line 2332]
!435 = metadata !{i32 786688, metadata !418, metadata !"use_thorn", metadata !36, i32 2333, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_thorn] [line 2333]
!436 = metadata !{i32 786688, metadata !418, metadata !"use_param", metadata !36, i32 2334, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_param] [line 2334]
!437 = metadata !{i32 786688, metadata !418, metadata !"type", metadata !36, i32 2335, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 2335]
!438 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_ExtractSize", metadata !"CCTKi_ExtractSize", metadata !"", i32 2151, metadata !439, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32** (i32, i8*, i8*)* @CCTKi_ExtractSize, null, null, metadata !441, i32 2154} ; [ DW_TAG_subprogram ] [line 2151] [local] [def] [scope 2154] [CCTKi_ExtractSize]
!439 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!440 = metadata !{metadata !275, metadata !29, metadata !39, metadata !39}
!441 = metadata !{metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449}
!442 = metadata !{i32 786689, metadata !438, metadata !"dimension", metadata !36, i32 16779367, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dimension] [line 2151]
!443 = metadata !{i32 786689, metadata !438, metadata !"this_thorn", metadata !36, i32 33556584, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_thorn] [line 2152]
!444 = metadata !{i32 786689, metadata !438, metadata !"sizestring", metadata !36, i32 50333801, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizestring] [line 2153]
!445 = metadata !{i32 786688, metadata !438, metadata !"dim", metadata !36, i32 2155, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 2155]
!446 = metadata !{i32 786688, metadata !438, metadata !"tmp", metadata !36, i32 2156, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 2156]
!447 = metadata !{i32 786688, metadata !438, metadata !"last_comma", metadata !36, i32 2157, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last_comma] [line 2157]
!448 = metadata !{i32 786688, metadata !438, metadata !"next_comma", metadata !36, i32 2157, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next_comma] [line 2157]
!449 = metadata !{i32 786688, metadata !438, metadata !"size_array", metadata !36, i32 2158, metadata !275, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size_array] [line 2158]
!450 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"CCTKi_SetupGroup", metadata !"CCTKi_SetupGroup", metadata !"", i32 2024, metadata !451, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.cGroupDefinition* (i8*, i8*, i32, i32)* @CCTKi_SetupGroup, null, null, metadata !453, i32 2028} ; [ DW_TAG_subprogram ] [line 2024] [local] [def] [scope 2028] [CCTKi_SetupGroup]
!451 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!452 = metadata !{metadata !361, metadata !39, metadata !39, metadata !29, metadata !29}
!453 = metadata !{metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462}
!454 = metadata !{i32 786689, metadata !450, metadata !"implementation", metadata !36, i32 16779240, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [implementation] [line 2024]
!455 = metadata !{i32 786689, metadata !450, metadata !"name", metadata !36, i32 33556457, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 2025]
!456 = metadata !{i32 786689, metadata !450, metadata !"staggercode", metadata !36, i32 50333674, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [staggercode] [line 2026]
!457 = metadata !{i32 786689, metadata !450, metadata !"n_variables", metadata !36, i32 67110891, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_variables] [line 2027]
!458 = metadata !{i32 786688, metadata !450, metadata !"temp_int", metadata !36, i32 2029, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp_int] [line 2029]
!459 = metadata !{i32 786688, metadata !450, metadata !"temp", metadata !36, i32 2030, metadata !305, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 2030]
!460 = metadata !{i32 786688, metadata !450, metadata !"returndata", metadata !36, i32 2031, metadata !361, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [returndata] [line 2031]
!461 = metadata !{i32 786688, metadata !450, metadata !"variable", metadata !36, i32 2032, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 2032]
!462 = metadata !{i32 786688, metadata !450, metadata !"group", metadata !36, i32 2033, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 2033]
!463 = metadata !{metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472}
!464 = metadata !{i32 786484, i32 0, null, metadata !"_cctk_one", metadata !"_cctk_one", metadata !"", metadata !36, i32 177, metadata !29, i32 0, i32 1, i32* @_cctk_one, null} ; [ DW_TAG_variable ] [_cctk_one] [line 177] [def]
!465 = metadata !{i32 786484, i32 0, null, metadata !"gfdim", metadata !"gfdim", metadata !"", metadata !36, i32 169, metadata !29, i32 1, i32 1, i32* @gfdim, null} ; [ DW_TAG_variable ] [gfdim] [line 169] [local] [def]
!466 = metadata !{i32 786484, i32 0, null, metadata !"group_of_variable", metadata !"group_of_variable", metadata !"", metadata !36, i32 166, metadata !58, i32 1, i32 1, i32** @group_of_variable, null} ; [ DW_TAG_variable ] [group_of_variable] [line 166] [local] [def]
!467 = metadata !{i32 786484, i32 0, null, metadata !"total_variables", metadata !"total_variables", metadata !"", metadata !36, i32 164, metadata !29, i32 1, i32 1, i32* @total_variables, null} ; [ DW_TAG_variable ] [total_variables] [line 164] [local] [def]
!468 = metadata !{i32 786484, i32 0, null, metadata !"maxdim", metadata !"maxdim", metadata !"", metadata !36, i32 168, metadata !29, i32 1, i32 1, i32* @maxdim, null} ; [ DW_TAG_variable ] [maxdim] [line 168] [local] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"groups", metadata !"groups", metadata !"", metadata !36, i32 162, metadata !361, i32 1, i32 1, %struct.cGroupDefinition** @groups, null} ; [ DW_TAG_variable ] [groups] [line 162] [local] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"n_groups", metadata !"n_groups", metadata !"", metadata !36, i32 161, metadata !29, i32 1, i32 1, i32* @n_groups, null} ; [ DW_TAG_variable ] [n_groups] [line 161] [local] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"staggered", metadata !"staggered", metadata !"", metadata !36, i32 171, metadata !29, i32 1, i32 1, null, null}
!472 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !36, i32 37, metadata !39, i32 1, i32 1, null, null}
!473 = metadata !{i32 39, i32 0, metadata !35, null}
!474 = metadata !{i32 208, i32 0, metadata !42, null}
!475 = metadata !{i32 227, i32 0, metadata !45, null}
!476 = metadata !{i32 231, i32 0, metadata !45, null}
!477 = metadata !{i32 232, i32 0, metadata !45, null}
!478 = metadata !{i8* null}
!479 = metadata !{i32 235, i32 0, metadata !45, null}
!480 = metadata !{metadata !"any pointer", metadata !481}
!481 = metadata !{metadata !"omnipotent char", metadata !482}
!482 = metadata !{metadata !"Simple C/C++ TBAA"}
!483 = metadata !{i32 236, i32 0, metadata !45, null}
!484 = metadata !{i32 237, i32 0, metadata !45, null}
!485 = metadata !{i32 240, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !487, i32 240, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!487 = metadata !{i32 786443, metadata !1, metadata !45, i32 238, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!488 = metadata !{metadata !"int", metadata !481}
!489 = metadata !{i32 242, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !486, i32 241, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!491 = metadata !{i32 243, i32 0, metadata !490, null}
!492 = metadata !{i32 250, i32 0, metadata !487, null}
!493 = metadata !{i32 252, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !487, i32 251, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!495 = metadata !{i32 255, i32 0, metadata !494, null}
!496 = metadata !{i32 259, i32 0, metadata !45, null}
!497 = metadata !{i32 261, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !45, i32 260, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!499 = metadata !{i32 262, i32 0, metadata !498, null}
!500 = metadata !{i32 263, i32 0, metadata !45, null}
!501 = metadata !{i32 265, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !45, i32 264, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!503 = metadata !{i32 266, i32 0, metadata !502, null}
!504 = metadata !{i32 268, i32 0, metadata !45, null}
!505 = metadata !{i32 1014, i32 0, metadata !200, null}
!506 = metadata !{i32 1015, i32 0, metadata !200, null}
!507 = metadata !{i32 1016, i32 0, metadata !200, null}
!508 = metadata !{i32 1021, i32 0, metadata !200, null}
!509 = metadata !{i32 1022, i32 0, metadata !200, null}
!510 = metadata !{i32 1026, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 1025, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!512 = metadata !{i32 786443, metadata !1, metadata !200, i32 1023, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!513 = metadata !{i32 -3}
!514 = metadata !{i32 1029, i32 0, metadata !511, null}
!515 = metadata !{i32 1030, i32 0, metadata !511, null}
!516 = metadata !{i32 1033, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !512, i32 1032, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!518 = metadata !{i32 -4}
!519 = metadata !{i32 1035, i32 0, metadata !517, null}
!520 = metadata !{i32 1036, i32 0, metadata !517, null}
!521 = metadata !{i32 1039, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !512, i32 1038, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!523 = metadata !{i32 -2}
!524 = metadata !{i32 1041, i32 0, metadata !522, null}
!525 = metadata !{i32 1045, i32 0, metadata !200, null}
!526 = metadata !{i32 272, i32 0, metadata !55, null}
!527 = metadata !{i32 273, i32 0, metadata !55, null}
!528 = metadata !{i32 275, i32 0, metadata !55, null}
!529 = metadata !{i32 276, i32 0, metadata !55, null}
!530 = metadata !{i32 277, i32 0, metadata !55, null}
!531 = metadata !{i32 278, i32 0, metadata !55, null}
!532 = metadata !{i32 296, i32 0, metadata !65, null}
!533 = metadata !{i32 301, i32 0, metadata !65, null}
!534 = metadata !{i32 302, i32 0, metadata !65, null}
!535 = metadata !{i32 305, i32 0, metadata !65, null}
!536 = metadata !{i32 306, i32 0, metadata !65, null}
!537 = metadata !{i32 307, i32 0, metadata !65, null}
!538 = metadata !{i32 310, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !540, i32 310, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!540 = metadata !{i32 786443, metadata !1, metadata !65, i32 308, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!541 = metadata !{i32 312, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !539, i32 311, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!543 = metadata !{i32 314, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !545, i32 314, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!545 = metadata !{i32 786443, metadata !1, metadata !542, i32 313, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!546 = metadata !{i32 316, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !544, i32 315, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!548 = metadata !{i32 318, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 317, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!550 = metadata !{i32 319, i32 0, metadata !549, null}
!551 = metadata !{i32 325, i32 0, metadata !540, null}
!552 = metadata !{i32 327, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !540, i32 326, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!554 = metadata !{i32 330, i32 0, metadata !553, null}
!555 = metadata !{i32 340, i32 0, metadata !65, null}
!556 = metadata !{i32 342, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !65, i32 341, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!558 = metadata !{i32 343, i32 0, metadata !557, null}
!559 = metadata !{i32 344, i32 0, metadata !65, null}
!560 = metadata !{i32 346, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !65, i32 345, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!562 = metadata !{i32 347, i32 0, metadata !561, null}
!563 = metadata !{i32 349, i32 0, metadata !65, null}
!564 = metadata !{i32 353, i32 0, metadata !73, null}
!565 = metadata !{i32 354, i32 0, metadata !73, null}
!566 = metadata !{i32 356, i32 0, metadata !73, null}
!567 = metadata !{i32 357, i32 0, metadata !73, null}
!568 = metadata !{i32 358, i32 0, metadata !73, null}
!569 = metadata !{i32 359, i32 0, metadata !73, null}
!570 = metadata !{i32 377, i32 0, metadata !79, null}
!571 = metadata !{i32 381, i32 0, metadata !80, null}
!572 = metadata !{i32 377, i32 0, metadata !79, metadata !573}
!573 = metadata !{i32 383, i32 0, metadata !80, null}
!574 = metadata !{i32 384, i32 0, metadata !80, null}
!575 = metadata !{i32 402, i32 0, metadata !85, null}
!576 = metadata !{i32 406, i32 0, metadata !86, null}
!577 = metadata !{i32 402, i32 0, metadata !85, metadata !578}
!578 = metadata !{i32 408, i32 0, metadata !86, null}
!579 = metadata !{i32 409, i32 0, metadata !86, null}
!580 = metadata !{i32 427, i32 0, metadata !89, null}
!581 = metadata !{i32 431, i32 0, metadata !90, null}
!582 = metadata !{i32 427, i32 0, metadata !89, metadata !583}
!583 = metadata !{i32 433, i32 0, metadata !90, null}
!584 = metadata !{i32 434, i32 0, metadata !90, null}
!585 = metadata !{i32 452, i32 0, metadata !93, null}
!586 = metadata !{i32 458, i32 0, metadata !93, null}
!587 = metadata !{i32 460, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !93, i32 459, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!589 = metadata !{i32 461, i32 0, metadata !588, null}
!590 = metadata !{i32 462, i32 0, metadata !588, null}
!591 = metadata !{i32 463, i32 0, metadata !588, null}
!592 = metadata !{i32 465, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !588, i32 464, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!594 = metadata !{i32 467, i32 0, metadata !593, null}
!595 = metadata !{i32 474, i32 0, metadata !93, null}
!596 = metadata !{i32 492, i32 0, metadata !100, null}
!597 = metadata !{i32 494, i32 0, metadata !100, null}
!598 = metadata !{i32 498, i32 0, metadata !105, null}
!599 = metadata !{i32 499, i32 0, metadata !105, null}
!600 = metadata !{i32 501, i32 0, metadata !105, null}
!601 = metadata !{i32 786689, metadata !100, metadata !"var", metadata !36, i32 16777708, metadata !29, i32 0, metadata !600} ; [ DW_TAG_arg_variable ] [var] [line 492]
!602 = metadata !{i32 492, i32 0, metadata !100, metadata !600}
!603 = metadata !{i32 494, i32 0, metadata !100, metadata !600}
!604 = metadata !{i32 502, i32 0, metadata !105, null}
!605 = metadata !{i32 520, i32 0, metadata !113, null}
!606 = metadata !{i32 522, i32 0, metadata !113, null}
!607 = metadata !{i32 786689, metadata !100, metadata !"var", metadata !36, i32 16777708, metadata !29, i32 0, metadata !606} ; [ DW_TAG_arg_variable ] [var] [line 492]
!608 = metadata !{i32 492, i32 0, metadata !100, metadata !606}
!609 = metadata !{i32 494, i32 0, metadata !100, metadata !606}
!610 = metadata !{i32 526, i32 0, metadata !116, null}
!611 = metadata !{i32 527, i32 0, metadata !116, null}
!612 = metadata !{i32 529, i32 0, metadata !116, null}
!613 = metadata !{i32 530, i32 0, metadata !116, null}
!614 = metadata !{i32 531, i32 0, metadata !116, null}
!615 = metadata !{i32 532, i32 0, metadata !116, null}
!616 = metadata !{i32 549, i32 0, metadata !122, null}
!617 = metadata !{i32 551, i32 0, metadata !122, null}
!618 = metadata !{i32 572, i32 0, metadata !127, null}
!619 = metadata !{i32 579, i32 0, metadata !127, null}
!620 = metadata !{i32 580, i32 0, metadata !127, null}
!621 = metadata !{i32 582, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !127, i32 581, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!623 = metadata !{i32 583, i32 0, metadata !622, null}
!624 = metadata !{i32 584, i32 0, metadata !622, null}
!625 = metadata !{i32 586, i32 0, metadata !626, null}
!626 = metadata !{i32 786443, metadata !1, metadata !622, i32 585, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!627 = metadata !{i32 587, i32 0, metadata !626, null}
!628 = metadata !{i32 594, i32 0, metadata !127, null}
!629 = metadata !{i32 984, i32 0, metadata !197, null}
!630 = metadata !{i32 986, i32 0, metadata !197, null}
!631 = metadata !{i32 612, i32 0, metadata !133, null}
!632 = metadata !{i32 617, i32 0, metadata !133, null}
!633 = metadata !{i32 621, i32 0, metadata !133, null}
!634 = metadata !{i32 625, i32 0, metadata !133, null}
!635 = metadata !{i32 628, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !133, i32 626, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!637 = metadata !{i32 634, i32 0, metadata !133, null}
!638 = metadata !{i32 638, i32 0, metadata !137, null}
!639 = metadata !{i32 639, i32 0, metadata !137, null}
!640 = metadata !{i32 641, i32 0, metadata !137, null}
!641 = metadata !{i32 642, i32 0, metadata !137, null}
!642 = metadata !{i32 643, i32 0, metadata !137, null}
!643 = metadata !{i32 644, i32 0, metadata !137, null}
!644 = metadata !{i32 661, i32 0, metadata !143, null}
!645 = metadata !{i32 666, i32 0, metadata !143, null}
!646 = metadata !{i32 670, i32 0, metadata !143, null}
!647 = metadata !{i32 674, i32 0, metadata !143, null}
!648 = metadata !{i32 678, i32 0, metadata !143, null}
!649 = metadata !{i32 682, i32 0, metadata !143, null}
!650 = metadata !{i32 686, i32 0, metadata !143, null}
!651 = metadata !{i32 690, i32 0, metadata !143, null}
!652 = metadata !{i32 694, i32 0, metadata !143, null}
!653 = metadata !{i32 698, i32 0, metadata !143, null}
!654 = metadata !{i32 702, i32 0, metadata !143, null}
!655 = metadata !{i32 706, i32 0, metadata !143, null}
!656 = metadata !{i32 710, i32 0, metadata !143, null}
!657 = metadata !{i32 714, i32 0, metadata !143, null}
!658 = metadata !{i32 719, i32 0, metadata !143, null}
!659 = metadata !{i32 722, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !143, i32 720, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!661 = metadata !{i32 728, i32 0, metadata !143, null}
!662 = metadata !{i32 732, i32 0, metadata !147, null}
!663 = metadata !{i32 733, i32 0, metadata !147, null}
!664 = metadata !{i32 735, i32 0, metadata !147, null}
!665 = metadata !{i32 736, i32 0, metadata !147, null}
!666 = metadata !{i32 737, i32 0, metadata !147, null}
!667 = metadata !{i32 738, i32 0, metadata !147, null}
!668 = metadata !{i32 755, i32 0, metadata !153, null}
!669 = metadata !{i32 760, i32 0, metadata !153, null}
!670 = metadata !{i32 815, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !153, i32 761, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!672 = metadata !{i32 819, i32 0, metadata !153, null}
!673 = metadata !{i32 837, i32 0, metadata !157, null}
!674 = metadata !{i32 842, i32 0, metadata !157, null}
!675 = metadata !{i32 846, i32 0, metadata !157, null}
!676 = metadata !{i32 850, i32 0, metadata !157, null}
!677 = metadata !{i32 853, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !157, i32 851, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!679 = metadata !{i32 859, i32 0, metadata !157, null}
!680 = metadata !{i32 863, i32 0, metadata !161, null}
!681 = metadata !{i32 864, i32 0, metadata !161, null}
!682 = metadata !{i32 866, i32 0, metadata !161, null}
!683 = metadata !{i32 867, i32 0, metadata !161, null}
!684 = metadata !{i32 868, i32 0, metadata !161, null}
!685 = metadata !{i32 869, i32 0, metadata !161, null}
!686 = metadata !{i32 886, i32 0, metadata !167, null}
!687 = metadata !{i32 891, i32 0, metadata !167, null}
!688 = metadata !{i32 895, i32 0, metadata !167, null}
!689 = metadata !{i32 898, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !167, i32 896, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!691 = metadata !{i32 904, i32 0, metadata !167, null}
!692 = metadata !{i32 908, i32 0, metadata !171, null}
!693 = metadata !{i32 909, i32 0, metadata !171, null}
!694 = metadata !{i32 911, i32 0, metadata !171, null}
!695 = metadata !{i32 912, i32 0, metadata !171, null}
!696 = metadata !{i32 913, i32 0, metadata !171, null}
!697 = metadata !{i32 914, i32 0, metadata !171, null}
!698 = metadata !{i32 933, i32 0, metadata !177, null}
!699 = metadata !{i32 938, i32 0, metadata !177, null}
!700 = metadata !{i32 935, i32 0, metadata !177, null}
!701 = metadata !{i32 939, i32 0, metadata !177, null}
!702 = metadata !{i32 941, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !177, i32 940, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!704 = metadata !{i32 943, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 942, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!706 = metadata !{i32 944, i32 0, metadata !705, null}
!707 = metadata !{i32 945, i32 0, metadata !705, null}
!708 = metadata !{i32 946, i32 0, metadata !705, null}
!709 = metadata !{i32 947, i32 0, metadata !705, null}
!710 = metadata !{i32 948, i32 0, metadata !705, null}
!711 = metadata !{i32 949, i32 0, metadata !705, null}
!712 = metadata !{i32 951, i32 0, metadata !705, null}
!713 = metadata !{i32 953, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !705, i32 952, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!715 = metadata !{i32 954, i32 0, metadata !714, null}
!716 = metadata !{i32 957, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !705, i32 956, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!718 = metadata !{i32 966, i32 0, metadata !177, null}
!719 = metadata !{i32 1064, i32 0, metadata !209, null}
!720 = metadata !{i32 1069, i32 0, metadata !209, null}
!721 = metadata !{i32 1070, i32 0, metadata !209, null}
!722 = metadata !{i32 1072, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !209, i32 1071, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!724 = metadata !{i32 1073, i32 0, metadata !723, null}
!725 = metadata !{i32 1074, i32 0, metadata !723, null}
!726 = metadata !{i32 1076, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !723, i32 1075, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!728 = metadata !{i32 1078, i32 0, metadata !727, null}
!729 = metadata !{i32 1081, i32 0, metadata !209, null}
!730 = metadata !{i32 1099, i32 0, metadata !213, null}
!731 = metadata !{i32 1101, i32 0, metadata !213, null}
!732 = metadata !{i32 1106, i32 0, metadata !216, null}
!733 = metadata !{i32 1107, i32 0, metadata !216, null}
!734 = metadata !{i32 1109, i32 0, metadata !216, null}
!735 = metadata !{i32 786689, metadata !213, metadata !"group", metadata !36, i32 16778315, metadata !29, i32 0, metadata !734} ; [ DW_TAG_arg_variable ] [group] [line 1099]
!736 = metadata !{i32 1099, i32 0, metadata !213, metadata !734}
!737 = metadata !{i32 1101, i32 0, metadata !213, metadata !734}
!738 = metadata !{i32 1110, i32 0, metadata !216, null}
!739 = metadata !{i32 1127, i32 0, metadata !220, null}
!740 = metadata !{i32 1129, i32 0, metadata !220, null}
!741 = metadata !{i32 786689, metadata !213, metadata !"group", metadata !36, i32 16778315, metadata !29, i32 0, metadata !740} ; [ DW_TAG_arg_variable ] [group] [line 1099]
!742 = metadata !{i32 1099, i32 0, metadata !213, metadata !740}
!743 = metadata !{i32 1101, i32 0, metadata !213, metadata !740}
!744 = metadata !{i32 1147, i32 0, metadata !223, null}
!745 = metadata !{i32 1149, i32 0, metadata !223, null}
!746 = metadata !{i32 1167, i32 0, metadata !226, null}
!747 = metadata !{i32 1169, i32 0, metadata !226, null}
!748 = metadata !{i32 786689, metadata !223, metadata !"group", metadata !36, i32 16778363, metadata !29, i32 0, metadata !747} ; [ DW_TAG_arg_variable ] [group] [line 1147]
!749 = metadata !{i32 1147, i32 0, metadata !223, metadata !747}
!750 = metadata !{i32 1149, i32 0, metadata !223, metadata !747}
!751 = metadata !{i32 1173, i32 0, metadata !229, null}
!752 = metadata !{i32 1174, i32 0, metadata !229, null}
!753 = metadata !{i32 1176, i32 0, metadata !229, null}
!754 = metadata !{i32 1177, i32 0, metadata !229, null}
!755 = metadata !{i32 1178, i32 0, metadata !229, null}
!756 = metadata !{i32 1179, i32 0, metadata !229, null}
!757 = metadata !{i32 1196, i32 0, metadata !235, null}
!758 = metadata !{i32 1198, i32 0, metadata !235, null}
!759 = metadata !{i32 1217, i32 0, metadata !238, null}
!760 = metadata !{i32 1219, i32 0, metadata !238, null}
!761 = metadata !{i32 1237, i32 0, metadata !241, null}
!762 = metadata !{i32 1239, i32 0, metadata !241, null}
!763 = metadata !{i32 1244, i32 0, metadata !244, null}
!764 = metadata !{i32 1245, i32 0, metadata !244, null}
!765 = metadata !{i32 1247, i32 0, metadata !244, null}
!766 = metadata !{i32 786689, metadata !241, metadata !"var", metadata !36, i32 16778453, metadata !29, i32 0, metadata !765} ; [ DW_TAG_arg_variable ] [var] [line 1237]
!767 = metadata !{i32 1237, i32 0, metadata !241, metadata !765}
!768 = metadata !{i32 1239, i32 0, metadata !241, metadata !765}
!769 = metadata !{i32 1248, i32 0, metadata !244, null}
!770 = metadata !{i32 1265, i32 0, metadata !248, null}
!771 = metadata !{i32 1267, i32 0, metadata !248, null}
!772 = metadata !{i32 1272, i32 0, metadata !251, null}
!773 = metadata !{i32 1273, i32 0, metadata !251, null}
!774 = metadata !{i32 1275, i32 0, metadata !251, null}
!775 = metadata !{i32 786689, metadata !248, metadata !"var", metadata !36, i32 16778481, metadata !29, i32 0, metadata !774} ; [ DW_TAG_arg_variable ] [var] [line 1265]
!776 = metadata !{i32 1265, i32 0, metadata !248, metadata !774}
!777 = metadata !{i32 1267, i32 0, metadata !248, metadata !774}
!778 = metadata !{i32 1276, i32 0, metadata !251, null}
!779 = metadata !{i32 1292, i32 0, metadata !255, null}
!780 = metadata !{i32 1294, i32 0, metadata !255, null}
!781 = metadata !{i32 786689, metadata !248, metadata !"var", metadata !36, i32 16778481, metadata !29, i32 0, metadata !780} ; [ DW_TAG_arg_variable ] [var] [line 1265]
!782 = metadata !{i32 1265, i32 0, metadata !248, metadata !780}
!783 = metadata !{i32 1267, i32 0, metadata !248, metadata !780}
!784 = metadata !{i32 1298, i32 0, metadata !258, null}
!785 = metadata !{i32 1299, i32 0, metadata !258, null}
!786 = metadata !{i32 1301, i32 0, metadata !258, null}
!787 = metadata !{i32 1302, i32 0, metadata !258, null}
!788 = metadata !{i32 1303, i32 0, metadata !258, null}
!789 = metadata !{i32 1304, i32 0, metadata !258, null}
!790 = metadata !{i32 1317, i32 0, metadata !264, null}
!791 = metadata !{i32 1319, i32 0, metadata !264, null}
!792 = metadata !{i32 1320, i32 0, metadata !264, null}
!793 = metadata !{i32 1333, i32 0, metadata !269, null}
!794 = metadata !{i32 1335, i32 0, metadata !269, null}
!795 = metadata !{i32 1336, i32 0, metadata !269, null}
!796 = metadata !{i32 1353, i32 0, metadata !272, null}
!797 = metadata !{i32 1355, i32 0, metadata !272, null}
!798 = metadata !{i32 1374, i32 0, metadata !278, null}
!799 = metadata !{i32 1376, i32 0, metadata !278, null}
!800 = metadata !{i32 1394, i32 0, metadata !281, null}
!801 = metadata !{i32 1399, i32 0, metadata !281, null}
!802 = metadata !{i32 8}
!803 = metadata !{i32 1406, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !281, i32 1400, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!805 = metadata !{i32 1407, i32 0, metadata !804, null}
!806 = metadata !{i32 1410, i32 0, metadata !804, null}
!807 = metadata !{i32 1411, i32 0, metadata !804, null}
!808 = metadata !{i32 4}
!809 = metadata !{i32 1414, i32 0, metadata !804, null}
!810 = metadata !{i32 1415, i32 0, metadata !804, null}
!811 = metadata !{i32 1418, i32 0, metadata !804, null}
!812 = metadata !{i32 1419, i32 0, metadata !804, null}
!813 = metadata !{i32 16}
!814 = metadata !{i32 1422, i32 0, metadata !804, null}
!815 = metadata !{i32 1423, i32 0, metadata !804, null}
!816 = metadata !{i32 2}
!817 = metadata !{i32 1427, i32 0, metadata !804, null}
!818 = metadata !{i32 1428, i32 0, metadata !804, null}
!819 = metadata !{i32 1439, i32 0, metadata !804, null}
!820 = metadata !{i32 1440, i32 0, metadata !804, null}
!821 = metadata !{i32 1445, i32 0, metadata !804, null}
!822 = metadata !{i32 1446, i32 0, metadata !804, null}
!823 = metadata !{i32 1449, i32 0, metadata !804, null}
!824 = metadata !{i32 1450, i32 0, metadata !804, null}
!825 = metadata !{i32 1459, i32 0, metadata !804, null}
!826 = metadata !{i32 1460, i32 0, metadata !804, null}
!827 = metadata !{i32 1465, i32 0, metadata !804, null}
!828 = metadata !{i32 1466, i32 0, metadata !804, null}
!829 = metadata !{i32 32}
!830 = metadata !{i32 1469, i32 0, metadata !804, null}
!831 = metadata !{i32 1470, i32 0, metadata !804, null}
!832 = metadata !{i32 1474, i32 0, metadata !804, null}
!833 = metadata !{i32 -1}
!834 = metadata !{i32 1476, i32 0, metadata !804, null}
!835 = metadata !{i32 1477, i32 0, metadata !804, null}
!836 = metadata !{i32 1479, i32 0, metadata !281, null}
!837 = metadata !{i32 1497, i32 0, metadata !285, null}
!838 = metadata !{i32 1499, i32 0, metadata !285, null}
!839 = metadata !{i32 1503, i32 0, metadata !288, null}
!840 = metadata !{i32 1504, i32 0, metadata !288, null}
!841 = metadata !{i32 1506, i32 0, metadata !288, null}
!842 = metadata !{i32 786689, metadata !285, metadata !"group", metadata !36, i32 16778713, metadata !29, i32 0, metadata !841} ; [ DW_TAG_arg_variable ] [group] [line 1497]
!843 = metadata !{i32 1497, i32 0, metadata !285, metadata !841}
!844 = metadata !{i32 1499, i32 0, metadata !285, metadata !841}
!845 = metadata !{i32 1507, i32 0, metadata !288, null}
!846 = metadata !{i32 1524, i32 0, metadata !292, null}
!847 = metadata !{i32 1526, i32 0, metadata !292, null}
!848 = metadata !{i32 1531, i32 0, metadata !295, null}
!849 = metadata !{i32 1532, i32 0, metadata !295, null}
!850 = metadata !{i32 1534, i32 0, metadata !295, null}
!851 = metadata !{i32 786689, metadata !292, metadata !"var", metadata !36, i32 16778740, metadata !29, i32 0, metadata !850} ; [ DW_TAG_arg_variable ] [var] [line 1524]
!852 = metadata !{i32 1524, i32 0, metadata !292, metadata !850}
!853 = metadata !{i32 1526, i32 0, metadata !292, metadata !850}
!854 = metadata !{i32 1535, i32 0, metadata !295, null}
!855 = metadata !{i32 1582, i32 0, metadata !299, null}
!856 = metadata !{i32 1583, i32 0, metadata !299, null}
!857 = metadata !{i32 1586, i32 0, metadata !299, null}
!858 = metadata !{i32 1587, i32 0, metadata !299, null}
!859 = metadata !{i32 1593, i32 0, metadata !299, null}
!860 = metadata !{i32 1595, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !299, i32 1594, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!862 = metadata !{i32 1597, i32 0, metadata !861, null}
!863 = metadata !{i32 1600, i32 0, metadata !299, null}
!864 = metadata !{i32 1604, i32 0, metadata !299, null}
!865 = metadata !{i32 1607, i32 0, metadata !299, null}
!866 = metadata !{i32 1608, i32 0, metadata !299, null}
!867 = metadata !{i32 1725, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !869, i32 1723, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!869 = metadata !{i32 786443, metadata !1, metadata !870, i32 1704, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!870 = metadata !{i32 786443, metadata !1, metadata !299, i32 1609, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!871 = metadata !{i32 1694, i32 0, metadata !870, null}
!872 = metadata !{i32 1707, i32 0, metadata !869, null}
!873 = metadata !{i32 1612, i32 0, metadata !870, null}
!874 = metadata !{metadata !"short", metadata !481}
!875 = metadata !{i32 1614, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !870, i32 1613, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!877 = metadata !{i32 1616, i32 0, metadata !870, null}
!878 = metadata !{i32 1624, i32 0, metadata !870, null}
!879 = metadata !{i32 1626, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !870, i32 1625, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!881 = metadata !{i32 1630, i32 0, metadata !880, null}
!882 = metadata !{i32 1634, i32 0, metadata !870, null}
!883 = metadata !{i32 1635, i32 0, metadata !870, null}
!884 = metadata !{i32 1638, i32 0, metadata !870, null}
!885 = metadata !{i32 1639, i32 0, metadata !870, null}
!886 = metadata !{i32 1643, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !870, i32 1640, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!888 = metadata !{i32 1647, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !890, i32 1646, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!890 = metadata !{i32 786443, metadata !1, metadata !887, i32 1644, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!891 = metadata !{i32 1648, i32 0, metadata !889, null}
!892 = metadata !{i32 1651, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !890, i32 1650, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!894 = metadata !{i32 1657, i32 0, metadata !887, null}
!895 = metadata !{i32 1658, i32 0, metadata !887, null}
!896 = metadata !{i32 1659, i32 0, metadata !887, null}
!897 = metadata !{i32 1661, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !887, i32 1660, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!899 = metadata !{i32 1664, i32 0, metadata !898, null}
!900 = metadata !{i32 1665, i32 0, metadata !898, null}
!901 = metadata !{i32 1667, i32 0, metadata !887, null}
!902 = metadata !{i32 1669, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !887, i32 1668, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!904 = metadata !{i32 1672, i32 0, metadata !903, null}
!905 = metadata !{i32 1673, i32 0, metadata !903, null}
!906 = metadata !{i32 1675, i32 0, metadata !887, null}
!907 = metadata !{i32 1677, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !887, i32 1676, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!909 = metadata !{i32 1680, i32 0, metadata !908, null}
!910 = metadata !{i32 1681, i32 0, metadata !908, null}
!911 = metadata !{i32 1691, i32 0, metadata !870, null}
!912 = metadata !{i32 1697, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !870, i32 1696, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!914 = metadata !{i32 1703, i32 0, metadata !870, null}
!915 = metadata !{i32 1710, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !869, i32 1709, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!917 = metadata !{i32 1716, i32 0, metadata !869, null}
!918 = metadata !{i32 1101, i32 0, metadata !213, metadata !919}
!919 = metadata !{i32 1719, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !869, i32 1717, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!921 = metadata !{i32 786689, metadata !213, metadata !"group", metadata !36, i32 16778315, metadata !29, i32 0, metadata !919} ; [ DW_TAG_arg_variable ] [group] [line 1099]
!922 = metadata !{i32 1099, i32 0, metadata !213, metadata !919}
!923 = metadata !{i32 1724, i32 0, metadata !868, null}
!924 = metadata !{i32 427, i32 0, metadata !89, metadata !925}
!925 = metadata !{i32 1727, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !868, i32 1726, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!927 = metadata !{i32 1728, i32 0, metadata !926, null}
!928 = metadata !{i32 402, i32 0, metadata !85, metadata !929}
!929 = metadata !{i32 1731, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !868, i32 1730, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!931 = metadata !{i32 786689, metadata !223, metadata !"group", metadata !36, i32 16778363, metadata !29, i32 0, metadata !932} ; [ DW_TAG_arg_variable ] [group] [line 1147]
!932 = metadata !{i32 1720, i32 0, metadata !920, null}
!933 = metadata !{i32 1147, i32 0, metadata !223, metadata !932}
!934 = metadata !{i32 1149, i32 0, metadata !223, metadata !932}
!935 = metadata !{i32 1741, i32 0, metadata !870, null}
!936 = metadata !{i32 1743, i32 0, metadata !937, null}
!937 = metadata !{i32 786443, metadata !1, metadata !938, i32 1743, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!938 = metadata !{i32 786443, metadata !1, metadata !870, i32 1742, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!939 = metadata !{i32 1745, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !937, i32 1744, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!941 = metadata !{i32 1747, i32 0, metadata !938, null}
!942 = metadata !{i32 1748, i32 0, metadata !938, null}
!943 = metadata !{i32 1751, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !870, i32 1750, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!945 = metadata !{i32 1757, i32 0, metadata !870, null}
!946 = metadata !{i32 1759, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !870, i32 1758, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!948 = metadata !{i32 1764, i32 0, metadata !299, null}
!949 = metadata !{i32 1766, i32 0, metadata !299, null}
!950 = metadata !{i32 1767, i32 0, metadata !299, null}
!951 = metadata !{i32 1815, i32 0, metadata !323, null}
!952 = metadata !{i32 1816, i32 0, metadata !323, null}
!953 = metadata !{i32 1817, i32 0, metadata !323, null}
!954 = metadata !{i32 1818, i32 0, metadata !323, null}
!955 = metadata !{i32 1819, i32 0, metadata !323, null}
!956 = metadata !{i32 1820, i32 0, metadata !323, null}
!957 = metadata !{i32 1821, i32 0, metadata !323, null}
!958 = metadata !{i32 1822, i32 0, metadata !323, null}
!959 = metadata !{i32 1823, i32 0, metadata !323, null}
!960 = metadata !{i32 1824, i32 0, metadata !323, null}
!961 = metadata !{i32 1825, i32 0, metadata !323, null}
!962 = metadata !{i32 1826, i32 0, metadata !323, null}
!963 = metadata !{i32 1827, i32 0, metadata !323, null}
!964 = metadata !{i32 1836, i32 0, metadata !323, null}
!965 = metadata !{%struct.cGroupDefinition* null}
!966 = metadata !{i32 1843, i32 0, metadata !323, null}
!967 = metadata !{i32 1844, i32 0, metadata !323, null}
!968 = metadata !{i32 1845, i32 0, metadata !323, null}
!969 = metadata !{i32 1847, i32 0, metadata !323, null}
!970 = metadata !{i32 1849, i32 0, metadata !323, null}
!971 = metadata !{i32 1852, i32 0, metadata !323, null}
!972 = metadata !{i32 1854, i32 0, metadata !323, null}
!973 = metadata !{i32 1856, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !323, i32 1855, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!975 = metadata !{i32 1858, i32 0, metadata !974, null}
!976 = metadata !{i32 1860, i32 0, metadata !974, null}
!977 = metadata !{i32 1862, i32 0, metadata !974, null}
!978 = metadata !{i32 1864, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !974, i32 1863, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!980 = metadata !{i32 1867, i32 0, metadata !979, null}
!981 = metadata !{i32 1871, i32 0, metadata !323, null}
!982 = metadata !{i32 1872, i32 0, metadata !323, null}
!983 = metadata !{i32 1874, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !323, i32 1873, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!985 = metadata !{i32 1875, i32 0, metadata !984, null}
!986 = metadata !{i32 1876, i32 0, metadata !323, null}
!987 = metadata !{i32 1878, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !323, i32 1877, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!989 = metadata !{i32 1879, i32 0, metadata !988, null}
!990 = metadata !{i32 1882, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !323, i32 1881, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!992 = metadata !{i32 1887, i32 0, metadata !323, null}
!993 = metadata !{i32 1889, i32 0, metadata !392, null}
!994 = metadata !{i32 1890, i32 0, metadata !392, null}
!995 = metadata !{i32 1891, i32 0, metadata !392, null}
!996 = metadata !{i32 1892, i32 0, metadata !392, null}
!997 = metadata !{i32 1893, i32 0, metadata !392, null}
!998 = metadata !{i32 1894, i32 0, metadata !392, null}
!999 = metadata !{i32 1895, i32 0, metadata !392, null}
!1000 = metadata !{i32 1899, i32 0, metadata !392, null}
!1001 = metadata !{i32 1901, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !392, i32 1900, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1003 = metadata !{i32 1902, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !1002, i32 1902, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1005 = metadata !{i32 1904, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !1004, i32 1903, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1007 = metadata !{i32 1907, i32 0, metadata !1006, null}
!1008 = metadata !{i32 1909, i32 0, metadata !1006, null}
!1009 = metadata !{i32 1911, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !1006, i32 1910, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1011 = metadata !{i32 1921, i32 0, metadata !391, null}
!1012 = metadata !{i32 1923, i32 0, metadata !390, null}
!1013 = metadata !{i32 1928, i32 0, metadata !389, null}
!1014 = metadata !{i32 1925, i32 0, metadata !389, null}
!1015 = metadata !{i32 1926, i32 0, metadata !389, null}
!1016 = metadata !{i32 1932, i32 0, metadata !392, null}
!1017 = metadata !{i32 1934, i32 0, metadata !392, null}
!1018 = metadata !{i32 1940, i32 0, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !1, metadata !392, i32 1939, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1020 = metadata !{i32 1942, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !1, metadata !1019, i32 1941, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1022 = metadata !{i32 1943, i32 0, metadata !1021, null}
!1023 = metadata !{i32 1944, i32 0, metadata !1019, null}
!1024 = metadata !{i32 1947, i32 0, metadata !1025, null}
!1025 = metadata !{i32 786443, metadata !1, metadata !1019, i32 1945, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1026 = metadata !{i32 1948, i32 0, metadata !1019, null}
!1027 = metadata !{i32 1949, i32 0, metadata !1019, null}
!1028 = metadata !{i32 1953, i32 0, metadata !392, null}
!1029 = metadata !{i32 1955, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !392, i32 1954, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1031 = metadata !{i32 1957, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !1030, i32 1956, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1033 = metadata !{i32 1}
!1034 = metadata !{i32 1959, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1032, i32 1958, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1036 = metadata !{i32 1964, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1030, i32 1963, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1038 = metadata !{i32 1974, i32 0, metadata !323, null}
!1039 = metadata !{i32 1976, i32 0, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !1, metadata !323, i32 1975, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1041 = metadata !{i32 1977, i32 0, metadata !1040, null}
!1042 = metadata !{i32 1979, i32 0, metadata !323, null}
!1043 = metadata !{i32 2420, i32 0, metadata !406, null}
!1044 = metadata !{i32 2424, i32 0, metadata !406, null}
!1045 = metadata !{i32 2427, i32 0, metadata !406, null}
!1046 = metadata !{i32 2429, i32 0, metadata !406, null}
!1047 = metadata !{i32 2431, i32 0, metadata !406, null}
!1048 = metadata !{i32 2443, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !406, i32 2442, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1050 = metadata !{i32 2446, i32 0, metadata !1049, null}
!1051 = metadata !{i32 2449, i32 0, metadata !406, null}
!1052 = metadata !{i32 2451, i32 0, metadata !406, null}
!1053 = metadata !{i32 2434, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !406, i32 2432, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1055 = metadata !{i32 2439, i32 0, metadata !1054, null}
!1056 = metadata !{i32 2453, i32 0, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !406, i32 2452, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1058 = metadata !{i32 2454, i32 0, metadata !1057, null}
!1059 = metadata !{i32 2457, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1, metadata !406, i32 2456, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1061 = metadata !{i32 2462, i32 0, metadata !406, null}
!1062 = metadata !{i32 2024, i32 0, metadata !450, null}
!1063 = metadata !{i32 2025, i32 0, metadata !450, null}
!1064 = metadata !{i32 2026, i32 0, metadata !450, null}
!1065 = metadata !{i32 2027, i32 0, metadata !450, null}
!1066 = metadata !{i32 2036, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !450, i32 2036, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1068 = metadata !{i32 2038, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1067, i32 2037, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1070 = metadata !{i32 2039, i32 0, metadata !1069, null}
!1071 = metadata !{i32 2045, i32 0, metadata !450, null}
!1072 = metadata !{i32 2048, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !450, i32 2046, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1074 = metadata !{i32 2049, i32 0, metadata !1073, null}
!1075 = metadata !{i32 2051, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !1073, i32 2050, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1077 = metadata !{i32 2054, i32 0, metadata !1076, null}
!1078 = metadata !{i32 2056, i32 0, metadata !1076, null}
!1079 = metadata !{i32 2059, i32 0, metadata !1076, null}
!1080 = metadata !{i32 2063, i32 0, metadata !1076, null}
!1081 = metadata !{i32 2066, i32 0, metadata !1076, null}
!1082 = metadata !{i32 2072, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1076, i32 2070, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1084 = metadata !{i32 2074, i32 0, metadata !1083, null}
!1085 = metadata !{i32 2075, i32 0, metadata !1083, null}
!1086 = metadata !{i32 2077, i32 0, metadata !1083, null}
!1087 = metadata !{i32 2078, i32 0, metadata !1083, null}
!1088 = metadata !{i32 2079, i32 0, metadata !1083, null}
!1089 = metadata !{i32 2082, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1083, i32 2082, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1091 = metadata !{i32 2086, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1090, i32 2083, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1093 = metadata !{i32 2084, i32 0, metadata !1092, null}
!1094 = metadata !{i32 2088, i32 0, metadata !1092, null}
!1095 = metadata !{i32 2091, i32 0, metadata !1083, null}
!1096 = metadata !{i32 2092, i32 0, metadata !1083, null}
!1097 = metadata !{i32 2096, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1076, i32 2094, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1099 = metadata !{i32 2097, i32 0, metadata !1098, null}
!1100 = metadata !{i32 2099, i32 0, metadata !1098, null}
!1101 = metadata !{i32 2100, i32 0, metadata !1098, null}
!1102 = metadata !{i32 2102, i32 0, metadata !1098, null}
!1103 = metadata !{i32 2103, i32 0, metadata !1098, null}
!1104 = metadata !{i32 2109, i32 0, metadata !1073, null}
!1105 = metadata !{i32 2111, i32 0, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !1, metadata !1073, i32 2110, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1107 = metadata !{i32 2112, i32 0, metadata !1106, null}
!1108 = metadata !{i32 2120, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !450, i32 2119, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1110 = metadata !{i32 2127, i32 0, metadata !450, null}
!1111 = metadata !{i32 2151, i32 0, metadata !438, null}
!1112 = metadata !{i32 2152, i32 0, metadata !438, null}
!1113 = metadata !{i32 2153, i32 0, metadata !438, null}
!1114 = metadata !{i32 2161, i32 0, metadata !438, null}
!1115 = metadata !{i32 2163, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !438, i32 2162, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1117 = metadata !{i32 2165, i32 0, metadata !1116, null}
!1118 = metadata !{i32 2167, i32 0, metadata !1116, null}
!1119 = metadata !{i32 2169, i32 0, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !1, metadata !1116, i32 2168, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1121 = metadata !{i32 2171, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !1120, i32 2171, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1123 = metadata !{i32 2176, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1120, i32 2176, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1125 = metadata !{i32 2173, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !1122, i32 2172, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1127 = metadata !{i32 2179, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !1124, i32 2177, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1129 = metadata !{i32 2180, i32 0, metadata !1128, null}
!1130 = metadata !{i32 2183, i32 0, metadata !1128, null}
!1131 = metadata !{i32 2184, i32 0, metadata !1128, null}
!1132 = metadata !{i32 2186, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1128, i32 2185, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1134 = metadata !{i32 2187, i32 0, metadata !1133, null}
!1135 = metadata !{i32 2189, i32 0, metadata !1128, null}
!1136 = metadata !{i32 2191, i32 0, metadata !1128, null}
!1137 = metadata !{i32 2201, i32 0, metadata !438, null}
!1138 = metadata !{i32 1997, i32 0, metadata !393, null}
!1139 = metadata !{i32 2001, i32 0, metadata !393, null}
!1140 = metadata !{i32 2003, i32 0, metadata !393, null}
!1141 = metadata !{i32 2230, i32 0, metadata !397, null}
!1142 = metadata !{i32 2234, i32 0, metadata !397, null}
!1143 = metadata !{i32* null}
!1144 = metadata !{i32 2237, i32 0, metadata !397, null}
!1145 = metadata !{i32 2238, i32 0, metadata !397, null}
!1146 = metadata !{i32 2239, i32 0, metadata !397, null}
!1147 = metadata !{i32 2242, i32 0, metadata !397, null}
!1148 = metadata !{i32 2244, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !1, metadata !1150, i32 2244, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1150 = metadata !{i32 786443, metadata !1, metadata !397, i32 2243, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1151 = metadata !{i32 2246, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1149, i32 2245, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1153 = metadata !{i32 2247, i32 0, metadata !1152, null}
!1154 = metadata !{i32 2249, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1152, i32 2248, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1156 = metadata !{i32 2254, i32 0, metadata !1150, null}
!1157 = metadata !{i32 2256, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1150, i32 2255, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1159 = metadata !{i32 2259, i32 0, metadata !1158, null}
!1160 = metadata !{i32 2263, i32 0, metadata !397, null}
!1161 = metadata !{i32 2265, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1, metadata !397, i32 2264, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1163 = metadata !{i32 2266, i32 0, metadata !1162, null}
!1164 = metadata !{i32 2267, i32 0, metadata !397, null}
!1165 = metadata !{i32 2269, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !397, i32 2268, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1167 = metadata !{i32 2270, i32 0, metadata !1166, null}
!1168 = metadata !{i32 2272, i32 0, metadata !397, null}
!1169 = metadata !{i32 2321, i32 0, metadata !418, null}
!1170 = metadata !{i32 2322, i32 0, metadata !418, null}
!1171 = metadata !{i32 2323, i32 0, metadata !418, null}
!1172 = metadata !{i32 2324, i32 0, metadata !418, null}
!1173 = metadata !{i32 2329, i32 0, metadata !418, null}
!1174 = metadata !{i32 2331, i32 0, metadata !418, null}
!1175 = metadata !{i32 2332, i32 0, metadata !418, null}
!1176 = metadata !{i32 2335, i32 0, metadata !418, null}
!1177 = metadata !{i32 2337, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !1, metadata !418, i32 2337, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1179 = metadata !{i32 2339, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !1178, i32 2338, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1181 = metadata !{metadata !"_ZTSN16uExpressionValue3$_0E", metadata !481}
!1182 = metadata !{i32 2340, i32 0, metadata !1180, null}
!1183 = metadata !{i32 2342, i32 0, metadata !1180, null}
!1184 = metadata !{i32 2344, i32 0, metadata !1180, null}
!1185 = metadata !{i32 2346, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !1180, i32 2345, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1187 = metadata !{i32 2348, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1, metadata !1186, i32 2347, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1189 = metadata !{i32 2349, i32 0, metadata !1188, null}
!1190 = metadata !{i32 2350, i32 0, metadata !1188, null}
!1191 = metadata !{i32 2351, i32 0, metadata !1188, null}
!1192 = metadata !{i32 2352, i32 0, metadata !1188, null}
!1193 = metadata !{i32 2355, i32 0, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1, metadata !1186, i32 2354, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1195 = metadata !{i32 2356, i32 0, metadata !1194, null}
!1196 = metadata !{i32 2359, i32 0, metadata !1186, null}
!1197 = metadata !{i32 2361, i32 0, metadata !1186, null}
!1198 = metadata !{i32 2363, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1186, i32 2362, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1200 = metadata !{i32 2364, i32 0, metadata !1199, null}
!1201 = metadata !{i32 2365, i32 0, metadata !1186, null}
!1202 = metadata !{i32 2367, i32 0, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !1, metadata !1186, i32 2366, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1204 = metadata !{i32 2370, i32 0, metadata !1203, null}
!1205 = metadata !{i32 2373, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !1186, i32 2372, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Groups.c]
!1207 = metadata !{i32 2377, i32 0, metadata !1186, null}
!1208 = metadata !{i32 2378, i32 0, metadata !1186, null}
!1209 = metadata !{i32 2379, i32 0, metadata !1186, null}
!1210 = metadata !{i32 2381, i32 0, metadata !1180, null}
!1211 = metadata !{i32 2384, i32 0, metadata !418, null}
