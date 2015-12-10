; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_permuteRows(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_permuteColumns(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [96 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [99 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_permuteRows(%struct._A2* %mtx, i32 %nrow, i32* %index) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !26, metadata !74), !dbg !75
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !27, metadata !74), !dbg !76
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !28, metadata !74), !dbg !77
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !78
  %2 = icmp slt i32 %nrow, 0, !dbg !80
  %or.cond = or i1 %1, %2, !dbg !81
  br i1 %or.cond, label %8, label %3, !dbg !81

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !82
  %5 = load i32* %4, align 4, !dbg !82, !tbaa !83
  %6 = icmp slt i32 %5, %nrow, !dbg !89
  %7 = icmp eq i32* %index, null, !dbg !90
  %or.cond3 = or i1 %7, %6, !dbg !91
  br i1 %or.cond3, label %8, label %11, !dbg !91

; <label>:8                                       ; preds = %3, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !92, !tbaa !94
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %index) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !96
  unreachable, !dbg !96

; <label>:11                                      ; preds = %3
  %12 = tail call i32* @IVinit(i32 %nrow, i32 -1) #5, !dbg !97
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !29, metadata !74), !dbg !98
  tail call void @IVcopy(i32 %nrow, i32* %12, i32* %index) #5, !dbg !99
  %13 = tail call i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %12) #7, !dbg !100
  tail call void @IVfree(i32* %12) #5, !dbg !101
  ret void, !dbg !102
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %rowids) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !40, metadata !74), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 %nrow, i64 0, metadata !41, metadata !74), !dbg !104
  tail call void @llvm.dbg.value(metadata i32* %rowids, i64 0, metadata !42, metadata !74), !dbg !105
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !106
  br i1 %1, label %.thread, label %4, !dbg !108

.thread:                                          ; preds = %0
  %2 = load %struct.__sFILE** @__stderrp, align 8, !dbg !109, !tbaa !94
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* null, i32 %nrow, i32* %rowids) #5, !dbg !111
  br label %14, !dbg !112

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !113
  %6 = load i32* %5, align 4, !dbg !113, !tbaa !83
  %7 = icmp slt i32 %6, %nrow, !dbg !114
  %8 = icmp slt i32 %nrow, 0, !dbg !115
  %or.cond = or i1 %8, %7, !dbg !116
  %9 = icmp eq i32* %rowids, null, !dbg !117
  %or.cond3 = or i1 %9, %or.cond, !dbg !116
  br i1 %or.cond3, label %10, label %15, !dbg !116

; <label>:10                                      ; preds = %4
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !109, !tbaa !94
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids) #5, !dbg !111
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !118, !tbaa !94
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct.__sFILE* %13) #5, !dbg !121
  br label %14, !dbg !122

; <label>:14                                      ; preds = %.thread, %10
  tail call void @exit(i32 -1) #6, !dbg !123
  unreachable, !dbg !123

; <label>:15                                      ; preds = %4
  %16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !124
  %17 = load i32* %16, align 4, !dbg !124, !tbaa !126
  %.off = add i32 %17, -1, !dbg !127
  %switch = icmp ult i32 %.off, 2, !dbg !127
  br i1 %switch, label %21, label %18, !dbg !127

; <label>:18                                      ; preds = %15
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !128, !tbaa !94
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([96 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids, i32 %17) #5, !dbg !130
  tail call void @exit(i32 -1) #6, !dbg !131
  unreachable, !dbg !131

; <label>:21                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !46, metadata !74), !dbg !132
  %22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !133
  %23 = load i32* %22, align 4, !dbg !133, !tbaa !134
  %24 = icmp eq i32 %23, 1, !dbg !135
  br i1 %24, label %28, label %.preheader, !dbg !136

.preheader:                                       ; preds = %21
  %25 = add i32 %nrow, -1, !dbg !137
  %26 = sext i32 %nrow to i64, !dbg !137
  %27 = icmp sgt i32 %nrow, 0, !dbg !137
  br i1 %27, label %.lr.ph29, label %.loopexit, !dbg !141

; <label>:28                                      ; preds = %21
  %29 = tail call i32* @IVinit(i32 %nrow, i32 -1) #5, !dbg !142
  tail call void @llvm.dbg.value(metadata i32* %29, i64 0, metadata !53, metadata !74), !dbg !143
  %30 = load i32* %16, align 4, !dbg !144, !tbaa !126
  switch i32 %30, label %36 [
    i32 1, label %31
    i32 2, label %33
  ], !dbg !146

; <label>:31                                      ; preds = %28
  %32 = tail call double* @DVinit(i32 %nrow, double 0.000000e+00) #5, !dbg !147
  tail call void @llvm.dbg.value(metadata double* %32, i64 0, metadata !48, metadata !74), !dbg !149
  br label %36, !dbg !150

; <label>:33                                      ; preds = %28
  %34 = shl nsw i32 %nrow, 1, !dbg !151
  %35 = tail call double* @DVinit(i32 %34, double 0.000000e+00) #5, !dbg !154
  tail call void @llvm.dbg.value(metadata double* %35, i64 0, metadata !48, metadata !74), !dbg !149
  br label %36, !dbg !155

