; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/filehandle.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@WriteNALU = external global i32 (%struct.NALU_t*)*
@input = external global %struct.InputParameters*
@errortext = external global [300 x i8]
@.str1 = private unnamed_addr constant [34 x i8] c"Output File Mode %d not supported\00", align 1
@stats = external global %struct.StatParameters*

; Function Attrs: noreturn nounwind optsize uwtable
define void @error(i8* %text, i32 %code) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* %text) #5
  tail call void (...)* @flush_dpb() #5
  tail call void @exit(i32 %code) #6
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @flush_dpb(...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @write_PPS(i32 %len, i32 %PPS_id) #4 {
entry:
  %call = tail call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %PPS_id) #5
  %0 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !tbaa !0
  %call1 = tail call i32 %0(%struct.NALU_t* %call) #5
  %add = add nsw i32 %call1, %len
  tail call void @FreeNALU(%struct.NALU_t* %call) #5
  ret i32 %add
}

; Function Attrs: optsize
declare %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32) #2

; Function Attrs: optsize
declare void @FreeNALU(%struct.NALU_t*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @start_sequence() #4 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %GenerateMultiplePPS = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 15
  %1 = load i32* %GenerateMultiplePPS, align 4, !tbaa !3
  %tobool = icmp ne i32 %1, 0
  %cond = select i1 %tobool, i32 3, i32 1
  %of_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 60
  %2 = load i32* %of_mode, align 4, !tbaa !3
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 27, i64 0
  tail call void @OpenAnnexbFile(i8* %arraydecay) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %arraydecay3 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 27, i64 0
  tail call void @OpenRTPFile(i8* %arraydecay3) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i32 %2) #5
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge = phi i32 (%struct.NALU_t*)* [ @WriteRTPNALU, %sw.bb1 ], [ @WriteAnnexbNALU, %sw.bb ]
  store i32 (%struct.NALU_t*)* %storemerge, i32 (%struct.NALU_t*)** @WriteNALU, align 8, !tbaa !0
  %call5 = tail call %struct.NALU_t* (...)* @GenerateSeq_parameter_set_NALU() #5
  %3 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !tbaa !0
  %call6 = tail call i32 %3(%struct.NALU_t* %call5) #5
  tail call void @FreeNALU(%struct.NALU_t* %call5) #5
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %for.body
  %i.013 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.body ]
  %len.012 = phi i32 [ %call6, %sw.epilog ], [ %add.i, %for.body ]
  %call.i = tail call %struct.NALU_t* @GeneratePic_parameter_set_NALU(i32 %i.013) #5
  %4 = load i32 (%struct.NALU_t*)** @WriteNALU, align 8, !tbaa !0
  %call1.i = tail call i32 %4(%struct.NALU_t* %call.i) #5
  %add.i = add nsw i32 %call1.i, %len.012
  tail call void @FreeNALU(%struct.NALU_t* %call.i) #5
  %inc = add nsw i32 %i.013, 1
  %cmp = icmp slt i32 %inc, %cond
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %for.body
  %5 = load %struct.StatParameters** @stats, align 8, !tbaa !0
  %bit_ctr_parametersets_n = getelementptr inbounds %struct.StatParameters* %5, i64 0, i32 33
  store i32 %add.i, i32* %bit_ctr_parametersets_n, align 4, !tbaa !3
  ret i32 0
}

; Function Attrs: optsize
declare void @OpenAnnexbFile(i8*) #2

; Function Attrs: optsize
declare i32 @WriteAnnexbNALU(%struct.NALU_t*) #2

; Function Attrs: optsize
declare void @OpenRTPFile(i8*) #2

; Function Attrs: optsize
declare i32 @WriteRTPNALU(%struct.NALU_t*) #2

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: optsize
declare %struct.NALU_t* @GenerateSeq_parameter_set_NALU(...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @terminate_sequence() #4 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %of_mode = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 60
  %1 = load i32* %of_mode, align 4, !tbaa !3
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  tail call void (...)* @CloseAnnexbFile() #5
  br label %return

sw.bb1:                                           ; preds = %entry
  tail call void (...)* @CloseRTPFile() #5
  br label %return

sw.default:                                       ; preds = %entry
  %call = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0), i32 %1) #5
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #7
  unreachable

return:                                           ; preds = %sw.bb, %sw.bb1
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @CloseAnnexbFile(...) #2

; Function Attrs: optsize
declare void @CloseRTPFile(...) #2

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
