; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [22 x i8] c"No such alphabet type\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"Looks like nucleic acid sequence, hope that's right\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"Looks like amino acid sequence, hope that's right\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"Sorry, I can't tell if that's protein or DNA\00", align 1
@Alphabet_type = external global i32
@.str4 = private unnamed_addr constant [107 x i8] c"An alphabet type conflict occurred.\0AYou probably mixed a DNA seq file with a protein model, or vice versa.\00", align 1
@Alphabet = external global [25 x i8]
@.str5 = private unnamed_addr constant [25 x i8] c"ACDEFGHIKLMNPQRSTVWYUBZX\00", align 1
@Alphabet_size = external global i32
@Alphabet_iupac = external global i32
@Degenerate = external global [24 x [20 x i8]]
@DegenCount = external global [24 x i32]
@.str6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"ND\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"QE\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"ACDEFGHIKLMNPQRSTVWY\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"ACGTUNRYMKSWHBVDX\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"ACGT\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str15 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"GT\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"AT\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"ACT\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"CGT\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"ACG\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"AGT\00", align 1
@.str23 = private unnamed_addr constant [48 x i8] c"No support for non-nucleic or protein alphabets\00", align 1
@.str24 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c\00", align 1
@stdcode1 = external global [0 x i8*]

; Function Attrs: nounwind optsize uwtable
define void @DetermineAlphabet(i8** nocapture %rseqs, i32 %nseq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %rseqs}, i64 0, metadata !13), !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !14), !dbg !158
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !159
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !160
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !17), !dbg !160
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !16), !dbg !160
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !15), !dbg !161
  %cmp40 = icmp sgt i32 %nseq, 0, !dbg !161
  br i1 %cmp40, label %for.body, label %for.end, !dbg !161

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %amino.044 = phi i32 [ %amino.1, %for.inc ], [ 0, %entry ]
  %nucleic.043 = phi i32 [ %nucleic.1, %for.inc ], [ 0, %entry ]
  %other.042 = phi i32 [ %other.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %rseqs, i64 %indvars.iv, !dbg !163
  %0 = load i8** %arrayidx, align 8, !dbg !163, !tbaa !165
  %call = tail call i32 @Seqtype(i8* %0) #6, !dbg !163
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 0, label %sw.bb5
  ], !dbg !163

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %nucleic.043, 1, !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !17), !dbg !168
  br label %for.inc, !dbg !168

sw.bb1:                                           ; preds = %for.body
  %inc2 = add nsw i32 %nucleic.043, 1, !dbg !170
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !17), !dbg !170
  br label %for.inc, !dbg !170

sw.bb3:                                           ; preds = %for.body
  %inc4 = add nsw i32 %amino.044, 1, !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %inc4}, i64 0, metadata !18), !dbg !171
  br label %for.inc, !dbg !171

sw.bb5:                                           ; preds = %for.body
  %inc6 = add nsw i32 %other.042, 1, !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %inc6}, i64 0, metadata !16), !dbg !172
  br label %for.inc, !dbg !172

sw.default:                                       ; preds = %for.body
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #6, !dbg !173
  br label %for.inc, !dbg !174

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %sw.default
  %other.1 = phi i32 [ %other.042, %sw.default ], [ %inc6, %sw.bb5 ], [ %other.042, %sw.bb3 ], [ %other.042, %sw.bb1 ], [ %other.042, %sw.bb ]
  %nucleic.1 = phi i32 [ %nucleic.043, %sw.default ], [ %nucleic.043, %sw.bb5 ], [ %nucleic.043, %sw.bb3 ], [ %inc2, %sw.bb1 ], [ %inc, %sw.bb ]
  %amino.1 = phi i32 [ %amino.044, %sw.default ], [ %amino.044, %sw.bb5 ], [ %inc4, %sw.bb3 ], [ %amino.044, %sw.bb1 ], [ %amino.044, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !161
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !161
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !161
  br i1 %exitcond, label %for.end, label %for.body, !dbg !161

for.end:                                          ; preds = %for.inc, %entry
  %amino.0.lcssa = phi i32 [ 0, %entry ], [ %amino.1, %for.inc ]
  %nucleic.0.lcssa = phi i32 [ 0, %entry ], [ %nucleic.1, %for.inc ]
  %other.0.lcssa = phi i32 [ 0, %entry ], [ %other.1, %for.inc ]
  %cmp8 = icmp eq i32 %nucleic.0.lcssa, %nseq, !dbg !175
  br i1 %cmp8, label %if.end23, label %if.else, !dbg !175

if.else:                                          ; preds = %for.end
  %cmp9 = icmp eq i32 %amino.0.lcssa, %nseq, !dbg !176
  br i1 %cmp9, label %if.end23, label %if.else11, !dbg !176

if.else11:                                        ; preds = %if.else
  %cmp12 = icmp sgt i32 %nucleic.0.lcssa, %amino.0.lcssa, !dbg !177
  %cmp13 = icmp sgt i32 %nucleic.0.lcssa, %other.0.lcssa, !dbg !177
  %or.cond = and i1 %cmp12, %cmp13, !dbg !177
  br i1 %or.cond, label %if.then14, label %if.else15, !dbg !177

if.then14:                                        ; preds = %if.else11
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !178
  tail call void @llvm.dbg.value(metadata !180, i64 0, metadata !19), !dbg !181
  br label %if.end23, !dbg !182

if.else15:                                        ; preds = %if.else11
  %cmp16 = icmp sgt i32 %amino.0.lcssa, %nucleic.0.lcssa, !dbg !183
  %cmp18 = icmp sgt i32 %amino.0.lcssa, %other.0.lcssa, !dbg !183
  %or.cond39 = and i1 %cmp16, %cmp18, !dbg !183
  br i1 %or.cond39, label %if.then19, label %if.else20, !dbg !183

if.then19:                                        ; preds = %if.else15
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !184
  tail call void @llvm.dbg.value(metadata !186, i64 0, metadata !19), !dbg !187
  br label %if.end23, !dbg !188

if.else20:                                        ; preds = %if.else15
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !189
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.end, %if.then19, %if.else20, %if.then14
  %type.0 = phi i32 [ 2, %if.then14 ], [ 3, %if.then19 ], [ 0, %if.else20 ], [ 2, %for.end ], [ 3, %if.else ]
  tail call void @SetAlphabet(i32 %type.0) #7, !dbg !190
  ret void, !dbg !191
}

; Function Attrs: optsize
declare i32 @Seqtype(i8*) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @Warn(i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @SetAlphabet(i32 %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !24), !dbg !192
  %0 = load i32* @Alphabet_type, align 4, !dbg !193, !tbaa !194
  %cmp = icmp eq i32 %0, 0, !dbg !193
  br i1 %cmp, label %if.end3, label %if.then, !dbg !193

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, %type, !dbg !195
  br i1 %cmp1, label %sw.epilog, label %if.then2, !dbg !195

if.then2:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !197
  br label %sw.epilog, !dbg !197

if.end3:                                          ; preds = %entry
  switch i32 %type, label %sw.default [
    i32 3, label %for.body.lr.ph
    i32 2, label %for.body23.lr.ph
  ], !dbg !198

for.body.lr.ph:                                   ; preds = %if.end3
  store i32 3, i32* @Alphabet_type, align 4, !dbg !199, !tbaa !194
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 25, i32 1, i1 false), !dbg !201
  store i32 20, i32* @Alphabet_size, align 4, !dbg !202, !tbaa !194
  store i32 24, i32* @Alphabet_iupac, align 4, !dbg !203, !tbaa !194
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !25), !dbg !204
  br label %for.body, !dbg !204

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv68 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ]
  %1 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv68, i64 0, !dbg !206
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 20, i32 1, i1 false), !dbg !206
  %indvars.iv.next69 = add i64 %indvars.iv68, 1, !dbg !204
  %2 = trunc i64 %indvars.iv.next69 to i32, !dbg !204
  %cmp4 = icmp slt i32 %2, 24, !dbg !204
  br i1 %cmp4, label %for.body, label %for.body8, !dbg !204

