; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"[ %s ]\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"%4d \00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"b->index\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"*gnames\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"b->a\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@is_protein.bRead = internal unnamed_addr global i1 false
@is_protein.naa = internal unnamed_addr global i32 0, align 4
@is_protein.aas = internal global i8** null, align 8
@.str11 = private unnamed_addr constant [15 x i8] c"aminoacids.dat\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"restp\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"aid\00", align 1
@Sugars = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str73, i32 0, i32 0)], align 16
@.str16 = private unnamed_addr constant [12 x i8] c"Non-Protein\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"other_ndx\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"split %s into atoms (y/n) ? \00", align 1
@stdout = external global %struct._IO_FILE*
@.str22 = private unnamed_addr constant [5 x i8] c"attp\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"aaid\00", align 1
@stdin = external global %struct._IO_FILE*
@debug = external global %struct._IO_FILE*
@.str25 = private unnamed_addr constant [52 x i8] c"eRestp %p; atoms %p; gb %p; gn %p; bASK %s; bASK %s\00", align 1
@bool_names = external global [3 x i8*]
@analyse_prot.pnoh = internal global [1 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str26, i32 0, i32 0)], align 8
@.str26 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@analyse_prot.pnodum = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0)], align 16
@.str27 = private unnamed_addr constant [4 x i8] c"MN1\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"MN2\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"MCB1\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"MCB2\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"MCG1\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c"MCG2\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"MCD1\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"MCD2\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"MCE1\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"MCE2\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"MNZ1\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"MNZ2\00", align 1
@analyse_prot.calpha = internal global [1 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0)], align 8
@.str39 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@analyse_prot.bb = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0)], align 16
@.str40 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@analyse_prot.mc = internal global [7 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0)], align 16
@.str42 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"O1\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"O2\00", align 1
@.str45 = private unnamed_addr constant [4 x i8] c"OXT\00", align 1
@analyse_prot.mcb = internal global [9 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0)], align 16
@.str46 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"OT\00", align 1
@analyse_prot.mch = internal global [12 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str26, i32 0, i32 0)], align 16
@.str48 = private unnamed_addr constant [3 x i8] c"H1\00", align 1
@.str49 = private unnamed_addr constant [3 x i8] c"H2\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"H3\00", align 1
@analyse_prot.chains = internal unnamed_addr constant [10 x i8**] [i8** null, i8** getelementptr inbounds ([1 x i8*]* @analyse_prot.pnoh, i32 0, i32 0), i8** getelementptr inbounds ([1 x i8*]* @analyse_prot.calpha, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*]* @analyse_prot.bb, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*]* @analyse_prot.mc, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*]* @analyse_prot.mcb, i32 0, i32 0), i8** getelementptr inbounds ([12 x i8*]* @analyse_prot.mch, i32 0, i32 0), i8** getelementptr inbounds ([12 x i8*]* @analyse_prot.mch, i32 0, i32 0), i8** getelementptr inbounds ([12 x i8*]* @analyse_prot.mch, i32 0, i32 0), i8** getelementptr inbounds ([12 x i8*]* @analyse_prot.pnodum, i32 0, i32 0)], align 16
@analyse_prot.sizes = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 1, i32 3, i32 7, i32 9, i32 12, i32 12, i32 12, i32 12], align 16
@analyse_prot.ch_name = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str59, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str60, i32 0, i32 0)], align 16
@.str51 = private unnamed_addr constant [8 x i8] c"Protein\00", align 1
@.str52 = private unnamed_addr constant [10 x i8] c"Protein-H\00", align 1
@.str53 = private unnamed_addr constant [8 x i8] c"C-alpha\00", align 1
@.str54 = private unnamed_addr constant [9 x i8] c"Backbone\00", align 1
@.str55 = private unnamed_addr constant [10 x i8] c"MainChain\00", align 1
@.str56 = private unnamed_addr constant [13 x i8] c"MainChain+Cb\00", align 1
@.str57 = private unnamed_addr constant [12 x i8] c"MainChain+H\00", align 1
@.str58 = private unnamed_addr constant [10 x i8] c"SideChain\00", align 1
@.str59 = private unnamed_addr constant [12 x i8] c"SideChain-H\00", align 1
@.str60 = private unnamed_addr constant [12 x i8] c"Prot-Masses\00", align 1
@analyse_prot.complement = internal unnamed_addr constant [10 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1], align 16
@analyse_prot.wholename = internal unnamed_addr constant [10 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 11, i32 -1], align 16
@analyse_prot.compareto = internal unnamed_addr constant [10 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0], align 16
@.str62 = private unnamed_addr constant [38 x i8] c"Split %12s into %5d residues (y/n) ? \00", align 1
@.str63 = private unnamed_addr constant [8 x i8] c"%s_%s%d\00", align 1
@.str64 = private unnamed_addr constant [51 x i8] c"Make group with sidechain and C=O swapped (y/n) ? \00", align 1
@.str65 = private unnamed_addr constant [10 x i8] c"SwapSC-CO\00", align 1
@.str66 = private unnamed_addr constant [42 x i8] c"no such index group %d in t_block (nr=%d)\00", align 1
@.str67 = private unnamed_addr constant [30 x i8] c"There are: %5d %10s residues\0A\00", align 1
@ResTP = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str69, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0)], align 16
@.str68 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str69 = private unnamed_addr constant [8 x i8] c"PROTEIN\00", align 1
@.str70 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str71 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str72 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str73 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Analysing residue names:\00"
@str74 = private unnamed_addr constant [21 x i8] c"Analysing Protein...\00"
@str75 = private unnamed_addr constant [30 x i8] c"Analysing DNA... (not really)\00"
@str76 = private unnamed_addr constant [19 x i8] c"Analysing Other...\00"

; Function Attrs: nounwind optsize uwtable
define %struct.t_block* @new_block() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 73, i32 1, i32 1056) #6
  %0 = bitcast i8* %call to %struct.t_block*
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 74, i32 1, i32 4) #6
  %1 = bitcast i8* %call1 to i32*
  %index = getelementptr inbounds i8* %call, i64 1032
  %2 = bitcast i8* %index to i32**
  store i32* %1, i32** %2, align 8, !tbaa !0
  ret %struct.t_block* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @write_index(i8* %outf, %struct.t_block* nocapture %b, i8** nocapture %gnames) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %outf, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %nr = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %0, 0
  br i1 %cmp40, label %for.body.lr.ph, label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2
  %a = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv42 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next43, %for.end ]
  %arrayidx = getelementptr inbounds i8** %gnames, i64 %indvars.iv42
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* %1) #6
  %2 = load i32** %index, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds i32* %2, i64 %indvars.iv42
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %arrayidx736 = getelementptr inbounds i32* %2, i64 %indvars.iv.next43
  %4 = load i32* %arrayidx736, align 4, !tbaa !3
  %cmp837 = icmp slt i32 %3, %4
  br i1 %cmp837, label %for.body9.lr.ph, label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %3 to i64
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %k.039 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc16, %for.inc ]
  %6 = load i32** %a, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx11, align 4, !tbaa !3
  %add12 = add nsw i32 %7, 1
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %add12) #6
  %rem = srem i32 %k.039, 15
  %cmp14 = icmp eq i32 %rem, 14
  br i1 %cmp14, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body9
  %fputc35 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body9, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc16 = add nsw i32 %k.039, 1
  %8 = load i32** %index, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds i32* %8, i64 %indvars.iv.next43
  %9 = load i32* %arrayidx7, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %10, %9
  br i1 %cmp8, label %for.body9, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call)
  %11 = load i32* %nr, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next43 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end20

