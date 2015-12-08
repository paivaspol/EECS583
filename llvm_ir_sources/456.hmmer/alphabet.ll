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
  %cmp40 = icmp sgt i32 %nseq, 0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %amino.044 = phi i32 [ %amino.1, %for.inc ], [ 0, %entry ]
  %nucleic.043 = phi i32 [ %nucleic.1, %for.inc ], [ 0, %entry ]
  %other.042 = phi i32 [ %other.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %rseqs, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %call = tail call i32 @Seqtype(i8* %0) #5
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %nucleic.043, 1
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  %inc2 = add nsw i32 %nucleic.043, 1
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  %inc4 = add nsw i32 %amino.044, 1
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %inc6 = add nsw i32 %other.042, 1
  br label %for.inc

sw.default:                                       ; preds = %for.body
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([22 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %sw.default
  %other.1 = phi i32 [ %other.042, %sw.default ], [ %inc6, %sw.bb5 ], [ %other.042, %sw.bb3 ], [ %other.042, %sw.bb1 ], [ %other.042, %sw.bb ]
  %nucleic.1 = phi i32 [ %nucleic.043, %sw.default ], [ %nucleic.043, %sw.bb5 ], [ %nucleic.043, %sw.bb3 ], [ %inc2, %sw.bb1 ], [ %inc, %sw.bb ]
  %amino.1 = phi i32 [ %amino.044, %sw.default ], [ %amino.044, %sw.bb5 ], [ %inc4, %sw.bb3 ], [ %amino.044, %sw.bb1 ], [ %amino.044, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %amino.0.lcssa = phi i32 [ 0, %entry ], [ %amino.1, %for.inc ]
  %nucleic.0.lcssa = phi i32 [ 0, %entry ], [ %nucleic.1, %for.inc ]
  %other.0.lcssa = phi i32 [ 0, %entry ], [ %other.1, %for.inc ]
  %cmp8 = icmp eq i32 %nucleic.0.lcssa, %nseq
  br i1 %cmp8, label %if.end23, label %if.else

if.else:                                          ; preds = %for.end
  %cmp9 = icmp eq i32 %amino.0.lcssa, %nseq
  br i1 %cmp9, label %if.end23, label %if.else11

if.else11:                                        ; preds = %if.else
  %cmp12 = icmp sgt i32 %nucleic.0.lcssa, %amino.0.lcssa
  %cmp13 = icmp sgt i32 %nucleic.0.lcssa, %other.0.lcssa
  %or.cond = and i1 %cmp12, %cmp13
  br i1 %or.cond, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else11
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0)) #5
  br label %if.end23

if.else15:                                        ; preds = %if.else11
  %cmp16 = icmp sgt i32 %amino.0.lcssa, %nucleic.0.lcssa
  %cmp18 = icmp sgt i32 %amino.0.lcssa, %other.0.lcssa
  %or.cond39 = and i1 %cmp16, %cmp18
  br i1 %or.cond39, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else15
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end23

if.else20:                                        ; preds = %if.else15
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #5
  br label %if.end23

if.end23:                                         ; preds = %if.else, %for.end, %if.then19, %if.else20, %if.then14
  %type.0 = phi i32 [ 2, %if.then14 ], [ 3, %if.then19 ], [ 0, %if.else20 ], [ 2, %for.end ], [ 3, %if.else ]
  tail call void @SetAlphabet(i32 %type.0) #6
  ret void
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
  %0 = load i32* @Alphabet_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, %type
  br i1 %cmp1, label %sw.epilog, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0)) #5
  br label %sw.epilog

if.end3:                                          ; preds = %entry
  switch i32 %type, label %sw.default [
    i32 3, label %for.body.lr.ph
    i32 2, label %for.body23.lr.ph
  ]

for.body.lr.ph:                                   ; preds = %if.end3
  store i32 3, i32* @Alphabet_type, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 25, i32 1, i1 false)
  store i32 20, i32* @Alphabet_size, align 4, !tbaa !3
  store i32 24, i32* @Alphabet_iupac, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv68 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next69, %for.body ]
  %1 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv68, i64 0
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 20, i32 1, i1 false)
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %2 = trunc i64 %indvars.iv.next69 to i32
  %cmp4 = icmp slt i32 %2, 24
  br i1 %cmp4, label %for.body, label %for.body8

