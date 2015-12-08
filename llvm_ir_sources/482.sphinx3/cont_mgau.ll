; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/cont_mgau.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mgau_model_t = type { i32, i32, i32, %struct.mgau_t*, double, i32, i32, i32 }
%struct.mgau_t = type { i32, float**, float**, float*, i32* }

@considered = global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/cont_mgau.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"Applying variance floor to non-zero variance vectors\0A\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"%d variance values floored\0A\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c".cont.\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c".semi.\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"Feature should be either .semi. or .cont.\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"Precomputing Mahalanobis distance invariants\0A\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"Applying variance floor\0A\00", align 1
@.str10 = private unnamed_addr constant [43 x i8] c"Removing uninitialized Gaussian densities\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str13 = private unnamed_addr constant [53 x i8] c"%d densities removed (%d mixtures removed entirely)\0A\00", align 1
@.str14 = private unnamed_addr constant [35 x i8] c"Reading mixture weights file '%s'\0A\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str20 = private unnamed_addr constant [40 x i8] c"Version mismatch(%s): %s, expecting %s\0A\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"chksum0\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraysize) failed\0A\00", align 1
@.str23 = private unnamed_addr constant [46 x i8] c"#Features streams(%d) != 1 in continuous HMM\0A\00", align 1
@.str24 = private unnamed_addr constant [51 x i8] c"#Features streams(%d) != 4 in semi-continuous HMM\0A\00", align 1
@.str25 = private unnamed_addr constant [116 x i8] c"How can this happen? Someone must have moved this part of the code somewhere! Not my fault! ARCHAN at 20040504 :-)\0A\00", align 1
@.str26 = private unnamed_addr constant [60 x i8] c"%s: #float32s(%d) doesn't match header dimensions: %d x %d\0A\00", align 1
@.str27 = private unnamed_addr constant [66 x i8] c"%s: #Mixture Gaussians(%d) doesn't match mean/var parameters(%d)\0A\00", align 1
@.str28 = private unnamed_addr constant [65 x i8] c"Mixture %d: #Weights(%d) doesn't match #Gaussian components(%d)\0A\00", align 1
@.str29 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraydata) failed\0A\00", align 1
@.str30 = private unnamed_addr constant [31 x i8] c"More data than expected in %s\0A\00", align 1
@.str31 = private unnamed_addr constant [30 x i8] c"Read %d x %d mixture weights\0A\00", align 1
@.str32 = private unnamed_addr constant [36 x i8] c"Reading mixture gaussian file '%s'\0A\00", align 1
@.str33 = private unnamed_addr constant [31 x i8] c"fread(%s) (#codebooks) failed\0A\00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"%s: #Mixture Gaussians (%d) exceeds limit(%d) enforced by MGAUID type\0A\00", align 1
@.str35 = private unnamed_addr constant [30 x i8] c"fread(%s) (#features) failed\0A\00", align 1
@.str36 = private unnamed_addr constant [51 x i8] c"#Features streams(%d) != 1 in semi-continuous HMM\0A\00", align 1
@.str37 = private unnamed_addr constant [38 x i8] c"fread(%s) (#density/codebook) failed\0A\00", align 1
@.str38 = private unnamed_addr constant [36 x i8] c"fread(%s) (feature-lengths) failed\0A\00", align 1
@.str39 = private unnamed_addr constant [34 x i8] c"fread(%s) (total #floats) failed\0A\00", align 1
@.str40 = private unnamed_addr constant [58 x i8] c"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\0A\00", align 1
@.str41 = private unnamed_addr constant [50 x i8] c"Currently S2 semi-continous HMM is not supported\0A\00", align 1
@.str42 = private unnamed_addr constant [47 x i8] c"#Mixtures(%d) doesn't match that of means(%d)\0A\00", align 1
@.str43 = private unnamed_addr constant [49 x i8] c"#Components(%d) doesn't match that of means(%d)\0A\00", align 1
@.str44 = private unnamed_addr constant [52 x i8] c"#Vector length(%d) doesn't match that of means(%d)\0A\00", align 1
@.str45 = private unnamed_addr constant [61 x i8] c"Mixture %d: #Components(%d) doesn't match that of means(%d)\0A\00", align 1
@.str46 = private unnamed_addr constant [32 x i8] c"fread(%s) (densitydata) failed\0A\00", align 1
@.str47 = private unnamed_addr constant [29 x i8] c"%s: More data than expected\0A\00", align 1
@.str48 = private unnamed_addr constant [60 x i8] c"%d mixture Gaussians, %d components, %d streams, veclen %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @mgau_var_nzvec_floor(%struct.mgau_model_t* nocapture %g, double %floor) #0 {
entry:
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 437, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0)) #5
  %veclen = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 2
  %0 = load i32* %veclen, align 4, !tbaa !0
  %n_mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %1 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp54 = icmp sgt i32 %1, 0
  br i1 %cmp54, label %for.cond1.preheader.lr.ph, label %for.end28

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %conv18 = fptrunc double %floor to float
  %.pre = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc26
  %2 = phi i32 [ %1, %for.cond1.preheader.lr.ph ], [ %12, %for.inc26 ]
  %3 = phi %struct.mgau_t* [ %.pre, %for.cond1.preheader.lr.ph ], [ %13, %for.inc26 ]
  %indvars.iv60 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next61, %for.inc26 ]
  %n.055 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %n.1.lcssa, %for.inc26 ]
  %n_comp49 = getelementptr inbounds %struct.mgau_t* %3, i64 %indvars.iv60, i32 0
  %4 = load i32* %n_comp49, align 4, !tbaa !0
  %cmp250 = icmp sgt i32 %4, 0
  br i1 %cmp250, label %for.body3, label %for.inc26

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc23
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc23 ], [ 0, %for.cond1.preheader ]
  %5 = phi %struct.mgau_t* [ %9, %for.inc23 ], [ %3, %for.cond1.preheader ]
  %n.151 = phi i32 [ %n.4, %for.inc23 ], [ %n.055, %for.cond1.preheader ]
  %var8 = getelementptr inbounds %struct.mgau_t* %5, i64 %indvars.iv60, i32 2
  %6 = load float*** %var8, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %6, i64 %indvars.iv58
  %7 = load float** %arrayidx9, align 8, !tbaa !3
  %call = tail call i32 @vector_is_zero(float* %7, i32 %0) #5
  %tobool.not = icmp ne i32 %call, 0
  %cmp1146.not = icmp slt i32 %0, 1
  %brmerge = or i1 %tobool.not, %cmp1146.not
  br i1 %brmerge, label %for.inc23, label %for.body12

for.body12:                                       ; preds = %for.body3, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body3 ]
  %n.248 = phi i32 [ %n.3, %for.inc ], [ %n.151, %for.body3 ]
  %arrayidx14 = getelementptr inbounds float* %7, i64 %indvars.iv
  %8 = load float* %arrayidx14, align 4, !tbaa !4
  %conv = fpext float %8 to double
  %cmp15 = fcmp olt double %conv, %floor
  br i1 %cmp15, label %if.then17, label %for.inc

if.then17:                                        ; preds = %for.body12
  store float %conv18, float* %arrayidx14, align 4, !tbaa !4
  %inc = add nsw i32 %n.248, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body12, %if.then17
  %n.3 = phi i32 [ %inc, %if.then17 ], [ %n.248, %for.body12 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.inc23, label %for.body12

for.inc23:                                        ; preds = %for.body3, %for.inc
  %n.4 = phi i32 [ %n.151, %for.body3 ], [ %n.3, %for.inc ]
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %9 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %n_comp = getelementptr inbounds %struct.mgau_t* %9, i64 %indvars.iv60, i32 0
  %10 = load i32* %n_comp, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv.next59 to i32
  %cmp2 = icmp slt i32 %11, %10
  br i1 %cmp2, label %for.body3, label %for.cond1.for.inc26_crit_edge

for.cond1.for.inc26_crit_edge:                    ; preds = %for.inc23
  %.pre62 = load i32* %n_mgau, align 4, !tbaa !0
  br label %for.inc26

for.inc26:                                        ; preds = %for.cond1.for.inc26_crit_edge, %for.cond1.preheader
  %12 = phi i32 [ %.pre62, %for.cond1.for.inc26_crit_edge ], [ %2, %for.cond1.preheader ]
  %13 = phi %struct.mgau_t* [ %9, %for.cond1.for.inc26_crit_edge ], [ %3, %for.cond1.preheader ]
  %n.1.lcssa = phi i32 [ %n.4, %for.cond1.for.inc26_crit_edge ], [ %n.055, %for.cond1.preheader ]
  %indvars.iv.next61 = add i64 %indvars.iv60, 1
  %14 = trunc i64 %indvars.iv.next61 to i32
  %cmp = icmp slt i32 %14, %12
  br i1 %cmp, label %for.cond1.preheader, label %for.end28

for.end28:                                        ; preds = %for.inc26, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %n.1.lcssa, %for.inc26 ]
  tail call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 457, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  tail call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %n.0.lcssa) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #1

; Function Attrs: optsize
declare i32 @vector_is_zero(float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.mgau_model_t* @mgau_init(i8* %meanfile, i8* %varfile, double %varfloor, i8* %mixwfile, double %mixwfloor, i32 %precomp, i8* nocapture %senmgau) #0 {
entry:
  %argname.i = alloca i8**, align 8
  %argval.i = alloca i8**, align 8
  %eofchk.i = alloca i8, align 1
  %byteswap.i = alloca i32, align 4
  %chksum.i = alloca i32, align 4
  %n.i = alloca i32, align 4
  %n_mgau.i = alloca i32, align 4
  %n_feat.i = alloca i32, align 4
  %n_comp.i = alloca i32, align 4
  %call = call i8* @__ckd_calloc__(i64 1, i64 48, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 509) #5
  %0 = bitcast i8* %call to %struct.mgau_model_t*
  %call1 = call i32 @strcmp(i8* %senmgau, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) #6
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %gau_type = getelementptr inbounds i8* %call, i64 40
  %1 = bitcast i8* %gau_type to i32*
  store i32 10001, i32* %1, align 4, !tbaa !0
  br label %if.end7

if.else:                                          ; preds = %entry
  %call2 = call i32 @strcmp(i8* %senmgau, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %gau_type5 = getelementptr inbounds i8* %call, i64 40
  %2 = bitcast i8* %gau_type5 to i32*
  store i32 10002, i32* %2, align 4, !tbaa !0
  br label %if.end7

if.else6:                                         ; preds = %if.else
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 516, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0)) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.else6, %if.then
  call fastcc void @mgau_file_read(%struct.mgau_model_t* %0, i8* %meanfile, i32 1) #7
  call fastcc void @mgau_file_read(%struct.mgau_model_t* %0, i8* %varfile, i32 2) #7
  %3 = bitcast i8*** %argname.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #4
  %4 = bitcast i8*** %argval.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  call void @llvm.lifetime.start(i64 1, i8* %eofchk.i) #4
  %5 = bitcast i32* %byteswap.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = bitcast i32* %chksum.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  %7 = bitcast i32* %n.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #4
  %8 = bitcast i32* %n_mgau.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #4
  %9 = bitcast i32* %n_feat.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #4
  %10 = bitcast i32* %n_comp.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 269, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([35 x i8]* @.str14, i64 0, i64 0), i8* %mixwfile) #5
  %call.i = call %struct._IO_FILE* @_myfopen(i8* %mixwfile, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 271) #5
  %call1.i = call i32 @bio_readhdr(%struct._IO_FILE* %call.i, i8*** %argname.i, i8*** %argval.i, i32* %byteswap.i) #5
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

