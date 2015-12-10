; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [88 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupPGH.c,v 1.75 2001/10/31 12:05:00 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupPGH_c() #0 {
entry:
  ret i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), !dbg !363
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.PGH* @PUGH_SetupPGH(i8* %callerid, i32 %dim, i32* %nsize, i32* %nghostzones, i32 %staggertype, i32* %perme) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %callerid}, i64 0, metadata !88), !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !89), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32* %nsize}, i64 0, metadata !90), !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32* %nghostzones}, i64 0, metadata !91), !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %staggertype}, i64 0, metadata !92), !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32* %perme}, i64 0, metadata !93), !dbg !369
  %0 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 43), align 8, !dbg !370, !tbaa !371
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !150), !dbg !370
  %call = tail call noalias i8* @malloc(i64 144) #8, !dbg !374
  %1 = bitcast i8* %call to %struct.PGH*, !dbg !374
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %1}, i64 0, metadata !160), !dbg !374
  %callerid1 = bitcast i8* %call to i8**, !dbg !375
  store i8* %callerid, i8** %callerid1, align 8, !dbg !375, !tbaa !376
  %conv = sext i32 %dim to i64, !dbg !377
  %mul = shl nsw i64 %conv, 3, !dbg !377
  %call2 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !377
  %2 = bitcast i8* %call2 to %struct.PGExtras**, !dbg !377
  %GFExtras = getelementptr inbounds i8* %call, i64 120, !dbg !377
  %3 = bitcast i8* %GFExtras to %struct.PGExtras***, !dbg !377
  store %struct.PGExtras** %2, %struct.PGExtras*** %3, align 8, !dbg !377, !tbaa !376
  %call5 = tail call noalias i8* @malloc(i64 %mul) #8, !dbg !378
  %4 = bitcast i8* %call5 to %struct.PConnectivity**, !dbg !378
  %Connectivity = getelementptr inbounds i8* %call, i64 128, !dbg !378
  %5 = bitcast i8* %Connectivity to %struct.PConnectivity***, !dbg !378
  store %struct.PConnectivity** %4, %struct.PConnectivity*** %5, align 8, !dbg !378, !tbaa !376
  %nprocs.i = getelementptr inbounds i8* %call, i64 12, !dbg !379
  %6 = bitcast i8* %nprocs.i to i32*, !dbg !379
  store i32 1, i32* %6, align 4, !dbg !379, !tbaa !371
  %myproc.i = getelementptr inbounds i8* %call, i64 16, !dbg !381
  %7 = bitcast i8* %myproc.i to i32*, !dbg !381
  store i32 0, i32* %7, align 4, !dbg !381, !tbaa !371
  %dim1.i = getelementptr inbounds i8* %call, i64 8, !dbg !382
  %8 = bitcast i8* %dim1.i to i32*, !dbg !382
  store i32 %dim, i32* %8, align 4, !dbg !382, !tbaa !371
  tail call void @llvm.dbg.value(metadata !383, i64 0, metadata !162), !dbg !384
  %cmp95 = icmp slt i32 %dim, 1, !dbg !384
  br i1 %cmp95, label %for.end44, label %for.body.lr.ph, !dbg !384

for.body.lr.ph:                                   ; preds = %entry
  %9 = add i32 %dim, 1, !dbg !384
  br label %for.body, !dbg !384

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.end ], [ 1, %for.body.lr.ph ]
  %indvars.iv97 = phi i32 [ %indvars.iv.next98, %for.end ], [ 1, %for.body.lr.ph ], !dbg !386
  %mul9 = shl nsw i64 %indvars.iv99, 2, !dbg !389
  %call10 = tail call noalias i8* @malloc(i64 %mul9) #8, !dbg !389
  %10 = bitcast i8* %call10 to i32*, !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !163), !dbg !389
  %11 = trunc i64 %indvars.iv99 to i32, !dbg !390
  %call11 = tail call i32 @PUGH_SetupDefaultTopology(i32 %11, i32* %10) #9, !dbg !390
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !161), !dbg !386
  %cmp1393 = icmp sgt i32 %11, 0, !dbg !386
  br i1 %cmp1393, label %for.body15, label %for.end, !dbg !386

for.body15:                                       ; preds = %for.body, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %arrayidx = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !391
  %12 = load i32* %arrayidx, align 4, !dbg !391, !tbaa !371
  %tobool = icmp eq i32 %12, 0, !dbg !391
  br i1 %tobool, label %land.lhs.true, label %for.inc, !dbg !391

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx17 = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !391
  %13 = load i32* %arrayidx17, align 4, !dbg !391, !tbaa !371
  %ispos = icmp sgt i32 %13, -1, !dbg !391
  %neg = sub i32 0, %13, !dbg !391
  %14 = select i1 %ispos, i32 %13, i32 %neg, !dbg !391
  %arrayidx20 = getelementptr inbounds i32* %nghostzones, i64 %indvars.iv, !dbg !391
  %15 = load i32* %arrayidx20, align 4, !dbg !391, !tbaa !371
  %mul21 = shl nsw i32 %15, 1, !dbg !391
  %add92 = or i32 %mul21, 1, !dbg !391
  %cmp22 = icmp sgt i32 %14, %add92, !dbg !391
  br i1 %cmp22, label %for.inc, label %if.then, !dbg !391

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %arrayidx, align 4, !dbg !393, !tbaa !371
  br label %for.inc, !dbg !395

for.inc:                                          ; preds = %land.lhs.true, %for.body15, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !386
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !386
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv97, !dbg !386
  br i1 %exitcond, label %for.end, label %for.body15, !dbg !386

for.end:                                          ; preds = %for.inc, %for.body
  %call27 = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %11, i32 1, i32* %10, i32* %perme) #8, !dbg !396
  %16 = add nsw i64 %indvars.iv99, -1, !dbg !396
  %arrayidx30 = getelementptr inbounds %struct.PConnectivity** %4, i64 %16, !dbg !396
  store %struct.PConnectivity* %call27, %struct.PConnectivity** %arrayidx30, align 8, !dbg !396, !tbaa !376
  tail call void @free(i8* %call10) #8, !dbg !397
  %17 = load %struct.PConnectivity** %arrayidx30, align 8, !dbg !398, !tbaa !376
  %nprocs36 = getelementptr inbounds %struct.PConnectivity* %17, i64 0, i32 1, !dbg !398
  %18 = load i32** %nprocs36, align 8, !dbg !398, !tbaa !376
  %call37 = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %11, i32* %perme, i32 %staggertype, i32* %nsize, i32* %nghostzones, i32 1, i32* %18, i32 0) #8, !dbg !398
  %arrayidx41 = getelementptr inbounds %struct.PGExtras** %2, i64 %16, !dbg !398
  store %struct.PGExtras* %call37, %struct.PGExtras** %arrayidx41, align 8, !dbg !398, !tbaa !376
  %indvars.iv.next100 = add i64 %indvars.iv99, 1, !dbg !384
  %indvars.iv.next98 = add i32 %indvars.iv97, 1, !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next98}, i64 0, metadata !162), !dbg !384
  %lftr.wideiv102 = trunc i64 %indvars.iv.next100 to i32, !dbg !384
  %exitcond103 = icmp eq i32 %lftr.wideiv102, %9, !dbg !384
  br i1 %exitcond103, label %for.end44, label %for.body, !dbg !384

for.end44:                                        ; preds = %for.end, %entry
  %tobool45 = icmp eq i32 %0, 0, !dbg !399
  br i1 %tobool45, label %cond.end, label %cond.true, !dbg !399