for.end20:                                        ; preds = %for.end, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @add_grp(%struct.t_block* nocapture %b, i8*** nocapture %gnames, i32 %nra, i32* nocapture %a, i8* %name) #0 {
entry:
  %index = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2
  %0 = load i32** %index, align 8, !tbaa !0
  %1 = bitcast i32* %0 to i8*
  %nr = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1
  %2 = load i32* %nr, align 4, !tbaa !3
  %add = shl i32 %2, 2
  %mul = add i32 %add, 8
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 102, i8* %1, i32 %mul) #6
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %index, align 8, !tbaa !0
  %4 = load i8*** %gnames, align 8, !tbaa !0
  %5 = bitcast i8** %4 to i8*
  %6 = load i32* %nr, align 4, !tbaa !3
  %add4 = shl i32 %6, 3
  %mul6 = add i32 %add4, 8
  %call8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 103, i8* %5, i32 %mul6) #6
  %7 = bitcast i8* %call8 to i8**
  store i8** %7, i8*** %gnames, align 8, !tbaa !0
  %call9 = tail call i8* @gmx_strdup(i8* %name) #6
  %8 = load i32* %nr, align 4, !tbaa !3
  %idxprom = sext i32 %8 to i64
  %9 = load i8*** %gnames, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %9, i64 %idxprom
  store i8* %call9, i8** %arrayidx, align 8, !tbaa !0
  %a11 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4
  %10 = load i32** %a11, align 8, !tbaa !0
  %11 = bitcast i32* %10 to i8*
  %nra12 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 3
  %12 = load i32* %nra12, align 4, !tbaa !3
  %add13 = add nsw i32 %12, %nra
  %mul15 = shl i32 %add13, 2
  %call17 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 106, i8* %11, i32 %mul15) #6
  %13 = bitcast i8* %call17 to i32*
  store i32* %13, i32** %a11, align 8, !tbaa !0
  %cmp52 = icmp sgt i32 %nra, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx21 = getelementptr inbounds i32* %a, i64 %indvars.iv
  %14 = load i32* %arrayidx21, align 4, !tbaa !3
  %15 = load i32* %nra12, align 4, !tbaa !3
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %nra12, align 4, !tbaa !3
  %idxprom23 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds i32* %13, i64 %idxprom23
  store i32 %14, i32* %arrayidx25, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nra
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %16 = load i32* %nr, align 4, !tbaa !3
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %nr, align 4, !tbaa !3
  %17 = load i32* %nra12, align 4, !tbaa !3
  %idxprom31 = sext i32 %inc28 to i64
  %18 = load i32** %index, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %18, i64 %idxprom31
  store i32 %17, i32* %arrayidx33, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i32* @mk_aid(%struct.t_atoms* nocapture %atoms, i32* nocapture %restp, i32 %res, i32* nocapture %nra, i32 %bTrue) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %0 = load i32* %nr, align 4, !tbaa !3
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155, i32 %0, i32 4) #6
  %1 = bitcast i8* %call to i32*
  store i32 0, i32* %nra, align 4, !tbaa !3
  %2 = load i32* %nr, align 4, !tbaa !3
  %cmp17 = icmp sgt i32 %2, 0
  br i1 %cmp17, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %.pre = load %struct.t_atom** %atom, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %8, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %resnr = getelementptr inbounds %struct.t_atom* %.pre, i64 %indvars.iv, i32 7
  %4 = load i32* %resnr, align 4, !tbaa !3
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i32* %restp, i64 %idxprom2
  %5 = load i32* %arrayidx3, align 4, !tbaa !1
  %cmp4 = icmp eq i32 %5, %res
  %conv = zext i1 %cmp4 to i32
  %cmp5 = icmp eq i32 %conv, %bTrue
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %6 = load i32* %nra, align 4, !tbaa !3
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nra, align 4, !tbaa !3
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7
  %7 = trunc i64 %indvars.iv to i32
  store i32 %7, i32* %arrayidx8, align 4, !tbaa !3
  %.pre19 = load i32* %nr, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %8 = phi i32 [ %3, %for.body ], [ %.pre19, %if.then ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret i32* %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @is_protein(i8* %resnm) #0 {
entry:
  %.b = load i1* @is_protein.bRead, align 1
  br i1 %.b, label %entry.for.cond.preheader_crit_edge, label %if.then

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  %.pre = load i32* @is_protein.naa, align 4, !tbaa !3
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  %call = tail call i32 @get_strings(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8*** @is_protein.aas) #6
  store i32 %call, i32* @is_protein.naa, align 4, !tbaa !3
  store i1 true, i1* @is_protein.bRead, align 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry.for.cond.preheader_crit_edge, %if.then
  %0 = phi i32 [ %.pre, %entry.for.cond.preheader_crit_edge ], [ %call, %if.then ]
  %cmp7 = icmp sgt i32 %0, 0
  br i1 %cmp7, label %for.body, label %return

for.cond:                                         ; preds = %for.body
  %1 = load i32* @is_protein.naa, align 4, !tbaa !3
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %1
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %3 = load i8*** @is_protein.aas, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %3, i64 %indvars.iv
  %4 = load i8** %arrayidx, align 8, !tbaa !0
  %call1 = tail call i32 @gmx_strcasecmp(i8* %4, i8* %resnm) #6
  %cmp2 = icmp eq i32 %call1, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %for.cond.preheader
  %retval.0 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @get_strings(i8*, i8***) #1

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i32 %bASK, i32 %bVerb) #0 {
entry:
  %ndx_name.i = alloca [4096 x i8], align 16
  %ntp.i = alloca [3 x i32], align 4
  %nra = alloca i32, align 4
  %tobool = icmp eq i32 %bVerb, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %0 = load i32* %nres, align 4, !tbaa !3
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430, i32 %0, i32 4) #6
  %1 = bitcast i8* %call1 to i32*
  %call2 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 0, i32* %nra, i32 1) #7
  %2 = load i32* %nra, align 4, !tbaa !3
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %2, i32* %call2, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #7
  %3 = bitcast i32* %call2 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 433, i8* %3) #6
  %4 = load i32* %nres, align 4, !tbaa !3
  %cmp170 = icmp sgt i32 %4, 0
  br i1 %cmp170, label %for.body.lr.ph, label %for.end33.thread

for.end33.thread:                                 ; preds = %if.end
  %5 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #4
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 12, i32 4, i1 false) #4
  br label %for.end11.i

for.body.lr.ph:                                   ; preds = %if.end
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc31, %for.body.lr.ph
  %indvars.iv196 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next197, %for.inc31 ]
  %6 = load i8**** %resname, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8*** %6, i64 %indvars.iv196
  %7 = load i8*** %arrayidx, align 8, !tbaa !0
  %8 = load i8** %7, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %indvars.iv196
  %9 = load i32* %arrayidx5, align 4, !tbaa !1
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %for.inc31

land.lhs.true:                                    ; preds = %for.body
  %call7 = call i32 @is_protein(i8* %8) #7
  %tobool8 = icmp eq i32 %call7, 0
  br i1 %tobool8, label %if.end12, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store i32 1, i32* %arrayidx5, align 4, !tbaa !1
  br label %for.inc31

if.end12:                                         ; preds = %land.lhs.true
  %.pr = load i32* %arrayidx5, align 4, !tbaa !1
  %cmp15 = icmp eq i32 %.pr, 0
  br i1 %cmp15, label %for.body20, label %for.inc31

for.body20:                                       ; preds = %if.end12, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end12 ]
  %arrayidx22 = getelementptr inbounds [5 x i8*]* @Sugars, i64 0, i64 %indvars.iv
  %10 = load i8** %arrayidx22, align 8, !tbaa !0
  %call23 = call i32 @gmx_strcasecmp(i8* %10, i8* %8) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body20
  store i32 2, i32* %arrayidx5, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body20, %if.then26
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv193 = trunc i64 %indvars.iv.next to i32
  %exitcond194 = icmp eq i32 %lftr.wideiv193, 5
  br i1 %exitcond194, label %for.inc31, label %for.body20

for.inc31:                                        ; preds = %for.inc, %if.end12, %for.body, %if.then9
  %indvars.iv.next197 = add i64 %indvars.iv196, 1
  %11 = load i32* %nres, align 4, !tbaa !3
  %12 = trunc i64 %indvars.iv.next197 to i32
  %cmp = icmp slt i32 %12, %11
  br i1 %cmp, label %for.body, label %for.end33

for.end33:                                        ; preds = %for.inc31
  %13 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #4
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 12, i32 4, i1 false) #4
  %cmp231.i = icmp sgt i32 %11, 0
  br i1 %cmp231.i, label %for.body3.i, label %for.end11.i

for.body3.i:                                      ; preds = %for.end33, %for.body3.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %for.body3.i ], [ 0, %for.end33 ]
  %arrayidx5.i = getelementptr inbounds i32* %1, i64 %indvars.iv34.i
  %14 = load i32* %arrayidx5.i, align 4, !tbaa !1
  %idxprom6.i = zext i32 %14 to i64
  %arrayidx7.i = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %idxprom6.i
  %15 = load i32* %arrayidx7.i, align 4, !tbaa !3
  %inc8.i = add nsw i32 %15, 1
  store i32 %inc8.i, i32* %arrayidx7.i, align 4, !tbaa !3
  %indvars.iv.next35.i = add i64 %indvars.iv34.i, 1
  %lftr.wideiv191 = trunc i64 %indvars.iv.next35.i to i32
  %exitcond192 = icmp eq i32 %lftr.wideiv191, %11
  br i1 %exitcond192, label %for.end11.i, label %for.body3.i

for.end11.i:                                      ; preds = %for.body3.i, %for.end33.thread, %for.end33
  %16 = phi i8* [ %5, %for.end33.thread ], [ %13, %for.end33 ], [ %13, %for.body3.i ]
  br i1 %tobool, label %p_status.exit, label %for.body14.i

for.body14.i:                                     ; preds = %for.end11.i, %for.body14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body14.i ], [ 0, %for.end11.i ]
  %arrayidx16.i = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %indvars.iv.i
  %17 = load i32* %arrayidx16.i, align 4, !tbaa !3
  %arrayidx18.i = getelementptr inbounds [3 x i8*]* @ResTP, i64 0, i64 %indvars.iv.i
  %18 = load i8** %arrayidx18.i, align 8, !tbaa !0
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str67, i64 0, i64 0), i32 %17, i8* %18) #6
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv189 = trunc i64 %indvars.iv.next.i to i32
  %exitcond190 = icmp eq i32 %lftr.wideiv189, 3
  br i1 %exitcond190, label %p_status.exit, label %for.body14.i

