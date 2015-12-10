; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_rowid(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"\0A fatal error in DenseMtx_colid(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_dimensions(%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_rowIncrement(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_columnIncrement(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_rowIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_columnIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in DenseMtx_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx or pValue is NULL\0A\00", align 1
@.str10 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str13 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_realEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str14 = private unnamed_addr constant [71 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtxm pReal or pImag is NULL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_complexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx is NULL\0A\00", align 1
@.str20 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx type must be SPOOLES_REAL\0A\00", align 1
@.str21 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str22 = private unnamed_addr constant [75 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str23 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_setRealEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx is NULL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx type must be SPOOLES_COMPLEX\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A irow = %d, mtx->nrow = %d input\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A jcol = %d, mtx->ncol = %d input\0A\00", align 1
@.str28 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_setComplexEntry()\0A mtx->entries is NULL \0A\00", align 1
@.str29 = private unnamed_addr constant [40 x i8] c"\0A error in DenseMtx_row()\0A mtx is NULL\0A\00", align 1
@.str30 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A invalid type %d\0A\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_row()\0A %d rows, irow = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [44 x i8] c"\0A error in DenseMtx_row()\0A prowent is NULL\0A\00", align 1
@.str33 = private unnamed_addr constant [43 x i8] c"\0A error in DenseMtx_column()\0A mtx is NULL\0A\00", align 1
@.str34 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A invalid type %d\0A\00", align 1
@.str35 = private unnamed_addr constant [53 x i8] c"\0A error in DenseMtx_column()\0A %d columns, jcol = %d\0A\00", align 1
@.str36 = private unnamed_addr constant [47 x i8] c"\0A error in DenseMtx_column()\0A pcolent is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_rowid(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !40), !dbg !130
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !131
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !132, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !132
  tail call void @exit(i32 -1) #7, !dbg !137
  unreachable, !dbg !137

if.end:                                           ; preds = %entry
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !138
  %1 = load i32* %rowid, align 4, !dbg !138, !tbaa !139
  ret i32 %1, !dbg !138
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_colid(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !43), !dbg !140
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !141
  br i1 %cmp, label %if.then, label %if.end, !dbg !141

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !142, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !142
  tail call void @exit(i32 -1) #7, !dbg !144
  unreachable, !dbg !144

if.end:                                           ; preds = %entry
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !145
  %1 = load i32* %colid, align 4, !dbg !145, !tbaa !139
  ret i32 %1, !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !48), !dbg !146
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !49), !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !50), !dbg !148
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !149
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !149
  %or.cond = or i1 %cmp, %cmp1, !dbg !149
  %cmp3 = icmp eq i32* %pncol, null, !dbg !149
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !149
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32* %pncol) #6, !dbg !150
  tail call void @exit(i32 -1) #7, !dbg !152
  unreachable, !dbg !152

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !153
  %1 = load i32* %nrow, align 4, !dbg !153, !tbaa !139
  store i32 %1, i32* %pnrow, align 4, !dbg !153, !tbaa !139
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !154
  %2 = load i32* %ncol, align 4, !dbg !154, !tbaa !139
  store i32 %2, i32* %pncol, align 4, !dbg !154, !tbaa !139
  ret void, !dbg !155
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !53), !dbg !156
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !157
  br i1 %cmp, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !158, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !158
  tail call void @exit(i32 -1) #7, !dbg !160
  unreachable, !dbg !160

if.end:                                           ; preds = %entry
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !161
  %1 = load i32* %inc1, align 4, !dbg !161, !tbaa !139
  ret i32 %1, !dbg !161
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !56), !dbg !162
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !163

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !164, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !164
  tail call void @exit(i32 -1) #7, !dbg !166
  unreachable, !dbg !166

if.end:                                           ; preds = %entry
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !167
  %1 = load i32* %inc2, align 4, !dbg !167, !tbaa !139
  ret i32 %1, !dbg !167
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !62), !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !63), !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32** %prowind}, i64 0, metadata !64), !dbg !170
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !171
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !171
  %or.cond = or i1 %cmp, %cmp1, !dbg !171
  %cmp3 = icmp eq i32** %prowind, null, !dbg !171
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !171
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pnrow, i32** %prowind) #6, !dbg !172
  tail call void @exit(i32 -1) #7, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !175
  %1 = load i32* %nrow, align 4, !dbg !175, !tbaa !139
  store i32 %1, i32* %pnrow, align 4, !dbg !175, !tbaa !139
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !176
  %2 = load i32** %rowind, align 8, !dbg !176, !tbaa !134
  store i32* %2, i32** %prowind, align 8, !dbg !176, !tbaa !134
  ret void, !dbg !177
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !67), !dbg !178
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !68), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32** %pcolind}, i64 0, metadata !69), !dbg !180
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !181
  %cmp1 = icmp eq i32* %pncol, null, !dbg !181
  %or.cond = or i1 %cmp, %cmp1, !dbg !181
  %cmp3 = icmp eq i32** %pcolind, null, !dbg !181
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !181
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !181

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !182, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32* %pncol, i32** %pcolind) #6, !dbg !182
  tail call void @exit(i32 -1) #7, !dbg !184
  unreachable, !dbg !184

if.end:                                           ; preds = %entry
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !185
  %1 = load i32* %ncol, align 4, !dbg !185, !tbaa !139
  store i32 %1, i32* %pncol, align 4, !dbg !185, !tbaa !139
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !186
  %2 = load i32** %colind, align 8, !dbg !186, !tbaa !134
  store i32* %2, i32** %pcolind, align 8, !dbg !186, !tbaa !134
  ret void, !dbg !187
}

; Function Attrs: nounwind optsize uwtable
define double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !74), !dbg !188
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !189
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !190
  tail call void @exit(i32 -1) #7, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !193
  %1 = load double** %entries, align 8, !dbg !193, !tbaa !134
  ret double* %1, !dbg !193
}

