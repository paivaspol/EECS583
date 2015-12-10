; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/index.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/index.c\00", align 1
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
@Sugars = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i32 0, i32 0)], align 16
@.str16 = private unnamed_addr constant [12 x i8] c"Non-Protein\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"DNA\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str21 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str22 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"There are: %5d %10s residues\0A\00", align 1
@ResTP = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0)], align 16
@.str25 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"PROTEIN\00", align 1
@analyse_prot.pnoh = internal global [1 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str27, i32 0, i32 0)], align 8
@.str27 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@analyse_prot.pnodum = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0)], align 16
@.str28 = private unnamed_addr constant [4 x i8] c"MN1\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"MN2\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"MCB1\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"MCB2\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c"MCG1\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"MCG2\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c"MCD1\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"MCD2\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"MCE1\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"MCE2\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"MNZ1\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"MNZ2\00", align 1
@analyse_prot.calpha = internal global [1 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0)], align 8
@.str40 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@analyse_prot.bb = internal global [3 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0)], align 16
@.str41 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@analyse_prot.mc = internal global [7 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0)], align 16
@.str42 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"O1\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"O2\00", align 1
@.str45 = private unnamed_addr constant [4 x i8] c"OXT\00", align 1
@analyse_prot.mcb = internal global [9 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0)], align 16
@.str46 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"OT\00", align 1
@analyse_prot.mch = internal global [12 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str27, i32 0, i32 0)], align 16
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
@__stdinp = external global %struct.__sFILE*
@debug = external global %struct.__sFILE*
@.str68 = private unnamed_addr constant [52 x i8] c"eRestp %p; atoms %p; gb %p; gn %p; bASK %s; bASK %s\00", align 1
@bool_names = external global [3 x i8*]
@.str70 = private unnamed_addr constant [10 x i8] c"other_ndx\00", align 1
@.str71 = private unnamed_addr constant [29 x i8] c"split %s into atoms (y/n) ? \00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str72 = private unnamed_addr constant [5 x i8] c"attp\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"aaid\00", align 1
@str = private unnamed_addr constant [25 x i8] c"Analysing residue names:\00"
@str74 = private unnamed_addr constant [21 x i8] c"Analysing Protein...\00"
@str75 = private unnamed_addr constant [30 x i8] c"Analysing DNA... (not really)\00"
@str76 = private unnamed_addr constant [19 x i8] c"Analysing Other...\00"

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_block* @new_block() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 73, i32 1, i32 1056) #7
  %2 = bitcast i8* %1 to %struct.t_block*
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 74, i32 1, i32 4) #7
  %4 = getelementptr inbounds i8* %1, i64 1032
  %5 = bitcast i8* %4 to i8**
  store i8* %3, i8** %5, align 8, !tbaa !14
  ret %struct.t_block* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_index(i8* %outf, %struct.t_block* nocapture readonly %b, i8** nocapture readonly %gnames) #3 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %outf, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7
  %2 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1
  %3 = load i32* %2, align 4, !tbaa !16
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %0
  %5 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2
  %6 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4
  br label %7

; <label>:7                                       ; preds = %.lr.ph8, %._crit_edge
  %indvars.iv10 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next11, %._crit_edge ]
  %8 = getelementptr inbounds i8** %gnames, i64 %indvars.iv10
  %9 = load i8** %8, align 8, !tbaa !17
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* %9) #7
  %11 = load i32** %5, align 8, !tbaa !14
  %12 = getelementptr inbounds i32* %11, i64 %indvars.iv10
  %13 = load i32* %12, align 4, !tbaa !18
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %14 = getelementptr inbounds i32* %11, i64 %indvars.iv.next11
  %15 = load i32* %14, align 4, !tbaa !18
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %7
  %17 = sext i32 %13 to i64
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %27
  %indvars.iv = phi i64 [ %17, %.lr.ph ], [ %indvars.iv.next, %27 ]
  %k.05 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %19 = load i32** %6, align 8, !tbaa !19
  %20 = getelementptr inbounds i32* %19, i64 %indvars.iv
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = add nsw i32 %21, 1
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %22) #7
  %24 = srem i32 %k.05, 15
  %25 = icmp eq i32 %24, 14
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %18
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %1)
  br label %27

; <label>:27                                      ; preds = %18, %26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %28 = add nuw nsw i32 %k.05, 1
  %29 = load i32** %5, align 8, !tbaa !14
  %30 = getelementptr inbounds i32* %29, i64 %indvars.iv.next11
  %31 = load i32* %30, align 4, !tbaa !18
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %indvars.iv.next, %32
  br i1 %33, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %27, %7
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1)
  %34 = load i32* %2, align 4, !tbaa !16
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %indvars.iv.next11, %35
  br i1 %36, label %7, label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge, %0
  tail call void @ffclose(%struct.__sFILE* %1) #7
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @add_grp(%struct.t_block* nocapture %b, i8*** nocapture %gnames, i32 %nra, i32* nocapture readonly %a, i8* nocapture readonly %name) #3 {
  %1 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2
  %2 = bitcast i32** %1 to i8**
  %3 = load i8** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !16
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 8
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 102, i8* %3, i32 %7) #7
  store i8* %8, i8** %2, align 8, !tbaa !14
  %9 = bitcast i8*** %gnames to i8**
  %10 = load i8** %9, align 8, !tbaa !17
  %11 = load i32* %4, align 4, !tbaa !16
  %12 = shl i32 %11, 3
  %13 = add i32 %12, 8
  %14 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 103, i8* %10, i32 %13) #7
  store i8* %14, i8** %9, align 8, !tbaa !17
  %15 = tail call i8* @strdup(i8* %name) #7
  %16 = load i32* %4, align 4, !tbaa !16
  %17 = sext i32 %16 to i64
  %18 = load i8*** %gnames, align 8, !tbaa !17
  %19 = getelementptr inbounds i8** %18, i64 %17
  store i8* %15, i8** %19, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4
  %21 = bitcast i32** %20 to i8**
  %22 = load i8** %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 3
  %24 = load i32* %23, align 4, !tbaa !20
  %25 = add nsw i32 %24, %nra
  %26 = shl i32 %25, 2
  %27 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 106, i8* %22, i32 %26) #7
  store i8* %27, i8** %21, align 8, !tbaa !19
  %28 = icmp sgt i32 %nra, 0
  %29 = bitcast i8* %27 to i32*
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %30 = add i32 %nra, -1
  br label %31

; <label>:31                                      ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %32 = getelementptr inbounds i32* %a, i64 %indvars.iv
  %33 = load i32* %32, align 4, !tbaa !18
  %34 = load i32* %23, align 4, !tbaa !20
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %23, align 4, !tbaa !20
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32* %29, i64 %36
  store i32 %33, i32* %37, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %30
  br i1 %exitcond, label %._crit_edge, label %31

