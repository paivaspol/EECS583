; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/pull.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@pull.x_s = internal unnamed_addr global [3 x float]* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"x_s\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/pull.c\00", align 1
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [25 x i8] c"\0ACalling correct_t0_pbc\0A\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"dynacom: %8.3f%8.3f%8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"Calling calc_running_com\0A\00", align 1
@.str5 = private unnamed_addr constant [27 x i8] c"I      :%9.6f %9.6f %9.6f\0A\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"dyna xref: unconstr. com:%9.6f %9.6f %9.6f\0A\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"xref: unconstr. com:%9.6f %9.6f %9.6f\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"ref: %8.3f %8.3f %8.3f\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"ref_t0: %8.3f %8.3f %8.3f\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"undetermined runtype\00", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"Group %d - DR: %f %f %f\0A\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"force: %f %f %f\0A\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"curr pos: %f %f %f\0A\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"ref pos: %f %f %f\0A\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"ref_dr\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"rjnew\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"dr\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"rinew\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str20 = private unnamed_addr constant [24 x i8] c"group %d, iteration %d\0A\00", align 1
@.str21 = private unnamed_addr constant [63 x i8] c"\0Aax^2+bx+c=0: a=%e b=%e c=%e\0Ax1=%e x2=%e sum:%e,%e, lambda:%e\0A\00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"Direction: %f\0A\00", align 1
@.str23 = private unnamed_addr constant [100 x i8] c"cur. i:%f %f %f j:%f %f %f d: %f\0Aref. i:%f %f %f j:%f %f %f d: %f\0Acor. i:%f %f %f j:%f %f %f d: %f\0A\00", align 1
@.str24 = private unnamed_addr constant [61 x i8] c"NOT CONVERGED YET: Group %d (%s):d_ref = %f, current d = %f\0A\00", align 1
@.str25 = private unnamed_addr constant [39 x i8] c"Too many iterations for constraint run\00", align 1
@.str26 = private unnamed_addr constant [31 x i8] c"Group %i: correction %e %e %e\0A\00", align 1
@.str27 = private unnamed_addr constant [34 x i8] c"Dyna grp %i: correction %e %e %e\0A\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"Reference: correction %e %e %e\0A\00", align 1
@do_start.nout = internal unnamed_addr global i32 0, align 4
@.str29 = private unnamed_addr constant [46 x i8] c"Group %d goal:%8.3f%8.3f%8.3f from reference\0A\00", align 1
@.str30 = private unnamed_addr constant [28 x i8] c"To go:%10.2e %10.2e %10.2e\0A\00", align 1
@.str31 = private unnamed_addr constant [38 x i8] c"New target position: %8.3f%8.3f%8.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @pull(%struct.t_pull* %pull, [3 x float]* %x, [3 x float]* %f, [3 x float]* %box, %struct.t_topology* %top, float %dt, i32 %step, i32 %natoms, %struct.t_mdatoms* %md) #0 {
entry:
  %unc_ij.i = alloca [3 x float], align 4
  %ref_ij.i = alloca [3 x float], align 4
  %tmp.i = alloca [3 x float], align 4
  %tmp2.i = alloca [3 x float], align 4
  %tmp3.i = alloca [3 x float], align 4
  %dr.i = alloca [3 x float], align 4
  %cmp = icmp eq [3 x float]* %f, null
  %0 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  %tobool = icmp eq [3 x float]* %0, null
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %1 = load i32* %nr, align 4, !tbaa !3
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 554, i32 %1, i32 12) #4
  %2 = bitcast i8* %call to [3 x float]*
  store [3 x float]* %2, [3 x float]** @pull.x_s, align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %3 = phi [3 x float]* [ %2, %if.then ], [ %0, %entry ]
  %4 = load i32* %nr, align 4, !tbaa !3
  %cmp2717 = icmp sgt i32 %4, 0
  br i1 %cmp2717, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %for.body ], [ 0, %for.cond.preheader ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv773, i64 0
  %arraydecay6 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv773, i64 0
  %5 = load float* %arraydecay, align 4, !tbaa !4
  store float %5, float* %arraydecay6, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv773, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv773, i64 1
  store float %6, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv773, i64 2
  %7 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv773, i64 2
  store float %7, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next774 = add i64 %indvars.iv773, 1
  %8 = trunc i64 %indvars.iv.next774 to i32
  %cmp2 = icmp slt i32 %8, %4
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %runtype = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  %9 = load i32* %runtype, align 4, !tbaa !1
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb29
    i32 2, label %sw.bb69
    i32 3, label %sw.bb284
    i32 4, label %sw.bb311
  ]

sw.bb:                                            ; preds = %for.end
  br i1 %cmp, label %sw.epilog, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %sw.bb
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %10 = load i32* %n, align 4, !tbaa !3
  %cmp11665 = icmp sgt i32 %10, 0
  br i1 %cmp11665, label %for.body13.lr.ph, label %for.end27.thread

for.end27.thread:                                 ; preds = %for.cond9.preheader
  %11 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11)
  br label %do_afm.exit

for.body13.lr.ph:                                 ; preds = %for.cond9.preheader
  %ngx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %12 = phi [3 x float]* [ %3, %for.body13.lr.ph ], [ %.pre776, %for.body13.for.body13_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next, %for.body13.for.body13_crit_edge ]
  %13 = load i32** %ngx, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %13, i64 %indvars.iv
  %14 = load i32* %arrayidx16, align 4, !tbaa !3
  %15 = load i32*** %idx, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32** %15, i64 %indvars.iv
  %16 = load i32** %arrayidx19, align 8, !tbaa !0
  %17 = load [3 x float]** %x_unc, align 8, !tbaa !0
  %arraydecay23 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv, i64 0
  %call24 = call float @calc_com([3 x float]* %12, i32 %14, i32* %16, %struct.t_mdatoms* %md, float* %arraydecay23, [3 x float]* %box) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = load i32* %n, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %19, %18
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.end27

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  %.pre776 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  br label %for.body13

for.end27:                                        ; preds = %for.body13
  %20 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %20)
  %cmp200.i = icmp sgt i32 %18, 0
  br i1 %cmp200.i, label %for.cond2.preheader.lr.ph.i, label %do_afm.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.end27
  %spring.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  %x_unc.i549 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %arraydecay28.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %arrayidx2.i177.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %arrayidx5.i179.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %k.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  %f58.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %ngx.i550 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %dir.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %rate.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  %idx.i551 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %massT.i552 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %tmass.i553 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc121.i, %for.cond2.preheader.lr.ph.i
  %indvars.iv214.i = phi i64 [ 0, %for.cond2.preheader.lr.ph.i ], [ %indvars.iv.next215.i, %for.inc121.i ]
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.end32.i.while.cond.preheader.i_crit_edge, %for.cond2.preheader.i
  %indvars.iv.i554 = phi i64 [ 2, %for.cond2.preheader.i ], [ %indvars.iv.next.i566, %while.end32.i.while.cond.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.i554
  %21 = load float* %arrayidx.i, align 4, !tbaa !4
  %conv181.i = fpext float %21 to double
  %arrayidx7.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554
  %arrayidx8.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554, i64 %indvars.iv.i554
  %22 = load float* %arrayidx8.i, align 4, !tbaa !4
  %conv9182.i = fpext float %22 to double
  %mul183.i = fmul double %conv9182.i, 5.000000e-01
  %cmp10184.i = fcmp ogt double %conv181.i, %mul183.i
  br i1 %cmp10184.i, label %while.body.lr.ph.i, label %while.cond15.loopexit.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %arraydecay14.i = getelementptr inbounds [3 x float]* %arrayidx7.i, i64 0, i64 0
  %23 = load float* %arraydecay14.i, align 4, !tbaa !4
  %arrayidx3.i.i555 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554, i64 1
  %24 = load float* %arrayidx3.i.i555, align 4, !tbaa !4
  %arrayidx6.i.i556 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554, i64 2
  %25 = load float* %arrayidx6.i.i556, align 4, !tbaa !4
  %.pre221.i = load float* %arraydecay28.i, align 4, !tbaa !4
  %.pre222.i = load float* %arrayidx2.i177.i, align 4, !tbaa !4
  %.pre223.i = load float* %arrayidx5.i179.i, align 4, !tbaa !4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %26 = phi float [ %.pre223.i, %while.body.lr.ph.i ], [ %sub7.i.i559, %while.body.i ]
  %27 = phi float [ %.pre222.i, %while.body.lr.ph.i ], [ %sub4.i.i558, %while.body.i ]
  %28 = phi float [ %.pre221.i, %while.body.lr.ph.i ], [ %sub.i.i557, %while.body.i ]
  %sub.i.i557 = fsub float %28, %23
  %sub4.i.i558 = fsub float %27, %24
  %sub7.i.i559 = fsub float %26, %25
  store float %sub.i.i557, float* %arraydecay28.i, align 4, !tbaa !4
  store float %sub4.i.i558, float* %arrayidx2.i177.i, align 4, !tbaa !4
  store float %sub7.i.i559, float* %arrayidx5.i179.i, align 4, !tbaa !4
  %29 = load float* %arrayidx.i, align 4, !tbaa !4
  %conv.i560 = fpext float %29 to double
  %cmp10.i = fcmp ogt double %conv.i560, %mul183.i
  br i1 %cmp10.i, label %while.body.i, label %while.cond15.loopexit.i

while.cond15.loopexit.i:                          ; preds = %while.body.i, %while.cond.preheader.i
  %30 = phi float [ %21, %while.cond.preheader.i ], [ %29, %while.body.i ]
  %conv18188.i = fpext float %30 to double
  %mul24190.i = fmul double %conv9182.i, -5.000000e-01
  %cmp25191.i = fcmp olt double %conv18188.i, %mul24190.i
  br i1 %cmp25191.i, label %while.body27.lr.ph.i, label %while.end32.i

while.body27.lr.ph.i:                             ; preds = %while.cond15.loopexit.i
  %arraydecay31.i = getelementptr inbounds [3 x float]* %arrayidx7.i, i64 0, i64 0
  %arrayidx3.i178.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554, i64 1
  %arrayidx6.i180.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i554, i64 2
  %.pre.i561 = load float* %arraydecay28.i, align 4, !tbaa !4
  %.pre216.i = load float* %arraydecay31.i, align 4, !tbaa !4
  %.pre217.i = load float* %arrayidx2.i177.i, align 4, !tbaa !4
  %.pre218.i = load float* %arrayidx3.i178.i, align 4, !tbaa !4
  %.pre219.i = load float* %arrayidx5.i179.i, align 4, !tbaa !4
  %.pre220.i = load float* %arrayidx6.i180.i, align 4, !tbaa !4
  br label %while.body27.i

while.body27.i:                                   ; preds = %while.body27.i, %while.body27.lr.ph.i
  %31 = phi float [ %.pre219.i, %while.body27.lr.ph.i ], [ %add7.i.i564, %while.body27.i ]
  %32 = phi float [ %.pre217.i, %while.body27.lr.ph.i ], [ %add4.i.i563, %while.body27.i ]
  %33 = phi float [ %.pre.i561, %while.body27.lr.ph.i ], [ %add.i.i562, %while.body27.i ]
  %add.i.i562 = fadd float %.pre216.i, %33
  %add4.i.i563 = fadd float %.pre218.i, %32
  %add7.i.i564 = fadd float %.pre220.i, %31
  store float %add.i.i562, float* %arraydecay28.i, align 4, !tbaa !4
  store float %add4.i.i563, float* %arrayidx2.i177.i, align 4, !tbaa !4
  store float %add7.i.i564, float* %arrayidx5.i179.i, align 4, !tbaa !4
  %34 = load float* %arrayidx.i, align 4, !tbaa !4
  %conv18.i = fpext float %34 to double
  %cmp25.i = fcmp olt double %conv18.i, %mul24190.i
  br i1 %cmp25.i, label %while.body27.i, label %while.end32.i

while.end32.i:                                    ; preds = %while.body27.i, %while.cond15.loopexit.i
  %arrayidx34.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.i554
  %35 = load float* %arrayidx34.i, align 4, !tbaa !4
  %36 = load [3 x float]** %spring.i, align 8, !tbaa !0
  %arrayidx39.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv214.i, i64 %indvars.iv.i554
  %37 = load float* %arrayidx39.i, align 4, !tbaa !4
  %38 = load [3 x float]** %x_unc.i549, align 8, !tbaa !0
  %arrayidx44.i = getelementptr inbounds [3 x float]* %38, i64 %indvars.iv214.i, i64 %indvars.iv.i554
  %39 = load float* %arrayidx44.i, align 4, !tbaa !4
  %sub.i = fsub float %37, %39
  %mul45.i565 = fmul float %35, %sub.i
  store float %mul45.i565, float* %arrayidx.i, align 4, !tbaa !4
  %40 = trunc i64 %indvars.iv.i554 to i32
  %cmp3.i = icmp sgt i32 %40, 0
  br i1 %cmp3.i, label %while.end32.i.while.cond.preheader.i_crit_edge, label %for.cond48.loopexit.i

while.end32.i.while.cond.preheader.i_crit_edge:   ; preds = %while.end32.i
  %indvars.iv.next.i566 = add i64 %indvars.iv.i554, -1
  br label %while.cond.preheader.i

for.cond48.loopexit.i:                            ; preds = %while.end32.i
  %41 = load [3 x float]** %f58.i, align 8, !tbaa !0
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.body51.i, %for.cond48.loopexit.i
  %indvars.iv202.i = phi i64 [ 0, %for.cond48.loopexit.i ], [ %indvars.iv.next203.i, %for.body51.i ]
  %42 = load float* %k.i, align 4, !tbaa !4
  %arrayidx53.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv202.i
  %43 = load float* %arrayidx53.i, align 4, !tbaa !4
  %mul54.i = fmul float %42, %43
  %arrayidx60.i = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv214.i, i64 %indvars.iv202.i
  store float %mul54.i, float* %arrayidx60.i, align 4, !tbaa !4
  %indvars.iv.next203.i = add i64 %indvars.iv202.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next203.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond63.loopexit.i, label %for.body51.i

for.cond63.loopexit.i:                            ; preds = %for.body51.i
  %44 = load i32** %ngx.i550, align 8, !tbaa !0
  %arrayidx66195.i = getelementptr inbounds i32* %44, i64 %indvars.iv214.i
  %45 = load i32* %arrayidx66195.i, align 4, !tbaa !3
  %cmp67196.i = icmp sgt i32 %45, 0
  br i1 %cmp67196.i, label %for.body69.lr.ph.i, label %for.cond101.loopexit.i

for.body69.lr.ph.i:                               ; preds = %for.cond63.loopexit.i
  %46 = load i32*** %idx.i551, align 8, !tbaa !0
  %arrayidx73.i = getelementptr inbounds i32** %46, i64 %indvars.iv214.i
  %47 = load i32** %arrayidx73.i, align 8, !tbaa !0
  %48 = load float** %massT.i552, align 8, !tbaa !0
  %49 = load float** %tmass.i553, align 8, !tbaa !0
  %arrayidx90.i = getelementptr inbounds float* %49, i64 %indvars.iv214.i
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.inc98.i, %for.body69.lr.ph.i
  %indvars.iv208.i = phi i64 [ 0, %for.body69.lr.ph.i ], [ %indvars.iv.next209.i, %for.inc98.i ]
  %arrayidx74.i = getelementptr inbounds i32* %47, i64 %indvars.iv208.i
  %50 = load i32* %arrayidx74.i, align 4, !tbaa !3
  %idxprom79.i = sext i32 %50 to i64
  %arrayidx80.i = getelementptr inbounds float* %48, i64 %idxprom79.i
  br label %for.body78.i

for.body78.i:                                     ; preds = %for.body78.i, %for.body69.i
  %indvars.iv204.i = phi i64 [ 0, %for.body69.i ], [ %indvars.iv.next205.i, %for.body78.i ]
  %51 = load float* %arrayidx80.i, align 4, !tbaa !4
  %arrayidx86.i = getelementptr inbounds [3 x float]* %41, i64 %indvars.iv214.i, i64 %indvars.iv204.i
  %52 = load float* %arrayidx86.i, align 4, !tbaa !4
  %mul87.i = fmul float %51, %52
  %53 = load float* %arrayidx90.i, align 4, !tbaa !4
  %div.i569 = fdiv float %mul87.i, %53
  %arrayidx94.i570 = getelementptr inbounds [3 x float]* %f, i64 %idxprom79.i, i64 %indvars.iv204.i
  %54 = load float* %arrayidx94.i570, align 4, !tbaa !4
  %add.i571 = fadd float %div.i569, %54
  store float %add.i571, float* %arrayidx94.i570, align 4, !tbaa !4
  %indvars.iv.next205.i = add i64 %indvars.iv204.i, 1
  %lftr.wideiv720 = trunc i64 %indvars.iv.next205.i to i32
  %exitcond721 = icmp eq i32 %lftr.wideiv720, 3
  br i1 %exitcond721, label %for.inc98.i, label %for.body78.i

for.inc98.i:                                      ; preds = %for.body78.i
  %indvars.iv.next209.i = add i64 %indvars.iv208.i, 1
  %lftr.wideiv722 = trunc i64 %indvars.iv.next209.i to i32
  %exitcond723 = icmp eq i32 %lftr.wideiv722, %45
  br i1 %exitcond723, label %for.cond101.loopexit.i, label %for.body69.i

for.cond101.loopexit.i:                           ; preds = %for.inc98.i, %for.cond63.loopexit.i
  %55 = load [3 x float]** %dir.i, align 8, !tbaa !0
  br label %for.body104.i

for.body104.i:                                    ; preds = %for.body104.i, %for.cond101.loopexit.i
  %indvars.iv210.i = phi i64 [ 0, %for.cond101.loopexit.i ], [ %indvars.iv.next211.i, %for.body104.i ]
  %arrayidx109.i = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv214.i, i64 %indvars.iv210.i
  %56 = load float* %arrayidx109.i, align 4, !tbaa !4
  %57 = load float* %rate.i, align 4, !tbaa !4
  %mul110.i = fmul float %56, %57
  %arrayidx116.i = getelementptr inbounds [3 x float]* %36, i64 %indvars.iv214.i, i64 %indvars.iv210.i
  %58 = load float* %arrayidx116.i, align 4, !tbaa !4
  %add117.i = fadd float %mul110.i, %58
  store float %add117.i, float* %arrayidx116.i, align 4, !tbaa !4
  %indvars.iv.next211.i = add i64 %indvars.iv210.i, 1
  %lftr.wideiv724 = trunc i64 %indvars.iv.next211.i to i32
  %exitcond725 = icmp eq i32 %lftr.wideiv724, 3
  br i1 %exitcond725, label %for.inc121.i, label %for.body104.i

for.inc121.i:                                     ; preds = %for.body104.i
  %indvars.iv.next215.i = add i64 %indvars.iv214.i, 1
  %lftr.wideiv726 = trunc i64 %indvars.iv.next215.i to i32
  %exitcond727 = icmp eq i32 %lftr.wideiv726, %18
  br i1 %exitcond727, label %do_afm.exit, label %for.cond2.preheader.i

do_afm.exit:                                      ; preds = %for.inc121.i, %for.end27.thread, %for.end27
  %59 = phi i8* [ %11, %for.end27.thread ], [ %20, %for.end27 ], [ %20, %for.inc121.i ]
  call void @llvm.lifetime.end(i64 12, i8* %59)
  call void @print_afm(%struct.t_pull* %pull, i32 %step) #4
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.end
  br i1 %cmp, label %sw.epilog, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %sw.bb29
  %n34 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %60 = load i32* %n34, align 4, !tbaa !3
  %cmp35673 = icmp sgt i32 %60, 0
  br i1 %cmp35673, label %for.body37.lr.ph, label %for.end54

for.body37.lr.ph:                                 ; preds = %for.cond32.preheader
  %ngx40 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx44 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %x_unc48 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %for.body37

for.body37:                                       ; preds = %for.body37, %for.body37.lr.ph
  %61 = phi [3 x float]* [ %3, %for.body37.lr.ph ], [ %.pre778, %for.body37 ]
  %indvars.iv735 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next736, %for.body37 ]
  %62 = load i32** %ngx40, align 8, !tbaa !0
  %arrayidx41 = getelementptr inbounds i32* %62, i64 %indvars.iv735
  %63 = load i32* %arrayidx41, align 4, !tbaa !3
  %64 = load i32*** %idx44, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32** %64, i64 %indvars.iv735
  %65 = load i32** %arrayidx45, align 8, !tbaa !0
  %66 = load [3 x float]** %x_unc48, align 8, !tbaa !0
  %arraydecay50 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv735, i64 0
  %call51 = call float @calc_com([3 x float]* %61, i32 %63, i32* %65, %struct.t_mdatoms* %md, float* %arraydecay50, [3 x float]* %box) #4
  %indvars.iv.next736 = add i64 %indvars.iv735, 1
  %67 = load i32* %n34, align 4, !tbaa !3
  %68 = trunc i64 %indvars.iv.next736 to i32
  %cmp35 = icmp slt i32 %68, %67
  %.pre778 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  br i1 %cmp35, label %for.body37, label %for.end54

for.end54:                                        ; preds = %for.body37, %for.cond32.preheader
  %69 = phi [3 x float]* [ %3, %for.cond32.preheader ], [ %.pre778, %for.body37 ]
  %bCyl = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %70 = load i32* %bCyl, align 4, !tbaa !3
  %tobool55 = icmp eq i32 %70, 0
  br i1 %tobool55, label %if.else, label %if.then56

if.then56:                                        ; preds = %for.end54
  call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %69, %struct.t_mdatoms* %md) #4
  br label %if.end67

if.else:                                          ; preds = %for.end54
  %ngx57 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %71 = load i32** %ngx57, align 8, !tbaa !0
  %72 = load i32* %71, align 4, !tbaa !3
  %idx60 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %73 = load i32*** %idx60, align 8, !tbaa !0
  %74 = load i32** %73, align 8, !tbaa !0
  %x_unc63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %75 = load [3 x float]** %x_unc63, align 8, !tbaa !0
  %arraydecay65 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0
  %call66 = call float @calc_com([3 x float]* %69, i32 %72, i32* %74, %struct.t_mdatoms* %md, float* %arraydecay65, [3 x float]* %box) #4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then56
  %76 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %76) #3
  %call.i574 = call fastcc i32 @check_convergence(%struct.t_pull* %pull) #4
  %bVerbose.i575 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %77 = load i32* %bVerbose.i575, align 4, !tbaa !3
  %tobool.i576 = icmp eq i32 %77, 0
  br i1 %tobool.i576, label %if.end.i585, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end67
  %78 = load i32* %n34, align 4, !tbaa !3
  %cmp276.i = icmp sgt i32 %78, 0
  br i1 %cmp276.i, label %for.body.lr.ph.i578, label %if.end.i585

for.body.lr.ph.i578:                              ; preds = %for.cond.preheader.i
  %xtarget.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  br label %for.body.i584

for.body.i584:                                    ; preds = %for.body.i584, %for.body.lr.ph.i578
  %indvars.iv288.i = phi i64 [ 0, %for.body.lr.ph.i578 ], [ %indvars.iv.next289.i, %for.body.i584 ]
  %79 = load [3 x float]** %xtarget.i, align 8, !tbaa !0
  %arraydecay.i579 = getelementptr inbounds [3 x float]* %79, i64 %indvars.iv288.i, i64 0
  %80 = load float* %arraydecay.i579, align 4, !tbaa !4
  %arrayidx2.i.i580 = getelementptr inbounds [3 x float]* %79, i64 %indvars.iv288.i, i64 1
  %81 = load float* %arrayidx2.i.i580, align 4, !tbaa !4
  %arrayidx4.i.i581 = getelementptr inbounds [3 x float]* %79, i64 %indvars.iv288.i, i64 2
  %82 = load float* %arrayidx4.i.i581, align 4, !tbaa !4
  %83 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv.i582 = fpext float %80 to double
  %conv9.i = fpext float %81 to double
  %conv11.i = fpext float %82 to double
  %84 = trunc i64 %indvars.iv288.i to i32
  %call12.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([46 x i8]* @.str29, i64 0, i64 0), i32 %84, double %conv.i582, double %conv9.i, double %conv11.i) #4
  %indvars.iv.next289.i = add i64 %indvars.iv288.i, 1
  %85 = load i32* %n34, align 4, !tbaa !3
  %86 = trunc i64 %indvars.iv.next289.i to i32
  %cmp.i583 = icmp slt i32 %86, %85
  br i1 %cmp.i583, label %for.body.i584, label %if.end.i585

if.end.i585:                                      ; preds = %for.body.i584, %for.cond.preheader.i, %if.end67
  %tobool13.i = icmp eq i32 %call.i574, 0
  br i1 %tobool13.i, label %for.cond15.preheader.i, label %if.end103.i

for.cond15.preheader.i:                           ; preds = %if.end.i585
  %87 = load i32* %n34, align 4, !tbaa !3
  %cmp18274.i = icmp sgt i32 %87, 0
  br i1 %cmp18274.i, label %for.body20.lr.ph.i, label %if.end103.i

for.body20.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %x_unc.i586 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %x_unc25.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %xtarget31.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  %arraydecay35.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %arrayidx9.i241.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %arrayidx10.i242.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %xlt_rate.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 11
  %ngx.i587 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx92.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %arrayidx41.i668 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.end85.i, %for.body20.lr.ph.i
  %indvars.iv286.i = phi i64 [ 0, %for.body20.lr.ph.i ], [ %indvars.iv.next287.i, %for.end85.i ]
  %88 = load [3 x float]** %x_unc.i586, align 8, !tbaa !0
  %arraydecay22.i = getelementptr inbounds [3 x float]* %88, i64 0, i64 0
  %89 = load [3 x float]** %x_unc25.i, align 8, !tbaa !0
  %arraydecay27.i = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv286.i, i64 0
  %90 = load float* %arraydecay22.i, align 4, !tbaa !4
  %91 = load float* %arraydecay27.i, align 4, !tbaa !4
  %sub.i.i588 = fsub float %90, %91
  %arrayidx2.i233.i = getelementptr inbounds [3 x float]* %88, i64 0, i64 1
  %92 = load float* %arrayidx2.i233.i, align 4, !tbaa !4
  %arrayidx3.i234.i = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv286.i, i64 1
  %93 = load float* %arrayidx3.i234.i, align 4, !tbaa !4
  %sub4.i.i589 = fsub float %92, %93
  %arrayidx5.i235.i = getelementptr inbounds [3 x float]* %88, i64 0, i64 2
  %94 = load float* %arrayidx5.i235.i, align 4, !tbaa !4
  %arrayidx6.i.i590 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv286.i, i64 2
  %95 = load float* %arrayidx6.i.i590, align 4, !tbaa !4
  %sub7.i.i591 = fsub float %94, %95
  %96 = load [3 x float]** %xtarget31.i, align 8, !tbaa !0
  %arraydecay33.i = getelementptr inbounds [3 x float]* %96, i64 %indvars.iv286.i, i64 0
  %97 = load float* %arraydecay33.i, align 4, !tbaa !4
  %add.i236.i = fadd float %sub.i.i588, %97
  %arrayidx2.i237.i = getelementptr inbounds [3 x float]* %96, i64 %indvars.iv286.i, i64 1
  %98 = load float* %arrayidx2.i237.i, align 4, !tbaa !4
  %add4.i.i592 = fadd float %sub4.i.i589, %98
  %arrayidx5.i239.i = getelementptr inbounds [3 x float]* %96, i64 %indvars.iv286.i, i64 2
  %99 = load float* %arrayidx5.i239.i, align 4, !tbaa !4
  %add7.i.i593 = fadd float %sub7.i.i591, %99
  store float %add4.i.i592, float* %arrayidx9.i241.i, align 4, !tbaa !4
  store float %add7.i.i593, float* %arrayidx10.i242.i, align 4, !tbaa !4
  %100 = load float* %arrayidx41.i668, align 4, !tbaa !4
  %mul.i594670 = fmul float %add.i236.i, %100
  store float %mul.i594670, float* %arraydecay35.i, align 4, !tbaa !4
  br label %for.body39.for.body39_crit_edge.i

