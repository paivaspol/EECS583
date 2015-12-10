; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"ActiveThorns\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"CCTKi_SetParameter: Errors while activating thorns\0A\00", align 1
@.str4 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Range error setting parameter '%s' to '%s'\00", align 1
@num_0errors = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [58 x i8] c"In parameter file '%s' line %d:: Parameter '%s' not found\00", align 1
@num_1errors = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [75 x i8] c"In parameter file '%s' line %d: Parameter '%s' set in two different thorns\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"In parameter file '%s' line %d: Parameter '%s' is not associated with an active thorn\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str9 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/SetParams.c,v 1.34 2002/01/02 12:24:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_SetParams_c() #0 {
entry:
  ret i8* getelementptr inbounds ([85 x i8]* @.str9, i64 0, i64 0), !dbg !49
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetParameter(i8* %parameter, i8* %value, i32 %lineno) #1 {
entry:
  %param.i = alloca i8*, align 8
  %imp.i = alloca i8*, align 8
  %parfile = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %parameter}, i64 0, metadata !16), !dbg !50
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !17), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %lineno}, i64 0, metadata !18), !dbg !50
  %0 = getelementptr inbounds [256 x i8]* %parfile, i64 0, i64 0, !dbg !51
  call void @llvm.lifetime.start(i64 256, i8* %0) #3, !dbg !51
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %parfile}, metadata !21), !dbg !51
  %call = call i32 @CCTK_ParameterLevel() #7, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !20), !dbg !52
  %call2 = call i32 @CCTK_ParameterFilename(i32 256, i8* %0) #7, !dbg !53
  %call3 = call i32 @CCTK_Equals(i8* %parameter, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0)) #7, !dbg !54
  %tobool = icmp eq i32 %call3, 0, !dbg !54
  br i1 %tobool, label %if.else, label %if.then, !dbg !54

if.then:                                          ; preds = %entry
  %call4 = call i32 @CCTKi_ActivateThorns(i8* %value) #7, !dbg !55
  %tobool5 = icmp eq i32 %call4, 0, !dbg !55
  br i1 %tobool5, label %if.end52, label %if.then6, !dbg !55

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @CCTK_Warn(i32 0, i32 96, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !57
  br label %if.end52, !dbg !59

if.else:                                          ; preds = %entry
  %1 = bitcast i8** %param.i to i8*, !dbg !60
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !60
  %2 = bitcast i8** %imp.i to i8*, !dbg !60
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !60
  call void @llvm.dbg.value(metadata !{i8* %parameter}, i64 0, metadata !63) #3, !dbg !60
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !64) #3, !dbg !60
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !65) #3, !dbg !66
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !67) #3, !dbg !68
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69) #3, !dbg !70
  call void @llvm.dbg.declare(metadata !{i8** %param.i}, metadata !42) #3, !dbg !71
  call void @llvm.dbg.declare(metadata !{i8** %imp.i}, metadata !44) #3, !dbg !71
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !72) #3, !dbg !73
  %call.i = call i32 @Util_SplitString(i8** %imp.i, i8** %param.i, i8* %parameter, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !74
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !75) #3, !dbg !76
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !42), !dbg !76
  %3 = load i8** %param.i, align 8, !dbg !76, !tbaa !77
  %tobool.i = icmp eq i8* %3, null, !dbg !76
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !81
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !81
  %4 = load i8** %imp.i, align 8, !dbg !81, !tbaa !77
  br i1 %tobool.i, label %if.then.i, label %if.else.i, !dbg !76

if.then.i:                                        ; preds = %if.else
  %call2.i = call i32 @CCTK_ParameterSet(i8* %parameter, i8* %4, i8* %value) #7, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !72) #3, !dbg !81
  br label %if.end9, !dbg !83

if.else.i:                                        ; preds = %if.else
  %call3.i = call i32 @CCTK_IsImplementationActive(i8* %4) #7, !dbg !84
  %tobool4.i = icmp eq i32 %call3.i, 0, !dbg !84
  br i1 %tobool4.i, label %if.end11.i, label %if.then5.i, !dbg !84

