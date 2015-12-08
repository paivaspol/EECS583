; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@.str = private unnamed_addr constant [81 x i8] c"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will.\00", align 1
@Alphabet_type = external global i32
@.str1 = private unnamed_addr constant [18 x i8] c"!!AA_PROFILE 1.0\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"!!NA_PROFILE 1.0\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"No support for profiles with non-biological alphabets\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"(Peptide) \00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"(Nucleotide) \00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"HMMCONVERT v%s Length: %d %s|%s|%s\0A\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [68 x i8] c"   Profile converted from a profile HMM using HMMER v%s emulation.\0A\00", align 1
@.str10 = private unnamed_addr constant [42 x i8] c"   Compugen XSW extended profile format.\0A\00", align 1
@.str11 = private unnamed_addr constant [81 x i8] c"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\0A\00", align 1
@.str12 = private unnamed_addr constant [89 x i8] c"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str13 = private unnamed_addr constant [64 x i8] c"   WARNING: There is a loss of information in this conversion.\0A\00", align 1
@.str14 = private unnamed_addr constant [76 x i8] c"      Neither the scores nor even the rank order of hits will be precisely\0A\00", align 1
@.str15 = private unnamed_addr constant [74 x i8] c"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\0A\00", align 1
@.str16 = private unnamed_addr constant [79 x i8] c"      The profile score is an approximation of the (single-hit) HMMER score.\0A\0A\00", align 1
@.str17 = private unnamed_addr constant [68 x i8] c"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\0A\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"      to get the closest approximation to HMMER bit scores.\0A\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"Cons\00", align 1
@Alphabet_iupac = external global i32
@.str20 = private unnamed_addr constant [8 x i8] c"    %c \00", align 1
@Alphabet = external global [25 x i8]
@.str21 = private unnamed_addr constant [28 x i8] c"  Gap   Len  QGap  Qlen ..\0A\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"  Gap   Len ..\0A\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"! %d\0A\00", align 1
@Alphabet_size = external global i32
@.str24 = private unnamed_addr constant [6 x i8] c" %c  \00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"%5d %5d %5d %5d\0A\00", align 1
@.str27 = private unnamed_addr constant [9 x i8] c"%5d %5d\0A\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c" *  \00", align 1

; Function Attrs: nounwind optsize uwtable
define void @WriteProfile(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm, i32 %do_xsw) #0 {
entry:
  tail call void @P7Logoddsify(%struct.plan7_s* %hmm, i32 1) #4
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 1000
  %tobool = icmp eq i32 %do_xsw, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %1 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32* @Alphabet_type, align 4, !tbaa !0
  switch i32 %2, label %if.else6 [
    i32 3, label %if.then2
    i32 2, label %if.then4
  ]

if.then2:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp)
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp)
  br label %if.end8

if.else6:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0)) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.else6, %if.then2
  %5 = load i32* @Alphabet_type, align 4, !tbaa !0
  switch i32 %5, label %if.end17 [
    i32 3, label %if.then10
    i32 2, label %if.then14
  ]

if.then10:                                        ; preds = %if.end8
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp)
  br label %if.end17

if.then14:                                        ; preds = %if.end8
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  br label %if.end17

if.end17:                                         ; preds = %if.end8, %if.then14, %if.then10
  %8 = load i32* %M, align 4, !tbaa !0
  %name19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %9 = load i8** %name19, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %10 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %10, 512
  %tobool20 = icmp eq i32 %and, 0
  br i1 %tobool20, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end17
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %11 = load i8** %acc, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.end17, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %if.end17 ]
  %and22 = and i32 %10, 2
  %tobool23 = icmp eq i32 %and22, 0
  br i1 %tobool23, label %cond.end26, label %cond.true24

cond.true24:                                      ; preds = %cond.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %12 = load i8** %desc, align 8, !tbaa !3
  br label %cond.end26

cond.end26:                                       ; preds = %cond.end, %cond.true24
  %cond27 = phi i8* [ %12, %cond.true24 ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %cond.end ]
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %8, i8* %9, i8* %cond, i8* %cond27) #4
  %tobool29 = icmp ne i32 %do_xsw, 0
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0)) #4
  br i1 %tobool29, label %if.then30, label %if.else39

