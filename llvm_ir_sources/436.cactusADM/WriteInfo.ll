; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%union.anon = type { %struct.cGH* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"IOBasic_WriteInfo: No info output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"IOBasic_WriteInfo: Unsupported data type\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"IOBasic_WriteInfo: Internal error in reduction '%s'\00", align 1
@.str5 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteInfo.c,v 1.16 2001/12/28 21:22:52 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteInfo_c() #0 {
entry:
  ret i8* getelementptr inbounds ([92 x i8]* @.str5, i64 0, i64 0), !dbg !111
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_WriteInfo(%struct.cGH* %GH, i32 %vindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !54), !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !55), !dbg !112
  tail call void @llvm.dbg.declare(metadata !113, metadata !103), !dbg !114
  %call = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !115
  %idxprom = sext i32 %vindex to i64, !dbg !116
  %info_reductions = getelementptr inbounds i8* %call, i64 48, !dbg !116
  %0 = bitcast i8* %info_reductions to %struct.IOBASIC_REDUCTIONLIST**, !dbg !116
  %1 = load %struct.IOBASIC_REDUCTIONLIST** %0, align 8, !dbg !116, !tbaa !117
  %reductions = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %1, i64 %idxprom, i32 1, !dbg !116
  %2 = load %struct.IOBASIC_REDUCTION** %reductions, align 8, !dbg !116, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{%struct.IOBASIC_REDUCTION* %2}, i64 0, metadata !102), !dbg !116
  %call1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #5, !dbg !120
  %call2 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %call1) #5, !dbg !120
  %tobool = icmp eq i32 %call2, 0, !dbg !120
  br i1 %tobool, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %call3 = tail call i8* @CCTK_FullName(i32 %vindex) #5, !dbg !121
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !57), !dbg !121
  %call4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 85, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i8* %call3) #5, !dbg !123
  tail call void @free(i8* %call3) #5, !dbg !124
  %tobool5209 = icmp eq %struct.IOBASIC_REDUCTION* %2, null, !dbg !125
  br i1 %tobool5209, label %return, label %while.body, !dbg !125

while.body:                                       ; preds = %if.then, %while.body
  %reduction.0210 = phi %struct.IOBASIC_REDUCTION* [ %3, %while.body ], [ %2, %if.then ]
  %is_valid = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.0210, i64 0, i32 2, !dbg !126
  store i8 0, i8* %is_valid, align 1, !dbg !126, !tbaa !118
  %next = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.0210, i64 0, i32 4, !dbg !128
  %3 = load %struct.IOBASIC_REDUCTION** %next, align 8, !dbg !128, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{%struct.IOBASIC_REDUCTION* %3}, i64 0, metadata !102), !dbg !128
  %tobool5 = icmp eq %struct.IOBASIC_REDUCTION* %3, null, !dbg !125
  br i1 %tobool5, label %return, label %while.body, !dbg !125

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #5, !dbg !129
  %cmp = icmp eq i32 %call6, 1, !dbg !129
  br i1 %cmp, label %if.then7, label %while.cond123.preheader, !dbg !129

while.cond123.preheader:                          ; preds = %if.end
  %tobool124212 = icmp eq %struct.IOBASIC_REDUCTION* %2, null, !dbg !130
  br i1 %tobool124212, label %return, label %while.body125, !dbg !130

if.then7:                                         ; preds = %if.end
  %is_valid8 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 2, !dbg !132
  store i8 1, i8* %is_valid8, align 1, !dbg !132, !tbaa !118
  %call9 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #5, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i8* %call9}, i64 0, metadata !101), !dbg !134
  %call10 = tail call i32 @CCTK_VarTypeI(i32 %vindex) #5, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !56), !dbg !135
  switch i32 %call10, label %if.else106 [
    i32 1, label %if.then12
    i32 2, label %if.then15
    i32 6, label %if.then21
    i32 10, label %if.then26
    i32 3, label %if.then37
    i32 4, label %if.then43
    i32 5, label %if.then49
    i32 7, label %if.then55
    i32 11, label %if.then61
    i32 8, label %if.then74
    i32 12, label %if.then79
    i32 9, label %if.then90
    i32 13, label %if.then96
  ], !dbg !136