; <label>:36                                      ; preds = %28, %33, %31
  %dvtmp.0 = phi double* [ %32, %31 ], [ %35, %33 ], [ undef, %28 ]
  tail call void @IVramp(i32 %nrow, i32* %29, i32 0, i32 1) #5, !dbg !156
  tail call void @IV2qsortUp(i32 %nrow, i32* %rowids, i32* %29) #5, !dbg !157
  %37 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !158
  %38 = load i32* %37, align 4, !dbg !158, !tbaa !159
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !52, metadata !74), !dbg !160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !51, metadata !74), !dbg !161
  %39 = icmp sgt i32 %38, 0, !dbg !162
  br i1 %39, label %.lr.ph, label %._crit_edge, !dbg !165

.lr.ph:                                           ; preds = %36
  %40 = add i32 %38, -1, !dbg !165
  br label %41, !dbg !165

; <label>:41                                      ; preds = %49, %.lr.ph
  %jcol.06 = phi i32 [ 0, %.lr.ph ], [ %50, %49 ]
  %42 = load i32* %16, align 4, !dbg !166, !tbaa !126
  switch i32 %42, label %49 [
    i32 1, label %43
    i32 2, label %46
  ], !dbg !169

; <label>:43                                      ; preds = %41
  %44 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.06) #5, !dbg !170
  tail call void @DVcopy(i32 %nrow, double* %dvtmp.0, double* %44) #5, !dbg !172
  %45 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.06) #5, !dbg !173
  tail call void @DVgather(i32 %nrow, double* %45, double* %dvtmp.0, i32* %29) #5, !dbg !174
  br label %49, !dbg !175

; <label>:46                                      ; preds = %41
  %47 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.06) #5, !dbg !176
  tail call void @ZVcopy(i32 %nrow, double* %dvtmp.0, double* %47) #5, !dbg !179
  %48 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.06) #5, !dbg !180
  tail call void @ZVgather(i32 %nrow, double* %48, double* %dvtmp.0, i32* %29) #5, !dbg !181
  br label %49, !dbg !182

; <label>:49                                      ; preds = %41, %43, %46
  %50 = add nuw nsw i32 %jcol.06, 1, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !51, metadata !74), !dbg !161
  %exitcond = icmp eq i32 %jcol.06, %40, !dbg !165
  br i1 %exitcond, label %._crit_edge, label %41, !dbg !165

._crit_edge:                                      ; preds = %49, %36
  tail call void @IVfree(i32* %29) #5, !dbg !184
  tail call void @DVfree(double* %dvtmp.0) #5, !dbg !185
  br label %.loopexit, !dbg !186

; <label>:51                                      ; preds = %.lr.ph29, %.backedge
  %target.028 = phi i32 [ %target.0.ph32, %.lr.ph29 ], [ %54, %.backedge ]
  %indvars.iv27 = phi i64 [ %72, %.lr.ph29 ], [ %indvars.iv.be, %.backedge ]
  %indvars.iv1926 = phi i64 [ %71, %.lr.ph29 ], [ %indvars.iv19.be, %.backedge ]
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !44, metadata !74), !dbg !187
  %52 = getelementptr inbounds i32* %rowids, i64 %indvars.iv1926, !dbg !188
  %53 = load i32* %52, align 4, !dbg !188, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !45, metadata !74), !dbg !191
  %54 = add nsw i32 %target.028, 1, !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !43, metadata !74), !dbg !194
  %55 = icmp slt i32 %54, %nrow, !dbg !195
  %56 = trunc i64 %indvars.iv1926 to i32, !dbg !197
  br i1 %55, label %.lr.ph11, label %.backedge, !dbg !197

.lr.ph11:                                         ; preds = %51, %.lr.ph11
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %.lr.ph11 ], [ %indvars.iv27, %51 ]
  %ii.09 = phi i32 [ %61, %.lr.ph11 ], [ %54, %51 ]
  %minrow.08 = phi i32 [ %ii.0.minrow.0, %.lr.ph11 ], [ %56, %51 ]
  %minrowid.07 = phi i32 [ %.minrowid.0, %.lr.ph11 ], [ %53, %51 ]
  %57 = getelementptr inbounds i32* %rowids, i64 %indvars.iv16, !dbg !198
  %58 = load i32* %57, align 4, !dbg !198, !tbaa !190
  %59 = icmp sgt i32 %minrowid.07, %58, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !44, metadata !74), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !45, metadata !74), !dbg !191
  %.minrowid.0 = select i1 %59, i32 %58, i32 %minrowid.07, !dbg !202
  %60 = trunc i64 %indvars.iv16 to i32, !dbg !202
  %ii.0.minrow.0 = select i1 %59, i32 %60, i32 %minrow.08, !dbg !202
  %61 = add nsw i32 %ii.09, 1, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !43, metadata !74), !dbg !194
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1, !dbg !197
  %exitcond18 = icmp eq i32 %ii.09, %25, !dbg !197
  br i1 %exitcond18, label %._crit_edge12, label %.lr.ph11, !dbg !197

._crit_edge12:                                    ; preds = %.lr.ph11
  %62 = icmp eq i32 %ii.0.minrow.0, %56, !dbg !204
  br i1 %62, label %.backedge, label %.outer, !dbg !206

.backedge:                                        ; preds = %51, %._crit_edge12
  %indvars.iv.be = add nsw i64 %indvars.iv27, 1, !dbg !206
  %indvars.iv19.be = add nsw i64 %indvars.iv1926, 1, !dbg !206
  %63 = icmp slt i64 %indvars.iv19.be, %26, !dbg !137
  br i1 %63, label %51, label %.loopexit, !dbg !141

