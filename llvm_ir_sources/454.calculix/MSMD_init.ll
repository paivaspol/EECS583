; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_init.c'
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
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in MSMD_init(%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"\0A heap initialized\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_init.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str5 = private unnamed_addr constant [22 x i8] c"\0A vectors initialized\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"\0A ivtmpIV = %p\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"\0A reachIV = %p\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"\0A nvtx = %d, nvtx = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMD_init(%struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #0 {
entry:
  %iv = alloca i32, align 4
  %cmp = icmp eq %struct._MSMD* %msmd, null
  %cmp1 = icmp eq %struct._Graph* %g, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._MSMDinfo* %info, null
  %or.cond299 = or i1 %or.cond, %cmp3
  br i1 %or.cond299, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._MSMD* %msmd, %struct._Graph* %g, i32* %stages, %struct._MSMDinfo* %info) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @MSMD_clearData(%struct._MSMD* %msmd) #5
  %nvtx4 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %nvtx5 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0
  store i32 %1, i32* %nvtx5, align 4, !tbaa !3
  %call6 = call %struct._IIheap* @IIheap_new() #5
  %heap = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 1
  store %struct._IIheap* %call6, %struct._IIheap** %heap, align 8, !tbaa !0
  call void @IIheap_init(%struct._IIheap* %call6, i32 %1) #5
  %msglvl = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 4
  %2 = load i32* %msglvl, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %2, 3
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  %msgFile = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %3 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  %call12 = call i32 @fflush(%struct._IO_FILE* %5) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %6 = load %struct._IIheap** %heap, align 8, !tbaa !0
  %call15 = call i32 @IIheap_sizeOf(%struct._IIheap* %6) #5
  %nbytes = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 7
  %7 = load i32* %nbytes, align 4, !tbaa !3
  %add = add nsw i32 %7, %call15
  store i32 %add, i32* %nbytes, align 4, !tbaa !3
  %incrIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 2
  store i32 %1, i32* %incrIP, align 4, !tbaa !3
  %mul = shl nsw i32 %1, 1
  %call16 = call %struct._IP* @IP_init(i32 %mul, i32 1) #5
  %baseIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 3
  store %struct._IP* %call16, %struct._IP** %baseIP, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct._IP* %call16, i64 1
  %freeIP = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 4
  store %struct._IP* %add.ptr, %struct._IP** %freeIP, align 8, !tbaa !0
  %next = getelementptr inbounds %struct._IP* %call16, i64 0, i32 1
  store %struct._IP* null, %struct._IP** %next, align 8, !tbaa !0
  %conv = sext i32 %1 to i64
  %mul19 = shl i32 %1, 4
  %8 = load i32* %nbytes, align 4, !tbaa !3
  %add22 = add i32 %8, %mul19
  store i32 %add22, i32* %nbytes, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %if.then26, label %if.else37

if.then26:                                        ; preds = %if.end13
  %mul28 = mul i64 %conv, 56
  %call29 = call noalias i8* @malloc(i64 %mul28) #5
  %9 = bitcast i8* %call29 to %struct._MSMDvtx*
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  store %struct._MSMDvtx* %9, %struct._MSMDvtx** %vertices, align 8, !tbaa !0
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %if.then32, label %for.body.lr.ph

if.then32:                                        ; preds = %if.then26
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul28, i32 78, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else37:                                        ; preds = %if.end13
  %cmp38 = icmp eq i32 %1, 0
  br i1 %cmp38, label %if.end47, label %if.else42

