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
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %0) #1
  %call = call i8* @CVinit(i32 4, i8 signext 0) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call1, i8* %0, i8* %arraydecay6, i8* %call, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay7, i8* %arraydecay8, i8* %arraydecay9, i8* %arraydecay10, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #9
  %call13 = call i32 @fclose(%struct._IO_FILE* %call1) #8
  store i8* %call, i8** %Type, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %call, i64 3
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %2 = load i32* %Nrow, align 4, !tbaa !3
  store i32 %2, i32* %M, align 4, !tbaa !3
  %3 = load i32* %Ncol, align 4, !tbaa !3
  store i32 %3, i32* %N, align 4, !tbaa !3
  %4 = load i32* %Nnzero, align 4, !tbaa !3
  store i32 %4, i32* %nz, align 4, !tbaa !3
  %5 = load i32* %Rhscrd, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %5, 0
  br i1 %cmp14, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end5
  store i32 0, i32* %Nrhs, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then15, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.then15 ], [ 1, %if.end5 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #2

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @IOHBTerminate(i8* nocapture %message) #3 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* %message) #8
  tail call void @exit(i32 1) #10
  unreachable
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_header(%struct._IO_FILE* nocapture %in_file, i8* %Title, i8* %Key, i8* %Type, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %Ptrfmt, i8* %Indfmt, i8* %Valfmt, i8* %Rhsfmt, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %Rhstype) #0 {
entry:
  %Totcrd = alloca i32, align 4
  %Neltvl = alloca i32, align 4
  %Nrhsix = alloca i32, align 4
  %line = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %0) #1
  %call = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #8
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i8* %Title, i8* %Key) #8
  %add.ptr = getelementptr inbounds i8* %Key, i64 8
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8* %Title, i64 72
  store i8 0, i8* %add.ptr5, align 1, !tbaa !1
  %call7 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #8
  %call9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0)) #9
  unreachable

if.end12:                                         ; preds = %if.end
  %call14 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %Totcrd) #8
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  store i32 0, i32* %Totcrd, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.end12, %if.then16
  %call19 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i32* %Ptrcrd) #8
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end17
  store i32 0, i32* %Ptrcrd, align 4, !tbaa !3
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %if.then21
  %call24 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0), i32* %Indcrd) #8
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end22
  store i32 0, i32* %Indcrd, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.end22, %if.then26
  %call29 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32* %Valcrd) #8
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  store i32 0, i32* %Valcrd, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %if.end27, %if.then31
  %call34 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i32* %Rhscrd) #8
  %cmp35 = icmp eq i32 %call34, 1
  br i1 %cmp35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  store i32 0, i32* %Rhscrd, align 4, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %if.then36
  %call39 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #8
  %call41 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end37
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str12, i64 0, i64 0)) #9
  unreachable

if.end44:                                         ; preds = %if.end37
  %call46 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* %Type) #8
  %cmp47 = icmp eq i32 %call46, 1
  br i1 %cmp47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end44
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([59 x i8]* @.str14, i64 0, i64 0)) #9
  unreachable

if.end49:                                         ; preds = %if.end44
  call fastcc void @upcase(i8* %Type) #9
  %call51 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %Nrow) #8
  %cmp52 = icmp eq i32 %call51, 1
  br i1 %cmp52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end49
  store i32 0, i32* %Nrow, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %if.then53
  %call56 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32* %Ncol) #8
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end54
  store i32 0, i32* %Ncol, align 4, !tbaa !3
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.then58
  %call61 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i32* %Nnzero) #8
  %cmp62 = icmp eq i32 %call61, 1
  br i1 %cmp62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  store i32 0, i32* %Nnzero, align 4, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %if.then63
  %call66 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32* %Neltvl) #8
  %cmp67 = icmp eq i32 %call66, 1
  br i1 %cmp67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  store i32 0, i32* %Neltvl, align 4, !tbaa !3
  br label %if.end69

if.end69:                                         ; preds = %if.end64, %if.then68
  %call71 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #8
  %call73 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end69
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([49 x i8]* @.str19, i64 0, i64 0)) #9
  unreachable

if.end76:                                         ; preds = %if.end69
  %call78 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %Ptrfmt) #8
  %cmp79 = icmp eq i32 %call78, 1
  br i1 %cmp79, label %if.end81, label %if.then80

if.then80:                                        ; preds = %if.end76
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #9
  unreachable

if.end81:                                         ; preds = %if.end76
  %call83 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %Indfmt) #8
  %cmp84 = icmp eq i32 %call83, 1
  br i1 %cmp84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end81
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #9
  unreachable

if.end86:                                         ; preds = %if.end81
  %call88 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), i8* %Valfmt) #8
  %cmp89 = icmp eq i32 %call88, 1
  br i1 %cmp89, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end86
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([61 x i8]* @.str21, i64 0, i64 0)) #9
  unreachable

if.end91:                                         ; preds = %if.end86
  %call93 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([20 x i8]* @.str24, i64 0, i64 0), i8* %Rhsfmt) #8
  %add.ptr94 = getelementptr inbounds i8* %Ptrfmt, i64 16
  store i8 0, i8* %add.ptr94, align 1, !tbaa !1
  %add.ptr95 = getelementptr inbounds i8* %Indfmt, i64 16
  store i8 0, i8* %add.ptr95, align 1, !tbaa !1
  %add.ptr96 = getelementptr inbounds i8* %Valfmt, i64 20
  store i8 0, i8* %add.ptr96, align 1, !tbaa !1
  %add.ptr97 = getelementptr inbounds i8* %Rhsfmt, i64 20
  store i8 0, i8* %add.ptr97, align 1, !tbaa !1
  %1 = load i32* %Rhscrd, align 4, !tbaa !3
  %cmp98 = icmp eq i32 %1, 0
  br i1 %cmp98, label %if.end122, label %if.then99

if.then99:                                        ; preds = %if.end91
  %call101 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %in_file) #8
  %call103 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then99
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([48 x i8]* @.str25, i64 0, i64 0)) #9
  unreachable

if.end106:                                        ; preds = %if.then99
  %call108 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* %Rhstype) #8
  %cmp109 = icmp eq i32 %call108, 1
  br i1 %cmp109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %if.end106
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([70 x i8]* @.str26, i64 0, i64 0)) #9
  unreachable

if.end111:                                        ; preds = %if.end106
  %call113 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %Nrhs) #8
  %cmp114 = icmp eq i32 %call113, 1
  br i1 %cmp114, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end111
  store i32 0, i32* %Nrhs, align 4, !tbaa !3
  br label %if.end116

if.end116:                                        ; preds = %if.end111, %if.then115
  %call118 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32* %Nrhsix) #8
  %cmp119 = icmp eq i32 %call118, 1
  br i1 %cmp119, label %if.end122, label %if.then120

if.then120:                                       ; preds = %if.end116
  store i32 0, i32* %Nrhsix, align 4, !tbaa !3
  br label %if.end122

if.end122:                                        ; preds = %if.end116, %if.end91, %if.then120
  call void @llvm.lifetime.end(i64 8192, i8* %0) #1
  ret i32 1
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @upcase(i8* nocapture %S) #0 {
entry:
  %call = tail call i64 @strlen(i8* %S) #11
  %conv = trunc i64 %call to i32
  %cmp14 = icmp sgt i32 %conv, 0
  br i1 %cmp14, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %call4 = tail call i32** @__ctype_toupper_loc() #12
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8* %S, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom3 = sext i8 %0 to i64
  %1 = load i32** %call4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %idxprom3
  %2 = load i32* %arrayidx5, align 4, !tbaa !3
  %conv6 = trunc i32 %2 to i8
  store i8 %conv6, i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
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
  %call = call i8* @CVinit(i32 73, i8 signext 0) #8
  %call1 = call i8* @CVinit(i32 9, i8 signext 0) #8
  %call2 = call i8* @CVinit(i32 4, i8 signext 0) #8
  %call3 = call i8* @CVinit(i32 4, i8 signext 0) #8
  %call4 = call i8* @CVinit(i32 17, i8 signext 0) #8
  %call5 = call i8* @CVinit(i32 17, i8 signext 0) #8
  %call6 = call i8* @CVinit(i32 21, i8 signext 0) #8
  %call7 = call i8* @CVinit(i32 21, i8 signext 0) #8
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %0) #1
  %call8 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = call i32 @readHB_header(%struct._IO_FILE* %call8, i8* %call, i8* %call1, i8* %call2, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %call4, i8* %call5, i8* %call6, i8* %call7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %call3) #9
  call fastcc void @ParseIfmt(i8* %call4, i32* %Ptrperline, i32* %Ptrwidth) #9
  call fastcc void @ParseIfmt(i8* %call5, i32* %Indperline, i32* %Indwidth) #9
  %2 = load i8* %call2, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %2, 80
  br i1 %cmp13, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  call fastcc void @ParseRfmt(i8* %call6, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then15
  %3 = load i32* %Ptrwidth, align 4, !tbaa !3
  %add = add nsw i32 %3, 1
  %conv18 = sext i32 %add to i64
  %call19 = call noalias i8* @malloc(i64 %conv18) #8
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end23:                                         ; preds = %if.end17
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8* %call19, i64 %idx.ext
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %4 = load i32* %Ptrcrd, align 4, !tbaa !3
  %cmp24297 = icmp sgt i32 %4, 0
  br i1 %cmp24297, label %for.body.lr.ph, label %for.end52

for.body.lr.ph:                                   ; preds = %if.end23
  %5 = load i32* %Ptrperline, align 4, !tbaa !3
  %cmp34292 = icmp sgt i32 %5, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc50
  %i.0299 = phi i32 [ 0, %for.body.lr.ph ], [ %inc51, %for.inc50 ]
  %count.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc50 ]
  %call26 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #8
  %call28 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.body
  br i1 %cmp34292, label %for.body36.lr.ph, label %for.inc50

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %6 = sext i32 %count.0298 to i64
  br label %for.body36

if.then31:                                        ; preds = %for.body
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([65 x i8]* @.str28, i64 0, i64 0)) #9
  unreachable

for.body36:                                       ; preds = %for.body36.lr.ph, %if.end40
  %indvars.iv313 = phi i64 [ %6, %for.body36.lr.ph ], [ %indvars.iv.next314, %if.end40 ]
  %indvars.iv311 = phi i64 [ 0, %for.body36.lr.ph ], [ %indvars.iv.next312, %if.end40 ]
  %ind.0295 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc49, %if.end40 ]
  %count.1293 = phi i32 [ %count.0298, %for.body36.lr.ph ], [ %inc, %if.end40 ]
  %7 = load i32* %Ncol, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv313 to i32
  %cmp37 = icmp sgt i32 %8, %7
  br i1 %cmp37, label %for.inc50, label %if.end40

if.end40:                                         ; preds = %for.body36
  %add.ptr43 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv311
  %call45 = call i8* @strncpy(i8* %call19, i8* %add.ptr43, i64 %idx.ext) #8
  %call46 = call i32 @atoi(i8* %call19) #11
  %arrayidx47 = getelementptr inbounds i32* %colptr, i64 %indvars.iv313
  store i32 %call46, i32* %arrayidx47, align 4, !tbaa !3
  %indvars.iv.next314 = add i64 %indvars.iv313, 1
  %inc = add nsw i32 %count.1293, 1
  %indvars.iv.next312 = add i64 %indvars.iv311, %idx.ext
  %inc49 = add nsw i32 %ind.0295, 1
  %cmp34 = icmp slt i32 %inc49, %5
  br i1 %cmp34, label %for.body36, label %for.inc50

for.inc50:                                        ; preds = %if.end40, %for.body36, %for.cond33.preheader
  %count.1.lcssa = phi i32 [ %count.0298, %for.cond33.preheader ], [ %count.1293, %for.body36 ], [ %inc, %if.end40 ]
  %inc51 = add nsw i32 %i.0299, 1
  %9 = load i32* %Ptrcrd, align 4, !tbaa !3
  %cmp24 = icmp slt i32 %inc51, %9
  br i1 %cmp24, label %for.body, label %for.end52

for.end52:                                        ; preds = %for.inc50, %if.end23
  call void @free(i8* %call19) #8
  %10 = load i32* %Indwidth, align 4, !tbaa !3
  %add53 = add nsw i32 %10, 1
  %conv54 = sext i32 %add53 to i64
  %call55 = call noalias i8* @malloc(i64 %conv54) #8
  %cmp56 = icmp eq i8* %call55, null
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %for.end52
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end59:                                         ; preds = %for.end52
  %idx.ext60 = sext i32 %10 to i64
  %add.ptr61 = getelementptr inbounds i8* %call55, i64 %idx.ext60
  store i8 0, i8* %add.ptr61, align 1, !tbaa !1
  %11 = load i32* %Indcrd, align 4, !tbaa !3
  %cmp63289 = icmp sgt i32 %11, 0
  br i1 %cmp63289, label %for.body65.lr.ph, label %for.end98

for.body65.lr.ph:                                 ; preds = %if.end59
  %12 = load i32* %Indperline, align 4, !tbaa !3
  %cmp75284 = icmp sgt i32 %12, 0
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.inc96
  %i.1291 = phi i32 [ 0, %for.body65.lr.ph ], [ %inc97, %for.inc96 ]
  %count.2290 = phi i32 [ 0, %for.body65.lr.ph ], [ %count.3.lcssa, %for.inc96 ]
  %call67 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #8
  %call69 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %for.body65
  br i1 %cmp75284, label %for.body77.lr.ph, label %for.inc96

for.body77.lr.ph:                                 ; preds = %for.cond74.preheader
  %13 = sext i32 %count.2290 to i64
  br label %for.body77

if.then72:                                        ; preds = %for.body65
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str29, i64 0, i64 0)) #9
  unreachable

for.body77:                                       ; preds = %for.body77.lr.ph, %if.end81
  %indvars.iv308 = phi i64 [ %13, %for.body77.lr.ph ], [ %indvars.iv.next309, %if.end81 ]
  %indvars.iv306 = phi i64 [ 0, %for.body77.lr.ph ], [ %indvars.iv.next307, %if.end81 ]
  %ind.1287 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc94, %if.end81 ]
  %count.3285 = phi i32 [ %count.2290, %for.body77.lr.ph ], [ %inc91, %if.end81 ]
  %14 = load i32* %Nnzero, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv308 to i32
  %cmp78 = icmp eq i32 %15, %14
  br i1 %cmp78, label %for.inc96, label %if.end81

if.end81:                                         ; preds = %for.body77
  %add.ptr84 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv306
  %call86 = call i8* @strncpy(i8* %call55, i8* %add.ptr84, i64 %idx.ext60) #8
  %call87 = call i32 @atoi(i8* %call55) #11
  %arrayidx90 = getelementptr inbounds i32* %rowind, i64 %indvars.iv308
  store i32 %call87, i32* %arrayidx90, align 4, !tbaa !3
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %inc91 = add nsw i32 %count.3285, 1
  %indvars.iv.next307 = add i64 %indvars.iv306, %idx.ext60
  %inc94 = add nsw i32 %ind.1287, 1
  %cmp75 = icmp slt i32 %inc94, %12
  br i1 %cmp75, label %for.body77, label %for.inc96

for.inc96:                                        ; preds = %if.end81, %for.body77, %for.cond74.preheader
  %count.3.lcssa = phi i32 [ %count.2290, %for.cond74.preheader ], [ %count.3285, %for.body77 ], [ %inc91, %if.end81 ]
  %inc97 = add nsw i32 %i.1291, 1
  %16 = load i32* %Indcrd, align 4, !tbaa !3
  %cmp63 = icmp slt i32 %inc97, %16
  br i1 %cmp63, label %for.body65, label %for.end98

for.end98:                                        ; preds = %for.inc96, %if.end59
  call void @free(i8* %call55) #8
  %17 = load i8* %call2, align 1, !tbaa !1
  %cmp101 = icmp eq i8 %17, 80
  br i1 %cmp101, label %if.end200, label %if.then103

if.then103:                                       ; preds = %for.end98
  %cmp106 = icmp eq i8 %17, 67
  %18 = load i32* %Nnzero, align 4, !tbaa !3
  %mul = zext i1 %cmp106 to i32
  %Nentries.0 = shl nsw i32 %18, %mul
  %19 = load i32* %Valwidth, align 4, !tbaa !3
  %add110 = add nsw i32 %19, 1
  %conv111 = sext i32 %add110 to i64
  %call112 = call noalias i8* @malloc(i64 %conv111) #8
  %cmp113 = icmp eq i8* %call112, null
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.then103
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end116:                                        ; preds = %if.then103
  %idx.ext117 = sext i32 %19 to i64
  %add.ptr118 = getelementptr inbounds i8* %call112, i64 %idx.ext117
  store i8 0, i8* %add.ptr118, align 1, !tbaa !1
  %20 = load i32* %Valcrd, align 4, !tbaa !3
  %cmp120281 = icmp sgt i32 %20, 0
  br i1 %cmp120281, label %for.body122.lr.ph, label %for.end199

