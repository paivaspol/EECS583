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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !88), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %bParallel}, i64 0, metadata !89), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !90), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !91), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !92), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %bOptFFT}, i64 0, metadata !93), !dbg !296
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 64) #5, !dbg !297
  %0 = bitcast i8* %call to %struct.t_fftgrid*, !dbg !297
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %0}, i64 0, metadata !95), !dbg !297
  %nx1 = getelementptr inbounds i8* %call, i64 24, !dbg !298
  %1 = bitcast i8* %nx1 to i32*, !dbg !298
  store i32 %nx, i32* %1, align 4, !dbg !298, !tbaa !299
  %ny2 = getelementptr inbounds i8* %call, i64 28, !dbg !302
  %2 = bitcast i8* %ny2 to i32*, !dbg !302
  store i32 %ny, i32* %2, align 4, !dbg !302, !tbaa !299
  %nz3 = getelementptr inbounds i8* %call, i64 32, !dbg !303
  %3 = bitcast i8* %nz3 to i32*, !dbg !303
  store i32 %nz, i32* %3, align 4, !dbg !303, !tbaa !299
  %mul = mul nsw i32 %ny, %nx, !dbg !304
  %mul4 = mul nsw i32 %mul, %nz, !dbg !304
  %nxyz = getelementptr inbounds i8* %call, i64 56, !dbg !304
  %4 = bitcast i8* %nxyz to i32*, !dbg !304
  store i32 %mul4, i32* %4, align 4, !dbg !304, !tbaa !299
  %tobool = icmp eq i32 %bParallel, 0, !dbg !305
  br i1 %tobool, label %if.else15, label %if.then12, !dbg !305

if.then12:                                        ; preds = %entry
  %div = sdiv i32 %nz, 2, !dbg !306
  %add = shl i32 %div, 1, !dbg !306
  %mul5 = add i32 %add, 2, !dbg !306
  %la2r = getelementptr inbounds i8* %call, i64 36, !dbg !306
  %5 = bitcast i8* %la2r to i32*, !dbg !306
  store i32 %mul5, i32* %5, align 4, !dbg !306, !tbaa !299
  %add854 = add nsw i32 %div, 1, !dbg !307
  %la2c55 = getelementptr inbounds i8* %call, i64 40, !dbg !307
  %6 = bitcast i8* %la2c55 to i32*, !dbg !307
  store i32 %add854, i32* %6, align 4, !dbg !307, !tbaa !299
  %mul1056 = mul nsw i32 %mul5, %ny, !dbg !308
  %la12r57 = getelementptr inbounds i8* %call, i64 44, !dbg !308
  %7 = bitcast i8* %la12r57 to i32*, !dbg !308
  store i32 %mul1056, i32* %7, align 4, !dbg !308, !tbaa !299
  %mul14 = mul nsw i32 %add854, %nx, !dbg !309
  %la12c = getelementptr inbounds i8* %call, i64 48, !dbg !309
  %8 = bitcast i8* %la12c to i32*, !dbg !309
  store i32 %mul14, i32* %8, align 4, !dbg !309, !tbaa !299
  br label %if.end19, !dbg !309

if.else15:                                        ; preds = %entry
  %la2r6 = getelementptr inbounds i8* %call, i64 36, !dbg !310
  %9 = bitcast i8* %la2r6 to i32*, !dbg !310
  store i32 %nz, i32* %9, align 4, !dbg !310, !tbaa !299
  %div7.pre = sdiv i32 %nz, 2, !dbg !307
  %add8 = add nsw i32 %div7.pre, 1, !dbg !307
  %la2c = getelementptr inbounds i8* %call, i64 40, !dbg !307
  %10 = bitcast i8* %la2c to i32*, !dbg !307
  store i32 %add8, i32* %10, align 4, !dbg !307, !tbaa !299
  %mul10 = mul nsw i32 %nz, %ny, !dbg !308
  %la12r = getelementptr inbounds i8* %call, i64 44, !dbg !308
  %11 = bitcast i8* %la12r to i32*, !dbg !308
  store i32 %mul10, i32* %11, align 4, !dbg !308, !tbaa !299
  %mul17 = mul nsw i32 %add8, %ny, !dbg !311
  %la12c18 = getelementptr inbounds i8* %call, i64 48, !dbg !311
  %12 = bitcast i8* %la12c18 to i32*, !dbg !311
  store i32 %mul17, i32* %12, align 4, !dbg !311, !tbaa !299
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then12
  %add859 = phi i32 [ %add8, %if.else15 ], [ %add854, %if.then12 ]
  %mul22 = shl i32 %mul, 1, !dbg !312
  %mul23 = mul i32 %mul22, %add859, !dbg !312
  %nptr = getelementptr inbounds i8* %call, i64 52, !dbg !312
  %13 = bitcast i8* %nptr to i32*, !dbg !312
  store i32 %mul23, i32* %13, align 4, !dbg !312, !tbaa !299
  %call25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %mul23, i32 4) #5, !dbg !313
  %14 = bitcast i8* %call25 to float*, !dbg !313
  %ptr = bitcast i8* %call to float**, !dbg !313
  store float* %14, float** %ptr, align 8, !dbg !313, !tbaa !314
  ret %struct.t_fftgrid* %0, !dbg !315
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @done_fftgrid(%struct.t_fftgrid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !100), !dbg !316
  %ptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0, !dbg !317
  %0 = load float** %ptr, align 8, !dbg !317, !tbaa !314
  %tobool = icmp eq float* %0, null, !dbg !317
  br i1 %tobool, label %if.end, label %if.then, !dbg !317

if.then:                                          ; preds = %entry
  %1 = bitcast float* %0 to i8*, !dbg !318
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %1) #5, !dbg !318
  store float* null, float** %ptr, align 8, !dbg !320, !tbaa !314
  br label %if.end, !dbg !321

if.end:                                           ; preds = %entry, %if.then
  %localptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 1, !dbg !322
  store float* null, float** %localptr, align 8, !dbg !322, !tbaa !314
  %workspace = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 2, !dbg !323
  %2 = load float** %workspace, align 8, !dbg !323, !tbaa !314
  %tobool3 = icmp eq float* %2, null, !dbg !323
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !323

if.then4:                                         ; preds = %if.end
  %3 = bitcast float* %2 to i8*, !dbg !324
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 158, i8* %3) #5, !dbg !324
  store float* null, float** %workspace, align 8, !dbg !326, !tbaa !314
  br label %if.end7, !dbg !327

if.end7:                                          ; preds = %if.end, %if.then4
  ret void, !dbg !328
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @gmxfft3D(%struct.t_fftgrid* nocapture %grid, i32 %dir, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !116), !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !117), !dbg !329
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !118), !dbg !329
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !330
  ret void, !dbg !331
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @clear_fftgrid(%struct.t_fftgrid* nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !121), !dbg !332
  %nptr = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10, !dbg !333
  %0 = load i32* %nptr, align 4, !dbg !333, !tbaa !299
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !123), !dbg !333
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !124), !dbg !334
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !335
  %cmp5 = icmp sgt i32 %0, 0, !dbg !335
  br i1 %cmp5, label %for.body.lr.ph, label %for.end, !dbg !335

for.body.lr.ph:                                   ; preds = %entry
  %ptr1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0, !dbg !334
  %1 = load float** %ptr1, align 8, !dbg !334, !tbaa !314
  %2 = bitcast float* %1 to i8*
  %3 = add i32 %0, -1, !dbg !335
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2, !dbg !335
  %6 = add i64 %5, 4, !dbg !335
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %6, i32 4, i1 false), !dbg !337
  br label %for.end, !dbg !335

for.end:                                          ; preds = %for.body.lr.ph, %entry
  ret void, !dbg !339
}

; Function Attrs: nounwind optsize uwtable
define void @unpack_fftgrid(%struct.t_fftgrid* nocapture %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32* nocapture %la2, i32* nocapture %la12, i32 %bReal, float** nocapture %ptr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_fftgrid* %grid}, i64 0, metadata !131), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32* %nx}, i64 0, metadata !132), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32* %ny}, i64 0, metadata !133), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !134), !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32* %la2}, i64 0, metadata !135), !dbg !341
  tail call void @llvm.dbg.value(metadata !{i32* %la12}, i64 0, metadata !136), !dbg !341
  tail call void @llvm.dbg.value(metadata !{i32 %bReal}, i64 0, metadata !137), !dbg !341
  tail call void @llvm.dbg.value(metadata !{float** %ptr}, i64 0, metadata !138), !dbg !341
  %nx1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 3, !dbg !342
  %0 = load i32* %nx1, align 4, !dbg !342, !tbaa !299
  store i32 %0, i32* %nx, align 4, !dbg !342, !tbaa !299
  %ny2 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 4, !dbg !343
  %1 = load i32* %ny2, align 4, !dbg !343, !tbaa !299
  store i32 %1, i32* %ny, align 4, !dbg !343, !tbaa !299
  %nz3 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 5, !dbg !344
  %2 = load i32* %nz3, align 4, !dbg !344, !tbaa !299
  store i32 %2, i32* %nz, align 4, !dbg !344, !tbaa !299
  %tobool = icmp eq i32 %bReal, 0, !dbg !345
  br i1 %tobool, label %if.else, label %if.then, !dbg !345

if.then:                                          ; preds = %entry
  %la2r = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 6, !dbg !346
  %3 = load i32* %la2r, align 4, !dbg !346, !tbaa !299
  store i32 %3, i32* %la2, align 4, !dbg !346, !tbaa !299
  %la12r = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 8, !dbg !348
  br label %if.end, !dbg !349

if.else:                                          ; preds = %entry
  %la2c = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 7, !dbg !350
  %4 = load i32* %la2c, align 4, !dbg !350, !tbaa !299
  store i32 %4, i32* %la2, align 4, !dbg !350, !tbaa !299
  %la12c = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 9, !dbg !352
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32* [ %la12c, %if.else ], [ %la12r, %if.then ]
  %storemerge = load i32* %storemerge.in, align 4, !dbg !352
  store i32 %storemerge, i32* %la12, align 4, !dbg !348, !tbaa !299
  %ptr4 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0, !dbg !353
  %5 = load float** %ptr4, align 8, !dbg !353, !tbaa !314
  store float* %5, float** %ptr, align 8, !dbg !353, !tbaa !314
  ret void, !dbg !354
}

