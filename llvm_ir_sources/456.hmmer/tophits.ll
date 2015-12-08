; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/tophits.c\00", align 1
@.str2 = private unnamed_addr constant [31 x i8] c"     Total hits:           %d\0A\00", align 1
@.str3 = private unnamed_addr constant [31 x i8] c"     Satisfying E cutoff:  %d\0A\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"     Total memory:         %dK\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"tophits_s report:\00"

; Function Attrs: nounwind optsize uwtable
define %struct.tophit_s* @AllocTophits(i32 %lumpsize) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 82, i64 32) #6
  %0 = bitcast i8* %call to %struct.tophit_s*
  %hit = bitcast i8* %call to %struct.hit_s***
  store %struct.hit_s** null, %struct.hit_s*** %hit, align 8, !tbaa !0
  %conv = sext i32 %lumpsize to i64
  %mul = mul i64 %conv, 104
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 84, i64 %mul) #6
  %1 = bitcast i8* %call1 to %struct.hit_s*
  %unsrt = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %unsrt to %struct.hit_s**
  store %struct.hit_s* %1, %struct.hit_s** %2, align 8, !tbaa !0
  %alloc = getelementptr inbounds i8* %call, i64 16
  %3 = bitcast i8* %alloc to i32*
  store i32 %lumpsize, i32* %3, align 4, !tbaa !3
  %num = getelementptr inbounds i8* %call, i64 20
  %4 = bitcast i8* %num to i32*
  store i32 0, i32* %4, align 4, !tbaa !3
  %lump = getelementptr inbounds i8* %call, i64 24
  %5 = bitcast i8* %lump to i32*
  store i32 %lumpsize, i32* %5, align 4, !tbaa !3
  ret %struct.tophit_s* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @GrowTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  %0 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  %1 = bitcast %struct.hit_s* %0 to i8*
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2
  %2 = load i32* %alloc, align 4, !tbaa !3
  %lump = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 4
  %3 = load i32* %lump, align 4, !tbaa !3
  %add = add nsw i32 %3, %2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 104
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 93, i8* %1, i64 %mul) #6
  %4 = bitcast i8* %call to %struct.hit_s*
  store %struct.hit_s* %4, %struct.hit_s** %unsrt, align 8, !tbaa !0
  %5 = load i32* %lump, align 4, !tbaa !3
  %6 = load i32* %alloc, align 4, !tbaa !3
  %add4 = add nsw i32 %6, %5
  store i32 %add4, i32* %alloc, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3
  %0 = load i32* %num, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %0, 0
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  br i1 %cmp62, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  %ali = getelementptr inbounds %struct.hit_s* %1, i64 %indvars.iv, i32 16
  %2 = load %struct.fancyali_s** %ali, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.fancyali_s* %2, null
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @FreeFancyAli(%struct.fancyali_s* %2) #7
  %.pre = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %3 = phi %struct.hit_s* [ %1, %for.body ], [ %.pre, %if.then ]
  %name = getelementptr inbounds %struct.hit_s* %3, i64 %indvars.iv, i32 5
  %4 = load i8** %name, align 8, !tbaa !0
  %cmp9 = icmp eq i8* %4, null
  br i1 %cmp9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @free(i8* %4) #6
  %.pre64 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then10
  %5 = phi %struct.hit_s* [ %3, %if.end ], [ %.pre64, %if.then10 ]
  %acc = getelementptr inbounds %struct.hit_s* %5, i64 %indvars.iv, i32 6
  %6 = load i8** %acc, align 8, !tbaa !0
  %cmp19 = icmp eq i8* %6, null
  br i1 %cmp19, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end15
  tail call void @free(i8* %6) #6
  %.pre65 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.end15, %if.then20
  %7 = phi %struct.hit_s* [ %5, %if.end15 ], [ %.pre65, %if.then20 ]
  %desc = getelementptr inbounds %struct.hit_s* %7, i64 %indvars.iv, i32 7
  %8 = load i8** %desc, align 8, !tbaa !0
  %cmp29 = icmp eq i8* %8, null
  br i1 %cmp29, label %for.inc, label %if.then30

if.then30:                                        ; preds = %if.end25
  tail call void @free(i8* %8) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then30
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %num, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.inc
  %11 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  %12 = bitcast %struct.hit_s* %11 to i8*
  tail call void @free(i8* %12) #6
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %13 = load %struct.hit_s*** %hit, align 8, !tbaa !0
  %cmp37 = icmp eq %struct.hit_s** %13, null
  br i1 %cmp37, label %if.end40, label %if.then38