p_status.exit:                                    ; preds = %for.body14.i, %for.end11.i
  call void @llvm.lifetime.end(i64 12, i8* %16) #4
  %call35 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 1, i32* %nra, i32 1) #7
  %19 = load i32* %nra, align 4, !tbaa !3
  %cmp36 = icmp sgt i32 %19, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %p_status.exit
  %20 = getelementptr inbounds [4096 x i8]* %ndx_name.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %20) #4
  br i1 %tobool, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then38
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str74, i64 0, i64 0)) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then38
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %21 = load i32* %nr.i, align 4, !tbaa !3
  %call1.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 292, i32 %21, i32 4) #6
  %22 = bitcast i8* %call1.i to i32*
  %23 = load i32* %nres, align 4, !tbaa !3
  %cmp454.i = icmp sgt i32 %23, 0
  br i1 %cmp454.i, label %for.body.i, label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i, %if.end.i
  %npres.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %inc.npres.0.i, %for.body.i ]
  %nr.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 1
  %index7.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 2
  %a23.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 4
  %atom.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %atomname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br label %for.cond10.preheader.i

for.body.i:                                       ; preds = %if.end.i, %for.body.i
  %indvars.iv477.i = phi i64 [ %indvars.iv.next478.i, %for.body.i ], [ 0, %if.end.i ]
  %npres.0455.i = phi i32 [ %inc.npres.0.i, %for.body.i ], [ 0, %if.end.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv477.i
  %24 = load i32* %arrayidx.i, align 4, !tbaa !1
  %cmp2.i = icmp eq i32 %24, 1
  %inc.i = zext i1 %cmp2.i to i32
  %inc.npres.0.i = add nsw i32 %inc.i, %npres.0455.i
  %indvars.iv.next478.i = add i64 %indvars.iv477.i, 1
  %lftr.wideiv187 = trunc i64 %indvars.iv.next478.i to i32
  %exitcond188 = icmp eq i32 %lftr.wideiv187, %23
  br i1 %exitcond188, label %for.cond6.preheader.i, label %for.body.i

for.cond10.preheader.i:                           ; preds = %for.inc100.i, %for.cond6.preheader.i
  %indvars.iv473.i = phi i64 [ 0, %for.cond6.preheader.i ], [ %indvars.iv.next474.i, %for.inc100.i ]
  %25 = load i32* %nr.i, align 4, !tbaa !3
  %cmp12447.i = icmp sgt i32 %25, 0
  br i1 %cmp12447.i, label %for.body14.lr.ph.i, label %for.cond10.preheader.i.for.end86.i_crit_edge

for.cond10.preheader.i.for.end86.i_crit_edge:     ; preds = %for.cond10.preheader.i
  %.pre199 = trunc i64 %indvars.iv473.i to i32
  br label %for.end86.i

for.body14.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %arrayidx24.i = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv473.i
  %arrayidx75.i = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv473.i
  %arrayidx48.i = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv473.i
  %arrayidx38.i = getelementptr inbounds [10 x i32]* @analyse_prot.wholename, i64 0, i64 %indvars.iv473.i
  %cmp25440.i = icmp eq i64 %indvars.iv473.i, 0
  %26 = trunc i64 %indvars.iv473.i to i32
  br label %for.body14.i125

for.body14.i125:                                  ; preds = %for.inc84.i, %for.body14.lr.ph.i
  %indvars.iv471.i = phi i64 [ 0, %for.body14.lr.ph.i ], [ %indvars.iv.next472.i, %for.inc84.i ]
  %nra.0448.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %nra.1.i, %for.inc84.i ]
  %27 = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  %resnr.i = getelementptr inbounds %struct.t_atom* %27, i64 %indvars.iv471.i, i32 7
  %28 = load i32* %resnr.i, align 4, !tbaa !3
  %idxprom17.i = sext i32 %28 to i64
  %arrayidx18.i124 = getelementptr inbounds i32* %1, i64 %idxprom17.i
  %29 = load i32* %arrayidx18.i124, align 4, !tbaa !1
  %cmp19.i = icmp eq i32 %29, 1
  br i1 %cmp19.i, label %for.cond22.preheader.i, label %for.inc84.i

for.cond22.preheader.i:                           ; preds = %for.body14.i125
  br i1 %cmp25440.i, label %for.end73.i, label %for.body27.lr.ph.i

for.body27.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %call33.i = call i16** @__ctype_b_loc() #8
  %30 = load i32* %arrayidx24.i, align 4, !tbaa !3
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc71.i, %for.body27.lr.ph.i
  %indvars.iv469.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next470.i, %for.inc71.i ]
  %match.0444.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %.match.0403.i, %for.inc71.i ]
  %31 = load i8**** %atomname.i, align 8, !tbaa !0
  %arrayidx29.i = getelementptr inbounds i8*** %31, i64 %indvars.iv471.i
  %32 = load i8*** %arrayidx29.i, align 8, !tbaa !0
  %33 = load i8** %32, align 8, !tbaa !0
  %34 = load i16** %call33.i, align 8, !tbaa !0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %for.body27.i
  %atnm.0.i = phi i8* [ %33, %for.body27.i ], [ %incdec.ptr.i, %while.cond.i ]
  %35 = load i8* %atnm.0.i, align 1, !tbaa !1
  %idxprom32.i = sext i8 %35 to i64
  %arrayidx34.i = getelementptr inbounds i16* %34, i64 %idxprom32.i
  %36 = load i16* %arrayidx34.i, align 2, !tbaa !4
  %and.i = and i16 %36, 2048
  %tobool36.i = icmp eq i16 %and.i, 0
  %incdec.ptr.i = getelementptr inbounds i8* %atnm.0.i, i64 1
  br i1 %tobool36.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  switch i32 %26, label %if.then45.i [
    i32 8, label %lor.lhs.false.i
    i32 1, label %lor.lhs.false.i
  ]

lor.lhs.false.i:                                  ; preds = %while.end.i, %while.end.i
  %37 = load i32* %arrayidx38.i, align 4, !tbaa !3
  %38 = trunc i64 %indvars.iv469.i to i32
  %cmp43.i = icmp slt i32 %38, %37
  br i1 %cmp43.i, label %if.then45.i, label %if.else.i

if.then45.i:                                      ; preds = %lor.lhs.false.i, %while.end.i
  %39 = load i8*** %arrayidx48.i, align 8, !tbaa !0
  %arrayidx49.i = getelementptr inbounds i8** %39, i64 %indvars.iv469.i
  %40 = load i8** %arrayidx49.i, align 8, !tbaa !0
  %call50.i = call i32 @gmx_strcasecmp(i8* %40, i8* %atnm.0.i) #6
  br label %for.inc71.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %41 = load i8*** %arrayidx48.i, align 8, !tbaa !0
  %arrayidx58.i = getelementptr inbounds i8** %41, i64 %indvars.iv469.i
  %42 = load i8** %arrayidx58.i, align 8, !tbaa !0
  %call63.i = call i64 @strlen(i8* %42) #9
  %conv64.i = trunc i64 %call63.i to i32
  %call65.i = call i32 @gmx_strncasecmp(i8* %42, i8* %atnm.0.i, i32 %conv64.i) #6
  br label %for.inc71.i

for.inc71.i:                                      ; preds = %if.else.i, %if.then45.i
  %call65.sink.i = phi i32 [ %call65.i, %if.else.i ], [ %call50.i, %if.then45.i ]
  %cmp66.i = icmp eq i32 %call65.sink.i, 0
  %.match.0403.i = select i1 %cmp66.i, i32 1, i32 %match.0444.i
  %indvars.iv.next470.i = add i64 %indvars.iv469.i, 1
  %43 = trunc i64 %indvars.iv.next470.i to i32
  %cmp25.i = icmp slt i32 %43, %30
  br i1 %cmp25.i, label %for.body27.i, label %for.end73.i

for.end73.i:                                      ; preds = %for.inc71.i, %for.cond22.preheader.i
  %match.0.lcssa.i = phi i32 [ 0, %for.cond22.preheader.i ], [ %.match.0403.i, %for.inc71.i ]
  %44 = load i32* %arrayidx75.i, align 4, !tbaa !3
  %cmp76.i = icmp eq i32 %match.0.lcssa.i, %44
  br i1 %cmp76.i, label %for.inc84.i, label %if.then78.i

if.then78.i:                                      ; preds = %for.end73.i
  %inc79.i = add nsw i32 %nra.0448.i, 1
  %idxprom80.i = sext i32 %nra.0448.i to i64
  %arrayidx81.i = getelementptr inbounds i32* %22, i64 %idxprom80.i
  %45 = trunc i64 %indvars.iv471.i to i32
  store i32 %45, i32* %arrayidx81.i, align 4, !tbaa !3
  br label %for.inc84.i

for.inc84.i:                                      ; preds = %for.end73.i, %if.then78.i, %for.body14.i125
  %nra.1.i = phi i32 [ %inc79.i, %if.then78.i ], [ %nra.0448.i, %for.body14.i125 ], [ %nra.0448.i, %for.end73.i ]
  %indvars.iv.next472.i = add i64 %indvars.iv471.i, 1
  %46 = load i32* %nr.i, align 4, !tbaa !3
  %47 = trunc i64 %indvars.iv.next472.i to i32
  %cmp12.i = icmp slt i32 %47, %46
  br i1 %cmp12.i, label %for.body14.i125, label %for.end86.i