; Function Attrs: nounwind optsize uwtable
define float*** @mk_rgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !146), !dbg !355
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !147), !dbg !355
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !148), !dbg !355
  %mul = mul nsw i32 %ny, %nx, !dbg !356
  %mul1 = mul nsw i32 %mul, %nz, !dbg !356
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %mul1, i32 4) #5, !dbg !356
  %0 = bitcast i8* %call to float*, !dbg !356
  tail call void @llvm.dbg.value(metadata !{float* %0}, i64 0, metadata !149), !dbg !356
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 253, i32 %mul, i32 8) #5, !dbg !357
  %1 = bitcast i8* %call3 to float**, !dbg !357
  tail call void @llvm.dbg.value(metadata !{float** %1}, i64 0, metadata !150), !dbg !357
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 254, i32 %nx, i32 8) #5, !dbg !358
  %2 = bitcast i8* %call4 to float***, !dbg !358
  tail call void @llvm.dbg.value(metadata !{float*** %2}, i64 0, metadata !151), !dbg !358
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !155), !dbg !359
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !154), !dbg !359
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !360
  %cmp37 = icmp sgt i32 %nx, 0, !dbg !360
  br i1 %cmp37, label %for.body.lr.ph, label %for.end17, !dbg !360

for.body.lr.ph:                                   ; preds = %entry
  %cmp832 = icmp sgt i32 %ny, 0, !dbg !362
  %3 = sext i32 %nz to i64
  %4 = mul i32 %nz, %ny, !dbg !360
  br label %for.body, !dbg !360

for.body:                                         ; preds = %for.inc15, %for.body.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc15 ]
  %n3.040 = phi i32 [ 0, %for.body.lr.ph ], [ %n3.1.lcssa, %for.inc15 ]
  %n2.039 = phi i32 [ 0, %for.body.lr.ph ], [ %n2.1.lcssa, %for.inc15 ]
  %idxprom = sext i32 %n2.039 to i64, !dbg !365
  %arrayidx = getelementptr inbounds float** %1, i64 %idxprom, !dbg !365
  %arrayidx6 = getelementptr inbounds float*** %2, i64 %indvars.iv43, !dbg !365
  store float** %arrayidx, float*** %arrayidx6, align 8, !dbg !365, !tbaa !314
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !153), !dbg !362
  br i1 %cmp832, label %for.body9.lr.ph, label %for.inc15, !dbg !362

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %n3.040 to i64
  %6 = add i32 %n2.039, %ny, !dbg !362
  br label %for.body9, !dbg !362

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv41 = phi i64 [ %idxprom, %for.body9.lr.ph ], [ %indvars.iv.next42, %for.body9 ], !dbg !362
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %j.033 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %arrayidx11 = getelementptr inbounds float* %0, i64 %indvars.iv, !dbg !366
  %arrayidx13 = getelementptr inbounds float** %1, i64 %indvars.iv41, !dbg !366
  store float* %arrayidx11, float** %arrayidx13, align 8, !dbg !366, !tbaa !314
  %indvars.iv.next = add i64 %indvars.iv, %3, !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !155), !dbg !368
  %inc = add nsw i32 %j.033, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !153), !dbg !362
  %indvars.iv.next42 = add i64 %indvars.iv41, 1, !dbg !362
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !154), !dbg !362
  %exitcond = icmp eq i32 %inc, %ny, !dbg !362
  br i1 %exitcond, label %for.cond7.for.inc15_crit_edge, label %for.body9, !dbg !362

for.cond7.for.inc15_crit_edge:                    ; preds = %for.body9
  %7 = add i32 %4, %n3.040, !dbg !362
  br label %for.inc15, !dbg !362

for.inc15:                                        ; preds = %for.cond7.for.inc15_crit_edge, %for.body
  %n3.1.lcssa = phi i32 [ %7, %for.cond7.for.inc15_crit_edge ], [ %n3.040, %for.body ]
  %n2.1.lcssa = phi i32 [ %6, %for.cond7.for.inc15_crit_edge ], [ %n2.039, %for.body ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !360
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32, !dbg !360
  %exitcond45 = icmp eq i32 %lftr.wideiv, %nx, !dbg !360
  br i1 %exitcond45, label %for.end17, label %for.body, !dbg !360

for.end17:                                        ; preds = %for.inc15, %entry
  ret float*** %2, !dbg !369
}

; Function Attrs: nounwind optsize uwtable
define void @free_rgrid(float*** %grid, i32 %nx, i32 %ny) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float*** %grid}, i64 0, metadata !160), !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !161), !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !162), !dbg !370
  %0 = load float*** %grid, align 8, !dbg !371, !tbaa !314
  %1 = load float** %0, align 8, !dbg !371, !tbaa !314
  %2 = bitcast float* %1 to i8*, !dbg !371
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 271, i8* %2) #5, !dbg !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !163), !dbg !372
  %cmp7 = icmp sgt i32 %nx, 0, !dbg !372
  br i1 %cmp7, label %for.body, label %for.end, !dbg !372

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds float*** %grid, i64 %indvars.iv, !dbg !374
  %3 = load float*** %arrayidx2, align 8, !dbg !374, !tbaa !314
  %4 = bitcast float** %3 to i8*, !dbg !374
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 273, i8* %4) #5, !dbg !374
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !372
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !372
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !372
  br i1 %exitcond, label %for.end, label %for.body, !dbg !372

for.end:                                          ; preds = %for.body, %entry
  %5 = bitcast float*** %grid to i8*, !dbg !376
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 275, i8* %5) #5, !dbg !376
  ret void, !dbg !377
}

; Function Attrs: nounwind optsize uwtable
define float @print_rgrid(%struct._IO_FILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !168), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !169), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !170), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !171), !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !172), !dbg !378
  tail call void @llvm.dbg.value(metadata !{float*** %grid}, i64 0, metadata !173), !dbg !378
  tail call void @llvm.dbg.value(metadata !379, i64 0, metadata !178), !dbg !380
  %tobool = icmp ne %struct._IO_FILE* %fp, null, !dbg !381
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !381

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0), i8* %title) #5, !dbg !382
  br label %for.cond.preheader, !dbg !382

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp48 = icmp sgt i32 %nx, 0, !dbg !383
  br i1 %cmp48, label %for.cond1.preheader.lr.ph, label %for.end24, !dbg !383

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp244 = icmp sgt i32 %ny, 0, !dbg !385
  %cmp541 = icmp sgt i32 %nz, 0, !dbg !387
  br label %for.cond1.preheader, !dbg !383

for.cond1.preheader:                              ; preds = %for.inc22, %for.cond1.preheader.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc22 ]
  %gtot.050 = phi float [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %gtot.1.lcssa, %for.inc22 ]
  br i1 %cmp244, label %for.cond4.preheader.lr.ph, label %for.inc22, !dbg !385

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv56, !dbg !389
  br label %for.cond4.preheader, !dbg !385

for.cond4.preheader:                              ; preds = %for.inc19, %for.cond4.preheader.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next53, %for.inc19 ]
  %gtot.146 = phi float [ %gtot.050, %for.cond4.preheader.lr.ph ], [ %gtot.2.lcssa, %for.inc19 ]
  br i1 %cmp541, label %for.body6, label %for.inc19, !dbg !387

for.body6:                                        ; preds = %if.end18, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end18 ]
  %gtot.243 = phi float [ %gtot.146, %for.cond4.preheader ], [ %add, %if.end18 ]
  %0 = load float*** %arrayidx, align 8, !dbg !389, !tbaa !314
  %arrayidx9 = getelementptr inbounds float** %0, i64 %indvars.iv52, !dbg !389
  %1 = load float** %arrayidx9, align 8, !dbg !389, !tbaa !314
  %arrayidx10 = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !389
  %2 = load float* %arrayidx10, align 4, !dbg !389, !tbaa !391
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !177), !dbg !389
  br i1 %tobool, label %land.lhs.true, label %if.end18, !dbg !392

land.lhs.true:                                    ; preds = %for.body6
  %fabsf = tail call float @fabsf(float %2) #6, !dbg !392
  %3 = fpext float %fabsf to double, !dbg !392
  %cmp13 = fcmp ogt double %3, 1.200000e-38, !dbg !392
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !392

if.then15:                                        ; preds = %land.lhs.true
  %conv = fpext float %2 to double, !dbg !392
  %4 = trunc i64 %indvars.iv to i32, !dbg !393
  %5 = trunc i64 %indvars.iv52 to i32, !dbg !393
  %6 = trunc i64 %indvars.iv56 to i32, !dbg !393
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %6, i32 %5, i32 %4, double %conv) #5, !dbg !393
  br label %if.end18, !dbg !393

if.end18:                                         ; preds = %if.then15, %land.lhs.true, %for.body6
  %add = fadd float %gtot.243, %2, !dbg !394
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !178), !dbg !394
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !387
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !387
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !387
  br i1 %exitcond, label %for.inc19, label %for.body6, !dbg !387

for.inc19:                                        ; preds = %if.end18, %for.cond4.preheader
  %gtot.2.lcssa = phi float [ %gtot.146, %for.cond4.preheader ], [ %add, %if.end18 ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !385
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32, !dbg !385
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %ny, !dbg !385
  br i1 %exitcond55, label %for.inc22, label %for.cond4.preheader, !dbg !385

for.inc22:                                        ; preds = %for.inc19, %for.cond1.preheader
  %gtot.1.lcssa = phi float [ %gtot.050, %for.cond1.preheader ], [ %gtot.2.lcssa, %for.inc19 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1, !dbg !383
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32, !dbg !383
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %nx, !dbg !383
  br i1 %exitcond59, label %for.end24, label %for.cond1.preheader, !dbg !383

for.end24:                                        ; preds = %for.inc22, %for.cond.preheader
  %gtot.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %gtot.1.lcssa, %for.inc22 ]
  ret float %gtot.0.lcssa, !dbg !395
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @print_rgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !183), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !184), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !185), !dbg !396
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !186), !dbg !396
  tail call void @llvm.dbg.value(metadata !{float*** %grid}, i64 0, metadata !187), !dbg !396
  tail call void @llvm.dbg.value(metadata !397, i64 0, metadata !192), !dbg !398
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !399
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !188), !dbg !399
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !189), !dbg !400
  %cmp48 = icmp sgt i32 %nx, 0, !dbg !400
  br i1 %cmp48, label %for.cond1.preheader.lr.ph, label %for.end29, !dbg !400

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp244 = icmp sgt i32 %ny, 0, !dbg !402
  %cmp541 = icmp sgt i32 %nz, 0, !dbg !405
  br label %for.cond1.preheader, !dbg !400

