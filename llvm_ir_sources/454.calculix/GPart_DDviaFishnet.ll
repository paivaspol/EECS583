; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDviaFishnet.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [64 x i8] c"\0A fatal error in GPart_DDviaFishnet(%p,%f,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [212 x i8] c"\0A FISHNET CPU breakdown\0A CPU %8.3f : compute external degrees\0A CPU %8.3f : freeze vertices of high degree\0A CPU %8.3f : independent set growth\0A CPU %8.3f : absorb small domains\0A CPU %8.3f : absorb excess boundary\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"\0A fatal error in GPart_absBoundary(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"\0A\0A new pass, count = %d\00", align 1
@.str4 = private unnamed_addr constant [95 x i8] c"\0A    moving vertex %d with weight %d to domain %d\0A    now, cweights[0] = %d, cweights[%d] = %d\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A    keeping vertex %d on list\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"\0A fatal error in GPart_absDomains(%p,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A interface absorbs component %d, weight %d\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"\0A dmap[%d] = %d\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"\0A old component ids\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"\0A new component ids\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"\0A old cweights\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"\0A new cweights\00", align 1
@.str13 = private unnamed_addr constant [59 x i8] c"\0A fatal error in GPart_indpSepGrowth(%p,%d,%d)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [37 x i8] c"\0A\0A visiting v = %d, compids[%d] = %d\00", align 1
@.str15 = private unnamed_addr constant [30 x i8] c"\0A\0A domain %d : seed vertex %d\00", align 1
@.str16 = private unnamed_addr constant [39 x i8] c"\0A    adding %d to domain %d, weight %d\00", align 1
@.str17 = private unnamed_addr constant [39 x i8] c"\0A    adding %d to interface, weight %d\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"\0A domain %d, weight %d\00", align 1
@.str19 = private unnamed_addr constant [52 x i8] c"\0A fatal error in GPart_freeze(%p,%f,%p)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [32 x i8] c"\0A vertex %d, external degree %d\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"\0A median = %d, cutoff = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GPart_DDviaFishnet(%struct._GPart* %gpart, double %freeze, i32 %minweight, i32 %maxweight, i32 %seed) #0 {
entry:
  %domid.i = alloca i32, align 4
  %ierr.i = alloca i32, align 4
  %vsize.i = alloca i32, align 4
  %vadj.i = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = fcmp olt double %freeze, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %minweight, 0
  %or.cond81 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %maxweight, 0
  %or.cond82 = or i1 %or.cond81, %cmp5
  %or.cond82.not = xor i1 %or.cond82, true
  %cmp7 = icmp slt i32 %minweight, %maxweight
  %or.cond83 = and i1 %cmp7, %or.cond82.not
  br i1 %or.cond83, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, double %freeze, i32 %minweight, i32 %maxweight, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %g = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %1 = load %struct._Graph** %g, align 8, !tbaa !0
  %nvtx = getelementptr inbounds %struct._Graph* %1, i64 0, i32 1
  %2 = load i32* %nvtx, align 4, !tbaa !3
  %call8 = call i32* @IVinit(i32 %2, i32 0) #5
  %cmp9164 = icmp sgt i32 %2, 0
  br i1 %cmp9164, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %3 = load %struct._Graph** %g, align 8, !tbaa !0
  %4 = trunc i64 %indvars.iv to i32
  %call11 = call i32 @Graph_externalDegree(%struct._Graph* %3, i32 %4) #5
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv
  store i32 %call11, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv186 = trunc i64 %indvars.iv.next to i32
  %exitcond187 = icmp eq i32 %lftr.wideiv186, %2
  br i1 %exitcond187, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  br i1 %cmp, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end
  %5 = load %struct._Graph** %g, align 8, !tbaa !0
  %cmp2.i = icmp eq %struct._Graph* %5, null
  %cmp4.i = icmp eq i32* %call8, null
  %or.cond.i = or i1 %cmp2.i, %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %for.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([52 x i8]* @.str19, i64 0, i64 0), %struct._GPart* %gpart, double %freeze, i32* %call8) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i:                                         ; preds = %lor.lhs.false.i
  %nvtx5.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %7 = load i32* %nvtx5.i, align 4, !tbaa !3
  %compidsIV.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call6.i = call i32* @IV_entries(%struct._IV* %compidsIV.i) #5
  %call7.i = call i32* @IVinit(i32 %7, i32 0) #5
  call void @IVramp(i32 %7, i32* %call7.i, i32 0, i32 1) #5
  %msglvl.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %8 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp8.i = icmp sgt i32 %8, 3
  %cmp104.i = icmp sgt i32 %7, 0
  %or.cond8.i = and i1 %cmp8.i, %cmp104.i
  br i1 %or.cond8.i, label %for.body.lr.ph.i, label %if.end14.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %msgFile.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv6.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next7.i, %for.body.i ]
  %9 = load %struct._IO_FILE** %msgFile.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i32* %call8, i64 %indvars.iv6.i
  %10 = load i32* %arrayidx.i, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv6.i to i32
  %call11.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([32 x i8]* @.str20, i64 0, i64 0), i32 %11, i32 %10) #5
  %12 = load %struct._IO_FILE** %msgFile.i, align 8, !tbaa !0
  %call13.i = call i32 @fflush(%struct._IO_FILE* %12) #5
  %indvars.iv.next7.i = add i64 %indvars.iv6.i, 1
  %lftr.wideiv184 = trunc i64 %indvars.iv.next7.i to i32
  %exitcond185 = icmp eq i32 %lftr.wideiv184, %7
  br i1 %exitcond185, label %if.end14.i, label %for.body.i

if.end14.i:                                       ; preds = %for.body.i, %if.end.i
  call void @IV2qsortUp(i32 %7, i32* %call8, i32* %call7.i) #5
  %div.i = sdiv i32 %7, 2
  %idxprom15.i = sext i32 %div.i to i64
  %arrayidx16.i = getelementptr inbounds i32* %call8, i64 %idxprom15.i
  %13 = load i32* %arrayidx16.i, align 4, !tbaa !3
  %conv.i = sitofp i32 %13 to double
  %mul.i = fmul double %conv.i, %freeze
  %conv17.i = fptosi double %mul.i to i32
  %14 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp19.i = icmp sgt i32 %14, 2
  br i1 %cmp19.i, label %if.then21.i, label %for.cond27.preheader.i

if.then21.i:                                      ; preds = %if.end14.i
  %msgFile22.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %15 = load %struct._IO_FILE** %msgFile22.i, align 8, !tbaa !0
  %call23.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 %13, i32 %conv17.i) #5
  %16 = load %struct._IO_FILE** %msgFile22.i, align 8, !tbaa !0
  %call25.i = call i32 @fflush(%struct._IO_FILE* %16) #5
  br label %for.cond27.preheader.i

