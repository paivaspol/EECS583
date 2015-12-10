; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }
%struct._DV = type { i32, i32, i32, double* }
%struct._ZV = type { i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [86 x i8] c"\0A fatal error in A2_sizeOf(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_shiftbase(%p,%d,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_shiftBase(%p,%d,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in A2_rowMajor(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_rowMajor(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"\0A fatal error in A2_columnMajor(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_columnMajor(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_transpose(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [89 x i8] c"\0A fatal error in A2_transpose(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"\0A fatal error in A2_extractRow(%p,%p,%d)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [96 x i8] c"\0A fatal error in A2_extractRow(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str12 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_extractColumn(%p,%p,%d)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [99 x i8] c"\0A fatal error in A2_extractColumn(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [49 x i8] c"\0A fatal error in A2_setRow(%p,%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [92 x i8] c"\0A fatal error in A2_setRow(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_setColumn(%p,%p,%d)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in A2_setColumn(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str18 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_extractRowDV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_extractRowDV(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str20 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_extractRowZV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_extractRowZV(%p,%p,%d)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str22 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_extractColumnDV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_extractColumnDV(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str24 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_extractColumnZV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str25 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_extractColumnZV(%p,%p,%d)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str26 = private unnamed_addr constant [51 x i8] c"\0A fatal error in A2_setRowDV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str27 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_setRowDV(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str28 = private unnamed_addr constant [51 x i8] c"\0A fatal error in A2_setRowZV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRowZV(%p,%p,%d)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str30 = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_setColumnDV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str31 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setColumnDV(%p,%p,%d)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str32 = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_setColumnZV(%p,%p,%d)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_setColumnZV(%p,%p,%d)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str34 = private unnamed_addr constant [63 x i8] c"\0A fatal error in A2_fillRandomUniform(%p,%f,%f,%d)\0A bad input\0A\00", align 1
@.str35 = private unnamed_addr constant [106 x i8] c"\0A fatal error in A2_fillRandomUniform(%p,%f,%f,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str36 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_fillRandomNormal(%p,%d)\0A bad input\0A\00", align 1
@.str37 = private unnamed_addr constant [105 x i8] c"\0A fatal error in A2_fillRandomNormal(%p,%f,%f,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str38 = private unnamed_addr constant [53 x i8] c"\0A fatal error in A2_fillWithIdentity(%p)\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [96 x i8] c"\0A fatal error in A2_fillWithIdentity(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str40 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_zero(%p)\0A bad input\0A\00", align 1
@.str41 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_zero(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str42 = private unnamed_addr constant [44 x i8] c"\0A fatal error in A2_copy(%p,%p)\0A bad input\0A\00", align 1
@.str43 = private unnamed_addr constant [19 x i8] c"\0A\0A first A2 object\00", align 1
@.str44 = private unnamed_addr constant [20 x i8] c"\0A\0A second A2 object\00", align 1
@.str45 = private unnamed_addr constant [87 x i8] c"\0A fatal error in A2_copy(%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str46 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_copy(%p,%p)\0A A's type %d, B's type = %d, must be the same\0A\00", align 1
@.str47 = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_sub(%p,%p)\0A bad input\0A\00", align 1
@.str48 = private unnamed_addr constant [86 x i8] c"\0A fatal error in A2_sub(%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str49 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_sub(%p,%p)\0A A's type %d, B's type = %d, must be the same\0A\00", align 1
@.str50 = private unnamed_addr constant [51 x i8] c"\0A fatal error in A2_swapRows(%p,%d,%d)\0A bad input\0A\00", align 1
@.str51 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_swapRows(%p,%d,%d)\0A bad structure\0A\00", align 1
@.str52 = private unnamed_addr constant [94 x i8] c"\0A fatal error in A2_swapRows(%p,%d,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str53 = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_swapColumns(%p,%d,%d)\0A bad input\0A\00", align 1
@.str54 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_swapColumns(%p,%d,%d)\0A bad structure\0A\00", align 1
@.str55 = private unnamed_addr constant [97 x i8] c"\0A fatal error in A2_swapColumns(%p,%d,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_sizeOf(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !24), !dbg !344
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !345
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !346, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._A2* null) #6, !dbg !346
  tail call void @exit(i32 -1) #7, !dbg !351
  unreachable, !dbg !351

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !352
  %1 = load i32* %type, align 4, !dbg !352, !tbaa !353
  %.off = add i32 %1, -1, !dbg !352
  %switch = icmp ult i32 %.off, 2, !dbg !352
  br i1 %switch, label %if.end7, label %if.then4, !dbg !352

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !354, !tbaa !348
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !354
  tail call void @exit(i32 -1) #7, !dbg !356
  unreachable, !dbg !356

if.end7:                                          ; preds = %if.end
  switch i32 %1, label %if.end23 [
    i32 1, label %if.then10
    i32 2, label %if.then15
  ], !dbg !357

if.then10:                                        ; preds = %if.end7
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !358
  %3 = load i32* %nowned, align 4, !dbg !358, !tbaa !353
  %mul = shl i32 %3, 3, !dbg !358
  %add = add i32 %mul, 32, !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !25), !dbg !358
  br label %if.end23, !dbg !360

if.then15:                                        ; preds = %if.end7
  %nowned16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !361
  %4 = load i32* %nowned16, align 4, !dbg !361, !tbaa !353
  %mul17 = shl i32 %4, 4, !dbg !361
  %add20 = add i32 %mul17, 32, !dbg !361
  tail call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !25), !dbg !361
  br label %if.end23, !dbg !363

if.end23:                                         ; preds = %if.end7, %if.then15, %if.then10
  %nbytes.0 = phi i32 [ %add, %if.then10 ], [ %add20, %if.then15 ], [ undef, %if.end7 ]
  ret i32 %nbytes.0, !dbg !364
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_shiftBase(%struct._A2* %mtx, i32 %rowoff, i32 %coloff) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !30), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %rowoff}, i64 0, metadata !31), !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32 %coloff}, i64 0, metadata !32), !dbg !367
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !368
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._A2* null, i32 %rowoff, i32 %coloff) #6, !dbg !369
  tail call void @exit(i32 -1) #7, !dbg !371
  unreachable, !dbg !371

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !372
  %1 = load i32* %type, align 4, !dbg !372, !tbaa !353
  %.off = add i32 %1, -1, !dbg !372
  %switch = icmp ult i32 %.off, 2, !dbg !372
  br i1 %switch, label %if.end7, label %if.then4, !dbg !372

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !373, !tbaa !348
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %rowoff, i32 %coloff, i32 %1) #6, !dbg !373
  tail call void @exit(i32 -1) #7, !dbg !375
  unreachable, !dbg !375

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !376
  %3 = load i32* %n1, align 4, !dbg !376, !tbaa !353
  %sub = sub nsw i32 %3, %rowoff, !dbg !376
  store i32 %sub, i32* %n1, align 4, !dbg !376, !tbaa !353
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !377
  %4 = load i32* %n2, align 4, !dbg !377, !tbaa !353
  %sub8 = sub nsw i32 %4, %coloff, !dbg !377
  store i32 %sub8, i32* %n2, align 4, !dbg !377, !tbaa !353
  switch i32 %1, label %if.end26 [
    i32 1, label %if.then11
    i32 2, label %if.then15
  ], !dbg !378

if.then11:                                        ; preds = %if.end7
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !379
  %5 = load i32* %inc1, align 4, !dbg !379, !tbaa !353
  %mul = mul nsw i32 %5, %rowoff, !dbg !379
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !379
  %6 = load i32* %inc2, align 4, !dbg !379, !tbaa !353
  %mul12 = mul nsw i32 %6, %coloff, !dbg !379
  %add = add nsw i32 %mul12, %mul, !dbg !379
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !379
  %7 = load double** %entries, align 8, !dbg !379, !tbaa !348
  %idx.ext = sext i32 %add to i64, !dbg !379
  %add.ptr = getelementptr inbounds double* %7, i64 %idx.ext, !dbg !379
  store double* %add.ptr, double** %entries, align 8, !dbg !379, !tbaa !348
  br label %if.end26, !dbg !381

if.then15:                                        ; preds = %if.end7
  %inc116 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !382
  %8 = load i32* %inc116, align 4, !dbg !382, !tbaa !353
  %mul17 = mul nsw i32 %8, %rowoff, !dbg !382
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !382
  %9 = load i32* %inc218, align 4, !dbg !382, !tbaa !353
  %mul19 = mul nsw i32 %9, %coloff, !dbg !382
  %add20 = add nsw i32 %mul19, %mul17, !dbg !382
  %mul21 = shl nsw i32 %add20, 1, !dbg !382
  %entries22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !382
  %10 = load double** %entries22, align 8, !dbg !382, !tbaa !348
  %idx.ext23 = sext i32 %mul21 to i64, !dbg !382
  %add.ptr24 = getelementptr inbounds double* %10, i64 %idx.ext23, !dbg !382
  store double* %add.ptr24, double** %entries22, align 8, !dbg !382, !tbaa !348
  br label %if.end26, !dbg !384

if.end26:                                         ; preds = %if.end7, %if.then15, %if.then11
  ret void, !dbg !385
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_rowMajor(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !35), !dbg !386
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !387

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !388, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #6, !dbg !388
  tail call void @exit(i32 -1) #7, !dbg !390
  unreachable, !dbg !390

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !391
  %1 = load i32* %type, align 4, !dbg !391, !tbaa !353
  %.off = add i32 %1, -1, !dbg !391
  %switch = icmp ult i32 %.off, 2, !dbg !391
  br i1 %switch, label %if.end7, label %if.then4, !dbg !391

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !392, !tbaa !348
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !392
  tail call void @exit(i32 -1) #7, !dbg !394
  unreachable, !dbg !394

if.end7:                                          ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !395
  %3 = load i32* %inc2, align 4, !dbg !395, !tbaa !353
  %cmp8 = icmp eq i32 %3, 1, !dbg !395
  %. = zext i1 %cmp8 to i32, !dbg !396
  ret i32 %., !dbg !398
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_columnMajor(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !38), !dbg !399
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !401, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._A2* null) #6, !dbg !401
  tail call void @exit(i32 -1) #7, !dbg !403
  unreachable, !dbg !403

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !404
  %1 = load i32* %type, align 4, !dbg !404, !tbaa !353
  %.off = add i32 %1, -1, !dbg !404
  %switch = icmp ult i32 %.off, 2, !dbg !404
  br i1 %switch, label %if.end7, label %if.then4, !dbg !404

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !405, !tbaa !348
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !405
  tail call void @exit(i32 -1) #7, !dbg !407
  unreachable, !dbg !407

if.end7:                                          ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !408
  %3 = load i32* %inc1, align 4, !dbg !408, !tbaa !353
  %cmp8 = icmp eq i32 %3, 1, !dbg !408
  %. = zext i1 %cmp8 to i32, !dbg !409
  ret i32 %., !dbg !411
}

; Function Attrs: nounwind optsize uwtable
define void @A2_transpose(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !43), !dbg !412
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !413
  br i1 %cmp, label %if.then, label %if.end, !dbg !413

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !414, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._A2* null) #6, !dbg !414
  tail call void @exit(i32 -1) #7, !dbg !416
  unreachable, !dbg !416

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !417
  %1 = load i32* %type, align 4, !dbg !417, !tbaa !353
  %.off = add i32 %1, -1, !dbg !417
  %switch = icmp ult i32 %.off, 2, !dbg !417
  br i1 %switch, label %if.end7, label %if.then4, !dbg !417

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !418, !tbaa !348
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str9, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #6, !dbg !418
  tail call void @exit(i32 -1) #7, !dbg !420
  unreachable, !dbg !420

if.end7:                                          ; preds = %if.end
  %n18 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !421
  %3 = load i32* %n18, align 4, !dbg !421, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !45), !dbg !421
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !422
  %4 = load i32* %n2, align 4, !dbg !422, !tbaa !353
  store i32 %4, i32* %n18, align 4, !dbg !422, !tbaa !353
  store i32 %3, i32* %n2, align 4, !dbg !423, !tbaa !353
  %inc111 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !424
  %5 = load i32* %inc111, align 4, !dbg !424, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !44), !dbg !424
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !425
  %6 = load i32* %inc2, align 4, !dbg !425, !tbaa !353
  store i32 %6, i32* %inc111, align 4, !dbg !425, !tbaa !353
  store i32 %5, i32* %inc2, align 4, !dbg !426, !tbaa !353
  ret void, !dbg !427
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRow(%struct._A2* %mtx, double* %row, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !50), !dbg !428
  tail call void @llvm.dbg.value(metadata !{double* %row}, i64 0, metadata !51), !dbg !429
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !52), !dbg !430
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !431
  %cmp1 = icmp eq double* %row, null, !dbg !431
  %or.cond = or i1 %cmp, %cmp1, !dbg !431
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !431

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !431
  %0 = load double** %entries3, align 8, !dbg !431, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !431
  %cmp6 = icmp slt i32 %irow, 0, !dbg !431
  %or.cond90 = or i1 %cmp4, %cmp6, !dbg !431
  br i1 %or.cond90, label %if.then, label %lor.lhs.false7, !dbg !431

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !431
  %1 = load i32* %n1, align 4, !dbg !431, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %irow, !dbg !431
  br i1 %cmp8, label %if.end, label %if.then, !dbg !431

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !432, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow) #6, !dbg !432
  tail call void @exit(i32 -1) #7, !dbg !434
  unreachable, !dbg !434

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !435
  %3 = load i32* %type, align 4, !dbg !435, !tbaa !353
  %.off = add i32 %3, -1, !dbg !435
  %switch = icmp ult i32 %.off, 2, !dbg !435
  br i1 %switch, label %if.end16, label %if.then13, !dbg !435

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !436, !tbaa !348
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([96 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow, i32 %3) #6, !dbg !436
  tail call void @exit(i32 -1) #7, !dbg !438
  unreachable, !dbg !438

if.end16:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !439
  %5 = load i32* %inc1, align 4, !dbg !439, !tbaa !353
  %n217 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !440
  %6 = load i32* %n217, align 4, !dbg !440, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !57), !dbg !440
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !441
  %7 = load i32* %inc218, align 4, !dbg !441, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !54), !dbg !441
  tail call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !53), !dbg !442
  switch i32 %3, label %if.end51 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
  ], !dbg !443

for.cond29.preheader:                             ; preds = %if.end16
  %cmp3095 = icmp sgt i32 %6, 0, !dbg !444
  br i1 %cmp3095, label %for.body31.lr.ph, label %if.end51, !dbg !444

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %8 = mul i32 %5, %irow, !dbg !444
  %9 = sext i32 %8 to i64, !dbg !444
  %10 = sext i32 %7 to i64, !dbg !444
  br label %for.body31, !dbg !444

for.cond.preheader:                               ; preds = %if.end16
  %cmp2391 = icmp sgt i32 %6, 0, !dbg !447
  br i1 %cmp2391, label %for.body.lr.ph, label %if.end51, !dbg !447

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %5, %irow, !dbg !447
  %12 = sext i32 %11 to i64, !dbg !447
  %13 = sext i32 %7 to i64, !dbg !447
  br label %for.body, !dbg !447

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv98 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next99, %for.body ], !dbg !447
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %0, i64 %indvars.iv98, !dbg !450
  %14 = load double* %arrayidx, align 8, !dbg !450, !tbaa !452
  %arrayidx25 = getelementptr inbounds double* %row, i64 %indvars.iv, !dbg !450
  store double %14, double* %arrayidx25, align 8, !dbg !450, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !447
  %indvars.iv.next99 = add i64 %indvars.iv98, %13, !dbg !447
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !447
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !447
  br i1 %exitcond, label %if.end51, label %for.body, !dbg !447

for.body31:                                       ; preds = %for.body31, %for.body31.lr.ph
  %indvars.iv102 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next103, %for.body31 ], !dbg !444
  %indvars.iv100 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next101, %for.body31 ]
  %15 = trunc i64 %indvars.iv102 to i32, !dbg !453
  %mul32 = shl nsw i32 %15, 1, !dbg !453
  %idxprom33 = sext i32 %mul32 to i64, !dbg !453
  %arrayidx34 = getelementptr inbounds double* %0, i64 %idxprom33, !dbg !453
  %16 = load double* %arrayidx34, align 8, !dbg !453, !tbaa !452
  %17 = trunc i64 %indvars.iv100 to i32, !dbg !453
  %mul35 = shl nsw i32 %17, 1, !dbg !453
  %idxprom36 = sext i32 %mul35 to i64, !dbg !453
  %arrayidx37 = getelementptr inbounds double* %row, i64 %idxprom36, !dbg !453
  store double %16, double* %arrayidx37, align 8, !dbg !453, !tbaa !452
  %add3988 = or i32 %mul32, 1, !dbg !455
  %idxprom40 = sext i32 %add3988 to i64, !dbg !455
  %arrayidx41 = getelementptr inbounds double* %0, i64 %idxprom40, !dbg !455
  %18 = load double* %arrayidx41, align 8, !dbg !455, !tbaa !452
  %add4389 = or i32 %mul35, 1, !dbg !455
  %idxprom44 = sext i32 %add4389 to i64, !dbg !455
  %arrayidx45 = getelementptr inbounds double* %row, i64 %idxprom44, !dbg !455
  store double %18, double* %arrayidx45, align 8, !dbg !455, !tbaa !452
  %indvars.iv.next101 = add i64 %indvars.iv100, 1, !dbg !444
  %indvars.iv.next103 = add i64 %indvars.iv102, %10, !dbg !444
  %lftr.wideiv104 = trunc i64 %indvars.iv.next101 to i32, !dbg !444
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %6, !dbg !444
  br i1 %exitcond105, label %if.end51, label %for.body31, !dbg !444

if.end51:                                         ; preds = %for.cond29.preheader, %for.body31, %for.cond.preheader, %for.body, %if.end16
  ret void, !dbg !456
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumn(%struct._A2* %mtx, double* %col, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !60), !dbg !457
  tail call void @llvm.dbg.value(metadata !{double* %col}, i64 0, metadata !61), !dbg !458
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !62), !dbg !459
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !460
  %cmp1 = icmp eq double* %col, null, !dbg !460
  %or.cond = or i1 %cmp, %cmp1, !dbg !460
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !460

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !460
  %0 = load double** %entries3, align 8, !dbg !460, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !460
  %cmp6 = icmp slt i32 %jcol, 0, !dbg !460
  %or.cond90 = or i1 %cmp4, %cmp6, !dbg !460
  br i1 %or.cond90, label %if.then, label %lor.lhs.false7, !dbg !460

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !460
  %1 = load i32* %n2, align 4, !dbg !460, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %jcol, !dbg !460
  br i1 %cmp8, label %if.end, label %if.then, !dbg !460

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol) #6, !dbg !461
  tail call void @exit(i32 -1) #7, !dbg !463
  unreachable, !dbg !463

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !464
  %3 = load i32* %type, align 4, !dbg !464, !tbaa !353
  %.off = add i32 %3, -1, !dbg !464
  %switch = icmp ult i32 %.off, 2, !dbg !464
  br i1 %switch, label %if.end16, label %if.then13, !dbg !464

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !465, !tbaa !348
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([99 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol, i32 %3) #6, !dbg !465
  tail call void @exit(i32 -1) #7, !dbg !467
  unreachable, !dbg !467

if.end16:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !468
  %5 = load i32* %inc2, align 4, !dbg !468, !tbaa !353
  %n117 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !469
  %6 = load i32* %n117, align 4, !dbg !469, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !67), !dbg !469
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !470
  %7 = load i32* %inc118, align 4, !dbg !470, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !65), !dbg !470
  tail call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !63), !dbg !471
  switch i32 %3, label %if.end51 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
  ], !dbg !472

for.cond29.preheader:                             ; preds = %if.end16
  %cmp3095 = icmp sgt i32 %6, 0, !dbg !473
  br i1 %cmp3095, label %for.body31.lr.ph, label %if.end51, !dbg !473

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %8 = mul i32 %5, %jcol, !dbg !473
  %9 = sext i32 %8 to i64, !dbg !473
  %10 = sext i32 %7 to i64, !dbg !473
  br label %for.body31, !dbg !473

for.cond.preheader:                               ; preds = %if.end16
  %cmp2391 = icmp sgt i32 %6, 0, !dbg !476
  br i1 %cmp2391, label %for.body.lr.ph, label %if.end51, !dbg !476

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %5, %jcol, !dbg !476
  %12 = sext i32 %11 to i64, !dbg !476
  %13 = sext i32 %7 to i64, !dbg !476
  br label %for.body, !dbg !476

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv98 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next99, %for.body ], !dbg !476
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %0, i64 %indvars.iv98, !dbg !479
  %14 = load double* %arrayidx, align 8, !dbg !479, !tbaa !452
  %arrayidx25 = getelementptr inbounds double* %col, i64 %indvars.iv, !dbg !479
  store double %14, double* %arrayidx25, align 8, !dbg !479, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !476
  %indvars.iv.next99 = add i64 %indvars.iv98, %13, !dbg !476
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !476
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !476
  br i1 %exitcond, label %if.end51, label %for.body, !dbg !476

for.body31:                                       ; preds = %for.body31, %for.body31.lr.ph
  %indvars.iv102 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next103, %for.body31 ], !dbg !473
  %indvars.iv100 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next101, %for.body31 ]
  %15 = trunc i64 %indvars.iv102 to i32, !dbg !481
  %mul32 = shl nsw i32 %15, 1, !dbg !481
  %idxprom33 = sext i32 %mul32 to i64, !dbg !481
  %arrayidx34 = getelementptr inbounds double* %0, i64 %idxprom33, !dbg !481
  %16 = load double* %arrayidx34, align 8, !dbg !481, !tbaa !452
  %17 = trunc i64 %indvars.iv100 to i32, !dbg !481
  %mul35 = shl nsw i32 %17, 1, !dbg !481
  %idxprom36 = sext i32 %mul35 to i64, !dbg !481
  %arrayidx37 = getelementptr inbounds double* %col, i64 %idxprom36, !dbg !481
  store double %16, double* %arrayidx37, align 8, !dbg !481, !tbaa !452
  %add3988 = or i32 %mul32, 1, !dbg !483
  %idxprom40 = sext i32 %add3988 to i64, !dbg !483
  %arrayidx41 = getelementptr inbounds double* %0, i64 %idxprom40, !dbg !483
  %18 = load double* %arrayidx41, align 8, !dbg !483, !tbaa !452
  %add4389 = or i32 %mul35, 1, !dbg !483
  %idxprom44 = sext i32 %add4389 to i64, !dbg !483
  %arrayidx45 = getelementptr inbounds double* %col, i64 %idxprom44, !dbg !483
  store double %18, double* %arrayidx45, align 8, !dbg !483, !tbaa !452
  %indvars.iv.next101 = add i64 %indvars.iv100, 1, !dbg !473
  %indvars.iv.next103 = add i64 %indvars.iv102, %10, !dbg !473
  %lftr.wideiv104 = trunc i64 %indvars.iv.next101 to i32, !dbg !473
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %6, !dbg !473
  br i1 %exitcond105, label %if.end51, label %for.body31, !dbg !473

if.end51:                                         ; preds = %for.cond29.preheader, %for.body31, %for.cond.preheader, %for.body, %if.end16
  ret void, !dbg !484
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRow(%struct._A2* %mtx, double* %row, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !70), !dbg !485
  tail call void @llvm.dbg.value(metadata !{double* %row}, i64 0, metadata !71), !dbg !486
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !72), !dbg !487
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !488
  %cmp1 = icmp eq double* %row, null, !dbg !488
  %or.cond = or i1 %cmp, %cmp1, !dbg !488
  %cmp3 = icmp slt i32 %irow, 0, !dbg !488
  %or.cond86 = or i1 %or.cond, %cmp3, !dbg !488
  br i1 %or.cond86, label %if.then, label %lor.lhs.false4, !dbg !488

lor.lhs.false4:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !488
  %0 = load i32* %n1, align 4, !dbg !488, !tbaa !353
  %cmp5 = icmp sgt i32 %0, %irow, !dbg !488
  br i1 %cmp5, label %if.end, label %if.then, !dbg !488

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !489, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow) #6, !dbg !489
  tail call void @exit(i32 -1) #7, !dbg !491
  unreachable, !dbg !491

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !492
  %2 = load i32* %type, align 4, !dbg !492, !tbaa !353
  %.off = add i32 %2, -1, !dbg !492
  %switch = icmp ult i32 %.off, 2, !dbg !492
  br i1 %switch, label %if.end13, label %if.then10, !dbg !492

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !493, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([92 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow, i32 %2) #6, !dbg !493
  tail call void @exit(i32 -1) #7, !dbg !495
  unreachable, !dbg !495

if.end13:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !496
  %4 = load i32* %inc1, align 4, !dbg !496, !tbaa !353
  %n214 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !497
  %5 = load i32* %n214, align 4, !dbg !497, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !77), !dbg !497
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !498
  %6 = load i32* %inc215, align 4, !dbg !498, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !74), !dbg !498
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !499
  %7 = load double** %entries16, align 8, !dbg !499, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !73), !dbg !499
  switch i32 %2, label %if.end48 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond26.preheader
  ], !dbg !500

for.cond26.preheader:                             ; preds = %if.end13
  %cmp2791 = icmp sgt i32 %5, 0, !dbg !501
  br i1 %cmp2791, label %for.body28.lr.ph, label %if.end48, !dbg !501

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = mul i32 %4, %irow, !dbg !501
  %9 = sext i32 %8 to i64, !dbg !501
  %10 = sext i32 %6 to i64, !dbg !501
  br label %for.body28, !dbg !501

for.cond.preheader:                               ; preds = %if.end13
  %cmp2087 = icmp sgt i32 %5, 0, !dbg !504
  br i1 %cmp2087, label %for.body.lr.ph, label %if.end48, !dbg !504

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %4, %irow, !dbg !504
  %12 = sext i32 %11 to i64, !dbg !504
  %13 = sext i32 %6 to i64, !dbg !504
  br label %for.body, !dbg !504

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv94 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next95, %for.body ], !dbg !504
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %row, i64 %indvars.iv, !dbg !507
  %14 = load double* %arrayidx, align 8, !dbg !507, !tbaa !452
  %arrayidx22 = getelementptr inbounds double* %7, i64 %indvars.iv94, !dbg !507
  store double %14, double* %arrayidx22, align 8, !dbg !507, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !504
  %indvars.iv.next95 = add i64 %indvars.iv94, %13, !dbg !504
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !504
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !504
  br i1 %exitcond, label %if.end48, label %for.body, !dbg !504

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv98 = phi i64 [ %9, %for.body28.lr.ph ], [ %indvars.iv.next99, %for.body28 ], !dbg !501
  %indvars.iv96 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next97, %for.body28 ]
  %15 = trunc i64 %indvars.iv96 to i32, !dbg !509
  %mul29 = shl nsw i32 %15, 1, !dbg !509
  %idxprom30 = sext i32 %mul29 to i64, !dbg !509
  %arrayidx31 = getelementptr inbounds double* %row, i64 %idxprom30, !dbg !509
  %16 = load double* %arrayidx31, align 8, !dbg !509, !tbaa !452
  %17 = trunc i64 %indvars.iv98 to i32, !dbg !509
  %mul32 = shl nsw i32 %17, 1, !dbg !509
  %idxprom33 = sext i32 %mul32 to i64, !dbg !509
  %arrayidx34 = getelementptr inbounds double* %7, i64 %idxprom33, !dbg !509
  store double %16, double* %arrayidx34, align 8, !dbg !509, !tbaa !452
  %add3684 = or i32 %mul29, 1, !dbg !511
  %idxprom37 = sext i32 %add3684 to i64, !dbg !511
  %arrayidx38 = getelementptr inbounds double* %row, i64 %idxprom37, !dbg !511
  %18 = load double* %arrayidx38, align 8, !dbg !511, !tbaa !452
  %add4085 = or i32 %mul32, 1, !dbg !511
  %idxprom41 = sext i32 %add4085 to i64, !dbg !511
  %arrayidx42 = getelementptr inbounds double* %7, i64 %idxprom41, !dbg !511
  store double %18, double* %arrayidx42, align 8, !dbg !511, !tbaa !452
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !501
  %indvars.iv.next99 = add i64 %indvars.iv98, %10, !dbg !501
  %lftr.wideiv100 = trunc i64 %indvars.iv.next97 to i32, !dbg !501
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %5, !dbg !501
  br i1 %exitcond101, label %if.end48, label %for.body28, !dbg !501

