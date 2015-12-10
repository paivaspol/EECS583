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
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 73, i32 1, i32 1056) #7, !dbg !353
  %0 = bitcast i8* %call to %struct.t_block*, !dbg !353
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %0}, i64 0, metadata !47), !dbg !353
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 74, i32 1, i32 4) #7, !dbg !354
  %1 = bitcast i8* %call1 to i32*, !dbg !354
  %index = getelementptr inbounds i8* %call, i64 1032, !dbg !354
  %2 = bitcast i8* %index to i32**, !dbg !354
  store i32* %1, i32** %2, align 8, !dbg !354, !tbaa !355
  ret %struct.t_block* %0, !dbg !358
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @write_index(i8* %outf, %struct.t_block* nocapture %b, i8** nocapture %gnames) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %outf}, i64 0, metadata !55), !dbg !359
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %b}, i64 0, metadata !56), !dbg !359
  tail call void @llvm.dbg.value(metadata !{i8** %gnames}, i64 0, metadata !57), !dbg !359
  %call = tail call %struct._IO_FILE* @ffopen(i8* %outf, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !360
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !58), !dbg !360
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !114), !dbg !361
  %nr = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1, !dbg !361
  %0 = load i32* %nr, align 4, !dbg !361, !tbaa !363
  %cmp40 = icmp sgt i32 %0, 0, !dbg !361
  br i1 %cmp40, label %for.body.lr.ph, label %for.end20, !dbg !361

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2, !dbg !364
  %a = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4, !dbg !367
  br label %for.body, !dbg !361

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv42 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next43, %for.end ]
  %arrayidx = getelementptr inbounds i8** %gnames, i64 %indvars.iv42, !dbg !369
  %1 = load i8** %arrayidx, align 8, !dbg !369, !tbaa !355
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* %1) #7, !dbg !369
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !116), !dbg !364
  %2 = load i32** %index, align 8, !dbg !364, !tbaa !355
  %arrayidx3 = getelementptr inbounds i32* %2, i64 %indvars.iv42, !dbg !364
  %3 = load i32* %arrayidx3, align 4, !dbg !364, !tbaa !363
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !115), !dbg !364
  %indvars.iv.next43 = add i64 %indvars.iv42, 1, !dbg !361
  %arrayidx736 = getelementptr inbounds i32* %2, i64 %indvars.iv.next43, !dbg !364
  %4 = load i32* %arrayidx736, align 4, !dbg !364, !tbaa !363
  %cmp837 = icmp slt i32 %3, %4, !dbg !364
  br i1 %cmp837, label %for.body9.lr.ph, label %for.end, !dbg !364

for.body9.lr.ph:                                  ; preds = %for.body
  %5 = sext i32 %3 to i64
  br label %for.body9, !dbg !364

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %5, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %k.039 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc16, %for.inc ]
  %6 = load i32** %a, align 8, !dbg !367, !tbaa !355
  %arrayidx11 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !367
  %7 = load i32* %arrayidx11, align 4, !dbg !367, !tbaa !363
  %add12 = add nsw i32 %7, 1, !dbg !367
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 %add12) #7, !dbg !367
  %rem = srem i32 %k.039, 15, !dbg !370
  %cmp14 = icmp eq i32 %rem, 14, !dbg !370
  br i1 %cmp14, label %if.then, label %for.inc, !dbg !370

if.then:                                          ; preds = %for.body9
  %fputc35 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call), !dbg !371
  br label %for.inc, !dbg !371

for.inc:                                          ; preds = %for.body9, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !364
  %inc16 = add nsw i32 %k.039, 1, !dbg !364
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !116), !dbg !364
  %8 = load i32** %index, align 8, !dbg !364, !tbaa !355
  %arrayidx7 = getelementptr inbounds i32* %8, i64 %indvars.iv.next43, !dbg !364
  %9 = load i32* %arrayidx7, align 4, !dbg !364, !tbaa !363
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !364
  %cmp8 = icmp slt i32 %10, %9, !dbg !364
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !364

for.end:                                          ; preds = %for.inc, %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %call), !dbg !372
  %11 = load i32* %nr, align 4, !dbg !361, !tbaa !363
  %12 = trunc i64 %indvars.iv.next43 to i32, !dbg !361
  %cmp = icmp slt i32 %12, %11, !dbg !361
  br i1 %cmp, label %for.body, label %for.end20, !dbg !361

for.end20:                                        ; preds = %for.end, %entry
  tail call void @ffclose(%struct._IO_FILE* %call) #7, !dbg !373
  ret void, !dbg !374
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @add_grp(%struct.t_block* nocapture %b, i8*** nocapture %gnames, i32 %nra, i32* nocapture %a, i8* nocapture %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %b}, i64 0, metadata !122), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i8*** %gnames}, i64 0, metadata !123), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32 %nra}, i64 0, metadata !124), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !125), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !126), !dbg !375
  %index = getelementptr inbounds %struct.t_block* %b, i64 0, i32 2, !dbg !376
  %0 = load i32** %index, align 8, !dbg !376, !tbaa !355
  %1 = bitcast i32* %0 to i8*, !dbg !376
  %nr = getelementptr inbounds %struct.t_block* %b, i64 0, i32 1, !dbg !376
  %2 = load i32* %nr, align 4, !dbg !376, !tbaa !363
  %add = shl i32 %2, 2, !dbg !376
  %mul = add i32 %add, 8, !dbg !376
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 102, i8* %1, i32 %mul) #7, !dbg !376
  %3 = bitcast i8* %call to i32*, !dbg !376
  store i32* %3, i32** %index, align 8, !dbg !376, !tbaa !355
  %4 = load i8*** %gnames, align 8, !dbg !377, !tbaa !355
  %5 = bitcast i8** %4 to i8*, !dbg !377
  %6 = load i32* %nr, align 4, !dbg !377, !tbaa !363
  %add4 = shl i32 %6, 3, !dbg !377
  %mul6 = add i32 %add4, 8, !dbg !377
  %call8 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 103, i8* %5, i32 %mul6) #7, !dbg !377
  %7 = bitcast i8* %call8 to i8**, !dbg !377
  store i8** %7, i8*** %gnames, align 8, !dbg !377, !tbaa !355
  %call9 = tail call noalias i8* @strdup(i8* %name) #7, !dbg !378
  %8 = load i32* %nr, align 4, !dbg !378, !tbaa !363
  %idxprom = sext i32 %8 to i64, !dbg !378
  %9 = load i8*** %gnames, align 8, !dbg !378, !tbaa !355
  %arrayidx = getelementptr inbounds i8** %9, i64 %idxprom, !dbg !378
  store i8* %call9, i8** %arrayidx, align 8, !dbg !378, !tbaa !355
  %a11 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 4, !dbg !379
  %10 = load i32** %a11, align 8, !dbg !379, !tbaa !355
  %11 = bitcast i32* %10 to i8*, !dbg !379
  %nra12 = getelementptr inbounds %struct.t_block* %b, i64 0, i32 3, !dbg !379
  %12 = load i32* %nra12, align 4, !dbg !379, !tbaa !363
  %add13 = add nsw i32 %12, %nra, !dbg !379
  %mul15 = shl i32 %add13, 2, !dbg !379
  %call17 = tail call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 106, i8* %11, i32 %mul15) #7, !dbg !379
  %13 = bitcast i8* %call17 to i32*, !dbg !379
  store i32* %13, i32** %a11, align 8, !dbg !379, !tbaa !355
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !127), !dbg !380
  %cmp52 = icmp sgt i32 %nra, 0, !dbg !380
  br i1 %cmp52, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx21 = getelementptr inbounds i32* %a, i64 %indvars.iv, !dbg !382
  %14 = load i32* %arrayidx21, align 4, !dbg !382, !tbaa !363
  %15 = load i32* %nra12, align 4, !dbg !382, !tbaa !363
  %inc = add nsw i32 %15, 1, !dbg !382
  store i32 %inc, i32* %nra12, align 4, !dbg !382, !tbaa !363
  %idxprom23 = sext i32 %15 to i64, !dbg !382
  %arrayidx25 = getelementptr inbounds i32* %13, i64 %idxprom23, !dbg !382
  store i32 %14, i32* %arrayidx25, align 4, !dbg !382, !tbaa !363
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !380
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !380
  %exitcond = icmp eq i32 %lftr.wideiv, %nra, !dbg !380
  br i1 %exitcond, label %for.end, label %for.body, !dbg !380

for.end:                                          ; preds = %for.body, %entry
  %16 = load i32* %nr, align 4, !dbg !383, !tbaa !363
  %inc28 = add nsw i32 %16, 1, !dbg !383
  store i32 %inc28, i32* %nr, align 4, !dbg !383, !tbaa !363
  %17 = load i32* %nra12, align 4, !dbg !384, !tbaa !363
  %idxprom31 = sext i32 %inc28 to i64, !dbg !384
  %18 = load i32** %index, align 8, !dbg !384, !tbaa !355
  %arrayidx33 = getelementptr inbounds i32* %18, i64 %idxprom31, !dbg !384
  store i32 %17, i32* %arrayidx33, align 4, !dbg !384, !tbaa !363
  ret void, !dbg !385
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32* @mk_aid(%struct.t_atoms* nocapture %atoms, i32* nocapture %restp, i32 %res, i32* nocapture %nra, i32 %bTrue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !194), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32* %restp}, i64 0, metadata !195), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32 %res}, i64 0, metadata !196), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !197), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32 %bTrue}, i64 0, metadata !198), !dbg !387
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !388
  %0 = load i32* %nr, align 4, !dbg !388, !tbaa !363
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 155, i32 %0, i32 4) #7, !dbg !388
  %1 = bitcast i8* %call to i32*, !dbg !388
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !199), !dbg !388
  store i32 0, i32* %nra, align 4, !dbg !389, !tbaa !363
  tail call void @llvm.dbg.value(metadata !24, i64 0, metadata !200), !dbg !390
  %2 = load i32* %nr, align 4, !dbg !390, !tbaa !363
  %cmp17 = icmp sgt i32 %2, 0, !dbg !390
  br i1 %cmp17, label %for.body.lr.ph, label %for.end, !dbg !390

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !392
  %.pre = load %struct.t_atom** %atom, align 8, !dbg !392, !tbaa !355
  br label %for.body, !dbg !390

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %8, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %resnr = getelementptr inbounds %struct.t_atom* %.pre, i64 %indvars.iv, i32 7, !dbg !392
  %4 = load i32* %resnr, align 4, !dbg !392, !tbaa !363
  %idxprom2 = sext i32 %4 to i64, !dbg !392
  %arrayidx3 = getelementptr inbounds i32* %restp, i64 %idxprom2, !dbg !392
  %5 = load i32* %arrayidx3, align 4, !dbg !392, !tbaa !356
  %cmp4 = icmp eq i32 %5, %res, !dbg !392
  %conv = zext i1 %cmp4 to i32, !dbg !392
  %cmp5 = icmp eq i32 %conv, %bTrue, !dbg !392
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !392

if.then:                                          ; preds = %for.body
  %6 = load i32* %nra, align 4, !dbg !393, !tbaa !363
  %inc = add nsw i32 %6, 1, !dbg !393
  store i32 %inc, i32* %nra, align 4, !dbg !393, !tbaa !363
  %idxprom7 = sext i32 %6 to i64, !dbg !393
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7, !dbg !393
  %7 = trunc i64 %indvars.iv to i32, !dbg !393
  store i32 %7, i32* %arrayidx8, align 4, !dbg !393, !tbaa !363
  %.pre19 = load i32* %nr, align 4, !dbg !390, !tbaa !363
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %for.body, %if.then
  %8 = phi i32 [ %3, %for.body ], [ %.pre19, %if.then ], !dbg !390
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !390
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !390
  %cmp = icmp slt i32 %9, %8, !dbg !390
  br i1 %cmp, label %for.body, label %for.end, !dbg !390

for.end:                                          ; preds = %for.inc, %entry
  ret i32* %1, !dbg !394
}

; Function Attrs: nounwind optsize uwtable
define i32 @is_protein(i8* nocapture %resnm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %resnm}, i64 0, metadata !205), !dbg !395
  %.b = load i1* @is_protein.bRead, align 1
  br i1 %.b, label %entry.for.cond.preheader_crit_edge, label %if.then, !dbg !396

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  %.pre = load i32* @is_protein.naa, align 4, !dbg !397, !tbaa !363
  br label %for.cond.preheader, !dbg !396

if.then:                                          ; preds = %entry
  %call = tail call i32 @get_strings(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8*** @is_protein.aas) #7, !dbg !399
  store i32 %call, i32* @is_protein.naa, align 4, !dbg !399, !tbaa !363
  store i1 true, i1* @is_protein.bRead, align 1
  br label %for.cond.preheader, !dbg !401

for.cond.preheader:                               ; preds = %entry.for.cond.preheader_crit_edge, %if.then
  %0 = phi i32 [ %.pre, %entry.for.cond.preheader_crit_edge ], [ %call, %if.then ]
  %cmp7 = icmp sgt i32 %0, 0, !dbg !397
  br i1 %cmp7, label %for.body.lr.ph, label %return, !dbg !397

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = load i8*** @is_protein.aas, align 8, !dbg !402, !tbaa !355
  br label %for.body, !dbg !397

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !397
  %cmp = icmp slt i32 %2, %0, !dbg !397
  br i1 %cmp, label %for.body, label %return, !dbg !397

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv, !dbg !402
  %3 = load i8** %arrayidx, align 8, !dbg !402, !tbaa !355
  %call1 = tail call i32 @strcasecmp(i8* %3, i8* %resnm) #8, !dbg !402
  %cmp2 = icmp eq i32 %call1, 0, !dbg !402
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !397
  br i1 %cmp2, label %return, label %for.cond, !dbg !402

return:                                           ; preds = %for.cond, %for.body, %for.cond.preheader
  %retval.0 = phi i32 [ 0, %for.cond.preheader ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0, !dbg !403
}

; Function Attrs: optsize
declare i32 @get_strings(i8*, i8***) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i32 %bASK, i32 %bVerb) #0 {
entry:
  %ndx_name.i = alloca [4096 x i8], align 16
  %ntp.i = alloca [3 x i32], align 4
  %nra = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !211), !dbg !404
  call void @llvm.dbg.value(metadata !{%struct.t_block* %gb}, i64 0, metadata !212), !dbg !404
  call void @llvm.dbg.value(metadata !{i8*** %gn}, i64 0, metadata !213), !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %bASK}, i64 0, metadata !214), !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !215), !dbg !404
  call void @llvm.dbg.declare(metadata !{i32* %nra}, metadata !219), !dbg !405
  %tobool = icmp eq i32 %bVerb, 0, !dbg !406
  br i1 %tobool, label %if.end, label %if.then, !dbg !406

if.then:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str, i64 0, i64 0)), !dbg !407
  br label %if.end, !dbg !407

if.end:                                           ; preds = %entry, %if.then
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !408
  %0 = load i32* %nres, align 4, !dbg !408, !tbaa !363
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 430, i32 %0, i32 4) #7, !dbg !408
  %1 = bitcast i8* %call1 to i32*, !dbg !408
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !216), !dbg !408
  %call2 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 0, i32* %nra, i32 1) #9, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !218), !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !219), !dbg !410
  %2 = load i32* %nra, align 4, !dbg !410, !tbaa !363
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %2, i32* %call2, i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0)) #9, !dbg !410
  %3 = bitcast i32* %call2 to i8*, !dbg !411
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 433, i8* %3) #7, !dbg !411
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !220), !dbg !412
  %4 = load i32* %nres, align 4, !dbg !412, !tbaa !363
  %cmp170 = icmp sgt i32 %4, 0, !dbg !412
  br i1 %cmp170, label %for.body.lr.ph, label %for.end33.thread, !dbg !412

for.end33.thread:                                 ; preds = %if.end
  %5 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #5
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !414) #5, !dbg !416
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !417) #5, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !418) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %ntp.i}, metadata !313) #5, !dbg !419
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !420) #5, !dbg !421
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 12, i32 4, i1 false) #5, !dbg !423
  br label %for.end11.i, !dbg !424

for.body.lr.ph:                                   ; preds = %if.end
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !426
  br label %for.body, !dbg !412

for.body:                                         ; preds = %for.inc31, %for.body.lr.ph
  %indvars.iv194 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next195, %for.inc31 ]
  %6 = load i8**** %resname, align 8, !dbg !426, !tbaa !355
  %arrayidx = getelementptr inbounds i8*** %6, i64 %indvars.iv194, !dbg !426
  %7 = load i8*** %arrayidx, align 8, !dbg !426, !tbaa !355
  %8 = load i8** %7, align 8, !dbg !426, !tbaa !355
  call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !217), !dbg !426
  %arrayidx5 = getelementptr inbounds i32* %1, i64 %indvars.iv194, !dbg !428
  %9 = load i32* %arrayidx5, align 4, !dbg !428, !tbaa !356
  %cmp6 = icmp eq i32 %9, 0, !dbg !428
  br i1 %cmp6, label %land.lhs.true, label %for.inc31, !dbg !428

land.lhs.true:                                    ; preds = %for.body
  %call7 = call i32 @is_protein(i8* %8) #9, !dbg !428
  %tobool8 = icmp eq i32 %call7, 0, !dbg !428
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !428

if.then9:                                         ; preds = %land.lhs.true
  store i32 1, i32* %arrayidx5, align 4, !dbg !429, !tbaa !356
  br label %for.inc31, !dbg !429

if.end12:                                         ; preds = %land.lhs.true
  %.pr = load i32* %arrayidx5, align 4, !dbg !430, !tbaa !356
  %cmp15 = icmp eq i32 %.pr, 0, !dbg !430
  br i1 %cmp15, label %for.body20, label %for.inc31, !dbg !430

for.body20:                                       ; preds = %if.end12, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end12 ]
  %arrayidx22 = getelementptr inbounds [5 x i8*]* @Sugars, i64 0, i64 %indvars.iv, !dbg !431
  %10 = load i8** %arrayidx22, align 8, !dbg !431, !tbaa !355
  %call23 = call i32 @strcasecmp(i8* %10, i8* %8) #8, !dbg !431
  %cmp24 = icmp eq i32 %call23, 0, !dbg !431
  br i1 %cmp24, label %if.then26, label %for.inc, !dbg !431

if.then26:                                        ; preds = %for.body20
  store i32 2, i32* %arrayidx5, align 4, !dbg !434, !tbaa !356
  br label %for.inc, !dbg !434

for.inc:                                          ; preds = %for.body20, %if.then26
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !435
  %lftr.wideiv191 = trunc i64 %indvars.iv.next to i32, !dbg !435
  %exitcond192 = icmp eq i32 %lftr.wideiv191, 5, !dbg !435
  br i1 %exitcond192, label %for.inc31, label %for.body20, !dbg !435

for.inc31:                                        ; preds = %for.inc, %if.end12, %for.body, %if.then9
  %indvars.iv.next195 = add i64 %indvars.iv194, 1, !dbg !412
  %11 = load i32* %nres, align 4, !dbg !412, !tbaa !363
  %12 = trunc i64 %indvars.iv.next195 to i32, !dbg !412
  %cmp = icmp slt i32 %12, %11, !dbg !412
  br i1 %cmp, label %for.body, label %for.end33, !dbg !412

