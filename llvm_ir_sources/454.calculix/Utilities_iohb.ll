; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Insufficient memory for mat_typen\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [29 x i8] c"Error: Cannot open file: %s\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"iohb.c: Null (or blank) first line of HB file.\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"%72c%8[^\0A]\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"iohb.c: Null (or blank) second line of HB file.\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"%*i%i\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"%*i%*i%i\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%*i%*i%*i%i\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"%*i%*i%*i%*i%i\00", align 1
@.str12 = private unnamed_addr constant [48 x i8] c"iohb.c: Null (or blank) third line of HB file.\0A\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"%3c\00", align 1
@.str14 = private unnamed_addr constant [59 x i8] c"iohb.c: Invalid Type info, line 3 of Harwell-Boeing file.\0A\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"%*3c%i\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"%*3c%*i%i\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"%*3c%*i%*i%i\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"%*3c%*i%*i%*i%i\00", align 1
@.str19 = private unnamed_addr constant [49 x i8] c"iohb.c: Null (or blank) fourth line of HB file.\0A\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"%16c\00", align 1
@.str21 = private unnamed_addr constant [61 x i8] c"iohb.c: Invalid format info, line 4 of Harwell-Boeing file.\0A\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"%*16c%16c\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"%*16c%*16c%20c\00", align 1
@.str24 = private unnamed_addr constant [20 x i8] c"%*16c%*16c%*20c%20c\00", align 1
@.str25 = private unnamed_addr constant [48 x i8] c"iohb.c: Null (or blank) fifth line of HB file.\0A\00", align 1
@.str26 = private unnamed_addr constant [70 x i8] c"iohb.c: Invalid RHS type information, line 5 of Harwell-Boeing file.\0A\00", align 1
@.str27 = private unnamed_addr constant [37 x i8] c"Insufficient memory for ThisElement.\00", align 1
@.str28 = private unnamed_addr constant [65 x i8] c"iohb.c: Null (or blank) line in pointer data region of HB file.\0A\00", align 1
@.str29 = private unnamed_addr constant [63 x i8] c"iohb.c: Null (or blank) line in index data region of HB file.\0A\00", align 1
@.str30 = private unnamed_addr constant [63 x i8] c"iohb.c: Null (or blank) line in value data region of HB file.\0A\00", align 1
@.str31 = private unnamed_addr constant [33 x i8] c"Insufficient memory for colptr.\0A\00", align 1
@.str32 = private unnamed_addr constant [33 x i8] c"Insufficient memory for rowind.\0A\00", align 1
@.str33 = private unnamed_addr constant [30 x i8] c"Insufficient memory for val.\0A\00", align 1
@.str34 = private unnamed_addr constant [66 x i8] c"Warn: Attempt to read auxillary vector(s) when none are present.\0A\00", align 1
@.str35 = private unnamed_addr constant [78 x i8] c"Warn: Attempt to read auxillary vector(s) which are not stored in Full form.\0A\00", align 1
@.str36 = private unnamed_addr constant [40 x i8] c"       Rhs must be specified as full. \0A\00", align 1
@.str37 = private unnamed_addr constant [72 x i8] c"Warn: Attempt to read auxillary Guess vector(s) when none are present.\0A\00", align 1
@.str38 = private unnamed_addr constant [81 x i8] c"Warn: Attempt to read auxillary eXact solution vector(s) when none are present.\0A\00", align 1
@.str39 = private unnamed_addr constant [62 x i8] c"Warn: Requested read of aux vector(s) when none are present.\0A\00", align 1
@.str40 = private unnamed_addr constant [56 x i8] c"Warning: Reading complex aux vector(s) from HB file %s.\00", align 1
@.str41 = private unnamed_addr constant [61 x i8] c"         Real and imaginary parts will be interlaced in b[].\00", align 1
@.str42 = private unnamed_addr constant [30 x i8] c"Insufficient memory for rhs.\0A\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external global %struct._IO_FILE*
@.str44 = private unnamed_addr constant [7 x i8] c"(8I10)\00", align 1
@.str45 = private unnamed_addr constant [6 x i8] c"%%%dd\00", align 1
@.str46 = private unnamed_addr constant [10 x i8] c"(4E20.13)\00", align 1
@.str47 = private unnamed_addr constant [10 x i8] c"%% %d.%df\00", align 1
@.str48 = private unnamed_addr constant [10 x i8] c"%% %d.%dE\00", align 1
@.str49 = private unnamed_addr constant [32 x i8] c"%-72s%-8s\0A%14d%14d%14d%14d%14d\0A\00", align 1
@.str50 = private unnamed_addr constant [21 x i8] c"%3s%11s%14d%14d%14d\0A\00", align 1
@.str51 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str52 = private unnamed_addr constant [16 x i8] c"%-16s%-16s%-20s\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"%-20s\0A%-14s%d\0A\00", align 1
@.str55 = private unnamed_addr constant [45 x i8] c"Error closing file in writeHB_mat_double().\0A\00", align 1
@.str56 = private unnamed_addr constant [32 x i8] c"Insufficient memory for Valfmt.\00", align 1
@.str57 = private unnamed_addr constant [74 x i8] c"iohb.c: Null (or blank) line in auxillary vector data region of HB file.\0A\00", align 1
@.str58 = private unnamed_addr constant [32 x i8] c"Insufficient memory for Rhsfmt.\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"%%%ds\00", align 1
@.str60 = private unnamed_addr constant [43 x i8] c"Error closing file in writeHB_mat_char().\0A\00", align 1
@.str61 = private unnamed_addr constant [43 x i8] c"Real format %s in H/B file not supported.\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_info(i8* %filename, i32* nocapture %M, i32* nocapture %N, i32* nocapture %nz, i8** nocapture %Type, i32* %Nrhs) #0 {
entry:
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Title = alloca [73 x i8], align 16
  %Key = alloca [9 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Valfmt = alloca [21 x i8], align 16
  %Rhsfmt = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !16), !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !17), !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %N}, i64 0, metadata !18), !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %nz}, i64 0, metadata !19), !dbg !552
  call void @llvm.dbg.value(metadata !{i8** %Type}, i64 0, metadata !20), !dbg !552
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !21), !dbg !553
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !78), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !79), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !80), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !81), !dbg !554
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !82), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !83), !dbg !555
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !84), !dbg !555
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !556
  call void @llvm.lifetime.start(i64 73, i8* %0) #2, !dbg !556
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !86), !dbg !556
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %Key}, metadata !90), !dbg !556
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !94), !dbg !556
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !98), !dbg !557
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !102), !dbg !557
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Valfmt}, metadata !103), !dbg !557
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Rhsfmt}, metadata !107), !dbg !557
  %call = call i8* @CVinit(i32 4, i8 signext 0) #9, !dbg !558
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !85), !dbg !558
  %cmp = icmp eq i8* %call, null, !dbg !559
  br i1 %cmp, label %if.then, label %if.end, !dbg !559

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0)) #10, !dbg !559
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !560
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !22), !dbg !560
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !560
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !560

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !561, !tbaa !563
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !561
  br label %cleanup, !dbg !566

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0, !dbg !567
  %arraydecay7 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !567
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !567
  %arraydecay9 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0, !dbg !567
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0, !dbg !567
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !567
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call1, i8* %0, i8* %arraydecay6, i8* %call, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay7, i8* %arraydecay8, i8* %arraydecay9, i8* %arraydecay10, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #10, !dbg !567
  %call13 = call i32 @fclose(%struct._IO_FILE* %call1) #9, !dbg !568
  store i8* %call, i8** %Type, align 8, !dbg !569, !tbaa !563
  %add.ptr = getelementptr inbounds i8* %call, i64 3, !dbg !570
  store i8 0, i8* %add.ptr, align 1, !dbg !570, !tbaa !564
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !82), !dbg !571
  %2 = load i32* %Nrow, align 4, !dbg !571, !tbaa !572
  store i32 %2, i32* %M, align 4, !dbg !571, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Ncol}, i64 0, metadata !83), !dbg !573
  %3 = load i32* %Ncol, align 4, !dbg !573, !tbaa !572
  store i32 %3, i32* %N, align 4, !dbg !573, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !84), !dbg !574
  %4 = load i32* %Nnzero, align 4, !dbg !574, !tbaa !572
  store i32 %4, i32* %nz, align 4, !dbg !574, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Rhscrd}, i64 0, metadata !81), !dbg !575
  %5 = load i32* %Rhscrd, align 4, !dbg !575, !tbaa !572
  %cmp14 = icmp eq i32 %5, 0, !dbg !575
  br i1 %cmp14, label %if.then15, label %cleanup, !dbg !575

if.then15:                                        ; preds = %if.end5
  store i32 0, i32* %Nrhs, align 4, !dbg !576, !tbaa !572
  br label %cleanup, !dbg !576

cleanup:                                          ; preds = %if.end5, %if.then15, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then15 ], [ 1, %if.end5 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #2, !dbg !578
  ret i32 %retval.0, !dbg !579
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #3

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @IOHBTerminate(i8* nocapture %message) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %message}, i64 0, metadata !515), !dbg !580
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !581, !tbaa !563
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* %message) #9, !dbg !581
  tail call void @exit(i32 1) #11, !dbg !582
  unreachable, !dbg !582
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_header(%struct._IO_FILE* nocapture %in_file, i8* %Title, i8* %Key, i8* %Type, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %Ptrfmt, i8* %Indfmt, i8* %Valfmt, i8* %Rhsfmt, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %Rhstype) #0 {
entry:
  %Totcrd = alloca i32, align 4
  %Neltvl = alloca i32, align 4
  %Nrhsix = alloca i32, align 4
  %line = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in_file}, i64 0, metadata !112), !dbg !583
  call void @llvm.dbg.value(metadata !{i8* %Title}, i64 0, metadata !113), !dbg !583
  call void @llvm.dbg.value(metadata !{i8* %Key}, i64 0, metadata !114), !dbg !583
  call void @llvm.dbg.value(metadata !{i8* %Type}, i64 0, metadata !115), !dbg !583
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !116), !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %Ncol}, i64 0, metadata !117), !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !118), !dbg !584
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !119), !dbg !584
  call void @llvm.dbg.value(metadata !{i8* %Ptrfmt}, i64 0, metadata !120), !dbg !585
  call void @llvm.dbg.value(metadata !{i8* %Indfmt}, i64 0, metadata !121), !dbg !585
  call void @llvm.dbg.value(metadata !{i8* %Valfmt}, i64 0, metadata !122), !dbg !585
  call void @llvm.dbg.value(metadata !{i8* %Rhsfmt}, i64 0, metadata !123), !dbg !585
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !124), !dbg !586
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !125), !dbg !586
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !126), !dbg !586
  call void @llvm.dbg.value(metadata !{i32* %Rhscrd}, i64 0, metadata !127), !dbg !586
  call void @llvm.dbg.value(metadata !{i8* %Rhstype}, i64 0, metadata !128), !dbg !587
  call void @llvm.dbg.declare(metadata !{i32* %Totcrd}, metadata !129), !dbg !588
  call void @llvm.dbg.declare(metadata !{i32* %Neltvl}, metadata !130), !dbg !588
  call void @llvm.dbg.declare(metadata !{i32* %Nrhsix}, metadata !131), !dbg !588
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0, !dbg !589
  call void @llvm.lifetime.start(i64 8192, i8* %0) #2, !dbg !589
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %line}, metadata !132), !dbg !589
  %call = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #9, !dbg !590
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !591
  %cmp = icmp slt i32 %call2, 0, !dbg !591
  br i1 %cmp, label %if.then, label %if.end, !dbg !591

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0)) #10, !dbg !592
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %Title, i8* %Key) #9, !dbg !593
  %add.ptr = getelementptr inbounds i8* %Key, i64 8, !dbg !594
  store i8 0, i8* %add.ptr, align 1, !dbg !594, !tbaa !564
  %add.ptr5 = getelementptr inbounds i8* %Title, i64 72, !dbg !595
  store i8 0, i8* %add.ptr5, align 1, !dbg !595, !tbaa !564
  %call7 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #9, !dbg !596
  %call9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !597
  %cmp10 = icmp slt i32 %call9, 0, !dbg !597
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !597

if.then11:                                        ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !598
  unreachable

if.end12:                                         ; preds = %if.end
  %call14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %Totcrd) #9, !dbg !599
  %cmp15 = icmp eq i32 %call14, 1, !dbg !599
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !599

if.then16:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !129), !dbg !599
  store i32 0, i32* %Totcrd, align 4, !dbg !599, !tbaa !572
  br label %if.end17, !dbg !599

if.end17:                                         ; preds = %if.end12, %if.then16
  %call19 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i32* %Ptrcrd) #9, !dbg !600
  %cmp20 = icmp eq i32 %call19, 1, !dbg !600
  br i1 %cmp20, label %if.end22, label %if.then21, !dbg !600

if.then21:                                        ; preds = %if.end17
  store i32 0, i32* %Ptrcrd, align 4, !dbg !600, !tbaa !572
  br label %if.end22, !dbg !600

if.end22:                                         ; preds = %if.end17, %if.then21
  %call24 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i32* %Indcrd) #9, !dbg !601
  %cmp25 = icmp eq i32 %call24, 1, !dbg !601
  br i1 %cmp25, label %if.end27, label %if.then26, !dbg !601

if.then26:                                        ; preds = %if.end22
  store i32 0, i32* %Indcrd, align 4, !dbg !601, !tbaa !572
  br label %if.end27, !dbg !601

if.end27:                                         ; preds = %if.end22, %if.then26
  %call29 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32* %Valcrd) #9, !dbg !602
  %cmp30 = icmp eq i32 %call29, 1, !dbg !602
  br i1 %cmp30, label %if.end32, label %if.then31, !dbg !602

if.then31:                                        ; preds = %if.end27
  store i32 0, i32* %Valcrd, align 4, !dbg !602, !tbaa !572
  br label %if.end32, !dbg !602

if.end32:                                         ; preds = %if.end27, %if.then31
  %call34 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i32* %Rhscrd) #9, !dbg !603
  %cmp35 = icmp eq i32 %call34, 1, !dbg !603
  br i1 %cmp35, label %if.end37, label %if.then36, !dbg !603

if.then36:                                        ; preds = %if.end32
  store i32 0, i32* %Rhscrd, align 4, !dbg !603, !tbaa !572
  br label %if.end37, !dbg !603

if.end37:                                         ; preds = %if.end32, %if.then36
  %call39 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #9, !dbg !604
  %call41 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !605
  %cmp42 = icmp slt i32 %call41, 0, !dbg !605
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !605

if.then43:                                        ; preds = %if.end37
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0)) #10, !dbg !606
  unreachable

if.end44:                                         ; preds = %if.end37
  %call46 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* %Type) #9, !dbg !607
  %cmp47 = icmp eq i32 %call46, 1, !dbg !607
  br i1 %cmp47, label %if.end49, label %if.then48, !dbg !607

if.then48:                                        ; preds = %if.end44
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([59 x i8]* @.str14, i64 0, i64 0)) #10, !dbg !608
  unreachable

if.end49:                                         ; preds = %if.end44
  call fastcc void @upcase(i8* %Type) #10, !dbg !609
  %call51 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %Nrow) #9, !dbg !610
  %cmp52 = icmp eq i32 %call51, 1, !dbg !610
  br i1 %cmp52, label %if.end54, label %if.then53, !dbg !610

if.then53:                                        ; preds = %if.end49
  store i32 0, i32* %Nrow, align 4, !dbg !610, !tbaa !572
  br label %if.end54, !dbg !610

if.end54:                                         ; preds = %if.end49, %if.then53
  %call56 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32* %Ncol) #9, !dbg !611
  %cmp57 = icmp eq i32 %call56, 1, !dbg !611
  br i1 %cmp57, label %if.end59, label %if.then58, !dbg !611

if.then58:                                        ; preds = %if.end54
  store i32 0, i32* %Ncol, align 4, !dbg !611, !tbaa !572
  br label %if.end59, !dbg !611

if.end59:                                         ; preds = %if.end54, %if.then58
  %call61 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i32* %Nnzero) #9, !dbg !612
  %cmp62 = icmp eq i32 %call61, 1, !dbg !612
  br i1 %cmp62, label %if.end64, label %if.then63, !dbg !612

if.then63:                                        ; preds = %if.end59
  store i32 0, i32* %Nnzero, align 4, !dbg !612, !tbaa !572
  br label %if.end64, !dbg !612

if.end64:                                         ; preds = %if.end59, %if.then63
  %call66 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32* %Neltvl) #9, !dbg !613
  %cmp67 = icmp eq i32 %call66, 1, !dbg !613
  br i1 %cmp67, label %if.end69, label %if.then68, !dbg !613

if.then68:                                        ; preds = %if.end64
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !130), !dbg !613
  store i32 0, i32* %Neltvl, align 4, !dbg !613, !tbaa !572
  br label %if.end69, !dbg !613

if.end69:                                         ; preds = %if.end64, %if.then68
  %call71 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #9, !dbg !614
  %call73 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !615
  %cmp74 = icmp slt i32 %call73, 0, !dbg !615
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !615

if.then75:                                        ; preds = %if.end69
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([49 x i8]* @.str19, i64 0, i64 0)) #10, !dbg !616
  unreachable

if.end76:                                         ; preds = %if.end69
  %call78 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %Ptrfmt) #9, !dbg !617
  %cmp79 = icmp eq i32 %call78, 1, !dbg !617
  br i1 %cmp79, label %if.end81, label %if.then80, !dbg !617

if.then80:                                        ; preds = %if.end76
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !618
  unreachable

if.end81:                                         ; preds = %if.end76
  %call83 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %Indfmt) #9, !dbg !619
  %cmp84 = icmp eq i32 %call83, 1, !dbg !619
  br i1 %cmp84, label %if.end86, label %if.then85, !dbg !619

if.then85:                                        ; preds = %if.end81
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !620
  unreachable

if.end86:                                         ; preds = %if.end81
  %call88 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i8* %Valfmt) #9, !dbg !621
  %cmp89 = icmp eq i32 %call88, 1, !dbg !621
  br i1 %cmp89, label %if.end91, label %if.then90, !dbg !621

if.then90:                                        ; preds = %if.end86
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #10, !dbg !622
  unreachable

if.end91:                                         ; preds = %if.end86
  %call93 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([20 x i8]* @.str24, i64 0, i64 0), i8* %Rhsfmt) #9, !dbg !623
  %add.ptr94 = getelementptr inbounds i8* %Ptrfmt, i64 16, !dbg !624
  store i8 0, i8* %add.ptr94, align 1, !dbg !624, !tbaa !564
  %add.ptr95 = getelementptr inbounds i8* %Indfmt, i64 16, !dbg !625
  store i8 0, i8* %add.ptr95, align 1, !dbg !625, !tbaa !564
  %add.ptr96 = getelementptr inbounds i8* %Valfmt, i64 20, !dbg !626
  store i8 0, i8* %add.ptr96, align 1, !dbg !626, !tbaa !564
  %add.ptr97 = getelementptr inbounds i8* %Rhsfmt, i64 20, !dbg !627
  store i8 0, i8* %add.ptr97, align 1, !dbg !627, !tbaa !564
  %1 = load i32* %Rhscrd, align 4, !dbg !628, !tbaa !572
  %cmp98 = icmp eq i32 %1, 0, !dbg !628
  br i1 %cmp98, label %if.end122, label %if.then99, !dbg !628

if.then99:                                        ; preds = %if.end91
  %call101 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #9, !dbg !629
  %call103 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !631
  %cmp104 = icmp slt i32 %call103, 0, !dbg !631
  br i1 %cmp104, label %if.then105, label %if.end106, !dbg !631

if.then105:                                       ; preds = %if.then99
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str25, i64 0, i64 0)) #10, !dbg !632
  unreachable

if.end106:                                        ; preds = %if.then99
  %call108 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* %Rhstype) #9, !dbg !633
  %cmp109 = icmp eq i32 %call108, 1, !dbg !633
  br i1 %cmp109, label %if.end111, label %if.then110, !dbg !633

if.then110:                                       ; preds = %if.end106
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([70 x i8]* @.str26, i64 0, i64 0)) #10, !dbg !634
  unreachable

if.end111:                                        ; preds = %if.end106
  %call113 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %Nrhs) #9, !dbg !635
  %cmp114 = icmp eq i32 %call113, 1, !dbg !635
  br i1 %cmp114, label %if.end116, label %if.then115, !dbg !635

if.then115:                                       ; preds = %if.end111
  store i32 0, i32* %Nrhs, align 4, !dbg !635, !tbaa !572
  br label %if.end116, !dbg !635

if.end116:                                        ; preds = %if.end111, %if.then115
  %call118 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32* %Nrhsix) #9, !dbg !636
  %cmp119 = icmp eq i32 %call118, 1, !dbg !636
  br i1 %cmp119, label %if.end122, label %if.then120, !dbg !636

if.then120:                                       ; preds = %if.end116
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !636
  store i32 0, i32* %Nrhsix, align 4, !dbg !636, !tbaa !572
  br label %if.end122, !dbg !636

if.end122:                                        ; preds = %if.end116, %if.end91, %if.then120
  call void @llvm.lifetime.end(i64 8192, i8* %0) #2, !dbg !637
  ret i32 1, !dbg !638
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @upcase(i8* nocapture %S) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %S}, i64 0, metadata !518), !dbg !639
  %call = tail call i64 @strlen(i8* %S) #12, !dbg !640
  %conv = trunc i64 %call to i32, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !520), !dbg !640
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !519), !dbg !641
  %cmp14 = icmp sgt i32 %conv, 0, !dbg !641
  br i1 %cmp14, label %for.body.lr.ph, label %for.end, !dbg !641

for.body.lr.ph:                                   ; preds = %entry
  %call4 = tail call i32** @__ctype_toupper_loc() #13, !dbg !642
  br label %for.body, !dbg !641

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8* %S, i64 %indvars.iv, !dbg !642
  %0 = load i8* %arrayidx, align 1, !dbg !642, !tbaa !564
  %idxprom3 = sext i8 %0 to i64, !dbg !642
  %1 = load i32** %call4, align 8, !dbg !642, !tbaa !563
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %idxprom3, !dbg !642
  %2 = load i32* %arrayidx5, align 4, !dbg !642, !tbaa !572
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !521), !dbg !642
  %conv6 = trunc i32 %2 to i8, !dbg !642
  store i8 %conv6, i8* %arrayidx, align 1, !dbg !642, !tbaa !564
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !641
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !641
  %exitcond = icmp eq i32 %lftr.wideiv, %conv, !dbg !641
  br i1 %exitcond, label %for.end, label %for.body, !dbg !641

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !643
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_mat_double(i8* %filename, i32* nocapture %colptr, i32* nocapture %rowind, double* nocapture %val) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Ptrperline = alloca i32, align 4
  %Ptrwidth = alloca i32, align 4
  %Indperline = alloca i32, align 4
  %Indwidth = alloca i32, align 4
  %Valperline = alloca i32, align 4
  %Valwidth = alloca i32, align 4
  %Valprec = alloca i32, align 4
  %Valflag = alloca i32, align 4
  %line = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !142), !dbg !644
  call void @llvm.dbg.value(metadata !{i32* %colptr}, i64 0, metadata !143), !dbg !644
  call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !144), !dbg !644
  call void @llvm.dbg.value(metadata !{double* %val}, i64 0, metadata !145), !dbg !645
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !154), !dbg !646
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !155), !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !156), !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !157), !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !158), !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !159), !dbg !648
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !160), !dbg !648
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !161), !dbg !648
  call void @llvm.dbg.declare(metadata !{i32* %Ptrperline}, metadata !163), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32* %Ptrwidth}, metadata !164), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32* %Indperline}, metadata !165), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32* %Indwidth}, metadata !166), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32* %Valperline}, metadata !167), !dbg !650
  call void @llvm.dbg.declare(metadata !{i32* %Valwidth}, metadata !168), !dbg !650
  call void @llvm.dbg.declare(metadata !{i32* %Valprec}, metadata !169), !dbg !650
  call void @llvm.dbg.declare(metadata !{i32* %Valflag}, metadata !170), !dbg !651
  %call = call i8* @CVinit(i32 73, i8 signext 0) #9, !dbg !652
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !172), !dbg !652
  %call1 = call i8* @CVinit(i32 9, i8 signext 0) #9, !dbg !653
  call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !173), !dbg !653
  %call2 = call i8* @CVinit(i32 4, i8 signext 0) #9, !dbg !654
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !174), !dbg !654
  %call3 = call i8* @CVinit(i32 4, i8 signext 0) #9, !dbg !655
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !175), !dbg !655
  %call4 = call i8* @CVinit(i32 17, i8 signext 0) #9, !dbg !656
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !176), !dbg !656
  %call5 = call i8* @CVinit(i32 17, i8 signext 0) #9, !dbg !657
  call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !177), !dbg !657
  %call6 = call i8* @CVinit(i32 21, i8 signext 0) #9, !dbg !658
  call void @llvm.dbg.value(metadata !{i8* %call6}, i64 0, metadata !178), !dbg !658
  %call7 = call i8* @CVinit(i32 21, i8 signext 0) #9, !dbg !659
  call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !179), !dbg !659
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0, !dbg !660
  call void @llvm.lifetime.start(i64 8192, i8* %0) #2, !dbg !660
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %line}, metadata !180), !dbg !660
  %call8 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !661
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call8}, i64 0, metadata !146), !dbg !661
  %cmp = icmp eq %struct._IO_FILE* %call8, null, !dbg !661
  br i1 %cmp, label %if.then, label %if.end, !dbg !661

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !662, !tbaa !563
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !662
  br label %cleanup, !dbg !664

if.end:                                           ; preds = %entry
  %call10 = call i32 @readHB_header(%struct._IO_FILE* %call8, i8* %call, i8* %call1, i8* %call2, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %call4, i8* %call5, i8* %call6, i8* %call7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %call3) #10, !dbg !665
  call fastcc void @ParseIfmt(i8* %call4, i32* %Ptrperline, i32* %Ptrwidth) #10, !dbg !666
  call fastcc void @ParseIfmt(i8* %call5, i32* %Indperline, i32* %Indwidth) #10, !dbg !667
  %2 = load i8* %call2, align 1, !dbg !668, !tbaa !564
  %cmp13 = icmp eq i8 %2, 80, !dbg !668
  br i1 %cmp13, label %if.end17, label %if.then15, !dbg !668

if.then15:                                        ; preds = %if.end
  call fastcc void @ParseRfmt(i8* %call6, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #10, !dbg !669
  br label %if.end17, !dbg !671

if.end17:                                         ; preds = %if.end, %if.then15
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !151), !dbg !672
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !673
  %3 = load i32* %Ptrwidth, align 4, !dbg !673, !tbaa !572
  %add = add nsw i32 %3, 1, !dbg !673
  %conv18 = sext i32 %add to i64, !dbg !673
  %call19 = call noalias i8* @malloc(i64 %conv18) #9, !dbg !673
  call void @llvm.dbg.value(metadata !{i8* %call19}, i64 0, metadata !171), !dbg !673
  %cmp20 = icmp eq i8* %call19, null, !dbg !674
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !674

if.then22:                                        ; preds = %if.end17
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !674
  unreachable

if.end23:                                         ; preds = %if.end17
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !675
  %idx.ext = sext i32 %3 to i64, !dbg !675
  %add.ptr = getelementptr inbounds i8* %call19, i64 %idx.ext, !dbg !675
  store i8 0, i8* %add.ptr, align 1, !dbg !675, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !676
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !677
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !155), !dbg !677
  %4 = load i32* %Ptrcrd, align 4, !dbg !677, !tbaa !572
  %cmp24297 = icmp sgt i32 %4, 0, !dbg !677
  br i1 %cmp24297, label %for.body.lr.ph, label %for.end52, !dbg !677

for.body.lr.ph:                                   ; preds = %if.end23
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !163), !dbg !679
  %5 = load i32* %Ptrperline, align 4, !dbg !679, !tbaa !572
  %cmp34292 = icmp sgt i32 %5, 0, !dbg !679
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !682
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !684
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !163), !dbg !679
  br label %for.body, !dbg !677

for.body:                                         ; preds = %for.body.lr.ph, %for.inc50
  %i.0299 = phi i32 [ 0, %for.body.lr.ph ], [ %inc51, %for.inc50 ]
  %count.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc50 ]
  %call26 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #9, !dbg !685
  %call28 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !686
  %cmp29 = icmp slt i32 %call28, 0, !dbg !686
  br i1 %cmp29, label %if.then31, label %for.cond33.preheader, !dbg !686

for.cond33.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !163), !dbg !679
  br i1 %cmp34292, label %for.body36.lr.ph, label %for.inc50, !dbg !679

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %6 = sext i32 %count.0298 to i64, !dbg !679
  br label %for.body36, !dbg !679

if.then31:                                        ; preds = %for.body
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([65 x i8]* @.str28, i64 0, i64 0)) #10, !dbg !687
  unreachable

for.body36:                                       ; preds = %for.body36.lr.ph, %if.end40
  %indvars.iv313 = phi i64 [ %6, %for.body36.lr.ph ], [ %indvars.iv.next314, %if.end40 ], !dbg !679
  %indvars.iv311 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next312, %if.end40 ]
  %ind.0295 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc49, %if.end40 ]
  %count.1293 = phi i32 [ %count.0298, %for.body36.lr.ph ], [ %inc, %if.end40 ]
  call void @llvm.dbg.value(metadata !{i32* %Ncol}, i64 0, metadata !160), !dbg !688
  %7 = load i32* %Ncol, align 4, !dbg !688, !tbaa !572
  %8 = trunc i64 %indvars.iv313 to i32, !dbg !688
  %cmp37 = icmp sgt i32 %8, %7, !dbg !688
  br i1 %cmp37, label %for.inc50, label %if.end40, !dbg !688

if.end40:                                         ; preds = %for.body36
  %add.ptr43 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv311, !dbg !682
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !682
  %call45 = call i8* @strncpy(i8* %call19, i8* %add.ptr43, i64 %idx.ext) #9, !dbg !682
  %call46 = call i32 @atoi(i8* %call19) #12, !dbg !689
  %arrayidx47 = getelementptr inbounds i32* %colptr, i64 %indvars.iv313, !dbg !689
  store i32 %call46, i32* %arrayidx47, align 4, !dbg !689, !tbaa !572
  %indvars.iv.next314 = add i64 %indvars.iv313, 1, !dbg !679
  %inc = add nsw i32 %count.1293, 1, !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !152), !dbg !684
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !164), !dbg !684
  %indvars.iv.next312 = add i64 %indvars.iv311, %idx.ext, !dbg !679
  %inc49 = add nsw i32 %ind.0295, 1, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %inc49}, i64 0, metadata !149), !dbg !679
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !163), !dbg !679
  %cmp34 = icmp slt i32 %inc49, %5, !dbg !679
  br i1 %cmp34, label %for.body36, label %for.inc50, !dbg !679

for.inc50:                                        ; preds = %if.end40, %for.body36, %for.cond33.preheader
  %count.1.lcssa = phi i32 [ %count.0298, %for.cond33.preheader ], [ %count.1293, %for.body36 ], [ %inc, %if.end40 ]
  %inc51 = add nsw i32 %i.0299, 1, !dbg !677
  call void @llvm.dbg.value(metadata !{i32 %inc51}, i64 0, metadata !147), !dbg !677
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !155), !dbg !677
  %9 = load i32* %Ptrcrd, align 4, !dbg !677, !tbaa !572
  %cmp24 = icmp slt i32 %inc51, %9, !dbg !677
  br i1 %cmp24, label %for.body, label %for.end52, !dbg !677

for.end52:                                        ; preds = %for.inc50, %if.end23
  call void @free(i8* %call19) #9, !dbg !690
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !691
  %10 = load i32* %Indwidth, align 4, !dbg !691, !tbaa !572
  %add53 = add nsw i32 %10, 1, !dbg !691
  %conv54 = sext i32 %add53 to i64, !dbg !691
  %call55 = call noalias i8* @malloc(i64 %conv54) #9, !dbg !691
  call void @llvm.dbg.value(metadata !{i8* %call55}, i64 0, metadata !171), !dbg !691
  %cmp56 = icmp eq i8* %call55, null, !dbg !692
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !692

if.then58:                                        ; preds = %for.end52
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !692
  unreachable

if.end59:                                         ; preds = %for.end52
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !693
  %idx.ext60 = sext i32 %10 to i64, !dbg !693
  %add.ptr61 = getelementptr inbounds i8* %call55, i64 %idx.ext60, !dbg !693
  store i8 0, i8* %add.ptr61, align 1, !dbg !693, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !694
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !695
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !156), !dbg !695
  %11 = load i32* %Indcrd, align 4, !dbg !695, !tbaa !572
  %cmp63289 = icmp sgt i32 %11, 0, !dbg !695
  br i1 %cmp63289, label %for.body65.lr.ph, label %for.end98, !dbg !695

for.body65.lr.ph:                                 ; preds = %if.end59
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !165), !dbg !697
  %12 = load i32* %Indperline, align 4, !dbg !697, !tbaa !572
  %cmp75284 = icmp sgt i32 %12, 0, !dbg !697
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !700
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !165), !dbg !697
  br label %for.body65, !dbg !695

for.body65:                                       ; preds = %for.body65.lr.ph, %for.inc96
  %i.1291 = phi i32 [ 0, %for.body65.lr.ph ], [ %inc97, %for.inc96 ]
  %count.2290 = phi i32 [ 0, %for.body65.lr.ph ], [ %count.3.lcssa, %for.inc96 ]
  %call67 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #9, !dbg !703
  %call69 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !704
  %cmp70 = icmp slt i32 %call69, 0, !dbg !704
  br i1 %cmp70, label %if.then72, label %for.cond74.preheader, !dbg !704

for.cond74.preheader:                             ; preds = %for.body65
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !165), !dbg !697
  br i1 %cmp75284, label %for.body77.lr.ph, label %for.inc96, !dbg !697

for.body77.lr.ph:                                 ; preds = %for.cond74.preheader
  %13 = sext i32 %count.2290 to i64, !dbg !697
  br label %for.body77, !dbg !697

if.then72:                                        ; preds = %for.body65
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str29, i64 0, i64 0)) #10, !dbg !705
  unreachable

for.body77:                                       ; preds = %for.body77.lr.ph, %if.end81
  %indvars.iv308 = phi i64 [ %13, %for.body77.lr.ph ], [ %indvars.iv.next309, %if.end81 ], !dbg !697
  %indvars.iv306 = phi i64 [ 0, %for.body77.lr.ph ], [ %indvars.iv.next307, %if.end81 ]
  %ind.1287 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc94, %if.end81 ]
  %count.3285 = phi i32 [ %count.2290, %for.body77.lr.ph ], [ %inc91, %if.end81 ]
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !161), !dbg !706
  %14 = load i32* %Nnzero, align 4, !dbg !706, !tbaa !572
  %15 = trunc i64 %indvars.iv308 to i32, !dbg !706
  %cmp78 = icmp eq i32 %15, %14, !dbg !706
  br i1 %cmp78, label %for.inc96, label %if.end81, !dbg !706

if.end81:                                         ; preds = %for.body77
  %add.ptr84 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv306, !dbg !700
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !700
  %call86 = call i8* @strncpy(i8* %call55, i8* %add.ptr84, i64 %idx.ext60) #9, !dbg !700
  %call87 = call i32 @atoi(i8* %call55) #12, !dbg !707
  %arrayidx90 = getelementptr inbounds i32* %rowind, i64 %indvars.iv308, !dbg !707
  store i32 %call87, i32* %arrayidx90, align 4, !dbg !707, !tbaa !572
  %indvars.iv.next309 = add i64 %indvars.iv308, 1, !dbg !697
  %inc91 = add nsw i32 %count.3285, 1, !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %inc91}, i64 0, metadata !152), !dbg !702
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !166), !dbg !702
  %indvars.iv.next307 = add i64 %indvars.iv306, %idx.ext60, !dbg !697
  %inc94 = add nsw i32 %ind.1287, 1, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !149), !dbg !697
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !165), !dbg !697
  %cmp75 = icmp slt i32 %inc94, %12, !dbg !697
  br i1 %cmp75, label %for.body77, label %for.inc96, !dbg !697

for.inc96:                                        ; preds = %if.end81, %for.body77, %for.cond74.preheader
  %count.3.lcssa = phi i32 [ %count.2290, %for.cond74.preheader ], [ %count.3285, %for.body77 ], [ %inc91, %if.end81 ]
  %inc97 = add nsw i32 %i.1291, 1, !dbg !695
  call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !147), !dbg !695
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !156), !dbg !695
  %16 = load i32* %Indcrd, align 4, !dbg !695, !tbaa !572
  %cmp63 = icmp slt i32 %inc97, %16, !dbg !695
  br i1 %cmp63, label %for.body65, label %for.end98, !dbg !695

for.end98:                                        ; preds = %for.inc96, %if.end59
  call void @free(i8* %call55) #9, !dbg !708
  %17 = load i8* %call2, align 1, !dbg !709, !tbaa !564
  %cmp101 = icmp eq i8 %17, 80, !dbg !709
  br i1 %cmp101, label %if.end200, label %if.then103, !dbg !709

if.then103:                                       ; preds = %for.end98
  %cmp106 = icmp eq i8 %17, 67, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !161), !dbg !710
  %18 = load i32* %Nnzero, align 4, !dbg !710, !tbaa !572
  %mul = zext i1 %cmp106 to i32, !dbg !710
  %Nentries.0 = shl nsw i32 %18, %mul, !dbg !710
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !712
  %19 = load i32* %Valwidth, align 4, !dbg !712, !tbaa !572
  %add110 = add nsw i32 %19, 1, !dbg !712
  %conv111 = sext i32 %add110 to i64, !dbg !712
  %call112 = call noalias i8* @malloc(i64 %conv111) #9, !dbg !712
  call void @llvm.dbg.value(metadata !{i8* %call112}, i64 0, metadata !171), !dbg !712
  %cmp113 = icmp eq i8* %call112, null, !dbg !713
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !713

if.then115:                                       ; preds = %if.then103
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !713
  unreachable

if.end116:                                        ; preds = %if.then103
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !714
  %idx.ext117 = sext i32 %19 to i64, !dbg !714
  %add.ptr118 = getelementptr inbounds i8* %call112, i64 %idx.ext117, !dbg !714
  store i8 0, i8* %add.ptr118, align 1, !dbg !714, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !715
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !716
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !157), !dbg !716
  %20 = load i32* %Valcrd, align 4, !dbg !716, !tbaa !572
  %cmp120281 = icmp sgt i32 %20, 0, !dbg !716
  br i1 %cmp120281, label %for.body122.lr.ph, label %for.end199, !dbg !716

for.body122.lr.ph:                                ; preds = %if.end116
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !718
  %21 = load i32* %Valflag, align 4, !dbg !718, !tbaa !572
  %cmp131 = icmp eq i32 %21, 68, !dbg !718
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !167), !dbg !720
  %22 = load i32* %Valperline, align 4, !dbg !720, !tbaa !572
  %cmp140275 = icmp slt i32 %22, 1, !dbg !720
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !722
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !724
  %cmp152 = icmp eq i32 %21, 70, !dbg !724
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !167), !dbg !720
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !726
  %conv181 = trunc i32 %21 to i8, !dbg !726
  %23 = sub i32 0, %22, !dbg !716
  br label %for.body122, !dbg !716

for.body122:                                      ; preds = %for.body122.lr.ph, %for.inc197
  %i.2283 = phi i32 [ 0, %for.body122.lr.ph ], [ %inc198, %for.inc197 ]
  %count.4282 = phi i32 [ 0, %for.body122.lr.ph ], [ %count.5.lcssa, %for.inc197 ]
  %call124 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #9, !dbg !731
  %call126 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !732
  %cmp127 = icmp slt i32 %call126, 0, !dbg !732
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !732

if.then129:                                       ; preds = %for.body122
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !733
  unreachable

if.end130:                                        ; preds = %for.body122
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !718
  br i1 %cmp131, label %while.cond.preheader, label %for.cond139.preheader, !dbg !718

while.cond.preheader:                             ; preds = %if.end130
  %call135272 = call i8* @strchr(i8* %0, i32 68) #12, !dbg !734
  %tobool273 = icmp eq i8* %call135272, null, !dbg !734
  br i1 %tobool273, label %for.cond139.preheader, label %while.body, !dbg !734

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call135274 = phi i8* [ %call135, %while.body ], [ %call135272, %while.cond.preheader ]
  store i8 69, i8* %call135274, align 1, !dbg !734, !tbaa !564
  %call135 = call i8* @strchr(i8* %0, i32 68) #12, !dbg !734
  %tobool = icmp eq i8* %call135, null, !dbg !734
  br i1 %tobool, label %for.cond139.preheader, label %while.body, !dbg !734

for.cond139.preheader:                            ; preds = %while.cond.preheader, %while.body, %if.end130
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !167), !dbg !720
  %cmp143276 = icmp eq i32 %count.4282, %Nentries.0, !dbg !736
  %or.cond277 = or i1 %cmp140275, %cmp143276, !dbg !720
  br i1 %or.cond277, label %for.inc197, label %if.end146.lr.ph, !dbg !720

if.end146.lr.ph:                                  ; preds = %for.cond139.preheader
  %24 = sext i32 %count.4282 to i64, !dbg !720
  %25 = sub i32 %count.4282, %Nentries.0, !dbg !720
  %26 = icmp ult i32 %25, %23, !dbg !720
  %umax = select i1 %26, i32 %23, i32 %25, !dbg !720
  %27 = sub i32 0, %umax, !dbg !720
  br label %if.end146, !dbg !720

if.end146:                                        ; preds = %if.end146.lr.ph, %if.end188
  %indvars.iv303 = phi i64 [ %24, %if.end146.lr.ph ], [ %indvars.iv.next304, %if.end188 ], !dbg !720
  %indvars.iv301 = phi i64 [ 0, %if.end146.lr.ph ], [ %indvars.iv.next302, %if.end188 ]
  %ind.2280 = phi i32 [ 0, %if.end146.lr.ph ], [ %inc195, %if.end188 ]
  %add.ptr149 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv301, !dbg !722
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !722
  %call151 = call i8* @strncpy(i8* %call112, i8* %add.ptr149, i64 %idx.ext117) #9, !dbg !722
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !724
  br i1 %cmp152, label %if.end188, label %land.lhs.true, !dbg !724

land.lhs.true:                                    ; preds = %if.end146
  %call154 = call i8* @strchr(i8* %call112, i32 69) #12, !dbg !724
  %cmp155 = icmp eq i8* %call154, null, !dbg !724
  br i1 %cmp155, label %if.then157, label %if.end188, !dbg !724

if.then157:                                       ; preds = %land.lhs.true
  %call158 = call i64 @strlen(i8* %call112) #12, !dbg !737
  %conv159 = trunc i64 %call158 to i32, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %conv159}, i64 0, metadata !153), !dbg !737
  %add160 = add i32 %conv159, 1, !dbg !738
  call void @llvm.dbg.value(metadata !{i32 %add160}, i64 0, metadata !148), !dbg !738
  %28 = sext i32 %add160 to i64
  br label %for.cond161, !dbg !738

for.cond161:                                      ; preds = %for.body164, %if.then157
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body164 ], [ %28, %if.then157 ]
  %j.0 = phi i32 [ %sub165, %for.body164 ], [ %add160, %if.then157 ]
  %29 = trunc i64 %indvars.iv to i32, !dbg !738
  %cmp162 = icmp sgt i32 %29, -1, !dbg !738
  br i1 %cmp162, label %for.body164, label %if.end188, !dbg !738

for.body164:                                      ; preds = %for.cond161
  %sub165 = add nsw i32 %j.0, -1, !dbg !739
  %idxprom166 = sext i32 %sub165 to i64, !dbg !739
  %arrayidx167 = getelementptr inbounds i8* %call112, i64 %idxprom166, !dbg !739
  %30 = load i8* %arrayidx167, align 1, !dbg !739, !tbaa !564
  %arrayidx169 = getelementptr inbounds i8* %call112, i64 %indvars.iv, !dbg !739
  store i8 %30, i8* %arrayidx169, align 1, !dbg !739, !tbaa !564
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !740
  switch i8 %30, label %for.cond161 [
    i8 43, label %if.then180
    i8 45, label %if.then180
  ], !dbg !740

if.then180:                                       ; preds = %for.body164, %for.body164
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !170), !dbg !726
  store i8 %conv181, i8* %arrayidx167, align 1, !dbg !726, !tbaa !564
  br label %if.end188, !dbg !741

if.end188:                                        ; preds = %for.cond161, %if.end146, %if.then180, %land.lhs.true
  %call189 = call double @atof(i8* %call112) #12, !dbg !742
  %arrayidx191 = getelementptr inbounds double* %val, i64 %indvars.iv303, !dbg !742
  store double %call189, double* %arrayidx191, align 8, !dbg !742, !tbaa !743
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !152), !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !168), !dbg !725
  %indvars.iv.next302 = add i64 %indvars.iv301, %idx.ext117, !dbg !720
  %inc195 = add nsw i32 %ind.2280, 1, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %inc195}, i64 0, metadata !149), !dbg !720
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !167), !dbg !720
  %exitcond = icmp eq i32 %inc195, %27, !dbg !720
  br i1 %exitcond, label %for.cond139.for.inc197_crit_edge, label %if.end146, !dbg !720

for.cond139.for.inc197_crit_edge:                 ; preds = %if.end188
  %31 = sub i32 %count.4282, %umax, !dbg !720
  br label %for.inc197, !dbg !720

for.inc197:                                       ; preds = %for.cond139.for.inc197_crit_edge, %for.cond139.preheader
  %count.5.lcssa = phi i32 [ %31, %for.cond139.for.inc197_crit_edge ], [ %count.4282, %for.cond139.preheader ]
  %inc198 = add nsw i32 %i.2283, 1, !dbg !716
  call void @llvm.dbg.value(metadata !{i32 %inc198}, i64 0, metadata !147), !dbg !716
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !157), !dbg !716
  %32 = load i32* %Valcrd, align 4, !dbg !716, !tbaa !572
  %cmp120 = icmp slt i32 %inc198, %32, !dbg !716
  br i1 %cmp120, label %for.body122, label %for.end199, !dbg !716

for.end199:                                       ; preds = %for.inc197, %if.end116
  call void @free(i8* %call112) #9, !dbg !744
  br label %if.end200, !dbg !745

if.end200:                                        ; preds = %for.end98, %for.end199
  call void @CVfree(i8* %call) #9, !dbg !746
  call void @CVfree(i8* %call1) #9, !dbg !747
  call void @CVfree(i8* %call2) #9, !dbg !748
  call void @CVfree(i8* %call3) #9, !dbg !749
  call void @CVfree(i8* %call4) #9, !dbg !750
  call void @CVfree(i8* %call5) #9, !dbg !751
  call void @CVfree(i8* %call6) #9, !dbg !752
  call void @CVfree(i8* %call7) #9, !dbg !753
  %call201 = call i32 @fclose(%struct._IO_FILE* %call8) #9, !dbg !754
  br label %cleanup, !dbg !755

cleanup:                                          ; preds = %if.end200, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end200 ]
  call void @llvm.lifetime.end(i64 8192, i8* %0) #2, !dbg !755
  ret i32 %retval.0, !dbg !756
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseIfmt(i8* %format, i32* nocapture %pperline, i32* nocapture %pwidth) #0 {
entry:
  tail call fastcc void @upcase(i8* %format) #10, !dbg !757
  %call2 = tail call i8* @strchr(i8* %format, i32 40) #12, !dbg !758
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !550), !dbg !758
  %cmp = icmp eq i8* %call2, null, !dbg !758
  br i1 %cmp, label %return, label %if.end, !dbg !758

if.end:                                           ; preds = %entry
  %call3 = tail call i8* @strchr(i8* %format, i32 73) #12, !dbg !759
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !549), !dbg !759
  %cmp4 = icmp eq i8* %call3, null, !dbg !759
  br i1 %cmp4, label %return, label %if.end6, !dbg !759

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @strchr(i8* %format, i32 41) #12, !dbg !760
  tail call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !551), !dbg !760
  %cmp8 = icmp eq i8* %call7, null, !dbg !760
  br i1 %cmp8, label %return, label %if.end10, !dbg !760

if.end10:                                         ; preds = %if.end6
  store i8 0, i8* %call3, align 1, !dbg !761, !tbaa !564
  %add.ptr = getelementptr inbounds i8* %call2, i64 1, !dbg !762
  %call11 = tail call i32 @atoi(i8* %add.ptr) #12, !dbg !762
  store i32 %call11, i32* %pperline, align 4, !dbg !762, !tbaa !572
  store i8 73, i8* %call3, align 1, !dbg !763, !tbaa !564
  store i8 0, i8* %call7, align 1, !dbg !764, !tbaa !564
  %add.ptr12 = getelementptr inbounds i8* %call3, i64 1, !dbg !765
  %call13 = tail call i32 @atoi(i8* %add.ptr12) #12, !dbg !765
  store i32 %call13, i32* %pwidth, align 4, !dbg !765, !tbaa !572
  store i8 41, i8* %call7, align 1, !dbg !766, !tbaa !564
  br label %return, !dbg !767

return:                                           ; preds = %if.end6, %if.end, %entry, %if.end10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseRfmt(i8* %fmt, i32* nocapture %perline, i32* nocapture %width, i32* nocapture %prec, i32* nocapture %flag) #0 {
entry:
  %cmp = icmp eq i8* %fmt, null, !dbg !768
  br i1 %cmp, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  store i32 0, i32* %perline, align 4, !dbg !769, !tbaa !572
  store i32 0, i32* %width, align 4, !dbg !771, !tbaa !572
  tail call void @llvm.dbg.value(metadata !772, i64 0, metadata !532), !dbg !773
  br label %return, !dbg !774

if.end:                                           ; preds = %entry
  tail call fastcc void @upcase(i8* %fmt) #10, !dbg !775
  %call = tail call i8* @strchr(i8* %fmt, i32 40) #12, !dbg !776
  %cmp5 = icmp eq i8* %call, null, !dbg !776
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !528), !dbg !776
  %fmt.call = select i1 %cmp5, i8* %fmt, i8* %call, !dbg !776
  %call9 = tail call i8* @strchr(i8* %fmt.call, i32 41) #12, !dbg !777
  %cmp10 = icmp eq i8* %call9, null, !dbg !777
  br i1 %cmp10, label %if.end18, label %while.cond, !dbg !777

while.cond:                                       ; preds = %if.end, %while.cond
  %tmp2.0 = phi i8* [ %call13, %while.cond ], [ %call9, %if.end ]
  %add.ptr = getelementptr inbounds i8* %tmp2.0, i64 1, !dbg !778
  %call13 = tail call i8* @strchr(i8* %add.ptr, i32 41) #12, !dbg !778
  %cmp14 = icmp eq i8* %call13, null, !dbg !778
  br i1 %cmp14, label %while.end, label %while.cond, !dbg !778

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %add.ptr, align 1, !dbg !780, !tbaa !564
  br label %if.end18, !dbg !781

if.end18:                                         ; preds = %if.end, %while.end
  %call19 = tail call i8* @strchr(i8* %fmt.call, i32 80) #12, !dbg !782
  %cmp20 = icmp eq i8* %call19, null, !dbg !782
  br i1 %cmp20, label %if.end47, label %if.then21, !dbg !782

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i8* @strchr(i8* %fmt.call, i32 40) #12, !dbg !783
  %cmp23 = icmp eq i8* %call22, null, !dbg !783
  br i1 %cmp23, label %if.end47, label %if.then24, !dbg !783

if.then24:                                        ; preds = %if.then21
  tail call void @llvm.dbg.value(metadata !{i8* %call19}, i64 0, metadata !533), !dbg !785
  %incdec.ptr = getelementptr inbounds i8* %call19, i64 1, !dbg !787
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !533), !dbg !787
  %0 = load i8* %incdec.ptr, align 1, !dbg !787, !tbaa !564
  %cmp26 = icmp eq i8 %0, 44, !dbg !787
  %incdec.ptr29 = getelementptr inbounds i8* %call19, i64 2, !dbg !787
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr29}, i64 0, metadata !533), !dbg !787
  %incdec.ptr29.incdec.ptr = select i1 %cmp26, i8* %incdec.ptr29, i8* %incdec.ptr, !dbg !787
  %add.ptr32 = getelementptr inbounds i8* %call22, i64 1, !dbg !788
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr32}, i64 0, metadata !535), !dbg !788
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr29.incdec.ptr to i64, !dbg !789
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr32 to i64, !dbg !789
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !789
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr32}, i64 0, metadata !534), !dbg !790
  %sext = shl i64 %sub.ptr.sub, 32, !dbg !791
  %idx.ext = ashr exact i64 %sext, 32, !dbg !791
  %add.ptr32.sum = add i64 %idx.ext, 1, !dbg !791
  %add.ptr351 = getelementptr inbounds i8* %call22, i64 %add.ptr32.sum, !dbg !791
  %1 = load i8* %add.ptr351, align 1, !dbg !791, !tbaa !564
  %cmp372 = icmp eq i8 %1, 0, !dbg !791
  br i1 %cmp372, label %while.end43, label %while.body39, !dbg !791

while.body39:                                     ; preds = %if.then24, %while.body39
  %2 = phi i8 [ %3, %while.body39 ], [ %1, %if.then24 ]
  %tmp2.13 = phi i8* [ %incdec.ptr42, %while.body39 ], [ %add.ptr32, %if.then24 ]
  store i8 %2, i8* %tmp2.13, align 1, !dbg !792, !tbaa !564
  %incdec.ptr42 = getelementptr inbounds i8* %tmp2.13, i64 1, !dbg !794
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr42}, i64 0, metadata !534), !dbg !794
  %add.ptr35 = getelementptr inbounds i8* %tmp2.13, i64 %add.ptr32.sum, !dbg !791
  %3 = load i8* %add.ptr35, align 1, !dbg !791, !tbaa !564
  %cmp37 = icmp eq i8 %3, 0, !dbg !791
  br i1 %cmp37, label %while.end43, label %while.body39, !dbg !791

while.end43:                                      ; preds = %while.body39, %if.then24
  %call44 = tail call i8* @strchr(i8* %fmt.call, i32 41) #12, !dbg !795
  %add.ptr45 = getelementptr inbounds i8* %call44, i64 1, !dbg !795
  store i8 0, i8* %add.ptr45, align 1, !dbg !795, !tbaa !564
  br label %if.end47, !dbg !796

if.end47:                                         ; preds = %if.then21, %if.end18, %while.end43
  %call48 = tail call i8* @strchr(i8* %fmt.call, i32 69) #12, !dbg !797
  %cmp49 = icmp eq i8* %call48, null, !dbg !797
  br i1 %cmp49, label %if.else, label %if.then51, !dbg !797

if.then51:                                        ; preds = %if.end47
  store i32 69, i32* %flag, align 4, !dbg !798, !tbaa !572
  br label %if.end65, !dbg !800

if.else:                                          ; preds = %if.end47
  %call52 = tail call i8* @strchr(i8* %fmt.call, i32 68) #12, !dbg !801
  %cmp53 = icmp eq i8* %call52, null, !dbg !801
  br i1 %cmp53, label %if.else56, label %if.then55, !dbg !801

if.then55:                                        ; preds = %if.else
  store i32 68, i32* %flag, align 4, !dbg !802, !tbaa !572
  br label %if.end65, !dbg !804

if.else56:                                        ; preds = %if.else
  %call57 = tail call i8* @strchr(i8* %fmt.call, i32 70) #12, !dbg !805
  %cmp58 = icmp eq i8* %call57, null, !dbg !805
  br i1 %cmp58, label %if.else61, label %if.then60, !dbg !805

if.then60:                                        ; preds = %if.else56
  store i32 70, i32* %flag, align 4, !dbg !806, !tbaa !572
  br label %if.end65

if.else61:                                        ; preds = %if.else56
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !808, !tbaa !563
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8]* @.str61, i64 0, i64 0), i8* %fmt.call) #9, !dbg !808
  br label %return, !dbg !810

if.end65:                                         ; preds = %if.then55, %if.then60, %if.then51
  %5 = phi i32 [ 68, %if.then55 ], [ 70, %if.then60 ], [ 69, %if.then51 ]
  %call67 = tail call i8* @strchr(i8* %fmt.call, i32 40) #12, !dbg !811
  tail call void @llvm.dbg.value(metadata !{i8* %call67}, i64 0, metadata !537), !dbg !811
  %call69 = tail call i8* @strchr(i8* %fmt.call, i32 41) #12, !dbg !812
  tail call void @llvm.dbg.value(metadata !{i8* %call69}, i64 0, metadata !539), !dbg !812
  %call71 = tail call i8* @strchr(i8* %fmt.call, i32 %5) #12, !dbg !813
  tail call void @llvm.dbg.value(metadata !{i8* %call71}, i64 0, metadata !540), !dbg !813
  %call73 = tail call i8* @strchr(i8* %fmt.call, i32 46) #12, !dbg !814
  tail call void @llvm.dbg.value(metadata !{i8* %call73}, i64 0, metadata !541), !dbg !814
  store i8 0, i8* %call71, align 1, !dbg !815, !tbaa !564
  %add.ptr74 = getelementptr inbounds i8* %call67, i64 1, !dbg !816
  %call75 = tail call i32 @atoi(i8* %add.ptr74) #12, !dbg !816
  store i32 %call75, i32* %perline, align 4, !dbg !816, !tbaa !572
  %6 = load i32* %flag, align 4, !dbg !817, !tbaa !572
  %conv76 = trunc i32 %6 to i8, !dbg !817
  store i8 %conv76, i8* %call71, align 1, !dbg !817, !tbaa !564
  %cmp77 = icmp eq i8* %call73, null, !dbg !818
  store i8 0, i8* %call69, align 1, !dbg !819, !tbaa !564
  br i1 %cmp77, label %if.else84, label %if.then79, !dbg !818

if.then79:                                        ; preds = %if.end65
  %add.ptr80 = getelementptr inbounds i8* %call73, i64 1, !dbg !821
  %call81 = tail call i32 @atoi(i8* %add.ptr80) #12, !dbg !821
  store i32 %call81, i32* %prec, align 4, !dbg !821, !tbaa !572
  store i8 41, i8* %call69, align 1, !dbg !822, !tbaa !564
  store i8 0, i8* %call73, align 1, !dbg !823, !tbaa !564
  %add.ptr82 = getelementptr inbounds i8* %call71, i64 1, !dbg !824
  %call83 = tail call i32 @atoi(i8* %add.ptr82) #12, !dbg !824
  store i32 %call83, i32* %width, align 4, !dbg !824, !tbaa !572
  store i8 46, i8* %call73, align 1, !dbg !825, !tbaa !564
  br label %return, !dbg !826

if.else84:                                        ; preds = %if.end65
  %add.ptr85 = getelementptr inbounds i8* %call71, i64 1, !dbg !827
  %call86 = tail call i32 @atoi(i8* %add.ptr85) #12, !dbg !827
  store i32 %call86, i32* %width, align 4, !dbg !827, !tbaa !572
  store i8 46, i8* %call69, align 1, !dbg !829, !tbaa !564
  br label %return

return:                                           ; preds = %if.then79, %if.else84, %if.else61, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #6

; Function Attrs: optsize
declare void @CVfree(i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newmat_double(i8* %filename, i32* nocapture %M, i32* nocapture %N, i32* nocapture %nonzeros, i32** nocapture %colptr, i32** nocapture %rowind, double** nocapture %val) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %Type = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !187), !dbg !830
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !188), !dbg !830
  call void @llvm.dbg.value(metadata !{i32* %N}, i64 0, metadata !189), !dbg !830
  call void @llvm.dbg.value(metadata !{i32* %nonzeros}, i64 0, metadata !190), !dbg !830
  call void @llvm.dbg.value(metadata !{i32** %colptr}, i64 0, metadata !191), !dbg !831
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !192), !dbg !831
  call void @llvm.dbg.value(metadata !{double** %val}, i64 0, metadata !193), !dbg !831
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !194), !dbg !832
  call void @llvm.dbg.declare(metadata !{i8** %Type}, metadata !195), !dbg !833
  %call = call i32 @readHB_info(i8* %filename, i32* %M, i32* %N, i32* %nonzeros, i8** %Type, i32* %Nrhs) #10, !dbg !834
  %0 = load i32* %N, align 4, !dbg !835, !tbaa !572
  %add = add nsw i32 %0, 1, !dbg !835
  %conv = sext i32 %add to i64, !dbg !835
  %mul = shl nsw i64 %conv, 2, !dbg !835
  %call1 = call noalias i8* @malloc(i64 %mul) #9, !dbg !835
  %1 = bitcast i8* %call1 to i32*, !dbg !835
  store i32* %1, i32** %colptr, align 8, !dbg !835, !tbaa !563
  %cmp = icmp eq i8* %call1, null, !dbg !836
  br i1 %cmp, label %if.then, label %if.end, !dbg !836

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0)) #10, !dbg !836
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32* %nonzeros, align 4, !dbg !837, !tbaa !572
  %conv3 = sext i32 %2 to i64, !dbg !837
  %mul4 = shl nsw i64 %conv3, 2, !dbg !837
  %call5 = call noalias i8* @malloc(i64 %mul4) #9, !dbg !837
  %3 = bitcast i8* %call5 to i32*, !dbg !837
  store i32* %3, i32** %rowind, align 8, !dbg !837, !tbaa !563
  %cmp6 = icmp eq i8* %call5, null, !dbg !838
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !838

if.then8:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str32, i64 0, i64 0)) #10, !dbg !838
  unreachable

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i8** %Type}, i64 0, metadata !195), !dbg !839
  %4 = load i8** %Type, align 8, !dbg !839, !tbaa !563
  %5 = load i8* %4, align 1, !dbg !839, !tbaa !564
  switch i8 %5, label %if.then26 [
    i8 67, label %if.then13
    i8 80, label %if.end9.if.end35_crit_edge
  ], !dbg !839

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  %.pre = load double** %val, align 8, !dbg !840, !tbaa !563
  br label %if.end35, !dbg !839

if.then13:                                        ; preds = %if.end9
  %mul16 = shl nsw i64 %conv3, 4, !dbg !841
  %call17 = call noalias i8* @malloc(i64 %mul16) #9, !dbg !841
  %6 = bitcast i8* %call17 to double*, !dbg !841
  store double* %6, double** %val, align 8, !dbg !841, !tbaa !563
  %cmp18 = icmp eq i8* %call17, null, !dbg !843
  br i1 %cmp18, label %if.then20, label %if.end35, !dbg !843

if.then20:                                        ; preds = %if.then13
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #10, !dbg !843
  unreachable

if.then26:                                        ; preds = %if.end9
  %mul28 = shl nsw i64 %conv3, 3, !dbg !844
  %call29 = call noalias i8* @malloc(i64 %mul28) #9, !dbg !844
  %7 = bitcast i8* %call29 to double*, !dbg !844
  store double* %7, double** %val, align 8, !dbg !844, !tbaa !563
  %cmp30 = icmp eq i8* %call29, null, !dbg !847
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !847

if.then32:                                        ; preds = %if.then26
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #10, !dbg !847
  unreachable

if.end35:                                         ; preds = %if.then26, %if.then13, %if.end9.if.end35_crit_edge
  %8 = phi double* [ %.pre, %if.end9.if.end35_crit_edge ], [ %6, %if.then13 ], [ %7, %if.then26 ]
  %9 = load i32** %colptr, align 8, !dbg !840, !tbaa !563
  %10 = load i32** %rowind, align 8, !dbg !840, !tbaa !563
  %call36 = call i32 @readHB_mat_double(i8* %filename, i32* %9, i32* %10, double* %8) #10, !dbg !840
  ret i32 %call36, !dbg !840
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_aux_double(i8* %filename, i8 signext %AuxType, double* nocapture %b) #0 {
entry:
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Nrhs = alloca i32, align 4
  %Rhsperline = alloca i32, align 4
  %Rhswidth = alloca i32, align 4
  %Rhsprec = alloca i32, align 4
  %Rhsflag = alloca i32, align 4
  %Title = alloca [73 x i8], align 16
  %Key = alloca [9 x i8], align 1
  %Type = alloca [4 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Valfmt = alloca [21 x i8], align 16
  %Rhsfmt = alloca [21 x i8], align 16
  %line = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !200), !dbg !848
  call void @llvm.dbg.value(metadata !{i8 %AuxType}, i64 0, metadata !201), !dbg !848
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !202), !dbg !848
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !213), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !214), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !215), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !216), !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !217), !dbg !850
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !218), !dbg !850
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !219), !dbg !850
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !221), !dbg !851
  call void @llvm.dbg.declare(metadata !{i32* %Rhsperline}, metadata !224), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %Rhswidth}, metadata !225), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %Rhsprec}, metadata !226), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %Rhsflag}, metadata !227), !dbg !853
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !854
  call void @llvm.lifetime.start(i64 73, i8* %0) #2, !dbg !854
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !229), !dbg !854
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %Key}, metadata !230), !dbg !854
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Type}, metadata !231), !dbg !854
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !232), !dbg !854
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !233), !dbg !855
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !234), !dbg !855
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Valfmt}, metadata !235), !dbg !855
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Rhsfmt}, metadata !236), !dbg !855
  %1 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0, !dbg !856
  call void @llvm.lifetime.start(i64 8192, i8* %1) #2, !dbg !856
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %line}, metadata !237), !dbg !856
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !857
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !203), !dbg !857
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !857
  br i1 %cmp, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !858, !tbaa !563
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !858
  br label %cleanup, !dbg !860

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0, !dbg !861
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0, !dbg !861
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !861
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !861
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0, !dbg !861
  %arraydecay7 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0, !dbg !861
  %arraydecay8 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !861
  %call9 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %arraydecay6, i8* %arraydecay7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay8) #10, !dbg !861
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !221), !dbg !862
  %3 = load i32* %Nrhs, align 4, !dbg !862, !tbaa !572
  %cmp10 = icmp slt i32 %3, 1, !dbg !862
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !862

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !863, !tbaa !563
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str34, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %4), !dbg !863
  br label %cleanup, !dbg !865

if.end13:                                         ; preds = %if.end
  %6 = load i8* %arraydecay8, align 1, !dbg !866, !tbaa !564
  %cmp14 = icmp eq i8 %6, 70, !dbg !866
  br i1 %cmp14, label %if.end19, label %if.then16, !dbg !866

if.then16:                                        ; preds = %if.end13
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !867, !tbaa !563
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str35, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %7), !dbg !867
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !869, !tbaa !563
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str36, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %9), !dbg !869
  br label %cleanup, !dbg !870

if.end19:                                         ; preds = %if.end13
  %11 = load i8* %arraydecay3, align 1, !dbg !871, !tbaa !564
  %cmp22 = icmp eq i8 %11, 67, !dbg !871
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !217), !dbg !872
  %12 = load i32* %Nrow, align 4, !dbg !872, !tbaa !572
  %mul = zext i1 %cmp22 to i32, !dbg !871
  %Nentries.0 = shl nsw i32 %12, %mul, !dbg !871
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !222), !dbg !875
  %arrayidx26 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 1, !dbg !876
  %13 = load i8* %arrayidx26, align 1, !dbg !876, !tbaa !564
  %cmp28 = icmp eq i8 %13, 71, !dbg !876
  call void @llvm.dbg.value(metadata !877, i64 0, metadata !222), !dbg !876
  %. = select i1 %cmp28, i32 2, i32 1, !dbg !876
  %arrayidx32 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 2, !dbg !878
  %14 = load i8* %arrayidx32, align 1, !dbg !878, !tbaa !564
  %cmp34 = icmp eq i8 %14, 88, !dbg !878
  %inc37 = zext i1 %cmp34 to i32, !dbg !878
  %nvecs.1 = add i32 %inc37, %., !dbg !878
  switch i8 %AuxType, label %if.end59 [
    i8 71, label %land.lhs.true
    i8 88, label %land.lhs.true52
  ], !dbg !879

land.lhs.true:                                    ; preds = %if.end19
  br i1 %cmp28, label %if.end59, label %if.then46, !dbg !879

if.then46:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !880, !tbaa !563
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str37, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %15), !dbg !880
  br label %cleanup, !dbg !882

land.lhs.true52:                                  ; preds = %if.end19
  br i1 %cmp34, label %if.end59, label %if.then57, !dbg !883

if.then57:                                        ; preds = %land.lhs.true52
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !884, !tbaa !563
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str38, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %17), !dbg !884
  br label %cleanup, !dbg !886

if.end59:                                         ; preds = %land.lhs.true, %if.end19, %land.lhs.true52
  call fastcc void @ParseRfmt(i8* %arraydecay7, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #10, !dbg !887
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !224), !dbg !888
  %19 = load i32* %Rhsperline, align 4, !dbg !888, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !888
  %20 = load i32* %Rhswidth, align 4, !dbg !888, !tbaa !572
  %mul62 = mul nsw i32 %20, %19, !dbg !888
  call void @llvm.dbg.value(metadata !{i32 %mul62}, i64 0, metadata !207), !dbg !888
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !213), !dbg !889
  %21 = load i32* %Ptrcrd, align 4, !dbg !889, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !214), !dbg !889
  %22 = load i32* %Indcrd, align 4, !dbg !889, !tbaa !572
  %add = add i32 %22, %21, !dbg !889
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !215), !dbg !889
  %23 = load i32* %Valcrd, align 4, !dbg !889, !tbaa !572
  %add63 = add i32 %add, %23, !dbg !889
  call void @llvm.dbg.value(metadata !{i32 %add63}, i64 0, metadata !206), !dbg !889
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !204), !dbg !890
  %cmp64333 = icmp sgt i32 %add63, 0, !dbg !890
  br i1 %cmp64333, label %for.body, label %for.end, !dbg !890

for.body:                                         ; preds = %if.end59, %for.body
  %i.0334 = phi i32 [ %inc68, %for.body ], [ 0, %if.end59 ]
  %call67 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !892
  %inc68 = add nsw i32 %i.0334, 1, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !204), !dbg !890
  %exitcond340 = icmp eq i32 %inc68, %add63, !dbg !890
  br i1 %exitcond340, label %for.end, label %for.body, !dbg !890

for.end:                                          ; preds = %for.body, %if.end59
  %AuxType.off = add i8 %AuxType, -70, !dbg !893
  %switch = icmp ult i8 %AuxType.off, 2, !dbg !893
  br i1 %switch, label %for.end.if.end81_crit_edge, label %if.else78, !dbg !893

for.end.if.end81_crit_edge:                       ; preds = %for.end
  %cmp70 = icmp eq i8 %AuxType, 70, !dbg !893
  %.mux = select i1 %cmp70, i32 0, i32 %Nentries.0, !dbg !893
  %sub82.pre = add i32 %nvecs.1, -1, !dbg !894
  %mul83.pre = mul i32 %sub82.pre, %Nentries.0, !dbg !894
  br label %if.end81, !dbg !893

if.else78:                                        ; preds = %for.end
  %sub = add nsw i32 %nvecs.1, -1, !dbg !895
  %mul79 = mul nsw i32 %sub, %Nentries.0, !dbg !895
  call void @llvm.dbg.value(metadata !{i32 %mul79}, i64 0, metadata !208), !dbg !895
  br label %if.end81

if.end81:                                         ; preds = %for.end.if.end81_crit_edge, %if.else78
  %mul83.pre-phi = phi i32 [ %mul83.pre, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ], !dbg !894
  %start.0 = phi i32 [ %.mux, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  call void @llvm.dbg.value(metadata !{i32 %mul83.pre-phi}, i64 0, metadata !209), !dbg !894
  %call85 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !896
  %call87 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !897
  %sub.ptr.lhs.cast = ptrtoint i8* %call87 to i64, !dbg !897
  %sub.ptr.rhs.cast = ptrtoint [8192 x i8]* %line to i64, !dbg !897
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !897
  %conv89 = trunc i64 %sub.ptr.sub to i32, !dbg !897
  call void @llvm.dbg.value(metadata !{i32 %conv89}, i64 0, metadata !212), !dbg !897
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !898
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !204), !dbg !899
  %cmp91327 = icmp sgt i32 %start.0, 0, !dbg !899
  br i1 %cmp91327, label %for.body93, label %for.end112, !dbg !899

for.body93:                                       ; preds = %if.end81, %if.end108
  %linel.0330 = phi i32 [ %linel.1, %if.end108 ], [ %conv89, %if.end81 ]
  %i.1329 = phi i32 [ %inc111, %if.end108 ], [ 0, %if.end81 ]
  %col.0328 = phi i32 [ %add109, %if.end108 ], [ 0, %if.end81 ]
  %cmp94 = icmp slt i32 %mul62, %linel.0330, !dbg !901
  %cond = select i1 %cmp94, i32 %mul62, i32 %linel.0330, !dbg !901
  %cmp96 = icmp slt i32 %col.0328, %cond, !dbg !901
  br i1 %cmp96, label %if.end108, label %if.then98, !dbg !901

if.then98:                                        ; preds = %for.body93
  %call100 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !903
  %call102 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !905
  %sub.ptr.lhs.cast104 = ptrtoint i8* %call102 to i64, !dbg !905
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast, !dbg !905
  %conv107 = trunc i64 %sub.ptr.sub106 to i32, !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %conv107}, i64 0, metadata !212), !dbg !905
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !906
  br label %if.end108, !dbg !907

if.end108:                                        ; preds = %for.body93, %if.then98
  %col.1 = phi i32 [ 0, %if.then98 ], [ %col.0328, %for.body93 ]
  %linel.1 = phi i32 [ %conv107, %if.then98 ], [ %linel.0330, %for.body93 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !908
  %add109 = add nsw i32 %20, %col.1, !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %add109}, i64 0, metadata !210), !dbg !908
  %inc111 = add nsw i32 %i.1329, 1, !dbg !899
  call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !204), !dbg !899
  %exitcond339 = icmp eq i32 %inc111, %start.0, !dbg !899
  br i1 %exitcond339, label %for.end112, label %for.body93, !dbg !899

for.end112:                                       ; preds = %if.end108, %if.end81
  %linel.0.lcssa = phi i32 [ %conv89, %if.end81 ], [ %linel.1, %if.end108 ]
  %col.0.lcssa = phi i32 [ 0, %if.end81 ], [ %add109, %if.end108 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !909
  %24 = load i32* %Rhsflag, align 4, !dbg !909, !tbaa !572
  %cmp113 = icmp eq i32 %24, 68, !dbg !909
  br i1 %cmp113, label %while.cond.preheader, label %if.end120, !dbg !909

while.cond.preheader:                             ; preds = %for.end112
  %call117324 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !910
  %tobool325 = icmp eq i8* %call117324, null, !dbg !910
  br i1 %tobool325, label %if.end120, label %while.body, !dbg !910

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call117326 = phi i8* [ %call117, %while.body ], [ %call117324, %while.cond.preheader ]
  store i8 69, i8* %call117326, align 1, !dbg !910, !tbaa !564
  %call117 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !910
  %tobool = icmp eq i8* %call117, null, !dbg !910
  br i1 %tobool, label %if.end120, label %while.body, !dbg !910

if.end120:                                        ; preds = %while.cond.preheader, %while.body, %for.end112
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !912
  %add121 = add nsw i32 %20, 1, !dbg !912
  %conv122 = sext i32 %add121 to i64, !dbg !912
  %call123 = call noalias i8* @malloc(i64 %conv122) #9, !dbg !912
  call void @llvm.dbg.value(metadata !{i8* %call123}, i64 0, metadata !228), !dbg !912
  %cmp124 = icmp eq i8* %call123, null, !dbg !913
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !913

if.then126:                                       ; preds = %if.end120
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !913
  unreachable

if.end127:                                        ; preds = %if.end120
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !914
  %idx.ext = sext i32 %20 to i64, !dbg !914
  %add.ptr = getelementptr inbounds i8* %call123, i64 %idx.ext, !dbg !914
  store i8 0, i8* %add.ptr, align 1, !dbg !914, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !915
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !221), !dbg !915
  %25 = load i32* %Nrhs, align 4, !dbg !915, !tbaa !572
  %cmp129320 = icmp sgt i32 %25, 0, !dbg !915
  br i1 %cmp129320, label %for.cond132.preheader.lr.ph, label %for.end245, !dbg !915

for.cond132.preheader.lr.ph:                      ; preds = %if.end127
  %cmp133309 = icmp sgt i32 %Nentries.0, 0, !dbg !917
  %cmp217314 = icmp sgt i32 %mul83.pre-phi, 0, !dbg !920
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !922
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !924
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !926
  %cmp172 = icmp eq i32 %24, 70, !dbg !926
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !927
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !928
  %conv201 = trunc i32 %24 to i8, !dbg !928
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !933
  br label %for.cond132.preheader, !dbg !915

for.cond132.preheader:                            ; preds = %for.cond132.preheader.lr.ph, %for.inc243
  %rhsi.0323 = phi i32 [ 0, %for.cond132.preheader.lr.ph ], [ %inc244, %for.inc243 ]
  %linel.2322 = phi i32 [ %linel.0.lcssa, %for.cond132.preheader.lr.ph ], [ %linel.5.lcssa, %for.inc243 ]
  %col.2321 = phi i32 [ %col.0.lcssa, %for.cond132.preheader.lr.ph ], [ %col.5.lcssa, %for.inc243 ]
  br i1 %cmp133309, label %for.body135, label %for.cond216.loopexit, !dbg !917

for.body135:                                      ; preds = %for.cond132.preheader, %if.end208
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %if.end208 ], [ 0, %for.cond132.preheader ]
  %linel.3312 = phi i32 [ %linel.4, %if.end208 ], [ %linel.2322, %for.cond132.preheader ]
  %col.3310 = phi i32 [ %add212, %if.end208 ], [ %col.2321, %for.cond132.preheader ]
  %cmp136 = icmp slt i32 %mul62, %linel.3312, !dbg !935
  %cond141 = select i1 %cmp136, i32 %mul62, i32 %linel.3312, !dbg !935
  %cmp142 = icmp slt i32 %col.3310, %cond141, !dbg !935
  br i1 %cmp142, label %if.end166, label %if.then144, !dbg !935

if.then144:                                       ; preds = %for.body135
  %call146 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !936
  %call148 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !937
  %sub.ptr.lhs.cast150 = ptrtoint i8* %call148 to i64, !dbg !937
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast, !dbg !937
  %conv153 = trunc i64 %sub.ptr.sub152 to i32, !dbg !937
  call void @llvm.dbg.value(metadata !{i32 %conv153}, i64 0, metadata !212), !dbg !937
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !933
  br i1 %cmp113, label %while.cond157.preheader, label %if.end166, !dbg !933

while.cond157.preheader:                          ; preds = %if.then144
  %call159306 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !938
  %tobool160307 = icmp eq i8* %call159306, null, !dbg !938
  br i1 %tobool160307, label %if.end166, label %while.body161, !dbg !938

while.body161:                                    ; preds = %while.cond157.preheader, %while.body161
  %call159308 = phi i8* [ %call159, %while.body161 ], [ %call159306, %while.cond157.preheader ]
  store i8 69, i8* %call159308, align 1, !dbg !938, !tbaa !564
  %call159 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !938
  %tobool160 = icmp eq i8* %call159, null, !dbg !938
  br i1 %tobool160, label %if.end166, label %while.body161, !dbg !938

if.end166:                                        ; preds = %while.cond157.preheader, %while.body161, %if.then144, %for.body135
  %col.4 = phi i32 [ %col.3310, %for.body135 ], [ 0, %if.then144 ], [ 0, %while.body161 ], [ 0, %while.cond157.preheader ]
  %linel.4 = phi i32 [ %linel.3312, %for.body135 ], [ %conv153, %if.then144 ], [ %conv153, %while.body161 ], [ %conv153, %while.cond157.preheader ]
  %idx.ext168 = sext i32 %col.4 to i64, !dbg !924
  %add.ptr169 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %idx.ext168, !dbg !924
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !924
  %call171 = call i8* @strncpy(i8* %call123, i8* %add.ptr169, i64 %idx.ext) #9, !dbg !924
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !926
  br i1 %cmp172, label %if.end208, label %land.lhs.true174, !dbg !926

land.lhs.true174:                                 ; preds = %if.end166
  %call175 = call i8* @strchr(i8* %call123, i32 69) #12, !dbg !926
  %cmp176 = icmp eq i8* %call175, null, !dbg !926
  br i1 %cmp176, label %if.then178, label %if.end208, !dbg !926

if.then178:                                       ; preds = %land.lhs.true174
  %call179 = call i64 @strlen(i8* %call123) #12, !dbg !940
  %conv180 = trunc i64 %call179 to i32, !dbg !940
  call void @llvm.dbg.value(metadata !{i32 %conv180}, i64 0, metadata !211), !dbg !940
  %add181 = add i32 %conv180, 1, !dbg !941
  call void @llvm.dbg.value(metadata !{i32 %add181}, i64 0, metadata !205), !dbg !941
  %26 = sext i32 %add181 to i64
  br label %for.cond182, !dbg !941

for.cond182:                                      ; preds = %for.body185, %if.then178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body185 ], [ %26, %if.then178 ]
  %j.0 = phi i32 [ %sub186, %for.body185 ], [ %add181, %if.then178 ]
  %27 = trunc i64 %indvars.iv to i32, !dbg !941
  %cmp183 = icmp sgt i32 %27, -1, !dbg !941
  br i1 %cmp183, label %for.body185, label %if.end208, !dbg !941

for.body185:                                      ; preds = %for.cond182
  %sub186 = add nsw i32 %j.0, -1, !dbg !942
  %idxprom = sext i32 %sub186 to i64, !dbg !942
  %arrayidx187 = getelementptr inbounds i8* %call123, i64 %idxprom, !dbg !942
  %28 = load i8* %arrayidx187, align 1, !dbg !942, !tbaa !564
  %arrayidx189 = getelementptr inbounds i8* %call123, i64 %indvars.iv, !dbg !942
  store i8 %28, i8* %arrayidx189, align 1, !dbg !942, !tbaa !564
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !943
  switch i8 %28, label %for.cond182 [
    i8 43, label %if.then200
    i8 45, label %if.then200
  ], !dbg !943

if.then200:                                       ; preds = %for.body185, %for.body185
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !227), !dbg !928
  store i8 %conv201, i8* %arrayidx187, align 1, !dbg !928, !tbaa !564
  br label %if.end208, !dbg !944

if.end208:                                        ; preds = %for.cond182, %if.end166, %if.then200, %land.lhs.true174
  %call209 = call double @atof(i8* %call123) #12, !dbg !945
  %arrayidx211 = getelementptr inbounds double* %b, i64 %indvars.iv336, !dbg !945
  store double %call209, double* %arrayidx211, align 8, !dbg !945, !tbaa !743
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !927
  %add212 = add nsw i32 %20, %col.4, !dbg !927
  call void @llvm.dbg.value(metadata !{i32 %add212}, i64 0, metadata !210), !dbg !927
  %indvars.iv.next337 = add i64 %indvars.iv336, 1, !dbg !917
  %lftr.wideiv = trunc i64 %indvars.iv.next337 to i32, !dbg !917
  %exitcond = icmp eq i32 %lftr.wideiv, %Nentries.0, !dbg !917
  br i1 %exitcond, label %for.cond216.loopexit, label %for.body135, !dbg !917

for.cond216.loopexit:                             ; preds = %if.end208, %for.cond132.preheader
  %linel.3.lcssa = phi i32 [ %linel.2322, %for.cond132.preheader ], [ %linel.4, %if.end208 ]
  %col.3.lcssa = phi i32 [ %col.2321, %for.cond132.preheader ], [ %add212, %if.end208 ]
  br i1 %cmp217314, label %for.body219, label %for.inc243, !dbg !920

for.body219:                                      ; preds = %for.cond216.loopexit, %if.end238
  %linel.5317 = phi i32 [ %linel.6, %if.end238 ], [ %linel.3.lcssa, %for.cond216.loopexit ]
  %i.3316 = phi i32 [ %inc241, %if.end238 ], [ 0, %for.cond216.loopexit ]
  %col.5315 = phi i32 [ %add239, %if.end238 ], [ %col.3.lcssa, %for.cond216.loopexit ]
  %cmp220 = icmp slt i32 %mul62, %linel.5317, !dbg !946
  %cond225 = select i1 %cmp220, i32 %mul62, i32 %linel.5317, !dbg !946
  %cmp226 = icmp slt i32 %col.5315, %cond225, !dbg !946
  br i1 %cmp226, label %if.end238, label %if.then228, !dbg !946

if.then228:                                       ; preds = %for.body219
  %call230 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !947
  %call232 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !949
  %sub.ptr.lhs.cast234 = ptrtoint i8* %call232 to i64, !dbg !949
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast, !dbg !949
  %conv237 = trunc i64 %sub.ptr.sub236 to i32, !dbg !949
  call void @llvm.dbg.value(metadata !{i32 %conv237}, i64 0, metadata !212), !dbg !949
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !950
  br label %if.end238, !dbg !951

if.end238:                                        ; preds = %for.body219, %if.then228
  %col.6 = phi i32 [ 0, %if.then228 ], [ %col.5315, %for.body219 ]
  %linel.6 = phi i32 [ %conv237, %if.then228 ], [ %linel.5317, %for.body219 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !225), !dbg !922
  %add239 = add nsw i32 %20, %col.6, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %add239}, i64 0, metadata !210), !dbg !922
  %inc241 = add nsw i32 %i.3316, 1, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc241}, i64 0, metadata !204), !dbg !920
  %exitcond338 = icmp eq i32 %inc241, %mul83.pre-phi, !dbg !920
  br i1 %exitcond338, label %for.inc243, label %for.body219, !dbg !920

for.inc243:                                       ; preds = %if.end238, %for.cond216.loopexit
  %linel.5.lcssa = phi i32 [ %linel.3.lcssa, %for.cond216.loopexit ], [ %linel.6, %if.end238 ]
  %col.5.lcssa = phi i32 [ %col.3.lcssa, %for.cond216.loopexit ], [ %add239, %if.end238 ]
  %inc244 = add nsw i32 %rhsi.0323, 1, !dbg !915
  call void @llvm.dbg.value(metadata !{i32 %inc244}, i64 0, metadata !223), !dbg !915
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !221), !dbg !915
  %29 = load i32* %Nrhs, align 4, !dbg !915, !tbaa !572
  %cmp129 = icmp slt i32 %inc244, %29, !dbg !915
  br i1 %cmp129, label %for.cond132.preheader, label %for.end245, !dbg !915

for.end245:                                       ; preds = %for.inc243, %if.end127
  call void @free(i8* %call123) #9, !dbg !952
  %call246 = call i32 @fclose(%struct._IO_FILE* %call) #9, !dbg !953
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !221), !dbg !954
  %30 = load i32* %Nrhs, align 4, !dbg !954, !tbaa !572
  br label %cleanup, !dbg !954

cleanup:                                          ; preds = %for.end245, %if.then57, %if.then46, %if.then16, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then46 ], [ 0, %if.then57 ], [ %30, %for.end245 ]
  call void @llvm.lifetime.end(i64 8192, i8* %1) #2, !dbg !955
  call void @llvm.lifetime.end(i64 73, i8* %0) #2, !dbg !955
  ret i32 %retval.0, !dbg !955
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newaux_double(i8* %filename, i8 signext %AuxType, double** nocapture %b) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %nonzeros = alloca i32, align 4
  %Type = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !242), !dbg !956
  call void @llvm.dbg.value(metadata !{i8 %AuxType}, i64 0, metadata !243), !dbg !956
  call void @llvm.dbg.value(metadata !{double** %b}, i64 0, metadata !244), !dbg !956
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !245), !dbg !957
  call void @llvm.dbg.declare(metadata !{i32* %M}, metadata !246), !dbg !957
  call void @llvm.dbg.declare(metadata !{i32* %N}, metadata !247), !dbg !957
  call void @llvm.dbg.declare(metadata !{i32* %nonzeros}, metadata !248), !dbg !957
  call void @llvm.dbg.declare(metadata !{i8** %Type}, metadata !249), !dbg !958
  %call = call i32 @readHB_info(i8* %filename, i32* %M, i32* %N, i32* %nonzeros, i8** %Type, i32* %Nrhs) #10, !dbg !959
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !245), !dbg !960
  %0 = load i32* %Nrhs, align 4, !dbg !960, !tbaa !572
  %cmp = icmp slt i32 %0, 1, !dbg !960
  br i1 %cmp, label %if.then, label %if.else, !dbg !960

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !961, !tbaa !563
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %1), !dbg !961
  br label %return, !dbg !963

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i8** %Type}, i64 0, metadata !249), !dbg !964
  %3 = load i8** %Type, align 8, !dbg !964, !tbaa !563
  %4 = load i8* %3, align 1, !dbg !964, !tbaa !564
  %cmp2 = icmp eq i8 %4, 67, !dbg !964
  br i1 %cmp2, label %if.then4, label %if.else15, !dbg !964

if.then4:                                         ; preds = %if.else
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !966, !tbaa !563
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %filename) #9, !dbg !966
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !968, !tbaa !563
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str41, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %6), !dbg !968
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !246), !dbg !969
  %8 = load i32* %M, align 4, !dbg !969, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !245), !dbg !969
  %9 = load i32* %Nrhs, align 4, !dbg !969, !tbaa !572
  %mul = mul nsw i32 %9, %8, !dbg !969
  %conv7 = sext i32 %mul to i64, !dbg !969
  %mul9 = shl nsw i64 %conv7, 4, !dbg !969
  %call10 = call noalias i8* @malloc(i64 %mul9) #9, !dbg !969
  %10 = bitcast i8* %call10 to double*, !dbg !969
  store double* %10, double** %b, align 8, !dbg !969, !tbaa !563
  %cmp11 = icmp eq i8* %call10, null, !dbg !970
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !970

if.then13:                                        ; preds = %if.then4
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #10, !dbg !970
  unreachable

if.end:                                           ; preds = %if.then4
  %call14 = call i32 @readHB_aux_double(i8* %filename, i8 signext %AuxType, double* %10) #10, !dbg !971
  br label %return, !dbg !971

if.else15:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !246), !dbg !972
  %11 = load i32* %M, align 4, !dbg !972, !tbaa !572
  %mul16 = mul nsw i32 %11, %0, !dbg !972
  %conv17 = sext i32 %mul16 to i64, !dbg !972
  %mul18 = shl nsw i64 %conv17, 3, !dbg !972
  %call19 = call noalias i8* @malloc(i64 %mul18) #9, !dbg !972
  %12 = bitcast i8* %call19 to double*, !dbg !972
  store double* %12, double** %b, align 8, !dbg !972, !tbaa !563
  %cmp20 = icmp eq i8* %call19, null, !dbg !974
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !974

if.then22:                                        ; preds = %if.else15
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #10, !dbg !974
  unreachable

if.end23:                                         ; preds = %if.else15
  %call24 = call i32 @readHB_aux_double(i8* %filename, i8 signext %AuxType, double* %12) #10, !dbg !975
  br label %return, !dbg !975

return:                                           ; preds = %if.end23, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call14, %if.end ], [ %call24, %if.end23 ]
  ret i32 %retval.0, !dbg !976
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeHB_mat_double(i8* %filename, i32 %M, i32 %N, i32 %nz, i32* nocapture %colptr, i32* nocapture %rowind, double* nocapture %val, i32 %Nrhs, double* nocapture %rhs, double* nocapture %guess, double* nocapture %exact, i8* %Title, i8* %Key, i8* %Type, i8* %Ptrfmt, i8* %Indfmt, i8* %Valfmt, i8* %Rhsfmt, i8* %Rhstype) #0 {
entry:
  %Ptrperline = alloca i32, align 4
  %Ptrwidth = alloca i32, align 4
  %Indperline = alloca i32, align 4
  %Indwidth = alloca i32, align 4
  %Rhsperline = alloca i32, align 4
  %Rhswidth = alloca i32, align 4
  %Rhsprec = alloca i32, align 4
  %Rhsflag = alloca i32, align 4
  %Valperline = alloca i32, align 4
  %Valwidth = alloca i32, align 4
  %Valprec = alloca i32, align 4
  %Valflag = alloca i32, align 4
  %pformat = alloca [16 x i8], align 16
  %iformat = alloca [16 x i8], align 16
  %vformat = alloca [19 x i8], align 16
  %rformat = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !258), !dbg !977
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !259), !dbg !977
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !260), !dbg !977
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !261), !dbg !978
  call void @llvm.dbg.value(metadata !{i32* %colptr}, i64 0, metadata !262), !dbg !978
  call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !263), !dbg !978
  call void @llvm.dbg.value(metadata !{double* %val}, i64 0, metadata !264), !dbg !979
  call void @llvm.dbg.value(metadata !{i32 %Nrhs}, i64 0, metadata !265), !dbg !979
  call void @llvm.dbg.value(metadata !{double* %rhs}, i64 0, metadata !266), !dbg !979
  call void @llvm.dbg.value(metadata !{double* %guess}, i64 0, metadata !267), !dbg !980
  call void @llvm.dbg.value(metadata !{double* %exact}, i64 0, metadata !268), !dbg !980
  call void @llvm.dbg.value(metadata !{i8* %Title}, i64 0, metadata !269), !dbg !981
  call void @llvm.dbg.value(metadata !{i8* %Key}, i64 0, metadata !270), !dbg !981
  call void @llvm.dbg.value(metadata !{i8* %Type}, i64 0, metadata !271), !dbg !981
  call void @llvm.dbg.value(metadata !{i8* %Ptrfmt}, i64 0, metadata !272), !dbg !982
  call void @llvm.dbg.value(metadata !{i8* %Indfmt}, i64 0, metadata !273), !dbg !982
  call void @llvm.dbg.value(metadata !{i8* %Valfmt}, i64 0, metadata !274), !dbg !982
  call void @llvm.dbg.value(metadata !{i8* %Rhsfmt}, i64 0, metadata !275), !dbg !982
  call void @llvm.dbg.value(metadata !{i8* %Rhstype}, i64 0, metadata !276), !dbg !983
  call void @llvm.dbg.declare(metadata !{i32* %Ptrperline}, metadata !291), !dbg !984
  call void @llvm.dbg.declare(metadata !{i32* %Ptrwidth}, metadata !292), !dbg !984
  call void @llvm.dbg.declare(metadata !{i32* %Indperline}, metadata !293), !dbg !984
  call void @llvm.dbg.declare(metadata !{i32* %Indwidth}, metadata !294), !dbg !984
  call void @llvm.dbg.declare(metadata !{i32* %Rhsperline}, metadata !295), !dbg !985
  call void @llvm.dbg.declare(metadata !{i32* %Rhswidth}, metadata !296), !dbg !985
  call void @llvm.dbg.declare(metadata !{i32* %Rhsprec}, metadata !297), !dbg !985
  call void @llvm.dbg.declare(metadata !{i32* %Rhsflag}, metadata !298), !dbg !986
  call void @llvm.dbg.declare(metadata !{i32* %Valperline}, metadata !299), !dbg !987
  call void @llvm.dbg.declare(metadata !{i32* %Valwidth}, metadata !300), !dbg !987
  call void @llvm.dbg.declare(metadata !{i32* %Valprec}, metadata !301), !dbg !987
  call void @llvm.dbg.declare(metadata !{i32* %Valflag}, metadata !302), !dbg !988
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %pformat}, metadata !303), !dbg !989
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %iformat}, metadata !307), !dbg !989
  call void @llvm.dbg.declare(metadata !{[19 x i8]* %vformat}, metadata !308), !dbg !989
  call void @llvm.dbg.declare(metadata !{[19 x i8]* %rformat}, metadata !312), !dbg !989
  %0 = load i8* %Type, align 1, !dbg !990, !tbaa !564
  %cmp = icmp eq i8 %0, 67, !dbg !990
  br i1 %cmp, label %if.then, label %if.end, !dbg !990

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %nz, 1, !dbg !991
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !289), !dbg !991
  %mul3 = shl nsw i32 %M, 1, !dbg !993
  call void @llvm.dbg.value(metadata !{i32 %mul3}, i64 0, metadata !290), !dbg !993
  br label %if.end, !dbg !994

if.end:                                           ; preds = %entry, %if.then
  %nvalentries.0 = phi i32 [ %mul, %if.then ], [ %nz, %entry ]
  %nrhsentries.0 = phi i32 [ %mul3, %if.then ], [ %M, %entry ]
  %cmp4 = icmp eq i8* %filename, null, !dbg !995
  br i1 %cmp4, label %if.else12, label %if.then6, !dbg !995

if.then6:                                         ; preds = %if.end
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !996
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !277), !dbg !996
  %cmp7 = icmp eq %struct._IO_FILE* %call, null, !dbg !996
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !996

if.then9:                                         ; preds = %if.then6
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !998, !tbaa !563
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !998
  br label %return, !dbg !1000

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !1001, !tbaa !563
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %2}, i64 0, metadata !277), !dbg !1001
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.else12
  %out_file.0 = phi %struct._IO_FILE* [ %call, %if.then6 ], [ %2, %if.else12 ]
  %cmp14 = icmp eq i8* %Ptrfmt, null, !dbg !1002
  call void @llvm.dbg.value(metadata !1003, i64 0, metadata !272), !dbg !1002
  %.Ptrfmt = select i1 %cmp14, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* %Ptrfmt, !dbg !1002
  call fastcc void @ParseIfmt(i8* %.Ptrfmt, i32* %Ptrperline, i32* %Ptrwidth) #10, !dbg !1004
  %arraydecay = getelementptr inbounds [16 x i8]* %pformat, i64 0, i64 0, !dbg !1005
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !292), !dbg !1005
  %3 = load i32* %Ptrwidth, align 4, !dbg !1005, !tbaa !572
  %call19 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %3) #9, !dbg !1005
  %add = add nsw i32 %N, 1, !dbg !1006
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !291), !dbg !1006
  %4 = load i32* %Ptrperline, align 4, !dbg !1006, !tbaa !572
  %div = sdiv i32 %add, %4, !dbg !1006
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !285), !dbg !1006
  %rem = srem i32 %add, %4, !dbg !1007
  %not.cmp21 = icmp ne i32 %rem, 0, !dbg !1007
  %inc = zext i1 %not.cmp21 to i32, !dbg !1007
  %ptrcrd.0 = add nsw i32 %inc, %div, !dbg !1007
  %cmp25 = icmp eq i8* %Indfmt, null, !dbg !1008
  call void @llvm.dbg.value(metadata !{i8* %.Ptrfmt}, i64 0, metadata !273), !dbg !1008
  %.Ptrfmt.Indfmt = select i1 %cmp25, i8* %.Ptrfmt, i8* %Indfmt, !dbg !1008
  call fastcc void @ParseIfmt(i8* %.Ptrfmt.Indfmt, i32* %Indperline, i32* %Indwidth) #10, !dbg !1009
  %arraydecay30 = getelementptr inbounds [16 x i8]* %iformat, i64 0, i64 0, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !294), !dbg !1010
  %5 = load i32* %Indwidth, align 4, !dbg !1010, !tbaa !572
  %call31 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %5) #9, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !293), !dbg !1011
  %6 = load i32* %Indperline, align 4, !dbg !1011, !tbaa !572
  %div32 = sdiv i32 %nz, %6, !dbg !1011
  call void @llvm.dbg.value(metadata !{i32 %div32}, i64 0, metadata !286), !dbg !1011
  %rem33 = srem i32 %nz, %6, !dbg !1012
  %not.cmp34 = icmp ne i32 %rem33, 0, !dbg !1012
  %inc37 = zext i1 %not.cmp34 to i32, !dbg !1012
  %indcrd.0 = add nsw i32 %inc37, %div32, !dbg !1012
  %7 = load i8* %Type, align 1, !dbg !1013, !tbaa !564
  %cmp41 = icmp eq i8 %7, 80, !dbg !1013
  br i1 %cmp41, label %if.end71, label %if.then43, !dbg !1013

if.then43:                                        ; preds = %if.end13
  %cmp44 = icmp eq i8* %Valfmt, null, !dbg !1014
  call void @llvm.dbg.value(metadata !1016, i64 0, metadata !274), !dbg !1014
  %.Valfmt = select i1 %cmp44, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), i8* %Valfmt, !dbg !1014
  call fastcc void @ParseRfmt(i8* %.Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #10, !dbg !1017
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !302), !dbg !1018
  %8 = load i32* %Valflag, align 4, !dbg !1018, !tbaa !572
  %cmp49 = icmp eq i32 %8, 68, !dbg !1018
  br i1 %cmp49, label %if.end53.thread, label %if.end53, !dbg !1018

if.end53.thread:                                  ; preds = %if.then43
  %call52 = call i8* @strchr(i8* %.Valfmt, i32 68) #12, !dbg !1018
  store i8 69, i8* %call52, align 1, !dbg !1018, !tbaa !564
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !302), !dbg !1019
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !302), !dbg !1019
  %arraydecay57520 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0, !dbg !1020
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !300), !dbg !1020
  %9 = load i32* %Valwidth, align 4, !dbg !1020, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Valprec}, i64 0, metadata !301), !dbg !1020
  %10 = load i32* %Valprec, align 4, !dbg !1020, !tbaa !572
  br label %if.else59, !dbg !1019

if.end53:                                         ; preds = %if.then43
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !302), !dbg !1019
  %cmp54 = icmp eq i32 %8, 70, !dbg !1019
  %arraydecay57 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0, !dbg !1020
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !300), !dbg !1020
  %11 = load i32* %Valwidth, align 4, !dbg !1020, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Valprec}, i64 0, metadata !301), !dbg !1020
  %12 = load i32* %Valprec, align 4, !dbg !1020, !tbaa !572
  br i1 %cmp54, label %if.then56, label %if.else59, !dbg !1019

if.then56:                                        ; preds = %if.end53
  %call58 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay57, i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i32 %11, i32 %12) #9, !dbg !1020
  br label %if.end62, !dbg !1020

if.else59:                                        ; preds = %if.end53.thread, %if.end53
  %13 = phi i32 [ %10, %if.end53.thread ], [ %12, %if.end53 ]
  %14 = phi i32 [ %9, %if.end53.thread ], [ %11, %if.end53 ]
  %arraydecay57521 = phi i8* [ %arraydecay57520, %if.end53.thread ], [ %arraydecay57, %if.end53 ]
  %call61 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay57521, i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), i32 %14, i32 %13) #9, !dbg !1021
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then56
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !299), !dbg !1022
  %15 = load i32* %Valperline, align 4, !dbg !1022, !tbaa !572
  %div63 = sdiv i32 %nvalentries.0, %15, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32 %div63}, i64 0, metadata !287), !dbg !1022
  %rem64 = srem i32 %nvalentries.0, %15, !dbg !1023
  %not.cmp65 = icmp ne i32 %rem64, 0, !dbg !1023
  %inc68 = zext i1 %not.cmp65 to i32, !dbg !1023
  %div63.inc68 = add nsw i32 %inc68, %div63, !dbg !1023
  br label %if.end71, !dbg !1023

if.end71:                                         ; preds = %if.end62, %if.end13
  %16 = phi i32 [ %15, %if.end62 ], [ undef, %if.end13 ]
  %Valfmt.addr.1 = phi i8* [ %.Valfmt, %if.end62 ], [ %Valfmt, %if.end13 ]
  %valcrd.0 = phi i32 [ %div63.inc68, %if.end62 ], [ 0, %if.end13 ]
  %cmp72 = icmp sgt i32 %Nrhs, 0, !dbg !1024
  br i1 %cmp72, label %if.then74, label %if.end117, !dbg !1024

if.then74:                                        ; preds = %if.end71
  %cmp75 = icmp eq i8* %Rhsfmt, null, !dbg !1025
  call void @llvm.dbg.value(metadata !{i8* %Valfmt.addr.1}, i64 0, metadata !275), !dbg !1025
  %Valfmt.addr.1.Rhsfmt = select i1 %cmp75, i8* %Valfmt.addr.1, i8* %Rhsfmt, !dbg !1025
  call fastcc void @ParseRfmt(i8* %Valfmt.addr.1.Rhsfmt, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #10, !dbg !1027
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !298), !dbg !1028
  %17 = load i32* %Rhsflag, align 4, !dbg !1028, !tbaa !572
  %cmp80 = icmp eq i32 %17, 70, !dbg !1028
  %arraydecay83 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0, !dbg !1029
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !296), !dbg !1029
  %18 = load i32* %Rhswidth, align 4, !dbg !1029, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Rhsprec}, i64 0, metadata !297), !dbg !1029
  %19 = load i32* %Rhsprec, align 4, !dbg !1029, !tbaa !572
  br i1 %cmp80, label %if.end88.thread, label %if.end88, !dbg !1028

if.end88.thread:                                  ; preds = %if.then74
  %call84 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay83, i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i32 %18, i32 %19) #9, !dbg !1029
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !298), !dbg !1030
  br label %if.end93, !dbg !1030

if.end88:                                         ; preds = %if.then74
  %call87 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay83, i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), i32 %18, i32 %19) #9, !dbg !1031
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !298), !dbg !1030
  %cmp89 = icmp eq i32 %17, 68, !dbg !1030
  br i1 %cmp89, label %if.then91, label %if.end93, !dbg !1030

if.then91:                                        ; preds = %if.end88
  %call92 = call i8* @strchr(i8* %Valfmt.addr.1.Rhsfmt, i32 68) #12, !dbg !1030
  store i8 69, i8* %call92, align 1, !dbg !1030, !tbaa !564
  br label %if.end93, !dbg !1030

if.end93:                                         ; preds = %if.end88.thread, %if.then91, %if.end88
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1032
  %20 = load i32* %Rhsperline, align 4, !dbg !1032, !tbaa !572
  %div94 = sdiv i32 %nrhsentries.0, %20, !dbg !1032
  call void @llvm.dbg.value(metadata !{i32 %div94}, i64 0, metadata !288), !dbg !1032
  %rem95 = srem i32 %nrhsentries.0, %20, !dbg !1033
  %not.cmp96 = icmp ne i32 %rem95, 0, !dbg !1033
  %inc99 = zext i1 %not.cmp96 to i32, !dbg !1033
  %div94.inc99 = add nsw i32 %inc99, %div94, !dbg !1033
  %arrayidx101 = getelementptr inbounds i8* %Rhstype, i64 1, !dbg !1034
  %21 = load i8* %arrayidx101, align 1, !dbg !1034, !tbaa !564
  %cmp103 = icmp eq i8 %21, 71, !dbg !1034
  %add106 = zext i1 %cmp103 to i32, !dbg !1034
  %rhscrd.1 = shl nsw i32 %div94.inc99, %add106, !dbg !1034
  %arrayidx108 = getelementptr inbounds i8* %Rhstype, i64 2, !dbg !1035
  %22 = load i8* %arrayidx108, align 1, !dbg !1035, !tbaa !564
  %cmp110 = icmp eq i8 %22, 88, !dbg !1035
  %add113 = zext i1 %cmp110 to i32, !dbg !1035
  %add113.rhscrd.1 = shl nsw i32 %rhscrd.1, %add113, !dbg !1035
  %mul115 = mul nsw i32 %add113.rhscrd.1, %Nrhs, !dbg !1036
  call void @llvm.dbg.value(metadata !{i32 %mul115}, i64 0, metadata !288), !dbg !1036
  br label %if.end117, !dbg !1037

if.end117:                                        ; preds = %if.end71, %if.end93
  %23 = phi i32 [ %20, %if.end93 ], [ undef, %if.end71 ]
  %Rhsfmt.addr.1 = phi i8* [ %Valfmt.addr.1.Rhsfmt, %if.end93 ], [ %Rhsfmt, %if.end71 ]
  %rhscrd.3 = phi i32 [ %mul115, %if.end93 ], [ 0, %if.end71 ]
  %add118 = add nsw i32 %ptrcrd.0, 4, !dbg !1038
  %add119 = add nsw i32 %add118, %indcrd.0, !dbg !1038
  %add120 = add nsw i32 %add119, %valcrd.0, !dbg !1038
  %add121 = add nsw i32 %add120, %rhscrd.3, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %add121}, i64 0, metadata !284), !dbg !1038
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([32 x i8]* @.str49, i64 0, i64 0), i8* %Title, i8* %Key, i32 %add121, i32 %ptrcrd.0, i32 %indcrd.0, i32 %valcrd.0, i32 %rhscrd.3) #9, !dbg !1039
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([21 x i8]* @.str50, i64 0, i64 0), i8* %Type, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), i32 %M, i32 %N, i32 %nz) #9, !dbg !1040
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([16 x i8]* @.str52, i64 0, i64 0), i8* %.Ptrfmt, i8* %.Ptrfmt.Indfmt, i8* %Valfmt.addr.1) #9, !dbg !1041
  %cmp125 = icmp eq i32 %Nrhs, 0, !dbg !1042
  br i1 %cmp125, label %if.else129, label %if.then127, !dbg !1042

if.then127:                                       ; preds = %if.end117
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* %Rhsfmt.addr.1, i8* %Rhstype, i32 %Nrhs) #9, !dbg !1043
  br label %for.cond.preheader, !dbg !1045

if.else129:                                       ; preds = %if.end117
  %fputc475 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1046
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else129, %if.then127
  %cmp133498 = icmp sgt i32 %N, -1, !dbg !1047
  br i1 %cmp133498, label %for.body, label %for.end, !dbg !1047

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx135 = getelementptr inbounds i32* %colptr, i64 %indvars.iv517, !dbg !1049
  %24 = load i32* %arrayidx135, align 4, !dbg !1049, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !280), !dbg !1049
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay, i32 %24) #9, !dbg !1051
  %indvars.iv.next518 = add i64 %indvars.iv517, 1, !dbg !1047
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !291), !dbg !1052
  %25 = trunc i64 %indvars.iv.next518 to i32, !dbg !1052
  %rem140 = srem i32 %25, %4, !dbg !1052
  %cmp141 = icmp eq i32 %rem140, 0, !dbg !1052
  br i1 %cmp141, label %if.then143, label %for.cond.backedge, !dbg !1052

for.cond.backedge:                                ; preds = %for.body, %if.then143
  %cmp133 = icmp slt i32 %25, %add, !dbg !1047
  br i1 %cmp133, label %for.body, label %for.end, !dbg !1047

if.then143:                                       ; preds = %for.body
  %fputc472 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1052
  br label %for.cond.backedge, !dbg !1052

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !291), !dbg !1053
  %cmp149 = icmp eq i32 %rem, 0, !dbg !1053
  br i1 %cmp149, label %for.cond154.preheader, label %if.then151, !dbg !1053

if.then151:                                       ; preds = %for.end
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1053
  br label %for.cond154.preheader, !dbg !1053

for.cond154.preheader:                            ; preds = %for.end, %if.then151
  %cmp155496 = icmp sgt i32 %nz, 0, !dbg !1054
  br i1 %cmp155496, label %for.body157, label %for.end172, !dbg !1054

for.body157:                                      ; preds = %for.cond154.preheader, %for.cond154.backedge
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %for.cond154.backedge ], [ 0, %for.cond154.preheader ]
  %arrayidx159 = getelementptr inbounds i32* %rowind, i64 %indvars.iv513, !dbg !1056
  %26 = load i32* %arrayidx159, align 4, !dbg !1056, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !280), !dbg !1056
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay30, i32 %26) #9, !dbg !1058
  %indvars.iv.next514 = add i64 %indvars.iv513, 1, !dbg !1054
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !293), !dbg !1059
  %27 = trunc i64 %indvars.iv.next514 to i32, !dbg !1059
  %rem164 = srem i32 %27, %6, !dbg !1059
  %cmp165 = icmp eq i32 %rem164, 0, !dbg !1059
  br i1 %cmp165, label %if.then167, label %for.cond154.backedge, !dbg !1059

for.cond154.backedge:                             ; preds = %for.body157, %if.then167
  %exitcond516 = icmp eq i32 %27, %nz, !dbg !1054
  br i1 %exitcond516, label %for.end172, label %for.body157, !dbg !1054

if.then167:                                       ; preds = %for.body157
  %fputc469 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1059
  br label %for.cond154.backedge, !dbg !1059

for.end172:                                       ; preds = %for.cond154.backedge, %for.cond154.preheader
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !293), !dbg !1060
  %cmp174 = icmp eq i32 %rem33, 0, !dbg !1060
  br i1 %cmp174, label %if.end178, label %if.then176, !dbg !1060

if.then176:                                       ; preds = %for.end172
  %fputc442 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1060
  br label %if.end178, !dbg !1060

if.end178:                                        ; preds = %for.end172, %if.then176
  %28 = load i8* %Type, align 1, !dbg !1061, !tbaa !564
  %cmp181 = icmp eq i8 %28, 80, !dbg !1061
  br i1 %cmp181, label %if.end312, label %for.cond184.preheader, !dbg !1061

for.cond184.preheader:                            ; preds = %if.end178
  %cmp185494 = icmp sgt i32 %nvalentries.0, 0, !dbg !1062
  br i1 %cmp185494, label %for.body187.lr.ph, label %for.end201, !dbg !1062

for.body187.lr.ph:                                ; preds = %for.cond184.preheader
  %arraydecay188 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0, !dbg !1065
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !299), !dbg !1067
  br label %for.body187, !dbg !1062

for.body187:                                      ; preds = %for.cond184.backedge, %for.body187.lr.ph
  %indvars.iv509 = phi i64 [ 0, %for.body187.lr.ph ], [ %indvars.iv.next510, %for.cond184.backedge ]
  %arrayidx190 = getelementptr inbounds double* %val, i64 %indvars.iv509, !dbg !1065
  %29 = load double* %arrayidx190, align 8, !dbg !1065, !tbaa !743
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay188, double %29) #9, !dbg !1065
  %indvars.iv.next510 = add i64 %indvars.iv509, 1, !dbg !1062
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !299), !dbg !1067
  %30 = trunc i64 %indvars.iv.next510 to i32, !dbg !1067
  %rem193 = srem i32 %30, %16, !dbg !1067
  %cmp194 = icmp eq i32 %rem193, 0, !dbg !1067
  br i1 %cmp194, label %if.then196, label %for.cond184.backedge, !dbg !1067

for.cond184.backedge:                             ; preds = %for.body187, %if.then196
  %exitcond512 = icmp eq i32 %30, %nvalentries.0, !dbg !1062
  br i1 %exitcond512, label %for.end201, label %for.body187, !dbg !1062

if.then196:                                       ; preds = %for.body187
  %fputc466 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1067
  br label %for.cond184.backedge, !dbg !1067

for.end201:                                       ; preds = %for.cond184.backedge, %for.cond184.preheader
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !299), !dbg !1068
  %rem202 = srem i32 %nvalentries.0, %16, !dbg !1068
  %cmp203 = icmp eq i32 %rem202, 0, !dbg !1068
  br i1 %cmp203, label %if.end207, label %if.then205, !dbg !1068

if.then205:                                       ; preds = %for.end201
  %fputc445 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1068
  br label %if.end207, !dbg !1068

if.end207:                                        ; preds = %for.end201, %if.then205
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !282), !dbg !1069
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !283), !dbg !1070
  br i1 %cmp72, label %for.cond215.preheader.lr.ph, label %if.end312, !dbg !1071

for.cond215.preheader.lr.ph:                      ; preds = %if.end207
  %cmp216476 = icmp sgt i32 %nrhsentries.0, 0, !dbg !1072
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1077
  %idx.ext = sext i32 %nrhsentries.0 to i64, !dbg !1078
  %arrayidx240 = getelementptr inbounds i8* %Rhstype, i64 1, !dbg !1079
  %arrayidx274 = getelementptr inbounds i8* %Rhstype, i64 2, !dbg !1080
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1081
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1083
  %arraydecay283 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0, !dbg !1085
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1088
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1089
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1091
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1093
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1096
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1098
  br label %for.cond215.preheader, !dbg !1100

for.cond215.preheader:                            ; preds = %for.inc308, %for.cond215.preheader.lr.ph
  %linemod.0493 = phi i32 [ 0, %for.cond215.preheader.lr.ph ], [ %linemod.5, %for.inc308 ]
  %acount.0492 = phi i32 [ 1, %for.cond215.preheader.lr.ph ], [ %acount.5, %for.inc308 ]
  %rhs.addr.0491 = phi double* [ %rhs, %for.cond215.preheader.lr.ph ], [ %add.ptr, %for.inc308 ]
  %i.3490 = phi i32 [ 0, %for.cond215.preheader.lr.ph ], [ %inc309, %for.inc308 ]
  %guess.addr.0489 = phi double* [ %guess, %for.cond215.preheader.lr.ph ], [ %guess.addr.1, %for.inc308 ]
  %exact.addr.0488 = phi double* [ %exact, %for.cond215.preheader.lr.ph ], [ %exact.addr.1, %for.inc308 ]
  br i1 %cmp216476, label %for.body218, label %for.end232, !dbg !1072

for.body218:                                      ; preds = %for.cond215.preheader, %for.inc230
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc230 ], [ 0, %for.cond215.preheader ]
  %acount.1478 = phi i32 [ %inc223, %for.inc230 ], [ %acount.0492, %for.cond215.preheader ]
  %arrayidx221 = getelementptr inbounds double* %rhs.addr.0491, i64 %indvars.iv, !dbg !1101
  %31 = load double* %arrayidx221, align 8, !dbg !1101, !tbaa !743
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %31) #9, !dbg !1101
  %inc223 = add nsw i32 %acount.1478, 1, !dbg !1098
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !282), !dbg !1098
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1098
  %rem224 = srem i32 %acount.1478, %23, !dbg !1098
  %cmp225 = icmp eq i32 %rem224, %linemod.0493, !dbg !1098
  br i1 %cmp225, label %if.then227, label %for.inc230, !dbg !1098

if.then227:                                       ; preds = %for.body218
  %fputc463 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1098
  br label %for.inc230, !dbg !1098

for.inc230:                                       ; preds = %for.body218, %if.then227
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1072
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1072
  %exitcond = icmp eq i32 %lftr.wideiv, %nrhsentries.0, !dbg !1072
  br i1 %exitcond, label %for.cond215.for.end232_crit_edge, label %for.body218, !dbg !1072

for.cond215.for.end232_crit_edge:                 ; preds = %for.inc230
  %32 = add i32 %nrhsentries.0, %acount.0492, !dbg !1072
  br label %for.end232, !dbg !1072

for.end232:                                       ; preds = %for.cond215.for.end232_crit_edge, %for.cond215.preheader
  %acount.1.lcssa = phi i32 [ %32, %for.cond215.for.end232_crit_edge ], [ %acount.0492, %for.cond215.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1077
  %rem233 = srem i32 %acount.1.lcssa, %23, !dbg !1077
  %cmp234 = icmp eq i32 %rem233, %linemod.0493, !dbg !1077
  br i1 %cmp234, label %if.end239, label %if.then236, !dbg !1077

if.then236:                                       ; preds = %for.end232
  %fputc448 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1102
  %sub = add nsw i32 %acount.1.lcssa, -1, !dbg !1096
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1096
  %rem238 = srem i32 %sub, %23, !dbg !1096
  call void @llvm.dbg.value(metadata !{i32 %rem238}, i64 0, metadata !283), !dbg !1096
  br label %if.end239, !dbg !1103

if.end239:                                        ; preds = %for.end232, %if.then236
  %linemod.1 = phi i32 [ %rem238, %if.then236 ], [ %linemod.0493, %for.end232 ]
  %add.ptr = getelementptr inbounds double* %rhs.addr.0491, i64 %idx.ext, !dbg !1078
  call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !266), !dbg !1078
  %33 = load i8* %arrayidx240, align 1, !dbg !1079, !tbaa !564
  %cmp242 = icmp eq i8 %33, 71, !dbg !1079
  br i1 %cmp242, label %for.cond245.preheader, label %if.end273, !dbg !1079

for.cond245.preheader:                            ; preds = %if.end239
  br i1 %cmp216476, label %for.body248, label %for.end262, !dbg !1104

for.body248:                                      ; preds = %for.cond245.preheader, %for.inc260
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.inc260 ], [ 0, %for.cond245.preheader ]
  %acount.2481 = phi i32 [ %inc253, %for.inc260 ], [ %acount.1.lcssa, %for.cond245.preheader ]
  %arrayidx251 = getelementptr inbounds double* %guess.addr.0489, i64 %indvars.iv500, !dbg !1105
  %34 = load double* %arrayidx251, align 8, !dbg !1105, !tbaa !743
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %34) #9, !dbg !1105
  %inc253 = add nsw i32 %acount.2481, 1, !dbg !1093
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !282), !dbg !1093
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1093
  %rem254 = srem i32 %acount.2481, %23, !dbg !1093
  %cmp255 = icmp eq i32 %rem254, %linemod.1, !dbg !1093
  br i1 %cmp255, label %if.then257, label %for.inc260, !dbg !1093

if.then257:                                       ; preds = %for.body248
  %fputc460 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1093
  br label %for.inc260, !dbg !1093

for.inc260:                                       ; preds = %for.body248, %if.then257
  %indvars.iv.next501 = add i64 %indvars.iv500, 1, !dbg !1104
  %lftr.wideiv502 = trunc i64 %indvars.iv.next501 to i32, !dbg !1104
  %exitcond503 = icmp eq i32 %lftr.wideiv502, %nrhsentries.0, !dbg !1104
  br i1 %exitcond503, label %for.cond245.for.end262_crit_edge, label %for.body248, !dbg !1104

for.cond245.for.end262_crit_edge:                 ; preds = %for.inc260
  %35 = add i32 %nrhsentries.0, %acount.1.lcssa, !dbg !1104
  br label %for.end262, !dbg !1104

for.end262:                                       ; preds = %for.cond245.for.end262_crit_edge, %for.cond245.preheader
  %acount.2.lcssa = phi i32 [ %35, %for.cond245.for.end262_crit_edge ], [ %acount.1.lcssa, %for.cond245.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1089
  %rem263 = srem i32 %acount.2.lcssa, %23, !dbg !1089
  %cmp264 = icmp eq i32 %rem263, %linemod.1, !dbg !1089
  br i1 %cmp264, label %if.end270, label %if.then266, !dbg !1089

if.then266:                                       ; preds = %for.end262
  %fputc457 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1106
  %sub268 = add nsw i32 %acount.2.lcssa, -1, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1091
  %rem269 = srem i32 %sub268, %23, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %rem269}, i64 0, metadata !283), !dbg !1091
  br label %if.end270, !dbg !1107

if.end270:                                        ; preds = %for.end262, %if.then266
  %linemod.2 = phi i32 [ %rem269, %if.then266 ], [ %linemod.1, %for.end262 ]
  %add.ptr272 = getelementptr inbounds double* %guess.addr.0489, i64 %idx.ext, !dbg !1108
  call void @llvm.dbg.value(metadata !{double* %add.ptr272}, i64 0, metadata !267), !dbg !1108
  br label %if.end273, !dbg !1109

if.end273:                                        ; preds = %if.end239, %if.end270
  %guess.addr.1 = phi double* [ %add.ptr272, %if.end270 ], [ %guess.addr.0489, %if.end239 ]
  %acount.3 = phi i32 [ %acount.2.lcssa, %if.end270 ], [ %acount.1.lcssa, %if.end239 ]
  %linemod.3 = phi i32 [ %linemod.2, %if.end270 ], [ %linemod.1, %if.end239 ]
  %36 = load i8* %arrayidx274, align 1, !dbg !1080, !tbaa !564
  %cmp276 = icmp eq i8 %36, 88, !dbg !1080
  br i1 %cmp276, label %for.cond279.preheader, label %for.inc308, !dbg !1080

for.cond279.preheader:                            ; preds = %if.end273
  br i1 %cmp216476, label %for.body282, label %for.end296, !dbg !1110

for.body282:                                      ; preds = %for.cond279.preheader, %for.inc294
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %for.inc294 ], [ 0, %for.cond279.preheader ]
  %acount.4485 = phi i32 [ %inc287, %for.inc294 ], [ %acount.3, %for.cond279.preheader ]
  %arrayidx285 = getelementptr inbounds double* %exact.addr.0488, i64 %indvars.iv504, !dbg !1085
  %37 = load double* %arrayidx285, align 8, !dbg !1085, !tbaa !743
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %37) #9, !dbg !1085
  %inc287 = add nsw i32 %acount.4485, 1, !dbg !1088
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !282), !dbg !1088
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1088
  %rem288 = srem i32 %acount.4485, %23, !dbg !1088
  %cmp289 = icmp eq i32 %rem288, %linemod.3, !dbg !1088
  br i1 %cmp289, label %if.then291, label %for.inc294, !dbg !1088

if.then291:                                       ; preds = %for.body282
  %fputc454 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1088
  br label %for.inc294, !dbg !1088

for.inc294:                                       ; preds = %for.body282, %if.then291
  %indvars.iv.next505 = add i64 %indvars.iv504, 1, !dbg !1110
  %lftr.wideiv506 = trunc i64 %indvars.iv.next505 to i32, !dbg !1110
  %exitcond507 = icmp eq i32 %lftr.wideiv506, %nrhsentries.0, !dbg !1110
  br i1 %exitcond507, label %for.cond279.for.end296_crit_edge, label %for.body282, !dbg !1110

for.cond279.for.end296_crit_edge:                 ; preds = %for.inc294
  %38 = add i32 %nrhsentries.0, %acount.3, !dbg !1110
  br label %for.end296, !dbg !1110

for.end296:                                       ; preds = %for.cond279.for.end296_crit_edge, %for.cond279.preheader
  %acount.4.lcssa = phi i32 [ %38, %for.cond279.for.end296_crit_edge ], [ %acount.3, %for.cond279.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1081
  %rem297 = srem i32 %acount.4.lcssa, %23, !dbg !1081
  %cmp298 = icmp eq i32 %rem297, %linemod.3, !dbg !1081
  br i1 %cmp298, label %if.end304, label %if.then300, !dbg !1081

if.then300:                                       ; preds = %for.end296
  %fputc451 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1111
  %sub302 = add nsw i32 %acount.4.lcssa, -1, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !295), !dbg !1083
  %rem303 = srem i32 %sub302, %23, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %rem303}, i64 0, metadata !283), !dbg !1083
  br label %if.end304, !dbg !1112

if.end304:                                        ; preds = %for.end296, %if.then300
  %linemod.4 = phi i32 [ %rem303, %if.then300 ], [ %linemod.3, %for.end296 ]
  %add.ptr306 = getelementptr inbounds double* %exact.addr.0488, i64 %idx.ext, !dbg !1113
  call void @llvm.dbg.value(metadata !{double* %add.ptr306}, i64 0, metadata !268), !dbg !1113
  br label %for.inc308, !dbg !1114

for.inc308:                                       ; preds = %if.end273, %if.end304
  %exact.addr.1 = phi double* [ %add.ptr306, %if.end304 ], [ %exact.addr.0488, %if.end273 ]
  %acount.5 = phi i32 [ %acount.4.lcssa, %if.end304 ], [ %acount.3, %if.end273 ]
  %linemod.5 = phi i32 [ %linemod.4, %if.end304 ], [ %linemod.3, %if.end273 ]
  %inc309 = add nsw i32 %i.3490, 1, !dbg !1100
  call void @llvm.dbg.value(metadata !{i32 %inc309}, i64 0, metadata !278), !dbg !1100
  %exitcond508 = icmp eq i32 %inc309, %Nrhs, !dbg !1100
  br i1 %exitcond508, label %if.end312, label %for.cond215.preheader, !dbg !1100

if.end312:                                        ; preds = %for.inc308, %if.end178, %if.end207
  %call313 = call i32 @fclose(%struct._IO_FILE* %out_file.0) #9, !dbg !1115
  %cmp314 = icmp eq i32 %call313, 0, !dbg !1115
  br i1 %cmp314, label %return, label %if.then316, !dbg !1115

if.then316:                                       ; preds = %if.end312
  %39 = load %struct._IO_FILE** @stderr, align 8, !dbg !1116, !tbaa !563
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str55, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %39), !dbg !1116
  br label %return, !dbg !1118

return:                                           ; preds = %if.end312, %if.then316, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then316 ], [ 1, %if.end312 ]
  ret i32 %retval.0, !dbg !1119
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_mat_char(i8* %filename, i32* nocapture %colptr, i32* nocapture %rowind, i8* %val, i8* %Valfmt) #0 {
entry:
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Nrhs = alloca i32, align 4
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Ptrperline = alloca i32, align 4
  %Ptrwidth = alloca i32, align 4
  %Indperline = alloca i32, align 4
  %Indwidth = alloca i32, align 4
  %Valperline = alloca i32, align 4
  %Valwidth = alloca i32, align 4
  %Valprec = alloca i32, align 4
  %Valflag = alloca i32, align 4
  %line = alloca [8192 x i8], align 16
  %Title = alloca [73 x i8], align 16
  %Key = alloca [8 x i8], align 1
  %Type = alloca [4 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Rhsfmt = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !317), !dbg !1120
  call void @llvm.dbg.value(metadata !{i32* %colptr}, i64 0, metadata !318), !dbg !1120
  call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !319), !dbg !1120
  call void @llvm.dbg.value(metadata !{i8* %val}, i64 0, metadata !320), !dbg !1121
  call void @llvm.dbg.value(metadata !{i8* %Valfmt}, i64 0, metadata !321), !dbg !1121
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !330), !dbg !1122
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !331), !dbg !1122
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !332), !dbg !1122
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !334), !dbg !1122
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !335), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !336), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !337), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !338), !dbg !1123
  call void @llvm.dbg.declare(metadata !{i32* %Ptrperline}, metadata !339), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %Ptrwidth}, metadata !340), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %Indperline}, metadata !341), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %Indwidth}, metadata !342), !dbg !1124
  call void @llvm.dbg.declare(metadata !{i32* %Valperline}, metadata !343), !dbg !1125
  call void @llvm.dbg.declare(metadata !{i32* %Valwidth}, metadata !344), !dbg !1125
  call void @llvm.dbg.declare(metadata !{i32* %Valprec}, metadata !345), !dbg !1125
  call void @llvm.dbg.declare(metadata !{i32* %Valflag}, metadata !346), !dbg !1126
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0, !dbg !1127
  call void @llvm.lifetime.start(i64 8192, i8* %0) #2, !dbg !1127
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %line}, metadata !348), !dbg !1127
  %1 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !1128
  call void @llvm.lifetime.start(i64 73, i8* %1) #2, !dbg !1128
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !349), !dbg !1128
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %Key}, metadata !350), !dbg !1128
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Type}, metadata !354), !dbg !1128
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !355), !dbg !1128
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !356), !dbg !1129
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !357), !dbg !1129
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Rhsfmt}, metadata !358), !dbg !1129
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !1130
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !322), !dbg !1130
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1130
  br i1 %cmp, label %if.then, label %if.end, !dbg !1130

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1131, !tbaa !563
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !1131
  br label %cleanup, !dbg !1133

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [8 x i8]* %Key, i64 0, i64 0, !dbg !1134
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0, !dbg !1134
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !1134
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !1134
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0, !dbg !1134
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !1134
  %call8 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %1, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %Valfmt, i8* %arraydecay6, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay7) #10, !dbg !1134
  call fastcc void @ParseIfmt(i8* %arraydecay4, i32* %Ptrperline, i32* %Ptrwidth) #10, !dbg !1135
  call fastcc void @ParseIfmt(i8* %arraydecay5, i32* %Indperline, i32* %Indwidth) #10, !dbg !1136
  %3 = load i8* %arraydecay3, align 1, !dbg !1137, !tbaa !564
  %cmp13 = icmp eq i8 %3, 80, !dbg !1137
  br i1 %cmp13, label %if.end22, label %if.then15, !dbg !1137

if.then15:                                        ; preds = %if.end
  call fastcc void @ParseRfmt(i8* %Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #10, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1140
  %4 = load i32* %Valflag, align 4, !dbg !1140, !tbaa !572
  %cmp17 = icmp eq i32 %4, 68, !dbg !1140
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !1140

if.then19:                                        ; preds = %if.then15
  %call20 = call i8* @strchr(i8* %Valfmt, i32 68) #12, !dbg !1141
  store i8 69, i8* %call20, align 1, !dbg !1141, !tbaa !564
  br label %if.end22, !dbg !1143

if.end22:                                         ; preds = %if.end, %if.then15, %if.then19
  %5 = phi i32 [ undef, %if.end ], [ %4, %if.then15 ], [ 68, %if.then19 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !327), !dbg !1144
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1145
  %6 = load i32* %Ptrwidth, align 4, !dbg !1145, !tbaa !572
  %add = add nsw i32 %6, 1, !dbg !1145
  %conv23 = sext i32 %add to i64, !dbg !1145
  %call24 = call noalias i8* @malloc(i64 %conv23) #9, !dbg !1145
  call void @llvm.dbg.value(metadata !{i8* %call24}, i64 0, metadata !347), !dbg !1145
  %cmp25 = icmp eq i8* %call24, null, !dbg !1146
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1146

if.then27:                                        ; preds = %if.end22
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !1146
  unreachable

if.end28:                                         ; preds = %if.end22
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1147
  %idx.ext = sext i32 %6 to i64, !dbg !1147
  %add.ptr = getelementptr inbounds i8* %call24, i64 %idx.ext, !dbg !1147
  store i8 0, i8* %add.ptr, align 1, !dbg !1147, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !328), !dbg !1148
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323), !dbg !1149
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !335), !dbg !1149
  %7 = load i32* %Ptrcrd, align 4, !dbg !1149, !tbaa !572
  %cmp29289 = icmp sgt i32 %7, 0, !dbg !1149
  br i1 %cmp29289, label %for.body.lr.ph, label %for.end58, !dbg !1149

for.body.lr.ph:                                   ; preds = %if.end28
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !339), !dbg !1151
  %8 = load i32* %Ptrperline, align 4, !dbg !1151, !tbaa !572
  %cmp40284 = icmp sgt i32 %8, 0, !dbg !1151
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1154
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1156
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !339), !dbg !1151
  br label %for.body, !dbg !1149

for.body:                                         ; preds = %for.body.lr.ph, %for.inc56
  %count.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc56 ]
  %i.0290 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc56 ]
  %call32 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1157
  %call34 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1158
  %cmp35 = icmp slt i32 %call34, 0, !dbg !1158
  br i1 %cmp35, label %if.then37, label %for.cond39.preheader, !dbg !1158

for.cond39.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !339), !dbg !1151
  br i1 %cmp40284, label %for.body42.lr.ph, label %for.inc56, !dbg !1151

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %9 = sext i32 %count.0291 to i64
  br label %for.body42, !dbg !1151

if.then37:                                        ; preds = %for.body
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([65 x i8]* @.str28, i64 0, i64 0)) #10, !dbg !1159
  unreachable

for.body42:                                       ; preds = %for.body42.lr.ph, %if.end46
  %indvars.iv305 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next306, %if.end46 ], !dbg !1151
  %indvars.iv303 = phi i64 [ %9, %for.body42.lr.ph ], [ %indvars.iv.next304, %if.end46 ]
  %count.1287 = phi i32 [ %count.0291, %for.body42.lr.ph ], [ %inc, %if.end46 ]
  %ind.0285 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc55, %if.end46 ]
  call void @llvm.dbg.value(metadata !{i32* %Ncol}, i64 0, metadata !331), !dbg !1160
  %10 = load i32* %Ncol, align 4, !dbg !1160, !tbaa !572
  %11 = trunc i64 %indvars.iv303 to i32, !dbg !1160
  %cmp43 = icmp sgt i32 %11, %10, !dbg !1160
  br i1 %cmp43, label %for.inc56, label %if.end46, !dbg !1160

if.end46:                                         ; preds = %for.body42
  %add.ptr49 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv305, !dbg !1154
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1154
  %call51 = call i8* @strncpy(i8* %call24, i8* %add.ptr49, i64 %idx.ext) #9, !dbg !1154
  %call52 = call i32 @atoi(i8* %call24) #12, !dbg !1161
  %arrayidx53 = getelementptr inbounds i32* %colptr, i64 %indvars.iv303, !dbg !1161
  store i32 %call52, i32* %arrayidx53, align 4, !dbg !1161, !tbaa !572
  %indvars.iv.next304 = add i64 %indvars.iv303, 1, !dbg !1151
  %inc = add nsw i32 %count.1287, 1, !dbg !1156
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !328), !dbg !1156
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !340), !dbg !1156
  %indvars.iv.next306 = add i64 %indvars.iv305, %idx.ext, !dbg !1151
  %inc55 = add nsw i32 %ind.0285, 1, !dbg !1151
  call void @llvm.dbg.value(metadata !{i32 %inc55}, i64 0, metadata !325), !dbg !1151
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !339), !dbg !1151
  %cmp40 = icmp slt i32 %inc55, %8, !dbg !1151
  br i1 %cmp40, label %for.body42, label %for.inc56, !dbg !1151

for.inc56:                                        ; preds = %if.end46, %for.body42, %for.cond39.preheader
  %count.1.lcssa = phi i32 [ %count.0291, %for.cond39.preheader ], [ %count.1287, %for.body42 ], [ %inc, %if.end46 ]
  %inc57 = add nsw i32 %i.0290, 1, !dbg !1149
  call void @llvm.dbg.value(metadata !{i32 %inc57}, i64 0, metadata !323), !dbg !1149
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !335), !dbg !1149
  %12 = load i32* %Ptrcrd, align 4, !dbg !1149, !tbaa !572
  %cmp29 = icmp slt i32 %inc57, %12, !dbg !1149
  br i1 %cmp29, label %for.body, label %for.end58, !dbg !1149

for.end58:                                        ; preds = %for.inc56, %if.end28
  call void @free(i8* %call24) #9, !dbg !1162
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1163
  %13 = load i32* %Indwidth, align 4, !dbg !1163, !tbaa !572
  %add59 = add nsw i32 %13, 1, !dbg !1163
  %conv60 = sext i32 %add59 to i64, !dbg !1163
  %call61 = call noalias i8* @malloc(i64 %conv60) #9, !dbg !1163
  call void @llvm.dbg.value(metadata !{i8* %call61}, i64 0, metadata !347), !dbg !1163
  %cmp62 = icmp eq i8* %call61, null, !dbg !1164
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !1164

if.then64:                                        ; preds = %for.end58
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #10, !dbg !1164
  unreachable

if.end65:                                         ; preds = %for.end58
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1165
  %idx.ext66 = sext i32 %13 to i64, !dbg !1165
  %add.ptr67 = getelementptr inbounds i8* %call61, i64 %idx.ext66, !dbg !1165
  store i8 0, i8* %add.ptr67, align 1, !dbg !1165, !tbaa !564
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !328), !dbg !1166
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323), !dbg !1167
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !336), !dbg !1167
  %14 = load i32* %Indcrd, align 4, !dbg !1167, !tbaa !572
  %cmp69281 = icmp sgt i32 %14, 0, !dbg !1167
  br i1 %cmp69281, label %for.body71.lr.ph, label %for.end104, !dbg !1167

for.body71.lr.ph:                                 ; preds = %if.end65
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !341), !dbg !1169
  %15 = load i32* %Indperline, align 4, !dbg !1169, !tbaa !572
  %cmp81276 = icmp sgt i32 %15, 0, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1172
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1174
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !341), !dbg !1169
  br label %for.body71, !dbg !1167

for.body71:                                       ; preds = %for.body71.lr.ph, %for.inc102
  %count.2283 = phi i32 [ 0, %for.body71.lr.ph ], [ %count.3.lcssa, %for.inc102 ]
  %i.1282 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc103, %for.inc102 ]
  %call73 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1175
  %call75 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1176
  %cmp76 = icmp slt i32 %call75, 0, !dbg !1176
  br i1 %cmp76, label %if.then78, label %for.cond80.preheader, !dbg !1176

for.cond80.preheader:                             ; preds = %for.body71
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !341), !dbg !1169
  br i1 %cmp81276, label %for.body83.lr.ph, label %for.inc102, !dbg !1169

for.body83.lr.ph:                                 ; preds = %for.cond80.preheader
  %16 = sext i32 %count.2283 to i64
  br label %for.body83, !dbg !1169

if.then78:                                        ; preds = %for.body71
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str29, i64 0, i64 0)) #10, !dbg !1177
  unreachable

for.body83:                                       ; preds = %for.body83.lr.ph, %if.end87
  %indvars.iv300 = phi i64 [ 0, %for.body83.lr.ph ], [ %indvars.iv.next301, %if.end87 ], !dbg !1169
  %indvars.iv298 = phi i64 [ %16, %for.body83.lr.ph ], [ %indvars.iv.next299, %if.end87 ]
  %count.3279 = phi i32 [ %count.2283, %for.body83.lr.ph ], [ %inc97, %if.end87 ]
  %ind.1277 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc100, %if.end87 ]
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !332), !dbg !1178
  %17 = load i32* %Nnzero, align 4, !dbg !1178, !tbaa !572
  %18 = trunc i64 %indvars.iv298 to i32, !dbg !1178
  %cmp84 = icmp eq i32 %18, %17, !dbg !1178
  br i1 %cmp84, label %for.inc102, label %if.end87, !dbg !1178

if.end87:                                         ; preds = %for.body83
  %add.ptr90 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv300, !dbg !1172
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1172
  %call92 = call i8* @strncpy(i8* %call61, i8* %add.ptr90, i64 %idx.ext66) #9, !dbg !1172
  %call93 = call i32 @atoi(i8* %call61) #12, !dbg !1179
  %arrayidx96 = getelementptr inbounds i32* %rowind, i64 %indvars.iv298, !dbg !1179
  store i32 %call93, i32* %arrayidx96, align 4, !dbg !1179, !tbaa !572
  %indvars.iv.next299 = add i64 %indvars.iv298, 1, !dbg !1169
  %inc97 = add nsw i32 %count.3279, 1, !dbg !1174
  call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !328), !dbg !1174
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !342), !dbg !1174
  %indvars.iv.next301 = add i64 %indvars.iv300, %idx.ext66, !dbg !1169
  %inc100 = add nsw i32 %ind.1277, 1, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %inc100}, i64 0, metadata !325), !dbg !1169
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !341), !dbg !1169
  %cmp81 = icmp slt i32 %inc100, %15, !dbg !1169
  br i1 %cmp81, label %for.body83, label %for.inc102, !dbg !1169

for.inc102:                                       ; preds = %if.end87, %for.body83, %for.cond80.preheader
  %count.3.lcssa = phi i32 [ %count.2283, %for.cond80.preheader ], [ %count.3279, %for.body83 ], [ %inc97, %if.end87 ]
  %inc103 = add nsw i32 %i.1282, 1, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %inc103}, i64 0, metadata !323), !dbg !1167
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !336), !dbg !1167
  %19 = load i32* %Indcrd, align 4, !dbg !1167, !tbaa !572
  %cmp69 = icmp slt i32 %inc103, %19, !dbg !1167
  br i1 %cmp69, label %for.body71, label %for.end104, !dbg !1167

for.end104:                                       ; preds = %for.inc102, %if.end65
  call void @free(i8* %call61) #9, !dbg !1180
  %20 = load i8* %arraydecay3, align 1, !dbg !1181, !tbaa !564
  %cmp107 = icmp eq i8 %20, 80, !dbg !1181
  br i1 %cmp107, label %cleanup, label %if.then109, !dbg !1181

if.then109:                                       ; preds = %for.end104
  %cmp112 = icmp eq i8 %20, 67, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32* %Nnzero}, i64 0, metadata !332), !dbg !1182
  %21 = load i32* %Nnzero, align 4, !dbg !1182, !tbaa !572
  %mul = zext i1 %cmp112 to i32, !dbg !1182
  %Nentries.0 = shl nsw i32 %21, %mul, !dbg !1182
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !337), !dbg !1184
  %22 = load i32* %Valcrd, align 4, !dbg !1184, !tbaa !572
  %cmp126273 = icmp sgt i32 %22, 0, !dbg !1184
  br i1 %cmp126273, label %for.body128.lr.ph, label %cleanup, !dbg !1184

for.body128.lr.ph:                                ; preds = %if.then109
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1186
  %cmp137 = icmp eq i32 %5, 68, !dbg !1186
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !343), !dbg !1188
  %23 = load i32* %Valperline, align 4, !dbg !1188, !tbaa !572
  %cmp146267 = icmp slt i32 %23, 1, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !344), !dbg !1190
  %24 = load i32* %Valwidth, align 4, !dbg !1190, !tbaa !572
  %conv159 = sext i32 %24 to i64, !dbg !1192
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1193
  %cmp161 = icmp eq i32 %5, 70, !dbg !1193
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !344), !dbg !1194
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !343), !dbg !1188
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1195
  %conv190 = trunc i32 %5 to i8, !dbg !1195
  %25 = sub i32 0, %23, !dbg !1184
  br label %for.body128, !dbg !1184

for.body128:                                      ; preds = %for.body128.lr.ph, %for.inc203
  %count.4275 = phi i32 [ 0, %for.body128.lr.ph ], [ %count.5.lcssa, %for.inc203 ]
  %i.2274 = phi i32 [ 0, %for.body128.lr.ph ], [ %inc204, %for.inc203 ]
  %call130 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1200
  %call132 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1201
  %cmp133 = icmp slt i32 %call132, 0, !dbg !1201
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !1201

if.then135:                                       ; preds = %for.body128
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !1202
  unreachable

if.end136:                                        ; preds = %for.body128
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1186
  br i1 %cmp137, label %while.cond.preheader, label %for.cond145.preheader, !dbg !1186

while.cond.preheader:                             ; preds = %if.end136
  %call141264 = call i8* @strchr(i8* %0, i32 68) #12, !dbg !1203
  %tobool265 = icmp eq i8* %call141264, null, !dbg !1203
  br i1 %tobool265, label %for.cond145.preheader, label %while.body, !dbg !1203

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call141266 = phi i8* [ %call141, %while.body ], [ %call141264, %while.cond.preheader ]
  store i8 69, i8* %call141266, align 1, !dbg !1203, !tbaa !564
  %call141 = call i8* @strchr(i8* %0, i32 68) #12, !dbg !1203
  %tobool = icmp eq i8* %call141, null, !dbg !1203
  br i1 %tobool, label %for.cond145.preheader, label %while.body, !dbg !1203

for.cond145.preheader:                            ; preds = %while.cond.preheader, %while.body, %if.end136
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !343), !dbg !1188
  %cmp149268 = icmp eq i32 %count.4275, %Nentries.0, !dbg !1205
  %or.cond269 = or i1 %cmp146267, %cmp149268, !dbg !1188
  br i1 %or.cond269, label %for.inc203, label %if.end152.lr.ph, !dbg !1188

if.end152.lr.ph:                                  ; preds = %for.cond145.preheader
  %26 = sext i32 %count.4275 to i64
  %27 = sub i32 %count.4275, %Nentries.0, !dbg !1188
  %28 = icmp ult i32 %27, %25, !dbg !1188
  %umax = select i1 %28, i32 %25, i32 %27, !dbg !1188
  %29 = sub i32 0, %umax, !dbg !1188
  br label %if.end152, !dbg !1188

if.end152:                                        ; preds = %if.end152.lr.ph, %if.end197
  %indvars.iv295 = phi i64 [ 0, %if.end152.lr.ph ], [ %indvars.iv.next296, %if.end197 ], !dbg !1188
  %indvars.iv293 = phi i64 [ %26, %if.end152.lr.ph ], [ %indvars.iv.next294, %if.end197 ]
  %ind.2270 = phi i32 [ 0, %if.end152.lr.ph ], [ %inc201, %if.end197 ]
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !344), !dbg !1190
  %30 = trunc i64 %indvars.iv293 to i32, !dbg !1190
  %mul153 = mul nsw i32 %24, %30, !dbg !1190
  %idxprom154 = sext i32 %mul153 to i64, !dbg !1190
  %arrayidx155 = getelementptr inbounds i8* %val, i64 %idxprom154, !dbg !1190
  call void @llvm.dbg.value(metadata !{i8* %arrayidx155}, i64 0, metadata !347), !dbg !1190
  %add.ptr158 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv295, !dbg !1192
  %call160 = call i8* @strncpy(i8* %arrayidx155, i8* %add.ptr158, i64 %conv159) #9, !dbg !1192
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1193
  br i1 %cmp161, label %if.end197, label %land.lhs.true, !dbg !1193

land.lhs.true:                                    ; preds = %if.end152
  %call163 = call i8* @strchr(i8* %arrayidx155, i32 69) #12, !dbg !1193
  %cmp164 = icmp eq i8* %call163, null, !dbg !1193
  br i1 %cmp164, label %if.then166, label %if.end197, !dbg !1193

if.then166:                                       ; preds = %land.lhs.true
  %call167 = call i64 @strlen(i8* %arrayidx155) #12, !dbg !1206
  %conv168 = trunc i64 %call167 to i32, !dbg !1206
  call void @llvm.dbg.value(metadata !{i32 %conv168}, i64 0, metadata !329), !dbg !1206
  %add169 = add i32 %conv168, 1, !dbg !1207
  call void @llvm.dbg.value(metadata !{i32 %add169}, i64 0, metadata !324), !dbg !1207
  %31 = sext i32 %add169 to i64
  br label %for.cond170, !dbg !1207

for.cond170:                                      ; preds = %for.body173, %if.then166
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body173 ], [ %31, %if.then166 ]
  %j.0 = phi i32 [ %sub174, %for.body173 ], [ %add169, %if.then166 ]
  %32 = trunc i64 %indvars.iv to i32, !dbg !1207
  %cmp171 = icmp sgt i32 %32, -1, !dbg !1207
  br i1 %cmp171, label %for.body173, label %if.end197, !dbg !1207

for.body173:                                      ; preds = %for.cond170
  %sub174 = add nsw i32 %j.0, -1, !dbg !1208
  %idxprom175 = sext i32 %sub174 to i64, !dbg !1208
  %arrayidx155.sum = add i64 %idxprom175, %idxprom154, !dbg !1208
  %arrayidx176 = getelementptr inbounds i8* %val, i64 %arrayidx155.sum, !dbg !1208
  %33 = load i8* %arrayidx176, align 1, !dbg !1208, !tbaa !564
  %arrayidx155.sum263 = add i64 %indvars.iv, %idxprom154, !dbg !1208
  %arrayidx178 = getelementptr inbounds i8* %val, i64 %arrayidx155.sum263, !dbg !1208
  store i8 %33, i8* %arrayidx178, align 1, !dbg !1208, !tbaa !564
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1209
  switch i8 %33, label %for.cond170 [
    i8 43, label %if.then189
    i8 45, label %if.then189
  ], !dbg !1209

if.then189:                                       ; preds = %for.body173, %for.body173
  call void @llvm.dbg.value(metadata !{i32* %Valflag}, i64 0, metadata !346), !dbg !1195
  store i8 %conv190, i8* %arrayidx176, align 1, !dbg !1195, !tbaa !564
  br label %if.end197, !dbg !1210

if.end197:                                        ; preds = %for.cond170, %if.end152, %if.then189, %land.lhs.true
  %indvars.iv.next294 = add i64 %indvars.iv293, 1, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !328), !dbg !1194
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !344), !dbg !1194
  %indvars.iv.next296 = add i64 %indvars.iv295, %conv159, !dbg !1188
  %inc201 = add nsw i32 %ind.2270, 1, !dbg !1188
  call void @llvm.dbg.value(metadata !{i32 %inc201}, i64 0, metadata !325), !dbg !1188
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !343), !dbg !1188
  %exitcond = icmp eq i32 %inc201, %29, !dbg !1188
  br i1 %exitcond, label %for.cond145.for.inc203_crit_edge, label %if.end152, !dbg !1188

for.cond145.for.inc203_crit_edge:                 ; preds = %if.end197
  %34 = sub i32 %count.4275, %umax, !dbg !1188
  br label %for.inc203, !dbg !1188

for.inc203:                                       ; preds = %for.cond145.for.inc203_crit_edge, %for.cond145.preheader
  %count.5.lcssa = phi i32 [ %34, %for.cond145.for.inc203_crit_edge ], [ %count.4275, %for.cond145.preheader ]
  %inc204 = add nsw i32 %i.2274, 1, !dbg !1184
  call void @llvm.dbg.value(metadata !{i32 %inc204}, i64 0, metadata !323), !dbg !1184
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !337), !dbg !1184
  %35 = load i32* %Valcrd, align 4, !dbg !1184, !tbaa !572
  %cmp126 = icmp slt i32 %inc204, %35, !dbg !1184
  br i1 %cmp126, label %for.body128, label %cleanup, !dbg !1184

cleanup:                                          ; preds = %if.then109, %for.inc203, %for.end104, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end104 ], [ 1, %for.inc203 ], [ 1, %if.then109 ]
  call void @llvm.lifetime.end(i64 73, i8* %1) #2, !dbg !1211
  call void @llvm.lifetime.end(i64 8192, i8* %0) #2, !dbg !1211
  ret i32 %retval.0, !dbg !1212
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newmat_char(i8* %filename, i32* %M, i32* %N, i32* %nonzeros, i32** nocapture %colptr, i32** nocapture %rowind, i8** nocapture %val, i8** nocapture %Valfmt) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Valperline = alloca i32, align 4
  %Valwidth = alloca i32, align 4
  %Valprec = alloca i32, align 4
  %Valflag = alloca i32, align 4
  %Title = alloca [73 x i8], align 16
  %Key = alloca [9 x i8], align 1
  %Type = alloca [4 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Rhsfmt = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !363), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !364), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32* %N}, i64 0, metadata !365), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32* %nonzeros}, i64 0, metadata !366), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32** %colptr}, i64 0, metadata !367), !dbg !1213
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !368), !dbg !1214
  call void @llvm.dbg.value(metadata !{i8** %val}, i64 0, metadata !369), !dbg !1214
  call void @llvm.dbg.value(metadata !{i8** %Valfmt}, i64 0, metadata !370), !dbg !1214
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !372), !dbg !1215
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !373), !dbg !1216
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !374), !dbg !1216
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !375), !dbg !1216
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !376), !dbg !1216
  call void @llvm.dbg.declare(metadata !{i32* %Valperline}, metadata !377), !dbg !1217
  call void @llvm.dbg.declare(metadata !{i32* %Valwidth}, metadata !378), !dbg !1217
  call void @llvm.dbg.declare(metadata !{i32* %Valprec}, metadata !379), !dbg !1217
  call void @llvm.dbg.declare(metadata !{i32* %Valflag}, metadata !380), !dbg !1218
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !1219
  call void @llvm.lifetime.start(i64 73, i8* %0) #2, !dbg !1219
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !381), !dbg !1219
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %Key}, metadata !382), !dbg !1219
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Type}, metadata !383), !dbg !1219
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !384), !dbg !1219
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !385), !dbg !1220
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !386), !dbg !1220
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Rhsfmt}, metadata !387), !dbg !1220
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !1221
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !371), !dbg !1221
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1221
  br i1 %cmp, label %if.then, label %if.end, !dbg !1221

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !563
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !1222
  br label %cleanup, !dbg !1224

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 21) #9, !dbg !1225
  store i8* %call2, i8** %Valfmt, align 8, !dbg !1225, !tbaa !563
  %cmp3 = icmp eq i8* %call2, null, !dbg !1226
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1226

if.then4:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([32 x i8]* @.str56, i64 0, i64 0)) #10, !dbg !1226
  unreachable

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0, !dbg !1227
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0, !dbg !1227
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !1227
  %arraydecay9 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !1227
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0, !dbg !1227
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !1227
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay6, i8* %arraydecay7, i32* %M, i32* %N, i32* %nonzeros, i32* %Nrhs, i8* %arraydecay8, i8* %arraydecay9, i8* %call2, i8* %arraydecay10, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #10, !dbg !1227
  %call13 = call i32 @fclose(%struct._IO_FILE* %call) #9, !dbg !1228
  %2 = load i8** %Valfmt, align 8, !dbg !1229, !tbaa !563
  call fastcc void @ParseRfmt(i8* %2, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #10, !dbg !1229
  %3 = load i32* %N, align 4, !dbg !1230, !tbaa !572
  %add = add nsw i32 %3, 1, !dbg !1230
  %conv = sext i32 %add to i64, !dbg !1230
  %mul = shl nsw i64 %conv, 2, !dbg !1230
  %call15 = call noalias i8* @malloc(i64 %mul) #9, !dbg !1230
  %4 = bitcast i8* %call15 to i32*, !dbg !1230
  store i32* %4, i32** %colptr, align 8, !dbg !1230, !tbaa !563
  %cmp16 = icmp eq i8* %call15, null, !dbg !1231
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1231

if.then18:                                        ; preds = %if.end5
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0)) #10, !dbg !1231
  unreachable

if.end19:                                         ; preds = %if.end5
  %5 = load i32* %nonzeros, align 4, !dbg !1232, !tbaa !572
  %conv20 = sext i32 %5 to i64, !dbg !1232
  %mul21 = shl nsw i64 %conv20, 2, !dbg !1232
  %call22 = call noalias i8* @malloc(i64 %mul21) #9, !dbg !1232
  %6 = bitcast i8* %call22 to i32*, !dbg !1232
  store i32* %6, i32** %rowind, align 8, !dbg !1232, !tbaa !563
  %cmp23 = icmp eq i8* %call22, null, !dbg !1233
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1233

if.then25:                                        ; preds = %if.end19
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str32, i64 0, i64 0)) #10, !dbg !1233
  unreachable

if.end26:                                         ; preds = %if.end19
  %7 = load i8* %arraydecay7, align 1, !dbg !1234, !tbaa !564
  switch i8 %7, label %if.then44 [
    i8 67, label %if.then30
    i8 80, label %if.end26.if.end54_crit_edge
  ], !dbg !1234

if.end26.if.end54_crit_edge:                      ; preds = %if.end26
  %.pre = load i8** %val, align 8, !dbg !1235, !tbaa !563
  br label %if.end54, !dbg !1234

if.then30:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !378), !dbg !1236
  %8 = load i32* %Valwidth, align 4, !dbg !1236, !tbaa !572
  %mul31 = mul nsw i32 %8, %5, !dbg !1236
  %conv32 = sext i32 %mul31 to i64, !dbg !1236
  %mul34 = shl nsw i64 %conv32, 1, !dbg !1236
  %call35 = call noalias i8* @malloc(i64 %mul34) #9, !dbg !1236
  store i8* %call35, i8** %val, align 8, !dbg !1236, !tbaa !563
  %cmp36 = icmp eq i8* %call35, null, !dbg !1238
  br i1 %cmp36, label %if.then38, label %if.end54, !dbg !1238

if.then38:                                        ; preds = %if.then30
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #10, !dbg !1238
  unreachable

if.then44:                                        ; preds = %if.end26
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !378), !dbg !1239
  %9 = load i32* %Valwidth, align 4, !dbg !1239, !tbaa !572
  %mul45 = mul nsw i32 %9, %5, !dbg !1239
  %conv46 = sext i32 %mul45 to i64, !dbg !1239
  %call48 = call noalias i8* @malloc(i64 %conv46) #9, !dbg !1239
  store i8* %call48, i8** %val, align 8, !dbg !1239, !tbaa !563
  %cmp49 = icmp eq i8* %call48, null, !dbg !1242
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !1242

if.then51:                                        ; preds = %if.then44
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #10, !dbg !1242
  unreachable

if.end54:                                         ; preds = %if.then44, %if.then30, %if.end26.if.end54_crit_edge
  %10 = phi i8* [ %.pre, %if.end26.if.end54_crit_edge ], [ %call35, %if.then30 ], [ %call48, %if.then44 ]
  %11 = load i32** %colptr, align 8, !dbg !1235, !tbaa !563
  %12 = load i32** %rowind, align 8, !dbg !1235, !tbaa !563
  %13 = load i8** %Valfmt, align 8, !dbg !1235, !tbaa !563
  %call55 = call i32 @readHB_mat_char(i8* %filename, i32* %11, i32* %12, i8* %10, i8* %13) #10, !dbg !1235
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %if.end54, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call55, %if.end54 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #2, !dbg !1243
  ret i32 %retval.0, !dbg !1243
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_aux_char(i8* %filename, i8 signext %AuxType, i8* %b) #0 {
entry:
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Nrhs = alloca i32, align 4
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Rhsperline = alloca i32, align 4
  %Rhswidth = alloca i32, align 4
  %Rhsprec = alloca i32, align 4
  %Rhsflag = alloca i32, align 4
  %Title = alloca [73 x i8], align 16
  %Key = alloca [9 x i8], align 1
  %Type = alloca [4 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Valfmt = alloca [21 x i8], align 16
  %Rhsfmt = alloca [21 x i8], align 16
  %line = alloca [8192 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !392), !dbg !1244
  call void @llvm.dbg.value(metadata !{i8 %AuxType}, i64 0, metadata !393), !dbg !1244
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !394), !dbg !1244
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !407), !dbg !1245
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !408), !dbg !1245
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !409), !dbg !1245
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !411), !dbg !1245
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !412), !dbg !1246
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !413), !dbg !1246
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !414), !dbg !1246
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !415), !dbg !1246
  call void @llvm.dbg.declare(metadata !{i32* %Rhsperline}, metadata !416), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32* %Rhswidth}, metadata !417), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32* %Rhsprec}, metadata !418), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32* %Rhsflag}, metadata !419), !dbg !1248
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !1249
  call void @llvm.lifetime.start(i64 73, i8* %0) #2, !dbg !1249
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !420), !dbg !1249
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %Key}, metadata !421), !dbg !1249
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Type}, metadata !422), !dbg !1249
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !423), !dbg !1249
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !424), !dbg !1250
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !425), !dbg !1250
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Valfmt}, metadata !426), !dbg !1250
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Rhsfmt}, metadata !427), !dbg !1250
  %1 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0, !dbg !1251
  call void @llvm.lifetime.start(i64 8192, i8* %1) #2, !dbg !1251
  call void @llvm.dbg.declare(metadata !{[8192 x i8]* %line}, metadata !428), !dbg !1251
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !1252
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !395), !dbg !1252
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1252
  br i1 %cmp, label %if.then, label %if.end, !dbg !1252

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1253, !tbaa !563
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !1253
  br label %cleanup, !dbg !1255

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0, !dbg !1256
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0, !dbg !1256
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !1256
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !1256
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0, !dbg !1256
  %arraydecay7 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0, !dbg !1256
  %arraydecay8 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !1256
  %call9 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %arraydecay6, i8* %arraydecay7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay8) #10, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !411), !dbg !1257
  %3 = load i32* %Nrhs, align 4, !dbg !1257, !tbaa !572
  %cmp10 = icmp slt i32 %3, 1, !dbg !1257
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1257

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !1258, !tbaa !563
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str34, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %4), !dbg !1258
  br label %cleanup, !dbg !1260

if.end13:                                         ; preds = %if.end
  %6 = load i8* %arraydecay8, align 1, !dbg !1261, !tbaa !564
  %cmp14 = icmp eq i8 %6, 70, !dbg !1261
  br i1 %cmp14, label %if.end19, label %if.then16, !dbg !1261

if.then16:                                        ; preds = %if.end13
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !1262, !tbaa !563
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str35, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %7), !dbg !1262
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !1264, !tbaa !563
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str36, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %9), !dbg !1264
  br label %cleanup, !dbg !1265

if.end19:                                         ; preds = %if.end13
  %11 = load i8* %arraydecay3, align 1, !dbg !1266, !tbaa !564
  %cmp22 = icmp eq i8 %11, 67, !dbg !1266
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !407), !dbg !1267
  %12 = load i32* %Nrow, align 4, !dbg !1267, !tbaa !572
  %mul = zext i1 %cmp22 to i32, !dbg !1266
  %Nentries.0 = shl nsw i32 %12, %mul, !dbg !1266
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !405), !dbg !1269
  %arrayidx26 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 1, !dbg !1270
  %13 = load i8* %arrayidx26, align 1, !dbg !1270, !tbaa !564
  %cmp28 = icmp eq i8 %13, 71, !dbg !1270
  call void @llvm.dbg.value(metadata !877, i64 0, metadata !405), !dbg !1270
  %. = select i1 %cmp28, i32 2, i32 1, !dbg !1270
  %arrayidx32 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 2, !dbg !1271
  %14 = load i8* %arrayidx32, align 1, !dbg !1271, !tbaa !564
  %cmp34 = icmp eq i8 %14, 88, !dbg !1271
  %inc37 = zext i1 %cmp34 to i32, !dbg !1271
  %nvecs.1 = add nsw i32 %inc37, %., !dbg !1271
  switch i8 %AuxType, label %if.end59 [
    i8 71, label %land.lhs.true
    i8 88, label %land.lhs.true52
  ], !dbg !1272

land.lhs.true:                                    ; preds = %if.end19
  br i1 %cmp28, label %if.end59, label %if.then46, !dbg !1272

if.then46:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !1273, !tbaa !563
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str37, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %15), !dbg !1273
  br label %cleanup, !dbg !1275

land.lhs.true52:                                  ; preds = %if.end19
  br i1 %cmp34, label %if.end59, label %if.then57, !dbg !1276

if.then57:                                        ; preds = %land.lhs.true52
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !1277, !tbaa !563
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str38, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %17), !dbg !1277
  br label %cleanup, !dbg !1279

if.end59:                                         ; preds = %land.lhs.true, %if.end19, %land.lhs.true52
  call fastcc void @ParseRfmt(i8* %arraydecay7, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #10, !dbg !1280
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !416), !dbg !1281
  %19 = load i32* %Rhsperline, align 4, !dbg !1281, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1281
  %20 = load i32* %Rhswidth, align 4, !dbg !1281, !tbaa !572
  %mul62 = mul nsw i32 %20, %19, !dbg !1281
  call void @llvm.dbg.value(metadata !{i32 %mul62}, i64 0, metadata !399), !dbg !1281
  call void @llvm.dbg.value(metadata !{i32* %Ptrcrd}, i64 0, metadata !412), !dbg !1282
  %21 = load i32* %Ptrcrd, align 4, !dbg !1282, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Indcrd}, i64 0, metadata !413), !dbg !1282
  %22 = load i32* %Indcrd, align 4, !dbg !1282, !tbaa !572
  %add = add i32 %22, %21, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32* %Valcrd}, i64 0, metadata !414), !dbg !1282
  %23 = load i32* %Valcrd, align 4, !dbg !1282, !tbaa !572
  %add63 = add i32 %add, %23, !dbg !1282
  call void @llvm.dbg.value(metadata !{i32 %add63}, i64 0, metadata !398), !dbg !1282
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !396), !dbg !1283
  %cmp64358 = icmp sgt i32 %add63, 0, !dbg !1283
  br i1 %cmp64358, label %for.body, label %for.end, !dbg !1283

for.body:                                         ; preds = %if.end59, %for.body
  %i.0359 = phi i32 [ %inc68, %for.body ], [ 0, %if.end59 ]
  %call67 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1285
  %inc68 = add nsw i32 %i.0359, 1, !dbg !1283
  call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !396), !dbg !1283
  %exitcond = icmp eq i32 %inc68, %add63, !dbg !1283
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1283

for.end:                                          ; preds = %for.body, %if.end59
  %AuxType.off = add i8 %AuxType, -70, !dbg !1286
  %switch = icmp ult i8 %AuxType.off, 2, !dbg !1286
  br i1 %switch, label %for.end.if.end81_crit_edge, label %if.else78, !dbg !1286

for.end.if.end81_crit_edge:                       ; preds = %for.end
  %cmp70 = icmp eq i8 %AuxType, 70, !dbg !1286
  %.mux = select i1 %cmp70, i32 0, i32 %Nentries.0, !dbg !1286
  %sub82.pre = add nsw i32 %nvecs.1, -1, !dbg !1287
  %mul83.pre = mul nsw i32 %sub82.pre, %Nentries.0, !dbg !1287
  br label %if.end81, !dbg !1286

if.else78:                                        ; preds = %for.end
  %sub = add nsw i32 %nvecs.1, -1, !dbg !1288
  %mul79 = mul nsw i32 %sub, %Nentries.0, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32 %mul79}, i64 0, metadata !400), !dbg !1288
  br label %if.end81

if.end81:                                         ; preds = %for.end.if.end81_crit_edge, %if.else78
  %mul83.pre-phi = phi i32 [ %mul83.pre, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ], !dbg !1287
  %start.0 = phi i32 [ %.mux, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  call void @llvm.dbg.value(metadata !{i32 %mul83.pre-phi}, i64 0, metadata !401), !dbg !1287
  %call85 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1289
  %call87 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !1290
  %sub.ptr.lhs.cast = ptrtoint i8* %call87 to i64, !dbg !1290
  %sub.ptr.rhs.cast = ptrtoint [8192 x i8]* %line to i64, !dbg !1290
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1290
  %conv89 = trunc i64 %sub.ptr.sub to i32, !dbg !1290
  call void @llvm.dbg.value(metadata !{i32 %conv89}, i64 0, metadata !404), !dbg !1290
  %call91 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1291
  %cmp92 = icmp slt i32 %call91, 0, !dbg !1291
  br i1 %cmp92, label %if.then94, label %for.cond96.preheader, !dbg !1291

for.cond96.preheader:                             ; preds = %if.end81
  %cmp97352 = icmp sgt i32 %start.0, 0, !dbg !1292
  br i1 %cmp97352, label %for.body99, label %for.end124, !dbg !1292

if.then94:                                        ; preds = %if.end81
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !1294
  unreachable

for.body99:                                       ; preds = %for.cond96.preheader, %for.inc122
  %linel.0355 = phi i32 [ %linel.1, %for.inc122 ], [ %conv89, %for.cond96.preheader ]
  %col.0354 = phi i32 [ %col.1, %for.inc122 ], [ 0, %for.cond96.preheader ]
  %i.1353 = phi i32 [ %inc123, %for.inc122 ], [ 0, %for.cond96.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1295
  %add100 = add nsw i32 %20, %col.0354, !dbg !1295
  call void @llvm.dbg.value(metadata !{i32 %add100}, i64 0, metadata !402), !dbg !1295
  %cmp101 = icmp slt i32 %mul62, %linel.0355, !dbg !1297
  %cond = select i1 %cmp101, i32 %mul62, i32 %linel.0355, !dbg !1297
  %cmp103 = icmp slt i32 %add100, %cond, !dbg !1297
  br i1 %cmp103, label %for.inc122, label %if.then105, !dbg !1297

if.then105:                                       ; preds = %for.body99
  %call107 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1298
  %call109 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !1300
  %sub.ptr.lhs.cast111 = ptrtoint i8* %call109 to i64, !dbg !1300
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast, !dbg !1300
  %conv114 = trunc i64 %sub.ptr.sub113 to i32, !dbg !1300
  call void @llvm.dbg.value(metadata !{i32 %conv114}, i64 0, metadata !404), !dbg !1300
  %call116 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1301
  %cmp117 = icmp slt i32 %call116, 0, !dbg !1301
  br i1 %cmp117, label %if.then119, label %for.inc122, !dbg !1301

if.then119:                                       ; preds = %if.then105
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !1302
  unreachable

for.inc122:                                       ; preds = %if.then105, %for.body99
  %col.1 = phi i32 [ %add100, %for.body99 ], [ 0, %if.then105 ]
  %linel.1 = phi i32 [ %linel.0355, %for.body99 ], [ %conv114, %if.then105 ]
  %inc123 = add nsw i32 %i.1353, 1, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32 %inc123}, i64 0, metadata !396), !dbg !1292
  %cmp97 = icmp slt i32 %inc123, %start.0, !dbg !1292
  br i1 %cmp97, label %for.body99, label %for.end124, !dbg !1292

for.end124:                                       ; preds = %for.inc122, %for.cond96.preheader
  %linel.0.lcssa = phi i32 [ %conv89, %for.cond96.preheader ], [ %linel.1, %for.inc122 ]
  %col.0.lcssa = phi i32 [ 0, %for.cond96.preheader ], [ %col.1, %for.inc122 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !419), !dbg !1303
  %24 = load i32* %Rhsflag, align 4, !dbg !1303, !tbaa !572
  %cmp125 = icmp eq i32 %24, 68, !dbg !1303
  br i1 %cmp125, label %while.cond.preheader, label %for.cond133.preheader, !dbg !1303

while.cond.preheader:                             ; preds = %for.end124
  %call129347 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !1304
  %tobool348 = icmp eq i8* %call129347, null, !dbg !1304
  br i1 %tobool348, label %for.cond133.preheader, label %while.body, !dbg !1304

for.cond133.preheader:                            ; preds = %while.cond.preheader, %while.body, %for.end124
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !411), !dbg !1306
  %25 = load i32* %Nrhs, align 4, !dbg !1306, !tbaa !572
  %cmp134341 = icmp sgt i32 %25, 0, !dbg !1306
  br i1 %cmp134341, label %for.cond137.preheader.lr.ph, label %for.end263, !dbg !1306

for.cond137.preheader.lr.ph:                      ; preds = %for.cond133.preheader
  %cmp138328 = icmp sgt i32 %Nentries.0, 0, !dbg !1308
  %cmp229335 = icmp sgt i32 %mul83.pre-phi, 0, !dbg !1311
  br label %for.cond137.preheader, !dbg !1306

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call129349 = phi i8* [ %call129, %while.body ], [ %call129347, %while.cond.preheader ]
  store i8 69, i8* %call129349, align 1, !dbg !1304, !tbaa !564
  %call129 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !1304
  %tobool = icmp eq i8* %call129, null, !dbg !1304
  br i1 %tobool, label %for.cond133.preheader, label %while.body, !dbg !1304

for.cond137.preheader:                            ; preds = %for.cond137.preheader.lr.ph, %for.inc261
  %26 = phi i32 [ %20, %for.cond137.preheader.lr.ph ], [ %36, %for.inc261 ]
  %27 = phi i32 [ %20, %for.cond137.preheader.lr.ph ], [ %37, %for.inc261 ]
  %rhsi.0346 = phi i32 [ 0, %for.cond137.preheader.lr.ph ], [ %inc262, %for.inc261 ]
  %linel.2345 = phi i32 [ %linel.0.lcssa, %for.cond137.preheader.lr.ph ], [ %linel.5.lcssa, %for.inc261 ]
  %b.addr.0343 = phi i8* [ %b, %for.cond137.preheader.lr.ph ], [ %add.ptr227, %for.inc261 ]
  %col.2342 = phi i32 [ %col.0.lcssa, %for.cond137.preheader.lr.ph ], [ %col.5.lcssa, %for.inc261 ]
  br i1 %cmp138328, label %for.body140, label %for.end224, !dbg !1308

for.body140:                                      ; preds = %for.cond137.preheader, %if.end220
  %28 = phi i32 [ %35, %if.end220 ], [ %26, %for.cond137.preheader ]
  %linel.3331 = phi i32 [ %linel.4, %if.end220 ], [ %linel.2345, %for.cond137.preheader ]
  %col.3330 = phi i32 [ %add221, %if.end220 ], [ %col.2342, %for.cond137.preheader ]
  %i.2329 = phi i32 [ %inc223, %if.end220 ], [ 0, %for.cond137.preheader ]
  %cmp141 = icmp slt i32 %mul62, %linel.3331, !dbg !1313
  %cond146 = select i1 %cmp141, i32 %mul62, i32 %linel.3331, !dbg !1313
  %cmp147 = icmp slt i32 %col.3330, %cond146, !dbg !1313
  br i1 %cmp147, label %for.body140.if.end177_crit_edge, label %if.then149, !dbg !1313

for.body140.if.end177_crit_edge:                  ; preds = %for.body140
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !419), !dbg !1315
  %.pre = load i32* %Rhsflag, align 4, !dbg !1315, !tbaa !572
  br label %if.end177, !dbg !1313

if.then149:                                       ; preds = %for.body140
  %call151 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1316
  %call153 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !1318
  %sub.ptr.lhs.cast155 = ptrtoint i8* %call153 to i64, !dbg !1318
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast, !dbg !1318
  %conv158 = trunc i64 %sub.ptr.sub157 to i32, !dbg !1318
  call void @llvm.dbg.value(metadata !{i32 %conv158}, i64 0, metadata !404), !dbg !1318
  %call160 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1319
  %cmp161 = icmp slt i32 %call160, 0, !dbg !1319
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !1319

if.then163:                                       ; preds = %if.then149
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !1320
  unreachable

if.end164:                                        ; preds = %if.then149
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !419), !dbg !1321
  %29 = load i32* %Rhsflag, align 4, !dbg !1321, !tbaa !572
  %cmp165 = icmp eq i32 %29, 68, !dbg !1321
  br i1 %cmp165, label %while.cond168.preheader, label %if.end177, !dbg !1321

while.cond168.preheader:                          ; preds = %if.end164
  %call170323 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !1322
  %tobool171324 = icmp eq i8* %call170323, null, !dbg !1322
  br i1 %tobool171324, label %if.end177, label %while.body172, !dbg !1322

while.body172:                                    ; preds = %while.cond168.preheader, %while.body172
  %call170325 = phi i8* [ %call170, %while.body172 ], [ %call170323, %while.cond168.preheader ]
  store i8 69, i8* %call170325, align 1, !dbg !1322, !tbaa !564
  %call170 = call i8* @strchr(i8* %1, i32 68) #12, !dbg !1322
  %tobool171 = icmp eq i8* %call170, null, !dbg !1322
  br i1 %tobool171, label %if.end177, label %while.body172, !dbg !1322

if.end177:                                        ; preds = %while.cond168.preheader, %while.body172, %for.body140.if.end177_crit_edge, %if.end164
  %30 = phi i32 [ %.pre, %for.body140.if.end177_crit_edge ], [ %29, %if.end164 ], [ 68, %while.body172 ], [ 68, %while.cond168.preheader ], !dbg !1324
  %col.4 = phi i32 [ %col.3330, %for.body140.if.end177_crit_edge ], [ 0, %if.end164 ], [ 0, %while.body172 ], [ 0, %while.cond168.preheader ]
  %linel.4 = phi i32 [ %linel.3331, %for.body140.if.end177_crit_edge ], [ %conv158, %if.end164 ], [ %conv158, %while.body172 ], [ %conv158, %while.cond168.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1324
  %mul178 = mul nsw i32 %28, %i.2329, !dbg !1324
  %idxprom = sext i32 %mul178 to i64, !dbg !1324
  %arrayidx179 = getelementptr inbounds i8* %b.addr.0343, i64 %idxprom, !dbg !1324
  call void @llvm.dbg.value(metadata !{i8* %arrayidx179}, i64 0, metadata !429), !dbg !1324
  %idx.ext = sext i32 %col.4 to i64, !dbg !1325
  %add.ptr = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %idx.ext, !dbg !1325
  %conv181 = sext i32 %28 to i64, !dbg !1325
  %call182 = call i8* @strncpy(i8* %arrayidx179, i8* %add.ptr, i64 %conv181) #9, !dbg !1325
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !419), !dbg !1315
  %cmp183 = icmp eq i32 %30, 70, !dbg !1315
  br i1 %cmp183, label %if.end220, label %land.lhs.true185, !dbg !1315

land.lhs.true185:                                 ; preds = %if.end177
  %call186 = call i8* @strchr(i8* %arrayidx179, i32 69) #12, !dbg !1315
  %cmp187 = icmp eq i8* %call186, null, !dbg !1315
  br i1 %cmp187, label %if.then189, label %if.end220, !dbg !1315

if.then189:                                       ; preds = %land.lhs.true185
  %call190 = call i64 @strlen(i8* %arrayidx179) #12, !dbg !1326
  %conv191 = trunc i64 %call190 to i32, !dbg !1326
  call void @llvm.dbg.value(metadata !{i32 %conv191}, i64 0, metadata !403), !dbg !1326
  %add192 = add i32 %conv191, 1, !dbg !1328
  call void @llvm.dbg.value(metadata !{i32 %add192}, i64 0, metadata !397), !dbg !1328
  %31 = sext i32 %add192 to i64
  br label %for.cond193, !dbg !1328

for.cond193:                                      ; preds = %for.body196, %if.then189
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body196 ], [ %31, %if.then189 ]
  %j.0 = phi i32 [ %sub197, %for.body196 ], [ %add192, %if.then189 ]
  %32 = trunc i64 %indvars.iv to i32, !dbg !1328
  %cmp194 = icmp sgt i32 %32, -1, !dbg !1328
  br i1 %cmp194, label %for.body196, label %if.end220, !dbg !1328

for.body196:                                      ; preds = %for.cond193
  %sub197 = add nsw i32 %j.0, -1, !dbg !1330
  %idxprom198 = sext i32 %sub197 to i64, !dbg !1330
  %arrayidx179.sum = add i64 %idxprom198, %idxprom, !dbg !1330
  %arrayidx199 = getelementptr inbounds i8* %b.addr.0343, i64 %arrayidx179.sum, !dbg !1330
  %33 = load i8* %arrayidx199, align 1, !dbg !1330, !tbaa !564
  %arrayidx179.sum322 = add i64 %indvars.iv, %idxprom, !dbg !1330
  %arrayidx201 = getelementptr inbounds i8* %b.addr.0343, i64 %arrayidx179.sum322, !dbg !1330
  store i8 %33, i8* %arrayidx201, align 1, !dbg !1330, !tbaa !564
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1332
  switch i8 %33, label %for.cond193 [
    i8 43, label %if.then212
    i8 45, label %if.then212
  ], !dbg !1332

if.then212:                                       ; preds = %for.body196, %for.body196
  call void @llvm.dbg.value(metadata !{i32* %Rhsflag}, i64 0, metadata !419), !dbg !1333
  %34 = load i32* %Rhsflag, align 4, !dbg !1333, !tbaa !572
  %conv213 = trunc i32 %34 to i8, !dbg !1333
  store i8 %conv213, i8* %arrayidx199, align 1, !dbg !1333, !tbaa !564
  br label %if.end220, !dbg !1335

if.end220:                                        ; preds = %for.cond193, %if.end177, %if.then212, %land.lhs.true185
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1336
  %35 = load i32* %Rhswidth, align 4, !dbg !1336, !tbaa !572
  %add221 = add nsw i32 %35, %col.4, !dbg !1336
  call void @llvm.dbg.value(metadata !{i32 %add221}, i64 0, metadata !402), !dbg !1336
  %inc223 = add nsw i32 %i.2329, 1, !dbg !1308
  call void @llvm.dbg.value(metadata !{i32 %inc223}, i64 0, metadata !396), !dbg !1308
  %cmp138 = icmp slt i32 %inc223, %Nentries.0, !dbg !1308
  br i1 %cmp138, label %for.body140, label %for.end224, !dbg !1308

for.end224:                                       ; preds = %if.end220, %for.cond137.preheader
  %36 = phi i32 [ %26, %for.cond137.preheader ], [ %35, %if.end220 ]
  %37 = phi i32 [ %27, %for.cond137.preheader ], [ %35, %if.end220 ], !dbg !1337
  %linel.3.lcssa = phi i32 [ %linel.2345, %for.cond137.preheader ], [ %linel.4, %if.end220 ]
  %col.3.lcssa = phi i32 [ %col.2342, %for.cond137.preheader ], [ %add221, %if.end220 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1337
  %mul225 = mul nsw i32 %37, %Nentries.0, !dbg !1337
  %idx.ext226 = sext i32 %mul225 to i64, !dbg !1337
  %add.ptr227 = getelementptr inbounds i8* %b.addr.0343, i64 %idx.ext226, !dbg !1337
  call void @llvm.dbg.value(metadata !{i8* %add.ptr227}, i64 0, metadata !394), !dbg !1337
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !396), !dbg !1311
  br i1 %cmp229335, label %for.body231, label %for.inc261, !dbg !1311

for.body231:                                      ; preds = %for.end224, %for.inc258
  %linel.5338 = phi i32 [ %linel.6, %for.inc258 ], [ %linel.3.lcssa, %for.end224 ]
  %col.5337 = phi i32 [ %col.6, %for.inc258 ], [ %col.3.lcssa, %for.end224 ]
  %i.3336 = phi i32 [ %inc259, %for.inc258 ], [ 0, %for.end224 ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !417), !dbg !1338
  %add232 = add nsw i32 %37, %col.5337, !dbg !1338
  call void @llvm.dbg.value(metadata !{i32 %add232}, i64 0, metadata !402), !dbg !1338
  %cmp233 = icmp slt i32 %mul62, %linel.5338, !dbg !1340
  %cond238 = select i1 %cmp233, i32 %mul62, i32 %linel.5338, !dbg !1340
  %cmp239 = icmp slt i32 %add232, %cond238, !dbg !1340
  br i1 %cmp239, label %for.inc258, label %if.then241, !dbg !1340

if.then241:                                       ; preds = %for.body231
  %call243 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #9, !dbg !1341
  %call245 = call i8* @strchr(i8* %1, i32 10) #12, !dbg !1343
  %sub.ptr.lhs.cast247 = ptrtoint i8* %call245 to i64, !dbg !1343
  %sub.ptr.sub249 = sub i64 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast, !dbg !1343
  %conv250 = trunc i64 %sub.ptr.sub249 to i32, !dbg !1343
  call void @llvm.dbg.value(metadata !{i32 %conv250}, i64 0, metadata !404), !dbg !1343
  %call252 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #9, !dbg !1344
  %cmp253 = icmp slt i32 %call252, 0, !dbg !1344
  br i1 %cmp253, label %if.then255, label %for.inc258, !dbg !1344

if.then255:                                       ; preds = %if.then241
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #10, !dbg !1345
  unreachable

for.inc258:                                       ; preds = %if.then241, %for.body231
  %col.6 = phi i32 [ %add232, %for.body231 ], [ 0, %if.then241 ]
  %linel.6 = phi i32 [ %linel.5338, %for.body231 ], [ %conv250, %if.then241 ]
  %inc259 = add nsw i32 %i.3336, 1, !dbg !1311
  call void @llvm.dbg.value(metadata !{i32 %inc259}, i64 0, metadata !396), !dbg !1311
  %cmp229 = icmp slt i32 %inc259, %mul83.pre-phi, !dbg !1311
  br i1 %cmp229, label %for.body231, label %for.inc261, !dbg !1311

for.inc261:                                       ; preds = %for.inc258, %for.end224
  %linel.5.lcssa = phi i32 [ %linel.3.lcssa, %for.end224 ], [ %linel.6, %for.inc258 ]
  %col.5.lcssa = phi i32 [ %col.3.lcssa, %for.end224 ], [ %col.6, %for.inc258 ]
  %inc262 = add nsw i32 %rhsi.0346, 1, !dbg !1306
  call void @llvm.dbg.value(metadata !{i32 %inc262}, i64 0, metadata !406), !dbg !1306
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !411), !dbg !1306
  %38 = load i32* %Nrhs, align 4, !dbg !1306, !tbaa !572
  %cmp134 = icmp slt i32 %inc262, %38, !dbg !1306
  br i1 %cmp134, label %for.cond137.preheader, label %for.end263, !dbg !1306

for.end263:                                       ; preds = %for.inc261, %for.cond133.preheader
  %call264 = call i32 @fclose(%struct._IO_FILE* %call) #9, !dbg !1346
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !411), !dbg !1347
  %39 = load i32* %Nrhs, align 4, !dbg !1347, !tbaa !572
  br label %cleanup, !dbg !1347

cleanup:                                          ; preds = %for.end263, %if.then57, %if.then46, %if.then16, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then46 ], [ 0, %if.then57 ], [ %39, %for.end263 ]
  call void @llvm.lifetime.end(i64 8192, i8* %1) #2, !dbg !1348
  call void @llvm.lifetime.end(i64 73, i8* %0) #2, !dbg !1348
  ret i32 %retval.0, !dbg !1348
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newaux_char(i8* %filename, i8 signext %AuxType, i8** nocapture %b, i8** nocapture %Rhsfmt) #0 {
entry:
  %Ptrcrd = alloca i32, align 4
  %Indcrd = alloca i32, align 4
  %Valcrd = alloca i32, align 4
  %Rhscrd = alloca i32, align 4
  %Nrow = alloca i32, align 4
  %Ncol = alloca i32, align 4
  %Nnzero = alloca i32, align 4
  %Nrhs = alloca i32, align 4
  %Rhsperline = alloca i32, align 4
  %Rhswidth = alloca i32, align 4
  %Rhsprec = alloca i32, align 4
  %Rhsflag = alloca i32, align 4
  %Title = alloca [73 x i8], align 16
  %Key = alloca [9 x i8], align 1
  %Type = alloca [4 x i8], align 1
  %Rhstype = alloca [4 x i8], align 1
  %Ptrfmt = alloca [17 x i8], align 16
  %Indfmt = alloca [17 x i8], align 16
  %Valfmt = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !434), !dbg !1349
  call void @llvm.dbg.value(metadata !{i8 %AuxType}, i64 0, metadata !435), !dbg !1349
  call void @llvm.dbg.value(metadata !{i8** %b}, i64 0, metadata !436), !dbg !1349
  call void @llvm.dbg.value(metadata !{i8** %Rhsfmt}, i64 0, metadata !437), !dbg !1349
  call void @llvm.dbg.declare(metadata !{i32* %Ptrcrd}, metadata !439), !dbg !1350
  call void @llvm.dbg.declare(metadata !{i32* %Indcrd}, metadata !440), !dbg !1350
  call void @llvm.dbg.declare(metadata !{i32* %Valcrd}, metadata !441), !dbg !1350
  call void @llvm.dbg.declare(metadata !{i32* %Rhscrd}, metadata !442), !dbg !1350
  call void @llvm.dbg.declare(metadata !{i32* %Nrow}, metadata !443), !dbg !1351
  call void @llvm.dbg.declare(metadata !{i32* %Ncol}, metadata !444), !dbg !1351
  call void @llvm.dbg.declare(metadata !{i32* %Nnzero}, metadata !445), !dbg !1351
  call void @llvm.dbg.declare(metadata !{i32* %Nrhs}, metadata !446), !dbg !1351
  call void @llvm.dbg.declare(metadata !{i32* %Rhsperline}, metadata !447), !dbg !1352
  call void @llvm.dbg.declare(metadata !{i32* %Rhswidth}, metadata !448), !dbg !1352
  call void @llvm.dbg.declare(metadata !{i32* %Rhsprec}, metadata !449), !dbg !1352
  call void @llvm.dbg.declare(metadata !{i32* %Rhsflag}, metadata !450), !dbg !1353
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0, !dbg !1354
  call void @llvm.lifetime.start(i64 73, i8* %0) #2, !dbg !1354
  call void @llvm.dbg.declare(metadata !{[73 x i8]* %Title}, metadata !451), !dbg !1354
  call void @llvm.dbg.declare(metadata !{[9 x i8]* %Key}, metadata !452), !dbg !1354
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Type}, metadata !453), !dbg !1354
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %Rhstype}, metadata !454), !dbg !1354
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Ptrfmt}, metadata !455), !dbg !1355
  call void @llvm.dbg.declare(metadata !{[17 x i8]* %Indfmt}, metadata !456), !dbg !1355
  call void @llvm.dbg.declare(metadata !{[21 x i8]* %Valfmt}, metadata !457), !dbg !1355
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !1356
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !438), !dbg !1356
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1356
  br i1 %cmp, label %if.then, label %if.end, !dbg !1356

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1357, !tbaa !563
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !1357
  br label %cleanup, !dbg !1359

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 21) #9, !dbg !1360
  store i8* %call2, i8** %Rhsfmt, align 8, !dbg !1360, !tbaa !563
  %cmp3 = icmp eq i8* %call2, null, !dbg !1361
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1361

if.then4:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([32 x i8]* @.str58, i64 0, i64 0)) #10, !dbg !1361
  unreachable

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0, !dbg !1362
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0, !dbg !1362
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0, !dbg !1362
  %arraydecay9 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0, !dbg !1362
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0, !dbg !1362
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0, !dbg !1362
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay6, i8* %arraydecay7, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay8, i8* %arraydecay9, i8* %arraydecay10, i8* %call2, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #10, !dbg !1362
  %call13 = call i32 @fclose(%struct._IO_FILE* %call) #9, !dbg !1363
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !446), !dbg !1364
  %2 = load i32* %Nrhs, align 4, !dbg !1364, !tbaa !572
  %cmp14 = icmp eq i32 %2, 0, !dbg !1364
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !1364

if.then15:                                        ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !1365, !tbaa !563
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %3), !dbg !1365
  br label %cleanup, !dbg !1367

if.else:                                          ; preds = %if.end5
  %5 = load i8** %Rhsfmt, align 8, !dbg !1368, !tbaa !563
  call fastcc void @ParseRfmt(i8* %5, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #10, !dbg !1368
  %6 = load i8* %arraydecay7, align 1, !dbg !1370, !tbaa !564
  %cmp18 = icmp eq i8 %6, 67, !dbg !1370
  br i1 %cmp18, label %if.then20, label %if.else33, !dbg !1370

if.then20:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !1371, !tbaa !563
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %filename) #9, !dbg !1371
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !1373, !tbaa !563
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str41, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %8), !dbg !1373
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !443), !dbg !1374
  %10 = load i32* %Nrow, align 4, !dbg !1374, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !446), !dbg !1374
  %11 = load i32* %Nrhs, align 4, !dbg !1374, !tbaa !572
  %mul = mul nsw i32 %11, %10, !dbg !1374
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !448), !dbg !1374
  %12 = load i32* %Rhswidth, align 4, !dbg !1374, !tbaa !572
  %mul23 = mul nsw i32 %mul, %12, !dbg !1374
  %conv24 = sext i32 %mul23 to i64, !dbg !1374
  %mul26 = shl nsw i64 %conv24, 1, !dbg !1374
  %call27 = call noalias i8* @malloc(i64 %mul26) #9, !dbg !1374
  store i8* %call27, i8** %b, align 8, !dbg !1374, !tbaa !563
  %cmp28 = icmp eq i8* %call27, null, !dbg !1375
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1375

if.then30:                                        ; preds = %if.then20
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #10, !dbg !1375
  unreachable

if.end31:                                         ; preds = %if.then20
  %call32 = call i32 @readHB_aux_char(i8* %filename, i8 signext %AuxType, i8* %call27) #10, !dbg !1376
  br label %cleanup, !dbg !1376

if.else33:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i32* %Nrow}, i64 0, metadata !443), !dbg !1377
  %13 = load i32* %Nrow, align 4, !dbg !1377, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32* %Nrhs}, i64 0, metadata !446), !dbg !1377
  %14 = load i32* %Nrhs, align 4, !dbg !1377, !tbaa !572
  %mul34 = mul nsw i32 %14, %13, !dbg !1377
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !448), !dbg !1377
  %15 = load i32* %Rhswidth, align 4, !dbg !1377, !tbaa !572
  %mul35 = mul nsw i32 %mul34, %15, !dbg !1377
  %conv36 = sext i32 %mul35 to i64, !dbg !1377
  %call38 = call noalias i8* @malloc(i64 %conv36) #9, !dbg !1377
  store i8* %call38, i8** %b, align 8, !dbg !1377, !tbaa !563
  %cmp39 = icmp eq i8* %call38, null, !dbg !1379
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1379

if.then41:                                        ; preds = %if.else33
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #10, !dbg !1379
  unreachable

if.end42:                                         ; preds = %if.else33
  %call43 = call i32 @readHB_aux_char(i8* %filename, i8 signext %AuxType, i8* %call38) #10, !dbg !1380
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %if.end42, %if.end31, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call32, %if.end31 ], [ %call43, %if.end42 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #2, !dbg !1381
  ret i32 %retval.0, !dbg !1381
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeHB_mat_char(i8* %filename, i32 %M, i32 %N, i32 %nz, i32* nocapture %colptr, i32* nocapture %rowind, i8* %val, i32 %Nrhs, i8* %rhs, i8* %guess, i8* %exact, i8* %Title, i8* %Key, i8* %Type, i8* %Ptrfmt, i8* %Indfmt, i8* %Valfmt, i8* %Rhsfmt, i8* %Rhstype) #0 {
entry:
  %Ptrperline = alloca i32, align 4
  %Ptrwidth = alloca i32, align 4
  %Indperline = alloca i32, align 4
  %Indwidth = alloca i32, align 4
  %Rhsperline = alloca i32, align 4
  %Rhswidth = alloca i32, align 4
  %Rhsprec = alloca i32, align 4
  %Rhsflag = alloca i32, align 4
  %Valperline = alloca i32, align 4
  %Valwidth = alloca i32, align 4
  %Valprec = alloca i32, align 4
  %Valflag = alloca i32, align 4
  %pformat = alloca [16 x i8], align 16
  %iformat = alloca [16 x i8], align 16
  %vformat = alloca [19 x i8], align 16
  %rformat = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !462), !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !463), !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !464), !dbg !1382
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !465), !dbg !1383
  call void @llvm.dbg.value(metadata !{i32* %colptr}, i64 0, metadata !466), !dbg !1383
  call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !467), !dbg !1383
  call void @llvm.dbg.value(metadata !{i8* %val}, i64 0, metadata !468), !dbg !1384
  call void @llvm.dbg.value(metadata !{i32 %Nrhs}, i64 0, metadata !469), !dbg !1384
  call void @llvm.dbg.value(metadata !{i8* %rhs}, i64 0, metadata !470), !dbg !1384
  call void @llvm.dbg.value(metadata !{i8* %guess}, i64 0, metadata !471), !dbg !1385
  call void @llvm.dbg.value(metadata !{i8* %exact}, i64 0, metadata !472), !dbg !1385
  call void @llvm.dbg.value(metadata !{i8* %Title}, i64 0, metadata !473), !dbg !1386
  call void @llvm.dbg.value(metadata !{i8* %Key}, i64 0, metadata !474), !dbg !1386
  call void @llvm.dbg.value(metadata !{i8* %Type}, i64 0, metadata !475), !dbg !1386
  call void @llvm.dbg.value(metadata !{i8* %Ptrfmt}, i64 0, metadata !476), !dbg !1387
  call void @llvm.dbg.value(metadata !{i8* %Indfmt}, i64 0, metadata !477), !dbg !1387
  call void @llvm.dbg.value(metadata !{i8* %Valfmt}, i64 0, metadata !478), !dbg !1387
  call void @llvm.dbg.value(metadata !{i8* %Rhsfmt}, i64 0, metadata !479), !dbg !1387
  call void @llvm.dbg.value(metadata !{i8* %Rhstype}, i64 0, metadata !480), !dbg !1388
  call void @llvm.dbg.declare(metadata !{i32* %Ptrperline}, metadata !495), !dbg !1389
  call void @llvm.dbg.declare(metadata !{i32* %Ptrwidth}, metadata !496), !dbg !1389
  call void @llvm.dbg.declare(metadata !{i32* %Indperline}, metadata !497), !dbg !1389
  call void @llvm.dbg.declare(metadata !{i32* %Indwidth}, metadata !498), !dbg !1389
  call void @llvm.dbg.declare(metadata !{i32* %Rhsperline}, metadata !499), !dbg !1390
  call void @llvm.dbg.declare(metadata !{i32* %Rhswidth}, metadata !500), !dbg !1390
  call void @llvm.dbg.declare(metadata !{i32* %Rhsprec}, metadata !501), !dbg !1390
  call void @llvm.dbg.declare(metadata !{i32* %Rhsflag}, metadata !502), !dbg !1391
  call void @llvm.dbg.declare(metadata !{i32* %Valperline}, metadata !503), !dbg !1392
  call void @llvm.dbg.declare(metadata !{i32* %Valwidth}, metadata !504), !dbg !1392
  call void @llvm.dbg.declare(metadata !{i32* %Valprec}, metadata !505), !dbg !1392
  call void @llvm.dbg.declare(metadata !{i32* %Valflag}, metadata !506), !dbg !1393
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %pformat}, metadata !507), !dbg !1394
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %iformat}, metadata !508), !dbg !1394
  call void @llvm.dbg.declare(metadata !{[19 x i8]* %vformat}, metadata !509), !dbg !1394
  call void @llvm.dbg.declare(metadata !{[19 x i8]* %rformat}, metadata !510), !dbg !1394
  %0 = load i8* %Type, align 1, !dbg !1395, !tbaa !564
  %cmp = icmp eq i8 %0, 67, !dbg !1395
  br i1 %cmp, label %if.then, label %if.end, !dbg !1395

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %nz, 1, !dbg !1396
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !493), !dbg !1396
  %mul3 = shl nsw i32 %M, 1, !dbg !1398
  call void @llvm.dbg.value(metadata !{i32 %mul3}, i64 0, metadata !494), !dbg !1398
  br label %if.end, !dbg !1399

if.end:                                           ; preds = %entry, %if.then
  %nvalentries.0 = phi i32 [ %mul, %if.then ], [ %nz, %entry ]
  %nrhsentries.0 = phi i32 [ %mul3, %if.then ], [ %M, %entry ]
  %cmp4 = icmp eq i8* %filename, null, !dbg !1400
  br i1 %cmp4, label %if.else12, label %if.then6, !dbg !1400

if.then6:                                         ; preds = %if.end
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !1401
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !481), !dbg !1401
  %cmp7 = icmp eq %struct._IO_FILE* %call, null, !dbg !1401
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !1401

if.then9:                                         ; preds = %if.then6
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1403, !tbaa !563
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #9, !dbg !1403
  br label %return, !dbg !1405

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !1406, !tbaa !563
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %2}, i64 0, metadata !481), !dbg !1406
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.else12
  %out_file.0 = phi %struct._IO_FILE* [ %call, %if.then6 ], [ %2, %if.else12 ]
  %cmp14 = icmp eq i8* %Ptrfmt, null, !dbg !1407
  call void @llvm.dbg.value(metadata !1003, i64 0, metadata !476), !dbg !1407
  %.Ptrfmt = select i1 %cmp14, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* %Ptrfmt, !dbg !1407
  call fastcc void @ParseIfmt(i8* %.Ptrfmt, i32* %Ptrperline, i32* %Ptrwidth) #10, !dbg !1408
  %arraydecay = getelementptr inbounds [16 x i8]* %pformat, i64 0, i64 0, !dbg !1409
  call void @llvm.dbg.value(metadata !{i32* %Ptrwidth}, i64 0, metadata !496), !dbg !1409
  %3 = load i32* %Ptrwidth, align 4, !dbg !1409, !tbaa !572
  %call19 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %3) #9, !dbg !1409
  %cmp20 = icmp eq i8* %Indfmt, null, !dbg !1410
  call void @llvm.dbg.value(metadata !{i8* %.Ptrfmt}, i64 0, metadata !477), !dbg !1410
  %Indfmt.addr.0 = select i1 %cmp20, i8* %.Ptrfmt, i8* %Indfmt, !dbg !1410
  call fastcc void @ParseIfmt(i8* %Indfmt.addr.0, i32* %Indperline, i32* %Indwidth) #10, !dbg !1411
  %arraydecay25 = getelementptr inbounds [16 x i8]* %iformat, i64 0, i64 0, !dbg !1412
  call void @llvm.dbg.value(metadata !{i32* %Indwidth}, i64 0, metadata !498), !dbg !1412
  %4 = load i32* %Indwidth, align 4, !dbg !1412, !tbaa !572
  %call26 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay25, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %4) #9, !dbg !1412
  %5 = load i8* %Type, align 1, !dbg !1413, !tbaa !564
  %cmp29 = icmp eq i8 %5, 80, !dbg !1413
  br i1 %cmp29, label %if.end39, label %if.then31, !dbg !1413

if.then31:                                        ; preds = %if.end13
  %cmp32 = icmp eq i8* %Valfmt, null, !dbg !1414
  call void @llvm.dbg.value(metadata !1016, i64 0, metadata !478), !dbg !1414
  %.Valfmt = select i1 %cmp32, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), i8* %Valfmt, !dbg !1414
  call fastcc void @ParseRfmt(i8* %.Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #10, !dbg !1416
  %arraydecay37 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0, !dbg !1417
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !504), !dbg !1417
  %6 = load i32* %Valwidth, align 4, !dbg !1417, !tbaa !572
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay37, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i32 %6) #9, !dbg !1417
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !503), !dbg !1418
  %.pre = load i32* %Valperline, align 4, !dbg !1418, !tbaa !572
  br label %if.end39, !dbg !1419

if.end39:                                         ; preds = %if.end13, %if.then31
  %7 = phi i32 [ %6, %if.then31 ], [ undef, %if.end13 ]
  %8 = phi i32 [ %.pre, %if.then31 ], [ undef, %if.end13 ]
  %Valfmt.addr.1 = phi i8* [ %.Valfmt, %if.then31 ], [ %Valfmt, %if.end13 ]
  %add = add nsw i32 %N, 1, !dbg !1420
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !495), !dbg !1420
  %9 = load i32* %Ptrperline, align 4, !dbg !1420, !tbaa !572
  %div = sdiv i32 %add, %9, !dbg !1420
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !489), !dbg !1420
  %rem = srem i32 %add, %9, !dbg !1421
  %not.cmp41 = icmp ne i32 %rem, 0, !dbg !1421
  %inc = zext i1 %not.cmp41 to i32, !dbg !1421
  %div.inc = add nsw i32 %inc, %div, !dbg !1421
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !497), !dbg !1422
  %10 = load i32* %Indperline, align 4, !dbg !1422, !tbaa !572
  %div45 = sdiv i32 %nz, %10, !dbg !1422
  call void @llvm.dbg.value(metadata !{i32 %div45}, i64 0, metadata !490), !dbg !1422
  %rem46 = srem i32 %nz, %10, !dbg !1423
  %not.cmp47 = icmp ne i32 %rem46, 0, !dbg !1423
  %inc50 = zext i1 %not.cmp47 to i32, !dbg !1423
  %indcrd.0 = add nsw i32 %inc50, %div45, !dbg !1423
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !503), !dbg !1418
  %div52 = sdiv i32 %nvalentries.0, %8, !dbg !1418
  call void @llvm.dbg.value(metadata !{i32 %div52}, i64 0, metadata !491), !dbg !1418
  %rem53 = srem i32 %nvalentries.0, %8, !dbg !1424
  %not.cmp54 = icmp ne i32 %rem53, 0, !dbg !1424
  %inc57 = zext i1 %not.cmp54 to i32, !dbg !1424
  %div52.inc57 = add nsw i32 %inc57, %div52, !dbg !1424
  %cmp59 = icmp sgt i32 %Nrhs, 0, !dbg !1425
  br i1 %cmp59, label %if.then61, label %if.end92, !dbg !1425

if.then61:                                        ; preds = %if.end39
  %cmp62 = icmp eq i8* %Rhsfmt, null, !dbg !1426
  call void @llvm.dbg.value(metadata !{i8* %Valfmt.addr.1}, i64 0, metadata !479), !dbg !1426
  %Valfmt.addr.1.Rhsfmt = select i1 %cmp62, i8* %Valfmt.addr.1, i8* %Rhsfmt, !dbg !1426
  call fastcc void @ParseRfmt(i8* %Valfmt.addr.1.Rhsfmt, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #10, !dbg !1428
  %arraydecay67 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0, !dbg !1429
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1429
  %11 = load i32* %Rhswidth, align 4, !dbg !1429, !tbaa !572
  %call68 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay67, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i32 %11) #9, !dbg !1429
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1430
  %12 = load i32* %Rhsperline, align 4, !dbg !1430, !tbaa !572
  %div69 = sdiv i32 %nrhsentries.0, %12, !dbg !1430
  call void @llvm.dbg.value(metadata !{i32 %div69}, i64 0, metadata !492), !dbg !1430
  %rem70 = srem i32 %nrhsentries.0, %12, !dbg !1431
  %not.cmp71 = icmp ne i32 %rem70, 0, !dbg !1431
  %inc74 = zext i1 %not.cmp71 to i32, !dbg !1431
  %rhscrd.0 = add nsw i32 %inc74, %div69, !dbg !1431
  %arrayidx76 = getelementptr inbounds i8* %Rhstype, i64 1, !dbg !1432
  %13 = load i8* %arrayidx76, align 1, !dbg !1432, !tbaa !564
  %cmp78 = icmp eq i8 %13, 71, !dbg !1432
  %add81 = zext i1 %cmp78 to i32, !dbg !1432
  %add81.rhscrd.0 = shl nsw i32 %rhscrd.0, %add81, !dbg !1432
  %arrayidx83 = getelementptr inbounds i8* %Rhstype, i64 2, !dbg !1433
  %14 = load i8* %arrayidx83, align 1, !dbg !1433, !tbaa !564
  %cmp85 = icmp eq i8 %14, 88, !dbg !1433
  %add88 = zext i1 %cmp85 to i32, !dbg !1433
  %rhscrd.2 = shl nsw i32 %add81.rhscrd.0, %add88, !dbg !1433
  %mul90 = mul nsw i32 %rhscrd.2, %Nrhs, !dbg !1434
  call void @llvm.dbg.value(metadata !{i32 %mul90}, i64 0, metadata !492), !dbg !1434
  br label %if.end92, !dbg !1435

if.end92:                                         ; preds = %if.end39, %if.then61
  %15 = phi i32 [ %11, %if.then61 ], [ undef, %if.end39 ]
  %16 = phi i32 [ %12, %if.then61 ], [ undef, %if.end39 ]
  %Rhsfmt.addr.1 = phi i8* [ %Valfmt.addr.1.Rhsfmt, %if.then61 ], [ %Rhsfmt, %if.end39 ]
  %rhscrd.3 = phi i32 [ %mul90, %if.then61 ], [ 0, %if.end39 ]
  %add93 = add nsw i32 %div.inc, 4, !dbg !1436
  %add94 = add nsw i32 %add93, %indcrd.0, !dbg !1436
  %add95 = add nsw i32 %add94, %div52.inc57, !dbg !1436
  %add96 = add nsw i32 %add95, %rhscrd.3, !dbg !1436
  call void @llvm.dbg.value(metadata !{i32 %add96}, i64 0, metadata !488), !dbg !1436
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([32 x i8]* @.str49, i64 0, i64 0), i8* %Title, i8* %Key, i32 %add96, i32 %div.inc, i32 %indcrd.0, i32 %div52.inc57, i32 %rhscrd.3) #9, !dbg !1437
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([21 x i8]* @.str50, i64 0, i64 0), i8* %Type, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), i32 %M, i32 %N, i32 %nz) #9, !dbg !1438
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([16 x i8]* @.str52, i64 0, i64 0), i8* %.Ptrfmt, i8* %Indfmt.addr.0, i8* %Valfmt.addr.1) #9, !dbg !1439
  %cmp100 = icmp eq i32 %Nrhs, 0, !dbg !1440
  br i1 %cmp100, label %if.else104, label %if.then102, !dbg !1440

if.then102:                                       ; preds = %if.end92
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* %Rhsfmt.addr.1, i8* %Rhstype, i32 %Nrhs) #9, !dbg !1441
  br label %for.cond.preheader, !dbg !1443

if.else104:                                       ; preds = %if.end92
  %fputc440 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1444
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else104, %if.then102
  %cmp108460 = icmp sgt i32 %N, -1, !dbg !1445
  br i1 %cmp108460, label %for.body, label %for.end, !dbg !1445

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx110 = getelementptr inbounds i32* %colptr, i64 %indvars.iv479, !dbg !1447
  %17 = load i32* %arrayidx110, align 4, !dbg !1447, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !486), !dbg !1447
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay, i32 %17) #9, !dbg !1449
  %indvars.iv.next480 = add i64 %indvars.iv479, 1, !dbg !1445
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !495), !dbg !1450
  %18 = trunc i64 %indvars.iv.next480 to i32, !dbg !1450
  %rem115 = srem i32 %18, %9, !dbg !1450
  %cmp116 = icmp eq i32 %rem115, 0, !dbg !1450
  br i1 %cmp116, label %if.then118, label %for.cond.backedge, !dbg !1450

for.cond.backedge:                                ; preds = %for.body, %if.then118
  %cmp108 = icmp slt i32 %18, %add, !dbg !1445
  br i1 %cmp108, label %for.body, label %for.end, !dbg !1445

if.then118:                                       ; preds = %for.body
  %fputc437 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1450
  br label %for.cond.backedge, !dbg !1450

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32* %Ptrperline}, i64 0, metadata !495), !dbg !1451
  %cmp124 = icmp eq i32 %rem, 0, !dbg !1451
  br i1 %cmp124, label %for.cond129.preheader, label %if.then126, !dbg !1451

if.then126:                                       ; preds = %for.end
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1451
  br label %for.cond129.preheader, !dbg !1451

for.cond129.preheader:                            ; preds = %for.end, %if.then126
  %cmp130458 = icmp sgt i32 %nz, 0, !dbg !1452
  br i1 %cmp130458, label %for.body132, label %for.end147, !dbg !1452

for.body132:                                      ; preds = %for.cond129.preheader, %for.cond129.backedge
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %for.cond129.backedge ], [ 0, %for.cond129.preheader ]
  %arrayidx134 = getelementptr inbounds i32* %rowind, i64 %indvars.iv475, !dbg !1454
  %19 = load i32* %arrayidx134, align 4, !dbg !1454, !tbaa !572
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !486), !dbg !1454
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay25, i32 %19) #9, !dbg !1456
  %indvars.iv.next476 = add i64 %indvars.iv475, 1, !dbg !1452
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !497), !dbg !1457
  %20 = trunc i64 %indvars.iv.next476 to i32, !dbg !1457
  %rem139 = srem i32 %20, %10, !dbg !1457
  %cmp140 = icmp eq i32 %rem139, 0, !dbg !1457
  br i1 %cmp140, label %if.then142, label %for.cond129.backedge, !dbg !1457

for.cond129.backedge:                             ; preds = %for.body132, %if.then142
  %exitcond478 = icmp eq i32 %20, %nz, !dbg !1452
  br i1 %exitcond478, label %for.end147, label %for.body132, !dbg !1452

if.then142:                                       ; preds = %for.body132
  %fputc434 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1457
  br label %for.cond129.backedge, !dbg !1457

for.end147:                                       ; preds = %for.cond129.backedge, %for.cond129.preheader
  call void @llvm.dbg.value(metadata !{i32* %Indperline}, i64 0, metadata !497), !dbg !1458
  %cmp149 = icmp eq i32 %rem46, 0, !dbg !1458
  br i1 %cmp149, label %if.end153, label %if.then151, !dbg !1458

if.then151:                                       ; preds = %for.end147
  %fputc407 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1458
  br label %if.end153, !dbg !1458

if.end153:                                        ; preds = %for.end147, %if.then151
  %21 = load i8* %Type, align 1, !dbg !1459, !tbaa !564
  %cmp156 = icmp eq i8 %21, 80, !dbg !1459
  br i1 %cmp156, label %if.end285, label %for.cond159.preheader, !dbg !1459

for.cond159.preheader:                            ; preds = %if.end153
  %cmp160456 = icmp sgt i32 %nvalentries.0, 0, !dbg !1460
  br i1 %cmp160456, label %for.body162.lr.ph, label %for.end175, !dbg !1460

for.body162.lr.ph:                                ; preds = %for.cond159.preheader
  %arraydecay163 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0, !dbg !1463
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !504), !dbg !1463
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !503), !dbg !1465
  br label %for.body162, !dbg !1460

for.body162:                                      ; preds = %for.cond159.backedge, %for.body162.lr.ph
  %indvars.iv471 = phi i64 [ 0, %for.body162.lr.ph ], [ %indvars.iv.next472, %for.cond159.backedge ]
  call void @llvm.dbg.value(metadata !{i32* %Valwidth}, i64 0, metadata !504), !dbg !1463
  %22 = trunc i64 %indvars.iv471 to i32, !dbg !1463
  %mul164 = mul nsw i32 %7, %22, !dbg !1463
  %idx.ext = sext i32 %mul164 to i64, !dbg !1463
  %add.ptr = getelementptr inbounds i8* %val, i64 %idx.ext, !dbg !1463
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay163, i8* %add.ptr) #9, !dbg !1463
  %indvars.iv.next472 = add i64 %indvars.iv471, 1, !dbg !1460
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !503), !dbg !1465
  %23 = trunc i64 %indvars.iv.next472 to i32, !dbg !1465
  %rem167 = srem i32 %23, %8, !dbg !1465
  %cmp168 = icmp eq i32 %rem167, 0, !dbg !1465
  br i1 %cmp168, label %if.then170, label %for.cond159.backedge, !dbg !1465

for.cond159.backedge:                             ; preds = %for.body162, %if.then170
  %exitcond474 = icmp eq i32 %23, %nvalentries.0, !dbg !1460
  br i1 %exitcond474, label %for.end175, label %for.body162, !dbg !1460

if.then170:                                       ; preds = %for.body162
  %fputc431 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1465
  br label %for.cond159.backedge, !dbg !1465

for.end175:                                       ; preds = %for.cond159.backedge, %for.cond159.preheader
  call void @llvm.dbg.value(metadata !{i32* %Valperline}, i64 0, metadata !503), !dbg !1466
  %cmp177 = icmp eq i32 %rem53, 0, !dbg !1466
  br i1 %cmp177, label %if.end181, label %if.then179, !dbg !1466

if.then179:                                       ; preds = %for.end175
  %fputc410 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1466
  br label %if.end181, !dbg !1466

if.end181:                                        ; preds = %for.end175, %if.then179
  call void @llvm.dbg.value(metadata !874, i64 0, metadata !484), !dbg !1467
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !485), !dbg !1468
  br i1 %cmp59, label %for.cond189.preheader.lr.ph, label %if.end285, !dbg !1469

for.cond189.preheader.lr.ph:                      ; preds = %if.end181
  %cmp190441 = icmp sgt i32 %nrhsentries.0, 0, !dbg !1470
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1475
  %arrayidx215 = getelementptr inbounds i8* %Rhstype, i64 1, !dbg !1476
  %arrayidx248 = getelementptr inbounds i8* %Rhstype, i64 2, !dbg !1477
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1478
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1480
  %arraydecay257 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0, !dbg !1482
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1482
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1485
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1486
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1488
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1490
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1493
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1494
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1496
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1498
  br label %for.cond189.preheader, !dbg !1499

for.cond189.preheader:                            ; preds = %for.inc281, %for.cond189.preheader.lr.ph
  %linemod.0455 = phi i32 [ 0, %for.cond189.preheader.lr.ph ], [ %linemod.3, %for.inc281 ]
  %acount.0454 = phi i32 [ 1, %for.cond189.preheader.lr.ph ], [ %acount.5, %for.inc281 ]
  %j.0453 = phi i32 [ 0, %for.cond189.preheader.lr.ph ], [ %inc282, %for.inc281 ]
  br i1 %cmp190441, label %for.body192, label %for.end207, !dbg !1470

for.body192:                                      ; preds = %for.cond189.preheader, %for.inc205
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc205 ], [ 0, %for.cond189.preheader ]
  %acount.1443 = phi i32 [ %inc198, %for.inc205 ], [ %acount.0454, %for.cond189.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1496
  %24 = trunc i64 %indvars.iv to i32, !dbg !1496
  %mul194 = mul nsw i32 %15, %24, !dbg !1496
  %idx.ext195 = sext i32 %mul194 to i64, !dbg !1496
  %add.ptr196 = getelementptr inbounds i8* %rhs, i64 %idx.ext195, !dbg !1496
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr196) #9, !dbg !1496
  %inc198 = add nsw i32 %acount.1443, 1, !dbg !1498
  call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !484), !dbg !1498
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1498
  %rem199 = srem i32 %acount.1443, %16, !dbg !1498
  %cmp200 = icmp eq i32 %rem199, %linemod.0455, !dbg !1498
  br i1 %cmp200, label %if.then202, label %for.inc205, !dbg !1498

if.then202:                                       ; preds = %for.body192
  %fputc428 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1498
  br label %for.inc205, !dbg !1498

for.inc205:                                       ; preds = %for.body192, %if.then202
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1470
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1470
  %exitcond = icmp eq i32 %lftr.wideiv, %nrhsentries.0, !dbg !1470
  br i1 %exitcond, label %for.cond189.for.end207_crit_edge, label %for.body192, !dbg !1470

for.cond189.for.end207_crit_edge:                 ; preds = %for.inc205
  %25 = add i32 %nrhsentries.0, %acount.0454, !dbg !1470
  br label %for.end207, !dbg !1470

for.end207:                                       ; preds = %for.cond189.for.end207_crit_edge, %for.cond189.preheader
  %acount.1.lcssa = phi i32 [ %25, %for.cond189.for.end207_crit_edge ], [ %acount.0454, %for.cond189.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1475
  %rem208 = srem i32 %acount.1.lcssa, %16, !dbg !1475
  %cmp209 = icmp eq i32 %rem208, %linemod.0455, !dbg !1475
  br i1 %cmp209, label %if.end214, label %if.then211, !dbg !1475

if.then211:                                       ; preds = %for.end207
  %fputc413 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1500
  %sub = add nsw i32 %acount.1.lcssa, -1, !dbg !1494
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1494
  %rem213 = srem i32 %sub, %16, !dbg !1494
  call void @llvm.dbg.value(metadata !{i32 %rem213}, i64 0, metadata !485), !dbg !1494
  br label %if.end214, !dbg !1501

if.end214:                                        ; preds = %for.end207, %if.then211
  %linemod.1 = phi i32 [ %rem213, %if.then211 ], [ %linemod.0455, %for.end207 ]
  %26 = load i8* %arrayidx215, align 1, !dbg !1476, !tbaa !564
  %cmp217 = icmp eq i8 %26, 71, !dbg !1476
  br i1 %cmp217, label %for.cond220.preheader, label %if.end247, !dbg !1476

for.cond220.preheader:                            ; preds = %if.end214
  br i1 %cmp190441, label %for.body223, label %for.end238, !dbg !1502

for.body223:                                      ; preds = %for.cond220.preheader, %for.inc236
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %for.inc236 ], [ 0, %for.cond220.preheader ]
  %acount.2446 = phi i32 [ %inc229, %for.inc236 ], [ %acount.1.lcssa, %for.cond220.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1490
  %27 = trunc i64 %indvars.iv462 to i32, !dbg !1490
  %mul225 = mul nsw i32 %15, %27, !dbg !1490
  %idx.ext226 = sext i32 %mul225 to i64, !dbg !1490
  %add.ptr227 = getelementptr inbounds i8* %guess, i64 %idx.ext226, !dbg !1490
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr227) #9, !dbg !1490
  %inc229 = add nsw i32 %acount.2446, 1, !dbg !1493
  call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !484), !dbg !1493
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1493
  %rem230 = srem i32 %acount.2446, %16, !dbg !1493
  %cmp231 = icmp eq i32 %rem230, %linemod.1, !dbg !1493
  br i1 %cmp231, label %if.then233, label %for.inc236, !dbg !1493

if.then233:                                       ; preds = %for.body223
  %fputc425 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1493
  br label %for.inc236, !dbg !1493

for.inc236:                                       ; preds = %for.body223, %if.then233
  %indvars.iv.next463 = add i64 %indvars.iv462, 1, !dbg !1502
  %lftr.wideiv464 = trunc i64 %indvars.iv.next463 to i32, !dbg !1502
  %exitcond465 = icmp eq i32 %lftr.wideiv464, %nrhsentries.0, !dbg !1502
  br i1 %exitcond465, label %for.cond220.for.end238_crit_edge, label %for.body223, !dbg !1502

for.cond220.for.end238_crit_edge:                 ; preds = %for.inc236
  %28 = add i32 %nrhsentries.0, %acount.1.lcssa, !dbg !1502
  br label %for.end238, !dbg !1502

for.end238:                                       ; preds = %for.cond220.for.end238_crit_edge, %for.cond220.preheader
  %acount.2.lcssa = phi i32 [ %28, %for.cond220.for.end238_crit_edge ], [ %acount.1.lcssa, %for.cond220.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1486
  %rem239 = srem i32 %acount.2.lcssa, %16, !dbg !1486
  %cmp240 = icmp eq i32 %rem239, %linemod.1, !dbg !1486
  br i1 %cmp240, label %if.end247, label %if.then242, !dbg !1486

if.then242:                                       ; preds = %for.end238
  %fputc422 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1503
  %sub244 = add nsw i32 %acount.2.lcssa, -1, !dbg !1488
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1488
  %rem245 = srem i32 %sub244, %16, !dbg !1488
  call void @llvm.dbg.value(metadata !{i32 %rem245}, i64 0, metadata !485), !dbg !1488
  br label %if.end247, !dbg !1504

if.end247:                                        ; preds = %for.end238, %if.end214, %if.then242
  %acount.3 = phi i32 [ %acount.2.lcssa, %if.then242 ], [ %acount.1.lcssa, %if.end214 ], [ %acount.2.lcssa, %for.end238 ]
  %linemod.2 = phi i32 [ %rem245, %if.then242 ], [ %linemod.1, %if.end214 ], [ %linemod.1, %for.end238 ]
  %29 = load i8* %arrayidx248, align 1, !dbg !1477, !tbaa !564
  %cmp250 = icmp eq i8 %29, 88, !dbg !1477
  br i1 %cmp250, label %for.cond253.preheader, label %for.inc281, !dbg !1477

for.cond253.preheader:                            ; preds = %if.end247
  br i1 %cmp190441, label %for.body256, label %for.end271, !dbg !1505

for.body256:                                      ; preds = %for.cond253.preheader, %for.inc269
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %for.inc269 ], [ 0, %for.cond253.preheader ]
  %acount.4450 = phi i32 [ %inc262, %for.inc269 ], [ %acount.3, %for.cond253.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhswidth}, i64 0, metadata !500), !dbg !1482
  %30 = trunc i64 %indvars.iv466 to i32, !dbg !1482
  %mul258 = mul nsw i32 %15, %30, !dbg !1482
  %idx.ext259 = sext i32 %mul258 to i64, !dbg !1482
  %add.ptr260 = getelementptr inbounds i8* %exact, i64 %idx.ext259, !dbg !1482
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr260) #9, !dbg !1482
  %inc262 = add nsw i32 %acount.4450, 1, !dbg !1485
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !484), !dbg !1485
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1485
  %rem263 = srem i32 %acount.4450, %16, !dbg !1485
  %cmp264 = icmp eq i32 %rem263, %linemod.2, !dbg !1485
  br i1 %cmp264, label %if.then266, label %for.inc269, !dbg !1485

if.then266:                                       ; preds = %for.body256
  %fputc419 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1485
  br label %for.inc269, !dbg !1485

for.inc269:                                       ; preds = %for.body256, %if.then266
  %indvars.iv.next467 = add i64 %indvars.iv466, 1, !dbg !1505
  %lftr.wideiv468 = trunc i64 %indvars.iv.next467 to i32, !dbg !1505
  %exitcond469 = icmp eq i32 %lftr.wideiv468, %nrhsentries.0, !dbg !1505
  br i1 %exitcond469, label %for.cond253.for.end271_crit_edge, label %for.body256, !dbg !1505

for.cond253.for.end271_crit_edge:                 ; preds = %for.inc269
  %31 = add i32 %nrhsentries.0, %acount.3, !dbg !1505
  br label %for.end271, !dbg !1505

for.end271:                                       ; preds = %for.cond253.for.end271_crit_edge, %for.cond253.preheader
  %acount.4.lcssa = phi i32 [ %31, %for.cond253.for.end271_crit_edge ], [ %acount.3, %for.cond253.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1478
  %rem272 = srem i32 %acount.4.lcssa, %16, !dbg !1478
  %cmp273 = icmp eq i32 %rem272, %linemod.2, !dbg !1478
  br i1 %cmp273, label %for.inc281, label %if.then275, !dbg !1478

if.then275:                                       ; preds = %for.end271
  %fputc416 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0), !dbg !1506
  %sub277 = add nsw i32 %acount.4.lcssa, -1, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32* %Rhsperline}, i64 0, metadata !499), !dbg !1480
  %rem278 = srem i32 %sub277, %16, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %rem278}, i64 0, metadata !485), !dbg !1480
  br label %for.inc281, !dbg !1507

for.inc281:                                       ; preds = %for.end271, %if.end247, %if.then275
  %acount.5 = phi i32 [ %acount.4.lcssa, %if.then275 ], [ %acount.4.lcssa, %for.end271 ], [ %acount.3, %if.end247 ]
  %linemod.3 = phi i32 [ %rem278, %if.then275 ], [ %linemod.2, %for.end271 ], [ %linemod.2, %if.end247 ]
  %inc282 = add nsw i32 %j.0453, 1, !dbg !1499
  call void @llvm.dbg.value(metadata !{i32 %inc282}, i64 0, metadata !483), !dbg !1499
  %exitcond470 = icmp eq i32 %inc282, %Nrhs, !dbg !1499
  br i1 %exitcond470, label %if.end285, label %for.cond189.preheader, !dbg !1499

if.end285:                                        ; preds = %for.inc281, %if.end153, %if.end181
  %call286 = call i32 @fclose(%struct._IO_FILE* %out_file.0) #9, !dbg !1508
  %cmp287 = icmp eq i32 %call286, 0, !dbg !1508
  br i1 %cmp287, label %return, label %if.then289, !dbg !1508

if.then289:                                       ; preds = %if.end285
  %32 = load %struct._IO_FILE** @stderr, align 8, !dbg !1509, !tbaa !563
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str60, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %32), !dbg !1509
  br label %return, !dbg !1511

return:                                           ; preds = %if.end285, %if.then289, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then289 ], [ 1, %if.end285 ]
  ret i32 %retval.0, !dbg !1512
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !108, metadata !136, metadata !181, metadata !196, metadata !238, metadata !250, metadata !313, metadata !359, metadata !388, metadata !430, metadata !458, metadata !511, metadata !516, metadata !524, metadata !542}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_info", metadata !"readHB_info", metadata !"", i32 226, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i8**, i32*)* @readHB_info, null, null, metadata !15, i32 228} ; [ DW_TAG_subprogram ] [line 226] [def] [scope 228] [readHB_info]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !12, metadata !12, metadata !12, metadata !13, metadata !12}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !90, metadata !94, metadata !98, metadata !102, metadata !103, metadata !107}
!16 = metadata !{i32 786689, metadata !4, metadata !"filename", metadata !5, i32 16777442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 226]
!17 = metadata !{i32 786689, metadata !4, metadata !"M", metadata !5, i32 33554658, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 226]
!18 = metadata !{i32 786689, metadata !4, metadata !"N", metadata !5, i32 50331874, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 226]
!19 = metadata !{i32 786689, metadata !4, metadata !"nz", metadata !5, i32 67109090, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 226]
!20 = metadata !{i32 786689, metadata !4, metadata !"Type", metadata !5, i32 83886306, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Type] [line 226]
!21 = metadata !{i32 786689, metadata !4, metadata !"Nrhs", metadata !5, i32 100663523, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nrhs] [line 227]
!22 = metadata !{i32 786688, metadata !4, metadata !"in_file", metadata !5, i32 246, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 246]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!25 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!26 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !48, metadata !49, metadata !50, metadata !51, metadata !54, metadata !56, metadata !58, metadata !62, metadata !64, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !74}
!28 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!30 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!37 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!39 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!40 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!42 = metadata !{i32 786451, metadata !26, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !45, metadata !47}
!44 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786445, metadata !26, metadata !42, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!48 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !46} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!49 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!50 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!51 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !52} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!52 = metadata !{i32 786454, metadata !26, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!53 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!54 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !55} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !57} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!57 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!58 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !59} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!59 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !11, metadata !60, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!62 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !63} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !65} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!65 = metadata !{i32 786454, metadata !26, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!66 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!67 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!68 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!69 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!70 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!71 = metadata !{i32 786454, metadata !26, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!72 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!73 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!74 = metadata !{i32 786445, metadata !26, metadata !25, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !75} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !11, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!78 = metadata !{i32 786688, metadata !4, metadata !"Ptrcrd", metadata !5, i32 247, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 247]
!79 = metadata !{i32 786688, metadata !4, metadata !"Indcrd", metadata !5, i32 247, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 247]
!80 = metadata !{i32 786688, metadata !4, metadata !"Valcrd", metadata !5, i32 247, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 247]
!81 = metadata !{i32 786688, metadata !4, metadata !"Rhscrd", metadata !5, i32 247, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 247]
!82 = metadata !{i32 786688, metadata !4, metadata !"Nrow", metadata !5, i32 248, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 248]
!83 = metadata !{i32 786688, metadata !4, metadata !"Ncol", metadata !5, i32 248, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 248]
!84 = metadata !{i32 786688, metadata !4, metadata !"Nnzero", metadata !5, i32 248, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 248]
!85 = metadata !{i32 786688, metadata !4, metadata !"mat_type", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mat_type] [line 249]
!86 = metadata !{i32 786688, metadata !4, metadata !"Title", metadata !5, i32 250, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 250]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 584, i64 8, i32 0, i32 0, metadata !11, metadata !88, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 584, align 8, offset 0] [from char]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 73}       ; [ DW_TAG_subrange_type ] [0, 72]
!90 = metadata !{i32 786688, metadata !4, metadata !"Key", metadata !5, i32 250, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 250]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !92, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from char]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!94 = metadata !{i32 786688, metadata !4, metadata !"Rhstype", metadata !5, i32 250, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 250]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !11, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!98 = metadata !{i32 786688, metadata !4, metadata !"Ptrfmt", metadata !5, i32 251, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 251]
!99 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 136, i64 8, i32 0, i32 0, metadata !11, metadata !100, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 136, align 8, offset 0] [from char]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!102 = metadata !{i32 786688, metadata !4, metadata !"Indfmt", metadata !5, i32 251, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 251]
!103 = metadata !{i32 786688, metadata !4, metadata !"Valfmt", metadata !5, i32 251, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valfmt] [line 251]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 168, i64 8, i32 0, i32 0, metadata !11, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 168, align 8, offset 0] [from char]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!107 = metadata !{i32 786688, metadata !4, metadata !"Rhsfmt", metadata !5, i32 251, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 251]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_header", metadata !"readHB_header", metadata !"", i32 294, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i8*)* @readHB_header, null, null, metadata !111, i32 299} ; [ DW_TAG_subprogram ] [line 294] [def] [scope 299] [readHB_header]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !8, metadata !23, metadata !14, metadata !14, metadata !14, metadata !12, metadata !12, metadata !12, metadata !12, metadata !14, metadata !14, metadata !14, metadata !14, metadata !12, metadata !12, metadata !12, metadata !12, metadata !14}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!112 = metadata !{i32 786689, metadata !108, metadata !"in_file", metadata !5, i32 16777510, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_file] [line 294]
!113 = metadata !{i32 786689, metadata !108, metadata !"Title", metadata !5, i32 33554726, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Title] [line 294]
!114 = metadata !{i32 786689, metadata !108, metadata !"Key", metadata !5, i32 50331942, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Key] [line 294]
!115 = metadata !{i32 786689, metadata !108, metadata !"Type", metadata !5, i32 67109158, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Type] [line 294]
!116 = metadata !{i32 786689, metadata !108, metadata !"Nrow", metadata !5, i32 83886375, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nrow] [line 295]
!117 = metadata !{i32 786689, metadata !108, metadata !"Ncol", metadata !5, i32 100663591, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ncol] [line 295]
!118 = metadata !{i32 786689, metadata !108, metadata !"Nnzero", metadata !5, i32 117440807, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nnzero] [line 295]
!119 = metadata !{i32 786689, metadata !108, metadata !"Nrhs", metadata !5, i32 134218023, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nrhs] [line 295]
!120 = metadata !{i32 786689, metadata !108, metadata !"Ptrfmt", metadata !5, i32 150995240, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptrfmt] [line 296]
!121 = metadata !{i32 786689, metadata !108, metadata !"Indfmt", metadata !5, i32 167772456, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Indfmt] [line 296]
!122 = metadata !{i32 786689, metadata !108, metadata !"Valfmt", metadata !5, i32 184549672, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valfmt] [line 296]
!123 = metadata !{i32 786689, metadata !108, metadata !"Rhsfmt", metadata !5, i32 201326888, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhsfmt] [line 296]
!124 = metadata !{i32 786689, metadata !108, metadata !"Ptrcrd", metadata !5, i32 218104105, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptrcrd] [line 297]
!125 = metadata !{i32 786689, metadata !108, metadata !"Indcrd", metadata !5, i32 234881321, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Indcrd] [line 297]
!126 = metadata !{i32 786689, metadata !108, metadata !"Valcrd", metadata !5, i32 251658537, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valcrd] [line 297]
!127 = metadata !{i32 786689, metadata !108, metadata !"Rhscrd", metadata !5, i32 268435753, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhscrd] [line 297]
!128 = metadata !{i32 786689, metadata !108, metadata !"Rhstype", metadata !5, i32 285212970, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhstype] [line 298]
!129 = metadata !{i32 786688, metadata !108, metadata !"Totcrd", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Totcrd] [line 303]
!130 = metadata !{i32 786688, metadata !108, metadata !"Neltvl", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Neltvl] [line 303]
!131 = metadata !{i32 786688, metadata !108, metadata !"Nrhsix", metadata !5, i32 303, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhsix] [line 303]
!132 = metadata !{i32 786688, metadata !108, metadata !"line", metadata !5, i32 304, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 304]
!133 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !11, metadata !134, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_mat_double", metadata !"readHB_mat_double", metadata !"", i32 367, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, double*)* @readHB_mat_double, null, null, metadata !141, i32 369} ; [ DW_TAG_subprogram ] [line 367] [def] [scope 369] [readHB_mat_double]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !8, metadata !9, metadata !12, metadata !12, metadata !139}
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!140 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180}
!142 = metadata !{i32 786689, metadata !136, metadata !"filename", metadata !5, i32 16777583, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 367]
!143 = metadata !{i32 786689, metadata !136, metadata !"colptr", metadata !5, i32 33554799, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 367]
!144 = metadata !{i32 786689, metadata !136, metadata !"rowind", metadata !5, i32 50332015, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 367]
!145 = metadata !{i32 786689, metadata !136, metadata !"val", metadata !5, i32 67109232, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 368]
!146 = metadata !{i32 786688, metadata !136, metadata !"in_file", metadata !5, i32 388, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 388]
!147 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 389]
!148 = metadata !{i32 786688, metadata !136, metadata !"j", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 389]
!149 = metadata !{i32 786688, metadata !136, metadata !"ind", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind] [line 389]
!150 = metadata !{i32 786688, metadata !136, metadata !"col", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 389]
!151 = metadata !{i32 786688, metadata !136, metadata !"offset", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 389]
!152 = metadata !{i32 786688, metadata !136, metadata !"count", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 389]
!153 = metadata !{i32 786688, metadata !136, metadata !"last", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 389]
!154 = metadata !{i32 786688, metadata !136, metadata !"Nrhs", metadata !5, i32 389, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 389]
!155 = metadata !{i32 786688, metadata !136, metadata !"Ptrcrd", metadata !5, i32 390, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 390]
!156 = metadata !{i32 786688, metadata !136, metadata !"Indcrd", metadata !5, i32 390, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 390]
!157 = metadata !{i32 786688, metadata !136, metadata !"Valcrd", metadata !5, i32 390, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 390]
!158 = metadata !{i32 786688, metadata !136, metadata !"Rhscrd", metadata !5, i32 390, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 390]
!159 = metadata !{i32 786688, metadata !136, metadata !"Nrow", metadata !5, i32 391, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 391]
!160 = metadata !{i32 786688, metadata !136, metadata !"Ncol", metadata !5, i32 391, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 391]
!161 = metadata !{i32 786688, metadata !136, metadata !"Nnzero", metadata !5, i32 391, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 391]
!162 = metadata !{i32 786688, metadata !136, metadata !"Nentries", metadata !5, i32 391, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nentries] [line 391]
!163 = metadata !{i32 786688, metadata !136, metadata !"Ptrperline", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrperline] [line 392]
!164 = metadata !{i32 786688, metadata !136, metadata !"Ptrwidth", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrwidth] [line 392]
!165 = metadata !{i32 786688, metadata !136, metadata !"Indperline", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indperline] [line 392]
!166 = metadata !{i32 786688, metadata !136, metadata !"Indwidth", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indwidth] [line 392]
!167 = metadata !{i32 786688, metadata !136, metadata !"Valperline", metadata !5, i32 393, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valperline] [line 393]
!168 = metadata !{i32 786688, metadata !136, metadata !"Valwidth", metadata !5, i32 393, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valwidth] [line 393]
!169 = metadata !{i32 786688, metadata !136, metadata !"Valprec", metadata !5, i32 393, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valprec] [line 393]
!170 = metadata !{i32 786688, metadata !136, metadata !"Valflag", metadata !5, i32 394, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valflag] [line 394]
!171 = metadata !{i32 786688, metadata !136, metadata !"ThisElement", metadata !5, i32 395, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ThisElement] [line 395]
!172 = metadata !{i32 786688, metadata !136, metadata !"Title", metadata !5, i32 400, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 400]
!173 = metadata !{i32 786688, metadata !136, metadata !"Key", metadata !5, i32 401, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 401]
!174 = metadata !{i32 786688, metadata !136, metadata !"Type", metadata !5, i32 402, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 402]
!175 = metadata !{i32 786688, metadata !136, metadata !"Rhstype", metadata !5, i32 403, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 403]
!176 = metadata !{i32 786688, metadata !136, metadata !"Ptrfmt", metadata !5, i32 404, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 404]
!177 = metadata !{i32 786688, metadata !136, metadata !"Indfmt", metadata !5, i32 405, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 405]
!178 = metadata !{i32 786688, metadata !136, metadata !"Valfmt", metadata !5, i32 406, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valfmt] [line 406]
!179 = metadata !{i32 786688, metadata !136, metadata !"Rhsfmt", metadata !5, i32 407, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 407]
!180 = metadata !{i32 786688, metadata !136, metadata !"line", metadata !5, i32 409, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 409]
!181 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_newmat_double", metadata !"readHB_newmat_double", metadata !"", i32 560, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i32**, i32**, double**)* @readHB_newmat_double, null, null, metadata !186, i32 562} ; [ DW_TAG_subprogram ] [line 560] [def] [scope 562] [readHB_newmat_double]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{metadata !8, metadata !9, metadata !12, metadata !12, metadata !12, metadata !184, metadata !184, metadata !185}
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!186 = metadata !{metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195}
!187 = metadata !{i32 786689, metadata !181, metadata !"filename", metadata !5, i32 16777776, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 560]
!188 = metadata !{i32 786689, metadata !181, metadata !"M", metadata !5, i32 33554992, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 560]
!189 = metadata !{i32 786689, metadata !181, metadata !"N", metadata !5, i32 50332208, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 560]
!190 = metadata !{i32 786689, metadata !181, metadata !"nonzeros", metadata !5, i32 67109424, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nonzeros] [line 560]
!191 = metadata !{i32 786689, metadata !181, metadata !"colptr", metadata !5, i32 83886641, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 561]
!192 = metadata !{i32 786689, metadata !181, metadata !"rowind", metadata !5, i32 100663857, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 561]
!193 = metadata !{i32 786689, metadata !181, metadata !"val", metadata !5, i32 117441073, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 561]
!194 = metadata !{i32 786688, metadata !181, metadata !"Nrhs", metadata !5, i32 563, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 563]
!195 = metadata !{i32 786688, metadata !181, metadata !"Type", metadata !5, i32 564, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 564]
!196 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_aux_double", metadata !"readHB_aux_double", metadata !"", i32 591, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8, double*)* @readHB_aux_double, null, null, metadata !199, i32 592} ; [ DW_TAG_subprogram ] [line 591] [def] [scope 592] [readHB_aux_double]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{metadata !8, metadata !9, metadata !10, metadata !139}
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!200 = metadata !{i32 786689, metadata !196, metadata !"filename", metadata !5, i32 16777807, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 591]
!201 = metadata !{i32 786689, metadata !196, metadata !"AuxType", metadata !5, i32 33555023, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AuxType] [line 591]
!202 = metadata !{i32 786689, metadata !196, metadata !"b", metadata !5, i32 50332239, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 591]
!203 = metadata !{i32 786688, metadata !196, metadata !"in_file", metadata !5, i32 614, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 614]
!204 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 615]
!205 = metadata !{i32 786688, metadata !196, metadata !"j", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 615]
!206 = metadata !{i32 786688, metadata !196, metadata !"n", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 615]
!207 = metadata !{i32 786688, metadata !196, metadata !"maxcol", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxcol] [line 615]
!208 = metadata !{i32 786688, metadata !196, metadata !"start", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 615]
!209 = metadata !{i32 786688, metadata !196, metadata !"stride", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 615]
!210 = metadata !{i32 786688, metadata !196, metadata !"col", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 615]
!211 = metadata !{i32 786688, metadata !196, metadata !"last", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 615]
!212 = metadata !{i32 786688, metadata !196, metadata !"linel", metadata !5, i32 615, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linel] [line 615]
!213 = metadata !{i32 786688, metadata !196, metadata !"Ptrcrd", metadata !5, i32 616, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 616]
!214 = metadata !{i32 786688, metadata !196, metadata !"Indcrd", metadata !5, i32 616, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 616]
!215 = metadata !{i32 786688, metadata !196, metadata !"Valcrd", metadata !5, i32 616, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 616]
!216 = metadata !{i32 786688, metadata !196, metadata !"Rhscrd", metadata !5, i32 616, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 616]
!217 = metadata !{i32 786688, metadata !196, metadata !"Nrow", metadata !5, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 617]
!218 = metadata !{i32 786688, metadata !196, metadata !"Ncol", metadata !5, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 617]
!219 = metadata !{i32 786688, metadata !196, metadata !"Nnzero", metadata !5, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 617]
!220 = metadata !{i32 786688, metadata !196, metadata !"Nentries", metadata !5, i32 617, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nentries] [line 617]
!221 = metadata !{i32 786688, metadata !196, metadata !"Nrhs", metadata !5, i32 618, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 618]
!222 = metadata !{i32 786688, metadata !196, metadata !"nvecs", metadata !5, i32 618, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvecs] [line 618]
!223 = metadata !{i32 786688, metadata !196, metadata !"rhsi", metadata !5, i32 618, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rhsi] [line 618]
!224 = metadata !{i32 786688, metadata !196, metadata !"Rhsperline", metadata !5, i32 619, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsperline] [line 619]
!225 = metadata !{i32 786688, metadata !196, metadata !"Rhswidth", metadata !5, i32 619, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhswidth] [line 619]
!226 = metadata !{i32 786688, metadata !196, metadata !"Rhsprec", metadata !5, i32 619, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsprec] [line 619]
!227 = metadata !{i32 786688, metadata !196, metadata !"Rhsflag", metadata !5, i32 620, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsflag] [line 620]
!228 = metadata !{i32 786688, metadata !196, metadata !"ThisElement", metadata !5, i32 621, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ThisElement] [line 621]
!229 = metadata !{i32 786688, metadata !196, metadata !"Title", metadata !5, i32 622, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 622]
!230 = metadata !{i32 786688, metadata !196, metadata !"Key", metadata !5, i32 622, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 622]
!231 = metadata !{i32 786688, metadata !196, metadata !"Type", metadata !5, i32 622, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 622]
!232 = metadata !{i32 786688, metadata !196, metadata !"Rhstype", metadata !5, i32 622, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 622]
!233 = metadata !{i32 786688, metadata !196, metadata !"Ptrfmt", metadata !5, i32 623, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 623]
!234 = metadata !{i32 786688, metadata !196, metadata !"Indfmt", metadata !5, i32 623, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 623]
!235 = metadata !{i32 786688, metadata !196, metadata !"Valfmt", metadata !5, i32 623, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valfmt] [line 623]
!236 = metadata !{i32 786688, metadata !196, metadata !"Rhsfmt", metadata !5, i32 623, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 623]
!237 = metadata !{i32 786688, metadata !196, metadata !"line", metadata !5, i32 624, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 624]
!238 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_newaux_double", metadata !"readHB_newaux_double", metadata !"", i32 756, metadata !239, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8, double**)* @readHB_newaux_double, null, null, metadata !241, i32 757} ; [ DW_TAG_subprogram ] [line 756] [def] [scope 757] [readHB_newaux_double]
!239 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{metadata !8, metadata !9, metadata !10, metadata !185}
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249}
!242 = metadata !{i32 786689, metadata !238, metadata !"filename", metadata !5, i32 16777972, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 756]
!243 = metadata !{i32 786689, metadata !238, metadata !"AuxType", metadata !5, i32 33555188, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AuxType] [line 756]
!244 = metadata !{i32 786689, metadata !238, metadata !"b", metadata !5, i32 50332404, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 756]
!245 = metadata !{i32 786688, metadata !238, metadata !"Nrhs", metadata !5, i32 758, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 758]
!246 = metadata !{i32 786688, metadata !238, metadata !"M", metadata !5, i32 758, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 758]
!247 = metadata !{i32 786688, metadata !238, metadata !"N", metadata !5, i32 758, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 758]
!248 = metadata !{i32 786688, metadata !238, metadata !"nonzeros", metadata !5, i32 758, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nonzeros] [line 758]
!249 = metadata !{i32 786688, metadata !238, metadata !"Type", metadata !5, i32 759, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 759]
!250 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"writeHB_mat_double", metadata !"writeHB_mat_double", metadata !"", i32 780, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32, i32, i32*, i32*, double*, i32, double*, double*, double*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @writeHB_mat_double, null, null, metadata !257, i32 787} ; [ DW_TAG_subprogram ] [line 780] [def] [scope 787] [writeHB_mat_double]
!251 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !8, metadata !253, metadata !253, metadata !255, metadata !8, metadata !255, metadata !255, metadata !255, metadata !9, metadata !9, metadata !9, metadata !14, metadata !14, metadata !14, metadata !14, metadata !9}
!253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!254 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!256 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !307, metadata !308, metadata !312}
!258 = metadata !{i32 786689, metadata !250, metadata !"filename", metadata !5, i32 16777996, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 780]
!259 = metadata !{i32 786689, metadata !250, metadata !"M", metadata !5, i32 33555212, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 780]
!260 = metadata !{i32 786689, metadata !250, metadata !"N", metadata !5, i32 50332428, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 780]
!261 = metadata !{i32 786689, metadata !250, metadata !"nz", metadata !5, i32 67109645, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 781]
!262 = metadata !{i32 786689, metadata !250, metadata !"colptr", metadata !5, i32 83886861, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 781]
!263 = metadata !{i32 786689, metadata !250, metadata !"rowind", metadata !5, i32 100664077, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 781]
!264 = metadata !{i32 786689, metadata !250, metadata !"val", metadata !5, i32 117441294, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 782]
!265 = metadata !{i32 786689, metadata !250, metadata !"Nrhs", metadata !5, i32 134218510, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nrhs] [line 782]
!266 = metadata !{i32 786689, metadata !250, metadata !"rhs", metadata !5, i32 150995726, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhs] [line 782]
!267 = metadata !{i32 786689, metadata !250, metadata !"guess", metadata !5, i32 167772943, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [guess] [line 783]
!268 = metadata !{i32 786689, metadata !250, metadata !"exact", metadata !5, i32 184550159, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [exact] [line 783]
!269 = metadata !{i32 786689, metadata !250, metadata !"Title", metadata !5, i32 201327376, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Title] [line 784]
!270 = metadata !{i32 786689, metadata !250, metadata !"Key", metadata !5, i32 218104592, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Key] [line 784]
!271 = metadata !{i32 786689, metadata !250, metadata !"Type", metadata !5, i32 234881808, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Type] [line 784]
!272 = metadata !{i32 786689, metadata !250, metadata !"Ptrfmt", metadata !5, i32 251659025, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptrfmt] [line 785]
!273 = metadata !{i32 786689, metadata !250, metadata !"Indfmt", metadata !5, i32 268436241, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Indfmt] [line 785]
!274 = metadata !{i32 786689, metadata !250, metadata !"Valfmt", metadata !5, i32 285213457, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valfmt] [line 785]
!275 = metadata !{i32 786689, metadata !250, metadata !"Rhsfmt", metadata !5, i32 301990673, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhsfmt] [line 785]
!276 = metadata !{i32 786689, metadata !250, metadata !"Rhstype", metadata !5, i32 318767890, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhstype] [line 786]
!277 = metadata !{i32 786688, metadata !250, metadata !"out_file", metadata !5, i32 797, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_file] [line 797]
!278 = metadata !{i32 786688, metadata !250, metadata !"i", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 798]
!279 = metadata !{i32 786688, metadata !250, metadata !"j", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 798]
!280 = metadata !{i32 786688, metadata !250, metadata !"entry", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 798]
!281 = metadata !{i32 786688, metadata !250, metadata !"offset", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 798]
!282 = metadata !{i32 786688, metadata !250, metadata !"acount", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acount] [line 798]
!283 = metadata !{i32 786688, metadata !250, metadata !"linemod", metadata !5, i32 798, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linemod] [line 798]
!284 = metadata !{i32 786688, metadata !250, metadata !"totcrd", metadata !5, i32 799, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totcrd] [line 799]
!285 = metadata !{i32 786688, metadata !250, metadata !"ptrcrd", metadata !5, i32 799, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptrcrd] [line 799]
!286 = metadata !{i32 786688, metadata !250, metadata !"indcrd", metadata !5, i32 799, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indcrd] [line 799]
!287 = metadata !{i32 786688, metadata !250, metadata !"valcrd", metadata !5, i32 799, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valcrd] [line 799]
!288 = metadata !{i32 786688, metadata !250, metadata !"rhscrd", metadata !5, i32 799, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rhscrd] [line 799]
!289 = metadata !{i32 786688, metadata !250, metadata !"nvalentries", metadata !5, i32 800, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvalentries] [line 800]
!290 = metadata !{i32 786688, metadata !250, metadata !"nrhsentries", metadata !5, i32 800, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrhsentries] [line 800]
!291 = metadata !{i32 786688, metadata !250, metadata !"Ptrperline", metadata !5, i32 801, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrperline] [line 801]
!292 = metadata !{i32 786688, metadata !250, metadata !"Ptrwidth", metadata !5, i32 801, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrwidth] [line 801]
!293 = metadata !{i32 786688, metadata !250, metadata !"Indperline", metadata !5, i32 801, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indperline] [line 801]
!294 = metadata !{i32 786688, metadata !250, metadata !"Indwidth", metadata !5, i32 801, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indwidth] [line 801]
!295 = metadata !{i32 786688, metadata !250, metadata !"Rhsperline", metadata !5, i32 802, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsperline] [line 802]
!296 = metadata !{i32 786688, metadata !250, metadata !"Rhswidth", metadata !5, i32 802, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhswidth] [line 802]
!297 = metadata !{i32 786688, metadata !250, metadata !"Rhsprec", metadata !5, i32 802, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsprec] [line 802]
!298 = metadata !{i32 786688, metadata !250, metadata !"Rhsflag", metadata !5, i32 803, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsflag] [line 803]
!299 = metadata !{i32 786688, metadata !250, metadata !"Valperline", metadata !5, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valperline] [line 804]
!300 = metadata !{i32 786688, metadata !250, metadata !"Valwidth", metadata !5, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valwidth] [line 804]
!301 = metadata !{i32 786688, metadata !250, metadata !"Valprec", metadata !5, i32 804, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valprec] [line 804]
!302 = metadata !{i32 786688, metadata !250, metadata !"Valflag", metadata !5, i32 805, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valflag] [line 805]
!303 = metadata !{i32 786688, metadata !250, metadata !"pformat", metadata !5, i32 806, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pformat] [line 806]
!304 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !11, metadata !305, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!305 = metadata !{metadata !306}
!306 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!307 = metadata !{i32 786688, metadata !250, metadata !"iformat", metadata !5, i32 806, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iformat] [line 806]
!308 = metadata !{i32 786688, metadata !250, metadata !"vformat", metadata !5, i32 806, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vformat] [line 806]
!309 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 152, i64 8, i32 0, i32 0, metadata !11, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 152, align 8, offset 0] [from char]
!310 = metadata !{metadata !311}
!311 = metadata !{i32 786465, i64 0, i64 19}      ; [ DW_TAG_subrange_type ] [0, 18]
!312 = metadata !{i32 786688, metadata !250, metadata !"rformat", metadata !5, i32 806, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rformat] [line 806]
!313 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_mat_char", metadata !"readHB_mat_char", metadata !"", i32 962, metadata !314, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i8*, i8*)* @readHB_mat_char, null, null, metadata !316, i32 964} ; [ DW_TAG_subprogram ] [line 962] [def] [scope 964] [readHB_mat_char]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{metadata !8, metadata !9, metadata !12, metadata !12, metadata !14, metadata !14}
!316 = metadata !{metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358}
!317 = metadata !{i32 786689, metadata !313, metadata !"filename", metadata !5, i32 16778178, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 962]
!318 = metadata !{i32 786689, metadata !313, metadata !"colptr", metadata !5, i32 33555394, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 962]
!319 = metadata !{i32 786689, metadata !313, metadata !"rowind", metadata !5, i32 50332610, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 962]
!320 = metadata !{i32 786689, metadata !313, metadata !"val", metadata !5, i32 67109827, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 963]
!321 = metadata !{i32 786689, metadata !313, metadata !"Valfmt", metadata !5, i32 83887043, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valfmt] [line 963]
!322 = metadata !{i32 786688, metadata !313, metadata !"in_file", metadata !5, i32 983, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 983]
!323 = metadata !{i32 786688, metadata !313, metadata !"i", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 984]
!324 = metadata !{i32 786688, metadata !313, metadata !"j", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 984]
!325 = metadata !{i32 786688, metadata !313, metadata !"ind", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ind] [line 984]
!326 = metadata !{i32 786688, metadata !313, metadata !"col", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 984]
!327 = metadata !{i32 786688, metadata !313, metadata !"offset", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 984]
!328 = metadata !{i32 786688, metadata !313, metadata !"count", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 984]
!329 = metadata !{i32 786688, metadata !313, metadata !"last", metadata !5, i32 984, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 984]
!330 = metadata !{i32 786688, metadata !313, metadata !"Nrow", metadata !5, i32 985, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 985]
!331 = metadata !{i32 786688, metadata !313, metadata !"Ncol", metadata !5, i32 985, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 985]
!332 = metadata !{i32 786688, metadata !313, metadata !"Nnzero", metadata !5, i32 985, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 985]
!333 = metadata !{i32 786688, metadata !313, metadata !"Nentries", metadata !5, i32 985, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nentries] [line 985]
!334 = metadata !{i32 786688, metadata !313, metadata !"Nrhs", metadata !5, i32 985, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 985]
!335 = metadata !{i32 786688, metadata !313, metadata !"Ptrcrd", metadata !5, i32 986, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 986]
!336 = metadata !{i32 786688, metadata !313, metadata !"Indcrd", metadata !5, i32 986, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 986]
!337 = metadata !{i32 786688, metadata !313, metadata !"Valcrd", metadata !5, i32 986, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 986]
!338 = metadata !{i32 786688, metadata !313, metadata !"Rhscrd", metadata !5, i32 986, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 986]
!339 = metadata !{i32 786688, metadata !313, metadata !"Ptrperline", metadata !5, i32 987, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrperline] [line 987]
!340 = metadata !{i32 786688, metadata !313, metadata !"Ptrwidth", metadata !5, i32 987, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrwidth] [line 987]
!341 = metadata !{i32 786688, metadata !313, metadata !"Indperline", metadata !5, i32 987, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indperline] [line 987]
!342 = metadata !{i32 786688, metadata !313, metadata !"Indwidth", metadata !5, i32 987, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indwidth] [line 987]
!343 = metadata !{i32 786688, metadata !313, metadata !"Valperline", metadata !5, i32 988, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valperline] [line 988]
!344 = metadata !{i32 786688, metadata !313, metadata !"Valwidth", metadata !5, i32 988, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valwidth] [line 988]
!345 = metadata !{i32 786688, metadata !313, metadata !"Valprec", metadata !5, i32 988, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valprec] [line 988]
!346 = metadata !{i32 786688, metadata !313, metadata !"Valflag", metadata !5, i32 989, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valflag] [line 989]
!347 = metadata !{i32 786688, metadata !313, metadata !"ThisElement", metadata !5, i32 990, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ThisElement] [line 990]
!348 = metadata !{i32 786688, metadata !313, metadata !"line", metadata !5, i32 991, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 991]
!349 = metadata !{i32 786688, metadata !313, metadata !"Title", metadata !5, i32 992, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 992]
!350 = metadata !{i32 786688, metadata !313, metadata !"Key", metadata !5, i32 992, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 992]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !11, metadata !352, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!352 = metadata !{metadata !353}
!353 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!354 = metadata !{i32 786688, metadata !313, metadata !"Type", metadata !5, i32 992, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 992]
!355 = metadata !{i32 786688, metadata !313, metadata !"Rhstype", metadata !5, i32 992, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 992]
!356 = metadata !{i32 786688, metadata !313, metadata !"Ptrfmt", metadata !5, i32 993, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 993]
!357 = metadata !{i32 786688, metadata !313, metadata !"Indfmt", metadata !5, i32 993, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 993]
!358 = metadata !{i32 786688, metadata !313, metadata !"Rhsfmt", metadata !5, i32 993, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 993]
!359 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_newmat_char", metadata !"readHB_newmat_char", metadata !"", i32 1108, metadata !360, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i32*, i32*, i32**, i32**, i8**, i8**)* @readHB_newmat_char, null, null, metadata !362, i32 1110} ; [ DW_TAG_subprogram ] [line 1108] [def] [scope 1110] [readHB_newmat_char]
!360 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!361 = metadata !{metadata !8, metadata !9, metadata !12, metadata !12, metadata !12, metadata !184, metadata !184, metadata !13, metadata !13}
!362 = metadata !{metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387}
!363 = metadata !{i32 786689, metadata !359, metadata !"filename", metadata !5, i32 16778324, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 1108]
!364 = metadata !{i32 786689, metadata !359, metadata !"M", metadata !5, i32 33555540, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 1108]
!365 = metadata !{i32 786689, metadata !359, metadata !"N", metadata !5, i32 50332756, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 1108]
!366 = metadata !{i32 786689, metadata !359, metadata !"nonzeros", metadata !5, i32 67109972, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nonzeros] [line 1108]
!367 = metadata !{i32 786689, metadata !359, metadata !"colptr", metadata !5, i32 83887188, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 1108]
!368 = metadata !{i32 786689, metadata !359, metadata !"rowind", metadata !5, i32 100664405, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 1109]
!369 = metadata !{i32 786689, metadata !359, metadata !"val", metadata !5, i32 117441621, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 1109]
!370 = metadata !{i32 786689, metadata !359, metadata !"Valfmt", metadata !5, i32 134218837, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valfmt] [line 1109]
!371 = metadata !{i32 786688, metadata !359, metadata !"in_file", metadata !5, i32 1111, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 1111]
!372 = metadata !{i32 786688, metadata !359, metadata !"Nrhs", metadata !5, i32 1112, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 1112]
!373 = metadata !{i32 786688, metadata !359, metadata !"Ptrcrd", metadata !5, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 1113]
!374 = metadata !{i32 786688, metadata !359, metadata !"Indcrd", metadata !5, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 1113]
!375 = metadata !{i32 786688, metadata !359, metadata !"Valcrd", metadata !5, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 1113]
!376 = metadata !{i32 786688, metadata !359, metadata !"Rhscrd", metadata !5, i32 1113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 1113]
!377 = metadata !{i32 786688, metadata !359, metadata !"Valperline", metadata !5, i32 1114, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valperline] [line 1114]
!378 = metadata !{i32 786688, metadata !359, metadata !"Valwidth", metadata !5, i32 1114, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valwidth] [line 1114]
!379 = metadata !{i32 786688, metadata !359, metadata !"Valprec", metadata !5, i32 1114, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valprec] [line 1114]
!380 = metadata !{i32 786688, metadata !359, metadata !"Valflag", metadata !5, i32 1115, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valflag] [line 1115]
!381 = metadata !{i32 786688, metadata !359, metadata !"Title", metadata !5, i32 1116, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 1116]
!382 = metadata !{i32 786688, metadata !359, metadata !"Key", metadata !5, i32 1116, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 1116]
!383 = metadata !{i32 786688, metadata !359, metadata !"Type", metadata !5, i32 1116, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 1116]
!384 = metadata !{i32 786688, metadata !359, metadata !"Rhstype", metadata !5, i32 1116, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 1116]
!385 = metadata !{i32 786688, metadata !359, metadata !"Ptrfmt", metadata !5, i32 1117, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 1117]
!386 = metadata !{i32 786688, metadata !359, metadata !"Indfmt", metadata !5, i32 1117, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 1117]
!387 = metadata !{i32 786688, metadata !359, metadata !"Rhsfmt", metadata !5, i32 1117, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 1117]
!388 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_aux_char", metadata !"readHB_aux_char", metadata !"", i32 1155, metadata !389, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8, i8*)* @readHB_aux_char, null, null, metadata !391, i32 1156} ; [ DW_TAG_subprogram ] [line 1155] [def] [scope 1156] [readHB_aux_char]
!389 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!390 = metadata !{metadata !8, metadata !9, metadata !10, metadata !14}
!391 = metadata !{metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429}
!392 = metadata !{i32 786689, metadata !388, metadata !"filename", metadata !5, i32 16778371, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 1155]
!393 = metadata !{i32 786689, metadata !388, metadata !"AuxType", metadata !5, i32 33555587, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AuxType] [line 1155]
!394 = metadata !{i32 786689, metadata !388, metadata !"b", metadata !5, i32 50332803, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1155]
!395 = metadata !{i32 786688, metadata !388, metadata !"in_file", metadata !5, i32 1178, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 1178]
!396 = metadata !{i32 786688, metadata !388, metadata !"i", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1179]
!397 = metadata !{i32 786688, metadata !388, metadata !"j", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1179]
!398 = metadata !{i32 786688, metadata !388, metadata !"n", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1179]
!399 = metadata !{i32 786688, metadata !388, metadata !"maxcol", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxcol] [line 1179]
!400 = metadata !{i32 786688, metadata !388, metadata !"start", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 1179]
!401 = metadata !{i32 786688, metadata !388, metadata !"stride", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stride] [line 1179]
!402 = metadata !{i32 786688, metadata !388, metadata !"col", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 1179]
!403 = metadata !{i32 786688, metadata !388, metadata !"last", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1179]
!404 = metadata !{i32 786688, metadata !388, metadata !"linel", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linel] [line 1179]
!405 = metadata !{i32 786688, metadata !388, metadata !"nvecs", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvecs] [line 1179]
!406 = metadata !{i32 786688, metadata !388, metadata !"rhsi", metadata !5, i32 1179, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rhsi] [line 1179]
!407 = metadata !{i32 786688, metadata !388, metadata !"Nrow", metadata !5, i32 1180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 1180]
!408 = metadata !{i32 786688, metadata !388, metadata !"Ncol", metadata !5, i32 1180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 1180]
!409 = metadata !{i32 786688, metadata !388, metadata !"Nnzero", metadata !5, i32 1180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 1180]
!410 = metadata !{i32 786688, metadata !388, metadata !"Nentries", metadata !5, i32 1180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nentries] [line 1180]
!411 = metadata !{i32 786688, metadata !388, metadata !"Nrhs", metadata !5, i32 1180, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 1180]
!412 = metadata !{i32 786688, metadata !388, metadata !"Ptrcrd", metadata !5, i32 1181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 1181]
!413 = metadata !{i32 786688, metadata !388, metadata !"Indcrd", metadata !5, i32 1181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 1181]
!414 = metadata !{i32 786688, metadata !388, metadata !"Valcrd", metadata !5, i32 1181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 1181]
!415 = metadata !{i32 786688, metadata !388, metadata !"Rhscrd", metadata !5, i32 1181, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 1181]
!416 = metadata !{i32 786688, metadata !388, metadata !"Rhsperline", metadata !5, i32 1182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsperline] [line 1182]
!417 = metadata !{i32 786688, metadata !388, metadata !"Rhswidth", metadata !5, i32 1182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhswidth] [line 1182]
!418 = metadata !{i32 786688, metadata !388, metadata !"Rhsprec", metadata !5, i32 1182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsprec] [line 1182]
!419 = metadata !{i32 786688, metadata !388, metadata !"Rhsflag", metadata !5, i32 1183, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsflag] [line 1183]
!420 = metadata !{i32 786688, metadata !388, metadata !"Title", metadata !5, i32 1184, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 1184]
!421 = metadata !{i32 786688, metadata !388, metadata !"Key", metadata !5, i32 1184, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 1184]
!422 = metadata !{i32 786688, metadata !388, metadata !"Type", metadata !5, i32 1184, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 1184]
!423 = metadata !{i32 786688, metadata !388, metadata !"Rhstype", metadata !5, i32 1184, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 1184]
!424 = metadata !{i32 786688, metadata !388, metadata !"Ptrfmt", metadata !5, i32 1185, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 1185]
!425 = metadata !{i32 786688, metadata !388, metadata !"Indfmt", metadata !5, i32 1185, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 1185]
!426 = metadata !{i32 786688, metadata !388, metadata !"Valfmt", metadata !5, i32 1185, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valfmt] [line 1185]
!427 = metadata !{i32 786688, metadata !388, metadata !"Rhsfmt", metadata !5, i32 1185, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsfmt] [line 1185]
!428 = metadata !{i32 786688, metadata !388, metadata !"line", metadata !5, i32 1186, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1186]
!429 = metadata !{i32 786688, metadata !388, metadata !"ThisElement", metadata !5, i32 1187, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ThisElement] [line 1187]
!430 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"readHB_newaux_char", metadata !"readHB_newaux_char", metadata !"", i32 1323, metadata !431, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8, i8**, i8**)* @readHB_newaux_char, null, null, metadata !433, i32 1324} ; [ DW_TAG_subprogram ] [line 1323] [def] [scope 1324] [readHB_newaux_char]
!431 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!432 = metadata !{metadata !8, metadata !9, metadata !10, metadata !13, metadata !13}
!433 = metadata !{metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457}
!434 = metadata !{i32 786689, metadata !430, metadata !"filename", metadata !5, i32 16778539, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 1323]
!435 = metadata !{i32 786689, metadata !430, metadata !"AuxType", metadata !5, i32 33555755, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AuxType] [line 1323]
!436 = metadata !{i32 786689, metadata !430, metadata !"b", metadata !5, i32 50332971, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1323]
!437 = metadata !{i32 786689, metadata !430, metadata !"Rhsfmt", metadata !5, i32 67110187, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhsfmt] [line 1323]
!438 = metadata !{i32 786688, metadata !430, metadata !"in_file", metadata !5, i32 1325, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_file] [line 1325]
!439 = metadata !{i32 786688, metadata !430, metadata !"Ptrcrd", metadata !5, i32 1326, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrcrd] [line 1326]
!440 = metadata !{i32 786688, metadata !430, metadata !"Indcrd", metadata !5, i32 1326, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indcrd] [line 1326]
!441 = metadata !{i32 786688, metadata !430, metadata !"Valcrd", metadata !5, i32 1326, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valcrd] [line 1326]
!442 = metadata !{i32 786688, metadata !430, metadata !"Rhscrd", metadata !5, i32 1326, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhscrd] [line 1326]
!443 = metadata !{i32 786688, metadata !430, metadata !"Nrow", metadata !5, i32 1327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrow] [line 1327]
!444 = metadata !{i32 786688, metadata !430, metadata !"Ncol", metadata !5, i32 1327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ncol] [line 1327]
!445 = metadata !{i32 786688, metadata !430, metadata !"Nnzero", metadata !5, i32 1327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nnzero] [line 1327]
!446 = metadata !{i32 786688, metadata !430, metadata !"Nrhs", metadata !5, i32 1327, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Nrhs] [line 1327]
!447 = metadata !{i32 786688, metadata !430, metadata !"Rhsperline", metadata !5, i32 1328, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsperline] [line 1328]
!448 = metadata !{i32 786688, metadata !430, metadata !"Rhswidth", metadata !5, i32 1328, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhswidth] [line 1328]
!449 = metadata !{i32 786688, metadata !430, metadata !"Rhsprec", metadata !5, i32 1328, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsprec] [line 1328]
!450 = metadata !{i32 786688, metadata !430, metadata !"Rhsflag", metadata !5, i32 1329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsflag] [line 1329]
!451 = metadata !{i32 786688, metadata !430, metadata !"Title", metadata !5, i32 1330, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Title] [line 1330]
!452 = metadata !{i32 786688, metadata !430, metadata !"Key", metadata !5, i32 1330, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Key] [line 1330]
!453 = metadata !{i32 786688, metadata !430, metadata !"Type", metadata !5, i32 1330, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Type] [line 1330]
!454 = metadata !{i32 786688, metadata !430, metadata !"Rhstype", metadata !5, i32 1330, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhstype] [line 1330]
!455 = metadata !{i32 786688, metadata !430, metadata !"Ptrfmt", metadata !5, i32 1331, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrfmt] [line 1331]
!456 = metadata !{i32 786688, metadata !430, metadata !"Indfmt", metadata !5, i32 1331, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indfmt] [line 1331]
!457 = metadata !{i32 786688, metadata !430, metadata !"Valfmt", metadata !5, i32 1331, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valfmt] [line 1331]
!458 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"writeHB_mat_char", metadata !"writeHB_mat_char", metadata !"", i32 1363, metadata !459, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32, i32, i32*, i32*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @writeHB_mat_char, null, null, metadata !461, i32 1370} ; [ DW_TAG_subprogram ] [line 1363] [def] [scope 1370] [writeHB_mat_char]
!459 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !8, metadata !253, metadata !253, metadata !9, metadata !8, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9, metadata !14, metadata !14, metadata !14, metadata !14, metadata !9}
!461 = metadata !{metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510}
!462 = metadata !{i32 786689, metadata !458, metadata !"filename", metadata !5, i32 16778579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 1363]
!463 = metadata !{i32 786689, metadata !458, metadata !"M", metadata !5, i32 33555795, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 1363]
!464 = metadata !{i32 786689, metadata !458, metadata !"N", metadata !5, i32 50333011, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 1363]
!465 = metadata !{i32 786689, metadata !458, metadata !"nz", metadata !5, i32 67110228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 1364]
!466 = metadata !{i32 786689, metadata !458, metadata !"colptr", metadata !5, i32 83887444, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colptr] [line 1364]
!467 = metadata !{i32 786689, metadata !458, metadata !"rowind", metadata !5, i32 100664660, metadata !253, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 1364]
!468 = metadata !{i32 786689, metadata !458, metadata !"val", metadata !5, i32 117441877, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 1365]
!469 = metadata !{i32 786689, metadata !458, metadata !"Nrhs", metadata !5, i32 134219093, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Nrhs] [line 1365]
!470 = metadata !{i32 786689, metadata !458, metadata !"rhs", metadata !5, i32 150996309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhs] [line 1365]
!471 = metadata !{i32 786689, metadata !458, metadata !"guess", metadata !5, i32 167773526, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [guess] [line 1366]
!472 = metadata !{i32 786689, metadata !458, metadata !"exact", metadata !5, i32 184550742, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [exact] [line 1366]
!473 = metadata !{i32 786689, metadata !458, metadata !"Title", metadata !5, i32 201327959, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Title] [line 1367]
!474 = metadata !{i32 786689, metadata !458, metadata !"Key", metadata !5, i32 218105175, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Key] [line 1367]
!475 = metadata !{i32 786689, metadata !458, metadata !"Type", metadata !5, i32 234882391, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Type] [line 1367]
!476 = metadata !{i32 786689, metadata !458, metadata !"Ptrfmt", metadata !5, i32 251659608, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ptrfmt] [line 1368]
!477 = metadata !{i32 786689, metadata !458, metadata !"Indfmt", metadata !5, i32 268436824, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Indfmt] [line 1368]
!478 = metadata !{i32 786689, metadata !458, metadata !"Valfmt", metadata !5, i32 285214040, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Valfmt] [line 1368]
!479 = metadata !{i32 786689, metadata !458, metadata !"Rhsfmt", metadata !5, i32 301991256, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhsfmt] [line 1368]
!480 = metadata !{i32 786689, metadata !458, metadata !"Rhstype", metadata !5, i32 318768473, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Rhstype] [line 1369]
!481 = metadata !{i32 786688, metadata !458, metadata !"out_file", metadata !5, i32 1380, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_file] [line 1380]
!482 = metadata !{i32 786688, metadata !458, metadata !"i", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1381]
!483 = metadata !{i32 786688, metadata !458, metadata !"j", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1381]
!484 = metadata !{i32 786688, metadata !458, metadata !"acount", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acount] [line 1381]
!485 = metadata !{i32 786688, metadata !458, metadata !"linemod", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linemod] [line 1381]
!486 = metadata !{i32 786688, metadata !458, metadata !"entry", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 1381]
!487 = metadata !{i32 786688, metadata !458, metadata !"offset", metadata !5, i32 1381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1381]
!488 = metadata !{i32 786688, metadata !458, metadata !"totcrd", metadata !5, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totcrd] [line 1382]
!489 = metadata !{i32 786688, metadata !458, metadata !"ptrcrd", metadata !5, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptrcrd] [line 1382]
!490 = metadata !{i32 786688, metadata !458, metadata !"indcrd", metadata !5, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indcrd] [line 1382]
!491 = metadata !{i32 786688, metadata !458, metadata !"valcrd", metadata !5, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valcrd] [line 1382]
!492 = metadata !{i32 786688, metadata !458, metadata !"rhscrd", metadata !5, i32 1382, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rhscrd] [line 1382]
!493 = metadata !{i32 786688, metadata !458, metadata !"nvalentries", metadata !5, i32 1383, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvalentries] [line 1383]
!494 = metadata !{i32 786688, metadata !458, metadata !"nrhsentries", metadata !5, i32 1383, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrhsentries] [line 1383]
!495 = metadata !{i32 786688, metadata !458, metadata !"Ptrperline", metadata !5, i32 1384, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrperline] [line 1384]
!496 = metadata !{i32 786688, metadata !458, metadata !"Ptrwidth", metadata !5, i32 1384, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrwidth] [line 1384]
!497 = metadata !{i32 786688, metadata !458, metadata !"Indperline", metadata !5, i32 1384, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indperline] [line 1384]
!498 = metadata !{i32 786688, metadata !458, metadata !"Indwidth", metadata !5, i32 1384, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Indwidth] [line 1384]
!499 = metadata !{i32 786688, metadata !458, metadata !"Rhsperline", metadata !5, i32 1385, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsperline] [line 1385]
!500 = metadata !{i32 786688, metadata !458, metadata !"Rhswidth", metadata !5, i32 1385, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhswidth] [line 1385]
!501 = metadata !{i32 786688, metadata !458, metadata !"Rhsprec", metadata !5, i32 1385, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsprec] [line 1385]
!502 = metadata !{i32 786688, metadata !458, metadata !"Rhsflag", metadata !5, i32 1386, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Rhsflag] [line 1386]
!503 = metadata !{i32 786688, metadata !458, metadata !"Valperline", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valperline] [line 1387]
!504 = metadata !{i32 786688, metadata !458, metadata !"Valwidth", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valwidth] [line 1387]
!505 = metadata !{i32 786688, metadata !458, metadata !"Valprec", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valprec] [line 1387]
!506 = metadata !{i32 786688, metadata !458, metadata !"Valflag", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Valflag] [line 1388]
!507 = metadata !{i32 786688, metadata !458, metadata !"pformat", metadata !5, i32 1389, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pformat] [line 1389]
!508 = metadata !{i32 786688, metadata !458, metadata !"iformat", metadata !5, i32 1389, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iformat] [line 1389]
!509 = metadata !{i32 786688, metadata !458, metadata !"vformat", metadata !5, i32 1389, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vformat] [line 1389]
!510 = metadata !{i32 786688, metadata !458, metadata !"rformat", metadata !5, i32 1389, metadata !309, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rformat] [line 1389]
!511 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOHBTerminate", metadata !"IOHBTerminate", metadata !"", i32 1726, metadata !512, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @IOHBTerminate, null, null, metadata !514, i32 1727} ; [ DW_TAG_subprogram ] [line 1726] [local] [def] [scope 1727] [IOHBTerminate]
!512 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !513, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!513 = metadata !{null, metadata !14}
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786689, metadata !511, metadata !"message", metadata !5, i32 16778942, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 1726]
!516 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"upcase", metadata !"upcase", metadata !"", i32 1717, metadata !512, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @upcase, null, null, metadata !517, i32 1718} ; [ DW_TAG_subprogram ] [line 1717] [local] [def] [scope 1718] [upcase]
!517 = metadata !{metadata !518, metadata !519, metadata !520, metadata !521}
!518 = metadata !{i32 786689, metadata !516, metadata !"S", metadata !5, i32 16778933, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 1717]
!519 = metadata !{i32 786688, metadata !516, metadata !"i", metadata !5, i32 1720, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1720]
!520 = metadata !{i32 786688, metadata !516, metadata !"len", metadata !5, i32 1720, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1720]
!521 = metadata !{i32 786688, metadata !522, metadata !"__res", metadata !5, i32 1723, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 1723]
!522 = metadata !{i32 786443, metadata !1, metadata !523, i32 1723, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!523 = metadata !{i32 786443, metadata !1, metadata !516, i32 1722, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!524 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ParseRfmt", metadata !"ParseRfmt", metadata !"", i32 1605, metadata !525, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, i32*, i32*, i32*)* @ParseRfmt, null, null, metadata !527, i32 1606} ; [ DW_TAG_subprogram ] [line 1605] [local] [def] [scope 1606] [ParseRfmt]
!525 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!526 = metadata !{metadata !8, metadata !14, metadata !12, metadata !12, metadata !12, metadata !12}
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !539, metadata !540, metadata !541}
!528 = metadata !{i32 786689, metadata !524, metadata !"fmt", metadata !5, i32 16778821, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1605]
!529 = metadata !{i32 786689, metadata !524, metadata !"perline", metadata !5, i32 33556037, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perline] [line 1605]
!530 = metadata !{i32 786689, metadata !524, metadata !"width", metadata !5, i32 50333253, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 1605]
!531 = metadata !{i32 786689, metadata !524, metadata !"prec", metadata !5, i32 67110469, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 1605]
!532 = metadata !{i32 786689, metadata !524, metadata !"flag", metadata !5, i32 83887685, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 1605]
!533 = metadata !{i32 786688, metadata !524, metadata !"tmp", metadata !5, i32 1613, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1613]
!534 = metadata !{i32 786688, metadata !524, metadata !"tmp2", metadata !5, i32 1614, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp2] [line 1614]
!535 = metadata !{i32 786688, metadata !524, metadata !"tmp3", metadata !5, i32 1615, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp3] [line 1615]
!536 = metadata !{i32 786688, metadata !524, metadata !"len", metadata !5, i32 1616, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1616]
!537 = metadata !{i32 786688, metadata !538, metadata !"locLeftParen", metadata !5, i32 1674, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locLeftParen] [line 1674]
!538 = metadata !{i32 786443, metadata !1, metadata !524, i32 1673, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!539 = metadata !{i32 786688, metadata !538, metadata !"locRightParen", metadata !5, i32 1675, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locRightParen] [line 1675]
!540 = metadata !{i32 786688, metadata !538, metadata !"locFlag", metadata !5, i32 1676, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locFlag] [line 1676]
!541 = metadata !{i32 786688, metadata !538, metadata !"locDot", metadata !5, i32 1677, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locDot] [line 1677]
!542 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ParseIfmt", metadata !"ParseIfmt", metadata !"", i32 1577, metadata !543, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32*, i32*)* @ParseIfmt, null, null, metadata !545, i32 1581} ; [ DW_TAG_subprogram ] [line 1577] [local] [def] [scope 1581] [ParseIfmt]
!543 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!544 = metadata !{metadata !8, metadata !14, metadata !12, metadata !12}
!545 = metadata !{metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551}
!546 = metadata !{i32 786689, metadata !542, metadata !"format", metadata !5, i32 16778794, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 1578]
!547 = metadata !{i32 786689, metadata !542, metadata !"pperline", metadata !5, i32 33556011, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pperline] [line 1579]
!548 = metadata !{i32 786689, metadata !542, metadata !"pwidth", metadata !5, i32 50333228, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pwidth] [line 1580]
!549 = metadata !{i32 786688, metadata !542, metadata !"locI", metadata !5, i32 1582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locI] [line 1582]
!550 = metadata !{i32 786688, metadata !542, metadata !"locLeftParen", metadata !5, i32 1582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locLeftParen] [line 1582]
!551 = metadata !{i32 786688, metadata !542, metadata !"locRightParen", metadata !5, i32 1582, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locRightParen] [line 1582]
!552 = metadata !{i32 226, i32 0, metadata !4, null}
!553 = metadata !{i32 227, i32 0, metadata !4, null}
!554 = metadata !{i32 247, i32 0, metadata !4, null}
!555 = metadata !{i32 248, i32 0, metadata !4, null}
!556 = metadata !{i32 250, i32 0, metadata !4, null}
!557 = metadata !{i32 251, i32 0, metadata !4, null}
!558 = metadata !{i32 256, i32 0, metadata !4, null}
!559 = metadata !{i32 257, i32 0, metadata !4, null}
!560 = metadata !{i32 259, i32 0, metadata !4, null}
!561 = metadata !{i32 260, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !4, i32 259, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!563 = metadata !{metadata !"any pointer", metadata !564}
!564 = metadata !{metadata !"omnipotent char", metadata !565}
!565 = metadata !{metadata !"Simple C/C++ TBAA"}
!566 = metadata !{i32 261, i32 0, metadata !562, null}
!567 = metadata !{i32 264, i32 0, metadata !4, null}
!568 = metadata !{i32 267, i32 0, metadata !4, null}
!569 = metadata !{i32 268, i32 0, metadata !4, null}
!570 = metadata !{i32 269, i32 0, metadata !4, null}
!571 = metadata !{i32 270, i32 0, metadata !4, null}
!572 = metadata !{metadata !"int", metadata !564}
!573 = metadata !{i32 271, i32 0, metadata !4, null}
!574 = metadata !{i32 272, i32 0, metadata !4, null}
!575 = metadata !{i32 273, i32 0, metadata !4, null}
!576 = metadata !{i32 273, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !4, i32 273, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!578 = metadata !{i32 288, i32 0, metadata !4, null}
!579 = metadata !{i32 290, i32 0, metadata !4, null}
!580 = metadata !{i32 1726, i32 0, metadata !511, null}
!581 = metadata !{i32 1728, i32 0, metadata !511, null}
!582 = metadata !{i32 1729, i32 0, metadata !511, null}
!583 = metadata !{i32 294, i32 0, metadata !108, null}
!584 = metadata !{i32 295, i32 0, metadata !108, null}
!585 = metadata !{i32 296, i32 0, metadata !108, null}
!586 = metadata !{i32 297, i32 0, metadata !108, null}
!587 = metadata !{i32 298, i32 0, metadata !108, null}
!588 = metadata !{i32 303, i32 0, metadata !108, null}
!589 = metadata !{i32 304, i32 0, metadata !108, null}
!590 = metadata !{i32 307, i32 0, metadata !108, null}
!591 = metadata !{i32 308, i32 0, metadata !108, null}
!592 = metadata !{i32 309, i32 0, metadata !108, null}
!593 = metadata !{i32 310, i32 0, metadata !108, null}
!594 = metadata !{i32 311, i32 0, metadata !108, null}
!595 = metadata !{i32 312, i32 0, metadata !108, null}
!596 = metadata !{i32 315, i32 0, metadata !108, null}
!597 = metadata !{i32 316, i32 0, metadata !108, null}
!598 = metadata !{i32 317, i32 0, metadata !108, null}
!599 = metadata !{i32 318, i32 0, metadata !108, null}
!600 = metadata !{i32 319, i32 0, metadata !108, null}
!601 = metadata !{i32 320, i32 0, metadata !108, null}
!602 = metadata !{i32 321, i32 0, metadata !108, null}
!603 = metadata !{i32 322, i32 0, metadata !108, null}
!604 = metadata !{i32 325, i32 0, metadata !108, null}
!605 = metadata !{i32 326, i32 0, metadata !108, null}
!606 = metadata !{i32 327, i32 0, metadata !108, null}
!607 = metadata !{i32 328, i32 0, metadata !108, null}
!608 = metadata !{i32 329, i32 0, metadata !108, null}
!609 = metadata !{i32 330, i32 0, metadata !108, null}
!610 = metadata !{i32 331, i32 0, metadata !108, null}
!611 = metadata !{i32 332, i32 0, metadata !108, null}
!612 = metadata !{i32 333, i32 0, metadata !108, null}
!613 = metadata !{i32 334, i32 0, metadata !108, null}
!614 = metadata !{i32 337, i32 0, metadata !108, null}
!615 = metadata !{i32 338, i32 0, metadata !108, null}
!616 = metadata !{i32 339, i32 0, metadata !108, null}
!617 = metadata !{i32 340, i32 0, metadata !108, null}
!618 = metadata !{i32 341, i32 0, metadata !108, null}
!619 = metadata !{i32 342, i32 0, metadata !108, null}
!620 = metadata !{i32 343, i32 0, metadata !108, null}
!621 = metadata !{i32 344, i32 0, metadata !108, null}
!622 = metadata !{i32 345, i32 0, metadata !108, null}
!623 = metadata !{i32 346, i32 0, metadata !108, null}
!624 = metadata !{i32 347, i32 0, metadata !108, null}
!625 = metadata !{i32 348, i32 0, metadata !108, null}
!626 = metadata !{i32 349, i32 0, metadata !108, null}
!627 = metadata !{i32 350, i32 0, metadata !108, null}
!628 = metadata !{i32 353, i32 0, metadata !108, null}
!629 = metadata !{i32 355, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !108, i32 354, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!631 = metadata !{i32 356, i32 0, metadata !630, null}
!632 = metadata !{i32 357, i32 0, metadata !630, null}
!633 = metadata !{i32 358, i32 0, metadata !630, null}
!634 = metadata !{i32 359, i32 0, metadata !630, null}
!635 = metadata !{i32 360, i32 0, metadata !630, null}
!636 = metadata !{i32 361, i32 0, metadata !630, null}
!637 = metadata !{i32 363, i32 0, metadata !108, null}
!638 = metadata !{i32 364, i32 0, metadata !108, null}
!639 = metadata !{i32 1717, i32 0, metadata !516, null}
!640 = metadata !{i32 1721, i32 0, metadata !516, null}
!641 = metadata !{i32 1722, i32 0, metadata !523, null}
!642 = metadata !{i32 1723, i32 0, metadata !522, null}
!643 = metadata !{i32 1724, i32 0, metadata !516, null}
!644 = metadata !{i32 367, i32 0, metadata !136, null}
!645 = metadata !{i32 368, i32 0, metadata !136, null}
!646 = metadata !{i32 389, i32 0, metadata !136, null}
!647 = metadata !{i32 390, i32 0, metadata !136, null}
!648 = metadata !{i32 391, i32 0, metadata !136, null}
!649 = metadata !{i32 392, i32 0, metadata !136, null}
!650 = metadata !{i32 393, i32 0, metadata !136, null}
!651 = metadata !{i32 394, i32 0, metadata !136, null}
!652 = metadata !{i32 400, i32 0, metadata !136, null}
!653 = metadata !{i32 401, i32 0, metadata !136, null}
!654 = metadata !{i32 402, i32 0, metadata !136, null}
!655 = metadata !{i32 403, i32 0, metadata !136, null}
!656 = metadata !{i32 404, i32 0, metadata !136, null}
!657 = metadata !{i32 405, i32 0, metadata !136, null}
!658 = metadata !{i32 406, i32 0, metadata !136, null}
!659 = metadata !{i32 407, i32 0, metadata !136, null}
!660 = metadata !{i32 409, i32 0, metadata !136, null}
!661 = metadata !{i32 411, i32 0, metadata !136, null}
!662 = metadata !{i32 412, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !136, i32 411, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!664 = metadata !{i32 413, i32 0, metadata !663, null}
!665 = metadata !{i32 416, i32 0, metadata !136, null}
!666 = metadata !{i32 421, i32 0, metadata !136, null}
!667 = metadata !{i32 429, i32 0, metadata !136, null}
!668 = metadata !{i32 437, i32 0, metadata !136, null}
!669 = metadata !{i32 438, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !136, i32 437, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!671 = metadata !{i32 448, i32 0, metadata !670, null}
!672 = metadata !{i32 452, i32 0, metadata !136, null}
!673 = metadata !{i32 455, i32 0, metadata !136, null}
!674 = metadata !{i32 456, i32 0, metadata !136, null}
!675 = metadata !{i32 457, i32 0, metadata !136, null}
!676 = metadata !{i32 458, i32 0, metadata !136, null}
!677 = metadata !{i32 459, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !136, i32 459, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!679 = metadata !{i32 465, i32 0, metadata !680, null}
!680 = metadata !{i32 786443, metadata !1, metadata !681, i32 465, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!681 = metadata !{i32 786443, metadata !1, metadata !678, i32 460, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!682 = metadata !{i32 468, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !680, i32 466, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!684 = metadata !{i32 471, i32 0, metadata !683, null}
!685 = metadata !{i32 461, i32 0, metadata !681, null}
!686 = metadata !{i32 462, i32 0, metadata !681, null}
!687 = metadata !{i32 463, i32 0, metadata !681, null}
!688 = metadata !{i32 467, i32 0, metadata !683, null}
!689 = metadata !{i32 470, i32 0, metadata !683, null}
!690 = metadata !{i32 474, i32 0, metadata !136, null}
!691 = metadata !{i32 478, i32 0, metadata !136, null}
!692 = metadata !{i32 479, i32 0, metadata !136, null}
!693 = metadata !{i32 480, i32 0, metadata !136, null}
!694 = metadata !{i32 481, i32 0, metadata !136, null}
!695 = metadata !{i32 482, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !136, i32 482, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!697 = metadata !{i32 488, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !699, i32 488, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!699 = metadata !{i32 786443, metadata !1, metadata !696, i32 483, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!700 = metadata !{i32 491, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !698, i32 489, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!702 = metadata !{i32 494, i32 0, metadata !701, null}
!703 = metadata !{i32 484, i32 0, metadata !699, null}
!704 = metadata !{i32 485, i32 0, metadata !699, null}
!705 = metadata !{i32 486, i32 0, metadata !699, null}
!706 = metadata !{i32 490, i32 0, metadata !701, null}
!707 = metadata !{i32 493, i32 0, metadata !701, null}
!708 = metadata !{i32 497, i32 0, metadata !136, null}
!709 = metadata !{i32 501, i32 0, metadata !136, null}
!710 = metadata !{i32 503, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !1, metadata !136, i32 501, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!712 = metadata !{i32 506, i32 0, metadata !711, null}
!713 = metadata !{i32 507, i32 0, metadata !711, null}
!714 = metadata !{i32 508, i32 0, metadata !711, null}
!715 = metadata !{i32 509, i32 0, metadata !711, null}
!716 = metadata !{i32 510, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !711, i32 510, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!718 = metadata !{i32 515, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !717, i32 511, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!720 = metadata !{i32 520, i32 0, metadata !721, null}
!721 = metadata !{i32 786443, metadata !1, metadata !719, i32 520, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!722 = metadata !{i32 523, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !721, i32 521, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!724 = metadata !{i32 525, i32 0, metadata !723, null}
!725 = metadata !{i32 537, i32 0, metadata !723, null}
!726 = metadata !{i32 531, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !728, i32 530, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!728 = metadata !{i32 786443, metadata !1, metadata !729, i32 528, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!729 = metadata !{i32 786443, metadata !1, metadata !730, i32 528, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!730 = metadata !{i32 786443, metadata !1, metadata !723, i32 525, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!731 = metadata !{i32 512, i32 0, metadata !719, null}
!732 = metadata !{i32 513, i32 0, metadata !719, null}
!733 = metadata !{i32 514, i32 0, metadata !719, null}
!734 = metadata !{i32 516, i32 0, metadata !735, null}
!735 = metadata !{i32 786443, metadata !1, metadata !719, i32 515, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!736 = metadata !{i32 522, i32 0, metadata !723, null}
!737 = metadata !{i32 527, i32 0, metadata !730, null}
!738 = metadata !{i32 528, i32 0, metadata !729, null}
!739 = metadata !{i32 529, i32 0, metadata !728, null}
!740 = metadata !{i32 530, i32 0, metadata !728, null}
!741 = metadata !{i32 532, i32 0, metadata !727, null}
!742 = metadata !{i32 536, i32 0, metadata !723, null}
!743 = metadata !{metadata !"double", metadata !564}
!744 = metadata !{i32 540, i32 0, metadata !711, null}
!745 = metadata !{i32 541, i32 0, metadata !711, null}
!746 = metadata !{i32 547, i32 0, metadata !136, null}
!747 = metadata !{i32 548, i32 0, metadata !136, null}
!748 = metadata !{i32 549, i32 0, metadata !136, null}
!749 = metadata !{i32 550, i32 0, metadata !136, null}
!750 = metadata !{i32 551, i32 0, metadata !136, null}
!751 = metadata !{i32 552, i32 0, metadata !136, null}
!752 = metadata !{i32 553, i32 0, metadata !136, null}
!753 = metadata !{i32 554, i32 0, metadata !136, null}
!754 = metadata !{i32 556, i32 0, metadata !136, null}
!755 = metadata !{i32 557, i32 0, metadata !136, null}
!756 = metadata !{i32 558, i32 0, metadata !136, null}
!757 = metadata !{i32 1584, i32 0, metadata !542, null}
!758 = metadata !{i32 1587, i32 0, metadata !542, null}
!759 = metadata !{i32 1590, i32 0, metadata !542, null}
!760 = metadata !{i32 1593, i32 0, metadata !542, null}
!761 = metadata !{i32 1596, i32 0, metadata !542, null}
!762 = metadata !{i32 1597, i32 0, metadata !542, null}
!763 = metadata !{i32 1598, i32 0, metadata !542, null}
!764 = metadata !{i32 1599, i32 0, metadata !542, null}
!765 = metadata !{i32 1600, i32 0, metadata !542, null}
!766 = metadata !{i32 1601, i32 0, metadata !542, null}
!767 = metadata !{i32 1603, i32 0, metadata !542, null}
!768 = metadata !{i32 1618, i32 0, metadata !524, null}
!769 = metadata !{i32 1619, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !524, i32 1618, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!771 = metadata !{i32 1620, i32 0, metadata !770, null}
!772 = metadata !{i32* null}
!773 = metadata !{i32 1621, i32 0, metadata !770, null}
!774 = metadata !{i32 1622, i32 0, metadata !770, null}
!775 = metadata !{i32 1625, i32 0, metadata !524, null}
!776 = metadata !{i32 1626, i32 0, metadata !524, null}
!777 = metadata !{i32 1627, i32 0, metadata !524, null}
!778 = metadata !{i32 1629, i32 0, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !524, i32 1627, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!780 = metadata !{i32 1632, i32 0, metadata !779, null}
!781 = metadata !{i32 1633, i32 0, metadata !779, null}
!782 = metadata !{i32 1634, i32 0, metadata !524, null}
!783 = metadata !{i32 1636, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !524, i32 1635, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!785 = metadata !{i32 1637, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !784, i32 1636, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!787 = metadata !{i32 1638, i32 0, metadata !786, null}
!788 = metadata !{i32 1639, i32 0, metadata !786, null}
!789 = metadata !{i32 1640, i32 0, metadata !786, null}
!790 = metadata !{i32 1641, i32 0, metadata !786, null}
!791 = metadata !{i32 1642, i32 0, metadata !786, null}
!792 = metadata !{i32 1643, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !786, i32 1642, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!794 = metadata !{i32 1644, i32 0, metadata !793, null}
!795 = metadata !{i32 1646, i32 0, metadata !786, null}
!796 = metadata !{i32 1647, i32 0, metadata !786, null}
!797 = metadata !{i32 1649, i32 0, metadata !524, null}
!798 = metadata !{i32 1650, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !524, i32 1649, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!800 = metadata !{i32 1651, i32 0, metadata !799, null}
!801 = metadata !{i32 1651, i32 0, metadata !524, null}
!802 = metadata !{i32 1652, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !524, i32 1651, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!804 = metadata !{i32 1653, i32 0, metadata !803, null}
!805 = metadata !{i32 1653, i32 0, metadata !524, null}
!806 = metadata !{i32 1654, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !524, i32 1653, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!808 = metadata !{i32 1656, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !524, i32 1655, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!810 = metadata !{i32 1657, i32 0, metadata !809, null}
!811 = metadata !{i32 1674, i32 0, metadata !538, null}
!812 = metadata !{i32 1675, i32 0, metadata !538, null}
!813 = metadata !{i32 1676, i32 0, metadata !538, null}
!814 = metadata !{i32 1677, i32 0, metadata !538, null}
!815 = metadata !{i32 1679, i32 0, metadata !538, null}
!816 = metadata !{i32 1680, i32 0, metadata !538, null}
!817 = metadata !{i32 1681, i32 0, metadata !538, null}
!818 = metadata !{i32 1683, i32 0, metadata !538, null}
!819 = metadata !{i32 1684, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !538, i32 1683, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!821 = metadata !{i32 1685, i32 0, metadata !820, null}
!822 = metadata !{i32 1686, i32 0, metadata !820, null}
!823 = metadata !{i32 1687, i32 0, metadata !820, null}
!824 = metadata !{i32 1688, i32 0, metadata !820, null}
!825 = metadata !{i32 1689, i32 0, metadata !820, null}
!826 = metadata !{i32 1690, i32 0, metadata !820, null}
!827 = metadata !{i32 1692, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !538, i32 1690, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!829 = metadata !{i32 1693, i32 0, metadata !828, null}
!830 = metadata !{i32 560, i32 0, metadata !181, null}
!831 = metadata !{i32 561, i32 0, metadata !181, null}
!832 = metadata !{i32 563, i32 0, metadata !181, null}
!833 = metadata !{i32 564, i32 0, metadata !181, null}
!834 = metadata !{i32 566, i32 0, metadata !181, null}
!835 = metadata !{i32 568, i32 0, metadata !181, null}
!836 = metadata !{i32 569, i32 0, metadata !181, null}
!837 = metadata !{i32 570, i32 0, metadata !181, null}
!838 = metadata !{i32 571, i32 0, metadata !181, null}
!839 = metadata !{i32 572, i32 0, metadata !181, null}
!840 = metadata !{i32 587, i32 0, metadata !181, null}
!841 = metadata !{i32 578, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !181, i32 572, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!843 = metadata !{i32 579, i32 0, metadata !842, null}
!844 = metadata !{i32 583, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !846, i32 581, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!846 = metadata !{i32 786443, metadata !1, metadata !181, i32 580, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!847 = metadata !{i32 584, i32 0, metadata !845, null}
!848 = metadata !{i32 591, i32 0, metadata !196, null}
!849 = metadata !{i32 616, i32 0, metadata !196, null}
!850 = metadata !{i32 617, i32 0, metadata !196, null}
!851 = metadata !{i32 618, i32 0, metadata !196, null}
!852 = metadata !{i32 619, i32 0, metadata !196, null}
!853 = metadata !{i32 620, i32 0, metadata !196, null}
!854 = metadata !{i32 622, i32 0, metadata !196, null}
!855 = metadata !{i32 623, i32 0, metadata !196, null}
!856 = metadata !{i32 624, i32 0, metadata !196, null}
!857 = metadata !{i32 626, i32 0, metadata !196, null}
!858 = metadata !{i32 627, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !196, i32 626, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!860 = metadata !{i32 628, i32 0, metadata !859, null}
!861 = metadata !{i32 631, i32 0, metadata !196, null}
!862 = metadata !{i32 635, i32 0, metadata !196, null}
!863 = metadata !{i32 637, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !196, i32 636, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!865 = metadata !{i32 638, i32 0, metadata !864, null}
!866 = metadata !{i32 640, i32 0, metadata !196, null}
!867 = metadata !{i32 642, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !1, metadata !196, i32 641, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!869 = metadata !{i32 643, i32 0, metadata !868, null}
!870 = metadata !{i32 644, i32 0, metadata !868, null}
!871 = metadata !{i32 648, i32 0, metadata !196, null}
!872 = metadata !{i32 649, i32 0, metadata !873, null}
!873 = metadata !{i32 786443, metadata !1, metadata !196, i32 648, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!874 = metadata !{i32 1}
!875 = metadata !{i32 654, i32 0, metadata !196, null}
!876 = metadata !{i32 656, i32 0, metadata !196, null}
!877 = metadata !{i32 2}
!878 = metadata !{i32 657, i32 0, metadata !196, null}
!879 = metadata !{i32 659, i32 0, metadata !196, null}
!880 = metadata !{i32 660, i32 0, metadata !881, null}
!881 = metadata !{i32 786443, metadata !1, metadata !196, i32 659, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!882 = metadata !{i32 661, i32 0, metadata !881, null}
!883 = metadata !{i32 663, i32 0, metadata !196, null}
!884 = metadata !{i32 664, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !1, metadata !196, i32 663, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!886 = metadata !{i32 665, i32 0, metadata !885, null}
!887 = metadata !{i32 668, i32 0, metadata !196, null}
!888 = metadata !{i32 669, i32 0, metadata !196, null}
!889 = metadata !{i32 672, i32 0, metadata !196, null}
!890 = metadata !{i32 674, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !196, i32 674, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!892 = metadata !{i32 675, i32 0, metadata !891, null}
!893 = metadata !{i32 681, i32 0, metadata !196, null}
!894 = metadata !{i32 684, i32 0, metadata !196, null}
!895 = metadata !{i32 683, i32 0, metadata !196, null}
!896 = metadata !{i32 686, i32 0, metadata !196, null}
!897 = metadata !{i32 687, i32 0, metadata !196, null}
!898 = metadata !{i32 688, i32 0, metadata !196, null}
!899 = metadata !{i32 691, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !196, i32 691, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!901 = metadata !{i32 692, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !900, i32 691, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!903 = metadata !{i32 693, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !902, i32 692, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!905 = metadata !{i32 694, i32 0, metadata !904, null}
!906 = metadata !{i32 695, i32 0, metadata !904, null}
!907 = metadata !{i32 696, i32 0, metadata !904, null}
!908 = metadata !{i32 697, i32 0, metadata !902, null}
!909 = metadata !{i32 699, i32 0, metadata !196, null}
!910 = metadata !{i32 700, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !196, i32 699, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!912 = metadata !{i32 706, i32 0, metadata !196, null}
!913 = metadata !{i32 707, i32 0, metadata !196, null}
!914 = metadata !{i32 708, i32 0, metadata !196, null}
!915 = metadata !{i32 709, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !196, i32 709, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!917 = metadata !{i32 711, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !919, i32 711, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!919 = metadata !{i32 786443, metadata !1, metadata !916, i32 709, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!920 = metadata !{i32 739, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !919, i32 739, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!922 = metadata !{i32 745, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !921, i32 739, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!924 = metadata !{i32 720, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !918, i32 711, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!926 = metadata !{i32 722, i32 0, metadata !925, null}
!927 = metadata !{i32 734, i32 0, metadata !925, null}
!928 = metadata !{i32 728, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !930, i32 727, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!930 = metadata !{i32 786443, metadata !1, metadata !931, i32 725, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!931 = metadata !{i32 786443, metadata !1, metadata !932, i32 725, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!932 = metadata !{i32 786443, metadata !1, metadata !925, i32 722, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!933 = metadata !{i32 715, i32 0, metadata !934, null}
!934 = metadata !{i32 786443, metadata !1, metadata !925, i32 712, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!935 = metadata !{i32 712, i32 0, metadata !925, null}
!936 = metadata !{i32 713, i32 0, metadata !934, null}
!937 = metadata !{i32 714, i32 0, metadata !934, null}
!938 = metadata !{i32 716, i32 0, metadata !939, null}
!939 = metadata !{i32 786443, metadata !1, metadata !934, i32 715, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!940 = metadata !{i32 724, i32 0, metadata !932, null}
!941 = metadata !{i32 725, i32 0, metadata !931, null}
!942 = metadata !{i32 726, i32 0, metadata !930, null}
!943 = metadata !{i32 727, i32 0, metadata !930, null}
!944 = metadata !{i32 729, i32 0, metadata !929, null}
!945 = metadata !{i32 733, i32 0, metadata !925, null}
!946 = metadata !{i32 740, i32 0, metadata !923, null}
!947 = metadata !{i32 741, i32 0, metadata !948, null}
!948 = metadata !{i32 786443, metadata !1, metadata !923, i32 740, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!949 = metadata !{i32 742, i32 0, metadata !948, null}
!950 = metadata !{i32 743, i32 0, metadata !948, null}
!951 = metadata !{i32 744, i32 0, metadata !948, null}
!952 = metadata !{i32 749, i32 0, metadata !196, null}
!953 = metadata !{i32 752, i32 0, metadata !196, null}
!954 = metadata !{i32 753, i32 0, metadata !196, null}
!955 = metadata !{i32 754, i32 0, metadata !196, null}
!956 = metadata !{i32 756, i32 0, metadata !238, null}
!957 = metadata !{i32 758, i32 0, metadata !238, null}
!958 = metadata !{i32 759, i32 0, metadata !238, null}
!959 = metadata !{i32 761, i32 0, metadata !238, null}
!960 = metadata !{i32 762, i32 0, metadata !238, null}
!961 = metadata !{i32 763, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !238, i32 762, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!963 = metadata !{i32 764, i32 0, metadata !962, null}
!964 = metadata !{i32 766, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !238, i32 765, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!966 = metadata !{i32 767, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !965, i32 766, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!968 = metadata !{i32 768, i32 0, metadata !967, null}
!969 = metadata !{i32 769, i32 0, metadata !967, null}
!970 = metadata !{i32 770, i32 0, metadata !967, null}
!971 = metadata !{i32 771, i32 0, metadata !967, null}
!972 = metadata !{i32 773, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !965, i32 772, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!974 = metadata !{i32 774, i32 0, metadata !973, null}
!975 = metadata !{i32 775, i32 0, metadata !973, null}
!976 = metadata !{i32 778, i32 0, metadata !238, null}
!977 = metadata !{i32 780, i32 0, metadata !250, null}
!978 = metadata !{i32 781, i32 0, metadata !250, null}
!979 = metadata !{i32 782, i32 0, metadata !250, null}
!980 = metadata !{i32 783, i32 0, metadata !250, null}
!981 = metadata !{i32 784, i32 0, metadata !250, null}
!982 = metadata !{i32 785, i32 0, metadata !250, null}
!983 = metadata !{i32 786, i32 0, metadata !250, null}
!984 = metadata !{i32 801, i32 0, metadata !250, null}
!985 = metadata !{i32 802, i32 0, metadata !250, null}
!986 = metadata !{i32 803, i32 0, metadata !250, null}
!987 = metadata !{i32 804, i32 0, metadata !250, null}
!988 = metadata !{i32 805, i32 0, metadata !250, null}
!989 = metadata !{i32 806, i32 0, metadata !250, null}
!990 = metadata !{i32 808, i32 0, metadata !250, null}
!991 = metadata !{i32 809, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !250, i32 808, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!993 = metadata !{i32 810, i32 0, metadata !992, null}
!994 = metadata !{i32 811, i32 0, metadata !992, null}
!995 = metadata !{i32 816, i32 0, metadata !250, null}
!996 = metadata !{i32 817, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !250, i32 816, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!998 = metadata !{i32 818, i32 0, metadata !999, null}
!999 = metadata !{i32 786443, metadata !1, metadata !997, i32 817, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1000 = metadata !{i32 819, i32 0, metadata !999, null}
!1001 = metadata !{i32 821, i32 0, metadata !250, null}
!1002 = metadata !{i32 823, i32 0, metadata !250, null}
!1003 = metadata !{null}
!1004 = metadata !{i32 824, i32 0, metadata !250, null}
!1005 = metadata !{i32 825, i32 0, metadata !250, null}
!1006 = metadata !{i32 826, i32 0, metadata !250, null}
!1007 = metadata !{i32 827, i32 0, metadata !250, null}
!1008 = metadata !{i32 829, i32 0, metadata !250, null}
!1009 = metadata !{i32 830, i32 0, metadata !250, null}
!1010 = metadata !{i32 831, i32 0, metadata !250, null}
!1011 = metadata !{i32 832, i32 0, metadata !250, null}
!1012 = metadata !{i32 833, i32 0, metadata !250, null}
!1013 = metadata !{i32 835, i32 0, metadata !250, null}
!1014 = metadata !{i32 836, i32 0, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !1, metadata !250, i32 835, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1016 = metadata !{null}
!1017 = metadata !{i32 837, i32 0, metadata !1015, null}
!1018 = metadata !{i32 838, i32 0, metadata !1015, null}
!1019 = metadata !{i32 839, i32 0, metadata !1015, null}
!1020 = metadata !{i32 840, i32 0, metadata !1015, null}
!1021 = metadata !{i32 842, i32 0, metadata !1015, null}
!1022 = metadata !{i32 843, i32 0, metadata !1015, null}
!1023 = metadata !{i32 844, i32 0, metadata !1015, null}
!1024 = metadata !{i32 847, i32 0, metadata !250, null}
!1025 = metadata !{i32 848, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1, metadata !250, i32 847, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1027 = metadata !{i32 849, i32 0, metadata !1026, null}
!1028 = metadata !{i32 850, i32 0, metadata !1026, null}
!1029 = metadata !{i32 851, i32 0, metadata !1026, null}
!1030 = metadata !{i32 854, i32 0, metadata !1026, null}
!1031 = metadata !{i32 853, i32 0, metadata !1026, null}
!1032 = metadata !{i32 855, i32 0, metadata !1026, null}
!1033 = metadata !{i32 856, i32 0, metadata !1026, null}
!1034 = metadata !{i32 857, i32 0, metadata !1026, null}
!1035 = metadata !{i32 858, i32 0, metadata !1026, null}
!1036 = metadata !{i32 859, i32 0, metadata !1026, null}
!1037 = metadata !{i32 860, i32 0, metadata !1026, null}
!1038 = metadata !{i32 862, i32 0, metadata !250, null}
!1039 = metadata !{i32 867, i32 0, metadata !250, null}
!1040 = metadata !{i32 869, i32 0, metadata !250, null}
!1041 = metadata !{i32 870, i32 0, metadata !250, null}
!1042 = metadata !{i32 871, i32 0, metadata !250, null}
!1043 = metadata !{i32 874, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1, metadata !250, i32 871, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1045 = metadata !{i32 875, i32 0, metadata !1044, null}
!1046 = metadata !{i32 875, i32 0, metadata !250, null}
!1047 = metadata !{i32 881, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !250, i32 881, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1049 = metadata !{i32 883, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !1048, i32 882, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1051 = metadata !{i32 884, i32 0, metadata !1050, null}
!1052 = metadata !{i32 885, i32 0, metadata !1050, null}
!1053 = metadata !{i32 888, i32 0, metadata !250, null}
!1054 = metadata !{i32 891, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !250, i32 891, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1056 = metadata !{i32 893, i32 0, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !1, metadata !1055, i32 892, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1058 = metadata !{i32 894, i32 0, metadata !1057, null}
!1059 = metadata !{i32 895, i32 0, metadata !1057, null}
!1060 = metadata !{i32 898, i32 0, metadata !250, null}
!1061 = metadata !{i32 902, i32 0, metadata !250, null}
!1062 = metadata !{i32 904, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1064, i32 904, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1064 = metadata !{i32 786443, metadata !1, metadata !250, i32 902, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1065 = metadata !{i32 906, i32 0, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !1, metadata !1063, i32 905, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1067 = metadata !{i32 907, i32 0, metadata !1066, null}
!1068 = metadata !{i32 910, i32 0, metadata !1064, null}
!1069 = metadata !{i32 914, i32 0, metadata !1064, null}
!1070 = metadata !{i32 915, i32 0, metadata !1064, null}
!1071 = metadata !{i32 916, i32 0, metadata !1064, null}
!1072 = metadata !{i32 919, i32 0, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !1, metadata !1074, i32 919, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1074 = metadata !{i32 786443, metadata !1, metadata !1075, i32 918, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1075 = metadata !{i32 786443, metadata !1, metadata !1076, i32 917, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1076 = metadata !{i32 786443, metadata !1, metadata !1064, i32 916, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1077 = metadata !{i32 923, i32 0, metadata !1074, null}
!1078 = metadata !{i32 927, i32 0, metadata !1074, null}
!1079 = metadata !{i32 928, i32 0, metadata !1074, null}
!1080 = metadata !{i32 939, i32 0, metadata !1074, null}
!1081 = metadata !{i32 944, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !1074, i32 939, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1083 = metadata !{i32 946, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1082, i32 944, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1085 = metadata !{i32 941, i32 0, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !1, metadata !1087, i32 940, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1087 = metadata !{i32 786443, metadata !1, metadata !1082, i32 940, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1088 = metadata !{i32 942, i32 0, metadata !1086, null}
!1089 = metadata !{i32 933, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1074, i32 928, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1091 = metadata !{i32 935, i32 0, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !1, metadata !1090, i32 933, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1093 = metadata !{i32 931, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !1095, i32 929, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1095 = metadata !{i32 786443, metadata !1, metadata !1090, i32 929, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1096 = metadata !{i32 925, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !1074, i32 923, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1098 = metadata !{i32 921, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1073, i32 919, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1100 = metadata !{i32 917, i32 0, metadata !1075, null}
!1101 = metadata !{i32 920, i32 0, metadata !1099, null}
!1102 = metadata !{i32 924, i32 0, metadata !1097, null}
!1103 = metadata !{i32 926, i32 0, metadata !1097, null}
!1104 = metadata !{i32 929, i32 0, metadata !1095, null}
!1105 = metadata !{i32 930, i32 0, metadata !1094, null}
!1106 = metadata !{i32 934, i32 0, metadata !1092, null}
!1107 = metadata !{i32 936, i32 0, metadata !1092, null}
!1108 = metadata !{i32 937, i32 0, metadata !1090, null}
!1109 = metadata !{i32 938, i32 0, metadata !1090, null}
!1110 = metadata !{i32 940, i32 0, metadata !1087, null}
!1111 = metadata !{i32 945, i32 0, metadata !1084, null}
!1112 = metadata !{i32 947, i32 0, metadata !1084, null}
!1113 = metadata !{i32 948, i32 0, metadata !1082, null}
!1114 = metadata !{i32 949, i32 0, metadata !1082, null}
!1115 = metadata !{i32 955, i32 0, metadata !250, null}
!1116 = metadata !{i32 956, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !250, i32 955, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1118 = metadata !{i32 957, i32 0, metadata !1117, null}
!1119 = metadata !{i32 958, i32 0, metadata !250, null}
!1120 = metadata !{i32 962, i32 0, metadata !313, null}
!1121 = metadata !{i32 963, i32 0, metadata !313, null}
!1122 = metadata !{i32 985, i32 0, metadata !313, null}
!1123 = metadata !{i32 986, i32 0, metadata !313, null}
!1124 = metadata !{i32 987, i32 0, metadata !313, null}
!1125 = metadata !{i32 988, i32 0, metadata !313, null}
!1126 = metadata !{i32 989, i32 0, metadata !313, null}
!1127 = metadata !{i32 991, i32 0, metadata !313, null}
!1128 = metadata !{i32 992, i32 0, metadata !313, null}
!1129 = metadata !{i32 993, i32 0, metadata !313, null}
!1130 = metadata !{i32 995, i32 0, metadata !313, null}
!1131 = metadata !{i32 996, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1, metadata !313, i32 995, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1133 = metadata !{i32 997, i32 0, metadata !1132, null}
!1134 = metadata !{i32 1000, i32 0, metadata !313, null}
!1135 = metadata !{i32 1005, i32 0, metadata !313, null}
!1136 = metadata !{i32 1006, i32 0, metadata !313, null}
!1137 = metadata !{i32 1007, i32 0, metadata !313, null}
!1138 = metadata !{i32 1008, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !313, i32 1007, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1140 = metadata !{i32 1009, i32 0, metadata !1139, null}
!1141 = metadata !{i32 1010, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !1139, i32 1009, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1143 = metadata !{i32 1011, i32 0, metadata !1142, null}
!1144 = metadata !{i32 1016, i32 0, metadata !313, null}
!1145 = metadata !{i32 1019, i32 0, metadata !313, null}
!1146 = metadata !{i32 1020, i32 0, metadata !313, null}
!1147 = metadata !{i32 1021, i32 0, metadata !313, null}
!1148 = metadata !{i32 1022, i32 0, metadata !313, null}
!1149 = metadata !{i32 1023, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !313, i32 1023, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1151 = metadata !{i32 1029, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1153, i32 1029, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1153 = metadata !{i32 786443, metadata !1, metadata !1150, i32 1024, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1154 = metadata !{i32 1032, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1152, i32 1030, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1156 = metadata !{i32 1035, i32 0, metadata !1155, null}
!1157 = metadata !{i32 1025, i32 0, metadata !1153, null}
!1158 = metadata !{i32 1026, i32 0, metadata !1153, null}
!1159 = metadata !{i32 1027, i32 0, metadata !1153, null}
!1160 = metadata !{i32 1031, i32 0, metadata !1155, null}
!1161 = metadata !{i32 1034, i32 0, metadata !1155, null}
!1162 = metadata !{i32 1038, i32 0, metadata !313, null}
!1163 = metadata !{i32 1042, i32 0, metadata !313, null}
!1164 = metadata !{i32 1043, i32 0, metadata !313, null}
!1165 = metadata !{i32 1044, i32 0, metadata !313, null}
!1166 = metadata !{i32 1045, i32 0, metadata !313, null}
!1167 = metadata !{i32 1046, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1, metadata !313, i32 1046, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1169 = metadata !{i32 1052, i32 0, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !1, metadata !1171, i32 1052, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1171 = metadata !{i32 786443, metadata !1, metadata !1168, i32 1047, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1172 = metadata !{i32 1055, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1170, i32 1053, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1174 = metadata !{i32 1058, i32 0, metadata !1173, null}
!1175 = metadata !{i32 1048, i32 0, metadata !1171, null}
!1176 = metadata !{i32 1049, i32 0, metadata !1171, null}
!1177 = metadata !{i32 1050, i32 0, metadata !1171, null}
!1178 = metadata !{i32 1054, i32 0, metadata !1173, null}
!1179 = metadata !{i32 1057, i32 0, metadata !1173, null}
!1180 = metadata !{i32 1061, i32 0, metadata !313, null}
!1181 = metadata !{i32 1065, i32 0, metadata !313, null}
!1182 = metadata !{i32 1067, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !313, i32 1065, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1184 = metadata !{i32 1074, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1, metadata !1183, i32 1074, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1186 = metadata !{i32 1079, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !1185, i32 1075, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1188 = metadata !{i32 1083, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1187, i32 1083, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1190 = metadata !{i32 1086, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1189, i32 1084, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1192 = metadata !{i32 1087, i32 0, metadata !1191, null}
!1193 = metadata !{i32 1089, i32 0, metadata !1191, null}
!1194 = metadata !{i32 1100, i32 0, metadata !1191, null}
!1195 = metadata !{i32 1095, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !1197, i32 1094, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1197 = metadata !{i32 786443, metadata !1, metadata !1198, i32 1092, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1198 = metadata !{i32 786443, metadata !1, metadata !1199, i32 1092, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1199 = metadata !{i32 786443, metadata !1, metadata !1191, i32 1089, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1200 = metadata !{i32 1076, i32 0, metadata !1187, null}
!1201 = metadata !{i32 1077, i32 0, metadata !1187, null}
!1202 = metadata !{i32 1078, i32 0, metadata !1187, null}
!1203 = metadata !{i32 1080, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !1, metadata !1187, i32 1079, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1205 = metadata !{i32 1085, i32 0, metadata !1191, null}
!1206 = metadata !{i32 1091, i32 0, metadata !1199, null}
!1207 = metadata !{i32 1092, i32 0, metadata !1198, null}
!1208 = metadata !{i32 1093, i32 0, metadata !1197, null}
!1209 = metadata !{i32 1094, i32 0, metadata !1197, null}
!1210 = metadata !{i32 1096, i32 0, metadata !1196, null}
!1211 = metadata !{i32 1105, i32 0, metadata !313, null}
!1212 = metadata !{i32 1106, i32 0, metadata !313, null}
!1213 = metadata !{i32 1108, i32 0, metadata !359, null}
!1214 = metadata !{i32 1109, i32 0, metadata !359, null}
!1215 = metadata !{i32 1112, i32 0, metadata !359, null}
!1216 = metadata !{i32 1113, i32 0, metadata !359, null}
!1217 = metadata !{i32 1114, i32 0, metadata !359, null}
!1218 = metadata !{i32 1115, i32 0, metadata !359, null}
!1219 = metadata !{i32 1116, i32 0, metadata !359, null}
!1220 = metadata !{i32 1117, i32 0, metadata !359, null}
!1221 = metadata !{i32 1119, i32 0, metadata !359, null}
!1222 = metadata !{i32 1120, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !359, i32 1119, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1224 = metadata !{i32 1121, i32 0, metadata !1223, null}
!1225 = metadata !{i32 1124, i32 0, metadata !359, null}
!1226 = metadata !{i32 1125, i32 0, metadata !359, null}
!1227 = metadata !{i32 1126, i32 0, metadata !359, null}
!1228 = metadata !{i32 1129, i32 0, metadata !359, null}
!1229 = metadata !{i32 1130, i32 0, metadata !359, null}
!1230 = metadata !{i32 1132, i32 0, metadata !359, null}
!1231 = metadata !{i32 1133, i32 0, metadata !359, null}
!1232 = metadata !{i32 1134, i32 0, metadata !359, null}
!1233 = metadata !{i32 1135, i32 0, metadata !359, null}
!1234 = metadata !{i32 1136, i32 0, metadata !359, null}
!1235 = metadata !{i32 1151, i32 0, metadata !359, null}
!1236 = metadata !{i32 1142, i32 0, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !1, metadata !359, i32 1136, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1238 = metadata !{i32 1143, i32 0, metadata !1237, null}
!1239 = metadata !{i32 1147, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1, metadata !1241, i32 1145, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1241 = metadata !{i32 786443, metadata !1, metadata !359, i32 1144, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1242 = metadata !{i32 1148, i32 0, metadata !1240, null}
!1243 = metadata !{i32 1153, i32 0, metadata !359, null}
!1244 = metadata !{i32 1155, i32 0, metadata !388, null}
!1245 = metadata !{i32 1180, i32 0, metadata !388, null}
!1246 = metadata !{i32 1181, i32 0, metadata !388, null}
!1247 = metadata !{i32 1182, i32 0, metadata !388, null}
!1248 = metadata !{i32 1183, i32 0, metadata !388, null}
!1249 = metadata !{i32 1184, i32 0, metadata !388, null}
!1250 = metadata !{i32 1185, i32 0, metadata !388, null}
!1251 = metadata !{i32 1186, i32 0, metadata !388, null}
!1252 = metadata !{i32 1189, i32 0, metadata !388, null}
!1253 = metadata !{i32 1190, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1, metadata !388, i32 1189, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1255 = metadata !{i32 1191, i32 0, metadata !1254, null}
!1256 = metadata !{i32 1194, i32 0, metadata !388, null}
!1257 = metadata !{i32 1198, i32 0, metadata !388, null}
!1258 = metadata !{i32 1200, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !1, metadata !388, i32 1199, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1260 = metadata !{i32 1201, i32 0, metadata !1259, null}
!1261 = metadata !{i32 1203, i32 0, metadata !388, null}
!1262 = metadata !{i32 1205, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !388, i32 1204, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1264 = metadata !{i32 1206, i32 0, metadata !1263, null}
!1265 = metadata !{i32 1207, i32 0, metadata !1263, null}
!1266 = metadata !{i32 1211, i32 0, metadata !388, null}
!1267 = metadata !{i32 1212, i32 0, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !1, metadata !388, i32 1211, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1269 = metadata !{i32 1217, i32 0, metadata !388, null}
!1270 = metadata !{i32 1219, i32 0, metadata !388, null}
!1271 = metadata !{i32 1220, i32 0, metadata !388, null}
!1272 = metadata !{i32 1222, i32 0, metadata !388, null}
!1273 = metadata !{i32 1223, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !388, i32 1222, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1275 = metadata !{i32 1224, i32 0, metadata !1274, null}
!1276 = metadata !{i32 1226, i32 0, metadata !388, null}
!1277 = metadata !{i32 1227, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1, metadata !388, i32 1226, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1279 = metadata !{i32 1228, i32 0, metadata !1278, null}
!1280 = metadata !{i32 1231, i32 0, metadata !388, null}
!1281 = metadata !{i32 1232, i32 0, metadata !388, null}
!1282 = metadata !{i32 1235, i32 0, metadata !388, null}
!1283 = metadata !{i32 1237, i32 0, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !1, metadata !388, i32 1237, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1285 = metadata !{i32 1238, i32 0, metadata !1284, null}
!1286 = metadata !{i32 1244, i32 0, metadata !388, null}
!1287 = metadata !{i32 1247, i32 0, metadata !388, null}
!1288 = metadata !{i32 1246, i32 0, metadata !388, null}
!1289 = metadata !{i32 1249, i32 0, metadata !388, null}
!1290 = metadata !{i32 1250, i32 0, metadata !388, null}
!1291 = metadata !{i32 1251, i32 0, metadata !388, null}
!1292 = metadata !{i32 1256, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !388, i32 1256, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1294 = metadata !{i32 1252, i32 0, metadata !388, null}
!1295 = metadata !{i32 1257, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !1293, i32 1256, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1297 = metadata !{i32 1258, i32 0, metadata !1296, null}
!1298 = metadata !{i32 1259, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !1296, i32 1258, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1300 = metadata !{i32 1260, i32 0, metadata !1299, null}
!1301 = metadata !{i32 1261, i32 0, metadata !1299, null}
!1302 = metadata !{i32 1262, i32 0, metadata !1299, null}
!1303 = metadata !{i32 1267, i32 0, metadata !388, null}
!1304 = metadata !{i32 1268, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !388, i32 1267, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1306 = metadata !{i32 1273, i32 0, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !1, metadata !388, i32 1273, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1308 = metadata !{i32 1275, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !1, metadata !1310, i32 1275, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1310 = metadata !{i32 786443, metadata !1, metadata !1307, i32 1273, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1311 = metadata !{i32 1305, i32 0, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !1, metadata !1310, i32 1305, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1313 = metadata !{i32 1276, i32 0, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !1, metadata !1309, i32 1275, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1315 = metadata !{i32 1288, i32 0, metadata !1314, null}
!1316 = metadata !{i32 1277, i32 0, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1276, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1318 = metadata !{i32 1278, i32 0, metadata !1317, null}
!1319 = metadata !{i32 1279, i32 0, metadata !1317, null}
!1320 = metadata !{i32 1280, i32 0, metadata !1317, null}
!1321 = metadata !{i32 1281, i32 0, metadata !1317, null}
!1322 = metadata !{i32 1282, i32 0, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !1, metadata !1317, i32 1281, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1324 = metadata !{i32 1286, i32 0, metadata !1314, null}
!1325 = metadata !{i32 1287, i32 0, metadata !1314, null}
!1326 = metadata !{i32 1290, i32 0, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1288, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1328 = metadata !{i32 1291, i32 0, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !1, metadata !1327, i32 1291, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1330 = metadata !{i32 1292, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1329, i32 1291, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1332 = metadata !{i32 1293, i32 0, metadata !1331, null}
!1333 = metadata !{i32 1294, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !1331, i32 1293, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1335 = metadata !{i32 1295, i32 0, metadata !1334, null}
!1336 = metadata !{i32 1299, i32 0, metadata !1314, null}
!1337 = metadata !{i32 1301, i32 0, metadata !1310, null}
!1338 = metadata !{i32 1306, i32 0, metadata !1339, null}
!1339 = metadata !{i32 786443, metadata !1, metadata !1312, i32 1305, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1340 = metadata !{i32 1307, i32 0, metadata !1339, null}
!1341 = metadata !{i32 1308, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1339, i32 1307, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1343 = metadata !{i32 1309, i32 0, metadata !1342, null}
!1344 = metadata !{i32 1310, i32 0, metadata !1342, null}
!1345 = metadata !{i32 1311, i32 0, metadata !1342, null}
!1346 = metadata !{i32 1319, i32 0, metadata !388, null}
!1347 = metadata !{i32 1320, i32 0, metadata !388, null}
!1348 = metadata !{i32 1321, i32 0, metadata !388, null}
!1349 = metadata !{i32 1323, i32 0, metadata !430, null}
!1350 = metadata !{i32 1326, i32 0, metadata !430, null}
!1351 = metadata !{i32 1327, i32 0, metadata !430, null}
!1352 = metadata !{i32 1328, i32 0, metadata !430, null}
!1353 = metadata !{i32 1329, i32 0, metadata !430, null}
!1354 = metadata !{i32 1330, i32 0, metadata !430, null}
!1355 = metadata !{i32 1331, i32 0, metadata !430, null}
!1356 = metadata !{i32 1333, i32 0, metadata !430, null}
!1357 = metadata !{i32 1334, i32 0, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !1, metadata !430, i32 1333, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1359 = metadata !{i32 1335, i32 0, metadata !1358, null}
!1360 = metadata !{i32 1338, i32 0, metadata !430, null}
!1361 = metadata !{i32 1339, i32 0, metadata !430, null}
!1362 = metadata !{i32 1340, i32 0, metadata !430, null}
!1363 = metadata !{i32 1343, i32 0, metadata !430, null}
!1364 = metadata !{i32 1344, i32 0, metadata !430, null}
!1365 = metadata !{i32 1345, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1, metadata !430, i32 1344, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1367 = metadata !{i32 1346, i32 0, metadata !1366, null}
!1368 = metadata !{i32 1348, i32 0, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !1, metadata !430, i32 1347, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1370 = metadata !{i32 1349, i32 0, metadata !1369, null}
!1371 = metadata !{i32 1350, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !1369, i32 1349, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1373 = metadata !{i32 1351, i32 0, metadata !1372, null}
!1374 = metadata !{i32 1352, i32 0, metadata !1372, null}
!1375 = metadata !{i32 1353, i32 0, metadata !1372, null}
!1376 = metadata !{i32 1354, i32 0, metadata !1372, null}
!1377 = metadata !{i32 1356, i32 0, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !1, metadata !1369, i32 1355, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1379 = metadata !{i32 1357, i32 0, metadata !1378, null}
!1380 = metadata !{i32 1358, i32 0, metadata !1378, null}
!1381 = metadata !{i32 1361, i32 0, metadata !430, null}
!1382 = metadata !{i32 1363, i32 0, metadata !458, null}
!1383 = metadata !{i32 1364, i32 0, metadata !458, null}
!1384 = metadata !{i32 1365, i32 0, metadata !458, null}
!1385 = metadata !{i32 1366, i32 0, metadata !458, null}
!1386 = metadata !{i32 1367, i32 0, metadata !458, null}
!1387 = metadata !{i32 1368, i32 0, metadata !458, null}
!1388 = metadata !{i32 1369, i32 0, metadata !458, null}
!1389 = metadata !{i32 1384, i32 0, metadata !458, null}
!1390 = metadata !{i32 1385, i32 0, metadata !458, null}
!1391 = metadata !{i32 1386, i32 0, metadata !458, null}
!1392 = metadata !{i32 1387, i32 0, metadata !458, null}
!1393 = metadata !{i32 1388, i32 0, metadata !458, null}
!1394 = metadata !{i32 1389, i32 0, metadata !458, null}
!1395 = metadata !{i32 1391, i32 0, metadata !458, null}
!1396 = metadata !{i32 1392, i32 0, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !1, metadata !458, i32 1391, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1398 = metadata !{i32 1393, i32 0, metadata !1397, null}
!1399 = metadata !{i32 1394, i32 0, metadata !1397, null}
!1400 = metadata !{i32 1399, i32 0, metadata !458, null}
!1401 = metadata !{i32 1400, i32 0, metadata !1402, null}
!1402 = metadata !{i32 786443, metadata !1, metadata !458, i32 1399, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1403 = metadata !{i32 1401, i32 0, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !1, metadata !1402, i32 1400, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1405 = metadata !{i32 1402, i32 0, metadata !1404, null}
!1406 = metadata !{i32 1404, i32 0, metadata !458, null}
!1407 = metadata !{i32 1406, i32 0, metadata !458, null}
!1408 = metadata !{i32 1407, i32 0, metadata !458, null}
!1409 = metadata !{i32 1408, i32 0, metadata !458, null}
!1410 = metadata !{i32 1410, i32 0, metadata !458, null}
!1411 = metadata !{i32 1411, i32 0, metadata !458, null}
!1412 = metadata !{i32 1412, i32 0, metadata !458, null}
!1413 = metadata !{i32 1414, i32 0, metadata !458, null}
!1414 = metadata !{i32 1415, i32 0, metadata !1415, null}
!1415 = metadata !{i32 786443, metadata !1, metadata !458, i32 1414, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1416 = metadata !{i32 1416, i32 0, metadata !1415, null}
!1417 = metadata !{i32 1417, i32 0, metadata !1415, null}
!1418 = metadata !{i32 1426, i32 0, metadata !458, null}
!1419 = metadata !{i32 1418, i32 0, metadata !1415, null}
!1420 = metadata !{i32 1420, i32 0, metadata !458, null}
!1421 = metadata !{i32 1421, i32 0, metadata !458, null}
!1422 = metadata !{i32 1423, i32 0, metadata !458, null}
!1423 = metadata !{i32 1424, i32 0, metadata !458, null}
!1424 = metadata !{i32 1427, i32 0, metadata !458, null}
!1425 = metadata !{i32 1429, i32 0, metadata !458, null}
!1426 = metadata !{i32 1430, i32 0, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !1, metadata !458, i32 1429, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1428 = metadata !{i32 1431, i32 0, metadata !1427, null}
!1429 = metadata !{i32 1432, i32 0, metadata !1427, null}
!1430 = metadata !{i32 1433, i32 0, metadata !1427, null}
!1431 = metadata !{i32 1434, i32 0, metadata !1427, null}
!1432 = metadata !{i32 1435, i32 0, metadata !1427, null}
!1433 = metadata !{i32 1436, i32 0, metadata !1427, null}
!1434 = metadata !{i32 1437, i32 0, metadata !1427, null}
!1435 = metadata !{i32 1438, i32 0, metadata !1427, null}
!1436 = metadata !{i32 1440, i32 0, metadata !458, null}
!1437 = metadata !{i32 1445, i32 0, metadata !458, null}
!1438 = metadata !{i32 1447, i32 0, metadata !458, null}
!1439 = metadata !{i32 1448, i32 0, metadata !458, null}
!1440 = metadata !{i32 1449, i32 0, metadata !458, null}
!1441 = metadata !{i32 1452, i32 0, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1, metadata !458, i32 1449, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1443 = metadata !{i32 1453, i32 0, metadata !1442, null}
!1444 = metadata !{i32 1453, i32 0, metadata !458, null}
!1445 = metadata !{i32 1459, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1, metadata !458, i32 1459, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1447 = metadata !{i32 1461, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !1, metadata !1446, i32 1460, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1449 = metadata !{i32 1462, i32 0, metadata !1448, null}
!1450 = metadata !{i32 1463, i32 0, metadata !1448, null}
!1451 = metadata !{i32 1466, i32 0, metadata !458, null}
!1452 = metadata !{i32 1469, i32 0, metadata !1453, null}
!1453 = metadata !{i32 786443, metadata !1, metadata !458, i32 1469, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1454 = metadata !{i32 1471, i32 0, metadata !1455, null}
!1455 = metadata !{i32 786443, metadata !1, metadata !1453, i32 1470, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1456 = metadata !{i32 1472, i32 0, metadata !1455, null}
!1457 = metadata !{i32 1473, i32 0, metadata !1455, null}
!1458 = metadata !{i32 1476, i32 0, metadata !458, null}
!1459 = metadata !{i32 1480, i32 0, metadata !458, null}
!1460 = metadata !{i32 1481, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !1462, i32 1481, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1462 = metadata !{i32 786443, metadata !1, metadata !458, i32 1480, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1463 = metadata !{i32 1483, i32 0, metadata !1464, null}
!1464 = metadata !{i32 786443, metadata !1, metadata !1461, i32 1482, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1465 = metadata !{i32 1484, i32 0, metadata !1464, null}
!1466 = metadata !{i32 1487, i32 0, metadata !1462, null}
!1467 = metadata !{i32 1490, i32 0, metadata !1462, null}
!1468 = metadata !{i32 1491, i32 0, metadata !1462, null}
!1469 = metadata !{i32 1492, i32 0, metadata !1462, null}
!1470 = metadata !{i32 1494, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !1, metadata !1472, i32 1494, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1472 = metadata !{i32 786443, metadata !1, metadata !1473, i32 1493, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1473 = metadata !{i32 786443, metadata !1, metadata !1474, i32 1493, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1474 = metadata !{i32 786443, metadata !1, metadata !1462, i32 1492, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1475 = metadata !{i32 1499, i32 0, metadata !1472, null}
!1476 = metadata !{i32 1503, i32 0, metadata !1472, null}
!1477 = metadata !{i32 1514, i32 0, metadata !1472, null}
!1478 = metadata !{i32 1520, i32 0, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !1, metadata !1472, i32 1514, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1480 = metadata !{i32 1522, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !1479, i32 1520, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1482 = metadata !{i32 1517, i32 0, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !1, metadata !1484, i32 1516, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1484 = metadata !{i32 786443, metadata !1, metadata !1479, i32 1515, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1485 = metadata !{i32 1518, i32 0, metadata !1483, null}
!1486 = metadata !{i32 1509, i32 0, metadata !1487, null}
!1487 = metadata !{i32 786443, metadata !1, metadata !1472, i32 1503, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1488 = metadata !{i32 1511, i32 0, metadata !1489, null}
!1489 = metadata !{i32 786443, metadata !1, metadata !1487, i32 1509, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1490 = metadata !{i32 1506, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !1, metadata !1492, i32 1505, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1492 = metadata !{i32 786443, metadata !1, metadata !1487, i32 1504, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1493 = metadata !{i32 1507, i32 0, metadata !1491, null}
!1494 = metadata !{i32 1501, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !1472, i32 1499, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1496 = metadata !{i32 1496, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1471, i32 1495, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1498 = metadata !{i32 1497, i32 0, metadata !1497, null}
!1499 = metadata !{i32 1493, i32 0, metadata !1473, null}
!1500 = metadata !{i32 1500, i32 0, metadata !1495, null}
!1501 = metadata !{i32 1502, i32 0, metadata !1495, null}
!1502 = metadata !{i32 1504, i32 0, metadata !1492, null}
!1503 = metadata !{i32 1510, i32 0, metadata !1489, null}
!1504 = metadata !{i32 1512, i32 0, metadata !1489, null}
!1505 = metadata !{i32 1515, i32 0, metadata !1484, null}
!1506 = metadata !{i32 1521, i32 0, metadata !1481, null}
!1507 = metadata !{i32 1523, i32 0, metadata !1481, null}
!1508 = metadata !{i32 1530, i32 0, metadata !458, null}
!1509 = metadata !{i32 1531, i32 0, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !1, metadata !458, i32 1530, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_iohb.c]
!1511 = metadata !{i32 1532, i32 0, metadata !1510, null}
!1512 = metadata !{i32 1533, i32 0, metadata !458, null}
