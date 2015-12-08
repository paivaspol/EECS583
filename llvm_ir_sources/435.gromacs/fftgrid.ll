; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_complex = type { float, float }

@.str = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"grid->ptr\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"grid->workspace\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"gmxfft3D called, but GROMACS was compiled without FFTW!\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"ptr1\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"ptr2\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"ptr3\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"grid[0][0]\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"grid[i]\00", align 1
@.str10 = private unnamed_addr constant [43 x i8] c"Printing all non-zero real elements of %s\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"%s[%2d][%2d][%2d] = %12.5e\0A\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"ATOM  %5d  Na   Na     1    %8.3f%8.3f%8.3f%6.2f%6.2f\0A\00", align 1
@.str14 = private unnamed_addr constant [46 x i8] c"Printing all non-zero complex elements of %s\0A\00", align 1
@.str15 = private unnamed_addr constant [39 x i8] c"%s[%2d][%2d][%2d] = %12.5e + i %12.5e\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_fftgrid* @mk_fftgrid(%struct._IO_FILE* nocapture %fp, i32 %bParallel, i32 %nx, i32 %ny, i32 %nz, i32 %bOptFFT) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 64) #4
  %0 = bitcast i8* %call to %struct.t_fftgrid*
  %nx1 = getelementptr inbounds i8* %call, i64 24
  %1 = bitcast i8* %nx1 to i32*
  store i32 %nx, i32* %1, align 4, !tbaa !0
  %ny2 = getelementptr inbounds i8* %call, i64 28
  %2 = bitcast i8* %ny2 to i32*
  store i32 %ny, i32* %2, align 4, !tbaa !0
  %nz3 = getelementptr inbounds i8* %call, i64 32
  %3 = bitcast i8* %nz3 to i32*
  store i32 %nz, i32* %3, align 4, !tbaa !0
  %mul = mul nsw i32 %ny, %nx
  %mul4 = mul nsw i32 %mul, %nz
  %nxyz = getelementptr inbounds i8* %call, i64 56
  %4 = bitcast i8* %nxyz to i32*
  store i32 %mul4, i32* %4, align 4, !tbaa !0
  %tobool = icmp eq i32 %bParallel, 0
  br i1 %tobool, label %if.else15, label %if.then12

if.then12:                                        ; preds = %entry
  %div = sdiv i32 %nz, 2
  %add = shl i32 %div, 1
  %mul5 = add i32 %add, 2
  %la2r = getelementptr inbounds i8* %call, i64 36
  %5 = bitcast i8* %la2r to i32*
  store i32 %mul5, i32* %5, align 4, !tbaa !0
  %add854 = add nsw i32 %div, 1
  %la2c55 = getelementptr inbounds i8* %call, i64 40
  %6 = bitcast i8* %la2c55 to i32*
  store i32 %add854, i32* %6, align 4, !tbaa !0
  %mul1056 = mul nsw i32 %mul5, %ny
  %la12r57 = getelementptr inbounds i8* %call, i64 44
  %7 = bitcast i8* %la12r57 to i32*
  store i32 %mul1056, i32* %7, align 4, !tbaa !0
  %mul14 = mul nsw i32 %add854, %nx
  %la12c = getelementptr inbounds i8* %call, i64 48
  %8 = bitcast i8* %la12c to i32*
  store i32 %mul14, i32* %8, align 4, !tbaa !0
  br label %if.end19

if.else15:                                        ; preds = %entry
  %la2r6 = getelementptr inbounds i8* %call, i64 36
  %9 = bitcast i8* %la2r6 to i32*
  store i32 %nz, i32* %9, align 4, !tbaa !0
  %div7.pre = sdiv i32 %nz, 2
  %add8 = add nsw i32 %div7.pre, 1
  %la2c = getelementptr inbounds i8* %call, i64 40
  %10 = bitcast i8* %la2c to i32*
  store i32 %add8, i32* %10, align 4, !tbaa !0
  %mul10 = mul nsw i32 %nz, %ny
  %la12r = getelementptr inbounds i8* %call, i64 44
  %11 = bitcast i8* %la12r to i32*
  store i32 %mul10, i32* %11, align 4, !tbaa !0
  %mul17 = mul nsw i32 %add8, %ny
  %la12c18 = getelementptr inbounds i8* %call, i64 48
  %12 = bitcast i8* %la12c18 to i32*
  store i32 %mul17, i32* %12, align 4, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12
  %add859 = phi i32 [ %add8, %if.else15 ], [ %add854, %if.then12 ]
  %mul22 = shl i32 %mul, 1
  %mul23 = mul i32 %mul22, %add859
  %nptr = getelementptr inbounds i8* %call, i64 52
  %13 = bitcast i8* %nptr to i32*
  store i32 %mul23, i32* %13, align 4, !tbaa !0
  %call25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %mul23, i32 4) #4
  %14 = bitcast i8* %call25 to float*
  %ptr = bitcast i8* %call to float**
  store float* %14, float** %ptr, align 8, !tbaa !3
  ret %struct.t_fftgrid* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @done_fftgrid(%struct.t_fftgrid* nocapture %grid) #0 {