if.then5.i:                                       ; preds = %if.else.i
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !86
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !86
  %5 = load i8** %imp.i, align 8, !dbg !86, !tbaa !77
  %call6.i = call i8* @CCTK_ActivatingThorn(i8* %5) #7, !dbg !86
  call void @llvm.dbg.value(metadata !{i8* %call6.i}, i64 0, metadata !88) #3, !dbg !86
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !89
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !89
  %6 = load i8** %imp.i, align 8, !dbg !89, !tbaa !77
  %call7.i = call i32 @CCTK_Equals(i8* %call6.i, i8* %6) #7, !dbg !89
  %tobool8.i = icmp eq i32 %call7.i, 0, !dbg !89
  br i1 %tobool8.i, label %if.then9.i, label %if.end11.i, !dbg !89

if.then9.i:                                       ; preds = %if.then5.i
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !67) #3, !dbg !91
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !75) #3, !dbg !93
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !42), !dbg !93
  %7 = load i8** %param.i, align 8, !dbg !93, !tbaa !77
  %call10.i = call i32 @CCTK_ParameterSet(i8* %7, i8* %call6.i, i8* %value) #7, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %call10.i}, i64 0, metadata !69) #3, !dbg !93
  br label %if.end11.i, !dbg !94

if.end11.i:                                       ; preds = %if.then9.i, %if.then5.i, %if.else.i
  %found.0.i = phi i32 [ 0, %if.then5.i ], [ 1, %if.then9.i ], [ 0, %if.else.i ]
  %retval_imp.0.i = phi i32 [ 0, %if.then5.i ], [ %call10.i, %if.then9.i ], [ 0, %if.else.i ]
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !95
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !95
  %8 = load i8** %imp.i, align 8, !dbg !95, !tbaa !77
  %call12.i = call i32 @CCTK_IsThornActive(i8* %8) #7, !dbg !95
  %tobool13.i = icmp eq i32 %call12.i, 0, !dbg !95
  br i1 %tobool13.i, label %if.end17.i, label %if.else20.i, !dbg !95

if.end17.i:                                       ; preds = %if.end11.i
  %tobool18.i = icmp eq i32 %found.0.i, 0, !dbg !96
  br i1 %tobool18.i, label %if.end9, label %if.else36.i, !dbg !96

if.else20.i:                                      ; preds = %if.end11.i
  %inc15.i = add nsw i32 %found.0.i, 1, !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %inc15.i}, i64 0, metadata !67) #3, !dbg !97
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !75) #3, !dbg !99
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !42), !dbg !99
  %9 = load i8** %param.i, align 8, !dbg !99, !tbaa !77
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !99
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !99
  %10 = load i8** %imp.i, align 8, !dbg !99, !tbaa !77
  %call16.i = call i32 @CCTK_ParameterSet(i8* %9, i8* %10, i8* %value) #7, !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %call16.i}, i64 0, metadata !65) #3, !dbg !99
  %cmp.i = icmp eq i32 %inc15.i, 2, !dbg !100
  %cmp21.i = icmp sgt i32 %retval_imp.0.i, -1, !dbg !100
  %or.cond.i = and i1 %cmp.i, %cmp21.i, !dbg !100
  %cmp23.i = icmp sgt i32 %call16.i, -1, !dbg !100
  %or.cond63.i = and i1 %or.cond.i, %cmp23.i, !dbg !100
  br i1 %or.cond63.i, label %if.end9, label %if.else25.i, !dbg !100

if.else25.i:                                      ; preds = %if.else20.i
  %cmp28.i = icmp slt i32 %retval_imp.0.i, 0, !dbg !101
  %or.cond64.i = and i1 %cmp.i, %cmp28.i, !dbg !101
  %cmp30.i = icmp slt i32 %call16.i, 0, !dbg !101
  %or.cond65.i = and i1 %or.cond64.i, %cmp30.i, !dbg !101
  br i1 %or.cond65.i, label %if.end9, label %if.else32.i, !dbg !101

if.else32.i:                                      ; preds = %if.else25.i
  br i1 %cmp.i, label %if.then34.i, label %if.else36.i, !dbg !102

if.then34.i:                                      ; preds = %if.else32.i
  %cond.i = select i1 %cmp21.i, i32 %retval_imp.0.i, i32 %call16.i, !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !72) #3, !dbg !103
  br label %if.end9, !dbg !105

if.else36.i:                                      ; preds = %if.else32.i, %if.end17.i
  %retval_thorn.067758487.i = phi i32 [ %call16.i, %if.else32.i ], [ 0, %if.end17.i ]
  %found.168748586.i = phi i32 [ %inc15.i, %if.else32.i ], [ 1, %if.end17.i ]
  %cmp37.i = icmp eq i32 %found.168748586.i, 1, !dbg !106
  %add.i = add nsw i32 %retval_thorn.067758487.i, %retval_imp.0.i, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !72) #3, !dbg !107
  %add..i = select i1 %cmp37.i, i32 %add.i, i32 0, !dbg !106
  br label %if.end9, !dbg !106

