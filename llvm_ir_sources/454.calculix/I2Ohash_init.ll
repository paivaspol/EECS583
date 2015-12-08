; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [87 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A hashtable is NULL or nlist = %d is nonpositive\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"\0A\0A error in I2Ohash_init(%p,%d,%d,%d)\0A nobj = %d, grow = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_init.c\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_init(%struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow) #0 {
entry:
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null
  %cmp1 = icmp slt i32 %nlist, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([87 x i8]* @.str, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nlist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp slt i32 %nobj, 1
  %cmp3 = icmp slt i32 %grow, 1
  %or.cond71 = and i1 %cmp2, %cmp3
  br i1 %or.cond71, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), %struct._I2Ohash* %hashtable, i32 %nlist, i32 %nobj, i32 %grow, i32 %nobj, i32 %grow) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end6:                                          ; preds = %if.end
  tail call void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #4
  %nlist7 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0
  store i32 %nlist, i32* %nlist7, align 4, !tbaa !3
  %grow8 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1
  store i32 %grow, i32* %grow8, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %nobj, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  %add = add nsw i32 %nobj, 1
  %call11 = tail call %struct._I2OP* @I2OP_init(i32 %add, i32 1) #4
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3
  store %struct._I2OP* %call11, %struct._I2OP** %baseI2OP, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds %struct._I2OP* %call11, i64 1
  %freeI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 4
  store %struct._I2OP* %add.ptr, %struct._I2OP** %freeI2OP, align 8, !tbaa !0
  %next = getelementptr inbounds %struct._I2OP* %call11, i64 0, i32 3
  store %struct._I2OP* null, %struct._I2OP** %next, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6
  %cmp15 = icmp sgt i32 %nlist, 0
  br i1 %cmp15, label %if.then16, label %if.else25

if.then16:                                        ; preds = %if.end14
  %conv = sext i32 %nlist to i64
  %mul = shl nsw i64 %conv, 3
  %call17 = tail call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call17 to %struct._I2OP**
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  store %struct._I2OP** %2, %struct._I2OP*** %heads, align 8, !tbaa !0
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then20, label %for.body.lr.ph

if.then20:                                        ; preds = %if.then16
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 %mul, i32 45, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else25:                                        ; preds = %if.end14
  %cmp26 = icmp eq i32 %nlist, 0
  br i1 %cmp26, label %for.cond.preheader, label %if.else30

for.cond.preheader:                               ; preds = %if.else25
  %heads29 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  store %struct._I2OP** null, %struct._I2OP*** %heads29, align 8, !tbaa !0
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then16
  %heads38 = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5
  br label %for.body

if.else30:                                        ; preds = %if.else25
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv31 = sext i32 %nlist to i64
  %mul32 = shl nsw i64 %conv31, 3
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), i64 %mul32, i32 45, i8* getelementptr inbounds ([81 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %5 = phi %struct._I2OP** [ %2, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._I2OP** %5, i64 %indvars.iv
  store %struct._I2OP* null, %struct._I2OP** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nlist
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._I2OP*** %heads38, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @I2Ohash_clearData(%struct._I2Ohash*) #3

; Function Attrs: optsize
declare %struct._I2OP* @I2OP_init(i32, i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

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