for.end86.i:                                      ; preds = %for.inc84.i, %for.cond10.preheader.i.for.end86.i_crit_edge
  %.pre-phi = phi i32 [ %.pre199, %for.cond10.preheader.i.for.end86.i_crit_edge ], [ %26, %for.inc84.i ]
  %nra.0.lcssa.i = phi i32 [ 0, %for.cond10.preheader.i.for.end86.i_crit_edge ], [ %nra.1.i, %for.inc84.i ]
  %cmp89.i = icmp eq i32 %.pre-phi, 9
  br i1 %cmp89.i, label %lor.lhs.false91.i, label %if.then96.i

lor.lhs.false91.i:                                ; preds = %for.end86.i
  %arrayidx88.i = getelementptr inbounds [10 x i32]* @analyse_prot.compareto, i64 0, i64 %indvars.iv473.i
  %48 = load i32* %arrayidx88.i, align 4, !tbaa !3
  %sub.i = add nsw i32 %48, -9
  %cmp.i.i = icmp slt i32 %sub.i, 0
  %49 = load i32* %nr.i.i, align 4, !tbaa !3
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false91.i
  %sub.i.i = add i32 %48, -10
  %add.i.i = add i32 %sub.i.i, %49
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %lor.lhs.false91.i
  %index.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i, %lor.lhs.false91.i ]
  %cmp2.i.i = icmp slt i32 %index.addr.0.i.i, %49
  br i1 %cmp2.i.i, label %if.end5.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str66, i64 0, i64 0), i32 %index.addr.0.i.i, i32 %49) #6
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i, %if.then3.i.i
  %add6.i.i = add nsw i32 %index.addr.0.i.i, 1
  %idxprom.i.i = sext i32 %add6.i.i to i64
  %50 = load i32** %index7.i.i, align 8, !tbaa !0
  %arrayidx.i.i = getelementptr inbounds i32* %50, i64 %idxprom.i.i
  %51 = load i32* %arrayidx.i.i, align 4, !tbaa !3
  %idxprom8.i.i = sext i32 %index.addr.0.i.i to i64
  %arrayidx10.i.i = getelementptr inbounds i32* %50, i64 %idxprom8.i.i
  %52 = load i32* %arrayidx10.i.i, align 4, !tbaa !3
  %sub11.i.i = sub nsw i32 %51, %52
  %cmp12.i.i = icmp eq i32 %sub11.i.i, %nra.0.lcssa.i
  br i1 %cmp12.i.i, label %for.cond.preheader.i.i, label %if.then96.i

for.cond.preheader.i.i:                           ; preds = %if.end5.i.i
  %cmp1544.i.i = icmp sgt i32 %nra.0.lcssa.i, 0
  br i1 %cmp1544.i.i, label %for.body.lr.ph.i.i, label %for.inc100.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %53 = load i32** %a23.i.i, align 8, !tbaa !0
  %54 = sext i32 %52 to i64
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %55 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp15.i.i = icmp slt i32 %55, %nra.0.lcssa.i
  br i1 %cmp15.i.i, label %for.body.i.i, label %for.inc100.i

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %arrayidx17.i.i = getelementptr inbounds i32* %22, i64 %indvars.iv.i.i
  %56 = load i32* %arrayidx17.i.i, align 4, !tbaa !3
  %57 = add nsw i64 %indvars.iv.i.i, %54
  %arrayidx24.i.i = getelementptr inbounds i32* %53, i64 %57
  %58 = load i32* %arrayidx24.i.i, align 4, !tbaa !3
  %cmp25.i.i = icmp eq i32 %56, %58
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  br i1 %cmp25.i.i, label %for.cond.i.i, label %if.then96.i

if.then96.i:                                      ; preds = %for.body.i.i, %if.end5.i.i, %for.end86.i
  %arrayidx98.i = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv473.i
  %59 = load i8** %arrayidx98.i, align 8, !tbaa !0
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.0.lcssa.i, i32* %22, i8* %59) #6
  br label %for.inc100.i

for.inc100.i:                                     ; preds = %for.cond.i.i, %if.then96.i, %for.cond.preheader.i.i
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %lftr.wideiv185 = trunc i64 %indvars.iv.next474.i to i32
  %exitcond186 = icmp eq i32 %lftr.wideiv185, 10
  br i1 %exitcond186, label %for.end102.i, label %for.cond10.preheader.i

for.end102.i:                                     ; preds = %for.inc100.i
  %tobool103.i = icmp eq i32 %bASK, 0
  br i1 %tobool103.i, label %analyse_prot.exit, label %for.cond105.preheader.i

for.cond105.preheader.i:                          ; preds = %for.end102.i
  %resname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.inc190.i, %for.cond105.preheader.i
  %indvars.iv467.i = phi i64 [ 0, %for.cond105.preheader.i ], [ %indvars.iv.next468.i, %for.inc190.i ]
  %arrayidx111.i = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv467.i
  %60 = load i8** %arrayidx111.i, align 8, !tbaa !0
  %call112.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str62, i64 0, i64 0), i8* %60, i32 %npres.0.lcssa.i) #6
  %call113.i = call fastcc i32 @yn(i32 %bASK) #6
  %tobool114.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.i, label %for.inc190.i, label %for.cond117.preheader.i

for.cond117.preheader.i:                          ; preds = %for.body109.i
  %61 = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  %resnr121433.i = getelementptr inbounds %struct.t_atom* %61, i64 0, i32 7
  %62 = load i32* %resnr121433.i, align 4, !tbaa !3
  %cmp122434.i = icmp slt i32 %62, %npres.0.lcssa.i
  br i1 %cmp122434.i, label %land.rhs.lr.ph.i, label %for.inc190.i

land.rhs.lr.ph.i:                                 ; preds = %for.cond117.preheader.i
  %arrayidx147.i = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv467.i
  %arrayidx167.i = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv467.i
  %arrayidx153.i = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv467.i
  %cmp148421.i = icmp eq i64 %indvars.iv467.i, 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.cond117.backedge.i, %land.rhs.lr.ph.i
  %63 = phi i32 [ %62, %land.rhs.lr.ph.i ], [ %79, %for.cond117.backedge.i ]
  %n.1436.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc176.i, %for.cond117.backedge.i ]
  %nra.2435.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %nra.2.be.i, %for.cond117.backedge.i ]
  %64 = load i32* %nr.i, align 4, !tbaa !3
  %cmp125.i = icmp slt i32 %n.1436.i, %64
  br i1 %cmp125.i, label %for.cond145.preheader.i.lr.ph, label %for.inc190.i

for.cond145.preheader.i.lr.ph:                    ; preds = %land.rhs.i
  %idxprom133425.i = sext i32 %n.1436.i to i64
  %65 = load i32* %arrayidx167.i, align 4, !tbaa !3
  br label %for.cond145.preheader.i

for.cond145.preheader.i:                          ; preds = %for.cond145.preheader.i.lr.ph, %for.inc175.land.rhs139_crit_edge.i
  %nra.3428.i164 = phi i32 [ %nra.2435.i, %for.cond145.preheader.i.lr.ph ], [ %nra.4.i, %for.inc175.land.rhs139_crit_edge.i ]
  %n.2429.i163 = phi i32 [ %n.1436.i, %for.cond145.preheader.i.lr.ph ], [ %inc176.i, %for.inc175.land.rhs139_crit_edge.i ]
  %indvars.iv465.i162 = phi i64 [ %idxprom133425.i, %for.cond145.preheader.i.lr.ph ], [ %indvars.iv.next466.i, %for.inc175.land.rhs139_crit_edge.i ]
  br i1 %cmp148421.i, label %for.end165.i, label %for.body150.lr.ph.i

for.body150.lr.ph.i:                              ; preds = %for.cond145.preheader.i
  %66 = load i8*** %arrayidx153.i, align 8, !tbaa !0
  %67 = load i32* %arrayidx147.i, align 4, !tbaa !3
  br label %for.body150.i

for.body150.i:                                    ; preds = %for.body150.i, %for.body150.lr.ph.i
  %indvars.iv461.i = phi i64 [ 0, %for.body150.lr.ph.i ], [ %indvars.iv.next462.i, %for.body150.i ]
  %match.2423.i = phi i32 [ 0, %for.body150.lr.ph.i ], [ %.match.2.i, %for.body150.i ]
  %arrayidx154.i = getelementptr inbounds i8** %66, i64 %indvars.iv461.i
  %68 = load i8** %arrayidx154.i, align 8, !tbaa !0
  %69 = load i8**** %atomname.i, align 8, !tbaa !0
  %arrayidx157.i = getelementptr inbounds i8*** %69, i64 %indvars.iv465.i162
  %70 = load i8*** %arrayidx157.i, align 8, !tbaa !0
  %71 = load i8** %70, align 8, !tbaa !0
  %call158.i = call i32 @gmx_strcasecmp(i8* %68, i8* %71) #6
  %cmp159.i = icmp eq i32 %call158.i, 0
  %.match.2.i = select i1 %cmp159.i, i32 1, i32 %match.2423.i
  %indvars.iv.next462.i = add i64 %indvars.iv461.i, 1
  %72 = trunc i64 %indvars.iv.next462.i to i32
  %cmp148.i = icmp slt i32 %72, %67
  br i1 %cmp148.i, label %for.body150.i, label %for.end165.i