if.then.i:                                        ; preds = %if.end7
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 275, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %mixwfile) #5
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then.i, %if.end7
  %11 = load i8*** %argname.i, align 8, !tbaa !3
  %12 = load i8** %11, align 8, !tbaa !3
  %tobool13.i = icmp eq i8* %12, null
  br i1 %tobool13.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc.i
  %13 = phi i8** [ %19, %for.inc.i ], [ %11, %for.cond.preheader.i ]
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %14 = phi i8* [ %20, %for.inc.i ], [ %12, %for.cond.preheader.i ]
  %i.015.i = phi i32 [ %inc.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %chksum_present.014.i = phi i32 [ %chksum_present.1.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %call4.i = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)) #6
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %for.body.i
  %15 = load i8*** %argval.i, align 8, !tbaa !3
  %arrayidx8.i = getelementptr inbounds i8** %15, i64 %indvars.iv28.i
  %16 = load i8** %arrayidx8.i, align 8, !tbaa !3
  %call9.i = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #6
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %for.inc.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 282, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0)) #5
  %17 = load i8*** %argval.i, align 8, !tbaa !3
  %arrayidx13.i = getelementptr inbounds i8** %17, i64 %indvars.iv28.i
  %18 = load i8** %arrayidx13.i, align 8, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0), i8* %mixwfile, i8* %18, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #5
  %.pre37.i = load i8*** %argname.i, align 8, !tbaa !3
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %call17.i = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #6
  %cmp18.i = icmp eq i32 %call17.i, 0
  %.chksum_present.0.i = select i1 %cmp18.i, i32 1, i32 %chksum_present.014.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then11.i, %if.then6.i
  %19 = phi i8** [ %.pre37.i, %if.then11.i ], [ %13, %if.then6.i ], [ %13, %if.else.i ]
  %chksum_present.1.i = phi i32 [ %chksum_present.014.i, %if.then11.i ], [ %chksum_present.014.i, %if.then6.i ], [ %.chksum_present.0.i, %if.else.i ]
  %indvars.iv.next29.i = add i64 %indvars.iv28.i, 1
  %inc.i = add nsw i32 %i.015.i, 1
  %arrayidx.i = getelementptr inbounds i8** %19, i64 %indvars.iv.next29.i
  %20 = load i8** %arrayidx.i, align 8, !tbaa !3
  %tobool.i = icmp eq i8* %20, null
  br i1 %tobool.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %.lcssa12.i = phi i8** [ %11, %for.cond.preheader.i ], [ %19, %for.inc.i ]
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i ]
  %chksum_present.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %chksum_present.1.i, %for.inc.i ]
  %21 = load i8*** %argval.i, align 8, !tbaa !3
  call void @bio_hdrarg_free(i8** %.lcssa12.i, i8** %21) #5
  store i8** null, i8*** %argval.i, align 8, !tbaa !3
  store i8** null, i8*** %argname.i, align 8, !tbaa !3
  store i32 0, i32* %chksum.i, align 4, !tbaa !0
  %22 = load i32* %byteswap.i, align 4, !tbaa !0
  %call22.i = call i32 @bio_fread(i8* %8, i32 4, i32 1, %struct._IO_FILE* %call.i, i32 %22, i32* %chksum.i) #5
  %cmp23.i = icmp eq i32 %call22.i, 1
  br i1 %cmp23.i, label %lor.lhs.false.i, label %if.then32.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %23 = load i32* %byteswap.i, align 4, !tbaa !0
  %call24.i = call i32 @bio_fread(i8* %9, i32 4, i32 1, %struct._IO_FILE* %call.i, i32 %23, i32* %chksum.i) #5
  %cmp25.i = icmp eq i32 %call24.i, 1
  br i1 %cmp25.i, label %lor.lhs.false26.i, label %if.then32.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %24 = load i32* %byteswap.i, align 4, !tbaa !0
  %call27.i = call i32 @bio_fread(i8* %10, i32 4, i32 1, %struct._IO_FILE* %call.i, i32 %24, i32* %chksum.i) #5
  %cmp28.i = icmp eq i32 %call27.i, 1
  br i1 %cmp28.i, label %lor.lhs.false29.i, label %if.then32.i

lor.lhs.false29.i:                                ; preds = %lor.lhs.false26.i
  %25 = load i32* %byteswap.i, align 4, !tbaa !0
  %call30.i = call i32 @bio_fread(i8* %7, i32 4, i32 1, %struct._IO_FILE* %call.i, i32 %25, i32* %chksum.i) #5
  %cmp31.i = icmp eq i32 %call30.i, 1
  br i1 %cmp31.i, label %if.end33.i, label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false29.i, %lor.lhs.false26.i, %lor.lhs.false.i, %for.end.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 298, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), i8* %mixwfile) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %lor.lhs.false29.i
  %gau_type.i = getelementptr inbounds i8* %call, i64 40
  %26 = bitcast i8* %gau_type.i to i32*
  %27 = load i32* %26, align 4, !tbaa !0
  switch i32 %27, label %if.else46.i [
    i32 10001, label %if.then35.i
    i32 10002, label %if.then42.i
  ]

if.then35.i:                                      ; preds = %if.end33.i
  %28 = load i32* %n_feat.i, align 4, !tbaa !0
  %cmp36.i = icmp eq i32 %28, 1
  br i1 %cmp36.i, label %if.end48.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.then35.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 302, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %29 = load i32* %n_feat.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str23, i64 0, i64 0), i32 %29) #5
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.end33.i
  %30 = load i32* %n_feat.i, align 4, !tbaa !0
  %cmp43.i = icmp eq i32 %30, 4
  br i1 %cmp43.i, label %if.end48.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then42.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 305, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %31 = load i32* %n_feat.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([51 x i8]* @.str24, i64 0, i64 0), i32 %31) #5
  br label %if.end48.i

if.else46.i:                                      ; preds = %if.end33.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 307, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([116 x i8]* @.str25, i64 0, i64 0)) #5
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else46.i, %if.then44.i, %if.then42.i, %if.then37.i, %if.then35.i
  %32 = load i32* %n.i, align 4, !tbaa !0
  %33 = load i32* %n_mgau.i, align 4, !tbaa !0
  %34 = load i32* %n_comp.i, align 4, !tbaa !0
  %mul.i = mul nsw i32 %34, %33
  %cmp49.i = icmp eq i32 %32, %mul.i
  br i1 %cmp49.i, label %if.end51.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 311, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %35 = load i32* %n_mgau.i, align 4, !tbaa !0
  %36 = load i32* %n_comp.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([60 x i8]* @.str26, i64 0, i64 0), i8* %mixwfile, i32 %i.0.lcssa.i, i32 %35, i32 %36) #5
  %.pre.i = load i32* %n_mgau.i, align 4, !tbaa !0
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end48.i
  %37 = phi i32 [ %33, %if.end48.i ], [ %.pre.i, %if.then50.i ]
  %n_mgau52.i = bitcast i8* %call to i32*
  %38 = load i32* %n_mgau52.i, align 4, !tbaa !0
  %cmp53.i = icmp eq i32 %37, %38
  br i1 %cmp53.i, label %if.end56.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end51.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 315, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %39 = load i32* %n_mgau.i, align 4, !tbaa !0
  %40 = load i32* %n_mgau52.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([66 x i8]* @.str27, i64 0, i64 0), i32 %39, i32 %40) #5
  %.pre30.i = load i32* %n_mgau.i, align 4, !tbaa !0
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end51.i, %if.then54.i
  %41 = phi i32 [ %.pre30.i, %if.then54.i ], [ %37, %if.end51.i ]
  %42 = load i32* %n_comp.i, align 4, !tbaa !0
  %mul57.i = mul nsw i32 %42, %41
  %conv.i = sext i32 %mul57.i to i64
  %call58.i = call i8* @__ckd_calloc__(i64 %conv.i, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 318) #5
  %43 = load i32* %n_mgau.i, align 4, !tbaa !0
  %cmp609.i = icmp sgt i32 %43, 0
  %44 = load i32* %n_comp.i, align 4, !tbaa !0
  br i1 %cmp609.i, label %for.body62.lr.ph.i, label %for.end83.i

for.body62.lr.ph.i:                               ; preds = %if.end56.i
  %45 = bitcast i8* %call58.i to i32*
  %mgau.i = getelementptr inbounds i8* %call, i64 16
  %46 = bitcast i8* %mgau.i to %struct.mgau_t**
  %.pre33.i = load %struct.mgau_t** %46, align 8, !tbaa !3
  br label %for.body62.i

for.body62.i:                                     ; preds = %if.end73.i, %for.body62.lr.ph.i
  %47 = phi i32 [ %43, %for.body62.lr.ph.i ], [ %56, %if.end73.i ]
  %48 = phi %struct.mgau_t* [ %.pre33.i, %for.body62.lr.ph.i ], [ %58, %if.end73.i ]
  %indvars.iv25.i = phi i64 [ 0, %for.body62.lr.ph.i ], [ %indvars.iv.next26.i, %if.end73.i ]
  %49 = phi i32 [ %44, %for.body62.lr.ph.i ], [ %55, %if.end73.i ]
  %buf.010.i = phi i32* [ %45, %for.body62.lr.ph.i ], [ %add.ptr.i, %if.end73.i ]
  %n_comp65.i = getelementptr inbounds %struct.mgau_t* %48, i64 %indvars.iv25.i, i32 0
  %50 = load i32* %n_comp65.i, align 4, !tbaa !0
  %cmp66.i = icmp eq i32 %49, %50
  br i1 %cmp66.i, label %if.end73.i, label %if.then68.i

if.then68.i:                                      ; preds = %for.body62.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 321, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %51 = load i32* %n_comp.i, align 4, !tbaa !0
  %52 = load %struct.mgau_t** %46, align 8, !tbaa !3
  %n_comp72.i = getelementptr inbounds %struct.mgau_t* %52, i64 %indvars.iv25.i, i32 0
  %53 = load i32* %n_comp72.i, align 4, !tbaa !0
  %54 = trunc i64 %indvars.iv25.i to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([65 x i8]* @.str28, i64 0, i64 0), i32 %54, i32 %51, i32 %53) #5
  %.pre34.i = load %struct.mgau_t** %46, align 8, !tbaa !3
  %.pre35.i = load i32* %n_mgau.i, align 4, !tbaa !0
  %.pre36.i = load i32* %n_comp.i, align 4, !tbaa !0
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then68.i, %for.body62.i
  %55 = phi i32 [ %49, %for.body62.i ], [ %.pre36.i, %if.then68.i ]
  %56 = phi i32 [ %47, %for.body62.i ], [ %.pre35.i, %if.then68.i ]
  %57 = phi %struct.mgau_t* [ %48, %for.body62.i ], [ %.pre34.i, %if.then68.i ]
  %mixw.i = getelementptr inbounds %struct.mgau_t* %57, i64 %indvars.iv25.i, i32 4
  store i32* %buf.010.i, i32** %mixw.i, align 8, !tbaa !3
  %58 = load %struct.mgau_t** %46, align 8, !tbaa !3
  %n_comp80.i = getelementptr inbounds %struct.mgau_t* %58, i64 %indvars.iv25.i, i32 0
  %59 = load i32* %n_comp80.i, align 4, !tbaa !0
  %idx.ext.i = sext i32 %59 to i64
  %add.ptr.i = getelementptr inbounds i32* %buf.010.i, i64 %idx.ext.i
  %indvars.iv.next26.i = add i64 %indvars.iv25.i, 1
  %60 = trunc i64 %indvars.iv.next26.i to i32
  %cmp60.i = icmp slt i32 %60, %56
  br i1 %cmp60.i, label %for.body62.i, label %for.end83.i

for.end83.i:                                      ; preds = %if.end73.i, %if.end56.i
  %.lcssa.i = phi i32 [ %44, %if.end56.i ], [ %55, %if.end73.i ]
  %conv84.i = sext i32 %.lcssa.i to i64
  %call85.i = call i8* @__ckd_calloc__(i64 %conv84.i, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 329) #5
  %61 = bitcast i8* %call85.i to float*
  %62 = load i32* %n_mgau.i, align 4, !tbaa !0
  %cmp876.i = icmp sgt i32 %62, 0
  br i1 %cmp876.i, label %for.body89.lr.ph.i, label %for.end139.i

for.body89.lr.ph.i:                               ; preds = %for.end83.i
  %mgau129.i = getelementptr inbounds i8* %call, i64 16
  %63 = bitcast i8* %mgau129.i to %struct.mgau_t**
  %.pre31.i = load i32* %n_comp.i, align 4, !tbaa !0
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.inc137.i, %for.body89.lr.ph.i
  %64 = phi i32 [ %.pre31.i, %for.body89.lr.ph.i ], [ %80, %for.inc137.i ]
  %indvars.iv22.i = phi i64 [ 0, %for.body89.lr.ph.i ], [ %indvars.iv.next23.i, %for.inc137.i ]
  %65 = load i32* %byteswap.i, align 4, !tbaa !0
  %call90.i = call i32 @bio_fread(i8* %call85.i, i32 4, i32 %64, %struct._IO_FILE* %call.i, i32 %65, i32* %chksum.i) #5
  %66 = load i32* %n_comp.i, align 4, !tbaa !0
  %cmp91.i = icmp eq i32 %call90.i, %66
  br i1 %cmp91.i, label %if.end94.i, label %if.then93.i

if.then93.i:                                      ; preds = %for.body89.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 335, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str29, i64 0, i64 0), i8* %mixwfile) #5
  %.pre32.i = load i32* %n_comp.i, align 4, !tbaa !0
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then93.i, %for.body89.i
  %67 = phi i32 [ %call90.i, %for.body89.i ], [ %.pre32.i, %if.then93.i ]
  %call95.i = call i32 @vector_is_zero(float* %61, i32 %67) #5
  %tobool96.i = icmp eq i32 %call95.i, 0
  %68 = load i32* %n_comp.i, align 4, !tbaa !0
  br i1 %tobool96.i, label %if.else112.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.end94.i
  %cmp1001.i = icmp sgt i32 %68, 0
  br i1 %cmp1001.i, label %for.body102.lr.ph.i, label %for.inc137.i