entry:
  %ptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %0 = load float** %ptr, align 8, !tbaa !3
  %tobool = icmp eq float* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast float* %0 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %1) #4
  store float* null, float** %ptr, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %localptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 1
  store float* null, float** %localptr, align 8, !tbaa !3
  %workspace = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 2
  %2 = load float** %workspace, align 8, !tbaa !3
  %tobool3 = icmp eq float* %2, null
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = bitcast float* %2 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 158, i8* %3) #4
  store float* null, float** %workspace, align 8, !tbaa !3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then4
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @gmxfft3D(%struct.t_fftgrid* nocapture %grid, i32 %dir, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_fftgrid(%struct.t_fftgrid* nocapture %grid) #0 {
entry:
  %nptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10
  %0 = load i32* %nptr, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ptr1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %1 = load float** %ptr1, align 8, !tbaa !3
  %2 = bitcast float* %1 to i8*
  %3 = add i32 %0, -1
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = add i64 %5, 4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %6, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @unpack_fftgrid(%struct.t_fftgrid* nocapture %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32* nocapture %la2, i32* nocapture %la12, i32 %bReal, float** nocapture %ptr) #0 {
entry:
  %nx1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 3
  %0 = load i32* %nx1, align 4, !tbaa !0
  store i32 %0, i32* %nx, align 4, !tbaa !0
  %ny2 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 4
  %1 = load i32* %ny2, align 4, !tbaa !0
  store i32 %1, i32* %ny, align 4, !tbaa !0
  %nz3 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 5
  %2 = load i32* %nz3, align 4, !tbaa !0
  store i32 %2, i32* %nz, align 4, !tbaa !0
  %tobool = icmp eq i32 %bReal, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %la2r = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 6
  %3 = load i32* %la2r, align 4, !tbaa !0
  store i32 %3, i32* %la2, align 4, !tbaa !0
  %la12r = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 8
  br label %if.end

if.else:                                          ; preds = %entry
  %la2c = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 7
  %4 = load i32* %la2c, align 4, !tbaa !0
  store i32 %4, i32* %la2, align 4, !tbaa !0
  %la12c = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32* [ %la12c, %if.else ], [ %la12r, %if.then ]
  %storemerge = load i32* %storemerge.in, align 4
  store i32 %storemerge, i32* %la12, align 4, !tbaa !0
  %ptr4 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %5 = load float** %ptr4, align 8, !tbaa !3
  store float* %5, float** %ptr, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float*** @mk_rgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  %mul = mul nsw i32 %ny, %nx
  %mul1 = mul nsw i32 %mul, %nz
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %mul1, i32 4) #4
  %0 = bitcast i8* %call to float*
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 253, i32 %mul, i32 8) #4
  %1 = bitcast i8* %call3 to float**
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 254, i32 %nx, i32 8) #4
  %2 = bitcast i8* %call4 to float***
  %cmp37 = icmp sgt i32 %nx, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.end17

for.body.lr.ph:                                   ; preds = %entry
  %cmp832 = icmp sgt i32 %ny, 0
  %3 = sext i32 %nz to i64
  %4 = mul i32 %nz, %ny
  br label %for.body

