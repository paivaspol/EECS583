; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in BKL_init(%p,%p,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @BKL_init(%struct._BKL* %bkl, %struct._BPG* %bpg, float %alpha) #0 {
entry:
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp eq %struct._BPG* %bpg, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv = fpext float %alpha to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, %struct._BPG* %bpg, double %conv) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @BKL_clearData(%struct._BKL* %bkl) #4
  %bpg2 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0
  store %struct._BPG* %bpg, %struct._BPG** %bpg2, align 8, !tbaa !0
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0
  %1 = load i32* %nX, align 4, !tbaa !3
  %ndom = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1
  store i32 %1, i32* %ndom, align 4, !tbaa !3
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1
  %2 = load i32* %nY, align 4, !tbaa !3
  %nseg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 2
  store i32 %2, i32* %nseg, align 4, !tbaa !3
  %3 = load i32* %nX, align 4, !tbaa !3
  %4 = load i32* %nY, align 4, !tbaa !3
  %add = add nsw i32 %4, %3
  %nreg = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3
  store i32 %add, i32* %nreg, align 4, !tbaa !3
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2
  %5 = load %struct._Graph** %graph, align 8, !tbaa !0
  %vwghts = getelementptr inbounds %struct._Graph* %5, i64 0, i32 7
  %6 = load i32** %vwghts, align 8, !tbaa !0
  %cmp5 = icmp eq i32* %6, null
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %totweight = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4
  store i32 %add, i32* %totweight, align 4, !tbaa !3
  %call10 = tail call i32* @IVinit(i32 %add, i32 1) #4
  %regwghts = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  store i32* %call10, i32** %regwghts, align 8, !tbaa !0
  br label %if.end18

if.else:                                          ; preds = %if.end
  %regwghts13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12
  store i32* %6, i32** %regwghts13, align 8, !tbaa !0
  %call16 = tail call i32 @IVsum(i32 %add, i32* %6) #4
  %totweight17 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 4
  store i32 %call16, i32* %totweight17, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7
  %7 = load i32* %nreg, align 4, !tbaa !3
  %call20 = tail call i32* @IVinit(i32 %7, i32 0) #4
  %colors = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  store i32* %call20, i32** %colors, align 8, !tbaa !0
  %alpha21 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 13
  store float %alpha, float* %alpha21, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @BKL_clearData(%struct._BKL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
