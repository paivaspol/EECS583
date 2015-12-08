; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_fullAdj.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IP = type { i32, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_fullAdjacency(%p)\0A NULL input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [82 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_fullAdj.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_fullAdjacency2(%p,%p)\0A both input matrices are NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @InpMtx_fullAdjacency(%struct._InpMtx* %inpmtx) #0 {
entry:
  %jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %1 = load i32* %nent, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %2 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %2, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 1) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end3, %if.then7
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %3 = load i32* %storageMode, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %3, 3
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 3) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call12 = call i32 @IV_max(%struct._IV* %ivec1IV) #5
  %add = add i32 %call12, 1
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call13 = call i32 @IV_max(%struct._IV* %ivec2IV) #5
  %add14 = add i32 %call13, 1
  %cmp15 = icmp slt i32 %add, %add14
  %add14.add = select i1 %cmp15, i32 %add14, i32 %add
  %call18 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call18, i32 1, i32 %add14.add) #5
  %call19 = call i32* @IVinit(i32 %add14.add, i32 -1) #5
  %call20 = call i32* @IVinit(i32 %add14.add, i32 -1) #5
  %cmp21 = icmp sgt i32 %add14.add, 0
  br i1 %cmp21, label %if.then22, label %if.else31

if.then22:                                        ; preds = %if.end11
  %conv = sext i32 %add14.add to i64
  %mul = shl nsw i64 %conv, 3
  %call23 = call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast i8* %call23 to %struct._IP**
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then26, label %for.body46.lr.ph