cond.true:                                        ; preds = %for.end44
  %call46 = tail call i32 @CCTK_TimerCreateI() #8, !dbg !399
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %for.end44, %cond.true
  %cond = phi i32 [ %call46, %cond.true ], [ -1, %for.end44 ], !dbg !399
  %comm_time = getelementptr inbounds i8* %call, i64 112, !dbg !399
  %19 = bitcast i8* %comm_time to i32*, !dbg !399
  store i32 %cond, i32* %19, align 4, !dbg !399, !tbaa !371
  %active = getelementptr inbounds i8* %call, i64 108, !dbg !400
  %20 = bitcast i8* %active to i32*, !dbg !400
  store i32 1, i32* %20, align 4, !dbg !400, !tbaa !371
  %commmodel = getelementptr inbounds i8* %call, i64 20, !dbg !401
  %21 = bitcast i8* %commmodel to i32*, !dbg !401
  store i32 1, i32* %21, align 4, !dbg !401, !tbaa !371
  %identity_string = getelementptr inbounds i8* %call, i64 136, !dbg !402
  %22 = bitcast i8* %identity_string to i8**, !dbg !402
  store i8* null, i8** %22, align 8, !dbg !402, !tbaa !376
  %level = getelementptr inbounds i8* %call, i64 96, !dbg !403
  %23 = bitcast i8* %level to i32*, !dbg !403
  store i32 0, i32* %23, align 4, !dbg !403, !tbaa !371
  %mglevel = getelementptr inbounds i8* %call, i64 100, !dbg !404
  %24 = bitcast i8* %mglevel to i32*, !dbg !404
  store i32 0, i32* %24, align 4, !dbg !404, !tbaa !371
  %convlevel = getelementptr inbounds i8* %call, i64 104, !dbg !405
  %25 = bitcast i8* %convlevel to i32*, !dbg !405
  store i32 0, i32* %25, align 4, !dbg !405, !tbaa !371
  %forceSync = getelementptr inbounds i8* %call, i64 60, !dbg !406
  %26 = bitcast i8* %forceSync to i32*, !dbg !406
  store i32 0, i32* %26, align 4, !dbg !406, !tbaa !371
  %nvariables = getelementptr inbounds i8* %call, i64 24, !dbg !407
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !157), !dbg !409
  call void @llvm.memset.p0i8.i64(i8* %nvariables, i8 0, i64 16, i32 4, i1 false), !dbg !407
  ret %struct.PGH* %1, !dbg !409
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_SetupDefaultTopology(i32 %dim, i32* nocapture %nprocs) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !265), !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32* %nprocs}, i64 0, metadata !266), !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !315), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !316), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !317), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !318), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !319), !dbg !411
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !320), !dbg !411
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !412
  switch i32 %dim, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
  ], !dbg !413

sw.bb:                                            ; preds = %entry
  %0 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 36), align 4, !dbg !411, !tbaa !371
  store i32 %0, i32* %nprocs, align 4, !dbg !414, !tbaa !371
  br label %sw.epilog, !dbg !416

sw.bb2:                                           ; preds = %entry
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 38), align 4, !dbg !411, !tbaa !371
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 37), align 8, !dbg !411, !tbaa !371
  store i32 %2, i32* %nprocs, align 4, !dbg !417, !tbaa !371
  %arrayidx4 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !418
  store i32 %1, i32* %arrayidx4, align 4, !dbg !418, !tbaa !371
  br label %sw.epilog, !dbg !419

sw.bb5:                                           ; preds = %entry
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 41), align 8, !dbg !411, !tbaa !371
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 40), align 4, !dbg !411, !tbaa !371
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 39), align 8, !dbg !411, !tbaa !371
  store i32 %5, i32* %nprocs, align 4, !dbg !420, !tbaa !371
  %arrayidx7 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !421
  store i32 %4, i32* %arrayidx7, align 4, !dbg !421, !tbaa !371
  %arrayidx8 = getelementptr inbounds i32* %nprocs, i64 2, !dbg !422
  store i32 %3, i32* %arrayidx8, align 4, !dbg !422, !tbaa !371
  br label %sw.epilog, !dbg !423

sw.default:                                       ; preds = %entry
  %6 = bitcast i32* %nprocs to i8*, !dbg !424
  %conv = sext i32 %dim to i64, !dbg !424
  %mul = shl nsw i64 %conv, 2, !dbg !424
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %mul, i32 4, i1 false), !dbg !424
  tail call void @llvm.dbg.value(metadata !425, i64 0, metadata !329), !dbg !426
  br label %sw.epilog, !dbg !427

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb2, %sw.bb
  %retval1.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb5 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  tail call void @llvm.dbg.value(metadata !408, i64 0, metadata !328), !dbg !428
  ret i32 %retval1.0, !dbg !428
}

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #4

; Function Attrs: optsize
declare i32 @CCTK_TimerCreateI() #4

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_Terminate(%struct.cGH* %GH) #1 {
entry:
  %pughGH = alloca %struct.PGH*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !200), !dbg !429
  call void @llvm.dbg.declare(metadata !{%struct.PGH** %pughGH}, metadata !201), !dbg !430
  %call = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8, !dbg !430
  call void @llvm.dbg.value(metadata !{%struct.PGH* %call}, i64 0, metadata !201), !dbg !430
  store %struct.PGH* %call, %struct.PGH** %pughGH, align 8, !dbg !430, !tbaa !376
  call void @PUGH_DestroyPGH(%struct.PGH** %pughGH) #9, !dbg !431
  ret i32 0, !dbg !432
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #4

; Function Attrs: nounwind optsize uwtable
define void @PUGH_DestroyPGH(%struct.PGH** nocapture %GHin) #1 {
entry:
  %pgroup = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{%struct.PGH** %GHin}, i64 0, metadata !207), !dbg !433
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %pgroup}, metadata !244), !dbg !434
  %0 = load %struct.PGH** %GHin, align 8, !dbg !435, !tbaa !376
  call void @llvm.dbg.value(metadata !{%struct.PGH* %0}, i64 0, metadata !208), !dbg !435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !258), !dbg !436
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !259), !dbg !437
  %call139 = call i32 @CCTK_NumGroups() #8, !dbg !437
  %cmp140 = icmp sgt i32 %call139, 0, !dbg !437
  br i1 %cmp140, label %for.body.lr.ph, label %for.cond65.preheader, !dbg !437

for.body.lr.ph:                                   ; preds = %entry
  %grouptype = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !439
  %variables = getelementptr inbounds %struct.PGH* %0, i64 0, i32 7, !dbg !441
  %dim = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4, !dbg !443
  %Connectivity = getelementptr inbounds %struct.PGH* %0, i64 0, i32 22, !dbg !443
  %GFExtras = getelementptr inbounds %struct.PGH* %0, i64 0, i32 21, !dbg !444
  %numvars = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !445
  %numtimelevels = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !447
  br label %for.body, !dbg !437

for.cond65.preheader:                             ; preds = %for.inc62, %entry
  %dim66 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 1, !dbg !450
  %1 = load i32* %dim66, align 4, !dbg !450, !tbaa !371
  %cmp67131 = icmp slt i32 %1, 1, !dbg !450
  br i1 %cmp67131, label %for.end79, label %for.body68.lr.ph, !dbg !450

for.body68.lr.ph:                                 ; preds = %for.cond65.preheader
  %Connectivity71 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 22, !dbg !452
  %GFExtras75 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 21, !dbg !454
  br label %for.body68, !dbg !450

for.body:                                         ; preds = %for.body.lr.ph, %for.inc62
  %group.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc63, %for.inc62 ]
  %variable.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %variable.1.lcssa, %for.inc62 ]
  %call1 = call i32 @CCTK_GroupData(i32 %group.0142, %struct.cGroup* %pgroup) #8, !dbg !455
  %2 = load i32* %grouptype, align 4, !dbg !439, !tbaa !371
  %.off = add i32 %2, -2, !dbg !439
  %switch = icmp ult i32 %.off, 2, !dbg !439
  br i1 %switch, label %if.then, label %for.cond29.preheader, !dbg !439

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %variable.0141 to i64, !dbg !441
  %3 = load i8**** %variables, align 8, !dbg !441, !tbaa !376
  %arrayidx = getelementptr inbounds i8*** %3, i64 %idxprom, !dbg !441
  %4 = load i8*** %arrayidx, align 8, !dbg !441, !tbaa !376
  %5 = load i8** %4, align 8, !dbg !441, !tbaa !376
  %groupcomm = getelementptr inbounds i8* %5, i64 80, !dbg !456
  %6 = bitcast i8* %groupcomm to %struct.PComm**, !dbg !456
  %7 = load %struct.PComm** %6, align 8, !dbg !456, !tbaa !376
  %tobool = icmp eq %struct.PComm* %7, null, !dbg !456
  br i1 %tobool, label %if.end13, label %if.then6, !dbg !456