for.body8:                                        ; preds = %for.body, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.body ]
  %arrayidx12 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv, i64 %indvars.iv, !dbg !208
  store i8 1, i8* %arrayidx12, align 1, !dbg !208, !tbaa !166
  %arrayidx14 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %indvars.iv, !dbg !211
  store i32 1, i32* %arrayidx14, align 4, !dbg !211, !tbaa !194
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !212
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !212
  %cmp6 = icmp slt i32 %3, 20, !dbg !212
  br i1 %cmp6, label %for.body8, label %for.end17, !dbg !212

for.end17:                                        ; preds = %for.body8
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !213
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !214
  tail call fastcc void @set_degenerate(i8 signext 90, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !215
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !216
  br label %sw.epilog, !dbg !217

for.body23.lr.ph:                                 ; preds = %if.end3
  store i32 2, i32* @Alphabet_type, align 4, !dbg !218, !tbaa !194
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i64 18, i32 1, i1 false), !dbg !219
  store i32 4, i32* @Alphabet_size, align 4, !dbg !220, !tbaa !194
  store i32 17, i32* @Alphabet_iupac, align 4, !dbg !221, !tbaa !194
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !25), !dbg !222
  br label %for.body23, !dbg !222

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv72 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next73, %for.body23 ]
  %4 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv72, i64 0, !dbg !224
  %5 = bitcast i8* %4 to i32*, !dbg !224
  store i32 0, i32* %5, align 1, !dbg !224
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !222
  %6 = trunc i64 %indvars.iv.next73 to i32, !dbg !222
  %cmp21 = icmp slt i32 %6, 17, !dbg !222
  br i1 %cmp21, label %for.body23, label %for.body33, !dbg !222

for.body33:                                       ; preds = %for.body23, %for.body33
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body33 ], [ 0, %for.body23 ]
  %arrayidx37 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv70, i64 %indvars.iv70, !dbg !226
  store i8 1, i8* %arrayidx37, align 1, !dbg !226, !tbaa !166
  %arrayidx39 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %indvars.iv70, !dbg !229
  store i32 1, i32* %arrayidx39, align 4, !dbg !229, !tbaa !194
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !230
  %7 = trunc i64 %indvars.iv.next71 to i32, !dbg !230
  %cmp31 = icmp slt i32 %7, 4, !dbg !230
  br i1 %cmp31, label %for.body33, label %for.end42, !dbg !230

for.end42:                                        ; preds = %for.body33
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !231
  tail call fastcc void @set_degenerate(i8 signext 78, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !232
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !233
  tail call fastcc void @set_degenerate(i8 signext 82, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !234
  tail call fastcc void @set_degenerate(i8 signext 89, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !235
  tail call fastcc void @set_degenerate(i8 signext 77, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !236
  tail call fastcc void @set_degenerate(i8 signext 75, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !237
  tail call fastcc void @set_degenerate(i8 signext 83, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !238
  tail call fastcc void @set_degenerate(i8 signext 87, i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !239
  tail call fastcc void @set_degenerate(i8 signext 72, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !240
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !241
  tail call fastcc void @set_degenerate(i8 signext 86, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !242
  tail call fastcc void @set_degenerate(i8 signext 68, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !243
  br label %sw.epilog, !dbg !244

sw.default:                                       ; preds = %if.end3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0)) #6, !dbg !245
  br label %sw.epilog, !dbg !246

sw.epilog:                                        ; preds = %if.then, %if.then2, %sw.default, %for.end42, %for.end17
  ret void, !dbg !247
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_degenerate(i8 signext %iupac, i8* nocapture %syms) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %iupac}, i64 0, metadata !156), !dbg !248
  tail call void @llvm.dbg.value(metadata !{i8* %syms}, i64 0, metadata !157), !dbg !248
  %call = tail call i64 @strlen(i8* %syms) #8, !dbg !249
  %conv = trunc i64 %call to i32, !dbg !249
  %conv1 = sext i8 %iupac to i32, !dbg !249
  %call2 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv1) #8, !dbg !249
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64, !dbg !249
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !249
  %arrayidx = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %sub.ptr.sub, !dbg !249
  store i32 %conv, i32* %arrayidx, align 4, !dbg !249, !tbaa !194
  %0 = load i8* %syms, align 1, !dbg !250, !tbaa !166
  %tobool17 = icmp eq i8 %0, 0, !dbg !250
  br i1 %tobool17, label %while.end, label %while.body, !dbg !250

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %syms.addr.018 = phi i8* [ %incdec.ptr, %while.body ], [ %syms, %entry ]
  %conv3 = sext i8 %1 to i32, !dbg !251
  %call4 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv3) #8, !dbg !251
  %sub.ptr.lhs.cast5 = ptrtoint i8* %call4 to i64, !dbg !251
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast5, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !251
  %call8 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv1) #8, !dbg !253
  %sub.ptr.lhs.cast9 = ptrtoint i8* %call8 to i64, !dbg !253
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast9, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !253
  %arrayidx12 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %sub.ptr.sub10, i64 %sub.ptr.sub6, !dbg !253
  store i8 1, i8* %arrayidx12, align 1, !dbg !253, !tbaa !166
  %incdec.ptr = getelementptr inbounds i8* %syms.addr.018, i64 1, !dbg !254
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !157), !dbg !254
  %2 = load i8* %incdec.ptr, align 1, !dbg !250, !tbaa !166
  %tobool = icmp eq i8 %2, 0, !dbg !250
  br i1 %tobool, label %while.end, label %while.body, !dbg !250

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !255
}

; Function Attrs: nounwind optsize uwtable
define i32 @SymbolIndex(i8 signext %sym) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %sym}, i64 0, metadata !30), !dbg !256
  %conv = sext i8 %sym to i32, !dbg !257
  %call = tail call i32 @toupper(i32 %conv) #6, !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !32), !dbg !257
  %sext = shl i32 %call, 24, !dbg !259
  %conv2 = ashr exact i32 %sext, 24, !dbg !259
  %call3 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv2) #8, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !31), !dbg !259
  %cmp = icmp eq i8* %call3, null, !dbg !259
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !259

cond.true:                                        ; preds = %entry
  %0 = load i32* @Alphabet_iupac, align 4, !dbg !259, !tbaa !194
  %sub = add nsw i32 %0, -1, !dbg !259
  %conv5 = sext i32 %sub to i64, !dbg !259
  br label %cond.end, !dbg !259

cond.false:                                       ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call3 to i64, !dbg !259
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !259
  br label %cond.end, !dbg !259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv5, %cond.true ], [ %sub.ptr.sub, %cond.false ], !dbg !259
  %conv6 = trunc i64 %cond to i32, !dbg !259
  ret i32 %conv6, !dbg !259
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #4