for.body8:                                        ; preds = %for.body, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.body ]
  %arrayidx12 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv, i64 %indvars.iv
  store i8 1, i8* %arrayidx12, align 1, !tbaa !1
  %arrayidx14 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %indvars.iv
  store i32 1, i32* %arrayidx14, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp6 = icmp slt i32 %3, 20
  br i1 %cmp6, label %for.body8, label %for.end17

for.end17:                                        ; preds = %for.body8
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 90, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0)) #6
  br label %sw.epilog

for.body23.lr.ph:                                 ; preds = %if.end3
  store i32 2, i32* @Alphabet_type, align 4, !tbaa !3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i64 18, i32 1, i1 false)
  store i32 4, i32* @Alphabet_size, align 4, !tbaa !3
  store i32 17, i32* @Alphabet_iupac, align 4, !tbaa !3
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.body23
  %indvars.iv72 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next73, %for.body23 ]
  %4 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv72, i64 0
  %5 = bitcast i8* %4 to i32*
  store i32 0, i32* %5, align 1
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %6 = trunc i64 %indvars.iv.next73 to i32
  %cmp21 = icmp slt i32 %6, 17
  br i1 %cmp21, label %for.body23, label %for.body33

for.body33:                                       ; preds = %for.body23, %for.body33
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body33 ], [ 0, %for.body23 ]
  %arrayidx37 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %indvars.iv70, i64 %indvars.iv70
  store i8 1, i8* %arrayidx37, align 1, !tbaa !1
  %arrayidx39 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %indvars.iv70
  store i32 1, i32* %arrayidx39, align 4, !tbaa !3
  %indvars.iv.next71 = add i64 %indvars.iv70, 1
  %7 = trunc i64 %indvars.iv.next71 to i32
  %cmp31 = icmp slt i32 %7, 4
  br i1 %cmp31, label %for.body33, label %for.end42

for.end42:                                        ; preds = %for.body33
  tail call fastcc void @set_degenerate(i8 signext 85, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 78, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 88, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 82, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 89, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 77, i8* getelementptr inbounds ([3 x i8]* @.str15, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 75, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 83, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 87, i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 72, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 66, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 86, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #6
  tail call fastcc void @set_degenerate(i8 signext 68, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0)) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([48 x i8]* @.str23, i64 0, i64 0)) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then2, %sw.default, %for.end42, %for.end17
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @set_degenerate(i8 signext %iupac, i8* nocapture %syms) #0 {
entry:
  %call = tail call i64 @strlen(i8* %syms) #7
  %conv = trunc i64 %call to i32
  %conv1 = sext i8 %iupac to i32
  %call2 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv1) #7
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %arrayidx = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %sub.ptr.sub
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !3
  %0 = load i8* %syms, align 1, !tbaa !1
  %tobool17 = icmp eq i8 %0, 0
  br i1 %tobool17, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %entry ]
  %syms.addr.018 = phi i8* [ %incdec.ptr, %while.body ], [ %syms, %entry ]
  %conv3 = sext i8 %1 to i32
  %call4 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv3) #7
  %sub.ptr.lhs.cast5 = ptrtoint i8* %call4 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast5, ptrtoint ([25 x i8]* @Alphabet to i64)
  %call8 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv1) #7
  %sub.ptr.lhs.cast9 = ptrtoint i8* %call8 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.lhs.cast9, ptrtoint ([25 x i8]* @Alphabet to i64)
  %arrayidx12 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %sub.ptr.sub10, i64 %sub.ptr.sub6
  store i8 1, i8* %arrayidx12, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %syms.addr.018, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @SymbolIndex(i8 signext %sym) #0 {
entry:
  %conv = sext i8 %sym to i32
  %call = tail call i32 @toupper(i32 %conv) #5
  %sext = shl i32 %call, 24
  %conv2 = ashr exact i32 %sext, 24
  %call3 = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv2) #7
  %cmp = icmp eq i8* %call3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %sub = add nsw i32 %0, -1
  %conv5 = sext i32 %sub to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv5, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  %conv6 = trunc i64 %cond to i32
  ret i32 %conv6
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #4