; Function Attrs: nounwind optsize uwtable
define i8* @DenseMtx_workspace(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !80), !dbg !194
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !134
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !196
  tail call void @exit(i32 -1) #7, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !199
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #6, !dbg !199
  %1 = bitcast double* %call1 to i8*, !dbg !199
  ret i8* %1, !dbg !199
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_realEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !85), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !86), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !87), !dbg !202
  tail call void @llvm.dbg.value(metadata !{double* %pValue}, i64 0, metadata !88), !dbg !203
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !204
  %cmp1 = icmp eq double* %pValue, null, !dbg !204
  %or.cond = or i1 %cmp, %cmp1, !dbg !204
  br i1 %or.cond, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !205, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str9, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %0), !dbg !205
  tail call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !208
  %2 = load i32* %type, align 4, !dbg !208, !tbaa !139
  %cmp2 = icmp eq i32 %2, 1, !dbg !208
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !208

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !134
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str10, i64 0, i64 0), i64 69, i64 1, %struct._IO_FILE* %3), !dbg !209
  tail call void @exit(i32 -1) #7, !dbg !211
  unreachable, !dbg !211

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp sgt i32 %irow, -1, !dbg !212
  %nrow10.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow10.phi.trans.insert, align 4, !dbg !213, !tbaa !139
  %cmp8 = icmp sgt i32 %.pre, %irow, !dbg !212
  %or.cond43 = and i1 %cmp6, %cmp8, !dbg !212
  br i1 %or.cond43, label %if.end12, label %if.then9, !dbg !212

if.then9:                                         ; preds = %if.end5
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !213, !tbaa !134
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), i32 %irow, i32 %.pre) #6, !dbg !213
  tail call void @exit(i32 -1) #7, !dbg !215
  unreachable, !dbg !215

if.end12:                                         ; preds = %if.end5
  %cmp13 = icmp sgt i32 %jcol, -1, !dbg !216
  %ncol17.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre42 = load i32* %ncol17.phi.trans.insert, align 4, !dbg !217, !tbaa !139
  %cmp15 = icmp sgt i32 %.pre42, %jcol, !dbg !216
  %or.cond44 = and i1 %cmp13, %cmp15, !dbg !216
  br i1 %or.cond44, label %if.end19, label %if.then16, !dbg !216

if.then16:                                        ; preds = %if.end12
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !217, !tbaa !134
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), i32 %jcol, i32 %.pre42) #6, !dbg !217
  tail call void @exit(i32 -1) #7, !dbg !219
  unreachable, !dbg !219

if.end19:                                         ; preds = %if.end12
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !220
  %7 = load double** %entries, align 8, !dbg !220, !tbaa !134
  %cmp20 = icmp eq double* %7, null, !dbg !220
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !220

if.then21:                                        ; preds = %if.end19
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !134
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str13, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %8), !dbg !221
  tail call void @exit(i32 -1) #7, !dbg !223
  unreachable, !dbg !223

if.end23:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !224
  %10 = load i32* %inc1, align 4, !dbg !224, !tbaa !139
  %mul = mul nsw i32 %10, %irow, !dbg !224
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !224
  %11 = load i32* %inc2, align 4, !dbg !224, !tbaa !139
  %mul24 = mul nsw i32 %11, %jcol, !dbg !224
  %add = add nsw i32 %mul24, %mul, !dbg !224
  %idxprom = sext i32 %add to i64, !dbg !224
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom, !dbg !224
  %12 = load double* %arrayidx, align 8, !dbg !224, !tbaa !225
  store double %12, double* %pValue, align 8, !dbg !224, !tbaa !225
  ret void, !dbg !226
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_complexEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !93), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !94), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !95), !dbg !229
  tail call void @llvm.dbg.value(metadata !{double* %pReal}, i64 0, metadata !96), !dbg !230
  tail call void @llvm.dbg.value(metadata !{double* %pImag}, i64 0, metadata !97), !dbg !231
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !232
  %cmp1 = icmp eq double* %pReal, null, !dbg !232
  %or.cond = or i1 %cmp, %cmp1, !dbg !232
  %cmp3 = icmp eq double* %pImag, null, !dbg !232
  %or.cond53 = or i1 %or.cond, %cmp3, !dbg !232
  br i1 %or.cond53, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str14, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %0), !dbg !233
  tail call void @exit(i32 -1) #7, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !236
  %2 = load i32* %type, align 4, !dbg !236, !tbaa !139
  %cmp4 = icmp eq i32 %2, 2, !dbg !236
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !236

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !237, !tbaa !134
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %3), !dbg !237
  tail call void @exit(i32 -1) #7, !dbg !239
  unreachable, !dbg !239

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %irow, -1, !dbg !240
  %nrow12.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow12.phi.trans.insert, align 4, !dbg !241, !tbaa !139
  %cmp10 = icmp sgt i32 %.pre, %irow, !dbg !240
  %or.cond55 = and i1 %cmp8, %cmp10, !dbg !240
  br i1 %or.cond55, label %if.end14, label %if.then11, !dbg !240

if.then11:                                        ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !241, !tbaa !134
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %.pre) #6, !dbg !241
  tail call void @exit(i32 -1) #7, !dbg !243
  unreachable, !dbg !243

if.end14:                                         ; preds = %if.end7
  %cmp15 = icmp sgt i32 %jcol, -1, !dbg !244
  %ncol19.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre54 = load i32* %ncol19.phi.trans.insert, align 4, !dbg !245, !tbaa !139
  %cmp17 = icmp sgt i32 %.pre54, %jcol, !dbg !244
  %or.cond56 = and i1 %cmp15, %cmp17, !dbg !244
  br i1 %or.cond56, label %if.end21, label %if.then18, !dbg !244

if.then18:                                        ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !245, !tbaa !134
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %jcol, i32 %.pre54) #6, !dbg !245
  tail call void @exit(i32 -1) #7, !dbg !247
  unreachable, !dbg !247

if.end21:                                         ; preds = %if.end14
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !248
  %7 = load double** %entries, align 8, !dbg !248, !tbaa !134
  %cmp22 = icmp eq double* %7, null, !dbg !248
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !248

