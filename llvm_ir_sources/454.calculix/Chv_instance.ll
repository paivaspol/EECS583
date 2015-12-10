; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [40 x i8] c"\0A fatal error in Chv_id(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_type(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Chv_symmetryFlag(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_dimensions(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Chv_rowIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_rowIndices(%p,%p,%p)\0A bad symflag = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_columnIndices(%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"\0A fatal error in Chv_nent(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_nent(%p)\0A bad symmetry flag %d\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Chv_entries(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A ichv = %d, nD = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A chv->entries is NULL\0A\00", align 1
@.str13 = private unnamed_addr constant [122 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A type is SPOOLES_REAL, symflag = %d\0A not SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str14 = private unnamed_addr constant [154 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A bad symflag = %d, type is SPOOLES_COMPLEX,\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str15 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Chv_diagLocation(%p)\0A bad type = %d, not SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Chv_workspace(%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Chv_realEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Chv_realEntry(%p,%d,%d,%p)\0A bad type %d, not SPOOLES_REAL\0A\00", align 1
@.str19 = private unnamed_addr constant [112 x i8] c"\0A fatal error in Chv_realEntry(%p,%d,%d,%p)\0A bad symflag %d\0A must be SPOOLES_SYMMETRIC of SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str20 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Chv_realEntry(%p,%d,%d,%p)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str21 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Chv_complexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_complexEntry(%p,%d,%d,%p,%p)\0A bad type %d, not SPOOLES_COMPLEX\0A\00", align 1
@.str23 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Chv_complexEntry(%p,%d,%d,%p,%p)\0A bad symflag %d, not SPOOLES_SYMMETRIC, \0A SPOOLES_HERMITIAN or SPOOLES_NONSYMMETRIC \0A\00", align 1
@.str24 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Chv_complexEntry(%p,%d,%d,%p,%p)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str25 = private unnamed_addr constant [66 x i8] c"\0A fatal error in Chv_locationOfRealEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_locationOfRealEntry(%p,%d,%d,%p)\0A bad type %d, not SPOOLES_REAL\0A\00", align 1
@.str27 = private unnamed_addr constant [118 x i8] c"\0A fatal error in Chv_locationOfRealEntry(%p,%d,%d,%p)\0A bad symflag %d, not SPOOLES_SYMMETRIC of SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str28 = private unnamed_addr constant [99 x i8] c"\0A fatal error in Chv_locationOfRealEntry(%p,%d,%d,%p)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str29 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Chv_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str30 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Chv_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad type %d, not SPOOLES_COMPLEX\0A\00", align 1
@.str31 = private unnamed_addr constant [145 x i8] c"\0A fatal error in Chv_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A bad symflag %d\0A not SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC \0A\00", align 1
@.str32 = private unnamed_addr constant [105 x i8] c"\0A fatal error in Chv_locationOfComplexEntry(%p,%d,%d,%p,%p)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str33 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Chv_setRealEntry(%p,%d,%d,%e)\0A bad input\0A\00", align 1
@.str34 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_setRealEntry(%p,%d,%d,%e)\0A bad type %d, not SPOOLES_REAL\0A\00", align 1
@.str35 = private unnamed_addr constant [115 x i8] c"\0A fatal error in Chv_setRealEntry(%p,%d,%d,%e)\0A bad symflag %d\0A must be SPOOLES_SYMMETRIC of SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str36 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Chv_setRealEntry(%p,%d,%d,%e)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_setComplexEntry(%p,%d,%d,%e,%e)\0A bad input\0A\00", align 1
@.str38 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_setComplexEntry(%p,%d,%d,%e,%e)\0A bad type %d, not SPOOLES_COMPLEX\0A\00", align 1
@.str39 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Chv_setComplexEntry(%p,%d,%d,%e,%e)\0A bad symflag %d\0A not SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC \0A\00", align 1
@.str40 = private unnamed_addr constant [98 x i8] c"\0A fatal error in Chv_setComplexEntry(%p,%d,%d,%e,%e)\0A irow = %d, jcol = %d, nrow = %d, ncol = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_id(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !39), !dbg !192
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !193
  br i1 %cmp, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !194, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), %struct._Chv* null) #5, !dbg !194
  tail call void @exit(i32 -1) #6, !dbg !199
  unreachable, !dbg !199

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !200
  %1 = load i32* %id, align 4, !dbg !200, !tbaa !201
  ret i32 %1, !dbg !200
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_type(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !42), !dbg !202
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !203

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !204, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), %struct._Chv* null) #5, !dbg !204
  tail call void @exit(i32 -1) #6, !dbg !206
  unreachable, !dbg !206

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !207
  %1 = load i32* %type, align 4, !dbg !207, !tbaa !201
  ret i32 %1, !dbg !207
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_symmetryFlag(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !45), !dbg !208
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !209
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._Chv* null) #5, !dbg !210
  tail call void @exit(i32 -1) #6, !dbg !212
  unreachable, !dbg !212

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !213
  %1 = load i32* %symflag, align 4, !dbg !213, !tbaa !201
  ret i32 %1, !dbg !213
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_dimensions(%struct._Chv* %chv, i32* %pnD, i32* %pnL, i32* %pnU) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !50), !dbg !214
  tail call void @llvm.dbg.value(metadata !{i32* %pnD}, i64 0, metadata !51), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32* %pnL}, i64 0, metadata !52), !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32* %pnU}, i64 0, metadata !53), !dbg !217
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !218
  %cmp1 = icmp eq i32* %pnD, null, !dbg !218
  %or.cond = or i1 %cmp, %cmp1, !dbg !218
  %cmp3 = icmp eq i32* %pnL, null, !dbg !218
  %or.cond16 = or i1 %or.cond, %cmp3, !dbg !218
  %cmp5 = icmp eq i32* %pnU, null, !dbg !218
  %or.cond17 = or i1 %or.cond16, %cmp5, !dbg !218
  br i1 %or.cond17, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !219, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32* %pnD, i32* %pnL, i32* %pnU) #5, !dbg !219
  tail call void @exit(i32 -1) #6, !dbg !221
  unreachable, !dbg !221

if.end:                                           ; preds = %entry
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !222
  %1 = load i32* %nD, align 4, !dbg !222, !tbaa !201
  store i32 %1, i32* %pnD, align 4, !dbg !222, !tbaa !201
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !223
  %2 = load i32* %nL, align 4, !dbg !223, !tbaa !201
  store i32 %2, i32* %pnL, align 4, !dbg !223, !tbaa !201
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !224
  %3 = load i32* %nU, align 4, !dbg !224, !tbaa !201
  store i32 %3, i32* %pnU, align 4, !dbg !224, !tbaa !201
  ret void, !dbg !225
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_rowIndices(%struct._Chv* %chv, i32* %pnrow, i32** %prowind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !59), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32* %pnrow}, i64 0, metadata !60), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32** %prowind}, i64 0, metadata !61), !dbg !228
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !229
  %cmp1 = icmp eq i32* %pnrow, null, !dbg !229
  %or.cond = or i1 %cmp, %cmp1, !dbg !229
  %cmp3 = icmp eq i32** %prowind, null, !dbg !229
  %or.cond38 = or i1 %or.cond, %cmp3, !dbg !229
  br i1 %or.cond38, label %if.then, label %if.end, !dbg !229

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !230, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32* %pnrow, i32** %prowind) #5, !dbg !230
  tail call void @exit(i32 -1) #6, !dbg !232
  unreachable, !dbg !232

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !233
  %1 = load i32* %symflag, align 4, !dbg !233, !tbaa !201
  switch i32 %1, label %if.else14 [
    i32 2, label %if.then5
    i32 0, label %if.then11
    i32 1, label %if.then11
  ], !dbg !233

if.then5:                                         ; preds = %if.end
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !234
  %2 = load i32* %nD, align 4, !dbg !234, !tbaa !201
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !234
  %3 = load i32* %nL, align 4, !dbg !234, !tbaa !201
  %add = add nsw i32 %3, %2, !dbg !234
  store i32 %add, i32* %pnrow, align 4, !dbg !234, !tbaa !201
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !236
  br label %if.end18, !dbg !237

if.then11:                                        ; preds = %if.end, %if.end
  %nD12 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !238
  %4 = load i32* %nD12, align 4, !dbg !238, !tbaa !201
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !238
  %5 = load i32* %nU, align 4, !dbg !238, !tbaa !201
  %add13 = add nsw i32 %5, %4, !dbg !238
  store i32 %add13, i32* %pnrow, align 4, !dbg !238, !tbaa !201
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !240
  br label %if.end18

if.else14:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !241, !tbaa !196
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32* %pnrow, i32** %prowind, i32 %1) #5, !dbg !241
  tail call void @exit(i32 -1) #6, !dbg !243
  unreachable, !dbg !243

if.end18:                                         ; preds = %if.then11, %if.then5
  %storemerge.in = phi i32** [ %colind, %if.then11 ], [ %rowind, %if.then5 ]
  %storemerge = load i32** %storemerge.in, align 8, !dbg !240
  store i32* %storemerge, i32** %prowind, align 8, !dbg !236, !tbaa !196
  ret void, !dbg !244
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_columnIndices(%struct._Chv* %chv, i32* %pncol, i32** %pcolind) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !64), !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32* %pncol}, i64 0, metadata !65), !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32** %pcolind}, i64 0, metadata !66), !dbg !247
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !248
  %cmp1 = icmp eq i32* %pncol, null, !dbg !248
  %or.cond = or i1 %cmp, %cmp1, !dbg !248
  %cmp3 = icmp eq i32** %pcolind, null, !dbg !248
  %or.cond12 = or i1 %or.cond, %cmp3, !dbg !248
  br i1 %or.cond12, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !249, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32* %pncol, i32** %pcolind) #5, !dbg !249
  tail call void @exit(i32 -1) #6, !dbg !251
  unreachable, !dbg !251

if.end:                                           ; preds = %entry
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !252
  %1 = load i32* %nD, align 4, !dbg !252, !tbaa !201
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !252
  %2 = load i32* %nU, align 4, !dbg !252, !tbaa !201
  %add = add nsw i32 %2, %1, !dbg !252
  store i32 %add, i32* %pncol, align 4, !dbg !252, !tbaa !201
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !253
  %3 = load i32** %colind, align 8, !dbg !253, !tbaa !196
  store i32* %3, i32** %pcolind, align 8, !dbg !253, !tbaa !196
  ret void, !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nent(%struct._Chv* %chv) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !69), !dbg !255
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !70), !dbg !256
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !72), !dbg !256
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !73), !dbg !256
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !257

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !258, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), %struct._Chv* null) #5, !dbg !258
  call void @exit(i32 -1) #6, !dbg !260
  unreachable, !dbg !260

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !261
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !262
  %1 = load i32* %symflag, align 4, !dbg !262, !tbaa !201
  switch i32 %1, label %if.else13 [
    i32 0, label %if.then4
    i32 1, label %if.then4
    i32 2, label %if.then9
  ], !dbg !262