for.body39.for.body39_crit_edge.i:                ; preds = %for.body39.for.body39_crit_edge.i.for.body39.for.body39_crit_edge.i_crit_edge, %for.body20.i
  %.pre.i595 = phi float [ %add4.i.i592, %for.body20.i ], [ %.pre.i595.pre, %for.body39.for.body39_crit_edge.i.for.body39.for.body39_crit_edge.i_crit_edge ]
  %indvars.iv.next281.i671 = phi i64 [ 1, %for.body20.i ], [ %indvars.iv.next281.i, %for.body39.for.body39_crit_edge.i.for.body39.for.body39_crit_edge.i_crit_edge ]
  %arrayidx43.phi.trans.insert.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next281.i671
  %arrayidx41.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.next281.i671
  %101 = load float* %arrayidx41.i, align 4, !tbaa !4
  %mul.i594 = fmul float %.pre.i595, %101
  store float %mul.i594, float* %arrayidx43.phi.trans.insert.i, align 4, !tbaa !4
  %indvars.iv.next281.i = add i64 %indvars.iv.next281.i671, 1
  %lftr.wideiv731 = trunc i64 %indvars.iv.next281.i to i32
  %exitcond732 = icmp eq i32 %lftr.wideiv731, 3
  br i1 %exitcond732, label %for.end48.i, label %for.body39.for.body39_crit_edge.i.for.body39.for.body39_crit_edge.i_crit_edge

for.body39.for.body39_crit_edge.i.for.body39.for.body39_crit_edge.i_crit_edge: ; preds = %for.body39.for.body39_crit_edge.i
  %arrayidx43.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next281.i
  %.pre.i595.pre = load float* %arrayidx43.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !4
  br label %for.body39.for.body39_crit_edge.i

for.end48.i:                                      ; preds = %for.body39.for.body39_crit_edge.i
  %102 = load float* %xlt_rate.i, align 4, !tbaa !4
  %103 = load float* %arraydecay35.i, align 4, !tbaa !4
  %mul.i256.i = fmul float %103, %103
  %104 = load float* %arrayidx9.i241.i, align 4, !tbaa !4
  %mul4.i258.i = fmul float %104, %104
  %add.i259.i = fadd float %mul.i256.i, %mul4.i258.i
  %105 = load float* %arrayidx10.i242.i, align 4, !tbaa !4
  %mul7.i261.i = fmul float %105, %105
  %add8.i262.i = fadd float %add.i259.i, %mul7.i261.i
  %conv9.i263.i = call float @sqrtf(float %add8.i262.i) #2
  %div.i596 = fdiv float %102, %conv9.i263.i
  %mul.i252.i = fmul float %103, %div.i596
  %mul3.i.i597 = fmul float %104, %div.i596
  %mul6.i.i598 = fmul float %105, %div.i596
  %106 = load i32* %bVerbose.i575, align 4, !tbaa !3
  %tobool54.i = icmp eq i32 %106, 0
  br i1 %tobool54.i, label %for.cond64.preheader.i, label %if.then55.i

if.then55.i:                                      ; preds = %for.end48.i
  %107 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv57.i = fpext float %103 to double
  %conv59.i = fpext float %104 to double
  %conv61.i = fpext float %105 to double
  %call62.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([28 x i8]* @.str30, i64 0, i64 0), double %conv57.i, double %conv59.i, double %conv61.i) #4
  br label %for.cond64.preheader.i

for.cond64.preheader.i:                           ; preds = %if.then55.i, %for.end48.i
  %108 = load i32** %ngx.i587, align 8, !tbaa !0
  %arrayidx67271.i = getelementptr inbounds i32* %108, i64 %indvars.iv286.i
  %109 = load i32* %arrayidx67271.i, align 4, !tbaa !3
  %cmp68272.i = icmp sgt i32 %109, 0
  %110 = load i32*** %idx92.i, align 8, !tbaa !0
  %arrayidx74.i599 = getelementptr inbounds i32** %110, i64 %indvars.iv286.i
  %111 = load i32** %arrayidx74.i599, align 8, !tbaa !0
  br i1 %cmp68272.i, label %for.body70.i, label %for.end85.i

for.body70.i:                                     ; preds = %for.cond64.preheader.i, %for.body70.i
  %indvars.iv284.i = phi i64 [ %indvars.iv.next285.i, %for.body70.i ], [ 0, %for.cond64.preheader.i ]
  %arrayidx75.i600 = getelementptr inbounds i32* %111, i64 %indvars.iv284.i
  %112 = load i32* %arrayidx75.i600, align 4, !tbaa !3
  %idxprom76.i = sext i32 %112 to i64
  %arraydecay78.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom76.i, i64 0
  %113 = load float* %arraydecay78.i, align 4, !tbaa !4
  %add.i243.i = fadd float %mul.i252.i, %113
  %arrayidx2.i244.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom76.i, i64 1
  %114 = load float* %arrayidx2.i244.i, align 4, !tbaa !4
  %add4.i246.i = fadd float %mul3.i.i597, %114
  %arrayidx5.i247.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom76.i, i64 2
  %115 = load float* %arrayidx5.i247.i, align 4, !tbaa !4
  %add7.i249.i = fadd float %mul6.i.i598, %115
  store float %add.i243.i, float* %arraydecay78.i, align 4, !tbaa !4
  store float %add4.i246.i, float* %arrayidx2.i244.i, align 4, !tbaa !4
  store float %add7.i249.i, float* %arrayidx5.i247.i, align 4, !tbaa !4
  %indvars.iv.next285.i = add i64 %indvars.iv284.i, 1
  %lftr.wideiv733 = trunc i64 %indvars.iv.next285.i to i32
  %exitcond734 = icmp eq i32 %lftr.wideiv733, %109
  br i1 %exitcond734, label %for.end85.i, label %for.body70.i

for.end85.i:                                      ; preds = %for.body70.i, %for.cond64.preheader.i
  %116 = load [3 x float]** %x_unc25.i, align 8, !tbaa !0
  %arraydecay98.i = getelementptr inbounds [3 x float]* %116, i64 %indvars.iv286.i, i64 0
  %call99.i = call float @calc_com([3 x float]* %x, i32 %109, i32* %111, %struct.t_mdatoms* %md, float* %arraydecay98.i, [3 x float]* %box) #4
  %indvars.iv.next287.i = add i64 %indvars.iv286.i, 1
  %117 = load i32* %n34, align 4, !tbaa !3
  %118 = trunc i64 %indvars.iv.next287.i to i32
  %cmp18.i601 = icmp slt i32 %118, %117
  br i1 %cmp18.i601, label %for.body20.i, label %if.end103.i

if.end103.i:                                      ; preds = %for.end85.i, %for.cond15.preheader.i, %if.end.i585
  %call104.i = call fastcc i32 @check_convergence(%struct.t_pull* %pull) #4
  %tobool105.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.i, label %do_start.exit, label %for.cond107.preheader.i

for.cond107.preheader.i:                          ; preds = %if.end103.i
  %119 = load i32* %n34, align 4, !tbaa !3
  %cmp110268.i = icmp sgt i32 %119, 0
  br i1 %cmp110268.i, label %for.cond113.preheader.lr.ph.i, label %for.end164.i

for.cond113.preheader.lr.ph.i:                    ; preds = %for.cond107.preheader.i
  %dir.i602 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %xlt_incr.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 13
  %xtarget133.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  br label %for.cond113.preheader.i

for.cond113.preheader.i:                          ; preds = %for.inc162.i, %for.cond113.preheader.lr.ph.i
  %indvars.iv278.i = phi i64 [ 0, %for.cond113.preheader.lr.ph.i ], [ %indvars.iv.next279.i, %for.inc162.i ]
  br label %for.body116.i

for.body116.i:                                    ; preds = %for.body116.i, %for.cond113.preheader.i
  %indvars.iv.i603 = phi i64 [ 0, %for.cond113.preheader.i ], [ %indvars.iv.next.i607, %for.body116.i ]
  %120 = load [3 x float]** %dir.i602, align 8, !tbaa !0
  %arrayidx121.i = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv278.i, i64 %indvars.iv.i603
  %121 = load float* %arrayidx121.i, align 4, !tbaa !4
  %122 = load float* %xlt_incr.i, align 4, !tbaa !4
  %mul122.i = fmul float %121, %122
  %arraydecay127.i = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv278.i, i64 0
  %123 = load float* %arraydecay127.i, align 4, !tbaa !4
  %mul.i.i604 = fmul float %123, %123
  %arrayidx2.i231.i = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv278.i, i64 1
  %124 = load float* %arrayidx2.i231.i, align 4, !tbaa !4
  %mul4.i.i = fmul float %124, %124
  %add.i.i605 = fadd float %mul.i.i604, %mul4.i.i
  %arrayidx5.i232.i = getelementptr inbounds [3 x float]* %120, i64 %indvars.iv278.i, i64 2
  %125 = load float* %arrayidx5.i232.i, align 4, !tbaa !4
  %mul7.i.i = fmul float %125, %125
  %add8.i.i = fadd float %add.i.i605, %mul7.i.i
  %conv9.i.i = call float @sqrtf(float %add8.i.i) #2
  %div129.i = fdiv float %mul122.i, %conv9.i.i
  %126 = load [3 x float]** %xtarget133.i, align 8, !tbaa !0
  %arrayidx135.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv278.i, i64 %indvars.iv.i603
  %127 = load float* %arrayidx135.i, align 4, !tbaa !4
  %add.i606 = fadd float %div129.i, %127
  store float %add.i606, float* %arrayidx135.i, align 4, !tbaa !4
  %indvars.iv.next.i607 = add i64 %indvars.iv.i603, 1
  %lftr.wideiv729 = trunc i64 %indvars.iv.next.i607 to i32
  %exitcond730 = icmp eq i32 %lftr.wideiv729, 3
  br i1 %exitcond730, label %for.end138.i, label %for.body116.i

for.end138.i:                                     ; preds = %for.body116.i
  %128 = load i32* %bVerbose.i575, align 4, !tbaa !3
  %tobool140.i = icmp eq i32 %128, 0
  br i1 %tobool140.i, label %for.inc162.i, label %if.then141.i

if.then141.i:                                     ; preds = %for.end138.i
  %129 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %arrayidx146.i610 = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv278.i, i64 0
  %130 = load float* %arrayidx146.i610, align 4, !tbaa !4
  %conv147.i = fpext float %130 to double
  %arrayidx152.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv278.i, i64 1
  %131 = load float* %arrayidx152.i, align 4, !tbaa !4
  %conv153.i = fpext float %131 to double
  %arrayidx158.i = getelementptr inbounds [3 x float]* %126, i64 %indvars.iv278.i, i64 2
  %132 = load float* %arrayidx158.i, align 4, !tbaa !4
  %conv159.i = fpext float %132 to double
  %call160.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([38 x i8]* @.str31, i64 0, i64 0), double %conv147.i, double %conv153.i, double %conv159.i) #4
  br label %for.inc162.i

for.inc162.i:                                     ; preds = %if.then141.i, %for.end138.i
  %indvars.iv.next279.i = add i64 %indvars.iv278.i, 1
  %133 = load i32* %n34, align 4, !tbaa !3
  %134 = trunc i64 %indvars.iv.next279.i to i32
  %cmp110.i = icmp slt i32 %134, %133
  br i1 %cmp110.i, label %for.cond113.preheader.i, label %for.end164.i

for.end164.i:                                     ; preds = %for.inc162.i, %for.cond107.preheader.i
  %135 = load i32* @do_start.nout, align 4, !tbaa !3
  %conv165.i = sitofp i32 %step to float
  %mul166.i = fmul float %conv165.i, %dt
  %div167.i = fdiv float %mul166.i, 1.000000e+03
  call void @dump_conf(%struct.t_pull* %pull, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, i32 %135, float %div167.i) #4
  %136 = load i32* @do_start.nout, align 4, !tbaa !3
  %inc168.i = add nsw i32 %136, 1
  store i32 %inc168.i, i32* @do_start.nout, align 4, !tbaa !3
  br label %do_start.exit

do_start.exit:                                    ; preds = %if.end103.i, %for.end164.i
  call void @llvm.lifetime.end(i64 12, i8* %76) #3
  call void @print_start(%struct.t_pull* %pull, i32 %step) #4
  br label %sw.epilog

sw.bb69:                                          ; preds = %for.end
  %reftype = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  %137 = load i32* %reftype, align 4, !tbaa !1
  switch i32 %137, label %for.cond81.preheader [
    i32 1, label %if.then75
    i32 3, label %if.then75
  ]

for.cond81.preheader:                             ; preds = %sw.bb69
  %ngx83 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %138 = load i32** %ngx83, align 8, !tbaa !0
  %139 = load i32* %138, align 4, !tbaa !3
  %cmp85712 = icmp sgt i32 %139, 0
  br i1 %cmp85712, label %for.body87.lr.ph, label %for.cond105.preheader

for.body87.lr.ph:                                 ; preds = %for.cond81.preheader
  %idx90 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %140 = load i32*** %idx90, align 8, !tbaa !0
  %141 = load i32** %140, align 8, !tbaa !0
  %x0 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %142 = load [3 x float]*** %x0, align 8, !tbaa !0
  %143 = load [3 x float]** %142, align 8, !tbaa !0
  br label %for.body87

if.then75:                                        ; preds = %sw.bb69, %sw.bb69
  %bVerbose = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %144 = load i32* %bVerbose, align 4, !tbaa !3
  %tobool76 = icmp eq i32 %144, 0
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.then75
  %145 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %146 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %145)
  %.pre775 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.then77
  %147 = phi [3 x float]* [ %3, %if.then75 ], [ %.pre775, %if.then77 ]
  call void @correct_t0_pbc(%struct.t_pull* %pull, [3 x float]* %147, %struct.t_mdatoms* %md, [3 x float]* %box) #4
  br label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.cond81.preheader, %for.body87, %if.end79
  %n107 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %148 = load i32* %n107, align 4, !tbaa !3
  %cmp108709 = icmp sgt i32 %148, 0
  br i1 %cmp108709, label %for.body110.lr.ph, label %for.end127

for.body110.lr.ph:                                ; preds = %for.cond105.preheader
  %ngx113 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx117 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %x_unc121 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %for.body110

for.body87:                                       ; preds = %for.body87.lr.ph, %for.body87
  %indvars.iv767 = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next768, %for.body87 ]
  %arrayidx92 = getelementptr inbounds i32* %141, i64 %indvars.iv767
  %149 = load i32* %arrayidx92, align 4, !tbaa !3
  %idxprom93 = sext i32 %149 to i64
  %arraydecay95 = getelementptr inbounds [3 x float]* %3, i64 %idxprom93, i64 0
  %arraydecay100 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv767, i64 0
  %150 = load float* %arraydecay95, align 4, !tbaa !4
  store float %150, float* %arraydecay100, align 4, !tbaa !4
  %arrayidx2.i611 = getelementptr inbounds [3 x float]* %3, i64 %idxprom93, i64 1
  %151 = load float* %arrayidx2.i611, align 4, !tbaa !4
  %arrayidx3.i612 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv767, i64 1
  store float %151, float* %arrayidx3.i612, align 4, !tbaa !4
  %arrayidx4.i613 = getelementptr inbounds [3 x float]* %3, i64 %idxprom93, i64 2
  %152 = load float* %arrayidx4.i613, align 4, !tbaa !4
  %arrayidx5.i614 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv767, i64 2
  store float %152, float* %arrayidx5.i614, align 4, !tbaa !4
  %indvars.iv.next768 = add i64 %indvars.iv767, 1
  %153 = trunc i64 %indvars.iv.next768 to i32
  %cmp85 = icmp slt i32 %153, %139
  br i1 %cmp85, label %for.body87, label %for.cond105.preheader

for.body110:                                      ; preds = %for.body110, %for.body110.lr.ph
  %indvars.iv765 = phi i64 [ 0, %for.body110.lr.ph ], [ %indvars.iv.next766, %for.body110 ]
  %154 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  %155 = load i32** %ngx113, align 8, !tbaa !0
  %arrayidx114 = getelementptr inbounds i32* %155, i64 %indvars.iv765
  %156 = load i32* %arrayidx114, align 4, !tbaa !3
  %157 = load i32*** %idx117, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i32** %157, i64 %indvars.iv765
  %158 = load i32** %arrayidx118, align 8, !tbaa !0
  %159 = load [3 x float]** %x_unc121, align 8, !tbaa !0
  %arraydecay123 = getelementptr inbounds [3 x float]* %159, i64 %indvars.iv765, i64 0
  %call124 = call float @calc_com([3 x float]* %154, i32 %156, i32* %158, %struct.t_mdatoms* %md, float* %arraydecay123, [3 x float]* %box) #4
  %indvars.iv.next766 = add i64 %indvars.iv765, 1
  %160 = load i32* %n107, align 4, !tbaa !3
  %161 = trunc i64 %indvars.iv.next766 to i32
  %cmp108 = icmp slt i32 %161, %160
  br i1 %cmp108, label %for.body110, label %for.end127

for.end127:                                       ; preds = %for.body110, %for.cond105.preheader
  %162 = phi i32 [ %148, %for.cond105.preheader ], [ %160, %for.body110 ]
  %bCyl128 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %163 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool129 = icmp eq i32 %163, 0
  br i1 %tobool129, label %if.then187, label %if.then130

if.then130:                                       ; preds = %for.end127
  %update = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 23
  %164 = load i32* %update, align 4, !tbaa !3
  %rem = srem i32 %step, %164
  %cmp131 = icmp eq i32 %rem, 0
  br i1 %cmp131, label %if.then133, label %for.cond135.preheader

for.cond135.preheader:                            ; preds = %if.then130
  %cmp138707 = icmp sgt i32 %162, 0
  br i1 %cmp138707, label %for.body140.lr.ph, label %if.end184

for.body140.lr.ph:                                ; preds = %for.cond135.preheader
  %x0142 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %ngx145 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %idx149 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %x_unc153 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %bVerbose157 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %for.body140

if.then133:                                       ; preds = %if.then130
  %165 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %165, %struct.t_mdatoms* %md) #4
  br label %if.end184

for.body140:                                      ; preds = %for.inc180, %for.body140.lr.ph
  %indvars.iv763 = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next764, %for.inc180 ]
  %166 = load [3 x float]*** %x0142, align 8, !tbaa !0
  %167 = load [3 x float]** %166, align 8, !tbaa !0
  %168 = load i32** %ngx145, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %168, i64 %indvars.iv763
  %169 = load i32* %arrayidx146, align 4, !tbaa !3
  %170 = load i32*** %idx149, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds i32** %170, i64 %indvars.iv763
  %171 = load i32** %arrayidx150, align 8, !tbaa !0
  %172 = load [3 x float]** %x_unc153, align 8, !tbaa !0
  %arraydecay155 = getelementptr inbounds [3 x float]* %172, i64 %indvars.iv763, i64 0
  %call156 = call float @calc_com2([3 x float]* %167, i32 %169, i32* %171, %struct.t_mdatoms* %md, float* %arraydecay155, [3 x float]* %box) #4
  %173 = load i32* %bVerbose157, align 4, !tbaa !3
  %tobool158 = icmp eq i32 %173, 0
  br i1 %tobool158, label %for.inc180, label %if.then159

if.then159:                                       ; preds = %for.body140
  %174 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %175 = load [3 x float]** %x_unc153, align 8, !tbaa !0
  %arrayidx164 = getelementptr inbounds [3 x float]* %175, i64 %indvars.iv763, i64 0
  %176 = load float* %arrayidx164, align 4, !tbaa !4
  %conv165 = fpext float %176 to double
  %arrayidx170 = getelementptr inbounds [3 x float]* %175, i64 %indvars.iv763, i64 1
  %177 = load float* %arrayidx170, align 4, !tbaa !4
  %conv171 = fpext float %177 to double
  %arrayidx176 = getelementptr inbounds [3 x float]* %175, i64 %indvars.iv763, i64 2
  %178 = load float* %arrayidx176, align 4, !tbaa !4
  %conv177 = fpext float %178 to double
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), double %conv165, double %conv171, double %conv177) #4
  br label %for.inc180

for.inc180:                                       ; preds = %for.body140, %if.then159
  %indvars.iv.next764 = add i64 %indvars.iv763, 1
  %179 = load i32* %n107, align 4, !tbaa !3
  %180 = trunc i64 %indvars.iv.next764 to i32
  %cmp138 = icmp slt i32 %180, %179
  br i1 %cmp138, label %for.body140, label %if.end184

if.end184:                                        ; preds = %for.cond135.preheader, %for.inc180, %if.then133
  %.pr = load i32* %bCyl128, align 4, !tbaa !3
  %tobool186 = icmp eq i32 %.pr, 0
  br i1 %tobool186, label %if.then187, label %if.end202

if.then187:                                       ; preds = %if.end184, %for.end127
  %x0189 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %181 = load [3 x float]*** %x0189, align 8, !tbaa !0
  %182 = load [3 x float]** %181, align 8, !tbaa !0
  %ngx192 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %183 = load i32** %ngx192, align 8, !tbaa !0
  %184 = load i32* %183, align 4, !tbaa !3
  %idx195 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %185 = load i32*** %idx195, align 8, !tbaa !0
  %186 = load i32** %185, align 8, !tbaa !0
  %x_unc198 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %187 = load [3 x float]** %x_unc198, align 8, !tbaa !0
  %arraydecay200 = getelementptr inbounds [3 x float]* %187, i64 0, i64 0
  %call201 = call float @calc_com2([3 x float]* %182, i32 %184, i32* %186, %struct.t_mdatoms* %md, float* %arraydecay200, [3 x float]* %box) #4
  br label %if.end202

if.end202:                                        ; preds = %if.end184, %if.then187
  %reflag = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %188 = load i32* %reflag, align 4, !tbaa !3
  %cmp203 = icmp sgt i32 %188, 1
  %bVerbose206 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br i1 %cmp203, label %if.then205, label %if.end211

if.then205:                                       ; preds = %if.end202
  %189 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool207 = icmp eq i32 %189, 0
  br i1 %tobool207, label %if.end210, label %if.then208

if.then208:                                       ; preds = %if.then205
  %190 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %191 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %190)
  br label %if.end210

if.end210:                                        ; preds = %if.then205, %if.then208
  call void @calc_running_com(%struct.t_pull* %pull) #4
  br label %if.end211

if.end211:                                        ; preds = %if.end202, %if.end210
  %192 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool213 = icmp eq i32 %192, 0
  br i1 %tobool213, label %if.end283, label %if.then214

if.then214:                                       ; preds = %if.end211
  %193 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool216 = icmp eq i32 %193, 0
  br i1 %tobool216, label %if.else265, label %for.cond218.preheader

for.cond218.preheader:                            ; preds = %if.then214
  %194 = load i32* %n107, align 4, !tbaa !3
  %cmp221705 = icmp sgt i32 %194, 0
  br i1 %cmp221705, label %for.body223.lr.ph, label %if.end283

for.body223.lr.ph:                                ; preds = %for.cond218.preheader
  %x_unc226 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %x_unc245 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  br label %for.body223

for.body223:                                      ; preds = %for.body223.lr.ph, %for.body223
  %indvars.iv761 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next762, %for.body223 ]
  %195 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %196 = load [3 x float]** %x_unc226, align 8, !tbaa !0
  %arrayidx228 = getelementptr inbounds [3 x float]* %196, i64 %indvars.iv761, i64 0
  %197 = load float* %arrayidx228, align 4, !tbaa !4
  %conv229 = fpext float %197 to double
  %arrayidx234 = getelementptr inbounds [3 x float]* %196, i64 %indvars.iv761, i64 1
  %198 = load float* %arrayidx234, align 4, !tbaa !4
  %conv235 = fpext float %198 to double
  %arrayidx240 = getelementptr inbounds [3 x float]* %196, i64 %indvars.iv761, i64 2
  %199 = load float* %arrayidx240, align 4, !tbaa !4
  %conv241 = fpext float %199 to double
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0), double %conv229, double %conv235, double %conv241) #4
  %200 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %201 = load [3 x float]** %x_unc245, align 8, !tbaa !0
  %arrayidx247 = getelementptr inbounds [3 x float]* %201, i64 %indvars.iv761, i64 0
  %202 = load float* %arrayidx247, align 4, !tbaa !4
  %conv248 = fpext float %202 to double
  %arrayidx253 = getelementptr inbounds [3 x float]* %201, i64 %indvars.iv761, i64 1
  %203 = load float* %arrayidx253, align 4, !tbaa !4
  %conv254 = fpext float %203 to double
  %arrayidx259 = getelementptr inbounds [3 x float]* %201, i64 %indvars.iv761, i64 2
  %204 = load float* %arrayidx259, align 4, !tbaa !4
  %conv260 = fpext float %204 to double
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %200, i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0), double %conv248, double %conv254, double %conv260) #4
  %indvars.iv.next762 = add i64 %indvars.iv761, 1
  %205 = load i32* %n107, align 4, !tbaa !3
  %206 = trunc i64 %indvars.iv.next762 to i32
  %cmp221 = icmp slt i32 %206, %205
  br i1 %cmp221, label %for.body223, label %if.end283

if.else265:                                       ; preds = %if.then214
  %207 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %x_unc267 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %208 = load [3 x float]** %x_unc267, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds [3 x float]* %208, i64 0, i64 0
  %209 = load float* %arrayidx269, align 4, !tbaa !4
  %conv270 = fpext float %209 to double
  %arrayidx274 = getelementptr inbounds [3 x float]* %208, i64 0, i64 1
  %210 = load float* %arrayidx274, align 4, !tbaa !4
  %conv275 = fpext float %210 to double
  %arrayidx279 = getelementptr inbounds [3 x float]* %208, i64 0, i64 2
  %211 = load float* %arrayidx279, align 4, !tbaa !4
  %conv280 = fpext float %211 to double
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([39 x i8]* @.str7, i64 0, i64 0), double %conv270, double %conv275, double %conv280) #4
  br label %if.end283

if.end283:                                        ; preds = %for.cond218.preheader, %for.body223, %if.end211, %if.else265
  %212 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %212) #3
  %213 = bitcast [3 x float]* %unc_ij.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %213) #3
  %214 = bitcast [3 x float]* %ref_ij.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %214) #3
  %215 = bitcast [3 x float]* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %215) #3
  %216 = bitcast [3 x float]* %tmp2.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %216) #3
  %217 = bitcast [3 x float]* %tmp3.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %217) #3
  %218 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool.i615 = icmp eq i32 %218, 0
  br i1 %tobool.i615, label %if.else.i, label %if.then.i617

if.then.i617:                                     ; preds = %if.end283
  %219 = load i32* %n107, align 4, !tbaa !3
  %call.i616 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 215, i32 %219, i32 12) #4
  %220 = load i32* %n107, align 4, !tbaa !3
  %call9.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 216, i32 %220, i32 12) #4
  br label %if.end.i618

if.else.i:                                        ; preds = %if.end283
  %call10.i = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 218, i32 1, i32 12) #4
  %call11.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 219, i32 1, i32 12) #4
  br label %if.end.i618

