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
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  switch i32 %1, label %if.end23 [
    i32 1, label %if.then10
    i32 2, label %if.then15
  ]

if.then10:                                        ; preds = %if.end7
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %3 = load i32* %nowned, align 4, !tbaa !3
  %mul = shl i32 %3, 3
  %add = add i32 %mul, 32
  br label %if.end23

if.then15:                                        ; preds = %if.end7
  %nowned16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %4 = load i32* %nowned16, align 4, !tbaa !3
  %mul17 = shl i32 %4, 4
  %add20 = add i32 %mul17, 32
  br label %if.end23

if.end23:                                         ; preds = %if.end7, %if.then15, %if.then10
  %nbytes.0 = phi i32 [ %add, %if.then10 ], [ %add20, %if.then15 ], [ undef, %if.end7 ]
  ret i32 %nbytes.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @A2_shiftBase(%struct._A2* %mtx, i32 %rowoff, i32 %coloff) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._A2* null, i32 %rowoff, i32 %coloff) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %rowoff, i32 %coloff, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %3 = load i32* %n1, align 4, !tbaa !3
  %sub = sub nsw i32 %3, %rowoff
  store i32 %sub, i32* %n1, align 4, !tbaa !3
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %4 = load i32* %n2, align 4, !tbaa !3
  %sub8 = sub nsw i32 %4, %coloff
  store i32 %sub8, i32* %n2, align 4, !tbaa !3
  switch i32 %1, label %if.end26 [
    i32 1, label %if.then11
    i32 2, label %if.then15
  ]

if.then11:                                        ; preds = %if.end7
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %rowoff
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !3
  %mul12 = mul nsw i32 %6, %coloff
  %add = add nsw i32 %mul12, %mul
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries, align 8, !tbaa !0
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds double* %7, i64 %idx.ext
  store double* %add.ptr, double** %entries, align 8, !tbaa !0
  br label %if.end26

if.then15:                                        ; preds = %if.end7
  %inc116 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %8 = load i32* %inc116, align 4, !tbaa !3
  %mul17 = mul nsw i32 %8, %rowoff
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %9 = load i32* %inc218, align 4, !tbaa !3
  %mul19 = mul nsw i32 %9, %coloff
  %add20 = add nsw i32 %mul19, %mul17
  %mul21 = shl nsw i32 %add20, 1
  %entries22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %10 = load double** %entries22, align 8, !tbaa !0
  %idx.ext23 = sext i32 %mul21 to i64
  %add.ptr24 = getelementptr inbounds double* %10, i64 %idx.ext23
  store double* %add.ptr24, double** %entries22, align 8, !tbaa !0
  br label %if.end26