if.then4:                                         ; preds = %if.end, %if.end
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !70), !dbg !263
  %2 = load i32* %nD, align 4, !dbg !263, !tbaa !201
  %add = add nsw i32 %2, 1, !dbg !263
  %mul = mul nsw i32 %add, %2, !dbg !263
  %div = sdiv i32 %mul, 2, !dbg !263
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !73), !dbg !263
  %3 = load i32* %nU, align 4, !dbg !263, !tbaa !201
  %mul5 = mul nsw i32 %3, %2, !dbg !263
  %add6 = add nsw i32 %mul5, %div, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %add6}, i64 0, metadata !71), !dbg !263
  br label %if.end17, !dbg !265

if.then9:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !70), !dbg !266
  %4 = load i32* %nD, align 4, !dbg !266, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !72), !dbg !266
  %5 = load i32* %nL, align 4, !dbg !266, !tbaa !201
  %add10 = add nsw i32 %5, %4, !dbg !266
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !73), !dbg !266
  %6 = load i32* %nU, align 4, !dbg !266, !tbaa !201
  %add11 = add nsw i32 %add10, %6, !dbg !266
  %mul12 = mul nsw i32 %add11, %4, !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %mul12}, i64 0, metadata !71), !dbg !266
  br label %if.end17

if.else13:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !268, !tbaa !196
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #5, !dbg !268
  call void @exit(i32 -1) #6, !dbg !270
  unreachable, !dbg !270

if.end17:                                         ; preds = %if.then9, %if.then4
  %nent.0 = phi i32 [ %add6, %if.then4 ], [ %mul12, %if.then9 ]
  ret i32 %nent.0, !dbg !271
}

; Function Attrs: nounwind optsize uwtable
define double* @Chv_entries(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !78), !dbg !272
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !273
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0), %struct._Chv* null) #5, !dbg !274
  tail call void @exit(i32 -1) #6, !dbg !276
  unreachable, !dbg !276

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !277
  %1 = load double** %entries, align 8, !dbg !277, !tbaa !196
  ret double* %1, !dbg !277
}

; Function Attrs: nounwind optsize uwtable
define double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !83), !dbg !278
  tail call void @llvm.dbg.value(metadata !{i32 %ichv}, i64 0, metadata !84), !dbg !279
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !280

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !281, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0), %struct._Chv* null) #5, !dbg !281
  tail call void @exit(i32 -1) #6, !dbg !283
  unreachable, !dbg !283

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %ichv, 0, !dbg !284
  %nD4.phi.trans.insert = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %.pre = load i32* %nD4.phi.trans.insert, align 4, !dbg !285, !tbaa !201
  %cmp2 = icmp slt i32 %.pre, %ichv, !dbg !284
  %or.cond = or i1 %cmp1, %cmp2, !dbg !284
  br i1 %or.cond, label %if.then3, label %if.end6, !dbg !284

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !285, !tbaa !196
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %.pre) #5, !dbg !285
  tail call void @exit(i32 -1) #6, !dbg !287
  unreachable, !dbg !287

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !288
  %2 = load double** %entries, align 8, !dbg !288, !tbaa !196
  %cmp7 = icmp eq double* %2, null, !dbg !288
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !288

if.then8:                                         ; preds = %if.end6
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !289, !tbaa !196
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv) #5, !dbg !289
  tail call void @exit(i32 -1) #6, !dbg !291
  unreachable, !dbg !291

if.end10:                                         ; preds = %if.end6
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !292
  %4 = load i32* %type, align 4, !dbg !292, !tbaa !201
  switch i32 %4, label %if.else101 [
    i32 1, label %if.then12
    i32 2, label %if.then54
  ], !dbg !292

if.then12:                                        ; preds = %if.end10
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !293
  %5 = load i32* %symflag, align 4, !dbg !293, !tbaa !201
  switch i32 %5, label %if.else46 [
    i32 0, label %if.then14
    i32 2, label %if.then22
  ], !dbg !293

if.then14:                                        ; preds = %if.then12
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !295
  %6 = load i32* %nU, align 4, !dbg !295, !tbaa !201
  %add = add nsw i32 %6, %.pre, !dbg !295
  %mul = mul nsw i32 %add, %ichv, !dbg !295
  %idx.ext = sext i32 %mul to i64, !dbg !295
  %sub = add nsw i32 %ichv, -1, !dbg !295
  %mul17 = mul nsw i32 %sub, %ichv, !dbg !295
  %div = sdiv i32 %mul17, 2, !dbg !295
  %idx.ext18 = sext i32 %div to i64, !dbg !295
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext18, !dbg !295
  %add.ptr19 = getelementptr inbounds double* %2, i64 %add.ptr.sum, !dbg !295
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr19}, i64 0, metadata !85), !dbg !295
  br label %if.end105, !dbg !297

if.then22:                                        ; preds = %if.then12
  %mul24 = shl nsw i32 %ichv, 1, !dbg !298
  %add25158 = or i32 %mul24, 1, !dbg !298
  %mul27 = mul nsw i32 %.pre, %add25158, !dbg !298
  %idx.ext28 = sext i32 %mul27 to i64, !dbg !298
  %add30 = add nsw i32 %ichv, 1, !dbg !298
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !298
  %7 = load i32* %nL, align 4, !dbg !298, !tbaa !201
  %mul31 = mul nsw i32 %7, %add30, !dbg !298
  %idx.ext32 = sext i32 %mul31 to i64, !dbg !298
  %nU34 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !298
  %8 = load i32* %nU34, align 4, !dbg !298, !tbaa !201
  %mul35 = mul nsw i32 %8, %ichv, !dbg !298
  %idx.ext36 = sext i32 %mul35 to i64, !dbg !298
  %mul38 = mul nsw i32 %ichv, %ichv, !dbg !298
  %idx.ext39159 = zext i32 %mul38 to i64, !dbg !298
  %idx.ext42 = sext i32 %ichv to i64, !dbg !298
  %add.ptr29.sum = xor i64 %idx.ext42, -1, !dbg !298
  %add.ptr33.sum = sub i64 %add.ptr29.sum, %idx.ext39159, !dbg !298
  %add.ptr37.sum = add i64 %add.ptr33.sum, %idx.ext28, !dbg !298
  %add.ptr41.sum = add i64 %add.ptr37.sum, %idx.ext32, !dbg !298
  %add.ptr44.sum = add i64 %add.ptr41.sum, %idx.ext36, !dbg !298
  %add.ptr45 = getelementptr inbounds double* %2, i64 %add.ptr44.sum, !dbg !298
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr45}, i64 0, metadata !85), !dbg !298
  br label %if.end105

if.else46:                                        ; preds = %if.then12
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !196
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([122 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, i32 %5) #5, !dbg !300
  tail call void @exit(i32 -1) #6, !dbg !302
  unreachable, !dbg !302

if.then54:                                        ; preds = %if.end10
  %symflag55 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !303
  %10 = load i32* %symflag55, align 4, !dbg !303, !tbaa !201
  switch i32 %10, label %if.else96 [
    i32 0, label %if.then60
    i32 1, label %if.then60
    i32 2, label %if.then76
  ], !dbg !303

if.then60:                                        ; preds = %if.then54, %if.then54
  %nU63 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !305
  %11 = load i32* %nU63, align 4, !dbg !305, !tbaa !201
  %add64 = add nsw i32 %11, %.pre, !dbg !305
  %mul65 = mul nsw i32 %add64, %ichv, !dbg !305
  %sub66 = add nsw i32 %ichv, -1, !dbg !305
  %mul67 = mul nsw i32 %sub66, %ichv, !dbg !305
  %div68 = sdiv i32 %mul67, 2, !dbg !305
  %sub69 = sub nsw i32 %mul65, %div68, !dbg !305
  %mul70 = shl nsw i32 %sub69, 1, !dbg !305
  %idx.ext71 = sext i32 %mul70 to i64, !dbg !305
  %add.ptr72 = getelementptr inbounds double* %2, i64 %idx.ext71, !dbg !305
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr72}, i64 0, metadata !85), !dbg !305
  br label %if.end105, !dbg !307

if.then76:                                        ; preds = %if.then54
  %mul78 = shl nsw i32 %ichv, 1, !dbg !308
  %add79157 = or i32 %mul78, 1, !dbg !308
  %mul81 = mul nsw i32 %.pre, %add79157, !dbg !308
  %add82 = add nsw i32 %ichv, 1, !dbg !308
  %nL83 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !308
  %12 = load i32* %nL83, align 4, !dbg !308, !tbaa !201
  %mul84 = mul nsw i32 %12, %add82, !dbg !308
  %nU86 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !308
  %13 = load i32* %nU86, align 4, !dbg !308, !tbaa !201
  %mul87 = mul nsw i32 %13, %ichv, !dbg !308
  %mul89 = mul nsw i32 %ichv, %ichv, !dbg !308
  %sum = add i32 %mul89, %ichv, !dbg !308
  %add88 = sub i32 %mul81, %sum, !dbg !308
  %sub90 = add i32 %add88, %mul84, !dbg !308
  %sub91 = add i32 %sub90, %mul87, !dbg !308
  %sub92 = shl i32 %sub91, 1, !dbg !308
  %mul93 = add i32 %sub92, -2, !dbg !308
  %idx.ext94 = sext i32 %mul93 to i64, !dbg !308
  %add.ptr95 = getelementptr inbounds double* %2, i64 %idx.ext94, !dbg !308
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr95}, i64 0, metadata !85), !dbg !308
  br label %if.end105

if.else96:                                        ; preds = %if.then54
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !310, !tbaa !196
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([154 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32 %10) #5, !dbg !310
  tail call void @exit(i32 -1) #6, !dbg !312
  unreachable, !dbg !312

if.else101:                                       ; preds = %if.end10
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !313, !tbaa !196
  %symflag102 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !313
  %16 = load i32* %symflag102, align 4, !dbg !313, !tbaa !201
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([91 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i32 %16) #5, !dbg !313
  tail call void @exit(i32 -1) #6, !dbg !315
  unreachable, !dbg !315

if.end105:                                        ; preds = %if.then76, %if.then60, %if.then14, %if.then22
  %diag.0 = phi double* [ %add.ptr19, %if.then14 ], [ %add.ptr45, %if.then22 ], [ %add.ptr72, %if.then60 ], [ %add.ptr95, %if.then76 ]
  ret double* %diag.0, !dbg !316
}

; Function Attrs: nounwind optsize uwtable
define i8* @Chv_workspace(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !91), !dbg !317
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !318
  br i1 %cmp, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !319, !tbaa !196
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), %struct._Chv* null) #5, !dbg !319
  tail call void @exit(i32 -1) #6, !dbg !321
  unreachable, !dbg !321

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !322
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !322
  %1 = bitcast double* %call1 to i8*, !dbg !322
  ret i8* %1, !dbg !322
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !96), !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !97), !dbg !324
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !98), !dbg !325
  call void @llvm.dbg.value(metadata !{double* %pValue}, i64 0, metadata !99), !dbg !326
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !102), !dbg !327
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !103), !dbg !327
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !105), !dbg !327
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !328
  %cmp1 = icmp slt i32 %irow, 0, !dbg !328
  %or.cond = or i1 %cmp, %cmp1, !dbg !328
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !328
  %or.cond88 = or i1 %or.cond, %cmp3, !dbg !328
  %cmp5 = icmp eq double* %pValue, null, !dbg !328
  %or.cond89 = or i1 %or.cond88, %cmp5, !dbg !328
  br i1 %or.cond89, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !329, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue) #5, !dbg !329
  call void @exit(i32 -1) #6, !dbg !331
  unreachable, !dbg !331

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !332
  %1 = load i32* %type, align 4, !dbg !332, !tbaa !201
  %cmp6 = icmp eq i32 %1, 1, !dbg !332
  br i1 %cmp6, label %if.end10, label %if.then7, !dbg !332

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !333, !tbaa !196
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([76 x i8]* @.str18, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %1) #5, !dbg !333
  call void @exit(i32 -1) #6, !dbg !335
  unreachable, !dbg !335

