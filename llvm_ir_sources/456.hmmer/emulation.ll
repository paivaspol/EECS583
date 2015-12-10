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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !130), !dbg !141
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !131), !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32 %do_xsw}, i64 0, metadata !132), !dbg !141
  tail call void @P7Logoddsify(%struct.plan7_s* %hmm, i32 1) #5, !dbg !142
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !143
  %0 = load i32* %M, align 4, !dbg !143, !tbaa !144
  %cmp = icmp sgt i32 %0, 1000, !dbg !143
  %tobool = icmp eq i32 %do_xsw, 0, !dbg !143
  %or.cond = and i1 %cmp, %tobool, !dbg !143
  br i1 %or.cond, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !147
  %1 = load i8** %name, align 8, !dbg !147, !tbaa !148
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), i8* %1) #5, !dbg !147
  br label %if.end, !dbg !147

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32* @Alphabet_type, align 4, !dbg !149, !tbaa !144
  switch i32 %2, label %if.else6 [
    i32 3, label %if.then2
    i32 2, label %if.then4
  ], !dbg !149

if.then2:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp), !dbg !149
  br label %if.end8, !dbg !149

if.then4:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp), !dbg !150
  br label %if.end8, !dbg !150

if.else6:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !151
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.else6, %if.then2
  %5 = load i32* @Alphabet_type, align 4, !dbg !152, !tbaa !144
  switch i32 %5, label %if.end17 [
    i32 3, label %if.then10
    i32 2, label %if.then14
  ], !dbg !152

if.then10:                                        ; preds = %if.end8
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp), !dbg !152
  br label %if.end17, !dbg !152

if.then14:                                        ; preds = %if.end8
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp), !dbg !153
  br label %if.end17, !dbg !153

if.end17:                                         ; preds = %if.end8, %if.then14, %if.then10
  %8 = load i32* %M, align 4, !dbg !154, !tbaa !144
  %name19 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !154
  %9 = load i8** %name19, align 8, !dbg !154, !tbaa !148
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !154
  %10 = load i32* %flags, align 4, !dbg !154, !tbaa !144
  %and = and i32 %10, 512, !dbg !154
  %tobool20 = icmp eq i32 %and, 0, !dbg !154
  br i1 %tobool20, label %cond.end, label %cond.true, !dbg !154

cond.true:                                        ; preds = %if.end17
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !154
  %11 = load i8** %acc, align 8, !dbg !154, !tbaa !148
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %if.end17, %cond.true
  %cond = phi i8* [ %11, %cond.true ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %if.end17 ], !dbg !154
  %and22 = and i32 %10, 2, !dbg !154
  %tobool23 = icmp eq i32 %and22, 0, !dbg !154
  br i1 %tobool23, label %cond.end26, label %cond.true24, !dbg !154

cond.true24:                                      ; preds = %cond.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !154
  %12 = load i8** %desc, align 8, !dbg !154, !tbaa !148
  br label %cond.end26, !dbg !154

cond.end26:                                       ; preds = %cond.end, %cond.true24
  %cond27 = phi i8* [ %12, %cond.true24 ], [ getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), %cond.end ], !dbg !154
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), i32 %8, i8* %9, i8* %cond, i8* %cond27) #5, !dbg !154
  %tobool29 = icmp ne i32 %do_xsw, 0, !dbg !155
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !156
  br i1 %tobool29, label %if.then30, label %if.else39, !dbg !155

if.then30:                                        ; preds = %cond.end26
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str10, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp), !dbg !158
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str11, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %fp), !dbg !159
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([89 x i8]* @.str12, i64 0, i64 0), i64 88, i64 1, %struct._IO_FILE* %fp), !dbg !160
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %fp), !dbg !161
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %fp), !dbg !162
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %fp), !dbg !163
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %fp), !dbg !164
  br label %if.end47, !dbg !165