if.then23:                                        ; preds = %if.end21
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !249, !tbaa !134
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %8), !dbg !249
  tail call void @exit(i32 -1) #7, !dbg !251
  unreachable, !dbg !251

if.end25:                                         ; preds = %if.end21
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !252
  %10 = load i32* %inc1, align 4, !dbg !252, !tbaa !139
  %mul = mul nsw i32 %10, %irow, !dbg !252
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !252
  %11 = load i32* %inc2, align 4, !dbg !252, !tbaa !139
  %mul26 = mul nsw i32 %11, %jcol, !dbg !252
  %add = add nsw i32 %mul26, %mul, !dbg !252
  %mul27 = shl nsw i32 %add, 1, !dbg !252
  tail call void @llvm.dbg.value(metadata !{i32 %mul27}, i64 0, metadata !98), !dbg !252
  %idxprom = sext i32 %mul27 to i64, !dbg !253
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom, !dbg !253
  %12 = load double* %arrayidx, align 8, !dbg !253, !tbaa !225
  store double %12, double* %pReal, align 8, !dbg !253, !tbaa !225
  %add2952 = or i32 %mul27, 1, !dbg !254
  %idxprom30 = sext i32 %add2952 to i64, !dbg !254
  %arrayidx32 = getelementptr inbounds double* %7, i64 %idxprom30, !dbg !254
  %13 = load double* %arrayidx32, align 8, !dbg !254, !tbaa !225
  store double %13, double* %pImag, align 8, !dbg !254, !tbaa !225
  ret void, !dbg !255
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setRealEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !103), !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !104), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !105), !dbg !258
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !106), !dbg !259
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !260
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !261, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %0), !dbg !261
  tail call void @exit(i32 -1) #7, !dbg !263
  unreachable, !dbg !263

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !264
  %2 = load i32* %type, align 4, !dbg !264, !tbaa !139
  %cmp1 = icmp eq i32 %2, 1, !dbg !264
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !264

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !265, !tbaa !134
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([73 x i8]* @.str20, i64 0, i64 0), i64 72, i64 1, %struct._IO_FILE* %3), !dbg !265
  tail call void @exit(i32 -1) #7, !dbg !267
  unreachable, !dbg !267

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1, !dbg !268
  %nrow8.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow8.phi.trans.insert, align 4, !dbg !269, !tbaa !139
  %cmp6 = icmp sgt i32 %.pre, %irow, !dbg !268
  %or.cond = and i1 %cmp5, %cmp6, !dbg !268
  br i1 %or.cond, label %if.end10, label %if.then7, !dbg !268

if.then7:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !269, !tbaa !134
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str21, i64 0, i64 0), i32 %irow, i32 %.pre) #6, !dbg !269
  tail call void @exit(i32 -1) #7, !dbg !271
  unreachable, !dbg !271

if.end10:                                         ; preds = %if.end4
  %cmp11 = icmp sgt i32 %jcol, -1, !dbg !272
  %ncol15.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre39 = load i32* %ncol15.phi.trans.insert, align 4, !dbg !273, !tbaa !139
  %cmp13 = icmp sgt i32 %.pre39, %jcol, !dbg !272
  %or.cond40 = and i1 %cmp11, %cmp13, !dbg !272
  br i1 %or.cond40, label %if.end17, label %if.then14, !dbg !272

if.then14:                                        ; preds = %if.end10
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !273, !tbaa !134
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str22, i64 0, i64 0), i32 %jcol, i32 %.pre39) #6, !dbg !273
  tail call void @exit(i32 -1) #7, !dbg !275
  unreachable, !dbg !275

if.end17:                                         ; preds = %if.end10
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !276
  %7 = load double** %entries, align 8, !dbg !276, !tbaa !134
  %cmp18 = icmp eq double* %7, null, !dbg !276
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !276

if.then19:                                        ; preds = %if.end17
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !277, !tbaa !134
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str23, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %8), !dbg !277
  tail call void @exit(i32 -1) #7, !dbg !279
  unreachable, !dbg !279

if.end21:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !280
  %10 = load i32* %inc1, align 4, !dbg !280, !tbaa !139
  %mul = mul nsw i32 %10, %irow, !dbg !280
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !280
  %11 = load i32* %inc2, align 4, !dbg !280, !tbaa !139
  %mul22 = mul nsw i32 %11, %jcol, !dbg !280
  %add = add nsw i32 %mul22, %mul, !dbg !280
  %idxprom = sext i32 %add to i64, !dbg !280
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom, !dbg !280
  store double %value, double* %arrayidx, align 8, !dbg !280, !tbaa !225
  ret void, !dbg !281
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setComplexEntry(%struct._DenseMtx* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !111), !dbg !282
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !112), !dbg !283
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !113), !dbg !284
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !114), !dbg !285
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !115), !dbg !286
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !287
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !288, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %0), !dbg !288
  tail call void @exit(i32 -1) #7, !dbg !290
  unreachable, !dbg !290

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !291
  %2 = load i32* %type, align 4, !dbg !291, !tbaa !139
  %cmp1 = icmp eq i32 %2, 2, !dbg !291
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !291

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !292, !tbaa !134
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %3), !dbg !292
  tail call void @exit(i32 -1) #7, !dbg !294
  unreachable, !dbg !294

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1, !dbg !295
  %nrow8.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow8.phi.trans.insert, align 4, !dbg !296, !tbaa !139
  %cmp6 = icmp sgt i32 %.pre, %irow, !dbg !295
  %or.cond = and i1 %cmp5, %cmp6, !dbg !295
  br i1 %or.cond, label %if.end10, label %if.then7, !dbg !295

if.then7:                                         ; preds = %if.end4
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !296, !tbaa !134
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), i32 %irow, i32 %.pre) #6, !dbg !296
  tail call void @exit(i32 -1) #7, !dbg !298
  unreachable, !dbg !298