if.then38:                                        ; preds = %for.end
  %14 = bitcast %struct.hit_s** %13 to i8*
  tail call void @free(i8* %14) #6
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.then38
  %15 = bitcast %struct.tophit_s* %h to i8*
  tail call void @free(i8* %15) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FreeFancyAli(%struct.fancyali_s* %ali) #0 {
entry:
  %cmp = icmp eq %struct.fancyali_s* %ali, null
  br i1 %cmp, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %rfline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 0
  %0 = load i8** %rfline, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @free(i8* %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %csline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 1
  %1 = load i8** %csline, align 8, !tbaa !0
  %cmp4 = icmp eq i8* %1, null
  br i1 %cmp4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @free(i8* %1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  %model = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 2
  %2 = load i8** %model, align 8, !tbaa !0
  %cmp8 = icmp eq i8* %2, null
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  tail call void @free(i8* %2) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then9
  %mline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 3
  %3 = load i8** %mline, align 8, !tbaa !0
  %cmp12 = icmp eq i8* %3, null
  br i1 %cmp12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  tail call void @free(i8* %3) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.then13
  %aseq = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 4
  %4 = load i8** %aseq, align 8, !tbaa !0
  %cmp16 = icmp eq i8* %4, null
  br i1 %cmp16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void @free(i8* %4) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.then17
  %query = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 6
  %5 = load i8** %query, align 8, !tbaa !0
  %cmp20 = icmp eq i8* %5, null
  br i1 %cmp20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  tail call void @free(i8* %5) #6
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.then21
  %target = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 7
  %6 = load i8** %target, align 8, !tbaa !0
  %cmp24 = icmp eq i8* %6, null
  br i1 %cmp24, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end23
  tail call void @free(i8* %6) #6
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.then25
  %7 = bitcast %struct.fancyali_s* %ali to i8*
  tail call void @free(i8* %7) #6
  br label %if.end28

if.end28:                                         ; preds = %entry, %if.end27
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.fancyali_s* @AllocFancyAli() #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 117, i64 72) #6
  %0 = bitcast i8* %call to %struct.fancyali_s*
  %query = getelementptr inbounds i8* %call, i64 48
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 40, i32 8, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %query, i8 0, i64 24, i32 8, i1 false)
  ret %struct.fancyali_s* %0
}