for.end165.i:                                     ; preds = %for.body150.i, %for.cond145.preheader.i
  %match.2.lcssa.i = phi i32 [ 0, %for.cond145.preheader.i ], [ %.match.2.i, %for.body150.i ]
  %cmp168.i = icmp eq i32 %match.2.lcssa.i, %65
  br i1 %cmp168.i, label %for.inc175.i, label %if.then170.i

if.then170.i:                                     ; preds = %for.end165.i
  %inc171.i = add nsw i32 %nra.3428.i164, 1
  %idxprom172.i = sext i32 %nra.3428.i164 to i64
  %arrayidx173.i = getelementptr inbounds i32* %22, i64 %idxprom172.i
  store i32 %n.2429.i163, i32* %arrayidx173.i, align 4, !tbaa !3
  br label %for.inc175.i

for.inc175.i:                                     ; preds = %for.end165.i, %if.then170.i
  %nra.4.i = phi i32 [ %inc171.i, %if.then170.i ], [ %nra.3428.i164, %for.end165.i ]
  %indvars.iv.next466.i = add i64 %indvars.iv465.i162, 1
  %inc176.i = add nsw i32 %n.2429.i163, 1
  %73 = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  %resnr136.i = getelementptr inbounds %struct.t_atom* %73, i64 %indvars.iv.next466.i, i32 7
  %74 = load i32* %resnr136.i, align 4, !tbaa !3
  %cmp137.i = icmp eq i32 %74, %63
  br i1 %cmp137.i, label %for.inc175.land.rhs139_crit_edge.i, label %for.end177.i

for.inc175.land.rhs139_crit_edge.i:               ; preds = %for.inc175.i
  %.pre480.i = load i32* %nr.i, align 4, !tbaa !3
  %cmp141.i = icmp slt i32 %inc176.i, %.pre480.i
  br i1 %cmp141.i, label %for.cond145.preheader.i, label %for.end177.i

for.end177.i:                                     ; preds = %for.inc175.land.rhs139_crit_edge.i, %for.inc175.i
  %cmp178.i = icmp sgt i32 %nra.4.i, 0
  br i1 %cmp178.i, label %if.then180.i, label %for.cond117.backedge.i

if.then180.i:                                     ; preds = %for.end177.i
  %idxprom183.i = sext i32 %63 to i64
  %75 = load i8**** %resname.i, align 8, !tbaa !0
  %arrayidx184.i = getelementptr inbounds i8*** %75, i64 %idxprom183.i
  %76 = load i8*** %arrayidx184.i, align 8, !tbaa !0
  %77 = load i8** %76, align 8, !tbaa !0
  %add.i = add nsw i32 %63, 1
  %call185.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %20, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* %60, i8* %77, i32 %add.i) #6
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.4.i, i32* %22, i8* %20) #6
  %.pre.i = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  br label %for.cond117.backedge.i

for.cond117.backedge.i:                           ; preds = %if.then180.i, %for.end177.i
  %78 = phi %struct.t_atom* [ %.pre.i, %if.then180.i ], [ %73, %for.end177.i ]
  %nra.2.be.i = phi i32 [ 0, %if.then180.i ], [ %nra.4.i, %for.end177.i ]
  %idxprom118.i = sext i32 %inc176.i to i64
  %resnr121.i = getelementptr inbounds %struct.t_atom* %78, i64 %idxprom118.i, i32 7
  %79 = load i32* %resnr121.i, align 4, !tbaa !3
  %cmp122.i = icmp slt i32 %79, %npres.0.lcssa.i
  br i1 %cmp122.i, label %land.rhs.i, label %for.inc190.i

for.inc190.i:                                     ; preds = %for.cond117.backedge.i, %land.rhs.i, %for.cond117.preheader.i, %for.body109.i
  %indvars.iv.next468.i = add i64 %indvars.iv467.i, 1
  %lftr.wideiv183 = trunc i64 %indvars.iv.next468.i to i32
  %exitcond184 = icmp eq i32 %lftr.wideiv183, 10
  br i1 %exitcond184, label %for.end192.i, label %for.body109.i

for.end192.i:                                     ; preds = %for.inc190.i
  %call193.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str64, i64 0, i64 0)) #6
  %call194.i = call fastcc i32 @yn(i32 %bASK) #6
  %tobool195.i = icmp eq i32 %call194.i, 0
  br i1 %tobool195.i, label %analyse_prot.exit, label %for.cond198.preheader.i

for.cond198.preheader.i:                          ; preds = %for.end192.i
  %80 = load %struct.t_atom** %atom.i, align 8, !tbaa !0
  %resnr202416.i = getelementptr inbounds %struct.t_atom* %80, i64 0, i32 7
  %81 = load i32* %resnr202416.i, align 4, !tbaa !3
  %cmp203417.i = icmp slt i32 %81, %npres.0.lcssa.i
  br i1 %cmp203417.i, label %land.rhs205.i, label %analyse_prot.exit

for.cond198.loopexit.i:                           ; preds = %for.inc279.land.rhs222_crit_edge.i, %for.inc279.i
  %idxprom199.i = sext i32 %inc280.i to i64
  %resnr202.i = getelementptr inbounds %struct.t_atom* %80, i64 %idxprom199.i, i32 7
  %82 = load i32* %resnr202.i, align 4, !tbaa !3
  %cmp203.i = icmp slt i32 %82, %npres.0.lcssa.i
  br i1 %cmp203.i, label %land.rhs205.i, label %for.end282.i

land.rhs205.i:                                    ; preds = %for.cond198.loopexit.i, %for.cond198.preheader.i
  %83 = phi i32 [ %81, %for.cond198.preheader.i ], [ %82, %for.cond198.loopexit.i ]
  %n.3419.i = phi i32 [ 0, %for.cond198.preheader.i ], [ %inc280.i, %for.cond198.loopexit.i ]
  %nra.5418.i = phi i32 [ 0, %for.cond198.preheader.i ], [ %nra.7.i, %for.cond198.loopexit.i ]
  %84 = load i32* %nr.i, align 4, !tbaa !3
  %cmp207.i = icmp slt i32 %n.3419.i, %84
  br i1 %cmp207.i, label %for.body227.i.lr.ph, label %for.end282.i

for.body227.i.lr.ph:                              ; preds = %land.rhs205.i
  %idxprom216408.i = sext i32 %n.3419.i to i64
  %.pre = load i8**** %atomname.i, align 8, !tbaa !0
  br label %for.body227.i

for.body227.i:                                    ; preds = %for.body227.i.lr.ph, %for.inc279.land.rhs222_crit_edge.i
  %nra.6411.i159 = phi i32 [ %nra.5418.i, %for.body227.i.lr.ph ], [ %nra.7.i, %for.inc279.land.rhs222_crit_edge.i ]
  %n.4412.i158 = phi i32 [ %n.3419.i, %for.body227.i.lr.ph ], [ %inc280.i, %for.inc279.land.rhs222_crit_edge.i ]
  %hold.0413.i157 = phi i32 [ -1, %for.body227.i.lr.ph ], [ %hold.1.i, %for.inc279.land.rhs222_crit_edge.i ]
  %indvars.iv.i128156 = phi i64 [ %idxprom216408.i, %for.body227.i.lr.ph ], [ %indvars.iv.next.i129, %for.inc279.land.rhs222_crit_edge.i ]
  %arrayidx230.i = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.i128156
  %85 = load i8*** %arrayidx230.i, align 8, !tbaa !0
  %86 = load i8** %85, align 8, !tbaa !0
  %call231.i = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0), i8* %86) #9
  %cmp232.i = icmp eq i32 %call231.i, 0
  br i1 %cmp232.i, label %if.then234.i, label %if.else239.i

if.then234.i:                                     ; preds = %for.body227.i
  %inc235.i = add nsw i32 %nra.6411.i159, 1
  %idxprom236.i = sext i32 %nra.6411.i159 to i64
  %arrayidx237.i = getelementptr inbounds i32* %22, i64 %idxprom236.i
  store i32 %n.4412.i158, i32* %arrayidx237.i, align 4, !tbaa !3
  %add238.i = add nsw i32 %nra.6411.i159, 3
  br label %for.inc279.i

if.else239.i:                                     ; preds = %for.body227.i
  %call243.i = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* %86) #9
  %cmp244.i = icmp eq i32 %call243.i, 0
  br i1 %cmp244.i, label %if.then246.i, label %if.else249.i

if.then246.i:                                     ; preds = %if.else239.i
  %idxprom247.i = sext i32 %hold.0413.i157 to i64
  %arrayidx248.i = getelementptr inbounds i32* %22, i64 %idxprom247.i
  store i32 %n.4412.i158, i32* %arrayidx248.i, align 4, !tbaa !3
  br label %for.inc279.i

if.else249.i:                                     ; preds = %if.else239.i
  %call253.i = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* %86) #9
  %cmp254.i = icmp eq i32 %call253.i, 0
  br i1 %cmp254.i, label %if.then256.i, label %if.else260.i

if.then256.i:                                     ; preds = %if.else249.i
  %add257.i = add nsw i32 %hold.0413.i157, 1
  %idxprom258.i = sext i32 %add257.i to i64
  %arrayidx259.i = getelementptr inbounds i32* %22, i64 %idxprom258.i
  store i32 %n.4412.i158, i32* %arrayidx259.i, align 4, !tbaa !3
  br label %for.inc279.i

