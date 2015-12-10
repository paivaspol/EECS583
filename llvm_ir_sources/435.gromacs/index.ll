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
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !79, metadata !372), !dbg !373
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !80, metadata !372), !dbg !374
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !375
  %2 = load i32* %1, align 4, !dbg !377, !tbaa !378
  %3 = add nsw i32 %2, -1, !dbg !377
  store i32 %3, i32* %1, align 4, !dbg !377, !tbaa !378
  %4 = icmp sgt i32 %2, 0, !dbg !387
  br i1 %4, label %._crit_edge, label %5, !dbg !388

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !389
  br label %10, !dbg !388

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !390
  %7 = load i32* %6, align 4, !dbg !390, !tbaa !391
  %8 = icmp sle i32 %2, %7, !dbg !392
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !393
  %or.cond = or i1 %9, %8, !dbg !394
  br i1 %or.cond, label %15, label %10, !dbg !394

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !389
  %11 = trunc i32 %_c to i8, !dbg !395
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !396
  %13 = load i8** %12, align 8, !dbg !397, !tbaa !398
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !397
  store i8* %14, i8** %12, align 8, !dbg !397, !tbaa !398
  store i8 %11, i8* %13, align 1, !dbg !399, !tbaa !400
  br label %17, !dbg !401

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8, !dbg !402
  br label %17, !dbg !403

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !404
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !86, metadata !372), !dbg !405
  %1 = icmp sgt i32 %__signo, 32, !dbg !406
  br i1 %1, label %5, label %2, !dbg !407

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !408
  %4 = shl i32 1, %3, !dbg !409
  br label %5, !dbg !407

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !407
  ret i32 %6, !dbg !410
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_block* @new_block() #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 73, i32 1, i32 1056) #8, !dbg !411
  %2 = bitcast i8* %1 to %struct.t_block*, !dbg !411
  tail call void @llvm.dbg.value(metadata %struct.t_block* %2, i64 0, metadata !107, metadata !372), !dbg !412
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 74, i32 1, i32 4) #8, !dbg !413
  %4 = getelementptr inbounds i8* %1, i64 1032, !dbg !413
  %5 = bitcast i8* %4 to i8**, !dbg !413
  store i8* %3, i8** %5, align 8, !dbg !413, !tbaa !414
  ret %struct.t_block* %2, !dbg !416
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_index(i8* %outf, %struct.t_block* nocapture readonly %b, i8** nocapture readonly %gnames) #4 {
  tail call void @llvm.dbg.value(metadata i8* %outf, i64 0, metadata !113, metadata !372), !dbg !417
  tail call void @llvm.dbg.value(metadata %struct.t_block* %b, i64 0, metadata !114, metadata !372), !dbg !418
  tail call void @llvm.dbg.value(metadata i8** %gnames, i64 0, metadata !115, metadata !372), !dbg !419
  %1 = tail call %struct.__sFILE* @ffopen(i8* %outf, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !420
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !116, metadata !372), !dbg !421
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !372), !dbg !422
  %2 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1, !dbg !423
  %3 = load i32* %2, align 4, !dbg !423, !tbaa !426
  %4 = icmp sgt i32 %3, 0, !dbg !427
  br i1 %4, label %.lr.ph8, label %._crit_edge9, !dbg !428

.lr.ph8:                                          ; preds = %0
  %5 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2, !dbg !429
  %6 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4, !dbg !432
  br label %7, !dbg !428

; <label>:7                                       ; preds = %.lr.ph8, %._crit_edge
  %indvars.iv10 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next11, %._crit_edge ]
  %8 = getelementptr inbounds i8** %gnames, i64 %indvars.iv10, !dbg !435
  %9 = load i8** %8, align 8, !dbg !435, !tbaa !436
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* %9) #8, !dbg !437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !119, metadata !372), !dbg !438
  %11 = load i32** %5, align 8, !dbg !429, !tbaa !414
  %12 = getelementptr inbounds i32* %11, i64 %indvars.iv10, !dbg !439
  %13 = load i32* %12, align 4, !dbg !439, !tbaa !440
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !118, metadata !372), !dbg !441
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !428
  %14 = getelementptr inbounds i32* %11, i64 %indvars.iv.next11, !dbg !442
  %15 = load i32* %14, align 4, !dbg !442, !tbaa !440
  %16 = icmp slt i32 %13, %15, !dbg !443
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !444

.lr.ph:                                           ; preds = %7
  %17 = sext i32 %13 to i64
  br label %18, !dbg !444

; <label>:18                                      ; preds = %.lr.ph, %27
  %indvars.iv = phi i64 [ %17, %.lr.ph ], [ %indvars.iv.next, %27 ]
  %k.05 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %19 = load i32** %6, align 8, !dbg !432, !tbaa !445
  %20 = getelementptr inbounds i32* %19, i64 %indvars.iv, !dbg !446
  %21 = load i32* %20, align 4, !dbg !446, !tbaa !440
  %22 = add nsw i32 %21, 1, !dbg !447
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %22) #8, !dbg !448
  %24 = srem i32 %k.05, 15, !dbg !449
  %25 = icmp eq i32 %24, 14, !dbg !451
  br i1 %25, label %26, label %27, !dbg !452

; <label>:26                                      ; preds = %18
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %1), !dbg !453
  br label %27, !dbg !453

; <label>:27                                      ; preds = %18, %26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !444
  %28 = add nuw nsw i32 %k.05, 1, !dbg !454
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !119, metadata !372), !dbg !438
  %29 = load i32** %5, align 8, !dbg !455, !tbaa !414
  %30 = getelementptr inbounds i32* %29, i64 %indvars.iv.next11, !dbg !442
  %31 = load i32* %30, align 4, !dbg !442, !tbaa !440
  %32 = sext i32 %31 to i64, !dbg !443
  %33 = icmp slt i64 %indvars.iv.next, %32, !dbg !443
  br i1 %33, label %18, label %._crit_edge, !dbg !444

._crit_edge:                                      ; preds = %27, %7
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1), !dbg !456
  %34 = load i32* %2, align 4, !dbg !423, !tbaa !426
  %35 = sext i32 %34 to i64, !dbg !427
  %36 = icmp slt i64 %indvars.iv.next11, %35, !dbg !427
  br i1 %36, label %7, label %._crit_edge9, !dbg !428

._crit_edge9:                                     ; preds = %._crit_edge, %0
  tail call void @ffclose(%struct.__sFILE* %1) #8, !dbg !457
  ret void, !dbg !458
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @add_grp(%struct.t_block* nocapture %b, i8*** nocapture %gnames, i32 %nra, i32* nocapture readonly %a, i8* nocapture readonly %name) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %b, i64 0, metadata !125, metadata !372), !dbg !459
  tail call void @llvm.dbg.value(metadata i8*** %gnames, i64 0, metadata !126, metadata !372), !dbg !460
  tail call void @llvm.dbg.value(metadata i32 %nra, i64 0, metadata !127, metadata !372), !dbg !461
  tail call void @llvm.dbg.value(metadata i32* %a, i64 0, metadata !128, metadata !372), !dbg !462
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !129, metadata !372), !dbg !463
  %1 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2, !dbg !464
  %2 = bitcast i32** %1 to i8**, !dbg !464
  %3 = load i8** %2, align 8, !dbg !464, !tbaa !414
  %4 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1, !dbg !464
  %5 = load i32* %4, align 4, !dbg !464, !tbaa !426
  %6 = shl i32 %5, 2, !dbg !464
  %7 = add i32 %6, 8, !dbg !464
  %8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 102, i8* %3, i32 %7) #8, !dbg !464
  store i8* %8, i8** %2, align 8, !dbg !464, !tbaa !414
  %9 = bitcast i8*** %gnames to i8**, !dbg !465
  %10 = load i8** %9, align 8, !dbg !465, !tbaa !436
  %11 = load i32* %4, align 4, !dbg !465, !tbaa !426
  %12 = shl i32 %11, 3, !dbg !465
  %13 = add i32 %12, 8, !dbg !465
  %14 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 103, i8* %10, i32 %13) #8, !dbg !465
  store i8* %14, i8** %9, align 8, !dbg !465, !tbaa !436
  %15 = tail call i8* @strdup(i8* %name) #8, !dbg !466
  %16 = load i32* %4, align 4, !dbg !467, !tbaa !426
  %17 = sext i32 %16 to i64, !dbg !468
  %18 = load i8*** %gnames, align 8, !dbg !469, !tbaa !436
  %19 = getelementptr inbounds i8** %18, i64 %17, !dbg !468
  store i8* %15, i8** %19, align 8, !dbg !470, !tbaa !436
  %20 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4, !dbg !471
  %21 = bitcast i32** %20 to i8**, !dbg !471
  %22 = load i8** %21, align 8, !dbg !471, !tbaa !445
  %23 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 3, !dbg !471
  %24 = load i32* %23, align 4, !dbg !471, !tbaa !472
  %25 = add nsw i32 %24, %nra, !dbg !471
  %26 = shl i32 %25, 2, !dbg !471
  %27 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 106, i8* %22, i32 %26) #8, !dbg !471
  store i8* %27, i8** %21, align 8, !dbg !471, !tbaa !445
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !130, metadata !372), !dbg !473
  %28 = icmp sgt i32 %nra, 0, !dbg !474
  %29 = bitcast i8* %27 to i32*
  br i1 %28, label %.lr.ph, label %._crit_edge, !dbg !477

.lr.ph:                                           ; preds = %0
  %30 = add i32 %nra, -1, !dbg !477
  br label %31, !dbg !477

; <label>:31                                      ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %32 = getelementptr inbounds i32* %a, i64 %indvars.iv, !dbg !478
  %33 = load i32* %32, align 4, !dbg !478, !tbaa !440
  %34 = load i32* %23, align 4, !dbg !479, !tbaa !472
  %35 = add nsw i32 %34, 1, !dbg !479
  store i32 %35, i32* %23, align 4, !dbg !479, !tbaa !472
  %36 = sext i32 %34 to i64, !dbg !480
  %37 = getelementptr inbounds i32* %29, i64 %36, !dbg !480
  store i32 %33, i32* %37, align 4, !dbg !481, !tbaa !440
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !477
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !477
  %exitcond = icmp eq i32 %lftr.wideiv, %30, !dbg !477
  br i1 %exitcond, label %._crit_edge, label %31, !dbg !477

._crit_edge:                                      ; preds = %31, %0
  %38 = load i32* %4, align 4, !dbg !482, !tbaa !426
  %39 = add nsw i32 %38, 1, !dbg !482
  store i32 %39, i32* %4, align 4, !dbg !482, !tbaa !426
  %40 = load i32* %23, align 4, !dbg !483, !tbaa !472
  %41 = sext i32 %39 to i64, !dbg !484
  %42 = load i32** %1, align 8, !dbg !485, !tbaa !414
  %43 = getelementptr inbounds i32* %42, i64 %41, !dbg !484
  store i32 %40, i32* %43, align 4, !dbg !486, !tbaa !440
  ret void, !dbg !487
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32* @mk_aid(%struct.t_atoms* nocapture readonly %atoms, i32* nocapture readonly %restp, i32 %res, i32* nocapture %nra, i32 %bTrue) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !197, metadata !372), !dbg !488
  tail call void @llvm.dbg.value(metadata i32* %restp, i64 0, metadata !198, metadata !372), !dbg !489
  tail call void @llvm.dbg.value(metadata i32 %res, i64 0, metadata !199, metadata !372), !dbg !490
  tail call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !200, metadata !372), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %bTrue, i64 0, metadata !201, metadata !372), !dbg !492
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !493
  %2 = load i32* %1, align 4, !dbg !493, !tbaa !494
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 155, i32 %2, i32 4) #8, !dbg !493
  %4 = bitcast i8* %3 to i32*, !dbg !493
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !202, metadata !372), !dbg !496
  store i32 0, i32* %nra, align 4, !dbg !497, !tbaa !440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !203, metadata !372), !dbg !498
  %5 = load i32* %1, align 4, !dbg !499, !tbaa !494
  %6 = icmp sgt i32 %5, 0, !dbg !502
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !503

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !504
  %.pre = load %struct.t_atom** %7, align 8, !dbg !504, !tbaa !506
  br label %8, !dbg !503

; <label>:8                                       ; preds = %.lr.ph, %24
  %9 = phi i32 [ %5, %.lr.ph ], [ %25, %24 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %10 = getelementptr inbounds %struct.t_atom* %.pre, i64 %indvars.iv, i32 7, !dbg !507
  %11 = load i32* %10, align 4, !dbg !507, !tbaa !508
  %12 = sext i32 %11 to i64, !dbg !511
  %13 = getelementptr inbounds i32* %restp, i64 %12, !dbg !511
  %14 = load i32* %13, align 4, !dbg !511, !tbaa !400
  %15 = icmp eq i32 %14, %res, !dbg !512
  %16 = zext i1 %15 to i32, !dbg !512
  %17 = icmp eq i32 %16, %bTrue, !dbg !513
  br i1 %17, label %18, label %24, !dbg !514

; <label>:18                                      ; preds = %8
  %19 = load i32* %nra, align 4, !dbg !515, !tbaa !440
  %20 = add nsw i32 %19, 1, !dbg !515
  store i32 %20, i32* %nra, align 4, !dbg !515, !tbaa !440
  %21 = sext i32 %19 to i64, !dbg !516
  %22 = getelementptr inbounds i32* %4, i64 %21, !dbg !516
  %23 = trunc i64 %indvars.iv to i32, !dbg !517
  store i32 %23, i32* %22, align 4, !dbg !517, !tbaa !440
  %.pre2 = load i32* %1, align 4, !dbg !499, !tbaa !494
  br label %24, !dbg !516

; <label>:24                                      ; preds = %8, %18
  %25 = phi i32 [ %9, %8 ], [ %.pre2, %18 ], !dbg !503
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !503
  %26 = sext i32 %25 to i64, !dbg !502
  %27 = icmp slt i64 %indvars.iv.next, %26, !dbg !502
  br i1 %27, label %8, label %._crit_edge, !dbg !503

._crit_edge:                                      ; preds = %24, %0
  ret i32* %4, !dbg !518
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @is_protein(i8* nocapture readonly %resnm) #4 {
  tail call void @llvm.dbg.value(metadata i8* %resnm, i64 0, metadata !208, metadata !372), !dbg !519
  %.b = load i1* @is_protein.bRead, align 1
  br i1 %.b, label %..preheader_crit_edge, label %1, !dbg !520

..preheader_crit_edge:                            ; preds = %0
  %.pre = load i32* @is_protein.naa, align 4, !dbg !521, !tbaa !440
  br label %.preheader, !dbg !520

; <label>:1                                       ; preds = %0
  %2 = tail call i32 @get_strings(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8*** @is_protein.aas) #8, !dbg !524
  store i32 %2, i32* @is_protein.naa, align 4, !dbg !527, !tbaa !440
  store i1 true, i1* @is_protein.bRead, align 1
  br label %.preheader, !dbg !528

.preheader:                                       ; preds = %..preheader_crit_edge, %1
  %3 = phi i32 [ %.pre, %..preheader_crit_edge ], [ %2, %1 ]
  %4 = icmp sgt i32 %3, 0, !dbg !529
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !530

.lr.ph:                                           ; preds = %.preheader
  %5 = load i8*** @is_protein.aas, align 8, !dbg !531, !tbaa !436
  %6 = sext i32 %3 to i64, !dbg !530
  br label %9, !dbg !530

; <label>:7                                       ; preds = %9
  %8 = icmp slt i64 %indvars.iv.next, %6, !dbg !529
  br i1 %8, label %9, label %._crit_edge, !dbg !530

; <label>:9                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %10 = getelementptr inbounds i8** %5, i64 %indvars.iv, !dbg !531
  %11 = load i8** %10, align 8, !dbg !531, !tbaa !436
  %12 = tail call i32 @strcasecmp(i8* %11, i8* %resnm) #8, !dbg !533
  %13 = icmp eq i32 %12, 0, !dbg !534
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !530
  br i1 %13, label %._crit_edge, label %7, !dbg !535

._crit_edge:                                      ; preds = %9, %7, %.preheader
  %.0 = phi i32 [ 0, %.preheader ], [ 1, %9 ], [ 0, %7 ]
  ret i32 %.0, !dbg !536
}

; Function Attrs: optsize
declare i32 @get_strings(i8*, i8***) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i32 %bASK, i32 %bVerb) #4 {
  %ndx_name.i = alloca [4096 x i8], align 16
  %ntp.i = alloca [3 x i32], align 4
  %nra = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !214, metadata !372), !dbg !537
  tail call void @llvm.dbg.value(metadata %struct.t_block* %gb, i64 0, metadata !215, metadata !372), !dbg !538
  tail call void @llvm.dbg.value(metadata i8*** %gn, i64 0, metadata !216, metadata !372), !dbg !539
  tail call void @llvm.dbg.value(metadata i32 %bASK, i64 0, metadata !217, metadata !372), !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !218, metadata !372), !dbg !541
  %1 = icmp eq i32 %bVerb, 0, !dbg !542
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %ntp.i, metadata !234, metadata !372), !dbg !544
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %ndx_name.i, metadata !254, metadata !372), !dbg !546
  br i1 %1, label %3, label %2, !dbg !549

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str, i64 0, i64 0)), !dbg !550
  br label %3, !dbg !550

; <label>:3                                       ; preds = %0, %2
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !551
  %5 = load i32* %4, align 4, !dbg !551, !tbaa !552
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 430, i32 %5, i32 4) #8, !dbg !551
  %7 = bitcast i8* %6 to i32*, !dbg !551
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !219, metadata !372), !dbg !553
  tail call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %8 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 0, i32* %nra, i32 1) #9, !dbg !555
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !221, metadata !372), !dbg !556
  tail call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %9 = load i32* %nra, align 4, !dbg !557, !tbaa !440
  tail call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %9, i32* %8, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !558
  %10 = bitcast i32* %8 to i8*, !dbg !559
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 433, i8* %10) #8, !dbg !559
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !223, metadata !372), !dbg !560
  %11 = load i32* %4, align 4, !dbg !561, !tbaa !552
  %12 = icmp sgt i32 %11, 0, !dbg !564
  br i1 %12, label %.lr.ph46, label %._crit_edge.thread, !dbg !565

._crit_edge.thread:                               ; preds = %3
  %13 = bitcast [3 x i32]* %ntp.i to i8*, !dbg !566
  call void @llvm.lifetime.start(i64 12, i8* %13), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !229, metadata !372) #7, !dbg !567
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !230, metadata !372) #7, !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !231, metadata !372) #7, !dbg !569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !232, metadata !372) #7, !dbg !570
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 12, i32 4, i1 false) #7, !dbg !571
  br label %._crit_edge.i, !dbg !574

.lr.ph46:                                         ; preds = %3
  %14 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !576
  br label %15, !dbg !565

; <label>:15                                      ; preds = %.lr.ph46, %.thread
  %indvars.iv64 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next65, %.thread ]
  %16 = load i8**** %14, align 8, !dbg !576, !tbaa !578
  %17 = getelementptr inbounds i8*** %16, i64 %indvars.iv64, !dbg !579
  %18 = load i8*** %17, align 8, !dbg !579, !tbaa !436
  %19 = load i8** %18, align 8, !dbg !580, !tbaa !436
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !220, metadata !372), !dbg !581
  %20 = getelementptr inbounds i32* %7, i64 %indvars.iv64, !dbg !582
  %21 = load i32* %20, align 4, !dbg !582, !tbaa !400
  %22 = icmp eq i32 %21, 0, !dbg !584
  br i1 %22, label %23, label %.thread, !dbg !585

; <label>:23                                      ; preds = %15
  %24 = tail call i32 @is_protein(i8* %19) #9, !dbg !586
  %25 = icmp eq i32 %24, 0, !dbg !586
  br i1 %25, label %27, label %26, !dbg !587

; <label>:26                                      ; preds = %23
  store i32 1, i32* %20, align 4, !dbg !588, !tbaa !400
  br label %.thread, !dbg !589

; <label>:27                                      ; preds = %23
  %.pr = load i32* %20, align 4, !dbg !590, !tbaa !400
  %28 = icmp eq i32 %.pr, 0, !dbg !592
  br i1 %28, label %.preheader, label %.thread, !dbg !593

.preheader:                                       ; preds = %27, %34
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ 0, %27 ]
  %29 = getelementptr inbounds [5 x i8*]* @Sugars, i64 0, i64 %indvars.iv, !dbg !594
  %30 = load i8** %29, align 8, !dbg !594, !tbaa !436
  %31 = tail call i32 @strcasecmp(i8* %30, i8* %19) #8, !dbg !599
  %32 = icmp eq i32 %31, 0, !dbg !600
  br i1 %32, label %33, label %34, !dbg !601

; <label>:33                                      ; preds = %.preheader
  store i32 2, i32* %20, align 4, !dbg !602, !tbaa !400
  br label %34, !dbg !603

