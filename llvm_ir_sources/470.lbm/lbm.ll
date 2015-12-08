; ModuleID = '../../SPEC/benchspec/CPU2006/470.lbm/src/lbm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [138 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.4f maxRho: %8.4f mass: %e\0A\09minU: %e maxU: %e\0A\0A\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"LBM_compareVelocityField: maxDiff = %e  \0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @LBM_allocateGrid(double** nocapture %ptr) #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 214400000) #4
  %0 = bitcast i8* %call to double*
  store double* %0, double** %ptr, align 8, !tbaa !0
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), double 0x40698EF800000000) #4
  tail call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %call, i64 3200000
  %1 = bitcast i8* %add.ptr to double*
  store double* %1, double** %ptr, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @LBM_freeGrid(double** nocapture %ptr) #0 {
entry:
  %0 = load double** %ptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds double* %0, i64 -400000
  %1 = bitcast double* %add.ptr to i8*
  tail call void @free(i8* %1) #4
  store double* null, double** %ptr, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @LBM_initializeGrid(double* nocapture %grid) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ -400000, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %grid, i64 %indvars.iv
  store double 0x3FD5555555555555, double* %arrayidx, align 8, !tbaa !3
  %0 = or i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds double* %grid, i64 %0
  store double 0x3FAC71C71C71C71C, double* %arrayidx3, align 8, !tbaa !3
  %1 = or i64 %indvars.iv, 2
  %arrayidx6 = getelementptr inbounds double* %grid, i64 %1
  store double 0x3FAC71C71C71C71C, double* %arrayidx6, align 8, !tbaa !3
  %2 = or i64 %indvars.iv, 3
  %arrayidx9 = getelementptr inbounds double* %grid, i64 %2
  store double 0x3FAC71C71C71C71C, double* %arrayidx9, align 8, !tbaa !3
  %3 = add nsw i64 %indvars.iv, 4
  %arrayidx12 = getelementptr inbounds double* %grid, i64 %3
  store double 0x3FAC71C71C71C71C, double* %arrayidx12, align 8, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 5
  %arrayidx15 = getelementptr inbounds double* %grid, i64 %4
  store double 0x3FAC71C71C71C71C, double* %arrayidx15, align 8, !tbaa !3
  %5 = add nsw i64 %indvars.iv, 6
  %arrayidx18 = getelementptr inbounds double* %grid, i64 %5
  store double 0x3FAC71C71C71C71C, double* %arrayidx18, align 8, !tbaa !3
  %6 = add nsw i64 %indvars.iv, 7
  %arrayidx21 = getelementptr inbounds double* %grid, i64 %6
  store double 0x3F9C71C71C71C71C, double* %arrayidx21, align 8, !tbaa !3
  %7 = add nsw i64 %indvars.iv, 8
  %arrayidx24 = getelementptr inbounds double* %grid, i64 %7
  store double 0x3F9C71C71C71C71C, double* %arrayidx24, align 8, !tbaa !3
  %8 = add nsw i64 %indvars.iv, 9
  %arrayidx27 = getelementptr inbounds double* %grid, i64 %8
  store double 0x3F9C71C71C71C71C, double* %arrayidx27, align 8, !tbaa !3
  %9 = add nsw i64 %indvars.iv, 10
  %arrayidx30 = getelementptr inbounds double* %grid, i64 %9
  store double 0x3F9C71C71C71C71C, double* %arrayidx30, align 8, !tbaa !3
  %10 = add nsw i64 %indvars.iv, 11
  %arrayidx33 = getelementptr inbounds double* %grid, i64 %10
  store double 0x3F9C71C71C71C71C, double* %arrayidx33, align 8, !tbaa !3
  %11 = add nsw i64 %indvars.iv, 12
  %arrayidx36 = getelementptr inbounds double* %grid, i64 %11
  store double 0x3F9C71C71C71C71C, double* %arrayidx36, align 8, !tbaa !3
  %12 = add nsw i64 %indvars.iv, 13
  %arrayidx39 = getelementptr inbounds double* %grid, i64 %12
  store double 0x3F9C71C71C71C71C, double* %arrayidx39, align 8, !tbaa !3
  %13 = add nsw i64 %indvars.iv, 14
  %arrayidx42 = getelementptr inbounds double* %grid, i64 %13
  store double 0x3F9C71C71C71C71C, double* %arrayidx42, align 8, !tbaa !3
  %14 = add nsw i64 %indvars.iv, 15
  %arrayidx45 = getelementptr inbounds double* %grid, i64 %14
  store double 0x3F9C71C71C71C71C, double* %arrayidx45, align 8, !tbaa !3
  %15 = add nsw i64 %indvars.iv, 16
  %arrayidx48 = getelementptr inbounds double* %grid, i64 %15
  store double 0x3F9C71C71C71C71C, double* %arrayidx48, align 8, !tbaa !3
  %16 = add nsw i64 %indvars.iv, 17
  %arrayidx51 = getelementptr inbounds double* %grid, i64 %16
  store double 0x3F9C71C71C71C71C, double* %arrayidx51, align 8, !tbaa !3
  %17 = add nsw i64 %indvars.iv, 18
  %arrayidx54 = getelementptr inbounds double* %grid, i64 %17
  store double 0x3F9C71C71C71C71C, double* %arrayidx54, align 8, !tbaa !3
  %18 = add nsw i64 %indvars.iv, 19
  %arrayidx57 = getelementptr inbounds double* %grid, i64 %18
  %19 = bitcast double* %arrayidx57 to i32*
  store i32 0, i32* %19, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 20
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %20, 26400000
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_swapGrids([26000000 x double]** nocapture %grid1, [26000000 x double]** nocapture %grid2) #0 {
entry:
  %0 = load [26000000 x double]** %grid1, align 8, !tbaa !0
  %1 = load [26000000 x double]** %grid2, align 8, !tbaa !0
  store [26000000 x double]* %1, [26000000 x double]** %grid1, align 8, !tbaa !0
  store [26000000 x double]* %0, [26000000 x double]** %grid2, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_loadObstacleFile(double* nocapture %grid, i8* nocapture %filename) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end17, %entry
  %indvars.iv45 = phi i64 [ 0, %entry ], [ %indvars.iv.next46, %for.end17 ]
  %0 = mul i64 %indvars.iv45, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc15, %for.cond1.preheader
  %indvars.iv39 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next40, %for.inc15 ]
  %call731 = tail call i32 @fgetc(%struct._IO_FILE* %call) #4
  %1 = mul nsw i64 %indvars.iv39, 100
  %2 = add i64 %1, %0
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %call733 = phi i32 [ %call731, %for.cond4.preheader ], [ %call7, %for.inc ]
  %cmp8 = icmp eq i32 %call733, 46
  br i1 %cmp8, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body6
  %3 = add i64 %2, %indvars.iv
  %4 = mul nsw i64 %3, 20
  %5 = add nsw i64 %4, 19
  %arrayidx = getelementptr inbounds double* %grid, i64 %5
  %6 = bitcast double* %arrayidx to i32*
  %7 = load i32* %6, align 4, !tbaa !4
  %or = or i32 %7, 1
  store i32 %or, i32* %6, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %call7 = tail call i32 @fgetc(%struct._IO_FILE* %call) #4
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100
  br i1 %exitcond, label %for.inc15, label %for.body6

for.inc15:                                        ; preds = %for.inc
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv.next40 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, 100
  br i1 %exitcond44, label %for.end17, label %for.cond4.preheader

for.end17:                                        ; preds = %for.inc15
  %call18 = tail call i32 @fgetc(%struct._IO_FILE* %call) #4
  %indvars.iv.next46 = add i64 %indvars.iv45, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.next46 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, 130
  br i1 %exitcond49, label %for.end21, label %for.cond1.preheader