if.then6:                                         ; preds = %if.then
  %commflag = getelementptr inbounds %struct.PComm* %7, i64 0, i32 3, !dbg !457
  %8 = load i32* %commflag, align 4, !dbg !457, !tbaa !371
  %cmp8 = icmp eq i32 %8, 0, !dbg !457
  br i1 %cmp8, label %if.end, label %if.then9, !dbg !457

if.then9:                                         ; preds = %if.then6
  %call11 = call i32 @PUGH_DisableGArrayGroupComm(%struct.PGH* %0, i32 %variable.0141, %struct.PComm* %7) #8, !dbg !459
  br label %if.end, !dbg !461

if.end:                                           ; preds = %if.then6, %if.then9
  call void @PUGH_DestroyComm(%struct.PComm** %6) #8, !dbg !462
  br label %if.end13, !dbg !463

if.end13:                                         ; preds = %if.then, %if.end
  %connectivity = getelementptr inbounds i8* %5, i64 64, !dbg !443
  %9 = bitcast i8* %connectivity to %struct.PConnectivity**, !dbg !443
  %10 = load %struct.PConnectivity** %9, align 8, !dbg !443, !tbaa !376
  %11 = load i32* %dim, align 4, !dbg !443, !tbaa !371
  %sub = add nsw i32 %11, -1, !dbg !443
  %idxprom14 = sext i32 %sub to i64, !dbg !443
  %12 = load %struct.PConnectivity*** %Connectivity, align 8, !dbg !443, !tbaa !376
  %arrayidx15 = getelementptr inbounds %struct.PConnectivity** %12, i64 %idxprom14, !dbg !443
  %13 = load %struct.PConnectivity** %arrayidx15, align 8, !dbg !443, !tbaa !376
  %cmp16 = icmp eq %struct.PConnectivity* %10, %13, !dbg !443
  br i1 %cmp16, label %if.end19, label %if.then17, !dbg !443

if.then17:                                        ; preds = %if.end13
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %9) #8, !dbg !464
  %.pre = load i32* %dim, align 4, !dbg !444, !tbaa !371
  br label %if.end19, !dbg !466

if.end19:                                         ; preds = %if.end13, %if.then17
  %14 = phi i32 [ %11, %if.end13 ], [ %.pre, %if.then17 ]
  %extras = getelementptr inbounds i8* %5, i64 56, !dbg !444
  %15 = bitcast i8* %extras to %struct.PGExtras**, !dbg !444
  %16 = load %struct.PGExtras** %15, align 8, !dbg !444, !tbaa !376
  %sub21 = add nsw i32 %14, -1, !dbg !444
  %idxprom22 = sext i32 %sub21 to i64, !dbg !444
  %17 = load %struct.PGExtras*** %GFExtras, align 8, !dbg !444, !tbaa !376
  %arrayidx23 = getelementptr inbounds %struct.PGExtras** %17, i64 %idxprom22, !dbg !444
  %18 = load %struct.PGExtras** %arrayidx23, align 8, !dbg !444, !tbaa !376
  %cmp24 = icmp eq %struct.PGExtras* %16, %18, !dbg !444
  br i1 %cmp24, label %for.cond29.preheader, label %if.then25, !dbg !444

if.then25:                                        ; preds = %if.end19
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %15) #8, !dbg !467
  br label %for.cond29.preheader, !dbg !469

for.cond29.preheader:                             ; preds = %if.end19, %if.then25, %for.body
  %19 = load i32* %numvars, align 4, !dbg !445, !tbaa !371
  %cmp30136 = icmp sgt i32 %19, 0, !dbg !445
  br i1 %cmp30136, label %for.cond32.preheader.lr.ph, label %for.inc62, !dbg !445

for.cond32.preheader.lr.ph:                       ; preds = %for.cond29.preheader
  %20 = sext i32 %variable.0141 to i64
  br label %for.cond32.preheader, !dbg !445

for.cond32.preheader:                             ; preds = %for.cond32.preheader.lr.ph, %for.end
  %indvars.iv146 = phi i64 [ %20, %for.cond32.preheader.lr.ph ], [ %indvars.iv.next147, %for.end ]
  %this_var.0138 = phi i32 [ 0, %for.cond32.preheader.lr.ph ], [ %inc59, %for.end ]
  %variable.1137 = phi i32 [ %variable.0141, %for.cond32.preheader.lr.ph ], [ %inc60, %for.end ]
  %21 = load i32* %numtimelevels, align 4, !dbg !447, !tbaa !371
  %cmp33133 = icmp sgt i32 %21, 0, !dbg !447
  br i1 %cmp33133, label %for.body34, label %for.end, !dbg !447

for.body34:                                       ; preds = %for.inc, %for.cond32.preheader
  %indvars.iv144 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next145, %for.inc ]
  %22 = load i32* %grouptype, align 4, !dbg !470, !tbaa !371
  switch i32 %22, label %for.inc [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb41
  ], !dbg !470

sw.bb:                                            ; preds = %for.body34, %for.body34
  %23 = load i8**** %variables, align 8, !dbg !472, !tbaa !376
  %arrayidx39128 = getelementptr inbounds i8*** %23, i64 %indvars.iv146, !dbg !472
  %arrayidx39129 = load i8*** %arrayidx39128, align 8, !dbg !472
  %arrayidx40130 = getelementptr inbounds i8** %arrayidx39129, i64 %indvars.iv144, !dbg !472
  %arrayidx40 = bitcast i8** %arrayidx40130 to %struct.PGA**, !dbg !472
  call void @PUGH_DestroyGArray(%struct.PGA** %arrayidx40) #8, !dbg !472
  br label %for.inc, !dbg !474

sw.bb41:                                          ; preds = %for.body34
  %24 = load i8**** %variables, align 8, !dbg !475, !tbaa !376
  %arrayidx45 = getelementptr inbounds i8*** %24, i64 %indvars.iv146, !dbg !475
  %25 = load i8*** %arrayidx45, align 8, !dbg !475, !tbaa !376
  %arrayidx46 = getelementptr inbounds i8** %25, i64 %indvars.iv144, !dbg !475
  %26 = load i8** %arrayidx46, align 8, !dbg !475, !tbaa !376
  %tobool47 = icmp eq i8* %26, null, !dbg !475
  br i1 %tobool47, label %for.inc, label %if.then48, !dbg !475

if.then48:                                        ; preds = %sw.bb41
  call void @free(i8* %26) #8, !dbg !476
  br label %for.inc, !dbg !478

for.inc:                                          ; preds = %sw.bb41, %sw.bb, %for.body34, %if.then48
  %indvars.iv.next145 = add i64 %indvars.iv144, 1, !dbg !447
  %27 = load i32* %numtimelevels, align 4, !dbg !447, !tbaa !371
  %28 = trunc i64 %indvars.iv.next145 to i32, !dbg !447
  %cmp33 = icmp slt i32 %28, %27, !dbg !447
  br i1 %cmp33, label %for.body34, label %for.end, !dbg !447