for.body102.lr.ph.i:                              ; preds = %if.then97.i
  %69 = load %struct.mgau_t** %63, align 8, !tbaa !3
  %mixw107.i = getelementptr inbounds %struct.mgau_t* %69, i64 %indvars.iv22.i, i32 4
  %70 = load i32** %mixw107.i, align 8, !tbaa !3
  br label %for.body102.i

for.body102.i:                                    ; preds = %for.body102.i, %for.body102.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body102.lr.ph.i ], [ %indvars.iv.next.i, %for.body102.i ]
  %arrayidx108.i = getelementptr inbounds i32* %70, i64 %indvars.iv.i
  store i32 -939524096, i32* %arrayidx108.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %71 = load i32* %n_comp.i, align 4, !tbaa !0
  %72 = trunc i64 %indvars.iv.next.i to i32
  %cmp100.i = icmp slt i32 %72, %71
  br i1 %cmp100.i, label %for.body102.i, label %for.inc137.i

if.else112.i:                                     ; preds = %if.end94.i
  call void @vector_nz_floor(float* %61, i32 %68, double %mixwfloor) #5
  %73 = load i32* %n_comp.i, align 4, !tbaa !0
  %call113.i = call double @vector_sum_norm(float* %61, i32 %73) #5
  %74 = load i32* %n_comp.i, align 4, !tbaa !0
  %cmp1154.i = icmp sgt i32 %74, 0
  br i1 %cmp1154.i, label %for.body117.i, label %for.inc137.i

for.body117.i:                                    ; preds = %if.else112.i, %cond.end.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %cond.end.i ], [ 0, %if.else112.i ]
  %arrayidx119.i = getelementptr inbounds float* %61, i64 %indvars.iv20.i
  %75 = load float* %arrayidx119.i, align 4, !tbaa !4
  %cmp121.i = fcmp une float %75, 0.000000e+00
  br i1 %cmp121.i, label %cond.true.i, label %cond.end.i

cond.true.i:                                      ; preds = %for.body117.i
  %conv120.i = fpext float %75 to double
  %call126.i = call i32 @logs3(double %conv120.i) #5
  br label %cond.end.i

cond.end.i:                                       ; preds = %for.body117.i, %cond.true.i
  %cond.i = phi i32 [ %call126.i, %cond.true.i ], [ -939524096, %for.body117.i ]
  %76 = load %struct.mgau_t** %63, align 8, !tbaa !3
  %mixw131.i = getelementptr inbounds %struct.mgau_t* %76, i64 %indvars.iv22.i, i32 4
  %77 = load i32** %mixw131.i, align 8, !tbaa !3
  %arrayidx132.i = getelementptr inbounds i32* %77, i64 %indvars.iv20.i
  store i32 %cond.i, i32* %arrayidx132.i, align 4, !tbaa !0
  %indvars.iv.next21.i = add i64 %indvars.iv20.i, 1
  %78 = load i32* %n_comp.i, align 4, !tbaa !0
  %79 = trunc i64 %indvars.iv.next21.i to i32
  %cmp115.i = icmp slt i32 %79, %78
  br i1 %cmp115.i, label %for.body117.i, label %for.inc137.i

for.inc137.i:                                     ; preds = %cond.end.i, %for.body102.i, %if.else112.i, %if.then97.i
  %80 = phi i32 [ %68, %if.then97.i ], [ %74, %if.else112.i ], [ %71, %for.body102.i ], [ %78, %cond.end.i ]
  %indvars.iv.next23.i = add i64 %indvars.iv22.i, 1
  %81 = load i32* %n_mgau.i, align 4, !tbaa !0
  %82 = trunc i64 %indvars.iv.next23.i to i32
  %cmp87.i = icmp slt i32 %82, %81
  br i1 %cmp87.i, label %for.body89.i, label %for.end139.i

for.end139.i:                                     ; preds = %for.inc137.i, %for.end83.i
  call void @ckd_free(i8* %call85.i) #5
  %tobool140.i = icmp eq i32 %chksum_present.0.lcssa.i, 0
  br i1 %tobool140.i, label %if.end142.i, label %if.then141.i

if.then141.i:                                     ; preds = %for.end139.i
  %83 = load i32* %byteswap.i, align 4, !tbaa !0
  %84 = load i32* %chksum.i, align 4, !tbaa !0
  call void @bio_verify_chksum(%struct._IO_FILE* %call.i, i32 %83, i32 %84) #5
  br label %if.end142.i

if.end142.i:                                      ; preds = %if.then141.i, %for.end139.i
  %call143.i = call i64 @fread(i8* %eofchk.i, i64 1, i64 1, %struct._IO_FILE* %call.i) #5
  %cmp144.i = icmp eq i64 %call143.i, 1
  br i1 %cmp144.i, label %if.then146.i, label %mgau_mixw_read.exit

if.then146.i:                                     ; preds = %if.end142.i
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 358, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str30, i64 0, i64 0), i8* %mixwfile) #5
  br label %mgau_mixw_read.exit

mgau_mixw_read.exit:                              ; preds = %if.end142.i, %if.then146.i
  %call148.i = call i32 @fclose(%struct._IO_FILE* %call.i) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 362, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  %85 = load i32* %n_mgau.i, align 4, !tbaa !0
  %86 = load i32* %n_comp.i, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([30 x i8]* @.str31, i64 0, i64 0), i32 %85, i32 %86) #5
  call void @llvm.lifetime.end(i64 8, i8* %3) #4
  call void @llvm.lifetime.end(i64 8, i8* %4) #4
  call void @llvm.lifetime.end(i64 1, i8* %eofchk.i) #4
  call void @llvm.lifetime.end(i64 4, i8* %5) #4
  call void @llvm.lifetime.end(i64 4, i8* %6) #4
  call void @llvm.lifetime.end(i64 4, i8* %7) #4
  call void @llvm.lifetime.end(i64 4, i8* %8) #4
  call void @llvm.lifetime.end(i64 4, i8* %9) #4
  call void @llvm.lifetime.end(i64 4, i8* %10) #4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 378, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0)) #5
  %87 = load i32* %n_mgau52.i, align 4, !tbaa !0
  %cmp123.i = icmp sgt i32 %87, 0
  br i1 %cmp123.i, label %for.cond1.preheader.lr.ph.i, label %mgau_uninit_compact.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %mgau_mixw_read.exit
  %mgau.i30 = getelementptr inbounds i8* %call, i64 16
  %88 = bitcast i8* %mgau.i30 to %struct.mgau_t**
  %veclen.i = getelementptr inbounds i8* %call, i64 8
  %89 = bitcast i8* %veclen.i to i32*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc62.i, %for.cond1.preheader.lr.ph.i
  %indvars.iv130.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i ], [ %indvars.iv.next131.i, %for.inc62.i ]
  %nm.0126.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %nm.1.i, %for.inc62.i ]
  %n.0125.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %n.1.lcssa133.i, %for.inc62.i ]
  %90 = load %struct.mgau_t** %88, align 8, !tbaa !3
  %n_comp116.i = getelementptr inbounds %struct.mgau_t* %90, i64 %indvars.iv130.i, i32 0
  %91 = load i32* %n_comp116.i, align 4, !tbaa !0
  %cmp2117.i = icmp sgt i32 %91, 0
  br i1 %cmp2117.i, label %for.body3.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.cond1.preheader.i
  store i32 0, i32* %n_comp116.i, align 4, !tbaa !0
  br label %if.then58.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.inc.i43
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i41, %for.inc.i43 ], [ 0, %for.cond1.preheader.i ]
  %92 = phi %struct.mgau_t* [ %114, %for.inc.i43 ], [ %90, %for.cond1.preheader.i ]
  %n.1120.i = phi i32 [ %n.2.i, %for.inc.i43 ], [ %n.0125.i, %for.cond1.preheader.i ]
  %c2.0119.i = phi i32 [ %c2.1.i, %for.inc.i43 ], [ 0, %for.cond1.preheader.i ]
  %var.i = getelementptr inbounds %struct.mgau_t* %92, i64 %indvars.iv130.i, i32 2
  %93 = load float*** %var.i, align 8, !tbaa !3
  %arrayidx8.i32 = getelementptr inbounds float** %93, i64 %indvars.iv.i31
  %94 = load float** %arrayidx8.i32, align 8, !tbaa !3
  %95 = load i32* %89, align 4, !tbaa !0
  %call.i33 = call i32 @vector_is_zero(float* %94, i32 %95) #5
  %tobool.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.i34, label %if.then.i35, label %if.else.i40

if.then.i35:                                      ; preds = %for.body3.i
  %96 = trunc i64 %indvars.iv.i31 to i32
  %cmp9.i = icmp eq i32 %c2.0119.i, %96
  br i1 %cmp9.i, label %if.end.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i35
  %idxprom11.i = sext i32 %c2.0119.i to i64
  %97 = load %struct.mgau_t** %88, align 8, !tbaa !3
  %mean.i = getelementptr inbounds %struct.mgau_t* %97, i64 %indvars.iv130.i, i32 1
  %98 = load float*** %mean.i, align 8, !tbaa !3
  %arrayidx15.i = getelementptr inbounds float** %98, i64 %idxprom11.i
  %99 = load float** %arrayidx15.i, align 8, !tbaa !3
  %100 = bitcast float* %99 to i8*
  %arrayidx21.i = getelementptr inbounds float** %98, i64 %indvars.iv.i31
  %101 = load float** %arrayidx21.i, align 8, !tbaa !3
  %102 = bitcast float* %101 to i8*
  %103 = load i32* %89, align 4, !tbaa !0
  %conv.i36 = sext i32 %103 to i64
  %mul.i37 = shl nsw i64 %conv.i36, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %102, i64 %mul.i37, i32 4, i1 false) #4
  %104 = load %struct.mgau_t** %88, align 8, !tbaa !3
  %var27.i = getelementptr inbounds %struct.mgau_t* %104, i64 %indvars.iv130.i, i32 2
  %105 = load float*** %var27.i, align 8, !tbaa !3
  %arrayidx28.i = getelementptr inbounds float** %105, i64 %idxprom11.i
  %106 = load float** %arrayidx28.i, align 8, !tbaa !3
  %107 = bitcast float* %106 to i8*
  %arrayidx34.i = getelementptr inbounds float** %105, i64 %indvars.iv.i31
  %108 = load float** %arrayidx34.i, align 8, !tbaa !3
  %109 = bitcast float* %108 to i8*
  %110 = load i32* %89, align 4, !tbaa !0
  %conv36.i = sext i32 %110 to i64
  %mul37.i = shl nsw i64 %conv36.i, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %109, i64 %mul37.i, i32 4, i1 false) #4
  %111 = load %struct.mgau_t** %88, align 8, !tbaa !3
  %mixw.i38 = getelementptr inbounds %struct.mgau_t* %111, i64 %indvars.iv130.i, i32 4
  %112 = load i32** %mixw.i38, align 8, !tbaa !3
  %arrayidx42.i = getelementptr inbounds i32* %112, i64 %indvars.iv.i31
  %113 = load i32* %arrayidx42.i, align 4, !tbaa !0
  %arrayidx48.i = getelementptr inbounds i32* %112, i64 %idxprom11.i
  store i32 %113, i32* %arrayidx48.i, align 4, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then.i35
  %inc.i39 = add nsw i32 %c2.0119.i, 1
  br label %for.inc.i43

if.else.i40:                                      ; preds = %for.body3.i
  %inc49.i = add nsw i32 %n.1120.i, 1
  br label %for.inc.i43

for.inc.i43:                                      ; preds = %if.else.i40, %if.end.i
  %c2.1.i = phi i32 [ %c2.0119.i, %if.else.i40 ], [ %inc.i39, %if.end.i ]
  %n.2.i = phi i32 [ %inc49.i, %if.else.i40 ], [ %n.1120.i, %if.end.i ]
  %indvars.iv.next.i41 = add i64 %indvars.iv.i31, 1
  %114 = load %struct.mgau_t** %88, align 8, !tbaa !3
  %n_comp.i42 = getelementptr inbounds %struct.mgau_t* %114, i64 %indvars.iv130.i, i32 0
  %115 = load i32* %n_comp.i42, align 4, !tbaa !0
  %116 = trunc i64 %indvars.iv.next.i41 to i32
  %cmp2.i = icmp slt i32 %116, %115
  br i1 %cmp2.i, label %for.body3.i, label %for.end.i44

for.end.i44:                                      ; preds = %for.inc.i43
  store i32 %c2.1.i, i32* %n_comp.i42, align 4, !tbaa !0
  %cmp56.i = icmp eq i32 %c2.1.i, 0
  br i1 %cmp56.i, label %if.then58.i, label %for.inc62.i

if.then58.i:                                      ; preds = %for.end.i44, %for.end.thread.i
  %n.1.lcssa134.i = phi i32 [ %n.0125.i, %for.end.thread.i ], [ %n.2.i, %for.end.i44 ]
  %117 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %118 = trunc i64 %indvars.iv130.i to i32
  %call59.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %118) #5
  %inc60.i = add nsw i32 %nm.0126.i, 1
  br label %for.inc62.i