if.else39:                                        ; preds = %cond.end26
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([68 x i8]* @.str17, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %fp), !dbg !166
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %fp), !dbg !168
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([64 x i8]* @.str13, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %fp), !dbg !169
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([76 x i8]* @.str14, i64 0, i64 0), i64 75, i64 1, %struct._IO_FILE* %fp), !dbg !170
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str15, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %fp), !dbg !171
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %fp), !dbg !172
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then30
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp), !dbg !173
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !174
  %27 = load i32* @Alphabet_iupac, align 4, !dbg !174, !tbaa !144
  %cmp49370 = icmp sgt i32 %27, 0, !dbg !174
  br i1 %cmp49370, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %if.end47, %for.body
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %for.body ], [ 0, %if.end47 ]
  %arrayidx = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv380, !dbg !176
  %28 = load i8* %arrayidx, align 1, !dbg !176, !tbaa !145
  %conv = sext i8 %28 to i32, !dbg !176
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0), i32 %conv) #5, !dbg !176
  %indvars.iv.next381 = add i64 %indvars.iv380, 1, !dbg !174
  %29 = load i32* @Alphabet_iupac, align 4, !dbg !174, !tbaa !144
  %30 = trunc i64 %indvars.iv.next381 to i32, !dbg !174
  %cmp49 = icmp slt i32 %30, %29, !dbg !174
  br i1 %cmp49, label %for.body, label %for.end, !dbg !174

for.end:                                          ; preds = %for.body, %if.end47
  br i1 %tobool29, label %if.then52, label %if.else54, !dbg !177

if.then52:                                        ; preds = %for.end
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str21, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %fp), !dbg !178
  br label %for.cond57.preheader, !dbg !178

if.else54:                                        ; preds = %for.end
  %32 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp), !dbg !179
  br label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %if.else54, %if.then52
  %33 = load i32* %M, align 4, !dbg !180, !tbaa !144
  %cmp59368 = icmp slt i32 %33, 1, !dbg !180
  br i1 %cmp59368, label %for.end203, label %for.body61.lr.ph, !dbg !180

for.body61.lr.ph:                                 ; preds = %for.cond57.preheader
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !182
  %tsc104 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !184
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !186
  br label %for.body61, !dbg !180

for.body61:                                       ; preds = %for.inc201, %for.body61.lr.ph
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.inc201 ], [ 1, %for.body61.lr.ph ]
  %34 = add nsw i64 %indvars.iv377, -1, !dbg !189
  %35 = trunc i64 %34 to i32, !dbg !189
  %rem = srem i32 %35, 10, !dbg !189
  %cmp62 = icmp eq i32 %rem, 0, !dbg !189
  %36 = trunc i64 %indvars.iv377 to i32, !dbg !189
  %cmp65 = icmp sgt i32 %36, 10, !dbg !189
  %or.cond342 = and i1 %cmp62, %cmp65, !dbg !189
  br i1 %or.cond342, label %if.then67, label %if.end69, !dbg !189

if.then67:                                        ; preds = %for.body61
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i32 %36) #5, !dbg !190
  br label %if.end69, !dbg !190

if.end69:                                         ; preds = %if.then67, %for.body61
  %37 = load float*** %mat, align 8, !dbg !182, !tbaa !148
  %arrayidx71 = getelementptr inbounds float** %37, i64 %indvars.iv377, !dbg !182
  %38 = load float** %arrayidx71, align 8, !dbg !182, !tbaa !148
  %39 = load i32* @Alphabet_size, align 4, !dbg !182, !tbaa !144
  %call72 = tail call i32 @FArgMax(float* %38, i32 %39) #5, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32 %call72}, i64 0, metadata !134), !dbg !182
  %idxprom73 = sext i32 %call72 to i64, !dbg !191
  %arrayidx74 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom73, !dbg !191
  %40 = load i8* %arrayidx74, align 1, !dbg !191, !tbaa !145
  %conv75 = sext i8 %40 to i32, !dbg !191
  %call76 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i32 %conv75) #5, !dbg !191
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !192
  %41 = load i32* @Alphabet_iupac, align 4, !dbg !192, !tbaa !144
  %cmp78366 = icmp sgt i32 %41, 0, !dbg !192
  br i1 %cmp78366, label %for.body80, label %for.end98, !dbg !192