if.end.i618:                                      ; preds = %if.else.i, %if.then.i617
  %rjnew.0.in.i = phi i8* [ %call11.i, %if.else.i ], [ %call9.i, %if.then.i617 ]
  %ref_dr.0.in.i = phi i8* [ %call10.i, %if.else.i ], [ %call.i616, %if.then.i617 ]
  %ref_dr.0.i = bitcast i8* %ref_dr.0.in.i to [3 x float]*
  %rjnew.0.i = bitcast i8* %rjnew.0.in.i to [3 x float]*
  %221 = load i32* %n107, align 4, !tbaa !3
  %call14.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 221, i32 %221, i32 12) #4
  %222 = bitcast i8* %call14.i to [3 x float]*
  %223 = load i32* %n107, align 4, !tbaa !3
  %call17.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 222, i32 %223, i32 12) #4
  %224 = bitcast i8* %call17.i to [3 x float]*
  %225 = load i32* %n107, align 4, !tbaa !3
  %call20.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 223, i32 %225, i32 4) #4
  %226 = bitcast i8* %call20.i to float*
  %227 = load i32* %n107, align 4, !tbaa !3
  %cmp2519.i = icmp sgt i32 %227, 0
  br i1 %cmp2519.i, label %for.body.lr.ph.i620, label %for.end.i628

for.body.lr.ph.i620:                              ; preds = %if.end.i618
  %x_unc.i619 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %228 = load [3 x float]** %x_unc.i619, align 8, !tbaa !0
  br label %for.body.i627

for.body.i627:                                    ; preds = %for.body.i627, %for.body.lr.ph.i620
  %indvars.iv2566.i = phi i64 [ 0, %for.body.lr.ph.i620 ], [ %indvars.iv.next2567.i, %for.body.i627 ]
  %arraydecay.i621 = getelementptr inbounds [3 x float]* %228, i64 %indvars.iv2566.i, i64 0
  %arraydecay26.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2566.i, i64 0
  %229 = load float* %arraydecay.i621, align 4, !tbaa !4
  store float %229, float* %arraydecay26.i, align 4, !tbaa !4
  %arrayidx2.i.i622 = getelementptr inbounds [3 x float]* %228, i64 %indvars.iv2566.i, i64 1
  %230 = load float* %arrayidx2.i.i622, align 4, !tbaa !4
  %arrayidx3.i.i623 = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2566.i, i64 1
  store float %230, float* %arrayidx3.i.i623, align 4, !tbaa !4
  %arrayidx4.i.i624 = getelementptr inbounds [3 x float]* %228, i64 %indvars.iv2566.i, i64 2
  %231 = load float* %arrayidx4.i.i624, align 4, !tbaa !4
  %arrayidx5.i.i625 = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2566.i, i64 2
  store float %231, float* %arrayidx5.i.i625, align 4, !tbaa !4
  %indvars.iv.next2567.i = add i64 %indvars.iv2566.i, 1
  %lftr.wideiv759 = trunc i64 %indvars.iv.next2567.i to i32
  %exitcond760 = icmp eq i32 %lftr.wideiv759, %227
  br i1 %exitcond760, label %for.end.i628, label %for.body.i627

for.end.i628:                                     ; preds = %for.body.i627, %if.end.i618
  %232 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool28.i = icmp eq i32 %232, 0
  br i1 %tobool28.i, label %if.else45.i, label %for.cond30.preheader.i

for.cond30.preheader.i:                           ; preds = %for.end.i628
  br i1 %cmp2519.i, label %for.body34.lr.ph.i, label %while.cond.preheader.loopexit.i

for.body34.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %x_unc36.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %233 = load [3 x float]** %x_unc36.i, align 8, !tbaa !0
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i, %for.body34.lr.ph.i
  %indvars.iv2564.i = phi i64 [ 0, %for.body34.lr.ph.i ], [ %indvars.iv.next2565.i, %for.body34.i ]
  %arraydecay38.i = getelementptr inbounds [3 x float]* %233, i64 %indvars.iv2564.i, i64 0
  %arraydecay41.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2564.i, i64 0
  %234 = load float* %arraydecay38.i, align 4, !tbaa !4
  store float %234, float* %arraydecay41.i, align 4, !tbaa !4
  %arrayidx2.i1962.i = getelementptr inbounds [3 x float]* %233, i64 %indvars.iv2564.i, i64 1
  %235 = load float* %arrayidx2.i1962.i, align 4, !tbaa !4
  %arrayidx3.i1963.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2564.i, i64 1
  store float %235, float* %arrayidx3.i1963.i, align 4, !tbaa !4
  %arrayidx4.i1964.i = getelementptr inbounds [3 x float]* %233, i64 %indvars.iv2564.i, i64 2
  %236 = load float* %arrayidx4.i1964.i, align 4, !tbaa !4
  %arrayidx5.i1965.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2564.i, i64 2
  store float %236, float* %arrayidx5.i1965.i, align 4, !tbaa !4
  %indvars.iv.next2565.i = add i64 %indvars.iv2564.i, 1
  %lftr.wideiv757 = trunc i64 %indvars.iv.next2565.i to i32
  %exitcond758 = icmp eq i32 %lftr.wideiv757, %227
  br i1 %exitcond758, label %while.cond.preheader.loopexit.i, label %for.body34.i

if.else45.i:                                      ; preds = %for.end.i628
  %x_unc47.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %237 = load [3 x float]** %x_unc47.i, align 8, !tbaa !0
  %arraydecay49.i = getelementptr inbounds [3 x float]* %237, i64 0, i64 0
  %arraydecay51.i630 = bitcast i8* %rjnew.0.in.i to float*
  %238 = load float* %arraydecay49.i, align 4, !tbaa !4
  store float %238, float* %arraydecay51.i630, align 4, !tbaa !4
  %arrayidx2.i1990.i = getelementptr inbounds [3 x float]* %237, i64 0, i64 1
  %239 = load float* %arrayidx2.i1990.i, align 4, !tbaa !4
  %arrayidx3.i1991.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 4
  %240 = bitcast i8* %arrayidx3.i1991.i to float*
  store float %239, float* %240, align 4, !tbaa !4
  %arrayidx4.i1992.i = getelementptr inbounds [3 x float]* %237, i64 0, i64 2
  %241 = load float* %arrayidx4.i1992.i, align 4, !tbaa !4
  %arrayidx5.i1993.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 8
  %242 = bitcast i8* %arrayidx5.i1993.i to float*
  store float %241, float* %242, align 4, !tbaa !4
  br label %while.cond.preheader.i632

while.cond.preheader.loopexit.i:                  ; preds = %for.body34.i, %for.cond30.preheader.i
  %arraydecay928.pre.i = bitcast i8* %rjnew.0.in.i to float*
  %arrayidx2.i2083.pre.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 4
  %.pre2598.i = bitcast i8* %arrayidx2.i2083.pre.i to float*
  %arrayidx5.i2086.pre.i = getelementptr inbounds i8* %rjnew.0.in.i, i64 8
  %.pre2599.i = bitcast i8* %arrayidx5.i2086.pre.i to float*
  br label %while.cond.preheader.i632

while.cond.preheader.i632:                        ; preds = %while.cond.preheader.loopexit.i, %if.else45.i
  %.pre-phi2600.i = phi float* [ %.pre2599.i, %while.cond.preheader.loopexit.i ], [ %242, %if.else45.i ]
  %.pre-phi.i = phi float* [ %.pre2598.i, %while.cond.preheader.loopexit.i ], [ %240, %if.else45.i ]
  %arraydecay928.pre-phi.i = phi float* [ %arraydecay928.pre.i, %while.cond.preheader.loopexit.i ], [ %arraydecay51.i630, %if.else45.i ]
  %grps.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  %arraydecay1055.i = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 0
  %arrayidx2.i1995.i = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 1
  %arrayidx5.i1998.i = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 2
  %arraydecay1058.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 0
  %arrayidx2.i1983.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 1
  %arrayidx5.i1986.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 2
  %x_ref934.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %x_ref939.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %x_ref917.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %constr_tol.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 15
  %x_con96.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %x_con101.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %arraydecay104.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %arrayidx9.i2197.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %arrayidx10.i2198.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %x_con.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %tmass.i631 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %tmass263.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 5
  %243 = fmul float %dt, %dt
  %mul335.i = fsub float -0.000000e+00, %243
  %conv336.i = fpext float %mul335.i to double
  %conv350.i = fpext float %243 to double
  %arraydecay390.i = bitcast i8* %ref_dr.0.in.i to float*
  %arrayidx4.i2381.i = getelementptr inbounds i8* %ref_dr.0.in.i, i64 4
  %244 = bitcast i8* %arrayidx4.i2381.i to float*
  %arrayidx7.i2384.i = getelementptr inbounds i8* %ref_dr.0.in.i, i64 8
  %245 = bitcast i8* %arrayidx7.i2384.i to float*
  %tmass354.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %arraydecay437.i = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 0
  %arrayidx9.i2345.i = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 1
  %arrayidx10.i2346.i = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 2
  %arraydecay443.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 0
  %arrayidx9.i2336.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 1
  %arrayidx10.i2337.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 2
  %arraydecay450.i = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 0
  %arrayidx9.i2327.i = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 1
  %arrayidx10.i2328.i = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 2
  br i1 %cmp2519.i, label %for.body59.i.preheader, label %if.end1063.thread.i

for.body59.i.preheader:                           ; preds = %while.cond.preheader.i632, %if.end1063.for.cond55.preheader_crit_edge.i
  %n.02516.i703 = phi i32 [ %inc1064.i, %if.end1063.for.cond55.preheader_crit_edge.i ], [ 0, %while.cond.preheader.i632 ]
  br label %for.body59.i

for.body59.i:                                     ; preds = %for.inc896.i, %for.body59.i.preheader
  %indvars.iv2558.i = phi i64 [ 0, %for.body59.i.preheader ], [ %indvars.iv.next2559.i, %for.inc896.i ]
  %246 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool60.i = icmp eq i32 %246, 0
  br i1 %tobool60.i, label %if.end63.i, label %if.then61.i

if.then61.i:                                      ; preds = %for.body59.i
  %247 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %248 = trunc i64 %indvars.iv2558.i to i32
  %call62.i633 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([24 x i8]* @.str20, i64 0, i64 0), i32 %248, i32 %n.02516.i703) #4
  br label %if.end63.i

if.end63.i:                                       ; preds = %for.body59.i, %if.then61.i
  %249 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool65.i = icmp eq i32 %249, 0
  br i1 %tobool65.i, label %if.else94.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end63.i
  %250 = load [3 x float]** %x_con.i, align 8, !tbaa !0
  %arraydecay70.i = getelementptr inbounds [3 x float]* %250, i64 %indvars.iv2558.i, i64 0
  %251 = load [3 x float]** %x_con101.i, align 8, !tbaa !0
  %arraydecay75.i = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv2558.i, i64 0
  %252 = load float* %arraydecay70.i, align 4, !tbaa !4
  %253 = load float* %arraydecay75.i, align 4, !tbaa !4
  %sub.i2002.i = fsub float %252, %253
  %arrayidx2.i2003.i = getelementptr inbounds [3 x float]* %250, i64 %indvars.iv2558.i, i64 1
  %254 = load float* %arrayidx2.i2003.i, align 4, !tbaa !4
  %arrayidx3.i2004.i = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv2558.i, i64 1
  %255 = load float* %arrayidx3.i2004.i, align 4, !tbaa !4
  %sub4.i2005.i = fsub float %254, %255
  %arrayidx5.i2006.i = getelementptr inbounds [3 x float]* %250, i64 %indvars.iv2558.i, i64 2
  %256 = load float* %arrayidx5.i2006.i, align 4, !tbaa !4
  %arrayidx6.i2007.i = getelementptr inbounds [3 x float]* %251, i64 %indvars.iv2558.i, i64 2
  %257 = load float* %arrayidx6.i2007.i, align 4, !tbaa !4
  %sub7.i2008.i = fsub float %256, %257
  store float %sub.i2002.i, float* %arraydecay104.i, align 4, !tbaa !4
  store float %sub4.i2005.i, float* %arrayidx9.i2197.i, align 4, !tbaa !4
  store float %sub7.i2008.i, float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %arraydecay79.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 0
  %arraydecay82.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %258 = load float* %arraydecay79.i, align 4, !tbaa !4
  %259 = load float* %arraydecay82.i, align 4, !tbaa !4
  %sub.i2019.i = fsub float %258, %259
  %arrayidx2.i2020.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 1
  %260 = load float* %arrayidx2.i2020.i, align 4, !tbaa !4
  %arrayidx3.i2021.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %261 = load float* %arrayidx3.i2021.i, align 4, !tbaa !4
  %sub4.i2022.i = fsub float %260, %261
  %arrayidx5.i2023.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 2
  %262 = load float* %arrayidx5.i2023.i, align 4, !tbaa !4
  %arrayidx6.i2024.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  %263 = load float* %arrayidx6.i2024.i, align 4, !tbaa !4
  %sub7.i2025.i = fsub float %262, %263
  store float %sub.i2019.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2022.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2025.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %264 = load [3 x float]** %x_ref917.i, align 8, !tbaa !0
  %arraydecay87.i = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv2558.i, i64 0
  %265 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay92.i = getelementptr inbounds [3 x float]* %265, i64 %indvars.iv2558.i, i64 0
  %266 = load float* %arraydecay87.i, align 4, !tbaa !4
  %267 = load float* %arraydecay92.i, align 4, !tbaa !4
  %sub.i2036.i = fsub float %266, %267
  %arrayidx2.i2037.i = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv2558.i, i64 1
  %268 = load float* %arrayidx2.i2037.i, align 4, !tbaa !4
  %arrayidx3.i2038.i = getelementptr inbounds [3 x float]* %265, i64 %indvars.iv2558.i, i64 1
  %269 = load float* %arrayidx3.i2038.i, align 4, !tbaa !4
  %sub4.i2039.i = fsub float %268, %269
  %arrayidx5.i2040.i = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv2558.i, i64 2
  %270 = load float* %arrayidx5.i2040.i, align 4, !tbaa !4
  %arrayidx6.i2041.i = getelementptr inbounds [3 x float]* %265, i64 %indvars.iv2558.i, i64 2
  %271 = load float* %arrayidx6.i2041.i, align 4, !tbaa !4
  %sub7.i2042.i = fsub float %270, %271
  br label %for.cond122.preheader.i

if.else94.i:                                      ; preds = %if.end63.i
  %272 = load [3 x float]** %x_con96.i, align 8, !tbaa !0
  %arraydecay98.i634 = getelementptr inbounds [3 x float]* %272, i64 0, i64 0
  %273 = load [3 x float]** %x_con101.i, align 8, !tbaa !0
  %arraydecay103.i = getelementptr inbounds [3 x float]* %273, i64 %indvars.iv2558.i, i64 0
  %274 = load float* %arraydecay98.i634, align 4, !tbaa !4
  %275 = load float* %arraydecay103.i, align 4, !tbaa !4
  %sub.i2190.i = fsub float %274, %275
  %arrayidx2.i2191.i = getelementptr inbounds [3 x float]* %272, i64 0, i64 1
  %276 = load float* %arrayidx2.i2191.i, align 4, !tbaa !4
  %arrayidx3.i2192.i = getelementptr inbounds [3 x float]* %273, i64 %indvars.iv2558.i, i64 1
  %277 = load float* %arrayidx3.i2192.i, align 4, !tbaa !4
  %sub4.i2193.i = fsub float %276, %277
  %arrayidx5.i2194.i = getelementptr inbounds [3 x float]* %272, i64 0, i64 2
  %278 = load float* %arrayidx5.i2194.i, align 4, !tbaa !4
  %arrayidx6.i2195.i = getelementptr inbounds [3 x float]* %273, i64 %indvars.iv2558.i, i64 2
  %279 = load float* %arrayidx6.i2195.i, align 4, !tbaa !4
  %sub7.i2196.i = fsub float %278, %279
  store float %sub.i2190.i, float* %arraydecay104.i, align 4, !tbaa !4
  store float %sub4.i2193.i, float* %arrayidx9.i2197.i, align 4, !tbaa !4
  store float %sub7.i2196.i, float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %arraydecay109.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %280 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %281 = load float* %arraydecay109.i, align 4, !tbaa !4
  %sub.i2207.i = fsub float %280, %281
  %282 = load float* %.pre-phi.i, align 4, !tbaa !4
  %arrayidx3.i2209.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %283 = load float* %arrayidx3.i2209.i, align 4, !tbaa !4
  %sub4.i2210.i = fsub float %282, %283
  %284 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %arrayidx6.i2212.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  %285 = load float* %arrayidx6.i2212.i, align 4, !tbaa !4
  %sub7.i2213.i = fsub float %284, %285
  store float %sub.i2207.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2210.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2213.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %286 = load [3 x float]** %x_ref934.i, align 8, !tbaa !0
  %arraydecay114.i = getelementptr inbounds [3 x float]* %286, i64 0, i64 0
  %287 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay119.i = getelementptr inbounds [3 x float]* %287, i64 %indvars.iv2558.i, i64 0
  %288 = load float* %arraydecay114.i, align 4, !tbaa !4
  %289 = load float* %arraydecay119.i, align 4, !tbaa !4
  %sub.i2224.i = fsub float %288, %289
  %arrayidx2.i2225.i = getelementptr inbounds [3 x float]* %286, i64 0, i64 1
  %290 = load float* %arrayidx2.i2225.i, align 4, !tbaa !4
  %arrayidx3.i2226.i = getelementptr inbounds [3 x float]* %287, i64 %indvars.iv2558.i, i64 1
  %291 = load float* %arrayidx3.i2226.i, align 4, !tbaa !4
  %sub4.i2227.i = fsub float %290, %291
  %arrayidx5.i2228.i = getelementptr inbounds [3 x float]* %286, i64 0, i64 2
  %292 = load float* %arrayidx5.i2228.i, align 4, !tbaa !4
  %arrayidx6.i2229.i = getelementptr inbounds [3 x float]* %287, i64 %indvars.iv2558.i, i64 2
  %293 = load float* %arrayidx6.i2229.i, align 4, !tbaa !4
  %sub7.i2230.i = fsub float %292, %293
  br label %for.cond122.preheader.i

for.cond122.preheader.i:                          ; preds = %if.else94.i, %if.then66.i
  %storemerge2606.i = phi float [ %sub.i2036.i, %if.then66.i ], [ %sub.i2224.i, %if.else94.i ]
  %storemerge2604.i = phi float [ %sub4.i2039.i, %if.then66.i ], [ %sub4.i2227.i, %if.else94.i ]
  %storemerge2603.i = phi float [ %sub7.i2042.i, %if.then66.i ], [ %sub7.i2230.i, %if.else94.i ]
  %294 = phi float [ %sub7.i2008.i, %if.then66.i ], [ %sub7.i2196.i, %if.else94.i ]
  store float %storemerge2606.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %storemerge2604.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %storemerge2603.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  br label %for.body124.i

for.body124.i:                                    ; preds = %if.end224.for.body124_crit_edge.i, %for.cond122.preheader.i
  %295 = phi float [ %294, %for.cond122.preheader.i ], [ %.pre2593.i, %if.end224.for.body124_crit_edge.i ]
  %indvars.iv2548.i = phi i64 [ 2, %for.cond122.preheader.i ], [ %indvars.iv.next2549.i, %if.end224.for.body124_crit_edge.i ]
  %arrayidx126.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv2548.i
  %conv.i635 = fpext float %295 to double
  %arrayidx129.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i
  %arrayidx130.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 %indvars.iv2548.i
  %296 = load float* %arrayidx130.i, align 4, !tbaa !4
  %conv131.i = fpext float %296 to double
  %mul.i636 = fmul double %conv131.i, -5.000000e-01
  %cmp132.i = fcmp olt double %conv.i635, %mul.i636
  br i1 %cmp132.i, label %if.then134.i, label %if.end139.i

if.then134.i:                                     ; preds = %for.body124.i
  %arraydecay138.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %297 = load float* %arraydecay104.i, align 4, !tbaa !4
  %298 = load float* %arraydecay138.i, align 4, !tbaa !4
  %add.i2241.i = fadd float %297, %298
  %299 = load float* %arrayidx9.i2197.i, align 4, !tbaa !4
  %arrayidx3.i2243.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %300 = load float* %arrayidx3.i2243.i, align 4, !tbaa !4
  %add4.i2244.i = fadd float %299, %300
  %301 = load float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %arrayidx6.i2246.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %302 = load float* %arrayidx6.i2246.i, align 4, !tbaa !4
  %add7.i2247.i = fadd float %301, %302
  store float %add.i2241.i, float* %arraydecay104.i, align 4, !tbaa !4
  store float %add4.i2244.i, float* %arrayidx9.i2197.i, align 4, !tbaa !4
  store float %add7.i2247.i, float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %.pre2578.i = load float* %arrayidx126.i, align 4, !tbaa !4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then134.i, %for.body124.i
  %303 = phi float [ %.pre2578.i, %if.then134.i ], [ %295, %for.body124.i ]
  %conv142.i = fpext float %303 to double
  %mul148.i = fmul double %conv131.i, 5.000000e-01
  %cmp149.i = fcmp ogt double %conv142.i, %mul148.i
  br i1 %cmp149.i, label %if.then151.i, label %if.end156.i

if.then151.i:                                     ; preds = %if.end139.i
  %arraydecay155.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %304 = load float* %arraydecay104.i, align 4, !tbaa !4
  %305 = load float* %arraydecay155.i, align 4, !tbaa !4
  %sub.i2256.i = fsub float %304, %305
  %306 = load float* %arrayidx9.i2197.i, align 4, !tbaa !4
  %arrayidx3.i2258.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %307 = load float* %arrayidx3.i2258.i, align 4, !tbaa !4
  %sub4.i2259.i = fsub float %306, %307
  %308 = load float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %arrayidx6.i2261.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %309 = load float* %arrayidx6.i2261.i, align 4, !tbaa !4
  %sub7.i2262.i = fsub float %308, %309
  store float %sub.i2256.i, float* %arraydecay104.i, align 4, !tbaa !4
  store float %sub4.i2259.i, float* %arrayidx9.i2197.i, align 4, !tbaa !4
  store float %sub7.i2262.i, float* %arrayidx10.i2198.i, align 4, !tbaa !4
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.end139.i, %if.then151.i
  %arrayidx158.i637 = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv2548.i
  %310 = load float* %arrayidx158.i637, align 4, !tbaa !4
  %conv159.i638 = fpext float %310 to double
  %cmp166.i = fcmp olt double %conv159.i638, %mul.i636
  br i1 %cmp166.i, label %if.then168.i, label %if.end173.i

if.then168.i:                                     ; preds = %if.end156.i
  %arraydecay172.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %311 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %312 = load float* %arraydecay172.i, align 4, !tbaa !4
  %add.i2271.i = fadd float %311, %312
  %313 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2273.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %314 = load float* %arrayidx3.i2273.i, align 4, !tbaa !4
  %add4.i2274.i = fadd float %313, %314
  %315 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2276.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %316 = load float* %arrayidx6.i2276.i, align 4, !tbaa !4
  %add7.i2277.i = fadd float %315, %316
  store float %add.i2271.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %add4.i2274.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %add7.i2277.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2579.i = load float* %arrayidx158.i637, align 4, !tbaa !4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.then168.i, %if.end156.i
  %317 = phi float [ %.pre2579.i, %if.then168.i ], [ %310, %if.end156.i ]
  %conv176.i = fpext float %317 to double
  %cmp183.i = fcmp ogt double %conv176.i, %mul148.i
  br i1 %cmp183.i, label %if.then185.i, label %if.end190.i

if.then185.i:                                     ; preds = %if.end173.i
  %arraydecay189.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %318 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %319 = load float* %arraydecay189.i, align 4, !tbaa !4
  %sub.i2371.i = fsub float %318, %319
  %320 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2373.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %321 = load float* %arrayidx3.i2373.i, align 4, !tbaa !4
  %sub4.i2374.i = fsub float %320, %321
  %322 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2376.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %323 = load float* %arrayidx6.i2376.i, align 4, !tbaa !4
  %sub7.i2377.i = fsub float %322, %323
  store float %sub.i2371.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2374.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2377.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.end173.i, %if.then185.i
  %arrayidx192.i = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 %indvars.iv2548.i
  %324 = load float* %arrayidx192.i, align 4, !tbaa !4
  %conv193.i = fpext float %324 to double
  %cmp200.i639 = fcmp olt double %conv193.i, %mul.i636
  br i1 %cmp200.i639, label %if.then202.i, label %if.end207.i

if.then202.i:                                     ; preds = %if.end190.i
  %arraydecay206.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %325 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %326 = load float* %arraydecay206.i, align 4, !tbaa !4
  %add.i2440.i = fadd float %325, %326
  %327 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %arrayidx3.i2442.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %328 = load float* %arrayidx3.i2442.i, align 4, !tbaa !4
  %add4.i2443.i = fadd float %327, %328
  %329 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %arrayidx6.i2445.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %330 = load float* %arrayidx6.i2445.i, align 4, !tbaa !4
  %add7.i2446.i = fadd float %329, %330
  store float %add.i2440.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %add4.i2443.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %add7.i2446.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %.pre2580.i = load float* %arrayidx192.i, align 4, !tbaa !4
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.then202.i, %if.end190.i
  %331 = phi float [ %.pre2580.i, %if.then202.i ], [ %324, %if.end190.i ]
  %conv210.i = fpext float %331 to double
  %cmp217.i = fcmp ogt double %conv210.i, %mul148.i
  br i1 %cmp217.i, label %if.then219.i, label %if.end224.i

if.then219.i:                                     ; preds = %if.end207.i
  %arraydecay223.i = getelementptr inbounds [3 x float]* %arrayidx129.i, i64 0, i64 0
  %332 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %333 = load float* %arraydecay223.i, align 4, !tbaa !4
  %sub.i2433.i = fsub float %332, %333
  %334 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %arrayidx3.i2435.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 1
  %335 = load float* %arrayidx3.i2435.i, align 4, !tbaa !4
  %sub4.i2436.i = fsub float %334, %335
  %336 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %arrayidx6.i2438.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2548.i, i64 2
  %337 = load float* %arrayidx6.i2438.i, align 4, !tbaa !4
  %sub7.i2439.i = fsub float %336, %337
  store float %sub.i2433.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %sub4.i2436.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %sub7.i2439.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %.pre2581.i = load float* %arrayidx192.i, align 4, !tbaa !4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.end207.i, %if.then219.i
  %338 = phi float [ %.pre2581.i, %if.then219.i ], [ %331, %if.end207.i ]
  %arrayidx226.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2548.i
  %339 = load float* %arrayidx226.i, align 4, !tbaa !4
  %340 = load float* %arrayidx126.i, align 4, !tbaa !4
  %mul229.i = fmul float %339, %340
  store float %mul229.i, float* %arrayidx126.i, align 4, !tbaa !4
  %341 = load float* %arrayidx158.i637, align 4, !tbaa !4
  %mul235.i = fmul float %339, %341
  store float %mul235.i, float* %arrayidx158.i637, align 4, !tbaa !4
  %mul241.i = fmul float %338, %339
  store float %mul241.i, float* %arrayidx192.i, align 4, !tbaa !4
  %indvars.iv.next2549.i = add i64 %indvars.iv2548.i, -1
  %342 = trunc i64 %indvars.iv2548.i to i32
  %cmp123.i = icmp sgt i32 %342, 0
  br i1 %cmp123.i, label %if.end224.for.body124_crit_edge.i, label %for.end243.i

if.end224.for.body124_crit_edge.i:                ; preds = %if.end224.i
  %arrayidx126.phi.trans.insert.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next2549.i
  %.pre2593.i = load float* %arrayidx126.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body124.i

for.end243.i:                                     ; preds = %if.end224.i
  %343 = load float** %tmass.i631, align 8, !tbaa !0
  %arrayidx249.i = getelementptr inbounds float* %343, i64 %indvars.iv2558.i
  %344 = load float* %arrayidx249.i, align 4, !tbaa !4
  %div.i640 = fdiv float 1.000000e+00, %344
  br i1 %tobool65.i, label %if.else256.i, label %if.then246.i

if.then246.i:                                     ; preds = %for.end243.i
  %345 = load float** %tmass354.i, align 8, !tbaa !0
  %arrayidx253.i = getelementptr inbounds float* %345, i64 %indvars.iv2558.i
  br label %if.end268.i