for.cond27.preheader.i:                           ; preds = %if.then21.i, %if.end14.i
  br i1 %cmp104.i, label %for.body30.lr.ph.i, label %lor.lhs.false.i89

for.body30.lr.ph.i:                               ; preds = %for.cond27.preheader.i
  %17 = sext i32 %7 to i64
  br label %for.body30.i

for.body30.i:                                     ; preds = %if.end36.i, %for.body30.lr.ph.i
  %indvars.iv.i = phi i64 [ %17, %for.body30.lr.ph.i ], [ %indvars.iv.next.i, %if.end36.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %arrayidx32.i = getelementptr inbounds i32* %call8, i64 %indvars.iv.next.i
  %18 = load i32* %arrayidx32.i, align 4, !tbaa !3
  %cmp33.i = icmp slt i32 %18, %conv17.i
  br i1 %cmp33.i, label %lor.lhs.false.i89, label %if.end36.i

if.end36.i:                                       ; preds = %for.body30.i
  %arrayidx38.i = getelementptr inbounds i32* %call7.i, i64 %indvars.iv.next.i
  %19 = load i32* %arrayidx38.i, align 4, !tbaa !3
  %idxprom39.i = sext i32 %19 to i64
  %arrayidx40.i = getelementptr inbounds i32* %call6.i, i64 %idxprom39.i
  store i32 0, i32* %arrayidx40.i, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next.i to i32
  %cmp28.i = icmp sgt i32 %20, 0
  br i1 %cmp28.i, label %for.body30.i, label %lor.lhs.false.i89

lor.lhs.false.i89:                                ; preds = %for.cond27.preheader.i, %if.end36.i, %for.body30.i
  call void @IVfree(i32* %call7.i) #5
  %21 = bitcast i32* %vsize.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32** %vadj.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct._Graph** %g, align 8, !tbaa !0
  %cmp2.i86 = icmp eq %struct._Graph* %23, null
  %or.cond.i88 = or i1 %cmp2.i86, %cmp5
  br i1 %or.cond.i88, label %if.then.i91, label %if.end.i94

if.then.i91:                                      ; preds = %lor.lhs.false.i89
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0), %struct._GPart* %gpart, i32 %maxweight, i32 %seed) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i94:                                       ; preds = %lor.lhs.false.i89
  %vwghts5.i = getelementptr inbounds %struct._Graph* %23, i64 0, i32 7
  %25 = load i32** %vwghts5.i, align 8, !tbaa !0
  %26 = load i32* %nvtx5.i, align 4, !tbaa !3
  %call7.i93 = call i32* @IV_entries(%struct._IV* %compidsIV.i) #5
  %cmp8277.i = icmp sgt i32 %26, 0
  br i1 %cmp8277.i, label %for.body.i96, label %for.end.i

for.body.i96:                                     ; preds = %if.end.i94, %for.inc.i
  %indvars.iv292.i = phi i64 [ %indvars.iv.next293.i, %for.inc.i ], [ 0, %if.end.i94 ]
  %arrayidx.i95 = getelementptr inbounds i32* %call7.i93, i64 %indvars.iv292.i
  %27 = load i32* %arrayidx.i95, align 4, !tbaa !3
  %cmp9.i = icmp eq i32 %27, 0
  br i1 %cmp9.i, label %for.inc.i, label %if.then10.i

if.then10.i:                                      ; preds = %for.body.i96
  store i32 -1, i32* %arrayidx.i95, align 4, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i96
  %indvars.iv.next293.i = add i64 %indvars.iv292.i, 1
  %lftr.wideiv182 = trunc i64 %indvars.iv.next293.i to i32
  %exitcond183 = icmp eq i32 %lftr.wideiv182, %26
  br i1 %exitcond183, label %for.end.i, label %for.body.i96

for.end.i:                                        ; preds = %for.inc.i, %if.end.i94
  %call14.i = call i32* @IVinit2(i32 %26) #5
  call void @IVramp(i32 %26, i32* %call14.i, i32 0, i32 1) #5
  %cmp15.i = icmp sgt i32 %seed, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %for.end.i
  call void @IVshuffle(i32 %26, i32* %call14.i, i32 %seed) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %for.end.i
  %call18.i = call i32* @IVinit(i32 %26, i32 -1) #5
  br i1 %cmp8277.i, label %for.body21.lr.ph.i, label %for.end125.i

for.body21.lr.ph.i:                               ; preds = %if.end17.i
  %msgFile.i98 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %cmp52.i = icmp eq i32* %25, null
  %cmp61.i = icmp ne i32* %25, null
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.inc123.i, %for.body21.lr.ph.i
  %indvars.iv288.i = phi i64 [ 0, %for.body21.lr.ph.i ], [ %indvars.iv.next289.i, %for.inc123.i ]
  %ndom.0274.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %ndom.1.i, %for.inc123.i ]
  %arrayidx23.i = getelementptr inbounds i32* %call14.i, i64 %indvars.iv288.i
  %28 = load i32* %arrayidx23.i, align 4, !tbaa !3
  %29 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp24.i = icmp sgt i32 %29, 4
  br i1 %cmp24.i, label %if.then25.i, label %for.body21.if.end29_crit_edge.i

for.body21.if.end29_crit_edge.i:                  ; preds = %for.body21.i
  %idxprom30.pre.i = sext i32 %28 to i64
  %arrayidx31.pre.i = getelementptr inbounds i32* %call7.i93, i64 %idxprom30.pre.i
  br label %if.end29.i

if.then25.i:                                      ; preds = %for.body21.i
  %30 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %idxprom26.i = sext i32 %28 to i64
  %arrayidx27.i = getelementptr inbounds i32* %call7.i93, i64 %idxprom26.i
  %31 = load i32* %arrayidx27.i, align 4, !tbaa !3
  %call28.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([37 x i8]* @.str14, i64 0, i64 0), i32 %28, i32 %28, i32 %31) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %for.body21.if.end29_crit_edge.i
  %arrayidx31.pre-phi.i = phi i32* [ %arrayidx31.pre.i, %for.body21.if.end29_crit_edge.i ], [ %arrayidx27.i, %if.then25.i ]
  %32 = load i32* %arrayidx31.pre-phi.i, align 4, !tbaa !3
  %cmp32.i = icmp eq i32 %32, -1
  br i1 %cmp32.i, label %if.then33.i, label %for.inc123.i

if.then33.i:                                      ; preds = %if.end29.i
  %inc34.i = add nsw i32 %ndom.0274.i, 1
  %33 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp36.i = icmp sgt i32 %33, 3
  br i1 %cmp36.i, label %if.then37.i, label %if.end42.i