for.body122.lr.ph:                                ; preds = %if.end116
  %21 = load i32* %Valflag, align 4, !tbaa !3
  %cmp131 = icmp eq i32 %21, 68
  %22 = load i32* %Valperline, align 4, !tbaa !3
  %cmp140275 = icmp slt i32 %22, 1
  %cmp152 = icmp eq i32 %21, 70
  %conv181 = trunc i32 %21 to i8
  %23 = sub i32 0, %22
  br label %for.body122

for.body122:                                      ; preds = %for.body122.lr.ph, %for.inc197
  %i.2283 = phi i32 [ 0, %for.body122.lr.ph ], [ %inc198, %for.inc197 ]
  %count.4282 = phi i32 [ 0, %for.body122.lr.ph ], [ %count.5.lcssa, %for.inc197 ]
  %call124 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call8) #8
  %call126 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %for.body122
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str30, i64 0, i64 0)) #9
  unreachable

if.end130:                                        ; preds = %for.body122
  br i1 %cmp131, label %while.cond.preheader, label %for.cond139.preheader

while.cond.preheader:                             ; preds = %if.end130
  %call135272 = call i8* @strchr(i8* %0, i32 68) #11
  %tobool273 = icmp eq i8* %call135272, null
  br i1 %tobool273, label %for.cond139.preheader, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call135274 = phi i8* [ %call135, %while.body ], [ %call135272, %while.cond.preheader ]
  store i8 69, i8* %call135274, align 1, !tbaa !1
  %call135 = call i8* @strchr(i8* %0, i32 68) #11
  %tobool = icmp eq i8* %call135, null
  br i1 %tobool, label %for.cond139.preheader, label %while.body

for.cond139.preheader:                            ; preds = %while.cond.preheader, %while.body, %if.end130
  %cmp143276 = icmp eq i32 %count.4282, %Nentries.0
  %or.cond277 = or i1 %cmp140275, %cmp143276
  br i1 %or.cond277, label %for.inc197, label %if.end146.lr.ph

if.end146.lr.ph:                                  ; preds = %for.cond139.preheader
  %24 = sext i32 %count.4282 to i64
  %25 = sub i32 %count.4282, %Nentries.0
  %26 = icmp ult i32 %25, %23
  %umax = select i1 %26, i32 %23, i32 %25
  %27 = sub i32 0, %umax
  br label %if.end146

if.end146:                                        ; preds = %if.end146.lr.ph, %if.end188
  %indvars.iv303 = phi i64 [ %24, %if.end146.lr.ph ], [ %indvars.iv.next304, %if.end188 ]
  %indvars.iv301 = phi i64 [ 0, %if.end146.lr.ph ], [ %indvars.iv.next302, %if.end188 ]
  %ind.2280 = phi i32 [ 0, %if.end146.lr.ph ], [ %inc195, %if.end188 ]
  %add.ptr149 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv301
  %call151 = call i8* @strncpy(i8* %call112, i8* %add.ptr149, i64 %idx.ext117) #8
  br i1 %cmp152, label %if.end188, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end146
  %call154 = call i8* @strchr(i8* %call112, i32 69) #11
  %cmp155 = icmp eq i8* %call154, null
  br i1 %cmp155, label %if.then157, label %if.end188

if.then157:                                       ; preds = %land.lhs.true
  %call158 = call i64 @strlen(i8* %call112) #11
  %conv159 = trunc i64 %call158 to i32
  %add160 = add i32 %conv159, 1
  %28 = sext i32 %add160 to i64
  br label %for.cond161

for.cond161:                                      ; preds = %for.body164, %if.then157
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body164 ], [ %28, %if.then157 ]
  %j.0 = phi i32 [ %sub165, %for.body164 ], [ %add160, %if.then157 ]
  %29 = trunc i64 %indvars.iv to i32
  %cmp162 = icmp sgt i32 %29, -1
  br i1 %cmp162, label %for.body164, label %if.end188

for.body164:                                      ; preds = %for.cond161
  %sub165 = add nsw i32 %j.0, -1
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds i8* %call112, i64 %idxprom166
  %30 = load i8* %arrayidx167, align 1, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8* %call112, i64 %indvars.iv
  store i8 %30, i8* %arrayidx169, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, -1
  switch i8 %30, label %for.cond161 [
    i8 43, label %if.then180
    i8 45, label %if.then180
  ]

if.then180:                                       ; preds = %for.body164, %for.body164
  store i8 %conv181, i8* %arrayidx167, align 1, !tbaa !1
  br label %if.end188

if.end188:                                        ; preds = %for.cond161, %if.end146, %if.then180, %land.lhs.true
  %call189 = call double @atof(i8* %call112) #11
  %arrayidx191 = getelementptr inbounds double* %val, i64 %indvars.iv303
  store double %call189, double* %arrayidx191, align 8, !tbaa !4
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %indvars.iv.next302 = add i64 %indvars.iv301, %idx.ext117
  %inc195 = add nsw i32 %ind.2280, 1
  %exitcond = icmp eq i32 %inc195, %27
  br i1 %exitcond, label %for.cond139.for.inc197_crit_edge, label %if.end146

for.cond139.for.inc197_crit_edge:                 ; preds = %if.end188
  %31 = sub i32 %count.4282, %umax
  br label %for.inc197

for.inc197:                                       ; preds = %for.cond139.for.inc197_crit_edge, %for.cond139.preheader
  %count.5.lcssa = phi i32 [ %31, %for.cond139.for.inc197_crit_edge ], [ %count.4282, %for.cond139.preheader ]
  %inc198 = add nsw i32 %i.2283, 1
  %32 = load i32* %Valcrd, align 4, !tbaa !3
  %cmp120 = icmp slt i32 %inc198, %32
  br i1 %cmp120, label %for.body122, label %for.end199

for.end199:                                       ; preds = %for.inc197, %if.end116
  call void @free(i8* %call112) #8
  br label %if.end200

if.end200:                                        ; preds = %for.end98, %for.end199
  call void @CVfree(i8* %call) #8
  call void @CVfree(i8* %call1) #8
  call void @CVfree(i8* %call2) #8
  call void @CVfree(i8* %call3) #8
  call void @CVfree(i8* %call4) #8
  call void @CVfree(i8* %call5) #8
  call void @CVfree(i8* %call6) #8
  call void @CVfree(i8* %call7) #8
  %call201 = call i32 @fclose(%struct._IO_FILE* %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end200 ]
  call void @llvm.lifetime.end(i64 8192, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseIfmt(i8* %format, i32* nocapture %pperline, i32* nocapture %pwidth) #0 {
entry:
  tail call fastcc void @upcase(i8* %format) #9
  %call2 = tail call i8* @strchr(i8* %format, i32 40) #11
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call i8* @strchr(i8* %format, i32 73) #11
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i8* @strchr(i8* %format, i32 41) #11
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  store i8 0, i8* %call3, align 1, !tbaa !1
  %add.ptr = getelementptr inbounds i8* %call2, i64 1
  %call11 = tail call i32 @atoi(i8* %add.ptr) #11
  store i32 %call11, i32* %pperline, align 4, !tbaa !3
  store i8 73, i8* %call3, align 1, !tbaa !1
  store i8 0, i8* %call7, align 1, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8* %call3, i64 1
  %call13 = tail call i32 @atoi(i8* %add.ptr12) #11
  store i32 %call13, i32* %pwidth, align 4, !tbaa !3
  store i8 41, i8* %call7, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.end6, %if.end, %entry, %if.end10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseRfmt(i8* %fmt, i32* nocapture %perline, i32* nocapture %width, i32* nocapture %prec, i32* nocapture %flag) #0 {
entry:
  %cmp = icmp eq i8* %fmt, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %perline, align 4, !tbaa !3
  store i32 0, i32* %width, align 4, !tbaa !3
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @upcase(i8* %fmt) #9
  %call = tail call i8* @strchr(i8* %fmt, i32 40) #11
  %cmp5 = icmp eq i8* %call, null
  %fmt.call = select i1 %cmp5, i8* %fmt, i8* %call
  %call9 = tail call i8* @strchr(i8* %fmt.call, i32 41) #11
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.end18, label %while.cond

while.cond:                                       ; preds = %if.end, %while.cond
  %tmp2.0 = phi i8* [ %call13, %while.cond ], [ %call9, %if.end ]
  %add.ptr = getelementptr inbounds i8* %tmp2.0, i64 1
  %call13 = tail call i8* @strchr(i8* %add.ptr, i32 41) #11
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end18

if.end18:                                         ; preds = %if.end, %while.end
  %call19 = tail call i8* @strchr(i8* %fmt.call, i32 80) #11
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.end47, label %if.then21

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i8* @strchr(i8* %fmt.call, i32 40) #11
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.end47, label %if.then24

if.then24:                                        ; preds = %if.then21
  %incdec.ptr = getelementptr inbounds i8* %call19, i64 1
  %0 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %0, 44
  %incdec.ptr29 = getelementptr inbounds i8* %call19, i64 2
  %incdec.ptr29.incdec.ptr = select i1 %cmp26, i8* %incdec.ptr29, i8* %incdec.ptr
  %add.ptr32 = getelementptr inbounds i8* %call22, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr29.incdec.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr32.sum = add i64 %idx.ext, 1
  %add.ptr351 = getelementptr inbounds i8* %call22, i64 %add.ptr32.sum
  %1 = load i8* %add.ptr351, align 1, !tbaa !1
  %cmp372 = icmp eq i8 %1, 0
  br i1 %cmp372, label %while.end43, label %while.body39

while.body39:                                     ; preds = %if.then24, %while.body39
  %2 = phi i8 [ %3, %while.body39 ], [ %1, %if.then24 ]
  %tmp2.13 = phi i8* [ %incdec.ptr42, %while.body39 ], [ %add.ptr32, %if.then24 ]
  store i8 %2, i8* %tmp2.13, align 1, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8* %tmp2.13, i64 1
  %add.ptr35 = getelementptr inbounds i8* %tmp2.13, i64 %add.ptr32.sum
  %3 = load i8* %add.ptr35, align 1, !tbaa !1
  %cmp37 = icmp eq i8 %3, 0
  br i1 %cmp37, label %while.end43, label %while.body39

while.end43:                                      ; preds = %while.body39, %if.then24
  %call44 = tail call i8* @strchr(i8* %fmt.call, i32 41) #11
  %add.ptr45 = getelementptr inbounds i8* %call44, i64 1
  store i8 0, i8* %add.ptr45, align 1, !tbaa !1
  br label %if.end47

if.end47:                                         ; preds = %if.then21, %if.end18, %while.end43
  %call48 = tail call i8* @strchr(i8* %fmt.call, i32 69) #11
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end47
  store i32 69, i32* %flag, align 4, !tbaa !3
  br label %if.end65

if.else:                                          ; preds = %if.end47
  %call52 = tail call i8* @strchr(i8* %fmt.call, i32 68) #11
  %cmp53 = icmp eq i8* %call52, null
  br i1 %cmp53, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.else
  store i32 68, i32* %flag, align 4, !tbaa !3
  br label %if.end65

if.else56:                                        ; preds = %if.else
  %call57 = tail call i8* @strchr(i8* %fmt.call, i32 70) #11
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %if.else61, label %if.then60

if.then60:                                        ; preds = %if.else56
  store i32 70, i32* %flag, align 4, !tbaa !3
  br label %if.end65

if.else61:                                        ; preds = %if.else56
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([43 x i8]* @.str61, i64 0, i64 0), i8* %fmt.call) #8
  br label %return

if.end65:                                         ; preds = %if.then55, %if.then60, %if.then51
  %5 = phi i32 [ 68, %if.then55 ], [ 70, %if.then60 ], [ 69, %if.then51 ]
  %call67 = tail call i8* @strchr(i8* %fmt.call, i32 40) #11
  %call69 = tail call i8* @strchr(i8* %fmt.call, i32 41) #11
  %call71 = tail call i8* @strchr(i8* %fmt.call, i32 %5) #11
  %call73 = tail call i8* @strchr(i8* %fmt.call, i32 46) #11
  store i8 0, i8* %call71, align 1, !tbaa !1
  %add.ptr74 = getelementptr inbounds i8* %call67, i64 1
  %call75 = tail call i32 @atoi(i8* %add.ptr74) #11
  store i32 %call75, i32* %perline, align 4, !tbaa !3
  %6 = load i32* %flag, align 4, !tbaa !3
  %conv76 = trunc i32 %6 to i8
  store i8 %conv76, i8* %call71, align 1, !tbaa !1
  %cmp77 = icmp eq i8* %call73, null
  store i8 0, i8* %call69, align 1, !tbaa !1
  br i1 %cmp77, label %if.else84, label %if.then79

if.then79:                                        ; preds = %if.end65
  %add.ptr80 = getelementptr inbounds i8* %call73, i64 1
  %call81 = tail call i32 @atoi(i8* %add.ptr80) #11
  store i32 %call81, i32* %prec, align 4, !tbaa !3
  store i8 41, i8* %call69, align 1, !tbaa !1
  store i8 0, i8* %call73, align 1, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8* %call71, i64 1
  %call83 = tail call i32 @atoi(i8* %add.ptr82) #11
  store i32 %call83, i32* %width, align 4, !tbaa !3
  store i8 46, i8* %call73, align 1, !tbaa !1
  br label %return

if.else84:                                        ; preds = %if.end65
  %add.ptr85 = getelementptr inbounds i8* %call71, i64 1
  %call86 = tail call i32 @atoi(i8* %add.ptr85) #11
  store i32 %call86, i32* %width, align 4, !tbaa !3
  store i8 46, i8* %call69, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then79, %if.else84, %if.else61, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare void @CVfree(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newmat_double(i8* %filename, i32* nocapture %M, i32* nocapture %N, i32* nocapture %nonzeros, i32** nocapture %colptr, i32** nocapture %rowind, double** nocapture %val) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %Type = alloca i8*, align 8
  %call = call i32 @readHB_info(i8* %filename, i32* %M, i32* %N, i32* %nonzeros, i8** %Type, i32* %Nrhs) #9
  %0 = load i32* %N, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias i8* @malloc(i64 %mul) #8
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %colptr, align 8, !tbaa !0
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32* %nonzeros, align 4, !tbaa !3
  %conv3 = sext i32 %2 to i64
  %mul4 = shl nsw i64 %conv3, 2
  %call5 = call noalias i8* @malloc(i64 %mul4) #8
  %3 = bitcast i8* %call5 to i32*
  store i32* %3, i32** %rowind, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str32, i64 0, i64 0)) #9
  unreachable

if.end9:                                          ; preds = %if.end
  %4 = load i8** %Type, align 8, !tbaa !0
  %5 = load i8* %4, align 1, !tbaa !1
  switch i8 %5, label %if.then26 [
    i8 67, label %if.then13
    i8 80, label %if.end9.if.end35_crit_edge
  ]

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  %.pre = load double** %val, align 8, !tbaa !0
  br label %if.end35

if.then13:                                        ; preds = %if.end9
  %mul16 = shl nsw i64 %conv3, 4
  %call17 = call noalias i8* @malloc(i64 %mul16) #8
  %6 = bitcast i8* %call17 to double*
  store double* %6, double** %val, align 8, !tbaa !0
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then20, label %if.end35

if.then20:                                        ; preds = %if.then13
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #9
  unreachable

if.then26:                                        ; preds = %if.end9
  %mul28 = shl nsw i64 %conv3, 3
  %call29 = call noalias i8* @malloc(i64 %mul28) #8
  %7 = bitcast i8* %call29 to double*
  store double* %7, double** %val, align 8, !tbaa !0
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then26
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #9
  unreachable

if.end35:                                         ; preds = %if.then26, %if.then13, %if.end9.if.end35_crit_edge
  %8 = phi double* [ %.pre, %if.end9.if.end35_crit_edge ], [ %6, %if.then13 ], [ %7, %if.then26 ]
  %9 = load i32** %colptr, align 8, !tbaa !0
  %10 = load i32** %rowind, align 8, !tbaa !0
  %call36 = call i32 @readHB_mat_double(i8* %filename, i32* %9, i32* %10, double* %8) #9
  ret i32 %call36
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
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %0) #1
  %1 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %1) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call9 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %arraydecay6, i8* %arraydecay7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay8) #9
  %3 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %3, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str34, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %4)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = load i8* %arraydecay8, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %6, 70
  br i1 %cmp14, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str35, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %7)
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str36, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %9)
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %11 = load i8* %arraydecay3, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %11, 67
  %12 = load i32* %Nrow, align 4, !tbaa !3
  %mul = zext i1 %cmp22 to i32
  %Nentries.0 = shl nsw i32 %12, %mul
  %arrayidx26 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 1
  %13 = load i8* %arrayidx26, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %13, 71
  %. = select i1 %cmp28, i32 2, i32 1
  %arrayidx32 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 2
  %14 = load i8* %arrayidx32, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %14, 88
  %inc37 = zext i1 %cmp34 to i32
  %nvecs.1 = add i32 %inc37, %.
  switch i8 %AuxType, label %if.end59 [
    i8 71, label %land.lhs.true
    i8 88, label %land.lhs.true52
  ]