._crit_edge:                                      ; preds = %31, %0
  %38 = load i32* %4, align 4, !tbaa !16
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4, !tbaa !16
  %40 = load i32* %23, align 4, !tbaa !20
  %41 = sext i32 %39 to i64
  %42 = load i32** %1, align 8, !tbaa !14
  %43 = getelementptr inbounds i32* %42, i64 %41
  store i32 %40, i32* %43, align 4, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32* @mk_aid(%struct.t_atoms* nocapture readonly %atoms, i32* nocapture readonly %restp, i32 %res, i32* nocapture %nra, i32 %bTrue) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155, i32 %2, i32 4) #7
  %4 = bitcast i8* %3 to i32*
  store i32 0, i32* %nra, align 4, !tbaa !18
  %5 = load i32* %1, align 4, !tbaa !21
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %.pre = load %struct.t_atom** %7, align 8, !tbaa !23
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %24
  %9 = phi i32 [ %5, %.lr.ph ], [ %25, %24 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %10 = getelementptr inbounds %struct.t_atom* %.pre, i64 %indvars.iv, i32 7
  %11 = load i32* %10, align 4, !tbaa !24
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32* %restp, i64 %12
  %14 = load i32* %13, align 4, !tbaa !13
  %15 = icmp eq i32 %14, %res
  %16 = zext i1 %15 to i32
  %17 = icmp eq i32 %16, %bTrue
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %8
  %19 = load i32* %nra, align 4, !tbaa !18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %nra, align 4, !tbaa !18
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32* %4, i64 %21
  %23 = trunc i64 %indvars.iv to i32
  store i32 %23, i32* %22, align 4, !tbaa !18
  %.pre2 = load i32* %1, align 4, !tbaa !21
  br label %24

; <label>:24                                      ; preds = %8, %18
  %25 = phi i32 [ %9, %8 ], [ %.pre2, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next, %26
  br i1 %27, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %24, %0
  ret i32* %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @is_protein(i8* nocapture readonly %resnm) #3 {
  %.b = load i1* @is_protein.bRead, align 1
  br i1 %.b, label %..preheader_crit_edge, label %1

..preheader_crit_edge:                            ; preds = %0
  %.pre = load i32* @is_protein.naa, align 4, !tbaa !18
  br label %.preheader

; <label>:1                                       ; preds = %0
  %2 = tail call i32 @get_strings(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8*** @is_protein.aas) #7
  store i32 %2, i32* @is_protein.naa, align 4, !tbaa !18
  store i1 true, i1* @is_protein.bRead, align 1
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %1
  %3 = phi i32 [ %.pre, %..preheader_crit_edge ], [ %2, %1 ]
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %5 = load i8*** @is_protein.aas, align 8, !tbaa !17
  %6 = sext i32 %3 to i64
  br label %9

; <label>:7                                       ; preds = %9
  %8 = icmp slt i64 %indvars.iv.next, %6
  br i1 %8, label %9, label %._crit_edge

; <label>:9                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %10 = getelementptr inbounds i8** %5, i64 %indvars.iv
  %11 = load i8** %10, align 8, !tbaa !17
  %12 = tail call i32 @strcasecmp(i8* %11, i8* %resnm) #7
  %13 = icmp eq i32 %12, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %13, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %9, %7, %.preheader
  %.0 = phi i32 [ 0, %.preheader ], [ 1, %9 ], [ 0, %7 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @get_strings(i8*, i8***) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i32 %bASK, i32 %bVerb) #3 {
  %ndx_name.i = alloca [4096 x i8], align 16
  %ntp.i = alloca [3 x i32], align 4
  %nra = alloca i32, align 4
  %1 = icmp eq i32 %bVerb, 0
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str, i64 0, i64 0))
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %5 = load i32* %4, align 4, !tbaa !27
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430, i32 %5, i32 4) #7
  %7 = bitcast i8* %6 to i32*
  %8 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 0, i32* %nra, i32 1) #8
  %9 = load i32* %nra, align 4, !tbaa !18
  tail call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %9, i32* %8, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #8
  %10 = bitcast i32* %8 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 433, i8* %10) #7
  %11 = load i32* %4, align 4, !tbaa !27
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph46, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %3
  %13 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13)
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 12, i32 4, i1 false) #6
  br label %._crit_edge.i

.lr.ph46:                                         ; preds = %3
  %14 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %15

; <label>:15                                      ; preds = %.lr.ph46, %.thread
  %indvars.iv64 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next65, %.thread ]
  %16 = load i8**** %14, align 8, !tbaa !28
  %17 = getelementptr inbounds i8*** %16, i64 %indvars.iv64
  %18 = load i8*** %17, align 8, !tbaa !17
  %19 = load i8** %18, align 8, !tbaa !17
  %20 = getelementptr inbounds i32* %7, i64 %indvars.iv64
  %21 = load i32* %20, align 4, !tbaa !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %.thread

; <label>:23                                      ; preds = %15
  %24 = tail call i32 @is_protein(i8* %19) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

; <label>:26                                      ; preds = %23
  store i32 1, i32* %20, align 4, !tbaa !13
  br label %.thread

; <label>:27                                      ; preds = %23
  %.pr = load i32* %20, align 4, !tbaa !13
  %28 = icmp eq i32 %.pr, 0
  br i1 %28, label %.preheader, label %.thread

.preheader:                                       ; preds = %27, %34
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ 0, %27 ]
  %29 = getelementptr inbounds [5 x i8*]* @Sugars, i64 0, i64 %indvars.iv
  %30 = load i8** %29, align 8, !tbaa !17
  %31 = tail call i32 @strcasecmp(i8* %30, i8* %19) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %.preheader
  store i32 2, i32* %20, align 4, !tbaa !13
  br label %34

; <label>:34                                      ; preds = %.preheader, %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond63 = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond63, label %.thread, label %.preheader

.thread:                                          ; preds = %34, %15, %26, %27
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %35 = load i32* %4, align 4, !tbaa !27
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %indvars.iv.next65, %36
  br i1 %37, label %15, label %._crit_edge

._crit_edge:                                      ; preds = %.thread
  %38 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %38)
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 12, i32 4, i1 false) #6
  %39 = icmp sgt i32 %35, 0
  br i1 %39, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %40 = add i32 %35, -1
  br label %41

; <label>:41                                      ; preds = %41, %.lr.ph.i
  %indvars.iv5.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next6.i, %41 ]
  %42 = getelementptr inbounds i32* %7, i64 %indvars.iv5.i
  %43 = load i32* %42, align 4, !tbaa !13
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %44
  %46 = load i32* %45, align 4, !tbaa !18
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !18
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %lftr.wideiv61 = trunc i64 %indvars.iv5.i to i32
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %40
  br i1 %exitcond62, label %._crit_edge.i, label %41

._crit_edge.i:                                    ; preds = %41, %._crit_edge.thread, %._crit_edge
  %48 = phi i8* [ %13, %._crit_edge.thread ], [ %38, %._crit_edge ], [ %38, %41 ]
  br i1 %1, label %p_status.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %._crit_edge.i ]
  %49 = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %indvars.iv.i
  %50 = load i32* %49, align 4, !tbaa !18
  %51 = getelementptr inbounds [3 x i8*]* @ResTP, i64 0, i64 %indvars.iv.i
  %52 = load i8** %51, align 8, !tbaa !17
  %53 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i32 %50, i8* %52) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %p_status.exit, label %.preheader.i

p_status.exit:                                    ; preds = %.preheader.i, %._crit_edge.i
  call void @llvm.lifetime.end(i64 12, i8* %48)
  %54 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 1, i32* %nra, i32 1) #8
  %55 = load i32* %nra, align 4, !tbaa !18
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %299

; <label>:57                                      ; preds = %p_status.exit
  %58 = getelementptr inbounds [4096 x i8]* %ndx_name.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %58) #6
  br i1 %1, label %60, label %59

; <label>:59                                      ; preds = %57
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str74, i64 0, i64 0)) #6
  br label %60

; <label>:60                                      ; preds = %59, %57
  %61 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %62 = load i32* %61, align 4, !tbaa !21
  %63 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 292, i32 %62, i32 4) #7
  %64 = bitcast i8* %63 to i32*
  %65 = load i32* %4, align 4, !tbaa !27
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %.lr.ph64.i, label %.preheader15.i

.lr.ph64.i:                                       ; preds = %60
  %67 = sext i32 %65 to i64
  %68 = add nsw i64 %67, -1
  br label %74

