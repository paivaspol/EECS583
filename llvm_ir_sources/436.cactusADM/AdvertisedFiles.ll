; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.ioAdvertisedFileListenerCallbacks = type { i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }

@listener_DB = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/IOUtil/src/AdvertisedFiles.c,v 1.5 2001/10/30 13:56:31 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_RegisterAdvertisedFileListener(%struct.cGH* nocapture readnone %GH, i8* %listener, %struct.ioAdvertisedFileListenerCallbacks* readonly %callbacks) #1 {
  %1 = icmp ne i8* %listener, null
  %2 = icmp ne %struct.ioAdvertisedFileListenerCallbacks* %callbacks, null
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %3, label %13

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @malloc(i64 8) #4
  %5 = icmp eq i8* %4, null
  br i1 %5, label %13, label %6

; <label>:6                                       ; preds = %3
  %7 = bitcast %struct.ioAdvertisedFileListenerCallbacks* %callbacks to i64*
  %8 = bitcast i8* %4 to i64*
  %9 = load i64* %7, align 8
  store i64 %9, i64* %8, align 8
  %10 = tail call i32 @StoreNamedData(%struct.PNamedData** @listener_DB, i8* %listener, i8* %4) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %6
  tail call void @free(i8* %4) #5
  br label %13

; <label>:13                                      ; preds = %6, %3, %12, %0
  %retval.0 = phi i32 [ %10, %12 ], [ 0, %6 ], [ -1, %3 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #1 {
  %listener.01 = load %struct.PNamedData** @listener_DB, align 8
  %1 = icmp eq %struct.PNamedData* %listener.01, null
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %13
  %listener.03 = phi %struct.PNamedData* [ %listener.0, %13 ], [ %listener.01, %0 ]
  %retval.02 = phi i32 [ %retval.1, %13 ], [ 0, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %listener.03, i64 0, i32 3
  %3 = bitcast i8** %2 to %struct.ioAdvertisedFileListenerCallbacks**
  %4 = load %struct.ioAdvertisedFileListenerCallbacks** %3, align 8, !tbaa !2
  %5 = icmp eq %struct.ioAdvertisedFileListenerCallbacks* %4, null
  br i1 %5, label %13, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.ioAdvertisedFileListenerCallbacks* %4, i64 0, i32 0
  %8 = load i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)** %7, align 8, !tbaa !7
  %9 = icmp eq i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* %8, null
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %6
  %11 = tail call i32 %8(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #4
  %12 = or i32 %11, %retval.02
  br label %13

; <label>:13                                      ; preds = %6, %.lr.ph, %10
  %retval.1 = phi i32 [ %12, %10 ], [ %retval.02, %6 ], [ %retval.02, %.lr.ph ]
  %14 = getelementptr inbounds %struct.PNamedData* %listener.03, i64 0, i32 1
  %listener.0 = load %struct.PNamedData** %14, align 8
  %15 = icmp eq %struct.PNamedData* %listener.0, null
  br i1 %15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %13, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %retval.1, %13 ]
  ret i32 %retval.0.lcssa
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 24}
!3 = !{!"PNamedData", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"", !4, i64 0}
