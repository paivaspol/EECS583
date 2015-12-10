; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [137 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A entries is not NULL and we have bad increments\0A inc1 = %d, inc2 = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A first A2\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"\0A second A2\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_init(%struct._A2* %mtx, i32 %type, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !25, metadata !50), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !26, metadata !50), !dbg !52
  tail call void @llvm.dbg.value(metadata i32 %n1, i64 0, metadata !27, metadata !50), !dbg !53
  tail call void @llvm.dbg.value(metadata i32 %n2, i64 0, metadata !28, metadata !50), !dbg !54
  tail call void @llvm.dbg.value(metadata i32 %inc1, i64 0, metadata !29, metadata !50), !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %inc2, i64 0, metadata !30, metadata !50), !dbg !56
  tail call void @llvm.dbg.value(metadata double* %entries, i64 0, metadata !31, metadata !50), !dbg !57
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !58
  %2 = icmp slt i32 %n1, 1, !dbg !60
  %or.cond = or i1 %1, %2, !dbg !61
  %3 = icmp slt i32 %n2, 1, !dbg !62
  %or.cond3 = or i1 %or.cond, %3, !dbg !61
  %4 = icmp slt i32 %inc1, 1, !dbg !63
  %or.cond5 = or i1 %or.cond3, %4, !dbg !61
  %5 = icmp slt i32 %inc2, 1, !dbg !64
  %or.cond7 = or i1 %or.cond5, %5, !dbg !61
  br i1 %or.cond7, label %6, label %9, !dbg !61

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !65, !tbaa !67
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #6, !dbg !71
  tail call void @exit(i32 -1) #7, !dbg !72
  unreachable, !dbg !72

; <label>:9                                       ; preds = %0
  %type.off = add i32 %type, -1, !dbg !73
  %type.cmp = icmp ugt i32 %type.off, 1, !dbg !73
  br i1 %type.cmp, label %10, label %13, !dbg !73

; <label>:10                                      ; preds = %9
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !75, !tbaa !67
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries, i32 %type) #6, !dbg !77
  tail call void @exit(i32 -1) #7, !dbg !78
  unreachable, !dbg !78

; <label>:13                                      ; preds = %9
  %cond = icmp eq double* %entries, null, !dbg !79
  br i1 %cond, label %14, label %23, !dbg !79

; <label>:14                                      ; preds = %13
  %15 = icmp eq i32 %inc1, 1, !dbg !81
  %16 = icmp eq i32 %inc2, %n1, !dbg !82
  %or.cond12 = and i1 %15, %16, !dbg !83
  br i1 %or.cond12, label %30, label %17, !dbg !83

; <label>:17                                      ; preds = %14
  %18 = icmp eq i32 %inc1, %n2, !dbg !84
  %19 = icmp eq i32 %inc2, 1, !dbg !85
  %or.cond11 = and i1 %18, %19, !dbg !86
  br i1 %or.cond11, label %30, label %20, !dbg !86

; <label>:20                                      ; preds = %17
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !87, !tbaa !67
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([137 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* null, i32 %inc1, i32 %inc2, i32 %n1, i32 %n2) #6, !dbg !89
  tail call void @exit(i32 -1) #7, !dbg !90
  unreachable, !dbg !90

; <label>:23                                      ; preds = %13
  %24 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !91
  %25 = load double** %24, align 8, !dbg !91, !tbaa !94
  %26 = icmp eq double* %25, null, !dbg !97
  br i1 %26, label %28, label %27, !dbg !98

; <label>:27                                      ; preds = %23
  tail call void @DVfree(double* %25) #6, !dbg !99
  br label %28, !dbg !101

; <label>:28                                      ; preds = %23, %27
  %29 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !102
  store i32 0, i32* %29, align 4, !dbg !103, !tbaa !104
  store double* %entries, double** %24, align 8, !dbg !105, !tbaa !94
  %.pre = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !106
  br label %.thread, !dbg !107

; <label>:30                                      ; preds = %17, %14
  %31 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !108
  %32 = load i32* %31, align 4, !dbg !108, !tbaa !110
  switch i32 %32, label %41 [
    i32 1, label %33
    i32 2, label %37
  ], !dbg !111

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !112
  %35 = load i32* %34, align 4, !dbg !112, !tbaa !104
  %36 = shl i32 %35, 3, !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !35, metadata !50), !dbg !115
  br label %41, !dbg !116

