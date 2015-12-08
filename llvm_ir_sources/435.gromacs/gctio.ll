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
  %0 = bitcast %struct.t_coupl_rec* %shit to i8*
  call void @llvm.lifetime.start(i64 288, i8* %0) #1
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %2 = load i32* %threadid, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %3 = load i32* %left, align 4, !tbaa !0
  %4 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !3
  call fastcc void @send_tcr(i32 %3, %struct.t_coupl_rec* %4) #5
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %5 = load i32* %right, align 4, !tbaa !0
  call fastcc void @rec_tcr(i32 %5, %struct.t_coupl_rec* %shit) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 108, i32 1, i32 288) #6
  %6 = bitcast i8* %call to %struct.t_coupl_rec*
  store %struct.t_coupl_rec* %6, %struct.t_coupl_rec** %tcr, align 8, !tbaa !3
  %right2 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %7 = load i32* %right2, align 4, !tbaa !0
  call fastcc void @rec_tcr(i32 %7, %struct.t_coupl_rec* %6) #5
  %left3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %8 = load i32* %left3, align 4, !tbaa !0
  %9 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !3
  call fastcc void @send_tcr(i32 %8, %struct.t_coupl_rec* %9) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 288, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @send_tcr(i32 %dest, %struct.t_coupl_rec* %tcr) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %0 = bitcast float* %arraydecay to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 56, i8* %0) #6
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %1 = bitcast i32* %nLJ to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %1) #6
  %2 = load i32* %nLJ, align 4, !tbaa !0
  %mul = shl i32 %2, 5
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %3 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %4 = bitcast %struct.t_coupl_LJ* %3 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %4) #6
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %5 = bitcast i32* %nBU to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %5) #6
  %6 = load i32* %nBU, align 4, !tbaa !0
  %mul5 = mul i32 %6, 40
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %7 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %8 = bitcast %struct.t_coupl_BU* %7 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul5, i8* %8) #6
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %9 = bitcast i32* %nQ to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %9) #6
  %10 = load i32* %nQ, align 4, !tbaa !0
  %mul9 = mul i32 %10, 20
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %11 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %12 = bitcast %struct.t_coupl_Q* %11 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul9, i8* %12) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rec_tcr(i32 %src, %struct.t_coupl_rec* %tcr) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %0 = bitcast float* %arraydecay to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 56, i8* %0) #6
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %1 = bitcast i32* %nLJ to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %1) #6
  %2 = load i32* %nLJ, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 87, i32 %2, i32 32) #6
  %3 = bitcast i8* %call to %struct.t_coupl_LJ*
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  store %struct.t_coupl_LJ* %3, %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %4 = load i32* %nLJ, align 4, !tbaa !0
  %mul = shl i32 %4, 5
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %call) #6
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %5 = bitcast i32* %nBU to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %5) #6
  %6 = load i32* %nBU, align 4, !tbaa !0
  %call6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 91, i32 %6, i32 40) #6
  %7 = bitcast i8* %call6 to %struct.t_coupl_BU*
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  store %struct.t_coupl_BU* %7, %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %8 = load i32* %nBU, align 4, !tbaa !0
  %mul9 = mul i32 %8, 40
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul9, i8* %call6) #6
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %9 = bitcast i32* %nQ to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %9) #6
  %10 = load i32* %nQ, align 4, !tbaa !0
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 95, i32 %10, i32 20) #6
  %11 = bitcast i8* %call13 to %struct.t_coupl_Q*
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  store %struct.t_coupl_Q* %11, %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %12 = load i32* %nQ, align 4, !tbaa !0
  %mul16 = mul i32 %12, 20
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul16, i8* %call13) #6
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @copy_ff(%struct.t_coupl_rec* nocapture %tcr, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture %md, %struct.t_idef* nocapture %idef) #0 {
entry:
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %0 = load i32* %nLJ, align 4, !tbaa !0
  %cmp152 = icmp sgt i32 %0, 0
  br i1 %cmp152, label %for.body.lr.ph, label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %1 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %2 = load i32* %ntype, align 4, !tbaa !0
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %3 = load float** %nbfp, align 8, !tbaa !3
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body, %entry
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %4 = load i32* %nBU, align 4, !tbaa !0
  %cmp14150 = icmp sgt i32 %4, 0
  br i1 %cmp14150, label %for.body15.lr.ph, label %for.cond49.preheader

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %5 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %ntype23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %6 = load i32* %ntype23, align 4, !tbaa !0
  %nbfp29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %7 = load float** %nbfp29, align 8, !tbaa !3
  br label %for.body15

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv161 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next162, %for.body ]
  %at_i = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 0
  %8 = load i32* %at_i, align 4, !tbaa !0
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 1
  %9 = load i32* %at_j, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %9, -1
  %. = select i1 %cmp1, i32 %8, i32 %9
  %mul = mul nsw i32 %2, %8
  %add = add nsw i32 %mul, %.
  %mul2 = shl nsw i32 %add, 1
  %idxprom3 = sext i32 %mul2 to i64
  %arrayidx4 = getelementptr inbounds float* %3, i64 %idxprom3
  %10 = load float* %arrayidx4, align 4, !tbaa !4
  %c6 = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 4
  store float %10, float* %c6, align 4, !tbaa !4
  %add9142 = or i32 %mul2, 1
  %idxprom10 = sext i32 %add9142 to i64
  %arrayidx12 = getelementptr inbounds float* %3, i64 %idxprom10
  %11 = load float* %arrayidx12, align 4, !tbaa !4
  %c12 = getelementptr inbounds %struct.t_coupl_LJ* %1, i64 %indvars.iv161, i32 5
  store float %11, float* %c12, align 4, !tbaa !4
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %12 = trunc i64 %indvars.iv.next162 to i32
  %cmp = icmp slt i32 %12, %0
  br i1 %cmp, label %for.body, label %for.cond13.preheader

for.cond49.preheader:                             ; preds = %for.body15, %for.cond13.preheader
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %13 = load i32* %nQ, align 4, !tbaa !0
  %cmp50148 = icmp sgt i32 %13, 0
  br i1 %cmp50148, label %for.body51.lr.ph, label %for.cond74.preheader

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %14 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %15 = load i32* %nr, align 4, !tbaa !0
  %cmp55146 = icmp sgt i32 %15, 0
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  br label %for.body51

for.body15:                                       ; preds = %for.body15.lr.ph, %for.body15
  %indvars.iv159 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next160, %for.body15 ]
  %at_i18 = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 0
  %16 = load i32* %at_i18, align 4, !tbaa !0
  %at_j19 = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 1
  %17 = load i32* %at_j19, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %17, -1
  %.143 = select i1 %cmp20, i32 %16, i32 %17
  %mul24 = mul nsw i32 %6, %16
  %add25 = add nsw i32 %mul24, %.143
  %mul26 = mul nsw i32 %add25, 3
  %add27 = add nsw i32 %mul26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx30 = getelementptr inbounds float* %7, i64 %idxprom28
  %18 = load float* %arrayidx30, align 4, !tbaa !4
  %a = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 4
  store float %18, float* %a, align 4, !tbaa !4
  %add35 = add nsw i32 %mul26, 2
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx38 = getelementptr inbounds float* %7, i64 %idxprom36
  %19 = load float* %arrayidx38, align 4, !tbaa !4
  %b = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 5
  store float %19, float* %b, align 4, !tbaa !4
  %idxprom43 = sext i32 %mul26 to i64
  %arrayidx45 = getelementptr inbounds float* %7, i64 %idxprom43
  %20 = load float* %arrayidx45, align 4, !tbaa !4
  %c = getelementptr inbounds %struct.t_coupl_BU* %5, i64 %indvars.iv159, i32 6
  store float %20, float* %c, align 4, !tbaa !4
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %21 = trunc i64 %indvars.iv.next160 to i32
  %cmp14 = icmp slt i32 %21, %4
  br i1 %cmp14, label %for.body15, label %for.cond49.preheader

for.cond74.preheader:                             ; preds = %for.inc71, %for.cond49.preheader
  %nIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %22 = load i32* %nIP, align 4, !tbaa !0
  %cmp75144 = icmp sgt i32 %22, 0
  br i1 %cmp75144, label %for.body76.lr.ph, label %for.end87

for.body76.lr.ph:                                 ; preds = %for.cond74.preheader
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.body76

for.body51:                                       ; preds = %for.body51.lr.ph, %for.inc71
  %indvars.iv157 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next158, %for.inc71 ]
  br i1 %cmp55146, label %for.body56.lr.ph, label %for.inc71

for.body56.lr.ph:                                 ; preds = %for.body51
  %23 = load i32** %typeA, align 8, !tbaa !3
  %at_i59 = getelementptr inbounds %struct.t_coupl_Q* %14, i64 %indvars.iv157, i32 0
  %24 = load i32* %at_i59, align 4, !tbaa !0
  br label %for.body56