if.then26:                                        ; preds = %if.then22
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 67, i8* getelementptr inbounds ([82 x i8]* @.str2, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else31:                                        ; preds = %if.end11
  %cmp32 = icmp eq i32 %add14.add, 0
  br i1 %cmp32, label %for.cond79.preheader.thread, label %if.else35

if.else35:                                        ; preds = %if.else31
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv36 = sext i32 %add14.add to i64
  %mul37 = shl nsw i64 %conv36, 3
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul37, i32 67, i8* getelementptr inbounds ([82 x i8]* @.str2, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

for.cond79.preheader.thread:                      ; preds = %if.else31
  br label %for.end151

for.body46.lr.ph:                                 ; preds = %if.then22
  %7 = icmp sgt i32 %add, %add14
  %smax = select i1 %7, i32 %add, i32 %add14
  %8 = add i32 %smax, -1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  %11 = add i64 %10, 8
  call void @llvm.memset.p0i8.i64(i8* %call23, i8 0, i64 %11, i32 8, i1 false)
  %add62 = add nsw i32 %add14.add, 1
  br label %for.body46

for.cond79.preheader:                             ; preds = %for.inc76
  br i1 %cmp21, label %for.body82.lr.ph, label %for.end151

for.body82.lr.ph:                                 ; preds = %for.cond79.preheader
  %add132 = add nsw i32 %add14.add, 1
  br label %for.body82

for.body46:                                       ; preds = %for.body46.lr.ph, %for.inc76
  %freeIP.0299 = phi %struct._IP* [ null, %for.body46.lr.ph ], [ %freeIP.3, %for.inc76 ]
  %baseIP.0298 = phi %struct._IP* [ null, %for.body46.lr.ph ], [ %baseIP.4, %for.inc76 ]
  %jvtx.1297 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc77, %for.inc76 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %jvtx.1297, i32* %jsize, i32** %jind) #5
  %12 = load i32* %jsize, align 4, !tbaa !3
  %cmp47 = icmp sgt i32 %12, 0
  br i1 %cmp47, label %for.body53, label %for.inc76

for.body53:                                       ; preds = %for.inc72, %for.body46
  %13 = phi i32 [ %12, %for.body46 ], [ %18, %for.inc72 ]
  %indvars.iv306 = phi i64 [ 0, %for.body46 ], [ %indvars.iv.next307, %for.inc72 ]
  %freeIP.1293 = phi %struct._IP* [ %freeIP.0299, %for.body46 ], [ %freeIP.2, %for.inc72 ]
  %baseIP.1292 = phi %struct._IP* [ %baseIP.0298, %for.body46 ], [ %baseIP.3, %for.inc72 ]
  %14 = load i32** %jind, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %14, i64 %indvars.iv306
  %15 = load i32* %arrayidx55, align 4, !tbaa !3
  %cmp56 = icmp slt i32 %15, %jvtx.1297
  br i1 %cmp56, label %if.then58, label %for.inc72

if.then58:                                        ; preds = %for.body53
  %cmp59 = icmp eq %struct._IP* %freeIP.1293, null
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.then58
  %call63 = call %struct._IP* @IP_init(i32 %add62, i32 1) #5
  %next = getelementptr inbounds %struct._IP* %call63, i64 0, i32 1
  store %struct._IP* %baseIP.1292, %struct._IP** %next, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct._IP* %call63, i64 1
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then58
  %baseIP.2 = phi %struct._IP* [ %call63, %if.then61 ], [ %baseIP.1292, %if.then58 ]
  %ip.0 = phi %struct._IP* [ %add.ptr, %if.then61 ], [ %freeIP.1293, %if.then58 ]
  %next65 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 1
  %16 = load %struct._IP** %next65, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 0
  store i32 %jvtx.1297, i32* %val, align 4, !tbaa !3
  %idxprom66 = sext i32 %15 to i64
  %arrayidx67 = getelementptr inbounds %struct._IP** %4, i64 %idxprom66
  %17 = load %struct._IP** %arrayidx67, align 8, !tbaa !0
  store %struct._IP* %17, %struct._IP** %next65, align 8, !tbaa !0
  store %struct._IP* %ip.0, %struct._IP** %arrayidx67, align 8, !tbaa !0
  %.pre = load i32* %jsize, align 4, !tbaa !3
  br label %for.inc72

for.inc72:                                        ; preds = %for.body53, %if.end64
  %18 = phi i32 [ %.pre, %if.end64 ], [ %13, %for.body53 ]
  %baseIP.3 = phi %struct._IP* [ %baseIP.2, %if.end64 ], [ %baseIP.1292, %for.body53 ]
  %freeIP.2 = phi %struct._IP* [ %16, %if.end64 ], [ %freeIP.1293, %for.body53 ]
  %indvars.iv.next307 = add i64 %indvars.iv306, 1
  %19 = trunc i64 %indvars.iv.next307 to i32
  %cmp51 = icmp slt i32 %19, %18
  br i1 %cmp51, label %for.body53, label %for.inc76

for.inc76:                                        ; preds = %for.inc72, %for.body46
  %baseIP.4 = phi %struct._IP* [ %baseIP.0298, %for.body46 ], [ %baseIP.3, %for.inc72 ]
  %freeIP.3 = phi %struct._IP* [ %freeIP.0299, %for.body46 ], [ %freeIP.2, %for.inc72 ]
  %inc77 = add nsw i32 %jvtx.1297, 1
  %cmp44 = icmp slt i32 %inc77, %add14.add
  br i1 %cmp44, label %for.body46, label %for.cond79.preheader

for.body82:                                       ; preds = %if.end148, %for.body82.lr.ph
  %indvars.iv304 = phi i64 [ 0, %for.body82.lr.ph ], [ %indvars.iv.next305, %if.end148 ]
  %freeIP.4288 = phi %struct._IP* [ %freeIP.3, %for.body82.lr.ph ], [ %freeIP.8, %if.end148 ]
  %baseIP.5287 = phi %struct._IP* [ %baseIP.4, %for.body82.lr.ph ], [ %baseIP.9, %if.end148 ]
  %20 = trunc i64 %indvars.iv304 to i32
  store i32 %20, i32* %call19, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds i32* %call20, i64 %indvars.iv304
  store i32 %20, i32* %arrayidx85, align 4, !tbaa !3
  %arrayidx87 = getelementptr inbounds %struct._IP** %4, i64 %indvars.iv304
  %21 = load %struct._IP** %arrayidx87, align 8, !tbaa !0
  %cmp88273 = icmp eq %struct._IP* %21, null
  br i1 %cmp88273, label %while.end, label %while.body

while.body:                                       ; preds = %for.body82, %if.end101
  %22 = phi %struct._IP* [ %26, %if.end101 ], [ %21, %for.body82 ]
  %freeIP.5275 = phi %struct._IP* [ %22, %if.end101 ], [ %freeIP.4288, %for.body82 ]
  %count.0274 = phi i32 [ %count.1, %if.end101 ], [ 1, %for.body82 ]
  %val90 = getelementptr inbounds %struct._IP* %22, i64 0, i32 0
  %23 = load i32* %val90, align 4, !tbaa !3
  %idxprom91 = sext i32 %23 to i64
  %arrayidx92 = getelementptr inbounds i32* %call20, i64 %idxprom91
  %24 = load i32* %arrayidx92, align 4, !tbaa !3
  %cmp93 = icmp eq i32 %24, %20
  br i1 %cmp93, label %if.end101, label %if.then95

if.then95:                                        ; preds = %while.body
  store i32 %20, i32* %arrayidx92, align 4, !tbaa !3
  %inc98 = add nsw i32 %count.0274, 1
  %idxprom99 = sext i32 %count.0274 to i64
  %arrayidx100 = getelementptr inbounds i32* %call19, i64 %idxprom99
  store i32 %23, i32* %arrayidx100, align 4, !tbaa !3
  br label %if.end101

if.end101:                                        ; preds = %while.body, %if.then95
  %count.1 = phi i32 [ %inc98, %if.then95 ], [ %count.0274, %while.body ]
  %next102 = getelementptr inbounds %struct._IP* %22, i64 0, i32 1
  %25 = load %struct._IP** %next102, align 8, !tbaa !0
  store %struct._IP* %25, %struct._IP** %arrayidx87, align 8, !tbaa !0
  store %struct._IP* %freeIP.5275, %struct._IP** %next102, align 8, !tbaa !0
  %26 = load %struct._IP** %arrayidx87, align 8, !tbaa !0
  %cmp88 = icmp eq %struct._IP* %26, null
  br i1 %cmp88, label %while.end, label %while.body

while.end:                                        ; preds = %if.end101, %for.body82
  %freeIP.5.lcssa = phi %struct._IP* [ %freeIP.4288, %for.body82 ], [ %22, %if.end101 ]
  %count.0.lcssa = phi i32 [ 1, %for.body82 ], [ %count.1, %if.end101 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %20, i32* %jsize, i32** %jind) #5
  %27 = load i32* %jsize, align 4, !tbaa !3
  %cmp106 = icmp sgt i32 %27, 0
  br i1 %cmp106, label %for.body112, label %if.end148

for.body112:                                      ; preds = %for.inc145, %while.end
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %for.inc145 ]
  %freeIP.6281 = phi %struct._IP* [ %freeIP.5.lcssa, %while.end ], [ %freeIP.7, %for.inc145 ]
  %baseIP.6280 = phi %struct._IP* [ %baseIP.5287, %while.end ], [ %baseIP.8, %for.inc145 ]
  %count.2279 = phi i32 [ %count.0.lcssa, %while.end ], [ %count.3, %for.inc145 ]
  %28 = load i32** %jind, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32* %28, i64 %indvars.iv
  %29 = load i32* %arrayidx114, align 4, !tbaa !3
  %idxprom115 = sext i32 %29 to i64
  %arrayidx116 = getelementptr inbounds i32* %call20, i64 %idxprom115
  %30 = load i32* %arrayidx116, align 4, !tbaa !3
  %cmp117 = icmp eq i32 %30, %20
  br i1 %cmp117, label %if.end125, label %if.then119