for.inc62.i:                                      ; preds = %if.then58.i, %for.end.i44
  %n.1.lcssa133.i = phi i32 [ %n.1.lcssa134.i, %if.then58.i ], [ %n.2.i, %for.end.i44 ]
  %nm.1.i = phi i32 [ %inc60.i, %if.then58.i ], [ %nm.0126.i, %for.end.i44 ]
  %indvars.iv.next131.i = add i64 %indvars.iv130.i, 1
  %119 = load i32* %n_mgau52.i, align 4, !tbaa !0
  %120 = trunc i64 %indvars.iv.next131.i to i32
  %cmp.i45 = icmp slt i32 %120, %119
  br i1 %cmp.i45, label %for.cond1.preheader.i, label %for.end64.i

for.end64.i:                                      ; preds = %for.inc62.i
  %cmp65.i = icmp sgt i32 %nm.1.i, 0
  br i1 %cmp65.i, label %if.then67.i, label %lor.lhs.false.critedge.i

if.then67.i:                                      ; preds = %for.end64.i
  %121 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %121) #4
  br label %if.then74.i

lor.lhs.false.critedge.i:                         ; preds = %for.end64.i
  %cmp72.old.i = icmp sgt i32 %n.1.lcssa133.i, 0
  br i1 %cmp72.old.i, label %if.then74.i, label %mgau_uninit_compact.exit

if.then74.i:                                      ; preds = %lor.lhs.false.critedge.i, %if.then67.i
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 408, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), i32 %n.1.lcssa133.i, i32 %nm.1.i) #5
  br label %mgau_uninit_compact.exit

mgau_uninit_compact.exit:                         ; preds = %mgau_mixw_read.exit, %lor.lhs.false.critedge.i, %if.then74.i
  %cmp11 = fcmp ogt double %varfloor, 0.000000e+00
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %mgau_uninit_compact.exit
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 416, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #5
  %122 = load i32* %n_mgau52.i, align 4, !tbaa !0
  %cmp56.i47 = icmp sgt i32 %122, 0
  br i1 %cmp56.i47, label %for.cond1.preheader.lr.ph.i50, label %mgau_var_floor.exit

for.cond1.preheader.lr.ph.i50:                    ; preds = %if.then12
  %mgau.i48 = getelementptr inbounds i8* %call, i64 16
  %123 = bitcast i8* %mgau.i48 to %struct.mgau_t**
  %124 = load %struct.mgau_t** %123, align 8, !tbaa !3
  %veclen.i49 = getelementptr inbounds i8* %call, i64 8
  %125 = bitcast i8* %veclen.i49 to i32*
  %conv16.i = fptrunc double %varfloor to float
  br label %for.cond1.preheader.i51

for.cond1.preheader.i51:                          ; preds = %for.inc29.i, %for.cond1.preheader.lr.ph.i50
  %indvars.iv62.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i50 ], [ %indvars.iv.next63.i, %for.inc29.i ]
  %n.058.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i50 ], [ %n.1.lcssa.i, %for.inc29.i ]
  %n_comp51.i = getelementptr inbounds %struct.mgau_t* %124, i64 %indvars.iv62.i, i32 0
  %126 = load i32* %n_comp51.i, align 4, !tbaa !0
  %cmp252.i = icmp sgt i32 %126, 0
  br i1 %cmp252.i, label %for.cond4.preheader.lr.ph.i, label %for.inc29.i

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i51
  %127 = load i32* %125, align 4, !tbaa !0
  %cmp548.i = icmp sgt i32 %127, 0
  %var.i52 = getelementptr inbounds %struct.mgau_t* %124, i64 %indvars.iv62.i, i32 2
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc26.i, %for.cond4.preheader.lr.ph.i
  %indvars.iv60.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next61.i, %for.inc26.i ]
  %n.154.i = phi i32 [ %n.058.i, %for.cond4.preheader.lr.ph.i ], [ %n.2.lcssa.i, %for.inc26.i ]
  br i1 %cmp548.i, label %for.body6.lr.ph.i, label %for.inc26.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %128 = load float*** %var.i52, align 8, !tbaa !3
  %arrayidx12.i = getelementptr inbounds float** %128, i64 %indvars.iv60.i
  %129 = load float** %arrayidx12.i, align 8, !tbaa !3
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i60, %for.body6.lr.ph.i
  %indvars.iv.i53 = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i58, %for.inc.i60 ]
  %n.250.i = phi i32 [ %n.154.i, %for.body6.lr.ph.i ], [ %n.3.i, %for.inc.i60 ]
  %arrayidx13.i54 = getelementptr inbounds float* %129, i64 %indvars.iv.i53
  %130 = load float* %arrayidx13.i54, align 4, !tbaa !4
  %conv.i55 = fpext float %130 to double
  %cmp14.i = fcmp olt double %conv.i55, %varfloor
  br i1 %cmp14.i, label %if.then.i57, label %for.inc.i60

if.then.i57:                                      ; preds = %for.body6.i
  store float %conv16.i, float* %arrayidx13.i54, align 4, !tbaa !4
  %inc.i56 = add nsw i32 %n.250.i, 1
  br label %for.inc.i60

for.inc.i60:                                      ; preds = %if.then.i57, %for.body6.i
  %n.3.i = phi i32 [ %inc.i56, %if.then.i57 ], [ %n.250.i, %for.body6.i ]
  %indvars.iv.next.i58 = add i64 %indvars.iv.i53, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i58 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %127
  br i1 %exitcond, label %for.inc26.i, label %for.body6.i

for.inc26.i:                                      ; preds = %for.inc.i60, %for.cond4.preheader.i
  %n.2.lcssa.i = phi i32 [ %n.154.i, %for.cond4.preheader.i ], [ %n.3.i, %for.inc.i60 ]
  %indvars.iv.next61.i = add i64 %indvars.iv60.i, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv.next61.i to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %126
  br i1 %exitcond95, label %for.inc29.i, label %for.cond4.preheader.i

for.inc29.i:                                      ; preds = %for.inc26.i, %for.cond1.preheader.i51
  %n.1.lcssa.i = phi i32 [ %n.058.i, %for.cond1.preheader.i51 ], [ %n.2.lcssa.i, %for.inc26.i ]
  %indvars.iv.next63.i = add i64 %indvars.iv62.i, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next63.i to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %122
  br i1 %exitcond97, label %mgau_var_floor.exit, label %for.cond1.preheader.i51

mgau_var_floor.exit:                              ; preds = %for.inc29.i, %if.then12
  %n.0.lcssa.i = phi i32 [ 0, %if.then12 ], [ %n.1.lcssa.i, %for.inc29.i ]
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 428, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %n.0.lcssa.i) #5
  br label %if.end13

if.end13:                                         ; preds = %mgau_var_floor.exit, %mgau_uninit_compact.exit
  %tobool = icmp eq i32 %precomp, 0
  br i1 %tobool, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end13
  %call.i63 = call double @log_to_logs3_factor() #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 474, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0)) #5
  %131 = load i32* %n_mgau52.i, align 4, !tbaa !0
  %cmp8.i = icmp sgt i32 %131, 0
  br i1 %cmp8.i, label %for.cond1.preheader.lr.ph.i68, label %if.end16

for.cond1.preheader.lr.ph.i68:                    ; preds = %if.then14
  %mgau.i65 = getelementptr inbounds i8* %call, i64 16
  %132 = bitcast i8* %mgau.i65 to %struct.mgau_t**
  %veclen.i66 = getelementptr inbounds i8* %call, i64 8
  %133 = bitcast i8* %veclen.i66 to i32*
  %.pre.i67 = load %struct.mgau_t** %132, align 8, !tbaa !3
  br label %for.cond1.preheader.i69

for.cond1.preheader.i69:                          ; preds = %for.inc49.i, %for.cond1.preheader.lr.ph.i68
  %134 = phi i32 [ %131, %for.cond1.preheader.lr.ph.i68 ], [ %152, %for.inc49.i ]
  %135 = phi %struct.mgau_t* [ %.pre.i67, %for.cond1.preheader.lr.ph.i68 ], [ %153, %for.inc49.i ]
  %indvars.iv13.i = phi i64 [ 0, %for.cond1.preheader.lr.ph.i68 ], [ %indvars.iv.next14.i, %for.inc49.i ]
  %n_comp5.i = getelementptr inbounds %struct.mgau_t* %135, i64 %indvars.iv13.i, i32 0
  %136 = load i32* %n_comp5.i, align 4, !tbaa !0
  %cmp26.i = icmp sgt i32 %136, 0
  br i1 %cmp26.i, label %for.cond4.preheader.lr.ph.i70, label %for.inc49.i

for.cond4.preheader.lr.ph.i70:                    ; preds = %for.cond1.preheader.i69
  %.pre16.i = load i32* %133, align 4, !tbaa !0
  br label %for.cond4.preheader.i71

for.cond4.preheader.i71:                          ; preds = %for.end.i83, %for.cond4.preheader.lr.ph.i70
  %137 = phi %struct.mgau_t* [ %135, %for.cond4.preheader.lr.ph.i70 ], [ %147, %for.end.i83 ]
  %138 = phi i32 [ %.pre16.i, %for.cond4.preheader.lr.ph.i70 ], [ %148, %for.end.i83 ]
  %indvars.iv11.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i70 ], [ %indvars.iv.next12.i, %for.end.i83 ]
  %cmp51.i = icmp sgt i32 %138, 0
  br i1 %cmp51.i, label %for.body6.lr.ph.i72, label %for.end.i83

for.body6.lr.ph.i72:                              ; preds = %for.cond4.preheader.i71
  %var.phi.trans.insert.i = getelementptr inbounds %struct.mgau_t* %137, i64 %indvars.iv13.i, i32 2
  %.pre17.i = load float*** %var.phi.trans.insert.i, align 8, !tbaa !3
  %arrayidx12.phi.trans.insert.i = getelementptr inbounds float** %.pre17.i, i64 %indvars.iv11.i
  %.pre18.i = load float** %arrayidx12.phi.trans.insert.i, align 8, !tbaa !3
  br label %for.body6.i80

for.body6.i80:                                    ; preds = %for.body6.i80, %for.body6.lr.ph.i72
  %139 = phi float* [ %.pre18.i, %for.body6.lr.ph.i72 ], [ %143, %for.body6.i80 ]
  %indvars.iv.i73 = phi i64 [ 0, %for.body6.lr.ph.i72 ], [ %indvars.iv.next.i78, %for.body6.i80 ]
  %lrd.03.i = phi double [ 0.000000e+00, %for.body6.lr.ph.i72 ], [ %add.i, %for.body6.i80 ]
  %arrayidx13.i74 = getelementptr inbounds float* %139, i64 %indvars.iv.i73
  %140 = load float* %arrayidx13.i74, align 4, !tbaa !4
  %conv.i75 = fpext float %140 to double
  %call14.i = call double @log(double %conv.i75) #5
  %add.i = fadd double %lrd.03.i, %call14.i
  %141 = load %struct.mgau_t** %132, align 8, !tbaa !3
  %var20.i = getelementptr inbounds %struct.mgau_t* %141, i64 %indvars.iv13.i, i32 2
  %142 = load float*** %var20.i, align 8, !tbaa !3
  %arrayidx21.i76 = getelementptr inbounds float** %142, i64 %indvars.iv11.i
  %143 = load float** %arrayidx21.i76, align 8, !tbaa !3
  %arrayidx22.i = getelementptr inbounds float* %143, i64 %indvars.iv.i73
  %144 = load float* %arrayidx22.i, align 4, !tbaa !4
  %conv23.i = fpext float %144 to double
  %mul.i77 = fmul double %conv23.i, 2.000000e+00
  %div.i = fdiv double 1.000000e+00, %mul.i77
  %conv24.i = fptrunc double %div.i to float
  store float %conv24.i, float* %arrayidx22.i, align 4, !tbaa !4
  %indvars.iv.next.i78 = add i64 %indvars.iv.i73, 1
  %145 = load i32* %133, align 4, !tbaa !0
  %146 = trunc i64 %indvars.iv.next.i78 to i32
  %cmp5.i79 = icmp slt i32 %146, %145
  br i1 %cmp5.i79, label %for.body6.i80, label %for.end.i83