.preheader15.i:                                   ; preds = %74, %60
  %npres.0.lcssa.i = phi i32 [ 0, %60 ], [ %.npres.0.i, %74 ]
  %69 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 1
  %70 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 2
  %71 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 4
  %72 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %73 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br label %.preheader14.i

; <label>:74                                      ; preds = %74, %.lr.ph64.i
  %indvars.iv85.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next86.i, %74 ]
  %npres.061.i = phi i32 [ 0, %.lr.ph64.i ], [ %.npres.0.i, %74 ]
  %75 = getelementptr inbounds i32* %7, i64 %indvars.iv85.i
  %76 = load i32* %75, align 4, !tbaa !13
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %.npres.0.i = add nsw i32 %78, %npres.061.i
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1
  %exitcond60 = icmp eq i64 %indvars.iv85.i, %68
  br i1 %exitcond60, label %.preheader15.i, label %74

.preheader14.i:                                   ; preds = %grp_cmp.exit.thread8.i, %.preheader15.i
  %indvars.iv82.i = phi i64 [ 0, %.preheader15.i ], [ %indvars.iv.next83.i, %grp_cmp.exit.thread8.i ]
  %79 = load i32* %61, align 4, !tbaa !21
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %.lr.ph56.i, label %.preheader14.i.._crit_edge57.i_crit_edge

.preheader14.i.._crit_edge57.i_crit_edge:         ; preds = %.preheader14.i
  %.pre66 = trunc i64 %indvars.iv82.i to i32
  br label %._crit_edge57.i

.lr.ph56.i:                                       ; preds = %.preheader14.i
  %81 = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv82.i
  %82 = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv82.i
  %83 = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv82.i
  %84 = getelementptr inbounds [10 x i32]* @analyse_prot.wholename, i64 0, i64 %indvars.iv82.i
  %.pre.i = load %struct.t_atom** %72, align 8, !tbaa !23
  %85 = icmp eq i64 %indvars.iv82.i, 0
  %86 = trunc i64 %indvars.iv82.i to i32
  br label %87

; <label>:87                                      ; preds = %132, %.lr.ph56.i
  %88 = phi i32 [ %79, %.lr.ph56.i ], [ %133, %132 ]
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph56.i ], [ %indvars.iv.next81.i, %132 ]
  %nra.054.i = phi i32 [ 0, %.lr.ph56.i ], [ %nra.1.i, %132 ]
  %89 = getelementptr inbounds %struct.t_atom* %.pre.i, i64 %indvars.iv80.i, i32 7
  %90 = load i32* %89, align 4, !tbaa !24
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32* %7, i64 %91
  %93 = load i32* %92, align 4, !tbaa !13
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %.preheader13.i, label %132

.preheader13.i:                                   ; preds = %87
  br i1 %85, label %._crit_edge52.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.preheader13.i
  %95 = load i8**** %73, align 8, !tbaa !29
  %96 = getelementptr inbounds i8*** %95, i64 %indvars.iv80.i
  %97 = load i8*** %96, align 8, !tbaa !17
  %98 = load i8** %97, align 8, !tbaa !17
  %99 = load i32* %81, align 4, !tbaa !18
  %100 = sext i32 %99 to i64
  br label %101

; <label>:101                                     ; preds = %122, %.lr.ph51.i
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph51.i ], [ %indvars.iv.next79.i, %122 ]
  %match.050.i = phi i32 [ 0, %.lr.ph51.i ], [ %.match.05.i, %122 ]
  br label %102

; <label>:102                                     ; preds = %102, %101
  %atnm.0.i = phi i8* [ %98, %101 ], [ %105, %102 ]
  %103 = load i8* %atnm.0.i, align 1, !tbaa !13
  %104 = sext i8 %103 to i32
  %isdigittmp.i = add nsw i32 %104, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  %105 = getelementptr inbounds i8* %atnm.0.i, i64 1
  br i1 %isdigit.i, label %102, label %106

; <label>:106                                     ; preds = %102
  switch i32 %86, label %111 [
    i32 8, label %107
    i32 1, label %107
  ]

; <label>:107                                     ; preds = %106, %106
  %108 = load i32* %84, align 4, !tbaa !18
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %indvars.iv78.i, %109
  br i1 %110, label %111, label %116

; <label>:111                                     ; preds = %107, %106
  %112 = load i8*** %83, align 8, !tbaa !17
  %113 = getelementptr inbounds i8** %112, i64 %indvars.iv78.i
  %114 = load i8** %113, align 8, !tbaa !17
  %115 = tail call i32 @strcasecmp(i8* %114, i8* %atnm.0.i) #7
  br label %122

; <label>:116                                     ; preds = %107
  %117 = load i8*** %83, align 8, !tbaa !17
  %118 = getelementptr inbounds i8** %117, i64 %indvars.iv78.i
  %119 = load i8** %118, align 8, !tbaa !17
  %120 = tail call i64 @strlen(i8* %119) #7
  %121 = tail call i32 @strncasecmp(i8* %119, i8* %atnm.0.i, i64 %120) #7
  br label %122

; <label>:122                                     ; preds = %116, %111
  %.sink6.i = phi i32 [ %121, %116 ], [ %115, %111 ]
  %123 = icmp eq i32 %.sink6.i, 0
  %.match.05.i = select i1 %123, i32 1, i32 %match.050.i
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1
  %124 = icmp slt i64 %indvars.iv.next79.i, %100
  br i1 %124, label %101, label %._crit_edge52.i

._crit_edge52.i:                                  ; preds = %122, %.preheader13.i
  %match.0.lcssa.i = phi i32 [ 0, %.preheader13.i ], [ %.match.05.i, %122 ]
  %125 = load i32* %82, align 4, !tbaa !18
  %126 = icmp eq i32 %match.0.lcssa.i, %125
  br i1 %126, label %132, label %127

; <label>:127                                     ; preds = %._crit_edge52.i
  %128 = add nsw i32 %nra.054.i, 1
  %129 = sext i32 %nra.054.i to i64
  %130 = getelementptr inbounds i32* %64, i64 %129
  %131 = trunc i64 %indvars.iv80.i to i32
  store i32 %131, i32* %130, align 4, !tbaa !18
  %.pre87.i = load i32* %61, align 4, !tbaa !21
  br label %132

; <label>:132                                     ; preds = %127, %._crit_edge52.i, %87
  %133 = phi i32 [ %.pre87.i, %127 ], [ %88, %._crit_edge52.i ], [ %88, %87 ]
  %nra.1.i = phi i32 [ %128, %127 ], [ %nra.054.i, %._crit_edge52.i ], [ %nra.054.i, %87 ]
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %indvars.iv.next81.i, %134
  br i1 %135, label %87, label %._crit_edge57.i

._crit_edge57.i:                                  ; preds = %132, %.preheader14.i.._crit_edge57.i_crit_edge
  %.pre-phi = phi i32 [ %.pre66, %.preheader14.i.._crit_edge57.i_crit_edge ], [ %86, %132 ]
  %nra.0.lcssa.i = phi i32 [ 0, %.preheader14.i.._crit_edge57.i_crit_edge ], [ %nra.1.i, %132 ]
  %136 = icmp eq i32 %.pre-phi, 9
  br i1 %136, label %._crit_edge.i.i, label %grp_cmp.exit.thread.i

._crit_edge.i.i:                                  ; preds = %._crit_edge57.i
  %137 = getelementptr inbounds [10 x i32]* @analyse_prot.compareto, i64 0, i64 %indvars.iv82.i
  %138 = load i32* %137, align 4, !tbaa !18
  %139 = load i32* %69, align 4, !tbaa !16
  %140 = add i32 %138, -10
  %141 = add i32 %140, %139
  %142 = icmp slt i32 %141, %139
  br i1 %142, label %144, label %143