if.then12:                                        ; preds = %if.then7
  %4 = load i8* %call9, align 1, !dbg !137, !tbaa !118
  %conv = uitofp i8 %4 to double, !dbg !137
  %value = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !137
  store double %conv, double* %value, align 8, !dbg !137, !tbaa !139
  br label %return, !dbg !140

if.then15:                                        ; preds = %if.then7
  %5 = bitcast i8* %call9 to i32*, !dbg !141
  %6 = load i32* %5, align 4, !dbg !141, !tbaa !143
  %conv16 = sitofp i32 %6 to double, !dbg !141
  %value17 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !141
  store double %conv16, double* %value17, align 8, !dbg !141, !tbaa !139
  br label %return, !dbg !144

if.then21:                                        ; preds = %if.then7
  %7 = bitcast i8* %call9 to double*, !dbg !145
  %8 = load double* %7, align 8, !dbg !145, !tbaa !139
  %value22 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !145
  store double %8, double* %value22, align 8, !dbg !145, !tbaa !139
  br label %return, !dbg !147

if.then26:                                        ; preds = %if.then7
  %9 = bitcast i8* %call9 to double*, !dbg !148
  %10 = load double* %9, align 8, !dbg !148, !tbaa !139
  %value28 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !148
  store double %10, double* %value28, align 8, !dbg !148, !tbaa !139
  %arrayidx29 = getelementptr inbounds i8* %call9, i64 8, !dbg !150
  %11 = bitcast i8* %arrayidx29 to double*, !dbg !150
  %12 = load double* %11, align 8, !dbg !150, !tbaa !139
  %next30 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 4, !dbg !150
  %13 = load %struct.IOBASIC_REDUCTION** %next30, align 8, !dbg !150, !tbaa !117
  %value31 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %13, i64 0, i32 3, !dbg !150
  store double %12, double* %value31, align 8, !dbg !150, !tbaa !139
  %is_valid33 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %13, i64 0, i32 2, !dbg !151
  store i8 1, i8* %is_valid33, align 1, !dbg !151, !tbaa !118
  br label %return, !dbg !152

if.then37:                                        ; preds = %if.then7
  %14 = bitcast i8* %call9 to i16*, !dbg !153
  %15 = load i16* %14, align 2, !dbg !153, !tbaa !155
  %conv38 = sitofp i16 %15 to double, !dbg !153
  %value39 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !153
  store double %conv38, double* %value39, align 8, !dbg !153, !tbaa !139
  br label %return, !dbg !156

if.then43:                                        ; preds = %if.then7
  %16 = bitcast i8* %call9 to i32*, !dbg !157
  %17 = load i32* %16, align 4, !dbg !157, !tbaa !143
  %conv44 = sitofp i32 %17 to double, !dbg !157
  %value45 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !157
  store double %conv44, double* %value45, align 8, !dbg !157, !tbaa !139
  br label %return, !dbg !159

if.then49:                                        ; preds = %if.then7
  %18 = bitcast i8* %call9 to i64*, !dbg !160
  %19 = load i64* %18, align 8, !dbg !160, !tbaa !162
  %conv50 = sitofp i64 %19 to double, !dbg !160
  %value51 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !160
  store double %conv50, double* %value51, align 8, !dbg !160, !tbaa !139
  br label %return, !dbg !163

if.then55:                                        ; preds = %if.then7
  %20 = bitcast i8* %call9 to float*, !dbg !164
  %21 = load float* %20, align 4, !dbg !164, !tbaa !166
  %conv56 = fpext float %21 to double, !dbg !164
  %value57 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !164
  store double %conv56, double* %value57, align 8, !dbg !164, !tbaa !139
  br label %return, !dbg !167

if.then61:                                        ; preds = %if.then7
  %22 = bitcast i8* %call9 to float*, !dbg !168
  %23 = load float* %22, align 4, !dbg !168, !tbaa !166
  %conv63 = fpext float %23 to double, !dbg !168
  %value64 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !168
  store double %conv63, double* %value64, align 8, !dbg !168, !tbaa !139
  %arrayidx65 = getelementptr inbounds i8* %call9, i64 4, !dbg !170
  %24 = bitcast i8* %arrayidx65 to float*, !dbg !170
  %25 = load float* %24, align 4, !dbg !170, !tbaa !166
  %conv66 = fpext float %25 to double, !dbg !170
  %next67 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 4, !dbg !170
  %26 = load %struct.IOBASIC_REDUCTION** %next67, align 8, !dbg !170, !tbaa !117
  %value68 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %26, i64 0, i32 3, !dbg !170
  store double %conv66, double* %value68, align 8, !dbg !170, !tbaa !139
  %is_valid70 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %26, i64 0, i32 2, !dbg !171
  store i8 1, i8* %is_valid70, align 1, !dbg !171, !tbaa !118
  br label %return, !dbg !172