for.end.i83:                                      ; preds = %for.body6.i80, %for.cond4.preheader.i71
  %147 = phi %struct.mgau_t* [ %137, %for.cond4.preheader.i71 ], [ %141, %for.body6.i80 ]
  %148 = phi i32 [ %138, %for.cond4.preheader.i71 ], [ %145, %for.body6.i80 ]
  %lrd.0.lcssa.i = phi double [ 0.000000e+00, %for.cond4.preheader.i71 ], [ %add.i, %for.body6.i80 ]
  %conv34.i = sitofp i32 %148 to double
  %mul36.i = fmul double %conv34.i, 0x3FFD67F1C864BEB4
  %add37.i = fadd double %lrd.0.lcssa.i, %mul36.i
  %mul38.i = fmul double %add37.i, -5.000000e-01
  %conv39.i = fptrunc double %mul38.i to float
  %lrd44.i = getelementptr inbounds %struct.mgau_t* %147, i64 %indvars.iv13.i, i32 3
  %149 = load float** %lrd44.i, align 8, !tbaa !3
  %arrayidx45.i = getelementptr inbounds float* %149, i64 %indvars.iv11.i
  store float %conv39.i, float* %arrayidx45.i, align 4, !tbaa !4
  %indvars.iv.next12.i = add i64 %indvars.iv11.i, 1
  %n_comp.i81 = getelementptr inbounds %struct.mgau_t* %147, i64 %indvars.iv13.i, i32 0
  %150 = load i32* %n_comp.i81, align 4, !tbaa !0
  %151 = trunc i64 %indvars.iv.next12.i to i32
  %cmp2.i82 = icmp slt i32 %151, %150
  br i1 %cmp2.i82, label %for.cond4.preheader.i71, label %for.cond1.for.inc49_crit_edge.i

for.cond1.for.inc49_crit_edge.i:                  ; preds = %for.end.i83
  %.pre15.i = load i32* %n_mgau52.i, align 4, !tbaa !0
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %for.cond1.for.inc49_crit_edge.i, %for.cond1.preheader.i69
  %152 = phi i32 [ %.pre15.i, %for.cond1.for.inc49_crit_edge.i ], [ %134, %for.cond1.preheader.i69 ]
  %153 = phi %struct.mgau_t* [ %147, %for.cond1.for.inc49_crit_edge.i ], [ %135, %for.cond1.preheader.i69 ]
  %indvars.iv.next14.i = add i64 %indvars.iv13.i, 1
  %154 = trunc i64 %indvars.iv.next14.i to i32
  %cmp.i84 = icmp slt i32 %154, %152
  br i1 %cmp.i84, label %for.cond1.preheader.i69, label %if.end16

if.end16:                                         ; preds = %for.inc49.i, %if.then14, %if.end13
  %call17 = call double @logs3_to_log(i32 -939524096) #5
  %distfloor = getelementptr inbounds i8* %call, i64 24
  %155 = bitcast i8* %distfloor to double*
  store double %call17, double* %155, align 8, !tbaa !5
  ret %struct.mgau_model_t* %0
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #1

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mgau_file_read(%struct.mgau_model_t* nocapture %g, i8* %file_name, i32 %type) #0 {
entry:
  %tmp = alloca i8, align 1
  %n = alloca i32, align 4
  %n_mgau = alloca i32, align 4
  %n_feat = alloca i32, align 4
  %n_density = alloca i32, align 4
  %byteswap = alloca i32, align 4
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  %chksum = alloca i32, align 4
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 96, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([36 x i8]* @.str32, i64 0, i64 0), i8* %file_name) #5
  %call = call %struct._IO_FILE* @_myfopen(i8* %file_name, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 98) #5
  %call18 = call i32 @bio_readhdr(%struct._IO_FILE* %call, i8*** %argname, i8*** %argval, i32* %byteswap) #5
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 102, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %file_name) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %0 = load i8*** %argname, align 8, !tbaa !3
  %1 = load i8** %0, align 8, !tbaa !3
  %tobool30 = icmp eq i8* %1, null
  br i1 %tobool30, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi i8** [ %8, %for.inc ], [ %0, %for.cond.preheader ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = phi i8* [ %9, %for.inc ], [ %1, %for.cond.preheader ]
  %chksum_present.031 = phi i32 [ %chksum_present.1, %for.inc ], [ 0, %for.cond.preheader ]
  %call21 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0)) #6
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  %4 = load i8*** %argval, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds i8** %4, i64 %indvars.iv54
  %5 = load i8** %arrayidx25, align 8, !tbaa !3
  %call26 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %for.inc, label %if.then28

if.then28:                                        ; preds = %if.then23
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 109, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0)) #5
  %6 = load i8*** %argval, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds i8** %6, i64 %indvars.iv54
  %7 = load i8** %arrayidx30, align 8, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0), i8* %file_name, i8* %7, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #5
  %.pre60 = load i8*** %argname, align 8, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call34 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0)) #6
  %cmp35 = icmp eq i32 %call34, 0
  %.chksum_present.0 = select i1 %cmp35, i32 1, i32 %chksum_present.031
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then23, %if.then28
  %8 = phi i8** [ %.pre60, %if.then28 ], [ %2, %if.then23 ], [ %2, %if.else ]
  %chksum_present.1 = phi i32 [ %chksum_present.031, %if.then28 ], [ %chksum_present.031, %if.then23 ], [ %.chksum_present.0, %if.else ]
  %indvars.iv.next55 = add i64 %indvars.iv54, 1
  %arrayidx = getelementptr inbounds i8** %8, i64 %indvars.iv.next55
  %9 = load i8** %arrayidx, align 8, !tbaa !3
  %tobool = icmp eq i8* %9, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %.lcssa29 = phi i8** [ %0, %for.cond.preheader ], [ %8, %for.inc ]
  %chksum_present.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %chksum_present.1, %for.inc ]
  %10 = load i8*** %argval, align 8, !tbaa !3
  call void @bio_hdrarg_free(i8** %.lcssa29, i8** %10) #5
  store i8** null, i8*** %argval, align 8, !tbaa !3
  store i8** null, i8*** %argname, align 8, !tbaa !3
  store i32 0, i32* %chksum, align 4, !tbaa !0
  %11 = bitcast i32* %n_mgau to i8*
  %12 = load i32* %byteswap, align 4, !tbaa !0
  %call39 = call i32 @bio_fread(i8* %11, i32 4, i32 1, %struct._IO_FILE* %call, i32 %12, i32* %chksum) #5
  %cmp40 = icmp eq i32 %call39, 1
  br i1 %cmp40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 122, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([31 x i8]* @.str33, i64 0, i64 0), i8* %file_name) #5
  br label %if.end42

if.end42:                                         ; preds = %for.end, %if.then41
  %13 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp43 = icmp sgt i32 %13, 32765
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end42
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 124, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %14 = load i32* %n_mgau, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([71 x i8]* @.str34, i64 0, i64 0), i8* %file_name, i32 %14, i32 32766) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end42
  %15 = bitcast i32* %n_feat to i8*
  %16 = load i32* %byteswap, align 4, !tbaa !0
  %call46 = call i32 @bio_fread(i8* %15, i32 4, i32 1, %struct._IO_FILE* %call, i32 %16, i32* %chksum) #5
  %cmp47 = icmp eq i32 %call46, 1
  br i1 %cmp47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 130, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str35, i64 0, i64 0), i8* %file_name) #5
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %if.then48
  %gau_type = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 7
  %17 = load i32* %gau_type, align 4, !tbaa !0
  switch i32 %17, label %if.end63 [
    i32 10001, label %if.then51
    i32 10002, label %if.then58
  ]

if.then51:                                        ; preds = %if.end49
  %18 = load i32* %n_feat, align 4, !tbaa !0
  %cmp52 = icmp eq i32 %18, 1
  br i1 %cmp52, label %if.end63, label %if.then53

if.then53:                                        ; preds = %if.then51
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 134, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %19 = load i32* %n_feat, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str23, i64 0, i64 0), i32 %19) #5
  br label %if.end63

if.then58:                                        ; preds = %if.end49
  %20 = load i32* %n_feat, align 4, !tbaa !0
  %cmp59 = icmp eq i32 %20, 4
  br i1 %cmp59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %if.then58
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 137, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %21 = load i32* %n_feat, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([51 x i8]* @.str36, i64 0, i64 0), i32 %21) #5
  br label %if.end63

if.end63:                                         ; preds = %if.end49, %if.then51, %if.then58, %if.then60, %if.then53
  %22 = bitcast i32* %n_density to i8*
  %23 = load i32* %byteswap, align 4, !tbaa !0
  %call64 = call i32 @bio_fread(i8* %22, i32 4, i32 1, %struct._IO_FILE* %call, i32 %23, i32* %chksum) #5
  %cmp65 = icmp eq i32 %call64, 1
  br i1 %cmp65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 142, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str37, i64 0, i64 0), i8* %file_name) #5
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.then66
  %24 = load i32* %n_feat, align 4, !tbaa !0
  %conv = sext i32 %24 to i64
  %call68 = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 146) #5
  %25 = bitcast i8* %call68 to i32*
  %26 = load i32* %n_feat, align 4, !tbaa !0
  %27 = load i32* %byteswap, align 4, !tbaa !0
  %call69 = call i32 @bio_fread(i8* %call68, i32 4, i32 %26, %struct._IO_FILE* %call, i32 %27, i32* %chksum) #5
  %28 = load i32* %n_feat, align 4, !tbaa !0
  %cmp70 = icmp eq i32 %call69, %28
  br i1 %cmp70, label %for.cond74.preheader, label %if.then72

if.then72:                                        ; preds = %if.end67
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 149, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* %file_name) #5
  %.pre = load i32* %n_feat, align 4, !tbaa !0
  br label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %if.end67, %if.then72
  %29 = phi i32 [ %call69, %if.end67 ], [ %.pre, %if.then72 ]
  %cmp7525 = icmp sgt i32 %29, 0
  br i1 %cmp7525, label %for.body77, label %for.end82

for.body77:                                       ; preds = %for.cond74.preheader, %for.body77
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body77 ], [ 0, %for.cond74.preheader ]
  %blk.026 = phi i32 [ %add, %for.body77 ], [ 0, %for.cond74.preheader ]
  %arrayidx79 = getelementptr inbounds i32* %25, i64 %indvars.iv51
  %30 = load i32* %arrayidx79, align 4, !tbaa !0
  %add = add nsw i32 %30, %blk.026
  %indvars.iv.next52 = add i64 %indvars.iv51, 1
  %31 = trunc i64 %indvars.iv.next52 to i32
  %cmp75 = icmp slt i32 %31, %29
  br i1 %cmp75, label %for.body77, label %for.end82

for.end82:                                        ; preds = %for.body77, %for.cond74.preheader
  %blk.0.lcssa = phi i32 [ 0, %for.cond74.preheader ], [ %add, %for.body77 ]
  %32 = bitcast i32* %n to i8*
  %33 = load i32* %byteswap, align 4, !tbaa !0
  %call83 = call i32 @bio_fread(i8* %32, i32 4, i32 1, %struct._IO_FILE* %call, i32 %33, i32* %chksum) #5
  %cmp84 = icmp eq i32 %call83, 1
  br i1 %cmp84, label %if.end87, label %if.then86

if.then86:                                        ; preds = %for.end82
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 159, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str39, i64 0, i64 0), i8* %file_name) #5
  br label %if.end87

if.end87:                                         ; preds = %for.end82, %if.then86
  %34 = load i32* %n, align 4, !tbaa !0
  %35 = load i32* %n_mgau, align 4, !tbaa !0
  %36 = load i32* %n_density, align 4, !tbaa !0
  %mul = mul i32 %35, %blk.0.lcssa
  %mul88 = mul i32 %mul, %36
  %cmp89 = icmp eq i32 %34, %mul88
  br i1 %cmp89, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end87
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 162, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %37 = load i32* %n, align 4, !tbaa !0
  %38 = load i32* %n_mgau, align 4, !tbaa !0
  %39 = load i32* %n_density, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([58 x i8]* @.str40, i64 0, i64 0), i8* %file_name, i32 %37, i32 %38, i32 %39, i32 %blk.0.lcssa) #5
  br label %if.end92

if.end92:                                         ; preds = %if.end87, %if.then91
  %40 = load i32* %gau_type, align 4, !tbaa !0
  %cmp94 = icmp eq i32 %40, 10002
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end92
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 167, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([50 x i8]* @.str41, i64 0, i64 0)) #5
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end92
  %cmp98 = icmp eq i32 %type, 1
  br i1 %cmp98, label %if.then100, label %if.else142

if.then100:                                       ; preds = %if.end97
  %41 = load i32* %n_mgau, align 4, !tbaa !0
  %n_mgau101 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  store i32 %41, i32* %n_mgau101, align 4, !tbaa !0
  %42 = load i32* %n_density, align 4, !tbaa !0
  %max_comp = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 1
  store i32 %42, i32* %max_comp, align 4, !tbaa !0
  %veclen102 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 2
  store i32 %blk.0.lcssa, i32* %veclen102, align 4, !tbaa !0
  %conv103 = sext i32 %41 to i64
  %call104 = call i8* @__ckd_calloc__(i64 %conv103, i64 40, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 175) #5
  %43 = bitcast i8* %call104 to %struct.mgau_t*
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  store %struct.mgau_t* %43, %struct.mgau_t** %mgau, align 8, !tbaa !3
  %44 = load i32* %n, align 4, !tbaa !0
  %conv105 = sext i32 %44 to i64
  %call106 = call i8* @__ckd_calloc__(i64 %conv105, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 177) #5
  %45 = load i32* %n_mgau, align 4, !tbaa !0
  %46 = load i32* %n_density, align 4, !tbaa !0
  %mul107 = mul nsw i32 %46, %45
  %conv108 = sext i32 %mul107 to i64
  %call109 = call i8* @__ckd_calloc__(i64 %conv108, i64 8, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 178) #5
  %47 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp1115 = icmp sgt i32 %47, 0
  br i1 %cmp1115, label %for.body113.lr.ph, label %for.end137