if.else42:                                        ; preds = %if.else37
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %mul44 = mul i64 %conv, 56
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul44, i32 78, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.end47:                                         ; preds = %if.else37
  %vertices41 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  store %struct._MSMDvtx* null, %struct._MSMDvtx** %vertices41, align 8, !tbaa !0
  %mul49 = mul i32 %1, 56
  %add52 = add i32 %add22, %mul49
  store i32 %add52, i32* %nbytes, align 4, !tbaa !3
  store i32 0, i32* %iv, align 4, !tbaa !3
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then26
  %mul49322 = mul i32 %1, 56
  %add52323 = add i32 %add22, %mul49322
  store i32 %add52323, i32* %nbytes, align 4, !tbaa !3
  store i32 0, i32* %iv, align 4, !tbaa !3
  %vertices54324 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %12 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %v.0320 = phi %struct._MSMDvtx* [ %9, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %id = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 0
  store i32 %12, i32* %id, align 4, !tbaa !3
  %mark = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 1
  store i8 79, i8* %mark, align 1, !tbaa !1
  %status = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 2
  store i8 82, i8* %status, align 1, !tbaa !1
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 7
  store i32 0, i32* %bndwght, align 4, !tbaa !3
  %par = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 8
  %13 = bitcast %struct._MSMDvtx** %par to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 16, i32 8, i1 false)
  %14 = load i32* %iv, align 4, !tbaa !3
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 5
  %adj = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 0, i32 6
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %14, i32* %nadj, i32** %adj) #5
  %15 = load i32* %iv, align 4, !tbaa !3
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %iv, align 4, !tbaa !3
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.0320, i64 1
  %cmp55 = icmp slt i32 %inc, %1
  br i1 %cmp55, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %.pre = load %struct._MSMDvtx** %vertices54324, align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %if.end47, %for.cond.for.end_crit_edge
  %16 = phi %struct._MSMDvtx* [ %.pre, %for.cond.for.end_crit_edge ], [ null, %if.end47 ]
  %vwghts57 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  %17 = load i32** %vwghts57, align 8, !tbaa !0
  %cmp58 = icmp eq i32* %17, null
  store i32 0, i32* %iv, align 4, !tbaa !3
  br i1 %cmp58, label %for.cond62.preheader, label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.end
  br i1 %cmp24, label %for.body75, label %if.end81

for.cond62.preheader:                             ; preds = %for.end
  br i1 %cmp24, label %for.body65, label %if.end81

for.body65:                                       ; preds = %for.cond62.preheader, %for.body65
  %v.1315 = phi %struct._MSMDvtx* [ %incdec.ptr68, %for.body65 ], [ %16, %for.cond62.preheader ]
  %wght = getelementptr inbounds %struct._MSMDvtx* %v.1315, i64 0, i32 4
  store i32 1, i32* %wght, align 4, !tbaa !3
  %18 = load i32* %iv, align 4, !tbaa !3
  %inc67 = add nsw i32 %18, 1
  store i32 %inc67, i32* %iv, align 4, !tbaa !3
  %incdec.ptr68 = getelementptr inbounds %struct._MSMDvtx* %v.1315, i64 1
  %cmp63 = icmp slt i32 %inc67, %1
  br i1 %cmp63, label %for.body65, label %if.end81

for.body75:                                       ; preds = %for.cond72.preheader, %for.body75
  %19 = phi i32 [ %inc78, %for.body75 ], [ 0, %for.cond72.preheader ]
  %v.2318 = phi %struct._MSMDvtx* [ %incdec.ptr79, %for.body75 ], [ %16, %for.cond72.preheader ]
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32* %17, i64 %idxprom
  %20 = load i32* %arrayidx, align 4, !tbaa !3
  %wght76 = getelementptr inbounds %struct._MSMDvtx* %v.2318, i64 0, i32 4
  store i32 %20, i32* %wght76, align 4, !tbaa !3
  %21 = load i32* %iv, align 4, !tbaa !3
  %inc78 = add nsw i32 %21, 1
  store i32 %inc78, i32* %iv, align 4, !tbaa !3
  %incdec.ptr79 = getelementptr inbounds %struct._MSMDvtx* %v.2318, i64 1
  %cmp73 = icmp slt i32 %inc78, %1
  br i1 %cmp73, label %for.body75, label %if.end81

if.end81:                                         ; preds = %for.cond72.preheader, %for.body75, %for.cond62.preheader, %for.body65
  %cmp82 = icmp eq i32* %stages, null
  store i32 0, i32* %iv, align 4, !tbaa !3
  br i1 %cmp82, label %for.cond86.preheader, label %for.cond97.preheader

for.cond97.preheader:                             ; preds = %if.end81
  br i1 %cmp24, label %for.body100, label %if.end108

for.cond86.preheader:                             ; preds = %if.end81
  br i1 %cmp24, label %for.body89, label %if.end108