if.else256.i:                                     ; preds = %for.end243.i
  %346 = load float** %tmass263.i, align 8, !tbaa !0
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.else256.i, %if.then246.i
  %.pn.in.i = phi float* [ %arrayidx253.i, %if.then246.i ], [ %346, %if.else256.i ]
  %.pn.i = load float* %.pn.in.i, align 4
  %div254.pn.i = fdiv float 1.000000e+00, %.pn.i
  %rm.0.in.i = fadd float %div.i640, %div254.pn.i
  %rm.0.i = fpext float %rm.0.in.i to double
  %347 = load float* %arraydecay104.i, align 4, !tbaa !4
  %mul.i2424.i = fmul float %347, %347
  %348 = load float* %arrayidx9.i2197.i, align 4, !tbaa !4
  %mul4.i2427.i = fmul float %348, %348
  %add.i2428.i = fadd float %mul.i2424.i, %mul4.i2427.i
  %349 = load float* %arrayidx10.i2198.i, align 4, !tbaa !4
  %mul7.i2431.i = fmul float %349, %349
  %add8.i2432.i = fadd float %add.i2428.i, %mul7.i2431.i
  %mul272.i = fmul float %add8.i2432.i, %dt
  %mul273.i = fmul float %mul272.i, %dt
  %mul274.i = fmul float %mul273.i, %dt
  %mul275.i = fmul float %mul274.i, %dt
  %conv276.i = fpext float %mul275.i to double
  %mul277.i = fmul double %rm.0.i, %conv276.i
  %mul278.i = fmul double %rm.0.i, %mul277.i
  %350 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %mul.i2415.i = fmul float %347, %350
  %351 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %mul4.i2418.i = fmul float %348, %351
  %add.i2419.i = fadd float %mul.i2415.i, %mul4.i2418.i
  %352 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %mul7.i2422.i = fmul float %349, %352
  %add8.i2423.i = fadd float %add.i2419.i, %mul7.i2422.i
  %mul282.i = fmul float %add8.i2423.i, 2.000000e+00
  %mul283.i = fmul float %mul282.i, %dt
  %mul284.i = fmul float %mul283.i, %dt
  %conv285.i = fpext float %mul284.i to double
  %mul286.i = fmul double %rm.0.i, %conv285.i
  %mul.i2406.i = fmul float %350, %350
  %mul4.i2409.i = fmul float %351, %351
  %add.i2410.i = fadd float %mul.i2406.i, %mul4.i2409.i
  %mul7.i2413.i = fmul float %352, %352
  %add8.i2414.i = fadd float %add.i2410.i, %mul7.i2413.i
  %353 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %mul.i2399.i = fmul float %353, %353
  %354 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %mul4.i2401.i = fmul float %354, %354
  %add.i2402.i = fadd float %mul.i2399.i, %mul4.i2401.i
  %355 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %mul7.i2404.i = fmul float %355, %355
  %add8.i2405.i = fadd float %add.i2402.i, %mul7.i2404.i
  %sub.i641 = fsub float %add8.i2414.i, %add8.i2405.i
  %conv292.i = fpext float %sub.i641 to double
  %cmp293.i = fcmp olt double %mul286.i, 0.000000e+00
  %mul296.i = fmul double %mul286.i, %mul286.i
  %mul297.i = fmul double %mul278.i, 4.000000e+00
  %mul298.i = fmul double %mul297.i, %conv292.i
  %sub299.i = fsub double %mul296.i, %mul298.i
  %call300.i = call double @sqrt(double %sub299.i) #4
  br i1 %cmp293.i, label %if.then295.i, label %if.else303.i

if.then295.i:                                     ; preds = %if.end268.i
  %sub301.i = fsub double %mul286.i, %call300.i
  br label %if.end311.i

if.else303.i:                                     ; preds = %if.end268.i
  %add309.i = fadd double %call300.i, %mul286.i
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.else303.i, %if.then295.i
  %q.0.in.i = phi double [ %sub301.i, %if.then295.i ], [ %add309.i, %if.else303.i ]
  %q.0.i = fmul double %q.0.in.i, -5.000000e-01
  %div312.i = fdiv double %q.0.i, %mul278.i
  %div313.i = fdiv double %conv292.i, %q.0.i
  %cmp314.i = fcmp ogt double %div312.i, 0.000000e+00
  %cond.i = select i1 %cmp314.i, double %div312.i, double %div313.i
  %356 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool317.i = icmp eq i32 %356, 0
  br i1 %tobool317.i, label %if.end330.i, label %if.then318.i

if.then318.i:                                     ; preds = %if.end311.i
  %357 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %mul319.i = fmul double %mul278.i, %div312.i
  %mul320.i = fmul double %div312.i, %mul319.i
  %mul321.i = fmul double %mul286.i, %div312.i
  %add322.i = fadd double %mul321.i, %mul320.i
  %add323.i = fadd double %conv292.i, %add322.i
  %mul324.i = fmul double %mul278.i, %div313.i
  %mul325.i = fmul double %div313.i, %mul324.i
  %mul326.i = fmul double %mul286.i, %div313.i
  %add327.i = fadd double %mul326.i, %mul325.i
  %add328.i = fadd double %conv292.i, %add327.i
  %call329.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %357, i8* getelementptr inbounds ([63 x i8]* @.str21, i64 0, i64 0), double %mul278.i, double %mul286.i, double %conv292.i, double %div312.i, double %div313.i, double %add323.i, double %add328.i, double %cond.i) #4
  br label %if.end330.i

if.end330.i:                                      ; preds = %if.then318.i, %if.end311.i
  %358 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool332.i = icmp eq i32 %358, 0
  %mul337.i = fmul double %conv336.i, %cond.i
  %359 = load float** %tmass.i631, align 8, !tbaa !0
  %arrayidx341.i = getelementptr inbounds float* %359, i64 %indvars.iv2558.i
  %360 = load float* %arrayidx341.i, align 4, !tbaa !4
  %conv342.i = fpext float %360 to double
  %div343.i = fdiv double %mul337.i, %conv342.i
  %conv344.i = fptrunc double %div343.i to float
  %arraydecay348.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2558.i, i64 0
  %mul.i2392.i = fmul float %347, %conv344.i
  store float %mul.i2392.i, float* %arraydecay348.i, align 4, !tbaa !4
  %mul3.i2394.i = fmul float %348, %conv344.i
  %arrayidx4.i2395.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2558.i, i64 1
  store float %mul3.i2394.i, float* %arrayidx4.i2395.i, align 4, !tbaa !4
  %mul6.i2397.i = fmul float %349, %conv344.i
  %arrayidx7.i2398.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2558.i, i64 2
  store float %mul6.i2397.i, float* %arrayidx7.i2398.i, align 4, !tbaa !4
  %mul351.i = fmul double %conv350.i, %cond.i
  br i1 %tobool332.i, label %if.else363.i, label %if.then333.i

if.then333.i:                                     ; preds = %if.end330.i
  %361 = load float** %tmass354.i, align 8, !tbaa !0
  %arrayidx355.i = getelementptr inbounds float* %361, i64 %indvars.iv2558.i
  %362 = load float* %arrayidx355.i, align 4, !tbaa !4
  %conv356.i = fpext float %362 to double
  %div357.i = fdiv double %mul351.i, %conv356.i
  %conv358.i = fptrunc double %div357.i to float
  %arraydecay362.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 0
  %mul.i2385.i = fmul float %347, %conv358.i
  store float %mul.i2385.i, float* %arraydecay362.i, align 4, !tbaa !4
  %mul3.i2387.i = fmul float %348, %conv358.i
  %arrayidx4.i2388.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 1
  store float %mul3.i2387.i, float* %arrayidx4.i2388.i, align 4, !tbaa !4
  %mul6.i2390.i = fmul float %349, %conv358.i
  %arrayidx7.i2391.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 2
  store float %mul6.i2390.i, float* %arrayidx7.i2391.i, align 4, !tbaa !4
  br label %for.body.i.i.preheader

if.else363.i:                                     ; preds = %if.end330.i
  %363 = load float** %tmass263.i, align 8, !tbaa !0
  %364 = load float* %363, align 4, !tbaa !4
  %conv385.i = fpext float %364 to double
  %div386.i = fdiv double %mul351.i, %conv385.i
  %conv387.i = fptrunc double %div386.i to float
  %mul.i2378.i = fmul float %347, %conv387.i
  store float %mul.i2378.i, float* %arraydecay390.i, align 4, !tbaa !4
  %mul3.i2380.i = fmul float %348, %conv387.i
  store float %mul3.i2380.i, float* %244, align 4, !tbaa !4
  %mul6.i2383.i = fmul float %349, %conv387.i
  store float %mul6.i2383.i, float* %245, align 4, !tbaa !4
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then333.i, %if.else363.i
  %conv.i.i684 = fpext float %347 to double
  %365 = load float* %arraydecay348.i, align 4, !tbaa !4
  %conv3.i.i686 = fpext float %365 to double
  %mul.i2366.i687 = fmul double %conv.i.i684, %conv3.i.i686
  %add.i2367.i688 = fadd double %mul.i2366.i687, 0.000000e+00
  %mul4.i2368.i689 = fmul double %conv.i.i684, %conv.i.i684
  %add5.i.i690 = fadd double %mul4.i2368.i689, 0.000000e+00
  %mul6.i2369.i691 = fmul double %conv3.i.i686, %conv3.i.i686
  %add7.i2370.i692 = fadd double %mul6.i2369.i691, 0.000000e+00
  br label %for.body.i.for.body.i_crit_edge.i

for.body.i.for.body.i_crit_edge.i:                ; preds = %for.body.i.i.preheader, %for.body.i.for.body.i_crit_edge.i
  %indvars.iv.next.i.i696 = phi i64 [ 1, %for.body.i.i.preheader ], [ %indvars.iv.next.i.i, %for.body.i.for.body.i_crit_edge.i ]
  %add7.i2370.i695 = phi double [ %add7.i2370.i692, %for.body.i.i.preheader ], [ %add7.i2370.i, %for.body.i.for.body.i_crit_edge.i ]
  %add5.i.i694 = phi double [ %add5.i.i690, %for.body.i.i.preheader ], [ %add5.i.i, %for.body.i.for.body.i_crit_edge.i ]
  %add.i2367.i693 = phi double [ %add.i2367.i688, %for.body.i.i.preheader ], [ %add.i2367.i, %for.body.i.for.body.i_crit_edge.i ]
  %arrayidx.i.phi.trans.insert.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next.i.i696
  %.pre2594.i = load float* %arrayidx.i.phi.trans.insert.i, align 4, !tbaa !4
  %conv.i.i = fpext float %.pre2594.i to double
  %arrayidx2.i2365.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2558.i, i64 %indvars.iv.next.i.i696
  %366 = load float* %arrayidx2.i2365.i, align 4, !tbaa !4
  %conv3.i.i = fpext float %366 to double
  %mul.i2366.i = fmul double %conv.i.i, %conv3.i.i
  %add.i2367.i = fadd double %add.i2367.i693, %mul.i2366.i
  %mul4.i2368.i = fmul double %conv.i.i, %conv.i.i
  %add5.i.i = fadd double %mul4.i2368.i, %add5.i.i694
  %mul6.i2369.i = fmul double %conv3.i.i, %conv3.i.i
  %add7.i2370.i = fadd double %add7.i2370.i695, %mul6.i2369.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.next.i.i696, 1
  %lftr.wideiv750 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond751 = icmp eq i32 %lftr.wideiv750, 3
  br i1 %exitcond751, label %for.end.i.i, label %for.body.i.for.body.i_crit_edge.i

for.end.i.i:                                      ; preds = %for.body.i.for.body.i_crit_edge.i
  %mul8.i.i = fmul double %add5.i.i, %add7.i2370.i
  %call.i.i = call double @sqrt(double %mul8.i.i) #4
  %div.i.i = fdiv double 1.000000e+00, %call.i.i
  %mul9.i.i = fmul double %add.i2367.i, %div.i.i
  %conv10.i.i = fptrunc double %mul9.i.i to float
  %cmp12.i.i = fcmp ogt float %conv10.i.i, 1.000000e+00
  br i1 %cmp12.i.i, label %cos_angle.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.end.i.i
  %cmp15.i.i = fcmp olt float %conv10.i.i, -1.000000e+00
  %.conv10.i.i = select i1 %cmp15.i.i, float -1.000000e+00, float %conv10.i.i
  br label %cos_angle.exit.i

cos_angle.exit.i:                                 ; preds = %if.end.i.i, %for.end.i.i
  %retval.0.i.i = phi float [ 1.000000e+00, %for.end.i.i ], [ %.conv10.i.i, %if.end.i.i ]
  %arrayidx398.i = getelementptr inbounds float* %226, i64 %indvars.iv2558.i
  store float %retval.0.i.i, float* %arrayidx398.i, align 4, !tbaa !4
  %367 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool400.i = icmp eq i32 %367, 0
  br i1 %tobool400.i, label %cos_angle.exit.if.end759_crit_edge.i, label %if.then401.i

cos_angle.exit.if.end759_crit_edge.i:             ; preds = %cos_angle.exit.i
  %arraydecay762.pre.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %arrayidx2.i2174.pre.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %arrayidx5.i2177.pre.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  br label %if.end759.i

if.then401.i:                                     ; preds = %cos_angle.exit.i
  %368 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv404.i = fpext float %retval.0.i.i to double
  %call405.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %368, i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), double %conv404.i) #4
  %369 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool407.i = icmp eq i32 %369, 0
  br i1 %tobool407.i, label %if.else427.i, label %if.then408.i

if.then408.i:                                     ; preds = %if.then401.i
  %arraydecay411.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %arraydecay414.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 0
  %370 = load float* %arraydecay411.i, align 4, !tbaa !4
  %371 = load float* %arraydecay414.i, align 4, !tbaa !4
  %sub.i2356.i = fsub float %370, %371
  %arrayidx2.i2357.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %372 = load float* %arrayidx2.i2357.i, align 4, !tbaa !4
  %arrayidx3.i2358.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 1
  %373 = load float* %arrayidx3.i2358.i, align 4, !tbaa !4
  %sub4.i2359.i = fsub float %372, %373
  %arrayidx5.i2360.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  %374 = load float* %arrayidx5.i2360.i, align 4, !tbaa !4
  %arrayidx6.i2361.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 2
  %375 = load float* %arrayidx6.i2361.i, align 4, !tbaa !4
  %sub7.i2362.i = fsub float %374, %375
  store float %sub.i2356.i, float* %arraydecay443.i, align 4, !tbaa !4
  store float %sub4.i2359.i, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %sub7.i2362.i, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %376 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay420.i = getelementptr inbounds [3 x float]* %376, i64 %indvars.iv2558.i, i64 0
  %377 = load [3 x float]** %x_ref917.i, align 8, !tbaa !0
  %arraydecay425.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv2558.i, i64 0
  %378 = load float* %arraydecay420.i, align 4, !tbaa !4
  %379 = load float* %arraydecay425.i, align 4, !tbaa !4
  %sub.i2347.i = fsub float %378, %379
  %arrayidx2.i2348.i = getelementptr inbounds [3 x float]* %376, i64 %indvars.iv2558.i, i64 1
  %380 = load float* %arrayidx2.i2348.i, align 4, !tbaa !4
  %arrayidx3.i2349.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv2558.i, i64 1
  %381 = load float* %arrayidx3.i2349.i, align 4, !tbaa !4
  %sub4.i2350.i = fsub float %380, %381
  %arrayidx5.i2351.i = getelementptr inbounds [3 x float]* %376, i64 %indvars.iv2558.i, i64 2
  %382 = load float* %arrayidx5.i2351.i, align 4, !tbaa !4
  %arrayidx6.i2352.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv2558.i, i64 2
  %383 = load float* %arrayidx6.i2352.i, align 4, !tbaa !4
  %sub7.i2353.i = fsub float %382, %383
  store float %sub.i2347.i, float* %arraydecay437.i, align 4, !tbaa !4
  store float %sub4.i2350.i, float* %arrayidx9.i2345.i, align 4, !tbaa !4
  store float %sub7.i2353.i, float* %arrayidx10.i2346.i, align 4, !tbaa !4
  br label %if.end444.i

if.else427.i:                                     ; preds = %if.then401.i
  %384 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay432.i = getelementptr inbounds [3 x float]* %384, i64 %indvars.iv2558.i, i64 0
  %385 = load [3 x float]** %x_ref934.i, align 8, !tbaa !0
  %arraydecay436.i = getelementptr inbounds [3 x float]* %385, i64 0, i64 0
  %386 = load float* %arraydecay432.i, align 4, !tbaa !4
  %387 = load float* %arraydecay436.i, align 4, !tbaa !4
  %sub.i2338.i = fsub float %386, %387
  %arrayidx2.i2339.i = getelementptr inbounds [3 x float]* %384, i64 %indvars.iv2558.i, i64 1
  %388 = load float* %arrayidx2.i2339.i, align 4, !tbaa !4
  %arrayidx3.i2340.i = getelementptr inbounds [3 x float]* %385, i64 0, i64 1
  %389 = load float* %arrayidx3.i2340.i, align 4, !tbaa !4
  %sub4.i2341.i = fsub float %388, %389
  %arrayidx5.i2342.i = getelementptr inbounds [3 x float]* %384, i64 %indvars.iv2558.i, i64 2
  %390 = load float* %arrayidx5.i2342.i, align 4, !tbaa !4
  %arrayidx6.i2343.i = getelementptr inbounds [3 x float]* %385, i64 0, i64 2
  %391 = load float* %arrayidx6.i2343.i, align 4, !tbaa !4
  %sub7.i2344.i = fsub float %390, %391
  store float %sub.i2338.i, float* %arraydecay437.i, align 4, !tbaa !4
  store float %sub4.i2341.i, float* %arrayidx9.i2345.i, align 4, !tbaa !4
  store float %sub7.i2344.i, float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %arraydecay440.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %392 = load float* %arraydecay440.i, align 4, !tbaa !4
  %393 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %sub.i2329.i = fsub float %392, %393
  %arrayidx2.i2330.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %394 = load float* %arrayidx2.i2330.i, align 4, !tbaa !4
  %395 = load float* %.pre-phi.i, align 4, !tbaa !4
  %sub4.i2332.i = fsub float %394, %395
  %arrayidx5.i2333.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  %396 = load float* %arrayidx5.i2333.i, align 4, !tbaa !4
  %397 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %sub7.i2335.i = fsub float %396, %397
  store float %sub.i2329.i, float* %arraydecay443.i, align 4, !tbaa !4
  store float %sub4.i2332.i, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %sub7.i2335.i, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  br label %if.end444.i

if.end444.i:                                      ; preds = %if.else427.i, %if.then408.i
  %398 = phi float [ %sub7.i2335.i, %if.else427.i ], [ %sub7.i2362.i, %if.then408.i ]
  %399 = phi float [ %396, %if.else427.i ], [ %374, %if.then408.i ]
  %400 = phi float [ %394, %if.else427.i ], [ %372, %if.then408.i ]
  %401 = phi float [ %392, %if.else427.i ], [ %370, %if.then408.i ]
  %402 = load float* %arraydecay348.i, align 4, !tbaa !4
  %403 = load float* %arraydecay390.i, align 4, !tbaa !4
  %sub.i2320.i = fsub float %402, %403
  %404 = load float* %arrayidx4.i2395.i, align 4, !tbaa !4
  %405 = load float* %244, align 4, !tbaa !4
  %sub4.i2323.i = fsub float %404, %405
  %406 = load float* %arrayidx7.i2398.i, align 4, !tbaa !4
  %407 = load float* %245, align 4, !tbaa !4
  %sub7.i2326.i = fsub float %406, %407
  store float %sub.i2320.i, float* %arraydecay450.i, align 4, !tbaa !4
  store float %sub4.i2323.i, float* %arrayidx9.i2327.i, align 4, !tbaa !4
  store float %sub7.i2326.i, float* %arrayidx10.i2328.i, align 4, !tbaa !4
  br label %for.body454.i

for.body454.i:                                    ; preds = %if.end556.for.body454_crit_edge.i, %if.end444.i
  %408 = phi float [ %398, %if.end444.i ], [ %.pre2597.i, %if.end556.for.body454_crit_edge.i ]
  %indvars.iv2552.i = phi i64 [ 2, %if.end444.i ], [ %indvars.iv.next2553.i, %if.end556.for.body454_crit_edge.i ]
  %arrayidx456.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 %indvars.iv2552.i
  %conv457.i = fpext float %408 to double
  %arrayidx460.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i
  %arrayidx461.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 %indvars.iv2552.i
  %409 = load float* %arrayidx461.i, align 4, !tbaa !4
  %conv462.i = fpext float %409 to double
  %mul463.i = fmul double %conv462.i, -5.000000e-01
  %cmp464.i = fcmp olt double %conv457.i, %mul463.i
  br i1 %cmp464.i, label %if.then466.i, label %if.end471.i

if.then466.i:                                     ; preds = %for.body454.i
  %arraydecay470.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %410 = load float* %arraydecay443.i, align 4, !tbaa !4
  %411 = load float* %arraydecay470.i, align 4, !tbaa !4
  %add.i2313.i = fadd float %410, %411
  %412 = load float* %arrayidx9.i2336.i, align 4, !tbaa !4
  %arrayidx3.i2315.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %413 = load float* %arrayidx3.i2315.i, align 4, !tbaa !4
  %add4.i2316.i = fadd float %412, %413
  %414 = load float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %arrayidx6.i2318.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %415 = load float* %arrayidx6.i2318.i, align 4, !tbaa !4
  %add7.i2319.i = fadd float %414, %415
  store float %add.i2313.i, float* %arraydecay443.i, align 4, !tbaa !4
  store float %add4.i2316.i, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %add7.i2319.i, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %.pre2586.i = load float* %arrayidx456.i, align 4, !tbaa !4
  br label %if.end471.i

if.end471.i:                                      ; preds = %if.then466.i, %for.body454.i
  %416 = phi float [ %.pre2586.i, %if.then466.i ], [ %408, %for.body454.i ]
  %conv474.i = fpext float %416 to double
  %mul480.i = fmul double %conv462.i, 5.000000e-01
  %cmp481.i = fcmp ogt double %conv474.i, %mul480.i
  br i1 %cmp481.i, label %if.then483.i, label %if.end488.i

if.then483.i:                                     ; preds = %if.end471.i
  %arraydecay487.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %417 = load float* %arraydecay443.i, align 4, !tbaa !4
  %418 = load float* %arraydecay487.i, align 4, !tbaa !4
  %sub.i2306.i = fsub float %417, %418
  %419 = load float* %arrayidx9.i2336.i, align 4, !tbaa !4
  %arrayidx3.i2308.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %420 = load float* %arrayidx3.i2308.i, align 4, !tbaa !4
  %sub4.i2309.i = fsub float %419, %420
  %421 = load float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %arrayidx6.i2311.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %422 = load float* %arrayidx6.i2311.i, align 4, !tbaa !4
  %sub7.i2312.i = fsub float %421, %422
  store float %sub.i2306.i, float* %arraydecay443.i, align 4, !tbaa !4
  store float %sub4.i2309.i, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %sub7.i2312.i, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  br label %if.end488.i

if.end488.i:                                      ; preds = %if.end471.i, %if.then483.i
  %arrayidx490.i = getelementptr inbounds [3 x float]* %tmp2.i, i64 0, i64 %indvars.iv2552.i
  %423 = load float* %arrayidx490.i, align 4, !tbaa !4
  %conv491.i = fpext float %423 to double
  %cmp498.i = fcmp olt double %conv491.i, %mul463.i
  br i1 %cmp498.i, label %if.then500.i, label %if.end505.i

if.then500.i:                                     ; preds = %if.end488.i
  %arraydecay504.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %424 = load float* %arraydecay437.i, align 4, !tbaa !4
  %425 = load float* %arraydecay504.i, align 4, !tbaa !4
  %add.i2299.i = fadd float %424, %425
  %426 = load float* %arrayidx9.i2345.i, align 4, !tbaa !4
  %arrayidx3.i2301.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %427 = load float* %arrayidx3.i2301.i, align 4, !tbaa !4
  %add4.i2302.i = fadd float %426, %427
  %428 = load float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %arrayidx6.i2304.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %429 = load float* %arrayidx6.i2304.i, align 4, !tbaa !4
  %add7.i2305.i = fadd float %428, %429
  store float %add.i2299.i, float* %arraydecay437.i, align 4, !tbaa !4
  store float %add4.i2302.i, float* %arrayidx9.i2345.i, align 4, !tbaa !4
  store float %add7.i2305.i, float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %.pre2587.i = load float* %arrayidx490.i, align 4, !tbaa !4
  br label %if.end505.i

if.end505.i:                                      ; preds = %if.then500.i, %if.end488.i
  %430 = phi float [ %.pre2587.i, %if.then500.i ], [ %423, %if.end488.i ]
  %conv508.i = fpext float %430 to double
  %cmp515.i = fcmp ogt double %conv508.i, %mul480.i
  br i1 %cmp515.i, label %if.then517.i, label %if.end522.i

if.then517.i:                                     ; preds = %if.end505.i
  %arraydecay521.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %431 = load float* %arraydecay437.i, align 4, !tbaa !4
  %432 = load float* %arraydecay521.i, align 4, !tbaa !4
  %sub.i2292.i = fsub float %431, %432
  %433 = load float* %arrayidx9.i2345.i, align 4, !tbaa !4
  %arrayidx3.i2294.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %434 = load float* %arrayidx3.i2294.i, align 4, !tbaa !4
  %sub4.i2295.i = fsub float %433, %434
  %435 = load float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %arrayidx6.i2297.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %436 = load float* %arrayidx6.i2297.i, align 4, !tbaa !4
  %sub7.i2298.i = fsub float %435, %436
  store float %sub.i2292.i, float* %arraydecay437.i, align 4, !tbaa !4
  store float %sub4.i2295.i, float* %arrayidx9.i2345.i, align 4, !tbaa !4
  store float %sub7.i2298.i, float* %arrayidx10.i2346.i, align 4, !tbaa !4
  br label %if.end522.i

if.end522.i:                                      ; preds = %if.end505.i, %if.then517.i
  %arrayidx524.i = getelementptr inbounds [3 x float]* %tmp3.i, i64 0, i64 %indvars.iv2552.i
  %437 = load float* %arrayidx524.i, align 4, !tbaa !4
  %conv525.i = fpext float %437 to double
  %cmp532.i = fcmp olt double %conv525.i, %mul463.i
  br i1 %cmp532.i, label %if.then534.i, label %if.end539.i

if.then534.i:                                     ; preds = %if.end522.i
  %arraydecay538.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %438 = load float* %arraydecay450.i, align 4, !tbaa !4
  %439 = load float* %arraydecay538.i, align 4, !tbaa !4
  %add.i2285.i = fadd float %438, %439
  %440 = load float* %arrayidx9.i2327.i, align 4, !tbaa !4
  %arrayidx3.i2287.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %441 = load float* %arrayidx3.i2287.i, align 4, !tbaa !4
  %add4.i2288.i = fadd float %440, %441
  %442 = load float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %arrayidx6.i2290.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %443 = load float* %arrayidx6.i2290.i, align 4, !tbaa !4
  %add7.i2291.i = fadd float %442, %443
  store float %add.i2285.i, float* %arraydecay450.i, align 4, !tbaa !4
  store float %add4.i2288.i, float* %arrayidx9.i2327.i, align 4, !tbaa !4
  store float %add7.i2291.i, float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %.pre2588.i = load float* %arrayidx524.i, align 4, !tbaa !4
  br label %if.end539.i

