; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/nalucommon.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"AllocNALU: n\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"AllocNALU: n->buf\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.NALU_t* @AllocNALU(i32 %buffersize) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 32) #3
  %0 = bitcast i8* %call to %struct.NALU_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_size = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %max_size to i32*
  store i32 %buffersize, i32* %1, align 4, !tbaa !0
  %conv = sext i32 %buffersize to i64
  %call1 = tail call noalias i8* @calloc(i64 %conv, i64 1) #3
  %buf = getelementptr inbounds i8* %call, i64 24
  %2 = bitcast i8* %buf to i8**
  store i8* %call1, i8** %2, align 8, !tbaa !3
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0)) #3
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret %struct.NALU_t* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @FreeNALU(%struct.NALU_t* %n) #0 {
entry:
  %tobool = icmp eq %struct.NALU_t* %n, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6
  %0 = load i8** %buf, align 8, !tbaa !3
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* %0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %1 = bitcast %struct.NALU_t* %n to i8*
  tail call void @free(i8* %1) #3
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