; Function Attrs: nounwind optsize uwtable
define i8* @DigitizeSequence(i8* nocapture %seq, i32 %L) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !38), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !39), !dbg !260
  %add = add nsw i32 %L, 2, !dbg !261
  %conv = sext i32 %add to i64, !dbg !261
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 215, i64 %conv) #6, !dbg !261
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !40), !dbg !261
  %0 = load i32* @Alphabet_iupac, align 4, !dbg !262, !tbaa !194
  %conv1 = trunc i32 %0 to i8, !dbg !262
  %add2 = add i32 %L, 1, !dbg !262
  %idxprom = sext i32 %add2 to i64, !dbg !262
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom, !dbg !262
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !262, !tbaa !166
  store i8 %conv1, i8* %call, align 1, !dbg !262, !tbaa !166
  tail call void @llvm.dbg.value(metadata !263, i64 0, metadata !41), !dbg !264
  %cmp19 = icmp slt i32 %L, 1, !dbg !264
  br i1 %cmp19, label %for.end, label %for.body, !dbg !264

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %1 = add nsw i64 %indvars.iv, -1, !dbg !266
  %arrayidx6 = getelementptr inbounds i8* %seq, i64 %1, !dbg !266
  %2 = load i8* %arrayidx6, align 1, !dbg !266, !tbaa !166
  %call7 = tail call i32 @SymbolIndex(i8 signext %2) #7, !dbg !266
  %conv8 = trunc i32 %call7 to i8, !dbg !266
  %arrayidx10 = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !266
  store i8 %conv8, i8* %arrayidx10, align 1, !dbg !266, !tbaa !166
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !264
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !264
  %exitcond = icmp eq i32 %lftr.wideiv, %add2, !dbg !264
  br i1 %exitcond, label %for.end, label %for.body, !dbg !264

for.end:                                          ; preds = %for.body, %entry
  ret i8* %call, !dbg !267
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define i8* @DedigitizeSequence(i8* nocapture %dsq, i32 %L) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !44), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %L}, i64 0, metadata !45), !dbg !268
  %add = add nsw i32 %L, 1, !dbg !269
  %conv = sext i32 %add to i64, !dbg !269
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 235, i64 %conv) #6, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !46), !dbg !269
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !270
  %cmp17 = icmp sgt i32 %L, 0, !dbg !270
  br i1 %cmp17, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !270
  %arrayidx = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next, !dbg !272
  %0 = load i8* %arrayidx, align 1, !dbg !272, !tbaa !166
  %idxprom4 = sext i8 %0 to i64, !dbg !272
  %arrayidx5 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom4, !dbg !272
  %1 = load i8* %arrayidx5, align 1, !dbg !272, !tbaa !166
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %indvars.iv, !dbg !272
  store i8 %1, i8* %arrayidx7, align 1, !dbg !272, !tbaa !166
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !270
  %exitcond = icmp eq i32 %lftr.wideiv, %L, !dbg !270
  br i1 %exitcond, label %for.end, label %for.body, !dbg !270

for.end:                                          ; preds = %for.body, %entry
  %idxprom8 = sext i32 %L to i64, !dbg !273
  %arrayidx9 = getelementptr inbounds i8* %call, i64 %idxprom8, !dbg !273
  store i8 0, i8* %arrayidx9, align 1, !dbg !273, !tbaa !166
  ret i8* %call, !dbg !274
}

; Function Attrs: nounwind optsize uwtable
define void @DigitizeAlignment(%struct.msa_struct* nocapture %msa, i8*** nocapture %ret_dsqs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !127), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i8*** %ret_dsqs}, i64 0, metadata !128), !dbg !275
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !276
  %0 = load i32* %nseq, align 4, !dbg !276, !tbaa !194
  %conv = sext i32 %0 to i64, !dbg !276
  %mul = shl nsw i64 %conv, 3, !dbg !276
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 264, i64 %mul) #6, !dbg !276
  %1 = bitcast i8* %call to i8**, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i8** %1}, i64 0, metadata !129), !dbg !276
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !130), !dbg !277
  %2 = load i32* %nseq, align 4, !dbg !277, !tbaa !194
  %cmp112 = icmp sgt i32 %2, 0, !dbg !277
  br i1 %cmp112, label %for.body.lr.ph, label %for.end76, !dbg !277

for.body.lr.ph:                                   ; preds = %entry
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !279
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !281
  br label %for.body, !dbg !277

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv114 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next115, %for.end ]
  %3 = load i32* %alen, align 4, !dbg !279, !tbaa !194
  %add = add nsw i32 %3, 2, !dbg !279
  %conv3 = sext i32 %add to i64, !dbg !279
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 266, i64 %conv3) #6, !dbg !279
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv114, !dbg !279
  store i8* %call5, i8** %arrayidx, align 8, !dbg !279, !tbaa !165
  %4 = load i32* @Alphabet_iupac, align 4, !dbg !284, !tbaa !194
  %conv6 = trunc i32 %4 to i8, !dbg !284
  store i8 %conv6, i8* %call5, align 1, !dbg !284, !tbaa !166
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !285
  tail call void @llvm.dbg.value(metadata !263, i64 0, metadata !131), !dbg !285
  %5 = load i32* %alen, align 4, !dbg !285, !tbaa !194
  %cmp12109 = icmp sgt i32 %5, 0, !dbg !285
  br i1 %cmp12109, label %for.body14, label %for.end, !dbg !285

for.body14:                                       ; preds = %for.inc, %for.body
  %6 = phi i32 [ %5, %for.body ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %dpos.0110 = phi i32 [ 1, %for.body ], [ %dpos.1, %for.inc ]
  %7 = load i8*** %aseq, align 8, !dbg !281, !tbaa !165
  %arrayidx17 = getelementptr inbounds i8** %7, i64 %indvars.iv114, !dbg !281
  %8 = load i8** %arrayidx17, align 8, !dbg !281, !tbaa !165
  %arrayidx18 = getelementptr inbounds i8* %8, i64 %indvars.iv, !dbg !281
  %9 = load i8* %arrayidx18, align 1, !dbg !281, !tbaa !166
  switch i8 %9, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !281

if.then:                                          ; preds = %for.body14
  %call62 = tail call i32 @SymbolIndex(i8 signext %9) #7, !dbg !286
  %conv63 = trunc i32 %call62 to i8, !dbg !286
  %inc = add nsw i32 %dpos.0110, 1, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !131), !dbg !286
  %idxprom64 = sext i32 %dpos.0110 to i64, !dbg !286
  %10 = load i8** %arrayidx, align 8, !dbg !286, !tbaa !165
  %arrayidx67 = getelementptr inbounds i8* %10, i64 %idxprom64, !dbg !286
  store i8 %conv63, i8* %arrayidx67, align 1, !dbg !286, !tbaa !166
  %.pre = load i32* %alen, align 4, !dbg !285, !tbaa !194
  br label %for.inc, !dbg !286

for.inc:                                          ; preds = %for.body14, %for.body14, %for.body14, %for.body14, %for.body14, %if.then
  %11 = phi i32 [ %6, %for.body14 ], [ %.pre, %if.then ], [ %6, %for.body14 ], [ %6, %for.body14 ], [ %6, %for.body14 ], [ %6, %for.body14 ], !dbg !285
  %dpos.1 = phi i32 [ %dpos.0110, %for.body14 ], [ %inc, %if.then ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !285
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !285
  %cmp12 = icmp slt i32 %12, %11, !dbg !285
  br i1 %cmp12, label %for.body14, label %for.end, !dbg !285

for.end:                                          ; preds = %for.inc, %for.body
  %dpos.0.lcssa = phi i32 [ 1, %for.body ], [ %dpos.1, %for.inc ]
  %13 = load i32* @Alphabet_iupac, align 4, !dbg !287, !tbaa !194
  %conv69 = trunc i32 %13 to i8, !dbg !287
  %idxprom70 = sext i32 %dpos.0.lcssa to i64, !dbg !287
  %14 = load i8** %arrayidx, align 8, !dbg !287, !tbaa !165
  %arrayidx73 = getelementptr inbounds i8* %14, i64 %idxprom70, !dbg !287
  store i8 %conv69, i8* %arrayidx73, align 1, !dbg !287, !tbaa !166
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !277
  %15 = load i32* %nseq, align 4, !dbg !277, !tbaa !194
  %16 = trunc i64 %indvars.iv.next115 to i32, !dbg !277
  %cmp = icmp slt i32 %16, %15, !dbg !277
  br i1 %cmp, label %for.body, label %for.end76, !dbg !277

for.end76:                                        ; preds = %for.end, %entry
  store i8** %1, i8*** %ret_dsqs, align 8, !dbg !288, !tbaa !165
  ret void, !dbg !289
}

