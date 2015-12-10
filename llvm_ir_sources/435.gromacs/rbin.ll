; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_bin = type { i32, i32, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"b->rbuf\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_bin* @mk_bin() #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 43, i32 1, i32 16) #4, !dbg !148
  %0 = bitcast i8* %call to %struct.t_bin*, !dbg !148
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %0}, i64 0, metadata !20), !dbg !148
  ret %struct.t_bin* %0, !dbg !149
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @reset_bin(%struct.t_bin* nocapture %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !25), !dbg !150
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !151
  store i32 0, i32* %nreal, align 4, !dbg !151, !tbaa !152
  ret void, !dbg !155
}

; Function Attrs: nounwind optsize uwtable
define i32 @add_binr(%struct._IO_FILE* nocapture %log, %struct.t_bin* nocapture %b, i32 %nr, float* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !90), !dbg !156
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !91), !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !92), !dbg !156
  tail call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !93), !dbg !156
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !157
  %0 = load i32* %nreal, align 4, !dbg !157, !tbaa !152
  %add = add nsw i32 %0, %nr, !dbg !157
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !157
  %1 = load i32* %maxreal, align 4, !dbg !157, !tbaa !152
  %cmp = icmp sgt i32 %add, %1, !dbg !157
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge, !dbg !157

entry.if.end13_crit_edge:                         ; preds = %entry
  %rbuf14.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre45 = load double** %rbuf14.phi.trans.insert, align 8, !dbg !158, !tbaa !159
  br label %if.end13, !dbg !157

if.then:                                          ; preds = %entry
  %rem = srem i32 %add, 4, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !95), !dbg !160
  %cmp5 = icmp eq i32 %rem, 0, !dbg !162
  br i1 %cmp5, label %if.end, label %if.then6, !dbg !162

if.then6:                                         ; preds = %if.then
  %sub = add i32 %add, 4, !dbg !163
  %add8 = sub i32 %sub, %rem, !dbg !163
  br label %if.end, !dbg !163

if.end:                                           ; preds = %if.then, %if.then6
  %storemerge = phi i32 [ %add8, %if.then6 ], [ %add, %if.then ]
  store i32 %storemerge, i32* %maxreal, align 4, !dbg !164, !tbaa !152
  %rbuf9 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !165
  %2 = load double** %rbuf9, align 8, !dbg !165, !tbaa !159
  %3 = bitcast double* %2 to i8*, !dbg !165
  %mul = shl i32 %storemerge, 3, !dbg !165
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %3, i32 %mul) #4, !dbg !165
  %4 = bitcast i8* %call to double*, !dbg !165
  store double* %4, double** %rbuf9, align 8, !dbg !165, !tbaa !159
  %.pre = load i32* %nreal, align 4, !dbg !158, !tbaa !152
  br label %if.end13, !dbg !166

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.end
  %5 = phi double* [ %4, %if.end ], [ %.pre45, %entry.if.end13_crit_edge ]
  %6 = phi i32 [ %.pre, %if.end ], [ %0, %entry.if.end13_crit_edge ]
  %idx.ext = sext i32 %6 to i64, !dbg !158
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !167
  %cmp1643 = icmp sgt i32 %nr, 0, !dbg !167
  br i1 %cmp1643, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %if.end13, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end13 ]
  %arrayidx = getelementptr inbounds float* %r, i64 %indvars.iv, !dbg !169
  %7 = load float* %arrayidx, align 4, !dbg !169, !tbaa !170
  %conv18 = fpext float %7 to double, !dbg !169
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext, !dbg !169
  %arrayidx20 = getelementptr inbounds double* %5, i64 %add.ptr.sum, !dbg !169
  store double %conv18, double* %arrayidx20, align 8, !dbg !169, !tbaa !171
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !167
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !167
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !167
  br i1 %exitcond, label %for.end, label %for.body, !dbg !167

for.end:                                          ; preds = %for.body, %if.end13
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !96), !dbg !172
  %add23 = add nsw i32 %6, %nr, !dbg !173
  store i32 %add23, i32* %nreal, align 4, !dbg !173, !tbaa !152
  ret i32 %6, !dbg !174
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @add_bind(%struct._IO_FILE* nocapture %log, %struct.t_bin* nocapture %b, i32 %nr, double* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !102), !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !103), !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !104), !dbg !175
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !105), !dbg !175
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !176
  %0 = load i32* %nreal, align 4, !dbg !176, !tbaa !152
  %add = add nsw i32 %0, %nr, !dbg !176
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !176
  %1 = load i32* %maxreal, align 4, !dbg !176, !tbaa !152
  %cmp = icmp sgt i32 %add, %1, !dbg !176
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge, !dbg !176

