; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDinfo.c\00", align 1
@stdout = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [51 x i8] c"\0A fatal error in MSMDinfo_print(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"\0A\0A MSMDinfo :\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"\0A    compressFlag = %d : \00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"compress graph, \00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"during elimination do not compress\00", align 1
@.str7 = private unnamed_addr constant [40 x i8] c"during elimination compress 2-adj nodes\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"during elimination compress all nodes\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"\0A unknown type\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"\0A    prioType = %d : \00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c" true updates\00", align 1
@.str12 = private unnamed_addr constant [21 x i8] c" approximate updates\00", align 1
@.str13 = private unnamed_addr constant [50 x i8] c" true updates for 2-adj nodes, others approximate\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c" unknown type\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"\0A    stepType = %f : \00", align 1
@.str16 = private unnamed_addr constant [20 x i8] c" single elimination\00", align 1
@.str17 = private unnamed_addr constant [49 x i8] c" multiple elimination of nodes of mininum degree\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c" multiple elimination in range [mindeg, %f*mindeg]\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"\0A    msglvl       = %d \00", align 1
@.str20 = private unnamed_addr constant [24 x i8] c"\0A    maxnbytes    = %d \00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"\0A    ordering cpu = %8.3f \00", align 1
@.str22 = private unnamed_addr constant [23 x i8] c"\0A    stage information\00", align 1
@.str23 = private unnamed_addr constant [70 x i8] c"\0A\0A stage #steps #fronts #weight #frontind     nzf          ops    CPU\00", align 1
@.str24 = private unnamed_addr constant [42 x i8] c"\0A   %3d %5d %6d %7d %9d %10d %12.0f %8.3f\00", align 1
@.str25 = private unnamed_addr constant [37 x i8] c"\0A total %5d %6d %7d %9d %10d %12.0f \00", align 1
@.str26 = private unnamed_addr constant [60 x i8] c"\0A\0A stage #nexact2 #exact3 #approx #check #indst #outmatched\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"\0A   %3d %6d %7d %6d %7d %8d %8d\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A total %6d %7d %6d %7d %8d %8d\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._MSMDinfo* @MSMDinfo_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 64) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 64, i32 21, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct._MSMDinfo*
  %compressFlag.i = bitcast i8* %call to i32*
  store i32 1, i32* %compressFlag.i, align 4, !tbaa !3
  %prioType.i = getelementptr inbounds i8* %call, i64 4
  %2 = bitcast i8* %prioType.i to i32*
  store i32 1, i32* %2, align 4, !tbaa !3
  %stepType.i = getelementptr inbounds i8* %call, i64 8
  %3 = bitcast i8* %stepType.i to double*
  store double 1.000000e+00, double* %3, align 8, !tbaa !4
  %seed.i = getelementptr inbounds i8* %call, i64 16
  %4 = bitcast i8* %seed.i to i32*
  store i32 0, i32* %4, align 4, !tbaa !3
  %msglvl.i = getelementptr inbounds i8* %call, i64 20
  %5 = bitcast i8* %msglvl.i to i32*
  store i32 0, i32* %5, align 4, !tbaa !3
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %msgFile.i = getelementptr inbounds i8* %call, i64 24
  %7 = bitcast i8* %msgFile.i to %struct._IO_FILE**
  store %struct._IO_FILE* %6, %struct._IO_FILE** %7, align 8, !tbaa !0
  %maxnbytes.i = getelementptr inbounds i8* %call, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %maxnbytes.i, i8 0, i64 32, i32 4, i1 false) #4
  ret %struct._MSMDinfo* %1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_setDefaultFields(%struct._MSMDinfo* nocapture %info) #0 {
entry:
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  store i32 1, i32* %compressFlag, align 4, !tbaa !3
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1
  store i32 1, i32* %prioType, align 4, !tbaa !3
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2
  store double 1.000000e+00, double* %stepType, align 8, !tbaa !4
  %seed = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3
  store i32 0, i32* %seed, align 4, !tbaa !3
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  store i32 0, i32* %msglvl, align 4, !tbaa !3
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  store %struct._IO_FILE* %0, %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6
  %1 = bitcast i32* %maxnbytes to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_clearData(%struct._MSMDinfo* nocapture %info) #0 {
