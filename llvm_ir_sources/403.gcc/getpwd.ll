; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@getpwd.pwd = internal unnamed_addr global i8* null, align 8
@getpwd.failure_errno = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @getpwd() #0 {
entry:
  %dotstat = alloca %struct.stat, align 8
  %pwdstat = alloca %struct.stat, align 8
  %0 = load i8** @getpwd.pwd, align 8, !tbaa !0
  %1 = bitcast %struct.stat* %dotstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #1
  %2 = bitcast %struct.stat* %pwdstat to i8*
  call void @llvm.lifetime.start(i64 144, i8* %2) #1
  %tobool = icmp eq i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* @getpwd.failure_errno, align 4, !tbaa !3
  %call = call i32* @__errno_location() #6
  store i32 %3, i32* %call, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end32

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #7
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %for.cond.preheader, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.then
  %4 = load i8* %call2, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %4, 47
  br i1 %cmp4, label %land.lhs.true6, label %for.cond.preheader

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = call i32 @stat(i8* %call2, %struct.stat* %pwdstat) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true10, label %for.cond.preheader

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), %struct.stat* %dotstat) #7
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %land.lhs.true14, label %for.cond.preheader

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %st_ino = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 1
  %5 = load i64* %st_ino, align 8, !tbaa !4
  %st_ino15 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 1
  %6 = load i64* %st_ino15, align 8, !tbaa !4
  %cmp16 = icmp eq i64 %5, %6
  br i1 %cmp16, label %land.lhs.true18, label %for.cond.preheader

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %st_dev = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 0
  %7 = load i64* %st_dev, align 8, !tbaa !4
  %st_dev19 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 0
  %8 = load i64* %st_dev19, align 8, !tbaa !4
  %cmp20 = icmp eq i64 %7, %8
  br i1 %cmp20, label %if.end31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true18, %land.lhs.true14, %land.lhs.true10, %land.lhs.true6, %land.lhs.true3
  %call2342 = call noalias i8* @xmalloc(i64 100) #7
  %call2443 = call i8* @getcwd(i8* %call2342, i64 100) #7
  %lnot44 = icmp eq i8* %call2443, null
  br i1 %lnot44, label %for.body, label %if.end31

for.cond:                                         ; preds = %for.body
  %call23 = call noalias i8* @xmalloc(i64 %mul) #7
  %call24 = call i8* @getcwd(i8* %call23, i64 %mul) #7
  %lnot = icmp eq i8* %call24, null
  br i1 %lnot, label %for.body, label %if.end31

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %call2346 = phi i8* [ %call23, %for.cond ], [ %call2342, %for.cond.preheader ]
  %s.045 = phi i64 [ %mul, %for.cond ], [ 100, %for.cond.preheader ]
  %9 = load i32* %call, align 4, !tbaa !3
  call void @free(i8* %call2346) #7
  %cmp27 = icmp eq i32 %9, 34
  %mul = shl i64 %s.045, 1
  br i1 %cmp27, label %for.cond, label %if.then29

if.then29:                                        ; preds = %for.body
  store i32 %9, i32* @getpwd.failure_errno, align 4, !tbaa !3
  store i32 %9, i32* %call, align 4, !tbaa !3
  br label %if.end31

if.end31:                                         ; preds = %for.cond.preheader, %for.cond, %if.then29, %land.lhs.true18
  %p.0 = phi i8* [ %call2, %land.lhs.true18 ], [ null, %if.then29 ], [ %call2342, %for.cond.preheader ], [ %call23, %for.cond ]
  store i8* %p.0, i8** @getpwd.pwd, align 8, !tbaa !0
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %entry, %if.end31
  %p.1 = phi i8* [ %0, %entry ], [ null, %land.lhs.true ], [ %p.0, %if.end31 ]
  call void @llvm.lifetime.end(i64 144, i8* %2) #1
  call void @llvm.lifetime.end(i64 144, i8* %1) #1
  ret i8* %p.1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @getcwd(i8*, i64) #4

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