entry.if.end13_crit_edge:                         ; preds = %entry
  %rbuf14.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre45 = load double** %rbuf14.phi.trans.insert, align 8, !dbg !177, !tbaa !159
  br label %if.end13, !dbg !176

if.then:                                          ; preds = %entry
  %rem = srem i32 %add, 4, !dbg !178
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !107), !dbg !178
  %cmp5 = icmp eq i32 %rem, 0, !dbg !180
  br i1 %cmp5, label %if.end, label %if.then6, !dbg !180

if.then6:                                         ; preds = %if.then
  %sub = add i32 %add, 4, !dbg !181
  %add8 = sub i32 %sub, %rem, !dbg !181
  br label %if.end, !dbg !181

if.end:                                           ; preds = %if.then, %if.then6
  %storemerge = phi i32 [ %add8, %if.then6 ], [ %add, %if.then ]
  store i32 %storemerge, i32* %maxreal, align 4, !dbg !182, !tbaa !152
  %rbuf9 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !183
  %2 = load double** %rbuf9, align 8, !dbg !183, !tbaa !159
  %3 = bitcast double* %2 to i8*, !dbg !183
  %mul = shl i32 %storemerge, 3, !dbg !183
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %3, i32 %mul) #4, !dbg !183
  %4 = bitcast i8* %call to double*, !dbg !183
  store double* %4, double** %rbuf9, align 8, !dbg !183, !tbaa !159
  %.pre = load i32* %nreal, align 4, !dbg !177, !tbaa !152
  br label %if.end13, !dbg !184

if.end13:                                         ; preds = %entry.if.end13_crit_edge, %if.end
  %5 = phi double* [ %4, %if.end ], [ %.pre45, %entry.if.end13_crit_edge ]
  %6 = phi i32 [ %.pre, %if.end ], [ %0, %entry.if.end13_crit_edge ]
  %idx.ext = sext i32 %6 to i64, !dbg !177
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !106), !dbg !185
  %cmp1642 = icmp sgt i32 %nr, 0, !dbg !185
  br i1 %cmp1642, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %if.end13, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end13 ]
  %arrayidx = getelementptr inbounds double* %r, i64 %indvars.iv, !dbg !187
  %7 = load double* %arrayidx, align 8, !dbg !187, !tbaa !171
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext, !dbg !187
  %arrayidx19 = getelementptr inbounds double* %5, i64 %add.ptr.sum, !dbg !187
  store double %7, double* %arrayidx19, align 8, !dbg !187, !tbaa !171
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !185
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !185
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !185
  br i1 %exitcond, label %for.end, label %for.body, !dbg !185

for.end:                                          ; preds = %for.body, %if.end13
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !108), !dbg !188
  %add22 = add nsw i32 %6, %nr, !dbg !189
  store i32 %add22, i32* %nreal, align 4, !dbg !189, !tbaa !152
  ret i32 %6, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define void @sum_bin(%struct.t_bin* nocapture %b, %struct.t_commrec* %cr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !125), !dbg !191
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !126), !dbg !191
  %nreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0, !dbg !192
  %0 = load i32* %nreal, align 4, !dbg !192, !tbaa !152
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !127), !dbg !192
  %maxreal = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1, !dbg !192
  %1 = load i32* %maxreal, align 4, !dbg !192, !tbaa !152
  %cmp9 = icmp slt i32 %0, %1, !dbg !192
  %rbuf = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !194
  br i1 %cmp9, label %for.body.lr.ph, label %for.end, !dbg !192

for.body.lr.ph:                                   ; preds = %entry
  %2 = load double** %rbuf, align 8, !dbg !194, !tbaa !159
  %3 = sext i32 %0 to i64
  %scevgep = getelementptr double* %2, i64 %3
  %scevgep11 = bitcast double* %scevgep to i8*
  %4 = add i32 %0, 1, !dbg !192
  %5 = icmp sgt i32 %1, %4
  %smax = select i1 %5, i32 %1, i32 %4
  %6 = add i32 %smax, -1, !dbg !192
  %7 = sub i32 %6, %0, !dbg !192
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3, !dbg !192
  %10 = add i64 %9, 8, !dbg !192
  call void @llvm.memset.p0i8.i64(i8* %scevgep11, i8 0, i64 %10, i32 8, i1 false), !dbg !194
  br label %for.end, !dbg !192

