; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/mcf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network = type { [200 x i8], [200 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i64 }
%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

@net = common global %struct.network zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"active arcs                : %ld\0A\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"simplex iterations         : %ld\0A\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"objective value            : %0.0f\0A\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"erased arcs                : %ld\0A\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"new implicit arcs          : %ld\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"checksum                   : %ld\0A\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"nodes                      : %ld\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"mcf.out\00", align 1
@str = private unnamed_addr constant [28 x i8] c"not enough memory, exit(-1)\00"
@str16 = private unnamed_addr constant [31 x i8] c"\0AMCF SPEC CPU2006 version 1.10\00"
@str17 = private unnamed_addr constant [51 x i8] c"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)\00"
@str18 = private unnamed_addr constant [45 x i8] c"Copyright (c) 2000-2002 Andreas Loebel & ZIB\00"
@str19 = private unnamed_addr constant [39 x i8] c"Copyright (c) 2003-2005 Andreas Loebel\00"
@str20 = private unnamed_addr constant [5 x i8] c"done\00"
@str21 = private unnamed_addr constant [17 x i8] c"read error, exit\00"

; Function Attrs: nounwind optsize uwtable
define i64 @global_opt() #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %if.end23, %entry
  %residual_nb_it.032 = phi i64 [ 5, %entry ], [ %dec, %if.end23 ]
  %0 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 5), align 8, !tbaa !0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i64 %0) #5
  %call1 = tail call i64 @primal_net_simplex(%struct.network* @net) #5
  %1 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 27), align 8, !tbaa !0
  %call2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i64 %1) #5
  %call3 = tail call double @flow_cost(%struct.network* @net) #5
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), double %call3) #5
  %tobool5 = icmp eq i64 %residual_nb_it.032, 0
  br i1 %tobool5, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %2 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 7), align 8, !tbaa !0
  %tobool6 = icmp eq i64 %2, 0
  br i1 %tobool6, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = tail call i64 @suspend_impl(%struct.network* @net, i64 -1, i64 0) #5
  %tobool9 = icmp eq i64 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then7
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i64 %call8) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end, %if.then10
  %call14 = tail call i64 @price_out_impl(%struct.network* @net) #5
  %tobool15 = icmp eq i64 %call14, 0
  br i1 %tobool15, label %while.end, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i64 %call14) #5
  %cmp19 = icmp slt i64 %call14, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end23:                                         ; preds = %if.end18
  %dec = add nsw i64 %residual_nb_it.032, -1
  br label %while.body

while.end:                                        ; preds = %if.end13, %while.body
  %3 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 29), align 8, !tbaa !0
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i64 %3) #5
  ret i64 0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare i64 @primal_net_simplex(%struct.network*) #2

; Function Attrs: optsize
declare double @flow_cost(%struct.network*) #2

; Function Attrs: optsize
declare i64 @suspend_impl(%struct.network*, i64, i64) #2

; Function Attrs: optsize
declare i64 @price_out_impl(%struct.network*) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @str16, i64 0, i64 0))
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str17, i64 0, i64 0))
  %puts22 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str18, i64 0, i64 0))
  %puts23 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str19, i64 0, i64 0))
  %putchar = tail call i32 @putchar(i32 10) #4
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8 0, i64 624, i32 8, i1 false)
  store i64 10000000, i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 18), align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %call5 = tail call i8* @strcpy(i8* getelementptr inbounds (%struct.network* @net, i64 0, i32 0, i64 0), i8* %0) #5
  %call6 = tail call i64 @read_min(%struct.network* @net) #5
  %tobool = icmp eq i64 %call6, 0
  br i1 %tobool, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %puts25 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str21, i64 0, i64 0))
  %call9 = tail call i64 @getfree(%struct.network* @net) #5
  br label %return

if.end10:                                         ; preds = %if.end
  %1 = load i64* getelementptr inbounds (%struct.network* @net, i64 0, i32 3), align 8, !tbaa !0
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str13, i64 0, i64 0), i64 %1) #5
  %call12 = tail call i64 @primal_start_artificial(%struct.network* @net) #5
  %call13 = tail call i64 @global_opt() #7
  %puts24 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str20, i64 0, i64 0))
  %call15 = tail call i64 @write_circulations(i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), %struct.network* @net) #5
  %call18 = tail call i64 @getfree(%struct.network* @net) #5
  %not.tobool16 = icmp ne i64 %call15, 0
  %. = sext i1 %not.tobool16 to i32
  br label %return

return:                                           ; preds = %if.end10, %entry, %if.then7
  %retval.0 = phi i32 [ -1, %if.then7 ], [ -1, %entry ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

; Function Attrs: optsize
declare i64 @read_min(%struct.network*) #2

; Function Attrs: optsize
declare i64 @getfree(%struct.network*) #2

; Function Attrs: optsize
declare i64 @primal_start_artificial(%struct.network*) #2

; Function Attrs: optsize
declare i64 @write_circulations(i8*, %struct.network*) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
