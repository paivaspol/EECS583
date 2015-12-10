; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"%8d  %8d  %8d  %15.10e  %15.10e %15.10e\0A\00", align 1
@.str2 = private unnamed_addr constant [47 x i8] c"%8d  %8d  %8d  %8d  %15.10e  %15.10e  %15.10e\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"%10g  %10g  %10g  %10g  %10g  %10g\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ghat.xvg\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"G-Hat\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"%d%d%d%lf%lf%lf\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"%d%d%d%d%lf%lf%lf\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"%lf%lf%lf%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"\0AOpened %s for reading ghat function\0A\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"gridsize: %10d %10d %10d\0A\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"spacing:  %10g %10g %10g\0A\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"    nalias    porder     niter      bSym      beta[X-Z]\0A%10d%10d%10d%10d%10g%10g%10g\0A\00", align 1
@.str19 = private unnamed_addr constant [87 x i8] c"      acut        r1      pval      zval      eref      qopt\0A%10g%10g%10g%10g%10g%10g\0A\00", align 1
@.str20 = private unnamed_addr constant [26 x i8] c"Reading ghat of %d %d %d\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"output.hat\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"\0ASuccessfully read ghat function!\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** nocapture %ghat) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !15), !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !16), !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !17), !dbg !239
  tail call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !18), !dbg !239
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !240
  %div = sdiv i32 %nx, 2, !dbg !240
  %cmp115 = icmp slt i32 %nx, -1, !dbg !240
  br i1 %cmp115, label %for.end64, label %for.body.lr.ph, !dbg !240

for.body.lr.ph:                                   ; preds = %entry
  %div2 = sdiv i32 %ny, 2, !dbg !242
  %cmp3113 = icmp slt i32 %ny, -1, !dbg !242
  %div8 = sdiv i32 %nz, 2, !dbg !245
  %cmp9111 = icmp slt i32 %nz, -1, !dbg !245
  br label %for.body, !dbg !240

for.body:                                         ; preds = %for.inc62, %for.body.lr.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc62 ], [ 0, %for.body.lr.ph ]
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !22), !dbg !248
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20), !dbg !242
  %.pre = trunc i64 %indvars.iv119 to i32, !dbg !240
  br i1 %cmp3113, label %for.inc62, label %for.body4.lr.ph, !dbg !242

for.body4.lr.ph:                                  ; preds = %for.body
  %sub = sub nsw i32 %nx, %.pre, !dbg !248
  %rem = srem i32 %sub, %nx, !dbg !248
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv119, !dbg !249
  %idxprom37 = sext i32 %rem to i64, !dbg !251
  %arrayidx38 = getelementptr inbounds float*** %ghat, i64 %idxprom37, !dbg !251
  br label %for.body4, !dbg !242

for.body4:                                        ; preds = %for.inc59, %for.body4.lr.ph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc59 ], [ 0, %for.body4.lr.ph ]
  tail call void @llvm.dbg.value(metadata !{i32 %rem6}, i64 0, metadata !23), !dbg !252
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !21), !dbg !245
  %.pre121 = trunc i64 %indvars.iv117 to i32, !dbg !242
  br i1 %cmp9111, label %for.inc59, label %for.body10.lr.ph, !dbg !245

for.body10.lr.ph:                                 ; preds = %for.body4
  %sub5 = sub nsw i32 %ny, %.pre121, !dbg !252
  %rem6 = srem i32 %sub5, %ny, !dbg !252
  %0 = load float*** %arrayidx, align 8, !dbg !249, !tbaa !253
  %arrayidx15 = getelementptr inbounds float** %0, i64 %indvars.iv117, !dbg !249
  %1 = load float** %arrayidx15, align 8, !dbg !249, !tbaa !253
  %idxprom18 = sext i32 %rem6 to i64, !dbg !256
  %arrayidx21 = getelementptr inbounds float** %0, i64 %idxprom18, !dbg !256
  %2 = load float** %arrayidx21, align 8, !dbg !256, !tbaa !253
  %3 = load float*** %arrayidx38, align 8, !dbg !251, !tbaa !253
  %arrayidx39 = getelementptr inbounds float** %3, i64 %indvars.iv117, !dbg !251
  %4 = load float** %arrayidx39, align 8, !dbg !251, !tbaa !253
  %arrayidx45 = getelementptr inbounds float** %3, i64 %idxprom18, !dbg !257
  %5 = load float** %arrayidx45, align 8, !dbg !257, !tbaa !253
  br label %for.body10, !dbg !245

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.body10.lr.ph ]
  %6 = trunc i64 %indvars.iv to i32, !dbg !258
  %sub11 = sub nsw i32 %nz, %6, !dbg !258
  %rem12 = srem i32 %sub11, %nz, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %rem12}, i64 0, metadata !24), !dbg !258
  %arrayidx16 = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !249
  %7 = load float* %arrayidx16, align 4, !dbg !249, !tbaa !259
  tail call void @llvm.dbg.value(metadata !{float %7}, i64 0, metadata !25), !dbg !249
  %arrayidx22 = getelementptr inbounds float* %2, i64 %indvars.iv, !dbg !256
  store float %7, float* %arrayidx22, align 4, !dbg !256, !tbaa !259
  %idxprom23 = sext i32 %rem12 to i64, !dbg !260
  %arrayidx28 = getelementptr inbounds float* %1, i64 %idxprom23, !dbg !260
  store float %7, float* %arrayidx28, align 4, !dbg !260, !tbaa !259
  %arrayidx34 = getelementptr inbounds float* %2, i64 %idxprom23, !dbg !261
  store float %7, float* %arrayidx34, align 4, !dbg !261, !tbaa !259
  %arrayidx40 = getelementptr inbounds float* %4, i64 %indvars.iv, !dbg !251
  store float %7, float* %arrayidx40, align 4, !dbg !251, !tbaa !259
  %arrayidx46 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !257
  store float %7, float* %arrayidx46, align 4, !dbg !257, !tbaa !259
  %arrayidx52 = getelementptr inbounds float* %4, i64 %idxprom23, !dbg !262
  store float %7, float* %arrayidx52, align 4, !dbg !262, !tbaa !259
  %arrayidx58 = getelementptr inbounds float* %5, i64 %idxprom23, !dbg !263
  store float %7, float* %arrayidx58, align 4, !dbg !263, !tbaa !259
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !245
  %cmp9 = icmp slt i32 %6, %div8, !dbg !245
  br i1 %cmp9, label %for.body10, label %for.inc59, !dbg !245

for.inc59:                                        ; preds = %for.body4, %for.body10
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !242
  %cmp3 = icmp slt i32 %.pre121, %div2, !dbg !242
  br i1 %cmp3, label %for.body4, label %for.inc62, !dbg !242

for.inc62:                                        ; preds = %for.body, %for.inc59
  %indvars.iv.next120 = add i64 %indvars.iv119, 1, !dbg !240
  %cmp = icmp slt i32 %.pre, %div, !dbg !240
  br i1 %cmp, label %for.body, label %for.end64, !dbg !240

for.end64:                                        ; preds = %for.inc62, %entry
  ret void, !dbg !264
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @mk_ghat(%struct._IO_FILE* nocapture %fp, i32 %nx, i32 %ny, i32 %nz, float*** nocapture %ghat, float* nocapture %box, float %r1, float %rc, i32 %bSym, i32 %bOld) #0 {
entry:
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !87), !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !88), !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !89), !dbg !265
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !90), !dbg !265
  call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !91), !dbg !265
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !92), !dbg !266
  call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !93), !dbg !266
  call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !94), !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %bSym}, i64 0, metadata !95), !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %bOld}, i64 0, metadata !96), !dbg !266
  call void @llvm.dbg.declare(metadata !{[3 x float]* %k}, metadata !105), !dbg !267
  call void @llvm.dbg.declare(metadata !{[3 x float]* %lll}, metadata !110), !dbg !267
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !268
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !269), !dbg !270
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !271), !dbg !270
  %0 = load float* %box, align 4, !dbg !272, !tbaa !259
  %conv.i = fpext float %0 to double, !dbg !272
  %div.i = fdiv double 0x401921FB54442D18, %conv.i, !dbg !272
  %conv1.i = fptrunc double %div.i to float, !dbg !272
  store float %conv1.i, float* %arraydecay, align 4, !dbg !272, !tbaa !259
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1, !dbg !273
  %1 = load float* %arrayidx3.i, align 4, !dbg !273, !tbaa !259
  %conv4.i = fpext float %1 to double, !dbg !273
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i, !dbg !273
  %conv6.i = fptrunc double %div5.i to float, !dbg !273
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !273
  store float %conv6.i, float* %arrayidx7.i, align 4, !dbg !273, !tbaa !259
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2, !dbg !274
  %2 = load float* %arrayidx8.i, align 4, !dbg !274, !tbaa !259
  %conv9.i = fpext float %2 to double, !dbg !274
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i, !dbg !274
  %conv11.i = fptrunc double %div10.i to float, !dbg !274
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !274
  store float %conv11.i, float* %arrayidx12.i, align 4, !dbg !274, !tbaa !259
  %tobool = icmp ne i32 %bSym, 0, !dbg !275
  br i1 %tobool, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  %div = sdiv i32 %nx, 2, !dbg !276
  %add = add nsw i32 %div, 1, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !100), !dbg !276
  %div1 = sdiv i32 %ny, 2, !dbg !278
  %add2 = add nsw i32 %div1, 1, !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !101), !dbg !278
  %div3 = sdiv i32 %nz, 2, !dbg !279
  %add4 = add nsw i32 %div3, 1, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %add4}, i64 0, metadata !102), !dbg !279
  br label %if.end, !dbg !280

if.end:                                           ; preds = %entry, %if.then
  %ixmax.0 = phi i32 [ %add, %if.then ], [ %nx, %entry ]
  %iymax.0 = phi i32 [ %add2, %if.then ], [ %ny, %entry ]
  %izmax.0 = phi i32 [ %add4, %if.then ], [ %nz, %entry ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !97), !dbg !281
  %cmp85 = icmp sgt i32 %ixmax.0, 0, !dbg !281
  br i1 %cmp85, label %for.cond5.preheader.lr.ph, label %for.end51, !dbg !281

for.cond5.preheader.lr.ph:                        ; preds = %if.end
  %cmp683 = icmp sgt i32 %iymax.0, 0, !dbg !283
  %cmp981 = icmp sgt i32 %izmax.0, 0, !dbg !286
  %arraydecay12 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0, !dbg !289
  %arrayidx2.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 1, !dbg !291
  %arrayidx5.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 2, !dbg !291
  %tobool21 = icmp eq i32 %bOld, 0, !dbg !293
  br label %for.cond5.preheader, !dbg !281

for.cond5.preheader:                              ; preds = %for.inc49, %for.cond5.preheader.lr.ph
  %indvars.iv92 = phi i64 [ 0, %for.cond5.preheader.lr.ph ], [ %indvars.iv.next93, %for.inc49 ]
  br i1 %cmp683, label %for.cond8.preheader.lr.ph, label %for.inc49, !dbg !283

for.cond8.preheader.lr.ph:                        ; preds = %for.cond5.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv92, !dbg !295
  br label %for.cond8.preheader, !dbg !283

for.cond8.preheader:                              ; preds = %for.inc46, %for.cond8.preheader.lr.ph
  %indvars.iv88 = phi i64 [ 0, %for.cond8.preheader.lr.ph ], [ %indvars.iv.next89, %for.inc46 ]
  br i1 %cmp981, label %for.body10.lr.ph, label %for.inc46, !dbg !286

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %3 = trunc i64 %indvars.iv88 to i32, !dbg !296
  %4 = trunc i64 %indvars.iv92 to i32, !dbg !296
  %5 = or i64 %indvars.iv88, %indvars.iv92, !dbg !296
  br label %for.body10, !dbg !286