; Function Attrs: nounwind optsize uwtable
define void @RegisterHit(%struct.tophit_s* nocapture %h, double %key, double %pvalue, float %score, double %motherp, float %mothersc, i8* %name, i8* %acc, i8* %desc, i32 %sqfrom, i32 %sqto, i32 %sqlen, i32 %hmmfrom, i32 %hmmto, i32 %hmmlen, i32 %domidx, i32 %ndom, %struct.fancyali_s* %ali) #0 {
entry:
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3
  %0 = load i32* %num, align 4, !tbaa !3
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2
  %1 = load i32* %alloc, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, %1
  %unsrt.i = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %3 = bitcast %struct.hit_s* %2 to i8*
  %lump.i = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 4
  %4 = load i32* %lump.i, align 4, !tbaa !3
  %add.i = add nsw i32 %4, %0
  %conv.i = sext i32 %add.i to i64
  %mul.i = mul i64 %conv.i, 104
  %call.i = tail call i8* @sre_realloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 93, i8* %3, i64 %mul.i) #6
  %5 = bitcast i8* %call.i to %struct.hit_s*
  store %struct.hit_s* %5, %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %6 = load i32* %lump.i, align 4, !tbaa !3
  %7 = load i32* %alloc, align 4, !tbaa !3
  %add4.i = add nsw i32 %7, %6
  store i32 %add4.i, i32* %alloc, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i8* @Strdup(i8* %name) #6
  %8 = load i32* %num, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %name2 = getelementptr inbounds %struct.hit_s* %9, i64 %idxprom, i32 5
  store i8* %call, i8** %name2, align 8, !tbaa !0
  %call3 = tail call i8* @Strdup(i8* %acc) #6
  %10 = load i32* %num, align 4, !tbaa !3
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %acc8 = getelementptr inbounds %struct.hit_s* %11, i64 %idxprom5, i32 6
  store i8* %call3, i8** %acc8, align 8, !tbaa !0
  %call9 = tail call i8* @Strdup(i8* %desc) #6
  %12 = load i32* %num, align 4, !tbaa !3
  %idxprom11 = sext i32 %12 to i64
  %13 = load %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %desc14 = getelementptr inbounds %struct.hit_s* %13, i64 %idxprom11, i32 7
  store i8* %call9, i8** %desc14, align 8, !tbaa !0
  %14 = load %struct.hit_s** %unsrt.i, align 8, !tbaa !0
  %sortkey = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 0
  store double %key, double* %sortkey, align 8, !tbaa !4
  %pvalue23 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 2
  store double %pvalue, double* %pvalue23, align 8, !tbaa !4
  %score28 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 1
  store float %score, float* %score28, align 4, !tbaa !5
  %motherp33 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 4
  store double %motherp, double* %motherp33, align 8, !tbaa !4
  %mothersc38 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 3
  store float %mothersc, float* %mothersc38, align 4, !tbaa !5
  %sqfrom43 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom11, i32 8
  store i32 %sqfrom, i32* %sqfrom43, align 4, !tbaa !3
  %15 = load i32* %num, align 4, !tbaa !3
  %idxprom45 = sext i32 %15 to i64
  %sqto48 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom45, i32 9
  store i32 %sqto, i32* %sqto48, align 4, !tbaa !3
  %16 = load i32* %num, align 4, !tbaa !3
  %idxprom50 = sext i32 %16 to i64
  %sqlen53 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom50, i32 10
  store i32 %sqlen, i32* %sqlen53, align 4, !tbaa !3
  %17 = load i32* %num, align 4, !tbaa !3
  %idxprom55 = sext i32 %17 to i64
  %hmmfrom58 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom55, i32 11
  store i32 %hmmfrom, i32* %hmmfrom58, align 4, !tbaa !3
  %18 = load i32* %num, align 4, !tbaa !3
  %idxprom60 = sext i32 %18 to i64
  %hmmto63 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom60, i32 12
  store i32 %hmmto, i32* %hmmto63, align 4, !tbaa !3
  %19 = load i32* %num, align 4, !tbaa !3
  %idxprom65 = sext i32 %19 to i64
  %hmmlen68 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom65, i32 13
  store i32 %hmmlen, i32* %hmmlen68, align 4, !tbaa !3
  %20 = load i32* %num, align 4, !tbaa !3
  %idxprom70 = sext i32 %20 to i64
  %domidx73 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom70, i32 14
  store i32 %domidx, i32* %domidx73, align 4, !tbaa !3
  %21 = load i32* %num, align 4, !tbaa !3
  %idxprom75 = sext i32 %21 to i64
  %ndom78 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom75, i32 15
  store i32 %ndom, i32* %ndom78, align 4, !tbaa !3
  %22 = load i32* %num, align 4, !tbaa !3
  %idxprom80 = sext i32 %22 to i64
  %ali83 = getelementptr inbounds %struct.hit_s* %14, i64 %idxprom80, i32 16
  store %struct.fancyali_s* %ali, %struct.fancyali_s** %ali83, align 8, !tbaa !0
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %num, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @GetRankedHit(%struct.tophit_s* nocapture %h, i32 %rank, double* %r_pvalue, float* %r_score, double* %r_motherp, float* %r_mothersc, i8** %r_name, i8** %r_acc, i8** %r_desc, i32* %r_sqfrom, i32* %r_sqto, i32* %r_sqlen, i32* %r_hmmfrom, i32* %r_hmmto, i32* %r_hmmlen, i32* %r_domidx, i32* %r_ndom, %struct.fancyali_s** %r_ali) #0 {
entry:
  %cmp = icmp eq double* %r_pvalue, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %rank to i64
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %0 = load %struct.hit_s*** %hit, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.hit_s** %0, i64 %idxprom
  %1 = load %struct.hit_s** %arrayidx, align 8, !tbaa !0
  %pvalue = getelementptr inbounds %struct.hit_s* %1, i64 0, i32 2
  %2 = load double* %pvalue, align 8, !tbaa !4
  store double %2, double* %r_pvalue, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = icmp eq float* %r_score, null
  br i1 %cmp1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %idxprom3 = sext i32 %rank to i64
  %hit4 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %3 = load %struct.hit_s*** %hit4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds %struct.hit_s** %3, i64 %idxprom3
  %4 = load %struct.hit_s** %arrayidx5, align 8, !tbaa !0
  %score = getelementptr inbounds %struct.hit_s* %4, i64 0, i32 1
  %5 = load float* %score, align 4, !tbaa !5
  store float %5, float* %r_score, align 4, !tbaa !5
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  %cmp7 = icmp eq double* %r_motherp, null
  br i1 %cmp7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end6
  %idxprom9 = sext i32 %rank to i64
  %hit10 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %6 = load %struct.hit_s*** %hit10, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds %struct.hit_s** %6, i64 %idxprom9
  %7 = load %struct.hit_s** %arrayidx11, align 8, !tbaa !0
  %motherp = getelementptr inbounds %struct.hit_s* %7, i64 0, i32 4
  %8 = load double* %motherp, align 8, !tbaa !4
  store double %8, double* %r_motherp, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %if.then8
  %cmp13 = icmp eq float* %r_mothersc, null
  br i1 %cmp13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end12
  %idxprom15 = sext i32 %rank to i64
  %hit16 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %9 = load %struct.hit_s*** %hit16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds %struct.hit_s** %9, i64 %idxprom15
  %10 = load %struct.hit_s** %arrayidx17, align 8, !tbaa !0
  %mothersc = getelementptr inbounds %struct.hit_s* %10, i64 0, i32 3
  %11 = load float* %mothersc, align 4, !tbaa !5
  store float %11, float* %r_mothersc, align 4, !tbaa !5
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.then14
  %cmp19 = icmp eq i8** %r_name, null
  br i1 %cmp19, label %if.end24, label %if.then20

