; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Network/src/Network_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Network = type { i32, i32, i32, %struct._Arc**, %struct._Arc**, %struct._ArcChunk*, i32, %struct._IO_FILE* }
%struct._Arc = type { i32, i32, i32, i32, %struct._Arc*, %struct._Arc* }
%struct._ArcChunk = type { i32, i32, %struct._Arc*, %struct._ArcChunk* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"\0A in list for %d :\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c" <%d,%d,%d>\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"\0A out list for %d :\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A\0A Network : %d nodes, %d arcs, %d arc traversals\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Network_writeForHumanEye(%struct._Network* nocapture %network, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %nnode.i = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode.i, align 4, !tbaa !0
  %narc.i = getelementptr inbounds %struct._Network* %network, i64 0, i32 1
  %1 = load i32* %narc.i, align 4, !tbaa !0
  %ntrav.i = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  %2 = load i32* %ntrav.i, align 4, !tbaa !0
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), i32 %0, i32 %1, i32 %2) #2
  %3 = load i32* %nnode.i, align 4, !tbaa !0
  %inheads2 = getelementptr inbounds %struct._Network* %network, i64 0, i32 3
  %4 = load %struct._Arc*** %inheads2, align 8, !tbaa !3
  %outheads3 = getelementptr inbounds %struct._Network* %network, i64 0, i32 4
  %5 = load %struct._Arc*** %outheads3, align 8, !tbaa !3
  %cmp55 = icmp sgt i32 %3, 0
  br i1 %cmp55, label %for.body, label %for.end24

for.body:                                         ; preds = %entry, %for.inc23
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc23 ], [ 0, %entry ]
  %6 = trunc i64 %indvars.iv to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i32 %6) #2
  %call4 = tail call i32 @fflush(%struct._IO_FILE* %fp) #2
  %arrayidx = getelementptr inbounds %struct._Arc** %4, i64 %indvars.iv
  %arc.049 = load %struct._Arc** %arrayidx, align 8
  %cmp650 = icmp eq %struct._Arc* %arc.049, null
  br i1 %cmp650, label %for.end, label %for.body7

for.body7:                                        ; preds = %for.body, %for.body7
  %arc.051 = phi %struct._Arc* [ %arc.0, %for.body7 ], [ %arc.049, %for.body ]
  %first = getelementptr inbounds %struct._Arc* %arc.051, i64 0, i32 0
  %7 = load i32* %first, align 4, !tbaa !0
  %flow = getelementptr inbounds %struct._Arc* %arc.051, i64 0, i32 3
  %8 = load i32* %flow, align 4, !tbaa !0
  %capacity = getelementptr inbounds %struct._Arc* %arc.051, i64 0, i32 2
  %9 = load i32* %capacity, align 4, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %7, i32 %8, i32 %9) #2
  %call9 = tail call i32 @fflush(%struct._IO_FILE* %fp) #2
  %nextIn = getelementptr inbounds %struct._Arc* %arc.051, i64 0, i32 5
  %arc.0 = load %struct._Arc** %nextIn, align 8
  %cmp6 = icmp eq %struct._Arc* %arc.0, null
  br i1 %cmp6, label %for.end, label %for.body7

for.end:                                          ; preds = %for.body7, %for.body
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0), i32 %6) #2
  %call11 = tail call i32 @fflush(%struct._IO_FILE* %fp) #2
  %arrayidx13 = getelementptr inbounds %struct._Arc** %5, i64 %indvars.iv
  %arc.152 = load %struct._Arc** %arrayidx13, align 8
  %cmp1553 = icmp eq %struct._Arc* %arc.152, null
  br i1 %cmp1553, label %for.inc23, label %for.body16

for.body16:                                       ; preds = %for.end, %for.body16
  %arc.154 = phi %struct._Arc* [ %arc.1, %for.body16 ], [ %arc.152, %for.end ]
  %second = getelementptr inbounds %struct._Arc* %arc.154, i64 0, i32 1
  %10 = load i32* %second, align 4, !tbaa !0
  %flow17 = getelementptr inbounds %struct._Arc* %arc.154, i64 0, i32 3
  %11 = load i32* %flow17, align 4, !tbaa !0
  %capacity18 = getelementptr inbounds %struct._Arc* %arc.154, i64 0, i32 2
  %12 = load i32* %capacity18, align 4, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i32 %10, i32 %11, i32 %12) #2
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %fp) #2
  %nextOut = getelementptr inbounds %struct._Arc* %arc.154, i64 0, i32 4
  %arc.1 = load %struct._Arc** %nextOut, align 8
  %cmp15 = icmp eq %struct._Arc* %arc.1, null
  br i1 %cmp15, label %for.inc23, label %for.body16

for.inc23:                                        ; preds = %for.body16, %for.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %for.end24, label %for.body

for.end24:                                        ; preds = %for.inc23, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Network_writeStats(%struct._Network* nocapture %network, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %nnode = getelementptr inbounds %struct._Network* %network, i64 0, i32 0
  %0 = load i32* %nnode, align 4, !tbaa !0
  %narc = getelementptr inbounds %struct._Network* %network, i64 0, i32 1
  %1 = load i32* %narc, align 4, !tbaa !0
  %ntrav = getelementptr inbounds %struct._Network* %network, i64 0, i32 2
  %2 = load i32* %ntrav, align 4, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), i32 %0, i32 %1, i32 %2) #2
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