land.lhs.true:                                    ; preds = %if.end19
  br i1 %cmp28, label %if.end59, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str37, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %15)
  br label %cleanup

land.lhs.true52:                                  ; preds = %if.end19
  br i1 %cmp34, label %if.end59, label %if.then57

if.then57:                                        ; preds = %land.lhs.true52
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str38, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %17)
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true, %if.end19, %land.lhs.true52
  call fastcc void @ParseRfmt(i8* %arraydecay7, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #9
  %19 = load i32* %Rhsperline, align 4, !tbaa !3
  %20 = load i32* %Rhswidth, align 4, !tbaa !3
  %mul62 = mul nsw i32 %20, %19
  %21 = load i32* %Ptrcrd, align 4, !tbaa !3
  %22 = load i32* %Indcrd, align 4, !tbaa !3
  %add = add i32 %22, %21
  %23 = load i32* %Valcrd, align 4, !tbaa !3
  %add63 = add i32 %add, %23
  %cmp64333 = icmp sgt i32 %add63, 0
  br i1 %cmp64333, label %for.body, label %for.end

for.body:                                         ; preds = %if.end59, %for.body
  %i.0334 = phi i32 [ %inc68, %for.body ], [ 0, %if.end59 ]
  %call67 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %inc68 = add nsw i32 %i.0334, 1
  %exitcond340 = icmp eq i32 %inc68, %add63
  br i1 %exitcond340, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end59
  %AuxType.off = add i8 %AuxType, -70
  %switch = icmp ult i8 %AuxType.off, 2
  br i1 %switch, label %for.end.if.end81_crit_edge, label %if.else78

for.end.if.end81_crit_edge:                       ; preds = %for.end
  %cmp70 = icmp eq i8 %AuxType, 70
  %.mux = select i1 %cmp70, i32 0, i32 %Nentries.0
  %sub82.pre = add i32 %nvecs.1, -1
  %mul83.pre = mul i32 %sub82.pre, %Nentries.0
  br label %if.end81

if.else78:                                        ; preds = %for.end
  %sub = add nsw i32 %nvecs.1, -1
  %mul79 = mul nsw i32 %sub, %Nentries.0
  br label %if.end81

if.end81:                                         ; preds = %for.end.if.end81_crit_edge, %if.else78
  %mul83.pre-phi = phi i32 [ %mul83.pre, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  %start.0 = phi i32 [ %.mux, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  %call85 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call87 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast = ptrtoint i8* %call87 to i64
  %sub.ptr.rhs.cast = ptrtoint [8192 x i8]* %line to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv89 = trunc i64 %sub.ptr.sub to i32
  %cmp91327 = icmp sgt i32 %start.0, 0
  br i1 %cmp91327, label %for.body93, label %for.end112

for.body93:                                       ; preds = %if.end81, %if.end108
  %linel.0330 = phi i32 [ %linel.1, %if.end108 ], [ %conv89, %if.end81 ]
  %i.1329 = phi i32 [ %inc111, %if.end108 ], [ 0, %if.end81 ]
  %col.0328 = phi i32 [ %add109, %if.end108 ], [ 0, %if.end81 ]
  %cmp94 = icmp slt i32 %mul62, %linel.0330
  %cond = select i1 %cmp94, i32 %mul62, i32 %linel.0330
  %cmp96 = icmp slt i32 %col.0328, %cond
  br i1 %cmp96, label %if.end108, label %if.then98

if.then98:                                        ; preds = %for.body93
  %call100 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call102 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast104 = ptrtoint i8* %call102 to i64
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast
  %conv107 = trunc i64 %sub.ptr.sub106 to i32
  br label %if.end108

if.end108:                                        ; preds = %for.body93, %if.then98
  %col.1 = phi i32 [ 0, %if.then98 ], [ %col.0328, %for.body93 ]
  %linel.1 = phi i32 [ %conv107, %if.then98 ], [ %linel.0330, %for.body93 ]
  %add109 = add nsw i32 %20, %col.1
  %inc111 = add nsw i32 %i.1329, 1
  %exitcond339 = icmp eq i32 %inc111, %start.0
  br i1 %exitcond339, label %for.end112, label %for.body93

for.end112:                                       ; preds = %if.end108, %if.end81
  %linel.0.lcssa = phi i32 [ %conv89, %if.end81 ], [ %linel.1, %if.end108 ]
  %col.0.lcssa = phi i32 [ 0, %if.end81 ], [ %add109, %if.end108 ]
  %24 = load i32* %Rhsflag, align 4, !tbaa !3
  %cmp113 = icmp eq i32 %24, 68
  br i1 %cmp113, label %while.cond.preheader, label %if.end120

while.cond.preheader:                             ; preds = %for.end112
  %call117324 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool325 = icmp eq i8* %call117324, null
  br i1 %tobool325, label %if.end120, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call117326 = phi i8* [ %call117, %while.body ], [ %call117324, %while.cond.preheader ]
  store i8 69, i8* %call117326, align 1, !tbaa !1
  %call117 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool = icmp eq i8* %call117, null
  br i1 %tobool, label %if.end120, label %while.body

if.end120:                                        ; preds = %while.cond.preheader, %while.body, %for.end112
  %add121 = add nsw i32 %20, 1
  %conv122 = sext i32 %add121 to i64
  %call123 = call noalias i8* @malloc(i64 %conv122) #8
  %cmp124 = icmp eq i8* %call123, null
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %if.end120
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end127:                                        ; preds = %if.end120
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8* %call123, i64 %idx.ext
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %25 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp129320 = icmp sgt i32 %25, 0
  br i1 %cmp129320, label %for.cond132.preheader.lr.ph, label %for.end245

for.cond132.preheader.lr.ph:                      ; preds = %if.end127
  %cmp133309 = icmp sgt i32 %Nentries.0, 0
  %cmp217314 = icmp sgt i32 %mul83.pre-phi, 0
  %cmp172 = icmp eq i32 %24, 70
  %conv201 = trunc i32 %24 to i8
  br label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %for.cond132.preheader.lr.ph, %for.inc243
  %rhsi.0323 = phi i32 [ 0, %for.cond132.preheader.lr.ph ], [ %inc244, %for.inc243 ]
  %linel.2322 = phi i32 [ %linel.0.lcssa, %for.cond132.preheader.lr.ph ], [ %linel.5.lcssa, %for.inc243 ]
  %col.2321 = phi i32 [ %col.0.lcssa, %for.cond132.preheader.lr.ph ], [ %col.5.lcssa, %for.inc243 ]
  br i1 %cmp133309, label %for.body135, label %for.cond216.loopexit

for.body135:                                      ; preds = %for.cond132.preheader, %if.end208
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %if.end208 ], [ 0, %for.cond132.preheader ]
  %linel.3312 = phi i32 [ %linel.4, %if.end208 ], [ %linel.2322, %for.cond132.preheader ]
  %col.3310 = phi i32 [ %add212, %if.end208 ], [ %col.2321, %for.cond132.preheader ]
  %cmp136 = icmp slt i32 %mul62, %linel.3312
  %cond141 = select i1 %cmp136, i32 %mul62, i32 %linel.3312
  %cmp142 = icmp slt i32 %col.3310, %cond141
  br i1 %cmp142, label %if.end166, label %if.then144

if.then144:                                       ; preds = %for.body135
  %call146 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call148 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast150 = ptrtoint i8* %call148 to i64
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast
  %conv153 = trunc i64 %sub.ptr.sub152 to i32
  br i1 %cmp113, label %while.cond157.preheader, label %if.end166

while.cond157.preheader:                          ; preds = %if.then144
  %call159306 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool160307 = icmp eq i8* %call159306, null
  br i1 %tobool160307, label %if.end166, label %while.body161

while.body161:                                    ; preds = %while.cond157.preheader, %while.body161
  %call159308 = phi i8* [ %call159, %while.body161 ], [ %call159306, %while.cond157.preheader ]
  store i8 69, i8* %call159308, align 1, !tbaa !1
  %call159 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool160 = icmp eq i8* %call159, null
  br i1 %tobool160, label %if.end166, label %while.body161

if.end166:                                        ; preds = %while.cond157.preheader, %while.body161, %if.then144, %for.body135
  %col.4 = phi i32 [ %col.3310, %for.body135 ], [ 0, %if.then144 ], [ 0, %while.body161 ], [ 0, %while.cond157.preheader ]
  %linel.4 = phi i32 [ %linel.3312, %for.body135 ], [ %conv153, %if.then144 ], [ %conv153, %while.body161 ], [ %conv153, %while.cond157.preheader ]
  %idx.ext168 = sext i32 %col.4 to i64
  %add.ptr169 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %idx.ext168
  %call171 = call i8* @strncpy(i8* %call123, i8* %add.ptr169, i64 %idx.ext) #8
  br i1 %cmp172, label %if.end208, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.end166
  %call175 = call i8* @strchr(i8* %call123, i32 69) #11
  %cmp176 = icmp eq i8* %call175, null
  br i1 %cmp176, label %if.then178, label %if.end208

if.then178:                                       ; preds = %land.lhs.true174
  %call179 = call i64 @strlen(i8* %call123) #11
  %conv180 = trunc i64 %call179 to i32
  %add181 = add i32 %conv180, 1
  %26 = sext i32 %add181 to i64
  br label %for.cond182

for.cond182:                                      ; preds = %for.body185, %if.then178
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body185 ], [ %26, %if.then178 ]
  %j.0 = phi i32 [ %sub186, %for.body185 ], [ %add181, %if.then178 ]
  %27 = trunc i64 %indvars.iv to i32
  %cmp183 = icmp sgt i32 %27, -1
  br i1 %cmp183, label %for.body185, label %if.end208

for.body185:                                      ; preds = %for.cond182
  %sub186 = add nsw i32 %j.0, -1
  %idxprom = sext i32 %sub186 to i64
  %arrayidx187 = getelementptr inbounds i8* %call123, i64 %idxprom
  %28 = load i8* %arrayidx187, align 1, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8* %call123, i64 %indvars.iv
  store i8 %28, i8* %arrayidx189, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, -1
  switch i8 %28, label %for.cond182 [
    i8 43, label %if.then200
    i8 45, label %if.then200
  ]

if.then200:                                       ; preds = %for.body185, %for.body185
  store i8 %conv201, i8* %arrayidx187, align 1, !tbaa !1
  br label %if.end208

if.end208:                                        ; preds = %for.cond182, %if.end166, %if.then200, %land.lhs.true174
  %call209 = call double @atof(i8* %call123) #11
  %arrayidx211 = getelementptr inbounds double* %b, i64 %indvars.iv336
  store double %call209, double* %arrayidx211, align 8, !tbaa !4
  %add212 = add nsw i32 %20, %col.4
  %indvars.iv.next337 = add i64 %indvars.iv336, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next337 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %Nentries.0
  br i1 %exitcond, label %for.cond216.loopexit, label %for.body135

for.cond216.loopexit:                             ; preds = %if.end208, %for.cond132.preheader
  %linel.3.lcssa = phi i32 [ %linel.2322, %for.cond132.preheader ], [ %linel.4, %if.end208 ]
  %col.3.lcssa = phi i32 [ %col.2321, %for.cond132.preheader ], [ %add212, %if.end208 ]
  br i1 %cmp217314, label %for.body219, label %for.inc243

for.body219:                                      ; preds = %for.cond216.loopexit, %if.end238
  %linel.5317 = phi i32 [ %linel.6, %if.end238 ], [ %linel.3.lcssa, %for.cond216.loopexit ]
  %i.3316 = phi i32 [ %inc241, %if.end238 ], [ 0, %for.cond216.loopexit ]
  %col.5315 = phi i32 [ %add239, %if.end238 ], [ %col.3.lcssa, %for.cond216.loopexit ]
  %cmp220 = icmp slt i32 %mul62, %linel.5317
  %cond225 = select i1 %cmp220, i32 %mul62, i32 %linel.5317
  %cmp226 = icmp slt i32 %col.5315, %cond225
  br i1 %cmp226, label %if.end238, label %if.then228

if.then228:                                       ; preds = %for.body219
  %call230 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call232 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast234 = ptrtoint i8* %call232 to i64
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast
  %conv237 = trunc i64 %sub.ptr.sub236 to i32
  br label %if.end238

if.end238:                                        ; preds = %for.body219, %if.then228
  %col.6 = phi i32 [ 0, %if.then228 ], [ %col.5315, %for.body219 ]
  %linel.6 = phi i32 [ %conv237, %if.then228 ], [ %linel.5317, %for.body219 ]
  %add239 = add nsw i32 %20, %col.6
  %inc241 = add nsw i32 %i.3316, 1
  %exitcond338 = icmp eq i32 %inc241, %mul83.pre-phi
  br i1 %exitcond338, label %for.inc243, label %for.body219

for.inc243:                                       ; preds = %if.end238, %for.cond216.loopexit
  %linel.5.lcssa = phi i32 [ %linel.3.lcssa, %for.cond216.loopexit ], [ %linel.6, %if.end238 ]
  %col.5.lcssa = phi i32 [ %col.3.lcssa, %for.cond216.loopexit ], [ %add239, %if.end238 ]
  %inc244 = add nsw i32 %rhsi.0323, 1
  %29 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp129 = icmp slt i32 %inc244, %29
  br i1 %cmp129, label %for.cond132.preheader, label %for.end245

for.end245:                                       ; preds = %for.inc243, %if.end127
  call void @free(i8* %call123) #8
  %call246 = call i32 @fclose(%struct._IO_FILE* %call) #8
  %30 = load i32* %Nrhs, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end245, %if.then57, %if.then46, %if.then16, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then46 ], [ 0, %if.then57 ], [ %30, %for.end245 ]
  call void @llvm.lifetime.end(i64 8192, i8* %1) #1
  call void @llvm.lifetime.end(i64 73, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @readHB_newaux_double(i8* %filename, i8 signext %AuxType, double** nocapture %b) #0 {
entry:
  %Nrhs = alloca i32, align 4
  %M = alloca i32, align 4
  %N = alloca i32, align 4
  %nonzeros = alloca i32, align 4
  %Type = alloca i8*, align 8
  %call = call i32 @readHB_info(i8* %filename, i32* %M, i32* %N, i32* %nonzeros, i8** %Type, i32* %Nrhs) #9
  %0 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %1)
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8** %Type, align 8, !tbaa !0
  %4 = load i8* %3, align 1, !tbaa !1
  %cmp2 = icmp eq i8 %4, 67
  br i1 %cmp2, label %if.then4, label %if.else15

if.then4:                                         ; preds = %if.else
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %filename) #8
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str41, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %6)
  %8 = load i32* %M, align 4, !tbaa !3
  %9 = load i32* %Nrhs, align 4, !tbaa !3
  %mul = mul nsw i32 %9, %8
  %conv7 = sext i32 %mul to i64
  %mul9 = shl nsw i64 %conv7, 4
  %call10 = call noalias i8* @malloc(i64 %mul9) #8
  %10 = bitcast i8* %call10 to double*
  store double* %10, double** %b, align 8, !tbaa !0
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then4
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.then4
  %call14 = call i32 @readHB_aux_double(i8* %filename, i8 signext %AuxType, double* %10) #9
  br label %return

if.else15:                                        ; preds = %if.else
  %11 = load i32* %M, align 4, !tbaa !3
  %mul16 = mul nsw i32 %11, %0
  %conv17 = sext i32 %mul16 to i64
  %mul18 = shl nsw i64 %conv17, 3
  %call19 = call noalias i8* @malloc(i64 %mul18) #8
  %12 = bitcast i8* %call19 to double*
  store double* %12, double** %b, align 8, !tbaa !0
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else15
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #9
  unreachable

if.end23:                                         ; preds = %if.else15
  %call24 = call i32 @readHB_aux_double(i8* %filename, i8 signext %AuxType, double* %12) #9
  br label %return