if.then37.i:                                      ; preds = %if.then33.i
  %34 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call39.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([30 x i8]* @.str15, i64 0, i64 0), i32 %inc34.i, i32 %28) #5
  %35 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call41.i = call i32 @fflush(%struct._IO_FILE* %35) #5
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.then33.i
  store i32 %28, i32* %call18.i, align 4, !tbaa !3
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.while.body_crit_edge.i, %if.end42.i
  %36 = phi i32 [ %28, %if.end42.i ], [ %.pre296.i, %while.cond.backedge.while.body_crit_edge.i ]
  %domweight.0272.i = phi i32 [ 0, %if.end42.i ], [ %add.i, %while.cond.backedge.while.body_crit_edge.i ]
  %last.0271.i = phi i32 [ 0, %if.end42.i ], [ %last.1.lcssa.i, %while.cond.backedge.while.body_crit_edge.i ]
  %now.0270.i = phi i32 [ 0, %if.end42.i ], [ %now.0.be.i, %while.cond.backedge.while.body_crit_edge.i ]
  %idxprom46.i = sext i32 %now.0270.i to i64
  %37 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp49.i = icmp sgt i32 %37, 4
  br i1 %cmp49.i, label %if.then50.i, label %if.end58.i

if.then50.i:                                      ; preds = %while.body.i
  %38 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  br i1 %cmp52.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then50.i
  %idxprom53.i = sext i32 %36 to i64
  %arrayidx54.i = getelementptr inbounds i32* %25, i64 %idxprom53.i
  %39 = load i32* %arrayidx54.i, align 4, !tbaa !3
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then50.i
  %cond.i = phi i32 [ %39, %cond.true.i ], [ 1, %if.then50.i ]
  %call55.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([39 x i8]* @.str16, i64 0, i64 0), i32 %36, i32 %inc34.i, i32 %cond.i) #5
  %40 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call57.i = call i32 @fflush(%struct._IO_FILE* %40) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %cond.end.i, %while.body.i
  %idxprom59.i = sext i32 %36 to i64
  %arrayidx60.i = getelementptr inbounds i32* %call7.i93, i64 %idxprom59.i
  store i32 %inc34.i, i32* %arrayidx60.i, align 4, !tbaa !3
  br i1 %cmp61.i, label %cond.true62.i, label %cond.end66.i

cond.true62.i:                                    ; preds = %if.end58.i
  %arrayidx64.i = getelementptr inbounds i32* %25, i64 %idxprom59.i
  %41 = load i32* %arrayidx64.i, align 4, !tbaa !3
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.true62.i, %if.end58.i
  %cond67.i = phi i32 [ %41, %cond.true62.i ], [ 1, %if.end58.i ]
  %add.i = add nsw i32 %cond67.i, %domweight.0272.i
  call void @Graph_adjAndSize(%struct._Graph* %23, i32 %36, i32* %vsize.i, i32** %vadj.i) #5
  %42 = load i32* %vsize.i, align 4, !tbaa !3
  %cmp69264.i = icmp sgt i32 %42, 0
  br i1 %cmp69264.i, label %for.body70.lr.ph.i, label %for.end86.i

for.body70.lr.ph.i:                               ; preds = %cond.end66.i
  %43 = load i32** %vadj.i, align 8, !tbaa !0
  br label %for.body70.i

for.body70.i:                                     ; preds = %for.inc84.i, %for.body70.lr.ph.i
  %44 = phi i32 [ %42, %for.body70.lr.ph.i ], [ %47, %for.inc84.i ]
  %indvars.iv283.i = phi i64 [ 0, %for.body70.lr.ph.i ], [ %indvars.iv.next284.i, %for.inc84.i ]
  %last.1265.i = phi i32 [ %last.0271.i, %for.body70.lr.ph.i ], [ %last.2.i, %for.inc84.i ]
  %arrayidx72.i = getelementptr inbounds i32* %43, i64 %indvars.iv283.i
  %45 = load i32* %arrayidx72.i, align 4, !tbaa !3
  %cmp73.i = icmp slt i32 %45, %26
  br i1 %cmp73.i, label %land.lhs.true.i, label %for.inc84.i

land.lhs.true.i:                                  ; preds = %for.body70.i
  %idxprom74.i = sext i32 %45 to i64
  %arrayidx75.i = getelementptr inbounds i32* %call7.i93, i64 %idxprom74.i
  %46 = load i32* %arrayidx75.i, align 4, !tbaa !3
  %cmp76.i = icmp eq i32 %46, -1
  br i1 %cmp76.i, label %if.then77.i, label %for.inc84.i

if.then77.i:                                      ; preds = %land.lhs.true.i
  store i32 -2, i32* %arrayidx75.i, align 4, !tbaa !3
  %inc80.i = add nsw i32 %last.1265.i, 1
  %idxprom81.i = sext i32 %inc80.i to i64
  %arrayidx82.i = getelementptr inbounds i32* %call18.i, i64 %idxprom81.i
  store i32 %45, i32* %arrayidx82.i, align 4, !tbaa !3
  %.pre.i = load i32* %vsize.i, align 4, !tbaa !3
  br label %for.inc84.i

for.inc84.i:                                      ; preds = %if.then77.i, %land.lhs.true.i, %for.body70.i
  %47 = phi i32 [ %.pre.i, %if.then77.i ], [ %44, %land.lhs.true.i ], [ %44, %for.body70.i ]
  %last.2.i = phi i32 [ %inc80.i, %if.then77.i ], [ %last.1265.i, %land.lhs.true.i ], [ %last.1265.i, %for.body70.i ]
  %indvars.iv.next284.i = add i64 %indvars.iv283.i, 1
  %48 = trunc i64 %indvars.iv.next284.i to i32
  %cmp69.i = icmp slt i32 %48, %47
  br i1 %cmp69.i, label %for.body70.i, label %for.end86.i

for.end86.i:                                      ; preds = %for.inc84.i, %cond.end66.i
  %last.1.lcssa.i = phi i32 [ %last.0271.i, %cond.end66.i ], [ %last.2.i, %for.inc84.i ]
  %cmp87.i = icmp sge i32 %add.i, %maxweight
  %cmp90267.i = icmp slt i32 %now.0270.i, %last.1.lcssa.i
  %or.cond297.i = and i1 %cmp87.i, %cmp90267.i
  br i1 %or.cond297.i, label %while.body91.i, label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end109.i, %for.end86.i
  %now.0.be.in.i = phi i32 [ %now.0270.i, %for.end86.i ], [ %last.1.lcssa.i, %if.end109.i ]
  %now.0.be.i = add i32 %now.0.be.in.i, 1
  %cmp44.i = icmp sgt i32 %now.0.be.i, %last.1.lcssa.i
  br i1 %cmp44.i, label %while.end113.i, label %while.cond.backedge.while.body_crit_edge.i