.outer:                                           ; preds = %._crit_edge12
  %64 = sext i32 %ii.0.minrow.0 to i64, !dbg !207
  %65 = getelementptr inbounds i32* %rowids, i64 %64, !dbg !207
  store i32 %53, i32* %65, align 4, !dbg !209, !tbaa !190
  store i32 %.minrowid.0, i32* %52, align 4, !dbg !210, !tbaa !190
  tail call void @A2_swapRows(%struct._A2* %mtx, i32 %56, i32 %ii.0.minrow.0) #5, !dbg !211
  %66 = add nuw nsw i32 %nswap.0.ph31, 1, !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !46, metadata !74), !dbg !132
  %67 = add i32 %target.028, 2
  %68 = sext i32 %67 to i64
  %69 = sext i32 %54 to i64
  %70 = icmp slt i32 %54, %nrow, !dbg !137
  br i1 %70, label %.lr.ph29, label %.loopexit, !dbg !141

.lr.ph29:                                         ; preds = %.preheader, %.outer
  %71 = phi i64 [ %69, %.outer ], [ 0, %.preheader ]
  %72 = phi i64 [ %68, %.outer ], [ 1, %.preheader ]
  %target.0.ph32 = phi i32 [ %54, %.outer ], [ 0, %.preheader ]
  %nswap.0.ph31 = phi i32 [ %66, %.outer ], [ 0, %.preheader ]
  br label %51, !dbg !141

.loopexit:                                        ; preds = %.outer, %.preheader, %.backedge, %._crit_edge
  %nswap.2 = phi i32 [ 0, %._crit_edge ], [ 0, %.preheader ], [ %66, %.outer ], [ %nswap.0.ph31, %.backedge ]
  ret i32 %nswap.2, !dbg !213
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_permuteColumns(%struct._A2* %mtx, i32 %ncol, i32* %index) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !32, metadata !74), !dbg !214
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !33, metadata !74), !dbg !215
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !34, metadata !74), !dbg !216
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !217
  %2 = icmp slt i32 %ncol, 0, !dbg !219
  %or.cond = or i1 %1, %2, !dbg !220
  br i1 %or.cond, label %8, label %3, !dbg !220

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !221
  %5 = load i32* %4, align 4, !dbg !221, !tbaa !159
  %6 = icmp slt i32 %5, %ncol, !dbg !222
  %7 = icmp eq i32* %index, null, !dbg !223
  %or.cond3 = or i1 %7, %6, !dbg !224
  br i1 %or.cond3, label %8, label %11, !dbg !224

; <label>:8                                       ; preds = %3, %0
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !225, !tbaa !94
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %index) #5, !dbg !227
  tail call void @exit(i32 -1) #6, !dbg !228
  unreachable, !dbg !228

; <label>:11                                      ; preds = %3
  %12 = tail call i32* @IVinit(i32 %ncol, i32 -1) #5, !dbg !229
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !35, metadata !74), !dbg !230
  tail call void @IVcopy(i32 %ncol, i32* %12, i32* %index) #5, !dbg !231
  %13 = tail call i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %12) #7, !dbg !232
  tail call void @IVfree(i32* %12) #5, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %colids) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !56, metadata !74), !dbg !235
  tail call void @llvm.dbg.value(metadata i32 %ncol, i64 0, metadata !57, metadata !74), !dbg !236
  tail call void @llvm.dbg.value(metadata i32* %colids, i64 0, metadata !58, metadata !74), !dbg !237
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !238
  br i1 %1, label %.thread, label %4, !dbg !240

.thread:                                          ; preds = %0
  %2 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !94
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* null, i32 %ncol, i32* %colids) #5, !dbg !243
  br label %14, !dbg !244

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !245
  %6 = load i32* %5, align 4, !dbg !245, !tbaa !159
  %7 = icmp slt i32 %6, %ncol, !dbg !246
  %8 = icmp slt i32 %ncol, 0, !dbg !247
  %or.cond = or i1 %8, %7, !dbg !248
  %9 = icmp eq i32* %colids, null, !dbg !249
  %or.cond3 = or i1 %9, %or.cond, !dbg !248
  br i1 %or.cond3, label %10, label %15, !dbg !248

; <label>:10                                      ; preds = %4
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !94
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids) #5, !dbg !243
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !250, !tbaa !94
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct.__sFILE* %13) #5, !dbg !253
  br label %14, !dbg !254

; <label>:14                                      ; preds = %.thread, %10
  tail call void @exit(i32 -1) #6, !dbg !255
  unreachable, !dbg !255

; <label>:15                                      ; preds = %4
  %16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !256
  %17 = load i32* %16, align 4, !dbg !256, !tbaa !126
  %.off = add i32 %17, -1, !dbg !258
  %switch = icmp ult i32 %.off, 2, !dbg !258
  br i1 %switch, label %21, label %18, !dbg !258

; <label>:18                                      ; preds = %15
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !94
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([99 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids, i32 %17) #5, !dbg !261
  tail call void @exit(i32 -1) #6, !dbg !262
  unreachable, !dbg !262

; <label>:21                                      ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !74), !dbg !263
  %22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !264
  %23 = load i32* %22, align 4, !dbg !264, !tbaa !265
  %24 = icmp eq i32 %23, 1, !dbg !266
  br i1 %24, label %28, label %.preheader, !dbg !267

.preheader:                                       ; preds = %21
  %25 = add i32 %ncol, -1, !dbg !268
  %26 = sext i32 %ncol to i64, !dbg !268
  %27 = icmp sgt i32 %ncol, 0, !dbg !268
  br i1 %27, label %.lr.ph29, label %.loopexit, !dbg !272