if.then119:                                       ; preds = %for.body112
  store i32 %20, i32* %arrayidx116, align 4, !tbaa !3
  %inc122 = add nsw i32 %count.2279, 1
  %idxprom123 = sext i32 %count.2279 to i64
  %arrayidx124 = getelementptr inbounds i32* %call19, i64 %idxprom123
  store i32 %29, i32* %arrayidx124, align 4, !tbaa !3
  br label %if.end125

if.end125:                                        ; preds = %for.body112, %if.then119
  %count.3 = phi i32 [ %inc122, %if.then119 ], [ %count.2279, %for.body112 ]
  %cmp126 = icmp sgt i32 %29, %20
  br i1 %cmp126, label %if.then128, label %for.inc145

if.then128:                                       ; preds = %if.end125
  %cmp129 = icmp eq %struct._IP* %freeIP.6281, null
  br i1 %cmp129, label %if.then131, label %if.end136

if.then131:                                       ; preds = %if.then128
  %call133 = call %struct._IP* @IP_init(i32 %add132, i32 1) #5
  %next134 = getelementptr inbounds %struct._IP* %call133, i64 0, i32 1
  store %struct._IP* %baseIP.6280, %struct._IP** %next134, align 8, !tbaa !0
  %add.ptr135 = getelementptr inbounds %struct._IP* %call133, i64 1
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %if.then128
  %baseIP.7 = phi %struct._IP* [ %call133, %if.then131 ], [ %baseIP.6280, %if.then128 ]
  %ip.1 = phi %struct._IP* [ %add.ptr135, %if.then131 ], [ %freeIP.6281, %if.then128 ]
  %next137 = getelementptr inbounds %struct._IP* %ip.1, i64 0, i32 1
  %31 = load %struct._IP** %next137, align 8, !tbaa !0
  %val138 = getelementptr inbounds %struct._IP* %ip.1, i64 0, i32 0
  store i32 %20, i32* %val138, align 4, !tbaa !3
  %arrayidx140 = getelementptr inbounds %struct._IP** %4, i64 %idxprom115
  %32 = load %struct._IP** %arrayidx140, align 8, !tbaa !0
  store %struct._IP* %32, %struct._IP** %next137, align 8, !tbaa !0
  store %struct._IP* %ip.1, %struct._IP** %arrayidx140, align 8, !tbaa !0
  br label %for.inc145

for.inc145:                                       ; preds = %if.end125, %if.end136
  %baseIP.8 = phi %struct._IP* [ %baseIP.7, %if.end136 ], [ %baseIP.6280, %if.end125 ]
  %freeIP.7 = phi %struct._IP* [ %31, %if.end136 ], [ %freeIP.6281, %if.end125 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %33 = load i32* %jsize, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv.next to i32
  %cmp110 = icmp slt i32 %34, %33
  br i1 %cmp110, label %for.body112, label %if.end148

if.end148:                                        ; preds = %for.inc145, %while.end
  %count.4 = phi i32 [ %count.0.lcssa, %while.end ], [ %count.3, %for.inc145 ]
  %baseIP.9 = phi %struct._IP* [ %baseIP.5287, %while.end ], [ %baseIP.8, %for.inc145 ]
  %freeIP.8 = phi %struct._IP* [ %freeIP.5.lcssa, %while.end ], [ %freeIP.7, %for.inc145 ]
  call void @IVqsortUp(i32 %count.4, i32* %call19) #5
  call void @IVL_setList(%struct._IVL* %call18, i32 %20, i32 %count.4, i32* %call19) #5
  %indvars.iv.next305 = add i64 %indvars.iv304, 1
  %35 = trunc i64 %indvars.iv.next305 to i32
  %cmp80 = icmp slt i32 %35, %add14.add
  br i1 %cmp80, label %for.body82, label %for.end151

for.end151:                                       ; preds = %if.end148, %for.cond79.preheader.thread, %for.cond79.preheader
  %36 = phi i8* [ %call23, %for.cond79.preheader ], [ null, %for.cond79.preheader.thread ], [ %call23, %if.end148 ]
  %head.0313 = phi %struct._IP** [ %4, %for.cond79.preheader ], [ null, %for.cond79.preheader.thread ], [ %4, %if.end148 ]
  %baseIP.5.lcssa = phi %struct._IP* [ %baseIP.4, %for.cond79.preheader ], [ null, %for.cond79.preheader.thread ], [ %baseIP.9, %if.end148 ]
  call void @IVfree(i32* %call19) #5
  call void @IVfree(i32* %call20) #5
  %cmp152 = icmp eq %struct._IP** %head.0313, null
  br i1 %cmp152, label %while.cond156.preheader, label %if.then154

if.then154:                                       ; preds = %for.end151
  call void @free(i8* %36) #5
  br label %while.cond156.preheader

while.cond156.preheader:                          ; preds = %if.then154, %for.end151
  %cmp157271 = icmp eq %struct._IP* %baseIP.5.lcssa, null
  br i1 %cmp157271, label %return, label %while.body159

while.body159:                                    ; preds = %while.cond156.preheader, %while.body159
  %baseIP.10272 = phi %struct._IP* [ %37, %while.body159 ], [ %baseIP.5.lcssa, %while.cond156.preheader ]
  %next160 = getelementptr inbounds %struct._IP* %baseIP.10272, i64 0, i32 1
  %37 = load %struct._IP** %next160, align 8, !tbaa !0
  call void @IP_free(%struct._IP* %baseIP.10272) #5
  %cmp157 = icmp eq %struct._IP* %37, null
  br i1 %cmp157, label %return, label %while.body159

return:                                           ; preds = %while.cond156.preheader, %while.body159, %if.end
  %retval.0 = phi %struct._IVL* [ null, %if.end ], [ %call18, %while.body159 ], [ %call18, %while.cond156.preheader ]
  ret %struct._IVL* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @InpMtx_vector(%struct._InpMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare %struct._IP* @IP_init(i32, i32) #3

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IP_free(%struct._IP*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @InpMtx_fullAdjacency2(%struct._InpMtx* %inpmtxA, %struct._InpMtx* %inpmtxB) #0 {
entry:
  %jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %cmp = icmp eq %struct._InpMtx* %inpmtxA, null
  %cmp1 = icmp eq %struct._InpMtx* %inpmtxB, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([77 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null, %struct._InpMtx* null) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call %struct._IVL* @InpMtx_fullAdjacency(%struct._InpMtx* %inpmtxB) #7
  br label %return

if.else:                                          ; preds = %if.end
  br i1 %cmp1, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.else
  %call7 = call %struct._IVL* @InpMtx_fullAdjacency(%struct._InpMtx* %inpmtxA) #7
  br label %return

if.end9:                                          ; preds = %if.else
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtxA, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtxA, i32 1) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end9, %if.then13
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtxA, i64 0, i32 1
  %2 = load i32* %storageMode, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %2, 3
  br i1 %cmp15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtxA, i32 3) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  %coordType18 = getelementptr inbounds %struct._InpMtx* %inpmtxB, i64 0, i32 0
  %3 = load i32* %coordType18, align 4, !tbaa !3
  %.off445 = add i32 %3, -1
  %switch446 = icmp ult i32 %.off445, 2
  br i1 %switch446, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtxB, i32 1) #5
  br label %if.end24

if.end24:                                         ; preds = %if.end17, %if.then23
  %storageMode25 = getelementptr inbounds %struct._InpMtx* %inpmtxB, i64 0, i32 1
  %4 = load i32* %storageMode25, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %4, 3
  br i1 %cmp26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  call void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtxB, i32 3) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtxA, i64 0, i32 6
  %call29 = call i32 @IV_max(%struct._IV* %ivec1IV) #5
  %add = add i32 %call29, 1
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtxA, i64 0, i32 7
  %call30 = call i32 @IV_max(%struct._IV* %ivec2IV) #5
  %add31 = add i32 %call30, 1
  %cmp32 = icmp slt i32 %add, %add31
  %add31.add = select i1 %cmp32, i32 %add31, i32 %add
  %ivec1IV35 = getelementptr inbounds %struct._InpMtx* %inpmtxB, i64 0, i32 6
  %call36 = call i32 @IV_max(%struct._IV* %ivec1IV35) #5
  %add37 = add i32 %call36, 1
  %cmp38 = icmp slt i32 %add31.add, %add37
  %nvtx.1 = select i1 %cmp38, i32 %add37, i32 %add31.add
  %ivec2IV41 = getelementptr inbounds %struct._InpMtx* %inpmtxB, i64 0, i32 7
  %call42 = call i32 @IV_max(%struct._IV* %ivec2IV41) #5
  %add43 = add i32 %call42, 1
  %cmp44 = icmp slt i32 %nvtx.1, %add43
  %add43.nvtx.1 = select i1 %cmp44, i32 %add43, i32 %nvtx.1
  %call47 = call %struct._IVL* @IVL_new() #5
  call void @IVL_init1(%struct._IVL* %call47, i32 1, i32 %add43.nvtx.1) #5
  %call48 = call i32* @IVinit(i32 %add43.nvtx.1, i32 -1) #5
  %call49 = call i32* @IVinit(i32 %add43.nvtx.1, i32 -1) #5
  %cmp50 = icmp sgt i32 %add43.nvtx.1, 0
  br i1 %cmp50, label %if.then51, label %if.else61