while.cond.backedge.while.body_crit_edge.i:       ; preds = %while.cond.backedge.i
  %idxprom46.phi.trans.insert.i = sext i32 %now.0.be.i to i64
  %arrayidx47.phi.trans.insert.i = getelementptr inbounds i32* %call18.i, i64 %idxprom46.phi.trans.insert.i
  %.pre296.i = load i32* %arrayidx47.phi.trans.insert.i, align 4, !tbaa !3
  br label %while.body.i

while.body91.i:                                   ; preds = %for.end86.i, %if.end109.i
  %indvars.iv285.in.i = phi i64 [ %indvars.iv285.i, %if.end109.i ], [ %idxprom46.i, %for.end86.i ]
  %indvars.iv285.i = add i64 %indvars.iv285.in.i, 1
  %arrayidx94.i = getelementptr inbounds i32* %call18.i, i64 %indvars.iv285.i
  %49 = load i32* %arrayidx94.i, align 4, !tbaa !3
  %50 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp96.i = icmp sgt i32 %50, 4
  br i1 %cmp96.i, label %if.then97.i, label %if.end109.i

if.then97.i:                                      ; preds = %while.body91.i
  %51 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  br i1 %cmp61.i, label %cond.true100.i, label %cond.end104.i

cond.true100.i:                                   ; preds = %if.then97.i
  %idxprom101.i = sext i32 %49 to i64
  %arrayidx102.i = getelementptr inbounds i32* %25, i64 %idxprom101.i
  %52 = load i32* %arrayidx102.i, align 4, !tbaa !3
  br label %cond.end104.i

cond.end104.i:                                    ; preds = %cond.true100.i, %if.then97.i
  %cond105.i = phi i32 [ %52, %cond.true100.i ], [ 1, %if.then97.i ]
  %call106.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([39 x i8]* @.str17, i64 0, i64 0), i32 %49, i32 %cond105.i) #5
  %53 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call108.i = call i32 @fflush(%struct._IO_FILE* %53) #5
  br label %if.end109.i

if.end109.i:                                      ; preds = %cond.end104.i, %while.body91.i
  %idxprom110.i = sext i32 %49 to i64
  %arrayidx111.i = getelementptr inbounds i32* %call7.i93, i64 %idxprom110.i
  store i32 0, i32* %arrayidx111.i, align 4, !tbaa !3
  %54 = trunc i64 %indvars.iv285.i to i32
  %cmp90.i = icmp slt i32 %54, %last.1.lcssa.i
  br i1 %cmp90.i, label %while.body91.i, label %while.cond.backedge.i

while.end113.i:                                   ; preds = %while.cond.backedge.i
  %55 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp115.i = icmp sgt i32 %55, 2
  br i1 %cmp115.i, label %if.then116.i, label %for.inc123.i

if.then116.i:                                     ; preds = %while.end113.i
  %56 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call118.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0), i32 %inc34.i, i32 %add.i) #5
  %57 = load %struct._IO_FILE** %msgFile.i98, align 8, !tbaa !0
  %call120.i = call i32 @fflush(%struct._IO_FILE* %57) #5
  br label %for.inc123.i

for.inc123.i:                                     ; preds = %if.then116.i, %while.end113.i, %if.end29.i
  %ndom.1.i = phi i32 [ %inc34.i, %if.then116.i ], [ %inc34.i, %while.end113.i ], [ %ndom.0274.i, %if.end29.i ]
  %indvars.iv.next289.i = add i64 %indvars.iv288.i, 1
  %lftr.wideiv180 = trunc i64 %indvars.iv.next289.i to i32
  %exitcond181 = icmp eq i32 %lftr.wideiv180, %26
  br i1 %exitcond181, label %for.end125.i, label %for.body21.i

for.end125.i:                                     ; preds = %for.inc123.i, %if.end17.i
  %ndom.0.lcssa.i = phi i32 [ 0, %if.end17.i ], [ %ndom.1.i, %for.inc123.i ]
  %ncomp.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 %ndom.0.lcssa.i, i32* %ncomp.i, align 4, !tbaa !3
  %cweightsIV.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %add126.i = add nsw i32 %ndom.0.lcssa.i, 1
  call void @IV_setSize(%struct._IV* %cweightsIV.i, i32 %add126.i) #5
  call void @IV_fill(%struct._IV* %cweightsIV.i, i32 0) #5
  %call129.i = call i32* @IV_entries(%struct._IV* %cweightsIV.i) #5
  %cmp130.i = icmp eq i32* %25, null
  br i1 %cmp130.i, label %for.cond145.preheader.i, label %for.cond132.preheader.i

for.cond132.preheader.i:                          ; preds = %for.end125.i
  br i1 %cmp8277.i, label %for.body134.i, label %GPart_indpSetGrowth.exit

for.cond145.preheader.i:                          ; preds = %for.end125.i
  br i1 %cmp8277.i, label %for.body147.i, label %GPart_indpSetGrowth.exit

for.body134.i:                                    ; preds = %for.cond132.preheader.i, %for.body134.i
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %for.body134.i ], [ 0, %for.cond132.preheader.i ]
  %arrayidx136.i = getelementptr inbounds i32* %25, i64 %indvars.iv279.i
  %58 = load i32* %arrayidx136.i, align 4, !tbaa !3
  %arrayidx138.i = getelementptr inbounds i32* %call7.i93, i64 %indvars.iv279.i
  %59 = load i32* %arrayidx138.i, align 4, !tbaa !3
  %idxprom139.i = sext i32 %59 to i64
  %arrayidx140.i = getelementptr inbounds i32* %call129.i, i64 %idxprom139.i
  %60 = load i32* %arrayidx140.i, align 4, !tbaa !3
  %add141.i = add nsw i32 %60, %58
  store i32 %add141.i, i32* %arrayidx140.i, align 4, !tbaa !3
  %indvars.iv.next280.i = add i64 %indvars.iv279.i, 1
  %lftr.wideiv178 = trunc i64 %indvars.iv.next280.i to i32
  %exitcond179 = icmp eq i32 %lftr.wideiv178, %26
  br i1 %exitcond179, label %GPart_indpSetGrowth.exit, label %for.body134.i