if.end539.i:                                      ; preds = %if.then534.i, %if.end522.i
  %444 = phi float [ %.pre2588.i, %if.then534.i ], [ %437, %if.end522.i ]
  %conv542.i = fpext float %444 to double
  %cmp549.i = fcmp ogt double %conv542.i, %mul480.i
  br i1 %cmp549.i, label %if.then551.i, label %if.end556.i

if.then551.i:                                     ; preds = %if.end539.i
  %arraydecay555.i = getelementptr inbounds [3 x float]* %arrayidx460.i, i64 0, i64 0
  %445 = load float* %arraydecay450.i, align 4, !tbaa !4
  %446 = load float* %arraydecay555.i, align 4, !tbaa !4
  %sub.i2278.i = fsub float %445, %446
  %447 = load float* %arrayidx9.i2327.i, align 4, !tbaa !4
  %arrayidx3.i2280.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 1
  %448 = load float* %arrayidx3.i2280.i, align 4, !tbaa !4
  %sub4.i2281.i = fsub float %447, %448
  %449 = load float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %arrayidx6.i2283.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2552.i, i64 2
  %450 = load float* %arrayidx6.i2283.i, align 4, !tbaa !4
  %sub7.i2284.i = fsub float %449, %450
  store float %sub.i2278.i, float* %arraydecay450.i, align 4, !tbaa !4
  store float %sub4.i2281.i, float* %arrayidx9.i2327.i, align 4, !tbaa !4
  store float %sub7.i2284.i, float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %.pre2589.i = load float* %arrayidx524.i, align 4, !tbaa !4
  br label %if.end556.i

if.end556.i:                                      ; preds = %if.end539.i, %if.then551.i
  %451 = phi float [ %.pre2589.i, %if.then551.i ], [ %444, %if.end539.i ]
  %arrayidx559.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2552.i
  %452 = load float* %arrayidx559.i, align 4, !tbaa !4
  %453 = load float* %arrayidx456.i, align 4, !tbaa !4
  %mul562.i = fmul float %452, %453
  store float %mul562.i, float* %arrayidx456.i, align 4, !tbaa !4
  %454 = load float* %arrayidx490.i, align 4, !tbaa !4
  %mul568.i = fmul float %452, %454
  store float %mul568.i, float* %arrayidx490.i, align 4, !tbaa !4
  %mul574.i = fmul float %451, %452
  store float %mul574.i, float* %arrayidx524.i, align 4, !tbaa !4
  %indvars.iv.next2553.i = add i64 %indvars.iv2552.i, -1
  %455 = trunc i64 %indvars.iv2552.i to i32
  %cmp452.i = icmp sgt i32 %455, 0
  br i1 %cmp452.i, label %if.end556.for.body454_crit_edge.i, label %for.end577.i

if.end556.for.body454_crit_edge.i:                ; preds = %if.end556.i
  %arrayidx456.phi.trans.insert.i = getelementptr inbounds [3 x float]* %tmp.i, i64 0, i64 %indvars.iv.next2553.i
  %.pre2597.i = load float* %arrayidx456.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body454.i

for.end577.i:                                     ; preds = %if.end556.i
  %456 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %arrayidx583.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 0
  %conv584.i = fpext float %401 to double
  %arrayidx587.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 1
  %conv588.i = fpext float %400 to double
  %arrayidx591.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2558.i, i64 2
  %conv592.i = fpext float %399 to double
  br i1 %tobool407.i, label %if.else672.i, label %if.then580.i

if.then580.i:                                     ; preds = %for.end577.i
  %arrayidx595.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 0
  %457 = load float* %arrayidx595.i, align 4, !tbaa !4
  %conv596.i = fpext float %457 to double
  %arrayidx599.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 1
  %458 = load float* %arrayidx599.i, align 4, !tbaa !4
  %conv600.i = fpext float %458 to double
  %arrayidx603.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 2
  %459 = load float* %arrayidx603.i, align 4, !tbaa !4
  %conv604.i = fpext float %459 to double
  %460 = load float* %arraydecay443.i, align 4, !tbaa !4
  %mul.i2263.i = fmul float %460, %460
  %461 = load float* %arrayidx9.i2336.i, align 4, !tbaa !4
  %mul4.i2265.i = fmul float %461, %461
  %add.i2266.i = fadd float %mul.i2263.i, %mul4.i2265.i
  %462 = load float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %mul7.i2268.i = fmul float %462, %462
  %add8.i2269.i = fadd float %add.i2266.i, %mul7.i2268.i
  %conv9.i2270.i = call float @sqrtf(float %add8.i2269.i) #2
  %conv607.i = fpext float %conv9.i2270.i to double
  %463 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arrayidx612.i = getelementptr inbounds [3 x float]* %463, i64 %indvars.iv2558.i, i64 0
  %464 = load float* %arrayidx612.i, align 4, !tbaa !4
  %conv613.i = fpext float %464 to double
  %arrayidx618.i = getelementptr inbounds [3 x float]* %463, i64 %indvars.iv2558.i, i64 1
  %465 = load float* %arrayidx618.i, align 4, !tbaa !4
  %conv619.i = fpext float %465 to double
  %arrayidx624.i = getelementptr inbounds [3 x float]* %463, i64 %indvars.iv2558.i, i64 2
  %466 = load float* %arrayidx624.i, align 4, !tbaa !4
  %conv625.i = fpext float %466 to double
  %467 = load [3 x float]** %x_ref917.i, align 8, !tbaa !0
  %arrayidx630.i = getelementptr inbounds [3 x float]* %467, i64 %indvars.iv2558.i, i64 0
  %468 = load float* %arrayidx630.i, align 4, !tbaa !4
  %conv631.i = fpext float %468 to double
  %arrayidx636.i = getelementptr inbounds [3 x float]* %467, i64 %indvars.iv2558.i, i64 1
  %469 = load float* %arrayidx636.i, align 4, !tbaa !4
  %conv637.i = fpext float %469 to double
  %arrayidx642.i = getelementptr inbounds [3 x float]* %467, i64 %indvars.iv2558.i, i64 2
  %470 = load float* %arrayidx642.i, align 4, !tbaa !4
  %conv643.i = fpext float %470 to double
  %471 = load float* %arraydecay437.i, align 4, !tbaa !4
  %mul.i2248.i = fmul float %471, %471
  %472 = load float* %arrayidx9.i2345.i, align 4, !tbaa !4
  %mul4.i2250.i = fmul float %472, %472
  %add.i2251.i = fadd float %mul.i2248.i, %mul4.i2250.i
  %473 = load float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %mul7.i2253.i = fmul float %473, %473
  %add8.i2254.i = fadd float %add.i2251.i, %mul7.i2253.i
  %conv9.i2255.i = call float @sqrtf(float %add8.i2254.i) #2
  %conv646.i = fpext float %conv9.i2255.i to double
  %474 = load float* %arraydecay348.i, align 4, !tbaa !4
  %conv650.i = fpext float %474 to double
  %475 = load float* %arrayidx4.i2395.i, align 4, !tbaa !4
  %conv654.i = fpext float %475 to double
  %476 = load float* %arrayidx7.i2398.i, align 4, !tbaa !4
  %conv658.i = fpext float %476 to double
  %477 = load float* %arraydecay390.i, align 4, !tbaa !4
  %conv661.i = fpext float %477 to double
  %478 = load float* %244, align 4, !tbaa !4
  %conv664.i = fpext float %478 to double
  %479 = load float* %245, align 4, !tbaa !4
  %conv667.i = fpext float %479 to double
  %480 = load float* %arraydecay450.i, align 4, !tbaa !4
  %mul.i2233.i = fmul float %480, %480
  %481 = load float* %arrayidx9.i2327.i, align 4, !tbaa !4
  %mul4.i2235.i = fmul float %481, %481
  %add.i2236.i = fadd float %mul.i2233.i, %mul4.i2235.i
  %482 = load float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %mul7.i2238.i = fmul float %482, %482
  %add8.i2239.i = fadd float %add.i2236.i, %mul7.i2238.i
  %conv9.i2240.i = call float @sqrtf(float %add8.i2239.i) #2
  %conv670.i = fpext float %conv9.i2240.i to double
  %call671.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %456, i8* getelementptr inbounds ([100 x i8]* @.str23, i64 0, i64 0), double %conv584.i, double %conv588.i, double %conv592.i, double %conv596.i, double %conv600.i, double %conv604.i, double %conv607.i, double %conv613.i, double %conv619.i, double %conv625.i, double %conv631.i, double %conv637.i, double %conv643.i, double %conv646.i, double %conv650.i, double %conv654.i, double %conv658.i, double %conv661.i, double %conv664.i, double %conv667.i, double %conv670.i) #4
  br label %if.end759.i

if.else672.i:                                     ; preds = %for.end577.i
  %483 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %conv687.i = fpext float %483 to double
  %484 = load float* %.pre-phi.i, align 4, !tbaa !4
  %conv690.i = fpext float %484 to double
  %485 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %conv693.i = fpext float %485 to double
  %486 = load float* %arraydecay443.i, align 4, !tbaa !4
  %mul.i2216.i = fmul float %486, %486
  %487 = load float* %arrayidx9.i2336.i, align 4, !tbaa !4
  %mul4.i2218.i = fmul float %487, %487
  %add.i2219.i = fadd float %mul.i2216.i, %mul4.i2218.i
  %488 = load float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %mul7.i2221.i = fmul float %488, %488
  %add8.i2222.i = fadd float %add.i2219.i, %mul7.i2221.i
  %conv9.i2223.i = call float @sqrtf(float %add8.i2222.i) #2
  %conv696.i = fpext float %conv9.i2223.i to double
  %489 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arrayidx701.i = getelementptr inbounds [3 x float]* %489, i64 %indvars.iv2558.i, i64 0
  %490 = load float* %arrayidx701.i, align 4, !tbaa !4
  %conv702.i = fpext float %490 to double
  %arrayidx707.i = getelementptr inbounds [3 x float]* %489, i64 %indvars.iv2558.i, i64 1
  %491 = load float* %arrayidx707.i, align 4, !tbaa !4
  %conv708.i = fpext float %491 to double
  %arrayidx713.i = getelementptr inbounds [3 x float]* %489, i64 %indvars.iv2558.i, i64 2
  %492 = load float* %arrayidx713.i, align 4, !tbaa !4
  %conv714.i = fpext float %492 to double
  %493 = load [3 x float]** %x_ref934.i, align 8, !tbaa !0
  %arrayidx718.i = getelementptr inbounds [3 x float]* %493, i64 0, i64 0
  %494 = load float* %arrayidx718.i, align 4, !tbaa !4
  %conv719.i = fpext float %494 to double
  %arrayidx723.i = getelementptr inbounds [3 x float]* %493, i64 0, i64 1
  %495 = load float* %arrayidx723.i, align 4, !tbaa !4
  %conv724.i = fpext float %495 to double
  %arrayidx728.i = getelementptr inbounds [3 x float]* %493, i64 0, i64 2
  %496 = load float* %arrayidx728.i, align 4, !tbaa !4
  %conv729.i = fpext float %496 to double
  %497 = load float* %arraydecay437.i, align 4, !tbaa !4
  %mul.i2199.i = fmul float %497, %497
  %498 = load float* %arrayidx9.i2345.i, align 4, !tbaa !4
  %mul4.i2201.i = fmul float %498, %498
  %add.i2202.i = fadd float %mul.i2199.i, %mul4.i2201.i
  %499 = load float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %mul7.i2204.i = fmul float %499, %499
  %add8.i2205.i = fadd float %add.i2202.i, %mul7.i2204.i
  %conv9.i2206.i = call float @sqrtf(float %add8.i2205.i) #2
  %conv732.i = fpext float %conv9.i2206.i to double
  %500 = load float* %arraydecay348.i, align 4, !tbaa !4
  %conv736.i = fpext float %500 to double
  %501 = load float* %arrayidx4.i2395.i, align 4, !tbaa !4
  %conv740.i = fpext float %501 to double
  %502 = load float* %arrayidx7.i2398.i, align 4, !tbaa !4
  %conv744.i = fpext float %502 to double
  %503 = load float* %arraydecay390.i, align 4, !tbaa !4
  %conv747.i = fpext float %503 to double
  %504 = load float* %244, align 4, !tbaa !4
  %conv750.i = fpext float %504 to double
  %505 = load float* %245, align 4, !tbaa !4
  %conv753.i = fpext float %505 to double
  %506 = load float* %arraydecay450.i, align 4, !tbaa !4
  %mul.i2182.i = fmul float %506, %506
  %507 = load float* %arrayidx9.i2327.i, align 4, !tbaa !4
  %mul4.i2184.i = fmul float %507, %507
  %add.i2185.i = fadd float %mul.i2182.i, %mul4.i2184.i
  %508 = load float* %arrayidx10.i2328.i, align 4, !tbaa !4
  %mul7.i2187.i = fmul float %508, %508
  %add8.i2188.i = fadd float %add.i2185.i, %mul7.i2187.i
  %conv9.i2189.i = call float @sqrtf(float %add8.i2188.i) #2
  %conv756.i = fpext float %conv9.i2189.i to double
  %call757.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %456, i8* getelementptr inbounds ([100 x i8]* @.str23, i64 0, i64 0), double %conv584.i, double %conv588.i, double %conv592.i, double %conv687.i, double %conv690.i, double %conv693.i, double %conv696.i, double %conv702.i, double %conv708.i, double %conv714.i, double %conv719.i, double %conv724.i, double %conv729.i, double %conv732.i, double %conv736.i, double %conv740.i, double %conv744.i, double %conv747.i, double %conv750.i, double %conv753.i, double %conv756.i) #4
  br label %if.end759.i

if.end759.i:                                      ; preds = %if.else672.i, %if.then580.i, %cos_angle.exit.if.end759_crit_edge.i
  %arrayidx5.i2177.pre-phi.i = phi float* [ %arrayidx5.i2177.pre.i, %cos_angle.exit.if.end759_crit_edge.i ], [ %arrayidx591.i, %if.then580.i ], [ %arrayidx591.i, %if.else672.i ]
  %arrayidx2.i2174.pre-phi.i = phi float* [ %arrayidx2.i2174.pre.i, %cos_angle.exit.if.end759_crit_edge.i ], [ %arrayidx587.i, %if.then580.i ], [ %arrayidx587.i, %if.else672.i ]
  %arraydecay762.pre-phi.i = phi float* [ %arraydecay762.pre.i, %cos_angle.exit.if.end759_crit_edge.i ], [ %arrayidx583.i, %if.then580.i ], [ %arrayidx583.i, %if.else672.i ]
  %509 = load float* %arraydecay762.pre-phi.i, align 4, !tbaa !4
  %510 = load float* %arraydecay348.i, align 4, !tbaa !4
  %add.i2173.i = fadd float %509, %510
  %511 = load float* %arrayidx2.i2174.pre-phi.i, align 4, !tbaa !4
  %512 = load float* %arrayidx4.i2395.i, align 4, !tbaa !4
  %add4.i2176.i = fadd float %511, %512
  %513 = load float* %arrayidx5.i2177.pre-phi.i, align 4, !tbaa !4
  %514 = load float* %arrayidx7.i2398.i, align 4, !tbaa !4
  %add7.i2179.i = fadd float %513, %514
  store float %add.i2173.i, float* %arraydecay762.pre-phi.i, align 4, !tbaa !4
  store float %add4.i2176.i, float* %arrayidx2.i2174.pre-phi.i, align 4, !tbaa !4
  store float %add7.i2179.i, float* %arrayidx5.i2177.pre-phi.i, align 4, !tbaa !4
  %515 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool770.i = icmp eq i32 %515, 0
  br i1 %tobool770.i, label %if.else835.i, label %if.then771.i

if.then771.i:                                     ; preds = %if.end759.i
  %arraydecay774.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 0
  %arraydecay777.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 0
  %516 = load float* %arraydecay774.i, align 4, !tbaa !4
  %517 = load float* %arraydecay777.i, align 4, !tbaa !4
  %add.i2164.i = fadd float %516, %517
  %arrayidx2.i2165.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 1
  %518 = load float* %arrayidx2.i2165.i, align 4, !tbaa !4
  %arrayidx3.i2166.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 1
  %519 = load float* %arrayidx3.i2166.i, align 4, !tbaa !4
  %add4.i2167.i = fadd float %518, %519
  %arrayidx5.i2168.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2558.i, i64 2
  %520 = load float* %arrayidx5.i2168.i, align 4, !tbaa !4
  %arrayidx6.i2169.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2558.i, i64 2
  %521 = load float* %arrayidx6.i2169.i, align 4, !tbaa !4
  %add7.i2170.i = fadd float %520, %521
  store float %add.i2164.i, float* %arraydecay774.i, align 4, !tbaa !4
  store float %add4.i2167.i, float* %arrayidx2.i2165.i, align 4, !tbaa !4
  store float %add7.i2170.i, float* %arrayidx5.i2168.i, align 4, !tbaa !4
  %522 = load float* %arraydecay762.pre-phi.i, align 4, !tbaa !4
  %sub.i2155.i = fsub float %add.i2164.i, %522
  %523 = load float* %arrayidx2.i2174.pre-phi.i, align 4, !tbaa !4
  %sub4.i2158.i = fsub float %add4.i2167.i, %523
  %524 = load float* %arrayidx5.i2177.pre-phi.i, align 4, !tbaa !4
  %sub7.i2161.i = fsub float %add7.i2170.i, %524
  store float %sub.i2155.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2158.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2161.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  br label %for.body791.i

for.body791.i:                                    ; preds = %if.end825.for.body791_crit_edge.i, %if.then771.i
  %525 = phi float [ %sub7.i2161.i, %if.then771.i ], [ %.pre2596.i, %if.end825.for.body791_crit_edge.i ]
  %indvars.iv2554.i = phi i64 [ 2, %if.then771.i ], [ %indvars.iv.next2555.i, %if.end825.for.body791_crit_edge.i ]
  %arrayidx793.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv2554.i
  %conv794.i = fpext float %525 to double
  %arrayidx797.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i
  %arrayidx798.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i, i64 %indvars.iv2554.i
  %526 = load float* %arrayidx798.i, align 4, !tbaa !4
  %conv799.i = fpext float %526 to double
  %mul800.i = fmul double %conv799.i, -5.000000e-01
  %cmp801.i = fcmp olt double %conv794.i, %mul800.i
  br i1 %cmp801.i, label %if.then803.i, label %if.end808.i

if.then803.i:                                     ; preds = %for.body791.i
  %arraydecay807.i = getelementptr inbounds [3 x float]* %arrayidx797.i, i64 0, i64 0
  %527 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %528 = load float* %arraydecay807.i, align 4, !tbaa !4
  %add.i2148.i = fadd float %527, %528
  %529 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2150.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i, i64 1
  %530 = load float* %arrayidx3.i2150.i, align 4, !tbaa !4
  %add4.i2151.i = fadd float %529, %530
  %531 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2153.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i, i64 2
  %532 = load float* %arrayidx6.i2153.i, align 4, !tbaa !4
  %add7.i2154.i = fadd float %531, %532
  store float %add.i2148.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %add4.i2151.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %add7.i2154.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2584.i = load float* %arrayidx793.i, align 4, !tbaa !4
  br label %if.end808.i

if.end808.i:                                      ; preds = %if.then803.i, %for.body791.i
  %533 = phi float [ %.pre2584.i, %if.then803.i ], [ %525, %for.body791.i ]
  %conv811.i = fpext float %533 to double
  %mul817.i = fmul double %conv799.i, 5.000000e-01
  %cmp818.i = fcmp ogt double %conv811.i, %mul817.i
  br i1 %cmp818.i, label %if.then820.i, label %if.end825.i

if.then820.i:                                     ; preds = %if.end808.i
  %arraydecay824.i = getelementptr inbounds [3 x float]* %arrayidx797.i, i64 0, i64 0
  %534 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %535 = load float* %arraydecay824.i, align 4, !tbaa !4
  %sub.i2141.i = fsub float %534, %535
  %536 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2143.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i, i64 1
  %537 = load float* %arrayidx3.i2143.i, align 4, !tbaa !4
  %sub4.i2144.i = fsub float %536, %537
  %538 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2146.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2554.i, i64 2
  %539 = load float* %arrayidx6.i2146.i, align 4, !tbaa !4
  %sub7.i2147.i = fsub float %538, %539
  store float %sub.i2141.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2144.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2147.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2585.i = load float* %arrayidx793.i, align 4, !tbaa !4
  br label %if.end825.i

if.end825.i:                                      ; preds = %if.then820.i, %if.end808.i
  %540 = phi float [ %.pre2585.i, %if.then820.i ], [ %533, %if.end808.i ]
  %arrayidx828.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2554.i
  %541 = load float* %arrayidx828.i, align 4, !tbaa !4
  %mul831.i = fmul float %540, %541
  store float %mul831.i, float* %arrayidx793.i, align 4, !tbaa !4
  %indvars.iv.next2555.i = add i64 %indvars.iv2554.i, -1
  %542 = trunc i64 %indvars.iv2554.i to i32
  %cmp789.i = icmp sgt i32 %542, 0
  br i1 %cmp789.i, label %if.end825.for.body791_crit_edge.i, label %for.inc896.i

if.end825.for.body791_crit_edge.i:                ; preds = %if.end825.i
  %arrayidx793.phi.trans.insert.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next2555.i
  %.pre2596.i = load float* %arrayidx793.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body791.i

if.else835.i:                                     ; preds = %if.end759.i
  %543 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %544 = load float* %arraydecay390.i, align 4, !tbaa !4
  %add.i2132.i = fadd float %543, %544
  %545 = load float* %.pre-phi.i, align 4, !tbaa !4
  %546 = load float* %244, align 4, !tbaa !4
  %add4.i2135.i = fadd float %545, %546
  %547 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %548 = load float* %245, align 4, !tbaa !4
  %add7.i2138.i = fadd float %547, %548
  store float %add.i2132.i, float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  store float %add4.i2135.i, float* %.pre-phi.i, align 4, !tbaa !4
  store float %add7.i2138.i, float* %.pre-phi2600.i, align 4, !tbaa !4
  %549 = load float* %arraydecay762.pre-phi.i, align 4, !tbaa !4
  %sub.i2123.i = fsub float %add.i2132.i, %549
  %550 = load float* %arrayidx2.i2174.pre-phi.i, align 4, !tbaa !4
  %sub4.i2126.i = fsub float %add4.i2135.i, %550
  %551 = load float* %arrayidx5.i2177.pre-phi.i, align 4, !tbaa !4
  %sub7.i2129.i = fsub float %add7.i2138.i, %551
  store float %sub.i2123.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2126.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2129.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  br label %for.body851.i

for.body851.i:                                    ; preds = %if.end885.for.body851_crit_edge.i, %if.else835.i
  %552 = phi float [ %sub7.i2129.i, %if.else835.i ], [ %.pre2595.i, %if.end885.for.body851_crit_edge.i ]
  %indvars.iv2556.i = phi i64 [ 2, %if.else835.i ], [ %indvars.iv.next2557.i, %if.end885.for.body851_crit_edge.i ]
  %arrayidx853.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv2556.i
  %conv854.i = fpext float %552 to double
  %arrayidx857.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i
  %arrayidx858.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i, i64 %indvars.iv2556.i
  %553 = load float* %arrayidx858.i, align 4, !tbaa !4
  %conv859.i = fpext float %553 to double
  %mul860.i = fmul double %conv859.i, -5.000000e-01
  %cmp861.i = fcmp olt double %conv854.i, %mul860.i
  br i1 %cmp861.i, label %if.then863.i, label %if.end868.i

if.then863.i:                                     ; preds = %for.body851.i
  %arraydecay867.i = getelementptr inbounds [3 x float]* %arrayidx857.i, i64 0, i64 0
  %554 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %555 = load float* %arraydecay867.i, align 4, !tbaa !4
  %add.i2116.i = fadd float %554, %555
  %556 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2118.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i, i64 1
  %557 = load float* %arrayidx3.i2118.i, align 4, !tbaa !4
  %add4.i2119.i = fadd float %556, %557
  %558 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2121.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i, i64 2
  %559 = load float* %arrayidx6.i2121.i, align 4, !tbaa !4
  %add7.i2122.i = fadd float %558, %559
  store float %add.i2116.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %add4.i2119.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %add7.i2122.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2582.i = load float* %arrayidx853.i, align 4, !tbaa !4
  br label %if.end868.i

if.end868.i:                                      ; preds = %if.then863.i, %for.body851.i
  %560 = phi float [ %.pre2582.i, %if.then863.i ], [ %552, %for.body851.i ]
  %conv871.i = fpext float %560 to double
  %mul877.i = fmul double %conv859.i, 5.000000e-01
  %cmp878.i = fcmp ogt double %conv871.i, %mul877.i
  br i1 %cmp878.i, label %if.then880.i, label %if.end885.i

if.then880.i:                                     ; preds = %if.end868.i
  %arraydecay884.i = getelementptr inbounds [3 x float]* %arrayidx857.i, i64 0, i64 0
  %561 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %562 = load float* %arraydecay884.i, align 4, !tbaa !4
  %sub.i2109.i = fsub float %561, %562
  %563 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2111.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i, i64 1
  %564 = load float* %arrayidx3.i2111.i, align 4, !tbaa !4
  %sub4.i2112.i = fsub float %563, %564
  %565 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2114.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2556.i, i64 2
  %566 = load float* %arrayidx6.i2114.i, align 4, !tbaa !4
  %sub7.i2115.i = fsub float %565, %566
  store float %sub.i2109.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2112.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2115.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2583.i = load float* %arrayidx853.i, align 4, !tbaa !4
  br label %if.end885.i

if.end885.i:                                      ; preds = %if.then880.i, %if.end868.i
  %567 = phi float [ %.pre2583.i, %if.then880.i ], [ %560, %if.end868.i ]
  %arrayidx888.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2556.i
  %568 = load float* %arrayidx888.i, align 4, !tbaa !4
  %mul891.i = fmul float %567, %568
  store float %mul891.i, float* %arrayidx853.i, align 4, !tbaa !4
  %indvars.iv.next2557.i = add i64 %indvars.iv2556.i, -1
  %569 = trunc i64 %indvars.iv2556.i to i32
  %cmp849.i = icmp sgt i32 %569, 0
  br i1 %cmp849.i, label %if.end885.for.body851_crit_edge.i, label %for.inc896.i

if.end885.for.body851_crit_edge.i:                ; preds = %if.end885.i
  %arrayidx853.phi.trans.insert.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next2557.i
  %.pre2595.i = load float* %arrayidx853.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body851.i

for.inc896.i:                                     ; preds = %if.end885.i, %if.end825.i
  %indvars.iv.next2559.i = add i64 %indvars.iv2558.i, 1
  %570 = load i32* %n107, align 4, !tbaa !3
  %571 = trunc i64 %indvars.iv.next2559.i to i32
  %cmp58.i = icmp slt i32 %571, %570
  br i1 %cmp58.i, label %for.body59.i, label %for.cond899.loopexit.i

for.cond899.loopexit.i:                           ; preds = %for.inc896.i
  %cmp9022511.i = icmp sgt i32 %570, 0
  br i1 %cmp9022511.i, label %for.body904.i, label %if.end1063.thread.i

for.body904.i:                                    ; preds = %for.cond899.loopexit.i, %land.end1043.i.for.body904.i_crit_edge
  %572 = phi i32 [ %.pre780, %land.end1043.i.for.body904.i_crit_edge ], [ %515, %for.cond899.loopexit.i ]
  %573 = phi i32 [ %643, %land.end1043.i.for.body904.i_crit_edge ], [ %570, %for.cond899.loopexit.i ]
  %indvars.iv2562.i = phi i64 [ %indvars.iv.next2563.i, %land.end1043.i.for.body904.i_crit_edge ], [ 0, %for.cond899.loopexit.i ]
  %bConverged.12513.i = phi i32 [ %land.ext.i, %land.end1043.i.for.body904.i_crit_edge ], [ 1, %for.cond899.loopexit.i ]
  %i.32512.i = phi i32 [ %phitmp2601.i, %land.end1043.i.for.body904.i_crit_edge ], [ 1, %for.cond899.loopexit.i ]
  %tobool906.i = icmp eq i32 %572, 0
  br i1 %tobool906.i, label %if.else926.i, label %if.then907.i