; <label>:34                                      ; preds = %.preheader, %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !604
  %exitcond63 = icmp eq i64 %indvars.iv.next, 5, !dbg !604
  br i1 %exitcond63, label %.thread, label %.preheader, !dbg !604

.thread:                                          ; preds = %34, %15, %26, %27
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !565
  %35 = load i32* %4, align 4, !dbg !561, !tbaa !552
  %36 = sext i32 %35 to i64, !dbg !564
  %37 = icmp slt i64 %indvars.iv.next65, %36, !dbg !564
  br i1 %37, label %15, label %._crit_edge, !dbg !565

._crit_edge:                                      ; preds = %.thread
  %38 = bitcast [3 x i32]* %ntp.i to i8*, !dbg !566
  call void @llvm.lifetime.start(i64 12, i8* %38), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !229, metadata !372) #7, !dbg !567
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !230, metadata !372) #7, !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !231, metadata !372) #7, !dbg !569
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !232, metadata !372) #7, !dbg !570
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 12, i32 4, i1 false) #7, !dbg !571
  %39 = icmp sgt i32 %35, 0, !dbg !605
  br i1 %39, label %.lr.ph.i, label %._crit_edge.i, !dbg !574

.lr.ph.i:                                         ; preds = %._crit_edge
  %40 = add i32 %35, -1, !dbg !574
  br label %41, !dbg !574

; <label>:41                                      ; preds = %41, %.lr.ph.i
  %indvars.iv5.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next6.i, %41 ], !dbg !566
  %42 = getelementptr inbounds i32* %7, i64 %indvars.iv5.i, !dbg !607
  %43 = load i32* %42, align 4, !dbg !607, !tbaa !400
  %44 = zext i32 %43 to i64, !dbg !608
  %45 = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %44, !dbg !608
  %46 = load i32* %45, align 4, !dbg !609, !tbaa !440
  %47 = add nsw i32 %46, 1, !dbg !609
  store i32 %47, i32* %45, align 4, !dbg !609, !tbaa !440
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !dbg !574
  %lftr.wideiv61 = trunc i64 %indvars.iv5.i to i32, !dbg !574
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %40, !dbg !574
  br i1 %exitcond62, label %._crit_edge.i, label %41, !dbg !574

._crit_edge.i:                                    ; preds = %41, %._crit_edge.thread, %._crit_edge
  %48 = phi i8* [ %13, %._crit_edge.thread ], [ %38, %._crit_edge ], [ %38, %41 ]
  br i1 %1, label %p_status.exit, label %.preheader.i, !dbg !610

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %._crit_edge.i ], !dbg !566
  %49 = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %indvars.iv.i, !dbg !611
  %50 = load i32* %49, align 4, !dbg !611, !tbaa !440
  %51 = getelementptr inbounds [3 x i8*]* @ResTP, i64 0, i64 %indvars.iv.i, !dbg !615
  %52 = load i8** %51, align 8, !dbg !615, !tbaa !436
  %53 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str24, i64 0, i64 0), i32 %50, i8* %52) #8, !dbg !616
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !617
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3, !dbg !617
  br i1 %exitcond.i, label %p_status.exit, label %.preheader.i, !dbg !617

p_status.exit:                                    ; preds = %.preheader.i, %._crit_edge.i
  call void @llvm.lifetime.end(i64 12, i8* %48), !dbg !618
  tail call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %54 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 1, i32* %nra, i32 1) #9, !dbg !619
  tail call void @llvm.dbg.value(metadata i32* %54, i64 0, metadata !221, metadata !372), !dbg !556
  tail call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %55 = load i32* %nra, align 4, !dbg !620, !tbaa !440
  %56 = icmp sgt i32 %55, 0, !dbg !621
  br i1 %56, label %57, label %299, !dbg !622

; <label>:57                                      ; preds = %p_status.exit
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !240, metadata !372) #7, !dbg !623
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !241, metadata !372) #7, !dbg !624
  tail call void @llvm.dbg.value(metadata %struct.t_block* %gb, i64 0, metadata !242, metadata !372) #7, !dbg !625
  tail call void @llvm.dbg.value(metadata i8*** %gn, i64 0, metadata !243, metadata !372) #7, !dbg !626
  tail call void @llvm.dbg.value(metadata i32 %bASK, i64 0, metadata !244, metadata !372) #7, !dbg !627
  tail call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !245, metadata !372) #7, !dbg !628
  %58 = getelementptr inbounds [4096 x i8]* %ndx_name.i, i64 0, i64 0, !dbg !629
  call void @llvm.lifetime.start(i64 4096, i8* %58) #7, !dbg !629
  br i1 %1, label %60, label %59, !dbg !630

; <label>:59                                      ; preds = %57
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str74, i64 0, i64 0)) #7, !dbg !631
  br label %60, !dbg !631

; <label>:60                                      ; preds = %59, %57
  %61 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !633
  %62 = load i32* %61, align 4, !dbg !633, !tbaa !494
  %63 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 292, i32 %62, i32 4) #8, !dbg !633
  %64 = bitcast i8* %63 to i32*, !dbg !633
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !249, metadata !372) #7, !dbg !634
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !252, metadata !372) #7, !dbg !635
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !246, metadata !372) #7, !dbg !636
  %65 = load i32* %4, align 4, !dbg !637, !tbaa !552
  %66 = icmp sgt i32 %65, 0, !dbg !640
  br i1 %66, label %.lr.ph64.i, label %.preheader15.i, !dbg !641

.lr.ph64.i:                                       ; preds = %60
  %67 = sext i32 %65 to i64
  %68 = add nsw i64 %67, -1, !dbg !641
  br label %74, !dbg !641

.preheader15.i:                                   ; preds = %74, %60
  %npres.0.lcssa.i = phi i32 [ 0, %60 ], [ %.npres.0.i, %74 ], !dbg !642
  %69 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 1, !dbg !643
  %70 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 2, !dbg !650
  %71 = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 4, !dbg !652
  %72 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !656
  %73 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !661
  br label %.preheader14.i, !dbg !666

; <label>:74                                      ; preds = %74, %.lr.ph64.i
  %indvars.iv85.i = phi i64 [ 0, %.lr.ph64.i ], [ %indvars.iv.next86.i, %74 ], !dbg !642
  %npres.061.i = phi i32 [ 0, %.lr.ph64.i ], [ %.npres.0.i, %74 ], !dbg !642
  %75 = getelementptr inbounds i32* %7, i64 %indvars.iv85.i, !dbg !667
  %76 = load i32* %75, align 4, !dbg !667, !tbaa !400
  %77 = icmp eq i32 %76, 1, !dbg !669
  %78 = zext i1 %77 to i32, !dbg !670
  %.npres.0.i = add nsw i32 %78, %npres.061.i, !dbg !670
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1, !dbg !641
  %exitcond60 = icmp eq i64 %indvars.iv85.i, %68, !dbg !641
  br i1 %exitcond60, label %.preheader15.i, label %74, !dbg !641

.preheader14.i:                                   ; preds = %grp_cmp.exit.thread8.i, %.preheader15.i
  %indvars.iv82.i = phi i64 [ 0, %.preheader15.i ], [ %indvars.iv.next83.i, %grp_cmp.exit.thread8.i ], !dbg !642
  %79 = load i32* %61, align 4, !dbg !671, !tbaa !494
  %80 = icmp sgt i32 %79, 0, !dbg !672
  br i1 %80, label %.lr.ph56.i, label %.preheader14.i.._crit_edge57.i_crit_edge, !dbg !673

.preheader14.i.._crit_edge57.i_crit_edge:         ; preds = %.preheader14.i
  %.pre66 = trunc i64 %indvars.iv82.i to i32, !dbg !674
  br label %._crit_edge57.i, !dbg !673

.lr.ph56.i:                                       ; preds = %.preheader14.i
  %81 = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv82.i, !dbg !675
  %82 = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv82.i, !dbg !676
  %83 = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv82.i, !dbg !678
  %84 = getelementptr inbounds [10 x i32]* @analyse_prot.wholename, i64 0, i64 %indvars.iv82.i, !dbg !682
  %.pre.i = load %struct.t_atom** %72, align 8, !dbg !656, !tbaa !506
  %85 = icmp eq i64 %indvars.iv82.i, 0, !dbg !683
  %86 = trunc i64 %indvars.iv82.i to i32, !dbg !684
  br label %87, !dbg !673

; <label>:87                                      ; preds = %132, %.lr.ph56.i
  %88 = phi i32 [ %79, %.lr.ph56.i ], [ %133, %132 ], !dbg !642
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph56.i ], [ %indvars.iv.next81.i, %132 ], !dbg !642
  %nra.054.i = phi i32 [ 0, %.lr.ph56.i ], [ %nra.1.i, %132 ], !dbg !642
  %89 = getelementptr inbounds %struct.t_atom* %.pre.i, i64 %indvars.iv80.i, i32 7, !dbg !685
  %90 = load i32* %89, align 4, !dbg !685, !tbaa !508
  %91 = sext i32 %90 to i64, !dbg !686
  %92 = getelementptr inbounds i32* %7, i64 %91, !dbg !686
  %93 = load i32* %92, align 4, !dbg !686, !tbaa !400
  %94 = icmp eq i32 %93, 1, !dbg !687
  br i1 %94, label %.preheader13.i, label %132, !dbg !688

.preheader13.i:                                   ; preds = %87
  br i1 %85, label %._crit_edge52.i, label %.lr.ph51.i, !dbg !689

.lr.ph51.i:                                       ; preds = %.preheader13.i
  %95 = load i8**** %73, align 8, !dbg !661, !tbaa !690
  %96 = getelementptr inbounds i8*** %95, i64 %indvars.iv80.i, !dbg !691
  %97 = load i8*** %96, align 8, !dbg !691, !tbaa !436
  %98 = load i8** %97, align 8, !dbg !692, !tbaa !436
  %99 = load i32* %81, align 4, !dbg !675, !tbaa !440
  %100 = sext i32 %99 to i64, !dbg !689
  br label %101, !dbg !689

; <label>:101                                     ; preds = %122, %.lr.ph51.i
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph51.i ], [ %indvars.iv.next79.i, %122 ], !dbg !642
  %match.050.i = phi i32 [ 0, %.lr.ph51.i ], [ %.match.05.i, %122 ], !dbg !642
  tail call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !258, metadata !372) #7, !dbg !693
  br label %102, !dbg !694

; <label>:102                                     ; preds = %102, %101
  %atnm.0.i = phi i8* [ %98, %101 ], [ %105, %102 ], !dbg !642
  %103 = load i8* %atnm.0.i, align 1, !dbg !695, !tbaa !400
  %104 = sext i8 %103 to i32, !dbg !695
  %isdigittmp.i = add nsw i32 %104, -48, !dbg !696
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10, !dbg !696
  %105 = getelementptr inbounds i8* %atnm.0.i, i64 1, !dbg !697
  tail call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !258, metadata !372) #7, !dbg !693
  br i1 %isdigit.i, label %102, label %106, !dbg !694

; <label>:106                                     ; preds = %102
  switch i32 %86, label %111 [
    i32 8, label %107
    i32 1, label %107
  ], !dbg !684

; <label>:107                                     ; preds = %106, %106
  %108 = load i32* %84, align 4, !dbg !682, !tbaa !440
  %109 = sext i32 %108 to i64, !dbg !698
  %110 = icmp slt i64 %indvars.iv78.i, %109, !dbg !698
  br i1 %110, label %111, label %116, !dbg !699

; <label>:111                                     ; preds = %107, %106
  %112 = load i8*** %83, align 8, !dbg !678, !tbaa !436
  %113 = getelementptr inbounds i8** %112, i64 %indvars.iv78.i, !dbg !678
  %114 = load i8** %113, align 8, !dbg !678, !tbaa !436
  %115 = tail call i32 @strcasecmp(i8* %114, i8* %atnm.0.i) #8, !dbg !700
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !253, metadata !372) #7, !dbg !701
  br label %122, !dbg !702

; <label>:116                                     ; preds = %107
  %117 = load i8*** %83, align 8, !dbg !703, !tbaa !436
  %118 = getelementptr inbounds i8** %117, i64 %indvars.iv78.i, !dbg !703
  %119 = load i8** %118, align 8, !dbg !703, !tbaa !436
  %120 = tail call i64 @strlen(i8* %119) #8, !dbg !706
  %121 = tail call i32 @strncasecmp(i8* %119, i8* %atnm.0.i, i64 %120) #8, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !253, metadata !372) #7, !dbg !701
  br label %122, !dbg !708

; <label>:122                                     ; preds = %116, %111
  %.sink6.i = phi i32 [ %121, %116 ], [ %115, %111 ], !dbg !642
  %123 = icmp eq i32 %.sink6.i, 0, !dbg !709
  %.match.05.i = select i1 %123, i32 1, i32 %match.050.i, !dbg !708
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1, !dbg !689
  %124 = icmp slt i64 %indvars.iv.next79.i, %100, !dbg !683
  br i1 %124, label %101, label %._crit_edge52.i, !dbg !689

._crit_edge52.i:                                  ; preds = %122, %.preheader13.i
  %match.0.lcssa.i = phi i32 [ 0, %.preheader13.i ], [ %.match.05.i, %122 ], !dbg !642
  %125 = load i32* %82, align 4, !dbg !676, !tbaa !440
  %126 = icmp eq i32 %match.0.lcssa.i, %125, !dbg !710
  br i1 %126, label %132, label %127, !dbg !711

; <label>:127                                     ; preds = %._crit_edge52.i
  %128 = add nsw i32 %nra.054.i, 1, !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !250, metadata !372) #7, !dbg !713
  %129 = sext i32 %nra.054.i to i64, !dbg !714
  %130 = getelementptr inbounds i32* %64, i64 %129, !dbg !714
  %131 = trunc i64 %indvars.iv80.i to i32, !dbg !715
  store i32 %131, i32* %130, align 4, !dbg !715, !tbaa !440
  %.pre87.i = load i32* %61, align 4, !dbg !671, !tbaa !494
  br label %132, !dbg !714

; <label>:132                                     ; preds = %127, %._crit_edge52.i, %87
  %133 = phi i32 [ %.pre87.i, %127 ], [ %88, %._crit_edge52.i ], [ %88, %87 ], !dbg !673
  %nra.1.i = phi i32 [ %128, %127 ], [ %nra.054.i, %._crit_edge52.i ], [ %nra.054.i, %87 ], !dbg !642
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1, !dbg !673
  %134 = sext i32 %133 to i64, !dbg !672
  %135 = icmp slt i64 %indvars.iv.next81.i, %134, !dbg !672
  br i1 %135, label %87, label %._crit_edge57.i, !dbg !673

._crit_edge57.i:                                  ; preds = %132, %.preheader14.i.._crit_edge57.i_crit_edge
  %.pre-phi = phi i32 [ %.pre66, %.preheader14.i.._crit_edge57.i_crit_edge ], [ %86, %132 ], !dbg !674
  %nra.0.lcssa.i = phi i32 [ 0, %.preheader14.i.._crit_edge57.i_crit_edge ], [ %nra.1.i, %132 ], !dbg !642
  %136 = icmp eq i32 %.pre-phi, 9, !dbg !674
  br i1 %136, label %._crit_edge.i.i, label %grp_cmp.exit.thread.i, !dbg !716

._crit_edge.i.i:                                  ; preds = %._crit_edge57.i
  %137 = getelementptr inbounds [10 x i32]* @analyse_prot.compareto, i64 0, i64 %indvars.iv82.i, !dbg !717
  %138 = load i32* %137, align 4, !dbg !717, !tbaa !440
  tail call void @llvm.dbg.value(metadata %struct.t_block* %gb, i64 0, metadata !287, metadata !372) #7, !dbg !718
  tail call void @llvm.dbg.value(metadata i32* %64, i64 0, metadata !289, metadata !372) #7, !dbg !719
  %139 = load i32* %69, align 4, !dbg !643, !tbaa !426
  %140 = add i32 %138, -10, !dbg !720
  %141 = add i32 %140, %139, !dbg !721
  tail call void @llvm.dbg.value(metadata i32 %141, i64 0, metadata !290, metadata !372) #7, !dbg !722
  %142 = icmp slt i32 %141, %139, !dbg !723
  br i1 %142, label %144, label %143, !dbg !725

; <label>:143                                     ; preds = %._crit_edge.i.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str66, i64 0, i64 0), i32 %141, i32 %139) #8, !dbg !726
  br label %144, !dbg !726

; <label>:144                                     ; preds = %143, %._crit_edge.i.i
  %145 = add nsw i32 %141, 1, !dbg !727
  %146 = sext i32 %145 to i64, !dbg !728
  %147 = load i32** %70, align 8, !dbg !650, !tbaa !414
  %148 = getelementptr inbounds i32* %147, i64 %146, !dbg !728
  %149 = load i32* %148, align 4, !dbg !728, !tbaa !440
  %150 = sext i32 %141 to i64, !dbg !729
  %151 = getelementptr inbounds i32* %147, i64 %150, !dbg !729
  %152 = load i32* %151, align 4, !dbg !729, !tbaa !440
  %153 = sub nsw i32 %149, %152, !dbg !730
  %154 = icmp eq i32 %153, %nra.0.lcssa.i, !dbg !731
  br i1 %154, label %.preheader.i.i, label %grp_cmp.exit.thread.i, !dbg !732

.preheader.i.i:                                   ; preds = %144
  %155 = icmp sgt i32 %nra.0.lcssa.i, 0, !dbg !733
  br i1 %155, label %.lr.ph.i.i, label %grp_cmp.exit.thread8.i, !dbg !734

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %156 = load i32** %71, align 8, !dbg !652, !tbaa !445
  %157 = sext i32 %152 to i64, !dbg !734
  %158 = sext i32 %nra.0.lcssa.i to i64, !dbg !734
  br label %161, !dbg !734

; <label>:159                                     ; preds = %161
  %160 = icmp slt i64 %indvars.iv.next.i.i, %158, !dbg !733
  br i1 %160, label %161, label %grp_cmp.exit.thread8.i, !dbg !734

; <label>:161                                     ; preds = %159, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %159 ], !dbg !735
  %162 = getelementptr inbounds i32* %64, i64 %indvars.iv.i.i, !dbg !736
  %163 = load i32* %162, align 4, !dbg !736, !tbaa !440
  %164 = add nsw i64 %indvars.iv.i.i, %157, !dbg !737
  %165 = getelementptr inbounds i32* %156, i64 %164, !dbg !738
  %166 = load i32* %165, align 4, !dbg !738, !tbaa !440
  %167 = icmp eq i32 %163, %166, !dbg !739
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !734
  br i1 %167, label %159, label %grp_cmp.exit.thread.i, !dbg !740

grp_cmp.exit.thread.i:                            ; preds = %161, %144, %._crit_edge57.i
  %168 = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv82.i, !dbg !741
  %169 = load i8** %168, align 8, !dbg !741, !tbaa !436
  tail call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.0.lcssa.i, i32* %64, i8* %169) #8, !dbg !742
  br label %grp_cmp.exit.thread8.i, !dbg !742

grp_cmp.exit.thread8.i:                           ; preds = %159, %grp_cmp.exit.thread.i, %.preheader.i.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1, !dbg !666
  %exitcond84.i = icmp eq i64 %indvars.iv.next83.i, 10, !dbg !666
  br i1 %exitcond84.i, label %170, label %.preheader14.i, !dbg !666

; <label>:170                                     ; preds = %grp_cmp.exit.thread8.i
  %171 = icmp eq i32 %bASK, 0, !dbg !743
  br i1 %171, label %analyse_prot.exit, label %.preheader12.i, !dbg !744

.preheader12.i:                                   ; preds = %170
  %172 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !745
  br label %173, !dbg !751

; <label>:173                                     ; preds = %.critedge.i, %.preheader12.i
  %indvars.iv76.i = phi i64 [ 0, %.preheader12.i ], [ %indvars.iv.next77.i, %.critedge.i ], !dbg !642
  %174 = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv76.i, !dbg !752
  %175 = load i8** %174, align 8, !dbg !752, !tbaa !436
  %176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str62, i64 0, i64 0), i8* %175, i32 %npres.0.lcssa.i) #8, !dbg !753
  %177 = call fastcc i32 @yn(i32 %bASK) #8, !dbg !754
  %178 = icmp eq i32 %177, 0, !dbg !754
  br i1 %178, label %.critedge.i, label %.preheader11.i, !dbg !755

.preheader11.i:                                   ; preds = %173
  %179 = load %struct.t_atom** %72, align 8, !dbg !756, !tbaa !506
  %180 = getelementptr inbounds %struct.t_atom* %179, i64 0, i32 7, !dbg !757
  %181 = load i32* %180, align 4, !dbg !757, !tbaa !508
  %182 = icmp slt i32 %181, %npres.0.lcssa.i, !dbg !758
  br i1 %182, label %.lr.ph44.i, label %.critedge.i, !dbg !759

