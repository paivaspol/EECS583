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
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  %1 = load i32* %id, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_type(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_symmetryFlag(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_dimensions(%struct._Chv* %chv, i32* %pnD, i32* %pnL, i32* %pnU) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %pnD, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %pnL, null
  %or.cond16 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %pnU, null
  %or.cond17 = or i1 %or.cond16, %cmp5
  br i1 %or.cond17, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, i32* %pnD, i32* %pnL, i32* %pnU) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %1 = load i32* %nD, align 4, !tbaa !3
  store i32 %1, i32* %pnD, align 4, !tbaa !3
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %2 = load i32* %nL, align 4, !tbaa !3
  store i32 %2, i32* %pnL, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %3 = load i32* %nU, align 4, !tbaa !3
  store i32 %3, i32* %pnU, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_rowIndices(%struct._Chv* %chv, i32* %pnrow, i32** %prowind) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %pnrow, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %prowind, null
  %or.cond38 = or i1 %or.cond, %cmp3
  br i1 %or.cond38, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32* %pnrow, i32** %prowind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %1, label %if.else14 [
    i32 2, label %if.then5
    i32 0, label %if.then11
    i32 1, label %if.then11
  ]

if.then5:                                         ; preds = %if.end
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %2 = load i32* %nD, align 4, !tbaa !3
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %3 = load i32* %nL, align 4, !tbaa !3
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %pnrow, align 4, !tbaa !3
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  br label %if.end18

if.then11:                                        ; preds = %if.end, %if.end
  %nD12 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %4 = load i32* %nD12, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %5 = load i32* %nU, align 4, !tbaa !3
  %add13 = add nsw i32 %5, %4
  store i32 %add13, i32* %pnrow, align 4, !tbaa !3
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  br label %if.end18

if.else14:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32* %pnrow, i32** %prowind, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.then11, %if.then5
  %storemerge.in = phi i32** [ %colind, %if.then11 ], [ %rowind, %if.then5 ]
  %storemerge = load i32** %storemerge.in, align 8
  store i32* %storemerge, i32** %prowind, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_columnIndices(%struct._Chv* %chv, i32* %pncol, i32** %pcolind) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i32* %pncol, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32** %pcolind, null
  %or.cond12 = or i1 %or.cond, %cmp3
  br i1 %or.cond12, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32* %pncol, i32** %pcolind) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nD = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %1 = load i32* %nD, align 4, !tbaa !3
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %2 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %pncol, align 4, !tbaa !3
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  %3 = load i32** %colind, align 8, !tbaa !0
  store i32* %3, i32** %pcolind, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nent(%struct._Chv* %chv) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), %struct._Chv* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %1 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %1, label %if.else13 [
    i32 0, label %if.then4
    i32 1, label %if.then4
    i32 2, label %if.then9
  ]

if.then4:                                         ; preds = %if.end, %if.end
  %2 = load i32* %nD, align 4, !tbaa !3
  %add = add nsw i32 %2, 1
  %mul = mul nsw i32 %add, %2
  %div = sdiv i32 %mul, 2
  %3 = load i32* %nU, align 4, !tbaa !3
  %mul5 = mul nsw i32 %3, %2
  %add6 = add nsw i32 %mul5, %div
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %4 = load i32* %nD, align 4, !tbaa !3
  %5 = load i32* %nL, align 4, !tbaa !3
  %add10 = add nsw i32 %5, %4
  %6 = load i32* %nU, align 4, !tbaa !3
  %add11 = add nsw i32 %add10, %6
  %mul12 = mul nsw i32 %add11, %4
  br label %if.end17

if.else13:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), %struct._Chv* %chv, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.then9, %if.then4
  %nent.0 = phi i32 [ %add6, %if.then4 ], [ %mul12, %if.then9 ]
  ret i32 %nent.0
}

; Function Attrs: nounwind optsize uwtable
define double* @Chv_entries(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %1 = load double** %entries, align 8, !tbaa !0
  ret double* %1
}