return:                                           ; preds = %if.end23, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call14, %if.end ], [ %call24, %if.end23 ]
  ret i32 %retval.0
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
  %0 = load i8* %Type, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 67
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %nz, 1
  %mul3 = shl nsw i32 %M, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %nvalentries.0 = phi i32 [ %mul, %if.then ], [ %nz, %entry ]
  %nrhsentries.0 = phi i32 [ %mul3, %if.then ], [ %M, %entry ]
  %cmp4 = icmp eq i8* %filename, null
  br i1 %cmp4, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.end
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp7 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %return

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.else12
  %out_file.0 = phi %struct._IO_FILE* [ %call, %if.then6 ], [ %2, %if.else12 ]
  %cmp14 = icmp eq i8* %Ptrfmt, null
  %.Ptrfmt = select i1 %cmp14, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* %Ptrfmt
  call fastcc void @ParseIfmt(i8* %.Ptrfmt, i32* %Ptrperline, i32* %Ptrwidth) #9
  %arraydecay = getelementptr inbounds [16 x i8]* %pformat, i64 0, i64 0
  %3 = load i32* %Ptrwidth, align 4, !tbaa !3
  %call19 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %3) #8
  %add = add nsw i32 %N, 1
  %4 = load i32* %Ptrperline, align 4, !tbaa !3
  %div = sdiv i32 %add, %4
  %rem = srem i32 %add, %4
  %not.cmp21 = icmp ne i32 %rem, 0
  %inc = zext i1 %not.cmp21 to i32
  %ptrcrd.0 = add nsw i32 %inc, %div
  %cmp25 = icmp eq i8* %Indfmt, null
  %.Ptrfmt.Indfmt = select i1 %cmp25, i8* %.Ptrfmt, i8* %Indfmt
  call fastcc void @ParseIfmt(i8* %.Ptrfmt.Indfmt, i32* %Indperline, i32* %Indwidth) #9
  %arraydecay30 = getelementptr inbounds [16 x i8]* %iformat, i64 0, i64 0
  %5 = load i32* %Indwidth, align 4, !tbaa !3
  %call31 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay30, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %5) #8
  %6 = load i32* %Indperline, align 4, !tbaa !3
  %div32 = sdiv i32 %nz, %6
  %rem33 = srem i32 %nz, %6
  %not.cmp34 = icmp ne i32 %rem33, 0
  %inc37 = zext i1 %not.cmp34 to i32
  %indcrd.0 = add nsw i32 %inc37, %div32
  %7 = load i8* %Type, align 1, !tbaa !1
  %cmp41 = icmp eq i8 %7, 80
  br i1 %cmp41, label %if.end71, label %if.then43

if.then43:                                        ; preds = %if.end13
  %cmp44 = icmp eq i8* %Valfmt, null
  %.Valfmt = select i1 %cmp44, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), i8* %Valfmt
  call fastcc void @ParseRfmt(i8* %.Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #9
  %8 = load i32* %Valflag, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %8, 68
  br i1 %cmp49, label %if.end53.thread, label %if.end53

if.end53.thread:                                  ; preds = %if.then43
  %call52 = call i8* @strchr(i8* %.Valfmt, i32 68) #11
  store i8 69, i8* %call52, align 1, !tbaa !1
  %arraydecay57520 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0
  %9 = load i32* %Valwidth, align 4, !tbaa !3
  %10 = load i32* %Valprec, align 4, !tbaa !3
  br label %if.else59

if.end53:                                         ; preds = %if.then43
  %cmp54 = icmp eq i32 %8, 70
  %arraydecay57 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0
  %11 = load i32* %Valwidth, align 4, !tbaa !3
  %12 = load i32* %Valprec, align 4, !tbaa !3
  br i1 %cmp54, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.end53
  %call58 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay57, i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i32 %11, i32 %12) #8
  br label %if.end62

if.else59:                                        ; preds = %if.end53.thread, %if.end53
  %13 = phi i32 [ %10, %if.end53.thread ], [ %12, %if.end53 ]
  %14 = phi i32 [ %9, %if.end53.thread ], [ %11, %if.end53 ]
  %arraydecay57521 = phi i8* [ %arraydecay57520, %if.end53.thread ], [ %arraydecay57, %if.end53 ]
  %call61 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay57521, i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), i32 %14, i32 %13) #8
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then56
  %15 = load i32* %Valperline, align 4, !tbaa !3
  %div63 = sdiv i32 %nvalentries.0, %15
  %rem64 = srem i32 %nvalentries.0, %15
  %not.cmp65 = icmp ne i32 %rem64, 0
  %inc68 = zext i1 %not.cmp65 to i32
  %div63.inc68 = add nsw i32 %inc68, %div63
  br label %if.end71

if.end71:                                         ; preds = %if.end62, %if.end13
  %16 = phi i32 [ %15, %if.end62 ], [ undef, %if.end13 ]
  %Valfmt.addr.1 = phi i8* [ %.Valfmt, %if.end62 ], [ %Valfmt, %if.end13 ]
  %valcrd.0 = phi i32 [ %div63.inc68, %if.end62 ], [ 0, %if.end13 ]
  %cmp72 = icmp sgt i32 %Nrhs, 0
  br i1 %cmp72, label %if.then74, label %if.end117

if.then74:                                        ; preds = %if.end71
  %cmp75 = icmp eq i8* %Rhsfmt, null
  %Valfmt.addr.1.Rhsfmt = select i1 %cmp75, i8* %Valfmt.addr.1, i8* %Rhsfmt
  call fastcc void @ParseRfmt(i8* %Valfmt.addr.1.Rhsfmt, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #9
  %17 = load i32* %Rhsflag, align 4, !tbaa !3
  %cmp80 = icmp eq i32 %17, 70
  %arraydecay83 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0
  %18 = load i32* %Rhswidth, align 4, !tbaa !3
  %19 = load i32* %Rhsprec, align 4, !tbaa !3
  br i1 %cmp80, label %if.end88.thread, label %if.end88

if.end88.thread:                                  ; preds = %if.then74
  %call84 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay83, i8* getelementptr inbounds ([10 x i8]* @.str47, i64 0, i64 0), i32 %18, i32 %19) #8
  br label %if.end93

if.end88:                                         ; preds = %if.then74
  %call87 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay83, i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), i32 %18, i32 %19) #8
  %cmp89 = icmp eq i32 %17, 68
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  %call92 = call i8* @strchr(i8* %Valfmt.addr.1.Rhsfmt, i32 68) #11
  store i8 69, i8* %call92, align 1, !tbaa !1
  br label %if.end93

if.end93:                                         ; preds = %if.end88.thread, %if.then91, %if.end88
  %20 = load i32* %Rhsperline, align 4, !tbaa !3
  %div94 = sdiv i32 %nrhsentries.0, %20
  %rem95 = srem i32 %nrhsentries.0, %20
  %not.cmp96 = icmp ne i32 %rem95, 0
  %inc99 = zext i1 %not.cmp96 to i32
  %div94.inc99 = add nsw i32 %inc99, %div94
  %arrayidx101 = getelementptr inbounds i8* %Rhstype, i64 1
  %21 = load i8* %arrayidx101, align 1, !tbaa !1
  %cmp103 = icmp eq i8 %21, 71
  %add106 = zext i1 %cmp103 to i32
  %rhscrd.1 = shl nsw i32 %div94.inc99, %add106
  %arrayidx108 = getelementptr inbounds i8* %Rhstype, i64 2
  %22 = load i8* %arrayidx108, align 1, !tbaa !1
  %cmp110 = icmp eq i8 %22, 88
  %add113 = zext i1 %cmp110 to i32
  %add113.rhscrd.1 = shl nsw i32 %rhscrd.1, %add113
  %mul115 = mul nsw i32 %add113.rhscrd.1, %Nrhs
  br label %if.end117

if.end117:                                        ; preds = %if.end71, %if.end93
  %23 = phi i32 [ %20, %if.end93 ], [ undef, %if.end71 ]
  %Rhsfmt.addr.1 = phi i8* [ %Valfmt.addr.1.Rhsfmt, %if.end93 ], [ %Rhsfmt, %if.end71 ]
  %rhscrd.3 = phi i32 [ %mul115, %if.end93 ], [ 0, %if.end71 ]
  %add118 = add nsw i32 %ptrcrd.0, 4
  %add119 = add nsw i32 %add118, %indcrd.0
  %add120 = add nsw i32 %add119, %valcrd.0
  %add121 = add nsw i32 %add120, %rhscrd.3
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([32 x i8]* @.str49, i64 0, i64 0), i8* %Title, i8* %Key, i32 %add121, i32 %ptrcrd.0, i32 %indcrd.0, i32 %valcrd.0, i32 %rhscrd.3) #8
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([21 x i8]* @.str50, i64 0, i64 0), i8* %Type, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), i32 %M, i32 %N, i32 %nz) #8
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([16 x i8]* @.str52, i64 0, i64 0), i8* %.Ptrfmt, i8* %.Ptrfmt.Indfmt, i8* %Valfmt.addr.1) #8
  %cmp125 = icmp eq i32 %Nrhs, 0
  br i1 %cmp125, label %if.else129, label %if.then127

if.then127:                                       ; preds = %if.end117
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* %Rhsfmt.addr.1, i8* %Rhstype, i32 %Nrhs) #8
  br label %for.cond.preheader

if.else129:                                       ; preds = %if.end117
  %fputc475 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else129, %if.then127
  %cmp133498 = icmp sgt i32 %N, -1
  br i1 %cmp133498, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx135 = getelementptr inbounds i32* %colptr, i64 %indvars.iv517
  %24 = load i32* %arrayidx135, align 4, !tbaa !3
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay, i32 %24) #8
  %indvars.iv.next518 = add i64 %indvars.iv517, 1
  %25 = trunc i64 %indvars.iv.next518 to i32
  %rem140 = srem i32 %25, %4
  %cmp141 = icmp eq i32 %rem140, 0
  br i1 %cmp141, label %if.then143, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %if.then143
  %cmp133 = icmp slt i32 %25, %add
  br i1 %cmp133, label %for.body, label %for.end

if.then143:                                       ; preds = %for.body
  %fputc472 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %cmp149 = icmp eq i32 %rem, 0
  br i1 %cmp149, label %for.cond154.preheader, label %if.then151

if.then151:                                       ; preds = %for.end
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond154.preheader

for.cond154.preheader:                            ; preds = %for.end, %if.then151
  %cmp155496 = icmp sgt i32 %nz, 0
  br i1 %cmp155496, label %for.body157, label %for.end172

for.body157:                                      ; preds = %for.cond154.preheader, %for.cond154.backedge
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %for.cond154.backedge ], [ 0, %for.cond154.preheader ]
  %arrayidx159 = getelementptr inbounds i32* %rowind, i64 %indvars.iv513
  %26 = load i32* %arrayidx159, align 4, !tbaa !3
  %call162 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay30, i32 %26) #8
  %indvars.iv.next514 = add i64 %indvars.iv513, 1
  %27 = trunc i64 %indvars.iv.next514 to i32
  %rem164 = srem i32 %27, %6
  %cmp165 = icmp eq i32 %rem164, 0
  br i1 %cmp165, label %if.then167, label %for.cond154.backedge

for.cond154.backedge:                             ; preds = %for.body157, %if.then167
  %exitcond516 = icmp eq i32 %27, %nz
  br i1 %exitcond516, label %for.end172, label %for.body157

if.then167:                                       ; preds = %for.body157
  %fputc469 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond154.backedge

for.end172:                                       ; preds = %for.cond154.backedge, %for.cond154.preheader
  %cmp174 = icmp eq i32 %rem33, 0
  br i1 %cmp174, label %if.end178, label %if.then176

if.then176:                                       ; preds = %for.end172
  %fputc442 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %if.end178

if.end178:                                        ; preds = %for.end172, %if.then176
  %28 = load i8* %Type, align 1, !tbaa !1
  %cmp181 = icmp eq i8 %28, 80
  br i1 %cmp181, label %if.end312, label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %if.end178
  %cmp185494 = icmp sgt i32 %nvalentries.0, 0
  br i1 %cmp185494, label %for.body187.lr.ph, label %for.end201

for.body187.lr.ph:                                ; preds = %for.cond184.preheader
  %arraydecay188 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0
  br label %for.body187

for.body187:                                      ; preds = %for.cond184.backedge, %for.body187.lr.ph
  %indvars.iv509 = phi i64 [ 0, %for.body187.lr.ph ], [ %indvars.iv.next510, %for.cond184.backedge ]
  %arrayidx190 = getelementptr inbounds double* %val, i64 %indvars.iv509
  %29 = load double* %arrayidx190, align 8, !tbaa !4
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay188, double %29) #8
  %indvars.iv.next510 = add i64 %indvars.iv509, 1
  %30 = trunc i64 %indvars.iv.next510 to i32
  %rem193 = srem i32 %30, %16
  %cmp194 = icmp eq i32 %rem193, 0
  br i1 %cmp194, label %if.then196, label %for.cond184.backedge

for.cond184.backedge:                             ; preds = %for.body187, %if.then196
  %exitcond512 = icmp eq i32 %30, %nvalentries.0
  br i1 %exitcond512, label %for.end201, label %for.body187

if.then196:                                       ; preds = %for.body187
  %fputc466 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond184.backedge

for.end201:                                       ; preds = %for.cond184.backedge, %for.cond184.preheader
  %rem202 = srem i32 %nvalentries.0, %16
  %cmp203 = icmp eq i32 %rem202, 0
  br i1 %cmp203, label %if.end207, label %if.then205

if.then205:                                       ; preds = %for.end201
  %fputc445 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %if.end207

if.end207:                                        ; preds = %for.end201, %if.then205
  br i1 %cmp72, label %for.cond215.preheader.lr.ph, label %if.end312

for.cond215.preheader.lr.ph:                      ; preds = %if.end207
  %cmp216476 = icmp sgt i32 %nrhsentries.0, 0
  %idx.ext = sext i32 %nrhsentries.0 to i64
  %arrayidx240 = getelementptr inbounds i8* %Rhstype, i64 1
  %arrayidx274 = getelementptr inbounds i8* %Rhstype, i64 2
  %arraydecay283 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0
  br label %for.cond215.preheader

for.cond215.preheader:                            ; preds = %for.inc308, %for.cond215.preheader.lr.ph
  %linemod.0493 = phi i32 [ 0, %for.cond215.preheader.lr.ph ], [ %linemod.5, %for.inc308 ]
  %acount.0492 = phi i32 [ 1, %for.cond215.preheader.lr.ph ], [ %acount.5, %for.inc308 ]
  %rhs.addr.0491 = phi double* [ %rhs, %for.cond215.preheader.lr.ph ], [ %add.ptr, %for.inc308 ]
  %i.3490 = phi i32 [ 0, %for.cond215.preheader.lr.ph ], [ %inc309, %for.inc308 ]
  %guess.addr.0489 = phi double* [ %guess, %for.cond215.preheader.lr.ph ], [ %guess.addr.1, %for.inc308 ]
  %exact.addr.0488 = phi double* [ %exact, %for.cond215.preheader.lr.ph ], [ %exact.addr.1, %for.inc308 ]
  br i1 %cmp216476, label %for.body218, label %for.end232

for.body218:                                      ; preds = %for.cond215.preheader, %for.inc230
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc230 ], [ 0, %for.cond215.preheader ]
  %acount.1478 = phi i32 [ %inc223, %for.inc230 ], [ %acount.0492, %for.cond215.preheader ]
  %arrayidx221 = getelementptr inbounds double* %rhs.addr.0491, i64 %indvars.iv
  %31 = load double* %arrayidx221, align 8, !tbaa !4
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %31) #8
  %inc223 = add nsw i32 %acount.1478, 1
  %rem224 = srem i32 %acount.1478, %23
  %cmp225 = icmp eq i32 %rem224, %linemod.0493
  br i1 %cmp225, label %if.then227, label %for.inc230

if.then227:                                       ; preds = %for.body218
  %fputc463 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc230

for.inc230:                                       ; preds = %for.body218, %if.then227
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nrhsentries.0
  br i1 %exitcond, label %for.cond215.for.end232_crit_edge, label %for.body218

for.cond215.for.end232_crit_edge:                 ; preds = %for.inc230
  %32 = add i32 %nrhsentries.0, %acount.0492
  br label %for.end232

for.end232:                                       ; preds = %for.cond215.for.end232_crit_edge, %for.cond215.preheader
  %acount.1.lcssa = phi i32 [ %32, %for.cond215.for.end232_crit_edge ], [ %acount.0492, %for.cond215.preheader ]
  %rem233 = srem i32 %acount.1.lcssa, %23
  %cmp234 = icmp eq i32 %rem233, %linemod.0493
  br i1 %cmp234, label %if.end239, label %if.then236

if.then236:                                       ; preds = %for.end232
  %fputc448 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub = add nsw i32 %acount.1.lcssa, -1
  %rem238 = srem i32 %sub, %23
  br label %if.end239

if.end239:                                        ; preds = %for.end232, %if.then236
  %linemod.1 = phi i32 [ %rem238, %if.then236 ], [ %linemod.0493, %for.end232 ]
  %add.ptr = getelementptr inbounds double* %rhs.addr.0491, i64 %idx.ext
  %33 = load i8* %arrayidx240, align 1, !tbaa !1
  %cmp242 = icmp eq i8 %33, 71
  br i1 %cmp242, label %for.cond245.preheader, label %if.end273

for.cond245.preheader:                            ; preds = %if.end239
  br i1 %cmp216476, label %for.body248, label %for.end262

for.body248:                                      ; preds = %for.cond245.preheader, %for.inc260
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %for.inc260 ], [ 0, %for.cond245.preheader ]
  %acount.2481 = phi i32 [ %inc253, %for.inc260 ], [ %acount.1.lcssa, %for.cond245.preheader ]
  %arrayidx251 = getelementptr inbounds double* %guess.addr.0489, i64 %indvars.iv500
  %34 = load double* %arrayidx251, align 8, !tbaa !4
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %34) #8
  %inc253 = add nsw i32 %acount.2481, 1
  %rem254 = srem i32 %acount.2481, %23
  %cmp255 = icmp eq i32 %rem254, %linemod.1
  br i1 %cmp255, label %if.then257, label %for.inc260