for.body113.lr.ph:                                ; preds = %if.then100
  %48 = bitcast i8* %call109 to float**
  %49 = bitcast i8* %call106 to float*
  %idx.ext = sext i32 %blk.0.lcssa to i64
  %.pre56 = load i32* %n_density, align 4, !tbaa !0
  br label %for.body113

for.body113:                                      ; preds = %for.body113.lr.ph, %for.end132
  %50 = phi i32 [ %.pre56, %for.body113.lr.ph ], [ %52, %for.end132 ]
  %indvars.iv38 = phi i64 [ 0, %for.body113.lr.ph ], [ %indvars.iv.next39, %for.end132 ]
  %pbuf.07 = phi float** [ %48, %for.body113.lr.ph ], [ %add.ptr134, %for.end132 ]
  %buf.06 = phi float* [ %49, %for.body113.lr.ph ], [ %buf.1.lcssa, %for.end132 ]
  %51 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %n_comp = getelementptr inbounds %struct.mgau_t* %51, i64 %indvars.iv38, i32 0
  store i32 %50, i32* %n_comp, align 4, !tbaa !0
  %mean = getelementptr inbounds %struct.mgau_t* %51, i64 %indvars.iv38, i32 1
  store float** %pbuf.07, float*** %mean, align 8, !tbaa !3
  %52 = load i32* %n_density, align 4, !tbaa !0
  %cmp1211 = icmp sgt i32 %52, 0
  br i1 %cmp1211, label %for.body123.lr.ph, label %for.end132

for.body123.lr.ph:                                ; preds = %for.body113
  %buf.0636 = bitcast float* %buf.06 to i8*
  %53 = icmp sgt i32 %52, 1
  %.op63 = add i32 %52, -1
  %54 = zext i32 %.op63 to i64
  %.op64 = shl nuw nsw i64 %54, 2
  %.op64.op = add i64 %.op64, 4
  %55 = select i1 %53, i64 %.op64.op, i64 4
  %56 = mul i64 %idx.ext, %55
  %uglygep = getelementptr i8* %buf.0636, i64 %56
  br label %for.body123

for.body123:                                      ; preds = %for.body123.lr.ph, %for.body123
  %indvars.iv = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next, %for.body123 ]
  %buf.13 = phi float* [ %buf.06, %for.body123.lr.ph ], [ %add.ptr, %for.body123 ]
  %57 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %mean128 = getelementptr inbounds %struct.mgau_t* %57, i64 %indvars.iv38, i32 1
  %58 = load float*** %mean128, align 8, !tbaa !3
  %arrayidx129 = getelementptr inbounds float** %58, i64 %indvars.iv
  store float* %buf.13, float** %arrayidx129, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds float* %buf.13, i64 %idx.ext
  %indvars.iv.next = add i64 %indvars.iv, 1
  %59 = trunc i64 %indvars.iv.next to i32
  %cmp121 = icmp slt i32 %59, %52
  br i1 %cmp121, label %for.body123, label %for.cond120.for.end132_crit_edge

for.cond120.for.end132_crit_edge:                 ; preds = %for.body123
  %uglygep37 = bitcast i8* %uglygep to float*
  br label %for.end132

for.end132:                                       ; preds = %for.cond120.for.end132_crit_edge, %for.body113
  %buf.1.lcssa = phi float* [ %uglygep37, %for.cond120.for.end132_crit_edge ], [ %buf.06, %for.body113 ]
  %idx.ext133 = sext i32 %52 to i64
  %add.ptr134 = getelementptr inbounds float** %pbuf.07, i64 %idx.ext133
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  %60 = load i32* %n_mgau, align 4, !tbaa !0
  %61 = trunc i64 %indvars.iv.next39 to i32
  %cmp111 = icmp slt i32 %61, %60
  br i1 %cmp111, label %for.body113, label %for.end137

for.end137:                                       ; preds = %for.end132, %if.then100
  %62 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %mean140 = getelementptr inbounds %struct.mgau_t* %62, i64 0, i32 1
  br label %if.end224

if.else142:                                       ; preds = %if.end97
  %n_mgau143 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 0
  %63 = load i32* %n_mgau143, align 4, !tbaa !0
  %64 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp144 = icmp eq i32 %63, %64
  br i1 %cmp144, label %if.end148, label %if.then146

if.then146:                                       ; preds = %if.else142
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 198, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %65 = load i32* %n_mgau, align 4, !tbaa !0
  %66 = load i32* %n_mgau143, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([47 x i8]* @.str42, i64 0, i64 0), i32 %65, i32 %66) #5
  br label %if.end148

if.end148:                                        ; preds = %if.else142, %if.then146
  %max_comp149 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 1
  %67 = load i32* %max_comp149, align 4, !tbaa !0
  %68 = load i32* %n_density, align 4, !tbaa !0
  %cmp150 = icmp eq i32 %67, %68
  br i1 %cmp150, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.end148
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 200, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %69 = load i32* %n_density, align 4, !tbaa !0
  %70 = load i32* %max_comp149, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([49 x i8]* @.str43, i64 0, i64 0), i32 %69, i32 %70) #5
  br label %if.end154

if.end154:                                        ; preds = %if.end148, %if.then152
  %veclen155 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 2
  %71 = load i32* %veclen155, align 4, !tbaa !0
  %cmp156 = icmp eq i32 %71, %blk.0.lcssa
  br i1 %cmp156, label %if.end160, label %if.then158

if.then158:                                       ; preds = %if.end154
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 202, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %72 = load i32* %veclen155, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([52 x i8]* @.str44, i64 0, i64 0), i32 %blk.0.lcssa, i32 %72) #5
  br label %if.end160

if.end160:                                        ; preds = %if.end154, %if.then158
  %73 = load i32* %n, align 4, !tbaa !0
  %conv161 = sext i32 %73 to i64
  %call162 = call i8* @__ckd_calloc__(i64 %conv161, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 204) #5
  %74 = load i32* %n_mgau, align 4, !tbaa !0
  %75 = load i32* %n_density, align 4, !tbaa !0
  %mul163 = mul nsw i32 %75, %74
  %conv164 = sext i32 %mul163 to i64
  %call165 = call i8* @__ckd_calloc__(i64 %conv164, i64 8, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 205) #5
  %76 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp16719 = icmp sgt i32 %76, 0
  br i1 %cmp16719, label %for.body169.lr.ph, label %if.end160.for.end204_crit_edge

if.end160.for.end204_crit_edge:                   ; preds = %if.end160
  %.pre61 = load i32* %n_density, align 4, !tbaa !0
  br label %for.end204

for.body169.lr.ph:                                ; preds = %if.end160
  %77 = bitcast i8* %call165 to float**
  %78 = bitcast i8* %call162 to float*
  %mgau171 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %idx.ext195 = sext i32 %blk.0.lcssa to i64
  %.pre57 = load i32* %n_density, align 4, !tbaa !0
  br label %for.body169

for.body169:                                      ; preds = %for.body169.lr.ph, %for.end199
  %79 = phi i32 [ %.pre57, %for.body169.lr.ph ], [ %87, %for.end199 ]
  %80 = phi i32 [ %.pre57, %for.body169.lr.ph ], [ %88, %for.end199 ]
  %indvars.iv49 = phi i64 [ 0, %for.body169.lr.ph ], [ %indvars.iv.next50, %for.end199 ]
  %pbuf.121 = phi float** [ %77, %for.body169.lr.ph ], [ %add.ptr201, %for.end199 ]
  %buf.220 = phi float* [ %78, %for.body169.lr.ph ], [ %buf.3.lcssa, %for.end199 ]
  %buf.22044 = bitcast float* %buf.220 to i8*
  %81 = load %struct.mgau_t** %mgau171, align 8, !tbaa !3
  %n_comp173 = getelementptr inbounds %struct.mgau_t* %81, i64 %indvars.iv49, i32 0
  %82 = load i32* %n_comp173, align 4, !tbaa !0
  %cmp174 = icmp eq i32 %82, %80
  br i1 %cmp174, label %if.end181, label %if.then176

if.then176:                                       ; preds = %for.body169
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 210, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  %83 = load i32* %n_density, align 4, !tbaa !0
  %84 = load %struct.mgau_t** %mgau171, align 8, !tbaa !3
  %n_comp180 = getelementptr inbounds %struct.mgau_t* %84, i64 %indvars.iv49, i32 0
  %85 = load i32* %n_comp180, align 4, !tbaa !0
  %86 = trunc i64 %indvars.iv49 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([61 x i8]* @.str45, i64 0, i64 0), i32 %86, i32 %83, i32 %85) #5
  %.pre58 = load %struct.mgau_t** %mgau171, align 8, !tbaa !3
  %.pre59 = load i32* %n_density, align 4, !tbaa !0
  br label %if.end181

if.end181:                                        ; preds = %for.body169, %if.then176
  %87 = phi i32 [ %79, %for.body169 ], [ %.pre59, %if.then176 ]
  %88 = phi i32 [ %80, %for.body169 ], [ %.pre59, %if.then176 ]
  %89 = phi %struct.mgau_t* [ %81, %for.body169 ], [ %.pre58, %if.then176 ]
  %var = getelementptr inbounds %struct.mgau_t* %89, i64 %indvars.iv49, i32 2
  store float** %pbuf.121, float*** %var, align 8, !tbaa !3
  %cmp18613 = icmp sgt i32 %88, 0
  br i1 %cmp18613, label %for.body188.lr.ph, label %for.end199

for.body188.lr.ph:                                ; preds = %if.end181
  %90 = icmp sgt i32 %88, 1
  %.op = add i32 %88, -1
  %91 = zext i32 %.op to i64
  %.op62 = shl nuw nsw i64 %91, 2
  %.op62.op = add i64 %.op62, 4
  %92 = select i1 %90, i64 %.op62.op, i64 4
  %93 = mul i64 %idx.ext195, %92
  %uglygep46 = getelementptr i8* %buf.22044, i64 %93
  br label %for.body188

for.body188:                                      ; preds = %for.body188.lr.ph, %for.body188
  %indvars.iv42 = phi i64 [ 0, %for.body188.lr.ph ], [ %indvars.iv.next43, %for.body188 ]
  %buf.315 = phi float* [ %buf.220, %for.body188.lr.ph ], [ %add.ptr196, %for.body188 ]
  %94 = load %struct.mgau_t** %mgau171, align 8, !tbaa !3
  %var193 = getelementptr inbounds %struct.mgau_t* %94, i64 %indvars.iv49, i32 2
  %95 = load float*** %var193, align 8, !tbaa !3
  %arrayidx194 = getelementptr inbounds float** %95, i64 %indvars.iv42
  store float* %buf.315, float** %arrayidx194, align 8, !tbaa !3
  %add.ptr196 = getelementptr inbounds float* %buf.315, i64 %idx.ext195
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %96 = trunc i64 %indvars.iv.next43 to i32
  %cmp186 = icmp slt i32 %96, %88
  br i1 %cmp186, label %for.body188, label %for.cond185.for.end199_crit_edge

for.cond185.for.end199_crit_edge:                 ; preds = %for.body188
  %uglygep4647 = bitcast i8* %uglygep46 to float*
  br label %for.end199

for.end199:                                       ; preds = %if.end181, %for.cond185.for.end199_crit_edge
  %buf.3.lcssa = phi float* [ %uglygep4647, %for.cond185.for.end199_crit_edge ], [ %buf.220, %if.end181 ]
  %idx.ext200 = sext i32 %88 to i64
  %add.ptr201 = getelementptr inbounds float** %pbuf.121, i64 %idx.ext200
  %indvars.iv.next50 = add i64 %indvars.iv49, 1
  %97 = load i32* %n_mgau, align 4, !tbaa !0
  %98 = trunc i64 %indvars.iv.next50 to i32
  %cmp167 = icmp slt i32 %98, %97
  br i1 %cmp167, label %for.body169, label %for.end204

for.end204:                                       ; preds = %for.end199, %if.end160.for.end204_crit_edge
  %99 = phi i32 [ %.pre61, %if.end160.for.end204_crit_edge ], [ %87, %for.end199 ]
  %.lcssa18 = phi i32 [ %76, %if.end160.for.end204_crit_edge ], [ %97, %for.end199 ]
  %mul205 = mul nsw i32 %99, %.lcssa18
  %conv206 = sext i32 %mul205 to i64
  %call207 = call i8* @__ckd_calloc__(i64 %conv206, i64 4, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i32 224) #5
  %100 = load i32* %n_mgau, align 4, !tbaa !0
  %cmp2099 = icmp sgt i32 %100, 0
  br i1 %cmp2099, label %for.body211.lr.ph, label %for.end204.for.end219_crit_edge