if.then51:                                        ; preds = %if.end28
  %conv = sext i32 %add43.nvtx.1 to i64
  %mul = shl nsw i64 %conv, 3
  %call52 = call noalias i8* @malloc(i64 %mul) #5
  %5 = bitcast i8* %call52 to %struct._IP**
  %cmp53 = icmp eq i8* %call52, null
  br i1 %cmp53, label %if.then55, label %for.body76.lr.ph

if.then55:                                        ; preds = %if.then51
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 296, i8* getelementptr inbounds ([82 x i8]* @.str2, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

if.else61:                                        ; preds = %if.end28
  %cmp62 = icmp eq i32 %add43.nvtx.1, 0
  br i1 %cmp62, label %for.cond141.preheader.thread, label %if.else65

if.else65:                                        ; preds = %if.else61
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv66 = sext i32 %add43.nvtx.1 to i64
  %mul67 = shl nsw i64 %conv66, 3
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul67, i32 296, i8* getelementptr inbounds ([82 x i8]* @.str2, i64 0, i64 0)) #5
  call void @exit(i32 -1) #6
  unreachable

for.cond141.preheader.thread:                     ; preds = %if.else61
  br label %for.end256

for.body76.lr.ph:                                 ; preds = %if.then51
  %8 = icmp sgt i32 %add, %add31
  %smax = select i1 %8, i32 %add, i32 %add31
  %9 = icmp sgt i32 %smax, %add37
  %smax504 = select i1 %9, i32 %smax, i32 %add37
  %10 = icmp sgt i32 %smax504, %add43
  %smax505 = select i1 %10, i32 %smax504, i32 %add43
  %11 = add i32 %smax505, -1
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = add i64 %13, 8
  call void @llvm.memset.p0i8.i64(i8* %call52, i8 0, i64 %14, i32 8, i1 false)
  %add121 = add nsw i32 %add43.nvtx.1, 1
  br label %for.body76

for.cond141.preheader:                            ; preds = %for.inc138
  br i1 %cmp50, label %for.body144.lr.ph, label %for.end256