for.body10:                                       ; preds = %if.end41, %for.body10.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %if.end41 ]
  %6 = trunc i64 %indvars.iv to i32, !dbg !289
  call fastcc void @calc_k(float* %arraydecay, i32 %4, i32 %3, i32 %6, i32 %nx, i32 %ny, i32 %nz, float* %arraydecay12) #5, !dbg !289
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !297), !dbg !298
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !299), !dbg !298
  %7 = load float* %arraydecay12, align 4, !dbg !291, !tbaa !259
  %mul.i = fmul float %7, %7, !dbg !291
  %8 = load float* %arrayidx2.i, align 4, !dbg !291, !tbaa !259
  %mul4.i = fmul float %8, %8, !dbg !291
  %add.i = fadd float %mul.i, %mul4.i, !dbg !291
  %9 = load float* %arrayidx5.i, align 4, !dbg !291, !tbaa !259
  %mul7.i = fmul float %9, %9, !dbg !291
  %add8.i = fadd float %add.i, %mul7.i, !dbg !291
  call void @llvm.dbg.value(metadata !{float %add8.i}, i64 0, metadata !103), !dbg !292
  %10 = or i64 %5, %indvars.iv, !dbg !296
  %11 = trunc i64 %10 to i32, !dbg !296
  %12 = icmp eq i32 %11, 0, !dbg !296
  br i1 %12, label %if.end41, label %if.else20, !dbg !296

if.else20:                                        ; preds = %for.body10
  %conv = fpext float %add8.i to double, !dbg !300
  %conv24 = call float @sqrtf(float %add8.i) #3, !dbg !300
  br i1 %tobool21, label %if.else30, label %if.then22, !dbg !293

if.then22:                                        ; preds = %if.else20
  %call25 = call float @gk(float %conv24, float %rc, float %r1) #6, !dbg !300
  %conv26 = fpext float %call25 to double, !dbg !300
  %mul = fmul double %conv, 5.727650e-04, !dbg !300
  %div28 = fdiv double %conv26, %mul, !dbg !300
  %conv29 = fptrunc double %div28 to float, !dbg !300
  call void @llvm.dbg.value(metadata !{float %conv29}, i64 0, metadata !104), !dbg !300
  br label %if.end41, !dbg !300

if.else30:                                        ; preds = %if.else20
  %call34 = call float @gknew(float %conv24, float %rc, float %r1) #6, !dbg !301
  %conv35 = fpext float %call34 to double, !dbg !301
  %mul37 = fmul double %conv, 5.727650e-04, !dbg !301
  %div38 = fdiv double %conv35, %mul37, !dbg !301
  %conv39 = fptrunc double %div38 to float, !dbg !301
  call void @llvm.dbg.value(metadata !{float %conv39}, i64 0, metadata !104), !dbg !301
  br label %if.end41

if.end41:                                         ; preds = %for.body10, %if.then22, %if.else30
  %ggg.0 = phi float [ %conv29, %if.then22 ], [ %conv39, %if.else30 ], [ 0.000000e+00, %for.body10 ]
  %13 = load float*** %arrayidx, align 8, !dbg !295, !tbaa !253
  %arrayidx44 = getelementptr inbounds float** %13, i64 %indvars.iv88, !dbg !295
  %14 = load float** %arrayidx44, align 8, !dbg !295, !tbaa !253
  %arrayidx45 = getelementptr inbounds float* %14, i64 %indvars.iv, !dbg !295
  store float %ggg.0, float* %arrayidx45, align 4, !dbg !295, !tbaa !259
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !286
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !286
  %exitcond = icmp eq i32 %lftr.wideiv, %izmax.0, !dbg !286
  br i1 %exitcond, label %for.inc46, label %for.body10, !dbg !286

for.inc46:                                        ; preds = %if.end41, %for.cond8.preheader
  %indvars.iv.next89 = add i64 %indvars.iv88, 1, !dbg !283
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32, !dbg !283
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %iymax.0, !dbg !283
  br i1 %exitcond91, label %for.inc49, label %for.cond8.preheader, !dbg !283

for.inc49:                                        ; preds = %for.inc46, %for.cond5.preheader
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !281
  %lftr.wideiv94 = trunc i64 %indvars.iv.next93 to i32, !dbg !281
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %ixmax.0, !dbg !281
  br i1 %exitcond95, label %for.end51, label %for.cond5.preheader, !dbg !281

for.end51:                                        ; preds = %for.inc49, %if.end
  br i1 %tobool, label %if.then53, label %if.end54, !dbg !302

if.then53:                                        ; preds = %for.end51
  call void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** %ghat) #5, !dbg !303
  br label %if.end54, !dbg !303

if.end54:                                         ; preds = %if.then53, %for.end51
  ret void, !dbg !304
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @calc_k(float* nocapture %lll, i32 %ix, i32 %iy, i32 %iz, i32 %nx, i32 %ny, i32 %nz, float* nocapture %k) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %lll}, i64 0, metadata !225), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !226), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !227), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %iz}, i64 0, metadata !228), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !229), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !230), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !231), !dbg !305
  tail call void @llvm.dbg.value(metadata !{float* %k}, i64 0, metadata !232), !dbg !305
  %div = sdiv i32 %nx, 2, !dbg !306
  %cmp = icmp slt i32 %div, %ix, !dbg !306
  br i1 %cmp, label %cond.false, label %cond.true, !dbg !306

cond.true:                                        ; preds = %entry
  %conv = sitofp i32 %ix to float, !dbg !306
  %0 = load float* %lll, align 4, !dbg !306, !tbaa !259
  %mul = fmul float %conv, %0, !dbg !306
  br label %cond.end, !dbg !306

cond.false:                                       ; preds = %entry
  %sub = sub nsw i32 %ix, %nx, !dbg !306
  %conv1 = sitofp i32 %sub to float, !dbg !306
  %1 = load float* %lll, align 4, !dbg !306, !tbaa !259
  %mul3 = fmul float %conv1, %1, !dbg !306
  br label %cond.end, !dbg !306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul, %cond.true ], [ %mul3, %cond.false ], !dbg !306
  store float %cond, float* %k, align 4, !dbg !306, !tbaa !259
  %div5 = sdiv i32 %ny, 2, !dbg !308
  %cmp6 = icmp slt i32 %div5, %iy, !dbg !308
  br i1 %cmp6, label %cond.false12, label %cond.true8, !dbg !308

cond.true8:                                       ; preds = %cond.end
  %conv9 = sitofp i32 %iy to float, !dbg !308
  %arrayidx10 = getelementptr inbounds float* %lll, i64 1, !dbg !308
  %2 = load float* %arrayidx10, align 4, !dbg !308, !tbaa !259
  %mul11 = fmul float %conv9, %2, !dbg !308
  br label %cond.end17, !dbg !308

cond.false12:                                     ; preds = %cond.end
  %sub13 = sub nsw i32 %iy, %ny, !dbg !308
  %conv14 = sitofp i32 %sub13 to float, !dbg !308
  %arrayidx15 = getelementptr inbounds float* %lll, i64 1, !dbg !308
  %3 = load float* %arrayidx15, align 4, !dbg !308, !tbaa !259
  %mul16 = fmul float %conv14, %3, !dbg !308
  br label %cond.end17, !dbg !308

cond.end17:                                       ; preds = %cond.false12, %cond.true8
  %cond18 = phi float [ %mul11, %cond.true8 ], [ %mul16, %cond.false12 ], !dbg !308
  %arrayidx19 = getelementptr inbounds float* %k, i64 1, !dbg !308
  store float %cond18, float* %arrayidx19, align 4, !dbg !308, !tbaa !259
  %div20 = sdiv i32 %nz, 2, !dbg !309
  %cmp21 = icmp slt i32 %div20, %iz, !dbg !309
  br i1 %cmp21, label %cond.false27, label %cond.true23, !dbg !309

cond.true23:                                      ; preds = %cond.end17
  %conv24 = sitofp i32 %iz to float, !dbg !309
  %arrayidx25 = getelementptr inbounds float* %lll, i64 2, !dbg !309
  %4 = load float* %arrayidx25, align 4, !dbg !309, !tbaa !259
  %mul26 = fmul float %conv24, %4, !dbg !309
  br label %cond.end32, !dbg !309

cond.false27:                                     ; preds = %cond.end17
  %sub28 = sub nsw i32 %iz, %nz, !dbg !309
  %conv29 = sitofp i32 %sub28 to float, !dbg !309
  %arrayidx30 = getelementptr inbounds float* %lll, i64 2, !dbg !309
  %5 = load float* %arrayidx30, align 4, !dbg !309, !tbaa !259
  %mul31 = fmul float %conv29, %5, !dbg !309
  br label %cond.end32, !dbg !309

cond.end32:                                       ; preds = %cond.false27, %cond.true23
  %cond33 = phi float [ %mul26, %cond.true23 ], [ %mul31, %cond.false27 ], !dbg !309
  %arrayidx34 = getelementptr inbounds float* %k, i64 2, !dbg !309
  store float %cond33, float* %arrayidx34, align 4, !dbg !309, !tbaa !259
  ret void, !dbg !310
}

; Function Attrs: optsize
declare float @gk(float, float, float) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: optsize
declare float @gknew(float, float, float) #2