; Function Attrs: nounwind optsize uwtable
define void @P7CountSymbol(float* nocapture %counters, i8 signext %symidx, float %wt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %counters}, i64 0, metadata !137), !dbg !290
  tail call void @llvm.dbg.value(metadata !{i8 %symidx}, i64 0, metadata !138), !dbg !290
  tail call void @llvm.dbg.value(metadata !{float %wt}, i64 0, metadata !139), !dbg !290
  %conv = sext i8 %symidx to i32, !dbg !291
  %0 = load i32* @Alphabet_size, align 4, !dbg !291, !tbaa !194
  %cmp = icmp slt i32 %conv, %0, !dbg !291
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !291

for.cond.preheader:                               ; preds = %entry
  %cmp327 = icmp sgt i32 %0, 0, !dbg !292
  br i1 %cmp327, label %for.body.lr.ph, label %if.end18, !dbg !292

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom7 = sext i8 %symidx to i64, !dbg !294
  %arrayidx13 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %idxprom7, !dbg !296
  br label %for.body, !dbg !292

if.then:                                          ; preds = %entry
  %idxprom = sext i8 %symidx to i64, !dbg !297
  %arrayidx = getelementptr inbounds float* %counters, i64 %idxprom, !dbg !297
  %1 = load float* %arrayidx, align 4, !dbg !297, !tbaa !298
  %add = fadd float %1, %wt, !dbg !297
  store float %add, float* %arrayidx, align 4, !dbg !297, !tbaa !298
  br label %if.end18, !dbg !297

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx9 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %idxprom7, i64 %indvars.iv, !dbg !294
  %2 = load i8* %arrayidx9, align 1, !dbg !294, !tbaa !166
  %tobool = icmp eq i8 %2, 0, !dbg !294
  br i1 %tobool, label %for.inc, label %if.then10, !dbg !294

if.then10:                                        ; preds = %for.body
  %3 = load i32* %arrayidx13, align 4, !dbg !296, !tbaa !194
  %conv14 = sitofp i32 %3 to float, !dbg !296
  %div = fdiv float %wt, %conv14, !dbg !296
  %arrayidx16 = getelementptr inbounds float* %counters, i64 %indvars.iv, !dbg !296
  %4 = load float* %arrayidx16, align 4, !dbg !296, !tbaa !298
  %add17 = fadd float %div, %4, !dbg !296
  store float %add17, float* %arrayidx16, align 4, !dbg !296, !tbaa !298
  br label %for.inc, !dbg !296

for.inc:                                          ; preds = %for.body, %if.then10
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !292
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !292
  %cmp3 = icmp slt i32 %5, %0, !dbg !292
  br i1 %cmp3, label %for.body, label %if.end18, !dbg !292

if.end18:                                         ; preds = %for.cond.preheader, %for.inc, %if.then
  ret void, !dbg !299
}

; Function Attrs: nounwind optsize uwtable
define void @DefaultGeneticCode(i32* nocapture %aacode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %aacode}, i64 0, metadata !145), !dbg !300
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !146), !dbg !301
  br label %for.body, !dbg !301

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [0 x i8*]* @stdcode1, i64 0, i64 %indvars.iv, !dbg !303
  %0 = load i8** %arrayidx, align 8, !dbg !303, !tbaa !165
  %1 = load i8* %0, align 1, !dbg !303, !tbaa !166
  %cmp1 = icmp eq i8 %1, 42, !dbg !303
  br i1 %cmp1, label %if.then, label %if.else, !dbg !303

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds i32* %aacode, i64 %indvars.iv, !dbg !303
  store i32 -1, i32* %arrayidx4, align 4, !dbg !303, !tbaa !194
  br label %for.inc, !dbg !303

if.else:                                          ; preds = %for.body
  %conv = sext i8 %1 to i32, !dbg !303
  %call = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv) #8, !dbg !305
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !305
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64), !dbg !305
  %conv8 = trunc i64 %sub.ptr.sub to i32, !dbg !305
  %arrayidx10 = getelementptr inbounds i32* %aacode, i64 %indvars.iv, !dbg !305
  store i32 %conv8, i32* %arrayidx10, align 4, !dbg !305, !tbaa !194
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !301
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !301
  %exitcond = icmp eq i32 %lftr.wideiv, 64, !dbg !301
  br i1 %exitcond, label %for.end, label %for.body, !dbg !301

