; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_coupl_rec = type { [14 x float], [14 x float], [14 x float], [14 x i32], i32, i32, i32, i32, %struct.t_coupl_LJ*, %struct.t_coupl_BU*, %struct.t_coupl_Q*, %struct.t_coupl_iparams*, i32, i32, i32 }
%struct.t_coupl_LJ = type { i32, i32, i32, i32, float, float, float, float }
%struct.t_coupl_BU = type { i32, i32, i32, i32, float, float, float, float, float, float }
%struct.t_coupl_Q = type { i32, i32, i32, float, float }
%struct.t_coupl_iparams = type { i32, i32, %union.t_iparams, %union.t_iparams }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Pres\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"Epot\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"Vir\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Dist\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"Mu\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"Fx\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"Fy\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"Fz\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"Px\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"Py\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"Pz\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"Polarizability\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"Dipole\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"UseEinter\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"UseVirial\00", align 1
@eoNames = global [17 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0)], align 16
@.str17 = private unnamed_addr constant [5 x i8] c"*tcr\00", align 1
@.str18 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [49 x i8] c"%-15s = %12g  ; Reference pressure for coupling\0A\00", align 1
@.str21 = private unnamed_addr constant [44 x i8] c"%-15s = %12g  ; Reference potential energy\0A\00", align 1
@.str22 = private unnamed_addr constant [36 x i8] c"%-15s = %12g  ; Reference distance\0A\00", align 1
@.str23 = private unnamed_addr constant [34 x i8] c"%-15s = %12g  ; Reference dipole\0A\00", align 1
@.str24 = private unnamed_addr constant [33 x i8] c"%-15s = %12g  ; Reference force\0A\00", align 1
@.str25 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in X dir\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in Y dir\0A\00", align 1
@.str27 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in Z dir\0A\00", align 1
@.str28 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in X dir\0A\00", align 1
@.str29 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in Y dir\0A\00", align 1
@.str30 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in Z dir\0A\00", align 1
@.str31 = private unnamed_addr constant [61 x i8] c"%-15s = %12g  ; Polarizability used for the Epot correction\0A\00", align 1
@.str32 = private unnamed_addr constant [66 x i8] c"%-15s = %12g  ; Gas phase dipole moment used for Epot correction\0A\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"%-15s = %12d  ; Memory for coupling. Makes it converge faster.\0A\00", align 1
@.str34 = private unnamed_addr constant [56 x i8] c"%-15s = %12s  ; Use intermolecular Epot only (LJ+Coul)\0A\00", align 1
@yesno_names = external global [3 x i8*]
@.str35 = private unnamed_addr constant [41 x i8] c"%-15s = %12s  ; Use virial iso pressure\0A\00", align 1
@.str36 = private unnamed_addr constant [27 x i8] c"\0A; Q-Coupling   %6s  %12s\0A\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"xi\00", align 1
@.str39 = private unnamed_addr constant [23 x i8] c"%-8s = %8s  %6d  %12g\0A\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str41 = private unnamed_addr constant [34 x i8] c"\0A; %8s %8s  %6s  %6s  %12s  %12s\0A\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"Couple\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"i-type\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"j-type\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"xi-c6\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"xi-c12\00", align 1
@.str48 = private unnamed_addr constant [52 x i8] c"; j-type == -1 means mixing rules will be applied!\0A\00", align 1
@.str49 = private unnamed_addr constant [34 x i8] c"%-8s = %8s  %6d  %6d  %12g  %12g\0A\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str51 = private unnamed_addr constant [40 x i8] c"\0A; %8s %8s  %6s  %6s  %12s  %12s  %12s\0A\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"xi-A\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"xi-B\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"xi-C\00", align 1
@.str55 = private unnamed_addr constant [40 x i8] c"%-8s = %8s  %6d  %6d  %12g  %12g  %12g\0A\00", align 1
@.str56 = private unnamed_addr constant [3 x i8] c"BU\00", align 1
@.str57 = private unnamed_addr constant [18 x i8] c"\0A; More Coupling\0A\00", align 1
@.str58 = private unnamed_addr constant [31 x i8] c"%-15s = %-8s  %4d  %12g  %12g\0A\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"Bonds\00", align 1
@stderr = external global %struct._IO_FILE*
@.str60 = private unnamed_addr constant [30 x i8] c"ftype %s not supported (yet)\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str61 = private unnamed_addr constant [29 x i8] c"Wrong line in %s: '%s = %s'\0A\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str64 = private unnamed_addr constant [39 x i8] c"Invalid observable for IP coupling: %s\00", align 1
@.str65 = private unnamed_addr constant [44 x i8] c"*** WARNING: overwriting entry for type %d\0A\00", align 1
@.str66 = private unnamed_addr constant [7 x i8] c"(*tIP)\00", align 1
@.str67 = private unnamed_addr constant [11 x i8] c"%s%d%lf%lf\00", align 1
@.str68 = private unnamed_addr constant [32 x i8] c"Coupling to observable %d (%s)\0A\00", align 1
@.str69 = private unnamed_addr constant [8 x i8] c"%s%d%lf\00", align 1
@.str70 = private unnamed_addr constant [7 x i8] c"(*tcQ)\00", align 1
@.str71 = private unnamed_addr constant [53 x i8] c"\0A*** WARNING: overwriting entry for Q coupling '%s'\0A\00", align 1
@.str72 = private unnamed_addr constant [38 x i8] c"Invalid observable for Q coupling: %s\00", align 1
@.str73 = private unnamed_addr constant [16 x i8] c"%s%d%d%lf%lf%lf\00", align 1
@.str74 = private unnamed_addr constant [39 x i8] c"Invalid observable for BU coupling: %s\00", align 1
@.str75 = private unnamed_addr constant [8 x i8] c"(*tcBU)\00", align 1
@.str76 = private unnamed_addr constant [54 x i8] c"\0A*** WARNING: overwriting entry for BU coupling '%s'\0A\00", align 1
@.str77 = private unnamed_addr constant [13 x i8] c"%s%d%d%lf%lf\00", align 1
@.str78 = private unnamed_addr constant [39 x i8] c"Invalid observable for LJ coupling: %s\00", align 1
@.str79 = private unnamed_addr constant [8 x i8] c"(*tcLJ)\00", align 1
@.str80 = private unnamed_addr constant [54 x i8] c"\0A*** WARNING: overwriting entry for LJ coupling '%s'\0A\00", align 1
@.str81 = private unnamed_addr constant [10 x i8] c"tcr->tcLJ\00", align 1
@.str82 = private unnamed_addr constant [10 x i8] c"tcr->tcBU\00", align 1
@.str83 = private unnamed_addr constant [9 x i8] c"tcr->tcQ\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @comm_tcr(%struct._IO_FILE* nocapture %log, %struct.t_commrec* nocapture %cr, %struct.t_coupl_rec** nocapture %tcr) #0 {
entry:
  %shit = alloca %struct.t_coupl_rec, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !331), !dbg !644
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !332), !dbg !644
  call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec** %tcr}, i64 0, metadata !333), !dbg !644
  %0 = bitcast %struct.t_coupl_rec* %shit to i8*, !dbg !645
  call void @llvm.lifetime.start(i64 288, i8* %0) #2, !dbg !645
  call void @llvm.dbg.declare(metadata !{%struct.t_coupl_rec* %shit}, metadata !334), !dbg !645
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !646
  %1 = load i32* %nodeid, align 4, !dbg !646, !tbaa !647
  %cmp = icmp eq i32 %1, 0, !dbg !646
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !646

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !646
  %2 = load i32* %threadid, align 4, !dbg !646, !tbaa !647
  %cmp1 = icmp eq i32 %2, 0, !dbg !646
  br i1 %cmp1, label %if.then, label %if.else, !dbg !646

if.then:                                          ; preds = %land.lhs.true
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !650
  %3 = load i32* %left, align 4, !dbg !650, !tbaa !647
  %4 = load %struct.t_coupl_rec** %tcr, align 8, !dbg !650, !tbaa !652
  call fastcc void @send_tcr(i32 %3, %struct.t_coupl_rec* %4) #7, !dbg !650
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !653
  %5 = load i32* %right, align 4, !dbg !653, !tbaa !647
  call fastcc void @rec_tcr(i32 %5, %struct.t_coupl_rec* %shit) #7, !dbg !653
  br label %if.end, !dbg !654

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 108, i32 1, i32 288) #8, !dbg !655
  %6 = bitcast i8* %call to %struct.t_coupl_rec*, !dbg !655
  store %struct.t_coupl_rec* %6, %struct.t_coupl_rec** %tcr, align 8, !dbg !655, !tbaa !652
  %right2 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !657
  %7 = load i32* %right2, align 4, !dbg !657, !tbaa !647
  call fastcc void @rec_tcr(i32 %7, %struct.t_coupl_rec* %6) #7, !dbg !657
  %left3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !658
  %8 = load i32* %left3, align 4, !dbg !658, !tbaa !647
  %9 = load %struct.t_coupl_rec** %tcr, align 8, !dbg !658, !tbaa !652
  call fastcc void @send_tcr(i32 %8, %struct.t_coupl_rec* %9) #7, !dbg !658
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 288, i8* %0) #2, !dbg !659
  ret void, !dbg !659
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @send_tcr(i32 %dest, %struct.t_coupl_rec* %tcr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dest}, i64 0, metadata !637), !dbg !660
  tail call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec* %tcr}, i64 0, metadata !638), !dbg !660
  %arraydecay = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0, !dbg !661
  %0 = bitcast float* %arraydecay to i8*, !dbg !661
  tail call void @_blocktx(i32 %dest, i32 1, i32 56, i8* %0) #8, !dbg !661
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4, !dbg !662
  %1 = bitcast i32* %nLJ to i8*, !dbg !662
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %1) #8, !dbg !662
  %2 = load i32* %nLJ, align 4, !dbg !663, !tbaa !647
  %mul = shl i32 %2, 5, !dbg !663
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8, !dbg !663
  %3 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !663, !tbaa !652
  %4 = bitcast %struct.t_coupl_LJ* %3 to i8*, !dbg !663
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %4) #8, !dbg !663
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5, !dbg !664
  %5 = bitcast i32* %nBU to i8*, !dbg !664
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %5) #8, !dbg !664
  %6 = load i32* %nBU, align 4, !dbg !665, !tbaa !647
  %mul5 = mul i32 %6, 40, !dbg !665
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9, !dbg !665
  %7 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !665, !tbaa !652
  %8 = bitcast %struct.t_coupl_BU* %7 to i8*, !dbg !665
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul5, i8* %8) #8, !dbg !665
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6, !dbg !666
  %9 = bitcast i32* %nQ to i8*, !dbg !666
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %9) #8, !dbg !666
  %10 = load i32* %nQ, align 4, !dbg !667, !tbaa !647
  %mul9 = mul i32 %10, 20, !dbg !667
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10, !dbg !667
  %11 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !667, !tbaa !652
  %12 = bitcast %struct.t_coupl_Q* %11 to i8*, !dbg !667
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul9, i8* %12) #8, !dbg !667
  ret void, !dbg !668
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rec_tcr(i32 %src, %struct.t_coupl_rec* %tcr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !633), !dbg !669
  tail call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec* %tcr}, i64 0, metadata !634), !dbg !669
  %arraydecay = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0, !dbg !670
  %0 = bitcast float* %arraydecay to i8*, !dbg !670
  tail call void @_blockrx(i32 %src, i32 1, i32 56, i8* %0) #8, !dbg !670
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4, !dbg !671
  %1 = bitcast i32* %nLJ to i8*, !dbg !671
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %1) #8, !dbg !671
  %2 = load i32* %nLJ, align 4, !dbg !672, !tbaa !647
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 87, i32 %2, i32 32) #8, !dbg !672
  %3 = bitcast i8* %call to %struct.t_coupl_LJ*, !dbg !672
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8, !dbg !672
  store %struct.t_coupl_LJ* %3, %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !672, !tbaa !652
  %4 = load i32* %nLJ, align 4, !dbg !673, !tbaa !647
  %mul = shl i32 %4, 5, !dbg !673
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %call) #8, !dbg !673
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5, !dbg !674
  %5 = bitcast i32* %nBU to i8*, !dbg !674
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %5) #8, !dbg !674
  %6 = load i32* %nBU, align 4, !dbg !675, !tbaa !647
  %call6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 91, i32 %6, i32 40) #8, !dbg !675
  %7 = bitcast i8* %call6 to %struct.t_coupl_BU*, !dbg !675
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9, !dbg !675
  store %struct.t_coupl_BU* %7, %struct.t_coupl_BU** %tcBU, align 8, !dbg !675, !tbaa !652
  %8 = load i32* %nBU, align 4, !dbg !676, !tbaa !647
  %mul9 = mul i32 %8, 40, !dbg !676
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul9, i8* %call6) #8, !dbg !676
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6, !dbg !677
  %9 = bitcast i32* %nQ to i8*, !dbg !677
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %9) #8, !dbg !677
  %10 = load i32* %nQ, align 4, !dbg !678, !tbaa !647
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 95, i32 %10, i32 20) #8, !dbg !678
  %11 = bitcast i8* %call13 to %struct.t_coupl_Q*, !dbg !678
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10, !dbg !678
  store %struct.t_coupl_Q* %11, %struct.t_coupl_Q** %tcQ, align 8, !dbg !678, !tbaa !652
  %12 = load i32* %nQ, align 4, !dbg !679, !tbaa !647
  %mul16 = mul i32 %12, 20, !dbg !679
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul16, i8* %call13) #8, !dbg !679
  ret void, !dbg !680
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @copy_ff(%struct.t_coupl_rec* nocapture %tcr, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture %md, %struct.t_idef* nocapture %idef) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec* %tcr}, i64 0, metadata !496), !dbg !681
  tail call void @llvm.dbg.value(metadata !{%struct.t_forcerec* %fr}, i64 0, metadata !497), !dbg !681
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !498), !dbg !681
  tail call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !499), !dbg !681
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !500), !dbg !682
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4, !dbg !682
  %0 = load i32* %nLJ, align 4, !dbg !682, !tbaa !647
  %cmp152 = icmp sgt i32 %0, 0, !dbg !682
  br i1 %cmp152, label %for.body.lr.ph, label %for.cond13.preheader, !dbg !682

for.body.lr.ph:                                   ; preds = %entry
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8, !dbg !684
  %1 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !684, !tbaa !652
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !686
  %2 = load i32* %ntype, align 4, !dbg !686, !tbaa !647
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65, !dbg !686
  %3 = load float** %nbfp, align 8, !dbg !686, !tbaa !652
  br label %for.body, !dbg !682

for.cond13.preheader:                             ; preds = %for.body, %entry
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5, !dbg !687
  %4 = load i32* %nBU, align 4, !dbg !687, !tbaa !647
  %cmp14150 = icmp sgt i32 %4, 0, !dbg !687
  br i1 %cmp14150, label %for.body15.lr.ph, label %for.cond49.preheader, !dbg !687

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9, !dbg !689
  %5 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !689, !tbaa !652
  %ntype23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63, !dbg !691
  %6 = load i32* %ntype23, align 4, !dbg !691, !tbaa !647
  %nbfp29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65, !dbg !691
  %7 = load float** %nbfp29, align 8, !dbg !691, !tbaa !652
  br label %for.body15, !dbg !687

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv161 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next162, %for.body ]
  %at_i = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 0, !dbg !692
  %8 = load i32* %at_i, align 4, !dbg !692, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !502), !dbg !692
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 1, !dbg !693
  %9 = load i32* %at_j, align 4, !dbg !693, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !503), !dbg !693
  %cmp1 = icmp eq i32 %9, -1, !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !503), !dbg !695
  %. = select i1 %cmp1, i32 %8, i32 %9, !dbg !694
  %mul = mul nsw i32 %2, %8, !dbg !686
  %add = add nsw i32 %mul, %., !dbg !686
  %mul2 = shl nsw i32 %add, 1, !dbg !686
  %idxprom3 = sext i32 %mul2 to i64, !dbg !686
  %arrayidx4 = getelementptr inbounds float* %3, i64 %idxprom3, !dbg !686
  %10 = load float* %arrayidx4, align 4, !dbg !686, !tbaa !696
  %c6 = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 4, !dbg !686
  store float %10, float* %c6, align 4, !dbg !686, !tbaa !696
  %add9142 = or i32 %mul2, 1, !dbg !697
  %idxprom10 = sext i32 %add9142 to i64, !dbg !697
  %arrayidx12 = getelementptr inbounds float* %3, i64 %idxprom10, !dbg !697
  %11 = load float* %arrayidx12, align 4, !dbg !697, !tbaa !696
  %c12 = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 5, !dbg !697
  store float %11, float* %c12, align 4, !dbg !697, !tbaa !696
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !682
  %12 = trunc i64 %indvars.iv.next162 to i32, !dbg !682
  %cmp = icmp slt i32 %12, %0, !dbg !682
  br i1 %cmp, label %for.body, label %for.cond13.preheader, !dbg !682

for.cond49.preheader:                             ; preds = %for.body15, %for.cond13.preheader
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6, !dbg !698
  %13 = load i32* %nQ, align 4, !dbg !698, !tbaa !647
  %cmp50148 = icmp sgt i32 %13, 0, !dbg !698
  br i1 %cmp50148, label %for.body51.lr.ph, label %for.cond74.preheader, !dbg !698

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10, !dbg !700
  %14 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !700, !tbaa !652
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !702
  %15 = load i32* %nr, align 4, !dbg !702, !tbaa !647
  %cmp55146 = icmp sgt i32 %15, 0, !dbg !702
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11, !dbg !704
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6, !dbg !706
  br label %for.body51, !dbg !698

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv159 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next160, %for.body15 ]
  %at_i18 = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 0, !dbg !708
  %16 = load i32* %at_i18, align 4, !dbg !708, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !502), !dbg !708
  %at_j19 = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 1, !dbg !709
  %17 = load i32* %at_j19, align 4, !dbg !709, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !503), !dbg !709
  %cmp20 = icmp eq i32 %17, -1, !dbg !710
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !503), !dbg !711
  %.143 = select i1 %cmp20, i32 %16, i32 %17, !dbg !710
  %mul24 = mul nsw i32 %6, %16, !dbg !691
  %add25 = add nsw i32 %mul24, %.143, !dbg !691
  %mul26 = mul nsw i32 %add25, 3, !dbg !691
  %add27 = add nsw i32 %mul26, 1, !dbg !691
  %idxprom28 = sext i32 %add27 to i64, !dbg !691
  %arrayidx30 = getelementptr inbounds float* %7, i64 %idxprom28, !dbg !691
  %18 = load float* %arrayidx30, align 4, !dbg !691, !tbaa !696
  %a = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 4, !dbg !691
  store float %18, float* %a, align 4, !dbg !691, !tbaa !696
  %add35 = add nsw i32 %mul26, 2, !dbg !712
  %idxprom36 = sext i32 %add35 to i64, !dbg !712
  %arrayidx38 = getelementptr inbounds float* %7, i64 %idxprom36, !dbg !712
  %19 = load float* %arrayidx38, align 4, !dbg !712, !tbaa !696
  %b = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 5, !dbg !712
  store float %19, float* %b, align 4, !dbg !712, !tbaa !696
  %idxprom43 = sext i32 %mul26 to i64, !dbg !713
  %arrayidx45 = getelementptr inbounds float* %7, i64 %idxprom43, !dbg !713
  %20 = load float* %arrayidx45, align 4, !dbg !713, !tbaa !696
  %c = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 6, !dbg !713
  store float %20, float* %c, align 4, !dbg !713, !tbaa !696
  %indvars.iv.next160 = add i64 %indvars.iv159, 1, !dbg !687
  %21 = trunc i64 %indvars.iv.next160 to i32, !dbg !687
  %cmp14 = icmp slt i32 %21, %4, !dbg !687
  br i1 %cmp14, label %for.body15, label %for.cond49.preheader, !dbg !687

for.cond74.preheader:                             ; preds = %for.inc71, %for.cond49.preheader
  %nIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7, !dbg !714
  %22 = load i32* %nIP, align 4, !dbg !714, !tbaa !647
  %cmp75144 = icmp sgt i32 %22, 0, !dbg !714
  br i1 %cmp75144, label %for.body76.lr.ph, label %for.end87, !dbg !714

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11, !dbg !716
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4, !dbg !718
  br label %for.body76, !dbg !714

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc71
  %indvars.iv157 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next158, %for.inc71 ]
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !501), !dbg !702
  br i1 %cmp55146, label %for.body56.lr.ph, label %for.inc71, !dbg !702

for.body56.lr.ph:                                 ; preds = %for.body51
  %23 = load i32** %typeA, align 8, !dbg !704, !tbaa !652
  %at_i59 = getelementptr inbounds %struct.t_coupl_Q* %14, i64 %indvars.iv157, i32 0, !dbg !704
  %24 = load i32* %at_i59, align 4, !dbg !704, !tbaa !647
  br label %for.body56, !dbg !702

for.cond54:                                       ; preds = %for.body56
  %25 = trunc i64 %indvars.iv.next156 to i32, !dbg !702
  %cmp55 = icmp slt i32 %25, %15, !dbg !702
  br i1 %cmp55, label %for.body56, label %for.inc71, !dbg !702

for.body56:                                       ; preds = %for.body56.lr.ph, %for.cond54
  %indvars.iv155 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next156, %for.cond54 ]
  %arrayidx58 = getelementptr inbounds i32* %23, i64 %indvars.iv155, !dbg !704
  %26 = load i32* %arrayidx58, align 4, !dbg !704, !tbaa !647
  %cmp60 = icmp eq i32 %26, %24, !dbg !704
  %indvars.iv.next156 = add i64 %indvars.iv155, 1, !dbg !702
  br i1 %cmp60, label %if.then61, label %for.cond54, !dbg !704

if.then61:                                        ; preds = %for.body56
  %27 = load float** %chargeA, align 8, !dbg !706, !tbaa !652
  %arrayidx63 = getelementptr inbounds float* %27, i64 %indvars.iv155, !dbg !706
  %28 = load float* %arrayidx63, align 4, !dbg !706, !tbaa !696
  %Q = getelementptr inbounds %struct.t_coupl_Q* %14, i64 %indvars.iv157, i32 3, !dbg !706
  store float %28, float* %Q, align 4, !dbg !706, !tbaa !696
  br label %for.inc71, !dbg !719

for.inc71:                                        ; preds = %for.body51, %for.cond54, %if.then61
  %indvars.iv.next158 = add i64 %indvars.iv157, 1, !dbg !698
  %29 = trunc i64 %indvars.iv.next158 to i32, !dbg !698
  %cmp50 = icmp slt i32 %29, %13, !dbg !698
  br i1 %cmp50, label %for.body51, label %for.cond74.preheader, !dbg !698

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %30 = load %struct.t_coupl_iparams** %tIP, align 8, !dbg !716, !tbaa !652
  %type79 = getelementptr inbounds %struct.t_coupl_iparams* %30, i64 %indvars.iv, i32 0, !dbg !716
  %31 = load i32* %type79, align 4, !dbg !716, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !504), !dbg !716
  %iprint = getelementptr inbounds %struct.t_coupl_iparams* %30, i64 %indvars.iv, i32 3, !dbg !718
  %idxprom83 = sext i32 %31 to i64, !dbg !718
  %32 = load %union.t_iparams** %iparams, align 8, !dbg !718, !tbaa !652
  %arrayidx84 = getelementptr inbounds %union.t_iparams* %32, i64 %idxprom83, !dbg !718
  %33 = bitcast %union.t_iparams* %iprint to i8*, !dbg !718
  %34 = bitcast %union.t_iparams* %arrayidx84 to i8*, !dbg !718
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !dbg !718, !tbaa.struct !720
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !714
  %35 = load i32* %nIP, align 4, !dbg !714, !tbaa !647
  %36 = trunc i64 %indvars.iv.next to i32, !dbg !714
  %cmp75 = icmp slt i32 %36, %35, !dbg !714
  br i1 %cmp75, label %for.body76, label %for.end87, !dbg !714