for.body89:                                       ; preds = %for.cond86.preheader, %for.body89
  %v.3310 = phi %struct._MSMDvtx* [ %incdec.ptr93, %for.body89 ], [ %16, %for.cond86.preheader ]
  %stage90 = getelementptr inbounds %struct._MSMDvtx* %v.3310, i64 0, i32 3
  store i32 0, i32* %stage90, align 4, !tbaa !3
  %22 = load i32* %iv, align 4, !tbaa !3
  %inc92 = add nsw i32 %22, 1
  store i32 %inc92, i32* %iv, align 4, !tbaa !3
  %incdec.ptr93 = getelementptr inbounds %struct._MSMDvtx* %v.3310, i64 1
  %cmp87 = icmp slt i32 %inc92, %1
  br i1 %cmp87, label %for.body89, label %if.end108

for.body100:                                      ; preds = %for.cond97.preheader, %for.body100
  %23 = phi i32 [ %inc105, %for.body100 ], [ 0, %for.cond97.preheader ]
  %v.4313 = phi %struct._MSMDvtx* [ %incdec.ptr106, %for.body100 ], [ %16, %for.cond97.preheader ]
  %idxprom101 = sext i32 %23 to i64
  %arrayidx102 = getelementptr inbounds i32* %stages, i64 %idxprom101
  %24 = load i32* %arrayidx102, align 4, !tbaa !3
  %stage103 = getelementptr inbounds %struct._MSMDvtx* %v.4313, i64 0, i32 3
  store i32 %24, i32* %stage103, align 4, !tbaa !3
  %25 = load i32* %iv, align 4, !tbaa !3
  %inc105 = add nsw i32 %25, 1
  store i32 %inc105, i32* %iv, align 4, !tbaa !3
  %incdec.ptr106 = getelementptr inbounds %struct._MSMDvtx* %v.4313, i64 1
  %cmp98 = icmp slt i32 %inc105, %1
  br i1 %cmp98, label %for.body100, label %if.end108

if.end108:                                        ; preds = %for.cond97.preheader, %for.body100, %for.cond86.preheader, %for.body89
  %ivtmpIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 6
  call void @IV_init1(%struct._IV* %ivtmpIV, i32 %1) #5
  %reachIV = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 7
  call void @IV_init1(%struct._IV* %reachIV, i32 %1) #5
  %26 = load i32* %msglvl, align 4, !tbaa !3
  %cmp110 = icmp sgt i32 %26, 3
  br i1 %cmp110, label %if.end129, label %if.end129.thread

if.end129.thread:                                 ; preds = %if.end108
  %mul132326 = shl i32 %1, 3
  %27 = load i32* %nbytes, align 4, !tbaa !3
  %add135327 = add i32 %27, %mul132326
  store i32 %add135327, i32* %nbytes, align 4, !tbaa !3
  br label %if.end145

if.end129:                                        ; preds = %if.end108
  %msgFile113 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %28 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), %struct._IV* %ivtmpIV) #5
  %31 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %call120 = call i32 @IV_writeForHumanEye(%struct._IV* %ivtmpIV, %struct._IO_FILE* %31) #5
  %32 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), %struct._IV* %reachIV) #5
  %33 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %call126 = call i32 @IV_writeForHumanEye(%struct._IV* %reachIV, %struct._IO_FILE* %33) #5
  %34 = load %struct._IO_FILE** %msgFile113, align 8, !tbaa !0
  %call128 = call i32 @fflush(%struct._IO_FILE* %34) #5
  %.pre321 = load i32* %msglvl, align 4, !tbaa !3
  %mul132 = shl i32 %1, 3
  %35 = load i32* %nbytes, align 4, !tbaa !3
  %add135 = add i32 %35, %mul132
  store i32 %add135, i32* %nbytes, align 4, !tbaa !3
  %cmp138 = icmp sgt i32 %.pre321, 3
  br i1 %cmp138, label %if.then140, label %if.end145

if.then140:                                       ; preds = %if.end129
  %msgFile141 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 5
  %36 = load %struct._IO_FILE** %msgFile141, align 8, !tbaa !0
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i32 %1, i32 %1) #5
  %37 = load %struct._IO_FILE** %msgFile141, align 8, !tbaa !0
  %call144 = call i32 @fflush(%struct._IO_FILE* %37) #5
  br label %if.end145

