; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_graph = type { i32, %struct.t_graph* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@rm_pbc.ngraph = internal unnamed_addr global i32 0, align 4
@rm_pbc.mgraph = internal unnamed_addr global %struct.multi_graph* null, align 8
@rm_pbc.bFirst = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [7 x i8] c"mgraph\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c\00", align 1
@stdout = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [133 x i8] c"\0AWarning: can not make broken molecules whole without a run input file,\0A         don't worry, mdrun doesn't write broken molecules\0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @rm_pbc(%struct.t_idef* %idef, i32 %natoms, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #0 {
entry:
  %sv = alloca [27 x [3 x float]], align 16
  %box_size = alloca [3 x float], align 4
  %0 = bitcast [27 x [3 x float]]* %sv to i8*
  call void @llvm.lifetime.start(i64 324, i8* %0) #1
  %cmp = icmp ne [3 x float]* %x, %x_s
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %1 = load float* %arrayidx1, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %1) #3
  %2 = fpext float %fabsf to double
  %cmp3 = fcmp ogt double %2, 1.200000e-38
  br i1 %cmp3, label %if.then, label %if.end40

if.then:                                          ; preds = %entry
  %ntypes = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %3 = load i32* %ntypes, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %3, -1
  br i1 %cmp5, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %4 = load i32* @rm_pbc.ngraph, align 4, !tbaa !3
  %cmp883 = icmp sgt i32 %4, 0
  br i1 %cmp883, label %for.body.lr.ph, label %if.then17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv87 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next88, %for.body ]
  %n.084 = phi i32 [ -1, %for.body.lr.ph ], [ %i.0.n.0, %for.body ]
  %natoms11 = getelementptr inbounds %struct.multi_graph* %5, i64 %indvars.iv87, i32 0
  %6 = load i32* %natoms11, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %6, %natoms
  %7 = trunc i64 %indvars.iv87 to i32
  %i.0.n.0 = select i1 %cmp12, i32 %7, i32 %n.084
  %indvars.iv.next88 = add i64 %indvars.iv87, 1
  %8 = trunc i64 %indvars.iv.next88 to i32
  %cmp8 = icmp slt i32 %8, %4
  br i1 %cmp8, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp15 = icmp eq i32 %i.0.n.0, -1
  br i1 %cmp15, label %if.then17, label %if.end40.thread

if.then17:                                        ; preds = %for.cond.preheader, %for.end
  %inc18 = add nsw i32 %4, 1
  store i32 %inc18, i32* @rm_pbc.ngraph, align 4, !tbaa !3
  %9 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  %10 = bitcast %struct.multi_graph* %9 to i8*
  %mul = shl i32 %inc18, 4
  %call21 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %10, i32 %mul) #4
  %11 = bitcast i8* %call21 to %struct.multi_graph*
  store %struct.multi_graph* %11, %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  %idxprom22 = sext i32 %4 to i64
  %natoms24 = getelementptr inbounds %struct.multi_graph* %11, i64 %idxprom22, i32 0
  store i32 %natoms, i32* %natoms24, align 4, !tbaa !3
  %call25 = call %struct.t_graph* @mk_graph(%struct.t_idef* %idef, i32 %natoms, i32 0, i32 0) #4
  %12 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  %gr = getelementptr inbounds %struct.multi_graph* %12, i64 %idxprom22, i32 1
  store %struct.t_graph* %call25, %struct.t_graph** %gr, align 8, !tbaa !4
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %for.end, %if.then17
  %n.2 = phi i32 [ %4, %if.then17 ], [ %i.0.n.0, %for.end ]
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %idxprom29 = sext i32 %n.2 to i64
  %14 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  %gr31 = getelementptr inbounds %struct.multi_graph* %14, i64 %idxprom29, i32 1
  %15 = load %struct.t_graph** %gr31, align 8, !tbaa !4
  call void @mk_mshift(%struct._IO_FILE* %13, %struct.t_graph* %15, [3 x float]* %box, [3 x float]* %x) #4
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %arraydecay32 = getelementptr inbounds [27 x [3 x float]]* %sv, i64 0, i64 0
  call void @calc_shifts([3 x float]* %box, float* %arraydecay, [3 x float]* %arraydecay32) #4
  %16 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !tbaa !4
  %gr35 = getelementptr inbounds %struct.multi_graph* %16, i64 %idxprom29, i32 1
  %17 = load %struct.t_graph** %gr35, align 8, !tbaa !4
  call void @shift_x(%struct.t_graph* %17, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #4
  br label %if.end56

if.else:                                          ; preds = %if.then
  %.b = load i1* @rm_pbc.bFirst, align 1
  br i1 %.b, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.else
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8]* @.str2, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %18)
  store i1 true, i1* @rm_pbc.bFirst, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36, %entry
  %cmp4481 = icmp sgt i32 %natoms, 0
  %or.cond = and i1 %cmp, %cmp4481
  br i1 %or.cond, label %for.body46, label %if.end56

for.body46:                                       ; preds = %if.end40, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %if.end40 ]
  %arraydecay49 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %arraydecay52 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0
  %20 = load float* %arraydecay49, align 4, !tbaa !0
  store float %20, float* %arraydecay52, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %21 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1
  store float %21, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %22 = load float* %arrayidx4.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2
  store float %22, float* %arrayidx5.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %if.end56, label %for.body46

if.end56:                                         ; preds = %if.end40, %for.body46, %if.end40.thread
  call void @llvm.lifetime.end(i64 324, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @mk_mshift(%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #2

; Function Attrs: optsize
declare void @shift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