for.body:                                         ; preds = %for.inc15, %for.body.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc15 ]
  %n3.040 = phi i32 [ 0, %for.body.lr.ph ], [ %n3.1.lcssa, %for.inc15 ]
  %n2.039 = phi i32 [ 0, %for.body.lr.ph ], [ %n2.1.lcssa, %for.inc15 ]
  %idxprom = sext i32 %n2.039 to i64
  %arrayidx = getelementptr inbounds float** %1, i64 %idxprom
  %arrayidx6 = getelementptr inbounds float*** %2, i64 %indvars.iv43
  store float** %arrayidx, float*** %arrayidx6, align 8, !tbaa !3
  br i1 %cmp832, label %for.body9.lr.ph, label %for.inc15

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %n3.040 to i64
  %6 = add i32 %n2.039, %ny
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv41 = phi i64 [ %idxprom, %for.body9.lr.ph ], [ %indvars.iv.next42, %for.body9 ]
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %j.033 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %arrayidx11 = getelementptr inbounds float* %0, i64 %indvars.iv
  %arrayidx13 = getelementptr inbounds float** %1, i64 %indvars.iv41
  store float* %arrayidx11, float** %arrayidx13, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, %3
  %inc = add nsw i32 %j.033, 1
  %indvars.iv.next42 = add i64 %indvars.iv41, 1
  %exitcond = icmp eq i32 %inc, %ny
  br i1 %exitcond, label %for.cond7.for.inc15_crit_edge, label %for.body9

for.cond7.for.inc15_crit_edge:                    ; preds = %for.body9
  %7 = add i32 %4, %n3.040
  br label %for.inc15

for.inc15:                                        ; preds = %for.cond7.for.inc15_crit_edge, %for.body
  %n3.1.lcssa = phi i32 [ %7, %for.cond7.for.inc15_crit_edge ], [ %n3.040, %for.body ]
  %n2.1.lcssa = phi i32 [ %6, %for.cond7.for.inc15_crit_edge ], [ %n2.039, %for.body ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond45, label %for.end17, label %for.body

for.end17:                                        ; preds = %for.inc15, %entry
  ret float*** %2
}

; Function Attrs: nounwind optsize uwtable
define void @free_rgrid(float*** %grid, i32 %nx, i32 %ny) #0 {
entry:
  %0 = load float*** %grid, align 8, !tbaa !3
  %1 = load float** %0, align 8, !tbaa !3
  %2 = bitcast float* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 271, i8* %2) #4
  %cmp7 = icmp sgt i32 %nx, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds float*** %grid, i64 %indvars.iv
  %3 = load float*** %arrayidx2, align 8, !tbaa !3
  %4 = bitcast float** %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 273, i8* %4) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %5 = bitcast float*** %grid to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 275, i8* %5) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @print_rgrid(%struct._IO_FILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0), i8* %title) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp48 = icmp sgt i32 %nx, 0
  br i1 %cmp48, label %for.cond1.preheader.lr.ph, label %for.end24

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp244 = icmp sgt i32 %ny, 0
  %cmp541 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc22, %for.cond1.preheader.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc22 ]
  %gtot.050 = phi float [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %gtot.1.lcssa, %for.inc22 ]
  br i1 %cmp244, label %for.cond4.preheader.lr.ph, label %for.inc22

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv56
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc19, %for.cond4.preheader.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next53, %for.inc19 ]
  %gtot.146 = phi float [ %gtot.050, %for.cond4.preheader.lr.ph ], [ %gtot.2.lcssa, %for.inc19 ]
  br i1 %cmp541, label %for.body6, label %for.inc19

for.body6:                                        ; preds = %if.end18, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end18 ]
  %gtot.243 = phi float [ %gtot.146, %for.cond4.preheader ], [ %add, %if.end18 ]
  %0 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %0, i64 %indvars.iv52
  %1 = load float** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds float* %1, i64 %indvars.iv
  %2 = load float* %arrayidx10, align 4, !tbaa !4
  br i1 %tobool, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %for.body6
  %fabsf = tail call float @fabsf(float %2) #5
  %3 = fpext float %fabsf to double
  %cmp13 = fcmp ogt double %3, 1.200000e-38
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  %conv = fpext float %2 to double
  %4 = trunc i64 %indvars.iv to i32
  %5 = trunc i64 %indvars.iv52 to i32
  %6 = trunc i64 %indvars.iv56 to i32
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %6, i32 %5, i32 %4, double %conv) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true, %for.body6
  %add = fadd float %gtot.243, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.inc19, label %for.body6