for.end204.for.end219_crit_edge:                  ; preds = %for.end204
  %mgau220.pre = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  br label %for.end219

for.body211.lr.ph:                                ; preds = %for.end204
  %101 = bitcast i8* %call207 to float*
  %mgau213 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %102 = load i32* %n_density, align 4, !tbaa !0
  %idx.ext215 = sext i32 %102 to i64
  br label %for.body211

for.body211:                                      ; preds = %for.body211.lr.ph, %for.body211
  %indvars.iv40 = phi i64 [ 0, %for.body211.lr.ph ], [ %indvars.iv.next41, %for.body211 ]
  %buf.410 = phi float* [ %101, %for.body211.lr.ph ], [ %add.ptr216, %for.body211 ]
  %103 = load %struct.mgau_t** %mgau213, align 8, !tbaa !3
  %lrd = getelementptr inbounds %struct.mgau_t* %103, i64 %indvars.iv40, i32 3
  store float* %buf.410, float** %lrd, align 8, !tbaa !3
  %add.ptr216 = getelementptr inbounds float* %buf.410, i64 %idx.ext215
  %indvars.iv.next41 = add i64 %indvars.iv40, 1
  %104 = trunc i64 %indvars.iv.next41 to i32
  %cmp209 = icmp slt i32 %104, %100
  br i1 %cmp209, label %for.body211, label %for.end219

for.end219:                                       ; preds = %for.body211, %for.end204.for.end219_crit_edge
  %mgau220.pre-phi = phi %struct.mgau_t** [ %mgau220.pre, %for.end204.for.end219_crit_edge ], [ %mgau213, %for.body211 ]
  %105 = load %struct.mgau_t** %mgau220.pre-phi, align 8, !tbaa !3
  %var222 = getelementptr inbounds %struct.mgau_t* %105, i64 0, i32 2
  br label %if.end224

if.end224:                                        ; preds = %for.end219, %for.end137
  %buf.5.in.in = phi float*** [ %mean140, %for.end137 ], [ %var222, %for.end219 ]
  %buf.5.in = load float*** %buf.5.in.in, align 8
  %buf.5 = load float** %buf.5.in, align 8
  %106 = bitcast float* %buf.5 to i8*
  %107 = load i32* %n, align 4, !tbaa !0
  %108 = load i32* %byteswap, align 4, !tbaa !0
  %call225 = call i32 @bio_fread(i8* %106, i32 4, i32 %107, %struct._IO_FILE* %call, i32 %108, i32* %chksum) #5
  %109 = load i32* %n, align 4, !tbaa !0
  %cmp226 = icmp eq i32 %call225, %109
  br i1 %cmp226, label %if.end229, label %if.then228

if.then228:                                       ; preds = %if.end224
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 236, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str46, i64 0, i64 0), i8* %file_name) #5
  br label %if.end229

if.end229:                                        ; preds = %if.end224, %if.then228
  %call230 = call double @log_to_logs3_factor() #5
  %tobool231 = icmp eq i32 %chksum_present.0.lcssa, 0
  br i1 %tobool231, label %if.end233, label %if.then232

if.then232:                                       ; preds = %if.end229
  %110 = load i32* %byteswap, align 4, !tbaa !0
  %111 = load i32* %chksum, align 4, !tbaa !0
  call void @bio_verify_chksum(%struct._IO_FILE* %call, i32 %110, i32 %111) #5
  br label %if.end233

if.end233:                                        ; preds = %if.end229, %if.then232
  %call234 = call i64 @fread(i8* %tmp, i64 1, i64 1, %struct._IO_FILE* %call) #5
  %cmp235 = icmp eq i64 %call234, 1
  br i1 %cmp235, label %if.then237, label %if.end238

if.then237:                                       ; preds = %if.end233
  call void @_E__pr_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 244, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #5
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str47, i64 0, i64 0), i8* %file_name) #5
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %if.end233
  %call239 = call i32 @fclose(%struct._IO_FILE* %call) #5
  call void @_E__pr_info_header(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 248, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #5
  %112 = load i32* %n_mgau, align 4, !tbaa !0
  %113 = load i32* %n_density, align 4, !tbaa !0
  %114 = load i32* %n_feat, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([60 x i8]* @.str48, i64 0, i64 0), i32 %112, i32 %113, i32 %114, i32 %blk.0.lcssa) #5
  ret void
}

; Function Attrs: optsize
declare double @logs3_to_log(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @mgau_comp_eval(%struct.mgau_model_t* nocapture %g, i32 %s, float* nocapture %x, i32* nocapture %score) #0 {
entry:
  %veclen1 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 2
  %0 = load i32* %veclen1, align 4, !tbaa !0
  %idxprom = sext i32 %s to i64
  %mgau2 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %1 = load %struct.mgau_t** %mgau2, align 8, !tbaa !3
  %call = tail call double @log_to_logs3_factor() #5
  %n_comp = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 0
  %2 = load i32* %n_comp, align 4, !tbaa !0
  %cmp67 = icmp sgt i32 %2, 0
  br i1 %cmp67, label %for.body.lr.ph, label %for.end40

for.body.lr.ph:                                   ; preds = %entry
  %mean = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 1
  %3 = load float*** %mean, align 8, !tbaa !3
  %var = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 2
  %4 = load float*** %var, align 8, !tbaa !3
  %lrd = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 3
  %5 = load float** %lrd, align 8, !tbaa !3
  %cmp1064 = icmp sgt i32 %0, 0
  %distfloor = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 4
  %6 = load double* %distfloor, align 8, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv71 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next72, %for.end ]
  %bs.068 = phi i32 [ -2147483648, %for.body.lr.ph ], [ %conv27.bs.0, %for.end ]
  %arrayidx4 = getelementptr inbounds float** %3, i64 %indvars.iv71
  %7 = load float** %arrayidx4, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds float** %4, i64 %indvars.iv71
  %8 = load float** %arrayidx6, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds float* %5, i64 %indvars.iv71
  %9 = load float* %arrayidx8, align 4, !tbaa !4
  %conv = fpext float %9 to double
  br i1 %cmp1064, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.body, %for.body12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ 0, %for.body ]
  %dval.065 = phi double [ %sub22, %for.body12 ], [ %conv, %for.body ]
  %arrayidx14 = getelementptr inbounds float* %x, i64 %indvars.iv
  %10 = load float* %arrayidx14, align 4, !tbaa !4
  %arrayidx16 = getelementptr inbounds float* %7, i64 %indvars.iv
  %11 = load float* %arrayidx16, align 4, !tbaa !4
  %sub = fsub float %10, %11
  %conv17 = fpext float %sub to double
  %mul = fmul double %conv17, %conv17
  %arrayidx19 = getelementptr inbounds float* %8, i64 %indvars.iv
  %12 = load float* %arrayidx19, align 4, !tbaa !4
  %conv20 = fpext float %12 to double
  %mul21 = fmul double %conv20, %mul
  %sub22 = fsub double %dval.065, %mul21
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end, label %for.body12

for.end:                                          ; preds = %for.body12, %for.body
  %dval.0.lcssa = phi double [ %conv, %for.body ], [ %sub22, %for.body12 ]
  %cmp23 = fcmp olt double %dval.0.lcssa, %6
  %dval.1 = select i1 %cmp23, double %6, double %dval.0.lcssa
  %mul26 = fmul double %call, %dval.1
  %conv27 = fptosi double %mul26 to i32
  %arrayidx29 = getelementptr inbounds i32* %score, i64 %indvars.iv71
  store i32 %conv27, i32* %arrayidx29, align 4, !tbaa !0
  %cmp32 = icmp sgt i32 %conv27, %bs.068
  %conv27.bs.0 = select i1 %cmp32, i32 %conv27, i32 %bs.068
  %indvars.iv.next72 = add i64 %indvars.iv71, 1
  %13 = load i32* %n_comp, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next72 to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.body, label %for.end40

for.end40:                                        ; preds = %for.end, %entry
  %bs.0.lcssa = phi i32 [ -2147483648, %entry ], [ %conv27.bs.0, %for.end ]
  ret i32 %bs.0.lcssa
}

; Function Attrs: optsize
declare double @log_to_logs3_factor() #1

; Function Attrs: nounwind optsize uwtable
define i32 @mgau_eval(%struct.mgau_model_t* nocapture %g, i32 %m, i32* %active, float* nocapture %x) #0 {
entry:
  %veclen1 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 2
  %0 = load i32* %veclen1, align 4, !tbaa !0
  %idxprom = sext i32 %m to i64
  %mgau2 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %1 = load %struct.mgau_t** %mgau2, align 8, !tbaa !3
  %call = tail call double @log_to_logs3_factor() #5
  %tobool = icmp eq i32* %active, null
  br i1 %tobool, label %for.cond.preheader, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %entry
  %2 = load i32* %active, align 4, !tbaa !0
  %cmp125299 = icmp sgt i32 %2, -1
  br i1 %cmp125299, label %for.body127.lr.ph, label %if.end176

for.body127.lr.ph:                                ; preds = %for.cond122.preheader
  %mean132 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 1
  %var135 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 2
  %lrd138 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 3
  %cmp142295 = icmp sgt i32 %0, 0
  %distfloor160 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 4
  %mixw169 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 4
  br label %for.body127

for.cond.preheader:                               ; preds = %entry
  %n_comp = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 0
  %3 = load i32* %n_comp, align 4, !tbaa !0
  %sub288 = add nsw i32 %3, -1
  %cmp289 = icmp sgt i32 %sub288, 0
  br i1 %cmp289, label %for.body.lr.ph, label %for.end74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mean = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 1
  %var = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 2
  %lrd = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 3
  %cmp22282 = icmp sgt i32 %0, 0
  %distfloor = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 4
  %mixw = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv309 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next310, %for.end ]
  %c.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %add73, %for.end ]
  %score.0290 = phi i32 [ -939524096, %for.body.lr.ph ], [ %call71, %for.end ]
  %4 = load float*** %mean, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds float** %4, i64 %indvars.iv309
  %5 = load float** %arrayidx4, align 8, !tbaa !3
  %6 = or i64 %indvars.iv309, 1
  %arrayidx7 = getelementptr inbounds float** %4, i64 %6
  %7 = load float** %arrayidx7, align 8, !tbaa !3
  %8 = load float*** %var, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds float** %8, i64 %indvars.iv309
  %9 = load float** %arrayidx9, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds float** %8, i64 %6
  %10 = load float** %arrayidx13, align 8, !tbaa !3
  %11 = load float** %lrd, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds float* %11, i64 %indvars.iv309
  %12 = load float* %arrayidx15, align 4, !tbaa !4
  %conv = fpext float %12 to double
  %arrayidx19 = getelementptr inbounds float* %11, i64 %6
  %13 = load float* %arrayidx19, align 4, !tbaa !4
  %conv20 = fpext float %13 to double
  br i1 %cmp22282, label %for.body24, label %for.end

for.body24:                                       ; preds = %for.body, %for.body24
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %for.body24 ], [ 0, %for.body ]
  %dval2.0284 = phi double [ %sub47, %for.body24 ], [ %conv20, %for.body ]
  %dval1.0283 = phi double [ %sub35, %for.body24 ], [ %conv, %for.body ]
  %arrayidx26 = getelementptr inbounds float* %x, i64 %indvars.iv304
  %14 = load float* %arrayidx26, align 4, !tbaa !4
  %arrayidx28 = getelementptr inbounds float* %5, i64 %indvars.iv304
  %15 = load float* %arrayidx28, align 4, !tbaa !4
  %sub29 = fsub float %14, %15
  %conv30 = fpext float %sub29 to double
  %mul = fmul double %conv30, %conv30
  %arrayidx32 = getelementptr inbounds float* %9, i64 %indvars.iv304
  %16 = load float* %arrayidx32, align 4, !tbaa !4
  %conv33 = fpext float %16 to double
  %mul34 = fmul double %conv33, %mul
  %sub35 = fsub double %dval1.0283, %mul34
  %arrayidx39 = getelementptr inbounds float* %7, i64 %indvars.iv304
  %17 = load float* %arrayidx39, align 4, !tbaa !4
  %sub40 = fsub float %14, %17
  %conv41 = fpext float %sub40 to double
  %mul42 = fmul double %conv41, %conv41
  %arrayidx44 = getelementptr inbounds float* %10, i64 %indvars.iv304
  %18 = load float* %arrayidx44, align 4, !tbaa !4
  %conv45 = fpext float %18 to double
  %mul46 = fmul double %conv45, %mul42
  %sub47 = fsub double %dval2.0284, %mul46
  %indvars.iv.next305 = add i64 %indvars.iv304, 1
  %lftr.wideiv306 = trunc i64 %indvars.iv.next305 to i32
  %exitcond307 = icmp eq i32 %lftr.wideiv306, %0
  br i1 %exitcond307, label %for.end, label %for.body24