if.end10:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !336
  %3 = load i32* %symflag, align 4, !dbg !336, !tbaa !201
  switch i32 %3, label %if.then15 [
    i32 0, label %if.end18
    i32 2, label %if.end18
  ], !dbg !336

if.then15:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !337, !tbaa !196
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([112 x i8]* @.str19, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %3) #5, !dbg !337
  call void @exit(i32 -1) #6, !dbg !339
  unreachable, !dbg !339

if.end18:                                         ; preds = %if.end10, %if.end10
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !340
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !102), !dbg !341
  %5 = load i32* %nD, align 4, !dbg !341, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !105), !dbg !341
  %6 = load i32* %nU, align 4, !dbg !341, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !101), !dbg !341
  %7 = load i32* %symflag, align 4, !dbg !342, !tbaa !201
  %cmp20 = icmp eq i32 %7, 0, !dbg !342
  br i1 %cmp20, label %if.end23, label %if.else, !dbg !342

if.else:                                          ; preds = %if.end18
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !103), !dbg !343
  %8 = load i32* %nL, align 4, !dbg !343, !tbaa !201
  %add22 = add nsw i32 %8, %5, !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !104), !dbg !343
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.else
  %nrow.0 = phi i32 [ %add22, %if.else ], [ %add, %if.end18 ]
  %cmp24 = icmp sgt i32 %nrow.0, %irow, !dbg !345
  %cmp26 = icmp sgt i32 %add, %jcol, !dbg !345
  %or.cond90 = and i1 %cmp24, %cmp26, !dbg !345
  br i1 %or.cond90, label %if.end29, label %if.then27, !dbg !345

if.then27:                                        ; preds = %if.end23
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !346, !tbaa !196
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([89 x i8]* @.str20, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !346
  call void @exit(i32 -1) #6, !dbg !348
  unreachable, !dbg !348

if.end29:                                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !102), !dbg !349
  %cmp30 = icmp sgt i32 %5, %irow, !dbg !349
  %cmp31 = icmp sgt i32 %5, %jcol, !dbg !349
  %or.cond91 = or i1 %cmp30, %cmp31, !dbg !349
  br i1 %or.cond91, label %if.else33, label %if.end43, !dbg !349

if.else33:                                        ; preds = %if.end29
  %cmp34 = icmp sle i32 %irow, %jcol, !dbg !350
  %cond = select i1 %cmp34, i32 %irow, i32 %jcol, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !100), !dbg !350
  %sub = sub nsw i32 %jcol, %irow, !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !106), !dbg !352
  %cmp38 = icmp slt i32 %sub, 0, !dbg !353
  %or.cond92 = and i1 %cmp20, %cmp38, !dbg !353
  %sub40 = sub nsw i32 0, %sub, !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %sub40}, i64 0, metadata !106), !dbg !354
  %off.0 = select i1 %or.cond92, i32 %sub40, i32 %sub, !dbg !353
  %call42 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !356
  call void @llvm.dbg.value(metadata !{double* %call42}, i64 0, metadata !107), !dbg !356
  %idxprom = sext i32 %off.0 to i64, !dbg !357
  %arrayidx = getelementptr inbounds double* %call42, i64 %idxprom, !dbg !357
  %10 = load double* %arrayidx, align 8, !dbg !357, !tbaa !358
  br label %if.end43

if.end43:                                         ; preds = %if.end29, %if.else33
  %storemerge = phi double [ %10, %if.else33 ], [ 0.000000e+00, %if.end29 ]
  store double %storemerge, double* %pValue, align 8, !dbg !359, !tbaa !358
  ret void, !dbg !361
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !112), !dbg !362
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !113), !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !114), !dbg !364
  call void @llvm.dbg.value(metadata !{double* %pReal}, i64 0, metadata !115), !dbg !365
  call void @llvm.dbg.value(metadata !{double* %pImag}, i64 0, metadata !116), !dbg !366
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !119), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !120), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !122), !dbg !367
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !368
  %cmp1 = icmp slt i32 %irow, 0, !dbg !368
  %or.cond = or i1 %cmp, %cmp1, !dbg !368
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !368
  %or.cond134 = or i1 %or.cond, %cmp3, !dbg !368
  %cmp5 = icmp eq double* %pReal, null, !dbg !368
  %or.cond135 = or i1 %or.cond134, %cmp5, !dbg !368
  %cmp7 = icmp eq double* %pImag, null, !dbg !368
  %or.cond136 = or i1 %or.cond135, %cmp7, !dbg !368
  br i1 %or.cond136, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #5, !dbg !369
  call void @exit(i32 -1) #6, !dbg !371
  unreachable, !dbg !371

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !372
  %1 = load i32* %type, align 4, !dbg !372, !tbaa !201
  %cmp8 = icmp eq i32 %1, 2, !dbg !372
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !372

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !373, !tbaa !196
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str22, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %1) #5, !dbg !373
  call void @exit(i32 -1) #6, !dbg !375
  unreachable, !dbg !375

if.end12:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !376
  %3 = load i32* %symflag, align 4, !dbg !376, !tbaa !201
  %switch = icmp ult i32 %3, 3, !dbg !376
  br i1 %switch, label %if.end23, label %if.then20, !dbg !376

if.then20:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !196
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str23, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %3) #5, !dbg !377
  call void @exit(i32 -1) #6, !dbg !379
  unreachable, !dbg !379

if.end23:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !119), !dbg !381
  %5 = load i32* %nD, align 4, !dbg !381, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !122), !dbg !381
  %6 = load i32* %nU, align 4, !dbg !381, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !381
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !118), !dbg !381
  %7 = load i32* %symflag, align 4, !dbg !382, !tbaa !201
  %switch139 = icmp ult i32 %7, 2, !dbg !382
  br i1 %switch139, label %if.end31, label %if.else, !dbg !382

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !120), !dbg !383
  %8 = load i32* %nL, align 4, !dbg !383, !tbaa !201
  %add30 = add nsw i32 %8, %5, !dbg !383
  call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !121), !dbg !383
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.else
  %nrow.0 = phi i32 [ %add30, %if.else ], [ %add, %if.end23 ]
  %cmp32 = icmp sgt i32 %nrow.0, %irow, !dbg !385
  %cmp34 = icmp sgt i32 %add, %jcol, !dbg !385
  %or.cond137 = and i1 %cmp32, %cmp34, !dbg !385
  br i1 %or.cond137, label %if.end37, label %if.then35, !dbg !385

if.then35:                                        ; preds = %if.end31
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !386, !tbaa !196
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([95 x i8]* @.str24, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !386
  call void @exit(i32 -1) #6, !dbg !388
  unreachable, !dbg !388

if.end37:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !119), !dbg !389
  %cmp38 = icmp sgt i32 %5, %irow, !dbg !389
  %cmp39 = icmp sgt i32 %5, %jcol, !dbg !389
  %or.cond138 = or i1 %cmp38, %cmp39, !dbg !389
  br i1 %or.cond138, label %if.else41, label %if.then40, !dbg !389

if.then40:                                        ; preds = %if.end37
  store double 0.000000e+00, double* %pImag, align 8, !dbg !390, !tbaa !358
  store double 0.000000e+00, double* %pReal, align 8, !dbg !390, !tbaa !358
  br label %if.end70, !dbg !392

if.else41:                                        ; preds = %if.end37
  %cmp42 = icmp sle i32 %irow, %jcol, !dbg !393
  %cond = select i1 %cmp42, i32 %irow, i32 %jcol, !dbg !393
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !117), !dbg !393
  %sub = sub nsw i32 %jcol, %irow, !dbg !395
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !123), !dbg !395
  %cmp43 = icmp slt i32 %sub, 0, !dbg !396
  br i1 %cmp43, label %land.lhs.true44, label %if.end52, !dbg !396

land.lhs.true44:                                  ; preds = %if.else41
  %sub51 = sub nsw i32 0, %sub, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %sub51}, i64 0, metadata !123), !dbg !397
  %sub51.sub = select i1 %switch139, i32 %sub51, i32 %sub, !dbg !396
  br label %if.end52, !dbg !396

if.end52:                                         ; preds = %land.lhs.true44, %if.else41
  %off.0 = phi i32 [ %sub, %if.else41 ], [ %sub51.sub, %land.lhs.true44 ]
  %call53 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !399
  call void @llvm.dbg.value(metadata !{double* %call53}, i64 0, metadata !124), !dbg !399
  %mul = shl nsw i32 %off.0, 1, !dbg !400
  %idxprom = sext i32 %mul to i64, !dbg !400
  %arrayidx = getelementptr inbounds double* %call53, i64 %idxprom, !dbg !400
  %10 = load double* %arrayidx, align 8, !dbg !400, !tbaa !358
  store double %10, double* %pReal, align 8, !dbg !400, !tbaa !358
  %cmp54 = icmp sgt i32 %irow, %jcol, !dbg !401
  br i1 %cmp54, label %land.lhs.true55, label %if.else64, !dbg !401

land.lhs.true55:                                  ; preds = %if.end52
  %11 = load i32* %symflag, align 4, !dbg !401, !tbaa !201
  %cmp57 = icmp eq i32 %11, 1, !dbg !401
  br i1 %cmp57, label %if.then58, label %if.else64, !dbg !401

if.then58:                                        ; preds = %land.lhs.true55
  %add60133 = or i32 %mul, 1, !dbg !402
  %idxprom61 = sext i32 %add60133 to i64, !dbg !402
  %arrayidx62 = getelementptr inbounds double* %call53, i64 %idxprom61, !dbg !402
  %12 = load double* %arrayidx62, align 8, !dbg !402, !tbaa !358
  %sub63 = fsub double -0.000000e+00, %12, !dbg !402
  store double %sub63, double* %pImag, align 8, !dbg !402, !tbaa !358
  br label %if.end70, !dbg !404