; <label>:143                                     ; preds = %._crit_edge.i.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str66, i64 0, i64 0), i32 %141, i32 %139) #7
  br label %144

; <label>:144                                     ; preds = %143, %._crit_edge.i.i
  %145 = add nsw i32 %141, 1
  %146 = sext i32 %145 to i64
  %147 = load i32** %70, align 8, !tbaa !14
  %148 = getelementptr inbounds i32* %147, i64 %146
  %149 = load i32* %148, align 4, !tbaa !18
  %150 = sext i32 %141 to i64
  %151 = getelementptr inbounds i32* %147, i64 %150
  %152 = load i32* %151, align 4, !tbaa !18
  %153 = sub nsw i32 %149, %152
  %154 = icmp eq i32 %153, %nra.0.lcssa.i
  br i1 %154, label %.preheader.i.i, label %grp_cmp.exit.thread.i

.preheader.i.i:                                   ; preds = %144
  %155 = icmp sgt i32 %nra.0.lcssa.i, 0
  br i1 %155, label %.lr.ph.i.i, label %grp_cmp.exit.thread8.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %156 = load i32** %71, align 8, !tbaa !19
  %157 = sext i32 %152 to i64
  %158 = sext i32 %nra.0.lcssa.i to i64
  br label %161

; <label>:159                                     ; preds = %161
  %160 = icmp slt i64 %indvars.iv.next.i.i, %158
  br i1 %160, label %161, label %grp_cmp.exit.thread8.i

; <label>:161                                     ; preds = %159, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %159 ]
  %162 = getelementptr inbounds i32* %64, i64 %indvars.iv.i.i
  %163 = load i32* %162, align 4, !tbaa !18
  %164 = add nsw i64 %indvars.iv.i.i, %157
  %165 = getelementptr inbounds i32* %156, i64 %164
  %166 = load i32* %165, align 4, !tbaa !18
  %167 = icmp eq i32 %163, %166
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %167, label %159, label %grp_cmp.exit.thread.i

grp_cmp.exit.thread.i:                            ; preds = %161, %144, %._crit_edge57.i
  %168 = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv82.i
  %169 = load i8** %168, align 8, !tbaa !17
  tail call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.0.lcssa.i, i32* %64, i8* %169) #7
  br label %grp_cmp.exit.thread8.i

grp_cmp.exit.thread8.i:                           ; preds = %159, %grp_cmp.exit.thread.i, %.preheader.i.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  %exitcond84.i = icmp eq i64 %indvars.iv.next83.i, 10
  br i1 %exitcond84.i, label %170, label %.preheader14.i

; <label>:170                                     ; preds = %grp_cmp.exit.thread8.i
  %171 = icmp eq i32 %bASK, 0
  br i1 %171, label %analyse_prot.exit, label %.preheader12.i

.preheader12.i:                                   ; preds = %170
  %172 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %173

; <label>:173                                     ; preds = %.critedge.i, %.preheader12.i
  %indvars.iv76.i = phi i64 [ 0, %.preheader12.i ], [ %indvars.iv.next77.i, %.critedge.i ]
  %174 = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv76.i
  %175 = load i8** %174, align 8, !tbaa !17
  %176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str62, i64 0, i64 0), i8* %175, i32 %npres.0.lcssa.i) #7
  %177 = call fastcc i32 @yn(i32 %bASK) #7
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %.critedge.i, label %.preheader11.i

.preheader11.i:                                   ; preds = %173
  %179 = load %struct.t_atom** %72, align 8, !tbaa !23
  %180 = getelementptr inbounds %struct.t_atom* %179, i64 0, i32 7
  %181 = load i32* %180, align 4, !tbaa !24
  %182 = icmp slt i32 %181, %npres.0.lcssa.i
  br i1 %182, label %.lr.ph44.i, label %.critedge.i

.lr.ph44.i:                                       ; preds = %.preheader11.i
  %183 = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv76.i
  %184 = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv76.i
  %185 = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv76.i
  %186 = icmp eq i64 %indvars.iv76.i, 0
  br label %187

; <label>:187                                     ; preds = %.backedge.i, %.lr.ph44.i
  %188 = phi %struct.t_atom* [ %179, %.lr.ph44.i ], [ %229, %.backedge.i ]
  %189 = phi i32 [ %181, %.lr.ph44.i ], [ %232, %.backedge.i ]
  %n.143.i = phi i32 [ 0, %.lr.ph44.i ], [ %219, %.backedge.i ]
  %nra.242.i = phi i32 [ 0, %.lr.ph44.i ], [ %nra.2.be.i, %.backedge.i ]
  %190 = load i32* %61, align 4, !tbaa !21
  %191 = icmp slt i32 %n.143.i, %190
  br i1 %191, label %.preheader9.i.lr.ph, label %.critedge.i

.preheader9.i.lr.ph:                              ; preds = %187
  %192 = sext i32 %n.143.i to i64
  %193 = load i32* %184, align 4, !tbaa !18
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %.preheader9.i.lr.ph, %._crit_edge88.i
  %nra.334.i38 = phi i32 [ %nra.242.i, %.preheader9.i.lr.ph ], [ %nra.4.i, %._crit_edge88.i ]
  %indvars.iv74.i37 = phi i64 [ %192, %.preheader9.i.lr.ph ], [ %indvars.iv.next75.i, %._crit_edge88.i ]
  br i1 %186, label %._crit_edge.i1, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.preheader9.i
  %194 = load i8*** %185, align 8, !tbaa !17
  %195 = load i8**** %73, align 8, !tbaa !29
  %196 = getelementptr inbounds i8*** %195, i64 %indvars.iv74.i37
  %197 = load i8*** %196, align 8, !tbaa !17
  %198 = load i8** %197, align 8, !tbaa !17
  %199 = load i32* %183, align 4, !tbaa !18
  %200 = sext i32 %199 to i64
  br label %201

; <label>:201                                     ; preds = %201, %.lr.ph32.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph32.i ], [ %indvars.iv.next73.i, %201 ]
  %match.231.i = phi i32 [ 0, %.lr.ph32.i ], [ %.match.2.i, %201 ]
  %202 = getelementptr inbounds i8** %194, i64 %indvars.iv72.i
  %203 = load i8** %202, align 8, !tbaa !17
  %204 = call i32 @strcasecmp(i8* %203, i8* %198) #7
  %205 = icmp eq i32 %204, 0
  %.match.2.i = select i1 %205, i32 1, i32 %match.231.i
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %206 = icmp slt i64 %indvars.iv.next73.i, %200
  br i1 %206, label %201, label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %201, %.preheader9.i
  %match.2.lcssa.i = phi i32 [ 0, %.preheader9.i ], [ %.match.2.i, %201 ]
  %207 = icmp eq i32 %match.2.lcssa.i, %193
  br i1 %207, label %213, label %208

; <label>:208                                     ; preds = %._crit_edge.i1
  %209 = add nsw i32 %nra.334.i38, 1
  %210 = sext i32 %nra.334.i38 to i64
  %211 = getelementptr inbounds i32* %64, i64 %210
  %212 = trunc i64 %indvars.iv74.i37 to i32
  store i32 %212, i32* %211, align 4, !tbaa !18
  br label %213

