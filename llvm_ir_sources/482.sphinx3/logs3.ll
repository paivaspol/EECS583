; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/logs3.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"-log3table\00", align 1
@USE_LOG3_ADD_TABLE = internal unnamed_addr global i32 1, align 4
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/logs3.c\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"Initializing logbase: %e (add table: %d)\0A\00", align 1
@.str4 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str5 = private unnamed_addr constant [36 x i8] c"Illegal logbase: %e; must be > 1.0\0A\00", align 1
@add_tbl = internal unnamed_addr global i16* null, align 8
@B = internal unnamed_addr global double 0.000000e+00, align 8
@.str6 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"logs3_init() already done\0A\00", align 1
@.str8 = private unnamed_addr constant [40 x i8] c"logs3_init() already done with base %e\0A\00", align 1
@logB = internal unnamed_addr global double 0.000000e+00, align 8
@invlogB = internal unnamed_addr global double 0.000000e+00, align 8
@invlog10B = internal unnamed_addr global double 0.000000e+00, align 8
@.str9 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"Logbase too small: %e; needs int32 addtable[]\0A\00", align 1
@F = internal unnamed_addr global double 0.000000e+00, align 8
@add_tbl_size = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [25 x i8] c"Log-Add table size = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [30 x i8] c"logs3 module not initialized\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @logs3_init(double %base) #0 {
entry:
  %call = tail call i8* @cmd_ln_access(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0)) #4
  %0 = bitcast i8* %call to i32*
  %1 = load i32* %0, align 4, !tbaa !0
  store i32 %1, i32* @USE_LOG3_ADD_TABLE, align 4, !tbaa !0
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 99, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4
  %2 = load i32* @USE_LOG3_ADD_TABLE, align 4, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), double %base, i32 %2) #4
  %cmp = fcmp ugt double %base, 1.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 102, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str5, i64 0, i64 0), double %base) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %3, null
  br i1 %tobool, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load double* @B, align 8, !tbaa !4
  %cmp2 = fcmp oeq double %4, %base
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 106, i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #4
  br label %if.end5

if.else:                                          ; preds = %if.then1
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 108, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  %5 = load double* @B, align 8, !tbaa !4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str8, i64 0, i64 0), double %5) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3, %if.else
  store double %base, double* @B, align 8, !tbaa !4
  %call6 = tail call double @log(double %base) #4
  store double %call6, double* @logB, align 8, !tbaa !4
  %div = fdiv double 1.000000e+00, %call6
  store double %div, double* @invlogB, align 8, !tbaa !4
  %call7 = tail call double @log10(double %base) #4
  %div8 = fdiv double 1.000000e+00, %call7
  store double %div8, double* @invlog10B, align 8, !tbaa !4
  %6 = load double* @invlogB, align 8, !tbaa !4
  %mul = fmul double %6, 0x3FE62E42FEFA39EF
  %add = fadd double %mul, 5.000000e-01
  %conv = fptosi double %add to i32
  %cmp10 = icmp sgt i32 %conv, 65535
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 120, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), double %base) #4
  br label %return

if.end13:                                         ; preds = %if.end5
  %7 = load double* @B, align 8, !tbaa !4
  %div14 = fdiv double 1.000000e+00, %7
  store double %div14, double* @F, align 8, !tbaa !4
  %cmp2176 = icmp eq i32 %conv, 0
  br i1 %cmp2176, label %for.end, label %if.end24

if.end24:                                         ; preds = %if.end13, %if.end24
  %d.078 = phi double [ %mul25, %if.end24 ], [ 1.000000e+00, %if.end13 ]
  %i.077 = phi i32 [ %phitmp, %if.end24 ], [ 1, %if.end13 ]
  %mul25 = fmul double %div14, %d.078
  %phitmp = add i32 %i.077, 1
  %add16 = fadd double %mul25, 1.000000e+00
  %call17 = tail call double @log(double %add16) #4
  %8 = load double* @invlogB, align 8, !tbaa !4
  %mul18 = fmul double %call17, %8
  %add19 = fadd double %mul18, 5.000000e-01
  %conv20 = fptosi double %add19 to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br i1 %cmp21, label %for.end, label %if.end24

for.end:                                          ; preds = %if.end24, %if.end13
  %i.0.lcssa = phi i32 [ 1, %if.end13 ], [ %phitmp, %if.end24 ]
  store i32 %i.0.lcssa, i32* @add_tbl_size, align 4, !tbaa !0
  %conv28 = sext i32 %i.0.lcssa to i64
  %call29 = tail call i8* @__ckd_calloc__(i64 %conv28, i64 2, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 145) #4
  %9 = bitcast i8* %call29 to i16*
  store i16* %9, i16** @add_tbl, align 8, !tbaa !3
  %10 = load double* @invlogB, align 8, !tbaa !4
  %mul3365 = fmul double %10, 0x3FE62E42FEFA39EF
  %add3466 = fadd double %mul3365, 5.000000e-01
  %conv3567 = fptosi double %add3466 to i32
  %conv3668 = trunc i32 %conv3567 to i16
  store i16 %conv3668, i16* %9, align 2, !tbaa !5
  %cmp3769 = icmp eq i32 %conv3567, 0
  br i1 %cmp3769, label %for.end44, label %if.end40