for.body147.i:                                    ; preds = %for.cond145.preheader.i, %for.body147.i
  %indvars.iv.i99 = phi i64 [ %indvars.iv.next.i100, %for.body147.i ], [ 0, %for.cond145.preheader.i ]
  %arrayidx149.i = getelementptr inbounds i32* %call7.i93, i64 %indvars.iv.i99
  %61 = load i32* %arrayidx149.i, align 4, !tbaa !3
  %idxprom150.i = sext i32 %61 to i64
  %arrayidx151.i = getelementptr inbounds i32* %call129.i, i64 %idxprom150.i
  %62 = load i32* %arrayidx151.i, align 4, !tbaa !3
  %inc152.i = add nsw i32 %62, 1
  store i32 %inc152.i, i32* %arrayidx151.i, align 4, !tbaa !3
  %indvars.iv.next.i100 = add i64 %indvars.iv.i99, 1
  %lftr.wideiv176 = trunc i64 %indvars.iv.next.i100 to i32
  %exitcond177 = icmp eq i32 %lftr.wideiv176, %26
  br i1 %exitcond177, label %GPart_indpSetGrowth.exit, label %for.body147.i

GPart_indpSetGrowth.exit:                         ; preds = %for.body134.i, %for.body147.i, %for.cond132.preheader.i, %for.cond145.preheader.i
  call void @IVfree(i32* %call18.i) #5
  call void @IVfree(i32* %call14.i) #5
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  call void @IVfree(i32* %call8) #5
  %63 = load i32* %ncomp.i, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %63, 1
  br i1 %cmp18, label %if.then19, label %lor.lhs.false.i106

if.then19:                                        ; preds = %GPart_indpSetGrowth.exit
  call void @IV_fill(%struct._IV* %compidsIV.i, i32 1) #5
  br label %cleanup

lor.lhs.false.i106:                               ; preds = %GPart_indpSetGrowth.exit
  %64 = bitcast i32* %ierr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = load %struct._Graph** %g, align 8, !tbaa !0
  %cmp2.i105 = icmp eq %struct._Graph* %65, null
  br i1 %cmp2.i105, label %if.then.i108, label %if.end.i115

if.then.i108:                                     ; preds = %lor.lhs.false.i106
  %66 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i107 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), %struct._GPart* %gpart, i32 %minweight) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i115:                                      ; preds = %lor.lhs.false.i106
  %67 = load i32* %nvtx5.i, align 4, !tbaa !3
  %call5.i = call i32* @IV_entries(%struct._IV* %compidsIV.i) #5
  %call6.i112 = call i32* @IV_entries(%struct._IV* %cweightsIV.i) #5
  %add.i113 = add i32 %63, 1
  %call7.i114 = call i32* @IVinit(i32 %add.i113, i32 -1) #5
  %call8.i = call i32* @IVinit(i32 %67, i32 -1) #5
  %cmp9255.i = icmp sgt i32 %67, 0
  br i1 %cmp9255.i, label %for.body.i117, label %for.end.i118

for.body.i117:                                    ; preds = %if.end.i115, %for.body.i117
  %indvars.iv265.i = phi i64 [ %indvars.iv.next266.i, %for.body.i117 ], [ 0, %if.end.i115 ]
  %arrayidx.i116 = getelementptr inbounds i32* %call5.i, i64 %indvars.iv265.i
  %68 = load i32* %arrayidx.i116, align 4, !tbaa !3
  %idxprom10.i = sext i32 %68 to i64
  %arrayidx11.i = getelementptr inbounds i32* %call7.i114, i64 %idxprom10.i
  %69 = load i32* %arrayidx11.i, align 4, !tbaa !3
  %arrayidx13.i = getelementptr inbounds i32* %call8.i, i64 %indvars.iv265.i
  store i32 %69, i32* %arrayidx13.i, align 4, !tbaa !3
  %70 = trunc i64 %indvars.iv265.i to i32
  store i32 %70, i32* %arrayidx11.i, align 4, !tbaa !3
  %indvars.iv.next266.i = add i64 %indvars.iv265.i, 1
  %lftr.wideiv174 = trunc i64 %indvars.iv.next266.i to i32
  %exitcond175 = icmp eq i32 %lftr.wideiv174, %67
  br i1 %exitcond175, label %for.end.i118, label %for.body.i117

for.end.i118:                                     ; preds = %for.body.i117, %if.end.i115
  %call17.i = call i32* @IVinit(i32 %add.i113, i32 -1) #5
  store i32 0, i32* %call17.i, align 4, !tbaa !3
  %cmp20252.i = icmp slt i32 %63, 1
  br i1 %cmp20252.i, label %for.end69.i, label %for.body21.lr.ph.i121

for.body21.lr.ph.i121:                            ; preds = %for.end.i118
  %msgFile.i120 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  br label %for.body21.i124

for.body21.i124:                                  ; preds = %for.inc67.i, %for.body21.lr.ph.i121
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %for.inc67.i ], [ 1, %for.body21.lr.ph.i121 ]
  %nnewdom.0253.i = phi i32 [ %nnewdom.1.i, %for.inc67.i ], [ 0, %for.body21.lr.ph.i121 ]
  %arrayidx23.i122 = getelementptr inbounds i32* %call6.i112, i64 %indvars.iv261.i
  %71 = load i32* %arrayidx23.i122, align 4, !tbaa !3
  %cmp24.i123 = icmp slt i32 %71, %minweight
  br i1 %cmp24.i123, label %if.then25.i125, label %if.else.i

if.then25.i125:                                   ; preds = %for.body21.i124
  %72 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp26.i = icmp sgt i32 %72, 2
  br i1 %cmp26.i, label %if.then27.i, label %if.end33.i

if.then27.i:                                      ; preds = %if.then25.i125
  %73 = load %struct._IO_FILE** %msgFile.i120, align 8, !tbaa !0
  %74 = trunc i64 %indvars.iv261.i to i32
  %call30.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), i32 %74, i32 %71) #5
  %75 = load %struct._IO_FILE** %msgFile.i120, align 8, !tbaa !0
  %call32.i = call i32 @fflush(%struct._IO_FILE* %75) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %if.then25.i125
  %arrayidx35.i = getelementptr inbounds i32* %call7.i114, i64 %indvars.iv261.i
  %v.1249.i = load i32* %arrayidx35.i, align 4
  %cmp37250.i = icmp eq i32 %v.1249.i, -1
  br i1 %cmp37250.i, label %for.end44.i, label %for.body38.i

for.body38.i:                                     ; preds = %if.end33.i, %for.body38.i
  %v.1251.i = phi i32 [ %v.1.i, %for.body38.i ], [ %v.1249.i, %if.end33.i ]
  %idxprom39.i126 = sext i32 %v.1251.i to i64
  %arrayidx40.i127 = getelementptr inbounds i32* %call5.i, i64 %idxprom39.i126
  store i32 0, i32* %arrayidx40.i127, align 4, !tbaa !3
  %arrayidx43.i = getelementptr inbounds i32* %call8.i, i64 %idxprom39.i126
  %v.1.i = load i32* %arrayidx43.i, align 4
  %cmp37.i = icmp eq i32 %v.1.i, -1
  br i1 %cmp37.i, label %for.end44.i, label %for.body38.i