entry:
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %0 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %cmp = icmp eq %struct._MSMDstageInfo* %0, null
  br i1 %cmp, label %if.end6, label %if.then3

if.then3:                                         ; preds = %entry
  %1 = bitcast %struct._MSMDstageInfo* %0 to i8*
  tail call void @free(i8* %1) #5
  store %struct._MSMDstageInfo* null, %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then3
  %compressFlag.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  store i32 1, i32* %compressFlag.i, align 4, !tbaa !3
  %prioType.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1
  store i32 1, i32* %prioType.i, align 4, !tbaa !3
  %stepType.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2
  store double 1.000000e+00, double* %stepType.i, align 8, !tbaa !4
  %seed.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 3
  store i32 0, i32* %seed.i, align 4, !tbaa !3
  %msglvl.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  store i32 0, i32* %msglvl.i, align 4, !tbaa !3
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %msgFile.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  store %struct._IO_FILE* %2, %struct._IO_FILE** %msgFile.i, align 8, !tbaa !0
  %maxnbytes.i = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6
  %3 = bitcast i32* %maxnbytes.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 4, i1 false) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_free(%struct._MSMDinfo* %info) #0 {
entry:
  tail call void @MSMDinfo_clearData(%struct._MSMDinfo* %info) #7
  %cmp = icmp eq %struct._MSMDinfo* %info, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct._MSMDinfo* %info to i8*
  tail call void @free(i8* %0) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MSMDinfo_print(%struct._MSMDinfo* %info, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._MSMDinfo* %info, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._MSMDinfo* %info, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  %2 = load i32* %compressFlag, align 4, !tbaa !3
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0), i32 %2) #5
  %3 = load i32* %compressFlag, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %3, 3
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp)
  %.pre = load i32* %compressFlag, align 4, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %5 = phi i32 [ %.pre, %if.then6 ], [ %3, %if.end ]
  %rem = srem i32 %5, 4
  switch i32 %rem, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end8
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str7, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb11, %sw.bb
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1
  %10 = load i32* %prioType, align 4, !tbaa !3
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 %10) #5
  %11 = load i32* %prioType, align 4, !tbaa !3
  switch i32 %11, label %sw.default24 [
    i32 1, label %sw.bb18
    i32 2, label %sw.bb20
    i32 3, label %sw.bb22
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog26

sw.bb20:                                          ; preds = %sw.epilog
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str12, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog26

sw.bb22:                                          ; preds = %sw.epilog
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str13, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog26

sw.default24:                                     ; preds = %sw.epilog
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.default24, %sw.bb22, %sw.bb20, %sw.bb18
  %stepType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 2
  %16 = load double* %stepType, align 8, !tbaa !4
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0), double %16) #5
  %17 = load double* %stepType, align 8, !tbaa !4
  %cmp29 = fcmp olt double %17, 1.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.epilog26
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str16, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %fp)
  br label %if.end40

if.else:                                          ; preds = %sw.epilog26
  %cmp33 = fcmp oeq double %17, 1.000000e+00
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str17, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %fp)
  br label %if.end40

if.else36:                                        ; preds = %if.else
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), double %17) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %if.else36, %if.then30
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %20 = load i32* %msglvl, align 4, !tbaa !3
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0), i32 %20) #5
  %maxnbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 6
  %21 = load i32* %maxnbytes, align 4, !tbaa !3
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str20, i64 0, i64 0), i32 %21) #5
  %totalCPU = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 11
  %22 = load double* %totalCPU, align 8, !tbaa !4
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %22) #5
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str22, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp)
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([70 x i8]* @.str23, i64 0, i64 0), i64 69, i64 1, %struct._IO_FILE* %fp)
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %25 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %nstage = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9
  %26 = load i32* %nstage, align 4, !tbaa !3
  %cmp46170 = icmp slt i32 %26, 0
  %nstep48171 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 0
  %27 = load i32* %nstep48171, align 4, !tbaa !3
  %nfront49172 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 1
  %28 = load i32* %nfront49172, align 4, !tbaa !3
  %welim50173 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 2
  %29 = load i32* %welim50173, align 4, !tbaa !3
  %nfind51174 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 3
  %30 = load i32* %nfind51174, align 4, !tbaa !3
  %nzf52175 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 4
  %31 = load i32* %nzf52175, align 4, !tbaa !3
  %ops53176 = getelementptr inbounds %struct._MSMDstageInfo* %25, i64 0, i32 5
  %32 = load double* %ops53176, align 8, !tbaa !4
  br i1 %cmp46170, label %for.end, label %for.body