if.then257:                                       ; preds = %for.body248
  %fputc460 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc260

for.inc260:                                       ; preds = %for.body248, %if.then257
  %indvars.iv.next501 = add i64 %indvars.iv500, 1
  %lftr.wideiv502 = trunc i64 %indvars.iv.next501 to i32
  %exitcond503 = icmp eq i32 %lftr.wideiv502, %nrhsentries.0
  br i1 %exitcond503, label %for.cond245.for.end262_crit_edge, label %for.body248

for.cond245.for.end262_crit_edge:                 ; preds = %for.inc260
  %35 = add i32 %nrhsentries.0, %acount.1.lcssa
  br label %for.end262

for.end262:                                       ; preds = %for.cond245.for.end262_crit_edge, %for.cond245.preheader
  %acount.2.lcssa = phi i32 [ %35, %for.cond245.for.end262_crit_edge ], [ %acount.1.lcssa, %for.cond245.preheader ]
  %rem263 = srem i32 %acount.2.lcssa, %23
  %cmp264 = icmp eq i32 %rem263, %linemod.1
  br i1 %cmp264, label %if.end270, label %if.then266

if.then266:                                       ; preds = %for.end262
  %fputc457 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub268 = add nsw i32 %acount.2.lcssa, -1
  %rem269 = srem i32 %sub268, %23
  br label %if.end270

if.end270:                                        ; preds = %for.end262, %if.then266
  %linemod.2 = phi i32 [ %rem269, %if.then266 ], [ %linemod.1, %for.end262 ]
  %add.ptr272 = getelementptr inbounds double* %guess.addr.0489, i64 %idx.ext
  br label %if.end273

if.end273:                                        ; preds = %if.end239, %if.end270
  %guess.addr.1 = phi double* [ %add.ptr272, %if.end270 ], [ %guess.addr.0489, %if.end239 ]
  %acount.3 = phi i32 [ %acount.2.lcssa, %if.end270 ], [ %acount.1.lcssa, %if.end239 ]
  %linemod.3 = phi i32 [ %linemod.2, %if.end270 ], [ %linemod.1, %if.end239 ]
  %36 = load i8* %arrayidx274, align 1, !tbaa !1
  %cmp276 = icmp eq i8 %36, 88
  br i1 %cmp276, label %for.cond279.preheader, label %for.inc308

for.cond279.preheader:                            ; preds = %if.end273
  br i1 %cmp216476, label %for.body282, label %for.end296

for.body282:                                      ; preds = %for.cond279.preheader, %for.inc294
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %for.inc294 ], [ 0, %for.cond279.preheader ]
  %acount.4485 = phi i32 [ %inc287, %for.inc294 ], [ %acount.3, %for.cond279.preheader ]
  %arrayidx285 = getelementptr inbounds double* %exact.addr.0488, i64 %indvars.iv504
  %37 = load double* %arrayidx285, align 8, !tbaa !4
  %call286 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay283, double %37) #8
  %inc287 = add nsw i32 %acount.4485, 1
  %rem288 = srem i32 %acount.4485, %23
  %cmp289 = icmp eq i32 %rem288, %linemod.3
  br i1 %cmp289, label %if.then291, label %for.inc294

if.then291:                                       ; preds = %for.body282
  %fputc454 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc294

for.inc294:                                       ; preds = %for.body282, %if.then291
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %lftr.wideiv506 = trunc i64 %indvars.iv.next505 to i32
  %exitcond507 = icmp eq i32 %lftr.wideiv506, %nrhsentries.0
  br i1 %exitcond507, label %for.cond279.for.end296_crit_edge, label %for.body282

for.cond279.for.end296_crit_edge:                 ; preds = %for.inc294
  %38 = add i32 %nrhsentries.0, %acount.3
  br label %for.end296

for.end296:                                       ; preds = %for.cond279.for.end296_crit_edge, %for.cond279.preheader
  %acount.4.lcssa = phi i32 [ %38, %for.cond279.for.end296_crit_edge ], [ %acount.3, %for.cond279.preheader ]
  %rem297 = srem i32 %acount.4.lcssa, %23
  %cmp298 = icmp eq i32 %rem297, %linemod.3
  br i1 %cmp298, label %if.end304, label %if.then300

if.then300:                                       ; preds = %for.end296
  %fputc451 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub302 = add nsw i32 %acount.4.lcssa, -1
  %rem303 = srem i32 %sub302, %23
  br label %if.end304

if.end304:                                        ; preds = %for.end296, %if.then300
  %linemod.4 = phi i32 [ %rem303, %if.then300 ], [ %linemod.3, %for.end296 ]
  %add.ptr306 = getelementptr inbounds double* %exact.addr.0488, i64 %idx.ext
  br label %for.inc308

for.inc308:                                       ; preds = %if.end273, %if.end304
  %exact.addr.1 = phi double* [ %add.ptr306, %if.end304 ], [ %exact.addr.0488, %if.end273 ]
  %acount.5 = phi i32 [ %acount.4.lcssa, %if.end304 ], [ %acount.3, %if.end273 ]
  %linemod.5 = phi i32 [ %linemod.4, %if.end304 ], [ %linemod.3, %if.end273 ]
  %inc309 = add nsw i32 %i.3490, 1
  %exitcond508 = icmp eq i32 %inc309, %Nrhs
  br i1 %exitcond508, label %if.end312, label %for.cond215.preheader

if.end312:                                        ; preds = %for.inc308, %if.end178, %if.end207
  %call313 = call i32 @fclose(%struct._IO_FILE* %out_file.0) #8
  %cmp314 = icmp eq i32 %call313, 0
  br i1 %cmp314, label %return, label %if.then316

if.then316:                                       ; preds = %if.end312
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str55, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %39)
  br label %return

return:                                           ; preds = %if.end312, %if.then316, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then316 ], [ 1, %if.end312 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

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
  %0 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %0) #1
  %1 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %1) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [8 x i8]* %Key, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call8 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %1, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %Valfmt, i8* %arraydecay6, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay7) #9
  call fastcc void @ParseIfmt(i8* %arraydecay4, i32* %Ptrperline, i32* %Ptrwidth) #9
  call fastcc void @ParseIfmt(i8* %arraydecay5, i32* %Indperline, i32* %Indwidth) #9
  %3 = load i8* %arraydecay3, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %3, 80
  br i1 %cmp13, label %if.end22, label %if.then15

if.then15:                                        ; preds = %if.end
  call fastcc void @ParseRfmt(i8* %Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #9
  %4 = load i32* %Valflag, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %4, 68
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then15
  %call20 = call i8* @strchr(i8* %Valfmt, i32 68) #11
  store i8 69, i8* %call20, align 1, !tbaa !1
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then15, %if.then19
  %5 = phi i32 [ undef, %if.end ], [ %4, %if.then15 ], [ 68, %if.then19 ]
  %6 = load i32* %Ptrwidth, align 4, !tbaa !3
  %add = add nsw i32 %6, 1
  %conv23 = sext i32 %add to i64
  %call24 = call noalias i8* @malloc(i64 %conv23) #8
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end28:                                         ; preds = %if.end22
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8* %call24, i64 %idx.ext
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  %7 = load i32* %Ptrcrd, align 4, !tbaa !3
  %cmp29289 = icmp sgt i32 %7, 0
  br i1 %cmp29289, label %for.body.lr.ph, label %for.end58

for.body.lr.ph:                                   ; preds = %if.end28
  %8 = load i32* %Ptrperline, align 4, !tbaa !3
  %cmp40284 = icmp sgt i32 %8, 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc56
  %count.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc56 ]
  %i.0290 = phi i32 [ 0, %for.body.lr.ph ], [ %inc57, %for.inc56 ]
  %call32 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #8
  %call34 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.body
  br i1 %cmp40284, label %for.body42.lr.ph, label %for.inc56

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %9 = sext i32 %count.0291 to i64
  br label %for.body42

if.then37:                                        ; preds = %for.body
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([65 x i8]* @.str28, i64 0, i64 0)) #9
  unreachable

for.body42:                                       ; preds = %for.body42.lr.ph, %if.end46
  %indvars.iv305 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next306, %if.end46 ]
  %indvars.iv303 = phi i64 [ %9, %for.body42.lr.ph ], [ %indvars.iv.next304, %if.end46 ]
  %count.1287 = phi i32 [ %count.0291, %for.body42.lr.ph ], [ %inc, %if.end46 ]
  %ind.0285 = phi i32 [ 0, %for.body42.lr.ph ], [ %inc55, %if.end46 ]
  %10 = load i32* %Ncol, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv303 to i32
  %cmp43 = icmp sgt i32 %11, %10
  br i1 %cmp43, label %for.inc56, label %if.end46

if.end46:                                         ; preds = %for.body42
  %add.ptr49 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv305
  %call51 = call i8* @strncpy(i8* %call24, i8* %add.ptr49, i64 %idx.ext) #8
  %call52 = call i32 @atoi(i8* %call24) #11
  %arrayidx53 = getelementptr inbounds i32* %colptr, i64 %indvars.iv303
  store i32 %call52, i32* %arrayidx53, align 4, !tbaa !3
  %indvars.iv.next304 = add i64 %indvars.iv303, 1
  %inc = add nsw i32 %count.1287, 1
  %indvars.iv.next306 = add i64 %indvars.iv305, %idx.ext
  %inc55 = add nsw i32 %ind.0285, 1
  %cmp40 = icmp slt i32 %inc55, %8
  br i1 %cmp40, label %for.body42, label %for.inc56

for.inc56:                                        ; preds = %if.end46, %for.body42, %for.cond39.preheader
  %count.1.lcssa = phi i32 [ %count.0291, %for.cond39.preheader ], [ %count.1287, %for.body42 ], [ %inc, %if.end46 ]
  %inc57 = add nsw i32 %i.0290, 1
  %12 = load i32* %Ptrcrd, align 4, !tbaa !3
  %cmp29 = icmp slt i32 %inc57, %12
  br i1 %cmp29, label %for.body, label %for.end58

for.end58:                                        ; preds = %for.inc56, %if.end28
  call void @free(i8* %call24) #8
  %13 = load i32* %Indwidth, align 4, !tbaa !3
  %add59 = add nsw i32 %13, 1
  %conv60 = sext i32 %add59 to i64
  %call61 = call noalias i8* @malloc(i64 %conv60) #8
  %cmp62 = icmp eq i8* %call61, null
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.end58
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([37 x i8]* @.str27, i64 0, i64 0)) #9
  unreachable

if.end65:                                         ; preds = %for.end58
  %idx.ext66 = sext i32 %13 to i64
  %add.ptr67 = getelementptr inbounds i8* %call61, i64 %idx.ext66
  store i8 0, i8* %add.ptr67, align 1, !tbaa !1
  %14 = load i32* %Indcrd, align 4, !tbaa !3
  %cmp69281 = icmp sgt i32 %14, 0
  br i1 %cmp69281, label %for.body71.lr.ph, label %for.end104

for.body71.lr.ph:                                 ; preds = %if.end65
  %15 = load i32* %Indperline, align 4, !tbaa !3
  %cmp81276 = icmp sgt i32 %15, 0
  br label %for.body71

for.body71:                                       ; preds = %for.body71.lr.ph, %for.inc102
  %count.2283 = phi i32 [ 0, %for.body71.lr.ph ], [ %count.3.lcssa, %for.inc102 ]
  %i.1282 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc103, %for.inc102 ]
  %call73 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #8
  %call75 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.body71
  br i1 %cmp81276, label %for.body83.lr.ph, label %for.inc102

for.body83.lr.ph:                                 ; preds = %for.cond80.preheader
  %16 = sext i32 %count.2283 to i64
  br label %for.body83

if.then78:                                        ; preds = %for.body71
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str29, i64 0, i64 0)) #9
  unreachable

for.body83:                                       ; preds = %for.body83.lr.ph, %if.end87
  %indvars.iv300 = phi i64 [ 0, %for.body83.lr.ph ], [ %indvars.iv.next301, %if.end87 ]
  %indvars.iv298 = phi i64 [ %16, %for.body83.lr.ph ], [ %indvars.iv.next299, %if.end87 ]
  %count.3279 = phi i32 [ %count.2283, %for.body83.lr.ph ], [ %inc97, %if.end87 ]
  %ind.1277 = phi i32 [ 0, %for.body83.lr.ph ], [ %inc100, %if.end87 ]
  %17 = load i32* %Nnzero, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv298 to i32
  %cmp84 = icmp eq i32 %18, %17
  br i1 %cmp84, label %for.inc102, label %if.end87

if.end87:                                         ; preds = %for.body83
  %add.ptr90 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv300
  %call92 = call i8* @strncpy(i8* %call61, i8* %add.ptr90, i64 %idx.ext66) #8
  %call93 = call i32 @atoi(i8* %call61) #11
  %arrayidx96 = getelementptr inbounds i32* %rowind, i64 %indvars.iv298
  store i32 %call93, i32* %arrayidx96, align 4, !tbaa !3
  %indvars.iv.next299 = add i64 %indvars.iv298, 1
  %inc97 = add nsw i32 %count.3279, 1
  %indvars.iv.next301 = add i64 %indvars.iv300, %idx.ext66
  %inc100 = add nsw i32 %ind.1277, 1
  %cmp81 = icmp slt i32 %inc100, %15
  br i1 %cmp81, label %for.body83, label %for.inc102

for.inc102:                                       ; preds = %if.end87, %for.body83, %for.cond80.preheader
  %count.3.lcssa = phi i32 [ %count.2283, %for.cond80.preheader ], [ %count.3279, %for.body83 ], [ %inc97, %if.end87 ]
  %inc103 = add nsw i32 %i.1282, 1
  %19 = load i32* %Indcrd, align 4, !tbaa !3
  %cmp69 = icmp slt i32 %inc103, %19
  br i1 %cmp69, label %for.body71, label %for.end104

for.end104:                                       ; preds = %for.inc102, %if.end65
  call void @free(i8* %call61) #8
  %20 = load i8* %arraydecay3, align 1, !tbaa !1
  %cmp107 = icmp eq i8 %20, 80
  br i1 %cmp107, label %cleanup, label %if.then109

if.then109:                                       ; preds = %for.end104
  %cmp112 = icmp eq i8 %20, 67
  %21 = load i32* %Nnzero, align 4, !tbaa !3
  %mul = zext i1 %cmp112 to i32
  %Nentries.0 = shl nsw i32 %21, %mul
  %22 = load i32* %Valcrd, align 4, !tbaa !3
  %cmp126273 = icmp sgt i32 %22, 0
  br i1 %cmp126273, label %for.body128.lr.ph, label %cleanup

for.body128.lr.ph:                                ; preds = %if.then109
  %cmp137 = icmp eq i32 %5, 68
  %23 = load i32* %Valperline, align 4, !tbaa !3
  %cmp146267 = icmp slt i32 %23, 1
  %24 = load i32* %Valwidth, align 4, !tbaa !3
  %conv159 = sext i32 %24 to i64
  %cmp161 = icmp eq i32 %5, 70
  %conv190 = trunc i32 %5 to i8
  %25 = sub i32 0, %23
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.inc203
  %count.4275 = phi i32 [ 0, %for.body128.lr.ph ], [ %count.5.lcssa, %for.inc203 ]
  %i.2274 = phi i32 [ 0, %for.body128.lr.ph ], [ %inc204, %for.inc203 ]
  %call130 = call i8* @fgets(i8* %0, i32 8192, %struct._IO_FILE* %call) #8
  %call132 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %for.body128
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([63 x i8]* @.str30, i64 0, i64 0)) #9
  unreachable

if.end136:                                        ; preds = %for.body128
  br i1 %cmp137, label %while.cond.preheader, label %for.cond145.preheader

while.cond.preheader:                             ; preds = %if.end136
  %call141264 = call i8* @strchr(i8* %0, i32 68) #11
  %tobool265 = icmp eq i8* %call141264, null
  br i1 %tobool265, label %for.cond145.preheader, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call141266 = phi i8* [ %call141, %while.body ], [ %call141264, %while.cond.preheader ]
  store i8 69, i8* %call141266, align 1, !tbaa !1
  %call141 = call i8* @strchr(i8* %0, i32 68) #11
  %tobool = icmp eq i8* %call141, null
  br i1 %tobool, label %for.cond145.preheader, label %while.body

for.cond145.preheader:                            ; preds = %while.cond.preheader, %while.body, %if.end136
  %cmp149268 = icmp eq i32 %count.4275, %Nentries.0
  %or.cond269 = or i1 %cmp146267, %cmp149268
  br i1 %or.cond269, label %for.inc203, label %if.end152.lr.ph

if.end152.lr.ph:                                  ; preds = %for.cond145.preheader
  %26 = sext i32 %count.4275 to i64
  %27 = sub i32 %count.4275, %Nentries.0
  %28 = icmp ult i32 %27, %25
  %umax = select i1 %28, i32 %25, i32 %27
  %29 = sub i32 0, %umax
  br label %if.end152