if.else64:                                        ; preds = %land.lhs.true55, %if.end52
  %add66132 = or i32 %mul, 1, !dbg !405
  %idxprom67 = sext i32 %add66132 to i64, !dbg !405
  %arrayidx68 = getelementptr inbounds double* %call53, i64 %idxprom67, !dbg !405
  %13 = load double* %arrayidx68, align 8, !dbg !405, !tbaa !358
  store double %13, double* %pImag, align 8, !dbg !405, !tbaa !358
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.else64, %if.then40
  ret void, !dbg !407
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_locationOfRealEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !130), !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !131), !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !132), !dbg !410
  call void @llvm.dbg.value(metadata !{double** %ppValue}, i64 0, metadata !133), !dbg !411
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !136), !dbg !412
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !137), !dbg !412
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !139), !dbg !412
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !413
  %cmp1 = icmp slt i32 %irow, 0, !dbg !413
  %or.cond = or i1 %cmp, %cmp1, !dbg !413
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !413
  %or.cond88 = or i1 %or.cond, %cmp3, !dbg !413
  %cmp5 = icmp eq double** %ppValue, null, !dbg !413
  %or.cond89 = or i1 %or.cond88, %cmp5, !dbg !413
  br i1 %or.cond89, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !414, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str25, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue) #5, !dbg !414
  call void @exit(i32 -1) #6, !dbg !416
  unreachable, !dbg !416

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !417
  %1 = load i32* %type, align 4, !dbg !417, !tbaa !201
  %cmp6 = icmp eq i32 %1, 1, !dbg !417
  br i1 %cmp6, label %if.end10, label %if.then7, !dbg !417

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !418, !tbaa !196
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str26, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %1) #5, !dbg !418
  call void @exit(i32 -1) #6, !dbg !420
  unreachable, !dbg !420

if.end10:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !421
  %3 = load i32* %symflag, align 4, !dbg !421, !tbaa !201
  switch i32 %3, label %if.then15 [
    i32 0, label %if.end18
    i32 2, label %if.end18
  ], !dbg !421

if.then15:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !422, !tbaa !196
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([118 x i8]* @.str27, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %3) #5, !dbg !422
  call void @exit(i32 -1) #6, !dbg !424
  unreachable, !dbg !424

if.end18:                                         ; preds = %if.end10, %if.end10
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !425
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !136), !dbg !426
  %5 = load i32* %nD, align 4, !dbg !426, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !139), !dbg !426
  %6 = load i32* %nU, align 4, !dbg !426, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !135), !dbg !426
  %7 = load i32* %symflag, align 4, !dbg !427, !tbaa !201
  %cmp20 = icmp eq i32 %7, 0, !dbg !427
  br i1 %cmp20, label %if.end23, label %if.else, !dbg !427

if.else:                                          ; preds = %if.end18
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !137), !dbg !428
  %8 = load i32* %nL, align 4, !dbg !428, !tbaa !201
  %add22 = add nsw i32 %8, %5, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %add22}, i64 0, metadata !138), !dbg !428
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.else
  %nrow.0 = phi i32 [ %add22, %if.else ], [ %add, %if.end18 ]
  %cmp24 = icmp sgt i32 %nrow.0, %irow, !dbg !430
  %cmp26 = icmp sgt i32 %add, %jcol, !dbg !430
  %or.cond90 = and i1 %cmp24, %cmp26, !dbg !430
  br i1 %or.cond90, label %if.end29, label %if.then27, !dbg !430

if.then27:                                        ; preds = %if.end23
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !431, !tbaa !196
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([99 x i8]* @.str28, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !431
  call void @exit(i32 -1) #6, !dbg !433
  unreachable, !dbg !433

if.end29:                                         ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !136), !dbg !434
  %cmp30 = icmp sgt i32 %5, %irow, !dbg !434
  %cmp31 = icmp sgt i32 %5, %jcol, !dbg !434
  %or.cond91 = or i1 %cmp30, %cmp31, !dbg !434
  br i1 %or.cond91, label %if.else33, label %if.end43, !dbg !434

if.else33:                                        ; preds = %if.end29
  %cmp34 = icmp sle i32 %irow, %jcol, !dbg !435
  %cond = select i1 %cmp34, i32 %irow, i32 %jcol, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !134), !dbg !435
  %sub = sub nsw i32 %jcol, %irow, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !140), !dbg !437
  %cmp38 = icmp slt i32 %sub, 0, !dbg !438
  %or.cond92 = and i1 %cmp20, %cmp38, !dbg !438
  %sub40 = sub nsw i32 0, %sub, !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %sub40}, i64 0, metadata !140), !dbg !439
  %off.0 = select i1 %or.cond92, i32 %sub40, i32 %sub, !dbg !438
  %call42 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !441
  call void @llvm.dbg.value(metadata !{double* %call42}, i64 0, metadata !141), !dbg !441
  %idx.ext = sext i32 %off.0 to i64, !dbg !442
  %add.ptr = getelementptr inbounds double* %call42, i64 %idx.ext, !dbg !442
  br label %if.end43

if.end43:                                         ; preds = %if.end29, %if.else33
  %storemerge = phi double* [ %add.ptr, %if.else33 ], [ null, %if.end29 ]
  store double* %storemerge, double** %ppValue, align 8, !dbg !443, !tbaa !196
  ret void, !dbg !445
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_locationOfComplexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !146), !dbg !446
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !147), !dbg !447
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !148), !dbg !448
  call void @llvm.dbg.value(metadata !{double** %ppReal}, i64 0, metadata !149), !dbg !449
  call void @llvm.dbg.value(metadata !{double** %ppImag}, i64 0, metadata !150), !dbg !450
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !153), !dbg !451
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !154), !dbg !451
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !156), !dbg !451
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !452
  %cmp1 = icmp slt i32 %irow, 0, !dbg !452
  %or.cond = or i1 %cmp, %cmp1, !dbg !452
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !452
  %or.cond115 = or i1 %or.cond, %cmp3, !dbg !452
  %cmp5 = icmp eq double** %ppReal, null, !dbg !452
  %or.cond116 = or i1 %or.cond115, %cmp5, !dbg !452
  %cmp7 = icmp eq double** %ppImag, null, !dbg !452
  %or.cond117 = or i1 %or.cond116, %cmp7, !dbg !452
  br i1 %or.cond117, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !453, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str29, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #5, !dbg !453
  call void @exit(i32 -1) #6, !dbg !455
  unreachable, !dbg !455

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !456
  %1 = load i32* %type, align 4, !dbg !456, !tbaa !201
  %cmp8 = icmp eq i32 %1, 2, !dbg !456
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !456

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !457, !tbaa !196
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str30, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %1) #5, !dbg !457
  call void @exit(i32 -1) #6, !dbg !459
  unreachable, !dbg !459

if.end12:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !460
  %3 = load i32* %symflag, align 4, !dbg !460, !tbaa !201
  %switch = icmp ult i32 %3, 3, !dbg !460
  br i1 %switch, label %if.end23, label %if.then20, !dbg !460

if.then20:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !196
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([145 x i8]* @.str31, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %3) #5, !dbg !461
  call void @exit(i32 -1) #6, !dbg !463
  unreachable, !dbg !463

if.end23:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !464
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !153), !dbg !465
  %5 = load i32* %nD, align 4, !dbg !465, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !156), !dbg !465
  %6 = load i32* %nU, align 4, !dbg !465, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !465
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !152), !dbg !465
  %7 = load i32* %symflag, align 4, !dbg !466, !tbaa !201
  %switch120 = icmp ult i32 %7, 2, !dbg !466
  br i1 %switch120, label %if.end31, label %if.else, !dbg !466

if.else:                                          ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !154), !dbg !467
  %8 = load i32* %nL, align 4, !dbg !467, !tbaa !201
  %add30 = add nsw i32 %8, %5, !dbg !467
  call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !155), !dbg !467
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.else
  %nrow.0 = phi i32 [ %add30, %if.else ], [ %add, %if.end23 ]
  %cmp32 = icmp sgt i32 %nrow.0, %irow, !dbg !469
  %cmp34 = icmp sgt i32 %add, %jcol, !dbg !469
  %or.cond118 = and i1 %cmp32, %cmp34, !dbg !469
  br i1 %or.cond118, label %if.end37, label %if.then35, !dbg !469

if.then35:                                        ; preds = %if.end31
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !470, !tbaa !196
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([105 x i8]* @.str32, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !470
  call void @exit(i32 -1) #6, !dbg !472
  unreachable, !dbg !472

if.end37:                                         ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !153), !dbg !473
  %cmp38 = icmp sgt i32 %5, %irow, !dbg !473
  %cmp39 = icmp sgt i32 %5, %jcol, !dbg !473
  %or.cond119 = or i1 %cmp38, %cmp39, !dbg !473
  br i1 %or.cond119, label %if.else41, label %if.then40, !dbg !473

if.then40:                                        ; preds = %if.end37
  store double* null, double** %ppImag, align 8, !dbg !474, !tbaa !196
  store double* null, double** %ppReal, align 8, !dbg !474, !tbaa !196
  br label %if.end58, !dbg !476

if.else41:                                        ; preds = %if.end37
  %cmp42 = icmp sle i32 %irow, %jcol, !dbg !477
  %cond = select i1 %cmp42, i32 %irow, i32 %jcol, !dbg !477
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !151), !dbg !477
  %sub = sub nsw i32 %jcol, %irow, !dbg !479
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !157), !dbg !479
  %cmp43 = icmp slt i32 %sub, 0, !dbg !480
  br i1 %cmp43, label %land.lhs.true44, label %if.end52, !dbg !480

land.lhs.true44:                                  ; preds = %if.else41
  %sub51 = sub nsw i32 0, %sub, !dbg !481
  call void @llvm.dbg.value(metadata !{i32 %sub51}, i64 0, metadata !157), !dbg !481
  %sub51.sub = select i1 %switch120, i32 %sub51, i32 %sub, !dbg !480
  br label %if.end52, !dbg !480

if.end52:                                         ; preds = %land.lhs.true44, %if.else41
  %off.0 = phi i32 [ %sub, %if.else41 ], [ %sub51.sub, %land.lhs.true44 ]
  %call53 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !483
  call void @llvm.dbg.value(metadata !{double* %call53}, i64 0, metadata !158), !dbg !483
  %mul = shl nsw i32 %off.0, 1, !dbg !484
  %idx.ext = sext i32 %mul to i64, !dbg !484
  %add.ptr = getelementptr inbounds double* %call53, i64 %idx.ext, !dbg !484
  store double* %add.ptr, double** %ppReal, align 8, !dbg !484, !tbaa !196
  %add.ptr.sum114 = or i64 %idx.ext, 1, !dbg !485
  %add.ptr57 = getelementptr inbounds double* %call53, i64 %add.ptr.sum114, !dbg !485
  store double* %add.ptr57, double** %ppImag, align 8, !dbg !485, !tbaa !196
  br label %if.end58