if.then20:                                        ; preds = %if.end18
  %idxprom21 = sext i32 %rank to i64
  %hit22 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %12 = load %struct.hit_s*** %hit22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds %struct.hit_s** %12, i64 %idxprom21
  %13 = load %struct.hit_s** %arrayidx23, align 8, !tbaa !0
  %name = getelementptr inbounds %struct.hit_s* %13, i64 0, i32 5
  %14 = load i8** %name, align 8, !tbaa !0
  store i8* %14, i8** %r_name, align 8, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.then20
  %cmp25 = icmp eq i8** %r_acc, null
  br i1 %cmp25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end24
  %idxprom27 = sext i32 %rank to i64
  %hit28 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %15 = load %struct.hit_s*** %hit28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds %struct.hit_s** %15, i64 %idxprom27
  %16 = load %struct.hit_s** %arrayidx29, align 8, !tbaa !0
  %acc = getelementptr inbounds %struct.hit_s* %16, i64 0, i32 6
  %17 = load i8** %acc, align 8, !tbaa !0
  store i8* %17, i8** %r_acc, align 8, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then26
  %cmp31 = icmp eq i8** %r_desc, null
  br i1 %cmp31, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.end30
  %idxprom33 = sext i32 %rank to i64
  %hit34 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %18 = load %struct.hit_s*** %hit34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds %struct.hit_s** %18, i64 %idxprom33
  %19 = load %struct.hit_s** %arrayidx35, align 8, !tbaa !0
  %desc = getelementptr inbounds %struct.hit_s* %19, i64 0, i32 7
  %20 = load i8** %desc, align 8, !tbaa !0
  store i8* %20, i8** %r_desc, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.end30, %if.then32
  %cmp37 = icmp eq i32* %r_sqfrom, null
  br i1 %cmp37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.end36
  %idxprom39 = sext i32 %rank to i64
  %hit40 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %21 = load %struct.hit_s*** %hit40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds %struct.hit_s** %21, i64 %idxprom39
  %22 = load %struct.hit_s** %arrayidx41, align 8, !tbaa !0
  %sqfrom = getelementptr inbounds %struct.hit_s* %22, i64 0, i32 8
  %23 = load i32* %sqfrom, align 4, !tbaa !3
  store i32 %23, i32* %r_sqfrom, align 4, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %if.then38
  %cmp43 = icmp eq i32* %r_sqto, null
  br i1 %cmp43, label %if.end48, label %if.then44