for.cond54:                                       ; preds = %for.body56
  %25 = trunc i64 %indvars.iv.next156 to i32
  %cmp55 = icmp slt i32 %25, %15
  br i1 %cmp55, label %for.body56, label %for.inc71

for.body56:                                       ; preds = %for.body56.lr.ph, %for.cond54
  %indvars.iv155 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next156, %for.cond54 ]
  %arrayidx58 = getelementptr inbounds i32* %23, i64 %indvars.iv155
  %26 = load i32* %arrayidx58, align 4, !tbaa !0
  %cmp60 = icmp eq i32 %26, %24
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  br i1 %cmp60, label %if.then61, label %for.cond54

if.then61:                                        ; preds = %for.body56
  %27 = load float** %chargeA, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds float* %27, i64 %indvars.iv155
  %28 = load float* %arrayidx63, align 4, !tbaa !4
  %Q = getelementptr inbounds %struct.t_coupl_Q* %14, i64 %indvars.iv157, i32 3
  store float %28, float* %Q, align 4, !tbaa !4
  br label %for.inc71

for.inc71:                                        ; preds = %for.body51, %for.cond54, %if.then61
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %29 = trunc i64 %indvars.iv.next158 to i32
  %cmp50 = icmp slt i32 %29, %13
  br i1 %cmp50, label %for.body51, label %for.cond74.preheader

for.body76:                                       ; preds = %for.body76.lr.ph, %for.body76
  %indvars.iv = phi i64 [ 0, %for.body76.lr.ph ], [ %indvars.iv.next, %for.body76 ]
  %30 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %type79 = getelementptr inbounds %struct.t_coupl_iparams* %30, i64 %indvars.iv, i32 0
  %31 = load i32* %type79, align 4, !tbaa !0
  %iprint = getelementptr inbounds %struct.t_coupl_iparams* %30, i64 %indvars.iv, i32 3
  %idxprom83 = sext i32 %31 to i64
  %32 = load %union.t_iparams** %iparams, align 8, !tbaa !3
  %arrayidx84 = getelementptr inbounds %union.t_iparams* %32, i64 %idxprom83
  %33 = bitcast %union.t_iparams* %iprint to i8*
  %34 = bitcast %union.t_iparams* %arrayidx84 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %35 = load i32* %nIP, align 4, !tbaa !0
  %36 = trunc i64 %indvars.iv.next to i32
  %cmp75 = icmp slt i32 %36, %35
  br i1 %cmp75, label %for.body76, label %for.end87

for.end87:                                        ; preds = %for.body76, %for.cond74.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @write_gct(i8* %fn, %struct.t_coupl_rec* %tcr, %struct.t_idef* nocapture %idef) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #6
  tail call void @nice_header(%struct._IO_FILE* %call, i8* %fn) #6
  %0 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 0), align 16, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %1 = load float* %arrayidx, align 4, !tbaa !4
  %conv = fpext float %1 to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([49 x i8]* @.str20, i64 0, i64 0), i8* %0, double %conv) #6
  %2 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 1), align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 1
  %3 = load float* %arrayidx3, align 4, !tbaa !4
  %conv4 = fpext float %3 to double
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([44 x i8]* @.str21, i64 0, i64 0), i8* %2, double %conv4) #6
  %4 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 3), align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 3
  %5 = load float* %arrayidx7, align 4, !tbaa !4
  %conv8 = fpext float %5 to double
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0), i8* %4, double %conv8) #6
  %6 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 4), align 16, !tbaa !3
  %arrayidx11 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 4
  %7 = load float* %arrayidx11, align 4, !tbaa !4
  %conv12 = fpext float %7 to double
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str23, i64 0, i64 0), i8* %6, double %conv12) #6
  %8 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 5), align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 5
  %9 = load float* %arrayidx15, align 4, !tbaa !4
  %conv16 = fpext float %9 to double
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0), i8* %8, double %conv16) #6
  %10 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 6), align 16, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 6
  %11 = load float* %arrayidx19, align 4, !tbaa !4
  %conv20 = fpext float %11 to double
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str25, i64 0, i64 0), i8* %10, double %conv20) #6
  %12 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 7), align 8, !tbaa !3
  %arrayidx23 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 7
  %13 = load float* %arrayidx23, align 4, !tbaa !4
  %conv24 = fpext float %13 to double
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %12, double %conv24) #6
  %14 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 8), align 16, !tbaa !3
  %arrayidx27 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 8
  %15 = load float* %arrayidx27, align 4, !tbaa !4
  %conv28 = fpext float %15 to double
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %14, double %conv28) #6
  %16 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 9), align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 9
  %17 = load float* %arrayidx31, align 4, !tbaa !4
  %conv32 = fpext float %17 to double
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str28, i64 0, i64 0), i8* %16, double %conv32) #6
  %18 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 10), align 16, !tbaa !3
  %arrayidx35 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 10
  %19 = load float* %arrayidx35, align 4, !tbaa !4
  %conv36 = fpext float %19 to double
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str29, i64 0, i64 0), i8* %18, double %conv36) #6
  %20 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 11), align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 11
  %21 = load float* %arrayidx39, align 4, !tbaa !4
  %conv40 = fpext float %21 to double
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i8* %20, double %conv40) #6
  %22 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 12), align 16, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %23 = load float* %arrayidx43, align 4, !tbaa !4
  %conv44 = fpext float %23 to double
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([61 x i8]* @.str31, i64 0, i64 0), i8* %22, double %conv44) #6
  %24 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 13), align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %25 = load float* %arrayidx47, align 4, !tbaa !4
  %conv48 = fpext float %25 to double
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), i8* %24, double %conv48) #6
  %26 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !tbaa !3
  %nmemory = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  %27 = load i32* %nmemory, align 4, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), i8* %26, i32 %27) #6
  %28 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !tbaa !3
  %bInter = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  %29 = load i32* %bInter, align 4, !tbaa !0
  %idxprom = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %idxprom
  %30 = load i8** %arrayidx51, align 8, !tbaa !3
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([56 x i8]* @.str34, i64 0, i64 0), i8* %28, i8* %30) #6
  %31 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !tbaa !3
  %bVirial = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  %32 = load i32* %bVirial, align 4, !tbaa !0
  %idxprom53 = sext i32 %32 to i64
  %arrayidx54 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %idxprom53
  %33 = load i8** %arrayidx54, align 8, !tbaa !3
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([41 x i8]* @.str35, i64 0, i64 0), i8* %31, i8* %33) #6
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([27 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #6
  %nQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %34 = load i32* %nQ, align 4, !tbaa !0
  %cmp267 = icmp sgt i32 %34, 0
  br i1 %cmp267, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv273 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next274, %for.body ]
  %35 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %eObs = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 1
  %36 = load i32* %eObs, align 4, !tbaa !0
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom60
  %37 = load i8** %arrayidx61, align 8, !tbaa !3
  %at_i = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 0
  %38 = load i32* %at_i, align 4, !tbaa !0
  %xi_Q = getelementptr inbounds %struct.t_coupl_Q* %35, i64 %indvars.iv273, i32 4
  %39 = load float* %xi_Q, align 4, !tbaa !4
  %conv68 = fpext float %39 to double
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([23 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i8* %37, i32 %38, double %conv68) #6
  %indvars.iv.next274 = add i64 %indvars.iv273, 1
  %40 = load i32* %nQ, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next274 to i32
  %cmp = icmp slt i32 %41, %40
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0)) #6
  %42 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %call)
  %nLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %43 = load i32* %nLJ, align 4, !tbaa !0
  %cmp73265 = icmp sgt i32 %43, 0
  br i1 %cmp73265, label %for.body75.lr.ph, label %for.end99

for.body75.lr.ph:                                 ; preds = %for.end
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %for.body75

for.body75:                                       ; preds = %for.body75.lr.ph, %for.body75
  %indvars.iv271 = phi i64 [ 0, %for.body75.lr.ph ], [ %indvars.iv.next272, %for.body75 ]
  %44 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %eObs78 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 2
  %45 = load i32* %eObs78, align 4, !tbaa !0
  %idxprom79 = sext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom79
  %46 = load i8** %arrayidx80, align 8, !tbaa !3
  %at_i84 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 0
  %47 = load i32* %at_i84, align 4, !tbaa !0
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 1
  %48 = load i32* %at_j, align 4, !tbaa !0
  %xi_6 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 6
  %49 = load float* %xi_6, align 4, !tbaa !4
  %conv91 = fpext float %49 to double
  %xi_12 = getelementptr inbounds %struct.t_coupl_LJ* %44, i64 %indvars.iv271, i32 7
  %50 = load float* %xi_12, align 4, !tbaa !4
  %conv95 = fpext float %50 to double
  %call96 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0), i8* %46, i32 %47, i32 %48, double %conv91, double %conv95) #6
  %indvars.iv.next272 = add i64 %indvars.iv271, 1
  %51 = load i32* %nLJ, align 4, !tbaa !0
  %52 = trunc i64 %indvars.iv.next272 to i32
  %cmp73 = icmp slt i32 %52, %51
  br i1 %cmp73, label %for.body75, label %for.end99