; <label>:37                                      ; preds = %30
  %38 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !117
  %39 = load i32* %38, align 4, !dbg !117, !tbaa !104
  %40 = shl i32 %39, 4, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !35, metadata !50), !dbg !115
  br label %41, !dbg !121

; <label>:41                                      ; preds = %30, %37, %33
  %nbytesPresent.0 = phi i32 [ %36, %33 ], [ %40, %37 ], [ 0, %30 ]
  %42 = icmp eq i32 %type, 1, !dbg !122
  br i1 %42, label %47, label %43, !dbg !124

; <label>:43                                      ; preds = %41
  %44 = icmp eq i32 %type, 2, !dbg !125
  br i1 %44, label %45, label %.thread, !dbg !127

; <label>:45                                      ; preds = %43
  %46 = shl nsw i32 %n1, 1, !dbg !128
  br label %47, !dbg !130

; <label>:47                                      ; preds = %41, %45
  %n1.sink = phi i32 [ %46, %45 ], [ %n1, %41 ]
  %48 = shl i32 %n2, 3, !dbg !131
  %49 = mul i32 %48, %n1.sink, !dbg !133
  %50 = icmp sgt i32 %49, %nbytesPresent.0, !dbg !134
  br i1 %50, label %51, label %.thread, !dbg !136

; <label>:51                                      ; preds = %47
  %52 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !137
  %53 = load double** %52, align 8, !dbg !137, !tbaa !94
  tail call void @DVfree(double* %53) #6, !dbg !139
  %54 = mul nsw i32 %n2, %n1, !dbg !140
  %55 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !141
  store i32 %54, i32* %55, align 4, !dbg !142, !tbaa !104
  br i1 %42, label %56, label %58, !dbg !143

; <label>:56                                      ; preds = %51
  %57 = tail call double* @DVinit(i32 %54, double 0.000000e+00) #6, !dbg !144
  store double* %57, double** %52, align 8, !dbg !147, !tbaa !94
  br label %.thread, !dbg !148

; <label>:58                                      ; preds = %51
  %59 = shl i32 %n1, 1, !dbg !149
  %60 = mul nsw i32 %59, %n2, !dbg !152
  %61 = tail call double* @DVinit(i32 %60, double 0.000000e+00) #6, !dbg !153
  store double* %61, double** %52, align 8, !dbg !154, !tbaa !94
  br label %.thread, !dbg !155

.thread:                                          ; preds = %43, %47, %58, %56, %28
  %.pre-phi = phi i32* [ %31, %43 ], [ %31, %47 ], [ %31, %58 ], [ %31, %56 ], [ %.pre, %28 ], !dbg !106
  store i32 %type, i32* %.pre-phi, align 4, !dbg !156, !tbaa !110
  %62 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !157
  store i32 %n1, i32* %62, align 4, !dbg !158, !tbaa !159
  %63 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !160
  store i32 %n2, i32* %63, align 4, !dbg !161, !tbaa !162
  %64 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !163
  store i32 %inc1, i32* %64, align 4, !dbg !164, !tbaa !165
  %65 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !166
  store i32 %inc2, i32* %65, align 4, !dbg !167, !tbaa !168
  ret void, !dbg !169
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_subA2(%struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtxA, i64 0, metadata !40, metadata !50), !dbg !170
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtxB, i64 0, metadata !41, metadata !50), !dbg !171
  tail call void @llvm.dbg.value(metadata i32 %firstrow, i64 0, metadata !42, metadata !50), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %lastrow, i64 0, metadata !43, metadata !50), !dbg !173
  tail call void @llvm.dbg.value(metadata i32 %firstcol, i64 0, metadata !44, metadata !50), !dbg !174
  tail call void @llvm.dbg.value(metadata i32 %lastcol, i64 0, metadata !45, metadata !50), !dbg !175
  %1 = icmp eq %struct._A2* %mtxA, null, !dbg !176
  %2 = icmp eq %struct._A2* %mtxB, null, !dbg !178
  %or.cond = or i1 %1, %2, !dbg !179
  %3 = icmp slt i32 %firstrow, 0, !dbg !180
  %or.cond3 = or i1 %or.cond, %3, !dbg !179
  br i1 %or.cond3, label %13, label %4, !dbg !179

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 1, !dbg !181
  %6 = load i32* %5, align 4, !dbg !181, !tbaa !159
  %7 = icmp sle i32 %6, %lastrow, !dbg !182
  %8 = icmp slt i32 %firstcol, 0, !dbg !183
  %or.cond5 = or i1 %8, %7, !dbg !184
  br i1 %or.cond5, label %13, label %9, !dbg !184

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 2, !dbg !185
  %11 = load i32* %10, align 4, !dbg !185, !tbaa !162
  %12 = icmp sgt i32 %11, %lastcol, !dbg !186
  br i1 %12, label %26, label %13, !dbg !187