if.then44:                                        ; preds = %if.end42
  %idxprom45 = sext i32 %rank to i64
  %hit46 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %24 = load %struct.hit_s*** %hit46, align 8, !tbaa !0
  %arrayidx47 = getelementptr inbounds %struct.hit_s** %24, i64 %idxprom45
  %25 = load %struct.hit_s** %arrayidx47, align 8, !tbaa !0
  %sqto = getelementptr inbounds %struct.hit_s* %25, i64 0, i32 9
  %26 = load i32* %sqto, align 4, !tbaa !3
  store i32 %26, i32* %r_sqto, align 4, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.then44
  %cmp49 = icmp eq i32* %r_sqlen, null
  br i1 %cmp49, label %if.end54, label %if.then50

if.then50:                                        ; preds = %if.end48
  %idxprom51 = sext i32 %rank to i64
  %hit52 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %27 = load %struct.hit_s*** %hit52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds %struct.hit_s** %27, i64 %idxprom51
  %28 = load %struct.hit_s** %arrayidx53, align 8, !tbaa !0
  %sqlen = getelementptr inbounds %struct.hit_s* %28, i64 0, i32 10
  %29 = load i32* %sqlen, align 4, !tbaa !3
  store i32 %29, i32* %r_sqlen, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end48, %if.then50
  %cmp55 = icmp eq i32* %r_hmmfrom, null
  br i1 %cmp55, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.end54
  %idxprom57 = sext i32 %rank to i64
  %hit58 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %30 = load %struct.hit_s*** %hit58, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds %struct.hit_s** %30, i64 %idxprom57
  %31 = load %struct.hit_s** %arrayidx59, align 8, !tbaa !0
  %hmmfrom = getelementptr inbounds %struct.hit_s* %31, i64 0, i32 11
  %32 = load i32* %hmmfrom, align 4, !tbaa !3
  store i32 %32, i32* %r_hmmfrom, align 4, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.then56
  %cmp61 = icmp eq i32* %r_hmmto, null
  br i1 %cmp61, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end60
  %idxprom63 = sext i32 %rank to i64
  %hit64 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %33 = load %struct.hit_s*** %hit64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds %struct.hit_s** %33, i64 %idxprom63
  %34 = load %struct.hit_s** %arrayidx65, align 8, !tbaa !0
  %hmmto = getelementptr inbounds %struct.hit_s* %34, i64 0, i32 12
  %35 = load i32* %hmmto, align 4, !tbaa !3
  store i32 %35, i32* %r_hmmto, align 4, !tbaa !3
  br label %if.end66

if.end66:                                         ; preds = %if.end60, %if.then62
  %cmp67 = icmp eq i32* %r_hmmlen, null
  br i1 %cmp67, label %if.end72, label %if.then68

if.then68:                                        ; preds = %if.end66
  %idxprom69 = sext i32 %rank to i64
  %hit70 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %36 = load %struct.hit_s*** %hit70, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds %struct.hit_s** %36, i64 %idxprom69
  %37 = load %struct.hit_s** %arrayidx71, align 8, !tbaa !0
  %hmmlen = getelementptr inbounds %struct.hit_s* %37, i64 0, i32 13
  %38 = load i32* %hmmlen, align 4, !tbaa !3
  store i32 %38, i32* %r_hmmlen, align 4, !tbaa !3
  br label %if.end72

if.end72:                                         ; preds = %if.end66, %if.then68
  %cmp73 = icmp eq i32* %r_domidx, null
  br i1 %cmp73, label %if.end78, label %if.then74

if.then74:                                        ; preds = %if.end72
  %idxprom75 = sext i32 %rank to i64
  %hit76 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %39 = load %struct.hit_s*** %hit76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds %struct.hit_s** %39, i64 %idxprom75
  %40 = load %struct.hit_s** %arrayidx77, align 8, !tbaa !0
  %domidx = getelementptr inbounds %struct.hit_s* %40, i64 0, i32 14
  %41 = load i32* %domidx, align 4, !tbaa !3
  store i32 %41, i32* %r_domidx, align 4, !tbaa !3
  br label %if.end78

if.end78:                                         ; preds = %if.end72, %if.then74
  %cmp79 = icmp eq i32* %r_ndom, null
  br i1 %cmp79, label %if.end84, label %if.then80