for.body144.lr.ph:                                ; preds = %for.cond141.preheader
  %add237 = add nsw i32 %add43.nvtx.1, 1
  br label %for.body144

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc138
  %freeIP.0489 = phi %struct._IP* [ null, %for.body76.lr.ph ], [ %freeIP.6, %for.inc138 ]
  %baseIP.0488 = phi %struct._IP* [ null, %for.body76.lr.ph ], [ %baseIP.8, %for.inc138 ]
  %jvtx.1487 = phi i32 [ 0, %for.body76.lr.ph ], [ %inc139, %for.inc138 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtxA, i32 %jvtx.1487, i32* %jsize, i32** %jind) #5
  %15 = load i32* %jsize, align 4, !tbaa !3
  %cmp77 = icmp sgt i32 %15, 0
  br i1 %cmp77, label %for.body83, label %if.end105

for.body83:                                       ; preds = %for.inc102, %for.body76
  %16 = phi i32 [ %15, %for.body76 ], [ %21, %for.inc102 ]
  %indvars.iv498 = phi i64 [ 0, %for.body76 ], [ %indvars.iv.next499, %for.inc102 ]
  %freeIP.1477 = phi %struct._IP* [ %freeIP.0489, %for.body76 ], [ %freeIP.2, %for.inc102 ]
  %baseIP.1476 = phi %struct._IP* [ %baseIP.0488, %for.body76 ], [ %baseIP.3, %for.inc102 ]
  %17 = load i32** %jind, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %17, i64 %indvars.iv498
  %18 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp86 = icmp slt i32 %18, %jvtx.1487
  br i1 %cmp86, label %if.then88, label %for.inc102

if.then88:                                        ; preds = %for.body83
  %cmp89 = icmp eq %struct._IP* %freeIP.1477, null
  br i1 %cmp89, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.then88
  %call93 = call %struct._IP* @IP_init(i32 %add121, i32 1) #5
  %next = getelementptr inbounds %struct._IP* %call93, i64 0, i32 1
  store %struct._IP* %baseIP.1476, %struct._IP** %next, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct._IP* %call93, i64 1
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.then88
  %baseIP.2 = phi %struct._IP* [ %call93, %if.then91 ], [ %baseIP.1476, %if.then88 ]
  %ip.0 = phi %struct._IP* [ %add.ptr, %if.then91 ], [ %freeIP.1477, %if.then88 ]
  %next95 = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 1
  %19 = load %struct._IP** %next95, align 8, !tbaa !0
  %val = getelementptr inbounds %struct._IP* %ip.0, i64 0, i32 0
  store i32 %jvtx.1487, i32* %val, align 4, !tbaa !3
  %idxprom96 = sext i32 %18 to i64
  %arrayidx97 = getelementptr inbounds %struct._IP** %5, i64 %idxprom96
  %20 = load %struct._IP** %arrayidx97, align 8, !tbaa !0
  store %struct._IP* %20, %struct._IP** %next95, align 8, !tbaa !0
  store %struct._IP* %ip.0, %struct._IP** %arrayidx97, align 8, !tbaa !0
  %.pre506 = load i32* %jsize, align 4, !tbaa !3
  br label %for.inc102

for.inc102:                                       ; preds = %for.body83, %if.end94
  %21 = phi i32 [ %.pre506, %if.end94 ], [ %16, %for.body83 ]
  %baseIP.3 = phi %struct._IP* [ %baseIP.2, %if.end94 ], [ %baseIP.1476, %for.body83 ]
  %freeIP.2 = phi %struct._IP* [ %19, %if.end94 ], [ %freeIP.1477, %for.body83 ]
  %indvars.iv.next499 = add i64 %indvars.iv498, 1
  %22 = trunc i64 %indvars.iv.next499 to i32
  %cmp81 = icmp slt i32 %22, %21
  br i1 %cmp81, label %for.body83, label %if.end105

if.end105:                                        ; preds = %for.inc102, %for.body76
  %baseIP.4 = phi %struct._IP* [ %baseIP.0488, %for.body76 ], [ %baseIP.3, %for.inc102 ]
  %freeIP.3 = phi %struct._IP* [ %freeIP.0489, %for.body76 ], [ %freeIP.2, %for.inc102 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtxB, i32 %jvtx.1487, i32* %jsize, i32** %jind) #5
  %23 = load i32* %jsize, align 4, !tbaa !3
  %cmp106 = icmp sgt i32 %23, 0
  br i1 %cmp106, label %for.body112, label %for.inc138

for.body112:                                      ; preds = %for.inc134, %if.end105
  %24 = phi i32 [ %23, %if.end105 ], [ %29, %for.inc134 ]
  %indvars.iv500 = phi i64 [ 0, %if.end105 ], [ %indvars.iv.next501, %for.inc134 ]
  %freeIP.4483 = phi %struct._IP* [ %freeIP.3, %if.end105 ], [ %freeIP.5, %for.inc134 ]
  %baseIP.5482 = phi %struct._IP* [ %baseIP.4, %if.end105 ], [ %baseIP.7, %for.inc134 ]
  %25 = load i32** %jind, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32* %25, i64 %indvars.iv500
  %26 = load i32* %arrayidx114, align 4, !tbaa !3
  %cmp115 = icmp slt i32 %26, %jvtx.1487
  br i1 %cmp115, label %if.then117, label %for.inc134

if.then117:                                       ; preds = %for.body112
  %cmp118 = icmp eq %struct._IP* %freeIP.4483, null
  br i1 %cmp118, label %if.then120, label %if.end125