for.end21:                                        ; preds = %for.end17
  %call22 = tail call i32 @fclose(%struct._IO_FILE* %call) #4
  ret void
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @LBM_initializeSpecialCellsForLDC(double* nocapture %grid) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc48, %entry
  %indvars.iv98 = phi i64 [ -2, %entry ], [ %indvars.iv.next99, %for.inc48 ]
  %0 = mul i64 %indvars.iv98, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc45, %for.cond1.preheader
  %indvars.iv89 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next90, %for.inc45 ]
  %1 = add i64 %indvars.iv89, 4294967294
  %2 = trunc i64 %1 to i32
  %3 = mul nsw i64 %indvars.iv89, 100
  %4 = add i64 %3, %0
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %5 = trunc i64 %indvars.iv to i32
  switch i32 %5, label %lor.lhs.false9 [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

lor.lhs.false9:                                   ; preds = %for.body6
  %6 = trunc i64 %indvars.iv89 to i32
  switch i32 %6, label %lor.lhs.false13 [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %7 = trunc i64 %indvars.iv98 to i32
  switch i32 %7, label %for.inc [
    i32 129, label %if.then
    i32 0, label %if.then
    i32 128, label %land.lhs.true
    i32 1, label %land.lhs.true
  ]

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false9, %for.body6, %for.body6
  %8 = add i64 %4, %indvars.iv
  %9 = mul nsw i64 %8, 20
  %10 = add nsw i64 %9, 19
  %arrayidx = getelementptr inbounds double* %grid, i64 %10
  %11 = bitcast double* %arrayidx to i32*
  %12 = load i32* %11, align 4, !tbaa !4
  %or = or i32 %12, 1
  store i32 %or, i32* %11, align 4, !tbaa !4
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false13
  %13 = add i64 %indvars.iv, 4294967294
  %14 = trunc i64 %13 to i32
  %.not = icmp ugt i32 %14, 95
  %.not104 = icmp ugt i32 %2, 95
  %brmerge = or i1 %.not, %.not104
  br i1 %brmerge, label %for.inc, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %15 = add i64 %4, %indvars.iv
  %16 = mul nsw i64 %15, 20
  %17 = add nsw i64 %16, 19
  %arrayidx42 = getelementptr inbounds double* %grid, i64 %17
  %18 = bitcast double* %arrayidx42 to i32*
  %19 = load i32* %18, align 4, !tbaa !4
  %or43 = or i32 %19, 2
  store i32 %or43, i32* %18, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %lor.lhs.false13, %if.then, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100
  br i1 %exitcond, label %for.inc45, label %for.body6

for.inc45:                                        ; preds = %for.inc
  %indvars.iv.next90 = add i64 %indvars.iv89, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next90 to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, 100
  br i1 %exitcond97, label %for.inc48, label %for.cond4.preheader

for.inc48:                                        ; preds = %for.inc45
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %lftr.wideiv102 = trunc i64 %indvars.iv.next99 to i32
  %exitcond103 = icmp eq i32 %lftr.wideiv102, 132
  br i1 %exitcond103, label %for.end50, label %for.cond1.preheader

for.end50:                                        ; preds = %for.inc48
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_initializeSpecialCellsForChannel(double* nocapture %grid) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc46, %entry
  %indvars.iv84 = phi i64 [ -2, %entry ], [ %indvars.iv.next85, %for.inc46 ]
  %0 = mul i64 %indvars.iv84, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc43, %for.cond1.preheader
  %indvars.iv78 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next79, %for.inc43 ]
  %1 = mul nsw i64 %indvars.iv78, 100
  %2 = add i64 %1, %0
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = trunc i64 %indvars.iv to i32
  switch i32 %3, label %lor.lhs.false9 [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

lor.lhs.false9:                                   ; preds = %for.body6
  %4 = trunc i64 %indvars.iv78 to i32
  switch i32 %4, label %for.inc [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false9, %for.body6, %for.body6
  %5 = add i64 %2, %indvars.iv
  %6 = mul nsw i64 %5, 20
  %7 = add nsw i64 %6, 19
  %arrayidx = getelementptr inbounds double* %grid, i64 %7
  %8 = bitcast double* %arrayidx to i32*
  %9 = load i32* %8, align 4, !tbaa !4
  %or = or i32 %9, 1
  store i32 %or, i32* %8, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100
  br i1 %exitcond, label %for.inc43, label %for.body6

for.inc43:                                        ; preds = %for.inc
  %indvars.iv.next79 = add i64 %indvars.iv78, 1
  %lftr.wideiv82 = trunc i64 %indvars.iv.next79 to i32
  %exitcond83 = icmp eq i32 %lftr.wideiv82, 100
  br i1 %exitcond83, label %for.inc46, label %for.cond4.preheader

for.inc46:                                        ; preds = %for.inc43
  %indvars.iv.next85 = add i64 %indvars.iv84, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next85 to i32
  %exitcond88 = icmp eq i32 %lftr.wideiv87, 132
  br i1 %exitcond88, label %for.end48, label %for.cond1.preheader

for.end48:                                        ; preds = %for.inc46
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_performStreamCollide(double* %srcGrid, double* %dstGrid) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = add nsw i64 %indvars.iv, 19
  %arrayidx = getelementptr inbounds double* %srcGrid, i64 %0
  %1 = bitcast double* %arrayidx to i32*
  %2 = load i32* %1, align 4, !tbaa !4
  %and = and i32 %2, 1
  %tobool = icmp eq i32 %and, 0
  %arrayidx3 = getelementptr inbounds double* %srcGrid, i64 %indvars.iv
  %3 = load double* %arrayidx3, align 8, !tbaa !3
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx6 = getelementptr inbounds double* %dstGrid, i64 %indvars.iv
  store double %3, double* %arrayidx6, align 8, !tbaa !3
  %4 = or i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds double* %srcGrid, i64 %4
  %5 = load double* %arrayidx9, align 8, !tbaa !3
  %6 = add nsw i64 %indvars.iv, -1998
  %arrayidx12 = getelementptr inbounds double* %dstGrid, i64 %6
  store double %5, double* %arrayidx12, align 8, !tbaa !3
  %7 = or i64 %indvars.iv, 2
  %arrayidx15 = getelementptr inbounds double* %srcGrid, i64 %7
  %8 = load double* %arrayidx15, align 8, !tbaa !3
  %9 = add nsw i64 %indvars.iv, 2001
  %arrayidx18 = getelementptr inbounds double* %dstGrid, i64 %9
  store double %8, double* %arrayidx18, align 8, !tbaa !3
  %10 = or i64 %indvars.iv, 3
  %arrayidx21 = getelementptr inbounds double* %srcGrid, i64 %10
  %11 = load double* %arrayidx21, align 8, !tbaa !3
  %12 = add nsw i64 %indvars.iv, -16
  %arrayidx24 = getelementptr inbounds double* %dstGrid, i64 %12
  store double %11, double* %arrayidx24, align 8, !tbaa !3
  %13 = add nsw i64 %indvars.iv, 4
  %arrayidx27 = getelementptr inbounds double* %srcGrid, i64 %13
  %14 = load double* %arrayidx27, align 8, !tbaa !3
  %15 = add nsw i64 %indvars.iv, 23
  %arrayidx30 = getelementptr inbounds double* %dstGrid, i64 %15
  store double %14, double* %arrayidx30, align 8, !tbaa !3
  %16 = add nsw i64 %indvars.iv, 5
  %arrayidx33 = getelementptr inbounds double* %srcGrid, i64 %16
  %17 = load double* %arrayidx33, align 8, !tbaa !3
  %18 = add nsw i64 %indvars.iv, -199994
  %arrayidx36 = getelementptr inbounds double* %dstGrid, i64 %18
  store double %17, double* %arrayidx36, align 8, !tbaa !3
  %19 = add nsw i64 %indvars.iv, 6
  %arrayidx39 = getelementptr inbounds double* %srcGrid, i64 %19
  %20 = load double* %arrayidx39, align 8, !tbaa !3
  %21 = add nsw i64 %indvars.iv, 200005
  %arrayidx42 = getelementptr inbounds double* %dstGrid, i64 %21
  store double %20, double* %arrayidx42, align 8, !tbaa !3
  %22 = add nsw i64 %indvars.iv, 7
  %arrayidx45 = getelementptr inbounds double* %srcGrid, i64 %22
  %23 = load double* %arrayidx45, align 8, !tbaa !3
  %24 = add nsw i64 %indvars.iv, -2010
  %arrayidx48 = getelementptr inbounds double* %dstGrid, i64 %24
  store double %23, double* %arrayidx48, align 8, !tbaa !3
  %25 = add nsw i64 %indvars.iv, 8
  %arrayidx51 = getelementptr inbounds double* %srcGrid, i64 %25
  %26 = load double* %arrayidx51, align 8, !tbaa !3
  %27 = add nsw i64 %indvars.iv, -1971
  %arrayidx54 = getelementptr inbounds double* %dstGrid, i64 %27
  store double %26, double* %arrayidx54, align 8, !tbaa !3
  %28 = add nsw i64 %indvars.iv, 9
  %arrayidx57 = getelementptr inbounds double* %srcGrid, i64 %28
  %29 = load double* %arrayidx57, align 8, !tbaa !3
  %30 = add nsw i64 %indvars.iv, 1988
  %arrayidx60 = getelementptr inbounds double* %dstGrid, i64 %30
  store double %29, double* %arrayidx60, align 8, !tbaa !3
  %31 = add nsw i64 %indvars.iv, 10
  %arrayidx63 = getelementptr inbounds double* %srcGrid, i64 %31
  %32 = load double* %arrayidx63, align 8, !tbaa !3
  %33 = add nsw i64 %indvars.iv, 2027
  %arrayidx66 = getelementptr inbounds double* %dstGrid, i64 %33
  store double %32, double* %arrayidx66, align 8, !tbaa !3
  %34 = add nsw i64 %indvars.iv, 11
  %arrayidx69 = getelementptr inbounds double* %srcGrid, i64 %34
  %35 = load double* %arrayidx69, align 8, !tbaa !3
  %36 = add nsw i64 %indvars.iv, -201986
  %arrayidx72 = getelementptr inbounds double* %dstGrid, i64 %36
  store double %35, double* %arrayidx72, align 8, !tbaa !3
  %37 = add nsw i64 %indvars.iv, 12
  %arrayidx75 = getelementptr inbounds double* %srcGrid, i64 %37
  %38 = load double* %arrayidx75, align 8, !tbaa !3
  %39 = add nsw i64 %indvars.iv, 198013
  %arrayidx78 = getelementptr inbounds double* %dstGrid, i64 %39
  store double %38, double* %arrayidx78, align 8, !tbaa !3
  %40 = add nsw i64 %indvars.iv, 13
  %arrayidx81 = getelementptr inbounds double* %srcGrid, i64 %40
  %41 = load double* %arrayidx81, align 8, !tbaa !3
  %42 = add nsw i64 %indvars.iv, -197988
  %arrayidx84 = getelementptr inbounds double* %dstGrid, i64 %42
  store double %41, double* %arrayidx84, align 8, !tbaa !3
  %43 = add nsw i64 %indvars.iv, 14
  %arrayidx87 = getelementptr inbounds double* %srcGrid, i64 %43
  %44 = load double* %arrayidx87, align 8, !tbaa !3
  %45 = add nsw i64 %indvars.iv, 202011
  %arrayidx90 = getelementptr inbounds double* %dstGrid, i64 %45
  store double %44, double* %arrayidx90, align 8, !tbaa !3
  %46 = add nsw i64 %indvars.iv, 15
  %arrayidx93 = getelementptr inbounds double* %srcGrid, i64 %46
  %47 = load double* %arrayidx93, align 8, !tbaa !3
  %48 = add nsw i64 %indvars.iv, -200002
  %arrayidx96 = getelementptr inbounds double* %dstGrid, i64 %48
  store double %47, double* %arrayidx96, align 8, !tbaa !3
  %49 = add nsw i64 %indvars.iv, 16
  %arrayidx99 = getelementptr inbounds double* %srcGrid, i64 %49
  %50 = load double* %arrayidx99, align 8, !tbaa !3
  %51 = add nsw i64 %indvars.iv, 199997
  %arrayidx102 = getelementptr inbounds double* %dstGrid, i64 %51
  store double %50, double* %arrayidx102, align 8, !tbaa !3
  %52 = add nsw i64 %indvars.iv, 17
  %arrayidx105 = getelementptr inbounds double* %srcGrid, i64 %52
  %53 = load double* %arrayidx105, align 8, !tbaa !3
  %54 = add nsw i64 %indvars.iv, -199964
  %arrayidx108 = getelementptr inbounds double* %dstGrid, i64 %54
  store double %53, double* %arrayidx108, align 8, !tbaa !3
  %55 = add nsw i64 %indvars.iv, 18
  %arrayidx111 = getelementptr inbounds double* %srcGrid, i64 %55
  %56 = load double* %arrayidx111, align 8, !tbaa !3
  %57 = add nsw i64 %indvars.iv, 200035
  %arrayidx114 = getelementptr inbounds double* %dstGrid, i64 %57
  store double %56, double* %arrayidx114, align 8, !tbaa !3
  br label %for.inc

if.end:                                           ; preds = %for.body
  %58 = or i64 %indvars.iv, 1
  %arrayidx120 = getelementptr inbounds double* %srcGrid, i64 %58
  %59 = load double* %arrayidx120, align 8, !tbaa !3
  %add121 = fadd double %3, %59
  %60 = or i64 %indvars.iv, 2
  %arrayidx124 = getelementptr inbounds double* %srcGrid, i64 %60
  %61 = load double* %arrayidx124, align 8, !tbaa !3
  %add125 = fadd double %add121, %61
  %62 = or i64 %indvars.iv, 3
  %arrayidx128 = getelementptr inbounds double* %srcGrid, i64 %62
  %63 = load double* %arrayidx128, align 8, !tbaa !3
  %add129 = fadd double %add125, %63
  %64 = add nsw i64 %indvars.iv, 4
  %arrayidx132 = getelementptr inbounds double* %srcGrid, i64 %64
  %65 = load double* %arrayidx132, align 8, !tbaa !3
  %add133 = fadd double %add129, %65
  %66 = add nsw i64 %indvars.iv, 5
  %arrayidx136 = getelementptr inbounds double* %srcGrid, i64 %66
  %67 = load double* %arrayidx136, align 8, !tbaa !3
  %add137 = fadd double %add133, %67
  %68 = add nsw i64 %indvars.iv, 6
  %arrayidx140 = getelementptr inbounds double* %srcGrid, i64 %68
  %69 = load double* %arrayidx140, align 8, !tbaa !3
  %add141 = fadd double %add137, %69
  %70 = add nsw i64 %indvars.iv, 7
  %arrayidx144 = getelementptr inbounds double* %srcGrid, i64 %70
  %71 = load double* %arrayidx144, align 8, !tbaa !3
  %add145 = fadd double %add141, %71
  %72 = add nsw i64 %indvars.iv, 8
  %arrayidx148 = getelementptr inbounds double* %srcGrid, i64 %72
  %73 = load double* %arrayidx148, align 8, !tbaa !3
  %add149 = fadd double %add145, %73
  %74 = add nsw i64 %indvars.iv, 9
  %arrayidx152 = getelementptr inbounds double* %srcGrid, i64 %74
  %75 = load double* %arrayidx152, align 8, !tbaa !3
  %add153 = fadd double %add149, %75
  %76 = add nsw i64 %indvars.iv, 10
  %arrayidx156 = getelementptr inbounds double* %srcGrid, i64 %76
  %77 = load double* %arrayidx156, align 8, !tbaa !3
  %add157 = fadd double %add153, %77
  %78 = add nsw i64 %indvars.iv, 11
  %arrayidx160 = getelementptr inbounds double* %srcGrid, i64 %78
  %79 = load double* %arrayidx160, align 8, !tbaa !3
  %add161 = fadd double %add157, %79
  %80 = add nsw i64 %indvars.iv, 12
  %arrayidx164 = getelementptr inbounds double* %srcGrid, i64 %80
  %81 = load double* %arrayidx164, align 8, !tbaa !3
  %add165 = fadd double %add161, %81
  %82 = add nsw i64 %indvars.iv, 13
  %arrayidx168 = getelementptr inbounds double* %srcGrid, i64 %82
  %83 = load double* %arrayidx168, align 8, !tbaa !3
  %add169 = fadd double %add165, %83
  %84 = add nsw i64 %indvars.iv, 14
  %arrayidx172 = getelementptr inbounds double* %srcGrid, i64 %84
  %85 = load double* %arrayidx172, align 8, !tbaa !3
  %add173 = fadd double %add169, %85
  %86 = add nsw i64 %indvars.iv, 15
  %arrayidx176 = getelementptr inbounds double* %srcGrid, i64 %86
  %87 = load double* %arrayidx176, align 8, !tbaa !3
  %add177 = fadd double %add173, %87
  %88 = add nsw i64 %indvars.iv, 16
  %arrayidx180 = getelementptr inbounds double* %srcGrid, i64 %88
  %89 = load double* %arrayidx180, align 8, !tbaa !3
  %add181 = fadd double %add177, %89
  %90 = add nsw i64 %indvars.iv, 17
  %arrayidx184 = getelementptr inbounds double* %srcGrid, i64 %90
  %91 = load double* %arrayidx184, align 8, !tbaa !3
  %add185 = fadd double %add181, %91
  %92 = add nsw i64 %indvars.iv, 18
  %arrayidx188 = getelementptr inbounds double* %srcGrid, i64 %92
  %93 = load double* %arrayidx188, align 8, !tbaa !3
  %add189 = fadd double %add185, %93
  %sub = fsub double %63, %65
  %add199 = fadd double %sub, %71
  %sub203 = fsub double %add199, %73
  %add207 = fadd double %sub203, %75
  %sub211 = fsub double %add207, %77
  %add215 = fadd double %sub211, %87
  %add219 = fadd double %add215, %89
  %sub223 = fsub double %add219, %91
  %sub227 = fsub double %sub223, %93
  %sub234 = fsub double %59, %61
  %add238 = fadd double %sub234, %71
  %add242 = fadd double %add238, %73
  %sub246 = fsub double %add242, %75
  %sub250 = fsub double %sub246, %77
  %add254 = fadd double %sub250, %79
  %add258 = fadd double %add254, %81
  %sub262 = fsub double %add258, %83
  %sub266 = fsub double %sub262, %85
  %sub273 = fsub double %67, %69
  %add277 = fadd double %sub273, %79
  %sub281 = fsub double %add277, %81
  %add285 = fadd double %sub281, %83
  %sub289 = fsub double %add285, %85
  %add293 = fadd double %sub289, %87
  %sub297 = fsub double %add293, %89
  %add301 = fadd double %sub297, %91
  %sub305 = fsub double %add301, %93
  %div = fdiv double %sub227, %add189
  %div306 = fdiv double %sub266, %add189
  %div307 = fdiv double %sub305, %add189
  %and311 = and i32 %2, 2
  %tobool312 = icmp eq i32 %and311, 0
  %div306. = select i1 %tobool312, double %div306, double 2.000000e-03
  %div307. = select i1 %tobool312, double %div307, double 0.000000e+00
  %div. = select i1 %tobool312, double %div, double 5.000000e-03
  %mul = fmul double %div., %div.
  %mul315 = fmul double %div306., %div306.
  %add316 = fadd double %mul, %mul315
  %mul317 = fmul double %div307., %div307.
  %add318 = fadd double %add316, %mul317
  %mul319 = fmul double %add318, 1.500000e+00
  %mul323 = fmul double %3, -9.500000e-01
  %mul324 = fmul double %add189, 0x3FE4CCCCCCCCCCCC
  %sub325 = fsub double 1.000000e+00, %mul319
  %mul326 = fmul double %mul324, %sub325
  %add327 = fadd double %mul323, %mul326
  %arrayidx330 = getelementptr inbounds double* %dstGrid, i64 %indvars.iv
  store double %add327, double* %arrayidx330, align 8, !tbaa !3
  %94 = load double* %arrayidx120, align 8, !tbaa !3
  %mul334 = fmul double %94, -9.500000e-01
  %mul335 = fmul double %add189, 0x3FBBBBBBBBBBBBBB
  %mul336 = fmul double %div306., 4.500000e+00
  %add337 = fadd double %mul336, 3.000000e+00
  %mul338 = fmul double %div306., %add337
  %add339 = fadd double %mul338, 1.000000e+00
  %sub340 = fsub double %add339, %mul319
  %mul341 = fmul double %mul335, %sub340
  %add342 = fadd double %mul334, %mul341
  %95 = add nsw i64 %indvars.iv, 2001
  %arrayidx345 = getelementptr inbounds double* %dstGrid, i64 %95
  store double %add342, double* %arrayidx345, align 8, !tbaa !3
  %96 = load double* %arrayidx124, align 8, !tbaa !3
  %mul349 = fmul double %96, -9.500000e-01
  %sub352 = fadd double %mul336, -3.000000e+00
  %mul353 = fmul double %div306., %sub352
  %add354 = fadd double %mul353, 1.000000e+00
  %sub355 = fsub double %add354, %mul319
  %mul356 = fmul double %mul335, %sub355
  %add357 = fadd double %mul349, %mul356
  %97 = add nsw i64 %indvars.iv, -1998
  %arrayidx360 = getelementptr inbounds double* %dstGrid, i64 %97
  store double %add357, double* %arrayidx360, align 8, !tbaa !3
  %98 = load double* %arrayidx128, align 8, !tbaa !3
  %mul364 = fmul double %98, -9.500000e-01
  %mul366 = fmul double %div., 4.500000e+00
  %add367 = fadd double %mul366, 3.000000e+00
  %mul368 = fmul double %div., %add367
  %add369 = fadd double %mul368, 1.000000e+00
  %sub370 = fsub double %add369, %mul319
  %mul371 = fmul double %mul335, %sub370
  %add372 = fadd double %mul364, %mul371
  %99 = add nsw i64 %indvars.iv, 23
  %arrayidx375 = getelementptr inbounds double* %dstGrid, i64 %99
  store double %add372, double* %arrayidx375, align 8, !tbaa !3
  %100 = load double* %arrayidx132, align 8, !tbaa !3
  %mul379 = fmul double %100, -9.500000e-01
  %sub382 = fadd double %mul366, -3.000000e+00
  %mul383 = fmul double %div., %sub382
  %add384 = fadd double %mul383, 1.000000e+00
  %sub385 = fsub double %add384, %mul319
  %mul386 = fmul double %mul335, %sub385
  %add387 = fadd double %mul379, %mul386
  %101 = add nsw i64 %indvars.iv, -16
  %arrayidx390 = getelementptr inbounds double* %dstGrid, i64 %101
  store double %add387, double* %arrayidx390, align 8, !tbaa !3
  %102 = load double* %arrayidx136, align 8, !tbaa !3
  %mul394 = fmul double %102, -9.500000e-01
  %mul396 = fmul double %div307., 4.500000e+00
  %add397 = fadd double %mul396, 3.000000e+00
  %mul398 = fmul double %div307., %add397
  %add399 = fadd double %mul398, 1.000000e+00
  %sub400 = fsub double %add399, %mul319
  %mul401 = fmul double %mul335, %sub400
  %add402 = fadd double %mul394, %mul401
  %103 = add nsw i64 %indvars.iv, 200005
  %arrayidx405 = getelementptr inbounds double* %dstGrid, i64 %103
  store double %add402, double* %arrayidx405, align 8, !tbaa !3
  %104 = load double* %arrayidx140, align 8, !tbaa !3
  %mul409 = fmul double %104, -9.500000e-01
  %sub412 = fadd double %mul396, -3.000000e+00
  %mul413 = fmul double %div307., %sub412
  %add414 = fadd double %mul413, 1.000000e+00
  %sub415 = fsub double %add414, %mul319
  %mul416 = fmul double %mul335, %sub415
  %add417 = fadd double %mul409, %mul416
  %105 = add nsw i64 %indvars.iv, -199994
  %arrayidx420 = getelementptr inbounds double* %dstGrid, i64 %105
  store double %add417, double* %arrayidx420, align 8, !tbaa !3
  %106 = load double* %arrayidx144, align 8, !tbaa !3
  %mul424 = fmul double %106, -9.500000e-01
  %mul425 = fmul double %add189, 0x3FABBBBBBBBBBBBB
  %add426 = fadd double %div., %div306.
  %mul428 = fmul double %add426, 4.500000e+00
  %add429 = fadd double %mul428, 3.000000e+00
  %mul430 = fmul double %add426, %add429
  %add431 = fadd double %mul430, 1.000000e+00
  %sub432 = fsub double %add431, %mul319
  %mul433 = fmul double %mul425, %sub432
  %add434 = fadd double %mul433, %mul424
  %107 = add nsw i64 %indvars.iv, 2027
  %arrayidx437 = getelementptr inbounds double* %dstGrid, i64 %107
  store double %add434, double* %arrayidx437, align 8, !tbaa !3
  %108 = load double* %arrayidx148, align 8, !tbaa !3
  %mul441 = fmul double %108, -9.500000e-01
  %sub443 = fsub double -0.000000e+00, %div.
  %add444 = fsub double %div306., %div.
  %mul447 = fmul double %add444, 4.500000e+00
  %add448 = fadd double %mul447, 3.000000e+00
  %mul449 = fmul double %add444, %add448
  %add450 = fadd double %mul449, 1.000000e+00
  %sub451 = fsub double %add450, %mul319
  %mul452 = fmul double %mul425, %sub451
  %add453 = fadd double %mul452, %mul441
  %109 = add nsw i64 %indvars.iv, 1988
  %arrayidx456 = getelementptr inbounds double* %dstGrid, i64 %109
  store double %add453, double* %arrayidx456, align 8, !tbaa !3
  %110 = load double* %arrayidx152, align 8, !tbaa !3
  %mul460 = fmul double %110, -9.500000e-01
  %sub462 = fsub double %div., %div306.
  %mul464 = fmul double %sub462, 4.500000e+00
  %add465 = fadd double %mul464, 3.000000e+00
  %mul466 = fmul double %sub462, %add465
  %add467 = fadd double %mul466, 1.000000e+00
  %sub468 = fsub double %add467, %mul319
  %mul469 = fmul double %mul425, %sub468
  %add470 = fadd double %mul469, %mul460
  %111 = add nsw i64 %indvars.iv, -1971
  %arrayidx473 = getelementptr inbounds double* %dstGrid, i64 %111
  store double %add470, double* %arrayidx473, align 8, !tbaa !3
  %112 = load double* %arrayidx156, align 8, !tbaa !3
  %mul477 = fmul double %112, -9.500000e-01
  %sub480 = fsub double %sub443, %div306.
  %mul483 = fmul double %sub480, 4.500000e+00
  %add484 = fadd double %mul483, 3.000000e+00
  %mul485 = fmul double %sub480, %add484
  %add486 = fadd double %mul485, 1.000000e+00
  %sub487 = fsub double %add486, %mul319
  %mul488 = fmul double %mul425, %sub487
  %add489 = fadd double %mul488, %mul477
  %113 = add nsw i64 %indvars.iv, -2010
  %arrayidx492 = getelementptr inbounds double* %dstGrid, i64 %113
  store double %add489, double* %arrayidx492, align 8, !tbaa !3
  %114 = load double* %arrayidx160, align 8, !tbaa !3
  %mul496 = fmul double %114, -9.500000e-01
  %add498 = fadd double %div306., %div307.
  %mul500 = fmul double %add498, 4.500000e+00
  %add501 = fadd double %mul500, 3.000000e+00
  %mul502 = fmul double %add498, %add501
  %add503 = fadd double %mul502, 1.000000e+00
  %sub504 = fsub double %add503, %mul319
  %mul505 = fmul double %mul425, %sub504
  %add506 = fadd double %mul505, %mul496
  %115 = add nsw i64 %indvars.iv, 202011
  %arrayidx509 = getelementptr inbounds double* %dstGrid, i64 %115
  store double %add506, double* %arrayidx509, align 8, !tbaa !3
  %116 = load double* %arrayidx164, align 8, !tbaa !3
  %mul513 = fmul double %116, -9.500000e-01
  %sub515 = fsub double %div306., %div307.
  %mul517 = fmul double %sub515, 4.500000e+00
  %add518 = fadd double %mul517, 3.000000e+00
  %mul519 = fmul double %sub515, %add518
  %add520 = fadd double %mul519, 1.000000e+00
  %sub521 = fsub double %add520, %mul319
  %mul522 = fmul double %mul425, %sub521
  %add523 = fadd double %mul522, %mul513
  %117 = add nsw i64 %indvars.iv, -197988
  %arrayidx526 = getelementptr inbounds double* %dstGrid, i64 %117
  store double %add523, double* %arrayidx526, align 8, !tbaa !3
  %118 = load double* %arrayidx168, align 8, !tbaa !3
  %mul530 = fmul double %118, -9.500000e-01
  %sub532 = fsub double -0.000000e+00, %div306.
  %add533 = fsub double %div307., %div306.
  %mul536 = fmul double %add533, 4.500000e+00
  %add537 = fadd double %mul536, 3.000000e+00
  %mul538 = fmul double %add533, %add537
  %add539 = fadd double %mul538, 1.000000e+00
  %sub540 = fsub double %add539, %mul319
  %mul541 = fmul double %mul425, %sub540
  %add542 = fadd double %mul541, %mul530
  %119 = add nsw i64 %indvars.iv, 198013
  %arrayidx545 = getelementptr inbounds double* %dstGrid, i64 %119
  store double %add542, double* %arrayidx545, align 8, !tbaa !3
  %120 = load double* %arrayidx172, align 8, !tbaa !3
  %mul549 = fmul double %120, -9.500000e-01
  %sub552 = fsub double %sub532, %div307.
  %mul555 = fmul double %sub552, 4.500000e+00
  %add556 = fadd double %mul555, 3.000000e+00
  %mul557 = fmul double %sub552, %add556
  %add558 = fadd double %mul557, 1.000000e+00
  %sub559 = fsub double %add558, %mul319
  %mul560 = fmul double %mul425, %sub559
  %add561 = fadd double %mul560, %mul549
  %121 = add nsw i64 %indvars.iv, -201986
  %arrayidx564 = getelementptr inbounds double* %dstGrid, i64 %121
  store double %add561, double* %arrayidx564, align 8, !tbaa !3
  %122 = load double* %arrayidx176, align 8, !tbaa !3
  %mul568 = fmul double %122, -9.500000e-01
  %add570 = fadd double %div., %div307.
  %mul572 = fmul double %add570, 4.500000e+00
  %add573 = fadd double %mul572, 3.000000e+00
  %mul574 = fmul double %add570, %add573
  %add575 = fadd double %mul574, 1.000000e+00
  %sub576 = fsub double %add575, %mul319
  %mul577 = fmul double %mul425, %sub576
  %add578 = fadd double %mul577, %mul568
  %123 = add nsw i64 %indvars.iv, 200035
  %arrayidx581 = getelementptr inbounds double* %dstGrid, i64 %123
  store double %add578, double* %arrayidx581, align 8, !tbaa !3
  %124 = load double* %arrayidx180, align 8, !tbaa !3
  %mul585 = fmul double %124, -9.500000e-01
  %sub587 = fsub double %div., %div307.
  %mul589 = fmul double %sub587, 4.500000e+00
  %add590 = fadd double %mul589, 3.000000e+00
  %mul591 = fmul double %sub587, %add590
  %add592 = fadd double %mul591, 1.000000e+00
  %sub593 = fsub double %add592, %mul319
  %mul594 = fmul double %mul425, %sub593
  %add595 = fadd double %mul594, %mul585
  %125 = add nsw i64 %indvars.iv, -199964
  %arrayidx598 = getelementptr inbounds double* %dstGrid, i64 %125
  store double %add595, double* %arrayidx598, align 8, !tbaa !3
  %126 = load double* %arrayidx184, align 8, !tbaa !3
  %mul602 = fmul double %126, -9.500000e-01
  %add605 = fsub double %div307., %div.
  %mul608 = fmul double %add605, 4.500000e+00
  %add609 = fadd double %mul608, 3.000000e+00
  %mul610 = fmul double %add605, %add609
  %add611 = fadd double %mul610, 1.000000e+00
  %sub612 = fsub double %add611, %mul319
  %mul613 = fmul double %mul425, %sub612
  %add614 = fadd double %mul613, %mul602
  %127 = add nsw i64 %indvars.iv, 199997
  %arrayidx617 = getelementptr inbounds double* %dstGrid, i64 %127
  store double %add614, double* %arrayidx617, align 8, !tbaa !3
  %128 = load double* %arrayidx188, align 8, !tbaa !3
  %mul621 = fmul double %128, -9.500000e-01
  %sub624 = fsub double %sub443, %div307.
  %mul627 = fmul double %sub624, 4.500000e+00
  %add628 = fadd double %mul627, 3.000000e+00
  %mul629 = fmul double %sub624, %add628
  %add630 = fadd double %mul629, 1.000000e+00
  %sub631 = fsub double %add630, %mul319
  %mul632 = fmul double %mul425, %sub631
  %add633 = fadd double %mul632, %mul621
  %129 = add nsw i64 %indvars.iv, -200002
  %arrayidx636 = getelementptr inbounds double* %dstGrid, i64 %129
  store double %add633, double* %arrayidx636, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 20
  %130 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %130, 26000000
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_handleInOutFlow(double* %srcGrid) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv1655 = phi i64 [ 0, %entry ], [ %indvars.iv.next1656, %for.body ]
  %0 = add nsw i64 %indvars.iv1655, 200000
  %arrayidx = getelementptr inbounds double* %srcGrid, i64 %0
  %1 = load double* %arrayidx, align 8, !tbaa !3
  %2 = add nsw i64 %indvars.iv1655, 200001
  %arrayidx3 = getelementptr inbounds double* %srcGrid, i64 %2
  %3 = load double* %arrayidx3, align 8, !tbaa !3
  %add4 = fadd double %1, %3
  %4 = add nsw i64 %indvars.iv1655, 200002
  %arrayidx7 = getelementptr inbounds double* %srcGrid, i64 %4
  %5 = load double* %arrayidx7, align 8, !tbaa !3
  %add8 = fadd double %add4, %5
  %6 = add nsw i64 %indvars.iv1655, 200003
  %arrayidx11 = getelementptr inbounds double* %srcGrid, i64 %6
  %7 = load double* %arrayidx11, align 8, !tbaa !3
  %add12 = fadd double %add8, %7
  %8 = add nsw i64 %indvars.iv1655, 200004
  %arrayidx15 = getelementptr inbounds double* %srcGrid, i64 %8
  %9 = load double* %arrayidx15, align 8, !tbaa !3
  %add16 = fadd double %add12, %9
  %10 = add nsw i64 %indvars.iv1655, 200005
  %arrayidx19 = getelementptr inbounds double* %srcGrid, i64 %10
  %11 = load double* %arrayidx19, align 8, !tbaa !3
  %add20 = fadd double %add16, %11
  %12 = add nsw i64 %indvars.iv1655, 200006
  %arrayidx23 = getelementptr inbounds double* %srcGrid, i64 %12
  %13 = load double* %arrayidx23, align 8, !tbaa !3
  %add24 = fadd double %add20, %13
  %14 = add nsw i64 %indvars.iv1655, 200007
  %arrayidx27 = getelementptr inbounds double* %srcGrid, i64 %14
  %15 = load double* %arrayidx27, align 8, !tbaa !3
  %add28 = fadd double %add24, %15
  %16 = add nsw i64 %indvars.iv1655, 200008
  %arrayidx31 = getelementptr inbounds double* %srcGrid, i64 %16
  %17 = load double* %arrayidx31, align 8, !tbaa !3
  %add32 = fadd double %add28, %17
  %18 = add nsw i64 %indvars.iv1655, 200009
  %arrayidx35 = getelementptr inbounds double* %srcGrid, i64 %18
  %19 = load double* %arrayidx35, align 8, !tbaa !3
  %add36 = fadd double %add32, %19
  %20 = add nsw i64 %indvars.iv1655, 200010
  %arrayidx39 = getelementptr inbounds double* %srcGrid, i64 %20
  %21 = load double* %arrayidx39, align 8, !tbaa !3
  %add40 = fadd double %add36, %21
  %22 = add nsw i64 %indvars.iv1655, 200011
  %arrayidx43 = getelementptr inbounds double* %srcGrid, i64 %22
  %23 = load double* %arrayidx43, align 8, !tbaa !3
  %add44 = fadd double %add40, %23
  %24 = add nsw i64 %indvars.iv1655, 200012
  %arrayidx47 = getelementptr inbounds double* %srcGrid, i64 %24
  %25 = load double* %arrayidx47, align 8, !tbaa !3
  %add48 = fadd double %add44, %25
  %26 = add nsw i64 %indvars.iv1655, 200013
  %arrayidx51 = getelementptr inbounds double* %srcGrid, i64 %26
  %27 = load double* %arrayidx51, align 8, !tbaa !3
  %add52 = fadd double %add48, %27
  %28 = add nsw i64 %indvars.iv1655, 200014
  %arrayidx55 = getelementptr inbounds double* %srcGrid, i64 %28
  %29 = load double* %arrayidx55, align 8, !tbaa !3
  %add56 = fadd double %add52, %29
  %30 = add nsw i64 %indvars.iv1655, 200015
  %arrayidx59 = getelementptr inbounds double* %srcGrid, i64 %30
  %31 = load double* %arrayidx59, align 8, !tbaa !3
  %add60 = fadd double %add56, %31
  %32 = add nsw i64 %indvars.iv1655, 200016
  %arrayidx63 = getelementptr inbounds double* %srcGrid, i64 %32
  %33 = load double* %arrayidx63, align 8, !tbaa !3
  %add64 = fadd double %add60, %33
  %34 = add nsw i64 %indvars.iv1655, 200017
  %arrayidx67 = getelementptr inbounds double* %srcGrid, i64 %34
  %35 = load double* %arrayidx67, align 8, !tbaa !3
  %add68 = fadd double %add64, %35
  %36 = add nsw i64 %indvars.iv1655, 200018
  %arrayidx71 = getelementptr inbounds double* %srcGrid, i64 %36
  %37 = load double* %arrayidx71, align 8, !tbaa !3
  %add72 = fadd double %add68, %37
  %38 = add nsw i64 %indvars.iv1655, 400000
  %arrayidx75 = getelementptr inbounds double* %srcGrid, i64 %38
  %39 = load double* %arrayidx75, align 8, !tbaa !3
  %40 = add nsw i64 %indvars.iv1655, 400001
  %arrayidx78 = getelementptr inbounds double* %srcGrid, i64 %40
  %41 = load double* %arrayidx78, align 8, !tbaa !3
  %add79 = fadd double %39, %41
  %42 = add nsw i64 %indvars.iv1655, 400002
  %arrayidx82 = getelementptr inbounds double* %srcGrid, i64 %42
  %43 = load double* %arrayidx82, align 8, !tbaa !3
  %add83 = fadd double %add79, %43
  %44 = add nsw i64 %indvars.iv1655, 400003
  %arrayidx86 = getelementptr inbounds double* %srcGrid, i64 %44
  %45 = load double* %arrayidx86, align 8, !tbaa !3
  %add87 = fadd double %add83, %45
  %46 = add nsw i64 %indvars.iv1655, 400004
  %arrayidx90 = getelementptr inbounds double* %srcGrid, i64 %46
  %47 = load double* %arrayidx90, align 8, !tbaa !3
  %add91 = fadd double %add87, %47
  %48 = add nsw i64 %indvars.iv1655, 400005
  %arrayidx94 = getelementptr inbounds double* %srcGrid, i64 %48
  %49 = load double* %arrayidx94, align 8, !tbaa !3
  %add95 = fadd double %add91, %49
  %50 = add nsw i64 %indvars.iv1655, 400006
  %arrayidx98 = getelementptr inbounds double* %srcGrid, i64 %50
  %51 = load double* %arrayidx98, align 8, !tbaa !3
  %add99 = fadd double %add95, %51
  %52 = add nsw i64 %indvars.iv1655, 400007
  %arrayidx102 = getelementptr inbounds double* %srcGrid, i64 %52
  %53 = load double* %arrayidx102, align 8, !tbaa !3
  %add103 = fadd double %add99, %53
  %54 = add nsw i64 %indvars.iv1655, 400008
  %arrayidx106 = getelementptr inbounds double* %srcGrid, i64 %54
  %55 = load double* %arrayidx106, align 8, !tbaa !3
  %add107 = fadd double %add103, %55
  %56 = add nsw i64 %indvars.iv1655, 400009
  %arrayidx110 = getelementptr inbounds double* %srcGrid, i64 %56
  %57 = load double* %arrayidx110, align 8, !tbaa !3
  %add111 = fadd double %add107, %57
  %58 = add nsw i64 %indvars.iv1655, 400010
  %arrayidx114 = getelementptr inbounds double* %srcGrid, i64 %58
  %59 = load double* %arrayidx114, align 8, !tbaa !3
  %add115 = fadd double %add111, %59
  %60 = add nsw i64 %indvars.iv1655, 400011
  %arrayidx118 = getelementptr inbounds double* %srcGrid, i64 %60
  %61 = load double* %arrayidx118, align 8, !tbaa !3
  %add119 = fadd double %add115, %61
  %62 = add nsw i64 %indvars.iv1655, 400012
  %arrayidx122 = getelementptr inbounds double* %srcGrid, i64 %62
  %63 = load double* %arrayidx122, align 8, !tbaa !3
  %add123 = fadd double %add119, %63
  %64 = add nsw i64 %indvars.iv1655, 400013
  %arrayidx126 = getelementptr inbounds double* %srcGrid, i64 %64
  %65 = load double* %arrayidx126, align 8, !tbaa !3
  %add127 = fadd double %add123, %65
  %66 = add nsw i64 %indvars.iv1655, 400014
  %arrayidx130 = getelementptr inbounds double* %srcGrid, i64 %66
  %67 = load double* %arrayidx130, align 8, !tbaa !3
  %add131 = fadd double %add127, %67
  %68 = add nsw i64 %indvars.iv1655, 400015
  %arrayidx134 = getelementptr inbounds double* %srcGrid, i64 %68
  %69 = load double* %arrayidx134, align 8, !tbaa !3
  %add135 = fadd double %add131, %69
  %70 = add nsw i64 %indvars.iv1655, 400016
  %arrayidx138 = getelementptr inbounds double* %srcGrid, i64 %70
  %71 = load double* %arrayidx138, align 8, !tbaa !3
  %add139 = fadd double %add135, %71
  %72 = add nsw i64 %indvars.iv1655, 400017
  %arrayidx142 = getelementptr inbounds double* %srcGrid, i64 %72
  %73 = load double* %arrayidx142, align 8, !tbaa !3
  %add143 = fadd double %add139, %73
  %74 = add nsw i64 %indvars.iv1655, 400018
  %arrayidx146 = getelementptr inbounds double* %srcGrid, i64 %74
  %75 = load double* %arrayidx146, align 8, !tbaa !3
  %add147 = fadd double %add143, %75
  %mul = fmul double %add72, 2.000000e+00
  %sub = fsub double %mul, %add147
  %76 = trunc i64 %indvars.iv1655 to i32
  %div = sdiv i32 %76, 20
  %rem = srem i32 %div, 100
  %conv = sitofp i32 %rem to double
  %div148 = fdiv double %conv, 4.950000e+01
  %sub149 = fadd double %div148, -1.000000e+00
  %div151 = sdiv i32 %76, 2000
  %rem152 = srem i32 %div151, 100
  %conv153 = sitofp i32 %rem152 to double
  %div154 = fdiv double %conv153, 4.950000e+01
  %sub155 = fadd double %div154, -1.000000e+00
  %mul156 = fmul double %sub149, %sub149
  %sub157 = fsub double 1.000000e+00, %mul156
  %mul158 = fmul double %sub157, 1.000000e-02
  %mul159 = fmul double %sub155, %sub155
  %sub160 = fsub double 1.000000e+00, %mul159
  %mul161 = fmul double %mul158, %sub160
  %mul165 = fmul double %mul161, %mul161
  %add166 = fadd double %mul165, 0.000000e+00
  %mul167 = fmul double %add166, 1.500000e+00
  %mul168 = fmul double %sub, 0x3FD5555555555555
  %sub169 = fsub double 1.000000e+00, %mul167
  %mul170 = fmul double %mul168, %sub169
  %arrayidx173 = getelementptr inbounds double* %srcGrid, i64 %indvars.iv1655
  store double %mul170, double* %arrayidx173, align 8, !tbaa !3
  %mul174 = fmul double %sub, 0x3FAC71C71C71C71C
  %mul180 = fmul double %mul174, %sub169
  %77 = or i64 %indvars.iv1655, 1
  %arrayidx183 = getelementptr inbounds double* %srcGrid, i64 %77
  store double %mul180, double* %arrayidx183, align 8, !tbaa !3
  %78 = or i64 %indvars.iv1655, 2
  %arrayidx193 = getelementptr inbounds double* %srcGrid, i64 %78
  store double %mul180, double* %arrayidx193, align 8, !tbaa !3
  %79 = or i64 %indvars.iv1655, 3
  %arrayidx203 = getelementptr inbounds double* %srcGrid, i64 %79
  store double %mul180, double* %arrayidx203, align 8, !tbaa !3
  %80 = add nsw i64 %indvars.iv1655, 4
  %arrayidx213 = getelementptr inbounds double* %srcGrid, i64 %80
  store double %mul180, double* %arrayidx213, align 8, !tbaa !3
  %mul215 = fmul double %mul161, 4.500000e+00
  %add216 = fadd double %mul215, 3.000000e+00
  %mul217 = fmul double %mul161, %add216
  %add218 = fadd double %mul217, 1.000000e+00
  %sub219 = fsub double %add218, %mul167
  %mul220 = fmul double %mul174, %sub219
  %81 = add nsw i64 %indvars.iv1655, 5
  %arrayidx223 = getelementptr inbounds double* %srcGrid, i64 %81
  store double %mul220, double* %arrayidx223, align 8, !tbaa !3
  %sub226 = fadd double %mul215, -3.000000e+00
  %mul227 = fmul double %mul161, %sub226
  %add228 = fadd double %mul227, 1.000000e+00
  %sub229 = fsub double %add228, %mul167
  %mul230 = fmul double %mul174, %sub229
  %82 = add nsw i64 %indvars.iv1655, 6
  %arrayidx233 = getelementptr inbounds double* %srcGrid, i64 %82
  store double %mul230, double* %arrayidx233, align 8, !tbaa !3
  %mul234 = fmul double %sub, 0x3F9C71C71C71C71C
  %mul242 = fmul double %mul234, %sub169
  %83 = add nsw i64 %indvars.iv1655, 7
  %arrayidx245 = getelementptr inbounds double* %srcGrid, i64 %83
  store double %mul242, double* %arrayidx245, align 8, !tbaa !3
  %84 = add nsw i64 %indvars.iv1655, 8
  %arrayidx259 = getelementptr inbounds double* %srcGrid, i64 %84
  store double %mul242, double* %arrayidx259, align 8, !tbaa !3
  %85 = add nsw i64 %indvars.iv1655, 9
  %arrayidx271 = getelementptr inbounds double* %srcGrid, i64 %85
  store double %mul242, double* %arrayidx271, align 8, !tbaa !3
  %86 = add nsw i64 %indvars.iv1655, 10
  %arrayidx285 = getelementptr inbounds double* %srcGrid, i64 %86
  store double %mul242, double* %arrayidx285, align 8, !tbaa !3
  %add287 = fadd double %mul161, 0.000000e+00
  %mul289 = fmul double %add287, 4.500000e+00
  %add290 = fadd double %mul289, 3.000000e+00
  %mul291 = fmul double %add287, %add290
  %add292 = fadd double %mul291, 1.000000e+00
  %sub293 = fsub double %add292, %mul167
  %mul294 = fmul double %mul234, %sub293
  %87 = add nsw i64 %indvars.iv1655, 11
  %arrayidx297 = getelementptr inbounds double* %srcGrid, i64 %87
  store double %mul294, double* %arrayidx297, align 8, !tbaa !3
  %sub299 = fsub double 0.000000e+00, %mul161
  %mul301 = fmul double %sub299, 4.500000e+00
  %add302 = fadd double %mul301, 3.000000e+00
  %mul303 = fmul double %sub299, %add302
  %add304 = fadd double %mul303, 1.000000e+00
  %sub305 = fsub double %add304, %mul167
  %mul306 = fmul double %mul234, %sub305
  %88 = add nsw i64 %indvars.iv1655, 12
  %arrayidx309 = getelementptr inbounds double* %srcGrid, i64 %88
  store double %mul306, double* %arrayidx309, align 8, !tbaa !3
  %mul320 = fmul double %mul234, %sub219
  %89 = add nsw i64 %indvars.iv1655, 13
  %arrayidx323 = getelementptr inbounds double* %srcGrid, i64 %89
  store double %mul320, double* %arrayidx323, align 8, !tbaa !3
  %mul329 = fmul double %mul161, -4.500000e+00
  %add330 = fadd double %mul329, 3.000000e+00
  %90 = fmul double %mul161, %add330
  %add332 = fsub double 1.000000e+00, %90
  %sub333 = fsub double %add332, %mul167
  %mul334 = fmul double %mul234, %sub333
  %91 = add nsw i64 %indvars.iv1655, 14
  %arrayidx337 = getelementptr inbounds double* %srcGrid, i64 %91
  store double %mul334, double* %arrayidx337, align 8, !tbaa !3
  %92 = add nsw i64 %indvars.iv1655, 15
  %arrayidx349 = getelementptr inbounds double* %srcGrid, i64 %92
  store double %mul294, double* %arrayidx349, align 8, !tbaa !3
  %93 = add nsw i64 %indvars.iv1655, 16
  %arrayidx361 = getelementptr inbounds double* %srcGrid, i64 %93
  store double %mul306, double* %arrayidx361, align 8, !tbaa !3
  %94 = add nsw i64 %indvars.iv1655, 17
  %arrayidx375 = getelementptr inbounds double* %srcGrid, i64 %94
  store double %mul320, double* %arrayidx375, align 8, !tbaa !3
  %95 = add nsw i64 %indvars.iv1655, 18
  %arrayidx389 = getelementptr inbounds double* %srcGrid, i64 %95
  store double %mul334, double* %arrayidx389, align 8, !tbaa !3
  %indvars.iv.next1656 = add i64 %indvars.iv1655, 20
  %96 = trunc i64 %indvars.iv.next1656 to i32
  %cmp = icmp slt i32 %96, 200000
  br i1 %cmp, label %for.body, label %for.body394

for.body394:                                      ; preds = %for.body, %for.body394
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body394 ], [ 25800000, %for.body ]
  %97 = add nsw i64 %indvars.iv, -200000
  %arrayidx397 = getelementptr inbounds double* %srcGrid, i64 %97
  %98 = load double* %arrayidx397, align 8, !tbaa !3
  %99 = add nsw i64 %indvars.iv, -199999
  %arrayidx400 = getelementptr inbounds double* %srcGrid, i64 %99
  %100 = load double* %arrayidx400, align 8, !tbaa !3
  %add401 = fadd double %98, %100
  %101 = add nsw i64 %indvars.iv, -199998
  %arrayidx404 = getelementptr inbounds double* %srcGrid, i64 %101
  %102 = load double* %arrayidx404, align 8, !tbaa !3
  %add405 = fadd double %add401, %102
  %103 = add nsw i64 %indvars.iv, -199997
  %arrayidx408 = getelementptr inbounds double* %srcGrid, i64 %103
  %104 = load double* %arrayidx408, align 8, !tbaa !3
  %add409 = fadd double %add405, %104
  %105 = add nsw i64 %indvars.iv, -199996
  %arrayidx412 = getelementptr inbounds double* %srcGrid, i64 %105
  %106 = load double* %arrayidx412, align 8, !tbaa !3
  %add413 = fadd double %add409, %106
  %107 = add nsw i64 %indvars.iv, -199995
  %arrayidx416 = getelementptr inbounds double* %srcGrid, i64 %107
  %108 = load double* %arrayidx416, align 8, !tbaa !3
  %add417 = fadd double %add413, %108
  %109 = add nsw i64 %indvars.iv, -199994
  %arrayidx420 = getelementptr inbounds double* %srcGrid, i64 %109
  %110 = load double* %arrayidx420, align 8, !tbaa !3
  %add421 = fadd double %add417, %110
  %111 = add nsw i64 %indvars.iv, -199993
  %arrayidx424 = getelementptr inbounds double* %srcGrid, i64 %111
  %112 = load double* %arrayidx424, align 8, !tbaa !3
  %add425 = fadd double %add421, %112
  %113 = add nsw i64 %indvars.iv, -199992
  %arrayidx428 = getelementptr inbounds double* %srcGrid, i64 %113
  %114 = load double* %arrayidx428, align 8, !tbaa !3
  %add429 = fadd double %add425, %114
  %115 = add nsw i64 %indvars.iv, -199991
  %arrayidx432 = getelementptr inbounds double* %srcGrid, i64 %115
  %116 = load double* %arrayidx432, align 8, !tbaa !3
  %add433 = fadd double %add429, %116
  %117 = add nsw i64 %indvars.iv, -199990
  %arrayidx436 = getelementptr inbounds double* %srcGrid, i64 %117
  %118 = load double* %arrayidx436, align 8, !tbaa !3
  %add437 = fadd double %add433, %118
  %119 = add nsw i64 %indvars.iv, -199989
  %arrayidx440 = getelementptr inbounds double* %srcGrid, i64 %119
  %120 = load double* %arrayidx440, align 8, !tbaa !3
  %add441 = fadd double %add437, %120
  %121 = add nsw i64 %indvars.iv, -199988
  %arrayidx444 = getelementptr inbounds double* %srcGrid, i64 %121
  %122 = load double* %arrayidx444, align 8, !tbaa !3
  %add445 = fadd double %add441, %122
  %123 = add nsw i64 %indvars.iv, -199987
  %arrayidx448 = getelementptr inbounds double* %srcGrid, i64 %123
  %124 = load double* %arrayidx448, align 8, !tbaa !3
  %add449 = fadd double %add445, %124
  %125 = add nsw i64 %indvars.iv, -199986
  %arrayidx452 = getelementptr inbounds double* %srcGrid, i64 %125
  %126 = load double* %arrayidx452, align 8, !tbaa !3
  %add453 = fadd double %add449, %126
  %127 = add nsw i64 %indvars.iv, -199985
  %arrayidx456 = getelementptr inbounds double* %srcGrid, i64 %127
  %128 = load double* %arrayidx456, align 8, !tbaa !3
  %add457 = fadd double %add453, %128
  %129 = add nsw i64 %indvars.iv, -199984
  %arrayidx460 = getelementptr inbounds double* %srcGrid, i64 %129
  %130 = load double* %arrayidx460, align 8, !tbaa !3
  %add461 = fadd double %add457, %130
  %131 = add nsw i64 %indvars.iv, -199983
  %arrayidx464 = getelementptr inbounds double* %srcGrid, i64 %131
  %132 = load double* %arrayidx464, align 8, !tbaa !3
  %add465 = fadd double %add461, %132
  %133 = add nsw i64 %indvars.iv, -199982
  %arrayidx468 = getelementptr inbounds double* %srcGrid, i64 %133
  %134 = load double* %arrayidx468, align 8, !tbaa !3
  %add469 = fadd double %add465, %134
  %sub476 = fsub double %104, %106
  %add480 = fadd double %sub476, %112
  %sub484 = fsub double %add480, %114
  %add488 = fadd double %sub484, %116
  %sub492 = fsub double %add488, %118
  %add496 = fadd double %sub492, %128
  %add500 = fadd double %add496, %130
  %sub504 = fsub double %add500, %132
  %sub508 = fsub double %sub504, %134
  %sub515 = fsub double %100, %102
  %add519 = fadd double %sub515, %112
  %add523 = fadd double %add519, %114
  %sub527 = fsub double %add523, %116
  %sub531 = fsub double %sub527, %118
  %add535 = fadd double %sub531, %120
  %add539 = fadd double %add535, %122
  %sub543 = fsub double %add539, %124
  %sub547 = fsub double %sub543, %126
  %sub554 = fsub double %108, %110
  %add558 = fadd double %sub554, %120
  %sub562 = fsub double %add558, %122
  %add566 = fadd double %sub562, %124
  %sub570 = fsub double %add566, %126
  %add574 = fadd double %sub570, %128
  %sub578 = fsub double %add574, %130
  %add582 = fadd double %sub578, %132
  %sub586 = fsub double %add582, %134
  %div587 = fdiv double %sub508, %add469
  %div588 = fdiv double %sub547, %add469
  %div589 = fdiv double %sub586, %add469
  %135 = add nsw i64 %indvars.iv, -400000
  %arrayidx592 = getelementptr inbounds double* %srcGrid, i64 %135
  %136 = load double* %arrayidx592, align 8, !tbaa !3
  %137 = add nsw i64 %indvars.iv, -399999
  %arrayidx595 = getelementptr inbounds double* %srcGrid, i64 %137
  %138 = load double* %arrayidx595, align 8, !tbaa !3
  %add596 = fadd double %136, %138
  %139 = add nsw i64 %indvars.iv, -399998
  %arrayidx599 = getelementptr inbounds double* %srcGrid, i64 %139
  %140 = load double* %arrayidx599, align 8, !tbaa !3
  %add600 = fadd double %add596, %140
  %141 = add nsw i64 %indvars.iv, -399997
  %arrayidx603 = getelementptr inbounds double* %srcGrid, i64 %141
  %142 = load double* %arrayidx603, align 8, !tbaa !3
  %add604 = fadd double %add600, %142
  %143 = add nsw i64 %indvars.iv, -399996
  %arrayidx607 = getelementptr inbounds double* %srcGrid, i64 %143
  %144 = load double* %arrayidx607, align 8, !tbaa !3
  %add608 = fadd double %add604, %144
  %145 = add nsw i64 %indvars.iv, -399995
  %arrayidx611 = getelementptr inbounds double* %srcGrid, i64 %145
  %146 = load double* %arrayidx611, align 8, !tbaa !3
  %add612 = fadd double %add608, %146
  %147 = add nsw i64 %indvars.iv, -399994
  %arrayidx615 = getelementptr inbounds double* %srcGrid, i64 %147
  %148 = load double* %arrayidx615, align 8, !tbaa !3
  %add616 = fadd double %add612, %148
  %149 = add nsw i64 %indvars.iv, -399993
  %arrayidx619 = getelementptr inbounds double* %srcGrid, i64 %149
  %150 = load double* %arrayidx619, align 8, !tbaa !3
  %add620 = fadd double %add616, %150
  %151 = add nsw i64 %indvars.iv, -399992
  %arrayidx623 = getelementptr inbounds double* %srcGrid, i64 %151
  %152 = load double* %arrayidx623, align 8, !tbaa !3
  %add624 = fadd double %add620, %152
  %153 = add nsw i64 %indvars.iv, -399991
  %arrayidx627 = getelementptr inbounds double* %srcGrid, i64 %153
  %154 = load double* %arrayidx627, align 8, !tbaa !3
  %add628 = fadd double %add624, %154
  %155 = add nsw i64 %indvars.iv, -399990
  %arrayidx631 = getelementptr inbounds double* %srcGrid, i64 %155
  %156 = load double* %arrayidx631, align 8, !tbaa !3
  %add632 = fadd double %add628, %156
  %157 = add nsw i64 %indvars.iv, -399989
  %arrayidx635 = getelementptr inbounds double* %srcGrid, i64 %157
  %158 = load double* %arrayidx635, align 8, !tbaa !3
  %add636 = fadd double %add632, %158
  %159 = add nsw i64 %indvars.iv, -399988
  %arrayidx639 = getelementptr inbounds double* %srcGrid, i64 %159
  %160 = load double* %arrayidx639, align 8, !tbaa !3
  %add640 = fadd double %add636, %160
  %161 = add nsw i64 %indvars.iv, -399987
  %arrayidx643 = getelementptr inbounds double* %srcGrid, i64 %161
  %162 = load double* %arrayidx643, align 8, !tbaa !3
  %add644 = fadd double %add640, %162
  %163 = add nsw i64 %indvars.iv, -399986
  %arrayidx647 = getelementptr inbounds double* %srcGrid, i64 %163
  %164 = load double* %arrayidx647, align 8, !tbaa !3
  %add648 = fadd double %add644, %164
  %165 = add nsw i64 %indvars.iv, -399985
  %arrayidx651 = getelementptr inbounds double* %srcGrid, i64 %165
  %166 = load double* %arrayidx651, align 8, !tbaa !3
  %add652 = fadd double %add648, %166
  %167 = add nsw i64 %indvars.iv, -399984
  %arrayidx655 = getelementptr inbounds double* %srcGrid, i64 %167
  %168 = load double* %arrayidx655, align 8, !tbaa !3
  %add656 = fadd double %add652, %168
  %169 = add nsw i64 %indvars.iv, -399983
  %arrayidx659 = getelementptr inbounds double* %srcGrid, i64 %169
  %170 = load double* %arrayidx659, align 8, !tbaa !3
  %add660 = fadd double %add656, %170
  %171 = add nsw i64 %indvars.iv, -399982
  %arrayidx663 = getelementptr inbounds double* %srcGrid, i64 %171
  %172 = load double* %arrayidx663, align 8, !tbaa !3
  %add664 = fadd double %add660, %172
  %sub671 = fsub double %142, %144
  %add675 = fadd double %sub671, %150
  %sub679 = fsub double %add675, %152
  %add683 = fadd double %sub679, %154
  %sub687 = fsub double %add683, %156
  %add691 = fadd double %sub687, %166
  %add695 = fadd double %add691, %168
  %sub699 = fsub double %add695, %170
  %sub703 = fsub double %sub699, %172
  %sub710 = fsub double %138, %140
  %add714 = fadd double %sub710, %150
  %add718 = fadd double %add714, %152
  %sub722 = fsub double %add718, %154
  %sub726 = fsub double %sub722, %156
  %add730 = fadd double %sub726, %158
  %add734 = fadd double %add730, %160
  %sub738 = fsub double %add734, %162
  %sub742 = fsub double %sub738, %164
  %sub749 = fsub double %146, %148
  %add753 = fadd double %sub749, %158
  %sub757 = fsub double %add753, %160
  %add761 = fadd double %sub757, %162
  %sub765 = fsub double %add761, %164
  %add769 = fadd double %sub765, %166
  %sub773 = fsub double %add769, %168
  %add777 = fadd double %sub773, %170
  %sub781 = fsub double %add777, %172
  %div782 = fdiv double %sub703, %add664
  %div783 = fdiv double %sub742, %add664
  %div784 = fdiv double %sub781, %add664
  %mul785 = fmul double %div587, 2.000000e+00
  %sub786 = fsub double %mul785, %div782
  %mul787 = fmul double %div588, 2.000000e+00
  %sub788 = fsub double %mul787, %div783
  %mul789 = fmul double %div589, 2.000000e+00
  %sub790 = fsub double %mul789, %div784
  %mul791 = fmul double %sub786, %sub786
  %mul792 = fmul double %sub788, %sub788
  %add793 = fadd double %mul791, %mul792
  %mul794 = fmul double %sub790, %sub790
  %add795 = fadd double %add793, %mul794
  %mul796 = fmul double %add795, 1.500000e+00
  %sub798 = fsub double 1.000000e+00, %mul796
  %mul799 = fmul double %sub798, 0x3FD5555555555555
  %arrayidx802 = getelementptr inbounds double* %srcGrid, i64 %indvars.iv
  store double %mul799, double* %arrayidx802, align 8, !tbaa !3
  %mul804 = fmul double %sub788, 4.500000e+00
  %add805 = fadd double %mul804, 3.000000e+00
  %mul806 = fmul double %sub788, %add805
  %add807 = fadd double %mul806, 1.000000e+00
  %sub808 = fsub double %add807, %mul796
  %mul809 = fmul double %sub808, 0x3FAC71C71C71C71C
  %173 = or i64 %indvars.iv, 1
  %arrayidx812 = getelementptr inbounds double* %srcGrid, i64 %173
  store double %mul809, double* %arrayidx812, align 8, !tbaa !3
  %sub815 = fadd double %mul804, -3.000000e+00
  %mul816 = fmul double %sub788, %sub815
  %add817 = fadd double %mul816, 1.000000e+00
  %sub818 = fsub double %add817, %mul796
  %mul819 = fmul double %sub818, 0x3FAC71C71C71C71C
  %174 = or i64 %indvars.iv, 2
  %arrayidx822 = getelementptr inbounds double* %srcGrid, i64 %174
  store double %mul819, double* %arrayidx822, align 8, !tbaa !3
  %mul824 = fmul double %sub786, 4.500000e+00
  %add825 = fadd double %mul824, 3.000000e+00
  %mul826 = fmul double %sub786, %add825
  %add827 = fadd double %mul826, 1.000000e+00
  %sub828 = fsub double %add827, %mul796
  %mul829 = fmul double %sub828, 0x3FAC71C71C71C71C
  %175 = or i64 %indvars.iv, 3
  %arrayidx832 = getelementptr inbounds double* %srcGrid, i64 %175
  store double %mul829, double* %arrayidx832, align 8, !tbaa !3
  %sub835 = fadd double %mul824, -3.000000e+00
  %mul836 = fmul double %sub786, %sub835
  %add837 = fadd double %mul836, 1.000000e+00
  %sub838 = fsub double %add837, %mul796
  %mul839 = fmul double %sub838, 0x3FAC71C71C71C71C
  %176 = add nsw i64 %indvars.iv, 4
  %arrayidx842 = getelementptr inbounds double* %srcGrid, i64 %176
  store double %mul839, double* %arrayidx842, align 8, !tbaa !3
  %mul844 = fmul double %sub790, 4.500000e+00
  %add845 = fadd double %mul844, 3.000000e+00
  %mul846 = fmul double %sub790, %add845
  %add847 = fadd double %mul846, 1.000000e+00
  %sub848 = fsub double %add847, %mul796
  %mul849 = fmul double %sub848, 0x3FAC71C71C71C71C
  %177 = add nsw i64 %indvars.iv, 5
  %arrayidx852 = getelementptr inbounds double* %srcGrid, i64 %177
  store double %mul849, double* %arrayidx852, align 8, !tbaa !3
  %sub855 = fadd double %mul844, -3.000000e+00
  %mul856 = fmul double %sub790, %sub855
  %add857 = fadd double %mul856, 1.000000e+00
  %sub858 = fsub double %add857, %mul796
  %mul859 = fmul double %sub858, 0x3FAC71C71C71C71C
  %178 = add nsw i64 %indvars.iv, 6
  %arrayidx862 = getelementptr inbounds double* %srcGrid, i64 %178
  store double %mul859, double* %arrayidx862, align 8, !tbaa !3
  %add864 = fadd double %sub786, %sub788
  %mul866 = fmul double %add864, 4.500000e+00
  %add867 = fadd double %mul866, 3.000000e+00
  %mul868 = fmul double %add864, %add867
  %add869 = fadd double %mul868, 1.000000e+00
  %sub870 = fsub double %add869, %mul796
  %mul871 = fmul double %sub870, 0x3F9C71C71C71C71C
  %179 = add nsw i64 %indvars.iv, 7
  %arrayidx874 = getelementptr inbounds double* %srcGrid, i64 %179
  store double %mul871, double* %arrayidx874, align 8, !tbaa !3
  %sub876 = fsub double -0.000000e+00, %sub786
  %add877 = fsub double %sub788, %sub786
  %mul880 = fmul double %add877, 4.500000e+00
  %add881 = fadd double %mul880, 3.000000e+00
  %mul882 = fmul double %add877, %add881
  %add883 = fadd double %mul882, 1.000000e+00
  %sub884 = fsub double %add883, %mul796
  %mul885 = fmul double %sub884, 0x3F9C71C71C71C71C
  %180 = add nsw i64 %indvars.iv, 8
  %arrayidx888 = getelementptr inbounds double* %srcGrid, i64 %180
  store double %mul885, double* %arrayidx888, align 8, !tbaa !3
  %sub890 = fsub double %sub786, %sub788
  %mul892 = fmul double %sub890, 4.500000e+00
  %add893 = fadd double %mul892, 3.000000e+00
  %mul894 = fmul double %sub890, %add893
  %add895 = fadd double %mul894, 1.000000e+00
  %sub896 = fsub double %add895, %mul796
  %mul897 = fmul double %sub896, 0x3F9C71C71C71C71C
  %181 = add nsw i64 %indvars.iv, 9
  %arrayidx900 = getelementptr inbounds double* %srcGrid, i64 %181
  store double %mul897, double* %arrayidx900, align 8, !tbaa !3
  %sub903 = fsub double %sub876, %sub788
  %mul906 = fmul double %sub903, 4.500000e+00
  %add907 = fadd double %mul906, 3.000000e+00
  %mul908 = fmul double %sub903, %add907
  %add909 = fadd double %mul908, 1.000000e+00
  %sub910 = fsub double %add909, %mul796
  %mul911 = fmul double %sub910, 0x3F9C71C71C71C71C
  %182 = add nsw i64 %indvars.iv, 10
  %arrayidx914 = getelementptr inbounds double* %srcGrid, i64 %182
  store double %mul911, double* %arrayidx914, align 8, !tbaa !3
  %add916 = fadd double %sub788, %sub790
  %mul918 = fmul double %add916, 4.500000e+00
  %add919 = fadd double %mul918, 3.000000e+00
  %mul920 = fmul double %add916, %add919
  %add921 = fadd double %mul920, 1.000000e+00
  %sub922 = fsub double %add921, %mul796
  %mul923 = fmul double %sub922, 0x3F9C71C71C71C71C
  %183 = add nsw i64 %indvars.iv, 11
  %arrayidx926 = getelementptr inbounds double* %srcGrid, i64 %183
  store double %mul923, double* %arrayidx926, align 8, !tbaa !3
  %sub928 = fsub double %sub788, %sub790
  %mul930 = fmul double %sub928, 4.500000e+00
  %add931 = fadd double %mul930, 3.000000e+00
  %mul932 = fmul double %sub928, %add931
  %add933 = fadd double %mul932, 1.000000e+00
  %sub934 = fsub double %add933, %mul796
  %mul935 = fmul double %sub934, 0x3F9C71C71C71C71C
  %184 = add nsw i64 %indvars.iv, 12
  %arrayidx938 = getelementptr inbounds double* %srcGrid, i64 %184
  store double %mul935, double* %arrayidx938, align 8, !tbaa !3
  %sub940 = fsub double -0.000000e+00, %sub788
  %add941 = fsub double %sub790, %sub788
  %mul944 = fmul double %add941, 4.500000e+00
  %add945 = fadd double %mul944, 3.000000e+00
  %mul946 = fmul double %add941, %add945
  %add947 = fadd double %mul946, 1.000000e+00
  %sub948 = fsub double %add947, %mul796
  %mul949 = fmul double %sub948, 0x3F9C71C71C71C71C
  %185 = add nsw i64 %indvars.iv, 13
  %arrayidx952 = getelementptr inbounds double* %srcGrid, i64 %185
  store double %mul949, double* %arrayidx952, align 8, !tbaa !3
  %sub955 = fsub double %sub940, %sub790
  %mul958 = fmul double %sub955, 4.500000e+00
  %add959 = fadd double %mul958, 3.000000e+00
  %mul960 = fmul double %sub955, %add959
  %add961 = fadd double %mul960, 1.000000e+00
  %sub962 = fsub double %add961, %mul796
  %mul963 = fmul double %sub962, 0x3F9C71C71C71C71C
  %186 = add nsw i64 %indvars.iv, 14
  %arrayidx966 = getelementptr inbounds double* %srcGrid, i64 %186
  store double %mul963, double* %arrayidx966, align 8, !tbaa !3
  %add968 = fadd double %sub786, %sub790
  %mul970 = fmul double %add968, 4.500000e+00
  %add971 = fadd double %mul970, 3.000000e+00
  %mul972 = fmul double %add968, %add971
  %add973 = fadd double %mul972, 1.000000e+00
  %sub974 = fsub double %add973, %mul796
  %mul975 = fmul double %sub974, 0x3F9C71C71C71C71C
  %187 = add nsw i64 %indvars.iv, 15
  %arrayidx978 = getelementptr inbounds double* %srcGrid, i64 %187
  store double %mul975, double* %arrayidx978, align 8, !tbaa !3
  %sub980 = fsub double %sub786, %sub790
  %mul982 = fmul double %sub980, 4.500000e+00
  %add983 = fadd double %mul982, 3.000000e+00
  %mul984 = fmul double %sub980, %add983
  %add985 = fadd double %mul984, 1.000000e+00
  %sub986 = fsub double %add985, %mul796
  %mul987 = fmul double %sub986, 0x3F9C71C71C71C71C
  %188 = add nsw i64 %indvars.iv, 16
  %arrayidx990 = getelementptr inbounds double* %srcGrid, i64 %188
  store double %mul987, double* %arrayidx990, align 8, !tbaa !3
  %add993 = fsub double %sub790, %sub786
  %mul996 = fmul double %add993, 4.500000e+00
  %add997 = fadd double %mul996, 3.000000e+00
  %mul998 = fmul double %add993, %add997
  %add999 = fadd double %mul998, 1.000000e+00
  %sub1000 = fsub double %add999, %mul796
  %mul1001 = fmul double %sub1000, 0x3F9C71C71C71C71C
  %189 = add nsw i64 %indvars.iv, 17
  %arrayidx1004 = getelementptr inbounds double* %srcGrid, i64 %189
  store double %mul1001, double* %arrayidx1004, align 8, !tbaa !3
  %sub1007 = fsub double %sub876, %sub790
  %mul1010 = fmul double %sub1007, 4.500000e+00
  %add1011 = fadd double %mul1010, 3.000000e+00
  %mul1012 = fmul double %sub1007, %add1011
  %add1013 = fadd double %mul1012, 1.000000e+00
  %sub1014 = fsub double %add1013, %mul796
  %mul1015 = fmul double %sub1014, 0x3F9C71C71C71C71C
  %190 = add nsw i64 %indvars.iv, 18
  %arrayidx1018 = getelementptr inbounds double* %srcGrid, i64 %190
  store double %mul1015, double* %arrayidx1018, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 20
  %191 = trunc i64 %indvars.iv.next to i32
  %cmp392 = icmp slt i32 %191, 26000000
  br i1 %cmp392, label %for.body394, label %for.end1021

for.end1021:                                      ; preds = %for.body394
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @LBM_showGridStatistics(double* nocapture %grid) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %mass.0356 = phi double [ 0.000000e+00, %entry ], [ %add77, %for.inc ]
  %nObstacleCells.0355 = phi i32 [ 0, %entry ], [ %nObstacleCells.1, %for.inc ]
  %maxRho.0354 = phi double [ -1.000000e+30, %entry ], [ %maxRho.1, %for.inc ]
  %minRho.0353 = phi double [ 1.000000e+30, %entry ], [ %minRho.1, %for.inc ]
  %nAccelCells.0352 = phi i32 [ 0, %entry ], [ %nAccelCells.2, %for.inc ]
  %maxU2.0351 = phi double [ -1.000000e+30, %entry ], [ %maxU2.1, %for.inc ]
  %minU2.0350 = phi double [ 1.000000e+30, %entry ], [ %minU2.2, %for.inc ]
  %nFluidCells.0349 = phi i32 [ 0, %entry ], [ %nFluidCells.2, %for.inc ]
  %arrayidx = getelementptr inbounds double* %grid, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %1 = or i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds double* %grid, i64 %1
  %2 = load double* %arrayidx3, align 8, !tbaa !3
  %add4 = fadd double %0, %2
  %3 = or i64 %indvars.iv, 2
  %arrayidx7 = getelementptr inbounds double* %grid, i64 %3
  %4 = load double* %arrayidx7, align 8, !tbaa !3
  %add8 = fadd double %add4, %4
  %5 = or i64 %indvars.iv, 3
  %arrayidx11 = getelementptr inbounds double* %grid, i64 %5
  %6 = load double* %arrayidx11, align 8, !tbaa !3
  %add12 = fadd double %add8, %6
  %7 = add nsw i64 %indvars.iv, 4
  %arrayidx15 = getelementptr inbounds double* %grid, i64 %7
  %8 = load double* %arrayidx15, align 8, !tbaa !3
  %add16 = fadd double %add12, %8
  %9 = add nsw i64 %indvars.iv, 5
  %arrayidx19 = getelementptr inbounds double* %grid, i64 %9
  %10 = load double* %arrayidx19, align 8, !tbaa !3
  %add20 = fadd double %add16, %10
  %11 = add nsw i64 %indvars.iv, 6
  %arrayidx23 = getelementptr inbounds double* %grid, i64 %11
  %12 = load double* %arrayidx23, align 8, !tbaa !3
  %add24 = fadd double %add20, %12
  %13 = add nsw i64 %indvars.iv, 7
  %arrayidx27 = getelementptr inbounds double* %grid, i64 %13
  %14 = load double* %arrayidx27, align 8, !tbaa !3
  %add28 = fadd double %add24, %14
  %15 = add nsw i64 %indvars.iv, 8
  %arrayidx31 = getelementptr inbounds double* %grid, i64 %15
  %16 = load double* %arrayidx31, align 8, !tbaa !3
  %add32 = fadd double %add28, %16
  %17 = add nsw i64 %indvars.iv, 9
  %arrayidx35 = getelementptr inbounds double* %grid, i64 %17
  %18 = load double* %arrayidx35, align 8, !tbaa !3
  %add36 = fadd double %add32, %18
  %19 = add nsw i64 %indvars.iv, 10
  %arrayidx39 = getelementptr inbounds double* %grid, i64 %19
  %20 = load double* %arrayidx39, align 8, !tbaa !3
  %add40 = fadd double %add36, %20
  %21 = add nsw i64 %indvars.iv, 11
  %arrayidx43 = getelementptr inbounds double* %grid, i64 %21
  %22 = load double* %arrayidx43, align 8, !tbaa !3
  %add44 = fadd double %add40, %22
  %23 = add nsw i64 %indvars.iv, 12
  %arrayidx47 = getelementptr inbounds double* %grid, i64 %23
  %24 = load double* %arrayidx47, align 8, !tbaa !3
  %add48 = fadd double %add44, %24
  %25 = add nsw i64 %indvars.iv, 13
  %arrayidx51 = getelementptr inbounds double* %grid, i64 %25
  %26 = load double* %arrayidx51, align 8, !tbaa !3
  %add52 = fadd double %add48, %26
  %27 = add nsw i64 %indvars.iv, 14
  %arrayidx55 = getelementptr inbounds double* %grid, i64 %27
  %28 = load double* %arrayidx55, align 8, !tbaa !3
  %add56 = fadd double %add52, %28
  %29 = add nsw i64 %indvars.iv, 15
  %arrayidx59 = getelementptr inbounds double* %grid, i64 %29
  %30 = load double* %arrayidx59, align 8, !tbaa !3
  %add60 = fadd double %add56, %30
  %31 = add nsw i64 %indvars.iv, 16
  %arrayidx63 = getelementptr inbounds double* %grid, i64 %31
  %32 = load double* %arrayidx63, align 8, !tbaa !3
  %add64 = fadd double %add60, %32
  %33 = add nsw i64 %indvars.iv, 17
  %arrayidx67 = getelementptr inbounds double* %grid, i64 %33
  %34 = load double* %arrayidx67, align 8, !tbaa !3
  %add68 = fadd double %add64, %34
  %35 = add nsw i64 %indvars.iv, 18
  %arrayidx71 = getelementptr inbounds double* %grid, i64 %35
  %36 = load double* %arrayidx71, align 8, !tbaa !3
  %add72 = fadd double %add68, %36
  %cmp73 = fcmp olt double %add72, %minRho.0353
  %minRho.1 = select i1 %cmp73, double %add72, double %minRho.0353
  %cmp74 = fcmp ogt double %add72, %maxRho.0354
  %maxRho.1 = select i1 %cmp74, double %add72, double %maxRho.0354
  %add77 = fadd double %mass.0356, %add72
  %37 = add nsw i64 %indvars.iv, 19
  %arrayidx80 = getelementptr inbounds double* %grid, i64 %37
  %38 = bitcast double* %arrayidx80 to i32*
  %39 = load i32* %38, align 4, !tbaa !4
  %and = and i32 %39, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then81

if.then81:                                        ; preds = %for.body
  %inc = add nsw i32 %nObstacleCells.0355, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and85 = lshr i32 %39, 1
  %and85.lobit = and i32 %and85, 1
  %40 = xor i32 %and85.lobit, 1
  %nFluidCells.1 = add nsw i32 %40, %nFluidCells.0349
  %nAccelCells.1 = add nsw i32 %and85.lobit, %nAccelCells.0352
  %sub = fsub double %6, %8
  %add101 = fadd double %sub, %14
  %sub105 = fsub double %add101, %16
  %add109 = fadd double %sub105, %18
  %sub113 = fsub double %add109, %20
  %add117 = fadd double %sub113, %30
  %add121 = fadd double %add117, %32
  %sub125 = fsub double %add121, %34
  %sub129 = fsub double %sub125, %36
  %sub136 = fsub double %2, %4
  %add140 = fadd double %sub136, %14
  %add144 = fadd double %add140, %16
  %sub148 = fsub double %add144, %18
  %sub152 = fsub double %sub148, %20
  %add156 = fadd double %sub152, %22
  %add160 = fadd double %add156, %24
  %sub164 = fsub double %add160, %26
  %sub168 = fsub double %sub164, %28
  %sub175 = fsub double %10, %12
  %add179 = fadd double %sub175, %22
  %sub183 = fsub double %add179, %24
  %add187 = fadd double %sub183, %26
  %sub191 = fsub double %add187, %28
  %add195 = fadd double %sub191, %30
  %sub199 = fsub double %add195, %32
  %add203 = fadd double %sub199, %34
  %sub207 = fsub double %add203, %36
  %mul = fmul double %sub129, %sub129
  %mul208 = fmul double %sub168, %sub168
  %add209 = fadd double %mul208, %mul
  %mul210 = fmul double %sub207, %sub207
  %add211 = fadd double %mul210, %add209
  %mul212 = fmul double %add72, %add72
  %div = fdiv double %add211, %mul212
  %cmp213 = fcmp olt double %div, %minU2.0350
  %minU2.1 = select i1 %cmp213, double %div, double %minU2.0350
  %cmp216 = fcmp ogt double %div, %maxU2.0351
  br i1 %cmp216, label %if.then217, label %for.inc

if.then217:                                       ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.then217, %if.else
  %nFluidCells.2 = phi i32 [ %nFluidCells.0349, %if.then81 ], [ %nFluidCells.1, %if.then217 ], [ %nFluidCells.1, %if.else ]
  %minU2.2 = phi double [ %minU2.0350, %if.then81 ], [ %minU2.1, %if.then217 ], [ %minU2.1, %if.else ]
  %maxU2.1 = phi double [ %maxU2.0351, %if.then81 ], [ %div, %if.then217 ], [ %maxU2.0351, %if.else ]
  %nAccelCells.2 = phi i32 [ %nAccelCells.0352, %if.then81 ], [ %nAccelCells.1, %if.then217 ], [ %nAccelCells.1, %if.else ]
  %nObstacleCells.1 = phi i32 [ %inc, %if.then81 ], [ %nObstacleCells.0355, %if.then217 ], [ %nObstacleCells.0355, %if.else ]
  %indvars.iv.next = add i64 %indvars.iv, 20
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %41, 26000000
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %call = tail call double @sqrt(double %minU2.2) #4
  %call221 = tail call double @sqrt(double %maxU2.1) #4
  %call222 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([138 x i8]* @.str2, i64 0, i64 0), i32 %nObstacleCells.1, i32 %nAccelCells.2, i32 %nFluidCells.2, double %minRho.1, double %maxRho.1, double %add77, double %call, double %call221) #4
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @LBM_storeVelocityField(double* nocapture %grid, i8* nocapture %filename, i32 %binary) #0 {
entry:
  %ux = alloca float, align 4
  %uy = alloca float, align 4
  %uz = alloca float, align 4
  %tobool = icmp ne i32 %binary, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* %cond) #4
  %0 = bitcast float* %ux to i8*
  %1 = bitcast float* %uy to i8*
  %2 = bitcast float* %uz to i8*
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc501, %entry
  %indvars.iv743 = phi i64 [ 0, %entry ], [ %indvars.iv.next744, %for.inc501 ]
  %3 = mul i64 %indvars.iv743, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc498, %for.cond1.preheader
  %indvars.iv737 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next738, %for.inc498 ]
  %4 = mul nsw i64 %indvars.iv737, 100
  %5 = add i64 %4, %3
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %6 = add i64 %5, %indvars.iv
  %7 = mul nsw i64 %6, 20
  %arrayidx = getelementptr inbounds double* %grid, i64 %7
  %8 = load double* %arrayidx, align 8, !tbaa !3
  %9 = or i64 %7, 1
  %arrayidx20 = getelementptr inbounds double* %grid, i64 %9
  %10 = load double* %arrayidx20, align 8, !tbaa !3
  %add21 = fadd double %8, %10
  %11 = or i64 %7, 2
  %arrayidx30 = getelementptr inbounds double* %grid, i64 %11
  %12 = load double* %arrayidx30, align 8, !tbaa !3
  %add31 = fadd double %add21, %12
  %13 = or i64 %7, 3
  %arrayidx40 = getelementptr inbounds double* %grid, i64 %13
  %14 = load double* %arrayidx40, align 8, !tbaa !3
  %add41 = fadd double %add31, %14
  %15 = add nsw i64 %7, 4
  %arrayidx50 = getelementptr inbounds double* %grid, i64 %15
  %16 = load double* %arrayidx50, align 8, !tbaa !3
  %add51 = fadd double %add41, %16
  %17 = add nsw i64 %7, 5
  %arrayidx60 = getelementptr inbounds double* %grid, i64 %17
  %18 = load double* %arrayidx60, align 8, !tbaa !3
  %add61 = fadd double %add51, %18
  %19 = add nsw i64 %7, 6
  %arrayidx70 = getelementptr inbounds double* %grid, i64 %19
  %20 = load double* %arrayidx70, align 8, !tbaa !3
  %add71 = fadd double %add61, %20
  %21 = add nsw i64 %7, 7
  %arrayidx80 = getelementptr inbounds double* %grid, i64 %21
  %22 = load double* %arrayidx80, align 8, !tbaa !3
  %add81 = fadd double %add71, %22
  %23 = add nsw i64 %7, 8
  %arrayidx90 = getelementptr inbounds double* %grid, i64 %23
  %24 = load double* %arrayidx90, align 8, !tbaa !3
  %add91 = fadd double %add81, %24
  %25 = add nsw i64 %7, 9
  %arrayidx100 = getelementptr inbounds double* %grid, i64 %25
  %26 = load double* %arrayidx100, align 8, !tbaa !3
  %add101 = fadd double %add91, %26
  %27 = add nsw i64 %7, 10
  %arrayidx110 = getelementptr inbounds double* %grid, i64 %27
  %28 = load double* %arrayidx110, align 8, !tbaa !3
  %add111 = fadd double %add101, %28
  %29 = add nsw i64 %7, 11
  %arrayidx120 = getelementptr inbounds double* %grid, i64 %29
  %30 = load double* %arrayidx120, align 8, !tbaa !3
  %add121 = fadd double %add111, %30
  %31 = add nsw i64 %7, 12
  %arrayidx130 = getelementptr inbounds double* %grid, i64 %31
  %32 = load double* %arrayidx130, align 8, !tbaa !3
  %add131 = fadd double %add121, %32
  %33 = add nsw i64 %7, 13
  %arrayidx140 = getelementptr inbounds double* %grid, i64 %33
  %34 = load double* %arrayidx140, align 8, !tbaa !3
  %add141 = fadd double %add131, %34
  %35 = add nsw i64 %7, 14
  %arrayidx150 = getelementptr inbounds double* %grid, i64 %35
  %36 = load double* %arrayidx150, align 8, !tbaa !3
  %add151 = fadd double %add141, %36
  %37 = add nsw i64 %7, 15
  %arrayidx160 = getelementptr inbounds double* %grid, i64 %37
  %38 = load double* %arrayidx160, align 8, !tbaa !3
  %add161 = fadd double %add151, %38
  %39 = add nsw i64 %7, 16
  %arrayidx170 = getelementptr inbounds double* %grid, i64 %39
  %40 = load double* %arrayidx170, align 8, !tbaa !3
  %add171 = fadd double %add161, %40
  %41 = add nsw i64 %7, 17
  %arrayidx180 = getelementptr inbounds double* %grid, i64 %41
  %42 = load double* %arrayidx180, align 8, !tbaa !3
  %add181 = fadd double %add171, %42
  %43 = add nsw i64 %7, 18
  %arrayidx190 = getelementptr inbounds double* %grid, i64 %43
  %44 = load double* %arrayidx190, align 8, !tbaa !3
  %add191 = fadd double %add181, %44
  %conv = fptrunc double %add191 to float
  %sub = fsub double %14, %16
  %add219 = fadd double %sub, %22
  %sub229 = fsub double %add219, %24
  %add239 = fadd double %sub229, %26
  %sub249 = fsub double %add239, %28
  %add259 = fadd double %sub249, %38
  %add269 = fadd double %add259, %40
  %sub279 = fsub double %add269, %42
  %sub289 = fsub double %sub279, %44
  %conv290 = fptrunc double %sub289 to float
  %sub309 = fsub double %10, %12
  %add319 = fadd double %sub309, %22
  %add329 = fadd double %add319, %24
  %sub339 = fsub double %add329, %26
  %sub349 = fsub double %sub339, %28
  %add359 = fadd double %sub349, %30
  %add369 = fadd double %add359, %32
  %sub379 = fsub double %add369, %34
  %sub389 = fsub double %sub379, %36
  %conv390 = fptrunc double %sub389 to float
  %sub409 = fsub double %18, %20
  %add419 = fadd double %sub409, %30
  %sub429 = fsub double %add419, %32
  %add439 = fadd double %sub429, %34
  %sub449 = fsub double %add439, %36
  %add459 = fadd double %sub449, %38
  %sub469 = fsub double %add459, %40
  %add479 = fadd double %sub469, %42
  %sub489 = fsub double %add479, %44
  %conv490 = fptrunc double %sub489 to float
  %div = fdiv float %conv290, %conv
  store float %div, float* %ux, align 4, !tbaa !5
  %div491 = fdiv float %conv390, %conv
  store float %div491, float* %uy, align 4, !tbaa !5
  %div492 = fdiv float %conv490, %conv
  store float %div492, float* %uz, align 4, !tbaa !5
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  %call8.i = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %call) #4
  %call8.i712 = call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %call) #4
  %call8.i713 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %call) #4
  br label %for.inc

