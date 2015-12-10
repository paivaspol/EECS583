; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Parameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PARAM = type { %struct.PARAM_PROPS*, i8* }
%struct.PARAM_PROPS = type { i8*, i8*, i32, i8*, i8*, i32, %struct.RANGE*, i32, i32 }
%struct.RANGE = type { %struct.RANGE*, %struct.RANGE*, i8*, i8*, i32, i8* }
%struct.T_SKTREE = type { %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PARAMTREENODE = type { %struct.PARAMLIST* }
%struct.PARAMLIST = type { %struct.PARAM*, %struct.PARAMLIST*, %struct.PARAMLIST* }
%struct.regmatch_t = type { i32, i32 }

@cctk_parameter_set_mask = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Parameters.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"CCTK_ParameterSet: Cannot set parameter '%s::%s' (non-steerable)\00", align 1
@.str3 = private unnamed_addr constant [126 x i8] c"CCTK_ParameterSet: Non-steerable parameter '%s::%s' is not set from the parameter file but recovered from the checkpoint file\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str8 = private unnamed_addr constant [64 x i8] c"CCTK_ParameterValString: Unknown type %d for parameter '%s::%s'\00", align 1
@.str9 = private unnamed_addr constant [127 x i8] c"CCTK_ParameterValString: fortran string buffer is too short to hold value '%s' of parameter '%s::%s', string will be truncated\00", align 1
@CCTK_ParameterWalk.prev_startpoint_all = internal unnamed_addr global %struct.PARAM* null, align 8
@CCTK_ParameterWalk.prev_startpoint_thorn = internal unnamed_addr global %struct.PARAM* null, align 8
@.str10 = private unnamed_addr constant [93 x i8] c"CCTK_ParameterWalk: Cannot walk through parameter list without setting a startpoint at first\00", align 1
@paramtree = internal global %struct.T_SKTREE* null, align 8
@.str11 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@.str12 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/Parameters.c,v 1.44 2002/01/02 12:15:57 tradke Exp $\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"SENTENCE\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str20 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"Unknown parameter type %d\00", align 1
@.str23 = private unnamed_addr constant [81 x i8] c"ParameterSetKeyword: Unable to set keyword %s::%s - '%s' not in any active range\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str24 = private unnamed_addr constant [64 x i8] c"Since this was the default value, setting anyway - please fix!\0A\00", align 1
@.str25 = private unnamed_addr constant [81 x i8] c"ParameterSetString: Unable to set string '%s::%s' - '%s' not in any active range\00", align 1
@.str26 = private unnamed_addr constant [85 x i8] c"ParameterSetSentance: Unable to set sentance '%s::%s' - '%s' not in any active range\00", align 1
@.str27 = private unnamed_addr constant [83 x i8] c"ParameterSetInteger: Unable to set integer '%s::%s' - '%s' not in any active range\00", align 1
@.str28 = private unnamed_addr constant [76 x i8] c"ParameterSetReal: Unable to set real '%s:%s' - '%s' not in any active range\00", align 1
@.str29 = private unnamed_addr constant [74 x i8] c"ParameterSetBoolean: Unable to set boolean '%s::%s' - '%s' not recognised\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Parameters_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str12, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ParameterCreate(i8* %name, i8* %thorn, i8* %type, i8* %scope, i32 %steerable, i8* nocapture readonly %description, i8* %defval, i8* %data, i32 %n_ranges, ...) #1 {
  %ranges = alloca [1 x %struct.__va_list_tag], align 16
  %1 = tail call fastcc i32 @ParameterGetScope(i8* %scope) #7
  %2 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 %1) #7
  %3 = icmp eq %struct.PARAM* %2, null
  br i1 %3, label %4, label %134

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @malloc(i64 16) #8
  %6 = bitcast i8* %5 to %struct.PARAM*
  %7 = icmp eq i8* %5, null
  br i1 %7, label %ParameterNew.exit, label %8

; <label>:8                                       ; preds = %4
  %9 = tail call i8* @malloc(i64 64) #8
  %10 = bitcast i8* %5 to %struct.PARAM_PROPS**
  %11 = bitcast i8* %5 to i8**
  store i8* %9, i8** %11, align 8, !tbaa !2
  %12 = icmp eq i8* %9, null
  br i1 %12, label %ParameterNew.exit, label %13

; <label>:13                                      ; preds = %8
  %14 = tail call i8* @strdup(i8* %thorn) #8
  %15 = getelementptr inbounds i8* %9, i64 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !7
  %17 = tail call i8* @strdup(i8* %name) #8
  %18 = bitcast i8* %9 to i8**
  store i8* %17, i8** %18, align 8, !tbaa !10
  %19 = tail call i8* @strdup(i8* %description) #8
  %20 = getelementptr inbounds i8* %9, i64 24
  %21 = bitcast i8* %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !11
  %22 = tail call i8* @strdup(i8* %defval) #8
  %23 = getelementptr inbounds i8* %9, i64 32
  %24 = bitcast i8* %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !12
  %25 = tail call fastcc i32 @ParameterGetScope(i8* %scope) #8
  %26 = getelementptr inbounds i8* %9, i64 16
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4, !tbaa !13
  %28 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0)) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %ParameterGetType.exit.i, label %30

; <label>:30                                      ; preds = %13
  %31 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %ParameterGetType.exit.i, label %33

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0)) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %ParameterGetType.exit.i, label %36

; <label>:36                                      ; preds = %33
  %37 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %ParameterGetType.exit.i, label %39

; <label>:39                                      ; preds = %36
  %40 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %ParameterGetType.exit.i, label %42

; <label>:42                                      ; preds = %39
  %43 = tail call i32 @STR_cmpi(i8* %type, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0)) #8
  %44 = icmp eq i32 %43, 0
  %..i.i = select i1 %44, i32 6, i32 -1
  br label %ParameterGetType.exit.i

ParameterGetType.exit.i:                          ; preds = %42, %39, %36, %33, %30, %13
  %retval.0.i.i = phi i32 [ 1, %13 ], [ 2, %30 ], [ 3, %33 ], [ 4, %36 ], [ 5, %39 ], [ %..i.i, %42 ]
  %45 = load %struct.PARAM_PROPS** %10, align 8, !tbaa !2
  %46 = getelementptr inbounds %struct.PARAM_PROPS* %45, i64 0, i32 5
  store i32 %retval.0.i.i, i32* %46, align 4, !tbaa !14
  %47 = getelementptr inbounds %struct.PARAM_PROPS* %45, i64 0, i32 8
  store i32 %steerable, i32* %47, align 4, !tbaa !15
  %48 = getelementptr inbounds %struct.PARAM_PROPS* %45, i64 0, i32 6
  store %struct.RANGE* null, %struct.RANGE** %48, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.PARAM_PROPS* %45, i64 0, i32 7
  store i32 0, i32* %49, align 4, !tbaa !17
  %50 = getelementptr inbounds i8* %5, i64 8
  %51 = bitcast i8* %50 to i8**
  store i8* %data, i8** %51, align 8, !tbaa !18
  %.off.i = add i32 %retval.0.i.i, -1
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %52, label %54

; <label>:52                                      ; preds = %ParameterGetType.exit.i
  %53 = bitcast i8* %data to i8**
  store i8* null, i8** %53, align 8, !tbaa !19
  br label %54

; <label>:54                                      ; preds = %52, %ParameterGetType.exit.i
  %55 = load %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  %56 = getelementptr inbounds %struct.PARAM_PROPS* %45, i64 0, i32 0
  %57 = load i8** %56, align 8, !tbaa !10
  %58 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %55, i8* %57) #8
  %59 = icmp eq %struct.T_SKTREE* %58, null
  br i1 %59, label %78, label %60

; <label>:60                                      ; preds = %54
  %61 = getelementptr inbounds %struct.T_SKTREE* %58, i64 0, i32 5
  %62 = bitcast i8** %61 to %struct.PARAMTREENODE**
  %63 = load %struct.PARAMTREENODE** %62, align 8, !tbaa !20
  %64 = tail call i8* @malloc(i64 24) #8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %ParameterNew.exit, label %66

