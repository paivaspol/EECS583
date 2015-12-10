; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Names.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.T_HASH = type { i32, i32, i32, %struct.T_HASH_ENTRY** }
%struct.T_HASH_ENTRY = type { %struct.T_HASH_ENTRY*, %struct.T_HASH_ENTRY*, i32, i32, i8*, i8* }

@GroupData = internal unnamed_addr global %struct.T_HASH* null, align 8
@VariableData = internal unnamed_addr global %struct.T_HASH* null, align 8
@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/main/Names.c,v 1.4 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Names_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_NamesStoreGroup(i8* %gname, i32 %gnum) #1 {
  %1 = load %struct.T_HASH** @GroupData, align 8, !tbaa !2
  %2 = icmp eq %struct.T_HASH* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.T_HASH* @Util_HashCreate(i32 64) #5
  store %struct.T_HASH* %4, %struct.T_HASH** @GroupData, align 8, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi %struct.T_HASH* [ %1, %0 ], [ %4, %3 ]
  %7 = tail call i8* @malloc(i64 4) #5
  %8 = icmp ne i8* %7, null
  %9 = icmp ne %struct.T_HASH* %6, null
  %or.cond = and i1 %8, %9
  br i1 %or.cond, label %10, label %27

; <label>:10                                      ; preds = %5
  %11 = bitcast i8* %7 to i32*
  store i32 %gnum, i32* %11, align 4, !tbaa !6
  %12 = tail call i64 @strlen(i8* %gname) #5
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %CaseIndependentHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %10, %.lr.ph.i
  %pos.03.i = phi i8* [ %17, %.lr.ph.i ], [ %gname, %10 ]
  %i.02.i = phi i32 [ %15, %.lr.ph.i ], [ %13, %10 ]
  %hash.01.i = phi i32 [ %21, %.lr.ph.i ], [ 0, %10 ]
  %15 = add nsw i32 %i.02.i, -1
  %16 = mul i32 %hash.01.i, 33
  %17 = getelementptr inbounds i8* %pos.03.i, i64 1
  %18 = load i8* %pos.03.i, align 1, !tbaa !9
  %19 = sext i8 %18 to i32
  %20 = tail call i32 @__toupper(i32 %19) #5
  %21 = add i32 %20, %16
  %22 = icmp eq i32 %15, 0
  br i1 %22, label %CaseIndependentHash.exit.loopexit, label %.lr.ph.i

CaseIndependentHash.exit.loopexit:                ; preds = %.lr.ph.i
  %.pre = load %struct.T_HASH** @GroupData, align 8, !tbaa !2
  br label %CaseIndependentHash.exit

CaseIndependentHash.exit:                         ; preds = %CaseIndependentHash.exit.loopexit, %10
  %23 = phi %struct.T_HASH* [ %6, %10 ], [ %.pre, %CaseIndependentHash.exit.loopexit ]
  %hash.0.lcssa.i = phi i32 [ 0, %10 ], [ %21, %CaseIndependentHash.exit.loopexit ]
  %24 = tail call i64 @strlen(i8* %gname) #5
  %25 = trunc i64 %24 to i32
  %26 = tail call i32 @Util_HashStore(%struct.T_HASH* %23, i32 %25, i8* %gname, i32 %hash.0.lcssa.i, i8* %7) #5
  br label %27