for.end99:                                        ; preds = %for.body75, %for.end
  %call100 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([40 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0)) #6
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %call)
  %nBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %54 = load i32* %nBU, align 4, !tbaa !0
  %cmp103263 = icmp sgt i32 %54, 0
  br i1 %cmp103263, label %for.body105.lr.ph, label %for.end134

for.body105.lr.ph:                                ; preds = %for.end99
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %for.body105

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv269 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next270, %for.body105 ]
  %55 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %eObs108 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 2
  %56 = load i32* %eObs108, align 4, !tbaa !0
  %idxprom109 = sext i32 %56 to i64
  %arrayidx110 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom109
  %57 = load i8** %arrayidx110, align 8, !tbaa !3
  %at_i114 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 0
  %58 = load i32* %at_i114, align 4, !tbaa !0
  %at_j118 = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 1
  %59 = load i32* %at_j118, align 4, !tbaa !0
  %xi_a = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 7
  %60 = load float* %xi_a, align 4, !tbaa !4
  %conv122 = fpext float %60 to double
  %xi_b = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 8
  %61 = load float* %xi_b, align 4, !tbaa !4
  %conv126 = fpext float %61 to double
  %xi_c = getelementptr inbounds %struct.t_coupl_BU* %55, i64 %indvars.iv269, i32 9
  %62 = load float* %xi_c, align 4, !tbaa !4
  %conv130 = fpext float %62 to double
  %call131 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([40 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i8* %57, i32 %58, i32 %59, double %conv122, double %conv126, double %conv130) #6
  %indvars.iv.next270 = add i64 %indvars.iv269, 1
  %63 = load i32* %nBU, align 4, !tbaa !0
  %64 = trunc i64 %indvars.iv.next270 to i32
  %cmp103 = icmp slt i32 %64, %63
  br i1 %cmp103, label %for.body105, label %for.end134

for.end134:                                       ; preds = %for.body105, %for.end99
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str57, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %call)
  %nIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %66 = load i32* %nIP, align 4, !tbaa !0
  %cmp137261 = icmp sgt i32 %66, 0
  br i1 %cmp137261, label %for.body139.lr.ph, label %for.end170

for.body139.lr.ph:                                ; preds = %for.end134
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %for.body139

for.body139:                                      ; preds = %for.body139.lr.ph, %for.inc168
  %indvars.iv = phi i64 [ 0, %for.body139.lr.ph ], [ %indvars.iv.next, %for.inc168 ]
  %67 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 0
  %68 = load i32* %type, align 4, !tbaa !0
  %idxprom142 = sext i32 %68 to i64
  %69 = load i32** %functype, align 8, !tbaa !3
  %arrayidx143 = getelementptr inbounds i32* %69, i64 %idxprom142
  %70 = load i32* %arrayidx143, align 4, !tbaa !0
  %cond = icmp eq i32 %70, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.body139
  %eObs147 = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 1
  %71 = load i32* %eObs147, align 4, !tbaa !0
  %idxprom148 = sext i32 %71 to i64
  %arrayidx149 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %idxprom148
  %72 = load i8** %arrayidx149, align 8, !tbaa !3
  %73 = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 2, i32 0, i32 1
  %74 = load float* %73, align 4, !tbaa !4
  %conv157 = fpext float %74 to double
  %rA = getelementptr inbounds %struct.t_coupl_iparams* %67, i64 %indvars.iv, i32 2, i32 0, i32 0
  %75 = load float* %rA, align 4, !tbaa !4
  %conv163 = fpext float %75 to double
  %call164 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([31 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i8* %72, i32 %68, double %conv157, double %conv163) #6
  br label %for.inc168

sw.default:                                       ; preds = %for.body139
  %76 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %idxprom165 = sext i32 %70 to i64
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom165, i32 1
  %77 = load i8** %longname, align 8, !tbaa !3
  %call167 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([30 x i8]* @.str60, i64 0, i64 0), i8* %77) #6
  br label %for.inc168

for.inc168:                                       ; preds = %sw.bb, %sw.default
  %indvars.iv.next = add i64 %indvars.iv, 1
  %78 = load i32* %nIP, align 4, !tbaa !0
  %79 = trunc i64 %indvars.iv.next to i32
  %cmp137 = icmp slt i32 %79, %78
  br i1 %cmp137, label %for.body139, label %for.end170

for.end170:                                       ; preds = %for.inc168, %for.end134
  tail call void @ffclose(%struct._IO_FILE* %call) #6
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: optsize
declare void @nice_header(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

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
  %call = call %struct.t_inpfile* @read_inpfile(i8* %fn, i32* %ninp) #6
  store %struct.t_inpfile* %call, %struct.t_inpfile** %inp, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv476 = phi i64 [ 0, %entry ], [ %indvars.iv.next477, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv476
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv476
  %0 = load i8** %arrayidx2, align 8, !tbaa !3
  %call3 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* %0, float 0.000000e+00) #6
  %arrayidx5 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv476
  store float %call3, float* %arrayidx5, align 4, !tbaa !4
  %indvars.iv.next477 = add i64 %indvars.iv476, 1
  %lftr.wideiv478 = trunc i64 %indvars.iv.next477 to i32
  %exitcond479 = icmp eq i32 %lftr.wideiv478, 14
  br i1 %exitcond479, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %1 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !tbaa !3
  %call6 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* %1, i32 1) #6
  %nmemory = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  store i32 %call6, i32* %nmemory, align 4, !tbaa !0
  %2 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !tbaa !3
  %call7 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %2, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #6
  %bInter = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  store i32 %call7, i32* %bInter, align 4, !tbaa !0
  %3 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !tbaa !3
  %call8 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %3, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #6
  %bVirial = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  store i32 %call8, i32* %bVirial, align 4, !tbaa !0
  %tcLJ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %tcBU = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %tcQ = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %tIP = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %4 = bitcast %struct.t_coupl_LJ** %tcLJ to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 8, i1 false)
  %5 = load i32* %ninp, align 4, !tbaa !0
  %cmp10433 = icmp sgt i32 %5, 0
  br i1 %cmp10433, label %for.body11.lr.ph, label %for.end212

for.body11.lr.ph:                                 ; preds = %for.end
  %6 = bitcast i32* %ati.i to i8*
  %7 = bitcast i32* %atj.i to i8*
  %8 = bitcast double* %xi6.i to i8*
  %9 = bitcast double* %xi12.i to i8*
  %10 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  %11 = bitcast i32* %ati.i307 to i8*
  %12 = bitcast i32* %atj.i308 to i8*
  %13 = bitcast double* %xia.i to i8*
  %14 = bitcast double* %xib.i to i8*
  %15 = bitcast double* %xic.i to i8*
  %16 = bitcast i32* %ati.i347 to i8*
  %17 = bitcast double* %xiQ.i to i8*
  %18 = bitcast i32* %type.i to i8*
  %19 = bitcast double* %kb.i to i8*
  %20 = bitcast double* %b0.i to i8*
  br label %for.body11

for.cond77.preheader:                             ; preds = %for.inc74
  %cmp78428 = icmp sgt i32 %inc7.i409414, 1
  br i1 %cmp78428, label %for.body82.lr.ph, label %for.cond102.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc74
  %indvars.iv474 = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next475, %for.inc74 ]
  %inc17.i400442 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc17.i397417, %for.inc74 ]
  %inc43.i404439 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc43.i401416, %for.inc74 ]
  %inc36.i408436 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc36.i405415, %for.inc74 ]
  %inc7.i412434 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc7.i409414, %for.inc74 ]
  %21 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.t_inpfile* %21, i64 %indvars.iv474, i32 2
  %22 = load i8** %name, align 8, !tbaa !3
  %call14 = call i32 @gmx_strcasecmp(i8* %22, i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0)) #6
  %cmp15 = icmp eq i32 %call14, 0
  %23 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body11
  %value = getelementptr inbounds %struct.t_inpfile* %23, i64 %indvars.iv474, i32 3
  %24 = load i8** %value, align 8, !tbaa !3
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %call.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %24, i8* getelementptr inbounds ([13 x i8]* @.str77, i64 0, i64 0), i8* %10, i32* %ati.i, i32* %atj.i, double* %xi6.i, double* %xi12.i) #6
  %cmp.i = icmp eq i32 %call.i, 5
  br i1 %cmp.i, label %if.end.i, label %if.then65

if.end.i:                                         ; preds = %if.then
  %call2.i = call fastcc i32 @Name2eo(i8* %10) #6
  %cmp3.i = icmp eq i32 %call2.i, -1
  br i1 %cmp3.i, label %if.then4.i, label %for.cond.preheader.i