; <label>:213                                     ; preds = %208, %._crit_edge.i1
  %nra.4.i = phi i32 [ %209, %208 ], [ %nra.334.i38, %._crit_edge.i1 ]
  %indvars.iv.next75.i = add nsw i64 %indvars.iv74.i37, 1
  %214 = getelementptr inbounds %struct.t_atom* %188, i64 %indvars.iv.next75.i, i32 7
  %215 = load i32* %214, align 4, !tbaa !24
  %216 = icmp eq i32 %215, %189
  br i1 %216, label %._crit_edge88.i, label %.critedge2.i

._crit_edge88.i:                                  ; preds = %213
  %.pre89.i = load i32* %61, align 4, !tbaa !21
  %217 = sext i32 %.pre89.i to i64
  %218 = icmp slt i64 %indvars.iv.next75.i, %217
  br i1 %218, label %.preheader9.i, label %.critedge2.i

.critedge2.i:                                     ; preds = %._crit_edge88.i, %213
  %219 = trunc i64 %indvars.iv.next75.i to i32
  %220 = icmp sgt i32 %nra.4.i, 0
  br i1 %220, label %221, label %.backedge.i

; <label>:221                                     ; preds = %.critedge2.i
  %222 = sext i32 %189 to i64
  %223 = load i8**** %172, align 8, !tbaa !28
  %224 = getelementptr inbounds i8*** %223, i64 %222
  %225 = load i8*** %224, align 8, !tbaa !17
  %226 = load i8** %225, align 8, !tbaa !17
  %227 = add nsw i32 %189, 1
  %228 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %58, i32 0, i64 4096, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* %175, i8* %226, i32 %227) #7
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.4.i, i32* %64, i8* %58) #7
  %.pre90.i = load %struct.t_atom** %72, align 8, !tbaa !23
  br label %.backedge.i

.backedge.i:                                      ; preds = %221, %.critedge2.i
  %229 = phi %struct.t_atom* [ %.pre90.i, %221 ], [ %188, %.critedge2.i ]
  %nra.2.be.i = phi i32 [ 0, %221 ], [ %nra.4.i, %.critedge2.i ]
  %sext93.i = shl i64 %indvars.iv.next75.i, 32
  %230 = ashr exact i64 %sext93.i, 32
  %231 = getelementptr inbounds %struct.t_atom* %229, i64 %230, i32 7
  %232 = load i32* %231, align 4, !tbaa !24
  %233 = icmp slt i32 %232, %npres.0.lcssa.i
  br i1 %233, label %187, label %.critedge.i

.critedge.i:                                      ; preds = %.backedge.i, %187, %.preheader11.i, %173
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1
  %exitcond.i2 = icmp eq i64 %indvars.iv.next77.i, 10
  br i1 %exitcond.i2, label %234, label %173

; <label>:234                                     ; preds = %.critedge.i
  %235 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str64, i64 0, i64 0)) #7
  %236 = call fastcc i32 @yn(i32 %bASK) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %analyse_prot.exit, label %.critedge4.preheader.i

.critedge4.preheader.i:                           ; preds = %234
  %238 = load %struct.t_atom** %72, align 8, !tbaa !23
  %239 = getelementptr inbounds %struct.t_atom* %238, i64 0, i32 7
  %240 = load i32* %239, align 4, !tbaa !24
  %241 = icmp slt i32 %240, %npres.0.lcssa.i
  br i1 %241, label %.lr.ph27.i, label %analyse_prot.exit

.critedge4.loopexit.i:                            ; preds = %._crit_edge91.i, %291
  %242 = trunc i64 %indvars.iv.next.i5 to i32
  %sext.i = shl i64 %indvars.iv.next.i5, 32
  %243 = ashr exact i64 %sext.i, 32
  %244 = getelementptr inbounds %struct.t_atom* %238, i64 %243, i32 7
  %245 = load i32* %244, align 4, !tbaa !24
  %246 = icmp slt i32 %245, %npres.0.lcssa.i
  br i1 %246, label %.lr.ph27.i, label %.critedge3.i

.lr.ph27.i:                                       ; preds = %.critedge4.preheader.i, %.critedge4.loopexit.i
  %247 = phi i32 [ %245, %.critedge4.loopexit.i ], [ %240, %.critedge4.preheader.i ]
  %n.326.i = phi i32 [ %242, %.critedge4.loopexit.i ], [ 0, %.critedge4.preheader.i ]
  %nra.525.i = phi i32 [ %nra.7.i, %.critedge4.loopexit.i ], [ 0, %.critedge4.preheader.i ]
  %248 = load i32* %61, align 4, !tbaa !21
  %249 = icmp slt i32 %n.326.i, %248
  br i1 %249, label %.lr.ph, label %.critedge3.i

.lr.ph:                                           ; preds = %.lr.ph27.i
  %250 = sext i32 %n.326.i to i64
  %.pre = load i8**** %73, align 8, !tbaa !29
  br label %251

; <label>:251                                     ; preds = %.lr.ph, %._crit_edge91.i
  %nra.618.i32 = phi i32 [ %nra.525.i, %.lr.ph ], [ %nra.7.i, %._crit_edge91.i ]
  %hold.020.i31 = phi i32 [ -1, %.lr.ph ], [ %hold.1.i, %._crit_edge91.i ]
  %indvars.iv.i430 = phi i64 [ %250, %.lr.ph ], [ %indvars.iv.next.i5, %._crit_edge91.i ]
  %252 = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.i430
  %253 = load i8*** %252, align 8, !tbaa !17
  %254 = load i8** %253, align 8, !tbaa !17
  %255 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* %254) #7
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %263

; <label>:257                                     ; preds = %251
  %258 = add nsw i32 %nra.618.i32, 1
  %259 = sext i32 %nra.618.i32 to i64
  %260 = getelementptr inbounds i32* %64, i64 %259
  %261 = trunc i64 %indvars.iv.i430 to i32
  store i32 %261, i32* %260, align 4, !tbaa !18
  %262 = add nsw i32 %nra.618.i32, 3
  br label %291

; <label>:263                                     ; preds = %251
  %264 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0), i8* %254) #7
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

; <label>:266                                     ; preds = %263
  %267 = sext i32 %hold.020.i31 to i64
  %268 = getelementptr inbounds i32* %64, i64 %267
  %269 = trunc i64 %indvars.iv.i430 to i32
  store i32 %269, i32* %268, align 4, !tbaa !18
  br label %291

; <label>:270                                     ; preds = %263
  %271 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* %254) #7
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %278

; <label>:273                                     ; preds = %270
  %274 = add nsw i32 %hold.020.i31, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32* %64, i64 %275
  %277 = trunc i64 %indvars.iv.i430 to i32
  store i32 %277, i32* %276, align 4, !tbaa !18
  br label %291

; <label>:278                                     ; preds = %270
  %279 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* %254) #7
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %286

; <label>:281                                     ; preds = %278
  %282 = add nsw i32 %hold.020.i31, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32* %64, i64 %283
  %285 = trunc i64 %indvars.iv.i430 to i32
  store i32 %285, i32* %284, align 4, !tbaa !18
  br label %291

; <label>:286                                     ; preds = %278
  %287 = add nsw i32 %nra.618.i32, 1
  %288 = sext i32 %nra.618.i32 to i64
  %289 = getelementptr inbounds i32* %64, i64 %288
  %290 = trunc i64 %indvars.iv.i430 to i32
  store i32 %290, i32* %289, align 4, !tbaa !18
  br label %291

