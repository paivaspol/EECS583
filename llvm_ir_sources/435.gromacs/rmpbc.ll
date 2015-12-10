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
  call void @llvm.dbg.value(metadata !{%struct.t_idef* %idef}, i64 0, metadata !157), !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !158), !dbg !210
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !159), !dbg !210
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !160), !dbg !210
  call void @llvm.dbg.value(metadata !{[3 x float]* %x_s}, i64 0, metadata !161), !dbg !210
  %0 = bitcast [27 x [3 x float]]* %sv to i8*, !dbg !211
  call void @llvm.lifetime.start(i64 324, i8* %0) #2, !dbg !211
  call void @llvm.dbg.declare(metadata !{[27 x [3 x float]]* %sv}, metadata !162), !dbg !211
  call void @llvm.dbg.declare(metadata !{[3 x float]* %box_size}, metadata !166), !dbg !211
  %cmp = icmp ne [3 x float]* %x, %x_s, !dbg !212
  %arrayidx1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !213
  %1 = load float* %arrayidx1, align 4, !dbg !213, !tbaa !214
  %fabsf = call float @fabsf(float %1) #4, !dbg !213
  %2 = fpext float %fabsf to double, !dbg !213
  %cmp3 = fcmp ogt double %2, 1.200000e-38, !dbg !213
  br i1 %cmp3, label %if.then, label %if.end40, !dbg !213

if.then:                                          ; preds = %entry
  %ntypes = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0, !dbg !217
  %3 = load i32* %ntypes, align 4, !dbg !217, !tbaa !219
  %cmp5 = icmp eq i32 %3, -1, !dbg !217
  br i1 %cmp5, label %if.else, label %for.cond.preheader, !dbg !217

for.cond.preheader:                               ; preds = %if.then
  %4 = load i32* @rm_pbc.ngraph, align 4, !dbg !220, !tbaa !219
  %cmp883 = icmp sgt i32 %4, 0, !dbg !220
  br i1 %cmp883, label %for.body.lr.ph, label %if.then17, !dbg !220

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %5 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !223, !tbaa !224
  br label %for.body, !dbg !220

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv87 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next88, %for.body ]
  %n.084 = phi i32 [ -1, %for.body.lr.ph ], [ %i.0.n.0, %for.body ]
  %natoms11 = getelementptr inbounds %struct.multi_graph* %5, i64 %indvars.iv87, i32 0, !dbg !223
  %6 = load i32* %natoms11, align 4, !dbg !223, !tbaa !219
  %cmp12 = icmp eq i32 %6, %natoms, !dbg !223
  call void @llvm.dbg.value(metadata !225, i64 0, metadata !167), !dbg !226
  %7 = trunc i64 %indvars.iv87 to i32, !dbg !223
  %i.0.n.0 = select i1 %cmp12, i32 %7, i32 %n.084, !dbg !223
  %indvars.iv.next88 = add i64 %indvars.iv87, 1, !dbg !220
  %8 = trunc i64 %indvars.iv.next88 to i32, !dbg !220
  %cmp8 = icmp slt i32 %8, %4, !dbg !220
  br i1 %cmp8, label %for.body, label %for.end, !dbg !220

for.end:                                          ; preds = %for.body
  %cmp15 = icmp eq i32 %i.0.n.0, -1, !dbg !227
  br i1 %cmp15, label %if.then17, label %if.end40.thread, !dbg !227

if.then17:                                        ; preds = %for.cond.preheader, %for.end
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !167), !dbg !228
  %inc18 = add nsw i32 %4, 1, !dbg !230
  store i32 %inc18, i32* @rm_pbc.ngraph, align 4, !dbg !230, !tbaa !219
  %9 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !231, !tbaa !224
  %10 = bitcast %struct.multi_graph* %9 to i8*, !dbg !231
  %mul = shl i32 %inc18, 4, !dbg !231
  %call21 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %10, i32 %mul) #5, !dbg !231
  %11 = bitcast i8* %call21 to %struct.multi_graph*, !dbg !231
  store %struct.multi_graph* %11, %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !231, !tbaa !224
  %idxprom22 = sext i32 %4 to i64, !dbg !232
  %natoms24 = getelementptr inbounds %struct.multi_graph* %11, i64 %idxprom22, i32 0, !dbg !232
  store i32 %natoms, i32* %natoms24, align 4, !dbg !232, !tbaa !219
  %call25 = call %struct.t_graph* @mk_graph(%struct.t_idef* %idef, i32 %natoms, i32 0, i32 0) #5, !dbg !233
  %12 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !233, !tbaa !224
  %gr = getelementptr inbounds %struct.multi_graph* %12, i64 %idxprom22, i32 1, !dbg !233
  store %struct.t_graph* %call25, %struct.t_graph** %gr, align 8, !dbg !233, !tbaa !224
  br label %if.end40.thread, !dbg !234