for.body80:                                       ; preds = %if.end69, %if.end92
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %if.end92 ], [ 0, %if.end69 ]
  %42 = load i32*** %msc, align 8, !dbg !186, !tbaa !148
  %arrayidx83 = getelementptr inbounds i32** %42, i64 %indvars.iv375, !dbg !186
  %43 = load i32** %arrayidx83, align 8, !dbg !186, !tbaa !148
  %arrayidx84 = getelementptr inbounds i32* %43, i64 %indvars.iv377, !dbg !186
  %44 = load i32* %arrayidx84, align 4, !dbg !186, !tbaa !144
  tail call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !135), !dbg !186
  %45 = load i32* %M, align 4, !dbg !193, !tbaa !144
  %cmp86 = icmp slt i32 %36, %45, !dbg !193
  br i1 %cmp86, label %if.then88, label %if.end92, !dbg !193

if.then88:                                        ; preds = %for.body80
  %46 = load i32*** %tsc104, align 8, !dbg !193, !tbaa !148
  %47 = load i32** %46, align 8, !dbg !193, !tbaa !148
  %arrayidx91 = getelementptr inbounds i32* %47, i64 %indvars.iv377, !dbg !193
  %48 = load i32* %arrayidx91, align 4, !dbg !193, !tbaa !144
  %add = add nsw i32 %48, %44, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !135), !dbg !193
  br label %if.end92, !dbg !193

if.end92:                                         ; preds = %if.then88, %for.body80
  %sc.0 = phi i32 [ %add, %if.then88 ], [ %44, %for.body80 ]
  %mul = mul nsw i32 %sc.0, 100, !dbg !194
  %conv93 = sitofp i32 %mul to double, !dbg !194
  %div = fdiv double %conv93, 1.000000e+03, !dbg !194
  %conv94 = fptosi double %div to i32, !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %conv94}, i64 0, metadata !135), !dbg !194
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %conv94) #5, !dbg !195
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !192
  %49 = load i32* @Alphabet_iupac, align 4, !dbg !192, !tbaa !144
  %50 = trunc i64 %indvars.iv.next376 to i32, !dbg !192
  %cmp78 = icmp slt i32 %50, %49, !dbg !192
  br i1 %cmp78, label %for.body80, label %for.end98, !dbg !192

for.end98:                                        ; preds = %if.end92, %if.end69
  %cmp99 = icmp sgt i32 %36, 1, !dbg !196
  br i1 %cmp99, label %if.then182, label %if.end194, !dbg !196