; Function Attrs: nounwind optsize uwtable
define void @wr_ghat(i8* %fn, i32 %n1max, i32 %n2max, i32 %n3max, float %h1, float %h2, float %h3, float*** nocapture %ghat, i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, float* nocapture %beta, float %r1, float %rc, float %pval, float %zval, float %eref, float %qopt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !115), !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %n1max}, i64 0, metadata !116), !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %n2max}, i64 0, metadata !117), !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %n3max}, i64 0, metadata !118), !dbg !311
  tail call void @llvm.dbg.value(metadata !{float %h1}, i64 0, metadata !119), !dbg !311
  tail call void @llvm.dbg.value(metadata !{float %h2}, i64 0, metadata !120), !dbg !311
  tail call void @llvm.dbg.value(metadata !{float %h3}, i64 0, metadata !121), !dbg !311
  tail call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !122), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %nalias}, i64 0, metadata !123), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %porder}, i64 0, metadata !124), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %niter}, i64 0, metadata !125), !dbg !312
  tail call void @llvm.dbg.value(metadata !{i32 %bSym}, i64 0, metadata !126), !dbg !312
  tail call void @llvm.dbg.value(metadata !{float* %beta}, i64 0, metadata !127), !dbg !312
  tail call void @llvm.dbg.value(metadata !{float %r1}, i64 0, metadata !128), !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %rc}, i64 0, metadata !129), !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %pval}, i64 0, metadata !130), !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %zval}, i64 0, metadata !131), !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %eref}, i64 0, metadata !132), !dbg !313
  tail call void @llvm.dbg.value(metadata !{float %qopt}, i64 0, metadata !133), !dbg !313
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !314
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !315
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !134), !dbg !315
  %conv = fpext float %h1 to double, !dbg !316
  %conv1 = fpext float %h2 to double, !dbg !316
  %conv2 = fpext float %h3 to double, !dbg !316
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %n1max, i32 %n2max, i32 %n3max, double %conv, double %conv1, double %conv2) #6, !dbg !316
  %0 = load float* %beta, align 4, !dbg !317, !tbaa !259
  %conv4 = fpext float %0 to double, !dbg !317
  %arrayidx5 = getelementptr inbounds float* %beta, i64 1, !dbg !317
  %1 = load float* %arrayidx5, align 4, !dbg !317, !tbaa !259
  %conv6 = fpext float %1 to double, !dbg !317
  %arrayidx7 = getelementptr inbounds float* %beta, i64 2, !dbg !317
  %2 = load float* %arrayidx7, align 4, !dbg !317, !tbaa !259
  %conv8 = fpext float %2 to double, !dbg !317
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([47 x i8]* @.str2, i64 0, i64 0), i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, double %conv4, double %conv6, double %conv8) #6, !dbg !317
  %conv10 = fpext float %rc to double, !dbg !318
  %conv11 = fpext float %r1 to double, !dbg !318
  %conv12 = fpext float %pval to double, !dbg !318
  %conv13 = fpext float %zval to double, !dbg !318
  %conv14 = fpext float %eref to double, !dbg !318
  %conv15 = fpext float %qopt to double, !dbg !318
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), double %conv10, double %conv11, double %conv12, double %conv13, double %conv14, double %conv15) #6, !dbg !318
  %tobool = icmp eq i32 %bSym, 0, !dbg !319
  br i1 %tobool, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  %div = sdiv i32 %n1max, 2, !dbg !320
  %add = add nsw i32 %div, 1, !dbg !320
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !135), !dbg !320
  %div17 = sdiv i32 %n2max, 2, !dbg !322
  %add18 = add nsw i32 %div17, 1, !dbg !322
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !136), !dbg !322
  %div19 = sdiv i32 %n3max, 2, !dbg !323
  %add20 = add nsw i32 %div19, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata !{i32 %add20}, i64 0, metadata !137), !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %entry, %if.then
  %N3MAX.0 = phi i32 [ %add20, %if.then ], [ %n3max, %entry ]
  %N2MAX.0 = phi i32 [ %add18, %if.then ], [ %n2max, %entry ]
  %N1MAX.0 = phi i32 [ %add, %if.then ], [ %n1max, %entry ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !325
  %cmp155 = icmp sgt i32 %N1MAX.0, 0, !dbg !325
  br i1 %cmp155, label %for.cond22.preheader.lr.ph, label %for.end52, !dbg !325

for.cond22.preheader.lr.ph:                       ; preds = %if.end
  %cmp23151 = icmp sgt i32 %N2MAX.0, 0, !dbg !327
  %cmp27148 = icmp sgt i32 %N3MAX.0, 0, !dbg !330
  br label %for.cond22.preheader, !dbg !325

for.cond22.preheader:                             ; preds = %for.inc50, %for.cond22.preheader.lr.ph
  %indvars.iv174 = phi i64 [ 0, %for.cond22.preheader.lr.ph ], [ %indvars.iv.next175, %for.inc50 ]
  %bNL.0156 = phi i32 [ 0, %for.cond22.preheader.lr.ph ], [ %bNL.1.lcssa, %for.inc50 ]
  br i1 %cmp23151, label %for.cond26.preheader.lr.ph, label %for.inc50, !dbg !327

for.cond26.preheader.lr.ph:                       ; preds = %for.cond22.preheader
  %arrayidx32 = getelementptr inbounds float*** %ghat, i64 %indvars.iv174, !dbg !333
  br label %for.cond26.preheader, !dbg !327

for.cond26.preheader:                             ; preds = %for.inc47, %for.cond26.preheader.lr.ph
  %indvars.iv170 = phi i64 [ 0, %for.cond26.preheader.lr.ph ], [ %indvars.iv.next171, %for.inc47 ]
  %bNL.1152 = phi i32 [ %bNL.0156, %for.cond26.preheader.lr.ph ], [ %bNL.2.lcssa, %for.inc47 ]
  br i1 %cmp27148, label %for.body29, label %for.end, !dbg !330

for.body29:                                       ; preds = %for.cond26.preheader, %for.inc
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %for.inc ], [ 0, %for.cond26.preheader ]
  %nn.0150 = phi i32 [ %inc42, %for.inc ], [ 1, %for.cond26.preheader ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !138), !dbg !335
  %3 = load float*** %arrayidx32, align 8, !dbg !333, !tbaa !253
  %arrayidx33 = getelementptr inbounds float** %3, i64 %indvars.iv170, !dbg !333
  %4 = load float** %arrayidx33, align 8, !dbg !333, !tbaa !253
  %arrayidx34 = getelementptr inbounds float* %4, i64 %indvars.iv166, !dbg !333
  %5 = load float* %arrayidx34, align 4, !dbg !333, !tbaa !259
  %conv35 = fpext float %5 to double, !dbg !333
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %conv35) #6, !dbg !333
  %rem = srem i32 %nn.0150, 6, !dbg !336
  %cmp37 = icmp eq i32 %rem, 0, !dbg !336
  br i1 %cmp37, label %if.then39, label %for.inc, !dbg !336

if.then39:                                        ; preds = %for.body29
  %fputc139 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call), !dbg !337
  tail call void @llvm.dbg.value(metadata !339, i64 0, metadata !138), !dbg !340
  br label %for.inc, !dbg !341

for.inc:                                          ; preds = %for.body29, %if.then39
  %bNL.3 = phi i32 [ 1, %if.then39 ], [ 0, %for.body29 ]
  %indvars.iv.next167 = add i64 %indvars.iv166, 1, !dbg !330
  %inc42 = add nsw i32 %nn.0150, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !145), !dbg !330
  %lftr.wideiv168 = trunc i64 %indvars.iv.next167 to i32, !dbg !330
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %N3MAX.0, !dbg !330
  br i1 %exitcond169, label %for.end, label %for.body29, !dbg !330

for.end:                                          ; preds = %for.inc, %for.cond26.preheader
  %bNL.2.lcssa = phi i32 [ %bNL.1152, %for.cond26.preheader ], [ %bNL.3, %for.inc ]
  %tobool43 = icmp eq i32 %bNL.2.lcssa, 0, !dbg !342
  br i1 %tobool43, label %if.then44, label %for.inc47, !dbg !342

if.then44:                                        ; preds = %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call), !dbg !343
  br label %for.inc47, !dbg !343

for.inc47:                                        ; preds = %for.end, %if.then44
  %indvars.iv.next171 = add i64 %indvars.iv170, 1, !dbg !327
  %lftr.wideiv172 = trunc i64 %indvars.iv.next171 to i32, !dbg !327
  %exitcond173 = icmp eq i32 %lftr.wideiv172, %N2MAX.0, !dbg !327
  br i1 %exitcond173, label %for.inc50, label %for.cond26.preheader, !dbg !327

for.inc50:                                        ; preds = %for.inc47, %for.cond22.preheader
  %bNL.1.lcssa = phi i32 [ %bNL.0156, %for.cond22.preheader ], [ %bNL.2.lcssa, %for.inc47 ]
  %indvars.iv.next175 = add i64 %indvars.iv174, 1, !dbg !325
  %lftr.wideiv176 = trunc i64 %indvars.iv.next175 to i32, !dbg !325
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %N1MAX.0, !dbg !325
  br i1 %exitcond177, label %for.end52, label %for.cond22.preheader, !dbg !325

for.end52:                                        ; preds = %for.inc50, %if.end
  tail call void @ffclose(%struct._IO_FILE* %call) #6, !dbg !344
  %call53 = tail call %struct._IO_FILE* @xvgropen(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !345
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call53}, i64 0, metadata !134), !dbg !345
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !346
  br i1 %cmp155, label %for.body57.lr.ph, label %for.end94, !dbg !346

for.body57.lr.ph:                                 ; preds = %for.end52
  %cmp61144 = icmp sgt i32 %N2MAX.0, 0, !dbg !348
  %cmp69142 = icmp sgt i32 %N3MAX.0, 0, !dbg !351
  br label %for.body57, !dbg !346

for.body57:                                       ; preds = %for.inc92, %for.body57.lr.ph
  %indvars.iv162 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next163, %for.inc92 ]
  %6 = trunc i64 %indvars.iv162 to i32, !dbg !354
  %conv58 = sitofp i32 %6 to float, !dbg !354
  %mul = fmul float %conv58, %h1, !dbg !354
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !355), !dbg !356
  %mul.i = fmul float %mul, %mul, !dbg !357
  tail call void @llvm.dbg.value(metadata !{float %mul.i}, i64 0, metadata !139), !dbg !354
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !143), !dbg !348
  br i1 %cmp61144, label %for.body63.lr.ph, label %for.inc92, !dbg !348

for.body63.lr.ph:                                 ; preds = %for.body57
  %arrayidx81 = getelementptr inbounds float*** %ghat, i64 %indvars.iv162, !dbg !358
  br label %for.body63, !dbg !348

for.body63:                                       ; preds = %for.inc89, %for.body63.lr.ph
  %indvars.iv158 = phi i64 [ 0, %for.body63.lr.ph ], [ %indvars.iv.next159, %for.inc89 ]
  %7 = trunc i64 %indvars.iv158 to i32, !dbg !360
  %conv64 = sitofp i32 %7 to float, !dbg !360
  %mul65 = fmul float %conv64, %h2, !dbg !360
  tail call void @llvm.dbg.value(metadata !{float %mul65}, i64 0, metadata !361), !dbg !362
  %mul.i141 = fmul float %mul65, %mul65, !dbg !363
  %add67 = fadd float %mul.i, %mul.i141, !dbg !360
  tail call void @llvm.dbg.value(metadata !{float %add67}, i64 0, metadata !140), !dbg !360
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !351
  br i1 %cmp69142, label %for.body71, label %for.inc89, !dbg !351

for.body71:                                       ; preds = %for.body63, %for.body71
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body71 ], [ 0, %for.body63 ]
  %8 = trunc i64 %indvars.iv to i32, !dbg !364
  %conv72 = sitofp i32 %8 to float, !dbg !364
  %mul73 = fmul float %conv72, %h3, !dbg !364
  tail call void @llvm.dbg.value(metadata !{float %mul73}, i64 0, metadata !365), !dbg !366
  %mul.i140 = fmul float %mul73, %mul73, !dbg !367
  %add75 = fadd float %add67, %mul.i140, !dbg !364
  tail call void @llvm.dbg.value(metadata !{float %add75}, i64 0, metadata !141), !dbg !364
  %conv76 = fpext float %add75 to double, !dbg !358
  %call77 = tail call double @sqrt(double %conv76) #6, !dbg !358
  %9 = load float*** %arrayidx81, align 8, !dbg !358, !tbaa !253
  %arrayidx82 = getelementptr inbounds float** %9, i64 %indvars.iv158, !dbg !358
  %10 = load float** %arrayidx82, align 8, !dbg !358, !tbaa !253
  %arrayidx83 = getelementptr inbounds float* %10, i64 %indvars.iv, !dbg !358
  %11 = load float* %arrayidx83, align 4, !dbg !358, !tbaa !259
  %conv84 = fpext float %11 to double, !dbg !358
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call53, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %call77, double %conv84) #6, !dbg !358
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !351
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !351
  %exitcond = icmp eq i32 %lftr.wideiv, %N3MAX.0, !dbg !351
  br i1 %exitcond, label %for.inc89, label %for.body71, !dbg !351

for.inc89:                                        ; preds = %for.body71, %for.body63
  %indvars.iv.next159 = add i64 %indvars.iv158, 1, !dbg !348
  %lftr.wideiv160 = trunc i64 %indvars.iv.next159 to i32, !dbg !348
  %exitcond161 = icmp eq i32 %lftr.wideiv160, %N2MAX.0, !dbg !348
  br i1 %exitcond161, label %for.inc92, label %for.body63, !dbg !348

for.inc92:                                        ; preds = %for.inc89, %for.body57
  %indvars.iv.next163 = add i64 %indvars.iv162, 1, !dbg !346
  %lftr.wideiv164 = trunc i64 %indvars.iv.next163 to i32, !dbg !346
  %exitcond165 = icmp eq i32 %lftr.wideiv164, %N1MAX.0, !dbg !346
  br i1 %exitcond165, label %for.end94, label %for.body57, !dbg !346