if.end48:                                         ; preds = %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  ret void, !dbg !512
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumn(%struct._A2* %mtx, double* %col, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !80), !dbg !513
  tail call void @llvm.dbg.value(metadata !{double* %col}, i64 0, metadata !81), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !82), !dbg !515
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !516
  %cmp1 = icmp eq double* %col, null, !dbg !516
  %or.cond = or i1 %cmp, %cmp1, !dbg !516
  %cmp3 = icmp slt i32 %jcol, 0, !dbg !516
  %or.cond86 = or i1 %or.cond, %cmp3, !dbg !516
  br i1 %or.cond86, label %if.then, label %lor.lhs.false4, !dbg !516

lor.lhs.false4:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !516
  %0 = load i32* %n2, align 4, !dbg !516, !tbaa !353
  %cmp5 = icmp sgt i32 %0, %jcol, !dbg !516
  br i1 %cmp5, label %if.end, label %if.then, !dbg !516

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !517, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol) #6, !dbg !517
  tail call void @exit(i32 -1) #7, !dbg !519
  unreachable, !dbg !519

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !520
  %2 = load i32* %type, align 4, !dbg !520, !tbaa !353
  %.off = add i32 %2, -1, !dbg !520
  %switch = icmp ult i32 %.off, 2, !dbg !520
  br i1 %switch, label %if.end13, label %if.then10, !dbg !520

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !521, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol, i32 %2) #6, !dbg !521
  tail call void @exit(i32 -1) #7, !dbg !523
  unreachable, !dbg !523

if.end13:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !524
  %4 = load i32* %inc2, align 4, !dbg !524, !tbaa !353
  %n114 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !525
  %5 = load i32* %n114, align 4, !dbg !525, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !87), !dbg !525
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !526
  %6 = load i32* %inc115, align 4, !dbg !526, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !84), !dbg !526
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !527
  %7 = load double** %entries16, align 8, !dbg !527, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !83), !dbg !527
  switch i32 %2, label %if.end48 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond26.preheader
  ], !dbg !528

for.cond26.preheader:                             ; preds = %if.end13
  %cmp2791 = icmp sgt i32 %5, 0, !dbg !529
  br i1 %cmp2791, label %for.body28.lr.ph, label %if.end48, !dbg !529

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = mul i32 %4, %jcol, !dbg !529
  %9 = sext i32 %8 to i64, !dbg !529
  %10 = sext i32 %6 to i64, !dbg !529
  br label %for.body28, !dbg !529

for.cond.preheader:                               ; preds = %if.end13
  %cmp2087 = icmp sgt i32 %5, 0, !dbg !532
  br i1 %cmp2087, label %for.body.lr.ph, label %if.end48, !dbg !532

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %4, %jcol, !dbg !532
  %12 = sext i32 %11 to i64, !dbg !532
  %13 = sext i32 %6 to i64, !dbg !532
  br label %for.body, !dbg !532

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv94 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next95, %for.body ], !dbg !532
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %col, i64 %indvars.iv, !dbg !535
  %14 = load double* %arrayidx, align 8, !dbg !535, !tbaa !452
  %arrayidx22 = getelementptr inbounds double* %7, i64 %indvars.iv94, !dbg !535
  store double %14, double* %arrayidx22, align 8, !dbg !535, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !532
  %indvars.iv.next95 = add i64 %indvars.iv94, %13, !dbg !532
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !532
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !532
  br i1 %exitcond, label %if.end48, label %for.body, !dbg !532

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv98 = phi i64 [ %9, %for.body28.lr.ph ], [ %indvars.iv.next99, %for.body28 ], !dbg !529
  %indvars.iv96 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next97, %for.body28 ]
  %15 = trunc i64 %indvars.iv96 to i32, !dbg !537
  %mul29 = shl nsw i32 %15, 1, !dbg !537
  %idxprom30 = sext i32 %mul29 to i64, !dbg !537
  %arrayidx31 = getelementptr inbounds double* %col, i64 %idxprom30, !dbg !537
  %16 = load double* %arrayidx31, align 8, !dbg !537, !tbaa !452
  %17 = trunc i64 %indvars.iv98 to i32, !dbg !537
  %mul32 = shl nsw i32 %17, 1, !dbg !537
  %idxprom33 = sext i32 %mul32 to i64, !dbg !537
  %arrayidx34 = getelementptr inbounds double* %7, i64 %idxprom33, !dbg !537
  store double %16, double* %arrayidx34, align 8, !dbg !537, !tbaa !452
  %add3684 = or i32 %mul29, 1, !dbg !539
  %idxprom37 = sext i32 %add3684 to i64, !dbg !539
  %arrayidx38 = getelementptr inbounds double* %col, i64 %idxprom37, !dbg !539
  %18 = load double* %arrayidx38, align 8, !dbg !539, !tbaa !452
  %add4085 = or i32 %mul32, 1, !dbg !539
  %idxprom41 = sext i32 %add4085 to i64, !dbg !539
  %arrayidx42 = getelementptr inbounds double* %7, i64 %idxprom41, !dbg !539
  store double %18, double* %arrayidx42, align 8, !dbg !539, !tbaa !452
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !529
  %indvars.iv.next99 = add i64 %indvars.iv98, %10, !dbg !529
  %lftr.wideiv100 = trunc i64 %indvars.iv.next97 to i32, !dbg !529
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %5, !dbg !529
  br i1 %exitcond101, label %if.end48, label %for.body28, !dbg !529

if.end48:                                         ; preds = %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  ret void, !dbg !540
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRowDV(%struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !101), !dbg !541
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %rowDV}, i64 0, metadata !102), !dbg !542
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !103), !dbg !543
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !544
  %cmp1 = icmp eq %struct._DV* %rowDV, null, !dbg !544
  %or.cond = or i1 %cmp, %cmp1, !dbg !544
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !544

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !544
  %0 = load double** %entries3, align 8, !dbg !544, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !544
  %cmp6 = icmp slt i32 %irow, 0, !dbg !544
  %or.cond48 = or i1 %cmp4, %cmp6, !dbg !544
  br i1 %or.cond48, label %if.then, label %lor.lhs.false7, !dbg !544

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !544
  %1 = load i32* %n1, align 4, !dbg !544, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %irow, !dbg !544
  br i1 %cmp8, label %if.end, label %if.then, !dbg !544

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !545, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #6, !dbg !545
  tail call void @exit(i32 -1) #7, !dbg !547
  unreachable, !dbg !547

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !548
  %3 = load i32* %type, align 4, !dbg !548, !tbaa !353
  %cmp9 = icmp eq i32 %3, 1, !dbg !548
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !548

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !549, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([79 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow, i32 %3) #6, !dbg !549
  tail call void @exit(i32 -1) #7, !dbg !551
  unreachable, !dbg !551

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @DV_size(%struct._DV* %rowDV) #6, !dbg !552
  %n215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !552
  %5 = load i32* %n215, align 4, !dbg !552, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !109), !dbg !552
  %cmp16 = icmp slt i32 %call14, %5, !dbg !552
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !552

if.then17:                                        ; preds = %if.end13
  tail call void @DV_setSize(%struct._DV* %rowDV, i32 %5) #6, !dbg !553
  br label %if.end18, !dbg !555

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @DV_entries(%struct._DV* %rowDV) #6, !dbg !556
  tail call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !105), !dbg !556
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !108), !dbg !557
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !106), !dbg !558
  %6 = load double** %entries3, align 8, !dbg !559, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !104), !dbg !559
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !560
  %cmp2249 = icmp sgt i32 %5, 0, !dbg !560
  br i1 %cmp2249, label %for.body.lr.ph, label %for.end, !dbg !560

for.body.lr.ph:                                   ; preds = %if.end18
  %inc220 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !558
  %7 = load i32* %inc220, align 4, !dbg !558, !tbaa !353
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !557
  %8 = load i32* %inc1, align 4, !dbg !557, !tbaa !353
  %mul = mul nsw i32 %8, %irow, !dbg !557
  %9 = sext i32 %mul to i64, !dbg !560
  %10 = sext i32 %7 to i64, !dbg !560
  br label %for.body, !dbg !560

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv52 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next53, %for.body ], !dbg !560
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %6, i64 %indvars.iv52, !dbg !562
  %11 = load double* %arrayidx, align 8, !dbg !562, !tbaa !452
  %arrayidx24 = getelementptr inbounds double* %call19, i64 %indvars.iv, !dbg !562
  store double %11, double* %arrayidx24, align 8, !dbg !562, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !560
  %indvars.iv.next53 = add i64 %indvars.iv52, %10, !dbg !560
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !560
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !560
  br i1 %exitcond, label %for.end, label %for.body, !dbg !560

for.end:                                          ; preds = %for.body, %if.end18
  ret void, !dbg !564
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #4

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRowZV(%struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !123), !dbg !565
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %rowZV}, i64 0, metadata !124), !dbg !566
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !125), !dbg !567
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !568
  %cmp1 = icmp eq %struct._ZV* %rowZV, null, !dbg !568
  %or.cond = or i1 %cmp, %cmp1, !dbg !568
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !568

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !568
  %0 = load double** %entries3, align 8, !dbg !568, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !568
  %cmp6 = icmp slt i32 %irow, 0, !dbg !568
  %or.cond64 = or i1 %cmp4, %cmp6, !dbg !568
  br i1 %or.cond64, label %if.then, label %lor.lhs.false7, !dbg !568

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !568
  %1 = load i32* %n1, align 4, !dbg !568, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %irow, !dbg !568
  br i1 %cmp8, label %if.end, label %if.then, !dbg !568

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !569, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str20, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #6, !dbg !569
  tail call void @exit(i32 -1) #7, !dbg !571
  unreachable, !dbg !571

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !572
  %3 = load i32* %type, align 4, !dbg !572, !tbaa !353
  %cmp9 = icmp eq i32 %3, 2, !dbg !572
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !572

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !573, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str21, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow, i32 %3) #6, !dbg !573
  tail call void @exit(i32 -1) #7, !dbg !575
  unreachable, !dbg !575

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @ZV_size(%struct._ZV* %rowZV) #6, !dbg !576
  %n215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !576
  %5 = load i32* %n215, align 4, !dbg !576, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !131), !dbg !576
  %cmp16 = icmp slt i32 %call14, %5, !dbg !576
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !576

if.then17:                                        ; preds = %if.end13
  tail call void @ZV_setSize(%struct._ZV* %rowZV, i32 %5) #6, !dbg !577
  br label %if.end18, !dbg !579

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @ZV_entries(%struct._ZV* %rowZV) #6, !dbg !580
  tail call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !127), !dbg !580
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !130), !dbg !581
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !128), !dbg !582
  %6 = load double** %entries3, align 8, !dbg !583, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !126), !dbg !583
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !129), !dbg !584
  %cmp2265 = icmp sgt i32 %5, 0, !dbg !584
  br i1 %cmp2265, label %for.body.lr.ph, label %for.end, !dbg !584

for.body.lr.ph:                                   ; preds = %if.end18
  %inc220 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !582
  %7 = load i32* %inc220, align 4, !dbg !582, !tbaa !353
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !581
  %8 = load i32* %inc1, align 4, !dbg !581, !tbaa !353
  %mul = mul nsw i32 %8, %irow, !dbg !581
  %9 = sext i32 %mul to i64, !dbg !584
  %10 = sext i32 %7 to i64, !dbg !584
  br label %for.body, !dbg !584

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv68 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ], !dbg !584
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %11 = trunc i64 %indvars.iv68 to i32, !dbg !586
  %mul23 = shl nsw i32 %11, 1, !dbg !586
  %idxprom = sext i32 %mul23 to i64, !dbg !586
  %arrayidx = getelementptr inbounds double* %6, i64 %idxprom, !dbg !586
  %12 = load double* %arrayidx, align 8, !dbg !586, !tbaa !452
  %13 = trunc i64 %indvars.iv to i32, !dbg !586
  %mul24 = shl nsw i32 %13, 1, !dbg !586
  %idxprom25 = sext i32 %mul24 to i64, !dbg !586
  %arrayidx26 = getelementptr inbounds double* %call19, i64 %idxprom25, !dbg !586
  store double %12, double* %arrayidx26, align 8, !dbg !586, !tbaa !452
  %add62 = or i32 %mul23, 1, !dbg !588
  %idxprom28 = sext i32 %add62 to i64, !dbg !588
  %arrayidx29 = getelementptr inbounds double* %6, i64 %idxprom28, !dbg !588
  %14 = load double* %arrayidx29, align 8, !dbg !588, !tbaa !452
  %add3163 = or i32 %mul24, 1, !dbg !588
  %idxprom32 = sext i32 %add3163 to i64, !dbg !588
  %arrayidx33 = getelementptr inbounds double* %call19, i64 %idxprom32, !dbg !588
  store double %14, double* %arrayidx33, align 8, !dbg !588, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !584
  %indvars.iv.next69 = add i64 %indvars.iv68, %10, !dbg !584
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !584
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !584
  br i1 %exitcond, label %for.end, label %for.body, !dbg !584

for.end:                                          ; preds = %for.body, %if.end18
  ret void, !dbg !589
}

; Function Attrs: optsize
declare i32 @ZV_size(%struct._ZV*) #4

; Function Attrs: optsize
declare void @ZV_setSize(%struct._ZV*, i32) #4

; Function Attrs: optsize
declare double* @ZV_entries(%struct._ZV*) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumnDV(%struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !134), !dbg !590
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %colDV}, i64 0, metadata !135), !dbg !591
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !136), !dbg !592
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !593
  %cmp1 = icmp eq %struct._DV* %colDV, null, !dbg !593
  %or.cond = or i1 %cmp, %cmp1, !dbg !593
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !593

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !593
  %0 = load double** %entries3, align 8, !dbg !593, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !593
  %cmp6 = icmp slt i32 %jcol, 0, !dbg !593
  %or.cond48 = or i1 %cmp4, %cmp6, !dbg !593
  br i1 %or.cond48, label %if.then, label %lor.lhs.false7, !dbg !593

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !593
  %1 = load i32* %n2, align 4, !dbg !593, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %jcol, !dbg !593
  br i1 %cmp8, label %if.end, label %if.then, !dbg !593

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !594, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #6, !dbg !594
  tail call void @exit(i32 -1) #7, !dbg !596
  unreachable, !dbg !596

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !597
  %3 = load i32* %type, align 4, !dbg !597, !tbaa !353
  %cmp9 = icmp eq i32 %3, 1, !dbg !597
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !597

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !598, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str23, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol, i32 %3) #6, !dbg !598
  tail call void @exit(i32 -1) #7, !dbg !600
  unreachable, !dbg !600

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @DV_size(%struct._DV* %colDV) #6, !dbg !601
  %n115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !601
  %5 = load i32* %n115, align 4, !dbg !601, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !142), !dbg !601
  %cmp16 = icmp slt i32 %call14, %5, !dbg !601
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !601

if.then17:                                        ; preds = %if.end13
  tail call void @DV_setSize(%struct._DV* %colDV, i32 %5) #6, !dbg !602
  br label %if.end18, !dbg !604

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @DV_entries(%struct._DV* %colDV) #6, !dbg !605
  tail call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !138), !dbg !605
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !141), !dbg !606
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !140), !dbg !607
  %6 = load double** %entries3, align 8, !dbg !608, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !137), !dbg !608
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !139), !dbg !609
  %cmp2249 = icmp sgt i32 %5, 0, !dbg !609
  br i1 %cmp2249, label %for.body.lr.ph, label %for.end, !dbg !609

for.body.lr.ph:                                   ; preds = %if.end18
  %inc120 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !607
  %7 = load i32* %inc120, align 4, !dbg !607, !tbaa !353
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !606
  %8 = load i32* %inc2, align 4, !dbg !606, !tbaa !353
  %mul = mul nsw i32 %8, %jcol, !dbg !606
  %9 = sext i32 %mul to i64, !dbg !609
  %10 = sext i32 %7 to i64, !dbg !609
  br label %for.body, !dbg !609

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv52 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next53, %for.body ], !dbg !609
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %6, i64 %indvars.iv52, !dbg !611
  %11 = load double* %arrayidx, align 8, !dbg !611, !tbaa !452
  %arrayidx24 = getelementptr inbounds double* %call19, i64 %indvars.iv, !dbg !611
  store double %11, double* %arrayidx24, align 8, !dbg !611, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !609
  %indvars.iv.next53 = add i64 %indvars.iv52, %10, !dbg !609
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !609
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !609
  br i1 %exitcond, label %for.end, label %for.body, !dbg !609

for.end:                                          ; preds = %for.body, %if.end18
  ret void, !dbg !613
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumnZV(%struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !145), !dbg !614
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %colZV}, i64 0, metadata !146), !dbg !615
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !147), !dbg !616
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !617
  %cmp1 = icmp eq %struct._ZV* %colZV, null, !dbg !617
  %or.cond = or i1 %cmp, %cmp1, !dbg !617
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !617

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !617
  %0 = load double** %entries3, align 8, !dbg !617, !tbaa !348
  %cmp4 = icmp eq double* %0, null, !dbg !617
  %cmp6 = icmp slt i32 %jcol, 0, !dbg !617
  %or.cond64 = or i1 %cmp4, %cmp6, !dbg !617
  br i1 %or.cond64, label %if.then, label %lor.lhs.false7, !dbg !617

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !617
  %1 = load i32* %n2, align 4, !dbg !617, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %jcol, !dbg !617
  br i1 %cmp8, label %if.end, label %if.then, !dbg !617

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !618, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #6, !dbg !618
  tail call void @exit(i32 -1) #7, !dbg !620
  unreachable, !dbg !620

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !621
  %3 = load i32* %type, align 4, !dbg !621, !tbaa !353
  %cmp9 = icmp eq i32 %3, 2, !dbg !621
  br i1 %cmp9, label %if.end13, label %if.then10, !dbg !621

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !622, !tbaa !348
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol, i32 %3) #6, !dbg !622
  tail call void @exit(i32 -1) #7, !dbg !624
  unreachable, !dbg !624

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @ZV_size(%struct._ZV* %colZV) #6, !dbg !625
  %n115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !625
  %5 = load i32* %n115, align 4, !dbg !625, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !153), !dbg !625
  %cmp16 = icmp slt i32 %call14, %5, !dbg !625
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !625

if.then17:                                        ; preds = %if.end13
  tail call void @ZV_setSize(%struct._ZV* %colZV, i32 %5) #6, !dbg !626
  br label %if.end18, !dbg !628

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @ZV_entries(%struct._ZV* %colZV) #6, !dbg !629
  tail call void @llvm.dbg.value(metadata !{double* %call19}, i64 0, metadata !149), !dbg !629
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !152), !dbg !630
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !151), !dbg !631
  %6 = load double** %entries3, align 8, !dbg !632, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !148), !dbg !632
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !150), !dbg !633
  %cmp2265 = icmp sgt i32 %5, 0, !dbg !633
  br i1 %cmp2265, label %for.body.lr.ph, label %for.end, !dbg !633

for.body.lr.ph:                                   ; preds = %if.end18
  %inc120 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !631
  %7 = load i32* %inc120, align 4, !dbg !631, !tbaa !353
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !630
  %8 = load i32* %inc2, align 4, !dbg !630, !tbaa !353
  %mul = mul nsw i32 %8, %jcol, !dbg !630
  %9 = sext i32 %mul to i64, !dbg !633
  %10 = sext i32 %7 to i64, !dbg !633
  br label %for.body, !dbg !633

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv68 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ], !dbg !633
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %11 = trunc i64 %indvars.iv68 to i32, !dbg !635
  %mul23 = shl nsw i32 %11, 1, !dbg !635
  %idxprom = sext i32 %mul23 to i64, !dbg !635
  %arrayidx = getelementptr inbounds double* %6, i64 %idxprom, !dbg !635
  %12 = load double* %arrayidx, align 8, !dbg !635, !tbaa !452
  %13 = trunc i64 %indvars.iv to i32, !dbg !635
  %mul24 = shl nsw i32 %13, 1, !dbg !635
  %idxprom25 = sext i32 %mul24 to i64, !dbg !635
  %arrayidx26 = getelementptr inbounds double* %call19, i64 %idxprom25, !dbg !635
  store double %12, double* %arrayidx26, align 8, !dbg !635, !tbaa !452
  %add62 = or i32 %mul23, 1, !dbg !637
  %idxprom28 = sext i32 %add62 to i64, !dbg !637
  %arrayidx29 = getelementptr inbounds double* %6, i64 %idxprom28, !dbg !637
  %14 = load double* %arrayidx29, align 8, !dbg !637, !tbaa !452
  %add3163 = or i32 %mul24, 1, !dbg !637
  %idxprom32 = sext i32 %add3163 to i64, !dbg !637
  %arrayidx33 = getelementptr inbounds double* %call19, i64 %idxprom32, !dbg !637
  store double %14, double* %arrayidx33, align 8, !dbg !637, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !633
  %indvars.iv.next69 = add i64 %indvars.iv68, %10, !dbg !633
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !633
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !633
  br i1 %exitcond, label %for.end, label %for.body, !dbg !633

for.end:                                          ; preds = %for.body, %if.end18
  ret void, !dbg !638
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRowDV(%struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !156), !dbg !639
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %rowDV}, i64 0, metadata !157), !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !158), !dbg !641
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !642
  %cmp1 = icmp eq %struct._DV* %rowDV, null, !dbg !642
  %or.cond = or i1 %cmp, %cmp1, !dbg !642
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !642

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @DV_size(%struct._DV* %rowDV) #6, !dbg !642
  %n23 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !642
  %0 = load i32* %n23, align 4, !dbg !642, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !164), !dbg !642
  %cmp4 = icmp ne i32 %call, %0, !dbg !642
  %cmp6 = icmp slt i32 %irow, 0, !dbg !642
  %or.cond41 = or i1 %cmp4, %cmp6, !dbg !642
  br i1 %or.cond41, label %if.then, label %lor.lhs.false7, !dbg !642

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !642
  %1 = load i32* %n1, align 4, !dbg !642, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %irow, !dbg !642
  br i1 %cmp8, label %if.end, label %if.then, !dbg !642

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !348
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #6, !dbg !643
  tail call void @exit(i32 -1) #7, !dbg !645
  unreachable, !dbg !645

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !646
  %3 = load i32* %type, align 4, !dbg !646, !tbaa !353
  %cmp10 = icmp eq i32 %3, 1, !dbg !646
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !646

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !647, !tbaa !348
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([75 x i8]* @.str27, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow, i32 %3) #6, !dbg !647
  tail call void @exit(i32 -1) #7, !dbg !649
  unreachable, !dbg !649

if.end14:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !650
  %5 = load i32* %inc1, align 4, !dbg !650, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !163), !dbg !650
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !651
  %6 = load i32* %inc215, align 4, !dbg !651, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !161), !dbg !651
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !652
  %7 = load double** %entries16, align 8, !dbg !652, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !159), !dbg !652
  %call17 = tail call double* @DV_entries(%struct._DV* %rowDV) #6, !dbg !653
  tail call void @llvm.dbg.value(metadata !{double* %call17}, i64 0, metadata !160), !dbg !653
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !654
  %cmp1842 = icmp sgt i32 %call, 0, !dbg !654
  br i1 %cmp1842, label %for.body.lr.ph, label %for.end, !dbg !654

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %irow, !dbg !650
  %8 = sext i32 %mul to i64, !dbg !654
  %9 = sext i32 %6 to i64, !dbg !654
  br label %for.body, !dbg !654

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv45 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next46, %for.body ], !dbg !654
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call17, i64 %indvars.iv, !dbg !656
  %10 = load double* %arrayidx, align 8, !dbg !656, !tbaa !452
  %arrayidx20 = getelementptr inbounds double* %7, i64 %indvars.iv45, !dbg !656
  store double %10, double* %arrayidx20, align 8, !dbg !656, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !654
  %indvars.iv.next46 = add i64 %indvars.iv45, %9, !dbg !654
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !654
  %exitcond = icmp eq i32 %lftr.wideiv, %call, !dbg !654
  br i1 %exitcond, label %for.end, label %for.body, !dbg !654

for.end:                                          ; preds = %for.body, %if.end14
  ret void, !dbg !658
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRowZV(%struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !167), !dbg !659
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %rowZV}, i64 0, metadata !168), !dbg !660
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !169), !dbg !661
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !662
  %cmp1 = icmp eq %struct._ZV* %rowZV, null, !dbg !662
  %or.cond = or i1 %cmp, %cmp1, !dbg !662
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !662

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @ZV_size(%struct._ZV* %rowZV) #6, !dbg !662
  %n23 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !662
  %0 = load i32* %n23, align 4, !dbg !662, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !175), !dbg !662
  %cmp4 = icmp ne i32 %call, %0, !dbg !662
  %cmp6 = icmp slt i32 %irow, 0, !dbg !662
  %or.cond57 = or i1 %cmp4, %cmp6, !dbg !662
  br i1 %or.cond57, label %if.then, label %lor.lhs.false7, !dbg !662

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !662
  %1 = load i32* %n1, align 4, !dbg !662, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %irow, !dbg !662
  br i1 %cmp8, label %if.end, label %if.then, !dbg !662

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !663, !tbaa !348
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str28, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #6, !dbg !663
  tail call void @exit(i32 -1) #7, !dbg !665
  unreachable, !dbg !665

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !666
  %3 = load i32* %type, align 4, !dbg !666, !tbaa !353
  %cmp10 = icmp eq i32 %3, 2, !dbg !666
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !666

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !667, !tbaa !348
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([78 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow, i32 %3) #6, !dbg !667
  tail call void @exit(i32 -1) #7, !dbg !669
  unreachable, !dbg !669

if.end14:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !670
  %5 = load i32* %inc1, align 4, !dbg !670, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !174), !dbg !670
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !671
  %6 = load i32* %inc215, align 4, !dbg !671, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !172), !dbg !671
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !672
  %7 = load double** %entries16, align 8, !dbg !672, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !170), !dbg !672
  %call17 = tail call double* @ZV_entries(%struct._ZV* %rowZV) #6, !dbg !673
  tail call void @llvm.dbg.value(metadata !{double* %call17}, i64 0, metadata !171), !dbg !673
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !173), !dbg !674
  %cmp1858 = icmp sgt i32 %call, 0, !dbg !674
  br i1 %cmp1858, label %for.body.lr.ph, label %for.end, !dbg !674

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %irow, !dbg !670
  %8 = sext i32 %mul to i64, !dbg !674
  %9 = sext i32 %6 to i64, !dbg !674
  br label %for.body, !dbg !674

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv61 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next62, %for.body ], !dbg !674
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32, !dbg !676
  %mul19 = shl nsw i32 %10, 1, !dbg !676
  %idxprom = sext i32 %mul19 to i64, !dbg !676
  %arrayidx = getelementptr inbounds double* %call17, i64 %idxprom, !dbg !676
  %11 = load double* %arrayidx, align 8, !dbg !676, !tbaa !452
  %12 = trunc i64 %indvars.iv61 to i32, !dbg !676
  %mul20 = shl nsw i32 %12, 1, !dbg !676
  %idxprom21 = sext i32 %mul20 to i64, !dbg !676
  %arrayidx22 = getelementptr inbounds double* %7, i64 %idxprom21, !dbg !676
  store double %11, double* %arrayidx22, align 8, !dbg !676, !tbaa !452
  %add55 = or i32 %mul19, 1, !dbg !678
  %idxprom24 = sext i32 %add55 to i64, !dbg !678
  %arrayidx25 = getelementptr inbounds double* %call17, i64 %idxprom24, !dbg !678
  %13 = load double* %arrayidx25, align 8, !dbg !678, !tbaa !452
  %add2756 = or i32 %mul20, 1, !dbg !678
  %idxprom28 = sext i32 %add2756 to i64, !dbg !678
  %arrayidx29 = getelementptr inbounds double* %7, i64 %idxprom28, !dbg !678
  store double %13, double* %arrayidx29, align 8, !dbg !678, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !674
  %indvars.iv.next62 = add i64 %indvars.iv61, %9, !dbg !674
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !674
  %exitcond = icmp eq i32 %lftr.wideiv, %call, !dbg !674
  br i1 %exitcond, label %for.end, label %for.body, !dbg !674

for.end:                                          ; preds = %for.body, %if.end14
  ret void, !dbg !679
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumnDV(%struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !178), !dbg !680
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %colDV}, i64 0, metadata !179), !dbg !681
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !180), !dbg !682
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !683
  %cmp1 = icmp eq %struct._DV* %colDV, null, !dbg !683
  %or.cond = or i1 %cmp, %cmp1, !dbg !683
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !683

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @DV_size(%struct._DV* %colDV) #6, !dbg !683
  %n13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !683
  %0 = load i32* %n13, align 4, !dbg !683, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !186), !dbg !683
  %cmp4 = icmp ne i32 %call, %0, !dbg !683
  %cmp6 = icmp slt i32 %jcol, 0, !dbg !683
  %or.cond41 = or i1 %cmp4, %cmp6, !dbg !683
  br i1 %or.cond41, label %if.then, label %lor.lhs.false7, !dbg !683

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !683
  %1 = load i32* %n2, align 4, !dbg !683, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %jcol, !dbg !683
  br i1 %cmp8, label %if.end, label %if.then, !dbg !683

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !684, !tbaa !348
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str30, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #6, !dbg !684
  tail call void @exit(i32 -1) #7, !dbg !686
  unreachable, !dbg !686

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !687
  %3 = load i32* %type, align 4, !dbg !687, !tbaa !353
  %cmp10 = icmp eq i32 %3, 1, !dbg !687
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !687

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !688, !tbaa !348
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([78 x i8]* @.str31, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol, i32 %3) #6, !dbg !688
  tail call void @exit(i32 -1) #7, !dbg !690
  unreachable, !dbg !690