for.end:                                          ; preds = %for.inc
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize uwtable
define void @DefaultCodonBias(float* %codebias) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %codebias}, i64 0, metadata !151), !dbg !307
  store float 5.000000e-01, float* %codebias, align 4, !dbg !308, !tbaa !298
  %arrayidx1 = getelementptr inbounds float* %codebias, i64 1, !dbg !309
  store float 5.000000e-01, float* %arrayidx1, align 4, !dbg !309, !tbaa !298
  %arrayidx2 = getelementptr inbounds float* %codebias, i64 2, !dbg !310
  store float 5.000000e-01, float* %arrayidx2, align 4, !dbg !310, !tbaa !298
  %arrayidx3 = getelementptr inbounds float* %codebias, i64 3, !dbg !311
  store float 5.000000e-01, float* %arrayidx3, align 4, !dbg !311, !tbaa !298
  %arrayidx4 = getelementptr inbounds float* %codebias, i64 4, !dbg !312
  store float 2.500000e-01, float* %arrayidx4, align 4, !dbg !312, !tbaa !298
  %arrayidx5 = getelementptr inbounds float* %codebias, i64 5, !dbg !313
  store float 2.500000e-01, float* %arrayidx5, align 4, !dbg !313, !tbaa !298
  %arrayidx6 = getelementptr inbounds float* %codebias, i64 6, !dbg !314
  store float 2.500000e-01, float* %arrayidx6, align 4, !dbg !314, !tbaa !298
  %arrayidx7 = getelementptr inbounds float* %codebias, i64 7, !dbg !315
  store float 2.500000e-01, float* %arrayidx7, align 4, !dbg !315, !tbaa !298
  %arrayidx8 = getelementptr inbounds float* %codebias, i64 8, !dbg !316
  store float 0x3FC5555560000000, float* %arrayidx8, align 4, !dbg !316, !tbaa !298
  %arrayidx9 = getelementptr inbounds float* %codebias, i64 9, !dbg !317
  store float 0x3FC5555560000000, float* %arrayidx9, align 4, !dbg !317, !tbaa !298
  %arrayidx10 = getelementptr inbounds float* %codebias, i64 10, !dbg !318
  store float 0x3FC5555560000000, float* %arrayidx10, align 4, !dbg !318, !tbaa !298
  %arrayidx11 = getelementptr inbounds float* %codebias, i64 11, !dbg !319
  store float 0x3FC5555560000000, float* %arrayidx11, align 4, !dbg !319, !tbaa !298
  %arrayidx12 = getelementptr inbounds float* %codebias, i64 12, !dbg !320
  store float 0x3FD5555560000000, float* %arrayidx12, align 4, !dbg !320, !tbaa !298
  %arrayidx13 = getelementptr inbounds float* %codebias, i64 13, !dbg !321
  store float 0x3FD5555560000000, float* %arrayidx13, align 4, !dbg !321, !tbaa !298
  %arrayidx14 = getelementptr inbounds float* %codebias, i64 14, !dbg !322
  store float 1.000000e+00, float* %arrayidx14, align 4, !dbg !322, !tbaa !298
  %arrayidx15 = getelementptr inbounds float* %codebias, i64 15, !dbg !323
  store float 0x3FD5555560000000, float* %arrayidx15, align 4, !dbg !323, !tbaa !298
  %arrayidx16 = getelementptr inbounds float* %codebias, i64 16, !dbg !324
  store float 5.000000e-01, float* %arrayidx16, align 4, !dbg !324, !tbaa !298
  %arrayidx17 = getelementptr inbounds float* %codebias, i64 17, !dbg !325
  store float 5.000000e-01, float* %arrayidx17, align 4, !dbg !325, !tbaa !298
  %arrayidx18 = getelementptr inbounds float* %codebias, i64 18, !dbg !326
  store float 5.000000e-01, float* %arrayidx18, align 4, !dbg !326, !tbaa !298
  %arrayidx19 = getelementptr inbounds float* %codebias, i64 19, !dbg !327
  store float 5.000000e-01, float* %arrayidx19, align 4, !dbg !327, !tbaa !298
  %arrayidx20 = getelementptr inbounds float* %codebias, i64 20, !dbg !328
  store float 2.500000e-01, float* %arrayidx20, align 4, !dbg !328, !tbaa !298
  %arrayidx21 = getelementptr inbounds float* %codebias, i64 21, !dbg !329
  store float 2.500000e-01, float* %arrayidx21, align 4, !dbg !329, !tbaa !298
  %arrayidx22 = getelementptr inbounds float* %codebias, i64 22, !dbg !330
  store float 2.500000e-01, float* %arrayidx22, align 4, !dbg !330, !tbaa !298
  %arrayidx23 = getelementptr inbounds float* %codebias, i64 23, !dbg !331
  store float 2.500000e-01, float* %arrayidx23, align 4, !dbg !331, !tbaa !298
  %arrayidx24 = getelementptr inbounds float* %codebias, i64 24, !dbg !332
  store float 0x3FC5555560000000, float* %arrayidx24, align 4, !dbg !332, !tbaa !298
  %arrayidx25 = getelementptr inbounds float* %codebias, i64 25, !dbg !333
  store float 0x3FC5555560000000, float* %arrayidx25, align 4, !dbg !333, !tbaa !298
  %arrayidx26 = getelementptr inbounds float* %codebias, i64 26, !dbg !334
  store float 0x3FC5555560000000, float* %arrayidx26, align 4, !dbg !334, !tbaa !298
  %arrayidx27 = getelementptr inbounds float* %codebias, i64 27, !dbg !335
  store float 0x3FC5555560000000, float* %arrayidx27, align 4, !dbg !335, !tbaa !298
  %arrayidx28 = getelementptr inbounds float* %codebias, i64 28, !dbg !336
  store float 0x3FC5555560000000, float* %arrayidx28, align 4, !dbg !336, !tbaa !298
  %arrayidx29 = getelementptr inbounds float* %codebias, i64 29, !dbg !337
  store float 0x3FC5555560000000, float* %arrayidx29, align 4, !dbg !337, !tbaa !298
  %arrayidx30 = getelementptr inbounds float* %codebias, i64 30, !dbg !338
  store float 0x3FC5555560000000, float* %arrayidx30, align 4, !dbg !338, !tbaa !298
  %arrayidx31 = getelementptr inbounds float* %codebias, i64 31, !dbg !339
  store float 0x3FC5555560000000, float* %arrayidx31, align 4, !dbg !339, !tbaa !298
  %arrayidx32 = getelementptr inbounds float* %codebias, i64 32, !dbg !340
  store float 5.000000e-01, float* %arrayidx32, align 4, !dbg !340, !tbaa !298
  %arrayidx33 = getelementptr inbounds float* %codebias, i64 33, !dbg !341
  store float 5.000000e-01, float* %arrayidx33, align 4, !dbg !341, !tbaa !298
  %arrayidx34 = getelementptr inbounds float* %codebias, i64 34, !dbg !342
  store float 5.000000e-01, float* %arrayidx34, align 4, !dbg !342, !tbaa !298
  %arrayidx35 = getelementptr inbounds float* %codebias, i64 35, !dbg !343
  store float 5.000000e-01, float* %arrayidx35, align 4, !dbg !343, !tbaa !298
  %arrayidx36 = getelementptr inbounds float* %codebias, i64 36, !dbg !344
  store float 2.500000e-01, float* %arrayidx36, align 4, !dbg !344, !tbaa !298
  %arrayidx37 = getelementptr inbounds float* %codebias, i64 37, !dbg !345
  store float 2.500000e-01, float* %arrayidx37, align 4, !dbg !345, !tbaa !298
  %arrayidx38 = getelementptr inbounds float* %codebias, i64 38, !dbg !346
  store float 2.500000e-01, float* %arrayidx38, align 4, !dbg !346, !tbaa !298
  %arrayidx39 = getelementptr inbounds float* %codebias, i64 39, !dbg !347
  store float 2.500000e-01, float* %arrayidx39, align 4, !dbg !347, !tbaa !298
  %arrayidx40 = getelementptr inbounds float* %codebias, i64 40, !dbg !348
  store float 2.500000e-01, float* %arrayidx40, align 4, !dbg !348, !tbaa !298
  %arrayidx41 = getelementptr inbounds float* %codebias, i64 41, !dbg !349
  store float 2.500000e-01, float* %arrayidx41, align 4, !dbg !349, !tbaa !298
  %arrayidx42 = getelementptr inbounds float* %codebias, i64 42, !dbg !350
  store float 2.500000e-01, float* %arrayidx42, align 4, !dbg !350, !tbaa !298
  %arrayidx43 = getelementptr inbounds float* %codebias, i64 43, !dbg !351
  store float 2.500000e-01, float* %arrayidx43, align 4, !dbg !351, !tbaa !298
  %arrayidx44 = getelementptr inbounds float* %codebias, i64 44, !dbg !352
  store float 2.500000e-01, float* %arrayidx44, align 4, !dbg !352, !tbaa !298
  %arrayidx45 = getelementptr inbounds float* %codebias, i64 45, !dbg !353
  store float 2.500000e-01, float* %arrayidx45, align 4, !dbg !353, !tbaa !298
  %arrayidx46 = getelementptr inbounds float* %codebias, i64 46, !dbg !354
  store float 2.500000e-01, float* %arrayidx46, align 4, !dbg !354, !tbaa !298
  %arrayidx47 = getelementptr inbounds float* %codebias, i64 47, !dbg !355
  store float 2.500000e-01, float* %arrayidx47, align 4, !dbg !355, !tbaa !298
  %arrayidx48 = getelementptr inbounds float* %codebias, i64 48, !dbg !356
  store float 0.000000e+00, float* %arrayidx48, align 4, !dbg !356, !tbaa !298
  %arrayidx49 = getelementptr inbounds float* %codebias, i64 49, !dbg !357
  store float 5.000000e-01, float* %arrayidx49, align 4, !dbg !357, !tbaa !298
  %arrayidx50 = getelementptr inbounds float* %codebias, i64 50, !dbg !358
  store float 0.000000e+00, float* %arrayidx50, align 4, !dbg !358, !tbaa !298
  %arrayidx51 = getelementptr inbounds float* %codebias, i64 51, !dbg !359
  store float 5.000000e-01, float* %arrayidx51, align 4, !dbg !359, !tbaa !298
  %arrayidx52 = getelementptr inbounds float* %codebias, i64 52, !dbg !360
  store float 0x3FC5555560000000, float* %arrayidx52, align 4, !dbg !360, !tbaa !298
  %arrayidx53 = getelementptr inbounds float* %codebias, i64 53, !dbg !361
  store float 0x3FC5555560000000, float* %arrayidx53, align 4, !dbg !361, !tbaa !298
  %arrayidx54 = getelementptr inbounds float* %codebias, i64 54, !dbg !362
  store float 0x3FC5555560000000, float* %arrayidx54, align 4, !dbg !362, !tbaa !298
  %arrayidx55 = getelementptr inbounds float* %codebias, i64 55, !dbg !363
  store float 0x3FC5555560000000, float* %arrayidx55, align 4, !dbg !363, !tbaa !298
  %arrayidx56 = getelementptr inbounds float* %codebias, i64 56, !dbg !364
  store float 0.000000e+00, float* %arrayidx56, align 4, !dbg !364, !tbaa !298
  %arrayidx57 = getelementptr inbounds float* %codebias, i64 57, !dbg !365
  store float 5.000000e-01, float* %arrayidx57, align 4, !dbg !365, !tbaa !298
  %arrayidx58 = getelementptr inbounds float* %codebias, i64 58, !dbg !366
  store float 1.000000e+00, float* %arrayidx58, align 4, !dbg !366, !tbaa !298
  %arrayidx59 = getelementptr inbounds float* %codebias, i64 59, !dbg !367
  store float 5.000000e-01, float* %arrayidx59, align 4, !dbg !367, !tbaa !298
  %arrayidx60 = getelementptr inbounds float* %codebias, i64 60, !dbg !368
  store float 0x3FC5555560000000, float* %arrayidx60, align 4, !dbg !368, !tbaa !298
  %arrayidx61 = getelementptr inbounds float* %codebias, i64 61, !dbg !369
  store float 5.000000e-01, float* %arrayidx61, align 4, !dbg !369, !tbaa !298
  %arrayidx62 = getelementptr inbounds float* %codebias, i64 62, !dbg !370
  store float 0x3FC5555560000000, float* %arrayidx62, align 4, !dbg !370, !tbaa !298
  %arrayidx63 = getelementptr inbounds float* %codebias, i64 63, !dbg !371
  store float 5.000000e-01, float* %arrayidx63, align 4, !dbg !371, !tbaa !298
  ret void, !dbg !372
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !20, metadata !26, metadata !34, metadata !42, metadata !48, metadata !133, metadata !141, metadata !147, metadata !152}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DetermineAlphabet", metadata !"DetermineAlphabet", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32)* @DetermineAlphabet, null, null, metadata !12, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [DetermineAlphabet]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !11}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!13 = metadata !{i32 786689, metadata !4, metadata !"rseqs", metadata !5, i32 16777260, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rseqs] [line 44]
!14 = metadata !{i32 786689, metadata !4, metadata !"nseq", metadata !5, i32 33554476, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 44]
!15 = metadata !{i32 786688, metadata !4, metadata !"idx", metadata !5, i32 46, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 46]
!16 = metadata !{i32 786688, metadata !4, metadata !"other", metadata !5, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [other] [line 47]
!17 = metadata !{i32 786688, metadata !4, metadata !"nucleic", metadata !5, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nucleic] [line 47]
!18 = metadata !{i32 786688, metadata !4, metadata !"amino", metadata !5, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [amino] [line 47]
!19 = metadata !{i32 786688, metadata !4, metadata !"type", metadata !5, i32 48, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 48]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SetAlphabet", metadata !"SetAlphabet", metadata !"", i32 88, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @SetAlphabet, null, null, metadata !23, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [SetAlphabet]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null, metadata !11}
!23 = metadata !{metadata !24, metadata !25}
!24 = metadata !{i32 786689, metadata !20, metadata !"type", metadata !5, i32 16777304, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 88]
!25 = metadata !{i32 786688, metadata !20, metadata !"x", metadata !5, i32 90, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 90]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SymbolIndex", metadata !"SymbolIndex", metadata !"", i32 184, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8)* @SymbolIndex, null, null, metadata !29, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [SymbolIndex]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !11, metadata !10}
!29 = metadata !{metadata !30, metadata !31, metadata !32}
!30 = metadata !{i32 786689, metadata !26, metadata !"sym", metadata !5, i32 16777400, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 184]
!31 = metadata !{i32 786688, metadata !26, metadata !"s", metadata !5, i32 186, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 186]
!32 = metadata !{i32 786688, metadata !33, metadata !"__res", metadata !5, i32 187, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 187]
!33 = metadata !{i32 786443, metadata !1, metadata !26, i32 187, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DigitizeSequence", metadata !"DigitizeSequence", metadata !"", i32 210, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @DigitizeSequence, null, null, metadata !37, i32 211} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 211] [DigitizeSequence]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !9, metadata !9, metadata !11}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41}
!38 = metadata !{i32 786689, metadata !34, metadata !"seq", metadata !5, i32 16777426, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 210]
!39 = metadata !{i32 786689, metadata !34, metadata !"L", metadata !5, i32 33554642, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 210]
!40 = metadata !{i32 786688, metadata !34, metadata !"dsq", metadata !5, i32 212, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 212]
!41 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !5, i32 213, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 213]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DedigitizeSequence", metadata !"DedigitizeSequence", metadata !"", i32 230, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @DedigitizeSequence, null, null, metadata !43, i32 231} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 231] [DedigitizeSequence]
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47}
!44 = metadata !{i32 786689, metadata !42, metadata !"dsq", metadata !5, i32 16777446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 230]
!45 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !5, i32 33554662, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 230]
!46 = metadata !{i32 786688, metadata !42, metadata !"seq", metadata !5, i32 232, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 232]
!47 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !5, i32 233, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 233]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DigitizeAlignment", metadata !"DigitizeAlignment", metadata !"", i32 257, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.msa_struct*, i8***)* @DigitizeAlignment, null, null, metadata !126, i32 258} ; [ DW_TAG_subprogram ] [line 257] [def] [scope 258] [DigitizeAlignment]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !51, metadata !91}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!52 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!53 = metadata !{i32 786451, metadata !54, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !80, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !92, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125}
!56 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!58 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!60 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!61 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!62 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !11} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!63 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !11} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!64 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !11} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!65 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!66 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!67 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !9} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!68 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !9} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!69 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !9} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!70 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !9} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!71 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !9} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!72 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !8} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!73 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!74 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!75 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !8} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!76 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !77} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !60, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!80 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !81} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !11, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !8} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!83 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !11} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!84 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !11} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!85 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!86 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !8} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!87 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !11} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!88 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !11} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!89 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !8} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!90 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !91} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !93} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!94 = metadata !{i32 786454, metadata !54, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786451, metadata !96, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!96 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!97 = metadata !{metadata !98, metadata !106, metadata !107, metadata !108}
!98 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!101 = metadata !{i32 786451, metadata !96, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105}
!103 = metadata !{i32 786445, metadata !96, metadata !101, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !96, metadata !101, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!105 = metadata !{i32 786445, metadata !96, metadata !101, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !100} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!106 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!107 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !11} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!108 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !11} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!109 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !11} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!110 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !8} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!111 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !8} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!112 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !93} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!113 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !11} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!114 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !8} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!115 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !91} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!116 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !93} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!117 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !11} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!118 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !93} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!119 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !11} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!120 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !11} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!121 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !122} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!123 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !122} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!124 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !122} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!125 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !11} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!127 = metadata !{i32 786689, metadata !48, metadata !"msa", metadata !5, i32 16777473, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 257]
!128 = metadata !{i32 786689, metadata !48, metadata !"ret_dsqs", metadata !5, i32 33554689, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dsqs] [line 257]
!129 = metadata !{i32 786688, metadata !48, metadata !"dsq", metadata !5, i32 259, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 259]
!130 = metadata !{i32 786688, metadata !48, metadata !"idx", metadata !5, i32 260, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 260]
!131 = metadata !{i32 786688, metadata !48, metadata !"dpos", metadata !5, i32 261, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dpos] [line 261]
!132 = metadata !{i32 786688, metadata !48, metadata !"apos", metadata !5, i32 262, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 262]
!133 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P7CountSymbol", metadata !"P7CountSymbol", metadata !"", i32 293, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i8, float)* @P7CountSymbol, null, null, metadata !136, i32 294} ; [ DW_TAG_subprogram ] [line 293] [def] [scope 294] [P7CountSymbol]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{null, metadata !59, metadata !10, metadata !60}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140}
!137 = metadata !{i32 786689, metadata !133, metadata !"counters", metadata !5, i32 16777509, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [counters] [line 293]
!138 = metadata !{i32 786689, metadata !133, metadata !"symidx", metadata !5, i32 33554725, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symidx] [line 293]
!139 = metadata !{i32 786689, metadata !133, metadata !"wt", metadata !5, i32 50331941, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wt] [line 293]
!140 = metadata !{i32 786688, metadata !133, metadata !"x", metadata !5, i32 295, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 295]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DefaultGeneticCode", metadata !"DefaultGeneticCode", metadata !"", i32 320, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*)* @DefaultGeneticCode, null, null, metadata !144, i32 321} ; [ DW_TAG_subprogram ] [line 320] [def] [scope 321] [DefaultGeneticCode]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !122}
!144 = metadata !{metadata !145, metadata !146}
!145 = metadata !{i32 786689, metadata !141, metadata !"aacode", metadata !5, i32 16777536, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aacode] [line 320]
!146 = metadata !{i32 786688, metadata !141, metadata !"x", metadata !5, i32 322, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 322]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DefaultCodonBias", metadata !"DefaultCodonBias", metadata !"", i32 343, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*)* @DefaultCodonBias, null, null, metadata !150, i32 344} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 344] [DefaultCodonBias]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{null, metadata !59}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786689, metadata !147, metadata !"codebias", metadata !5, i32 16777559, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [codebias] [line 343]
!152 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"set_degenerate", metadata !"set_degenerate", metadata !"", i32 419, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8, i8*)* @set_degenerate, null, null, metadata !155, i32 420} ; [ DW_TAG_subprogram ] [line 419] [local] [def] [scope 420] [set_degenerate]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{null, metadata !10, metadata !9}
!155 = metadata !{metadata !156, metadata !157}
!156 = metadata !{i32 786689, metadata !152, metadata !"iupac", metadata !5, i32 16777635, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iupac] [line 419]
!157 = metadata !{i32 786689, metadata !152, metadata !"syms", metadata !5, i32 33554851, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [syms] [line 419]
!158 = metadata !{i32 44, i32 0, metadata !4, null}
!159 = metadata !{i32 52, i32 0, metadata !4, null}
!160 = metadata !{i32 53, i32 0, metadata !4, null}
!161 = metadata !{i32 54, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!163 = metadata !{i32 55, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 54, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!165 = metadata !{metadata !"any pointer", metadata !166}
!166 = metadata !{metadata !"omnipotent char", metadata !167}
!167 = metadata !{metadata !"Simple C/C++ TBAA"}
!168 = metadata !{i32 56, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !164, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!170 = metadata !{i32 57, i32 0, metadata !169, null}
!171 = metadata !{i32 58, i32 0, metadata !169, null} ; [ DW_TAG_imported_module ]
!172 = metadata !{i32 59, i32 0, metadata !169, null}
!173 = metadata !{i32 60, i32 0, metadata !169, null}
!174 = metadata !{i32 61, i32 0, metadata !169, null}
!175 = metadata !{i32 64, i32 0, metadata !4, null}
!176 = metadata !{i32 65, i32 0, metadata !4, null}
!177 = metadata !{i32 66, i32 0, metadata !4, null}
!178 = metadata !{i32 67, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !4, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!180 = metadata !{i32 2}
!181 = metadata !{i32 68, i32 0, metadata !179, null}
!182 = metadata !{i32 69, i32 0, metadata !179, null}
!183 = metadata !{i32 70, i32 0, metadata !4, null}
!184 = metadata !{i32 71, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !4, i32 70, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!186 = metadata !{i32 3}
!187 = metadata !{i32 72, i32 0, metadata !185, null}
!188 = metadata !{i32 73, i32 0, metadata !185, null}
!189 = metadata !{i32 74, i32 0, metadata !4, null}
!190 = metadata !{i32 78, i32 0, metadata !4, null}
!191 = metadata !{i32 79, i32 0, metadata !4, null}
!192 = metadata !{i32 88, i32 0, metadata !20, null}
!193 = metadata !{i32 109, i32 0, metadata !20, null}
!194 = metadata !{metadata !"int", metadata !166}
!195 = metadata !{i32 111, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !20, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!197 = metadata !{i32 112, i32 0, metadata !196, null}
!198 = metadata !{i32 121, i32 0, metadata !20, null}
!199 = metadata !{i32 123, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !20, i32 121, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!201 = metadata !{i32 125, i32 0, metadata !200, null}
!202 = metadata !{i32 126, i32 0, metadata !200, null}
!203 = metadata !{i32 127, i32 0, metadata !200, null}
!204 = metadata !{i32 128, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !200, i32 128, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!206 = metadata !{i32 129, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !205, i32 128, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!208 = metadata !{i32 132, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !210, i32 131, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!210 = metadata !{i32 786443, metadata !1, metadata !200, i32 131, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!211 = metadata !{i32 133, i32 0, metadata !209, null}
!212 = metadata !{i32 131, i32 0, metadata !210, null}
!213 = metadata !{i32 135, i32 0, metadata !200, null}
!214 = metadata !{i32 136, i32 0, metadata !200, null}
!215 = metadata !{i32 137, i32 0, metadata !200, null}
!216 = metadata !{i32 138, i32 0, metadata !200, null}
!217 = metadata !{i32 139, i32 0, metadata !200, null}
!218 = metadata !{i32 141, i32 0, metadata !200, null}
!219 = metadata !{i32 143, i32 0, metadata !200, null}
!220 = metadata !{i32 144, i32 0, metadata !200, null}
!221 = metadata !{i32 145, i32 0, metadata !200, null}
!222 = metadata !{i32 146, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !200, i32 146, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!224 = metadata !{i32 147, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !223, i32 146, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!226 = metadata !{i32 150, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !228, i32 149, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!228 = metadata !{i32 786443, metadata !1, metadata !200, i32 149, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!229 = metadata !{i32 151, i32 0, metadata !227, null}
!230 = metadata !{i32 149, i32 0, metadata !228, null}
!231 = metadata !{i32 153, i32 0, metadata !200, null}
!232 = metadata !{i32 154, i32 0, metadata !200, null}
!233 = metadata !{i32 155, i32 0, metadata !200, null}
!234 = metadata !{i32 156, i32 0, metadata !200, null}
!235 = metadata !{i32 157, i32 0, metadata !200, null}
!236 = metadata !{i32 158, i32 0, metadata !200, null}
!237 = metadata !{i32 159, i32 0, metadata !200, null}
!238 = metadata !{i32 160, i32 0, metadata !200, null}
!239 = metadata !{i32 161, i32 0, metadata !200, null}
!240 = metadata !{i32 162, i32 0, metadata !200, null}
!241 = metadata !{i32 163, i32 0, metadata !200, null}
!242 = metadata !{i32 164, i32 0, metadata !200, null}
!243 = metadata !{i32 165, i32 0, metadata !200, null}
!244 = metadata !{i32 166, i32 0, metadata !200, null}
!245 = metadata !{i32 167, i32 0, metadata !200, null}
!246 = metadata !{i32 168, i32 0, metadata !200, null}
!247 = metadata !{i32 167, i32 0, metadata !20, null}
!248 = metadata !{i32 419, i32 0, metadata !152, null}
!249 = metadata !{i32 421, i32 0, metadata !152, null}
!250 = metadata !{i32 422, i32 0, metadata !152, null}
!251 = metadata !{i32 424, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !152, i32 422, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!253 = metadata !{i32 423, i32 0, metadata !252, null}
!254 = metadata !{i32 425, i32 0, metadata !252, null}
!255 = metadata !{i32 427, i32 0, metadata !152, null}
!256 = metadata !{i32 184, i32 0, metadata !26, null}
!257 = metadata !{i32 187, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !33, i32 187, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!259 = metadata !{i32 187, i32 0, metadata !33, null}
!260 = metadata !{i32 210, i32 0, metadata !34, null}
!261 = metadata !{i32 215, i32 0, metadata !34, null}
!262 = metadata !{i32 216, i32 0, metadata !34, null}
!263 = metadata !{i32 1}
!264 = metadata !{i32 217, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !34, i32 217, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!266 = metadata !{i32 218, i32 0, metadata !265, null}
!267 = metadata !{i32 219, i32 0, metadata !34, null}
!268 = metadata !{i32 230, i32 0, metadata !42, null}
!269 = metadata !{i32 235, i32 0, metadata !42, null}
!270 = metadata !{i32 236, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !42, i32 236, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!272 = metadata !{i32 237, i32 0, metadata !271, null}
!273 = metadata !{i32 238, i32 0, metadata !42, null}
!274 = metadata !{i32 239, i32 0, metadata !42, null}
!275 = metadata !{i32 257, i32 0, metadata !48, null}
!276 = metadata !{i32 264, i32 0, metadata !48, null}
!277 = metadata !{i32 265, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !48, i32 265, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!279 = metadata !{i32 266, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !278, i32 265, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!281 = metadata !{i32 271, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 270, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!283 = metadata !{i32 786443, metadata !1, metadata !280, i32 270, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!284 = metadata !{i32 268, i32 0, metadata !280, null}
!285 = metadata !{i32 270, i32 0, metadata !283, null}
!286 = metadata !{i32 272, i32 0, metadata !282, null}
!287 = metadata !{i32 274, i32 0, metadata !280, null}
!288 = metadata !{i32 276, i32 0, metadata !48, null}
!289 = metadata !{i32 277, i32 0, metadata !48, null}
!290 = metadata !{i32 293, i32 0, metadata !133, null}
!291 = metadata !{i32 297, i32 0, metadata !133, null}
!292 = metadata !{i32 300, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !133, i32 300, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!294 = metadata !{i32 301, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !293, i32 300, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!296 = metadata !{i32 302, i32 0, metadata !295, null}
!297 = metadata !{i32 298, i32 0, metadata !133, null}
!298 = metadata !{metadata !"float", metadata !166}
!299 = metadata !{i32 304, i32 0, metadata !133, null}
!300 = metadata !{i32 320, i32 0, metadata !141, null}
!301 = metadata !{i32 324, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !141, i32 324, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!303 = metadata !{i32 325, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 324, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/alphabet.c]
!305 = metadata !{i32 326, i32 0, metadata !304, null}
!306 = metadata !{i32 328, i32 0, metadata !141, null}
!307 = metadata !{i32 343, i32 0, metadata !147, null}
!308 = metadata !{i32 345, i32 0, metadata !147, null}
!309 = metadata !{i32 346, i32 0, metadata !147, null}
!310 = metadata !{i32 347, i32 0, metadata !147, null}
!311 = metadata !{i32 348, i32 0, metadata !147, null}
!312 = metadata !{i32 349, i32 0, metadata !147, null}
!313 = metadata !{i32 350, i32 0, metadata !147, null}
!314 = metadata !{i32 351, i32 0, metadata !147, null}
!315 = metadata !{i32 352, i32 0, metadata !147, null}
!316 = metadata !{i32 353, i32 0, metadata !147, null}
!317 = metadata !{i32 354, i32 0, metadata !147, null}
!318 = metadata !{i32 355, i32 0, metadata !147, null}
!319 = metadata !{i32 356, i32 0, metadata !147, null}
!320 = metadata !{i32 357, i32 0, metadata !147, null}
!321 = metadata !{i32 358, i32 0, metadata !147, null}
!322 = metadata !{i32 359, i32 0, metadata !147, null}
!323 = metadata !{i32 360, i32 0, metadata !147, null}
!324 = metadata !{i32 361, i32 0, metadata !147, null}
!325 = metadata !{i32 362, i32 0, metadata !147, null}
!326 = metadata !{i32 363, i32 0, metadata !147, null}
!327 = metadata !{i32 364, i32 0, metadata !147, null}
!328 = metadata !{i32 365, i32 0, metadata !147, null}
!329 = metadata !{i32 366, i32 0, metadata !147, null}
!330 = metadata !{i32 367, i32 0, metadata !147, null}
!331 = metadata !{i32 368, i32 0, metadata !147, null}
!332 = metadata !{i32 369, i32 0, metadata !147, null}
!333 = metadata !{i32 370, i32 0, metadata !147, null}
!334 = metadata !{i32 371, i32 0, metadata !147, null}
!335 = metadata !{i32 372, i32 0, metadata !147, null}
!336 = metadata !{i32 373, i32 0, metadata !147, null}
!337 = metadata !{i32 374, i32 0, metadata !147, null}
!338 = metadata !{i32 375, i32 0, metadata !147, null}
!339 = metadata !{i32 376, i32 0, metadata !147, null}
!340 = metadata !{i32 377, i32 0, metadata !147, null}
!341 = metadata !{i32 378, i32 0, metadata !147, null}
!342 = metadata !{i32 379, i32 0, metadata !147, null}
!343 = metadata !{i32 380, i32 0, metadata !147, null}
!344 = metadata !{i32 381, i32 0, metadata !147, null}
!345 = metadata !{i32 382, i32 0, metadata !147, null}
!346 = metadata !{i32 383, i32 0, metadata !147, null}
!347 = metadata !{i32 384, i32 0, metadata !147, null}
!348 = metadata !{i32 385, i32 0, metadata !147, null}
!349 = metadata !{i32 386, i32 0, metadata !147, null}
!350 = metadata !{i32 387, i32 0, metadata !147, null}
!351 = metadata !{i32 388, i32 0, metadata !147, null}
!352 = metadata !{i32 389, i32 0, metadata !147, null}
!353 = metadata !{i32 390, i32 0, metadata !147, null}
!354 = metadata !{i32 391, i32 0, metadata !147, null}
!355 = metadata !{i32 392, i32 0, metadata !147, null}
!356 = metadata !{i32 393, i32 0, metadata !147, null}
!357 = metadata !{i32 394, i32 0, metadata !147, null}
!358 = metadata !{i32 395, i32 0, metadata !147, null}
!359 = metadata !{i32 396, i32 0, metadata !147, null}
!360 = metadata !{i32 397, i32 0, metadata !147, null}
!361 = metadata !{i32 398, i32 0, metadata !147, null}
!362 = metadata !{i32 399, i32 0, metadata !147, null}
!363 = metadata !{i32 400, i32 0, metadata !147, null}
!364 = metadata !{i32 401, i32 0, metadata !147, null}
!365 = metadata !{i32 402, i32 0, metadata !147, null}
!366 = metadata !{i32 403, i32 0, metadata !147, null}
!367 = metadata !{i32 404, i32 0, metadata !147, null}
!368 = metadata !{i32 405, i32 0, metadata !147, null}
!369 = metadata !{i32 406, i32 0, metadata !147, null}
!370 = metadata !{i32 407, i32 0, metadata !147, null}
!371 = metadata !{i32 408, i32 0, metadata !147, null}
!372 = metadata !{i32 409, i32 0, metadata !147, null}