for.end94:                                        ; preds = %for.inc92, %for.end52
  tail call void @ffclose(%struct._IO_FILE* %call53) #6, !dbg !368
  ret void, !dbg !369
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @xvgropen(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @pr_scalar_gk(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float* nocapture %box, float*** nocapture %ghat) #0 {
entry:
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !150), !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !151), !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !152), !dbg !370
  call void @llvm.dbg.value(metadata !{i32 %nz}, i64 0, metadata !153), !dbg !370
  call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !154), !dbg !370
  call void @llvm.dbg.value(metadata !{float*** %ghat}, i64 0, metadata !155), !dbg !370
  call void @llvm.dbg.declare(metadata !{[3 x float]* %k}, metadata !161), !dbg !371
  call void @llvm.dbg.declare(metadata !{[3 x float]* %lll}, metadata !162), !dbg !371
  %arraydecay = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !372
  tail call void @llvm.dbg.value(metadata !{float* %box}, i64 0, metadata !373), !dbg !374
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !375), !dbg !374
  %0 = load float* %box, align 4, !dbg !376, !tbaa !259
  %conv.i = fpext float %0 to double, !dbg !376
  %div.i = fdiv double 0x401921FB54442D18, %conv.i, !dbg !376
  %conv1.i = fptrunc double %div.i to float, !dbg !376
  store float %conv1.i, float* %arraydecay, align 4, !dbg !376, !tbaa !259
  %arrayidx3.i = getelementptr inbounds float* %box, i64 1, !dbg !377
  %1 = load float* %arrayidx3.i, align 4, !dbg !377, !tbaa !259
  %conv4.i = fpext float %1 to double, !dbg !377
  %div5.i = fdiv double 0x401921FB54442D18, %conv4.i, !dbg !377
  %conv6.i = fptrunc double %div5.i to float, !dbg !377
  %arrayidx7.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !377
  store float %conv6.i, float* %arrayidx7.i, align 4, !dbg !377, !tbaa !259
  %arrayidx8.i = getelementptr inbounds float* %box, i64 2, !dbg !378
  %2 = load float* %arrayidx8.i, align 4, !dbg !378, !tbaa !259
  %conv9.i = fpext float %2 to double, !dbg !378
  %div10.i = fdiv double 0x401921FB54442D18, %conv9.i, !dbg !378
  %conv11.i = fptrunc double %div10.i to float, !dbg !378
  %arrayidx12.i = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !378
  store float %conv11.i, float* %arrayidx12.i, align 4, !dbg !378, !tbaa !259
  %call = call %struct._IO_FILE* @xvgropen(i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !379
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !156), !dbg !379
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !380
  %cmp41 = icmp sgt i32 %nx, 0, !dbg !380
  br i1 %cmp41, label %for.cond1.preheader.lr.ph, label %for.end22, !dbg !380

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp239 = icmp sgt i32 %ny, 0, !dbg !382
  %cmp537 = icmp sgt i32 %nz, 0, !dbg !385
  %arraydecay8 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0, !dbg !388
  %arrayidx2.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 1, !dbg !390
  %arrayidx5.i = getelementptr inbounds [3 x float]* %k, i64 0, i64 2, !dbg !390
  br label %for.cond1.preheader, !dbg !380

for.cond1.preheader:                              ; preds = %for.inc20, %for.cond1.preheader.lr.ph
  %indvars.iv47 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next48, %for.inc20 ]
  br i1 %cmp239, label %for.cond4.preheader.lr.ph, label %for.inc20, !dbg !382

for.cond4.preheader.lr.ph:                        ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float*** %ghat, i64 %indvars.iv47, !dbg !393
  br label %for.cond4.preheader, !dbg !382

for.cond4.preheader:                              ; preds = %for.inc17, %for.cond4.preheader.lr.ph
  %indvars.iv43 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next44, %for.inc17 ]
  br i1 %cmp537, label %for.body6, label %for.inc17, !dbg !385

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %3 = trunc i64 %indvars.iv to i32, !dbg !388
  %4 = trunc i64 %indvars.iv43 to i32, !dbg !388
  %5 = trunc i64 %indvars.iv47 to i32, !dbg !388
  call fastcc void @calc_k(float* %arraydecay, i32 %5, i32 %4, i32 %3, i32 %nx, i32 %ny, i32 %nz, float* %arraydecay8) #5, !dbg !388
  call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !394) #4, !dbg !395
  %6 = load float* %arraydecay8, align 4, !dbg !390, !tbaa !259
  %mul.i = fmul float %6, %6, !dbg !390
  %7 = load float* %arrayidx2.i, align 4, !dbg !390, !tbaa !259
  %mul4.i = fmul float %7, %7, !dbg !390
  %add.i = fadd float %mul.i, %mul4.i, !dbg !390
  %8 = load float* %arrayidx5.i, align 4, !dbg !390, !tbaa !259
  %mul7.i = fmul float %8, %8, !dbg !390
  %add8.i = fadd float %add.i, %mul7.i, !dbg !390
  %conv9.i36 = call float @sqrtf(float %add8.i) #3, !dbg !390
  call void @llvm.dbg.value(metadata !{float %conv9.i36}, i64 0, metadata !160), !dbg !392
  %conv = fpext float %conv9.i36 to double, !dbg !393
  %9 = load float*** %arrayidx, align 8, !dbg !393, !tbaa !253
  %arrayidx13 = getelementptr inbounds float** %9, i64 %indvars.iv43, !dbg !393
  %10 = load float** %arrayidx13, align 8, !dbg !393, !tbaa !253
  %arrayidx14 = getelementptr inbounds float* %10, i64 %indvars.iv, !dbg !393
  %11 = load float* %arrayidx14, align 4, !dbg !393, !tbaa !259
  %conv15 = fpext float %11 to double, !dbg !393
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %conv, double %conv15) #6, !dbg !393
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !385
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !385
  %exitcond = icmp eq i32 %lftr.wideiv, %nz, !dbg !385
  br i1 %exitcond, label %for.inc17, label %for.body6, !dbg !385

for.inc17:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next44 = add i64 %indvars.iv43, 1, !dbg !382
  %lftr.wideiv45 = trunc i64 %indvars.iv.next44 to i32, !dbg !382
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %ny, !dbg !382
  br i1 %exitcond46, label %for.inc20, label %for.cond4.preheader, !dbg !382

for.inc20:                                        ; preds = %for.inc17, %for.cond1.preheader
  %indvars.iv.next48 = add i64 %indvars.iv47, 1, !dbg !380
  %lftr.wideiv49 = trunc i64 %indvars.iv.next48 to i32, !dbg !380
  %exitcond50 = icmp eq i32 %lftr.wideiv49, %nx, !dbg !380
  br i1 %exitcond50, label %for.end22, label %for.cond1.preheader, !dbg !380

for.end22:                                        ; preds = %for.inc20, %entry
  call void @ffclose(%struct._IO_FILE* %call) #6, !dbg !396
  ret void, !dbg !397
}