.lr.ph44.i:                                       ; preds = %.preheader11.i
  %183 = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv76.i, !dbg !760
  %184 = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv76.i, !dbg !766
  %185 = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv76.i, !dbg !768
  %186 = icmp eq i64 %indvars.iv76.i, 0, !dbg !770
  br label %187, !dbg !759

; <label>:187                                     ; preds = %.backedge.i, %.lr.ph44.i
  %188 = phi %struct.t_atom* [ %179, %.lr.ph44.i ], [ %229, %.backedge.i ], !dbg !642
  %189 = phi i32 [ %181, %.lr.ph44.i ], [ %232, %.backedge.i ], !dbg !642
  %n.143.i = phi i32 [ 0, %.lr.ph44.i ], [ %219, %.backedge.i ], !dbg !642
  %nra.242.i = phi i32 [ 0, %.lr.ph44.i ], [ %nra.2.be.i, %.backedge.i ], !dbg !642
  %190 = load i32* %61, align 4, !dbg !771, !tbaa !494
  %191 = icmp slt i32 %n.143.i, %190, !dbg !772
  br i1 %191, label %.preheader9.i.lr.ph, label %.critedge.i, !dbg !773

.preheader9.i.lr.ph:                              ; preds = %187
  %192 = sext i32 %n.143.i to i64, !dbg !774
  %193 = load i32* %184, align 4, !dbg !766, !tbaa !440
  br label %.preheader9.i, !dbg !775

.preheader9.i:                                    ; preds = %.preheader9.i.lr.ph, %._crit_edge88.i
  %nra.334.i38 = phi i32 [ %nra.242.i, %.preheader9.i.lr.ph ], [ %nra.4.i, %._crit_edge88.i ]
  %indvars.iv74.i37 = phi i64 [ %192, %.preheader9.i.lr.ph ], [ %indvars.iv.next75.i, %._crit_edge88.i ]
  br i1 %186, label %._crit_edge.i1, label %.lr.ph32.i, !dbg !776

.lr.ph32.i:                                       ; preds = %.preheader9.i
  %194 = load i8*** %185, align 8, !dbg !768, !tbaa !436
  %195 = load i8**** %73, align 8, !dbg !777, !tbaa !690
  %196 = getelementptr inbounds i8*** %195, i64 %indvars.iv74.i37, !dbg !778
  %197 = load i8*** %196, align 8, !dbg !778, !tbaa !436
  %198 = load i8** %197, align 8, !dbg !779, !tbaa !436
  %199 = load i32* %183, align 4, !dbg !760, !tbaa !440
  %200 = sext i32 %199 to i64, !dbg !776
  br label %201, !dbg !776

; <label>:201                                     ; preds = %201, %.lr.ph32.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph32.i ], [ %indvars.iv.next73.i, %201 ], !dbg !642
  %match.231.i = phi i32 [ 0, %.lr.ph32.i ], [ %.match.2.i, %201 ], !dbg !642
  %202 = getelementptr inbounds i8** %194, i64 %indvars.iv72.i, !dbg !768
  %203 = load i8** %202, align 8, !dbg !768, !tbaa !436
  %204 = call i32 @strcasecmp(i8* %203, i8* %198) #8, !dbg !780
  %205 = icmp eq i32 %204, 0, !dbg !781
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !253, metadata !372) #7, !dbg !701
  %.match.2.i = select i1 %205, i32 1, i32 %match.231.i, !dbg !782
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1, !dbg !776
  %206 = icmp slt i64 %indvars.iv.next73.i, %200, !dbg !770
  br i1 %206, label %201, label %._crit_edge.i1, !dbg !776

._crit_edge.i1:                                   ; preds = %201, %.preheader9.i
  %match.2.lcssa.i = phi i32 [ 0, %.preheader9.i ], [ %.match.2.i, %201 ], !dbg !642
  %207 = icmp eq i32 %match.2.lcssa.i, %193, !dbg !783
  br i1 %207, label %213, label %208, !dbg !784

; <label>:208                                     ; preds = %._crit_edge.i1
  %209 = add nsw i32 %nra.334.i38, 1, !dbg !785
  call void @llvm.dbg.value(metadata i32 %209, i64 0, metadata !250, metadata !372) #7, !dbg !713
  %210 = sext i32 %nra.334.i38 to i64, !dbg !786
  %211 = getelementptr inbounds i32* %64, i64 %210, !dbg !786
  %212 = trunc i64 %indvars.iv74.i37 to i32, !dbg !787
  store i32 %212, i32* %211, align 4, !dbg !787, !tbaa !440
  br label %213, !dbg !786

; <label>:213                                     ; preds = %208, %._crit_edge.i1
  %nra.4.i = phi i32 [ %209, %208 ], [ %nra.334.i38, %._crit_edge.i1 ], !dbg !642
  %indvars.iv.next75.i = add nsw i64 %indvars.iv74.i37, 1, !dbg !788
  %214 = getelementptr inbounds %struct.t_atom* %188, i64 %indvars.iv.next75.i, i32 7, !dbg !789
  %215 = load i32* %214, align 4, !dbg !789, !tbaa !508
  %216 = icmp eq i32 %215, %189, !dbg !790
  br i1 %216, label %._crit_edge88.i, label %.critedge2.i, !dbg !788

._crit_edge88.i:                                  ; preds = %213
  %.pre89.i = load i32* %61, align 4, !dbg !791, !tbaa !494
  %217 = sext i32 %.pre89.i to i64, !dbg !792
  %218 = icmp slt i64 %indvars.iv.next75.i, %217, !dbg !792
  br i1 %218, label %.preheader9.i, label %.critedge2.i, !dbg !775

.critedge2.i:                                     ; preds = %._crit_edge88.i, %213
  %219 = trunc i64 %indvars.iv.next75.i to i32, !dbg !788
  %220 = icmp sgt i32 %nra.4.i, 0, !dbg !793
  br i1 %220, label %221, label %.backedge.i, !dbg !794

; <label>:221                                     ; preds = %.critedge2.i
  %222 = sext i32 %189 to i64, !dbg !745
  %223 = load i8**** %172, align 8, !dbg !745, !tbaa !578
  %224 = getelementptr inbounds i8*** %223, i64 %222, !dbg !745
  %225 = load i8*** %224, align 8, !dbg !745, !tbaa !436
  %226 = load i8** %225, align 8, !dbg !745, !tbaa !436
  %227 = add nsw i32 %189, 1, !dbg !745
  %228 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %58, i32 0, i64 4096, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* %175, i8* %226, i32 %227) #8, !dbg !745
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.4.i, i32* %64, i8* %58) #8, !dbg !795
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !372) #7, !dbg !713
  %.pre90.i = load %struct.t_atom** %72, align 8, !dbg !756, !tbaa !506
  br label %.backedge.i, !dbg !796

.backedge.i:                                      ; preds = %221, %.critedge2.i
  %229 = phi %struct.t_atom* [ %.pre90.i, %221 ], [ %188, %.critedge2.i ], !dbg !797
  %nra.2.be.i = phi i32 [ 0, %221 ], [ %nra.4.i, %.critedge2.i ], !dbg !642
  %sext93.i = shl i64 %indvars.iv.next75.i, 32, !dbg !797
  %230 = ashr exact i64 %sext93.i, 32, !dbg !797
  %231 = getelementptr inbounds %struct.t_atom* %229, i64 %230, i32 7, !dbg !757
  %232 = load i32* %231, align 4, !dbg !757, !tbaa !508
  %233 = icmp slt i32 %232, %npres.0.lcssa.i, !dbg !758
  br i1 %233, label %187, label %.critedge.i, !dbg !759

.critedge.i:                                      ; preds = %.backedge.i, %187, %.preheader11.i, %173
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1, !dbg !751
  %exitcond.i2 = icmp eq i64 %indvars.iv.next77.i, 10, !dbg !751
  br i1 %exitcond.i2, label %234, label %173, !dbg !751

; <label>:234                                     ; preds = %.critedge.i
  %235 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str64, i64 0, i64 0)) #8, !dbg !798
  %236 = call fastcc i32 @yn(i32 %bASK) #8, !dbg !799
  %237 = icmp eq i32 %236, 0, !dbg !799
  br i1 %237, label %analyse_prot.exit, label %.critedge4.preheader.i, !dbg !800

.critedge4.preheader.i:                           ; preds = %234
  %238 = load %struct.t_atom** %72, align 8, !dbg !801, !tbaa !506
  %239 = getelementptr inbounds %struct.t_atom* %238, i64 0, i32 7, !dbg !804
  %240 = load i32* %239, align 4, !dbg !804, !tbaa !508
  %241 = icmp slt i32 %240, %npres.0.lcssa.i, !dbg !805
  br i1 %241, label %.lr.ph27.i, label %analyse_prot.exit, !dbg !806

.critedge4.loopexit.i:                            ; preds = %._crit_edge91.i, %291
  %242 = trunc i64 %indvars.iv.next.i5 to i32, !dbg !807
  %sext.i = shl i64 %indvars.iv.next.i5, 32, !dbg !811
  %243 = ashr exact i64 %sext.i, 32, !dbg !811
  %244 = getelementptr inbounds %struct.t_atom* %238, i64 %243, i32 7, !dbg !804
  %245 = load i32* %244, align 4, !dbg !804, !tbaa !508
  %246 = icmp slt i32 %245, %npres.0.lcssa.i, !dbg !805
  br i1 %246, label %.lr.ph27.i, label %.critedge3.i, !dbg !806

.lr.ph27.i:                                       ; preds = %.critedge4.preheader.i, %.critedge4.loopexit.i
  %247 = phi i32 [ %245, %.critedge4.loopexit.i ], [ %240, %.critedge4.preheader.i ], !dbg !642
  %n.326.i = phi i32 [ %242, %.critedge4.loopexit.i ], [ 0, %.critedge4.preheader.i ], !dbg !642
  %nra.525.i = phi i32 [ %nra.7.i, %.critedge4.loopexit.i ], [ 0, %.critedge4.preheader.i ], !dbg !642
  %248 = load i32* %61, align 4, !dbg !812, !tbaa !494
  %249 = icmp slt i32 %n.326.i, %248, !dbg !813
  br i1 %249, label %.lr.ph, label %.critedge3.i, !dbg !814

.lr.ph:                                           ; preds = %.lr.ph27.i
  %250 = sext i32 %n.326.i to i64, !dbg !815
  %.pre = load i8**** %73, align 8, !dbg !816, !tbaa !690
  br label %251, !dbg !818

; <label>:251                                     ; preds = %.lr.ph, %._crit_edge91.i
  %nra.618.i32 = phi i32 [ %nra.525.i, %.lr.ph ], [ %nra.7.i, %._crit_edge91.i ]
  %hold.020.i31 = phi i32 [ -1, %.lr.ph ], [ %hold.1.i, %._crit_edge91.i ]
  %indvars.iv.i430 = phi i64 [ %250, %.lr.ph ], [ %indvars.iv.next.i5, %._crit_edge91.i ]
  %252 = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.i430, !dbg !819
  %253 = load i8*** %252, align 8, !dbg !819, !tbaa !436
  %254 = load i8** %253, align 8, !dbg !820, !tbaa !436
  %255 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i8* %254) #8, !dbg !821
  %256 = icmp eq i32 %255, 0, !dbg !822
  br i1 %256, label %257, label %263, !dbg !823

; <label>:257                                     ; preds = %251
  %258 = add nsw i32 %nra.618.i32, 1, !dbg !824
  call void @llvm.dbg.value(metadata i32 %258, i64 0, metadata !250, metadata !372) #7, !dbg !713
  %259 = sext i32 %nra.618.i32 to i64, !dbg !826
  %260 = getelementptr inbounds i32* %64, i64 %259, !dbg !826
  %261 = trunc i64 %indvars.iv.i430 to i32, !dbg !827
  store i32 %261, i32* %260, align 4, !dbg !827, !tbaa !440
  call void @llvm.dbg.value(metadata i32 %258, i64 0, metadata !270, metadata !372) #7, !dbg !828
  %262 = add nsw i32 %nra.618.i32, 3, !dbg !829
  call void @llvm.dbg.value(metadata i32 %262, i64 0, metadata !250, metadata !372) #7, !dbg !713
  br label %291, !dbg !830

; <label>:263                                     ; preds = %251
  %264 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0), i8* %254) #8, !dbg !831
  %265 = icmp eq i32 %264, 0, !dbg !833
  br i1 %265, label %266, label %270, !dbg !834

; <label>:266                                     ; preds = %263
  %267 = sext i32 %hold.020.i31 to i64, !dbg !835
  %268 = getelementptr inbounds i32* %64, i64 %267, !dbg !835
  %269 = trunc i64 %indvars.iv.i430 to i32, !dbg !837
  store i32 %269, i32* %268, align 4, !dbg !837, !tbaa !440
  br label %291, !dbg !838

; <label>:270                                     ; preds = %263
  %271 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* %254) #8, !dbg !839
  %272 = icmp eq i32 %271, 0, !dbg !841
  br i1 %272, label %273, label %278, !dbg !842

; <label>:273                                     ; preds = %270
  %274 = add nsw i32 %hold.020.i31, 1, !dbg !843
  %275 = sext i32 %274 to i64, !dbg !845
  %276 = getelementptr inbounds i32* %64, i64 %275, !dbg !845
  %277 = trunc i64 %indvars.iv.i430 to i32, !dbg !846
  store i32 %277, i32* %276, align 4, !dbg !846, !tbaa !440
  br label %291, !dbg !847

; <label>:278                                     ; preds = %270
  %279 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* %254) #8, !dbg !848
  %280 = icmp eq i32 %279, 0, !dbg !850
  br i1 %280, label %281, label %286, !dbg !851

; <label>:281                                     ; preds = %278
  %282 = add nsw i32 %hold.020.i31, 1, !dbg !852
  %283 = sext i32 %282 to i64, !dbg !854
  %284 = getelementptr inbounds i32* %64, i64 %283, !dbg !854
  %285 = trunc i64 %indvars.iv.i430 to i32, !dbg !855
  store i32 %285, i32* %284, align 4, !dbg !855, !tbaa !440
  br label %291, !dbg !856

; <label>:286                                     ; preds = %278
  %287 = add nsw i32 %nra.618.i32, 1, !dbg !857
  call void @llvm.dbg.value(metadata i32 %287, i64 0, metadata !250, metadata !372) #7, !dbg !713
  %288 = sext i32 %nra.618.i32 to i64, !dbg !858
  %289 = getelementptr inbounds i32* %64, i64 %288, !dbg !858
  %290 = trunc i64 %indvars.iv.i430 to i32, !dbg !859
  store i32 %290, i32* %289, align 4, !dbg !859, !tbaa !440
  br label %291, !dbg !642

; <label>:291                                     ; preds = %286, %281, %273, %266, %257
  %nra.7.i = phi i32 [ %262, %257 ], [ %nra.618.i32, %266 ], [ %nra.618.i32, %273 ], [ %nra.618.i32, %281 ], [ %287, %286 ], !dbg !642
  %hold.1.i = phi i32 [ %258, %257 ], [ %hold.020.i31, %266 ], [ %hold.020.i31, %273 ], [ %hold.020.i31, %281 ], [ %hold.020.i31, %286 ], !dbg !642
  %indvars.iv.next.i5 = add nsw i64 %indvars.iv.i430, 1, !dbg !807
  %292 = getelementptr inbounds %struct.t_atom* %238, i64 %indvars.iv.next.i5, i32 7, !dbg !860
  %293 = load i32* %292, align 4, !dbg !860, !tbaa !508
  %294 = icmp eq i32 %293, %247, !dbg !861
  br i1 %294, label %._crit_edge91.i, label %.critedge4.loopexit.i, !dbg !807

._crit_edge91.i:                                  ; preds = %291
  %.pre92.i = load i32* %61, align 4, !dbg !862, !tbaa !494
  %295 = sext i32 %.pre92.i to i64, !dbg !863
  %296 = icmp slt i64 %indvars.iv.next.i5, %295, !dbg !863
  br i1 %296, label %251, label %.critedge4.loopexit.i, !dbg !818

.critedge3.i:                                     ; preds = %.lr.ph27.i, %.critedge4.loopexit.i
  %nra.5.lcssa.i = phi i32 [ %nra.7.i, %.critedge4.loopexit.i ], [ %nra.525.i, %.lr.ph27.i ], !dbg !642
  %297 = icmp sgt i32 %nra.5.lcssa.i, 0, !dbg !864
  br i1 %297, label %298, label %analyse_prot.exit, !dbg !866

; <label>:298                                     ; preds = %.critedge3.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.5.lcssa.i, i32* %64, i8* getelementptr inbounds ([10 x i8]* @.str65, i64 0, i64 0)) #8, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !372) #7, !dbg !713
  br label %analyse_prot.exit, !dbg !869

analyse_prot.exit:                                ; preds = %170, %234, %.critedge4.preheader.i, %.critedge3.i, %298
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 387, i8* %63) #8, !dbg !870
  call void @llvm.lifetime.end(i64 4096, i8* %58) #7, !dbg !871
  br label %299, !dbg !642

; <label>:299                                     ; preds = %analyse_prot.exit, %p_status.exit
  %300 = bitcast i32* %54 to i8*, !dbg !872
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 452, i8* %300) #8, !dbg !872
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %301 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 1, i32* %nra, i32 0) #9, !dbg !873
  call void @llvm.dbg.value(metadata i32* %301, i64 0, metadata !221, metadata !372), !dbg !556
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %302 = load i32* %nra, align 4, !dbg !874, !tbaa !440
  %303 = icmp sgt i32 %302, 0, !dbg !876
  br i1 %303, label %304, label %309, !dbg !877

; <label>:304                                     ; preds = %299
  %305 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !878
  %306 = load i32* %305, align 4, !dbg !878, !tbaa !494
  %307 = icmp slt i32 %302, %306, !dbg !879
  br i1 %307, label %308, label %309, !dbg !880

; <label>:308                                     ; preds = %304
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %302, i32* %301, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !881
  br label %309, !dbg !881

; <label>:309                                     ; preds = %308, %304, %299
  %310 = bitcast i32* %301 to i8*, !dbg !882
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 458, i8* %310) #8, !dbg !882
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %311 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 2, i32* %nra, i32 1) #9, !dbg !883
  call void @llvm.dbg.value(metadata i32* %311, i64 0, metadata !221, metadata !372), !dbg !556
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %312 = load i32* %nra, align 4, !dbg !884, !tbaa !440
  %313 = icmp sgt i32 %312, 0, !dbg !886
  br i1 %313, label %314, label %analyse_dna.exit, !dbg !887

; <label>:314                                     ; preds = %309
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %312, i32* %311, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0)) #9, !dbg !888
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !301, metadata !372) #7, !dbg !890
  call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !302, metadata !372) #7, !dbg !892
  call void @llvm.dbg.value(metadata %struct.t_block* %gb, i64 0, metadata !303, metadata !372) #7, !dbg !893
  call void @llvm.dbg.value(metadata i8*** %gn, i64 0, metadata !304, metadata !372) #7, !dbg !894
  call void @llvm.dbg.value(metadata i32 %bASK, i64 0, metadata !305, metadata !372) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !306, metadata !372) #7, !dbg !896
  br i1 %1, label %316, label %315, !dbg !897

; <label>:315                                     ; preds = %314
  %puts.i6 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str75, i64 0, i64 0)) #7, !dbg !898
  br label %316, !dbg !898

; <label>:316                                     ; preds = %315, %314
  %317 = load %struct.__sFILE** @debug, align 8, !dbg !900, !tbaa !436
  %318 = icmp eq %struct.__sFILE* %317, null, !dbg !900
  br i1 %318, label %analyse_dna.exit, label %319, !dbg !902

; <label>:319                                     ; preds = %316
  %320 = sext i32 %bASK to i64, !dbg !903
  %321 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %320, !dbg !903
  %322 = load i8** %321, align 8, !dbg !903, !tbaa !436
  %323 = sext i32 %bVerb to i64, !dbg !904
  %324 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %323, !dbg !904
  %325 = load i8** %324, align 8, !dbg !904, !tbaa !436
  %326 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str68, i64 0, i64 0), i8* %6, %struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i8* %322, i8* %325) #8, !dbg !905
  br label %analyse_dna.exit, !dbg !905