if.end152:                                        ; preds = %if.end152.lr.ph, %if.end197
  %indvars.iv295 = phi i64 [ 0, %if.end152.lr.ph ], [ %indvars.iv.next296, %if.end197 ]
  %indvars.iv293 = phi i64 [ %26, %if.end152.lr.ph ], [ %indvars.iv.next294, %if.end197 ]
  %ind.2270 = phi i32 [ 0, %if.end152.lr.ph ], [ %inc201, %if.end197 ]
  %30 = trunc i64 %indvars.iv293 to i32
  %mul153 = mul nsw i32 %24, %30
  %idxprom154 = sext i32 %mul153 to i64
  %arrayidx155 = getelementptr inbounds i8* %val, i64 %idxprom154
  %add.ptr158 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %indvars.iv295
  %call160 = call i8* @strncpy(i8* %arrayidx155, i8* %add.ptr158, i64 %conv159) #8
  br i1 %cmp161, label %if.end197, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end152
  %call163 = call i8* @strchr(i8* %arrayidx155, i32 69) #11
  %cmp164 = icmp eq i8* %call163, null
  br i1 %cmp164, label %if.then166, label %if.end197

if.then166:                                       ; preds = %land.lhs.true
  %call167 = call i64 @strlen(i8* %arrayidx155) #11
  %conv168 = trunc i64 %call167 to i32
  %add169 = add i32 %conv168, 1
  %31 = sext i32 %add169 to i64
  br label %for.cond170

for.cond170:                                      ; preds = %for.body173, %if.then166
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body173 ], [ %31, %if.then166 ]
  %j.0 = phi i32 [ %sub174, %for.body173 ], [ %add169, %if.then166 ]
  %32 = trunc i64 %indvars.iv to i32
  %cmp171 = icmp sgt i32 %32, -1
  br i1 %cmp171, label %for.body173, label %if.end197

for.body173:                                      ; preds = %for.cond170
  %sub174 = add nsw i32 %j.0, -1
  %idxprom175 = sext i32 %sub174 to i64
  %arrayidx155.sum = add i64 %idxprom175, %idxprom154
  %arrayidx176 = getelementptr inbounds i8* %val, i64 %arrayidx155.sum
  %33 = load i8* %arrayidx176, align 1, !tbaa !1
  %arrayidx155.sum263 = add i64 %indvars.iv, %idxprom154
  %arrayidx178 = getelementptr inbounds i8* %val, i64 %arrayidx155.sum263
  store i8 %33, i8* %arrayidx178, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, -1
  switch i8 %33, label %for.cond170 [
    i8 43, label %if.then189
    i8 45, label %if.then189
  ]

if.then189:                                       ; preds = %for.body173, %for.body173
  store i8 %conv190, i8* %arrayidx176, align 1, !tbaa !1
  br label %if.end197

if.end197:                                        ; preds = %for.cond170, %if.end152, %if.then189, %land.lhs.true
  %indvars.iv.next294 = add i64 %indvars.iv293, 1
  %indvars.iv.next296 = add i64 %indvars.iv295, %conv159
  %inc201 = add nsw i32 %ind.2270, 1
  %exitcond = icmp eq i32 %inc201, %29
  br i1 %exitcond, label %for.cond145.for.inc203_crit_edge, label %if.end152

for.cond145.for.inc203_crit_edge:                 ; preds = %if.end197
  %34 = sub i32 %count.4275, %umax
  br label %for.inc203

for.inc203:                                       ; preds = %for.cond145.for.inc203_crit_edge, %for.cond145.preheader
  %count.5.lcssa = phi i32 [ %34, %for.cond145.for.inc203_crit_edge ], [ %count.4275, %for.cond145.preheader ]
  %inc204 = add nsw i32 %i.2274, 1
  %35 = load i32* %Valcrd, align 4, !tbaa !3
  %cmp126 = icmp slt i32 %inc204, %35
  br i1 %cmp126, label %for.body128, label %cleanup

cleanup:                                          ; preds = %if.then109, %for.inc203, %for.end104, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end104 ], [ 1, %for.inc203 ], [ 1, %if.then109 ]
  call void @llvm.lifetime.end(i64 73, i8* %1) #1
  call void @llvm.lifetime.end(i64 8192, i8* %0) #1
  ret i32 %retval.0
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
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %0) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 21) #8
  store i8* %call2, i8** %Valfmt, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([32 x i8]* @.str56, i64 0, i64 0)) #9
  unreachable

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay6, i8* %arraydecay7, i32* %M, i32* %N, i32* %nonzeros, i32* %Nrhs, i8* %arraydecay8, i8* %arraydecay9, i8* %call2, i8* %arraydecay10, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #9
  %call13 = call i32 @fclose(%struct._IO_FILE* %call) #8
  %2 = load i8** %Valfmt, align 8, !tbaa !0
  call fastcc void @ParseRfmt(i8* %2, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #9
  %3 = load i32* %N, align 4, !tbaa !3
  %add = add nsw i32 %3, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call15 = call noalias i8* @malloc(i64 %mul) #8
  %4 = bitcast i8* %call15 to i32*
  store i32* %4, i32** %colptr, align 8, !tbaa !0
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end5
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str31, i64 0, i64 0)) #9
  unreachable

if.end19:                                         ; preds = %if.end5
  %5 = load i32* %nonzeros, align 4, !tbaa !3
  %conv20 = sext i32 %5 to i64
  %mul21 = shl nsw i64 %conv20, 2
  %call22 = call noalias i8* @malloc(i64 %mul21) #8
  %6 = bitcast i8* %call22 to i32*
  store i32* %6, i32** %rowind, align 8, !tbaa !0
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([33 x i8]* @.str32, i64 0, i64 0)) #9
  unreachable

if.end26:                                         ; preds = %if.end19
  %7 = load i8* %arraydecay7, align 1, !tbaa !1
  switch i8 %7, label %if.then44 [
    i8 67, label %if.then30
    i8 80, label %if.end26.if.end54_crit_edge
  ]

if.end26.if.end54_crit_edge:                      ; preds = %if.end26
  %.pre = load i8** %val, align 8, !tbaa !0
  br label %if.end54

if.then30:                                        ; preds = %if.end26
  %8 = load i32* %Valwidth, align 4, !tbaa !3
  %mul31 = mul nsw i32 %8, %5
  %conv32 = sext i32 %mul31 to i64
  %mul34 = shl nsw i64 %conv32, 1
  %call35 = call noalias i8* @malloc(i64 %mul34) #8
  store i8* %call35, i8** %val, align 8, !tbaa !0
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %if.then38, label %if.end54

if.then38:                                        ; preds = %if.then30
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #9
  unreachable

if.then44:                                        ; preds = %if.end26
  %9 = load i32* %Valwidth, align 4, !tbaa !3
  %mul45 = mul nsw i32 %9, %5
  %conv46 = sext i32 %mul45 to i64
  %call48 = call noalias i8* @malloc(i64 %conv46) #8
  store i8* %call48, i8** %val, align 8, !tbaa !0
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then44
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str33, i64 0, i64 0)) #9
  unreachable

if.end54:                                         ; preds = %if.then44, %if.then30, %if.end26.if.end54_crit_edge
  %10 = phi i8* [ %.pre, %if.end26.if.end54_crit_edge ], [ %call35, %if.then30 ], [ %call48, %if.then44 ]
  %11 = load i32** %colptr, align 8, !tbaa !0
  %12 = load i32** %rowind, align 8, !tbaa !0
  %13 = load i8** %Valfmt, align 8, !tbaa !0
  %call55 = call i32 @readHB_mat_char(i8* %filename, i32* %11, i32* %12, i8* %10, i8* %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call55, %if.end54 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #1
  ret i32 %retval.0
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
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %0) #1
  %1 = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8192, i8* %1) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay2 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [21 x i8]* %Rhsfmt, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call9 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay2, i8* %arraydecay3, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay4, i8* %arraydecay5, i8* %arraydecay6, i8* %arraydecay7, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay8) #9
  %3 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp10 = icmp slt i32 %3, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8]* @.str34, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %4)
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %6 = load i8* %arraydecay8, align 1, !tbaa !1
  %cmp14 = icmp eq i8 %6, 70
  br i1 %cmp14, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8]* @.str35, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %7)
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str36, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %9)
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %11 = load i8* %arraydecay3, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %11, 67
  %12 = load i32* %Nrow, align 4, !tbaa !3
  %mul = zext i1 %cmp22 to i32
  %Nentries.0 = shl nsw i32 %12, %mul
  %arrayidx26 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 1
  %13 = load i8* %arrayidx26, align 1, !tbaa !1
  %cmp28 = icmp eq i8 %13, 71
  %. = select i1 %cmp28, i32 2, i32 1
  %arrayidx32 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 2
  %14 = load i8* %arrayidx32, align 1, !tbaa !1
  %cmp34 = icmp eq i8 %14, 88
  %inc37 = zext i1 %cmp34 to i32
  %nvecs.1 = add nsw i32 %inc37, %.
  switch i8 %AuxType, label %if.end59 [
    i8 71, label %land.lhs.true
    i8 88, label %land.lhs.true52
  ]

land.lhs.true:                                    ; preds = %if.end19
  br i1 %cmp28, label %if.end59, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str37, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %15)
  br label %cleanup

land.lhs.true52:                                  ; preds = %if.end19
  br i1 %cmp34, label %if.end59, label %if.then57

if.then57:                                        ; preds = %land.lhs.true52
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str38, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %17)
  br label %cleanup

if.end59:                                         ; preds = %land.lhs.true, %if.end19, %land.lhs.true52
  call fastcc void @ParseRfmt(i8* %arraydecay7, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #9
  %19 = load i32* %Rhsperline, align 4, !tbaa !3
  %20 = load i32* %Rhswidth, align 4, !tbaa !3
  %mul62 = mul nsw i32 %20, %19
  %21 = load i32* %Ptrcrd, align 4, !tbaa !3
  %22 = load i32* %Indcrd, align 4, !tbaa !3
  %add = add i32 %22, %21
  %23 = load i32* %Valcrd, align 4, !tbaa !3
  %add63 = add i32 %add, %23
  %cmp64358 = icmp sgt i32 %add63, 0
  br i1 %cmp64358, label %for.body, label %for.end

for.body:                                         ; preds = %if.end59, %for.body
  %i.0359 = phi i32 [ %inc68, %for.body ], [ 0, %if.end59 ]
  %call67 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %inc68 = add nsw i32 %i.0359, 1
  %exitcond = icmp eq i32 %inc68, %add63
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end59
  %AuxType.off = add i8 %AuxType, -70
  %switch = icmp ult i8 %AuxType.off, 2
  br i1 %switch, label %for.end.if.end81_crit_edge, label %if.else78

for.end.if.end81_crit_edge:                       ; preds = %for.end
  %cmp70 = icmp eq i8 %AuxType, 70
  %.mux = select i1 %cmp70, i32 0, i32 %Nentries.0
  %sub82.pre = add nsw i32 %nvecs.1, -1
  %mul83.pre = mul nsw i32 %sub82.pre, %Nentries.0
  br label %if.end81

if.else78:                                        ; preds = %for.end
  %sub = add nsw i32 %nvecs.1, -1
  %mul79 = mul nsw i32 %sub, %Nentries.0
  br label %if.end81

if.end81:                                         ; preds = %for.end.if.end81_crit_edge, %if.else78
  %mul83.pre-phi = phi i32 [ %mul83.pre, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  %start.0 = phi i32 [ %.mux, %for.end.if.end81_crit_edge ], [ %mul79, %if.else78 ]
  %call85 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call87 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast = ptrtoint i8* %call87 to i64
  %sub.ptr.rhs.cast = ptrtoint [8192 x i8]* %line to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv89 = trunc i64 %sub.ptr.sub to i32
  %call91 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %for.cond96.preheader

for.cond96.preheader:                             ; preds = %if.end81
  %cmp97352 = icmp sgt i32 %start.0, 0
  br i1 %cmp97352, label %for.body99, label %for.end124

if.then94:                                        ; preds = %if.end81
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #9
  unreachable

for.body99:                                       ; preds = %for.cond96.preheader, %for.inc122
  %linel.0355 = phi i32 [ %linel.1, %for.inc122 ], [ %conv89, %for.cond96.preheader ]
  %col.0354 = phi i32 [ %col.1, %for.inc122 ], [ 0, %for.cond96.preheader ]
  %i.1353 = phi i32 [ %inc123, %for.inc122 ], [ 0, %for.cond96.preheader ]
  %add100 = add nsw i32 %20, %col.0354
  %cmp101 = icmp slt i32 %mul62, %linel.0355
  %cond = select i1 %cmp101, i32 %mul62, i32 %linel.0355
  %cmp103 = icmp slt i32 %add100, %cond
  br i1 %cmp103, label %for.inc122, label %if.then105

if.then105:                                       ; preds = %for.body99
  %call107 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call109 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast111 = ptrtoint i8* %call109 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast
  %conv114 = trunc i64 %sub.ptr.sub113 to i32
  %call116 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %for.inc122

if.then119:                                       ; preds = %if.then105
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #9
  unreachable

for.inc122:                                       ; preds = %if.then105, %for.body99
  %col.1 = phi i32 [ %add100, %for.body99 ], [ 0, %if.then105 ]
  %linel.1 = phi i32 [ %linel.0355, %for.body99 ], [ %conv114, %if.then105 ]
  %inc123 = add nsw i32 %i.1353, 1
  %cmp97 = icmp slt i32 %inc123, %start.0
  br i1 %cmp97, label %for.body99, label %for.end124

for.end124:                                       ; preds = %for.inc122, %for.cond96.preheader
  %linel.0.lcssa = phi i32 [ %conv89, %for.cond96.preheader ], [ %linel.1, %for.inc122 ]
  %col.0.lcssa = phi i32 [ 0, %for.cond96.preheader ], [ %col.1, %for.inc122 ]
  %24 = load i32* %Rhsflag, align 4, !tbaa !3
  %cmp125 = icmp eq i32 %24, 68
  br i1 %cmp125, label %while.cond.preheader, label %for.cond133.preheader

while.cond.preheader:                             ; preds = %for.end124
  %call129347 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool348 = icmp eq i8* %call129347, null
  br i1 %tobool348, label %for.cond133.preheader, label %while.body

for.cond133.preheader:                            ; preds = %while.cond.preheader, %while.body, %for.end124
  %25 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp134341 = icmp sgt i32 %25, 0
  br i1 %cmp134341, label %for.cond137.preheader.lr.ph, label %for.end263

for.cond137.preheader.lr.ph:                      ; preds = %for.cond133.preheader
  %cmp138328 = icmp sgt i32 %Nentries.0, 0
  %cmp229335 = icmp sgt i32 %mul83.pre-phi, 0
  br label %for.cond137.preheader

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call129349 = phi i8* [ %call129, %while.body ], [ %call129347, %while.cond.preheader ]
  store i8 69, i8* %call129349, align 1, !tbaa !1
  %call129 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool = icmp eq i8* %call129, null
  br i1 %tobool, label %for.cond133.preheader, label %while.body

for.cond137.preheader:                            ; preds = %for.cond137.preheader.lr.ph, %for.inc261
  %26 = phi i32 [ %20, %for.cond137.preheader.lr.ph ], [ %36, %for.inc261 ]
  %27 = phi i32 [ %20, %for.cond137.preheader.lr.ph ], [ %37, %for.inc261 ]
  %rhsi.0346 = phi i32 [ 0, %for.cond137.preheader.lr.ph ], [ %inc262, %for.inc261 ]
  %linel.2345 = phi i32 [ %linel.0.lcssa, %for.cond137.preheader.lr.ph ], [ %linel.5.lcssa, %for.inc261 ]
  %b.addr.0343 = phi i8* [ %b, %for.cond137.preheader.lr.ph ], [ %add.ptr227, %for.inc261 ]
  %col.2342 = phi i32 [ %col.0.lcssa, %for.cond137.preheader.lr.ph ], [ %col.5.lcssa, %for.inc261 ]
  br i1 %cmp138328, label %for.body140, label %for.end224

for.body140:                                      ; preds = %for.cond137.preheader, %if.end220
  %28 = phi i32 [ %35, %if.end220 ], [ %26, %for.cond137.preheader ]
  %linel.3331 = phi i32 [ %linel.4, %if.end220 ], [ %linel.2345, %for.cond137.preheader ]
  %col.3330 = phi i32 [ %add221, %if.end220 ], [ %col.2342, %for.cond137.preheader ]
  %i.2329 = phi i32 [ %inc223, %if.end220 ], [ 0, %for.cond137.preheader ]
  %cmp141 = icmp slt i32 %mul62, %linel.3331
  %cond146 = select i1 %cmp141, i32 %mul62, i32 %linel.3331
  %cmp147 = icmp slt i32 %col.3330, %cond146
  br i1 %cmp147, label %for.body140.if.end177_crit_edge, label %if.then149

for.body140.if.end177_crit_edge:                  ; preds = %for.body140
  %.pre = load i32* %Rhsflag, align 4, !tbaa !3
  br label %if.end177

if.then149:                                       ; preds = %for.body140
  %call151 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call153 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast155 = ptrtoint i8* %call153 to i64
  %sub.ptr.sub157 = sub i64 %sub.ptr.lhs.cast155, %sub.ptr.rhs.cast
  %conv158 = trunc i64 %sub.ptr.sub157 to i32
  %call160 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %if.then163, label %if.end164

if.then163:                                       ; preds = %if.then149
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #9
  unreachable

if.end164:                                        ; preds = %if.then149
  %29 = load i32* %Rhsflag, align 4, !tbaa !3
  %cmp165 = icmp eq i32 %29, 68
  br i1 %cmp165, label %while.cond168.preheader, label %if.end177

while.cond168.preheader:                          ; preds = %if.end164
  %call170323 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool171324 = icmp eq i8* %call170323, null
  br i1 %tobool171324, label %if.end177, label %while.body172

while.body172:                                    ; preds = %while.cond168.preheader, %while.body172
  %call170325 = phi i8* [ %call170, %while.body172 ], [ %call170323, %while.cond168.preheader ]
  store i8 69, i8* %call170325, align 1, !tbaa !1
  %call170 = call i8* @strchr(i8* %1, i32 68) #11
  %tobool171 = icmp eq i8* %call170, null
  br i1 %tobool171, label %if.end177, label %while.body172

if.end177:                                        ; preds = %while.cond168.preheader, %while.body172, %for.body140.if.end177_crit_edge, %if.end164
  %30 = phi i32 [ %.pre, %for.body140.if.end177_crit_edge ], [ %29, %if.end164 ], [ 68, %while.body172 ], [ 68, %while.cond168.preheader ]
  %col.4 = phi i32 [ %col.3330, %for.body140.if.end177_crit_edge ], [ 0, %if.end164 ], [ 0, %while.body172 ], [ 0, %while.cond168.preheader ]
  %linel.4 = phi i32 [ %linel.3331, %for.body140.if.end177_crit_edge ], [ %conv158, %if.end164 ], [ %conv158, %while.body172 ], [ %conv158, %while.cond168.preheader ]
  %mul178 = mul nsw i32 %28, %i.2329
  %idxprom = sext i32 %mul178 to i64
  %arrayidx179 = getelementptr inbounds i8* %b.addr.0343, i64 %idxprom
  %idx.ext = sext i32 %col.4 to i64
  %add.ptr = getelementptr inbounds [8192 x i8]* %line, i64 0, i64 %idx.ext
  %conv181 = sext i32 %28 to i64
  %call182 = call i8* @strncpy(i8* %arrayidx179, i8* %add.ptr, i64 %conv181) #8
  %cmp183 = icmp eq i32 %30, 70
  br i1 %cmp183, label %if.end220, label %land.lhs.true185

land.lhs.true185:                                 ; preds = %if.end177
  %call186 = call i8* @strchr(i8* %arrayidx179, i32 69) #11
  %cmp187 = icmp eq i8* %call186, null
  br i1 %cmp187, label %if.then189, label %if.end220

if.then189:                                       ; preds = %land.lhs.true185
  %call190 = call i64 @strlen(i8* %arrayidx179) #11
  %conv191 = trunc i64 %call190 to i32
  %add192 = add i32 %conv191, 1
  %31 = sext i32 %add192 to i64
  br label %for.cond193

for.cond193:                                      ; preds = %for.body196, %if.then189
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body196 ], [ %31, %if.then189 ]
  %j.0 = phi i32 [ %sub197, %for.body196 ], [ %add192, %if.then189 ]
  %32 = trunc i64 %indvars.iv to i32
  %cmp194 = icmp sgt i32 %32, -1
  br i1 %cmp194, label %for.body196, label %if.end220

for.body196:                                      ; preds = %for.cond193
  %sub197 = add nsw i32 %j.0, -1
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx179.sum = add i64 %idxprom198, %idxprom
  %arrayidx199 = getelementptr inbounds i8* %b.addr.0343, i64 %arrayidx179.sum
  %33 = load i8* %arrayidx199, align 1, !tbaa !1
  %arrayidx179.sum322 = add i64 %indvars.iv, %idxprom
  %arrayidx201 = getelementptr inbounds i8* %b.addr.0343, i64 %arrayidx179.sum322
  store i8 %33, i8* %arrayidx201, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, -1
  switch i8 %33, label %for.cond193 [
    i8 43, label %if.then212
    i8 45, label %if.then212
  ]

if.then212:                                       ; preds = %for.body196, %for.body196
  %34 = load i32* %Rhsflag, align 4, !tbaa !3
  %conv213 = trunc i32 %34 to i8
  store i8 %conv213, i8* %arrayidx199, align 1, !tbaa !1
  br label %if.end220

if.end220:                                        ; preds = %for.cond193, %if.end177, %if.then212, %land.lhs.true185
  %35 = load i32* %Rhswidth, align 4, !tbaa !3
  %add221 = add nsw i32 %35, %col.4
  %inc223 = add nsw i32 %i.2329, 1
  %cmp138 = icmp slt i32 %inc223, %Nentries.0
  br i1 %cmp138, label %for.body140, label %for.end224

for.end224:                                       ; preds = %if.end220, %for.cond137.preheader
  %36 = phi i32 [ %26, %for.cond137.preheader ], [ %35, %if.end220 ]
  %37 = phi i32 [ %27, %for.cond137.preheader ], [ %35, %if.end220 ]
  %linel.3.lcssa = phi i32 [ %linel.2345, %for.cond137.preheader ], [ %linel.4, %if.end220 ]
  %col.3.lcssa = phi i32 [ %col.2342, %for.cond137.preheader ], [ %add221, %if.end220 ]
  %mul225 = mul nsw i32 %37, %Nentries.0
  %idx.ext226 = sext i32 %mul225 to i64
  %add.ptr227 = getelementptr inbounds i8* %b.addr.0343, i64 %idx.ext226
  br i1 %cmp229335, label %for.body231, label %for.inc261

for.body231:                                      ; preds = %for.end224, %for.inc258
  %linel.5338 = phi i32 [ %linel.6, %for.inc258 ], [ %linel.3.lcssa, %for.end224 ]
  %col.5337 = phi i32 [ %col.6, %for.inc258 ], [ %col.3.lcssa, %for.end224 ]
  %i.3336 = phi i32 [ %inc259, %for.inc258 ], [ 0, %for.end224 ]
  %add232 = add nsw i32 %37, %col.5337
  %cmp233 = icmp slt i32 %mul62, %linel.5338
  %cond238 = select i1 %cmp233, i32 %mul62, i32 %linel.5338
  %cmp239 = icmp slt i32 %add232, %cond238
  br i1 %cmp239, label %for.inc258, label %if.then241

if.then241:                                       ; preds = %for.body231
  %call243 = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %call) #8
  %call245 = call i8* @strchr(i8* %1, i32 10) #11
  %sub.ptr.lhs.cast247 = ptrtoint i8* %call245 to i64
  %sub.ptr.sub249 = sub i64 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast
  %conv250 = trunc i64 %sub.ptr.sub249 to i32
  %call252 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #8
  %cmp253 = icmp slt i32 %call252, 0
  br i1 %cmp253, label %if.then255, label %for.inc258