if.then30:                                        ; preds = %cond.end26
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str10, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp)
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str11, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %fp)
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([89 x i8]* @.str12, i64 0, i64 0), i64 88, i64 1, %struct._IO_FILE* %fp)
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %fp)
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %fp)
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %fp)
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.else39:                                        ; preds = %cond.end26
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str17, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %fp)
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %fp)
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %fp)
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %fp)
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %fp)
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then30
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp)
  %27 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %cmp49370 = icmp sgt i32 %27, 0
  br i1 %cmp49370, label %for.body, label %for.end

for.body:                                         ; preds = %if.end47, %for.body
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %for.body ], [ 0, %if.end47 ]
  %arrayidx = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv380
  %28 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %28 to i32
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i32 %conv) #4
  %indvars.iv.next381 = add i64 %indvars.iv380, 1
  %29 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %30 = trunc i64 %indvars.iv.next381 to i32
  %cmp49 = icmp slt i32 %30, %29
  br i1 %cmp49, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end47
  br i1 %tobool29, label %if.then52, label %if.else54

if.then52:                                        ; preds = %for.end
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str21, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %fp)
  br label %for.cond57.preheader

if.else54:                                        ; preds = %for.end
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp)
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %if.else54, %if.then52
  %33 = load i32* %M, align 4, !tbaa !0
  %cmp59368 = icmp slt i32 %33, 1
  br i1 %cmp59368, label %for.end203, label %for.body61.lr.ph

for.body61.lr.ph:                                 ; preds = %for.cond57.preheader
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %tsc104 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  br label %for.body61

for.body61:                                       ; preds = %for.inc201, %for.body61.lr.ph
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc201 ], [ 1, %for.body61.lr.ph ]
  %34 = add nsw i64 %indvars.iv377, -1
  %35 = trunc i64 %34 to i32
  %rem = srem i32 %35, 10
  %cmp62 = icmp eq i32 %rem, 0
  %36 = trunc i64 %indvars.iv377 to i32
  %cmp65 = icmp sgt i32 %36, 10
  %or.cond342 = and i1 %cmp62, %cmp65
  br i1 %or.cond342, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.body61
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i32 %36) #4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.body61
  %37 = load float*** %mat, align 8, !tbaa !3
  %arrayidx71 = getelementptr inbounds float** %37, i64 %indvars.iv377
  %38 = load float** %arrayidx71, align 8, !tbaa !3
  %39 = load i32* @Alphabet_size, align 4, !tbaa !0
  %call72 = tail call i32 @FArgMax(float* %38, i32 %39) #4
  %idxprom73 = sext i32 %call72 to i64
  %arrayidx74 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom73
  %40 = load i8* %arrayidx74, align 1, !tbaa !1
  %conv75 = sext i8 %40 to i32
  %call76 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %conv75) #4
  %41 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %cmp78366 = icmp sgt i32 %41, 0
  br i1 %cmp78366, label %for.body80, label %for.end98

for.body80:                                       ; preds = %if.end69, %if.end92
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %if.end92 ], [ 0, %if.end69 ]
  %42 = load i32*** %msc, align 8, !tbaa !3
  %arrayidx83 = getelementptr inbounds i32** %42, i64 %indvars.iv375
  %43 = load i32** %arrayidx83, align 8, !tbaa !3
  %arrayidx84 = getelementptr inbounds i32* %43, i64 %indvars.iv377
  %44 = load i32* %arrayidx84, align 4, !tbaa !0
  %45 = load i32* %M, align 4, !tbaa !0
  %cmp86 = icmp slt i32 %36, %45
  br i1 %cmp86, label %if.then88, label %if.end92

if.then88:                                        ; preds = %for.body80
  %46 = load i32*** %tsc104, align 8, !tbaa !3
  %47 = load i32** %46, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds i32* %47, i64 %indvars.iv377
  %48 = load i32* %arrayidx91, align 4, !tbaa !0
  %add = add nsw i32 %48, %44
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %for.body80
  %sc.0 = phi i32 [ %add, %if.then88 ], [ %44, %for.body80 ]
  %mul = mul nsw i32 %sc.0, 100
  %conv93 = sitofp i32 %mul to double
  %div = fdiv double %conv93, 1.000000e+03
  %conv94 = fptosi double %div to i32
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %conv94) #4
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %49 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %50 = trunc i64 %indvars.iv.next376 to i32
  %cmp78 = icmp slt i32 %50, %49
  br i1 %cmp78, label %for.body80, label %for.end98