if.end40.thread:                                  ; preds = %for.end, %if.then17
  %n.2 = phi i32 [ %4, %if.then17 ], [ %i.0.n.0, %for.end ]
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !235, !tbaa !224
  %idxprom29 = sext i32 %n.2 to i64, !dbg !235
  %14 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !235, !tbaa !224
  %gr31 = getelementptr inbounds %struct.multi_graph* %14, i64 %idxprom29, i32 1, !dbg !235
  %15 = load %struct.t_graph** %gr31, align 8, !dbg !235, !tbaa !224
  call void @mk_mshift(%struct._IO_FILE* %13, %struct.t_graph* %15, [3 x float]* %box, [3 x float]* %x) #5, !dbg !235
  %arraydecay = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0, !dbg !236
  %arraydecay32 = getelementptr inbounds [27 x [3 x float]]* %sv, i64 0, i64 0, !dbg !236
  call void @calc_shifts([3 x float]* %box, float* %arraydecay, [3 x float]* %arraydecay32) #5, !dbg !236
  %16 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !237, !tbaa !224
  %gr35 = getelementptr inbounds %struct.multi_graph* %16, i64 %idxprom29, i32 1, !dbg !237
  %17 = load %struct.t_graph** %gr35, align 8, !dbg !237, !tbaa !224
  call void @shift_x(%struct.t_graph* %17, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #5, !dbg !237
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !169), !dbg !238
  br label %if.end56, !dbg !239

if.else:                                          ; preds = %if.then
  %.b = load i1* @rm_pbc.bFirst, align 1
  br i1 %.b, label %if.end40, label %if.then36, !dbg !240

if.then36:                                        ; preds = %if.else
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !241, !tbaa !224
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([133 x i8]* @.str2, i64 0, i64 0), i64 132, i64 1, %struct._IO_FILE* %18), !dbg !241
  store i1 true, i1* @rm_pbc.bFirst, align 1
  br label %if.end40, !dbg !243

if.end40:                                         ; preds = %if.else, %if.then36, %entry
  %cmp4481 = icmp sgt i32 %natoms, 0, !dbg !244
  %or.cond = and i1 %cmp, %cmp4481, !dbg !239
  br i1 %or.cond, label %for.body46, label %if.end56, !dbg !239

for.body46:                                       ; preds = %if.end40, %for.body46
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body46 ], [ 0, %if.end40 ]
  %arraydecay49 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !246
  %arraydecay52 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0, !dbg !246
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay49}, i64 0, metadata !247), !dbg !248
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay52}, i64 0, metadata !249), !dbg !248
  %20 = load float* %arraydecay49, align 4, !dbg !250, !tbaa !214
  store float %20, float* %arraydecay52, align 4, !dbg !250, !tbaa !214
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !252
  %21 = load float* %arrayidx2.i, align 4, !dbg !252, !tbaa !214
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1, !dbg !252
  store float %21, float* %arrayidx3.i, align 4, !dbg !252, !tbaa !214
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !253
  %22 = load float* %arrayidx4.i, align 4, !dbg !253, !tbaa !214
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2, !dbg !253
  store float %22, float* %arrayidx5.i, align 4, !dbg !253, !tbaa !214
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !244
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !244
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms, !dbg !244
  br i1 %exitcond, label %if.end56, label %for.body46, !dbg !244