if.end9:                                          ; preds = %if.else36.i, %if.then34.i, %if.else25.i, %if.else20.i, %if.end17.i, %if.then.i
  %retval1.0.i = phi i32 [ %cond.i, %if.then34.i ], [ %call2.i, %if.then.i ], [ -5, %if.end17.i ], [ -4, %if.else20.i ], [ %retval_imp.0.i, %if.else25.i ], [ %add..i, %if.else36.i ]
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !80) #3, !dbg !109
  call void @llvm.dbg.value(metadata !{i8** %imp.i}, i64 0, metadata !44), !dbg !109
  %11 = load i8** %imp.i, align 8, !dbg !109, !tbaa !77
  call void @free(i8* %11) #7, !dbg !109
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !75) #3, !dbg !110
  call void @llvm.dbg.value(metadata !{i8** %param.i}, i64 0, metadata !42), !dbg !110
  %12 = load i8** %param.i, align 8, !dbg !110, !tbaa !77
  call void @free(i8* %12) #7, !dbg !110
  call void @llvm.lifetime.end(i64 8, i8* %1) #3, !dbg !111
  call void @llvm.lifetime.end(i64 8, i8* %2) #3, !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %retval1.0.i}, i64 0, metadata !19), !dbg !61
  switch i32 %retval1.0.i, label %if.end52 [
    i32 -1, label %if.then10
    i32 -2, label %if.then15
    i32 -4, label %if.then26
    i32 -5, label %if.then37
  ], !dbg !112

if.then10:                                        ; preds = %if.end9
  %call12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 108, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), i8* %0, i32 %lineno, i8* %parameter, i8* %value) #7, !dbg !113
  %13 = load i32* @num_0errors, align 4, !dbg !115, !tbaa !116
  %inc = add nsw i32 %13, 1, !dbg !115
  store i32 %inc, i32* @num_0errors, align 4, !dbg !115, !tbaa !116
  br label %if.end52, !dbg !117

if.then15:                                        ; preds = %if.end9
  %call17 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 116, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i8* %0, i32 %lineno, i8* %parameter) #7, !dbg !118
  %cmp18 = icmp eq i32 %call, 2, !dbg !120
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !120

if.then19:                                        ; preds = %if.then15
  %14 = load i32* @num_1errors, align 4, !dbg !121, !tbaa !116
  %inc20 = add nsw i32 %14, 1, !dbg !121
  store i32 %inc20, i32* @num_1errors, align 4, !dbg !121, !tbaa !116
  br label %if.end52, !dbg !123

if.else21:                                        ; preds = %if.then15
  %15 = load i32* @num_0errors, align 4, !dbg !124, !tbaa !116
  %inc22 = add nsw i32 %15, 1, !dbg !124
  store i32 %inc22, i32* @num_0errors, align 4, !dbg !124, !tbaa !116
  br label %if.end52

if.then26:                                        ; preds = %if.end9
  %call28 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 131, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str6, i64 0, i64 0), i8* %0, i32 %lineno, i8* %parameter) #7, !dbg !126
  %cmp29 = icmp eq i32 %call, 2, !dbg !128
  br i1 %cmp29, label %if.then30, label %if.else32, !dbg !128

if.then30:                                        ; preds = %if.then26
  %16 = load i32* @num_1errors, align 4, !dbg !129, !tbaa !116
  %inc31 = add nsw i32 %16, 1, !dbg !129
  store i32 %inc31, i32* @num_1errors, align 4, !dbg !129, !tbaa !116
  br label %if.end52, !dbg !131

if.else32:                                        ; preds = %if.then26
  %17 = load i32* @num_0errors, align 4, !dbg !132, !tbaa !116
  %inc33 = add nsw i32 %17, 1, !dbg !132
  store i32 %inc33, i32* @num_0errors, align 4, !dbg !132, !tbaa !116
  br label %if.end52

if.then37:                                        ; preds = %if.end9
  %call39 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 146, i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), i8* %0, i32 %lineno, i8* %parameter) #7, !dbg !134
  switch i32 %call, label %if.end52 [
    i32 0, label %if.then41
    i32 1, label %if.then45
  ], !dbg !136