if.end14:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !691
  %5 = load i32* %inc2, align 4, !dbg !691, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !185), !dbg !691
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !692
  %6 = load i32* %inc115, align 4, !dbg !692, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !183), !dbg !692
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !693
  %7 = load double** %entries16, align 8, !dbg !693, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !182), !dbg !693
  %call17 = tail call double* @DV_entries(%struct._DV* %colDV) #6, !dbg !694
  tail call void @llvm.dbg.value(metadata !{double* %call17}, i64 0, metadata !181), !dbg !694
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !184), !dbg !695
  %cmp1842 = icmp sgt i32 %call, 0, !dbg !695
  br i1 %cmp1842, label %for.body.lr.ph, label %for.end, !dbg !695

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %jcol, !dbg !691
  %8 = sext i32 %mul to i64, !dbg !695
  %9 = sext i32 %6 to i64, !dbg !695
  br label %for.body, !dbg !695

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv45 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next46, %for.body ], !dbg !695
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call17, i64 %indvars.iv, !dbg !697
  %10 = load double* %arrayidx, align 8, !dbg !697, !tbaa !452
  %arrayidx20 = getelementptr inbounds double* %7, i64 %indvars.iv45, !dbg !697
  store double %10, double* %arrayidx20, align 8, !dbg !697, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !695
  %indvars.iv.next46 = add i64 %indvars.iv45, %9, !dbg !695
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !695
  %exitcond = icmp eq i32 %lftr.wideiv, %call, !dbg !695
  br i1 %exitcond, label %for.end, label %for.body, !dbg !695

for.end:                                          ; preds = %for.body, %if.end14
  ret void, !dbg !699
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumnZV(%struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !189), !dbg !700
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %colZV}, i64 0, metadata !190), !dbg !701
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !191), !dbg !702
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !703
  %cmp1 = icmp eq %struct._ZV* %colZV, null, !dbg !703
  %or.cond = or i1 %cmp, %cmp1, !dbg !703
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !703

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @ZV_size(%struct._ZV* %colZV) #6, !dbg !703
  %n13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !703
  %0 = load i32* %n13, align 4, !dbg !703, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !197), !dbg !703
  %cmp4 = icmp ne i32 %call, %0, !dbg !703
  %cmp6 = icmp slt i32 %jcol, 0, !dbg !703
  %or.cond57 = or i1 %cmp4, %cmp6, !dbg !703
  br i1 %or.cond57, label %if.then, label %lor.lhs.false7, !dbg !703

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !703
  %1 = load i32* %n2, align 4, !dbg !703, !tbaa !353
  %cmp8 = icmp sgt i32 %1, %jcol, !dbg !703
  br i1 %cmp8, label %if.end, label %if.then, !dbg !703

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !704, !tbaa !348
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str32, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #6, !dbg !704
  tail call void @exit(i32 -1) #7, !dbg !706
  unreachable, !dbg !706

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !707
  %3 = load i32* %type, align 4, !dbg !707, !tbaa !353
  %cmp10 = icmp eq i32 %3, 2, !dbg !707
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !707

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !708, !tbaa !348
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([81 x i8]* @.str33, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol, i32 %3) #6, !dbg !708
  tail call void @exit(i32 -1) #7, !dbg !710
  unreachable, !dbg !710

if.end14:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !711
  %5 = load i32* %inc2, align 4, !dbg !711, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !196), !dbg !711
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !712
  %6 = load i32* %inc115, align 4, !dbg !712, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !194), !dbg !712
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !713
  %7 = load double** %entries16, align 8, !dbg !713, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !193), !dbg !713
  %call17 = tail call double* @ZV_entries(%struct._ZV* %colZV) #6, !dbg !714
  tail call void @llvm.dbg.value(metadata !{double* %call17}, i64 0, metadata !192), !dbg !714
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !715
  %cmp1858 = icmp sgt i32 %call, 0, !dbg !715
  br i1 %cmp1858, label %for.body.lr.ph, label %for.end, !dbg !715

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %jcol, !dbg !711
  %8 = sext i32 %mul to i64, !dbg !715
  %9 = sext i32 %6 to i64, !dbg !715
  br label %for.body, !dbg !715

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv61 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next62, %for.body ], !dbg !715
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32, !dbg !717
  %mul19 = shl nsw i32 %10, 1, !dbg !717
  %idxprom = sext i32 %mul19 to i64, !dbg !717
  %arrayidx = getelementptr inbounds double* %call17, i64 %idxprom, !dbg !717
  %11 = load double* %arrayidx, align 8, !dbg !717, !tbaa !452
  %12 = trunc i64 %indvars.iv61 to i32, !dbg !717
  %mul20 = shl nsw i32 %12, 1, !dbg !717
  %idxprom21 = sext i32 %mul20 to i64, !dbg !717
  %arrayidx22 = getelementptr inbounds double* %7, i64 %idxprom21, !dbg !717
  store double %11, double* %arrayidx22, align 8, !dbg !717, !tbaa !452
  %add55 = or i32 %mul19, 1, !dbg !719
  %idxprom24 = sext i32 %add55 to i64, !dbg !719
  %arrayidx25 = getelementptr inbounds double* %call17, i64 %idxprom24, !dbg !719
  %13 = load double* %arrayidx25, align 8, !dbg !719, !tbaa !452
  %add2756 = or i32 %mul20, 1, !dbg !719
  %idxprom28 = sext i32 %add2756 to i64, !dbg !719
  %arrayidx29 = getelementptr inbounds double* %7, i64 %idxprom28, !dbg !719
  store double %13, double* %arrayidx29, align 8, !dbg !719, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !715
  %indvars.iv.next62 = add i64 %indvars.iv61, %9, !dbg !715
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !715
  %exitcond = icmp eq i32 %lftr.wideiv, %call, !dbg !715
  br i1 %exitcond, label %for.end, label %for.body, !dbg !715

for.end:                                          ; preds = %for.body, %if.end14
  ret void, !dbg !720
}

; Function Attrs: nounwind optsize uwtable
define void @A2_fillRandomUniform(%struct._A2* %a, double %lower, double %upper, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !202), !dbg !721
  call void @llvm.dbg.value(metadata !{double %lower}, i64 0, metadata !203), !dbg !722
  call void @llvm.dbg.value(metadata !{double %upper}, i64 0, metadata !204), !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !205), !dbg !724
  %0 = bitcast %struct._Drand* %drand to i8*, !dbg !725
  call void @llvm.lifetime.start(i64 72, i8* %0) #5, !dbg !725
  call void @llvm.dbg.declare(metadata !{%struct._Drand* %drand}, metadata !214), !dbg !725
  %cmp = icmp eq %struct._A2* %a, null, !dbg !726
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !726

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !726
  %1 = load i32* %n11, align 4, !dbg !726, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !212), !dbg !726
  %cmp2 = icmp slt i32 %1, 1, !dbg !726
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !726

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !726
  %2 = load i32* %n24, align 4, !dbg !726, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !213), !dbg !726
  %cmp5 = icmp slt i32 %2, 1, !dbg !726
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !726

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !726
  %3 = load i32* %inc17, align 4, !dbg !726, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !208), !dbg !726
  %cmp8 = icmp slt i32 %3, 1, !dbg !726
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !726

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !726
  %4 = load i32* %inc210, align 4, !dbg !726, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !209), !dbg !726
  %cmp11 = icmp slt i32 %4, 1, !dbg !726
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !726

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !726
  %5 = load double** %entries13, align 8, !dbg !726, !tbaa !348
  call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !206), !dbg !726
  %cmp14 = icmp eq double* %5, null, !dbg !726
  br i1 %cmp14, label %if.then, label %if.end, !dbg !726

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !727, !tbaa !348
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str34, i64 0, i64 0), %struct._A2* %a, double %lower, double %upper, i32 %seed) #6, !dbg !727
  call void @exit(i32 -1) #7, !dbg !729
  unreachable, !dbg !729

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !730
  %7 = load i32* %type, align 4, !dbg !730, !tbaa !353
  %.off = add i32 %7, -1, !dbg !730
  %switch = icmp ult i32 %.off, 2, !dbg !730
  br i1 %switch, label %if.end22, label %if.then19, !dbg !730

if.then19:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !731, !tbaa !348
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([106 x i8]* @.str35, i64 0, i64 0), %struct._A2* %a, double %lower, double %upper, i32 %seed, i32 %7) #6, !dbg !731
  call void @exit(i32 -1) #7, !dbg !733
  unreachable, !dbg !733

if.end22:                                         ; preds = %if.end
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !734
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !735
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !736
  call void @Drand_setUniform(%struct._Drand* %drand, double %lower, double %upper) #6, !dbg !737
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !738
  %cmp2378 = icmp sgt i32 %2, 0, !dbg !738
  br i1 %cmp2378, label %for.cond24.preheader.lr.ph, label %for.end48, !dbg !738

for.cond24.preheader.lr.ph:                       ; preds = %if.end22
  %cmp2576 = icmp sgt i32 %1, 0, !dbg !740
  br label %for.cond24.preheader, !dbg !738

for.cond24.preheader:                             ; preds = %for.inc46, %for.cond24.preheader.lr.ph
  %j.079 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc47, %for.inc46 ]
  br i1 %cmp2576, label %for.body26.lr.ph, label %for.inc46, !dbg !740

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.079, %4, !dbg !743
  br label %for.body26, !dbg !740

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !743
  %mul = mul nsw i32 %9, %3, !dbg !743
  %add = add nsw i32 %mul, %mul27, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !211), !dbg !743
  %10 = load i32* %type, align 4, !dbg !745, !tbaa !353
  switch i32 %10, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ], !dbg !745

if.then30:                                        ; preds = %for.body26
  %call31 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !746
  %idxprom = sext i32 %add to i64, !dbg !746
  %arrayidx = getelementptr inbounds double* %5, i64 %idxprom, !dbg !746
  store double %call31, double* %arrayidx, align 8, !dbg !746, !tbaa !452
  br label %for.inc, !dbg !748

if.then34:                                        ; preds = %for.body26
  %call35 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !749
  %mul36 = shl nsw i32 %add, 1, !dbg !749
  %idxprom37 = sext i32 %mul36 to i64, !dbg !749
  %arrayidx38 = getelementptr inbounds double* %5, i64 %idxprom37, !dbg !749
  store double %call35, double* %arrayidx38, align 8, !dbg !749, !tbaa !452
  %call39 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !751
  %add4175 = or i32 %mul36, 1, !dbg !751
  %idxprom42 = sext i32 %add4175 to i64, !dbg !751
  %arrayidx43 = getelementptr inbounds double* %5, i64 %idxprom42, !dbg !751
  store double %call39, double* %arrayidx43, align 8, !dbg !751, !tbaa !452
  br label %for.inc, !dbg !752

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then34
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !740
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !740
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !740
  br i1 %exitcond, label %for.inc46, label %for.body26, !dbg !740

for.inc46:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc47 = add nsw i32 %j.079, 1, !dbg !738
  call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !210), !dbg !738
  %exitcond80 = icmp eq i32 %inc47, %2, !dbg !738
  br i1 %exitcond80, label %for.end48, label %for.cond24.preheader, !dbg !738

for.end48:                                        ; preds = %for.inc46, %if.end22
  call void @llvm.lifetime.end(i64 72, i8* %0) #5, !dbg !753
  ret void, !dbg !753
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_init(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #4

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #4

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @A2_fillRandomNormal(%struct._A2* %a, double %mean, double %variance, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !230), !dbg !754
  call void @llvm.dbg.value(metadata !{double %mean}, i64 0, metadata !231), !dbg !755
  call void @llvm.dbg.value(metadata !{double %variance}, i64 0, metadata !232), !dbg !756
  call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !233), !dbg !757
  %0 = bitcast %struct._Drand* %drand to i8*, !dbg !758
  call void @llvm.lifetime.start(i64 72, i8* %0) #5, !dbg !758
  call void @llvm.dbg.declare(metadata !{%struct._Drand* %drand}, metadata !242), !dbg !758
  %cmp = icmp eq %struct._A2* %a, null, !dbg !759
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !759

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !759
  %1 = load i32* %n11, align 4, !dbg !759, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !240), !dbg !759
  %cmp2 = icmp slt i32 %1, 1, !dbg !759
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !759

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !759
  %2 = load i32* %n24, align 4, !dbg !759, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !241), !dbg !759
  %cmp5 = icmp slt i32 %2, 1, !dbg !759
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !759

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !759
  %3 = load i32* %inc17, align 4, !dbg !759, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !236), !dbg !759
  %cmp8 = icmp slt i32 %3, 1, !dbg !759
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !759

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !759
  %4 = load i32* %inc210, align 4, !dbg !759, !tbaa !353
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !237), !dbg !759
  %cmp11 = icmp slt i32 %4, 1, !dbg !759
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !759

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !759
  %5 = load double** %entries13, align 8, !dbg !759, !tbaa !348
  call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !234), !dbg !759
  %cmp14 = icmp eq double* %5, null, !dbg !759
  br i1 %cmp14, label %if.then, label %if.end, !dbg !759

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !760, !tbaa !348
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str36, i64 0, i64 0), %struct._A2* %a, i32 %seed) #6, !dbg !760
  call void @exit(i32 -1) #7, !dbg !762
  unreachable, !dbg !762

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !763
  %7 = load i32* %type, align 4, !dbg !763, !tbaa !353
  %.off = add i32 %7, -1, !dbg !763
  %switch = icmp ult i32 %.off, 2, !dbg !763
  br i1 %switch, label %if.end22, label %if.then19, !dbg !763

if.then19:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !764, !tbaa !348
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([105 x i8]* @.str37, i64 0, i64 0), %struct._A2* %a, double %mean, double %variance, i32 %seed, i32 %7) #6, !dbg !764
  call void @exit(i32 -1) #7, !dbg !766
  unreachable, !dbg !766

if.end22:                                         ; preds = %if.end
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !767
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !768
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !769
  call void @Drand_setUniform(%struct._Drand* %drand, double %mean, double %variance) #6, !dbg !770
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !238), !dbg !771
  %cmp2376 = icmp sgt i32 %2, 0, !dbg !771
  br i1 %cmp2376, label %for.cond24.preheader.lr.ph, label %for.end48, !dbg !771

for.cond24.preheader.lr.ph:                       ; preds = %if.end22
  %cmp2574 = icmp sgt i32 %1, 0, !dbg !773
  br label %for.cond24.preheader, !dbg !771

for.cond24.preheader:                             ; preds = %for.inc46, %for.cond24.preheader.lr.ph
  %j.077 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc47, %for.inc46 ]
  br i1 %cmp2574, label %for.body26.lr.ph, label %for.inc46, !dbg !773

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.077, %4, !dbg !776
  br label %for.body26, !dbg !773

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %9 = trunc i64 %indvars.iv to i32, !dbg !776
  %mul = mul nsw i32 %9, %3, !dbg !776
  %add = add nsw i32 %mul, %mul27, !dbg !776
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !239), !dbg !776
  %10 = load i32* %type, align 4, !dbg !778, !tbaa !353
  switch i32 %10, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ], !dbg !778

if.then30:                                        ; preds = %for.body26
  %call31 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !779
  %idxprom = sext i32 %add to i64, !dbg !779
  %arrayidx = getelementptr inbounds double* %5, i64 %idxprom, !dbg !779
  store double %call31, double* %arrayidx, align 8, !dbg !779, !tbaa !452
  br label %for.inc, !dbg !781

if.then34:                                        ; preds = %for.body26
  %call35 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !782
  %mul36 = shl nsw i32 %add, 1, !dbg !782
  %idxprom37 = sext i32 %mul36 to i64, !dbg !782
  %arrayidx38 = getelementptr inbounds double* %5, i64 %idxprom37, !dbg !782
  store double %call35, double* %arrayidx38, align 8, !dbg !782, !tbaa !452
  %call39 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !784
  %add4173 = or i32 %mul36, 1, !dbg !784
  %idxprom42 = sext i32 %add4173 to i64, !dbg !784
  %arrayidx43 = getelementptr inbounds double* %5, i64 %idxprom42, !dbg !784
  store double %call39, double* %arrayidx43, align 8, !dbg !784, !tbaa !452
  br label %for.inc, !dbg !785

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then34
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !773
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !773
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !773
  br i1 %exitcond, label %for.inc46, label %for.body26, !dbg !773

for.inc46:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc47 = add nsw i32 %j.077, 1, !dbg !771
  call void @llvm.dbg.value(metadata !{i32 %inc47}, i64 0, metadata !238), !dbg !771
  %exitcond78 = icmp eq i32 %inc47, %2, !dbg !771
  br i1 %exitcond78, label %for.end48, label %for.cond24.preheader, !dbg !771

for.end48:                                        ; preds = %for.inc46, %if.end22
  call void @llvm.lifetime.end(i64 72, i8* %0) #5, !dbg !786
  ret void, !dbg !786
}

; Function Attrs: nounwind optsize uwtable
define void @A2_fillWithIdentity(%struct._A2* %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !245), !dbg !787
  %cmp = icmp eq %struct._A2* %a, null, !dbg !788
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !788

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !788
  %0 = load i32* %n1, align 4, !dbg !788, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !252), !dbg !788
  %cmp1 = icmp slt i32 %0, 1, !dbg !788
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !788

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !788
  %1 = load i32* %n2, align 4, !dbg !788, !tbaa !353
  %cmp3 = icmp eq i32 %0, %1, !dbg !788
  br i1 %cmp3, label %lor.lhs.false4, label %if.then, !dbg !788

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %inc15 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !788
  %2 = load i32* %inc15, align 4, !dbg !788, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !249), !dbg !788
  %cmp6 = icmp slt i32 %2, 1, !dbg !788
  br i1 %cmp6, label %if.then, label %lor.lhs.false7, !dbg !788

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %inc28 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !788
  %3 = load i32* %inc28, align 4, !dbg !788, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !250), !dbg !788
  %cmp9 = icmp slt i32 %3, 1, !dbg !788
  br i1 %cmp9, label %if.then, label %lor.lhs.false10, !dbg !788

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %cmp11 = icmp eq i32 %2, 1, !dbg !788
  %cmp12 = icmp eq i32 %3, 1, !dbg !788
  %or.cond = or i1 %cmp11, %cmp12, !dbg !788
  br i1 %or.cond, label %lor.lhs.false13, label %if.then, !dbg !788

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %entries14 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !788
  %4 = load double** %entries14, align 8, !dbg !788, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !246), !dbg !788
  %cmp15 = icmp eq double* %4, null, !dbg !788
  br i1 %cmp15, label %if.then, label %if.end, !dbg !788

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false2, %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !789, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([53 x i8]* @.str38, i64 0, i64 0), %struct._A2* %a) #6, !dbg !789
  tail call void @exit(i32 -1) #7, !dbg !791
  unreachable, !dbg !791

if.end:                                           ; preds = %lor.lhs.false13
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !792
  %6 = load i32* %type, align 4, !dbg !792, !tbaa !353
  %.off = add i32 %6, -1, !dbg !792
  %switch = icmp ult i32 %.off, 2, !dbg !792
  br i1 %switch, label %if.end23, label %if.then20, !dbg !792

if.then20:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !793, !tbaa !348
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([96 x i8]* @.str39, i64 0, i64 0), %struct._A2* %a, i32 %6) #6, !dbg !793
  tail call void @exit(i32 -1) #7, !dbg !795
  unreachable, !dbg !795

if.end23:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !248), !dbg !796
  tail call void @A2_zero(%struct._A2* %a) #8, !dbg !797
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !251), !dbg !798
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !247), !dbg !798
  %cmp2559 = icmp sgt i32 %0, 0, !dbg !798
  br i1 %cmp2559, label %for.body.lr.ph, label %for.end, !dbg !798

for.body.lr.ph:                                   ; preds = %if.end23
  %cond = select i1 %cmp11, i32 %3, i32 %2, !dbg !796
  %8 = load i32* %type, align 4, !dbg !800, !tbaa !353
  %add = add nsw i32 %cond, 1, !dbg !798
  %9 = sext i32 %add to i64
  br label %for.body, !dbg !798

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc ]
  switch i32 %8, label %for.inc [
    i32 1, label %if.then28
    i32 2, label %if.then31
  ], !dbg !800

if.then28:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds double* %4, i64 %indvars.iv, !dbg !802
  store double 1.000000e+00, double* %arrayidx, align 8, !dbg !802, !tbaa !452
  br label %for.inc, !dbg !804

if.then31:                                        ; preds = %for.body
  %10 = trunc i64 %indvars.iv to i32, !dbg !805
  %mul = shl nsw i32 %10, 1, !dbg !805
  %idxprom32 = sext i32 %mul to i64, !dbg !805
  %arrayidx33 = getelementptr inbounds double* %4, i64 %idxprom32, !dbg !805
  store double 1.000000e+00, double* %arrayidx33, align 8, !dbg !805, !tbaa !452
  br label %for.inc, !dbg !807

for.inc:                                          ; preds = %for.body, %if.then28, %if.then31
  %inc36 = add nsw i32 %j.060, 1, !dbg !798
  tail call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !251), !dbg !798
  %indvars.iv.next = add i64 %indvars.iv, %9, !dbg !798
  %exitcond = icmp eq i32 %inc36, %0, !dbg !798
  br i1 %exitcond, label %for.end, label %for.body, !dbg !798

for.end:                                          ; preds = %for.inc, %if.end23
  ret void, !dbg !808
}

; Function Attrs: nounwind optsize uwtable
define void @A2_zero(%struct._A2* %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !255), !dbg !809
  %cmp = icmp eq %struct._A2* %a, null, !dbg !810
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !810

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !810
  %0 = load i32* %n11, align 4, !dbg !810, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !262), !dbg !810
  %cmp2 = icmp slt i32 %0, 1, !dbg !810
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !810

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !810
  %1 = load i32* %n24, align 4, !dbg !810, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !263), !dbg !810
  %cmp5 = icmp slt i32 %1, 1, !dbg !810
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !810

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !810
  %2 = load i32* %inc17, align 4, !dbg !810, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !258), !dbg !810
  %cmp8 = icmp slt i32 %2, 1, !dbg !810
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !810

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !810
  %3 = load i32* %inc210, align 4, !dbg !810, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !259), !dbg !810
  %cmp11 = icmp slt i32 %3, 1, !dbg !810
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !810

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !810
  %4 = load double** %entries13, align 8, !dbg !810, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !256), !dbg !810
  %cmp14 = icmp eq double* %4, null, !dbg !810
  br i1 %cmp14, label %if.then, label %if.end, !dbg !810

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !811, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8]* @.str40, i64 0, i64 0), %struct._A2* %a) #6, !dbg !811
  tail call void @exit(i32 -1) #7, !dbg !813
  unreachable, !dbg !813

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !814
  %6 = load i32* %type, align 4, !dbg !814, !tbaa !353
  %.off = add i32 %6, -1, !dbg !814
  %switch = icmp ult i32 %.off, 2, !dbg !814
  br i1 %switch, label %for.cond.preheader, label %if.then19, !dbg !814

for.cond.preheader:                               ; preds = %if.end
  %cmp2369 = icmp sgt i32 %1, 0, !dbg !815
  br i1 %cmp2369, label %for.cond24.preheader.lr.ph, label %for.end45, !dbg !815

for.cond24.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp2567 = icmp sgt i32 %0, 0, !dbg !817
  br label %for.cond24.preheader, !dbg !815

if.then19:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !820, !tbaa !348
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([84 x i8]* @.str41, i64 0, i64 0), %struct._A2* %a, i32 %6) #6, !dbg !820
  tail call void @exit(i32 -1) #7, !dbg !822
  unreachable, !dbg !822

for.cond24.preheader:                             ; preds = %for.inc43, %for.cond24.preheader.lr.ph
  %j.070 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc44, %for.inc43 ]
  br i1 %cmp2567, label %for.body26.lr.ph, label %for.inc43, !dbg !817

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.070, %3, !dbg !823
  br label %for.body26, !dbg !817

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %8 = trunc i64 %indvars.iv to i32, !dbg !823
  %mul = mul nsw i32 %8, %2, !dbg !823
  %add = add nsw i32 %mul, %mul27, !dbg !823
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !261), !dbg !823
  switch i32 %6, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then33
  ], !dbg !825

if.then30:                                        ; preds = %for.body26
  %idxprom = sext i32 %add to i64, !dbg !826
  %arrayidx = getelementptr inbounds double* %4, i64 %idxprom, !dbg !826
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !826, !tbaa !452
  br label %for.inc, !dbg !828

if.then33:                                        ; preds = %for.body26
  %mul34 = shl nsw i32 %add, 1, !dbg !829
  %idxprom35 = sext i32 %mul34 to i64, !dbg !829
  %arrayidx36 = getelementptr inbounds double* %4, i64 %idxprom35, !dbg !829
  store double 0.000000e+00, double* %arrayidx36, align 8, !dbg !829, !tbaa !452
  %add3866 = or i32 %mul34, 1, !dbg !831
  %idxprom39 = sext i32 %add3866 to i64, !dbg !831
  %arrayidx40 = getelementptr inbounds double* %4, i64 %idxprom39, !dbg !831
  store double 0.000000e+00, double* %arrayidx40, align 8, !dbg !831, !tbaa !452
  br label %for.inc, !dbg !832

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then33
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !817
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !817
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !817
  br i1 %exitcond, label %for.inc43, label %for.body26, !dbg !817

for.inc43:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc44 = add nsw i32 %j.070, 1, !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %inc44}, i64 0, metadata !260), !dbg !815
  %exitcond71 = icmp eq i32 %inc44, %1, !dbg !815
  br i1 %exitcond71, label %for.end45, label %for.cond24.preheader, !dbg !815

for.end45:                                        ; preds = %for.inc43, %for.cond.preheader
  ret void, !dbg !833
}

; Function Attrs: nounwind optsize uwtable
define void @A2_copy(%struct._A2* %A, %struct._A2* %B) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %A}, i64 0, metadata !268), !dbg !834
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %B}, i64 0, metadata !269), !dbg !835
  %cmp = icmp eq %struct._A2* %A, null, !dbg !836
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !836

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !348
  %call391 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* null, %struct._A2* %B) #6, !dbg !837
  br label %if.end, !dbg !839

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 1, !dbg !836
  %1 = load i32* %n1, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !284), !dbg !836
  %cmp1 = icmp slt i32 %1, 0, !dbg !836
  br i1 %cmp1, label %if.then.thread392, label %lor.lhs.false2, !dbg !836

if.then.thread392:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !348
  %call393 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #6, !dbg !837
  br label %if.then28, !dbg !839

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 2, !dbg !836
  %3 = load i32* %n2, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !281), !dbg !836
  %cmp3 = icmp slt i32 %3, 0, !dbg !836
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !836

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %inc1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 3, !dbg !836
  %4 = load i32* %inc1, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !272), !dbg !836
  %cmp5 = icmp slt i32 %4, 1, !dbg !836
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !836

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %inc2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 4, !dbg !836
  %5 = load i32* %inc2, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !274), !dbg !836
  %cmp7 = icmp slt i32 %5, 1, !dbg !836
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !836

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %entries = getelementptr inbounds %struct._A2* %A, i64 0, i32 6, !dbg !836
  %6 = load double** %entries, align 8, !dbg !836, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !270), !dbg !836
  %cmp9 = icmp eq double* %6, null, !dbg !836
  %cmp11 = icmp eq %struct._A2* %B, null, !dbg !836
  %or.cond = or i1 %cmp9, %cmp11, !dbg !836
  br i1 %or.cond, label %if.then, label %lor.lhs.false12, !dbg !836

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %n113 = getelementptr inbounds %struct._A2* %B, i64 0, i32 1, !dbg !836
  %7 = load i32* %n113, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !285), !dbg !836
  %cmp14 = icmp slt i32 %7, 0, !dbg !836
  br i1 %cmp14, label %if.then, label %lor.lhs.false15, !dbg !836

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %n216 = getelementptr inbounds %struct._A2* %B, i64 0, i32 2, !dbg !836
  %8 = load i32* %n216, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !282), !dbg !836
  %cmp17 = icmp slt i32 %8, 0, !dbg !836
  br i1 %cmp17, label %if.then, label %lor.lhs.false18, !dbg !836

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %inc119 = getelementptr inbounds %struct._A2* %B, i64 0, i32 3, !dbg !836
  %9 = load i32* %inc119, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !273), !dbg !836
  %cmp20 = icmp slt i32 %9, 1, !dbg !836
  br i1 %cmp20, label %if.then, label %lor.lhs.false21, !dbg !836

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %inc222 = getelementptr inbounds %struct._A2* %B, i64 0, i32 4, !dbg !836
  %10 = load i32* %inc222, align 4, !dbg !836, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !275), !dbg !836
  %cmp23 = icmp slt i32 %10, 1, !dbg !836
  br i1 %cmp23, label %if.then, label %lor.lhs.false24, !dbg !836

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %entries25 = getelementptr inbounds %struct._A2* %B, i64 0, i32 6, !dbg !836
  %11 = load double** %entries25, align 8, !dbg !836, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %11}, i64 0, metadata !271), !dbg !836
  %cmp26 = icmp eq double* %11, null, !dbg !836
  br i1 %cmp26, label %if.then, label %if.end34, !dbg !836