if.then182:                                       ; preds = %for.end98
  %51 = load i32*** %tsc104, align 8, !dbg !184, !tbaa !148
  %arrayidx105 = getelementptr inbounds i32** %51, i64 1, !dbg !184
  %52 = load i32** %arrayidx105, align 8, !dbg !184, !tbaa !148
  %arrayidx106 = getelementptr inbounds i32* %52, i64 %34, !dbg !184
  %53 = load i32* %arrayidx106, align 4, !dbg !184, !tbaa !144
  %arrayidx110 = getelementptr inbounds i32** %51, i64 3, !dbg !184
  %54 = load i32** %arrayidx110, align 8, !dbg !184, !tbaa !148
  %arrayidx111 = getelementptr inbounds i32* %54, i64 %34, !dbg !184
  %55 = load i32* %arrayidx111, align 4, !dbg !184, !tbaa !144
  %56 = load i32** %51, align 8, !dbg !184, !tbaa !148
  %arrayidx117 = getelementptr inbounds i32* %56, i64 %34, !dbg !184
  %57 = load i32* %arrayidx117, align 4, !dbg !184, !tbaa !144
  %arrayidx122 = getelementptr inbounds i32** %51, i64 4, !dbg !184
  %58 = load i32** %arrayidx122, align 8, !dbg !184, !tbaa !148
  %arrayidx123 = getelementptr inbounds i32* %58, i64 %34, !dbg !184
  %59 = load i32* %arrayidx123, align 4, !dbg !184, !tbaa !144
  %sum = add i32 %55, %53, !dbg !184
  %sub118341 = sub i32 %57, %sum, !dbg !184
  %sub124340 = add i32 %sub118341, %59, !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32 %sub124340}, i64 0, metadata !137), !dbg !184
  %mul126 = mul nsw i32 %sub124340, 100, !dbg !197
  %conv127 = sitofp i32 %mul126 to double, !dbg !197
  %div128 = fdiv double %conv127, 1.000000e+04, !dbg !197
  %conv129 = fptosi double %div128 to i32, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %conv129}, i64 0, metadata !137), !dbg !197
  %mul141 = mul i32 %59, -100, !dbg !198
  %conv142 = sitofp i32 %mul141 to double, !dbg !198
  %div143 = fdiv double %conv142, 1.000000e+03, !dbg !198
  %conv144 = fptosi double %div143 to i32, !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %conv144}, i64 0, metadata !138), !dbg !198
  %arrayidx153 = getelementptr inbounds i32** %51, i64 5, !dbg !200
  %60 = load i32** %arrayidx153, align 8, !dbg !200, !tbaa !148
  %arrayidx154 = getelementptr inbounds i32* %60, i64 %34, !dbg !200
  %61 = load i32* %arrayidx154, align 4, !dbg !200, !tbaa !144
  %arrayidx158 = getelementptr inbounds i32** %51, i64 2, !dbg !200
  %62 = load i32** %arrayidx158, align 8, !dbg !200, !tbaa !148
  %arrayidx159 = getelementptr inbounds i32* %62, i64 %34, !dbg !200
  %63 = load i32* %arrayidx159, align 4, !dbg !200, !tbaa !144
  %arrayidx170 = getelementptr inbounds i32** %51, i64 6, !dbg !200
  %64 = load i32** %arrayidx170, align 8, !dbg !200, !tbaa !148
  %arrayidx171 = getelementptr inbounds i32* %64, i64 %34, !dbg !200
  %65 = load i32* %arrayidx171, align 4, !dbg !200, !tbaa !144
  %sum372 = add i32 %63, %61, !dbg !200
  %sub166339 = sub i32 %57, %sum372, !dbg !200
  %sub172338 = add i32 %sub166339, %65, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %sub172338}, i64 0, metadata !139), !dbg !200
  %mul174 = mul nsw i32 %sub172338, 100, !dbg !202
  %conv175 = sitofp i32 %mul174 to double, !dbg !202
  %div176 = fdiv double %conv175, 1.000000e+04, !dbg !202
  %conv177 = fptosi double %div176 to i32, !dbg !202
  tail call void @llvm.dbg.value(metadata !{i32 %conv177}, i64 0, metadata !139), !dbg !202
  %mul189 = mul i32 %65, -100, !dbg !203
  %conv190 = sitofp i32 %mul189 to double, !dbg !203
  %div191 = fdiv double %conv190, 1.000000e+03, !dbg !203
  %conv192 = fptosi double %div191 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %conv192}, i64 0, metadata !140), !dbg !203
  br label %if.end194, !dbg !205

if.end194:                                        ; preds = %for.end98, %if.then182
  %qgap.0353 = phi i32 [ %conv177, %if.then182 ], [ 100, %for.end98 ]
  %gap.0343345351 = phi i32 [ %conv129, %if.then182 ], [ 100, %for.end98 ]
  %len.0347349 = phi i32 [ %conv144, %if.then182 ], [ 100, %for.end98 ]
  %qlen.0 = phi i32 [ %conv192, %if.then182 ], [ 100, %for.end98 ]
  br i1 %tobool29, label %if.then196, label %if.else198, !dbg !206

if.then196:                                       ; preds = %if.end194
  %call197 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i32 %gap.0343345351, i32 %len.0347349, i32 %qgap.0353, i32 %qlen.0) #5, !dbg !207
  br label %for.inc201, !dbg !207

if.else198:                                       ; preds = %if.end194
  %call199 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str27, i64 0, i64 0), i32 %gap.0343345351, i32 %len.0347349) #5, !dbg !208
  br label %for.inc201

for.inc201:                                       ; preds = %if.then196, %if.else198
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !180
  %66 = load i32* %M, align 4, !dbg !180, !tbaa !144
  %cmp59 = icmp slt i32 %36, %66, !dbg !180
  br i1 %cmp59, label %for.body61, label %for.end203, !dbg !180