analyse_dna.exit:                                 ; preds = %319, %316, %309
  %327 = bitcast i32* %311 to i8*, !dbg !906
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 466, i8* %327) #8, !dbg !906
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !309, metadata !372) #7, !dbg !907
  call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !310, metadata !372) #7, !dbg !909
  call void @llvm.dbg.value(metadata %struct.t_block* %gb, i64 0, metadata !311, metadata !372) #7, !dbg !910
  call void @llvm.dbg.value(metadata i8*** %gn, i64 0, metadata !312, metadata !372) #7, !dbg !911
  call void @llvm.dbg.value(metadata i32 %bASK, i64 0, metadata !313, metadata !372) #7, !dbg !912
  call void @llvm.dbg.value(metadata i32 %bVerb, i64 0, metadata !314, metadata !372) #7, !dbg !913
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !315, metadata !372) #7, !dbg !914
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !316, metadata !372) #7, !dbg !915
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !330, metadata !372) #7, !dbg !916
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !322, metadata !372) #7, !dbg !917
  %328 = load i32* %4, align 4, !dbg !918, !tbaa !552
  %329 = icmp sgt i32 %328, 0, !dbg !921
  br i1 %329, label %.lr.ph46.i.preheader, label %338, !dbg !922

.lr.ph46.i.preheader:                             ; preds = %analyse_dna.exit
  %330 = sext i32 %328 to i64, !dbg !921
  br label %.lr.ph46.i, !dbg !923

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %334
  %indvars.iv78.i7 = phi i64 [ %indvars.iv.next79.i8, %334 ], [ 0, %.lr.ph46.i.preheader ], !dbg !925
  %331 = getelementptr inbounds i32* %7, i64 %indvars.iv78.i7, !dbg !923
  %332 = load i32* %331, align 4, !dbg !923, !tbaa !400
  %333 = icmp eq i32 %332, 0, !dbg !926
  br i1 %333, label %._crit_edge47.i, label %334, !dbg !927

; <label>:334                                     ; preds = %.lr.ph46.i
  %indvars.iv.next79.i8 = add nuw nsw i64 %indvars.iv78.i7, 1, !dbg !922
  %335 = icmp slt i64 %indvars.iv.next79.i8, %330, !dbg !921
  br i1 %335, label %.lr.ph46.i, label %._crit_edge50.i, !dbg !922

._crit_edge47.i:                                  ; preds = %.lr.ph46.i
  %336 = trunc i64 %indvars.iv78.i7 to i32, !dbg !927
  br label %338, !dbg !927

._crit_edge50.i:                                  ; preds = %334
  %337 = trunc i64 %indvars.iv.next79.i8 to i32, !dbg !922
  br label %338, !dbg !922

; <label>:338                                     ; preds = %._crit_edge50.i, %._crit_edge47.i, %analyse_dna.exit
  %i.0.lcssa.i = phi i32 [ %336, %._crit_edge47.i ], [ %337, %._crit_edge50.i ], [ 0, %analyse_dna.exit ], !dbg !925
  %339 = icmp slt i32 %i.0.lcssa.i, %328, !dbg !928
  br i1 %339, label %340, label %analyse_other.exit, !dbg !930

; <label>:340                                     ; preds = %338
  br i1 %1, label %342, label %341, !dbg !931

; <label>:341                                     ; preds = %340
  %puts.i9 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str76, i64 0, i64 0)) #7, !dbg !933
  br label %342, !dbg !933

; <label>:342                                     ; preds = %341, %340
  %343 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !935
  %344 = load i32* %343, align 4, !dbg !935, !tbaa !494
  %345 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 180, i32 %344, i32 4) #8, !dbg !935
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !324, metadata !372) #7, !dbg !936
  %346 = load i32* %343, align 4, !dbg !937, !tbaa !494
  %347 = icmp sgt i32 %346, 0, !dbg !940
  br i1 %347, label %.lr.ph41.i, label %._crit_edge30.i, !dbg !941

.lr.ph41.i:                                       ; preds = %342
  %348 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !942
  %349 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !944
  br label %354, !dbg !941

.preheader2.i:                                    ; preds = %389
  %350 = icmp sgt i32 %nrestp.1.i, 0, !dbg !945
  br i1 %350, label %.lr.ph29.i, label %._crit_edge30.i, !dbg !948

.lr.ph29.i:                                       ; preds = %.preheader2.i
  %351 = icmp eq i32 %bASK, 0, !dbg !949
  %352 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !952
  %353 = add i32 %nrestp.1.i, -1, !dbg !948
  br label %393, !dbg !948

; <label>:354                                     ; preds = %389, %.lr.ph41.i
  %355 = phi i32 [ %346, %.lr.ph41.i ], [ %390, %389 ], !dbg !925
  %indvars.iv76.i10 = phi i64 [ 0, %.lr.ph41.i ], [ %indvars.iv.next77.i15, %389 ], !dbg !925
  %nrestp.039.i = phi i32 [ 0, %.lr.ph41.i ], [ %nrestp.1.i, %389 ], !dbg !925
  %restp.038.i = phi i8** [ null, %.lr.ph41.i ], [ %restp.1.i, %389 ], !dbg !925
  %356 = load %struct.t_atom** %348, align 8, !dbg !942, !tbaa !506
  %357 = getelementptr inbounds %struct.t_atom* %356, i64 %indvars.iv76.i10, i32 7, !dbg !964
  %358 = load i32* %357, align 4, !dbg !964, !tbaa !508
  call void @llvm.dbg.value(metadata i32 %358, i64 0, metadata !326, metadata !372) #7, !dbg !965
  %359 = sext i32 %358 to i64, !dbg !966
  %360 = load i8**** %349, align 8, !dbg !944, !tbaa !578
  %361 = getelementptr inbounds i8*** %360, i64 %359, !dbg !966
  %362 = load i8*** %361, align 8, !dbg !966, !tbaa !436
  %363 = load i8** %362, align 8, !dbg !967, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %363, i64 0, metadata !317, metadata !372) #7, !dbg !968
  %364 = getelementptr inbounds i32* %7, i64 %359, !dbg !969
  %365 = load i32* %364, align 4, !dbg !969, !tbaa !400
  %366 = icmp eq i32 %365, 0, !dbg !971
  br i1 %366, label %.preheader3.i, label %389, !dbg !972

.preheader3.i:                                    ; preds = %354
  %367 = icmp sgt i32 %nrestp.039.i, 0, !dbg !973
  br i1 %367, label %.lr.ph32.i11, label %378, !dbg !977

.lr.ph32.i11:                                     ; preds = %.preheader3.i
  %368 = sext i32 %nrestp.039.i to i64, !dbg !977
  br label %369, !dbg !977

; <label>:369                                     ; preds = %374, %.lr.ph32.i11
  %indvars.iv74.i12 = phi i64 [ 0, %.lr.ph32.i11 ], [ %indvars.iv.next75.i13, %374 ], !dbg !925
  %370 = getelementptr inbounds i8** %restp.038.i, i64 %indvars.iv74.i12, !dbg !978
  %371 = load i8** %370, align 8, !dbg !978, !tbaa !436
  %372 = call i32 @strcmp(i8* %371, i8* %363) #8, !dbg !980
  %373 = icmp eq i32 %372, 0, !dbg !981
  br i1 %373, label %._crit_edge33.i, label %374, !dbg !982

; <label>:374                                     ; preds = %369
  %indvars.iv.next75.i13 = add nuw nsw i64 %indvars.iv74.i12, 1, !dbg !977
  %375 = icmp slt i64 %indvars.iv.next75.i13, %368, !dbg !973
  br i1 %375, label %369, label %._crit_edge35.i, !dbg !977

._crit_edge33.i:                                  ; preds = %369
  %376 = trunc i64 %indvars.iv74.i12 to i32, !dbg !982
  br label %378, !dbg !982

._crit_edge35.i:                                  ; preds = %374
  %377 = trunc i64 %indvars.iv.next75.i13 to i32, !dbg !977
  br label %378, !dbg !977

; <label>:378                                     ; preds = %._crit_edge35.i, %._crit_edge33.i, %.preheader3.i
  %l.0.lcssa.i = phi i32 [ %376, %._crit_edge33.i ], [ %377, %._crit_edge35.i ], [ 0, %.preheader3.i ], !dbg !925
  %379 = icmp eq i32 %l.0.lcssa.i, %nrestp.039.i, !dbg !983
  br i1 %379, label %380, label %389, !dbg !985

; <label>:380                                     ; preds = %378
  %381 = bitcast i8** %restp.038.i to i8*, !dbg !986
  %382 = add nsw i32 %nrestp.039.i, 1, !dbg !986
  call void @llvm.dbg.value(metadata i32 %382, i64 0, metadata !330, metadata !372) #7, !dbg !916
  %383 = shl i32 %382, 3, !dbg !986
  %384 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 189, i8* %381, i32 %383) #8, !dbg !986
  %385 = bitcast i8* %384 to i8**, !dbg !986
  call void @llvm.dbg.value(metadata i8** %385, i64 0, metadata !315, metadata !372) #7, !dbg !914
  %386 = call i8* @strdup(i8* %363) #8, !dbg !988
  %387 = sext i32 %nrestp.039.i to i64, !dbg !989
  %388 = getelementptr inbounds i8** %385, i64 %387, !dbg !989
  store i8* %386, i8** %388, align 8, !dbg !990, !tbaa !436
  %.pre.i14 = load i32* %343, align 4, !dbg !937, !tbaa !494
  br label %389, !dbg !991

; <label>:389                                     ; preds = %380, %378, %354
  %390 = phi i32 [ %.pre.i14, %380 ], [ %355, %378 ], [ %355, %354 ], !dbg !941
  %restp.1.i = phi i8** [ %385, %380 ], [ %restp.038.i, %378 ], [ %restp.038.i, %354 ], !dbg !925
  %nrestp.1.i = phi i32 [ %382, %380 ], [ %nrestp.039.i, %378 ], [ %nrestp.039.i, %354 ], !dbg !925
  %indvars.iv.next77.i15 = add nuw nsw i64 %indvars.iv76.i10, 1, !dbg !941
  %391 = sext i32 %390 to i64, !dbg !940
  %392 = icmp slt i64 %indvars.iv.next77.i15, %391, !dbg !940
  br i1 %392, label %354, label %.preheader2.i, !dbg !941

; <label>:393                                     ; preds = %._crit_edge80.i, %.lr.ph29.i
  %394 = phi i32 [ %390, %.lr.ph29.i ], [ %.pre81.i, %._crit_edge80.i ], !dbg !925
  %indvars.iv70.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next71.i, %._crit_edge80.i ], !dbg !925
  %395 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 195, i32 %394, i32 4) #8, !dbg !992
  %396 = bitcast i8* %395 to i32*, !dbg !992
  call void @llvm.dbg.value(metadata i32* %396, i64 0, metadata !320, metadata !372) #7, !dbg !993
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !327, metadata !372) #7, !dbg !994
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !323, metadata !372) #7, !dbg !995
  %397 = load i32* %343, align 4, !dbg !996, !tbaa !494
  %398 = icmp sgt i32 %397, 0, !dbg !999
  %399 = getelementptr inbounds i8** %restp.1.i, i64 %indvars.iv70.i, !dbg !1000
  br i1 %398, label %.lr.ph.i17, label %._crit_edge86.i, !dbg !1003

._crit_edge86.i:                                  ; preds = %393
  %.pre87.i16 = load i8** %399, align 8, !dbg !1004, !tbaa !436
  br label %._crit_edge.i20, !dbg !1003

.lr.ph.i17:                                       ; preds = %393
  %.pre82.i = load %struct.t_atom** %348, align 8, !dbg !1005, !tbaa !506
  %.pre83.i = load i8**** %349, align 8, !dbg !1006, !tbaa !578
  %.pre84.i = load i8** %399, align 8, !dbg !1000, !tbaa !436
  br label %400, !dbg !1003

; <label>:400                                     ; preds = %415, %.lr.ph.i17
  %401 = phi i32 [ %397, %.lr.ph.i17 ], [ %416, %415 ], !dbg !925
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %415 ], !dbg !925
  %naid.05.i = phi i32 [ 0, %.lr.ph.i17 ], [ %naid.1.i, %415 ], !dbg !925
  %402 = getelementptr inbounds %struct.t_atom* %.pre82.i, i64 %indvars.iv.i18, i32 7, !dbg !1007
  %403 = load i32* %402, align 4, !dbg !1007, !tbaa !508
  %404 = sext i32 %403 to i64, !dbg !1008
  %405 = getelementptr inbounds i8*** %.pre83.i, i64 %404, !dbg !1008
  %406 = load i8*** %405, align 8, !dbg !1008, !tbaa !436
  %407 = load i8** %406, align 8, !dbg !1009, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %407, i64 0, metadata !317, metadata !372) #7, !dbg !968
  %408 = call i32 @strcmp(i8* %.pre84.i, i8* %407) #8, !dbg !1010
  %409 = icmp eq i32 %408, 0, !dbg !1011
  br i1 %409, label %410, label %415, !dbg !1012

; <label>:410                                     ; preds = %400
  %411 = add nsw i32 %naid.05.i, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %411, i64 0, metadata !327, metadata !372) #7, !dbg !994
  %412 = sext i32 %naid.05.i to i64, !dbg !1014
  %413 = getelementptr inbounds i32* %396, i64 %412, !dbg !1014
  %414 = trunc i64 %indvars.iv.i18 to i32, !dbg !1015
  store i32 %414, i32* %413, align 4, !dbg !1015, !tbaa !440
  %.pre85.i = load i32* %343, align 4, !dbg !996, !tbaa !494
  br label %415, !dbg !1014

; <label>:415                                     ; preds = %410, %400
  %416 = phi i32 [ %.pre85.i, %410 ], [ %401, %400 ], !dbg !1003
  %naid.1.i = phi i32 [ %411, %410 ], [ %naid.05.i, %400 ], !dbg !925
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1, !dbg !1003
  %417 = sext i32 %416 to i64, !dbg !999
  %418 = icmp slt i64 %indvars.iv.next.i19, %417, !dbg !999
  br i1 %418, label %400, label %._crit_edge.i20, !dbg !1003

._crit_edge.i20:                                  ; preds = %415, %._crit_edge86.i
  %419 = phi i8* [ %.pre87.i16, %._crit_edge86.i ], [ %.pre84.i, %415 ], !dbg !925
  %naid.0.lcssa.i = phi i32 [ 0, %._crit_edge86.i ], [ %naid.1.i, %415 ], !dbg !925
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naid.0.lcssa.i, i32* %396, i8* %419) #8, !dbg !1016
  br i1 %351, label %480, label %420, !dbg !1017

; <label>:420                                     ; preds = %._crit_edge.i20
  %421 = load i8** %399, align 8, !dbg !1018, !tbaa !436
  %422 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str71, i64 0, i64 0), i8* %421) #8, !dbg !1019
  %423 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1020, !tbaa !436
  %424 = call i32 @fflush(%struct.__sFILE* %423) #8, !dbg !1021
  %425 = call fastcc i32 @yn(i32 %bASK) #8, !dbg !1022
  %426 = icmp eq i32 %425, 0, !dbg !1022
  br i1 %426, label %479, label %.preheader1.i, !dbg !1023

.preheader1.i:                                    ; preds = %420
  %427 = icmp sgt i32 %naid.0.lcssa.i, 0, !dbg !1024
  br i1 %427, label %.lr.ph16.i, label %.loopexit.i, !dbg !1027

.lr.ph16.i:                                       ; preds = %.preheader1.i
  %428 = add i32 %naid.0.lcssa.i, -1, !dbg !1027
  br label %429, !dbg !1027

; <label>:429                                     ; preds = %458, %.lr.ph16.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph16.i ], [ %indvars.iv.next61.i, %458 ], !dbg !925
  %natp.015.i = phi i32 [ 0, %.lr.ph16.i ], [ %natp.1.i, %458 ], !dbg !925
  %attp.113.i = phi i8** [ null, %.lr.ph16.i ], [ %attp.2.i, %458 ], !dbg !925
  %430 = getelementptr inbounds i32* %396, i64 %indvars.iv60.i, !dbg !1028
  %431 = load i32* %430, align 4, !dbg !1028, !tbaa !440
  %432 = sext i32 %431 to i64, !dbg !1030
  %433 = load i8**** %352, align 8, !dbg !1031, !tbaa !690
  %434 = getelementptr inbounds i8*** %433, i64 %432, !dbg !1030
  %435 = load i8*** %434, align 8, !dbg !1030, !tbaa !436
  %436 = load i8** %435, align 8, !dbg !1032, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %436, i64 0, metadata !318, metadata !372) #7, !dbg !1033
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !325, metadata !372) #7, !dbg !1034
  %437 = icmp sgt i32 %natp.015.i, 0, !dbg !1035
  br i1 %437, label %.lr.ph8.i, label %448, !dbg !1038

.lr.ph8.i:                                        ; preds = %429
  %438 = sext i32 %natp.015.i to i64, !dbg !1038
  br label %439, !dbg !1038

; <label>:439                                     ; preds = %444, %.lr.ph8.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next59.i, %444 ], !dbg !925
  %440 = getelementptr inbounds i8** %attp.113.i, i64 %indvars.iv58.i, !dbg !1039
  %441 = load i8** %440, align 8, !dbg !1039, !tbaa !436
  %442 = call i32 @strcmp(i8* %436, i8* %441) #8, !dbg !1041
  %443 = icmp eq i32 %442, 0, !dbg !1042
  br i1 %443, label %._crit_edge9.i, label %444, !dbg !1043

; <label>:444                                     ; preds = %439
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1, !dbg !1038
  %445 = icmp slt i64 %indvars.iv.next59.i, %438, !dbg !1035
  br i1 %445, label %439, label %._crit_edge11.i, !dbg !1038

._crit_edge9.i:                                   ; preds = %439
  %446 = trunc i64 %indvars.iv58.i to i32, !dbg !1043
  br label %448, !dbg !1043

._crit_edge11.i:                                  ; preds = %444
  %447 = trunc i64 %indvars.iv.next59.i to i32, !dbg !1038
  br label %448, !dbg !1038

; <label>:448                                     ; preds = %._crit_edge11.i, %._crit_edge9.i, %429
  %l.1.lcssa.i = phi i32 [ %446, %._crit_edge9.i ], [ %447, %._crit_edge11.i ], [ 0, %429 ], !dbg !925
  %449 = icmp eq i32 %l.1.lcssa.i, %natp.015.i, !dbg !1044
  br i1 %449, label %450, label %458, !dbg !1046

; <label>:450                                     ; preds = %448
  %451 = bitcast i8** %attp.113.i to i8*, !dbg !1047
  %452 = add nsw i32 %natp.015.i, 1, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %452, i64 0, metadata !329, metadata !372) #7, !dbg !1049
  %453 = shl i32 %452, 3, !dbg !1047
  %454 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 214, i8* %451, i32 %453) #8, !dbg !1047
  %455 = bitcast i8* %454 to i8**, !dbg !1047
  call void @llvm.dbg.value(metadata i8** %455, i64 0, metadata !316, metadata !372) #7, !dbg !915
  %456 = sext i32 %natp.015.i to i64, !dbg !1050
  %457 = getelementptr inbounds i8** %455, i64 %456, !dbg !1050
  store i8* %436, i8** %457, align 8, !dbg !1051, !tbaa !436
  br label %458, !dbg !1052

; <label>:458                                     ; preds = %450, %448
  %attp.2.i = phi i8** [ %455, %450 ], [ %attp.113.i, %448 ], !dbg !925
  %natp.1.i = phi i32 [ %452, %450 ], [ %natp.015.i, %448 ], !dbg !925
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1, !dbg !1027
  %lftr.wideiv = trunc i64 %indvars.iv60.i to i32, !dbg !1027
  %exitcond = icmp eq i32 %lftr.wideiv, %428, !dbg !1027
  br i1 %exitcond, label %._crit_edge17.i, label %429, !dbg !1027

._crit_edge17.i:                                  ; preds = %458
  %459 = icmp sgt i32 %natp.1.i, 1, !dbg !1053
  br i1 %459, label %.lr.ph27.i23, label %.loopexit.i, !dbg !1054

.lr.ph27.i23:                                     ; preds = %._crit_edge17.i
  %460 = add i32 %natp.1.i, -1, !dbg !1055
  br label %.lr.ph23.i, !dbg !1055

.lr.ph23.i:                                       ; preds = %.lr.ph27.i23, %._crit_edge24.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph27.i23 ], [ %indvars.iv.next67.i, %._crit_edge24.i ], !dbg !925
  %461 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 220, i32 %naid.0.lcssa.i, i32 4) #8, !dbg !1056
  %462 = bitcast i8* %461 to i32*, !dbg !1056
  call void @llvm.dbg.value(metadata i32* %462, i64 0, metadata !321, metadata !372) #7, !dbg !1057
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !328, metadata !372) #7, !dbg !1058
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !324, metadata !372) #7, !dbg !936
  %463 = getelementptr inbounds i8** %attp.2.i, i64 %indvars.iv66.i, !dbg !1059
  %.pre88.i = load i8**** %352, align 8, !dbg !952, !tbaa !690
  %.pre89.i25 = load i8** %463, align 8, !dbg !1059, !tbaa !436
  br label %464, !dbg !1061