for.end87:                                        ; preds = %for.body76, %for.cond74.preheader
  ret void, !dbg !721
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define void @write_gct(i8* %fn, %struct.t_coupl_rec* %tcr, %struct.t_idef* nocapture %idef) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !512), !dbg !722
  tail call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec* %tcr}, i64 0, metadata !513), !dbg !722
  tail call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !514), !dbg !722
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #8, !dbg !723
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !515), !dbg !723
  tail call void @nice_header(%struct._IO_FILE* %call, i8* %fn) #8, !dbg !724
  %0 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 0), align 16, !dbg !725, !tbaa !652
  %arrayidx = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0, !dbg !725
  %1 = load float* %arrayidx, align 4, !dbg !725, !tbaa !696
  %conv = fpext float %1 to double, !dbg !725
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([49 x i8]* @.str20, i64 0, i64 0), i8* %0, double %conv) #8, !dbg !725
  %2 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 1), align 8, !dbg !726, !tbaa !652
  %arrayidx3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 1, !dbg !726
  %3 = load float* %arrayidx3, align 4, !dbg !726, !tbaa !696
  %conv4 = fpext float %3 to double, !dbg !726
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([44 x i8]* @.str21, i64 0, i64 0), i8* %2, double %conv4) #8, !dbg !726
  %4 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 3), align 8, !dbg !727, !tbaa !652
  %arrayidx7 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 3, !dbg !727
  %5 = load float* %arrayidx7, align 4, !dbg !727, !tbaa !696
  %conv8 = fpext float %5 to double, !dbg !727
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0), i8* %4, double %conv8) #8, !dbg !727
  %6 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 4), align 16, !dbg !728, !tbaa !652
  %arrayidx11 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 4, !dbg !728
  %7 = load float* %arrayidx11, align 4, !dbg !728, !tbaa !696
  %conv12 = fpext float %7 to double, !dbg !728
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str23, i64 0, i64 0), i8* %6, double %conv12) #8, !dbg !728
  %8 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 5), align 8, !dbg !729, !tbaa !652
  %arrayidx15 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 5, !dbg !729
  %9 = load float* %arrayidx15, align 4, !dbg !729, !tbaa !696
  %conv16 = fpext float %9 to double, !dbg !729
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0), i8* %8, double %conv16) #8, !dbg !729
  %10 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 6), align 16, !dbg !730, !tbaa !652
  %arrayidx19 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 6, !dbg !730
  %11 = load float* %arrayidx19, align 4, !dbg !730, !tbaa !696
  %conv20 = fpext float %11 to double, !dbg !730
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str25, i64 0, i64 0), i8* %10, double %conv20) #8, !dbg !730
  %12 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 7), align 8, !dbg !731, !tbaa !652
  %arrayidx23 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 7, !dbg !731
  %13 = load float* %arrayidx23, align 4, !dbg !731, !tbaa !696
  %conv24 = fpext float %13 to double, !dbg !731
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %12, double %conv24) #8, !dbg !731
  %14 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 8), align 16, !dbg !732, !tbaa !652
  %arrayidx27 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 8, !dbg !732
  %15 = load float* %arrayidx27, align 4, !dbg !732, !tbaa !696
  %conv28 = fpext float %15 to double, !dbg !732
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %14, double %conv28) #8, !dbg !732
  %16 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 9), align 8, !dbg !733, !tbaa !652
  %arrayidx31 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 9, !dbg !733
  %17 = load float* %arrayidx31, align 4, !dbg !733, !tbaa !696
  %conv32 = fpext float %17 to double, !dbg !733
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str28, i64 0, i64 0), i8* %16, double %conv32) #8, !dbg !733
  %18 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 10), align 16, !dbg !734, !tbaa !652
  %arrayidx35 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 10, !dbg !734
  %19 = load float* %arrayidx35, align 4, !dbg !734, !tbaa !696
  %conv36 = fpext float %19 to double, !dbg !734
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str29, i64 0, i64 0), i8* %18, double %conv36) #8, !dbg !734
  %20 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 11), align 8, !dbg !735, !tbaa !652
  %arrayidx39 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 11, !dbg !735
  %21 = load float* %arrayidx39, align 4, !dbg !735, !tbaa !696
  %conv40 = fpext float %21 to double, !dbg !735
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i8* %20, double %conv40) #8, !dbg !735
  %22 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 12), align 16, !dbg !736, !tbaa !652
  %arrayidx43 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12, !dbg !736
  %23 = load float* %arrayidx43, align 4, !dbg !736, !tbaa !696
  %conv44 = fpext float %23 to double, !dbg !736
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([61 x i8]* @.str31, i64 0, i64 0), i8* %22, double %conv44) #8, !dbg !736
  %24 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 13), align 8, !dbg !737, !tbaa !652
  %arrayidx47 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13, !dbg !737
  %25 = load float* %arrayidx47, align 4, !dbg !737, !tbaa !696
  %conv48 = fpext float %25 to double, !dbg !737
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), i8* %24, double %conv48) #8, !dbg !737
  %26 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !dbg !738, !tbaa !652
  %nmemory = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12, !dbg !738
  %27 = load i32* %nmemory, align 4, !dbg !738, !tbaa !647
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), i8* %26, i32 %27) #8, !dbg !738
  %28 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !dbg !739, !tbaa !652
  %bInter = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13, !dbg !739
  %29 = load i32* %bInter, align 4, !dbg !739, !tbaa !647
  %idxprom = sext i32 %29 to i64, !dbg !739
  %arrayidx51 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %idxprom, !dbg !739
  %30 = load i8** %arrayidx51, align 8, !dbg !739, !tbaa !652
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([56 x i8]* @.str34, i64 0, i64 0), i8* %28, i8* %30) #8, !dbg !739
  %31 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !dbg !740, !tbaa !652
  %bVirial = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14, !dbg !740
  %32 = load i32* %bVirial, align 4, !dbg !740, !tbaa !647
  %idxprom53 = sext i32 %32 to i64, !dbg !740
  %arrayidx54 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %idxprom53, !dbg !740
  %33 = load i8** %arrayidx54, align 8, !dbg !740, !tbaa !652
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str35, i64 0, i64 0), i8* %31, i8* %33) #8, !dbg !740
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([27 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #8, !dbg !741
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !516), !dbg !742
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6, !dbg !742
  %34 = load i32* %nQ, align 4, !dbg !742, !tbaa !647
  %cmp267 = icmp sgt i32 %34, 0, !dbg !742
  br i1 %cmp267, label %for.body.lr.ph, label %for.end, !dbg !742

for.body.lr.ph:                                   ; preds = %entry
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10, !dbg !744
  br label %for.body, !dbg !742

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv273 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next274, %for.body ]
  %35 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !744, !tbaa !652
  %eObs = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 1, !dbg !744
  %36 = load i32* %eObs, align 4, !dbg !744, !tbaa !647
  %idxprom60 = sext i32 %36 to i64, !dbg !744
  %arrayidx61 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom60, !dbg !744
  %37 = load i8** %arrayidx61, align 8, !dbg !744, !tbaa !652
  %at_i = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 0, !dbg !744
  %38 = load i32* %at_i, align 4, !dbg !744, !tbaa !647
  %xi_Q = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 4, !dbg !744
  %39 = load float* %xi_Q, align 4, !dbg !744, !tbaa !696
  %conv68 = fpext float %39 to double, !dbg !744
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([23 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i8* %37, i32 %38, double %conv68) #8, !dbg !744
  %indvars.iv.next274 = add i64 %indvars.iv273, 1, !dbg !742
  %40 = load i32* %nQ, align 4, !dbg !742, !tbaa !647
  %41 = trunc i64 %indvars.iv.next274 to i32, !dbg !742
  %cmp = icmp slt i32 %41, %40, !dbg !742
  br i1 %cmp, label %for.body, label %for.end, !dbg !742

for.end:                                          ; preds = %for.body, %entry
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0)) #8, !dbg !746
  %42 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %call), !dbg !747
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !516), !dbg !748
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4, !dbg !748
  %43 = load i32* %nLJ, align 4, !dbg !748, !tbaa !647
  %cmp73265 = icmp sgt i32 %43, 0, !dbg !748
  br i1 %cmp73265, label %for.body75.lr.ph, label %for.end99, !dbg !748

for.body75.lr.ph:                                 ; preds = %for.end
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8, !dbg !750
  br label %for.body75, !dbg !748

for.body75:                                       ; preds = %for.body75.lr.ph, %for.body75
  %indvars.iv271 = phi i64 [ 0, %for.body75.lr.ph ], [ %indvars.iv.next272, %for.body75 ]
  %44 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !750, !tbaa !652
  %eObs78 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 2, !dbg !750
  %45 = load i32* %eObs78, align 4, !dbg !750, !tbaa !647
  %idxprom79 = sext i32 %45 to i64, !dbg !750
  %arrayidx80 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom79, !dbg !750
  %46 = load i8** %arrayidx80, align 8, !dbg !750, !tbaa !652
  %at_i84 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 0, !dbg !750
  %47 = load i32* %at_i84, align 4, !dbg !750, !tbaa !647
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 1, !dbg !750
  %48 = load i32* %at_j, align 4, !dbg !750, !tbaa !647
  %xi_6 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 6, !dbg !750
  %49 = load float* %xi_6, align 4, !dbg !750, !tbaa !696
  %conv91 = fpext float %49 to double, !dbg !750
  %xi_12 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 7, !dbg !750
  %50 = load float* %xi_12, align 4, !dbg !750, !tbaa !696
  %conv95 = fpext float %50 to double, !dbg !750
  %call96 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0), i8* %46, i32 %47, i32 %48, double %conv91, double %conv95) #8, !dbg !750
  %indvars.iv.next272 = add i64 %indvars.iv271, 1, !dbg !748
  %51 = load i32* %nLJ, align 4, !dbg !748, !tbaa !647
  %52 = trunc i64 %indvars.iv.next272 to i32, !dbg !748
  %cmp73 = icmp slt i32 %52, %51, !dbg !748
  br i1 %cmp73, label %for.body75, label %for.end99, !dbg !748

for.end99:                                        ; preds = %for.body75, %for.end
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([40 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0)) #8, !dbg !752
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %call), !dbg !753
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !516), !dbg !754
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5, !dbg !754
  %54 = load i32* %nBU, align 4, !dbg !754, !tbaa !647
  %cmp103263 = icmp sgt i32 %54, 0, !dbg !754
  br i1 %cmp103263, label %for.body105.lr.ph, label %for.end134, !dbg !754

for.body105.lr.ph:                                ; preds = %for.end99
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9, !dbg !756
  br label %for.body105, !dbg !754

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv269 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next270, %for.body105 ]
  %55 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !756, !tbaa !652
  %eObs108 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 2, !dbg !756
  %56 = load i32* %eObs108, align 4, !dbg !756, !tbaa !647
  %idxprom109 = sext i32 %56 to i64, !dbg !756
  %arrayidx110 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom109, !dbg !756
  %57 = load i8** %arrayidx110, align 8, !dbg !756, !tbaa !652
  %at_i114 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 0, !dbg !756
  %58 = load i32* %at_i114, align 4, !dbg !756, !tbaa !647
  %at_j118 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 1, !dbg !756
  %59 = load i32* %at_j118, align 4, !dbg !756, !tbaa !647
  %xi_a = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 7, !dbg !756
  %60 = load float* %xi_a, align 4, !dbg !756, !tbaa !696
  %conv122 = fpext float %60 to double, !dbg !756
  %xi_b = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 8, !dbg !756
  %61 = load float* %xi_b, align 4, !dbg !756, !tbaa !696
  %conv126 = fpext float %61 to double, !dbg !756
  %xi_c = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 9, !dbg !756
  %62 = load float* %xi_c, align 4, !dbg !756, !tbaa !696
  %conv130 = fpext float %62 to double, !dbg !756
  %call131 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([40 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i8* %57, i32 %58, i32 %59, double %conv122, double %conv126, double %conv130) #8, !dbg !756
  %indvars.iv.next270 = add i64 %indvars.iv269, 1, !dbg !754
  %63 = load i32* %nBU, align 4, !dbg !754, !tbaa !647
  %64 = trunc i64 %indvars.iv.next270 to i32, !dbg !754
  %cmp103 = icmp slt i32 %64, %63, !dbg !754
  br i1 %cmp103, label %for.body105, label %for.end134, !dbg !754

for.end134:                                       ; preds = %for.body105, %for.end99
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str57, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %call), !dbg !758
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !516), !dbg !759
  %nIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7, !dbg !759
  %66 = load i32* %nIP, align 4, !dbg !759, !tbaa !647
  %cmp137261 = icmp sgt i32 %66, 0, !dbg !759
  br i1 %cmp137261, label %for.body139.lr.ph, label %for.end170, !dbg !759

for.body139.lr.ph:                                ; preds = %for.end134
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11, !dbg !761
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3, !dbg !761
  br label %for.body139, !dbg !759

for.body139:                                      ; preds = %for.body139.lr.ph, %for.inc168
  %indvars.iv = phi i64 [ 0, %for.body139.lr.ph ], [ %indvars.iv.next, %for.inc168 ]
  %67 = load %struct.t_coupl_iparams** %tIP, align 8, !dbg !761, !tbaa !652
  %type = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 0, !dbg !761
  %68 = load i32* %type, align 4, !dbg !761, !tbaa !647
  %idxprom142 = sext i32 %68 to i64, !dbg !761
  %69 = load i32** %functype, align 8, !dbg !761, !tbaa !652
  %arrayidx143 = getelementptr inbounds i32* %69, i64 %idxprom142, !dbg !761
  %70 = load i32* %arrayidx143, align 4, !dbg !761, !tbaa !647
  tail call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !517), !dbg !761
  %cond = icmp eq i32 %70, 0, !dbg !763
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !763

sw.bb:                                            ; preds = %for.body139
  %eObs147 = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 1, !dbg !764
  %71 = load i32* %eObs147, align 4, !dbg !764, !tbaa !647
  %idxprom148 = sext i32 %71 to i64, !dbg !764
  %arrayidx149 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom148, !dbg !764
  %72 = load i8** %arrayidx149, align 8, !dbg !764, !tbaa !652
  %73 = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 2, i32 0, i32 1, !dbg !764
  %74 = load float* %73, align 4, !dbg !764, !tbaa !696
  %conv157 = fpext float %74 to double, !dbg !764
  %rA = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 2, i32 0, i32 0, !dbg !764
  %75 = load float* %rA, align 4, !dbg !764, !tbaa !696
  %conv163 = fpext float %75 to double, !dbg !764
  %call164 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([31 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i8* %72, i32 %68, double %conv157, double %conv163) #8, !dbg !764
  br label %for.inc168, !dbg !766

sw.default:                                       ; preds = %for.body139
  %76 = load %struct._IO_FILE** @stderr, align 8, !dbg !767, !tbaa !652
  %idxprom165 = sext i32 %70 to i64, !dbg !767
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom165, i32 1, !dbg !767
  %77 = load i8** %longname, align 8, !dbg !767, !tbaa !652
  %call167 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([30 x i8]* @.str60, i64 0, i64 0), i8* %77) #8, !dbg !767
  br label %for.inc168, !dbg !768

for.inc168:                                       ; preds = %sw.bb, %sw.default
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !759
  %78 = load i32* %nIP, align 4, !dbg !759, !tbaa !647
  %79 = trunc i64 %indvars.iv.next to i32, !dbg !759
  %cmp137 = icmp slt i32 %79, %78, !dbg !759
  br i1 %cmp137, label %for.body139, label %for.end170, !dbg !759

for.end170:                                       ; preds = %for.inc168, %for.end134
  tail call void @ffclose(%struct._IO_FILE* %call) #8, !dbg !769
  ret void, !dbg !770
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #3

; Function Attrs: optsize
declare void @nice_header(%struct._IO_FILE*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define void @read_gct(i8* %fn, %struct.t_coupl_rec* nocapture %tcr) #0 {
entry:
  %type.i = alloca i32, align 4
  %kb.i = alloca double, align 8
  %b0.i = alloca double, align 8
  %ati.i347 = alloca i32, align 4
  %xiQ.i = alloca double, align 8
  %ati.i307 = alloca i32, align 4
  %atj.i308 = alloca i32, align 4
  %xia.i = alloca double, align 8
  %xib.i = alloca double, align 8
  %xic.i = alloca double, align 8
  %ati.i = alloca i32, align 4
  %atj.i = alloca i32, align 4
  %buf.i = alloca [256 x i8], align 16
  %xi6.i = alloca double, align 8
  %xi12.i = alloca double, align 8
  %inp = alloca %struct.t_inpfile*, align 8
  %ninp = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !522), !dbg !771
  call void @llvm.dbg.value(metadata !{%struct.t_coupl_rec* %tcr}, i64 0, metadata !523), !dbg !771
  call void @llvm.dbg.declare(metadata !{%struct.t_inpfile** %inp}, metadata !524), !dbg !772
  call void @llvm.dbg.declare(metadata !{i32* %ninp}, metadata !536), !dbg !773
  %call = call %struct.t_inpfile* @read_inpfile(i8* %fn, i32* %ninp) #8, !dbg !774
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile* %call}, i64 0, metadata !524), !dbg !774
  store %struct.t_inpfile* %call, %struct.t_inpfile** %inp, align 8, !dbg !774, !tbaa !652
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !534), !dbg !775
  br label %for.body, !dbg !775

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv476 = phi i64 [ 0, %entry ], [ %indvars.iv.next477, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv476, !dbg !777
  store i32 0, i32* %arrayidx, align 4, !dbg !777, !tbaa !647
  %arrayidx2 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv476, !dbg !779
  %0 = load i8** %arrayidx2, align 8, !dbg !779, !tbaa !652
  %call3 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* %0, float 0.000000e+00) #8, !dbg !779
  %arrayidx5 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv476, !dbg !779
  store float %call3, float* %arrayidx5, align 4, !dbg !779, !tbaa !696
  %indvars.iv.next477 = add i64 %indvars.iv476, 1, !dbg !775
  %lftr.wideiv478 = trunc i64 %indvars.iv.next477 to i32, !dbg !775
  %exitcond479 = icmp eq i32 %lftr.wideiv478, 14, !dbg !775
  br i1 %exitcond479, label %for.end, label %for.body, !dbg !775

for.end:                                          ; preds = %for.body
  %1 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !dbg !780, !tbaa !652
  %call6 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* %1, i32 1) #8, !dbg !780
  %nmemory = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12, !dbg !780
  store i32 %call6, i32* %nmemory, align 4, !dbg !780, !tbaa !647
  %2 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !dbg !781, !tbaa !652
  %call7 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %2, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #8, !dbg !781
  %bInter = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13, !dbg !781
  store i32 %call7, i32* %bInter, align 4, !dbg !781, !tbaa !647
  %3 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !dbg !782, !tbaa !652
  %call8 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %3, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #8, !dbg !782
  %bVirial = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14, !dbg !782
  store i32 %call8, i32* %bVirial, align 4, !dbg !782, !tbaa !647
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8, !dbg !783
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9, !dbg !784
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10, !dbg !785
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11, !dbg !786
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !540), !dbg !787
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !540), !dbg !788
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !539), !dbg !787
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !789), !dbg !793
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !539), !dbg !794
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !539), !dbg !796
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !538), !dbg !787
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !797), !dbg !799
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !538), !dbg !800
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !538), !dbg !802
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !537), !dbg !787
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !803), !dbg !805
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !537), !dbg !806
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !537), !dbg !808
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !534), !dbg !809
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !536), !dbg !809
  %4 = bitcast %struct.t_coupl_LJ** %tcLJ to i8*, !dbg !809
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 8, i1 false), !dbg !784
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !536), !dbg !809
  %5 = load i32* %ninp, align 4, !dbg !809, !tbaa !647
  %cmp10433 = icmp sgt i32 %5, 0, !dbg !809
  br i1 %cmp10433, label %for.body11.lr.ph, label %for.end212, !dbg !809

for.body11.lr.ph:                                 ; preds = %for.end
  %6 = bitcast i32* %ati.i to i8*, !dbg !799
  %7 = bitcast i32* %atj.i to i8*, !dbg !799
  %8 = bitcast double* %xi6.i to i8*, !dbg !799
  %9 = bitcast double* %xi12.i to i8*, !dbg !799
  %10 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0, !dbg !810
  %11 = bitcast i32* %ati.i307 to i8*, !dbg !793
  %12 = bitcast i32* %atj.i308 to i8*, !dbg !793
  %13 = bitcast double* %xia.i to i8*, !dbg !793
  %14 = bitcast double* %xib.i to i8*, !dbg !793
  %15 = bitcast double* %xic.i to i8*, !dbg !793
  %16 = bitcast i32* %ati.i347 to i8*, !dbg !805
  %17 = bitcast double* %xiQ.i to i8*, !dbg !805
  %18 = bitcast i32* %type.i to i8*, !dbg !811
  %19 = bitcast double* %kb.i to i8*, !dbg !811
  %20 = bitcast double* %b0.i to i8*, !dbg !811
  br label %for.body11, !dbg !809

for.cond77.preheader:                             ; preds = %for.inc74
  %cmp78428 = icmp sgt i32 %inc7.i409414, 1, !dbg !806
  br i1 %cmp78428, label %for.body82.lr.ph, label %for.cond102.preheader, !dbg !806

for.body11:                                       ; preds = %for.inc74, %for.body11.lr.ph
  %indvars.iv474 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next475, %for.inc74 ]
  %inc17.i400442 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc17.i397417, %for.inc74 ]
  %inc43.i404439 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc43.i401416, %for.inc74 ]
  %inc36.i408436 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc36.i405415, %for.inc74 ]
  %inc7.i412434 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc7.i409414, %for.inc74 ]
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !541), !dbg !813
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !524), !dbg !814
  %21 = load %struct.t_inpfile** %inp, align 8, !dbg !814, !tbaa !652
  %name = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 2, !dbg !814
  %22 = load i8** %name, align 8, !dbg !814, !tbaa !652
  %call14 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0)) #9, !dbg !814
  %cmp15 = icmp eq i32 %call14, 0, !dbg !814
  br i1 %cmp15, label %if.then, label %if.else, !dbg !814

if.then:                                          ; preds = %for.body11
  %value = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 3, !dbg !798
  %23 = load i8** %value, align 8, !dbg !798, !tbaa !652
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !799
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !799
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !799
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !799
  call void @llvm.dbg.value(metadata !{%struct.t_coupl_LJ** %tcLJ}, i64 0, metadata !815) #2, !dbg !799
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !816) #2, !dbg !799
  call void @llvm.dbg.declare(metadata !{i32* %ati.i}, metadata !618) #2, !dbg !817
  call void @llvm.dbg.declare(metadata !{i32* %atj.i}, metadata !619) #2, !dbg !817
  call void @llvm.lifetime.start(i64 256, i8* %10) #2, !dbg !810
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !621) #2, !dbg !810
  call void @llvm.dbg.declare(metadata !{double* %xi6.i}, metadata !622) #2, !dbg !818
  call void @llvm.dbg.declare(metadata !{double* %xi12.i}, metadata !623) #2, !dbg !818
  %call.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([13 x i8]* @.str77, i64 0, i64 0), i8* %10, i32* %ati.i, i32* %atj.i, double* %xi6.i, double* %xi12.i) #8, !dbg !819
  %cmp.i = icmp eq i32 %call.i, 5, !dbg !819
  br i1 %cmp.i, label %if.end.i, label %if.then65, !dbg !819

if.end.i:                                         ; preds = %if.then
  %call2.i = call fastcc i32 @Name2eo(i8* %10) #8, !dbg !820
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !821) #2, !dbg !820
  %cmp3.i = icmp eq i32 %call2.i, -1, !dbg !820
  br i1 %cmp3.i, label %if.then4.i, label %for.cond.preheader.i, !dbg !820

if.then4.i:                                       ; preds = %if.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str78, i64 0, i64 0), i8* %10) #8, !dbg !822
  br label %for.cond.preheader.i, !dbg !822