for.end:                                          ; preds = %entry, %for.body.lr.ph
  %11 = load double** %rbuf, align 8, !dbg !195, !tbaa !159
  tail call void @gmx_sumd(i32 %1, double* %11, %struct.t_commrec* %cr) #4, !dbg !195
  ret void, !dbg !196
}

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize uwtable
define void @extract_binr(%struct.t_bin* nocapture %b, i32 %index, i32 %nr, float* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !132), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !133), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !134), !dbg !197
  tail call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !135), !dbg !197
  %rbuf1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !198
  %0 = load double** %rbuf1, align 8, !dbg !198, !tbaa !159
  %idx.ext = sext i32 %index to i64, !dbg !198
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !136), !dbg !199
  %cmp7 = icmp sgt i32 %nr, 0, !dbg !199
  br i1 %cmp7, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext, !dbg !201
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !201
  %1 = load double* %arrayidx, align 8, !dbg !201, !tbaa !171
  %conv = fptrunc double %1 to float, !dbg !201
  %arrayidx3 = getelementptr inbounds float* %r, i64 %indvars.iv, !dbg !201
  store float %conv, float* %arrayidx3, align 4, !dbg !201, !tbaa !170
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !199
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !199
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !199
  br i1 %exitcond, label %for.end, label %for.body, !dbg !199

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !202
}

