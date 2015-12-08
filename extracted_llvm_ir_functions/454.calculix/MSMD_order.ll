; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_order.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [53 x i8] c"\0A fatal error in MSMD_order(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"\0A\0A inside MSMD_order()\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"\0A stages[%d]\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"\0A fatal error in MSMD_order(%p,%p,%p,%p)\0A bad MSMDinfo object\0A\00", align 1
@.str4 = private unnamed_addr constant [37 x i8] c"\0A\0A trying to initialize MSMD object \00", align 1
@.str5 = private unnamed_addr constant [38 x i8] c"\0A\0A MSMD object initialized, %d stages\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"\0A\0A initial compression\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"\0A\0A %d checked, %d found indistinguishable\00", align 1
@.str8 = private unnamed_addr constant [30 x i8] c"\0A\0A ##### elimination stage %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_order(%struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._Graph* %g, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond240 = or i1 %or.cond, %cmp3
  br i1 %or.cond240, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %1 = load i32* %msglvl, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %1, 2
  br i1 %cmp4, label %if.then5, label %if.end18

if.then5:                                         ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %2 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %2)
  %cmp7 = icmp eq i32* %stages, null
  br i1 %cmp7, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.then5
  %4 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %nvtx10 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %5 = load i32* %nvtx10, align 4, !tbaa !3
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 %5) #5
  %6 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %7 = load i32* %nvtx10, align 4, !tbaa !3
  %call14 = call i32 @IVfp80(%struct._IO_FILE* %6, i32 %7, i32* %stages, i32 80, i32* %ierr) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.then8
  %8 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call17 = call i32 @fflush(%struct._IO_FILE* %8) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end
  %call19 = call i32 @MSMDinfo_isValid(%struct._MSMDinfo* %info) #5
  %cmp20 = icmp eq i32 %call19, 1
  br i1 %cmp20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end18
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([63 x i8]* @.str3, i64 0, i64 0), %struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %if.end18
  %10 = load i32* %msglvl, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %10, 3
  br i1 %cmp25, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end23
  %msgFile27 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %11 = load %struct._IO_FILE** %msgFile27, align 8, !tbaa !0
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %11)
  %13 = load %struct._IO_FILE** %msgFile27, align 8, !tbaa !0
  %call30 = call i32 @Graph_writeForHumanEye(%struct._Graph* %g, %struct._IO_FILE* %13) #5
  %14 = load %struct._IO_FILE** %msgFile27, align 8, !tbaa !0
  %call32 = call i32 @fflush(%struct._IO_FILE* %14) #5
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end23
  call void @MSMD_init(%struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #5
  %nvtx34 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %15 = load i32* %nvtx34, align 4, !tbaa !3
  %nstage35 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9
  %16 = load i32* %nstage35, align 4, !tbaa !3
  %17 = load i32* %msglvl, align 4, !tbaa !3
  %cmp37 = icmp sgt i32 %17, 2
  br i1 %cmp37, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end33
  %msgFile39 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %18 = load %struct._IO_FILE** %msgFile39, align 8, !tbaa !0
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([38 x i8]* @.str5, i64 0, i64 0), i32 %16) #5
  %19 = load %struct._IO_FILE** %msgFile39, align 8, !tbaa !0
  %call42 = call i32 @fflush(%struct._IO_FILE* %19) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end33
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 0
  %20 = load i32* %compressFlag, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %20, 3
  br i1 %cmp44, label %if.then45, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  %reachIV65.pre = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  br label %if.end64