; <label>:28                                      ; preds = %21
  %29 = tail call i32* @IVinit(i32 %ncol, i32 -1) #5, !dbg !273
  tail call void @llvm.dbg.value(metadata i32* %29, i64 0, metadata !69, metadata !74), !dbg !274
  %30 = load i32* %16, align 4, !dbg !275, !tbaa !126
  switch i32 %30, label %36 [
    i32 1, label %31
    i32 2, label %33
  ], !dbg !277

; <label>:31                                      ; preds = %28
  %32 = tail call double* @DVinit(i32 %ncol, double 0.000000e+00) #5, !dbg !278
  tail call void @llvm.dbg.value(metadata double* %32, i64 0, metadata !64, metadata !74), !dbg !280
  br label %36, !dbg !281

; <label>:33                                      ; preds = %28
  %34 = shl nsw i32 %ncol, 1, !dbg !282
  %35 = tail call double* @DVinit(i32 %34, double 0.000000e+00) #5, !dbg !285
  tail call void @llvm.dbg.value(metadata double* %35, i64 0, metadata !64, metadata !74), !dbg !280
  br label %36, !dbg !286

; <label>:36                                      ; preds = %28, %33, %31
  %dvtmp.0 = phi double* [ %32, %31 ], [ %35, %33 ], [ undef, %28 ]
  tail call void @IVramp(i32 %ncol, i32* %29, i32 0, i32 1) #5, !dbg !287
  tail call void @IV2qsortUp(i32 %ncol, i32* %colids, i32* %29) #5, !dbg !288
  %37 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !289
  %38 = load i32* %37, align 4, !dbg !289, !tbaa !83
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !68, metadata !74), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !67, metadata !74), !dbg !291
  %39 = icmp sgt i32 %38, 0, !dbg !292
  br i1 %39, label %.lr.ph, label %._crit_edge, !dbg !295

.lr.ph:                                           ; preds = %36
  %40 = add i32 %38, -1, !dbg !295
  br label %41, !dbg !295

; <label>:41                                      ; preds = %49, %.lr.ph
  %irow.06 = phi i32 [ 0, %.lr.ph ], [ %50, %49 ]
  %42 = load i32* %16, align 4, !dbg !296, !tbaa !126
  switch i32 %42, label %49 [
    i32 1, label %43
    i32 2, label %46
  ], !dbg !299

; <label>:43                                      ; preds = %41
  %44 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.06) #5, !dbg !300
  tail call void @DVcopy(i32 %ncol, double* %dvtmp.0, double* %44) #5, !dbg !302
  %45 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.06) #5, !dbg !303
  tail call void @DVgather(i32 %ncol, double* %45, double* %dvtmp.0, i32* %29) #5, !dbg !304
  br label %49, !dbg !305

; <label>:46                                      ; preds = %41
  %47 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.06) #5, !dbg !306
  tail call void @ZVcopy(i32 %ncol, double* %dvtmp.0, double* %47) #5, !dbg !309
  %48 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.06) #5, !dbg !310
  tail call void @ZVgather(i32 %ncol, double* %48, double* %dvtmp.0, i32* %29) #5, !dbg !311
  br label %49, !dbg !312

; <label>:49                                      ; preds = %41, %43, %46
  %50 = add nuw nsw i32 %irow.06, 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !67, metadata !74), !dbg !291
  %exitcond = icmp eq i32 %irow.06, %40, !dbg !295
  br i1 %exitcond, label %._crit_edge, label %41, !dbg !295

._crit_edge:                                      ; preds = %49, %36
  tail call void @IVfree(i32* %29) #5, !dbg !314
  tail call void @DVfree(double* %dvtmp.0) #5, !dbg !315
  br label %.loopexit, !dbg !316

; <label>:51                                      ; preds = %.lr.ph29, %.backedge
  %target.028 = phi i32 [ %target.0.ph32, %.lr.ph29 ], [ %54, %.backedge ]
  %indvars.iv27 = phi i64 [ %72, %.lr.ph29 ], [ %indvars.iv.be, %.backedge ]
  %indvars.iv1926 = phi i64 [ %71, %.lr.ph29 ], [ %indvars.iv19.be, %.backedge ]
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !60, metadata !74), !dbg !317
  %52 = getelementptr inbounds i32* %colids, i64 %indvars.iv1926, !dbg !318
  %53 = load i32* %52, align 4, !dbg !318, !tbaa !190
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !61, metadata !74), !dbg !320
  %54 = add nsw i32 %target.028, 1, !dbg !321
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !59, metadata !74), !dbg !323
  %55 = icmp slt i32 %54, %ncol, !dbg !324
  %56 = trunc i64 %indvars.iv1926 to i32, !dbg !326
  br i1 %55, label %.lr.ph11, label %.backedge, !dbg !326

.lr.ph11:                                         ; preds = %51, %.lr.ph11
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %.lr.ph11 ], [ %indvars.iv27, %51 ]
  %ii.09 = phi i32 [ %61, %.lr.ph11 ], [ %54, %51 ]
  %mincol.08 = phi i32 [ %ii.0.mincol.0, %.lr.ph11 ], [ %56, %51 ]
  %mincolid.07 = phi i32 [ %.mincolid.0, %.lr.ph11 ], [ %53, %51 ]
  %57 = getelementptr inbounds i32* %colids, i64 %indvars.iv16, !dbg !327
  %58 = load i32* %57, align 4, !dbg !327, !tbaa !190
  %59 = icmp sgt i32 %mincolid.07, %58, !dbg !330
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !60, metadata !74), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !61, metadata !74), !dbg !320
  %.mincolid.0 = select i1 %59, i32 %58, i32 %mincolid.07, !dbg !331
  %60 = trunc i64 %indvars.iv16 to i32, !dbg !331
  %ii.0.mincol.0 = select i1 %59, i32 %60, i32 %mincol.08, !dbg !331
  %61 = add nsw i32 %ii.09, 1, !dbg !332
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !59, metadata !74), !dbg !323
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1, !dbg !326
  %exitcond18 = icmp eq i32 %ii.09, %25, !dbg !326
  br i1 %exitcond18, label %._crit_edge12, label %.lr.ph11, !dbg !326

