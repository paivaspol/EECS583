; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDviaProjection.c'
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
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in GPart_DDviaProjection(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GPart_DDviaProjection(%struct._GPart* %gpart, %struct._IV* %DDmapIV) #0 {
entry:
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = icmp eq %struct._IV* %DDmapIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._IV* %DDmapIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx2 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %1 = load i32* %nvtx2, align 4, !tbaa !3
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call3 = tail call i32* @IV_entries(%struct._IV* %compidsIV) #4
  %vtxMapIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 10
  %call4 = tail call i32* @IV_entries(%struct._IV* %vtxMapIV) #4
  %call5 = tail call i32* @IV_entries(%struct._IV* %DDmapIV) #4
  %call6 = tail call i32 @IV_max(%struct._IV* %DDmapIV) #4
  %par = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 7
  %2 = load %struct._GPart** %par, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._GPart* %2, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @IVcopy(i32 %1, i32* %call3, i32* %call5) #4
  %ncomp = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 %call6, i32* %ncomp, align 4, !tbaa !3
  br label %return

if.end9:                                          ; preds = %if.end
  %add = add nsw i32 %call6, 1
  %call10 = tail call i32* @IVinit(i32 %add, i32 -1) #4
  %cmp1153 = icmp sgt i32 %1, 0
  br i1 %cmp1153, label %for.body, label %for.end

for.body:                                         ; preds = %if.end9, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end9 ]
  %ndomloc.054 = phi i32 [ %ndomloc.2, %for.inc ], [ 0, %if.end9 ]
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom12 = sext i32 %3 to i64
  %arrayidx13 = getelementptr inbounds i32* %call5, i64 %idxprom12
  %4 = load i32* %arrayidx13, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %4, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.body
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds i32* %call10, i64 %idxprom16
  %5 = load i32* %arrayidx17, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %5, -1
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then15
  %inc = add nsw i32 %ndomloc.054, 1
  store i32 %inc, i32* %arrayidx17, align 4, !tbaa !3
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then15
  %ndomloc.1 = phi i32 [ %inc, %if.then19 ], [ %ndomloc.054, %if.then15 ]
  %domloc.0 = phi i32 [ %inc, %if.then19 ], [ %5, %if.then15 ]
  %arrayidx24 = getelementptr inbounds i32* %call3, i64 %indvars.iv
  store i32 %domloc.0, i32* %arrayidx24, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx26 = getelementptr inbounds i32* %call3, i64 %indvars.iv
  store i32 0, i32* %arrayidx26, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.else
  %ndomloc.2 = phi i32 [ %ndomloc.1, %if.end22 ], [ %ndomloc.054, %if.else ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end9
  %ndomloc.0.lcssa = phi i32 [ 0, %if.end9 ], [ %ndomloc.2, %for.inc ]
  %ncomp29 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 %ndomloc.0.lcssa, i32* %ncomp29, align 4, !tbaa !3
  tail call void @IVfree(i32* %call10) #4
  br label %return

return:                                           ; preds = %for.end, %if.then8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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