for.cond.preheader.i:                             ; preds = %if.then4.i, %if.end.i
  %cmp7100.i = icmp sgt i32 %inc36.i408436, 0, !dbg !823
  br i1 %cmp7100.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !823

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %24 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !825, !tbaa !652
  call void @llvm.dbg.value(metadata !{i32* %ati.i}, i64 0, metadata !827) #2, !dbg !825
  call void @llvm.dbg.value(metadata !{i32* %ati.i}, i64 0, metadata !618), !dbg !825
  %25 = load i32* %ati.i, align 4, !dbg !825, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i}, i64 0, metadata !828) #2, !dbg !825
  call void @llvm.dbg.value(metadata !{i32* %atj.i}, i64 0, metadata !619), !dbg !825
  %26 = load i32* %atj.i, align 4, !dbg !825, !tbaa !647
  br label %for.body.i, !dbg !823

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %j.0101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %at_i.i = getelementptr inbounds %struct.t_coupl_LJ* %24, i64 %indvars.iv.i, i32 0, !dbg !825
  %27 = load i32* %at_i.i, align 4, !dbg !825, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %ati.i}, i64 0, metadata !827) #2, !dbg !825
  %cmp8.i = icmp eq i32 %27, %25, !dbg !825
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.inc.i, !dbg !825

land.lhs.true.i:                                  ; preds = %for.body.i
  %at_j.i = getelementptr inbounds %struct.t_coupl_LJ* %24, i64 %indvars.iv.i, i32 1, !dbg !825
  %28 = load i32* %at_j.i, align 4, !dbg !825, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i}, i64 0, metadata !828) #2, !dbg !825
  %cmp11.i = icmp eq i32 %28, %26, !dbg !825
  br i1 %cmp11.i, label %land.lhs.true12.i, label %for.inc.i, !dbg !825

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %xi_6.i = getelementptr inbounds %struct.t_coupl_LJ* %24, i64 %indvars.iv.i, i32 6, !dbg !829
  %29 = load float* %xi_6.i, align 4, !dbg !829, !tbaa !696
  %fabsf.i = call float @fabsf(float %29) #6, !dbg !829
  %30 = fpext float %fabsf.i to double, !dbg !829
  %cmp16.i = fcmp ogt double %30, 1.200000e-38, !dbg !829
  br i1 %cmp16.i, label %land.lhs.true24.i, label %lor.lhs.false.i, !dbg !829

lor.lhs.false.i:                                  ; preds = %land.lhs.true12.i
  %xi_12.i = getelementptr inbounds %struct.t_coupl_LJ* %24, i64 %indvars.iv.i, i32 7, !dbg !829
  %31 = load float* %xi_12.i, align 4, !dbg !829, !tbaa !696
  %fabsf99.i = call float @fabsf(float %31) #6, !dbg !829
  %32 = fpext float %fabsf99.i to double, !dbg !829
  %cmp22.i = fcmp ogt double %32, 1.200000e-38, !dbg !829
  br i1 %cmp22.i, label %land.lhs.true24.i, label %for.inc.i, !dbg !829

land.lhs.true24.i:                                ; preds = %lor.lhs.false.i, %land.lhs.true12.i
  %eObs.i = getelementptr inbounds %struct.t_coupl_LJ* %24, i64 %indvars.iv.i, i32 2, !dbg !830
  %33 = load i32* %eObs.i, align 4, !dbg !830, !tbaa !647
  %sub.i = sub nsw i32 %33, %call2.i, !dbg !830
  %conv27.i = sitofp i32 %sub.i to double, !dbg !830
  %call28.i = call double @fabs(double %conv27.i) #10, !dbg !830
  %cmp29.i = fcmp olt double %call28.i, 1.200000e-38, !dbg !830
  br i1 %cmp29.i, label %for.end.i, label %for.inc.i, !dbg !830

for.inc.i:                                        ; preds = %land.lhs.true24.i, %lor.lhs.false.i, %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !823
  %inc.i = add nsw i32 %j.0101.i, 1, !dbg !823
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !831) #2, !dbg !823
  %34 = trunc i64 %indvars.iv.next.i to i32, !dbg !823
  %cmp7.i = icmp slt i32 %34, %inc36.i408436, !dbg !823
  br i1 %cmp7.i, label %for.body.i, label %for.end.i, !dbg !823

for.end.i:                                        ; preds = %for.inc.i, %land.lhs.true24.i, %for.cond.preheader.i
  %j.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i ], [ %j.0101.i, %land.lhs.true24.i ]
  %cmp33.i = icmp eq i32 %j.0.lcssa.i, %inc36.i408436, !dbg !832
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i, !dbg !832

if.then35.i:                                      ; preds = %for.end.i
  %inc36.i = add nsw i32 %inc36.i408436, 1, !dbg !833
  call void @llvm.dbg.value(metadata !{i32 %inc36.i}, i64 0, metadata !538), !dbg !833
  call void @llvm.dbg.value(metadata !{i32 %inc36.i}, i64 0, metadata !797), !dbg !799
  call void @llvm.dbg.value(metadata !{i32 %inc36.i}, i64 0, metadata !538), !dbg !800
  call void @llvm.dbg.value(metadata !{i32 %inc36.i}, i64 0, metadata !538), !dbg !802
  %35 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !835, !tbaa !652
  %36 = bitcast %struct.t_coupl_LJ* %35 to i8*, !dbg !835
  %mul.i = shl i32 %inc36.i, 5, !dbg !835
  %call39.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 299, i8* %36, i32 %mul.i) #8, !dbg !835
  %37 = bitcast i8* %call39.i to %struct.t_coupl_LJ*, !dbg !835
  store %struct.t_coupl_LJ* %37, %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !835, !tbaa !652
  br label %if.end41.i, !dbg !836

if.else.i:                                        ; preds = %for.end.i
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !837, !tbaa !652
  %call40.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([54 x i8]* @.str80, i64 0, i64 0), i8* %23) #8, !dbg !837
  %.pre.i = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !838, !tbaa !652
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then35.i
  %inc36.i407 = phi i32 [ %inc36.i408436, %if.else.i ], [ %inc36.i, %if.then35.i ]
  %39 = phi %struct.t_coupl_LJ* [ %.pre.i, %if.else.i ], [ %37, %if.then35.i ]
  %idxprom42.i = sext i32 %j.0.lcssa.i to i64, !dbg !838
  %at_i.i.i = getelementptr inbounds %struct.t_coupl_LJ* %39, i64 %idxprom42.i, i32 0, !dbg !839
  store i32 0, i32* %at_i.i.i, align 4, !dbg !839, !tbaa !647
  %at_j.i.i = getelementptr inbounds %struct.t_coupl_LJ* %39, i64 %idxprom42.i, i32 1, !dbg !840
  store i32 0, i32* %at_j.i.i, align 4, !dbg !840, !tbaa !647
  %eObs.i.i = getelementptr inbounds %struct.t_coupl_LJ* %39, i64 %idxprom42.i, i32 2, !dbg !841
  store i32 -1, i32* %eObs.i.i, align 4, !dbg !841, !tbaa !647
  %bPrint.i.i = getelementptr inbounds %struct.t_coupl_LJ* %39, i64 %idxprom42.i, i32 3, !dbg !842
  store i32 1, i32* %bPrint.i.i, align 4, !dbg !842, !tbaa !647
  %c6.i.i = getelementptr inbounds %struct.t_coupl_LJ* %39, i64 %idxprom42.i, i32 4, !dbg !843
  %40 = bitcast float* %c6.i.i to i8*, !dbg !844
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 16, i32 4, i1 false) #2, !dbg !845
  %41 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !846, !tbaa !652
  %eObs46.i = getelementptr inbounds %struct.t_coupl_LJ* %41, i64 %idxprom42.i, i32 2, !dbg !846
  store i32 %call2.i, i32* %eObs46.i, align 4, !dbg !846, !tbaa !647
  br i1 %cmp3.i, label %if.then49.i, label %if.end51.i, !dbg !846

if.then49.i:                                      ; preds = %if.end41.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str78, i64 0, i64 0), i8* %10) #8, !dbg !847
  %.pre104.i = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !849, !tbaa !652
  br label %if.end51.i, !dbg !850

if.end51.i:                                       ; preds = %if.then49.i, %if.end41.i
  %42 = phi %struct.t_coupl_LJ* [ %.pre104.i, %if.then49.i ], [ %41, %if.end41.i ]
  call void @llvm.dbg.value(metadata !{i32* %ati.i}, i64 0, metadata !827) #2, !dbg !849
  call void @llvm.dbg.value(metadata !{i32* %ati.i}, i64 0, metadata !618), !dbg !849
  %43 = load i32* %ati.i, align 4, !dbg !849, !tbaa !647
  %at_i54.i = getelementptr inbounds %struct.t_coupl_LJ* %42, i64 %idxprom42.i, i32 0, !dbg !849
  store i32 %43, i32* %at_i54.i, align 4, !dbg !849, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i}, i64 0, metadata !828) #2, !dbg !851
  call void @llvm.dbg.value(metadata !{i32* %atj.i}, i64 0, metadata !619), !dbg !851
  %44 = load i32* %atj.i, align 4, !dbg !851, !tbaa !647
  %at_j57.i = getelementptr inbounds %struct.t_coupl_LJ* %42, i64 %idxprom42.i, i32 1, !dbg !851
  store i32 %44, i32* %at_j57.i, align 4, !dbg !851, !tbaa !647
  call void @llvm.dbg.value(metadata !{double* %xi6.i}, i64 0, metadata !852) #2, !dbg !853
  call void @llvm.dbg.value(metadata !{double* %xi6.i}, i64 0, metadata !622), !dbg !853
  %45 = load double* %xi6.i, align 8, !dbg !853, !tbaa !854
  %conv58.i = fptrunc double %45 to float, !dbg !853
  %xi_661.i = getelementptr inbounds %struct.t_coupl_LJ* %42, i64 %idxprom42.i, i32 6, !dbg !853
  store float %conv58.i, float* %xi_661.i, align 4, !dbg !853, !tbaa !696
  call void @llvm.dbg.value(metadata !{double* %xi12.i}, i64 0, metadata !855) #2, !dbg !856
  call void @llvm.dbg.value(metadata !{double* %xi12.i}, i64 0, metadata !623), !dbg !856
  %46 = load double* %xi12.i, align 8, !dbg !856, !tbaa !854
  %conv62.i = fptrunc double %46 to float, !dbg !856
  %xi_1265.i = getelementptr inbounds %struct.t_coupl_LJ* %42, i64 %idxprom42.i, i32 7, !dbg !856
  store float %conv62.i, float* %xi_1265.i, align 4, !dbg !856, !tbaa !696
  %idxprom66.i = sext i32 %call2.i to i64, !dbg !857
  %arrayidx67.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom66.i, !dbg !857
  store i32 1, i32* %arrayidx67.i, align 4, !dbg !857, !tbaa !647
  br label %for.inc74, !dbg !858

if.else:                                          ; preds = %for.body11
  %call24 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0)) #9, !dbg !859
  %cmp25 = icmp eq i32 %call24, 0, !dbg !859
  br i1 %cmp25, label %if.then26, label %if.else34, !dbg !859

if.then26:                                        ; preds = %if.else
  %value30 = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 3, !dbg !790
  %47 = load i8** %value30, align 8, !dbg !790, !tbaa !652
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !793
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !793
  call void @llvm.lifetime.start(i64 8, i8* %13) #2, !dbg !793
  call void @llvm.lifetime.start(i64 8, i8* %14) #2, !dbg !793
  call void @llvm.lifetime.start(i64 8, i8* %15) #2, !dbg !793
  call void @llvm.dbg.value(metadata !{%struct.t_coupl_BU** %tcBU}, i64 0, metadata !860) #2, !dbg !793
  call void @llvm.dbg.value(metadata !{i8* %47}, i64 0, metadata !861) #2, !dbg !793
  call void @llvm.dbg.declare(metadata !{i32* %ati.i307}, metadata !596) #2, !dbg !862
  call void @llvm.dbg.declare(metadata !{i32* %atj.i308}, metadata !597) #2, !dbg !862
  call void @llvm.lifetime.start(i64 256, i8* %10) #2, !dbg !863
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !599) #2, !dbg !863
  call void @llvm.dbg.declare(metadata !{double* %xia.i}, metadata !600) #2, !dbg !864
  call void @llvm.dbg.declare(metadata !{double* %xib.i}, metadata !601) #2, !dbg !864
  call void @llvm.dbg.declare(metadata !{double* %xic.i}, metadata !602) #2, !dbg !864
  %call.i310 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %47, i8* getelementptr inbounds ([16 x i8]* @.str73, i64 0, i64 0), i8* %10, i32* %ati.i307, i32* %atj.i308, double* %xia.i, double* %xib.i, double* %xic.i) #8, !dbg !865
  %cmp.i311 = icmp eq i32 %call.i310, 6, !dbg !865
  br i1 %cmp.i311, label %if.end.i314, label %if.then65, !dbg !865

if.end.i314:                                      ; preds = %if.then26
  %call2.i312 = call fastcc i32 @Name2eo(i8* %10) #8, !dbg !866
  call void @llvm.dbg.value(metadata !{i32 %call2.i312}, i64 0, metadata !867) #2, !dbg !866
  %cmp3.i313 = icmp eq i32 %call2.i312, -1, !dbg !866
  br i1 %cmp3.i313, label %if.then4.i315, label %for.cond.preheader.i316, !dbg !866

if.then4.i315:                                    ; preds = %if.end.i314
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str74, i64 0, i64 0), i8* %10) #8, !dbg !868
  br label %for.cond.preheader.i316, !dbg !868

for.cond.preheader.i316:                          ; preds = %if.then4.i315, %if.end.i314
  %cmp7116.i = icmp sgt i32 %inc43.i404439, 0, !dbg !869
  br i1 %cmp7116.i, label %for.body.lr.ph.i317, label %for.end.i338, !dbg !869

for.body.lr.ph.i317:                              ; preds = %for.cond.preheader.i316
  %48 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !871, !tbaa !652
  call void @llvm.dbg.value(metadata !{i32* %ati.i307}, i64 0, metadata !873) #2, !dbg !871
  call void @llvm.dbg.value(metadata !{i32* %ati.i307}, i64 0, metadata !596), !dbg !871
  %49 = load i32* %ati.i307, align 4, !dbg !871, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i308}, i64 0, metadata !874) #2, !dbg !871
  call void @llvm.dbg.value(metadata !{i32* %atj.i308}, i64 0, metadata !597), !dbg !871
  %50 = load i32* %atj.i308, align 4, !dbg !871, !tbaa !647
  br label %for.body.i321, !dbg !869

for.body.i321:                                    ; preds = %for.inc.i336, %for.body.lr.ph.i317
  %indvars.iv.i318 = phi i64 [ 0, %for.body.lr.ph.i317 ], [ %indvars.iv.next.i333, %for.inc.i336 ]
  %j.0117.i = phi i32 [ 0, %for.body.lr.ph.i317 ], [ %inc.i334, %for.inc.i336 ]
  %at_i.i319 = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 0, !dbg !871
  %51 = load i32* %at_i.i319, align 4, !dbg !871, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %ati.i307}, i64 0, metadata !873) #2, !dbg !871
  %cmp8.i320 = icmp eq i32 %51, %49, !dbg !871
  br i1 %cmp8.i320, label %land.lhs.true.i324, label %for.inc.i336, !dbg !871

land.lhs.true.i324:                               ; preds = %for.body.i321
  %at_j.i322 = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 1, !dbg !871
  %52 = load i32* %at_j.i322, align 4, !dbg !871, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i308}, i64 0, metadata !874) #2, !dbg !871
  %cmp11.i323 = icmp eq i32 %52, %50, !dbg !871
  br i1 %cmp11.i323, label %land.lhs.true12.i327, label %for.inc.i336, !dbg !871

land.lhs.true12.i327:                             ; preds = %land.lhs.true.i324
  %xi_a.i = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 7, !dbg !875
  %53 = load float* %xi_a.i, align 4, !dbg !875, !tbaa !696
  %fabsf.i325 = call float @fabsf(float %53) #6, !dbg !875
  %54 = fpext float %fabsf.i325 to double, !dbg !875
  %cmp16.i326 = fcmp ogt double %54, 1.200000e-38, !dbg !875
  br i1 %cmp16.i326, label %land.lhs.true31.i, label %lor.lhs.false.i329, !dbg !875

lor.lhs.false.i329:                               ; preds = %land.lhs.true12.i327
  %xi_b.i = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 8, !dbg !875
  %55 = load float* %xi_b.i, align 4, !dbg !875, !tbaa !696
  %fabsf114.i = call float @fabsf(float %55) #6, !dbg !875
  %56 = fpext float %fabsf114.i to double, !dbg !875
  %cmp22.i328 = fcmp ogt double %56, 1.200000e-38, !dbg !875
  br i1 %cmp22.i328, label %land.lhs.true31.i, label %lor.lhs.false24.i, !dbg !875

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i329
  %xi_c.i = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 9, !dbg !875
  %57 = load float* %xi_c.i, align 4, !dbg !875, !tbaa !696
  %fabsf115.i = call float @fabsf(float %57) #6, !dbg !875
  %58 = fpext float %fabsf115.i to double, !dbg !875
  %cmp29.i330 = fcmp ogt double %58, 1.200000e-38, !dbg !875
  br i1 %cmp29.i330, label %land.lhs.true31.i, label %for.inc.i336, !dbg !875

land.lhs.true31.i:                                ; preds = %lor.lhs.false24.i, %lor.lhs.false.i329, %land.lhs.true12.i327
  %eObs.i331 = getelementptr inbounds %struct.t_coupl_BU* %48, i64 %indvars.iv.i318, i32 2, !dbg !876
  %59 = load i32* %eObs.i331, align 4, !dbg !876, !tbaa !647
  %sub.i332 = sub nsw i32 %59, %call2.i312, !dbg !876
  %conv34.i = sitofp i32 %sub.i332 to double, !dbg !876
  %call35.i = call double @fabs(double %conv34.i) #10, !dbg !876
  %cmp36.i = fcmp olt double %call35.i, 1.200000e-38, !dbg !876
  br i1 %cmp36.i, label %for.end.i338, label %for.inc.i336, !dbg !876

for.inc.i336:                                     ; preds = %land.lhs.true31.i, %lor.lhs.false24.i, %land.lhs.true.i324, %for.body.i321
  %indvars.iv.next.i333 = add i64 %indvars.iv.i318, 1, !dbg !869
  %inc.i334 = add nsw i32 %j.0117.i, 1, !dbg !869
  call void @llvm.dbg.value(metadata !{i32 %inc.i334}, i64 0, metadata !877) #2, !dbg !869
  %60 = trunc i64 %indvars.iv.next.i333 to i32, !dbg !869
  %cmp7.i335 = icmp slt i32 %60, %inc43.i404439, !dbg !869
  br i1 %cmp7.i335, label %for.body.i321, label %for.end.i338, !dbg !869

for.end.i338:                                     ; preds = %for.inc.i336, %land.lhs.true31.i, %for.cond.preheader.i316
  %j.0.lcssa.i337 = phi i32 [ 0, %for.cond.preheader.i316 ], [ %inc.i334, %for.inc.i336 ], [ %j.0117.i, %land.lhs.true31.i ]
  %cmp40.i = icmp eq i32 %j.0.lcssa.i337, %inc43.i404439, !dbg !878
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i341, !dbg !878

if.then42.i:                                      ; preds = %for.end.i338
  %inc43.i = add nsw i32 %inc43.i404439, 1, !dbg !879
  call void @llvm.dbg.value(metadata !{i32 %inc43.i}, i64 0, metadata !539), !dbg !879
  call void @llvm.dbg.value(metadata !{i32 %inc43.i}, i64 0, metadata !789), !dbg !793
  call void @llvm.dbg.value(metadata !{i32 %inc43.i}, i64 0, metadata !539), !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %inc43.i}, i64 0, metadata !539), !dbg !796
  %61 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !881, !tbaa !652
  %62 = bitcast %struct.t_coupl_BU* %61 to i8*, !dbg !881
  %mul.i339 = mul i32 %inc43.i, 40, !dbg !881
  %call46.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 336, i8* %62, i32 %mul.i339) #8, !dbg !881
  %63 = bitcast i8* %call46.i to %struct.t_coupl_BU*, !dbg !881
  store %struct.t_coupl_BU* %63, %struct.t_coupl_BU** %tcBU, align 8, !dbg !881, !tbaa !652
  br label %if.end48.i, !dbg !882

if.else.i341:                                     ; preds = %for.end.i338
  %64 = load %struct._IO_FILE** @stderr, align 8, !dbg !883, !tbaa !652
  %call47.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([54 x i8]* @.str76, i64 0, i64 0), i8* %47) #8, !dbg !883
  %.pre.i340 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !884, !tbaa !652
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else.i341, %if.then42.i
  %inc43.i403 = phi i32 [ %inc43.i404439, %if.else.i341 ], [ %inc43.i, %if.then42.i ]
  %65 = phi %struct.t_coupl_BU* [ %.pre.i340, %if.else.i341 ], [ %63, %if.then42.i ]
  %idxprom49.i = sext i32 %j.0.lcssa.i337 to i64, !dbg !884
  %at_i.i.i342 = getelementptr inbounds %struct.t_coupl_BU* %65, i64 %idxprom49.i, i32 0, !dbg !885
  store i32 0, i32* %at_i.i.i342, align 4, !dbg !885, !tbaa !647
  %at_j.i.i343 = getelementptr inbounds %struct.t_coupl_BU* %65, i64 %idxprom49.i, i32 1, !dbg !886
  store i32 0, i32* %at_j.i.i343, align 4, !dbg !886, !tbaa !647
  %eObs.i.i344 = getelementptr inbounds %struct.t_coupl_BU* %65, i64 %idxprom49.i, i32 2, !dbg !887
  store i32 -1, i32* %eObs.i.i344, align 4, !dbg !887, !tbaa !647
  %bPrint.i.i345 = getelementptr inbounds %struct.t_coupl_BU* %65, i64 %idxprom49.i, i32 3, !dbg !888
  store i32 1, i32* %bPrint.i.i345, align 4, !dbg !888, !tbaa !647
  %a.i.i = getelementptr inbounds %struct.t_coupl_BU* %65, i64 %idxprom49.i, i32 4, !dbg !889
  %66 = bitcast float* %a.i.i to i8*, !dbg !890
  call void @llvm.memset.p0i8.i64(i8* %66, i8 0, i64 24, i32 4, i1 false) #2, !dbg !891
  %67 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !892, !tbaa !652
  %eObs53.i = getelementptr inbounds %struct.t_coupl_BU* %67, i64 %idxprom49.i, i32 2, !dbg !892
  store i32 %call2.i312, i32* %eObs53.i, align 4, !dbg !892, !tbaa !647
  br i1 %cmp3.i313, label %if.then56.i, label %if.end58.i, !dbg !892

if.then56.i:                                      ; preds = %if.end48.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str74, i64 0, i64 0), i8* %10) #8, !dbg !893
  %.pre120.i = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !895, !tbaa !652
  br label %if.end58.i, !dbg !896