for.end203:                                       ; preds = %for.inc201, %for.cond57.preheader
  %67 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str28, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp), !dbg !209
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !210
  %68 = load i32* @Alphabet_size, align 4, !dbg !210, !tbaa !144
  %cmp206363 = icmp sgt i32 %68, 0, !dbg !210
  br i1 %cmp206363, label %for.cond209.preheader.lr.ph, label %for.cond230.preheader, !dbg !210

for.cond209.preheader.lr.ph:                      ; preds = %for.end203
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7, !dbg !212
  %mat216 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !214
  br label %for.cond209.preheader, !dbg !210

for.cond209.preheader:                            ; preds = %for.cond209.preheader.lr.ph, %for.end222
  %indvars.iv373 = phi i64 [ 0, %for.cond209.preheader.lr.ph ], [ %indvars.iv.next374, %for.end222 ]
  %x.2364 = phi i32 [ 0, %for.cond209.preheader.lr.ph ], [ %inc228, %for.end222 ]
  %69 = load i32* %M, align 4, !dbg !216, !tbaa !144
  %cmp211360 = icmp slt i32 %69, 1, !dbg !216
  br i1 %cmp211360, label %for.end222, label %for.body213.lr.ph, !dbg !216

for.body213.lr.ph:                                ; preds = %for.cond209.preheader
  %70 = load float*** %mat216, align 8, !dbg !214, !tbaa !148
  br label %for.body213, !dbg !216

for.cond230.preheader:                            ; preds = %for.end222, %for.end203
  %x.2.lcssa = phi i32 [ 0, %for.end203 ], [ %inc228, %for.end222 ]
  %71 = load i32* @Alphabet_iupac, align 4, !dbg !217, !tbaa !144
  %cmp231358 = icmp slt i32 %x.2.lcssa, %71, !dbg !217
  br i1 %cmp231358, label %for.body233, label %for.end237, !dbg !217

for.body213:                                      ; preds = %for.body213, %for.body213.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body213 ], [ 1, %for.body213.lr.ph ]
  %nx.0362 = phi float [ %add219, %for.body213 ], [ 0.000000e+00, %for.body213.lr.ph ]
  %arrayidx217 = getelementptr inbounds float** %70, i64 %indvars.iv, !dbg !214
  %72 = load float** %arrayidx217, align 8, !dbg !214, !tbaa !148
  %arrayidx218 = getelementptr inbounds float* %72, i64 %indvars.iv373, !dbg !214
  %73 = load float* %arrayidx218, align 4, !dbg !214, !tbaa !219
  %add219 = fadd float %nx.0362, %73, !dbg !214
  tail call void @llvm.dbg.value(metadata !{float %add219}, i64 0, metadata !136), !dbg !214
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !216
  %74 = trunc i64 %indvars.iv to i32, !dbg !216
  %cmp211 = icmp slt i32 %74, %69, !dbg !216
  br i1 %cmp211, label %for.body213, label %for.end222, !dbg !216

for.end222:                                       ; preds = %for.body213, %for.cond209.preheader
  %nx.0.lcssa = phi float [ 0.000000e+00, %for.cond209.preheader ], [ %add219, %for.body213 ]
  %75 = load i32* %nseq, align 4, !dbg !212, !tbaa !144
  %conv223 = sitofp i32 %75 to float, !dbg !212
  %mul224 = fmul float %nx.0.lcssa, %conv223, !dbg !212
  tail call void @llvm.dbg.value(metadata !{float %mul224}, i64 0, metadata !136), !dbg !212
  %conv225 = fptosi float %mul224 to i32, !dbg !220
  %call226 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 %conv225) #5, !dbg !220
  %indvars.iv.next374 = add i64 %indvars.iv373, 1, !dbg !210
  %inc228 = add nsw i32 %x.2364, 1, !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %inc228}, i64 0, metadata !134), !dbg !210
  %76 = load i32* @Alphabet_size, align 4, !dbg !210, !tbaa !144
  %77 = trunc i64 %indvars.iv.next374 to i32, !dbg !210
  %cmp206 = icmp slt i32 %77, %76, !dbg !210
  br i1 %cmp206, label %for.cond209.preheader, label %for.cond230.preheader, !dbg !210