; Function Attrs: nounwind optsize uwtable
define float*** @rd_ghat(%struct._IO_FILE* nocapture %log, i8* %fn, i32* nocapture %igrid, float* nocapture %gridspace, float* nocapture %beta, i32* %porder, float* nocapture %r1, float* nocapture %rc) #0 {
entry:
  %gx = alloca double, align 8
  %gy = alloca double, align 8
  %gz = alloca double, align 8
  %alX = alloca double, align 8
  %alY = alloca double, align 8
  %alZ = alloca double, align 8
  %ddd = alloca double, align 8
  %acut = alloca double, align 8
  %pval = alloca double, align 8
  %zval = alloca double, align 8
  %eref = alloca double, align 8
  %qopt = alloca double, align 8
  %r11 = alloca double, align 8
  %nalias = alloca i32, align 4
  %niter = alloca i32, align 4
  %bSym = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !168), !dbg !398
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !169), !dbg !398
  call void @llvm.dbg.value(metadata !{i32* %igrid}, i64 0, metadata !170), !dbg !398
  call void @llvm.dbg.value(metadata !{float* %gridspace}, i64 0, metadata !171), !dbg !398
  call void @llvm.dbg.value(metadata !{float* %beta}, i64 0, metadata !172), !dbg !399
  call void @llvm.dbg.value(metadata !{i32* %porder}, i64 0, metadata !173), !dbg !399
  call void @llvm.dbg.value(metadata !{float* %r1}, i64 0, metadata !174), !dbg !399
  call void @llvm.dbg.value(metadata !{float* %rc}, i64 0, metadata !175), !dbg !399
  call void @llvm.dbg.declare(metadata !{double* %gx}, metadata !178), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %gy}, metadata !180), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %gz}, metadata !181), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %alX}, metadata !182), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %alY}, metadata !183), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %alZ}, metadata !184), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %ddd}, metadata !185), !dbg !400
  call void @llvm.dbg.declare(metadata !{double* %acut}, metadata !186), !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %pval}, metadata !187), !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %zval}, metadata !188), !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %eref}, metadata !189), !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %qopt}, metadata !190), !dbg !401
  call void @llvm.dbg.declare(metadata !{double* %r11}, metadata !191), !dbg !401
  call void @llvm.dbg.declare(metadata !{i32* %nalias}, metadata !192), !dbg !402
  call void @llvm.dbg.declare(metadata !{i32* %niter}, metadata !193), !dbg !402
  call void @llvm.dbg.declare(metadata !{i32* %bSym}, metadata !194), !dbg !402
  call void @llvm.dbg.declare(metadata !{i32* %ix}, metadata !195), !dbg !403
  call void @llvm.dbg.declare(metadata !{i32* %iy}, metadata !196), !dbg !403
  call void @llvm.dbg.declare(metadata !{i32* %iz}, metadata !197), !dbg !403
  %call = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #6, !dbg !404
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !176), !dbg !404
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i32* %ix, i32* %iy, i32* %iz, double* %gx, double* %gy, double* %gz) #6, !dbg !405
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !406
  %0 = load i32* %ix, align 4, !dbg !406, !tbaa !407
  store i32 %0, i32* %igrid, align 4, !dbg !406, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !406
  %1 = load i32* %iy, align 4, !dbg !406, !tbaa !407
  %arrayidx2 = getelementptr inbounds i32* %igrid, i64 1, !dbg !406
  store i32 %1, i32* %arrayidx2, align 4, !dbg !406, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !406
  %2 = load i32* %iz, align 4, !dbg !406, !tbaa !407
  %arrayidx3 = getelementptr inbounds i32* %igrid, i64 2, !dbg !406
  store i32 %2, i32* %arrayidx3, align 4, !dbg !406, !tbaa !407
  call void @llvm.dbg.value(metadata !{double* %gx}, i64 0, metadata !178), !dbg !408
  %3 = load double* %gx, align 8, !dbg !408, !tbaa !409
  %conv = fptrunc double %3 to float, !dbg !408
  store float %conv, float* %gridspace, align 4, !dbg !408, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %gy}, i64 0, metadata !180), !dbg !408
  %4 = load double* %gy, align 8, !dbg !408, !tbaa !409
  %conv5 = fptrunc double %4 to float, !dbg !408
  %arrayidx6 = getelementptr inbounds float* %gridspace, i64 1, !dbg !408
  store float %conv5, float* %arrayidx6, align 4, !dbg !408, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %gz}, i64 0, metadata !181), !dbg !408
  %5 = load double* %gz, align 8, !dbg !408, !tbaa !409
  %conv7 = fptrunc double %5 to float, !dbg !408
  %arrayidx8 = getelementptr inbounds float* %gridspace, i64 2, !dbg !408
  store float %conv7, float* %arrayidx8, align 4, !dbg !408, !tbaa !259
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i32* %nalias, i32* %porder, i32* %niter, i32* %bSym, double* %alX, double* %alY, double* %alZ) #6, !dbg !410
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), double* %acut, double* %r11, double* %pval, double* %zval, double* %eref, double* %qopt) #6, !dbg !411
  call void @llvm.dbg.value(metadata !{double* %r11}, i64 0, metadata !191), !dbg !412
  %6 = load double* %r11, align 8, !dbg !412, !tbaa !409
  %conv11 = fptrunc double %6 to float, !dbg !412
  store float %conv11, float* %r1, align 4, !dbg !412, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %acut}, i64 0, metadata !186), !dbg !413
  %7 = load double* %acut, align 8, !dbg !413, !tbaa !409
  %conv12 = fptrunc double %7 to float, !dbg !413
  store float %conv12, float* %rc, align 4, !dbg !413, !tbaa !259
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %fn) #6, !dbg !414
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !415
  %8 = load i32* %ix, align 4, !dbg !415, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !415
  %9 = load i32* %iy, align 4, !dbg !415, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !415
  %10 = load i32* %iz, align 4, !dbg !415, !tbaa !407
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %8, i32 %9, i32 %10) #6, !dbg !415
  call void @llvm.dbg.value(metadata !{double* %gx}, i64 0, metadata !178), !dbg !416
  %11 = load double* %gx, align 8, !dbg !416, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %gy}, i64 0, metadata !180), !dbg !416
  %12 = load double* %gy, align 8, !dbg !416, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %gz}, i64 0, metadata !181), !dbg !416
  %13 = load double* %gz, align 8, !dbg !416, !tbaa !409
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), double %11, double %12, double %13) #6, !dbg !416
  call void @llvm.dbg.value(metadata !{i32* %nalias}, i64 0, metadata !192), !dbg !417
  %14 = load i32* %nalias, align 4, !dbg !417, !tbaa !407
  %15 = load i32* %porder, align 4, !dbg !417, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !193), !dbg !417
  %16 = load i32* %niter, align 4, !dbg !417, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %bSym}, i64 0, metadata !194), !dbg !417
  %17 = load i32* %bSym, align 4, !dbg !417, !tbaa !407
  call void @llvm.dbg.value(metadata !{double* %alX}, i64 0, metadata !182), !dbg !417
  %18 = load double* %alX, align 8, !dbg !417, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %alY}, i64 0, metadata !183), !dbg !417
  %19 = load double* %alY, align 8, !dbg !417, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %alZ}, i64 0, metadata !184), !dbg !417
  %20 = load double* %alZ, align 8, !dbg !417, !tbaa !409
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17, double %18, double %19, double %20) #6, !dbg !417
  call void @llvm.dbg.value(metadata !{double* %acut}, i64 0, metadata !186), !dbg !418
  %21 = load double* %acut, align 8, !dbg !418, !tbaa !409
  %22 = load float* %r1, align 4, !dbg !418, !tbaa !259
  %conv17 = fpext float %22 to double, !dbg !418
  call void @llvm.dbg.value(metadata !{double* %pval}, i64 0, metadata !187), !dbg !418
  %23 = load double* %pval, align 8, !dbg !418, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %zval}, i64 0, metadata !188), !dbg !418
  %24 = load double* %zval, align 8, !dbg !418, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %eref}, i64 0, metadata !189), !dbg !418
  %25 = load double* %eref, align 8, !dbg !418, !tbaa !409
  call void @llvm.dbg.value(metadata !{double* %qopt}, i64 0, metadata !190), !dbg !418
  %26 = load double* %qopt, align 8, !dbg !418, !tbaa !409
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([87 x i8]* @.str19, i64 0, i64 0), double %21, double %conv17, double %23, double %24, double %25, double %26) #6, !dbg !418
  %call19 = call i32 @fflush(%struct._IO_FILE* %log) #6, !dbg !419
  call void @llvm.dbg.value(metadata !{double* %alX}, i64 0, metadata !182), !dbg !420
  %27 = load double* %alX, align 8, !dbg !420, !tbaa !409
  %conv20 = fptrunc double %27 to float, !dbg !420
  store float %conv20, float* %beta, align 4, !dbg !420, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %alY}, i64 0, metadata !183), !dbg !421
  %28 = load double* %alY, align 8, !dbg !421, !tbaa !409
  %conv22 = fptrunc double %28 to float, !dbg !421
  %arrayidx23 = getelementptr inbounds float* %beta, i64 1, !dbg !421
  store float %conv22, float* %arrayidx23, align 4, !dbg !421, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %alZ}, i64 0, metadata !184), !dbg !422
  %29 = load double* %alZ, align 8, !dbg !422, !tbaa !409
  %conv24 = fptrunc double %29 to float, !dbg !422
  %arrayidx25 = getelementptr inbounds float* %beta, i64 2, !dbg !422
  store float %conv24, float* %arrayidx25, align 4, !dbg !422, !tbaa !259
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !423
  %30 = load i32* %ix, align 4, !dbg !423, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !423
  %31 = load i32* %iy, align 4, !dbg !423, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !423
  %32 = load i32* %iz, align 4, !dbg !423, !tbaa !407
  %call26 = call float*** @mk_rgrid(i32 %30, i32 %31, i32 %32) #6, !dbg !423
  call void @llvm.dbg.value(metadata !{float*** %call26}, i64 0, metadata !177), !dbg !423
  call void @llvm.dbg.value(metadata !{i32* %bSym}, i64 0, metadata !194), !dbg !424
  %33 = load i32* %bSym, align 4, !dbg !424, !tbaa !407
  %tobool = icmp eq i32 %33, 0, !dbg !424
  %34 = load i32* %igrid, align 4, !dbg !425, !tbaa !407
  br i1 %tobool, label %if.else, label %if.then, !dbg !424

if.then:                                          ; preds = %entry
  %div = sdiv i32 %34, 2, !dbg !425
  %add = add nsw i32 %div, 1, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !198), !dbg !425
  %35 = load i32* %arrayidx2, align 4, !dbg !427, !tbaa !407
  %div29 = sdiv i32 %35, 2, !dbg !427
  %add30 = add nsw i32 %div29, 1, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !199), !dbg !427
  %36 = load i32* %arrayidx3, align 4, !dbg !428, !tbaa !407
  %div32 = sdiv i32 %36, 2, !dbg !428
  %add33 = add nsw i32 %div32, 1, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %add33}, i64 0, metadata !200), !dbg !428
  br label %if.end, !dbg !429

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !198), !dbg !430
  %37 = load i32* %arrayidx2, align 4, !dbg !432, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !199), !dbg !432
  %38 = load i32* %arrayidx3, align 4, !dbg !433, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !200), !dbg !433
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ixmax.0 = phi i32 [ %add, %if.then ], [ %34, %if.else ]
  %iymax.0 = phi i32 [ %add30, %if.then ], [ %37, %if.else ]
  %izmax.0 = phi i32 [ %add33, %if.then ], [ %38, %if.else ]
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str20, i64 0, i64 0), i32 %ixmax.0, i32 %iymax.0, i32 %izmax.0) #6, !dbg !434
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !195), !dbg !435
  store i32 0, i32* %ix, align 4, !dbg !435, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !435
  %cmp122 = icmp sgt i32 %ixmax.0, 0, !dbg !435
  br i1 %cmp122, label %for.cond39.preheader.lr.ph, label %for.end59, !dbg !435

for.cond39.preheader.lr.ph:                       ; preds = %if.end
  %cmp40121 = icmp sgt i32 %iymax.0, 0, !dbg !437
  %cmp44120 = icmp sgt i32 %izmax.0, 0, !dbg !439
  br label %for.cond39.preheader, !dbg !435

for.cond39.preheader:                             ; preds = %for.cond39.preheader.lr.ph, %for.inc57
  %39 = phi i32 [ 0, %for.cond39.preheader.lr.ph ], [ %inc58, %for.inc57 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !437
  store i32 0, i32* %iy, align 4, !dbg !437, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !437
  br i1 %cmp40121, label %for.cond43.preheader, label %for.inc57, !dbg !437

for.cond43.preheader:                             ; preds = %for.cond39.preheader, %for.inc54
  %40 = phi i32 [ %inc55, %for.inc54 ], [ 0, %for.cond39.preheader ]
  %41 = phi i32 [ %49, %for.inc54 ], [ %39, %for.cond39.preheader ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !197), !dbg !439
  store i32 0, i32* %iz, align 4, !dbg !439, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !439
  br i1 %cmp44120, label %for.body46, label %for.inc54, !dbg !439

for.body46:                                       ; preds = %for.cond43.preheader, %for.body46
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), double* %ddd) #6, !dbg !441
  call void @llvm.dbg.value(metadata !{double* %ddd}, i64 0, metadata !185), !dbg !443
  %42 = load double* %ddd, align 8, !dbg !443, !tbaa !409
  %conv48 = fptrunc double %42 to float, !dbg !443
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !443
  %43 = load i32* %iz, align 4, !dbg !443, !tbaa !407
  %idxprom = sext i32 %43 to i64, !dbg !443
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !443
  %44 = load i32* %iy, align 4, !dbg !443, !tbaa !407
  %idxprom49 = sext i32 %44 to i64, !dbg !443
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !443
  %45 = load i32* %ix, align 4, !dbg !443, !tbaa !407
  %idxprom50 = sext i32 %45 to i64, !dbg !443
  %arrayidx51 = getelementptr inbounds float*** %call26, i64 %idxprom50, !dbg !443
  %46 = load float*** %arrayidx51, align 8, !dbg !443, !tbaa !253
  %arrayidx52 = getelementptr inbounds float** %46, i64 %idxprom49, !dbg !443
  %47 = load float** %arrayidx52, align 8, !dbg !443, !tbaa !253
  %arrayidx53 = getelementptr inbounds float* %47, i64 %idxprom, !dbg !443
  store float %conv48, float* %arrayidx53, align 4, !dbg !443, !tbaa !259
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !439
  %inc = add nsw i32 %43, 1, !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !197), !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !197), !dbg !439
  store i32 %inc, i32* %iz, align 4, !dbg !439, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iz}, i64 0, metadata !197), !dbg !439
  %cmp44 = icmp slt i32 %inc, %izmax.0, !dbg !439
  br i1 %cmp44, label %for.body46, label %for.inc54, !dbg !439

for.inc54:                                        ; preds = %for.body46, %for.cond43.preheader
  %48 = phi i32 [ %40, %for.cond43.preheader ], [ %44, %for.body46 ], !dbg !437
  %49 = phi i32 [ %41, %for.cond43.preheader ], [ %45, %for.body46 ]
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !437
  %inc55 = add nsw i32 %48, 1, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %inc55}, i64 0, metadata !196), !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %inc55}, i64 0, metadata !196), !dbg !437
  store i32 %inc55, i32* %iy, align 4, !dbg !437, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %iy}, i64 0, metadata !196), !dbg !437
  %cmp40 = icmp slt i32 %inc55, %iymax.0, !dbg !437
  br i1 %cmp40, label %for.cond43.preheader, label %for.inc57, !dbg !437

for.inc57:                                        ; preds = %for.inc54, %for.cond39.preheader
  %50 = phi i32 [ %39, %for.cond39.preheader ], [ %49, %for.inc54 ], !dbg !435
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !435
  %inc58 = add nsw i32 %50, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc58}, i64 0, metadata !195), !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc58}, i64 0, metadata !195), !dbg !435
  store i32 %inc58, i32* %ix, align 4, !dbg !435, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %ix}, i64 0, metadata !195), !dbg !435
  %cmp = icmp slt i32 %inc58, %ixmax.0, !dbg !435
  br i1 %cmp, label %for.cond39.preheader, label %for.end59, !dbg !435