if.then4.i:                                       ; preds = %if.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str78, i64 0, i64 0), i8* %10) #6
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then4.i, %if.end.i
  %cmp7100.i = icmp sgt i32 %inc36.i408436, 0
  br i1 %cmp7100.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %25 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %26 = load i32* %ati.i, align 4, !tbaa !0
  %27 = load i32* %atj.i, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %j.0101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i ]
  %at_i.i = getelementptr inbounds %struct.t_coupl_LJ* %25, i64 %indvars.iv.i, i32 0
  %28 = load i32* %at_i.i, align 4, !tbaa !0
  %cmp8.i = icmp eq i32 %28, %26
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %at_j.i = getelementptr inbounds %struct.t_coupl_LJ* %25, i64 %indvars.iv.i, i32 1
  %29 = load i32* %at_j.i, align 4, !tbaa !0
  %cmp11.i = icmp eq i32 %29, %27
  br i1 %cmp11.i, label %land.lhs.true12.i, label %for.inc.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %xi_6.i = getelementptr inbounds %struct.t_coupl_LJ* %25, i64 %indvars.iv.i, i32 6
  %30 = load float* %xi_6.i, align 4, !tbaa !4
  %fabsf.i = call float @fabsf(float %30) #4
  %31 = fpext float %fabsf.i to double
  %cmp16.i = fcmp ogt double %31, 1.200000e-38
  br i1 %cmp16.i, label %land.lhs.true24.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true12.i
  %xi_12.i = getelementptr inbounds %struct.t_coupl_LJ* %25, i64 %indvars.iv.i, i32 7
  %32 = load float* %xi_12.i, align 4, !tbaa !4
  %fabsf99.i = call float @fabsf(float %32) #4
  %33 = fpext float %fabsf99.i to double
  %cmp22.i = fcmp ogt double %33, 1.200000e-38
  br i1 %cmp22.i, label %land.lhs.true24.i, label %for.inc.i

land.lhs.true24.i:                                ; preds = %lor.lhs.false.i, %land.lhs.true12.i
  %eObs.i = getelementptr inbounds %struct.t_coupl_LJ* %25, i64 %indvars.iv.i, i32 2
  %34 = load i32* %eObs.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %34, %call2.i
  %conv27.i = sitofp i32 %sub.i to double
  %call28.i = call double @fabs(double %conv27.i) #7
  %cmp29.i = fcmp olt double %call28.i, 1.200000e-38
  br i1 %cmp29.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true24.i, %lor.lhs.false.i, %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %inc.i = add nsw i32 %j.0101.i, 1
  %35 = trunc i64 %indvars.iv.next.i to i32
  %cmp7.i = icmp slt i32 %35, %inc36.i408436
  br i1 %cmp7.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %land.lhs.true24.i, %for.cond.preheader.i
  %j.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i ], [ %j.0101.i, %land.lhs.true24.i ]
  %cmp33.i = icmp eq i32 %j.0.lcssa.i, %inc36.i408436
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %for.end.i
  %inc36.i = add nsw i32 %inc36.i408436, 1
  %36 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %37 = bitcast %struct.t_coupl_LJ* %36 to i8*
  %mul.i = shl i32 %inc36.i, 5
  %call39.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 299, i8* %37, i32 %mul.i) #6
  %38 = bitcast i8* %call39.i to %struct.t_coupl_LJ*
  store %struct.t_coupl_LJ* %38, %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  br label %if.end41.i

if.else.i:                                        ; preds = %for.end.i
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call40.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([54 x i8]* @.str80, i64 0, i64 0), i8* %24) #6
  %.pre.i = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then35.i
  %inc36.i407 = phi i32 [ %inc36.i408436, %if.else.i ], [ %inc36.i, %if.then35.i ]
  %40 = phi %struct.t_coupl_LJ* [ %.pre.i, %if.else.i ], [ %38, %if.then35.i ]
  %idxprom42.i = sext i32 %j.0.lcssa.i to i64
  %at_i.i.i = getelementptr inbounds %struct.t_coupl_LJ* %40, i64 %idxprom42.i, i32 0
  store i32 0, i32* %at_i.i.i, align 4, !tbaa !0
  %at_j.i.i = getelementptr inbounds %struct.t_coupl_LJ* %40, i64 %idxprom42.i, i32 1
  store i32 0, i32* %at_j.i.i, align 4, !tbaa !0
  %eObs.i.i = getelementptr inbounds %struct.t_coupl_LJ* %40, i64 %idxprom42.i, i32 2
  store i32 -1, i32* %eObs.i.i, align 4, !tbaa !0
  %bPrint.i.i = getelementptr inbounds %struct.t_coupl_LJ* %40, i64 %idxprom42.i, i32 3
  store i32 1, i32* %bPrint.i.i, align 4, !tbaa !0
  %c6.i.i = getelementptr inbounds %struct.t_coupl_LJ* %40, i64 %idxprom42.i, i32 4
  %41 = bitcast float* %c6.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 16, i32 4, i1 false) #1
  %42 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %eObs46.i = getelementptr inbounds %struct.t_coupl_LJ* %42, i64 %idxprom42.i, i32 2
  store i32 %call2.i, i32* %eObs46.i, align 4, !tbaa !0
  br i1 %cmp3.i, label %if.then49.i, label %if.end51.i

if.then49.i:                                      ; preds = %if.end41.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str78, i64 0, i64 0), i8* %10) #6
  %.pre104.i = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then49.i, %if.end41.i
  %43 = phi %struct.t_coupl_LJ* [ %.pre104.i, %if.then49.i ], [ %42, %if.end41.i ]
  %44 = load i32* %ati.i, align 4, !tbaa !0
  %at_i54.i = getelementptr inbounds %struct.t_coupl_LJ* %43, i64 %idxprom42.i, i32 0
  store i32 %44, i32* %at_i54.i, align 4, !tbaa !0
  %45 = load i32* %atj.i, align 4, !tbaa !0
  %at_j57.i = getelementptr inbounds %struct.t_coupl_LJ* %43, i64 %idxprom42.i, i32 1
  store i32 %45, i32* %at_j57.i, align 4, !tbaa !0
  %46 = load double* %xi6.i, align 8, !tbaa !6
  %conv58.i = fptrunc double %46 to float
  %xi_661.i = getelementptr inbounds %struct.t_coupl_LJ* %43, i64 %idxprom42.i, i32 6
  store float %conv58.i, float* %xi_661.i, align 4, !tbaa !4
  %47 = load double* %xi12.i, align 8, !tbaa !6
  %conv62.i = fptrunc double %47 to float
  %xi_1265.i = getelementptr inbounds %struct.t_coupl_LJ* %43, i64 %idxprom42.i, i32 7
  store float %conv62.i, float* %xi_1265.i, align 4, !tbaa !4
  %idxprom66.i = sext i32 %call2.i to i64
  %arrayidx67.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom66.i
  store i32 1, i32* %arrayidx67.i, align 4, !tbaa !0
  br label %for.inc74

if.else:                                          ; preds = %for.body11
  %name23 = getelementptr inbounds %struct.t_inpfile* %23, i64 %indvars.iv474, i32 2
  %48 = load i8** %name23, align 8, !tbaa !3
  %call24 = call i32 @gmx_strcasecmp(i8* %48, i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  %49 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  br i1 %cmp25, label %if.then26, label %if.else34

if.then26:                                        ; preds = %if.else
  %value30 = getelementptr inbounds %struct.t_inpfile* %49, i64 %indvars.iv474, i32 3
  %50 = load i8** %value30, align 8, !tbaa !3
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %call.i310 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %50, i8* getelementptr inbounds ([16 x i8]* @.str73, i64 0, i64 0), i8* %10, i32* %ati.i307, i32* %atj.i308, double* %xia.i, double* %xib.i, double* %xic.i) #6
  %cmp.i311 = icmp eq i32 %call.i310, 6
  br i1 %cmp.i311, label %if.end.i314, label %if.then65

if.end.i314:                                      ; preds = %if.then26
  %call2.i312 = call fastcc i32 @Name2eo(i8* %10) #6
  %cmp3.i313 = icmp eq i32 %call2.i312, -1
  br i1 %cmp3.i313, label %if.then4.i315, label %for.cond.preheader.i316

if.then4.i315:                                    ; preds = %if.end.i314
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str74, i64 0, i64 0), i8* %10) #6
  br label %for.cond.preheader.i316

for.cond.preheader.i316:                          ; preds = %if.then4.i315, %if.end.i314
  %cmp7116.i = icmp sgt i32 %inc43.i404439, 0
  br i1 %cmp7116.i, label %for.body.lr.ph.i317, label %for.end.i338

for.body.lr.ph.i317:                              ; preds = %for.cond.preheader.i316
  %51 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %52 = load i32* %ati.i307, align 4, !tbaa !0
  %53 = load i32* %atj.i308, align 4, !tbaa !0
  br label %for.body.i321