; <label>:13                                      ; preds = %9, %4, %0
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !188, !tbaa !67
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #6, !dbg !190
  br i1 %1, label %20, label %16, !dbg !191

; <label>:16                                      ; preds = %13
  %17 = load %struct.__sFILE** @__stderrp, align 8, !dbg !192, !tbaa !67
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %17), !dbg !195
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !196, !tbaa !67
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxA, %struct.__sFILE* %19) #6, !dbg !197
  br label %20, !dbg !198

; <label>:20                                      ; preds = %13, %16
  br i1 %2, label %25, label %21, !dbg !199

; <label>:21                                      ; preds = %20
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !200, !tbaa !67
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %22), !dbg !203
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !204, !tbaa !67
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxB, %struct.__sFILE* %24) #6, !dbg !205
  br label %25, !dbg !206

; <label>:25                                      ; preds = %20, %21
  tail call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

; <label>:26                                      ; preds = %9
  %27 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 0, !dbg !208
  %28 = load i32* %27, align 4, !dbg !208, !tbaa !110
  %.off = add i32 %28, -1, !dbg !210
  %switch = icmp ult i32 %.off, 2, !dbg !210
  br i1 %switch, label %32, label %29, !dbg !210

; <label>:29                                      ; preds = %26
  %30 = load %struct.__sFILE** @__stderrp, align 8, !dbg !211, !tbaa !67
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol, i32 %28) #6, !dbg !213
  tail call void @exit(i32 -1) #7, !dbg !214
  unreachable, !dbg !214

; <label>:32                                      ; preds = %26
  %33 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 0, !dbg !215
  store i32 %28, i32* %33, align 4, !dbg !216, !tbaa !110
  %34 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 3, !dbg !217
  %35 = load i32* %34, align 4, !dbg !217, !tbaa !165
  %36 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 3, !dbg !218
  store i32 %35, i32* %36, align 4, !dbg !219, !tbaa !165
  %37 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 4, !dbg !220
  %38 = load i32* %37, align 4, !dbg !220, !tbaa !168
  %39 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 4, !dbg !221
  store i32 %38, i32* %39, align 4, !dbg !222, !tbaa !168
  %40 = sub i32 1, %firstrow, !dbg !223
  %41 = add i32 %40, %lastrow, !dbg !224
  %42 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 1, !dbg !225
  store i32 %41, i32* %42, align 4, !dbg !226, !tbaa !159
  %43 = sub i32 1, %firstcol, !dbg !227
  %44 = add i32 %43, %lastcol, !dbg !228
  %45 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 2, !dbg !229
  store i32 %44, i32* %45, align 4, !dbg !230, !tbaa !162
  %46 = load i32* %27, align 4, !dbg !231, !tbaa !110
  switch i32 %46, label %70 [
    i32 1, label %47
    i32 2, label %58
  ], !dbg !233