if.then:                                          ; preds = %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #6, !dbg !837
  br label %if.then28, !dbg !839

if.then28:                                        ; preds = %if.then, %if.then.thread392
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !840, !tbaa !348
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %13), !dbg !840
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !842, !tbaa !348
  tail call void @A2_writeStats(%struct._A2* %A, %struct._IO_FILE* %15) #6, !dbg !842
  br label %if.end, !dbg !843

if.end:                                           ; preds = %if.then.thread, %if.then28
  %cmp30 = icmp eq %struct._A2* %B, null, !dbg !844
  br i1 %cmp30, label %if.end33, label %if.then31, !dbg !844

if.then31:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !845, !tbaa !348
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str44, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %16), !dbg !845
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !847, !tbaa !348
  tail call void @A2_writeStats(%struct._A2* %B, %struct._IO_FILE* %18) #6, !dbg !847
  br label %if.end33, !dbg !848

if.end33:                                         ; preds = %if.end, %if.then31
  tail call void @exit(i32 -1) #7, !dbg !849
  unreachable, !dbg !849

if.end34:                                         ; preds = %lor.lhs.false24
  %type = getelementptr inbounds %struct._A2* %A, i64 0, i32 0, !dbg !850
  %19 = load i32* %type, align 4, !dbg !850, !tbaa !353
  %.off = add i32 %19, -1, !dbg !850
  %switch = icmp ult i32 %.off, 2, !dbg !850
  br i1 %switch, label %if.end42, label %if.then39, !dbg !850

if.then39:                                        ; preds = %if.end34
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !851, !tbaa !348
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19) #6, !dbg !851
  tail call void @exit(i32 -1) #7, !dbg !853
  unreachable, !dbg !853

if.end42:                                         ; preds = %if.end34
  %type43 = getelementptr inbounds %struct._A2* %B, i64 0, i32 0, !dbg !854
  %21 = load i32* %type43, align 4, !dbg !854, !tbaa !353
  %.off389 = add i32 %21, -1, !dbg !854
  %switch390 = icmp ult i32 %.off389, 2, !dbg !854
  br i1 %switch390, label %if.end51, label %if.then48, !dbg !854

if.then48:                                        ; preds = %if.end42
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !855, !tbaa !348
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %21) #6, !dbg !855
  tail call void @exit(i32 -1) #7, !dbg !857
  unreachable, !dbg !857

if.end51:                                         ; preds = %if.end42
  %cmp54 = icmp eq i32 %19, %21, !dbg !858
  br i1 %cmp54, label %if.end59, label %if.then55, !dbg !858

if.then55:                                        ; preds = %if.end51
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !859, !tbaa !348
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([79 x i8]* @.str46, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19, i32 %21) #6, !dbg !859
  tail call void @exit(i32 -1) #7, !dbg !861
  unreachable, !dbg !861

if.end59:                                         ; preds = %if.end51
  %cmp60 = icmp sle i32 %1, %7, !dbg !862
  %cond = select i1 %cmp60, i32 %1, i32 %7, !dbg !862
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !283), !dbg !862
  %cmp61 = icmp sle i32 %3, %8, !dbg !863
  %cond65 = select i1 %cmp61, i32 %3, i32 %8, !dbg !863
  tail call void @llvm.dbg.value(metadata !{i32 %cond65}, i64 0, metadata !280), !dbg !863
  switch i32 %19, label %if.end246 [
    i32 1, label %if.then68
    i32 2, label %if.then132
  ], !dbg !864

if.then68:                                        ; preds = %if.end59
  %cmp69 = icmp eq i32 %4, 1, !dbg !865
  %cmp70 = icmp eq i32 %9, 1, !dbg !865
  %or.cond385 = and i1 %cmp69, %cmp70, !dbg !865
  br i1 %or.cond385, label %for.cond.preheader, label %if.else, !dbg !865

for.cond.preheader:                               ; preds = %if.then68
  %cmp72396 = icmp sgt i32 %cond65, 0, !dbg !866
  br i1 %cmp72396, label %for.cond73.preheader.lr.ph, label %if.end246, !dbg !866

for.cond73.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp74394 = icmp sgt i32 %cond, 0, !dbg !868
  %idx.ext = sext i32 %5 to i64, !dbg !871
  %idx.ext78 = sext i32 %10 to i64, !dbg !872
  %24 = xor i32 %1, -1, !dbg !866
  %25 = xor i32 %7, -1, !dbg !866
  %26 = icmp sgt i32 %24, %25, !dbg !868
  %smax = select i1 %26, i32 %24, i32 %25, !dbg !868
  %27 = xor i32 %smax, -1, !dbg !866
  %28 = xor i32 %3, -1, !dbg !866
  %29 = xor i32 %8, -1, !dbg !866
  %30 = icmp sgt i32 %28, %29
  %smax431 = select i1 %30, i32 %28, i32 %29
  %31 = xor i32 %smax431, -1, !dbg !866
  br label %for.cond73.preheader, !dbg !866

for.cond73.preheader:                             ; preds = %for.end, %for.cond73.preheader.lr.ph
  %colB.0399 = phi double* [ %11, %for.cond73.preheader.lr.ph ], [ %add.ptr79, %for.end ]
  %colA.0398 = phi double* [ %6, %for.cond73.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %jcol.0397 = phi i32 [ 0, %for.cond73.preheader.lr.ph ], [ %inc81, %for.end ]
  br i1 %cmp74394, label %for.body75, label %for.end, !dbg !868

for.body75:                                       ; preds = %for.cond73.preheader, %for.body75
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body75 ], [ 0, %for.cond73.preheader ]
  %arrayidx = getelementptr inbounds double* %colB.0399, i64 %indvars.iv, !dbg !873
  %32 = load double* %arrayidx, align 8, !dbg !873, !tbaa !452
  %arrayidx77 = getelementptr inbounds double* %colA.0398, i64 %indvars.iv, !dbg !873
  store double %32, double* %arrayidx77, align 8, !dbg !873, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !868
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !868
  %exitcond = icmp eq i32 %lftr.wideiv, %27, !dbg !868
  br i1 %exitcond, label %for.end, label %for.body75, !dbg !868

for.end:                                          ; preds = %for.body75, %for.cond73.preheader
  %add.ptr = getelementptr inbounds double* %colA.0398, i64 %idx.ext, !dbg !871
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !286), !dbg !871
  %add.ptr79 = getelementptr inbounds double* %colB.0399, i64 %idx.ext78, !dbg !872
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr79}, i64 0, metadata !289), !dbg !872
  %inc81 = add nsw i32 %jcol.0397, 1, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32 %inc81}, i64 0, metadata !277), !dbg !866
  %exitcond432 = icmp eq i32 %inc81, %31, !dbg !866
  br i1 %exitcond432, label %if.end246, label %for.cond73.preheader, !dbg !866

if.else:                                          ; preds = %if.then68
  %cmp83 = icmp eq i32 %5, 1, !dbg !875
  %cmp85 = icmp eq i32 %10, 1, !dbg !875
  %or.cond386 = and i1 %cmp83, %cmp85, !dbg !875
  %cmp88403 = icmp sgt i32 %cond, 0, !dbg !876
  br i1 %or.cond386, label %for.cond87.preheader, label %for.cond106.preheader, !dbg !875

for.cond106.preheader:                            ; preds = %if.else
  br i1 %cmp88403, label %for.cond109.preheader.lr.ph, label %if.end246, !dbg !878

for.cond109.preheader.lr.ph:                      ; preds = %for.cond106.preheader
  %cmp110406 = icmp sgt i32 %cond65, 0, !dbg !881
  %33 = xor i32 %3, -1, !dbg !878
  %34 = xor i32 %8, -1, !dbg !878
  %35 = icmp sgt i32 %33, %34, !dbg !881
  %smax443 = select i1 %35, i32 %33, i32 %34, !dbg !881
  %36 = xor i32 %smax443, -1, !dbg !878
  %37 = xor i32 %1, -1, !dbg !878
  %38 = xor i32 %7, -1, !dbg !878
  %39 = icmp sgt i32 %37, %38
  %smax446 = select i1 %39, i32 %37, i32 %38
  %40 = xor i32 %smax446, -1, !dbg !878
  br label %for.cond109.preheader, !dbg !878

for.cond87.preheader:                             ; preds = %if.else
  br i1 %cmp88403, label %for.cond90.preheader.lr.ph, label %if.end246, !dbg !876

for.cond90.preheader.lr.ph:                       ; preds = %for.cond87.preheader
  %cmp91400 = icmp sgt i32 %cond65, 0, !dbg !884
  %mul = shl nsw i32 %4, 1, !dbg !887
  %idx.ext100 = sext i32 %mul to i64, !dbg !887
  %41 = xor i32 %3, -1, !dbg !876
  %42 = xor i32 %8, -1, !dbg !876
  %43 = icmp sgt i32 %41, %42, !dbg !884
  %smax435 = select i1 %43, i32 %41, i32 %42, !dbg !884
  %44 = xor i32 %smax435, -1, !dbg !876
  %45 = xor i32 %1, -1, !dbg !876
  %46 = xor i32 %7, -1, !dbg !876
  %47 = icmp sgt i32 %45, %46
  %smax439 = select i1 %47, i32 %45, i32 %46
  %48 = xor i32 %smax439, -1, !dbg !876
  br label %for.cond90.preheader, !dbg !876

for.cond90.preheader:                             ; preds = %for.end99, %for.cond90.preheader.lr.ph
  %irow.1405 = phi i32 [ 0, %for.cond90.preheader.lr.ph ], [ %inc103, %for.end99 ]
  %rowA.0404 = phi double* [ %6, %for.cond90.preheader.lr.ph ], [ %add.ptr101, %for.end99 ]
  br i1 %cmp91400, label %for.body92, label %for.end99, !dbg !884

for.body92:                                       ; preds = %for.cond90.preheader, %for.body92
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %for.body92 ], [ 0, %for.cond90.preheader ]
  %arrayidx94 = getelementptr inbounds double* %11, i64 %indvars.iv433, !dbg !888
  %49 = load double* %arrayidx94, align 8, !dbg !888, !tbaa !452
  %arrayidx96 = getelementptr inbounds double* %rowA.0404, i64 %indvars.iv433, !dbg !888
  store double %49, double* %arrayidx96, align 8, !dbg !888, !tbaa !452
  %indvars.iv.next434 = add i64 %indvars.iv433, 1, !dbg !884
  %lftr.wideiv436 = trunc i64 %indvars.iv.next434 to i32, !dbg !884
  %exitcond437 = icmp eq i32 %lftr.wideiv436, %44, !dbg !884
  br i1 %exitcond437, label %for.end99, label %for.body92, !dbg !884

for.end99:                                        ; preds = %for.body92, %for.cond90.preheader
  %add.ptr101 = getelementptr inbounds double* %rowA.0404, i64 %idx.ext100, !dbg !887
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr101}, i64 0, metadata !290), !dbg !887
  %inc103 = add nsw i32 %irow.1405, 1, !dbg !876
  tail call void @llvm.dbg.value(metadata !{i32 %inc103}, i64 0, metadata !276), !dbg !876
  %exitcond440 = icmp eq i32 %inc103, %48, !dbg !876
  br i1 %exitcond440, label %if.end246, label %for.cond90.preheader, !dbg !876

for.cond109.preheader:                            ; preds = %for.inc124, %for.cond109.preheader.lr.ph
  %irow.2410 = phi i32 [ 0, %for.cond109.preheader.lr.ph ], [ %inc125, %for.inc124 ]
  br i1 %cmp110406, label %for.body111.lr.ph, label %for.inc124, !dbg !881

for.body111.lr.ph:                                ; preds = %for.cond109.preheader
  %mul112 = mul nsw i32 %irow.2410, %4, !dbg !890
  %mul114 = mul nsw i32 %irow.2410, %9, !dbg !892
  br label %for.body111, !dbg !881

for.body111:                                      ; preds = %for.body111, %for.body111.lr.ph
  %indvars.iv441 = phi i64 [ 0, %for.body111.lr.ph ], [ %indvars.iv.next442, %for.body111 ]
  %50 = trunc i64 %indvars.iv441 to i32, !dbg !890
  %mul113 = mul nsw i32 %50, %5, !dbg !890
  %add = add nsw i32 %mul113, %mul112, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !278), !dbg !890
  %mul115 = mul nsw i32 %50, %10, !dbg !892
  %add116 = add nsw i32 %mul115, %mul114, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %add116}, i64 0, metadata !279), !dbg !892
  %idxprom117 = sext i32 %add116 to i64, !dbg !893
  %arrayidx118 = getelementptr inbounds double* %11, i64 %idxprom117, !dbg !893
  %51 = load double* %arrayidx118, align 8, !dbg !893, !tbaa !452
  %idxprom119 = sext i32 %add to i64, !dbg !893
  %arrayidx120 = getelementptr inbounds double* %6, i64 %idxprom119, !dbg !893
  store double %51, double* %arrayidx120, align 8, !dbg !893, !tbaa !452
  %indvars.iv.next442 = add i64 %indvars.iv441, 1, !dbg !881
  %lftr.wideiv444 = trunc i64 %indvars.iv.next442 to i32, !dbg !881
  %exitcond445 = icmp eq i32 %lftr.wideiv444, %36, !dbg !881
  br i1 %exitcond445, label %for.inc124, label %for.body111, !dbg !881

for.inc124:                                       ; preds = %for.body111, %for.cond109.preheader
  %inc125 = add nsw i32 %irow.2410, 1, !dbg !878
  tail call void @llvm.dbg.value(metadata !{i32 %inc125}, i64 0, metadata !276), !dbg !878
  %exitcond447 = icmp eq i32 %inc125, %40, !dbg !878
  br i1 %exitcond447, label %if.end246, label %for.cond109.preheader, !dbg !878

if.then132:                                       ; preds = %if.end59
  %cmp133 = icmp eq i32 %4, 1, !dbg !894
  %cmp135 = icmp eq i32 %9, 1, !dbg !894
  %or.cond387 = and i1 %cmp133, %cmp135, !dbg !894
  br i1 %or.cond387, label %for.cond139.preheader, label %if.else171, !dbg !894

for.cond139.preheader:                            ; preds = %if.then132
  %cmp140414 = icmp sgt i32 %cond65, 0, !dbg !895
  br i1 %cmp140414, label %for.cond142.preheader.lr.ph, label %if.end246, !dbg !895

for.cond142.preheader.lr.ph:                      ; preds = %for.cond139.preheader
  %cmp143411 = icmp sgt i32 %cond, 0, !dbg !897
  %mul162 = shl nsw i32 %5, 1, !dbg !900
  %idx.ext163 = sext i32 %mul162 to i64, !dbg !900
  %mul165 = shl nsw i32 %10, 1, !dbg !901
  %idx.ext166 = sext i32 %mul165 to i64, !dbg !901
  %52 = xor i32 %1, -1, !dbg !895
  %53 = xor i32 %7, -1, !dbg !895
  %54 = icmp sgt i32 %52, %53, !dbg !897
  %smax450 = select i1 %54, i32 %52, i32 %53, !dbg !897
  %55 = xor i32 %smax450, -1, !dbg !895
  %56 = xor i32 %3, -1, !dbg !895
  %57 = xor i32 %8, -1, !dbg !895
  %58 = icmp sgt i32 %56, %57
  %smax453 = select i1 %58, i32 %56, i32 %57
  %59 = xor i32 %smax453, -1, !dbg !895
  br label %for.cond142.preheader, !dbg !895

for.cond142.preheader:                            ; preds = %for.end161, %for.cond142.preheader.lr.ph
  %colB138.0417 = phi double* [ %11, %for.cond142.preheader.lr.ph ], [ %add.ptr167, %for.end161 ]
  %colA137.0416 = phi double* [ %6, %for.cond142.preheader.lr.ph ], [ %add.ptr164, %for.end161 ]
  %jcol.3415 = phi i32 [ 0, %for.cond142.preheader.lr.ph ], [ %inc169, %for.end161 ]
  br i1 %cmp143411, label %for.body144, label %for.end161, !dbg !897

for.body144:                                      ; preds = %for.cond142.preheader, %for.body144
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %for.body144 ], [ 0, %for.cond142.preheader ]
  %60 = trunc i64 %indvars.iv448 to i32, !dbg !902
  %mul145 = shl nsw i32 %60, 1, !dbg !902
  %idxprom146 = sext i32 %mul145 to i64, !dbg !902
  %arrayidx147 = getelementptr inbounds double* %colB138.0417, i64 %idxprom146, !dbg !902
  %61 = load double* %arrayidx147, align 8, !dbg !902, !tbaa !452
  %arrayidx150 = getelementptr inbounds double* %colA137.0416, i64 %idxprom146, !dbg !902
  store double %61, double* %arrayidx150, align 8, !dbg !902, !tbaa !452
  %add152384 = or i32 %mul145, 1, !dbg !904
  %idxprom153 = sext i32 %add152384 to i64, !dbg !904
  %arrayidx154 = getelementptr inbounds double* %colB138.0417, i64 %idxprom153, !dbg !904
  %62 = load double* %arrayidx154, align 8, !dbg !904, !tbaa !452
  %arrayidx158 = getelementptr inbounds double* %colA137.0416, i64 %idxprom153, !dbg !904
  store double %62, double* %arrayidx158, align 8, !dbg !904, !tbaa !452
  %indvars.iv.next449 = add i64 %indvars.iv448, 1, !dbg !897
  %lftr.wideiv451 = trunc i64 %indvars.iv.next449 to i32, !dbg !897
  %exitcond452 = icmp eq i32 %lftr.wideiv451, %55, !dbg !897
  br i1 %exitcond452, label %for.end161, label %for.body144, !dbg !897

for.end161:                                       ; preds = %for.body144, %for.cond142.preheader
  %add.ptr164 = getelementptr inbounds double* %colA137.0416, i64 %idx.ext163, !dbg !900
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr164}, i64 0, metadata !293), !dbg !900
  %add.ptr167 = getelementptr inbounds double* %colB138.0417, i64 %idx.ext166, !dbg !901
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr167}, i64 0, metadata !296), !dbg !901
  %inc169 = add nsw i32 %jcol.3415, 1, !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32 %inc169}, i64 0, metadata !277), !dbg !895
  %exitcond454 = icmp eq i32 %inc169, %59, !dbg !895
  br i1 %exitcond454, label %if.end246, label %for.cond142.preheader, !dbg !895

if.else171:                                       ; preds = %if.then132
  %cmp172 = icmp eq i32 %5, 1, !dbg !905
  %cmp174 = icmp eq i32 %10, 1, !dbg !905
  %or.cond388 = and i1 %cmp172, %cmp174, !dbg !905
  %cmp179421 = icmp sgt i32 %cond, 0, !dbg !906
  br i1 %or.cond388, label %for.cond178.preheader, label %for.cond211.preheader, !dbg !905

for.cond211.preheader:                            ; preds = %if.else171
  br i1 %cmp179421, label %for.cond214.preheader.lr.ph, label %if.end246, !dbg !908

for.cond214.preheader.lr.ph:                      ; preds = %for.cond211.preheader
  %cmp215425 = icmp sgt i32 %cond65, 0, !dbg !911
  %63 = xor i32 %3, -1, !dbg !908
  %64 = xor i32 %8, -1, !dbg !908
  %65 = icmp sgt i32 %63, %64, !dbg !911
  %smax464 = select i1 %65, i32 %63, i32 %64, !dbg !911
  %66 = xor i32 %smax464, -1, !dbg !908
  %67 = xor i32 %1, -1, !dbg !908
  %68 = xor i32 %7, -1, !dbg !908
  %69 = icmp sgt i32 %67, %68
  %smax467 = select i1 %69, i32 %67, i32 %68
  %70 = xor i32 %smax467, -1, !dbg !908
  br label %for.cond214.preheader, !dbg !908

for.cond178.preheader:                            ; preds = %if.else171
  br i1 %cmp179421, label %for.cond181.preheader.lr.ph, label %if.end246, !dbg !906

for.cond181.preheader.lr.ph:                      ; preds = %for.cond178.preheader
  %cmp182418 = icmp sgt i32 %cond65, 0, !dbg !914
  %mul201 = shl nsw i32 %4, 1, !dbg !917
  %idx.ext202 = sext i32 %mul201 to i64, !dbg !917
  %mul204 = shl nsw i32 %9, 1, !dbg !918
  %idx.ext205 = sext i32 %mul204 to i64, !dbg !918
  %71 = xor i32 %3, -1, !dbg !906
  %72 = xor i32 %8, -1, !dbg !906
  %73 = icmp sgt i32 %71, %72, !dbg !914
  %smax457 = select i1 %73, i32 %71, i32 %72, !dbg !914
  %74 = xor i32 %smax457, -1, !dbg !906
  %75 = xor i32 %1, -1, !dbg !906
  %76 = xor i32 %7, -1, !dbg !906
  %77 = icmp sgt i32 %75, %76
  %smax460 = select i1 %77, i32 %75, i32 %76
  %78 = xor i32 %smax460, -1, !dbg !906
  br label %for.cond181.preheader, !dbg !906

for.cond181.preheader:                            ; preds = %for.end200, %for.cond181.preheader.lr.ph
  %rowB177.0424 = phi double* [ %11, %for.cond181.preheader.lr.ph ], [ %add.ptr206, %for.end200 ]
  %rowA176.0423 = phi double* [ %6, %for.cond181.preheader.lr.ph ], [ %add.ptr203, %for.end200 ]
  %irow.4422 = phi i32 [ 0, %for.cond181.preheader.lr.ph ], [ %inc208, %for.end200 ]
  br i1 %cmp182418, label %for.body183, label %for.end200, !dbg !914

for.body183:                                      ; preds = %for.cond181.preheader, %for.body183
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %for.body183 ], [ 0, %for.cond181.preheader ]
  %79 = trunc i64 %indvars.iv455 to i32, !dbg !919
  %mul184 = shl nsw i32 %79, 1, !dbg !919
  %idxprom185 = sext i32 %mul184 to i64, !dbg !919
  %arrayidx186 = getelementptr inbounds double* %rowB177.0424, i64 %idxprom185, !dbg !919
  %80 = load double* %arrayidx186, align 8, !dbg !919, !tbaa !452
  %arrayidx189 = getelementptr inbounds double* %rowA176.0423, i64 %idxprom185, !dbg !919
  store double %80, double* %arrayidx189, align 8, !dbg !919, !tbaa !452
  %add191383 = or i32 %mul184, 1, !dbg !921
  %idxprom192 = sext i32 %add191383 to i64, !dbg !921
  %arrayidx193 = getelementptr inbounds double* %rowB177.0424, i64 %idxprom192, !dbg !921
  %81 = load double* %arrayidx193, align 8, !dbg !921, !tbaa !452
  %arrayidx197 = getelementptr inbounds double* %rowA176.0423, i64 %idxprom192, !dbg !921
  store double %81, double* %arrayidx197, align 8, !dbg !921, !tbaa !452
  %indvars.iv.next456 = add i64 %indvars.iv455, 1, !dbg !914
  %lftr.wideiv458 = trunc i64 %indvars.iv.next456 to i32, !dbg !914
  %exitcond459 = icmp eq i32 %lftr.wideiv458, %74, !dbg !914
  br i1 %exitcond459, label %for.end200, label %for.body183, !dbg !914

for.end200:                                       ; preds = %for.body183, %for.cond181.preheader
  %add.ptr203 = getelementptr inbounds double* %rowA176.0423, i64 %idx.ext202, !dbg !917
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr203}, i64 0, metadata !297), !dbg !917
  %add.ptr206 = getelementptr inbounds double* %rowB177.0424, i64 %idx.ext205, !dbg !918
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr206}, i64 0, metadata !299), !dbg !918
  %inc208 = add nsw i32 %irow.4422, 1, !dbg !906
  tail call void @llvm.dbg.value(metadata !{i32 %inc208}, i64 0, metadata !276), !dbg !906
  %exitcond461 = icmp eq i32 %inc208, %78, !dbg !906
  br i1 %exitcond461, label %if.end246, label %for.cond181.preheader, !dbg !906

for.cond214.preheader:                            ; preds = %for.inc240, %for.cond214.preheader.lr.ph
  %irow.5429 = phi i32 [ 0, %for.cond214.preheader.lr.ph ], [ %inc241, %for.inc240 ]
  br i1 %cmp215425, label %for.body216.lr.ph, label %for.inc240, !dbg !911

for.body216.lr.ph:                                ; preds = %for.cond214.preheader
  %mul217 = mul nsw i32 %irow.5429, %4, !dbg !922
  %mul220 = mul nsw i32 %irow.5429, %9, !dbg !924
  br label %for.body216, !dbg !911

for.body216:                                      ; preds = %for.body216, %for.body216.lr.ph
  %indvars.iv462 = phi i64 [ 0, %for.body216.lr.ph ], [ %indvars.iv.next463, %for.body216 ]
  %82 = trunc i64 %indvars.iv462 to i32, !dbg !922
  %mul218 = mul nsw i32 %82, %5, !dbg !922
  %add219 = add nsw i32 %mul218, %mul217, !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32 %add219}, i64 0, metadata !278), !dbg !922
  %mul221 = mul nsw i32 %82, %10, !dbg !924
  %add222 = add nsw i32 %mul221, %mul220, !dbg !924
  tail call void @llvm.dbg.value(metadata !{i32 %add222}, i64 0, metadata !279), !dbg !924
  %mul223 = shl nsw i32 %add222, 1, !dbg !925
  %idxprom224 = sext i32 %mul223 to i64, !dbg !925
  %arrayidx225 = getelementptr inbounds double* %11, i64 %idxprom224, !dbg !925
  %83 = load double* %arrayidx225, align 8, !dbg !925, !tbaa !452
  %mul226 = shl nsw i32 %add219, 1, !dbg !925
  %idxprom227 = sext i32 %mul226 to i64, !dbg !925
  %arrayidx228 = getelementptr inbounds double* %6, i64 %idxprom227, !dbg !925
  store double %83, double* %arrayidx228, align 8, !dbg !925, !tbaa !452
  %add230381 = or i32 %mul223, 1, !dbg !926
  %idxprom231 = sext i32 %add230381 to i64, !dbg !926
  %arrayidx232 = getelementptr inbounds double* %11, i64 %idxprom231, !dbg !926
  %84 = load double* %arrayidx232, align 8, !dbg !926, !tbaa !452
  %add234382 = or i32 %mul226, 1, !dbg !926
  %idxprom235 = sext i32 %add234382 to i64, !dbg !926
  %arrayidx236 = getelementptr inbounds double* %6, i64 %idxprom235, !dbg !926
  store double %84, double* %arrayidx236, align 8, !dbg !926, !tbaa !452
  %indvars.iv.next463 = add i64 %indvars.iv462, 1, !dbg !911
  %lftr.wideiv465 = trunc i64 %indvars.iv.next463 to i32, !dbg !911
  %exitcond466 = icmp eq i32 %lftr.wideiv465, %66, !dbg !911
  br i1 %exitcond466, label %for.inc240, label %for.body216, !dbg !911

for.inc240:                                       ; preds = %for.body216, %for.cond214.preheader
  %inc241 = add nsw i32 %irow.5429, 1, !dbg !908
  tail call void @llvm.dbg.value(metadata !{i32 %inc241}, i64 0, metadata !276), !dbg !908
  %exitcond468 = icmp eq i32 %inc241, %70, !dbg !908
  br i1 %exitcond468, label %if.end246, label %for.cond214.preheader, !dbg !908