for.body.i321:                                    ; preds = %for.inc.i336, %for.body.lr.ph.i317
  %indvars.iv.i318 = phi i64 [ 0, %for.body.lr.ph.i317 ], [ %indvars.iv.next.i333, %for.inc.i336 ]
  %j.0117.i = phi i32 [ 0, %for.body.lr.ph.i317 ], [ %inc.i334, %for.inc.i336 ]
  %at_i.i319 = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 0
  %54 = load i32* %at_i.i319, align 4, !tbaa !0
  %cmp8.i320 = icmp eq i32 %54, %52
  br i1 %cmp8.i320, label %land.lhs.true.i324, label %for.inc.i336

land.lhs.true.i324:                               ; preds = %for.body.i321
  %at_j.i322 = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 1
  %55 = load i32* %at_j.i322, align 4, !tbaa !0
  %cmp11.i323 = icmp eq i32 %55, %53
  br i1 %cmp11.i323, label %land.lhs.true12.i327, label %for.inc.i336

land.lhs.true12.i327:                             ; preds = %land.lhs.true.i324
  %xi_a.i = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 7
  %56 = load float* %xi_a.i, align 4, !tbaa !4
  %fabsf.i325 = call float @fabsf(float %56) #4
  %57 = fpext float %fabsf.i325 to double
  %cmp16.i326 = fcmp ogt double %57, 1.200000e-38
  br i1 %cmp16.i326, label %land.lhs.true31.i, label %lor.lhs.false.i329

lor.lhs.false.i329:                               ; preds = %land.lhs.true12.i327
  %xi_b.i = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 8
  %58 = load float* %xi_b.i, align 4, !tbaa !4
  %fabsf114.i = call float @fabsf(float %58) #4
  %59 = fpext float %fabsf114.i to double
  %cmp22.i328 = fcmp ogt double %59, 1.200000e-38
  br i1 %cmp22.i328, label %land.lhs.true31.i, label %lor.lhs.false24.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false.i329
  %xi_c.i = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 9
  %60 = load float* %xi_c.i, align 4, !tbaa !4
  %fabsf115.i = call float @fabsf(float %60) #4
  %61 = fpext float %fabsf115.i to double
  %cmp29.i330 = fcmp ogt double %61, 1.200000e-38
  br i1 %cmp29.i330, label %land.lhs.true31.i, label %for.inc.i336

land.lhs.true31.i:                                ; preds = %lor.lhs.false24.i, %lor.lhs.false.i329, %land.lhs.true12.i327
  %eObs.i331 = getelementptr inbounds %struct.t_coupl_BU* %51, i64 %indvars.iv.i318, i32 2
  %62 = load i32* %eObs.i331, align 4, !tbaa !0
  %sub.i332 = sub nsw i32 %62, %call2.i312
  %conv34.i = sitofp i32 %sub.i332 to double
  %call35.i = call double @fabs(double %conv34.i) #7
  %cmp36.i = fcmp olt double %call35.i, 1.200000e-38
  br i1 %cmp36.i, label %for.end.i338, label %for.inc.i336

for.inc.i336:                                     ; preds = %land.lhs.true31.i, %lor.lhs.false24.i, %land.lhs.true.i324, %for.body.i321
  %indvars.iv.next.i333 = add i64 %indvars.iv.i318, 1
  %inc.i334 = add nsw i32 %j.0117.i, 1
  %63 = trunc i64 %indvars.iv.next.i333 to i32
  %cmp7.i335 = icmp slt i32 %63, %inc43.i404439
  br i1 %cmp7.i335, label %for.body.i321, label %for.end.i338

for.end.i338:                                     ; preds = %for.inc.i336, %land.lhs.true31.i, %for.cond.preheader.i316
  %j.0.lcssa.i337 = phi i32 [ 0, %for.cond.preheader.i316 ], [ %inc.i334, %for.inc.i336 ], [ %j.0117.i, %land.lhs.true31.i ]
  %cmp40.i = icmp eq i32 %j.0.lcssa.i337, %inc43.i404439
  br i1 %cmp40.i, label %if.then42.i, label %if.else.i341

if.then42.i:                                      ; preds = %for.end.i338
  %inc43.i = add nsw i32 %inc43.i404439, 1
  %64 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %65 = bitcast %struct.t_coupl_BU* %64 to i8*
  %mul.i339 = mul i32 %inc43.i, 40
  %call46.i = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 336, i8* %65, i32 %mul.i339) #6
  %66 = bitcast i8* %call46.i to %struct.t_coupl_BU*
  store %struct.t_coupl_BU* %66, %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  br label %if.end48.i

if.else.i341:                                     ; preds = %for.end.i338
  %67 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call47.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([54 x i8]* @.str76, i64 0, i64 0), i8* %50) #6
  %.pre.i340 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else.i341, %if.then42.i
  %inc43.i403 = phi i32 [ %inc43.i404439, %if.else.i341 ], [ %inc43.i, %if.then42.i ]
  %68 = phi %struct.t_coupl_BU* [ %.pre.i340, %if.else.i341 ], [ %66, %if.then42.i ]
  %idxprom49.i = sext i32 %j.0.lcssa.i337 to i64
  %at_i.i.i342 = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 0
  store i32 0, i32* %at_i.i.i342, align 4, !tbaa !0
  %at_j.i.i343 = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 1
  store i32 0, i32* %at_j.i.i343, align 4, !tbaa !0
  %eObs.i.i344 = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 2
  store i32 -1, i32* %eObs.i.i344, align 4, !tbaa !0
  %bPrint.i.i345 = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 3
  store i32 1, i32* %bPrint.i.i345, align 4, !tbaa !0
  %a.i.i = getelementptr inbounds %struct.t_coupl_BU* %68, i64 %idxprom49.i, i32 4
  %69 = bitcast float* %a.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %69, i8 0, i64 24, i32 4, i1 false) #1
  %70 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %eObs53.i = getelementptr inbounds %struct.t_coupl_BU* %70, i64 %idxprom49.i, i32 2
  store i32 %call2.i312, i32* %eObs53.i, align 4, !tbaa !0
  br i1 %cmp3.i313, label %if.then56.i, label %if.end58.i

if.then56.i:                                      ; preds = %if.end48.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str74, i64 0, i64 0), i8* %10) #6
  %.pre120.i = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end48.i
  %71 = phi %struct.t_coupl_BU* [ %.pre120.i, %if.then56.i ], [ %70, %if.end48.i ]
  %72 = load i32* %ati.i307, align 4, !tbaa !0
  %at_i61.i = getelementptr inbounds %struct.t_coupl_BU* %71, i64 %idxprom49.i, i32 0
  store i32 %72, i32* %at_i61.i, align 4, !tbaa !0
  %73 = load i32* %atj.i308, align 4, !tbaa !0
  %at_j64.i = getelementptr inbounds %struct.t_coupl_BU* %71, i64 %idxprom49.i, i32 1
  store i32 %73, i32* %at_j64.i, align 4, !tbaa !0
  %74 = load double* %xia.i, align 8, !tbaa !6
  %conv65.i = fptrunc double %74 to float
  %xi_a68.i = getelementptr inbounds %struct.t_coupl_BU* %71, i64 %idxprom49.i, i32 7
  store float %conv65.i, float* %xi_a68.i, align 4, !tbaa !4
  %75 = load double* %xib.i, align 8, !tbaa !6
  %conv69.i = fptrunc double %75 to float
  %xi_b72.i = getelementptr inbounds %struct.t_coupl_BU* %71, i64 %idxprom49.i, i32 8
  store float %conv69.i, float* %xi_b72.i, align 4, !tbaa !4
  %76 = load double* %xic.i, align 8, !tbaa !6
  %conv73.i = fptrunc double %76 to float
  %xi_c76.i = getelementptr inbounds %struct.t_coupl_BU* %71, i64 %idxprom49.i, i32 9
  store float %conv73.i, float* %xi_c76.i, align 4, !tbaa !4
  %idxprom77.i = sext i32 %call2.i312 to i64
  %arrayidx78.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom77.i
  store i32 1, i32* %arrayidx78.i, align 4, !tbaa !0
  br label %for.inc74

if.else34:                                        ; preds = %if.else
  %name37 = getelementptr inbounds %struct.t_inpfile* %49, i64 %indvars.iv474, i32 2
  %77 = load i8** %name37, align 8, !tbaa !3
  %call38 = call i32 @gmx_strcasecmp(i8* %77, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #6
  %cmp39 = icmp eq i32 %call38, 0
  %78 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  br i1 %cmp39, label %if.then40, label %if.else48

if.then40:                                        ; preds = %if.else34
  %value44 = getelementptr inbounds %struct.t_inpfile* %78, i64 %indvars.iv474, i32 3
  %79 = load i8** %value44, align 8, !tbaa !3
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %call.i349 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %79, i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0), i8* %10, i32* %ati.i347, double* %xiQ.i) #6
  %cmp.i350 = icmp eq i32 %call.i349, 3
  br i1 %cmp.i350, label %for.cond.preheader.i351, label %if.then65

