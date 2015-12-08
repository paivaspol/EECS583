; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_I2OP.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in I2OP_init(%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_I2OP.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in I2OP_initStorage(%d,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c" <%4d,%4d,%p>\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._I2OP* @I2OP_init(i32 %n, i32 %flag) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  %0 = icmp ugt i32 %flag, 2
  %or.cond = or i1 %cmp, %0
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i32 %n, i32 %flag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %if.then5, label %if.else14

if.then5:                                         ; preds = %if.end
  %conv = sext i32 %n to i64
  %mul = mul i64 %conv, 24
  %call6 = tail call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call6 to %struct._I2OP*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end23

if.then9:                                         ; preds = %if.then5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 41, i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else14:                                        ; preds = %if.end
  %cmp15 = icmp eq i32 %n, 0
  br i1 %cmp15, label %if.end23, label %if.else18

if.else18:                                        ; preds = %if.else14
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv19 = sext i32 %n to i64
  %mul20 = mul i64 %conv19, 24
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul20, i32 41, i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.else14, %if.then5
  %base.0 = phi %struct._I2OP* [ %2, %if.then5 ], [ null, %if.else14 ]
  tail call void @I2OP_initStorage(i32 %n, i32 %flag, %struct._I2OP* %base.0) #6
  ret %struct._I2OP* %base.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @I2OP_initStorage(i32 %n, i32 %flag, %struct._I2OP* %base) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  %0 = icmp ugt i32 %flag, 2
  %or.cond = or i1 %cmp, %0
  %cmp5 = icmp eq %struct._I2OP* %base, null
  %or.cond80 = or i1 %or.cond, %cmp5
  br i1 %or.cond80, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 %n, i32 %flag, %struct._I2OP* %base) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %n to i64
  %add.ptr.sum = add i64 %idx.ext, -1
  %add.ptr6 = getelementptr inbounds %struct._I2OP* %base, i64 %add.ptr.sum
  switch i32 %flag, label %sw.epilog [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond15.preheader
    i32 0, label %for.cond31.preheader
  ]

for.cond31.preheader:                             ; preds = %if.end
  %cmp3287 = icmp slt i64 %add.ptr.sum, 0
  br i1 %cmp3287, label %sw.epilog, label %for.body33

for.cond15.preheader:                             ; preds = %if.end
  %cmp1684 = icmp slt i64 %add.ptr.sum, 1
  br i1 %cmp1684, label %for.end25, label %for.body17.lr.ph

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %elem.183 = getelementptr inbounds %struct._I2OP* %base, i64 1
  br label %for.body17

for.cond.preheader:                               ; preds = %if.end
  %cmp781 = icmp sgt i64 %add.ptr.sum, 0
  br i1 %cmp781, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %elem.082 = phi %struct._I2OP* [ %add.ptr8, %for.body ], [ %base, %for.cond.preheader ]
  %value1 = getelementptr inbounds %struct._I2OP* %elem.082, i64 0, i32 1
  store i32 -1, i32* %value1, align 4, !tbaa !3
  %value0 = getelementptr inbounds %struct._I2OP* %elem.082, i64 0, i32 0
  store i32 -1, i32* %value0, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct._I2OP* %elem.082, i64 0, i32 2
  store i8* null, i8** %value2, align 8, !tbaa !0
  %add.ptr8 = getelementptr inbounds %struct._I2OP* %elem.082, i64 1
  %next = getelementptr inbounds %struct._I2OP* %elem.082, i64 0, i32 3
  store %struct._I2OP* %add.ptr8, %struct._I2OP** %next, align 8, !tbaa !0
  %cmp7 = icmp ult %struct._I2OP* %add.ptr8, %add.ptr6
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %value19 = getelementptr inbounds %struct._I2OP* %base, i64 %add.ptr.sum, i32 1
  store i32 -1, i32* %value19, align 4, !tbaa !3
  %value010 = getelementptr inbounds %struct._I2OP* %add.ptr6, i64 0, i32 0
  store i32 -1, i32* %value010, align 4, !tbaa !3
  %value211 = getelementptr inbounds %struct._I2OP* %base, i64 %add.ptr.sum, i32 2
  %2 = bitcast i8** %value211 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 16, i32 8, i1 false)
  br label %sw.epilog

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %elem.186 = phi %struct._I2OP* [ %elem.183, %for.body17.lr.ph ], [ %elem.1, %for.body17 ]
  %base.pn85 = phi %struct._I2OP* [ %base, %for.body17.lr.ph ], [ %elem.186, %for.body17 ]
  %value118 = getelementptr inbounds %struct._I2OP* %base.pn85, i64 1, i32 1
  store i32 -1, i32* %value118, align 4, !tbaa !3
  %value019 = getelementptr inbounds %struct._I2OP* %elem.186, i64 0, i32 0
  store i32 -1, i32* %value019, align 4, !tbaa !3
  %value220 = getelementptr inbounds %struct._I2OP* %base.pn85, i64 1, i32 2
  store i8* null, i8** %value220, align 8, !tbaa !0
  %next22 = getelementptr inbounds %struct._I2OP* %base.pn85, i64 1, i32 3
  store %struct._I2OP* %base.pn85, %struct._I2OP** %next22, align 8, !tbaa !0
  %elem.1 = getelementptr inbounds %struct._I2OP* %elem.186, i64 1
  %cmp16 = icmp ugt %struct._I2OP* %elem.1, %add.ptr6
  br i1 %cmp16, label %for.end25, label %for.body17