if.end26:                                         ; preds = %if.end7, %if.then15, %if.then11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_rowMajor(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %3 = load i32* %inc2, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %3, 1
  %. = zext i1 %cmp8 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_columnMajor(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %3 = load i32* %inc1, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %3, 1
  %. = zext i1 %cmp8 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize uwtable
define void @A2_transpose(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._A2* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str9, i64 0, i64 0), %struct._A2* %mtx, i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %n18 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %3 = load i32* %n18, align 4, !tbaa !3
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %4 = load i32* %n2, align 4, !tbaa !3
  store i32 %4, i32* %n18, align 4, !tbaa !3
  store i32 %3, i32* %n2, align 4, !tbaa !3
  %inc111 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc111, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc2, align 4, !tbaa !3
  store i32 %6, i32* %inc111, align 4, !tbaa !3
  store i32 %5, i32* %inc2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRow(%struct._A2* %mtx, double* %row, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %row, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %irow, 0
  %or.cond90 = or i1 %cmp4, %cmp6
  br i1 %or.cond90, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %irow
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([96 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end16:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !3
  %n217 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %6 = load i32* %n217, align 4, !tbaa !3
  %inc218 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc218, align 4, !tbaa !3
  switch i32 %3, label %if.end51 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
  ]

for.cond29.preheader:                             ; preds = %if.end16
  %cmp3095 = icmp sgt i32 %6, 0
  br i1 %cmp3095, label %for.body31.lr.ph, label %if.end51

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %8 = mul i32 %5, %irow
  %9 = sext i32 %8 to i64
  %10 = sext i32 %7 to i64
  br label %for.body31

for.cond.preheader:                               ; preds = %if.end16
  %cmp2391 = icmp sgt i32 %6, 0
  br i1 %cmp2391, label %for.body.lr.ph, label %if.end51

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %5, %irow
  %12 = sext i32 %11 to i64
  %13 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv98 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next99, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %0, i64 %indvars.iv98
  %14 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds double* %row, i64 %indvars.iv
  store double %14, double* %arrayidx25, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next99 = add i64 %indvars.iv98, %13
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %if.end51, label %for.body

for.body31:                                       ; preds = %for.body31, %for.body31.lr.ph
  %indvars.iv102 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next103, %for.body31 ]
  %indvars.iv100 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next101, %for.body31 ]
  %15 = trunc i64 %indvars.iv102 to i32
  %mul32 = shl nsw i32 %15, 1
  %idxprom33 = sext i32 %mul32 to i64
  %arrayidx34 = getelementptr inbounds double* %0, i64 %idxprom33
  %16 = load double* %arrayidx34, align 8, !tbaa !4
  %17 = trunc i64 %indvars.iv100 to i32
  %mul35 = shl nsw i32 %17, 1
  %idxprom36 = sext i32 %mul35 to i64
  %arrayidx37 = getelementptr inbounds double* %row, i64 %idxprom36
  store double %16, double* %arrayidx37, align 8, !tbaa !4
  %add3988 = or i32 %mul32, 1
  %idxprom40 = sext i32 %add3988 to i64
  %arrayidx41 = getelementptr inbounds double* %0, i64 %idxprom40
  %18 = load double* %arrayidx41, align 8, !tbaa !4
  %add4389 = or i32 %mul35, 1
  %idxprom44 = sext i32 %add4389 to i64
  %arrayidx45 = getelementptr inbounds double* %row, i64 %idxprom44
  store double %18, double* %arrayidx45, align 8, !tbaa !4
  %indvars.iv.next101 = add i64 %indvars.iv100, 1
  %indvars.iv.next103 = add i64 %indvars.iv102, %10
  %lftr.wideiv104 = trunc i64 %indvars.iv.next101 to i32
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %6
  br i1 %exitcond105, label %if.end51, label %for.body31

if.end51:                                         ; preds = %for.cond29.preheader, %for.body31, %for.cond.preheader, %for.body, %if.end16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumn(%struct._A2* %mtx, double* %col, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %col, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %jcol, 0
  %or.cond90 = or i1 %cmp4, %cmp6
  br i1 %or.cond90, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %jcol
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %3, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([99 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end16:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !3
  %n117 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %6 = load i32* %n117, align 4, !tbaa !3
  %inc118 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc118, align 4, !tbaa !3
  switch i32 %3, label %if.end51 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
  ]

for.cond29.preheader:                             ; preds = %if.end16
  %cmp3095 = icmp sgt i32 %6, 0
  br i1 %cmp3095, label %for.body31.lr.ph, label %if.end51

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %8 = mul i32 %5, %jcol
  %9 = sext i32 %8 to i64
  %10 = sext i32 %7 to i64
  br label %for.body31

for.cond.preheader:                               ; preds = %if.end16
  %cmp2391 = icmp sgt i32 %6, 0
  br i1 %cmp2391, label %for.body.lr.ph, label %if.end51

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %5, %jcol
  %12 = sext i32 %11 to i64
  %13 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv98 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next99, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %0, i64 %indvars.iv98
  %14 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx25 = getelementptr inbounds double* %col, i64 %indvars.iv
  store double %14, double* %arrayidx25, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next99 = add i64 %indvars.iv98, %13
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %if.end51, label %for.body

for.body31:                                       ; preds = %for.body31, %for.body31.lr.ph
  %indvars.iv102 = phi i64 [ %9, %for.body31.lr.ph ], [ %indvars.iv.next103, %for.body31 ]
  %indvars.iv100 = phi i64 [ 0, %for.body31.lr.ph ], [ %indvars.iv.next101, %for.body31 ]
  %15 = trunc i64 %indvars.iv102 to i32
  %mul32 = shl nsw i32 %15, 1
  %idxprom33 = sext i32 %mul32 to i64
  %arrayidx34 = getelementptr inbounds double* %0, i64 %idxprom33
  %16 = load double* %arrayidx34, align 8, !tbaa !4
  %17 = trunc i64 %indvars.iv100 to i32
  %mul35 = shl nsw i32 %17, 1
  %idxprom36 = sext i32 %mul35 to i64
  %arrayidx37 = getelementptr inbounds double* %col, i64 %idxprom36
  store double %16, double* %arrayidx37, align 8, !tbaa !4
  %add3988 = or i32 %mul32, 1
  %idxprom40 = sext i32 %add3988 to i64
  %arrayidx41 = getelementptr inbounds double* %0, i64 %idxprom40
  %18 = load double* %arrayidx41, align 8, !tbaa !4
  %add4389 = or i32 %mul35, 1
  %idxprom44 = sext i32 %add4389 to i64
  %arrayidx45 = getelementptr inbounds double* %col, i64 %idxprom44
  store double %18, double* %arrayidx45, align 8, !tbaa !4
  %indvars.iv.next101 = add i64 %indvars.iv100, 1
  %indvars.iv.next103 = add i64 %indvars.iv102, %10
  %lftr.wideiv104 = trunc i64 %indvars.iv.next101 to i32
  %exitcond105 = icmp eq i32 %lftr.wideiv104, %6
  br i1 %exitcond105, label %if.end51, label %for.body31

if.end51:                                         ; preds = %for.cond29.preheader, %for.body31, %for.cond.preheader, %for.body, %if.end16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRow(%struct._A2* %mtx, double* %row, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %row, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %irow, 0
  %or.cond86 = or i1 %or.cond, %cmp3
  br i1 %or.cond86, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %0, %irow
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([92 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, double* %row, i32 %irow, i32 %2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %4 = load i32* %inc1, align 4, !tbaa !3
  %n214 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n214, align 4, !tbaa !3
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc215, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  switch i32 %2, label %if.end48 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond26.preheader
  ]

for.cond26.preheader:                             ; preds = %if.end13
  %cmp2791 = icmp sgt i32 %5, 0
  br i1 %cmp2791, label %for.body28.lr.ph, label %if.end48

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = mul i32 %4, %irow
  %9 = sext i32 %8 to i64
  %10 = sext i32 %6 to i64
  br label %for.body28

for.cond.preheader:                               ; preds = %if.end13
  %cmp2087 = icmp sgt i32 %5, 0
  br i1 %cmp2087, label %for.body.lr.ph, label %if.end48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %4, %irow
  %12 = sext i32 %11 to i64
  %13 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv94 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next95, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %row, i64 %indvars.iv
  %14 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds double* %7, i64 %indvars.iv94
  store double %14, double* %arrayidx22, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next95 = add i64 %indvars.iv94, %13
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end48, label %for.body

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv98 = phi i64 [ %9, %for.body28.lr.ph ], [ %indvars.iv.next99, %for.body28 ]
  %indvars.iv96 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next97, %for.body28 ]
  %15 = trunc i64 %indvars.iv96 to i32
  %mul29 = shl nsw i32 %15, 1
  %idxprom30 = sext i32 %mul29 to i64
  %arrayidx31 = getelementptr inbounds double* %row, i64 %idxprom30
  %16 = load double* %arrayidx31, align 8, !tbaa !4
  %17 = trunc i64 %indvars.iv98 to i32
  %mul32 = shl nsw i32 %17, 1
  %idxprom33 = sext i32 %mul32 to i64
  %arrayidx34 = getelementptr inbounds double* %7, i64 %idxprom33
  store double %16, double* %arrayidx34, align 8, !tbaa !4
  %add3684 = or i32 %mul29, 1
  %idxprom37 = sext i32 %add3684 to i64
  %arrayidx38 = getelementptr inbounds double* %row, i64 %idxprom37
  %18 = load double* %arrayidx38, align 8, !tbaa !4
  %add4085 = or i32 %mul32, 1
  %idxprom41 = sext i32 %add4085 to i64
  %arrayidx42 = getelementptr inbounds double* %7, i64 %idxprom41
  store double %18, double* %arrayidx42, align 8, !tbaa !4
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %indvars.iv.next99 = add i64 %indvars.iv98, %10
  %lftr.wideiv100 = trunc i64 %indvars.iv.next97 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %5
  br i1 %exitcond101, label %if.end48, label %for.body28

if.end48:                                         ; preds = %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumn(%struct._A2* %mtx, double* %col, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %col, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond86 = or i1 %or.cond, %cmp3
  br i1 %or.cond86, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %0 = load i32* %n2, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %0, %jcol
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false4, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %2 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, double* %col, i32 %jcol, i32 %2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %4 = load i32* %inc2, align 4, !tbaa !3
  %n114 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n114, align 4, !tbaa !3
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc115, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  switch i32 %2, label %if.end48 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond26.preheader
  ]

for.cond26.preheader:                             ; preds = %if.end13
  %cmp2791 = icmp sgt i32 %5, 0
  br i1 %cmp2791, label %for.body28.lr.ph, label %if.end48

for.body28.lr.ph:                                 ; preds = %for.cond26.preheader
  %8 = mul i32 %4, %jcol
  %9 = sext i32 %8 to i64
  %10 = sext i32 %6 to i64
  br label %for.body28

for.cond.preheader:                               ; preds = %if.end13
  %cmp2087 = icmp sgt i32 %5, 0
  br i1 %cmp2087, label %for.body.lr.ph, label %if.end48

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = mul i32 %4, %jcol
  %12 = sext i32 %11 to i64
  %13 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv94 = phi i64 [ %12, %for.body.lr.ph ], [ %indvars.iv.next95, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %col, i64 %indvars.iv
  %14 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx22 = getelementptr inbounds double* %7, i64 %indvars.iv94
  store double %14, double* %arrayidx22, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next95 = add i64 %indvars.iv94, %13
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end48, label %for.body

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %indvars.iv98 = phi i64 [ %9, %for.body28.lr.ph ], [ %indvars.iv.next99, %for.body28 ]
  %indvars.iv96 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvars.iv.next97, %for.body28 ]
  %15 = trunc i64 %indvars.iv96 to i32
  %mul29 = shl nsw i32 %15, 1
  %idxprom30 = sext i32 %mul29 to i64
  %arrayidx31 = getelementptr inbounds double* %col, i64 %idxprom30
  %16 = load double* %arrayidx31, align 8, !tbaa !4
  %17 = trunc i64 %indvars.iv98 to i32
  %mul32 = shl nsw i32 %17, 1
  %idxprom33 = sext i32 %mul32 to i64
  %arrayidx34 = getelementptr inbounds double* %7, i64 %idxprom33
  store double %16, double* %arrayidx34, align 8, !tbaa !4
  %add3684 = or i32 %mul29, 1
  %idxprom37 = sext i32 %add3684 to i64
  %arrayidx38 = getelementptr inbounds double* %col, i64 %idxprom37
  %18 = load double* %arrayidx38, align 8, !tbaa !4
  %add4085 = or i32 %mul32, 1
  %idxprom41 = sext i32 %add4085 to i64
  %arrayidx42 = getelementptr inbounds double* %7, i64 %idxprom41
  store double %18, double* %arrayidx42, align 8, !tbaa !4
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %indvars.iv.next99 = add i64 %indvars.iv98, %10
  %lftr.wideiv100 = trunc i64 %indvars.iv.next97 to i32
  %exitcond101 = icmp eq i32 %lftr.wideiv100, %5
  br i1 %exitcond101, label %if.end48, label %for.body28

if.end48:                                         ; preds = %for.cond26.preheader, %for.body28, %for.cond.preheader, %for.body, %if.end13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRowDV(%struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._DV* %rowDV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %irow, 0
  %or.cond48 = or i1 %cmp4, %cmp6
  br i1 %or.cond48, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %irow
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([79 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @DV_size(%struct._DV* %rowDV) #5
  %n215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n215, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %call14, %5
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @DV_setSize(%struct._DV* %rowDV, i32 %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @DV_entries(%struct._DV* %rowDV) #5
  %6 = load double** %entries3, align 8, !tbaa !0
  %cmp2249 = icmp sgt i32 %5, 0
  br i1 %cmp2249, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %inc220 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc220, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = sext i32 %mul to i64
  %10 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv52 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next53, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %6, i64 %indvars.iv52
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds double* %call19, i64 %indvars.iv
  store double %11, double* %arrayidx24, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next53 = add i64 %indvars.iv52, %10
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end18
  ret void
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_extractRowZV(%struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._ZV* %rowZV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %irow, 0
  %or.cond64 = or i1 %cmp4, %cmp6
  br i1 %or.cond64, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %irow
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str20, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 2
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str21, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @ZV_size(%struct._ZV* %rowZV) #5
  %n215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n215, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %call14, %5
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @ZV_setSize(%struct._ZV* %rowZV, i32 %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @ZV_entries(%struct._ZV* %rowZV) #5
  %6 = load double** %entries3, align 8, !tbaa !0
  %cmp2265 = icmp sgt i32 %5, 0
  br i1 %cmp2265, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %inc220 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc220, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %8 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %irow
  %9 = sext i32 %mul to i64
  %10 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv68 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %11 = trunc i64 %indvars.iv68 to i32
  %mul23 = shl nsw i32 %11, 1
  %idxprom = sext i32 %mul23 to i64
  %arrayidx = getelementptr inbounds double* %6, i64 %idxprom
  %12 = load double* %arrayidx, align 8, !tbaa !4
  %13 = trunc i64 %indvars.iv to i32
  %mul24 = shl nsw i32 %13, 1
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds double* %call19, i64 %idxprom25
  store double %12, double* %arrayidx26, align 8, !tbaa !4
  %add62 = or i32 %mul23, 1
  %idxprom28 = sext i32 %add62 to i64
  %arrayidx29 = getelementptr inbounds double* %6, i64 %idxprom28
  %14 = load double* %arrayidx29, align 8, !tbaa !4
  %add3163 = or i32 %mul24, 1
  %idxprom32 = sext i32 %add3163 to i64
  %arrayidx33 = getelementptr inbounds double* %call19, i64 %idxprom32
  store double %14, double* %arrayidx33, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next69 = add i64 %indvars.iv68, %10
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end18
  ret void
}

; Function Attrs: optsize
declare i32 @ZV_size(%struct._ZV*) #3

; Function Attrs: optsize
declare void @ZV_setSize(%struct._ZV*, i32) #3

; Function Attrs: optsize
declare double* @ZV_entries(%struct._ZV*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumnDV(%struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._DV* %colDV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %jcol, 0
  %or.cond48 = or i1 %cmp4, %cmp6
  br i1 %or.cond48, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %jcol
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str22, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str23, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @DV_size(%struct._DV* %colDV) #5
  %n115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n115, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %call14, %5
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @DV_setSize(%struct._DV* %colDV, i32 %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @DV_entries(%struct._DV* %colDV) #5
  %6 = load double** %entries3, align 8, !tbaa !0
  %cmp2249 = icmp sgt i32 %5, 0
  br i1 %cmp2249, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %inc120 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc120, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %jcol
  %9 = sext i32 %mul to i64
  %10 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv52 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next53, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %6, i64 %indvars.iv52
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds double* %call19, i64 %indvars.iv
  store double %11, double* %arrayidx24, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next53 = add i64 %indvars.iv52, %10
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_extractColumnZV(%struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._ZV* %colZV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %entries3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %0 = load double** %entries3, align 8, !tbaa !0
  %cmp4 = icmp eq double* %0, null
  %cmp6 = icmp slt i32 %jcol, 0
  %or.cond64 = or i1 %cmp4, %cmp6
  br i1 %or.cond64, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %jcol
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str24, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 2
  br i1 %cmp9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @ZV_size(%struct._ZV* %colZV) #5
  %n115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %5 = load i32* %n115, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %call14, %5
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  tail call void @ZV_setSize(%struct._ZV* %colZV, i32 %5) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13
  %call19 = tail call double* @ZV_entries(%struct._ZV* %colZV) #5
  %6 = load double** %entries3, align 8, !tbaa !0
  %cmp2265 = icmp sgt i32 %5, 0
  br i1 %cmp2265, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %inc120 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc120, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul = mul nsw i32 %8, %jcol
  %9 = sext i32 %mul to i64
  %10 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv68 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %11 = trunc i64 %indvars.iv68 to i32
  %mul23 = shl nsw i32 %11, 1
  %idxprom = sext i32 %mul23 to i64
  %arrayidx = getelementptr inbounds double* %6, i64 %idxprom
  %12 = load double* %arrayidx, align 8, !tbaa !4
  %13 = trunc i64 %indvars.iv to i32
  %mul24 = shl nsw i32 %13, 1
  %idxprom25 = sext i32 %mul24 to i64
  %arrayidx26 = getelementptr inbounds double* %call19, i64 %idxprom25
  store double %12, double* %arrayidx26, align 8, !tbaa !4
  %add62 = or i32 %mul23, 1
  %idxprom28 = sext i32 %add62 to i64
  %arrayidx29 = getelementptr inbounds double* %6, i64 %idxprom28
  %14 = load double* %arrayidx29, align 8, !tbaa !4
  %add3163 = or i32 %mul24, 1
  %idxprom32 = sext i32 %add3163 to i64
  %arrayidx33 = getelementptr inbounds double* %call19, i64 %idxprom32
  store double %14, double* %arrayidx33, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next69 = add i64 %indvars.iv68, %10
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRowDV(%struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._DV* %rowDV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @DV_size(%struct._DV* %rowDV) #5
  %n23 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %0 = load i32* %n23, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %call, %0
  %cmp6 = icmp slt i32 %irow, 0
  %or.cond41 = or i1 %cmp4, %cmp6
  br i1 %or.cond41, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %irow
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([75 x i8]* @.str27, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %rowDV, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !3
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc215, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  %call17 = tail call double* @DV_entries(%struct._DV* %rowDV) #5
  %cmp1842 = icmp sgt i32 %call, 0
  br i1 %cmp1842, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %irow
  %8 = sext i32 %mul to i64
  %9 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv45 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next46, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call17, i64 %indvars.iv
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds double* %7, i64 %indvars.iv45
  store double %10, double* %arrayidx20, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next46 = add i64 %indvars.iv45, %9
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRowZV(%struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._ZV* %rowZV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @ZV_size(%struct._ZV* %rowZV) #5
  %n23 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %0 = load i32* %n23, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %call, %0
  %cmp6 = icmp slt i32 %irow, 0
  %or.cond57 = or i1 %cmp4, %cmp6
  br i1 %or.cond57, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %irow
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str28, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 2
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([78 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %rowZV, i32 %irow, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !3
  %inc215 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc215, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  %call17 = tail call double* @ZV_entries(%struct._ZV* %rowZV) #5
  %cmp1858 = icmp sgt i32 %call, 0
  br i1 %cmp1858, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %irow
  %8 = sext i32 %mul to i64
  %9 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv61 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next62, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul19 = shl nsw i32 %10, 1
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double* %call17, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %12 = trunc i64 %indvars.iv61 to i32
  %mul20 = shl nsw i32 %12, 1
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds double* %7, i64 %idxprom21
  store double %11, double* %arrayidx22, align 8, !tbaa !4
  %add55 = or i32 %mul19, 1
  %idxprom24 = sext i32 %add55 to i64
  %arrayidx25 = getelementptr inbounds double* %call17, i64 %idxprom24
  %13 = load double* %arrayidx25, align 8, !tbaa !4
  %add2756 = or i32 %mul20, 1
  %idxprom28 = sext i32 %add2756 to i64
  %arrayidx29 = getelementptr inbounds double* %7, i64 %idxprom28
  store double %13, double* %arrayidx29, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next62 = add i64 %indvars.iv61, %9
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumnDV(%struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._DV* %colDV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @DV_size(%struct._DV* %colDV) #5
  %n13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %0 = load i32* %n13, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %call, %0
  %cmp6 = icmp slt i32 %jcol, 0
  %or.cond41 = or i1 %cmp4, %cmp6
  br i1 %or.cond41, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %jcol
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str30, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 1
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([78 x i8]* @.str31, i64 0, i64 0), %struct._A2* %mtx, %struct._DV* %colDV, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !3
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc115, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  %call17 = tail call double* @DV_entries(%struct._DV* %colDV) #5
  %cmp1842 = icmp sgt i32 %call, 0
  br i1 %cmp1842, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %jcol
  %8 = sext i32 %mul to i64
  %9 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv45 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next46, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %call17, i64 %indvars.iv
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds double* %7, i64 %indvars.iv45
  store double %10, double* %arrayidx20, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next46 = add i64 %indvars.iv45, %9
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setColumnZV(%struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._ZV* %colZV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %call = tail call i32 @ZV_size(%struct._ZV* %colZV) #5
  %n13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %0 = load i32* %n13, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %call, %0
  %cmp6 = icmp slt i32 %jcol, 0
  %or.cond57 = or i1 %cmp4, %cmp6
  br i1 %or.cond57, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %1, %jcol
  br i1 %cmp8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false7, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([54 x i8]* @.str32, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %3, 2
  br i1 %cmp10, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([81 x i8]* @.str33, i64 0, i64 0), %struct._A2* %mtx, %struct._ZV* %colZV, i32 %jcol, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end14:                                         ; preds = %if.end
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !3
  %inc115 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc115, align 4, !tbaa !3
  %entries16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %7 = load double** %entries16, align 8, !tbaa !0
  %call17 = tail call double* @ZV_entries(%struct._ZV* %colZV) #5
  %cmp1858 = icmp sgt i32 %call, 0
  br i1 %cmp1858, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %mul = mul nsw i32 %5, %jcol
  %8 = sext i32 %mul to i64
  %9 = sext i32 %6 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv61 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next62, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %10 = trunc i64 %indvars.iv to i32
  %mul19 = shl nsw i32 %10, 1
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double* %call17, i64 %idxprom
  %11 = load double* %arrayidx, align 8, !tbaa !4
  %12 = trunc i64 %indvars.iv61 to i32
  %mul20 = shl nsw i32 %12, 1
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds double* %7, i64 %idxprom21
  store double %11, double* %arrayidx22, align 8, !tbaa !4
  %add55 = or i32 %mul19, 1
  %idxprom24 = sext i32 %add55 to i64
  %arrayidx25 = getelementptr inbounds double* %call17, i64 %idxprom24
  %13 = load double* %arrayidx25, align 8, !tbaa !4
  %add2756 = or i32 %mul20, 1
  %idxprom28 = sext i32 %add2756 to i64
  %arrayidx29 = getelementptr inbounds double* %7, i64 %idxprom28
  store double %13, double* %arrayidx29, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %indvars.iv.next62 = add i64 %indvars.iv61, %9
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_fillRandomUniform(%struct._A2* %a, double %lower, double %upper, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  %0 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #4
  %cmp = icmp eq %struct._A2* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %1 = load i32* %n11, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %2 = load i32* %n24, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %2, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %3 = load i32* %inc17, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %4 = load i32* %inc210, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %4, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %5 = load double** %entries13, align 8, !tbaa !0
  %cmp14 = icmp eq double* %5, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([63 x i8]* @.str34, i64 0, i64 0), %struct._A2* %a, double %lower, double %upper, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %7, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([106 x i8]* @.str35, i64 0, i64 0), %struct._A2* %a, double %lower, double %upper, i32 %seed, i32 %7) #5
  call void @exit(i32 -1) #6
  unreachable

if.end22:                                         ; preds = %if.end
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  call void @Drand_init(%struct._Drand* %drand) #5
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #5
  call void @Drand_setUniform(%struct._Drand* %drand, double %lower, double %upper) #5
  %cmp2378 = icmp sgt i32 %2, 0
  br i1 %cmp2378, label %for.cond24.preheader.lr.ph, label %for.end48

for.cond24.preheader.lr.ph:                       ; preds = %if.end22
  %cmp2576 = icmp sgt i32 %1, 0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.inc46, %for.cond24.preheader.lr.ph
  %j.079 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc47, %for.inc46 ]
  br i1 %cmp2576, label %for.body26.lr.ph, label %for.inc46

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.079, %4
  br label %for.body26

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %9 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %9, %3
  %add = add nsw i32 %mul, %mul27
  %10 = load i32* %type, align 4, !tbaa !3
  switch i32 %10, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ]

if.then30:                                        ; preds = %for.body26
  %call31 = call double @Drand_value(%struct._Drand* %drand) #5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %5, i64 %idxprom
  store double %call31, double* %arrayidx, align 8, !tbaa !4
  br label %for.inc

if.then34:                                        ; preds = %for.body26
  %call35 = call double @Drand_value(%struct._Drand* %drand) #5
  %mul36 = shl nsw i32 %add, 1
  %idxprom37 = sext i32 %mul36 to i64
  %arrayidx38 = getelementptr inbounds double* %5, i64 %idxprom37
  store double %call35, double* %arrayidx38, align 8, !tbaa !4
  %call39 = call double @Drand_value(%struct._Drand* %drand) #5
  %add4175 = or i32 %mul36, 1
  %idxprom42 = sext i32 %add4175 to i64
  %arrayidx43 = getelementptr inbounds double* %5, i64 %idxprom42
  store double %call39, double* %arrayidx43, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then34
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.inc46, label %for.body26

for.inc46:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc47 = add nsw i32 %j.079, 1
  %exitcond80 = icmp eq i32 %inc47, %2
  br i1 %exitcond80, label %for.end48, label %for.cond24.preheader

for.end48:                                        ; preds = %for.inc46, %if.end22
  call void @llvm.lifetime.end(i64 72, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #3

; Function Attrs: optsize
declare void @Drand_init(%struct._Drand*) #3

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #3

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #3

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_fillRandomNormal(%struct._A2* %a, double %mean, double %variance, i32 %seed) #0 {
entry:
  %drand = alloca %struct._Drand, align 8
  %0 = bitcast %struct._Drand* %drand to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #4
  %cmp = icmp eq %struct._A2* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %1 = load i32* %n11, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %2 = load i32* %n24, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %2, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %3 = load i32* %inc17, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %4 = load i32* %inc210, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %4, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %5 = load double** %entries13, align 8, !tbaa !0
  %cmp14 = icmp eq double* %5, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str36, i64 0, i64 0), %struct._A2* %a, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %7, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([105 x i8]* @.str37, i64 0, i64 0), %struct._A2* %a, double %mean, double %variance, i32 %seed, i32 %7) #5
  call void @exit(i32 -1) #6
  unreachable

if.end22:                                         ; preds = %if.end
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #5
  call void @Drand_init(%struct._Drand* %drand) #5
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #5
  call void @Drand_setUniform(%struct._Drand* %drand, double %mean, double %variance) #5
  %cmp2376 = icmp sgt i32 %2, 0
  br i1 %cmp2376, label %for.cond24.preheader.lr.ph, label %for.end48

for.cond24.preheader.lr.ph:                       ; preds = %if.end22
  %cmp2574 = icmp sgt i32 %1, 0
  br label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.inc46, %for.cond24.preheader.lr.ph
  %j.077 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc47, %for.inc46 ]
  br i1 %cmp2574, label %for.body26.lr.ph, label %for.inc46

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.077, %4
  br label %for.body26

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %9 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %9, %3
  %add = add nsw i32 %mul, %mul27
  %10 = load i32* %type, align 4, !tbaa !3
  switch i32 %10, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then34
  ]

if.then30:                                        ; preds = %for.body26
  %call31 = call double @Drand_value(%struct._Drand* %drand) #5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %5, i64 %idxprom
  store double %call31, double* %arrayidx, align 8, !tbaa !4
  br label %for.inc

if.then34:                                        ; preds = %for.body26
  %call35 = call double @Drand_value(%struct._Drand* %drand) #5
  %mul36 = shl nsw i32 %add, 1
  %idxprom37 = sext i32 %mul36 to i64
  %arrayidx38 = getelementptr inbounds double* %5, i64 %idxprom37
  store double %call35, double* %arrayidx38, align 8, !tbaa !4
  %call39 = call double @Drand_value(%struct._Drand* %drand) #5
  %add4173 = or i32 %mul36, 1
  %idxprom42 = sext i32 %add4173 to i64
  %arrayidx43 = getelementptr inbounds double* %5, i64 %idxprom42
  store double %call39, double* %arrayidx43, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then34
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.inc46, label %for.body26

for.inc46:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc47 = add nsw i32 %j.077, 1
  %exitcond78 = icmp eq i32 %inc47, %2
  br i1 %exitcond78, label %for.end48, label %for.cond24.preheader

for.end48:                                        ; preds = %for.inc46, %if.end22
  call void @llvm.lifetime.end(i64 72, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_fillWithIdentity(%struct._A2* %a) #0 {
entry:
  %cmp = icmp eq %struct._A2* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %0, %1
  br i1 %cmp3, label %lor.lhs.false4, label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %inc15 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %2 = load i32* %inc15, align 4, !tbaa !3
  %cmp6 = icmp slt i32 %2, 1
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %inc28 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %3 = load i32* %inc28, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %3, 1
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %cmp11 = icmp eq i32 %2, 1
  %cmp12 = icmp eq i32 %3, 1
  %or.cond = or i1 %cmp11, %cmp12
  br i1 %or.cond, label %lor.lhs.false13, label %if.then

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %entries14 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %4 = load double** %entries14, align 8, !tbaa !0
  %cmp15 = icmp eq double* %4, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false2, %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([53 x i8]* @.str38, i64 0, i64 0), %struct._A2* %a) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false13
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %6 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %6, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([96 x i8]* @.str39, i64 0, i64 0), %struct._A2* %a, i32 %6) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %if.end
  tail call void @A2_zero(%struct._A2* %a) #7
  %cmp2559 = icmp sgt i32 %0, 0
  br i1 %cmp2559, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %cond = select i1 %cmp11, i32 %3, i32 %2
  %8 = load i32* %type, align 4, !tbaa !3
  %add = add nsw i32 %cond, 1
  %9 = sext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc ]
  switch i32 %8, label %for.inc [
    i32 1, label %if.then28
    i32 2, label %if.then31
  ]

if.then28:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds double* %4, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx, align 8, !tbaa !4
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %10 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %10, 1
  %idxprom32 = sext i32 %mul to i64
  %arrayidx33 = getelementptr inbounds double* %4, i64 %idxprom32
  store double 1.000000e+00, double* %arrayidx33, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then28, %if.then31
  %inc36 = add nsw i32 %j.060, 1
  %indvars.iv.next = add i64 %indvars.iv, %9
  %exitcond = icmp eq i32 %inc36, %0
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_zero(%struct._A2* %a) #0 {
entry:
  %cmp = icmp eq %struct._A2* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n11 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %0 = load i32* %n11, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n24 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %1 = load i32* %n24, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %inc17 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %2 = load i32* %inc17, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %2, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %inc210 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %3 = load i32* %inc210, align 4, !tbaa !3
  %cmp11 = icmp slt i32 %3, 1
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %entries13 = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %4 = load double** %entries13, align 8, !tbaa !0
  %cmp14 = icmp eq double* %4, null
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8]* @.str40, i64 0, i64 0), %struct._A2* %a) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false12
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %6 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %6, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.cond.preheader, label %if.then19

for.cond.preheader:                               ; preds = %if.end
  %cmp2369 = icmp sgt i32 %1, 0
  br i1 %cmp2369, label %for.cond24.preheader.lr.ph, label %for.end45

for.cond24.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp2567 = icmp sgt i32 %0, 0
  br label %for.cond24.preheader

if.then19:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([84 x i8]* @.str41, i64 0, i64 0), %struct._A2* %a, i32 %6) #5
  tail call void @exit(i32 -1) #6
  unreachable

for.cond24.preheader:                             ; preds = %for.inc43, %for.cond24.preheader.lr.ph
  %j.070 = phi i32 [ 0, %for.cond24.preheader.lr.ph ], [ %inc44, %for.inc43 ]
  br i1 %cmp2567, label %for.body26.lr.ph, label %for.inc43

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %mul27 = mul nsw i32 %j.070, %3
  br label %for.body26

for.body26:                                       ; preds = %for.inc, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %8 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %8, %2
  %add = add nsw i32 %mul, %mul27
  switch i32 %6, label %for.inc [
    i32 1, label %if.then30
    i32 2, label %if.then33
  ]

if.then30:                                        ; preds = %for.body26
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %4, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !4
  br label %for.inc

if.then33:                                        ; preds = %for.body26
  %mul34 = shl nsw i32 %add, 1
  %idxprom35 = sext i32 %mul34 to i64
  %arrayidx36 = getelementptr inbounds double* %4, i64 %idxprom35
  store double 0.000000e+00, double* %arrayidx36, align 8, !tbaa !4
  %add3866 = or i32 %mul34, 1
  %idxprom39 = sext i32 %add3866 to i64
  %arrayidx40 = getelementptr inbounds double* %4, i64 %idxprom39
  store double 0.000000e+00, double* %arrayidx40, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body26, %if.then30, %if.then33
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc43, label %for.body26

for.inc43:                                        ; preds = %for.inc, %for.cond24.preheader
  %inc44 = add nsw i32 %j.070, 1
  %exitcond71 = icmp eq i32 %inc44, %1
  br i1 %exitcond71, label %for.end45, label %for.cond24.preheader

for.end45:                                        ; preds = %for.inc43, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_copy(%struct._A2* %A, %struct._A2* %B) #0 {
entry:
  %cmp = icmp eq %struct._A2* %A, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call391 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* null, %struct._A2* %B) #5
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then.thread392, label %lor.lhs.false2

if.then.thread392:                                ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call393 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #5
  br label %if.then28

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 2
  %3 = load i32* %n2, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %inc1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 3
  %4 = load i32* %inc1, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %4, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %inc2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %5, 1
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %entries = getelementptr inbounds %struct._A2* %A, i64 0, i32 6
  %6 = load double** %entries, align 8, !tbaa !0
  %cmp9 = icmp eq double* %6, null
  %cmp11 = icmp eq %struct._A2* %B, null
  %or.cond = or i1 %cmp9, %cmp11
  br i1 %or.cond, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %n113 = getelementptr inbounds %struct._A2* %B, i64 0, i32 1
  %7 = load i32* %n113, align 4, !tbaa !3
  %cmp14 = icmp slt i32 %7, 0
  br i1 %cmp14, label %if.then, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %n216 = getelementptr inbounds %struct._A2* %B, i64 0, i32 2
  %8 = load i32* %n216, align 4, !tbaa !3
  %cmp17 = icmp slt i32 %8, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %inc119 = getelementptr inbounds %struct._A2* %B, i64 0, i32 3
  %9 = load i32* %inc119, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %9, 1
  br i1 %cmp20, label %if.then, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %inc222 = getelementptr inbounds %struct._A2* %B, i64 0, i32 4
  %10 = load i32* %inc222, align 4, !tbaa !3
  %cmp23 = icmp slt i32 %10, 1
  br i1 %cmp23, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %entries25 = getelementptr inbounds %struct._A2* %B, i64 0, i32 6
  %11 = load double** %entries25, align 8, !tbaa !0
  %cmp26 = icmp eq double* %11, null
  br i1 %cmp26, label %if.then, label %if.end34

if.then:                                          ; preds = %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([44 x i8]* @.str42, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #5
  br label %if.then28

if.then28:                                        ; preds = %if.then, %if.then.thread392
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %13)
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeStats(%struct._A2* %A, %struct._IO_FILE* %15) #5
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then28
  %cmp30 = icmp eq %struct._A2* %B, null
  br i1 %cmp30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str44, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %16)
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeStats(%struct._A2* %B, %struct._IO_FILE* %18) #5
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then31
  tail call void @exit(i32 -1) #6
  unreachable

if.end34:                                         ; preds = %lor.lhs.false24
  %type = getelementptr inbounds %struct._A2* %A, i64 0, i32 0
  %19 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %19, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end34
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end42:                                         ; preds = %if.end34
  %type43 = getelementptr inbounds %struct._A2* %B, i64 0, i32 0
  %21 = load i32* %type43, align 4, !tbaa !3
  %.off389 = add i32 %21, -1
  %switch390 = icmp ult i32 %.off389, 2
  br i1 %switch390, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end42
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %21) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end51:                                         ; preds = %if.end42
  %cmp54 = icmp eq i32 %19, %21
  br i1 %cmp54, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end51
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([79 x i8]* @.str46, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19, i32 %21) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end59:                                         ; preds = %if.end51
  %cmp60 = icmp sle i32 %1, %7
  %cond = select i1 %cmp60, i32 %1, i32 %7
  %cmp61 = icmp sle i32 %3, %8
  %cond65 = select i1 %cmp61, i32 %3, i32 %8
  switch i32 %19, label %if.end246 [
    i32 1, label %if.then68
    i32 2, label %if.then132
  ]

if.then68:                                        ; preds = %if.end59
  %cmp69 = icmp eq i32 %4, 1
  %cmp70 = icmp eq i32 %9, 1
  %or.cond385 = and i1 %cmp69, %cmp70
  br i1 %or.cond385, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then68
  %cmp72396 = icmp sgt i32 %cond65, 0
  br i1 %cmp72396, label %for.cond73.preheader.lr.ph, label %if.end246

for.cond73.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp74394 = icmp sgt i32 %cond, 0
  %idx.ext = sext i32 %5 to i64
  %idx.ext78 = sext i32 %10 to i64
  %24 = xor i32 %1, -1
  %25 = xor i32 %7, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = xor i32 %smax, -1
  %28 = xor i32 %3, -1
  %29 = xor i32 %8, -1
  %30 = icmp sgt i32 %28, %29
  %smax431 = select i1 %30, i32 %28, i32 %29
  %31 = xor i32 %smax431, -1
  br label %for.cond73.preheader

for.cond73.preheader:                             ; preds = %for.end, %for.cond73.preheader.lr.ph
  %colB.0399 = phi double* [ %11, %for.cond73.preheader.lr.ph ], [ %add.ptr79, %for.end ]
  %colA.0398 = phi double* [ %6, %for.cond73.preheader.lr.ph ], [ %add.ptr, %for.end ]
  %jcol.0397 = phi i32 [ 0, %for.cond73.preheader.lr.ph ], [ %inc81, %for.end ]
  br i1 %cmp74394, label %for.body75, label %for.end

for.body75:                                       ; preds = %for.cond73.preheader, %for.body75
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body75 ], [ 0, %for.cond73.preheader ]
  %arrayidx = getelementptr inbounds double* %colB.0399, i64 %indvars.iv
  %32 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds double* %colA.0398, i64 %indvars.iv
  store double %32, double* %arrayidx77, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %27
  br i1 %exitcond, label %for.end, label %for.body75

for.end:                                          ; preds = %for.body75, %for.cond73.preheader
  %add.ptr = getelementptr inbounds double* %colA.0398, i64 %idx.ext
  %add.ptr79 = getelementptr inbounds double* %colB.0399, i64 %idx.ext78
  %inc81 = add nsw i32 %jcol.0397, 1
  %exitcond432 = icmp eq i32 %inc81, %31
  br i1 %exitcond432, label %if.end246, label %for.cond73.preheader

if.else:                                          ; preds = %if.then68
  %cmp83 = icmp eq i32 %5, 1
  %cmp85 = icmp eq i32 %10, 1
  %or.cond386 = and i1 %cmp83, %cmp85
  %cmp88403 = icmp sgt i32 %cond, 0
  br i1 %or.cond386, label %for.cond87.preheader, label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %if.else
  br i1 %cmp88403, label %for.cond109.preheader.lr.ph, label %if.end246

for.cond109.preheader.lr.ph:                      ; preds = %for.cond106.preheader
  %cmp110406 = icmp sgt i32 %cond65, 0
  %33 = xor i32 %3, -1
  %34 = xor i32 %8, -1
  %35 = icmp sgt i32 %33, %34
  %smax443 = select i1 %35, i32 %33, i32 %34
  %36 = xor i32 %smax443, -1
  %37 = xor i32 %1, -1
  %38 = xor i32 %7, -1
  %39 = icmp sgt i32 %37, %38
  %smax446 = select i1 %39, i32 %37, i32 %38
  %40 = xor i32 %smax446, -1
  br label %for.cond109.preheader

for.cond87.preheader:                             ; preds = %if.else
  br i1 %cmp88403, label %for.cond90.preheader.lr.ph, label %if.end246

for.cond90.preheader.lr.ph:                       ; preds = %for.cond87.preheader
  %cmp91400 = icmp sgt i32 %cond65, 0
  %mul = shl nsw i32 %4, 1
  %idx.ext100 = sext i32 %mul to i64
  %41 = xor i32 %3, -1
  %42 = xor i32 %8, -1
  %43 = icmp sgt i32 %41, %42
  %smax435 = select i1 %43, i32 %41, i32 %42
  %44 = xor i32 %smax435, -1
  %45 = xor i32 %1, -1
  %46 = xor i32 %7, -1
  %47 = icmp sgt i32 %45, %46
  %smax439 = select i1 %47, i32 %45, i32 %46
  %48 = xor i32 %smax439, -1
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.end99, %for.cond90.preheader.lr.ph
  %irow.1405 = phi i32 [ 0, %for.cond90.preheader.lr.ph ], [ %inc103, %for.end99 ]
  %rowA.0404 = phi double* [ %6, %for.cond90.preheader.lr.ph ], [ %add.ptr101, %for.end99 ]
  br i1 %cmp91400, label %for.body92, label %for.end99

for.body92:                                       ; preds = %for.cond90.preheader, %for.body92
  %indvars.iv433 = phi i64 [ %indvars.iv.next434, %for.body92 ], [ 0, %for.cond90.preheader ]
  %arrayidx94 = getelementptr inbounds double* %11, i64 %indvars.iv433
  %49 = load double* %arrayidx94, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds double* %rowA.0404, i64 %indvars.iv433
  store double %49, double* %arrayidx96, align 8, !tbaa !4
  %indvars.iv.next434 = add i64 %indvars.iv433, 1
  %lftr.wideiv436 = trunc i64 %indvars.iv.next434 to i32
  %exitcond437 = icmp eq i32 %lftr.wideiv436, %44
  br i1 %exitcond437, label %for.end99, label %for.body92

for.end99:                                        ; preds = %for.body92, %for.cond90.preheader
  %add.ptr101 = getelementptr inbounds double* %rowA.0404, i64 %idx.ext100
  %inc103 = add nsw i32 %irow.1405, 1
  %exitcond440 = icmp eq i32 %inc103, %48
  br i1 %exitcond440, label %if.end246, label %for.cond90.preheader

for.cond109.preheader:                            ; preds = %for.inc124, %for.cond109.preheader.lr.ph
  %irow.2410 = phi i32 [ 0, %for.cond109.preheader.lr.ph ], [ %inc125, %for.inc124 ]
  br i1 %cmp110406, label %for.body111.lr.ph, label %for.inc124

for.body111.lr.ph:                                ; preds = %for.cond109.preheader
  %mul112 = mul nsw i32 %irow.2410, %4
  %mul114 = mul nsw i32 %irow.2410, %9
  br label %for.body111

for.body111:                                      ; preds = %for.body111, %for.body111.lr.ph
  %indvars.iv441 = phi i64 [ 0, %for.body111.lr.ph ], [ %indvars.iv.next442, %for.body111 ]
  %50 = trunc i64 %indvars.iv441 to i32
  %mul113 = mul nsw i32 %50, %5
  %add = add nsw i32 %mul113, %mul112
  %mul115 = mul nsw i32 %50, %10
  %add116 = add nsw i32 %mul115, %mul114
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double* %11, i64 %idxprom117
  %51 = load double* %arrayidx118, align 8, !tbaa !4
  %idxprom119 = sext i32 %add to i64
  %arrayidx120 = getelementptr inbounds double* %6, i64 %idxprom119
  store double %51, double* %arrayidx120, align 8, !tbaa !4
  %indvars.iv.next442 = add i64 %indvars.iv441, 1
  %lftr.wideiv444 = trunc i64 %indvars.iv.next442 to i32
  %exitcond445 = icmp eq i32 %lftr.wideiv444, %36
  br i1 %exitcond445, label %for.inc124, label %for.body111

for.inc124:                                       ; preds = %for.body111, %for.cond109.preheader
  %inc125 = add nsw i32 %irow.2410, 1
  %exitcond447 = icmp eq i32 %inc125, %40
  br i1 %exitcond447, label %if.end246, label %for.cond109.preheader

if.then132:                                       ; preds = %if.end59
  %cmp133 = icmp eq i32 %4, 1
  %cmp135 = icmp eq i32 %9, 1
  %or.cond387 = and i1 %cmp133, %cmp135
  br i1 %or.cond387, label %for.cond139.preheader, label %if.else171

for.cond139.preheader:                            ; preds = %if.then132
  %cmp140414 = icmp sgt i32 %cond65, 0
  br i1 %cmp140414, label %for.cond142.preheader.lr.ph, label %if.end246

for.cond142.preheader.lr.ph:                      ; preds = %for.cond139.preheader
  %cmp143411 = icmp sgt i32 %cond, 0
  %mul162 = shl nsw i32 %5, 1
  %idx.ext163 = sext i32 %mul162 to i64
  %mul165 = shl nsw i32 %10, 1
  %idx.ext166 = sext i32 %mul165 to i64
  %52 = xor i32 %1, -1
  %53 = xor i32 %7, -1
  %54 = icmp sgt i32 %52, %53
  %smax450 = select i1 %54, i32 %52, i32 %53
  %55 = xor i32 %smax450, -1
  %56 = xor i32 %3, -1
  %57 = xor i32 %8, -1
  %58 = icmp sgt i32 %56, %57
  %smax453 = select i1 %58, i32 %56, i32 %57
  %59 = xor i32 %smax453, -1
  br label %for.cond142.preheader

for.cond142.preheader:                            ; preds = %for.end161, %for.cond142.preheader.lr.ph
  %colB138.0417 = phi double* [ %11, %for.cond142.preheader.lr.ph ], [ %add.ptr167, %for.end161 ]
  %colA137.0416 = phi double* [ %6, %for.cond142.preheader.lr.ph ], [ %add.ptr164, %for.end161 ]
  %jcol.3415 = phi i32 [ 0, %for.cond142.preheader.lr.ph ], [ %inc169, %for.end161 ]
  br i1 %cmp143411, label %for.body144, label %for.end161

for.body144:                                      ; preds = %for.cond142.preheader, %for.body144
  %indvars.iv448 = phi i64 [ %indvars.iv.next449, %for.body144 ], [ 0, %for.cond142.preheader ]
  %60 = trunc i64 %indvars.iv448 to i32
  %mul145 = shl nsw i32 %60, 1
  %idxprom146 = sext i32 %mul145 to i64
  %arrayidx147 = getelementptr inbounds double* %colB138.0417, i64 %idxprom146
  %61 = load double* %arrayidx147, align 8, !tbaa !4
  %arrayidx150 = getelementptr inbounds double* %colA137.0416, i64 %idxprom146
  store double %61, double* %arrayidx150, align 8, !tbaa !4
  %add152384 = or i32 %mul145, 1
  %idxprom153 = sext i32 %add152384 to i64
  %arrayidx154 = getelementptr inbounds double* %colB138.0417, i64 %idxprom153
  %62 = load double* %arrayidx154, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds double* %colA137.0416, i64 %idxprom153
  store double %62, double* %arrayidx158, align 8, !tbaa !4
  %indvars.iv.next449 = add i64 %indvars.iv448, 1
  %lftr.wideiv451 = trunc i64 %indvars.iv.next449 to i32
  %exitcond452 = icmp eq i32 %lftr.wideiv451, %55
  br i1 %exitcond452, label %for.end161, label %for.body144

for.end161:                                       ; preds = %for.body144, %for.cond142.preheader
  %add.ptr164 = getelementptr inbounds double* %colA137.0416, i64 %idx.ext163
  %add.ptr167 = getelementptr inbounds double* %colB138.0417, i64 %idx.ext166
  %inc169 = add nsw i32 %jcol.3415, 1
  %exitcond454 = icmp eq i32 %inc169, %59
  br i1 %exitcond454, label %if.end246, label %for.cond142.preheader

if.else171:                                       ; preds = %if.then132
  %cmp172 = icmp eq i32 %5, 1
  %cmp174 = icmp eq i32 %10, 1
  %or.cond388 = and i1 %cmp172, %cmp174
  %cmp179421 = icmp sgt i32 %cond, 0
  br i1 %or.cond388, label %for.cond178.preheader, label %for.cond211.preheader

for.cond211.preheader:                            ; preds = %if.else171
  br i1 %cmp179421, label %for.cond214.preheader.lr.ph, label %if.end246

for.cond214.preheader.lr.ph:                      ; preds = %for.cond211.preheader
  %cmp215425 = icmp sgt i32 %cond65, 0
  %63 = xor i32 %3, -1
  %64 = xor i32 %8, -1
  %65 = icmp sgt i32 %63, %64
  %smax464 = select i1 %65, i32 %63, i32 %64
  %66 = xor i32 %smax464, -1
  %67 = xor i32 %1, -1
  %68 = xor i32 %7, -1
  %69 = icmp sgt i32 %67, %68
  %smax467 = select i1 %69, i32 %67, i32 %68
  %70 = xor i32 %smax467, -1
  br label %for.cond214.preheader

for.cond178.preheader:                            ; preds = %if.else171
  br i1 %cmp179421, label %for.cond181.preheader.lr.ph, label %if.end246

for.cond181.preheader.lr.ph:                      ; preds = %for.cond178.preheader
  %cmp182418 = icmp sgt i32 %cond65, 0
  %mul201 = shl nsw i32 %4, 1
  %idx.ext202 = sext i32 %mul201 to i64
  %mul204 = shl nsw i32 %9, 1
  %idx.ext205 = sext i32 %mul204 to i64
  %71 = xor i32 %3, -1
  %72 = xor i32 %8, -1
  %73 = icmp sgt i32 %71, %72
  %smax457 = select i1 %73, i32 %71, i32 %72
  %74 = xor i32 %smax457, -1
  %75 = xor i32 %1, -1
  %76 = xor i32 %7, -1
  %77 = icmp sgt i32 %75, %76
  %smax460 = select i1 %77, i32 %75, i32 %76
  %78 = xor i32 %smax460, -1
  br label %for.cond181.preheader

for.cond181.preheader:                            ; preds = %for.end200, %for.cond181.preheader.lr.ph
  %rowB177.0424 = phi double* [ %11, %for.cond181.preheader.lr.ph ], [ %add.ptr206, %for.end200 ]
  %rowA176.0423 = phi double* [ %6, %for.cond181.preheader.lr.ph ], [ %add.ptr203, %for.end200 ]
  %irow.4422 = phi i32 [ 0, %for.cond181.preheader.lr.ph ], [ %inc208, %for.end200 ]
  br i1 %cmp182418, label %for.body183, label %for.end200

for.body183:                                      ; preds = %for.cond181.preheader, %for.body183
  %indvars.iv455 = phi i64 [ %indvars.iv.next456, %for.body183 ], [ 0, %for.cond181.preheader ]
  %79 = trunc i64 %indvars.iv455 to i32
  %mul184 = shl nsw i32 %79, 1
  %idxprom185 = sext i32 %mul184 to i64
  %arrayidx186 = getelementptr inbounds double* %rowB177.0424, i64 %idxprom185
  %80 = load double* %arrayidx186, align 8, !tbaa !4
  %arrayidx189 = getelementptr inbounds double* %rowA176.0423, i64 %idxprom185
  store double %80, double* %arrayidx189, align 8, !tbaa !4
  %add191383 = or i32 %mul184, 1
  %idxprom192 = sext i32 %add191383 to i64
  %arrayidx193 = getelementptr inbounds double* %rowB177.0424, i64 %idxprom192
  %81 = load double* %arrayidx193, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds double* %rowA176.0423, i64 %idxprom192
  store double %81, double* %arrayidx197, align 8, !tbaa !4
  %indvars.iv.next456 = add i64 %indvars.iv455, 1
  %lftr.wideiv458 = trunc i64 %indvars.iv.next456 to i32
  %exitcond459 = icmp eq i32 %lftr.wideiv458, %74
  br i1 %exitcond459, label %for.end200, label %for.body183

for.end200:                                       ; preds = %for.body183, %for.cond181.preheader
  %add.ptr203 = getelementptr inbounds double* %rowA176.0423, i64 %idx.ext202
  %add.ptr206 = getelementptr inbounds double* %rowB177.0424, i64 %idx.ext205
  %inc208 = add nsw i32 %irow.4422, 1
  %exitcond461 = icmp eq i32 %inc208, %78
  br i1 %exitcond461, label %if.end246, label %for.cond181.preheader

for.cond214.preheader:                            ; preds = %for.inc240, %for.cond214.preheader.lr.ph
  %irow.5429 = phi i32 [ 0, %for.cond214.preheader.lr.ph ], [ %inc241, %for.inc240 ]
  br i1 %cmp215425, label %for.body216.lr.ph, label %for.inc240

for.body216.lr.ph:                                ; preds = %for.cond214.preheader
  %mul217 = mul nsw i32 %irow.5429, %4
  %mul220 = mul nsw i32 %irow.5429, %9
  br label %for.body216

for.body216:                                      ; preds = %for.body216, %for.body216.lr.ph
  %indvars.iv462 = phi i64 [ 0, %for.body216.lr.ph ], [ %indvars.iv.next463, %for.body216 ]
  %82 = trunc i64 %indvars.iv462 to i32
  %mul218 = mul nsw i32 %82, %5
  %add219 = add nsw i32 %mul218, %mul217
  %mul221 = mul nsw i32 %82, %10
  %add222 = add nsw i32 %mul221, %mul220
  %mul223 = shl nsw i32 %add222, 1
  %idxprom224 = sext i32 %mul223 to i64
  %arrayidx225 = getelementptr inbounds double* %11, i64 %idxprom224
  %83 = load double* %arrayidx225, align 8, !tbaa !4
  %mul226 = shl nsw i32 %add219, 1
  %idxprom227 = sext i32 %mul226 to i64
  %arrayidx228 = getelementptr inbounds double* %6, i64 %idxprom227
  store double %83, double* %arrayidx228, align 8, !tbaa !4
  %add230381 = or i32 %mul223, 1
  %idxprom231 = sext i32 %add230381 to i64
  %arrayidx232 = getelementptr inbounds double* %11, i64 %idxprom231
  %84 = load double* %arrayidx232, align 8, !tbaa !4
  %add234382 = or i32 %mul226, 1
  %idxprom235 = sext i32 %add234382 to i64
  %arrayidx236 = getelementptr inbounds double* %6, i64 %idxprom235
  store double %84, double* %arrayidx236, align 8, !tbaa !4
  %indvars.iv.next463 = add i64 %indvars.iv462, 1
  %lftr.wideiv465 = trunc i64 %indvars.iv.next463 to i32
  %exitcond466 = icmp eq i32 %lftr.wideiv465, %66
  br i1 %exitcond466, label %for.inc240, label %for.body216

for.inc240:                                       ; preds = %for.body216, %for.cond214.preheader
  %inc241 = add nsw i32 %irow.5429, 1
  %exitcond468 = icmp eq i32 %inc241, %70
  br i1 %exitcond468, label %if.end246, label %for.cond214.preheader

if.end246:                                        ; preds = %for.cond211.preheader, %for.inc240, %for.cond178.preheader, %for.end200, %for.cond139.preheader, %for.end161, %for.cond106.preheader, %for.inc124, %for.cond87.preheader, %for.end99, %for.cond.preheader, %for.end, %if.end59
  ret void
}

; Function Attrs: optsize
declare void @A2_writeStats(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_sub(%struct._A2* %A, %struct._A2* %B) #0 {
entry:
  %cmp = icmp eq %struct._A2* %A, null
  %cmp1 = icmp eq %struct._A2* %B, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %n2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %inc1 = getelementptr inbounds %struct._A2* %A, i64 0, i32 3
  %2 = load i32* %inc1, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, 1
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %inc2 = getelementptr inbounds %struct._A2* %A, i64 0, i32 4
  %3 = load i32* %inc2, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %3, 1
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %n111 = getelementptr inbounds %struct._A2* %B, i64 0, i32 1
  %4 = load i32* %n111, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %4, 1
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %n214 = getelementptr inbounds %struct._A2* %B, i64 0, i32 2
  %5 = load i32* %n214, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %5, 1
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %inc117 = getelementptr inbounds %struct._A2* %B, i64 0, i32 3
  %6 = load i32* %inc117, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %6, 1
  br i1 %cmp18, label %if.then, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %inc220 = getelementptr inbounds %struct._A2* %B, i64 0, i32 4
  %7 = load i32* %inc220, align 4, !tbaa !3
  %cmp21 = icmp slt i32 %7, 1
  br i1 %cmp21, label %if.then, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %entries = getelementptr inbounds %struct._A2* %A, i64 0, i32 6
  %8 = load double** %entries, align 8, !tbaa !0
  %cmp23 = icmp eq double* %8, null
  br i1 %cmp23, label %if.then, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %entries25 = getelementptr inbounds %struct._A2* %B, i64 0, i32 6
  %9 = load double** %entries25, align 8, !tbaa !0
  %cmp26 = icmp eq double* %9, null
  br i1 %cmp26, label %if.then, label %if.end34

if.then:                                          ; preds = %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %entry
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([43 x i8]* @.str47, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B) #5
  br i1 %cmp, label %if.end, label %if.then28

if.then28:                                        ; preds = %if.then
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %11)
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeStats(%struct._A2* %A, %struct._IO_FILE* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then28
  br i1 %cmp1, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str44, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  tail call void @A2_writeStats(%struct._A2* %B, %struct._IO_FILE* %16) #5
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then31
  tail call void @exit(i32 -1) #6
  unreachable

if.end34:                                         ; preds = %lor.lhs.false24
  %type = getelementptr inbounds %struct._A2* %A, i64 0, i32 0
  %17 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %17, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end42, label %if.then39

if.then39:                                        ; preds = %if.end34
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([86 x i8]* @.str48, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %17) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end42:                                         ; preds = %if.end34
  %type43 = getelementptr inbounds %struct._A2* %B, i64 0, i32 0
  %19 = load i32* %type43, align 4, !tbaa !3
  %.off188 = add i32 %19, -1
  %switch189 = icmp ult i32 %.off188, 2
  br i1 %switch189, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end42
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([86 x i8]* @.str48, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %19) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end51:                                         ; preds = %if.end42
  %cmp54 = icmp eq i32 %17, %19
  br i1 %cmp54, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end51
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([78 x i8]* @.str49, i64 0, i64 0), %struct._A2* %A, %struct._A2* %B, i32 %17, i32 %19) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end59:                                         ; preds = %if.end51
  %cmp60 = icmp sle i32 %0, %4
  %cond = select i1 %cmp60, i32 %0, i32 %4
  %cmp61 = icmp sle i32 %1, %5
  %cond65 = select i1 %cmp61, i32 %1, i32 %5
  switch i32 %17, label %if.end121 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond85.preheader
  ]

for.cond85.preheader:                             ; preds = %if.end59
  %cmp86197 = icmp sgt i32 %cond, 0
  br i1 %cmp86197, label %for.cond88.preheader.lr.ph, label %if.end121

for.cond88.preheader.lr.ph:                       ; preds = %for.cond85.preheader
  %cmp89194 = icmp sgt i32 %cond65, 0
  %22 = xor i32 %1, -1
  %23 = xor i32 %5, -1
  %24 = icmp sgt i32 %22, %23
  %smax203 = select i1 %24, i32 %22, i32 %23
  %25 = xor i32 %smax203, -1
  %26 = xor i32 %0, -1
  %27 = xor i32 %4, -1
  %28 = icmp sgt i32 %26, %27
  %smax206 = select i1 %28, i32 %26, i32 %27
  %29 = xor i32 %smax206, -1
  br label %for.cond88.preheader

for.cond.preheader:                               ; preds = %if.end59
  %cmp69192 = icmp sgt i32 %cond, 0
  br i1 %cmp69192, label %for.cond70.preheader.lr.ph, label %if.end121

for.cond70.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %cmp71190 = icmp sgt i32 %cond65, 0
  %30 = xor i32 %1, -1
  %31 = xor i32 %5, -1
  %32 = icmp sgt i32 %30, %31
  %smax = select i1 %32, i32 %30, i32 %31
  %33 = xor i32 %smax, -1
  %34 = xor i32 %0, -1
  %35 = xor i32 %4, -1
  %36 = icmp sgt i32 %34, %35
  %smax199 = select i1 %36, i32 %34, i32 %35
  %37 = xor i32 %smax199, -1
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.inc79, %for.cond70.preheader.lr.ph
  %irow.0193 = phi i32 [ 0, %for.cond70.preheader.lr.ph ], [ %inc80, %for.inc79 ]
  br i1 %cmp71190, label %for.body72.lr.ph, label %for.inc79

for.body72.lr.ph:                                 ; preds = %for.cond70.preheader
  %mul = mul nsw i32 %irow.0193, %2
  %mul74 = mul nsw i32 %irow.0193, %6
  br label %for.body72

for.body72:                                       ; preds = %for.body72, %for.body72.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body72.lr.ph ], [ %indvars.iv.next, %for.body72 ]
  %38 = trunc i64 %indvars.iv to i32
  %mul73 = mul nsw i32 %38, %3
  %add = add nsw i32 %mul73, %mul
  %mul75 = mul nsw i32 %38, %7
  %add76 = add nsw i32 %mul75, %mul74
  %idxprom = sext i32 %add76 to i64
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %39 = load double* %arrayidx, align 8, !tbaa !4
  %idxprom77 = sext i32 %add to i64
  %arrayidx78 = getelementptr inbounds double* %8, i64 %idxprom77
  %40 = load double* %arrayidx78, align 8, !tbaa !4
  %sub = fsub double %40, %39
  store double %sub, double* %arrayidx78, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %33
  br i1 %exitcond, label %for.inc79, label %for.body72

for.inc79:                                        ; preds = %for.body72, %for.cond70.preheader
  %inc80 = add nsw i32 %irow.0193, 1
  %exitcond200 = icmp eq i32 %inc80, %37
  br i1 %exitcond200, label %if.end121, label %for.cond70.preheader

for.cond88.preheader:                             ; preds = %for.inc116, %for.cond88.preheader.lr.ph
  %irow.1198 = phi i32 [ 0, %for.cond88.preheader.lr.ph ], [ %inc118, %for.inc116 ]
  br i1 %cmp89194, label %for.body90.lr.ph, label %for.inc116

for.body90.lr.ph:                                 ; preds = %for.cond88.preheader
  %mul91 = mul nsw i32 %irow.1198, %2
  %mul94 = mul nsw i32 %irow.1198, %6
  br label %for.body90

for.body90:                                       ; preds = %for.body90, %for.body90.lr.ph
  %indvars.iv201 = phi i64 [ 0, %for.body90.lr.ph ], [ %indvars.iv.next202, %for.body90 ]
  %41 = trunc i64 %indvars.iv201 to i32
  %mul92 = mul nsw i32 %41, %3
  %add93 = add nsw i32 %mul92, %mul91
  %mul95 = mul nsw i32 %41, %7
  %add96 = add nsw i32 %mul95, %mul94
  %mul97 = shl nsw i32 %add96, 1
  %idxprom98 = sext i32 %mul97 to i64
  %arrayidx99 = getelementptr inbounds double* %9, i64 %idxprom98
  %42 = load double* %arrayidx99, align 8, !tbaa !4
  %mul100 = shl nsw i32 %add93, 1
  %idxprom101 = sext i32 %mul100 to i64
  %arrayidx102 = getelementptr inbounds double* %8, i64 %idxprom101
  %43 = load double* %arrayidx102, align 8, !tbaa !4
  %sub103 = fsub double %43, %42
  store double %sub103, double* %arrayidx102, align 8, !tbaa !4
  %add105186 = or i32 %mul97, 1
  %idxprom106 = sext i32 %add105186 to i64
  %arrayidx107 = getelementptr inbounds double* %9, i64 %idxprom106
  %44 = load double* %arrayidx107, align 8, !tbaa !4
  %add109187 = or i32 %mul100, 1
  %idxprom110 = sext i32 %add109187 to i64
  %arrayidx111 = getelementptr inbounds double* %8, i64 %idxprom110
  %45 = load double* %arrayidx111, align 8, !tbaa !4
  %sub112 = fsub double %45, %44
  store double %sub112, double* %arrayidx111, align 8, !tbaa !4
  %indvars.iv.next202 = add i64 %indvars.iv201, 1
  %lftr.wideiv204 = trunc i64 %indvars.iv.next202 to i32
  %exitcond205 = icmp eq i32 %lftr.wideiv204, %25
  br i1 %exitcond205, label %for.inc116, label %for.body90

for.inc116:                                       ; preds = %for.body90, %for.cond88.preheader
  %inc118 = add nsw i32 %irow.1198, 1
  %exitcond207 = icmp eq i32 %inc118, %29
  br i1 %exitcond207, label %if.end121, label %for.cond88.preheader

if.end121:                                        ; preds = %for.cond85.preheader, %for.inc116, %for.cond.preheader, %for.inc79, %if.end59
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_swapRows(%struct._A2* %a, i32 %irow1, i32 %irow2) #0 {
entry:
  %cmp = icmp eq %struct._A2* %a, null
  %cmp1 = icmp slt i32 %irow1, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %0 = load i32* %n1, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %0, %irow1
  %notrhs = icmp sgt i32 %irow2, -1
  %or.cond271.not = and i1 %notrhs, %notlhs
  %cmp8 = icmp sgt i32 %0, %irow2
  %or.cond272 = and i1 %or.cond271.not, %cmp8
  br i1 %or.cond272, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str50, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %cmp10 = icmp slt i32 %0, 1
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %inc1 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %2 = load i32* %inc1, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %2, 1
  br i1 %cmp12, label %if.then21, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %n214 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %3 = load i32* %n214, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %3, 1
  br i1 %cmp15, label %if.then21, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %inc217 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %4 = load i32* %inc217, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %4, 1
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %entries = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %5 = load double** %entries, align 8, !tbaa !0
  %cmp20 = icmp eq double* %5, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %lor.lhs.false19, %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([55 x i8]* @.str51, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %lor.lhs.false19
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %7, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end23
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([94 x i8]* @.str52, i64 0, i64 0), %struct._A2* %a, i32 %irow1, i32 %irow2, i32 %7) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp eq i32 %irow1, %irow2
  br i1 %cmp32, label %return, label %if.end34

if.end34:                                         ; preds = %if.end31
  switch i32 %7, label %return [
    i32 1, label %if.then37
    i32 2, label %if.then72
  ]

if.then37:                                        ; preds = %if.end34
  %mul = mul nsw i32 %2, %irow1
  %idx.ext = sext i32 %mul to i64
  %mul42 = mul nsw i32 %2, %irow2
  %idx.ext43 = sext i32 %mul42 to i64
  %cmp45 = icmp eq i32 %4, 1
  %cmp47273 = icmp sgt i32 %3, 0
  br i1 %cmp45, label %for.cond.preheader, label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %if.then37
  br i1 %cmp47273, label %for.body56.lr.ph, label %return

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %9 = sext i32 %4 to i64
  br label %for.body56

for.cond.preheader:                               ; preds = %if.then37
  br i1 %cmp47273, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %add.ptr.sum269 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %5, i64 %add.ptr.sum269
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %add.ptr44.sum270 = add i64 %indvars.iv, %idx.ext43
  %arrayidx49 = getelementptr inbounds double* %5, i64 %add.ptr44.sum270
  %11 = load double* %arrayidx49, align 8, !tbaa !4
  store double %11, double* %arrayidx, align 8, !tbaa !4
  store double %10, double* %arrayidx49, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %return, label %for.body

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv288 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next289, %for.body56 ]
  %j.1277 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc66, %for.body56 ]
  %add.ptr.sum = add i64 %indvars.iv288, %idx.ext
  %arrayidx58 = getelementptr inbounds double* %5, i64 %add.ptr.sum
  %12 = load double* %arrayidx58, align 8, !tbaa !4
  %add.ptr44.sum = add i64 %indvars.iv288, %idx.ext43
  %arrayidx60 = getelementptr inbounds double* %5, i64 %add.ptr44.sum
  %13 = load double* %arrayidx60, align 8, !tbaa !4
  store double %13, double* %arrayidx58, align 8, !tbaa !4
  store double %12, double* %arrayidx60, align 8, !tbaa !4
  %inc66 = add nsw i32 %j.1277, 1
  %indvars.iv.next289 = add i64 %indvars.iv288, %9
  %exitcond290 = icmp eq i32 %inc66, %3
  br i1 %exitcond290, label %return, label %for.body56

if.then72:                                        ; preds = %if.end34
  %mul74 = shl i32 %irow1, 1
  %mul76 = mul nsw i32 %mul74, %2
  %idx.ext77 = sext i32 %mul76 to i64
  %mul80 = shl i32 %irow2, 1
  %mul82 = mul nsw i32 %mul80, %2
  %idx.ext83 = sext i32 %mul82 to i64
  %cmp85 = icmp eq i32 %4, 1
  %cmp88280 = icmp sgt i32 %3, 0
  br i1 %cmp85, label %for.cond87.preheader, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %if.then72
  br i1 %cmp88280, label %for.body124.lr.ph, label %return

for.body124.lr.ph:                                ; preds = %for.cond122.preheader
  %14 = sext i32 %4 to i64
  br label %for.body124

for.cond87.preheader:                             ; preds = %if.then72
  br i1 %cmp88280, label %for.body89, label %return

for.body89:                                       ; preds = %for.cond87.preheader, %for.body89
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %for.body89 ], [ 0, %for.cond87.preheader ]
  %15 = trunc i64 %indvars.iv291 to i32
  %mul90 = shl nsw i32 %15, 1
  %idxprom91 = sext i32 %mul90 to i64
  %add.ptr78.sum264 = add i64 %idxprom91, %idx.ext77
  %arrayidx92 = getelementptr inbounds double* %5, i64 %add.ptr78.sum264
  %16 = load double* %arrayidx92, align 8, !tbaa !4
  %add.ptr84.sum265 = add i64 %idxprom91, %idx.ext83
  %arrayidx95 = getelementptr inbounds double* %5, i64 %add.ptr84.sum265
  %17 = load double* %arrayidx95, align 8, !tbaa !4
  store double %17, double* %arrayidx92, align 8, !tbaa !4
  store double %16, double* %arrayidx95, align 8, !tbaa !4
  %add103266 = or i32 %mul90, 1
  %idxprom104 = sext i32 %add103266 to i64
  %add.ptr78.sum267 = add i64 %idxprom104, %idx.ext77
  %arrayidx105 = getelementptr inbounds double* %5, i64 %add.ptr78.sum267
  %18 = load double* %arrayidx105, align 8, !tbaa !4
  %add.ptr84.sum268 = add i64 %idxprom104, %idx.ext83
  %arrayidx109 = getelementptr inbounds double* %5, i64 %add.ptr84.sum268
  %19 = load double* %arrayidx109, align 8, !tbaa !4
  store double %19, double* %arrayidx105, align 8, !tbaa !4
  store double %18, double* %arrayidx109, align 8, !tbaa !4
  %indvars.iv.next292 = add i64 %indvars.iv291, 1
  %lftr.wideiv293 = trunc i64 %indvars.iv.next292 to i32
  %exitcond294 = icmp eq i32 %lftr.wideiv293, %3
  br i1 %exitcond294, label %return, label %for.body89

for.body124:                                      ; preds = %for.body124, %for.body124.lr.ph
  %indvars.iv295 = phi i64 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next296, %for.body124 ]
  %j.3284 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc154, %for.body124 ]
  %20 = trunc i64 %indvars.iv295 to i32
  %mul125 = shl nsw i32 %20, 1
  %idxprom126 = sext i32 %mul125 to i64
  %add.ptr78.sum = add i64 %idxprom126, %idx.ext77
  %arrayidx127 = getelementptr inbounds double* %5, i64 %add.ptr78.sum
  %21 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr84.sum = add i64 %idxprom126, %idx.ext83
  %arrayidx130 = getelementptr inbounds double* %5, i64 %add.ptr84.sum
  %22 = load double* %arrayidx130, align 8, !tbaa !4
  store double %22, double* %arrayidx127, align 8, !tbaa !4
  store double %21, double* %arrayidx130, align 8, !tbaa !4
  %add138261 = or i32 %mul125, 1
  %idxprom139 = sext i32 %add138261 to i64
  %add.ptr78.sum262 = add i64 %idxprom139, %idx.ext77
  %arrayidx140 = getelementptr inbounds double* %5, i64 %add.ptr78.sum262
  %23 = load double* %arrayidx140, align 8, !tbaa !4
  %add.ptr84.sum263 = add i64 %idxprom139, %idx.ext83
  %arrayidx144 = getelementptr inbounds double* %5, i64 %add.ptr84.sum263
  %24 = load double* %arrayidx144, align 8, !tbaa !4
  store double %24, double* %arrayidx140, align 8, !tbaa !4
  store double %23, double* %arrayidx144, align 8, !tbaa !4
  %inc154 = add nsw i32 %j.3284, 1
  %indvars.iv.next296 = add i64 %indvars.iv295, %14
  %exitcond297 = icmp eq i32 %inc154, %3
  br i1 %exitcond297, label %return, label %for.body124