; <label>:291                                     ; preds = %286, %281, %273, %266, %257
  %nra.7.i = phi i32 [ %262, %257 ], [ %nra.618.i32, %266 ], [ %nra.618.i32, %273 ], [ %nra.618.i32, %281 ], [ %287, %286 ]
  %hold.1.i = phi i32 [ %258, %257 ], [ %hold.020.i31, %266 ], [ %hold.020.i31, %273 ], [ %hold.020.i31, %281 ], [ %hold.020.i31, %286 ]
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i430, 1
  %292 = getelementptr inbounds %struct.t_atom* %238, i64 %indvars.iv.next.i5, i32 7
  %293 = load i32* %292, align 4, !tbaa !24
  %294 = icmp eq i32 %293, %247
  br i1 %294, label %._crit_edge91.i, label %.critedge4.loopexit.i

._crit_edge91.i:                                  ; preds = %291
  %.pre92.i = load i32* %61, align 4, !tbaa !21
  %295 = sext i32 %.pre92.i to i64
  %296 = icmp slt i64 %indvars.iv.next.i5, %295
  br i1 %296, label %251, label %.critedge4.loopexit.i

.critedge3.i:                                     ; preds = %.lr.ph27.i, %.critedge4.loopexit.i
  %nra.5.lcssa.i = phi i32 [ %nra.7.i, %.critedge4.loopexit.i ], [ %nra.525.i, %.lr.ph27.i ]
  %297 = icmp sgt i32 %nra.5.lcssa.i, 0
  br i1 %297, label %298, label %analyse_prot.exit

; <label>:298                                     ; preds = %.critedge3.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.5.lcssa.i, i32* %64, i8* getelementptr inbounds ([10 x i8]* @.str65, i64 0, i64 0)) #7
  br label %analyse_prot.exit

analyse_prot.exit:                                ; preds = %170, %234, %.critedge4.preheader.i, %.critedge3.i, %298
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 387, i8* %63) #7
  call void @llvm.lifetime.end(i64 4096, i8* %58) #6
  br label %299

; <label>:299                                     ; preds = %analyse_prot.exit, %p_status.exit
  %300 = bitcast i32* %54 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452, i8* %300) #7
  %301 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 1, i32* %nra, i32 0) #8
  %302 = load i32* %nra, align 4, !tbaa !18
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %309

; <label>:304                                     ; preds = %299
  %305 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %306 = load i32* %305, align 4, !tbaa !21
  %307 = icmp slt i32 %302, %306
  br i1 %307, label %308, label %309

; <label>:308                                     ; preds = %304
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %302, i32* %301, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) #8
  br label %309

; <label>:309                                     ; preds = %308, %304, %299
  %310 = bitcast i32* %301 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 458, i8* %310) #7
  %311 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 2, i32* %nra, i32 1) #8
  %312 = load i32* %nra, align 4, !tbaa !18
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %analyse_dna.exit

; <label>:314                                     ; preds = %309
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %312, i32* %311, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0)) #8
  br i1 %1, label %316, label %315

; <label>:315                                     ; preds = %314
  %puts.i6 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str75, i64 0, i64 0)) #6
  br label %316

; <label>:316                                     ; preds = %315, %314
  %317 = load %struct.__sFILE** @debug, align 8, !tbaa !17
  %318 = icmp eq %struct.__sFILE* %317, null
  br i1 %318, label %analyse_dna.exit, label %319

; <label>:319                                     ; preds = %316
  %320 = sext i32 %bASK to i64
  %321 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %320
  %322 = load i8** %321, align 8, !tbaa !17
  %323 = sext i32 %bVerb to i64
  %324 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %323
  %325 = load i8** %324, align 8, !tbaa !17
  %326 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str68, i64 0, i64 0), i8* %6, %struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i8* %322, i8* %325) #7
  br label %analyse_dna.exit

analyse_dna.exit:                                 ; preds = %319, %316, %309
  %327 = bitcast i32* %311 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 466, i8* %327) #7
  %328 = load i32* %4, align 4, !tbaa !27
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %.lr.ph46.i.preheader, label %338

.lr.ph46.i.preheader:                             ; preds = %analyse_dna.exit
  %330 = sext i32 %328 to i64
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %334
  %indvars.iv78.i7 = phi i64 [ %indvars.iv.next79.i8, %334 ], [ 0, %.lr.ph46.i.preheader ]
  %331 = getelementptr inbounds i32* %7, i64 %indvars.iv78.i7
  %332 = load i32* %331, align 4, !tbaa !13
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %._crit_edge47.i, label %334

; <label>:334                                     ; preds = %.lr.ph46.i
  %indvars.iv.next79.i8 = add nuw nsw i64 %indvars.iv78.i7, 1
  %335 = icmp slt i64 %indvars.iv.next79.i8, %330
  br i1 %335, label %.lr.ph46.i, label %._crit_edge50.i

._crit_edge47.i:                                  ; preds = %.lr.ph46.i
  %336 = trunc i64 %indvars.iv78.i7 to i32
  br label %338

._crit_edge50.i:                                  ; preds = %334
  %337 = trunc i64 %indvars.iv.next79.i8 to i32
  br label %338

; <label>:338                                     ; preds = %._crit_edge50.i, %._crit_edge47.i, %analyse_dna.exit
  %i.0.lcssa.i = phi i32 [ %336, %._crit_edge47.i ], [ %337, %._crit_edge50.i ], [ 0, %analyse_dna.exit ]
  %339 = icmp slt i32 %i.0.lcssa.i, %328
  br i1 %339, label %340, label %analyse_other.exit

; <label>:340                                     ; preds = %338
  br i1 %1, label %342, label %341

; <label>:341                                     ; preds = %340
  %puts.i9 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str76, i64 0, i64 0)) #6
  br label %342

; <label>:342                                     ; preds = %341, %340
  %343 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %344 = load i32* %343, align 4, !tbaa !21
  %345 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 180, i32 %344, i32 4) #7
  %346 = load i32* %343, align 4, !tbaa !21
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %.lr.ph41.i, label %._crit_edge30.i

.lr.ph41.i:                                       ; preds = %342
  %348 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %349 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %354

.preheader2.i:                                    ; preds = %389
  %350 = icmp sgt i32 %nrestp.1.i, 0
  br i1 %350, label %.lr.ph29.i, label %._crit_edge30.i

.lr.ph29.i:                                       ; preds = %.preheader2.i
  %351 = icmp eq i32 %bASK, 0
  %352 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %353 = add i32 %nrestp.1.i, -1
  br label %393

; <label>:354                                     ; preds = %389, %.lr.ph41.i
  %355 = phi i32 [ %346, %.lr.ph41.i ], [ %390, %389 ]
  %indvars.iv76.i10 = phi i64 [ 0, %.lr.ph41.i ], [ %indvars.iv.next77.i15, %389 ]
  %nrestp.039.i = phi i32 [ 0, %.lr.ph41.i ], [ %nrestp.1.i, %389 ]
  %restp.038.i = phi i8** [ null, %.lr.ph41.i ], [ %restp.1.i, %389 ]
  %356 = load %struct.t_atom** %348, align 8, !tbaa !23
  %357 = getelementptr inbounds %struct.t_atom* %356, i64 %indvars.iv76.i10, i32 7
  %358 = load i32* %357, align 4, !tbaa !24
  %359 = sext i32 %358 to i64
  %360 = load i8**** %349, align 8, !tbaa !28
  %361 = getelementptr inbounds i8*** %360, i64 %359
  %362 = load i8*** %361, align 8, !tbaa !17
  %363 = load i8** %362, align 8, !tbaa !17
  %364 = getelementptr inbounds i32* %7, i64 %359
  %365 = load i32* %364, align 4, !tbaa !13
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %.preheader3.i, label %389

.preheader3.i:                                    ; preds = %354
  %367 = icmp sgt i32 %nrestp.039.i, 0
  br i1 %367, label %.lr.ph32.i11, label %378