._crit_edge12:                                    ; preds = %.lr.ph11
  %62 = icmp eq i32 %ii.0.mincol.0, %56, !dbg !333
  br i1 %62, label %.backedge, label %.outer, !dbg !335

.backedge:                                        ; preds = %51, %._crit_edge12
  %indvars.iv.be = add nsw i64 %indvars.iv27, 1, !dbg !335
  %indvars.iv19.be = add nsw i64 %indvars.iv1926, 1, !dbg !335
  %63 = icmp slt i64 %indvars.iv19.be, %26, !dbg !268
  br i1 %63, label %51, label %.loopexit, !dbg !272

.outer:                                           ; preds = %._crit_edge12
  %64 = sext i32 %ii.0.mincol.0 to i64, !dbg !336
  %65 = getelementptr inbounds i32* %colids, i64 %64, !dbg !336
  store i32 %53, i32* %65, align 4, !dbg !338, !tbaa !190
  store i32 %.mincolid.0, i32* %52, align 4, !dbg !339, !tbaa !190
  tail call void @A2_swapColumns(%struct._A2* %mtx, i32 %56, i32 %ii.0.mincol.0) #5, !dbg !340
  %66 = add nuw nsw i32 %nswap.0.ph31, 1, !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !62, metadata !74), !dbg !263
  %67 = add i32 %target.028, 2
  %68 = sext i32 %67 to i64
  %69 = sext i32 %54 to i64
  %70 = icmp slt i32 %54, %ncol, !dbg !268
  br i1 %70, label %.lr.ph29, label %.loopexit, !dbg !272

.lr.ph29:                                         ; preds = %.preheader, %.outer
  %71 = phi i64 [ %69, %.outer ], [ 0, %.preheader ]
  %72 = phi i64 [ %68, %.outer ], [ 1, %.preheader ]
  %target.0.ph32 = phi i32 [ %54, %.outer ], [ 0, %.preheader ]
  %nswap.0.ph31 = phi i32 [ %66, %.outer ], [ 0, %.preheader ]
  br label %51, !dbg !272

.loopexit:                                        ; preds = %.outer, %.preheader, %.backedge, %._crit_edge
  %nswap.2 = phi i32 [ 0, %._crit_edge ], [ 0, %.preheader ], [ %66, %.outer ], [ %nswap.0.ph31, %.backedge ]
  ret i32 %nswap.2, !dbg !342
}

