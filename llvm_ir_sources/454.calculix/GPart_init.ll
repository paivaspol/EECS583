; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in GPart_init(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A fatal error in GPart_setMessageInfo(%p,%d,%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define void @GPart_init(%struct._GPart* %gpart, %struct._Graph* %g) #0 {
entry:
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = icmp eq %struct._Graph* %g, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %0, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._Graph* %g) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @GPart_clearData(%struct._GPart* %gpart) #4
  %2 = load i32* %nvtx, align 4, !tbaa !0
  %nvtx5 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  store i32 %2, i32* %nvtx5, align 4, !tbaa !0
  %nvbnd = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  %3 = load i32* %nvbnd, align 4, !tbaa !0
  %nvbnd6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 3
  store i32 %3, i32* %nvbnd6, align 4, !tbaa !0
  %g7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  store %struct._Graph* %g, %struct._Graph** %g7, align 8, !tbaa !3
  %ncomp = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 1, i32* %ncomp, align 4, !tbaa !0
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %4 = load i32* %nvtx, align 4, !tbaa !0
  tail call void @IV_setSize(%struct._IV* %compidsIV, i32 %4) #4
  tail call void @IV_fill(%struct._IV* %compidsIV, i32 1) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @GPart_clearData(%struct._GPart*) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @GPart_setMessageInfo(%struct._GPart* %gpart, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), %struct._GPart* null, i32 %msglvl, %struct._IO_FILE* %msgFile) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %msglvl1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  store i32 %msglvl, i32* %msglvl1, align 4, !tbaa !0
  %cmp2 = icmp eq %struct._IO_FILE* %msgFile, null
  br i1 %cmp2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %msgFile4 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  store %struct._IO_FILE* %msgFile, %struct._IO_FILE** %msgFile4, align 8, !tbaa !3
  br label %if.end6

if.else:                                          ; preds = %if.end
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %msgFile5 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  store %struct._IO_FILE* %1, %struct._IO_FILE** %msgFile5, align 8, !tbaa !3
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