for.cond1.preheader:                              ; preds = %for.inc27, %for.cond1.preheader.lr.ph
  %indvars.iv55 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next56, %for.inc27 ]
  %n.049 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %n.1.lcssa, %for.inc27 ]
  br i1 %cmp244, label %for.cond4.preheader.lr.ph, label %for.inc27, !dbg !402

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv55, !dbg !408
  %0 = trunc i64 %indvars.iv55 to i32, !dbg !410
  %mul = shl nsw i32 %0, 2, !dbg !410
  %conv13 = sitofp i32 %mul to float, !dbg !410
  %conv18 = fpext float %conv13 to double, !dbg !412
  br label %for.cond4.preheader, !dbg !402

for.cond4.preheader:                              ; preds = %for.inc24, %for.cond4.preheader.lr.ph
  %indvars.iv51 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next52, %for.inc24 ]
  %n.145 = phi i32 [ %n.049, %for.cond4.preheader.lr.ph ], [ %n.2.lcssa, %for.inc24 ]
  br i1 %cmp541, label %for.body6.lr.ph, label %for.inc24, !dbg !405

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = trunc i64 %indvars.iv51 to i32, !dbg !413
  %mul14 = shl nsw i32 %1, 2, !dbg !413
  %conv15 = sitofp i32 %mul14 to float, !dbg !413
  %conv19 = fpext float %conv15 to double, !dbg !412
  br label %for.body6, !dbg !405

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %n.242 = phi i32 [ %n.145, %for.body6.lr.ph ], [ %inc, %for.body6 ]
  %2 = load float*** %arrayidx, align 8, !dbg !408, !tbaa !314
  %arrayidx9 = getelementptr inbounds float** %2, i64 %indvars.iv51, !dbg !408
  %3 = load float** %arrayidx9, align 8, !dbg !408, !tbaa !314
  %arrayidx10 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !408
  %4 = load float* %arrayidx10, align 4, !dbg !408, !tbaa !391
  tail call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !197), !dbg !408
  tail call void @llvm.dbg.value(metadata !{float %conv13}, i64 0, metadata !194), !dbg !410
  tail call void @llvm.dbg.value(metadata !{float %conv15}, i64 0, metadata !195), !dbg !413
  %5 = trunc i64 %indvars.iv to i32, !dbg !414
  %mul16 = shl nsw i32 %5, 2, !dbg !414
  %conv17 = sitofp i32 %mul16 to float, !dbg !414
  tail call void @llvm.dbg.value(metadata !{float %conv17}, i64 0, metadata !196), !dbg !414
  %inc = add nsw i32 %n.242, 1, !dbg !412
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !192), !dbg !412
  %conv20 = fpext float %conv17 to double, !dbg !412
  %conv21 = fpext float %4 to double, !dbg !412
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.242, double %conv18, double %conv19, double %conv20, double 0.000000e+00, double %conv21) #5, !dbg !412
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !405
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !405
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !405
  br i1 %exitcond, label %for.cond4.for.inc24_crit_edge, label %for.body6, !dbg !405

for.cond4.for.inc24_crit_edge:                    ; preds = %for.body6
  %6 = add i32 %n.145, %nz, !dbg !405
  br label %for.inc24, !dbg !405

for.inc24:                                        ; preds = %for.cond4.for.inc24_crit_edge, %for.cond4.preheader
  %n.2.lcssa = phi i32 [ %6, %for.cond4.for.inc24_crit_edge ], [ %n.145, %for.cond4.preheader ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1, !dbg !402
  %lftr.wideiv53 = trunc i64 %indvars.iv.next52 to i32, !dbg !402
  %exitcond54 = icmp eq i32 %lftr.wideiv53, %ny, !dbg !402
  br i1 %exitcond54, label %for.inc27, label %for.cond4.preheader, !dbg !402

for.inc27:                                        ; preds = %for.inc24, %for.cond1.preheader
  %n.1.lcssa = phi i32 [ %n.049, %for.cond1.preheader ], [ %n.2.lcssa, %for.inc24 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, 1, !dbg !400
  %lftr.wideiv57 = trunc i64 %indvars.iv.next56 to i32, !dbg !400
  %exitcond58 = icmp eq i32 %lftr.wideiv57, %nx, !dbg !400
  br i1 %exitcond58, label %for.end29, label %for.cond1.preheader, !dbg !400

for.end29:                                        ; preds = %for.inc27, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #5, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @clear_rgrid(i32 %nx, i32 %ny, i32 %nz, float*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !202), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !203), !dbg !417
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !204), !dbg !417
  tail call void @llvm.dbg.value(metadata !{float*** %grid}, i64 0, metadata !205), !dbg !417
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !206), !dbg !418
  %cmp27 = icmp sgt i32 %nx, 0, !dbg !418
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16, !dbg !418

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %ny, 0, !dbg !420
  %cmp523 = icmp sgt i32 %nz, 0, !dbg !422
  %0 = add i32 %nz, -1, !dbg !418
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2, !dbg !418
  %3 = add i64 %2, 4, !dbg !418
  br label %for.cond1.preheader, !dbg !418

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14, !dbg !420

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %grid, i64 %indvars.iv29, !dbg !424
  br label %for.cond4.preheader, !dbg !420

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next, %for.inc11 ]
  br i1 %cmp523, label %for.body6.lr.ph, label %for.inc11, !dbg !422

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %4 = load float*** %arrayidx, align 8, !dbg !424, !tbaa !314
  %arrayidx9 = getelementptr inbounds float** %4, i64 %indvars.iv, !dbg !424
  %5 = load float** %arrayidx9, align 8, !dbg !424, !tbaa !314
  %6 = bitcast float* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %3, i32 4, i1 false), !dbg !424
  br label %for.inc11, !dbg !422

for.inc11:                                        ; preds = %for.body6.lr.ph, %for.cond4.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !420
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !420
  %exitcond = icmp eq i32 %lftr.wideiv, %ny, !dbg !420
  br i1 %exitcond, label %for.inc14, label %for.cond4.preheader, !dbg !420

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !418
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32, !dbg !418
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %nx, !dbg !418
  br i1 %exitcond32, label %for.end16, label %for.cond1.preheader, !dbg !418

for.end16:                                        ; preds = %for.inc14, %entry
  ret void, !dbg !425
}

; Function Attrs: nounwind optsize uwtable
define void @clear_cgrid(i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !222), !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !223), !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !224), !dbg !426
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex*** %grid}, i64 0, metadata !225), !dbg !426
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !226), !dbg !427
  %cmp27 = icmp sgt i32 %nx, 0, !dbg !427
  br i1 %cmp27, label %for.cond1.preheader.lr.ph, label %for.end16, !dbg !427

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp225 = icmp sgt i32 %ny, 0, !dbg !429
  %cmp523 = icmp sgt i32 %nz, 0, !dbg !431
  br label %for.cond1.preheader, !dbg !427

for.cond1.preheader:                              ; preds = %for.inc14, %for.cond1.preheader.lr.ph
  %indvars.iv33 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next34, %for.inc14 ]
  br i1 %cmp225, label %for.cond4.preheader.lr.ph, label %for.inc14, !dbg !429

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv33, !dbg !433
  br label %for.cond4.preheader, !dbg !429

for.cond4.preheader:                              ; preds = %for.inc11, %for.cond4.preheader.lr.ph
  %indvars.iv29 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next30, %for.inc11 ]
  br i1 %cmp523, label %for.body6, label %for.inc11, !dbg !431

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %0 = load %struct.t_complex*** %arrayidx, align 8, !dbg !433, !tbaa !314
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %0, i64 %indvars.iv29, !dbg !433
  %1 = load %struct.t_complex** %arrayidx9, align 8, !dbg !433, !tbaa !314
  %arrayidx10 = getelementptr inbounds %struct.t_complex* %1, i64 %indvars.iv, !dbg !433
  %2 = bitcast %struct.t_complex* %arrayidx10 to i64*, !dbg !433
  store i64 0, i64* %2, align 4, !dbg !433
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !431
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !431
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !431
  br i1 %exitcond, label %for.inc11, label %for.body6, !dbg !431

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !429
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32, !dbg !429
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %ny, !dbg !429
  br i1 %exitcond32, label %for.inc14, label %for.cond4.preheader, !dbg !429

for.inc14:                                        ; preds = %for.inc11, %for.cond1.preheader
  %indvars.iv.next34 = add i64 %indvars.iv33, 1, !dbg !427
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32, !dbg !427
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %nx, !dbg !427
  br i1 %exitcond36, label %for.end16, label %for.cond1.preheader, !dbg !427

for.end16:                                        ; preds = %for.inc14, %entry
  ret void, !dbg !434
}

; Function Attrs: nounwind optsize uwtable
define %struct.t_complex*** @mk_cgrid(i32 %nx, i32 %ny, i32 %nz) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !233), !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !234), !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !235), !dbg !435
  %mul = mul nsw i32 %ny, %nx, !dbg !436
  %mul1 = mul nsw i32 %mul, %nz, !dbg !436
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 350, i32 %mul1, i32 8) #5, !dbg !436
  %0 = bitcast i8* %call to %struct.t_complex*, !dbg !436
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex* %0}, i64 0, metadata !236), !dbg !436
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 351, i32 %mul, i32 8) #5, !dbg !437
  %1 = bitcast i8* %call3 to %struct.t_complex**, !dbg !437
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex** %1}, i64 0, metadata !237), !dbg !437
  %call4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 352, i32 %nx, i32 8) #5, !dbg !438
  %2 = bitcast i8* %call4 to %struct.t_complex***, !dbg !438
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex*** %2}, i64 0, metadata !238), !dbg !438
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !242), !dbg !439
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !241), !dbg !439
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !239), !dbg !440
  %cmp37 = icmp sgt i32 %nx, 0, !dbg !440
  br i1 %cmp37, label %for.body.lr.ph, label %for.end17, !dbg !440

for.body.lr.ph:                                   ; preds = %entry
  %cmp832 = icmp sgt i32 %ny, 0, !dbg !442
  %3 = sext i32 %nz to i64
  %4 = mul i32 %nz, %ny, !dbg !440
  br label %for.body, !dbg !440