for.inc19:                                        ; preds = %if.end18, %for.cond4.preheader
  %gtot.2.lcssa = phi float [ %gtot.146, %for.cond4.preheader ], [ %add, %if.end18 ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %ny
  br i1 %exitcond55, label %for.inc22, label %for.cond4.preheader

for.inc22:                                        ; preds = %for.inc19, %for.cond1.preheader
  %gtot.1.lcssa = phi float [ %gtot.050, %for.cond1.preheader ], [ %gtot.2.lcssa, %for.inc19 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %nx
  br i1 %exitcond59, label %for.end24, label %for.cond1.preheader

for.end24:                                        ; preds = %for.inc22, %for.cond.preheader
  %gtot.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %gtot.1.lcssa, %for.inc22 ]
  ret float %gtot.0.lcssa
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @print_rgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #4
  %cmp48 = icmp sgt i32 %nx, 0
  br i1 %cmp48, label %for.cond1.preheader.lr.ph, label %for.end29

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp244 = icmp sgt i32 %ny, 0
  %cmp541 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc27, %for.cond1.preheader.lr.ph
  %indvars.iv55 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next56, %for.inc27 ]
  %n.049 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %n.1.lcssa, %for.inc27 ]
  br i1 %cmp244, label %for.cond4.preheader.lr.ph, label %for.inc27

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv55
  %0 = trunc i64 %indvars.iv55 to i32
  %mul = shl nsw i32 %0, 2
  %conv13 = sitofp i32 %mul to float
  %conv18 = fpext float %conv13 to double
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc24, %for.cond4.preheader.lr.ph
  %indvars.iv51 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next52, %for.inc24 ]
  %n.145 = phi i32 [ %n.049, %for.cond4.preheader.lr.ph ], [ %n.2.lcssa, %for.inc24 ]
  br i1 %cmp541, label %for.body6.lr.ph, label %for.inc24

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = trunc i64 %indvars.iv51 to i32
  %mul14 = shl nsw i32 %1, 2
  %conv15 = sitofp i32 %mul14 to float
  %conv19 = fpext float %conv15 to double
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %n.242 = phi i32 [ %n.145, %for.body6.lr.ph ], [ %inc, %for.body6 ]
  %2 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %2, i64 %indvars.iv51
  %3 = load float** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds float* %3, i64 %indvars.iv
  %4 = load float* %arrayidx10, align 4, !tbaa !4
  %5 = trunc i64 %indvars.iv to i32
  %mul16 = shl nsw i32 %5, 2
  %conv17 = sitofp i32 %mul16 to float
  %inc = add nsw i32 %n.242, 1
  %conv20 = fpext float %conv17 to double
  %conv21 = fpext float %4 to double
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.242, double %conv18, double %conv19, double %conv20, double 0.000000e+00, double %conv21) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.cond4.for.inc24_crit_edge, label %for.body6

for.cond4.for.inc24_crit_edge:                    ; preds = %for.body6
  %6 = add i32 %n.145, %nz
  br label %for.inc24

for.inc24:                                        ; preds = %for.cond4.for.inc24_crit_edge, %for.cond4.preheader
  %n.2.lcssa = phi i32 [ %6, %for.cond4.for.inc24_crit_edge ], [ %n.145, %for.cond4.preheader ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1
  %lftr.wideiv53 = trunc i64 %indvars.iv.next52 to i32
  %exitcond54 = icmp eq i32 %lftr.wideiv53, %ny
  br i1 %exitcond54, label %for.inc27, label %for.cond4.preheader

for.inc27:                                        ; preds = %for.inc24, %for.cond1.preheader
  %n.1.lcssa = phi i32 [ %n.049, %for.cond1.preheader ], [ %n.2.lcssa, %for.inc24 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, 1
  %lftr.wideiv57 = trunc i64 %indvars.iv.next56 to i32
  %exitcond58 = icmp eq i32 %lftr.wideiv57, %nx
  br i1 %exitcond58, label %for.end29, label %for.cond1.preheader

for.end29:                                        ; preds = %for.inc27, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #4
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_rgrid(i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  %cmp27 = icmp sgt i32 %nx, 0
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %ny, 0
  %cmp523 = icmp sgt i32 %nz, 0
  %0 = add i32 %nz, -1
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2
  %3 = add i64 %2, 4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv29
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next, %for.inc11 ]
  br i1 %cmp523, label %for.body6.lr.ph, label %for.inc11

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %4 = load float*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %4, i64 %indvars.iv
  %5 = load float** %arrayidx9, align 8, !tbaa !3
  %6 = bitcast float* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %3, i32 4, i1 false)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body6.lr.ph, %for.cond4.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ny
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %nx
  br i1 %exitcond32, label %for.end16, label %for.cond1.preheader

for.end16:                                        ; preds = %for.inc14, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @clear_cgrid(i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  %cmp27 = icmp sgt i32 %nx, 0
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %ny, 0
  %cmp523 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv33 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next34, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv33
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc11 ]
  br i1 %cmp523, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %0 = load %struct.t_complex*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %0, i64 %indvars.iv29
  %1 = load %struct.t_complex** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.t_complex* %1, i64 %indvars.iv
  %2 = bitcast %struct.t_complex* %arrayidx10 to i64*
  store i64 0, i64* %2, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.inc11, label %for.body6

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %ny
  br i1 %exitcond32, label %for.inc14, label %for.cond4.preheader

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next34 = add i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %nx
  br i1 %exitcond36, label %for.end16, label %for.cond1.preheader

for.end16:                                        ; preds = %for.inc14, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.t_complex*** @mk_cgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  %mul = mul nsw i32 %ny, %nx
  %mul1 = mul nsw i32 %mul, %nz
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 350, i32 %mul1, i32 8) #4
  %0 = bitcast i8* %call to %struct.t_complex*
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 351, i32 %mul, i32 8) #4
  %1 = bitcast i8* %call3 to %struct.t_complex**
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 352, i32 %nx, i32 8) #4
  %2 = bitcast i8* %call4 to %struct.t_complex***
  %cmp37 = icmp sgt i32 %nx, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.end17