; <label>:66                                      ; preds = %60
  %67 = bitcast i8* %64 to i8**
  store i8* %5, i8** %67, align 8, !tbaa !22
  %68 = bitcast %struct.PARAMTREENODE* %63 to i64*
  %69 = load i64* %68, align 8, !tbaa !19
  %70 = getelementptr inbounds i8* %64, i64 16
  %71 = bitcast i8* %70 to i64*
  store i64 %69, i64* %71, align 8, !tbaa !24
  %72 = getelementptr inbounds i8* %64, i64 8
  %73 = bitcast i8* %72 to %struct.PARAMLIST**
  store %struct.PARAMLIST* null, %struct.PARAMLIST** %73, align 8, !tbaa !25
  %74 = inttoptr i64 %69 to %struct.PARAMLIST*
  %75 = getelementptr inbounds %struct.PARAMLIST* %74, i64 0, i32 1
  %76 = bitcast %struct.PARAMLIST** %75 to i8**
  store i8* %64, i8** %76, align 8, !tbaa !25
  %77 = bitcast %struct.PARAMTREENODE* %63 to i8**
  store i8* %64, i8** %77, align 8, !tbaa !19
  br label %ParameterNew.exit

; <label>:78                                      ; preds = %54
  %79 = tail call i8* @malloc(i64 8) #8
  %80 = tail call i8* @malloc(i64 24) #8
  %81 = icmp ne i8* %79, null
  %82 = icmp ne i8* %80, null
  %or.cond.i.i = and i1 %81, %82
  br i1 %or.cond.i.i, label %83, label %93

; <label>:83                                      ; preds = %78
  %84 = bitcast i8* %79 to i8**
  store i8* %80, i8** %84, align 8, !tbaa !26
  %85 = bitcast i8* %80 to i8**
  store i8* %5, i8** %85, align 8, !tbaa !22
  %86 = getelementptr inbounds i8* %80, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 16, i32 8, i1 false) #2
  %87 = load %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  %88 = load i8** %56, align 8, !tbaa !10
  %89 = tail call %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE* %87, %struct.T_SKTREE* %87, i8* %88, i8* %79) #8
  %90 = load %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  %91 = icmp eq %struct.T_SKTREE* %90, null
  br i1 %91, label %92, label %ParameterNew.exit

; <label>:92                                      ; preds = %83
  store %struct.T_SKTREE* %89, %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  br label %ParameterNew.exit

; <label>:93                                      ; preds = %78
  tail call void @free(i8* %80) #8
  tail call void @free(i8* %79) #8
  br label %ParameterNew.exit

ParameterNew.exit:                                ; preds = %4, %8, %60, %66, %83, %92, %93
  %94 = icmp eq i32 %n_ranges, 0
  br i1 %94, label %132, label %95

; <label>:95                                      ; preds = %ParameterNew.exit
  %96 = bitcast [1 x %struct.__va_list_tag]* %ranges to i8*
  call void @llvm.va_start(i8* %96)
  %97 = icmp sgt i32 %n_ranges, 0
  br i1 %97, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %95
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ranges, i64 0, i64 0, i32 0
  %99 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ranges, i64 0, i64 0, i32 3
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ranges, i64 0, i64 0, i32 2
  %101 = add i32 %n_ranges, -1
  br label %102

; <label>:102                                     ; preds = %126, %.lr.ph
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %131, %126 ]
  %103 = load i32* %98, align 16
  %104 = icmp ult i32 %103, 41
  br i1 %104, label %109, label %.thread

.thread:                                          ; preds = %102
  %105 = load i8** %100, align 8
  %106 = getelementptr i8* %105, i64 8
  store i8* %106, i8** %100, align 8
  %107 = bitcast i8* %105 to i8**
  %108 = load i8** %107, align 8
  br label %122

; <label>:109                                     ; preds = %102
  %110 = load i8** %99, align 16
  %111 = sext i32 %103 to i64
  %112 = getelementptr i8* %110, i64 %111
  %113 = add i32 %103, 8
  store i32 %113, i32* %98, align 16
  %114 = bitcast i8* %112 to i8**
  %115 = load i8** %114, align 8
  %116 = icmp ult i32 %113, 41
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %109
  %118 = load i8** %99, align 16
  %119 = sext i32 %113 to i64
  %120 = getelementptr i8* %118, i64 %119
  %121 = add i32 %103, 16
  store i32 %121, i32* %98, align 16
  br label %126

; <label>:122                                     ; preds = %.thread, %109
  %123 = phi i8* [ %108, %.thread ], [ %115, %109 ]
  %124 = load i8** %100, align 8
  %125 = getelementptr i8* %124, i64 8
  store i8* %125, i8** %100, align 8
  br label %126

; <label>:126                                     ; preds = %122, %117
  %127 = phi i8* [ %115, %117 ], [ %123, %122 ]
  %.in1 = phi i8* [ %120, %117 ], [ %124, %122 ]
  %128 = bitcast i8* %.in1 to i8**
  %129 = load i8** %128, align 8
  %130 = call fastcc i32 @ParameterExtend(%struct.PARAM* %6, i8* %thorn, i8* %127, i8* %129) #7
  %131 = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, %101
  br i1 %exitcond, label %._crit_edge, label %102

._crit_edge:                                      ; preds = %126, %95
  call void @llvm.va_end(i8* %96)
  br label %132

; <label>:132                                     ; preds = %ParameterNew.exit, %._crit_edge
  %133 = call fastcc i32 @ParameterSetSimple(%struct.PARAM* %6, i8* %defval) #7
  br label %134

; <label>:134                                     ; preds = %0, %132
  %retval.0 = phi i32 [ %133, %132 ], [ -2, %0 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 %scope) #1 {
  %1 = load %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  %2 = tail call %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE* %1, i8* %name) #8
  %3 = icmp eq %struct.T_SKTREE* %2, null
  br i1 %3, label %.thread, label %ParameterPTreeNodeFind.exit

ParameterPTreeNodeFind.exit:                      ; preds = %0
  %4 = getelementptr inbounds %struct.T_SKTREE* %2, i64 0, i32 5
  %5 = bitcast i8** %4 to %struct.PARAMTREENODE**
  %6 = load %struct.PARAMTREENODE** %5, align 8, !tbaa !20
  %7 = icmp eq %struct.PARAMTREENODE* %6, null
  br i1 %7, label %.thread, label %8

; <label>:8                                       ; preds = %ParameterPTreeNodeFind.exit
  %9 = getelementptr inbounds %struct.PARAMTREENODE* %6, i64 0, i32 0
  %list.05 = load %struct.PARAMLIST** %9, align 8
  %10 = icmp eq %struct.PARAMLIST* %list.05, null
  br i1 %10, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %8
  %11 = icmp eq i8* %thorn, null
  %12 = icmp eq i32 %scope, 5
  br label %13

; <label>:13                                      ; preds = %.lr.ph, %36
  %list.06 = phi %struct.PARAMLIST* [ %list.05, %.lr.ph ], [ %list.0, %36 ]
  %14 = getelementptr inbounds %struct.PARAMLIST* %list.06, i64 0, i32 0
  %15 = load %struct.PARAM** %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.PARAM* %15, i64 0, i32 0
  %17 = load %struct.PARAM_PROPS** %16, align 8, !tbaa !2
  br i1 %11, label %18, label %22

; <label>:18                                      ; preds = %13
  %19 = getelementptr inbounds %struct.PARAM_PROPS* %17, i64 0, i32 2
  %20 = load i32* %19, align 4, !tbaa !13
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %.thread, label %36