if.then74:                                        ; preds = %if.then7
  %27 = bitcast i8* %call9 to double*, !dbg !173
  %28 = load double* %27, align 8, !dbg !173, !tbaa !139
  %value75 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !173
  store double %28, double* %value75, align 8, !dbg !173, !tbaa !139
  br label %return, !dbg !175

if.then79:                                        ; preds = %if.then7
  %29 = bitcast i8* %call9 to double*, !dbg !176
  %30 = load double* %29, align 8, !dbg !176, !tbaa !139
  %value81 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !176
  store double %30, double* %value81, align 8, !dbg !176, !tbaa !139
  %arrayidx82 = getelementptr inbounds i8* %call9, i64 8, !dbg !178
  %31 = bitcast i8* %arrayidx82 to double*, !dbg !178
  %32 = load double* %31, align 8, !dbg !178, !tbaa !139
  %next83 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 4, !dbg !178
  %33 = load %struct.IOBASIC_REDUCTION** %next83, align 8, !dbg !178, !tbaa !117
  %value84 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %33, i64 0, i32 3, !dbg !178
  store double %32, double* %value84, align 8, !dbg !178, !tbaa !139
  %is_valid86 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %33, i64 0, i32 2, !dbg !179
  store i8 1, i8* %is_valid86, align 1, !dbg !179, !tbaa !118
  br label %return, !dbg !180

if.then90:                                        ; preds = %if.then7
  %34 = bitcast i8* %call9 to x86_fp80*, !dbg !181
  %35 = load x86_fp80* %34, align 16, !dbg !181, !tbaa !183
  %conv91 = fptrunc x86_fp80 %35 to double, !dbg !181
  %value92 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !181
  store double %conv91, double* %value92, align 8, !dbg !181, !tbaa !139
  br label %return, !dbg !184

if.then96:                                        ; preds = %if.then7
  %36 = bitcast i8* %call9 to x86_fp80*, !dbg !185
  %37 = load x86_fp80* %36, align 16, !dbg !185, !tbaa !183
  %conv98 = fptrunc x86_fp80 %37 to double, !dbg !185
  %value99 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 3, !dbg !185
  store double %conv98, double* %value99, align 8, !dbg !185, !tbaa !139
  %arrayidx100 = getelementptr inbounds i8* %call9, i64 16, !dbg !187
  %38 = bitcast i8* %arrayidx100 to x86_fp80*, !dbg !187
  %39 = load x86_fp80* %38, align 16, !dbg !187, !tbaa !183
  %conv101 = fptrunc x86_fp80 %39 to double, !dbg !187
  %next102 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %2, i64 0, i32 4, !dbg !187
  %40 = load %struct.IOBASIC_REDUCTION** %next102, align 8, !dbg !187, !tbaa !117
  %value103 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %40, i64 0, i32 3, !dbg !187
  store double %conv101, double* %value103, align 8, !dbg !187, !tbaa !139
  %is_valid105 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %40, i64 0, i32 2, !dbg !188
  store i8 1, i8* %is_valid105, align 1, !dbg !188, !tbaa !118
  br label %return, !dbg !189

if.else106:                                       ; preds = %if.then7
  %call107 = tail call i32 @CCTK_Warn(i32 3, i32 180, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !190
  store i8 0, i8* %is_valid8, align 1, !dbg !192, !tbaa !118
  br label %return

while.body125:                                    ; preds = %while.cond123.preheader, %if.end136
  %reduction.1213 = phi %struct.IOBASIC_REDUCTION* [ %44, %if.end136 ], [ %2, %while.cond123.preheader ]
  %handle = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.1213, i64 0, i32 0, !dbg !193
  %41 = load i32* %handle, align 4, !dbg !193, !tbaa !143
  %value126 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.1213, i64 0, i32 3, !dbg !193
  %42 = bitcast double* %value126 to i8*, !dbg !193
  %call127 = tail call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %41, i32 1, i32 6, i8* %42, i32 1, i32 %vindex) #5, !dbg !193
  %cmp128 = icmp eq i32 %call127, 0, !dbg !193
  %conv130 = zext i1 %cmp128 to i8, !dbg !193
  %is_valid131 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.1213, i64 0, i32 2, !dbg !193
  store i8 %conv130, i8* %is_valid131, align 1, !dbg !193, !tbaa !118
  br i1 %cmp128, label %if.end136, label %if.then134, !dbg !195