if.end246:                                        ; preds = %for.cond211.preheader, %for.inc240, %for.cond178.preheader, %for.end200, %for.cond139.preheader, %for.end161, %for.cond106.preheader, %for.inc124, %for.cond87.preheader, %for.end99, %for.cond.preheader, %for.end, %if.end59
  ret void, !dbg !927
}

; Function Attrs: optsize
declare void @A2_writeStats(%struct._A2*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_sub(%struct._A2* %A, %struct._A2* %B) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %A}, i64 0, metadata !302), !dbg !928
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %B}, i64 0, metadata !303), !dbg !929
  %cmp = icmp eq %struct._A2* %A, null, !dbg !930
  %cmp1 = icmp eq %struct._A2* %B, null, !dbg !930
  %or.cond = or i1 %cmp, %cmp1, !dbg !930
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !930

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 1, !dbg !930
  %0 = load i32* %n1, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !318), !dbg !930
  %cmp3 = icmp slt i32 %0, 1, !dbg !930
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !930

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 2, !dbg !930
  %1 = load i32* %n2, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !315), !dbg !930
  %cmp5 = icmp slt i32 %1, 1, !dbg !930
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !930

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %inc1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 3, !dbg !930
  %2 = load i32* %inc1, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !306), !dbg !930
  %cmp7 = icmp slt i32 %2, 1, !dbg !930
  br i1 %cmp7, label %if.then, label %lor.lhs.false8, !dbg !930

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %inc2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 4, !dbg !930
  %3 = load i32* %inc2, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !308), !dbg !930
  %cmp9 = icmp slt i32 %3, 1, !dbg !930
  br i1 %cmp9, label %if.then, label %lor.lhs.false10, !dbg !930

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %n111 = getelementptr inbounds %struct._A2* %B, i64 0, i32 1, !dbg !930
  %4 = load i32* %n111, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !319), !dbg !930
  %cmp12 = icmp slt i32 %4, 1, !dbg !930
  br i1 %cmp12, label %if.then, label %lor.lhs.false13, !dbg !930

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %n214 = getelementptr inbounds %struct._A2* %B, i64 0, i32 2, !dbg !930
  %5 = load i32* %n214, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !316), !dbg !930
  %cmp15 = icmp slt i32 %5, 1, !dbg !930
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !930

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %inc117 = getelementptr inbounds %struct._A2* %B, i64 0, i32 3, !dbg !930
  %6 = load i32* %inc117, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !307), !dbg !930
  %cmp18 = icmp slt i32 %6, 1, !dbg !930
  br i1 %cmp18, label %if.then, label %lor.lhs.false19, !dbg !930

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %inc220 = getelementptr inbounds %struct._A2* %B, i64 0, i32 4, !dbg !930
  %7 = load i32* %inc220, align 4, !dbg !930, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !309), !dbg !930
  %cmp21 = icmp slt i32 %7, 1, !dbg !930
  br i1 %cmp21, label %if.then, label %lor.lhs.false22, !dbg !930

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %entries = getelementptr inbounds %struct._A2* %A, i64 0, i32 6, !dbg !930
  %8 = load double** %entries, align 8, !dbg !930, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !304), !dbg !930
  %cmp23 = icmp eq double* %8, null, !dbg !930
  br i1 %cmp23, label %if.then, label %lor.lhs.false24, !dbg !930

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %entries25 = getelementptr inbounds %struct._A2* %B, i64 0, i32 6, !dbg !930
  %9 = load double** %entries25, align 8, !dbg !930, !tbaa !348
  tail call void @llvm.dbg.value(metadata !{double* %9}, i64 0, metadata !305), !dbg !930
  %cmp26 = icmp eq double* %9, null, !dbg !930
  br i1 %cmp26, label %if.then, label %if.end34, !dbg !930

if.then:                                          ; preds = %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %entry
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !931, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([43 x i8]* @.str47, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #6, !dbg !931
  br i1 %cmp, label %if.end, label %if.then28, !dbg !933

if.then28:                                        ; preds = %if.then
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !934, !tbaa !348
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %11), !dbg !934
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !936, !tbaa !348
  tail call void @A2_writeStats(%struct._A2* %A, %struct._IO_FILE* %13) #6, !dbg !936
  br label %if.end, !dbg !937

if.end:                                           ; preds = %if.then, %if.then28
  br i1 %cmp1, label %if.end33, label %if.then31, !dbg !938

if.then31:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !939, !tbaa !348
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str44, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %14), !dbg !939
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !941, !tbaa !348
  tail call void @A2_writeStats(%struct._A2* %B, %struct._IO_FILE* %16) #6, !dbg !941
  br label %if.end33, !dbg !942

if.end33:                                         ; preds = %if.end, %if.then31
  tail call void @exit(i32 -1) #7, !dbg !943
  unreachable, !dbg !943

if.end34:                                         ; preds = %lor.lhs.false24
  %type = getelementptr inbounds %struct._A2* %A, i64 0, i32 0, !dbg !944
  %17 = load i32* %type, align 4, !dbg !944, !tbaa !353
  %.off = add i32 %17, -1, !dbg !944
  %switch = icmp ult i32 %.off, 2, !dbg !944
  br i1 %switch, label %if.end42, label %if.then39, !dbg !944

if.then39:                                        ; preds = %if.end34
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !945, !tbaa !348
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([86 x i8]* @.str48, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %17) #6, !dbg !945
  tail call void @exit(i32 -1) #7, !dbg !947
  unreachable, !dbg !947

if.end42:                                         ; preds = %if.end34
  %type43 = getelementptr inbounds %struct._A2* %B, i64 0, i32 0, !dbg !948
  %19 = load i32* %type43, align 4, !dbg !948, !tbaa !353
  %.off188 = add i32 %19, -1, !dbg !948
  %switch189 = icmp ult i32 %.off188, 2, !dbg !948
  br i1 %switch189, label %if.end51, label %if.then48, !dbg !948

if.then48:                                        ; preds = %if.end42
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !949, !tbaa !348
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([86 x i8]* @.str48, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19) #6, !dbg !949
  tail call void @exit(i32 -1) #7, !dbg !951
  unreachable, !dbg !951

if.end51:                                         ; preds = %if.end42
  %cmp54 = icmp eq i32 %17, %19, !dbg !952
  br i1 %cmp54, label %if.end59, label %if.then55, !dbg !952

if.then55:                                        ; preds = %if.end51
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !953, !tbaa !348
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([78 x i8]* @.str49, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %17, i32 %19) #6, !dbg !953
  tail call void @exit(i32 -1) #7, !dbg !955
  unreachable, !dbg !955

if.end59:                                         ; preds = %if.end51
  %cmp60 = icmp sle i32 %0, %4, !dbg !956
  %cond = select i1 %cmp60, i32 %0, i32 %4, !dbg !956
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !317), !dbg !956
  %cmp61 = icmp sle i32 %1, %5, !dbg !957
  %cond65 = select i1 %cmp61, i32 %1, i32 %5, !dbg !957
  tail call void @llvm.dbg.value(metadata !{i32 %cond65}, i64 0, metadata !314), !dbg !957
  switch i32 %17, label %if.end121 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond85.preheader
  ], !dbg !958

for.cond85.preheader:                             ; preds = %if.end59
  %cmp86197 = icmp sgt i32 %cond, 0, !dbg !959
  br i1 %cmp86197, label %for.cond88.preheader.lr.ph, label %if.end121, !dbg !959

for.cond88.preheader.lr.ph:                       ; preds = %for.cond85.preheader
  %cmp89194 = icmp sgt i32 %cond65, 0, !dbg !962
  %22 = xor i32 %1, -1, !dbg !959
  %23 = xor i32 %5, -1, !dbg !959
  %24 = icmp sgt i32 %22, %23, !dbg !962
  %smax203 = select i1 %24, i32 %22, i32 %23, !dbg !962
  %25 = xor i32 %smax203, -1, !dbg !959
  %26 = xor i32 %0, -1, !dbg !959
  %27 = xor i32 %4, -1, !dbg !959
  %28 = icmp sgt i32 %26, %27
  %smax206 = select i1 %28, i32 %26, i32 %27
  %29 = xor i32 %smax206, -1, !dbg !959
  br label %for.cond88.preheader, !dbg !959

for.cond.preheader:                               ; preds = %if.end59
  %cmp69192 = icmp sgt i32 %cond, 0, !dbg !965
  br i1 %cmp69192, label %for.cond70.preheader.lr.ph, label %if.end121, !dbg !965

for.cond70.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp71190 = icmp sgt i32 %cond65, 0, !dbg !968
  %30 = xor i32 %1, -1, !dbg !965
  %31 = xor i32 %5, -1, !dbg !965
  %32 = icmp sgt i32 %30, %31, !dbg !968
  %smax = select i1 %32, i32 %30, i32 %31, !dbg !968
  %33 = xor i32 %smax, -1, !dbg !965
  %34 = xor i32 %0, -1, !dbg !965
  %35 = xor i32 %4, -1, !dbg !965
  %36 = icmp sgt i32 %34, %35
  %smax199 = select i1 %36, i32 %34, i32 %35
  %37 = xor i32 %smax199, -1, !dbg !965
  br label %for.cond70.preheader, !dbg !965

for.cond70.preheader:                             ; preds = %for.inc79, %for.cond70.preheader.lr.ph
  %irow.0193 = phi i32 [ 0, %for.cond70.preheader.lr.ph ], [ %inc80, %for.inc79 ]
  br i1 %cmp71190, label %for.body72.lr.ph, label %for.inc79, !dbg !968

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %mul = mul nsw i32 %irow.0193, %2, !dbg !971
  %mul74 = mul nsw i32 %irow.0193, %6, !dbg !973
  br label %for.body72, !dbg !968

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next, %for.body72 ]
  %38 = trunc i64 %indvars.iv to i32, !dbg !971
  %mul73 = mul nsw i32 %38, %3, !dbg !971
  %add = add nsw i32 %mul73, %mul, !dbg !971
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !312), !dbg !971
  %mul75 = mul nsw i32 %38, %7, !dbg !973
  %add76 = add nsw i32 %mul75, %mul74, !dbg !973
  tail call void @llvm.dbg.value(metadata !{i32 %add76}, i64 0, metadata !313), !dbg !973
  %idxprom = sext i32 %add76 to i64, !dbg !974
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !974
  %39 = load double* %arrayidx, align 8, !dbg !974, !tbaa !452
  %idxprom77 = sext i32 %add to i64, !dbg !974
  %arrayidx78 = getelementptr inbounds double* %8, i64 %idxprom77, !dbg !974
  %40 = load double* %arrayidx78, align 8, !dbg !974, !tbaa !452
  %sub = fsub double %40, %39, !dbg !974
  store double %sub, double* %arrayidx78, align 8, !dbg !974, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !968
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !968
  %exitcond = icmp eq i32 %lftr.wideiv, %33, !dbg !968
  br i1 %exitcond, label %for.inc79, label %for.body72, !dbg !968

for.inc79:                                        ; preds = %for.body72, %for.cond70.preheader
  %inc80 = add nsw i32 %irow.0193, 1, !dbg !965
  tail call void @llvm.dbg.value(metadata !{i32 %inc80}, i64 0, metadata !310), !dbg !965
  %exitcond200 = icmp eq i32 %inc80, %37, !dbg !965
  br i1 %exitcond200, label %if.end121, label %for.cond70.preheader, !dbg !965

for.cond88.preheader:                             ; preds = %for.inc116, %for.cond88.preheader.lr.ph
  %irow.1198 = phi i32 [ 0, %for.cond88.preheader.lr.ph ], [ %inc118, %for.inc116 ]
  br i1 %cmp89194, label %for.body90.lr.ph, label %for.inc116, !dbg !962

for.body90.lr.ph:                                 ; preds = %for.cond88.preheader
  %mul91 = mul nsw i32 %irow.1198, %2, !dbg !975
  %mul94 = mul nsw i32 %irow.1198, %6, !dbg !977
  br label %for.body90, !dbg !962

for.body90:                                       ; preds = %for.body90, %for.body90.lr.ph
  %indvars.iv201 = phi i64 [ 0, %for.body90.lr.ph ], [ %indvars.iv.next202, %for.body90 ]
  %41 = trunc i64 %indvars.iv201 to i32, !dbg !975
  %mul92 = mul nsw i32 %41, %3, !dbg !975
  %add93 = add nsw i32 %mul92, %mul91, !dbg !975
  tail call void @llvm.dbg.value(metadata !{i32 %add93}, i64 0, metadata !312), !dbg !975
  %mul95 = mul nsw i32 %41, %7, !dbg !977
  %add96 = add nsw i32 %mul95, %mul94, !dbg !977
  tail call void @llvm.dbg.value(metadata !{i32 %add96}, i64 0, metadata !313), !dbg !977
  %mul97 = shl nsw i32 %add96, 1, !dbg !978
  %idxprom98 = sext i32 %mul97 to i64, !dbg !978
  %arrayidx99 = getelementptr inbounds double* %9, i64 %idxprom98, !dbg !978
  %42 = load double* %arrayidx99, align 8, !dbg !978, !tbaa !452
  %mul100 = shl nsw i32 %add93, 1, !dbg !978
  %idxprom101 = sext i32 %mul100 to i64, !dbg !978
  %arrayidx102 = getelementptr inbounds double* %8, i64 %idxprom101, !dbg !978
  %43 = load double* %arrayidx102, align 8, !dbg !978, !tbaa !452
  %sub103 = fsub double %43, %42, !dbg !978
  store double %sub103, double* %arrayidx102, align 8, !dbg !978, !tbaa !452
  %add105186 = or i32 %mul97, 1, !dbg !979
  %idxprom106 = sext i32 %add105186 to i64, !dbg !979
  %arrayidx107 = getelementptr inbounds double* %9, i64 %idxprom106, !dbg !979
  %44 = load double* %arrayidx107, align 8, !dbg !979, !tbaa !452
  %add109187 = or i32 %mul100, 1, !dbg !979
  %idxprom110 = sext i32 %add109187 to i64, !dbg !979
  %arrayidx111 = getelementptr inbounds double* %8, i64 %idxprom110, !dbg !979
  %45 = load double* %arrayidx111, align 8, !dbg !979, !tbaa !452
  %sub112 = fsub double %45, %44, !dbg !979
  store double %sub112, double* %arrayidx111, align 8, !dbg !979, !tbaa !452
  %indvars.iv.next202 = add i64 %indvars.iv201, 1, !dbg !962
  %lftr.wideiv204 = trunc i64 %indvars.iv.next202 to i32, !dbg !962
  %exitcond205 = icmp eq i32 %lftr.wideiv204, %25, !dbg !962
  br i1 %exitcond205, label %for.inc116, label %for.body90, !dbg !962

for.inc116:                                       ; preds = %for.body90, %for.cond88.preheader
  %inc118 = add nsw i32 %irow.1198, 1, !dbg !959
  tail call void @llvm.dbg.value(metadata !{i32 %inc118}, i64 0, metadata !310), !dbg !959
  %exitcond207 = icmp eq i32 %inc118, %29, !dbg !959
  br i1 %exitcond207, label %if.end121, label %for.cond88.preheader, !dbg !959

if.end121:                                        ; preds = %for.cond85.preheader, %for.inc116, %for.cond.preheader, %for.inc79, %if.end59
  ret void, !dbg !980
}

; Function Attrs: nounwind optsize uwtable
define void @A2_swapRows(%struct._A2* %a, i32 %irow1, i32 %irow2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !322), !dbg !981
  tail call void @llvm.dbg.value(metadata !{i32 %irow1}, i64 0, metadata !323), !dbg !982
  tail call void @llvm.dbg.value(metadata !{i32 %irow2}, i64 0, metadata !324), !dbg !983
  %cmp = icmp eq %struct._A2* %a, null, !dbg !984
  %cmp1 = icmp slt i32 %irow1, 0, !dbg !984
  %or.cond = or i1 %cmp, %cmp1, !dbg !984
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !984

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !984
  %0 = load i32* %n1, align 4, !dbg !984, !tbaa !353
  %notlhs = icmp sgt i32 %0, %irow1, !dbg !984
  %notrhs = icmp sgt i32 %irow2, -1, !dbg !984
  %or.cond271.not = and i1 %notrhs, %notlhs, !dbg !984
  %cmp8 = icmp sgt i32 %0, %irow2, !dbg !984
  %or.cond272 = and i1 %or.cond271.not, %cmp8, !dbg !984
  br i1 %or.cond272, label %if.end, label %if.then, !dbg !984

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !985, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str50, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2) #6, !dbg !985
  tail call void @exit(i32 -1) #7, !dbg !987
  unreachable, !dbg !987

if.end:                                           ; preds = %lor.lhs.false2
  %cmp10 = icmp slt i32 %0, 1, !dbg !988
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11, !dbg !988

lor.lhs.false11:                                  ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !988
  %2 = load i32* %inc1, align 4, !dbg !988, !tbaa !353
  %cmp12 = icmp slt i32 %2, 1, !dbg !988
  br i1 %cmp12, label %if.then21, label %lor.lhs.false13, !dbg !988

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %n214 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !988
  %3 = load i32* %n214, align 4, !dbg !988, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !331), !dbg !988
  %cmp15 = icmp slt i32 %3, 1, !dbg !988
  br i1 %cmp15, label %if.then21, label %lor.lhs.false16, !dbg !988

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %inc217 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !988
  %4 = load i32* %inc217, align 4, !dbg !988, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !328), !dbg !988
  %cmp18 = icmp slt i32 %4, 1, !dbg !988
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19, !dbg !988

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %entries = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !988
  %5 = load double** %entries, align 8, !dbg !988, !tbaa !348
  %cmp20 = icmp eq double* %5, null, !dbg !988
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !988

if.then21:                                        ; preds = %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !989, !tbaa !348
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([55 x i8]* @.str51, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2) #6, !dbg !989
  tail call void @exit(i32 -1) #7, !dbg !991
  unreachable, !dbg !991

if.end23:                                         ; preds = %lor.lhs.false19
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !992
  %7 = load i32* %type, align 4, !dbg !992, !tbaa !353
  %.off = add i32 %7, -1, !dbg !992
  %switch = icmp ult i32 %.off, 2, !dbg !992
  br i1 %switch, label %if.end31, label %if.then28, !dbg !992

if.then28:                                        ; preds = %if.end23
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !993, !tbaa !348
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([94 x i8]* @.str52, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2, i32 %7) #6, !dbg !993
  tail call void @exit(i32 -1) #7, !dbg !995
  unreachable, !dbg !995

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp eq i32 %irow1, %irow2, !dbg !996
  br i1 %cmp32, label %return, label %if.end34, !dbg !996

if.end34:                                         ; preds = %if.end31
  switch i32 %7, label %return [
    i32 1, label %if.then37
    i32 2, label %if.then72
  ], !dbg !997

if.then37:                                        ; preds = %if.end34
  %mul = mul nsw i32 %2, %irow1, !dbg !998
  %idx.ext = sext i32 %mul to i64, !dbg !998
  %mul42 = mul nsw i32 %2, %irow2, !dbg !1000
  %idx.ext43 = sext i32 %mul42 to i64, !dbg !1000
  %cmp45 = icmp eq i32 %4, 1, !dbg !1001
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !1002
  %cmp47273 = icmp sgt i32 %3, 0, !dbg !1002
  br i1 %cmp45, label %for.cond.preheader, label %for.cond54.preheader, !dbg !1001

for.cond54.preheader:                             ; preds = %if.then37
  br i1 %cmp47273, label %for.body56.lr.ph, label %return, !dbg !1005

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %9 = sext i32 %4 to i64
  br label %for.body56, !dbg !1005

for.cond.preheader:                               ; preds = %if.then37
  br i1 %cmp47273, label %for.body, label %return, !dbg !1002

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %add.ptr.sum269 = add i64 %indvars.iv, %idx.ext, !dbg !1008
  %arrayidx = getelementptr inbounds double* %5, i64 %add.ptr.sum269, !dbg !1008
  %10 = load double* %arrayidx, align 8, !dbg !1008, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %10}, i64 0, metadata !325), !dbg !1008
  %add.ptr44.sum270 = add i64 %indvars.iv, %idx.ext43, !dbg !1010
  %arrayidx49 = getelementptr inbounds double* %5, i64 %add.ptr44.sum270, !dbg !1010
  %11 = load double* %arrayidx49, align 8, !dbg !1010, !tbaa !452
  store double %11, double* %arrayidx, align 8, !dbg !1010, !tbaa !452
  store double %10, double* %arrayidx49, align 8, !dbg !1011, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1002
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1002
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !1002
  br i1 %exitcond, label %return, label %for.body, !dbg !1002

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv288 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next289, %for.body56 ]
  %j.1277 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc66, %for.body56 ]
  %add.ptr.sum = add i64 %indvars.iv288, %idx.ext, !dbg !1012
  %arrayidx58 = getelementptr inbounds double* %5, i64 %add.ptr.sum, !dbg !1012
  %12 = load double* %arrayidx58, align 8, !dbg !1012, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %12}, i64 0, metadata !325), !dbg !1012
  %add.ptr44.sum = add i64 %indvars.iv288, %idx.ext43, !dbg !1014
  %arrayidx60 = getelementptr inbounds double* %5, i64 %add.ptr44.sum, !dbg !1014
  %13 = load double* %arrayidx60, align 8, !dbg !1014, !tbaa !452
  store double %13, double* %arrayidx58, align 8, !dbg !1014, !tbaa !452
  store double %12, double* %arrayidx60, align 8, !dbg !1015, !tbaa !452
  %inc66 = add nsw i32 %j.1277, 1, !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i32 %inc66}, i64 0, metadata !329), !dbg !1005
  %indvars.iv.next289 = add i64 %indvars.iv288, %9, !dbg !1005
  %exitcond290 = icmp eq i32 %inc66, %3, !dbg !1005
  br i1 %exitcond290, label %return, label %for.body56, !dbg !1005

if.then72:                                        ; preds = %if.end34
  %mul74 = shl i32 %irow1, 1, !dbg !1016
  %mul76 = mul nsw i32 %mul74, %2, !dbg !1016
  %idx.ext77 = sext i32 %mul76 to i64, !dbg !1016
  %mul80 = shl i32 %irow2, 1, !dbg !1018
  %mul82 = mul nsw i32 %mul80, %2, !dbg !1018
  %idx.ext83 = sext i32 %mul82 to i64, !dbg !1018
  %cmp85 = icmp eq i32 %4, 1, !dbg !1019
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !1020
  %cmp88280 = icmp sgt i32 %3, 0, !dbg !1020
  br i1 %cmp85, label %for.cond87.preheader, label %for.cond122.preheader, !dbg !1019

for.cond122.preheader:                            ; preds = %if.then72
  br i1 %cmp88280, label %for.body124.lr.ph, label %return, !dbg !1023

for.body124.lr.ph:                                ; preds = %for.cond122.preheader
  %14 = sext i32 %4 to i64
  br label %for.body124, !dbg !1023

for.cond87.preheader:                             ; preds = %if.then72
  br i1 %cmp88280, label %for.body89, label %return, !dbg !1020

for.body89:                                       ; preds = %for.cond87.preheader, %for.body89
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %for.body89 ], [ 0, %for.cond87.preheader ]
  %15 = trunc i64 %indvars.iv291 to i32, !dbg !1026
  %mul90 = shl nsw i32 %15, 1, !dbg !1026
  %idxprom91 = sext i32 %mul90 to i64, !dbg !1026
  %add.ptr78.sum264 = add i64 %idxprom91, %idx.ext77, !dbg !1026
  %arrayidx92 = getelementptr inbounds double* %5, i64 %add.ptr78.sum264, !dbg !1026
  %16 = load double* %arrayidx92, align 8, !dbg !1026, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %16}, i64 0, metadata !325), !dbg !1026
  %add.ptr84.sum265 = add i64 %idxprom91, %idx.ext83, !dbg !1028
  %arrayidx95 = getelementptr inbounds double* %5, i64 %add.ptr84.sum265, !dbg !1028
  %17 = load double* %arrayidx95, align 8, !dbg !1028, !tbaa !452
  store double %17, double* %arrayidx92, align 8, !dbg !1028, !tbaa !452
  store double %16, double* %arrayidx95, align 8, !dbg !1029, !tbaa !452
  %add103266 = or i32 %mul90, 1, !dbg !1030
  %idxprom104 = sext i32 %add103266 to i64, !dbg !1030
  %add.ptr78.sum267 = add i64 %idxprom104, %idx.ext77, !dbg !1030
  %arrayidx105 = getelementptr inbounds double* %5, i64 %add.ptr78.sum267, !dbg !1030
  %18 = load double* %arrayidx105, align 8, !dbg !1030, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %18}, i64 0, metadata !325), !dbg !1030
  %add.ptr84.sum268 = add i64 %idxprom104, %idx.ext83, !dbg !1031
  %arrayidx109 = getelementptr inbounds double* %5, i64 %add.ptr84.sum268, !dbg !1031
  %19 = load double* %arrayidx109, align 8, !dbg !1031, !tbaa !452
  store double %19, double* %arrayidx105, align 8, !dbg !1031, !tbaa !452
  store double %18, double* %arrayidx109, align 8, !dbg !1032, !tbaa !452
  %indvars.iv.next292 = add i64 %indvars.iv291, 1, !dbg !1020
  %lftr.wideiv293 = trunc i64 %indvars.iv.next292 to i32, !dbg !1020
  %exitcond294 = icmp eq i32 %lftr.wideiv293, %3, !dbg !1020
  br i1 %exitcond294, label %return, label %for.body89, !dbg !1020

for.body124:                                      ; preds = %for.body124, %for.body124.lr.ph
  %indvars.iv295 = phi i64 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next296, %for.body124 ]
  %j.3284 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc154, %for.body124 ]
  %20 = trunc i64 %indvars.iv295 to i32, !dbg !1033
  %mul125 = shl nsw i32 %20, 1, !dbg !1033
  %idxprom126 = sext i32 %mul125 to i64, !dbg !1033
  %add.ptr78.sum = add i64 %idxprom126, %idx.ext77, !dbg !1033
  %arrayidx127 = getelementptr inbounds double* %5, i64 %add.ptr78.sum, !dbg !1033
  %21 = load double* %arrayidx127, align 8, !dbg !1033, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %21}, i64 0, metadata !325), !dbg !1033
  %add.ptr84.sum = add i64 %idxprom126, %idx.ext83, !dbg !1035
  %arrayidx130 = getelementptr inbounds double* %5, i64 %add.ptr84.sum, !dbg !1035
  %22 = load double* %arrayidx130, align 8, !dbg !1035, !tbaa !452
  store double %22, double* %arrayidx127, align 8, !dbg !1035, !tbaa !452
  store double %21, double* %arrayidx130, align 8, !dbg !1036, !tbaa !452
  %add138261 = or i32 %mul125, 1, !dbg !1037
  %idxprom139 = sext i32 %add138261 to i64, !dbg !1037
  %add.ptr78.sum262 = add i64 %idxprom139, %idx.ext77, !dbg !1037
  %arrayidx140 = getelementptr inbounds double* %5, i64 %add.ptr78.sum262, !dbg !1037
  %23 = load double* %arrayidx140, align 8, !dbg !1037, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %23}, i64 0, metadata !325), !dbg !1037
  %add.ptr84.sum263 = add i64 %idxprom139, %idx.ext83, !dbg !1038
  %arrayidx144 = getelementptr inbounds double* %5, i64 %add.ptr84.sum263, !dbg !1038
  %24 = load double* %arrayidx144, align 8, !dbg !1038, !tbaa !452
  store double %24, double* %arrayidx140, align 8, !dbg !1038, !tbaa !452
  store double %23, double* %arrayidx144, align 8, !dbg !1039, !tbaa !452
  %inc154 = add nsw i32 %j.3284, 1, !dbg !1023
  tail call void @llvm.dbg.value(metadata !{i32 %inc154}, i64 0, metadata !329), !dbg !1023
  %indvars.iv.next296 = add i64 %indvars.iv295, %14, !dbg !1023
  %exitcond297 = icmp eq i32 %inc154, %3, !dbg !1023
  br i1 %exitcond297, label %return, label %for.body124, !dbg !1023

return:                                           ; preds = %for.cond122.preheader, %for.body124, %for.cond87.preheader, %for.body89, %for.cond54.preheader, %for.body56, %for.cond.preheader, %for.body, %if.end34, %if.end31
  ret void, !dbg !1040
}

; Function Attrs: nounwind optsize uwtable
define void @A2_swapColumns(%struct._A2* %a, i32 %jcol1, i32 %jcol2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a}, i64 0, metadata !334), !dbg !1041
  tail call void @llvm.dbg.value(metadata !{i32 %jcol1}, i64 0, metadata !335), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{i32 %jcol2}, i64 0, metadata !336), !dbg !1043
  %cmp = icmp eq %struct._A2* %a, null, !dbg !1044
  %cmp1 = icmp slt i32 %jcol1, 0, !dbg !1044
  %or.cond = or i1 %cmp, %cmp1, !dbg !1044
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !1044