for.body:                                         ; preds = %if.end40, %for.body
  %33 = phi double [ %46, %for.body ], [ %32, %if.end40 ]
  %34 = phi i32 [ %45, %for.body ], [ %31, %if.end40 ]
  %35 = phi i32 [ %44, %for.body ], [ %30, %if.end40 ]
  %36 = phi i32 [ %43, %for.body ], [ %29, %if.end40 ]
  %37 = phi i32 [ %42, %for.body ], [ %28, %if.end40 ]
  %38 = phi i32 [ %41, %for.body ], [ %27, %if.end40 ]
  %stageinfo.0178 = phi %struct._MSMDstageInfo* [ %incdec.ptr, %for.body ], [ %25, %if.end40 ]
  %istage.0177 = phi i32 [ %inc, %for.body ], [ 0, %if.end40 ]
  %cpu = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 0, i32 12
  %39 = load double* %cpu, align 8, !tbaa !4
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str24, i64 0, i64 0), i32 %istage.0177, i32 %38, i32 %37, i32 %36, i32 %35, i32 %34, double %33, double %39) #5
  %inc = add nsw i32 %istage.0177, 1
  %incdec.ptr = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1
  %40 = load i32* %nstage, align 4, !tbaa !3
  %cmp46 = icmp slt i32 %istage.0177, %40
  %nstep48 = getelementptr inbounds %struct._MSMDstageInfo* %incdec.ptr, i64 0, i32 0
  %41 = load i32* %nstep48, align 4, !tbaa !3
  %nfront49 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 1
  %42 = load i32* %nfront49, align 4, !tbaa !3
  %welim50 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 2
  %43 = load i32* %welim50, align 4, !tbaa !3
  %nfind51 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 3
  %44 = load i32* %nfind51, align 4, !tbaa !3
  %nzf52 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 4
  %45 = load i32* %nzf52, align 4, !tbaa !3
  %ops53 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.0178, i64 1, i32 5
  %46 = load double* %ops53, align 8, !tbaa !4
  br i1 %cmp46, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end40
  %.lcssa169 = phi double [ %32, %if.end40 ], [ %46, %for.body ]
  %.lcssa168 = phi i32 [ %31, %if.end40 ], [ %45, %for.body ]
  %.lcssa167 = phi i32 [ %30, %if.end40 ], [ %44, %for.body ]
  %.lcssa166 = phi i32 [ %29, %if.end40 ], [ %43, %for.body ]
  %.lcssa165 = phi i32 [ %28, %if.end40 ], [ %42, %for.body ]
  %.lcssa164 = phi i32 [ %27, %if.end40 ], [ %41, %for.body ]
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str25, i64 0, i64 0), i32 %.lcssa164, i32 %.lcssa165, i32 %.lcssa166, i32 %.lcssa167, i32 %.lcssa168, double %.lcssa169) #5
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([60 x i8]* @.str26, i64 0, i64 0), i64 59, i64 1, %struct._IO_FILE* %fp)
  %48 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %49 = load i32* %nstage, align 4, !tbaa !3
  %cmp59150 = icmp slt i32 %49, 0
  %nexact266151 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 6
  %50 = load i32* %nexact266151, align 4, !tbaa !3
  %nexact367152 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 7
  %51 = load i32* %nexact367152, align 4, !tbaa !3
  %napprox68153 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 8
  %52 = load i32* %napprox68153, align 4, !tbaa !3
  %ncheck69154 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 9
  %53 = load i32* %ncheck69154, align 4, !tbaa !3
  %nindst70155 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 10
  %54 = load i32* %nindst70155, align 4, !tbaa !3
  %noutmtch71156 = getelementptr inbounds %struct._MSMDstageInfo* %48, i64 0, i32 11
  %55 = load i32* %noutmtch71156, align 4, !tbaa !3
  br i1 %cmp59150, label %for.end65, label %for.body60