for.end33:                                        ; preds = %for.inc31
  %13 = bitcast [3 x i32]* %ntp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #5
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !414) #5, !dbg !416
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !417) #5, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !418) #5, !dbg !416
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %ntp.i}, metadata !313) #5, !dbg !419
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !420) #5, !dbg !421
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 12, i32 4, i1 false) #5, !dbg !423
  %cmp231.i = icmp sgt i32 %11, 0, !dbg !424
  br i1 %cmp231.i, label %for.body3.i, label %for.end11.i, !dbg !424

for.body3.i:                                      ; preds = %for.end33, %for.body3.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %for.body3.i ], [ 0, %for.end33 ]
  %arrayidx5.i = getelementptr inbounds i32* %1, i64 %indvars.iv34.i, !dbg !436
  %14 = load i32* %arrayidx5.i, align 4, !dbg !436, !tbaa !356
  %idxprom6.i = zext i32 %14 to i64, !dbg !436
  %arrayidx7.i = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %idxprom6.i, !dbg !436
  %15 = load i32* %arrayidx7.i, align 4, !dbg !436, !tbaa !363
  %inc8.i = add nsw i32 %15, 1, !dbg !436
  store i32 %inc8.i, i32* %arrayidx7.i, align 4, !dbg !436, !tbaa !363
  %indvars.iv.next35.i = add i64 %indvars.iv34.i, 1, !dbg !424
  %lftr.wideiv189 = trunc i64 %indvars.iv.next35.i to i32, !dbg !424
  %exitcond190 = icmp eq i32 %lftr.wideiv189, %11, !dbg !424
  br i1 %exitcond190, label %for.end11.i, label %for.body3.i, !dbg !424

for.end11.i:                                      ; preds = %for.body3.i, %for.end33.thread, %for.end33
  %16 = phi i8* [ %5, %for.end33.thread ], [ %13, %for.end33 ], [ %13, %for.body3.i ]
  br i1 %tobool, label %p_status.exit, label %for.body14.i, !dbg !437

for.body14.i:                                     ; preds = %for.end11.i, %for.body14.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body14.i ], [ 0, %for.end11.i ]
  %arrayidx16.i = getelementptr inbounds [3 x i32]* %ntp.i, i64 0, i64 %indvars.iv.i, !dbg !438
  %17 = load i32* %arrayidx16.i, align 4, !dbg !438, !tbaa !363
  %arrayidx18.i = getelementptr inbounds [3 x i8*]* @ResTP, i64 0, i64 %indvars.iv.i, !dbg !438
  %18 = load i8** %arrayidx18.i, align 8, !dbg !438, !tbaa !355
  %call.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str67, i64 0, i64 0), i32 %17, i8* %18) #7, !dbg !438
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !440
  %lftr.wideiv187 = trunc i64 %indvars.iv.next.i to i32, !dbg !440
  %exitcond188 = icmp eq i32 %lftr.wideiv187, 3, !dbg !440
  br i1 %exitcond188, label %p_status.exit, label %for.body14.i, !dbg !440

p_status.exit:                                    ; preds = %for.body14.i, %for.end11.i
  call void @llvm.lifetime.end(i64 12, i8* %16) #5, !dbg !441
  %call35 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 1, i32* %nra, i32 1) #9, !dbg !442
  call void @llvm.dbg.value(metadata !{i32* %call35}, i64 0, metadata !218), !dbg !442
  call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !219), !dbg !443
  %19 = load i32* %nra, align 4, !dbg !443, !tbaa !363
  %cmp36 = icmp sgt i32 %19, 0, !dbg !443
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !443

if.then38:                                        ; preds = %p_status.exit
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !444) #5, !dbg !446
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !447) #5, !dbg !446
  call void @llvm.dbg.value(metadata !{%struct.t_block* %gb}, i64 0, metadata !448) #5, !dbg !449
  call void @llvm.dbg.value(metadata !{i8*** %gn}, i64 0, metadata !450) #5, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %bASK}, i64 0, metadata !451) #5, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !452) #5, !dbg !449
  %20 = getelementptr inbounds [4096 x i8]* %ndx_name.i, i64 0, i64 0, !dbg !453
  call void @llvm.lifetime.start(i64 4096, i8* %20) #5, !dbg !453
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %ndx_name.i}, metadata !282) #5, !dbg !453
  br i1 %tobool, label %if.end.i, label %if.then.i, !dbg !454

if.then.i:                                        ; preds = %if.then38
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str74, i64 0, i64 0)) #5, !dbg !455
  br label %if.end.i, !dbg !455

if.end.i:                                         ; preds = %if.then.i, %if.then38
  %nr.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !456
  %21 = load i32* %nr.i, align 4, !dbg !456, !tbaa !363
  %call1.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 292, i32 %21, i32 4) #7, !dbg !456
  %22 = bitcast i8* %call1.i to i32*, !dbg !456
  call void @llvm.dbg.value(metadata !{i32* %22}, i64 0, metadata !457) #5, !dbg !456
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !458) #5, !dbg !459
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !460) #5, !dbg !461
  %23 = load i32* %nres, align 4, !dbg !461, !tbaa !363
  %cmp453.i = icmp sgt i32 %23, 0, !dbg !461
  br i1 %cmp453.i, label %for.body.i, label %for.cond6.preheader.i, !dbg !461

for.cond6.preheader.i:                            ; preds = %for.body.i, %if.end.i
  %npres.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %inc.npres.0.i, %for.body.i ]
  %nr.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 1, !dbg !463
  %index7.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 2, !dbg !467
  %a23.i.i = getelementptr inbounds %struct.t_block* %gb, i64 0, i32 4, !dbg !468
  %atom.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !470
  %atomname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !473
  br label %for.cond10.preheader.i, !dbg !477

for.body.i:                                       ; preds = %if.end.i, %for.body.i
  %indvars.iv476.i = phi i64 [ %indvars.iv.next477.i, %for.body.i ], [ 0, %if.end.i ]
  %npres.0454.i = phi i32 [ %inc.npres.0.i, %for.body.i ], [ 0, %if.end.i ]
  %arrayidx.i = getelementptr inbounds i32* %1, i64 %indvars.iv476.i, !dbg !478
  %24 = load i32* %arrayidx.i, align 4, !dbg !478, !tbaa !356
  %cmp2.i = icmp eq i32 %24, 1, !dbg !478
  %inc.i = zext i1 %cmp2.i to i32, !dbg !478
  %inc.npres.0.i = add nsw i32 %inc.i, %npres.0454.i, !dbg !478
  %indvars.iv.next477.i = add i64 %indvars.iv476.i, 1, !dbg !461
  %lftr.wideiv185 = trunc i64 %indvars.iv.next477.i to i32, !dbg !461
  %exitcond186 = icmp eq i32 %lftr.wideiv185, %23, !dbg !461
  br i1 %exitcond186, label %for.cond6.preheader.i, label %for.body.i, !dbg !461

for.cond10.preheader.i:                           ; preds = %for.inc99.i, %for.cond6.preheader.i
  %indvars.iv472.i = phi i64 [ 0, %for.cond6.preheader.i ], [ %indvars.iv.next473.i, %for.inc99.i ]
  %25 = load i32* %nr.i, align 4, !dbg !479, !tbaa !363
  %cmp12446.i = icmp sgt i32 %25, 0, !dbg !479
  br i1 %cmp12446.i, label %for.body14.lr.ph.i, label %for.cond10.preheader.i.for.end85.i_crit_edge, !dbg !479

for.cond10.preheader.i.for.end85.i_crit_edge:     ; preds = %for.cond10.preheader.i
  %.pre197 = trunc i64 %indvars.iv472.i to i32, !dbg !464
  br label %for.end85.i, !dbg !479

for.body14.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %arrayidx24.i = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv472.i, !dbg !480
  %arrayidx74.i = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv472.i, !dbg !481
  %arrayidx48.i = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv472.i, !dbg !482
  %arrayidx38.i = getelementptr inbounds [10 x i32]* @analyse_prot.wholename, i64 0, i64 %indvars.iv472.i, !dbg !484
  %.pre478.i = load %struct.t_atom** %atom.i, align 8, !dbg !470, !tbaa !355
  %cmp25439.i = icmp eq i64 %indvars.iv472.i, 0, !dbg !480
  %26 = trunc i64 %indvars.iv472.i to i32, !dbg !484
  br label %for.body14.i125, !dbg !479

for.body14.i125:                                  ; preds = %for.inc83.i, %for.body14.lr.ph.i
  %27 = phi i32 [ %25, %for.body14.lr.ph.i ], [ %46, %for.inc83.i ]
  %indvars.iv470.i = phi i64 [ 0, %for.body14.lr.ph.i ], [ %indvars.iv.next471.i, %for.inc83.i ]
  %nra.0447.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %nra.1.i, %for.inc83.i ]
  %resnr.i = getelementptr inbounds %struct.t_atom* %.pre478.i, i64 %indvars.iv470.i, i32 7, !dbg !470
  %28 = load i32* %resnr.i, align 4, !dbg !470, !tbaa !363
  %idxprom17.i = sext i32 %28 to i64, !dbg !470
  %arrayidx18.i124 = getelementptr inbounds i32* %1, i64 %idxprom17.i, !dbg !470
  %29 = load i32* %arrayidx18.i124, align 4, !dbg !470, !tbaa !356
  %cmp19.i = icmp eq i32 %29, 1, !dbg !470
  br i1 %cmp19.i, label %for.cond22.preheader.i, label %for.inc83.i, !dbg !470

for.cond22.preheader.i:                           ; preds = %for.body14.i125
  br i1 %cmp25439.i, label %for.end72.i, label %for.body27.lr.ph.i, !dbg !480

for.body27.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %30 = load i8**** %atomname.i, align 8, !dbg !473, !tbaa !355
  %arrayidx29.i = getelementptr inbounds i8*** %30, i64 %indvars.iv470.i, !dbg !473
  %31 = load i8*** %arrayidx29.i, align 8, !dbg !473, !tbaa !355
  %32 = load i8** %31, align 8, !dbg !473, !tbaa !355
  %call33.i = call i16** @__ctype_b_loc() #10, !dbg !485
  %33 = load i16** %call33.i, align 8, !dbg !485, !tbaa !355
  %34 = load i32* %arrayidx24.i, align 4, !dbg !480, !tbaa !363
  br label %for.body27.i, !dbg !480

for.body27.i:                                     ; preds = %for.inc70.i, %for.body27.lr.ph.i
  %indvars.iv468.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next469.i, %for.inc70.i ]
  %match.0443.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %.match.0402.i, %for.inc70.i ]
  call void @llvm.dbg.value(metadata !{i8* %32}, i64 0, metadata !486) #5, !dbg !473
  br label %while.cond.i, !dbg !485

while.cond.i:                                     ; preds = %while.cond.i, %for.body27.i
  %atnm.0.i = phi i8* [ %32, %for.body27.i ], [ %incdec.ptr.i, %while.cond.i ]
  %35 = load i8* %atnm.0.i, align 1, !dbg !485, !tbaa !356
  %idxprom32.i = sext i8 %35 to i64, !dbg !485
  %arrayidx34.i = getelementptr inbounds i16* %33, i64 %idxprom32.i, !dbg !485
  %36 = load i16* %arrayidx34.i, align 2, !dbg !485, !tbaa !487
  %and.i = and i16 %36, 2048, !dbg !485
  %tobool36.i = icmp eq i16 %and.i, 0, !dbg !485
  %incdec.ptr.i = getelementptr inbounds i8* %atnm.0.i, i64 1, !dbg !488
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !486) #5, !dbg !488
  br i1 %tobool36.i, label %while.end.i, label %while.cond.i, !dbg !485

while.end.i:                                      ; preds = %while.cond.i
  switch i32 %26, label %if.then45.i [
    i32 8, label %lor.lhs.false.i
    i32 1, label %lor.lhs.false.i
  ], !dbg !484

lor.lhs.false.i:                                  ; preds = %while.end.i, %while.end.i
  %37 = load i32* %arrayidx38.i, align 4, !dbg !484, !tbaa !363
  %38 = trunc i64 %indvars.iv468.i to i32, !dbg !484
  %cmp43.i = icmp slt i32 %38, %37, !dbg !484
  br i1 %cmp43.i, label %if.then45.i, label %if.else.i, !dbg !484

if.then45.i:                                      ; preds = %lor.lhs.false.i, %while.end.i
  %39 = load i8*** %arrayidx48.i, align 8, !dbg !482, !tbaa !355
  %arrayidx49.i = getelementptr inbounds i8** %39, i64 %indvars.iv468.i, !dbg !482
  %40 = load i8** %arrayidx49.i, align 8, !dbg !482, !tbaa !355
  %call50.i = call i32 @strcasecmp(i8* %40, i8* %atnm.0.i) #8, !dbg !482
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !490) #5, !dbg !491
  br label %for.inc70.i, !dbg !482

if.else.i:                                        ; preds = %lor.lhs.false.i
  %41 = load i8*** %arrayidx48.i, align 8, !dbg !492, !tbaa !355
  %arrayidx58.i = getelementptr inbounds i8** %41, i64 %indvars.iv468.i, !dbg !492
  %42 = load i8** %arrayidx58.i, align 8, !dbg !492, !tbaa !355
  %call63.i = call i64 @strlen(i8* %42) #8, !dbg !492
  %call64.i = call i32 @strncasecmp(i8* %42, i8* %atnm.0.i, i64 %call63.i) #8, !dbg !492
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !490) #5, !dbg !494
  br label %for.inc70.i, !dbg !492

for.inc70.i:                                      ; preds = %if.else.i, %if.then45.i
  %call64.sink.i = phi i32 [ %call64.i, %if.else.i ], [ %call50.i, %if.then45.i ]
  %cmp65.i = icmp eq i32 %call64.sink.i, 0, !dbg !492
  %.match.0402.i = select i1 %cmp65.i, i32 1, i32 %match.0443.i, !dbg !492
  %indvars.iv.next469.i = add i64 %indvars.iv468.i, 1, !dbg !480
  %43 = trunc i64 %indvars.iv.next469.i to i32, !dbg !480
  %cmp25.i = icmp slt i32 %43, %34, !dbg !480
  br i1 %cmp25.i, label %for.body27.i, label %for.end72.i, !dbg !480

for.end72.i:                                      ; preds = %for.inc70.i, %for.cond22.preheader.i
  %match.0.lcssa.i = phi i32 [ 0, %for.cond22.preheader.i ], [ %.match.0402.i, %for.inc70.i ]
  %44 = load i32* %arrayidx74.i, align 4, !dbg !481, !tbaa !363
  %cmp75.i = icmp eq i32 %match.0.lcssa.i, %44, !dbg !481
  br i1 %cmp75.i, label %for.inc83.i, label %if.then77.i, !dbg !481

if.then77.i:                                      ; preds = %for.end72.i
  %inc78.i = add nsw i32 %nra.0447.i, 1, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %inc78.i}, i64 0, metadata !496) #5, !dbg !495
  %idxprom79.i = sext i32 %nra.0447.i to i64, !dbg !495
  %arrayidx80.i = getelementptr inbounds i32* %22, i64 %idxprom79.i, !dbg !495
  %45 = trunc i64 %indvars.iv470.i to i32, !dbg !495
  store i32 %45, i32* %arrayidx80.i, align 4, !dbg !495, !tbaa !363
  %.pre479.i = load i32* %nr.i, align 4, !dbg !479, !tbaa !363
  br label %for.inc83.i, !dbg !495

for.inc83.i:                                      ; preds = %if.then77.i, %for.end72.i, %for.body14.i125
  %46 = phi i32 [ %.pre479.i, %if.then77.i ], [ %27, %for.end72.i ], [ %27, %for.body14.i125 ], !dbg !479
  %nra.1.i = phi i32 [ %inc78.i, %if.then77.i ], [ %nra.0447.i, %for.end72.i ], [ %nra.0447.i, %for.body14.i125 ]
  %indvars.iv.next471.i = add i64 %indvars.iv470.i, 1, !dbg !479
  %47 = trunc i64 %indvars.iv.next471.i to i32, !dbg !479
  %cmp12.i = icmp slt i32 %47, %46, !dbg !479
  br i1 %cmp12.i, label %for.body14.i125, label %for.end85.i, !dbg !479

for.end85.i:                                      ; preds = %for.inc83.i, %for.cond10.preheader.i.for.end85.i_crit_edge
  %.pre-phi = phi i32 [ %.pre197, %for.cond10.preheader.i.for.end85.i_crit_edge ], [ %26, %for.inc83.i ], !dbg !464
  %nra.0.lcssa.i = phi i32 [ 0, %for.cond10.preheader.i.for.end85.i_crit_edge ], [ %nra.1.i, %for.inc83.i ]
  %cmp88.i = icmp eq i32 %.pre-phi, 9, !dbg !464
  br i1 %cmp88.i, label %lor.lhs.false90.i, label %if.then95.i, !dbg !464

lor.lhs.false90.i:                                ; preds = %for.end85.i
  %arrayidx87.i = getelementptr inbounds [10 x i32]* @analyse_prot.compareto, i64 0, i64 %indvars.iv472.i, !dbg !464
  %48 = load i32* %arrayidx87.i, align 4, !dbg !464, !tbaa !363
  %sub.i = add nsw i32 %48, -9, !dbg !464
  call void @llvm.dbg.value(metadata !{%struct.t_block* %gb}, i64 0, metadata !497) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{i32 %nra.0.lcssa.i}, i64 0, metadata !499) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{i32* %22}, i64 0, metadata !500) #5, !dbg !498
  call void @llvm.dbg.value(metadata !{i32 %sub.i}, i64 0, metadata !501) #5, !dbg !498
  %cmp.i.i = icmp slt i32 %sub.i, 0, !dbg !502
  %49 = load i32* %nr.i.i, align 4, !dbg !463, !tbaa !363
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !502

if.then.i.i:                                      ; preds = %lor.lhs.false90.i
  %sub.i.i = add i32 %48, -10, !dbg !463
  %add.i.i = add i32 %sub.i.i, %49, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %add.i.i}, i64 0, metadata !501) #5, !dbg !463
  br label %if.end.i.i, !dbg !463

if.end.i.i:                                       ; preds = %if.then.i.i, %lor.lhs.false90.i
  %index.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %sub.i, %lor.lhs.false90.i ]
  %cmp2.i.i = icmp slt i32 %index.addr.0.i.i, %49, !dbg !503
  br i1 %cmp2.i.i, label %if.end5.i.i, label %if.then3.i.i, !dbg !503

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str66, i64 0, i64 0), i32 %index.addr.0.i.i, i32 %49) #7, !dbg !504
  br label %if.end5.i.i, !dbg !504