; <label>:22                                      ; preds = %13
  %23 = getelementptr inbounds %struct.PARAM_PROPS* %17, i64 0, i32 1
  %24 = load i8** %23, align 8, !tbaa !7
  %25 = tail call i32 @STR_cmpi(i8* %thorn, i8* %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %12, label %27, label %28

; <label>:27                                      ; preds = %22
  br i1 %26, label %._crit_edge, label %36

._crit_edge:                                      ; preds = %27
  %.pre = load %struct.PARAM** %14, align 8, !tbaa !22
  br label %.thread

; <label>:28                                      ; preds = %22
  br i1 %26, label %29, label %36

; <label>:29                                      ; preds = %28
  %30 = load %struct.PARAM** %14, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.PARAM* %30, i64 0, i32 0
  %32 = load %struct.PARAM_PROPS** %31, align 8, !tbaa !2
  %33 = getelementptr inbounds %struct.PARAM_PROPS* %32, i64 0, i32 2
  %34 = load i32* %33, align 4, !tbaa !13
  %35 = icmp eq i32 %34, %scope
  br i1 %35, label %.thread, label %36

; <label>:36                                      ; preds = %27, %28, %18, %29
  %37 = getelementptr inbounds %struct.PARAMLIST* %list.06, i64 0, i32 2
  %list.0 = load %struct.PARAMLIST** %37, align 8
  %38 = icmp eq %struct.PARAMLIST* %list.0, null
  br i1 %38, label %.thread, label %13

.thread:                                          ; preds = %36, %18, %29, %8, %._crit_edge, %0, %ParameterPTreeNodeFind.exit
  %39 = phi %struct.PARAM* [ null, %ParameterPTreeNodeFind.exit ], [ null, %0 ], [ %.pre, %._crit_edge ], [ null, %8 ], [ null, %36 ], [ %15, %18 ], [ %30, %29 ]
  ret %struct.PARAM* %39
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ParameterGetScope(i8* %scope) #1 {
  %1 = tail call i32 @STR_cmpi(i8* %scope, i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0)) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @STR_cmpi(i8* %scope, i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0)) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @STR_cmpi(i8* %scope, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #8
  %8 = icmp eq i32 %7, 0
  %. = select i1 %8, i32 3, i32 -1
  br label %9

; <label>:9                                       ; preds = %6, %3, %0
  %retval.0 = phi i32 [ 1, %0 ], [ 2, %3 ], [ %., %6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ParameterExtend(%struct.PARAM* nocapture readonly %param, i8* %range_origin, i8* nocapture readonly %range, i8* nocapture readonly %range_description) #1 {
  %1 = tail call i8* @malloc(i64 48) #8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %.thread, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strdup(i8* %range) #8
  %5 = getelementptr inbounds i8* %1, i64 16
  %6 = bitcast i8* %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !28
  %7 = tail call i8* @strdup(i8* %range_origin) #8
  %8 = getelementptr inbounds i8* %1, i64 24
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !30
  %10 = tail call i8* @strdup(i8* %range_description) #8
  %11 = getelementptr inbounds i8* %1, i64 40
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !31
  %13 = getelementptr inbounds i8* %1, i64 8
  %14 = bitcast i8* %13 to %struct.RANGE**
  %15 = bitcast i8* %1 to %struct.RANGE**
  %16 = getelementptr inbounds i8* %1, i64 32
  %17 = bitcast i8* %16 to i32*
  store i32 0, i32* %17, align 4, !tbaa !32
  %18 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false)
  %19 = load %struct.PARAM_PROPS** %18, align 8, !tbaa !2
  %20 = getelementptr inbounds %struct.PARAM_PROPS* %19, i64 0, i32 6
  %rangenode.03 = load %struct.RANGE** %20, align 8
  %21 = icmp eq %struct.RANGE* %rangenode.03, null
  br i1 %21, label %.thread12, label %.lr.ph

.thread12:                                        ; preds = %3
  %22 = bitcast i8* %1 to <2 x %struct.RANGE*>*
  store <2 x %struct.RANGE*> zeroinitializer, <2 x %struct.RANGE*>* %22, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.PARAM_PROPS* %19, i64 0, i32 6
  %24 = bitcast %struct.RANGE** %23 to i8**
  store i8* %1, i8** %24, align 8, !tbaa !16
  br label %.thread

.lr.ph:                                           ; preds = %3, %46
  %rangenode.04 = phi %struct.RANGE* [ %rangenode.0, %46 ], [ %rangenode.03, %3 ]
  %25 = getelementptr inbounds %struct.RANGE* %rangenode.04, i64 0, i32 3
  %26 = load i8** %25, align 8, !tbaa !30
  %27 = tail call i32 @STR_cmpi(i8* %range_origin, i8* %26) #8
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %46

; <label>:29                                      ; preds = %.lr.ph
  store %struct.RANGE* %rangenode.04, %struct.RANGE** %14, align 8, !tbaa !33
  %30 = bitcast %struct.RANGE* %rangenode.04 to i64*
  %31 = load i64* %30, align 8, !tbaa !34
  %32 = bitcast i8* %1 to i64*
  store i64 %31, i64* %32, align 8, !tbaa !34
  %33 = bitcast %struct.RANGE* %rangenode.04 to i8**
  store i8* %1, i8** %33, align 8, !tbaa !34
  %34 = load %struct.PARAM_PROPS** %18, align 8, !tbaa !2
  %35 = getelementptr inbounds %struct.PARAM_PROPS* %34, i64 0, i32 6
  %36 = load %struct.RANGE** %35, align 8, !tbaa !16
  %37 = icmp eq %struct.RANGE* %36, %rangenode.04
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %29
  %39 = bitcast %struct.RANGE** %35 to i8**
  store i8* %1, i8** %39, align 8, !tbaa !16
  br label %40

; <label>:40                                      ; preds = %38, %29
  %41 = load %struct.RANGE** %15, align 8, !tbaa !34
  %42 = icmp eq %struct.RANGE* %41, null
  br i1 %42, label %.thread, label %43

; <label>:43                                      ; preds = %40
  %44 = getelementptr inbounds %struct.RANGE* %41, i64 0, i32 1
  %45 = bitcast %struct.RANGE** %44 to i8**
  store i8* %1, i8** %45, align 8, !tbaa !33
  br label %.thread

; <label>:46                                      ; preds = %.lr.ph
  %47 = getelementptr inbounds %struct.RANGE* %rangenode.04, i64 0, i32 1
  %rangenode.0 = load %struct.RANGE** %47, align 8
  %48 = icmp eq %struct.RANGE* %rangenode.0, null
  br i1 %48, label %49, label %.lr.ph

; <label>:49                                      ; preds = %46
  %.pre = load %struct.PARAM_PROPS** %18, align 8, !tbaa !2
  %.phi.trans.insert = getelementptr inbounds %struct.PARAM_PROPS* %.pre, i64 0, i32 6
  %.pre6 = load %struct.RANGE** %.phi.trans.insert, align 8, !tbaa !16
  %phitmp = icmp eq %struct.RANGE* %.pre6, null
  store %struct.RANGE* null, %struct.RANGE** %14, align 8, !tbaa !33
  store %struct.RANGE* %rangenode.04, %struct.RANGE** %15, align 8, !tbaa !34
  br i1 %phitmp, label %.thread13, label %.thread10

.thread13:                                        ; preds = %49
  %50 = getelementptr inbounds %struct.PARAM_PROPS* %.pre, i64 0, i32 6
  %51 = bitcast %struct.RANGE** %50 to i8**
  store i8* %1, i8** %51, align 8, !tbaa !16
  br label %.thread10

.thread10:                                        ; preds = %49, %.thread13
  %52 = getelementptr inbounds %struct.RANGE* %rangenode.04, i64 0, i32 1
  %53 = bitcast %struct.RANGE** %52 to i8**
  store i8* %1, i8** %53, align 8, !tbaa !33
  br label %.thread

.thread:                                          ; preds = %.thread12, %43, %40, %0, %.thread10
  %retcode.0 = phi i32 [ 0, %.thread10 ], [ -1, %0 ], [ 0, %40 ], [ 0, %43 ], [ 0, %.thread12 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ParameterSetSimple(%struct.PARAM* nocapture readonly %param, i8* %value) #1 {
  %1 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 0
  %2 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %3 = getelementptr inbounds %struct.PARAM_PROPS* %2, i64 0, i32 5
  %4 = load i32* %3, align 4, !tbaa !14
  switch i32 %4, label %226 [
    i32 1, label %5
    i32 2, label %47
    i32 3, label %89
    i32 4, label %131
    i32 5, label %167
    i32 6, label %213
  ]

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.PARAM_PROPS* %2, i64 0, i32 6
  %range.03.i = load %struct.RANGE** %6, align 8
  %7 = icmp eq %struct.RANGE* %range.03.i, null
  br i1 %7, label %.thread.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %5, %24
  %range.04.i = phi %struct.RANGE* [ %range.0.i, %24 ], [ %range.03.i, %5 ]
  %8 = getelementptr inbounds %struct.RANGE* %range.04.i, i64 0, i32 3
  %9 = load i8** %8, align 8, !tbaa !30
  %10 = tail call i32 @CCTK_IsThornActive(i8* %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %.lr.ph.i
  %13 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %14 = getelementptr inbounds %struct.PARAM_PROPS* %13, i64 0, i32 1
  %15 = load i8** %14, align 8, !tbaa !7
  %16 = load i8** %8, align 8, !tbaa !30
  %17 = tail call i32 @CCTK_Equals(i8* %15, i8* %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %12, %.lr.ph.i
  %20 = getelementptr inbounds %struct.RANGE* %range.04.i, i64 0, i32 2
  %21 = load i8** %20, align 8, !tbaa !28
  %22 = tail call i32 @STR_cmpi(i8* %value, i8* %21) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %19, %12
  %25 = getelementptr inbounds %struct.RANGE* %range.04.i, i64 0, i32 1
  %range.0.i = load %struct.RANGE** %25, align 8
  %26 = icmp eq %struct.RANGE* %range.0.i, null
  br i1 %26, label %.thread.loopexit.i, label %.lr.ph.i

; <label>:27                                      ; preds = %19
  %28 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %29 = bitcast i8** %28 to i8***
  %30 = load i8*** %29, align 8, !tbaa !18
  %31 = tail call i32 @CCTK_SetString(i8** %30, i8* %value) #8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %.thread.i, label %ParameterSetKeyword.exit

.thread.loopexit.i:                               ; preds = %24, %5
  %.pre.i = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %.pre6.i = bitcast i8** %.pre.i to i8***
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.i, %27
  %.pre-phi7.i = phi i8*** [ %.pre6.i, %.thread.loopexit.i ], [ %29, %27 ]
  %33 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %34 = getelementptr inbounds %struct.PARAM_PROPS* %33, i64 0, i32 1
  %35 = load i8** %34, align 8, !tbaa !7
  %36 = getelementptr inbounds %struct.PARAM_PROPS* %33, i64 0, i32 0
  %37 = load i8** %36, align 8, !tbaa !10
  %38 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1269, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([81 x i8]* @.str23, i64 0, i64 0), i8* %35, i8* %37, i8* %value) #8
  %39 = load i8*** %.pre-phi7.i, align 8, !tbaa !18
  %40 = load i8** %39, align 8, !tbaa !19
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %ParameterSetKeyword.exit

; <label>:42                                      ; preds = %.thread.i
  %43 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str24, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %43) #2
  %45 = load i8*** %.pre-phi7.i, align 8, !tbaa !18
  %46 = tail call i32 @CCTK_SetString(i8** %45, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:47                                      ; preds = %0
  %48 = getelementptr inbounds %struct.PARAM_PROPS* %2, i64 0, i32 6
  %range.03.i1 = load %struct.RANGE** %48, align 8
  %49 = icmp eq %struct.RANGE* %range.03.i1, null
  br i1 %49, label %.thread.loopexit.i7, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %47, %66
  %range.04.i2 = phi %struct.RANGE* [ %range.0.i4, %66 ], [ %range.03.i1, %47 ]
  %50 = getelementptr inbounds %struct.RANGE* %range.04.i2, i64 0, i32 3
  %51 = load i8** %50, align 8, !tbaa !30
  %52 = tail call i32 @CCTK_IsThornActive(i8* %51) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

; <label>:54                                      ; preds = %.lr.ph.i3
  %55 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %56 = getelementptr inbounds %struct.PARAM_PROPS* %55, i64 0, i32 1
  %57 = load i8** %56, align 8, !tbaa !7
  %58 = load i8** %50, align 8, !tbaa !30
  %59 = tail call i32 @CCTK_Equals(i8* %57, i8* %58) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

; <label>:61                                      ; preds = %54, %.lr.ph.i3
  %62 = getelementptr inbounds %struct.RANGE* %range.04.i2, i64 0, i32 2
  %63 = load i8** %62, align 8, !tbaa !28
  %64 = tail call i32 @CCTK_RegexMatch(i8* %value, i8* %63, i32 0, %struct.regmatch_t* null) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

; <label>:66                                      ; preds = %61, %54
  %67 = getelementptr inbounds %struct.RANGE* %range.04.i2, i64 0, i32 1
  %range.0.i4 = load %struct.RANGE** %67, align 8
  %68 = icmp eq %struct.RANGE* %range.0.i4, null
  br i1 %68, label %.thread.loopexit.i7, label %.lr.ph.i3

; <label>:69                                      ; preds = %61
  %70 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %71 = bitcast i8** %70 to i8***
  %72 = load i8*** %71, align 8, !tbaa !18
  %73 = tail call i32 @CCTK_SetString(i8** %72, i8* %value) #8
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %.thread.i9, label %ParameterSetKeyword.exit

.thread.loopexit.i7:                              ; preds = %66, %47
  %.pre.i5 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %.pre6.i6 = bitcast i8** %.pre.i5 to i8***
  br label %.thread.i9

.thread.i9:                                       ; preds = %.thread.loopexit.i7, %69
  %.pre-phi7.i8 = phi i8*** [ %.pre6.i6, %.thread.loopexit.i7 ], [ %71, %69 ]
  %75 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %76 = getelementptr inbounds %struct.PARAM_PROPS* %75, i64 0, i32 1
  %77 = load i8** %76, align 8, !tbaa !7
  %78 = getelementptr inbounds %struct.PARAM_PROPS* %75, i64 0, i32 0
  %79 = load i8** %78, align 8, !tbaa !10
  %80 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1312, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([81 x i8]* @.str25, i64 0, i64 0), i8* %77, i8* %79, i8* %value) #8
  %81 = load i8*** %.pre-phi7.i8, align 8, !tbaa !18
  %82 = load i8** %81, align 8, !tbaa !19
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %ParameterSetKeyword.exit

; <label>:84                                      ; preds = %.thread.i9
  %85 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %86 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str24, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %85) #2
  %87 = load i8*** %.pre-phi7.i8, align 8, !tbaa !18
  %88 = tail call i32 @CCTK_SetString(i8** %87, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:89                                      ; preds = %0
  %90 = getelementptr inbounds %struct.PARAM_PROPS* %2, i64 0, i32 6
  %range.03.i11 = load %struct.RANGE** %90, align 8
  %91 = icmp eq %struct.RANGE* %range.03.i11, null
  br i1 %91, label %.thread.loopexit.i17, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %89, %108
  %range.04.i12 = phi %struct.RANGE* [ %range.0.i14, %108 ], [ %range.03.i11, %89 ]
  %92 = getelementptr inbounds %struct.RANGE* %range.04.i12, i64 0, i32 3
  %93 = load i8** %92, align 8, !tbaa !30
  %94 = tail call i32 @CCTK_IsThornActive(i8* %93) #8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

; <label>:96                                      ; preds = %.lr.ph.i13
  %97 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %98 = getelementptr inbounds %struct.PARAM_PROPS* %97, i64 0, i32 1
  %99 = load i8** %98, align 8, !tbaa !7
  %100 = load i8** %92, align 8, !tbaa !30
  %101 = tail call i32 @CCTK_Equals(i8* %99, i8* %100) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

; <label>:103                                     ; preds = %96, %.lr.ph.i13
  %104 = getelementptr inbounds %struct.RANGE* %range.04.i12, i64 0, i32 2
  %105 = load i8** %104, align 8, !tbaa !28
  %106 = tail call i32 @CCTK_RegexMatch(i8* %value, i8* %105, i32 0, %struct.regmatch_t* null) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

; <label>:108                                     ; preds = %103, %96
  %109 = getelementptr inbounds %struct.RANGE* %range.04.i12, i64 0, i32 1
  %range.0.i14 = load %struct.RANGE** %109, align 8
  %110 = icmp eq %struct.RANGE* %range.0.i14, null
  br i1 %110, label %.thread.loopexit.i17, label %.lr.ph.i13

; <label>:111                                     ; preds = %103
  %112 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %113 = bitcast i8** %112 to i8***
  %114 = load i8*** %113, align 8, !tbaa !18
  %115 = tail call i32 @CCTK_SetString(i8** %114, i8* %value) #8
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %.thread.i19, label %ParameterSetKeyword.exit

.thread.loopexit.i17:                             ; preds = %108, %89
  %.pre.i15 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %.pre6.i16 = bitcast i8** %.pre.i15 to i8***
  br label %.thread.i19

.thread.i19:                                      ; preds = %.thread.loopexit.i17, %111
  %.pre-phi7.i18 = phi i8*** [ %.pre6.i16, %.thread.loopexit.i17 ], [ %113, %111 ]
  %117 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %118 = getelementptr inbounds %struct.PARAM_PROPS* %117, i64 0, i32 1
  %119 = load i8** %118, align 8, !tbaa !7
  %120 = getelementptr inbounds %struct.PARAM_PROPS* %117, i64 0, i32 0
  %121 = load i8** %120, align 8, !tbaa !10
  %122 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1355, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str26, i64 0, i64 0), i8* %119, i8* %121, i8* %value) #8
  %123 = load i8*** %.pre-phi7.i18, align 8, !tbaa !18
  %124 = load i8** %123, align 8, !tbaa !19
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %ParameterSetKeyword.exit