if.then41:                                        ; preds = %if.then37
  %18 = load i32* @num_0errors, align 4, !dbg !137, !tbaa !116
  %inc42 = add nsw i32 %18, 1, !dbg !137
  store i32 %inc42, i32* @num_0errors, align 4, !dbg !137, !tbaa !116
  br label %if.end52, !dbg !139

if.then45:                                        ; preds = %if.then37
  %19 = load i32* @num_1errors, align 4, !dbg !140, !tbaa !116
  %inc46 = add nsw i32 %19, 1, !dbg !140
  store i32 %inc46, i32* @num_1errors, align 4, !dbg !140, !tbaa !116
  br label %if.end52, !dbg !142

if.end52:                                         ; preds = %if.then6, %if.then, %if.then37, %if.end9, %if.else21, %if.then19, %if.then45, %if.then41, %if.then30, %if.else32, %if.then10
  %retval1.070 = phi i32 [ -5, %if.then37 ], [ %retval1.0.i, %if.end9 ], [ -2, %if.else21 ], [ -2, %if.then19 ], [ -5, %if.then45 ], [ -5, %if.then41 ], [ -4, %if.then30 ], [ -4, %if.else32 ], [ -1, %if.then10 ], [ 0, %if.then ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end(i64 256, i8* %0) #3, !dbg !143
  ret i32 %retval1.070, !dbg !143
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterLevel() #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTKi_ActivateThorns(i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTKi_NumParameterFileErrors(i32 %level) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !29), !dbg !144
  switch i32 %level, label %if.end5 [
    i32 0, label %if.then
    i32 1, label %if.then3
  ], !dbg !145

if.then:                                          ; preds = %entry
  %0 = load i32* @num_0errors, align 4, !dbg !146, !tbaa !116
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !30), !dbg !146
  br label %if.end5, !dbg !148

if.then3:                                         ; preds = %entry
  %1 = load i32* @num_1errors, align 4, !dbg !149, !tbaa !116
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !30), !dbg !149
  br label %if.end5, !dbg !151

if.end5:                                          ; preds = %entry, %if.then3, %if.then
  %retval1.0 = phi i32 [ %0, %if.then ], [ %1, %if.then3 ], [ 0, %entry ]
  ret i32 %retval1.0, !dbg !152
}