if.end58:                                         ; preds = %if.end52, %if.then40
  ret void, !dbg !486
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_setRealEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !163), !dbg !487
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !164), !dbg !488
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !165), !dbg !489
  call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !166), !dbg !490
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !169), !dbg !491
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !170), !dbg !491
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !172), !dbg !491
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !492
  %cmp1 = icmp slt i32 %irow, 0, !dbg !492
  %or.cond = or i1 %cmp, %cmp1, !dbg !492
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !492
  %or.cond83 = or i1 %or.cond, %cmp3, !dbg !492
  br i1 %or.cond83, label %if.then, label %if.end, !dbg !492

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !493, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str33, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value) #5, !dbg !493
  call void @exit(i32 -1) #6, !dbg !495
  unreachable, !dbg !495

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !496
  %1 = load i32* %type, align 4, !dbg !496, !tbaa !201
  %cmp4 = icmp eq i32 %1, 1, !dbg !496
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !496

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !497, !tbaa !196
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str34, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %1) #5, !dbg !497
  call void @exit(i32 -1) #6, !dbg !499
  unreachable, !dbg !499

if.end8:                                          ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !500
  %3 = load i32* %symflag, align 4, !dbg !500, !tbaa !201
  switch i32 %3, label %if.then13 [
    i32 0, label %if.end16
    i32 2, label %if.end16
  ], !dbg !500

if.then13:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !501, !tbaa !196
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([115 x i8]* @.str35, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %3) #5, !dbg !501
  call void @exit(i32 -1) #6, !dbg !503
  unreachable, !dbg !503

if.end16:                                         ; preds = %if.end8, %if.end8
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !504
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !169), !dbg !505
  %5 = load i32* %nD, align 4, !dbg !505, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !172), !dbg !505
  %6 = load i32* %nU, align 4, !dbg !505, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !168), !dbg !505
  %7 = load i32* %symflag, align 4, !dbg !506, !tbaa !201
  %cmp18 = icmp eq i32 %7, 0, !dbg !506
  br i1 %cmp18, label %if.end21, label %if.else, !dbg !506

if.else:                                          ; preds = %if.end16
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !170), !dbg !507
  %8 = load i32* %nL, align 4, !dbg !507, !tbaa !201
  %add20 = add nsw i32 %8, %5, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !171), !dbg !507
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.else
  %nrow.0 = phi i32 [ %add20, %if.else ], [ %add, %if.end16 ]
  %cmp22 = icmp sgt i32 %nrow.0, %irow, !dbg !509
  %cmp24 = icmp sgt i32 %add, %jcol, !dbg !509
  %or.cond84 = and i1 %cmp22, %cmp24, !dbg !509
  br i1 %or.cond84, label %if.end27, label %if.then25, !dbg !509

if.then25:                                        ; preds = %if.end21
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !510, !tbaa !196
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([92 x i8]* @.str36, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !510
  call void @exit(i32 -1) #6, !dbg !512
  unreachable, !dbg !512

if.end27:                                         ; preds = %if.end21
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !169), !dbg !513
  %cmp28 = icmp sgt i32 %5, %irow, !dbg !513
  %cmp30 = icmp sgt i32 %5, %jcol, !dbg !513
  %or.cond85 = or i1 %cmp28, %cmp30, !dbg !513
  br i1 %or.cond85, label %if.then31, label %if.end40, !dbg !513

if.then31:                                        ; preds = %if.end27
  %cmp32 = icmp sle i32 %irow, %jcol, !dbg !514
  %cond = select i1 %cmp32, i32 %irow, i32 %jcol, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !167), !dbg !514
  %sub = sub nsw i32 %jcol, %irow, !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !173), !dbg !516
  %cmp35 = icmp slt i32 %sub, 0, !dbg !517
  %or.cond86 = and i1 %cmp18, %cmp35, !dbg !517
  %sub37 = sub nsw i32 0, %sub, !dbg !518
  call void @llvm.dbg.value(metadata !{i32 %sub37}, i64 0, metadata !173), !dbg !518
  %off.0 = select i1 %or.cond86, i32 %sub37, i32 %sub, !dbg !517
  %call39 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !520
  call void @llvm.dbg.value(metadata !{double* %call39}, i64 0, metadata !174), !dbg !520
  %idxprom = sext i32 %off.0 to i64, !dbg !521
  %arrayidx = getelementptr inbounds double* %call39, i64 %idxprom, !dbg !521
  store double %value, double* %arrayidx, align 8, !dbg !521, !tbaa !358
  br label %if.end40, !dbg !522

if.end40:                                         ; preds = %if.end27, %if.then31
  ret void, !dbg !523
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_setComplexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !179), !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !180), !dbg !525
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !181), !dbg !526
  call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !182), !dbg !527
  call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !183), !dbg !528
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !186), !dbg !529
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !187), !dbg !529
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !189), !dbg !529
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !530
  %cmp1 = icmp slt i32 %irow, 0, !dbg !530
  %or.cond = or i1 %cmp, %cmp1, !dbg !530
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !530
  %or.cond106 = or i1 %or.cond, %cmp3, !dbg !530
  br i1 %or.cond106, label %if.then, label %if.end, !dbg !530

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !531, !tbaa !196
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str37, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag) #5, !dbg !531
  call void @exit(i32 -1) #6, !dbg !533
  unreachable, !dbg !533

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !534
  %1 = load i32* %type, align 4, !dbg !534, !tbaa !201
  %cmp4 = icmp eq i32 %1, 2, !dbg !534
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !534

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !535, !tbaa !196
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str38, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %1) #5, !dbg !535
  call void @exit(i32 -1) #6, !dbg !537
  unreachable, !dbg !537

if.end8:                                          ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !538
  %3 = load i32* %symflag, align 4, !dbg !538, !tbaa !201
  %switch = icmp ult i32 %3, 3, !dbg !538
  br i1 %switch, label %if.end19, label %if.then16, !dbg !538

if.then16:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !539, !tbaa !196
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([138 x i8]* @.str39, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %3) #5, !dbg !539
  call void @exit(i32 -1) #6, !dbg !541
  unreachable, !dbg !541

if.end19:                                         ; preds = %if.end8
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #7, !dbg !542
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !186), !dbg !543
  %5 = load i32* %nD, align 4, !dbg !543, !tbaa !201
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !189), !dbg !543
  %6 = load i32* %nU, align 4, !dbg !543, !tbaa !201
  %add = add nsw i32 %6, %5, !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !185), !dbg !543
  %7 = load i32* %symflag, align 4, !dbg !544, !tbaa !201
  %switch109 = icmp ult i32 %7, 2, !dbg !544
  br i1 %switch109, label %if.end27, label %if.else, !dbg !544

if.else:                                          ; preds = %if.end19
  call void @llvm.dbg.value(metadata !{i32* %nL}, i64 0, metadata !187), !dbg !545
  %8 = load i32* %nL, align 4, !dbg !545, !tbaa !201
  %add26 = add nsw i32 %8, %5, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %add26}, i64 0, metadata !188), !dbg !545
  br label %if.end27

if.end27:                                         ; preds = %if.end19, %if.else
  %nrow.0 = phi i32 [ %add26, %if.else ], [ %add, %if.end19 ]
  %cmp28 = icmp sgt i32 %nrow.0, %irow, !dbg !547
  %cmp30 = icmp sgt i32 %add, %jcol, !dbg !547
  %or.cond107 = and i1 %cmp28, %cmp30, !dbg !547
  br i1 %or.cond107, label %if.end33, label %if.then31, !dbg !547

if.then31:                                        ; preds = %if.end27
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !548, !tbaa !196
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([98 x i8]* @.str40, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #5, !dbg !548
  call void @exit(i32 -1) #6, !dbg !550
  unreachable, !dbg !550

if.end33:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !186), !dbg !551
  %cmp34 = icmp sgt i32 %5, %irow, !dbg !551
  %cmp36 = icmp sgt i32 %5, %jcol, !dbg !551
  %or.cond108 = or i1 %cmp34, %cmp36, !dbg !551
  br i1 %or.cond108, label %if.then37, label %if.end53, !dbg !551

if.then37:                                        ; preds = %if.end33
  %cmp38 = icmp sle i32 %irow, %jcol, !dbg !552
  %cond = select i1 %cmp38, i32 %irow, i32 %jcol, !dbg !552
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !184), !dbg !552
  %sub = sub nsw i32 %jcol, %irow, !dbg !554
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !190), !dbg !554
  %cmp39 = icmp slt i32 %sub, 0, !dbg !555
  br i1 %cmp39, label %land.lhs.true, label %if.end47, !dbg !555

land.lhs.true:                                    ; preds = %if.then37
  %sub46 = sub nsw i32 0, %sub, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %sub46}, i64 0, metadata !190), !dbg !556
  %sub46.sub = select i1 %switch109, i32 %sub46, i32 %sub, !dbg !555
  br label %if.end47, !dbg !555

if.end47:                                         ; preds = %land.lhs.true, %if.then37
  %off.0 = phi i32 [ %sub, %if.then37 ], [ %sub46.sub, %land.lhs.true ]
  %call48 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #7, !dbg !558
  call void @llvm.dbg.value(metadata !{double* %call48}, i64 0, metadata !191), !dbg !558
  %mul = shl nsw i32 %off.0, 1, !dbg !559
  %idxprom = sext i32 %mul to i64, !dbg !559
  %arrayidx = getelementptr inbounds double* %call48, i64 %idxprom, !dbg !559
  store double %real, double* %arrayidx, align 8, !dbg !559, !tbaa !358
  %add50105 = or i32 %mul, 1, !dbg !560
  %idxprom51 = sext i32 %add50105 to i64, !dbg !560
  %arrayidx52 = getelementptr inbounds double* %call48, i64 %idxprom51, !dbg !560
  store double %imag, double* %arrayidx52, align 8, !dbg !560, !tbaa !358
  br label %if.end53, !dbg !561