if.then45:                                        ; preds = %if.end43
  %21 = load i32* %msglvl, align 4, !tbaa !3
  %cmp47 = icmp sgt i32 %21, 2
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.then45
  %msgFile49 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %22 = load %struct._IO_FILE** %msgFile49, align 8, !tbaa !0
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE** %msgFile49, align 8, !tbaa !0
  %call52 = call i32 @fflush(%struct._IO_FILE* %24) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.then45
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  call void @IV_setSize(%struct._IV* %reachIV, i32 %15) #5
  call void @IV_ramp(%struct._IV* %reachIV, i32 0, i32 1) #5
  call void @MSMD_findInodes(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %25 = load i32* %msglvl, align 4, !tbaa !3
  %cmp56 = icmp sgt i32 %25, 2
  br i1 %cmp56, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.end53
  %msgFile58 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %26 = load %struct._IO_FILE** %msgFile58, align 8, !tbaa !0
  %stageInfo = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %27 = load %struct._MSMDstageInfo** %stageInfo, align 8, !tbaa !0
  %ncheck = getelementptr inbounds %struct._MSMDstageInfo* %27, i64 0, i32 9
  %28 = load i32* %ncheck, align 4, !tbaa !3
  %nindst = getelementptr inbounds %struct._MSMDstageInfo* %27, i64 0, i32 10
  %29 = load i32* %nindst, align 4, !tbaa !3
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), i32 %28, i32 %29) #5
  %30 = load %struct._IO_FILE** %msgFile58, align 8, !tbaa !0
  %call62 = call i32 @fflush(%struct._IO_FILE* %30) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.end53
  call void @MSMD_cleanReachSet(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  br label %if.end64

if.end64:                                         ; preds = %if.end43.if.end64_crit_edge, %if.end63
  %reachIV65.pre-phi = phi %struct._IV* [ %reachIV65.pre, %if.end43.if.end64_crit_edge ], [ %reachIV, %if.end63 ]
  call void @IV_setSize(%struct._IV* %reachIV65.pre-phi, i32 0) #5
  %istage66 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 8
  store i32 0, i32* %istage66, align 4, !tbaa !3
  %cmp68246 = icmp slt i32 %16, 0
  br i1 %cmp68246, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end64
  %msgFile72 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %stageInfo78 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end77, %for.body.lr.ph
  %storemerge247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end77 ]
  %31 = load i32* %msglvl, align 4, !tbaa !3
  %cmp70 = icmp sgt i32 %31, 2
  br i1 %cmp70, label %if.then71, label %if.end77