if.end5.i.i:                                      ; preds = %if.end.i.i, %if.then3.i.i
  %add6.i.i = add nsw i32 %index.addr.0.i.i, 1, !dbg !467
  %idxprom.i.i = sext i32 %add6.i.i to i64, !dbg !467
  %50 = load i32** %index7.i.i, align 8, !dbg !467, !tbaa !355
  %arrayidx.i.i = getelementptr inbounds i32* %50, i64 %idxprom.i.i, !dbg !467
  %51 = load i32* %arrayidx.i.i, align 4, !dbg !467, !tbaa !363
  %idxprom8.i.i = sext i32 %index.addr.0.i.i to i64, !dbg !467
  %arrayidx10.i.i = getelementptr inbounds i32* %50, i64 %idxprom8.i.i, !dbg !467
  %52 = load i32* %arrayidx10.i.i, align 4, !dbg !467, !tbaa !363
  %sub11.i.i = sub nsw i32 %51, %52, !dbg !467
  %cmp12.i.i = icmp eq i32 %sub11.i.i, %nra.0.lcssa.i, !dbg !467
  br i1 %cmp12.i.i, label %for.cond.preheader.i.i, label %if.then95.i, !dbg !467

for.cond.preheader.i.i:                           ; preds = %if.end5.i.i
  %cmp1544.i.i = icmp sgt i32 %nra.0.lcssa.i, 0, !dbg !505
  br i1 %cmp1544.i.i, label %for.body.lr.ph.i.i, label %for.inc99.i, !dbg !505

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %53 = load i32** %a23.i.i, align 8, !dbg !468, !tbaa !355
  %54 = sext i32 %52 to i64, !dbg !505
  br label %for.body.i.i, !dbg !505

for.cond.i.i:                                     ; preds = %for.body.i.i
  %55 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !505
  %cmp15.i.i = icmp slt i32 %55, %nra.0.lcssa.i, !dbg !505
  br i1 %cmp15.i.i, label %for.body.i.i, label %for.inc99.i, !dbg !505

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %arrayidx17.i.i = getelementptr inbounds i32* %22, i64 %indvars.iv.i.i, !dbg !468
  %56 = load i32* %arrayidx17.i.i, align 4, !dbg !468, !tbaa !363
  %57 = add nsw i64 %indvars.iv.i.i, %54, !dbg !468
  %arrayidx24.i.i = getelementptr inbounds i32* %53, i64 %57, !dbg !468
  %58 = load i32* %arrayidx24.i.i, align 4, !dbg !468, !tbaa !363
  %cmp25.i.i = icmp eq i32 %56, %58, !dbg !468
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !505
  br i1 %cmp25.i.i, label %for.cond.i.i, label %if.then95.i, !dbg !468

if.then95.i:                                      ; preds = %for.body.i.i, %if.end5.i.i, %for.end85.i
  %arrayidx97.i = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv472.i, !dbg !506
  %59 = load i8** %arrayidx97.i, align 8, !dbg !506, !tbaa !355
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.0.lcssa.i, i32* %22, i8* %59) #7, !dbg !506
  br label %for.inc99.i, !dbg !506

for.inc99.i:                                      ; preds = %for.cond.i.i, %if.then95.i, %for.cond.preheader.i.i
  %indvars.iv.next473.i = add i64 %indvars.iv472.i, 1, !dbg !477
  %lftr.wideiv183 = trunc i64 %indvars.iv.next473.i to i32, !dbg !477
  %exitcond184 = icmp eq i32 %lftr.wideiv183, 10, !dbg !477
  br i1 %exitcond184, label %for.end101.i, label %for.cond10.preheader.i, !dbg !477

for.end101.i:                                     ; preds = %for.inc99.i
  %tobool102.i = icmp eq i32 %bASK, 0, !dbg !507
  br i1 %tobool102.i, label %analyse_prot.exit, label %for.cond104.preheader.i, !dbg !507

for.cond104.preheader.i:                          ; preds = %for.end101.i
  %resname.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !508
  br label %for.body108.i, !dbg !512

for.body108.i:                                    ; preds = %for.inc189.i, %for.cond104.preheader.i
  %indvars.iv466.i = phi i64 [ 0, %for.cond104.preheader.i ], [ %indvars.iv.next467.i, %for.inc189.i ]
  %arrayidx110.i = getelementptr inbounds [10 x i8*]* @analyse_prot.ch_name, i64 0, i64 %indvars.iv466.i, !dbg !513
  %60 = load i8** %arrayidx110.i, align 8, !dbg !513, !tbaa !355
  %call111.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str62, i64 0, i64 0), i8* %60, i32 %npres.0.lcssa.i) #7, !dbg !513
  %call112.i = call fastcc i32 @yn(i32 %bASK) #7, !dbg !514
  %tobool113.i = icmp eq i32 %call112.i, 0, !dbg !514
  br i1 %tobool113.i, label %for.inc189.i, label %for.cond116.preheader.i, !dbg !514

for.cond116.preheader.i:                          ; preds = %for.body108.i
  %61 = load %struct.t_atom** %atom.i, align 8, !dbg !515, !tbaa !355
  %resnr120432.i = getelementptr inbounds %struct.t_atom* %61, i64 0, i32 7, !dbg !515
  %62 = load i32* %resnr120432.i, align 4, !dbg !515, !tbaa !363
  %cmp121433.i = icmp slt i32 %62, %npres.0.lcssa.i, !dbg !515
  br i1 %cmp121433.i, label %land.rhs.lr.ph.i, label %for.inc189.i, !dbg !515

land.rhs.lr.ph.i:                                 ; preds = %for.cond116.preheader.i
  %arrayidx146.i = getelementptr inbounds [10 x i32]* @analyse_prot.sizes, i64 0, i64 %indvars.iv466.i, !dbg !516
  %arrayidx166.i = getelementptr inbounds [10 x i32]* @analyse_prot.complement, i64 0, i64 %indvars.iv466.i, !dbg !520
  %arrayidx152.i = getelementptr inbounds [10 x i8**]* @analyse_prot.chains, i64 0, i64 %indvars.iv466.i, !dbg !521
  %cmp147420.i = icmp eq i64 %indvars.iv466.i, 0, !dbg !516
  br label %land.rhs.i, !dbg !515

land.rhs.i:                                       ; preds = %for.cond116.backedge.i, %land.rhs.lr.ph.i
  %63 = phi %struct.t_atom* [ %61, %land.rhs.lr.ph.i ], [ %78, %for.cond116.backedge.i ]
  %64 = phi i32 [ %62, %land.rhs.lr.ph.i ], [ %79, %for.cond116.backedge.i ]
  %n.1435.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc175.i, %for.cond116.backedge.i ]
  %nra.2434.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %nra.2.be.i, %for.cond116.backedge.i ]
  %65 = load i32* %nr.i, align 4, !dbg !515, !tbaa !363
  %cmp124.i = icmp slt i32 %n.1435.i, %65, !dbg !515
  br i1 %cmp124.i, label %for.cond144.preheader.i.lr.ph, label %for.inc189.i

for.cond144.preheader.i.lr.ph:                    ; preds = %land.rhs.i
  %idxprom132424.i = sext i32 %n.1435.i to i64, !dbg !522
  %66 = load i32* %arrayidx166.i, align 4, !dbg !520, !tbaa !363
  br label %for.cond144.preheader.i

for.cond144.preheader.i:                          ; preds = %for.cond144.preheader.i.lr.ph, %for.inc174.land.rhs138_crit_edge.i
  %nra.3427.i165 = phi i32 [ %nra.2434.i, %for.cond144.preheader.i.lr.ph ], [ %nra.4.i, %for.inc174.land.rhs138_crit_edge.i ]
  %n.2428.i164 = phi i32 [ %n.1435.i, %for.cond144.preheader.i.lr.ph ], [ %inc175.i, %for.inc174.land.rhs138_crit_edge.i ]
  %indvars.iv464.i163 = phi i64 [ %idxprom132424.i, %for.cond144.preheader.i.lr.ph ], [ %indvars.iv.next465.i, %for.inc174.land.rhs138_crit_edge.i ]
  br i1 %cmp147420.i, label %for.end164.i, label %for.body149.lr.ph.i, !dbg !516

for.body149.lr.ph.i:                              ; preds = %for.cond144.preheader.i
  %67 = load i8*** %arrayidx152.i, align 8, !dbg !521, !tbaa !355
  %68 = load i8**** %atomname.i, align 8, !dbg !521, !tbaa !355
  %arrayidx156.i = getelementptr inbounds i8*** %68, i64 %indvars.iv464.i163, !dbg !521
  %69 = load i8*** %arrayidx156.i, align 8, !dbg !521, !tbaa !355
  %70 = load i8** %69, align 8, !dbg !521, !tbaa !355
  %71 = load i32* %arrayidx146.i, align 4, !dbg !516, !tbaa !363
  br label %for.body149.i, !dbg !516

for.body149.i:                                    ; preds = %for.body149.i, %for.body149.lr.ph.i
  %indvars.iv460.i = phi i64 [ 0, %for.body149.lr.ph.i ], [ %indvars.iv.next461.i, %for.body149.i ]
  %match.2422.i = phi i32 [ 0, %for.body149.lr.ph.i ], [ %.match.2.i, %for.body149.i ]
  %arrayidx153.i = getelementptr inbounds i8** %67, i64 %indvars.iv460.i, !dbg !521
  %72 = load i8** %arrayidx153.i, align 8, !dbg !521, !tbaa !355
  %call157.i = call i32 @strcasecmp(i8* %72, i8* %70) #8, !dbg !521
  %cmp158.i = icmp eq i32 %call157.i, 0, !dbg !521
  call void @llvm.dbg.value(metadata !489, i64 0, metadata !490) #5, !dbg !523
  %.match.2.i = select i1 %cmp158.i, i32 1, i32 %match.2422.i, !dbg !521
  %indvars.iv.next461.i = add i64 %indvars.iv460.i, 1, !dbg !516
  %73 = trunc i64 %indvars.iv.next461.i to i32, !dbg !516
  %cmp147.i = icmp slt i32 %73, %71, !dbg !516
  br i1 %cmp147.i, label %for.body149.i, label %for.end164.i, !dbg !516

for.end164.i:                                     ; preds = %for.body149.i, %for.cond144.preheader.i
  %match.2.lcssa.i = phi i32 [ 0, %for.cond144.preheader.i ], [ %.match.2.i, %for.body149.i ]
  %cmp167.i = icmp eq i32 %match.2.lcssa.i, %66, !dbg !520
  br i1 %cmp167.i, label %for.inc174.i, label %if.then169.i, !dbg !520

if.then169.i:                                     ; preds = %for.end164.i
  %inc170.i = add nsw i32 %nra.3427.i165, 1, !dbg !524
  call void @llvm.dbg.value(metadata !{i32 %inc170.i}, i64 0, metadata !496) #5, !dbg !524
  %idxprom171.i = sext i32 %nra.3427.i165 to i64, !dbg !524
  %arrayidx172.i = getelementptr inbounds i32* %22, i64 %idxprom171.i, !dbg !524
  store i32 %n.2428.i164, i32* %arrayidx172.i, align 4, !dbg !524, !tbaa !363
  br label %for.inc174.i, !dbg !524

for.inc174.i:                                     ; preds = %if.then169.i, %for.end164.i
  %nra.4.i = phi i32 [ %inc170.i, %if.then169.i ], [ %nra.3427.i165, %for.end164.i ]
  %indvars.iv.next465.i = add i64 %indvars.iv464.i163, 1, !dbg !522
  %inc175.i = add nsw i32 %n.2428.i164, 1, !dbg !522
  call void @llvm.dbg.value(metadata !{i32 %inc175.i}, i64 0, metadata !525) #5, !dbg !522
  %resnr135.i = getelementptr inbounds %struct.t_atom* %63, i64 %indvars.iv.next465.i, i32 7, !dbg !522
  %74 = load i32* %resnr135.i, align 4, !dbg !522, !tbaa !363
  %cmp136.i = icmp eq i32 %74, %64, !dbg !522
  br i1 %cmp136.i, label %for.inc174.land.rhs138_crit_edge.i, label %for.end176.i, !dbg !522

for.inc174.land.rhs138_crit_edge.i:               ; preds = %for.inc174.i
  %.pre481.i = load i32* %nr.i, align 4, !dbg !522, !tbaa !363
  %cmp140.i = icmp slt i32 %inc175.i, %.pre481.i, !dbg !522
  br i1 %cmp140.i, label %for.cond144.preheader.i, label %for.end176.i

for.end176.i:                                     ; preds = %for.inc174.land.rhs138_crit_edge.i, %for.inc174.i
  %cmp177.i = icmp sgt i32 %nra.4.i, 0, !dbg !526
  br i1 %cmp177.i, label %if.then179.i, label %for.cond116.backedge.i, !dbg !526

if.then179.i:                                     ; preds = %for.end176.i
  %idxprom182.i = sext i32 %64 to i64, !dbg !508
  %75 = load i8**** %resname.i, align 8, !dbg !508, !tbaa !355
  %arrayidx183.i = getelementptr inbounds i8*** %75, i64 %idxprom182.i, !dbg !508
  %76 = load i8*** %arrayidx183.i, align 8, !dbg !508, !tbaa !355
  %77 = load i8** %76, align 8, !dbg !508, !tbaa !355
  %add.i = add nsw i32 %64, 1, !dbg !508
  %call184.i = call i32 (i8*, i8*, ...)* @sprintf(i8* %20, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0), i8* %60, i8* %77, i32 %add.i) #7, !dbg !508
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.4.i, i32* %22, i8* %20) #7, !dbg !527
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !496) #5, !dbg !528
  %.pre.i = load %struct.t_atom** %atom.i, align 8, !dbg !515, !tbaa !355
  br label %for.cond116.backedge.i, !dbg !529

for.cond116.backedge.i:                           ; preds = %if.then179.i, %for.end176.i
  %78 = phi %struct.t_atom* [ %.pre.i, %if.then179.i ], [ %63, %for.end176.i ], !dbg !515
  %nra.2.be.i = phi i32 [ 0, %if.then179.i ], [ %nra.4.i, %for.end176.i ]
  %idxprom117.i = sext i32 %inc175.i to i64, !dbg !515
  %resnr120.i = getelementptr inbounds %struct.t_atom* %78, i64 %idxprom117.i, i32 7, !dbg !515
  %79 = load i32* %resnr120.i, align 4, !dbg !515, !tbaa !363
  %cmp121.i = icmp slt i32 %79, %npres.0.lcssa.i, !dbg !515
  br i1 %cmp121.i, label %land.rhs.i, label %for.inc189.i, !dbg !515

for.inc189.i:                                     ; preds = %for.cond116.backedge.i, %land.rhs.i, %for.cond116.preheader.i, %for.body108.i
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1, !dbg !512
  %lftr.wideiv181 = trunc i64 %indvars.iv.next467.i to i32, !dbg !512
  %exitcond182 = icmp eq i32 %lftr.wideiv181, 10, !dbg !512
  br i1 %exitcond182, label %for.end191.i, label %for.body108.i, !dbg !512

for.end191.i:                                     ; preds = %for.inc189.i
  %call192.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str64, i64 0, i64 0)) #7, !dbg !530
  %call193.i = call fastcc i32 @yn(i32 %bASK) #7, !dbg !531
  %tobool194.i = icmp eq i32 %call193.i, 0, !dbg !531
  br i1 %tobool194.i, label %analyse_prot.exit, label %for.cond197.preheader.i, !dbg !531

for.cond197.preheader.i:                          ; preds = %for.end191.i
  %80 = load %struct.t_atom** %atom.i, align 8, !dbg !532, !tbaa !355
  %resnr201415.i = getelementptr inbounds %struct.t_atom* %80, i64 0, i32 7, !dbg !532
  %81 = load i32* %resnr201415.i, align 4, !dbg !532, !tbaa !363
  %cmp202416.i = icmp slt i32 %81, %npres.0.lcssa.i, !dbg !532
  br i1 %cmp202416.i, label %land.rhs204.i, label %analyse_prot.exit, !dbg !532

for.cond197.loopexit.i:                           ; preds = %for.inc278.land.rhs221_crit_edge.i, %for.inc278.i
  %idxprom198.i = sext i32 %inc279.i to i64, !dbg !532
  %resnr201.i = getelementptr inbounds %struct.t_atom* %80, i64 %idxprom198.i, i32 7, !dbg !532
  %82 = load i32* %resnr201.i, align 4, !dbg !532, !tbaa !363
  %cmp202.i = icmp slt i32 %82, %npres.0.lcssa.i, !dbg !532
  br i1 %cmp202.i, label %land.rhs204.i, label %for.end281.i, !dbg !532

land.rhs204.i:                                    ; preds = %for.cond197.loopexit.i, %for.cond197.preheader.i
  %83 = phi i32 [ %81, %for.cond197.preheader.i ], [ %82, %for.cond197.loopexit.i ]
  %n.3418.i = phi i32 [ 0, %for.cond197.preheader.i ], [ %inc279.i, %for.cond197.loopexit.i ]
  %nra.5417.i = phi i32 [ 0, %for.cond197.preheader.i ], [ %nra.7.i, %for.cond197.loopexit.i ]
  %84 = load i32* %nr.i, align 4, !dbg !532, !tbaa !363
  %cmp206.i = icmp slt i32 %n.3418.i, %84, !dbg !532
  br i1 %cmp206.i, label %for.body226.i.lr.ph, label %for.end281.i

for.body226.i.lr.ph:                              ; preds = %land.rhs204.i
  %idxprom215407.i = sext i32 %n.3418.i to i64, !dbg !534
  %.pre = load i8**** %atomname.i, align 8, !dbg !537, !tbaa !355
  br label %for.body226.i

for.body226.i:                                    ; preds = %for.body226.i.lr.ph, %for.inc278.land.rhs221_crit_edge.i
  %nra.6410.i160 = phi i32 [ %nra.5417.i, %for.body226.i.lr.ph ], [ %nra.7.i, %for.inc278.land.rhs221_crit_edge.i ]
  %n.4411.i159 = phi i32 [ %n.3418.i, %for.body226.i.lr.ph ], [ %inc279.i, %for.inc278.land.rhs221_crit_edge.i ]
  %hold.0412.i158 = phi i32 [ -1, %for.body226.i.lr.ph ], [ %hold.1.i, %for.inc278.land.rhs221_crit_edge.i ]
  %indvars.iv.i128157 = phi i64 [ %idxprom215407.i, %for.body226.i.lr.ph ], [ %indvars.iv.next.i130, %for.inc278.land.rhs221_crit_edge.i ]
  %arrayidx229.i = getelementptr inbounds i8*** %.pre, i64 %indvars.iv.i128157, !dbg !537
  %85 = load i8*** %arrayidx229.i, align 8, !dbg !537, !tbaa !355
  %86 = load i8** %85, align 8, !dbg !537, !tbaa !355
  %call230.i = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0), i8* %86) #8, !dbg !537
  %cmp231.i129 = icmp eq i32 %call230.i, 0, !dbg !537
  br i1 %cmp231.i129, label %if.then233.i, label %if.else238.i, !dbg !537