return:                                           ; preds = %for.cond122.preheader, %for.body124, %for.cond87.preheader, %for.body89, %for.cond54.preheader, %for.body56, %for.cond.preheader, %for.body, %if.end34, %if.end31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_swapColumns(%struct._A2* %a, i32 %jcol1, i32 %jcol2) #0 {
entry:
  %cmp = icmp eq %struct._A2* %a, null
  %cmp1 = icmp slt i32 %jcol1, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 2
  %0 = load i32* %n2, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %0, %jcol1
  %notrhs = icmp sgt i32 %jcol2, -1
  %or.cond271.not = and i1 %notrhs, %notlhs
  %cmp8 = icmp sgt i32 %0, %jcol2
  %or.cond272 = and i1 %or.cond271.not, %cmp8
  br i1 %or.cond272, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str53, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %n19 = getelementptr inbounds %struct._A2* %a, i64 0, i32 1
  %2 = load i32* %n19, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %2, 1
  br i1 %cmp10, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end
  %inc112 = getelementptr inbounds %struct._A2* %a, i64 0, i32 3
  %3 = load i32* %inc112, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %3, 1
  %cmp16 = icmp slt i32 %0, 1
  %or.cond273 = or i1 %cmp13, %cmp16
  br i1 %or.cond273, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %inc2 = getelementptr inbounds %struct._A2* %a, i64 0, i32 4
  %4 = load i32* %inc2, align 4, !tbaa !3
  %cmp18 = icmp slt i32 %4, 1
  br i1 %cmp18, label %if.then21, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %entries = getelementptr inbounds %struct._A2* %a, i64 0, i32 6
  %5 = load double** %entries, align 8, !tbaa !0
  %cmp20 = icmp eq double* %5, null
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %lor.lhs.false19, %lor.lhs.false17, %lor.lhs.false11, %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([58 x i8]* @.str54, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %lor.lhs.false19
  %type = getelementptr inbounds %struct._A2* %a, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %7, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end23
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([97 x i8]* @.str55, i64 0, i64 0), %struct._A2* %a, i32 %jcol1, i32 %jcol2, i32 %7) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp eq i32 %jcol1, %jcol2
  br i1 %cmp32, label %return, label %if.end34