for.body.lr.ph:                                   ; preds = %entry
  %cmp832 = icmp sgt i32 %ny, 0
  %3 = sext i32 %nz to i64
  %4 = mul i32 %nz, %ny
  br label %for.body

for.body:                                         ; preds = %for.inc15, %for.body.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc15 ]
  %n3.040 = phi i32 [ 0, %for.body.lr.ph ], [ %n3.1.lcssa, %for.inc15 ]
  %n2.039 = phi i32 [ 0, %for.body.lr.ph ], [ %n2.1.lcssa, %for.inc15 ]
  %idxprom = sext i32 %n2.039 to i64
  %arrayidx = getelementptr inbounds %struct.t_complex** %1, i64 %idxprom
  %arrayidx6 = getelementptr inbounds %struct.t_complex*** %2, i64 %indvars.iv43
  store %struct.t_complex** %arrayidx, %struct.t_complex*** %arrayidx6, align 8, !tbaa !3
  br i1 %cmp832, label %for.body9.lr.ph, label %for.inc15

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %n3.040 to i64
  %6 = add i32 %n2.039, %ny
  br label %for.body9

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv41 = phi i64 [ %idxprom, %for.body9.lr.ph ], [ %indvars.iv.next42, %for.body9 ]
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %j.033 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %arrayidx11 = getelementptr inbounds %struct.t_complex* %0, i64 %indvars.iv
  %arrayidx13 = getelementptr inbounds %struct.t_complex** %1, i64 %indvars.iv41
  store %struct.t_complex* %arrayidx11, %struct.t_complex** %arrayidx13, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, %3
  %inc = add nsw i32 %j.033, 1
  %indvars.iv.next42 = add i64 %indvars.iv41, 1
  %exitcond = icmp eq i32 %inc, %ny
  br i1 %exitcond, label %for.cond7.for.inc15_crit_edge, label %for.body9

for.cond7.for.inc15_crit_edge:                    ; preds = %for.body9
  %7 = add i32 %4, %n3.040
  br label %for.inc15

for.inc15:                                        ; preds = %for.cond7.for.inc15_crit_edge, %for.body
  %n3.1.lcssa = phi i32 [ %7, %for.cond7.for.inc15_crit_edge ], [ %n3.040, %for.body ]
  %n2.1.lcssa = phi i32 [ %6, %for.cond7.for.inc15_crit_edge ], [ %n2.039, %for.body ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond45, label %for.end17, label %for.body

for.end17:                                        ; preds = %for.inc15, %entry
  ret %struct.t_complex*** %2
}