if.end53:                                         ; preds = %if.end33, %if.end47
  ret void, !dbg !562
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !40, metadata !43, metadata !46, metadata !54, metadata !62, metadata !67, metadata !74, metadata !79, metadata !86, metadata !92, metadata !108, metadata !125, metadata !142, metadata !159, metadata !175}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_id", metadata !"Chv_id", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_id, null, null, metadata !38, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Chv_id]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !12, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 15]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_type", metadata !"Chv_type", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_type, null, null, metadata !41, i32 42} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 42] [Chv_type]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !40, metadata !"chv", metadata !5, i32 16777257, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 41]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_symmetryFlag", metadata !"Chv_symmetryFlag", metadata !"", i32 67, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_symmetryFlag, null, null, metadata !44, i32 69} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 69] [Chv_symmetryFlag]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !43, metadata !"chv", metadata !5, i32 16777284, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 68]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_dimensions", metadata !"Chv_dimensions", metadata !"", i32 91, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32*, i32*, i32*)* @Chv_dimensions, null, null, metadata !49, i32 96} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 96] [Chv_dimensions]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !9, metadata !21, metadata !21, metadata !21}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !46, metadata !"chv", metadata !5, i32 16777308, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 92]
!51 = metadata !{i32 786689, metadata !46, metadata !"pnD", metadata !5, i32 33554525, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnD] [line 93]
!52 = metadata !{i32 786689, metadata !46, metadata !"pnL", metadata !5, i32 50331742, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnL] [line 94]
!53 = metadata !{i32 786689, metadata !46, metadata !"pnU", metadata !5, i32 67108959, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnU] [line 95]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_rowIndices", metadata !"Chv_rowIndices", metadata !"", i32 122, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32*, i32**)* @Chv_rowIndices, null, null, metadata !58, i32 126} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 126] [Chv_rowIndices]
!55 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !9, metadata !21, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !61}
!59 = metadata !{i32 786689, metadata !54, metadata !"chv", metadata !5, i32 16777339, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 123]
!60 = metadata !{i32 786689, metadata !54, metadata !"pnrow", metadata !5, i32 33554556, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnrow] [line 124]
!61 = metadata !{i32 786689, metadata !54, metadata !"prowind", metadata !5, i32 50331773, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prowind] [line 125]
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_columnIndices", metadata !"Chv_columnIndices", metadata !"", i32 159, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32*, i32**)* @Chv_columnIndices, null, null, metadata !63, i32 163} ; [ DW_TAG_subprogram ] [line 159] [def] [scope 163] [Chv_columnIndices]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !62, metadata !"chv", metadata !5, i32 16777376, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 160]
!65 = metadata !{i32 786689, metadata !62, metadata !"pncol", metadata !5, i32 33554593, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pncol] [line 161]
!66 = metadata !{i32 786689, metadata !62, metadata !"pcolind", metadata !5, i32 50331810, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pcolind] [line 162]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_nent", metadata !"Chv_nent", metadata !"", i32 188, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_nent, null, null, metadata !68, i32 190} ; [ DW_TAG_subprogram ] [line 188] [def] [scope 190] [Chv_nent]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!69 = metadata !{i32 786689, metadata !67, metadata !"chv", metadata !5, i32 16777405, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 189]
!70 = metadata !{i32 786688, metadata !67, metadata !"nD", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 191]
!71 = metadata !{i32 786688, metadata !67, metadata !"nent", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 191]
!72 = metadata !{i32 786688, metadata !67, metadata !"nL", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 191]
!73 = metadata !{i32 786688, metadata !67, metadata !"nU", metadata !5, i32 191, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 191]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_entries", metadata !"Chv_entries", metadata !"", i32 223, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._Chv*)* @Chv_entries, null, null, metadata !77, i32 225} ; [ DW_TAG_subprogram ] [line 223] [def] [scope 225] [Chv_entries]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !24, metadata !9}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786689, metadata !74, metadata !"chv", metadata !5, i32 16777440, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 224]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_diagLocation", metadata !"Chv_diagLocation", metadata !"", i32 248, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._Chv*, i32)* @Chv_diagLocation, null, null, metadata !82, i32 251} ; [ DW_TAG_subprogram ] [line 248] [def] [scope 251] [Chv_diagLocation]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !24, metadata !9, metadata !8}
!82 = metadata !{metadata !83, metadata !84, metadata !85}
!83 = metadata !{i32 786689, metadata !79, metadata !"chv", metadata !5, i32 16777465, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 249]
!84 = metadata !{i32 786689, metadata !79, metadata !"ichv", metadata !5, i32 33554682, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ichv] [line 250]
!85 = metadata !{i32 786688, metadata !79, metadata !"diag", metadata !5, i32 252, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diag] [line 252]
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_workspace", metadata !"Chv_workspace", metadata !"", i32 319, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct._Chv*)* @Chv_workspace, null, null, metadata !90, i32 321} ; [ DW_TAG_subprogram ] [line 319] [def] [scope 321] [Chv_workspace]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !89, metadata !9}
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786689, metadata !86, metadata !"chv", metadata !5, i32 16777536, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 320]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_realEntry", metadata !"Chv_realEntry", metadata !"", i32 343, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double*)* @Chv_realEntry, null, null, metadata !95, i32 348} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 348] [Chv_realEntry]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !24}
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!96 = metadata !{i32 786689, metadata !92, metadata !"chv", metadata !5, i32 16777560, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 344]
!97 = metadata !{i32 786689, metadata !92, metadata !"irow", metadata !5, i32 33554777, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 345]
!98 = metadata !{i32 786689, metadata !92, metadata !"jcol", metadata !5, i32 50331994, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 346]
!99 = metadata !{i32 786689, metadata !92, metadata !"pValue", metadata !5, i32 67109211, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pValue] [line 347]
!100 = metadata !{i32 786688, metadata !92, metadata !"ichv", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 349]
!101 = metadata !{i32 786688, metadata !92, metadata !"ncol", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 349]
!102 = metadata !{i32 786688, metadata !92, metadata !"nD", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 349]
!103 = metadata !{i32 786688, metadata !92, metadata !"nL", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 349]
!104 = metadata !{i32 786688, metadata !92, metadata !"nrow", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 349]
!105 = metadata !{i32 786688, metadata !92, metadata !"nU", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 349]
!106 = metadata !{i32 786688, metadata !92, metadata !"off", metadata !5, i32 349, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 349]
!107 = metadata !{i32 786688, metadata !92, metadata !"base", metadata !5, i32 350, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 350]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_complexEntry", metadata !"Chv_complexEntry", metadata !"", i32 410, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double*, double*)* @Chv_complexEntry, null, null, metadata !111, i32 416} ; [ DW_TAG_subprogram ] [line 410] [def] [scope 416] [Chv_complexEntry]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !24, metadata !24}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!112 = metadata !{i32 786689, metadata !108, metadata !"chv", metadata !5, i32 16777627, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 411]
!113 = metadata !{i32 786689, metadata !108, metadata !"irow", metadata !5, i32 33554844, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 412]
!114 = metadata !{i32 786689, metadata !108, metadata !"jcol", metadata !5, i32 50332061, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 413]
!115 = metadata !{i32 786689, metadata !108, metadata !"pReal", metadata !5, i32 67109278, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pReal] [line 414]
!116 = metadata !{i32 786689, metadata !108, metadata !"pImag", metadata !5, i32 83886495, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pImag] [line 415]
!117 = metadata !{i32 786688, metadata !108, metadata !"ichv", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 417]
!118 = metadata !{i32 786688, metadata !108, metadata !"ncol", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 417]
!119 = metadata !{i32 786688, metadata !108, metadata !"nD", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 417]
!120 = metadata !{i32 786688, metadata !108, metadata !"nL", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 417]
!121 = metadata !{i32 786688, metadata !108, metadata !"nrow", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 417]
!122 = metadata !{i32 786688, metadata !108, metadata !"nU", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 417]
!123 = metadata !{i32 786688, metadata !108, metadata !"off", metadata !5, i32 417, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 417]
!124 = metadata !{i32 786688, metadata !108, metadata !"base", metadata !5, i32 418, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 418]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_locationOfRealEntry", metadata !"Chv_locationOfRealEntry", metadata !"", i32 484, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double**)* @Chv_locationOfRealEntry, null, null, metadata !129, i32 489} ; [ DW_TAG_subprogram ] [line 484] [def] [scope 489] [Chv_locationOfRealEntry]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !128}
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!130 = metadata !{i32 786689, metadata !125, metadata !"chv", metadata !5, i32 16777701, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 485]
!131 = metadata !{i32 786689, metadata !125, metadata !"irow", metadata !5, i32 33554918, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 486]
!132 = metadata !{i32 786689, metadata !125, metadata !"jcol", metadata !5, i32 50332135, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 487]
!133 = metadata !{i32 786689, metadata !125, metadata !"ppValue", metadata !5, i32 67109352, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppValue] [line 488]
!134 = metadata !{i32 786688, metadata !125, metadata !"ichv", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 490]
!135 = metadata !{i32 786688, metadata !125, metadata !"ncol", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 490]
!136 = metadata !{i32 786688, metadata !125, metadata !"nD", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 490]
!137 = metadata !{i32 786688, metadata !125, metadata !"nL", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 490]
!138 = metadata !{i32 786688, metadata !125, metadata !"nrow", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 490]
!139 = metadata !{i32 786688, metadata !125, metadata !"nU", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 490]
!140 = metadata !{i32 786688, metadata !125, metadata !"off", metadata !5, i32 490, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 490]
!141 = metadata !{i32 786688, metadata !125, metadata !"base", metadata !5, i32 491, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 491]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_locationOfComplexEntry", metadata !"Chv_locationOfComplexEntry", metadata !"", i32 554, metadata !143, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double**, double**)* @Chv_locationOfComplexEntry, null, null, metadata !145, i32 560} ; [ DW_TAG_subprogram ] [line 554] [def] [scope 560] [Chv_locationOfComplexEntry]
!143 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !128, metadata !128}
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158}
!146 = metadata !{i32 786689, metadata !142, metadata !"chv", metadata !5, i32 16777771, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 555]
!147 = metadata !{i32 786689, metadata !142, metadata !"irow", metadata !5, i32 33554988, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 556]
!148 = metadata !{i32 786689, metadata !142, metadata !"jcol", metadata !5, i32 50332205, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 557]
!149 = metadata !{i32 786689, metadata !142, metadata !"ppReal", metadata !5, i32 67109422, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppReal] [line 558]
!150 = metadata !{i32 786689, metadata !142, metadata !"ppImag", metadata !5, i32 83886639, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppImag] [line 559]
!151 = metadata !{i32 786688, metadata !142, metadata !"ichv", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 561]
!152 = metadata !{i32 786688, metadata !142, metadata !"ncol", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 561]
!153 = metadata !{i32 786688, metadata !142, metadata !"nD", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 561]
!154 = metadata !{i32 786688, metadata !142, metadata !"nL", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 561]
!155 = metadata !{i32 786688, metadata !142, metadata !"nrow", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 561]
!156 = metadata !{i32 786688, metadata !142, metadata !"nU", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 561]
!157 = metadata !{i32 786688, metadata !142, metadata !"off", metadata !5, i32 561, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 561]
!158 = metadata !{i32 786688, metadata !142, metadata !"base", metadata !5, i32 562, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 562]
!159 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_setRealEntry", metadata !"Chv_setRealEntry", metadata !"", i32 629, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double)* @Chv_setRealEntry, null, null, metadata !162, i32 634} ; [ DW_TAG_subprogram ] [line 629] [def] [scope 634] [Chv_setRealEntry]
!160 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !25}
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174}
!163 = metadata !{i32 786689, metadata !159, metadata !"chv", metadata !5, i32 16777846, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 630]
!164 = metadata !{i32 786689, metadata !159, metadata !"irow", metadata !5, i32 33555063, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 631]
!165 = metadata !{i32 786689, metadata !159, metadata !"jcol", metadata !5, i32 50332280, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 632]
!166 = metadata !{i32 786689, metadata !159, metadata !"value", metadata !5, i32 67109497, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 633]
!167 = metadata !{i32 786688, metadata !159, metadata !"ichv", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 635]
!168 = metadata !{i32 786688, metadata !159, metadata !"ncol", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 635]
!169 = metadata !{i32 786688, metadata !159, metadata !"nD", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 635]
!170 = metadata !{i32 786688, metadata !159, metadata !"nL", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 635]
!171 = metadata !{i32 786688, metadata !159, metadata !"nrow", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 635]
!172 = metadata !{i32 786688, metadata !159, metadata !"nU", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 635]
!173 = metadata !{i32 786688, metadata !159, metadata !"off", metadata !5, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 635]
!174 = metadata !{i32 786688, metadata !159, metadata !"base", metadata !5, i32 636, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 636]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_setComplexEntry", metadata !"Chv_setComplexEntry", metadata !"", i32 693, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, double, double)* @Chv_setComplexEntry, null, null, metadata !178, i32 699} ; [ DW_TAG_subprogram ] [line 693] [def] [scope 699] [Chv_setComplexEntry]
!176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !25, metadata !25}
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191}
!179 = metadata !{i32 786689, metadata !175, metadata !"chv", metadata !5, i32 16777910, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 694]
!180 = metadata !{i32 786689, metadata !175, metadata !"irow", metadata !5, i32 33555127, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 695]
!181 = metadata !{i32 786689, metadata !175, metadata !"jcol", metadata !5, i32 50332344, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 696]
!182 = metadata !{i32 786689, metadata !175, metadata !"real", metadata !5, i32 67109561, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 697]
!183 = metadata !{i32 786689, metadata !175, metadata !"imag", metadata !5, i32 83886778, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 698]
!184 = metadata !{i32 786688, metadata !175, metadata !"ichv", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichv] [line 700]
!185 = metadata !{i32 786688, metadata !175, metadata !"ncol", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 700]
!186 = metadata !{i32 786688, metadata !175, metadata !"nD", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 700]
!187 = metadata !{i32 786688, metadata !175, metadata !"nL", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 700]
!188 = metadata !{i32 786688, metadata !175, metadata !"nrow", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 700]
!189 = metadata !{i32 786688, metadata !175, metadata !"nU", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 700]
!190 = metadata !{i32 786688, metadata !175, metadata !"off", metadata !5, i32 700, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 700]
!191 = metadata !{i32 786688, metadata !175, metadata !"base", metadata !5, i32 701, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 701]
!192 = metadata !{i32 15, i32 0, metadata !4, null}
!193 = metadata !{i32 22, i32 0, metadata !4, null}
!194 = metadata !{i32 23, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!196 = metadata !{metadata !"any pointer", metadata !197}
!197 = metadata !{metadata !"omnipotent char", metadata !198}
!198 = metadata !{metadata !"Simple C/C++ TBAA"}
!199 = metadata !{i32 25, i32 0, metadata !195, null}
!200 = metadata !{i32 27, i32 0, metadata !4, null}
!201 = metadata !{metadata !"int", metadata !197}
!202 = metadata !{i32 41, i32 0, metadata !40, null}
!203 = metadata !{i32 48, i32 0, metadata !40, null}
!204 = metadata !{i32 49, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !40, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!206 = metadata !{i32 51, i32 0, metadata !205, null}
!207 = metadata !{i32 53, i32 0, metadata !40, null}
!208 = metadata !{i32 68, i32 0, metadata !43, null}
!209 = metadata !{i32 75, i32 0, metadata !43, null}
!210 = metadata !{i32 76, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !43, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!212 = metadata !{i32 78, i32 0, metadata !211, null}
!213 = metadata !{i32 80, i32 0, metadata !43, null}
!214 = metadata !{i32 92, i32 0, metadata !46, null}
!215 = metadata !{i32 93, i32 0, metadata !46, null}
!216 = metadata !{i32 94, i32 0, metadata !46, null}
!217 = metadata !{i32 95, i32 0, metadata !46, null}
!218 = metadata !{i32 102, i32 0, metadata !46, null}
!219 = metadata !{i32 103, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !46, i32 102, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!221 = metadata !{i32 105, i32 0, metadata !220, null}
!222 = metadata !{i32 107, i32 0, metadata !46, null}
!223 = metadata !{i32 108, i32 0, metadata !46, null}
!224 = metadata !{i32 109, i32 0, metadata !46, null}
!225 = metadata !{i32 111, i32 0, metadata !46, null}
!226 = metadata !{i32 123, i32 0, metadata !54, null}
!227 = metadata !{i32 124, i32 0, metadata !54, null}
!228 = metadata !{i32 125, i32 0, metadata !54, null}
!229 = metadata !{i32 132, i32 0, metadata !54, null}
!230 = metadata !{i32 133, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !54, i32 132, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!232 = metadata !{i32 135, i32 0, metadata !231, null}
!233 = metadata !{i32 137, i32 0, metadata !54, null}
!234 = metadata !{i32 138, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !54, i32 137, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!236 = metadata !{i32 139, i32 0, metadata !235, null}
!237 = metadata !{i32 140, i32 0, metadata !235, null}
!238 = metadata !{i32 141, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !54, i32 140, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!240 = metadata !{i32 142, i32 0, metadata !239, null}
!241 = metadata !{i32 144, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !54, i32 143, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!243 = metadata !{i32 146, i32 0, metadata !242, null}
!244 = metadata !{i32 148, i32 0, metadata !54, null}
!245 = metadata !{i32 160, i32 0, metadata !62, null}
!246 = metadata !{i32 161, i32 0, metadata !62, null}
!247 = metadata !{i32 162, i32 0, metadata !62, null}
!248 = metadata !{i32 169, i32 0, metadata !62, null}
!249 = metadata !{i32 170, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !62, i32 169, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!251 = metadata !{i32 172, i32 0, metadata !250, null}
!252 = metadata !{i32 174, i32 0, metadata !62, null}
!253 = metadata !{i32 175, i32 0, metadata !62, null}
!254 = metadata !{i32 177, i32 0, metadata !62, null}
!255 = metadata !{i32 189, i32 0, metadata !67, null}
!256 = metadata !{i32 191, i32 0, metadata !67, null}
!257 = metadata !{i32 197, i32 0, metadata !67, null}
!258 = metadata !{i32 198, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !67, i32 197, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!260 = metadata !{i32 200, i32 0, metadata !259, null}
!261 = metadata !{i32 202, i32 0, metadata !67, null}
!262 = metadata !{i32 203, i32 0, metadata !67, null}
!263 = metadata !{i32 204, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !67, i32 203, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!265 = metadata !{i32 205, i32 0, metadata !264, null}
!266 = metadata !{i32 206, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !67, i32 205, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!268 = metadata !{i32 208, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !67, i32 207, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!270 = metadata !{i32 210, i32 0, metadata !269, null}
!271 = metadata !{i32 212, i32 0, metadata !67, null}
!272 = metadata !{i32 224, i32 0, metadata !74, null}
!273 = metadata !{i32 231, i32 0, metadata !74, null}
!274 = metadata !{i32 232, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !74, i32 231, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!276 = metadata !{i32 234, i32 0, metadata !275, null}
!277 = metadata !{i32 236, i32 0, metadata !74, null}
!278 = metadata !{i32 249, i32 0, metadata !79, null}
!279 = metadata !{i32 250, i32 0, metadata !79, null}
!280 = metadata !{i32 258, i32 0, metadata !79, null}
!281 = metadata !{i32 259, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !79, i32 258, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!283 = metadata !{i32 261, i32 0, metadata !282, null}
!284 = metadata !{i32 263, i32 0, metadata !79, null}
!285 = metadata !{i32 264, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !79, i32 263, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!287 = metadata !{i32 266, i32 0, metadata !286, null}
!288 = metadata !{i32 268, i32 0, metadata !79, null}
!289 = metadata !{i32 269, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !79, i32 268, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!291 = metadata !{i32 271, i32 0, metadata !290, null}
!292 = metadata !{i32 273, i32 0, metadata !79, null}
!293 = metadata !{i32 274, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !79, i32 273, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!295 = metadata !{i32 275, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !294, i32 274, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!297 = metadata !{i32 277, i32 0, metadata !296, null}
!298 = metadata !{i32 278, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !294, i32 277, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!300 = metadata !{i32 281, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !294, i32 280, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!302 = metadata !{i32 285, i32 0, metadata !301, null}
!303 = metadata !{i32 288, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !79, i32 287, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!305 = metadata !{i32 289, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !304, i32 288, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!307 = metadata !{i32 291, i32 0, metadata !306, null}
!308 = metadata !{i32 292, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !304, i32 291, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!310 = metadata !{i32 295, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !304, i32 294, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!312 = metadata !{i32 300, i32 0, metadata !311, null}
!313 = metadata !{i32 303, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !79, i32 302, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!315 = metadata !{i32 306, i32 0, metadata !314, null}
!316 = metadata !{i32 308, i32 0, metadata !79, null}
!317 = metadata !{i32 320, i32 0, metadata !86, null}
!318 = metadata !{i32 327, i32 0, metadata !86, null}
!319 = metadata !{i32 328, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !86, i32 327, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!321 = metadata !{i32 330, i32 0, metadata !320, null}
!322 = metadata !{i32 332, i32 0, metadata !86, null}
!323 = metadata !{i32 344, i32 0, metadata !92, null}
!324 = metadata !{i32 345, i32 0, metadata !92, null}
!325 = metadata !{i32 346, i32 0, metadata !92, null}
!326 = metadata !{i32 347, i32 0, metadata !92, null}
!327 = metadata !{i32 349, i32 0, metadata !92, null}
!328 = metadata !{i32 356, i32 0, metadata !92, null}
!329 = metadata !{i32 358, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !92, i32 357, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!331 = metadata !{i32 360, i32 0, metadata !330, null}
!332 = metadata !{i32 362, i32 0, metadata !92, null}
!333 = metadata !{i32 363, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !92, i32 362, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!335 = metadata !{i32 366, i32 0, metadata !334, null}
!336 = metadata !{i32 368, i32 0, metadata !92, null}
!337 = metadata !{i32 369, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !92, i32 368, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!339 = metadata !{i32 373, i32 0, metadata !338, null}
!340 = metadata !{i32 375, i32 0, metadata !92, null}
!341 = metadata !{i32 376, i32 0, metadata !92, null}
!342 = metadata !{i32 377, i32 0, metadata !92, null}
!343 = metadata !{i32 380, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !92, i32 379, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!345 = metadata !{i32 382, i32 0, metadata !92, null}
!346 = metadata !{i32 383, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !92, i32 382, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!348 = metadata !{i32 386, i32 0, metadata !347, null}
!349 = metadata !{i32 388, i32 0, metadata !92, null}
!350 = metadata !{i32 391, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !92, i32 390, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!352 = metadata !{i32 392, i32 0, metadata !351, null}
!353 = metadata !{i32 393, i32 0, metadata !351, null}
!354 = metadata !{i32 394, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !351, i32 393, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!356 = metadata !{i32 396, i32 0, metadata !351, null}
!357 = metadata !{i32 397, i32 0, metadata !351, null}
!358 = metadata !{metadata !"double", metadata !197}
!359 = metadata !{i32 389, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !92, i32 388, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!361 = metadata !{i32 399, i32 0, metadata !92, null}
!362 = metadata !{i32 411, i32 0, metadata !108, null}
!363 = metadata !{i32 412, i32 0, metadata !108, null}
!364 = metadata !{i32 413, i32 0, metadata !108, null}
!365 = metadata !{i32 414, i32 0, metadata !108, null}
!366 = metadata !{i32 415, i32 0, metadata !108, null}
!367 = metadata !{i32 417, i32 0, metadata !108, null}
!368 = metadata !{i32 424, i32 0, metadata !108, null}
!369 = metadata !{i32 426, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !108, i32 425, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!371 = metadata !{i32 428, i32 0, metadata !370, null}
!372 = metadata !{i32 430, i32 0, metadata !108, null}
!373 = metadata !{i32 431, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !108, i32 430, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!375 = metadata !{i32 434, i32 0, metadata !374, null}
!376 = metadata !{i32 436, i32 0, metadata !108, null}
!377 = metadata !{i32 438, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !108, i32 437, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!379 = metadata !{i32 442, i32 0, metadata !378, null}
!380 = metadata !{i32 444, i32 0, metadata !108, null}
!381 = metadata !{i32 445, i32 0, metadata !108, null}
!382 = metadata !{i32 446, i32 0, metadata !108, null}
!383 = metadata !{i32 449, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !108, i32 448, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!385 = metadata !{i32 451, i32 0, metadata !108, null}
!386 = metadata !{i32 452, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !108, i32 451, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!388 = metadata !{i32 455, i32 0, metadata !387, null}
!389 = metadata !{i32 457, i32 0, metadata !108, null}
!390 = metadata !{i32 458, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !108, i32 457, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!392 = metadata !{i32 459, i32 0, metadata !391, null}
!393 = metadata !{i32 460, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !108, i32 459, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!395 = metadata !{i32 461, i32 0, metadata !394, null}
!396 = metadata !{i32 462, i32 0, metadata !394, null}
!397 = metadata !{i32 463, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !394, i32 462, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!399 = metadata !{i32 465, i32 0, metadata !394, null}
!400 = metadata !{i32 466, i32 0, metadata !394, null}
!401 = metadata !{i32 467, i32 0, metadata !394, null}
!402 = metadata !{i32 468, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !394, i32 467, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!404 = metadata !{i32 469, i32 0, metadata !403, null}
!405 = metadata !{i32 470, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !394, i32 469, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!407 = metadata !{i32 473, i32 0, metadata !108, null}
!408 = metadata !{i32 485, i32 0, metadata !125, null}
!409 = metadata !{i32 486, i32 0, metadata !125, null}
!410 = metadata !{i32 487, i32 0, metadata !125, null}
!411 = metadata !{i32 488, i32 0, metadata !125, null}
!412 = metadata !{i32 490, i32 0, metadata !125, null}
!413 = metadata !{i32 497, i32 0, metadata !125, null}
!414 = metadata !{i32 499, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !125, i32 498, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!416 = metadata !{i32 502, i32 0, metadata !415, null}
!417 = metadata !{i32 504, i32 0, metadata !125, null}
!418 = metadata !{i32 505, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !125, i32 504, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!420 = metadata !{i32 509, i32 0, metadata !419, null}
!421 = metadata !{i32 511, i32 0, metadata !125, null}
!422 = metadata !{i32 512, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !125, i32 511, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!424 = metadata !{i32 516, i32 0, metadata !423, null}
!425 = metadata !{i32 518, i32 0, metadata !125, null}
!426 = metadata !{i32 519, i32 0, metadata !125, null}
!427 = metadata !{i32 520, i32 0, metadata !125, null}
!428 = metadata !{i32 523, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !125, i32 522, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!430 = metadata !{i32 525, i32 0, metadata !125, null}
!431 = metadata !{i32 526, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !125, i32 525, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!433 = metadata !{i32 530, i32 0, metadata !432, null}
!434 = metadata !{i32 532, i32 0, metadata !125, null}
!435 = metadata !{i32 535, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !125, i32 534, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!437 = metadata !{i32 536, i32 0, metadata !436, null}
!438 = metadata !{i32 537, i32 0, metadata !436, null}
!439 = metadata !{i32 538, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !436, i32 537, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!441 = metadata !{i32 540, i32 0, metadata !436, null}
!442 = metadata !{i32 541, i32 0, metadata !436, null}
!443 = metadata !{i32 533, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !125, i32 532, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!445 = metadata !{i32 543, i32 0, metadata !125, null}
!446 = metadata !{i32 555, i32 0, metadata !142, null}
!447 = metadata !{i32 556, i32 0, metadata !142, null}
!448 = metadata !{i32 557, i32 0, metadata !142, null}
!449 = metadata !{i32 558, i32 0, metadata !142, null}
!450 = metadata !{i32 559, i32 0, metadata !142, null}
!451 = metadata !{i32 561, i32 0, metadata !142, null}
!452 = metadata !{i32 568, i32 0, metadata !142, null}
!453 = metadata !{i32 570, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !142, i32 569, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!455 = metadata !{i32 573, i32 0, metadata !454, null}
!456 = metadata !{i32 575, i32 0, metadata !142, null}
!457 = metadata !{i32 576, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !142, i32 575, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!459 = metadata !{i32 580, i32 0, metadata !458, null}
!460 = metadata !{i32 582, i32 0, metadata !142, null}
!461 = metadata !{i32 584, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !142, i32 583, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!463 = metadata !{i32 590, i32 0, metadata !462, null}
!464 = metadata !{i32 592, i32 0, metadata !142, null}
!465 = metadata !{i32 593, i32 0, metadata !142, null}
!466 = metadata !{i32 594, i32 0, metadata !142, null}
!467 = metadata !{i32 597, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !142, i32 596, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!469 = metadata !{i32 599, i32 0, metadata !142, null}
!470 = metadata !{i32 600, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !142, i32 599, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!472 = metadata !{i32 604, i32 0, metadata !471, null}
!473 = metadata !{i32 606, i32 0, metadata !142, null}
!474 = metadata !{i32 607, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !1, metadata !142, i32 606, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!476 = metadata !{i32 608, i32 0, metadata !475, null}
!477 = metadata !{i32 609, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !142, i32 608, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!479 = metadata !{i32 610, i32 0, metadata !478, null}
!480 = metadata !{i32 611, i32 0, metadata !478, null}
!481 = metadata !{i32 612, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !478, i32 611, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!483 = metadata !{i32 614, i32 0, metadata !478, null}
!484 = metadata !{i32 615, i32 0, metadata !478, null}
!485 = metadata !{i32 616, i32 0, metadata !478, null}
!486 = metadata !{i32 618, i32 0, metadata !142, null}
!487 = metadata !{i32 630, i32 0, metadata !159, null}
!488 = metadata !{i32 631, i32 0, metadata !159, null}
!489 = metadata !{i32 632, i32 0, metadata !159, null}
!490 = metadata !{i32 633, i32 0, metadata !159, null}
!491 = metadata !{i32 635, i32 0, metadata !159, null}
!492 = metadata !{i32 642, i32 0, metadata !159, null}
!493 = metadata !{i32 643, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !159, i32 642, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!495 = metadata !{i32 645, i32 0, metadata !494, null}
!496 = metadata !{i32 647, i32 0, metadata !159, null}
!497 = metadata !{i32 648, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !159, i32 647, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!499 = metadata !{i32 651, i32 0, metadata !498, null}
!500 = metadata !{i32 653, i32 0, metadata !159, null}
!501 = metadata !{i32 654, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !159, i32 653, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!503 = metadata !{i32 658, i32 0, metadata !502, null}
!504 = metadata !{i32 660, i32 0, metadata !159, null}
!505 = metadata !{i32 661, i32 0, metadata !159, null}
!506 = metadata !{i32 662, i32 0, metadata !159, null}
!507 = metadata !{i32 665, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !159, i32 664, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!509 = metadata !{i32 667, i32 0, metadata !159, null}
!510 = metadata !{i32 668, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !159, i32 667, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!512 = metadata !{i32 671, i32 0, metadata !511, null}
!513 = metadata !{i32 673, i32 0, metadata !159, null}
!514 = metadata !{i32 674, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !159, i32 673, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!516 = metadata !{i32 675, i32 0, metadata !515, null}
!517 = metadata !{i32 676, i32 0, metadata !515, null}
!518 = metadata !{i32 677, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !515, i32 676, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!520 = metadata !{i32 679, i32 0, metadata !515, null}
!521 = metadata !{i32 680, i32 0, metadata !515, null}
!522 = metadata !{i32 681, i32 0, metadata !515, null}
!523 = metadata !{i32 682, i32 0, metadata !159, null}
!524 = metadata !{i32 694, i32 0, metadata !175, null}
!525 = metadata !{i32 695, i32 0, metadata !175, null}
!526 = metadata !{i32 696, i32 0, metadata !175, null}
!527 = metadata !{i32 697, i32 0, metadata !175, null}
!528 = metadata !{i32 698, i32 0, metadata !175, null}
!529 = metadata !{i32 700, i32 0, metadata !175, null}
!530 = metadata !{i32 707, i32 0, metadata !175, null}
!531 = metadata !{i32 708, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !175, i32 707, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!533 = metadata !{i32 711, i32 0, metadata !532, null}
!534 = metadata !{i32 713, i32 0, metadata !175, null}
!535 = metadata !{i32 714, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !175, i32 713, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!537 = metadata !{i32 718, i32 0, metadata !536, null}
!538 = metadata !{i32 720, i32 0, metadata !175, null}
!539 = metadata !{i32 722, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !175, i32 721, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!541 = metadata !{i32 728, i32 0, metadata !540, null}
!542 = metadata !{i32 730, i32 0, metadata !175, null}
!543 = metadata !{i32 731, i32 0, metadata !175, null}
!544 = metadata !{i32 732, i32 0, metadata !175, null}
!545 = metadata !{i32 735, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !175, i32 734, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!547 = metadata !{i32 737, i32 0, metadata !175, null}
!548 = metadata !{i32 738, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !175, i32 737, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!550 = metadata !{i32 742, i32 0, metadata !549, null}
!551 = metadata !{i32 744, i32 0, metadata !175, null}
!552 = metadata !{i32 745, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !175, i32 744, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!554 = metadata !{i32 746, i32 0, metadata !553, null}
!555 = metadata !{i32 747, i32 0, metadata !553, null}
!556 = metadata !{i32 748, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !553, i32 747, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_instance.c]
!558 = metadata !{i32 750, i32 0, metadata !553, null}
!559 = metadata !{i32 751, i32 0, metadata !553, null}
!560 = metadata !{i32 752, i32 0, metadata !553, null}
!561 = metadata !{i32 753, i32 0, metadata !553, null}
!562 = metadata !{i32 754, i32 0, metadata !175, null}