if.end34:                                         ; preds = %if.end31
  switch i32 %7, label %return [
    i32 1, label %if.then37
    i32 2, label %if.then72
  ]

if.then37:                                        ; preds = %if.end34
  %mul = mul nsw i32 %4, %jcol1
  %idx.ext = sext i32 %mul to i64
  %mul42 = mul nsw i32 %4, %jcol2
  %idx.ext43 = sext i32 %mul42 to i64
  %cmp45 = icmp eq i32 %3, 1
  %cmp47274 = icmp sgt i32 %2, 0
  br i1 %cmp45, label %for.cond.preheader, label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %if.then37
  br i1 %cmp47274, label %for.body56.lr.ph, label %return

for.body56.lr.ph:                                 ; preds = %for.cond54.preheader
  %9 = sext i32 %3 to i64
  br label %for.body56

for.cond.preheader:                               ; preds = %if.then37
  br i1 %cmp47274, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %add.ptr.sum269 = add i64 %indvars.iv, %idx.ext
  %arrayidx = getelementptr inbounds double* %5, i64 %add.ptr.sum269
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %add.ptr44.sum270 = add i64 %indvars.iv, %idx.ext43
  %arrayidx49 = getelementptr inbounds double* %5, i64 %add.ptr44.sum270
  %11 = load double* %arrayidx49, align 8, !tbaa !4
  store double %11, double* %arrayidx, align 8, !tbaa !4
  store double %10, double* %arrayidx49, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %return, label %for.body

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv289 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next290, %for.body56 ]
  %i.1278 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc66, %for.body56 ]
  %add.ptr.sum = add i64 %indvars.iv289, %idx.ext
  %arrayidx58 = getelementptr inbounds double* %5, i64 %add.ptr.sum
  %12 = load double* %arrayidx58, align 8, !tbaa !4
  %add.ptr44.sum = add i64 %indvars.iv289, %idx.ext43
  %arrayidx60 = getelementptr inbounds double* %5, i64 %add.ptr44.sum
  %13 = load double* %arrayidx60, align 8, !tbaa !4
  store double %13, double* %arrayidx58, align 8, !tbaa !4
  store double %12, double* %arrayidx60, align 8, !tbaa !4
  %inc66 = add nsw i32 %i.1278, 1
  %indvars.iv.next290 = add i64 %indvars.iv289, %9
  %exitcond291 = icmp eq i32 %inc66, %2
  br i1 %exitcond291, label %return, label %for.body56