; Function Attrs: nounwind optsize uwtable
define i8* @DigitizeSequence(i8* nocapture %seq, i32 %L) #0 {
entry:
  %add = add nsw i32 %L, 2
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 215, i64 %conv) #5
  %0 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv1 = trunc i32 %0 to i8
  %add2 = add i32 %L, 1
  %idxprom = sext i32 %add2 to i64
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom
  store i8 %conv1, i8* %arrayidx, align 1, !tbaa !1
  store i8 %conv1, i8* %call, align 1, !tbaa !1
  %cmp19 = icmp slt i32 %L, 1
  br i1 %cmp19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr inbounds i8* %seq, i64 %1
  %2 = load i8* %arrayidx6, align 1, !tbaa !1
  %call7 = tail call i32 @SymbolIndex(i8 signext %2) #6
  %conv8 = trunc i32 %call7 to i8
  %arrayidx10 = getelementptr inbounds i8* %call, i64 %indvars.iv
  store i8 %conv8, i8* %arrayidx10, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret i8* %call
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define i8* @DedigitizeSequence(i8* nocapture %dsq, i32 %L) #0 {
entry:
  %add = add nsw i32 %L, 1
  %conv = sext i32 %add to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 235, i64 %conv) #5
  %cmp17 = icmp sgt i32 %L, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i8* %dsq, i64 %indvars.iv.next
  %0 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom4 = sext i8 %0 to i64
  %arrayidx5 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom4
  %1 = load i8* %arrayidx5, align 1, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8* %call, i64 %indvars.iv
  store i8 %1, i8* %arrayidx7, align 1, !tbaa !1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %L
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %idxprom8 = sext i32 %L to i64
  %arrayidx9 = getelementptr inbounds i8* %call, i64 %idxprom8
  store i8 0, i8* %arrayidx9, align 1, !tbaa !1
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define void @DigitizeAlignment(%struct.msa_struct* nocapture %msa, i8*** nocapture %ret_dsqs) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 264, i64 %mul) #5
  %1 = bitcast i8* %call to i8**
  %2 = load i32* %nseq, align 4, !tbaa !3
  %cmp112 = icmp sgt i32 %2, 0
  br i1 %cmp112, label %for.body.lr.ph, label %for.end76