for.end25:                                        ; preds = %for.body17, %for.cond15.preheader
  %value126 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 1
  store i32 -1, i32* %value126, align 4, !tbaa !3
  %value027 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 0
  store i32 -1, i32* %value027, align 4, !tbaa !3
  %value228 = getelementptr inbounds %struct._I2OP* %base, i64 0, i32 2
  %3 = bitcast i8** %value228 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false)
  br label %sw.epilog

for.body33:                                       ; preds = %for.cond31.preheader, %for.body33
  %elem.288 = phi %struct._I2OP* [ %incdec.ptr39, %for.body33 ], [ %base, %for.cond31.preheader ]
  %value134 = getelementptr inbounds %struct._I2OP* %elem.288, i64 0, i32 1
  store i32 -1, i32* %value134, align 4, !tbaa !3
  %value035 = getelementptr inbounds %struct._I2OP* %elem.288, i64 0, i32 0
  store i32 -1, i32* %value035, align 4, !tbaa !3
  %value236 = getelementptr inbounds %struct._I2OP* %elem.288, i64 0, i32 2
  %incdec.ptr39 = getelementptr inbounds %struct._I2OP* %elem.288, i64 1
  %cmp32 = icmp ugt %struct._I2OP* %incdec.ptr39, %add.ptr6
  %4 = bitcast i8** %value236 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false)
  br i1 %cmp32, label %sw.epilog, label %for.body33

sw.epilog:                                        ; preds = %for.cond31.preheader, %for.body33, %if.end, %for.end25, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @I2OP_free(%struct._I2OP* %ip) #0 {
entry:
  %cmp = icmp eq %struct._I2OP* %ip, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = bitcast %struct._I2OP* %ip to i8*
  tail call void @free(i8* %0) #4
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @I2OP_fprintf(%struct._IO_FILE* %fp, %struct._I2OP* %elem) #0 {
entry:
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  %cmp1 = icmp eq %struct._I2OP* %elem, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end6, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %i.018 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %elem.addr.017 = phi %struct._I2OP* [ %4, %if.end ], [ %elem, %entry ]
  %rem15 = and i32 %i.018, 3
  %cmp3 = icmp eq i32 %rem15, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.body
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.body
  %value0 = getelementptr inbounds %struct._I2OP* %elem.addr.017, i64 0, i32 0
  %1 = load i32* %value0, align 4, !tbaa !3
  %value1 = getelementptr inbounds %struct._I2OP* %elem.addr.017, i64 0, i32 1
  %2 = load i32* %value1, align 4, !tbaa !3
  %value2 = getelementptr inbounds %struct._I2OP* %elem.addr.017, i64 0, i32 2
  %3 = load i8** %value2, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i32 %1, i32 %2, i8* %3) #4
  %next = getelementptr inbounds %struct._I2OP* %elem.addr.017, i64 0, i32 3
  %4 = load %struct._I2OP** %next, align 8, !tbaa !0
  %inc = add nsw i32 %i.018, 1
  %cmp2 = icmp eq %struct._I2OP* %4, null
  br i1 %cmp2, label %if.end6, label %while.body

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