for.body60:                                       ; preds = %for.end, %for.body60
  %56 = phi i32 [ %68, %for.body60 ], [ %55, %for.end ]
  %57 = phi i32 [ %67, %for.body60 ], [ %54, %for.end ]
  %58 = phi i32 [ %66, %for.body60 ], [ %53, %for.end ]
  %59 = phi i32 [ %65, %for.body60 ], [ %52, %for.end ]
  %60 = phi i32 [ %64, %for.body60 ], [ %51, %for.end ]
  %61 = phi i32 [ %63, %for.body60 ], [ %50, %for.end ]
  %stageinfo.1158 = phi %struct._MSMDstageInfo* [ %incdec.ptr64, %for.body60 ], [ %48, %for.end ]
  %istage.1157 = phi i32 [ %inc63, %for.body60 ], [ 0, %for.end ]
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i32 %istage.1157, i32 %61, i32 %60, i32 %59, i32 %58, i32 %57, i32 %56) #5
  %inc63 = add nsw i32 %istage.1157, 1
  %incdec.ptr64 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1
  %62 = load i32* %nstage, align 4, !tbaa !3
  %cmp59 = icmp slt i32 %istage.1157, %62
  %nexact266 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 6
  %63 = load i32* %nexact266, align 4, !tbaa !3
  %nexact367 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 7
  %64 = load i32* %nexact367, align 4, !tbaa !3
  %napprox68 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 8
  %65 = load i32* %napprox68, align 4, !tbaa !3
  %ncheck69 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 9
  %66 = load i32* %ncheck69, align 4, !tbaa !3
  %nindst70 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 10
  %67 = load i32* %nindst70, align 4, !tbaa !3
  %noutmtch71 = getelementptr inbounds %struct._MSMDstageInfo* %stageinfo.1158, i64 1, i32 11
  %68 = load i32* %noutmtch71, align 4, !tbaa !3
  br i1 %cmp59, label %for.body60, label %for.end65

for.end65:                                        ; preds = %for.body60, %for.end
  %.lcssa149 = phi i32 [ %55, %for.end ], [ %68, %for.body60 ]
  %.lcssa148 = phi i32 [ %54, %for.end ], [ %67, %for.body60 ]
  %.lcssa147 = phi i32 [ %53, %for.end ], [ %66, %for.body60 ]
  %.lcssa146 = phi i32 [ %52, %for.end ], [ %65, %for.body60 ]
  %.lcssa145 = phi i32 [ %51, %for.end ], [ %64, %for.body60 ]
  %.lcssa = phi i32 [ %50, %for.end ], [ %63, %for.body60 ]
  %call72 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i32 %.lcssa, i32 %.lcssa145, i32 %.lcssa146, i32 %.lcssa147, i32 %.lcssa148, i32 %.lcssa149) #5
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @MSMDinfo_isValid(%struct._MSMDinfo* %info) #3 {
entry:
  %cmp = icmp eq %struct._MSMDinfo* %info, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  %0 = load i32* %compressFlag, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %0, 0
  %cmp4 = icmp eq i32 %0, 3
  %or.cond = or i1 %cmp1, %cmp4
  %cmp7 = icmp sgt i32 %0, 6
  %or.cond18 = or i1 %or.cond, %cmp7
  br i1 %or.cond18, label %if.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %prioType = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 1
  %1 = load i32* %prioType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %not. = icmp ult i32 %.off, 4
  %. = zext i1 %not. to i32
  ret i32 %.

if.end:                                           ; preds = %entry, %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