lor.lhs.false2:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2, !dbg !1044
  %0 = load i32* %n2, align 4, !dbg !1044, !tbaa !353
  %notlhs = icmp sgt i32 %0, %jcol1, !dbg !1044
  %notrhs = icmp sgt i32 %jcol2, -1, !dbg !1044
  %or.cond271.not = and i1 %notrhs, %notlhs, !dbg !1044
  %cmp8 = icmp sgt i32 %0, %jcol2, !dbg !1044
  %or.cond272 = and i1 %or.cond271.not, %cmp8, !dbg !1044
  br i1 %or.cond272, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1045, !tbaa !348
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str53, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2) #6, !dbg !1045
  tail call void @exit(i32 -1) #7, !dbg !1047
  unreachable, !dbg !1047

if.end:                                           ; preds = %lor.lhs.false2
  %n19 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1, !dbg !1048
  %2 = load i32* %n19, align 4, !dbg !1048, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !343), !dbg !1048
  %cmp10 = icmp slt i32 %2, 1, !dbg !1048
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11, !dbg !1048

lor.lhs.false11:                                  ; preds = %if.end
  %inc112 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3, !dbg !1048
  %3 = load i32* %inc112, align 4, !dbg !1048, !tbaa !353
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !341), !dbg !1048
  %cmp13 = icmp slt i32 %3, 1, !dbg !1048
  %cmp16 = icmp slt i32 %0, 1, !dbg !1048
  %or.cond273 = or i1 %cmp13, %cmp16, !dbg !1048
  br i1 %or.cond273, label %if.then21, label %lor.lhs.false17, !dbg !1048

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4, !dbg !1048
  %4 = load i32* %inc2, align 4, !dbg !1048, !tbaa !353
  %cmp18 = icmp slt i32 %4, 1, !dbg !1048
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19, !dbg !1048

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %entries = getelementptr inbounds %struct._A2* %a, i64 0, i32 6, !dbg !1048
  %5 = load double** %entries, align 8, !dbg !1048, !tbaa !348
  %cmp20 = icmp eq double* %5, null, !dbg !1048
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !1048

if.then21:                                        ; preds = %lor.lhs.false19, %lor.lhs.false17, %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !1049, !tbaa !348
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([58 x i8]* @.str54, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2) #6, !dbg !1049
  tail call void @exit(i32 -1) #7, !dbg !1051
  unreachable, !dbg !1051

if.end23:                                         ; preds = %lor.lhs.false19
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0, !dbg !1052
  %7 = load i32* %type, align 4, !dbg !1052, !tbaa !353
  %.off = add i32 %7, -1, !dbg !1052
  %switch = icmp ult i32 %.off, 2, !dbg !1052
  br i1 %switch, label %if.end31, label %if.then28, !dbg !1052

if.then28:                                        ; preds = %if.end23
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !1053, !tbaa !348
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([97 x i8]* @.str55, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2, i32 %7) #6, !dbg !1053
  tail call void @exit(i32 -1) #7, !dbg !1055
  unreachable, !dbg !1055

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp eq i32 %jcol1, %jcol2, !dbg !1056
  br i1 %cmp32, label %return, label %if.end34, !dbg !1056

if.end34:                                         ; preds = %if.end31
  switch i32 %7, label %return [
    i32 1, label %if.then37
    i32 2, label %if.then72
  ], !dbg !1057

if.then37:                                        ; preds = %if.end34
  %mul = mul nsw i32 %4, %jcol1, !dbg !1058
  %idx.ext = sext i32 %mul to i64, !dbg !1058
  %mul42 = mul nsw i32 %4, %jcol2, !dbg !1060
  %idx.ext43 = sext i32 %mul42 to i64, !dbg !1060
  %cmp45 = icmp eq i32 %3, 1, !dbg !1061
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !340), !dbg !1062
  %cmp47274 = icmp sgt i32 %2, 0, !dbg !1062
  br i1 %cmp45, label %for.cond.preheader, label %for.cond54.preheader, !dbg !1061

for.cond54.preheader:                             ; preds = %if.then37
  br i1 %cmp47274, label %for.body56.lr.ph, label %return, !dbg !1065

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %9 = sext i32 %3 to i64
  br label %for.body56, !dbg !1065

for.cond.preheader:                               ; preds = %if.then37
  br i1 %cmp47274, label %for.body, label %return, !dbg !1062

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %add.ptr.sum269 = add i64 %indvars.iv, %idx.ext, !dbg !1068
  %arrayidx = getelementptr inbounds double* %5, i64 %add.ptr.sum269, !dbg !1068
  %10 = load double* %arrayidx, align 8, !dbg !1068, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %10}, i64 0, metadata !337), !dbg !1068
  %add.ptr44.sum270 = add i64 %indvars.iv, %idx.ext43, !dbg !1070
  %arrayidx49 = getelementptr inbounds double* %5, i64 %add.ptr44.sum270, !dbg !1070
  %11 = load double* %arrayidx49, align 8, !dbg !1070, !tbaa !452
  store double %11, double* %arrayidx, align 8, !dbg !1070, !tbaa !452
  store double %10, double* %arrayidx49, align 8, !dbg !1071, !tbaa !452
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1062
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1062
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !1062
  br i1 %exitcond, label %return, label %for.body, !dbg !1062

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv289 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next290, %for.body56 ]
  %i.1278 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc66, %for.body56 ]
  %add.ptr.sum = add i64 %indvars.iv289, %idx.ext, !dbg !1072
  %arrayidx58 = getelementptr inbounds double* %5, i64 %add.ptr.sum, !dbg !1072
  %12 = load double* %arrayidx58, align 8, !dbg !1072, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %12}, i64 0, metadata !337), !dbg !1072
  %add.ptr44.sum = add i64 %indvars.iv289, %idx.ext43, !dbg !1074
  %arrayidx60 = getelementptr inbounds double* %5, i64 %add.ptr44.sum, !dbg !1074
  %13 = load double* %arrayidx60, align 8, !dbg !1074, !tbaa !452
  store double %13, double* %arrayidx58, align 8, !dbg !1074, !tbaa !452
  store double %12, double* %arrayidx60, align 8, !dbg !1075, !tbaa !452
  %inc66 = add nsw i32 %i.1278, 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata !{i32 %inc66}, i64 0, metadata !340), !dbg !1065
  %indvars.iv.next290 = add i64 %indvars.iv289, %9, !dbg !1065
  %exitcond291 = icmp eq i32 %inc66, %2, !dbg !1065
  br i1 %exitcond291, label %return, label %for.body56, !dbg !1065

if.then72:                                        ; preds = %if.end34
  %mul74 = shl i32 %jcol1, 1, !dbg !1076
  %mul76 = mul nsw i32 %mul74, %4, !dbg !1076
  %idx.ext77 = sext i32 %mul76 to i64, !dbg !1076
  %mul80 = shl i32 %jcol2, 1, !dbg !1078
  %mul82 = mul nsw i32 %mul80, %4, !dbg !1078
  %idx.ext83 = sext i32 %mul82 to i64, !dbg !1078
  %cmp85 = icmp eq i32 %3, 1, !dbg !1079
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !340), !dbg !1080
  %cmp88281 = icmp sgt i32 %2, 0, !dbg !1080
  br i1 %cmp85, label %for.cond87.preheader, label %for.cond122.preheader, !dbg !1079

for.cond122.preheader:                            ; preds = %if.then72
  br i1 %cmp88281, label %for.body124.lr.ph, label %return, !dbg !1083

for.body124.lr.ph:                                ; preds = %for.cond122.preheader
  %14 = sext i32 %3 to i64
  br label %for.body124, !dbg !1083

for.cond87.preheader:                             ; preds = %if.then72
  br i1 %cmp88281, label %for.body89, label %return, !dbg !1080

for.body89:                                       ; preds = %for.cond87.preheader, %for.body89
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %for.body89 ], [ 0, %for.cond87.preheader ]
  %15 = trunc i64 %indvars.iv292 to i32, !dbg !1086
  %mul90 = shl nsw i32 %15, 1, !dbg !1086
  %idxprom91 = sext i32 %mul90 to i64, !dbg !1086
  %add.ptr78.sum264 = add i64 %idxprom91, %idx.ext77, !dbg !1086
  %arrayidx92 = getelementptr inbounds double* %5, i64 %add.ptr78.sum264, !dbg !1086
  %16 = load double* %arrayidx92, align 8, !dbg !1086, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %16}, i64 0, metadata !337), !dbg !1086
  %add.ptr84.sum265 = add i64 %idxprom91, %idx.ext83, !dbg !1088
  %arrayidx95 = getelementptr inbounds double* %5, i64 %add.ptr84.sum265, !dbg !1088
  %17 = load double* %arrayidx95, align 8, !dbg !1088, !tbaa !452
  store double %17, double* %arrayidx92, align 8, !dbg !1088, !tbaa !452
  store double %16, double* %arrayidx95, align 8, !dbg !1089, !tbaa !452
  %add103266 = or i32 %mul90, 1, !dbg !1090
  %idxprom104 = sext i32 %add103266 to i64, !dbg !1090
  %add.ptr78.sum267 = add i64 %idxprom104, %idx.ext77, !dbg !1090
  %arrayidx105 = getelementptr inbounds double* %5, i64 %add.ptr78.sum267, !dbg !1090
  %18 = load double* %arrayidx105, align 8, !dbg !1090, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %18}, i64 0, metadata !337), !dbg !1090
  %add.ptr84.sum268 = add i64 %idxprom104, %idx.ext83, !dbg !1091
  %arrayidx109 = getelementptr inbounds double* %5, i64 %add.ptr84.sum268, !dbg !1091
  %19 = load double* %arrayidx109, align 8, !dbg !1091, !tbaa !452
  store double %19, double* %arrayidx105, align 8, !dbg !1091, !tbaa !452
  store double %18, double* %arrayidx109, align 8, !dbg !1092, !tbaa !452
  %indvars.iv.next293 = add i64 %indvars.iv292, 1, !dbg !1080
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32, !dbg !1080
  %exitcond295 = icmp eq i32 %lftr.wideiv294, %2, !dbg !1080
  br i1 %exitcond295, label %return, label %for.body89, !dbg !1080

for.body124:                                      ; preds = %for.body124, %for.body124.lr.ph
  %indvars.iv296 = phi i64 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next297, %for.body124 ]
  %i.3285 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc154, %for.body124 ]
  %20 = trunc i64 %indvars.iv296 to i32, !dbg !1093
  %mul125 = shl nsw i32 %20, 1, !dbg !1093
  %idxprom126 = sext i32 %mul125 to i64, !dbg !1093
  %add.ptr78.sum = add i64 %idxprom126, %idx.ext77, !dbg !1093
  %arrayidx127 = getelementptr inbounds double* %5, i64 %add.ptr78.sum, !dbg !1093
  %21 = load double* %arrayidx127, align 8, !dbg !1093, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %21}, i64 0, metadata !337), !dbg !1093
  %add.ptr84.sum = add i64 %idxprom126, %idx.ext83, !dbg !1095
  %arrayidx130 = getelementptr inbounds double* %5, i64 %add.ptr84.sum, !dbg !1095
  %22 = load double* %arrayidx130, align 8, !dbg !1095, !tbaa !452
  store double %22, double* %arrayidx127, align 8, !dbg !1095, !tbaa !452
  store double %21, double* %arrayidx130, align 8, !dbg !1096, !tbaa !452
  %add138261 = or i32 %mul125, 1, !dbg !1097
  %idxprom139 = sext i32 %add138261 to i64, !dbg !1097
  %add.ptr78.sum262 = add i64 %idxprom139, %idx.ext77, !dbg !1097
  %arrayidx140 = getelementptr inbounds double* %5, i64 %add.ptr78.sum262, !dbg !1097
  %23 = load double* %arrayidx140, align 8, !dbg !1097, !tbaa !452
  tail call void @llvm.dbg.value(metadata !{double %23}, i64 0, metadata !337), !dbg !1097
  %add.ptr84.sum263 = add i64 %idxprom139, %idx.ext83, !dbg !1098
  %arrayidx144 = getelementptr inbounds double* %5, i64 %add.ptr84.sum263, !dbg !1098
  %24 = load double* %arrayidx144, align 8, !dbg !1098, !tbaa !452
  store double %24, double* %arrayidx140, align 8, !dbg !1098, !tbaa !452
  store double %23, double* %arrayidx144, align 8, !dbg !1099, !tbaa !452
  %inc154 = add nsw i32 %i.3285, 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata !{i32 %inc154}, i64 0, metadata !340), !dbg !1083
  %indvars.iv.next297 = add i64 %indvars.iv296, %14, !dbg !1083
  %exitcond298 = icmp eq i32 %inc154, %2, !dbg !1083
  br i1 %exitcond298, label %return, label %for.body124, !dbg !1083