if.end10:                                         ; preds = %if.end4
  %cmp11 = icmp sgt i32 %jcol, -1, !dbg !299
  %ncol15.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre47 = load i32* %ncol15.phi.trans.insert, align 4, !dbg !300, !tbaa !139
  %cmp13 = icmp sgt i32 %.pre47, %jcol, !dbg !299
  %or.cond48 = and i1 %cmp11, %cmp13, !dbg !299
  br i1 %or.cond48, label %if.end17, label %if.then14, !dbg !299

if.then14:                                        ; preds = %if.end10
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !134
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), i32 %jcol, i32 %.pre47) #6, !dbg !300
  tail call void @exit(i32 -1) #7, !dbg !302
  unreachable, !dbg !302

if.end17:                                         ; preds = %if.end10
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !303
  %7 = load double** %entries, align 8, !dbg !303, !tbaa !134
  %cmp18 = icmp eq double* %7, null, !dbg !303
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !303

if.then19:                                        ; preds = %if.end17
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !304, !tbaa !134
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str28, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %8), !dbg !304
  tail call void @exit(i32 -1) #7, !dbg !306
  unreachable, !dbg !306

if.end21:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !307
  %10 = load i32* %inc1, align 4, !dbg !307, !tbaa !139
  %mul = mul nsw i32 %10, %irow, !dbg !307
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !307
  %11 = load i32* %inc2, align 4, !dbg !307, !tbaa !139
  %mul22 = mul nsw i32 %11, %jcol, !dbg !307
  %add = add nsw i32 %mul22, %mul, !dbg !307
  %mul23 = shl nsw i32 %add, 1, !dbg !307
  tail call void @llvm.dbg.value(metadata !{i32 %mul23}, i64 0, metadata !116), !dbg !307
  %idxprom = sext i32 %mul23 to i64, !dbg !308
  %arrayidx = getelementptr inbounds double* %7, i64 %idxprom, !dbg !308
  store double %real, double* %arrayidx, align 8, !dbg !308, !tbaa !225
  %add2546 = or i32 %mul23, 1, !dbg !309
  %idxprom26 = sext i32 %add2546 to i64, !dbg !309
  %arrayidx28 = getelementptr inbounds double* %7, i64 %idxprom26, !dbg !309
  store double %imag, double* %arrayidx28, align 8, !dbg !309, !tbaa !225
  ret void, !dbg !310
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_row(%struct._DenseMtx* %mtx, i32 %irow, double** %prowent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !122), !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !123), !dbg !312
  tail call void @llvm.dbg.value(metadata !{double** %prowent}, i64 0, metadata !124), !dbg !313
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !315, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str29, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %0), !dbg !315
  br label %return, !dbg !317

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !318
  %2 = load i32* %type, align 4, !dbg !318, !tbaa !139
  %.off = add i32 %2, -1, !dbg !318
  %switch = icmp ult i32 %.off, 2, !dbg !318
  br i1 %switch, label %if.end7, label %if.then4, !dbg !318

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !319, !tbaa !134
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str30, i64 0, i64 0), i32 %2) #6, !dbg !319
  br label %return, !dbg !321

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %irow, -1, !dbg !322
  %nrow11.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %.pre = load i32* %nrow11.phi.trans.insert, align 4, !dbg !323, !tbaa !139
  %cmp9 = icmp sgt i32 %.pre, %irow, !dbg !322
  %or.cond = and i1 %cmp8, %cmp9, !dbg !322
  br i1 %or.cond, label %if.end13, label %if.then10, !dbg !322

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !134
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0), i32 %.pre, i32 %irow) #6, !dbg !323
  br label %return, !dbg !325

if.end13:                                         ; preds = %if.end7
  %cmp14 = icmp eq double** %prowent, null, !dbg !326
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !326

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !327, !tbaa !134
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %5), !dbg !327
  br label %return, !dbg !329

if.end17:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %2, 1, !dbg !330
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !331
  %7 = load double** %entries, align 8, !dbg !331, !tbaa !134
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !330

if.then20:                                        ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !331
  %8 = load i32* %inc1, align 4, !dbg !331, !tbaa !139
  %mul = mul nsw i32 %8, %irow, !dbg !331
  br label %if.end27, !dbg !333

if.else:                                          ; preds = %if.end17
  %mul22 = shl i32 %irow, 1, !dbg !334
  %inc123 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !334
  %9 = load i32* %inc123, align 4, !dbg !334, !tbaa !139
  %mul24 = mul nsw i32 %mul22, %9, !dbg !334
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20
  %idx.ext25.pn.in = phi i32 [ %mul24, %if.else ], [ %mul, %if.then20 ]
  %idx.ext25.pn = sext i32 %idx.ext25.pn.in to i64, !dbg !334
  %storemerge = getelementptr inbounds double* %7, i64 %idx.ext25.pn, !dbg !334
  store double* %storemerge, double** %prowent, align 8, !dbg !331, !tbaa !134
  br label %return, !dbg !336

return:                                           ; preds = %if.end27, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -3, %if.then10 ], [ -4, %if.then15 ], [ 1, %if.end27 ]
  ret i32 %retval.0, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_column(%struct._DenseMtx* %mtx, i32 %jcol, double** %pcolent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !127), !dbg !337
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !128), !dbg !338
  tail call void @llvm.dbg.value(metadata !{double** %pcolent}, i64 0, metadata !129), !dbg !339
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !340
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !341, !tbaa !134
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str33, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %0), !dbg !341
  br label %return, !dbg !343

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !344
  %2 = load i32* %type, align 4, !dbg !344, !tbaa !139
  %.off = add i32 %2, -1, !dbg !344
  %switch = icmp ult i32 %.off, 2, !dbg !344
  br i1 %switch, label %if.end7, label %if.then4, !dbg !344

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !345, !tbaa !134
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str34, i64 0, i64 0), i32 %2) #6, !dbg !345
  br label %return, !dbg !347

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp sgt i32 %jcol, -1, !dbg !348
  %ncol11.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %.pre = load i32* %ncol11.phi.trans.insert, align 4, !dbg !349, !tbaa !139
  %cmp9 = icmp sgt i32 %.pre, %jcol, !dbg !348
  %or.cond = and i1 %cmp8, %cmp9, !dbg !348
  br i1 %or.cond, label %if.end13, label %if.then10, !dbg !348