.lr.ph32.i11:                                     ; preds = %.preheader3.i
  %368 = sext i32 %nrestp.039.i to i64
  br label %369

; <label>:369                                     ; preds = %374, %.lr.ph32.i11
  %indvars.iv74.i12 = phi i64 [ 0, %.lr.ph32.i11 ], [ %indvars.iv.next75.i13, %374 ]
  %370 = getelementptr inbounds i8** %restp.038.i, i64 %indvars.iv74.i12
  %371 = load i8** %370, align 8, !tbaa !17
  %372 = call i32 @strcmp(i8* %371, i8* %363) #7
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %._crit_edge33.i, label %374

; <label>:374                                     ; preds = %369
  %indvars.iv.next75.i13 = add nuw nsw i64 %indvars.iv74.i12, 1
  %375 = icmp slt i64 %indvars.iv.next75.i13, %368
  br i1 %375, label %369, label %._crit_edge35.i

._crit_edge33.i:                                  ; preds = %369
  %376 = trunc i64 %indvars.iv74.i12 to i32
  br label %378

._crit_edge35.i:                                  ; preds = %374
  %377 = trunc i64 %indvars.iv.next75.i13 to i32
  br label %378

; <label>:378                                     ; preds = %._crit_edge35.i, %._crit_edge33.i, %.preheader3.i
  %l.0.lcssa.i = phi i32 [ %376, %._crit_edge33.i ], [ %377, %._crit_edge35.i ], [ 0, %.preheader3.i ]
  %379 = icmp eq i32 %l.0.lcssa.i, %nrestp.039.i
  br i1 %379, label %380, label %389

; <label>:380                                     ; preds = %378
  %381 = bitcast i8** %restp.038.i to i8*
  %382 = add nsw i32 %nrestp.039.i, 1
  %383 = shl i32 %382, 3
  %384 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189, i8* %381, i32 %383) #7
  %385 = bitcast i8* %384 to i8**
  %386 = call i8* @strdup(i8* %363) #7
  %387 = sext i32 %nrestp.039.i to i64
  %388 = getelementptr inbounds i8** %385, i64 %387
  store i8* %386, i8** %388, align 8, !tbaa !17
  %.pre.i14 = load i32* %343, align 4, !tbaa !21
  br label %389

; <label>:389                                     ; preds = %380, %378, %354
  %390 = phi i32 [ %.pre.i14, %380 ], [ %355, %378 ], [ %355, %354 ]
  %restp.1.i = phi i8** [ %385, %380 ], [ %restp.038.i, %378 ], [ %restp.038.i, %354 ]
  %nrestp.1.i = phi i32 [ %382, %380 ], [ %nrestp.039.i, %378 ], [ %nrestp.039.i, %354 ]
  %indvars.iv.next77.i15 = add nuw nsw i64 %indvars.iv76.i10, 1
  %391 = sext i32 %390 to i64
  %392 = icmp slt i64 %indvars.iv.next77.i15, %391
  br i1 %392, label %354, label %.preheader2.i

; <label>:393                                     ; preds = %._crit_edge80.i, %.lr.ph29.i
  %394 = phi i32 [ %390, %.lr.ph29.i ], [ %.pre81.i, %._crit_edge80.i ]
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next71.i, %._crit_edge80.i ]
  %395 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 195, i32 %394, i32 4) #7
  %396 = bitcast i8* %395 to i32*
  %397 = load i32* %343, align 4, !tbaa !21
  %398 = icmp sgt i32 %397, 0
  %399 = getelementptr inbounds i8** %restp.1.i, i64 %indvars.iv70.i
  br i1 %398, label %.lr.ph.i17, label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %393
  %.pre87.i16 = load i8** %399, align 8, !tbaa !17
  br label %._crit_edge.i20

.lr.ph.i17:                                       ; preds = %393
  %.pre82.i = load %struct.t_atom** %348, align 8, !tbaa !23
  %.pre83.i = load i8**** %349, align 8, !tbaa !28
  %.pre84.i = load i8** %399, align 8, !tbaa !17
  br label %400

; <label>:400                                     ; preds = %415, %.lr.ph.i17
  %401 = phi i32 [ %397, %.lr.ph.i17 ], [ %416, %415 ]
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %415 ]
  %naid.05.i = phi i32 [ 0, %.lr.ph.i17 ], [ %naid.1.i, %415 ]
  %402 = getelementptr inbounds %struct.t_atom* %.pre82.i, i64 %indvars.iv.i18, i32 7
  %403 = load i32* %402, align 4, !tbaa !24
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8*** %.pre83.i, i64 %404
  %406 = load i8*** %405, align 8, !tbaa !17
  %407 = load i8** %406, align 8, !tbaa !17
  %408 = call i32 @strcmp(i8* %.pre84.i, i8* %407) #7
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

; <label>:410                                     ; preds = %400
  %411 = add nsw i32 %naid.05.i, 1
  %412 = sext i32 %naid.05.i to i64
  %413 = getelementptr inbounds i32* %396, i64 %412
  %414 = trunc i64 %indvars.iv.i18 to i32
  store i32 %414, i32* %413, align 4, !tbaa !18
  %.pre85.i = load i32* %343, align 4, !tbaa !21
  br label %415

; <label>:415                                     ; preds = %410, %400
  %416 = phi i32 [ %.pre85.i, %410 ], [ %401, %400 ]
  %naid.1.i = phi i32 [ %411, %410 ], [ %naid.05.i, %400 ]
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1
  %417 = sext i32 %416 to i64
  %418 = icmp slt i64 %indvars.iv.next.i19, %417
  br i1 %418, label %400, label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %415, %._crit_edge86.i
  %419 = phi i8* [ %.pre87.i16, %._crit_edge86.i ], [ %.pre84.i, %415 ]
  %naid.0.lcssa.i = phi i32 [ 0, %._crit_edge86.i ], [ %naid.1.i, %415 ]
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naid.0.lcssa.i, i32* %396, i8* %419) #7
  br i1 %351, label %480, label %420

; <label>:420                                     ; preds = %._crit_edge.i20
  %421 = load i8** %399, align 8, !tbaa !17
  %422 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i8* %421) #7
  %423 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !17
  %424 = call i32 @fflush(%struct.__sFILE* %423) #7
  %425 = call fastcc i32 @yn(i32 %bASK) #7
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %479, label %.preheader1.i

.preheader1.i:                                    ; preds = %420
  %427 = icmp sgt i32 %naid.0.lcssa.i, 0
  br i1 %427, label %.lr.ph16.i, label %.loopexit.i

.lr.ph16.i:                                       ; preds = %.preheader1.i
  %428 = add i32 %naid.0.lcssa.i, -1
  br label %429

; <label>:429                                     ; preds = %458, %.lr.ph16.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph16.i ], [ %indvars.iv.next61.i, %458 ]
  %natp.015.i = phi i32 [ 0, %.lr.ph16.i ], [ %natp.1.i, %458 ]
  %attp.113.i = phi i8** [ null, %.lr.ph16.i ], [ %attp.2.i, %458 ]
  %430 = getelementptr inbounds i32* %396, i64 %indvars.iv60.i
  %431 = load i32* %430, align 4, !tbaa !18
  %432 = sext i32 %431 to i64
  %433 = load i8**** %352, align 8, !tbaa !29
  %434 = getelementptr inbounds i8*** %433, i64 %432
  %435 = load i8*** %434, align 8, !tbaa !17
  %436 = load i8** %435, align 8, !tbaa !17
  %437 = icmp sgt i32 %natp.015.i, 0
  br i1 %437, label %.lr.ph8.i, label %448