if.end58.i:                                       ; preds = %if.then56.i, %if.end48.i
  %68 = phi %struct.t_coupl_BU* [ %.pre120.i, %if.then56.i ], [ %67, %if.end48.i ]
  call void @llvm.dbg.value(metadata !{i32* %ati.i307}, i64 0, metadata !873) #2, !dbg !895
  call void @llvm.dbg.value(metadata !{i32* %ati.i307}, i64 0, metadata !596), !dbg !895
  %69 = load i32* %ati.i307, align 4, !dbg !895, !tbaa !647
  %at_i61.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 0, !dbg !895
  store i32 %69, i32* %at_i61.i, align 4, !dbg !895, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %atj.i308}, i64 0, metadata !874) #2, !dbg !897
  call void @llvm.dbg.value(metadata !{i32* %atj.i308}, i64 0, metadata !597), !dbg !897
  %70 = load i32* %atj.i308, align 4, !dbg !897, !tbaa !647
  %at_j64.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 1, !dbg !897
  store i32 %70, i32* %at_j64.i, align 4, !dbg !897, !tbaa !647
  call void @llvm.dbg.value(metadata !{double* %xia.i}, i64 0, metadata !898) #2, !dbg !899
  call void @llvm.dbg.value(metadata !{double* %xia.i}, i64 0, metadata !600), !dbg !899
  %71 = load double* %xia.i, align 8, !dbg !899, !tbaa !854
  %conv65.i = fptrunc double %71 to float, !dbg !899
  %xi_a68.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 7, !dbg !899
  store float %conv65.i, float* %xi_a68.i, align 4, !dbg !899, !tbaa !696
  call void @llvm.dbg.value(metadata !{double* %xib.i}, i64 0, metadata !900) #2, !dbg !901
  call void @llvm.dbg.value(metadata !{double* %xib.i}, i64 0, metadata !601), !dbg !901
  %72 = load double* %xib.i, align 8, !dbg !901, !tbaa !854
  %conv69.i = fptrunc double %72 to float, !dbg !901
  %xi_b72.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 8, !dbg !901
  store float %conv69.i, float* %xi_b72.i, align 4, !dbg !901, !tbaa !696
  call void @llvm.dbg.value(metadata !{double* %xic.i}, i64 0, metadata !902) #2, !dbg !903
  call void @llvm.dbg.value(metadata !{double* %xic.i}, i64 0, metadata !602), !dbg !903
  %73 = load double* %xic.i, align 8, !dbg !903, !tbaa !854
  %conv73.i = fptrunc double %73 to float, !dbg !903
  %xi_c76.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 9, !dbg !903
  store float %conv73.i, float* %xi_c76.i, align 4, !dbg !903, !tbaa !696
  %idxprom77.i = sext i32 %call2.i312 to i64, !dbg !904
  %arrayidx78.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom77.i, !dbg !904
  store i32 1, i32* %arrayidx78.i, align 4, !dbg !904, !tbaa !647
  br label %for.inc74, !dbg !905

if.else34:                                        ; preds = %if.else
  %call38 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #9, !dbg !906
  %cmp39 = icmp eq i32 %call38, 0, !dbg !906
  br i1 %cmp39, label %if.then40, label %if.else48, !dbg !906

if.then40:                                        ; preds = %if.else34
  %value44 = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 3, !dbg !804
  %74 = load i8** %value44, align 8, !dbg !804, !tbaa !652
  call void @llvm.lifetime.start(i64 4, i8* %16) #2, !dbg !805
  call void @llvm.lifetime.start(i64 8, i8* %17) #2, !dbg !805
  call void @llvm.dbg.value(metadata !{%struct.t_coupl_Q** %tcQ}, i64 0, metadata !907) #2, !dbg !805
  call void @llvm.dbg.value(metadata !{i8* %74}, i64 0, metadata !908) #2, !dbg !805
  call void @llvm.dbg.declare(metadata !{i32* %ati.i347}, metadata !577) #2, !dbg !909
  call void @llvm.lifetime.start(i64 256, i8* %10) #2, !dbg !910
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !579) #2, !dbg !910
  call void @llvm.dbg.declare(metadata !{double* %xiQ.i}, metadata !580) #2, !dbg !911
  %call.i349 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %74, i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0), i8* %10, i32* %ati.i347, double* %xiQ.i) #8, !dbg !912
  %cmp.i350 = icmp eq i32 %call.i349, 3, !dbg !912
  br i1 %cmp.i350, label %for.cond.preheader.i351, label %if.then65, !dbg !912

for.cond.preheader.i351:                          ; preds = %if.then40
  %cmp153.i = icmp sgt i32 %inc7.i412434, 0, !dbg !913
  br i1 %cmp153.i, label %for.body.lr.ph.i352, label %for.end.i359, !dbg !913

for.body.lr.ph.i352:                              ; preds = %for.cond.preheader.i351
  %75 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !915, !tbaa !652
  call void @llvm.dbg.value(metadata !{i32* %ati.i347}, i64 0, metadata !917) #2, !dbg !915
  call void @llvm.dbg.value(metadata !{i32* %ati.i347}, i64 0, metadata !577), !dbg !915
  %76 = load i32* %ati.i347, align 4, !dbg !915, !tbaa !647
  br label %for.body.i357, !dbg !913

for.cond.i:                                       ; preds = %for.body.i357
  %77 = trunc i64 %indvars.iv.next.i355 to i32, !dbg !913
  %cmp1.i = icmp slt i32 %77, %inc7.i412434, !dbg !913
  br i1 %cmp1.i, label %for.body.i357, label %for.end.i359, !dbg !913

for.body.i357:                                    ; preds = %for.cond.i, %for.body.lr.ph.i352
  %indvars.iv.i353 = phi i64 [ 0, %for.body.lr.ph.i352 ], [ %indvars.iv.next.i355, %for.cond.i ]
  %j.054.i = phi i32 [ 0, %for.body.lr.ph.i352 ], [ %inc.i356, %for.cond.i ]
  %at_i.i354 = getelementptr inbounds %struct.t_coupl_Q* %75, i64 %indvars.iv.i353, i32 0, !dbg !915
  %78 = load i32* %at_i.i354, align 4, !dbg !915, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %ati.i347}, i64 0, metadata !917) #2, !dbg !915
  %cmp2.i = icmp eq i32 %78, %76, !dbg !915
  %indvars.iv.next.i355 = add i64 %indvars.iv.i353, 1, !dbg !913
  %inc.i356 = add nsw i32 %j.054.i, 1, !dbg !913
  call void @llvm.dbg.value(metadata !{i32 %inc.i356}, i64 0, metadata !918) #2, !dbg !913
  br i1 %cmp2.i, label %for.end.i359, label %for.cond.i, !dbg !915

for.end.i359:                                     ; preds = %for.body.i357, %for.cond.i, %for.cond.preheader.i351
  %j.0.lcssa.i358 = phi i32 [ 0, %for.cond.preheader.i351 ], [ %j.054.i, %for.body.i357 ], [ %inc.i356, %for.cond.i ]
  %cmp5.i = icmp eq i32 %j.0.lcssa.i358, %inc7.i412434, !dbg !919
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i362, !dbg !919

if.then6.i:                                       ; preds = %for.end.i359
  %inc7.i = add nsw i32 %inc7.i412434, 1, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc7.i}, i64 0, metadata !537), !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %inc7.i}, i64 0, metadata !803), !dbg !805
  call void @llvm.dbg.value(metadata !{i32 %inc7.i}, i64 0, metadata !537), !dbg !806
  call void @llvm.dbg.value(metadata !{i32 %inc7.i}, i64 0, metadata !537), !dbg !808
  %79 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !922, !tbaa !652
  %80 = bitcast %struct.t_coupl_Q* %79 to i8*, !dbg !922
  %mul.i360 = mul i32 %inc7.i, 20, !dbg !922
  %call9.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 413, i8* %80, i32 %mul.i360) #8, !dbg !922
  %81 = bitcast i8* %call9.i to %struct.t_coupl_Q*, !dbg !922
  store %struct.t_coupl_Q* %81, %struct.t_coupl_Q** %tcQ, align 8, !dbg !922, !tbaa !652
  br label %if.end11.i, !dbg !923

if.else.i362:                                     ; preds = %for.end.i359
  %82 = load %struct._IO_FILE** @stderr, align 8, !dbg !924, !tbaa !652
  %call10.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([53 x i8]* @.str71, i64 0, i64 0), i8* %74) #8, !dbg !924
  %.pre.i361 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !925, !tbaa !652
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i362, %if.then6.i
  %inc7.i411 = phi i32 [ %inc7.i412434, %if.else.i362 ], [ %inc7.i, %if.then6.i ]
  %83 = phi %struct.t_coupl_Q* [ %.pre.i361, %if.else.i362 ], [ %81, %if.then6.i ]
  %idxprom12.i = sext i32 %j.0.lcssa.i358 to i64, !dbg !925
  %at_i.i.i363 = getelementptr inbounds %struct.t_coupl_Q* %83, i64 %idxprom12.i, i32 0, !dbg !926
  store i32 0, i32* %at_i.i.i363, align 4, !dbg !926, !tbaa !647
  %eObs.i.i364 = getelementptr inbounds %struct.t_coupl_Q* %83, i64 %idxprom12.i, i32 1, !dbg !927
  store i32 -1, i32* %eObs.i.i364, align 4, !dbg !927, !tbaa !647
  %bPrint.i.i365 = getelementptr inbounds %struct.t_coupl_Q* %83, i64 %idxprom12.i, i32 2, !dbg !928
  store i32 1, i32* %bPrint.i.i365, align 4, !dbg !928, !tbaa !647
  %Q.i.i = getelementptr inbounds %struct.t_coupl_Q* %83, i64 %idxprom12.i, i32 3, !dbg !929
  store float 0.000000e+00, float* %Q.i.i, align 4, !dbg !929, !tbaa !696
  %xi_Q.i.i = getelementptr inbounds %struct.t_coupl_Q* %83, i64 %idxprom12.i, i32 4, !dbg !930
  store float 0.000000e+00, float* %xi_Q.i.i, align 4, !dbg !930, !tbaa !696
  %call15.i = call fastcc i32 @Name2eo(i8* %10) #8, !dbg !931
  %84 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !931, !tbaa !652
  %eObs.i366 = getelementptr inbounds %struct.t_coupl_Q* %84, i64 %idxprom12.i, i32 1, !dbg !931
  store i32 %call15.i, i32* %eObs.i366, align 4, !dbg !931, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32 %call15.i}, i64 0, metadata !932) #2, !dbg !931
  %cmp21.i = icmp eq i32 %call15.i, -1, !dbg !933
  br i1 %cmp21.i, label %if.then23.i, label %if.end25.i, !dbg !933

if.then23.i:                                      ; preds = %if.end11.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str72, i64 0, i64 0), i8* %10) #8, !dbg !934
  %.pre57.i = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !936, !tbaa !652
  br label %if.end25.i, !dbg !937

if.end25.i:                                       ; preds = %if.then23.i, %if.end11.i
  %85 = phi %struct.t_coupl_Q* [ %.pre57.i, %if.then23.i ], [ %84, %if.end11.i ]
  call void @llvm.dbg.value(metadata !{i32* %ati.i347}, i64 0, metadata !917) #2, !dbg !936
  call void @llvm.dbg.value(metadata !{i32* %ati.i347}, i64 0, metadata !577), !dbg !936
  %86 = load i32* %ati.i347, align 4, !dbg !936, !tbaa !647
  %at_i28.i = getelementptr inbounds %struct.t_coupl_Q* %85, i64 %idxprom12.i, i32 0, !dbg !936
  store i32 %86, i32* %at_i28.i, align 4, !dbg !936, !tbaa !647
  call void @llvm.dbg.value(metadata !{double* %xiQ.i}, i64 0, metadata !938) #2, !dbg !939
  call void @llvm.dbg.value(metadata !{double* %xiQ.i}, i64 0, metadata !580), !dbg !939
  %87 = load double* %xiQ.i, align 8, !dbg !939, !tbaa !854
  %conv29.i = fptrunc double %87 to float, !dbg !939
  %xi_Q.i = getelementptr inbounds %struct.t_coupl_Q* %85, i64 %idxprom12.i, i32 4, !dbg !939
  store float %conv29.i, float* %xi_Q.i, align 4, !dbg !939, !tbaa !696
  %idxprom32.i = sext i32 %call15.i to i64, !dbg !940
  %arrayidx33.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom32.i, !dbg !940
  store i32 1, i32* %arrayidx33.i, align 4, !dbg !940, !tbaa !647
  br label %for.inc74, !dbg !941

if.else48:                                        ; preds = %if.else34
  %call52 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0)) #9, !dbg !942
  %cmp53 = icmp eq i32 %call52, 0, !dbg !942
  br i1 %cmp53, label %if.then54, label %for.inc74, !dbg !942

if.then54:                                        ; preds = %if.else48
  %value58 = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 3, !dbg !812
  %88 = load i8** %value58, align 8, !dbg !812, !tbaa !652
  call void @llvm.lifetime.start(i64 4, i8* %18) #2, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %19) #2, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !811
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !943) #2, !dbg !811
  call void @llvm.dbg.declare(metadata !{i32* %type.i}, metadata !554) #2, !dbg !944
  call void @llvm.lifetime.start(i64 256, i8* %10) #2, !dbg !945
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf.i}, metadata !555) #2, !dbg !945
  call void @llvm.dbg.declare(metadata !{double* %kb.i}, metadata !557) #2, !dbg !946
  call void @llvm.dbg.declare(metadata !{double* %b0.i}, metadata !559) #2, !dbg !946
  %call.i369 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %88, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i8* %10, i32* %type.i) #8, !dbg !947
  %cmp.i370 = icmp eq i32 %call.i369, 2, !dbg !947
  br i1 %cmp.i370, label %if.end.i373, label %if.then65, !dbg !947

if.end.i373:                                      ; preds = %if.then54
  %call2.i371 = call fastcc i32 @Name2eo(i8* %10) #8, !dbg !949
  call void @llvm.dbg.value(metadata !{i32 %call2.i371}, i64 0, metadata !950) #2, !dbg !949
  %cmp3.i372 = icmp eq i32 %call2.i371, -1, !dbg !949
  br i1 %cmp3.i372, label %if.then4.i374, label %for.cond.preheader.i375, !dbg !949

if.then4.i374:                                    ; preds = %if.end.i373
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), i8* %10) #8, !dbg !951
  br label %for.cond.preheader.i375, !dbg !951

for.cond.preheader.i375:                          ; preds = %if.then4.i374, %if.end.i373
  %cmp71.i = icmp sgt i32 %inc17.i400442, 0, !dbg !952
  br i1 %cmp71.i, label %for.body.lr.ph.i376, label %for.end.i383, !dbg !952

for.body.lr.ph.i376:                              ; preds = %for.cond.preheader.i375
  %89 = load %struct.t_coupl_iparams** %tIP, align 8, !dbg !954, !tbaa !652
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !956) #2, !dbg !954
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !554), !dbg !954
  %90 = load i32* %type.i, align 4, !dbg !954, !tbaa !647
  br label %for.body.i382, !dbg !952

for.cond.i378:                                    ; preds = %for.body.i382
  %91 = trunc i64 %indvars.iv.next.i380 to i32, !dbg !952
  %cmp7.i377 = icmp slt i32 %91, %inc17.i400442, !dbg !952
  br i1 %cmp7.i377, label %for.body.i382, label %for.end.i383, !dbg !952

for.body.i382:                                    ; preds = %for.cond.i378, %for.body.lr.ph.i376
  %indvars.iv.i379 = phi i64 [ 0, %for.body.lr.ph.i376 ], [ %indvars.iv.next.i380, %for.cond.i378 ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i376 ], [ %inc.i381, %for.cond.i378 ]
  %type8.i = getelementptr inbounds %struct.t_coupl_iparams* %89, i64 %indvars.iv.i379, i32 0, !dbg !954
  %92 = load i32* %type8.i, align 4, !dbg !954, !tbaa !647
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !956) #2, !dbg !954
  %cmp9.i = icmp eq i32 %92, %90, !dbg !954
  %indvars.iv.next.i380 = add i64 %indvars.iv.i379, 1, !dbg !952
  %inc.i381 = add nsw i32 %i.02.i, 1, !dbg !952
  call void @llvm.dbg.value(metadata !{i32 %inc.i381}, i64 0, metadata !957) #2, !dbg !952
  br i1 %cmp9.i, label %for.end.i383, label %for.cond.i378, !dbg !954

for.end.i383:                                     ; preds = %for.body.i382, %for.cond.i378, %for.cond.preheader.i375
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i375 ], [ %i.02.i, %for.body.i382 ], [ %inc.i381, %for.cond.i378 ]
  %cmp12.i = icmp slt i32 %i.0.lcssa.i, %inc17.i400442, !dbg !958
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i385, !dbg !958

if.then13.i:                                      ; preds = %for.end.i383
  %93 = load %struct._IO_FILE** @stderr, align 8, !dbg !959, !tbaa !652
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !956) #2, !dbg !959
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !554), !dbg !959
  %94 = load i32* %type.i, align 4, !dbg !959, !tbaa !647
  %call14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([44 x i8]* @.str65, i64 0, i64 0), i32 %94) #8, !dbg !959
  br label %if.end18.i, !dbg !961

if.else.i385:                                     ; preds = %for.end.i383
  call void @llvm.dbg.value(metadata !{i32 %inc17.i400.lcssa483495497}, i64 0, metadata !957) #2, !dbg !962
  %95 = load %struct.t_coupl_iparams** %tIP, align 8, !dbg !964, !tbaa !652
  %96 = bitcast %struct.t_coupl_iparams* %95 to i8*, !dbg !964
  %97 = mul i32 %inc17.i400442, 56, !dbg !964
  %mul.i384 = add i32 %97, 56, !dbg !964
  %call16.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 379, i8* %96, i32 %mul.i384) #8, !dbg !964
  %98 = bitcast i8* %call16.i to %struct.t_coupl_iparams*, !dbg !964
  store %struct.t_coupl_iparams* %98, %struct.t_coupl_iparams** %tIP, align 8, !dbg !964, !tbaa !652
  %inc17.i = add nsw i32 %inc17.i400442, 1, !dbg !965
  call void @llvm.dbg.value(metadata !{i32 %inc17.i}, i64 0, metadata !540), !dbg !965
  call void @llvm.dbg.value(metadata !{i32 %inc17.i}, i64 0, metadata !540), !dbg !788
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i385, %if.then13.i
  %inc17.i399 = phi i32 [ %inc17.i400442, %if.then13.i ], [ %inc17.i, %if.else.i385 ]
  %i.1.i = phi i32 [ %i.0.lcssa.i, %if.then13.i ], [ %inc17.i400442, %if.else.i385 ]
  %call20.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %88, i8* getelementptr inbounds ([11 x i8]* @.str67, i64 0, i64 0), i8* %10, i32* %type.i, double* %kb.i, double* %b0.i) #8, !dbg !966
  %cmp21.i386 = icmp eq i32 %call20.i, 4, !dbg !966
  br i1 %cmp21.i386, label %if.end24.i, label %if.then65, !dbg !966

if.end24.i:                                       ; preds = %if.end18.i
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !956) #2, !dbg !967
  call void @llvm.dbg.value(metadata !{i32* %type.i}, i64 0, metadata !554), !dbg !967
  %99 = load i32* %type.i, align 4, !dbg !967, !tbaa !647
  %idxprom25.i = sext i32 %i.1.i to i64, !dbg !967
  %100 = load %struct.t_coupl_iparams** %tIP, align 8, !dbg !967, !tbaa !652
  %type27.i = getelementptr inbounds %struct.t_coupl_iparams* %100, i64 %idxprom25.i, i32 0, !dbg !967
  store i32 %99, i32* %type27.i, align 4, !dbg !967, !tbaa !647
  %eObs.i387 = getelementptr inbounds %struct.t_coupl_iparams* %100, i64 %idxprom25.i, i32 1, !dbg !968
  store i32 %call2.i371, i32* %eObs.i387, align 4, !dbg !968, !tbaa !647
  call void @llvm.dbg.value(metadata !{double* %kb.i}, i64 0, metadata !969) #2, !dbg !970
  call void @llvm.dbg.value(metadata !{double* %kb.i}, i64 0, metadata !557), !dbg !970
  %101 = load double* %kb.i, align 8, !dbg !970, !tbaa !854
  %conv30.i = fptrunc double %101 to float, !dbg !970
  %102 = getelementptr inbounds %struct.t_coupl_iparams* %100, i64 %idxprom25.i, i32 2, i32 0, i32 1, !dbg !970
  store float %conv30.i, float* %102, align 4, !dbg !970, !tbaa !696
  call void @llvm.dbg.value(metadata !{double* %b0.i}, i64 0, metadata !971) #2, !dbg !972
  call void @llvm.dbg.value(metadata !{double* %b0.i}, i64 0, metadata !559), !dbg !972
  %103 = load double* %b0.i, align 8, !dbg !972, !tbaa !854
  %conv33.i = fptrunc double %103 to float, !dbg !972
  %rA.i = getelementptr inbounds %struct.t_coupl_iparams* %100, i64 %idxprom25.i, i32 2, i32 0, i32 0, !dbg !972
  store float %conv33.i, float* %rA.i, align 4, !dbg !972, !tbaa !696
  %idxprom38.i = sext i32 %call2.i371 to i64, !dbg !973
  %arrayidx39.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom38.i, !dbg !973
  store i32 1, i32* %arrayidx39.i, align 4, !dbg !973, !tbaa !647
  br label %for.inc74, !dbg !974

if.then65:                                        ; preds = %if.then, %if.then26, %if.then40, %if.then54, %if.end18.i
  %inc17.i397.ph = phi i32 [ %inc17.i400442, %if.then ], [ %inc17.i400442, %if.then26 ], [ %inc17.i400442, %if.then40 ], [ %inc17.i400442, %if.then54 ], [ %inc17.i399, %if.end18.i ]
  %104 = load %struct._IO_FILE** @stderr, align 8, !dbg !975, !tbaa !652
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !524), !dbg !975
  %105 = load %struct.t_inpfile** %inp, align 8, !dbg !975, !tbaa !652
  %name68 = getelementptr inbounds %struct.t_inpfile* %105, i64 %indvars.iv474, i32 2, !dbg !975
  %106 = load i8** %name68, align 8, !dbg !975, !tbaa !652
  %value71 = getelementptr inbounds %struct.t_inpfile* %105, i64 %indvars.iv474, i32 3, !dbg !975
  %107 = load i8** %value71, align 8, !dbg !975, !tbaa !652
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i8* %fn, i8* %106, i8* %107) #8, !dbg !975
  br label %for.inc74, !dbg !975

for.inc74:                                        ; preds = %if.end24.i, %if.end25.i, %if.end58.i, %if.end51.i, %if.else48, %if.then65
  %inc17.i397417 = phi i32 [ %inc17.i397.ph, %if.then65 ], [ %inc17.i400442, %if.else48 ], [ %inc17.i400442, %if.end51.i ], [ %inc17.i400442, %if.end58.i ], [ %inc17.i400442, %if.end25.i ], [ %inc17.i399, %if.end24.i ]
  %inc43.i401416 = phi i32 [ %inc43.i404439, %if.then65 ], [ %inc43.i404439, %if.else48 ], [ %inc43.i404439, %if.end51.i ], [ %inc43.i403, %if.end58.i ], [ %inc43.i404439, %if.end25.i ], [ %inc43.i404439, %if.end24.i ]
  %inc36.i405415 = phi i32 [ %inc36.i408436, %if.then65 ], [ %inc36.i408436, %if.else48 ], [ %inc36.i407, %if.end51.i ], [ %inc36.i408436, %if.end58.i ], [ %inc36.i408436, %if.end25.i ], [ %inc36.i408436, %if.end24.i ]
  %inc7.i409414 = phi i32 [ %inc7.i412434, %if.then65 ], [ %inc7.i412434, %if.else48 ], [ %inc7.i412434, %if.end51.i ], [ %inc7.i412434, %if.end58.i ], [ %inc7.i411, %if.end25.i ], [ %inc7.i412434, %if.end24.i ]
  %indvars.iv.next475 = add i64 %indvars.iv474, 1, !dbg !809
  call void @llvm.dbg.value(metadata !{i32* %ninp}, i64 0, metadata !536), !dbg !809
  %108 = load i32* %ninp, align 4, !dbg !809, !tbaa !647
  %109 = trunc i64 %indvars.iv.next475 to i32, !dbg !809
  %cmp10 = icmp slt i32 %109, %108, !dbg !809
  br i1 %cmp10, label %for.body11, label %for.cond77.preheader, !dbg !809