if.then134:                                       ; preds = %while.body125
  %name = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.1213, i64 0, i32 1, !dbg !196
  %43 = load i8** %name, align 8, !dbg !196, !tbaa !117
  %call135 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 195, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i8* %43) #5, !dbg !196
  br label %if.end136, !dbg !198

if.end136:                                        ; preds = %if.then134, %while.body125
  %next137 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.1213, i64 0, i32 4, !dbg !199
  %44 = load %struct.IOBASIC_REDUCTION** %next137, align 8, !dbg !199, !tbaa !117
  tail call void @llvm.dbg.value(metadata !{%struct.IOBASIC_REDUCTION* %44}, i64 0, metadata !102), !dbg !199
  %tobool124 = icmp eq %struct.IOBASIC_REDUCTION* %44, null, !dbg !130
  br i1 %tobool124, label %return, label %while.body125, !dbg !130

return:                                           ; preds = %while.cond123.preheader, %if.end136, %if.then, %while.body, %if.then15, %if.then26, %if.then43, %if.then55, %if.then74, %if.then90, %if.else106, %if.then96, %if.then79, %if.then61, %if.then49, %if.then37, %if.then21, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.then21 ], [ 0, %if.then37 ], [ 0, %if.then49 ], [ 0, %if.then61 ], [ 0, %if.then79 ], [ 0, %if.then96 ], [ 0, %if.else106 ], [ 0, %if.then90 ], [ 0, %if.then74 ], [ 0, %if.then55 ], [ 0, %if.then43 ], [ 0, %if.then26 ], [ 0, %if.then15 ], [ -1, %while.body ], [ -1, %if.then ], [ 0, %if.end136 ], [ 0, %while.cond123.preheader ]
  ret i32 %retval.0, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !109, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_IOBasic_WriteInfo_c", metadata !"CCTKi_version_CactusBase_IOBasic_WriteInfo_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOBasic_WriteInfo_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_CactusBase_IOBasic_WriteInfo_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOBasic_WriteInfo", metadata !"IOBasic_WriteInfo", metadata !"", i32 60, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @IOBasic_WriteInfo, null, null, metadata !53, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [IOBasic_WriteInfo]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !59, metadata !101, metadata !102, metadata !103}