; Function Attrs: nounwind optsize uwtable
define void @free_cgrid(%struct.t_complex*** %grid, i32 %nx, i32 %ny) #0 {
entry:
  %0 = load %struct.t_complex*** %grid, align 8, !tbaa !3
  %1 = load %struct.t_complex** %0, align 8, !tbaa !3
  %2 = bitcast %struct.t_complex* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 369, i8* %2) #4
  %cmp7 = icmp sgt i32 %nx, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv
  %3 = load %struct.t_complex*** %arrayidx2, align 8, !tbaa !3
  %4 = bitcast %struct.t_complex** %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 371, i8* %4) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %5 = bitcast %struct.t_complex*** %grid to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 372, i8* %5) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define <2 x float> @print_cgrid(%struct._IO_FILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  %tobool = icmp ne %struct._IO_FILE* %fp, null
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str14, i64 0, i64 0), i8* %title) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp65 = icmp sgt i32 %nx, 0
  br i1 %cmp65, label %for.cond1.preheader.lr.ph, label %for.end32

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp259 = icmp sgt i32 %ny, 0
  %cmp555 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc30, %for.cond1.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc30 ]
  %gtot.sroa.0.067 = phi <2 x float> [ zeroinitializer, %for.cond1.preheader.lr.ph ], [ %gtot.sroa.0.1.lcssa, %for.inc30 ]
  br i1 %cmp259, label %for.cond4.preheader.lr.ph, label %for.inc30

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv74
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc27, %for.cond4.preheader.lr.ph
  %indvars.iv70 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next71, %for.inc27 ]
  %gtot.sroa.0.161 = phi <2 x float> [ %gtot.sroa.0.067, %for.cond4.preheader.lr.ph ], [ %gtot.sroa.0.2.lcssa, %for.inc27 ]
  br i1 %cmp555, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %if.end25, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end25 ]
  %gtot.sroa.0.257 = phi <2 x float> [ %gtot.sroa.0.161, %for.cond4.preheader ], [ %retval.sroa.0.4.vec.insert.i, %if.end25 ]
  %0 = load %struct.t_complex*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %0, i64 %indvars.iv70
  %1 = load %struct.t_complex** %arrayidx9, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds %struct.t_complex* %1, i64 %indvars.iv
  %g.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx10 to <2 x float>*
  %g.sroa.0.0.copyload = load <2 x float>* %g.sroa.0.0.cast, align 4
  %g.sroa.0.0.vec.extract = extractelement <2 x float> %g.sroa.0.0.copyload, i32 0
  br i1 %tobool, label %land.lhs.true, label %for.body6.if.end25_crit_edge

for.body6.if.end25_crit_edge:                     ; preds = %for.body6
  %b.sroa.0.4.vec.extract.i.pre = extractelement <2 x float> %g.sroa.0.0.copyload, i32 1
  br label %if.end25

land.lhs.true:                                    ; preds = %for.body6
  %conv = fpext float %g.sroa.0.0.vec.extract to double
  %fabsf = tail call float @fabsf(float %g.sroa.0.0.vec.extract) #5
  %2 = fpext float %fabsf to double
  %cmp13 = fcmp ogt double %2, 1.200000e-38
  %g.sroa.0.4.vec.extract38.pre = extractelement <2 x float> %g.sroa.0.0.copyload, i32 1
  br i1 %cmp13, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fabsf54 = tail call float @fabsf(float %g.sroa.0.4.vec.extract38.pre) #5
  %3 = fpext float %fabsf54 to double
  %cmp17 = fcmp ogt double %3, 1.200000e-38
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %conv23 = fpext float %g.sroa.0.4.vec.extract38.pre to double
  %4 = trunc i64 %indvars.iv to i32
  %5 = trunc i64 %indvars.iv70 to i32
  %6 = trunc i64 %indvars.iv74 to i32
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str15, i64 0, i64 0), i8* %title, i32 %6, i32 %5, i32 %4, double %conv, double %conv23) #4
  br label %if.end25

if.end25:                                         ; preds = %for.body6.if.end25_crit_edge, %if.then19, %lor.lhs.false
  %b.sroa.0.4.vec.extract.i.pre-phi = phi float [ %b.sroa.0.4.vec.extract.i.pre, %for.body6.if.end25_crit_edge ], [ %g.sroa.0.4.vec.extract38.pre, %if.then19 ], [ %g.sroa.0.4.vec.extract38.pre, %lor.lhs.false ]
  %a.sroa.0.0.vec.extract.i = extractelement <2 x float> %gtot.sroa.0.257, i32 0
  %add.i = fadd float %a.sroa.0.0.vec.extract.i, %g.sroa.0.0.vec.extract
  %a.sroa.0.4.vec.extract.i = extractelement <2 x float> %gtot.sroa.0.257, i32 1
  %add4.i = fadd float %a.sroa.0.4.vec.extract.i, %b.sroa.0.4.vec.extract.i.pre-phi
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %add.i, i32 0
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %add4.i, i32 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.inc27, label %for.body6