if.then233.i:                                     ; preds = %for.body226.i
  %inc234.i = add nsw i32 %nra.6410.i160, 1, !dbg !538
  call void @llvm.dbg.value(metadata !{i32 %inc234.i}, i64 0, metadata !496) #5, !dbg !538
  %idxprom235.i = sext i32 %nra.6410.i160 to i64, !dbg !538
  %arrayidx236.i = getelementptr inbounds i32* %22, i64 %idxprom235.i, !dbg !538
  store i32 %n.4411.i159, i32* %arrayidx236.i, align 4, !dbg !538, !tbaa !363
  call void @llvm.dbg.value(metadata !{i32 %inc234.i}, i64 0, metadata !540) #5, !dbg !541
  %add237.i = add nsw i32 %nra.6410.i160, 3, !dbg !542
  call void @llvm.dbg.value(metadata !{i32 %add237.i}, i64 0, metadata !496) #5, !dbg !542
  br label %for.inc278.i, !dbg !543

if.else238.i:                                     ; preds = %for.body226.i
  %call242.i = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0), i8* %86) #8, !dbg !544
  %cmp243.i = icmp eq i32 %call242.i, 0, !dbg !544
  br i1 %cmp243.i, label %if.then245.i, label %if.else248.i, !dbg !544

if.then245.i:                                     ; preds = %if.else238.i
  %idxprom246.i = sext i32 %hold.0412.i158 to i64, !dbg !545
  %arrayidx247.i = getelementptr inbounds i32* %22, i64 %idxprom246.i, !dbg !545
  store i32 %n.4411.i159, i32* %arrayidx247.i, align 4, !dbg !545, !tbaa !363
  br label %for.inc278.i, !dbg !547

if.else248.i:                                     ; preds = %if.else238.i
  %call252.i = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str42, i64 0, i64 0), i8* %86) #8, !dbg !548
  %cmp253.i = icmp eq i32 %call252.i, 0, !dbg !548
  br i1 %cmp253.i, label %if.then255.i, label %if.else259.i, !dbg !548

if.then255.i:                                     ; preds = %if.else248.i
  %add256.i = add nsw i32 %hold.0412.i158, 1, !dbg !549
  %idxprom257.i = sext i32 %add256.i to i64, !dbg !549
  %arrayidx258.i = getelementptr inbounds i32* %22, i64 %idxprom257.i, !dbg !549
  store i32 %n.4411.i159, i32* %arrayidx258.i, align 4, !dbg !549, !tbaa !363
  br label %for.inc278.i, !dbg !551

if.else259.i:                                     ; preds = %if.else248.i
  %call263.i = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* %86) #8, !dbg !552
  %cmp264.i = icmp eq i32 %call263.i, 0, !dbg !552
  br i1 %cmp264.i, label %if.then266.i, label %if.else270.i, !dbg !552

if.then266.i:                                     ; preds = %if.else259.i
  %add267.i = add nsw i32 %hold.0412.i158, 1, !dbg !553
  %idxprom268.i = sext i32 %add267.i to i64, !dbg !553
  %arrayidx269.i = getelementptr inbounds i32* %22, i64 %idxprom268.i, !dbg !553
  store i32 %n.4411.i159, i32* %arrayidx269.i, align 4, !dbg !553, !tbaa !363
  br label %for.inc278.i, !dbg !555

if.else270.i:                                     ; preds = %if.else259.i
  %inc271.i = add nsw i32 %nra.6410.i160, 1, !dbg !556
  call void @llvm.dbg.value(metadata !{i32 %inc271.i}, i64 0, metadata !496) #5, !dbg !556
  %idxprom272.i = sext i32 %nra.6410.i160 to i64, !dbg !556
  %arrayidx273.i = getelementptr inbounds i32* %22, i64 %idxprom272.i, !dbg !556
  store i32 %n.4411.i159, i32* %arrayidx273.i, align 4, !dbg !556, !tbaa !363
  br label %for.inc278.i

for.inc278.i:                                     ; preds = %if.else270.i, %if.then266.i, %if.then255.i, %if.then245.i, %if.then233.i
  %nra.7.i = phi i32 [ %add237.i, %if.then233.i ], [ %nra.6410.i160, %if.then245.i ], [ %nra.6410.i160, %if.then255.i ], [ %nra.6410.i160, %if.then266.i ], [ %inc271.i, %if.else270.i ]
  %hold.1.i = phi i32 [ %inc234.i, %if.then233.i ], [ %hold.0412.i158, %if.then245.i ], [ %hold.0412.i158, %if.then255.i ], [ %hold.0412.i158, %if.then266.i ], [ %hold.0412.i158, %if.else270.i ]
  %indvars.iv.next.i130 = add i64 %indvars.iv.i128157, 1, !dbg !534
  %inc279.i = add nsw i32 %n.4411.i159, 1, !dbg !534
  call void @llvm.dbg.value(metadata !{i32 %inc279.i}, i64 0, metadata !525) #5, !dbg !534
  %resnr218.i = getelementptr inbounds %struct.t_atom* %80, i64 %indvars.iv.next.i130, i32 7, !dbg !534
  %87 = load i32* %resnr218.i, align 4, !dbg !534, !tbaa !363
  %cmp219.i = icmp eq i32 %87, %83, !dbg !534
  br i1 %cmp219.i, label %for.inc278.land.rhs221_crit_edge.i, label %for.cond197.loopexit.i, !dbg !534

for.inc278.land.rhs221_crit_edge.i:               ; preds = %for.inc278.i
  %.pre480.i = load i32* %nr.i, align 4, !dbg !534, !tbaa !363
  %cmp223.i = icmp slt i32 %inc279.i, %.pre480.i, !dbg !534
  br i1 %cmp223.i, label %for.body226.i, label %for.cond197.loopexit.i

for.end281.i:                                     ; preds = %land.rhs204.i, %for.cond197.loopexit.i
  %nra.5.lcssa.i = phi i32 [ %nra.5417.i, %land.rhs204.i ], [ %nra.7.i, %for.cond197.loopexit.i ]
  %cmp282.i = icmp sgt i32 %nra.5.lcssa.i, 0, !dbg !557
  br i1 %cmp282.i, label %if.then284.i, label %analyse_prot.exit, !dbg !557

if.then284.i:                                     ; preds = %for.end281.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %nra.5.lcssa.i, i32* %22, i8* getelementptr inbounds ([10 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !558
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !496) #5, !dbg !560
  br label %analyse_prot.exit, !dbg !561

analyse_prot.exit:                                ; preds = %for.end101.i, %for.end191.i, %for.cond197.preheader.i, %for.end281.i, %if.then284.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 387, i8* %call1.i) #7, !dbg !562
  call void @llvm.lifetime.end(i64 4096, i8* %20) #5, !dbg !563
  br label %if.end39, !dbg !445

if.end39:                                         ; preds = %analyse_prot.exit, %p_status.exit
  %88 = bitcast i32* %call35 to i8*, !dbg !564
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 452, i8* %88) #7, !dbg !564
  %call40 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 1, i32* %nra, i32 0) #9, !dbg !565
  call void @llvm.dbg.value(metadata !{i32* %call40}, i64 0, metadata !218), !dbg !565
  call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !219), !dbg !566
  %89 = load i32* %nra, align 4, !dbg !566, !tbaa !363
  %cmp41 = icmp sgt i32 %89, 0, !dbg !566
  br i1 %cmp41, label %land.lhs.true43, label %if.end47, !dbg !566

land.lhs.true43:                                  ; preds = %if.end39
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !566
  %90 = load i32* %nr, align 4, !dbg !566, !tbaa !363
  %cmp44 = icmp slt i32 %89, %90, !dbg !566
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !566

if.then46:                                        ; preds = %land.lhs.true43
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %89, i32* %call40, i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !567
  br label %if.end47, !dbg !567

if.end47:                                         ; preds = %if.then46, %land.lhs.true43, %if.end39
  %91 = bitcast i32* %call40 to i8*, !dbg !568
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 458, i8* %91) #7, !dbg !568
  %call48 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 2, i32* %nra, i32 1) #9, !dbg !569
  call void @llvm.dbg.value(metadata !{i32* %call48}, i64 0, metadata !218), !dbg !569
  call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !219), !dbg !570
  %92 = load i32* %nra, align 4, !dbg !570, !tbaa !363
  %cmp49 = icmp sgt i32 %92, 0, !dbg !570
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !570

if.then51:                                        ; preds = %if.end47
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %92, i32* %call48, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0)) #9, !dbg !571
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !573) #5, !dbg !575
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !576) #5, !dbg !575
  call void @llvm.dbg.value(metadata !{%struct.t_block* %gb}, i64 0, metadata !577) #5, !dbg !578
  call void @llvm.dbg.value(metadata !{i8*** %gn}, i64 0, metadata !579) #5, !dbg !578
  call void @llvm.dbg.value(metadata !{i32 %bASK}, i64 0, metadata !580) #5, !dbg !578
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !581) #5, !dbg !578
  br i1 %tobool, label %if.end.i134, label %if.then.i133, !dbg !582

if.then.i133:                                     ; preds = %if.then51
  %puts.i132 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str75, i64 0, i64 0)) #5, !dbg !583
  br label %if.end.i134, !dbg !583

if.end.i134:                                      ; preds = %if.then.i133, %if.then51
  %93 = load %struct._IO_FILE** @debug, align 8, !dbg !584, !tbaa !355
  %tobool1.i = icmp eq %struct._IO_FILE* %93, null, !dbg !584
  br i1 %tobool1.i, label %if.end52, label %if.then2.i, !dbg !584

if.then2.i:                                       ; preds = %if.end.i134
  %idxprom.i = sext i32 %bASK to i64, !dbg !585
  %arrayidx.i135 = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom.i, !dbg !585
  %94 = load i8** %arrayidx.i135, align 8, !dbg !585, !tbaa !355
  %idxprom3.i = sext i32 %bVerb to i64, !dbg !585
  %arrayidx4.i = getelementptr inbounds [3 x i8*]* @bool_names, i64 0, i64 %idxprom3.i, !dbg !585
  %95 = load i8** %arrayidx4.i, align 8, !dbg !585, !tbaa !355
  %call5.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str25, i64 0, i64 0), i8* %call1, %struct.t_atoms* %atoms, %struct.t_block* %gb, i8*** %gn, i8* %94, i8* %95) #7, !dbg !585
  br label %if.end52, !dbg !585

if.end52:                                         ; preds = %if.then2.i, %if.end.i134, %if.end47
  %96 = bitcast i32* %call48 to i8*, !dbg !586
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 466, i8* %96) #7, !dbg !586
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !587) #5, !dbg !589
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !590) #5, !dbg !589
  call void @llvm.dbg.value(metadata !{%struct.t_block* %gb}, i64 0, metadata !591) #5, !dbg !592
  call void @llvm.dbg.value(metadata !{i8*** %gn}, i64 0, metadata !593) #5, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %bASK}, i64 0, metadata !594) #5, !dbg !592
  call void @llvm.dbg.value(metadata !{i32 %bVerb}, i64 0, metadata !595) #5, !dbg !592
  call void @llvm.dbg.value(metadata !596, i64 0, metadata !597) #5, !dbg !598
  call void @llvm.dbg.value(metadata !596, i64 0, metadata !599) #5, !dbg !600
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !601) #5, !dbg !602
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !603) #5, !dbg !604
  %97 = load i32* %nres, align 4, !dbg !604, !tbaa !363
  %cmp280.i = icmp sgt i32 %97, 0, !dbg !604
  br i1 %cmp280.i, label %for.body.i140, label %for.end.i, !dbg !604

for.cond.i:                                       ; preds = %for.body.i140
  %98 = trunc i64 %indvars.iv.next311.i to i32, !dbg !604
  %cmp.i137 = icmp slt i32 %98, %97, !dbg !604
  br i1 %cmp.i137, label %for.body.i140, label %for.end.i, !dbg !604

for.body.i140:                                    ; preds = %if.end52, %for.cond.i
  %indvars.iv310.i = phi i64 [ %indvars.iv.next311.i, %for.cond.i ], [ 0, %if.end52 ]
  %i.0281.i = phi i32 [ %inc.i139, %for.cond.i ], [ 0, %if.end52 ]
  %arrayidx.i138 = getelementptr inbounds i32* %1, i64 %indvars.iv310.i, !dbg !606
  %99 = load i32* %arrayidx.i138, align 4, !dbg !606, !tbaa !356
  %cmp1.i = icmp eq i32 %99, 0, !dbg !606
  %indvars.iv.next311.i = add i64 %indvars.iv310.i, 1, !dbg !604
  %inc.i139 = add nsw i32 %i.0281.i, 1, !dbg !604
  call void @llvm.dbg.value(metadata !{i32 %inc.i139}, i64 0, metadata !603) #5, !dbg !604
  br i1 %cmp1.i, label %for.end.i, label %for.cond.i, !dbg !606

for.end.i:                                        ; preds = %for.body.i140, %for.cond.i, %if.end52
  %i.0.lcssa.i = phi i32 [ 0, %if.end52 ], [ %i.0281.i, %for.body.i140 ], [ %inc.i139, %for.cond.i ]
  %cmp3.i = icmp slt i32 %i.0.lcssa.i, %97, !dbg !607
  br i1 %cmp3.i, label %if.then4.i, label %analyse_other.exit, !dbg !607

if.then4.i:                                       ; preds = %for.end.i
  br i1 %tobool, label %if.end6.i, label %if.then5.i, !dbg !608

if.then5.i:                                       ; preds = %if.then4.i
  %puts.i142 = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str76, i64 0, i64 0)) #5, !dbg !610
  br label %if.end6.i, !dbg !610

if.end6.i:                                        ; preds = %if.then5.i, %if.then4.i
  %nr.i143 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !611
  %100 = load i32* %nr.i143, align 4, !dbg !611, !tbaa !363
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 180, i32 %100, i32 4) #7, !dbg !611
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !612) #5, !dbg !613
  %101 = load i32* %nr.i143, align 4, !dbg !613, !tbaa !363
  %cmp10274.i = icmp sgt i32 %101, 0, !dbg !613
  br i1 %cmp10274.i, label %for.body11.lr.ph.i, label %for.end167.i, !dbg !613

for.body11.lr.ph.i:                               ; preds = %if.end6.i
  %atom.i144 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !615
  %resname.i145 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !617
  br label %for.body11.i, !dbg !613

for.cond46.preheader.i:                           ; preds = %for.inc43.i
  %cmp47269.i = icmp sgt i32 %nrestp.1.i, 0, !dbg !618
  br i1 %cmp47269.i, label %for.body49.lr.ph.i, label %for.end167.i, !dbg !618

for.body49.lr.ph.i:                               ; preds = %for.cond46.preheader.i
  %tobool79.i = icmp eq i32 %bASK, 0, !dbg !620
  %atomname140.i = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !622
  br label %for.body49.i, !dbg !618

for.body11.i:                                     ; preds = %for.inc43.i, %for.body11.lr.ph.i
  %102 = phi i32 [ %101, %for.body11.lr.ph.i ], [ %113, %for.inc43.i ]
  %indvars.iv306.i = phi i64 [ 0, %for.body11.lr.ph.i ], [ %indvars.iv.next307.i, %for.inc43.i ]
  %nrestp.0277.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %nrestp.1.i, %for.inc43.i ]
  %restp.0276.i = phi i8** [ null, %for.body11.lr.ph.i ], [ %restp.1.i, %for.inc43.i ]
  %103 = load %struct.t_atom** %atom.i144, align 8, !dbg !615, !tbaa !355
  %resnr14.i = getelementptr inbounds %struct.t_atom* %103, i64 %indvars.iv306.i, i32 7, !dbg !615
  %104 = load i32* %resnr14.i, align 4, !dbg !615, !tbaa !363
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !630) #5, !dbg !615
  %idxprom15.i = sext i32 %104 to i64, !dbg !617
  %105 = load i8**** %resname.i145, align 8, !dbg !617, !tbaa !355
  %arrayidx16.i146 = getelementptr inbounds i8*** %105, i64 %idxprom15.i, !dbg !617
  %106 = load i8*** %arrayidx16.i146, align 8, !dbg !617, !tbaa !355
  %107 = load i8** %106, align 8, !dbg !617, !tbaa !355
  call void @llvm.dbg.value(metadata !{i8* %107}, i64 0, metadata !631) #5, !dbg !617
  %arrayidx18.i147 = getelementptr inbounds i32* %1, i64 %idxprom15.i, !dbg !632
  %108 = load i32* %arrayidx18.i147, align 4, !dbg !632, !tbaa !356
  %cmp19.i148 = icmp eq i32 %108, 0, !dbg !632
  br i1 %cmp19.i148, label %for.cond21.preheader.i, label %for.inc43.i, !dbg !632

for.cond21.preheader.i:                           ; preds = %for.body11.i
  %cmp22271.i = icmp sgt i32 %nrestp.0277.i, 0, !dbg !633
  br i1 %cmp22271.i, label %for.body23.i, label %for.end32.i, !dbg !633

for.cond21.i:                                     ; preds = %for.body23.i
  %109 = trunc i64 %indvars.iv.next305.i to i32, !dbg !633
  %cmp22.i = icmp slt i32 %109, %nrestp.0277.i, !dbg !633
  br i1 %cmp22.i, label %for.body23.i, label %for.end32.i, !dbg !633

for.body23.i:                                     ; preds = %for.cond21.preheader.i, %for.cond21.i
  %indvars.iv304.i = phi i64 [ %indvars.iv.next305.i, %for.cond21.i ], [ 0, %for.cond21.preheader.i ]
  %l.0272.i = phi i32 [ %inc31.i, %for.cond21.i ], [ 0, %for.cond21.preheader.i ]
  %arrayidx25.i = getelementptr inbounds i8** %restp.0276.i, i64 %indvars.iv304.i, !dbg !636
  %110 = load i8** %arrayidx25.i, align 8, !dbg !636, !tbaa !355
  %call26.i = call i32 @strcmp(i8* %110, i8* %107) #8, !dbg !636
  %cmp27.i = icmp eq i32 %call26.i, 0, !dbg !636
  %indvars.iv.next305.i = add i64 %indvars.iv304.i, 1, !dbg !633
  %inc31.i = add nsw i32 %l.0272.i, 1, !dbg !633
  call void @llvm.dbg.value(metadata !{i32 %inc31.i}, i64 0, metadata !637) #5, !dbg !633
  br i1 %cmp27.i, label %for.end32.i, label %for.cond21.i, !dbg !636

for.end32.i:                                      ; preds = %for.body23.i, %for.cond21.i, %for.cond21.preheader.i
  %l.0.lcssa.i = phi i32 [ 0, %for.cond21.preheader.i ], [ %l.0272.i, %for.body23.i ], [ %inc31.i, %for.cond21.i ]
  %cmp33.i = icmp eq i32 %l.0.lcssa.i, %nrestp.0277.i, !dbg !638
  br i1 %cmp33.i, label %if.then34.i, label %for.inc43.i, !dbg !638