for.end:                                          ; preds = %for.inc, %for.cond32.preheader
  %29 = load i8**** %variables, align 8, !dbg !479, !tbaa !376
  %arrayidx57 = getelementptr inbounds i8*** %29, i64 %indvars.iv146, !dbg !479
  %30 = load i8*** %arrayidx57, align 8, !dbg !479, !tbaa !376
  %31 = bitcast i8** %30 to i8*, !dbg !479
  call void @free(i8* %31) #8, !dbg !479
  %inc59 = add nsw i32 %this_var.0138, 1, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !260), !dbg !445
  %indvars.iv.next147 = add i64 %indvars.iv146, 1, !dbg !445
  %inc60 = add nsw i32 %variable.1137, 1, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %inc60}, i64 0, metadata !258), !dbg !445
  %32 = load i32* %numvars, align 4, !dbg !445, !tbaa !371
  %cmp30 = icmp slt i32 %inc59, %32, !dbg !445
  br i1 %cmp30, label %for.cond32.preheader, label %for.inc62, !dbg !445

for.inc62:                                        ; preds = %for.end, %for.cond29.preheader
  %variable.1.lcssa = phi i32 [ %variable.0141, %for.cond29.preheader ], [ %inc60, %for.end ]
  %inc63 = add nsw i32 %group.0142, 1, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !259), !dbg !437
  %call = call i32 @CCTK_NumGroups() #8, !dbg !437
  %cmp = icmp slt i32 %inc63, %call, !dbg !437
  br i1 %cmp, label %for.body, label %for.cond65.preheader, !dbg !437

for.body68:                                       ; preds = %for.body68, %for.body68.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body68 ], [ 1, %for.body68.lr.ph ]
  %33 = add nsw i64 %indvars.iv, -1, !dbg !452
  %34 = load %struct.PConnectivity*** %Connectivity71, align 8, !dbg !452, !tbaa !376
  %arrayidx72 = getelementptr inbounds %struct.PConnectivity** %34, i64 %33, !dbg !452
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %arrayidx72) #8, !dbg !452
  %35 = load %struct.PGExtras*** %GFExtras75, align 8, !dbg !454, !tbaa !376
  %arrayidx76 = getelementptr inbounds %struct.PGExtras** %35, i64 %33, !dbg !454
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %arrayidx76) #8, !dbg !454
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !450
  %36 = load i32* %dim66, align 4, !dbg !450, !tbaa !371
  %37 = trunc i64 %indvars.iv to i32, !dbg !450
  %cmp67 = icmp slt i32 %37, %36, !dbg !450
  br i1 %cmp67, label %for.body68, label %for.end79, !dbg !450

for.end79:                                        ; preds = %for.body68, %for.cond65.preheader
  %identity_string = getelementptr inbounds %struct.PGH* %0, i64 0, i32 23, !dbg !480
  %38 = load i8** %identity_string, align 8, !dbg !480, !tbaa !376
  %tobool80 = icmp eq i8* %38, null, !dbg !480
  br i1 %tobool80, label %if.end83, label %if.then81, !dbg !480

if.then81:                                        ; preds = %for.end79
  call void @free(i8* %38) #8, !dbg !481
  br label %if.end83, !dbg !483

if.end83:                                         ; preds = %for.end79, %if.then81
  %Connectivity84 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 22, !dbg !484
  %39 = load %struct.PConnectivity*** %Connectivity84, align 8, !dbg !484, !tbaa !376
  %40 = bitcast %struct.PConnectivity** %39 to i8*, !dbg !484
  call void @free(i8* %40) #8, !dbg !484
  %GFExtras85 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 21, !dbg !485
  %41 = load %struct.PGExtras*** %GFExtras85, align 8, !dbg !485, !tbaa !376
  %42 = bitcast %struct.PGExtras** %41 to i8*, !dbg !485
  call void @free(i8* %42) #8, !dbg !485
  %variables86 = getelementptr inbounds %struct.PGH* %0, i64 0, i32 7, !dbg !486
  %43 = load i8**** %variables86, align 8, !dbg !486, !tbaa !376
  %44 = bitcast i8*** %43 to i8*, !dbg !486
  call void @free(i8* %44) #8, !dbg !486
  %45 = bitcast %struct.PGH* %0 to i8*, !dbg !487
  call void @free(i8* %45) #8, !dbg !487
  store %struct.PGH* null, %struct.PGH** %GHin, align 8, !dbg !488, !tbaa !376
  ret void, !dbg !489
}

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #4

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #4

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayGroupComm(%struct.PGH*, i32, %struct.PComm*) #4

; Function Attrs: optsize
declare void @PUGH_DestroyComm(%struct.PComm**) #4

; Function Attrs: optsize
declare void @PUGH_DestroyConnectivity(%struct.PConnectivity**) #4

; Function Attrs: optsize
declare void @PUGH_DestroyPGExtras(%struct.PGExtras**) #4

; Function Attrs: optsize
declare void @PUGH_DestroyGArray(%struct.PGA**) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_ParallelInit(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !332), !dbg !490
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !332), !dbg !491
  ret i32 0, !dbg !492
}

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @PUGH_Exit(%struct.cGH* nocapture %GH, i32 %retval1) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !337), !dbg !493
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !338), !dbg !493
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !337), !dbg !494
  tail call void @exit(i32 %retval1) #10, !dbg !495
  unreachable, !dbg !495
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #7