for.inc27:                                        ; preds = %if.end25, %for.cond4.preheader
  %gtot.sroa.0.2.lcssa = phi <2 x float> [ %gtot.sroa.0.161, %for.cond4.preheader ], [ %retval.sroa.0.4.vec.insert.i, %if.end25 ]
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %ny
  br i1 %exitcond73, label %for.inc30, label %for.cond4.preheader

for.inc30:                                        ; preds = %for.inc27, %for.cond1.preheader
  %gtot.sroa.0.1.lcssa = phi <2 x float> [ %gtot.sroa.0.067, %for.cond1.preheader ], [ %gtot.sroa.0.2.lcssa, %for.inc27 ]
  %indvars.iv.next75 = add i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %nx
  br i1 %exitcond77, label %for.end32, label %for.cond1.preheader

for.end32:                                        ; preds = %for.inc30, %for.cond.preheader
  %gtot.sroa.0.0.lcssa = phi <2 x float> [ zeroinitializer, %for.cond.preheader ], [ %gtot.sroa.0.1.lcssa, %for.inc30 ]
  ret <2 x float> %gtot.sroa.0.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @print_cgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #4
  %cmp49 = icmp sgt i32 %nx, 0
  br i1 %cmp49, label %for.cond1.preheader.lr.ph, label %for.end30

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp245 = icmp sgt i32 %ny, 0
  %cmp542 = icmp sgt i32 %nz, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc28, %for.cond1.preheader.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc28 ]
  %n.050 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %n.1.lcssa, %for.inc28 ]
  br i1 %cmp245, label %for.cond4.preheader.lr.ph, label %for.inc28

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv56
  %0 = trunc i64 %indvars.iv56 to i32
  %mul = shl nsw i32 %0, 2
  %conv14 = sitofp i32 %mul to float
  %conv19 = fpext float %conv14 to double
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc25, %for.cond4.preheader.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next53, %for.inc25 ]
  %n.146 = phi i32 [ %n.050, %for.cond4.preheader.lr.ph ], [ %n.2.lcssa, %for.inc25 ]
  br i1 %cmp542, label %for.body6.lr.ph, label %for.inc25

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = trunc i64 %indvars.iv52 to i32
  %mul15 = shl nsw i32 %1, 2
  %conv16 = sitofp i32 %mul15 to float
  %conv20 = fpext float %conv16 to double
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %n.243 = phi i32 [ %n.146, %for.body6.lr.ph ], [ %n.3, %for.inc ]
  %2 = load %struct.t_complex*** %arrayidx, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %2, i64 %indvars.iv52
  %3 = load %struct.t_complex** %arrayidx9, align 8, !tbaa !3
  %re = getelementptr inbounds %struct.t_complex* %3, i64 %indvars.iv, i32 0
  %4 = load float* %re, align 4, !tbaa !4
  %fabsf = tail call float @fabsf(float %4) #5
  %5 = fpext float %fabsf to double
  %cmp12 = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body6
  %conv = fpext float %4 to double
  %6 = trunc i64 %indvars.iv to i32
  %mul17 = shl nsw i32 %6, 2
  %conv18 = sitofp i32 %mul17 to float
  %inc = add nsw i32 %n.243, 1
  %conv21 = fpext float %conv18 to double
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.243, double %conv19, double %conv20, double %conv21, double 0.000000e+00, double %conv) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body6, %if.then
  %n.3 = phi i32 [ %inc, %if.then ], [ %n.243, %for.body6 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nz
  br i1 %exitcond, label %for.inc25, label %for.body6

for.inc25:                                        ; preds = %for.inc, %for.cond4.preheader
  %n.2.lcssa = phi i32 [ %n.146, %for.cond4.preheader ], [ %n.3, %for.inc ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %ny
  br i1 %exitcond55, label %for.inc28, label %for.cond4.preheader

for.inc28:                                        ; preds = %for.inc25, %for.cond1.preheader
  %n.1.lcssa = phi i32 [ %n.050, %for.cond1.preheader ], [ %n.2.lcssa, %for.inc25 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %nx
  br i1 %exitcond59, label %for.end30, label %for.cond1.preheader

for.end30:                                        ; preds = %for.inc28, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #4
  ret void
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