if.end56:                                         ; preds = %if.end40, %for.body46, %if.end40.thread
  call void @llvm.lifetime.end(i64 324, i8* %0) #2, !dbg !254
  ret void, !dbg !254
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #3

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @mk_mshift(%struct._IO_FILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #3

; Function Attrs: optsize
declare void @shift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !181, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !170}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rm_pbc", metadata !"rm_pbc", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @rm_pbc, null, null, metadata !156, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [rm_pbc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !153, metadata !154, metadata !154}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_idef]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_idef", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_idef] [line 188, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 179, i64 366336, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 179, size 366336, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !20, metadata !137}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ntypes", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ntypes] [line 181, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nodeid", i32 182, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 182, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"atnr", i32 183, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [atnr] [line 183, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"functype", i32 184, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [functype] [line 184, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_functype]
!19 = metadata !{i32 786454, metadata !11, null, metadata !"t_functype", i32 133, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [t_functype] [line 133, size 0, align 0, offset 0] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"iparams", i32 185, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [iparams] [line 185, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iparams]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"t_iparams", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [t_iparams] [line 131, size 0, align 0, offset 0] [from ]
!23 = metadata !{i32 786455, metadata !11, null, metadata !"", i32 97, i64 192, i64 32, i64 0, i32 0, null, metadata !24, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 97, size 192, align 32, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !33, metadata !40, metadata !46, metadata !55, metadata !60, metadata !67, metadata !75, metadata !80, metadata !85, metadata !91, metadata !99, metadata !106, metadata !115, metadata !124, metadata !133}
!25 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"bham", i32 105, i64 96, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [bham] [line 105, size 96, align 32, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 105, i64 96, i64 32, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 105, size 96, align 32, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !31, metadata !32}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"a", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [a] [line 105, size 32, align 32, offset 0] [from real]
!29 = metadata !{i32 786454, metadata !11, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!30 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!31 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"b", i32 105, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [b] [line 105, size 32, align 32, offset 32] [from real]
!32 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"c", i32 105, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [c] [line 105, size 32, align 32, offset 64] [from real]
!33 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"harmonic", i32 106, i64 128, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [harmonic] [line 106, size 128, align 32, offset 0] [from ]
!34 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 106, i64 128, i64 32, i32 0, i32 0, null, metadata !35, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 106, size 128, align 32, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39}
!36 = metadata !{i32 786445, metadata !11, metadata !34, metadata !"rA", i32 106, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [rA] [line 106, size 32, align 32, offset 0] [from real]
!37 = metadata !{i32 786445, metadata !11, metadata !34, metadata !"krA", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [krA] [line 106, size 32, align 32, offset 32] [from real]
!38 = metadata !{i32 786445, metadata !11, metadata !34, metadata !"rB", i32 106, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [rB] [line 106, size 32, align 32, offset 64] [from real]
!39 = metadata !{i32 786445, metadata !11, metadata !34, metadata !"krB", i32 106, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [krB] [line 106, size 32, align 32, offset 96] [from real]
!40 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"cubic", i32 108, i64 96, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [cubic] [line 108, size 96, align 32, offset 0] [from ]
!41 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 108, i64 96, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 108, size 96, align 32, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786445, metadata !11, metadata !41, metadata !"b0", i32 108, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [b0] [line 108, size 32, align 32, offset 0] [from real]
!44 = metadata !{i32 786445, metadata !11, metadata !41, metadata !"kb", i32 108, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [kb] [line 108, size 32, align 32, offset 32] [from real]
!45 = metadata !{i32 786445, metadata !11, metadata !41, metadata !"kcub", i32 108, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [kcub] [line 108, size 32, align 32, offset 64] [from real]
!46 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"wpol", i32 110, i64 192, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [wpol] [line 110, size 192, align 32, offset 0] [from ]
!47 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 110, i64 192, i64 32, i32 0, i32 0, null, metadata !48, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 110, size 192, align 32, offset 0] [from ]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!49 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"kx", i32 110, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [kx] [line 110, size 32, align 32, offset 0] [from real]
!50 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"ky", i32 110, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [ky] [line 110, size 32, align 32, offset 32] [from real]
!51 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"kz", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [kz] [line 110, size 32, align 32, offset 64] [from real]
!52 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"rOH", i32 110, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [rOH] [line 110, size 32, align 32, offset 96] [from real]
!53 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"rHH", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [rHH] [line 110, size 32, align 32, offset 128] [from real]
!54 = metadata !{i32 786445, metadata !11, metadata !47, metadata !"rOD", i32 110, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [rOD] [line 110, size 32, align 32, offset 160] [from real]
!55 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"lj", i32 111, i64 64, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [lj] [line 111, size 64, align 32, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 111, i64 64, i64 32, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 111, size 64, align 32, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !59}
!58 = metadata !{i32 786445, metadata !11, metadata !56, metadata !"c6", i32 111, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [c6] [line 111, size 32, align 32, offset 0] [from real]
!59 = metadata !{i32 786445, metadata !11, metadata !56, metadata !"c12", i32 111, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [c12] [line 111, size 32, align 32, offset 32] [from real]
!60 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"lj14", i32 112, i64 128, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_member ] [lj14] [line 112, size 128, align 32, offset 0] [from ]
!61 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 112, i64 128, i64 32, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 112, size 128, align 32, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66}
!63 = metadata !{i32 786445, metadata !11, metadata !61, metadata !"c6A", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [c6A] [line 112, size 32, align 32, offset 0] [from real]
!64 = metadata !{i32 786445, metadata !11, metadata !61, metadata !"c12A", i32 112, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [c12A] [line 112, size 32, align 32, offset 32] [from real]
!65 = metadata !{i32 786445, metadata !11, metadata !61, metadata !"c6B", i32 112, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [c6B] [line 112, size 32, align 32, offset 64] [from real]
!66 = metadata !{i32 786445, metadata !11, metadata !61, metadata !"c12B", i32 112, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [c12B] [line 112, size 32, align 32, offset 96] [from real]
!67 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"pdihs", i32 117, i64 160, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [pdihs] [line 117, size 160, align 32, offset 0] [from ]
!68 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 117, i64 160, i64 32, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 117, size 160, align 32, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74}
!70 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"phiA", i32 117, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [phiA] [line 117, size 32, align 32, offset 0] [from real]
!71 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"cpA", i32 117, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [cpA] [line 117, size 32, align 32, offset 32] [from real]
!72 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"mult", i32 117, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [mult] [line 117, size 32, align 32, offset 64] [from int]
!73 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"phiB", i32 117, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [phiB] [line 117, size 32, align 32, offset 96] [from real]
!74 = metadata !{i32 786445, metadata !11, metadata !68, metadata !"cpB", i32 117, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [cpB] [line 117, size 32, align 32, offset 128] [from real]
!75 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"shake", i32 118, i64 64, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [shake] [line 118, size 64, align 32, offset 0] [from ]
!76 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 118, i64 64, i64 32, i32 0, i32 0, null, metadata !77, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 118, size 64, align 32, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786445, metadata !11, metadata !76, metadata !"dA", i32 118, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [dA] [line 118, size 32, align 32, offset 0] [from real]
!79 = metadata !{i32 786445, metadata !11, metadata !76, metadata !"dB", i32 118, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [dB] [line 118, size 32, align 32, offset 32] [from real]
!80 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"settle", i32 123, i64 64, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [settle] [line 123, size 64, align 32, offset 0] [from ]
!81 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 123, i64 64, i64 32, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 123, size 64, align 32, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84}
!83 = metadata !{i32 786445, metadata !11, metadata !81, metadata !"doh", i32 123, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [doh] [line 123, size 32, align 32, offset 0] [from real]
!84 = metadata !{i32 786445, metadata !11, metadata !81, metadata !"dhh", i32 123, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [dhh] [line 123, size 32, align 32, offset 32] [from real]
!85 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"morse", i32 124, i64 96, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [morse] [line 124, size 96, align 32, offset 0] [from ]
!86 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 124, i64 96, i64 32, i32 0, i32 0, null, metadata !87, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 124, size 96, align 32, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90}
!88 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"b0", i32 124, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [b0] [line 124, size 32, align 32, offset 0] [from real]
!89 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"cb", i32 124, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [cb] [line 124, size 32, align 32, offset 32] [from real]
!90 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"beta", i32 124, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [beta] [line 124, size 32, align 32, offset 64] [from real]
!91 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"posres", i32 125, i64 192, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [posres] [line 125, size 192, align 32, offset 0] [from ]
!92 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 125, i64 192, i64 32, i32 0, i32 0, null, metadata !93, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 125, size 192, align 32, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !98}
!94 = metadata !{i32 786445, metadata !11, metadata !92, metadata !"pos0", i32 125, i64 96, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [pos0] [line 125, size 96, align 32, offset 0] [from ]
!95 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !29, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!96 = metadata !{metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!98 = metadata !{i32 786445, metadata !11, metadata !92, metadata !"fc", i32 125, i64 96, i64 32, i64 96, i32 0, metadata !95} ; [ DW_TAG_member ] [fc] [line 125, size 96, align 32, offset 96] [from ]
!99 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"rbdihs", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [rbdihs] [line 126, size 192, align 32, offset 0] [from ]
!100 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 126, i64 192, i64 32, i32 0, i32 0, null, metadata !101, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 126, size 192, align 32, offset 0] [from ]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786445, metadata !11, metadata !100, metadata !"rbc", i32 126, i64 192, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [rbc] [line 126, size 192, align 32, offset 0] [from ]
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !29, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from real]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!106 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"dummy", i32 127, i64 192, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [dummy] [line 127, size 192, align 32, offset 0] [from ]
!107 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 127, i64 192, i64 32, i32 0, i32 0, null, metadata !108, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 127, size 192, align 32, offset 0] [from ]
!108 = metadata !{metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!109 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"a", i32 127, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [a] [line 127, size 32, align 32, offset 0] [from real]
!110 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"b", i32 127, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [b] [line 127, size 32, align 32, offset 32] [from real]
!111 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"c", i32 127, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [c] [line 127, size 32, align 32, offset 64] [from real]
!112 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"d", i32 127, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [d] [line 127, size 32, align 32, offset 96] [from real]
!113 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"e", i32 127, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [e] [line 127, size 32, align 32, offset 128] [from real]
!114 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"f", i32 127, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [f] [line 127, size 32, align 32, offset 160] [from real]
!115 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"disres", i32 128, i64 192, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ] [disres] [line 128, size 192, align 32, offset 0] [from ]
!116 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 128, i64 192, i64 32, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 128, size 192, align 32, offset 0] [from ]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!118 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"low", i32 128, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [low] [line 128, size 32, align 32, offset 0] [from real]
!119 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"up1", i32 128, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [up1] [line 128, size 32, align 32, offset 32] [from real]
!120 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"up2", i32 128, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [up2] [line 128, size 32, align 32, offset 64] [from real]
!121 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"kfac", i32 128, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [kfac] [line 128, size 32, align 32, offset 96] [from real]
!122 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"type", i32 128, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 128, size 32, align 32, offset 128] [from int]
!123 = metadata !{i32 786445, metadata !11, metadata !116, metadata !"label", i32 128, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [label] [line 128, size 32, align 32, offset 160] [from int]
!124 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"orires", i32 129, i64 192, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [orires] [line 129, size 192, align 32, offset 0] [from ]
!125 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 129, i64 192, i64 32, i32 0, i32 0, null, metadata !126, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 129, size 192, align 32, offset 0] [from ]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!127 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"ex", i32 129, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [ex] [line 129, size 32, align 32, offset 0] [from int]
!128 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"pow", i32 129, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [pow] [line 129, size 32, align 32, offset 32] [from int]
!129 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"label", i32 129, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [label] [line 129, size 32, align 32, offset 64] [from int]
!130 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"c", i32 129, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [c] [line 129, size 32, align 32, offset 96] [from real]
!131 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"obs", i32 129, i64 32, i64 32, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [obs] [line 129, size 32, align 32, offset 128] [from real]
!132 = metadata !{i32 786445, metadata !11, metadata !125, metadata !"kfac", i32 129, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [kfac] [line 129, size 32, align 32, offset 160] [from real]
!133 = metadata !{i32 786445, metadata !11, metadata !23, metadata !"generic", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !134} ; [ DW_TAG_member ] [generic] [line 130, size 192, align 32, offset 0] [from ]
!134 = metadata !{i32 786451, metadata !11, metadata !23, metadata !"", i32 130, i64 192, i64 32, i32 0, i32 0, null, metadata !135, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 130, size 192, align 32, offset 0] [from ]
!135 = metadata !{metadata !136}
!136 = metadata !{i32 786445, metadata !11, metadata !134, metadata !"buf", i32 130, i64 192, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [buf] [line 130, size 192, align 32, offset 0] [from ]
!137 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"il", i32 187, i64 366080, i64 64, i64 256, i32 0, metadata !138} ; [ DW_TAG_member ] [il] [line 187, size 366080, align 64, offset 256] [from ]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 366080, i64 64, i32 0, i32 0, metadata !139, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 366080, align 64, offset 0] [from t_ilist]
!139 = metadata !{i32 786454, metadata !11, null, metadata !"t_ilist", i32 140, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [t_ilist] [line 140, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 135, i64 8320, i64 64, i32 0, i32 0, null, metadata !141, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 135, size 8320, align 64, offset 0] [from ]
!141 = metadata !{metadata !142, metadata !143, metadata !147}
!142 = metadata !{i32 786445, metadata !11, metadata !140, metadata !"nr", i32 137, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nr] [line 137, size 32, align 32, offset 0] [from int]
!143 = metadata !{i32 786445, metadata !11, metadata !140, metadata !"multinr", i32 138, i64 8192, i64 32, i64 32, i32 0, metadata !144} ; [ DW_TAG_member ] [multinr] [line 138, size 8192, align 32, offset 32] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !14, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!147 = metadata !{i32 786445, metadata !11, metadata !140, metadata !"iatoms", i32 139, i64 64, i64 64, i64 8256, i32 0, metadata !148} ; [ DW_TAG_member ] [iatoms] [line 139, size 64, align 64, offset 8256] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_iatom]
!149 = metadata !{i32 786454, metadata !11, null, metadata !"t_iatom", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [t_iatom] [line 45, size 0, align 0, offset 0] [from atom_id]
!150 = metadata !{i32 786454, metadata !11, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 44}      ; [ DW_TAG_subrange_type ] [0, 43]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!154 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!155 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !166, metadata !167, metadata !168, metadata !169}
!157 = metadata !{i32 786689, metadata !4, metadata !"idef", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idef] [line 42]
!158 = metadata !{i32 786689, metadata !4, metadata !"natoms", metadata !5, i32 33554474, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 42]
!159 = metadata !{i32 786689, metadata !4, metadata !"box", metadata !5, i32 50331690, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 42]
!160 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 67108906, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 42]
!161 = metadata !{i32 786689, metadata !4, metadata !"x_s", metadata !5, i32 83886122, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x_s] [line 42]
!162 = metadata !{i32 786688, metadata !4, metadata !"sv", metadata !5, i32 52, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sv] [line 52]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2592, i64 32, i32 0, i32 0, metadata !155, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2592, align 32, offset 0] [from rvec]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 27}      ; [ DW_TAG_subrange_type ] [0, 26]
!166 = metadata !{i32 786688, metadata !4, metadata !"box_size", metadata !5, i32 52, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [box_size] [line 52]
!167 = metadata !{i32 786688, metadata !4, metadata !"n", metadata !5, i32 53, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 53]
!168 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 53, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 53]
!169 = metadata !{i32 786688, metadata !4, metadata !"bNeedToCopy", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bNeedToCopy] [line 54]
!170 = metadata !{i32 786478, metadata !171, metadata !172, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !178, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!171 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!172 = metadata !{i32 786473, metadata !171}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{null, metadata !175, metadata !177}
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!176 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786689, metadata !170, metadata !"a", metadata !172, i32 16777486, metadata !175, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!180 = metadata !{i32 786689, metadata !170, metadata !"b", metadata !172, i32 33554702, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!181 = metadata !{metadata !182, metadata !183, metadata !209}
!182 = metadata !{i32 786484, i32 0, metadata !4, metadata !"ngraph", metadata !"ngraph", metadata !"", metadata !5, i32 49, metadata !14, i32 1, i32 1, i32* @rm_pbc.ngraph, null} ; [ DW_TAG_variable ] [ngraph] [line 49] [local] [def]
!183 = metadata !{i32 786484, i32 0, metadata !4, metadata !"mgraph", metadata !"mgraph", metadata !"", metadata !5, i32 50, metadata !184, i32 1, i32 1, %struct.multi_graph** @rm_pbc.mgraph, null} ; [ DW_TAG_variable ] [mgraph] [line 50] [local] [def]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from multi_graph]
!185 = metadata !{i32 786454, metadata !1, metadata !4, metadata !"multi_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_typedef ] [multi_graph] [line 47, size 0, align 0, offset 0] [from ]
!186 = metadata !{i32 786451, metadata !1, metadata !4, metadata !"", i32 44, i64 128, i64 64, i32 0, i32 0, null, metadata !187, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 128, align 64, offset 0] [from ]
!187 = metadata !{metadata !188, metadata !189}
!188 = metadata !{i32 786445, metadata !1, metadata !186, metadata !"natoms", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [natoms] [line 45, size 32, align 32, offset 0] [from int]
!189 = metadata !{i32 786445, metadata !1, metadata !186, metadata !"gr", i32 46, i64 64, i64 64, i64 64, i32 0, metadata !190} ; [ DW_TAG_member ] [gr] [line 46, size 64, align 64, offset 64] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_graph]
!191 = metadata !{i32 786454, metadata !1, null, metadata !"t_graph", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [t_graph] [line 47, size 0, align 0, offset 0] [from ]
!192 = metadata !{i32 786451, metadata !193, null, metadata !"", i32 38, i64 384, i64 64, i32 0, i32 0, null, metadata !194, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 384, align 64, offset 0] [from ]
!193 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !202, metadata !205}
!195 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"maxbond", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [maxbond] [line 39, size 32, align 32, offset 0] [from int]
!196 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"nnodes", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 40, size 32, align 32, offset 32] [from int]
!197 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"nbound", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nbound] [line 41, size 32, align 32, offset 64] [from int]
!198 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"start", i32 42, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [start] [line 42, size 32, align 32, offset 96] [from int]
!199 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"end", i32 43, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [end] [line 43, size 32, align 32, offset 128] [from int]
!200 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"nedge", i32 44, i64 64, i64 64, i64 192, i32 0, metadata !201} ; [ DW_TAG_member ] [nedge] [line 44, size 64, align 64, offset 192] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!202 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"edge", i32 45, i64 64, i64 64, i64 256, i32 0, metadata !203} ; [ DW_TAG_member ] [edge] [line 45, size 64, align 64, offset 256] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!205 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"ishift", i32 46, i64 64, i64 64, i64 320, i32 0, metadata !206} ; [ DW_TAG_member ] [ishift] [line 46, size 64, align 64, offset 320] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!207 = metadata !{i32 786454, metadata !193, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !14, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!209 = metadata !{i32 786484, i32 0, metadata !4, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 51, metadata !14, i32 1, i32 1, null, null}
!210 = metadata !{i32 42, i32 0, metadata !4, null}
!211 = metadata !{i32 52, i32 0, metadata !4, null}
!212 = metadata !{i32 56, i32 0, metadata !4, null}
!213 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!214 = metadata !{metadata !"float", metadata !215}
!215 = metadata !{metadata !"omnipotent char", metadata !216}
!216 = metadata !{metadata !"Simple C/C++ TBAA"}
!217 = metadata !{i32 59, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !4, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!219 = metadata !{metadata !"int", metadata !215}
!220 = metadata !{i32 61, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !222, i32 61, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!222 = metadata !{i32 786443, metadata !1, metadata !218, i32 59, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!223 = metadata !{i32 62, i32 0, metadata !221, null}
!224 = metadata !{metadata !"any pointer", metadata !215}
!225 = metadata !{i32 undef}
!226 = metadata !{i32 63, i32 0, metadata !221, null}
!227 = metadata !{i32 64, i32 0, metadata !222, null}
!228 = metadata !{i32 66, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !222, i32 64, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!230 = metadata !{i32 67, i32 0, metadata !229, null}
!231 = metadata !{i32 68, i32 0, metadata !229, null}
!232 = metadata !{i32 69, i32 0, metadata !229, null}
!233 = metadata !{i32 70, i32 0, metadata !229, null}
!234 = metadata !{i32 71, i32 0, metadata !229, null}
!235 = metadata !{i32 72, i32 0, metadata !222, null}
!236 = metadata !{i32 73, i32 0, metadata !222, null}
!237 = metadata !{i32 74, i32 0, metadata !222, null}
!238 = metadata !{i32 75, i32 0, metadata !222, null}
!239 = metadata !{i32 82, i32 0, metadata !4, null}
!240 = metadata !{i32 76, i32 0, metadata !218, null}
!241 = metadata !{i32 77, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !218, i32 76, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!243 = metadata !{i32 80, i32 0, metadata !242, null}
!244 = metadata !{i32 83, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rmpbc.c]
!246 = metadata !{i32 84, i32 0, metadata !245, null}
!247 = metadata !{i32 786689, metadata !170, metadata !"a", metadata !172, i32 16777486, metadata !175, i32 0, metadata !246} ; [ DW_TAG_arg_variable ] [a] [line 270]
!248 = metadata !{i32 270, i32 0, metadata !170, metadata !246}
!249 = metadata !{i32 786689, metadata !170, metadata !"b", metadata !172, i32 33554702, metadata !177, i32 0, metadata !246} ; [ DW_TAG_arg_variable ] [b] [line 270]
!250 = metadata !{i32 272, i32 0, metadata !251, metadata !246}
!251 = metadata !{i32 786443, metadata !171, metadata !170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!252 = metadata !{i32 273, i32 0, metadata !251, metadata !246}
!253 = metadata !{i32 274, i32 0, metadata !251, metadata !246}
!254 = metadata !{i32 85, i32 0, metadata !4, null}
