; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in Network_init(%p,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_init.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Network_setMessageInfo(%p,%d,%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define void @Network_init(%struct._Network* %network, i32 %nnode, i32 %narc) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  %cmp1 = icmp slt i32 %nnode, 3
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %narc, 0
  %or.cond130 = or i1 %or.cond, %cmp3
  br i1 %or.cond130, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %nnode, i32 %narc) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @Network_clearData(%struct._Network* %network) #5
  %nnode4 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  store i32 %nnode, i32* %nnode4, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %nnode, 0
  br i1 %cmp5, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.end
  %conv = sext i32 %nnode to i64
  %mul = shl nsw i64 %conv, 3
  %call7 = tail call noalias i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call7 to %struct._Arc**
  %inheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  store %struct._Arc** %1, %struct._Arc*** %inheads, align 8, !tbaa !0
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then10, label %if.then28

if.then10:                                        ; preds = %if.then6
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 48, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.else15:                                        ; preds = %if.end
  %cmp16 = icmp eq i32 %nnode, 0
  br i1 %cmp16, label %if.then43, label %if.else20

if.else20:                                        ; preds = %if.else15
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv21 = sext i32 %nnode to i64
  %mul22 = shl nsw i64 %conv21, 3
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul22, i32 48, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.then28:                                        ; preds = %if.then6
  %call31 = tail call noalias i8* @malloc(i64 %mul) #5
  %4 = bitcast i8* %call31 to %struct._Arc**
  %outheads = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  store %struct._Arc** %4, %struct._Arc*** %outheads, align 8, !tbaa !0
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %if.then34, label %for.cond.preheader

if.then34:                                        ; preds = %if.then28
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 49, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.then43:                                        ; preds = %if.else15
  %inheads19 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %6 = bitcast %struct._Arc*** %inheads19 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then28, %if.then43
  %7 = phi %struct._Arc** [ %4, %if.then28 ], [ null, %if.then43 ]
  br i1 %cmp5, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %outheads53 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %inheads55 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi %struct._Arc** [ %7, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._Arc** %8, i64 %indvars.iv
  store %struct._Arc* null, %struct._Arc** %arrayidx, align 8, !tbaa !0
  %9 = load %struct._Arc*** %inheads55, align 8, !tbaa !0
  %arrayidx56 = getelementptr inbounds %struct._Arc** %9, i64 %indvars.iv
  store %struct._Arc* null, %struct._Arc** %arrayidx56, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nnode
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._Arc*** %outheads53, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp57 = icmp sgt i32 %narc, 0
  br i1 %cmp57, label %if.then59, label %if.end93

if.then59:                                        ; preds = %for.end
  %call60 = tail call noalias i8* @malloc(i64 24) #5
  %10 = bitcast i8* %call60 to %struct._ArcChunk*
  %cmp61 = icmp eq i8* %call60, null
  br i1 %cmp61, label %if.then63, label %if.then69

if.then63:                                        ; preds = %if.then59
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 24, i32 60, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.then69:                                        ; preds = %if.then59
  %conv70 = sext i32 %narc to i64
  %mul71 = shl nsw i64 %conv70, 5
  %call72 = tail call noalias i8* @malloc(i64 %mul71) #5
  %12 = bitcast i8* %call72 to %struct._Arc*
  %base = getelementptr inbounds i8* %call60, i64 8
  %13 = bitcast i8* %base to %struct._Arc**
  store %struct._Arc* %12, %struct._Arc** %13, align 8, !tbaa !0
  %cmp73 = icmp eq i8* %call72, null
  br i1 %cmp73, label %if.then75, label %if.end91

if.then75:                                        ; preds = %if.then69
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call78 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul71, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end91:                                         ; preds = %if.then69
  %size = bitcast i8* %call60 to i32*
  store i32 %narc, i32* %size, align 4, !tbaa !3
  %inuse = getelementptr inbounds i8* %call60, i64 4
  %15 = bitcast i8* %inuse to i32*
  store i32 0, i32* %15, align 4, !tbaa !3
  %next = getelementptr inbounds i8* %call60, i64 16
  %16 = bitcast i8* %next to %struct._ArcChunk**
  store %struct._ArcChunk* null, %struct._ArcChunk** %16, align 8, !tbaa !0
  %chunk92 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5
  store %struct._ArcChunk* %10, %struct._ArcChunk** %chunk92, align 8, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %if.end91, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Network_clearData(%struct._Network*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @Network_setMessageInfo(%struct._Network* %network, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), %struct._Network* null, i32 %msglvl, %struct._IO_FILE* %msgFile) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %msglvl, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %msglvl3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 6
  store i32 %msglvl, i32* %msglvl3, align 4, !tbaa !3
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %cmp5 = icmp eq %struct._IO_FILE* %msgFile, null
  br i1 %cmp5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %msgFile7 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  store %struct._IO_FILE* %msgFile, %struct._IO_FILE** %msgFile7, align 8, !tbaa !0
  br label %if.end9

if.else:                                          ; preds = %if.end4
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %msgFile8 = getelementptr inbounds %struct._Network* %network, i64 0, i32 7
  store %struct._IO_FILE* %1, %struct._IO_FILE** %msgFile8, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  ret void
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

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