if.then10:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !349, !tbaa !134
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([53 x i8]* @.str35, i64 0, i64 0), i32 %.pre, i32 %jcol) #6, !dbg !349
  br label %return, !dbg !351

if.end13:                                         ; preds = %if.end7
  %cmp14 = icmp eq double** %pcolent, null, !dbg !352
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !352

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !134
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %5), !dbg !353
  br label %return, !dbg !355

if.end17:                                         ; preds = %if.end13
  %cmp19 = icmp eq i32 %2, 1, !dbg !356
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !357
  %7 = load double** %entries, align 8, !dbg !357, !tbaa !134
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !356

if.then20:                                        ; preds = %if.end17
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !357
  %8 = load i32* %inc2, align 4, !dbg !357, !tbaa !139
  %mul = mul nsw i32 %8, %jcol, !dbg !357
  br label %if.end27, !dbg !359

if.else:                                          ; preds = %if.end17
  %mul22 = shl i32 %jcol, 1, !dbg !360
  %inc223 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !360
  %9 = load i32* %inc223, align 4, !dbg !360, !tbaa !139
  %mul24 = mul nsw i32 %mul22, %9, !dbg !360
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then20
  %idx.ext25.pn.in = phi i32 [ %mul24, %if.else ], [ %mul, %if.then20 ]
  %idx.ext25.pn = sext i32 %idx.ext25.pn.in to i64, !dbg !360
  %storemerge = getelementptr inbounds double* %7, i64 %idx.ext25.pn, !dbg !360
  store double* %storemerge, double** %pcolent, align 8, !dbg !357, !tbaa !134
  br label %return, !dbg !362