if.then80:                                        ; preds = %if.end78
  %idxprom81 = sext i32 %rank to i64
  %hit82 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %42 = load %struct.hit_s*** %hit82, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds %struct.hit_s** %42, i64 %idxprom81
  %43 = load %struct.hit_s** %arrayidx83, align 8, !tbaa !0
  %ndom = getelementptr inbounds %struct.hit_s* %43, i64 0, i32 15
  %44 = load i32* %ndom, align 4, !tbaa !3
  store i32 %44, i32* %r_ndom, align 4, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %if.end78, %if.then80
  %cmp85 = icmp eq %struct.fancyali_s** %r_ali, null
  br i1 %cmp85, label %if.end90, label %if.then86

if.then86:                                        ; preds = %if.end84
  %idxprom87 = sext i32 %rank to i64
  %hit88 = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %45 = load %struct.hit_s*** %hit88, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds %struct.hit_s** %45, i64 %idxprom87
  %46 = load %struct.hit_s** %arrayidx89, align 8, !tbaa !0
  %ali = getelementptr inbounds %struct.hit_s* %46, i64 0, i32 16
  %47 = load %struct.fancyali_s** %ali, align 8, !tbaa !0
  store %struct.fancyali_s* %47, %struct.fancyali_s** %r_ali, align 8, !tbaa !0
  br label %if.end90

if.end90:                                         ; preds = %if.end84, %if.then86
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TophitsMaxName(%struct.tophit_s* nocapture %h) #3 {
entry:
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3
  %0 = load i32* %num, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  %1 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %maxlen.010 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.maxlen.0, %for.body ]
  %name = getelementptr inbounds %struct.hit_s* %1, i64 %indvars.iv, i32 5
  %2 = load i8** %name, align 8, !tbaa !0
  %call = tail call i64 @strlen(i8* %2) #8
  %conv = trunc i64 %call to i32
  %cmp1 = icmp sgt i32 %conv, %maxlen.010
  %conv.maxlen.0 = select i1 %cmp1, i32 %conv, i32 %maxlen.010
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %maxlen.0.lcssa = phi i32 [ 0, %entry ], [ %conv.maxlen.0, %for.body ]
  ret i32 %maxlen.0.lcssa
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly uwtable
define i32 @hit_comparison(i8* nocapture %vh1, i8* nocapture %vh2) #3 {
entry:
  %0 = bitcast i8* %vh1 to %struct.hit_s**
  %1 = load %struct.hit_s** %0, align 8, !tbaa !0
  %2 = bitcast i8* %vh2 to %struct.hit_s**
  %3 = load %struct.hit_s** %2, align 8, !tbaa !0
  %sortkey = getelementptr inbounds %struct.hit_s* %1, i64 0, i32 0
  %4 = load double* %sortkey, align 8, !tbaa !4
  %sortkey1 = getelementptr inbounds %struct.hit_s* %3, i64 0, i32 0
  %5 = load double* %sortkey1, align 8, !tbaa !4
  %cmp = fcmp olt double %4, %5
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp4 = fcmp ogt double %4, %5
  %. = sext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @FullSortTophits(%struct.tophit_s* nocapture %h) #0 {
entry:
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3
  %0 = load i32* %num, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end15, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), i32 300, i64 %mul) #6
  %1 = bitcast i8* %call to %struct.hit_s**
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  store %struct.hit_s** %1, %struct.hit_s*** %hit, align 8, !tbaa !0
  %2 = load i32* %num, align 4, !tbaa !3
  %cmp327 = icmp sgt i32 %2, 0
  br i1 %cmp327, label %for.body.lr.ph, label %if.end15

for.body.lr.ph:                                   ; preds = %if.end
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %3 = phi %struct.hit_s** [ %1, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.hit_s* %4, i64 %indvars.iv
  %arrayidx7 = getelementptr inbounds %struct.hit_s** %3, i64 %indvars.iv
  store %struct.hit_s* %arrayidx, %struct.hit_s** %arrayidx7, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %5, %2
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.hit_s*** %hit, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body
  %cmp9 = icmp sgt i32 %2, 1
  br i1 %cmp9, label %if.then11, label %if.end15

if.then11:                                        ; preds = %for.end
  %6 = load %struct.hit_s*** %hit, align 8, !tbaa !0
  %call14 = tail call i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (%struct.hit_s**, i32, i64, i32 (i8*, i8*)*, ...)*)(%struct.hit_s** %6, i32 %2, i64 8, i32 (i8*, i8*)* @hit_comparison) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry, %if.then11, %for.end
  ret void
}

; Function Attrs: optsize
declare i32 @specqsort(...) #1