; <label>:126                                     ; preds = %.thread.i19
  %127 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %128 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str24, i64 0, i64 0), i64 63, i64 1, %struct.__sFILE* %127) #2
  %129 = load i8*** %.pre-phi7.i18, align 8, !tbaa !18
  %130 = tail call i32 @CCTK_SetString(i8** %129, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:131                                     ; preds = %0
  %132 = tail call i64 @strtol(i8* nocapture %value, i8** null, i32 0) #8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %135 = getelementptr inbounds %struct.PARAM_PROPS* %134, i64 0, i32 6
  %range.03.i21 = load %struct.RANGE** %135, align 8
  %136 = icmp eq %struct.RANGE* %range.03.i21, null
  br i1 %136, label %160, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %131, %153
  %range.04.i22 = phi %struct.RANGE* [ %range.0.i24, %153 ], [ %range.03.i21, %131 ]
  %137 = getelementptr inbounds %struct.RANGE* %range.04.i22, i64 0, i32 3
  %138 = load i8** %137, align 8, !tbaa !30
  %139 = tail call i32 @CCTK_IsThornActive(i8* %138) #8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %.lr.ph.i23
  %142 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %143 = getelementptr inbounds %struct.PARAM_PROPS* %142, i64 0, i32 1
  %144 = load i8** %143, align 8, !tbaa !7
  %145 = load i8** %137, align 8, !tbaa !30
  %146 = tail call i32 @CCTK_Equals(i8* %144, i8* %145) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

; <label>:148                                     ; preds = %141, %.lr.ph.i23
  %149 = getelementptr inbounds %struct.RANGE* %range.04.i22, i64 0, i32 2
  %150 = load i8** %149, align 8, !tbaa !28
  %151 = tail call i32 @Util_IntInRange(i32 %133, i8* %150) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

; <label>:153                                     ; preds = %148, %141
  %154 = getelementptr inbounds %struct.RANGE* %range.04.i22, i64 0, i32 1
  %range.0.i24 = load %struct.RANGE** %154, align 8
  %155 = icmp eq %struct.RANGE* %range.0.i24, null
  br i1 %155, label %._crit_edge.i, label %.lr.ph.i23

; <label>:156                                     ; preds = %148
  %157 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %158 = bitcast i8** %157 to i32**
  %159 = load i32** %158, align 8, !tbaa !18
  store i32 %133, i32* %159, align 4, !tbaa !35
  br label %ParameterSetKeyword.exit

._crit_edge.i:                                    ; preds = %153
  %.pre.i25 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  br label %160

; <label>:160                                     ; preds = %._crit_edge.i, %131
  %161 = phi %struct.PARAM_PROPS* [ %.pre.i25, %._crit_edge.i ], [ %134, %131 ]
  %162 = getelementptr inbounds %struct.PARAM_PROPS* %161, i64 0, i32 1
  %163 = load i8** %162, align 8, !tbaa !7
  %164 = getelementptr inbounds %struct.PARAM_PROPS* %161, i64 0, i32 0
  %165 = load i8** %164, align 8, !tbaa !10
  %166 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1401, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8]* @.str27, i64 0, i64 0), i8* %163, i8* %165, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:167                                     ; preds = %0
  %168 = tail call i8* @strdup(i8* %value) #8
  %strlenfirst.i = load i8* %168, align 1
  %169 = icmp eq i8 %strlenfirst.i, 0
  br i1 %169, label %.loopexit.i, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %167, %._crit_edge10.i
  %170 = phi i8 [ %.pre.i27, %._crit_edge10.i ], [ %strlenfirst.i, %167 ]
  %171 = phi i64 [ %176, %._crit_edge10.i ], [ 0, %167 ]
  %p.06.i = phi i32 [ %175, %._crit_edge10.i ], [ 0, %167 ]
  switch i8 %170, label %174 [
    i8 69, label %172
    i8 100, label %172
    i8 68, label %172
  ]