for.end44.i:                                      ; preds = %for.body38.i, %if.end33.i
  %76 = load i32* %arrayidx23.i122, align 4, !tbaa !3
  %77 = load i32* %call6.i112, align 4, !tbaa !3
  %add48.i = add nsw i32 %77, %76
  store i32 %add48.i, i32* %call6.i112, align 4, !tbaa !3
  store i32 0, i32* %arrayidx23.i122, align 4, !tbaa !3
  %arrayidx52.i = getelementptr inbounds i32* %call17.i, i64 %indvars.iv261.i
  store i32 0, i32* %arrayidx52.i, align 4, !tbaa !3
  br label %if.end56.i

if.else.i:                                        ; preds = %for.body21.i124
  %inc53.i = add nsw i32 %nnewdom.0253.i, 1
  %arrayidx55.i = getelementptr inbounds i32* %call17.i, i64 %indvars.iv261.i
  store i32 %inc53.i, i32* %arrayidx55.i, align 4, !tbaa !3
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %for.end44.i
  %78 = phi i32 [ 0, %for.end44.i ], [ %inc53.i, %if.else.i ]
  %nnewdom.1.i = phi i32 [ %nnewdom.0253.i, %for.end44.i ], [ %inc53.i, %if.else.i ]
  %79 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp58.i = icmp sgt i32 %79, 2
  br i1 %cmp58.i, label %if.then59.i, label %for.inc67.i

if.then59.i:                                      ; preds = %if.end56.i
  %80 = load %struct._IO_FILE** %msgFile.i120, align 8, !tbaa !0
  %81 = trunc i64 %indvars.iv261.i to i32
  %call63.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i32 %81, i32 %78) #5
  %82 = load %struct._IO_FILE** %msgFile.i120, align 8, !tbaa !0
  %call65.i = call i32 @fflush(%struct._IO_FILE* %82) #5
  br label %for.inc67.i

for.inc67.i:                                      ; preds = %if.then59.i, %if.end56.i
  %indvars.iv.next262.i = add i64 %indvars.iv261.i, 1
  %lftr.wideiv172 = trunc i64 %indvars.iv.next262.i to i32
  %exitcond173 = icmp eq i32 %lftr.wideiv172, %add.i113
  br i1 %exitcond173, label %for.end69.i, label %for.body21.i124

for.end69.i:                                      ; preds = %for.inc67.i, %for.end.i118
  %nnewdom.0.lcssa.i = phi i32 [ 0, %for.end.i118 ], [ %nnewdom.1.i, %for.inc67.i ]
  %cmp70.i = icmp eq i32 %nnewdom.0.lcssa.i, %63
  br i1 %cmp70.i, label %GPart_absDomains.exit, label %if.then71.i

if.then71.i:                                      ; preds = %for.end69.i
  store i32 %nnewdom.0.lcssa.i, i32* %ncomp.i, align 4, !tbaa !3
  %83 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp74.i = icmp sgt i32 %83, 3
  br i1 %cmp74.i, label %if.then75.i, label %for.cond83.preheader.i

if.then75.i:                                      ; preds = %if.then71.i
  %msgFile76.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %84 = load %struct._IO_FILE** %msgFile76.i, align 8, !tbaa !0
  %85 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %84) #1
  %86 = load %struct._IO_FILE** %msgFile76.i, align 8, !tbaa !0
  %call79.i = call i32 @IVfp80(%struct._IO_FILE* %86, i32 %67, i32* %call5.i, i32 80, i32* %ierr.i) #5
  %87 = load %struct._IO_FILE** %msgFile76.i, align 8, !tbaa !0
  %call81.i = call i32 @fflush(%struct._IO_FILE* %87) #5
  br label %for.cond83.preheader.i

for.cond83.preheader.i:                           ; preds = %if.then75.i, %if.then71.i
  br i1 %cmp9255.i, label %for.body85.i, label %for.end94.i

for.body85.i:                                     ; preds = %for.cond83.preheader.i, %for.body85.i
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i, %for.body85.i ], [ 0, %for.cond83.preheader.i ]
  %arrayidx87.i = getelementptr inbounds i32* %call5.i, i64 %indvars.iv257.i
  %88 = load i32* %arrayidx87.i, align 4, !tbaa !3
  %idxprom88.i = sext i32 %88 to i64
  %arrayidx89.i = getelementptr inbounds i32* %call17.i, i64 %idxprom88.i
  %89 = load i32* %arrayidx89.i, align 4, !tbaa !3
  store i32 %89, i32* %arrayidx87.i, align 4, !tbaa !3
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, 1
  %lftr.wideiv170 = trunc i64 %indvars.iv.next258.i to i32
  %exitcond171 = icmp eq i32 %lftr.wideiv170, %67
  br i1 %exitcond171, label %for.end94.i, label %for.body85.i

for.end94.i:                                      ; preds = %for.body85.i, %for.cond83.preheader.i
  %90 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp96.i128 = icmp sgt i32 %90, 3
  br i1 %cmp96.i128, label %if.then97.i129, label %if.end104.i

if.then97.i129:                                   ; preds = %for.end94.i
  %msgFile98.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %91 = load %struct._IO_FILE** %msgFile98.i, align 8, !tbaa !0
  %92 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %91) #1
  %93 = load %struct._IO_FILE** %msgFile98.i, align 8, !tbaa !0
  %call101.i = call i32 @IVfp80(%struct._IO_FILE* %93, i32 %67, i32* %call5.i, i32 80, i32* %ierr.i) #5
  %94 = load %struct._IO_FILE** %msgFile98.i, align 8, !tbaa !0
  %call103.i = call i32 @fflush(%struct._IO_FILE* %94) #5
  %.pr.i = load i32* %msglvl.i, align 4, !tbaa !3
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then97.i129, %for.end94.i
  %95 = phi i32 [ %.pr.i, %if.then97.i129 ], [ %90, %for.end94.i ]
  %cmp106.i = icmp sgt i32 %95, 2
  br i1 %cmp106.i, label %if.then107.i, label %for.cond116.preheader.i

if.then107.i:                                     ; preds = %if.end104.i
  %msgFile108.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %96 = load %struct._IO_FILE** %msgFile108.i, align 8, !tbaa !0
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %96) #1
  %98 = load %struct._IO_FILE** %msgFile108.i, align 8, !tbaa !0
  %call112.i = call i32 @IVfp80(%struct._IO_FILE* %98, i32 %add.i113, i32* %call6.i112, i32 80, i32* %ierr.i) #5
  %99 = load %struct._IO_FILE** %msgFile108.i, align 8, !tbaa !0
  %call114.i = call i32 @fflush(%struct._IO_FILE* %99) #5
  br label %for.cond116.preheader.i