; Function Attrs: nounwind optsize uwtable
define void @TophitsReport(%struct.tophit_s* nocapture %h, double %E, i32 %nseq) #0 {
entry:
  %alloc = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 2
  %0 = load i32* %alloc, align 4, !tbaa !3
  %mul = mul i32 %0, 104
  %add = add i32 %mul, 32
  %num = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 3
  %1 = load i32* %num, align 4, !tbaa !3
  %cmp229 = icmp sgt i32 %1, 0
  br i1 %cmp229, label %for.body.lr.ph, label %for.end159

for.body.lr.ph:                                   ; preds = %entry
  %unsrt = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 1
  %2 = load %struct.hit_s** %unsrt, align 8, !tbaa !0
  br label %for.body

for.cond143.preheader:                            ; preds = %for.inc
  br i1 %cmp229, label %for.body147.lr.ph, label %for.end159

for.body147.lr.ph:                                ; preds = %for.cond143.preheader
  %hit = getelementptr inbounds %struct.tophit_s* %h, i64 0, i32 0
  %3 = load %struct.hit_s*** %hit, align 8, !tbaa !0
  %conv150 = sitofp i32 %nseq to double
  br label %for.body147

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv235 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next236, %for.inc ]
  %memused.0231 = phi i32 [ %add, %for.body.lr.ph ], [ %memused.5, %for.inc ]
  %name = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 5
  %4 = load i8** %name, align 8, !tbaa !0
  %cmp3 = icmp eq i8* %4, null
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call = tail call i64 @strlen(i8* %4) #8
  %conv10225 = zext i32 %memused.0231 to i64
  %add9 = add i64 %conv10225, 1
  %add11 = add i64 %add9, %call
  %conv12 = trunc i64 %add11 to i32
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %memused.1 = phi i32 [ %conv12, %if.then ], [ %memused.0231, %for.body ]
  %acc = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 6
  %5 = load i8** %acc, align 8, !tbaa !0
  %cmp16 = icmp eq i8* %5, null
  br i1 %cmp16, label %if.end28, label %if.then18

if.then18:                                        ; preds = %if.end
  %call23 = tail call i64 @strlen(i8* %5) #8
  %conv25224 = zext i32 %memused.1 to i64
  %add24 = add i64 %conv25224, 1
  %add26 = add i64 %add24, %call23
  %conv27 = trunc i64 %add26 to i32
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then18
  %memused.2 = phi i32 [ %conv27, %if.then18 ], [ %memused.1, %if.end ]
  %desc = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 7
  %6 = load i8** %desc, align 8, !tbaa !0
  %cmp32 = icmp eq i8* %6, null
  br i1 %cmp32, label %if.end44, label %if.then34

if.then34:                                        ; preds = %if.end28
  %call39 = tail call i64 @strlen(i8* %6) #8
  %conv41223 = zext i32 %memused.2 to i64
  %add40 = add i64 %conv41223, 1
  %add42 = add i64 %add40, %call39
  %conv43 = trunc i64 %add42 to i32
  br label %if.end44

if.end44:                                         ; preds = %if.end28, %if.then34
  %memused.3 = phi i32 [ %conv43, %if.then34 ], [ %memused.2, %if.end28 ]
  %ali = getelementptr inbounds %struct.hit_s* %2, i64 %indvars.iv235, i32 16
  %7 = load %struct.fancyali_s** %ali, align 8, !tbaa !0
  %cmp48 = icmp eq %struct.fancyali_s* %7, null
  br i1 %cmp48, label %for.inc, label %if.then50