for.body82.lr.ph:                                 ; preds = %for.inc99, %for.cond77.preheader
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %for.inc99 ], [ 1, %for.cond77.preheader ]
  %indvars.iv466 = phi i32 [ %indvars.iv.next467, %for.inc99 ], [ 1, %for.cond77.preheader ], !dbg !976
  %110 = load %struct.t_coupl_Q** %tcQ, align 8, !dbg !978, !tbaa !652
  %at_i = getelementptr inbounds %struct.t_coupl_Q* %110, i64 %indvars.iv470, i32 0, !dbg !978
  br label %for.body82, !dbg !976

for.cond102.preheader:                            ; preds = %for.inc99, %for.cond77.preheader
  %cmp103424 = icmp sgt i32 %inc36.i405415, 1, !dbg !800
  br i1 %cmp103424, label %for.body107.lr.ph, label %for.cond156.preheader, !dbg !800

for.body82:                                       ; preds = %for.inc96, %for.body82.lr.ph
  %indvars.iv464 = phi i64 [ 0, %for.body82.lr.ph ], [ %indvars.iv.next465, %for.inc96 ]
  %111 = load i32* %at_i, align 4, !dbg !978, !tbaa !647
  %at_i89 = getelementptr inbounds %struct.t_coupl_Q* %110, i64 %indvars.iv464, i32 0, !dbg !978
  %112 = load i32* %at_i89, align 4, !dbg !978, !tbaa !647
  %cmp90 = icmp eq i32 %111, %112, !dbg !978
  br i1 %cmp90, label %if.then91, label %for.inc96, !dbg !978

if.then91:                                        ; preds = %for.body82
  %bPrint = getelementptr inbounds %struct.t_coupl_Q* %110, i64 %indvars.iv464, i32 2, !dbg !980
  store i32 0, i32* %bPrint, align 4, !dbg !980, !tbaa !647
  br label %for.inc96, !dbg !980

for.inc96:                                        ; preds = %for.body82, %if.then91
  %indvars.iv.next465 = add i64 %indvars.iv464, 1, !dbg !976
  %lftr.wideiv468 = trunc i64 %indvars.iv.next465 to i32, !dbg !976
  %exitcond469 = icmp eq i32 %lftr.wideiv468, %indvars.iv466, !dbg !976
  br i1 %exitcond469, label %for.inc99, label %for.body82, !dbg !976

for.inc99:                                        ; preds = %for.inc96
  %indvars.iv.next471 = add i64 %indvars.iv470, 1, !dbg !806
  %indvars.iv.next467 = add i32 %indvars.iv466, 1, !dbg !806
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next467}, i64 0, metadata !534), !dbg !806
  %lftr.wideiv472 = trunc i64 %indvars.iv.next471 to i32, !dbg !806
  %exitcond473 = icmp eq i32 %lftr.wideiv472, %inc7.i409414, !dbg !806
  br i1 %exitcond473, label %for.cond102.preheader, label %for.body82.lr.ph, !dbg !806

for.body107.lr.ph:                                ; preds = %for.inc153, %for.cond102.preheader
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %for.inc153 ], [ 1, %for.cond102.preheader ]
  %indvars.iv456 = phi i32 [ %indvars.iv.next457, %for.inc153 ], [ 1, %for.cond102.preheader ], !dbg !981
  %113 = load %struct.t_coupl_LJ** %tcLJ, align 8, !dbg !983, !tbaa !652
  %at_i111 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv460, i32 0, !dbg !983
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv460, i32 1, !dbg !983
  %.pre481 = load i32* %at_i111, align 4, !dbg !983, !tbaa !647
  br label %for.body107, !dbg !981

for.cond156.preheader:                            ; preds = %for.inc153, %for.cond102.preheader
  %cmp157420 = icmp sgt i32 %inc43.i401416, 1, !dbg !794
  br i1 %cmp157420, label %for.body161.lr.ph, label %for.end212, !dbg !794

for.body107:                                      ; preds = %for.inc150, %for.body107.lr.ph
  %indvars.iv454 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next455, %for.inc150 ]
  %at_i115 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv454, i32 0, !dbg !983
  %114 = load i32* %at_i115, align 4, !dbg !983, !tbaa !647
  %cmp116 = icmp eq i32 %.pre481, %114, !dbg !983
  br i1 %cmp116, label %land.lhs.true, label %for.body107.lor.lhs.false_crit_edge, !dbg !983

for.body107.lor.lhs.false_crit_edge:              ; preds = %for.body107
  %at_j132.pre = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv454, i32 1, !dbg !983
  br label %lor.lhs.false, !dbg !983

land.lhs.true:                                    ; preds = %for.body107
  %115 = load i32* %at_j, align 4, !dbg !983, !tbaa !647
  %at_j123 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv454, i32 1, !dbg !983
  %116 = load i32* %at_j123, align 4, !dbg !983, !tbaa !647
  %cmp124 = icmp eq i32 %115, %116, !dbg !983
  br i1 %cmp124, label %if.then144, label %lor.lhs.false, !dbg !983

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body107.lor.lhs.false_crit_edge
  %at_j132.pre-phi = phi i32* [ %at_j132.pre, %for.body107.lor.lhs.false_crit_edge ], [ %at_j123, %land.lhs.true ], !dbg !983
  %117 = load i32* %at_j132.pre-phi, align 4, !dbg !983, !tbaa !647
  %cmp133 = icmp eq i32 %.pre481, %117, !dbg !983
  br i1 %cmp133, label %land.lhs.true134, label %for.inc150, !dbg !983

land.lhs.true134:                                 ; preds = %lor.lhs.false
  %118 = load i32* %at_j, align 4, !dbg !983, !tbaa !647
  %cmp143 = icmp eq i32 %118, %114, !dbg !983
  br i1 %cmp143, label %if.then144, label %for.inc150, !dbg !983

if.then144:                                       ; preds = %land.lhs.true134, %land.lhs.true
  %bPrint148 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv454, i32 3, !dbg !985
  store i32 0, i32* %bPrint148, align 4, !dbg !985, !tbaa !647
  br label %for.inc150, !dbg !985

for.inc150:                                       ; preds = %lor.lhs.false, %land.lhs.true134, %if.then144
  %indvars.iv.next455 = add i64 %indvars.iv454, 1, !dbg !981
  %lftr.wideiv458 = trunc i64 %indvars.iv.next455 to i32, !dbg !981
  %exitcond459 = icmp eq i32 %lftr.wideiv458, %indvars.iv456, !dbg !981
  br i1 %exitcond459, label %for.inc153, label %for.body107, !dbg !981

for.inc153:                                       ; preds = %for.inc150
  %indvars.iv.next461 = add i64 %indvars.iv460, 1, !dbg !800
  %indvars.iv.next457 = add i32 %indvars.iv456, 1, !dbg !800
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next457}, i64 0, metadata !534), !dbg !800
  %lftr.wideiv462 = trunc i64 %indvars.iv.next461 to i32, !dbg !800
  %exitcond463 = icmp eq i32 %lftr.wideiv462, %inc36.i405415, !dbg !800
  br i1 %exitcond463, label %for.cond156.preheader, label %for.body107.lr.ph, !dbg !800

for.body161.lr.ph:                                ; preds = %for.inc210, %for.cond156.preheader
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %for.inc210 ], [ 1, %for.cond156.preheader ]
  %indvars.iv448 = phi i32 [ %indvars.iv.next449, %for.inc210 ], [ 1, %for.cond156.preheader ], !dbg !986
  %119 = load %struct.t_coupl_BU** %tcBU, align 8, !dbg !988, !tbaa !652
  %at_i165 = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv450, i32 0, !dbg !988
  %at_j175 = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv450, i32 1, !dbg !988
  %.pre = load i32* %at_i165, align 4, !dbg !988, !tbaa !647
  br label %for.body161, !dbg !986

for.body161:                                      ; preds = %for.inc207, %for.body161.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next, %for.inc207 ]
  %at_i169 = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv, i32 0, !dbg !988
  %120 = load i32* %at_i169, align 4, !dbg !988, !tbaa !647
  %cmp170 = icmp eq i32 %.pre, %120, !dbg !988
  br i1 %cmp170, label %land.lhs.true171, label %for.body161.lor.lhs.false181_crit_edge, !dbg !988

for.body161.lor.lhs.false181_crit_edge:           ; preds = %for.body161
  %at_j189.pre = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv, i32 1, !dbg !988
  br label %lor.lhs.false181, !dbg !988

land.lhs.true171:                                 ; preds = %for.body161
  %121 = load i32* %at_j175, align 4, !dbg !988, !tbaa !647
  %at_j179 = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv, i32 1, !dbg !988
  %122 = load i32* %at_j179, align 4, !dbg !988, !tbaa !647
  %cmp180 = icmp eq i32 %121, %122, !dbg !988
  br i1 %cmp180, label %if.then201, label %lor.lhs.false181, !dbg !988

lor.lhs.false181:                                 ; preds = %land.lhs.true171, %for.body161.lor.lhs.false181_crit_edge
  %at_j189.pre-phi = phi i32* [ %at_j189.pre, %for.body161.lor.lhs.false181_crit_edge ], [ %at_j179, %land.lhs.true171 ], !dbg !988
  %123 = load i32* %at_j189.pre-phi, align 4, !dbg !988, !tbaa !647
  %cmp190 = icmp eq i32 %.pre, %123, !dbg !988
  br i1 %cmp190, label %land.lhs.true191, label %for.inc207, !dbg !988

land.lhs.true191:                                 ; preds = %lor.lhs.false181
  %124 = load i32* %at_j175, align 4, !dbg !988, !tbaa !647
  %cmp200 = icmp eq i32 %124, %120, !dbg !988
  br i1 %cmp200, label %if.then201, label %for.inc207, !dbg !988

if.then201:                                       ; preds = %land.lhs.true191, %land.lhs.true171
  %bPrint205 = getelementptr inbounds %struct.t_coupl_BU* %119, i64 %indvars.iv, i32 3, !dbg !990
  store i32 0, i32* %bPrint205, align 4, !dbg !990, !tbaa !647
  br label %for.inc207, !dbg !990

for.inc207:                                       ; preds = %lor.lhs.false181, %land.lhs.true191, %if.then201
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !986
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !986
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv448, !dbg !986
  br i1 %exitcond, label %for.inc210, label %for.body161, !dbg !986

for.inc210:                                       ; preds = %for.inc207
  %indvars.iv.next451 = add i64 %indvars.iv450, 1, !dbg !794
  %indvars.iv.next449 = add i32 %indvars.iv448, 1, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %indvars.iv.next449}, i64 0, metadata !534), !dbg !794
  %lftr.wideiv452 = trunc i64 %indvars.iv.next451 to i32, !dbg !794
  %exitcond453 = icmp eq i32 %lftr.wideiv452, %inc43.i401416, !dbg !794
  br i1 %exitcond453, label %for.end212, label %for.body161.lr.ph, !dbg !794

for.end212:                                       ; preds = %for.end, %for.inc210, %for.cond156.preheader
  %inc7.i412.lcssa486492503 = phi i32 [ %inc7.i409414, %for.cond156.preheader ], [ %inc7.i409414, %for.inc210 ], [ 0, %for.end ]
  %inc36.i408.lcssa485493501 = phi i32 [ %inc36.i405415, %for.cond156.preheader ], [ %inc36.i405415, %for.inc210 ], [ 0, %for.end ]
  %inc43.i404.lcssa484494499 = phi i32 [ %inc43.i401416, %for.cond156.preheader ], [ %inc43.i401416, %for.inc210 ], [ 0, %for.end ]
  %inc17.i400.lcssa483495497 = phi i32 [ %inc17.i397417, %for.cond156.preheader ], [ %inc17.i397417, %for.inc210 ], [ 0, %for.end ]
  %nQ213 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6, !dbg !808
  store i32 %inc7.i412.lcssa486492503, i32* %nQ213, align 4, !dbg !808, !tbaa !647
  %nLJ214 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4, !dbg !802
  store i32 %inc36.i408.lcssa485493501, i32* %nLJ214, align 4, !dbg !802, !tbaa !647
  %nBU215 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5, !dbg !796
  store i32 %inc43.i404.lcssa484494499, i32* %nBU215, align 4, !dbg !796, !tbaa !647
  %nIP216 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7, !dbg !788
  store i32 %inc17.i400.lcssa483495497, i32* %nIP216, align 4, !dbg !788, !tbaa !647
  call void @llvm.dbg.value(metadata !{%struct.t_inpfile** %inp}, i64 0, metadata !524), !dbg !991
  %125 = load %struct.t_inpfile** %inp, align 8, !dbg !991, !tbaa !652
  %126 = bitcast %struct.t_inpfile* %125 to i8*, !dbg !991
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 497, i8* %126) #8, !dbg !991
  ret void, !dbg !992
}

; Function Attrs: optsize
declare %struct.t_inpfile* @read_inpfile(i8*, i32*) #3

; Function Attrs: optsize
declare float @get_ereal(i32*, %struct.t_inpfile**, i8*, float) #3

; Function Attrs: optsize
declare i32 @get_eint(i32*, %struct.t_inpfile**, i8*, i32) #3

; Function Attrs: optsize
declare i32 @get_eenum(i32*, %struct.t_inpfile**, i8*, i8**) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @Name2eo(i8* nocapture %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !564), !dbg !993
  tail call void @llvm.dbg.value(metadata !994, i64 0, metadata !566), !dbg !995
  tail call void @llvm.dbg.value(metadata !73, i64 0, metadata !565), !dbg !996
  br label %for.body, !dbg !996

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.010, 1, !dbg !996
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !996
  %cmp = icmp slt i32 %0, 17, !dbg !996
  br i1 %cmp, label %for.body, label %for.end, !dbg !996

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv, !dbg !998
  %1 = load i8** %arrayidx, align 8, !dbg !998, !tbaa !652
  %call = tail call i32 @strcasecmp(i8* %s, i8* %1) #9, !dbg !998
  %cmp1 = icmp eq i32 %call, 0, !dbg !998
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !996
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !565), !dbg !996
  br i1 %cmp1, label %if.then, label %for.cond, !dbg !998

if.then:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i32 %i.010}, i64 0, metadata !566), !dbg !999
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1001, !tbaa !652
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8]* @.str68, i64 0, i64 0), i32 %i.010, i8* %1) #8, !dbg !1001
  br label %for.end, !dbg !1002

for.end:                                          ; preds = %for.cond, %if.then
  %res.0 = phi i32 [ %i.010, %if.then ], [ -1, %for.cond ]
  ret i32 %res.0, !dbg !1003
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #6

; Function Attrs: optsize
declare void @_blockrx(i32, i32, i32, i8*) #3

