; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/rdpicdecision.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }

@img = external global %struct.ImageParameters*
@input = external global %struct.InputParameters*

; Function Attrs: nounwind optsize readnone uwtable
define i32 @rd_pic_decision(double %snrY_version1, double %snrY_version2, i32 %bits_version1, i32 %bits_version2, double %lambda_picture) #0 {
entry:
  %conv = sitofp i32 %bits_version1 to double
  %mul = fmul double %conv, %lambda_picture
  %add = fadd double %mul, %snrY_version1
  %conv1 = sitofp i32 %bits_version2 to double
  %mul2 = fmul double %conv1, %lambda_picture
  %add3 = fadd double %mul2, %snrY_version2
  %cmp = fcmp ogt double %add3, %add
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = fcmp une double %add3, %add
  %cmp7 = fcmp ult double %snrY_version2, %snrY_version1
  %or.cond = or i1 %cmp5, %cmp7
  %. = zext i1 %or.cond to i32
  ret i32 %.

return:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @picture_coding_decision(%struct.Picture* nocapture %picture1, %struct.Picture* nocapture %picture2, i32 %qp) #1 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %1 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 3
  %2 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %2, i64 0, i32 34
  %3 = load i32* %successive_Bframe, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  %sub = add nsw i32 %qp, -12
  %conv4 = sitofp i32 %sub to double
  %div = fdiv double %conv4, 3.000000e+00
  %exp2 = tail call double @exp2(double %div) #2
  %mul = fmul double %exp2, 6.800000e-01
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %phitmp30 = select i1 %cmp, double 2.000000e+00, double 1.000000e+00
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %4 = phi double [ 2.000000e+00, %if.then ], [ %phitmp30, %lor.rhs ]
  %mul8 = fmul double %mul, %4
  br label %if.end

if.end:                                           ; preds = %entry, %lor.end
  %lambda_picture.0 = phi double [ %mul8, %lor.end ], [ %mul, %entry ]
  %distortion_y = getelementptr inbounds %struct.Picture* %picture1, i64 0, i32 4
  %5 = load float* %distortion_y, align 4, !tbaa !4
  %distortion_u = getelementptr inbounds %struct.Picture* %picture1, i64 0, i32 5
  %6 = load float* %distortion_u, align 4, !tbaa !4
  %add = fadd float %5, %6
  %distortion_v = getelementptr inbounds %struct.Picture* %picture1, i64 0, i32 6
  %7 = load float* %distortion_v, align 4, !tbaa !4
  %add14 = fadd float %add, %7
  %conv15 = fpext float %add14 to double
  %distortion_y16 = getelementptr inbounds %struct.Picture* %picture2, i64 0, i32 4
  %8 = load float* %distortion_y16, align 4, !tbaa !4
  %distortion_u17 = getelementptr inbounds %struct.Picture* %picture2, i64 0, i32 5
  %9 = load float* %distortion_u17, align 4, !tbaa !4
  %add18 = fadd float %8, %9
  %distortion_v19 = getelementptr inbounds %struct.Picture* %picture2, i64 0, i32 6
  %10 = load float* %distortion_v19, align 4, !tbaa !4
  %add20 = fadd float %add18, %10
  %conv21 = fpext float %add20 to double
  %bits_per_picture = getelementptr inbounds %struct.Picture* %picture2, i64 0, i32 3
  %11 = load i32* %bits_per_picture, align 4, !tbaa !3
  %bits_per_picture22 = getelementptr inbounds %struct.Picture* %picture1, i64 0, i32 3
  %12 = load i32* %bits_per_picture22, align 4, !tbaa !3
  %conv.i = sitofp i32 %12 to double
  %mul.i = fmul double %lambda_picture.0, %conv.i
  %add.i = fadd double %conv15, %mul.i
  %conv1.i = sitofp i32 %11 to double
  %mul2.i = fmul double %lambda_picture.0, %conv1.i
  %add3.i = fadd double %conv21, %mul2.i
  %cmp.i = fcmp ogt double %add3.i, %add.i
  br i1 %cmp.i, label %rd_pic_decision.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %cmp5.i = fcmp une double %add3.i, %add.i
  %cmp7.i = fcmp ult float %add20, %add14
  %or.cond.i = or i1 %cmp5.i, %cmp7.i
  %..i = zext i1 %or.cond.i to i32
  br label %rd_pic_decision.exit

rd_pic_decision.exit:                             ; preds = %if.end, %lor.lhs.false.i
  %call2331 = phi i32 [ %..i, %lor.lhs.false.i ], [ 0, %if.end ]
  ret i32 %call2331
}

declare double @exp2(double)

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
