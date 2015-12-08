; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in ChvManager_init(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ChvManager_init(%struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #0 {
entry:
  %cmp = icmp eq %struct._ChvManager* %manager, null
  %0 = icmp ugt i32 %lockflag, 2
  %or.cond = or i1 %cmp, %0
  %1 = icmp ugt i32 %mode, 1
  %or.cond27 = or i1 %or.cond, %1
  br i1 %or.cond27, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ChvManager_clearData(%struct._ChvManager* %manager) #4
  %cmp8 = icmp sgt i32 %lockflag, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %call10 = tail call %struct._Lock* @Lock_new() #4
  %lock = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1
  store %struct._Lock* %call10, %struct._Lock** %lock, align 8, !tbaa !0
  tail call void @Lock_init(%struct._Lock* %call10, i32 %lockflag) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %mode13 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2
  store i32 %mode, i32* %mode13, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ChvManager_clearData(%struct._ChvManager*) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

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