; Function Attrs: nounwind optsize uwtable
define void @extract_bind(%struct.t_bin* nocapture %b, i32 %index, i32 %nr, double* nocapture %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_bin* %b}, i64 0, metadata !142), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !143), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !144), !dbg !203
  tail call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !145), !dbg !203
  %rbuf1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2, !dbg !204
  %0 = load double** %rbuf1, align 8, !dbg !204, !tbaa !159
  %idx.ext = sext i32 %index to i64, !dbg !204
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !146), !dbg !205
  %cmp7 = icmp sgt i32 %nr, 0, !dbg !205
  br i1 %cmp7, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr.sum = add i64 %indvars.iv, %idx.ext, !dbg !207
  %arrayidx = getelementptr inbounds double* %0, i64 %add.ptr.sum, !dbg !207
  %1 = load double* %arrayidx, align 8, !dbg !207, !tbaa !171
  %arrayidx3 = getelementptr inbounds double* %r, i64 %indvars.iv, !dbg !207
  store double %1, double* %arrayidx3, align 8, !dbg !207, !tbaa !171
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !205
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !205
  %exitcond = icmp eq i32 %lftr.wideiv, %nr, !dbg !205
  br i1 %exitcond, label %for.end, label %for.body, !dbg !205

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !208
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !21, metadata !26, metadata !98, metadata !110, metadata !128, metadata !138}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mk_bin", metadata !"mk_bin", metadata !"", i32 39, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_bin* ()* @mk_bin, null, null, metadata !19, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [mk_bin]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_bin]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"t_bin", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [t_bin] [line 49, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 45, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nreal", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nreal] [line 46, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxreal", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxreal] [line 47, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rbuf", i32 48, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [rbuf] [line 48, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!18 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 41]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_bin", metadata !"reset_bin", metadata !"", i32 48, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_bin*)* @reset_bin, null, null, metadata !24, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [reset_bin]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !8}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786689, metadata !21, metadata !"b", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 48]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"add_binr", metadata !"add_binr", metadata !"", i32 53, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_bin*, i32, float*)* @add_binr, null, null, metadata !89, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [add_binr]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !14, metadata !29, metadata !8, metadata !14, metadata !86}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!32 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !56, metadata !57, metadata !58, metadata !59, metadata !62, metadata !64, metadata !66, metadata !70, metadata !72, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !81, metadata !82}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!41 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!44 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!45 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!47 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!48 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !49} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!50 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!51 = metadata !{metadata !52, metadata !53, metadata !55}
!52 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!55 = metadata !{i32 786445, metadata !32, metadata !50, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!56 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !54} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!57 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!58 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!59 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !60} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!60 = metadata !{i32 786454, metadata !32, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!61 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!62 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !63} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!63 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!64 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !65} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!65 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!66 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !67} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!67 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!70 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !71} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !73} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!73 = metadata !{i32 786454, metadata !32, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!74 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!75 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!76 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!77 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !71} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!78 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !79} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!79 = metadata !{i32 786454, metadata !32, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!80 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!81 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!82 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !83} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!83 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!87 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!88 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!90 = metadata !{i32 786689, metadata !26, metadata !"log", metadata !5, i32 16777269, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 53]
!91 = metadata !{i32 786689, metadata !26, metadata !"b", metadata !5, i32 33554485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 53]
!92 = metadata !{i32 786689, metadata !26, metadata !"nr", metadata !5, i32 50331701, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 53]
!93 = metadata !{i32 786689, metadata !26, metadata !"r", metadata !5, i32 67108917, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 53]
!94 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !5, i32 56, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 56]
!95 = metadata !{i32 786688, metadata !26, metadata !"rest", metadata !5, i32 56, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rest] [line 56]
!96 = metadata !{i32 786688, metadata !26, metadata !"index", metadata !5, i32 56, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 56]
!97 = metadata !{i32 786688, metadata !26, metadata !"rbuf", metadata !5, i32 57, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbuf] [line 57]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"add_bind", metadata !"add_bind", metadata !"", i32 85, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_bin*, i32, double*)* @add_bind, null, null, metadata !101, i32 86} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 86] [add_bind]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !14, metadata !29, metadata !8, metadata !14, metadata !17}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!102 = metadata !{i32 786689, metadata !98, metadata !"log", metadata !5, i32 16777301, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 85]
!103 = metadata !{i32 786689, metadata !98, metadata !"b", metadata !5, i32 33554517, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 85]
!104 = metadata !{i32 786689, metadata !98, metadata !"nr", metadata !5, i32 50331733, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 85]
!105 = metadata !{i32 786689, metadata !98, metadata !"r", metadata !5, i32 67108949, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 85]
!106 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!107 = metadata !{i32 786688, metadata !98, metadata !"rest", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rest] [line 88]
!108 = metadata !{i32 786688, metadata !98, metadata !"index", metadata !5, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 88]
!109 = metadata !{i32 786688, metadata !98, metadata !"rbuf", metadata !5, i32 89, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbuf] [line 89]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sum_bin", metadata !"sum_bin", metadata !"", i32 117, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_bin*, %struct.t_commrec*)* @sum_bin, null, null, metadata !124, i32 118} ; [ DW_TAG_subprogram ] [line 117] [def] [scope 118] [sum_bin]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{null, metadata !8, metadata !113}
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!114 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!115 = metadata !{i32 786451, metadata !116, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !117, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!116 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!118 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!119 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!120 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!121 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!122 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!123 = metadata !{i32 786445, metadata !116, metadata !115, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!124 = metadata !{metadata !125, metadata !126, metadata !127}
!125 = metadata !{i32 786689, metadata !110, metadata !"b", metadata !5, i32 16777333, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 117]
!126 = metadata !{i32 786689, metadata !110, metadata !"cr", metadata !5, i32 33554549, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 117]
!127 = metadata !{i32 786688, metadata !110, metadata !"i", metadata !5, i32 119, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 119]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"extract_binr", metadata !"extract_binr", metadata !"", i32 126, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_bin*, i32, i32, float*)* @extract_binr, null, null, metadata !131, i32 127} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 127] [extract_binr]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !86}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!132 = metadata !{i32 786689, metadata !128, metadata !"b", metadata !5, i32 16777342, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 126]
!133 = metadata !{i32 786689, metadata !128, metadata !"index", metadata !5, i32 33554558, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 126]
!134 = metadata !{i32 786689, metadata !128, metadata !"nr", metadata !5, i32 50331774, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 126]
!135 = metadata !{i32 786689, metadata !128, metadata !"r", metadata !5, i32 67108990, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 126]
!136 = metadata !{i32 786688, metadata !128, metadata !"i", metadata !5, i32 128, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 128]
!137 = metadata !{i32 786688, metadata !128, metadata !"rbuf", metadata !5, i32 129, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbuf] [line 129]
!138 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"extract_bind", metadata !"extract_bind", metadata !"", i32 136, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_bin*, i32, i32, double*)* @extract_bind, null, null, metadata !141, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [extract_bind]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !17}
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!142 = metadata !{i32 786689, metadata !138, metadata !"b", metadata !5, i32 16777352, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 136]
!143 = metadata !{i32 786689, metadata !138, metadata !"index", metadata !5, i32 33554568, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 136]
!144 = metadata !{i32 786689, metadata !138, metadata !"nr", metadata !5, i32 50331784, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 136]
!145 = metadata !{i32 786689, metadata !138, metadata !"r", metadata !5, i32 67109000, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 136]
!146 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !5, i32 138, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 138]
!147 = metadata !{i32 786688, metadata !138, metadata !"rbuf", metadata !5, i32 139, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rbuf] [line 139]
!148 = metadata !{i32 43, i32 0, metadata !4, null}
!149 = metadata !{i32 45, i32 0, metadata !4, null}
!150 = metadata !{i32 48, i32 0, metadata !21, null}
!151 = metadata !{i32 50, i32 0, metadata !21, null}
!152 = metadata !{metadata !"int", metadata !153}
!153 = metadata !{metadata !"omnipotent char", metadata !154}
!154 = metadata !{metadata !"Simple C/C++ TBAA"}
!155 = metadata !{i32 51, i32 0, metadata !21, null}
!156 = metadata !{i32 53, i32 0, metadata !26, null}
!157 = metadata !{i32 59, i32 0, metadata !26, null}
!158 = metadata !{i32 75, i32 0, metadata !26, null}
!159 = metadata !{metadata !"any pointer", metadata !153}
!160 = metadata !{i32 65, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !26, i32 59, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!162 = metadata !{i32 66, i32 0, metadata !161, null}
!163 = metadata !{i32 67, i32 0, metadata !161, null}
!164 = metadata !{i32 64, i32 0, metadata !161, null}
!165 = metadata !{i32 68, i32 0, metadata !161, null}
!166 = metadata !{i32 73, i32 0, metadata !161, null}
!167 = metadata !{i32 76, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !26, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!169 = metadata !{i32 77, i32 0, metadata !168, null}
!170 = metadata !{metadata !"float", metadata !153}
!171 = metadata !{metadata !"double", metadata !153}
!172 = metadata !{i32 79, i32 0, metadata !26, null}
!173 = metadata !{i32 80, i32 0, metadata !26, null}
!174 = metadata !{i32 82, i32 0, metadata !26, null}
!175 = metadata !{i32 85, i32 0, metadata !98, null}
!176 = metadata !{i32 91, i32 0, metadata !98, null}
!177 = metadata !{i32 107, i32 0, metadata !98, null}
!178 = metadata !{i32 97, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !98, i32 91, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!180 = metadata !{i32 98, i32 0, metadata !179, null}
!181 = metadata !{i32 99, i32 0, metadata !179, null}
!182 = metadata !{i32 96, i32 0, metadata !179, null}
!183 = metadata !{i32 100, i32 0, metadata !179, null}
!184 = metadata !{i32 105, i32 0, metadata !179, null}
!185 = metadata !{i32 108, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !98, i32 108, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!187 = metadata !{i32 109, i32 0, metadata !186, null}
!188 = metadata !{i32 111, i32 0, metadata !98, null}
!189 = metadata !{i32 112, i32 0, metadata !98, null}
!190 = metadata !{i32 114, i32 0, metadata !98, null}
!191 = metadata !{i32 117, i32 0, metadata !110, null}
!192 = metadata !{i32 121, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !110, i32 121, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!194 = metadata !{i32 122, i32 0, metadata !193, null}
!195 = metadata !{i32 123, i32 0, metadata !110, null}
!196 = metadata !{i32 124, i32 0, metadata !110, null}
!197 = metadata !{i32 126, i32 0, metadata !128, null}
!198 = metadata !{i32 131, i32 0, metadata !128, null}
!199 = metadata !{i32 132, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !128, i32 132, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!201 = metadata !{i32 133, i32 0, metadata !200, null}
!202 = metadata !{i32 134, i32 0, metadata !128, null}
!203 = metadata !{i32 136, i32 0, metadata !138, null}
!204 = metadata !{i32 141, i32 0, metadata !138, null}
!205 = metadata !{i32 142, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !138, i32 142, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.c]
!207 = metadata !{i32 143, i32 0, metadata !206, null}
!208 = metadata !{i32 144, i32 0, metadata !138, null}