.lr.ph8.i:                                        ; preds = %429
  %438 = sext i32 %natp.015.i to i64
  br label %439

; <label>:439                                     ; preds = %444, %.lr.ph8.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next59.i, %444 ]
  %440 = getelementptr inbounds i8** %attp.113.i, i64 %indvars.iv58.i
  %441 = load i8** %440, align 8, !tbaa !17
  %442 = call i32 @strcmp(i8* %436, i8* %441) #7
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %._crit_edge9.i, label %444

; <label>:444                                     ; preds = %439
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  %445 = icmp slt i64 %indvars.iv.next59.i, %438
  br i1 %445, label %439, label %._crit_edge11.i

._crit_edge9.i:                                   ; preds = %439
  %446 = trunc i64 %indvars.iv58.i to i32
  br label %448

._crit_edge11.i:                                  ; preds = %444
  %447 = trunc i64 %indvars.iv.next59.i to i32
  br label %448

; <label>:448                                     ; preds = %._crit_edge11.i, %._crit_edge9.i, %429
  %l.1.lcssa.i = phi i32 [ %446, %._crit_edge9.i ], [ %447, %._crit_edge11.i ], [ 0, %429 ]
  %449 = icmp eq i32 %l.1.lcssa.i, %natp.015.i
  br i1 %449, label %450, label %458

; <label>:450                                     ; preds = %448
  %451 = bitcast i8** %attp.113.i to i8*
  %452 = add nsw i32 %natp.015.i, 1
  %453 = shl i32 %452, 3
  %454 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214, i8* %451, i32 %453) #7
  %455 = bitcast i8* %454 to i8**
  %456 = sext i32 %natp.015.i to i64
  %457 = getelementptr inbounds i8** %455, i64 %456
  store i8* %436, i8** %457, align 8, !tbaa !17
  br label %458

; <label>:458                                     ; preds = %450, %448
  %attp.2.i = phi i8** [ %455, %450 ], [ %attp.113.i, %448 ]
  %natp.1.i = phi i32 [ %452, %450 ], [ %natp.015.i, %448 ]
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv60.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %428
  br i1 %exitcond, label %._crit_edge17.i, label %429

._crit_edge17.i:                                  ; preds = %458
  %459 = icmp sgt i32 %natp.1.i, 1
  br i1 %459, label %.lr.ph27.i23, label %.loopexit.i

.lr.ph27.i23:                                     ; preds = %._crit_edge17.i
  %460 = add i32 %natp.1.i, -1
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph27.i23, %._crit_edge24.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph27.i23 ], [ %indvars.iv.next67.i, %._crit_edge24.i ]
  %461 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 220, i32 %naid.0.lcssa.i, i32 4) #7
  %462 = bitcast i8* %461 to i32*
  %463 = getelementptr inbounds i8** %attp.2.i, i64 %indvars.iv66.i
  %.pre88.i = load i8**** %352, align 8, !tbaa !29
  %.pre89.i25 = load i8** %463, align 8, !tbaa !17
  br label %464

; <label>:464                                     ; preds = %477, %.lr.ph23.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next63.i, %477 ]
  %naaid.021.i = phi i32 [ 0, %.lr.ph23.i ], [ %naaid.1.i, %477 ]
  %465 = getelementptr inbounds i32* %396, i64 %indvars.iv62.i
  %466 = load i32* %465, align 4, !tbaa !18
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*** %.pre88.i, i64 %467
  %469 = load i8*** %468, align 8, !tbaa !17
  %470 = load i8** %469, align 8, !tbaa !17
  %471 = call i32 @strcmp(i8* %470, i8* %.pre89.i25) #7
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %477

; <label>:473                                     ; preds = %464
  %474 = add nsw i32 %naaid.021.i, 1
  %475 = sext i32 %naaid.021.i to i64
  %476 = getelementptr inbounds i32* %462, i64 %475
  store i32 %466, i32* %476, align 4, !tbaa !18
  br label %477

; <label>:477                                     ; preds = %473, %464
  %naaid.1.i = phi i32 [ %474, %473 ], [ %naaid.021.i, %464 ]
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv62.i to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %428
  br i1 %exitcond57, label %._crit_edge24.i, label %464

._crit_edge24.i:                                  ; preds = %477
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naaid.1.i, i32* %462, i8* %.pre89.i25) #7
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 228, i8* %461) #7
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1
  %lftr.wideiv58 = trunc i64 %indvars.iv66.i to i32
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %460
  br i1 %exitcond59, label %.loopexit.i, label %.lr.ph23.i

.loopexit.i:                                      ; preds = %._crit_edge24.i, %._crit_edge17.i, %.preheader1.i
  %attp.1.lcssa94.i = phi i8** [ %attp.2.i, %._crit_edge17.i ], [ null, %.preheader1.i ], [ %attp.2.i, %._crit_edge24.i ]
  %478 = bitcast i8** %attp.1.lcssa94.i to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 231, i8* %478) #7
  br label %479

; <label>:479                                     ; preds = %.loopexit.i, %420
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 234, i8* %395) #7
  br label %480

; <label>:480                                     ; preds = %479, %._crit_edge.i20
  %lftr.wideiv72.i = trunc i64 %indvars.iv70.i to i32
  %exitcond73.i = icmp eq i32 %lftr.wideiv72.i, %353
  br i1 %exitcond73.i, label %._crit_edge30.i, label %._crit_edge80.i

._crit_edge80.i:                                  ; preds = %480
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %.pre81.i = load i32* %343, align 4, !tbaa !21
  br label %393

._crit_edge30.i:                                  ; preds = %480, %.preheader2.i, %342
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237, i8* %345) #7
  br label %analyse_other.exit

analyse_other.exit:                               ; preds = %338, %._crit_edge30.i
  %481 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 0, i32* %nra, i32 1) #8
  %482 = load i32* %nra, align 4, !tbaa !18
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %489

; <label>:484                                     ; preds = %analyse_other.exit
  %485 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %486 = load i32* %485, align 4, !tbaa !21
  %487 = icmp slt i32 %482, %486
  br i1 %487, label %488, label %489

; <label>:488                                     ; preds = %484
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %482, i32* %481, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0)) #8
  br label %489

; <label>:489                                     ; preds = %488, %484, %analyse_other.exit
  %490 = bitcast i32* %481 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473, i8* %490) #7
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 474, i8* %6) #7
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @yn(i32 %bASK) #3 {
  %1 = icmp eq i32 %bASK, 0
  br i1 %1, label %8, label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %2 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !17
  %3 = tail call i32 @fgetc(%struct.__sFILE* %2) #7
  %4 = tail call i32 @__toupper(i32 %3) #7
  %sext = shl i32 %4, 24
  %5 = ashr exact i32 %sext, 24
  switch i32 %5, label %.preheader [
    i32 89, label %.critedge
    i32 78, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader, %.preheader
  %6 = icmp eq i32 %5, 89
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8                                       ; preds = %0, %.critedge
  %.0 = phi i32 [ %7, %.critedge ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !4, i64 1032}
!15 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!16 = !{!15, !7, i64 1024}
!17 = !{!4, !4, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!15, !4, i64 1048}
!20 = !{!15, !7, i64 1040}
!21 = !{!22, !7, i64 0}
!22 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !15, i64 72, !5, i64 1128, !4, i64 1272}
!23 = !{!22, !4, i64 8}
!24 = !{!25, !7, i64 24}
!25 = !{!"", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!26 = !{!"float", !5, i64 0}
!27 = !{!22, !7, i64 40}
!28 = !{!22, !4, i64 48}
!29 = !{!22, !4, i64 16}