if.then34.i:                                      ; preds = %for.end32.i
  %111 = bitcast i8** %restp.0276.i to i8*, !dbg !639
  %inc35.i = add nsw i32 %nrestp.0277.i, 1, !dbg !639
  call void @llvm.dbg.value(metadata !{i32 %inc35.i}, i64 0, metadata !601) #5, !dbg !639
  %mul.i = shl i32 %inc35.i, 3, !dbg !639
  %call37.i = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 189, i8* %111, i32 %mul.i) #7, !dbg !639
  %112 = bitcast i8* %call37.i to i8**, !dbg !639
  call void @llvm.dbg.value(metadata !{i8** %112}, i64 0, metadata !597) #5, !dbg !639
  %call38.i = call noalias i8* @strdup(i8* %107) #7, !dbg !641
  %idxprom39.i = sext i32 %nrestp.0277.i to i64, !dbg !641
  %arrayidx40.i = getelementptr inbounds i8** %112, i64 %idxprom39.i, !dbg !641
  store i8* %call38.i, i8** %arrayidx40.i, align 8, !dbg !641, !tbaa !355
  %.pre317.i = load i32* %nr.i143, align 4, !dbg !613, !tbaa !363
  br label %for.inc43.i, !dbg !642

for.inc43.i:                                      ; preds = %if.then34.i, %for.end32.i, %for.body11.i
  %113 = phi i32 [ %.pre317.i, %if.then34.i ], [ %102, %for.end32.i ], [ %102, %for.body11.i ], !dbg !613
  %restp.1.i = phi i8** [ %112, %if.then34.i ], [ %restp.0276.i, %for.end32.i ], [ %restp.0276.i, %for.body11.i ]
  %nrestp.1.i = phi i32 [ %inc35.i, %if.then34.i ], [ %nrestp.0277.i, %for.end32.i ], [ %nrestp.0277.i, %for.body11.i ]
  %indvars.iv.next307.i = add i64 %indvars.iv306.i, 1, !dbg !613
  %114 = trunc i64 %indvars.iv.next307.i to i32, !dbg !613
  %cmp10.i = icmp slt i32 %114, %113, !dbg !613
  br i1 %cmp10.i, label %for.body11.i, label %for.cond46.preheader.i, !dbg !613

for.body49.i:                                     ; preds = %for.inc165.for.body49_crit_edge.i, %for.body49.lr.ph.i
  %115 = phi i32 [ %113, %for.body49.lr.ph.i ], [ %.pre318.i, %for.inc165.for.body49_crit_edge.i ]
  %indvars.iv298.i = phi i64 [ 0, %for.body49.lr.ph.i ], [ %indvars.iv.next299.i, %for.inc165.for.body49_crit_edge.i ]
  %call51.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 195, i32 %115, i32 4) #7, !dbg !643
  %116 = bitcast i8* %call51.i to i32*, !dbg !643
  call void @llvm.dbg.value(metadata !{i32* %116}, i64 0, metadata !644) #5, !dbg !643
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !645) #5, !dbg !646
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !647) #5, !dbg !648
  %117 = load i32* %nr.i143, align 4, !dbg !648, !tbaa !363
  %cmp54251.i = icmp sgt i32 %117, 0, !dbg !648
  %arrayidx65.i = getelementptr inbounds i8** %restp.1.i, i64 %indvars.iv298.i, !dbg !650
  br i1 %cmp54251.i, label %for.body56.lr.ph.i, label %for.body49.for.end76_crit_edge.i, !dbg !648

for.body49.for.end76_crit_edge.i:                 ; preds = %for.body49.i
  %.pre319.i = load i8** %arrayidx65.i, align 8, !dbg !652, !tbaa !355
  br label %for.end76.i, !dbg !648

for.body56.lr.ph.i:                               ; preds = %for.body49.i
  %.pre313.i = load %struct.t_atom** %atom.i144, align 8, !dbg !653, !tbaa !355
  %.pre314.i = load i8**** %resname.i145, align 8, !dbg !653, !tbaa !355
  %.pre315.i = load i8** %arrayidx65.i, align 8, !dbg !650, !tbaa !355
  br label %for.body56.i, !dbg !648

for.body56.i:                                     ; preds = %for.inc74.i, %for.body56.lr.ph.i
  %118 = phi i32 [ %117, %for.body56.lr.ph.i ], [ %123, %for.inc74.i ]
  %indvars.iv.i149 = phi i64 [ 0, %for.body56.lr.ph.i ], [ %indvars.iv.next.i150, %for.inc74.i ]
  %naid.0253.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %naid.1.i, %for.inc74.i ]
  %resnr60.i = getelementptr inbounds %struct.t_atom* %.pre313.i, i64 %indvars.iv.i149, i32 7, !dbg !653
  %119 = load i32* %resnr60.i, align 4, !dbg !653, !tbaa !363
  %idxprom61.i = sext i32 %119 to i64, !dbg !653
  %arrayidx63.i = getelementptr inbounds i8*** %.pre314.i, i64 %idxprom61.i, !dbg !653
  %120 = load i8*** %arrayidx63.i, align 8, !dbg !653, !tbaa !355
  %121 = load i8** %120, align 8, !dbg !653, !tbaa !355
  call void @llvm.dbg.value(metadata !{i8* %121}, i64 0, metadata !631) #5, !dbg !653
  %call66.i = call i32 @strcmp(i8* %.pre315.i, i8* %121) #8, !dbg !650
  %cmp67.i = icmp eq i32 %call66.i, 0, !dbg !650
  br i1 %cmp67.i, label %if.then69.i, label %for.inc74.i, !dbg !650

if.then69.i:                                      ; preds = %for.body56.i
  %inc70.i = add nsw i32 %naid.0253.i, 1, !dbg !654
  call void @llvm.dbg.value(metadata !{i32 %inc70.i}, i64 0, metadata !645) #5, !dbg !654
  %idxprom71.i = sext i32 %naid.0253.i to i64, !dbg !654
  %arrayidx72.i = getelementptr inbounds i32* %116, i64 %idxprom71.i, !dbg !654
  %122 = trunc i64 %indvars.iv.i149 to i32, !dbg !654
  store i32 %122, i32* %arrayidx72.i, align 4, !dbg !654, !tbaa !363
  %.pre316.i = load i32* %nr.i143, align 4, !dbg !648, !tbaa !363
  br label %for.inc74.i, !dbg !654

for.inc74.i:                                      ; preds = %if.then69.i, %for.body56.i
  %123 = phi i32 [ %.pre316.i, %if.then69.i ], [ %118, %for.body56.i ], !dbg !648
  %naid.1.i = phi i32 [ %inc70.i, %if.then69.i ], [ %naid.0253.i, %for.body56.i ]
  %indvars.iv.next.i150 = add i64 %indvars.iv.i149, 1, !dbg !648
  %124 = trunc i64 %indvars.iv.next.i150 to i32, !dbg !648
  %cmp54.i = icmp slt i32 %124, %123, !dbg !648
  br i1 %cmp54.i, label %for.body56.i, label %for.end76.i, !dbg !648

for.end76.i:                                      ; preds = %for.inc74.i, %for.body49.for.end76_crit_edge.i
  %125 = phi i8* [ %.pre319.i, %for.body49.for.end76_crit_edge.i ], [ %.pre315.i, %for.inc74.i ]
  %naid.0.lcssa.i = phi i32 [ 0, %for.body49.for.end76_crit_edge.i ], [ %naid.1.i, %for.inc74.i ]
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naid.0.lcssa.i, i32* %116, i8* %125) #7, !dbg !652
  br i1 %tobool79.i, label %for.inc165.i, label %if.then80.i, !dbg !620

if.then80.i:                                      ; preds = %for.end76.i
  %126 = load i8** %arrayidx65.i, align 8, !dbg !655, !tbaa !355
  %call83.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str21, i64 0, i64 0), i8* %126) #7, !dbg !655
  %127 = load %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !355
  %call84.i = call i32 @fflush(%struct._IO_FILE* %127) #7, !dbg !656
  %call85.i = call fastcc i32 @yn(i32 %bASK) #7, !dbg !657
  %tobool86.i = icmp eq i32 %call85.i, 0, !dbg !657
  br i1 %tobool86.i, label %if.end163.i, label %for.cond88.preheader.i, !dbg !657

for.cond88.preheader.i:                           ; preds = %if.then80.i
  %cmp89257.i = icmp sgt i32 %naid.0.lcssa.i, 0, !dbg !658
  br i1 %cmp89257.i, label %for.body91.i, label %if.end162.i, !dbg !658

for.body91.i:                                     ; preds = %for.inc122.i, %for.cond88.preheader.i
  %indvars.iv288.i = phi i64 [ 0, %for.cond88.preheader.i ], [ %indvars.iv.next289.i, %for.inc122.i ]
  %natp.0260.i = phi i32 [ 0, %for.cond88.preheader.i ], [ %natp.1.i, %for.inc122.i ]
  %attp.1258.i = phi i8** [ null, %for.cond88.preheader.i ], [ %attp.2.i, %for.inc122.i ]
  %arrayidx93.i = getelementptr inbounds i32* %116, i64 %indvars.iv288.i, !dbg !660
  %128 = load i32* %arrayidx93.i, align 4, !dbg !660, !tbaa !363
  %idxprom94.i = sext i32 %128 to i64, !dbg !660
  %129 = load i8**** %atomname140.i, align 8, !dbg !660, !tbaa !355
  %arrayidx95.i = getelementptr inbounds i8*** %129, i64 %idxprom94.i, !dbg !660
  %130 = load i8*** %arrayidx95.i, align 8, !dbg !660, !tbaa !355
  %131 = load i8** %130, align 8, !dbg !660, !tbaa !355
  call void @llvm.dbg.value(metadata !{i8* %131}, i64 0, metadata !662) #5, !dbg !660
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !637) #5, !dbg !663
  %cmp97254.i = icmp sgt i32 %natp.0260.i, 0, !dbg !663
  br i1 %cmp97254.i, label %for.body99.i, label %for.end109.i, !dbg !663

for.cond96.i:                                     ; preds = %for.body99.i
  %132 = trunc i64 %indvars.iv.next287.i to i32, !dbg !663
  %cmp97.i = icmp slt i32 %132, %natp.0260.i, !dbg !663
  br i1 %cmp97.i, label %for.body99.i, label %for.end109.i, !dbg !663

for.body99.i:                                     ; preds = %for.body91.i, %for.cond96.i
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i, %for.cond96.i ], [ 0, %for.body91.i ]
  %l.1255.i = phi i32 [ %inc108.i, %for.cond96.i ], [ 0, %for.body91.i ]
  %arrayidx101.i = getelementptr inbounds i8** %attp.1258.i, i64 %indvars.iv286.i, !dbg !665
  %133 = load i8** %arrayidx101.i, align 8, !dbg !665, !tbaa !355
  %call102.i = call i32 @strcmp(i8* %131, i8* %133) #8, !dbg !665
  %cmp103.i = icmp eq i32 %call102.i, 0, !dbg !665
  %indvars.iv.next287.i = add i64 %indvars.iv286.i, 1, !dbg !663
  %inc108.i = add nsw i32 %l.1255.i, 1, !dbg !663
  call void @llvm.dbg.value(metadata !{i32 %inc108.i}, i64 0, metadata !637) #5, !dbg !663
  br i1 %cmp103.i, label %for.end109.i, label %for.cond96.i, !dbg !665

for.end109.i:                                     ; preds = %for.body99.i, %for.cond96.i, %for.body91.i
  %l.1.lcssa.i = phi i32 [ 0, %for.body91.i ], [ %l.1255.i, %for.body99.i ], [ %inc108.i, %for.cond96.i ]
  %cmp110.i = icmp eq i32 %l.1.lcssa.i, %natp.0260.i, !dbg !666
  br i1 %cmp110.i, label %if.then112.i, label %for.inc122.i, !dbg !666

if.then112.i:                                     ; preds = %for.end109.i
  %134 = bitcast i8** %attp.1258.i to i8*, !dbg !667
  %inc113.i = add nsw i32 %natp.0260.i, 1, !dbg !667
  call void @llvm.dbg.value(metadata !{i32 %inc113.i}, i64 0, metadata !669) #5, !dbg !667
  %mul115.i = shl i32 %inc113.i, 3, !dbg !667
  %call117.i = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 214, i8* %134, i32 %mul115.i) #7, !dbg !667
  %135 = bitcast i8* %call117.i to i8**, !dbg !667
  call void @llvm.dbg.value(metadata !{i8** %135}, i64 0, metadata !599) #5, !dbg !667
  %idxprom119.i = sext i32 %natp.0260.i to i64, !dbg !670
  %arrayidx120.i = getelementptr inbounds i8** %135, i64 %idxprom119.i, !dbg !670
  store i8* %131, i8** %arrayidx120.i, align 8, !dbg !670, !tbaa !355
  br label %for.inc122.i, !dbg !671

for.inc122.i:                                     ; preds = %if.then112.i, %for.end109.i
  %attp.2.i = phi i8** [ %135, %if.then112.i ], [ %attp.1258.i, %for.end109.i ]
  %natp.1.i = phi i32 [ %inc113.i, %if.then112.i ], [ %natp.0260.i, %for.end109.i ]
  %indvars.iv.next289.i = add i64 %indvars.iv288.i, 1, !dbg !658
  %lftr.wideiv = trunc i64 %indvars.iv.next289.i to i32, !dbg !658
  %exitcond = icmp eq i32 %lftr.wideiv, %naid.0.lcssa.i, !dbg !658
  br i1 %exitcond, label %for.end124.i, label %for.body91.i, !dbg !658

for.end124.i:                                     ; preds = %for.inc122.i
  %cmp125.i = icmp sgt i32 %natp.1.i, 1, !dbg !672
  br i1 %cmp125.i, label %for.body136.lr.ph.i, label %if.end162.i, !dbg !672

for.body136.lr.ph.i:                              ; preds = %for.end156.i, %for.end124.i
  %indvars.iv294.i = phi i64 [ %indvars.iv.next295.i, %for.end156.i ], [ 0, %for.end124.i ]
  %call132.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 220, i32 %naid.0.lcssa.i, i32 4) #7, !dbg !673
  %136 = bitcast i8* %call132.i to i32*, !dbg !673
  call void @llvm.dbg.value(metadata !{i32* %136}, i64 0, metadata !674) #5, !dbg !673
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !675) #5, !dbg !676
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !612) #5, !dbg !677
  %arrayidx143.i = getelementptr inbounds i8** %attp.2.i, i64 %indvars.iv294.i, !dbg !678
  %.pre.i153 = load i8**** %atomname140.i, align 8, !dbg !622, !tbaa !355
  %.pre312.i = load i8** %arrayidx143.i, align 8, !dbg !678, !tbaa !355
  br label %for.body136.i, !dbg !677

for.body136.i:                                    ; preds = %for.inc154.i, %for.body136.lr.ph.i
  %indvars.iv290.i = phi i64 [ 0, %for.body136.lr.ph.i ], [ %indvars.iv.next291.i, %for.inc154.i ]
  %naaid.0265.i = phi i32 [ 0, %for.body136.lr.ph.i ], [ %naaid.1.i, %for.inc154.i ]
  %arrayidx138.i = getelementptr inbounds i32* %116, i64 %indvars.iv290.i, !dbg !622
  %137 = load i32* %arrayidx138.i, align 4, !dbg !622, !tbaa !363
  %idxprom139.i = sext i32 %137 to i64, !dbg !622
  %arrayidx141.i = getelementptr inbounds i8*** %.pre.i153, i64 %idxprom139.i, !dbg !622
  %138 = load i8*** %arrayidx141.i, align 8, !dbg !622, !tbaa !355
  %139 = load i8** %138, align 8, !dbg !622, !tbaa !355
  call void @llvm.dbg.value(metadata !{i8* %139}, i64 0, metadata !662) #5, !dbg !622
  %call144.i = call i32 @strcmp(i8* %139, i8* %.pre312.i) #8, !dbg !678
  %cmp145.i = icmp eq i32 %call144.i, 0, !dbg !678
  br i1 %cmp145.i, label %if.then147.i, label %for.inc154.i, !dbg !678

if.then147.i:                                     ; preds = %for.body136.i
  %inc150.i = add nsw i32 %naaid.0265.i, 1, !dbg !679
  call void @llvm.dbg.value(metadata !{i32 %inc150.i}, i64 0, metadata !675) #5, !dbg !679
  %idxprom151.i = sext i32 %naaid.0265.i to i64, !dbg !679
  %arrayidx152.i154 = getelementptr inbounds i32* %136, i64 %idxprom151.i, !dbg !679
  store i32 %137, i32* %arrayidx152.i154, align 4, !dbg !679, !tbaa !363
  br label %for.inc154.i, !dbg !679

for.inc154.i:                                     ; preds = %if.then147.i, %for.body136.i
  %naaid.1.i = phi i32 [ %inc150.i, %if.then147.i ], [ %naaid.0265.i, %for.body136.i ]
  %indvars.iv.next291.i = add i64 %indvars.iv290.i, 1, !dbg !677
  %lftr.wideiv173 = trunc i64 %indvars.iv.next291.i to i32, !dbg !677
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %naid.0.lcssa.i, !dbg !677
  br i1 %exitcond174, label %for.end156.i, label %for.body136.i, !dbg !677

for.end156.i:                                     ; preds = %for.inc154.i
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %naaid.1.i, i32* %136, i8* %.pre312.i) #7, !dbg !680
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 228, i8* %call132.i) #7, !dbg !681
  %indvars.iv.next295.i = add i64 %indvars.iv294.i, 1, !dbg !682
  %lftr.wideiv175 = trunc i64 %indvars.iv.next295.i to i32, !dbg !682
  %exitcond176 = icmp eq i32 %lftr.wideiv175, %natp.1.i, !dbg !682
  br i1 %exitcond176, label %if.end162.i, label %for.body136.lr.ph.i, !dbg !682

if.end162.i:                                      ; preds = %for.end156.i, %for.end124.i, %for.cond88.preheader.i
  %attp.1.lcssa323.i = phi i8** [ %attp.2.i, %for.end124.i ], [ null, %for.cond88.preheader.i ], [ %attp.2.i, %for.end156.i ]
  %140 = bitcast i8** %attp.1.lcssa323.i to i8*, !dbg !683
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 231, i8* %140) #7, !dbg !683
  call void @llvm.dbg.value(metadata !596, i64 0, metadata !599) #5, !dbg !684
  br label %if.end163.i, !dbg !685

if.end163.i:                                      ; preds = %if.end162.i, %if.then80.i
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 234, i8* %call51.i) #7, !dbg !686
  br label %for.inc165.i, !dbg !687

for.inc165.i:                                     ; preds = %if.end163.i, %for.end76.i
  %indvars.iv.next299.i = add i64 %indvars.iv298.i, 1, !dbg !618
  %lftr.wideiv300.i = trunc i64 %indvars.iv.next299.i to i32, !dbg !618
  %exitcond301.i = icmp eq i32 %lftr.wideiv300.i, %nrestp.1.i, !dbg !618
  br i1 %exitcond301.i, label %for.end167.i, label %for.inc165.for.body49_crit_edge.i, !dbg !618