; <label>:47                                      ; preds = %32
  %48 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6, !dbg !234
  %49 = load double** %48, align 8, !dbg !234, !tbaa !94
  %50 = load i32* %34, align 4, !dbg !236, !tbaa !165
  %51 = mul nsw i32 %50, %firstrow, !dbg !237
  %52 = sext i32 %51 to i64, !dbg !238
  %53 = load i32* %37, align 4, !dbg !239, !tbaa !168
  %54 = mul nsw i32 %53, %firstcol, !dbg !240
  %55 = sext i32 %54 to i64, !dbg !241
  %.sum = add nsw i64 %55, %52, !dbg !241
  %56 = getelementptr inbounds double* %49, i64 %.sum, !dbg !241
  %57 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6, !dbg !242
  store double* %56, double** %57, align 8, !dbg !243, !tbaa !94
  br label %70, !dbg !244

; <label>:58                                      ; preds = %32
  %59 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6, !dbg !245
  %60 = load double** %59, align 8, !dbg !245, !tbaa !94
  %61 = load i32* %34, align 4, !dbg !248, !tbaa !165
  %62 = mul nsw i32 %61, %firstrow, !dbg !249
  %63 = load i32* %37, align 4, !dbg !250, !tbaa !168
  %64 = mul nsw i32 %63, %firstcol, !dbg !251
  %65 = add nsw i32 %64, %62, !dbg !252
  %66 = shl nsw i32 %65, 1, !dbg !253
  %67 = sext i32 %66 to i64, !dbg !254
  %68 = getelementptr inbounds double* %60, i64 %67, !dbg !254
  %69 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6, !dbg !255
  store double* %68, double** %69, align 8, !dbg !256, !tbaa !94
  br label %70, !dbg !257

