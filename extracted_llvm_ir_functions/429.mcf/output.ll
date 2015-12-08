; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/output.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"()\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"***\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i64 @write_circulations(i8* nocapture %outfile, %struct.network* %net) #0 {
entry:
  %stop_arcs = getelementptr inbounds %struct.network* %net, i64 0, i32 24
  %0 = load %struct.arc** %stop_arcs, align 8, !tbaa !0
  %m_impl = getelementptr inbounds %struct.network* %net, i64 0, i32 7
  %1 = load i64* %m_impl, align 8, !tbaa !3
  %idx.neg = sub i64 0, %1
  %add.ptr = getelementptr inbounds %struct.arc* %0, i64 %idx.neg
  %call = tail call %struct._IO_FILE* @fopen(i8* %outfile, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @refresh_neighbour_lists(%struct.network* %net) #4
  %n = getelementptr inbounds %struct.network* %net, i64 0, i32 2
  %2 = load i64* %n, align 8, !tbaa !3
  %nodes = getelementptr inbounds %struct.network* %net, i64 0, i32 21
  %3 = load %struct.node** %nodes, align 8, !tbaa !0
  %firstout = getelementptr inbounds %struct.node* %3, i64 %2, i32 7
  %block.060 = load %struct.arc** %firstout, align 8
  %tobool61 = icmp eq %struct.arc* %block.060, null
  br i1 %tobool61, label %for.end32, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %n_trips = getelementptr inbounds %struct.network* %net, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc30
  %block.062 = phi %struct.arc* [ %block.060, %for.body.lr.ph ], [ %block.0, %for.inc30 ]
  %flow = getelementptr inbounds %struct.arc* %block.062, i64 0, i32 6
  %4 = load i64* %flow, align 8, !tbaa !3
  %tobool1 = icmp eq i64 %4, 0
  br i1 %tobool1, label %for.inc30, label %if.then2

if.then2:                                         ; preds = %for.body
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %call)
  %tobool458 = icmp eq %struct.arc* %block.062, null
  br i1 %tobool458, label %for.inc30, label %while.body

while.body:                                       ; preds = %if.then2, %if.end23
  %arc.059 = phi %struct.arc* [ %.arc2.0, %if.end23 ], [ %block.062, %if.then2 ]
  %cmp5 = icmp ult %struct.arc* %arc.059, %add.ptr
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %while.body
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %call)
  br label %if.end8

if.end8:                                          ; preds = %while.body, %if.then6
  %head = getelementptr inbounds %struct.arc* %arc.059, i64 0, i32 2
  %7 = load %struct.node** %head, align 8, !tbaa !0
  %number = getelementptr inbounds %struct.node* %7, i64 0, i32 12
  %8 = load i32* %number, align 4, !tbaa !4
  %sub = sub nsw i32 0, %8
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %sub) #4
  %9 = load i64* %n_trips, align 8, !tbaa !3
  %10 = load %struct.node** %head, align 8, !tbaa !0
  %firstout12 = getelementptr inbounds %struct.node* %10, i64 %9, i32 7
  %arc2.055 = load %struct.arc** %firstout12, align 8
  %tobool1456 = icmp eq %struct.arc* %arc2.055, null
  br i1 %tobool1456, label %if.then21, label %for.body15

for.cond13:                                       ; preds = %for.body15
  %nextout = getelementptr inbounds %struct.arc* %arc2.057, i64 0, i32 4
  %arc2.0 = load %struct.arc** %nextout, align 8
  %tobool14 = icmp eq %struct.arc* %arc2.0, null
  br i1 %tobool14, label %if.then21, label %for.body15

for.body15:                                       ; preds = %if.end8, %for.cond13
  %arc2.057 = phi %struct.arc* [ %arc2.0, %for.cond13 ], [ %arc2.055, %if.end8 ]
  %flow16 = getelementptr inbounds %struct.arc* %arc2.057, i64 0, i32 6
  %11 = load i64* %flow16, align 8, !tbaa !3
  %tobool17 = icmp eq i64 %11, 0
  br i1 %tobool17, label %for.cond13, label %if.end23

if.then21:                                        ; preds = %if.end8, %for.cond13
  %call22 = tail call i32 @fclose(%struct._IO_FILE* %call) #4
  br label %return

if.end23:                                         ; preds = %for.body15
  %head24 = getelementptr inbounds %struct.arc* %arc2.057, i64 0, i32 2
  %12 = load %struct.node** %head24, align 8, !tbaa !0
  %number25 = getelementptr inbounds %struct.node* %12, i64 0, i32 12
  %13 = load i32* %number25, align 4, !tbaa !4
  %tobool26 = icmp eq i32 %13, 0
  %.arc2.0 = select i1 %tobool26, %struct.arc* null, %struct.arc* %arc2.057
  %tobool4 = icmp eq %struct.arc* %.arc2.0, null
  br i1 %tobool4, label %for.inc30, label %while.body

for.inc30:                                        ; preds = %if.then2, %if.end23, %for.body
  %nextout31 = getelementptr inbounds %struct.arc* %block.062, i64 0, i32 4
  %block.0 = load %struct.arc** %nextout31, align 8
  %tobool = icmp eq %struct.arc* %block.0, null
  br i1 %tobool, label %for.end32, label %for.body

for.end32:                                        ; preds = %for.inc30, %if.end
  %call33 = tail call i32 @fclose(%struct._IO_FILE* %call) #4
  br label %return

return:                                           ; preds = %entry, %for.end32, %if.then21
  %retval.0 = phi i64 [ -1, %if.then21 ], [ 0, %for.end32 ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: optsize
declare void @refresh_neighbour_lists(%struct.network*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
