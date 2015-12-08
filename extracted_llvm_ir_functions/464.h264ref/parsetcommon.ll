; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"AllocPPS: slice_group_id\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.pic_parameter_set_rbsp_t* @AllocPPS() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 240, i64 1) #3
  %0 = bitcast i8* %call to %struct.pic_parameter_set_rbsp_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call noalias i8* @calloc(i64 60000, i64 1) #3
  %slice_group_id = getelementptr inbounds i8* %call, i64 176
  %1 = bitcast i8* %slice_group_id to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str1, i64 0, i64 0)) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  ret %struct.pic_parameter_set_rbsp_t* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define noalias %struct.seq_parameter_set_rbsp_t* @AllocSPS() #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 2132, i64 1) #3
  %0 = bitcast i8* %call to %struct.seq_parameter_set_rbsp_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.seq_parameter_set_rbsp_t* %0
}

; Function Attrs: nounwind optsize uwtable
define void @FreePPS(%struct.pic_parameter_set_rbsp_t* nocapture %pps) #0 {
entry:
  %slice_group_id = getelementptr inbounds %struct.pic_parameter_set_rbsp_t* %pps, i64 0, i32 16
  %0 = load i8** %slice_group_id, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = bitcast %struct.pic_parameter_set_rbsp_t* %pps to i8*
  tail call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeSPS(%struct.seq_parameter_set_rbsp_t* nocapture %sps) #0 {
entry:
  %0 = bitcast %struct.seq_parameter_set_rbsp_t* %sps to i8*
  tail call void @free(i8* %0) #3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