if.else:                                          ; preds = %for.body6
  %conv494 = fpext float %div to double
  %conv495 = fpext float %div491 to double
  %conv496 = fpext float %div492 to double
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), double %conv494, double %conv495, double %conv496) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100
  br i1 %exitcond, label %for.inc498, label %for.body6

for.inc498:                                       ; preds = %for.inc
  %indvars.iv.next738 = add i64 %indvars.iv737, 1
  %lftr.wideiv741 = trunc i64 %indvars.iv.next738 to i32
  %exitcond742 = icmp eq i32 %lftr.wideiv741, 100
  br i1 %exitcond742, label %for.inc501, label %for.cond4.preheader

for.inc501:                                       ; preds = %for.inc498
  %indvars.iv.next744 = add i64 %indvars.iv743, 1
  %lftr.wideiv746 = trunc i64 %indvars.iv.next744 to i32
  %exitcond747 = icmp eq i32 %lftr.wideiv746, 130
  br i1 %exitcond747, label %for.end503, label %for.cond1.preheader

for.end503:                                       ; preds = %for.inc501
  %call504 = call i32 @fclose(%struct._IO_FILE* %call) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @LBM_compareVelocityField(double* nocapture %grid, i8* nocapture %filename, i32 %binary) #0 {
entry:
  %fileUx = alloca float, align 4
  %fileUy = alloca float, align 4
  %fileUz = alloca float, align 4
  %tobool = icmp ne i32 %binary, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* %cond) #4
  %0 = bitcast float* %fileUx to i8*
  %1 = bitcast float* %fileUy to i8*
  %2 = bitcast float* %fileUz to i8*
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc512, %entry
  %indvars.iv768 = phi i64 [ 0, %entry ], [ %indvars.iv.next769, %for.inc512 ]
  %maxDiff2.0741 = phi float [ 0xC6293E5940000000, %entry ], [ %maxDiff2.3, %for.inc512 ]
  %3 = mul i64 %indvars.iv768, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc509, %for.cond1.preheader
  %indvars.iv762 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next763, %for.inc509 ]
  %maxDiff2.1739 = phi float [ %maxDiff2.0741, %for.cond1.preheader ], [ %maxDiff2.3, %for.inc509 ]
  %4 = mul nsw i64 %indvars.iv762, 100
  %5 = add i64 %4, %3
  br label %for.body6

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end ]
  %maxDiff2.2736 = phi float [ %maxDiff2.1739, %for.cond4.preheader ], [ %maxDiff2.3, %if.end ]
  %6 = add i64 %5, %indvars.iv
  %7 = mul nsw i64 %6, 20
  %arrayidx = getelementptr inbounds double* %grid, i64 %7
  %8 = load double* %arrayidx, align 8, !tbaa !3
  %9 = or i64 %7, 1
  %arrayidx20 = getelementptr inbounds double* %grid, i64 %9
  %10 = load double* %arrayidx20, align 8, !tbaa !3
  %add21 = fadd double %8, %10
  %11 = or i64 %7, 2
  %arrayidx30 = getelementptr inbounds double* %grid, i64 %11
  %12 = load double* %arrayidx30, align 8, !tbaa !3
  %add31 = fadd double %add21, %12
  %13 = or i64 %7, 3
  %arrayidx40 = getelementptr inbounds double* %grid, i64 %13
  %14 = load double* %arrayidx40, align 8, !tbaa !3
  %add41 = fadd double %add31, %14
  %15 = add nsw i64 %7, 4
  %arrayidx50 = getelementptr inbounds double* %grid, i64 %15
  %16 = load double* %arrayidx50, align 8, !tbaa !3
  %add51 = fadd double %add41, %16
  %17 = add nsw i64 %7, 5
  %arrayidx60 = getelementptr inbounds double* %grid, i64 %17
  %18 = load double* %arrayidx60, align 8, !tbaa !3
  %add61 = fadd double %add51, %18
  %19 = add nsw i64 %7, 6
  %arrayidx70 = getelementptr inbounds double* %grid, i64 %19
  %20 = load double* %arrayidx70, align 8, !tbaa !3
  %add71 = fadd double %add61, %20
  %21 = add nsw i64 %7, 7
  %arrayidx80 = getelementptr inbounds double* %grid, i64 %21
  %22 = load double* %arrayidx80, align 8, !tbaa !3
  %add81 = fadd double %add71, %22
  %23 = add nsw i64 %7, 8
  %arrayidx90 = getelementptr inbounds double* %grid, i64 %23
  %24 = load double* %arrayidx90, align 8, !tbaa !3
  %add91 = fadd double %add81, %24
  %25 = add nsw i64 %7, 9
  %arrayidx100 = getelementptr inbounds double* %grid, i64 %25
  %26 = load double* %arrayidx100, align 8, !tbaa !3
  %add101 = fadd double %add91, %26
  %27 = add nsw i64 %7, 10
  %arrayidx110 = getelementptr inbounds double* %grid, i64 %27
  %28 = load double* %arrayidx110, align 8, !tbaa !3
  %add111 = fadd double %add101, %28
  %29 = add nsw i64 %7, 11
  %arrayidx120 = getelementptr inbounds double* %grid, i64 %29
  %30 = load double* %arrayidx120, align 8, !tbaa !3
  %add121 = fadd double %add111, %30
  %31 = add nsw i64 %7, 12
  %arrayidx130 = getelementptr inbounds double* %grid, i64 %31
  %32 = load double* %arrayidx130, align 8, !tbaa !3
  %add131 = fadd double %add121, %32
  %33 = add nsw i64 %7, 13
  %arrayidx140 = getelementptr inbounds double* %grid, i64 %33
  %34 = load double* %arrayidx140, align 8, !tbaa !3
  %add141 = fadd double %add131, %34
  %35 = add nsw i64 %7, 14
  %arrayidx150 = getelementptr inbounds double* %grid, i64 %35
  %36 = load double* %arrayidx150, align 8, !tbaa !3
  %add151 = fadd double %add141, %36
  %37 = add nsw i64 %7, 15
  %arrayidx160 = getelementptr inbounds double* %grid, i64 %37
  %38 = load double* %arrayidx160, align 8, !tbaa !3
  %add161 = fadd double %add151, %38
  %39 = add nsw i64 %7, 16
  %arrayidx170 = getelementptr inbounds double* %grid, i64 %39
  %40 = load double* %arrayidx170, align 8, !tbaa !3
  %add171 = fadd double %add161, %40
  %41 = add nsw i64 %7, 17
  %arrayidx180 = getelementptr inbounds double* %grid, i64 %41
  %42 = load double* %arrayidx180, align 8, !tbaa !3
  %add181 = fadd double %add171, %42
  %43 = add nsw i64 %7, 18
  %arrayidx190 = getelementptr inbounds double* %grid, i64 %43
  %44 = load double* %arrayidx190, align 8, !tbaa !3
  %add191 = fadd double %add181, %44
  %sub = fsub double %14, %16
  %add219 = fadd double %sub, %22
  %sub229 = fsub double %add219, %24
  %add239 = fadd double %sub229, %26
  %sub249 = fsub double %add239, %28
  %add259 = fadd double %sub249, %38
  %add269 = fadd double %add259, %40
  %sub279 = fsub double %add269, %42
  %sub289 = fsub double %sub279, %44
  %sub308 = fsub double %10, %12
  %add318 = fadd double %sub308, %22
  %add328 = fadd double %add318, %24
  %sub338 = fsub double %add328, %26
  %sub348 = fsub double %sub338, %28
  %add358 = fadd double %sub348, %30
  %add368 = fadd double %add358, %32
  %sub378 = fsub double %add368, %34
  %sub388 = fsub double %sub378, %36
  %sub407 = fsub double %18, %20
  %add417 = fadd double %sub407, %30
  %sub427 = fsub double %add417, %32
  %add437 = fadd double %sub427, %34
  %sub447 = fsub double %add437, %36
  %add457 = fadd double %sub447, %38
  %sub467 = fsub double %add457, %40
  %add477 = fadd double %sub467, %42
  %sub487 = fsub double %add477, %44
  %div = fdiv double %sub289, %add191
  %div488 = fdiv double %sub388, %add191
  %div489 = fdiv double %sub487, %add191
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  %call8.i = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %call) #4
  %call8.i734 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %call) #4
  %call8.i735 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %call) #4
  br label %if.end