for.end98:                                        ; preds = %if.end92, %if.end69
  %cmp99 = icmp sgt i32 %36, 1
  br i1 %cmp99, label %if.then182, label %if.end194

if.then182:                                       ; preds = %for.end98
  %51 = load i32*** %tsc104, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i32** %51, i64 1
  %52 = load i32** %arrayidx105, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i32* %52, i64 %34
  %53 = load i32* %arrayidx106, align 4, !tbaa !0
  %arrayidx110 = getelementptr inbounds i32** %51, i64 3
  %54 = load i32** %arrayidx110, align 8, !tbaa !3
  %arrayidx111 = getelementptr inbounds i32* %54, i64 %34
  %55 = load i32* %arrayidx111, align 4, !tbaa !0
  %56 = load i32** %51, align 8, !tbaa !3
  %arrayidx117 = getelementptr inbounds i32* %56, i64 %34
  %57 = load i32* %arrayidx117, align 4, !tbaa !0
  %arrayidx122 = getelementptr inbounds i32** %51, i64 4
  %58 = load i32** %arrayidx122, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i32* %58, i64 %34
  %59 = load i32* %arrayidx123, align 4, !tbaa !0
  %sum = add i32 %55, %53
  %sub118341 = sub i32 %57, %sum
  %sub124340 = add i32 %sub118341, %59
  %mul126 = mul nsw i32 %sub124340, 100
  %conv127 = sitofp i32 %mul126 to double
  %div128 = fdiv double %conv127, 1.000000e+04
  %conv129 = fptosi double %div128 to i32
  %mul141 = mul i32 %59, -100
  %conv142 = sitofp i32 %mul141 to double
  %div143 = fdiv double %conv142, 1.000000e+03
  %conv144 = fptosi double %div143 to i32
  %arrayidx153 = getelementptr inbounds i32** %51, i64 5
  %60 = load i32** %arrayidx153, align 8, !tbaa !3
  %arrayidx154 = getelementptr inbounds i32* %60, i64 %34
  %61 = load i32* %arrayidx154, align 4, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32** %51, i64 2
  %62 = load i32** %arrayidx158, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds i32* %62, i64 %34
  %63 = load i32* %arrayidx159, align 4, !tbaa !0
  %arrayidx170 = getelementptr inbounds i32** %51, i64 6
  %64 = load i32** %arrayidx170, align 8, !tbaa !3
  %arrayidx171 = getelementptr inbounds i32* %64, i64 %34
  %65 = load i32* %arrayidx171, align 4, !tbaa !0
  %sum372 = add i32 %63, %61
  %sub166339 = sub i32 %57, %sum372
  %sub172338 = add i32 %sub166339, %65
  %mul174 = mul nsw i32 %sub172338, 100
  %conv175 = sitofp i32 %mul174 to double
  %div176 = fdiv double %conv175, 1.000000e+04
  %conv177 = fptosi double %div176 to i32
  %mul189 = mul i32 %65, -100
  %conv190 = sitofp i32 %mul189 to double
  %div191 = fdiv double %conv190, 1.000000e+03
  %conv192 = fptosi double %div191 to i32
  br label %if.end194

if.end194:                                        ; preds = %for.end98, %if.then182
  %qgap.0353 = phi i32 [ %conv177, %if.then182 ], [ 100, %for.end98 ]
  %gap.0343345351 = phi i32 [ %conv129, %if.then182 ], [ 100, %for.end98 ]
  %len.0347349 = phi i32 [ %conv144, %if.then182 ], [ 100, %for.end98 ]
  %qlen.0 = phi i32 [ %conv192, %if.then182 ], [ 100, %for.end98 ]
  br i1 %tobool29, label %if.then196, label %if.else198

if.then196:                                       ; preds = %if.end194
  %call197 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i32 %gap.0343345351, i32 %len.0347349, i32 %qgap.0353, i32 %qlen.0) #4
  br label %for.inc201

if.else198:                                       ; preds = %if.end194
  %call199 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i32 %gap.0343345351, i32 %len.0347349) #4
  br label %for.inc201