if.then255:                                       ; preds = %if.then241
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([74 x i8]* @.str57, i64 0, i64 0)) #9
  unreachable

for.inc258:                                       ; preds = %if.then241, %for.body231
  %col.6 = phi i32 [ %add232, %for.body231 ], [ 0, %if.then241 ]
  %linel.6 = phi i32 [ %linel.5338, %for.body231 ], [ %conv250, %if.then241 ]
  %inc259 = add nsw i32 %i.3336, 1
  %cmp229 = icmp slt i32 %inc259, %mul83.pre-phi
  br i1 %cmp229, label %for.body231, label %for.inc261

for.inc261:                                       ; preds = %for.inc258, %for.end224
  %linel.5.lcssa = phi i32 [ %linel.3.lcssa, %for.end224 ], [ %linel.6, %for.inc258 ]
  %col.5.lcssa = phi i32 [ %col.3.lcssa, %for.end224 ], [ %col.6, %for.inc258 ]
  %inc262 = add nsw i32 %rhsi.0346, 1
  %38 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp134 = icmp slt i32 %inc262, %38
  br i1 %cmp134, label %for.cond137.preheader, label %for.end263

for.end263:                                       ; preds = %for.inc261, %for.cond133.preheader
  %call264 = call i32 @fclose(%struct._IO_FILE* %call) #8
  %39 = load i32* %Nrhs, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %for.end263, %if.then57, %if.then46, %if.then16, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %if.then16 ], [ 0, %if.then46 ], [ 0, %if.then57 ], [ %39, %for.end263 ]
  call void @llvm.lifetime.end(i64 8192, i8* %1) #1
  call void @llvm.lifetime.end(i64 73, i8* %0) #1
  ret i32 %retval.0
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
  %0 = getelementptr inbounds [73 x i8]* %Title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 73, i8* %0) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 21) #8
  store i8* %call2, i8** %Rhsfmt, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([32 x i8]* @.str58, i64 0, i64 0)) #9
  unreachable

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [9 x i8]* %Key, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [4 x i8]* %Type, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [17 x i8]* %Ptrfmt, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [17 x i8]* %Indfmt, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [21 x i8]* %Valfmt, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [4 x i8]* %Rhstype, i64 0, i64 0
  %call12 = call i32 @readHB_header(%struct._IO_FILE* %call, i8* %0, i8* %arraydecay6, i8* %arraydecay7, i32* %Nrow, i32* %Ncol, i32* %Nnzero, i32* %Nrhs, i8* %arraydecay8, i8* %arraydecay9, i8* %arraydecay10, i8* %call2, i32* %Ptrcrd, i32* %Indcrd, i32* %Valcrd, i32* %Rhscrd, i8* %arraydecay11) #9
  %call13 = call i32 @fclose(%struct._IO_FILE* %call) #8
  %2 = load i32* %Nrhs, align 4, !tbaa !3
  %cmp14 = icmp eq i32 %2, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str39, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %3)
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %5 = load i8** %Rhsfmt, align 8, !tbaa !0
  call fastcc void @ParseRfmt(i8* %5, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #9
  %6 = load i8* %arraydecay7, align 1, !tbaa !1
  %cmp18 = icmp eq i8 %6, 67
  br i1 %cmp18, label %if.then20, label %if.else33

if.then20:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0), i8* %filename) #8
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str41, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %8)
  %10 = load i32* %Nrow, align 4, !tbaa !3
  %11 = load i32* %Nrhs, align 4, !tbaa !3
  %mul = mul nsw i32 %11, %10
  %12 = load i32* %Rhswidth, align 4, !tbaa !3
  %mul23 = mul nsw i32 %mul, %12
  %conv24 = sext i32 %mul23 to i64
  %mul26 = shl nsw i64 %conv24, 1
  %call27 = call noalias i8* @malloc(i64 %mul26) #8
  store i8* %call27, i8** %b, align 8, !tbaa !0
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then20
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #9
  unreachable

if.end31:                                         ; preds = %if.then20
  %call32 = call i32 @readHB_aux_char(i8* %filename, i8 signext %AuxType, i8* %call27) #9
  br label %cleanup

if.else33:                                        ; preds = %if.else
  %13 = load i32* %Nrow, align 4, !tbaa !3
  %14 = load i32* %Nrhs, align 4, !tbaa !3
  %mul34 = mul nsw i32 %14, %13
  %15 = load i32* %Rhswidth, align 4, !tbaa !3
  %mul35 = mul nsw i32 %mul34, %15
  %conv36 = sext i32 %mul35 to i64
  %call38 = call noalias i8* @malloc(i64 %conv36) #8
  store i8* %call38, i8** %b, align 8, !tbaa !0
  %cmp39 = icmp eq i8* %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else33
  call fastcc void @IOHBTerminate(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0)) #9
  unreachable

if.end42:                                         ; preds = %if.else33
  %call43 = call i32 @readHB_aux_char(i8* %filename, i8 signext %AuxType, i8* %call38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end31, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call32, %if.end31 ], [ %call43, %if.end42 ]
  call void @llvm.lifetime.end(i64 73, i8* %0) #1
  ret i32 %retval.0
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
  %0 = load i8* %Type, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 67
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = shl nsw i32 %nz, 1
  %mul3 = shl nsw i32 %M, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %nvalentries.0 = phi i32 [ %mul, %if.then ], [ %nz, %entry ]
  %nrhsentries.0 = phi i32 [ %mul3, %if.then ], [ %M, %entry ]
  %cmp4 = icmp eq i8* %filename, null
  br i1 %cmp4, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.end
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp7 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), i8* %filename) #8
  br label %return

if.else12:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.else12
  %out_file.0 = phi %struct._IO_FILE* [ %call, %if.then6 ], [ %2, %if.else12 ]
  %cmp14 = icmp eq i8* %Ptrfmt, null
  %.Ptrfmt = select i1 %cmp14, i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* %Ptrfmt
  call fastcc void @ParseIfmt(i8* %.Ptrfmt, i32* %Ptrperline, i32* %Ptrwidth) #9
  %arraydecay = getelementptr inbounds [16 x i8]* %pformat, i64 0, i64 0
  %3 = load i32* %Ptrwidth, align 4, !tbaa !3
  %call19 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %3) #8
  %cmp20 = icmp eq i8* %Indfmt, null
  %Indfmt.addr.0 = select i1 %cmp20, i8* %.Ptrfmt, i8* %Indfmt
  call fastcc void @ParseIfmt(i8* %Indfmt.addr.0, i32* %Indperline, i32* %Indwidth) #9
  %arraydecay25 = getelementptr inbounds [16 x i8]* %iformat, i64 0, i64 0
  %4 = load i32* %Indwidth, align 4, !tbaa !3
  %call26 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay25, i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i32 %4) #8
  %5 = load i8* %Type, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %5, 80
  br i1 %cmp29, label %if.end39, label %if.then31

if.then31:                                        ; preds = %if.end13
  %cmp32 = icmp eq i8* %Valfmt, null
  %.Valfmt = select i1 %cmp32, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), i8* %Valfmt
  call fastcc void @ParseRfmt(i8* %.Valfmt, i32* %Valperline, i32* %Valwidth, i32* %Valprec, i32* %Valflag) #9
  %arraydecay37 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0
  %6 = load i32* %Valwidth, align 4, !tbaa !3
  %call38 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay37, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i32 %6) #8
  %.pre = load i32* %Valperline, align 4, !tbaa !3
  br label %if.end39

if.end39:                                         ; preds = %if.end13, %if.then31
  %7 = phi i32 [ %6, %if.then31 ], [ undef, %if.end13 ]
  %8 = phi i32 [ %.pre, %if.then31 ], [ undef, %if.end13 ]
  %Valfmt.addr.1 = phi i8* [ %.Valfmt, %if.then31 ], [ %Valfmt, %if.end13 ]
  %add = add nsw i32 %N, 1
  %9 = load i32* %Ptrperline, align 4, !tbaa !3
  %div = sdiv i32 %add, %9
  %rem = srem i32 %add, %9
  %not.cmp41 = icmp ne i32 %rem, 0
  %inc = zext i1 %not.cmp41 to i32
  %div.inc = add nsw i32 %inc, %div
  %10 = load i32* %Indperline, align 4, !tbaa !3
  %div45 = sdiv i32 %nz, %10
  %rem46 = srem i32 %nz, %10
  %not.cmp47 = icmp ne i32 %rem46, 0
  %inc50 = zext i1 %not.cmp47 to i32
  %indcrd.0 = add nsw i32 %inc50, %div45
  %div52 = sdiv i32 %nvalentries.0, %8
  %rem53 = srem i32 %nvalentries.0, %8
  %not.cmp54 = icmp ne i32 %rem53, 0
  %inc57 = zext i1 %not.cmp54 to i32
  %div52.inc57 = add nsw i32 %inc57, %div52
  %cmp59 = icmp sgt i32 %Nrhs, 0
  br i1 %cmp59, label %if.then61, label %if.end92

