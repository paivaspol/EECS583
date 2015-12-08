; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECacheType = type { i32, i32, i32 }

@hash = external global i32
@ECacheSize = external global i32
@ECache = common global %struct.ECacheType* null, align 8
@hold_hash = external global i32
@ECacheProbes = common global i32 0, align 4
@ECacheHits = common global i32 0, align 4
@str = private unnamed_addr constant [33 x i8] c"Out of memory allocating ECache.\00"

; Function Attrs: nounwind optsize uwtable
define void @storeECache(i32 %score) #0 {
entry:
  %0 = load i32* @hash, align 4, !tbaa !0
  %1 = load i32* @ECacheSize, align 4, !tbaa !0
  %rem = urem i32 %0, %1
  %idxprom = sext i32 %rem to i64
  %2 = load %struct.ECacheType** @ECache, align 8, !tbaa !3
  %stored_hash = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 0
  store i32 %0, i32* %stored_hash, align 4, !tbaa !0
  %3 = load i32* @hold_hash, align 4, !tbaa !0
  %hold_hash = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 1
  store i32 %3, i32* %hold_hash, align 4, !tbaa !0
  %score5 = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 2
  store i32 %score, i32* %score5, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @checkECache(i32* nocapture %score, i32* nocapture %in_cache) #0 {
entry:
  %0 = load i32* @ECacheProbes, align 4, !tbaa !0
  %inc = add i32 %0, 1
  store i32 %inc, i32* @ECacheProbes, align 4, !tbaa !0
  %1 = load i32* @hash, align 4, !tbaa !0
  %2 = load i32* @ECacheSize, align 4, !tbaa !0
  %rem = urem i32 %1, %2
  %idxprom = sext i32 %rem to i64
  %3 = load %struct.ECacheType** @ECache, align 8, !tbaa !3
  %stored_hash = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 0
  %4 = load i32* %stored_hash, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %hold_hash = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 1
  %5 = load i32* %hold_hash, align 4, !tbaa !0
  %6 = load i32* @hold_hash, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %5, %6
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32* @ECacheHits, align 4, !tbaa !0
  %inc4 = add i32 %7, 1
  store i32 %inc4, i32* @ECacheHits, align 4, !tbaa !0
  store i32 1, i32* %in_cache, align 4, !tbaa !0
  %score7 = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 2
  %8 = load i32* %score7, align 4, !tbaa !0
  store i32 %8, i32* %score, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @reset_ecache() #0 {
entry:
  %0 = load %struct.ECacheType** @ECache, align 8, !tbaa !3
  %1 = bitcast %struct.ECacheType* %0 to i8*
  %2 = load i32* @ECacheSize, align 4, !tbaa !0
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 12
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @alloc_ecache() #0 {
entry:
  %0 = load i32* @ECacheSize, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 12
  %call = tail call noalias i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to %struct.ECacheType*
  store %struct.ECacheType* %1, %struct.ECacheType** @ECache, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @free_ecache() #0 {
entry:
  %0 = load %struct.ECacheType** @ECache, align 8, !tbaa !3
  %1 = bitcast %struct.ECacheType* %0 to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
