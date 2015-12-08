; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_nrow(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_ncol(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc1(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc2(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in A2_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [63 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [67 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_col(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str20 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str21 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str23 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str28 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str30 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str31 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str34 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str35 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str36 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str38 = private unnamed_addr constant [70 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [97 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str40 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str41 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str42 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_nrow(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), %struct._A2* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @A2_ncol(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._A2* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %1 = load i32* %n2, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_inc1(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %1 = load i32* %inc1, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_inc2(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %1 = load i32* %inc2, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_entries(%struct._A2* %mtx) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %1 = load double** %entries, align 8, !tbaa !0
  ret double* %1
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_row(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._A2* null, i32 %irow) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %1 = load double** %entries, align 8, !tbaa !0
  %cmp1 = icmp eq double* %1, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1
  %n18.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n18.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end10:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.else23 [
    i32 1, label %if.then12
    i32 2, label %if.then16
  ]

if.then12:                                        ; preds = %if.end10
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %5 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %irow
  br label %if.end27

if.then16:                                        ; preds = %if.end10
  %mul18 = shl i32 %irow, 1
  %inc119 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc119, align 4, !tbaa !3
  %mul20 = mul nsw i32 %mul18, %6
  br label %if.end27

if.else23:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([85 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %4) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end27:                                         ; preds = %if.then16, %if.then12
  %idx.ext.pn.in = phi i32 [ %mul, %if.then12 ], [ %mul20, %if.then16 ]
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64
  %row.0 = getelementptr inbounds double* %1, i64 %idx.ext.pn
  ret double* %row.0
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_column(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), %struct._A2* null, i32 %jcol) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %1 = load double** %entries, align 8, !tbaa !0
  %cmp1 = icmp eq double* %1, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %jcol, -1
  %n28.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %n28.phi.trans.insert, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %.pre, %jcol
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %jcol, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end10:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.else23 [
    i32 1, label %if.then12
    i32 2, label %if.then16
  ]

if.then12:                                        ; preds = %if.end10
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %5 = load i32* %inc2, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %jcol
  br label %if.end27

if.then16:                                        ; preds = %if.end10
  %mul18 = shl i32 %jcol, 1
  %inc219 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %6 = load i32* %inc219, align 4, !tbaa !3
  %mul20 = mul nsw i32 %mul18, %6
  br label %if.end27

if.else23:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %4) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end27:                                         ; preds = %if.then16, %if.then12
  %idx.ext.pn.in = phi i32 [ %mul, %if.then12 ], [ %mul20, %if.then16 ]
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64
  %col.0 = getelementptr inbounds double* %1, i64 %idx.ext.pn
  ret double* %col.0
}

; Function Attrs: nounwind optsize uwtable
define void @A2_realEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %pValue, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp7 = icmp eq double* %3, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp sgt i32 %irow, -1
  %n115.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n115.phi.trans.insert, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %.pre, %irow
  %or.cond65 = and i1 %cmp11, %cmp13
  br i1 %or.cond65, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end17:                                         ; preds = %if.end10
  %cmp18 = icmp sgt i32 %jcol, -1
  %n222.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre64 = load i32* %n222.phi.trans.insert, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %.pre64, %jcol
  %or.cond66 = and i1 %cmp18, %cmp20
  br i1 %or.cond66, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %jcol, i32 %.pre64) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end24:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul25 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul25, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  %9 = load double* %arrayidx, align 8, !tbaa !4
  store double %9, double* %pValue, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_complexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double* %pReal, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %pImag, null
  %or.cond80 = or i1 %or.cond, %cmp3
  br i1 %or.cond80, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end8:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp9 = icmp eq double* %3, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str20, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp sgt i32 %irow, -1
  %n117.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n117.phi.trans.insert, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %.pre, %irow
  %or.cond82 = and i1 %cmp13, %cmp15
  br i1 %or.cond82, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([81 x i8]* @.str21, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end19:                                         ; preds = %if.end12
  %cmp20 = icmp sgt i32 %jcol, -1
  %n224.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre81 = load i32* %n224.phi.trans.insert, align 4, !tbaa !3
  %cmp22 = icmp sgt i32 %.pre81, %jcol
  %or.cond83 = and i1 %cmp20, %cmp22
  br i1 %or.cond83, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end19
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([81 x i8]* @.str22, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %jcol, i32 %.pre81) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end26:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul27 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul27, %mul
  %mul28 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul28 to i64
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  %9 = load double* %arrayidx, align 8, !tbaa !4
  store double %9, double* %pReal, align 8, !tbaa !4
  %add3079 = or i32 %mul28, 1
  %idxprom31 = sext i32 %add3079 to i64
  %arrayidx33 = getelementptr inbounds double* %3, i64 %idxprom31
  %10 = load double* %arrayidx33, align 8, !tbaa !4
  store double %10, double* %pImag, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str23, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %value) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([82 x i8]* @.str24, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end5:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp6 = icmp eq double* %3, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp sgt i32 %irow, -1
  %n113.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n113.phi.trans.insert, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp10, %cmp11
  br i1 %or.cond, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end15:                                         ; preds = %if.end9
  %cmp16 = icmp sgt i32 %jcol, -1
  %n220.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre61 = load i32* %n220.phi.trans.insert, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %.pre61, %jcol
  %or.cond62 = and i1 %cmp16, %cmp18
  br i1 %or.cond62, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %jcol, i32 %.pre61) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end22:                                         ; preds = %if.end15
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul23 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul23, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  store double %value, double* %arrayidx, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str28, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %real, double %imag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end5:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp6 = icmp eq double* %3, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str30, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp sgt i32 %irow, -1
  %n113.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n113.phi.trans.insert, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %.pre, %irow
  %or.cond = and i1 %cmp10, %cmp11
  br i1 %or.cond, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([84 x i8]* @.str31, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end15:                                         ; preds = %if.end9
  %cmp16 = icmp sgt i32 %jcol, -1
  %n220.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre74 = load i32* %n220.phi.trans.insert, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %.pre74, %jcol
  %or.cond75 = and i1 %cmp16, %cmp18
  br i1 %or.cond75, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end15
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %jcol, i32 %.pre74) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end22:                                         ; preds = %if.end15
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul23 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul23, %mul
  %mul24 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul24 to i64
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  store double %real, double* %arrayidx, align 8, !tbaa !4
  %add2673 = or i32 %mul24, 1
  %idxprom27 = sext i32 %add2673 to i64
  %arrayidx29 = getelementptr inbounds double* %3, i64 %idxprom27
  store double %imag, double* %arrayidx29, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_pointerToRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double** %ppValue, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, 2
  br i1 %cmp2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str34, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp7 = icmp eq double* %3, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str35, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp sgt i32 %irow, -1
  %n115.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n115.phi.trans.insert, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %.pre, %irow
  %or.cond65 = and i1 %cmp11, %cmp13
  br i1 %or.cond65, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([84 x i8]* @.str36, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end17:                                         ; preds = %if.end10
  %cmp18 = icmp sgt i32 %jcol, -1
  %n222.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre64 = load i32* %n222.phi.trans.insert, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %.pre64, %jcol
  %or.cond66 = and i1 %cmp18, %cmp20
  br i1 %or.cond66, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([84 x i8]* @.str37, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %jcol, i32 %.pre64) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end24:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul25 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul25, %mul
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds double* %3, i64 %idx.ext
  store double* %add.ptr, double** %ppValue, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_pointerToComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq double** %ppReal, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double** %ppImag, null
  %or.cond80 = or i1 %or.cond, %cmp3
  br i1 %or.cond80, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str38, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([97 x i8]* @.str39, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %1) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end8:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %3 = load double** %entries, align 8, !tbaa !0
  %cmp9 = icmp eq double* %3, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([91 x i8]* @.str40, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp sgt i32 %irow, -1
  %n117.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n117.phi.trans.insert, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %.pre, %irow
  %or.cond82 = and i1 %cmp13, %cmp15
  br i1 %or.cond82, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([90 x i8]* @.str41, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %irow, i32 %.pre) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end19:                                         ; preds = %if.end12
  %cmp20 = icmp sgt i32 %jcol, -1
  %n224.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre81 = load i32* %n224.phi.trans.insert, align 4, !tbaa !3
  %cmp22 = icmp sgt i32 %.pre81, %jcol
  %or.cond83 = and i1 %cmp20, %cmp22
  br i1 %or.cond83, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end19
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([90 x i8]* @.str42, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %jcol, i32 %.pre81) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end26:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %irow
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul27 = mul nsw i32 %8, %jcol
  %add = add nsw i32 %mul27, %mul
  %mul28 = shl nsw i32 %add, 1
  %idx.ext = sext i32 %mul28 to i64
  %add.ptr = getelementptr inbounds double* %3, i64 %idx.ext
  store double* %add.ptr, double** %ppReal, align 8, !tbaa !0
  %9 = load double** %entries, align 8, !tbaa !0
  %add.ptr32.sum79 = or i64 %idx.ext, 1
  %add.ptr33 = getelementptr inbounds double* %9, i64 %add.ptr32.sum79
  store double* %add.ptr33, double** %ppImag, align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