if.then61:                                        ; preds = %if.end39
  %cmp62 = icmp eq i8* %Rhsfmt, null
  %Valfmt.addr.1.Rhsfmt = select i1 %cmp62, i8* %Valfmt.addr.1, i8* %Rhsfmt
  call fastcc void @ParseRfmt(i8* %Valfmt.addr.1.Rhsfmt, i32* %Rhsperline, i32* %Rhswidth, i32* %Rhsprec, i32* %Rhsflag) #9
  %arraydecay67 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0
  %11 = load i32* %Rhswidth, align 4, !tbaa !3
  %call68 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay67, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i32 %11) #8
  %12 = load i32* %Rhsperline, align 4, !tbaa !3
  %div69 = sdiv i32 %nrhsentries.0, %12
  %rem70 = srem i32 %nrhsentries.0, %12
  %not.cmp71 = icmp ne i32 %rem70, 0
  %inc74 = zext i1 %not.cmp71 to i32
  %rhscrd.0 = add nsw i32 %inc74, %div69
  %arrayidx76 = getelementptr inbounds i8* %Rhstype, i64 1
  %13 = load i8* %arrayidx76, align 1, !tbaa !1
  %cmp78 = icmp eq i8 %13, 71
  %add81 = zext i1 %cmp78 to i32
  %add81.rhscrd.0 = shl nsw i32 %rhscrd.0, %add81
  %arrayidx83 = getelementptr inbounds i8* %Rhstype, i64 2
  %14 = load i8* %arrayidx83, align 1, !tbaa !1
  %cmp85 = icmp eq i8 %14, 88
  %add88 = zext i1 %cmp85 to i32
  %rhscrd.2 = shl nsw i32 %add81.rhscrd.0, %add88
  %mul90 = mul nsw i32 %rhscrd.2, %Nrhs
  br label %if.end92

if.end92:                                         ; preds = %if.end39, %if.then61
  %15 = phi i32 [ %11, %if.then61 ], [ undef, %if.end39 ]
  %16 = phi i32 [ %12, %if.then61 ], [ undef, %if.end39 ]
  %Rhsfmt.addr.1 = phi i8* [ %Valfmt.addr.1.Rhsfmt, %if.then61 ], [ %Rhsfmt, %if.end39 ]
  %rhscrd.3 = phi i32 [ %mul90, %if.then61 ], [ 0, %if.end39 ]
  %add93 = add nsw i32 %div.inc, 4
  %add94 = add nsw i32 %add93, %indcrd.0
  %add95 = add nsw i32 %add94, %div52.inc57
  %add96 = add nsw i32 %add95, %rhscrd.3
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([32 x i8]* @.str49, i64 0, i64 0), i8* %Title, i8* %Key, i32 %add96, i32 %div.inc, i32 %indcrd.0, i32 %div52.inc57, i32 %rhscrd.3) #8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([21 x i8]* @.str50, i64 0, i64 0), i8* %Type, i8* getelementptr inbounds ([11 x i8]* @.str51, i64 0, i64 0), i32 %M, i32 %N, i32 %nz) #8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([16 x i8]* @.str52, i64 0, i64 0), i8* %.Ptrfmt, i8* %Indfmt.addr.0, i8* %Valfmt.addr.1) #8
  %cmp100 = icmp eq i32 %Nrhs, 0
  br i1 %cmp100, label %if.else104, label %if.then102

if.then102:                                       ; preds = %if.end92
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* %Rhsfmt.addr.1, i8* %Rhstype, i32 %Nrhs) #8
  br label %for.cond.preheader

if.else104:                                       ; preds = %if.end92
  %fputc440 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else104, %if.then102
  %cmp108460 = icmp sgt i32 %N, -1
  br i1 %cmp108460, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %arrayidx110 = getelementptr inbounds i32* %colptr, i64 %indvars.iv479
  %17 = load i32* %arrayidx110, align 4, !tbaa !3
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay, i32 %17) #8
  %indvars.iv.next480 = add i64 %indvars.iv479, 1
  %18 = trunc i64 %indvars.iv.next480 to i32
  %rem115 = srem i32 %18, %9
  %cmp116 = icmp eq i32 %rem115, 0
  br i1 %cmp116, label %if.then118, label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body, %if.then118
  %cmp108 = icmp slt i32 %18, %add
  br i1 %cmp108, label %for.body, label %for.end

if.then118:                                       ; preds = %for.body
  %fputc437 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %cmp124 = icmp eq i32 %rem, 0
  br i1 %cmp124, label %for.cond129.preheader, label %if.then126

if.then126:                                       ; preds = %for.end
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.end, %if.then126
  %cmp130458 = icmp sgt i32 %nz, 0
  br i1 %cmp130458, label %for.body132, label %for.end147

for.body132:                                      ; preds = %for.cond129.preheader, %for.cond129.backedge
  %indvars.iv475 = phi i64 [ %indvars.iv.next476, %for.cond129.backedge ], [ 0, %for.cond129.preheader ]
  %arrayidx134 = getelementptr inbounds i32* %rowind, i64 %indvars.iv475
  %19 = load i32* %arrayidx134, align 4, !tbaa !3
  %call137 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay25, i32 %19) #8
  %indvars.iv.next476 = add i64 %indvars.iv475, 1
  %20 = trunc i64 %indvars.iv.next476 to i32
  %rem139 = srem i32 %20, %10
  %cmp140 = icmp eq i32 %rem139, 0
  br i1 %cmp140, label %if.then142, label %for.cond129.backedge

for.cond129.backedge:                             ; preds = %for.body132, %if.then142
  %exitcond478 = icmp eq i32 %20, %nz
  br i1 %exitcond478, label %for.end147, label %for.body132

if.then142:                                       ; preds = %for.body132
  %fputc434 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond129.backedge

for.end147:                                       ; preds = %for.cond129.backedge, %for.cond129.preheader
  %cmp149 = icmp eq i32 %rem46, 0
  br i1 %cmp149, label %if.end153, label %if.then151

if.then151:                                       ; preds = %for.end147
  %fputc407 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %if.end153

if.end153:                                        ; preds = %for.end147, %if.then151
  %21 = load i8* %Type, align 1, !tbaa !1
  %cmp156 = icmp eq i8 %21, 80
  br i1 %cmp156, label %if.end285, label %for.cond159.preheader

for.cond159.preheader:                            ; preds = %if.end153
  %cmp160456 = icmp sgt i32 %nvalentries.0, 0
  br i1 %cmp160456, label %for.body162.lr.ph, label %for.end175

for.body162.lr.ph:                                ; preds = %for.cond159.preheader
  %arraydecay163 = getelementptr inbounds [19 x i8]* %vformat, i64 0, i64 0
  br label %for.body162

for.body162:                                      ; preds = %for.cond159.backedge, %for.body162.lr.ph
  %indvars.iv471 = phi i64 [ 0, %for.body162.lr.ph ], [ %indvars.iv.next472, %for.cond159.backedge ]
  %22 = trunc i64 %indvars.iv471 to i32
  %mul164 = mul nsw i32 %7, %22
  %idx.ext = sext i32 %mul164 to i64
  %add.ptr = getelementptr inbounds i8* %val, i64 %idx.ext
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay163, i8* %add.ptr) #8
  %indvars.iv.next472 = add i64 %indvars.iv471, 1
  %23 = trunc i64 %indvars.iv.next472 to i32
  %rem167 = srem i32 %23, %8
  %cmp168 = icmp eq i32 %rem167, 0
  br i1 %cmp168, label %if.then170, label %for.cond159.backedge

for.cond159.backedge:                             ; preds = %for.body162, %if.then170
  %exitcond474 = icmp eq i32 %23, %nvalentries.0
  br i1 %exitcond474, label %for.end175, label %for.body162

if.then170:                                       ; preds = %for.body162
  %fputc431 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.cond159.backedge

for.end175:                                       ; preds = %for.cond159.backedge, %for.cond159.preheader
  %cmp177 = icmp eq i32 %rem53, 0
  br i1 %cmp177, label %if.end181, label %if.then179

if.then179:                                       ; preds = %for.end175
  %fputc410 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %if.end181

if.end181:                                        ; preds = %for.end175, %if.then179
  br i1 %cmp59, label %for.cond189.preheader.lr.ph, label %if.end285

for.cond189.preheader.lr.ph:                      ; preds = %if.end181
  %cmp190441 = icmp sgt i32 %nrhsentries.0, 0
  %arrayidx215 = getelementptr inbounds i8* %Rhstype, i64 1
  %arrayidx248 = getelementptr inbounds i8* %Rhstype, i64 2
  %arraydecay257 = getelementptr inbounds [19 x i8]* %rformat, i64 0, i64 0
  br label %for.cond189.preheader

for.cond189.preheader:                            ; preds = %for.inc281, %for.cond189.preheader.lr.ph
  %linemod.0455 = phi i32 [ 0, %for.cond189.preheader.lr.ph ], [ %linemod.3, %for.inc281 ]
  %acount.0454 = phi i32 [ 1, %for.cond189.preheader.lr.ph ], [ %acount.5, %for.inc281 ]
  %j.0453 = phi i32 [ 0, %for.cond189.preheader.lr.ph ], [ %inc282, %for.inc281 ]
  br i1 %cmp190441, label %for.body192, label %for.end207

for.body192:                                      ; preds = %for.cond189.preheader, %for.inc205
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc205 ], [ 0, %for.cond189.preheader ]
  %acount.1443 = phi i32 [ %inc198, %for.inc205 ], [ %acount.0454, %for.cond189.preheader ]
  %24 = trunc i64 %indvars.iv to i32
  %mul194 = mul nsw i32 %15, %24
  %idx.ext195 = sext i32 %mul194 to i64
  %add.ptr196 = getelementptr inbounds i8* %rhs, i64 %idx.ext195
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr196) #8
  %inc198 = add nsw i32 %acount.1443, 1
  %rem199 = srem i32 %acount.1443, %16
  %cmp200 = icmp eq i32 %rem199, %linemod.0455
  br i1 %cmp200, label %if.then202, label %for.inc205

if.then202:                                       ; preds = %for.body192
  %fputc428 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc205

for.inc205:                                       ; preds = %for.body192, %if.then202
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nrhsentries.0
  br i1 %exitcond, label %for.cond189.for.end207_crit_edge, label %for.body192

for.cond189.for.end207_crit_edge:                 ; preds = %for.inc205
  %25 = add i32 %nrhsentries.0, %acount.0454
  br label %for.end207

for.end207:                                       ; preds = %for.cond189.for.end207_crit_edge, %for.cond189.preheader
  %acount.1.lcssa = phi i32 [ %25, %for.cond189.for.end207_crit_edge ], [ %acount.0454, %for.cond189.preheader ]
  %rem208 = srem i32 %acount.1.lcssa, %16
  %cmp209 = icmp eq i32 %rem208, %linemod.0455
  br i1 %cmp209, label %if.end214, label %if.then211

if.then211:                                       ; preds = %for.end207
  %fputc413 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub = add nsw i32 %acount.1.lcssa, -1
  %rem213 = srem i32 %sub, %16
  br label %if.end214

if.end214:                                        ; preds = %for.end207, %if.then211
  %linemod.1 = phi i32 [ %rem213, %if.then211 ], [ %linemod.0455, %for.end207 ]
  %26 = load i8* %arrayidx215, align 1, !tbaa !1
  %cmp217 = icmp eq i8 %26, 71
  br i1 %cmp217, label %for.cond220.preheader, label %if.end247

for.cond220.preheader:                            ; preds = %if.end214
  br i1 %cmp190441, label %for.body223, label %for.end238

for.body223:                                      ; preds = %for.cond220.preheader, %for.inc236
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %for.inc236 ], [ 0, %for.cond220.preheader ]
  %acount.2446 = phi i32 [ %inc229, %for.inc236 ], [ %acount.1.lcssa, %for.cond220.preheader ]
  %27 = trunc i64 %indvars.iv462 to i32
  %mul225 = mul nsw i32 %15, %27
  %idx.ext226 = sext i32 %mul225 to i64
  %add.ptr227 = getelementptr inbounds i8* %guess, i64 %idx.ext226
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr227) #8
  %inc229 = add nsw i32 %acount.2446, 1
  %rem230 = srem i32 %acount.2446, %16
  %cmp231 = icmp eq i32 %rem230, %linemod.1
  br i1 %cmp231, label %if.then233, label %for.inc236

if.then233:                                       ; preds = %for.body223
  %fputc425 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc236

for.inc236:                                       ; preds = %for.body223, %if.then233
  %indvars.iv.next463 = add i64 %indvars.iv462, 1
  %lftr.wideiv464 = trunc i64 %indvars.iv.next463 to i32
  %exitcond465 = icmp eq i32 %lftr.wideiv464, %nrhsentries.0
  br i1 %exitcond465, label %for.cond220.for.end238_crit_edge, label %for.body223

for.cond220.for.end238_crit_edge:                 ; preds = %for.inc236
  %28 = add i32 %nrhsentries.0, %acount.1.lcssa
  br label %for.end238

for.end238:                                       ; preds = %for.cond220.for.end238_crit_edge, %for.cond220.preheader
  %acount.2.lcssa = phi i32 [ %28, %for.cond220.for.end238_crit_edge ], [ %acount.1.lcssa, %for.cond220.preheader ]
  %rem239 = srem i32 %acount.2.lcssa, %16
  %cmp240 = icmp eq i32 %rem239, %linemod.1
  br i1 %cmp240, label %if.end247, label %if.then242

if.then242:                                       ; preds = %for.end238
  %fputc422 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub244 = add nsw i32 %acount.2.lcssa, -1
  %rem245 = srem i32 %sub244, %16
  br label %if.end247

if.end247:                                        ; preds = %for.end238, %if.end214, %if.then242
  %acount.3 = phi i32 [ %acount.2.lcssa, %if.then242 ], [ %acount.1.lcssa, %if.end214 ], [ %acount.2.lcssa, %for.end238 ]
  %linemod.2 = phi i32 [ %rem245, %if.then242 ], [ %linemod.1, %if.end214 ], [ %linemod.1, %for.end238 ]
  %29 = load i8* %arrayidx248, align 1, !tbaa !1
  %cmp250 = icmp eq i8 %29, 88
  br i1 %cmp250, label %for.cond253.preheader, label %for.inc281

for.cond253.preheader:                            ; preds = %if.end247
  br i1 %cmp190441, label %for.body256, label %for.end271

for.body256:                                      ; preds = %for.cond253.preheader, %for.inc269
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %for.inc269 ], [ 0, %for.cond253.preheader ]
  %acount.4450 = phi i32 [ %inc262, %for.inc269 ], [ %acount.3, %for.cond253.preheader ]
  %30 = trunc i64 %indvars.iv466 to i32
  %mul258 = mul nsw i32 %15, %30
  %idx.ext259 = sext i32 %mul258 to i64
  %add.ptr260 = getelementptr inbounds i8* %exact, i64 %idx.ext259
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out_file.0, i8* %arraydecay257, i8* %add.ptr260) #8
  %inc262 = add nsw i32 %acount.4450, 1
  %rem263 = srem i32 %acount.4450, %16
  %cmp264 = icmp eq i32 %rem263, %linemod.2
  br i1 %cmp264, label %if.then266, label %for.inc269

if.then266:                                       ; preds = %for.body256
  %fputc419 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  br label %for.inc269

for.inc269:                                       ; preds = %for.body256, %if.then266
  %indvars.iv.next467 = add i64 %indvars.iv466, 1
  %lftr.wideiv468 = trunc i64 %indvars.iv.next467 to i32
  %exitcond469 = icmp eq i32 %lftr.wideiv468, %nrhsentries.0
  br i1 %exitcond469, label %for.cond253.for.end271_crit_edge, label %for.body256

for.cond253.for.end271_crit_edge:                 ; preds = %for.inc269
  %31 = add i32 %nrhsentries.0, %acount.3
  br label %for.end271

for.end271:                                       ; preds = %for.cond253.for.end271_crit_edge, %for.cond253.preheader
  %acount.4.lcssa = phi i32 [ %31, %for.cond253.for.end271_crit_edge ], [ %acount.3, %for.cond253.preheader ]
  %rem272 = srem i32 %acount.4.lcssa, %16
  %cmp273 = icmp eq i32 %rem272, %linemod.2
  br i1 %cmp273, label %for.inc281, label %if.then275

if.then275:                                       ; preds = %for.end271
  %fputc416 = call i32 @fputc(i32 10, %struct._IO_FILE* %out_file.0)
  %sub277 = add nsw i32 %acount.4.lcssa, -1
  %rem278 = srem i32 %sub277, %16
  br label %for.inc281

for.inc281:                                       ; preds = %for.end271, %if.end247, %if.then275
  %acount.5 = phi i32 [ %acount.4.lcssa, %if.then275 ], [ %acount.4.lcssa, %for.end271 ], [ %acount.3, %if.end247 ]
  %linemod.3 = phi i32 [ %rem278, %if.then275 ], [ %linemod.2, %for.end271 ], [ %linemod.2, %if.end247 ]
  %inc282 = add nsw i32 %j.0453, 1
  %exitcond470 = icmp eq i32 %inc282, %Nrhs
  br i1 %exitcond470, label %if.end285, label %for.cond189.preheader

if.end285:                                        ; preds = %for.inc281, %if.end153, %if.end181
  %call286 = call i32 @fclose(%struct._IO_FILE* %out_file.0) #8
  %cmp287 = icmp eq i32 %call286, 0
  br i1 %cmp287, label %return, label %if.then289

if.then289:                                       ; preds = %if.end285
  %32 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str60, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %32)
  br label %return

return:                                           ; preds = %if.end285, %if.then289, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then289 ], [ 1, %if.end285 ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() #7

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