for.cond.preheader.i351:                          ; preds = %if.then40
  %cmp153.i = icmp sgt i32 %inc7.i412434, 0
  br i1 %cmp153.i, label %for.body.lr.ph.i352, label %for.end.i359

for.body.lr.ph.i352:                              ; preds = %for.cond.preheader.i351
  %80 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %81 = load i32* %ati.i347, align 4, !tbaa !0
  br label %for.body.i357

for.cond.i:                                       ; preds = %for.body.i357
  %82 = trunc i64 %indvars.iv.next.i355 to i32
  %cmp1.i = icmp slt i32 %82, %inc7.i412434
  br i1 %cmp1.i, label %for.body.i357, label %for.end.i359

for.body.i357:                                    ; preds = %for.cond.i, %for.body.lr.ph.i352
  %indvars.iv.i353 = phi i64 [ 0, %for.body.lr.ph.i352 ], [ %indvars.iv.next.i355, %for.cond.i ]
  %j.054.i = phi i32 [ 0, %for.body.lr.ph.i352 ], [ %inc.i356, %for.cond.i ]
  %at_i.i354 = getelementptr inbounds %struct.t_coupl_Q* %80, i64 %indvars.iv.i353, i32 0
  %83 = load i32* %at_i.i354, align 4, !tbaa !0
  %cmp2.i = icmp eq i32 %83, %81
  %indvars.iv.next.i355 = add i64 %indvars.iv.i353, 1
  %inc.i356 = add nsw i32 %j.054.i, 1
  br i1 %cmp2.i, label %for.end.i359, label %for.cond.i

for.end.i359:                                     ; preds = %for.body.i357, %for.cond.i, %for.cond.preheader.i351
  %j.0.lcssa.i358 = phi i32 [ 0, %for.cond.preheader.i351 ], [ %j.054.i, %for.body.i357 ], [ %inc.i356, %for.cond.i ]
  %cmp5.i = icmp eq i32 %j.0.lcssa.i358, %inc7.i412434
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i362

if.then6.i:                                       ; preds = %for.end.i359
  %inc7.i = add nsw i32 %inc7.i412434, 1
  %84 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %85 = bitcast %struct.t_coupl_Q* %84 to i8*
  %mul.i360 = mul i32 %inc7.i, 20
  %call9.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 413, i8* %85, i32 %mul.i360) #6
  %86 = bitcast i8* %call9.i to %struct.t_coupl_Q*
  store %struct.t_coupl_Q* %86, %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  br label %if.end11.i

if.else.i362:                                     ; preds = %for.end.i359
  %87 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([53 x i8]* @.str71, i64 0, i64 0), i8* %79) #6
  %.pre.i361 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i362, %if.then6.i
  %inc7.i411 = phi i32 [ %inc7.i412434, %if.else.i362 ], [ %inc7.i, %if.then6.i ]
  %88 = phi %struct.t_coupl_Q* [ %.pre.i361, %if.else.i362 ], [ %86, %if.then6.i ]
  %idxprom12.i = sext i32 %j.0.lcssa.i358 to i64
  %at_i.i.i363 = getelementptr inbounds %struct.t_coupl_Q* %88, i64 %idxprom12.i, i32 0
  store i32 0, i32* %at_i.i.i363, align 4, !tbaa !0
  %eObs.i.i364 = getelementptr inbounds %struct.t_coupl_Q* %88, i64 %idxprom12.i, i32 1
  store i32 -1, i32* %eObs.i.i364, align 4, !tbaa !0
  %bPrint.i.i365 = getelementptr inbounds %struct.t_coupl_Q* %88, i64 %idxprom12.i, i32 2
  store i32 1, i32* %bPrint.i.i365, align 4, !tbaa !0
  %Q.i.i = getelementptr inbounds %struct.t_coupl_Q* %88, i64 %idxprom12.i, i32 3
  store float 0.000000e+00, float* %Q.i.i, align 4, !tbaa !4
  %xi_Q.i.i = getelementptr inbounds %struct.t_coupl_Q* %88, i64 %idxprom12.i, i32 4
  store float 0.000000e+00, float* %xi_Q.i.i, align 4, !tbaa !4
  %call15.i = call fastcc i32 @Name2eo(i8* %10) #6
  %89 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %eObs.i366 = getelementptr inbounds %struct.t_coupl_Q* %89, i64 %idxprom12.i, i32 1
  store i32 %call15.i, i32* %eObs.i366, align 4, !tbaa !0
  %cmp21.i = icmp eq i32 %call15.i, -1
  br i1 %cmp21.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end11.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str72, i64 0, i64 0), i8* %10) #6
  %.pre57.i = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end11.i
  %90 = phi %struct.t_coupl_Q* [ %.pre57.i, %if.then23.i ], [ %89, %if.end11.i ]
  %91 = load i32* %ati.i347, align 4, !tbaa !0
  %at_i28.i = getelementptr inbounds %struct.t_coupl_Q* %90, i64 %idxprom12.i, i32 0
  store i32 %91, i32* %at_i28.i, align 4, !tbaa !0
  %92 = load double* %xiQ.i, align 8, !tbaa !6
  %conv29.i = fptrunc double %92 to float
  %xi_Q.i = getelementptr inbounds %struct.t_coupl_Q* %90, i64 %idxprom12.i, i32 4
  store float %conv29.i, float* %xi_Q.i, align 4, !tbaa !4
  %idxprom32.i = sext i32 %call15.i to i64
  %arrayidx33.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom32.i
  store i32 1, i32* %arrayidx33.i, align 4, !tbaa !0
  br label %for.inc74

if.else48:                                        ; preds = %if.else34
  %name51 = getelementptr inbounds %struct.t_inpfile* %78, i64 %indvars.iv474, i32 2
  %93 = load i8** %name51, align 8, !tbaa !3
  %call52 = call i32 @gmx_strcasecmp(i8* %93, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0)) #6
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %for.inc74

if.then54:                                        ; preds = %if.else48
  %94 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %value58 = getelementptr inbounds %struct.t_inpfile* %94, i64 %indvars.iv474, i32 3
  %95 = load i8** %value58, align 8, !tbaa !3
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  call void @llvm.lifetime.start(i64 256, i8* %10) #1
  %call.i369 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %95, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i8* %10, i32* %type.i) #6
  %cmp.i370 = icmp eq i32 %call.i369, 2
  br i1 %cmp.i370, label %if.end.i373, label %if.then65

if.end.i373:                                      ; preds = %if.then54
  %call2.i371 = call fastcc i32 @Name2eo(i8* %10) #6
  %cmp3.i372 = icmp eq i32 %call2.i371, -1
  br i1 %cmp3.i372, label %if.then4.i374, label %for.cond.preheader.i375

if.then4.i374:                                    ; preds = %if.end.i373
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), i8* %10) #6
  br label %for.cond.preheader.i375

for.cond.preheader.i375:                          ; preds = %if.then4.i374, %if.end.i373
  %cmp71.i = icmp sgt i32 %inc17.i400442, 0
  br i1 %cmp71.i, label %for.body.lr.ph.i376, label %for.end.i383

for.body.lr.ph.i376:                              ; preds = %for.cond.preheader.i375
  %96 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %97 = load i32* %type.i, align 4, !tbaa !0
  br label %for.body.i382

for.cond.i378:                                    ; preds = %for.body.i382
  %98 = trunc i64 %indvars.iv.next.i380 to i32
  %cmp7.i377 = icmp slt i32 %98, %inc17.i400442
  br i1 %cmp7.i377, label %for.body.i382, label %for.end.i383

for.body.i382:                                    ; preds = %for.cond.i378, %for.body.lr.ph.i376
  %indvars.iv.i379 = phi i64 [ 0, %for.body.lr.ph.i376 ], [ %indvars.iv.next.i380, %for.cond.i378 ]
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i376 ], [ %inc.i381, %for.cond.i378 ]
  %type8.i = getelementptr inbounds %struct.t_coupl_iparams* %96, i64 %indvars.iv.i379, i32 0
  %99 = load i32* %type8.i, align 4, !tbaa !0
  %cmp9.i = icmp eq i32 %99, %97
  %indvars.iv.next.i380 = add i64 %indvars.iv.i379, 1
  %inc.i381 = add nsw i32 %i.02.i, 1
  br i1 %cmp9.i, label %for.end.i383, label %for.cond.i378

for.end.i383:                                     ; preds = %for.body.i382, %for.cond.i378, %for.cond.preheader.i375
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i375 ], [ %i.02.i, %for.body.i382 ], [ %inc.i381, %for.cond.i378 ]
  %cmp12.i = icmp slt i32 %i.0.lcssa.i, %inc17.i400442
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i385

if.then13.i:                                      ; preds = %for.end.i383
  %100 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %101 = load i32* %type.i, align 4, !tbaa !0
  %call14.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([44 x i8]* @.str65, i64 0, i64 0), i32 %101) #6
  br label %if.end18.i