for.cond116.preheader.i:                          ; preds = %if.then107.i, %if.end104.i
  br i1 %cmp20252.i, label %for.end132.i, label %for.body118.i

for.body118.i:                                    ; preds = %for.cond116.preheader.i, %for.inc130.i
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %for.inc130.i ], [ 1, %for.cond116.preheader.i ]
  %arrayidx120.i = getelementptr inbounds i32* %call17.i, i64 %indvars.iv.i130
  %100 = load i32* %arrayidx120.i, align 4, !tbaa !3
  %cmp121.i = icmp eq i32 %100, 0
  br i1 %cmp121.i, label %for.inc130.i, label %if.then122.i

if.then122.i:                                     ; preds = %for.body118.i
  %arrayidx124.i = getelementptr inbounds i32* %call6.i112, i64 %indvars.iv.i130
  %101 = load i32* %arrayidx124.i, align 4, !tbaa !3
  %idxprom127.i = sext i32 %100 to i64
  %arrayidx128.i = getelementptr inbounds i32* %call6.i112, i64 %idxprom127.i
  store i32 %101, i32* %arrayidx128.i, align 4, !tbaa !3
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %if.then122.i, %for.body118.i
  %indvars.iv.next.i131 = add i64 %indvars.iv.i130, 1
  %lftr.wideiv168 = trunc i64 %indvars.iv.next.i131 to i32
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %add.i113
  br i1 %exitcond169, label %for.end132.i, label %for.body118.i

for.end132.i:                                     ; preds = %for.inc130.i, %for.cond116.preheader.i
  call void @IV_setSize(%struct._IV* %cweightsIV.i, i32 %nnewdom.0.lcssa.i) #5
  %102 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp135.i = icmp sgt i32 %102, 2
  br i1 %cmp135.i, label %if.then136.i, label %GPart_absDomains.exit

if.then136.i:                                     ; preds = %for.end132.i
  %msgFile137.i = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %103 = load %struct._IO_FILE** %msgFile137.i, align 8, !tbaa !0
  %104 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %103) #1
  %105 = load %struct._IO_FILE** %msgFile137.i, align 8, !tbaa !0
  %add140.i = add nsw i32 %nnewdom.0.lcssa.i, 1
  %call141.i = call i32 @IVfp80(%struct._IO_FILE* %105, i32 %add140.i, i32* %call6.i112, i32 80, i32* %ierr.i) #5
  %106 = load %struct._IO_FILE** %msgFile137.i, align 8, !tbaa !0
  %call143.i = call i32 @fflush(%struct._IO_FILE* %106) #5
  br label %GPart_absDomains.exit

GPart_absDomains.exit:                            ; preds = %for.end69.i, %for.end132.i, %if.then136.i
  call void @IVfree(i32* %call7.i114) #5
  call void @IVfree(i32* %call8.i) #5
  call void @IVfree(i32* %call17.i) #5
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %107 = load i32* %ncomp.i, align 4, !tbaa !3
  %cmp24 = icmp slt i32 %107, 2
  br i1 %cmp24, label %if.then25, label %lor.lhs.false.i137

if.then25:                                        ; preds = %GPart_absDomains.exit
  call void @IV_fill(%struct._IV* %compidsIV.i, i32 1) #5
  br label %cleanup

lor.lhs.false.i137:                               ; preds = %GPart_absDomains.exit
  %108 = bitcast i32* %domid.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load %struct._Graph** %g, align 8, !tbaa !0
  %cmp2.i136 = icmp eq %struct._Graph* %109, null
  br i1 %cmp2.i136, label %if.then.i139, label %if.end.i145

if.then.i139:                                     ; preds = %lor.lhs.false.i137
  %110 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call.i138 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._GPart* %gpart) #5
  call void @exit(i32 -1) #6
  unreachable

if.end.i145:                                      ; preds = %lor.lhs.false.i137
  %111 = load i32* %nvtx5.i, align 4, !tbaa !3
  %call4.i = call i32* @IV_entries(%struct._IV* %compidsIV.i) #5
  %call5.i143 = call i32* @IV_entries(%struct._IV* %cweightsIV.i) #5
  %112 = load %struct._Graph** %g, align 8, !tbaa !0
  %vwghts7.i = getelementptr inbounds %struct._Graph* %112, i64 0, i32 7
  %113 = load i32** %vwghts7.i, align 8, !tbaa !0
  %call8.i144 = call i32* @IVinit(i32 %111, i32 -1) #5
  %cmp9113.i = icmp sgt i32 %111, 0
  br i1 %cmp9113.i, label %for.body.i149, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i151, %if.end.i145
  %count.0.lcssa.i = phi i32 [ 0, %if.end.i145 ], [ %count.1.i, %for.inc.i151 ]
  %msgFile.i147 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %cmp31.i = icmp eq i32* %113, null
  br label %while.cond.i

for.body.i149:                                    ; preds = %if.end.i145, %for.inc.i151
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %for.inc.i151 ], [ 0, %if.end.i145 ]
  %count.0115.i = phi i32 [ %count.1.i, %for.inc.i151 ], [ 0, %if.end.i145 ]
  %arrayidx.i148 = getelementptr inbounds i32* %call4.i, i64 %indvars.iv117.i
  %114 = load i32* %arrayidx.i148, align 4, !tbaa !3
  %cmp10.i = icmp eq i32 %114, 0
  br i1 %cmp10.i, label %if.then11.i, label %for.inc.i151

if.then11.i:                                      ; preds = %for.body.i149
  %inc.i = add nsw i32 %count.0115.i, 1
  %idxprom12.i = sext i32 %count.0115.i to i64
  %arrayidx13.i150 = getelementptr inbounds i32* %call8.i144, i64 %idxprom12.i
  %115 = trunc i64 %indvars.iv117.i to i32
  store i32 %115, i32* %arrayidx13.i150, align 4, !tbaa !3
  br label %for.inc.i151

for.inc.i151:                                     ; preds = %if.then11.i, %for.body.i149
  %count.1.i = phi i32 [ %inc.i, %if.then11.i ], [ %count.0115.i, %for.body.i149 ]
  %indvars.iv.next118.i = add i64 %indvars.iv117.i, 1
  %lftr.wideiv166 = trunc i64 %indvars.iv.next118.i to i32
  %exitcond167 = icmp eq i32 %lftr.wideiv166, %111
  br i1 %exitcond167, label %while.cond.preheader.i, label %for.body.i149

while.cond.i:                                     ; preds = %for.end63.i, %while.cond.preheader.i
  %oldcount.0.i = phi i32 [ %count.4.i, %for.end63.i ], [ -1, %while.cond.preheader.i ]
  %count.2.i = phi i32 [ %count.4.i, %for.end63.i ], [ %count.0.lcssa.i, %while.cond.preheader.i ]
  %cmp16.i = icmp sgt i32 %count.2.i, 0
  br i1 %cmp16.i, label %while.body.i152, label %GPart_absBoundary.exit