if.then72:                                        ; preds = %if.end34
  %mul74 = shl i32 %jcol1, 1
  %mul76 = mul nsw i32 %mul74, %4
  %idx.ext77 = sext i32 %mul76 to i64
  %mul80 = shl i32 %jcol2, 1
  %mul82 = mul nsw i32 %mul80, %4
  %idx.ext83 = sext i32 %mul82 to i64
  %cmp85 = icmp eq i32 %3, 1
  %cmp88281 = icmp sgt i32 %2, 0
  br i1 %cmp85, label %for.cond87.preheader, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %if.then72
  br i1 %cmp88281, label %for.body124.lr.ph, label %return

for.body124.lr.ph:                                ; preds = %for.cond122.preheader
  %14 = sext i32 %3 to i64
  br label %for.body124

for.cond87.preheader:                             ; preds = %if.then72
  br i1 %cmp88281, label %for.body89, label %return

for.body89:                                       ; preds = %for.cond87.preheader, %for.body89
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %for.body89 ], [ 0, %for.cond87.preheader ]
  %15 = trunc i64 %indvars.iv292 to i32
  %mul90 = shl nsw i32 %15, 1
  %idxprom91 = sext i32 %mul90 to i64
  %add.ptr78.sum264 = add i64 %idxprom91, %idx.ext77
  %arrayidx92 = getelementptr inbounds double* %5, i64 %add.ptr78.sum264
  %16 = load double* %arrayidx92, align 8, !tbaa !4
  %add.ptr84.sum265 = add i64 %idxprom91, %idx.ext83
  %arrayidx95 = getelementptr inbounds double* %5, i64 %add.ptr84.sum265
  %17 = load double* %arrayidx95, align 8, !tbaa !4
  store double %17, double* %arrayidx92, align 8, !tbaa !4
  store double %16, double* %arrayidx95, align 8, !tbaa !4
  %add103266 = or i32 %mul90, 1
  %idxprom104 = sext i32 %add103266 to i64
  %add.ptr78.sum267 = add i64 %idxprom104, %idx.ext77
  %arrayidx105 = getelementptr inbounds double* %5, i64 %add.ptr78.sum267
  %18 = load double* %arrayidx105, align 8, !tbaa !4
  %add.ptr84.sum268 = add i64 %idxprom104, %idx.ext83
  %arrayidx109 = getelementptr inbounds double* %5, i64 %add.ptr84.sum268
  %19 = load double* %arrayidx109, align 8, !tbaa !4
  store double %19, double* %arrayidx105, align 8, !tbaa !4
  store double %18, double* %arrayidx109, align 8, !tbaa !4
  %indvars.iv.next293 = add i64 %indvars.iv292, 1
  %lftr.wideiv294 = trunc i64 %indvars.iv.next293 to i32
  %exitcond295 = icmp eq i32 %lftr.wideiv294, %2
  br i1 %exitcond295, label %return, label %for.body89