if.end145:                                        ; preds = %if.end129.thread, %if.then140, %if.end129
  br i1 %cmp82, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end145
  %nstage149300 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9
  store i32 0, i32* %nstage149300, align 4, !tbaa !3
  br label %if.then153

cond.end:                                         ; preds = %if.end145
  %call148 = call i32 @IVmax(i32 %1, i32* %stages, i32* %iv) #5
  %nstage149 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 9
  store i32 %call148, i32* %nstage149, align 4, !tbaa !3
  %add150 = add nsw i32 %call148, 3
  %cmp151 = icmp sgt i32 %add150, 0
  br i1 %cmp151, label %if.then153, label %if.else168

if.then153:                                       ; preds = %cond.end.thread, %cond.end
  %add150305 = phi i32 [ 3, %cond.end.thread ], [ %add150, %cond.end ]
  %cond304 = phi i32 [ 0, %cond.end.thread ], [ %call148, %cond.end ]
  %conv155 = sext i32 %add150305 to i64
  %mul156 = shl nsw i64 %conv155, 6
  %call157 = call noalias i8* @malloc(i64 %mul156) #5
  %38 = bitcast i8* %call157 to %struct._MSMDstageInfo*
  %stageInfo158 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  store %struct._MSMDstageInfo* %38, %struct._MSMDstageInfo** %stageInfo158, align 8, !tbaa !0
  %cmp159 = icmp eq i8* %call157, null
  br i1 %cmp159, label %if.then161, label %if.end180

if.then161:                                       ; preds = %if.then153
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul156, i32 143, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else168:                                       ; preds = %cond.end
  %cmp170 = icmp eq i32 %add150, 0
  br i1 %cmp170, label %if.then172, label %if.else174

if.then172:                                       ; preds = %if.else168
  %stageInfo173 = getelementptr inbounds %struct._MSMDinfo* %info, i64 0, i32 10
  store %struct._MSMDstageInfo* null, %struct._MSMDstageInfo** %stageInfo173, align 8, !tbaa !0
  br label %if.end180

if.else174:                                       ; preds = %if.else168
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv176 = sext i32 %add150 to i64
  %mul177 = shl nsw i64 %conv176, 6
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul177, i32 143, i8* getelementptr inbounds ([75 x i8]* @.str3, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.end180:                                        ; preds = %if.then153, %if.then172
  %41 = phi %struct._MSMDstageInfo* [ %38, %if.then153 ], [ null, %if.then172 ]
  %cond303 = phi i32 [ %cond304, %if.then153 ], [ %call148, %if.then172 ]
  %add183 = add nsw i32 %cond303, 2
  %cmp184306 = icmp slt i32 %add183, 0
  br i1 %cmp184306, label %for.end190, label %for.body186

for.body186:                                      ; preds = %if.end180, %for.body186
  %stageInfo.0308 = phi %struct._MSMDstageInfo* [ %incdec.ptr189, %for.body186 ], [ %41, %if.end180 ]
  %stage.0307 = phi i32 [ %inc188, %for.body186 ], [ 0, %if.end180 ]
  %ops = getelementptr inbounds %struct._MSMDstageInfo* %stageInfo.0308, i64 0, i32 5
  %inc188 = add nsw i32 %stage.0307, 1
  %incdec.ptr189 = getelementptr inbounds %struct._MSMDstageInfo* %stageInfo.0308, i64 1
  %42 = add nsw i32 %cond303, 2
  %exitcond = icmp eq i32 %stage.0307, %42
  %43 = bitcast %struct._MSMDstageInfo* %stageInfo.0308 to i8*
  call void @llvm.memset.p0i8.i64(i8* %43, i8 0, i64 20, i32 4, i1 false)
  %44 = bitcast double* %ops to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 32, i32 8, i1 false)
  br i1 %exitcond, label %for.end190, label %for.body186

for.end190:                                       ; preds = %for.body186, %if.end180
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @MSMD_clearData(%struct._MSMD*) #3

; Function Attrs: optsize
declare %struct._IIheap* @IIheap_new() #3

; Function Attrs: optsize
declare void @IIheap_init(%struct._IIheap*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IIheap_sizeOf(%struct._IIheap*) #3

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IV_init1(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

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