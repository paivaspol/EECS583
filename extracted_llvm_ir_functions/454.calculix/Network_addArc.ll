; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_addArc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in Network_addArc(%p,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"\0A nnode = %d\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_addArc.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_addArc(%struct._Network* %network, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #0 {
entry:
  %cmp = icmp eq %struct._Network* %network, null
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call127 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Network* null, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #3
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %nnode1 = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %1 = load i32* %nnode1, align 4, !tbaa !3
  %notlhs = icmp sgt i32 %1, 0
  %notrhs = icmp sgt i32 %firstNode, -1
  %or.cond.not = and i1 %notrhs, %notlhs
  %cmp6 = icmp sgt i32 %1, %firstNode
  %or.cond121 = and i1 %or.cond.not, %cmp6
  %cmp8.not = icmp sgt i32 %secondNode, -1
  %or.cond122.not = and i1 %or.cond121, %cmp8.not
  %cmp10 = icmp sgt i32 %1, %secondNode
  %or.cond123 = and i1 %or.cond122.not, %cmp10
  %or.cond123.not = xor i1 %or.cond123, true
  %cmp12 = icmp slt i32 %capacity, 1
  %or.cond124 = or i1 %cmp12, %or.cond123.not
  %cmp14 = icmp slt i32 %flow, 0
  %or.cond125 = or i1 %or.cond124, %cmp14
  %cmp16 = icmp sgt i32 %flow, %capacity
  %or.cond126 = or i1 %or.cond125, %cmp16
  br i1 %or.cond126, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Network* %network, i32 %firstNode, i32 %secondNode, i32 %capacity, i32 %flow) #3
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then.thread, %if.then18
  tail call void @exit(i32 -1) #4
  unreachable

if.end20:                                         ; preds = %lor.lhs.false
  %inheads21 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %4 = load %struct._Arc*** %inheads21, align 8, !tbaa !0
  %outheads22 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %5 = load %struct._Arc*** %outheads22, align 8, !tbaa !0
  %chunk23 = getelementptr inbounds %struct._Network* %network, i64 0, i32 5
  %6 = load %struct._ArcChunk** %chunk23, align 8, !tbaa !0
  %cmp24 = icmp eq %struct._ArcChunk* %6, null
  br i1 %cmp24, label %if.then27, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end20
  %inuse = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 1
  %7 = load i32* %inuse, align 4, !tbaa !3
  %size = getelementptr inbounds %struct._ArcChunk* %6, i64 0, i32 0
  %8 = load i32* %size, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %7, %8
  br i1 %cmp26, label %if.then27, label %if.end59

if.then27:                                        ; preds = %lor.lhs.false25, %if.end20
  %call28 = tail call noalias i8* @malloc(i64 24) #3
  %9 = bitcast i8* %call28 to %struct._ArcChunk*
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.then27
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 24, i32 47, i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0)) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end32:                                         ; preds = %if.then27
  br i1 %notlhs, label %if.then34, label %if.else44

if.then34:                                        ; preds = %if.end32
  %conv = sext i32 %1 to i64
  %mul = shl nsw i64 %conv, 5
  %call35 = tail call noalias i8* @malloc(i64 %mul) #3
  %11 = bitcast i8* %call35 to %struct._Arc*
  %base = getelementptr inbounds i8* %call28, i64 8
  %12 = bitcast i8* %base to %struct._Arc**
  store %struct._Arc* %11, %struct._Arc** %12, align 8, !tbaa !0
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %if.then38, label %if.end54

if.then38:                                        ; preds = %if.then34
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 48, i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0)) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.else44:                                        ; preds = %if.end32
  %cmp45 = icmp eq i32 %1, 0
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.else44
  %base48 = getelementptr inbounds i8* %call28, i64 8
  %14 = bitcast i8* %base48 to %struct._Arc**
  store %struct._Arc* null, %struct._Arc** %14, align 8, !tbaa !0
  br label %if.end54

if.else49:                                        ; preds = %if.else44
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv50 = sext i32 %1 to i64
  %mul51 = shl nsw i64 %conv50, 5
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul51, i32 48, i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0)) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end54:                                         ; preds = %if.then34, %if.then47
  %size55 = bitcast i8* %call28 to i32*
  store i32 %1, i32* %size55, align 4, !tbaa !3
  %inuse56 = getelementptr inbounds i8* %call28, i64 4
  %16 = bitcast i8* %inuse56 to i32*
  store i32 0, i32* %16, align 4, !tbaa !3
  %next = getelementptr inbounds i8* %call28, i64 16
  %17 = bitcast i8* %next to %struct._ArcChunk**
  store %struct._ArcChunk* %6, %struct._ArcChunk** %17, align 8, !tbaa !0
  store %struct._ArcChunk* %9, %struct._ArcChunk** %chunk23, align 8, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %lor.lhs.false25
  %18 = phi i32 [ 0, %if.end54 ], [ %7, %lor.lhs.false25 ]
  %chunk.0 = phi %struct._ArcChunk* [ %9, %if.end54 ], [ %6, %lor.lhs.false25 ]
  %base60 = getelementptr inbounds %struct._ArcChunk* %chunk.0, i64 0, i32 2
  %19 = load %struct._Arc** %base60, align 8, !tbaa !0
  %inuse61 = getelementptr inbounds %struct._ArcChunk* %chunk.0, i64 0, i32 1
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %inuse61, align 4, !tbaa !3
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext
  %first = getelementptr inbounds %struct._Arc* %add.ptr, i64 0, i32 0
  store i32 %firstNode, i32* %first, align 4, !tbaa !3
  %second = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext, i32 1
  store i32 %secondNode, i32* %second, align 4, !tbaa !3
  %capacity62 = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext, i32 2
  store i32 %capacity, i32* %capacity62, align 4, !tbaa !3
  %flow63 = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext, i32 3
  store i32 %flow, i32* %flow63, align 4, !tbaa !3
  %idxprom = sext i32 %firstNode to i64
  %arrayidx = getelementptr inbounds %struct._Arc** %5, i64 %idxprom
  %20 = load %struct._Arc** %arrayidx, align 8, !tbaa !0
  %nextOut = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext, i32 4
  store %struct._Arc* %20, %struct._Arc** %nextOut, align 8, !tbaa !0
  store %struct._Arc* %add.ptr, %struct._Arc** %arrayidx, align 8, !tbaa !0
  %idxprom66 = sext i32 %secondNode to i64
  %arrayidx67 = getelementptr inbounds %struct._Arc** %4, i64 %idxprom66
  %21 = load %struct._Arc** %arrayidx67, align 8, !tbaa !0
  %nextIn = getelementptr inbounds %struct._Arc* %19, i64 %idx.ext, i32 5
  store %struct._Arc* %21, %struct._Arc** %nextIn, align 8, !tbaa !0
  store %struct._Arc* %add.ptr, %struct._Arc** %arrayidx67, align 8, !tbaa !0
  %narc = getelementptr inbounds %struct._Network* %network, i64 0, i32 1
  %22 = load i32* %narc, align 4, !tbaa !3
  %inc70 = add nsw i32 %22, 1
  store i32 %inc70, i32* %narc, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