for.body124:                                      ; preds = %for.body124, %for.body124.lr.ph
  %indvars.iv296 = phi i64 [ 0, %for.body124.lr.ph ], [ %indvars.iv.next297, %for.body124 ]
  %i.3285 = phi i32 [ 0, %for.body124.lr.ph ], [ %inc154, %for.body124 ]
  %20 = trunc i64 %indvars.iv296 to i32
  %mul125 = shl nsw i32 %20, 1
  %idxprom126 = sext i32 %mul125 to i64
  %add.ptr78.sum = add i64 %idxprom126, %idx.ext77
  %arrayidx127 = getelementptr inbounds double* %5, i64 %add.ptr78.sum
  %21 = load double* %arrayidx127, align 8, !tbaa !4
  %add.ptr84.sum = add i64 %idxprom126, %idx.ext83
  %arrayidx130 = getelementptr inbounds double* %5, i64 %add.ptr84.sum
  %22 = load double* %arrayidx130, align 8, !tbaa !4
  store double %22, double* %arrayidx127, align 8, !tbaa !4
  store double %21, double* %arrayidx130, align 8, !tbaa !4
  %add138261 = or i32 %mul125, 1
  %idxprom139 = sext i32 %add138261 to i64
  %add.ptr78.sum262 = add i64 %idxprom139, %idx.ext77
  %arrayidx140 = getelementptr inbounds double* %5, i64 %add.ptr78.sum262
  %23 = load double* %arrayidx140, align 8, !tbaa !4
  %add.ptr84.sum263 = add i64 %idxprom139, %idx.ext83
  %arrayidx144 = getelementptr inbounds double* %5, i64 %add.ptr84.sum263
  %24 = load double* %arrayidx144, align 8, !tbaa !4
  store double %24, double* %arrayidx140, align 8, !tbaa !4
  store double %23, double* %arrayidx144, align 8, !tbaa !4
  %inc154 = add nsw i32 %i.3285, 1
  %indvars.iv.next297 = add i64 %indvars.iv296, %14
  %exitcond298 = icmp eq i32 %inc154, %2
  br i1 %exitcond298, label %return, label %for.body124

return:                                           ; preds = %for.cond122.preheader, %for.body124, %for.cond87.preheader, %for.body89, %for.cond54.preheader, %for.body56, %for.cond.preheader, %for.body, %if.end34, %if.end31
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