if.else.i385:                                     ; preds = %for.end.i383
  %102 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %103 = bitcast %struct.t_coupl_iparams* %102 to i8*
  %104 = mul i32 %inc17.i400442, 56
  %mul.i384 = add i32 %104, 56
  %call16.i = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 379, i8* %103, i32 %mul.i384) #6
  %105 = bitcast i8* %call16.i to %struct.t_coupl_iparams*
  store %struct.t_coupl_iparams* %105, %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %inc17.i = add nsw i32 %inc17.i400442, 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i385, %if.then13.i
  %inc17.i399 = phi i32 [ %inc17.i400442, %if.then13.i ], [ %inc17.i, %if.else.i385 ]
  %i.1.i = phi i32 [ %i.0.lcssa.i, %if.then13.i ], [ %inc17.i400442, %if.else.i385 ]
  %call20.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %95, i8* getelementptr inbounds ([11 x i8]* @.str67, i64 0, i64 0), i8* %10, i32* %type.i, double* %kb.i, double* %b0.i) #6
  %cmp21.i386 = icmp eq i32 %call20.i, 4
  br i1 %cmp21.i386, label %if.end24.i, label %if.then65

if.end24.i:                                       ; preds = %if.end18.i
  %106 = load i32* %type.i, align 4, !tbaa !0
  %idxprom25.i = sext i32 %i.1.i to i64
  %107 = load %struct.t_coupl_iparams** %tIP, align 8, !tbaa !3
  %type27.i = getelementptr inbounds %struct.t_coupl_iparams* %107, i64 %idxprom25.i, i32 0
  store i32 %106, i32* %type27.i, align 4, !tbaa !0
  %eObs.i387 = getelementptr inbounds %struct.t_coupl_iparams* %107, i64 %idxprom25.i, i32 1
  store i32 %call2.i371, i32* %eObs.i387, align 4, !tbaa !0
  %108 = load double* %kb.i, align 8, !tbaa !6
  %conv30.i = fptrunc double %108 to float
  %109 = getelementptr inbounds %struct.t_coupl_iparams* %107, i64 %idxprom25.i, i32 2, i32 0, i32 1
  store float %conv30.i, float* %109, align 4, !tbaa !4
  %110 = load double* %b0.i, align 8, !tbaa !6
  %conv33.i = fptrunc double %110 to float
  %rA.i = getelementptr inbounds %struct.t_coupl_iparams* %107, i64 %idxprom25.i, i32 2, i32 0, i32 0
  store float %conv33.i, float* %rA.i, align 4, !tbaa !4
  %idxprom38.i = sext i32 %call2.i371 to i64
  %arrayidx39.i = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %idxprom38.i
  store i32 1, i32* %arrayidx39.i, align 4, !tbaa !0
  br label %for.inc74

if.then65:                                        ; preds = %if.then, %if.then26, %if.then40, %if.then54, %if.end18.i
  %inc17.i397.ph = phi i32 [ %inc17.i400442, %if.then ], [ %inc17.i400442, %if.then26 ], [ %inc17.i400442, %if.then40 ], [ %inc17.i400442, %if.then54 ], [ %inc17.i399, %if.end18.i ]
  %111 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %112 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %name68 = getelementptr inbounds %struct.t_inpfile* %112, i64 %indvars.iv474, i32 2
  %113 = load i8** %name68, align 8, !tbaa !3
  %value71 = getelementptr inbounds %struct.t_inpfile* %112, i64 %indvars.iv474, i32 3
  %114 = load i8** %value71, align 8, !tbaa !3
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i8* %fn, i8* %113, i8* %114) #6
  br label %for.inc74

for.inc74:                                        ; preds = %if.end51.i, %if.end58.i, %if.end25.i, %if.end24.i, %if.else48, %if.then65
  %inc17.i397417 = phi i32 [ %inc17.i397.ph, %if.then65 ], [ %inc17.i400442, %if.else48 ], [ %inc17.i400442, %if.end51.i ], [ %inc17.i400442, %if.end58.i ], [ %inc17.i400442, %if.end25.i ], [ %inc17.i399, %if.end24.i ]
  %inc43.i401416 = phi i32 [ %inc43.i404439, %if.then65 ], [ %inc43.i404439, %if.else48 ], [ %inc43.i404439, %if.end51.i ], [ %inc43.i403, %if.end58.i ], [ %inc43.i404439, %if.end25.i ], [ %inc43.i404439, %if.end24.i ]
  %inc36.i405415 = phi i32 [ %inc36.i408436, %if.then65 ], [ %inc36.i408436, %if.else48 ], [ %inc36.i407, %if.end51.i ], [ %inc36.i408436, %if.end58.i ], [ %inc36.i408436, %if.end25.i ], [ %inc36.i408436, %if.end24.i ]
  %inc7.i409414 = phi i32 [ %inc7.i412434, %if.then65 ], [ %inc7.i412434, %if.else48 ], [ %inc7.i412434, %if.end51.i ], [ %inc7.i412434, %if.end58.i ], [ %inc7.i411, %if.end25.i ], [ %inc7.i412434, %if.end24.i ]
  %indvars.iv.next475 = add i64 %indvars.iv474, 1
  %115 = load i32* %ninp, align 4, !tbaa !0
  %116 = trunc i64 %indvars.iv.next475 to i32
  %cmp10 = icmp slt i32 %116, %115
  br i1 %cmp10, label %for.body11, label %for.cond77.preheader

for.body82.lr.ph:                                 ; preds = %for.inc99, %for.cond77.preheader
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %for.inc99 ], [ 1, %for.cond77.preheader ]
  %indvars.iv466 = phi i32 [ %indvars.iv.next467, %for.inc99 ], [ 1, %for.cond77.preheader ]
  %117 = load %struct.t_coupl_Q** %tcQ, align 8, !tbaa !3
  %at_i = getelementptr inbounds %struct.t_coupl_Q* %117, i64 %indvars.iv470, i32 0
  br label %for.body82

for.cond102.preheader:                            ; preds = %for.inc99, %for.cond77.preheader
  %cmp103424 = icmp sgt i32 %inc36.i405415, 1
  br i1 %cmp103424, label %for.body107.lr.ph, label %for.cond156.preheader

for.body82:                                       ; preds = %for.inc96, %for.body82.lr.ph
  %indvars.iv464 = phi i64 [ 0, %for.body82.lr.ph ], [ %indvars.iv.next465, %for.inc96 ]
  %118 = load i32* %at_i, align 4, !tbaa !0
  %at_i89 = getelementptr inbounds %struct.t_coupl_Q* %117, i64 %indvars.iv464, i32 0
  %119 = load i32* %at_i89, align 4, !tbaa !0
  %cmp90 = icmp eq i32 %118, %119
  br i1 %cmp90, label %if.then91, label %for.inc96

if.then91:                                        ; preds = %for.body82
  %bPrint = getelementptr inbounds %struct.t_coupl_Q* %117, i64 %indvars.iv464, i32 2
  store i32 0, i32* %bPrint, align 4, !tbaa !0
  br label %for.inc96

for.inc96:                                        ; preds = %for.body82, %if.then91
  %indvars.iv.next465 = add i64 %indvars.iv464, 1
  %lftr.wideiv468 = trunc i64 %indvars.iv.next465 to i32
  %exitcond469 = icmp eq i32 %lftr.wideiv468, %indvars.iv466
  br i1 %exitcond469, label %for.inc99, label %for.body82

for.inc99:                                        ; preds = %for.inc96
  %indvars.iv.next471 = add i64 %indvars.iv470, 1
  %indvars.iv.next467 = add i32 %indvars.iv466, 1
  %lftr.wideiv472 = trunc i64 %indvars.iv.next471 to i32
  %exitcond473 = icmp eq i32 %lftr.wideiv472, %inc7.i409414
  br i1 %exitcond473, label %for.cond102.preheader, label %for.body82.lr.ph

for.body107.lr.ph:                                ; preds = %for.inc153, %for.cond102.preheader
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %for.inc153 ], [ 1, %for.cond102.preheader ]
  %indvars.iv456 = phi i32 [ %indvars.iv.next457, %for.inc153 ], [ 1, %for.cond102.preheader ]
  %120 = load %struct.t_coupl_LJ** %tcLJ, align 8, !tbaa !3
  %at_i111 = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv460, i32 0
  %at_j = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv460, i32 1
  %.pre481 = load i32* %at_i111, align 4, !tbaa !0
  br label %for.body107

for.cond156.preheader:                            ; preds = %for.inc153, %for.cond102.preheader
  %cmp157420 = icmp sgt i32 %inc43.i401416, 1
  br i1 %cmp157420, label %for.body161.lr.ph, label %for.end212

for.body107:                                      ; preds = %for.inc150, %for.body107.lr.ph
  %indvars.iv454 = phi i64 [ 0, %for.body107.lr.ph ], [ %indvars.iv.next455, %for.inc150 ]
  %at_i115 = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv454, i32 0
  %121 = load i32* %at_i115, align 4, !tbaa !0
  %cmp116 = icmp eq i32 %.pre481, %121
  br i1 %cmp116, label %land.lhs.true, label %for.body107.lor.lhs.false_crit_edge