if.else260.i:                                     ; preds = %if.else249.i
  %call264.i = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* %86) #9
  %cmp265.i = icmp eq i32 %call264.i, 0
  br i1 %cmp265.i, label %if.then267.i, label %if.else271.i

if.then267.i:                                     ; preds = %if.else260.i
  %add268.i = add nsw i32 %hold.0413.i157, 1
  %idxprom269.i = sext i32 %add268.i to i64
  %arrayidx270.i = getelementptr inbounds i32* %22, i64 %idxprom269.i
  store i32 %n.4412.i158, i32* %arrayidx270.i, align 4, !tbaa !3
  br label %for.inc279.i

if.else271.i:                                     ; preds = %if.else260.i
  %inc272.i = add nsw i32 %nra.6411.i159, 1
  %idxprom273.i = sext i32 %nra.6411.i159 to i64
  %arrayidx274.i = getelementptr inbounds i32* %22, i64 %idxprom273.i
  store i32 %n.4412.i158, i32* %arrayidx274.i, align 4, !tbaa !3
  br label %for.inc279.i

for.inc279.i:                                     ; preds = %if.else271.i, %if.then267.i, %if.then256.i, %if.then246.i, %if.then234.i
  %nra.7.i = phi i32 [ %add238.i, %if.then234.i ], [ %nra.6411.i159, %if.then246.i ], [ %nra.6411.i159, %if.then256.i ], [ %nra.6411.i159, %if.then267.i ], [ %inc272.i, %if.else271.i ]
  %hold.1.i = phi i32 [ %inc235.i, %if.then234.i ], [ %hold.0413.i157, %if.then246.i ], [ %hold.0413.i157, %if.then256.i ], [ %hold.0413.i157, %if.then267.i ], [ %hold.0413.i157, %if.else271.i ]
  %indvars.iv.next.i129 = add i64 %indvars.iv.i128156, 1
  %inc280.i = add nsw i32 %n.4412.i158, 1
  %resnr219.i = getelementptr inbounds %struct.t_atom* %80, i64 %indvars.iv.next.i129, i32 7
  %87 = load i32* %resnr219.i, align 4, !tbaa !3
  %cmp220.i = icmp eq i32 %87, %83
  br i1 %cmp220.i, label %for.inc279.land.rhs222_crit_edge.i, label %for.cond198.loopexit.i

for.inc279.land.rhs222_crit_edge.i:               ; preds = %for.inc279.i
  %.pre479.i = load i32* %nr.i, align 4, !tbaa !3
  %cmp224.i = icmp slt i32 %inc280.i, %.pre479.i
  br i1 %cmp224.i, label %for.body227.i, label %for.cond198.loopexit.i

for.end282.i:                                     ; preds = %land.rhs205.i, %for.cond198.loopexit.i
  %nra.5.lcssa.i = phi i32 [ %nra.5418.i, %land.rhs205.i ], [ %nra.7.i, %for.cond198.loopexit.i ]
  %cmp283.i = icmp sgt i32 %nra.5.lcssa.i, 0
  br i1 %cmp283.i, label %if.then285.i, label %analyse_prot.exit

if.then285.i:                                     ; preds = %for.end282.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.5.lcssa.i, i32* %22, i8* getelementptr inbounds ([10 x i8]* @.str65, i64 0, i64 0)) #6
  br label %analyse_prot.exit

analyse_prot.exit:                                ; preds = %for.end102.i, %for.end192.i, %for.cond198.preheader.i, %for.end282.i, %if.then285.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 387, i8* %call1.i) #6
  call void @llvm.lifetime.end(i64 4096, i8* %20) #4
  br label %if.end39

if.end39:                                         ; preds = %analyse_prot.exit, %p_status.exit
  %88 = bitcast i32* %call35 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452, i8* %88) #6
  %call40 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 1, i32* %nra, i32 0) #7
  %89 = load i32* %nra, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %89, 0
  br i1 %cmp41, label %land.lhs.true43, label %if.end47

land.lhs.true43:                                  ; preds = %if.end39
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %90 = load i32* %nr, align 4, !tbaa !3
  %cmp44 = icmp slt i32 %89, %90
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true43
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %89, i32* %call40, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true43, %if.end39
  %91 = bitcast i32* %call40 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 458, i8* %91) #6
  %call48 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 2, i32* %nra, i32 1) #7
  %92 = load i32* %nra, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %92, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %92, i32* %call48, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0)) #7
  br i1 %tobool, label %if.end.i133, label %if.then.i132

if.then.i132:                                     ; preds = %if.then51
  %puts.i131 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str75, i64 0, i64 0)) #4
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then.i132, %if.then51
  %93 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i = icmp eq %struct._IO_FILE* %93, null
  br i1 %tobool1.i, label %if.end52, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i133
  %idxprom.i = sext i32 %bASK to i64
  %arrayidx.i134 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom.i
  %94 = load i8** %arrayidx.i134, align 8, !tbaa !0
  %idxprom3.i = sext i32 %bVerb to i64
  %arrayidx4.i = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom3.i
  %95 = load i8** %arrayidx4.i, align 8, !tbaa !0
  %call5.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str25, i64 0, i64 0), i8* %call1, %struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i8* %94, i8* %95) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then2.i, %if.end.i133, %if.end47
  %96 = bitcast i32* %call48 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 466, i8* %96) #6
  %97 = load i32* %nres, align 4, !tbaa !3
  %cmp280.i = icmp sgt i32 %97, 0
  br i1 %cmp280.i, label %for.body.i139, label %for.end.i

for.cond.i:                                       ; preds = %for.body.i139
  %98 = trunc i64 %indvars.iv.next311.i to i32
  %cmp.i136 = icmp slt i32 %98, %97
  br i1 %cmp.i136, label %for.body.i139, label %for.end.i

for.body.i139:                                    ; preds = %if.end52, %for.cond.i
  %indvars.iv310.i = phi i64 [ %indvars.iv.next311.i, %for.cond.i ], [ 0, %if.end52 ]
  %i.0281.i = phi i32 [ %inc.i138, %for.cond.i ], [ 0, %if.end52 ]
  %arrayidx.i137 = getelementptr inbounds i32* %1, i64 %indvars.iv310.i
  %99 = load i32* %arrayidx.i137, align 4, !tbaa !1
  %cmp1.i = icmp eq i32 %99, 0
  %indvars.iv.next311.i = add i64 %indvars.iv310.i, 1
  %inc.i138 = add nsw i32 %i.0281.i, 1
  br i1 %cmp1.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i139, %for.cond.i, %if.end52
  %i.0.lcssa.i = phi i32 [ 0, %if.end52 ], [ %i.0281.i, %for.body.i139 ], [ %inc.i138, %for.cond.i ]
  %cmp3.i = icmp slt i32 %i.0.lcssa.i, %97
  br i1 %cmp3.i, label %if.then4.i, label %analyse_other.exit

if.then4.i:                                       ; preds = %for.end.i
  br i1 %tobool, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then4.i
  %puts.i141 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str76, i64 0, i64 0)) #4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.then4.i
  %nr.i142 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %100 = load i32* %nr.i142, align 4, !tbaa !3
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 180, i32 %100, i32 4) #6
  %101 = load i32* %nr.i142, align 4, !tbaa !3
  %cmp10274.i = icmp sgt i32 %101, 0
  br i1 %cmp10274.i, label %for.body11.lr.ph.i, label %for.end167.i

for.body11.lr.ph.i:                               ; preds = %if.end6.i
  %atom.i143 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %resname.i144 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body11.i

for.cond46.preheader.i:                           ; preds = %for.inc43.i
  %cmp47269.i = icmp sgt i32 %nrestp.1.i, 0
  br i1 %cmp47269.i, label %for.body49.lr.ph.i, label %for.end167.i

for.body49.lr.ph.i:                               ; preds = %for.cond46.preheader.i
  %tobool79.i = icmp eq i32 %bASK, 0
  %atomname140.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br label %for.body49.i

for.body11.i:                                     ; preds = %for.inc43.i, %for.body11.lr.ph.i
  %102 = phi i32 [ %101, %for.body11.lr.ph.i ], [ %113, %for.inc43.i ]
  %indvars.iv306.i = phi i64 [ 0, %for.body11.lr.ph.i ], [ %indvars.iv.next307.i, %for.inc43.i ]
  %nrestp.0277.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %nrestp.1.i, %for.inc43.i ]
  %restp.0276.i = phi i8** [ null, %for.body11.lr.ph.i ], [ %restp.1.i, %for.inc43.i ]
  %103 = load %struct.t_atom** %atom.i143, align 8, !tbaa !0
  %resnr14.i = getelementptr inbounds %struct.t_atom* %103, i64 %indvars.iv306.i, i32 7
  %104 = load i32* %resnr14.i, align 4, !tbaa !3
  %idxprom15.i = sext i32 %104 to i64
  %105 = load i8**** %resname.i144, align 8, !tbaa !0
  %arrayidx16.i145 = getelementptr inbounds i8*** %105, i64 %idxprom15.i
  %106 = load i8*** %arrayidx16.i145, align 8, !tbaa !0
  %107 = load i8** %106, align 8, !tbaa !0
  %arrayidx18.i146 = getelementptr inbounds i32* %1, i64 %idxprom15.i
  %108 = load i32* %arrayidx18.i146, align 4, !tbaa !1
  %cmp19.i147 = icmp eq i32 %108, 0
  br i1 %cmp19.i147, label %for.cond21.preheader.i, label %for.inc43.i