for.body:                                         ; preds = %for.inc15, %for.body.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next44, %for.inc15 ]
  %n3.040 = phi i32 [ 0, %for.body.lr.ph ], [ %n3.1.lcssa, %for.inc15 ]
  %n2.039 = phi i32 [ 0, %for.body.lr.ph ], [ %n2.1.lcssa, %for.inc15 ]
  %idxprom = sext i32 %n2.039 to i64, !dbg !445
  %arrayidx = getelementptr inbounds %struct.t_complex** %1, i64 %idxprom, !dbg !445
  %arrayidx6 = getelementptr inbounds %struct.t_complex*** %2, i64 %indvars.iv43, !dbg !445
  store %struct.t_complex** %arrayidx, %struct.t_complex*** %arrayidx6, align 8, !dbg !445, !tbaa !314
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !442
  br i1 %cmp832, label %for.body9.lr.ph, label %for.inc15, !dbg !442

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %n3.040 to i64
  %6 = add i32 %n2.039, %ny, !dbg !442
  br label %for.body9, !dbg !442

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv41 = phi i64 [ %idxprom, %for.body9.lr.ph ], [ %indvars.iv.next42, %for.body9 ], !dbg !442
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %j.033 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9 ]
  %arrayidx11 = getelementptr inbounds %struct.t_complex* %0, i64 %indvars.iv, !dbg !446
  %arrayidx13 = getelementptr inbounds %struct.t_complex** %1, i64 %indvars.iv41, !dbg !446
  store %struct.t_complex* %arrayidx11, %struct.t_complex** %arrayidx13, align 8, !dbg !446, !tbaa !314
  %indvars.iv.next = add i64 %indvars.iv, %3, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !242), !dbg !448
  %inc = add nsw i32 %j.033, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !240), !dbg !442
  %indvars.iv.next42 = add i64 %indvars.iv41, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !241), !dbg !442
  %exitcond = icmp eq i32 %inc, %ny, !dbg !442
  br i1 %exitcond, label %for.cond7.for.inc15_crit_edge, label %for.body9, !dbg !442

for.cond7.for.inc15_crit_edge:                    ; preds = %for.body9
  %7 = add i32 %4, %n3.040, !dbg !442
  br label %for.inc15, !dbg !442

for.inc15:                                        ; preds = %for.cond7.for.inc15_crit_edge, %for.body
  %n3.1.lcssa = phi i32 [ %7, %for.cond7.for.inc15_crit_edge ], [ %n3.040, %for.body ]
  %n2.1.lcssa = phi i32 [ %6, %for.cond7.for.inc15_crit_edge ], [ %n2.039, %for.body ]
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !440
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32, !dbg !440
  %exitcond45 = icmp eq i32 %lftr.wideiv, %nx, !dbg !440
  br i1 %exitcond45, label %for.end17, label %for.body, !dbg !440

for.end17:                                        ; preds = %for.inc15, %entry
  ret %struct.t_complex*** %2, !dbg !449
}

; Function Attrs: nounwind optsize uwtable
define void @free_cgrid(%struct.t_complex*** %grid, i32 %nx, i32 %ny) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex*** %grid}, i64 0, metadata !247), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !248), !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !249), !dbg !450
  %0 = load %struct.t_complex*** %grid, align 8, !dbg !451, !tbaa !314
  %1 = load %struct.t_complex** %0, align 8, !dbg !451, !tbaa !314
  %2 = bitcast %struct.t_complex* %1 to i8*, !dbg !451
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 369, i8* %2) #5, !dbg !451
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !250), !dbg !452
  %cmp7 = icmp sgt i32 %nx, 0, !dbg !452
  br i1 %cmp7, label %for.body, label %for.end, !dbg !452

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx2 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv, !dbg !454
  %3 = load %struct.t_complex*** %arrayidx2, align 8, !dbg !454, !tbaa !314
  %4 = bitcast %struct.t_complex** %3 to i8*, !dbg !454
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 371, i8* %4) #5, !dbg !454
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !452
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !452
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !452
  br i1 %exitcond, label %for.end, label %for.body, !dbg !452

for.end:                                          ; preds = %for.body, %entry
  %5 = bitcast %struct.t_complex*** %grid to i8*, !dbg !455
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 372, i8* %5) #5, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: nounwind optsize uwtable
define <2 x float> @print_cgrid(%struct._IO_FILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !255), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !256), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !257), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !258), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !259), !dbg !457
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex*** %grid}, i64 0, metadata !260), !dbg !458
  tail call void @llvm.dbg.declare(metadata !459, metadata !264), !dbg !460
  tail call void @llvm.dbg.declare(metadata !459, metadata !265), !dbg !460
  %tobool = icmp ne %struct._IO_FILE* %fp, null, !dbg !461
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !461

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str14, i64 0, i64 0), i8* %title) #5, !dbg !462
  br label %for.cond.preheader, !dbg !462

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp65 = icmp sgt i32 %nx, 0, !dbg !463
  br i1 %cmp65, label %for.cond1.preheader.lr.ph, label %for.end32, !dbg !463

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp259 = icmp sgt i32 %ny, 0, !dbg !465
  %cmp555 = icmp sgt i32 %nz, 0, !dbg !467
  br label %for.cond1.preheader, !dbg !463

for.cond1.preheader:                              ; preds = %for.inc30, %for.cond1.preheader.lr.ph
  %indvars.iv74 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next75, %for.inc30 ]
  %gtot.sroa.0.067 = phi <2 x float> [ zeroinitializer, %for.cond1.preheader.lr.ph ], [ %gtot.sroa.0.1.lcssa, %for.inc30 ]
  br i1 %cmp259, label %for.cond4.preheader.lr.ph, label %for.inc30, !dbg !465

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv74, !dbg !469
  br label %for.cond4.preheader, !dbg !465

for.cond4.preheader:                              ; preds = %for.inc27, %for.cond4.preheader.lr.ph
  %indvars.iv70 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next71, %for.inc27 ]
  %gtot.sroa.0.161 = phi <2 x float> [ %gtot.sroa.0.067, %for.cond4.preheader.lr.ph ], [ %gtot.sroa.0.2.lcssa, %for.inc27 ]
  br i1 %cmp555, label %for.body6, label %for.inc27, !dbg !467

for.body6:                                        ; preds = %if.end25, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end25 ]
  %gtot.sroa.0.257 = phi <2 x float> [ %gtot.sroa.0.161, %for.cond4.preheader ], [ %retval.sroa.0.4.vec.insert.i, %if.end25 ]
  %0 = load %struct.t_complex*** %arrayidx, align 8, !dbg !469, !tbaa !314
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %0, i64 %indvars.iv70, !dbg !469
  %1 = load %struct.t_complex** %arrayidx9, align 8, !dbg !469, !tbaa !314
  %arrayidx10 = getelementptr inbounds %struct.t_complex* %1, i64 %indvars.iv, !dbg !469
  %g.sroa.0.0.cast = bitcast %struct.t_complex* %arrayidx10 to <2 x float>*, !dbg !469
  %g.sroa.0.0.copyload = load <2 x float>* %g.sroa.0.0.cast, align 4, !dbg !469
  %g.sroa.0.0.vec.extract = extractelement <2 x float> %g.sroa.0.0.copyload, i32 0, !dbg !471
  br i1 %tobool, label %land.lhs.true, label %for.body6.if.end25_crit_edge, !dbg !471

for.body6.if.end25_crit_edge:                     ; preds = %for.body6
  %b.sroa.0.4.vec.extract.i.pre = extractelement <2 x float> %g.sroa.0.0.copyload, i32 1, !dbg !472
  br label %if.end25, !dbg !471

land.lhs.true:                                    ; preds = %for.body6
  %conv = fpext float %g.sroa.0.0.vec.extract to double, !dbg !471
  %fabsf = tail call float @fabsf(float %g.sroa.0.0.vec.extract) #6, !dbg !471
  %2 = fpext float %fabsf to double, !dbg !471
  %cmp13 = fcmp ogt double %2, 1.200000e-38, !dbg !471
  %g.sroa.0.4.vec.extract38.pre = extractelement <2 x float> %g.sroa.0.0.copyload, i32 1, !dbg !474
  br i1 %cmp13, label %if.then19, label %lor.lhs.false, !dbg !471

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fabsf54 = tail call float @fabsf(float %g.sroa.0.4.vec.extract38.pre) #6, !dbg !471
  %3 = fpext float %fabsf54 to double, !dbg !471
  %cmp17 = fcmp ogt double %3, 1.200000e-38, !dbg !471
  br i1 %cmp17, label %if.then19, label %if.end25, !dbg !471

if.then19:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %conv23 = fpext float %g.sroa.0.4.vec.extract38.pre to double, !dbg !474
  %4 = trunc i64 %indvars.iv to i32, !dbg !474
  %5 = trunc i64 %indvars.iv70 to i32, !dbg !474
  %6 = trunc i64 %indvars.iv74 to i32, !dbg !474
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str15, i64 0, i64 0), i8* %title, i32 %6, i32 %5, i32 %4, double %conv, double %conv23) #5, !dbg !474
  br label %if.end25, !dbg !474

if.end25:                                         ; preds = %for.body6.if.end25_crit_edge, %if.then19, %lor.lhs.false
  %b.sroa.0.4.vec.extract.i.pre-phi = phi float [ %b.sroa.0.4.vec.extract.i.pre, %for.body6.if.end25_crit_edge ], [ %g.sroa.0.4.vec.extract38.pre, %if.then19 ], [ %g.sroa.0.4.vec.extract38.pre, %lor.lhs.false ], !dbg !472
  tail call void @llvm.dbg.declare(metadata !459, metadata !289), !dbg !475
  tail call void @llvm.dbg.declare(metadata !459, metadata !290), !dbg !475
  tail call void @llvm.dbg.declare(metadata !459, metadata !291), !dbg !476
  %a.sroa.0.0.vec.extract.i = extractelement <2 x float> %gtot.sroa.0.257, i32 0, !dbg !477
  %add.i = fadd float %a.sroa.0.0.vec.extract.i, %g.sroa.0.0.vec.extract, !dbg !477
  %a.sroa.0.4.vec.extract.i = extractelement <2 x float> %gtot.sroa.0.257, i32 1, !dbg !472
  %add4.i = fadd float %a.sroa.0.4.vec.extract.i, %b.sroa.0.4.vec.extract.i.pre-phi, !dbg !472
  %retval.sroa.0.0.vec.insert.i = insertelement <2 x float> undef, float %add.i, i32 0, !dbg !478
  %retval.sroa.0.4.vec.insert.i = insertelement <2 x float> %retval.sroa.0.0.vec.insert.i, float %add4.i, i32 1, !dbg !478
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !467
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !467
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !467
  br i1 %exitcond, label %for.inc27, label %for.body6, !dbg !467