if.end40:                                         ; preds = %for.end, %if.end40
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end40 ], [ 0, %for.end ]
  %d.171 = phi double [ %mul41, %if.end40 ], [ 1.000000e+00, %for.end ]
  %mul41 = fmul double %div14, %d.171
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add31 = fadd double %mul41, 1.000000e+00
  %call32 = tail call double @log(double %add31) #4
  %11 = load double* @invlogB, align 8, !tbaa !4
  %mul33 = fmul double %call32, %11
  %add34 = fadd double %mul33, 5.000000e-01
  %conv35 = fptosi double %add34 to i32
  %conv36 = trunc i32 %conv35 to i16
  %12 = load i16** @add_tbl, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %12, i64 %indvars.iv.next
  store i16 %conv36, i16* %arrayidx, align 2, !tbaa !5
  %cmp37 = icmp eq i32 %conv35, 0
  br i1 %cmp37, label %for.end44, label %if.end40

for.end44:                                        ; preds = %if.end40, %for.end
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 161, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4
  %13 = load i32* @add_tbl_size, align 4, !tbaa !0
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i32 %13) #4
  br label %return

return:                                           ; preds = %for.end44, %if.then12
  %retval.0 = phi i32 [ -1, %if.then12 ], [ 0, %for.end44 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @cmd_ln_access(i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize
declare double @log10(double) #2

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @logs3_add(i32 %logp, i32 %logq) #0 {
entry:
  %cmp = icmp sgt i32 %logp, %logq
  %sub = sub nsw i32 %logp, %logq
  %sub1 = sub nsw i32 %logq, %logp
  %d.0 = select i1 %cmp, i32 %sub, i32 %sub1
  %r.0 = select i1 %cmp, i32 %logp, i32 %logq
  %0 = load i32* @add_tbl_size, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %d.0, %0
  br i1 %cmp2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %entry
  %1 = load i32* @USE_LOG3_ADD_TABLE, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.then3
  %idxprom = sext i32 %d.0 to i64
  %2 = load i16** @add_tbl, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %2, i64 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !5
  %conv = zext i16 %3 to i32
  %add = add nsw i32 %conv, %r.0
  br label %if.end14

if.else5:                                         ; preds = %if.then3
  %4 = load double* @F, align 8, !tbaa !4
  %conv6 = sitofp i32 %d.0 to double
  %call = tail call double @pow(double %4, double %conv6) #4
  %add7 = fadd double %call, 1.000000e+00
  %call8 = tail call double @log(double %add7) #4
  %5 = load double* @invlogB, align 8, !tbaa !4
  %mul = fmul double %call8, %5
  %add9 = fadd double %mul, 5.000000e-01
  %conv10 = sitofp i32 %r.0 to double
  %add11 = fadd double %conv10, %add9
  %conv12 = fptosi double %add11 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.else5, %entry
  %r.1 = phi i32 [ %add, %if.then4 ], [ %conv12, %if.else5 ], [ %r.0, %entry ]
  ret i32 %r.1
}

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @logs3(double %p) #0 {
entry:
  %0 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 200, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp = fcmp ugt double %p, 0.000000e+00
  br i1 %cmp, label %if.end2, label %return

if.end2:                                          ; preds = %if.end
  %call = tail call double @log(double %p) #4
  %1 = load double* @invlogB, align 8, !tbaa !4
  %mul = fmul double %call, %1
  %conv = fptosi double %mul to i32
  br label %return

return:                                           ; preds = %if.end, %if.end2
  %retval.0 = phi i32 [ %conv, %if.end2 ], [ -939524096, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @log_to_logs3(double %logp) #0 {
entry:
  %0 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 216, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = load double* @invlogB, align 8, !tbaa !4
  %mul = fmul double %1, %logp
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize readonly uwtable
define double @log_to_logs3_factor() #3 {
entry:
  %0 = load double* @invlogB, align 8, !tbaa !4
  ret double %0
}

; Function Attrs: nounwind optsize uwtable
define double @logs3_to_log(i32 %logs3p) #0 {
entry:
  %0 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 231, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %conv = sitofp i32 %logs3p to double
  %1 = load double* @logB, align 8, !tbaa !4
  %mul = fmul double %conv, %1
  ret double %mul
}

; Function Attrs: nounwind optsize uwtable
define double @logs3_to_p(i32 %logs3p) #0 {
entry:
  %conv = sitofp i32 %logs3p to double
  %0 = load double* @logB, align 8, !tbaa !4
  %mul = fmul double %conv, %0
  %call = tail call double @exp(double %mul) #4
  ret double %call
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @log10_to_logs3(double %log10p) #0 {
entry:
  %0 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_E__pr_header(i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i64 246, i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) #4
  tail call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str12, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = load double* @invlog10B, align 8, !tbaa !4
  %mul = fmul double %1, %log10p
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define void @logs_free() #0 {
entry:
  %0 = load i16** @add_tbl, align 8, !tbaa !3
  %tobool = icmp eq i16* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i16* %0 to i8*
  tail call void @ckd_free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