return:                                           ; preds = %if.end27, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -3, %if.then10 ], [ -4, %if.then15 ], [ 1, %if.end27 ]
  ret i32 %retval.0, !dbg !362
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !41, metadata !44, metadata !51, metadata !54, metadata !57, metadata !65, metadata !70, metadata !75, metadata !81, metadata !89, metadata !99, metadata !107, metadata !117, metadata !125}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_rowid", metadata !"DenseMtx_rowid", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*)* @DenseMtx_rowid, null, null, metadata !39, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [DenseMtx_rowid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !27, metadata !36}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!26 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!27 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!28 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!38 = metadata !{i32 786454, metadata !12, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 15]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_colid", metadata !"DenseMtx_colid", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*)* @DenseMtx_colid, null, null, metadata !42, i32 40} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 40] [DenseMtx_colid]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786689, metadata !41, metadata !"mtx", metadata !5, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 39]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_dimensions", metadata !"DenseMtx_dimensions", metadata !"", i32 62, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32*, i32*)* @DenseMtx_dimensions, null, null, metadata !47, i32 66} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 66] [DenseMtx_dimensions]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !9, metadata !22, metadata !22}
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !44, metadata !"mtx", metadata !5, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 63]
!49 = metadata !{i32 786689, metadata !44, metadata !"pnrow", metadata !5, i32 33554496, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 64]
!50 = metadata !{i32 786689, metadata !44, metadata !"pncol", metadata !5, i32 50331713, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 65]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_rowIncrement", metadata !"DenseMtx_rowIncrement", metadata !"", i32 91, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*)* @DenseMtx_rowIncrement, null, null, metadata !52, i32 93} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 93] [DenseMtx_rowIncrement]
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786689, metadata !51, metadata !"mtx", metadata !5, i32 16777308, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 92]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_columnIncrement", metadata !"DenseMtx_columnIncrement", metadata !"", i32 115, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*)* @DenseMtx_columnIncrement, null, null, metadata !55, i32 117} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 117] [DenseMtx_columnIncrement]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786689, metadata !54, metadata !"mtx", metadata !5, i32 16777332, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 116]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_rowIndices", metadata !"DenseMtx_rowIndices", metadata !"", i32 139, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32*, i32**)* @DenseMtx_rowIndices, null, null, metadata !61, i32 143} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 143] [DenseMtx_rowIndices]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !9, metadata !22, metadata !60}
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 786689, metadata !57, metadata !"mtx", metadata !5, i32 16777356, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 140]
!63 = metadata !{i32 786689, metadata !57, metadata !"pnrow", metadata !5, i32 33554573, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 141]
!64 = metadata !{i32 786689, metadata !57, metadata !"prowind", metadata !5, i32 50331790, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowind] [line 142]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_columnIndices", metadata !"DenseMtx_columnIndices", metadata !"", i32 168, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32*, i32**)* @DenseMtx_columnIndices, null, null, metadata !66, i32 172} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 172] [DenseMtx_columnIndices]
!66 = metadata !{metadata !67, metadata !68, metadata !69}
!67 = metadata !{i32 786689, metadata !65, metadata !"mtx", metadata !5, i32 16777385, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 169]
!68 = metadata !{i32 786689, metadata !65, metadata !"pncol", metadata !5, i32 33554602, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 170]
!69 = metadata !{i32 786689, metadata !65, metadata !"pcolind", metadata !5, i32 50331819, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolind] [line 171]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_entries", metadata !"DenseMtx_entries", metadata !"", i32 197, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._DenseMtx*)* @DenseMtx_entries, null, null, metadata !73, i32 199} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 199] [DenseMtx_entries]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{metadata !25, metadata !9}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786689, metadata !70, metadata !"mtx", metadata !5, i32 16777414, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 198]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_workspace", metadata !"DenseMtx_workspace", metadata !"", i32 221, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct._DenseMtx*)* @DenseMtx_workspace, null, null, metadata !79, i32 223} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 223] [DenseMtx_workspace]
!76 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !9}
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786689, metadata !75, metadata !"mtx", metadata !5, i32 16777438, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 222]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_realEntry", metadata !"DenseMtx_realEntry", metadata !"", i32 245, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, double*)* @DenseMtx_realEntry, null, null, metadata !84, i32 250} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 250] [DenseMtx_realEntry]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !25}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88}
!85 = metadata !{i32 786689, metadata !81, metadata !"mtx", metadata !5, i32 16777462, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 246]
!86 = metadata !{i32 786689, metadata !81, metadata !"irow", metadata !5, i32 33554679, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 247]
!87 = metadata !{i32 786689, metadata !81, metadata !"jcol", metadata !5, i32 50331896, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 248]
!88 = metadata !{i32 786689, metadata !81, metadata !"pValue", metadata !5, i32 67109113, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pValue] [line 249]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_complexEntry", metadata !"DenseMtx_complexEntry", metadata !"", i32 294, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, double*, double*)* @DenseMtx_complexEntry, null, null, metadata !92, i32 300} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 300] [DenseMtx_complexEntry]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !25, metadata !25}
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{i32 786689, metadata !89, metadata !"mtx", metadata !5, i32 16777511, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 295]
!94 = metadata !{i32 786689, metadata !89, metadata !"irow", metadata !5, i32 33554728, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 296]
!95 = metadata !{i32 786689, metadata !89, metadata !"jcol", metadata !5, i32 50331945, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 297]
!96 = metadata !{i32 786689, metadata !89, metadata !"pReal", metadata !5, i32 67109162, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pReal] [line 298]
!97 = metadata !{i32 786689, metadata !89, metadata !"pImag", metadata !5, i32 83886379, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pImag] [line 299]
!98 = metadata !{i32 786688, metadata !89, metadata !"loc", metadata !5, i32 301, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 301]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setRealEntry", metadata !"DenseMtx_setRealEntry", metadata !"", i32 347, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, double)* @DenseMtx_setRealEntry, null, null, metadata !102, i32 352} ; [ DW_TAG_subprogram ] [line 347] [def] [scope 352] [DenseMtx_setRealEntry]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !26}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106}
!103 = metadata !{i32 786689, metadata !99, metadata !"mtx", metadata !5, i32 16777564, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 348]
!104 = metadata !{i32 786689, metadata !99, metadata !"irow", metadata !5, i32 33554781, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 349]
!105 = metadata !{i32 786689, metadata !99, metadata !"jcol", metadata !5, i32 50331998, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 350]
!106 = metadata !{i32 786689, metadata !99, metadata !"value", metadata !5, i32 67109215, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 351]
!107 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setComplexEntry", metadata !"DenseMtx_setComplexEntry", metadata !"", i32 396, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, double, double)* @DenseMtx_setComplexEntry, null, null, metadata !110, i32 402} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 402] [DenseMtx_setComplexEntry]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !26, metadata !26}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!111 = metadata !{i32 786689, metadata !107, metadata !"mtx", metadata !5, i32 16777613, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 397]
!112 = metadata !{i32 786689, metadata !107, metadata !"irow", metadata !5, i32 33554830, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 398]
!113 = metadata !{i32 786689, metadata !107, metadata !"jcol", metadata !5, i32 50332047, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 399]
!114 = metadata !{i32 786689, metadata !107, metadata !"real", metadata !5, i32 67109264, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 400]
!115 = metadata !{i32 786689, metadata !107, metadata !"imag", metadata !5, i32 83886481, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 401]
!116 = metadata !{i32 786688, metadata !107, metadata !"loc", metadata !5, i32 403, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 403]
!117 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_row", metadata !"DenseMtx_row", metadata !"", i32 456, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, i32, double**)* @DenseMtx_row, null, null, metadata !121, i32 460} ; [ DW_TAG_subprogram ] [line 456] [def] [scope 460] [DenseMtx_row]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !8, metadata !9, metadata !8, metadata !120}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123, metadata !124}
!122 = metadata !{i32 786689, metadata !117, metadata !"mtx", metadata !5, i32 16777673, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 457]
!123 = metadata !{i32 786689, metadata !117, metadata !"irow", metadata !5, i32 33554890, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 458]
!124 = metadata !{i32 786689, metadata !117, metadata !"prowent", metadata !5, i32 50332107, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowent] [line 459]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_column", metadata !"DenseMtx_column", metadata !"", i32 509, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, i32, double**)* @DenseMtx_column, null, null, metadata !126, i32 513} ; [ DW_TAG_subprogram ] [line 509] [def] [scope 513] [DenseMtx_column]
!126 = metadata !{metadata !127, metadata !128, metadata !129}
!127 = metadata !{i32 786689, metadata !125, metadata !"mtx", metadata !5, i32 16777726, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 510]
!128 = metadata !{i32 786689, metadata !125, metadata !"jcol", metadata !5, i32 33554943, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 511]
!129 = metadata !{i32 786689, metadata !125, metadata !"pcolent", metadata !5, i32 50332160, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolent] [line 512]
!130 = metadata !{i32 15, i32 0, metadata !4, null}
!131 = metadata !{i32 22, i32 0, metadata !4, null}
!132 = metadata !{i32 23, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!134 = metadata !{metadata !"any pointer", metadata !135}
!135 = metadata !{metadata !"omnipotent char", metadata !136}
!136 = metadata !{metadata !"Simple C/C++ TBAA"}
!137 = metadata !{i32 25, i32 0, metadata !133, null}
!138 = metadata !{i32 27, i32 0, metadata !4, null}
!139 = metadata !{metadata !"int", metadata !135}
!140 = metadata !{i32 39, i32 0, metadata !41, null}
!141 = metadata !{i32 46, i32 0, metadata !41, null}
!142 = metadata !{i32 47, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !41, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!144 = metadata !{i32 49, i32 0, metadata !143, null}
!145 = metadata !{i32 51, i32 0, metadata !41, null}
!146 = metadata !{i32 63, i32 0, metadata !44, null}
!147 = metadata !{i32 64, i32 0, metadata !44, null}
!148 = metadata !{i32 65, i32 0, metadata !44, null}
!149 = metadata !{i32 72, i32 0, metadata !44, null}
!150 = metadata !{i32 73, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !44, i32 72, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!152 = metadata !{i32 75, i32 0, metadata !151, null}
!153 = metadata !{i32 77, i32 0, metadata !44, null}
!154 = metadata !{i32 78, i32 0, metadata !44, null}
!155 = metadata !{i32 80, i32 0, metadata !44, null}
!156 = metadata !{i32 92, i32 0, metadata !51, null}
!157 = metadata !{i32 99, i32 0, metadata !51, null}
!158 = metadata !{i32 100, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !51, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!160 = metadata !{i32 102, i32 0, metadata !159, null}
!161 = metadata !{i32 104, i32 0, metadata !51, null}
!162 = metadata !{i32 116, i32 0, metadata !54, null}
!163 = metadata !{i32 123, i32 0, metadata !54, null}
!164 = metadata !{i32 124, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !54, i32 123, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!166 = metadata !{i32 126, i32 0, metadata !165, null}
!167 = metadata !{i32 128, i32 0, metadata !54, null}
!168 = metadata !{i32 140, i32 0, metadata !57, null}
!169 = metadata !{i32 141, i32 0, metadata !57, null}
!170 = metadata !{i32 142, i32 0, metadata !57, null}
!171 = metadata !{i32 149, i32 0, metadata !57, null}
!172 = metadata !{i32 150, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !57, i32 149, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!174 = metadata !{i32 152, i32 0, metadata !173, null}
!175 = metadata !{i32 154, i32 0, metadata !57, null}
!176 = metadata !{i32 155, i32 0, metadata !57, null}
!177 = metadata !{i32 157, i32 0, metadata !57, null}
!178 = metadata !{i32 169, i32 0, metadata !65, null}
!179 = metadata !{i32 170, i32 0, metadata !65, null}
!180 = metadata !{i32 171, i32 0, metadata !65, null}
!181 = metadata !{i32 178, i32 0, metadata !65, null}
!182 = metadata !{i32 179, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !65, i32 178, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!184 = metadata !{i32 181, i32 0, metadata !183, null}
!185 = metadata !{i32 183, i32 0, metadata !65, null}
!186 = metadata !{i32 184, i32 0, metadata !65, null}
!187 = metadata !{i32 186, i32 0, metadata !65, null}
!188 = metadata !{i32 198, i32 0, metadata !70, null}
!189 = metadata !{i32 205, i32 0, metadata !70, null}
!190 = metadata !{i32 206, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !70, i32 205, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!192 = metadata !{i32 208, i32 0, metadata !191, null}
!193 = metadata !{i32 210, i32 0, metadata !70, null}
!194 = metadata !{i32 222, i32 0, metadata !75, null}
!195 = metadata !{i32 229, i32 0, metadata !75, null}
!196 = metadata !{i32 230, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !75, i32 229, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!198 = metadata !{i32 232, i32 0, metadata !197, null}
!199 = metadata !{i32 234, i32 0, metadata !75, null}
!200 = metadata !{i32 246, i32 0, metadata !81, null}
!201 = metadata !{i32 247, i32 0, metadata !81, null}
!202 = metadata !{i32 248, i32 0, metadata !81, null}
!203 = metadata !{i32 249, i32 0, metadata !81, null}
!204 = metadata !{i32 256, i32 0, metadata !81, null}
!205 = metadata !{i32 257, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !81, i32 256, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!207 = metadata !{i32 259, i32 0, metadata !206, null}
!208 = metadata !{i32 261, i32 0, metadata !81, null}
!209 = metadata !{i32 262, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !81, i32 261, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!211 = metadata !{i32 264, i32 0, metadata !210, null}
!212 = metadata !{i32 266, i32 0, metadata !81, null}
!213 = metadata !{i32 267, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !81, i32 266, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!215 = metadata !{i32 269, i32 0, metadata !214, null}
!216 = metadata !{i32 271, i32 0, metadata !81, null}
!217 = metadata !{i32 272, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !81, i32 271, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!219 = metadata !{i32 274, i32 0, metadata !218, null}
!220 = metadata !{i32 276, i32 0, metadata !81, null}
!221 = metadata !{i32 277, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !81, i32 276, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!223 = metadata !{i32 279, i32 0, metadata !222, null}
!224 = metadata !{i32 281, i32 0, metadata !81, null}
!225 = metadata !{metadata !"double", metadata !135}
!226 = metadata !{i32 283, i32 0, metadata !81, null}
!227 = metadata !{i32 295, i32 0, metadata !89, null}
!228 = metadata !{i32 296, i32 0, metadata !89, null}
!229 = metadata !{i32 297, i32 0, metadata !89, null}
!230 = metadata !{i32 298, i32 0, metadata !89, null}
!231 = metadata !{i32 299, i32 0, metadata !89, null}
!232 = metadata !{i32 307, i32 0, metadata !89, null}
!233 = metadata !{i32 308, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !89, i32 307, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!235 = metadata !{i32 310, i32 0, metadata !234, null}
!236 = metadata !{i32 312, i32 0, metadata !89, null}
!237 = metadata !{i32 313, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !89, i32 312, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!239 = metadata !{i32 315, i32 0, metadata !238, null}
!240 = metadata !{i32 317, i32 0, metadata !89, null}
!241 = metadata !{i32 318, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !89, i32 317, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!243 = metadata !{i32 320, i32 0, metadata !242, null}
!244 = metadata !{i32 322, i32 0, metadata !89, null}
!245 = metadata !{i32 323, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !89, i32 322, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!247 = metadata !{i32 325, i32 0, metadata !246, null}
!248 = metadata !{i32 327, i32 0, metadata !89, null}
!249 = metadata !{i32 328, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !89, i32 327, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!251 = metadata !{i32 330, i32 0, metadata !250, null}
!252 = metadata !{i32 332, i32 0, metadata !89, null}
!253 = metadata !{i32 333, i32 0, metadata !89, null}
!254 = metadata !{i32 334, i32 0, metadata !89, null}
!255 = metadata !{i32 336, i32 0, metadata !89, null}
!256 = metadata !{i32 348, i32 0, metadata !99, null}
!257 = metadata !{i32 349, i32 0, metadata !99, null}
!258 = metadata !{i32 350, i32 0, metadata !99, null}
!259 = metadata !{i32 351, i32 0, metadata !99, null}
!260 = metadata !{i32 358, i32 0, metadata !99, null}
!261 = metadata !{i32 359, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !99, i32 358, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!263 = metadata !{i32 361, i32 0, metadata !262, null}
!264 = metadata !{i32 363, i32 0, metadata !99, null}
!265 = metadata !{i32 364, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !99, i32 363, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!267 = metadata !{i32 366, i32 0, metadata !266, null}
!268 = metadata !{i32 368, i32 0, metadata !99, null}
!269 = metadata !{i32 369, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !99, i32 368, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!271 = metadata !{i32 371, i32 0, metadata !270, null}
!272 = metadata !{i32 373, i32 0, metadata !99, null}
!273 = metadata !{i32 374, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !99, i32 373, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!275 = metadata !{i32 376, i32 0, metadata !274, null}
!276 = metadata !{i32 378, i32 0, metadata !99, null}
!277 = metadata !{i32 379, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !99, i32 378, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!279 = metadata !{i32 381, i32 0, metadata !278, null}
!280 = metadata !{i32 383, i32 0, metadata !99, null}
!281 = metadata !{i32 385, i32 0, metadata !99, null}
!282 = metadata !{i32 397, i32 0, metadata !107, null}
!283 = metadata !{i32 398, i32 0, metadata !107, null}
!284 = metadata !{i32 399, i32 0, metadata !107, null}
!285 = metadata !{i32 400, i32 0, metadata !107, null}
!286 = metadata !{i32 401, i32 0, metadata !107, null}
!287 = metadata !{i32 409, i32 0, metadata !107, null}
!288 = metadata !{i32 410, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !107, i32 409, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!290 = metadata !{i32 412, i32 0, metadata !289, null}
!291 = metadata !{i32 414, i32 0, metadata !107, null}
!292 = metadata !{i32 415, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !107, i32 414, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!294 = metadata !{i32 417, i32 0, metadata !293, null}
!295 = metadata !{i32 419, i32 0, metadata !107, null}
!296 = metadata !{i32 420, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !107, i32 419, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!298 = metadata !{i32 422, i32 0, metadata !297, null}
!299 = metadata !{i32 424, i32 0, metadata !107, null}
!300 = metadata !{i32 425, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !107, i32 424, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!302 = metadata !{i32 427, i32 0, metadata !301, null}
!303 = metadata !{i32 429, i32 0, metadata !107, null}
!304 = metadata !{i32 430, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !107, i32 429, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!306 = metadata !{i32 432, i32 0, metadata !305, null}
!307 = metadata !{i32 434, i32 0, metadata !107, null}
!308 = metadata !{i32 435, i32 0, metadata !107, null}
!309 = metadata !{i32 436, i32 0, metadata !107, null}
!310 = metadata !{i32 438, i32 0, metadata !107, null}
!311 = metadata !{i32 457, i32 0, metadata !117, null}
!312 = metadata !{i32 458, i32 0, metadata !117, null}
!313 = metadata !{i32 459, i32 0, metadata !117, null}
!314 = metadata !{i32 466, i32 0, metadata !117, null}
!315 = metadata !{i32 467, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !117, i32 466, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!317 = metadata !{i32 469, i32 0, metadata !316, null}
!318 = metadata !{i32 471, i32 0, metadata !117, null}
!319 = metadata !{i32 472, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !117, i32 471, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!321 = metadata !{i32 474, i32 0, metadata !320, null}
!322 = metadata !{i32 476, i32 0, metadata !117, null}
!323 = metadata !{i32 477, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !117, i32 476, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!325 = metadata !{i32 479, i32 0, metadata !324, null}
!326 = metadata !{i32 481, i32 0, metadata !117, null}
!327 = metadata !{i32 482, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !117, i32 481, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!329 = metadata !{i32 484, i32 0, metadata !328, null}
!330 = metadata !{i32 486, i32 0, metadata !117, null}
!331 = metadata !{i32 487, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !117, i32 486, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!333 = metadata !{i32 488, i32 0, metadata !332, null}
!334 = metadata !{i32 489, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !117, i32 488, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!336 = metadata !{i32 491, i32 0, metadata !117, null}
!337 = metadata !{i32 510, i32 0, metadata !125, null}
!338 = metadata !{i32 511, i32 0, metadata !125, null}
!339 = metadata !{i32 512, i32 0, metadata !125, null}
!340 = metadata !{i32 519, i32 0, metadata !125, null}
!341 = metadata !{i32 520, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !125, i32 519, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!343 = metadata !{i32 522, i32 0, metadata !342, null}
!344 = metadata !{i32 524, i32 0, metadata !125, null}
!345 = metadata !{i32 525, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !125, i32 524, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!347 = metadata !{i32 527, i32 0, metadata !346, null}
!348 = metadata !{i32 529, i32 0, metadata !125, null}
!349 = metadata !{i32 530, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !125, i32 529, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!351 = metadata !{i32 532, i32 0, metadata !350, null}
!352 = metadata !{i32 534, i32 0, metadata !125, null}
!353 = metadata !{i32 535, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !125, i32 534, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!355 = metadata !{i32 537, i32 0, metadata !354, null}
!356 = metadata !{i32 539, i32 0, metadata !125, null}
!357 = metadata !{i32 540, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !125, i32 539, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!359 = metadata !{i32 541, i32 0, metadata !358, null}
!360 = metadata !{i32 542, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !125, i32 541, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_instance.c]
!362 = metadata !{i32 544, i32 0, metadata !125, null}