for.inc27:                                        ; preds = %if.end25, %for.cond4.preheader
  %gtot.sroa.0.2.lcssa = phi <2 x float> [ %gtot.sroa.0.161, %for.cond4.preheader ], [ %retval.sroa.0.4.vec.insert.i, %if.end25 ]
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !465
  %lftr.wideiv72 = trunc i64 %indvars.iv.next71 to i32, !dbg !465
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %ny, !dbg !465
  br i1 %exitcond73, label %for.inc30, label %for.cond4.preheader, !dbg !465

for.inc30:                                        ; preds = %for.inc27, %for.cond1.preheader
  %gtot.sroa.0.1.lcssa = phi <2 x float> [ %gtot.sroa.0.067, %for.cond1.preheader ], [ %gtot.sroa.0.2.lcssa, %for.inc27 ]
  %indvars.iv.next75 = add i64 %indvars.iv74, 1, !dbg !463
  %lftr.wideiv76 = trunc i64 %indvars.iv.next75 to i32, !dbg !463
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %nx, !dbg !463
  br i1 %exitcond77, label %for.end32, label %for.cond1.preheader, !dbg !463

for.end32:                                        ; preds = %for.inc30, %for.cond.preheader
  %gtot.sroa.0.0.lcssa = phi <2 x float> [ zeroinitializer, %for.cond.preheader ], [ %gtot.sroa.0.1.lcssa, %for.inc30 ]
  ret <2 x float> %gtot.sroa.0.0.lcssa, !dbg !479
}

; Function Attrs: nounwind optsize uwtable
define void @print_cgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture %grid) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !270), !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !271), !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !272), !dbg !480
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !273), !dbg !480
  tail call void @llvm.dbg.value(metadata !{%struct.t_complex*** %grid}, i64 0, metadata !274), !dbg !480
  tail call void @llvm.dbg.value(metadata !397, i64 0, metadata !279), !dbg !481
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !482
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !275), !dbg !482
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !483
  %cmp49 = icmp sgt i32 %nx, 0, !dbg !483
  br i1 %cmp49, label %for.cond1.preheader.lr.ph, label %for.end30, !dbg !483

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp245 = icmp sgt i32 %ny, 0, !dbg !485
  %cmp542 = icmp sgt i32 %nz, 0, !dbg !488
  br label %for.cond1.preheader, !dbg !483

for.cond1.preheader:                              ; preds = %for.inc28, %for.cond1.preheader.lr.ph
  %indvars.iv56 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next57, %for.inc28 ]
  %n.050 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %n.1.lcssa, %for.inc28 ]
  br i1 %cmp245, label %for.cond4.preheader.lr.ph, label %for.inc28, !dbg !485

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv56, !dbg !491
  %0 = trunc i64 %indvars.iv56 to i32, !dbg !493
  %mul = shl nsw i32 %0, 2, !dbg !493
  %conv14 = sitofp i32 %mul to float, !dbg !493
  %conv19 = fpext float %conv14 to double, !dbg !495
  br label %for.cond4.preheader, !dbg !485

for.cond4.preheader:                              ; preds = %for.inc25, %for.cond4.preheader.lr.ph
  %indvars.iv52 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next53, %for.inc25 ]
  %n.146 = phi i32 [ %n.050, %for.cond4.preheader.lr.ph ], [ %n.2.lcssa, %for.inc25 ]
  br i1 %cmp542, label %for.body6.lr.ph, label %for.inc25, !dbg !488

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = trunc i64 %indvars.iv52 to i32, !dbg !496
  %mul15 = shl nsw i32 %1, 2, !dbg !496
  %conv16 = sitofp i32 %mul15 to float, !dbg !496
  %conv20 = fpext float %conv16 to double, !dbg !495
  br label %for.body6, !dbg !488

for.body6:                                        ; preds = %for.inc, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %n.243 = phi i32 [ %n.146, %for.body6.lr.ph ], [ %n.3, %for.inc ]
  %2 = load %struct.t_complex*** %arrayidx, align 8, !dbg !491, !tbaa !314
  %arrayidx9 = getelementptr inbounds %struct.t_complex** %2, i64 %indvars.iv52, !dbg !491
  %3 = load %struct.t_complex** %arrayidx9, align 8, !dbg !491, !tbaa !314
  %re = getelementptr inbounds %struct.t_complex* %3, i64 %indvars.iv, i32 0, !dbg !491
  %4 = load float* %re, align 4, !dbg !491, !tbaa !391
  tail call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !283), !dbg !491
  %fabsf = tail call float @fabsf(float %4) #6, !dbg !497
  %5 = fpext float %fabsf to double, !dbg !497
  %cmp12 = fcmp ogt double %5, 1.200000e-38, !dbg !497
  br i1 %cmp12, label %if.then, label %for.inc, !dbg !497

