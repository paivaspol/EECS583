; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/fnbf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nrnb = type { [129 x double] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

@cpu_capabilities = global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Can't do softcore with the SPEC benchmark version\00", align 1
@.str1 = private unnamed_addr constant [47 x i8] c"nrnb_ind is \22NONE\22, bad selection made in ns.c\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"No function corresponding to %s in %s `line' %d\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/fnbf.c\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"MFlops accounting wrong in %s, %d, nrnb_ind = %d\00", align 1
@do_14.nbfp14 = internal unnamed_addr global float* null, align 8
@do_14.bWarn = internal unnamed_addr global i1 false
@debug = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [7 x i8] c"nbfp14\00", align 1
@stderr = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [53 x i8] c"Warning: 1-4 interaction at distance larger than %g\0A\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"These are ignored for the rest of the simulation\0Aturn on -debug for more information\0A\00", align 1
@.str8 = private unnamed_addr constant [82 x i8] c"%8f %8f %8f\0A%8f %8f %8f\0A1-4 (%d,%d) interaction not within cut-off! r=%g. Ignored\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"nbfp\00", align 1
@.str10 = private unnamed_addr constant [126 x i8] c"Force field inconsistency: 1-4 interaction parameters for atoms %d-%d not the same as for other atoms with the same atom type\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @do_fnbf(%struct._IO_FILE* nocapture %log, %struct.t_commrec* nocapture %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, %struct.t_mdatoms* %mdatoms, float* %egnb, float* %egcoul, float* nocapture %box_size, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda, i32 %bLR, i32 %eNL) #0 {
entry:
  %cmp = icmp sgt i32 %eNL, -1
  %add = add nsw i32 %eNL, 1
  %i0.0 = select i1 %cmp, i32 %eNL, i32 0
  %i1.0 = select i1 %cmp, i32 %add, i32 13
  %tobool = icmp ne i32 %bLR, 0
  %fshift_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %fshift3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %.pn.in = select i1 %tobool, [3 x float]** %fshift_twin, [3 x float]** %fshift3
  %.pn = load [3 x float]** %.pn.in, align 8
  %fshift.0 = getelementptr inbounds [3 x float]* %.pn, i64 0, i64 0
  %cmp72973 = icmp slt i32 %i0.0, %i1.0
  br i1 %cmp72973, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx1525 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 78
  %arrayidx1535 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %shift_vec = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %arraydecay21 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [3 x float]* %f, i64 0, i64 0
  %typeA = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %tabscale = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  %vdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 19
  %typeB = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 12
  %tabscale_exp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 28
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 6
  %epsfac = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %k_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %c_rf = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %coultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 18
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 7
  %coulvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %0 = sext i32 %i0.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  br i1 %tobool, label %if.then9, label %if.else11

if.then9:                                         ; preds = %for.body
  %arrayidx10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv
  br label %if.end14

if.else11:                                        ; preds = %for.body
  %arrayidx13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then9
  %nlist.0 = phi %struct.t_nblist* [ %arrayidx10, %if.then9 ], [ %arrayidx13, %if.else11 ]
  %nri = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 1
  %1 = load i32* %nri, align 4, !tbaa !0
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %if.end14
  %il_code = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 0
  %2 = load i32* %il_code, align 4, !tbaa !0
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb41
    i32 3, label %sw.bb58
    i32 4, label %sw.bb76
    i32 5, label %sw.bb93
    i32 6, label %sw.bb113
    i32 7, label %sw.bb132
    i32 8, label %sw.bb133
    i32 9, label %sw.bb152
    i32 10, label %sw.bb173
    i32 11, label %sw.bb194
    i32 12, label %sw.bb195
    i32 13, label %sw.bb209
    i32 14, label %sw.bb226
    i32 15, label %sw.bb242
    i32 16, label %sw.bb258
    i32 17, label %sw.bb277
    i32 18, label %sw.bb297
    i32 19, label %sw.bb316
    i32 20, label %sw.bb335
    i32 21, label %sw.bb354
    i32 22, label %sw.bb374
    i32 23, label %sw.bb393
    i32 24, label %sw.bb412
    i32 25, label %sw.bb433
    i32 26, label %sw.bb455
    i32 27, label %sw.bb476
    i32 28, label %sw.bb497
    i32 29, label %sw.bb519
    i32 30, label %sw.bb542
    i32 31, label %sw.bb564
    i32 32, label %sw.bb586
    i32 33, label %sw.bb602
    i32 34, label %sw.bb621
    i32 35, label %sw.bb639
    i32 36, label %sw.bb657
    i32 37, label %sw.bb678
    i32 38, label %sw.bb700
    i32 39, label %sw.bb721
    i32 40, label %sw.bb742
    i32 41, label %sw.bb763
    i32 42, label %sw.bb785
    i32 43, label %sw.bb806
    i32 44, label %sw.bb827
    i32 45, label %sw.bb850
    i32 46, label %sw.bb874
    i32 47, label %sw.bb897
    i32 48, label %sw.bb920
    i32 49, label %sw.bb944
    i32 50, label %sw.bb969
    i32 51, label %sw.bb993
    i32 52, label %sw.bb1017
    i32 53, label %sw.bb1034
    i32 54, label %sw.bb1052
    i32 55, label %sw.bb1053
    i32 56, label %sw.bb1072
    i32 57, label %sw.bb1090
    i32 58, label %sw.bb1108
    i32 59, label %sw.bb1129
    i32 60, label %sw.bb1151
    i32 61, label %sw.bb1172
    i32 62, label %sw.bb1193
    i32 63, label %sw.bb1214
    i32 64, label %sw.bb1236
    i32 65, label %sw.bb1257
    i32 66, label %sw.bb1278
    i32 67, label %sw.bb1298
    i32 68, label %sw.bb1321
    i32 69, label %sw.bb1322
    i32 70, label %sw.bb1344
    i32 71, label %sw.bb1365
    i32 72, label %sw.bb1386
    i32 73, label %sw.bb1408
    i32 74, label %sw.bb1432
    i32 75, label %sw.bb1433
    i32 76, label %sw.bb1456
    i32 77, label %sw.bb1478
    i32 -1, label %sw.bb1500
  ]

sw.bb:                                            ; preds = %if.then16
  %iinr = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %3 = load i32** %iinr, align 8, !tbaa !3
  %jindex = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %4 = load i32** %jindex, align 8, !tbaa !3
  %jjnr = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %5 = load i32** %jjnr, align 8, !tbaa !3
  %shift = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %6 = load i32** %shift, align 8, !tbaa !3
  %7 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay19 = getelementptr inbounds [3 x float]* %7, i64 0, i64 0
  %gid = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %8 = load i32** %gid, align 8, !tbaa !3
  %9 = load i32** %typeA, align 8, !tbaa !3
  %10 = load i32* %ntype, align 4, !tbaa !0
  %11 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl0100(i32 %1, i32* %3, i32* %4, i32* %5, i32* %6, float* %arraydecay19, float* %fshift.0, i32* %8, float* %arraydecay21, float* %arraydecay23, i32* %9, i32 %10, float* %11, float* %egnb) #4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.then16
  %iinr26 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %12 = load i32** %iinr26, align 8, !tbaa !3
  %jindex27 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %13 = load i32** %jindex27, align 8, !tbaa !3
  %jjnr28 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %14 = load i32** %jjnr28, align 8, !tbaa !3
  %shift29 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %15 = load i32** %shift29, align 8, !tbaa !3
  %16 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay32 = getelementptr inbounds [3 x float]* %16, i64 0, i64 0
  %gid33 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %17 = load i32** %gid33, align 8, !tbaa !3
  %18 = load i32** %typeA, align 8, !tbaa !3
  %19 = load i32* %ntype, align 4, !tbaa !0
  %20 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %21 = load i32** %nsatoms, align 8, !tbaa !3
  tail call void @inl0110(i32 %1, i32* %12, i32* %13, i32* %14, i32* %15, float* %arraydecay32, float* %fshift.0, i32* %17, float* %arraydecay21, float* %arraydecay23, i32* %18, i32 %19, float* %20, float* %egnb, i32* %21) #4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.then16
  %iinr43 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %22 = load i32** %iinr43, align 8, !tbaa !3
  %jindex44 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %23 = load i32** %jindex44, align 8, !tbaa !3
  %jjnr45 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %24 = load i32** %jjnr45, align 8, !tbaa !3
  %shift46 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %25 = load i32** %shift46, align 8, !tbaa !3
  %26 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay49 = getelementptr inbounds [3 x float]* %26, i64 0, i64 0
  %gid50 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %27 = load i32** %gid50, align 8, !tbaa !3
  %28 = load i32** %typeA, align 8, !tbaa !3
  %29 = load i32* %ntype, align 4, !tbaa !0
  %30 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl0200(i32 %1, i32* %22, i32* %23, i32* %24, i32* %25, float* %arraydecay49, float* %fshift.0, i32* %27, float* %arraydecay21, float* %arraydecay23, i32* %28, i32 %29, float* %30, float* %egnb) #4
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.then16
  %iinr60 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %31 = load i32** %iinr60, align 8, !tbaa !3
  %jindex61 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %32 = load i32** %jindex61, align 8, !tbaa !3
  %jjnr62 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %33 = load i32** %jjnr62, align 8, !tbaa !3
  %shift63 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %34 = load i32** %shift63, align 8, !tbaa !3
  %35 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay66 = getelementptr inbounds [3 x float]* %35, i64 0, i64 0
  %gid67 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %36 = load i32** %gid67, align 8, !tbaa !3
  %37 = load i32** %typeA, align 8, !tbaa !3
  %38 = load i32* %ntype, align 4, !tbaa !0
  %39 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms75 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %40 = load i32** %nsatoms75, align 8, !tbaa !3
  tail call void @inl0210(i32 %1, i32* %31, i32* %32, i32* %33, i32* %34, float* %arraydecay66, float* %fshift.0, i32* %36, float* %arraydecay21, float* %arraydecay23, i32* %37, i32 %38, float* %39, float* %egnb, i32* %40) #4
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.then16
  %iinr78 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %41 = load i32** %iinr78, align 8, !tbaa !3
  %jindex79 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %42 = load i32** %jindex79, align 8, !tbaa !3
  %jjnr80 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %43 = load i32** %jjnr80, align 8, !tbaa !3
  %shift81 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %44 = load i32** %shift81, align 8, !tbaa !3
  %45 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay84 = getelementptr inbounds [3 x float]* %45, i64 0, i64 0
  %gid85 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %46 = load i32** %gid85, align 8, !tbaa !3
  %47 = load i32** %typeA, align 8, !tbaa !3
  %48 = load i32* %ntype, align 4, !tbaa !0
  %49 = load float** %nbfp, align 8, !tbaa !3
  %50 = load float* %tabscale, align 4, !tbaa !4
  %51 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl0300(i32 %1, i32* %41, i32* %42, i32* %43, i32* %44, float* %arraydecay84, float* %fshift.0, i32* %46, float* %arraydecay21, float* %arraydecay23, i32* %47, i32 %48, float* %49, float* %egnb, float %50, float* %51) #4
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.then16
  %iinr95 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %52 = load i32** %iinr95, align 8, !tbaa !3
  %jindex96 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %53 = load i32** %jindex96, align 8, !tbaa !3
  %jjnr97 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %54 = load i32** %jjnr97, align 8, !tbaa !3
  %shift98 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %55 = load i32** %shift98, align 8, !tbaa !3
  %56 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay101 = getelementptr inbounds [3 x float]* %56, i64 0, i64 0
  %gid102 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %57 = load i32** %gid102, align 8, !tbaa !3
  %58 = load i32** %typeA, align 8, !tbaa !3
  %59 = load i32* %ntype, align 4, !tbaa !0
  %60 = load float** %nbfp, align 8, !tbaa !3
  %61 = load float* %tabscale, align 4, !tbaa !4
  %62 = load float** %vdwtab, align 8, !tbaa !3
  %nsatoms112 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %63 = load i32** %nsatoms112, align 8, !tbaa !3
  tail call void @inl0310(i32 %1, i32* %52, i32* %53, i32* %54, i32* %55, float* %arraydecay101, float* %fshift.0, i32* %57, float* %arraydecay21, float* %arraydecay23, i32* %58, i32 %59, float* %60, float* %egnb, float %61, float* %62, i32* %63) #4
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.then16
  %iinr115 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %64 = load i32** %iinr115, align 8, !tbaa !3
  %jindex116 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %65 = load i32** %jindex116, align 8, !tbaa !3
  %jjnr117 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %66 = load i32** %jjnr117, align 8, !tbaa !3
  %shift118 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %67 = load i32** %shift118, align 8, !tbaa !3
  %68 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay121 = getelementptr inbounds [3 x float]* %68, i64 0, i64 0
  %gid122 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %69 = load i32** %gid122, align 8, !tbaa !3
  %70 = load i32** %typeA, align 8, !tbaa !3
  %71 = load i32* %ntype, align 4, !tbaa !0
  %72 = load float** %nbfp, align 8, !tbaa !3
  %73 = load float* %tabscale, align 4, !tbaa !4
  %74 = load float** %vdwtab, align 8, !tbaa !3
  %75 = load i32** %typeB, align 8, !tbaa !3
  tail call void @inl0301(i32 %1, i32* %64, i32* %65, i32* %66, i32* %67, float* %arraydecay121, float* %fshift.0, i32* %69, float* %arraydecay21, float* %arraydecay23, i32* %70, i32 %71, float* %72, float* %egnb, float %73, float* %74, float %lambda, float* %dvdlambda, i32* %75) #4
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb133:                                         ; preds = %if.then16
  %iinr135 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %76 = load i32** %iinr135, align 8, !tbaa !3
  %jindex136 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %77 = load i32** %jindex136, align 8, !tbaa !3
  %jjnr137 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %78 = load i32** %jjnr137, align 8, !tbaa !3
  %shift138 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %79 = load i32** %shift138, align 8, !tbaa !3
  %80 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay141 = getelementptr inbounds [3 x float]* %80, i64 0, i64 0
  %gid142 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %81 = load i32** %gid142, align 8, !tbaa !3
  %82 = load i32** %typeA, align 8, !tbaa !3
  %83 = load i32* %ntype, align 4, !tbaa !0
  %84 = load float** %nbfp, align 8, !tbaa !3
  %85 = load float* %tabscale, align 4, !tbaa !4
  %86 = load float** %vdwtab, align 8, !tbaa !3
  %87 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl0400(i32 %1, i32* %76, i32* %77, i32* %78, i32* %79, float* %arraydecay141, float* %fshift.0, i32* %81, float* %arraydecay21, float* %arraydecay23, i32* %82, i32 %83, float* %84, float* %egnb, float %85, float* %86, float %87) #4
  br label %sw.epilog

sw.bb152:                                         ; preds = %if.then16
  %iinr154 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %88 = load i32** %iinr154, align 8, !tbaa !3
  %jindex155 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %89 = load i32** %jindex155, align 8, !tbaa !3
  %jjnr156 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %90 = load i32** %jjnr156, align 8, !tbaa !3
  %shift157 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %91 = load i32** %shift157, align 8, !tbaa !3
  %92 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay160 = getelementptr inbounds [3 x float]* %92, i64 0, i64 0
  %gid161 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %93 = load i32** %gid161, align 8, !tbaa !3
  %94 = load i32** %typeA, align 8, !tbaa !3
  %95 = load i32* %ntype, align 4, !tbaa !0
  %96 = load float** %nbfp, align 8, !tbaa !3
  %97 = load float* %tabscale, align 4, !tbaa !4
  %98 = load float** %vdwtab, align 8, !tbaa !3
  %99 = load float* %tabscale_exp, align 4, !tbaa !4
  %nsatoms172 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %100 = load i32** %nsatoms172, align 8, !tbaa !3
  tail call void @inl0410(i32 %1, i32* %88, i32* %89, i32* %90, i32* %91, float* %arraydecay160, float* %fshift.0, i32* %93, float* %arraydecay21, float* %arraydecay23, i32* %94, i32 %95, float* %96, float* %egnb, float %97, float* %98, float %99, i32* %100) #4
  br label %sw.epilog

sw.bb173:                                         ; preds = %if.then16
  %iinr175 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %101 = load i32** %iinr175, align 8, !tbaa !3
  %jindex176 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %102 = load i32** %jindex176, align 8, !tbaa !3
  %jjnr177 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %103 = load i32** %jjnr177, align 8, !tbaa !3
  %shift178 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %104 = load i32** %shift178, align 8, !tbaa !3
  %105 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay181 = getelementptr inbounds [3 x float]* %105, i64 0, i64 0
  %gid182 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %106 = load i32** %gid182, align 8, !tbaa !3
  %107 = load i32** %typeA, align 8, !tbaa !3
  %108 = load i32* %ntype, align 4, !tbaa !0
  %109 = load float** %nbfp, align 8, !tbaa !3
  %110 = load float* %tabscale, align 4, !tbaa !4
  %111 = load float** %vdwtab, align 8, !tbaa !3
  %112 = load float* %tabscale_exp, align 4, !tbaa !4
  %113 = load i32** %typeB, align 8, !tbaa !3
  tail call void @inl0401(i32 %1, i32* %101, i32* %102, i32* %103, i32* %104, float* %arraydecay181, float* %fshift.0, i32* %106, float* %arraydecay21, float* %arraydecay23, i32* %107, i32 %108, float* %109, float* %egnb, float %110, float* %111, float %112, float %lambda, float* %dvdlambda, i32* %113) #4
  br label %sw.epilog

sw.bb194:                                         ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb195:                                         ; preds = %if.then16
  %iinr197 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %114 = load i32** %iinr197, align 8, !tbaa !3
  %jindex198 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %115 = load i32** %jindex198, align 8, !tbaa !3
  %jjnr199 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %116 = load i32** %jjnr199, align 8, !tbaa !3
  %shift200 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %117 = load i32** %shift200, align 8, !tbaa !3
  %118 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay203 = getelementptr inbounds [3 x float]* %118, i64 0, i64 0
  %gid204 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %119 = load i32** %gid204, align 8, !tbaa !3
  %120 = load float** %chargeA, align 8, !tbaa !3
  %121 = load float* %epsfac, align 4, !tbaa !4
  tail call void @inl1000(i32 %1, i32* %114, i32* %115, i32* %116, i32* %117, float* %arraydecay203, float* %fshift.0, i32* %119, float* %arraydecay21, float* %arraydecay23, float* %120, float %121, float* %egcoul) #4
  br label %sw.epilog

sw.bb209:                                         ; preds = %if.then16
  %iinr211 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %122 = load i32** %iinr211, align 8, !tbaa !3
  %jindex212 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %123 = load i32** %jindex212, align 8, !tbaa !3
  %jjnr213 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %124 = load i32** %jjnr213, align 8, !tbaa !3
  %shift214 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %125 = load i32** %shift214, align 8, !tbaa !3
  %126 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay217 = getelementptr inbounds [3 x float]* %126, i64 0, i64 0
  %gid218 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %127 = load i32** %gid218, align 8, !tbaa !3
  %128 = load float** %chargeA, align 8, !tbaa !3
  %129 = load float* %epsfac, align 4, !tbaa !4
  %nsatoms225 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %130 = load i32** %nsatoms225, align 8, !tbaa !3
  tail call void @inl1010(i32 %1, i32* %122, i32* %123, i32* %124, i32* %125, float* %arraydecay217, float* %fshift.0, i32* %127, float* %arraydecay21, float* %arraydecay23, float* %128, float %129, float* %egcoul, i32* %130) #4
  br label %sw.epilog

sw.bb226:                                         ; preds = %if.then16
  %iinr228 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %131 = load i32** %iinr228, align 8, !tbaa !3
  %jindex229 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %132 = load i32** %jindex229, align 8, !tbaa !3
  %jjnr230 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %133 = load i32** %jjnr230, align 8, !tbaa !3
  %shift231 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %134 = load i32** %shift231, align 8, !tbaa !3
  %135 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay234 = getelementptr inbounds [3 x float]* %135, i64 0, i64 0
  %gid235 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %136 = load i32** %gid235, align 8, !tbaa !3
  %137 = load float** %chargeA, align 8, !tbaa !3
  %138 = load float* %epsfac, align 4, !tbaa !4
  tail call void @inl1020(i32 %1, i32* %131, i32* %132, i32* %133, i32* %134, float* %arraydecay234, float* %fshift.0, i32* %136, float* %arraydecay21, float* %arraydecay23, float* %137, float %138, float* %egcoul) #4
  br label %sw.epilog

sw.bb242:                                         ; preds = %if.then16
  %iinr244 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %139 = load i32** %iinr244, align 8, !tbaa !3
  %jindex245 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %140 = load i32** %jindex245, align 8, !tbaa !3
  %jjnr246 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %141 = load i32** %jjnr246, align 8, !tbaa !3
  %shift247 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %142 = load i32** %shift247, align 8, !tbaa !3
  %143 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay250 = getelementptr inbounds [3 x float]* %143, i64 0, i64 0
  %gid251 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %144 = load i32** %gid251, align 8, !tbaa !3
  %145 = load float** %chargeA, align 8, !tbaa !3
  %146 = load float* %epsfac, align 4, !tbaa !4
  tail call void @inl1030(i32 %1, i32* %139, i32* %140, i32* %141, i32* %142, float* %arraydecay250, float* %fshift.0, i32* %144, float* %arraydecay21, float* %arraydecay23, float* %145, float %146, float* %egcoul) #4
  br label %sw.epilog

sw.bb258:                                         ; preds = %if.then16
  %iinr260 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %147 = load i32** %iinr260, align 8, !tbaa !3
  %jindex261 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %148 = load i32** %jindex261, align 8, !tbaa !3
  %jjnr262 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %149 = load i32** %jjnr262, align 8, !tbaa !3
  %shift263 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %150 = load i32** %shift263, align 8, !tbaa !3
  %151 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay266 = getelementptr inbounds [3 x float]* %151, i64 0, i64 0
  %gid267 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %152 = load i32** %gid267, align 8, !tbaa !3
  %153 = load float** %chargeA, align 8, !tbaa !3
  %154 = load float* %epsfac, align 4, !tbaa !4
  %155 = load i32** %typeA, align 8, !tbaa !3
  %156 = load i32* %ntype, align 4, !tbaa !0
  %157 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1100(i32 %1, i32* %147, i32* %148, i32* %149, i32* %150, float* %arraydecay266, float* %fshift.0, i32* %152, float* %arraydecay21, float* %arraydecay23, float* %153, float %154, float* %egcoul, i32* %155, i32 %156, float* %157, float* %egnb) #4
  br label %sw.epilog

sw.bb277:                                         ; preds = %if.then16
  %iinr279 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %158 = load i32** %iinr279, align 8, !tbaa !3
  %jindex280 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %159 = load i32** %jindex280, align 8, !tbaa !3
  %jjnr281 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %160 = load i32** %jjnr281, align 8, !tbaa !3
  %shift282 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %161 = load i32** %shift282, align 8, !tbaa !3
  %162 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay285 = getelementptr inbounds [3 x float]* %162, i64 0, i64 0
  %gid286 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %163 = load i32** %gid286, align 8, !tbaa !3
  %164 = load float** %chargeA, align 8, !tbaa !3
  %165 = load float* %epsfac, align 4, !tbaa !4
  %166 = load i32** %typeA, align 8, !tbaa !3
  %167 = load i32* %ntype, align 4, !tbaa !0
  %168 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms296 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %169 = load i32** %nsatoms296, align 8, !tbaa !3
  tail call void @inl1110(i32 %1, i32* %158, i32* %159, i32* %160, i32* %161, float* %arraydecay285, float* %fshift.0, i32* %163, float* %arraydecay21, float* %arraydecay23, float* %164, float %165, float* %egcoul, i32* %166, i32 %167, float* %168, float* %egnb, i32* %169) #4
  br label %sw.epilog

sw.bb297:                                         ; preds = %if.then16
  %iinr299 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %170 = load i32** %iinr299, align 8, !tbaa !3
  %jindex300 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %171 = load i32** %jindex300, align 8, !tbaa !3
  %jjnr301 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %172 = load i32** %jjnr301, align 8, !tbaa !3
  %shift302 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %173 = load i32** %shift302, align 8, !tbaa !3
  %174 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay305 = getelementptr inbounds [3 x float]* %174, i64 0, i64 0
  %gid306 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %175 = load i32** %gid306, align 8, !tbaa !3
  %176 = load float** %chargeA, align 8, !tbaa !3
  %177 = load float* %epsfac, align 4, !tbaa !4
  %178 = load i32** %typeA, align 8, !tbaa !3
  %179 = load i32* %ntype, align 4, !tbaa !0
  %180 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1120(i32 %1, i32* %170, i32* %171, i32* %172, i32* %173, float* %arraydecay305, float* %fshift.0, i32* %175, float* %arraydecay21, float* %arraydecay23, float* %176, float %177, float* %egcoul, i32* %178, i32 %179, float* %180, float* %egnb) #4
  br label %sw.epilog

sw.bb316:                                         ; preds = %if.then16
  %iinr318 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %181 = load i32** %iinr318, align 8, !tbaa !3
  %jindex319 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %182 = load i32** %jindex319, align 8, !tbaa !3
  %jjnr320 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %183 = load i32** %jjnr320, align 8, !tbaa !3
  %shift321 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %184 = load i32** %shift321, align 8, !tbaa !3
  %185 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay324 = getelementptr inbounds [3 x float]* %185, i64 0, i64 0
  %gid325 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %186 = load i32** %gid325, align 8, !tbaa !3
  %187 = load float** %chargeA, align 8, !tbaa !3
  %188 = load float* %epsfac, align 4, !tbaa !4
  %189 = load i32** %typeA, align 8, !tbaa !3
  %190 = load i32* %ntype, align 4, !tbaa !0
  %191 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1130(i32 %1, i32* %181, i32* %182, i32* %183, i32* %184, float* %arraydecay324, float* %fshift.0, i32* %186, float* %arraydecay21, float* %arraydecay23, float* %187, float %188, float* %egcoul, i32* %189, i32 %190, float* %191, float* %egnb) #4
  br label %sw.epilog

sw.bb335:                                         ; preds = %if.then16
  %iinr337 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %192 = load i32** %iinr337, align 8, !tbaa !3
  %jindex338 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %193 = load i32** %jindex338, align 8, !tbaa !3
  %jjnr339 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %194 = load i32** %jjnr339, align 8, !tbaa !3
  %shift340 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %195 = load i32** %shift340, align 8, !tbaa !3
  %196 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay343 = getelementptr inbounds [3 x float]* %196, i64 0, i64 0
  %gid344 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %197 = load i32** %gid344, align 8, !tbaa !3
  %198 = load float** %chargeA, align 8, !tbaa !3
  %199 = load float* %epsfac, align 4, !tbaa !4
  %200 = load i32** %typeA, align 8, !tbaa !3
  %201 = load i32* %ntype, align 4, !tbaa !0
  %202 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1200(i32 %1, i32* %192, i32* %193, i32* %194, i32* %195, float* %arraydecay343, float* %fshift.0, i32* %197, float* %arraydecay21, float* %arraydecay23, float* %198, float %199, float* %egcoul, i32* %200, i32 %201, float* %202, float* %egnb) #4
  br label %sw.epilog

sw.bb354:                                         ; preds = %if.then16
  %iinr356 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %203 = load i32** %iinr356, align 8, !tbaa !3
  %jindex357 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %204 = load i32** %jindex357, align 8, !tbaa !3
  %jjnr358 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %205 = load i32** %jjnr358, align 8, !tbaa !3
  %shift359 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %206 = load i32** %shift359, align 8, !tbaa !3
  %207 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay362 = getelementptr inbounds [3 x float]* %207, i64 0, i64 0
  %gid363 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %208 = load i32** %gid363, align 8, !tbaa !3
  %209 = load float** %chargeA, align 8, !tbaa !3
  %210 = load float* %epsfac, align 4, !tbaa !4
  %211 = load i32** %typeA, align 8, !tbaa !3
  %212 = load i32* %ntype, align 4, !tbaa !0
  %213 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms373 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %214 = load i32** %nsatoms373, align 8, !tbaa !3
  tail call void @inl1210(i32 %1, i32* %203, i32* %204, i32* %205, i32* %206, float* %arraydecay362, float* %fshift.0, i32* %208, float* %arraydecay21, float* %arraydecay23, float* %209, float %210, float* %egcoul, i32* %211, i32 %212, float* %213, float* %egnb, i32* %214) #4
  br label %sw.epilog

sw.bb374:                                         ; preds = %if.then16
  %iinr376 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %215 = load i32** %iinr376, align 8, !tbaa !3
  %jindex377 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %216 = load i32** %jindex377, align 8, !tbaa !3
  %jjnr378 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %217 = load i32** %jjnr378, align 8, !tbaa !3
  %shift379 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %218 = load i32** %shift379, align 8, !tbaa !3
  %219 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay382 = getelementptr inbounds [3 x float]* %219, i64 0, i64 0
  %gid383 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %220 = load i32** %gid383, align 8, !tbaa !3
  %221 = load float** %chargeA, align 8, !tbaa !3
  %222 = load float* %epsfac, align 4, !tbaa !4
  %223 = load i32** %typeA, align 8, !tbaa !3
  %224 = load i32* %ntype, align 4, !tbaa !0
  %225 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1220(i32 %1, i32* %215, i32* %216, i32* %217, i32* %218, float* %arraydecay382, float* %fshift.0, i32* %220, float* %arraydecay21, float* %arraydecay23, float* %221, float %222, float* %egcoul, i32* %223, i32 %224, float* %225, float* %egnb) #4
  br label %sw.epilog

sw.bb393:                                         ; preds = %if.then16
  %iinr395 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %226 = load i32** %iinr395, align 8, !tbaa !3
  %jindex396 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %227 = load i32** %jindex396, align 8, !tbaa !3
  %jjnr397 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %228 = load i32** %jjnr397, align 8, !tbaa !3
  %shift398 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %229 = load i32** %shift398, align 8, !tbaa !3
  %230 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay401 = getelementptr inbounds [3 x float]* %230, i64 0, i64 0
  %gid402 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %231 = load i32** %gid402, align 8, !tbaa !3
  %232 = load float** %chargeA, align 8, !tbaa !3
  %233 = load float* %epsfac, align 4, !tbaa !4
  %234 = load i32** %typeA, align 8, !tbaa !3
  %235 = load i32* %ntype, align 4, !tbaa !0
  %236 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl1230(i32 %1, i32* %226, i32* %227, i32* %228, i32* %229, float* %arraydecay401, float* %fshift.0, i32* %231, float* %arraydecay21, float* %arraydecay23, float* %232, float %233, float* %egcoul, i32* %234, i32 %235, float* %236, float* %egnb) #4
  br label %sw.epilog

sw.bb412:                                         ; preds = %if.then16
  %iinr414 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %237 = load i32** %iinr414, align 8, !tbaa !3
  %jindex415 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %238 = load i32** %jindex415, align 8, !tbaa !3
  %jjnr416 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %239 = load i32** %jjnr416, align 8, !tbaa !3
  %shift417 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %240 = load i32** %shift417, align 8, !tbaa !3
  %241 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay420 = getelementptr inbounds [3 x float]* %241, i64 0, i64 0
  %gid421 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %242 = load i32** %gid421, align 8, !tbaa !3
  %243 = load float** %chargeA, align 8, !tbaa !3
  %244 = load float* %epsfac, align 4, !tbaa !4
  %245 = load i32** %typeA, align 8, !tbaa !3
  %246 = load i32* %ntype, align 4, !tbaa !0
  %247 = load float** %nbfp, align 8, !tbaa !3
  %248 = load float* %tabscale, align 4, !tbaa !4
  %249 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl1300(i32 %1, i32* %237, i32* %238, i32* %239, i32* %240, float* %arraydecay420, float* %fshift.0, i32* %242, float* %arraydecay21, float* %arraydecay23, float* %243, float %244, float* %egcoul, i32* %245, i32 %246, float* %247, float* %egnb, float %248, float* %249) #4
  br label %sw.epilog

sw.bb433:                                         ; preds = %if.then16
  %iinr435 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %250 = load i32** %iinr435, align 8, !tbaa !3
  %jindex436 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %251 = load i32** %jindex436, align 8, !tbaa !3
  %jjnr437 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %252 = load i32** %jjnr437, align 8, !tbaa !3
  %shift438 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %253 = load i32** %shift438, align 8, !tbaa !3
  %254 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay441 = getelementptr inbounds [3 x float]* %254, i64 0, i64 0
  %gid442 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %255 = load i32** %gid442, align 8, !tbaa !3
  %256 = load float** %chargeA, align 8, !tbaa !3
  %257 = load float* %epsfac, align 4, !tbaa !4
  %258 = load i32** %typeA, align 8, !tbaa !3
  %259 = load i32* %ntype, align 4, !tbaa !0
  %260 = load float** %nbfp, align 8, !tbaa !3
  %261 = load float* %tabscale, align 4, !tbaa !4
  %262 = load float** %vdwtab, align 8, !tbaa !3
  %nsatoms454 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %263 = load i32** %nsatoms454, align 8, !tbaa !3
  tail call void @inl1310(i32 %1, i32* %250, i32* %251, i32* %252, i32* %253, float* %arraydecay441, float* %fshift.0, i32* %255, float* %arraydecay21, float* %arraydecay23, float* %256, float %257, float* %egcoul, i32* %258, i32 %259, float* %260, float* %egnb, float %261, float* %262, i32* %263) #4
  br label %sw.epilog

sw.bb455:                                         ; preds = %if.then16
  %iinr457 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %264 = load i32** %iinr457, align 8, !tbaa !3
  %jindex458 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %265 = load i32** %jindex458, align 8, !tbaa !3
  %jjnr459 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %266 = load i32** %jjnr459, align 8, !tbaa !3
  %shift460 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %267 = load i32** %shift460, align 8, !tbaa !3
  %268 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay463 = getelementptr inbounds [3 x float]* %268, i64 0, i64 0
  %gid464 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %269 = load i32** %gid464, align 8, !tbaa !3
  %270 = load float** %chargeA, align 8, !tbaa !3
  %271 = load float* %epsfac, align 4, !tbaa !4
  %272 = load i32** %typeA, align 8, !tbaa !3
  %273 = load i32* %ntype, align 4, !tbaa !0
  %274 = load float** %nbfp, align 8, !tbaa !3
  %275 = load float* %tabscale, align 4, !tbaa !4
  %276 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl1320(i32 %1, i32* %264, i32* %265, i32* %266, i32* %267, float* %arraydecay463, float* %fshift.0, i32* %269, float* %arraydecay21, float* %arraydecay23, float* %270, float %271, float* %egcoul, i32* %272, i32 %273, float* %274, float* %egnb, float %275, float* %276) #4
  br label %sw.epilog

sw.bb476:                                         ; preds = %if.then16
  %iinr478 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %277 = load i32** %iinr478, align 8, !tbaa !3
  %jindex479 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %278 = load i32** %jindex479, align 8, !tbaa !3
  %jjnr480 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %279 = load i32** %jjnr480, align 8, !tbaa !3
  %shift481 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %280 = load i32** %shift481, align 8, !tbaa !3
  %281 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay484 = getelementptr inbounds [3 x float]* %281, i64 0, i64 0
  %gid485 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %282 = load i32** %gid485, align 8, !tbaa !3
  %283 = load float** %chargeA, align 8, !tbaa !3
  %284 = load float* %epsfac, align 4, !tbaa !4
  %285 = load i32** %typeA, align 8, !tbaa !3
  %286 = load i32* %ntype, align 4, !tbaa !0
  %287 = load float** %nbfp, align 8, !tbaa !3
  %288 = load float* %tabscale, align 4, !tbaa !4
  %289 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl1330(i32 %1, i32* %277, i32* %278, i32* %279, i32* %280, float* %arraydecay484, float* %fshift.0, i32* %282, float* %arraydecay21, float* %arraydecay23, float* %283, float %284, float* %egcoul, i32* %285, i32 %286, float* %287, float* %egnb, float %288, float* %289) #4
  br label %sw.epilog

sw.bb497:                                         ; preds = %if.then16
  %iinr499 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %290 = load i32** %iinr499, align 8, !tbaa !3
  %jindex500 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %291 = load i32** %jindex500, align 8, !tbaa !3
  %jjnr501 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %292 = load i32** %jjnr501, align 8, !tbaa !3
  %shift502 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %293 = load i32** %shift502, align 8, !tbaa !3
  %294 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay505 = getelementptr inbounds [3 x float]* %294, i64 0, i64 0
  %gid506 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %295 = load i32** %gid506, align 8, !tbaa !3
  %296 = load float** %chargeA, align 8, !tbaa !3
  %297 = load float* %epsfac, align 4, !tbaa !4
  %298 = load i32** %typeA, align 8, !tbaa !3
  %299 = load i32* %ntype, align 4, !tbaa !0
  %300 = load float** %nbfp, align 8, !tbaa !3
  %301 = load float* %tabscale, align 4, !tbaa !4
  %302 = load float** %vdwtab, align 8, !tbaa !3
  %303 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl1400(i32 %1, i32* %290, i32* %291, i32* %292, i32* %293, float* %arraydecay505, float* %fshift.0, i32* %295, float* %arraydecay21, float* %arraydecay23, float* %296, float %297, float* %egcoul, i32* %298, i32 %299, float* %300, float* %egnb, float %301, float* %302, float %303) #4
  br label %sw.epilog

sw.bb519:                                         ; preds = %if.then16
  %iinr521 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %304 = load i32** %iinr521, align 8, !tbaa !3
  %jindex522 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %305 = load i32** %jindex522, align 8, !tbaa !3
  %jjnr523 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %306 = load i32** %jjnr523, align 8, !tbaa !3
  %shift524 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %307 = load i32** %shift524, align 8, !tbaa !3
  %308 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay527 = getelementptr inbounds [3 x float]* %308, i64 0, i64 0
  %gid528 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %309 = load i32** %gid528, align 8, !tbaa !3
  %310 = load float** %chargeA, align 8, !tbaa !3
  %311 = load float* %epsfac, align 4, !tbaa !4
  %312 = load i32** %typeA, align 8, !tbaa !3
  %313 = load i32* %ntype, align 4, !tbaa !0
  %314 = load float** %nbfp, align 8, !tbaa !3
  %315 = load float* %tabscale, align 4, !tbaa !4
  %316 = load float** %vdwtab, align 8, !tbaa !3
  %317 = load float* %tabscale_exp, align 4, !tbaa !4
  %nsatoms541 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %318 = load i32** %nsatoms541, align 8, !tbaa !3
  tail call void @inl1410(i32 %1, i32* %304, i32* %305, i32* %306, i32* %307, float* %arraydecay527, float* %fshift.0, i32* %309, float* %arraydecay21, float* %arraydecay23, float* %310, float %311, float* %egcoul, i32* %312, i32 %313, float* %314, float* %egnb, float %315, float* %316, float %317, i32* %318) #4
  br label %sw.epilog

sw.bb542:                                         ; preds = %if.then16
  %iinr544 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %319 = load i32** %iinr544, align 8, !tbaa !3
  %jindex545 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %320 = load i32** %jindex545, align 8, !tbaa !3
  %jjnr546 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %321 = load i32** %jjnr546, align 8, !tbaa !3
  %shift547 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %322 = load i32** %shift547, align 8, !tbaa !3
  %323 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay550 = getelementptr inbounds [3 x float]* %323, i64 0, i64 0
  %gid551 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %324 = load i32** %gid551, align 8, !tbaa !3
  %325 = load float** %chargeA, align 8, !tbaa !3
  %326 = load float* %epsfac, align 4, !tbaa !4
  %327 = load i32** %typeA, align 8, !tbaa !3
  %328 = load i32* %ntype, align 4, !tbaa !0
  %329 = load float** %nbfp, align 8, !tbaa !3
  %330 = load float* %tabscale, align 4, !tbaa !4
  %331 = load float** %vdwtab, align 8, !tbaa !3
  %332 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl1420(i32 %1, i32* %319, i32* %320, i32* %321, i32* %322, float* %arraydecay550, float* %fshift.0, i32* %324, float* %arraydecay21, float* %arraydecay23, float* %325, float %326, float* %egcoul, i32* %327, i32 %328, float* %329, float* %egnb, float %330, float* %331, float %332) #4
  br label %sw.epilog

sw.bb564:                                         ; preds = %if.then16
  %iinr566 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %333 = load i32** %iinr566, align 8, !tbaa !3
  %jindex567 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %334 = load i32** %jindex567, align 8, !tbaa !3
  %jjnr568 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %335 = load i32** %jjnr568, align 8, !tbaa !3
  %shift569 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %336 = load i32** %shift569, align 8, !tbaa !3
  %337 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay572 = getelementptr inbounds [3 x float]* %337, i64 0, i64 0
  %gid573 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %338 = load i32** %gid573, align 8, !tbaa !3
  %339 = load float** %chargeA, align 8, !tbaa !3
  %340 = load float* %epsfac, align 4, !tbaa !4
  %341 = load i32** %typeA, align 8, !tbaa !3
  %342 = load i32* %ntype, align 4, !tbaa !0
  %343 = load float** %nbfp, align 8, !tbaa !3
  %344 = load float* %tabscale, align 4, !tbaa !4
  %345 = load float** %vdwtab, align 8, !tbaa !3
  %346 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl1430(i32 %1, i32* %333, i32* %334, i32* %335, i32* %336, float* %arraydecay572, float* %fshift.0, i32* %338, float* %arraydecay21, float* %arraydecay23, float* %339, float %340, float* %egcoul, i32* %341, i32 %342, float* %343, float* %egnb, float %344, float* %345, float %346) #4
  br label %sw.epilog

sw.bb586:                                         ; preds = %if.then16
  %iinr588 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %347 = load i32** %iinr588, align 8, !tbaa !3
  %jindex589 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %348 = load i32** %jindex589, align 8, !tbaa !3
  %jjnr590 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %349 = load i32** %jjnr590, align 8, !tbaa !3
  %shift591 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %350 = load i32** %shift591, align 8, !tbaa !3
  %351 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay594 = getelementptr inbounds [3 x float]* %351, i64 0, i64 0
  %gid595 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %352 = load i32** %gid595, align 8, !tbaa !3
  %353 = load float** %chargeA, align 8, !tbaa !3
  %354 = load float* %epsfac, align 4, !tbaa !4
  %355 = load float* %k_rf, align 4, !tbaa !4
  %356 = load float* %c_rf, align 4, !tbaa !4
  tail call void @inl2000(i32 %1, i32* %347, i32* %348, i32* %349, i32* %350, float* %arraydecay594, float* %fshift.0, i32* %352, float* %arraydecay21, float* %arraydecay23, float* %353, float %354, float* %egcoul, float %355, float %356) #4
  br label %sw.epilog

sw.bb602:                                         ; preds = %if.then16
  %iinr604 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %357 = load i32** %iinr604, align 8, !tbaa !3
  %jindex605 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %358 = load i32** %jindex605, align 8, !tbaa !3
  %jjnr606 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %359 = load i32** %jjnr606, align 8, !tbaa !3
  %shift607 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %360 = load i32** %shift607, align 8, !tbaa !3
  %361 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay610 = getelementptr inbounds [3 x float]* %361, i64 0, i64 0
  %gid611 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %362 = load i32** %gid611, align 8, !tbaa !3
  %363 = load float** %chargeA, align 8, !tbaa !3
  %364 = load float* %epsfac, align 4, !tbaa !4
  %365 = load float* %k_rf, align 4, !tbaa !4
  %366 = load float* %c_rf, align 4, !tbaa !4
  %nsatoms620 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %367 = load i32** %nsatoms620, align 8, !tbaa !3
  tail call void @inl2010(i32 %1, i32* %357, i32* %358, i32* %359, i32* %360, float* %arraydecay610, float* %fshift.0, i32* %362, float* %arraydecay21, float* %arraydecay23, float* %363, float %364, float* %egcoul, float %365, float %366, i32* %367) #4
  br label %sw.epilog

sw.bb621:                                         ; preds = %if.then16
  %iinr623 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %368 = load i32** %iinr623, align 8, !tbaa !3
  %jindex624 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %369 = load i32** %jindex624, align 8, !tbaa !3
  %jjnr625 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %370 = load i32** %jjnr625, align 8, !tbaa !3
  %shift626 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %371 = load i32** %shift626, align 8, !tbaa !3
  %372 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay629 = getelementptr inbounds [3 x float]* %372, i64 0, i64 0
  %gid630 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %373 = load i32** %gid630, align 8, !tbaa !3
  %374 = load float** %chargeA, align 8, !tbaa !3
  %375 = load float* %epsfac, align 4, !tbaa !4
  %376 = load float* %k_rf, align 4, !tbaa !4
  %377 = load float* %c_rf, align 4, !tbaa !4
  tail call void @inl2020(i32 %1, i32* %368, i32* %369, i32* %370, i32* %371, float* %arraydecay629, float* %fshift.0, i32* %373, float* %arraydecay21, float* %arraydecay23, float* %374, float %375, float* %egcoul, float %376, float %377) #4
  br label %sw.epilog

sw.bb639:                                         ; preds = %if.then16
  %iinr641 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %378 = load i32** %iinr641, align 8, !tbaa !3
  %jindex642 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %379 = load i32** %jindex642, align 8, !tbaa !3
  %jjnr643 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %380 = load i32** %jjnr643, align 8, !tbaa !3
  %shift644 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %381 = load i32** %shift644, align 8, !tbaa !3
  %382 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay647 = getelementptr inbounds [3 x float]* %382, i64 0, i64 0
  %gid648 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %383 = load i32** %gid648, align 8, !tbaa !3
  %384 = load float** %chargeA, align 8, !tbaa !3
  %385 = load float* %epsfac, align 4, !tbaa !4
  %386 = load float* %k_rf, align 4, !tbaa !4
  %387 = load float* %c_rf, align 4, !tbaa !4
  tail call void @inl2030(i32 %1, i32* %378, i32* %379, i32* %380, i32* %381, float* %arraydecay647, float* %fshift.0, i32* %383, float* %arraydecay21, float* %arraydecay23, float* %384, float %385, float* %egcoul, float %386, float %387) #4
  br label %sw.epilog

sw.bb657:                                         ; preds = %if.then16
  %iinr659 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %388 = load i32** %iinr659, align 8, !tbaa !3
  %jindex660 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %389 = load i32** %jindex660, align 8, !tbaa !3
  %jjnr661 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %390 = load i32** %jjnr661, align 8, !tbaa !3
  %shift662 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %391 = load i32** %shift662, align 8, !tbaa !3
  %392 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay665 = getelementptr inbounds [3 x float]* %392, i64 0, i64 0
  %gid666 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %393 = load i32** %gid666, align 8, !tbaa !3
  %394 = load float** %chargeA, align 8, !tbaa !3
  %395 = load float* %epsfac, align 4, !tbaa !4
  %396 = load float* %k_rf, align 4, !tbaa !4
  %397 = load float* %c_rf, align 4, !tbaa !4
  %398 = load i32** %typeA, align 8, !tbaa !3
  %399 = load i32* %ntype, align 4, !tbaa !0
  %400 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2100(i32 %1, i32* %388, i32* %389, i32* %390, i32* %391, float* %arraydecay665, float* %fshift.0, i32* %393, float* %arraydecay21, float* %arraydecay23, float* %394, float %395, float* %egcoul, float %396, float %397, i32* %398, i32 %399, float* %400, float* %egnb) #4
  br label %sw.epilog

sw.bb678:                                         ; preds = %if.then16
  %iinr680 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %401 = load i32** %iinr680, align 8, !tbaa !3
  %jindex681 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %402 = load i32** %jindex681, align 8, !tbaa !3
  %jjnr682 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %403 = load i32** %jjnr682, align 8, !tbaa !3
  %shift683 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %404 = load i32** %shift683, align 8, !tbaa !3
  %405 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay686 = getelementptr inbounds [3 x float]* %405, i64 0, i64 0
  %gid687 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %406 = load i32** %gid687, align 8, !tbaa !3
  %407 = load float** %chargeA, align 8, !tbaa !3
  %408 = load float* %epsfac, align 4, !tbaa !4
  %409 = load float* %k_rf, align 4, !tbaa !4
  %410 = load float* %c_rf, align 4, !tbaa !4
  %411 = load i32** %typeA, align 8, !tbaa !3
  %412 = load i32* %ntype, align 4, !tbaa !0
  %413 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms699 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %414 = load i32** %nsatoms699, align 8, !tbaa !3
  tail call void @inl2110(i32 %1, i32* %401, i32* %402, i32* %403, i32* %404, float* %arraydecay686, float* %fshift.0, i32* %406, float* %arraydecay21, float* %arraydecay23, float* %407, float %408, float* %egcoul, float %409, float %410, i32* %411, i32 %412, float* %413, float* %egnb, i32* %414) #4
  br label %sw.epilog

sw.bb700:                                         ; preds = %if.then16
  %iinr702 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %415 = load i32** %iinr702, align 8, !tbaa !3
  %jindex703 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %416 = load i32** %jindex703, align 8, !tbaa !3
  %jjnr704 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %417 = load i32** %jjnr704, align 8, !tbaa !3
  %shift705 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %418 = load i32** %shift705, align 8, !tbaa !3
  %419 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay708 = getelementptr inbounds [3 x float]* %419, i64 0, i64 0
  %gid709 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %420 = load i32** %gid709, align 8, !tbaa !3
  %421 = load float** %chargeA, align 8, !tbaa !3
  %422 = load float* %epsfac, align 4, !tbaa !4
  %423 = load float* %k_rf, align 4, !tbaa !4
  %424 = load float* %c_rf, align 4, !tbaa !4
  %425 = load i32** %typeA, align 8, !tbaa !3
  %426 = load i32* %ntype, align 4, !tbaa !0
  %427 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2120(i32 %1, i32* %415, i32* %416, i32* %417, i32* %418, float* %arraydecay708, float* %fshift.0, i32* %420, float* %arraydecay21, float* %arraydecay23, float* %421, float %422, float* %egcoul, float %423, float %424, i32* %425, i32 %426, float* %427, float* %egnb) #4
  br label %sw.epilog

sw.bb721:                                         ; preds = %if.then16
  %iinr723 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %428 = load i32** %iinr723, align 8, !tbaa !3
  %jindex724 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %429 = load i32** %jindex724, align 8, !tbaa !3
  %jjnr725 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %430 = load i32** %jjnr725, align 8, !tbaa !3
  %shift726 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %431 = load i32** %shift726, align 8, !tbaa !3
  %432 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay729 = getelementptr inbounds [3 x float]* %432, i64 0, i64 0
  %gid730 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %433 = load i32** %gid730, align 8, !tbaa !3
  %434 = load float** %chargeA, align 8, !tbaa !3
  %435 = load float* %epsfac, align 4, !tbaa !4
  %436 = load float* %k_rf, align 4, !tbaa !4
  %437 = load float* %c_rf, align 4, !tbaa !4
  %438 = load i32** %typeA, align 8, !tbaa !3
  %439 = load i32* %ntype, align 4, !tbaa !0
  %440 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2130(i32 %1, i32* %428, i32* %429, i32* %430, i32* %431, float* %arraydecay729, float* %fshift.0, i32* %433, float* %arraydecay21, float* %arraydecay23, float* %434, float %435, float* %egcoul, float %436, float %437, i32* %438, i32 %439, float* %440, float* %egnb) #4
  br label %sw.epilog

sw.bb742:                                         ; preds = %if.then16
  %iinr744 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %441 = load i32** %iinr744, align 8, !tbaa !3
  %jindex745 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %442 = load i32** %jindex745, align 8, !tbaa !3
  %jjnr746 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %443 = load i32** %jjnr746, align 8, !tbaa !3
  %shift747 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %444 = load i32** %shift747, align 8, !tbaa !3
  %445 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay750 = getelementptr inbounds [3 x float]* %445, i64 0, i64 0
  %gid751 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %446 = load i32** %gid751, align 8, !tbaa !3
  %447 = load float** %chargeA, align 8, !tbaa !3
  %448 = load float* %epsfac, align 4, !tbaa !4
  %449 = load float* %k_rf, align 4, !tbaa !4
  %450 = load float* %c_rf, align 4, !tbaa !4
  %451 = load i32** %typeA, align 8, !tbaa !3
  %452 = load i32* %ntype, align 4, !tbaa !0
  %453 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2200(i32 %1, i32* %441, i32* %442, i32* %443, i32* %444, float* %arraydecay750, float* %fshift.0, i32* %446, float* %arraydecay21, float* %arraydecay23, float* %447, float %448, float* %egcoul, float %449, float %450, i32* %451, i32 %452, float* %453, float* %egnb) #4
  br label %sw.epilog

sw.bb763:                                         ; preds = %if.then16
  %iinr765 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %454 = load i32** %iinr765, align 8, !tbaa !3
  %jindex766 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %455 = load i32** %jindex766, align 8, !tbaa !3
  %jjnr767 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %456 = load i32** %jjnr767, align 8, !tbaa !3
  %shift768 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %457 = load i32** %shift768, align 8, !tbaa !3
  %458 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay771 = getelementptr inbounds [3 x float]* %458, i64 0, i64 0
  %gid772 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %459 = load i32** %gid772, align 8, !tbaa !3
  %460 = load float** %chargeA, align 8, !tbaa !3
  %461 = load float* %epsfac, align 4, !tbaa !4
  %462 = load float* %k_rf, align 4, !tbaa !4
  %463 = load float* %c_rf, align 4, !tbaa !4
  %464 = load i32** %typeA, align 8, !tbaa !3
  %465 = load i32* %ntype, align 4, !tbaa !0
  %466 = load float** %nbfp, align 8, !tbaa !3
  %nsatoms784 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %467 = load i32** %nsatoms784, align 8, !tbaa !3
  tail call void @inl2210(i32 %1, i32* %454, i32* %455, i32* %456, i32* %457, float* %arraydecay771, float* %fshift.0, i32* %459, float* %arraydecay21, float* %arraydecay23, float* %460, float %461, float* %egcoul, float %462, float %463, i32* %464, i32 %465, float* %466, float* %egnb, i32* %467) #4
  br label %sw.epilog

sw.bb785:                                         ; preds = %if.then16
  %iinr787 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %468 = load i32** %iinr787, align 8, !tbaa !3
  %jindex788 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %469 = load i32** %jindex788, align 8, !tbaa !3
  %jjnr789 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %470 = load i32** %jjnr789, align 8, !tbaa !3
  %shift790 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %471 = load i32** %shift790, align 8, !tbaa !3
  %472 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay793 = getelementptr inbounds [3 x float]* %472, i64 0, i64 0
  %gid794 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %473 = load i32** %gid794, align 8, !tbaa !3
  %474 = load float** %chargeA, align 8, !tbaa !3
  %475 = load float* %epsfac, align 4, !tbaa !4
  %476 = load float* %k_rf, align 4, !tbaa !4
  %477 = load float* %c_rf, align 4, !tbaa !4
  %478 = load i32** %typeA, align 8, !tbaa !3
  %479 = load i32* %ntype, align 4, !tbaa !0
  %480 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2220(i32 %1, i32* %468, i32* %469, i32* %470, i32* %471, float* %arraydecay793, float* %fshift.0, i32* %473, float* %arraydecay21, float* %arraydecay23, float* %474, float %475, float* %egcoul, float %476, float %477, i32* %478, i32 %479, float* %480, float* %egnb) #4
  br label %sw.epilog

sw.bb806:                                         ; preds = %if.then16
  %iinr808 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %481 = load i32** %iinr808, align 8, !tbaa !3
  %jindex809 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %482 = load i32** %jindex809, align 8, !tbaa !3
  %jjnr810 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %483 = load i32** %jjnr810, align 8, !tbaa !3
  %shift811 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %484 = load i32** %shift811, align 8, !tbaa !3
  %485 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay814 = getelementptr inbounds [3 x float]* %485, i64 0, i64 0
  %gid815 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %486 = load i32** %gid815, align 8, !tbaa !3
  %487 = load float** %chargeA, align 8, !tbaa !3
  %488 = load float* %epsfac, align 4, !tbaa !4
  %489 = load float* %k_rf, align 4, !tbaa !4
  %490 = load float* %c_rf, align 4, !tbaa !4
  %491 = load i32** %typeA, align 8, !tbaa !3
  %492 = load i32* %ntype, align 4, !tbaa !0
  %493 = load float** %nbfp, align 8, !tbaa !3
  tail call void @inl2230(i32 %1, i32* %481, i32* %482, i32* %483, i32* %484, float* %arraydecay814, float* %fshift.0, i32* %486, float* %arraydecay21, float* %arraydecay23, float* %487, float %488, float* %egcoul, float %489, float %490, i32* %491, i32 %492, float* %493, float* %egnb) #4
  br label %sw.epilog

sw.bb827:                                         ; preds = %if.then16
  %iinr829 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %494 = load i32** %iinr829, align 8, !tbaa !3
  %jindex830 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %495 = load i32** %jindex830, align 8, !tbaa !3
  %jjnr831 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %496 = load i32** %jjnr831, align 8, !tbaa !3
  %shift832 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %497 = load i32** %shift832, align 8, !tbaa !3
  %498 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay835 = getelementptr inbounds [3 x float]* %498, i64 0, i64 0
  %gid836 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %499 = load i32** %gid836, align 8, !tbaa !3
  %500 = load float** %chargeA, align 8, !tbaa !3
  %501 = load float* %epsfac, align 4, !tbaa !4
  %502 = load float* %k_rf, align 4, !tbaa !4
  %503 = load float* %c_rf, align 4, !tbaa !4
  %504 = load i32** %typeA, align 8, !tbaa !3
  %505 = load i32* %ntype, align 4, !tbaa !0
  %506 = load float** %nbfp, align 8, !tbaa !3
  %507 = load float* %tabscale, align 4, !tbaa !4
  %508 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl2300(i32 %1, i32* %494, i32* %495, i32* %496, i32* %497, float* %arraydecay835, float* %fshift.0, i32* %499, float* %arraydecay21, float* %arraydecay23, float* %500, float %501, float* %egcoul, float %502, float %503, i32* %504, i32 %505, float* %506, float* %egnb, float %507, float* %508) #4
  br label %sw.epilog

sw.bb850:                                         ; preds = %if.then16
  %iinr852 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %509 = load i32** %iinr852, align 8, !tbaa !3
  %jindex853 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %510 = load i32** %jindex853, align 8, !tbaa !3
  %jjnr854 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %511 = load i32** %jjnr854, align 8, !tbaa !3
  %shift855 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %512 = load i32** %shift855, align 8, !tbaa !3
  %513 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay858 = getelementptr inbounds [3 x float]* %513, i64 0, i64 0
  %gid859 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %514 = load i32** %gid859, align 8, !tbaa !3
  %515 = load float** %chargeA, align 8, !tbaa !3
  %516 = load float* %epsfac, align 4, !tbaa !4
  %517 = load float* %k_rf, align 4, !tbaa !4
  %518 = load float* %c_rf, align 4, !tbaa !4
  %519 = load i32** %typeA, align 8, !tbaa !3
  %520 = load i32* %ntype, align 4, !tbaa !0
  %521 = load float** %nbfp, align 8, !tbaa !3
  %522 = load float* %tabscale, align 4, !tbaa !4
  %523 = load float** %vdwtab, align 8, !tbaa !3
  %nsatoms873 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %524 = load i32** %nsatoms873, align 8, !tbaa !3
  tail call void @inl2310(i32 %1, i32* %509, i32* %510, i32* %511, i32* %512, float* %arraydecay858, float* %fshift.0, i32* %514, float* %arraydecay21, float* %arraydecay23, float* %515, float %516, float* %egcoul, float %517, float %518, i32* %519, i32 %520, float* %521, float* %egnb, float %522, float* %523, i32* %524) #4
  br label %sw.epilog

sw.bb874:                                         ; preds = %if.then16
  %iinr876 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %525 = load i32** %iinr876, align 8, !tbaa !3
  %jindex877 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %526 = load i32** %jindex877, align 8, !tbaa !3
  %jjnr878 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %527 = load i32** %jjnr878, align 8, !tbaa !3
  %shift879 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %528 = load i32** %shift879, align 8, !tbaa !3
  %529 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay882 = getelementptr inbounds [3 x float]* %529, i64 0, i64 0
  %gid883 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %530 = load i32** %gid883, align 8, !tbaa !3
  %531 = load float** %chargeA, align 8, !tbaa !3
  %532 = load float* %epsfac, align 4, !tbaa !4
  %533 = load float* %k_rf, align 4, !tbaa !4
  %534 = load float* %c_rf, align 4, !tbaa !4
  %535 = load i32** %typeA, align 8, !tbaa !3
  %536 = load i32* %ntype, align 4, !tbaa !0
  %537 = load float** %nbfp, align 8, !tbaa !3
  %538 = load float* %tabscale, align 4, !tbaa !4
  %539 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl2320(i32 %1, i32* %525, i32* %526, i32* %527, i32* %528, float* %arraydecay882, float* %fshift.0, i32* %530, float* %arraydecay21, float* %arraydecay23, float* %531, float %532, float* %egcoul, float %533, float %534, i32* %535, i32 %536, float* %537, float* %egnb, float %538, float* %539) #4
  br label %sw.epilog

sw.bb897:                                         ; preds = %if.then16
  %iinr899 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %540 = load i32** %iinr899, align 8, !tbaa !3
  %jindex900 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %541 = load i32** %jindex900, align 8, !tbaa !3
  %jjnr901 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %542 = load i32** %jjnr901, align 8, !tbaa !3
  %shift902 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %543 = load i32** %shift902, align 8, !tbaa !3
  %544 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay905 = getelementptr inbounds [3 x float]* %544, i64 0, i64 0
  %gid906 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %545 = load i32** %gid906, align 8, !tbaa !3
  %546 = load float** %chargeA, align 8, !tbaa !3
  %547 = load float* %epsfac, align 4, !tbaa !4
  %548 = load float* %k_rf, align 4, !tbaa !4
  %549 = load float* %c_rf, align 4, !tbaa !4
  %550 = load i32** %typeA, align 8, !tbaa !3
  %551 = load i32* %ntype, align 4, !tbaa !0
  %552 = load float** %nbfp, align 8, !tbaa !3
  %553 = load float* %tabscale, align 4, !tbaa !4
  %554 = load float** %vdwtab, align 8, !tbaa !3
  tail call void @inl2330(i32 %1, i32* %540, i32* %541, i32* %542, i32* %543, float* %arraydecay905, float* %fshift.0, i32* %545, float* %arraydecay21, float* %arraydecay23, float* %546, float %547, float* %egcoul, float %548, float %549, i32* %550, i32 %551, float* %552, float* %egnb, float %553, float* %554) #4
  br label %sw.epilog

sw.bb920:                                         ; preds = %if.then16
  %iinr922 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %555 = load i32** %iinr922, align 8, !tbaa !3
  %jindex923 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %556 = load i32** %jindex923, align 8, !tbaa !3
  %jjnr924 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %557 = load i32** %jjnr924, align 8, !tbaa !3
  %shift925 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %558 = load i32** %shift925, align 8, !tbaa !3
  %559 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay928 = getelementptr inbounds [3 x float]* %559, i64 0, i64 0
  %gid929 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %560 = load i32** %gid929, align 8, !tbaa !3
  %561 = load float** %chargeA, align 8, !tbaa !3
  %562 = load float* %epsfac, align 4, !tbaa !4
  %563 = load float* %k_rf, align 4, !tbaa !4
  %564 = load float* %c_rf, align 4, !tbaa !4
  %565 = load i32** %typeA, align 8, !tbaa !3
  %566 = load i32* %ntype, align 4, !tbaa !0
  %567 = load float** %nbfp, align 8, !tbaa !3
  %568 = load float* %tabscale, align 4, !tbaa !4
  %569 = load float** %vdwtab, align 8, !tbaa !3
  %570 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl2400(i32 %1, i32* %555, i32* %556, i32* %557, i32* %558, float* %arraydecay928, float* %fshift.0, i32* %560, float* %arraydecay21, float* %arraydecay23, float* %561, float %562, float* %egcoul, float %563, float %564, i32* %565, i32 %566, float* %567, float* %egnb, float %568, float* %569, float %570) #4
  br label %sw.epilog

sw.bb944:                                         ; preds = %if.then16
  %iinr946 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %571 = load i32** %iinr946, align 8, !tbaa !3
  %jindex947 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %572 = load i32** %jindex947, align 8, !tbaa !3
  %jjnr948 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %573 = load i32** %jjnr948, align 8, !tbaa !3
  %shift949 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %574 = load i32** %shift949, align 8, !tbaa !3
  %575 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay952 = getelementptr inbounds [3 x float]* %575, i64 0, i64 0
  %gid953 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %576 = load i32** %gid953, align 8, !tbaa !3
  %577 = load float** %chargeA, align 8, !tbaa !3
  %578 = load float* %epsfac, align 4, !tbaa !4
  %579 = load float* %k_rf, align 4, !tbaa !4
  %580 = load float* %c_rf, align 4, !tbaa !4
  %581 = load i32** %typeA, align 8, !tbaa !3
  %582 = load i32* %ntype, align 4, !tbaa !0
  %583 = load float** %nbfp, align 8, !tbaa !3
  %584 = load float* %tabscale, align 4, !tbaa !4
  %585 = load float** %vdwtab, align 8, !tbaa !3
  %586 = load float* %tabscale_exp, align 4, !tbaa !4
  %nsatoms968 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %587 = load i32** %nsatoms968, align 8, !tbaa !3
  tail call void @inl2410(i32 %1, i32* %571, i32* %572, i32* %573, i32* %574, float* %arraydecay952, float* %fshift.0, i32* %576, float* %arraydecay21, float* %arraydecay23, float* %577, float %578, float* %egcoul, float %579, float %580, i32* %581, i32 %582, float* %583, float* %egnb, float %584, float* %585, float %586, i32* %587) #4
  br label %sw.epilog

sw.bb969:                                         ; preds = %if.then16
  %iinr971 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %588 = load i32** %iinr971, align 8, !tbaa !3
  %jindex972 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %589 = load i32** %jindex972, align 8, !tbaa !3
  %jjnr973 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %590 = load i32** %jjnr973, align 8, !tbaa !3
  %shift974 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %591 = load i32** %shift974, align 8, !tbaa !3
  %592 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay977 = getelementptr inbounds [3 x float]* %592, i64 0, i64 0
  %gid978 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %593 = load i32** %gid978, align 8, !tbaa !3
  %594 = load float** %chargeA, align 8, !tbaa !3
  %595 = load float* %epsfac, align 4, !tbaa !4
  %596 = load float* %k_rf, align 4, !tbaa !4
  %597 = load float* %c_rf, align 4, !tbaa !4
  %598 = load i32** %typeA, align 8, !tbaa !3
  %599 = load i32* %ntype, align 4, !tbaa !0
  %600 = load float** %nbfp, align 8, !tbaa !3
  %601 = load float* %tabscale, align 4, !tbaa !4
  %602 = load float** %vdwtab, align 8, !tbaa !3
  %603 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl2420(i32 %1, i32* %588, i32* %589, i32* %590, i32* %591, float* %arraydecay977, float* %fshift.0, i32* %593, float* %arraydecay21, float* %arraydecay23, float* %594, float %595, float* %egcoul, float %596, float %597, i32* %598, i32 %599, float* %600, float* %egnb, float %601, float* %602, float %603) #4
  br label %sw.epilog

sw.bb993:                                         ; preds = %if.then16
  %iinr995 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %604 = load i32** %iinr995, align 8, !tbaa !3
  %jindex996 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %605 = load i32** %jindex996, align 8, !tbaa !3
  %jjnr997 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %606 = load i32** %jjnr997, align 8, !tbaa !3
  %shift998 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %607 = load i32** %shift998, align 8, !tbaa !3
  %608 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1001 = getelementptr inbounds [3 x float]* %608, i64 0, i64 0
  %gid1002 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %609 = load i32** %gid1002, align 8, !tbaa !3
  %610 = load float** %chargeA, align 8, !tbaa !3
  %611 = load float* %epsfac, align 4, !tbaa !4
  %612 = load float* %k_rf, align 4, !tbaa !4
  %613 = load float* %c_rf, align 4, !tbaa !4
  %614 = load i32** %typeA, align 8, !tbaa !3
  %615 = load i32* %ntype, align 4, !tbaa !0
  %616 = load float** %nbfp, align 8, !tbaa !3
  %617 = load float* %tabscale, align 4, !tbaa !4
  %618 = load float** %vdwtab, align 8, !tbaa !3
  %619 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl2430(i32 %1, i32* %604, i32* %605, i32* %606, i32* %607, float* %arraydecay1001, float* %fshift.0, i32* %609, float* %arraydecay21, float* %arraydecay23, float* %610, float %611, float* %egcoul, float %612, float %613, i32* %614, i32 %615, float* %616, float* %egnb, float %617, float* %618, float %619) #4
  br label %sw.epilog

sw.bb1017:                                        ; preds = %if.then16
  %iinr1019 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %620 = load i32** %iinr1019, align 8, !tbaa !3
  %jindex1020 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %621 = load i32** %jindex1020, align 8, !tbaa !3
  %jjnr1021 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %622 = load i32** %jjnr1021, align 8, !tbaa !3
  %shift1022 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %623 = load i32** %shift1022, align 8, !tbaa !3
  %624 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1025 = getelementptr inbounds [3 x float]* %624, i64 0, i64 0
  %gid1026 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %625 = load i32** %gid1026, align 8, !tbaa !3
  %626 = load float** %chargeA, align 8, !tbaa !3
  %627 = load float* %epsfac, align 4, !tbaa !4
  %628 = load float* %tabscale, align 4, !tbaa !4
  %629 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3000(i32 %1, i32* %620, i32* %621, i32* %622, i32* %623, float* %arraydecay1025, float* %fshift.0, i32* %625, float* %arraydecay21, float* %arraydecay23, float* %626, float %627, float* %egcoul, float %628, float* %629) #4
  br label %sw.epilog

sw.bb1034:                                        ; preds = %if.then16
  %iinr1036 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %630 = load i32** %iinr1036, align 8, !tbaa !3
  %jindex1037 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %631 = load i32** %jindex1037, align 8, !tbaa !3
  %jjnr1038 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %632 = load i32** %jjnr1038, align 8, !tbaa !3
  %shift1039 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %633 = load i32** %shift1039, align 8, !tbaa !3
  %634 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1042 = getelementptr inbounds [3 x float]* %634, i64 0, i64 0
  %gid1043 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %635 = load i32** %gid1043, align 8, !tbaa !3
  %636 = load float** %chargeA, align 8, !tbaa !3
  %637 = load float* %epsfac, align 4, !tbaa !4
  %638 = load float* %tabscale, align 4, !tbaa !4
  %639 = load float** %coultab, align 8, !tbaa !3
  %640 = load float** %chargeB, align 8, !tbaa !3
  tail call void @inl3001(i32 %1, i32* %630, i32* %631, i32* %632, i32* %633, float* %arraydecay1042, float* %fshift.0, i32* %635, float* %arraydecay21, float* %arraydecay23, float* %636, float %637, float* %egcoul, float %638, float* %639, float %lambda, float* %dvdlambda, float* %640) #4
  br label %sw.epilog

sw.bb1052:                                        ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb1053:                                        ; preds = %if.then16
  %iinr1055 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %641 = load i32** %iinr1055, align 8, !tbaa !3
  %jindex1056 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %642 = load i32** %jindex1056, align 8, !tbaa !3
  %jjnr1057 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %643 = load i32** %jjnr1057, align 8, !tbaa !3
  %shift1058 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %644 = load i32** %shift1058, align 8, !tbaa !3
  %645 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1061 = getelementptr inbounds [3 x float]* %645, i64 0, i64 0
  %gid1062 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %646 = load i32** %gid1062, align 8, !tbaa !3
  %647 = load float** %chargeA, align 8, !tbaa !3
  %648 = load float* %epsfac, align 4, !tbaa !4
  %649 = load float* %tabscale, align 4, !tbaa !4
  %650 = load float** %coultab, align 8, !tbaa !3
  %nsatoms1071 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %651 = load i32** %nsatoms1071, align 8, !tbaa !3
  tail call void @inl3010(i32 %1, i32* %641, i32* %642, i32* %643, i32* %644, float* %arraydecay1061, float* %fshift.0, i32* %646, float* %arraydecay21, float* %arraydecay23, float* %647, float %648, float* %egcoul, float %649, float* %650, i32* %651) #4
  br label %sw.epilog

sw.bb1072:                                        ; preds = %if.then16
  %iinr1074 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %652 = load i32** %iinr1074, align 8, !tbaa !3
  %jindex1075 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %653 = load i32** %jindex1075, align 8, !tbaa !3
  %jjnr1076 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %654 = load i32** %jjnr1076, align 8, !tbaa !3
  %shift1077 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %655 = load i32** %shift1077, align 8, !tbaa !3
  %656 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1080 = getelementptr inbounds [3 x float]* %656, i64 0, i64 0
  %gid1081 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %657 = load i32** %gid1081, align 8, !tbaa !3
  %658 = load float** %chargeA, align 8, !tbaa !3
  %659 = load float* %epsfac, align 4, !tbaa !4
  %660 = load float* %tabscale, align 4, !tbaa !4
  %661 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3020(i32 %1, i32* %652, i32* %653, i32* %654, i32* %655, float* %arraydecay1080, float* %fshift.0, i32* %657, float* %arraydecay21, float* %arraydecay23, float* %658, float %659, float* %egcoul, float %660, float* %661) #4
  br label %sw.epilog

sw.bb1090:                                        ; preds = %if.then16
  %iinr1092 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %662 = load i32** %iinr1092, align 8, !tbaa !3
  %jindex1093 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %663 = load i32** %jindex1093, align 8, !tbaa !3
  %jjnr1094 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %664 = load i32** %jjnr1094, align 8, !tbaa !3
  %shift1095 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %665 = load i32** %shift1095, align 8, !tbaa !3
  %666 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1098 = getelementptr inbounds [3 x float]* %666, i64 0, i64 0
  %gid1099 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %667 = load i32** %gid1099, align 8, !tbaa !3
  %668 = load float** %chargeA, align 8, !tbaa !3
  %669 = load float* %epsfac, align 4, !tbaa !4
  %670 = load float* %tabscale, align 4, !tbaa !4
  %671 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3030(i32 %1, i32* %662, i32* %663, i32* %664, i32* %665, float* %arraydecay1098, float* %fshift.0, i32* %667, float* %arraydecay21, float* %arraydecay23, float* %668, float %669, float* %egcoul, float %670, float* %671) #4
  br label %sw.epilog

sw.bb1108:                                        ; preds = %if.then16
  %iinr1110 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %672 = load i32** %iinr1110, align 8, !tbaa !3
  %jindex1111 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %673 = load i32** %jindex1111, align 8, !tbaa !3
  %jjnr1112 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %674 = load i32** %jjnr1112, align 8, !tbaa !3
  %shift1113 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %675 = load i32** %shift1113, align 8, !tbaa !3
  %676 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1116 = getelementptr inbounds [3 x float]* %676, i64 0, i64 0
  %gid1117 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %677 = load i32** %gid1117, align 8, !tbaa !3
  %678 = load float** %chargeA, align 8, !tbaa !3
  %679 = load float* %epsfac, align 4, !tbaa !4
  %680 = load i32** %typeA, align 8, !tbaa !3
  %681 = load i32* %ntype, align 4, !tbaa !0
  %682 = load float** %nbfp, align 8, !tbaa !3
  %683 = load float* %tabscale, align 4, !tbaa !4
  %684 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3100(i32 %1, i32* %672, i32* %673, i32* %674, i32* %675, float* %arraydecay1116, float* %fshift.0, i32* %677, float* %arraydecay21, float* %arraydecay23, float* %678, float %679, float* %egcoul, i32* %680, i32 %681, float* %682, float* %egnb, float %683, float* %684) #4
  br label %sw.epilog

sw.bb1129:                                        ; preds = %if.then16
  %iinr1131 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %685 = load i32** %iinr1131, align 8, !tbaa !3
  %jindex1132 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %686 = load i32** %jindex1132, align 8, !tbaa !3
  %jjnr1133 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %687 = load i32** %jjnr1133, align 8, !tbaa !3
  %shift1134 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %688 = load i32** %shift1134, align 8, !tbaa !3
  %689 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1137 = getelementptr inbounds [3 x float]* %689, i64 0, i64 0
  %gid1138 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %690 = load i32** %gid1138, align 8, !tbaa !3
  %691 = load float** %chargeA, align 8, !tbaa !3
  %692 = load float* %epsfac, align 4, !tbaa !4
  %693 = load i32** %typeA, align 8, !tbaa !3
  %694 = load i32* %ntype, align 4, !tbaa !0
  %695 = load float** %nbfp, align 8, !tbaa !3
  %696 = load float* %tabscale, align 4, !tbaa !4
  %697 = load float** %coultab, align 8, !tbaa !3
  %nsatoms1150 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %698 = load i32** %nsatoms1150, align 8, !tbaa !3
  tail call void @inl3110(i32 %1, i32* %685, i32* %686, i32* %687, i32* %688, float* %arraydecay1137, float* %fshift.0, i32* %690, float* %arraydecay21, float* %arraydecay23, float* %691, float %692, float* %egcoul, i32* %693, i32 %694, float* %695, float* %egnb, float %696, float* %697, i32* %698) #4
  br label %sw.epilog

sw.bb1151:                                        ; preds = %if.then16
  %iinr1153 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %699 = load i32** %iinr1153, align 8, !tbaa !3
  %jindex1154 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %700 = load i32** %jindex1154, align 8, !tbaa !3
  %jjnr1155 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %701 = load i32** %jjnr1155, align 8, !tbaa !3
  %shift1156 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %702 = load i32** %shift1156, align 8, !tbaa !3
  %703 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1159 = getelementptr inbounds [3 x float]* %703, i64 0, i64 0
  %gid1160 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %704 = load i32** %gid1160, align 8, !tbaa !3
  %705 = load float** %chargeA, align 8, !tbaa !3
  %706 = load float* %epsfac, align 4, !tbaa !4
  %707 = load i32** %typeA, align 8, !tbaa !3
  %708 = load i32* %ntype, align 4, !tbaa !0
  %709 = load float** %nbfp, align 8, !tbaa !3
  %710 = load float* %tabscale, align 4, !tbaa !4
  %711 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3120(i32 %1, i32* %699, i32* %700, i32* %701, i32* %702, float* %arraydecay1159, float* %fshift.0, i32* %704, float* %arraydecay21, float* %arraydecay23, float* %705, float %706, float* %egcoul, i32* %707, i32 %708, float* %709, float* %egnb, float %710, float* %711) #4
  br label %sw.epilog

sw.bb1172:                                        ; preds = %if.then16
  %iinr1174 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %712 = load i32** %iinr1174, align 8, !tbaa !3
  %jindex1175 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %713 = load i32** %jindex1175, align 8, !tbaa !3
  %jjnr1176 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %714 = load i32** %jjnr1176, align 8, !tbaa !3
  %shift1177 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %715 = load i32** %shift1177, align 8, !tbaa !3
  %716 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1180 = getelementptr inbounds [3 x float]* %716, i64 0, i64 0
  %gid1181 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %717 = load i32** %gid1181, align 8, !tbaa !3
  %718 = load float** %chargeA, align 8, !tbaa !3
  %719 = load float* %epsfac, align 4, !tbaa !4
  %720 = load i32** %typeA, align 8, !tbaa !3
  %721 = load i32* %ntype, align 4, !tbaa !0
  %722 = load float** %nbfp, align 8, !tbaa !3
  %723 = load float* %tabscale, align 4, !tbaa !4
  %724 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3130(i32 %1, i32* %712, i32* %713, i32* %714, i32* %715, float* %arraydecay1180, float* %fshift.0, i32* %717, float* %arraydecay21, float* %arraydecay23, float* %718, float %719, float* %egcoul, i32* %720, i32 %721, float* %722, float* %egnb, float %723, float* %724) #4
  br label %sw.epilog

sw.bb1193:                                        ; preds = %if.then16
  %iinr1195 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %725 = load i32** %iinr1195, align 8, !tbaa !3
  %jindex1196 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %726 = load i32** %jindex1196, align 8, !tbaa !3
  %jjnr1197 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %727 = load i32** %jjnr1197, align 8, !tbaa !3
  %shift1198 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %728 = load i32** %shift1198, align 8, !tbaa !3
  %729 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1201 = getelementptr inbounds [3 x float]* %729, i64 0, i64 0
  %gid1202 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %730 = load i32** %gid1202, align 8, !tbaa !3
  %731 = load float** %chargeA, align 8, !tbaa !3
  %732 = load float* %epsfac, align 4, !tbaa !4
  %733 = load i32** %typeA, align 8, !tbaa !3
  %734 = load i32* %ntype, align 4, !tbaa !0
  %735 = load float** %nbfp, align 8, !tbaa !3
  %736 = load float* %tabscale, align 4, !tbaa !4
  %737 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3200(i32 %1, i32* %725, i32* %726, i32* %727, i32* %728, float* %arraydecay1201, float* %fshift.0, i32* %730, float* %arraydecay21, float* %arraydecay23, float* %731, float %732, float* %egcoul, i32* %733, i32 %734, float* %735, float* %egnb, float %736, float* %737) #4
  br label %sw.epilog

sw.bb1214:                                        ; preds = %if.then16
  %iinr1216 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %738 = load i32** %iinr1216, align 8, !tbaa !3
  %jindex1217 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %739 = load i32** %jindex1217, align 8, !tbaa !3
  %jjnr1218 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %740 = load i32** %jjnr1218, align 8, !tbaa !3
  %shift1219 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %741 = load i32** %shift1219, align 8, !tbaa !3
  %742 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1222 = getelementptr inbounds [3 x float]* %742, i64 0, i64 0
  %gid1223 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %743 = load i32** %gid1223, align 8, !tbaa !3
  %744 = load float** %chargeA, align 8, !tbaa !3
  %745 = load float* %epsfac, align 4, !tbaa !4
  %746 = load i32** %typeA, align 8, !tbaa !3
  %747 = load i32* %ntype, align 4, !tbaa !0
  %748 = load float** %nbfp, align 8, !tbaa !3
  %749 = load float* %tabscale, align 4, !tbaa !4
  %750 = load float** %coultab, align 8, !tbaa !3
  %nsatoms1235 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %751 = load i32** %nsatoms1235, align 8, !tbaa !3
  tail call void @inl3210(i32 %1, i32* %738, i32* %739, i32* %740, i32* %741, float* %arraydecay1222, float* %fshift.0, i32* %743, float* %arraydecay21, float* %arraydecay23, float* %744, float %745, float* %egcoul, i32* %746, i32 %747, float* %748, float* %egnb, float %749, float* %750, i32* %751) #4
  br label %sw.epilog

sw.bb1236:                                        ; preds = %if.then16
  %iinr1238 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %752 = load i32** %iinr1238, align 8, !tbaa !3
  %jindex1239 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %753 = load i32** %jindex1239, align 8, !tbaa !3
  %jjnr1240 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %754 = load i32** %jjnr1240, align 8, !tbaa !3
  %shift1241 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %755 = load i32** %shift1241, align 8, !tbaa !3
  %756 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1244 = getelementptr inbounds [3 x float]* %756, i64 0, i64 0
  %gid1245 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %757 = load i32** %gid1245, align 8, !tbaa !3
  %758 = load float** %chargeA, align 8, !tbaa !3
  %759 = load float* %epsfac, align 4, !tbaa !4
  %760 = load i32** %typeA, align 8, !tbaa !3
  %761 = load i32* %ntype, align 4, !tbaa !0
  %762 = load float** %nbfp, align 8, !tbaa !3
  %763 = load float* %tabscale, align 4, !tbaa !4
  %764 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3220(i32 %1, i32* %752, i32* %753, i32* %754, i32* %755, float* %arraydecay1244, float* %fshift.0, i32* %757, float* %arraydecay21, float* %arraydecay23, float* %758, float %759, float* %egcoul, i32* %760, i32 %761, float* %762, float* %egnb, float %763, float* %764) #4
  br label %sw.epilog

sw.bb1257:                                        ; preds = %if.then16
  %iinr1259 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %765 = load i32** %iinr1259, align 8, !tbaa !3
  %jindex1260 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %766 = load i32** %jindex1260, align 8, !tbaa !3
  %jjnr1261 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %767 = load i32** %jjnr1261, align 8, !tbaa !3
  %shift1262 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %768 = load i32** %shift1262, align 8, !tbaa !3
  %769 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1265 = getelementptr inbounds [3 x float]* %769, i64 0, i64 0
  %gid1266 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %770 = load i32** %gid1266, align 8, !tbaa !3
  %771 = load float** %chargeA, align 8, !tbaa !3
  %772 = load float* %epsfac, align 4, !tbaa !4
  %773 = load i32** %typeA, align 8, !tbaa !3
  %774 = load i32* %ntype, align 4, !tbaa !0
  %775 = load float** %nbfp, align 8, !tbaa !3
  %776 = load float* %tabscale, align 4, !tbaa !4
  %777 = load float** %coultab, align 8, !tbaa !3
  tail call void @inl3230(i32 %1, i32* %765, i32* %766, i32* %767, i32* %768, float* %arraydecay1265, float* %fshift.0, i32* %770, float* %arraydecay21, float* %arraydecay23, float* %771, float %772, float* %egcoul, i32* %773, i32 %774, float* %775, float* %egnb, float %776, float* %777) #4
  br label %sw.epilog

sw.bb1278:                                        ; preds = %if.then16
  %iinr1280 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %778 = load i32** %iinr1280, align 8, !tbaa !3
  %jindex1281 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %779 = load i32** %jindex1281, align 8, !tbaa !3
  %jjnr1282 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %780 = load i32** %jjnr1282, align 8, !tbaa !3
  %shift1283 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %781 = load i32** %shift1283, align 8, !tbaa !3
  %782 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1286 = getelementptr inbounds [3 x float]* %782, i64 0, i64 0
  %gid1287 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %783 = load i32** %gid1287, align 8, !tbaa !3
  %784 = load float** %chargeA, align 8, !tbaa !3
  %785 = load float* %epsfac, align 4, !tbaa !4
  %786 = load i32** %typeA, align 8, !tbaa !3
  %787 = load i32* %ntype, align 4, !tbaa !0
  %788 = load float** %nbfp, align 8, !tbaa !3
  %789 = load float* %tabscale, align 4, !tbaa !4
  %790 = load float** %coulvdwtab, align 8, !tbaa !3
  tail call void @inl3300(i32 %1, i32* %778, i32* %779, i32* %780, i32* %781, float* %arraydecay1286, float* %fshift.0, i32* %783, float* %arraydecay21, float* %arraydecay23, float* %784, float %785, float* %egcoul, i32* %786, i32 %787, float* %788, float* %egnb, float %789, float* %790) #4
  br label %sw.epilog

sw.bb1298:                                        ; preds = %if.then16
  %iinr1300 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %791 = load i32** %iinr1300, align 8, !tbaa !3
  %jindex1301 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %792 = load i32** %jindex1301, align 8, !tbaa !3
  %jjnr1302 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %793 = load i32** %jjnr1302, align 8, !tbaa !3
  %shift1303 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %794 = load i32** %shift1303, align 8, !tbaa !3
  %795 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1306 = getelementptr inbounds [3 x float]* %795, i64 0, i64 0
  %gid1307 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %796 = load i32** %gid1307, align 8, !tbaa !3
  %797 = load float** %chargeA, align 8, !tbaa !3
  %798 = load float* %epsfac, align 4, !tbaa !4
  %799 = load i32** %typeA, align 8, !tbaa !3
  %800 = load i32* %ntype, align 4, !tbaa !0
  %801 = load float** %nbfp, align 8, !tbaa !3
  %802 = load float* %tabscale, align 4, !tbaa !4
  %803 = load float** %coulvdwtab, align 8, !tbaa !3
  %804 = load float** %chargeB, align 8, !tbaa !3
  %805 = load i32** %typeB, align 8, !tbaa !3
  tail call void @inl3301(i32 %1, i32* %791, i32* %792, i32* %793, i32* %794, float* %arraydecay1306, float* %fshift.0, i32* %796, float* %arraydecay21, float* %arraydecay23, float* %797, float %798, float* %egcoul, i32* %799, i32 %800, float* %801, float* %egnb, float %802, float* %803, float %lambda, float* %dvdlambda, float* %804, i32* %805) #4
  br label %sw.epilog

sw.bb1321:                                        ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb1322:                                        ; preds = %if.then16
  %iinr1324 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %806 = load i32** %iinr1324, align 8, !tbaa !3
  %jindex1325 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %807 = load i32** %jindex1325, align 8, !tbaa !3
  %jjnr1326 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %808 = load i32** %jjnr1326, align 8, !tbaa !3
  %shift1327 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %809 = load i32** %shift1327, align 8, !tbaa !3
  %810 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1330 = getelementptr inbounds [3 x float]* %810, i64 0, i64 0
  %gid1331 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %811 = load i32** %gid1331, align 8, !tbaa !3
  %812 = load float** %chargeA, align 8, !tbaa !3
  %813 = load float* %epsfac, align 4, !tbaa !4
  %814 = load i32** %typeA, align 8, !tbaa !3
  %815 = load i32* %ntype, align 4, !tbaa !0
  %816 = load float** %nbfp, align 8, !tbaa !3
  %817 = load float* %tabscale, align 4, !tbaa !4
  %818 = load float** %coulvdwtab, align 8, !tbaa !3
  %nsatoms1343 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %819 = load i32** %nsatoms1343, align 8, !tbaa !3
  tail call void @inl3310(i32 %1, i32* %806, i32* %807, i32* %808, i32* %809, float* %arraydecay1330, float* %fshift.0, i32* %811, float* %arraydecay21, float* %arraydecay23, float* %812, float %813, float* %egcoul, i32* %814, i32 %815, float* %816, float* %egnb, float %817, float* %818, i32* %819) #4
  br label %sw.epilog

sw.bb1344:                                        ; preds = %if.then16
  %iinr1346 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %820 = load i32** %iinr1346, align 8, !tbaa !3
  %jindex1347 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %821 = load i32** %jindex1347, align 8, !tbaa !3
  %jjnr1348 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %822 = load i32** %jjnr1348, align 8, !tbaa !3
  %shift1349 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %823 = load i32** %shift1349, align 8, !tbaa !3
  %824 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1352 = getelementptr inbounds [3 x float]* %824, i64 0, i64 0
  %gid1353 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %825 = load i32** %gid1353, align 8, !tbaa !3
  %826 = load float** %chargeA, align 8, !tbaa !3
  %827 = load float* %epsfac, align 4, !tbaa !4
  %828 = load i32** %typeA, align 8, !tbaa !3
  %829 = load i32* %ntype, align 4, !tbaa !0
  %830 = load float** %nbfp, align 8, !tbaa !3
  %831 = load float* %tabscale, align 4, !tbaa !4
  %832 = load float** %coulvdwtab, align 8, !tbaa !3
  tail call void @inl3320(i32 %1, i32* %820, i32* %821, i32* %822, i32* %823, float* %arraydecay1352, float* %fshift.0, i32* %825, float* %arraydecay21, float* %arraydecay23, float* %826, float %827, float* %egcoul, i32* %828, i32 %829, float* %830, float* %egnb, float %831, float* %832) #4
  br label %sw.epilog

sw.bb1365:                                        ; preds = %if.then16
  %iinr1367 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %833 = load i32** %iinr1367, align 8, !tbaa !3
  %jindex1368 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %834 = load i32** %jindex1368, align 8, !tbaa !3
  %jjnr1369 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %835 = load i32** %jjnr1369, align 8, !tbaa !3
  %shift1370 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %836 = load i32** %shift1370, align 8, !tbaa !3
  %837 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1373 = getelementptr inbounds [3 x float]* %837, i64 0, i64 0
  %gid1374 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %838 = load i32** %gid1374, align 8, !tbaa !3
  %839 = load float** %chargeA, align 8, !tbaa !3
  %840 = load float* %epsfac, align 4, !tbaa !4
  %841 = load i32** %typeA, align 8, !tbaa !3
  %842 = load i32* %ntype, align 4, !tbaa !0
  %843 = load float** %nbfp, align 8, !tbaa !3
  %844 = load float* %tabscale, align 4, !tbaa !4
  %845 = load float** %coulvdwtab, align 8, !tbaa !3
  tail call void @inl3330(i32 %1, i32* %833, i32* %834, i32* %835, i32* %836, float* %arraydecay1373, float* %fshift.0, i32* %838, float* %arraydecay21, float* %arraydecay23, float* %839, float %840, float* %egcoul, i32* %841, i32 %842, float* %843, float* %egnb, float %844, float* %845) #4
  br label %sw.epilog

sw.bb1386:                                        ; preds = %if.then16
  %iinr1388 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %846 = load i32** %iinr1388, align 8, !tbaa !3
  %jindex1389 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %847 = load i32** %jindex1389, align 8, !tbaa !3
  %jjnr1390 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %848 = load i32** %jjnr1390, align 8, !tbaa !3
  %shift1391 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %849 = load i32** %shift1391, align 8, !tbaa !3
  %850 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1394 = getelementptr inbounds [3 x float]* %850, i64 0, i64 0
  %gid1395 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %851 = load i32** %gid1395, align 8, !tbaa !3
  %852 = load float** %chargeA, align 8, !tbaa !3
  %853 = load float* %epsfac, align 4, !tbaa !4
  %854 = load i32** %typeA, align 8, !tbaa !3
  %855 = load i32* %ntype, align 4, !tbaa !0
  %856 = load float** %nbfp, align 8, !tbaa !3
  %857 = load float* %tabscale, align 4, !tbaa !4
  %858 = load float** %coulvdwtab, align 8, !tbaa !3
  %859 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl3400(i32 %1, i32* %846, i32* %847, i32* %848, i32* %849, float* %arraydecay1394, float* %fshift.0, i32* %851, float* %arraydecay21, float* %arraydecay23, float* %852, float %853, float* %egcoul, i32* %854, i32 %855, float* %856, float* %egnb, float %857, float* %858, float %859) #4
  br label %sw.epilog

sw.bb1408:                                        ; preds = %if.then16
  %iinr1410 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %860 = load i32** %iinr1410, align 8, !tbaa !3
  %jindex1411 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %861 = load i32** %jindex1411, align 8, !tbaa !3
  %jjnr1412 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %862 = load i32** %jjnr1412, align 8, !tbaa !3
  %shift1413 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %863 = load i32** %shift1413, align 8, !tbaa !3
  %864 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1416 = getelementptr inbounds [3 x float]* %864, i64 0, i64 0
  %gid1417 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %865 = load i32** %gid1417, align 8, !tbaa !3
  %866 = load float** %chargeA, align 8, !tbaa !3
  %867 = load float* %epsfac, align 4, !tbaa !4
  %868 = load i32** %typeA, align 8, !tbaa !3
  %869 = load i32* %ntype, align 4, !tbaa !0
  %870 = load float** %nbfp, align 8, !tbaa !3
  %871 = load float* %tabscale, align 4, !tbaa !4
  %872 = load float** %coulvdwtab, align 8, !tbaa !3
  %873 = load float* %tabscale_exp, align 4, !tbaa !4
  %874 = load float** %chargeB, align 8, !tbaa !3
  %875 = load i32** %typeB, align 8, !tbaa !3
  tail call void @inl3401(i32 %1, i32* %860, i32* %861, i32* %862, i32* %863, float* %arraydecay1416, float* %fshift.0, i32* %865, float* %arraydecay21, float* %arraydecay23, float* %866, float %867, float* %egcoul, i32* %868, i32 %869, float* %870, float* %egnb, float %871, float* %872, float %873, float %lambda, float* %dvdlambda, float* %874, i32* %875) #4
  br label %sw.epilog

sw.bb1432:                                        ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb1433:                                        ; preds = %if.then16
  %iinr1435 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %876 = load i32** %iinr1435, align 8, !tbaa !3
  %jindex1436 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %877 = load i32** %jindex1436, align 8, !tbaa !3
  %jjnr1437 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %878 = load i32** %jjnr1437, align 8, !tbaa !3
  %shift1438 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %879 = load i32** %shift1438, align 8, !tbaa !3
  %880 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1441 = getelementptr inbounds [3 x float]* %880, i64 0, i64 0
  %gid1442 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %881 = load i32** %gid1442, align 8, !tbaa !3
  %882 = load float** %chargeA, align 8, !tbaa !3
  %883 = load float* %epsfac, align 4, !tbaa !4
  %884 = load i32** %typeA, align 8, !tbaa !3
  %885 = load i32* %ntype, align 4, !tbaa !0
  %886 = load float** %nbfp, align 8, !tbaa !3
  %887 = load float* %tabscale, align 4, !tbaa !4
  %888 = load float** %coulvdwtab, align 8, !tbaa !3
  %889 = load float* %tabscale_exp, align 4, !tbaa !4
  %nsatoms1455 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %890 = load i32** %nsatoms1455, align 8, !tbaa !3
  tail call void @inl3410(i32 %1, i32* %876, i32* %877, i32* %878, i32* %879, float* %arraydecay1441, float* %fshift.0, i32* %881, float* %arraydecay21, float* %arraydecay23, float* %882, float %883, float* %egcoul, i32* %884, i32 %885, float* %886, float* %egnb, float %887, float* %888, float %889, i32* %890) #4
  br label %sw.epilog

sw.bb1456:                                        ; preds = %if.then16
  %iinr1458 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %891 = load i32** %iinr1458, align 8, !tbaa !3
  %jindex1459 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %892 = load i32** %jindex1459, align 8, !tbaa !3
  %jjnr1460 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %893 = load i32** %jjnr1460, align 8, !tbaa !3
  %shift1461 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %894 = load i32** %shift1461, align 8, !tbaa !3
  %895 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1464 = getelementptr inbounds [3 x float]* %895, i64 0, i64 0
  %gid1465 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %896 = load i32** %gid1465, align 8, !tbaa !3
  %897 = load float** %chargeA, align 8, !tbaa !3
  %898 = load float* %epsfac, align 4, !tbaa !4
  %899 = load i32** %typeA, align 8, !tbaa !3
  %900 = load i32* %ntype, align 4, !tbaa !0
  %901 = load float** %nbfp, align 8, !tbaa !3
  %902 = load float* %tabscale, align 4, !tbaa !4
  %903 = load float** %coulvdwtab, align 8, !tbaa !3
  %904 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl3420(i32 %1, i32* %891, i32* %892, i32* %893, i32* %894, float* %arraydecay1464, float* %fshift.0, i32* %896, float* %arraydecay21, float* %arraydecay23, float* %897, float %898, float* %egcoul, i32* %899, i32 %900, float* %901, float* %egnb, float %902, float* %903, float %904) #4
  br label %sw.epilog

sw.bb1478:                                        ; preds = %if.then16
  %iinr1480 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %905 = load i32** %iinr1480, align 8, !tbaa !3
  %jindex1481 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %906 = load i32** %jindex1481, align 8, !tbaa !3
  %jjnr1482 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %907 = load i32** %jjnr1482, align 8, !tbaa !3
  %shift1483 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %908 = load i32** %shift1483, align 8, !tbaa !3
  %909 = load [3 x float]** %shift_vec, align 8, !tbaa !3
  %arraydecay1486 = getelementptr inbounds [3 x float]* %909, i64 0, i64 0
  %gid1487 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %910 = load i32** %gid1487, align 8, !tbaa !3
  %911 = load float** %chargeA, align 8, !tbaa !3
  %912 = load float* %epsfac, align 4, !tbaa !4
  %913 = load i32** %typeA, align 8, !tbaa !3
  %914 = load i32* %ntype, align 4, !tbaa !0
  %915 = load float** %nbfp, align 8, !tbaa !3
  %916 = load float* %tabscale, align 4, !tbaa !4
  %917 = load float** %coulvdwtab, align 8, !tbaa !3
  %918 = load float* %tabscale_exp, align 4, !tbaa !4
  tail call void @inl3430(i32 %1, i32* %905, i32* %906, i32* %907, i32* %908, float* %arraydecay1486, float* %fshift.0, i32* %910, float* %arraydecay21, float* %arraydecay23, float* %911, float %912, float* %egcoul, i32* %913, i32 %914, float* %915, float* %egnb, float %916, float* %917, float %918) #4
  br label %sw.epilog

sw.bb1500:                                        ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0)) #4
  br label %sw.default

sw.default:                                       ; preds = %if.then16, %sw.bb1500
  %call = tail call i8* @nrnb_str(i32 %2) #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i8* %call, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 882) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1478, %sw.bb1456, %sw.bb1433, %sw.bb1432, %sw.bb1408, %sw.bb1386, %sw.bb1365, %sw.bb1344, %sw.bb1322, %sw.bb1321, %sw.bb1298, %sw.bb1278, %sw.bb1257, %sw.bb1236, %sw.bb1214, %sw.bb1193, %sw.bb1172, %sw.bb1151, %sw.bb1129, %sw.bb1108, %sw.bb1090, %sw.bb1072, %sw.bb1053, %sw.bb1052, %sw.bb1034, %sw.bb1017, %sw.bb993, %sw.bb969, %sw.bb944, %sw.bb920, %sw.bb897, %sw.bb874, %sw.bb850, %sw.bb827, %sw.bb806, %sw.bb785, %sw.bb763, %sw.bb742, %sw.bb721, %sw.bb700, %sw.bb678, %sw.bb657, %sw.bb639, %sw.bb621, %sw.bb602, %sw.bb586, %sw.bb564, %sw.bb542, %sw.bb519, %sw.bb497, %sw.bb476, %sw.bb455, %sw.bb433, %sw.bb412, %sw.bb393, %sw.bb374, %sw.bb354, %sw.bb335, %sw.bb316, %sw.bb297, %sw.bb277, %sw.bb258, %sw.bb242, %sw.bb226, %sw.bb209, %sw.bb195, %sw.bb194, %sw.bb173, %sw.bb152, %sw.bb133, %sw.bb132, %sw.bb113, %sw.bb93, %sw.bb76, %sw.bb58, %sw.bb41, %sw.bb24, %sw.bb
  %solvent = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 6
  %919 = load i32* %solvent, align 4, !tbaa !0
  switch i32 %919, label %if.else1517 [
    i32 2, label %if.then1502
    i32 3, label %if.then1510
  ]

if.then1502:                                      ; preds = %sw.epilog
  %920 = load i32* %nri, align 4, !tbaa !0
  %mul = mul nsw i32 %920, 3
  %conv = sitofp i32 %mul to double
  %921 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1505 = fadd double %921, %conv
  store double %add1505, double* %arrayidx1525, align 8, !tbaa !5
  br label %if.else1588

if.then1510:                                      ; preds = %sw.epilog
  %922 = load i32* %nri, align 4, !tbaa !0
  %mul1512 = mul nsw i32 %922, 9
  %conv1513 = sitofp i32 %mul1512 to double
  %923 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1516 = fadd double %923, %conv1513
  store double %add1516, double* %arrayidx1525, align 8, !tbaa !5
  br label %if.else1588

if.else1517:                                      ; preds = %sw.epilog
  %cmp1519 = icmp eq i32 %919, 1
  br i1 %cmp1519, label %if.then1533, label %if.end1529

if.end1529:                                       ; preds = %if.else1517
  %924 = load i32* %nri, align 4, !tbaa !0
  %conv1523 = sitofp i32 %924 to double
  %925 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1526 = fadd double %925, %conv1523
  store double %add1526, double* %arrayidx1525, align 8, !tbaa !5
  br label %if.else1588

if.then1533:                                      ; preds = %if.else1517
  switch i32 %2, label %sw.default1586 [
    i32 17, label %sw.bb1534
    i32 21, label %sw.bb1534
    i32 25, label %sw.bb1534
    i32 29, label %sw.bb1534
    i32 37, label %sw.bb1534
    i32 41, label %sw.bb1534
    i32 45, label %sw.bb1534
    i32 49, label %sw.bb1534
    i32 59, label %sw.bb1534
    i32 63, label %sw.bb1534
    i32 69, label %sw.bb1534
    i32 75, label %sw.bb1534
    i32 13, label %sw.bb1550
    i32 33, label %sw.bb1550
    i32 55, label %sw.bb1550
    i32 1, label %sw.bb1568
    i32 3, label %sw.bb1568
    i32 5, label %sw.bb1568
    i32 9, label %sw.bb1568
  ]

sw.bb1534:                                        ; preds = %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533, %if.then1533
  %926 = load float* %arrayidx1535, align 4, !tbaa !4
  %927 = load i32* %nri, align 4, !tbaa !0
  %conv1537 = sitofp i32 %927 to float
  %mul1538 = fmul float %926, %conv1537
  %conv1539 = fpext float %mul1538 to double
  %928 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1542 = fadd double %928, %conv1539
  store double %add1542, double* %arrayidx1525, align 8, !tbaa !5
  %nrj = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %929 = load i32* %nrj, align 4, !tbaa !0
  %conv1543 = sitofp i32 %929 to float
  %mul1544 = fmul float %926, %conv1543
  %conv1545 = fpext float %mul1544 to double
  %idxprom1546 = sext i32 %2 to i64
  %arrayidx1548 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom1546
  %930 = load double* %arrayidx1548, align 8, !tbaa !5
  %add1549 = fadd double %930, %conv1545
  store double %add1549, double* %arrayidx1548, align 8, !tbaa !5
  br label %for.inc

sw.bb1550:                                        ; preds = %if.then1533, %if.then1533, %if.then1533
  %931 = load float* %arrayidx1535, align 4, !tbaa !4
  %932 = load i32* %nri, align 4, !tbaa !0
  %conv1554 = sitofp i32 %932 to float
  %mul1555 = fmul float %931, %conv1554
  %conv1556 = fpext float %mul1555 to double
  %933 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1559 = fadd double %933, %conv1556
  store double %add1559, double* %arrayidx1525, align 8, !tbaa !5
  %nrj1560 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %934 = load i32* %nrj1560, align 4, !tbaa !0
  %conv1561 = sitofp i32 %934 to float
  %mul1562 = fmul float %931, %conv1561
  %conv1563 = fpext float %mul1562 to double
  %idxprom1564 = sext i32 %2 to i64
  %arrayidx1566 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom1564
  %935 = load double* %arrayidx1566, align 8, !tbaa !5
  %add1567 = fadd double %935, %conv1563
  store double %add1567, double* %arrayidx1566, align 8, !tbaa !5
  br label %for.inc

sw.bb1568:                                        ; preds = %if.then1533, %if.then1533, %if.then1533, %if.then1533
  %936 = load float* %arrayidx1535, align 4, !tbaa !4
  %937 = load i32* %nri, align 4, !tbaa !0
  %conv1572 = sitofp i32 %937 to float
  %mul1573 = fmul float %936, %conv1572
  %conv1574 = fpext float %mul1573 to double
  %938 = load double* %arrayidx1525, align 8, !tbaa !5
  %add1577 = fadd double %938, %conv1574
  store double %add1577, double* %arrayidx1525, align 8, !tbaa !5
  %nrj1578 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %939 = load i32* %nrj1578, align 4, !tbaa !0
  %conv1579 = sitofp i32 %939 to float
  %mul1580 = fmul float %936, %conv1579
  %conv1581 = fpext float %mul1580 to double
  %idxprom1582 = sext i32 %2 to i64
  %arrayidx1584 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom1582
  %940 = load double* %arrayidx1584, align 8, !tbaa !5
  %add1585 = fadd double %940, %conv1581
  store double %add1585, double* %arrayidx1584, align 8, !tbaa !5
  br label %for.inc

sw.default1586:                                   ; preds = %if.then1533
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 931, i32 %2) #4
  br label %for.inc

if.else1588:                                      ; preds = %if.then1502, %if.then1510, %if.end1529
  %nrj1589 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %941 = load i32* %nrj1589, align 4, !tbaa !0
  %conv1590 = sitofp i32 %941 to double
  %idxprom1591 = sext i32 %2 to i64
  %arrayidx1593 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom1591
  %942 = load double* %arrayidx1593, align 8, !tbaa !5
  %add1594 = fadd double %942, %conv1590
  store double %add1594, double* %arrayidx1593, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %sw.bb1534, %sw.bb1550, %sw.bb1568, %sw.default1586, %if.else1588
  %indvars.iv.next = add i64 %indvars.iv, 1
  %943 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %943, %i1.0
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare void @inl0100(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl0110(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl0200(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl0210(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl0300(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl0310(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl0301(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @inl0400(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl0410(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*, float, i32*) #1

; Function Attrs: optsize
declare void @inl0401(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32, float*, float*, float, float*, float, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl1000(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1010(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl1020(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1030(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1100(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1110(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl1120(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1130(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1200(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1210(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl1220(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1230(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl1300(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1310(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl1320(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1330(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl1400(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl1410(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float, i32*) #1

; Function Attrs: optsize
declare void @inl1420(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl1430(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl2000(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float) #1

; Function Attrs: optsize
declare void @inl2010(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*) #1

; Function Attrs: optsize
declare void @inl2020(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float) #1

; Function Attrs: optsize
declare void @inl2030(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float) #1

; Function Attrs: optsize
declare void @inl2100(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2110(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl2120(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2130(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2200(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2210(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl2220(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2230(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*) #1

; Function Attrs: optsize
declare void @inl2300(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl2310(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl2320(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl2330(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl2400(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl2410(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*, float, i32*) #1

; Function Attrs: optsize
declare void @inl2420(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl2430(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl3000(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3001(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float*, float, float*, float*) #1

; Function Attrs: optsize
declare void @inl3010(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3020(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3030(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3100(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3110(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3120(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3130(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3200(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3210(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3220(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3230(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3300(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3301(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3310(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3320(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3330(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*) #1

; Function Attrs: optsize
declare void @inl3400(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl3401(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float, float, float*, float*, i32*) #1

; Function Attrs: optsize
declare void @inl3410(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float, i32*) #1

; Function Attrs: optsize
declare void @inl3420(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare void @inl3430(i32, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float, float*, i32*, i32, float*, float*, float, float*, float) #1

; Function Attrs: optsize
declare i8* @nrnb_str(i32) #1

; Function Attrs: nounwind optsize uwtable
define float @do_14(i32 %nbonds, i32* %iatoms, %union.t_iparams* nocapture %iparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* %egnb, float* %egcoul) #0 {
entry:
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %gid = alloca i32, align 4
  %shift14 = alloca i32, align 4
  %j_index = alloca i64, align 8
  %nbfp = alloca [18 x float], align 16
  store i64 4294967296, i64* %j_index, align 8
  %0 = load float** @do_14.nbfp14, align 8, !tbaa !3
  %cmp = icmp eq float* %0, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %1 = load i32* %ntype, align 4, !tbaa !0
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %2 = load i32** %typeA, align 8, !tbaa !3
  %mul.i = shl i32 %1, 1
  %mul1.i = mul nsw i32 %mul.i, %1
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 959, i32 %mul1.i, i32 4) #4
  %3 = bitcast i8* %call.i to float*
  %cmp117.i = icmp sgt i32 %nbonds, 0
  br i1 %cmp117.i, label %for.body.i, label %mk_14parm.exit

for.body.i:                                       ; preds = %if.then, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %if.then ]
  %arrayidx.i = getelementptr inbounds i32* %iatoms, i64 %indvars.iv.i
  %4 = load i32* %arrayidx.i, align 4, !tbaa !0
  %5 = add nsw i64 %indvars.iv.i, 1
  %arrayidx3.i = getelementptr inbounds i32* %iatoms, i64 %5
  %6 = load i32* %arrayidx3.i, align 4, !tbaa !0
  %idxprom4.i = sext i32 %6 to i64
  %arrayidx5.i = getelementptr inbounds i32* %2, i64 %idxprom4.i
  %7 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %8 = add nsw i64 %indvars.iv.i, 2
  %arrayidx8.i = getelementptr inbounds i32* %iatoms, i64 %8
  %9 = load i32* %arrayidx8.i, align 4, !tbaa !0
  %idxprom9.i = sext i32 %9 to i64
  %arrayidx10.i = getelementptr inbounds i32* %2, i64 %idxprom9.i
  %10 = load i32* %arrayidx10.i, align 4, !tbaa !0
  %mul11.i = mul nsw i32 %7, %1
  %add12.i = add nsw i32 %10, %mul11.i
  %mul13.i = shl nsw i32 %add12.i, 1
  %idxprom14.i = sext i32 %mul13.i to i64
  %arrayidx15.i = getelementptr inbounds float* %3, i64 %idxprom14.i
  %11 = load float* %arrayidx15.i, align 4, !tbaa !4
  %add19113.i = or i32 %mul13.i, 1
  %idxprom20.i = sext i32 %add19113.i to i64
  %arrayidx21.i = getelementptr inbounds float* %3, i64 %idxprom20.i
  %12 = load float* %arrayidx21.i, align 4, !tbaa !4
  %idxprom22.i = sext i32 %4 to i64
  %c6A.i = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom22.i, i32 0, i32 0
  %13 = load float* %c6A.i, align 4, !tbaa !4
  store float %13, float* %arrayidx15.i, align 4, !tbaa !4
  %14 = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom22.i, i32 0, i32 1
  %15 = load float* %14, align 4, !tbaa !4
  store float %15, float* %arrayidx21.i, align 4, !tbaa !4
  %fabsf.i = call float @fabsf(float %11) #5
  %16 = fpext float %fabsf.i to double
  %cmp39.i = fcmp ogt double %16, 1.200000e-38
  br i1 %cmp39.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %fabsf114.i = call float @fabsf(float %12) #5
  %17 = fpext float %fabsf114.i to double
  %cmp43.i = fcmp ogt double %17, 1.200000e-38
  br i1 %cmp43.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %for.body.i
  %sub.i = fsub float %11, %13
  %fabsf115.i = call float @fabsf(float %sub.i) #5
  %18 = fpext float %fabsf115.i to double
  %cmp52.i = fcmp ogt double %18, 1.200000e-38
  br i1 %cmp52.i, label %if.then66.i, label %lor.lhs.false54.i

lor.lhs.false54.i:                                ; preds = %if.then.i
  %sub61.i = fsub float %12, %15
  %fabsf116.i = call float @fabsf(float %sub61.i) #5
  %19 = fpext float %fabsf116.i to double
  %cmp64.i = fcmp ogt double %19, 1.200000e-38
  br i1 %cmp64.i, label %if.then66.i, label %for.inc.i

if.then66.i:                                      ; preds = %lor.lhs.false54.i, %if.then.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([126 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %9) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then66.i, %lor.lhs.false54.i, %lor.lhs.false.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 3
  %20 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %20, %nbonds
  br i1 %cmp.i, label %for.body.i, label %mk_14parm.exit

mk_14parm.exit:                                   ; preds = %for.inc.i, %if.then
  store float* %3, float** @do_14.nbfp14, align 8, !tbaa !3
  %21 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %21, null
  br i1 %tobool, label %if.end5, label %if.then1

if.then1:                                         ; preds = %mk_14parm.exit
  %22 = load i32* %ntype, align 4, !tbaa !0
  %conv = sitofp i32 %22 to float
  %mul.i301 = fmul float %conv, %conv
  %conv4 = fptosi float %mul.i301 to i32
  call void @pr_rvec(%struct._IO_FILE* %21, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), float* %3, i32 %conv4) #4
  br label %if.end5

if.end5:                                          ; preds = %mk_14parm.exit, %if.then1, %entry
  store i32 13, i32* %shift14, align 4, !tbaa !0
  %epsfac = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %23 = load float* %epsfac, align 4, !tbaa !4
  %fudgeQQ = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  %24 = load float* %fudgeQQ, align 4, !tbaa !4
  %mul = fmul float %23, %24
  %rtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  %25 = load float* %rtab, align 4, !tbaa !4
  %mul.i302 = fmul float %25, %25
  %idx.ext = sext i32 %nbonds to i64
  %add.ptr = getelementptr inbounds i32* %iatoms, i64 %idx.ext
  %cmp7347 = icmp sgt i32 %nbonds, 0
  br i1 %cmp7347, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %cENER = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %arraydecay169 = bitcast i64* %j_index to i32*
  %shift_vec170 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %fshift173 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %arraydecay177 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %arraydecay179 = getelementptr inbounds [3 x float]* %f, i64 0, i64 0
  %chargeA180 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %typeA181 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %ntype182 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %tabscale183 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  %coulvdw14tab184 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %26 = bitcast [18 x float]* %nbfp to i8*
  %typeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %arrayidx126 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 4
  %arrayidx130 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 12
  %arrayidx134 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 5
  %arrayidx138 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 13
  %sc_alpha = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %arraydecay153 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 0
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %conv29 = fpext float %mul.i302 to double
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %iatom.0348 = phi i32* [ %iatoms, %for.body.lr.ph ], [ %add.ptr221, %for.inc ]
  %27 = load i32* %iatom.0348, align 4, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32* %iatom.0348, i64 1
  %28 = load i32* %arrayidx9, align 4, !tbaa !0
  store i32 %28, i32* %ai, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %iatom.0348, i64 2
  %29 = load i32* %arrayidx10, align 4, !tbaa !0
  store i32 %29, i32* %aj, align 4, !tbaa !0
  %idxprom = sext i32 %28 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 0
  %idxprom12 = sext i32 %29 to i64
  %arraydecay14 = getelementptr inbounds [3 x float]* %x, i64 %idxprom12, i64 0
  %30 = load float* %arraydecay14, align 4, !tbaa !4
  %31 = load float* %arraydecay, align 4, !tbaa !4
  %sub.i303 = fsub float %30, %31
  %mul.i.i = fmul float %sub.i303, %sub.i303
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom12, i64 1
  %32 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i304 = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 1
  %33 = load float* %arrayidx3.i304, align 4, !tbaa !4
  %sub4.i = fsub float %32, %33
  %mul.i16.i = fmul float %sub4.i, %sub4.i
  %add.i = fadd float %mul.i.i, %mul.i16.i
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom12, i64 2
  %34 = load float* %arrayidx6.i, align 4, !tbaa !4
  %arrayidx7.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom, i64 2
  %35 = load float* %arrayidx7.i, align 4, !tbaa !4
  %sub8.i = fsub float %34, %35
  %mul.i15.i = fmul float %sub8.i, %sub8.i
  %add10.i = fadd float %add.i, %mul.i15.i
  %arraydecay18 = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 0
  %36 = load float* %arraydecay18, align 4, !tbaa !4
  %arrayidx2.i305 = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 1
  %37 = load float* %arrayidx2.i305, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 2
  %38 = load float* %arrayidx4.i, align 4, !tbaa !4
  %cmp24 = fcmp ult float %add10.i, %mul.i302
  br i1 %cmp24, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body
  %.b = load i1* @do_14.bWarn, align 1
  br i1 %.b, label %if.end32, label %if.then28

if.then28:                                        ; preds = %if.then26
  %39 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), double %conv29) #4
  %40 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), i64 85, i64 1, %struct._IO_FILE* %40)
  store i1 true, i1* @do_14.bWarn, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.then28
  %42 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool33 = icmp eq %struct._IO_FILE* %42, null
  br i1 %tobool33, label %for.inc, label %if.then34

if.then34:                                        ; preds = %if.end32
  %43 = load i32* %ai, align 4, !tbaa !0
  %idxprom35 = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds [3 x float]* %x, i64 %idxprom35, i64 0
  %44 = load float* %arrayidx37, align 4, !tbaa !4
  %conv38 = fpext float %44 to double
  %arrayidx41 = getelementptr inbounds [3 x float]* %x, i64 %idxprom35, i64 1
  %45 = load float* %arrayidx41, align 4, !tbaa !4
  %conv42 = fpext float %45 to double
  %arrayidx45 = getelementptr inbounds [3 x float]* %x, i64 %idxprom35, i64 2
  %46 = load float* %arrayidx45, align 4, !tbaa !4
  %conv46 = fpext float %46 to double
  %47 = load i32* %aj, align 4, !tbaa !0
  %idxprom47 = sext i32 %47 to i64
  %arrayidx49 = getelementptr inbounds [3 x float]* %x, i64 %idxprom47, i64 0
  %48 = load float* %arrayidx49, align 4, !tbaa !4
  %conv50 = fpext float %48 to double
  %arrayidx53 = getelementptr inbounds [3 x float]* %x, i64 %idxprom47, i64 1
  %49 = load float* %arrayidx53, align 4, !tbaa !4
  %conv54 = fpext float %49 to double
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %idxprom47, i64 2
  %50 = load float* %arrayidx57, align 4, !tbaa !4
  %conv58 = fpext float %50 to double
  %add = add nsw i32 %43, 1
  %add59 = add nsw i32 %47, 1
  %conv60 = fpext float %add10.i to double
  %call61 = call double @sqrt(double %conv60) #4
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([82 x i8]* @.str8, i64 0, i64 0), double %conv38, double %conv42, double %conv46, double %conv50, double %conv54, double %conv58, i32 %add, i32 %add59, double %call61) #4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %51 = load i16** %cENER, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i16* %51, i64 %idxprom
  %52 = load i16* %arrayidx65, align 2, !tbaa !6
  %conv66 = zext i16 %52 to i32
  %arrayidx69 = getelementptr inbounds i16* %51, i64 %idxprom12
  %53 = load i16* %arrayidx69, align 2, !tbaa !6
  %conv70 = zext i16 %53 to i32
  %cmp71 = icmp ult i16 %52, %53
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %mul77 = mul nsw i32 %conv66, %ngrp
  %add82 = add nsw i32 %mul77, %conv70
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %mul87 = mul nsw i32 %conv70, %ngrp
  %add92 = add nsw i32 %mul87, %conv66
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add82, %cond.true ], [ %add92, %cond.false ]
  store i32 %cond, i32* %gid, align 4, !tbaa !0
  %54 = load i32** %bPerturbed, align 8, !tbaa !3
  %arrayidx94 = getelementptr inbounds i32* %54, i64 %idxprom
  %55 = load i32* %arrayidx94, align 4, !tbaa !0
  %tobool95 = icmp eq i32 %55, 0
  br i1 %tobool95, label %lor.lhs.false, label %if.then100

lor.lhs.false:                                    ; preds = %cond.end
  %arrayidx98 = getelementptr inbounds i32* %54, i64 %idxprom12
  %56 = load i32* %arrayidx98, align 4, !tbaa !0
  %tobool99 = icmp eq i32 %56, 0
  br i1 %tobool99, label %if.else168, label %if.then100

if.then100:                                       ; preds = %lor.lhs.false, %cond.end
  call void @llvm.lifetime.start(i64 72, i8* %26) #3
  %57 = load i32** %typeA181, align 8, !tbaa !3
  %arrayidx103 = getelementptr inbounds i32* %57, i64 %idxprom
  %58 = load i32* %arrayidx103, align 4, !tbaa !0
  %59 = load i32** %typeB, align 8, !tbaa !3
  %arrayidx105 = getelementptr inbounds i32* %59, i64 %idxprom
  %60 = load i32* %arrayidx105, align 4, !tbaa !0
  %arrayidx108 = getelementptr inbounds i32* %57, i64 %idxprom12
  %61 = load i32* %arrayidx108, align 4, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %59, i64 %idxprom12
  %62 = load i32* %arrayidx111, align 4, !tbaa !0
  store i32 0, i32* %arrayidx103, align 4, !tbaa !0
  %63 = load i32* %ai, align 4, !tbaa !0
  %idxprom115 = sext i32 %63 to i64
  %arrayidx117 = getelementptr inbounds i32* %59, i64 %idxprom115
  store i32 1, i32* %arrayidx117, align 4, !tbaa !0
  %64 = load i32* %aj, align 4, !tbaa !0
  %idxprom118 = sext i32 %64 to i64
  %arrayidx120 = getelementptr inbounds i32* %57, i64 %idxprom118
  store i32 2, i32* %arrayidx120, align 4, !tbaa !0
  %65 = load i32* %aj, align 4, !tbaa !0
  %idxprom121 = sext i32 %65 to i64
  %arrayidx123 = getelementptr inbounds i32* %59, i64 %idxprom121
  store i32 3, i32* %arrayidx123, align 4, !tbaa !0
  %idxprom124 = sext i32 %27 to i64
  %c6A = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom124, i32 0, i32 0
  %66 = load float* %c6A, align 4, !tbaa !4
  store float %66, float* %arrayidx126, align 16, !tbaa !4
  %67 = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom124, i32 0, i32 2
  %68 = load float* %67, align 4, !tbaa !4
  store float %68, float* %arrayidx130, align 16, !tbaa !4
  %69 = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom124, i32 0, i32 1
  %70 = load float* %69, align 4, !tbaa !4
  store float %70, float* %arrayidx134, align 4, !tbaa !4
  %71 = getelementptr inbounds %union.t_iparams* %iparams, i64 %idxprom124, i32 0, i32 3
  %72 = load float* %71, align 4, !tbaa !4
  store float %72, float* %arrayidx138, align 4, !tbaa !4
  %73 = load float* %sc_alpha, align 4, !tbaa !4
  %cmp139 = fcmp ogt float %73, 0.000000e+00
  br i1 %cmp139, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.then100
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end155

if.else142:                                       ; preds = %if.then100
  %74 = load [3 x float]** %shift_vec170, align 8, !tbaa !3
  %arraydecay145 = getelementptr inbounds [3 x float]* %74, i64 0, i64 0
  %75 = load [3 x float]** %fshift173, align 8, !tbaa !3
  %arraydecay147 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0
  %76 = load float** %chargeA180, align 8, !tbaa !3
  %77 = load float* %tabscale183, align 4, !tbaa !4
  %78 = load float** %coulvdw14tab184, align 8, !tbaa !3
  %79 = load float** %chargeB, align 8, !tbaa !3
  call void @inl3301(i32 1, i32* %ai, i32* %arraydecay169, i32* %aj, i32* %shift14, float* %arraydecay145, float* %arraydecay147, i32* %gid, float* %arraydecay177, float* %arraydecay179, float* %76, float %mul, float* %egcoul, i32* %57, i32 3, float* %arraydecay153, float* %egnb, float %77, float* %78, float %lambda, float* %dvdlambda, float* %79, i32* %59) #4
  br label %if.end155

if.end155:                                        ; preds = %if.else142, %if.then141
  %80 = load i32* %ai, align 4, !tbaa !0
  %idxprom156 = sext i32 %80 to i64
  %81 = load i32** %typeA181, align 8, !tbaa !3
  %arrayidx158 = getelementptr inbounds i32* %81, i64 %idxprom156
  store i32 %58, i32* %arrayidx158, align 4, !tbaa !0
  %82 = load i32* %ai, align 4, !tbaa !0
  %idxprom159 = sext i32 %82 to i64
  %83 = load i32** %typeB, align 8, !tbaa !3
  %arrayidx161 = getelementptr inbounds i32* %83, i64 %idxprom159
  store i32 %60, i32* %arrayidx161, align 4, !tbaa !0
  %84 = load i32* %aj, align 4, !tbaa !0
  %idxprom162 = sext i32 %84 to i64
  %arrayidx164 = getelementptr inbounds i32* %81, i64 %idxprom162
  store i32 %61, i32* %arrayidx164, align 4, !tbaa !0
  %85 = load i32* %aj, align 4, !tbaa !0
  %idxprom165 = sext i32 %85 to i64
  %arrayidx167 = getelementptr inbounds i32* %83, i64 %idxprom165
  store i32 %62, i32* %arrayidx167, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 72, i8* %26) #3
  br label %if.end185

if.else168:                                       ; preds = %lor.lhs.false
  %86 = load [3 x float]** %shift_vec170, align 8, !tbaa !3
  %arraydecay172 = getelementptr inbounds [3 x float]* %86, i64 0, i64 0
  %87 = load [3 x float]** %fshift173, align 8, !tbaa !3
  %arraydecay175 = getelementptr inbounds [3 x float]* %87, i64 0, i64 0
  %88 = load float** %chargeA180, align 8, !tbaa !3
  %89 = load i32** %typeA181, align 8, !tbaa !3
  %90 = load i32* %ntype182, align 4, !tbaa !0
  %91 = load float** @do_14.nbfp14, align 8, !tbaa !3
  %92 = load float* %tabscale183, align 4, !tbaa !4
  %93 = load float** %coulvdw14tab184, align 8, !tbaa !3
  call void @inl3300(i32 1, i32* %ai, i32* %arraydecay169, i32* %aj, i32* %shift14, float* %arraydecay172, float* %arraydecay175, i32* %gid, float* %arraydecay177, float* %arraydecay179, float* %88, float %mul, float* %egcoul, i32* %89, i32 %90, float* %91, float* %egnb, float %92, float* %93) #4
  br label %if.end185

if.end185:                                        ; preds = %if.else168, %if.end155
  %94 = load i32* %ai, align 4, !tbaa !0
  %idxprom186 = sext i32 %94 to i64
  %arraydecay188 = getelementptr inbounds [3 x float]* %f, i64 %idxprom186, i64 0
  %95 = load float* %arraydecay188, align 4, !tbaa !4
  %sub.i312 = fsub float %95, %36
  %arrayidx2.i313 = getelementptr inbounds [3 x float]* %f, i64 %idxprom186, i64 1
  %96 = load float* %arrayidx2.i313, align 4, !tbaa !4
  %sub4.i315 = fsub float %96, %37
  %arrayidx5.i316 = getelementptr inbounds [3 x float]* %f, i64 %idxprom186, i64 2
  %97 = load float* %arrayidx5.i316, align 4, !tbaa !4
  %sub7.i = fsub float %97, %38
  %98 = load i32* %start, align 4, !tbaa !0
  %sub = sub nsw i32 %94, %98
  %idxprom191 = sext i32 %sub to i64
  %99 = load [3 x i32]** %ishift, align 8, !tbaa !3
  %arraydecay193 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom191, i64 0
  %100 = load i32* %aj, align 4, !tbaa !0
  %sub195 = sub nsw i32 %100, %98
  %idxprom196 = sext i32 %sub195 to i64
  %arraydecay199 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom196, i64 0
  %101 = load i32* %arraydecay193, align 4, !tbaa !0
  %102 = load i32* %arraydecay199, align 4, !tbaa !0
  %arrayidx2.i332 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom191, i64 1
  %103 = load i32* %arrayidx2.i332, align 4, !tbaa !0
  %arrayidx3.i333 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom196, i64 1
  %104 = load i32* %arrayidx3.i333, align 4, !tbaa !0
  %arrayidx5.i335 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom191, i64 2
  %105 = load i32* %arrayidx5.i335, align 4, !tbaa !0
  %arrayidx6.i336 = getelementptr inbounds [3 x i32]* %99, i64 %idxprom196, i64 2
  %106 = load i32* %arrayidx6.i336, align 4, !tbaa !0
  %sub7.i337 = sub nsw i32 %105, %106
  %107 = mul i32 %sub7.i337, 3
  %sub4.i334 = add i32 %103, 3
  %mul203 = sub i32 %sub4.i334, %104
  %add205 = add i32 %mul203, %107
  %108 = mul i32 %add205, 3
  %mul207 = add i32 %101, 4
  %add209 = sub i32 %mul207, %102
  %add210 = add i32 %add209, %108
  %idxprom211 = sext i32 %add210 to i64
  %109 = load [3 x float]** %fshift173, align 8, !tbaa !3
  %arraydecay214 = getelementptr inbounds [3 x float]* %109, i64 %idxprom211, i64 0
  %110 = load float* %arraydecay214, align 4, !tbaa !4
  %add.i326 = fadd float %sub.i312, %110
  %arrayidx2.i327 = getelementptr inbounds [3 x float]* %109, i64 %idxprom211, i64 1
  %111 = load float* %arrayidx2.i327, align 4, !tbaa !4
  %add4.i = fadd float %sub4.i315, %111
  %arrayidx5.i329 = getelementptr inbounds [3 x float]* %109, i64 %idxprom211, i64 2
  %112 = load float* %arrayidx5.i329, align 4, !tbaa !4
  %add7.i = fadd float %sub7.i, %112
  store float %add.i326, float* %arraydecay214, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i327, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i329, align 4, !tbaa !4
  %arraydecay218 = getelementptr inbounds [3 x float]* %109, i64 13, i64 0
  %113 = load float* %arraydecay218, align 4, !tbaa !4
  %sub.i319 = fsub float %113, %sub.i312
  %arrayidx2.i320 = getelementptr inbounds [3 x float]* %109, i64 13, i64 1
  %114 = load float* %arrayidx2.i320, align 4, !tbaa !4
  %sub4.i322 = fsub float %114, %sub4.i315
  %arrayidx5.i323 = getelementptr inbounds [3 x float]* %109, i64 13, i64 2
  %115 = load float* %arrayidx5.i323, align 4, !tbaa !4
  %sub7.i325 = fsub float %115, %sub7.i
  store float %sub.i319, float* %arraydecay218, align 4, !tbaa !4
  store float %sub4.i322, float* %arrayidx2.i320, align 4, !tbaa !4
  store float %sub7.i325, float* %arrayidx5.i323, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end185, %if.then34
  %add.ptr221 = getelementptr inbounds i32* %iatom.0348, i64 3
  %cmp7 = icmp ult i32* %add.ptr221, %add.ptr
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end5
  ret float 0.000000e+00
}

; Function Attrs: optsize
declare void @pr_rvec(%struct._IO_FILE*, i32, i8*, float*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