if.then50:                                        ; preds = %if.end44
  %add52 = add i32 %memused.3, 72
  %rfline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 0
  %8 = load i8** %rfline, align 8, !tbaa !0
  %not.cmp58 = icmp ne i8* %8, null
  %. = zext i1 %not.cmp58 to i32
  %csline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 1
  %9 = load i8** %csline, align 8, !tbaa !0
  %cmp66 = icmp eq i8* %9, null
  %inc69 = select i1 %not.cmp58, i32 2, i32 1
  %x.1 = select i1 %cmp66, i32 %., i32 %inc69
  %model = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 2
  %10 = load i8** %model, align 8, !tbaa !0
  %not.cmp75 = icmp ne i8* %10, null
  %inc78 = zext i1 %not.cmp75 to i32
  %x.1.inc78 = add nsw i32 %inc78, %x.1
  %mline = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 3
  %11 = load i8** %mline, align 8, !tbaa !0
  %not.cmp84 = icmp ne i8* %11, null
  %inc87 = zext i1 %not.cmp84 to i32
  %x.3 = add nsw i32 %x.1.inc78, %inc87
  %aseq = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 4
  %12 = load i8** %aseq, align 8, !tbaa !0
  %not.cmp93 = icmp ne i8* %12, null
  %inc96 = zext i1 %not.cmp93 to i32
  %x.3.inc96 = add nsw i32 %x.3, %inc96
  %len = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 5
  %13 = load i32* %len, align 4, !tbaa !3
  %add102 = add nsw i32 %13, 1
  %mul103 = mul nsw i32 %x.3.inc96, %add102
  %add104 = add nsw i32 %add52, %mul103
  %query = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 6
  %14 = load i8** %query, align 8, !tbaa !0
  %cmp109 = icmp eq i8* %14, null
  br i1 %cmp109, label %if.end122, label %if.then111

if.then111:                                       ; preds = %if.then50
  %call117 = tail call i64 @strlen(i8* %14) #8
  %conv119222 = zext i32 %add104 to i64
  %add118 = add i64 %conv119222, 1
  %add120 = add i64 %add118, %call117
  %conv121 = trunc i64 %add120 to i32
  br label %if.end122

if.end122:                                        ; preds = %if.then50, %if.then111
  %memused.4 = phi i32 [ %conv121, %if.then111 ], [ %add104, %if.then50 ]
  %target = getelementptr inbounds %struct.fancyali_s* %7, i64 0, i32 7
  %15 = load i8** %target, align 8, !tbaa !0
  %cmp127 = icmp eq i8* %15, null
  br i1 %cmp127, label %for.inc, label %if.then129

if.then129:                                       ; preds = %if.end122
  %call135 = tail call i64 @strlen(i8* %15) #8
  %conv137221 = zext i32 %memused.4 to i64
  %add136 = add i64 %conv137221, 1
  %add138 = add i64 %add136, %call135
  %conv139 = trunc i64 %add138 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.end122, %if.end44, %if.then129
  %memused.5 = phi i32 [ %conv139, %if.then129 ], [ %memused.4, %if.end122 ], [ %memused.3, %if.end44 ]
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %16 = trunc i64 %indvars.iv.next236 to i32
  %cmp = icmp slt i32 %16, %1
  br i1 %cmp, label %for.body, label %for.cond143.preheader

for.body147:                                      ; preds = %for.body147.lr.ph, %if.end155
  %indvars.iv = phi i64 [ 0, %for.body147.lr.ph ], [ %indvars.iv.next, %if.end155 ]
  %n.0228 = phi i32 [ 0, %for.body147.lr.ph ], [ %inc156, %if.end155 ]
  %arrayidx149 = getelementptr inbounds %struct.hit_s** %3, i64 %indvars.iv
  %17 = load %struct.hit_s** %arrayidx149, align 8, !tbaa !0
  %pvalue = getelementptr inbounds %struct.hit_s* %17, i64 0, i32 2
  %18 = load double* %pvalue, align 8, !tbaa !4
  %mul151 = fmul double %conv150, %18
  %cmp152 = fcmp ult double %mul151, %E
  br i1 %cmp152, label %if.end155, label %for.end159

if.end155:                                        ; preds = %for.body147
  %inc156 = add nsw i32 %n.0228, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp145 = icmp slt i32 %19, %1
  br i1 %cmp145, label %for.body147, label %for.end159

for.end159:                                       ; preds = %entry, %if.end155, %for.body147, %for.cond143.preheader
  %memused.0.lcssa237 = phi i32 [ %memused.5, %for.cond143.preheader ], [ %memused.5, %for.body147 ], [ %memused.5, %if.end155 ], [ %add, %entry ]
  %n.0.lcssa = phi i32 [ 0, %for.cond143.preheader ], [ %n.0228, %for.body147 ], [ %inc156, %if.end155 ], [ 0, %entry ]
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str, i64 0, i64 0))
  %20 = load i32* %num, align 4, !tbaa !3
  %call162 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i32 %20) #6
  %call163 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str3, i64 0, i64 0), i32 %n.0.lcssa) #6
  %div = sdiv i32 %memused.0.lcssa237, 1000
  %call164 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i32 %div) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