; <label>:172                                     ; preds = %.lr.ph8.i, %.lr.ph8.i, %.lr.ph8.i
  %173 = getelementptr inbounds i8* %168, i64 %171
  store i8 101, i8* %173, align 1, !tbaa !36
  br label %.loopexit.i

; <label>:174                                     ; preds = %.lr.ph8.i
  %175 = add i32 %p.06.i, 1
  %176 = zext i32 %175 to i64
  %177 = tail call i64 @strlen(i8* %168) #8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %._crit_edge10.i, label %.loopexit.i

._crit_edge10.i:                                  ; preds = %174
  %.phi.trans.insert.i = getelementptr inbounds i8* %168, i64 %176
  %.pre.i27 = load i8* %.phi.trans.insert.i, align 1, !tbaa !36
  br label %.lr.ph8.i

.loopexit.i:                                      ; preds = %174, %172, %167
  %179 = tail call double @atof(i8* %168) #8
  tail call void @free(i8* %168) #8
  %180 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %181 = getelementptr inbounds %struct.PARAM_PROPS* %180, i64 0, i32 6
  %range.03.i28 = load %struct.RANGE** %181, align 8
  %182 = icmp eq %struct.RANGE* %range.03.i28, null
  br i1 %182, label %206, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %.loopexit.i, %199
  %range.04.i29 = phi %struct.RANGE* [ %range.0.i31, %199 ], [ %range.03.i28, %.loopexit.i ]
  %183 = getelementptr inbounds %struct.RANGE* %range.04.i29, i64 0, i32 3
  %184 = load i8** %183, align 8, !tbaa !30
  %185 = tail call i32 @CCTK_IsThornActive(i8* %184) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %194

; <label>:187                                     ; preds = %.lr.ph.i30
  %188 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %189 = getelementptr inbounds %struct.PARAM_PROPS* %188, i64 0, i32 1
  %190 = load i8** %189, align 8, !tbaa !7
  %191 = load i8** %183, align 8, !tbaa !30
  %192 = tail call i32 @CCTK_Equals(i8* %190, i8* %191) #8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

; <label>:194                                     ; preds = %187, %.lr.ph.i30
  %195 = getelementptr inbounds %struct.RANGE* %range.04.i29, i64 0, i32 2
  %196 = load i8** %195, align 8, !tbaa !28
  %197 = tail call i32 @Util_DoubleInRange(double %179, i8* %196) #8
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %202

; <label>:199                                     ; preds = %194, %187
  %200 = getelementptr inbounds %struct.RANGE* %range.04.i29, i64 0, i32 1
  %range.0.i31 = load %struct.RANGE** %200, align 8
  %201 = icmp eq %struct.RANGE* %range.0.i31, null
  br i1 %201, label %._crit_edge.i32, label %.lr.ph.i30

; <label>:202                                     ; preds = %194
  %203 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %204 = bitcast i8** %203 to double**
  %205 = load double** %204, align 8, !tbaa !18
  store double %179, double* %205, align 8, !tbaa !37
  br label %ParameterSetKeyword.exit

._crit_edge.i32:                                  ; preds = %199
  %.pre11.i = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  br label %206