if.then907.i:                                     ; preds = %for.body904.i
  %arraydecay910.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2562.i, i64 0
  %arraydecay913.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 0
  %574 = load float* %arraydecay910.i, align 4, !tbaa !4
  %575 = load float* %arraydecay913.i, align 4, !tbaa !4
  %sub.i2100.i = fsub float %574, %575
  %arrayidx2.i2101.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2562.i, i64 1
  %576 = load float* %arrayidx2.i2101.i, align 4, !tbaa !4
  %arrayidx3.i2102.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 1
  %577 = load float* %arrayidx3.i2102.i, align 4, !tbaa !4
  %sub4.i2103.i = fsub float %576, %577
  %arrayidx5.i2104.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2562.i, i64 2
  %578 = load float* %arrayidx5.i2104.i, align 4, !tbaa !4
  %arrayidx6.i2105.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 2
  %579 = load float* %arrayidx6.i2105.i, align 4, !tbaa !4
  %sub7.i2106.i = fsub float %578, %579
  store float %sub.i2100.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2103.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2106.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %580 = load [3 x float]** %x_ref917.i, align 8, !tbaa !0
  %arraydecay919.i = getelementptr inbounds [3 x float]* %580, i64 %indvars.iv2562.i, i64 0
  %581 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay924.i = getelementptr inbounds [3 x float]* %581, i64 %indvars.iv2562.i, i64 0
  %582 = load float* %arraydecay919.i, align 4, !tbaa !4
  %583 = load float* %arraydecay924.i, align 4, !tbaa !4
  %sub.i2091.i = fsub float %582, %583
  %arrayidx2.i2092.i = getelementptr inbounds [3 x float]* %580, i64 %indvars.iv2562.i, i64 1
  %584 = load float* %arrayidx2.i2092.i, align 4, !tbaa !4
  %arrayidx3.i2093.i = getelementptr inbounds [3 x float]* %581, i64 %indvars.iv2562.i, i64 1
  %585 = load float* %arrayidx3.i2093.i, align 4, !tbaa !4
  %sub4.i2094.i = fsub float %584, %585
  %arrayidx5.i2095.i = getelementptr inbounds [3 x float]* %580, i64 %indvars.iv2562.i, i64 2
  %586 = load float* %arrayidx5.i2095.i, align 4, !tbaa !4
  %arrayidx6.i2096.i = getelementptr inbounds [3 x float]* %581, i64 %indvars.iv2562.i, i64 2
  %587 = load float* %arrayidx6.i2096.i, align 4, !tbaa !4
  %sub7.i2097.i = fsub float %586, %587
  br label %for.cond944.preheader.i

if.else926.i:                                     ; preds = %for.body904.i
  %arraydecay931.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 0
  %588 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %589 = load float* %arraydecay931.i, align 4, !tbaa !4
  %sub.i2082.i = fsub float %588, %589
  %590 = load float* %.pre-phi.i, align 4, !tbaa !4
  %arrayidx3.i2084.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 1
  %591 = load float* %arrayidx3.i2084.i, align 4, !tbaa !4
  %sub4.i2085.i = fsub float %590, %591
  %592 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %arrayidx6.i2087.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2562.i, i64 2
  %593 = load float* %arrayidx6.i2087.i, align 4, !tbaa !4
  %sub7.i2088.i = fsub float %592, %593
  store float %sub.i2082.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2085.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2088.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %594 = load [3 x float]** %x_ref934.i, align 8, !tbaa !0
  %arraydecay936.i = getelementptr inbounds [3 x float]* %594, i64 0, i64 0
  %595 = load [3 x float]** %x_ref939.i, align 8, !tbaa !0
  %arraydecay941.i = getelementptr inbounds [3 x float]* %595, i64 %indvars.iv2562.i, i64 0
  %596 = load float* %arraydecay936.i, align 4, !tbaa !4
  %597 = load float* %arraydecay941.i, align 4, !tbaa !4
  %sub.i2073.i = fsub float %596, %597
  %arrayidx2.i2074.i = getelementptr inbounds [3 x float]* %594, i64 0, i64 1
  %598 = load float* %arrayidx2.i2074.i, align 4, !tbaa !4
  %arrayidx3.i2075.i = getelementptr inbounds [3 x float]* %595, i64 %indvars.iv2562.i, i64 1
  %599 = load float* %arrayidx3.i2075.i, align 4, !tbaa !4
  %sub4.i2076.i = fsub float %598, %599
  %arrayidx5.i2077.i = getelementptr inbounds [3 x float]* %594, i64 0, i64 2
  %600 = load float* %arrayidx5.i2077.i, align 4, !tbaa !4
  %arrayidx6.i2078.i = getelementptr inbounds [3 x float]* %595, i64 %indvars.iv2562.i, i64 2
  %601 = load float* %arrayidx6.i2078.i, align 4, !tbaa !4
  %sub7.i2079.i = fsub float %600, %601
  br label %for.cond944.preheader.i

for.cond944.preheader.i:                          ; preds = %if.else926.i, %if.then907.i
  %storemerge2605.i = phi float [ %sub.i2091.i, %if.then907.i ], [ %sub.i2073.i, %if.else926.i ]
  %storemerge2602.i = phi float [ %sub4.i2094.i, %if.then907.i ], [ %sub4.i2076.i, %if.else926.i ]
  %storemerge.i = phi float [ %sub7.i2097.i, %if.then907.i ], [ %sub7.i2079.i, %if.else926.i ]
  %602 = phi float [ %sub7.i2106.i, %if.then907.i ], [ %sub7.i2088.i, %if.else926.i ]
  store float %storemerge2605.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %storemerge2602.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %storemerge.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  br label %for.body947.i

for.body947.i:                                    ; preds = %if.end1015.for.body947_crit_edge.i, %for.cond944.preheader.i
  %603 = phi float [ %602, %for.cond944.preheader.i ], [ %.pre2592.i, %if.end1015.for.body947_crit_edge.i ]
  %indvars.iv2560.i = phi i64 [ 2, %for.cond944.preheader.i ], [ %indvars.iv.next2561.i, %if.end1015.for.body947_crit_edge.i ]
  %arrayidx949.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv2560.i
  %conv950.i = fpext float %603 to double
  %arrayidx953.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i
  %arrayidx954.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 %indvars.iv2560.i
  %604 = load float* %arrayidx954.i, align 4, !tbaa !4
  %conv955.i = fpext float %604 to double
  %mul956.i = fmul double %conv955.i, -5.000000e-01
  %cmp957.i = fcmp olt double %conv950.i, %mul956.i
  br i1 %cmp957.i, label %if.then959.i, label %if.end964.i

if.then959.i:                                     ; preds = %for.body947.i
  %arraydecay963.i = getelementptr inbounds [3 x float]* %arrayidx953.i, i64 0, i64 0
  %605 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %606 = load float* %arraydecay963.i, align 4, !tbaa !4
  %add.i2066.i = fadd float %605, %606
  %607 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2068.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 1
  %608 = load float* %arrayidx3.i2068.i, align 4, !tbaa !4
  %add4.i2069.i = fadd float %607, %608
  %609 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2071.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 2
  %610 = load float* %arrayidx6.i2071.i, align 4, !tbaa !4
  %add7.i2072.i = fadd float %609, %610
  store float %add.i2066.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %add4.i2069.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %add7.i2072.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %.pre2574.i = load float* %arrayidx949.i, align 4, !tbaa !4
  br label %if.end964.i

if.end964.i:                                      ; preds = %if.then959.i, %for.body947.i
  %611 = phi float [ %.pre2574.i, %if.then959.i ], [ %603, %for.body947.i ]
  %conv967.i = fpext float %611 to double
  %mul973.i = fmul double %conv955.i, 5.000000e-01
  %cmp974.i = fcmp ogt double %conv967.i, %mul973.i
  br i1 %cmp974.i, label %if.then976.i, label %if.end981.i

if.then976.i:                                     ; preds = %if.end964.i
  %arraydecay980.i = getelementptr inbounds [3 x float]* %arrayidx953.i, i64 0, i64 0
  %612 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %613 = load float* %arraydecay980.i, align 4, !tbaa !4
  %sub.i2059.i = fsub float %612, %613
  %614 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %arrayidx3.i2061.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 1
  %615 = load float* %arrayidx3.i2061.i, align 4, !tbaa !4
  %sub4.i2062.i = fsub float %614, %615
  %616 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %arrayidx6.i2064.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 2
  %617 = load float* %arrayidx6.i2064.i, align 4, !tbaa !4
  %sub7.i2065.i = fsub float %616, %617
  store float %sub.i2059.i, float* %arraydecay1058.i, align 4, !tbaa !4
  store float %sub4.i2062.i, float* %arrayidx2.i1983.i, align 4, !tbaa !4
  store float %sub7.i2065.i, float* %arrayidx5.i1986.i, align 4, !tbaa !4
  br label %if.end981.i

if.end981.i:                                      ; preds = %if.end964.i, %if.then976.i
  %arrayidx983.i = getelementptr inbounds [3 x float]* %ref_ij.i, i64 0, i64 %indvars.iv2560.i
  %618 = load float* %arrayidx983.i, align 4, !tbaa !4
  %conv984.i = fpext float %618 to double
  %cmp991.i = fcmp olt double %conv984.i, %mul956.i
  br i1 %cmp991.i, label %if.then993.i, label %if.end998.i

if.then993.i:                                     ; preds = %if.end981.i
  %arraydecay997.i = getelementptr inbounds [3 x float]* %arrayidx953.i, i64 0, i64 0
  %619 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %620 = load float* %arraydecay997.i, align 4, !tbaa !4
  %add.i2052.i = fadd float %619, %620
  %621 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %arrayidx3.i2054.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 1
  %622 = load float* %arrayidx3.i2054.i, align 4, !tbaa !4
  %add4.i2055.i = fadd float %621, %622
  %623 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %arrayidx6.i2057.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 2
  %624 = load float* %arrayidx6.i2057.i, align 4, !tbaa !4
  %add7.i2058.i = fadd float %623, %624
  store float %add.i2052.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %add4.i2055.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %add7.i2058.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %.pre2575.i = load float* %arrayidx983.i, align 4, !tbaa !4
  br label %if.end998.i

if.end998.i:                                      ; preds = %if.then993.i, %if.end981.i
  %625 = phi float [ %.pre2575.i, %if.then993.i ], [ %618, %if.end981.i ]
  %conv1001.i = fpext float %625 to double
  %cmp1008.i = fcmp ogt double %conv1001.i, %mul973.i
  br i1 %cmp1008.i, label %if.then1010.i, label %if.end1015.i

if.then1010.i:                                    ; preds = %if.end998.i
  %arraydecay1014.i = getelementptr inbounds [3 x float]* %arrayidx953.i, i64 0, i64 0
  %626 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %627 = load float* %arraydecay1014.i, align 4, !tbaa !4
  %sub.i2045.i = fsub float %626, %627
  %628 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %arrayidx3.i2047.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 1
  %629 = load float* %arrayidx3.i2047.i, align 4, !tbaa !4
  %sub4.i2048.i = fsub float %628, %629
  %630 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %arrayidx6.i2050.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv2560.i, i64 2
  %631 = load float* %arrayidx6.i2050.i, align 4, !tbaa !4
  %sub7.i2051.i = fsub float %630, %631
  store float %sub.i2045.i, float* %arraydecay1055.i, align 4, !tbaa !4
  store float %sub4.i2048.i, float* %arrayidx2.i1995.i, align 4, !tbaa !4
  store float %sub7.i2051.i, float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %.pre2576.i = load float* %arrayidx983.i, align 4, !tbaa !4
  br label %if.end1015.i

if.end1015.i:                                     ; preds = %if.end998.i, %if.then1010.i
  %632 = phi float [ %.pre2576.i, %if.then1010.i ], [ %625, %if.end998.i ]
  %arrayidx1018.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2560.i
  %633 = load float* %arrayidx1018.i, align 4, !tbaa !4
  %mul1021.i = fmul float %632, %633
  store float %mul1021.i, float* %arrayidx983.i, align 4, !tbaa !4
  %634 = load float* %arrayidx949.i, align 4, !tbaa !4
  %mul1027.i = fmul float %633, %634
  store float %mul1027.i, float* %arrayidx949.i, align 4, !tbaa !4
  %indvars.iv.next2561.i = add i64 %indvars.iv2560.i, -1
  %635 = trunc i64 %indvars.iv2560.i to i32
  %cmp945.i = icmp sgt i32 %635, 0
  br i1 %cmp945.i, label %if.end1015.for.body947_crit_edge.i, label %for.end1030.i

if.end1015.for.body947_crit_edge.i:               ; preds = %if.end1015.i
  %arrayidx949.phi.trans.insert.i = getelementptr inbounds [3 x float]* %unc_ij.i, i64 0, i64 %indvars.iv.next2561.i
  %.pre2592.i = load float* %arrayidx949.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body947.i

for.end1030.i:                                    ; preds = %if.end1015.i
  %tobool1031.i = icmp eq i32 %bConverged.12513.i, 0
  br i1 %tobool1031.i, label %land.end1043.i, label %land.rhs1032.i

land.rhs1032.i:                                   ; preds = %for.end1030.i
  %636 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %mul.i2028.i = fmul float %636, %636
  %637 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %mul4.i2030.i = fmul float %637, %637
  %add.i2031.i = fadd float %mul.i2028.i, %mul4.i2030.i
  %638 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %mul7.i2033.i = fmul float %638, %638
  %add8.i2034.i = fadd float %add.i2031.i, %mul7.i2033.i
  %conv9.i2035.i = call float @sqrtf(float %add8.i2034.i) #2
  %639 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %mul.i2011.i = fmul float %639, %639
  %640 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %mul4.i2013.i = fmul float %640, %640
  %add.i2014.i = fadd float %mul.i2011.i, %mul4.i2013.i
  %641 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %mul7.i2016.i = fmul float %641, %641
  %add8.i2017.i = fadd float %add.i2014.i, %mul7.i2016.i
  %conv9.i2018.i = call float @sqrtf(float %add8.i2017.i) #2
  %sub1037.i = fsub float %conv9.i2035.i, %conv9.i2018.i
  %fabsf.i = call float @fabsf(float %sub1037.i) #5
  %642 = load float* %constr_tol.i, align 4, !tbaa !4
  %cmp1041.i = fcmp olt float %fabsf.i, %642
  %.pre2577.i = load i32* %n107, align 4, !tbaa !3
  br label %land.end1043.i

land.end1043.i:                                   ; preds = %land.rhs1032.i, %for.end1030.i
  %643 = phi i32 [ %573, %for.end1030.i ], [ %.pre2577.i, %land.rhs1032.i ]
  %644 = phi i1 [ false, %for.end1030.i ], [ %cmp1041.i, %land.rhs1032.i ]
  %indvars.iv.next2563.i = add i64 %indvars.iv2562.i, 1
  %645 = trunc i64 %indvars.iv.next2563.i to i32
  %cmp902.i = icmp slt i32 %645, %643
  br i1 %cmp902.i, label %land.end1043.i.for.body904.i_crit_edge, label %for.end1046.i

land.end1043.i.for.body904.i_crit_edge:           ; preds = %land.end1043.i
  %phitmp2601.i = add i32 %i.32512.i, 1
  %land.ext.i = zext i1 %644 to i32
  %.pre780 = load i32* %bCyl128, align 4, !tbaa !3
  br label %for.body904.i

if.end1063.thread.i:                              ; preds = %if.end1063.for.cond55.preheader_crit_edge.i, %for.cond899.loopexit.i, %while.cond.preheader.i632
  %n.02516.i.lcssa = phi i32 [ 0, %while.cond.preheader.i632 ], [ %n.02516.i703, %for.cond899.loopexit.i ], [ %inc1064.i, %if.end1063.for.cond55.preheader_crit_edge.i ]
  %inc10642611.i = add nsw i32 %n.02516.i.lcssa, 1
  br label %while.end.i

for.end1046.i:                                    ; preds = %land.end1043.i
  %phitmp.i = xor i1 %644, true
  %646 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool1048.i = icmp ne i32 %646, 0
  %or.cond1853.i = and i1 %tobool1048.i, %phitmp.i
  br i1 %or.cond1853.i, label %if.then1051.i, label %if.end1063.i

if.then1051.i:                                    ; preds = %for.end1046.i
  %647 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %idxprom1052.i = sext i32 %i.32512.i to i64
  %648 = load i8*** %grps.i, align 8, !tbaa !0
  %arrayidx1054.i = getelementptr inbounds i8** %648, i64 %idxprom1052.i
  %649 = load i8** %arrayidx1054.i, align 8, !tbaa !0
  %650 = load float* %arraydecay1055.i, align 4, !tbaa !4
  %mul.i1994.i = fmul float %650, %650
  %651 = load float* %arrayidx2.i1995.i, align 4, !tbaa !4
  %mul4.i1996.i = fmul float %651, %651
  %add.i1997.i = fadd float %mul.i1994.i, %mul4.i1996.i
  %652 = load float* %arrayidx5.i1998.i, align 4, !tbaa !4
  %mul7.i1999.i = fmul float %652, %652
  %add8.i2000.i = fadd float %add.i1997.i, %mul7.i1999.i
  %conv9.i2001.i = call float @sqrtf(float %add8.i2000.i) #2
  %conv1057.i = fpext float %conv9.i2001.i to double
  %653 = load float* %arraydecay1058.i, align 4, !tbaa !4
  %mul.i1982.i = fmul float %653, %653
  %654 = load float* %arrayidx2.i1983.i, align 4, !tbaa !4
  %mul4.i1984.i = fmul float %654, %654
  %add.i1985.i = fadd float %mul.i1982.i, %mul4.i1984.i
  %655 = load float* %arrayidx5.i1986.i, align 4, !tbaa !4
  %mul7.i1987.i = fmul float %655, %655
  %add8.i1988.i = fadd float %add.i1985.i, %mul7.i1987.i
  %conv9.i1989.i = call float @sqrtf(float %add8.i1988.i) #2
  %conv1060.i = fpext float %conv9.i1989.i to double
  %call1061.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %647, i8* getelementptr inbounds ([61 x i8]* @.str24, i64 0, i64 0), i32 %i.32512.i, i8* %649, double %conv1057.i, double %conv1060.i) #4
  br label %if.end1063.i

if.end1063.i:                                     ; preds = %if.then1051.i, %for.end1046.i
  %inc1064.i = add nsw i32 %n.02516.i703, 1
  %cmp54.i = icmp slt i32 %inc1064.i, 1000
  %or.cond.i = and i1 %cmp54.i, %phitmp.i
  br i1 %or.cond.i, label %if.end1063.for.cond55.preheader_crit_edge.i, label %while.end.i

if.end1063.for.cond55.preheader_crit_edge.i:      ; preds = %if.end1063.i
  %.pre2590.i = load i32* %n107, align 4, !tbaa !3
  %cmp582508.i = icmp sgt i32 %.pre2590.i, 0
  br i1 %cmp582508.i, label %for.body59.i.preheader, label %if.end1063.thread.i

while.end.i:                                      ; preds = %if.end1063.i, %if.end1063.thread.i
  %n.02516.i701 = phi i32 [ %n.02516.i.lcssa, %if.end1063.thread.i ], [ %n.02516.i703, %if.end1063.i ]
  %inc10642614.i = phi i32 [ %inc10642611.i, %if.end1063.thread.i ], [ %inc1064.i, %if.end1063.i ]
  %cmp1065.i = icmp sgt i32 %n.02516.i701, 999
  br i1 %cmp1065.i, label %if.then1067.i, label %for.cond1069.preheader.i

if.then1067.i:                                    ; preds = %while.end.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str25, i64 0, i64 0)) #4
  br label %for.cond1069.preheader.i

for.cond1069.preheader.i:                         ; preds = %while.end.i, %if.then1067.i
  %656 = load i32* %n107, align 4, !tbaa !3
  %cmp10722501.i = icmp sgt i32 %656, 0
  br i1 %cmp10722501.i, label %for.body1074.lr.ph.i, label %for.end1176.i

for.body1074.lr.ph.i:                             ; preds = %for.cond1069.preheader.i
  %x_unc1080.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %f.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %ngx.i642 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx.i643 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %massT.i644 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %arrayidx1092.i676 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  br label %for.body1074.i

for.body1074.i:                                   ; preds = %for.inc1174.i, %for.body1074.lr.ph.i
  %indvars.iv2546.i = phi i64 [ 0, %for.body1074.lr.ph.i ], [ %indvars.iv.next2547.i, %for.inc1174.i ]
  %arraydecay1077.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2546.i, i64 0
  %657 = load [3 x float]** %x_unc1080.i, align 8, !tbaa !0
  %arraydecay1082.i = getelementptr inbounds [3 x float]* %657, i64 %indvars.iv2546.i, i64 0
  %arraydecay1085.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2546.i, i64 0
  %658 = load float* %arraydecay1077.i, align 4, !tbaa !4
  %659 = load float* %arraydecay1082.i, align 4, !tbaa !4
  %sub.i1973.i = fsub float %658, %659
  %arrayidx2.i1974.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2546.i, i64 1
  %660 = load float* %arrayidx2.i1974.i, align 4, !tbaa !4
  %arrayidx3.i1975.i = getelementptr inbounds [3 x float]* %657, i64 %indvars.iv2546.i, i64 1
  %661 = load float* %arrayidx3.i1975.i, align 4, !tbaa !4
  %sub4.i1976.i = fsub float %660, %661
  %arrayidx5.i1977.i = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv2546.i, i64 2
  %662 = load float* %arrayidx5.i1977.i, align 4, !tbaa !4
  %arrayidx6.i1978.i = getelementptr inbounds [3 x float]* %657, i64 %indvars.iv2546.i, i64 2
  %663 = load float* %arrayidx6.i1978.i, align 4, !tbaa !4
  %sub7.i1979.i = fsub float %662, %663
  store float %sub.i1973.i, float* %arraydecay1085.i, align 4, !tbaa !4
  %arrayidx9.i1980.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2546.i, i64 1
  store float %sub4.i1976.i, float* %arrayidx9.i1980.i, align 4, !tbaa !4
  %arrayidx10.i1981.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2546.i, i64 2
  store float %sub7.i1979.i, float* %arrayidx10.i1981.i, align 4, !tbaa !4
  %664 = load float* %arrayidx1092.i676, align 4, !tbaa !4
  %mul1097.i678 = fmul float %sub.i1973.i, %664
  store float %mul1097.i678, float* %arraydecay1085.i, align 4, !tbaa !4
  br label %for.body1089.for.body1089_crit_edge.i

for.body1089.for.body1089_crit_edge.i:            ; preds = %for.body1089.for.body1089_crit_edge.i.for.body1089.for.body1089_crit_edge.i_crit_edge, %for.body1074.i
  %.pre2591.i = phi float [ %sub4.i1976.i, %for.body1074.i ], [ %.pre2591.i.pre, %for.body1089.for.body1089_crit_edge.i.for.body1089.for.body1089_crit_edge.i_crit_edge ]
  %indvars.iv.next2541.i679 = phi i64 [ 1, %for.body1074.i ], [ %indvars.iv.next2541.i, %for.body1089.for.body1089_crit_edge.i.for.body1089.for.body1089_crit_edge.i_crit_edge ]
  %arrayidx1096.phi.trans.insert.i = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2546.i, i64 %indvars.iv.next2541.i679
  %arrayidx1092.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.next2541.i679
  %665 = load float* %arrayidx1092.i, align 4, !tbaa !4
  %mul1097.i = fmul float %.pre2591.i, %665
  store float %mul1097.i, float* %arrayidx1096.phi.trans.insert.i, align 4, !tbaa !4
  %indvars.iv.next2541.i = add i64 %indvars.iv.next2541.i679, 1
  %lftr.wideiv745 = trunc i64 %indvars.iv.next2541.i to i32
  %exitcond746 = icmp eq i32 %lftr.wideiv745, 3
  br i1 %exitcond746, label %for.end1100.i, label %for.body1089.for.body1089_crit_edge.i.for.body1089.for.body1089_crit_edge.i_crit_edge

for.body1089.for.body1089_crit_edge.i.for.body1089.for.body1089_crit_edge.i_crit_edge: ; preds = %for.body1089.for.body1089_crit_edge.i
  %arrayidx1096.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds [3 x float]* %222, i64 %indvars.iv2546.i, i64 %indvars.iv.next2541.i
  %.pre2591.i.pre = load float* %arrayidx1096.phi.trans.insert.i.phi.trans.insert, align 4, !tbaa !4
  br label %for.body1089.for.body1089_crit_edge.i

for.end1100.i:                                    ; preds = %for.body1089.for.body1089_crit_edge.i
  %666 = load float** %tmass.i631, align 8, !tbaa !0
  %arrayidx1104.i = getelementptr inbounds float* %666, i64 %indvars.iv2546.i
  %667 = load float* %arrayidx1104.i, align 4, !tbaa !4
  %div1106.i = fdiv float %667, %243
  %668 = load float* %arraydecay1085.i, align 4, !tbaa !4
  %mul.i1966.i = fmul float %div1106.i, %668
  %669 = load float* %arrayidx9.i1980.i, align 4, !tbaa !4
  %mul3.i1968.i = fmul float %div1106.i, %669
  %670 = load float* %arrayidx10.i1981.i, align 4, !tbaa !4
  %mul6.i1971.i = fmul float %div1106.i, %670
  %mul.i1958.i = fmul float %mul.i1966.i, %mul.i1966.i
  %mul4.i.i645 = fmul float %mul3.i1968.i, %mul3.i1968.i
  %add.i1960.i = fadd float %mul.i1958.i, %mul4.i.i645
  %mul7.i.i646 = fmul float %mul6.i1971.i, %mul6.i1971.i
  %add8.i.i647 = fadd float %mul7.i.i646, %add.i1960.i
  %conv9.i.i648 = call float @sqrtf(float %add8.i.i647) #2
  %arrayidx1115.i = getelementptr inbounds float* %226, i64 %indvars.iv2546.i
  %671 = load float* %arrayidx1115.i, align 4, !tbaa !4
  %672 = fmul float %conv9.i.i648, %671
  %mul1116.i = fsub float -0.000000e+00, %672
  %673 = load [3 x float]** %f.i, align 8, !tbaa !0
  %arrayidx1120.i = getelementptr inbounds [3 x float]* %673, i64 %indvars.iv2546.i, i64 2
  store float %mul1116.i, float* %arrayidx1120.i, align 4, !tbaa !4
  %674 = load [3 x float]** %x_con101.i, align 8, !tbaa !0
  %arraydecay1128.i = getelementptr inbounds [3 x float]* %674, i64 %indvars.iv2546.i, i64 0
  %675 = load float* %arraydecay1077.i, align 4, !tbaa !4
  store float %675, float* %arraydecay1128.i, align 4, !tbaa !4
  %676 = load float* %arrayidx2.i1974.i, align 4, !tbaa !4
  %arrayidx3.i1955.i = getelementptr inbounds [3 x float]* %674, i64 %indvars.iv2546.i, i64 1
  store float %676, float* %arrayidx3.i1955.i, align 4, !tbaa !4
  %677 = load float* %arrayidx5.i1977.i, align 4, !tbaa !4
  %arrayidx5.i1957.i = getelementptr inbounds [3 x float]* %674, i64 %indvars.iv2546.i, i64 2
  store float %677, float* %arrayidx5.i1957.i, align 4, !tbaa !4
  %678 = load i32** %ngx.i642, align 8, !tbaa !0
  %arrayidx11332492.i = getelementptr inbounds i32* %678, i64 %indvars.iv2546.i
  %679 = load i32* %arrayidx11332492.i, align 4, !tbaa !3
  %cmp11342493.i = icmp sgt i32 %679, 0
  br i1 %cmp11342493.i, label %for.body1136.lr.ph.i, label %for.end1162.i