if.then120:                                       ; preds = %if.then117
  %call122 = call %struct._IP* @IP_init(i32 %add121, i32 1) #5
  %next123 = getelementptr inbounds %struct._IP* %call122, i64 0, i32 1
  store %struct._IP* %baseIP.5482, %struct._IP** %next123, align 8, !tbaa !0
  %add.ptr124 = getelementptr inbounds %struct._IP* %call122, i64 1
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.then117
  %baseIP.6 = phi %struct._IP* [ %call122, %if.then120 ], [ %baseIP.5482, %if.then117 ]
  %ip.1 = phi %struct._IP* [ %add.ptr124, %if.then120 ], [ %freeIP.4483, %if.then117 ]
  %next126 = getelementptr inbounds %struct._IP* %ip.1, i64 0, i32 1
  %27 = load %struct._IP** %next126, align 8, !tbaa !0
  %val127 = getelementptr inbounds %struct._IP* %ip.1, i64 0, i32 0
  store i32 %jvtx.1487, i32* %val127, align 4, !tbaa !3
  %idxprom128 = sext i32 %26 to i64
  %arrayidx129 = getelementptr inbounds %struct._IP** %5, i64 %idxprom128
  %28 = load %struct._IP** %arrayidx129, align 8, !tbaa !0
  store %struct._IP* %28, %struct._IP** %next126, align 8, !tbaa !0
  store %struct._IP* %ip.1, %struct._IP** %arrayidx129, align 8, !tbaa !0
  %.pre = load i32* %jsize, align 4, !tbaa !3
  br label %for.inc134

for.inc134:                                       ; preds = %for.body112, %if.end125
  %29 = phi i32 [ %.pre, %if.end125 ], [ %24, %for.body112 ]
  %baseIP.7 = phi %struct._IP* [ %baseIP.6, %if.end125 ], [ %baseIP.5482, %for.body112 ]
  %freeIP.5 = phi %struct._IP* [ %27, %if.end125 ], [ %freeIP.4483, %for.body112 ]
  %indvars.iv.next501 = add i64 %indvars.iv500, 1
  %30 = trunc i64 %indvars.iv.next501 to i32
  %cmp110 = icmp slt i32 %30, %29
  br i1 %cmp110, label %for.body112, label %for.inc138

for.inc138:                                       ; preds = %for.inc134, %if.end105
  %baseIP.8 = phi %struct._IP* [ %baseIP.4, %if.end105 ], [ %baseIP.7, %for.inc134 ]
  %freeIP.6 = phi %struct._IP* [ %freeIP.3, %if.end105 ], [ %freeIP.5, %for.inc134 ]
  %inc139 = add nsw i32 %jvtx.1487, 1
  %cmp74 = icmp slt i32 %inc139, %add43.nvtx.1
  br i1 %cmp74, label %for.body76, label %for.cond141.preheader

for.body144:                                      ; preds = %if.end253, %for.body144.lr.ph
  %indvars.iv496 = phi i64 [ 0, %for.body144.lr.ph ], [ %indvars.iv.next497, %if.end253 ]
  %freeIP.7472 = phi %struct._IP* [ %freeIP.6, %for.body144.lr.ph ], [ %freeIP.14, %if.end253 ]
  %baseIP.9471 = phi %struct._IP* [ %baseIP.8, %for.body144.lr.ph ], [ %baseIP.17, %if.end253 ]
  %31 = trunc i64 %indvars.iv496 to i32
  store i32 %31, i32* %call48, align 4, !tbaa !3
  %arrayidx147 = getelementptr inbounds i32* %call49, i64 %indvars.iv496
  store i32 %31, i32* %arrayidx147, align 4, !tbaa !3
  %arrayidx149 = getelementptr inbounds %struct._IP** %5, i64 %indvars.iv496
  %32 = load %struct._IP** %arrayidx149, align 8, !tbaa !0
  %cmp150449 = icmp eq %struct._IP* %32, null
  br i1 %cmp150449, label %while.end, label %while.body

while.body:                                       ; preds = %for.body144, %if.end163
  %33 = phi %struct._IP* [ %37, %if.end163 ], [ %32, %for.body144 ]
  %freeIP.8451 = phi %struct._IP* [ %33, %if.end163 ], [ %freeIP.7472, %for.body144 ]
  %count.0450 = phi i32 [ %count.1, %if.end163 ], [ 1, %for.body144 ]
  %val152 = getelementptr inbounds %struct._IP* %33, i64 0, i32 0
  %34 = load i32* %val152, align 4, !tbaa !3
  %idxprom153 = sext i32 %34 to i64
  %arrayidx154 = getelementptr inbounds i32* %call49, i64 %idxprom153
  %35 = load i32* %arrayidx154, align 4, !tbaa !3
  %cmp155 = icmp eq i32 %35, %31
  br i1 %cmp155, label %if.end163, label %if.then157

if.then157:                                       ; preds = %while.body
  store i32 %31, i32* %arrayidx154, align 4, !tbaa !3
  %inc160 = add nsw i32 %count.0450, 1
  %idxprom161 = sext i32 %count.0450 to i64
  %arrayidx162 = getelementptr inbounds i32* %call48, i64 %idxprom161
  store i32 %34, i32* %arrayidx162, align 4, !tbaa !3
  br label %if.end163

if.end163:                                        ; preds = %while.body, %if.then157
  %count.1 = phi i32 [ %inc160, %if.then157 ], [ %count.0450, %while.body ]
  %next164 = getelementptr inbounds %struct._IP* %33, i64 0, i32 1
  %36 = load %struct._IP** %next164, align 8, !tbaa !0
  store %struct._IP* %36, %struct._IP** %arrayidx149, align 8, !tbaa !0
  store %struct._IP* %freeIP.8451, %struct._IP** %next164, align 8, !tbaa !0
  %37 = load %struct._IP** %arrayidx149, align 8, !tbaa !0
  %cmp150 = icmp eq %struct._IP* %37, null
  br i1 %cmp150, label %while.end, label %while.body

while.end:                                        ; preds = %if.end163, %for.body144
  %freeIP.8.lcssa = phi %struct._IP* [ %freeIP.7472, %for.body144 ], [ %33, %if.end163 ]
  %count.0.lcssa = phi i32 [ 1, %for.body144 ], [ %count.1, %if.end163 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtxA, i32 %31, i32* %jsize, i32** %jind) #5
  %38 = load i32* %jsize, align 4, !tbaa !3
  %cmp168 = icmp sgt i32 %38, 0
  br i1 %cmp168, label %for.body174, label %if.end210