; <label>:464                                     ; preds = %477, %.lr.ph23.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next63.i, %477 ], !dbg !925
  %naaid.021.i = phi i32 [ 0, %.lr.ph23.i ], [ %naaid.1.i, %477 ], !dbg !925
  %465 = getelementptr inbounds i32* %396, i64 %indvars.iv62.i, !dbg !1062
  %466 = load i32* %465, align 4, !dbg !1062, !tbaa !440
  %467 = sext i32 %466 to i64, !dbg !1063
  %468 = getelementptr inbounds i8*** %.pre88.i, i64 %467, !dbg !1063
  %469 = load i8*** %468, align 8, !dbg !1063, !tbaa !436
  %470 = load i8** %469, align 8, !dbg !1064, !tbaa !436
  call void @llvm.dbg.value(metadata i8* %470, i64 0, metadata !318, metadata !372) #7, !dbg !1033
  %471 = call i32 @strcmp(i8* %470, i8* %.pre89.i25) #8, !dbg !1065
  %472 = icmp eq i32 %471, 0, !dbg !1066
  br i1 %472, label %473, label %477, !dbg !1067

; <label>:473                                     ; preds = %464
  %474 = add nsw i32 %naaid.021.i, 1, !dbg !1068
  call void @llvm.dbg.value(metadata i32 %474, i64 0, metadata !328, metadata !372) #7, !dbg !1058
  %475 = sext i32 %naaid.021.i to i64, !dbg !1069
  %476 = getelementptr inbounds i32* %462, i64 %475, !dbg !1069
  store i32 %466, i32* %476, align 4, !dbg !1070, !tbaa !440
  br label %477, !dbg !1069

; <label>:477                                     ; preds = %473, %464
  %naaid.1.i = phi i32 [ %474, %473 ], [ %naaid.021.i, %464 ], !dbg !925
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1, !dbg !1061
  %lftr.wideiv56 = trunc i64 %indvars.iv62.i to i32, !dbg !1061
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %428, !dbg !1061
  br i1 %exitcond57, label %._crit_edge24.i, label %464, !dbg !1061

._crit_edge24.i:                                  ; preds = %477
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naaid.1.i, i32* %462, i8* %.pre89.i25) #8, !dbg !1071
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 228, i8* %461) #8, !dbg !1072
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1, !dbg !1055
  %lftr.wideiv58 = trunc i64 %indvars.iv66.i to i32, !dbg !1055
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %460, !dbg !1055
  br i1 %exitcond59, label %.loopexit.i, label %.lr.ph23.i, !dbg !1055

.loopexit.i:                                      ; preds = %._crit_edge24.i, %._crit_edge17.i, %.preheader1.i
  %attp.1.lcssa94.i = phi i8** [ %attp.2.i, %._crit_edge17.i ], [ null, %.preheader1.i ], [ %attp.2.i, %._crit_edge24.i ], !dbg !925
  %478 = bitcast i8** %attp.1.lcssa94.i to i8*, !dbg !1073
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 231, i8* %478) #8, !dbg !1073
  call void @llvm.dbg.value(metadata i8** null, i64 0, metadata !316, metadata !372) #7, !dbg !915
  br label %479, !dbg !1074

; <label>:479                                     ; preds = %.loopexit.i, %420
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 234, i8* %395) #8, !dbg !1075
  br label %480, !dbg !1076

; <label>:480                                     ; preds = %479, %._crit_edge.i20
  %lftr.wideiv72.i = trunc i64 %indvars.iv70.i to i32, !dbg !948
  %exitcond73.i = icmp eq i32 %lftr.wideiv72.i, %353, !dbg !948
  br i1 %exitcond73.i, label %._crit_edge30.i, label %._crit_edge80.i, !dbg !948

._crit_edge80.i:                                  ; preds = %480
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1, !dbg !948
  %.pre81.i = load i32* %343, align 4, !dbg !992, !tbaa !494
  br label %393, !dbg !948

._crit_edge30.i:                                  ; preds = %480, %.preheader2.i, %342
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 237, i8* %345) #8, !dbg !1077
  br label %analyse_other.exit, !dbg !1078

analyse_other.exit:                               ; preds = %338, %._crit_edge30.i
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %481 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %7, i32 0, i32* %nra, i32 1) #9, !dbg !1079
  call void @llvm.dbg.value(metadata i32* %481, i64 0, metadata !221, metadata !372), !dbg !556
  call void @llvm.dbg.value(metadata i32* %nra, i64 0, metadata !222, metadata !372), !dbg !554
  %482 = load i32* %nra, align 4, !dbg !1080, !tbaa !440
  %483 = icmp sgt i32 %482, 0, !dbg !1082
  br i1 %483, label %484, label %489, !dbg !1083

; <label>:484                                     ; preds = %analyse_other.exit
  %485 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1084
  %486 = load i32* %485, align 4, !dbg !1084, !tbaa !494
  %487 = icmp slt i32 %482, %486, !dbg !1085
  br i1 %487, label %488, label %489, !dbg !1086

; <label>:488                                     ; preds = %484
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %482, i32* %481, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0)) #9, !dbg !1087
  br label %489, !dbg !1087

; <label>:489                                     ; preds = %488, %484, %analyse_other.exit
  %490 = bitcast i32* %481 to i8*, !dbg !1088
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 473, i8* %490) #8, !dbg !1088
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 474, i8* %6) #8, !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @yn(i32 %bASK) #4 {
  tail call void @llvm.dbg.value(metadata i32 %bASK, i64 0, metadata !294, metadata !372), !dbg !1091
  %1 = icmp eq i32 %bASK, 0, !dbg !1092
  br i1 %1, label %8, label %.preheader, !dbg !1094

.preheader:                                       ; preds = %0, %.preheader
  %2 = load %struct.__sFILE** @__stdinp, align 8, !dbg !1095, !tbaa !436
  %3 = tail call i32 @fgetc(%struct.__sFILE* %2) #8, !dbg !1098
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !298, metadata !372) #7, !dbg !1099
  %4 = tail call i32 @__toupper(i32 %3) #8, !dbg !1101
  %sext = shl i32 %4, 24, !dbg !1102
  %5 = ashr exact i32 %sext, 24, !dbg !1102
  switch i32 %5, label %.preheader [
    i32 89, label %.critedge
    i32 78, label %.critedge
  ], !dbg !1103

.critedge:                                        ; preds = %.preheader, %.preheader
  %6 = icmp eq i32 %5, 89, !dbg !1104
  %7 = zext i1 %6 to i32, !dbg !1104
  br label %8, !dbg !1105