; <label>:27                                      ; preds = %5, %CaseIndependentHash.exit
  %retval.0 = phi i32 [ %26, %CaseIndependentHash.exit ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.T_HASH* @Util_HashCreate(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Util_HashStore(%struct.T_HASH*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_NamesStoreVariable(i8* %name, i32 %vnum, i32 %gnum) #1 {
  %1 = load %struct.T_HASH** @VariableData, align 8, !tbaa !2
  %2 = icmp eq %struct.T_HASH* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.T_HASH* @Util_HashCreate(i32 64) #5
  store %struct.T_HASH* %4, %struct.T_HASH** @VariableData, align 8, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %0, %3
  %6 = phi %struct.T_HASH* [ %1, %0 ], [ %4, %3 ]
  %7 = tail call i8* @malloc(i64 8) #5
  %8 = icmp ne i8* %7, null
  %9 = icmp ne %struct.T_HASH* %6, null
  %or.cond = and i1 %8, %9
  br i1 %or.cond, label %10, label %29

; <label>:10                                      ; preds = %5
  %11 = bitcast i8* %7 to i32*
  store i32 %vnum, i32* %11, align 4, !tbaa !10
  %12 = getelementptr inbounds i8* %7, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 %gnum, i32* %13, align 4, !tbaa !12
  %14 = tail call i64 @strlen(i8* %name) #5
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %CaseIndependentHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %10, %.lr.ph.i
  %pos.03.i = phi i8* [ %19, %.lr.ph.i ], [ %name, %10 ]
  %i.02.i = phi i32 [ %17, %.lr.ph.i ], [ %15, %10 ]
  %hash.01.i = phi i32 [ %23, %.lr.ph.i ], [ 0, %10 ]
  %17 = add nsw i32 %i.02.i, -1
  %18 = mul i32 %hash.01.i, 33
  %19 = getelementptr inbounds i8* %pos.03.i, i64 1
  %20 = load i8* %pos.03.i, align 1, !tbaa !9
  %21 = sext i8 %20 to i32
  %22 = tail call i32 @__toupper(i32 %21) #5
  %23 = add i32 %22, %18
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %CaseIndependentHash.exit.loopexit, label %.lr.ph.i

CaseIndependentHash.exit.loopexit:                ; preds = %.lr.ph.i
  %.pre = load %struct.T_HASH** @VariableData, align 8, !tbaa !2
  br label %CaseIndependentHash.exit

CaseIndependentHash.exit:                         ; preds = %CaseIndependentHash.exit.loopexit, %10
  %25 = phi %struct.T_HASH* [ %6, %10 ], [ %.pre, %CaseIndependentHash.exit.loopexit ]
  %hash.0.lcssa.i = phi i32 [ 0, %10 ], [ %23, %CaseIndependentHash.exit.loopexit ]
  %26 = tail call i64 @strlen(i8* %name) #5
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 @Util_HashStore(%struct.T_HASH* %25, i32 %27, i8* %name, i32 %hash.0.lcssa.i, i8* %7) #5
  br label %29

; <label>:29                                      ; preds = %5, %CaseIndependentHash.exit
  %retval.0 = phi i32 [ %28, %CaseIndependentHash.exit ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_NamesRetrieveGroupNum(i8* %gname, i32* nocapture %gnum) #1 {
  %1 = load %struct.T_HASH** @GroupData, align 8, !tbaa !2
  %2 = icmp eq %struct.T_HASH* %1, null
  br i1 %2, label %23, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %gname) #5
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %CaseIndependentHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %3, %.lr.ph.i
  %pos.03.i = phi i8* [ %9, %.lr.ph.i ], [ %gname, %3 ]
  %i.02.i = phi i32 [ %7, %.lr.ph.i ], [ %5, %3 ]
  %hash.01.i = phi i32 [ %13, %.lr.ph.i ], [ 0, %3 ]
  %7 = add nsw i32 %i.02.i, -1
  %8 = mul i32 %hash.01.i, 33
  %9 = getelementptr inbounds i8* %pos.03.i, i64 1
  %10 = load i8* %pos.03.i, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = tail call i32 @__toupper(i32 %11) #5
  %13 = add i32 %12, %8
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %CaseIndependentHash.exit.loopexit, label %.lr.ph.i

CaseIndependentHash.exit.loopexit:                ; preds = %.lr.ph.i
  %.pre = load %struct.T_HASH** @GroupData, align 8, !tbaa !2
  br label %CaseIndependentHash.exit

CaseIndependentHash.exit:                         ; preds = %CaseIndependentHash.exit.loopexit, %3
  %15 = phi %struct.T_HASH* [ %1, %3 ], [ %.pre, %CaseIndependentHash.exit.loopexit ]
  %hash.0.lcssa.i = phi i32 [ 0, %3 ], [ %13, %CaseIndependentHash.exit.loopexit ]
  %16 = tail call i64 @strlen(i8* %gname) #5
  %17 = trunc i64 %16 to i32
  %18 = tail call i8* @Util_HashData(%struct.T_HASH* %15, i32 %17, i8* %gname, i32 %hash.0.lcssa.i) #5
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %CaseIndependentHash.exit
  %21 = bitcast i8* %18 to i32*
  %22 = load i32* %21, align 4, !tbaa !6
  store i32 %22, i32* %gnum, align 4, !tbaa !13
  br label %23

; <label>:23                                      ; preds = %0, %CaseIndependentHash.exit, %20
  %retval.0 = phi i32 [ 0, %20 ], [ -1, %CaseIndependentHash.exit ], [ -2, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @Util_HashData(%struct.T_HASH*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_NamesRetrieveVariableNum(i8* %name, i32* nocapture %vnum, i32* nocapture %gnum) #1 {
  %1 = load %struct.T_HASH** @VariableData, align 8, !tbaa !2
  %2 = icmp eq %struct.T_HASH* %1, null
  br i1 %2, label %26, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %name) #5
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %CaseIndependentHash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %3, %.lr.ph.i
  %pos.03.i = phi i8* [ %9, %.lr.ph.i ], [ %name, %3 ]
  %i.02.i = phi i32 [ %7, %.lr.ph.i ], [ %5, %3 ]
  %hash.01.i = phi i32 [ %13, %.lr.ph.i ], [ 0, %3 ]
  %7 = add nsw i32 %i.02.i, -1
  %8 = mul i32 %hash.01.i, 33
  %9 = getelementptr inbounds i8* %pos.03.i, i64 1
  %10 = load i8* %pos.03.i, align 1, !tbaa !9
  %11 = sext i8 %10 to i32
  %12 = tail call i32 @__toupper(i32 %11) #5
  %13 = add i32 %12, %8
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %CaseIndependentHash.exit.loopexit, label %.lr.ph.i

CaseIndependentHash.exit.loopexit:                ; preds = %.lr.ph.i
  %.pre = load %struct.T_HASH** @VariableData, align 8, !tbaa !2
  br label %CaseIndependentHash.exit

CaseIndependentHash.exit:                         ; preds = %CaseIndependentHash.exit.loopexit, %3
  %15 = phi %struct.T_HASH* [ %1, %3 ], [ %.pre, %CaseIndependentHash.exit.loopexit ]
  %hash.0.lcssa.i = phi i32 [ 0, %3 ], [ %13, %CaseIndependentHash.exit.loopexit ]
  %16 = tail call i64 @strlen(i8* %name) #5
  %17 = trunc i64 %16 to i32
  %18 = tail call i8* @Util_HashData(%struct.T_HASH* %15, i32 %17, i8* %name, i32 %hash.0.lcssa.i) #5
  %19 = icmp eq i8* %18, null
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %CaseIndependentHash.exit
  %21 = bitcast i8* %18 to i32*
  %22 = load i32* %21, align 4, !tbaa !10
  store i32 %22, i32* %vnum, align 4, !tbaa !13
  %23 = getelementptr inbounds i8* %18, i64 4
  %24 = bitcast i8* %23 to i32*
  %25 = load i32* %24, align 4, !tbaa !12
  store i32 %25, i32* %gnum, align 4, !tbaa !13
  br label %26

; <label>:26                                      ; preds = %0, %CaseIndependentHash.exit, %20
  %retval.0 = phi i32 [ 0, %20 ], [ -1, %CaseIndependentHash.exit ], [ -2, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"IGroupData", !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !8, i64 0}
!11 = !{!"IVariableData", !8, i64 0, !8, i64 4}
!12 = !{!11, !8, i64 4}
!13 = !{!8, !8, i64 0}