; <label>:206                                     ; preds = %._crit_edge.i32, %.loopexit.i
  %207 = phi %struct.PARAM_PROPS* [ %.pre11.i, %._crit_edge.i32 ], [ %180, %.loopexit.i ]
  %208 = getelementptr inbounds %struct.PARAM_PROPS* %207, i64 0, i32 1
  %209 = load i8** %208, align 8, !tbaa !7
  %210 = getelementptr inbounds %struct.PARAM_PROPS* %207, i64 0, i32 0
  %211 = load i8** %210, align 8, !tbaa !10
  %212 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1454, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8]* @.str28, i64 0, i64 0), i8* %209, i8* %211, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:213                                     ; preds = %0
  %214 = getelementptr inbounds %struct.PARAM* %param, i64 0, i32 1
  %215 = bitcast i8** %214 to i32**
  %216 = load i32** %215, align 8, !tbaa !18
  %217 = tail call i32 @CCTK_SetBoolean(i32* %216, i8* %value) #8
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %ParameterSetKeyword.exit

; <label>:219                                     ; preds = %213
  %220 = load %struct.PARAM_PROPS** %1, align 8, !tbaa !2
  %221 = getelementptr inbounds %struct.PARAM_PROPS* %220, i64 0, i32 1
  %222 = load i8** %221, align 8, !tbaa !7
  %223 = getelementptr inbounds %struct.PARAM_PROPS* %220, i64 0, i32 0
  %224 = load i8** %223, align 8, !tbaa !10
  %225 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1472, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str29, i64 0, i64 0), i8* %222, i8* %224, i8* %value) #8
  br label %ParameterSetKeyword.exit

; <label>:226                                     ; preds = %0
  %227 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1216, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i32 %4) #8
  br label %ParameterSetKeyword.exit

ParameterSetKeyword.exit:                         ; preds = %219, %213, %206, %202, %160, %156, %126, %.thread.i19, %111, %84, %.thread.i9, %69, %42, %.thread.i, %27, %226
  %retval.0 = phi i32 [ -2, %226 ], [ -1, %.thread.i ], [ -1, %42 ], [ %31, %27 ], [ -1, %.thread.i9 ], [ -1, %84 ], [ %73, %69 ], [ -1, %.thread.i19 ], [ -1, %126 ], [ %115, %111 ], [ -1, %160 ], [ 0, %156 ], [ -1, %206 ], [ 0, %202 ], [ %217, %213 ], [ -1, %219 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ParameterAddRange(i8* %implementation, i8* %name, i8* %range_origin, i8* nocapture readonly %range, i8* nocapture readonly %range_description) #1 {
  %1 = tail call %struct.T_SKTREE* @CCTK_ImpThornList(i8* %implementation) #8
  %2 = icmp eq %struct.T_SKTREE* %1, null
  br i1 %2, label %.loopexit, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %1) #8
  %5 = icmp eq %struct.T_SKTREE* %4, null
  br i1 %5, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %3, %12
  %node.01 = phi %struct.T_SKTREE* [ %14, %12 ], [ %4, %3 ]
  %6 = getelementptr inbounds %struct.T_SKTREE* %node.01, i64 0, i32 4
  %7 = load i8** %6, align 8, !tbaa !39
  %8 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %7, i32 2) #7
  %9 = icmp eq %struct.PARAM* %8, null
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %.lr.ph
  %11 = tail call fastcc i32 @ParameterExtend(%struct.PARAM* %8, i8* %range_origin, i8* %range, i8* %range_description) #7
  br label %12

; <label>:12                                      ; preds = %.lr.ph, %10
  %retval.1 = phi i32 [ %11, %10 ], [ -1, %.lr.ph ]
  %13 = getelementptr inbounds %struct.T_SKTREE* %node.01, i64 0, i32 2
  %14 = load %struct.T_SKTREE** %13, align 8, !tbaa !40
  %15 = icmp eq %struct.T_SKTREE* %14, null
  br i1 %15, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %12, %3, %0
  %retval.2 = phi i32 [ -1, %0 ], [ -1, %3 ], [ %retval.1, %12 ]
  ret i32 %retval.2
}

; Function Attrs: optsize
declare %struct.T_SKTREE* @CCTK_ImpThornList(i8*) #3

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParameterSet(i8* %name, i8* %thorn, i8* %value) #1 {
  %1 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 5) #7
  %2 = icmp eq %struct.PARAM* %1, null
  br i1 %2, label %31, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32* @cctk_parameter_set_mask, align 4, !tbaa !35
  switch i32 %4, label %._crit_edge [
    i32 2, label %5
    i32 1, label %13
  ]

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  %7 = load %struct.PARAM_PROPS** %6, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.PARAM_PROPS* %7, i64 0, i32 8
  %9 = load i32* %8, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %._crit_edge, label %11

; <label>:11                                      ; preds = %5
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 390, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i8* %thorn, i8* %name) #8
  br label %31

._crit_edge:                                      ; preds = %3, %5
  %.pre = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  br label %25

; <label>:13                                      ; preds = %3
  %14 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  %15 = load %struct.PARAM_PROPS** %14, align 8, !tbaa !2
  %16 = getelementptr inbounds %struct.PARAM_PROPS* %15, i64 0, i32 7
  %17 = load i32* %16, align 4, !tbaa !17
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

; <label>:19                                      ; preds = %13
  %20 = getelementptr inbounds %struct.PARAM_PROPS* %15, i64 0, i32 8
  %21 = load i32* %20, align 4, !tbaa !15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %19
  %24 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 402, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([126 x i8]* @.str3, i64 0, i64 0), i8* %thorn, i8* %name) #8
  br label %31

; <label>:25                                      ; preds = %._crit_edge, %13
  %.pre-phi = phi %struct.PARAM_PROPS** [ %.pre, %._crit_edge ], [ %14, %13 ]
  %26 = tail call fastcc i32 @ParameterSetSimple(%struct.PARAM* %1, i8* %value) #7
  %27 = load %struct.PARAM_PROPS** %.pre-phi, align 8, !tbaa !2
  %28 = getelementptr inbounds %struct.PARAM_PROPS* %27, i64 0, i32 7
  %29 = load i32* %28, align 4, !tbaa !17
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4, !tbaa !17
  br label %31

; <label>:31                                      ; preds = %0, %23, %19, %11, %25
  %retval.0 = phi i32 [ -3, %11 ], [ %26, %25 ], [ 0, %19 ], [ 0, %23 ], [ -2, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_ParameterGet(i8* %name, i8* %thorn, i32* nocapture %type) #1 {
  %1 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 5) #7
  %2 = icmp eq %struct.PARAM* %1, null
  br i1 %2, label %10, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  %5 = load %struct.PARAM_PROPS** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.PARAM_PROPS* %5, i64 0, i32 5
  %7 = load i32* %6, align 4, !tbaa !14
  store i32 %7, i32* %type, align 4, !tbaa !35
  %8 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 1
  %9 = load i8** %8, align 8, !tbaa !18
  br label %10

; <label>:10                                      ; preds = %0, %3
  %retval.0 = phi i8* [ %9, %3 ], [ null, %0 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParameterQueryTimesSet(i8* %name, i8* %thorn) #1 {
  %1 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 5) #8
  %2 = icmp eq %struct.PARAM* %1, null
  br i1 %2, label %CCTK_ParameterData.exit.thread, label %CCTK_ParameterData.exit

CCTK_ParameterData.exit:                          ; preds = %0
  %3 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  %4 = load %struct.PARAM_PROPS** %3, align 8, !tbaa !2
  %5 = icmp eq %struct.PARAM_PROPS* %4, null
  br i1 %5, label %CCTK_ParameterData.exit.thread, label %6

; <label>:6                                       ; preds = %CCTK_ParameterData.exit
  %7 = getelementptr inbounds %struct.PARAM_PROPS* %4, i64 0, i32 7
  %8 = load i32* %7, align 4, !tbaa !17
  br label %CCTK_ParameterData.exit.thread

