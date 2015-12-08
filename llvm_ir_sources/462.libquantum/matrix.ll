; ModuleID = '../../SPEC/benchspec/CPU2006/462.libquantum/src/matrix.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@quantum_memman.mem = internal unnamed_addr global i64 0, align 8
@quantum_memman.max = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1

; Function Attrs: nounwind optsize uwtable
define i64 @quantum_memman(i64 %change) #0 {
entry:
  %0 = load i64* @quantum_memman.mem, align 8, !tbaa !0
  %add = add nsw i64 %0, %change
  store i64 %add, i64* @quantum_memman.mem, align 8, !tbaa !0
  %1 = load i64* @quantum_memman.max, align 8, !tbaa !0
  %cmp = icmp sgt i64 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %add, i64* @quantum_memman.max, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %add
}

; Function Attrs: nounwind optsize uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
entry:
  %mul = mul nsw i32 %rows, %cols
  %conv = sext i32 %mul to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #4
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str, i64 0, i64 0), i32 %rows, i32 %cols) #4
  tail call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to { float, float }*
  %conv5 = sext i32 %cols to i64
  %mul6 = shl nsw i64 %conv5, 3
  %conv7 = sext i32 %rows to i64
  %mul8 = mul i64 %mul6, %conv7
  %1 = load i64* @quantum_memman.mem, align 8, !tbaa !0
  %add.i = add nsw i64 %1, %mul8
  store i64 %add.i, i64* @quantum_memman.mem, align 8, !tbaa !0
  %2 = load i64* @quantum_memman.max, align 8, !tbaa !0
  %cmp.i = icmp sgt i64 %add.i, %2
  br i1 %cmp.i, label %if.then.i, label %quantum_memman.exit

if.then.i:                                        ; preds = %if.end
  store i64 %add.i, i64* @quantum_memman.max, align 8, !tbaa !0
  br label %quantum_memman.exit

quantum_memman.exit:                              ; preds = %if.end, %if.then.i
  %retval.sroa.0.0.insert.ext = zext i32 %rows to i64
  %retval.sroa.0.4.insert.ext = zext i32 %cols to i64
  %retval.sroa.0.4.insert.shift = shl nuw i64 %retval.sroa.0.4.insert.ext, 32
  %retval.sroa.0.4.insert.insert = or i64 %retval.sroa.0.0.insert.ext, %retval.sroa.0.4.insert.shift
  %.fca.0.insert = insertvalue { i64, { float, float }* } undef, i64 %retval.sroa.0.4.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, { float, float }* } %.fca.0.insert, { float, float }* %0, 1
  ret { i64, { float, float }* } %.fca.1.insert
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* nocapture %m) #0 {
entry:
  %t = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2
  %0 = load { float, float }** %t, align 8, !tbaa !3
  %1 = bitcast { float, float }* %0 to i8*
  tail call void @free(i8* %1) #4
  %cols = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 1
  %2 = load i32* %cols, align 4, !tbaa !4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, -8
  %rows = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 0
  %3 = load i32* %rows, align 4, !tbaa !4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %mul, %conv1
  %4 = load i64* @quantum_memman.mem, align 8, !tbaa !0
  %add.i = add nsw i64 %mul2, %4
  store i64 %add.i, i64* @quantum_memman.mem, align 8, !tbaa !0
  %5 = load i64* @quantum_memman.max, align 8, !tbaa !0
  %cmp.i = icmp sgt i64 %add.i, %5
  br i1 %cmp.i, label %if.then.i, label %quantum_memman.exit

if.then.i:                                        ; preds = %entry
  store i64 %add.i, i64* @quantum_memman.max, align 8, !tbaa !0
  br label %quantum_memman.exit

quantum_memman.exit:                              ; preds = %entry, %if.then.i
  store { float, float }* null, { float, float }** %t, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* nocapture %m.coerce1) #0 {
entry:
  %m.sroa.0.0.extract.trunc = trunc i64 %m.coerce0 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %z.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %inc = add nsw i32 %z.0, 1
  %shl = shl i32 1, %z.0
  %cmp = icmp slt i32 %shl, %m.sroa.0.0.extract.trunc
  br i1 %cmp, label %while.cond, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %cmp246 = icmp sgt i32 %m.sroa.0.0.extract.trunc, 0
  br i1 %cmp246, label %for.cond3.preheader.lr.ph, label %for.end23

for.cond3.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %m.sroa.0.4.extract.shift = lshr i64 %m.coerce0, 32
  %m.sroa.0.4.extract.trunc = trunc i64 %m.sroa.0.4.extract.shift to i32
  %cmp444 = icmp sgt i32 %m.sroa.0.4.extract.trunc, 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end, %for.cond3.preheader.lr.ph
  %indvars.iv49 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next50, %for.end ]
  br i1 %cmp444, label %for.body5.lr.ph, label %for.end

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %mul = mul i64 %indvars.iv49, %m.sroa.0.4.extract.shift
  %sext = shl i64 %mul, 32
  %0 = ashr exact i64 %sext, 32
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next, %for.body5 ]
  %1 = add nsw i64 %indvars.iv, %0
  %arrayidx.realp = getelementptr inbounds { float, float }* %m.coerce1, i64 %1, i32 0
  %arrayidx.real = load float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }* %m.coerce1, i64 %1, i32 1
  %arrayidx.imag = load float* %arrayidx.imagp, align 4
  %conv = fpext float %arrayidx.real to double
  %conv17 = fpext float %arrayidx.imag to double
  %call18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), double %conv, double %conv17) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %m.sroa.0.4.extract.trunc
  br i1 %exitcond, label %for.end, label %for.body5

for.end:                                          ; preds = %for.body5, %for.cond3.preheader
  %putchar43 = tail call i32 @putchar(i32 10) #3
  %indvars.iv.next50 = add i64 %indvars.iv49, 1
  %lftr.wideiv51 = trunc i64 %indvars.iv.next50 to i32
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %m.sroa.0.0.extract.trunc
  br i1 %exitcond52, label %for.end23, label %for.cond3.preheader

for.end23:                                        ; preds = %for.end, %for.cond.preheader
  %putchar = tail call i32 @putchar(i32 10) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