if.else:                                          ; preds = %for.body6
  %call491 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0), float* %fileUx, float* %fileUy, float* %fileUz) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %45 = load float* %fileUx, align 4, !tbaa !5
  %conv = fpext float %45 to double
  %sub492 = fsub double %div, %conv
  %conv493 = fptrunc double %sub492 to float
  %46 = load float* %fileUy, align 4, !tbaa !5
  %conv494 = fpext float %46 to double
  %sub495 = fsub double %div488, %conv494
  %conv496 = fptrunc double %sub495 to float
  %47 = load float* %fileUz, align 4, !tbaa !5
  %conv497 = fpext float %47 to double
  %sub498 = fsub double %div489, %conv497
  %conv499 = fptrunc double %sub498 to float
  %mul500 = fmul float %conv493, %conv493
  %mul501 = fmul float %conv496, %conv496
  %add502 = fadd float %mul500, %mul501
  %mul503 = fmul float %conv499, %conv499
  %add504 = fadd float %add502, %mul503
  %cmp505 = fcmp ogt float %add504, %maxDiff2.2736
  %maxDiff2.3 = select i1 %cmp505, float %add504, float %maxDiff2.2736
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 100
  br i1 %exitcond, label %for.inc509, label %for.body6

for.inc509:                                       ; preds = %if.end
  %indvars.iv.next763 = add i64 %indvars.iv762, 1
  %lftr.wideiv766 = trunc i64 %indvars.iv.next763 to i32
  %exitcond767 = icmp eq i32 %lftr.wideiv766, 100
  br i1 %exitcond767, label %for.inc512, label %for.cond4.preheader

for.inc512:                                       ; preds = %for.inc509
  %indvars.iv.next769 = add i64 %indvars.iv768, 1
  %lftr.wideiv771 = trunc i64 %indvars.iv.next769 to i32
  %exitcond772 = icmp eq i32 %lftr.wideiv771, 130
  br i1 %exitcond772, label %for.end514, label %for.cond1.preheader

for.end514:                                       ; preds = %for.inc512
  %conv515 = fpext float %maxDiff2.3 to double
  %call516 = call double @sqrt(double %conv515) #4
  %call517 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0), double %call516) #4
  %call518 = call i32 @fclose(%struct._IO_FILE* %call) #4
  ret void
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