; Function Attrs: nounwind optsize uwtable
define double* @Chv_diagLocation(%struct._Chv* %chv, i32 %ichv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str10, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %ichv, 0
  %nD4.phi.trans.insert = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  %.pre = load i32* %nD4.phi.trans.insert, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %.pre, %ichv
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %.pre) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  %2 = load double** %entries, align 8, !tbaa !0
  %cmp7 = icmp eq double* %2, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chv) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.end6
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.else101 [
    i32 1, label %if.then12
    i32 2, label %if.then54
  ]

if.then12:                                        ; preds = %if.end10
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %5 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %5, label %if.else46 [
    i32 0, label %if.then14
    i32 2, label %if.then22
  ]

if.then14:                                        ; preds = %if.then12
  %nU = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %.pre
  %mul = mul nsw i32 %add, %ichv
  %idx.ext = sext i32 %mul to i64
  %sub = add nsw i32 %ichv, -1
  %mul17 = mul nsw i32 %sub, %ichv
  %div = sdiv i32 %mul17, 2
  %idx.ext18 = sext i32 %div to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext18
  %add.ptr19 = getelementptr inbounds double* %2, i64 %add.ptr.sum
  br label %if.end105

if.then22:                                        ; preds = %if.then12
  %mul24 = shl nsw i32 %ichv, 1
  %add25158 = or i32 %mul24, 1
  %mul27 = mul nsw i32 %.pre, %add25158
  %idx.ext28 = sext i32 %mul27 to i64
  %add30 = add nsw i32 %ichv, 1
  %nL = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %7 = load i32* %nL, align 4, !tbaa !3
  %mul31 = mul nsw i32 %7, %add30
  %idx.ext32 = sext i32 %mul31 to i64
  %nU34 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %8 = load i32* %nU34, align 4, !tbaa !3
  %mul35 = mul nsw i32 %8, %ichv
  %idx.ext36 = sext i32 %mul35 to i64
  %mul38 = mul nsw i32 %ichv, %ichv
  %idx.ext39159 = zext i32 %mul38 to i64
  %idx.ext42 = sext i32 %ichv to i64
  %add.ptr29.sum = xor i64 %idx.ext42, -1
  %add.ptr33.sum = sub i64 %add.ptr29.sum, %idx.ext39159
  %add.ptr37.sum = add i64 %add.ptr33.sum, %idx.ext28
  %add.ptr41.sum = add i64 %add.ptr37.sum, %idx.ext32
  %add.ptr44.sum = add i64 %add.ptr41.sum, %idx.ext36
  %add.ptr45 = getelementptr inbounds double* %2, i64 %add.ptr44.sum
  br label %if.end105