for.inc165.for.body49_crit_edge.i:                ; preds = %for.inc165.i
  %.pre318.i = load i32* %nr.i143, align 4, !dbg !643, !tbaa !363
  br label %for.body49.i, !dbg !618

for.end167.i:                                     ; preds = %for.inc165.i, %for.cond46.preheader.i, %if.end6.i
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 237, i8* %call7.i) #7, !dbg !688
  br label %analyse_other.exit, !dbg !689

analyse_other.exit:                               ; preds = %for.end.i, %for.end167.i
  %call53 = call i32* @mk_aid(%struct.t_atoms* %atoms, i32* %1, i32 0, i32* %nra, i32 1) #9, !dbg !690
  call void @llvm.dbg.value(metadata !{i32* %call53}, i64 0, metadata !218), !dbg !690
  call void @llvm.dbg.value(metadata !{i32* %nra}, i64 0, metadata !219), !dbg !691
  %141 = load i32* %nra, align 4, !dbg !691, !tbaa !363
  %cmp54 = icmp sgt i32 %141, 0, !dbg !691
  br i1 %cmp54, label %land.lhs.true56, label %if.end61, !dbg !691

land.lhs.true56:                                  ; preds = %analyse_other.exit
  %nr57 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !691
  %142 = load i32* %nr57, align 4, !dbg !691, !tbaa !363
  %cmp58 = icmp slt i32 %141, %142, !dbg !691
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !691

if.then60:                                        ; preds = %land.lhs.true56
  call void @add_grp(%struct.t_block* %gb, i8*** %gn, i32 %141, i32* %call53, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0)) #9, !dbg !692
  br label %if.end61, !dbg !692

if.end61:                                         ; preds = %if.then60, %land.lhs.true56, %analyse_other.exit
  %143 = bitcast i32* %call53 to i8*, !dbg !693
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 473, i8* %143) #7, !dbg !693
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 474, i8* %call1) #7, !dbg !694
  ret void, !dbg !695
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yn(i32 %bASK) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %bASK}, i64 0, metadata !252), !dbg !696
  %tobool = icmp eq i32 %bASK, 0, !dbg !697
  br i1 %tobool, label %return, label %do.body, !dbg !697

do.body:                                          ; preds = %entry, %do.body
  %0 = load %struct._IO_FILE** @stdin, align 8, !dbg !698, !tbaa !355
  %call = tail call i32 @fgetc(%struct._IO_FILE* %0) #7, !dbg !698
  %call1 = tail call i32 @toupper(i32 %call) #7, !dbg !698
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !254), !dbg !698
  %sext = shl i32 %call1, 24, !dbg !700
  %conv2 = ashr exact i32 %sext, 24, !dbg !700
  switch i32 %conv2, label %do.body [
    i32 89, label %do.end
    i32 78, label %do.end
  ], !dbg !700

do.end:                                           ; preds = %do.body, %do.body
  %cmp8 = icmp eq i32 %conv2, 89, !dbg !701
  %conv9 = zext i1 %cmp8 to i32, !dbg !701
  br label %return, !dbg !701