for.body233:                                      ; preds = %for.cond230.preheader, %for.body233
  %x.3359 = phi i32 [ %inc236, %for.body233 ], [ %x.2.lcssa, %for.cond230.preheader ]
  %call234 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i32 0) #5, !dbg !221
  %inc236 = add nsw i32 %x.3359, 1, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %inc236}, i64 0, metadata !134), !dbg !217
  %78 = load i32* @Alphabet_iupac, align 4, !dbg !217, !tbaa !144
  %cmp231 = icmp slt i32 %inc236, %78, !dbg !217
  br i1 %cmp231, label %for.body233, label %for.end237, !dbg !217

for.end237:                                       ; preds = %for.body233, %for.cond230.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !222
  ret void, !dbg !223
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteProfile", metadata !"WriteProfile", metadata !"", i32 91, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.plan7_s*, i32)* @WriteProfile, null, null, metadata !129, i32 92} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 92] [WriteProfile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !66, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!11 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !36, metadata !37, metadata !38, metadata !39, metadata !42, metadata !44, metadata !46, metadata !50, metadata !52, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!30 = metadata !{i32 786451, metadata !11, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!31 = metadata !{metadata !32, metadata !33, metadata !35}
!32 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!35 = metadata !{i32 786445, metadata !11, metadata !30, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !34} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!40 = metadata !{i32 786454, metadata !11, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!41 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !43} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!43 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !45} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!45 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !47} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !17, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !53} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!53 = metadata !{i32 786454, metadata !11, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !51} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !59} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!59 = metadata !{i32 786454, metadata !11, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!60 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !63} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !17, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!67 = metadata !{i32 786451, metadata !68, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!68 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !96, metadata !97, metadata !98, metadata !99, metadata !104, metadata !105, metadata !106, metadata !108, metadata !109, metadata !111, metadata !112, metadata !113, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!70 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!72 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!73 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!74 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!75 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!76 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !16} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!77 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!78 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!79 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !80} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!81 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !14} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!82 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !80} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!83 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !80} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!84 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !80} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!85 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !86} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!86 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!87 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !86} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!88 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!89 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !86} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!90 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !86} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!91 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !86} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!92 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !14} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!93 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !94} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!96 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !94} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!97 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !94} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!98 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !86} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!99 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !100} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !86, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!101 = metadata !{metadata !102, metadata !103}
!102 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!103 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!104 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !95} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!105 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !95} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!106 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !107} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !86, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!108 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !86} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!109 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !110} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !110} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!112 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !110} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!113 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !114} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !14, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!115 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !80} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!116 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !80} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!117 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !80} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!118 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !80} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!119 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !80} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!120 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !80} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!121 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !80} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!122 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !110} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!123 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !110} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!124 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !14} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!125 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !14} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!126 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !86} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!127 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !86} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!128 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !14} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!130 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 16777307, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 91]
!131 = metadata !{i32 786689, metadata !4, metadata !"hmm", metadata !5, i32 33554523, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 91]
!132 = metadata !{i32 786689, metadata !4, metadata !"do_xsw", metadata !5, i32 50331739, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [do_xsw] [line 91]
!133 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 93, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 93]
!134 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 94, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 94]
!135 = metadata !{i32 786688, metadata !4, metadata !"sc", metadata !5, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 95]
!136 = metadata !{i32 786688, metadata !4, metadata !"nx", metadata !5, i32 96, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 96]
!137 = metadata !{i32 786688, metadata !4, metadata !"gap", metadata !5, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gap] [line 97]
!138 = metadata !{i32 786688, metadata !4, metadata !"len", metadata !5, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 97]
!139 = metadata !{i32 786688, metadata !4, metadata !"qgap", metadata !5, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qgap] [line 97]
!140 = metadata !{i32 786688, metadata !4, metadata !"qlen", metadata !5, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qlen] [line 97]
!141 = metadata !{i32 91, i32 0, metadata !4, null}
!142 = metadata !{i32 99, i32 0, metadata !4, null}
!143 = metadata !{i32 105, i32 0, metadata !4, null}
!144 = metadata !{metadata !"int", metadata !145}
!145 = metadata !{metadata !"omnipotent char", metadata !146}
!146 = metadata !{metadata !"Simple C/C++ TBAA"}
!147 = metadata !{i32 106, i32 0, metadata !4, null}
!148 = metadata !{metadata !"any pointer", metadata !145}
!149 = metadata !{i32 115, i32 0, metadata !4, null}
!150 = metadata !{i32 116, i32 0, metadata !4, null}
!151 = metadata !{i32 117, i32 0, metadata !4, null}
!152 = metadata !{i32 119, i32 0, metadata !4, null}
!153 = metadata !{i32 120, i32 0, metadata !4, null}
!154 = metadata !{i32 121, i32 0, metadata !4, null}
!155 = metadata !{i32 128, i32 0, metadata !4, null}
!156 = metadata !{i32 130, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !4, i32 129, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!158 = metadata !{i32 131, i32 0, metadata !157, null}
!159 = metadata !{i32 132, i32 0, metadata !157, null}
!160 = metadata !{i32 133, i32 0, metadata !157, null}
!161 = metadata !{i32 134, i32 0, metadata !157, null}
!162 = metadata !{i32 135, i32 0, metadata !157, null}
!163 = metadata !{i32 136, i32 0, metadata !157, null}
!164 = metadata !{i32 137, i32 0, metadata !157, null}
!165 = metadata !{i32 138, i32 0, metadata !157, null}
!166 = metadata !{i32 142, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !4, i32 140, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!168 = metadata !{i32 143, i32 0, metadata !167, null}
!169 = metadata !{i32 144, i32 0, metadata !167, null}
!170 = metadata !{i32 145, i32 0, metadata !167, null}
!171 = metadata !{i32 146, i32 0, metadata !167, null}
!172 = metadata !{i32 147, i32 0, metadata !167, null}
!173 = metadata !{i32 153, i32 0, metadata !4, null}
!174 = metadata !{i32 154, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !4, i32 154, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!176 = metadata !{i32 155, i32 0, metadata !175, null}
!177 = metadata !{i32 156, i32 0, metadata !4, null}
!178 = metadata !{i32 157, i32 0, metadata !4, null}
!179 = metadata !{i32 159, i32 0, metadata !4, null}
!180 = metadata !{i32 163, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !4, i32 163, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!182 = metadata !{i32 170, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !181, i32 164, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!184 = metadata !{i32 189, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 188, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!186 = metadata !{i32 177, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 176, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!188 = metadata !{i32 786443, metadata !1, metadata !183, i32 175, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!189 = metadata !{i32 166, i32 0, metadata !183, null}
!190 = metadata !{i32 167, i32 0, metadata !183, null}
!191 = metadata !{i32 171, i32 0, metadata !183, null}
!192 = metadata !{i32 175, i32 0, metadata !188, null}
!193 = metadata !{i32 178, i32 0, metadata !187, null}
!194 = metadata !{i32 179, i32 0, metadata !187, null}
!195 = metadata !{i32 180, i32 0, metadata !187, null}
!196 = metadata !{i32 187, i32 0, metadata !183, null}
!197 = metadata !{i32 190, i32 0, metadata !185, null}
!198 = metadata !{i32 198, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !183, i32 196, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!200 = metadata !{i32 205, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !183, i32 204, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!202 = metadata !{i32 206, i32 0, metadata !201, null}
!203 = metadata !{i32 213, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !183, i32 211, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!205 = metadata !{i32 214, i32 0, metadata !204, null}
!206 = metadata !{i32 218, i32 0, metadata !183, null}
!207 = metadata !{i32 219, i32 0, metadata !183, null}
!208 = metadata !{i32 221, i32 0, metadata !183, null}
!209 = metadata !{i32 229, i32 0, metadata !4, null}
!210 = metadata !{i32 230, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !4, i32 230, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!212 = metadata !{i32 235, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !211, i32 231, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!214 = metadata !{i32 234, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 233, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!216 = metadata !{i32 233, i32 0, metadata !215, null}
!217 = metadata !{i32 238, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !4, i32 238, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emulation.c]
!219 = metadata !{metadata !"float", metadata !145}
!220 = metadata !{i32 236, i32 0, metadata !213, null}
!221 = metadata !{i32 239, i32 0, metadata !218, null}
!222 = metadata !{i32 240, i32 0, metadata !4, null}
!223 = metadata !{i32 241, i32 0, metadata !4, null}