for.inc201:                                       ; preds = %if.then196, %if.else198
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %66 = load i32* %M, align 4, !tbaa !0
  %cmp59 = icmp slt i32 %36, %66
  br i1 %cmp59, label %for.body61, label %for.end203

for.end203:                                       ; preds = %for.inc201, %for.cond57.preheader
  %67 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp)
  %68 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp206363 = icmp sgt i32 %68, 0
  br i1 %cmp206363, label %for.cond209.preheader.lr.ph, label %for.cond230.preheader

for.cond209.preheader.lr.ph:                      ; preds = %for.end203
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7
  %mat216 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.cond209.preheader

for.cond209.preheader:                            ; preds = %for.cond209.preheader.lr.ph, %for.end222
  %indvars.iv373 = phi i64 [ 0, %for.cond209.preheader.lr.ph ], [ %indvars.iv.next374, %for.end222 ]
  %x.2364 = phi i32 [ 0, %for.cond209.preheader.lr.ph ], [ %inc228, %for.end222 ]
  %69 = load i32* %M, align 4, !tbaa !0
  %cmp211360 = icmp slt i32 %69, 1
  br i1 %cmp211360, label %for.end222, label %for.body213.lr.ph

for.body213.lr.ph:                                ; preds = %for.cond209.preheader
  %70 = load float*** %mat216, align 8, !tbaa !3
  br label %for.body213

for.cond230.preheader:                            ; preds = %for.end222, %for.end203
  %x.2.lcssa = phi i32 [ 0, %for.end203 ], [ %inc228, %for.end222 ]
  %71 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %cmp231358 = icmp slt i32 %x.2.lcssa, %71
  br i1 %cmp231358, label %for.body233, label %for.end237

for.body213:                                      ; preds = %for.body213, %for.body213.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body213 ], [ 1, %for.body213.lr.ph ]
  %nx.0362 = phi float [ %add219, %for.body213 ], [ 0.000000e+00, %for.body213.lr.ph ]
  %arrayidx217 = getelementptr inbounds float** %70, i64 %indvars.iv
  %72 = load float** %arrayidx217, align 8, !tbaa !3
  %arrayidx218 = getelementptr inbounds float* %72, i64 %indvars.iv373
  %73 = load float* %arrayidx218, align 4, !tbaa !4
  %add219 = fadd float %nx.0362, %73
  %indvars.iv.next = add i64 %indvars.iv, 1
  %74 = trunc i64 %indvars.iv to i32
  %cmp211 = icmp slt i32 %74, %69
  br i1 %cmp211, label %for.body213, label %for.end222

for.end222:                                       ; preds = %for.body213, %for.cond209.preheader
  %nx.0.lcssa = phi float [ 0.000000e+00, %for.cond209.preheader ], [ %add219, %for.body213 ]
  %75 = load i32* %nseq, align 4, !tbaa !0
  %conv223 = sitofp i32 %75 to float
  %mul224 = fmul float %nx.0.lcssa, %conv223
  %conv225 = fptosi float %mul224 to i32
  %call226 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %conv225) #4
  %indvars.iv.next374 = add i64 %indvars.iv373, 1
  %inc228 = add nsw i32 %x.2364, 1
  %76 = load i32* @Alphabet_size, align 4, !tbaa !0
  %77 = trunc i64 %indvars.iv.next374 to i32
  %cmp206 = icmp slt i32 %77, %76
  br i1 %cmp206, label %for.cond209.preheader, label %for.cond230.preheader

for.body233:                                      ; preds = %for.cond230.preheader, %for.body233
  %x.3359 = phi i32 [ %inc236, %for.body233 ], [ %x.2.lcssa, %for.cond230.preheader ]
  %call234 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 0) #4
  %inc236 = add nsw i32 %x.3359, 1
  %78 = load i32* @Alphabet_iupac, align 4, !tbaa !0
  %cmp231 = icmp slt i32 %inc236, %78
  br i1 %cmp231, label %for.body233, label %for.end237

for.end237:                                       ; preds = %for.body233, %for.cond230.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  ret void
}

; Function Attrs: optsize
declare void @P7Logoddsify(%struct.plan7_s*, i32) #1

; Function Attrs: optsize
declare void @Warn(i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