for.body174:                                      ; preds = %for.inc207, %while.end
  %indvars.iv = phi i64 [ 0, %while.end ], [ %indvars.iv.next, %for.inc207 ]
  %freeIP.9457 = phi %struct._IP* [ %freeIP.8.lcssa, %while.end ], [ %freeIP.10, %for.inc207 ]
  %baseIP.10456 = phi %struct._IP* [ %baseIP.9471, %while.end ], [ %baseIP.12, %for.inc207 ]
  %count.2455 = phi i32 [ %count.0.lcssa, %while.end ], [ %count.3, %for.inc207 ]
  %39 = load i32** %jind, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i32* %39, i64 %indvars.iv
  %40 = load i32* %arrayidx176, align 4, !tbaa !3
  %idxprom177 = sext i32 %40 to i64
  %arrayidx178 = getelementptr inbounds i32* %call49, i64 %idxprom177
  %41 = load i32* %arrayidx178, align 4, !tbaa !3
  %cmp179 = icmp eq i32 %41, %31
  br i1 %cmp179, label %if.end187, label %if.then181

if.then181:                                       ; preds = %for.body174
  store i32 %31, i32* %arrayidx178, align 4, !tbaa !3
  %inc184 = add nsw i32 %count.2455, 1
  %idxprom185 = sext i32 %count.2455 to i64
  %arrayidx186 = getelementptr inbounds i32* %call48, i64 %idxprom185
  store i32 %40, i32* %arrayidx186, align 4, !tbaa !3
  br label %if.end187

if.end187:                                        ; preds = %for.body174, %if.then181
  %count.3 = phi i32 [ %inc184, %if.then181 ], [ %count.2455, %for.body174 ]
  %cmp188 = icmp sgt i32 %40, %31
  br i1 %cmp188, label %if.then190, label %for.inc207

if.then190:                                       ; preds = %if.end187
  %cmp191 = icmp eq %struct._IP* %freeIP.9457, null
  br i1 %cmp191, label %if.then193, label %if.end198

if.then193:                                       ; preds = %if.then190
  %call195 = call %struct._IP* @IP_init(i32 %add237, i32 1) #5
  %next196 = getelementptr inbounds %struct._IP* %call195, i64 0, i32 1
  store %struct._IP* %baseIP.10456, %struct._IP** %next196, align 8, !tbaa !0
  %add.ptr197 = getelementptr inbounds %struct._IP* %call195, i64 1
  br label %if.end198

if.end198:                                        ; preds = %if.then193, %if.then190
  %baseIP.11 = phi %struct._IP* [ %call195, %if.then193 ], [ %baseIP.10456, %if.then190 ]
  %ip.2 = phi %struct._IP* [ %add.ptr197, %if.then193 ], [ %freeIP.9457, %if.then190 ]
  %next199 = getelementptr inbounds %struct._IP* %ip.2, i64 0, i32 1
  %42 = load %struct._IP** %next199, align 8, !tbaa !0
  %val200 = getelementptr inbounds %struct._IP* %ip.2, i64 0, i32 0
  store i32 %31, i32* %val200, align 4, !tbaa !3
  %arrayidx202 = getelementptr inbounds %struct._IP** %5, i64 %idxprom177
  %43 = load %struct._IP** %arrayidx202, align 8, !tbaa !0
  store %struct._IP* %43, %struct._IP** %next199, align 8, !tbaa !0
  store %struct._IP* %ip.2, %struct._IP** %arrayidx202, align 8, !tbaa !0
  br label %for.inc207