; Function Attrs: optsize
declare i32 @Util_SplitString(i8**, i8**, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_ParameterSet(i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_IsImplementationActive(i8*) #4

; Function Attrs: optsize
declare i8* @CCTK_ActivatingThorn(i8*) #4

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !45, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !25, metadata !31}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_SetParams_c", metadata !"CCTKi_version_main_SetParams_c", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_SetParams_c, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [CCTKi_version_main_SetParams_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetParameter", metadata !"CCTKi_SetParameter", metadata !"", i32 83, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @CCTKi_SetParameter, null, null, metadata !15, i32 84} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 84] [CCTKi_SetParameter]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !8, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!16 = metadata !{i32 786689, metadata !11, metadata !"parameter", metadata !5, i32 16777299, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parameter] [line 83]
!17 = metadata !{i32 786689, metadata !11, metadata !"value", metadata !5, i32 33554515, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 83]
!18 = metadata !{i32 786689, metadata !11, metadata !"lineno", metadata !5, i32 50331731, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lineno] [line 83]
!19 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 85]
!20 = metadata !{i32 786688, metadata !11, metadata !"parameter_check", metadata !5, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parameter_check] [line 85]
!21 = metadata !{i32 786688, metadata !11, metadata !"parfile", metadata !5, i32 86, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parfile] [line 86]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !10, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_NumParameterFileErrors", metadata !"CCTKi_NumParameterFileErrors", metadata !"", i32 183, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTKi_NumParameterFileErrors, null, null, metadata !28, i32 184} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 184] [CCTKi_NumParameterFileErrors]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !14, metadata !14}
!28 = metadata !{metadata !29, metadata !30}
!29 = metadata !{i32 786689, metadata !25, metadata !"level", metadata !5, i32 16777399, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 183]
!30 = metadata !{i32 786688, metadata !25, metadata !"retval", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 185]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ReallySetParameter", metadata !"ReallySetParameter", metadata !"", i32 241, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !34, i32 242} ; [ DW_TAG_subprogram ] [line 241] [local] [def] [scope 242] [ReallySetParameter]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !14, metadata !8, metadata !8}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !44}
!35 = metadata !{i32 786689, metadata !31, metadata !"parameter", metadata !5, i32 16777457, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parameter] [line 241]
!36 = metadata !{i32 786689, metadata !31, metadata !"value", metadata !5, i32 33554673, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 241]
!37 = metadata !{i32 786688, metadata !31, metadata !"retval", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 243]
!38 = metadata !{i32 786688, metadata !31, metadata !"retval_thorn", metadata !5, i32 244, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval_thorn] [line 244]
!39 = metadata !{i32 786688, metadata !31, metadata !"found", metadata !5, i32 245, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 245]
!40 = metadata !{i32 786688, metadata !31, metadata !"retval_imp", metadata !5, i32 246, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval_imp] [line 246]
!41 = metadata !{i32 786688, metadata !31, metadata !"thorn", metadata !5, i32 247, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 247]
!42 = metadata !{i32 786688, metadata !31, metadata !"param", metadata !5, i32 248, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param] [line 248]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!44 = metadata !{i32 786688, metadata !31, metadata !"imp", metadata !5, i32 248, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imp] [line 248]
!45 = metadata !{metadata !46, metadata !47, metadata !48}
!46 = metadata !{i32 786484, i32 0, null, metadata !"num_1errors", metadata !"num_1errors", metadata !"", metadata !5, i32 41, metadata !14, i32 1, i32 1, i32* @num_1errors, null} ; [ DW_TAG_variable ] [num_1errors] [line 41] [local] [def]
!47 = metadata !{i32 786484, i32 0, null, metadata !"num_0errors", metadata !"num_0errors", metadata !"", metadata !5, i32 40, metadata !14, i32 1, i32 1, i32* @num_0errors, null} ; [ DW_TAG_variable ] [num_0errors] [line 40] [local] [def]
!48 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 27, metadata !8, i32 1, i32 1, null, null}
!49 = metadata !{i32 29, i32 0, metadata !4, null}
!50 = metadata !{i32 83, i32 0, metadata !11, null}
!51 = metadata !{i32 86, i32 0, metadata !11, null}
!52 = metadata !{i32 89, i32 0, metadata !11, null}
!53 = metadata !{i32 90, i32 0, metadata !11, null}
!54 = metadata !{i32 92, i32 0, metadata !11, null}
!55 = metadata !{i32 94, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !11, i32 93, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!57 = metadata !{i32 96, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 95, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!59 = metadata !{i32 98, i32 0, metadata !58, null}
!60 = metadata !{i32 241, i32 0, metadata !31, metadata !61}
!61 = metadata !{i32 103, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !11, i32 102, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!63 = metadata !{i32 786689, metadata !31, metadata !"parameter", metadata !5, i32 16777457, metadata !8, i32 0, metadata !61} ; [ DW_TAG_arg_variable ] [parameter] [line 241]
!64 = metadata !{i32 786689, metadata !31, metadata !"value", metadata !5, i32 33554673, metadata !8, i32 0, metadata !61} ; [ DW_TAG_arg_variable ] [value] [line 241]
!65 = metadata !{i32 786688, metadata !31, metadata !"retval_thorn", metadata !5, i32 244, metadata !14, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [retval_thorn] [line 244]
!66 = metadata !{i32 244, i32 0, metadata !31, metadata !61}
!67 = metadata !{i32 786688, metadata !31, metadata !"found", metadata !5, i32 245, metadata !14, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [found] [line 245]
!68 = metadata !{i32 245, i32 0, metadata !31, metadata !61}
!69 = metadata !{i32 786688, metadata !31, metadata !"retval_imp", metadata !5, i32 246, metadata !14, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [retval_imp] [line 246]
!70 = metadata !{i32 246, i32 0, metadata !31, metadata !61}
!71 = metadata !{i32 248, i32 0, metadata !31, metadata !61}
!72 = metadata !{i32 786688, metadata !31, metadata !"retval", metadata !5, i32 243, metadata !14, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [retval] [line 243]
!73 = metadata !{i32 251, i32 0, metadata !31, metadata !61}
!74 = metadata !{i32 253, i32 0, metadata !31, metadata !61}
!75 = metadata !{i32 786688, metadata !31, metadata !"param", metadata !5, i32 248, metadata !43, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [param] [line 248]
!76 = metadata !{i32 255, i32 0, metadata !31, metadata !61}
!77 = metadata !{metadata !"any pointer", metadata !78}
!78 = metadata !{metadata !"omnipotent char", metadata !79}
!79 = metadata !{metadata !"Simple C/C++ TBAA"}
!80 = metadata !{i32 786688, metadata !31, metadata !"imp", metadata !5, i32 248, metadata !43, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [imp] [line 248]
!81 = metadata !{i32 258, i32 0, metadata !82, metadata !61}
!82 = metadata !{i32 786443, metadata !1, metadata !31, i32 256, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!83 = metadata !{i32 259, i32 0, metadata !82, metadata !61}
!84 = metadata !{i32 263, i32 0, metadata !85, metadata !61}
!85 = metadata !{i32 786443, metadata !1, metadata !31, i32 261, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!86 = metadata !{i32 265, i32 0, metadata !87, metadata !61}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 264, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!88 = metadata !{i32 786688, metadata !31, metadata !"thorn", metadata !5, i32 247, metadata !8, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [thorn] [line 247]
!89 = metadata !{i32 267, i32 0, metadata !87, metadata !61}
!90 = metadata !{i32 1}
!91 = metadata !{i32 269, i32 0, metadata !92, metadata !61}
!92 = metadata !{i32 786443, metadata !1, metadata !87, i32 268, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!93 = metadata !{i32 270, i32 0, metadata !92, metadata !61}
!94 = metadata !{i32 271, i32 0, metadata !92, metadata !61}
!95 = metadata !{i32 275, i32 0, metadata !85, metadata !61}
!96 = metadata !{i32 281, i32 0, metadata !85, metadata !61}
!97 = metadata !{i32 277, i32 0, metadata !98, metadata !61}
!98 = metadata !{i32 786443, metadata !1, metadata !85, i32 276, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!99 = metadata !{i32 278, i32 0, metadata !98, metadata !61}
!100 = metadata !{i32 286, i32 0, metadata !85, metadata !61}
!101 = metadata !{i32 291, i32 0, metadata !85, metadata !61}
!102 = metadata !{i32 297, i32 0, metadata !85, metadata !61}
!103 = metadata !{i32 300, i32 0, metadata !104, metadata !61}
!104 = metadata !{i32 786443, metadata !1, metadata !85, i32 298, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!105 = metadata !{i32 301, i32 0, metadata !104, metadata !61}
!106 = metadata !{i32 302, i32 0, metadata !85, metadata !61}
!107 = metadata !{i32 304, i32 0, metadata !108, metadata !61}
!108 = metadata !{i32 786443, metadata !1, metadata !85, i32 303, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!109 = metadata !{i32 309, i32 0, metadata !31, metadata !61}
!110 = metadata !{i32 310, i32 0, metadata !31, metadata !61}
!111 = metadata !{i32 312, i32 0, metadata !31, metadata !61}
!112 = metadata !{i32 106, i32 0, metadata !11, null}
!113 = metadata !{i32 108, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !11, i32 107, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!115 = metadata !{i32 111, i32 0, metadata !114, null}
!116 = metadata !{metadata !"int", metadata !78}
!117 = metadata !{i32 112, i32 0, metadata !114, null}
!118 = metadata !{i32 116, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !11, i32 114, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!120 = metadata !{i32 119, i32 0, metadata !119, null}
!121 = metadata !{i32 121, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !119, i32 120, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!123 = metadata !{i32 122, i32 0, metadata !122, null}
!124 = metadata !{i32 125, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !119, i32 124, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!126 = metadata !{i32 131, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !11, i32 129, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!128 = metadata !{i32 134, i32 0, metadata !127, null}
!129 = metadata !{i32 136, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !127, i32 135, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!131 = metadata !{i32 137, i32 0, metadata !130, null}
!132 = metadata !{i32 140, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !127, i32 139, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!134 = metadata !{i32 146, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !11, i32 144, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!136 = metadata !{i32 149, i32 0, metadata !135, null}
!137 = metadata !{i32 151, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !135, i32 150, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!139 = metadata !{i32 152, i32 0, metadata !138, null}
!140 = metadata !{i32 155, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !135, i32 154, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!142 = metadata !{i32 156, i32 0, metadata !141, null}
!143 = metadata !{i32 160, i32 0, metadata !11, null}
!144 = metadata !{i32 183, i32 0, metadata !25, null}
!145 = metadata !{i32 188, i32 0, metadata !25, null}
!146 = metadata !{i32 190, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !25, i32 189, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!148 = metadata !{i32 191, i32 0, metadata !147, null}
!149 = metadata !{i32 194, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !25, i32 193, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetParams.c]
!151 = metadata !{i32 195, i32 0, metadata !150, null}
!152 = metadata !{i32 201, i32 0, metadata !25, null}