; Function Attrs: noreturn nounwind optsize uwtable
define i32 @PUGH_Abort(%struct.cGH* nocapture %GH, i32 %retval1) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !341), !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !342), !dbg !496
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !341), !dbg !497
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !342), !dbg !498
  tail call void @exit(i32 0) #10, !dbg !499
  unreachable, !dbg !499
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_MyProc(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !349), !dbg !500
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !349), !dbg !501
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !350), !dbg !502
  ret i32 0, !dbg !503
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @PUGH_nProcs(%struct.cGH* nocapture %GH) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !353), !dbg !504
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !353), !dbg !505
  tail call void @llvm.dbg.value(metadata !383, i64 0, metadata !354), !dbg !506
  ret i32 1, !dbg !507
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !361, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !164, metadata !202, metadata !261, metadata !330, metadata !333, metadata !339, metadata !343, metadata !351, metadata !355}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_SetupPGH_c", metadata !"CCTKi_version_CactusPUGH_PUGH_SetupPGH_c", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_SetupPGH_c, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [CCTKi_version_CactusPUGH_PUGH_SetupPGH_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupPGH", metadata !"PUGH_SetupPGH", metadata !"", i32 87, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.PGH* (i8*, i32, i32*, i32*, i32, i32*)* @PUGH_SetupPGH, null, null, metadata !87, i32 93} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 93] [PUGH_SetupPGH]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !20, metadata !22, metadata !33, metadata !33, metadata !22, metadata !33}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !31, metadata !32, metadata !34, metadata !35, metadata !36, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !75, metadata !85}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !22} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!37 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !37} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !37} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!41 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !22} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!42 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !22} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!43 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !22} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !22} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!46 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !47} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!49 = metadata !{i32 786454, metadata !17, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!50 = metadata !{i32 786451, metadata !51, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!51 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !72, metadata !74}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!54 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!56 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!59 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!60 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!61 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!62 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!63 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!64 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!65 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!66 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!67 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !68} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!68 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !33, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!71 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!72 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !73} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !57, metadata !69, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !73} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!75 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !76} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!78 = metadata !{i32 786454, metadata !17, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!79 = metadata !{i32 786451, metadata !51, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!83 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !57} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!84 = metadata !{i32 786445, metadata !51, metadata !79, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!85 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !154, metadata !155, metadata !156, metadata !157, metadata !160, metadata !161, metadata !162, metadata !163}
!88 = metadata !{i32 786689, metadata !11, metadata !"callerid", metadata !5, i32 16777303, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [callerid] [line 87]
!89 = metadata !{i32 786689, metadata !11, metadata !"dim", metadata !5, i32 33554520, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 88]
!90 = metadata !{i32 786689, metadata !11, metadata !"nsize", metadata !5, i32 50331737, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsize] [line 89]
!91 = metadata !{i32 786689, metadata !11, metadata !"nghostzones", metadata !5, i32 67108954, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nghostzones] [line 90]
!92 = metadata !{i32 786689, metadata !11, metadata !"staggertype", metadata !5, i32 83886171, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [staggertype] [line 91]
!93 = metadata !{i32 786689, metadata !11, metadata !"perme", metadata !5, i32 100663388, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [perme] [line 92]
!94 = metadata !{i32 786688, metadata !11, metadata !"ghost_size", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 94]
!95 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!96 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_x", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 94]
!97 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_y", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 94]
!98 = metadata !{i32 786688, metadata !11, metadata !"ghost_size_z", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 94]
!99 = metadata !{i32 786688, metadata !11, metadata !"global_nsize", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 94]
!100 = metadata !{i32 786688, metadata !11, metadata !"global_nx", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 94]
!101 = metadata !{i32 786688, metadata !11, metadata !"global_ny", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 94]
!102 = metadata !{i32 786688, metadata !11, metadata !"global_nz", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 94]
!103 = metadata !{i32 786688, metadata !11, metadata !"periodic", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 94]
!104 = metadata !{i32 786688, metadata !11, metadata !"periodic_x", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 94]
!105 = metadata !{i32 786688, metadata !11, metadata !"periodic_y", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 94]
!106 = metadata !{i32 786688, metadata !11, metadata !"periodic_z", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 94]
!107 = metadata !{i32 786688, metadata !11, metadata !"info", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 94]
!108 = metadata !{i32 786688, metadata !11, metadata !"initialize_memory", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 94]
!109 = metadata !{i32 786688, metadata !11, metadata !"partition", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 94]
!110 = metadata !{i32 786688, metadata !11, metadata !"partition_1d_x", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 94]
!111 = metadata !{i32 786688, metadata !11, metadata !"partition_2d_x", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 94]
!112 = metadata !{i32 786688, metadata !11, metadata !"partition_2d_y", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 94]
!113 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_x", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 94]
!114 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_y", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 94]
!115 = metadata !{i32 786688, metadata !11, metadata !"partition_3d_z", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 94]
!116 = metadata !{i32 786688, metadata !11, metadata !"processor_topology", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 94]
!117 = metadata !{i32 786688, metadata !11, metadata !"storage_verbose", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 94]
!118 = metadata !{i32 786688, metadata !11, metadata !"cacheline_mult", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 94]
!119 = metadata !{i32 786688, metadata !11, metadata !"enable_all_storage", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 94]
!120 = metadata !{i32 786688, metadata !11, metadata !"local_nsize", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 94]
!121 = metadata !{i32 786688, metadata !11, metadata !"local_nx", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 94]
!122 = metadata !{i32 786688, metadata !11, metadata !"local_ny", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 94]
!123 = metadata !{i32 786688, metadata !11, metadata !"local_nz", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 94]
!124 = metadata !{i32 786688, metadata !11, metadata !"overloadabort", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 94]
!125 = metadata !{i32 786688, metadata !11, metadata !"overloadarraygroupsizeb", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 94]
!126 = metadata !{i32 786688, metadata !11, metadata !"overloadbarrier", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 94]
!127 = metadata !{i32 786688, metadata !11, metadata !"overloaddisablegroupcomm", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 94]
!128 = metadata !{i32 786688, metadata !11, metadata !"overloaddisablegroupstorage", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 94]
!129 = metadata !{i32 786688, metadata !11, metadata !"overloadenablegroupcomm", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 94]
!130 = metadata !{i32 786688, metadata !11, metadata !"overloadenablegroupstorage", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 94]
!131 = metadata !{i32 786688, metadata !11, metadata !"overloadevolve", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 94]
!132 = metadata !{i32 786688, metadata !11, metadata !"overloadexit", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 94]
!133 = metadata !{i32 786688, metadata !11, metadata !"overloadgroupdynamicdata", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 94]
!134 = metadata !{i32 786688, metadata !11, metadata !"overloadmyproc", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 94]
!135 = metadata !{i32 786688, metadata !11, metadata !"overloadnprocs", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 94]
!136 = metadata !{i32 786688, metadata !11, metadata !"overloadparallelinit", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 94]
!137 = metadata !{i32 786688, metadata !11, metadata !"overloadquerygroupstorageb", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 94]
!138 = metadata !{i32 786688, metadata !11, metadata !"overloadsyncgroup", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 94]
!139 = metadata !{i32 786688, metadata !11, metadata !"padding_active", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 94]
!140 = metadata !{i32 786688, metadata !11, metadata !"padding_address_spacing", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 94]
!141 = metadata !{i32 786688, metadata !11, metadata !"padding_cacheline_bits", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 94]
!142 = metadata !{i32 786688, metadata !11, metadata !"padding_size", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 94]
!143 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_1d_x", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 94]
!144 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_2d_x", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 94]
!145 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_2d_y", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 94]
!146 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_x", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 94]
!147 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_y", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 94]
!148 = metadata !{i32 786688, metadata !11, metadata !"processor_topology_3d_z", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 94]
!149 = metadata !{i32 786688, metadata !11, metadata !"storage_report_every", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 94]
!150 = metadata !{i32 786688, metadata !11, metadata !"timer_output", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 94]
!151 = metadata !{i32 786688, metadata !11, metadata !"terminate", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 94]
!152 = metadata !{i32 786688, metadata !11, metadata !"cctk_initial_time", metadata !5, i32 94, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 94]
!153 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!154 = metadata !{i32 786688, metadata !11, metadata !"cctk_final_time", metadata !5, i32 94, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 94]
!155 = metadata !{i32 786688, metadata !11, metadata !"cctk_itlast", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 94]
!156 = metadata !{i32 786688, metadata !11, metadata !"terminate_next", metadata !5, i32 94, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 94]
!157 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 94, metadata !158, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 94]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!159 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786688, metadata !11, metadata !"pughGH", metadata !5, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 95]
!161 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 96, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 96]
!162 = metadata !{i32 786688, metadata !11, metadata !"idim", metadata !5, i32 96, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idim] [line 96]
!163 = metadata !{i32 786688, metadata !11, metadata !"nprocs", metadata !5, i32 97, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 97]
!164 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Terminate", metadata !"PUGH_Terminate", metadata !"", i32 178, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_Terminate, null, null, metadata !199, i32 179} ; [ DW_TAG_subprogram ] [line 178] [def] [scope 179] [PUGH_Terminate]
!165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !22, metadata !167}
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!168 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!169 = metadata !{i32 786451, metadata !170, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !171, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!170 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!172 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!173 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!174 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!175 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!176 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!177 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!178 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!179 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!180 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!181 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!182 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !183} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!184 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !183} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!185 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!186 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!187 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !22} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!188 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!189 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !37} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!190 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !29} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!191 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!192 = metadata !{i32 786445, metadata !170, metadata !169, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !193} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!194 = metadata !{i32 786454, metadata !170, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!195 = metadata !{i32 786451, metadata !170, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !196, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !198}
!197 = metadata !{i32 786445, metadata !170, metadata !195, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!198 = metadata !{i32 786445, metadata !170, metadata !195, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!199 = metadata !{metadata !200, metadata !201}
!200 = metadata !{i32 786689, metadata !164, metadata !"GH", metadata !5, i32 16777394, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 178]
!201 = metadata !{i32 786688, metadata !164, metadata !"pughGH", metadata !5, i32 180, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 180]
!202 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_DestroyPGH", metadata !"PUGH_DestroyPGH", metadata !"", i32 202, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.PGH**)* @PUGH_DestroyPGH, null, null, metadata !206, i32 203} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 203] [PUGH_DestroyPGH]
!203 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!204 = metadata !{null, metadata !205}
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !244, metadata !257, metadata !258, metadata !259, metadata !260}
!207 = metadata !{i32 786689, metadata !202, metadata !"GHin", metadata !5, i32 16777418, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GHin] [line 202]
!208 = metadata !{i32 786688, metadata !202, metadata !"GH", metadata !5, i32 204, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GH] [line 204]
!209 = metadata !{i32 786688, metadata !202, metadata !"GA", metadata !5, i32 205, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GA] [line 205]
!210 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGA]
!211 = metadata !{i32 786454, metadata !1, null, metadata !"pGA", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !212} ; [ DW_TAG_typedef ] [pGA] [line 126, size 0, align 0, offset 0] [from PGA]
!212 = metadata !{i32 786451, metadata !51, null, metadata !"PGA", i32 96, i64 832, i64 64, i32 0, i32 0, null, metadata !213, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGA] [line 96, size 832, align 64, offset 0] [from ]
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !239, metadata !240, metadata !241, metadata !242}
!214 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"name", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [name] [line 98, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"id", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [id] [line 99, size 32, align 32, offset 64] [from int]
!216 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"arrayid", i32 100, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [arrayid] [line 100, size 32, align 32, offset 96] [from int]
!217 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"padddata", i32 101, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [padddata] [line 101, size 64, align 64, offset 128] [from ]
!218 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"data", i32 102, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [data] [line 102, size 64, align 64, offset 192] [from ]
!219 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"storage", i32 103, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [storage] [line 103, size 32, align 32, offset 256] [from int]
!220 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"stagger", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [stagger] [line 104, size 32, align 32, offset 288] [from int]
!221 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"parent", i32 106, i64 64, i64 64, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [parent] [line 106, size 64, align 64, offset 320] [from ]
!222 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"varsize", i32 114, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [varsize] [line 114, size 32, align 32, offset 384] [from int]
!223 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"vtype", i32 115, i64 32, i64 32, i64 416, i32 0, metadata !22} ; [ DW_TAG_member ] [vtype] [line 115, size 32, align 32, offset 416] [from int]
!224 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"extras", i32 117, i64 64, i64 64, i64 448, i32 0, metadata !48} ; [ DW_TAG_member ] [extras] [line 117, size 64, align 64, offset 448] [from ]
!225 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"connectivity", i32 118, i64 64, i64 64, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [connectivity] [line 118, size 64, align 64, offset 512] [from ]
!226 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"comm", i32 120, i64 64, i64 64, i64 576, i32 0, metadata !227} ; [ DW_TAG_member ] [comm] [line 120, size 64, align 64, offset 576] [from ]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pComm]
!228 = metadata !{i32 786454, metadata !51, null, metadata !"pComm", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [pComm] [line 94, size 0, align 0, offset 0] [from PComm]
!229 = metadata !{i32 786451, metadata !51, null, metadata !"PComm", i32 74, i64 448, i64 64, i32 0, i32 0, null, metadata !230, i32 0, null, null} ; [ DW_TAG_structure_type ] [PComm] [line 74, size 448, align 64, offset 0] [from ]
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238}
!231 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"buffer_sz", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [buffer_sz] [line 77, size 64, align 64, offset 0] [from ]
!232 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"send_buffer", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [send_buffer] [line 78, size 64, align 64, offset 64] [from ]
!233 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"recv_buffer", i32 79, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [recv_buffer] [line 79, size 64, align 64, offset 128] [from ]
!234 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"commflag", i32 80, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [commflag] [line 80, size 32, align 32, offset 192] [from int]
!235 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"docomm", i32 82, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [docomm] [line 82, size 64, align 64, offset 256] [from ]
!236 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"first_var", i32 84, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [first_var] [line 84, size 32, align 32, offset 320] [from int]
!237 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"n_vars", i32 85, i64 32, i64 32, i64 352, i32 0, metadata !22} ; [ DW_TAG_member ] [n_vars] [line 85, size 32, align 32, offset 352] [from int]
!238 = metadata !{i32 786445, metadata !51, metadata !229, metadata !"sync_timelevel", i32 86, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [sync_timelevel] [line 86, size 32, align 32, offset 384] [from int]
!239 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"groupcomm", i32 121, i64 64, i64 64, i64 640, i32 0, metadata !227} ; [ DW_TAG_member ] [groupcomm] [line 121, size 64, align 64, offset 640] [from ]
!240 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"vector_size", i32 123, i64 32, i64 32, i64 704, i32 0, metadata !22} ; [ DW_TAG_member ] [vector_size] [line 123, size 32, align 32, offset 704] [from int]
!241 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"vector_entry", i32 124, i64 32, i64 32, i64 736, i32 0, metadata !22} ; [ DW_TAG_member ] [vector_entry] [line 124, size 32, align 32, offset 736] [from int]
!242 = metadata !{i32 786445, metadata !51, metadata !212, metadata !"vector_base", i32 125, i64 64, i64 64, i64 768, i32 0, metadata !243} ; [ DW_TAG_member ] [vector_base] [line 125, size 64, align 64, offset 768] [from ]
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PGA]
!244 = metadata !{i32 786688, metadata !202, metadata !"pgroup", metadata !5, i32 206, metadata !245, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pgroup] [line 206]
!245 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!246 = metadata !{i32 786451, metadata !247, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !248, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!247 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!248 = metadata !{metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256}
!249 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!250 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!251 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!252 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!253 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!254 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!255 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!256 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!257 = metadata !{i32 786688, metadata !202, metadata !"i", metadata !5, i32 207, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 207]
!258 = metadata !{i32 786688, metadata !202, metadata !"variable", metadata !5, i32 208, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [variable] [line 208]
!259 = metadata !{i32 786688, metadata !202, metadata !"group", metadata !5, i32 209, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 209]
!260 = metadata !{i32 786688, metadata !202, metadata !"this_var", metadata !5, i32 210, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_var] [line 210]
!261 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_SetupDefaultTopology", metadata !"PUGH_SetupDefaultTopology", metadata !"", i32 333, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*)* @PUGH_SetupDefaultTopology, null, null, metadata !264, i32 334} ; [ DW_TAG_subprogram ] [line 333] [def] [scope 334] [PUGH_SetupDefaultTopology]
!262 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{metadata !22, metadata !22, metadata !33}
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329}
!265 = metadata !{i32 786689, metadata !261, metadata !"dim", metadata !5, i32 16777549, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 333]
!266 = metadata !{i32 786689, metadata !261, metadata !"nprocs", metadata !5, i32 33554765, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nprocs] [line 333]
!267 = metadata !{i32 786688, metadata !261, metadata !"ghost_size", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 335]
!268 = metadata !{i32 786688, metadata !261, metadata !"ghost_size_x", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 335]
!269 = metadata !{i32 786688, metadata !261, metadata !"ghost_size_y", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 335]
!270 = metadata !{i32 786688, metadata !261, metadata !"ghost_size_z", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 335]
!271 = metadata !{i32 786688, metadata !261, metadata !"global_nsize", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 335]
!272 = metadata !{i32 786688, metadata !261, metadata !"global_nx", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 335]
!273 = metadata !{i32 786688, metadata !261, metadata !"global_ny", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 335]
!274 = metadata !{i32 786688, metadata !261, metadata !"global_nz", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 335]
!275 = metadata !{i32 786688, metadata !261, metadata !"periodic", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 335]
!276 = metadata !{i32 786688, metadata !261, metadata !"periodic_x", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 335]
!277 = metadata !{i32 786688, metadata !261, metadata !"periodic_y", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 335]
!278 = metadata !{i32 786688, metadata !261, metadata !"periodic_z", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 335]
!279 = metadata !{i32 786688, metadata !261, metadata !"info", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 335]
!280 = metadata !{i32 786688, metadata !261, metadata !"initialize_memory", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 335]
!281 = metadata !{i32 786688, metadata !261, metadata !"partition", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 335]
!282 = metadata !{i32 786688, metadata !261, metadata !"partition_1d_x", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 335]
!283 = metadata !{i32 786688, metadata !261, metadata !"partition_2d_x", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 335]
!284 = metadata !{i32 786688, metadata !261, metadata !"partition_2d_y", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 335]
!285 = metadata !{i32 786688, metadata !261, metadata !"partition_3d_x", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 335]
!286 = metadata !{i32 786688, metadata !261, metadata !"partition_3d_y", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 335]
!287 = metadata !{i32 786688, metadata !261, metadata !"partition_3d_z", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 335]
!288 = metadata !{i32 786688, metadata !261, metadata !"processor_topology", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 335]
!289 = metadata !{i32 786688, metadata !261, metadata !"storage_verbose", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 335]
!290 = metadata !{i32 786688, metadata !261, metadata !"cacheline_mult", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 335]
!291 = metadata !{i32 786688, metadata !261, metadata !"enable_all_storage", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 335]
!292 = metadata !{i32 786688, metadata !261, metadata !"local_nsize", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 335]
!293 = metadata !{i32 786688, metadata !261, metadata !"local_nx", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 335]
!294 = metadata !{i32 786688, metadata !261, metadata !"local_ny", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 335]
!295 = metadata !{i32 786688, metadata !261, metadata !"local_nz", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 335]
!296 = metadata !{i32 786688, metadata !261, metadata !"overloadabort", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 335]
!297 = metadata !{i32 786688, metadata !261, metadata !"overloadarraygroupsizeb", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 335]
!298 = metadata !{i32 786688, metadata !261, metadata !"overloadbarrier", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 335]
!299 = metadata !{i32 786688, metadata !261, metadata !"overloaddisablegroupcomm", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 335]
!300 = metadata !{i32 786688, metadata !261, metadata !"overloaddisablegroupstorage", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 335]
!301 = metadata !{i32 786688, metadata !261, metadata !"overloadenablegroupcomm", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 335]
!302 = metadata !{i32 786688, metadata !261, metadata !"overloadenablegroupstorage", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 335]
!303 = metadata !{i32 786688, metadata !261, metadata !"overloadevolve", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 335]
!304 = metadata !{i32 786688, metadata !261, metadata !"overloadexit", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 335]
!305 = metadata !{i32 786688, metadata !261, metadata !"overloadgroupdynamicdata", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 335]
!306 = metadata !{i32 786688, metadata !261, metadata !"overloadmyproc", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 335]
!307 = metadata !{i32 786688, metadata !261, metadata !"overloadnprocs", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 335]
!308 = metadata !{i32 786688, metadata !261, metadata !"overloadparallelinit", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 335]
!309 = metadata !{i32 786688, metadata !261, metadata !"overloadquerygroupstorageb", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 335]
!310 = metadata !{i32 786688, metadata !261, metadata !"overloadsyncgroup", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 335]
!311 = metadata !{i32 786688, metadata !261, metadata !"padding_active", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 335]
!312 = metadata !{i32 786688, metadata !261, metadata !"padding_address_spacing", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 335]
!313 = metadata !{i32 786688, metadata !261, metadata !"padding_cacheline_bits", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 335]
!314 = metadata !{i32 786688, metadata !261, metadata !"padding_size", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 335]
!315 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_1d_x", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 335]
!316 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_2d_x", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 335]
!317 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_2d_y", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 335]
!318 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_3d_x", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 335]
!319 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_3d_y", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 335]
!320 = metadata !{i32 786688, metadata !261, metadata !"processor_topology_3d_z", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 335]
!321 = metadata !{i32 786688, metadata !261, metadata !"storage_report_every", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 335]
!322 = metadata !{i32 786688, metadata !261, metadata !"timer_output", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 335]
!323 = metadata !{i32 786688, metadata !261, metadata !"terminate", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 335]
!324 = metadata !{i32 786688, metadata !261, metadata !"cctk_initial_time", metadata !5, i32 335, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 335]
!325 = metadata !{i32 786688, metadata !261, metadata !"cctk_final_time", metadata !5, i32 335, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 335]
!326 = metadata !{i32 786688, metadata !261, metadata !"cctk_itlast", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 335]
!327 = metadata !{i32 786688, metadata !261, metadata !"terminate_next", metadata !5, i32 335, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 335]
!328 = metadata !{i32 786688, metadata !261, metadata !"cctk_pdummy_pointer", metadata !5, i32 335, metadata !158, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 335]
!329 = metadata !{i32 786688, metadata !261, metadata !"retval", metadata !5, i32 336, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 336]
!330 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ParallelInit", metadata !"PUGH_ParallelInit", metadata !"", i32 384, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_ParallelInit, null, null, metadata !331, i32 385} ; [ DW_TAG_subprogram ] [line 384] [def] [scope 385] [PUGH_ParallelInit]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786689, metadata !330, metadata !"GH", metadata !5, i32 16777600, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 384]
!333 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Exit", metadata !"PUGH_Exit", metadata !"", i32 420, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @PUGH_Exit, null, null, metadata !336, i32 421} ; [ DW_TAG_subprogram ] [line 420] [def] [scope 421] [PUGH_Exit]
!334 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{metadata !22, metadata !167, metadata !22}
!336 = metadata !{metadata !337, metadata !338}
!337 = metadata !{i32 786689, metadata !333, metadata !"GH", metadata !5, i32 16777636, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 420]
!338 = metadata !{i32 786689, metadata !333, metadata !"retval", metadata !5, i32 33554852, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 420]
!339 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_Abort", metadata !"PUGH_Abort", metadata !"", i32 460, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @PUGH_Abort, null, null, metadata !340, i32 461} ; [ DW_TAG_subprogram ] [line 460] [def] [scope 461] [PUGH_Abort]
!340 = metadata !{metadata !341, metadata !342}
!341 = metadata !{i32 786689, metadata !339, metadata !"GH", metadata !5, i32 16777676, metadata !167, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 460]
!342 = metadata !{i32 786689, metadata !339, metadata !"retval", metadata !5, i32 33554892, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 460]
!343 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_MyProc", metadata !"PUGH_MyProc", metadata !"", i32 502, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_MyProc, null, null, metadata !348, i32 503} ; [ DW_TAG_subprogram ] [line 502] [def] [scope 503] [PUGH_MyProc]
!344 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{metadata !22, metadata !346}
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!347 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!348 = metadata !{metadata !349, metadata !350}
!349 = metadata !{i32 786689, metadata !343, metadata !"GH", metadata !5, i32 16777718, metadata !346, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 502]
!350 = metadata !{i32 786688, metadata !343, metadata !"myproc", metadata !5, i32 504, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myproc] [line 504]
!351 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_nProcs", metadata !"PUGH_nProcs", metadata !"", i32 539, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @PUGH_nProcs, null, null, metadata !352, i32 540} ; [ DW_TAG_subprogram ] [line 539] [def] [scope 540] [PUGH_nProcs]
!352 = metadata !{metadata !353, metadata !354}
!353 = metadata !{i32 786689, metadata !351, metadata !"GH", metadata !5, i32 16777755, metadata !346, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 539]
!354 = metadata !{i32 786688, metadata !351, metadata !"nprocs", metadata !5, i32 541, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nprocs] [line 541]
!355 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Setup_nProcs", metadata !"Setup_nProcs", metadata !"", i32 628, metadata !356, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !358, i32 629} ; [ DW_TAG_subprogram ] [line 628] [local] [def] [scope 629] [Setup_nProcs]
!356 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!357 = metadata !{metadata !22, metadata !14, metadata !22}
!358 = metadata !{metadata !359, metadata !360}
!359 = metadata !{i32 786689, metadata !355, metadata !"pughGH", metadata !5, i32 16777844, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pughGH] [line 628]
!360 = metadata !{i32 786689, metadata !355, metadata !"dim", metadata !5, i32 33555060, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 628]
!361 = metadata !{metadata !362}
!362 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 29, metadata !8, i32 1, i32 1, null, null}
!363 = metadata !{i32 31, i32 0, metadata !4, null}
!364 = metadata !{i32 87, i32 0, metadata !11, null}
!365 = metadata !{i32 88, i32 0, metadata !11, null}
!366 = metadata !{i32 89, i32 0, metadata !11, null}
!367 = metadata !{i32 90, i32 0, metadata !11, null}
!368 = metadata !{i32 91, i32 0, metadata !11, null}
!369 = metadata !{i32 92, i32 0, metadata !11, null}
!370 = metadata !{i32 94, i32 0, metadata !11, null}
!371 = metadata !{metadata !"int", metadata !372}
!372 = metadata !{metadata !"omnipotent char", metadata !373}
!373 = metadata !{metadata !"Simple C/C++ TBAA"}
!374 = metadata !{i32 101, i32 0, metadata !11, null}
!375 = metadata !{i32 104, i32 0, metadata !11, null}
!376 = metadata !{metadata !"any pointer", metadata !372}
!377 = metadata !{i32 106, i32 0, metadata !11, null}
!378 = metadata !{i32 107, i32 0, metadata !11, null}
!379 = metadata !{i32 690, i32 0, metadata !355, metadata !380}
!380 = metadata !{i32 110, i32 0, metadata !11, null}
!381 = metadata !{i32 691, i32 0, metadata !355, metadata !380}
!382 = metadata !{i32 694, i32 0, metadata !355, metadata !380}
!383 = metadata !{i32 1}
!384 = metadata !{i32 113, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !11, i32 113, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!386 = metadata !{i32 122, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !388, i32 122, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!388 = metadata !{i32 786443, metadata !1, metadata !385, i32 114, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!389 = metadata !{i32 115, i32 0, metadata !388, null}
!390 = metadata !{i32 117, i32 0, metadata !388, null}
!391 = metadata !{i32 124, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !387, i32 123, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!393 = metadata !{i32 126, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !392, i32 125, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!395 = metadata !{i32 127, i32 0, metadata !394, null}
!396 = metadata !{i32 130, i32 0, metadata !388, null}
!397 = metadata !{i32 132, i32 0, metadata !388, null}
!398 = metadata !{i32 134, i32 0, metadata !388, null}
!399 = metadata !{i32 142, i32 0, metadata !11, null}
!400 = metadata !{i32 144, i32 0, metadata !11, null}
!401 = metadata !{i32 145, i32 0, metadata !11, null}
!402 = metadata !{i32 146, i32 0, metadata !11, null}
!403 = metadata !{i32 147, i32 0, metadata !11, null}
!404 = metadata !{i32 148, i32 0, metadata !11, null}
!405 = metadata !{i32 149, i32 0, metadata !11, null}
!406 = metadata !{i32 150, i32 0, metadata !11, null}
!407 = metadata !{i32 151, i32 0, metadata !11, null}
!408 = metadata !{i8* undef}
!409 = metadata !{i32 155, i32 0, metadata !11, null}
!410 = metadata !{i32 333, i32 0, metadata !261, null}
!411 = metadata !{i32 335, i32 0, metadata !261, null}
!412 = metadata !{i32 339, i32 0, metadata !261, null}
!413 = metadata !{i32 341, i32 0, metadata !261, null}
!414 = metadata !{i32 344, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !261, i32 342, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!416 = metadata !{i32 345, i32 0, metadata !415, null}
!417 = metadata !{i32 347, i32 0, metadata !415, null}
!418 = metadata !{i32 348, i32 0, metadata !415, null}
!419 = metadata !{i32 349, i32 0, metadata !415, null}
!420 = metadata !{i32 351, i32 0, metadata !415, null}
!421 = metadata !{i32 352, i32 0, metadata !415, null}
!422 = metadata !{i32 353, i32 0, metadata !415, null}
!423 = metadata !{i32 354, i32 0, metadata !415, null}
!424 = metadata !{i32 356, i32 0, metadata !415, null}
!425 = metadata !{i32 -1}
!426 = metadata !{i32 357, i32 0, metadata !415, null}
!427 = metadata !{i32 358, i32 0, metadata !415, null}
!428 = metadata !{i32 360, i32 0, metadata !261, null}
!429 = metadata !{i32 178, i32 0, metadata !164, null}
!430 = metadata !{i32 180, i32 0, metadata !164, null}
!431 = metadata !{i32 183, i32 0, metadata !164, null}
!432 = metadata !{i32 184, i32 0, metadata !164, null}
!433 = metadata !{i32 202, i32 0, metadata !202, null}
!434 = metadata !{i32 206, i32 0, metadata !202, null}
!435 = metadata !{i32 213, i32 0, metadata !202, null}
!436 = metadata !{i32 231, i32 0, metadata !202, null}
!437 = metadata !{i32 232, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !202, i32 232, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!439 = metadata !{i32 241, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !438, i32 233, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!441 = metadata !{i32 243, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !440, i32 242, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!443 = metadata !{i32 259, i32 0, metadata !442, null}
!444 = metadata !{i32 263, i32 0, metadata !442, null}
!445 = metadata !{i32 269, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !440, i32 269, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!447 = metadata !{i32 271, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !449, i32 271, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!449 = metadata !{i32 786443, metadata !1, metadata !446, i32 270, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!450 = metadata !{i32 291, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !202, i32 291, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!452 = metadata !{i32 293, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 292, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!454 = metadata !{i32 294, i32 0, metadata !453, null}
!455 = metadata !{i32 239, i32 0, metadata !440, null}
!456 = metadata !{i32 246, i32 0, metadata !442, null}
!457 = metadata !{i32 248, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !442, i32 247, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!459 = metadata !{i32 250, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !458, i32 249, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!461 = metadata !{i32 251, i32 0, metadata !460, null}
!462 = metadata !{i32 252, i32 0, metadata !458, null}
!463 = metadata !{i32 253, i32 0, metadata !458, null}
!464 = metadata !{i32 261, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !442, i32 260, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!466 = metadata !{i32 262, i32 0, metadata !465, null}
!467 = metadata !{i32 265, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !442, i32 264, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!469 = metadata !{i32 266, i32 0, metadata !468, null}
!470 = metadata !{i32 273, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !1, metadata !448, i32 272, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!472 = metadata !{i32 277, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !471, i32 274, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!474 = metadata !{i32 278, i32 0, metadata !473, null}
!475 = metadata !{i32 280, i32 0, metadata !473, null}
!476 = metadata !{i32 282, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !473, i32 281, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!478 = metadata !{i32 283, i32 0, metadata !477, null}
!479 = metadata !{i32 287, i32 0, metadata !449, null}
!480 = metadata !{i32 297, i32 0, metadata !202, null}
!481 = metadata !{i32 299, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !202, i32 298, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c]
!483 = metadata !{i32 300, i32 0, metadata !482, null}
!484 = metadata !{i32 301, i32 0, metadata !202, null}
!485 = metadata !{i32 302, i32 0, metadata !202, null}
!486 = metadata !{i32 303, i32 0, metadata !202, null}
!487 = metadata !{i32 304, i32 0, metadata !202, null}
!488 = metadata !{i32 305, i32 0, metadata !202, null}
!489 = metadata !{i32 306, i32 0, metadata !202, null}
!490 = metadata !{i32 384, i32 0, metadata !330, null}
!491 = metadata !{i32 387, i32 0, metadata !330, null}
!492 = metadata !{i32 389, i32 0, metadata !330, null}
!493 = metadata !{i32 420, i32 0, metadata !333, null}
!494 = metadata !{i32 423, i32 0, metadata !333, null}
!495 = metadata !{i32 428, i32 0, metadata !333, null}
!496 = metadata !{i32 460, i32 0, metadata !339, null}
!497 = metadata !{i32 471, i32 0, metadata !339, null}
!498 = metadata !{i32 472, i32 0, metadata !339, null}
!499 = metadata !{i32 477, i32 0, metadata !339, null}
!500 = metadata !{i32 502, i32 0, metadata !343, null}
!501 = metadata !{i32 511, i32 0, metadata !343, null}
!502 = metadata !{i32 512, i32 0, metadata !343, null}
!503 = metadata !{i32 515, i32 0, metadata !343, null}
!504 = metadata !{i32 539, i32 0, metadata !351, null}
!505 = metadata !{i32 548, i32 0, metadata !351, null}
!506 = metadata !{i32 549, i32 0, metadata !351, null}
!507 = metadata !{i32 552, i32 0, metadata !351, null}