for.body107.lor.lhs.false_crit_edge:              ; preds = %for.body107
  %at_j132.pre = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv454, i32 1
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body107
  %122 = load i32* %at_j, align 4, !tbaa !0
  %at_j123 = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv454, i32 1
  %123 = load i32* %at_j123, align 4, !tbaa !0
  %cmp124 = icmp eq i32 %122, %123
  br i1 %cmp124, label %if.then144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body107.lor.lhs.false_crit_edge
  %at_j132.pre-phi = phi i32* [ %at_j132.pre, %for.body107.lor.lhs.false_crit_edge ], [ %at_j123, %land.lhs.true ]
  %124 = load i32* %at_j132.pre-phi, align 4, !tbaa !0
  %cmp133 = icmp eq i32 %.pre481, %124
  br i1 %cmp133, label %land.lhs.true134, label %for.inc150

land.lhs.true134:                                 ; preds = %lor.lhs.false
  %125 = load i32* %at_j, align 4, !tbaa !0
  %cmp143 = icmp eq i32 %125, %121
  br i1 %cmp143, label %if.then144, label %for.inc150

if.then144:                                       ; preds = %land.lhs.true134, %land.lhs.true
  %bPrint148 = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %indvars.iv454, i32 3
  store i32 0, i32* %bPrint148, align 4, !tbaa !0
  br label %for.inc150

for.inc150:                                       ; preds = %lor.lhs.false, %land.lhs.true134, %if.then144
  %indvars.iv.next455 = add i64 %indvars.iv454, 1
  %lftr.wideiv458 = trunc i64 %indvars.iv.next455 to i32
  %exitcond459 = icmp eq i32 %lftr.wideiv458, %indvars.iv456
  br i1 %exitcond459, label %for.inc153, label %for.body107

for.inc153:                                       ; preds = %for.inc150
  %indvars.iv.next461 = add i64 %indvars.iv460, 1
  %indvars.iv.next457 = add i32 %indvars.iv456, 1
  %lftr.wideiv462 = trunc i64 %indvars.iv.next461 to i32
  %exitcond463 = icmp eq i32 %lftr.wideiv462, %inc36.i405415
  br i1 %exitcond463, label %for.cond156.preheader, label %for.body107.lr.ph

for.body161.lr.ph:                                ; preds = %for.inc210, %for.cond156.preheader
  %indvars.iv450 = phi i64 [ %indvars.iv.next451, %for.inc210 ], [ 1, %for.cond156.preheader ]
  %indvars.iv448 = phi i32 [ %indvars.iv.next449, %for.inc210 ], [ 1, %for.cond156.preheader ]
  %126 = load %struct.t_coupl_BU** %tcBU, align 8, !tbaa !3
  %at_i165 = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv450, i32 0
  %at_j175 = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv450, i32 1
  %.pre = load i32* %at_i165, align 4, !tbaa !0
  br label %for.body161

for.body161:                                      ; preds = %for.inc207, %for.body161.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next, %for.inc207 ]
  %at_i169 = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv, i32 0
  %127 = load i32* %at_i169, align 4, !tbaa !0
  %cmp170 = icmp eq i32 %.pre, %127
  br i1 %cmp170, label %land.lhs.true171, label %for.body161.lor.lhs.false181_crit_edge

for.body161.lor.lhs.false181_crit_edge:           ; preds = %for.body161
  %at_j189.pre = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv, i32 1
  br label %lor.lhs.false181

land.lhs.true171:                                 ; preds = %for.body161
  %128 = load i32* %at_j175, align 4, !tbaa !0
  %at_j179 = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv, i32 1
  %129 = load i32* %at_j179, align 4, !tbaa !0
  %cmp180 = icmp eq i32 %128, %129
  br i1 %cmp180, label %if.then201, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %land.lhs.true171, %for.body161.lor.lhs.false181_crit_edge
  %at_j189.pre-phi = phi i32* [ %at_j189.pre, %for.body161.lor.lhs.false181_crit_edge ], [ %at_j179, %land.lhs.true171 ]
  %130 = load i32* %at_j189.pre-phi, align 4, !tbaa !0
  %cmp190 = icmp eq i32 %.pre, %130
  br i1 %cmp190, label %land.lhs.true191, label %for.inc207

land.lhs.true191:                                 ; preds = %lor.lhs.false181
  %131 = load i32* %at_j175, align 4, !tbaa !0
  %cmp200 = icmp eq i32 %131, %127
  br i1 %cmp200, label %if.then201, label %for.inc207

if.then201:                                       ; preds = %land.lhs.true191, %land.lhs.true171
  %bPrint205 = getelementptr inbounds %struct.t_coupl_BU* %126, i64 %indvars.iv, i32 3
  store i32 0, i32* %bPrint205, align 4, !tbaa !0
  br label %for.inc207

for.inc207:                                       ; preds = %lor.lhs.false181, %land.lhs.true191, %if.then201
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv448
  br i1 %exitcond, label %for.inc210, label %for.body161

for.inc210:                                       ; preds = %for.inc207
  %indvars.iv.next451 = add i64 %indvars.iv450, 1
  %indvars.iv.next449 = add i32 %indvars.iv448, 1
  %lftr.wideiv452 = trunc i64 %indvars.iv.next451 to i32
  %exitcond453 = icmp eq i32 %lftr.wideiv452, %inc43.i401416
  br i1 %exitcond453, label %for.end212, label %for.body161.lr.ph

for.end212:                                       ; preds = %for.end, %for.inc210, %for.cond156.preheader
  %inc7.i412.lcssa486492500 = phi i32 [ %inc7.i409414, %for.cond156.preheader ], [ %inc7.i409414, %for.inc210 ], [ 0, %for.end ]
  %inc36.i408.lcssa485493499 = phi i32 [ %inc36.i405415, %for.cond156.preheader ], [ %inc36.i405415, %for.inc210 ], [ 0, %for.end ]
  %inc43.i404.lcssa484494498 = phi i32 [ %inc43.i401416, %for.cond156.preheader ], [ %inc43.i401416, %for.inc210 ], [ 0, %for.end ]
  %inc17.i400.lcssa483495497 = phi i32 [ %inc17.i397417, %for.cond156.preheader ], [ %inc17.i397417, %for.inc210 ], [ 0, %for.end ]
  %nQ213 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  store i32 %inc7.i412.lcssa486492500, i32* %nQ213, align 4, !tbaa !0
  %nLJ214 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  store i32 %inc36.i408.lcssa485493499, i32* %nLJ214, align 4, !tbaa !0
  %nBU215 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  store i32 %inc43.i404.lcssa484494498, i32* %nBU215, align 4, !tbaa !0
  %nIP216 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  store i32 %inc17.i400.lcssa483495497, i32* %nIP216, align 4, !tbaa !0
  %132 = load %struct.t_inpfile** %inp, align 8, !tbaa !3
  %133 = bitcast %struct.t_inpfile* %132 to i8*
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str18, i64 0, i64 0), i32 497, i8* %133) #6
  ret void
}

; Function Attrs: optsize
declare %struct.t_inpfile* @read_inpfile(i8*, i32*) #2

; Function Attrs: optsize
declare float @get_ereal(i32*, %struct.t_inpfile**, i8*, float) #2

; Function Attrs: optsize
declare i32 @get_eint(i32*, %struct.t_inpfile**, i8*, i32) #2

; Function Attrs: optsize
declare i32 @get_eenum(i32*, %struct.t_inpfile**, i8*, i8**) #2

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @Name2eo(i8* %s) #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nsw i32 %i.010, 1
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %arrayidx = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv
  %1 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @gmx_strcasecmp(i8* %s, i8* %1) #6
  %cmp1 = icmp eq i32 %call, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %3 = load i8** %arrayidx, align 8, !tbaa !3
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8]* @.str68, i64 0, i64 0), i32 %i.010, i8* %3) #6
  br label %for.end

for.end:                                          ; preds = %for.cond, %if.then
  %res.0 = phi i32 [ %i.010, %if.then ], [ -1, %for.cond ]
  ret i32 %res.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare void @_blockrx(i32, i32, i32, i8*) #2

; Function Attrs: optsize
declare void @_blocktx(i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 0, i64 12, metadata !1, i64 12, i64 12, metadata !1, i64 0, i64 24, metadata !1, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 4, metadata !4, i64 4, i64 4, metadata !4, i64 8, i64 4, metadata !4, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !0, i64 20, i64 4, metadata !0, i64 0, i64 4, metadata !0, i64 4, i64 4, metadata !0, i64 8, i64 4, metadata !0, i64 12, i64 4, metadata !4, i64 16, i64 4, metadata !4, i64 20, i64 4, metadata !4, i64 0, i64 24, metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
