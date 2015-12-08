; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"\0A fatal error in I2Ohash_setDefaultFields(%p)\0A hashtable is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [59 x i8] c"\0A fatal error in I2Ohash_clearData(%p)\0A hashtable is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"\0A fatal error in I2Ohash_free(%p)\0A hashtable is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._I2Ohash* @I2Ohash_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 40) #5
  %0 = bitcast i8* %call to %struct._I2Ohash*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 21, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @I2Ohash_setDefaultFields(%struct._I2Ohash* %0) #7
  ret %struct._I2Ohash* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_setDefaultFields(%struct._I2Ohash* %hashtable) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), %struct._I2Ohash* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  store i32 0, i32* %nlist, align 4, !tbaa !3
  %grow = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1
  store i32 0, i32* %grow, align 4, !tbaa !3
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2
  store i32 0, i32* %nitem, align 4, !tbaa !3
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3
  %1 = bitcast %struct._I2OP** %baseI2OP to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3
  %0 = load %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  %cmp121 = icmp eq %struct._I2OP* %0, null
  br i1 %cmp121, label %while.end, label %while.body

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str3, i64 0, i64 0), %struct._I2Ohash* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi %struct._I2OP* [ %4, %while.body ], [ %0, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._I2OP* %2, i64 0, i32 3
  %3 = load %struct._I2OP** %next, align 8, !tbaa !0
  store %struct._I2OP* %3, %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  tail call void @I2OP_free(%struct._I2OP* %2) #5
  %4 = load %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._I2OP* %4, null
  br i1 %cmp1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  %5 = load %struct._I2OP*** %heads, align 8, !tbaa !0
  %cmp3 = icmp eq %struct._I2OP** %5, null
  br i1 %cmp3, label %if.end11, label %if.then7

if.then7:                                         ; preds = %while.end
  %6 = bitcast %struct._I2OP** %5 to i8*
  tail call void @free(i8* %6) #5
  store %struct._I2OP** null, %struct._I2OP*** %heads, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then7
  tail call void @I2Ohash_setDefaultFields(%struct._I2Ohash* %hashtable) #7
  ret void
}

; Function Attrs: optsize
declare void @I2OP_free(%struct._I2OP*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_free(%struct._I2Ohash* %hashtable) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), %struct._I2Ohash* null) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #7
  %1 = bitcast %struct._I2Ohash* %hashtable to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