for.end59:                                        ; preds = %for.inc57, %if.end
  call void @ffclose(%struct._IO_FILE* %call) #6, !dbg !444
  %51 = load i32* %igrid, align 4, !dbg !445, !tbaa !407
  %52 = load i32* %arrayidx2, align 4, !dbg !445, !tbaa !407
  %53 = load i32* %arrayidx3, align 4, !dbg !445, !tbaa !407
  call void @llvm.dbg.value(metadata !{double* %gx}, i64 0, metadata !178), !dbg !445
  %54 = load double* %gx, align 8, !dbg !445, !tbaa !409
  %conv63 = fptrunc double %54 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %gy}, i64 0, metadata !180), !dbg !445
  %55 = load double* %gy, align 8, !dbg !445, !tbaa !409
  %conv64 = fptrunc double %55 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %gz}, i64 0, metadata !181), !dbg !445
  %56 = load double* %gz, align 8, !dbg !445, !tbaa !409
  %conv65 = fptrunc double %56 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %nalias}, i64 0, metadata !192), !dbg !445
  %57 = load i32* %nalias, align 4, !dbg !445, !tbaa !407
  %58 = load i32* %porder, align 4, !dbg !445, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %niter}, i64 0, metadata !193), !dbg !445
  %59 = load i32* %niter, align 4, !dbg !445, !tbaa !407
  call void @llvm.dbg.value(metadata !{i32* %bSym}, i64 0, metadata !194), !dbg !445
  %60 = load i32* %bSym, align 4, !dbg !445, !tbaa !407
  %61 = load float* %r1, align 4, !dbg !445, !tbaa !259
  %62 = load float* %rc, align 4, !dbg !445, !tbaa !259
  call void @llvm.dbg.value(metadata !{double* %pval}, i64 0, metadata !187), !dbg !445
  %63 = load double* %pval, align 8, !dbg !445, !tbaa !409
  %conv66 = fptrunc double %63 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %zval}, i64 0, metadata !188), !dbg !445
  %64 = load double* %zval, align 8, !dbg !445, !tbaa !409
  %conv67 = fptrunc double %64 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %eref}, i64 0, metadata !189), !dbg !445
  %65 = load double* %eref, align 8, !dbg !445, !tbaa !409
  %conv68 = fptrunc double %65 to float, !dbg !445
  call void @llvm.dbg.value(metadata !{double* %qopt}, i64 0, metadata !190), !dbg !445
  %66 = load double* %qopt, align 8, !dbg !445, !tbaa !409
  %conv69 = fptrunc double %66 to float, !dbg !445
  call void @wr_ghat(i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %51, i32 %52, i32 %53, float %conv63, float %conv64, float %conv65, float*** %call26, i32 %57, i32 %58, i32 %59, i32 %60, float* %beta, float %61, float %62, float %conv66, float %conv67, float %conv68, float %conv69) #5, !dbg !445
  call void @llvm.dbg.value(metadata !{i32* %bSym}, i64 0, metadata !194), !dbg !446
  %67 = load i32* %bSym, align 4, !dbg !446, !tbaa !407
  %tobool70 = icmp eq i32 %67, 0, !dbg !446
  br i1 %tobool70, label %if.end75, label %if.then71, !dbg !446

if.then71:                                        ; preds = %for.end59
  %68 = load i32* %igrid, align 4, !dbg !447, !tbaa !407
  %69 = load i32* %arrayidx2, align 4, !dbg !447, !tbaa !407
  %70 = load i32* %arrayidx3, align 4, !dbg !447, !tbaa !407
  call void @symmetrize_ghat(i32 %68, i32 %69, i32 %70, float*** %call26) #5, !dbg !447
  br label %if.end75, !dbg !447