for.body1136.lr.ph.i:                             ; preds = %for.end1100.i
  %680 = load i32*** %idx.i643, align 8, !tbaa !0
  %arrayidx1140.i = getelementptr inbounds i32** %680, i64 %indvars.iv2546.i
  %681 = load i32** %arrayidx1140.i, align 8, !tbaa !0
  %682 = load float** %massT.i644, align 8, !tbaa !0
  %.pre2571.i = load float* %arraydecay1085.i, align 4, !tbaa !4
  %.pre2572.i = load float* %arrayidx9.i1980.i, align 4, !tbaa !4
  %.pre2573.i = load float* %arrayidx10.i1981.i, align 4, !tbaa !4
  br label %for.body1136.i

for.body1136.i:                                   ; preds = %for.body1136.i, %for.body1136.lr.ph.i
  %683 = phi float [ %.pre2573.i, %for.body1136.lr.ph.i ], [ %693, %for.body1136.i ]
  %684 = phi float [ %.pre2572.i, %for.body1136.lr.ph.i ], [ %692, %for.body1136.i ]
  %685 = phi float [ %.pre2571.i, %for.body1136.lr.ph.i ], [ %691, %for.body1136.i ]
  %indvars.iv2544.i = phi i64 [ 0, %for.body1136.lr.ph.i ], [ %indvars.iv.next2545.i, %for.body1136.i ]
  %sum.sroa.0.0.load245124642496.i = phi float [ 0.000000e+00, %for.body1136.lr.ph.i ], [ %add.i1927.i, %for.body1136.i ]
  %sum.sroa.1.4.load245624672495.i = phi float [ 0.000000e+00, %for.body1136.lr.ph.i ], [ %add4.i1930.i, %for.body1136.i ]
  %sum.sroa.2.8.load246124702494.i = phi float [ 0.000000e+00, %for.body1136.lr.ph.i ], [ %add7.i1933.i, %for.body1136.i ]
  %arrayidx1141.i = getelementptr inbounds i32* %681, i64 %indvars.iv2544.i
  %686 = load i32* %arrayidx1141.i, align 4, !tbaa !3
  %idxprom1142.i = sext i32 %686 to i64
  %arraydecay1144.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1142.i, i64 0
  %687 = load float* %arraydecay1144.i, align 4, !tbaa !4
  %add.i1943.i = fadd float %685, %687
  %arrayidx2.i1944.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1142.i, i64 1
  %688 = load float* %arrayidx2.i1944.i, align 4, !tbaa !4
  %add4.i1946.i = fadd float %684, %688
  %arrayidx5.i1947.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1142.i, i64 2
  %689 = load float* %arrayidx5.i1947.i, align 4, !tbaa !4
  %add7.i1949.i = fadd float %683, %689
  store float %add.i1943.i, float* %arraydecay1144.i, align 4, !tbaa !4
  store float %add4.i1946.i, float* %arrayidx2.i1944.i, align 4, !tbaa !4
  store float %add7.i1949.i, float* %arrayidx5.i1947.i, align 4, !tbaa !4
  %arrayidx1152.i = getelementptr inbounds float* %682, i64 %idxprom1142.i
  %690 = load float* %arrayidx1152.i, align 4, !tbaa !4
  %691 = load float* %arraydecay1085.i, align 4, !tbaa !4
  %mul.i1936.i = fmul float %690, %691
  %692 = load float* %arrayidx9.i1980.i, align 4, !tbaa !4
  %mul3.i1938.i = fmul float %690, %692
  %693 = load float* %arrayidx10.i1981.i, align 4, !tbaa !4
  %mul6.i1941.i = fmul float %690, %693
  %add.i1927.i = fadd float %sum.sroa.0.0.load245124642496.i, %mul.i1936.i
  %add4.i1930.i = fadd float %sum.sroa.1.4.load245624672495.i, %mul3.i1938.i
  %add7.i1933.i = fadd float %sum.sroa.2.8.load246124702494.i, %mul6.i1941.i
  %indvars.iv.next2545.i = add i64 %indvars.iv2544.i, 1
  %lftr.wideiv747 = trunc i64 %indvars.iv.next2545.i to i32
  %exitcond748 = icmp eq i32 %lftr.wideiv747, %679
  br i1 %exitcond748, label %for.cond1130.for.end1162_crit_edge.i, label %for.body1136.i

for.cond1130.for.end1162_crit_edge.i:             ; preds = %for.body1136.i
  %phitmp2527.i = fpext float %add.i1927.i to double
  %phitmp2528.i = fpext float %add4.i1930.i to double
  %phitmp2529.i = fpext float %add7.i1933.i to double
  br label %for.end1162.i

for.end1162.i:                                    ; preds = %for.cond1130.for.end1162_crit_edge.i, %for.end1100.i
  %mul6.i1941.i.lcssa683 = phi float [ %mul6.i1941.i, %for.cond1130.for.end1162_crit_edge.i ], [ %mul6.i1971.i, %for.end1100.i ]
  %mul3.i1938.i.lcssa682 = phi float [ %mul3.i1938.i, %for.cond1130.for.end1162_crit_edge.i ], [ %mul3.i1968.i, %for.end1100.i ]
  %mul.i1936.i.lcssa681 = phi float [ %mul.i1936.i, %for.cond1130.for.end1162_crit_edge.i ], [ %mul.i1966.i, %for.end1100.i ]
  %sum.sroa.0.0.load24512464.lcssa.i = phi double [ %phitmp2527.i, %for.cond1130.for.end1162_crit_edge.i ], [ 0.000000e+00, %for.end1100.i ]
  %sum.sroa.1.4.load24562467.lcssa.i = phi double [ %phitmp2528.i, %for.cond1130.for.end1162_crit_edge.i ], [ 0.000000e+00, %for.end1100.i ]
  %sum.sroa.2.8.load24612470.lcssa.i = phi double [ %phitmp2529.i, %for.cond1130.for.end1162_crit_edge.i ], [ 0.000000e+00, %for.end1100.i ]
  %694 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool1164.i = icmp eq i32 %694, 0
  br i1 %tobool1164.i, label %for.inc1174.i, label %if.then1165.i

if.then1165.i:                                    ; preds = %for.end1162.i
  %695 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %696 = trunc i64 %indvars.iv2546.i to i32
  %call1172.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %695, i8* getelementptr inbounds ([31 x i8]* @.str26, i64 0, i64 0), i32 %696, double %sum.sroa.0.0.load24512464.lcssa.i, double %sum.sroa.1.4.load24562467.lcssa.i, double %sum.sroa.2.8.load24612470.lcssa.i) #4
  br label %for.inc1174.i

for.inc1174.i:                                    ; preds = %if.then1165.i, %for.end1162.i
  %indvars.iv.next2547.i = add i64 %indvars.iv2546.i, 1
  %697 = load i32* %n107, align 4, !tbaa !3
  %698 = trunc i64 %indvars.iv.next2547.i to i32
  %cmp1072.i = icmp slt i32 %698, %697
  br i1 %cmp1072.i, label %for.body1074.i, label %for.end1176.i.loopexit

for.end1176.i.loopexit:                           ; preds = %for.inc1174.i
  store float %mul.i1936.i.lcssa681, float* %arraydecay443.i, align 4, !tbaa !4
  store float %mul3.i1938.i.lcssa682, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %mul6.i1941.i.lcssa683, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  br label %for.end1176.i

for.end1176.i:                                    ; preds = %for.cond1069.preheader.i, %for.end1176.i.loopexit
  %699 = phi i32 [ %697, %for.end1176.i.loopexit ], [ %656, %for.cond1069.preheader.i ]
  %700 = load i32* %bCyl128, align 4, !tbaa !3
  %tobool1178.i = icmp eq i32 %700, 0
  br i1 %tobool1178.i, label %if.else1276.i, label %for.cond1180.preheader.i

for.cond1180.preheader.i:                         ; preds = %for.end1176.i
  %cmp11832489.i = icmp sgt i32 %699, 0
  br i1 %cmp11832489.i, label %for.body1185.lr.ph.i, label %do_constraint.exit

for.body1185.lr.ph.i:                             ; preds = %for.cond1180.preheader.i
  %x_unc1191.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %ngx1224.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %weights.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  %idx1241.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %massT1252.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  br label %for.body1185.i

for.body1185.i:                                   ; preds = %for.inc1273.i, %for.body1185.lr.ph.i
  %701 = phi i32 [ %699, %for.body1185.lr.ph.i ], [ %734, %for.inc1273.i ]
  %indvars.iv2538.i = phi i64 [ 0, %for.body1185.lr.ph.i ], [ %indvars.iv.next2539.i, %for.inc1273.i ]
  %arraydecay1188.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2538.i, i64 0
  %702 = load [3 x float]** %x_unc1191.i, align 8, !tbaa !0
  %arraydecay1193.i = getelementptr inbounds [3 x float]* %702, i64 %indvars.iv2538.i, i64 0
  %arraydecay1196.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2538.i, i64 0
  %703 = load float* %arraydecay1188.i, align 4, !tbaa !4
  %704 = load float* %arraydecay1193.i, align 4, !tbaa !4
  %sub.i1918.i = fsub float %703, %704
  %arrayidx2.i1919.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2538.i, i64 1
  %705 = load float* %arrayidx2.i1919.i, align 4, !tbaa !4
  %arrayidx3.i1920.i = getelementptr inbounds [3 x float]* %702, i64 %indvars.iv2538.i, i64 1
  %706 = load float* %arrayidx3.i1920.i, align 4, !tbaa !4
  %sub4.i1921.i = fsub float %705, %706
  %arrayidx5.i1922.i = getelementptr inbounds [3 x float]* %rjnew.0.i, i64 %indvars.iv2538.i, i64 2
  %707 = load float* %arrayidx5.i1922.i, align 4, !tbaa !4
  %arrayidx6.i1923.i = getelementptr inbounds [3 x float]* %702, i64 %indvars.iv2538.i, i64 2
  %708 = load float* %arrayidx6.i1923.i, align 4, !tbaa !4
  %sub7.i1924.i = fsub float %707, %708
  store float %sub.i1918.i, float* %arraydecay1196.i, align 4, !tbaa !4
  %arrayidx9.i1925.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2538.i, i64 1
  store float %sub4.i1921.i, float* %arrayidx9.i1925.i, align 4, !tbaa !4
  %arrayidx10.i1926.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2538.i, i64 2
  store float %sub7.i1924.i, float* %arrayidx10.i1926.i, align 4, !tbaa !4
  %709 = load [3 x float]** %x_con.i, align 8, !tbaa !0
  %arraydecay1204.i = getelementptr inbounds [3 x float]* %709, i64 %indvars.iv2538.i, i64 0
  %710 = load float* %arraydecay1188.i, align 4, !tbaa !4
  store float %710, float* %arraydecay1204.i, align 4, !tbaa !4
  %711 = load float* %arrayidx2.i1919.i, align 4, !tbaa !4
  %arrayidx3.i1915.i = getelementptr inbounds [3 x float]* %709, i64 %indvars.iv2538.i, i64 1
  store float %711, float* %arrayidx3.i1915.i, align 4, !tbaa !4
  %712 = load float* %arrayidx5.i1922.i, align 4, !tbaa !4
  %arrayidx5.i1917.i = getelementptr inbounds [3 x float]* %709, i64 %indvars.iv2538.i, i64 2
  store float %712, float* %arrayidx5.i1917.i, align 4, !tbaa !4
  br label %for.body1208.i

for.body1208.i:                                   ; preds = %for.body1208.i, %for.body1185.i
  %indvars.iv2532.i = phi i64 [ 0, %for.body1185.i ], [ %indvars.iv.next2533.i, %for.body1208.i ]
  %arrayidx1211.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2532.i
  %713 = load float* %arrayidx1211.i, align 4, !tbaa !4
  %arrayidx1215.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 %indvars.iv2538.i, i64 %indvars.iv2532.i
  %714 = load float* %arrayidx1215.i, align 4, !tbaa !4
  %mul1216.i = fmul float %713, %714
  store float %mul1216.i, float* %arrayidx1215.i, align 4, !tbaa !4
  %indvars.iv.next2533.i = add i64 %indvars.iv2532.i, 1
  %lftr.wideiv741 = trunc i64 %indvars.iv.next2533.i to i32
  %exitcond742 = icmp eq i32 %lftr.wideiv741, 3
  br i1 %exitcond742, label %for.cond1221.loopexit.i, label %for.body1208.i

for.cond1221.loopexit.i:                          ; preds = %for.body1208.i
  %715 = load i32** %ngx1224.i, align 8, !tbaa !0
  %arrayidx12252480.i = getelementptr inbounds i32* %715, i64 %indvars.iv2538.i
  %716 = load i32* %arrayidx12252480.i, align 4, !tbaa !3
  %cmp12262481.i = icmp sgt i32 %716, 0
  br i1 %cmp12262481.i, label %for.body1228.lr.ph.i, label %for.end1261.i

for.body1228.lr.ph.i:                             ; preds = %for.cond1221.loopexit.i
  %717 = load float*** %weights.i, align 8, !tbaa !0
  %arrayidx1232.i = getelementptr inbounds float** %717, i64 %indvars.iv2538.i
  %718 = load float** %arrayidx1232.i, align 8, !tbaa !0
  %719 = load i32*** %idx1241.i, align 8, !tbaa !0
  %arrayidx1242.i = getelementptr inbounds i32** %719, i64 %indvars.iv2538.i
  %720 = load i32** %arrayidx1242.i, align 8, !tbaa !0
  %721 = load float** %massT1252.i, align 8, !tbaa !0
  br label %for.body1228.i

for.body1228.i:                                   ; preds = %for.body1228.i, %for.body1228.lr.ph.i
  %indvars.iv2536.i = phi i64 [ 0, %for.body1228.lr.ph.i ], [ %indvars.iv.next2537.i, %for.body1228.i ]
  %sum.sroa.0.0.load245124632484.i = phi float [ 0.000000e+00, %for.body1228.lr.ph.i ], [ %add.i1880.i, %for.body1228.i ]
  %sum.sroa.1.4.load245624662483.i = phi float [ 0.000000e+00, %for.body1228.lr.ph.i ], [ %add4.i1883.i, %for.body1228.i ]
  %sum.sroa.2.8.load246124692482.i = phi float [ 0.000000e+00, %for.body1228.lr.ph.i ], [ %add7.i1886.i, %for.body1228.i ]
  %arrayidx1233.i = getelementptr inbounds float* %718, i64 %indvars.iv2536.i
  %722 = load float* %arrayidx1233.i, align 4, !tbaa !4
  %723 = load float* %arraydecay1196.i, align 4, !tbaa !4
  %mul.i1905.i = fmul float %722, %723
  %724 = load float* %arrayidx9.i1925.i, align 4, !tbaa !4
  %mul3.i1907.i = fmul float %722, %724
  %725 = load float* %arrayidx10.i1926.i, align 4, !tbaa !4
  %mul6.i1910.i = fmul float %722, %725
  %arrayidx1243.i = getelementptr inbounds i32* %720, i64 %indvars.iv2536.i
  %726 = load i32* %arrayidx1243.i, align 4, !tbaa !3
  %idxprom1244.i = sext i32 %726 to i64
  %arraydecay1246.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1244.i, i64 0
  %727 = load float* %arraydecay1246.i, align 4, !tbaa !4
  %add.i1896.i = fadd float %mul.i1905.i, %727
  %arrayidx2.i1897.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1244.i, i64 1
  %728 = load float* %arrayidx2.i1897.i, align 4, !tbaa !4
  %add4.i1899.i = fadd float %mul3.i1907.i, %728
  %arrayidx5.i1900.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1244.i, i64 2
  %729 = load float* %arrayidx5.i1900.i, align 4, !tbaa !4
  %add7.i1902.i = fadd float %mul6.i1910.i, %729
  store float %add.i1896.i, float* %arraydecay1246.i, align 4, !tbaa !4
  store float %add4.i1899.i, float* %arrayidx2.i1897.i, align 4, !tbaa !4
  store float %add7.i1902.i, float* %arrayidx5.i1900.i, align 4, !tbaa !4
  %arrayidx1253.i = getelementptr inbounds float* %721, i64 %idxprom1244.i
  %730 = load float* %arrayidx1253.i, align 4, !tbaa !4
  %mul.i1889.i = fmul float %mul.i1905.i, %730
  %mul3.i1891.i = fmul float %mul3.i1907.i, %730
  %mul6.i1894.i = fmul float %mul6.i1910.i, %730
  %add.i1880.i = fadd float %sum.sroa.0.0.load245124632484.i, %mul.i1889.i
  %add4.i1883.i = fadd float %sum.sroa.1.4.load245624662483.i, %mul3.i1891.i
  %add7.i1886.i = fadd float %sum.sroa.2.8.load246124692482.i, %mul6.i1894.i
  %indvars.iv.next2537.i = add i64 %indvars.iv2536.i, 1
  %lftr.wideiv743 = trunc i64 %indvars.iv.next2537.i to i32
  %exitcond744 = icmp eq i32 %lftr.wideiv743, %716
  br i1 %exitcond744, label %for.cond1221.for.end1261_crit_edge.i, label %for.body1228.i

for.cond1221.for.end1261_crit_edge.i:             ; preds = %for.body1228.i
  store float %mul.i1905.i, float* %arraydecay443.i, align 4, !tbaa !4
  store float %mul3.i1907.i, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %mul6.i1910.i, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  store float %mul.i1889.i, float* %arraydecay437.i, align 4, !tbaa !4
  store float %mul3.i1891.i, float* %arrayidx9.i2345.i, align 4, !tbaa !4
  store float %mul6.i1894.i, float* %arrayidx10.i2346.i, align 4, !tbaa !4
  %phitmp2521.i = fpext float %add.i1880.i to double
  %phitmp2522.i = fpext float %add4.i1883.i to double
  %phitmp2523.i = fpext float %add7.i1886.i to double
  br label %for.end1261.i

for.end1261.i:                                    ; preds = %for.cond1221.loopexit.i, %for.cond1221.for.end1261_crit_edge.i
  %sum.sroa.0.0.load24512463.lcssa.i = phi double [ %phitmp2521.i, %for.cond1221.for.end1261_crit_edge.i ], [ 0.000000e+00, %for.cond1221.loopexit.i ]
  %sum.sroa.1.4.load24562466.lcssa.i = phi double [ %phitmp2522.i, %for.cond1221.for.end1261_crit_edge.i ], [ 0.000000e+00, %for.cond1221.loopexit.i ]
  %sum.sroa.2.8.load24612469.lcssa.i = phi double [ %phitmp2523.i, %for.cond1221.for.end1261_crit_edge.i ], [ 0.000000e+00, %for.cond1221.loopexit.i ]
  %731 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool1263.i = icmp eq i32 %731, 0
  br i1 %tobool1263.i, label %for.inc1273.i, label %if.then1264.i

if.then1264.i:                                    ; preds = %for.end1261.i
  %732 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %733 = trunc i64 %indvars.iv2538.i to i32
  %call1271.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %732, i8* getelementptr inbounds ([34 x i8]* @.str27, i64 0, i64 0), i32 %733, double %sum.sroa.0.0.load24512463.lcssa.i, double %sum.sroa.1.4.load24562466.lcssa.i, double %sum.sroa.2.8.load24612469.lcssa.i) #4
  %.pre2570.i = load i32* %n107, align 4, !tbaa !3
  br label %for.inc1273.i

for.inc1273.i:                                    ; preds = %if.then1264.i, %for.end1261.i
  %734 = phi i32 [ %701, %for.end1261.i ], [ %.pre2570.i, %if.then1264.i ]
  %indvars.iv.next2539.i = add i64 %indvars.iv2538.i, 1
  %735 = trunc i64 %indvars.iv.next2539.i to i32
  %cmp1183.i = icmp slt i32 %735, %734
  br i1 %cmp1183.i, label %for.body1185.i, label %do_constraint.exit

if.else1276.i:                                    ; preds = %for.end1176.i
  %x_unc1280.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %736 = load [3 x float]** %x_unc1280.i, align 8, !tbaa !0
  %arraydecay1282.i = getelementptr inbounds [3 x float]* %736, i64 0, i64 0
  %737 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  %738 = load float* %arraydecay1282.i, align 4, !tbaa !4
  %sub.i.i649 = fsub float %737, %738
  %739 = load float* %.pre-phi.i, align 4, !tbaa !4
  %arrayidx3.i1875.i = getelementptr inbounds [3 x float]* %736, i64 0, i64 1
  %740 = load float* %arrayidx3.i1875.i, align 4, !tbaa !4
  %sub4.i.i650 = fsub float %739, %740
  %741 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %arrayidx6.i1877.i = getelementptr inbounds [3 x float]* %736, i64 0, i64 2
  %742 = load float* %arrayidx6.i1877.i, align 4, !tbaa !4
  %sub7.i.i651 = fsub float %741, %742
  store float %sub.i.i649, float* %arraydecay390.i, align 4, !tbaa !4
  store float %sub4.i.i650, float* %244, align 4, !tbaa !4
  store float %sub7.i.i651, float* %245, align 4, !tbaa !4
  %743 = load [3 x float]** %x_con96.i, align 8, !tbaa !0
  %arraydecay1290.i = getelementptr inbounds [3 x float]* %743, i64 0, i64 0
  %744 = load float* %arraydecay928.pre-phi.i, align 4, !tbaa !4
  store float %744, float* %arraydecay1290.i, align 4, !tbaa !4
  %745 = load float* %.pre-phi.i, align 4, !tbaa !4
  %arrayidx3.i1871.i = getelementptr inbounds [3 x float]* %743, i64 0, i64 1
  store float %745, float* %arrayidx3.i1871.i, align 4, !tbaa !4
  %746 = load float* %.pre-phi2600.i, align 4, !tbaa !4
  %arrayidx5.i1873.i = getelementptr inbounds [3 x float]* %743, i64 0, i64 2
  store float %746, float* %arrayidx5.i1873.i, align 4, !tbaa !4
  br label %for.body1294.i

for.cond1306.preheader.i:                         ; preds = %for.body1294.i
  %ngx1308.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %747 = load i32** %ngx1308.i, align 8, !tbaa !0
  %748 = load i32* %747, align 4, !tbaa !3
  %cmp13102471.i = icmp sgt i32 %748, 0
  br i1 %cmp13102471.i, label %for.body1312.lr.ph.i, label %for.end1337.i

for.body1312.lr.ph.i:                             ; preds = %for.cond1306.preheader.i
  %idx1315.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %749 = load i32*** %idx1315.i, align 8, !tbaa !0
  %750 = load i32** %749, align 8, !tbaa !0
  %massT1327.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %751 = load float** %massT1327.i, align 8, !tbaa !0
  %.pre.i652 = load float* %arraydecay390.i, align 4, !tbaa !4
  %.pre2568.i = load float* %244, align 4, !tbaa !4
  %.pre2569.i = load float* %245, align 4, !tbaa !4
  br label %for.body1312.i

for.body1294.i:                                   ; preds = %for.body1294.i, %if.else1276.i
  %indvars.iv2530.i = phi i64 [ 0, %if.else1276.i ], [ %indvars.iv.next2531.i, %for.body1294.i ]
  %arrayidx1297.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv2530.i
  %752 = load float* %arrayidx1297.i, align 4, !tbaa !4
  %arrayidx1300.i = getelementptr inbounds [3 x float]* %ref_dr.0.i, i64 0, i64 %indvars.iv2530.i
  %753 = load float* %arrayidx1300.i, align 4, !tbaa !4
  %mul1301.i = fmul float %752, %753
  store float %mul1301.i, float* %arrayidx1300.i, align 4, !tbaa !4
  %indvars.iv.next2531.i = add i64 %indvars.iv2530.i, 1
  %lftr.wideiv739 = trunc i64 %indvars.iv.next2531.i to i32
  %exitcond740 = icmp eq i32 %lftr.wideiv739, 3
  br i1 %exitcond740, label %for.cond1306.preheader.i, label %for.body1294.i

for.body1312.i:                                   ; preds = %for.body1312.i, %for.body1312.lr.ph.i
  %754 = phi float [ %.pre2569.i, %for.body1312.lr.ph.i ], [ %764, %for.body1312.i ]
  %755 = phi float [ %.pre2568.i, %for.body1312.lr.ph.i ], [ %763, %for.body1312.i ]
  %756 = phi float [ %.pre.i652, %for.body1312.lr.ph.i ], [ %762, %for.body1312.i ]
  %indvars.iv.i655 = phi i64 [ 0, %for.body1312.lr.ph.i ], [ %indvars.iv.next.i662, %for.body1312.i ]
  %sum.sroa.0.0.load245124622474.i = phi float [ 0.000000e+00, %for.body1312.lr.ph.i ], [ %add.i.i659, %for.body1312.i ]
  %sum.sroa.1.4.load245624652473.i = phi float [ 0.000000e+00, %for.body1312.lr.ph.i ], [ %add4.i.i660, %for.body1312.i ]
  %sum.sroa.2.8.load246124682472.i = phi float [ 0.000000e+00, %for.body1312.lr.ph.i ], [ %add7.i.i661, %for.body1312.i ]
  %arrayidx1317.i = getelementptr inbounds i32* %750, i64 %indvars.iv.i655
  %757 = load i32* %arrayidx1317.i, align 4, !tbaa !3
  %idxprom1318.i = sext i32 %757 to i64
  %arraydecay1320.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1318.i, i64 0
  %758 = load float* %arraydecay1320.i, align 4, !tbaa !4
  %add.i1860.i = fadd float %756, %758
  %arrayidx2.i1861.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1318.i, i64 1
  %759 = load float* %arrayidx2.i1861.i, align 4, !tbaa !4
  %add4.i1863.i = fadd float %755, %759
  %arrayidx5.i1864.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1318.i, i64 2
  %760 = load float* %arrayidx5.i1864.i, align 4, !tbaa !4
  %add7.i1866.i = fadd float %754, %760
  store float %add.i1860.i, float* %arraydecay1320.i, align 4, !tbaa !4
  store float %add4.i1863.i, float* %arrayidx2.i1861.i, align 4, !tbaa !4
  store float %add7.i1866.i, float* %arrayidx5.i1864.i, align 4, !tbaa !4
  %arrayidx1328.i = getelementptr inbounds float* %751, i64 %idxprom1318.i
  %761 = load float* %arrayidx1328.i, align 4, !tbaa !4
  %762 = load float* %arraydecay390.i, align 4, !tbaa !4
  %mul.i.i656 = fmul float %761, %762
  %763 = load float* %244, align 4, !tbaa !4
  %mul3.i.i657 = fmul float %761, %763
  %764 = load float* %245, align 4, !tbaa !4
  %mul6.i.i658 = fmul float %761, %764
  %add.i.i659 = fadd float %sum.sroa.0.0.load245124622474.i, %mul.i.i656
  %add4.i.i660 = fadd float %sum.sroa.1.4.load245624652473.i, %mul3.i.i657
  %add7.i.i661 = fadd float %sum.sroa.2.8.load246124682472.i, %mul6.i.i658
  %indvars.iv.next.i662 = add i64 %indvars.iv.i655, 1
  %lftr.wideiv737 = trunc i64 %indvars.iv.next.i662 to i32
  %exitcond738 = icmp eq i32 %lftr.wideiv737, %748
  br i1 %exitcond738, label %for.cond1306.for.end1337_crit_edge.i, label %for.body1312.i