!54 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777276, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 60]
!55 = metadata !{i32 786689, metadata !11, metadata !"vindex", metadata !5, i32 33554492, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 60]
!56 = metadata !{i32 786688, metadata !11, metadata !"vtype", metadata !5, i32 62, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtype] [line 62]
!57 = metadata !{i32 786688, metadata !11, metadata !"fullname", metadata !5, i32 63, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 63]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786688, metadata !11, metadata !"myGH", metadata !5, i32 64, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 64]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasicGH]
!61 = metadata !{i32 786454, metadata !1, null, metadata !"iobasicGH", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [iobasicGH] [line 52, size 0, align 0, offset 0] [from IOBASIC_GH]
!62 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_GH", i32 29, i64 512, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_GH] [line 29, size 512, align 64, offset 0] [from ]
!63 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !90}
!65 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outScalar_every", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [outScalar_every] [line 32, size 32, align 32, offset 0] [from int]
!66 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outInfo_every", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [outInfo_every] [line 33, size 32, align 32, offset 32] [from int]
!67 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"info_reductions_changed", i32 34, i64 8, i64 8, i64 64, i32 0, metadata !10} ; [ DW_TAG_member ] [info_reductions_changed] [line 34, size 8, align 8, offset 64] [from char]
!68 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"do_outScalar", i32 37, i64 64, i64 64, i64 128, i32 0, metadata !58} ; [ DW_TAG_member ] [do_outScalar] [line 37, size 64, align 64, offset 128] [from ]
!69 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outdirScalar", i32 40, i64 64, i64 64, i64 192, i32 0, metadata !58} ; [ DW_TAG_member ] [outdirScalar] [line 40, size 64, align 64, offset 192] [from ]
!70 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outInfo_last", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [outInfo_last] [line 43, size 64, align 64, offset 256] [from ]
!71 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"outScalar_last", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [outScalar_last] [line 44, size 64, align 64, offset 320] [from ]
!72 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"info_reductions", i32 47, i64 64, i64 64, i64 384, i32 0, metadata !73} ; [ DW_TAG_member ] [info_reductions] [line 47, size 64, align 64, offset 384] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reductionlist_t]
!74 = metadata !{i32 786454, metadata !63, null, metadata !"iobasic_reductionlist_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [iobasic_reductionlist_t] [line 27, size 0, align 0, offset 0] [from IOBASIC_REDUCTIONLIST]
!75 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_REDUCTIONLIST", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTIONLIST] [line 23, size 128, align 64, offset 0] [from ]
!76 = metadata !{metadata !77, metadata !79}
!77 = metadata !{i32 786445, metadata !63, metadata !75, metadata !"num_reductions", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [num_reductions] [line 25, size 32, align 32, offset 0] [from unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{i32 786445, metadata !63, metadata !75, metadata !"reductions", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [reductions] [line 26, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reduction_t]
!81 = metadata !{i32 786454, metadata !63, null, metadata !"iobasic_reduction_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [iobasic_reduction_t] [line 21, size 0, align 0, offset 0] [from IOBASIC_REDUCTION]
!82 = metadata !{i32 786451, metadata !63, null, metadata !"IOBASIC_REDUCTION", i32 14, i64 320, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTION] [line 14, size 320, align 64, offset 0] [from ]
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!84 = metadata !{i32 786445, metadata !63, metadata !82, metadata !"handle", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [handle] [line 16, size 32, align 32, offset 0] [from int]
!85 = metadata !{i32 786445, metadata !63, metadata !82, metadata !"name", i32 17, i64 64, i64 64, i64 64, i32 0, metadata !58} ; [ DW_TAG_member ] [name] [line 17, size 64, align 64, offset 64] [from ]
!86 = metadata !{i32 786445, metadata !63, metadata !82, metadata !"is_valid", i32 18, i64 8, i64 8, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [is_valid] [line 18, size 8, align 8, offset 128] [from char]
!87 = metadata !{i32 786445, metadata !63, metadata !82, metadata !"value", i32 19, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [value] [line 19, size 64, align 64, offset 192] [from double]
!88 = metadata !{i32 786445, metadata !63, metadata !82, metadata !"next", i32 20, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [next] [line 20, size 64, align 64, offset 256] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IOBASIC_REDUCTION]
!90 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"filenameListScalar", i32 50, i64 64, i64 64, i64 448, i32 0, metadata !91} ; [ DW_TAG_member ] [filenameListScalar] [line 50, size 64, align 64, offset 448] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!92 = metadata !{i32 786454, metadata !63, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!93 = metadata !{i32 786451, metadata !94, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !95, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!94 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!95 = metadata !{metadata !96, metadata !98, metadata !99, metadata !100}
!96 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!98 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!99 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !58} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!100 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!101 = metadata !{i32 786688, metadata !11, metadata !"ptr", metadata !5, i32 65, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 65]
!102 = metadata !{i32 786688, metadata !11, metadata !"reduction", metadata !5, i32 66, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reduction] [line 66]
!103 = metadata !{i32 786688, metadata !11, metadata !"GH_fake_const", metadata !5, i32 72, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GH_fake_const] [line 72]
!104 = metadata !{i32 786455, metadata !1, metadata !11, metadata !"", i32 68, i64 64, i64 64, i64 0, i32 0, null, metadata !105, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 68, size 64, align 64, offset 0] [from ]
!105 = metadata !{metadata !106, metadata !107}
!106 = metadata !{i32 786445, metadata !1, metadata !104, metadata !"const_ptr", i32 70, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [const_ptr] [line 70, size 64, align 64, offset 0] [from ]
!107 = metadata !{i32 786445, metadata !1, metadata !104, metadata !"non_const_ptr", i32 71, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [non_const_ptr] [line 71, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!111 = metadata !{i32 21, i32 0, metadata !4, null}
!112 = metadata !{i32 60, i32 0, metadata !11, null}
!113 = metadata !{%union.anon* undef}
!114 = metadata !{i32 72, i32 0, metadata !11, null}
!115 = metadata !{i32 78, i32 0, metadata !11, null}
!116 = metadata !{i32 79, i32 0, metadata !11, null}
!117 = metadata !{metadata !"any pointer", metadata !118}
!118 = metadata !{metadata !"omnipotent char", metadata !119}
!119 = metadata !{metadata !"Simple C/C++ TBAA"}
!120 = metadata !{i32 82, i32 0, metadata !11, null}
!121 = metadata !{i32 84, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !11, i32 83, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!123 = metadata !{i32 85, i32 0, metadata !122, null}
!124 = metadata !{i32 88, i32 0, metadata !122, null}
!125 = metadata !{i32 90, i32 0, metadata !122, null}
!126 = metadata !{i32 92, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !122, i32 91, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!128 = metadata !{i32 93, i32 0, metadata !127, null}
!129 = metadata !{i32 99, i32 0, metadata !11, null}
!130 = metadata !{i32 187, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !11, i32 185, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!132 = metadata !{i32 101, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !11, i32 100, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!134 = metadata !{i32 104, i32 0, metadata !133, null}
!135 = metadata !{i32 105, i32 0, metadata !133, null}
!136 = metadata !{i32 106, i32 0, metadata !133, null}
!137 = metadata !{i32 108, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !133, i32 107, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!139 = metadata !{metadata !"double", metadata !118}
!140 = metadata !{i32 109, i32 0, metadata !138, null}
!141 = metadata !{i32 112, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !133, i32 111, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!143 = metadata !{metadata !"int", metadata !118}
!144 = metadata !{i32 113, i32 0, metadata !142, null}
!145 = metadata !{i32 116, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !133, i32 115, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!147 = metadata !{i32 117, i32 0, metadata !146, null}
!148 = metadata !{i32 120, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !133, i32 119, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!150 = metadata !{i32 121, i32 0, metadata !149, null}
!151 = metadata !{i32 122, i32 0, metadata !149, null}
!152 = metadata !{i32 123, i32 0, metadata !149, null}
!153 = metadata !{i32 127, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !133, i32 126, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!155 = metadata !{metadata !"short", metadata !118}
!156 = metadata !{i32 128, i32 0, metadata !154, null}
!157 = metadata !{i32 133, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !133, i32 132, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!159 = metadata !{i32 134, i32 0, metadata !158, null}
!160 = metadata !{i32 139, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !133, i32 138, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!162 = metadata !{metadata !"long", metadata !118}
!163 = metadata !{i32 140, i32 0, metadata !161, null}
!164 = metadata !{i32 145, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !133, i32 144, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!166 = metadata !{metadata !"float", metadata !118}
!167 = metadata !{i32 146, i32 0, metadata !165, null}
!168 = metadata !{i32 149, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !133, i32 148, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!170 = metadata !{i32 150, i32 0, metadata !169, null}
!171 = metadata !{i32 151, i32 0, metadata !169, null}
!172 = metadata !{i32 152, i32 0, metadata !169, null}
!173 = metadata !{i32 157, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !133, i32 156, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!175 = metadata !{i32 158, i32 0, metadata !174, null}
!176 = metadata !{i32 161, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !133, i32 160, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!178 = metadata !{i32 162, i32 0, metadata !177, null}
!179 = metadata !{i32 163, i32 0, metadata !177, null}
!180 = metadata !{i32 164, i32 0, metadata !177, null}
!181 = metadata !{i32 169, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !133, i32 168, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!183 = metadata !{metadata !"long double", metadata !118}
!184 = metadata !{i32 170, i32 0, metadata !182, null}
!185 = metadata !{i32 173, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !133, i32 172, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!187 = metadata !{i32 174, i32 0, metadata !186, null}
!188 = metadata !{i32 175, i32 0, metadata !186, null}
!189 = metadata !{i32 176, i32 0, metadata !186, null}
!190 = metadata !{i32 180, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !133, i32 179, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!192 = metadata !{i32 181, i32 0, metadata !191, null}
!193 = metadata !{i32 189, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !131, i32 188, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!195 = metadata !{i32 193, i32 0, metadata !194, null}
!196 = metadata !{i32 195, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !194, i32 194, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c]
!198 = metadata !{i32 198, i32 0, metadata !197, null}
!199 = metadata !{i32 200, i32 0, metadata !194, null}
!200 = metadata !{i32 204, i32 0, metadata !11, null}