return:                                           ; preds = %for.cond122.preheader, %for.body124, %for.cond87.preheader, %for.body89, %for.cond54.preheader, %for.body56, %for.cond.preheader, %for.body, %if.end34, %if.end31
  ret void, !dbg !1100
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !26, metadata !33, metadata !36, metadata !39, metadata !46, metadata !58, metadata !68, metadata !78, metadata !88, metadata !110, metadata !132, metadata !143, metadata !154, metadata !165, metadata !176, metadata !187, metadata !198, metadata !228, metadata !243, metadata !253, metadata !264, metadata !300, metadata !320, metadata !332}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_sizeOf", metadata !"A2_sizeOf", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_sizeOf, null, null, metadata !23, i32 17} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 17] [A2_sizeOf]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24, metadata !25}
!24 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 16]
!25 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 18]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_shiftBase", metadata !"A2_shiftBase", metadata !"", i32 53, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32)* @A2_shiftBase, null, null, metadata !29, i32 57} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 57] [A2_shiftBase]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !9, metadata !8, metadata !8}
!29 = metadata !{metadata !30, metadata !31, metadata !32}
!30 = metadata !{i32 786689, metadata !26, metadata !"mtx", metadata !5, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 54]
!31 = metadata !{i32 786689, metadata !26, metadata !"rowoff", metadata !5, i32 33554487, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowoff] [line 55]
!32 = metadata !{i32 786689, metadata !26, metadata !"coloff", metadata !5, i32 50331704, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coloff] [line 56]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_rowMajor", metadata !"A2_rowMajor", metadata !"", i32 92, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_rowMajor, null, null, metadata !34, i32 94} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 94] [A2_rowMajor]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786689, metadata !33, metadata !"mtx", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 93]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_columnMajor", metadata !"A2_columnMajor", metadata !"", i32 126, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_columnMajor, null, null, metadata !37, i32 128} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 128] [A2_columnMajor]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !36, metadata !"mtx", metadata !5, i32 16777343, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 127]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_transpose", metadata !"A2_transpose", metadata !"", i32 160, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_transpose, null, null, metadata !42, i32 162} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 162] [A2_transpose]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !9}
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !39, metadata !"mtx", metadata !5, i32 16777377, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 161]
!44 = metadata !{i32 786688, metadata !39, metadata !"inc1", metadata !5, i32 163, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 163]
!45 = metadata !{i32 786688, metadata !39, metadata !"n1", metadata !5, i32 163, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 163]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractRow", metadata !"A2_extractRow", metadata !"", i32 198, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double*, i32)* @A2_extractRow, null, null, metadata !49, i32 202} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 202] [A2_extractRow]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !9, metadata !21, metadata !8}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!50 = metadata !{i32 786689, metadata !46, metadata !"mtx", metadata !5, i32 16777415, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 199]
!51 = metadata !{i32 786689, metadata !46, metadata !"row", metadata !5, i32 33554632, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 200]
!52 = metadata !{i32 786689, metadata !46, metadata !"irow", metadata !5, i32 50331849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 201]
!53 = metadata !{i32 786688, metadata !46, metadata !"entries", metadata !5, i32 203, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 203]
!54 = metadata !{i32 786688, metadata !46, metadata !"inc2", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 204]
!55 = metadata !{i32 786688, metadata !46, metadata !"j", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 204]
!56 = metadata !{i32 786688, metadata !46, metadata !"k", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 204]
!57 = metadata !{i32 786688, metadata !46, metadata !"n2", metadata !5, i32 204, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 204]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractColumn", metadata !"A2_extractColumn", metadata !"", i32 247, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double*, i32)* @A2_extractColumn, null, null, metadata !59, i32 251} ; [ DW_TAG_subprogram ] [line 247] [def] [scope 251] [A2_extractColumn]
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!60 = metadata !{i32 786689, metadata !58, metadata !"mtx", metadata !5, i32 16777464, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 248]
!61 = metadata !{i32 786689, metadata !58, metadata !"col", metadata !5, i32 33554681, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 249]
!62 = metadata !{i32 786689, metadata !58, metadata !"jcol", metadata !5, i32 50331898, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 250]
!63 = metadata !{i32 786688, metadata !58, metadata !"entries", metadata !5, i32 252, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 252]
!64 = metadata !{i32 786688, metadata !58, metadata !"i", metadata !5, i32 253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 253]
!65 = metadata !{i32 786688, metadata !58, metadata !"inc1", metadata !5, i32 253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 253]
!66 = metadata !{i32 786688, metadata !58, metadata !"k", metadata !5, i32 253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 253]
!67 = metadata !{i32 786688, metadata !58, metadata !"n1", metadata !5, i32 253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 253]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setRow", metadata !"A2_setRow", metadata !"", i32 296, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double*, i32)* @A2_setRow, null, null, metadata !69, i32 300} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 300] [A2_setRow]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!70 = metadata !{i32 786689, metadata !68, metadata !"mtx", metadata !5, i32 16777513, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 297]
!71 = metadata !{i32 786689, metadata !68, metadata !"row", metadata !5, i32 33554730, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 298]
!72 = metadata !{i32 786689, metadata !68, metadata !"irow", metadata !5, i32 50331947, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 299]
!73 = metadata !{i32 786688, metadata !68, metadata !"entries", metadata !5, i32 301, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 301]
!74 = metadata !{i32 786688, metadata !68, metadata !"inc2", metadata !5, i32 302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 302]
!75 = metadata !{i32 786688, metadata !68, metadata !"j", metadata !5, i32 302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 302]
!76 = metadata !{i32 786688, metadata !68, metadata !"k", metadata !5, i32 302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 302]
!77 = metadata !{i32 786688, metadata !68, metadata !"n2", metadata !5, i32 302, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 302]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setColumn", metadata !"A2_setColumn", metadata !"", i32 344, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double*, i32)* @A2_setColumn, null, null, metadata !79, i32 348} ; [ DW_TAG_subprogram ] [line 344] [def] [scope 348] [A2_setColumn]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87}
!80 = metadata !{i32 786689, metadata !78, metadata !"mtx", metadata !5, i32 16777561, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 345]
!81 = metadata !{i32 786689, metadata !78, metadata !"col", metadata !5, i32 33554778, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 346]
!82 = metadata !{i32 786689, metadata !78, metadata !"jcol", metadata !5, i32 50331995, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 347]
!83 = metadata !{i32 786688, metadata !78, metadata !"entries", metadata !5, i32 349, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 349]
!84 = metadata !{i32 786688, metadata !78, metadata !"inc1", metadata !5, i32 350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 350]
!85 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !5, i32 350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 350]
!86 = metadata !{i32 786688, metadata !78, metadata !"k", metadata !5, i32 350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 350]
!87 = metadata !{i32 786688, metadata !78, metadata !"n1", metadata !5, i32 350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 350]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractRowDV", metadata !"A2_extractRowDV", metadata !"", i32 392, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._DV*, i32)* @A2_extractRowDV, null, null, metadata !100, i32 396} ; [ DW_TAG_subprogram ] [line 392] [def] [scope 396] [A2_extractRowDV]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !9, metadata !91, metadata !8}
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!92 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!93 = metadata !{i32 786451, metadata !94, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !95, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!94 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99}
!96 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!97 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!98 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!99 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!101 = metadata !{i32 786689, metadata !88, metadata !"mtx", metadata !5, i32 16777609, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 393]
!102 = metadata !{i32 786689, metadata !88, metadata !"rowDV", metadata !5, i32 33554826, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowDV] [line 394]
!103 = metadata !{i32 786689, metadata !88, metadata !"irow", metadata !5, i32 50332043, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 395]
!104 = metadata !{i32 786688, metadata !88, metadata !"entries", metadata !5, i32 397, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 397]
!105 = metadata !{i32 786688, metadata !88, metadata !"row", metadata !5, i32 397, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 397]
!106 = metadata !{i32 786688, metadata !88, metadata !"inc2", metadata !5, i32 398, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 398]
!107 = metadata !{i32 786688, metadata !88, metadata !"j", metadata !5, i32 398, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 398]
!108 = metadata !{i32 786688, metadata !88, metadata !"k", metadata !5, i32 398, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 398]
!109 = metadata !{i32 786688, metadata !88, metadata !"n2", metadata !5, i32 398, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 398]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractRowZV", metadata !"A2_extractRowZV", metadata !"", i32 437, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._ZV*, i32)* @A2_extractRowZV, null, null, metadata !122, i32 441} ; [ DW_TAG_subprogram ] [line 437] [def] [scope 441] [A2_extractRowZV]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{null, metadata !9, metadata !113, metadata !8}
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ZV]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"ZV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [ZV] [line 20, size 0, align 0, offset 0] [from _ZV]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"_ZV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ZV] [line 21, size 192, align 64, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../../ZV/ZV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!123 = metadata !{i32 786689, metadata !110, metadata !"mtx", metadata !5, i32 16777654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 438]
!124 = metadata !{i32 786689, metadata !110, metadata !"rowZV", metadata !5, i32 33554871, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowZV] [line 439]
!125 = metadata !{i32 786689, metadata !110, metadata !"irow", metadata !5, i32 50332088, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 440]
!126 = metadata !{i32 786688, metadata !110, metadata !"entries", metadata !5, i32 442, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 442]
!127 = metadata !{i32 786688, metadata !110, metadata !"row", metadata !5, i32 442, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 442]
!128 = metadata !{i32 786688, metadata !110, metadata !"inc2", metadata !5, i32 443, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 443]
!129 = metadata !{i32 786688, metadata !110, metadata !"j", metadata !5, i32 443, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 443]
!130 = metadata !{i32 786688, metadata !110, metadata !"k", metadata !5, i32 443, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 443]
!131 = metadata !{i32 786688, metadata !110, metadata !"n2", metadata !5, i32 443, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 443]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractColumnDV", metadata !"A2_extractColumnDV", metadata !"", i32 483, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._DV*, i32)* @A2_extractColumnDV, null, null, metadata !133, i32 487} ; [ DW_TAG_subprogram ] [line 483] [def] [scope 487] [A2_extractColumnDV]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!134 = metadata !{i32 786689, metadata !132, metadata !"mtx", metadata !5, i32 16777700, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 484]
!135 = metadata !{i32 786689, metadata !132, metadata !"colDV", metadata !5, i32 33554917, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colDV] [line 485]
!136 = metadata !{i32 786689, metadata !132, metadata !"jcol", metadata !5, i32 50332134, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 486]
!137 = metadata !{i32 786688, metadata !132, metadata !"entries", metadata !5, i32 488, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 488]
!138 = metadata !{i32 786688, metadata !132, metadata !"col", metadata !5, i32 488, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 488]
!139 = metadata !{i32 786688, metadata !132, metadata !"i", metadata !5, i32 489, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 489]
!140 = metadata !{i32 786688, metadata !132, metadata !"inc1", metadata !5, i32 489, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 489]
!141 = metadata !{i32 786688, metadata !132, metadata !"k", metadata !5, i32 489, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 489]
!142 = metadata !{i32 786688, metadata !132, metadata !"n1", metadata !5, i32 489, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 489]
!143 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_extractColumnZV", metadata !"A2_extractColumnZV", metadata !"", i32 528, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._ZV*, i32)* @A2_extractColumnZV, null, null, metadata !144, i32 532} ; [ DW_TAG_subprogram ] [line 528] [def] [scope 532] [A2_extractColumnZV]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!145 = metadata !{i32 786689, metadata !143, metadata !"mtx", metadata !5, i32 16777745, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 529]
!146 = metadata !{i32 786689, metadata !143, metadata !"colZV", metadata !5, i32 33554962, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colZV] [line 530]
!147 = metadata !{i32 786689, metadata !143, metadata !"jcol", metadata !5, i32 50332179, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 531]
!148 = metadata !{i32 786688, metadata !143, metadata !"entries", metadata !5, i32 533, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 533]
!149 = metadata !{i32 786688, metadata !143, metadata !"col", metadata !5, i32 533, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 533]
!150 = metadata !{i32 786688, metadata !143, metadata !"i", metadata !5, i32 534, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 534]
!151 = metadata !{i32 786688, metadata !143, metadata !"inc1", metadata !5, i32 534, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 534]
!152 = metadata !{i32 786688, metadata !143, metadata !"k", metadata !5, i32 534, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 534]
!153 = metadata !{i32 786688, metadata !143, metadata !"n1", metadata !5, i32 534, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 534]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setRowDV", metadata !"A2_setRowDV", metadata !"", i32 574, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._DV*, i32)* @A2_setRowDV, null, null, metadata !155, i32 578} ; [ DW_TAG_subprogram ] [line 574] [def] [scope 578] [A2_setRowDV]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164}
!156 = metadata !{i32 786689, metadata !154, metadata !"mtx", metadata !5, i32 16777791, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 575]
!157 = metadata !{i32 786689, metadata !154, metadata !"rowDV", metadata !5, i32 33555008, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowDV] [line 576]
!158 = metadata !{i32 786689, metadata !154, metadata !"irow", metadata !5, i32 50332225, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 577]
!159 = metadata !{i32 786688, metadata !154, metadata !"entries", metadata !5, i32 579, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 579]
!160 = metadata !{i32 786688, metadata !154, metadata !"row", metadata !5, i32 579, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 579]
!161 = metadata !{i32 786688, metadata !154, metadata !"inc2", metadata !5, i32 580, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 580]
!162 = metadata !{i32 786688, metadata !154, metadata !"j", metadata !5, i32 580, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 580]
!163 = metadata !{i32 786688, metadata !154, metadata !"k", metadata !5, i32 580, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 580]
!164 = metadata !{i32 786688, metadata !154, metadata !"n2", metadata !5, i32 580, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 580]
!165 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setRowZV", metadata !"A2_setRowZV", metadata !"", i32 616, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._ZV*, i32)* @A2_setRowZV, null, null, metadata !166, i32 620} ; [ DW_TAG_subprogram ] [line 616] [def] [scope 620] [A2_setRowZV]
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!167 = metadata !{i32 786689, metadata !165, metadata !"mtx", metadata !5, i32 16777833, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 617]
!168 = metadata !{i32 786689, metadata !165, metadata !"rowZV", metadata !5, i32 33555050, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowZV] [line 618]
!169 = metadata !{i32 786689, metadata !165, metadata !"irow", metadata !5, i32 50332267, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 619]
!170 = metadata !{i32 786688, metadata !165, metadata !"entries", metadata !5, i32 621, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 621]
!171 = metadata !{i32 786688, metadata !165, metadata !"row", metadata !5, i32 621, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 621]
!172 = metadata !{i32 786688, metadata !165, metadata !"inc2", metadata !5, i32 622, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 622]
!173 = metadata !{i32 786688, metadata !165, metadata !"j", metadata !5, i32 622, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 622]
!174 = metadata !{i32 786688, metadata !165, metadata !"k", metadata !5, i32 622, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 622]
!175 = metadata !{i32 786688, metadata !165, metadata !"n2", metadata !5, i32 622, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 622]
!176 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setColumnDV", metadata !"A2_setColumnDV", metadata !"", i32 659, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._DV*, i32)* @A2_setColumnDV, null, null, metadata !177, i32 663} ; [ DW_TAG_subprogram ] [line 659] [def] [scope 663] [A2_setColumnDV]
!177 = metadata !{metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186}
!178 = metadata !{i32 786689, metadata !176, metadata !"mtx", metadata !5, i32 16777876, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 660]
!179 = metadata !{i32 786689, metadata !176, metadata !"colDV", metadata !5, i32 33555093, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colDV] [line 661]
!180 = metadata !{i32 786689, metadata !176, metadata !"jcol", metadata !5, i32 50332310, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 662]
!181 = metadata !{i32 786688, metadata !176, metadata !"col", metadata !5, i32 664, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 664]
!182 = metadata !{i32 786688, metadata !176, metadata !"entries", metadata !5, i32 664, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 664]
!183 = metadata !{i32 786688, metadata !176, metadata !"inc1", metadata !5, i32 665, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 665]
!184 = metadata !{i32 786688, metadata !176, metadata !"i", metadata !5, i32 665, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 665]
!185 = metadata !{i32 786688, metadata !176, metadata !"k", metadata !5, i32 665, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 665]
!186 = metadata !{i32 786688, metadata !176, metadata !"n1", metadata !5, i32 665, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 665]
!187 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setColumnZV", metadata !"A2_setColumnZV", metadata !"", i32 701, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._ZV*, i32)* @A2_setColumnZV, null, null, metadata !188, i32 705} ; [ DW_TAG_subprogram ] [line 701] [def] [scope 705] [A2_setColumnZV]
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!189 = metadata !{i32 786689, metadata !187, metadata !"mtx", metadata !5, i32 16777918, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 702]
!190 = metadata !{i32 786689, metadata !187, metadata !"colZV", metadata !5, i32 33555135, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colZV] [line 703]
!191 = metadata !{i32 786689, metadata !187, metadata !"jcol", metadata !5, i32 50332352, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 704]
!192 = metadata !{i32 786688, metadata !187, metadata !"col", metadata !5, i32 706, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 706]
!193 = metadata !{i32 786688, metadata !187, metadata !"entries", metadata !5, i32 706, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 706]
!194 = metadata !{i32 786688, metadata !187, metadata !"inc1", metadata !5, i32 707, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 707]
!195 = metadata !{i32 786688, metadata !187, metadata !"i", metadata !5, i32 707, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 707]
!196 = metadata !{i32 786688, metadata !187, metadata !"k", metadata !5, i32 707, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 707]
!197 = metadata !{i32 786688, metadata !187, metadata !"n1", metadata !5, i32 707, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 707]
!198 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_fillRandomUniform", metadata !"A2_fillRandomUniform", metadata !"", i32 744, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double, double, i32)* @A2_fillRandomUniform, null, null, metadata !201, i32 749} ; [ DW_TAG_subprogram ] [line 744] [def] [scope 749] [A2_fillRandomUniform]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !9, metadata !22, metadata !22, metadata !8}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214}
!202 = metadata !{i32 786689, metadata !198, metadata !"a", metadata !5, i32 16777961, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 745]
!203 = metadata !{i32 786689, metadata !198, metadata !"lower", metadata !5, i32 33555178, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 746]
!204 = metadata !{i32 786689, metadata !198, metadata !"upper", metadata !5, i32 50332395, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 747]
!205 = metadata !{i32 786689, metadata !198, metadata !"seed", metadata !5, i32 67109612, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 748]
!206 = metadata !{i32 786688, metadata !198, metadata !"entries", metadata !5, i32 750, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 750]
!207 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 751]
!208 = metadata !{i32 786688, metadata !198, metadata !"inc1", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 751]
!209 = metadata !{i32 786688, metadata !198, metadata !"inc2", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 751]
!210 = metadata !{i32 786688, metadata !198, metadata !"j", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 751]
!211 = metadata !{i32 786688, metadata !198, metadata !"loc", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 751]
!212 = metadata !{i32 786688, metadata !198, metadata !"n1", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 751]
!213 = metadata !{i32 786688, metadata !198, metadata !"n2", metadata !5, i32 751, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 751]
!214 = metadata !{i32 786688, metadata !198, metadata !"drand", metadata !5, i32 752, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 752]
!215 = metadata !{i32 786454, metadata !1, null, metadata !"Drand", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [Drand] [line 27, size 0, align 0, offset 0] [from _Drand]
!216 = metadata !{i32 786451, metadata !217, null, metadata !"_Drand", i32 17, i64 576, i64 64, i32 0, i32 0, null, metadata !218, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Drand] [line 17, size 576, align 64, offset 0] [from ]
!217 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../../Drand/Drand.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!218 = metadata !{metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227}
!219 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"seed1", i32 18, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [seed1] [line 18, size 64, align 64, offset 0] [from double]
!220 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"seed2", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [seed2] [line 19, size 64, align 64, offset 64] [from double]
!221 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"base1", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [base1] [line 20, size 64, align 64, offset 128] [from double]
!222 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"base2", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [base2] [line 21, size 64, align 64, offset 192] [from double]
!223 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"lower", i32 22, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [lower] [line 22, size 64, align 64, offset 256] [from double]
!224 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"upper", i32 23, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [upper] [line 23, size 64, align 64, offset 320] [from double]
!225 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"mean", i32 24, i64 64, i64 64, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [mean] [line 24, size 64, align 64, offset 384] [from double]
!226 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"sigma", i32 25, i64 64, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [sigma] [line 25, size 64, align 64, offset 448] [from double]
!227 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"mode", i32 26, i64 32, i64 32, i64 512, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 26, size 32, align 32, offset 512] [from int]
!228 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_fillRandomNormal", metadata !"A2_fillRandomNormal", metadata !"", i32 807, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, double, double, i32)* @A2_fillRandomNormal, null, null, metadata !229, i32 812} ; [ DW_TAG_subprogram ] [line 807] [def] [scope 812] [A2_fillRandomNormal]
!229 = metadata !{metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!230 = metadata !{i32 786689, metadata !228, metadata !"a", metadata !5, i32 16778024, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 808]
!231 = metadata !{i32 786689, metadata !228, metadata !"mean", metadata !5, i32 33555241, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mean] [line 809]
!232 = metadata !{i32 786689, metadata !228, metadata !"variance", metadata !5, i32 50332458, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [variance] [line 810]
!233 = metadata !{i32 786689, metadata !228, metadata !"seed", metadata !5, i32 67109675, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 811]
!234 = metadata !{i32 786688, metadata !228, metadata !"entries", metadata !5, i32 813, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 813]
!235 = metadata !{i32 786688, metadata !228, metadata !"i", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 814]
!236 = metadata !{i32 786688, metadata !228, metadata !"inc1", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 814]
!237 = metadata !{i32 786688, metadata !228, metadata !"inc2", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 814]
!238 = metadata !{i32 786688, metadata !228, metadata !"j", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 814]
!239 = metadata !{i32 786688, metadata !228, metadata !"loc", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 814]
!240 = metadata !{i32 786688, metadata !228, metadata !"n1", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 814]
!241 = metadata !{i32 786688, metadata !228, metadata !"n2", metadata !5, i32 814, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 814]
!242 = metadata !{i32 786688, metadata !228, metadata !"drand", metadata !5, i32 815, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [drand] [line 815]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_fillWithIdentity", metadata !"A2_fillWithIdentity", metadata !"", i32 870, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_fillWithIdentity, null, null, metadata !244, i32 872} ; [ DW_TAG_subprogram ] [line 870] [def] [scope 872] [A2_fillWithIdentity]
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252}
!245 = metadata !{i32 786689, metadata !243, metadata !"a", metadata !5, i32 16778087, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 871]
!246 = metadata !{i32 786688, metadata !243, metadata !"entries", metadata !5, i32 873, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 873]
!247 = metadata !{i32 786688, metadata !243, metadata !"ii", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 874]
!248 = metadata !{i32 786688, metadata !243, metadata !"inc", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc] [line 874]
!249 = metadata !{i32 786688, metadata !243, metadata !"inc1", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 874]
!250 = metadata !{i32 786688, metadata !243, metadata !"inc2", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 874]
!251 = metadata !{i32 786688, metadata !243, metadata !"j", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 874]
!252 = metadata !{i32 786688, metadata !243, metadata !"n", metadata !5, i32 874, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 874]
!253 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_zero", metadata !"A2_zero", metadata !"", i32 917, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_zero, null, null, metadata !254, i32 919} ; [ DW_TAG_subprogram ] [line 917] [def] [scope 919] [A2_zero]
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!255 = metadata !{i32 786689, metadata !253, metadata !"a", metadata !5, i32 16778134, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 918]
!256 = metadata !{i32 786688, metadata !253, metadata !"entries", metadata !5, i32 920, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 920]
!257 = metadata !{i32 786688, metadata !253, metadata !"i", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 921]
!258 = metadata !{i32 786688, metadata !253, metadata !"inc1", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 921]
!259 = metadata !{i32 786688, metadata !253, metadata !"inc2", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 921]
!260 = metadata !{i32 786688, metadata !253, metadata !"j", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 921]
!261 = metadata !{i32 786688, metadata !253, metadata !"loc", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 921]
!262 = metadata !{i32 786688, metadata !253, metadata !"n1", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 921]
!263 = metadata !{i32 786688, metadata !253, metadata !"n2", metadata !5, i32 921, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 921]
!264 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_copy", metadata !"A2_copy", metadata !"", i32 967, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._A2*)* @A2_copy, null, null, metadata !267, i32 970} ; [ DW_TAG_subprogram ] [line 967] [def] [scope 970] [A2_copy]
!265 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{null, metadata !9, metadata !9}
!267 = metadata !{metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !289, metadata !290, metadata !292, metadata !293, metadata !296, metadata !297, metadata !299}
!268 = metadata !{i32 786689, metadata !264, metadata !"A", metadata !5, i32 16778184, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 968]
!269 = metadata !{i32 786689, metadata !264, metadata !"B", metadata !5, i32 33555401, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 969]
!270 = metadata !{i32 786688, metadata !264, metadata !"entA", metadata !5, i32 971, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entA] [line 971]
!271 = metadata !{i32 786688, metadata !264, metadata !"entB", metadata !5, i32 971, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entB] [line 971]
!272 = metadata !{i32 786688, metadata !264, metadata !"inc1A", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1A] [line 972]
!273 = metadata !{i32 786688, metadata !264, metadata !"inc1B", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1B] [line 972]
!274 = metadata !{i32 786688, metadata !264, metadata !"inc2A", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2A] [line 972]
!275 = metadata !{i32 786688, metadata !264, metadata !"inc2B", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2B] [line 972]
!276 = metadata !{i32 786688, metadata !264, metadata !"irow", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 972]
!277 = metadata !{i32 786688, metadata !264, metadata !"jcol", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 972]
!278 = metadata !{i32 786688, metadata !264, metadata !"locA", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locA] [line 972]
!279 = metadata !{i32 786688, metadata !264, metadata !"locB", metadata !5, i32 972, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locB] [line 972]
!280 = metadata !{i32 786688, metadata !264, metadata !"ncol", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 973]
!281 = metadata !{i32 786688, metadata !264, metadata !"ncolA", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolA] [line 973]
!282 = metadata !{i32 786688, metadata !264, metadata !"ncolB", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 973]
!283 = metadata !{i32 786688, metadata !264, metadata !"nrow", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 973]
!284 = metadata !{i32 786688, metadata !264, metadata !"nrowA", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 973]
!285 = metadata !{i32 786688, metadata !264, metadata !"nrowB", metadata !5, i32 973, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 973]
!286 = metadata !{i32 786688, metadata !287, metadata !"colA", metadata !5, i32 1025, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colA] [line 1025]
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 1024, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!288 = metadata !{i32 786443, metadata !1, metadata !264, i32 1023, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!289 = metadata !{i32 786688, metadata !287, metadata !"colB", metadata !5, i32 1025, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB] [line 1025]
!290 = metadata !{i32 786688, metadata !291, metadata !"rowA", metadata !5, i32 1034, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowA] [line 1034]
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 1033, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!292 = metadata !{i32 786688, metadata !291, metadata !"rowB", metadata !5, i32 1034, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowB] [line 1034]
!293 = metadata !{i32 786688, metadata !294, metadata !"colA", metadata !5, i32 1052, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colA] [line 1052]
!294 = metadata !{i32 786443, metadata !1, metadata !295, i32 1051, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!295 = metadata !{i32 786443, metadata !1, metadata !264, i32 1050, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!296 = metadata !{i32 786688, metadata !294, metadata !"colB", metadata !5, i32 1052, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colB] [line 1052]
!297 = metadata !{i32 786688, metadata !298, metadata !"rowA", metadata !5, i32 1062, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowA] [line 1062]
!298 = metadata !{i32 786443, metadata !1, metadata !295, i32 1061, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!299 = metadata !{i32 786688, metadata !298, metadata !"rowB", metadata !5, i32 1062, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowB] [line 1062]
!300 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_sub", metadata !"A2_sub", metadata !"", i32 1095, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._A2*)* @A2_sub, null, null, metadata !301, i32 1098} ; [ DW_TAG_subprogram ] [line 1095] [def] [scope 1098] [A2_sub]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319}
!302 = metadata !{i32 786689, metadata !300, metadata !"A", metadata !5, i32 16778312, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 1096]
!303 = metadata !{i32 786689, metadata !300, metadata !"B", metadata !5, i32 33555529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 1097]
!304 = metadata !{i32 786688, metadata !300, metadata !"entA", metadata !5, i32 1099, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entA] [line 1099]
!305 = metadata !{i32 786688, metadata !300, metadata !"entB", metadata !5, i32 1099, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entB] [line 1099]
!306 = metadata !{i32 786688, metadata !300, metadata !"inc1A", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1A] [line 1100]
!307 = metadata !{i32 786688, metadata !300, metadata !"inc1B", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1B] [line 1100]
!308 = metadata !{i32 786688, metadata !300, metadata !"inc2A", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2A] [line 1100]
!309 = metadata !{i32 786688, metadata !300, metadata !"inc2B", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2B] [line 1100]
!310 = metadata !{i32 786688, metadata !300, metadata !"irow", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1100]
!311 = metadata !{i32 786688, metadata !300, metadata !"jcol", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1100]
!312 = metadata !{i32 786688, metadata !300, metadata !"locA", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locA] [line 1100]
!313 = metadata !{i32 786688, metadata !300, metadata !"locB", metadata !5, i32 1100, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locB] [line 1100]
!314 = metadata !{i32 786688, metadata !300, metadata !"ncol", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1101]
!315 = metadata !{i32 786688, metadata !300, metadata !"ncolA", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolA] [line 1101]
!316 = metadata !{i32 786688, metadata !300, metadata !"ncolB", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolB] [line 1101]
!317 = metadata !{i32 786688, metadata !300, metadata !"nrow", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1101]
!318 = metadata !{i32 786688, metadata !300, metadata !"nrowA", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowA] [line 1101]
!319 = metadata !{i32 786688, metadata !300, metadata !"nrowB", metadata !5, i32 1101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowB] [line 1101]
!320 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_swapRows", metadata !"A2_swapRows", metadata !"", i32 1186, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32)* @A2_swapRows, null, null, metadata !321, i32 1190} ; [ DW_TAG_subprogram ] [line 1186] [def] [scope 1190] [A2_swapRows]
!321 = metadata !{metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331}
!322 = metadata !{i32 786689, metadata !320, metadata !"a", metadata !5, i32 16778403, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1187]
!323 = metadata !{i32 786689, metadata !320, metadata !"irow1", metadata !5, i32 33555620, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow1] [line 1188]
!324 = metadata !{i32 786689, metadata !320, metadata !"irow2", metadata !5, i32 50332837, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow2] [line 1189]
!325 = metadata !{i32 786688, metadata !320, metadata !"temp", metadata !5, i32 1191, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 1191]
!326 = metadata !{i32 786688, metadata !320, metadata !"row1", metadata !5, i32 1192, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row1] [line 1192]
!327 = metadata !{i32 786688, metadata !320, metadata !"row2", metadata !5, i32 1192, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row2] [line 1192]
!328 = metadata !{i32 786688, metadata !320, metadata !"inc2", metadata !5, i32 1193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1193]
!329 = metadata !{i32 786688, metadata !320, metadata !"j", metadata !5, i32 1193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1193]
!330 = metadata !{i32 786688, metadata !320, metadata !"k", metadata !5, i32 1193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1193]
!331 = metadata !{i32 786688, metadata !320, metadata !"n2", metadata !5, i32 1193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 1193]
!332 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_swapColumns", metadata !"A2_swapColumns", metadata !"", i32 1276, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32)* @A2_swapColumns, null, null, metadata !333, i32 1280} ; [ DW_TAG_subprogram ] [line 1276] [def] [scope 1280] [A2_swapColumns]
!333 = metadata !{metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343}
!334 = metadata !{i32 786689, metadata !332, metadata !"a", metadata !5, i32 16778493, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1277]
!335 = metadata !{i32 786689, metadata !332, metadata !"jcol1", metadata !5, i32 33555710, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol1] [line 1278]
!336 = metadata !{i32 786689, metadata !332, metadata !"jcol2", metadata !5, i32 50332927, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol2] [line 1279]
!337 = metadata !{i32 786688, metadata !332, metadata !"temp", metadata !5, i32 1281, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 1281]
!338 = metadata !{i32 786688, metadata !332, metadata !"col1", metadata !5, i32 1282, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col1] [line 1282]
!339 = metadata !{i32 786688, metadata !332, metadata !"col2", metadata !5, i32 1282, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col2] [line 1282]
!340 = metadata !{i32 786688, metadata !332, metadata !"i", metadata !5, i32 1283, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1283]
!341 = metadata !{i32 786688, metadata !332, metadata !"inc1", metadata !5, i32 1283, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1283]
!342 = metadata !{i32 786688, metadata !332, metadata !"k", metadata !5, i32 1283, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1283]
!343 = metadata !{i32 786688, metadata !332, metadata !"n1", metadata !5, i32 1283, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 1283]
!344 = metadata !{i32 16, i32 0, metadata !4, null}
!345 = metadata !{i32 24, i32 0, metadata !4, null}
!346 = metadata !{i32 25, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!348 = metadata !{metadata !"any pointer", metadata !349}
!349 = metadata !{metadata !"omnipotent char", metadata !350}
!350 = metadata !{metadata !"Simple C/C++ TBAA"}
!351 = metadata !{i32 27, i32 0, metadata !347, null}
!352 = metadata !{i32 29, i32 0, metadata !4, null}
!353 = metadata !{metadata !"int", metadata !349}
!354 = metadata !{i32 30, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!356 = metadata !{i32 33, i32 0, metadata !355, null}
!357 = metadata !{i32 35, i32 0, metadata !4, null}
!358 = metadata !{i32 36, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!360 = metadata !{i32 37, i32 0, metadata !359, null}
!361 = metadata !{i32 38, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!363 = metadata !{i32 39, i32 0, metadata !362, null}
!364 = metadata !{i32 40, i32 0, metadata !4, null}
!365 = metadata !{i32 54, i32 0, metadata !26, null}
!366 = metadata !{i32 55, i32 0, metadata !26, null}
!367 = metadata !{i32 56, i32 0, metadata !26, null}
!368 = metadata !{i32 63, i32 0, metadata !26, null}
!369 = metadata !{i32 64, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !26, i32 63, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!371 = metadata !{i32 66, i32 0, metadata !370, null}
!372 = metadata !{i32 68, i32 0, metadata !26, null}
!373 = metadata !{i32 69, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !26, i32 68, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!375 = metadata !{i32 72, i32 0, metadata !374, null}
!376 = metadata !{i32 74, i32 0, metadata !26, null}
!377 = metadata !{i32 75, i32 0, metadata !26, null}
!378 = metadata !{i32 76, i32 0, metadata !26, null}
!379 = metadata !{i32 77, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !26, i32 76, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!381 = metadata !{i32 78, i32 0, metadata !380, null}
!382 = metadata !{i32 79, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !26, i32 78, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!384 = metadata !{i32 80, i32 0, metadata !383, null}
!385 = metadata !{i32 81, i32 0, metadata !26, null}
!386 = metadata !{i32 93, i32 0, metadata !33, null}
!387 = metadata !{i32 100, i32 0, metadata !33, null}
!388 = metadata !{i32 101, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !33, i32 100, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!390 = metadata !{i32 103, i32 0, metadata !389, null}
!391 = metadata !{i32 105, i32 0, metadata !33, null}
!392 = metadata !{i32 106, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !33, i32 105, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!394 = metadata !{i32 109, i32 0, metadata !393, null}
!395 = metadata !{i32 111, i32 0, metadata !33, null}
!396 = metadata !{i32 112, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !33, i32 111, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!398 = metadata !{i32 114, i32 0, metadata !33, null}
!399 = metadata !{i32 127, i32 0, metadata !36, null}
!400 = metadata !{i32 134, i32 0, metadata !36, null}
!401 = metadata !{i32 135, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !36, i32 134, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!403 = metadata !{i32 137, i32 0, metadata !402, null}
!404 = metadata !{i32 139, i32 0, metadata !36, null}
!405 = metadata !{i32 140, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !36, i32 139, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!407 = metadata !{i32 143, i32 0, metadata !406, null}
!408 = metadata !{i32 145, i32 0, metadata !36, null}
!409 = metadata !{i32 146, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !36, i32 145, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!411 = metadata !{i32 148, i32 0, metadata !36, null}
!412 = metadata !{i32 161, i32 0, metadata !39, null}
!413 = metadata !{i32 169, i32 0, metadata !39, null}
!414 = metadata !{i32 170, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !39, i32 169, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!416 = metadata !{i32 172, i32 0, metadata !415, null}
!417 = metadata !{i32 174, i32 0, metadata !39, null}
!418 = metadata !{i32 175, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !39, i32 174, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!420 = metadata !{i32 178, i32 0, metadata !419, null}
!421 = metadata !{i32 180, i32 0, metadata !39, null}
!422 = metadata !{i32 181, i32 0, metadata !39, null}
!423 = metadata !{i32 182, i32 0, metadata !39, null}
!424 = metadata !{i32 183, i32 0, metadata !39, null}
!425 = metadata !{i32 184, i32 0, metadata !39, null}
!426 = metadata !{i32 185, i32 0, metadata !39, null}
!427 = metadata !{i32 187, i32 0, metadata !39, null}
!428 = metadata !{i32 199, i32 0, metadata !46, null}
!429 = metadata !{i32 200, i32 0, metadata !46, null}
!430 = metadata !{i32 201, i32 0, metadata !46, null}
!431 = metadata !{i32 210, i32 0, metadata !46, null}
!432 = metadata !{i32 212, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !46, i32 211, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!434 = metadata !{i32 214, i32 0, metadata !433, null}
!435 = metadata !{i32 216, i32 0, metadata !46, null}
!436 = metadata !{i32 217, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !46, i32 216, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!438 = metadata !{i32 220, i32 0, metadata !437, null}
!439 = metadata !{i32 222, i32 0, metadata !46, null}
!440 = metadata !{i32 223, i32 0, metadata !46, null}
!441 = metadata !{i32 224, i32 0, metadata !46, null}
!442 = metadata !{i32 225, i32 0, metadata !46, null}
!443 = metadata !{i32 226, i32 0, metadata !46, null}
!444 = metadata !{i32 231, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !446, i32 231, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!446 = metadata !{i32 786443, metadata !1, metadata !46, i32 230, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!447 = metadata !{i32 227, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !449, i32 227, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!449 = metadata !{i32 786443, metadata !1, metadata !46, i32 226, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!450 = metadata !{i32 228, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !448, i32 227, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!452 = metadata !{metadata !"double", metadata !349}
!453 = metadata !{i32 232, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !445, i32 231, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!455 = metadata !{i32 233, i32 0, metadata !454, null}
!456 = metadata !{i32 236, i32 0, metadata !46, null}
!457 = metadata !{i32 248, i32 0, metadata !58, null}
!458 = metadata !{i32 249, i32 0, metadata !58, null}
!459 = metadata !{i32 250, i32 0, metadata !58, null}
!460 = metadata !{i32 259, i32 0, metadata !58, null}
!461 = metadata !{i32 261, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !58, i32 260, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!463 = metadata !{i32 263, i32 0, metadata !462, null}
!464 = metadata !{i32 265, i32 0, metadata !58, null}
!465 = metadata !{i32 266, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !58, i32 265, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!467 = metadata !{i32 269, i32 0, metadata !466, null}
!468 = metadata !{i32 271, i32 0, metadata !58, null}
!469 = metadata !{i32 272, i32 0, metadata !58, null}
!470 = metadata !{i32 273, i32 0, metadata !58, null}
!471 = metadata !{i32 274, i32 0, metadata !58, null}
!472 = metadata !{i32 275, i32 0, metadata !58, null}
!473 = metadata !{i32 280, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !475, i32 280, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!475 = metadata !{i32 786443, metadata !1, metadata !58, i32 279, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!476 = metadata !{i32 276, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !478, i32 276, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!478 = metadata !{i32 786443, metadata !1, metadata !58, i32 275, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!479 = metadata !{i32 277, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !477, i32 276, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!481 = metadata !{i32 281, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !474, i32 280, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!483 = metadata !{i32 282, i32 0, metadata !482, null}
!484 = metadata !{i32 285, i32 0, metadata !58, null}
!485 = metadata !{i32 297, i32 0, metadata !68, null}
!486 = metadata !{i32 298, i32 0, metadata !68, null}
!487 = metadata !{i32 299, i32 0, metadata !68, null}
!488 = metadata !{i32 308, i32 0, metadata !68, null}
!489 = metadata !{i32 309, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !68, i32 308, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!491 = metadata !{i32 311, i32 0, metadata !490, null}
!492 = metadata !{i32 313, i32 0, metadata !68, null}
!493 = metadata !{i32 314, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !68, i32 313, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!495 = metadata !{i32 317, i32 0, metadata !494, null}
!496 = metadata !{i32 319, i32 0, metadata !68, null}
!497 = metadata !{i32 320, i32 0, metadata !68, null}
!498 = metadata !{i32 321, i32 0, metadata !68, null}
!499 = metadata !{i32 322, i32 0, metadata !68, null}
!500 = metadata !{i32 323, i32 0, metadata !68, null}
!501 = metadata !{i32 328, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !503, i32 328, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!503 = metadata !{i32 786443, metadata !1, metadata !68, i32 327, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!504 = metadata !{i32 324, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !506, i32 324, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!506 = metadata !{i32 786443, metadata !1, metadata !68, i32 323, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!507 = metadata !{i32 325, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !505, i32 324, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!509 = metadata !{i32 329, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !502, i32 328, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!511 = metadata !{i32 330, i32 0, metadata !510, null}
!512 = metadata !{i32 333, i32 0, metadata !68, null}
!513 = metadata !{i32 345, i32 0, metadata !78, null}
!514 = metadata !{i32 346, i32 0, metadata !78, null}
!515 = metadata !{i32 347, i32 0, metadata !78, null}
!516 = metadata !{i32 356, i32 0, metadata !78, null}
!517 = metadata !{i32 357, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !78, i32 356, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!519 = metadata !{i32 359, i32 0, metadata !518, null}
!520 = metadata !{i32 361, i32 0, metadata !78, null}
!521 = metadata !{i32 362, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !78, i32 361, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!523 = metadata !{i32 365, i32 0, metadata !522, null}
!524 = metadata !{i32 367, i32 0, metadata !78, null}
!525 = metadata !{i32 368, i32 0, metadata !78, null}
!526 = metadata !{i32 369, i32 0, metadata !78, null}
!527 = metadata !{i32 370, i32 0, metadata !78, null}
!528 = metadata !{i32 371, i32 0, metadata !78, null}
!529 = metadata !{i32 376, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !531, i32 376, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!531 = metadata !{i32 786443, metadata !1, metadata !78, i32 375, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!532 = metadata !{i32 372, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !534, i32 372, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!534 = metadata !{i32 786443, metadata !1, metadata !78, i32 371, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!535 = metadata !{i32 373, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !533, i32 372, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!537 = metadata !{i32 377, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !530, i32 376, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!539 = metadata !{i32 378, i32 0, metadata !538, null}
!540 = metadata !{i32 381, i32 0, metadata !78, null}
!541 = metadata !{i32 393, i32 0, metadata !88, null}
!542 = metadata !{i32 394, i32 0, metadata !88, null}
!543 = metadata !{i32 395, i32 0, metadata !88, null}
!544 = metadata !{i32 404, i32 0, metadata !88, null}
!545 = metadata !{i32 406, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !88, i32 405, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!547 = metadata !{i32 408, i32 0, metadata !546, null}
!548 = metadata !{i32 410, i32 0, metadata !88, null}
!549 = metadata !{i32 411, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !88, i32 410, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!551 = metadata !{i32 414, i32 0, metadata !550, null}
!552 = metadata !{i32 416, i32 0, metadata !88, null}
!553 = metadata !{i32 417, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !88, i32 416, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!555 = metadata !{i32 418, i32 0, metadata !554, null}
!556 = metadata !{i32 419, i32 0, metadata !88, null}
!557 = metadata !{i32 420, i32 0, metadata !88, null}
!558 = metadata !{i32 421, i32 0, metadata !88, null}
!559 = metadata !{i32 422, i32 0, metadata !88, null}
!560 = metadata !{i32 423, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !88, i32 423, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!562 = metadata !{i32 424, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !561, i32 423, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!564 = metadata !{i32 426, i32 0, metadata !88, null}
!565 = metadata !{i32 438, i32 0, metadata !110, null}
!566 = metadata !{i32 439, i32 0, metadata !110, null}
!567 = metadata !{i32 440, i32 0, metadata !110, null}
!568 = metadata !{i32 449, i32 0, metadata !110, null}
!569 = metadata !{i32 451, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !110, i32 450, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!571 = metadata !{i32 453, i32 0, metadata !570, null}
!572 = metadata !{i32 455, i32 0, metadata !110, null}
!573 = metadata !{i32 456, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !110, i32 455, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!575 = metadata !{i32 459, i32 0, metadata !574, null}
!576 = metadata !{i32 461, i32 0, metadata !110, null}
!577 = metadata !{i32 462, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !110, i32 461, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!579 = metadata !{i32 463, i32 0, metadata !578, null}
!580 = metadata !{i32 464, i32 0, metadata !110, null}
!581 = metadata !{i32 465, i32 0, metadata !110, null}
!582 = metadata !{i32 466, i32 0, metadata !110, null}
!583 = metadata !{i32 467, i32 0, metadata !110, null}
!584 = metadata !{i32 468, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !110, i32 468, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!586 = metadata !{i32 469, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 468, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!588 = metadata !{i32 470, i32 0, metadata !587, null}
!589 = metadata !{i32 472, i32 0, metadata !110, null}
!590 = metadata !{i32 484, i32 0, metadata !132, null}
!591 = metadata !{i32 485, i32 0, metadata !132, null}
!592 = metadata !{i32 486, i32 0, metadata !132, null}
!593 = metadata !{i32 495, i32 0, metadata !132, null}
!594 = metadata !{i32 497, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !132, i32 496, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!596 = metadata !{i32 499, i32 0, metadata !595, null}
!597 = metadata !{i32 501, i32 0, metadata !132, null}
!598 = metadata !{i32 502, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !132, i32 501, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!600 = metadata !{i32 505, i32 0, metadata !599, null}
!601 = metadata !{i32 507, i32 0, metadata !132, null}
!602 = metadata !{i32 508, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !132, i32 507, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!604 = metadata !{i32 509, i32 0, metadata !603, null}
!605 = metadata !{i32 510, i32 0, metadata !132, null}
!606 = metadata !{i32 511, i32 0, metadata !132, null}
!607 = metadata !{i32 512, i32 0, metadata !132, null}
!608 = metadata !{i32 513, i32 0, metadata !132, null}
!609 = metadata !{i32 514, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !132, i32 514, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!611 = metadata !{i32 515, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !610, i32 514, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!613 = metadata !{i32 517, i32 0, metadata !132, null}
!614 = metadata !{i32 529, i32 0, metadata !143, null}
!615 = metadata !{i32 530, i32 0, metadata !143, null}
!616 = metadata !{i32 531, i32 0, metadata !143, null}
!617 = metadata !{i32 540, i32 0, metadata !143, null}
!618 = metadata !{i32 542, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !143, i32 541, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!620 = metadata !{i32 544, i32 0, metadata !619, null}
!621 = metadata !{i32 546, i32 0, metadata !143, null}
!622 = metadata !{i32 547, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !143, i32 546, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!624 = metadata !{i32 550, i32 0, metadata !623, null}
!625 = metadata !{i32 552, i32 0, metadata !143, null}
!626 = metadata !{i32 553, i32 0, metadata !627, null}
!627 = metadata !{i32 786443, metadata !1, metadata !143, i32 552, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!628 = metadata !{i32 554, i32 0, metadata !627, null}
!629 = metadata !{i32 555, i32 0, metadata !143, null}
!630 = metadata !{i32 556, i32 0, metadata !143, null}
!631 = metadata !{i32 557, i32 0, metadata !143, null}
!632 = metadata !{i32 558, i32 0, metadata !143, null}
!633 = metadata !{i32 559, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !143, i32 559, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!635 = metadata !{i32 560, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !634, i32 559, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!637 = metadata !{i32 561, i32 0, metadata !636, null}
!638 = metadata !{i32 563, i32 0, metadata !143, null}
!639 = metadata !{i32 575, i32 0, metadata !154, null}
!640 = metadata !{i32 576, i32 0, metadata !154, null}
!641 = metadata !{i32 577, i32 0, metadata !154, null}
!642 = metadata !{i32 586, i32 0, metadata !154, null}
!643 = metadata !{i32 588, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !154, i32 587, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!645 = metadata !{i32 590, i32 0, metadata !644, null}
!646 = metadata !{i32 592, i32 0, metadata !154, null}
!647 = metadata !{i32 593, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !154, i32 592, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!649 = metadata !{i32 596, i32 0, metadata !648, null}
!650 = metadata !{i32 598, i32 0, metadata !154, null}
!651 = metadata !{i32 599, i32 0, metadata !154, null}
!652 = metadata !{i32 600, i32 0, metadata !154, null}
!653 = metadata !{i32 601, i32 0, metadata !154, null}
!654 = metadata !{i32 602, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !154, i32 602, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!656 = metadata !{i32 603, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !655, i32 602, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!658 = metadata !{i32 605, i32 0, metadata !154, null}
!659 = metadata !{i32 617, i32 0, metadata !165, null}
!660 = metadata !{i32 618, i32 0, metadata !165, null}
!661 = metadata !{i32 619, i32 0, metadata !165, null}
!662 = metadata !{i32 628, i32 0, metadata !165, null}
!663 = metadata !{i32 630, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !165, i32 629, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!665 = metadata !{i32 632, i32 0, metadata !664, null}
!666 = metadata !{i32 634, i32 0, metadata !165, null}
!667 = metadata !{i32 635, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !165, i32 634, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!669 = metadata !{i32 638, i32 0, metadata !668, null}
!670 = metadata !{i32 640, i32 0, metadata !165, null}
!671 = metadata !{i32 641, i32 0, metadata !165, null}
!672 = metadata !{i32 642, i32 0, metadata !165, null}
!673 = metadata !{i32 643, i32 0, metadata !165, null}
!674 = metadata !{i32 644, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !165, i32 644, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!676 = metadata !{i32 645, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !675, i32 644, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!678 = metadata !{i32 646, i32 0, metadata !677, null}
!679 = metadata !{i32 648, i32 0, metadata !165, null}
!680 = metadata !{i32 660, i32 0, metadata !176, null}
!681 = metadata !{i32 661, i32 0, metadata !176, null}
!682 = metadata !{i32 662, i32 0, metadata !176, null}
!683 = metadata !{i32 671, i32 0, metadata !176, null}
!684 = metadata !{i32 673, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !176, i32 672, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!686 = metadata !{i32 675, i32 0, metadata !685, null}
!687 = metadata !{i32 677, i32 0, metadata !176, null}
!688 = metadata !{i32 678, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !1, metadata !176, i32 677, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!690 = metadata !{i32 681, i32 0, metadata !689, null}
!691 = metadata !{i32 683, i32 0, metadata !176, null}
!692 = metadata !{i32 684, i32 0, metadata !176, null}
!693 = metadata !{i32 685, i32 0, metadata !176, null}
!694 = metadata !{i32 686, i32 0, metadata !176, null}
!695 = metadata !{i32 687, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !176, i32 687, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!697 = metadata !{i32 688, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !696, i32 687, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!699 = metadata !{i32 690, i32 0, metadata !176, null}
!700 = metadata !{i32 702, i32 0, metadata !187, null}
!701 = metadata !{i32 703, i32 0, metadata !187, null}
!702 = metadata !{i32 704, i32 0, metadata !187, null}
!703 = metadata !{i32 713, i32 0, metadata !187, null}
!704 = metadata !{i32 715, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !187, i32 714, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!706 = metadata !{i32 717, i32 0, metadata !705, null}
!707 = metadata !{i32 719, i32 0, metadata !187, null}
!708 = metadata !{i32 720, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !187, i32 719, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!710 = metadata !{i32 723, i32 0, metadata !709, null}
!711 = metadata !{i32 725, i32 0, metadata !187, null}
!712 = metadata !{i32 726, i32 0, metadata !187, null}
!713 = metadata !{i32 727, i32 0, metadata !187, null}
!714 = metadata !{i32 728, i32 0, metadata !187, null}
!715 = metadata !{i32 729, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !187, i32 729, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!717 = metadata !{i32 730, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !716, i32 729, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!719 = metadata !{i32 731, i32 0, metadata !718, null}
!720 = metadata !{i32 733, i32 0, metadata !187, null}
!721 = metadata !{i32 745, i32 0, metadata !198, null}
!722 = metadata !{i32 746, i32 0, metadata !198, null}
!723 = metadata !{i32 747, i32 0, metadata !198, null}
!724 = metadata !{i32 748, i32 0, metadata !198, null}
!725 = metadata !{i32 752, i32 0, metadata !198, null}
!726 = metadata !{i32 758, i32 0, metadata !198, null}
!727 = metadata !{i32 764, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !198, i32 763, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!729 = metadata !{i32 768, i32 0, metadata !728, null}
!730 = metadata !{i32 770, i32 0, metadata !198, null}
!731 = metadata !{i32 771, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !198, i32 770, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!733 = metadata !{i32 774, i32 0, metadata !732, null}
!734 = metadata !{i32 781, i32 0, metadata !198, null}
!735 = metadata !{i32 782, i32 0, metadata !198, null}
!736 = metadata !{i32 783, i32 0, metadata !198, null}
!737 = metadata !{i32 784, i32 0, metadata !198, null}
!738 = metadata !{i32 785, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !198, i32 785, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!740 = metadata !{i32 786, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !742, i32 786, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!742 = metadata !{i32 786443, metadata !1, metadata !739, i32 785, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!743 = metadata !{i32 787, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !741, i32 786, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!745 = metadata !{i32 788, i32 0, metadata !744, null}
!746 = metadata !{i32 789, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !744, i32 788, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!748 = metadata !{i32 790, i32 0, metadata !747, null}
!749 = metadata !{i32 791, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !744, i32 790, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!751 = metadata !{i32 792, i32 0, metadata !750, null}
!752 = metadata !{i32 793, i32 0, metadata !750, null}
!753 = metadata !{i32 796, i32 0, metadata !198, null}
!754 = metadata !{i32 808, i32 0, metadata !228, null}
!755 = metadata !{i32 809, i32 0, metadata !228, null}
!756 = metadata !{i32 810, i32 0, metadata !228, null}
!757 = metadata !{i32 811, i32 0, metadata !228, null}
!758 = metadata !{i32 815, i32 0, metadata !228, null}
!759 = metadata !{i32 821, i32 0, metadata !228, null}
!760 = metadata !{i32 827, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !228, i32 826, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!762 = metadata !{i32 830, i32 0, metadata !761, null}
!763 = metadata !{i32 832, i32 0, metadata !228, null}
!764 = metadata !{i32 833, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !228, i32 832, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!766 = metadata !{i32 836, i32 0, metadata !765, null}
!767 = metadata !{i32 843, i32 0, metadata !228, null}
!768 = metadata !{i32 844, i32 0, metadata !228, null}
!769 = metadata !{i32 845, i32 0, metadata !228, null}
!770 = metadata !{i32 846, i32 0, metadata !228, null}
!771 = metadata !{i32 847, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !228, i32 847, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!773 = metadata !{i32 848, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !775, i32 848, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!775 = metadata !{i32 786443, metadata !1, metadata !772, i32 847, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!776 = metadata !{i32 849, i32 0, metadata !777, null}
!777 = metadata !{i32 786443, metadata !1, metadata !774, i32 848, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!778 = metadata !{i32 850, i32 0, metadata !777, null}
!779 = metadata !{i32 851, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !777, i32 850, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!781 = metadata !{i32 852, i32 0, metadata !780, null}
!782 = metadata !{i32 853, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !777, i32 852, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!784 = metadata !{i32 854, i32 0, metadata !783, null}
!785 = metadata !{i32 855, i32 0, metadata !783, null}
!786 = metadata !{i32 859, i32 0, metadata !228, null}
!787 = metadata !{i32 871, i32 0, metadata !243, null}
!788 = metadata !{i32 880, i32 0, metadata !243, null}
!789 = metadata !{i32 887, i32 0, metadata !790, null}
!790 = metadata !{i32 786443, metadata !1, metadata !243, i32 886, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!791 = metadata !{i32 889, i32 0, metadata !790, null}
!792 = metadata !{i32 891, i32 0, metadata !243, null}
!793 = metadata !{i32 892, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !243, i32 891, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!795 = metadata !{i32 895, i32 0, metadata !794, null}
!796 = metadata !{i32 897, i32 0, metadata !243, null}
!797 = metadata !{i32 898, i32 0, metadata !243, null}
!798 = metadata !{i32 899, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !243, i32 899, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!800 = metadata !{i32 900, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !799, i32 899, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!802 = metadata !{i32 901, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !801, i32 900, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!804 = metadata !{i32 902, i32 0, metadata !803, null}
!805 = metadata !{i32 903, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !801, i32 902, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!807 = metadata !{i32 904, i32 0, metadata !806, null}
!808 = metadata !{i32 906, i32 0, metadata !243, null}
!809 = metadata !{i32 918, i32 0, metadata !253, null}
!810 = metadata !{i32 927, i32 0, metadata !253, null}
!811 = metadata !{i32 933, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !253, i32 932, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!813 = metadata !{i32 935, i32 0, metadata !812, null}
!814 = metadata !{i32 937, i32 0, metadata !253, null}
!815 = metadata !{i32 943, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !253, i32 943, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!817 = metadata !{i32 944, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !819, i32 944, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!819 = metadata !{i32 786443, metadata !1, metadata !816, i32 943, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!820 = metadata !{i32 938, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !253, i32 937, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!822 = metadata !{i32 941, i32 0, metadata !821, null}
!823 = metadata !{i32 945, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !818, i32 944, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!825 = metadata !{i32 946, i32 0, metadata !824, null}
!826 = metadata !{i32 947, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !824, i32 946, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!828 = metadata !{i32 948, i32 0, metadata !827, null}
!829 = metadata !{i32 949, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !824, i32 948, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!831 = metadata !{i32 950, i32 0, metadata !830, null}
!832 = metadata !{i32 951, i32 0, metadata !830, null}
!833 = metadata !{i32 955, i32 0, metadata !253, null}
!834 = metadata !{i32 968, i32 0, metadata !264, null}
!835 = metadata !{i32 969, i32 0, metadata !264, null}
!836 = metadata !{i32 979, i32 0, metadata !264, null}
!837 = metadata !{i32 991, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !264, i32 990, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!839 = metadata !{i32 993, i32 0, metadata !838, null}
!840 = metadata !{i32 994, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !838, i32 993, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!842 = metadata !{i32 995, i32 0, metadata !841, null}
!843 = metadata !{i32 996, i32 0, metadata !841, null}
!844 = metadata !{i32 997, i32 0, metadata !838, null}
!845 = metadata !{i32 998, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !838, i32 997, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!847 = metadata !{i32 999, i32 0, metadata !846, null}
!848 = metadata !{i32 1000, i32 0, metadata !846, null}
!849 = metadata !{i32 1001, i32 0, metadata !838, null}
!850 = metadata !{i32 1003, i32 0, metadata !264, null}
!851 = metadata !{i32 1004, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !264, i32 1003, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!853 = metadata !{i32 1007, i32 0, metadata !852, null}
!854 = metadata !{i32 1009, i32 0, metadata !264, null}
!855 = metadata !{i32 1010, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !264, i32 1009, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!857 = metadata !{i32 1013, i32 0, metadata !856, null}
!858 = metadata !{i32 1015, i32 0, metadata !264, null}
!859 = metadata !{i32 1016, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !264, i32 1015, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!861 = metadata !{i32 1019, i32 0, metadata !860, null}
!862 = metadata !{i32 1021, i32 0, metadata !264, null}
!863 = metadata !{i32 1022, i32 0, metadata !264, null}
!864 = metadata !{i32 1023, i32 0, metadata !264, null}
!865 = metadata !{i32 1024, i32 0, metadata !288, null}
!866 = metadata !{i32 1026, i32 0, metadata !867, null}
!867 = metadata !{i32 786443, metadata !1, metadata !287, i32 1026, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!868 = metadata !{i32 1027, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !870, i32 1027, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!870 = metadata !{i32 786443, metadata !1, metadata !867, i32 1026, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!871 = metadata !{i32 1030, i32 0, metadata !870, null}
!872 = metadata !{i32 1031, i32 0, metadata !870, null}
!873 = metadata !{i32 1028, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !869, i32 1027, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!875 = metadata !{i32 1033, i32 0, metadata !288, null}
!876 = metadata !{i32 1035, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !291, i32 1035, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!878 = metadata !{i32 1042, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !880, i32 1042, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!880 = metadata !{i32 786443, metadata !1, metadata !288, i32 1041, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!881 = metadata !{i32 1043, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !883, i32 1043, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!883 = metadata !{i32 786443, metadata !1, metadata !879, i32 1042, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!884 = metadata !{i32 1036, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !1, metadata !886, i32 1036, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!886 = metadata !{i32 786443, metadata !1, metadata !877, i32 1035, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!887 = metadata !{i32 1039, i32 0, metadata !886, null}
!888 = metadata !{i32 1037, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !885, i32 1036, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!890 = metadata !{i32 1044, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !882, i32 1043, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!892 = metadata !{i32 1045, i32 0, metadata !891, null}
!893 = metadata !{i32 1046, i32 0, metadata !891, null}
!894 = metadata !{i32 1051, i32 0, metadata !295, null}
!895 = metadata !{i32 1053, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !294, i32 1053, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!897 = metadata !{i32 1054, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !899, i32 1054, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!899 = metadata !{i32 786443, metadata !1, metadata !896, i32 1053, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!900 = metadata !{i32 1058, i32 0, metadata !899, null}
!901 = metadata !{i32 1059, i32 0, metadata !899, null}
!902 = metadata !{i32 1055, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !898, i32 1054, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!904 = metadata !{i32 1056, i32 0, metadata !903, null}
!905 = metadata !{i32 1061, i32 0, metadata !295, null}
!906 = metadata !{i32 1063, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !298, i32 1063, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!908 = metadata !{i32 1072, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !910, i32 1072, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!910 = metadata !{i32 786443, metadata !1, metadata !295, i32 1071, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!911 = metadata !{i32 1073, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !913, i32 1073, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!913 = metadata !{i32 786443, metadata !1, metadata !909, i32 1072, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!914 = metadata !{i32 1064, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 1064, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!916 = metadata !{i32 786443, metadata !1, metadata !907, i32 1063, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!917 = metadata !{i32 1068, i32 0, metadata !916, null}
!918 = metadata !{i32 1069, i32 0, metadata !916, null}
!919 = metadata !{i32 1065, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !915, i32 1064, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!921 = metadata !{i32 1066, i32 0, metadata !920, null}
!922 = metadata !{i32 1074, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !912, i32 1073, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!924 = metadata !{i32 1075, i32 0, metadata !923, null}
!925 = metadata !{i32 1076, i32 0, metadata !923, null}
!926 = metadata !{i32 1077, i32 0, metadata !923, null}
!927 = metadata !{i32 1082, i32 0, metadata !264, null}
!928 = metadata !{i32 1096, i32 0, metadata !300, null}
!929 = metadata !{i32 1097, i32 0, metadata !300, null}
!930 = metadata !{i32 1107, i32 0, metadata !300, null}
!931 = metadata !{i32 1119, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !300, i32 1118, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!933 = metadata !{i32 1121, i32 0, metadata !932, null}
!934 = metadata !{i32 1122, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !932, i32 1121, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!936 = metadata !{i32 1123, i32 0, metadata !935, null}
!937 = metadata !{i32 1124, i32 0, metadata !935, null}
!938 = metadata !{i32 1125, i32 0, metadata !932, null}
!939 = metadata !{i32 1126, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !932, i32 1125, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!941 = metadata !{i32 1127, i32 0, metadata !940, null}
!942 = metadata !{i32 1128, i32 0, metadata !940, null}
!943 = metadata !{i32 1129, i32 0, metadata !932, null}
!944 = metadata !{i32 1131, i32 0, metadata !300, null}
!945 = metadata !{i32 1132, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !300, i32 1131, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!947 = metadata !{i32 1135, i32 0, metadata !946, null}
!948 = metadata !{i32 1137, i32 0, metadata !300, null}
!949 = metadata !{i32 1138, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !300, i32 1137, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!951 = metadata !{i32 1141, i32 0, metadata !950, null}
!952 = metadata !{i32 1143, i32 0, metadata !300, null}
!953 = metadata !{i32 1144, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !300, i32 1143, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!955 = metadata !{i32 1147, i32 0, metadata !954, null}
!956 = metadata !{i32 1155, i32 0, metadata !300, null}
!957 = metadata !{i32 1156, i32 0, metadata !300, null}
!958 = metadata !{i32 1157, i32 0, metadata !300, null}
!959 = metadata !{i32 1166, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !961, i32 1166, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!961 = metadata !{i32 786443, metadata !1, metadata !300, i32 1165, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!962 = metadata !{i32 1167, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !964, i32 1167, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!964 = metadata !{i32 786443, metadata !1, metadata !960, i32 1166, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!965 = metadata !{i32 1158, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !967, i32 1158, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!967 = metadata !{i32 786443, metadata !1, metadata !300, i32 1157, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!968 = metadata !{i32 1159, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !970, i32 1159, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!970 = metadata !{i32 786443, metadata !1, metadata !966, i32 1158, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!971 = metadata !{i32 1160, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !969, i32 1159, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!973 = metadata !{i32 1161, i32 0, metadata !972, null}
!974 = metadata !{i32 1162, i32 0, metadata !972, null}
!975 = metadata !{i32 1168, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !963, i32 1167, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!977 = metadata !{i32 1169, i32 0, metadata !976, null}
!978 = metadata !{i32 1170, i32 0, metadata !976, null}
!979 = metadata !{i32 1171, i32 0, metadata !976, null}
!980 = metadata !{i32 1175, i32 0, metadata !300, null}
!981 = metadata !{i32 1187, i32 0, metadata !320, null}
!982 = metadata !{i32 1188, i32 0, metadata !320, null}
!983 = metadata !{i32 1189, i32 0, metadata !320, null}
!984 = metadata !{i32 1199, i32 0, metadata !320, null}
!985 = metadata !{i32 1202, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !320, i32 1201, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!987 = metadata !{i32 1205, i32 0, metadata !986, null}
!988 = metadata !{i32 1207, i32 0, metadata !320, null}
!989 = metadata !{i32 1212, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !320, i32 1211, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!991 = metadata !{i32 1215, i32 0, metadata !990, null}
!992 = metadata !{i32 1217, i32 0, metadata !320, null}
!993 = metadata !{i32 1218, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !320, i32 1217, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!995 = metadata !{i32 1221, i32 0, metadata !994, null}
!996 = metadata !{i32 1223, i32 0, metadata !320, null}
!997 = metadata !{i32 1226, i32 0, metadata !320, null}
!998 = metadata !{i32 1227, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !320, i32 1226, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1000 = metadata !{i32 1228, i32 0, metadata !999, null}
!1001 = metadata !{i32 1229, i32 0, metadata !999, null}
!1002 = metadata !{i32 1230, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !1004, i32 1230, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1004 = metadata !{i32 786443, metadata !1, metadata !999, i32 1229, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1005 = metadata !{i32 1236, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !1007, i32 1236, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1007 = metadata !{i32 786443, metadata !1, metadata !999, i32 1235, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1008 = metadata !{i32 1231, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !1003, i32 1230, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1010 = metadata !{i32 1232, i32 0, metadata !1009, null}
!1011 = metadata !{i32 1233, i32 0, metadata !1009, null}
!1012 = metadata !{i32 1237, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1006, i32 1236, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1014 = metadata !{i32 1238, i32 0, metadata !1013, null}
!1015 = metadata !{i32 1239, i32 0, metadata !1013, null}
!1016 = metadata !{i32 1243, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !320, i32 1242, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1018 = metadata !{i32 1244, i32 0, metadata !1017, null}
!1019 = metadata !{i32 1245, i32 0, metadata !1017, null}
!1020 = metadata !{i32 1246, i32 0, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !1, metadata !1022, i32 1246, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1022 = metadata !{i32 786443, metadata !1, metadata !1017, i32 1245, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1023 = metadata !{i32 1255, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !1025, i32 1255, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1025 = metadata !{i32 786443, metadata !1, metadata !1017, i32 1254, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1026 = metadata !{i32 1247, i32 0, metadata !1027, null}
!1027 = metadata !{i32 786443, metadata !1, metadata !1021, i32 1246, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1028 = metadata !{i32 1248, i32 0, metadata !1027, null}
!1029 = metadata !{i32 1249, i32 0, metadata !1027, null}
!1030 = metadata !{i32 1250, i32 0, metadata !1027, null}
!1031 = metadata !{i32 1251, i32 0, metadata !1027, null}
!1032 = metadata !{i32 1252, i32 0, metadata !1027, null}
!1033 = metadata !{i32 1256, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !1024, i32 1255, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1035 = metadata !{i32 1257, i32 0, metadata !1034, null}
!1036 = metadata !{i32 1258, i32 0, metadata !1034, null}
!1037 = metadata !{i32 1259, i32 0, metadata !1034, null}
!1038 = metadata !{i32 1260, i32 0, metadata !1034, null}
!1039 = metadata !{i32 1261, i32 0, metadata !1034, null}
!1040 = metadata !{i32 1265, i32 0, metadata !320, null}
!1041 = metadata !{i32 1277, i32 0, metadata !332, null}
!1042 = metadata !{i32 1278, i32 0, metadata !332, null}
!1043 = metadata !{i32 1279, i32 0, metadata !332, null}
!1044 = metadata !{i32 1289, i32 0, metadata !332, null}
!1045 = metadata !{i32 1292, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !332, i32 1291, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1047 = metadata !{i32 1295, i32 0, metadata !1046, null}
!1048 = metadata !{i32 1297, i32 0, metadata !332, null}
!1049 = metadata !{i32 1302, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !332, i32 1301, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1051 = metadata !{i32 1305, i32 0, metadata !1050, null}
!1052 = metadata !{i32 1307, i32 0, metadata !332, null}
!1053 = metadata !{i32 1308, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !332, i32 1307, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1055 = metadata !{i32 1311, i32 0, metadata !1054, null}
!1056 = metadata !{i32 1313, i32 0, metadata !332, null}
!1057 = metadata !{i32 1316, i32 0, metadata !332, null}
!1058 = metadata !{i32 1317, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !332, i32 1316, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1060 = metadata !{i32 1318, i32 0, metadata !1059, null}
!1061 = metadata !{i32 1319, i32 0, metadata !1059, null}
!1062 = metadata !{i32 1320, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1064, i32 1320, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1064 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1319, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1065 = metadata !{i32 1326, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1067, i32 1326, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1067 = metadata !{i32 786443, metadata !1, metadata !1059, i32 1325, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1068 = metadata !{i32 1321, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1063, i32 1320, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1070 = metadata !{i32 1322, i32 0, metadata !1069, null}
!1071 = metadata !{i32 1323, i32 0, metadata !1069, null}
!1072 = metadata !{i32 1327, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !1066, i32 1326, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1074 = metadata !{i32 1328, i32 0, metadata !1073, null}
!1075 = metadata !{i32 1329, i32 0, metadata !1073, null}
!1076 = metadata !{i32 1333, i32 0, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !1, metadata !332, i32 1332, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1078 = metadata !{i32 1334, i32 0, metadata !1077, null}
!1079 = metadata !{i32 1335, i32 0, metadata !1077, null}
!1080 = metadata !{i32 1336, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !1082, i32 1336, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1082 = metadata !{i32 786443, metadata !1, metadata !1077, i32 1335, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1083 = metadata !{i32 1345, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1085, i32 1345, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1085 = metadata !{i32 786443, metadata !1, metadata !1077, i32 1344, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1086 = metadata !{i32 1337, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1081, i32 1336, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1088 = metadata !{i32 1338, i32 0, metadata !1087, null}
!1089 = metadata !{i32 1339, i32 0, metadata !1087, null}
!1090 = metadata !{i32 1340, i32 0, metadata !1087, null}
!1091 = metadata !{i32 1341, i32 0, metadata !1087, null}
!1092 = metadata !{i32 1342, i32 0, metadata !1087, null}
!1093 = metadata !{i32 1346, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1084, i32 1345, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_util.c]
!1095 = metadata !{i32 1347, i32 0, metadata !1094, null}
!1096 = metadata !{i32 1348, i32 0, metadata !1094, null}
!1097 = metadata !{i32 1349, i32 0, metadata !1094, null}
!1098 = metadata !{i32 1350, i32 0, metadata !1094, null}
!1099 = metadata !{i32 1351, i32 0, metadata !1094, null}
!1100 = metadata !{i32 1355, i32 0, metadata !332, null}