for.cond1306.for.end1337_crit_edge.i:             ; preds = %for.body1312.i
  store float %mul.i.i656, float* %arraydecay443.i, align 4, !tbaa !4
  store float %mul3.i.i657, float* %arrayidx9.i2336.i, align 4, !tbaa !4
  store float %mul6.i.i658, float* %arrayidx10.i2337.i, align 4, !tbaa !4
  %phitmp2524.i = fpext float %add.i.i659 to double
  %phitmp2525.i = fpext float %add4.i.i660 to double
  %phitmp2526.i = fpext float %add7.i.i661 to double
  br label %for.end1337.i

for.end1337.i:                                    ; preds = %for.cond1306.preheader.i, %for.cond1306.for.end1337_crit_edge.i
  %sum.sroa.0.0.load24512462.lcssa.i = phi double [ %phitmp2524.i, %for.cond1306.for.end1337_crit_edge.i ], [ 0.000000e+00, %for.cond1306.preheader.i ]
  %sum.sroa.1.4.load24562465.lcssa.i = phi double [ %phitmp2525.i, %for.cond1306.for.end1337_crit_edge.i ], [ 0.000000e+00, %for.cond1306.preheader.i ]
  %sum.sroa.2.8.load24612468.lcssa.i = phi double [ %phitmp2526.i, %for.cond1306.for.end1337_crit_edge.i ], [ 0.000000e+00, %for.cond1306.preheader.i ]
  %765 = load i32* %bVerbose206, align 4, !tbaa !3
  %tobool1339.i = icmp eq i32 %765, 0
  br i1 %tobool1339.i, label %do_constraint.exit, label %if.then1340.i

if.then1340.i:                                    ; preds = %for.end1337.i
  %766 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1347.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %766, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), double %sum.sroa.0.0.load24512462.lcssa.i, double %sum.sroa.1.4.load24562465.lcssa.i, double %sum.sroa.2.8.load24612468.lcssa.i) #4
  br label %do_constraint.exit

do_constraint.exit:                               ; preds = %for.inc1273.i, %for.cond1180.preheader.i, %for.end1337.i, %if.then1340.i
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 499, i8* %ref_dr.0.in.i) #4
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 500, i8* %call17.i) #4
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 501, i8* %rjnew.0.in.i) #4
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 502, i8* %call14.i) #4
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 503, i8* %call20.i) #4
  call void @llvm.lifetime.end(i64 12, i8* %212) #3
  call void @llvm.lifetime.end(i64 12, i8* %213) #3
  call void @llvm.lifetime.end(i64 12, i8* %214) #3
  call void @llvm.lifetime.end(i64 12, i8* %215) #3
  call void @llvm.lifetime.end(i64 12, i8* %216) #3
  call void @llvm.lifetime.end(i64 12, i8* %217) #3
  call void @print_constraint(%struct.t_pull* %pull, [3 x float]* %f, i32 %step, [3 x float]* %box, i32 %inc10642614.i) #4
  br label %sw.epilog

sw.bb284:                                         ; preds = %for.end
  br i1 %cmp, label %sw.epilog, label %for.cond287.preheader

for.cond287.preheader:                            ; preds = %sw.bb284
  %n289 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %767 = load i32* %n289, align 4, !tbaa !3
  %cmp290714 = icmp sgt i32 %767, 0
  br i1 %cmp290714, label %for.body292.lr.ph, label %for.end309.thread

for.end309.thread:                                ; preds = %for.cond287.preheader
  %768 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %768) #3
  br label %do_umbrella.exit

for.body292.lr.ph:                                ; preds = %for.cond287.preheader
  %ngx295 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %idx299 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %x_unc303 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %for.body292

for.body292:                                      ; preds = %for.body292.for.body292_crit_edge, %for.body292.lr.ph
  %769 = phi [3 x float]* [ %3, %for.body292.lr.ph ], [ %.pre781, %for.body292.for.body292_crit_edge ]
  %indvars.iv771 = phi i64 [ 0, %for.body292.lr.ph ], [ %indvars.iv.next772, %for.body292.for.body292_crit_edge ]
  %770 = load i32** %ngx295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i32* %770, i64 %indvars.iv771
  %771 = load i32* %arrayidx296, align 4, !tbaa !3
  %772 = load i32*** %idx299, align 8, !tbaa !0
  %arrayidx300 = getelementptr inbounds i32** %772, i64 %indvars.iv771
  %773 = load i32** %arrayidx300, align 8, !tbaa !0
  %774 = load [3 x float]** %x_unc303, align 8, !tbaa !0
  %arraydecay305 = getelementptr inbounds [3 x float]* %774, i64 %indvars.iv771, i64 0
  %call306 = call float @calc_com([3 x float]* %769, i32 %771, i32* %773, %struct.t_mdatoms* %md, float* %arraydecay305, [3 x float]* %box) #4
  %indvars.iv.next772 = add i64 %indvars.iv771, 1
  %775 = load i32* %n289, align 4, !tbaa !3
  %776 = trunc i64 %indvars.iv.next772 to i32
  %cmp290 = icmp slt i32 %776, %775
  br i1 %cmp290, label %for.body292.for.body292_crit_edge, label %for.end309

for.body292.for.body292_crit_edge:                ; preds = %for.body292
  %.pre781 = load [3 x float]** @pull.x_s, align 8, !tbaa !0
  br label %for.body292

for.end309:                                       ; preds = %for.body292
  %777 = bitcast [3 x float]* %dr.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %777) #3
  %cmp19.i = icmp sgt i32 %775, 0
  br i1 %cmp19.i, label %for.body.lr.ph.i, label %do_umbrella.exit

for.body.lr.ph.i:                                 ; preds = %for.end309
  %x_ref.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %x_unc.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %arraydecay7.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 2
  %um_width.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 22
  %f49.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %bVerbose.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %ngx.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %massT.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %tmass.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %idx.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc154.i, %for.body.lr.ph.i
  %indvars.iv24.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next25.i, %for.inc154.i ]
  %ii.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ii.1.lcssa.i, %for.inc154.i ]
  %778 = load [3 x float]** %x_ref.i, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds [3 x float]* %778, i64 %indvars.iv24.i, i64 0
  %779 = load [3 x float]** %x_unc.i, align 8, !tbaa !0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %779, i64 %indvars.iv24.i, i64 0
  %780 = load float* %arraydecay.i, align 4, !tbaa !4
  %781 = load float* %arraydecay6.i, align 4, !tbaa !4
  %sub.i.i = fsub float %780, %781
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %778, i64 %indvars.iv24.i, i64 1
  %782 = load float* %arrayidx2.i.i, align 4, !tbaa !4
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %779, i64 %indvars.iv24.i, i64 1
  %783 = load float* %arrayidx3.i.i, align 4, !tbaa !4
  %sub4.i.i = fsub float %782, %783
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %778, i64 %indvars.iv24.i, i64 2
  %784 = load float* %arrayidx5.i.i, align 4, !tbaa !4
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %779, i64 %indvars.iv24.i, i64 2
  %785 = load float* %arrayidx6.i.i, align 4, !tbaa !4
  %sub7.i.i = fsub float %784, %785
  store float %sub.i.i, float* %arraydecay7.i, align 4, !tbaa !4
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !4
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !4
  br label %for.body10.i

for.body10.i:                                     ; preds = %if.end40.for.body10_crit_edge.i, %for.body.i
  %786 = phi float [ %sub7.i.i, %for.body.i ], [ %.pre27.i, %if.end40.for.body10_crit_edge.i ]
  %indvars.iv.i = phi i64 [ 2, %for.body.i ], [ %indvars.iv.next.i, %if.end40.for.body10_crit_edge.i ]
  %arrayidx12.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.i
  %conv.i = fpext float %786 to double
  %arrayidx15.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i
  %arrayidx16.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 %indvars.iv.i
  %787 = load float* %arrayidx16.i, align 4, !tbaa !4
  %conv17.i = fpext float %787 to double
  %mul.i = fmul double %conv17.i, 5.000000e-01
  %cmp18.i = fcmp ogt double %conv.i, %mul.i
  br i1 %cmp18.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body10.i
  %arraydecay23.i = getelementptr inbounds [3 x float]* %arrayidx15.i, i64 0, i64 0
  %788 = load float* %arraydecay7.i, align 4, !tbaa !4
  %789 = load float* %arraydecay23.i, align 4, !tbaa !4
  %sub.i7.i = fsub float %788, %789
  %790 = load float* %arrayidx9.i.i, align 4, !tbaa !4
  %arrayidx3.i9.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 1
  %791 = load float* %arrayidx3.i9.i, align 4, !tbaa !4
  %sub4.i10.i = fsub float %790, %791
  %792 = load float* %arrayidx10.i.i, align 4, !tbaa !4
  %arrayidx6.i12.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 2
  %793 = load float* %arrayidx6.i12.i, align 4, !tbaa !4
  %sub7.i13.i = fsub float %792, %793
  store float %sub.i7.i, float* %arraydecay7.i, align 4, !tbaa !4
  store float %sub4.i10.i, float* %arrayidx9.i.i, align 4, !tbaa !4
  store float %sub7.i13.i, float* %arrayidx10.i.i, align 4, !tbaa !4
  %.pre.i = load float* %arrayidx12.i, align 4, !tbaa !4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body10.i
  %794 = phi float [ %.pre.i, %if.then.i ], [ %786, %for.body10.i ]
  %conv26.i = fpext float %794 to double
  %mul32.i = fmul double %conv17.i, -5.000000e-01
  %cmp33.i = fcmp olt double %conv26.i, %mul32.i
  br i1 %cmp33.i, label %if.then35.i, label %if.end40.i

if.then35.i:                                      ; preds = %if.end.i
  %arraydecay39.i = getelementptr inbounds [3 x float]* %arrayidx15.i, i64 0, i64 0
  %795 = load float* %arraydecay7.i, align 4, !tbaa !4
  %796 = load float* %arraydecay39.i, align 4, !tbaa !4
  %add.i.i = fadd float %795, %796
  %797 = load float* %arrayidx9.i.i, align 4, !tbaa !4
  %arrayidx3.i4.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 1
  %798 = load float* %arrayidx3.i4.i, align 4, !tbaa !4
  %add4.i.i = fadd float %797, %798
  %799 = load float* %arrayidx10.i.i, align 4, !tbaa !4
  %arrayidx6.i6.i = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.i, i64 2
  %800 = load float* %arrayidx6.i6.i, align 4, !tbaa !4
  %add7.i.i = fadd float %799, %800
  store float %add.i.i, float* %arraydecay7.i, align 4, !tbaa !4
  store float %add4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !4
  store float %add7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !4
  %.pre26.i = load float* %arrayidx12.i, align 4, !tbaa !4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.end.i
  %801 = phi float [ %.pre26.i, %if.then35.i ], [ %794, %if.end.i ]
  %arrayidx42.i = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv.i
  %802 = load float* %arrayidx42.i, align 4, !tbaa !4
  %mul45.i = fmul float %801, %802
  store float %mul45.i, float* %arrayidx12.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %803 = trunc i64 %indvars.iv.i to i32
  %cmp9.i = icmp sgt i32 %803, 0
  br i1 %cmp9.i, label %if.end40.for.body10_crit_edge.i, label %for.end.i

if.end40.for.body10_crit_edge.i:                  ; preds = %if.end40.i
  %arrayidx12.phi.trans.insert.i = getelementptr inbounds [3 x float]* %dr.i, i64 0, i64 %indvars.iv.next.i
  %.pre27.i = load float* %arrayidx12.phi.trans.insert.i, align 4, !tbaa !4
  br label %for.body10.i

for.end.i:                                        ; preds = %if.end40.i
  %804 = load float* %um_width.i, align 4, !tbaa !4
  %805 = load [3 x float]** %f49.i, align 8, !tbaa !0
  %arraydecay51.i = getelementptr inbounds [3 x float]* %805, i64 %indvars.iv24.i, i64 0
  %806 = load float* %arraydecay7.i, align 4, !tbaa !4
  %mul.i.i = fmul float %804, %806
  store float %mul.i.i, float* %arraydecay51.i, align 4, !tbaa !4
  %807 = load float* %arrayidx9.i.i, align 4, !tbaa !4
  %mul3.i.i = fmul float %804, %807
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %805, i64 %indvars.iv24.i, i64 1
  store float %mul3.i.i, float* %arrayidx4.i.i, align 4, !tbaa !4
  %808 = load float* %arrayidx10.i.i, align 4, !tbaa !4
  %mul6.i.i = fmul float %804, %808
  %arrayidx7.i.i = getelementptr inbounds [3 x float]* %805, i64 %indvars.iv24.i, i64 2
  store float %mul6.i.i, float* %arrayidx7.i.i, align 4, !tbaa !4
  %809 = load i32* %bVerbose.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %809, 0
  br i1 %tobool.i, label %for.cond117.preheader.i, label %if.then52.i

if.then52.i:                                      ; preds = %for.end.i
  %810 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv54.i = fpext float %806 to double
  %conv56.i = fpext float %807 to double
  %conv58.i = fpext float %808 to double
  %811 = trunc i64 %indvars.iv24.i to i32
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %810, i8* getelementptr inbounds ([25 x i8]* @.str11, i64 0, i64 0), i32 %811, double %conv54.i, double %conv56.i, double %conv58.i) #4
  %812 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %813 = load [3 x float]** %f49.i, align 8, !tbaa !0
  %arrayidx63.i = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv24.i, i64 0
  %814 = load float* %arrayidx63.i, align 4, !tbaa !4
  %conv64.i = fpext float %814 to double
  %arrayidx69.i = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv24.i, i64 1
  %815 = load float* %arrayidx69.i, align 4, !tbaa !4
  %conv70.i = fpext float %815 to double
  %arrayidx75.i = getelementptr inbounds [3 x float]* %813, i64 %indvars.iv24.i, i64 2
  %816 = load float* %arrayidx75.i, align 4, !tbaa !4
  %conv76.i = fpext float %816 to double
  %call77.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %812, i8* getelementptr inbounds ([17 x i8]* @.str12, i64 0, i64 0), double %conv64.i, double %conv70.i, double %conv76.i) #4
  %817 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %818 = load [3 x float]** %x_unc.i, align 8, !tbaa !0
  %arrayidx82.i = getelementptr inbounds [3 x float]* %818, i64 %indvars.iv24.i, i64 0
  %819 = load float* %arrayidx82.i, align 4, !tbaa !4
  %conv83.i = fpext float %819 to double
  %arrayidx88.i = getelementptr inbounds [3 x float]* %818, i64 %indvars.iv24.i, i64 1
  %820 = load float* %arrayidx88.i, align 4, !tbaa !4
  %conv89.i = fpext float %820 to double
  %arrayidx94.i = getelementptr inbounds [3 x float]* %818, i64 %indvars.iv24.i, i64 2
  %821 = load float* %arrayidx94.i, align 4, !tbaa !4
  %conv95.i = fpext float %821 to double
  %call96.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %817, i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), double %conv83.i, double %conv89.i, double %conv95.i) #4
  %822 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %823 = load [3 x float]** %x_ref.i, align 8, !tbaa !0
  %arrayidx101.i = getelementptr inbounds [3 x float]* %823, i64 %indvars.iv24.i, i64 0
  %824 = load float* %arrayidx101.i, align 4, !tbaa !4
  %conv102.i = fpext float %824 to double
  %arrayidx107.i = getelementptr inbounds [3 x float]* %823, i64 %indvars.iv24.i, i64 1
  %825 = load float* %arrayidx107.i, align 4, !tbaa !4
  %conv108.i = fpext float %825 to double
  %arrayidx113.i = getelementptr inbounds [3 x float]* %823, i64 %indvars.iv24.i, i64 2
  %826 = load float* %arrayidx113.i, align 4, !tbaa !4
  %conv114.i = fpext float %826 to double
  %call115.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %822, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), double %conv102.i, double %conv108.i, double %conv114.i) #4
  br label %for.cond117.preheader.i

for.cond117.preheader.i:                          ; preds = %for.end.i, %if.then52.i
  %827 = load i32** %ngx.i, align 8, !tbaa !0
  %arrayidx12015.i = getelementptr inbounds i32* %827, i64 %indvars.iv24.i
  %828 = load i32* %arrayidx12015.i, align 4, !tbaa !3
  %cmp12116.i = icmp sgt i32 %828, 0
  br i1 %cmp12116.i, label %for.body123.lr.ph.i, label %for.cond131.loopexit.i

for.body123.lr.ph.i:                              ; preds = %for.cond117.preheader.i
  %829 = load i32*** %idx.i, align 8, !tbaa !0
  %arrayidx127.i = getelementptr inbounds i32** %829, i64 %indvars.iv24.i
  %830 = load i32** %arrayidx127.i, align 8, !tbaa !0
  %831 = icmp sgt i32 %828, 1
  %.op.i = add i32 %828, -1
  %832 = sext i32 %.op.i to i64
  %idxprom124.i = select i1 %831, i64 %832, i64 0
  %arrayidx128.i = getelementptr inbounds i32* %830, i64 %idxprom124.i
  %833 = load i32* %arrayidx128.i, align 4, !tbaa !3
  br label %for.cond131.loopexit.i

for.cond131.loopexit.i:                           ; preds = %for.cond117.preheader.i, %for.body123.lr.ph.i
  %ii.1.lcssa.i = phi i32 [ %833, %for.body123.lr.ph.i ], [ %ii.020.i, %for.cond117.preheader.i ]
  %idxprom135.i = sext i32 %ii.1.lcssa.i to i64
  %834 = load float** %massT.i, align 8, !tbaa !0
  %arrayidx136.i = getelementptr inbounds float* %834, i64 %idxprom135.i
  %835 = load [3 x float]** %f49.i, align 8, !tbaa !0
  %836 = load float** %tmass.i, align 8, !tbaa !0
  %arrayidx146.i = getelementptr inbounds float* %836, i64 %indvars.iv24.i
  br label %for.body134.i

for.body134.i:                                    ; preds = %for.body134.i, %for.cond131.loopexit.i
  %indvars.iv22.i = phi i64 [ 0, %for.cond131.loopexit.i ], [ %indvars.iv.next23.i, %for.body134.i ]
  %837 = load float* %arrayidx136.i, align 4, !tbaa !4
  %arrayidx142.i = getelementptr inbounds [3 x float]* %835, i64 %indvars.iv24.i, i64 %indvars.iv22.i
  %838 = load float* %arrayidx142.i, align 4, !tbaa !4
  %mul143.i = fmul float %837, %838
  %839 = load float* %arrayidx146.i, align 4, !tbaa !4
  %div.i = fdiv float %mul143.i, %839
  %arrayidx150.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom135.i, i64 %indvars.iv22.i
  %840 = load float* %arrayidx150.i, align 4, !tbaa !4
  %add.i = fadd float %div.i, %840
  store float %add.i, float* %arrayidx150.i, align 4, !tbaa !4
  %indvars.iv.next23.i = add i64 %indvars.iv22.i, 1
  %lftr.wideiv769 = trunc i64 %indvars.iv.next23.i to i32
  %exitcond770 = icmp eq i32 %lftr.wideiv769, 3
  br i1 %exitcond770, label %for.inc154.i, label %for.body134.i

for.inc154.i:                                     ; preds = %for.body134.i
  %indvars.iv.next25.i = add i64 %indvars.iv24.i, 1
  %841 = load i32* %n289, align 4, !tbaa !3
  %842 = trunc i64 %indvars.iv.next25.i to i32
  %cmp.i = icmp slt i32 %842, %841
  br i1 %cmp.i, label %for.body.i, label %do_umbrella.exit

do_umbrella.exit:                                 ; preds = %for.inc154.i, %for.end309.thread, %for.end309
  %843 = phi i8* [ %768, %for.end309.thread ], [ %777, %for.end309 ], [ %777, %for.inc154.i ]
  call void @llvm.lifetime.end(i64 12, i8* %843) #3
  call void @print_umbrella(%struct.t_pull* %pull, i32 %step) #4
  br label %sw.epilog

sw.bb311:                                         ; preds = %for.end
  br i1 %cmp, label %sw.epilog, label %if.then313

if.then313:                                       ; preds = %sw.bb311
  %ngx315 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %844 = load i32** %ngx315, align 8, !tbaa !0
  %845 = load i32* %844, align 4, !tbaa !3
  %idx318 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %846 = load i32*** %idx318, align 8, !tbaa !0
  %847 = load i32** %846, align 8, !tbaa !0
  %x_unc321 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %848 = load [3 x float]** %x_unc321, align 8, !tbaa !0
  %arraydecay323 = getelementptr inbounds [3 x float]* %848, i64 0, i64 0
  %call324 = call float @calc_com([3 x float]* %x, i32 %845, i32* %847, %struct.t_mdatoms* %md, float* %arraydecay323, [3 x float]* %box) #4
  %849 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %850 = load [3 x float]** %x_unc321, align 8, !tbaa !0
  %arrayidx328 = getelementptr inbounds [3 x float]* %850, i64 0, i64 0
  %851 = load float* %arrayidx328, align 4, !tbaa !4
  %conv329 = fpext float %851 to double
  %arrayidx333 = getelementptr inbounds [3 x float]* %850, i64 0, i64 1
  %852 = load float* %arrayidx333, align 4, !tbaa !4
  %conv334 = fpext float %852 to double
  %arrayidx338 = getelementptr inbounds [3 x float]* %850, i64 0, i64 2
  %853 = load float* %arrayidx338, align 4, !tbaa !4
  %conv339 = fpext float %853 to double
  %call340 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %849, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), double %conv329, double %conv334, double %conv339) #4
  call void @correct_t0_pbc(%struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md, [3 x float]* %box) #4
  %x0342 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %854 = load [3 x float]*** %x0342, align 8, !tbaa !0
  %855 = load [3 x float]** %854, align 8, !tbaa !0
  %856 = load i32** %ngx315, align 8, !tbaa !0
  %857 = load i32* %856, align 4, !tbaa !3
  %858 = load i32*** %idx318, align 8, !tbaa !0
  %859 = load i32** %858, align 8, !tbaa !0
  %860 = load [3 x float]** %x_unc321, align 8, !tbaa !0
  %arraydecay353 = getelementptr inbounds [3 x float]* %860, i64 0, i64 0
  %call354 = call float @calc_com2([3 x float]* %855, i32 %857, i32* %859, %struct.t_mdatoms* %md, float* %arraydecay353, [3 x float]* %box) #4
  %861 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %862 = load [3 x float]** %x_unc321, align 8, !tbaa !0
  %arrayidx358 = getelementptr inbounds [3 x float]* %862, i64 0, i64 0
  %863 = load float* %arrayidx358, align 4, !tbaa !4
  %conv359 = fpext float %863 to double
  %arrayidx363 = getelementptr inbounds [3 x float]* %862, i64 0, i64 1
  %864 = load float* %arrayidx363, align 4, !tbaa !4
  %conv364 = fpext float %864 to double
  %arrayidx368 = getelementptr inbounds [3 x float]* %862, i64 0, i64 2
  %865 = load float* %arrayidx368, align 4, !tbaa !4
  %conv369 = fpext float %865 to double
  %call370 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %861, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), double %conv359, double %conv364, double %conv369) #4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0)) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb311, %if.then313, %sw.bb284, %do_umbrella.exit, %sw.bb29, %do_start.exit, %sw.bb, %do_afm.exit, %sw.default, %do_constraint.exit
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @calc_com([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @print_afm(%struct.t_pull*, i32) #1

; Function Attrs: optsize
declare void @make_refgrps(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare void @print_start(%struct.t_pull*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @correct_t0_pbc(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*, [3 x float]*) #1

; Function Attrs: optsize
declare float @calc_com2([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @calc_running_com(%struct.t_pull*) #1

; Function Attrs: optsize
declare void @print_constraint(%struct.t_pull*, [3 x float]*, i32, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @print_umbrella(%struct.t_pull*, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @check_convergence(%struct.t_pull* nocapture %pull) #0 {
entry:
  %dr = alloca [3 x float], align 4
  %tolerance = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 14
  %0 = load float* %tolerance, align 4, !tbaa !4
  %n = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %1 = load i32* %n, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %1, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %x_unc = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %x_unc3 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %xtarget = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  %arraydecay12 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 0
  %arrayidx9.i47 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 1
  %arrayidx10.i48 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %land.end, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %20, %land.end ]
  %indvars.iv53 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next54, %land.end ]
  %bTest.051 = phi i32 [ 1, %for.body.lr.ph ], [ %land.ext, %land.end ]
  %3 = load [3 x float]** %x_unc, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %3, i64 0, i64 0
  %4 = load [3 x float]** %x_unc3, align 8, !tbaa !0
  %arraydecay5 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv53, i64 0
  %5 = load float* %arraydecay, align 4, !tbaa !4
  %6 = load float* %arraydecay5, align 4, !tbaa !4
  %sub.i = fsub float %5, %6
  %arrayidx2.i = getelementptr inbounds [3 x float]* %3, i64 0, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv53, i64 1
  %8 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %7, %8
  %arrayidx5.i = getelementptr inbounds [3 x float]* %3, i64 0, i64 2
  %9 = load float* %arrayidx5.i, align 4, !tbaa !4
  %arrayidx6.i = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv53, i64 2
  %10 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %9, %10
  %11 = load [3 x float]** %xtarget, align 8, !tbaa !0
  %arraydecay10 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv53, i64 0
  %12 = load float* %arraydecay10, align 4, !tbaa !4
  %add.i42 = fadd float %sub.i, %12
  %arrayidx2.i43 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv53, i64 1
  %13 = load float* %arrayidx2.i43, align 4, !tbaa !4
  %add4.i = fadd float %sub4.i, %13
  %arrayidx5.i45 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv53, i64 2
  %14 = load float* %arrayidx5.i45, align 4, !tbaa !4
  %add7.i = fadd float %sub7.i, %14
  store float %add.i42, float* %arraydecay12, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx9.i47, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx10.i48, align 4, !tbaa !4
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body
  %15 = phi float [ %add.i42, %for.body ], [ %.pre55, %for.body15.for.body15_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body15.for.body15_crit_edge ]
  %arrayidx17 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %16 = load float* %arrayidx17, align 4, !tbaa !4
  %arrayidx19 = getelementptr inbounds [3 x float]* %dr, i64 0, i64 %indvars.iv
  %mul = fmul float %16, %15
  store float %mul, float* %arrayidx19, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  %arrayidx19.phi.trans.insert = getelementptr inbounds [3 x float]* %dr, i64 0, i64 %indvars.iv.next
  %.pre55 = load float* %arrayidx19.phi.trans.insert, align 4, !tbaa !4
  br label %for.body15

for.end:                                          ; preds = %for.body15
  %tobool = icmp eq i32 %bTest.051, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.end
  %17 = load float* %arraydecay12, align 4, !tbaa !4
  %mul.i = fmul float %17, %17
  %18 = load float* %arrayidx9.i47, align 4, !tbaa !4
  %mul4.i = fmul float %18, %18
  %add.i = fadd float %mul.i, %mul4.i
  %19 = load float* %arrayidx10.i48, align 4, !tbaa !4
  %mul7.i = fmul float %19, %19
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #2
  %cmp23 = fcmp olt float %conv9.i, %0
  %.pre = load i32* %n, align 4, !tbaa !3
  br label %land.end

land.end:                                         ; preds = %for.end, %land.rhs
  %20 = phi i32 [ %2, %for.end ], [ %.pre, %land.rhs ]
  %21 = phi i1 [ false, %for.end ], [ %cmp23, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  %indvars.iv.next54 = add i64 %indvars.iv53, 1
  %22 = trunc i64 %indvars.iv.next54 to i32
  %cmp = icmp slt i32 %22, %20
  br i1 %cmp, label %for.body, label %for.end26

for.end26:                                        ; preds = %land.end, %entry
  %bTest.0.lcssa = phi i32 [ 1, %entry ], [ %land.ext, %land.end ]
  ret i32 %bTest.0.lcssa
}

; Function Attrs: optsize
declare void @dump_conf(%struct.t_pull*, [3 x float]*, [3 x float]*, %struct.t_topology*, i32, float) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