for.cond21.preheader.i:                           ; preds = %for.body11.i
  %cmp22271.i = icmp sgt i32 %nrestp.0277.i, 0
  br i1 %cmp22271.i, label %for.body23.i, label %for.end32.i

for.cond21.i:                                     ; preds = %for.body23.i
  %109 = trunc i64 %indvars.iv.next305.i to i32
  %cmp22.i = icmp slt i32 %109, %nrestp.0277.i
  br i1 %cmp22.i, label %for.body23.i, label %for.end32.i

for.body23.i:                                     ; preds = %for.cond21.preheader.i, %for.cond21.i
  %indvars.iv304.i = phi i64 [ %indvars.iv.next305.i, %for.cond21.i ], [ 0, %for.cond21.preheader.i ]
  %l.0272.i = phi i32 [ %inc31.i, %for.cond21.i ], [ 0, %for.cond21.preheader.i ]
  %arrayidx25.i = getelementptr inbounds i8** %restp.0276.i, i64 %indvars.iv304.i
  %110 = load i8** %arrayidx25.i, align 8, !tbaa !0
  %call26.i = call i32 @strcmp(i8* %110, i8* %107) #9
  %cmp27.i = icmp eq i32 %call26.i, 0
  %indvars.iv.next305.i = add i64 %indvars.iv304.i, 1
  %inc31.i = add nsw i32 %l.0272.i, 1
  br i1 %cmp27.i, label %for.end32.i, label %for.cond21.i

for.end32.i:                                      ; preds = %for.body23.i, %for.cond21.i, %for.cond21.preheader.i
  %l.0.lcssa.i = phi i32 [ 0, %for.cond21.preheader.i ], [ %l.0272.i, %for.body23.i ], [ %inc31.i, %for.cond21.i ]
  %cmp33.i = icmp eq i32 %l.0.lcssa.i, %nrestp.0277.i
  br i1 %cmp33.i, label %if.then34.i, label %for.inc43.i

if.then34.i:                                      ; preds = %for.end32.i
  %111 = bitcast i8** %restp.0276.i to i8*
  %inc35.i = add nsw i32 %nrestp.0277.i, 1
  %mul.i = shl i32 %inc35.i, 3
  %call37.i = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189, i8* %111, i32 %mul.i) #6
  %112 = bitcast i8* %call37.i to i8**
  %call38.i = call i8* @gmx_strdup(i8* %107) #6
  %idxprom39.i = sext i32 %nrestp.0277.i to i64
  %arrayidx40.i = getelementptr inbounds i8** %112, i64 %idxprom39.i
  store i8* %call38.i, i8** %arrayidx40.i, align 8, !tbaa !0
  %.pre317.i = load i32* %nr.i142, align 4, !tbaa !3
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %if.then34.i, %for.end32.i, %for.body11.i
  %113 = phi i32 [ %.pre317.i, %if.then34.i ], [ %102, %for.end32.i ], [ %102, %for.body11.i ]
  %restp.1.i = phi i8** [ %112, %if.then34.i ], [ %restp.0276.i, %for.end32.i ], [ %restp.0276.i, %for.body11.i ]
  %nrestp.1.i = phi i32 [ %inc35.i, %if.then34.i ], [ %nrestp.0277.i, %for.end32.i ], [ %nrestp.0277.i, %for.body11.i ]
  %indvars.iv.next307.i = add i64 %indvars.iv306.i, 1
  %114 = trunc i64 %indvars.iv.next307.i to i32
  %cmp10.i = icmp slt i32 %114, %113
  br i1 %cmp10.i, label %for.body11.i, label %for.cond46.preheader.i

for.body49.i:                                     ; preds = %for.inc165.for.body49_crit_edge.i, %for.body49.lr.ph.i
  %115 = phi i32 [ %113, %for.body49.lr.ph.i ], [ %.pre318.i, %for.inc165.for.body49_crit_edge.i ]
  %indvars.iv298.i = phi i64 [ 0, %for.body49.lr.ph.i ], [ %indvars.iv.next299.i, %for.inc165.for.body49_crit_edge.i ]
  %call51.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 195, i32 %115, i32 4) #6
  %116 = bitcast i8* %call51.i to i32*
  %117 = load i32* %nr.i142, align 4, !tbaa !3
  %cmp54251.i = icmp sgt i32 %117, 0
  %arrayidx65.i = getelementptr inbounds i8** %restp.1.i, i64 %indvars.iv298.i
  br i1 %cmp54251.i, label %for.body56.lr.ph.i, label %for.body49.for.end76_crit_edge.i

for.body49.for.end76_crit_edge.i:                 ; preds = %for.body49.i
  %.pre319.i = load i8** %arrayidx65.i, align 8, !tbaa !0
  br label %for.end76.i

for.body56.lr.ph.i:                               ; preds = %for.body49.i
  %.pre313.i = load %struct.t_atom** %atom.i143, align 8, !tbaa !0
  %.pre314.i = load i8**** %resname.i144, align 8, !tbaa !0
  %.pre315.i = load i8** %arrayidx65.i, align 8, !tbaa !0
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.inc74.i, %for.body56.lr.ph.i
  %118 = phi i32 [ %117, %for.body56.lr.ph.i ], [ %123, %for.inc74.i ]
  %indvars.iv.i148 = phi i64 [ 0, %for.body56.lr.ph.i ], [ %indvars.iv.next.i149, %for.inc74.i ]
  %naid.0253.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %naid.1.i, %for.inc74.i ]
  %resnr60.i = getelementptr inbounds %struct.t_atom* %.pre313.i, i64 %indvars.iv.i148, i32 7
  %119 = load i32* %resnr60.i, align 4, !tbaa !3
  %idxprom61.i = sext i32 %119 to i64
  %arrayidx63.i = getelementptr inbounds i8*** %.pre314.i, i64 %idxprom61.i
  %120 = load i8*** %arrayidx63.i, align 8, !tbaa !0
  %121 = load i8** %120, align 8, !tbaa !0
  %call66.i = call i32 @strcmp(i8* %.pre315.i, i8* %121) #9
  %cmp67.i = icmp eq i32 %call66.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %for.inc74.i

if.then69.i:                                      ; preds = %for.body56.i
  %inc70.i = add nsw i32 %naid.0253.i, 1
  %idxprom71.i = sext i32 %naid.0253.i to i64
  %arrayidx72.i = getelementptr inbounds i32* %116, i64 %idxprom71.i
  %122 = trunc i64 %indvars.iv.i148 to i32
  store i32 %122, i32* %arrayidx72.i, align 4, !tbaa !3
  %.pre316.i = load i32* %nr.i142, align 4, !tbaa !3
  br label %for.inc74.i

for.inc74.i:                                      ; preds = %if.then69.i, %for.body56.i
  %123 = phi i32 [ %.pre316.i, %if.then69.i ], [ %118, %for.body56.i ]
  %naid.1.i = phi i32 [ %inc70.i, %if.then69.i ], [ %naid.0253.i, %for.body56.i ]
  %indvars.iv.next.i149 = add i64 %indvars.iv.i148, 1
  %124 = trunc i64 %indvars.iv.next.i149 to i32
  %cmp54.i = icmp slt i32 %124, %123
  br i1 %cmp54.i, label %for.body56.i, label %for.end76.i

for.end76.i:                                      ; preds = %for.inc74.i, %for.body49.for.end76_crit_edge.i
  %125 = phi i8* [ %.pre319.i, %for.body49.for.end76_crit_edge.i ], [ %.pre315.i, %for.inc74.i ]
  %naid.0.lcssa.i = phi i32 [ 0, %for.body49.for.end76_crit_edge.i ], [ %naid.1.i, %for.inc74.i ]
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naid.0.lcssa.i, i32* %116, i8* %125) #6
  br i1 %tobool79.i, label %for.inc165.i, label %if.then80.i

if.then80.i:                                      ; preds = %for.end76.i
  %126 = load i8** %arrayidx65.i, align 8, !tbaa !0
  %call83.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i8* %126) #6
  %127 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call84.i = call i32 @fflush(%struct._IO_FILE* %127) #6
  %call85.i = call fastcc i32 @yn(i32 %bASK) #6
  %tobool86.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.i, label %if.end163.i, label %for.cond88.preheader.i

for.cond88.preheader.i:                           ; preds = %if.then80.i
  %cmp89257.i = icmp sgt i32 %naid.0.lcssa.i, 0
  br i1 %cmp89257.i, label %for.body91.i, label %if.end162.i