CCTK_ParameterData.exit.thread:                   ; preds = %0, %CCTK_ParameterData.exit, %6
  %9 = phi i32 [ %8, %6 ], [ -1, %CCTK_ParameterData.exit ], [ -1, %0 ]
  ret i32 %9
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PARAM_PROPS* @CCTK_ParameterData(i8* %name, i8* %thorn) #1 {
  %1 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %name, i8* %thorn, i32 5) #7
  %2 = icmp eq %struct.PARAM* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.PARAM* %1, i64 0, i32 0
  %5 = load %struct.PARAM_PROPS** %4, align 8, !tbaa !2
  br label %6

; <label>:6                                       ; preds = %0, %3
  %7 = phi %struct.PARAM_PROPS* [ %5, %3 ], [ null, %0 ]
  ret %struct.PARAM_PROPS* %7
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @CCTK_ParameterValString(i8* %param_name, i8* %thorn) #1 {
  %buffer = alloca [80 x i8], align 16
  %1 = getelementptr inbounds [80 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 80, i8* %1) #2
  %2 = tail call fastcc %struct.PARAM* @ParameterFind(i8* %param_name, i8* %thorn, i32 5) #8
  %3 = icmp eq %struct.PARAM* %2, null
  br i1 %3, label %CCTK_ParameterGet.exit.thread, label %CCTK_ParameterGet.exit

CCTK_ParameterGet.exit:                           ; preds = %0
  %4 = getelementptr inbounds %struct.PARAM* %2, i64 0, i32 0
  %5 = load %struct.PARAM_PROPS** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.PARAM_PROPS* %5, i64 0, i32 5
  %7 = load i32* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds %struct.PARAM* %2, i64 0, i32 1
  %9 = load i8** %8, align 8, !tbaa !18
  %10 = icmp eq i8* %9, null
  br i1 %10, label %CCTK_ParameterGet.exit.thread, label %11

; <label>:11                                      ; preds = %CCTK_ParameterGet.exit
  switch i32 %7, label %32 [
    i32 1, label %12
    i32 2, label %12
    i32 3, label %12
    i32 6, label %16
    i32 4, label %22
    i32 5, label %27
  ]

; <label>:12                                      ; preds = %11, %11, %11
  %13 = bitcast i8* %9 to i8**
  %14 = load i8** %13, align 8, !tbaa !19
  %15 = tail call i8* @strdup(i8* %14) #8
  br label %CCTK_ParameterGet.exit.thread

; <label>:16                                      ; preds = %11
  %17 = bitcast i8* %9 to i32*
  %18 = load i32* %17, align 4, !tbaa !35
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %19, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0)
  %21 = tail call i8* @strdup(i8* %20) #8
  br label %CCTK_ParameterGet.exit.thread

; <label>:22                                      ; preds = %11
  %23 = bitcast i8* %9 to i32*
  %24 = load i32* %23, align 4, !tbaa !35
  %25 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 80, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32 %24) #8
  %26 = call i8* @strdup(i8* %1) #8
  br label %CCTK_ParameterGet.exit.thread

; <label>:27                                      ; preds = %11
  %28 = bitcast i8* %9 to double*
  %29 = load double* %28, align 8, !tbaa !37
  %30 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 80, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), double %29) #8
  %31 = call i8* @strdup(i8* %1) #8
  br label %CCTK_ParameterGet.exit.thread

; <label>:32                                      ; preds = %11
  %33 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 588, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str8, i64 0, i64 0), i32 %7, i8* %thorn, i8* %param_name) #8
  br label %CCTK_ParameterGet.exit.thread

CCTK_ParameterGet.exit.thread:                    ; preds = %0, %CCTK_ParameterGet.exit, %12, %16, %22, %27, %32
  %retval.0 = phi i8* [ null, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %16 ], [ %15, %12 ], [ null, %CCTK_ParameterGet.exit ], [ null, %0 ]
  call void @llvm.lifetime.end(i64 80, i8* %1) #2
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_parametervalstring_(i32* nocapture %nchars, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #8
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #8
  %4 = tail call i8* @CCTK_ParameterValString(i8* %1, i8* %2) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %20, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %4) #8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %nchars, align 4, !tbaa !35
  %9 = zext i32 %cctk_strlen3 to i64
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %6
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 643, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([127 x i8]* @.str9, i64 0, i64 0), i8* %4, i8* %2, i8* %1) #8
  br label %13

; <label>:13                                      ; preds = %11, %6
  %c_strlen.0 = phi i64 [ %9, %11 ], [ %7, %6 ]
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %cctk_str3, i1 false)
  %15 = tail call i8* @__memcpy_chk(i8* %cctk_str3, i8* %4, i64 %c_strlen.0, i64 %14) #8
  %16 = getelementptr inbounds i8* %cctk_str3, i64 %c_strlen.0
  %17 = sub i64 %9, %c_strlen.0
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false)
  %19 = tail call i8* @__memset_chk(i8* %16, i32 32, i64 %17, i64 %18) #8
  br label %21

; <label>:20                                      ; preds = %0
  store i32 -1, i32* %nchars, align 4, !tbaa !35
  br label %21

; <label>:21                                      ; preds = %20, %13
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  tail call void @free(i8* %3) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ParameterWalk(i32 %first, i8* %origin, i8** %pfullname, %struct.PARAM_PROPS** %pdata) #1 {
  %1 = icmp eq i32 %first, 0
  br i1 %1, label %2, label %10

; <label>:2                                       ; preds = %0
  %3 = icmp ne i8* %origin, null
  %4 = load %struct.PARAM** @CCTK_ParameterWalk.prev_startpoint_thorn, align 8, !tbaa !19
  %5 = load %struct.PARAM** @CCTK_ParameterWalk.prev_startpoint_all, align 8, !tbaa !19
  %6 = select i1 %3, %struct.PARAM* %4, %struct.PARAM* %5
  %7 = icmp eq %struct.PARAM* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %2
  %9 = tail call i32 @CCTK_Warn(i32 2, i32 742, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([93 x i8]* @.str10, i64 0, i64 0)) #8
  br label %.loopexit

; <label>:10                                      ; preds = %0, %2
  %return_found.0 = phi i32 [ 0, %2 ], [ 1, %0 ]
  %startpoint.0 = phi %struct.PARAM* [ %6, %2 ], [ null, %0 ]
  %11 = load %struct.T_SKTREE** @paramtree, align 8, !tbaa !19
  %12 = tail call %struct.T_SKTREE* @SKTreeFindFirst(%struct.T_SKTREE* %11) #8
  %13 = icmp eq %struct.T_SKTREE* %12, null
  br i1 %13, label %.loopexit, label %.lr.ph13

.lr.ph13:                                         ; preds = %10
  %14 = icmp eq i8* %origin, null
  br label %15

; <label>:15                                      ; preds = %.lr.ph13, %._crit_edge
  %startpoint.111 = phi %struct.PARAM* [ %startpoint.0, %.lr.ph13 ], [ %startpoint.2.lcssa, %._crit_edge ]
  %tnode.010 = phi %struct.T_SKTREE* [ %12, %.lr.ph13 ], [ %75, %._crit_edge ]
  %return_found.19 = phi i32 [ %return_found.0, %.lr.ph13 ], [ %return_found.2.lcssa, %._crit_edge ]
  %16 = getelementptr inbounds %struct.T_SKTREE* %tnode.010, i64 0, i32 5
  %17 = bitcast i8** %16 to %struct.PARAMTREENODE**
  %18 = load %struct.PARAMTREENODE** %17, align 8, !tbaa !20
  %19 = getelementptr inbounds %struct.PARAMTREENODE* %18, i64 0, i32 0
  %paramlist.03 = load %struct.PARAMLIST** %19, align 8
  %20 = icmp eq %struct.PARAMLIST* %paramlist.03, null
  br i1 %20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %15, %71
  %paramlist.06 = phi %struct.PARAMLIST* [ %paramlist.0, %71 ], [ %paramlist.03, %15 ]
  %startpoint.25 = phi %struct.PARAM* [ %startpoint.4, %71 ], [ %startpoint.111, %15 ]
  %return_found.24 = phi i32 [ %return_found.3, %71 ], [ %return_found.19, %15 ]
  %21 = icmp eq %struct.PARAM* %startpoint.25, null
  %.pre17 = getelementptr inbounds %struct.PARAMLIST* %paramlist.06, i64 0, i32 0
  br i1 %21, label %22, label %._crit_edge15