; <label>:8                                       ; preds = %0, %.critedge
  %.0 = phi i32 [ %7, %.critedge ], [ 0, %0 ]
  ret i32 %.0, !dbg !1106
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!368, !369, !370}
!llvm.ident = !{!371}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !12, globals: !331, imports: !367)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/index.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 48, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7, !8}
!5 = !DIEnumerator(name: "etOther", value: 0)
!6 = !DIEnumerator(name: "etProt", value: 1)
!7 = !DIEnumerator(name: "etDNA", value: 2)
!8 = !DIEnumerator(name: "erestNR", value: 3)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !{!13, !81, !87, !108, !120, !131, !204, !210, !225, !236, !271, !275, !283, !292, !296, !299, !307}
!13 = !DISubprogram(name: "__sputc", scope: !14, file: !14, line: 348, type: !15, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !78)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 153, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !14, line: 122, size: 1216, align: 64, elements: !21)
!21 = !{!22, !25, !26, !27, !29, !30, !35, !36, !37, !41, !46, !56, !62, !63, !66, !67, !71, !75, !76, !77}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !20, file: !14, line: 123, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !20, file: !14, line: 124, baseType: !17, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !20, file: !14, line: 125, baseType: !17, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !14, line: 126, baseType: !28, size: 16, align: 16, offset: 128)
!28 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !20, file: !14, line: 127, baseType: !28, size: 16, align: 16, offset: 144)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !20, file: !14, line: 128, baseType: !31, size: 128, align: 64, offset: 192)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !14, line: 88, size: 128, align: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !31, file: !14, line: 89, baseType: !23, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !31, file: !14, line: 90, baseType: !17, size: 32, align: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !20, file: !14, line: 129, baseType: !17, size: 32, align: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !20, file: !14, line: 132, baseType: !11, size: 64, align: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !20, file: !14, line: 133, baseType: !38, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!17, !11}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !20, file: !14, line: 134, baseType: !42, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!17, !11, !45, !17}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !20, file: !14, line: 135, baseType: !47, size: 64, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !11, !50, !17}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !14, line: 77, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !52, line: 71, baseType: !53)
!52 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !20, file: !14, line: 136, baseType: !57, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!17, !11, !60, !17}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !20, file: !14, line: 139, baseType: !31, size: 128, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !20, file: !14, line: 140, baseType: !64, size: 64, align: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !14, line: 94, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !20, file: !14, line: 141, baseType: !17, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !20, file: !14, line: 144, baseType: !68, size: 24, align: 8, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !20, file: !14, line: 145, baseType: !72, size: 8, align: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 8, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !20, file: !14, line: 148, baseType: !31, size: 128, align: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !20, file: !14, line: 151, baseType: !17, size: 32, align: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !14, line: 152, baseType: !50, size: 64, align: 64, offset: 1152)
!78 = !{!79, !80}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !13, file: !14, line: 348, type: !17)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !13, file: !14, line: 348, type: !18)
!81 = !DISubprogram(name: "__sigbits", scope: !82, file: !82, line: 114, type: !83, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !85)
!82 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DISubroutineType(types: !84)
!84 = !{!17, !17}
!85 = !{!86}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !81, file: !82, line: 114, type: !17)
!87 = !DISubprogram(name: "new_block", scope: !1, file: !1, line: 69, type: !88, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_block* ()* @new_block, variables: !106)
!88 = !DISubroutineType(types: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !92, line: 52, baseType: !93)
!92 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!93 = !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 36, size: 8448, align: 64, elements: !94)
!94 = !{!95, !99, !100, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !93, file: !92, line: 37, baseType: !96, size: 8192, align: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, align: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !93, file: !92, line: 43, baseType: !17, size: 32, align: 32, offset: 8192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !93, file: !92, line: 44, baseType: !101, size: 64, align: 64, offset: 8256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !103, line: 73, baseType: !17)
!103 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !93, file: !92, line: 45, baseType: !17, size: 32, align: 32, offset: 8320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !93, file: !92, line: 46, baseType: !101, size: 64, align: 64, offset: 8384)
!106 = !{!107}
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "block", scope: !87, file: !1, line: 71, type: !90)
!108 = !DISubprogram(name: "write_index", scope: !1, file: !1, line: 79, type: !109, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, %struct.t_block*, i8**)* @write_index, variables: !112)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !45, !90, !111}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!112 = !{!113, !114, !115, !116, !117, !118, !119}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outf", arg: 1, scope: !108, file: !1, line: 79, type: !45)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !108, file: !1, line: 79, type: !90)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gnames", arg: 3, scope: !108, file: !1, line: 79, type: !111)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out", scope: !108, file: !1, line: 81, type: !18)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !108, file: !1, line: 82, type: !17)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !108, file: !1, line: 82, type: !17)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !108, file: !1, line: 82, type: !17)
!120 = !DISubprogram(name: "add_grp", scope: !1, file: !1, line: 98, type: !121, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*, i8***, i32, i32*, i8*)* @add_grp, variables: !124)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !90, !123, !17, !101, !45}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !120, file: !1, line: 98, type: !90)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gnames", arg: 2, scope: !120, file: !1, line: 98, type: !123)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nra", arg: 3, scope: !120, file: !1, line: 98, type: !17)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 4, scope: !120, file: !1, line: 98, type: !101)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 5, scope: !120, file: !1, line: 98, type: !45)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !120, file: !1, line: 100, type: !17)
!131 = !DISubprogram(name: "mk_aid", scope: !1, file: !1, line: 146, type: !132, isLocal: false, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.t_atoms*, i32*, i32, i32*, i32)* @mk_aid, variables: !196)
!132 = !DISubroutineType(types: !133)
!133 = !{!101, !134, !194, !195, !176, !17}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !136, line: 94, baseType: !137)
!136 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!137 = !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 75, size: 10240, align: 64, elements: !138)
!138 = !{!139, !140, !161, !162, !163, !164, !165, !166, !167, !168, !169, !177}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !137, file: !136, line: 76, baseType: !17, size: 32, align: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !137, file: !136, line: 77, baseType: !141, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !136, line: 57, baseType: !143)
!143 = !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 48, size: 320, align: 32, elements: !144)
!144 = !{!145, !148, !149, !150, !151, !153, !154, !155, !156, !160}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !143, file: !136, line: 49, baseType: !146, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !103, line: 87, baseType: !147)
!147 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !143, file: !136, line: 49, baseType: !146, size: 32, align: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !143, file: !136, line: 50, baseType: !146, size: 32, align: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !143, file: !136, line: 50, baseType: !146, size: 32, align: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !136, line: 51, baseType: !152, size: 16, align: 16, offset: 128)
!152 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !143, file: !136, line: 52, baseType: !152, size: 16, align: 16, offset: 144)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !143, file: !136, line: 53, baseType: !17, size: 32, align: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !143, file: !136, line: 54, baseType: !17, size: 32, align: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !143, file: !136, line: 55, baseType: !157, size: 72, align: 8, offset: 224)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 72, align: 8, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 9)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !143, file: !136, line: 56, baseType: !24, size: 8, align: 8, offset: 296)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !137, file: !136, line: 80, baseType: !123, size: 64, align: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !137, file: !136, line: 82, baseType: !123, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !137, file: !136, line: 84, baseType: !123, size: 64, align: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !137, file: !136, line: 86, baseType: !17, size: 32, align: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !137, file: !136, line: 87, baseType: !123, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !137, file: !136, line: 89, baseType: !17, size: 32, align: 32, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !137, file: !136, line: 90, baseType: !123, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !137, file: !136, line: 91, baseType: !91, size: 8448, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !137, file: !136, line: 92, baseType: !170, size: 1152, align: 64, offset: 9024)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1152, align: 64, elements: !158)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !136, line: 73, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 70, size: 128, align: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !172, file: !136, line: 71, baseType: !17, size: 32, align: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !172, file: !136, line: 72, baseType: !176, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !137, file: !136, line: 93, baseType: !178, size: 64, align: 64, offset: 10176)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !136, line: 68, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 59, size: 416, align: 32, elements: !181)
!181 = !{!182, !183, !184, !185, !189, !190, !191, !192}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !136, line: 60, baseType: !17, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !180, file: !136, line: 61, baseType: !17, size: 32, align: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !180, file: !136, line: 62, baseType: !10, size: 8, align: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !180, file: !136, line: 63, baseType: !186, size: 48, align: 8, offset: 72)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, align: 8, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 6)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !180, file: !136, line: 64, baseType: !146, size: 32, align: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !180, file: !136, line: 65, baseType: !146, size: 32, align: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !180, file: !136, line: 66, baseType: !17, size: 32, align: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !180, file: !136, line: 67, baseType: !193, size: 192, align: 32, offset: 224)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, align: 32, elements: !187)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "eRestp", file: !1, line: 48, baseType: !3)
!196 = !{!197, !198, !199, !200, !201, !202, !203}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !131, file: !1, line: 146, type: !134)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restp", arg: 2, scope: !131, file: !1, line: 146, type: !194)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "res", arg: 3, scope: !131, file: !1, line: 146, type: !195)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nra", arg: 4, scope: !131, file: !1, line: 146, type: !176)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bTrue", arg: 5, scope: !131, file: !1, line: 147, type: !17)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !131, file: !1, line: 152, type: !101)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !131, file: !1, line: 153, type: !17)
!204 = !DISubprogram(name: "is_protein", scope: !1, file: !1, line: 401, type: !205, isLocal: false, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @is_protein, variables: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!17, !45}
!207 = !{!208, !209}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "resnm", arg: 1, scope: !204, file: !1, line: 401, type: !45)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !204, file: !1, line: 406, type: !17)
!210 = !DISubprogram(name: "analyse", scope: !1, file: !1, line: 420, type: !211, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*, %struct.t_block*, i8***, i32, i32)* @analyse, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !134, !90, !123, !17, !17}
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !210, file: !1, line: 420, type: !134)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gb", arg: 2, scope: !210, file: !1, line: 420, type: !90)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 3, scope: !210, file: !1, line: 420, type: !123)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bASK", arg: 4, scope: !210, file: !1, line: 420, type: !17)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerb", arg: 5, scope: !210, file: !1, line: 420, type: !17)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restp", scope: !210, file: !1, line: 422, type: !194)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnm", scope: !210, file: !1, line: 423, type: !45)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aid", scope: !210, file: !1, line: 424, type: !101)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nra", scope: !210, file: !1, line: 425, type: !17)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !210, file: !1, line: 426, type: !17)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !210, file: !1, line: 426, type: !17)
!225 = !DISubprogram(name: "p_status", scope: !1, file: !1, line: 132, type: !226, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !17, !194, !17}
!228 = !{!229, !230, !231, !232, !233, !234}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nres", arg: 1, scope: !225, file: !1, line: 132, type: !17)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restp", arg: 2, scope: !225, file: !1, line: 132, type: !194)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerb", arg: 3, scope: !225, file: !1, line: 132, type: !17)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !225, file: !1, line: 134, type: !17)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !225, file: !1, line: 134, type: !17)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntp", scope: !225, file: !1, line: 134, type: !235)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, align: 32, elements: !69)
!236 = !DISubprogram(name: "analyse_prot", scope: !1, file: !1, line: 241, type: !237, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, variables: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !194, !134, !90, !123, !17, !17}
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !258, !259, !267, !270}
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restp", arg: 1, scope: !236, file: !1, line: 241, type: !194)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !236, file: !1, line: 241, type: !134)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gb", arg: 3, scope: !236, file: !1, line: 242, type: !90)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 4, scope: !236, file: !1, line: 242, type: !123)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bASK", arg: 5, scope: !236, file: !1, line: 242, type: !17)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerb", arg: 6, scope: !236, file: !1, line: 242, type: !17)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !236, file: !1, line: 284, type: !17)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !236, file: !1, line: 284, type: !17)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !236, file: !1, line: 284, type: !17)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aid", scope: !236, file: !1, line: 285, type: !101)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nra", scope: !236, file: !1, line: 286, type: !17)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnpres", scope: !236, file: !1, line: 286, type: !17)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "npres", scope: !236, file: !1, line: 286, type: !17)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "match", scope: !236, file: !1, line: 287, type: !17)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndx_name", scope: !236, file: !1, line: 288, type: !255)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32768, align: 8, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 4096)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atnm", scope: !236, file: !1, line: 288, type: !45)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !260, file: !1, line: 333, type: !17)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 332, column: 21)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 332, column: 11)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 330, column: 28)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 330, column: 5)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 330, column: 5)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 329, column: 13)
!266 = distinct !DILexicalBlock(scope: !236, file: !1, line: 329, column: 7)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !268, file: !1, line: 358, type: !17)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 356, column: 19)
!269 = distinct !DILexicalBlock(scope: !265, file: !1, line: 356, column: 9)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hold", scope: !268, file: !1, line: 358, type: !17)
!271 = !DISubprogram(name: "isdigit", scope: !272, file: !272, line: 237, type: !83, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !273)
!272 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!273 = !{!274}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !271, file: !272, line: 237, type: !17)
!275 = !DISubprogram(name: "__isctype", scope: !272, file: !272, line: 164, type: !276, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !280)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !278, !279}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !54, line: 70, baseType: !17)
!279 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!280 = !{!281, !282}
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !275, file: !272, line: 164, type: !278)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !275, file: !272, line: 164, type: !279)
!283 = !DISubprogram(name: "grp_cmp", scope: !1, file: !1, line: 115, type: !284, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, variables: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{!17, !90, !17, !101, !17}
!286 = !{!287, !288, !289, !290, !291}
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 1, scope: !283, file: !1, line: 115, type: !90)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nra", arg: 2, scope: !283, file: !1, line: 115, type: !17)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 3, scope: !283, file: !1, line: 115, type: !101)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 4, scope: !283, file: !1, line: 115, type: !17)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !283, file: !1, line: 117, type: !17)
!292 = !DISubprogram(name: "yn", scope: !1, file: !1, line: 54, type: !83, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @yn, variables: !293)
!293 = !{!294, !295}
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bASK", arg: 1, scope: !292, file: !1, line: 54, type: !17)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !292, file: !1, line: 56, type: !10)
!296 = !DISubprogram(name: "toupper", scope: !272, file: !272, line: 298, type: !83, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !297)
!297 = !{!298}
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !296, file: !272, line: 298, type: !17)
!299 = !DISubprogram(name: "analyse_dna", scope: !1, file: !1, line: 390, type: !237, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: true, variables: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "restp", arg: 1, scope: !299, file: !1, line: 390, type: !194)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !299, file: !1, line: 390, type: !134)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gb", arg: 3, scope: !299, file: !1, line: 391, type: !90)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 4, scope: !299, file: !1, line: 391, type: !123)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bASK", arg: 5, scope: !299, file: !1, line: 391, type: !17)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerb", arg: 6, scope: !299, file: !1, line: 391, type: !17)
!307 = !DISubprogram(name: "analyse_other", scope: !1, file: !1, line: 164, type: !237, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, variables: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Restp", arg: 1, scope: !307, file: !1, line: 164, type: !194)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !307, file: !1, line: 164, type: !134)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gb", arg: 3, scope: !307, file: !1, line: 165, type: !90)
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gn", arg: 4, scope: !307, file: !1, line: 165, type: !123)
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bASK", arg: 5, scope: !307, file: !1, line: 165, type: !17)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerb", arg: 6, scope: !307, file: !1, line: 165, type: !17)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "restp", scope: !307, file: !1, line: 167, type: !111)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attp", scope: !307, file: !1, line: 168, type: !111)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rname", scope: !307, file: !1, line: 169, type: !45)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aname", scope: !307, file: !1, line: 169, type: !45)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "other_ndx", scope: !307, file: !1, line: 170, type: !101)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aid", scope: !307, file: !1, line: 170, type: !101)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aaid", scope: !307, file: !1, line: 170, type: !101)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !307, file: !1, line: 171, type: !17)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !307, file: !1, line: 171, type: !17)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !307, file: !1, line: 171, type: !17)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !307, file: !1, line: 171, type: !17)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "resnr", scope: !307, file: !1, line: 171, type: !17)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "naid", scope: !307, file: !1, line: 171, type: !17)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "naaid", scope: !307, file: !1, line: 171, type: !17)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "natp", scope: !307, file: !1, line: 171, type: !17)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrestp", scope: !307, file: !1, line: 171, type: !17)
!331 = !{!332, !333, !334, !335, !339, !341, !343, !347, !348, !349, !353, !355, !356, !360, !362, !364, !365, !366}
!332 = !DIGlobalVariable(name: "bRead", scope: !204, file: !1, line: 403, type: !17, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariable(name: "naa", scope: !204, file: !1, line: 404, type: !17, isLocal: true, isDefinition: true, variable: i32* @is_protein.naa)
!334 = !DIGlobalVariable(name: "aas", scope: !204, file: !1, line: 405, type: !111, isLocal: true, isDefinition: true, variable: i8*** @is_protein.aas)
!335 = !DIGlobalVariable(name: "Sugars", scope: !0, file: !1, line: 51, type: !336, isLocal: true, isDefinition: true, variable: [5 x i8*]* @Sugars)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 64, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 5)
!339 = !DIGlobalVariable(name: "ResTP", scope: !0, file: !1, line: 49, type: !340, isLocal: true, isDefinition: true, variable: [3 x i8*]* @ResTP)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 64, elements: !69)
!341 = !DIGlobalVariable(name: "pnoh", scope: !236, file: !1, line: 245, type: !342, isLocal: true, isDefinition: true, variable: [1 x i8*]* @analyse_prot.pnoh)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 64, elements: !73)
!343 = !DIGlobalVariable(name: "pnodum", scope: !236, file: !1, line: 246, type: !344, isLocal: true, isDefinition: true, variable: [12 x i8*]* @analyse_prot.pnodum)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 768, align: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 12)
!347 = !DIGlobalVariable(name: "calpha", scope: !236, file: !1, line: 248, type: !342, isLocal: true, isDefinition: true, variable: [1 x i8*]* @analyse_prot.calpha)
!348 = !DIGlobalVariable(name: "bb", scope: !236, file: !1, line: 249, type: !340, isLocal: true, isDefinition: true, variable: [3 x i8*]* @analyse_prot.bb)
!349 = !DIGlobalVariable(name: "mc", scope: !236, file: !1, line: 250, type: !350, isLocal: true, isDefinition: true, variable: [7 x i8*]* @analyse_prot.mc)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 448, align: 64, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 7)
!353 = !DIGlobalVariable(name: "mcb", scope: !236, file: !1, line: 251, type: !354, isLocal: true, isDefinition: true, variable: [9 x i8*]* @analyse_prot.mcb)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, align: 64, elements: !158)
!355 = !DIGlobalVariable(name: "mch", scope: !236, file: !1, line: 252, type: !344, isLocal: true, isDefinition: true, variable: [12 x i8*]* @analyse_prot.mch)
!356 = !DIGlobalVariable(name: "chains", scope: !236, file: !1, line: 255, type: !357, isLocal: true, isDefinition: true, variable: [10 x i8**]* @analyse_prot.chains)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 640, align: 64, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 10)
!360 = !DIGlobalVariable(name: "sizes", scope: !236, file: !1, line: 258, type: !361, isLocal: true, isDefinition: true, variable: [10 x i32]* @analyse_prot.sizes)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 320, align: 32, elements: !358)
!362 = !DIGlobalVariable(name: "ch_name", scope: !236, file: !1, line: 263, type: !363, isLocal: true, isDefinition: true, variable: [10 x i8*]* @analyse_prot.ch_name)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, align: 64, elements: !358)
!364 = !DIGlobalVariable(name: "complement", scope: !236, file: !1, line: 270, type: !361, isLocal: true, isDefinition: true, variable: [10 x i32]* @analyse_prot.complement)
!365 = !DIGlobalVariable(name: "wholename", scope: !236, file: !1, line: 273, type: !361, isLocal: true, isDefinition: true, variable: [10 x i32]* @analyse_prot.wholename)
!366 = !DIGlobalVariable(name: "compareto", scope: !236, file: !1, line: 282, type: !361, isLocal: true, isDefinition: true, variable: [10 x i32]* @analyse_prot.compareto)
!367 = !{}
!368 = !{i32 2, !"Dwarf Version", i32 2}
!369 = !{i32 2, !"Debug Info Version", i32 700000003}
!370 = !{i32 1, !"PIC Level", i32 2}
!371 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!372 = !DIExpression()
!373 = !DILocation(line: 348, column: 40, scope: !13)
!374 = !DILocation(line: 348, column: 50, scope: !13)
!375 = !DILocation(line: 349, column: 12, scope: !376)
!376 = distinct !DILexicalBlock(scope: !13, file: !14, line: 349, column: 6)
!377 = !DILocation(line: 349, column: 6, scope: !376)
!378 = !{!379, !383, i64 12}
!379 = !{!"__sFILE", !380, i64 0, !383, i64 8, !383, i64 12, !384, i64 16, !384, i64 18, !385, i64 24, !383, i64 40, !380, i64 48, !380, i64 56, !380, i64 64, !380, i64 72, !380, i64 80, !385, i64 88, !380, i64 104, !383, i64 112, !381, i64 116, !381, i64 119, !385, i64 120, !383, i64 136, !386, i64 144}
!380 = !{!"any pointer", !381, i64 0}
!381 = !{!"omnipotent char", !382, i64 0}
!382 = !{!"Simple C/C++ TBAA"}
!383 = !{!"int", !381, i64 0}
!384 = !{!"short", !381, i64 0}
!385 = !{!"__sbuf", !380, i64 0, !383, i64 8}
!386 = !{!"long long", !381, i64 0}
!387 = !DILocation(line: 349, column: 15, scope: !376)
!388 = !DILocation(line: 349, column: 20, scope: !376)
!389 = !DILocation(line: 350, column: 10, scope: !376)
!390 = !DILocation(line: 349, column: 38, scope: !376)
!391 = !{!379, !383, i64 40}
!392 = !DILocation(line: 349, column: 31, scope: !376)
!393 = !DILocation(line: 349, column: 59, scope: !376)
!394 = !DILocation(line: 349, column: 47, scope: !376)
!395 = !DILocation(line: 350, column: 23, scope: !376)
!396 = !DILocation(line: 350, column: 16, scope: !376)
!397 = !DILocation(line: 350, column: 18, scope: !376)
!398 = !{!379, !380, i64 0}
!399 = !DILocation(line: 350, column: 21, scope: !376)
!400 = !{!381, !381, i64 0}
!401 = !DILocation(line: 350, column: 3, scope: !376)
!402 = !DILocation(line: 352, column: 11, scope: !376)
!403 = !DILocation(line: 352, column: 3, scope: !376)
!404 = !DILocation(line: 353, column: 1, scope: !13)
!405 = !DILocation(line: 114, column: 15, scope: !81)
!406 = !DILocation(line: 116, column: 20, scope: !81)
!407 = !DILocation(line: 116, column: 12, scope: !81)
!408 = !DILocation(line: 116, column: 57, scope: !81)
!409 = !DILocation(line: 116, column: 45, scope: !81)
!410 = !DILocation(line: 116, column: 5, scope: !81)
!411 = !DILocation(line: 73, column: 3, scope: !87)
!412 = !DILocation(line: 71, column: 12, scope: !87)
!413 = !DILocation(line: 74, column: 3, scope: !87)
!414 = !{!415, !380, i64 1032}
!415 = !{!"", !381, i64 0, !383, i64 1024, !380, i64 1032, !383, i64 1040, !380, i64 1048}
!416 = !DILocation(line: 76, column: 3, scope: !87)
!417 = !DILocation(line: 79, column: 24, scope: !108)
!418 = !DILocation(line: 79, column: 39, scope: !108)
!419 = !DILocation(line: 79, column: 48, scope: !108)
!420 = !DILocation(line: 84, column: 7, scope: !108)
!421 = !DILocation(line: 81, column: 9, scope: !108)
!422 = !DILocation(line: 82, column: 8, scope: !108)
!423 = !DILocation(line: 86, column: 18, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !1, line: 86, column: 3)
!425 = distinct !DILexicalBlock(scope: !108, file: !1, line: 86, column: 3)
!426 = !{!415, !383, i64 1024}
!427 = !DILocation(line: 86, column: 14, scope: !424)
!428 = !DILocation(line: 86, column: 3, scope: !425)
!429 = !DILocation(line: 88, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 88, column: 5)
!431 = distinct !DILexicalBlock(scope: !424, file: !1, line: 86, column: 28)
!432 = !DILocation(line: 89, column: 29, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 88, column: 54)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 88, column: 5)
!435 = !DILocation(line: 87, column: 28, scope: !431)
!436 = !{!380, !380, i64 0}
!437 = !DILocation(line: 87, column: 5, scope: !431)
!438 = !DILocation(line: 82, column: 12, scope: !108)
!439 = !DILocation(line: 88, column: 15, scope: !430)
!440 = !{!383, !383, i64 0}
!441 = !DILocation(line: 82, column: 10, scope: !108)
!442 = !DILocation(line: 88, column: 30, scope: !434)
!443 = !DILocation(line: 88, column: 29, scope: !434)
!444 = !DILocation(line: 88, column: 5, scope: !430)
!445 = !{!415, !380, i64 1048}
!446 = !DILocation(line: 89, column: 26, scope: !433)
!447 = !DILocation(line: 89, column: 33, scope: !433)
!448 = !DILocation(line: 89, column: 7, scope: !433)
!449 = !DILocation(line: 90, column: 14, scope: !450)
!450 = distinct !DILexicalBlock(scope: !433, file: !1, line: 90, column: 11)
!451 = !DILocation(line: 90, column: 20, scope: !450)
!452 = !DILocation(line: 90, column: 11, scope: !433)
!453 = !DILocation(line: 91, column: 2, scope: !450)
!454 = !DILocation(line: 88, column: 50, scope: !434)
!455 = !DILocation(line: 88, column: 33, scope: !434)
!456 = !DILocation(line: 93, column: 5, scope: !431)
!457 = !DILocation(line: 95, column: 3, scope: !108)
!458 = !DILocation(line: 96, column: 1, scope: !108)
!459 = !DILocation(line: 98, column: 23, scope: !120)
!460 = !DILocation(line: 98, column: 33, scope: !120)
!461 = !DILocation(line: 98, column: 44, scope: !120)
!462 = !DILocation(line: 98, column: 56, scope: !120)
!463 = !DILocation(line: 98, column: 66, scope: !120)
!464 = !DILocation(line: 102, column: 3, scope: !120)
!465 = !DILocation(line: 103, column: 3, scope: !120)
!466 = !DILocation(line: 104, column: 20, scope: !120)
!467 = !DILocation(line: 104, column: 16, scope: !120)
!468 = !DILocation(line: 104, column: 3, scope: !120)
!469 = !DILocation(line: 104, column: 4, scope: !120)
!470 = !DILocation(line: 104, column: 19, scope: !120)
!471 = !DILocation(line: 106, column: 3, scope: !120)
!472 = !{!415, !383, i64 1040}
!473 = !DILocation(line: 100, column: 7, scope: !120)
!474 = !DILocation(line: 107, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 107, column: 3)
!476 = distinct !DILexicalBlock(scope: !120, file: !1, line: 107, column: 3)
!477 = !DILocation(line: 107, column: 3, scope: !476)
!478 = !DILocation(line: 108, column: 20, scope: !475)
!479 = !DILocation(line: 108, column: 16, scope: !475)
!480 = !DILocation(line: 108, column: 5, scope: !475)
!481 = !DILocation(line: 108, column: 19, scope: !475)
!482 = !DILocation(line: 109, column: 8, scope: !120)
!483 = !DILocation(line: 110, column: 22, scope: !120)
!484 = !DILocation(line: 110, column: 3, scope: !120)
!485 = !DILocation(line: 110, column: 6, scope: !120)
!486 = !DILocation(line: 110, column: 18, scope: !120)
!487 = !DILocation(line: 111, column: 1, scope: !120)
!488 = !DILocation(line: 146, column: 26, scope: !131)
!489 = !DILocation(line: 146, column: 39, scope: !131)
!490 = !DILocation(line: 146, column: 54, scope: !131)
!491 = !DILocation(line: 146, column: 63, scope: !131)
!492 = !DILocation(line: 147, column: 8, scope: !131)
!493 = !DILocation(line: 155, column: 3, scope: !131)
!494 = !{!495, !383, i64 0}
!495 = !{!"", !383, i64 0, !380, i64 8, !380, i64 16, !380, i64 24, !380, i64 32, !383, i64 40, !380, i64 48, !383, i64 56, !380, i64 64, !415, i64 72, !381, i64 1128, !380, i64 1272}
!496 = !DILocation(line: 152, column: 12, scope: !131)
!497 = !DILocation(line: 156, column: 7, scope: !131)
!498 = !DILocation(line: 153, column: 11, scope: !131)
!499 = !DILocation(line: 157, column: 22, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 157, column: 3)
!501 = distinct !DILexicalBlock(scope: !131, file: !1, line: 157, column: 3)
!502 = !DILocation(line: 157, column: 14, scope: !500)
!503 = !DILocation(line: 157, column: 3, scope: !501)
!504 = !DILocation(line: 158, column: 23, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !1, line: 158, column: 9)
!506 = !{!495, !380, i64 8}
!507 = !DILocation(line: 158, column: 31, scope: !505)
!508 = !{!509, !383, i64 24}
!509 = !{!"", !510, i64 0, !510, i64 4, !510, i64 8, !510, i64 12, !384, i64 16, !384, i64 18, !383, i64 20, !383, i64 24, !381, i64 28, !381, i64 37}
!510 = !{!"float", !381, i64 0}
!511 = !DILocation(line: 158, column: 10, scope: !505)
!512 = !DILocation(line: 158, column: 38, scope: !505)
!513 = !DILocation(line: 158, column: 46, scope: !505)
!514 = !DILocation(line: 158, column: 9, scope: !500)
!515 = !DILocation(line: 159, column: 15, scope: !505)
!516 = !DILocation(line: 159, column: 7, scope: !505)
!517 = !DILocation(line: 159, column: 18, scope: !505)
!518 = !DILocation(line: 161, column: 3, scope: !131)
!519 = !DILocation(line: 401, column: 23, scope: !204)
!520 = !DILocation(line: 408, column: 7, scope: !204)
!521 = !DILocation(line: 413, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 413, column: 3)
!523 = distinct !DILexicalBlock(scope: !204, file: !1, line: 413, column: 3)
!524 = !DILocation(line: 409, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 408, column: 15)
!526 = distinct !DILexicalBlock(scope: !204, file: !1, line: 408, column: 7)
!527 = !DILocation(line: 409, column: 9, scope: !525)
!528 = !DILocation(line: 411, column: 3, scope: !525)
!529 = !DILocation(line: 413, column: 14, scope: !522)
!530 = !DILocation(line: 413, column: 3, scope: !523)
!531 = !DILocation(line: 414, column: 20, scope: !532)
!532 = distinct !DILexicalBlock(scope: !522, file: !1, line: 414, column: 9)
!533 = !DILocation(line: 414, column: 9, scope: !532)
!534 = !DILocation(line: 414, column: 34, scope: !532)
!535 = !DILocation(line: 414, column: 9, scope: !522)
!536 = !DILocation(line: 418, column: 1, scope: !204)
!537 = !DILocation(line: 420, column: 23, scope: !210)
!538 = !DILocation(line: 420, column: 38, scope: !210)
!539 = !DILocation(line: 420, column: 49, scope: !210)
!540 = !DILocation(line: 420, column: 57, scope: !210)
!541 = !DILocation(line: 420, column: 67, scope: !210)
!542 = !DILocation(line: 428, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !210, file: !1, line: 428, column: 7)
!544 = !DILocation(line: 134, column: 11, scope: !225, inlinedAt: !545)
!545 = distinct !DILocation(line: 445, column: 3, scope: !210)
!546 = !DILocation(line: 288, column: 11, scope: !236, inlinedAt: !547)
!547 = distinct !DILocation(line: 450, column: 5, scope: !548)
!548 = distinct !DILexicalBlock(scope: !210, file: !1, line: 449, column: 7)
!549 = !DILocation(line: 428, column: 7, scope: !210)
!550 = !DILocation(line: 429, column: 5, scope: !543)
!551 = !DILocation(line: 430, column: 3, scope: !210)
!552 = !{!495, !383, i64 40}
!553 = !DILocation(line: 422, column: 12, scope: !210)
!554 = !DILocation(line: 425, column: 11, scope: !210)
!555 = !DILocation(line: 431, column: 7, scope: !210)
!556 = !DILocation(line: 424, column: 12, scope: !210)
!557 = !DILocation(line: 432, column: 17, scope: !210)
!558 = !DILocation(line: 432, column: 3, scope: !210)
!559 = !DILocation(line: 433, column: 3, scope: !210)
!560 = !DILocation(line: 426, column: 11, scope: !210)
!561 = !DILocation(line: 435, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 435, column: 3)
!563 = distinct !DILexicalBlock(scope: !210, file: !1, line: 435, column: 3)
!564 = !DILocation(line: 435, column: 14, scope: !562)
!565 = !DILocation(line: 435, column: 3, scope: !563)
!566 = !DILocation(line: 445, column: 3, scope: !210)
!567 = !DILocation(line: 132, column: 26, scope: !225, inlinedAt: !545)
!568 = !DILocation(line: 132, column: 38, scope: !225, inlinedAt: !545)
!569 = !DILocation(line: 132, column: 51, scope: !225, inlinedAt: !545)
!570 = !DILocation(line: 134, column: 7, scope: !225, inlinedAt: !545)
!571 = !DILocation(line: 137, column: 11, scope: !572, inlinedAt: !545)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 136, column: 3)
!573 = distinct !DILexicalBlock(scope: !225, file: !1, line: 136, column: 3)
!574 = !DILocation(line: 138, column: 3, scope: !575, inlinedAt: !545)
!575 = distinct !DILexicalBlock(scope: !225, file: !1, line: 138, column: 3)
!576 = !DILocation(line: 436, column: 19, scope: !577)
!577 = distinct !DILexicalBlock(scope: !562, file: !1, line: 435, column: 34)
!578 = !{!495, !380, i64 48}
!579 = !DILocation(line: 436, column: 12, scope: !577)
!580 = !DILocation(line: 436, column: 11, scope: !577)
!581 = !DILocation(line: 423, column: 12, scope: !210)
!582 = !DILocation(line: 437, column: 10, scope: !583)
!583 = distinct !DILexicalBlock(scope: !577, file: !1, line: 437, column: 9)
!584 = !DILocation(line: 437, column: 19, scope: !583)
!585 = !DILocation(line: 437, column: 31, scope: !583)
!586 = !DILocation(line: 437, column: 34, scope: !583)
!587 = !DILocation(line: 437, column: 9, scope: !577)
!588 = !DILocation(line: 438, column: 16, scope: !583)
!589 = !DILocation(line: 438, column: 7, scope: !583)
!590 = !DILocation(line: 439, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !577, file: !1, line: 439, column: 9)
!592 = !DILocation(line: 439, column: 18, scope: !591)
!593 = !DILocation(line: 439, column: 9, scope: !577)
!594 = !DILocation(line: 441, column: 17, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 441, column: 6)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 440, column: 32)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 440, column: 7)
!598 = distinct !DILexicalBlock(scope: !591, file: !1, line: 440, column: 7)
!599 = !DILocation(line: 441, column: 6, scope: !595)
!600 = !DILocation(line: 441, column: 34, scope: !595)
!601 = !DILocation(line: 441, column: 6, scope: !596)
!602 = !DILocation(line: 442, column: 13, scope: !595)
!603 = !DILocation(line: 442, column: 4, scope: !595)
!604 = !DILocation(line: 440, column: 7, scope: !598)
!605 = !DILocation(line: 138, column: 14, scope: !606, inlinedAt: !545)
!606 = distinct !DILexicalBlock(scope: !575, file: !1, line: 138, column: 3)
!607 = !DILocation(line: 139, column: 9, scope: !606, inlinedAt: !545)
!608 = !DILocation(line: 139, column: 5, scope: !606, inlinedAt: !545)
!609 = !DILocation(line: 139, column: 18, scope: !606, inlinedAt: !545)
!610 = !DILocation(line: 141, column: 7, scope: !225, inlinedAt: !545)
!611 = !DILocation(line: 143, column: 47, scope: !612, inlinedAt: !545)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 142, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 142, column: 5)
!614 = distinct !DILexicalBlock(scope: !225, file: !1, line: 141, column: 7)
!615 = !DILocation(line: 143, column: 54, scope: !612, inlinedAt: !545)
!616 = !DILocation(line: 143, column: 7, scope: !612, inlinedAt: !545)
!617 = !DILocation(line: 142, column: 5, scope: !613, inlinedAt: !545)
!618 = !DILocation(line: 144, column: 1, scope: !225, inlinedAt: !545)
!619 = !DILocation(line: 448, column: 7, scope: !210)
!620 = !DILocation(line: 449, column: 7, scope: !548)
!621 = !DILocation(line: 449, column: 11, scope: !548)
!622 = !DILocation(line: 449, column: 7, scope: !210)
!623 = !DILocation(line: 241, column: 33, scope: !236, inlinedAt: !547)
!624 = !DILocation(line: 241, column: 50, scope: !236, inlinedAt: !547)
!625 = !DILocation(line: 242, column: 14, scope: !236, inlinedAt: !547)
!626 = !DILocation(line: 242, column: 25, scope: !236, inlinedAt: !547)
!627 = !DILocation(line: 242, column: 33, scope: !236, inlinedAt: !547)
!628 = !DILocation(line: 242, column: 43, scope: !236, inlinedAt: !547)
!629 = !DILocation(line: 288, column: 3, scope: !236, inlinedAt: !547)
!630 = !DILocation(line: 290, column: 7, scope: !236, inlinedAt: !547)
!631 = !DILocation(line: 291, column: 5, scope: !632, inlinedAt: !547)
!632 = distinct !DILexicalBlock(scope: !236, file: !1, line: 290, column: 7)
!633 = !DILocation(line: 292, column: 3, scope: !236, inlinedAt: !547)
!634 = !DILocation(line: 285, column: 12, scope: !236, inlinedAt: !547)
!635 = !DILocation(line: 286, column: 22, scope: !236, inlinedAt: !547)
!636 = !DILocation(line: 284, column: 11, scope: !236, inlinedAt: !547)
!637 = !DILocation(line: 296, column: 22, scope: !638, inlinedAt: !547)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 296, column: 3)
!639 = distinct !DILexicalBlock(scope: !236, file: !1, line: 296, column: 3)
!640 = !DILocation(line: 296, column: 14, scope: !638, inlinedAt: !547)
!641 = !DILocation(line: 296, column: 3, scope: !639, inlinedAt: !547)
!642 = !DILocation(line: 450, column: 5, scope: !548)
!643 = !DILocation(line: 120, column: 16, scope: !644, inlinedAt: !645)
!644 = distinct !DILexicalBlock(scope: !283, file: !1, line: 119, column: 7)
!645 = distinct !DILocation(line: 325, column: 33, scope: !646, inlinedAt: !547)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 325, column: 10)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 301, column: 26)
!648 = distinct !DILexicalBlock(scope: !649, file: !1, line: 301, column: 3)
!649 = distinct !DILexicalBlock(scope: !236, file: !1, line: 301, column: 3)
!650 = !DILocation(line: 124, column: 18, scope: !651, inlinedAt: !645)
!651 = distinct !DILexicalBlock(scope: !283, file: !1, line: 124, column: 8)
!652 = !DILocation(line: 127, column: 21, scope: !653, inlinedAt: !645)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 127, column: 10)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 126, column: 3)
!655 = distinct !DILexicalBlock(scope: !283, file: !1, line: 126, column: 3)
!656 = !DILocation(line: 304, column: 24, scope: !657, inlinedAt: !547)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 304, column: 11)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 303, column: 34)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 303, column: 5)
!660 = distinct !DILexicalBlock(scope: !647, file: !1, line: 303, column: 5)
!661 = !DILocation(line: 308, column: 17, scope: !662, inlinedAt: !547)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 306, column: 30)
!663 = distinct !DILexicalBlock(scope: !664, file: !1, line: 306, column: 2)
!664 = distinct !DILexicalBlock(scope: !665, file: !1, line: 306, column: 2)
!665 = distinct !DILexicalBlock(scope: !657, file: !1, line: 304, column: 50)
!666 = !DILocation(line: 301, column: 3, scope: !649, inlinedAt: !547)
!667 = !DILocation(line: 297, column: 9, scope: !668, inlinedAt: !547)
!668 = distinct !DILexicalBlock(scope: !638, file: !1, line: 297, column: 9)
!669 = !DILocation(line: 297, column: 18, scope: !668, inlinedAt: !547)
!670 = !DILocation(line: 297, column: 9, scope: !638, inlinedAt: !547)
!671 = !DILocation(line: 303, column: 24, scope: !659, inlinedAt: !547)
!672 = !DILocation(line: 303, column: 16, scope: !659, inlinedAt: !547)
!673 = !DILocation(line: 303, column: 5, scope: !660, inlinedAt: !547)
!674 = !DILocation(line: 325, column: 23, scope: !646, inlinedAt: !547)
!675 = !DILocation(line: 306, column: 14, scope: !663, inlinedAt: !547)
!676 = !DILocation(line: 319, column: 15, scope: !677, inlinedAt: !547)
!677 = distinct !DILexicalBlock(scope: !665, file: !1, line: 319, column: 6)
!678 = !DILocation(line: 312, column: 21, scope: !679, inlinedAt: !547)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 312, column: 10)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 311, column: 50)
!681 = distinct !DILexicalBlock(scope: !662, file: !1, line: 311, column: 9)
!682 = !DILocation(line: 311, column: 10, scope: !681, inlinedAt: !547)
!683 = !DILocation(line: 306, column: 13, scope: !663, inlinedAt: !547)
!684 = !DILocation(line: 311, column: 28, scope: !681, inlinedAt: !547)
!685 = !DILocation(line: 304, column: 32, scope: !657, inlinedAt: !547)
!686 = !DILocation(line: 304, column: 11, scope: !657, inlinedAt: !547)
!687 = !DILocation(line: 304, column: 39, scope: !657, inlinedAt: !547)
!688 = !DILocation(line: 304, column: 11, scope: !658, inlinedAt: !547)
!689 = !DILocation(line: 306, column: 2, scope: !664, inlinedAt: !547)
!690 = !{!495, !380, i64 16}
!691 = !DILocation(line: 308, column: 10, scope: !662, inlinedAt: !547)
!692 = !DILocation(line: 308, column: 9, scope: !662, inlinedAt: !547)
!693 = !DILocation(line: 288, column: 29, scope: !236, inlinedAt: !547)
!694 = !DILocation(line: 309, column: 4, scope: !662, inlinedAt: !547)
!695 = !DILocation(line: 309, column: 19, scope: !662, inlinedAt: !547)
!696 = !DILocation(line: 309, column: 11, scope: !662, inlinedAt: !547)
!697 = !DILocation(line: 310, column: 10, scope: !662, inlinedAt: !547)
!698 = !DILocation(line: 311, column: 33, scope: !681, inlinedAt: !547)
!699 = !DILocation(line: 311, column: 9, scope: !662, inlinedAt: !547)
!700 = !DILocation(line: 312, column: 10, scope: !679, inlinedAt: !547)
!701 = !DILocation(line: 287, column: 11, scope: !236, inlinedAt: !547)
!702 = !DILocation(line: 312, column: 10, scope: !680, inlinedAt: !547)
!703 = !DILocation(line: 315, column: 22, scope: !704, inlinedAt: !547)
!704 = distinct !DILexicalBlock(scope: !705, file: !1, line: 315, column: 10)
!705 = distinct !DILexicalBlock(scope: !681, file: !1, line: 314, column: 11)
!706 = !DILocation(line: 315, column: 40, scope: !704, inlinedAt: !547)
!707 = !DILocation(line: 315, column: 10, scope: !704, inlinedAt: !547)
!708 = !DILocation(line: 315, column: 10, scope: !705, inlinedAt: !547)
!709 = !DILocation(line: 315, column: 62, scope: !704, inlinedAt: !547)
!710 = !DILocation(line: 319, column: 12, scope: !677, inlinedAt: !547)
!711 = !DILocation(line: 319, column: 6, scope: !665, inlinedAt: !547)
!712 = !DILocation(line: 320, column: 11, scope: !677, inlinedAt: !547)
!713 = !DILocation(line: 286, column: 11, scope: !236, inlinedAt: !547)
!714 = !DILocation(line: 320, column: 4, scope: !677, inlinedAt: !547)
!715 = !DILocation(line: 320, column: 14, scope: !677, inlinedAt: !547)
!716 = !DILocation(line: 325, column: 29, scope: !646, inlinedAt: !547)
!717 = !DILocation(line: 325, column: 10, scope: !646, inlinedAt: !547)
!718 = !DILocation(line: 115, column: 30, scope: !283, inlinedAt: !645)
!719 = !DILocation(line: 115, column: 50, scope: !283, inlinedAt: !645)
!720 = !DILocation(line: 120, column: 18, scope: !644, inlinedAt: !645)
!721 = !DILocation(line: 120, column: 20, scope: !644, inlinedAt: !645)
!722 = !DILocation(line: 115, column: 59, scope: !283, inlinedAt: !645)
!723 = !DILocation(line: 121, column: 13, scope: !724, inlinedAt: !645)
!724 = distinct !DILexicalBlock(scope: !283, file: !1, line: 121, column: 7)
!725 = !DILocation(line: 121, column: 7, scope: !283, inlinedAt: !645)
!726 = !DILocation(line: 122, column: 5, scope: !724, inlinedAt: !645)
!727 = !DILocation(line: 124, column: 29, scope: !651, inlinedAt: !645)
!728 = !DILocation(line: 124, column: 15, scope: !651, inlinedAt: !645)
!729 = !DILocation(line: 124, column: 35, scope: !651, inlinedAt: !645)
!730 = !DILocation(line: 124, column: 33, scope: !651, inlinedAt: !645)
!731 = !DILocation(line: 124, column: 12, scope: !651, inlinedAt: !645)
!732 = !DILocation(line: 124, column: 8, scope: !283, inlinedAt: !645)
!733 = !DILocation(line: 126, column: 13, scope: !654, inlinedAt: !645)
!734 = !DILocation(line: 126, column: 3, scope: !655, inlinedAt: !645)
!735 = !DILocation(line: 325, column: 33, scope: !646, inlinedAt: !547)
!736 = !DILocation(line: 127, column: 10, scope: !653, inlinedAt: !645)
!737 = !DILocation(line: 127, column: 38, scope: !653, inlinedAt: !645)
!738 = !DILocation(line: 127, column: 18, scope: !653, inlinedAt: !645)
!739 = !DILocation(line: 127, column: 15, scope: !653, inlinedAt: !645)
!740 = !DILocation(line: 127, column: 10, scope: !654, inlinedAt: !645)
!741 = !DILocation(line: 326, column: 29, scope: !646, inlinedAt: !547)
!742 = !DILocation(line: 326, column: 7, scope: !646, inlinedAt: !547)
!743 = !DILocation(line: 329, column: 7, scope: !266, inlinedAt: !547)
!744 = !DILocation(line: 329, column: 7, scope: !236, inlinedAt: !547)
!745 = !DILocation(line: 347, column: 6, scope: !746, inlinedAt: !547)
!746 = distinct !DILexicalBlock(scope: !747, file: !1, line: 346, column: 17)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 346, column: 8)
!748 = distinct !DILexicalBlock(scope: !749, file: !1, line: 335, column: 60)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 335, column: 2)
!750 = distinct !DILexicalBlock(scope: !260, file: !1, line: 335, column: 2)
!751 = !DILocation(line: 330, column: 5, scope: !264, inlinedAt: !547)
!752 = !DILocation(line: 331, column: 54, scope: !262, inlinedAt: !547)
!753 = !DILocation(line: 331, column: 7, scope: !262, inlinedAt: !547)
!754 = !DILocation(line: 332, column: 11, scope: !261, inlinedAt: !547)
!755 = !DILocation(line: 332, column: 11, scope: !262, inlinedAt: !547)
!756 = !DILocation(line: 335, column: 19, scope: !749, inlinedAt: !547)
!757 = !DILocation(line: 335, column: 27, scope: !749, inlinedAt: !547)
!758 = !DILocation(line: 335, column: 32, scope: !749, inlinedAt: !547)
!759 = !DILocation(line: 335, column: 40, scope: !749, inlinedAt: !547)
!760 = !DILocation(line: 339, column: 17, scope: !761, inlinedAt: !547)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 339, column: 6)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 339, column: 6)
!763 = distinct !DILexicalBlock(scope: !764, file: !1, line: 337, column: 63)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 337, column: 4)
!765 = distinct !DILexicalBlock(scope: !748, file: !1, line: 337, column: 4)
!766 = !DILocation(line: 342, column: 19, scope: !767, inlinedAt: !547)
!767 = distinct !DILexicalBlock(scope: !763, file: !1, line: 342, column: 10)
!768 = !DILocation(line: 340, column: 23, scope: !769, inlinedAt: !547)
!769 = distinct !DILexicalBlock(scope: !761, file: !1, line: 340, column: 12)
!770 = !DILocation(line: 339, column: 16, scope: !761, inlinedAt: !547)
!771 = !DILocation(line: 335, column: 53, scope: !749, inlinedAt: !547)
!772 = !DILocation(line: 335, column: 45, scope: !749, inlinedAt: !547)
!773 = !DILocation(line: 335, column: 2, scope: !750, inlinedAt: !547)
!774 = !DILocation(line: 337, column: 11, scope: !764, inlinedAt: !547)
!775 = !DILocation(line: 337, column: 4, scope: !765, inlinedAt: !547)
!776 = !DILocation(line: 339, column: 6, scope: !762, inlinedAt: !547)
!777 = !DILocation(line: 340, column: 44, scope: !769, inlinedAt: !547)
!778 = !DILocation(line: 340, column: 37, scope: !769, inlinedAt: !547)
!779 = !DILocation(line: 340, column: 36, scope: !769, inlinedAt: !547)
!780 = !DILocation(line: 340, column: 12, scope: !769, inlinedAt: !547)
!781 = !DILocation(line: 340, column: 57, scope: !769, inlinedAt: !547)
!782 = !DILocation(line: 340, column: 12, scope: !761, inlinedAt: !547)
!783 = !DILocation(line: 342, column: 16, scope: !767, inlinedAt: !547)
!784 = !DILocation(line: 342, column: 10, scope: !763, inlinedAt: !547)
!785 = !DILocation(line: 343, column: 15, scope: !767, inlinedAt: !547)
!786 = !DILocation(line: 343, column: 8, scope: !767, inlinedAt: !547)
!787 = !DILocation(line: 343, column: 18, scope: !767, inlinedAt: !547)
!788 = !DILocation(line: 337, column: 40, scope: !764, inlinedAt: !547)
!789 = !DILocation(line: 337, column: 26, scope: !764, inlinedAt: !547)
!790 = !DILocation(line: 337, column: 31, scope: !764, inlinedAt: !547)
!791 = !DILocation(line: 337, column: 53, scope: !764, inlinedAt: !547)
!792 = !DILocation(line: 337, column: 45, scope: !764, inlinedAt: !547)
!793 = !DILocation(line: 346, column: 12, scope: !747, inlinedAt: !547)
!794 = !DILocation(line: 346, column: 8, scope: !748, inlinedAt: !547)
!795 = !DILocation(line: 349, column: 6, scope: !746, inlinedAt: !547)
!796 = !DILocation(line: 351, column: 4, scope: !746, inlinedAt: !547)
!797 = !DILocation(line: 335, column: 12, scope: !749, inlinedAt: !547)
!798 = !DILocation(line: 355, column: 5, scope: !265, inlinedAt: !547)
!799 = !DILocation(line: 356, column: 9, scope: !269, inlinedAt: !547)
!800 = !DILocation(line: 356, column: 9, scope: !265, inlinedAt: !547)
!801 = !DILocation(line: 360, column: 24, scope: !802, inlinedAt: !547)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 360, column: 7)
!803 = distinct !DILexicalBlock(scope: !268, file: !1, line: 360, column: 7)
!804 = !DILocation(line: 360, column: 32, scope: !802, inlinedAt: !547)
!805 = !DILocation(line: 360, column: 37, scope: !802, inlinedAt: !547)
!806 = !DILocation(line: 360, column: 45, scope: !802, inlinedAt: !547)
!807 = !DILocation(line: 363, column: 38, scope: !808, inlinedAt: !547)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 363, column: 2)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 363, column: 2)
!810 = distinct !DILexicalBlock(scope: !802, file: !1, line: 360, column: 65)
!811 = !DILocation(line: 360, column: 17, scope: !802, inlinedAt: !547)
!812 = !DILocation(line: 360, column: 58, scope: !802, inlinedAt: !547)
!813 = !DILocation(line: 360, column: 50, scope: !802, inlinedAt: !547)
!814 = !DILocation(line: 360, column: 7, scope: !803, inlinedAt: !547)
!815 = !DILocation(line: 363, column: 9, scope: !808, inlinedAt: !547)
!816 = !DILocation(line: 364, column: 28, scope: !817, inlinedAt: !547)
!817 = distinct !DILexicalBlock(scope: !808, file: !1, line: 364, column: 8)
!818 = !DILocation(line: 363, column: 2, scope: !809, inlinedAt: !547)
!819 = !DILocation(line: 364, column: 21, scope: !817, inlinedAt: !547)
!820 = !DILocation(line: 364, column: 20, scope: !817, inlinedAt: !547)
!821 = !DILocation(line: 364, column: 8, scope: !817, inlinedAt: !547)
!822 = !DILocation(line: 364, column: 41, scope: !817, inlinedAt: !547)
!823 = !DILocation(line: 364, column: 8, scope: !808, inlinedAt: !547)
!824 = !DILocation(line: 365, column: 13, scope: !825, inlinedAt: !547)
!825 = distinct !DILexicalBlock(scope: !817, file: !1, line: 364, column: 47)
!826 = !DILocation(line: 365, column: 6, scope: !825, inlinedAt: !547)
!827 = !DILocation(line: 365, column: 16, scope: !825, inlinedAt: !547)
!828 = !DILocation(line: 358, column: 17, scope: !268, inlinedAt: !547)
!829 = !DILocation(line: 367, column: 9, scope: !825, inlinedAt: !547)
!830 = !DILocation(line: 368, column: 4, scope: !825, inlinedAt: !547)
!831 = !DILocation(line: 368, column: 15, scope: !832, inlinedAt: !547)
!832 = distinct !DILexicalBlock(scope: !817, file: !1, line: 368, column: 15)
!833 = !DILocation(line: 368, column: 47, scope: !832, inlinedAt: !547)
!834 = !DILocation(line: 368, column: 15, scope: !817, inlinedAt: !547)
!835 = !DILocation(line: 370, column: 6, scope: !836, inlinedAt: !547)
!836 = distinct !DILexicalBlock(scope: !832, file: !1, line: 368, column: 53)
!837 = !DILocation(line: 370, column: 15, scope: !836, inlinedAt: !547)
!838 = !DILocation(line: 371, column: 4, scope: !836, inlinedAt: !547)
!839 = !DILocation(line: 371, column: 15, scope: !840, inlinedAt: !547)
!840 = distinct !DILexicalBlock(scope: !832, file: !1, line: 371, column: 15)
!841 = !DILocation(line: 371, column: 47, scope: !840, inlinedAt: !547)
!842 = !DILocation(line: 371, column: 15, scope: !832, inlinedAt: !547)
!843 = !DILocation(line: 373, column: 14, scope: !844, inlinedAt: !547)
!844 = distinct !DILexicalBlock(scope: !840, file: !1, line: 371, column: 53)
!845 = !DILocation(line: 373, column: 6, scope: !844, inlinedAt: !547)
!846 = !DILocation(line: 373, column: 17, scope: !844, inlinedAt: !547)
!847 = !DILocation(line: 374, column: 4, scope: !844, inlinedAt: !547)
!848 = !DILocation(line: 374, column: 15, scope: !849, inlinedAt: !547)
!849 = distinct !DILexicalBlock(scope: !840, file: !1, line: 374, column: 15)
!850 = !DILocation(line: 374, column: 48, scope: !849, inlinedAt: !547)
!851 = !DILocation(line: 374, column: 15, scope: !840, inlinedAt: !547)
!852 = !DILocation(line: 376, column: 14, scope: !853, inlinedAt: !547)
!853 = distinct !DILexicalBlock(scope: !849, file: !1, line: 374, column: 54)
!854 = !DILocation(line: 376, column: 6, scope: !853, inlinedAt: !547)
!855 = !DILocation(line: 376, column: 17, scope: !853, inlinedAt: !547)
!856 = !DILocation(line: 377, column: 4, scope: !853, inlinedAt: !547)
!857 = !DILocation(line: 378, column: 13, scope: !849, inlinedAt: !547)
!858 = !DILocation(line: 378, column: 6, scope: !849, inlinedAt: !547)
!859 = !DILocation(line: 378, column: 16, scope: !849, inlinedAt: !547)
!860 = !DILocation(line: 363, column: 24, scope: !808, inlinedAt: !547)
!861 = !DILocation(line: 363, column: 29, scope: !808, inlinedAt: !547)
!862 = !DILocation(line: 363, column: 51, scope: !808, inlinedAt: !547)
!863 = !DILocation(line: 363, column: 43, scope: !808, inlinedAt: !547)
!864 = !DILocation(line: 381, column: 15, scope: !865, inlinedAt: !547)
!865 = distinct !DILexicalBlock(scope: !268, file: !1, line: 381, column: 11)
!866 = !DILocation(line: 381, column: 11, scope: !268, inlinedAt: !547)
!867 = !DILocation(line: 382, column: 2, scope: !868, inlinedAt: !547)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 381, column: 20)
!869 = !DILocation(line: 384, column: 7, scope: !868, inlinedAt: !547)
!870 = !DILocation(line: 387, column: 3, scope: !236, inlinedAt: !547)
!871 = !DILocation(line: 388, column: 1, scope: !236, inlinedAt: !547)
!872 = !DILocation(line: 452, column: 3, scope: !210)
!873 = !DILocation(line: 455, column: 7, scope: !210)
!874 = !DILocation(line: 456, column: 8, scope: !875)
!875 = distinct !DILexicalBlock(scope: !210, file: !1, line: 456, column: 7)
!876 = !DILocation(line: 456, column: 12, scope: !875)
!877 = !DILocation(line: 456, column: 17, scope: !875)
!878 = !DILocation(line: 456, column: 34, scope: !875)
!879 = !DILocation(line: 456, column: 25, scope: !875)
!880 = !DILocation(line: 456, column: 7, scope: !210)
!881 = !DILocation(line: 457, column: 5, scope: !875)
!882 = !DILocation(line: 458, column: 3, scope: !210)
!883 = !DILocation(line: 461, column: 7, scope: !210)
!884 = !DILocation(line: 462, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !210, file: !1, line: 462, column: 7)
!886 = !DILocation(line: 462, column: 11, scope: !885)
!887 = !DILocation(line: 462, column: 7, scope: !210)
!888 = !DILocation(line: 463, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !1, line: 462, column: 16)
!890 = !DILocation(line: 390, column: 32, scope: !299, inlinedAt: !891)
!891 = distinct !DILocation(line: 464, column: 5, scope: !889)
!892 = !DILocation(line: 390, column: 49, scope: !299, inlinedAt: !891)
!893 = !DILocation(line: 391, column: 13, scope: !299, inlinedAt: !891)
!894 = !DILocation(line: 391, column: 24, scope: !299, inlinedAt: !891)
!895 = !DILocation(line: 391, column: 32, scope: !299, inlinedAt: !891)
!896 = !DILocation(line: 391, column: 42, scope: !299, inlinedAt: !891)
!897 = !DILocation(line: 393, column: 7, scope: !299, inlinedAt: !891)
!898 = !DILocation(line: 394, column: 5, scope: !899, inlinedAt: !891)
!899 = distinct !DILexicalBlock(scope: !299, file: !1, line: 393, column: 7)
!900 = !DILocation(line: 395, column: 7, scope: !901, inlinedAt: !891)
!901 = distinct !DILexicalBlock(scope: !299, file: !1, line: 395, column: 7)
!902 = !DILocation(line: 395, column: 7, scope: !299, inlinedAt: !891)
!903 = !DILocation(line: 398, column: 5, scope: !901, inlinedAt: !891)
!904 = !DILocation(line: 398, column: 23, scope: !901, inlinedAt: !891)
!905 = !DILocation(line: 396, column: 5, scope: !901, inlinedAt: !891)
!906 = !DILocation(line: 466, column: 3, scope: !210)
!907 = !DILocation(line: 164, column: 34, scope: !307, inlinedAt: !908)
!908 = distinct !DILocation(line: 469, column: 3, scope: !210)
!909 = !DILocation(line: 164, column: 51, scope: !307, inlinedAt: !908)
!910 = !DILocation(line: 165, column: 15, scope: !307, inlinedAt: !908)
!911 = !DILocation(line: 165, column: 26, scope: !307, inlinedAt: !908)
!912 = !DILocation(line: 165, column: 34, scope: !307, inlinedAt: !908)
!913 = !DILocation(line: 165, column: 44, scope: !307, inlinedAt: !908)
!914 = !DILocation(line: 167, column: 10, scope: !307, inlinedAt: !908)
!915 = !DILocation(line: 168, column: 10, scope: !307, inlinedAt: !908)
!916 = !DILocation(line: 171, column: 38, scope: !307, inlinedAt: !908)
!917 = !DILocation(line: 171, column: 8, scope: !307, inlinedAt: !908)
!918 = !DILocation(line: 173, column: 22, scope: !919, inlinedAt: !908)
!919 = distinct !DILexicalBlock(scope: !920, file: !1, line: 173, column: 3)
!920 = distinct !DILexicalBlock(scope: !307, file: !1, line: 173, column: 3)
!921 = !DILocation(line: 173, column: 14, scope: !919, inlinedAt: !908)
!922 = !DILocation(line: 173, column: 3, scope: !920, inlinedAt: !908)
!923 = !DILocation(line: 174, column: 9, scope: !924, inlinedAt: !908)
!924 = distinct !DILexicalBlock(scope: !919, file: !1, line: 174, column: 9)
!925 = !DILocation(line: 469, column: 3, scope: !210)
!926 = !DILocation(line: 174, column: 18, scope: !924, inlinedAt: !908)
!927 = !DILocation(line: 174, column: 9, scope: !919, inlinedAt: !908)
!928 = !DILocation(line: 176, column: 9, scope: !929, inlinedAt: !908)
!929 = distinct !DILexicalBlock(scope: !307, file: !1, line: 176, column: 7)
!930 = !DILocation(line: 176, column: 7, scope: !307, inlinedAt: !908)
!931 = !DILocation(line: 178, column: 9, scope: !932, inlinedAt: !908)
!932 = distinct !DILexicalBlock(scope: !929, file: !1, line: 176, column: 24)
!933 = !DILocation(line: 179, column: 7, scope: !934, inlinedAt: !908)
!934 = distinct !DILexicalBlock(scope: !932, file: !1, line: 178, column: 9)
!935 = !DILocation(line: 180, column: 5, scope: !932, inlinedAt: !908)
!936 = !DILocation(line: 171, column: 12, scope: !307, inlinedAt: !908)
!937 = !DILocation(line: 181, column: 24, scope: !938, inlinedAt: !908)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 181, column: 5)
!939 = distinct !DILexicalBlock(scope: !932, file: !1, line: 181, column: 5)
!940 = !DILocation(line: 181, column: 16, scope: !938, inlinedAt: !908)
!941 = !DILocation(line: 181, column: 5, scope: !939, inlinedAt: !908)
!942 = !DILocation(line: 182, column: 20, scope: !943, inlinedAt: !908)
!943 = distinct !DILexicalBlock(scope: !938, file: !1, line: 181, column: 34)
!944 = !DILocation(line: 183, column: 21, scope: !943, inlinedAt: !908)
!945 = !DILocation(line: 194, column: 16, scope: !946, inlinedAt: !908)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 194, column: 5)
!947 = distinct !DILexicalBlock(scope: !932, file: !1, line: 194, column: 5)
!948 = !DILocation(line: 194, column: 5, scope: !947, inlinedAt: !908)
!949 = !DILocation(line: 203, column: 11, scope: !950, inlinedAt: !908)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 203, column: 11)
!951 = distinct !DILexicalBlock(scope: !946, file: !1, line: 194, column: 31)
!952 = !DILocation(line: 223, column: 17, scope: !953, inlinedAt: !908)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 222, column: 32)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 222, column: 8)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 222, column: 8)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 219, column: 30)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 219, column: 6)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 219, column: 6)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 218, column: 18)
!960 = distinct !DILexicalBlock(scope: !961, file: !1, line: 218, column: 8)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 206, column: 16)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 206, column: 6)
!963 = distinct !DILexicalBlock(scope: !950, file: !1, line: 203, column: 17)
!964 = !DILocation(line: 182, column: 28, scope: !943, inlinedAt: !908)
!965 = !DILocation(line: 171, column: 16, scope: !307, inlinedAt: !908)
!966 = !DILocation(line: 183, column: 14, scope: !943, inlinedAt: !908)
!967 = !DILocation(line: 183, column: 13, scope: !943, inlinedAt: !908)
!968 = !DILocation(line: 169, column: 9, scope: !307, inlinedAt: !908)
!969 = !DILocation(line: 184, column: 11, scope: !970, inlinedAt: !908)
!970 = distinct !DILexicalBlock(scope: !943, file: !1, line: 184, column: 11)
!971 = !DILocation(line: 184, column: 24, scope: !970, inlinedAt: !908)
!972 = !DILocation(line: 184, column: 11, scope: !943, inlinedAt: !908)
!973 = !DILocation(line: 185, column: 13, scope: !974, inlinedAt: !908)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 185, column: 2)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 185, column: 2)
!976 = distinct !DILexicalBlock(scope: !970, file: !1, line: 184, column: 37)
!977 = !DILocation(line: 185, column: 2, scope: !975, inlinedAt: !908)
!978 = !DILocation(line: 186, column: 15, scope: !979, inlinedAt: !908)
!979 = distinct !DILexicalBlock(scope: !974, file: !1, line: 186, column: 8)
!980 = !DILocation(line: 186, column: 8, scope: !979, inlinedAt: !908)
!981 = !DILocation(line: 186, column: 31, scope: !979, inlinedAt: !908)
!982 = !DILocation(line: 186, column: 8, scope: !974, inlinedAt: !908)
!983 = !DILocation(line: 188, column: 7, scope: !984, inlinedAt: !908)
!984 = distinct !DILexicalBlock(scope: !976, file: !1, line: 188, column: 6)
!985 = !DILocation(line: 188, column: 6, scope: !976, inlinedAt: !908)
!986 = !DILocation(line: 189, column: 4, scope: !987, inlinedAt: !908)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 188, column: 17)
!988 = !DILocation(line: 190, column: 20, scope: !987, inlinedAt: !908)
!989 = !DILocation(line: 190, column: 4, scope: !987, inlinedAt: !908)
!990 = !DILocation(line: 190, column: 19, scope: !987, inlinedAt: !908)
!991 = !DILocation(line: 191, column: 2, scope: !987, inlinedAt: !908)
!992 = !DILocation(line: 195, column: 7, scope: !951, inlinedAt: !908)
!993 = !DILocation(line: 170, column: 23, scope: !307, inlinedAt: !908)
!994 = !DILocation(line: 171, column: 22, scope: !307, inlinedAt: !908)
!995 = !DILocation(line: 171, column: 10, scope: !307, inlinedAt: !908)
!996 = !DILocation(line: 197, column: 26, scope: !997, inlinedAt: !908)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 197, column: 7)
!998 = distinct !DILexicalBlock(scope: !951, file: !1, line: 197, column: 7)
!999 = !DILocation(line: 197, column: 18, scope: !997, inlinedAt: !908)
!1000 = !DILocation(line: 199, column: 13, scope: !1001, inlinedAt: !908)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 199, column: 6)
!1002 = distinct !DILexicalBlock(scope: !997, file: !1, line: 197, column: 36)
!1003 = !DILocation(line: 197, column: 7, scope: !998, inlinedAt: !908)
!1004 = !DILocation(line: 202, column: 30, scope: !951, inlinedAt: !908)
!1005 = !DILocation(line: 198, column: 31, scope: !1002, inlinedAt: !908)
!1006 = !DILocation(line: 198, column: 16, scope: !1002, inlinedAt: !908)
!1007 = !DILocation(line: 198, column: 39, scope: !1002, inlinedAt: !908)
!1008 = !DILocation(line: 198, column: 9, scope: !1002, inlinedAt: !908)
!1009 = !DILocation(line: 198, column: 8, scope: !1002, inlinedAt: !908)
!1010 = !DILocation(line: 199, column: 6, scope: !1001, inlinedAt: !908)
!1011 = !DILocation(line: 199, column: 29, scope: !1001, inlinedAt: !908)
!1012 = !DILocation(line: 199, column: 6, scope: !1002, inlinedAt: !908)
!1013 = !DILocation(line: 200, column: 12, scope: !1001, inlinedAt: !908)
!1014 = !DILocation(line: 200, column: 4, scope: !1001, inlinedAt: !908)
!1015 = !DILocation(line: 200, column: 16, scope: !1001, inlinedAt: !908)
!1016 = !DILocation(line: 202, column: 7, scope: !951, inlinedAt: !908)
!1017 = !DILocation(line: 203, column: 11, scope: !951, inlinedAt: !908)
!1018 = !DILocation(line: 204, column: 40, scope: !963, inlinedAt: !908)
!1019 = !DILocation(line: 204, column: 2, scope: !963, inlinedAt: !908)
!1020 = !DILocation(line: 205, column: 9, scope: !963, inlinedAt: !908)
!1021 = !DILocation(line: 205, column: 2, scope: !963, inlinedAt: !908)
!1022 = !DILocation(line: 206, column: 6, scope: !962, inlinedAt: !908)
!1023 = !DILocation(line: 206, column: 6, scope: !963, inlinedAt: !908)
!1024 = !DILocation(line: 208, column: 15, scope: !1025, inlinedAt: !908)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 208, column: 4)
!1026 = distinct !DILexicalBlock(scope: !961, file: !1, line: 208, column: 4)
!1027 = !DILocation(line: 208, column: 4, scope: !1026, inlinedAt: !908)
!1028 = !DILocation(line: 209, column: 29, scope: !1029, inlinedAt: !908)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 208, column: 28)
!1030 = !DILocation(line: 209, column: 13, scope: !1029, inlinedAt: !908)
!1031 = !DILocation(line: 209, column: 20, scope: !1029, inlinedAt: !908)
!1032 = !DILocation(line: 209, column: 12, scope: !1029, inlinedAt: !908)
!1033 = !DILocation(line: 169, column: 16, scope: !307, inlinedAt: !908)
!1034 = !DILocation(line: 171, column: 14, scope: !307, inlinedAt: !908)
!1035 = !DILocation(line: 210, column: 17, scope: !1036, inlinedAt: !908)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 210, column: 6)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 210, column: 6)
!1038 = !DILocation(line: 210, column: 6, scope: !1037, inlinedAt: !908)
!1039 = !DILocation(line: 211, column: 25, scope: !1040, inlinedAt: !908)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 211, column: 12)
!1041 = !DILocation(line: 211, column: 12, scope: !1040, inlinedAt: !908)
!1042 = !DILocation(line: 211, column: 34, scope: !1040, inlinedAt: !908)
!1043 = !DILocation(line: 211, column: 12, scope: !1036, inlinedAt: !908)
!1044 = !DILocation(line: 213, column: 12, scope: !1045, inlinedAt: !908)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 213, column: 10)
!1046 = !DILocation(line: 213, column: 10, scope: !1029, inlinedAt: !908)
!1047 = !DILocation(line: 214, column: 8, scope: !1048, inlinedAt: !908)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 213, column: 21)
!1049 = !DILocation(line: 171, column: 33, scope: !307, inlinedAt: !908)
!1050 = !DILocation(line: 215, column: 8, scope: !1048, inlinedAt: !908)
!1051 = !DILocation(line: 215, column: 20, scope: !1048, inlinedAt: !908)
!1052 = !DILocation(line: 216, column: 6, scope: !1048, inlinedAt: !908)
!1053 = !DILocation(line: 218, column: 13, scope: !960, inlinedAt: !908)
!1054 = !DILocation(line: 218, column: 8, scope: !961, inlinedAt: !908)
!1055 = !DILocation(line: 219, column: 6, scope: !958, inlinedAt: !908)
!1056 = !DILocation(line: 220, column: 8, scope: !956, inlinedAt: !908)
!1057 = !DILocation(line: 170, column: 28, scope: !307, inlinedAt: !908)
!1058 = !DILocation(line: 171, column: 27, scope: !307, inlinedAt: !908)
!1059 = !DILocation(line: 224, column: 20, scope: !1060, inlinedAt: !908)
!1060 = distinct !DILexicalBlock(scope: !953, file: !1, line: 224, column: 7)
!1061 = !DILocation(line: 222, column: 8, scope: !955, inlinedAt: !908)
!1062 = !DILocation(line: 223, column: 26, scope: !953, inlinedAt: !908)
!1063 = !DILocation(line: 223, column: 10, scope: !953, inlinedAt: !908)
!1064 = !DILocation(line: 223, column: 9, scope: !953, inlinedAt: !908)
!1065 = !DILocation(line: 224, column: 7, scope: !1060, inlinedAt: !908)
!1066 = !DILocation(line: 224, column: 28, scope: !1060, inlinedAt: !908)
!1067 = !DILocation(line: 224, column: 7, scope: !953, inlinedAt: !908)
!1068 = !DILocation(line: 225, column: 15, scope: !1060, inlinedAt: !908)
!1069 = !DILocation(line: 225, column: 5, scope: !1060, inlinedAt: !908)
!1070 = !DILocation(line: 225, column: 18, scope: !1060, inlinedAt: !908)
!1071 = !DILocation(line: 227, column: 8, scope: !956, inlinedAt: !908)
!1072 = !DILocation(line: 228, column: 8, scope: !956, inlinedAt: !908)
!1073 = !DILocation(line: 231, column: 4, scope: !961, inlinedAt: !908)
!1074 = !DILocation(line: 233, column: 2, scope: !961, inlinedAt: !908)
!1075 = !DILocation(line: 234, column: 2, scope: !963, inlinedAt: !908)
!1076 = !DILocation(line: 235, column: 7, scope: !963, inlinedAt: !908)
!1077 = !DILocation(line: 237, column: 5, scope: !932, inlinedAt: !908)
!1078 = !DILocation(line: 238, column: 3, scope: !932, inlinedAt: !908)
!1079 = !DILocation(line: 470, column: 7, scope: !210)
!1080 = !DILocation(line: 471, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !210, file: !1, line: 471, column: 7)
!1082 = !DILocation(line: 471, column: 12, scope: !1081)
!1083 = !DILocation(line: 471, column: 17, scope: !1081)
!1084 = !DILocation(line: 471, column: 34, scope: !1081)
!1085 = !DILocation(line: 471, column: 25, scope: !1081)
!1086 = !DILocation(line: 471, column: 7, scope: !210)
!1087 = !DILocation(line: 472, column: 5, scope: !1081)
!1088 = !DILocation(line: 473, column: 3, scope: !210)
!1089 = !DILocation(line: 474, column: 3, scope: !210)
!1090 = !DILocation(line: 475, column: 1, scope: !210)
!1091 = !DILocation(line: 54, column: 21, scope: !292)
!1092 = !DILocation(line: 58, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !292, file: !1, line: 58, column: 7)
!1094 = !DILocation(line: 58, column: 7, scope: !292)
!1095 = !DILocation(line: 60, column: 23, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 59, column: 8)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 58, column: 13)
!1098 = !DILocation(line: 60, column: 17, scope: !1096)
!1099 = !DILocation(line: 298, column: 13, scope: !296, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 60, column: 9, scope: !1096)
!1101 = !DILocation(line: 300, column: 17, scope: !296, inlinedAt: !1100)
!1102 = !DILocation(line: 61, column: 15, scope: !1097)
!1103 = !DILocation(line: 61, column: 25, scope: !1097)
!1104 = !DILocation(line: 63, column: 15, scope: !1097)
!1105 = !DILocation(line: 63, column: 5, scope: !1097)
!1106 = !DILocation(line: 67, column: 1, scope: !292)