if.then71:                                        ; preds = %for.body
  %32 = load %struct._IO_FILE** %msgFile72, align 8, !tbaa !0
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([30 x i8]* @.str8, i64 0, i64 0), i32 %storemerge247) #5
  %33 = load %struct._IO_FILE** %msgFile72, align 8, !tbaa !0
  %call76 = call i32 @fflush(%struct._IO_FILE* %33) #5
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %for.body
  call void @MSMD_eliminateStage(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %34 = load %struct._MSMDstageInfo** %stageInfo78, align 8, !tbaa !0
  %cpu = getelementptr inbounds %struct._MSMDstageInfo* %34, i64 0, i32 12
  store double 0.000000e+00, double* %cpu, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct._MSMDstageInfo* %34, i64 1
  store %struct._MSMDstageInfo* %incdec.ptr, %struct._MSMDstageInfo** %stageInfo78, align 8, !tbaa !0
  %35 = load i32* %istage66, align 4, !tbaa !3
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %istage66, align 4, !tbaa !3
  %cmp68 = icmp slt i32 %35, %16
  br i1 %cmp68, label %for.body, label %for.end

for.end:                                          ; preds = %if.end77, %if.end64
  call void @IV_setSize(%struct._IV* %reachIV65.pre-phi, i32 0) #5
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  %36 = load %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %idx.ext = sext i32 %15 to i64
  %add.ptr.sum = add i64 %idx.ext, -1
  %add.ptr83 = getelementptr inbounds %struct._MSMDvtx* %36, i64 %add.ptr.sum
  %cmp85244 = icmp slt i64 %add.ptr.sum, 0
  br i1 %cmp85244, label %for.end90, label %for.body86

for.body86:                                       ; preds = %for.end, %for.inc88
  %v81.0245 = phi %struct._MSMDvtx* [ %incdec.ptr89, %for.inc88 ], [ %36, %for.end ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v81.0245, i64 0, i32 2
  %37 = load i8* %status, align 1, !tbaa !1
  %conv = sext i8 %37 to i32
  switch i32 %conv, label %sw.default [
    i32 69, label %for.inc88
    i32 76, label %for.inc88
    i32 73, label %for.inc88
  ]

sw.default:                                       ; preds = %for.body86
  %id = getelementptr inbounds %struct._MSMDvtx* %v81.0245, i64 0, i32 0
  %38 = load i32* %id, align 4, !tbaa !3
  call void @IV_push(%struct._IV* %reachIV65.pre-phi, i32 %38) #5
  br label %for.inc88

for.inc88:                                        ; preds = %sw.default, %for.body86, %for.body86, %for.body86
  %incdec.ptr89 = getelementptr inbounds %struct._MSMDvtx* %v81.0245, i64 1
  %cmp85 = icmp ugt %struct._MSMDvtx* %incdec.ptr89, %add.ptr83
  br i1 %cmp85, label %for.end90, label %for.body86

for.end90:                                        ; preds = %for.inc88, %for.end
  call void @MSMD_findInodes(%struct._MSMD* %msmd, %struct._MSMDinfo* %info) #5
  %add = add i32 %16, 1
  %stageInfo91 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  %39 = load %struct._MSMDstageInfo** %stageInfo91, align 8, !tbaa !0
  %idx.ext92 = sext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext92
  %add.ptr93 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %idx.neg
  store %struct._MSMDstageInfo* %add.ptr93, %struct._MSMDstageInfo** %stageInfo91, align 8, !tbaa !0
  %idx.ext96 = sext i32 %16 to i64
  %add.ptr93.sum = sub i64 %idx.ext96, %idx.ext92
  %add.ptr97.sum = add i64 %add.ptr93.sum, 1
  br i1 %cmp68246, label %for.end132, label %for.body102.lr.ph

for.body102.lr.ph:                                ; preds = %for.end90
  %nstep103 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 0
  %nfront105 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 1
  %welim107 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 2
  %nfind109 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 3
  %nzf111 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 4
  %ops113 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 5
  %nexact2115 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 6
  %nexact3117 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 7
  %napprox119 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 8
  %ncheck122 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 9
  %nindst125 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 10
  %noutmtch127 = getelementptr inbounds %struct._MSMDstageInfo* %39, i64 %add.ptr97.sum, i32 11
  %.pre = load i32* %nstep103, align 4, !tbaa !3
  %.pre248 = load i32* %nfront105, align 4, !tbaa !3
  %.pre249 = load i32* %welim107, align 4, !tbaa !3
  %.pre250 = load i32* %nfind109, align 4, !tbaa !3
  %.pre251 = load i32* %nzf111, align 4, !tbaa !3
  %.pre252 = load double* %ops113, align 8, !tbaa !4
  %.pre253 = load i32* %nexact2115, align 4, !tbaa !3
  %.pre254 = load i32* %nexact3117, align 4, !tbaa !3
  %.pre255 = load i32* %napprox119, align 4, !tbaa !3
  %.pre256 = load i32* %ncheck122, align 4, !tbaa !3
  %.pre257 = load i32* %nindst125, align 4, !tbaa !3
  %.pre258 = load i32* %noutmtch127, align 4, !tbaa !3
  br label %for.body102

for.body102:                                      ; preds = %for.body102, %for.body102.lr.ph
  %40 = phi i32 [ %.pre258, %for.body102.lr.ph ], [ %add128, %for.body102 ]
  %41 = phi i32 [ %.pre257, %for.body102.lr.ph ], [ %add126, %for.body102 ]
  %42 = phi i32 [ %.pre256, %for.body102.lr.ph ], [ %add123, %for.body102 ]
  %43 = phi i32 [ %.pre255, %for.body102.lr.ph ], [ %add120, %for.body102 ]
  %44 = phi i32 [ %.pre254, %for.body102.lr.ph ], [ %add118, %for.body102 ]
  %45 = phi i32 [ %.pre253, %for.body102.lr.ph ], [ %add116, %for.body102 ]
  %46 = phi double [ %.pre252, %for.body102.lr.ph ], [ %add114, %for.body102 ]
  %47 = phi i32 [ %.pre251, %for.body102.lr.ph ], [ %add112, %for.body102 ]
  %48 = phi i32 [ %.pre250, %for.body102.lr.ph ], [ %add110, %for.body102 ]
  %49 = phi i32 [ %.pre249, %for.body102.lr.ph ], [ %add108, %for.body102 ]
  %50 = phi i32 [ %.pre248, %for.body102.lr.ph ], [ %add106, %for.body102 ]
  %51 = phi i32 [ %.pre, %for.body102.lr.ph ], [ %add104, %for.body102 ]
  %istage.0243 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc130, %for.body102 ]
  %now.0242 = phi %struct._MSMDstageInfo* [ %add.ptr93, %for.body102.lr.ph ], [ %incdec.ptr131, %for.body102 ]
  %nstep = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 0
  %52 = load i32* %nstep, align 4, !tbaa !3
  %add104 = add nsw i32 %51, %52
  store i32 %add104, i32* %nstep103, align 4, !tbaa !3
  %nfront = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 1
  %53 = load i32* %nfront, align 4, !tbaa !3
  %add106 = add nsw i32 %50, %53
  store i32 %add106, i32* %nfront105, align 4, !tbaa !3
  %welim = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 2
  %54 = load i32* %welim, align 4, !tbaa !3
  %add108 = add nsw i32 %49, %54
  store i32 %add108, i32* %welim107, align 4, !tbaa !3
  %nfind = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 3
  %55 = load i32* %nfind, align 4, !tbaa !3
  %add110 = add nsw i32 %48, %55
  store i32 %add110, i32* %nfind109, align 4, !tbaa !3
  %nzf = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 4
  %56 = load i32* %nzf, align 4, !tbaa !3
  %add112 = add nsw i32 %47, %56
  store i32 %add112, i32* %nzf111, align 4, !tbaa !3
  %ops = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 5
  %57 = load double* %ops, align 8, !tbaa !4
  %add114 = fadd double %57, %46
  store double %add114, double* %ops113, align 8, !tbaa !4
  %nexact2 = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 6
  %58 = load i32* %nexact2, align 4, !tbaa !3
  %add116 = add nsw i32 %45, %58
  store i32 %add116, i32* %nexact2115, align 4, !tbaa !3
  %nexact3 = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 7
  %59 = load i32* %nexact3, align 4, !tbaa !3
  %add118 = add nsw i32 %44, %59
  store i32 %add118, i32* %nexact3117, align 4, !tbaa !3
  %napprox = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 8
  %60 = load i32* %napprox, align 4, !tbaa !3
  %add120 = add nsw i32 %43, %60
  store i32 %add120, i32* %napprox119, align 4, !tbaa !3
  %ncheck121 = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 9
  %61 = load i32* %ncheck121, align 4, !tbaa !3
  %add123 = add nsw i32 %42, %61
  store i32 %add123, i32* %ncheck122, align 4, !tbaa !3
  %nindst124 = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 10
  %62 = load i32* %nindst124, align 4, !tbaa !3
  %add126 = add nsw i32 %41, %62
  store i32 %add126, i32* %nindst125, align 4, !tbaa !3
  %noutmtch = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 0, i32 11
  %63 = load i32* %noutmtch, align 4, !tbaa !3
  %add128 = add nsw i32 %40, %63
  store i32 %add128, i32* %noutmtch127, align 4, !tbaa !3
  %inc130 = add nsw i32 %istage.0243, 1
  %incdec.ptr131 = getelementptr inbounds %struct._MSMDstageInfo* %now.0242, i64 1
  %exitcond = icmp eq i32 %inc130, %add
  br i1 %exitcond, label %for.end132, label %for.body102

for.end132:                                       ; preds = %for.body102, %for.end90
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  %64 = load %struct._IIheap** %heap, align 8, !tbaa !0
  call void @IIheap_free(%struct._IIheap* %64) #5
  store %struct._IIheap* null, %struct._IIheap** %heap, align 8, !tbaa !0
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  call void @IV_clearData(%struct._IV* %ivtmpIV) #5
  call void @IV_clearData(%struct._IV* %reachIV65.pre-phi) #5
  %totalCPU = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 11
  store double 0.000000e+00, double* %totalCPU, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @MSMDinfo_isValid(%struct._MSMDinfo*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @MSMD_init(%struct._MSMD*, %struct._Graph*, i32*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IV_ramp(%struct._IV*, i32, i32) #3

; Function Attrs: optsize
declare void @MSMD_findInodes(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @MSMD_cleanReachSet(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @MSMD_eliminateStage(%struct._MSMD*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @IV_push(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IIheap_free(%struct._IIheap*) #3

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