; <label>:22                                      ; preds = %.lr.ph
  br i1 %14, label %._crit_edge16, label %23

; <label>:23                                      ; preds = %22
  %24 = load %struct.PARAM** %.pre17, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.PARAM* %24, i64 0, i32 0
  %26 = load %struct.PARAM_PROPS** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.PARAM_PROPS* %26, i64 0, i32 1
  %28 = load i8** %27, align 8, !tbaa !7
  %29 = tail call i32 @CCTK_Equals(i8* %origin, i8* %28) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %._crit_edge15, label %._crit_edge16

._crit_edge16:                                    ; preds = %22, %23
  %31 = load %struct.PARAM** %.pre17, align 8, !tbaa !22
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %.lr.ph, %23, %._crit_edge16
  %startpoint.3 = phi %struct.PARAM* [ null, %23 ], [ %31, %._crit_edge16 ], [ %startpoint.25, %.lr.ph ]
  %32 = load %struct.PARAM** %.pre17, align 8, !tbaa !22
  %33 = icmp eq %struct.PARAM* %startpoint.3, %32
  br i1 %33, label %34, label %71

; <label>:34                                      ; preds = %._crit_edge15
  %35 = icmp eq i32 %return_found.24, 0
  br i1 %35, label %71, label %36

; <label>:36                                      ; preds = %34
  %37 = icmp eq i8** %pfullname, null
  br i1 %37, label %64, label %38

; <label>:38                                      ; preds = %36
  %39 = getelementptr inbounds %struct.PARAM* %startpoint.3, i64 0, i32 0
  %40 = load %struct.PARAM_PROPS** %39, align 8, !tbaa !2
  %41 = getelementptr inbounds %struct.PARAM_PROPS* %40, i64 0, i32 1
  %42 = load i8** %41, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.PARAM_PROPS* %40, i64 0, i32 2
  %44 = load i32* %43, align 4, !tbaa !13
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %48, label %46

; <label>:46                                      ; preds = %38
  %47 = tail call i8* @CCTK_ThornImplementation(i8* %42) #8
  %.pre = load %struct.PARAM_PROPS** %39, align 8, !tbaa !2
  br label %48

; <label>:48                                      ; preds = %38, %46
  %49 = phi %struct.PARAM_PROPS* [ %.pre, %46 ], [ %40, %38 ]
  %prefix.0 = phi i8* [ %47, %46 ], [ %42, %38 ]
  %50 = tail call i64 @strlen(i8* %prefix.0) #8
  %51 = getelementptr inbounds %struct.PARAM_PROPS* %49, i64 0, i32 0
  %52 = load i8** %51, align 8, !tbaa !10
  %53 = tail call i64 @strlen(i8* %52) #8
  %54 = add i64 %50, 3
  %55 = add i64 %54, %53
  %56 = tail call i8* @malloc(i64 %55) #8
  store i8* %56, i8** %pfullname, align 8, !tbaa !19
  %57 = icmp eq i8* %56, null
  br i1 %57, label %64, label %58

; <label>:58                                      ; preds = %48
  %59 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %56, i1 false)
  %60 = load %struct.PARAM_PROPS** %39, align 8, !tbaa !2
  %61 = getelementptr inbounds %struct.PARAM_PROPS* %60, i64 0, i32 0
  %62 = load i8** %61, align 8, !tbaa !10
  %63 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %56, i32 0, i64 %59, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* %prefix.0, i8* %62) #8
  br label %64

; <label>:64                                      ; preds = %48, %36, %58
  %65 = icmp eq %struct.PARAM_PROPS** %pdata, null
  br i1 %65, label %70, label %66

; <label>:66                                      ; preds = %64
  %67 = bitcast %struct.PARAM* %startpoint.3 to i64*
  %68 = load i64* %67, align 8, !tbaa !2
  %69 = bitcast %struct.PARAM_PROPS** %pdata to i64*
  store i64 %68, i64* %69, align 8, !tbaa !19
  br label %70

; <label>:70                                      ; preds = %64, %66
  store %struct.PARAM* %startpoint.3, %struct.PARAM** @CCTK_ParameterWalk.prev_startpoint_thorn, align 8, !tbaa !19
  store %struct.PARAM* %startpoint.3, %struct.PARAM** @CCTK_ParameterWalk.prev_startpoint_all, align 8, !tbaa !19
  br label %.loopexit

; <label>:71                                      ; preds = %34, %._crit_edge15
  %return_found.3 = phi i32 [ %return_found.24, %._crit_edge15 ], [ 1, %34 ]
  %startpoint.4 = phi %struct.PARAM* [ %startpoint.3, %._crit_edge15 ], [ null, %34 ]
  %72 = getelementptr inbounds %struct.PARAMLIST* %paramlist.06, i64 0, i32 2
  %paramlist.0 = load %struct.PARAMLIST** %72, align 8
  %73 = icmp eq %struct.PARAMLIST* %paramlist.0, null
  br i1 %73, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %71, %15
  %startpoint.2.lcssa = phi %struct.PARAM* [ %startpoint.111, %15 ], [ %startpoint.4, %71 ]
  %return_found.2.lcssa = phi i32 [ %return_found.19, %15 ], [ %return_found.3, %71 ]
  %74 = getelementptr inbounds %struct.T_SKTREE* %tnode.010, i64 0, i32 2
  %75 = load %struct.T_SKTREE** %74, align 8, !tbaa !40
  %76 = icmp eq %struct.T_SKTREE* %75, null
  br i1 %76, label %.loopexit, label %15

.loopexit:                                        ; preds = %._crit_edge, %10, %70, %8
  %.0 = phi i32 [ 0, %70 ], [ -1, %8 ], [ 1, %10 ], [ 1, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_SetParameterSetMask(i32 %mask) #1 {
  store i32 %mask, i32* @cctk_parameter_set_mask, align 4, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare i32 @STR_cmpi(i8*, i8*) #3

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeFindNode(%struct.T_SKTREE*, i8*) #3

; Function Attrs: optsize
declare %struct.T_SKTREE* @SKTreeStoreData(%struct.T_SKTREE*, %struct.T_SKTREE*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_SetString(i8**, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_RegexMatch(i8*, i8*, i32, %struct.regmatch_t*) #3

; Function Attrs: nounwind optsize
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #4

; Function Attrs: optsize
declare i32 @Util_IntInRange(i32, i8*) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @Util_DoubleInRange(double, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_SetBoolean(i32*, i8*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"PARAM", !4, i64 0, !4, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"PARAM_PROPS", !4, i64 0, !4, i64 8, !9, i64 16, !4, i64 24, !4, i64 32, !9, i64 40, !4, i64 48, !9, i64 56, !9, i64 60}
!9 = !{!"int", !5, i64 0}
!10 = !{!8, !4, i64 0}
!11 = !{!8, !4, i64 24}
!12 = !{!8, !4, i64 32}
!13 = !{!8, !9, i64 16}
!14 = !{!8, !9, i64 40}
!15 = !{!8, !9, i64 60}
!16 = !{!8, !4, i64 48}
!17 = !{!8, !9, i64 56}
!18 = !{!3, !4, i64 8}
!19 = !{!4, !4, i64 0}
!20 = !{!21, !4, i64 40}
!21 = !{!"T_SKTREE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!22 = !{!23, !4, i64 0}
!23 = !{!"PARAMLIST", !4, i64 0, !4, i64 8, !4, i64 16}
!24 = !{!23, !4, i64 16}
!25 = !{!23, !4, i64 8}
!26 = !{!27, !4, i64 0}
!27 = !{!"PARAMTREENODE", !4, i64 0}
!28 = !{!29, !4, i64 16}
!29 = !{!"RANGE", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !9, i64 32, !4, i64 40}
!30 = !{!29, !4, i64 24}
!31 = !{!29, !4, i64 40}
!32 = !{!29, !9, i64 32}
!33 = !{!29, !4, i64 8}
!34 = !{!29, !4, i64 0}
!35 = !{!9, !9, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !5, i64 0}
!39 = !{!21, !4, i64 32}
!40 = !{!21, !4, i64 16}