for.body91.i:                                     ; preds = %for.inc122.i, %for.cond88.preheader.i
  %indvars.iv288.i = phi i64 [ 0, %for.cond88.preheader.i ], [ %indvars.iv.next289.i, %for.inc122.i ]
  %natp.0260.i = phi i32 [ 0, %for.cond88.preheader.i ], [ %natp.1.i, %for.inc122.i ]
  %attp.1258.i = phi i8** [ null, %for.cond88.preheader.i ], [ %attp.2.i, %for.inc122.i ]
  %arrayidx93.i = getelementptr inbounds i32* %116, i64 %indvars.iv288.i
  %128 = load i32* %arrayidx93.i, align 4, !tbaa !3
  %idxprom94.i = sext i32 %128 to i64
  %129 = load i8**** %atomname140.i, align 8, !tbaa !0
  %arrayidx95.i = getelementptr inbounds i8*** %129, i64 %idxprom94.i
  %130 = load i8*** %arrayidx95.i, align 8, !tbaa !0
  %131 = load i8** %130, align 8, !tbaa !0
  %cmp97254.i = icmp sgt i32 %natp.0260.i, 0
  br i1 %cmp97254.i, label %for.body99.i, label %for.end109.i

for.cond96.i:                                     ; preds = %for.body99.i
  %132 = trunc i64 %indvars.iv.next287.i to i32
  %cmp97.i = icmp slt i32 %132, %natp.0260.i
  br i1 %cmp97.i, label %for.body99.i, label %for.end109.i

for.body99.i:                                     ; preds = %for.body91.i, %for.cond96.i
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %for.cond96.i ], [ 0, %for.body91.i ]
  %l.1255.i = phi i32 [ %inc108.i, %for.cond96.i ], [ 0, %for.body91.i ]
  %arrayidx101.i = getelementptr inbounds i8** %attp.1258.i, i64 %indvars.iv286.i
  %133 = load i8** %arrayidx101.i, align 8, !tbaa !0
  %call102.i = call i32 @strcmp(i8* %131, i8* %133) #9
  %cmp103.i = icmp eq i32 %call102.i, 0
  %indvars.iv.next287.i = add i64 %indvars.iv286.i, 1
  %inc108.i = add nsw i32 %l.1255.i, 1
  br i1 %cmp103.i, label %for.end109.i, label %for.cond96.i

for.end109.i:                                     ; preds = %for.body99.i, %for.cond96.i, %for.body91.i
  %l.1.lcssa.i = phi i32 [ 0, %for.body91.i ], [ %l.1255.i, %for.body99.i ], [ %inc108.i, %for.cond96.i ]
  %cmp110.i = icmp eq i32 %l.1.lcssa.i, %natp.0260.i
  br i1 %cmp110.i, label %if.then112.i, label %for.inc122.i

if.then112.i:                                     ; preds = %for.end109.i
  %134 = bitcast i8** %attp.1258.i to i8*
  %inc113.i = add nsw i32 %natp.0260.i, 1
  %mul115.i = shl i32 %inc113.i, 3
  %call117.i = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214, i8* %134, i32 %mul115.i) #6
  %135 = bitcast i8* %call117.i to i8**
  %idxprom119.i = sext i32 %natp.0260.i to i64
  %arrayidx120.i = getelementptr inbounds i8** %135, i64 %idxprom119.i
  store i8* %131, i8** %arrayidx120.i, align 8, !tbaa !0
  br label %for.inc122.i

for.inc122.i:                                     ; preds = %if.then112.i, %for.end109.i
  %attp.2.i = phi i8** [ %135, %if.then112.i ], [ %attp.1258.i, %for.end109.i ]
  %natp.1.i = phi i32 [ %inc113.i, %if.then112.i ], [ %natp.0260.i, %for.end109.i ]
  %indvars.iv.next289.i = add i64 %indvars.iv288.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next289.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %naid.0.lcssa.i
  br i1 %exitcond, label %for.end124.i, label %for.body91.i

for.end124.i:                                     ; preds = %for.inc122.i
  %cmp125.i152 = icmp sgt i32 %natp.1.i, 1
  br i1 %cmp125.i152, label %for.body136.lr.ph.i, label %if.end162.i

for.body136.lr.ph.i:                              ; preds = %for.end156.i, %for.end124.i
  %indvars.iv294.i = phi i64 [ %indvars.iv.next295.i, %for.end156.i ], [ 0, %for.end124.i ]
  %call132.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 220, i32 %naid.0.lcssa.i, i32 4) #6
  %136 = bitcast i8* %call132.i to i32*
  %arrayidx143.i = getelementptr inbounds i8** %attp.2.i, i64 %indvars.iv294.i
  %.pre.i153 = load i8**** %atomname140.i, align 8, !tbaa !0
  %.pre312.i = load i8** %arrayidx143.i, align 8, !tbaa !0
  br label %for.body136.i

for.body136.i:                                    ; preds = %for.inc154.i, %for.body136.lr.ph.i
  %indvars.iv290.i = phi i64 [ 0, %for.body136.lr.ph.i ], [ %indvars.iv.next291.i, %for.inc154.i ]
  %naaid.0265.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %naaid.1.i, %for.inc154.i ]
  %arrayidx138.i = getelementptr inbounds i32* %116, i64 %indvars.iv290.i
  %137 = load i32* %arrayidx138.i, align 4, !tbaa !3
  %idxprom139.i = sext i32 %137 to i64
  %arrayidx141.i = getelementptr inbounds i8*** %.pre.i153, i64 %idxprom139.i
  %138 = load i8*** %arrayidx141.i, align 8, !tbaa !0
  %139 = load i8** %138, align 8, !tbaa !0
  %call144.i = call i32 @strcmp(i8* %139, i8* %.pre312.i) #9
  %cmp145.i = icmp eq i32 %call144.i, 0
  br i1 %cmp145.i, label %if.then147.i, label %for.inc154.i

if.then147.i:                                     ; preds = %for.body136.i
  %inc150.i = add nsw i32 %naaid.0265.i, 1
  %idxprom151.i = sext i32 %naaid.0265.i to i64
  %arrayidx152.i = getelementptr inbounds i32* %136, i64 %idxprom151.i
  store i32 %137, i32* %arrayidx152.i, align 4, !tbaa !3
  br label %for.inc154.i

for.inc154.i:                                     ; preds = %if.then147.i, %for.body136.i
  %naaid.1.i = phi i32 [ %inc150.i, %if.then147.i ], [ %naaid.0265.i, %for.body136.i ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1
  %lftr.wideiv173 = trunc i64 %indvars.iv.next291.i to i32
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %naid.0.lcssa.i
  br i1 %exitcond174, label %for.end156.i, label %for.body136.i

for.end156.i:                                     ; preds = %for.inc154.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naaid.1.i, i32* %136, i8* %.pre312.i) #6
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 228, i8* %call132.i) #6
  %indvars.iv.next295.i = add i64 %indvars.iv294.i, 1
  %lftr.wideiv175 = trunc i64 %indvars.iv.next295.i to i32
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %natp.1.i
  br i1 %exitcond176, label %if.end162.i, label %for.body136.lr.ph.i

if.end162.i:                                      ; preds = %for.end156.i, %for.end124.i, %for.cond88.preheader.i
  %attp.1.lcssa323.i = phi i8** [ %attp.2.i, %for.end124.i ], [ null, %for.cond88.preheader.i ], [ %attp.2.i, %for.end156.i ]
  %140 = bitcast i8** %attp.1.lcssa323.i to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 231, i8* %140) #6
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.end162.i, %if.then80.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 234, i8* %call51.i) #6
  br label %for.inc165.i

for.inc165.i:                                     ; preds = %if.end163.i, %for.end76.i
  %indvars.iv.next299.i = add i64 %indvars.iv298.i, 1
  %lftr.wideiv300.i = trunc i64 %indvars.iv.next299.i to i32
  %exitcond301.i = icmp eq i32 %lftr.wideiv300.i, %nrestp.1.i
  br i1 %exitcond301.i, label %for.end167.i, label %for.inc165.for.body49_crit_edge.i

for.inc165.for.body49_crit_edge.i:                ; preds = %for.inc165.i
  %.pre318.i = load i32* %nr.i142, align 4, !tbaa !3
  br label %for.body49.i

for.end167.i:                                     ; preds = %for.inc165.i, %for.cond46.preheader.i, %if.end6.i
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237, i8* %call7.i) #6
  br label %analyse_other.exit

analyse_other.exit:                               ; preds = %for.end.i, %for.end167.i
  %call53 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 0, i32* %nra, i32 1) #7
  %141 = load i32* %nra, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %141, 0
  br i1 %cmp54, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %analyse_other.exit
  %nr57 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %142 = load i32* %nr57, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %141, %142
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true56
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %141, i32* %call53, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0)) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true56, %analyse_other.exit
  %143 = bitcast i32* %call53 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473, i8* %143) #6
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 474, i8* %call1) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yn(i32 %bASK) #0 {
entry:
  %tobool = icmp eq i32 %bASK, 0
  br i1 %tobool, label %return, label %do.body

do.body:                                          ; preds = %entry, %do.body
  %0 = load %struct._IO_FILE** @stdin, align 8, !tbaa !0
  %call = tail call i32 @fgetc(%struct._IO_FILE* %0) #6
  %call1 = tail call i32 @toupper(i32 %call) #6
  %sext = shl i32 %call1, 24
  %conv2 = ashr exact i32 %sext, 24
  switch i32 %conv2, label %do.body [
    i32 89, label %do.end
    i32 78, label %do.end
  ]

do.end:                                           ; preds = %do.body, %do.body
  %cmp8 = icmp eq i32 %conv2, 89
  %conv9 = zext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %entry, %do.end
  %retval.0 = phi i32 [ %conv9, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare i32 @gmx_strncasecmp(i8*, i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