if.else46:                                        ; preds = %if.then12
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([122 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chv, i32 %5) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.then54:                                        ; preds = %if.end10
  %symflag55 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %10 = load i32* %symflag55, align 4, !tbaa !3
  switch i32 %10, label %if.else96 [
    i32 0, label %if.then60
    i32 1, label %if.then60
    i32 2, label %if.then76
  ]

if.then60:                                        ; preds = %if.then54, %if.then54
  %nU63 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %11 = load i32* %nU63, align 4, !tbaa !3
  %add64 = add nsw i32 %11, %.pre
  %mul65 = mul nsw i32 %add64, %ichv
  %sub66 = add nsw i32 %ichv, -1
  %mul67 = mul nsw i32 %sub66, %ichv
  %div68 = sdiv i32 %mul67, 2
  %sub69 = sub nsw i32 %mul65, %div68
  %mul70 = shl nsw i32 %sub69, 1
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds double* %2, i64 %idx.ext71
  br label %if.end105

if.then76:                                        ; preds = %if.then54
  %mul78 = shl nsw i32 %ichv, 1
  %add79157 = or i32 %mul78, 1
  %mul81 = mul nsw i32 %.pre, %add79157
  %add82 = add nsw i32 %ichv, 1
  %nL83 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  %12 = load i32* %nL83, align 4, !tbaa !3
  %mul84 = mul nsw i32 %12, %add82
  %nU86 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  %13 = load i32* %nU86, align 4, !tbaa !3
  %mul87 = mul nsw i32 %13, %ichv
  %mul89 = mul nsw i32 %ichv, %ichv
  %sum = add i32 %mul89, %ichv
  %add88 = sub i32 %mul81, %sum
  %sub90 = add i32 %add88, %mul84
  %sub91 = add i32 %sub90, %mul87
  %sub92 = shl i32 %sub91, 1
  %mul93 = add i32 %sub92, -2
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds double* %2, i64 %idx.ext94
  br label %if.end105

if.else96:                                        ; preds = %if.then54
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call98 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([154 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32 %10) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else101:                                       ; preds = %if.end10
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %symflag102 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %16 = load i32* %symflag102, align 4, !tbaa !3
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([91 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i32 %16) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end105:                                        ; preds = %if.then76, %if.then60, %if.then14, %if.then22
  %diag.0 = phi double* [ %add.ptr19, %if.then14 ], [ %add.ptr45, %if.then22 ], [ %add.ptr72, %if.then60 ], [ %add.ptr95, %if.then76 ]
  ret double* %diag.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Chv_workspace(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %1 = bitcast double* %call1 to i8*
  ret i8* %1
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond88 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %pValue, null
  %or.cond89 = or i1 %or.cond88, %cmp5
  br i1 %or.cond89, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 1
  br i1 %cmp6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([76 x i8]* @.str18, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %3, label %if.then15 [
    i32 0, label %if.end18
    i32 2, label %if.end18
  ]

if.then15:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([112 x i8]* @.str19, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end10, %if.end10
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %if.end23, label %if.else

if.else:                                          ; preds = %if.end18
  %8 = load i32* %nL, align 4, !tbaa !3
  %add22 = add nsw i32 %8, %5
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.else
  %nrow.0 = phi i32 [ %add22, %if.else ], [ %add, %if.end18 ]
  %cmp24 = icmp sgt i32 %nrow.0, %irow
  %cmp26 = icmp sgt i32 %add, %jcol
  %or.cond90 = and i1 %cmp24, %cmp26
  br i1 %or.cond90, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([89 x i8]* @.str20, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pValue, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end29:                                         ; preds = %if.end23
  %cmp30 = icmp sgt i32 %5, %irow
  %cmp31 = icmp sgt i32 %5, %jcol
  %or.cond91 = or i1 %cmp30, %cmp31
  br i1 %or.cond91, label %if.else33, label %if.end43

if.else33:                                        ; preds = %if.end29
  %cmp34 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp34, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp38 = icmp slt i32 %sub, 0
  %or.cond92 = and i1 %cmp20, %cmp38
  %sub40 = sub nsw i32 0, %sub
  %off.0 = select i1 %or.cond92, i32 %sub40, i32 %sub
  %call42 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %idxprom = sext i32 %off.0 to i64
  %arrayidx = getelementptr inbounds double* %call42, i64 %idxprom
  %10 = load double* %arrayidx, align 8, !tbaa !4
  br label %if.end43

if.end43:                                         ; preds = %if.end29, %if.else33
  %storemerge = phi double [ %10, %if.else33 ], [ 0.000000e+00, %if.end29 ]
  store double %storemerge, double* %pValue, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond134 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %pReal, null
  %or.cond135 = or i1 %or.cond134, %cmp5
  %cmp7 = icmp eq double* %pImag, null
  %or.cond136 = or i1 %or.cond135, %cmp7
  br i1 %or.cond136, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([85 x i8]* @.str22, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %3, 3
  br i1 %switch, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str23, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %switch139 = icmp ult i32 %7, 2
  br i1 %switch139, label %if.end31, label %if.else

if.else:                                          ; preds = %if.end23
  %8 = load i32* %nL, align 4, !tbaa !3
  %add30 = add nsw i32 %8, %5
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.else
  %nrow.0 = phi i32 [ %add30, %if.else ], [ %add, %if.end23 ]
  %cmp32 = icmp sgt i32 %nrow.0, %irow
  %cmp34 = icmp sgt i32 %add, %jcol
  %or.cond137 = and i1 %cmp32, %cmp34
  br i1 %or.cond137, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end31
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([95 x i8]* @.str24, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end37:                                         ; preds = %if.end31
  %cmp38 = icmp sgt i32 %5, %irow
  %cmp39 = icmp sgt i32 %5, %jcol
  %or.cond138 = or i1 %cmp38, %cmp39
  br i1 %or.cond138, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end37
  store double 0.000000e+00, double* %pImag, align 8, !tbaa !4
  store double 0.000000e+00, double* %pReal, align 8, !tbaa !4
  br label %if.end70

if.else41:                                        ; preds = %if.end37
  %cmp42 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp42, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp43 = icmp slt i32 %sub, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end52

land.lhs.true44:                                  ; preds = %if.else41
  %sub51 = sub nsw i32 0, %sub
  %sub51.sub = select i1 %switch139, i32 %sub51, i32 %sub
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true44, %if.else41
  %off.0 = phi i32 [ %sub, %if.else41 ], [ %sub51.sub, %land.lhs.true44 ]
  %call53 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %mul = shl nsw i32 %off.0, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double* %call53, i64 %idxprom
  %10 = load double* %arrayidx, align 8, !tbaa !4
  store double %10, double* %pReal, align 8, !tbaa !4
  %cmp54 = icmp sgt i32 %irow, %jcol
  br i1 %cmp54, label %land.lhs.true55, label %if.else64

land.lhs.true55:                                  ; preds = %if.end52
  %11 = load i32* %symflag, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %11, 1
  br i1 %cmp57, label %if.then58, label %if.else64

if.then58:                                        ; preds = %land.lhs.true55
  %add60133 = or i32 %mul, 1
  %idxprom61 = sext i32 %add60133 to i64
  %arrayidx62 = getelementptr inbounds double* %call53, i64 %idxprom61
  %12 = load double* %arrayidx62, align 8, !tbaa !4
  %sub63 = fsub double -0.000000e+00, %12
  store double %sub63, double* %pImag, align 8, !tbaa !4
  br label %if.end70

if.else64:                                        ; preds = %land.lhs.true55, %if.end52
  %add66132 = or i32 %mul, 1
  %idxprom67 = sext i32 %add66132 to i64
  %arrayidx68 = getelementptr inbounds double* %call53, i64 %idxprom67
  %13 = load double* %arrayidx68, align 8, !tbaa !4
  store double %13, double* %pImag, align 8, !tbaa !4
  br label %if.end70

if.end70:                                         ; preds = %if.then58, %if.else64, %if.then40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_locationOfRealEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond88 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double** %ppValue, null
  %or.cond89 = or i1 %or.cond88, %cmp5
  br i1 %or.cond89, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str25, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %1, 1
  br i1 %cmp6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([86 x i8]* @.str26, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %3, label %if.then15 [
    i32 0, label %if.end18
    i32 2, label %if.end18
  ]

if.then15:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([118 x i8]* @.str27, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end18:                                         ; preds = %if.end10, %if.end10
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %if.end23, label %if.else

if.else:                                          ; preds = %if.end18
  %8 = load i32* %nL, align 4, !tbaa !3
  %add22 = add nsw i32 %8, %5
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.else
  %nrow.0 = phi i32 [ %add22, %if.else ], [ %add, %if.end18 ]
  %cmp24 = icmp sgt i32 %nrow.0, %irow
  %cmp26 = icmp sgt i32 %add, %jcol
  %or.cond90 = and i1 %cmp24, %cmp26
  br i1 %or.cond90, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.end23
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([99 x i8]* @.str28, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppValue, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end29:                                         ; preds = %if.end23
  %cmp30 = icmp sgt i32 %5, %irow
  %cmp31 = icmp sgt i32 %5, %jcol
  %or.cond91 = or i1 %cmp30, %cmp31
  br i1 %or.cond91, label %if.else33, label %if.end43

if.else33:                                        ; preds = %if.end29
  %cmp34 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp34, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp38 = icmp slt i32 %sub, 0
  %or.cond92 = and i1 %cmp20, %cmp38
  %sub40 = sub nsw i32 0, %sub
  %off.0 = select i1 %or.cond92, i32 %sub40, i32 %sub
  %call42 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %idx.ext = sext i32 %off.0 to i64
  %add.ptr = getelementptr inbounds double* %call42, i64 %idx.ext
  br label %if.end43

if.end43:                                         ; preds = %if.end29, %if.else33
  %storemerge = phi double* [ %add.ptr, %if.else33 ], [ null, %if.end29 ]
  store double* %storemerge, double** %ppValue, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_locationOfComplexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond115 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double** %ppReal, null
  %or.cond116 = or i1 %or.cond115, %cmp5
  %cmp7 = icmp eq double** %ppImag, null
  %or.cond117 = or i1 %or.cond116, %cmp7
  br i1 %or.cond117, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str29, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 2
  br i1 %cmp8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str30, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %3, 3
  br i1 %switch, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([145 x i8]* @.str31, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %switch120 = icmp ult i32 %7, 2
  br i1 %switch120, label %if.end31, label %if.else

if.else:                                          ; preds = %if.end23
  %8 = load i32* %nL, align 4, !tbaa !3
  %add30 = add nsw i32 %8, %5
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %if.else
  %nrow.0 = phi i32 [ %add30, %if.else ], [ %add, %if.end23 ]
  %cmp32 = icmp sgt i32 %nrow.0, %irow
  %cmp34 = icmp sgt i32 %add, %jcol
  %or.cond118 = and i1 %cmp32, %cmp34
  br i1 %or.cond118, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end31
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([105 x i8]* @.str32, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end37:                                         ; preds = %if.end31
  %cmp38 = icmp sgt i32 %5, %irow
  %cmp39 = icmp sgt i32 %5, %jcol
  %or.cond119 = or i1 %cmp38, %cmp39
  br i1 %or.cond119, label %if.else41, label %if.then40

if.then40:                                        ; preds = %if.end37
  store double* null, double** %ppImag, align 8, !tbaa !0
  store double* null, double** %ppReal, align 8, !tbaa !0
  br label %if.end58

if.else41:                                        ; preds = %if.end37
  %cmp42 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp42, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp43 = icmp slt i32 %sub, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end52

land.lhs.true44:                                  ; preds = %if.else41
  %sub51 = sub nsw i32 0, %sub
  %sub51.sub = select i1 %switch120, i32 %sub51, i32 %sub
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true44, %if.else41
  %off.0 = phi i32 [ %sub, %if.else41 ], [ %sub51.sub, %land.lhs.true44 ]
  %call53 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %mul = shl nsw i32 %off.0, 1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double* %call53, i64 %idx.ext
  store double* %add.ptr, double** %ppReal, align 8, !tbaa !0
  %add.ptr.sum114 = or i64 %idx.ext, 1
  %add.ptr57 = getelementptr inbounds double* %call53, i64 %add.ptr.sum114
  store double* %add.ptr57, double** %ppImag, align 8, !tbaa !0
  br label %if.end58

if.end58:                                         ; preds = %if.end52, %if.then40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_setRealEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond83 = or i1 %or.cond, %cmp3
  br i1 %or.cond83, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str33, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str34, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %3, label %if.then13 [
    i32 0, label %if.end16
    i32 2, label %if.end16
  ]

if.then13:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([115 x i8]* @.str35, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end16:                                         ; preds = %if.end8, %if.end8
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %7, 0
  br i1 %cmp18, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end16
  %8 = load i32* %nL, align 4, !tbaa !3
  %add20 = add nsw i32 %8, %5
  br label %if.end21

if.end21:                                         ; preds = %if.end16, %if.else
  %nrow.0 = phi i32 [ %add20, %if.else ], [ %add, %if.end16 ]
  %cmp22 = icmp sgt i32 %nrow.0, %irow
  %cmp24 = icmp sgt i32 %add, %jcol
  %or.cond84 = and i1 %cmp22, %cmp24
  br i1 %or.cond84, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end21
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([92 x i8]* @.str36, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %value, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end27:                                         ; preds = %if.end21
  %cmp28 = icmp sgt i32 %5, %irow
  %cmp30 = icmp sgt i32 %5, %jcol
  %or.cond85 = or i1 %cmp28, %cmp30
  br i1 %or.cond85, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end27
  %cmp32 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp32, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp35 = icmp slt i32 %sub, 0
  %or.cond86 = and i1 %cmp18, %cmp35
  %sub37 = sub nsw i32 0, %sub
  %off.0 = select i1 %or.cond86, i32 %sub37, i32 %sub
  %call39 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %idxprom = sext i32 %off.0 to i64
  %arrayidx = getelementptr inbounds double* %call39, i64 %idxprom
  store double %value, double* %arrayidx, align 8, !tbaa !4
  br label %if.end40

if.end40:                                         ; preds = %if.end27, %if.then31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_setComplexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %irow, 0
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %jcol, 0
  %or.cond106 = or i1 %or.cond, %cmp3
  br i1 %or.cond106, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str37, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp4 = icmp eq i32 %1, 2
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str38, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %1) #4
  call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %3 = load i32* %symflag, align 4, !tbaa !3
  %switch = icmp ult i32 %3, 3
  br i1 %switch, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([138 x i8]* @.str39, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %3) #4
  call void @exit(i32 -1) #5
  unreachable

if.end19:                                         ; preds = %if.end8
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6
  %5 = load i32* %nD, align 4, !tbaa !3
  %6 = load i32* %nU, align 4, !tbaa !3
  %add = add nsw i32 %6, %5
  %7 = load i32* %symflag, align 4, !tbaa !3
  %switch109 = icmp ult i32 %7, 2
  br i1 %switch109, label %if.end27, label %if.else

if.else:                                          ; preds = %if.end19
  %8 = load i32* %nL, align 4, !tbaa !3
  %add26 = add nsw i32 %8, %5
  br label %if.end27

if.end27:                                         ; preds = %if.end19, %if.else
  %nrow.0 = phi i32 [ %add26, %if.else ], [ %add, %if.end19 ]
  %cmp28 = icmp sgt i32 %nrow.0, %irow
  %cmp30 = icmp sgt i32 %add, %jcol
  %or.cond107 = and i1 %cmp28, %cmp30
  br i1 %or.cond107, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([98 x i8]* @.str40, i64 0, i64 0), %struct._Chv* %chv, i32 %irow, i32 %jcol, double %real, double %imag, i32 %irow, i32 %jcol, i32 %nrow.0, i32 %add) #4
  call void @exit(i32 -1) #5
  unreachable

if.end33:                                         ; preds = %if.end27
  %cmp34 = icmp sgt i32 %5, %irow
  %cmp36 = icmp sgt i32 %5, %jcol
  %or.cond108 = or i1 %cmp34, %cmp36
  br i1 %or.cond108, label %if.then37, label %if.end53

if.then37:                                        ; preds = %if.end33
  %cmp38 = icmp sle i32 %irow, %jcol
  %cond = select i1 %cmp38, i32 %irow, i32 %jcol
  %sub = sub nsw i32 %jcol, %irow
  %cmp39 = icmp slt i32 %sub, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then37
  %sub46 = sub nsw i32 0, %sub
  %sub46.sub = select i1 %switch109, i32 %sub46, i32 %sub
  br label %if.end47

if.end47:                                         ; preds = %land.lhs.true, %if.then37
  %off.0 = phi i32 [ %sub, %if.then37 ], [ %sub46.sub, %land.lhs.true ]
  %call48 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %cond) #6
  %mul = shl nsw i32 %off.0, 1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds double* %call48, i64 %idxprom
  store double %real, double* %arrayidx, align 8, !tbaa !4
  %add50105 = or i32 %mul, 1
  %idxprom51 = sext i32 %add50105 to i64
  %arrayidx52 = getelementptr inbounds double* %call48, i64 %idxprom51
  store double %imag, double* %arrayidx52, align 8, !tbaa !4
  br label %if.end53

if.end53:                                         ; preds = %if.end33, %if.end47
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