for.inc207:                                       ; preds = %if.end187, %if.end198
  %baseIP.12 = phi %struct._IP* [ %baseIP.11, %if.end198 ], [ %baseIP.10456, %if.end187 ]
  %freeIP.10 = phi %struct._IP* [ %42, %if.end198 ], [ %freeIP.9457, %if.end187 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %44 = load i32* %jsize, align 4, !tbaa !3
  %45 = trunc i64 %indvars.iv.next to i32
  %cmp172 = icmp slt i32 %45, %44
  br i1 %cmp172, label %for.body174, label %if.end210

if.end210:                                        ; preds = %for.inc207, %while.end
  %count.4 = phi i32 [ %count.0.lcssa, %while.end ], [ %count.3, %for.inc207 ]
  %baseIP.13 = phi %struct._IP* [ %baseIP.9471, %while.end ], [ %baseIP.12, %for.inc207 ]
  %freeIP.11 = phi %struct._IP* [ %freeIP.8.lcssa, %while.end ], [ %freeIP.10, %for.inc207 ]
  call void @InpMtx_vector(%struct._InpMtx* %inpmtxB, i32 %31, i32* %jsize, i32** %jind) #5
  %46 = load i32* %jsize, align 4, !tbaa !3
  %cmp211 = icmp sgt i32 %46, 0
  br i1 %cmp211, label %for.body217, label %if.end253

for.body217:                                      ; preds = %for.inc250, %if.end210
  %indvars.iv494 = phi i64 [ 0, %if.end210 ], [ %indvars.iv.next495, %for.inc250 ]
  %freeIP.12465 = phi %struct._IP* [ %freeIP.11, %if.end210 ], [ %freeIP.13, %for.inc250 ]
  %baseIP.14464 = phi %struct._IP* [ %baseIP.13, %if.end210 ], [ %baseIP.16, %for.inc250 ]
  %count.5463 = phi i32 [ %count.4, %if.end210 ], [ %count.6, %for.inc250 ]
  %47 = load i32** %jind, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds i32* %47, i64 %indvars.iv494
  %48 = load i32* %arrayidx219, align 4, !tbaa !3
  %idxprom220 = sext i32 %48 to i64
  %arrayidx221 = getelementptr inbounds i32* %call49, i64 %idxprom220
  %49 = load i32* %arrayidx221, align 4, !tbaa !3
  %cmp222 = icmp eq i32 %49, %31
  br i1 %cmp222, label %if.end230, label %if.then224

if.then224:                                       ; preds = %for.body217
  store i32 %31, i32* %arrayidx221, align 4, !tbaa !3
  %inc227 = add nsw i32 %count.5463, 1
  %idxprom228 = sext i32 %count.5463 to i64
  %arrayidx229 = getelementptr inbounds i32* %call48, i64 %idxprom228
  store i32 %48, i32* %arrayidx229, align 4, !tbaa !3
  br label %if.end230

if.end230:                                        ; preds = %for.body217, %if.then224
  %count.6 = phi i32 [ %inc227, %if.then224 ], [ %count.5463, %for.body217 ]
  %cmp231 = icmp sgt i32 %48, %31
  br i1 %cmp231, label %if.then233, label %for.inc250

if.then233:                                       ; preds = %if.end230
  %cmp234 = icmp eq %struct._IP* %freeIP.12465, null
  br i1 %cmp234, label %if.then236, label %if.end241

if.then236:                                       ; preds = %if.then233
  %call238 = call %struct._IP* @IP_init(i32 %add237, i32 1) #5
  %next239 = getelementptr inbounds %struct._IP* %call238, i64 0, i32 1
  store %struct._IP* %baseIP.14464, %struct._IP** %next239, align 8, !tbaa !0
  %add.ptr240 = getelementptr inbounds %struct._IP* %call238, i64 1
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %if.then233
  %baseIP.15 = phi %struct._IP* [ %call238, %if.then236 ], [ %baseIP.14464, %if.then233 ]
  %ip.3 = phi %struct._IP* [ %add.ptr240, %if.then236 ], [ %freeIP.12465, %if.then233 ]
  %next242 = getelementptr inbounds %struct._IP* %ip.3, i64 0, i32 1
  %50 = load %struct._IP** %next242, align 8, !tbaa !0
  %val243 = getelementptr inbounds %struct._IP* %ip.3, i64 0, i32 0
  store i32 %31, i32* %val243, align 4, !tbaa !3
  %arrayidx245 = getelementptr inbounds %struct._IP** %5, i64 %idxprom220
  %51 = load %struct._IP** %arrayidx245, align 8, !tbaa !0
  store %struct._IP* %51, %struct._IP** %next242, align 8, !tbaa !0
  store %struct._IP* %ip.3, %struct._IP** %arrayidx245, align 8, !tbaa !0
  br label %for.inc250

for.inc250:                                       ; preds = %if.end230, %if.end241
  %baseIP.16 = phi %struct._IP* [ %baseIP.15, %if.end241 ], [ %baseIP.14464, %if.end230 ]
  %freeIP.13 = phi %struct._IP* [ %50, %if.end241 ], [ %freeIP.12465, %if.end230 ]
  %indvars.iv.next495 = add i64 %indvars.iv494, 1
  %52 = load i32* %jsize, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv.next495 to i32
  %cmp215 = icmp slt i32 %53, %52
  br i1 %cmp215, label %for.body217, label %if.end253

if.end253:                                        ; preds = %for.inc250, %if.end210
  %count.7 = phi i32 [ %count.4, %if.end210 ], [ %count.6, %for.inc250 ]
  %baseIP.17 = phi %struct._IP* [ %baseIP.13, %if.end210 ], [ %baseIP.16, %for.inc250 ]
  %freeIP.14 = phi %struct._IP* [ %freeIP.11, %if.end210 ], [ %freeIP.13, %for.inc250 ]
  call void @IVqsortUp(i32 %count.7, i32* %call48) #5
  call void @IVL_setList(%struct._IVL* %call47, i32 %31, i32 %count.7, i32* %call48) #5
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %54 = trunc i64 %indvars.iv.next497 to i32
  %cmp142 = icmp slt i32 %54, %add43.nvtx.1
  br i1 %cmp142, label %for.body144, label %for.end256

for.end256:                                       ; preds = %if.end253, %for.cond141.preheader.thread, %for.cond141.preheader
  %55 = phi i8* [ %call52, %for.cond141.preheader ], [ null, %for.cond141.preheader.thread ], [ %call52, %if.end253 ]
  %head.0510 = phi %struct._IP** [ %5, %for.cond141.preheader ], [ null, %for.cond141.preheader.thread ], [ %5, %if.end253 ]
  %baseIP.9.lcssa = phi %struct._IP* [ %baseIP.8, %for.cond141.preheader ], [ null, %for.cond141.preheader.thread ], [ %baseIP.17, %if.end253 ]
  call void @IVfree(i32* %call48) #5
  call void @IVfree(i32* %call49) #5
  %cmp257 = icmp eq %struct._IP** %head.0510, null
  br i1 %cmp257, label %while.cond261.preheader, label %if.then259

if.then259:                                       ; preds = %for.end256
  call void @free(i8* %55) #5
  br label %while.cond261.preheader

while.cond261.preheader:                          ; preds = %if.then259, %for.end256
  %cmp262447 = icmp eq %struct._IP* %baseIP.9.lcssa, null
  br i1 %cmp262447, label %return, label %while.body264

while.body264:                                    ; preds = %while.cond261.preheader, %while.body264
  %baseIP.18448 = phi %struct._IP* [ %56, %while.body264 ], [ %baseIP.9.lcssa, %while.cond261.preheader ]
  %next265 = getelementptr inbounds %struct._IP* %baseIP.18448, i64 0, i32 1
  %56 = load %struct._IP** %next265, align 8, !tbaa !0
  call void @IP_free(%struct._IP* %baseIP.18448) #5
  %cmp262 = icmp eq %struct._IP* %56, null
  br i1 %cmp262, label %return, label %while.body264

return:                                           ; preds = %while.cond261.preheader, %while.body264, %if.then6, %if.then3
  %retval.0 = phi %struct._IVL* [ %call4, %if.then3 ], [ %call7, %if.then6 ], [ %call47, %while.body264 ], [ %call47, %while.cond261.preheader ]
  ret %struct._IVL* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}