; Function Attrs: optsize
declare void @A2_writeStats(%struct._A2*, %struct.__sFILE*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare double* @A2_column(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @DVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @ZVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @ZVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare void @A2_swapRows(%struct._A2*, i32, i32) #3

; Function Attrs: optsize
declare double* @A2_row(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @A2_swapColumns(%struct._A2*, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !30, !36, !54}
!6 = !DISubprogram(name: "A2_permuteRows", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32*)* @A2_permuteRows, variables: !25)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !24}
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
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!25 = !{!26, !27, !28, !29}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 18, type: !9)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 2, scope: !6, file: !1, line: 19, type: !15)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !6, file: !1, line: 20, type: !24)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowids", scope: !6, file: !1, line: 22, type: !24)
!30 = !DISubprogram(name: "A2_permuteColumns", scope: !1, file: !1, line: 52, type: !7, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i32, i32*)* @A2_permuteColumns, variables: !31)
!31 = !{!32, !33, !34, !35}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !30, file: !1, line: 53, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 2, scope: !30, file: !1, line: 54, type: !15)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !30, file: !1, line: 55, type: !24)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colids", scope: !30, file: !1, line: 57, type: !24)
!36 = !DISubprogram(name: "A2_sortRowsUp", scope: !1, file: !1, line: 87, type: !37, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*, i32, i32*)* @A2_sortRowsUp, variables: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!15, !9, !15, !24}
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !51, !52, !53}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !36, file: !1, line: 88, type: !9)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrow", arg: 2, scope: !36, file: !1, line: 89, type: !15)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rowids", arg: 3, scope: !36, file: !1, line: 90, type: !24)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !36, file: !1, line: 92, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minrow", scope: !36, file: !1, line: 92, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minrowid", scope: !36, file: !1, line: 92, type: !15)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nswap", scope: !36, file: !1, line: 92, type: !15)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "target", scope: !36, file: !1, line: 92, type: !15)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dvtmp", scope: !49, file: !1, line: 114, type: !22)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 113, column: 23)
!50 = distinct !DILexicalBlock(scope: !36, file: !1, line: 113, column: 6)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !49, file: !1, line: 115, type: !15)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !49, file: !1, line: 115, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivtmp", scope: !49, file: !1, line: 116, type: !24)
!54 = !DISubprogram(name: "A2_sortColumnsUp", scope: !1, file: !1, line: 180, type: !37, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*, i32, i32*)* @A2_sortColumnsUp, variables: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !67, !68, !69}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !54, file: !1, line: 181, type: !9)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncol", arg: 2, scope: !54, file: !1, line: 182, type: !15)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "colids", arg: 3, scope: !54, file: !1, line: 183, type: !24)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !54, file: !1, line: 185, type: !15)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mincol", scope: !54, file: !1, line: 185, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mincolid", scope: !54, file: !1, line: 185, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nswap", scope: !54, file: !1, line: 185, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "target", scope: !54, file: !1, line: 185, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dvtmp", scope: !65, file: !1, line: 207, type: !22)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 206, column: 23)
!66 = distinct !DILexicalBlock(scope: !54, file: !1, line: 206, column: 6)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !65, file: !1, line: 208, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !65, file: !1, line: 208, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ivtmp", scope: !65, file: !1, line: 209, type: !24)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DIExpression()
!75 = !DILocation(line: 18, column: 11, scope: !6)
!76 = !DILocation(line: 19, column: 10, scope: !6)
!77 = !DILocation(line: 20, column: 10, scope: !6)
!78 = !DILocation(line: 28, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!80 = !DILocation(line: 28, column: 26, scope: !79)
!81 = !DILocation(line: 28, column: 18, scope: !79)
!82 = !DILocation(line: 28, column: 45, scope: !79)
!83 = !{!84, !85, i64 4}
!84 = !{!"_A2", !85, i64 0, !85, i64 4, !85, i64 8, !85, i64 12, !85, i64 16, !85, i64 20, !88, i64 24}
!85 = !{!"int", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !{!"any pointer", !86, i64 0}
!89 = !DILocation(line: 28, column: 38, scope: !79)
!90 = !DILocation(line: 28, column: 57, scope: !79)
!91 = !DILocation(line: 28, column: 48, scope: !79)
!92 = !DILocation(line: 29, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !79, file: !1, line: 28, column: 67)
!94 = !{!88, !88, i64 0}
!95 = !DILocation(line: 29, column: 4, scope: !93)
!96 = !DILocation(line: 31, column: 4, scope: !93)
!97 = !DILocation(line: 33, column: 10, scope: !6)
!98 = !DILocation(line: 22, column: 8, scope: !6)
!99 = !DILocation(line: 34, column: 1, scope: !6)
!100 = !DILocation(line: 35, column: 1, scope: !6)
!101 = !DILocation(line: 36, column: 1, scope: !6)
!102 = !DILocation(line: 38, column: 1, scope: !6)
!103 = !DILocation(line: 88, column: 11, scope: !36)
!104 = !DILocation(line: 89, column: 10, scope: !36)
!105 = !DILocation(line: 90, column: 10, scope: !36)
!106 = !DILocation(line: 98, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !36, file: !1, line: 98, column: 6)
!108 = !DILocation(line: 98, column: 18, scope: !107)
!109 = !DILocation(line: 99, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 98, column: 68)
!111 = !DILocation(line: 99, column: 4, scope: !110)
!112 = !DILocation(line: 101, column: 9, scope: !110)
!113 = !DILocation(line: 98, column: 26, scope: !107)
!114 = !DILocation(line: 98, column: 29, scope: !107)
!115 = !DILocation(line: 98, column: 44, scope: !107)
!116 = !DILocation(line: 98, column: 36, scope: !107)
!117 = !DILocation(line: 98, column: 58, scope: !107)
!118 = !DILocation(line: 102, column: 26, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 101, column: 23)
!120 = distinct !DILexicalBlock(scope: !110, file: !1, line: 101, column: 9)
!121 = !DILocation(line: 102, column: 7, scope: !119)
!122 = !DILocation(line: 103, column: 4, scope: !119)
!123 = !DILocation(line: 104, column: 4, scope: !110)
!124 = !DILocation(line: 106, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !36, file: !1, line: 106, column: 6)
!126 = !{!84, !85, i64 0}
!127 = !DILocation(line: 106, column: 25, scope: !125)
!128 = !DILocation(line: 107, column: 12, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 106, column: 50)
!130 = !DILocation(line: 107, column: 4, scope: !129)
!131 = !DILocation(line: 110, column: 4, scope: !129)
!132 = !DILocation(line: 92, column: 29, scope: !36)
!133 = !DILocation(line: 113, column: 11, scope: !50)
!134 = !{!84, !85, i64 12}
!135 = !DILocation(line: 113, column: 16, scope: !50)
!136 = !DILocation(line: 113, column: 6, scope: !36)
!137 = !DILocation(line: 148, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 148, column: 4)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 148, column: 4)
!140 = distinct !DILexicalBlock(scope: !50, file: !1, line: 142, column: 8)
!141 = !DILocation(line: 148, column: 4, scope: !139)
!142 = !DILocation(line: 122, column: 12, scope: !49)
!143 = !DILocation(line: 116, column: 14, scope: !49)
!144 = !DILocation(line: 123, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !49, file: !1, line: 123, column: 9)
!146 = !DILocation(line: 123, column: 9, scope: !49)
!147 = !DILocation(line: 124, column: 15, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 123, column: 27)
!149 = !DILocation(line: 114, column: 14, scope: !49)
!150 = !DILocation(line: 125, column: 4, scope: !148)
!151 = !DILocation(line: 126, column: 23, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 125, column: 37)
!153 = distinct !DILexicalBlock(scope: !145, file: !1, line: 125, column: 16)
!154 = !DILocation(line: 126, column: 15, scope: !152)
!155 = !DILocation(line: 127, column: 4, scope: !152)
!156 = !DILocation(line: 128, column: 4, scope: !49)
!157 = !DILocation(line: 129, column: 4, scope: !49)
!158 = !DILocation(line: 130, column: 16, scope: !49)
!159 = !{!84, !85, i64 8}
!160 = !DILocation(line: 115, column: 19, scope: !49)
!161 = !DILocation(line: 115, column: 13, scope: !49)
!162 = !DILocation(line: 131, column: 26, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 131, column: 4)
!164 = distinct !DILexicalBlock(scope: !49, file: !1, line: 131, column: 4)
!165 = !DILocation(line: 131, column: 4, scope: !164)
!166 = !DILocation(line: 132, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 132, column: 12)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 131, column: 44)
!169 = !DILocation(line: 132, column: 12, scope: !168)
!170 = !DILocation(line: 133, column: 30, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 132, column: 30)
!172 = !DILocation(line: 133, column: 10, scope: !171)
!173 = !DILocation(line: 134, column: 25, scope: !171)
!174 = !DILocation(line: 134, column: 10, scope: !171)
!175 = !DILocation(line: 135, column: 7, scope: !171)
!176 = !DILocation(line: 136, column: 30, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 135, column: 40)
!178 = distinct !DILexicalBlock(scope: !167, file: !1, line: 135, column: 19)
!179 = !DILocation(line: 136, column: 10, scope: !177)
!180 = !DILocation(line: 137, column: 25, scope: !177)
!181 = !DILocation(line: 137, column: 10, scope: !177)
!182 = !DILocation(line: 138, column: 7, scope: !177)
!183 = !DILocation(line: 131, column: 39, scope: !163)
!184 = !DILocation(line: 140, column: 4, scope: !49)
!185 = !DILocation(line: 141, column: 4, scope: !49)
!186 = !DILocation(line: 142, column: 1, scope: !49)
!187 = !DILocation(line: 92, column: 11, scope: !36)
!188 = !DILocation(line: 150, column: 18, scope: !189)
!189 = distinct !DILexicalBlock(scope: !138, file: !1, line: 148, column: 50)
!190 = !{!85, !85, i64 0}
!191 = !DILocation(line: 92, column: 19, scope: !36)
!192 = !DILocation(line: 151, column: 25, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 151, column: 7)
!194 = !DILocation(line: 92, column: 7, scope: !36)
!195 = !DILocation(line: 151, column: 34, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 151, column: 7)
!197 = !DILocation(line: 151, column: 7, scope: !193)
!198 = !DILocation(line: 152, column: 26, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 152, column: 15)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 151, column: 50)
!201 = !DILocation(line: 152, column: 24, scope: !199)
!202 = !DILocation(line: 152, column: 15, scope: !200)
!203 = !DILocation(line: 151, column: 45, scope: !196)
!204 = !DILocation(line: 157, column: 19, scope: !205)
!205 = distinct !DILexicalBlock(scope: !189, file: !1, line: 157, column: 12)
!206 = !DILocation(line: 157, column: 12, scope: !189)
!207 = !DILocation(line: 158, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !1, line: 157, column: 31)
!209 = !DILocation(line: 158, column: 25, scope: !208)
!210 = !DILocation(line: 159, column: 25, scope: !208)
!211 = !DILocation(line: 160, column: 10, scope: !208)
!212 = !DILocation(line: 161, column: 15, scope: !208)
!213 = !DILocation(line: 166, column: 1, scope: !36)
!214 = !DILocation(line: 53, column: 10, scope: !30)
!215 = !DILocation(line: 54, column: 10, scope: !30)
!216 = !DILocation(line: 55, column: 10, scope: !30)
!217 = !DILocation(line: 63, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !30, file: !1, line: 63, column: 6)
!219 = !DILocation(line: 63, column: 26, scope: !218)
!220 = !DILocation(line: 63, column: 18, scope: !218)
!221 = !DILocation(line: 63, column: 45, scope: !218)
!222 = !DILocation(line: 63, column: 38, scope: !218)
!223 = !DILocation(line: 63, column: 57, scope: !218)
!224 = !DILocation(line: 63, column: 48, scope: !218)
!225 = !DILocation(line: 64, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !218, file: !1, line: 63, column: 67)
!227 = !DILocation(line: 64, column: 4, scope: !226)
!228 = !DILocation(line: 66, column: 4, scope: !226)
!229 = !DILocation(line: 68, column: 10, scope: !30)
!230 = !DILocation(line: 57, column: 8, scope: !30)
!231 = !DILocation(line: 69, column: 1, scope: !30)
!232 = !DILocation(line: 70, column: 1, scope: !30)
!233 = !DILocation(line: 71, column: 1, scope: !30)
!234 = !DILocation(line: 73, column: 1, scope: !30)
!235 = !DILocation(line: 181, column: 10, scope: !54)
!236 = !DILocation(line: 182, column: 10, scope: !54)
!237 = !DILocation(line: 183, column: 10, scope: !54)
!238 = !DILocation(line: 191, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !54, file: !1, line: 191, column: 6)
!240 = !DILocation(line: 191, column: 18, scope: !239)
!241 = !DILocation(line: 192, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 191, column: 68)
!243 = !DILocation(line: 192, column: 4, scope: !242)
!244 = !DILocation(line: 194, column: 9, scope: !242)
!245 = !DILocation(line: 191, column: 26, scope: !239)
!246 = !DILocation(line: 191, column: 29, scope: !239)
!247 = !DILocation(line: 191, column: 44, scope: !239)
!248 = !DILocation(line: 191, column: 36, scope: !239)
!249 = !DILocation(line: 191, column: 58, scope: !239)
!250 = !DILocation(line: 195, column: 26, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 194, column: 23)
!252 = distinct !DILexicalBlock(scope: !242, file: !1, line: 194, column: 9)
!253 = !DILocation(line: 195, column: 7, scope: !251)
!254 = !DILocation(line: 196, column: 4, scope: !251)
!255 = !DILocation(line: 197, column: 4, scope: !242)
!256 = !DILocation(line: 199, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !54, file: !1, line: 199, column: 6)
!258 = !DILocation(line: 199, column: 25, scope: !257)
!259 = !DILocation(line: 200, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 199, column: 50)
!261 = !DILocation(line: 200, column: 4, scope: !260)
!262 = !DILocation(line: 203, column: 4, scope: !260)
!263 = !DILocation(line: 185, column: 29, scope: !54)
!264 = !DILocation(line: 206, column: 11, scope: !66)
!265 = !{!84, !85, i64 16}
!266 = !DILocation(line: 206, column: 16, scope: !66)
!267 = !DILocation(line: 206, column: 6, scope: !54)
!268 = !DILocation(line: 241, column: 30, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 241, column: 4)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 241, column: 4)
!271 = distinct !DILexicalBlock(scope: !66, file: !1, line: 235, column: 8)
!272 = !DILocation(line: 241, column: 4, scope: !270)
!273 = !DILocation(line: 215, column: 12, scope: !65)
!274 = !DILocation(line: 209, column: 14, scope: !65)
!275 = !DILocation(line: 216, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !65, file: !1, line: 216, column: 9)
!277 = !DILocation(line: 216, column: 9, scope: !65)
!278 = !DILocation(line: 217, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 216, column: 27)
!280 = !DILocation(line: 207, column: 14, scope: !65)
!281 = !DILocation(line: 218, column: 4, scope: !279)
!282 = !DILocation(line: 219, column: 23, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 218, column: 37)
!284 = distinct !DILexicalBlock(scope: !276, file: !1, line: 218, column: 16)
!285 = !DILocation(line: 219, column: 15, scope: !283)
!286 = !DILocation(line: 220, column: 4, scope: !283)
!287 = !DILocation(line: 221, column: 4, scope: !65)
!288 = !DILocation(line: 222, column: 4, scope: !65)
!289 = !DILocation(line: 223, column: 16, scope: !65)
!290 = !DILocation(line: 208, column: 19, scope: !65)
!291 = !DILocation(line: 208, column: 13, scope: !65)
!292 = !DILocation(line: 224, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 224, column: 4)
!294 = distinct !DILexicalBlock(scope: !65, file: !1, line: 224, column: 4)
!295 = !DILocation(line: 224, column: 4, scope: !294)
!296 = !DILocation(line: 225, column: 12, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 225, column: 12)
!298 = distinct !DILexicalBlock(scope: !293, file: !1, line: 224, column: 44)
!299 = !DILocation(line: 225, column: 12, scope: !298)
!300 = !DILocation(line: 226, column: 30, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !1, line: 225, column: 30)
!302 = !DILocation(line: 226, column: 10, scope: !301)
!303 = !DILocation(line: 227, column: 25, scope: !301)
!304 = !DILocation(line: 227, column: 10, scope: !301)
!305 = !DILocation(line: 228, column: 7, scope: !301)
!306 = !DILocation(line: 229, column: 30, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 228, column: 40)
!308 = distinct !DILexicalBlock(scope: !297, file: !1, line: 228, column: 19)
!309 = !DILocation(line: 229, column: 10, scope: !307)
!310 = !DILocation(line: 230, column: 25, scope: !307)
!311 = !DILocation(line: 230, column: 10, scope: !307)
!312 = !DILocation(line: 231, column: 7, scope: !307)
!313 = !DILocation(line: 224, column: 39, scope: !293)
!314 = !DILocation(line: 233, column: 4, scope: !65)
!315 = !DILocation(line: 234, column: 4, scope: !65)
!316 = !DILocation(line: 235, column: 1, scope: !65)
!317 = !DILocation(line: 185, column: 11, scope: !54)
!318 = !DILocation(line: 243, column: 18, scope: !319)
!319 = distinct !DILexicalBlock(scope: !269, file: !1, line: 241, column: 50)
!320 = !DILocation(line: 185, column: 19, scope: !54)
!321 = !DILocation(line: 244, column: 25, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !1, line: 244, column: 7)
!323 = !DILocation(line: 185, column: 7, scope: !54)
!324 = !DILocation(line: 244, column: 34, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 244, column: 7)
!326 = !DILocation(line: 244, column: 7, scope: !322)
!327 = !DILocation(line: 245, column: 26, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 245, column: 15)
!329 = distinct !DILexicalBlock(scope: !325, file: !1, line: 244, column: 50)
!330 = !DILocation(line: 245, column: 24, scope: !328)
!331 = !DILocation(line: 245, column: 15, scope: !329)
!332 = !DILocation(line: 244, column: 45, scope: !325)
!333 = !DILocation(line: 250, column: 19, scope: !334)
!334 = distinct !DILexicalBlock(scope: !319, file: !1, line: 250, column: 12)
!335 = !DILocation(line: 250, column: 12, scope: !319)
!336 = !DILocation(line: 251, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 250, column: 31)
!338 = !DILocation(line: 251, column: 25, scope: !337)
!339 = !DILocation(line: 252, column: 25, scope: !337)
!340 = !DILocation(line: 253, column: 10, scope: !337)
!341 = !DILocation(line: 254, column: 15, scope: !337)
!342 = !DILocation(line: 258, column: 1, scope: !54)
