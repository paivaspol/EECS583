; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/nalu.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@WriteNALU = common global i32 (%struct.NALU_t*)* null, align 8

; Function Attrs: nounwind optsize uwtable
define i32 @RBSPtoNALU(i8* nocapture %rbsp, %struct.NALU_t* nocapture %nalu, i32 %rbsp_size, i32 %nal_unit_type, i32 %nal_reference_idc, i32 %min_num_bytes, i32 %UseAnnexbLongStartcode) #0 {
entry:
  %forbidden_bit = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 5
  store i32 0, i32* %forbidden_bit, align 4, !tbaa !0
  %nal_reference_idc1 = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 4
  store i32 %nal_reference_idc, i32* %nal_reference_idc1, align 4, !tbaa !0
  %nal_unit_type2 = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 3
  store i32 %nal_unit_type, i32* %nal_unit_type2, align 4, !tbaa !0
  %tobool = icmp ne i32 %UseAnnexbLongStartcode, 0
  %cond = select i1 %tobool, i32 4, i32 3
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 0
  store i32 %cond, i32* %startcodeprefix_len, align 4, !tbaa !0
  %shl5 = shl i32 %nal_reference_idc, 5
  %or7 = or i32 %shl5, %nal_unit_type
  %conv = trunc i32 %or7 to i8
  %buf = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 6
  %0 = load i8** %buf, align 8, !tbaa !3
  store i8 %conv, i8* %0, align 1, !tbaa !1
  %1 = load i8** %buf, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i8* %1, i64 1
  %conv10 = sext i32 %rbsp_size to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %rbsp, i64 %conv10, i32 1, i1 false)
  %2 = load i8** %buf, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i8* %2, i64 1
  %call = tail call i32 @RBSPtoEBSP(i8* %arrayidx12, i32 0, i32 %rbsp_size, i32 %min_num_bytes) #3
  %add = add nsw i32 %call, 1
  %len13 = getelementptr inbounds %struct.NALU_t* %nalu, i64 0, i32 1
  store i32 %add, i32* %len13, align 4, !tbaa !0
  ret i32 %add
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare i32 @RBSPtoEBSP(i8*, i32, i32, i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