for.body.lr.ph:                                   ; preds = %entry
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv114 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next115, %for.end ]
  %3 = load i32* %alen, align 4, !tbaa !3
  %add = add nsw i32 %3, 2
  %conv3 = sext i32 %add to i64
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0), i32 266, i64 %conv3) #5
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv114
  store i8* %call5, i8** %arrayidx, align 8, !tbaa !0
  %4 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv6 = trunc i32 %4 to i8
  store i8 %conv6, i8* %call5, align 1, !tbaa !1
  %5 = load i32* %alen, align 4, !tbaa !3
  %cmp12109 = icmp sgt i32 %5, 0
  br i1 %cmp12109, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.inc, %for.body
  %6 = phi i32 [ %5, %for.body ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %dpos.0110 = phi i32 [ 1, %for.body ], [ %dpos.1, %for.inc ]
  %7 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i8** %7, i64 %indvars.iv114
  %8 = load i8** %arrayidx17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i8* %8, i64 %indvars.iv
  %9 = load i8* %arrayidx18, align 1, !tbaa !1
  switch i8 %9, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then:                                          ; preds = %for.body14
  %call62 = tail call i32 @SymbolIndex(i8 signext %9) #6
  %conv63 = trunc i32 %call62 to i8
  %inc = add nsw i32 %dpos.0110, 1
  %idxprom64 = sext i32 %dpos.0110 to i64
  %10 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i8* %10, i64 %idxprom64
  store i8 %conv63, i8* %arrayidx67, align 1, !tbaa !1
  %.pre = load i32* %alen, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %for.body14, %for.body14, %for.body14, %for.body14, %if.then
  %11 = phi i32 [ %6, %for.body14 ], [ %.pre, %if.then ], [ %6, %for.body14 ], [ %6, %for.body14 ], [ %6, %for.body14 ], [ %6, %for.body14 ]
  %dpos.1 = phi i32 [ %dpos.0110, %for.body14 ], [ %inc, %if.then ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ], [ %dpos.0110, %for.body14 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %12, %11
  br i1 %cmp12, label %for.body14, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %dpos.0.lcssa = phi i32 [ 1, %for.body ], [ %dpos.1, %for.inc ]
  %13 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv69 = trunc i32 %13 to i8
  %idxprom70 = sext i32 %dpos.0.lcssa to i64
  %14 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i8* %14, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx73, align 1, !tbaa !1
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %15 = load i32* %nseq, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next115 to i32
  %cmp = icmp slt i32 %16, %15
  br i1 %cmp, label %for.body, label %for.end76

for.end76:                                        ; preds = %for.end, %entry
  store i8** %1, i8*** %ret_dsqs, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7CountSymbol(float* nocapture %counters, i8 signext %symidx, float %wt) #0 {
entry:
  %conv = sext i8 %symidx to i32
  %0 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp = icmp slt i32 %conv, %0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp327 = icmp sgt i32 %0, 0
  br i1 %cmp327, label %for.body.lr.ph, label %if.end18

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %idxprom7 = sext i8 %symidx to i64
  %arrayidx13 = getelementptr inbounds [24 x i32]* @DegenCount, i64 0, i64 %idxprom7
  br label %for.body

if.then:                                          ; preds = %entry
  %idxprom = sext i8 %symidx to i64
  %arrayidx = getelementptr inbounds float* %counters, i64 %idxprom
  %1 = load float* %arrayidx, align 4, !tbaa !4
  %add = fadd float %1, %wt
  store float %add, float* %arrayidx, align 4, !tbaa !4
  br label %if.end18

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx9 = getelementptr inbounds [24 x [20 x i8]]* @Degenerate, i64 0, i64 %idxprom7, i64 %indvars.iv
  %2 = load i8* %arrayidx9, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  %3 = load i32* %arrayidx13, align 4, !tbaa !3
  %conv14 = sitofp i32 %3 to float
  %div = fdiv float %wt, %conv14
  %arrayidx16 = getelementptr inbounds float* %counters, i64 %indvars.iv
  %4 = load float* %arrayidx16, align 4, !tbaa !4
  %add17 = fadd float %div, %4
  store float %add17, float* %arrayidx16, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %5, %0
  br i1 %cmp3, label %for.body, label %if.end18

if.end18:                                         ; preds = %for.cond.preheader, %for.inc, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DefaultGeneticCode(i32* nocapture %aacode) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [0 x i8*]* @stdcode1, i64 0, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %1, 42
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds i32* %aacode, i64 %indvars.iv
  store i32 -1, i32* %arrayidx4, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv = sext i8 %1 to i32
  %call = tail call i8* @strchr(i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i32 %conv) #7
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %conv8 = trunc i64 %sub.ptr.sub to i32
  %arrayidx10 = getelementptr inbounds i32* %aacode, i64 %indvars.iv
  store i32 %conv8, i32* %arrayidx10, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 64
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DefaultCodonBias(float* %codebias) #0 {
entry:
  store float 5.000000e-01, float* %codebias, align 4, !tbaa !4
  %arrayidx1 = getelementptr inbounds float* %codebias, i64 1
  store float 5.000000e-01, float* %arrayidx1, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds float* %codebias, i64 2
  store float 5.000000e-01, float* %arrayidx2, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds float* %codebias, i64 3
  store float 5.000000e-01, float* %arrayidx3, align 4, !tbaa !4
  %arrayidx4 = getelementptr inbounds float* %codebias, i64 4
  store float 2.500000e-01, float* %arrayidx4, align 4, !tbaa !4
  %arrayidx5 = getelementptr inbounds float* %codebias, i64 5
  store float 2.500000e-01, float* %arrayidx5, align 4, !tbaa !4
  %arrayidx6 = getelementptr inbounds float* %codebias, i64 6
  store float 2.500000e-01, float* %arrayidx6, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds float* %codebias, i64 7
  store float 2.500000e-01, float* %arrayidx7, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds float* %codebias, i64 8
  store float 0x3FC5555560000000, float* %arrayidx8, align 4, !tbaa !4
  %arrayidx9 = getelementptr inbounds float* %codebias, i64 9
  store float 0x3FC5555560000000, float* %arrayidx9, align 4, !tbaa !4
  %arrayidx10 = getelementptr inbounds float* %codebias, i64 10
  store float 0x3FC5555560000000, float* %arrayidx10, align 4, !tbaa !4
  %arrayidx11 = getelementptr inbounds float* %codebias, i64 11
  store float 0x3FC5555560000000, float* %arrayidx11, align 4, !tbaa !4
  %arrayidx12 = getelementptr inbounds float* %codebias, i64 12
  store float 0x3FD5555560000000, float* %arrayidx12, align 4, !tbaa !4
  %arrayidx13 = getelementptr inbounds float* %codebias, i64 13
  store float 0x3FD5555560000000, float* %arrayidx13, align 4, !tbaa !4
  %arrayidx14 = getelementptr inbounds float* %codebias, i64 14
  store float 1.000000e+00, float* %arrayidx14, align 4, !tbaa !4
  %arrayidx15 = getelementptr inbounds float* %codebias, i64 15
  store float 0x3FD5555560000000, float* %arrayidx15, align 4, !tbaa !4
  %arrayidx16 = getelementptr inbounds float* %codebias, i64 16
  store float 5.000000e-01, float* %arrayidx16, align 4, !tbaa !4
  %arrayidx17 = getelementptr inbounds float* %codebias, i64 17
  store float 5.000000e-01, float* %arrayidx17, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds float* %codebias, i64 18
  store float 5.000000e-01, float* %arrayidx18, align 4, !tbaa !4
  %arrayidx19 = getelementptr inbounds float* %codebias, i64 19
  store float 5.000000e-01, float* %arrayidx19, align 4, !tbaa !4
  %arrayidx20 = getelementptr inbounds float* %codebias, i64 20
  store float 2.500000e-01, float* %arrayidx20, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds float* %codebias, i64 21
  store float 2.500000e-01, float* %arrayidx21, align 4, !tbaa !4
  %arrayidx22 = getelementptr inbounds float* %codebias, i64 22
  store float 2.500000e-01, float* %arrayidx22, align 4, !tbaa !4
  %arrayidx23 = getelementptr inbounds float* %codebias, i64 23
  store float 2.500000e-01, float* %arrayidx23, align 4, !tbaa !4
  %arrayidx24 = getelementptr inbounds float* %codebias, i64 24
  store float 0x3FC5555560000000, float* %arrayidx24, align 4, !tbaa !4
  %arrayidx25 = getelementptr inbounds float* %codebias, i64 25
  store float 0x3FC5555560000000, float* %arrayidx25, align 4, !tbaa !4
  %arrayidx26 = getelementptr inbounds float* %codebias, i64 26
  store float 0x3FC5555560000000, float* %arrayidx26, align 4, !tbaa !4
  %arrayidx27 = getelementptr inbounds float* %codebias, i64 27
  store float 0x3FC5555560000000, float* %arrayidx27, align 4, !tbaa !4
  %arrayidx28 = getelementptr inbounds float* %codebias, i64 28
  store float 0x3FC5555560000000, float* %arrayidx28, align 4, !tbaa !4
  %arrayidx29 = getelementptr inbounds float* %codebias, i64 29
  store float 0x3FC5555560000000, float* %arrayidx29, align 4, !tbaa !4
  %arrayidx30 = getelementptr inbounds float* %codebias, i64 30
  store float 0x3FC5555560000000, float* %arrayidx30, align 4, !tbaa !4
  %arrayidx31 = getelementptr inbounds float* %codebias, i64 31
  store float 0x3FC5555560000000, float* %arrayidx31, align 4, !tbaa !4
  %arrayidx32 = getelementptr inbounds float* %codebias, i64 32
  store float 5.000000e-01, float* %arrayidx32, align 4, !tbaa !4
  %arrayidx33 = getelementptr inbounds float* %codebias, i64 33
  store float 5.000000e-01, float* %arrayidx33, align 4, !tbaa !4
  %arrayidx34 = getelementptr inbounds float* %codebias, i64 34
  store float 5.000000e-01, float* %arrayidx34, align 4, !tbaa !4
  %arrayidx35 = getelementptr inbounds float* %codebias, i64 35
  store float 5.000000e-01, float* %arrayidx35, align 4, !tbaa !4
  %arrayidx36 = getelementptr inbounds float* %codebias, i64 36
  store float 2.500000e-01, float* %arrayidx36, align 4, !tbaa !4
  %arrayidx37 = getelementptr inbounds float* %codebias, i64 37
  store float 2.500000e-01, float* %arrayidx37, align 4, !tbaa !4
  %arrayidx38 = getelementptr inbounds float* %codebias, i64 38
  store float 2.500000e-01, float* %arrayidx38, align 4, !tbaa !4
  %arrayidx39 = getelementptr inbounds float* %codebias, i64 39
  store float 2.500000e-01, float* %arrayidx39, align 4, !tbaa !4
  %arrayidx40 = getelementptr inbounds float* %codebias, i64 40
  store float 2.500000e-01, float* %arrayidx40, align 4, !tbaa !4
  %arrayidx41 = getelementptr inbounds float* %codebias, i64 41
  store float 2.500000e-01, float* %arrayidx41, align 4, !tbaa !4
  %arrayidx42 = getelementptr inbounds float* %codebias, i64 42
  store float 2.500000e-01, float* %arrayidx42, align 4, !tbaa !4
  %arrayidx43 = getelementptr inbounds float* %codebias, i64 43
  store float 2.500000e-01, float* %arrayidx43, align 4, !tbaa !4
  %arrayidx44 = getelementptr inbounds float* %codebias, i64 44
  store float 2.500000e-01, float* %arrayidx44, align 4, !tbaa !4
  %arrayidx45 = getelementptr inbounds float* %codebias, i64 45
  store float 2.500000e-01, float* %arrayidx45, align 4, !tbaa !4
  %arrayidx46 = getelementptr inbounds float* %codebias, i64 46
  store float 2.500000e-01, float* %arrayidx46, align 4, !tbaa !4
  %arrayidx47 = getelementptr inbounds float* %codebias, i64 47
  store float 2.500000e-01, float* %arrayidx47, align 4, !tbaa !4
  %arrayidx48 = getelementptr inbounds float* %codebias, i64 48
  store float 0.000000e+00, float* %arrayidx48, align 4, !tbaa !4
  %arrayidx49 = getelementptr inbounds float* %codebias, i64 49
  store float 5.000000e-01, float* %arrayidx49, align 4, !tbaa !4
  %arrayidx50 = getelementptr inbounds float* %codebias, i64 50
  store float 0.000000e+00, float* %arrayidx50, align 4, !tbaa !4
  %arrayidx51 = getelementptr inbounds float* %codebias, i64 51
  store float 5.000000e-01, float* %arrayidx51, align 4, !tbaa !4
  %arrayidx52 = getelementptr inbounds float* %codebias, i64 52
  store float 0x3FC5555560000000, float* %arrayidx52, align 4, !tbaa !4
  %arrayidx53 = getelementptr inbounds float* %codebias, i64 53
  store float 0x3FC5555560000000, float* %arrayidx53, align 4, !tbaa !4
  %arrayidx54 = getelementptr inbounds float* %codebias, i64 54
  store float 0x3FC5555560000000, float* %arrayidx54, align 4, !tbaa !4
  %arrayidx55 = getelementptr inbounds float* %codebias, i64 55
  store float 0x3FC5555560000000, float* %arrayidx55, align 4, !tbaa !4
  %arrayidx56 = getelementptr inbounds float* %codebias, i64 56
  store float 0.000000e+00, float* %arrayidx56, align 4, !tbaa !4
  %arrayidx57 = getelementptr inbounds float* %codebias, i64 57
  store float 5.000000e-01, float* %arrayidx57, align 4, !tbaa !4
  %arrayidx58 = getelementptr inbounds float* %codebias, i64 58
  store float 1.000000e+00, float* %arrayidx58, align 4, !tbaa !4
  %arrayidx59 = getelementptr inbounds float* %codebias, i64 59
  store float 5.000000e-01, float* %arrayidx59, align 4, !tbaa !4
  %arrayidx60 = getelementptr inbounds float* %codebias, i64 60
  store float 0x3FC5555560000000, float* %arrayidx60, align 4, !tbaa !4
  %arrayidx61 = getelementptr inbounds float* %codebias, i64 61
  store float 5.000000e-01, float* %arrayidx61, align 4, !tbaa !4
  %arrayidx62 = getelementptr inbounds float* %codebias, i64 62
  store float 0x3FC5555560000000, float* %arrayidx62, align 4, !tbaa !4
  %arrayidx63 = getelementptr inbounds float* %codebias, i64 63
  store float 5.000000e-01, float* %arrayidx63, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