return:                                           ; preds = %entry, %do.end
  %retval.0 = phi i32 [ %conv9, %do.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !702
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #3

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind optsize readonly
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !24, metadata !25, metadata !317, metadata !24, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !9}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 48, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 48, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !5, metadata !6, metadata !7, metadata !8}
!5 = metadata !{i32 786472, metadata !"etOther", i64 0} ; [ DW_TAG_enumerator ] [etOther :: 0]
!6 = metadata !{i32 786472, metadata !"etProt", i64 1} ; [ DW_TAG_enumerator ] [etProt :: 1]
!7 = metadata !{i32 786472, metadata !"etDNA", i64 2} ; [ DW_TAG_enumerator ] [etDNA :: 2]
!8 = metadata !{i32 786472, metadata !"erestNR", i64 3} ; [ DW_TAG_enumerator ] [erestNR :: 3]
!9 = metadata !{i32 786436, metadata !10, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!10 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23}
!12 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!13 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!14 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!15 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!16 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!17 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!18 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!19 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!20 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!21 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!22 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!23 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!24 = metadata !{i32 0}
!25 = metadata !{metadata !26, metadata !48, metadata !117, metadata !128, metadata !201, metadata !207, metadata !222, metadata !248, metadata !258, metadata !266, metadata !295, metadata !304}
!26 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"new_block", metadata !"new_block", metadata !"", i32 69, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_block* ()* @new_block, null, null, metadata !46, i32 70} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 70] [new_block]
!27 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!33 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !40, metadata !41, metadata !44, metadata !45}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!36 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !37, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!37 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !37} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !42} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!43 = metadata !{i32 786454, metadata !33, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !37} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !42} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786688, metadata !26, metadata !"block", metadata !27, i32 71, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block] [line 71]
!48 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"write_index", metadata !"write_index", metadata !"", i32 79, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_block*, i8**)* @write_index, null, null, metadata !54, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [write_index]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !51, metadata !30, metadata !53}
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!52 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !114, metadata !115, metadata !116}
!55 = metadata !{i32 786689, metadata !48, metadata !"outf", metadata !27, i32 16777295, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outf] [line 79]
!56 = metadata !{i32 786689, metadata !48, metadata !"b", metadata !27, i32 33554511, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 79]
!57 = metadata !{i32 786689, metadata !48, metadata !"gnames", metadata !27, i32 50331727, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnames] [line 79]
!58 = metadata !{i32 786688, metadata !48, metadata !"out", metadata !27, i32 81, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 81]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!60 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!62 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !84, metadata !85, metadata !86, metadata !87, metadata !90, metadata !92, metadata !94, metadata !98, metadata !100, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !109, metadata !110}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!66 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!68 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!69 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!70 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!71 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!72 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!73 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!74 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!75 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !51} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!76 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !77} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!78 = metadata !{i32 786451, metadata !62, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !83}
!80 = metadata !{i32 786445, metadata !62, metadata !78, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !62, metadata !78, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !82} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!83 = metadata !{i32 786445, metadata !62, metadata !78, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!84 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !82} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!85 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!86 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!87 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !88} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!88 = metadata !{i32 786454, metadata !62, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!89 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!90 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !91} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!91 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !93} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!93 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!94 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !95} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !52, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!98 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !99} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!100 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !101} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!101 = metadata !{i32 786454, metadata !62, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!102 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!103 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!104 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!105 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!106 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !107} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!107 = metadata !{i32 786454, metadata !62, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!108 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!109 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!110 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !111} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!111 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !52, metadata !112, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!112 = metadata !{metadata !113}
!113 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!114 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !27, i32 82, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 82]
!115 = metadata !{i32 786688, metadata !48, metadata !"j", metadata !27, i32 82, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 82]
!116 = metadata !{i32 786688, metadata !48, metadata !"k", metadata !27, i32 82, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 82]
!117 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"add_grp", metadata !"add_grp", metadata !"", i32 98, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_block*, i8***, i32, i32*, i8*)* @add_grp, null, null, metadata !121, i32 99} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 99] [add_grp]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !30, metadata !120, metadata !37, metadata !42, metadata !51}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127}
!122 = metadata !{i32 786689, metadata !117, metadata !"b", metadata !27, i32 16777314, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 98]
!123 = metadata !{i32 786689, metadata !117, metadata !"gnames", metadata !27, i32 33554530, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnames] [line 98]
!124 = metadata !{i32 786689, metadata !117, metadata !"nra", metadata !27, i32 50331746, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nra] [line 98]
!125 = metadata !{i32 786689, metadata !117, metadata !"a", metadata !27, i32 67108962, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 98]
!126 = metadata !{i32 786689, metadata !117, metadata !"name", metadata !27, i32 83886178, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 98]
!127 = metadata !{i32 786688, metadata !117, metadata !"i", metadata !27, i32 100, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!128 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"mk_aid", metadata !"mk_aid", metadata !"", i32 146, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct.t_atoms*, i32*, i32, i32*, i32)* @mk_aid, null, null, metadata !193, i32 151} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 151] [mk_aid]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{metadata !42, metadata !131, metadata !191, metadata !192, metadata !173, metadata !37}
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!132 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!133 = metadata !{i32 786451, metadata !134, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !135, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!134 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!135 = metadata !{metadata !136, metadata !137, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !174}
!136 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!137 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !138} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!139 = metadata !{i32 786454, metadata !134, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786451, metadata !134, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!141 = metadata !{metadata !142, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !157}
!142 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!143 = metadata !{i32 786454, metadata !134, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!144 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!145 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !143} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!146 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !143} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!147 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !143} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!148 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!149 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !91} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!150 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !37} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!151 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!152 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !153} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!153 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !154, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!154 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!157 = metadata !{i32 786445, metadata !134, metadata !140, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !154} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!158 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !120} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!159 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !120} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!160 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !120} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!161 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!162 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !120} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!163 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !37} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!164 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !120} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!165 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!166 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !167} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!167 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !168, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!168 = metadata !{i32 786454, metadata !134, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !169} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!169 = metadata !{i32 786451, metadata !134, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!170 = metadata !{metadata !171, metadata !172}
!171 = metadata !{i32 786445, metadata !134, metadata !169, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!172 = metadata !{i32 786445, metadata !134, metadata !169, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !173} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!173 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!174 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !175} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!176 = metadata !{i32 786454, metadata !134, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!177 = metadata !{i32 786451, metadata !134, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !178, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180, metadata !181, metadata !182, metadata !186, metadata !187, metadata !188, metadata !189}
!179 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!180 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!181 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!182 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !183} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !52, metadata !184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!184 = metadata !{metadata !185}
!185 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!186 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !143} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!187 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !143} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!188 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!189 = metadata !{i32 786445, metadata !134, metadata !177, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !190} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!190 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !37, metadata !184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !192} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from eRestp]
!192 = metadata !{i32 786454, metadata !1, null, metadata !"eRestp", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [eRestp] [line 48, size 0, align 0, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200}
!194 = metadata !{i32 786689, metadata !128, metadata !"atoms", metadata !27, i32 16777362, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 146]
!195 = metadata !{i32 786689, metadata !128, metadata !"restp", metadata !27, i32 33554578, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [restp] [line 146]
!196 = metadata !{i32 786689, metadata !128, metadata !"res", metadata !27, i32 50331794, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 146]
!197 = metadata !{i32 786689, metadata !128, metadata !"nra", metadata !27, i32 67109010, metadata !173, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nra] [line 146]
!198 = metadata !{i32 786689, metadata !128, metadata !"bTrue", metadata !27, i32 83886227, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bTrue] [line 147]
!199 = metadata !{i32 786688, metadata !128, metadata !"a", metadata !27, i32 152, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 152]
!200 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !27, i32 153, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!201 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"is_protein", metadata !"is_protein", metadata !"", i32 401, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @is_protein, null, null, metadata !204, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [is_protein]
!202 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{metadata !37, metadata !51}
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786689, metadata !201, metadata !"resnm", metadata !27, i32 16777617, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resnm] [line 401]
!206 = metadata !{i32 786688, metadata !201, metadata !"i", metadata !27, i32 406, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 406]
!207 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"analyse", metadata !"analyse", metadata !"", i32 420, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*, %struct.t_block*, i8***, i32, i32)* @analyse, null, null, metadata !210, i32 421} ; [ DW_TAG_subprogram ] [line 420] [def] [scope 421] [analyse]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{null, metadata !131, metadata !30, metadata !120, metadata !37, metadata !37}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!211 = metadata !{i32 786689, metadata !207, metadata !"atoms", metadata !27, i32 16777636, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 420]
!212 = metadata !{i32 786689, metadata !207, metadata !"gb", metadata !27, i32 33554852, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gb] [line 420]
!213 = metadata !{i32 786689, metadata !207, metadata !"gn", metadata !27, i32 50332068, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 420]
!214 = metadata !{i32 786689, metadata !207, metadata !"bASK", metadata !27, i32 67109284, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bASK] [line 420]
!215 = metadata !{i32 786689, metadata !207, metadata !"bVerb", metadata !27, i32 83886500, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerb] [line 420]
!216 = metadata !{i32 786688, metadata !207, metadata !"restp", metadata !27, i32 422, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [restp] [line 422]
!217 = metadata !{i32 786688, metadata !207, metadata !"resnm", metadata !27, i32 423, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnm] [line 423]
!218 = metadata !{i32 786688, metadata !207, metadata !"aid", metadata !27, i32 424, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aid] [line 424]
!219 = metadata !{i32 786688, metadata !207, metadata !"nra", metadata !27, i32 425, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 425]
!220 = metadata !{i32 786688, metadata !207, metadata !"i", metadata !27, i32 426, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 426]
!221 = metadata !{i32 786688, metadata !207, metadata !"j", metadata !27, i32 426, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 426]
!222 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"analyse_other", metadata !"analyse_other", metadata !"", i32 164, metadata !223, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !225, i32 166} ; [ DW_TAG_subprogram ] [line 164] [local] [def] [scope 166] [analyse_other]
!223 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{null, metadata !191, metadata !131, metadata !30, metadata !120, metadata !37, metadata !37}
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!226 = metadata !{i32 786689, metadata !222, metadata !"Restp", metadata !27, i32 16777380, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Restp] [line 164]
!227 = metadata !{i32 786689, metadata !222, metadata !"atoms", metadata !27, i32 33554596, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 164]
!228 = metadata !{i32 786689, metadata !222, metadata !"gb", metadata !27, i32 50331813, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gb] [line 165]
!229 = metadata !{i32 786689, metadata !222, metadata !"gn", metadata !27, i32 67109029, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 165]
!230 = metadata !{i32 786689, metadata !222, metadata !"bASK", metadata !27, i32 83886245, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bASK] [line 165]
!231 = metadata !{i32 786689, metadata !222, metadata !"bVerb", metadata !27, i32 100663461, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerb] [line 165]
!232 = metadata !{i32 786688, metadata !222, metadata !"restp", metadata !27, i32 167, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [restp] [line 167]
!233 = metadata !{i32 786688, metadata !222, metadata !"attp", metadata !27, i32 168, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [attp] [line 168]
!234 = metadata !{i32 786688, metadata !222, metadata !"rname", metadata !27, i32 169, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rname] [line 169]
!235 = metadata !{i32 786688, metadata !222, metadata !"aname", metadata !27, i32 169, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aname] [line 169]
!236 = metadata !{i32 786688, metadata !222, metadata !"other_ndx", metadata !27, i32 170, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [other_ndx] [line 170]
!237 = metadata !{i32 786688, metadata !222, metadata !"aid", metadata !27, i32 170, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aid] [line 170]
!238 = metadata !{i32 786688, metadata !222, metadata !"aaid", metadata !27, i32 170, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aaid] [line 170]
!239 = metadata !{i32 786688, metadata !222, metadata !"i", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 171]
!240 = metadata !{i32 786688, metadata !222, metadata !"j", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 171]
!241 = metadata !{i32 786688, metadata !222, metadata !"k", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 171]
!242 = metadata !{i32 786688, metadata !222, metadata !"l", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 171]
!243 = metadata !{i32 786688, metadata !222, metadata !"resnr", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 171]
!244 = metadata !{i32 786688, metadata !222, metadata !"naid", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [naid] [line 171]
!245 = metadata !{i32 786688, metadata !222, metadata !"naaid", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [naaid] [line 171]
!246 = metadata !{i32 786688, metadata !222, metadata !"natp", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [natp] [line 171]
!247 = metadata !{i32 786688, metadata !222, metadata !"nrestp", metadata !27, i32 171, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrestp] [line 171]
!248 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"yn", metadata !"yn", metadata !"", i32 54, metadata !249, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @yn, null, null, metadata !251, i32 55} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [scope 55] [yn]
!249 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{metadata !37, metadata !37}
!251 = metadata !{metadata !252, metadata !253, metadata !254}
!252 = metadata !{i32 786689, metadata !248, metadata !"bASK", metadata !27, i32 16777270, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bASK] [line 54]
!253 = metadata !{i32 786688, metadata !248, metadata !"c", metadata !27, i32 56, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 56]
!254 = metadata !{i32 786688, metadata !255, metadata !"__res", metadata !27, i32 60, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 60]
!255 = metadata !{i32 786443, metadata !1, metadata !256, i32 60, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!256 = metadata !{i32 786443, metadata !1, metadata !257, i32 59, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!257 = metadata !{i32 786443, metadata !1, metadata !248, i32 58, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!258 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"analyse_dna", metadata !"analyse_dna", metadata !"", i32 390, metadata !223, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !259, i32 392} ; [ DW_TAG_subprogram ] [line 390] [local] [def] [scope 392] [analyse_dna]
!259 = metadata !{metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265}
!260 = metadata !{i32 786689, metadata !258, metadata !"restp", metadata !27, i32 16777606, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [restp] [line 390]
!261 = metadata !{i32 786689, metadata !258, metadata !"atoms", metadata !27, i32 33554822, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 390]
!262 = metadata !{i32 786689, metadata !258, metadata !"gb", metadata !27, i32 50332039, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gb] [line 391]
!263 = metadata !{i32 786689, metadata !258, metadata !"gn", metadata !27, i32 67109255, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 391]
!264 = metadata !{i32 786689, metadata !258, metadata !"bASK", metadata !27, i32 83886471, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bASK] [line 391]
!265 = metadata !{i32 786689, metadata !258, metadata !"bVerb", metadata !27, i32 100663687, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerb] [line 391]
!266 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"analyse_prot", metadata !"analyse_prot", metadata !"", i32 241, metadata !223, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !267, i32 243} ; [ DW_TAG_subprogram ] [line 241] [local] [def] [scope 243] [analyse_prot]
!267 = metadata !{metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !286, metadata !287, metadata !292, metadata !294}
!268 = metadata !{i32 786689, metadata !266, metadata !"restp", metadata !27, i32 16777457, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [restp] [line 241]
!269 = metadata !{i32 786689, metadata !266, metadata !"atoms", metadata !27, i32 33554673, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 241]
!270 = metadata !{i32 786689, metadata !266, metadata !"gb", metadata !27, i32 50331890, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gb] [line 242]
!271 = metadata !{i32 786689, metadata !266, metadata !"gn", metadata !27, i32 67109106, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gn] [line 242]
!272 = metadata !{i32 786689, metadata !266, metadata !"bASK", metadata !27, i32 83886322, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bASK] [line 242]
!273 = metadata !{i32 786689, metadata !266, metadata !"bVerb", metadata !27, i32 100663538, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerb] [line 242]
!274 = metadata !{i32 786688, metadata !266, metadata !"i", metadata !27, i32 284, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 284]
!275 = metadata !{i32 786688, metadata !266, metadata !"n", metadata !27, i32 284, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 284]
!276 = metadata !{i32 786688, metadata !266, metadata !"j", metadata !27, i32 284, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 284]
!277 = metadata !{i32 786688, metadata !266, metadata !"aid", metadata !27, i32 285, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aid] [line 285]
!278 = metadata !{i32 786688, metadata !266, metadata !"nra", metadata !27, i32 286, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nra] [line 286]
!279 = metadata !{i32 786688, metadata !266, metadata !"nnpres", metadata !27, i32 286, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnpres] [line 286]
!280 = metadata !{i32 786688, metadata !266, metadata !"npres", metadata !27, i32 286, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npres] [line 286]
!281 = metadata !{i32 786688, metadata !266, metadata !"match", metadata !27, i32 287, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [match] [line 287]
!282 = metadata !{i32 786688, metadata !266, metadata !"ndx_name", metadata !27, i32 288, metadata !283, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndx_name] [line 288]
!283 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !52, metadata !284, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!284 = metadata !{metadata !285}
!285 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!286 = metadata !{i32 786688, metadata !266, metadata !"atnm", metadata !27, i32 288, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atnm] [line 288]
!287 = metadata !{i32 786688, metadata !288, metadata !"resnr", metadata !27, i32 333, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 333]
!288 = metadata !{i32 786443, metadata !1, metadata !289, i32 332, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 330, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 330, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!291 = metadata !{i32 786443, metadata !1, metadata !266, i32 329, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!292 = metadata !{i32 786688, metadata !293, metadata !"resnr", metadata !27, i32 358, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [resnr] [line 358]
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 356, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!294 = metadata !{i32 786688, metadata !293, metadata !"hold", metadata !27, i32 358, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hold] [line 358]
!295 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"grp_cmp", metadata !"grp_cmp", metadata !"", i32 115, metadata !296, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !298, i32 116} ; [ DW_TAG_subprogram ] [line 115] [local] [def] [scope 116] [grp_cmp]
!296 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !37, metadata !30, metadata !37, metadata !42, metadata !37}
!298 = metadata !{metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!299 = metadata !{i32 786689, metadata !295, metadata !"b", metadata !27, i32 16777331, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 115]
!300 = metadata !{i32 786689, metadata !295, metadata !"nra", metadata !27, i32 33554547, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nra] [line 115]
!301 = metadata !{i32 786689, metadata !295, metadata !"a", metadata !27, i32 50331763, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 115]
!302 = metadata !{i32 786689, metadata !295, metadata !"index", metadata !27, i32 67108979, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 115]
!303 = metadata !{i32 786688, metadata !295, metadata !"i", metadata !27, i32 117, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 117]
!304 = metadata !{i32 786478, metadata !1, metadata !27, metadata !"p_status", metadata !"p_status", metadata !"", i32 132, metadata !305, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !307, i32 133} ; [ DW_TAG_subprogram ] [line 132] [local] [def] [scope 133] [p_status]
!305 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{null, metadata !37, metadata !191, metadata !37}
!307 = metadata !{metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313}
!308 = metadata !{i32 786689, metadata !304, metadata !"nres", metadata !27, i32 16777348, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nres] [line 132]
!309 = metadata !{i32 786689, metadata !304, metadata !"restp", metadata !27, i32 33554564, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [restp] [line 132]
!310 = metadata !{i32 786689, metadata !304, metadata !"bVerb", metadata !27, i32 50331780, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bVerb] [line 132]
!311 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !27, i32 134, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 134]
!312 = metadata !{i32 786688, metadata !304, metadata !"j", metadata !27, i32 134, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 134]
!313 = metadata !{i32 786688, metadata !304, metadata !"ntp", metadata !27, i32 134, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntp] [line 134]
!314 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !37, metadata !315, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!315 = metadata !{metadata !316}
!316 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !323, metadata !327, metadata !328, metadata !330, metadata !334, metadata !336, metadata !337, metadata !341, metadata !343, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349}
!318 = metadata !{i32 786484, i32 0, metadata !201, metadata !"bRead", metadata !"bRead", metadata !"", metadata !27, i32 403, metadata !37, i32 1, i32 1, null, null}
!319 = metadata !{i32 786484, i32 0, metadata !201, metadata !"naa", metadata !"naa", metadata !"", metadata !27, i32 404, metadata !37, i32 1, i32 1, i32* @is_protein.naa, null} ; [ DW_TAG_variable ] [naa] [line 404] [local] [def]
!320 = metadata !{i32 786484, i32 0, metadata !201, metadata !"aas", metadata !"aas", metadata !"", metadata !27, i32 405, metadata !53, i32 1, i32 1, i8*** @is_protein.aas, null} ; [ DW_TAG_variable ] [aas] [line 405] [local] [def]
!321 = metadata !{i32 786484, i32 0, metadata !266, metadata !"pnoh", metadata !"pnoh", metadata !"", metadata !27, i32 245, metadata !322, i32 1, i32 1, [1 x i8*]* @analyse_prot.pnoh, null} ; [ DW_TAG_variable ] [pnoh] [line 245] [local] [def]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 64, i32 0, i32 0, metadata !51, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 64, offset 0] [from ]
!323 = metadata !{i32 786484, i32 0, metadata !266, metadata !"pnodum", metadata !"pnodum", metadata !"", metadata !27, i32 246, metadata !324, i32 1, i32 1, [12 x i8*]* @analyse_prot.pnodum, null} ; [ DW_TAG_variable ] [pnodum] [line 246] [local] [def]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 64, i32 0, i32 0, metadata !51, metadata !325, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 768, align 64, offset 0] [from ]
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!327 = metadata !{i32 786484, i32 0, metadata !266, metadata !"calpha", metadata !"calpha", metadata !"", metadata !27, i32 248, metadata !322, i32 1, i32 1, [1 x i8*]* @analyse_prot.calpha, null} ; [ DW_TAG_variable ] [calpha] [line 248] [local] [def]
!328 = metadata !{i32 786484, i32 0, metadata !266, metadata !"bb", metadata !"bb", metadata !"", metadata !27, i32 249, metadata !329, i32 1, i32 1, [3 x i8*]* @analyse_prot.bb, null} ; [ DW_TAG_variable ] [bb] [line 249] [local] [def]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !51, metadata !315, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from ]
!330 = metadata !{i32 786484, i32 0, metadata !266, metadata !"mc", metadata !"mc", metadata !"", metadata !27, i32 250, metadata !331, i32 1, i32 1, [7 x i8*]* @analyse_prot.mc, null} ; [ DW_TAG_variable ] [mc] [line 250] [local] [def]
!331 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !51, metadata !332, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!332 = metadata !{metadata !333}
!333 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!334 = metadata !{i32 786484, i32 0, metadata !266, metadata !"mcb", metadata !"mcb", metadata !"", metadata !27, i32 251, metadata !335, i32 1, i32 1, [9 x i8*]* @analyse_prot.mcb, null} ; [ DW_TAG_variable ] [mcb] [line 251] [local] [def]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !51, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from ]
!336 = metadata !{i32 786484, i32 0, metadata !266, metadata !"mch", metadata !"mch", metadata !"", metadata !27, i32 252, metadata !324, i32 1, i32 1, [12 x i8*]* @analyse_prot.mch, null} ; [ DW_TAG_variable ] [mch] [line 252] [local] [def]
!337 = metadata !{i32 786484, i32 0, metadata !266, metadata !"chains", metadata !"chains", metadata !"", metadata !27, i32 255, metadata !338, i32 1, i32 1, [10 x i8**]* @analyse_prot.chains, null} ; [ DW_TAG_variable ] [chains] [line 255] [local] [def]
!338 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !53, metadata !339, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from ]
!339 = metadata !{metadata !340}
!340 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!341 = metadata !{i32 786484, i32 0, metadata !266, metadata !"sizes", metadata !"sizes", metadata !"", metadata !27, i32 258, metadata !342, i32 1, i32 1, [10 x i32]* @analyse_prot.sizes, null} ; [ DW_TAG_variable ] [sizes] [line 258] [local] [def]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !37, metadata !339, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!343 = metadata !{i32 786484, i32 0, metadata !266, metadata !"ch_name", metadata !"ch_name", metadata !"", metadata !27, i32 263, metadata !344, i32 1, i32 1, [10 x i8*]* @analyse_prot.ch_name, null} ; [ DW_TAG_variable ] [ch_name] [line 263] [local] [def]
!344 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !51, metadata !339, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from ]
!345 = metadata !{i32 786484, i32 0, metadata !266, metadata !"complement", metadata !"complement", metadata !"", metadata !27, i32 270, metadata !342, i32 1, i32 1, [10 x i32]* @analyse_prot.complement, null} ; [ DW_TAG_variable ] [complement] [line 270] [local] [def]
!346 = metadata !{i32 786484, i32 0, metadata !266, metadata !"wholename", metadata !"wholename", metadata !"", metadata !27, i32 273, metadata !342, i32 1, i32 1, [10 x i32]* @analyse_prot.wholename, null} ; [ DW_TAG_variable ] [wholename] [line 273] [local] [def]
!347 = metadata !{i32 786484, i32 0, metadata !266, metadata !"compareto", metadata !"compareto", metadata !"", metadata !27, i32 282, metadata !342, i32 1, i32 1, [10 x i32]* @analyse_prot.compareto, null} ; [ DW_TAG_variable ] [compareto] [line 282] [local] [def]
!348 = metadata !{i32 786484, i32 0, null, metadata !"ResTP", metadata !"ResTP", metadata !"", metadata !27, i32 49, metadata !329, i32 1, i32 1, [3 x i8*]* @ResTP, null} ; [ DW_TAG_variable ] [ResTP] [line 49] [local] [def]
!349 = metadata !{i32 786484, i32 0, null, metadata !"Sugars", metadata !"Sugars", metadata !"", metadata !27, i32 51, metadata !350, i32 1, i32 1, [5 x i8*]* @Sugars, null} ; [ DW_TAG_variable ] [Sugars] [line 51] [local] [def]
!350 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 64, i32 0, i32 0, metadata !51, metadata !351, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 64, offset 0] [from ]
!351 = metadata !{metadata !352}
!352 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!353 = metadata !{i32 73, i32 0, metadata !26, null}
!354 = metadata !{i32 74, i32 0, metadata !26, null}
!355 = metadata !{metadata !"any pointer", metadata !356}
!356 = metadata !{metadata !"omnipotent char", metadata !357}
!357 = metadata !{metadata !"Simple C/C++ TBAA"}
!358 = metadata !{i32 76, i32 0, metadata !26, null}
!359 = metadata !{i32 79, i32 0, metadata !48, null}
!360 = metadata !{i32 84, i32 0, metadata !48, null}
!361 = metadata !{i32 86, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !48, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!363 = metadata !{metadata !"int", metadata !356}
!364 = metadata !{i32 88, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !366, i32 88, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!366 = metadata !{i32 786443, metadata !1, metadata !362, i32 86, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!367 = metadata !{i32 89, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !365, i32 88, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!369 = metadata !{i32 87, i32 0, metadata !366, null}
!370 = metadata !{i32 90, i32 0, metadata !368, null}
!371 = metadata !{i32 91, i32 0, metadata !368, null}
!372 = metadata !{i32 93, i32 0, metadata !366, null}
!373 = metadata !{i32 95, i32 0, metadata !48, null}
!374 = metadata !{i32 96, i32 0, metadata !48, null}
!375 = metadata !{i32 98, i32 0, metadata !117, null}
!376 = metadata !{i32 102, i32 0, metadata !117, null}
!377 = metadata !{i32 103, i32 0, metadata !117, null}
!378 = metadata !{i32 104, i32 0, metadata !117, null}
!379 = metadata !{i32 106, i32 0, metadata !117, null}
!380 = metadata !{i32 107, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !117, i32 107, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!382 = metadata !{i32 108, i32 0, metadata !381, null}
!383 = metadata !{i32 109, i32 0, metadata !117, null}
!384 = metadata !{i32 110, i32 0, metadata !117, null}
!385 = metadata !{i32 111, i32 0, metadata !117, null}
!386 = metadata !{i32 146, i32 0, metadata !128, null}
!387 = metadata !{i32 147, i32 0, metadata !128, null}
!388 = metadata !{i32 155, i32 0, metadata !128, null}
!389 = metadata !{i32 156, i32 0, metadata !128, null}
!390 = metadata !{i32 157, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !128, i32 157, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!392 = metadata !{i32 158, i32 0, metadata !391, null}
!393 = metadata !{i32 159, i32 0, metadata !391, null}
!394 = metadata !{i32 161, i32 0, metadata !128, null}
!395 = metadata !{i32 401, i32 0, metadata !201, null}
!396 = metadata !{i32 408, i32 0, metadata !201, null}
!397 = metadata !{i32 413, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !201, i32 413, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!399 = metadata !{i32 409, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !201, i32 408, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!401 = metadata !{i32 411, i32 0, metadata !400, null}
!402 = metadata !{i32 414, i32 0, metadata !398, null}
!403 = metadata !{i32 417, i32 0, metadata !201, null}
!404 = metadata !{i32 420, i32 0, metadata !207, null}
!405 = metadata !{i32 425, i32 0, metadata !207, null}
!406 = metadata !{i32 428, i32 0, metadata !207, null}
!407 = metadata !{i32 429, i32 0, metadata !207, null}
!408 = metadata !{i32 430, i32 0, metadata !207, null}
!409 = metadata !{i32 431, i32 0, metadata !207, null}
!410 = metadata !{i32 432, i32 0, metadata !207, null}
!411 = metadata !{i32 433, i32 0, metadata !207, null}
!412 = metadata !{i32 435, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !207, i32 435, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!414 = metadata !{i32 786689, metadata !304, metadata !"nres", metadata !27, i32 16777348, metadata !37, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [nres] [line 132]
!415 = metadata !{i32 445, i32 0, metadata !207, null}
!416 = metadata !{i32 132, i32 0, metadata !304, metadata !415}
!417 = metadata !{i32 786689, metadata !304, metadata !"restp", metadata !27, i32 33554564, metadata !191, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [restp] [line 132]
!418 = metadata !{i32 786689, metadata !304, metadata !"bVerb", metadata !27, i32 50331780, metadata !37, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [bVerb] [line 132]
!419 = metadata !{i32 134, i32 0, metadata !304, metadata !415}
!420 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !27, i32 134, metadata !37, i32 0, metadata !415} ; [ DW_TAG_auto_variable ] [i] [line 134]
!421 = metadata !{i32 136, i32 0, metadata !422, metadata !415}
!422 = metadata !{i32 786443, metadata !1, metadata !304, i32 136, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!423 = metadata !{i32 137, i32 0, metadata !422, metadata !415}
!424 = metadata !{i32 138, i32 0, metadata !425, metadata !415}
!425 = metadata !{i32 786443, metadata !1, metadata !304, i32 138, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!426 = metadata !{i32 436, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !413, i32 435, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!428 = metadata !{i32 437, i32 0, metadata !427, null}
!429 = metadata !{i32 438, i32 0, metadata !427, null}
!430 = metadata !{i32 439, i32 0, metadata !427, null}
!431 = metadata !{i32 441, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !433, i32 440, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!433 = metadata !{i32 786443, metadata !1, metadata !427, i32 440, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!434 = metadata !{i32 442, i32 0, metadata !432, null}
!435 = metadata !{i32 440, i32 0, metadata !433, null}
!436 = metadata !{i32 139, i32 0, metadata !425, metadata !415}
!437 = metadata !{i32 141, i32 0, metadata !304, metadata !415}
!438 = metadata !{i32 143, i32 0, metadata !439, metadata !415}
!439 = metadata !{i32 786443, metadata !1, metadata !304, i32 142, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!440 = metadata !{i32 142, i32 0, metadata !439, metadata !415}
!441 = metadata !{i32 144, i32 0, metadata !304, metadata !415}
!442 = metadata !{i32 448, i32 0, metadata !207, null}
!443 = metadata !{i32 449, i32 0, metadata !207, null}
!444 = metadata !{i32 786689, metadata !266, metadata !"restp", metadata !27, i32 16777457, metadata !191, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [restp] [line 241]
!445 = metadata !{i32 450, i32 0, metadata !207, null}
!446 = metadata !{i32 241, i32 0, metadata !266, metadata !445}
!447 = metadata !{i32 786689, metadata !266, metadata !"atoms", metadata !27, i32 33554673, metadata !131, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [atoms] [line 241]
!448 = metadata !{i32 786689, metadata !266, metadata !"gb", metadata !27, i32 50331890, metadata !30, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [gb] [line 242]
!449 = metadata !{i32 242, i32 0, metadata !266, metadata !445}
!450 = metadata !{i32 786689, metadata !266, metadata !"gn", metadata !27, i32 67109106, metadata !120, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [gn] [line 242]
!451 = metadata !{i32 786689, metadata !266, metadata !"bASK", metadata !27, i32 83886322, metadata !37, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [bASK] [line 242]
!452 = metadata !{i32 786689, metadata !266, metadata !"bVerb", metadata !27, i32 100663538, metadata !37, i32 0, metadata !445} ; [ DW_TAG_arg_variable ] [bVerb] [line 242]
!453 = metadata !{i32 288, i32 0, metadata !266, metadata !445}
!454 = metadata !{i32 290, i32 0, metadata !266, metadata !445}
!455 = metadata !{i32 291, i32 0, metadata !266, metadata !445}
!456 = metadata !{i32 292, i32 0, metadata !266, metadata !445}
!457 = metadata !{i32 786688, metadata !266, metadata !"aid", metadata !27, i32 285, metadata !42, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [aid] [line 285]
!458 = metadata !{i32 786688, metadata !266, metadata !"npres", metadata !27, i32 286, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [npres] [line 286]
!459 = metadata !{i32 295, i32 0, metadata !266, metadata !445}
!460 = metadata !{i32 786688, metadata !266, metadata !"i", metadata !27, i32 284, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [i] [line 284]
!461 = metadata !{i32 296, i32 0, metadata !462, metadata !445}
!462 = metadata !{i32 786443, metadata !1, metadata !266, i32 296, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!463 = metadata !{i32 120, i32 0, metadata !295, metadata !464}
!464 = metadata !{i32 325, i32 0, metadata !465, metadata !445}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 301, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!466 = metadata !{i32 786443, metadata !1, metadata !266, i32 301, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!467 = metadata !{i32 124, i32 0, metadata !295, metadata !464}
!468 = metadata !{i32 127, i32 0, metadata !469, metadata !464}
!469 = metadata !{i32 786443, metadata !1, metadata !295, i32 126, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!470 = metadata !{i32 304, i32 0, metadata !471, metadata !445}
!471 = metadata !{i32 786443, metadata !1, metadata !472, i32 303, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!472 = metadata !{i32 786443, metadata !1, metadata !465, i32 303, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!473 = metadata !{i32 308, i32 0, metadata !474, metadata !445}
!474 = metadata !{i32 786443, metadata !1, metadata !475, i32 306, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!475 = metadata !{i32 786443, metadata !1, metadata !476, i32 306, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!476 = metadata !{i32 786443, metadata !1, metadata !471, i32 304, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!477 = metadata !{i32 301, i32 0, metadata !466, metadata !445}
!478 = metadata !{i32 297, i32 0, metadata !462, metadata !445}
!479 = metadata !{i32 303, i32 0, metadata !472, metadata !445}
!480 = metadata !{i32 306, i32 0, metadata !475, metadata !445}
!481 = metadata !{i32 319, i32 0, metadata !476, metadata !445}
!482 = metadata !{i32 312, i32 0, metadata !483, metadata !445}
!483 = metadata !{i32 786443, metadata !1, metadata !474, i32 311, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!484 = metadata !{i32 311, i32 0, metadata !474, metadata !445}
!485 = metadata !{i32 309, i32 0, metadata !474, metadata !445}
!486 = metadata !{i32 786688, metadata !266, metadata !"atnm", metadata !27, i32 288, metadata !51, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [atnm] [line 288]
!487 = metadata !{metadata !"short", metadata !356}
!488 = metadata !{i32 310, i32 0, metadata !474, metadata !445}
!489 = metadata !{i32 1}
!490 = metadata !{i32 786688, metadata !266, metadata !"match", metadata !27, i32 287, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [match] [line 287]
!491 = metadata !{i32 313, i32 0, metadata !483, metadata !445}
!492 = metadata !{i32 315, i32 0, metadata !493, metadata !445}
!493 = metadata !{i32 786443, metadata !1, metadata !474, i32 314, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!494 = metadata !{i32 316, i32 0, metadata !493, metadata !445}
!495 = metadata !{i32 320, i32 0, metadata !476, metadata !445}
!496 = metadata !{i32 786688, metadata !266, metadata !"nra", metadata !27, i32 286, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [nra] [line 286]
!497 = metadata !{i32 786689, metadata !295, metadata !"b", metadata !27, i32 16777331, metadata !30, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [b] [line 115]
!498 = metadata !{i32 115, i32 0, metadata !295, metadata !464}
!499 = metadata !{i32 786689, metadata !295, metadata !"nra", metadata !27, i32 33554547, metadata !37, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [nra] [line 115]
!500 = metadata !{i32 786689, metadata !295, metadata !"a", metadata !27, i32 50331763, metadata !42, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [a] [line 115]
!501 = metadata !{i32 786689, metadata !295, metadata !"index", metadata !27, i32 67108979, metadata !37, i32 0, metadata !464} ; [ DW_TAG_arg_variable ] [index] [line 115]
!502 = metadata !{i32 119, i32 0, metadata !295, metadata !464}
!503 = metadata !{i32 121, i32 0, metadata !295, metadata !464}
!504 = metadata !{i32 122, i32 0, metadata !295, metadata !464}
!505 = metadata !{i32 126, i32 0, metadata !469, metadata !464}
!506 = metadata !{i32 326, i32 0, metadata !465, metadata !445}
!507 = metadata !{i32 329, i32 0, metadata !266, metadata !445}
!508 = metadata !{i32 347, i32 0, metadata !509, metadata !445}
!509 = metadata !{i32 786443, metadata !1, metadata !510, i32 346, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!510 = metadata !{i32 786443, metadata !1, metadata !511, i32 335, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!511 = metadata !{i32 786443, metadata !1, metadata !288, i32 335, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!512 = metadata !{i32 330, i32 0, metadata !290, metadata !445}
!513 = metadata !{i32 331, i32 0, metadata !289, metadata !445}
!514 = metadata !{i32 332, i32 0, metadata !289, metadata !445}
!515 = metadata !{i32 335, i32 0, metadata !511, metadata !445}
!516 = metadata !{i32 339, i32 0, metadata !517, metadata !445}
!517 = metadata !{i32 786443, metadata !1, metadata !518, i32 339, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!518 = metadata !{i32 786443, metadata !1, metadata !519, i32 337, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!519 = metadata !{i32 786443, metadata !1, metadata !510, i32 337, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!520 = metadata !{i32 342, i32 0, metadata !518, metadata !445}
!521 = metadata !{i32 340, i32 0, metadata !517, metadata !445}
!522 = metadata !{i32 337, i32 0, metadata !519, metadata !445}
!523 = metadata !{i32 341, i32 0, metadata !517, metadata !445}
!524 = metadata !{i32 343, i32 0, metadata !518, metadata !445}
!525 = metadata !{i32 786688, metadata !266, metadata !"n", metadata !27, i32 284, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [n] [line 284]
!526 = metadata !{i32 346, i32 0, metadata !510, metadata !445}
!527 = metadata !{i32 349, i32 0, metadata !509, metadata !445}
!528 = metadata !{i32 350, i32 0, metadata !509, metadata !445}
!529 = metadata !{i32 351, i32 0, metadata !509, metadata !445}
!530 = metadata !{i32 355, i32 0, metadata !291, metadata !445}
!531 = metadata !{i32 356, i32 0, metadata !291, metadata !445}
!532 = metadata !{i32 360, i32 0, metadata !533, metadata !445}
!533 = metadata !{i32 786443, metadata !1, metadata !293, i32 360, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!534 = metadata !{i32 363, i32 0, metadata !535, metadata !445}
!535 = metadata !{i32 786443, metadata !1, metadata !536, i32 363, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!536 = metadata !{i32 786443, metadata !1, metadata !533, i32 360, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!537 = metadata !{i32 364, i32 0, metadata !535, metadata !445}
!538 = metadata !{i32 365, i32 0, metadata !539, metadata !445}
!539 = metadata !{i32 786443, metadata !1, metadata !535, i32 364, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!540 = metadata !{i32 786688, metadata !293, metadata !"hold", metadata !27, i32 358, metadata !37, i32 0, metadata !445} ; [ DW_TAG_auto_variable ] [hold] [line 358]
!541 = metadata !{i32 366, i32 0, metadata !539, metadata !445}
!542 = metadata !{i32 367, i32 0, metadata !539, metadata !445}
!543 = metadata !{i32 368, i32 0, metadata !539, metadata !445}
!544 = metadata !{i32 368, i32 0, metadata !535, metadata !445}
!545 = metadata !{i32 370, i32 0, metadata !546, metadata !445}
!546 = metadata !{i32 786443, metadata !1, metadata !535, i32 368, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!547 = metadata !{i32 371, i32 0, metadata !546, metadata !445}
!548 = metadata !{i32 371, i32 0, metadata !535, metadata !445}
!549 = metadata !{i32 373, i32 0, metadata !550, metadata !445}
!550 = metadata !{i32 786443, metadata !1, metadata !535, i32 371, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!551 = metadata !{i32 374, i32 0, metadata !550, metadata !445}
!552 = metadata !{i32 374, i32 0, metadata !535, metadata !445}
!553 = metadata !{i32 376, i32 0, metadata !554, metadata !445}
!554 = metadata !{i32 786443, metadata !1, metadata !535, i32 374, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!555 = metadata !{i32 377, i32 0, metadata !554, metadata !445}
!556 = metadata !{i32 378, i32 0, metadata !535, metadata !445}
!557 = metadata !{i32 381, i32 0, metadata !293, metadata !445}
!558 = metadata !{i32 382, i32 0, metadata !559, metadata !445}
!559 = metadata !{i32 786443, metadata !1, metadata !293, i32 381, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!560 = metadata !{i32 383, i32 0, metadata !559, metadata !445}
!561 = metadata !{i32 384, i32 0, metadata !559, metadata !445}
!562 = metadata !{i32 387, i32 0, metadata !266, metadata !445}
!563 = metadata !{i32 388, i32 0, metadata !266, metadata !445}
!564 = metadata !{i32 452, i32 0, metadata !207, null}
!565 = metadata !{i32 455, i32 0, metadata !207, null}
!566 = metadata !{i32 456, i32 0, metadata !207, null}
!567 = metadata !{i32 457, i32 0, metadata !207, null}
!568 = metadata !{i32 458, i32 0, metadata !207, null}
!569 = metadata !{i32 461, i32 0, metadata !207, null}
!570 = metadata !{i32 462, i32 0, metadata !207, null}
!571 = metadata !{i32 463, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !207, i32 462, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!573 = metadata !{i32 786689, metadata !258, metadata !"restp", metadata !27, i32 16777606, metadata !191, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [restp] [line 390]
!574 = metadata !{i32 464, i32 0, metadata !572, null}
!575 = metadata !{i32 390, i32 0, metadata !258, metadata !574}
!576 = metadata !{i32 786689, metadata !258, metadata !"atoms", metadata !27, i32 33554822, metadata !131, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [atoms] [line 390]
!577 = metadata !{i32 786689, metadata !258, metadata !"gb", metadata !27, i32 50332039, metadata !30, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [gb] [line 391]
!578 = metadata !{i32 391, i32 0, metadata !258, metadata !574}
!579 = metadata !{i32 786689, metadata !258, metadata !"gn", metadata !27, i32 67109255, metadata !120, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [gn] [line 391]
!580 = metadata !{i32 786689, metadata !258, metadata !"bASK", metadata !27, i32 83886471, metadata !37, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [bASK] [line 391]
!581 = metadata !{i32 786689, metadata !258, metadata !"bVerb", metadata !27, i32 100663687, metadata !37, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [bVerb] [line 391]
!582 = metadata !{i32 393, i32 0, metadata !258, metadata !574}
!583 = metadata !{i32 394, i32 0, metadata !258, metadata !574}
!584 = metadata !{i32 395, i32 0, metadata !258, metadata !574}
!585 = metadata !{i32 396, i32 0, metadata !258, metadata !574}
!586 = metadata !{i32 466, i32 0, metadata !207, null}
!587 = metadata !{i32 786689, metadata !222, metadata !"Restp", metadata !27, i32 16777380, metadata !191, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [Restp] [line 164]
!588 = metadata !{i32 469, i32 0, metadata !207, null}
!589 = metadata !{i32 164, i32 0, metadata !222, metadata !588}
!590 = metadata !{i32 786689, metadata !222, metadata !"atoms", metadata !27, i32 33554596, metadata !131, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [atoms] [line 164]
!591 = metadata !{i32 786689, metadata !222, metadata !"gb", metadata !27, i32 50331813, metadata !30, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [gb] [line 165]
!592 = metadata !{i32 165, i32 0, metadata !222, metadata !588}
!593 = metadata !{i32 786689, metadata !222, metadata !"gn", metadata !27, i32 67109029, metadata !120, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [gn] [line 165]
!594 = metadata !{i32 786689, metadata !222, metadata !"bASK", metadata !27, i32 83886245, metadata !37, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [bASK] [line 165]
!595 = metadata !{i32 786689, metadata !222, metadata !"bVerb", metadata !27, i32 100663461, metadata !37, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [bVerb] [line 165]
!596 = metadata !{i8** null}
!597 = metadata !{i32 786688, metadata !222, metadata !"restp", metadata !27, i32 167, metadata !53, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [restp] [line 167]
!598 = metadata !{i32 167, i32 0, metadata !222, metadata !588}
!599 = metadata !{i32 786688, metadata !222, metadata !"attp", metadata !27, i32 168, metadata !53, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [attp] [line 168]
!600 = metadata !{i32 168, i32 0, metadata !222, metadata !588}
!601 = metadata !{i32 786688, metadata !222, metadata !"nrestp", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [nrestp] [line 171]
!602 = metadata !{i32 171, i32 0, metadata !222, metadata !588}
!603 = metadata !{i32 786688, metadata !222, metadata !"i", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [i] [line 171]
!604 = metadata !{i32 173, i32 0, metadata !605, metadata !588}
!605 = metadata !{i32 786443, metadata !1, metadata !222, i32 173, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!606 = metadata !{i32 174, i32 0, metadata !605, metadata !588}
!607 = metadata !{i32 176, i32 0, metadata !222, metadata !588}
!608 = metadata !{i32 178, i32 0, metadata !609, metadata !588}
!609 = metadata !{i32 786443, metadata !1, metadata !222, i32 176, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!610 = metadata !{i32 179, i32 0, metadata !609, metadata !588}
!611 = metadata !{i32 180, i32 0, metadata !609, metadata !588}
!612 = metadata !{i32 786688, metadata !222, metadata !"k", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [k] [line 171]
!613 = metadata !{i32 181, i32 0, metadata !614, metadata !588}
!614 = metadata !{i32 786443, metadata !1, metadata !609, i32 181, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!615 = metadata !{i32 182, i32 0, metadata !616, metadata !588}
!616 = metadata !{i32 786443, metadata !1, metadata !614, i32 181, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!617 = metadata !{i32 183, i32 0, metadata !616, metadata !588}
!618 = metadata !{i32 194, i32 0, metadata !619, metadata !588}
!619 = metadata !{i32 786443, metadata !1, metadata !609, i32 194, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!620 = metadata !{i32 203, i32 0, metadata !621, metadata !588}
!621 = metadata !{i32 786443, metadata !1, metadata !619, i32 194, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!622 = metadata !{i32 223, i32 0, metadata !623, metadata !588}
!623 = metadata !{i32 786443, metadata !1, metadata !624, i32 222, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!624 = metadata !{i32 786443, metadata !1, metadata !625, i32 222, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!625 = metadata !{i32 786443, metadata !1, metadata !626, i32 219, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!626 = metadata !{i32 786443, metadata !1, metadata !627, i32 219, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!627 = metadata !{i32 786443, metadata !1, metadata !628, i32 218, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!628 = metadata !{i32 786443, metadata !1, metadata !629, i32 206, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!629 = metadata !{i32 786443, metadata !1, metadata !621, i32 203, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!630 = metadata !{i32 786688, metadata !222, metadata !"resnr", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [resnr] [line 171]
!631 = metadata !{i32 786688, metadata !222, metadata !"rname", metadata !27, i32 169, metadata !51, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [rname] [line 169]
!632 = metadata !{i32 184, i32 0, metadata !616, metadata !588}
!633 = metadata !{i32 185, i32 0, metadata !634, metadata !588}
!634 = metadata !{i32 786443, metadata !1, metadata !635, i32 185, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!635 = metadata !{i32 786443, metadata !1, metadata !616, i32 184, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!636 = metadata !{i32 186, i32 0, metadata !634, metadata !588}
!637 = metadata !{i32 786688, metadata !222, metadata !"l", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [l] [line 171]
!638 = metadata !{i32 188, i32 0, metadata !635, metadata !588}
!639 = metadata !{i32 189, i32 0, metadata !640, metadata !588}
!640 = metadata !{i32 786443, metadata !1, metadata !635, i32 188, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!641 = metadata !{i32 190, i32 0, metadata !640, metadata !588}
!642 = metadata !{i32 191, i32 0, metadata !640, metadata !588}
!643 = metadata !{i32 195, i32 0, metadata !621, metadata !588}
!644 = metadata !{i32 786688, metadata !222, metadata !"aid", metadata !27, i32 170, metadata !42, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [aid] [line 170]
!645 = metadata !{i32 786688, metadata !222, metadata !"naid", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [naid] [line 171]
!646 = metadata !{i32 196, i32 0, metadata !621, metadata !588}
!647 = metadata !{i32 786688, metadata !222, metadata !"j", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [j] [line 171]
!648 = metadata !{i32 197, i32 0, metadata !649, metadata !588}
!649 = metadata !{i32 786443, metadata !1, metadata !621, i32 197, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!650 = metadata !{i32 199, i32 0, metadata !651, metadata !588}
!651 = metadata !{i32 786443, metadata !1, metadata !649, i32 197, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!652 = metadata !{i32 202, i32 0, metadata !621, metadata !588}
!653 = metadata !{i32 198, i32 0, metadata !651, metadata !588}
!654 = metadata !{i32 200, i32 0, metadata !651, metadata !588}
!655 = metadata !{i32 204, i32 0, metadata !629, metadata !588}
!656 = metadata !{i32 205, i32 0, metadata !629, metadata !588}
!657 = metadata !{i32 206, i32 0, metadata !629, metadata !588}
!658 = metadata !{i32 208, i32 0, metadata !659, metadata !588}
!659 = metadata !{i32 786443, metadata !1, metadata !628, i32 208, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!660 = metadata !{i32 209, i32 0, metadata !661, metadata !588}
!661 = metadata !{i32 786443, metadata !1, metadata !659, i32 208, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!662 = metadata !{i32 786688, metadata !222, metadata !"aname", metadata !27, i32 169, metadata !51, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [aname] [line 169]
!663 = metadata !{i32 210, i32 0, metadata !664, metadata !588}
!664 = metadata !{i32 786443, metadata !1, metadata !661, i32 210, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!665 = metadata !{i32 211, i32 0, metadata !664, metadata !588}
!666 = metadata !{i32 213, i32 0, metadata !661, metadata !588}
!667 = metadata !{i32 214, i32 0, metadata !668, metadata !588}
!668 = metadata !{i32 786443, metadata !1, metadata !661, i32 213, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!669 = metadata !{i32 786688, metadata !222, metadata !"natp", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [natp] [line 171]
!670 = metadata !{i32 215, i32 0, metadata !668, metadata !588}
!671 = metadata !{i32 216, i32 0, metadata !668, metadata !588}
!672 = metadata !{i32 218, i32 0, metadata !628, metadata !588}
!673 = metadata !{i32 220, i32 0, metadata !625, metadata !588}
!674 = metadata !{i32 786688, metadata !222, metadata !"aaid", metadata !27, i32 170, metadata !42, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [aaid] [line 170]
!675 = metadata !{i32 786688, metadata !222, metadata !"naaid", metadata !27, i32 171, metadata !37, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [naaid] [line 171]
!676 = metadata !{i32 221, i32 0, metadata !625, metadata !588}
!677 = metadata !{i32 222, i32 0, metadata !624, metadata !588}
!678 = metadata !{i32 224, i32 0, metadata !623, metadata !588}
!679 = metadata !{i32 225, i32 0, metadata !623, metadata !588}
!680 = metadata !{i32 227, i32 0, metadata !625, metadata !588}
!681 = metadata !{i32 228, i32 0, metadata !625, metadata !588}
!682 = metadata !{i32 219, i32 0, metadata !626, metadata !588}
!683 = metadata !{i32 231, i32 0, metadata !628, metadata !588}
!684 = metadata !{i32 232, i32 0, metadata !628, metadata !588}
!685 = metadata !{i32 233, i32 0, metadata !628, metadata !588}
!686 = metadata !{i32 234, i32 0, metadata !629, metadata !588}
!687 = metadata !{i32 235, i32 0, metadata !629, metadata !588}
!688 = metadata !{i32 237, i32 0, metadata !609, metadata !588}
!689 = metadata !{i32 238, i32 0, metadata !609, metadata !588}
!690 = metadata !{i32 470, i32 0, metadata !207, null}
!691 = metadata !{i32 471, i32 0, metadata !207, null}
!692 = metadata !{i32 472, i32 0, metadata !207, null}
!693 = metadata !{i32 473, i32 0, metadata !207, null}
!694 = metadata !{i32 474, i32 0, metadata !207, null}
!695 = metadata !{i32 475, i32 0, metadata !207, null}
!696 = metadata !{i32 54, i32 0, metadata !248, null}
!697 = metadata !{i32 58, i32 0, metadata !248, null} ; [ DW_TAG_imported_module ]
!698 = metadata !{i32 60, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !255, i32 60, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/index.c]
!700 = metadata !{i32 61, i32 0, metadata !256, null}
!701 = metadata !{i32 63, i32 0, metadata !257, null}
!702 = metadata !{i32 67, i32 0, metadata !248, null}