; Function Attrs: optsize
declare void @_blocktx(i32, i32, i32, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !73, metadata !74, metadata !639, metadata !73, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !25}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 85, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 85, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/xmdrun.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24}
!6 = metadata !{i32 786472, metadata !"eoPres", i64 0} ; [ DW_TAG_enumerator ] [eoPres :: 0]
!7 = metadata !{i32 786472, metadata !"eoEpot", i64 1} ; [ DW_TAG_enumerator ] [eoEpot :: 1]
!8 = metadata !{i32 786472, metadata !"eoVir", i64 2} ; [ DW_TAG_enumerator ] [eoVir :: 2]
!9 = metadata !{i32 786472, metadata !"eoDist", i64 3} ; [ DW_TAG_enumerator ] [eoDist :: 3]
!10 = metadata !{i32 786472, metadata !"eoMu", i64 4} ; [ DW_TAG_enumerator ] [eoMu :: 4]
!11 = metadata !{i32 786472, metadata !"eoForce", i64 5} ; [ DW_TAG_enumerator ] [eoForce :: 5]
!12 = metadata !{i32 786472, metadata !"eoFx", i64 6} ; [ DW_TAG_enumerator ] [eoFx :: 6]
!13 = metadata !{i32 786472, metadata !"eoFy", i64 7} ; [ DW_TAG_enumerator ] [eoFy :: 7]
!14 = metadata !{i32 786472, metadata !"eoFz", i64 8} ; [ DW_TAG_enumerator ] [eoFz :: 8]
!15 = metadata !{i32 786472, metadata !"eoPx", i64 9} ; [ DW_TAG_enumerator ] [eoPx :: 9]
!16 = metadata !{i32 786472, metadata !"eoPy", i64 10} ; [ DW_TAG_enumerator ] [eoPy :: 10]
!17 = metadata !{i32 786472, metadata !"eoPz", i64 11} ; [ DW_TAG_enumerator ] [eoPz :: 11]
!18 = metadata !{i32 786472, metadata !"eoPolarizability", i64 12} ; [ DW_TAG_enumerator ] [eoPolarizability :: 12]
!19 = metadata !{i32 786472, metadata !"eoDipole", i64 13} ; [ DW_TAG_enumerator ] [eoDipole :: 13]
!20 = metadata !{i32 786472, metadata !"eoObsNR", i64 14} ; [ DW_TAG_enumerator ] [eoObsNR :: 14]
!21 = metadata !{i32 786472, metadata !"eoMemory", i64 14} ; [ DW_TAG_enumerator ] [eoMemory :: 14]
!22 = metadata !{i32 786472, metadata !"eoInter", i64 15} ; [ DW_TAG_enumerator ] [eoInter :: 15]
!23 = metadata !{i32 786472, metadata !"eoUseVirial", i64 16} ; [ DW_TAG_enumerator ] [eoUseVirial :: 16]
!24 = metadata !{i32 786472, metadata !"eoNR", i64 17} ; [ DW_TAG_enumerator ] [eoNR :: 17]
!25 = metadata !{i32 786436, metadata !26, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!26 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!28 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!29 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!30 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!31 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!32 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!33 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!34 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!35 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!36 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!37 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!38 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!39 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!40 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!41 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!42 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!43 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!44 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!45 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!46 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!47 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!48 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!49 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!50 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!51 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!52 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!53 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!54 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!55 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!56 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!57 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!58 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!59 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!60 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!61 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!62 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!63 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!64 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!65 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!66 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!67 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!68 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!69 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!70 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!71 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!72 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!73 = metadata !{i32 0}
!74 = metadata !{metadata !75, metadata !335, metadata !508, metadata !518, metadata !542, metadata !560, metadata !567, metadata !581, metadata !586, metadata !603, metadata !608, metadata !624, metadata !629, metadata !635}
!75 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"comm_tcr", metadata !"comm_tcr", metadata !"", i32 99, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, %struct.t_coupl_rec**)* @comm_tcr, null, null, metadata !330, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [comm_tcr]
!76 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !79, metadata !137, metadata !148}
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!80 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!81 = metadata !{i32 786451, metadata !82, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !83, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!82 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!83 = metadata !{metadata !84, metadata !86, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !107, metadata !108, metadata !109, metadata !110, metadata !113, metadata !115, metadata !117, metadata !121, metadata !123, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !132, metadata !133}
!84 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!85 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!86 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!88 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!89 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!90 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!92 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!93 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!94 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!95 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!96 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!97 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!98 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !87} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!99 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !100} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!101 = metadata !{i32 786451, metadata !82, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !102, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !106}
!103 = metadata !{i32 786445, metadata !82, metadata !101, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786445, metadata !82, metadata !101, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!106 = metadata !{i32 786445, metadata !82, metadata !101, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!107 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !105} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!108 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !85} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!109 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !85} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!110 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !111} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!111 = metadata !{i32 786454, metadata !82, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!112 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!113 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !114} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!114 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!115 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !116} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!116 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!117 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !118} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!118 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !88, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!121 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !122} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !124} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!124 = metadata !{i32 786454, metadata !82, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!125 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!126 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!127 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!128 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !122} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!129 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !130} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!130 = metadata !{i32 786454, metadata !82, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!131 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!132 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !85} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!133 = metadata !{i32 786445, metadata !82, metadata !81, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !134} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!134 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !88, metadata !135, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!138 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!139 = metadata !{i32 786451, metadata !140, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!140 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!142 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!143 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!144 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!145 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!146 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!147 = metadata !{i32 786445, metadata !140, metadata !139, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_coupl_rec]
!150 = metadata !{i32 786454, metadata !1, null, metadata !"t_coupl_rec", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [t_coupl_rec] [line 135, size 0, align 0, offset 0] [from ]
!151 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 122, i64 2304, i64 64, i32 0, i32 0, null, metadata !152, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 122, size 2304, align 64, offset 0] [from ]
!152 = metadata !{metadata !153, metadata !159, metadata !160, metadata !161, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !180, metadata !195, metadata !205, metadata !327, metadata !328, metadata !329}
!153 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"act_value", i32 123, i64 448, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_member ] [act_value] [line 123, size 448, align 32, offset 0] [from ]
!154 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !155, metadata !157, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from real]
!155 = metadata !{i32 786454, metadata !4, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!156 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!157 = metadata !{metadata !158}
!158 = metadata !{i32 786465, i64 0, i64 14}      ; [ DW_TAG_subrange_type ] [0, 13]
!159 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"av_value", i32 124, i64 448, i64 32, i64 448, i32 0, metadata !154} ; [ DW_TAG_member ] [av_value] [line 124, size 448, align 32, offset 448] [from ]
!160 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"ref_value", i32 125, i64 448, i64 32, i64 896, i32 0, metadata !154} ; [ DW_TAG_member ] [ref_value] [line 125, size 448, align 32, offset 896] [from ]
!161 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"bObsUsed", i32 126, i64 448, i64 32, i64 1344, i32 0, metadata !162} ; [ DW_TAG_member ] [bObsUsed] [line 126, size 448, align 32, offset 1344] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !85, metadata !157, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from int]
!163 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"nLJ", i32 127, i64 32, i64 32, i64 1792, i32 0, metadata !85} ; [ DW_TAG_member ] [nLJ] [line 127, size 32, align 32, offset 1792] [from int]
!164 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"nBU", i32 127, i64 32, i64 32, i64 1824, i32 0, metadata !85} ; [ DW_TAG_member ] [nBU] [line 127, size 32, align 32, offset 1824] [from int]
!165 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"nQ", i32 127, i64 32, i64 32, i64 1856, i32 0, metadata !85} ; [ DW_TAG_member ] [nQ] [line 127, size 32, align 32, offset 1856] [from int]
!166 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"nIP", i32 127, i64 32, i64 32, i64 1888, i32 0, metadata !85} ; [ DW_TAG_member ] [nIP] [line 127, size 32, align 32, offset 1888] [from int]
!167 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"tcLJ", i32 128, i64 64, i64 64, i64 1920, i32 0, metadata !168} ; [ DW_TAG_member ] [tcLJ] [line 128, size 64, align 64, offset 1920] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_coupl_LJ]
!169 = metadata !{i32 786454, metadata !4, null, metadata !"t_coupl_LJ", i32 97, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [t_coupl_LJ] [line 97, size 0, align 0, offset 0] [from ]
!170 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 91, i64 256, i64 32, i32 0, i32 0, null, metadata !171, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 91, size 256, align 32, offset 0] [from ]
!171 = metadata !{metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!172 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"at_i", i32 92, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [at_i] [line 92, size 32, align 32, offset 0] [from int]
!173 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"at_j", i32 92, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [at_j] [line 92, size 32, align 32, offset 32] [from int]
!174 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"eObs", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [eObs] [line 93, size 32, align 32, offset 64] [from int]
!175 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"bPrint", i32 94, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [bPrint] [line 94, size 32, align 32, offset 96] [from int]
!176 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"c6", i32 95, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [c6] [line 95, size 32, align 32, offset 128] [from real]
!177 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"c12", i32 95, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [c12] [line 95, size 32, align 32, offset 160] [from real]
!178 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"xi_6", i32 96, i64 32, i64 32, i64 192, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_6] [line 96, size 32, align 32, offset 192] [from real]
!179 = metadata !{i32 786445, metadata !4, metadata !170, metadata !"xi_12", i32 96, i64 32, i64 32, i64 224, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_12] [line 96, size 32, align 32, offset 224] [from real]
!180 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"tcBU", i32 129, i64 64, i64 64, i64 1984, i32 0, metadata !181} ; [ DW_TAG_member ] [tcBU] [line 129, size 64, align 64, offset 1984] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_coupl_BU]
!182 = metadata !{i32 786454, metadata !4, null, metadata !"t_coupl_BU", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [t_coupl_BU] [line 105, size 0, align 0, offset 0] [from ]
!183 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 99, i64 320, i64 32, i32 0, i32 0, null, metadata !184, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 99, size 320, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194}
!185 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"at_i", i32 100, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [at_i] [line 100, size 32, align 32, offset 0] [from int]
!186 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"at_j", i32 100, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [at_j] [line 100, size 32, align 32, offset 32] [from int]
!187 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"eObs", i32 101, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [eObs] [line 101, size 32, align 32, offset 64] [from int]
!188 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"bPrint", i32 102, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [bPrint] [line 102, size 32, align 32, offset 96] [from int]
!189 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"a", i32 103, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [a] [line 103, size 32, align 32, offset 128] [from real]
!190 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"b", i32 103, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 160] [from real]
!191 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"c", i32 103, i64 32, i64 32, i64 192, i32 0, metadata !155} ; [ DW_TAG_member ] [c] [line 103, size 32, align 32, offset 192] [from real]
!192 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"xi_a", i32 104, i64 32, i64 32, i64 224, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_a] [line 104, size 32, align 32, offset 224] [from real]
!193 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"xi_b", i32 104, i64 32, i64 32, i64 256, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_b] [line 104, size 32, align 32, offset 256] [from real]
!194 = metadata !{i32 786445, metadata !4, metadata !183, metadata !"xi_c", i32 104, i64 32, i64 32, i64 288, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_c] [line 104, size 32, align 32, offset 288] [from real]
!195 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"tcQ", i32 130, i64 64, i64 64, i64 2048, i32 0, metadata !196} ; [ DW_TAG_member ] [tcQ] [line 130, size 64, align 64, offset 2048] [from ]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_coupl_Q]
!197 = metadata !{i32 786454, metadata !4, null, metadata !"t_coupl_Q", i32 113, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [t_coupl_Q] [line 113, size 0, align 0, offset 0] [from ]
!198 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 107, i64 160, i64 32, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 107, size 160, align 32, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204}
!200 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"at_i", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [at_i] [line 108, size 32, align 32, offset 0] [from int]
!201 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"eObs", i32 109, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [eObs] [line 109, size 32, align 32, offset 32] [from int]
!202 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"bPrint", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [bPrint] [line 110, size 32, align 32, offset 64] [from int]
!203 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"Q", i32 111, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [Q] [line 111, size 32, align 32, offset 96] [from real]
!204 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"xi_Q", i32 112, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [xi_Q] [line 112, size 32, align 32, offset 128] [from real]
!205 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"tIP", i32 131, i64 64, i64 64, i64 2112, i32 0, metadata !206} ; [ DW_TAG_member ] [tIP] [line 131, size 64, align 64, offset 2112] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_coupl_iparams]
!207 = metadata !{i32 786454, metadata !4, null, metadata !"t_coupl_iparams", i32 120, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [t_coupl_iparams] [line 120, size 0, align 0, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 115, i64 448, i64 32, i32 0, i32 0, null, metadata !209, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 115, size 448, align 32, offset 0] [from ]
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !326}
!210 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"type", i32 116, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [type] [line 116, size 32, align 32, offset 0] [from int]
!211 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"eObs", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [eObs] [line 117, size 32, align 32, offset 32] [from int]
!212 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"xi", i32 118, i64 192, i64 32, i64 64, i32 0, metadata !213} ; [ DW_TAG_member ] [xi] [line 118, size 192, align 32, offset 64] [from t_iparams]
!213 = metadata !{i32 786454, metadata !4, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!214 = metadata !{i32 786455, metadata !26, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !215, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !222, metadata !229, metadata !235, metadata !244, metadata !249, metadata !256, metadata !264, metadata !269, metadata !274, metadata !280, metadata !288, metadata !295, metadata !304, metadata !313, metadata !322}
!216 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!217 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !218, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!218 = metadata !{metadata !219, metadata !220, metadata !221}
!219 = metadata !{i32 786445, metadata !26, metadata !217, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!220 = metadata !{i32 786445, metadata !26, metadata !217, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!221 = metadata !{i32 786445, metadata !26, metadata !217, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!222 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!223 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228}
!225 = metadata !{i32 786445, metadata !26, metadata !223, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!226 = metadata !{i32 786445, metadata !26, metadata !223, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!227 = metadata !{i32 786445, metadata !26, metadata !223, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!228 = metadata !{i32 786445, metadata !26, metadata !223, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!229 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !231, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!231 = metadata !{metadata !232, metadata !233, metadata !234}
!232 = metadata !{i32 786445, metadata !26, metadata !230, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!233 = metadata !{i32 786445, metadata !26, metadata !230, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!234 = metadata !{i32 786445, metadata !26, metadata !230, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!235 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!236 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !237, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243}
!238 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!239 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!240 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!241 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!242 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!243 = metadata !{i32 786445, metadata !26, metadata !236, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!244 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!245 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !246, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!246 = metadata !{metadata !247, metadata !248}
!247 = metadata !{i32 786445, metadata !26, metadata !245, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!248 = metadata !{i32 786445, metadata !26, metadata !245, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!249 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!250 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !251, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!251 = metadata !{metadata !252, metadata !253, metadata !254, metadata !255}
!252 = metadata !{i32 786445, metadata !26, metadata !250, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!253 = metadata !{i32 786445, metadata !26, metadata !250, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!254 = metadata !{i32 786445, metadata !26, metadata !250, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!255 = metadata !{i32 786445, metadata !26, metadata !250, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!256 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !257} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!257 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !258, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!259 = metadata !{i32 786445, metadata !26, metadata !257, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!260 = metadata !{i32 786445, metadata !26, metadata !257, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!261 = metadata !{i32 786445, metadata !26, metadata !257, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!262 = metadata !{i32 786445, metadata !26, metadata !257, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!263 = metadata !{i32 786445, metadata !26, metadata !257, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!264 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!266 = metadata !{metadata !267, metadata !268}
!267 = metadata !{i32 786445, metadata !26, metadata !265, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!268 = metadata !{i32 786445, metadata !26, metadata !265, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!269 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !270} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!270 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!271 = metadata !{metadata !272, metadata !273}
!272 = metadata !{i32 786445, metadata !26, metadata !270, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!273 = metadata !{i32 786445, metadata !26, metadata !270, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!274 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!275 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !276, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!276 = metadata !{metadata !277, metadata !278, metadata !279}
!277 = metadata !{i32 786445, metadata !26, metadata !275, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!278 = metadata !{i32 786445, metadata !26, metadata !275, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!279 = metadata !{i32 786445, metadata !26, metadata !275, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!280 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!281 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !282, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!282 = metadata !{metadata !283, metadata !287}
!283 = metadata !{i32 786445, metadata !26, metadata !281, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !284} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!284 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !155, metadata !285, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!285 = metadata !{metadata !286}
!286 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!287 = metadata !{i32 786445, metadata !26, metadata !281, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !284} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!288 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!289 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !290, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!290 = metadata !{metadata !291}
!291 = metadata !{i32 786445, metadata !26, metadata !289, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!292 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !155, metadata !293, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!295 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!296 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !297, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303}
!298 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!299 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!300 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!301 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!302 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!303 = metadata !{i32 786445, metadata !26, metadata !296, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!304 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!305 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!307 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!308 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!309 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!310 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!311 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!312 = metadata !{i32 786445, metadata !26, metadata !305, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!313 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!314 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !315, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!316 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!317 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!318 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!319 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!320 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!321 = metadata !{i32 786445, metadata !26, metadata !314, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!322 = metadata !{i32 786445, metadata !26, metadata !214, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !323} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!323 = metadata !{i32 786451, metadata !26, metadata !214, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !324, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!324 = metadata !{metadata !325}
!325 = metadata !{i32 786445, metadata !26, metadata !323, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!326 = metadata !{i32 786445, metadata !4, metadata !208, metadata !"iprint", i32 119, i64 192, i64 32, i64 256, i32 0, metadata !213} ; [ DW_TAG_member ] [iprint] [line 119, size 192, align 32, offset 256] [from t_iparams]
!327 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"nmemory", i32 132, i64 32, i64 32, i64 2176, i32 0, metadata !85} ; [ DW_TAG_member ] [nmemory] [line 132, size 32, align 32, offset 2176] [from int]
!328 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"bInter", i32 133, i64 32, i64 32, i64 2208, i32 0, metadata !85} ; [ DW_TAG_member ] [bInter] [line 133, size 32, align 32, offset 2208] [from int]
!329 = metadata !{i32 786445, metadata !4, metadata !151, metadata !"bVirial", i32 134, i64 32, i64 32, i64 2240, i32 0, metadata !85} ; [ DW_TAG_member ] [bVirial] [line 134, size 32, align 32, offset 2240] [from int]
!330 = metadata !{metadata !331, metadata !332, metadata !333, metadata !334}
!331 = metadata !{i32 786689, metadata !75, metadata !"log", metadata !76, i32 16777315, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 99]
!332 = metadata !{i32 786689, metadata !75, metadata !"cr", metadata !76, i32 33554531, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 99]
!333 = metadata !{i32 786689, metadata !75, metadata !"tcr", metadata !76, i32 50331747, metadata !148, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 99]
!334 = metadata !{i32 786688, metadata !75, metadata !"shit", metadata !76, i32 101, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shit] [line 101]
!335 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"copy_ff", metadata !"copy_ff", metadata !"", i32 149, metadata !336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_coupl_rec*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_idef*)* @copy_ff, null, null, metadata !495, i32 150} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 150] [copy_ff]
!336 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = metadata !{null, metadata !149, metadata !338, metadata !439, metadata !468}
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_forcerec]
!339 = metadata !{i32 786454, metadata !1, null, metadata !"t_forcerec", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !340} ; [ DW_TAG_typedef ] [t_forcerec] [line 149, size 0, align 0, offset 0] [from ]
!340 = metadata !{i32 786451, metadata !341, null, metadata !"", i32 43, i64 22784, i64 64, i32 0, i32 0, null, metadata !342, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 22784, align 64, offset 0] [from ]
!341 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!342 = metadata !{metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !391, metadata !392, metadata !395, metadata !396, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438}
!343 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"ePBC", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [ePBC] [line 45, size 32, align 32, offset 0] [from int]
!344 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rlist", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !155} ; [ DW_TAG_member ] [rlist] [line 46, size 32, align 32, offset 32] [from real]
!345 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rlistlong", i32 46, i64 32, i64 32, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [rlistlong] [line 46, size 32, align 32, offset 64] [from real]
!346 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"zsquare", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !155} ; [ DW_TAG_member ] [zsquare] [line 49, size 32, align 32, offset 96] [from real]
!347 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"temp", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [temp] [line 49, size 32, align 32, offset 128] [from real]
!348 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"epsilon_r", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !155} ; [ DW_TAG_member ] [epsilon_r] [line 50, size 32, align 32, offset 160] [from real]
!349 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"epsfac", i32 50, i64 32, i64 32, i64 192, i32 0, metadata !155} ; [ DW_TAG_member ] [epsfac] [line 50, size 32, align 32, offset 192] [from real]
!350 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bRF", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !85} ; [ DW_TAG_member ] [bRF] [line 53, size 32, align 32, offset 224] [from int]
!351 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"kappa", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !155} ; [ DW_TAG_member ] [kappa] [line 54, size 32, align 32, offset 256] [from real]
!352 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"k_rf", i32 54, i64 32, i64 32, i64 288, i32 0, metadata !155} ; [ DW_TAG_member ] [k_rf] [line 54, size 32, align 32, offset 288] [from real]
!353 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"c_rf", i32 54, i64 32, i64 32, i64 320, i32 0, metadata !155} ; [ DW_TAG_member ] [c_rf] [line 54, size 32, align 32, offset 320] [from real]
!354 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"avcsix", i32 57, i64 32, i64 32, i64 352, i32 0, metadata !155} ; [ DW_TAG_member ] [avcsix] [line 57, size 32, align 32, offset 352] [from real]
!355 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"fudgeQQ", i32 60, i64 32, i64 32, i64 384, i32 0, metadata !155} ; [ DW_TAG_member ] [fudgeQQ] [line 60, size 32, align 32, offset 384] [from real]
!356 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bcoultab", i32 63, i64 32, i64 32, i64 416, i32 0, metadata !85} ; [ DW_TAG_member ] [bcoultab] [line 63, size 32, align 32, offset 416] [from int]
!357 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bvdwtab", i32 64, i64 32, i64 32, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [bvdwtab] [line 64, size 32, align 32, offset 448] [from int]
!358 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rtab", i32 65, i64 32, i64 32, i64 480, i32 0, metadata !155} ; [ DW_TAG_member ] [rtab] [line 65, size 32, align 32, offset 480] [from real]
!359 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"ntab", i32 66, i64 32, i64 32, i64 512, i32 0, metadata !85} ; [ DW_TAG_member ] [ntab] [line 66, size 32, align 32, offset 512] [from int]
!360 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"tabscale", i32 67, i64 32, i64 32, i64 544, i32 0, metadata !155} ; [ DW_TAG_member ] [tabscale] [line 67, size 32, align 32, offset 544] [from real]
!361 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"coultab", i32 69, i64 64, i64 64, i64 576, i32 0, metadata !362} ; [ DW_TAG_member ] [coultab] [line 69, size 64, align 64, offset 576] [from ]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!363 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"vdwtab", i32 70, i64 64, i64 64, i64 640, i32 0, metadata !362} ; [ DW_TAG_member ] [vdwtab] [line 70, size 64, align 64, offset 640] [from ]
!364 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"coulvdwtab", i32 71, i64 64, i64 64, i64 704, i32 0, metadata !362} ; [ DW_TAG_member ] [coulvdwtab] [line 71, size 64, align 64, offset 704] [from ]
!365 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"coulvdw14tab", i32 72, i64 64, i64 64, i64 768, i32 0, metadata !362} ; [ DW_TAG_member ] [coulvdw14tab] [line 72, size 64, align 64, offset 768] [from ]
!366 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rcoulomb_switch", i32 75, i64 32, i64 32, i64 832, i32 0, metadata !155} ; [ DW_TAG_member ] [rcoulomb_switch] [line 75, size 32, align 32, offset 832] [from real]
!367 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rcoulomb", i32 75, i64 32, i64 32, i64 864, i32 0, metadata !155} ; [ DW_TAG_member ] [rcoulomb] [line 75, size 32, align 32, offset 864] [from real]
!368 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"phi", i32 76, i64 64, i64 64, i64 896, i32 0, metadata !362} ; [ DW_TAG_member ] [phi] [line 76, size 64, align 64, offset 896] [from ]
!369 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rvdw_switch", i32 79, i64 32, i64 32, i64 960, i32 0, metadata !155} ; [ DW_TAG_member ] [rvdw_switch] [line 79, size 32, align 32, offset 960] [from real]
!370 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"rvdw", i32 79, i64 32, i64 32, i64 992, i32 0, metadata !155} ; [ DW_TAG_member ] [rvdw] [line 79, size 32, align 32, offset 992] [from real]
!371 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bham_b_max", i32 80, i64 32, i64 32, i64 1024, i32 0, metadata !155} ; [ DW_TAG_member ] [bham_b_max] [line 80, size 32, align 32, offset 1024] [from real]
!372 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"tabscale_exp", i32 81, i64 32, i64 32, i64 1056, i32 0, metadata !155} ; [ DW_TAG_member ] [tabscale_exp] [line 81, size 32, align 32, offset 1056] [from real]
!373 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"efep", i32 84, i64 32, i64 32, i64 1088, i32 0, metadata !85} ; [ DW_TAG_member ] [efep] [line 84, size 32, align 32, offset 1088] [from int]
!374 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"sc_alpha", i32 85, i64 32, i64 32, i64 1120, i32 0, metadata !155} ; [ DW_TAG_member ] [sc_alpha] [line 85, size 32, align 32, offset 1120] [from real]
!375 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"sc_sigma6", i32 86, i64 32, i64 32, i64 1152, i32 0, metadata !155} ; [ DW_TAG_member ] [sc_sigma6] [line 86, size 32, align 32, offset 1152] [from real]
!376 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bSepDVDL", i32 87, i64 32, i64 32, i64 1184, i32 0, metadata !85} ; [ DW_TAG_member ] [bSepDVDL] [line 87, size 32, align 32, offset 1184] [from int]
!377 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"eeltype", i32 90, i64 32, i64 32, i64 1216, i32 0, metadata !85} ; [ DW_TAG_member ] [eeltype] [line 90, size 32, align 32, offset 1216] [from int]
!378 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"vdwtype", i32 91, i64 32, i64 32, i64 1248, i32 0, metadata !85} ; [ DW_TAG_member ] [vdwtype] [line 91, size 32, align 32, offset 1248] [from int]
!379 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"cg0", i32 92, i64 32, i64 32, i64 1280, i32 0, metadata !85} ; [ DW_TAG_member ] [cg0] [line 92, size 32, align 32, offset 1280] [from int]
!380 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"hcg", i32 92, i64 32, i64 32, i64 1312, i32 0, metadata !85} ; [ DW_TAG_member ] [hcg] [line 92, size 32, align 32, offset 1312] [from int]
!381 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"ndelta", i32 93, i64 32, i64 32, i64 1344, i32 0, metadata !85} ; [ DW_TAG_member ] [ndelta] [line 93, size 32, align 32, offset 1344] [from int]
!382 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bSolvOpt", i32 94, i64 32, i64 32, i64 1376, i32 0, metadata !85} ; [ DW_TAG_member ] [bSolvOpt] [line 94, size 32, align 32, offset 1376] [from int]
!383 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nMNOMol", i32 95, i64 32, i64 32, i64 1408, i32 0, metadata !85} ; [ DW_TAG_member ] [nMNOMol] [line 95, size 32, align 32, offset 1408] [from int]
!384 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nMNOav", i32 96, i64 96, i64 32, i64 1440, i32 0, metadata !284} ; [ DW_TAG_member ] [nMNOav] [line 96, size 96, align 32, offset 1440] [from ]
!385 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nWatMol", i32 97, i64 32, i64 32, i64 1536, i32 0, metadata !85} ; [ DW_TAG_member ] [nWatMol] [line 97, size 32, align 32, offset 1536] [from int]
!386 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"Dimension", i32 98, i64 32, i64 32, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [Dimension] [line 98, size 32, align 32, offset 1568] [from int]
!387 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bGrid", i32 99, i64 32, i64 32, i64 1600, i32 0, metadata !85} ; [ DW_TAG_member ] [bGrid] [line 99, size 32, align 32, offset 1600] [from int]
!388 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bDomDecomp", i32 99, i64 32, i64 32, i64 1632, i32 0, metadata !85} ; [ DW_TAG_member ] [bDomDecomp] [line 99, size 32, align 32, offset 1632] [from int]
!389 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"solvent_type", i32 100, i64 64, i64 64, i64 1664, i32 0, metadata !390} ; [ DW_TAG_member ] [solvent_type] [line 100, size 64, align 64, offset 1664] [from ]
!390 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!391 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"mno_index", i32 101, i64 64, i64 64, i64 1728, i32 0, metadata !390} ; [ DW_TAG_member ] [mno_index] [line 101, size 64, align 64, offset 1728] [from ]
!392 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"cg_cm", i32 102, i64 64, i64 64, i64 1792, i32 0, metadata !393} ; [ DW_TAG_member ] [cg_cm] [line 102, size 64, align 64, offset 1792] [from ]
!393 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !394} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!394 = metadata !{i32 786454, metadata !341, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !284} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!395 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"shift_vec", i32 103, i64 64, i64 64, i64 1856, i32 0, metadata !393} ; [ DW_TAG_member ] [shift_vec] [line 103, size 64, align 64, offset 1856] [from ]
!396 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nlist_sr", i32 108, i64 9984, i64 64, i64 1920, i32 0, metadata !397} ; [ DW_TAG_member ] [nlist_sr] [line 108, size 9984, align 64, offset 1920] [from ]
!397 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 9984, i64 64, i32 0, i32 0, metadata !398, metadata !419, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 9984, align 64, offset 0] [from t_nblist]
!398 = metadata !{i32 786454, metadata !341, null, metadata !"t_nblist", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !399} ; [ DW_TAG_typedef ] [t_nblist] [line 60, size 0, align 0, offset 0] [from ]
!399 = metadata !{i32 786451, metadata !400, null, metadata !"", i32 36, i64 768, i64 64, i32 0, i32 0, null, metadata !401, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 768, align 64, offset 0] [from ]
!400 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nblist.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!401 = metadata !{metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418}
!402 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"il_code", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [il_code] [line 37, size 32, align 32, offset 0] [from int]
!403 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"nri", i32 39, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [nri] [line 39, size 32, align 32, offset 32] [from int]
!404 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"maxnri", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [maxnri] [line 39, size 32, align 32, offset 64] [from int]
!405 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"nrj", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [nrj] [line 40, size 32, align 32, offset 96] [from int]
!406 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"maxnrj", i32 40, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [maxnrj] [line 40, size 32, align 32, offset 128] [from int]
!407 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"maxlen", i32 41, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [maxlen] [line 41, size 32, align 32, offset 160] [from int]
!408 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"solvent", i32 42, i64 32, i64 32, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [solvent] [line 42, size 32, align 32, offset 192] [from int]
!409 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"iinr", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !410} ; [ DW_TAG_member ] [iinr] [line 43, size 64, align 64, offset 256] [from ]
!410 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !411} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!411 = metadata !{i32 786454, metadata !400, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!412 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"gid", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !390} ; [ DW_TAG_member ] [gid] [line 44, size 64, align 64, offset 320] [from ]
!413 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"shift", i32 45, i64 64, i64 64, i64 384, i32 0, metadata !390} ; [ DW_TAG_member ] [shift] [line 45, size 64, align 64, offset 384] [from ]
!414 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"jindex", i32 46, i64 64, i64 64, i64 448, i32 0, metadata !390} ; [ DW_TAG_member ] [jindex] [line 46, size 64, align 64, offset 448] [from ]
!415 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"jjnr", i32 47, i64 64, i64 64, i64 512, i32 0, metadata !410} ; [ DW_TAG_member ] [jjnr] [line 47, size 64, align 64, offset 512] [from ]
!416 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"nsatoms", i32 48, i64 64, i64 64, i64 576, i32 0, metadata !390} ; [ DW_TAG_member ] [nsatoms] [line 48, size 64, align 64, offset 576] [from ]
!417 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"pad1", i32 58, i64 32, i64 32, i64 640, i32 0, metadata !85} ; [ DW_TAG_member ] [pad1] [line 58, size 32, align 32, offset 640] [from int]
!418 = metadata !{i32 786445, metadata !400, metadata !399, metadata !"pad2", i32 58, i64 64, i64 64, i64 704, i32 0, metadata !390} ; [ DW_TAG_member ] [pad2] [line 58, size 64, align 64, offset 704] [from ]
!419 = metadata !{metadata !420}
!420 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 12]
!421 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nlist_lr", i32 109, i64 9984, i64 64, i64 11904, i32 0, metadata !397} ; [ DW_TAG_member ] [nlist_lr] [line 109, size 9984, align 64, offset 11904] [from ]
!422 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bTwinRange", i32 120, i64 32, i64 32, i64 21888, i32 0, metadata !85} ; [ DW_TAG_member ] [bTwinRange] [line 120, size 32, align 32, offset 21888] [from int]
!423 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nlr", i32 121, i64 32, i64 32, i64 21920, i32 0, metadata !85} ; [ DW_TAG_member ] [nlr] [line 121, size 32, align 32, offset 21920] [from int]
!424 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"f_twin", i32 122, i64 64, i64 64, i64 21952, i32 0, metadata !393} ; [ DW_TAG_member ] [f_twin] [line 122, size 64, align 64, offset 21952] [from ]
!425 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"fshift_twin", i32 123, i64 64, i64 64, i64 22016, i32 0, metadata !393} ; [ DW_TAG_member ] [fshift_twin] [line 123, size 64, align 64, offset 22016] [from ]
!426 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"f_pme", i32 126, i64 64, i64 64, i64 22080, i32 0, metadata !393} ; [ DW_TAG_member ] [f_pme] [line 126, size 64, align 64, offset 22080] [from ]
!427 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bEwald", i32 127, i64 32, i64 32, i64 22144, i32 0, metadata !85} ; [ DW_TAG_member ] [bEwald] [line 127, size 32, align 32, offset 22144] [from int]
!428 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"ewaldcoeff", i32 128, i64 32, i64 32, i64 22176, i32 0, metadata !155} ; [ DW_TAG_member ] [ewaldcoeff] [line 128, size 32, align 32, offset 22176] [from real]
!429 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"fshift", i32 131, i64 64, i64 64, i64 22208, i32 0, metadata !393} ; [ DW_TAG_member ] [fshift] [line 131, size 64, align 64, offset 22208] [from ]
!430 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nmol", i32 134, i64 32, i64 32, i64 22272, i32 0, metadata !85} ; [ DW_TAG_member ] [nmol] [line 134, size 32, align 32, offset 22272] [from int]
!431 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"mol_nr", i32 135, i64 64, i64 64, i64 22336, i32 0, metadata !410} ; [ DW_TAG_member ] [mol_nr] [line 135, size 64, align 64, offset 22336] [from ]
!432 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"mol_epot", i32 136, i64 64, i64 64, i64 22400, i32 0, metadata !362} ; [ DW_TAG_member ] [mol_epot] [line 136, size 64, align 64, offset 22400] [from ]
!433 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nstcalc", i32 137, i64 32, i64 32, i64 22464, i32 0, metadata !85} ; [ DW_TAG_member ] [nstcalc] [line 137, size 32, align 32, offset 22464] [from int]
!434 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"ntype", i32 140, i64 32, i64 32, i64 22496, i32 0, metadata !85} ; [ DW_TAG_member ] [ntype] [line 140, size 32, align 32, offset 22496] [from int]
!435 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"bBHAM", i32 141, i64 32, i64 32, i64 22528, i32 0, metadata !85} ; [ DW_TAG_member ] [bBHAM] [line 141, size 32, align 32, offset 22528] [from int]
!436 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"nbfp", i32 142, i64 64, i64 64, i64 22592, i32 0, metadata !362} ; [ DW_TAG_member ] [nbfp] [line 142, size 64, align 64, offset 22592] [from ]
!437 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"eg_excl", i32 145, i64 64, i64 64, i64 22656, i32 0, metadata !390} ; [ DW_TAG_member ] [eg_excl] [line 145, size 64, align 64, offset 22656] [from ]
!438 = metadata !{i32 786445, metadata !341, metadata !340, metadata !"fc_stepsize", i32 148, i64 32, i64 32, i64 22720, i32 0, metadata !155} ; [ DW_TAG_member ] [fc_stepsize] [line 148, size 32, align 32, offset 22720] [from real]
!439 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !440} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!440 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !441} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!441 = metadata !{i32 786451, metadata !442, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!442 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!443 = metadata !{metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467}
!444 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!445 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!446 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !362} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!447 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !362} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!448 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !362} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!449 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !362} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!450 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !362} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!451 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !362} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!452 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !362} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!453 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !390} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!454 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !390} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!455 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !390} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!456 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !390} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!457 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !458} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!459 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !458} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!460 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !458} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!461 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !458} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!462 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !458} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!463 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !458} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!464 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !458} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!465 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !458} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!466 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !458} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!467 = metadata !{i32 786445, metadata !442, metadata !441, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !458} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!468 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !469} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!469 = metadata !{i32 786454, metadata !1, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !470} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!470 = metadata !{i32 786451, metadata !26, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !471, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!471 = metadata !{metadata !472, metadata !473, metadata !474, metadata !475, metadata !478, metadata !480}
!472 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!473 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!474 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!475 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !476} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!477 = metadata !{i32 786454, metadata !26, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!478 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !479} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!479 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!480 = metadata !{i32 786445, metadata !26, metadata !470, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !481} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!481 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !482, metadata !493, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!482 = metadata !{i32 786454, metadata !26, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!483 = metadata !{i32 786451, metadata !26, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !484, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!484 = metadata !{metadata !485, metadata !486, metadata !490}
!485 = metadata !{i32 786445, metadata !26, metadata !483, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!486 = metadata !{i32 786445, metadata !26, metadata !483, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !487} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!487 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !85, metadata !488, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!488 = metadata !{metadata !489}
!489 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!490 = metadata !{i32 786445, metadata !26, metadata !483, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !491} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!492 = metadata !{i32 786454, metadata !26, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !411} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!493 = metadata !{metadata !494}
!494 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!495 = metadata !{metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507}
!496 = metadata !{i32 786689, metadata !335, metadata !"tcr", metadata !76, i32 16777365, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 149]
!497 = metadata !{i32 786689, metadata !335, metadata !"fr", metadata !76, i32 33554581, metadata !338, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 149]
!498 = metadata !{i32 786689, metadata !335, metadata !"md", metadata !76, i32 50331797, metadata !439, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 149]
!499 = metadata !{i32 786689, metadata !335, metadata !"idef", metadata !76, i32 67109013, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 149]
!500 = metadata !{i32 786688, metadata !335, metadata !"i", metadata !76, i32 151, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 151]
!501 = metadata !{i32 786688, metadata !335, metadata !"j", metadata !76, i32 151, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 151]
!502 = metadata !{i32 786688, metadata !335, metadata !"ati", metadata !76, i32 151, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ati] [line 151]
!503 = metadata !{i32 786688, metadata !335, metadata !"atj", metadata !76, i32 151, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atj] [line 151]
!504 = metadata !{i32 786688, metadata !335, metadata !"type", metadata !76, i32 151, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 151]
!505 = metadata !{i32 786688, metadata !335, metadata !"tclj", metadata !76, i32 152, metadata !168, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tclj] [line 152]
!506 = metadata !{i32 786688, metadata !335, metadata !"tcbu", metadata !76, i32 153, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tcbu] [line 153]
!507 = metadata !{i32 786688, metadata !335, metadata !"tcq", metadata !76, i32 154, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tcq] [line 154]
!508 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"write_gct", metadata !"write_gct", metadata !"", i32 196, metadata !509, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_coupl_rec*, %struct.t_idef*)* @write_gct, null, null, metadata !511, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [write_gct]
!509 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!510 = metadata !{null, metadata !87, metadata !149, metadata !468}
!511 = metadata !{metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517}
!512 = metadata !{i32 786689, metadata !508, metadata !"fn", metadata !76, i32 16777412, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 196]
!513 = metadata !{i32 786689, metadata !508, metadata !"tcr", metadata !76, i32 33554628, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 196]
!514 = metadata !{i32 786689, metadata !508, metadata !"idef", metadata !76, i32 50331844, metadata !468, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 196]
!515 = metadata !{i32 786688, metadata !508, metadata !"fp", metadata !76, i32 198, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 198]
!516 = metadata !{i32 786688, metadata !508, metadata !"i", metadata !76, i32 199, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 199]
!517 = metadata !{i32 786688, metadata !508, metadata !"ftype", metadata !76, i32 199, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ftype] [line 199]
!518 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"read_gct", metadata !"read_gct", metadata !"", i32 430, metadata !519, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.t_coupl_rec*)* @read_gct, null, null, metadata !521, i32 431} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 431] [read_gct]
!519 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !520, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!520 = metadata !{null, metadata !87, metadata !149}
!521 = metadata !{metadata !522, metadata !523, metadata !524, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541}
!522 = metadata !{i32 786689, metadata !518, metadata !"fn", metadata !76, i32 16777646, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 430]
!523 = metadata !{i32 786689, metadata !518, metadata !"tcr", metadata !76, i32 33554862, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 430]
!524 = metadata !{i32 786688, metadata !518, metadata !"inp", metadata !76, i32 432, metadata !525, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inp] [line 432]
!525 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !526} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_inpfile]
!526 = metadata !{i32 786454, metadata !1, null, metadata !"t_inpfile", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_typedef ] [t_inpfile] [line 48, size 0, align 0, offset 0] [from ]
!527 = metadata !{i32 786451, metadata !528, null, metadata !"", i32 43, i64 192, i64 64, i32 0, i32 0, null, metadata !529, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 192, align 64, offset 0] [from ]
!528 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/readinp.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!529 = metadata !{metadata !530, metadata !531, metadata !532, metadata !533}
!530 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"count", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [count] [line 44, size 32, align 32, offset 0] [from int]
!531 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"bSet", i32 45, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [bSet] [line 45, size 32, align 32, offset 32] [from int]
!532 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"name", i32 46, i64 64, i64 64, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [name] [line 46, size 64, align 64, offset 64] [from ]
!533 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"value", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [value] [line 47, size 64, align 64, offset 128] [from ]
!534 = metadata !{i32 786688, metadata !518, metadata !"i", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 433]
!535 = metadata !{i32 786688, metadata !518, metadata !"j", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 433]
!536 = metadata !{i32 786688, metadata !518, metadata !"ninp", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ninp] [line 433]
!537 = metadata !{i32 786688, metadata !518, metadata !"nQ", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nQ] [line 433]
!538 = metadata !{i32 786688, metadata !518, metadata !"nLJ", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLJ] [line 433]
!539 = metadata !{i32 786688, metadata !518, metadata !"nBU", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nBU] [line 433]
!540 = metadata !{i32 786688, metadata !518, metadata !"nIP", metadata !76, i32 433, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nIP] [line 433]
!541 = metadata !{i32 786688, metadata !518, metadata !"bWrong", metadata !76, i32 434, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bWrong] [line 434]
!542 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"add_ip", metadata !"add_ip", metadata !"", i32 355, metadata !543, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !546, i32 356} ; [ DW_TAG_subprogram ] [line 355] [local] [def] [scope 356] [add_ip]
!543 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!544 = metadata !{metadata !85, metadata !390, metadata !545, metadata !87, metadata !85, metadata !390}
!545 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!546 = metadata !{metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !557, metadata !559}
!547 = metadata !{i32 786689, metadata !542, metadata !"nIP", metadata !76, i32 16777571, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nIP] [line 355]
!548 = metadata !{i32 786689, metadata !542, metadata !"tIP", metadata !76, i32 33554787, metadata !545, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tIP] [line 355]
!549 = metadata !{i32 786689, metadata !542, metadata !"s", metadata !76, i32 50332003, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 355]
!550 = metadata !{i32 786689, metadata !542, metadata !"ftype", metadata !76, i32 67109219, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ftype] [line 355]
!551 = metadata !{i32 786689, metadata !542, metadata !"bObsUsed", metadata !76, i32 83886435, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bObsUsed] [line 355]
!552 = metadata !{i32 786688, metadata !542, metadata !"i", metadata !76, i32 357, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 357]
!553 = metadata !{i32 786688, metadata !542, metadata !"eo", metadata !76, i32 357, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eo] [line 357]
!554 = metadata !{i32 786688, metadata !542, metadata !"type", metadata !76, i32 357, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 357]
!555 = metadata !{i32 786688, metadata !542, metadata !"buf", metadata !76, i32 358, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 358]
!556 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !88, metadata !488, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!557 = metadata !{i32 786688, metadata !542, metadata !"kb", metadata !76, i32 359, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kb] [line 359]
!558 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!559 = metadata !{i32 786688, metadata !542, metadata !"b0", metadata !76, i32 359, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b0] [line 359]
!560 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"Name2eo", metadata !"Name2eo", metadata !"", i32 53, metadata !561, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @Name2eo, null, null, metadata !563, i32 54} ; [ DW_TAG_subprogram ] [line 53] [local] [def] [scope 54] [Name2eo]
!561 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{metadata !85, metadata !87}
!563 = metadata !{metadata !564, metadata !565, metadata !566}
!564 = metadata !{i32 786689, metadata !560, metadata !"s", metadata !76, i32 16777269, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 53]
!565 = metadata !{i32 786688, metadata !560, metadata !"i", metadata !76, i32 55, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 55]
!566 = metadata !{i32 786688, metadata !560, metadata !"res", metadata !76, i32 55, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 55]
!567 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"add_q", metadata !"add_q", metadata !"", i32 398, metadata !568, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !571, i32 399} ; [ DW_TAG_subprogram ] [line 398] [local] [def] [scope 399] [add_q]
!568 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!569 = metadata !{metadata !85, metadata !390, metadata !570, metadata !87, metadata !390}
!570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!571 = metadata !{metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580}
!572 = metadata !{i32 786689, metadata !567, metadata !"nQ", metadata !76, i32 16777614, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nQ] [line 398]
!573 = metadata !{i32 786689, metadata !567, metadata !"tcQ", metadata !76, i32 33554830, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcQ] [line 398]
!574 = metadata !{i32 786689, metadata !567, metadata !"s", metadata !76, i32 50332046, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 398]
!575 = metadata !{i32 786689, metadata !567, metadata !"bObsUsed", metadata !76, i32 67109262, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bObsUsed] [line 398]
!576 = metadata !{i32 786688, metadata !567, metadata !"j", metadata !76, i32 400, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 400]
!577 = metadata !{i32 786688, metadata !567, metadata !"ati", metadata !76, i32 400, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ati] [line 400]
!578 = metadata !{i32 786688, metadata !567, metadata !"eo", metadata !76, i32 400, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eo] [line 400]
!579 = metadata !{i32 786688, metadata !567, metadata !"buf", metadata !76, i32 401, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 401]
!580 = metadata !{i32 786688, metadata !567, metadata !"xiQ", metadata !76, i32 402, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xiQ] [line 402]
!581 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"clear_q", metadata !"clear_q", metadata !"", i32 140, metadata !582, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !584, i32 141} ; [ DW_TAG_subprogram ] [line 140] [local] [def] [scope 141] [clear_q]
!582 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!583 = metadata !{null, metadata !196}
!584 = metadata !{metadata !585}
!585 = metadata !{i32 786689, metadata !581, metadata !"tc", metadata !76, i32 16777356, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tc] [line 140]
!586 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"add_bu", metadata !"add_bu", metadata !"", i32 317, metadata !587, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !590, i32 318} ; [ DW_TAG_subprogram ] [line 317] [local] [def] [scope 318] [add_bu]
!587 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!588 = metadata !{metadata !85, metadata !390, metadata !589, metadata !87, metadata !390}
!589 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!590 = metadata !{metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602}
!591 = metadata !{i32 786689, metadata !586, metadata !"nBU", metadata !76, i32 16777533, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nBU] [line 317]
!592 = metadata !{i32 786689, metadata !586, metadata !"tcBU", metadata !76, i32 33554749, metadata !589, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcBU] [line 317]
!593 = metadata !{i32 786689, metadata !586, metadata !"s", metadata !76, i32 50331965, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 317]
!594 = metadata !{i32 786689, metadata !586, metadata !"bObsUsed", metadata !76, i32 67109181, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bObsUsed] [line 317]
!595 = metadata !{i32 786688, metadata !586, metadata !"j", metadata !76, i32 319, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 319]
!596 = metadata !{i32 786688, metadata !586, metadata !"ati", metadata !76, i32 319, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ati] [line 319]
!597 = metadata !{i32 786688, metadata !586, metadata !"atj", metadata !76, i32 319, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atj] [line 319]
!598 = metadata !{i32 786688, metadata !586, metadata !"eo", metadata !76, i32 319, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eo] [line 319]
!599 = metadata !{i32 786688, metadata !586, metadata !"buf", metadata !76, i32 320, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 320]
!600 = metadata !{i32 786688, metadata !586, metadata !"xia", metadata !76, i32 321, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xia] [line 321]
!601 = metadata !{i32 786688, metadata !586, metadata !"xib", metadata !76, i32 321, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xib] [line 321]
!602 = metadata !{i32 786688, metadata !586, metadata !"xic", metadata !76, i32 321, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xic] [line 321]
!603 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"clear_bu", metadata !"clear_bu", metadata !"", i32 126, metadata !604, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !606, i32 127} ; [ DW_TAG_subprogram ] [line 126] [local] [def] [scope 127] [clear_bu]
!604 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!605 = metadata !{null, metadata !181}
!606 = metadata !{metadata !607}
!607 = metadata !{i32 786689, metadata !603, metadata !"tc", metadata !76, i32 16777342, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tc] [line 126]
!608 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"add_lj", metadata !"add_lj", metadata !"", i32 280, metadata !609, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !612, i32 281} ; [ DW_TAG_subprogram ] [line 280] [local] [def] [scope 281] [add_lj]
!609 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!610 = metadata !{metadata !85, metadata !390, metadata !611, metadata !87, metadata !390}
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!612 = metadata !{metadata !613, metadata !614, metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623}
!613 = metadata !{i32 786689, metadata !608, metadata !"nLJ", metadata !76, i32 16777496, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nLJ] [line 280]
!614 = metadata !{i32 786689, metadata !608, metadata !"tcLJ", metadata !76, i32 33554712, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcLJ] [line 280]
!615 = metadata !{i32 786689, metadata !608, metadata !"s", metadata !76, i32 50331928, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 280]
!616 = metadata !{i32 786689, metadata !608, metadata !"bObsUsed", metadata !76, i32 67109144, metadata !390, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bObsUsed] [line 280]
!617 = metadata !{i32 786688, metadata !608, metadata !"j", metadata !76, i32 282, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 282]
!618 = metadata !{i32 786688, metadata !608, metadata !"ati", metadata !76, i32 282, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ati] [line 282]
!619 = metadata !{i32 786688, metadata !608, metadata !"atj", metadata !76, i32 282, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atj] [line 282]
!620 = metadata !{i32 786688, metadata !608, metadata !"eo", metadata !76, i32 282, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eo] [line 282]
!621 = metadata !{i32 786688, metadata !608, metadata !"buf", metadata !76, i32 283, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 283]
!622 = metadata !{i32 786688, metadata !608, metadata !"xi6", metadata !76, i32 284, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi6] [line 284]
!623 = metadata !{i32 786688, metadata !608, metadata !"xi12", metadata !76, i32 284, metadata !558, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi12] [line 284]
!624 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"clear_lj", metadata !"clear_lj", metadata !"", i32 114, metadata !625, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !627, i32 115} ; [ DW_TAG_subprogram ] [line 114] [local] [def] [scope 115] [clear_lj]
!625 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!626 = metadata !{null, metadata !168}
!627 = metadata !{metadata !628}
!628 = metadata !{i32 786689, metadata !624, metadata !"tc", metadata !76, i32 16777330, metadata !168, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tc] [line 114]
!629 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"rec_tcr", metadata !"rec_tcr", metadata !"", i32 82, metadata !630, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_coupl_rec*)* @rec_tcr, null, null, metadata !632, i32 83} ; [ DW_TAG_subprogram ] [line 82] [local] [def] [scope 83] [rec_tcr]
!630 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!631 = metadata !{null, metadata !85, metadata !149}
!632 = metadata !{metadata !633, metadata !634}
!633 = metadata !{i32 786689, metadata !629, metadata !"src", metadata !76, i32 16777298, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 82]
!634 = metadata !{i32 786689, metadata !629, metadata !"tcr", metadata !76, i32 33554514, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 82]
!635 = metadata !{i32 786478, metadata !1, metadata !76, metadata !"send_tcr", metadata !"send_tcr", metadata !"", i32 71, metadata !630, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.t_coupl_rec*)* @send_tcr, null, null, metadata !636, i32 72} ; [ DW_TAG_subprogram ] [line 71] [local] [def] [scope 72] [send_tcr]
!636 = metadata !{metadata !637, metadata !638}
!637 = metadata !{i32 786689, metadata !635, metadata !"dest", metadata !76, i32 16777287, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 71]
!638 = metadata !{i32 786689, metadata !635, metadata !"tcr", metadata !76, i32 33554503, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcr] [line 71]
!639 = metadata !{metadata !640}
!640 = metadata !{i32 786484, i32 0, null, metadata !"eoNames", metadata !"eoNames", metadata !"", metadata !76, i32 47, metadata !641, i32 0, i32 1, [17 x i8*]* @eoNames, null} ; [ DW_TAG_variable ] [eoNames] [line 47] [def]
!641 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1088, i64 64, i32 0, i32 0, metadata !87, metadata !642, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1088, align 64, offset 0] [from ]
!642 = metadata !{metadata !643}
!643 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!644 = metadata !{i32 99, i32 0, metadata !75, null}
!645 = metadata !{i32 101, i32 0, metadata !75, null}
!646 = metadata !{i32 103, i32 0, metadata !75, null}
!647 = metadata !{metadata !"int", metadata !648}
!648 = metadata !{metadata !"omnipotent char", metadata !649}
!649 = metadata !{metadata !"Simple C/C++ TBAA"}
!650 = metadata !{i32 104, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !75, i32 103, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!652 = metadata !{metadata !"any pointer", metadata !648}
!653 = metadata !{i32 105, i32 0, metadata !651, null}
!654 = metadata !{i32 106, i32 0, metadata !651, null}
!655 = metadata !{i32 108, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !1, metadata !75, i32 107, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!657 = metadata !{i32 109, i32 0, metadata !656, null}
!658 = metadata !{i32 110, i32 0, metadata !656, null}
!659 = metadata !{i32 112, i32 0, metadata !75, null}
!660 = metadata !{i32 71, i32 0, metadata !635, null}
!661 = metadata !{i32 73, i32 0, metadata !635, null}
!662 = metadata !{i32 74, i32 0, metadata !635, null}
!663 = metadata !{i32 75, i32 0, metadata !635, null}
!664 = metadata !{i32 76, i32 0, metadata !635, null}
!665 = metadata !{i32 77, i32 0, metadata !635, null}
!666 = metadata !{i32 78, i32 0, metadata !635, null}
!667 = metadata !{i32 79, i32 0, metadata !635, null}
!668 = metadata !{i32 80, i32 0, metadata !635, null}
!669 = metadata !{i32 82, i32 0, metadata !629, null}
!670 = metadata !{i32 84, i32 0, metadata !629, null}
!671 = metadata !{i32 86, i32 0, metadata !629, null}
!672 = metadata !{i32 87, i32 0, metadata !629, null}
!673 = metadata !{i32 88, i32 0, metadata !629, null}
!674 = metadata !{i32 90, i32 0, metadata !629, null}
!675 = metadata !{i32 91, i32 0, metadata !629, null}
!676 = metadata !{i32 92, i32 0, metadata !629, null}
!677 = metadata !{i32 94, i32 0, metadata !629, null}
!678 = metadata !{i32 95, i32 0, metadata !629, null}
!679 = metadata !{i32 96, i32 0, metadata !629, null}
!680 = metadata !{i32 97, i32 0, metadata !629, null}
!681 = metadata !{i32 149, i32 0, metadata !335, null}
!682 = metadata !{i32 157, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !335, i32 157, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!684 = metadata !{i32 158, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !1, metadata !683, i32 157, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!686 = metadata !{i32 164, i32 0, metadata !685, null}
!687 = metadata !{i32 168, i32 0, metadata !688, null}
!688 = metadata !{i32 786443, metadata !1, metadata !335, i32 168, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!689 = metadata !{i32 169, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !688, i32 168, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!691 = metadata !{i32 175, i32 0, metadata !690, null}
!692 = metadata !{i32 160, i32 0, metadata !685, null}
!693 = metadata !{i32 161, i32 0, metadata !685, null}
!694 = metadata !{i32 162, i32 0, metadata !685, null}
!695 = metadata !{i32 163, i32 0, metadata !685, null}
!696 = metadata !{metadata !"float", metadata !648}
!697 = metadata !{i32 165, i32 0, metadata !685, null}
!698 = metadata !{i32 180, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !335, i32 180, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!700 = metadata !{i32 181, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !699, i32 180, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!702 = metadata !{i32 182, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !701, i32 182, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!704 = metadata !{i32 183, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 182, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!706 = metadata !{i32 184, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !705, i32 183, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!708 = metadata !{i32 171, i32 0, metadata !690, null}
!709 = metadata !{i32 172, i32 0, metadata !690, null}
!710 = metadata !{i32 173, i32 0, metadata !690, null}
!711 = metadata !{i32 174, i32 0, metadata !690, null}
!712 = metadata !{i32 176, i32 0, metadata !690, null}
!713 = metadata !{i32 177, i32 0, metadata !690, null}
!714 = metadata !{i32 189, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !335, i32 189, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!716 = metadata !{i32 191, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !715, i32 189, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!718 = metadata !{i32 192, i32 0, metadata !717, null}
!719 = metadata !{i32 185, i32 0, metadata !707, null}
!720 = metadata !{i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 12, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 12, i64 4, metadata !696, i64 16, i64 4, metadata !696, i64 20, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 12, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !647, i64 12, i64 4, metadata !696, i64 16, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 0, i64 12, metadata !648, i64 12, i64 12, metadata !648, i64 0, i64 24, metadata !648, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 12, i64 4, metadata !696, i64 16, i64 4, metadata !696, i64 20, i64 4, metadata !696, i64 0, i64 4, metadata !696, i64 4, i64 4, metadata !696, i64 8, i64 4, metadata !696, i64 12, i64 4, metadata !696, i64 16, i64 4, metadata !647, i64 20, i64 4, metadata !647, i64 0, i64 4, metadata !647, i64 4, i64 4, metadata !647, i64 8, i64 4, metadata !647, i64 12, i64 4, metadata !696, i64 16, i64 4, metadata !696, i64 20, i64 4, metadata !696, i64 0, i64 24, metadata !648}
!721 = metadata !{i32 194, i32 0, metadata !335, null}
!722 = metadata !{i32 196, i32 0, metadata !508, null}
!723 = metadata !{i32 201, i32 0, metadata !508, null}
!724 = metadata !{i32 202, i32 0, metadata !508, null}
!725 = metadata !{i32 203, i32 0, metadata !508, null}
!726 = metadata !{i32 205, i32 0, metadata !508, null}
!727 = metadata !{i32 207, i32 0, metadata !508, null}
!728 = metadata !{i32 209, i32 0, metadata !508, null}
!729 = metadata !{i32 211, i32 0, metadata !508, null}
!730 = metadata !{i32 213, i32 0, metadata !508, null}
!731 = metadata !{i32 215, i32 0, metadata !508, null}
!732 = metadata !{i32 217, i32 0, metadata !508, null}
!733 = metadata !{i32 219, i32 0, metadata !508, null}
!734 = metadata !{i32 221, i32 0, metadata !508, null}
!735 = metadata !{i32 223, i32 0, metadata !508, null}
!736 = metadata !{i32 225, i32 0, metadata !508, null}
!737 = metadata !{i32 227, i32 0, metadata !508, null}
!738 = metadata !{i32 229, i32 0, metadata !508, null}
!739 = metadata !{i32 231, i32 0, metadata !508, null}
!740 = metadata !{i32 233, i32 0, metadata !508, null}
!741 = metadata !{i32 236, i32 0, metadata !508, null}
!742 = metadata !{i32 237, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !508, i32 237, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!744 = metadata !{i32 238, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !743, i32 237, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!746 = metadata !{i32 242, i32 0, metadata !508, null}
!747 = metadata !{i32 244, i32 0, metadata !508, null}
!748 = metadata !{i32 245, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !508, i32 245, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!750 = metadata !{i32 246, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !749, i32 245, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!752 = metadata !{i32 252, i32 0, metadata !508, null}
!753 = metadata !{i32 254, i32 0, metadata !508, null}
!754 = metadata !{i32 255, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !508, i32 255, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!756 = metadata !{i32 256, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !755, i32 255, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!758 = metadata !{i32 262, i32 0, metadata !508, null}
!759 = metadata !{i32 263, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !508, i32 263, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!761 = metadata !{i32 264, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !760, i32 263, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!763 = metadata !{i32 265, i32 0, metadata !762, null}
!764 = metadata !{i32 267, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !762, i32 265, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!766 = metadata !{i32 271, i32 0, metadata !765, null}
!767 = metadata !{i32 273, i32 0, metadata !765, null}
!768 = metadata !{i32 275, i32 0, metadata !765, null}
!769 = metadata !{i32 277, i32 0, metadata !508, null}
!770 = metadata !{i32 278, i32 0, metadata !508, null}
!771 = metadata !{i32 430, i32 0, metadata !518, null}
!772 = metadata !{i32 432, i32 0, metadata !518, null}
!773 = metadata !{i32 433, i32 0, metadata !518, null}
!774 = metadata !{i32 436, i32 0, metadata !518, null}
!775 = metadata !{i32 437, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !518, i32 437, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!777 = metadata !{i32 438, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !776, i32 437, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!779 = metadata !{i32 439, i32 0, metadata !778, null}
!780 = metadata !{i32 441, i32 0, metadata !518, null}
!781 = metadata !{i32 442, i32 0, metadata !518, null}
!782 = metadata !{i32 443, i32 0, metadata !518, null}
!783 = metadata !{i32 445, i32 0, metadata !518, null}
!784 = metadata !{i32 446, i32 0, metadata !518, null}
!785 = metadata !{i32 447, i32 0, metadata !518, null}
!786 = metadata !{i32 448, i32 0, metadata !518, null}
!787 = metadata !{i32 449, i32 0, metadata !518, null}
!788 = metadata !{i32 495, i32 0, metadata !518, null}
!789 = metadata !{i32 786689, metadata !586, metadata !"nBU", metadata !76, i32 16777533, metadata !390, i32 0, metadata !790} ; [ DW_TAG_arg_variable ] [nBU] [line 317]
!790 = metadata !{i32 456, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 451, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!792 = metadata !{i32 786443, metadata !1, metadata !518, i32 451, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!793 = metadata !{i32 317, i32 0, metadata !586, metadata !790}
!794 = metadata !{i32 483, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !518, i32 483, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!796 = metadata !{i32 494, i32 0, metadata !518, null}
!797 = metadata !{i32 786689, metadata !608, metadata !"nLJ", metadata !76, i32 16777496, metadata !390, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [nLJ] [line 280]
!798 = metadata !{i32 454, i32 0, metadata !791, null}
!799 = metadata !{i32 280, i32 0, metadata !608, metadata !798}
!800 = metadata !{i32 474, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !518, i32 474, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!802 = metadata !{i32 493, i32 0, metadata !518, null}
!803 = metadata !{i32 786689, metadata !567, metadata !"nQ", metadata !76, i32 16777614, metadata !390, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [nQ] [line 398]
!804 = metadata !{i32 458, i32 0, metadata !791, null}
!805 = metadata !{i32 398, i32 0, metadata !567, metadata !804}
!806 = metadata !{i32 469, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !518, i32 469, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!808 = metadata !{i32 492, i32 0, metadata !518, null}
!809 = metadata !{i32 451, i32 0, metadata !792, null}
!810 = metadata !{i32 283, i32 0, metadata !608, metadata !798}
!811 = metadata !{i32 355, i32 0, metadata !542, metadata !812}
!812 = metadata !{i32 460, i32 0, metadata !791, null}
!813 = metadata !{i32 452, i32 0, metadata !791, null}
!814 = metadata !{i32 453, i32 0, metadata !791, null}
!815 = metadata !{i32 786689, metadata !608, metadata !"tcLJ", metadata !76, i32 33554712, metadata !611, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [tcLJ] [line 280]
!816 = metadata !{i32 786689, metadata !608, metadata !"s", metadata !76, i32 50331928, metadata !87, i32 0, metadata !798} ; [ DW_TAG_arg_variable ] [s] [line 280]
!817 = metadata !{i32 282, i32 0, metadata !608, metadata !798}
!818 = metadata !{i32 284, i32 0, metadata !608, metadata !798}
!819 = metadata !{i32 286, i32 0, metadata !608, metadata !798}
!820 = metadata !{i32 288, i32 0, metadata !608, metadata !798}
!821 = metadata !{i32 786688, metadata !608, metadata !"eo", metadata !76, i32 282, metadata !85, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [eo] [line 282]
!822 = metadata !{i32 289, i32 0, metadata !608, metadata !798}
!823 = metadata !{i32 291, i32 0, metadata !824, metadata !798}
!824 = metadata !{i32 786443, metadata !1, metadata !608, i32 291, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!825 = metadata !{i32 292, i32 0, metadata !826, metadata !798}
!826 = metadata !{i32 786443, metadata !1, metadata !824, i32 291, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!827 = metadata !{i32 786688, metadata !608, metadata !"ati", metadata !76, i32 282, metadata !85, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [ati] [line 282]
!828 = metadata !{i32 786688, metadata !608, metadata !"atj", metadata !76, i32 282, metadata !85, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [atj] [line 282]
!829 = metadata !{i32 293, i32 0, metadata !826, metadata !798}
!830 = metadata !{i32 294, i32 0, metadata !826, metadata !798}
!831 = metadata !{i32 786688, metadata !608, metadata !"j", metadata !76, i32 282, metadata !85, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [j] [line 282]
!832 = metadata !{i32 297, i32 0, metadata !608, metadata !798}
!833 = metadata !{i32 298, i32 0, metadata !834, metadata !798}
!834 = metadata !{i32 786443, metadata !1, metadata !608, i32 297, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!835 = metadata !{i32 299, i32 0, metadata !834, metadata !798}
!836 = metadata !{i32 300, i32 0, metadata !834, metadata !798}
!837 = metadata !{i32 302, i32 0, metadata !608, metadata !798}
!838 = metadata !{i32 304, i32 0, metadata !608, metadata !798}
!839 = metadata !{i32 116, i32 0, metadata !624, metadata !838}
!840 = metadata !{i32 117, i32 0, metadata !624, metadata !838}
!841 = metadata !{i32 118, i32 0, metadata !624, metadata !838}
!842 = metadata !{i32 119, i32 0, metadata !624, metadata !838}
!843 = metadata !{i32 120, i32 0, metadata !624, metadata !838}
!844 = metadata !{i32 124, i32 0, metadata !624, metadata !838}
!845 = metadata !{i32 121, i32 0, metadata !624, metadata !838}
!846 = metadata !{i32 305, i32 0, metadata !608, metadata !798}
!847 = metadata !{i32 306, i32 0, metadata !848, metadata !798}
!848 = metadata !{i32 786443, metadata !1, metadata !608, i32 305, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!849 = metadata !{i32 308, i32 0, metadata !608, metadata !798}
!850 = metadata !{i32 307, i32 0, metadata !848, metadata !798}
!851 = metadata !{i32 309, i32 0, metadata !608, metadata !798}
!852 = metadata !{i32 786688, metadata !608, metadata !"xi6", metadata !76, i32 284, metadata !558, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [xi6] [line 284]
!853 = metadata !{i32 310, i32 0, metadata !608, metadata !798}
!854 = metadata !{metadata !"double", metadata !648}
!855 = metadata !{i32 786688, metadata !608, metadata !"xi12", metadata !76, i32 284, metadata !558, i32 0, metadata !798} ; [ DW_TAG_auto_variable ] [xi12] [line 284]
!856 = metadata !{i32 311, i32 0, metadata !608, metadata !798}
!857 = metadata !{i32 312, i32 0, metadata !608, metadata !798}
!858 = metadata !{i32 314, i32 0, metadata !608, metadata !798}
!859 = metadata !{i32 455, i32 0, metadata !791, null}
!860 = metadata !{i32 786689, metadata !586, metadata !"tcBU", metadata !76, i32 33554749, metadata !589, i32 0, metadata !790} ; [ DW_TAG_arg_variable ] [tcBU] [line 317]
!861 = metadata !{i32 786689, metadata !586, metadata !"s", metadata !76, i32 50331965, metadata !87, i32 0, metadata !790} ; [ DW_TAG_arg_variable ] [s] [line 317]
!862 = metadata !{i32 319, i32 0, metadata !586, metadata !790}
!863 = metadata !{i32 320, i32 0, metadata !586, metadata !790}
!864 = metadata !{i32 321, i32 0, metadata !586, metadata !790}
!865 = metadata !{i32 323, i32 0, metadata !586, metadata !790}
!866 = metadata !{i32 325, i32 0, metadata !586, metadata !790}
!867 = metadata !{i32 786688, metadata !586, metadata !"eo", metadata !76, i32 319, metadata !85, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [eo] [line 319]
!868 = metadata !{i32 326, i32 0, metadata !586, metadata !790}
!869 = metadata !{i32 328, i32 0, metadata !870, metadata !790}
!870 = metadata !{i32 786443, metadata !1, metadata !586, i32 328, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!871 = metadata !{i32 329, i32 0, metadata !872, metadata !790}
!872 = metadata !{i32 786443, metadata !1, metadata !870, i32 328, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!873 = metadata !{i32 786688, metadata !586, metadata !"ati", metadata !76, i32 319, metadata !85, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [ati] [line 319]
!874 = metadata !{i32 786688, metadata !586, metadata !"atj", metadata !76, i32 319, metadata !85, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [atj] [line 319]
!875 = metadata !{i32 330, i32 0, metadata !872, metadata !790}
!876 = metadata !{i32 331, i32 0, metadata !872, metadata !790}
!877 = metadata !{i32 786688, metadata !586, metadata !"j", metadata !76, i32 319, metadata !85, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [j] [line 319]
!878 = metadata !{i32 334, i32 0, metadata !586, metadata !790}
!879 = metadata !{i32 335, i32 0, metadata !880, metadata !790}
!880 = metadata !{i32 786443, metadata !1, metadata !586, i32 334, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!881 = metadata !{i32 336, i32 0, metadata !880, metadata !790}
!882 = metadata !{i32 337, i32 0, metadata !880, metadata !790}
!883 = metadata !{i32 339, i32 0, metadata !586, metadata !790}
!884 = metadata !{i32 341, i32 0, metadata !586, metadata !790}
!885 = metadata !{i32 128, i32 0, metadata !603, metadata !884}
!886 = metadata !{i32 129, i32 0, metadata !603, metadata !884}
!887 = metadata !{i32 130, i32 0, metadata !603, metadata !884}
!888 = metadata !{i32 131, i32 0, metadata !603, metadata !884}
!889 = metadata !{i32 132, i32 0, metadata !603, metadata !884}
!890 = metadata !{i32 138, i32 0, metadata !603, metadata !884}
!891 = metadata !{i32 133, i32 0, metadata !603, metadata !884}
!892 = metadata !{i32 342, i32 0, metadata !586, metadata !790}
!893 = metadata !{i32 343, i32 0, metadata !894, metadata !790}
!894 = metadata !{i32 786443, metadata !1, metadata !586, i32 342, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!895 = metadata !{i32 345, i32 0, metadata !586, metadata !790}
!896 = metadata !{i32 344, i32 0, metadata !894, metadata !790}
!897 = metadata !{i32 346, i32 0, metadata !586, metadata !790}
!898 = metadata !{i32 786688, metadata !586, metadata !"xia", metadata !76, i32 321, metadata !558, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [xia] [line 321]
!899 = metadata !{i32 347, i32 0, metadata !586, metadata !790}
!900 = metadata !{i32 786688, metadata !586, metadata !"xib", metadata !76, i32 321, metadata !558, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [xib] [line 321]
!901 = metadata !{i32 348, i32 0, metadata !586, metadata !790}
!902 = metadata !{i32 786688, metadata !586, metadata !"xic", metadata !76, i32 321, metadata !558, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [xic] [line 321]
!903 = metadata !{i32 349, i32 0, metadata !586, metadata !790}
!904 = metadata !{i32 350, i32 0, metadata !586, metadata !790}
!905 = metadata !{i32 352, i32 0, metadata !586, metadata !790}
!906 = metadata !{i32 457, i32 0, metadata !791, null}
!907 = metadata !{i32 786689, metadata !567, metadata !"tcQ", metadata !76, i32 33554830, metadata !570, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [tcQ] [line 398]
!908 = metadata !{i32 786689, metadata !567, metadata !"s", metadata !76, i32 50332046, metadata !87, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [s] [line 398]
!909 = metadata !{i32 400, i32 0, metadata !567, metadata !804}
!910 = metadata !{i32 401, i32 0, metadata !567, metadata !804}
!911 = metadata !{i32 402, i32 0, metadata !567, metadata !804}
!912 = metadata !{i32 404, i32 0, metadata !567, metadata !804}
!913 = metadata !{i32 407, i32 0, metadata !914, metadata !804}
!914 = metadata !{i32 786443, metadata !1, metadata !567, i32 407, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!915 = metadata !{i32 408, i32 0, metadata !916, metadata !804}
!916 = metadata !{i32 786443, metadata !1, metadata !914, i32 407, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!917 = metadata !{i32 786688, metadata !567, metadata !"ati", metadata !76, i32 400, metadata !85, i32 0, metadata !804} ; [ DW_TAG_auto_variable ] [ati] [line 400]
!918 = metadata !{i32 786688, metadata !567, metadata !"j", metadata !76, i32 400, metadata !85, i32 0, metadata !804} ; [ DW_TAG_auto_variable ] [j] [line 400]
!919 = metadata !{i32 411, i32 0, metadata !567, metadata !804}
!920 = metadata !{i32 412, i32 0, metadata !921, metadata !804}
!921 = metadata !{i32 786443, metadata !1, metadata !567, i32 411, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!922 = metadata !{i32 413, i32 0, metadata !921, metadata !804}
!923 = metadata !{i32 414, i32 0, metadata !921, metadata !804}
!924 = metadata !{i32 416, i32 0, metadata !567, metadata !804}
!925 = metadata !{i32 418, i32 0, metadata !567, metadata !804}
!926 = metadata !{i32 142, i32 0, metadata !581, metadata !925}
!927 = metadata !{i32 143, i32 0, metadata !581, metadata !925}
!928 = metadata !{i32 144, i32 0, metadata !581, metadata !925}
!929 = metadata !{i32 145, i32 0, metadata !581, metadata !925}
!930 = metadata !{i32 146, i32 0, metadata !581, metadata !925}
!931 = metadata !{i32 419, i32 0, metadata !567, metadata !804}
!932 = metadata !{i32 786688, metadata !567, metadata !"eo", metadata !76, i32 400, metadata !85, i32 0, metadata !804} ; [ DW_TAG_auto_variable ] [eo] [line 400]
!933 = metadata !{i32 420, i32 0, metadata !567, metadata !804}
!934 = metadata !{i32 421, i32 0, metadata !935, metadata !804}
!935 = metadata !{i32 786443, metadata !1, metadata !567, i32 420, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!936 = metadata !{i32 423, i32 0, metadata !567, metadata !804}
!937 = metadata !{i32 422, i32 0, metadata !935, metadata !804}
!938 = metadata !{i32 786688, metadata !567, metadata !"xiQ", metadata !76, i32 402, metadata !558, i32 0, metadata !804} ; [ DW_TAG_auto_variable ] [xiQ] [line 402]
!939 = metadata !{i32 424, i32 0, metadata !567, metadata !804}
!940 = metadata !{i32 425, i32 0, metadata !567, metadata !804}
!941 = metadata !{i32 427, i32 0, metadata !567, metadata !804}
!942 = metadata !{i32 459, i32 0, metadata !791, null}
!943 = metadata !{i32 786689, metadata !542, metadata !"ftype", metadata !76, i32 67109219, metadata !85, i32 0, metadata !812} ; [ DW_TAG_arg_variable ] [ftype] [line 355]
!944 = metadata !{i32 357, i32 0, metadata !542, metadata !812}
!945 = metadata !{i32 358, i32 0, metadata !542, metadata !812}
!946 = metadata !{i32 359, i32 0, metadata !542, metadata !812}
!947 = metadata !{i32 364, i32 0, metadata !948, metadata !812}
!948 = metadata !{i32 786443, metadata !1, metadata !542, i32 361, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!949 = metadata !{i32 366, i32 0, metadata !948, metadata !812}
!950 = metadata !{i32 786688, metadata !542, metadata !"eo", metadata !76, i32 357, metadata !85, i32 0, metadata !812} ; [ DW_TAG_auto_variable ] [eo] [line 357]
!951 = metadata !{i32 367, i32 0, metadata !948, metadata !812}
!952 = metadata !{i32 370, i32 0, metadata !953, metadata !812}
!953 = metadata !{i32 786443, metadata !1, metadata !948, i32 370, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!954 = metadata !{i32 371, i32 0, metadata !955, metadata !812}
!955 = metadata !{i32 786443, metadata !1, metadata !953, i32 370, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!956 = metadata !{i32 786688, metadata !542, metadata !"type", metadata !76, i32 357, metadata !85, i32 0, metadata !812} ; [ DW_TAG_auto_variable ] [type] [line 357]
!957 = metadata !{i32 786688, metadata !542, metadata !"i", metadata !76, i32 357, metadata !85, i32 0, metadata !812} ; [ DW_TAG_auto_variable ] [i] [line 357]
!958 = metadata !{i32 374, i32 0, metadata !948, metadata !812}
!959 = metadata !{i32 375, i32 0, metadata !960, metadata !812}
!960 = metadata !{i32 786443, metadata !1, metadata !948, i32 374, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!961 = metadata !{i32 376, i32 0, metadata !960, metadata !812}
!962 = metadata !{i32 378, i32 0, metadata !963, metadata !812}
!963 = metadata !{i32 786443, metadata !1, metadata !948, i32 377, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!964 = metadata !{i32 379, i32 0, metadata !963, metadata !812}
!965 = metadata !{i32 380, i32 0, metadata !963, metadata !812}
!966 = metadata !{i32 382, i32 0, metadata !948, metadata !812}
!967 = metadata !{i32 384, i32 0, metadata !948, metadata !812}
!968 = metadata !{i32 385, i32 0, metadata !948, metadata !812}
!969 = metadata !{i32 786688, metadata !542, metadata !"kb", metadata !76, i32 359, metadata !558, i32 0, metadata !812} ; [ DW_TAG_auto_variable ] [kb] [line 359]
!970 = metadata !{i32 386, i32 0, metadata !948, metadata !812}
!971 = metadata !{i32 786688, metadata !542, metadata !"b0", metadata !76, i32 359, metadata !558, i32 0, metadata !812} ; [ DW_TAG_auto_variable ] [b0] [line 359]
!972 = metadata !{i32 387, i32 0, metadata !948, metadata !812}
!973 = metadata !{i32 388, i32 0, metadata !948, metadata !812}
!974 = metadata !{i32 395, i32 0, metadata !542, metadata !812}
!975 = metadata !{i32 463, i32 0, metadata !791, null}
!976 = metadata !{i32 470, i32 0, metadata !977, null}
!977 = metadata !{i32 786443, metadata !1, metadata !807, i32 470, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!978 = metadata !{i32 471, i32 0, metadata !979, null}
!979 = metadata !{i32 786443, metadata !1, metadata !977, i32 470, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!980 = metadata !{i32 472, i32 0, metadata !979, null}
!981 = metadata !{i32 475, i32 0, metadata !982, null}
!982 = metadata !{i32 786443, metadata !1, metadata !801, i32 475, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!983 = metadata !{i32 476, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !982, i32 475, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!985 = metadata !{i32 480, i32 0, metadata !984, null}
!986 = metadata !{i32 484, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !795, i32 484, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!988 = metadata !{i32 485, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !987, i32 484, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!990 = metadata !{i32 489, i32 0, metadata !989, null}
!991 = metadata !{i32 497, i32 0, metadata !518, null}
!992 = metadata !{i32 498, i32 0, metadata !518, null}
!993 = metadata !{i32 53, i32 0, metadata !560, null}
!994 = metadata !{i32 -1}
!995 = metadata !{i32 57, i32 0, metadata !560, null}
!996 = metadata !{i32 59, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !1, metadata !560, i32 59, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!998 = metadata !{i32 60, i32 0, metadata !997, null}
!999 = metadata !{i32 61, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !997, i32 60, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gctio.c]
!1001 = metadata !{i32 62, i32 0, metadata !1000, null}
!1002 = metadata !{i32 63, i32 0, metadata !1000, null}
!1003 = metadata !{i32 66, i32 0, metadata !560, null}