for.end:                                          ; preds = %for.body24, %for.body
  %dval2.0.lcssa = phi double [ %conv20, %for.body ], [ %sub47, %for.body24 ]
  %dval1.0.lcssa = phi double [ %conv, %for.body ], [ %sub35, %for.body24 ]
  %19 = load double* %distfloor, align 8, !tbaa !5
  %cmp48 = fcmp olt double %dval1.0.lcssa, %19
  %dval1.1 = select i1 %cmp48, double %19, double %dval1.0.lcssa
  %cmp53 = fcmp olt double %dval2.0.lcssa, %19
  %dval2.1 = select i1 %cmp53, double %19, double %dval2.0.lcssa
  %mul58 = fmul double %call, %dval1.1
  %conv59 = fptosi double %mul58 to i32
  %20 = load i32** %mixw, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds i32* %20, i64 %indvars.iv309
  %21 = load i32* %arrayidx61, align 4, !tbaa !0
  %add62 = add nsw i32 %conv59, %21
  %call63 = tail call i32 @logs3_add(i32 %score.0290, i32 %add62) #5
  %mul64 = fmul double %call, %dval2.1
  %conv65 = fptosi double %mul64 to i32
  %22 = load i32** %mixw, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds i32* %22, i64 %6
  %23 = load i32* %arrayidx69, align 4, !tbaa !0
  %add70 = add nsw i32 %23, %conv65
  %call71 = tail call i32 @logs3_add(i32 %call63, i32 %add70) #5
  %indvars.iv.next310 = add i64 %indvars.iv309, 2
  %add73 = add nsw i32 %c.0291, 2
  %24 = load i32* %n_comp, align 4, !tbaa !0
  %sub = add nsw i32 %24, -1
  %25 = trunc i64 %indvars.iv.next310 to i32
  %cmp = icmp slt i32 %25, %sub
  br i1 %cmp, label %for.body, label %for.end74

for.end74:                                        ; preds = %for.end, %for.cond.preheader
  %.lcssa = phi i32 [ %3, %for.cond.preheader ], [ %24, %for.end ]
  %c.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %add73, %for.end ]
  %score.0.lcssa = phi i32 [ -939524096, %for.cond.preheader ], [ %call71, %for.end ]
  %cmp76 = icmp slt i32 %c.0.lcssa, %.lcssa
  br i1 %cmp76, label %if.then78, label %if.end176

if.then78:                                        ; preds = %for.end74
  %idxprom79 = sext i32 %c.0.lcssa to i64
  %mean80 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 1
  %26 = load float*** %mean80, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds float** %26, i64 %idxprom79
  %27 = load float** %arrayidx81, align 8, !tbaa !3
  %var83 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 2
  %28 = load float*** %var83, align 8, !tbaa !3
  %arrayidx84 = getelementptr inbounds float** %28, i64 %idxprom79
  %29 = load float** %arrayidx84, align 8, !tbaa !3
  %lrd86 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 3
  %30 = load float** %lrd86, align 8, !tbaa !3
  %arrayidx87 = getelementptr inbounds float* %30, i64 %idxprom79
  %31 = load float* %arrayidx87, align 4, !tbaa !4
  %conv88 = fpext float %31 to double
  %cmp90279 = icmp sgt i32 %0, 0
  br i1 %cmp90279, label %for.body92, label %for.end107

for.body92:                                       ; preds = %if.then78, %for.body92
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body92 ], [ 0, %if.then78 ]
  %dval1.2280 = phi double [ %sub104, %for.body92 ], [ %conv88, %if.then78 ]
  %arrayidx94 = getelementptr inbounds float* %x, i64 %indvars.iv
  %32 = load float* %arrayidx94, align 4, !tbaa !4
  %arrayidx96 = getelementptr inbounds float* %27, i64 %indvars.iv
  %33 = load float* %arrayidx96, align 4, !tbaa !4
  %sub97 = fsub float %32, %33
  %conv98 = fpext float %sub97 to double
  %mul99 = fmul double %conv98, %conv98
  %arrayidx101 = getelementptr inbounds float* %29, i64 %indvars.iv
  %34 = load float* %arrayidx101, align 4, !tbaa !4
  %conv102 = fpext float %34 to double
  %mul103 = fmul double %conv102, %mul99
  %sub104 = fsub double %dval1.2280, %mul103
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end107, label %for.body92

for.end107:                                       ; preds = %for.body92, %if.then78
  %dval1.2.lcssa = phi double [ %conv88, %if.then78 ], [ %sub104, %for.body92 ]
  %distfloor108 = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 4
  %35 = load double* %distfloor108, align 8, !tbaa !5
  %cmp109 = fcmp olt double %dval1.2.lcssa, %35
  %dval1.3 = select i1 %cmp109, double %35, double %dval1.2.lcssa
  %mul114 = fmul double %call, %dval1.3
  %conv115 = fptosi double %mul114 to i32
  %mixw117 = getelementptr inbounds %struct.mgau_t* %1, i64 %idxprom, i32 4
  %36 = load i32** %mixw117, align 8, !tbaa !3
  %arrayidx118 = getelementptr inbounds i32* %36, i64 %idxprom79
  %37 = load i32* %arrayidx118, align 4, !tbaa !0
  %add119 = add nsw i32 %conv115, %37
  %call120 = tail call i32 @logs3_add(i32 %score.0.lcssa, i32 %add119) #5
  br label %if.end176

for.body127:                                      ; preds = %for.body127.lr.ph, %for.end159
  %38 = phi i32 [ %2, %for.body127.lr.ph ], [ %52, %for.end159 ]
  %indvars.iv316 = phi i64 [ 0, %for.body127.lr.ph ], [ %indvars.iv.next317, %for.end159 ]
  %score.1300 = phi i32 [ -939524096, %for.body127.lr.ph ], [ %call172, %for.end159 ]
  %39 = load i64* @considered, align 8, !tbaa !6
  %inc128 = add nsw i64 %39, 1
  store i64 %inc128, i64* @considered, align 8, !tbaa !6
  %idxprom131 = sext i32 %38 to i64
  %40 = load float*** %mean132, align 8, !tbaa !3
  %arrayidx133 = getelementptr inbounds float** %40, i64 %idxprom131
  %41 = load float** %arrayidx133, align 8, !tbaa !3
  %42 = load float*** %var135, align 8, !tbaa !3
  %arrayidx136 = getelementptr inbounds float** %42, i64 %idxprom131
  %43 = load float** %arrayidx136, align 8, !tbaa !3
  %44 = load float** %lrd138, align 8, !tbaa !3
  %arrayidx139 = getelementptr inbounds float* %44, i64 %idxprom131
  %45 = load float* %arrayidx139, align 4, !tbaa !4
  %conv140 = fpext float %45 to double
  br i1 %cmp142295, label %for.body144, label %for.end159

for.body144:                                      ; preds = %for.body127, %for.body144
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.body144 ], [ 0, %for.body127 ]
  %dval1.4296 = phi double [ %sub156, %for.body144 ], [ %conv140, %for.body127 ]
  %arrayidx146 = getelementptr inbounds float* %x, i64 %indvars.iv312
  %46 = load float* %arrayidx146, align 4, !tbaa !4
  %arrayidx148 = getelementptr inbounds float* %41, i64 %indvars.iv312
  %47 = load float* %arrayidx148, align 4, !tbaa !4
  %sub149 = fsub float %46, %47
  %conv150 = fpext float %sub149 to double
  %mul151 = fmul double %conv150, %conv150
  %arrayidx153 = getelementptr inbounds float* %43, i64 %indvars.iv312
  %48 = load float* %arrayidx153, align 4, !tbaa !4
  %conv154 = fpext float %48 to double
  %mul155 = fmul double %conv154, %mul151
  %sub156 = fsub double %dval1.4296, %mul155
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %lftr.wideiv314 = trunc i64 %indvars.iv.next313 to i32
  %exitcond315 = icmp eq i32 %lftr.wideiv314, %0
  br i1 %exitcond315, label %for.end159, label %for.body144

for.end159:                                       ; preds = %for.body144, %for.body127
  %dval1.4.lcssa = phi double [ %conv140, %for.body127 ], [ %sub156, %for.body144 ]
  %49 = load double* %distfloor160, align 8, !tbaa !5
  %cmp161 = fcmp olt double %dval1.4.lcssa, %49
  %dval1.5 = select i1 %cmp161, double %49, double %dval1.4.lcssa
  %mul166 = fmul double %call, %dval1.5
  %conv167 = fptosi double %mul166 to i32
  %50 = load i32** %mixw169, align 8, !tbaa !3
  %arrayidx170 = getelementptr inbounds i32* %50, i64 %idxprom131
  %51 = load i32* %arrayidx170, align 4, !tbaa !0
  %add171 = add nsw i32 %conv167, %51
  %call172 = tail call i32 @logs3_add(i32 %score.1300, i32 %add171) #5
  %indvars.iv.next317 = add i64 %indvars.iv316, 1
  %arrayidx124 = getelementptr inbounds i32* %active, i64 %indvars.iv.next317
  %52 = load i32* %arrayidx124, align 4, !tbaa !0
  %cmp125 = icmp sgt i32 %52, -1
  br i1 %cmp125, label %for.body127, label %if.end176

if.end176:                                        ; preds = %for.cond122.preheader, %for.end159, %for.end74, %for.end107
  %score.2 = phi i32 [ %call120, %for.end107 ], [ %score.0.lcssa, %for.end74 ], [ -939524096, %for.cond122.preheader ], [ %call172, %for.end159 ]
  ret i32 %score.2
}

; Function Attrs: optsize
declare i32 @logs3_add(i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @mgau_free(%struct.mgau_model_t* %g) #0 {
entry:
  %tobool = icmp eq %struct.mgau_model_t* %g, null
  br i1 %tobool, label %if.end35, label %if.then

if.then:                                          ; preds = %entry
  %mgau = getelementptr inbounds %struct.mgau_model_t* %g, i64 0, i32 3
  %0 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  %mean = getelementptr inbounds %struct.mgau_t* %0, i64 0, i32 1
  %1 = load float*** %mean, align 8, !tbaa !3
  %tobool1 = icmp eq float** %1, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = bitcast float** %1 to i8*
  tail call void @ckd_free(i8* %2) #5
  %.pre = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %3 = phi %struct.mgau_t* [ %0, %if.then ], [ %.pre, %if.then2 ]
  %var = getelementptr inbounds %struct.mgau_t* %3, i64 0, i32 2
  %4 = load float*** %var, align 8, !tbaa !3
  %tobool8 = icmp eq float** %4, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  %5 = bitcast float** %4 to i8*
  tail call void @ckd_free(i8* %5) #5
  %.pre47 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then9
  %6 = phi %struct.mgau_t* [ %3, %if.end ], [ %.pre47, %if.then9 ]
  %lrd = getelementptr inbounds %struct.mgau_t* %6, i64 0, i32 3
  %7 = load float** %lrd, align 8, !tbaa !3
  %tobool16 = icmp eq float* %7, null
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end13
  %8 = bitcast float* %7 to i8*
  tail call void @ckd_free(i8* %8) #5
  %.pre48 = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.end13, %if.then17
  %9 = phi %struct.mgau_t* [ %6, %if.end13 ], [ %.pre48, %if.then17 ]
  %mixw = getelementptr inbounds %struct.mgau_t* %9, i64 0, i32 4
  %10 = load i32** %mixw, align 8, !tbaa !3
  %tobool24 = icmp eq i32* %10, null
  br i1 %tobool24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end21
  %11 = bitcast i32* %10 to i8*
  tail call void @ckd_free(i8* %11) #5
  %.pr = load %struct.mgau_t** %mgau, align 8, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.end21, %if.then25
  %12 = phi %struct.mgau_t* [ %9, %if.end21 ], [ %.pr, %if.then25 ]
  %tobool31 = icmp eq %struct.mgau_t* %12, null
  br i1 %tobool31, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end29
  %13 = bitcast %struct.mgau_t* %12 to i8*
  tail call void @ckd_free(i8* %13) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %if.then32
  %14 = bitcast %struct.mgau_model_t* %g to i8*
  tail call void @ckd_free(i8* %14) #5
  br label %if.end35

if.end35:                                         ; preds = %entry, %if.end34
  ret void
}

; Function Attrs: optsize
declare void @ckd_free(i8*) #1

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @_myfopen(i8*, i8*, i8*, i32) #1

; Function Attrs: optsize
declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #1

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #1

; Function Attrs: optsize
declare void @bio_hdrarg_free(i8**, i8**) #1

; Function Attrs: optsize
declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #1

; Function Attrs: optsize
declare void @vector_nz_floor(float*, i32, double) #1

; Function Attrs: optsize
declare double @vector_sum_norm(float*, i32) #1

; Function Attrs: optsize
declare i32 @logs3(double) #1

; Function Attrs: optsize
declare void @bio_verify_chksum(%struct._IO_FILE*, i32, i32) #1

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