while.body.i152:                                  ; preds = %while.cond.i
  %116 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp17.i = icmp sgt i32 %116, 2
  br i1 %cmp17.i, label %if.then18.i, label %for.body23.i

if.then18.i:                                      ; preds = %while.body.i152
  %117 = load %struct._IO_FILE** %msgFile.i147, align 8, !tbaa !0
  %call19.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i32 %count.2.i) #5
  br label %for.body23.i

for.body23.i:                                     ; preds = %if.then18.i, %while.body.i152, %for.inc61.i
  %indvars.iv.i153 = phi i64 [ %indvars.iv.next.i160, %for.inc61.i ], [ 0, %while.body.i152 ], [ 0, %if.then18.i ]
  %count.3112.i = phi i32 [ %count.4.i, %for.inc61.i ], [ 0, %while.body.i152 ], [ 0, %if.then18.i ]
  %arrayidx25.i = getelementptr inbounds i32* %call8.i144, i64 %indvars.iv.i153
  %118 = load i32* %arrayidx25.i, align 4, !tbaa !3
  %call26.i = call i32 @GPart_vtxIsAdjToOneDomain(%struct._GPart* %gpart, i32 %118, i32* %domid.i) #5
  %cmp27.i = icmp eq i32 %call26.i, 1
  %119 = load i32* %domid.i, align 4, !tbaa !3
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i159

if.then28.i:                                      ; preds = %for.body23.i
  %idxprom29.i = sext i32 %118 to i64
  %arrayidx30.i = getelementptr inbounds i32* %call4.i, i64 %idxprom29.i
  store i32 %119, i32* %arrayidx30.i, align 4, !tbaa !3
  br i1 %cmp31.i, label %cond.end.i157, label %cond.true.i154

cond.true.i154:                                   ; preds = %if.then28.i
  %arrayidx33.i = getelementptr inbounds i32* %113, i64 %idxprom29.i
  %120 = load i32* %arrayidx33.i, align 4, !tbaa !3
  br label %cond.end.i157

cond.end.i157:                                    ; preds = %cond.true.i154, %if.then28.i
  %cond.i155 = phi i32 [ %120, %cond.true.i154 ], [ 1, %if.then28.i ]
  %121 = load i32* %call5.i143, align 4, !tbaa !3
  %sub.i = sub nsw i32 %121, %cond.i155
  store i32 %sub.i, i32* %call5.i143, align 4, !tbaa !3
  %122 = load i32* %domid.i, align 4, !tbaa !3
  %idxprom35.i = sext i32 %122 to i64
  %arrayidx36.i = getelementptr inbounds i32* %call5.i143, i64 %idxprom35.i
  %123 = load i32* %arrayidx36.i, align 4, !tbaa !3
  %add.i156 = add nsw i32 %123, %cond.i155
  store i32 %add.i156, i32* %arrayidx36.i, align 4, !tbaa !3
  %124 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp38.i = icmp sgt i32 %124, 3
  br i1 %cmp38.i, label %if.then39.i, label %for.inc61.i

if.then39.i:                                      ; preds = %cond.end.i157
  %125 = load %struct._IO_FILE** %msgFile.i147, align 8, !tbaa !0
  %126 = load i32* %domid.i, align 4, !tbaa !3
  %127 = load i32* %call5.i143, align 4, !tbaa !3
  %idxprom42.i = sext i32 %126 to i64
  %arrayidx43.i158 = getelementptr inbounds i32* %call5.i143, i64 %idxprom42.i
  %128 = load i32* %arrayidx43.i158, align 4, !tbaa !3
  %call44.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([95 x i8]* @.str4, i64 0, i64 0), i32 %118, i32 %cond.i155, i32 %126, i32 %127, i32 %126, i32 %128) #5
  %129 = load %struct._IO_FILE** %msgFile.i147, align 8, !tbaa !0
  %call46.i = call i32 @fflush(%struct._IO_FILE* %129) #5
  br label %for.inc61.i

if.else.i159:                                     ; preds = %for.body23.i
  %cmp48.i = icmp eq i32 %119, -1
  br i1 %cmp48.i, label %if.then49.i, label %for.inc61.i

if.then49.i:                                      ; preds = %if.else.i159
  %130 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp51.i = icmp sgt i32 %130, 3
  br i1 %cmp51.i, label %if.then52.i, label %if.end55.i

if.then52.i:                                      ; preds = %if.then49.i
  %131 = load %struct._IO_FILE** %msgFile.i147, align 8, !tbaa !0
  %call54.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i32 %118) #5
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.then49.i
  %inc56.i = add nsw i32 %count.3112.i, 1
  %idxprom57.i = sext i32 %count.3112.i to i64
  %arrayidx58.i = getelementptr inbounds i32* %call8.i144, i64 %idxprom57.i
  store i32 %118, i32* %arrayidx58.i, align 4, !tbaa !3
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %if.end55.i, %if.else.i159, %if.then39.i, %cond.end.i157
  %count.4.i = phi i32 [ %count.3112.i, %if.then39.i ], [ %count.3112.i, %cond.end.i157 ], [ %inc56.i, %if.end55.i ], [ %count.3112.i, %if.else.i159 ]
  %indvars.iv.next.i160 = add i64 %indvars.iv.i153, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i160 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %count.2.i
  br i1 %exitcond, label %for.end63.i, label %for.body23.i

for.end63.i:                                      ; preds = %for.inc61.i
  %cmp64.i = icmp eq i32 %count.4.i, %oldcount.0.i
  br i1 %cmp64.i, label %GPart_absBoundary.exit, label %while.cond.i

GPart_absBoundary.exit:                           ; preds = %while.cond.i, %for.end63.i
  call void @IVfree(i32* %call8.i144) #5
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %132 = load i32* %msglvl.i, align 4, !tbaa !3
  %cmp30 = icmp sgt i32 %132, 1
  br i1 %cmp30, label %if.then31, label %cleanup

if.then31:                                        ; preds = %GPart_absBoundary.exit
  %133 = load %struct._IO_FILE** %msgFile.i147, align 8, !tbaa !0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([212 x i8]* @.str1, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00) #5
  br label %cleanup

cleanup:                                          ; preds = %GPart_absBoundary.exit, %if.then31, %if.then25, %if.then19
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare i32 @Graph_externalDegree(%struct._Graph*, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare i32 @GPart_vtxIsAdjToOneDomain(%struct._GPart*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #4

; Function Attrs: optsize
declare i32* @IVinit2(i32) #4

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #4

; Function Attrs: optsize
declare void @IVshuffle(i32, i32*, i32) #4

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