if.end75:                                         ; preds = %for.end59, %if.then71
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %log), !dbg !448
  ret float*** %call26, !dbg !449
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !26, metadata !111, metadata !146, metadata !163, metadata !201, metadata !208, metadata !213, metadata !219, metadata !233}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"symmetrize_ghat", metadata !"symmetrize_ghat", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, float***)* @symmetrize_ghat, null, null, metadata !14, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [symmetrize_ghat]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!15 = metadata !{i32 786689, metadata !4, metadata !"nx", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 42]
!16 = metadata !{i32 786689, metadata !4, metadata !"ny", metadata !5, i32 33554474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 42]
!17 = metadata !{i32 786689, metadata !4, metadata !"nz", metadata !5, i32 50331690, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 42]
!18 = metadata !{i32 786689, metadata !4, metadata !"ghat", metadata !5, i32 67108906, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 42]
!19 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 44]
!20 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 44]
!21 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 44]
!22 = metadata !{i32 786688, metadata !4, metadata !"iip", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iip] [line 45]
!23 = metadata !{i32 786688, metadata !4, metadata !"jjp", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jjp] [line 45]
!24 = metadata !{i32 786688, metadata !4, metadata !"kkp", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kkp] [line 45]
!25 = metadata !{i32 786688, metadata !4, metadata !"ggg", metadata !5, i32 46, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ggg] [line 46]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_ghat", metadata !"mk_ghat", metadata !"", i32 71, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32, float***, float*, float, float, i32, i32)* @mk_ghat, null, null, metadata !86, i32 73} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 73] [mk_ghat]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !29, metadata !8, metadata !8, metadata !8, metadata !9, metadata !11, metadata !12, metadata !12, metadata !8, metadata !8}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!32 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !56, metadata !57, metadata !58, metadata !59, metadata !62, metadata !64, metadata !66, metadata !70, metadata !72, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !81, metadata !82}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!41 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!44 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!45 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!47 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!48 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!50 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!51 = metadata !{metadata !52, metadata !53, metadata !55}
!52 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!55 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!56 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !54} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!57 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!58 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!59 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !60} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!60 = metadata !{i32 786454, metadata !32, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!61 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !63} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!63 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !65} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!65 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!66 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !67} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!67 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!70 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !71} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !73} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!73 = metadata !{i32 786454, metadata !32, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!74 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!75 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!76 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!77 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!78 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !79} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!79 = metadata !{i32 786454, metadata !32, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!80 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!81 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!82 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !83} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !110}
!87 = metadata !{i32 786689, metadata !26, metadata !"fp", metadata !5, i32 16777287, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 71]
!88 = metadata !{i32 786689, metadata !26, metadata !"nx", metadata !5, i32 33554503, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 71]
!89 = metadata !{i32 786689, metadata !26, metadata !"ny", metadata !5, i32 50331719, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 71]
!90 = metadata !{i32 786689, metadata !26, metadata !"nz", metadata !5, i32 67108935, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 71]
!91 = metadata !{i32 786689, metadata !26, metadata !"ghat", metadata !5, i32 83886151, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 71]
!92 = metadata !{i32 786689, metadata !26, metadata !"box", metadata !5, i32 100663368, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 72]
!93 = metadata !{i32 786689, metadata !26, metadata !"r1", metadata !5, i32 117440584, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 72]
!94 = metadata !{i32 786689, metadata !26, metadata !"rc", metadata !5, i32 134217800, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 72]
!95 = metadata !{i32 786689, metadata !26, metadata !"bSym", metadata !5, i32 150995016, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bSym] [line 72]
!96 = metadata !{i32 786689, metadata !26, metadata !"bOld", metadata !5, i32 167772232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOld] [line 72]
!97 = metadata !{i32 786688, metadata !26, metadata !"ix", metadata !5, i32 74, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 74]
!98 = metadata !{i32 786688, metadata !26, metadata !"iy", metadata !5, i32 74, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 74]
!99 = metadata !{i32 786688, metadata !26, metadata !"iz", metadata !5, i32 74, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 74]
!100 = metadata !{i32 786688, metadata !26, metadata !"ixmax", metadata !5, i32 75, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ixmax] [line 75]
!101 = metadata !{i32 786688, metadata !26, metadata !"iymax", metadata !5, i32 75, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iymax] [line 75]
!102 = metadata !{i32 786688, metadata !26, metadata !"izmax", metadata !5, i32 75, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [izmax] [line 75]
!103 = metadata !{i32 786688, metadata !26, metadata !"k2", metadata !5, i32 76, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 76]
!104 = metadata !{i32 786688, metadata !26, metadata !"ggg", metadata !5, i32 76, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ggg] [line 76]
!105 = metadata !{i32 786688, metadata !26, metadata !"k", metadata !5, i32 77, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 77]
!106 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !12, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!110 = metadata !{i32 786688, metadata !26, metadata !"lll", metadata !5, i32 77, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lll] [line 77]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wr_ghat", metadata !"wr_ghat", metadata !"", i32 113, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, float, float, float, float***, i32, i32, i32, i32, float*, float, float, float, float, float, float)* @wr_ghat, null, null, metadata !114, i32 116} ; [ DW_TAG_subprogram ] [line 113] [def] [scope 116] [wr_ghat]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{null, metadata !36, metadata !8, metadata !8, metadata !8, metadata !12, metadata !12, metadata !12, metadata !9, metadata !8, metadata !8, metadata !8, metadata !8, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12}
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!115 = metadata !{i32 786689, metadata !111, metadata !"fn", metadata !5, i32 16777329, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 113]
!116 = metadata !{i32 786689, metadata !111, metadata !"n1max", metadata !5, i32 33554545, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n1max] [line 113]
!117 = metadata !{i32 786689, metadata !111, metadata !"n2max", metadata !5, i32 50331761, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n2max] [line 113]
!118 = metadata !{i32 786689, metadata !111, metadata !"n3max", metadata !5, i32 67108977, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n3max] [line 113]
!119 = metadata !{i32 786689, metadata !111, metadata !"h1", metadata !5, i32 83886193, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h1] [line 113]
!120 = metadata !{i32 786689, metadata !111, metadata !"h2", metadata !5, i32 100663409, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h2] [line 113]
!121 = metadata !{i32 786689, metadata !111, metadata !"h3", metadata !5, i32 117440625, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h3] [line 113]
!122 = metadata !{i32 786689, metadata !111, metadata !"ghat", metadata !5, i32 134217842, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 114]
!123 = metadata !{i32 786689, metadata !111, metadata !"nalias", metadata !5, i32 150995058, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nalias] [line 114]
!124 = metadata !{i32 786689, metadata !111, metadata !"porder", metadata !5, i32 167772274, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [porder] [line 114]
!125 = metadata !{i32 786689, metadata !111, metadata !"niter", metadata !5, i32 184549490, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [niter] [line 114]
!126 = metadata !{i32 786689, metadata !111, metadata !"bSym", metadata !5, i32 201326706, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bSym] [line 114]
!127 = metadata !{i32 786689, metadata !111, metadata !"beta", metadata !5, i32 218103922, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 114]
!128 = metadata !{i32 786689, metadata !111, metadata !"r1", metadata !5, i32 234881139, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 115]
!129 = metadata !{i32 786689, metadata !111, metadata !"rc", metadata !5, i32 251658355, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 115]
!130 = metadata !{i32 786689, metadata !111, metadata !"pval", metadata !5, i32 268435571, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pval] [line 115]
!131 = metadata !{i32 786689, metadata !111, metadata !"zval", metadata !5, i32 285212787, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zval] [line 115]
!132 = metadata !{i32 786689, metadata !111, metadata !"eref", metadata !5, i32 301990003, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [eref] [line 115]
!133 = metadata !{i32 786689, metadata !111, metadata !"qopt", metadata !5, i32 318767219, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [qopt] [line 115]
!134 = metadata !{i32 786688, metadata !111, metadata !"fp", metadata !5, i32 117, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 117]
!135 = metadata !{i32 786688, metadata !111, metadata !"N1MAX", metadata !5, i32 118, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N1MAX] [line 118]
!136 = metadata !{i32 786688, metadata !111, metadata !"N2MAX", metadata !5, i32 118, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N2MAX] [line 118]
!137 = metadata !{i32 786688, metadata !111, metadata !"N3MAX", metadata !5, i32 118, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N3MAX] [line 118]
!138 = metadata !{i32 786688, metadata !111, metadata !"bNL", metadata !5, i32 119, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bNL] [line 119]
!139 = metadata !{i32 786688, metadata !111, metadata !"rx", metadata !5, i32 120, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rx] [line 120]
!140 = metadata !{i32 786688, metadata !111, metadata !"ry", metadata !5, i32 120, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ry] [line 120]
!141 = metadata !{i32 786688, metadata !111, metadata !"rz", metadata !5, i32 120, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rz] [line 120]
!142 = metadata !{i32 786688, metadata !111, metadata !"ii", metadata !5, i32 121, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 121]
!143 = metadata !{i32 786688, metadata !111, metadata !"jj", metadata !5, i32 121, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 121]
!144 = metadata !{i32 786688, metadata !111, metadata !"kk", metadata !5, i32 121, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 121]
!145 = metadata !{i32 786688, metadata !111, metadata !"nn", metadata !5, i32 121, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 121]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"pr_scalar_gk", metadata !"pr_scalar_gk", metadata !"", i32 171, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i32, i32, float*, float***)* @pr_scalar_gk, null, null, metadata !149, i32 172} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 172] [pr_scalar_gk]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !36, metadata !8, metadata !8, metadata !8, metadata !11, metadata !9}
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162}
!150 = metadata !{i32 786689, metadata !146, metadata !"fn", metadata !5, i32 16777387, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 171]
!151 = metadata !{i32 786689, metadata !146, metadata !"nx", metadata !5, i32 33554603, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 171]
!152 = metadata !{i32 786689, metadata !146, metadata !"ny", metadata !5, i32 50331819, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 171]
!153 = metadata !{i32 786689, metadata !146, metadata !"nz", metadata !5, i32 67109035, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 171]
!154 = metadata !{i32 786689, metadata !146, metadata !"box", metadata !5, i32 83886251, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 171]
!155 = metadata !{i32 786689, metadata !146, metadata !"ghat", metadata !5, i32 100663467, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ghat] [line 171]
!156 = metadata !{i32 786688, metadata !146, metadata !"fp", metadata !5, i32 173, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 173]
!157 = metadata !{i32 786688, metadata !146, metadata !"ii", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 174]
!158 = metadata !{i32 786688, metadata !146, metadata !"jj", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 174]
!159 = metadata !{i32 786688, metadata !146, metadata !"kk", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 174]
!160 = metadata !{i32 786688, metadata !146, metadata !"k1", metadata !5, i32 175, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 175]
!161 = metadata !{i32 786688, metadata !146, metadata !"k", metadata !5, i32 176, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 176]
!162 = metadata !{i32 786688, metadata !146, metadata !"lll", metadata !5, i32 176, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lll] [line 176]
!163 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rd_ghat", metadata !"rd_ghat", metadata !"", i32 193, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float*** (%struct._IO_FILE*, i8*, i32*, float*, float*, i32*, float*, float*)* @rd_ghat, null, null, metadata !167, i32 195} ; [ DW_TAG_subprogram ] [line 193] [def] [scope 195] [rd_ghat]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{metadata !9, metadata !29, metadata !36, metadata !166, metadata !11, metadata !11, metadata !166, metadata !11, metadata !11}
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!167 = metadata !{metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200}
!168 = metadata !{i32 786689, metadata !163, metadata !"log", metadata !5, i32 16777409, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 193]
!169 = metadata !{i32 786689, metadata !163, metadata !"fn", metadata !5, i32 33554625, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 193]
!170 = metadata !{i32 786689, metadata !163, metadata !"igrid", metadata !5, i32 50331841, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [igrid] [line 193]
!171 = metadata !{i32 786689, metadata !163, metadata !"gridspace", metadata !5, i32 67109057, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gridspace] [line 193]
!172 = metadata !{i32 786689, metadata !163, metadata !"beta", metadata !5, i32 83886274, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 194]
!173 = metadata !{i32 786689, metadata !163, metadata !"porder", metadata !5, i32 100663490, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [porder] [line 194]
!174 = metadata !{i32 786689, metadata !163, metadata !"r1", metadata !5, i32 117440706, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r1] [line 194]
!175 = metadata !{i32 786689, metadata !163, metadata !"rc", metadata !5, i32 134217922, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 194]
!176 = metadata !{i32 786688, metadata !163, metadata !"in", metadata !5, i32 196, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 196]
!177 = metadata !{i32 786688, metadata !163, metadata !"gh", metadata !5, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gh] [line 197]
!178 = metadata !{i32 786688, metadata !163, metadata !"gx", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gx] [line 198]
!179 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!180 = metadata !{i32 786688, metadata !163, metadata !"gy", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gy] [line 198]
!181 = metadata !{i32 786688, metadata !163, metadata !"gz", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gz] [line 198]
!182 = metadata !{i32 786688, metadata !163, metadata !"alX", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alX] [line 198]
!183 = metadata !{i32 786688, metadata !163, metadata !"alY", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alY] [line 198]
!184 = metadata !{i32 786688, metadata !163, metadata !"alZ", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alZ] [line 198]
!185 = metadata !{i32 786688, metadata !163, metadata !"ddd", metadata !5, i32 198, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ddd] [line 198]
!186 = metadata !{i32 786688, metadata !163, metadata !"acut", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acut] [line 199]
!187 = metadata !{i32 786688, metadata !163, metadata !"pval", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pval] [line 199]
!188 = metadata !{i32 786688, metadata !163, metadata !"zval", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zval] [line 199]
!189 = metadata !{i32 786688, metadata !163, metadata !"eref", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eref] [line 199]
!190 = metadata !{i32 786688, metadata !163, metadata !"qopt", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qopt] [line 199]
!191 = metadata !{i32 786688, metadata !163, metadata !"r11", metadata !5, i32 199, metadata !179, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 199]
!192 = metadata !{i32 786688, metadata !163, metadata !"nalias", metadata !5, i32 200, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nalias] [line 200]
!193 = metadata !{i32 786688, metadata !163, metadata !"niter", metadata !5, i32 200, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [niter] [line 200]
!194 = metadata !{i32 786688, metadata !163, metadata !"bSym", metadata !5, i32 200, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bSym] [line 200]
!195 = metadata !{i32 786688, metadata !163, metadata !"ix", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 201]
!196 = metadata !{i32 786688, metadata !163, metadata !"iy", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iy] [line 201]
!197 = metadata !{i32 786688, metadata !163, metadata !"iz", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iz] [line 201]
!198 = metadata !{i32 786688, metadata !163, metadata !"ixmax", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ixmax] [line 201]
!199 = metadata !{i32 786688, metadata !163, metadata !"iymax", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iymax] [line 201]
!200 = metadata !{i32 786688, metadata !163, metadata !"izmax", metadata !5, i32 201, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [izmax] [line 201]
!201 = metadata !{i32 786478, metadata !202, metadata !203, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !204, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !206, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!202 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!203 = metadata !{i32 786473, metadata !202}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !12, metadata !11}
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786689, metadata !201, metadata !"a", metadata !203, i32 16777574, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!208 = metadata !{i32 786478, metadata !202, metadata !203, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !209, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !211, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!209 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!210 = metadata !{metadata !12, metadata !12}
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786689, metadata !208, metadata !"x", metadata !203, i32 16777413, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!213 = metadata !{i32 786478, metadata !202, metadata !203, metadata !"iprod", metadata !"iprod", metadata !"", i32 343, metadata !214, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !216, i32 344} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [scope 344] [iprod]
!214 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !12, metadata !11, metadata !11}
!216 = metadata !{metadata !217, metadata !218}
!217 = metadata !{i32 786689, metadata !213, metadata !"a", metadata !203, i32 16777559, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 343]
!218 = metadata !{i32 786689, metadata !213, metadata !"b", metadata !203, i32 33554775, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 343]
!219 = metadata !{i32 786478, metadata !220, metadata !221, metadata !"calc_k", metadata !"calc_k", metadata !"", i32 97, metadata !222, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32, i32, i32, i32, i32, i32, float*)* @calc_k, null, null, metadata !224, i32 98} ; [ DW_TAG_subprogram ] [line 97] [local] [def] [scope 98] [calc_k]
!220 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!221 = metadata !{i32 786473, metadata !220}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{null, metadata !11, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !11}
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!225 = metadata !{i32 786689, metadata !219, metadata !"lll", metadata !221, i32 16777313, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lll] [line 97]
!226 = metadata !{i32 786689, metadata !219, metadata !"ix", metadata !221, i32 33554529, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ix] [line 97]
!227 = metadata !{i32 786689, metadata !219, metadata !"iy", metadata !221, i32 50331745, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iy] [line 97]
!228 = metadata !{i32 786689, metadata !219, metadata !"iz", metadata !221, i32 67108961, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iz] [line 97]
!229 = metadata !{i32 786689, metadata !219, metadata !"nx", metadata !221, i32 83886177, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 97]
!230 = metadata !{i32 786689, metadata !219, metadata !"ny", metadata !221, i32 100663393, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 97]
!231 = metadata !{i32 786689, metadata !219, metadata !"nz", metadata !221, i32 117440609, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nz] [line 97]
!232 = metadata !{i32 786689, metadata !219, metadata !"k", metadata !221, i32 134217825, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 97]
!233 = metadata !{i32 786478, metadata !220, metadata !221, metadata !"calc_lll", metadata !"calc_lll", metadata !"", i32 90, metadata !234, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !236, i32 91} ; [ DW_TAG_subprogram ] [line 90] [local] [def] [scope 91] [calc_lll]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !11, metadata !11}
!236 = metadata !{metadata !237, metadata !238}
!237 = metadata !{i32 786689, metadata !233, metadata !"box", metadata !221, i32 16777306, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 90]
!238 = metadata !{i32 786689, metadata !233, metadata !"lll", metadata !221, i32 33554522, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lll] [line 90]
!239 = metadata !{i32 42, i32 0, metadata !4, null}
!240 = metadata !{i32 52, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!242 = metadata !{i32 54, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !244, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!244 = metadata !{i32 786443, metadata !1, metadata !241, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!245 = metadata !{i32 56, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !247, i32 56, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!247 = metadata !{i32 786443, metadata !1, metadata !243, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!248 = metadata !{i32 53, i32 0, metadata !244, null}
!249 = metadata !{i32 58, i32 0, metadata !250, null} ; [ DW_TAG_imported_module ]
!250 = metadata !{i32 786443, metadata !1, metadata !246, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!251 = metadata !{i32 62, i32 0, metadata !250, null}
!252 = metadata !{i32 55, i32 0, metadata !247, null}
!253 = metadata !{metadata !"any pointer", metadata !254}
!254 = metadata !{metadata !"omnipotent char", metadata !255}
!255 = metadata !{metadata !"Simple C/C++ TBAA"}
!256 = metadata !{i32 59, i32 0, metadata !250, null}
!257 = metadata !{i32 63, i32 0, metadata !250, null}
!258 = metadata !{i32 57, i32 0, metadata !250, null}
!259 = metadata !{metadata !"float", metadata !254}
!260 = metadata !{i32 60, i32 0, metadata !250, null}
!261 = metadata !{i32 61, i32 0, metadata !250, null}
!262 = metadata !{i32 64, i32 0, metadata !250, null}
!263 = metadata !{i32 65, i32 0, metadata !250, null}
!264 = metadata !{i32 69, i32 0, metadata !4, null}
!265 = metadata !{i32 71, i32 0, metadata !26, null}
!266 = metadata !{i32 72, i32 0, metadata !26, null}
!267 = metadata !{i32 77, i32 0, metadata !26, null}
!268 = metadata !{i32 79, i32 0, metadata !26, null}
!269 = metadata !{i32 786689, metadata !233, metadata !"box", metadata !221, i32 16777306, metadata !11, i32 0, metadata !268} ; [ DW_TAG_arg_variable ] [box] [line 90]
!270 = metadata !{i32 90, i32 0, metadata !233, metadata !268}
!271 = metadata !{i32 786689, metadata !233, metadata !"lll", metadata !221, i32 33554522, metadata !11, i32 0, metadata !268} ; [ DW_TAG_arg_variable ] [lll] [line 90]
!272 = metadata !{i32 92, i32 0, metadata !233, metadata !268}
!273 = metadata !{i32 93, i32 0, metadata !233, metadata !268}
!274 = metadata !{i32 94, i32 0, metadata !233, metadata !268}
!275 = metadata !{i32 81, i32 0, metadata !26, null}
!276 = metadata !{i32 82, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !26, i32 81, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!278 = metadata !{i32 83, i32 0, metadata !277, null}
!279 = metadata !{i32 84, i32 0, metadata !277, null}
!280 = metadata !{i32 85, i32 0, metadata !277, null}
!281 = metadata !{i32 92, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !26, i32 92, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!283 = metadata !{i32 93, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !285, i32 93, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!285 = metadata !{i32 786443, metadata !1, metadata !282, i32 92, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!286 = metadata !{i32 94, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !288, i32 94, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!288 = metadata !{i32 786443, metadata !1, metadata !284, i32 93, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!289 = metadata !{i32 95, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !287, i32 94, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!291 = metadata !{i32 345, i32 0, metadata !213, metadata !292}
!292 = metadata !{i32 96, i32 0, metadata !290, null}
!293 = metadata !{i32 100, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !290, i32 99, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!295 = metadata !{i32 105, i32 0, metadata !290, null}
!296 = metadata !{i32 97, i32 0, metadata !290, null}
!297 = metadata !{i32 786689, metadata !213, metadata !"a", metadata !203, i32 16777559, metadata !11, i32 0, metadata !292} ; [ DW_TAG_arg_variable ] [a] [line 343]
!298 = metadata !{i32 343, i32 0, metadata !213, metadata !292}
!299 = metadata !{i32 786689, metadata !213, metadata !"b", metadata !203, i32 33554775, metadata !11, i32 0, metadata !292} ; [ DW_TAG_arg_variable ] [b] [line 343]
!300 = metadata !{i32 101, i32 0, metadata !294, null}
!301 = metadata !{i32 103, i32 0, metadata !294, null}
!302 = metadata !{i32 109, i32 0, metadata !26, null}
!303 = metadata !{i32 110, i32 0, metadata !26, null}
!304 = metadata !{i32 111, i32 0, metadata !26, null}
!305 = metadata !{i32 97, i32 0, metadata !219, null}
!306 = metadata !{i32 100, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !220, metadata !219} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/shift_util.h]
!308 = metadata !{i32 101, i32 0, metadata !307, null}
!309 = metadata !{i32 102, i32 0, metadata !307, null}
!310 = metadata !{i32 104, i32 0, metadata !307, null}
!311 = metadata !{i32 113, i32 0, metadata !111, null}
!312 = metadata !{i32 114, i32 0, metadata !111, null}
!313 = metadata !{i32 115, i32 0, metadata !111, null}
!314 = metadata !{i32 119, i32 0, metadata !111, null}
!315 = metadata !{i32 123, i32 0, metadata !111, null}
!316 = metadata !{i32 124, i32 0, metadata !111, null}
!317 = metadata !{i32 126, i32 0, metadata !111, null}
!318 = metadata !{i32 128, i32 0, metadata !111, null}
!319 = metadata !{i32 131, i32 0, metadata !111, null}
!320 = metadata !{i32 132, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !111, i32 131, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!322 = metadata !{i32 133, i32 0, metadata !321, null}
!323 = metadata !{i32 134, i32 0, metadata !321, null}
!324 = metadata !{i32 135, i32 0, metadata !321, null}
!325 = metadata !{i32 141, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !111, i32 141, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!327 = metadata !{i32 142, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !329, i32 142, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!329 = metadata !{i32 786443, metadata !1, metadata !326, i32 141, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!330 = metadata !{i32 143, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !332, i32 143, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!332 = metadata !{i32 786443, metadata !1, metadata !328, i32 142, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!333 = metadata !{i32 145, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !331, i32 143, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!335 = metadata !{i32 144, i32 0, metadata !334, null}
!336 = metadata !{i32 146, i32 0, metadata !334, null}
!337 = metadata !{i32 147, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !334, i32 146, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!339 = metadata !{i32 1}
!340 = metadata !{i32 148, i32 0, metadata !338, null}
!341 = metadata !{i32 149, i32 0, metadata !338, null}
!342 = metadata !{i32 151, i32 0, metadata !332, null}
!343 = metadata !{i32 152, i32 0, metadata !332, null}
!344 = metadata !{i32 155, i32 0, metadata !111, null}
!345 = metadata !{i32 157, i32 0, metadata !111, null}
!346 = metadata !{i32 158, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !111, i32 158, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!348 = metadata !{i32 160, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !350, i32 160, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!350 = metadata !{i32 786443, metadata !1, metadata !347, i32 158, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!351 = metadata !{i32 162, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !353, i32 162, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!353 = metadata !{i32 786443, metadata !1, metadata !349, i32 160, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!354 = metadata !{i32 159, i32 0, metadata !350, null}
!355 = metadata !{i32 786689, metadata !208, metadata !"x", metadata !203, i32 16777413, metadata !12, i32 0, metadata !354} ; [ DW_TAG_arg_variable ] [x] [line 197]
!356 = metadata !{i32 197, i32 0, metadata !208, metadata !354}
!357 = metadata !{i32 199, i32 0, metadata !208, metadata !354}
!358 = metadata !{i32 164, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !352, i32 162, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!360 = metadata !{i32 161, i32 0, metadata !353, null}
!361 = metadata !{i32 786689, metadata !208, metadata !"x", metadata !203, i32 16777413, metadata !12, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [x] [line 197]
!362 = metadata !{i32 197, i32 0, metadata !208, metadata !360}
!363 = metadata !{i32 199, i32 0, metadata !208, metadata !360}
!364 = metadata !{i32 163, i32 0, metadata !359, null}
!365 = metadata !{i32 786689, metadata !208, metadata !"x", metadata !203, i32 16777413, metadata !12, i32 0, metadata !364} ; [ DW_TAG_arg_variable ] [x] [line 197]
!366 = metadata !{i32 197, i32 0, metadata !208, metadata !364}
!367 = metadata !{i32 199, i32 0, metadata !208, metadata !364}
!368 = metadata !{i32 168, i32 0, metadata !111, null}
!369 = metadata !{i32 169, i32 0, metadata !111, null}
!370 = metadata !{i32 171, i32 0, metadata !146, null}
!371 = metadata !{i32 176, i32 0, metadata !146, null}
!372 = metadata !{i32 178, i32 0, metadata !146, null}
!373 = metadata !{i32 786689, metadata !233, metadata !"box", metadata !221, i32 16777306, metadata !11, i32 0, metadata !372} ; [ DW_TAG_arg_variable ] [box] [line 90]
!374 = metadata !{i32 90, i32 0, metadata !233, metadata !372}
!375 = metadata !{i32 786689, metadata !233, metadata !"lll", metadata !221, i32 33554522, metadata !11, i32 0, metadata !372} ; [ DW_TAG_arg_variable ] [lll] [line 90]
!376 = metadata !{i32 92, i32 0, metadata !233, metadata !372}
!377 = metadata !{i32 93, i32 0, metadata !233, metadata !372}
!378 = metadata !{i32 94, i32 0, metadata !233, metadata !372}
!379 = metadata !{i32 180, i32 0, metadata !146, null}
!380 = metadata !{i32 181, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !146, i32 181, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!382 = metadata !{i32 182, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !384, i32 182, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!384 = metadata !{i32 786443, metadata !1, metadata !381, i32 181, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!385 = metadata !{i32 183, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !387, i32 183, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!387 = metadata !{i32 786443, metadata !1, metadata !383, i32 182, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!388 = metadata !{i32 184, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !386, i32 183, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!390 = metadata !{i32 360, i32 0, metadata !391, metadata !392}
!391 = metadata !{i32 786443, metadata !202, metadata !201} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!392 = metadata !{i32 185, i32 0, metadata !389, null}
!393 = metadata !{i32 186, i32 0, metadata !389, null}
!394 = metadata !{i32 786689, metadata !201, metadata !"a", metadata !203, i32 16777574, metadata !11, i32 0, metadata !392} ; [ DW_TAG_arg_variable ] [a] [line 358]
!395 = metadata !{i32 358, i32 0, metadata !201, metadata !392}
!396 = metadata !{i32 190, i32 0, metadata !146, null}
!397 = metadata !{i32 191, i32 0, metadata !146, null}
!398 = metadata !{i32 193, i32 0, metadata !163, null}
!399 = metadata !{i32 194, i32 0, metadata !163, null}
!400 = metadata !{i32 198, i32 0, metadata !163, null}
!401 = metadata !{i32 199, i32 0, metadata !163, null}
!402 = metadata !{i32 200, i32 0, metadata !163, null}
!403 = metadata !{i32 201, i32 0, metadata !163, null}
!404 = metadata !{i32 203, i32 0, metadata !163, null}
!405 = metadata !{i32 204, i32 0, metadata !163, null}
!406 = metadata !{i32 205, i32 0, metadata !163, null}
!407 = metadata !{metadata !"int", metadata !254}
!408 = metadata !{i32 206, i32 0, metadata !163, null}
!409 = metadata !{metadata !"double", metadata !254}
!410 = metadata !{i32 207, i32 0, metadata !163, null}
!411 = metadata !{i32 208, i32 0, metadata !163, null}
!412 = metadata !{i32 209, i32 0, metadata !163, null}
!413 = metadata !{i32 210, i32 0, metadata !163, null}
!414 = metadata !{i32 212, i32 0, metadata !163, null}
!415 = metadata !{i32 213, i32 0, metadata !163, null}
!416 = metadata !{i32 214, i32 0, metadata !163, null}
!417 = metadata !{i32 215, i32 0, metadata !163, null}
!418 = metadata !{i32 218, i32 0, metadata !163, null}
!419 = metadata !{i32 220, i32 0, metadata !163, null}
!420 = metadata !{i32 222, i32 0, metadata !163, null}
!421 = metadata !{i32 223, i32 0, metadata !163, null}
!422 = metadata !{i32 224, i32 0, metadata !163, null}
!423 = metadata !{i32 226, i32 0, metadata !163, null}
!424 = metadata !{i32 227, i32 0, metadata !163, null}
!425 = metadata !{i32 228, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !163, i32 227, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!427 = metadata !{i32 229, i32 0, metadata !426, null}
!428 = metadata !{i32 230, i32 0, metadata !426, null}
!429 = metadata !{i32 231, i32 0, metadata !426, null}
!430 = metadata !{i32 233, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !163, i32 232, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!432 = metadata !{i32 234, i32 0, metadata !431, null}
!433 = metadata !{i32 235, i32 0, metadata !431, null}
!434 = metadata !{i32 237, i32 0, metadata !163, null}
!435 = metadata !{i32 238, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !163, i32 238, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!437 = metadata !{i32 239, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 239, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!439 = metadata !{i32 240, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !438, i32 240, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!441 = metadata !{i32 241, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !440, i32 240, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/ghat.c]
!443 = metadata !{i32 242, i32 0, metadata !442, null}
!444 = metadata !{i32 244, i32 0, metadata !163, null}
!445 = metadata !{i32 246, i32 0, metadata !163, null}
!446 = metadata !{i32 250, i32 0, metadata !163, null}
!447 = metadata !{i32 251, i32 0, metadata !163, null}
!448 = metadata !{i32 253, i32 0, metadata !163, null}
!449 = metadata !{i32 256, i32 0, metadata !163, null}