if.then:                                          ; preds = %for.body6
  %conv = fpext float %4 to double, !dbg !497
  tail call void @llvm.dbg.value(metadata !{float %conv14}, i64 0, metadata !280), !dbg !493
  tail call void @llvm.dbg.value(metadata !{float %conv16}, i64 0, metadata !281), !dbg !496
  %6 = trunc i64 %indvars.iv to i32, !dbg !498
  %mul17 = shl nsw i32 %6, 2, !dbg !498
  %conv18 = sitofp i32 %mul17 to float, !dbg !498
  tail call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !282), !dbg !498
  %inc = add nsw i32 %n.243, 1, !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !279), !dbg !495
  %conv21 = fpext float %conv18 to double, !dbg !495
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.243, double %conv19, double %conv20, double %conv21, double 0.000000e+00, double %conv) #5, !dbg !495
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body6, %if.then
  %n.3 = phi i32 [ %inc, %if.then ], [ %n.243, %for.body6 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !488
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !488
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !488
  br i1 %exitcond, label %for.inc25, label %for.body6, !dbg !488

for.inc25:                                        ; preds = %for.inc, %for.cond4.preheader
  %n.2.lcssa = phi i32 [ %n.146, %for.cond4.preheader ], [ %n.3, %for.inc ]
  %indvars.iv.next53 = add i64 %indvars.iv52, 1, !dbg !485
  %lftr.wideiv54 = trunc i64 %indvars.iv.next53 to i32, !dbg !485
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %ny, !dbg !485
  br i1 %exitcond55, label %for.inc28, label %for.cond4.preheader, !dbg !485

for.inc28:                                        ; preds = %for.inc25, %for.cond1.preheader
  %n.1.lcssa = phi i32 [ %n.050, %for.cond1.preheader ], [ %n.2.lcssa, %for.inc25 ]
  %indvars.iv.next57 = add i64 %indvars.iv56, 1, !dbg !483
  %lftr.wideiv58 = trunc i64 %indvars.iv.next57 to i32, !dbg !483
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %nx, !dbg !483
  br i1 %exitcond59, label %for.end30, label %for.cond1.preheader, !dbg !483

for.end30:                                        ; preds = %for.inc28, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #5, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !293, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !96, metadata !101, metadata !119, metadata !125, metadata !139, metadata !156, metadata !164, metadata !179, metadata !198, metadata !209, metadata !229, metadata !243, metadata !251, metadata !266, metadata !284}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_fftgrid", metadata !"mk_fftgrid", metadata !"", i32 56, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_fftgrid* (%struct._IO_FILE*, i32, i32, i32, i32, i32)* @mk_fftgrid, null, null, metadata !87, i32 58} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 58] [mk_fftgrid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !30, metadata !21, metadata !21, metadata !21, metadata !21, metadata !21}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fftgrid]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_fftgrid", i32 86, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_fftgrid] [line 86, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 71, i64 512, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 71, size 512, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ptr", i32 72, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ptr] [line 72, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_fft_r]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"t_fft_r", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [t_fft_r] [line 58, size 0, align 0, offset 0] [from real]
!16 = metadata !{i32 786454, metadata !11, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!17 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"localptr", i32 73, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [localptr] [line 73, size 64, align 64, offset 64] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"workspace", i32 74, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [workspace] [line 74, size 64, align 64, offset 128] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nx", i32 75, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [nx] [line 75, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ny", i32 75, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [ny] [line 75, size 32, align 32, offset 224] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nz", i32 75, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [nz] [line 75, size 32, align 32, offset 256] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"la2r", i32 75, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [la2r] [line 75, size 32, align 32, offset 288] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"la2c", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [la2c] [line 75, size 32, align 32, offset 320] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"la12r", i32 75, i64 32, i64 32, i64 352, i32 0, metadata !21} ; [ DW_TAG_member ] [la12r] [line 75, size 32, align 32, offset 352] [from int]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"la12c", i32 75, i64 32, i64 32, i64 384, i32 0, metadata !21} ; [ DW_TAG_member ] [la12c] [line 75, size 32, align 32, offset 384] [from int]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nptr", i32 76, i64 32, i64 32, i64 416, i32 0, metadata !21} ; [ DW_TAG_member ] [nptr] [line 76, size 32, align 32, offset 416] [from int]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nxyz", i32 76, i64 32, i64 32, i64 448, i32 0, metadata !21} ; [ DW_TAG_member ] [nxyz] [line 76, size 32, align 32, offset 448] [from int]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!33 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !36, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !57, metadata !58, metadata !59, metadata !60, metadata !63, metadata !65, metadata !67, metadata !71, metadata !73, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !82, metadata !83}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!38 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!39 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!42 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!46 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!47 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!48 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !37} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!49 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !50} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!51 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !54, metadata !56}
!53 = metadata !{i32 786445, metadata !33, metadata !51, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786445, metadata !33, metadata !51, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!56 = metadata !{i32 786445, metadata !33, metadata !51, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!57 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !55} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!58 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !21} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!59 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!60 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !61} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!61 = metadata !{i32 786454, metadata !33, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!62 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!63 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !64} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!64 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!65 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !66} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!66 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!67 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !68} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !38, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!71 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !72} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !74} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!74 = metadata !{i32 786454, metadata !33, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!75 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!76 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!77 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!78 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !72} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!79 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !80} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!80 = metadata !{i32 786454, metadata !33, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!81 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!82 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !21} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!83 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !84} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!84 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !38, metadata !85, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!88 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777272, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 56]
!89 = metadata !{i32 786689, metadata !4, metadata !"bParallel", metadata !5, i32 33554488, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bParallel] [line 56]
!90 = metadata !{i32 786689, metadata !4, metadata !"nx", metadata !5, i32 50331704, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 56]
!91 = metadata !{i32 786689, metadata !4, metadata !"ny", metadata !5, i32 67108920, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 56]
!92 = metadata !{i32 786689, metadata !4, metadata !"nz", metadata !5, i32 83886136, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 56]
!93 = metadata !{i32 786689, metadata !4, metadata !"bOptFFT", metadata !5, i32 100663353, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOptFFT] [line 57]
!94 = metadata !{i32 786688, metadata !4, metadata !"flags", metadata !5, i32 60, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 60]
!95 = metadata !{i32 786688, metadata !4, metadata !"grid", metadata !5, i32 61, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grid] [line 61]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"done_fftgrid", metadata !"done_fftgrid", metadata !"", i32 149, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*)* @done_fftgrid, null, null, metadata !99, i32 150} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 150] [done_fftgrid]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{null, metadata !8}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786689, metadata !96, metadata !"grid", metadata !5, i32 16777365, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 149]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmxfft3D", metadata !"gmxfft3D", metadata !"", i32 164, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*, i32, %struct.t_commrec*)* @gmxfft3D, null, null, metadata !115, i32 165} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 165] [gmxfft3D]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{null, metadata !8, metadata !21, metadata !104}
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!105 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!106 = metadata !{i32 786451, metadata !107, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !108, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!107 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!109 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!110 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!111 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!112 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!113 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!114 = metadata !{i32 786445, metadata !107, metadata !106, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!115 = metadata !{metadata !116, metadata !117, metadata !118}
!116 = metadata !{i32 786689, metadata !101, metadata !"grid", metadata !5, i32 16777380, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 164]
!117 = metadata !{i32 786689, metadata !101, metadata !"dir", metadata !5, i32 33554596, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 164]
!118 = metadata !{i32 786689, metadata !101, metadata !"cr", metadata !5, i32 50331812, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 164]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_fftgrid", metadata !"clear_fftgrid", metadata !"", i32 206, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*)* @clear_fftgrid, null, null, metadata !120, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [clear_fftgrid]
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124}
!121 = metadata !{i32 786689, metadata !119, metadata !"grid", metadata !5, i32 16777422, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 206]
!122 = metadata !{i32 786688, metadata !119, metadata !"i", metadata !5, i32 209, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!123 = metadata !{i32 786688, metadata !119, metadata !"ngrid", metadata !5, i32 209, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngrid] [line 209]
!124 = metadata !{i32 786688, metadata !119, metadata !"ptr", metadata !5, i32 210, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 210]
!125 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"unpack_fftgrid", metadata !"unpack_fftgrid", metadata !"", i32 220, metadata !126, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**)* @unpack_fftgrid, null, null, metadata !130, i32 222} ; [ DW_TAG_subprogram ] [line 220] [def] [scope 222] [unpack_fftgrid]
!126 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!127 = metadata !{null, metadata !8, metadata !128, metadata !128, metadata !128, metadata !128, metadata !128, metadata !21, metadata !129}
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!131 = metadata !{i32 786689, metadata !125, metadata !"grid", metadata !5, i32 16777436, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 220]
!132 = metadata !{i32 786689, metadata !125, metadata !"nx", metadata !5, i32 33554652, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 220]
!133 = metadata !{i32 786689, metadata !125, metadata !"ny", metadata !5, i32 50331868, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 220]
!134 = metadata !{i32 786689, metadata !125, metadata !"nz", metadata !5, i32 67109084, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 220]
!135 = metadata !{i32 786689, metadata !125, metadata !"la2", metadata !5, i32 83886301, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [la2] [line 221]
!136 = metadata !{i32 786689, metadata !125, metadata !"la12", metadata !5, i32 100663517, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [la12] [line 221]
!137 = metadata !{i32 786689, metadata !125, metadata !"bReal", metadata !5, i32 117440733, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bReal] [line 221]
!138 = metadata !{i32 786689, metadata !125, metadata !"ptr", metadata !5, i32 134217949, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ptr] [line 221]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_rgrid", metadata !"mk_rgrid", metadata !"", i32 245, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float*** (i32, i32, i32)* @mk_rgrid, null, null, metadata !145, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [mk_rgrid]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !142, metadata !21, metadata !21, metadata !21}
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!146 = metadata !{i32 786689, metadata !139, metadata !"nx", metadata !5, i32 16777461, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 245]
!147 = metadata !{i32 786689, metadata !139, metadata !"ny", metadata !5, i32 33554677, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 245]
!148 = metadata !{i32 786689, metadata !139, metadata !"nz", metadata !5, i32 50331893, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 245]
!149 = metadata !{i32 786688, metadata !139, metadata !"ptr1", metadata !5, i32 247, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr1] [line 247]
!150 = metadata !{i32 786688, metadata !139, metadata !"ptr2", metadata !5, i32 248, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr2] [line 248]
!151 = metadata !{i32 786688, metadata !139, metadata !"ptr3", metadata !5, i32 249, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr3] [line 249]
!152 = metadata !{i32 786688, metadata !139, metadata !"i", metadata !5, i32 250, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 250]
!153 = metadata !{i32 786688, metadata !139, metadata !"j", metadata !5, i32 250, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 250]
!154 = metadata !{i32 786688, metadata !139, metadata !"n2", metadata !5, i32 250, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 250]
!155 = metadata !{i32 786688, metadata !139, metadata !"n3", metadata !5, i32 250, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n3] [line 250]
!156 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"free_rgrid", metadata !"free_rgrid", metadata !"", i32 267, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float***, i32, i32)* @free_rgrid, null, null, metadata !159, i32 268} ; [ DW_TAG_subprogram ] [line 267] [def] [scope 268] [free_rgrid]
!157 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{null, metadata !142, metadata !21, metadata !21}
!159 = metadata !{metadata !160, metadata !161, metadata !162, metadata !163}
!160 = metadata !{i32 786689, metadata !156, metadata !"grid", metadata !5, i32 16777483, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 267]
!161 = metadata !{i32 786689, metadata !156, metadata !"nx", metadata !5, i32 33554699, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 267]
!162 = metadata !{i32 786689, metadata !156, metadata !"ny", metadata !5, i32 50331915, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 267]
!163 = metadata !{i32 786688, metadata !156, metadata !"i", metadata !5, i32 269, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 269]
!164 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_rgrid", metadata !"print_rgrid", metadata !"", i32 278, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._IO_FILE*, i8*, i32, i32, i32, float***)* @print_rgrid, null, null, metadata !167, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [print_rgrid]
!165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !16, metadata !30, metadata !37, metadata !21, metadata !21, metadata !21, metadata !142}
!167 = metadata !{metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178}
!168 = metadata !{i32 786689, metadata !164, metadata !"fp", metadata !5, i32 16777494, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 278]
!169 = metadata !{i32 786689, metadata !164, metadata !"title", metadata !5, i32 33554710, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 278]
!170 = metadata !{i32 786689, metadata !164, metadata !"nx", metadata !5, i32 50331926, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 278]
!171 = metadata !{i32 786689, metadata !164, metadata !"ny", metadata !5, i32 67109142, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 278]
!172 = metadata !{i32 786689, metadata !164, metadata !"nz", metadata !5, i32 83886358, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 278]
!173 = metadata !{i32 786689, metadata !164, metadata !"grid", metadata !5, i32 100663574, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 278]
!174 = metadata !{i32 786688, metadata !164, metadata !"ix", metadata !5, i32 280, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 280]
!175 = metadata !{i32 786688, metadata !164, metadata !"iy", metadata !5, i32 280, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 280]
!176 = metadata !{i32 786688, metadata !164, metadata !"iz", metadata !5, i32 280, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 280]
!177 = metadata !{i32 786688, metadata !164, metadata !"g", metadata !5, i32 281, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 281]
!178 = metadata !{i32 786688, metadata !164, metadata !"gtot", metadata !5, i32 281, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gtot] [line 281]
!179 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_rgrid_pdb", metadata !"print_rgrid_pdb", metadata !"", i32 297, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, float***)* @print_rgrid_pdb, null, null, metadata !182, i32 298} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 298] [print_rgrid_pdb]
!180 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{null, metadata !37, metadata !21, metadata !21, metadata !21, metadata !142}
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197}
!183 = metadata !{i32 786689, metadata !179, metadata !"fn", metadata !5, i32 16777513, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 297]
!184 = metadata !{i32 786689, metadata !179, metadata !"nx", metadata !5, i32 33554729, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 297]
!185 = metadata !{i32 786689, metadata !179, metadata !"ny", metadata !5, i32 50331945, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 297]
!186 = metadata !{i32 786689, metadata !179, metadata !"nz", metadata !5, i32 67109161, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 297]
!187 = metadata !{i32 786689, metadata !179, metadata !"grid", metadata !5, i32 83886377, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 297]
!188 = metadata !{i32 786688, metadata !179, metadata !"fp", metadata !5, i32 299, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 299]
!189 = metadata !{i32 786688, metadata !179, metadata !"ix", metadata !5, i32 300, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 300]
!190 = metadata !{i32 786688, metadata !179, metadata !"iy", metadata !5, i32 300, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 300]
!191 = metadata !{i32 786688, metadata !179, metadata !"iz", metadata !5, i32 300, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 300]
!192 = metadata !{i32 786688, metadata !179, metadata !"n", metadata !5, i32 300, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 300]
!193 = metadata !{i32 786688, metadata !179, metadata !"ig", metadata !5, i32 300, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ig] [line 300]
!194 = metadata !{i32 786688, metadata !179, metadata !"x", metadata !5, i32 301, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 301]
!195 = metadata !{i32 786688, metadata !179, metadata !"y", metadata !5, i32 301, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 301]
!196 = metadata !{i32 786688, metadata !179, metadata !"z", metadata !5, i32 301, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 301]
!197 = metadata !{i32 786688, metadata !179, metadata !"g", metadata !5, i32 301, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 301]
!198 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_rgrid", metadata !"clear_rgrid", metadata !"", i32 323, metadata !199, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, float***)* @clear_rgrid, null, null, metadata !201, i32 324} ; [ DW_TAG_subprogram ] [line 323] [def] [scope 324] [clear_rgrid]
!199 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!200 = metadata !{null, metadata !21, metadata !21, metadata !21, metadata !142}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!202 = metadata !{i32 786689, metadata !198, metadata !"nx", metadata !5, i32 16777539, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 323]
!203 = metadata !{i32 786689, metadata !198, metadata !"ny", metadata !5, i32 33554755, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 323]
!204 = metadata !{i32 786689, metadata !198, metadata !"nz", metadata !5, i32 50331971, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 323]
!205 = metadata !{i32 786689, metadata !198, metadata !"grid", metadata !5, i32 67109187, metadata !142, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 323]
!206 = metadata !{i32 786688, metadata !198, metadata !"i", metadata !5, i32 325, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 325]
!207 = metadata !{i32 786688, metadata !198, metadata !"j", metadata !5, i32 325, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 325]
!208 = metadata !{i32 786688, metadata !198, metadata !"k", metadata !5, i32 325, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 325]
!209 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"clear_cgrid", metadata !"clear_cgrid", metadata !"", i32 333, metadata !210, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, %struct.t_complex***)* @clear_cgrid, null, null, metadata !221, i32 334} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 334] [clear_cgrid]
!210 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!211 = metadata !{null, metadata !21, metadata !21, metadata !21, metadata !212}
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_complex]
!215 = metadata !{i32 786454, metadata !1, null, metadata !"t_complex", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [t_complex] [line 46, size 0, align 0, offset 0] [from ]
!216 = metadata !{i32 786451, metadata !217, null, metadata !"", i32 44, i64 64, i64 32, i32 0, i32 0, null, metadata !218, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 64, align 32, offset 0] [from ]
!217 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!218 = metadata !{metadata !219, metadata !220}
!219 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"re", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [re] [line 45, size 32, align 32, offset 0] [from real]
!220 = metadata !{i32 786445, metadata !217, metadata !216, metadata !"im", i32 45, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [im] [line 45, size 32, align 32, offset 32] [from real]
!221 = metadata !{metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228}
!222 = metadata !{i32 786689, metadata !209, metadata !"nx", metadata !5, i32 16777549, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 333]
!223 = metadata !{i32 786689, metadata !209, metadata !"ny", metadata !5, i32 33554765, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 333]
!224 = metadata !{i32 786689, metadata !209, metadata !"nz", metadata !5, i32 50331981, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 333]
!225 = metadata !{i32 786689, metadata !209, metadata !"grid", metadata !5, i32 67109197, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 333]
!226 = metadata !{i32 786688, metadata !209, metadata !"i", metadata !5, i32 335, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 335]
!227 = metadata !{i32 786688, metadata !209, metadata !"j", metadata !5, i32 335, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 335]
!228 = metadata !{i32 786688, metadata !209, metadata !"k", metadata !5, i32 335, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 335]
!229 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_cgrid", metadata !"mk_cgrid", metadata !"", i32 343, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_complex*** (i32, i32, i32)* @mk_cgrid, null, null, metadata !232, i32 344} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 344] [mk_cgrid]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !212, metadata !21, metadata !21, metadata !21}
!232 = metadata !{metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!233 = metadata !{i32 786689, metadata !229, metadata !"nx", metadata !5, i32 16777559, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 343]
!234 = metadata !{i32 786689, metadata !229, metadata !"ny", metadata !5, i32 33554775, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 343]
!235 = metadata !{i32 786689, metadata !229, metadata !"nz", metadata !5, i32 50331991, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 343]
!236 = metadata !{i32 786688, metadata !229, metadata !"ptr1", metadata !5, i32 345, metadata !214, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr1] [line 345]
!237 = metadata !{i32 786688, metadata !229, metadata !"ptr2", metadata !5, i32 346, metadata !213, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr2] [line 346]
!238 = metadata !{i32 786688, metadata !229, metadata !"ptr3", metadata !5, i32 347, metadata !212, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr3] [line 347]
!239 = metadata !{i32 786688, metadata !229, metadata !"i", metadata !5, i32 348, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 348]
!240 = metadata !{i32 786688, metadata !229, metadata !"j", metadata !5, i32 348, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 348]
!241 = metadata !{i32 786688, metadata !229, metadata !"n2", metadata !5, i32 348, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 348]
!242 = metadata !{i32 786688, metadata !229, metadata !"n3", metadata !5, i32 348, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n3] [line 348]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"free_cgrid", metadata !"free_cgrid", metadata !"", i32 365, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_complex***, i32, i32)* @free_cgrid, null, null, metadata !246, i32 366} ; [ DW_TAG_subprogram ] [line 365] [def] [scope 366] [free_cgrid]
!244 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!245 = metadata !{null, metadata !212, metadata !21, metadata !21}
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250}
!247 = metadata !{i32 786689, metadata !243, metadata !"grid", metadata !5, i32 16777581, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 365]
!248 = metadata !{i32 786689, metadata !243, metadata !"nx", metadata !5, i32 33554797, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 365]
!249 = metadata !{i32 786689, metadata !243, metadata !"ny", metadata !5, i32 50332013, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 365]
!250 = metadata !{i32 786688, metadata !243, metadata !"i", metadata !5, i32 367, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 367]
!251 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_cgrid", metadata !"print_cgrid", metadata !"", i32 375, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (%struct._IO_FILE*, i8*, i32, i32, i32, %struct.t_complex***)* @print_cgrid, null, null, metadata !254, i32 377} ; [ DW_TAG_subprogram ] [line 375] [def] [scope 377] [print_cgrid]
!252 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{metadata !215, metadata !30, metadata !37, metadata !21, metadata !21, metadata !21, metadata !212}
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265}
!255 = metadata !{i32 786689, metadata !251, metadata !"fp", metadata !5, i32 16777591, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 375]
!256 = metadata !{i32 786689, metadata !251, metadata !"title", metadata !5, i32 33554807, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 375]
!257 = metadata !{i32 786689, metadata !251, metadata !"nx", metadata !5, i32 50332023, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 375]
!258 = metadata !{i32 786689, metadata !251, metadata !"ny", metadata !5, i32 67109239, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 375]
!259 = metadata !{i32 786689, metadata !251, metadata !"nz", metadata !5, i32 83886455, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 375]
!260 = metadata !{i32 786689, metadata !251, metadata !"grid", metadata !5, i32 100663672, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 376]
!261 = metadata !{i32 786688, metadata !251, metadata !"ix", metadata !5, i32 378, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 378]
!262 = metadata !{i32 786688, metadata !251, metadata !"iy", metadata !5, i32 378, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 378]
!263 = metadata !{i32 786688, metadata !251, metadata !"iz", metadata !5, i32 378, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 378]
!264 = metadata !{i32 786688, metadata !251, metadata !"g", metadata !5, i32 379, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 379]
!265 = metadata !{i32 786688, metadata !251, metadata !"gtot", metadata !5, i32 379, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gtot] [line 379]
!266 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_cgrid_pdb", metadata !"print_cgrid_pdb", metadata !"", i32 396, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, %struct.t_complex***)* @print_cgrid_pdb, null, null, metadata !269, i32 397} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 397] [print_cgrid_pdb]
!267 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!268 = metadata !{null, metadata !37, metadata !21, metadata !21, metadata !21, metadata !212}
!269 = metadata !{metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283}
!270 = metadata !{i32 786689, metadata !266, metadata !"fn", metadata !5, i32 16777612, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 396]
!271 = metadata !{i32 786689, metadata !266, metadata !"nx", metadata !5, i32 33554828, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 396]
!272 = metadata !{i32 786689, metadata !266, metadata !"ny", metadata !5, i32 50332044, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 396]
!273 = metadata !{i32 786689, metadata !266, metadata !"nz", metadata !5, i32 67109260, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 396]
!274 = metadata !{i32 786689, metadata !266, metadata !"grid", metadata !5, i32 83886476, metadata !212, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grid] [line 396]
!275 = metadata !{i32 786688, metadata !266, metadata !"fp", metadata !5, i32 398, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 398]
!276 = metadata !{i32 786688, metadata !266, metadata !"ix", metadata !5, i32 399, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 399]
!277 = metadata !{i32 786688, metadata !266, metadata !"iy", metadata !5, i32 399, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 399]
!278 = metadata !{i32 786688, metadata !266, metadata !"iz", metadata !5, i32 399, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 399]
!279 = metadata !{i32 786688, metadata !266, metadata !"n", metadata !5, i32 399, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 399]
!280 = metadata !{i32 786688, metadata !266, metadata !"x", metadata !5, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 400]
!281 = metadata !{i32 786688, metadata !266, metadata !"y", metadata !5, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 400]
!282 = metadata !{i32 786688, metadata !266, metadata !"z", metadata !5, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 400]
!283 = metadata !{i32 786688, metadata !266, metadata !"g", metadata !5, i32 400, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 400]
!284 = metadata !{i32 786478, metadata !217, metadata !285, metadata !"cadd", metadata !"cadd", metadata !"", i32 73, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !288, i32 74} ; [ DW_TAG_subprogram ] [line 73] [local] [def] [scope 74] [cadd]
!285 = metadata !{i32 786473, metadata !217}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !215, metadata !215, metadata !215}
!288 = metadata !{metadata !289, metadata !290, metadata !291}
!289 = metadata !{i32 786689, metadata !284, metadata !"a", metadata !285, i32 16777289, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 73]
!290 = metadata !{i32 786689, metadata !284, metadata !"b", metadata !285, i32 33554505, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 73]
!291 = metadata !{i32 786688, metadata !292, metadata !"c", metadata !285, i32 75, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 75]
!292 = metadata !{i32 786443, metadata !217, metadata !284} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxcomplex.h]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786484, i32 0, null, metadata !"cnul", metadata !"cnul", metadata !"", metadata !285, i32 50, metadata !215, i32 1, i32 1, null, null}
!295 = metadata !{i32 56, i32 0, metadata !4, null}
!296 = metadata !{i32 57, i32 0, metadata !4, null}
!297 = metadata !{i32 63, i32 0, metadata !4, null}
!298 = metadata !{i32 64, i32 0, metadata !4, null}
!299 = metadata !{metadata !"int", metadata !300}
!300 = metadata !{metadata !"omnipotent char", metadata !301}
!301 = metadata !{metadata !"Simple C/C++ TBAA"}
!302 = metadata !{i32 65, i32 0, metadata !4, null}
!303 = metadata !{i32 66, i32 0, metadata !4, null}
!304 = metadata !{i32 67, i32 0, metadata !4, null}
!305 = metadata !{i32 69, i32 0, metadata !4, null}
!306 = metadata !{i32 70, i32 0, metadata !4, null}
!307 = metadata !{i32 77, i32 0, metadata !4, null}
!308 = metadata !{i32 78, i32 0, metadata !4, null}
!309 = metadata !{i32 80, i32 0, metadata !4, null}
!310 = metadata !{i32 72, i32 0, metadata !4, null}
!311 = metadata !{i32 82, i32 0, metadata !4, null}
!312 = metadata !{i32 83, i32 0, metadata !4, null}
!313 = metadata !{i32 144, i32 0, metadata !4, null}
!314 = metadata !{metadata !"any pointer", metadata !300}
!315 = metadata !{i32 146, i32 0, metadata !4, null}
!316 = metadata !{i32 149, i32 0, metadata !96, null}
!317 = metadata !{i32 151, i32 0, metadata !96, null}
!318 = metadata !{i32 152, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !96, i32 151, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!320 = metadata !{i32 153, i32 0, metadata !319, null}
!321 = metadata !{i32 154, i32 0, metadata !319, null}
!322 = metadata !{i32 155, i32 0, metadata !96, null}
!323 = metadata !{i32 157, i32 0, metadata !96, null}
!324 = metadata !{i32 158, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !96, i32 157, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!326 = metadata !{i32 159, i32 0, metadata !325, null}
!327 = metadata !{i32 160, i32 0, metadata !325, null}
!328 = metadata !{i32 161, i32 0, metadata !96, null}
!329 = metadata !{i32 164, i32 0, metadata !101, null}
!330 = metadata !{i32 167, i32 0, metadata !101, null}
!331 = metadata !{i32 204, i32 0, metadata !101, null}
!332 = metadata !{i32 206, i32 0, metadata !119, null}
!333 = metadata !{i32 212, i32 0, metadata !119, null}
!334 = metadata !{i32 213, i32 0, metadata !119, null}
!335 = metadata !{i32 215, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !119, i32 215, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!337 = metadata !{i32 216, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !336, i32 215, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!339 = metadata !{i32 218, i32 0, metadata !119, null}
!340 = metadata !{i32 220, i32 0, metadata !125, null}
!341 = metadata !{i32 221, i32 0, metadata !125, null}
!342 = metadata !{i32 223, i32 0, metadata !125, null}
!343 = metadata !{i32 224, i32 0, metadata !125, null}
!344 = metadata !{i32 225, i32 0, metadata !125, null}
!345 = metadata !{i32 226, i32 0, metadata !125, null}
!346 = metadata !{i32 227, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !125, i32 226, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!348 = metadata !{i32 228, i32 0, metadata !347, null}
!349 = metadata !{i32 229, i32 0, metadata !347, null}
!350 = metadata !{i32 230, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !125, i32 229, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!352 = metadata !{i32 231, i32 0, metadata !351, null}
!353 = metadata !{i32 233, i32 0, metadata !125, null}
!354 = metadata !{i32 234, i32 0, metadata !125, null}
!355 = metadata !{i32 245, i32 0, metadata !139, null}
!356 = metadata !{i32 252, i32 0, metadata !139, null}
!357 = metadata !{i32 253, i32 0, metadata !139, null}
!358 = metadata !{i32 254, i32 0, metadata !139, null}
!359 = metadata !{i32 256, i32 0, metadata !139, null}
!360 = metadata !{i32 257, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !139, i32 257, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!362 = metadata !{i32 259, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !364, i32 259, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!364 = metadata !{i32 786443, metadata !1, metadata !361, i32 257, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!365 = metadata !{i32 258, i32 0, metadata !364, null}
!366 = metadata !{i32 260, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !363, i32 259, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!368 = metadata !{i32 261, i32 0, metadata !367, null}
!369 = metadata !{i32 264, i32 0, metadata !139, null}
!370 = metadata !{i32 267, i32 0, metadata !156, null}
!371 = metadata !{i32 271, i32 0, metadata !156, null}
!372 = metadata !{i32 272, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !156, i32 272, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!374 = metadata !{i32 273, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !373, i32 272, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!376 = metadata !{i32 275, i32 0, metadata !156, null}
!377 = metadata !{i32 276, i32 0, metadata !156, null}
!378 = metadata !{i32 278, i32 0, metadata !164, null}
!379 = metadata !{float 0.000000e+00}
!380 = metadata !{i32 283, i32 0, metadata !164, null}
!381 = metadata !{i32 284, i32 0, metadata !164, null}
!382 = metadata !{i32 285, i32 0, metadata !164, null}
!383 = metadata !{i32 286, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !164, i32 286, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!385 = metadata !{i32 287, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !384, i32 287, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!387 = metadata !{i32 288, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !386, i32 288, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!389 = metadata !{i32 289, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !388, i32 288, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!391 = metadata !{metadata !"float", metadata !300}
!392 = metadata !{i32 290, i32 0, metadata !390, null}
!393 = metadata !{i32 291, i32 0, metadata !390, null}
!394 = metadata !{i32 292, i32 0, metadata !390, null}
!395 = metadata !{i32 294, i32 0, metadata !164, null}
!396 = metadata !{i32 297, i32 0, metadata !179, null}
!397 = metadata !{i32 1}
!398 = metadata !{i32 303, i32 0, metadata !179, null}
!399 = metadata !{i32 304, i32 0, metadata !179, null}
!400 = metadata !{i32 305, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !179, i32 305, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!402 = metadata !{i32 306, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !404, i32 306, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!404 = metadata !{i32 786443, metadata !1, metadata !401, i32 305, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!405 = metadata !{i32 307, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !407, i32 307, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!407 = metadata !{i32 786443, metadata !1, metadata !403, i32 306, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!408 = metadata !{i32 308, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !406, i32 307, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!410 = metadata !{i32 311, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 310, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!412 = metadata !{i32 314, i32 0, metadata !411, null}
!413 = metadata !{i32 312, i32 0, metadata !411, null}
!414 = metadata !{i32 313, i32 0, metadata !411, null}
!415 = metadata !{i32 320, i32 0, metadata !179, null}
!416 = metadata !{i32 321, i32 0, metadata !179, null}
!417 = metadata !{i32 323, i32 0, metadata !198, null}
!418 = metadata !{i32 327, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !198, i32 327, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!420 = metadata !{i32 328, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !419, i32 328, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!422 = metadata !{i32 329, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 329, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!424 = metadata !{i32 330, i32 0, metadata !423, null}
!425 = metadata !{i32 331, i32 0, metadata !198, null}
!426 = metadata !{i32 333, i32 0, metadata !209, null}
!427 = metadata !{i32 337, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !209, i32 337, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!429 = metadata !{i32 338, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !428, i32 338, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!431 = metadata !{i32 339, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !430, i32 339, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!433 = metadata !{i32 340, i32 0, metadata !432, null}
!434 = metadata !{i32 341, i32 0, metadata !209, null}
!435 = metadata !{i32 343, i32 0, metadata !229, null}
!436 = metadata !{i32 350, i32 0, metadata !229, null}
!437 = metadata !{i32 351, i32 0, metadata !229, null}
!438 = metadata !{i32 352, i32 0, metadata !229, null}
!439 = metadata !{i32 354, i32 0, metadata !229, null}
!440 = metadata !{i32 355, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !229, i32 355, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!442 = metadata !{i32 357, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !444, i32 357, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!444 = metadata !{i32 786443, metadata !1, metadata !441, i32 355, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!445 = metadata !{i32 356, i32 0, metadata !444, null}
!446 = metadata !{i32 358, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !443, i32 357, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!448 = metadata !{i32 359, i32 0, metadata !447, null}
!449 = metadata !{i32 362, i32 0, metadata !229, null}
!450 = metadata !{i32 365, i32 0, metadata !243, null}
!451 = metadata !{i32 369, i32 0, metadata !243, null}
!452 = metadata !{i32 370, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !243, i32 370, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!454 = metadata !{i32 371, i32 0, metadata !453, null}
!455 = metadata !{i32 372, i32 0, metadata !243, null}
!456 = metadata !{i32 373, i32 0, metadata !243, null}
!457 = metadata !{i32 375, i32 0, metadata !251, null}
!458 = metadata !{i32 376, i32 0, metadata !251, null}
!459 = metadata !{%struct.t_complex* undef}
!460 = metadata !{i32 379, i32 0, metadata !251, null}
!461 = metadata !{i32 382, i32 0, metadata !251, null}
!462 = metadata !{i32 383, i32 0, metadata !251, null}
!463 = metadata !{i32 384, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !251, i32 384, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!465 = metadata !{i32 385, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !464, i32 385, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!467 = metadata !{i32 386, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !466, i32 386, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!469 = metadata !{i32 387, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !468, i32 386, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!471 = metadata !{i32 388, i32 0, metadata !470, null}
!472 = metadata !{i32 78, i32 0, metadata !292, metadata !473}
!473 = metadata !{i32 391, i32 0, metadata !470, null}
!474 = metadata !{i32 389, i32 0, metadata !470, null}
!475 = metadata !{i32 73, i32 0, metadata !284, metadata !473}
!476 = metadata !{i32 75, i32 0, metadata !292, metadata !473}
!477 = metadata !{i32 77, i32 0, metadata !292, metadata !473}
!478 = metadata !{i32 80, i32 0, metadata !292, metadata !473}
!479 = metadata !{i32 393, i32 0, metadata !251, null}
!480 = metadata !{i32 396, i32 0, metadata !266, null}
!481 = metadata !{i32 402, i32 0, metadata !266, null}
!482 = metadata !{i32 403, i32 0, metadata !266, null}
!483 = metadata !{i32 404, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !266, i32 404, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!485 = metadata !{i32 405, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !487, i32 405, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!487 = metadata !{i32 786443, metadata !1, metadata !484, i32 404, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!488 = metadata !{i32 406, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 406, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!490 = metadata !{i32 786443, metadata !1, metadata !486, i32 405, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!491 = metadata !{i32 407, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !489, i32 406, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!493 = metadata !{i32 409, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !492, i32 408, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/fftgrid.c]
!495 = metadata !{i32 412, i32 0, metadata !494, null}
!496 = metadata !{i32 410, i32 0, metadata !494, null}
!497 = metadata !{i32 408, i32 0, metadata !492, null}
!498 = metadata !{i32 411, i32 0, metadata !494, null}
!499 = metadata !{i32 414, i32 0, metadata !494, null}
!500 = metadata !{i32 418, i32 0, metadata !266, null}
!501 = metadata !{i32 419, i32 0, metadata !266, null}