; <label>:70                                      ; preds = %32, %58, %47
  %71 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 5, !dbg !258
  store i32 0, i32* %71, align 4, !dbg !259, !tbaa !104
  ret void, !dbg !260
}

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct.__sFILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !36}
!6 = !DISubprogram(name: "A2_init", scope: !1, file: !1, line: 27, type: !7, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32, i32, i32, i32, double*)* @A2_init, variables: !24)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !15, !15, !15, !15, !22}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !11, line: 49, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !11, line: 41, size: 256, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 42, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !12, file: !11, line: 43, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !12, file: !11, line: 44, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !12, file: !11, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !12, file: !11, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !12, file: !11, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 48, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !35}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 28, type: !9)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !6, file: !1, line: 29, type: !15)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n1", arg: 3, scope: !6, file: !1, line: 30, type: !15)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n2", arg: 4, scope: !6, file: !1, line: 31, type: !15)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc1", arg: 5, scope: !6, file: !1, line: 32, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inc2", arg: 6, scope: !6, file: !1, line: 33, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "entries", arg: 7, scope: !6, file: !1, line: 34, type: !22)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytesNeeded", scope: !33, file: !1, line: 78, type: !15)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 77, column: 8)
!34 = distinct !DILexicalBlock(scope: !6, file: !1, line: 66, column: 6)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytesPresent", scope: !33, file: !1, line: 78, type: !15)
!36 = !DISubprogram(name: "A2_subA2", scope: !1, file: !1, line: 126, type: !37, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, %struct._A2*, i32, i32, i32, i32)* @A2_subA2, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !9, !9, !15, !15, !15, !15}
!39 = !{!40, !41, !42, !43, !44, !45}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxA", arg: 1, scope: !36, file: !1, line: 127, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxB", arg: 2, scope: !36, file: !1, line: 128, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "firstrow", arg: 3, scope: !36, file: !1, line: 129, type: !15)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lastrow", arg: 4, scope: !36, file: !1, line: 130, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "firstcol", arg: 5, scope: !36, file: !1, line: 131, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lastcol", arg: 6, scope: !36, file: !1, line: 132, type: !15)
!46 = !{i32 2, !"Dwarf Version", i32 2}
!47 = !{i32 2, !"Debug Info Version", i32 700000003}
!48 = !{i32 1, !"PIC Level", i32 2}
!49 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!50 = !DIExpression()
!51 = !DILocation(line: 28, column: 14, scope: !6)
!52 = !DILocation(line: 29, column: 13, scope: !6)
!53 = !DILocation(line: 30, column: 13, scope: !6)
!54 = !DILocation(line: 31, column: 13, scope: !6)
!55 = !DILocation(line: 32, column: 13, scope: !6)
!56 = !DILocation(line: 33, column: 13, scope: !6)
!57 = !DILocation(line: 34, column: 14, scope: !6)
!58 = !DILocation(line: 41, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !6, file: !1, line: 41, column: 6)
!60 = !DILocation(line: 41, column: 24, scope: !59)
!61 = !DILocation(line: 41, column: 18, scope: !59)
!62 = !DILocation(line: 41, column: 35, scope: !59)
!63 = !DILocation(line: 41, column: 48, scope: !59)
!64 = !DILocation(line: 41, column: 61, scope: !59)
!65 = !DILocation(line: 42, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 41, column: 68)
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 42, column: 4, scope: !66)
!72 = !DILocation(line: 44, column: 4, scope: !66)
!73 = !DILocation(line: 46, column: 27, scope: !74)
!74 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!75 = !DILocation(line: 47, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !1, line: 46, column: 56)
!77 = !DILocation(line: 47, column: 4, scope: !76)
!78 = !DILocation(line: 50, column: 4, scope: !76)
!79 = !DILocation(line: 53, column: 4, scope: !80)
!80 = distinct !DILexicalBlock(scope: !6, file: !1, line: 52, column: 6)
!81 = !DILocation(line: 53, column: 16, scope: !80)
!82 = !DILocation(line: 53, column: 29, scope: !80)
!83 = !DILocation(line: 53, column: 21, scope: !80)
!84 = !DILocation(line: 53, column: 45, scope: !80)
!85 = !DILocation(line: 53, column: 59, scope: !80)
!86 = !DILocation(line: 53, column: 51, scope: !80)
!87 = !DILocation(line: 59, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !1, line: 53, column: 69)
!89 = !DILocation(line: 59, column: 4, scope: !88)
!90 = !DILocation(line: 64, column: 4, scope: !88)
!91 = !DILocation(line: 72, column: 14, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 72, column: 9)
!93 = distinct !DILexicalBlock(scope: !34, file: !1, line: 66, column: 24)
!94 = !{!95, !68, i64 24}
!95 = !{!"_A2", !96, i64 0, !96, i64 4, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !68, i64 24}
!96 = !{!"int", !69, i64 0}
!97 = !DILocation(line: 72, column: 22, scope: !92)
!98 = !DILocation(line: 72, column: 9, scope: !93)
!99 = !DILocation(line: 73, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 72, column: 32)
!101 = !DILocation(line: 74, column: 4, scope: !100)
!102 = !DILocation(line: 75, column: 9, scope: !93)
!103 = !DILocation(line: 75, column: 17, scope: !93)
!104 = !{!95, !96, i64 20}
!105 = !DILocation(line: 76, column: 17, scope: !93)
!106 = !DILocation(line: 106, column: 6, scope: !6)
!107 = !DILocation(line: 77, column: 1, scope: !93)
!108 = !DILocation(line: 84, column: 14, scope: !109)
!109 = distinct !DILexicalBlock(scope: !33, file: !1, line: 84, column: 9)
!110 = !{!95, !96, i64 0}
!111 = !DILocation(line: 84, column: 9, scope: !33)
!112 = !DILocation(line: 85, column: 28, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 84, column: 37)
!114 = !DILocation(line: 85, column: 35, scope: !113)
!115 = !DILocation(line: 78, column: 24, scope: !33)
!116 = !DILocation(line: 86, column: 4, scope: !113)
!117 = !DILocation(line: 87, column: 32, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 86, column: 47)
!119 = distinct !DILexicalBlock(scope: !109, file: !1, line: 86, column: 16)
!120 = !DILocation(line: 87, column: 25, scope: !118)
!121 = !DILocation(line: 88, column: 4, scope: !118)
!122 = !DILocation(line: 91, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !33, file: !1, line: 91, column: 9)
!124 = !DILocation(line: 91, column: 9, scope: !33)
!125 = !DILocation(line: 93, column: 21, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 93, column: 16)
!127 = !DILocation(line: 93, column: 16, scope: !123)
!128 = !DILocation(line: 94, column: 24, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 93, column: 42)
!130 = !DILocation(line: 95, column: 4, scope: !129)
!131 = !DILocation(line: 92, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !123, file: !1, line: 91, column: 32)
!133 = !DILocation(line: 92, column: 30, scope: !132)
!134 = !DILocation(line: 96, column: 22, scope: !135)
!135 = distinct !DILexicalBlock(scope: !33, file: !1, line: 96, column: 9)
!136 = !DILocation(line: 96, column: 9, scope: !33)
!137 = !DILocation(line: 97, column: 19, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 96, column: 40)
!139 = !DILocation(line: 97, column: 7, scope: !138)
!140 = !DILocation(line: 98, column: 25, scope: !138)
!141 = !DILocation(line: 98, column: 12, scope: !138)
!142 = !DILocation(line: 98, column: 20, scope: !138)
!143 = !DILocation(line: 99, column: 12, scope: !138)
!144 = !DILocation(line: 100, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 99, column: 35)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 99, column: 12)
!147 = !DILocation(line: 100, column: 23, scope: !145)
!148 = !DILocation(line: 101, column: 7, scope: !145)
!149 = !DILocation(line: 102, column: 33, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 101, column: 45)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 101, column: 19)
!152 = !DILocation(line: 102, column: 36, scope: !150)
!153 = !DILocation(line: 102, column: 25, scope: !150)
!154 = !DILocation(line: 102, column: 23, scope: !150)
!155 = !DILocation(line: 103, column: 7, scope: !150)
!156 = !DILocation(line: 106, column: 11, scope: !6)
!157 = !DILocation(line: 107, column: 6, scope: !6)
!158 = !DILocation(line: 107, column: 11, scope: !6)
!159 = !{!95, !96, i64 4}
!160 = !DILocation(line: 108, column: 6, scope: !6)
!161 = !DILocation(line: 108, column: 11, scope: !6)
!162 = !{!95, !96, i64 8}
!163 = !DILocation(line: 109, column: 6, scope: !6)
!164 = !DILocation(line: 109, column: 11, scope: !6)
!165 = !{!95, !96, i64 12}
!166 = !DILocation(line: 110, column: 6, scope: !6)
!167 = !DILocation(line: 110, column: 11, scope: !6)
!168 = !{!95, !96, i64 16}
!169 = !DILocation(line: 112, column: 1, scope: !6)
!170 = !DILocation(line: 127, column: 10, scope: !36)
!171 = !DILocation(line: 128, column: 10, scope: !36)
!172 = !DILocation(line: 129, column: 10, scope: !36)
!173 = !DILocation(line: 130, column: 10, scope: !36)
!174 = !DILocation(line: 131, column: 10, scope: !36)
!175 = !DILocation(line: 132, column: 10, scope: !36)
!176 = !DILocation(line: 139, column: 12, scope: !177)
!177 = distinct !DILexicalBlock(scope: !36, file: !1, line: 139, column: 7)
!178 = !DILocation(line: 139, column: 28, scope: !177)
!179 = !DILocation(line: 139, column: 20, scope: !177)
!180 = !DILocation(line: 140, column: 16, scope: !177)
!181 = !DILocation(line: 140, column: 40, scope: !177)
!182 = !DILocation(line: 140, column: 31, scope: !177)
!183 = !DILocation(line: 141, column: 16, scope: !177)
!184 = !DILocation(line: 141, column: 4, scope: !177)
!185 = !DILocation(line: 141, column: 40, scope: !177)
!186 = !DILocation(line: 141, column: 31, scope: !177)
!187 = !DILocation(line: 139, column: 7, scope: !36)
!188 = !DILocation(line: 142, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !177, file: !1, line: 141, column: 45)
!190 = !DILocation(line: 142, column: 4, scope: !189)
!191 = !DILocation(line: 145, column: 9, scope: !189)
!192 = !DILocation(line: 146, column: 15, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 145, column: 24)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 145, column: 9)
!195 = !DILocation(line: 146, column: 7, scope: !193)
!196 = !DILocation(line: 147, column: 33, scope: !193)
!197 = !DILocation(line: 147, column: 7, scope: !193)
!198 = !DILocation(line: 148, column: 4, scope: !193)
!199 = !DILocation(line: 149, column: 9, scope: !189)
!200 = !DILocation(line: 150, column: 15, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 149, column: 24)
!202 = distinct !DILexicalBlock(scope: !189, file: !1, line: 149, column: 9)
!203 = !DILocation(line: 150, column: 7, scope: !201)
!204 = !DILocation(line: 151, column: 33, scope: !201)
!205 = !DILocation(line: 151, column: 7, scope: !201)
!206 = !DILocation(line: 152, column: 4, scope: !201)
!207 = !DILocation(line: 153, column: 4, scope: !189)
!208 = !DILocation(line: 155, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !36, file: !1, line: 155, column: 6)
!210 = !DILocation(line: 155, column: 26, scope: !209)
!211 = !DILocation(line: 156, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 155, column: 52)
!213 = !DILocation(line: 156, column: 4, scope: !212)
!214 = !DILocation(line: 159, column: 4, scope: !212)
!215 = !DILocation(line: 161, column: 7, scope: !36)
!216 = !DILocation(line: 161, column: 15, scope: !36)
!217 = !DILocation(line: 162, column: 23, scope: !36)
!218 = !DILocation(line: 162, column: 7, scope: !36)
!219 = !DILocation(line: 162, column: 15, scope: !36)
!220 = !DILocation(line: 163, column: 23, scope: !36)
!221 = !DILocation(line: 163, column: 7, scope: !36)
!222 = !DILocation(line: 163, column: 15, scope: !36)
!223 = !DILocation(line: 164, column: 25, scope: !36)
!224 = !DILocation(line: 164, column: 36, scope: !36)
!225 = !DILocation(line: 164, column: 7, scope: !36)
!226 = !DILocation(line: 164, column: 15, scope: !36)
!227 = !DILocation(line: 165, column: 25, scope: !36)
!228 = !DILocation(line: 165, column: 36, scope: !36)
!229 = !DILocation(line: 165, column: 7, scope: !36)
!230 = !DILocation(line: 165, column: 15, scope: !36)
!231 = !DILocation(line: 166, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !36, file: !1, line: 166, column: 6)
!233 = !DILocation(line: 166, column: 6, scope: !36)
!234 = !DILocation(line: 167, column: 26, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 166, column: 25)
!236 = !DILocation(line: 168, column: 35, scope: !235)
!237 = !DILocation(line: 168, column: 28, scope: !235)
!238 = !DILocation(line: 168, column: 18, scope: !235)
!239 = !DILocation(line: 168, column: 57, scope: !235)
!240 = !DILocation(line: 168, column: 50, scope: !235)
!241 = !DILocation(line: 168, column: 40, scope: !235)
!242 = !DILocation(line: 167, column: 10, scope: !235)
!243 = !DILocation(line: 167, column: 18, scope: !235)
!244 = !DILocation(line: 169, column: 1, scope: !235)
!245 = !DILocation(line: 170, column: 26, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 169, column: 35)
!247 = distinct !DILexicalBlock(scope: !232, file: !1, line: 169, column: 13)
!248 = !DILocation(line: 171, column: 38, scope: !246)
!249 = !DILocation(line: 171, column: 31, scope: !246)
!250 = !DILocation(line: 171, column: 60, scope: !246)
!251 = !DILocation(line: 171, column: 53, scope: !246)
!252 = !DILocation(line: 171, column: 43, scope: !246)
!253 = !DILocation(line: 171, column: 21, scope: !246)
!254 = !DILocation(line: 171, column: 18, scope: !246)
!255 = !DILocation(line: 170, column: 10, scope: !246)
!256 = !DILocation(line: 170, column: 18, scope: !246)
!257 = !DILocation(line: 172, column: 1, scope: !246)
!258 = !DILocation(line: 173, column: 7, scope: !36)
!259 = !DILocation(line: 173, column: 15, scope: !36)
!260 = !DILocation(line: 175, column: 1, scope: !36)
