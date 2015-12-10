; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"PUGH_ReductionNorm2: Unknown variable type\00", align 1
@.str3 = private unnamed_addr constant [61 x i8] c"$Id: ReductionNorm2.c,v 1.4 2001/05/14 17:06:20 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c() #0 {
entry:
  ret i8* getelementptr inbounds ([61 x i8]* @.str3, i64 0, i64 0), !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionNorm2Arrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !255
  tail call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !54), !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %num_dims}, i64 0, metadata !55), !dbg !257
  tail call void @llvm.dbg.value(metadata !{i32* %dims}, i64 0, metadata !56), !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %num_inarrays}, i64 0, metadata !57), !dbg !259
  tail call void @llvm.dbg.value(metadata !{i8** %inarrays}, i64 0, metadata !58), !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %intype}, i64 0, metadata !59), !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !60), !dbg !262
  tail call void @llvm.dbg.value(metadata !{i8* %outvals}, i64 0, metadata !61), !dbg !263
  tail call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !62), !dbg !264
  %call = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6, !dbg !265
  ret i32 %call, !dbg !265
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @PUGH_ReductionNorm2(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture %intypes, i8** nocapture %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !78), !dbg !266
  tail call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !79), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %num_dims}, i64 0, metadata !80), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32* %from}, i64 0, metadata !81), !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32* %to}, i64 0, metadata !82), !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32* %iterator}, i64 0, metadata !83), !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32* %points_per_dim}, i64 0, metadata !84), !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %num_points}, i64 0, metadata !85), !dbg !273
  tail call void @llvm.dbg.value(metadata !{i32 %num_inarrays}, i64 0, metadata !86), !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32* %intypes}, i64 0, metadata !87), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i8** %inarrays}, i64 0, metadata !88), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !89), !dbg !277
  tail call void @llvm.dbg.value(metadata !{double* %outvals}, i64 0, metadata !90), !dbg !278
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !279
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !279
  %cmp2008 = icmp sgt i32 %num_inarrays, 0, !dbg !279
  br i1 %cmp2008, label %for.body.lr.ph, label %for.end1156, !dbg !279

for.body.lr.ph:                                   ; preds = %entry
  %cmp42002 = icmp sgt i32 %num_outvals, 0, !dbg !280
  %0 = bitcast i32* %iterator to i8*, !dbg !282
  %1 = bitcast i32* %from to i8*, !dbg !282
  %conv = sext i32 %num_dims to i64, !dbg !282
  %mul14 = shl nsw i64 %conv, 2, !dbg !282
  %cmp161982 = icmp sgt i32 %num_dims, 1, !dbg !284
  %arrayidx52 = getelementptr inbounds i32* %iterator, i64 1, !dbg !287
  %arrayidx55 = getelementptr inbounds i32* %to, i64 1, !dbg !287
  %cmp611992 = icmp sgt i32 %num_dims, 2, !dbg !289
  br label %for.body, !dbg !279

for.body:                                         ; preds = %for.body.lr.ph, %for.inc1154
  %indvars.iv2202 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next2203, %for.inc1154 ]
  %total_outvals.02010 = phi i32 [ 0, %for.body.lr.ph ], [ %total_outvals.11, %for.inc1154 ]
  %arrayidx = getelementptr inbounds i32* %intypes, i64 %indvars.iv2202, !dbg !292
  %2 = load i32* %arrayidx, align 4, !dbg !292, !tbaa !293
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb99
    i32 3, label %sw.bb215
    i32 4, label %sw.bb335
    i32 5, label %sw.bb451
    i32 6, label %sw.bb567
    i32 7, label %sw.bb682
    i32 8, label %sw.bb798
    i32 9, label %sw.bb913
    i32 10, label %sw.bb1029
  ], !dbg !292

sw.bb:                                            ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !169), !dbg !296
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !166), !dbg !280
  br i1 %cmp42002, label %for.cond7.preheader.lr.ph, label %for.inc1154, !dbg !280

for.cond7.preheader.lr.ph:                        ; preds = %sw.bb
  %arrayidx2 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !296
  %3 = load i8** %arrayidx2, align 8, !dbg !296, !tbaa !297
  %4 = sext i32 %total_outvals.02010 to i64
  br label %for.cond7.preheader, !dbg !280

for.cond7.preheader:                              ; preds = %while.end, %for.cond7.preheader.lr.ph
  %indvars.iv2199 = phi i64 [ %4, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next2200, %while.end ]
  %typed_vdata.02005 = phi i8* [ %3, %for.cond7.preheader.lr.ph ], [ %incdec.ptr, %while.end ]
  %_j.02004 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc97, %while.end ]
  tail call void @llvm.dbg.value(metadata !298, i64 0, metadata !173), !dbg !282
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !282
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !167), !dbg !282
  br label %while.body, !dbg !282

while.body:                                       ; preds = %if.then, %for.body82, %for.cond79.loopexit, %for.cond7.preheader
  %typed_outval.0 = phi i8 [ 0, %for.cond7.preheader ], [ %typed_outval.1.lcssa, %for.cond79.loopexit ], [ %typed_outval.1.lcssa, %for.body82 ], [ %typed_outval.1.lcssa, %if.then ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !168), !dbg !300
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !161), !dbg !284
  br i1 %cmp161982, label %for.body18, label %for.end27, !dbg !284

for.body18:                                       ; preds = %for.body18, %while.body
  %indvars.iv2183 = phi i64 [ 1, %while.body ], [ %indvars.iv.next2184, %for.body18 ]
  %_vindex.11984 = phi i32 [ 0, %while.body ], [ %add24, %for.body18 ]
  %arrayidx20 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2183, !dbg !284
  %5 = load i32* %arrayidx20, align 4, !dbg !284, !tbaa !293
  %arrayidx22 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2183, !dbg !284
  %6 = load i32* %arrayidx22, align 4, !dbg !284, !tbaa !293
  %mul23 = mul nsw i32 %6, %5, !dbg !284
  %add24 = add nsw i32 %mul23, %_vindex.11984, !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !168), !dbg !284
  %indvars.iv.next2184 = add i64 %indvars.iv2183, 1, !dbg !284
  %lftr.wideiv2185 = trunc i64 %indvars.iv.next2184 to i32, !dbg !284
  %exitcond2186 = icmp eq i32 %lftr.wideiv2185, %num_dims, !dbg !284
  br i1 %exitcond2186, label %for.cond15.for.end27_crit_edge, label %for.body18, !dbg !284

for.cond15.for.end27_crit_edge:                   ; preds = %for.body18
  %phitmp2212 = sext i32 %add24 to i64, !dbg !284
  br label %for.end27, !dbg !284

for.end27:                                        ; preds = %for.cond15.for.end27_crit_edge, %while.body
  %_vindex.1.lcssa = phi i64 [ %phitmp2212, %for.cond15.for.end27_crit_edge ], [ 0, %while.body ]
  %7 = load i32* %from, align 4, !dbg !301, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !161), !dbg !301
  %8 = load i32* %to, align 4, !dbg !301, !tbaa !293
  %cmp311987 = icmp slt i32 %7, %8, !dbg !301
  br i1 %cmp311987, label %for.body33.lr.ph, label %for.end48, !dbg !301

for.body33.lr.ph:                                 ; preds = %for.end27
  %9 = sext i32 %7 to i64
  br label %for.body33, !dbg !301

for.body33:                                       ; preds = %for.body33.lr.ph, %for.body33
  %indvars.iv2187 = phi i64 [ %9, %for.body33.lr.ph ], [ %indvars.iv.next2188, %for.body33 ]
  %typed_outval.11989 = phi i8 [ %typed_outval.0, %for.body33.lr.ph ], [ %add44, %for.body33 ]
  %10 = add nsw i64 %indvars.iv2187, %_vindex.1.lcssa, !dbg !303
  %arrayidx36 = getelementptr inbounds i8* %typed_vdata.02005, i64 %10, !dbg !303
  %11 = load i8* %arrayidx36, align 1, !dbg !303, !tbaa !294
  %mul42 = mul i8 %11, %11, !dbg !303
  %add44 = add i8 %mul42, %typed_outval.11989, !dbg !303
  tail call void @llvm.dbg.value(metadata !{i8 %add44}, i64 0, metadata !173), !dbg !303
  %indvars.iv.next2188 = add i64 %indvars.iv2187, 1, !dbg !301
  %12 = trunc i64 %indvars.iv.next2188 to i32, !dbg !301
  %cmp31 = icmp slt i32 %12, %8, !dbg !301
  br i1 %cmp31, label %for.body33, label %for.end48, !dbg !301

for.end48:                                        ; preds = %for.body33, %for.end27
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %for.end27 ], [ %add44, %for.body33 ]
  br i1 %cmp161982, label %if.then, label %while.end, !dbg !300

if.then:                                          ; preds = %for.end48
  %13 = load i32* %arrayidx52, align 4, !dbg !287, !tbaa !293
  %inc53 = add nsw i32 %13, 1, !dbg !287
  store i32 %inc53, i32* %arrayidx52, align 4, !dbg !287, !tbaa !293
  %14 = load i32* %arrayidx55, align 4, !dbg !287, !tbaa !293
  %cmp56 = icmp slt i32 %inc53, %14, !dbg !287
  br i1 %cmp56, label %while.body, label %for.cond60.preheader, !dbg !287

for.cond60.preheader:                             ; preds = %if.then
  br i1 %cmp611992, label %for.body63, label %while.end, !dbg !289

for.cond60:                                       ; preds = %for.body63
  %inc73 = add nsw i32 %_dim.11993, 1, !dbg !289
  %15 = trunc i64 %indvars.iv.next2192 to i32, !dbg !289
  %cmp61 = icmp slt i32 %15, %num_dims, !dbg !289
  br i1 %cmp61, label %for.body63, label %while.end, !dbg !289

for.body63:                                       ; preds = %for.cond60.preheader, %for.cond60
  %indvars.iv2191 = phi i64 [ %indvars.iv.next2192, %for.cond60 ], [ 2, %for.cond60.preheader ]
  %_dim.11993 = phi i32 [ %inc73, %for.cond60 ], [ 2, %for.cond60.preheader ]
  %arrayidx65 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2191, !dbg !305
  %16 = load i32* %arrayidx65, align 4, !dbg !305, !tbaa !293
  %inc66 = add nsw i32 %16, 1, !dbg !305
  store i32 %inc66, i32* %arrayidx65, align 4, !dbg !305, !tbaa !293
  %arrayidx68 = getelementptr inbounds i32* %to, i64 %indvars.iv2191, !dbg !305
  %17 = load i32* %arrayidx68, align 4, !dbg !305, !tbaa !293
  %cmp69 = icmp slt i32 %inc66, %17, !dbg !305
  %indvars.iv.next2192 = add i64 %indvars.iv2191, 1, !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %inc73}, i64 0, metadata !167), !dbg !289
  br i1 %cmp69, label %for.cond79.loopexit, label %for.cond60, !dbg !305

for.cond79.loopexit:                              ; preds = %for.body63
  %cmp801995 = icmp sgt i32 %_dim.11993, 0, !dbg !307
  br i1 %cmp801995, label %for.body82.lr.ph, label %while.body, !dbg !307

for.body82.lr.ph:                                 ; preds = %for.cond79.loopexit
  %18 = sext i32 %_dim.11993 to i64
  br label %for.body82, !dbg !307

for.body82:                                       ; preds = %for.body82.lr.ph, %for.body82
  %indvars.iv2193 = phi i64 [ %18, %for.body82.lr.ph ], [ %indvars.iv.next2194, %for.body82 ]
  %indvars.iv.next2194 = add i64 %indvars.iv2193, -1, !dbg !307
  %arrayidx84 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2194, !dbg !307
  %19 = load i32* %arrayidx84, align 4, !dbg !307, !tbaa !293
  %arrayidx86 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2194, !dbg !307
  store i32 %19, i32* %arrayidx86, align 4, !dbg !307, !tbaa !293
  %20 = trunc i64 %indvars.iv.next2194 to i32, !dbg !307
  %cmp80 = icmp sgt i32 %20, 0, !dbg !307
  br i1 %cmp80, label %for.body82, label %while.body, !dbg !307

while.end:                                        ; preds = %for.end48, %for.cond60, %for.cond60.preheader
  %conv92 = uitofp i8 %typed_outval.1.lcssa to double, !dbg !282
  %indvars.iv.next2200 = add i64 %indvars.iv2199, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %202}, i64 0, metadata !92), !dbg !282
  %arrayidx95 = getelementptr inbounds double* %outvals, i64 %indvars.iv2199, !dbg !282
  store double %conv92, double* %arrayidx95, align 8, !dbg !282, !tbaa !309
  %inc97 = add nsw i32 %_j.02004, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %inc97}, i64 0, metadata !166), !dbg !280
  %incdec.ptr = getelementptr inbounds i8* %typed_vdata.02005, i64 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !169), !dbg !280
  %exitcond2201 = icmp eq i32 %inc97, %num_outvals, !dbg !280
  br i1 %exitcond2201, label %for.cond3.for.inc1154.loopexit2001_crit_edge, label %for.cond7.preheader, !dbg !280

sw.bb99:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i32* %22}, i64 0, metadata !179), !dbg !310
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !176), !dbg !311
  br i1 %cmp42002, label %for.cond113.preheader.lr.ph, label %for.inc1154, !dbg !311

for.cond113.preheader.lr.ph:                      ; preds = %sw.bb99
  %arrayidx106 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !310
  %21 = load i8** %arrayidx106, align 8, !dbg !310, !tbaa !297
  %22 = bitcast i8* %21 to i32*, !dbg !310
  %23 = sext i32 %total_outvals.02010 to i64
  br label %for.cond113.preheader, !dbg !311

for.cond113.preheader:                            ; preds = %while.end206, %for.cond113.preheader.lr.ph
  %indvars.iv2180 = phi i64 [ %23, %for.cond113.preheader.lr.ph ], [ %indvars.iv.next2181, %while.end206 ]
  %typed_vdata104.01980 = phi i32* [ %22, %for.cond113.preheader.lr.ph ], [ %incdec.ptr213, %while.end206 ]
  %_j101.01979 = phi i32 [ 0, %for.cond113.preheader.lr.ph ], [ %inc212, %while.end206 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !313
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !177), !dbg !313
  br label %while.body128, !dbg !313

while.body128:                                    ; preds = %if.then161, %for.body195, %for.cond192.loopexit, %for.cond113.preheader
  %typed_outval107.0 = phi i32 [ 0, %for.cond113.preheader ], [ %typed_outval107.1.lcssa, %for.cond192.loopexit ], [ %typed_outval107.1.lcssa, %for.body195 ], [ %typed_outval107.1.lcssa, %if.then161 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !178), !dbg !315
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !174), !dbg !317
  br i1 %cmp161982, label %for.body132, label %for.end141, !dbg !317

for.body132:                                      ; preds = %for.body132, %while.body128
  %indvars.iv2164 = phi i64 [ 1, %while.body128 ], [ %indvars.iv.next2165, %for.body132 ]
  %_vindex103.11959 = phi i32 [ 0, %while.body128 ], [ %add138, %for.body132 ]
  %arrayidx134 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2164, !dbg !317
  %24 = load i32* %arrayidx134, align 4, !dbg !317, !tbaa !293
  %arrayidx136 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2164, !dbg !317
  %25 = load i32* %arrayidx136, align 4, !dbg !317, !tbaa !293
  %mul137 = mul nsw i32 %25, %24, !dbg !317
  %add138 = add nsw i32 %mul137, %_vindex103.11959, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %add138}, i64 0, metadata !178), !dbg !317
  %indvars.iv.next2165 = add i64 %indvars.iv2164, 1, !dbg !317
  %lftr.wideiv2166 = trunc i64 %indvars.iv.next2165 to i32, !dbg !317
  %exitcond2167 = icmp eq i32 %lftr.wideiv2166, %num_dims, !dbg !317
  br i1 %exitcond2167, label %for.cond129.for.end141_crit_edge, label %for.body132, !dbg !317

for.cond129.for.end141_crit_edge:                 ; preds = %for.body132
  %phitmp2211 = sext i32 %add138 to i64, !dbg !317
  br label %for.end141, !dbg !317

for.end141:                                       ; preds = %for.cond129.for.end141_crit_edge, %while.body128
  %_vindex103.1.lcssa = phi i64 [ %phitmp2211, %for.cond129.for.end141_crit_edge ], [ 0, %while.body128 ]
  %26 = load i32* %from, align 4, !dbg !319, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !174), !dbg !319
  %27 = load i32* %to, align 4, !dbg !319, !tbaa !293
  %cmp1451962 = icmp slt i32 %26, %27, !dbg !319
  br i1 %cmp1451962, label %for.body147.lr.ph, label %for.end158, !dbg !319

for.body147.lr.ph:                                ; preds = %for.end141
  %28 = sext i32 %26 to i64
  br label %for.body147, !dbg !319

for.body147:                                      ; preds = %for.body147.lr.ph, %for.body147
  %indvars.iv2168 = phi i64 [ %28, %for.body147.lr.ph ], [ %indvars.iv.next2169, %for.body147 ]
  %typed_outval107.11964 = phi i32 [ %typed_outval107.0, %for.body147.lr.ph ], [ %add155, %for.body147 ]
  %29 = add nsw i64 %indvars.iv2168, %_vindex103.1.lcssa, !dbg !321
  %arrayidx150 = getelementptr inbounds i32* %typed_vdata104.01980, i64 %29, !dbg !321
  %30 = load i32* %arrayidx150, align 4, !dbg !321, !tbaa !293
  %mul154 = mul nsw i32 %30, %30, !dbg !321
  %add155 = add nsw i32 %mul154, %typed_outval107.11964, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %add155}, i64 0, metadata !180), !dbg !321
  %indvars.iv.next2169 = add i64 %indvars.iv2168, 1, !dbg !319
  %31 = trunc i64 %indvars.iv.next2169 to i32, !dbg !319
  %cmp145 = icmp slt i32 %31, %27, !dbg !319
  br i1 %cmp145, label %for.body147, label %for.end158, !dbg !319

for.end158:                                       ; preds = %for.body147, %for.end141
  %typed_outval107.1.lcssa = phi i32 [ %typed_outval107.0, %for.end141 ], [ %add155, %for.body147 ]
  br i1 %cmp161982, label %if.then161, label %while.end206, !dbg !315

if.then161:                                       ; preds = %for.end158
  %32 = load i32* %arrayidx52, align 4, !dbg !323, !tbaa !293
  %inc164 = add nsw i32 %32, 1, !dbg !323
  store i32 %inc164, i32* %arrayidx52, align 4, !dbg !323, !tbaa !293
  %33 = load i32* %arrayidx55, align 4, !dbg !323, !tbaa !293
  %cmp167 = icmp slt i32 %inc164, %33, !dbg !323
  br i1 %cmp167, label %while.body128, label %for.cond171.preheader, !dbg !323

for.cond171.preheader:                            ; preds = %if.then161
  br i1 %cmp611992, label %for.body174, label %while.end206, !dbg !325

for.cond171:                                      ; preds = %for.body174
  %inc185 = add nsw i32 %_dim102.11968, 1, !dbg !325
  %34 = trunc i64 %indvars.iv.next2173 to i32, !dbg !325
  %cmp172 = icmp slt i32 %34, %num_dims, !dbg !325
  br i1 %cmp172, label %for.body174, label %while.end206, !dbg !325

for.body174:                                      ; preds = %for.cond171.preheader, %for.cond171
  %indvars.iv2172 = phi i64 [ %indvars.iv.next2173, %for.cond171 ], [ 2, %for.cond171.preheader ]
  %_dim102.11968 = phi i32 [ %inc185, %for.cond171 ], [ 2, %for.cond171.preheader ]
  %arrayidx176 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2172, !dbg !328
  %35 = load i32* %arrayidx176, align 4, !dbg !328, !tbaa !293
  %inc177 = add nsw i32 %35, 1, !dbg !328
  store i32 %inc177, i32* %arrayidx176, align 4, !dbg !328, !tbaa !293
  %arrayidx179 = getelementptr inbounds i32* %to, i64 %indvars.iv2172, !dbg !328
  %36 = load i32* %arrayidx179, align 4, !dbg !328, !tbaa !293
  %cmp180 = icmp slt i32 %inc177, %36, !dbg !328
  %indvars.iv.next2173 = add i64 %indvars.iv2172, 1, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %inc185}, i64 0, metadata !177), !dbg !325
  br i1 %cmp180, label %for.cond192.loopexit, label %for.cond171, !dbg !328

for.cond192.loopexit:                             ; preds = %for.body174
  %cmp1931970 = icmp sgt i32 %_dim102.11968, 0, !dbg !330
  br i1 %cmp1931970, label %for.body195.lr.ph, label %while.body128, !dbg !330

for.body195.lr.ph:                                ; preds = %for.cond192.loopexit
  %37 = sext i32 %_dim102.11968 to i64
  br label %for.body195, !dbg !330

for.body195:                                      ; preds = %for.body195.lr.ph, %for.body195
  %indvars.iv2174 = phi i64 [ %37, %for.body195.lr.ph ], [ %indvars.iv.next2175, %for.body195 ]
  %indvars.iv.next2175 = add i64 %indvars.iv2174, -1, !dbg !330
  %arrayidx197 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2175, !dbg !330
  %38 = load i32* %arrayidx197, align 4, !dbg !330, !tbaa !293
  %arrayidx199 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2175, !dbg !330
  store i32 %38, i32* %arrayidx199, align 4, !dbg !330, !tbaa !293
  %39 = trunc i64 %indvars.iv.next2175 to i32, !dbg !330
  %cmp193 = icmp sgt i32 %39, 0, !dbg !330
  br i1 %cmp193, label %for.body195, label %while.body128, !dbg !330

while.end206:                                     ; preds = %for.end158, %for.cond171, %for.cond171.preheader
  %conv207 = sitofp i32 %typed_outval107.1.lcssa to double, !dbg !313
  %indvars.iv.next2181 = add i64 %indvars.iv2180, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %201}, i64 0, metadata !92), !dbg !313
  %arrayidx210 = getelementptr inbounds double* %outvals, i64 %indvars.iv2180, !dbg !313
  store double %conv207, double* %arrayidx210, align 8, !dbg !313, !tbaa !309
  %inc212 = add nsw i32 %_j101.01979, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %inc212}, i64 0, metadata !176), !dbg !311
  %incdec.ptr213 = getelementptr inbounds i32* %typed_vdata104.01980, i64 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr213}, i64 0, metadata !179), !dbg !311
  %exitcond2182 = icmp eq i32 %inc212, %num_outvals, !dbg !311
  br i1 %exitcond2182, label %for.cond108.for.inc1154.loopexit1976_crit_edge, label %for.cond113.preheader, !dbg !311

sw.bb215:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i16* %41}, i64 0, metadata !186), !dbg !332
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !333
  br i1 %cmp42002, label %for.cond229.preheader.lr.ph, label %for.inc1154, !dbg !333

for.cond229.preheader.lr.ph:                      ; preds = %sw.bb215
  %arrayidx222 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !332
  %40 = load i8** %arrayidx222, align 8, !dbg !332, !tbaa !297
  %41 = bitcast i8* %40 to i16*, !dbg !332
  %42 = sext i32 %total_outvals.02010 to i64
  br label %for.cond229.preheader, !dbg !333

for.cond229.preheader:                            ; preds = %while.end326, %for.cond229.preheader.lr.ph
  %indvars.iv2161 = phi i64 [ %42, %for.cond229.preheader.lr.ph ], [ %indvars.iv.next2162, %while.end326 ]
  %typed_vdata220.01955 = phi i16* [ %41, %for.cond229.preheader.lr.ph ], [ %incdec.ptr333, %while.end326 ]
  %_j217.01954 = phi i32 [ 0, %for.cond229.preheader.lr.ph ], [ %inc332, %while.end326 ]
  tail call void @llvm.dbg.value(metadata !335, i64 0, metadata !189), !dbg !336
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !336
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !184), !dbg !336
  br label %while.body244, !dbg !336

while.body244:                                    ; preds = %if.then281, %for.body315, %for.cond312.loopexit, %for.cond229.preheader
  %typed_outval223.0 = phi i16 [ 0, %for.cond229.preheader ], [ %typed_outval223.1.lcssa, %for.cond312.loopexit ], [ %typed_outval223.1.lcssa, %for.body315 ], [ %typed_outval223.1.lcssa, %if.then281 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !338
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !181), !dbg !340
  br i1 %cmp161982, label %for.body248, label %for.end257, !dbg !340

for.body248:                                      ; preds = %for.body248, %while.body244
  %indvars.iv2145 = phi i64 [ 1, %while.body244 ], [ %indvars.iv.next2146, %for.body248 ]
  %_vindex219.11934 = phi i32 [ 0, %while.body244 ], [ %add254, %for.body248 ]
  %arrayidx250 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2145, !dbg !340
  %43 = load i32* %arrayidx250, align 4, !dbg !340, !tbaa !293
  %arrayidx252 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2145, !dbg !340
  %44 = load i32* %arrayidx252, align 4, !dbg !340, !tbaa !293
  %mul253 = mul nsw i32 %44, %43, !dbg !340
  %add254 = add nsw i32 %mul253, %_vindex219.11934, !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32 %add254}, i64 0, metadata !185), !dbg !340
  %indvars.iv.next2146 = add i64 %indvars.iv2145, 1, !dbg !340
  %lftr.wideiv2147 = trunc i64 %indvars.iv.next2146 to i32, !dbg !340
  %exitcond2148 = icmp eq i32 %lftr.wideiv2147, %num_dims, !dbg !340
  br i1 %exitcond2148, label %for.cond245.for.end257_crit_edge, label %for.body248, !dbg !340

for.cond245.for.end257_crit_edge:                 ; preds = %for.body248
  %phitmp2210 = sext i32 %add254 to i64, !dbg !340
  br label %for.end257, !dbg !340

for.end257:                                       ; preds = %for.cond245.for.end257_crit_edge, %while.body244
  %_vindex219.1.lcssa = phi i64 [ %phitmp2210, %for.cond245.for.end257_crit_edge ], [ 0, %while.body244 ]
  %45 = load i32* %from, align 4, !dbg !342, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !181), !dbg !342
  %46 = load i32* %to, align 4, !dbg !342, !tbaa !293
  %cmp2611937 = icmp slt i32 %45, %46, !dbg !342
  br i1 %cmp2611937, label %for.body263.lr.ph, label %for.end278, !dbg !342

for.body263.lr.ph:                                ; preds = %for.end257
  %47 = sext i32 %45 to i64
  br label %for.body263, !dbg !342

for.body263:                                      ; preds = %for.body263.lr.ph, %for.body263
  %indvars.iv2149 = phi i64 [ %47, %for.body263.lr.ph ], [ %indvars.iv.next2150, %for.body263 ]
  %typed_outval223.11939 = phi i16 [ %typed_outval223.0, %for.body263.lr.ph ], [ %add274, %for.body263 ]
  %48 = add nsw i64 %indvars.iv2149, %_vindex219.1.lcssa, !dbg !344
  %arrayidx266 = getelementptr inbounds i16* %typed_vdata220.01955, i64 %48, !dbg !344
  %49 = load i16* %arrayidx266, align 2, !dbg !344, !tbaa !346
  %mul272 = mul i16 %49, %49, !dbg !344
  %add274 = add i16 %mul272, %typed_outval223.11939, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i16 %add274}, i64 0, metadata !189), !dbg !344
  %indvars.iv.next2150 = add i64 %indvars.iv2149, 1, !dbg !342
  %50 = trunc i64 %indvars.iv.next2150 to i32, !dbg !342
  %cmp261 = icmp slt i32 %50, %46, !dbg !342
  br i1 %cmp261, label %for.body263, label %for.end278, !dbg !342

for.end278:                                       ; preds = %for.body263, %for.end257
  %typed_outval223.1.lcssa = phi i16 [ %typed_outval223.0, %for.end257 ], [ %add274, %for.body263 ]
  br i1 %cmp161982, label %if.then281, label %while.end326, !dbg !338

if.then281:                                       ; preds = %for.end278
  %51 = load i32* %arrayidx52, align 4, !dbg !347, !tbaa !293
  %inc284 = add nsw i32 %51, 1, !dbg !347
  store i32 %inc284, i32* %arrayidx52, align 4, !dbg !347, !tbaa !293
  %52 = load i32* %arrayidx55, align 4, !dbg !347, !tbaa !293
  %cmp287 = icmp slt i32 %inc284, %52, !dbg !347
  br i1 %cmp287, label %while.body244, label %for.cond291.preheader, !dbg !347

for.cond291.preheader:                            ; preds = %if.then281
  br i1 %cmp611992, label %for.body294, label %while.end326, !dbg !349

for.cond291:                                      ; preds = %for.body294
  %inc305 = add nsw i32 %_dim218.11943, 1, !dbg !349
  %53 = trunc i64 %indvars.iv.next2154 to i32, !dbg !349
  %cmp292 = icmp slt i32 %53, %num_dims, !dbg !349
  br i1 %cmp292, label %for.body294, label %while.end326, !dbg !349

for.body294:                                      ; preds = %for.cond291.preheader, %for.cond291
  %indvars.iv2153 = phi i64 [ %indvars.iv.next2154, %for.cond291 ], [ 2, %for.cond291.preheader ]
  %_dim218.11943 = phi i32 [ %inc305, %for.cond291 ], [ 2, %for.cond291.preheader ]
  %arrayidx296 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2153, !dbg !352
  %54 = load i32* %arrayidx296, align 4, !dbg !352, !tbaa !293
  %inc297 = add nsw i32 %54, 1, !dbg !352
  store i32 %inc297, i32* %arrayidx296, align 4, !dbg !352, !tbaa !293
  %arrayidx299 = getelementptr inbounds i32* %to, i64 %indvars.iv2153, !dbg !352
  %55 = load i32* %arrayidx299, align 4, !dbg !352, !tbaa !293
  %cmp300 = icmp slt i32 %inc297, %55, !dbg !352
  %indvars.iv.next2154 = add i64 %indvars.iv2153, 1, !dbg !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc305}, i64 0, metadata !184), !dbg !349
  br i1 %cmp300, label %for.cond312.loopexit, label %for.cond291, !dbg !352

for.cond312.loopexit:                             ; preds = %for.body294
  %cmp3131945 = icmp sgt i32 %_dim218.11943, 0, !dbg !354
  br i1 %cmp3131945, label %for.body315.lr.ph, label %while.body244, !dbg !354

for.body315.lr.ph:                                ; preds = %for.cond312.loopexit
  %56 = sext i32 %_dim218.11943 to i64
  br label %for.body315, !dbg !354

for.body315:                                      ; preds = %for.body315.lr.ph, %for.body315
  %indvars.iv2155 = phi i64 [ %56, %for.body315.lr.ph ], [ %indvars.iv.next2156, %for.body315 ]
  %indvars.iv.next2156 = add i64 %indvars.iv2155, -1, !dbg !354
  %arrayidx317 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2156, !dbg !354
  %57 = load i32* %arrayidx317, align 4, !dbg !354, !tbaa !293
  %arrayidx319 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2156, !dbg !354
  store i32 %57, i32* %arrayidx319, align 4, !dbg !354, !tbaa !293
  %58 = trunc i64 %indvars.iv.next2156 to i32, !dbg !354
  %cmp313 = icmp sgt i32 %58, 0, !dbg !354
  br i1 %cmp313, label %for.body315, label %while.body244, !dbg !354

while.end326:                                     ; preds = %for.end278, %for.cond291, %for.cond291.preheader
  %conv327 = sitofp i16 %typed_outval223.1.lcssa to double, !dbg !336
  %indvars.iv.next2162 = add i64 %indvars.iv2161, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %200}, i64 0, metadata !92), !dbg !336
  %arrayidx330 = getelementptr inbounds double* %outvals, i64 %indvars.iv2161, !dbg !336
  store double %conv327, double* %arrayidx330, align 8, !dbg !336, !tbaa !309
  %inc332 = add nsw i32 %_j217.01954, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %inc332}, i64 0, metadata !183), !dbg !333
  %incdec.ptr333 = getelementptr inbounds i16* %typed_vdata220.01955, i64 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr333}, i64 0, metadata !186), !dbg !333
  %exitcond2163 = icmp eq i32 %inc332, %num_outvals, !dbg !333
  br i1 %exitcond2163, label %for.cond224.for.inc1154.loopexit1951_crit_edge, label %for.cond229.preheader, !dbg !333

sw.bb335:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i32* %60}, i64 0, metadata !195), !dbg !356
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !357
  br i1 %cmp42002, label %for.cond349.preheader.lr.ph, label %for.inc1154, !dbg !357

for.cond349.preheader.lr.ph:                      ; preds = %sw.bb335
  %arrayidx342 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !356
  %59 = load i8** %arrayidx342, align 8, !dbg !356, !tbaa !297
  %60 = bitcast i8* %59 to i32*, !dbg !356
  %61 = sext i32 %total_outvals.02010 to i64
  br label %for.cond349.preheader, !dbg !357

for.cond349.preheader:                            ; preds = %while.end442, %for.cond349.preheader.lr.ph
  %indvars.iv2142 = phi i64 [ %61, %for.cond349.preheader.lr.ph ], [ %indvars.iv.next2143, %while.end442 ]
  %typed_vdata340.01930 = phi i32* [ %60, %for.cond349.preheader.lr.ph ], [ %incdec.ptr449, %while.end442 ]
  %_j337.01929 = phi i32 [ 0, %for.cond349.preheader.lr.ph ], [ %inc448, %while.end442 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !359
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !359
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !193), !dbg !359
  br label %while.body364, !dbg !359

while.body364:                                    ; preds = %if.then397, %for.body431, %for.cond428.loopexit, %for.cond349.preheader
  %typed_outval343.0 = phi i32 [ 0, %for.cond349.preheader ], [ %typed_outval343.1.lcssa, %for.cond428.loopexit ], [ %typed_outval343.1.lcssa, %for.body431 ], [ %typed_outval343.1.lcssa, %if.then397 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !361
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !190), !dbg !363
  br i1 %cmp161982, label %for.body368, label %for.end377, !dbg !363

for.body368:                                      ; preds = %for.body368, %while.body364
  %indvars.iv2126 = phi i64 [ 1, %while.body364 ], [ %indvars.iv.next2127, %for.body368 ]
  %_vindex339.11909 = phi i32 [ 0, %while.body364 ], [ %add374, %for.body368 ]
  %arrayidx370 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2126, !dbg !363
  %62 = load i32* %arrayidx370, align 4, !dbg !363, !tbaa !293
  %arrayidx372 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2126, !dbg !363
  %63 = load i32* %arrayidx372, align 4, !dbg !363, !tbaa !293
  %mul373 = mul nsw i32 %63, %62, !dbg !363
  %add374 = add nsw i32 %mul373, %_vindex339.11909, !dbg !363
  tail call void @llvm.dbg.value(metadata !{i32 %add374}, i64 0, metadata !194), !dbg !363
  %indvars.iv.next2127 = add i64 %indvars.iv2126, 1, !dbg !363
  %lftr.wideiv2128 = trunc i64 %indvars.iv.next2127 to i32, !dbg !363
  %exitcond2129 = icmp eq i32 %lftr.wideiv2128, %num_dims, !dbg !363
  br i1 %exitcond2129, label %for.cond365.for.end377_crit_edge, label %for.body368, !dbg !363

for.cond365.for.end377_crit_edge:                 ; preds = %for.body368
  %phitmp2209 = sext i32 %add374 to i64, !dbg !363
  br label %for.end377, !dbg !363

for.end377:                                       ; preds = %for.cond365.for.end377_crit_edge, %while.body364
  %_vindex339.1.lcssa = phi i64 [ %phitmp2209, %for.cond365.for.end377_crit_edge ], [ 0, %while.body364 ]
  %64 = load i32* %from, align 4, !dbg !365, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %64}, i64 0, metadata !190), !dbg !365
  %65 = load i32* %to, align 4, !dbg !365, !tbaa !293
  %cmp3811912 = icmp slt i32 %64, %65, !dbg !365
  br i1 %cmp3811912, label %for.body383.lr.ph, label %for.end394, !dbg !365

for.body383.lr.ph:                                ; preds = %for.end377
  %66 = sext i32 %64 to i64
  br label %for.body383, !dbg !365

for.body383:                                      ; preds = %for.body383.lr.ph, %for.body383
  %indvars.iv2130 = phi i64 [ %66, %for.body383.lr.ph ], [ %indvars.iv.next2131, %for.body383 ]
  %typed_outval343.11914 = phi i32 [ %typed_outval343.0, %for.body383.lr.ph ], [ %add391, %for.body383 ]
  %67 = add nsw i64 %indvars.iv2130, %_vindex339.1.lcssa, !dbg !367
  %arrayidx386 = getelementptr inbounds i32* %typed_vdata340.01930, i64 %67, !dbg !367
  %68 = load i32* %arrayidx386, align 4, !dbg !367, !tbaa !293
  %mul390 = mul nsw i32 %68, %68, !dbg !367
  %add391 = add nsw i32 %mul390, %typed_outval343.11914, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %add391}, i64 0, metadata !196), !dbg !367
  %indvars.iv.next2131 = add i64 %indvars.iv2130, 1, !dbg !365
  %69 = trunc i64 %indvars.iv.next2131 to i32, !dbg !365
  %cmp381 = icmp slt i32 %69, %65, !dbg !365
  br i1 %cmp381, label %for.body383, label %for.end394, !dbg !365

for.end394:                                       ; preds = %for.body383, %for.end377
  %typed_outval343.1.lcssa = phi i32 [ %typed_outval343.0, %for.end377 ], [ %add391, %for.body383 ]
  br i1 %cmp161982, label %if.then397, label %while.end442, !dbg !361

if.then397:                                       ; preds = %for.end394
  %70 = load i32* %arrayidx52, align 4, !dbg !369, !tbaa !293
  %inc400 = add nsw i32 %70, 1, !dbg !369
  store i32 %inc400, i32* %arrayidx52, align 4, !dbg !369, !tbaa !293
  %71 = load i32* %arrayidx55, align 4, !dbg !369, !tbaa !293
  %cmp403 = icmp slt i32 %inc400, %71, !dbg !369
  br i1 %cmp403, label %while.body364, label %for.cond407.preheader, !dbg !369

for.cond407.preheader:                            ; preds = %if.then397
  br i1 %cmp611992, label %for.body410, label %while.end442, !dbg !371

for.cond407:                                      ; preds = %for.body410
  %inc421 = add nsw i32 %_dim338.11918, 1, !dbg !371
  %72 = trunc i64 %indvars.iv.next2135 to i32, !dbg !371
  %cmp408 = icmp slt i32 %72, %num_dims, !dbg !371
  br i1 %cmp408, label %for.body410, label %while.end442, !dbg !371

for.body410:                                      ; preds = %for.cond407.preheader, %for.cond407
  %indvars.iv2134 = phi i64 [ %indvars.iv.next2135, %for.cond407 ], [ 2, %for.cond407.preheader ]
  %_dim338.11918 = phi i32 [ %inc421, %for.cond407 ], [ 2, %for.cond407.preheader ]
  %arrayidx412 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2134, !dbg !374
  %73 = load i32* %arrayidx412, align 4, !dbg !374, !tbaa !293
  %inc413 = add nsw i32 %73, 1, !dbg !374
  store i32 %inc413, i32* %arrayidx412, align 4, !dbg !374, !tbaa !293
  %arrayidx415 = getelementptr inbounds i32* %to, i64 %indvars.iv2134, !dbg !374
  %74 = load i32* %arrayidx415, align 4, !dbg !374, !tbaa !293
  %cmp416 = icmp slt i32 %inc413, %74, !dbg !374
  %indvars.iv.next2135 = add i64 %indvars.iv2134, 1, !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %inc421}, i64 0, metadata !193), !dbg !371
  br i1 %cmp416, label %for.cond428.loopexit, label %for.cond407, !dbg !374

for.cond428.loopexit:                             ; preds = %for.body410
  %cmp4291920 = icmp sgt i32 %_dim338.11918, 0, !dbg !376
  br i1 %cmp4291920, label %for.body431.lr.ph, label %while.body364, !dbg !376

for.body431.lr.ph:                                ; preds = %for.cond428.loopexit
  %75 = sext i32 %_dim338.11918 to i64
  br label %for.body431, !dbg !376

for.body431:                                      ; preds = %for.body431.lr.ph, %for.body431
  %indvars.iv2136 = phi i64 [ %75, %for.body431.lr.ph ], [ %indvars.iv.next2137, %for.body431 ]
  %indvars.iv.next2137 = add i64 %indvars.iv2136, -1, !dbg !376
  %arrayidx433 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2137, !dbg !376
  %76 = load i32* %arrayidx433, align 4, !dbg !376, !tbaa !293
  %arrayidx435 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2137, !dbg !376
  store i32 %76, i32* %arrayidx435, align 4, !dbg !376, !tbaa !293
  %77 = trunc i64 %indvars.iv.next2137 to i32, !dbg !376
  %cmp429 = icmp sgt i32 %77, 0, !dbg !376
  br i1 %cmp429, label %for.body431, label %while.body364, !dbg !376

while.end442:                                     ; preds = %for.end394, %for.cond407, %for.cond407.preheader
  %conv443 = sitofp i32 %typed_outval343.1.lcssa to double, !dbg !359
  %indvars.iv.next2143 = add i64 %indvars.iv2142, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %199}, i64 0, metadata !92), !dbg !359
  %arrayidx446 = getelementptr inbounds double* %outvals, i64 %indvars.iv2142, !dbg !359
  store double %conv443, double* %arrayidx446, align 8, !dbg !359, !tbaa !309
  %inc448 = add nsw i32 %_j337.01929, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %inc448}, i64 0, metadata !192), !dbg !357
  %incdec.ptr449 = getelementptr inbounds i32* %typed_vdata340.01930, i64 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr449}, i64 0, metadata !195), !dbg !357
  %exitcond2144 = icmp eq i32 %inc448, %num_outvals, !dbg !357
  br i1 %exitcond2144, label %for.cond344.for.inc1154.loopexit1926_crit_edge, label %for.cond349.preheader, !dbg !357

sw.bb451:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i64* %79}, i64 0, metadata !202), !dbg !378
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !199), !dbg !379
  br i1 %cmp42002, label %for.cond465.preheader.lr.ph, label %for.inc1154, !dbg !379

for.cond465.preheader.lr.ph:                      ; preds = %sw.bb451
  %arrayidx458 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !378
  %78 = load i8** %arrayidx458, align 8, !dbg !378, !tbaa !297
  %79 = bitcast i8* %78 to i64*, !dbg !378
  %80 = sext i32 %total_outvals.02010 to i64
  br label %for.cond465.preheader, !dbg !379

for.cond465.preheader:                            ; preds = %while.end558, %for.cond465.preheader.lr.ph
  %indvars.iv2123 = phi i64 [ %80, %for.cond465.preheader.lr.ph ], [ %indvars.iv.next2124, %while.end558 ]
  %typed_vdata456.01905 = phi i64* [ %79, %for.cond465.preheader.lr.ph ], [ %incdec.ptr565, %while.end558 ]
  %_j453.01904 = phi i32 [ 0, %for.cond465.preheader.lr.ph ], [ %inc564, %while.end558 ]
  tail call void @llvm.dbg.value(metadata !381, i64 0, metadata !205), !dbg !382
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !382
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !200), !dbg !382
  br label %while.body480, !dbg !382

while.body480:                                    ; preds = %if.then513, %for.body547, %for.cond544.loopexit, %for.cond465.preheader
  %typed_outval459.0 = phi i64 [ 0, %for.cond465.preheader ], [ %typed_outval459.1.lcssa, %for.cond544.loopexit ], [ %typed_outval459.1.lcssa, %for.body547 ], [ %typed_outval459.1.lcssa, %if.then513 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !201), !dbg !384
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !197), !dbg !386
  br i1 %cmp161982, label %for.body484, label %for.end493, !dbg !386

for.body484:                                      ; preds = %for.body484, %while.body480
  %indvars.iv2107 = phi i64 [ 1, %while.body480 ], [ %indvars.iv.next2108, %for.body484 ]
  %_vindex455.11884 = phi i32 [ 0, %while.body480 ], [ %add490, %for.body484 ]
  %arrayidx486 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2107, !dbg !386
  %81 = load i32* %arrayidx486, align 4, !dbg !386, !tbaa !293
  %arrayidx488 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2107, !dbg !386
  %82 = load i32* %arrayidx488, align 4, !dbg !386, !tbaa !293
  %mul489 = mul nsw i32 %82, %81, !dbg !386
  %add490 = add nsw i32 %mul489, %_vindex455.11884, !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32 %add490}, i64 0, metadata !201), !dbg !386
  %indvars.iv.next2108 = add i64 %indvars.iv2107, 1, !dbg !386
  %lftr.wideiv2109 = trunc i64 %indvars.iv.next2108 to i32, !dbg !386
  %exitcond2110 = icmp eq i32 %lftr.wideiv2109, %num_dims, !dbg !386
  br i1 %exitcond2110, label %for.cond481.for.end493_crit_edge, label %for.body484, !dbg !386

for.cond481.for.end493_crit_edge:                 ; preds = %for.body484
  %phitmp2208 = sext i32 %add490 to i64, !dbg !386
  br label %for.end493, !dbg !386

for.end493:                                       ; preds = %for.cond481.for.end493_crit_edge, %while.body480
  %_vindex455.1.lcssa = phi i64 [ %phitmp2208, %for.cond481.for.end493_crit_edge ], [ 0, %while.body480 ]
  %83 = load i32* %from, align 4, !dbg !388, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !197), !dbg !388
  %84 = load i32* %to, align 4, !dbg !388, !tbaa !293
  %cmp4971887 = icmp slt i32 %83, %84, !dbg !388
  br i1 %cmp4971887, label %for.body499.lr.ph, label %for.end510, !dbg !388

for.body499.lr.ph:                                ; preds = %for.end493
  %85 = sext i32 %83 to i64
  br label %for.body499, !dbg !388

for.body499:                                      ; preds = %for.body499.lr.ph, %for.body499
  %indvars.iv2111 = phi i64 [ %85, %for.body499.lr.ph ], [ %indvars.iv.next2112, %for.body499 ]
  %typed_outval459.11889 = phi i64 [ %typed_outval459.0, %for.body499.lr.ph ], [ %add507, %for.body499 ]
  %86 = add nsw i64 %indvars.iv2111, %_vindex455.1.lcssa, !dbg !390
  %arrayidx502 = getelementptr inbounds i64* %typed_vdata456.01905, i64 %86, !dbg !390
  %87 = load i64* %arrayidx502, align 8, !dbg !390, !tbaa !392
  %mul506 = mul nsw i64 %87, %87, !dbg !390
  %add507 = add nsw i64 %mul506, %typed_outval459.11889, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i64 %add507}, i64 0, metadata !205), !dbg !390
  %indvars.iv.next2112 = add i64 %indvars.iv2111, 1, !dbg !388
  %88 = trunc i64 %indvars.iv.next2112 to i32, !dbg !388
  %cmp497 = icmp slt i32 %88, %84, !dbg !388
  br i1 %cmp497, label %for.body499, label %for.end510, !dbg !388

for.end510:                                       ; preds = %for.body499, %for.end493
  %typed_outval459.1.lcssa = phi i64 [ %typed_outval459.0, %for.end493 ], [ %add507, %for.body499 ]
  br i1 %cmp161982, label %if.then513, label %while.end558, !dbg !384

if.then513:                                       ; preds = %for.end510
  %89 = load i32* %arrayidx52, align 4, !dbg !393, !tbaa !293
  %inc516 = add nsw i32 %89, 1, !dbg !393
  store i32 %inc516, i32* %arrayidx52, align 4, !dbg !393, !tbaa !293
  %90 = load i32* %arrayidx55, align 4, !dbg !393, !tbaa !293
  %cmp519 = icmp slt i32 %inc516, %90, !dbg !393
  br i1 %cmp519, label %while.body480, label %for.cond523.preheader, !dbg !393

for.cond523.preheader:                            ; preds = %if.then513
  br i1 %cmp611992, label %for.body526, label %while.end558, !dbg !395

for.cond523:                                      ; preds = %for.body526
  %inc537 = add nsw i32 %_dim454.11893, 1, !dbg !395
  %91 = trunc i64 %indvars.iv.next2116 to i32, !dbg !395
  %cmp524 = icmp slt i32 %91, %num_dims, !dbg !395
  br i1 %cmp524, label %for.body526, label %while.end558, !dbg !395

for.body526:                                      ; preds = %for.cond523.preheader, %for.cond523
  %indvars.iv2115 = phi i64 [ %indvars.iv.next2116, %for.cond523 ], [ 2, %for.cond523.preheader ]
  %_dim454.11893 = phi i32 [ %inc537, %for.cond523 ], [ 2, %for.cond523.preheader ]
  %arrayidx528 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2115, !dbg !398
  %92 = load i32* %arrayidx528, align 4, !dbg !398, !tbaa !293
  %inc529 = add nsw i32 %92, 1, !dbg !398
  store i32 %inc529, i32* %arrayidx528, align 4, !dbg !398, !tbaa !293
  %arrayidx531 = getelementptr inbounds i32* %to, i64 %indvars.iv2115, !dbg !398
  %93 = load i32* %arrayidx531, align 4, !dbg !398, !tbaa !293
  %cmp532 = icmp slt i32 %inc529, %93, !dbg !398
  %indvars.iv.next2116 = add i64 %indvars.iv2115, 1, !dbg !395
  tail call void @llvm.dbg.value(metadata !{i32 %inc537}, i64 0, metadata !200), !dbg !395
  br i1 %cmp532, label %for.cond544.loopexit, label %for.cond523, !dbg !398

for.cond544.loopexit:                             ; preds = %for.body526
  %cmp5451895 = icmp sgt i32 %_dim454.11893, 0, !dbg !400
  br i1 %cmp5451895, label %for.body547.lr.ph, label %while.body480, !dbg !400

for.body547.lr.ph:                                ; preds = %for.cond544.loopexit
  %94 = sext i32 %_dim454.11893 to i64
  br label %for.body547, !dbg !400

for.body547:                                      ; preds = %for.body547.lr.ph, %for.body547
  %indvars.iv2117 = phi i64 [ %94, %for.body547.lr.ph ], [ %indvars.iv.next2118, %for.body547 ]
  %indvars.iv.next2118 = add i64 %indvars.iv2117, -1, !dbg !400
  %arrayidx549 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2118, !dbg !400
  %95 = load i32* %arrayidx549, align 4, !dbg !400, !tbaa !293
  %arrayidx551 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2118, !dbg !400
  store i32 %95, i32* %arrayidx551, align 4, !dbg !400, !tbaa !293
  %96 = trunc i64 %indvars.iv.next2118 to i32, !dbg !400
  %cmp545 = icmp sgt i32 %96, 0, !dbg !400
  br i1 %cmp545, label %for.body547, label %while.body480, !dbg !400

while.end558:                                     ; preds = %for.end510, %for.cond523, %for.cond523.preheader
  %conv559 = sitofp i64 %typed_outval459.1.lcssa to double, !dbg !382
  %indvars.iv.next2124 = add i64 %indvars.iv2123, 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %198}, i64 0, metadata !92), !dbg !382
  %arrayidx562 = getelementptr inbounds double* %outvals, i64 %indvars.iv2123, !dbg !382
  store double %conv559, double* %arrayidx562, align 8, !dbg !382, !tbaa !309
  %inc564 = add nsw i32 %_j453.01904, 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %inc564}, i64 0, metadata !199), !dbg !379
  %incdec.ptr565 = getelementptr inbounds i64* %typed_vdata456.01905, i64 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i64* %incdec.ptr565}, i64 0, metadata !202), !dbg !379
  %exitcond2125 = icmp eq i32 %inc564, %num_outvals, !dbg !379
  br i1 %exitcond2125, label %for.cond460.for.inc1154.loopexit1901_crit_edge, label %for.cond465.preheader, !dbg !379

sw.bb567:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %98}, i64 0, metadata !211), !dbg !402
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !208), !dbg !403
  br i1 %cmp42002, label %for.cond581.preheader.lr.ph, label %for.inc1154, !dbg !403

for.cond581.preheader.lr.ph:                      ; preds = %sw.bb567
  %arrayidx574 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !402
  %97 = load i8** %arrayidx574, align 8, !dbg !402, !tbaa !297
  %98 = bitcast i8* %97 to double*, !dbg !402
  %99 = sext i32 %total_outvals.02010 to i64
  br label %for.cond581.preheader, !dbg !403

for.cond581.preheader:                            ; preds = %while.end674, %for.cond581.preheader.lr.ph
  %indvars.iv2104 = phi i64 [ %99, %for.cond581.preheader.lr.ph ], [ %indvars.iv.next2105, %while.end674 ]
  %typed_vdata572.01880 = phi double* [ %98, %for.cond581.preheader.lr.ph ], [ %incdec.ptr680, %while.end674 ]
  %_j569.01879 = phi i32 [ 0, %for.cond581.preheader.lr.ph ], [ %inc679, %while.end674 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !212), !dbg !406
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !406
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !209), !dbg !406
  br label %while.body596, !dbg !406

while.body596:                                    ; preds = %if.then629, %for.body663, %for.cond660.loopexit, %for.cond581.preheader
  %typed_outval575.0 = phi double [ 0.000000e+00, %for.cond581.preheader ], [ %typed_outval575.1.lcssa, %for.cond660.loopexit ], [ %typed_outval575.1.lcssa, %for.body663 ], [ %typed_outval575.1.lcssa, %if.then629 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !408
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !206), !dbg !410
  br i1 %cmp161982, label %for.body600, label %for.end609, !dbg !410

for.body600:                                      ; preds = %for.body600, %while.body596
  %indvars.iv2088 = phi i64 [ 1, %while.body596 ], [ %indvars.iv.next2089, %for.body600 ]
  %_vindex571.11859 = phi i32 [ 0, %while.body596 ], [ %add606, %for.body600 ]
  %arrayidx602 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2088, !dbg !410
  %100 = load i32* %arrayidx602, align 4, !dbg !410, !tbaa !293
  %arrayidx604 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2088, !dbg !410
  %101 = load i32* %arrayidx604, align 4, !dbg !410, !tbaa !293
  %mul605 = mul nsw i32 %101, %100, !dbg !410
  %add606 = add nsw i32 %mul605, %_vindex571.11859, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %add606}, i64 0, metadata !210), !dbg !410
  %indvars.iv.next2089 = add i64 %indvars.iv2088, 1, !dbg !410
  %lftr.wideiv2090 = trunc i64 %indvars.iv.next2089 to i32, !dbg !410
  %exitcond2091 = icmp eq i32 %lftr.wideiv2090, %num_dims, !dbg !410
  br i1 %exitcond2091, label %for.cond597.for.end609_crit_edge, label %for.body600, !dbg !410

for.cond597.for.end609_crit_edge:                 ; preds = %for.body600
  %phitmp2207 = sext i32 %add606 to i64, !dbg !410
  br label %for.end609, !dbg !410

for.end609:                                       ; preds = %for.cond597.for.end609_crit_edge, %while.body596
  %_vindex571.1.lcssa = phi i64 [ %phitmp2207, %for.cond597.for.end609_crit_edge ], [ 0, %while.body596 ]
  %102 = load i32* %from, align 4, !dbg !412, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %102}, i64 0, metadata !206), !dbg !412
  %103 = load i32* %to, align 4, !dbg !412, !tbaa !293
  %cmp6131862 = icmp slt i32 %102, %103, !dbg !412
  br i1 %cmp6131862, label %for.body615.lr.ph, label %for.end626, !dbg !412

for.body615.lr.ph:                                ; preds = %for.end609
  %104 = sext i32 %102 to i64
  br label %for.body615, !dbg !412

for.body615:                                      ; preds = %for.body615.lr.ph, %for.body615
  %indvars.iv2092 = phi i64 [ %104, %for.body615.lr.ph ], [ %indvars.iv.next2093, %for.body615 ]
  %typed_outval575.11864 = phi double [ %typed_outval575.0, %for.body615.lr.ph ], [ %add623, %for.body615 ]
  %105 = add nsw i64 %indvars.iv2092, %_vindex571.1.lcssa, !dbg !414
  %arrayidx618 = getelementptr inbounds double* %typed_vdata572.01880, i64 %105, !dbg !414
  %106 = load double* %arrayidx618, align 8, !dbg !414, !tbaa !309
  %mul622 = fmul double %106, %106, !dbg !414
  %add623 = fadd double %typed_outval575.11864, %mul622, !dbg !414
  tail call void @llvm.dbg.value(metadata !{double %add623}, i64 0, metadata !212), !dbg !414
  %indvars.iv.next2093 = add i64 %indvars.iv2092, 1, !dbg !412
  %107 = trunc i64 %indvars.iv.next2093 to i32, !dbg !412
  %cmp613 = icmp slt i32 %107, %103, !dbg !412
  br i1 %cmp613, label %for.body615, label %for.end626, !dbg !412

for.end626:                                       ; preds = %for.body615, %for.end609
  %typed_outval575.1.lcssa = phi double [ %typed_outval575.0, %for.end609 ], [ %add623, %for.body615 ]
  br i1 %cmp161982, label %if.then629, label %while.end674, !dbg !408

if.then629:                                       ; preds = %for.end626
  %108 = load i32* %arrayidx52, align 4, !dbg !416, !tbaa !293
  %inc632 = add nsw i32 %108, 1, !dbg !416
  store i32 %inc632, i32* %arrayidx52, align 4, !dbg !416, !tbaa !293
  %109 = load i32* %arrayidx55, align 4, !dbg !416, !tbaa !293
  %cmp635 = icmp slt i32 %inc632, %109, !dbg !416
  br i1 %cmp635, label %while.body596, label %for.cond639.preheader, !dbg !416

for.cond639.preheader:                            ; preds = %if.then629
  br i1 %cmp611992, label %for.body642, label %while.end674, !dbg !418

for.cond639:                                      ; preds = %for.body642
  %inc653 = add nsw i32 %_dim570.11868, 1, !dbg !418
  %110 = trunc i64 %indvars.iv.next2097 to i32, !dbg !418
  %cmp640 = icmp slt i32 %110, %num_dims, !dbg !418
  br i1 %cmp640, label %for.body642, label %while.end674, !dbg !418

for.body642:                                      ; preds = %for.cond639.preheader, %for.cond639
  %indvars.iv2096 = phi i64 [ %indvars.iv.next2097, %for.cond639 ], [ 2, %for.cond639.preheader ]
  %_dim570.11868 = phi i32 [ %inc653, %for.cond639 ], [ 2, %for.cond639.preheader ]
  %arrayidx644 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2096, !dbg !421
  %111 = load i32* %arrayidx644, align 4, !dbg !421, !tbaa !293
  %inc645 = add nsw i32 %111, 1, !dbg !421
  store i32 %inc645, i32* %arrayidx644, align 4, !dbg !421, !tbaa !293
  %arrayidx647 = getelementptr inbounds i32* %to, i64 %indvars.iv2096, !dbg !421
  %112 = load i32* %arrayidx647, align 4, !dbg !421, !tbaa !293
  %cmp648 = icmp slt i32 %inc645, %112, !dbg !421
  %indvars.iv.next2097 = add i64 %indvars.iv2096, 1, !dbg !418
  tail call void @llvm.dbg.value(metadata !{i32 %inc653}, i64 0, metadata !209), !dbg !418
  br i1 %cmp648, label %for.cond660.loopexit, label %for.cond639, !dbg !421

for.cond660.loopexit:                             ; preds = %for.body642
  %cmp6611870 = icmp sgt i32 %_dim570.11868, 0, !dbg !423
  br i1 %cmp6611870, label %for.body663.lr.ph, label %while.body596, !dbg !423

for.body663.lr.ph:                                ; preds = %for.cond660.loopexit
  %113 = sext i32 %_dim570.11868 to i64
  br label %for.body663, !dbg !423

for.body663:                                      ; preds = %for.body663.lr.ph, %for.body663
  %indvars.iv2098 = phi i64 [ %113, %for.body663.lr.ph ], [ %indvars.iv.next2099, %for.body663 ]
  %indvars.iv.next2099 = add i64 %indvars.iv2098, -1, !dbg !423
  %arrayidx665 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2099, !dbg !423
  %114 = load i32* %arrayidx665, align 4, !dbg !423, !tbaa !293
  %arrayidx667 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2099, !dbg !423
  store i32 %114, i32* %arrayidx667, align 4, !dbg !423, !tbaa !293
  %115 = trunc i64 %indvars.iv.next2099 to i32, !dbg !423
  %cmp661 = icmp sgt i32 %115, 0, !dbg !423
  br i1 %cmp661, label %for.body663, label %while.body596, !dbg !423

while.end674:                                     ; preds = %for.end626, %for.cond639, %for.cond639.preheader
  %indvars.iv.next2105 = add i64 %indvars.iv2104, 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %197}, i64 0, metadata !92), !dbg !406
  %arrayidx677 = getelementptr inbounds double* %outvals, i64 %indvars.iv2104, !dbg !406
  store double %typed_outval575.1.lcssa, double* %arrayidx677, align 8, !dbg !406, !tbaa !309
  %inc679 = add nsw i32 %_j569.01879, 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %inc679}, i64 0, metadata !208), !dbg !403
  %incdec.ptr680 = getelementptr inbounds double* %typed_vdata572.01880, i64 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{double* %incdec.ptr680}, i64 0, metadata !211), !dbg !403
  %exitcond2106 = icmp eq i32 %inc679, %num_outvals, !dbg !403
  br i1 %exitcond2106, label %for.cond576.for.inc1154.loopexit1876_crit_edge, label %for.cond581.preheader, !dbg !403

sw.bb682:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{float* %117}, i64 0, metadata !218), !dbg !425
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !215), !dbg !426
  br i1 %cmp42002, label %for.cond696.preheader.lr.ph, label %for.inc1154, !dbg !426

for.cond696.preheader.lr.ph:                      ; preds = %sw.bb682
  %arrayidx689 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !425
  %116 = load i8** %arrayidx689, align 8, !dbg !425, !tbaa !297
  %117 = bitcast i8* %116 to float*, !dbg !425
  %118 = sext i32 %total_outvals.02010 to i64
  br label %for.cond696.preheader, !dbg !426

for.cond696.preheader:                            ; preds = %while.end789, %for.cond696.preheader.lr.ph
  %indvars.iv2085 = phi i64 [ %118, %for.cond696.preheader.lr.ph ], [ %indvars.iv.next2086, %while.end789 ]
  %typed_vdata687.01855 = phi float* [ %117, %for.cond696.preheader.lr.ph ], [ %incdec.ptr796, %while.end789 ]
  %_j684.01854 = phi i32 [ 0, %for.cond696.preheader.lr.ph ], [ %inc795, %while.end789 ]
  tail call void @llvm.dbg.value(metadata !428, i64 0, metadata !221), !dbg !429
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !429
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !216), !dbg !429
  br label %while.body711, !dbg !429

while.body711:                                    ; preds = %if.then744, %for.body778, %for.cond775.loopexit, %for.cond696.preheader
  %typed_outval690.0 = phi float [ 0.000000e+00, %for.cond696.preheader ], [ %typed_outval690.1.lcssa, %for.cond775.loopexit ], [ %typed_outval690.1.lcssa, %for.body778 ], [ %typed_outval690.1.lcssa, %if.then744 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !217), !dbg !431
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !213), !dbg !433
  br i1 %cmp161982, label %for.body715, label %for.end724, !dbg !433

for.body715:                                      ; preds = %for.body715, %while.body711
  %indvars.iv2069 = phi i64 [ 1, %while.body711 ], [ %indvars.iv.next2070, %for.body715 ]
  %_vindex686.11834 = phi i32 [ 0, %while.body711 ], [ %add721, %for.body715 ]
  %arrayidx717 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2069, !dbg !433
  %119 = load i32* %arrayidx717, align 4, !dbg !433, !tbaa !293
  %arrayidx719 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2069, !dbg !433
  %120 = load i32* %arrayidx719, align 4, !dbg !433, !tbaa !293
  %mul720 = mul nsw i32 %120, %119, !dbg !433
  %add721 = add nsw i32 %mul720, %_vindex686.11834, !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32 %add721}, i64 0, metadata !217), !dbg !433
  %indvars.iv.next2070 = add i64 %indvars.iv2069, 1, !dbg !433
  %lftr.wideiv2071 = trunc i64 %indvars.iv.next2070 to i32, !dbg !433
  %exitcond2072 = icmp eq i32 %lftr.wideiv2071, %num_dims, !dbg !433
  br i1 %exitcond2072, label %for.cond712.for.end724_crit_edge, label %for.body715, !dbg !433

for.cond712.for.end724_crit_edge:                 ; preds = %for.body715
  %phitmp2206 = sext i32 %add721 to i64, !dbg !433
  br label %for.end724, !dbg !433

for.end724:                                       ; preds = %for.cond712.for.end724_crit_edge, %while.body711
  %_vindex686.1.lcssa = phi i64 [ %phitmp2206, %for.cond712.for.end724_crit_edge ], [ 0, %while.body711 ]
  %121 = load i32* %from, align 4, !dbg !435, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %121}, i64 0, metadata !213), !dbg !435
  %122 = load i32* %to, align 4, !dbg !435, !tbaa !293
  %cmp7281837 = icmp slt i32 %121, %122, !dbg !435
  br i1 %cmp7281837, label %for.body730.lr.ph, label %for.end741, !dbg !435

for.body730.lr.ph:                                ; preds = %for.end724
  %123 = sext i32 %121 to i64
  br label %for.body730, !dbg !435

for.body730:                                      ; preds = %for.body730.lr.ph, %for.body730
  %indvars.iv2073 = phi i64 [ %123, %for.body730.lr.ph ], [ %indvars.iv.next2074, %for.body730 ]
  %typed_outval690.11839 = phi float [ %typed_outval690.0, %for.body730.lr.ph ], [ %add738, %for.body730 ]
  %124 = add nsw i64 %indvars.iv2073, %_vindex686.1.lcssa, !dbg !437
  %arrayidx733 = getelementptr inbounds float* %typed_vdata687.01855, i64 %124, !dbg !437
  %125 = load float* %arrayidx733, align 4, !dbg !437, !tbaa !439
  %mul737 = fmul float %125, %125, !dbg !437
  %add738 = fadd float %typed_outval690.11839, %mul737, !dbg !437
  tail call void @llvm.dbg.value(metadata !{float %add738}, i64 0, metadata !221), !dbg !437
  %indvars.iv.next2074 = add i64 %indvars.iv2073, 1, !dbg !435
  %126 = trunc i64 %indvars.iv.next2074 to i32, !dbg !435
  %cmp728 = icmp slt i32 %126, %122, !dbg !435
  br i1 %cmp728, label %for.body730, label %for.end741, !dbg !435

for.end741:                                       ; preds = %for.body730, %for.end724
  %typed_outval690.1.lcssa = phi float [ %typed_outval690.0, %for.end724 ], [ %add738, %for.body730 ]
  br i1 %cmp161982, label %if.then744, label %while.end789, !dbg !431

if.then744:                                       ; preds = %for.end741
  %127 = load i32* %arrayidx52, align 4, !dbg !440, !tbaa !293
  %inc747 = add nsw i32 %127, 1, !dbg !440
  store i32 %inc747, i32* %arrayidx52, align 4, !dbg !440, !tbaa !293
  %128 = load i32* %arrayidx55, align 4, !dbg !440, !tbaa !293
  %cmp750 = icmp slt i32 %inc747, %128, !dbg !440
  br i1 %cmp750, label %while.body711, label %for.cond754.preheader, !dbg !440

for.cond754.preheader:                            ; preds = %if.then744
  br i1 %cmp611992, label %for.body757, label %while.end789, !dbg !442

for.cond754:                                      ; preds = %for.body757
  %inc768 = add nsw i32 %_dim685.11843, 1, !dbg !442
  %129 = trunc i64 %indvars.iv.next2078 to i32, !dbg !442
  %cmp755 = icmp slt i32 %129, %num_dims, !dbg !442
  br i1 %cmp755, label %for.body757, label %while.end789, !dbg !442

for.body757:                                      ; preds = %for.cond754.preheader, %for.cond754
  %indvars.iv2077 = phi i64 [ %indvars.iv.next2078, %for.cond754 ], [ 2, %for.cond754.preheader ]
  %_dim685.11843 = phi i32 [ %inc768, %for.cond754 ], [ 2, %for.cond754.preheader ]
  %arrayidx759 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2077, !dbg !445
  %130 = load i32* %arrayidx759, align 4, !dbg !445, !tbaa !293
  %inc760 = add nsw i32 %130, 1, !dbg !445
  store i32 %inc760, i32* %arrayidx759, align 4, !dbg !445, !tbaa !293
  %arrayidx762 = getelementptr inbounds i32* %to, i64 %indvars.iv2077, !dbg !445
  %131 = load i32* %arrayidx762, align 4, !dbg !445, !tbaa !293
  %cmp763 = icmp slt i32 %inc760, %131, !dbg !445
  %indvars.iv.next2078 = add i64 %indvars.iv2077, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %inc768}, i64 0, metadata !216), !dbg !442
  br i1 %cmp763, label %for.cond775.loopexit, label %for.cond754, !dbg !445

for.cond775.loopexit:                             ; preds = %for.body757
  %cmp7761845 = icmp sgt i32 %_dim685.11843, 0, !dbg !447
  br i1 %cmp7761845, label %for.body778.lr.ph, label %while.body711, !dbg !447

for.body778.lr.ph:                                ; preds = %for.cond775.loopexit
  %132 = sext i32 %_dim685.11843 to i64
  br label %for.body778, !dbg !447

for.body778:                                      ; preds = %for.body778.lr.ph, %for.body778
  %indvars.iv2079 = phi i64 [ %132, %for.body778.lr.ph ], [ %indvars.iv.next2080, %for.body778 ]
  %indvars.iv.next2080 = add i64 %indvars.iv2079, -1, !dbg !447
  %arrayidx780 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2080, !dbg !447
  %133 = load i32* %arrayidx780, align 4, !dbg !447, !tbaa !293
  %arrayidx782 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2080, !dbg !447
  store i32 %133, i32* %arrayidx782, align 4, !dbg !447, !tbaa !293
  %134 = trunc i64 %indvars.iv.next2080 to i32, !dbg !447
  %cmp776 = icmp sgt i32 %134, 0, !dbg !447
  br i1 %cmp776, label %for.body778, label %while.body711, !dbg !447

while.end789:                                     ; preds = %for.end741, %for.cond754, %for.cond754.preheader
  %conv790 = fpext float %typed_outval690.1.lcssa to double, !dbg !429
  %indvars.iv.next2086 = add i64 %indvars.iv2085, 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %196}, i64 0, metadata !92), !dbg !429
  %arrayidx793 = getelementptr inbounds double* %outvals, i64 %indvars.iv2085, !dbg !429
  store double %conv790, double* %arrayidx793, align 8, !dbg !429, !tbaa !309
  %inc795 = add nsw i32 %_j684.01854, 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %inc795}, i64 0, metadata !215), !dbg !426
  %incdec.ptr796 = getelementptr inbounds float* %typed_vdata687.01855, i64 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{float* %incdec.ptr796}, i64 0, metadata !218), !dbg !426
  %exitcond2087 = icmp eq i32 %inc795, %num_outvals, !dbg !426
  br i1 %exitcond2087, label %for.cond691.for.inc1154.loopexit1851_crit_edge, label %for.cond696.preheader, !dbg !426

sw.bb798:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %136}, i64 0, metadata !227), !dbg !449
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !224), !dbg !450
  br i1 %cmp42002, label %for.cond812.preheader.lr.ph, label %for.inc1154, !dbg !450

for.cond812.preheader.lr.ph:                      ; preds = %sw.bb798
  %arrayidx805 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !449
  %135 = load i8** %arrayidx805, align 8, !dbg !449, !tbaa !297
  %136 = bitcast i8* %135 to double*, !dbg !449
  %137 = sext i32 %total_outvals.02010 to i64
  br label %for.cond812.preheader, !dbg !450

for.cond812.preheader:                            ; preds = %while.end905, %for.cond812.preheader.lr.ph
  %indvars.iv2066 = phi i64 [ %137, %for.cond812.preheader.lr.ph ], [ %indvars.iv.next2067, %while.end905 ]
  %typed_vdata803.01830 = phi double* [ %136, %for.cond812.preheader.lr.ph ], [ %incdec.ptr911, %while.end905 ]
  %_j800.01829 = phi i32 [ 0, %for.cond812.preheader.lr.ph ], [ %inc910, %while.end905 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !228), !dbg !452
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !452
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !225), !dbg !452
  br label %while.body827, !dbg !452

while.body827:                                    ; preds = %if.then860, %for.body894, %for.cond891.loopexit, %for.cond812.preheader
  %typed_outval806.0 = phi double [ 0.000000e+00, %for.cond812.preheader ], [ %typed_outval806.1.lcssa, %for.cond891.loopexit ], [ %typed_outval806.1.lcssa, %for.body894 ], [ %typed_outval806.1.lcssa, %if.then860 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !226), !dbg !454
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !222), !dbg !456
  br i1 %cmp161982, label %for.body831, label %for.end840, !dbg !456

for.body831:                                      ; preds = %for.body831, %while.body827
  %indvars.iv2050 = phi i64 [ 1, %while.body827 ], [ %indvars.iv.next2051, %for.body831 ]
  %_vindex802.11809 = phi i32 [ 0, %while.body827 ], [ %add837, %for.body831 ]
  %arrayidx833 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2050, !dbg !456
  %138 = load i32* %arrayidx833, align 4, !dbg !456, !tbaa !293
  %arrayidx835 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2050, !dbg !456
  %139 = load i32* %arrayidx835, align 4, !dbg !456, !tbaa !293
  %mul836 = mul nsw i32 %139, %138, !dbg !456
  %add837 = add nsw i32 %mul836, %_vindex802.11809, !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %add837}, i64 0, metadata !226), !dbg !456
  %indvars.iv.next2051 = add i64 %indvars.iv2050, 1, !dbg !456
  %lftr.wideiv2052 = trunc i64 %indvars.iv.next2051 to i32, !dbg !456
  %exitcond2053 = icmp eq i32 %lftr.wideiv2052, %num_dims, !dbg !456
  br i1 %exitcond2053, label %for.cond828.for.end840_crit_edge, label %for.body831, !dbg !456

for.cond828.for.end840_crit_edge:                 ; preds = %for.body831
  %phitmp2205 = sext i32 %add837 to i64, !dbg !456
  br label %for.end840, !dbg !456

for.end840:                                       ; preds = %for.cond828.for.end840_crit_edge, %while.body827
  %_vindex802.1.lcssa = phi i64 [ %phitmp2205, %for.cond828.for.end840_crit_edge ], [ 0, %while.body827 ]
  %140 = load i32* %from, align 4, !dbg !458, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %140}, i64 0, metadata !222), !dbg !458
  %141 = load i32* %to, align 4, !dbg !458, !tbaa !293
  %cmp8441812 = icmp slt i32 %140, %141, !dbg !458
  br i1 %cmp8441812, label %for.body846.lr.ph, label %for.end857, !dbg !458

for.body846.lr.ph:                                ; preds = %for.end840
  %142 = sext i32 %140 to i64
  br label %for.body846, !dbg !458

for.body846:                                      ; preds = %for.body846.lr.ph, %for.body846
  %indvars.iv2054 = phi i64 [ %142, %for.body846.lr.ph ], [ %indvars.iv.next2055, %for.body846 ]
  %typed_outval806.11814 = phi double [ %typed_outval806.0, %for.body846.lr.ph ], [ %add854, %for.body846 ]
  %143 = add nsw i64 %indvars.iv2054, %_vindex802.1.lcssa, !dbg !460
  %arrayidx849 = getelementptr inbounds double* %typed_vdata803.01830, i64 %143, !dbg !460
  %144 = load double* %arrayidx849, align 8, !dbg !460, !tbaa !309
  %mul853 = fmul double %144, %144, !dbg !460
  %add854 = fadd double %typed_outval806.11814, %mul853, !dbg !460
  tail call void @llvm.dbg.value(metadata !{double %add854}, i64 0, metadata !228), !dbg !460
  %indvars.iv.next2055 = add i64 %indvars.iv2054, 1, !dbg !458
  %145 = trunc i64 %indvars.iv.next2055 to i32, !dbg !458
  %cmp844 = icmp slt i32 %145, %141, !dbg !458
  br i1 %cmp844, label %for.body846, label %for.end857, !dbg !458

for.end857:                                       ; preds = %for.body846, %for.end840
  %typed_outval806.1.lcssa = phi double [ %typed_outval806.0, %for.end840 ], [ %add854, %for.body846 ]
  br i1 %cmp161982, label %if.then860, label %while.end905, !dbg !454

if.then860:                                       ; preds = %for.end857
  %146 = load i32* %arrayidx52, align 4, !dbg !462, !tbaa !293
  %inc863 = add nsw i32 %146, 1, !dbg !462
  store i32 %inc863, i32* %arrayidx52, align 4, !dbg !462, !tbaa !293
  %147 = load i32* %arrayidx55, align 4, !dbg !462, !tbaa !293
  %cmp866 = icmp slt i32 %inc863, %147, !dbg !462
  br i1 %cmp866, label %while.body827, label %for.cond870.preheader, !dbg !462

for.cond870.preheader:                            ; preds = %if.then860
  br i1 %cmp611992, label %for.body873, label %while.end905, !dbg !464

for.cond870:                                      ; preds = %for.body873
  %inc884 = add nsw i32 %_dim801.11818, 1, !dbg !464
  %148 = trunc i64 %indvars.iv.next2059 to i32, !dbg !464
  %cmp871 = icmp slt i32 %148, %num_dims, !dbg !464
  br i1 %cmp871, label %for.body873, label %while.end905, !dbg !464

for.body873:                                      ; preds = %for.cond870.preheader, %for.cond870
  %indvars.iv2058 = phi i64 [ %indvars.iv.next2059, %for.cond870 ], [ 2, %for.cond870.preheader ]
  %_dim801.11818 = phi i32 [ %inc884, %for.cond870 ], [ 2, %for.cond870.preheader ]
  %arrayidx875 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2058, !dbg !467
  %149 = load i32* %arrayidx875, align 4, !dbg !467, !tbaa !293
  %inc876 = add nsw i32 %149, 1, !dbg !467
  store i32 %inc876, i32* %arrayidx875, align 4, !dbg !467, !tbaa !293
  %arrayidx878 = getelementptr inbounds i32* %to, i64 %indvars.iv2058, !dbg !467
  %150 = load i32* %arrayidx878, align 4, !dbg !467, !tbaa !293
  %cmp879 = icmp slt i32 %inc876, %150, !dbg !467
  %indvars.iv.next2059 = add i64 %indvars.iv2058, 1, !dbg !464
  tail call void @llvm.dbg.value(metadata !{i32 %inc884}, i64 0, metadata !225), !dbg !464
  br i1 %cmp879, label %for.cond891.loopexit, label %for.cond870, !dbg !467

for.cond891.loopexit:                             ; preds = %for.body873
  %cmp8921820 = icmp sgt i32 %_dim801.11818, 0, !dbg !469
  br i1 %cmp8921820, label %for.body894.lr.ph, label %while.body827, !dbg !469

for.body894.lr.ph:                                ; preds = %for.cond891.loopexit
  %151 = sext i32 %_dim801.11818 to i64
  br label %for.body894, !dbg !469

for.body894:                                      ; preds = %for.body894.lr.ph, %for.body894
  %indvars.iv2060 = phi i64 [ %151, %for.body894.lr.ph ], [ %indvars.iv.next2061, %for.body894 ]
  %indvars.iv.next2061 = add i64 %indvars.iv2060, -1, !dbg !469
  %arrayidx896 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2061, !dbg !469
  %152 = load i32* %arrayidx896, align 4, !dbg !469, !tbaa !293
  %arrayidx898 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2061, !dbg !469
  store i32 %152, i32* %arrayidx898, align 4, !dbg !469, !tbaa !293
  %153 = trunc i64 %indvars.iv.next2061 to i32, !dbg !469
  %cmp892 = icmp sgt i32 %153, 0, !dbg !469
  br i1 %cmp892, label %for.body894, label %while.body827, !dbg !469

while.end905:                                     ; preds = %for.end857, %for.cond870, %for.cond870.preheader
  %indvars.iv.next2067 = add i64 %indvars.iv2066, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %195}, i64 0, metadata !92), !dbg !452
  %arrayidx908 = getelementptr inbounds double* %outvals, i64 %indvars.iv2066, !dbg !452
  store double %typed_outval806.1.lcssa, double* %arrayidx908, align 8, !dbg !452, !tbaa !309
  %inc910 = add nsw i32 %_j800.01829, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %inc910}, i64 0, metadata !224), !dbg !450
  %incdec.ptr911 = getelementptr inbounds double* %typed_vdata803.01830, i64 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{double* %incdec.ptr911}, i64 0, metadata !227), !dbg !450
  %exitcond2068 = icmp eq i32 %inc910, %num_outvals, !dbg !450
  br i1 %exitcond2068, label %for.cond807.for.inc1154.loopexit1826_crit_edge, label %for.cond812.preheader, !dbg !450

sw.bb913:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %155}, i64 0, metadata !234), !dbg !471
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !231), !dbg !472
  br i1 %cmp42002, label %for.cond927.preheader.lr.ph, label %for.inc1154, !dbg !472

for.cond927.preheader.lr.ph:                      ; preds = %sw.bb913
  %arrayidx920 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !471
  %154 = load i8** %arrayidx920, align 8, !dbg !471, !tbaa !297
  %155 = bitcast i8* %154 to x86_fp80*, !dbg !471
  %156 = sext i32 %total_outvals.02010 to i64
  br label %for.cond927.preheader, !dbg !472

for.cond927.preheader:                            ; preds = %while.end1020, %for.cond927.preheader.lr.ph
  %indvars.iv2047 = phi i64 [ %156, %for.cond927.preheader.lr.ph ], [ %indvars.iv.next2048, %while.end1020 ]
  %typed_vdata918.01805 = phi x86_fp80* [ %155, %for.cond927.preheader.lr.ph ], [ %incdec.ptr1027, %while.end1020 ]
  %_j915.01804 = phi i32 [ 0, %for.cond927.preheader.lr.ph ], [ %inc1026, %while.end1020 ]
  tail call void @llvm.dbg.value(metadata !474, i64 0, metadata !237), !dbg !475
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !475
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !232), !dbg !475
  br label %while.body942, !dbg !475

while.body942:                                    ; preds = %if.then975, %for.body1009, %for.cond1006.loopexit, %for.cond927.preheader
  %typed_outval921.0 = phi x86_fp80 [ 0xK00000000000000000000, %for.cond927.preheader ], [ %typed_outval921.1.lcssa, %for.cond1006.loopexit ], [ %typed_outval921.1.lcssa, %for.body1009 ], [ %typed_outval921.1.lcssa, %if.then975 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !233), !dbg !477
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !229), !dbg !479
  br i1 %cmp161982, label %for.body946, label %for.end955, !dbg !479

for.body946:                                      ; preds = %for.body946, %while.body942
  %indvars.iv2031 = phi i64 [ 1, %while.body942 ], [ %indvars.iv.next2032, %for.body946 ]
  %_vindex917.11784 = phi i32 [ 0, %while.body942 ], [ %add952, %for.body946 ]
  %arrayidx948 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2031, !dbg !479
  %157 = load i32* %arrayidx948, align 4, !dbg !479, !tbaa !293
  %arrayidx950 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2031, !dbg !479
  %158 = load i32* %arrayidx950, align 4, !dbg !479, !tbaa !293
  %mul951 = mul nsw i32 %158, %157, !dbg !479
  %add952 = add nsw i32 %mul951, %_vindex917.11784, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %add952}, i64 0, metadata !233), !dbg !479
  %indvars.iv.next2032 = add i64 %indvars.iv2031, 1, !dbg !479
  %lftr.wideiv2033 = trunc i64 %indvars.iv.next2032 to i32, !dbg !479
  %exitcond2034 = icmp eq i32 %lftr.wideiv2033, %num_dims, !dbg !479
  br i1 %exitcond2034, label %for.cond943.for.end955_crit_edge, label %for.body946, !dbg !479

for.cond943.for.end955_crit_edge:                 ; preds = %for.body946
  %phitmp2204 = sext i32 %add952 to i64, !dbg !479
  br label %for.end955, !dbg !479

for.end955:                                       ; preds = %for.cond943.for.end955_crit_edge, %while.body942
  %_vindex917.1.lcssa = phi i64 [ %phitmp2204, %for.cond943.for.end955_crit_edge ], [ 0, %while.body942 ]
  %159 = load i32* %from, align 4, !dbg !481, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %159}, i64 0, metadata !229), !dbg !481
  %160 = load i32* %to, align 4, !dbg !481, !tbaa !293
  %cmp9591787 = icmp slt i32 %159, %160, !dbg !481
  br i1 %cmp9591787, label %for.body961.lr.ph, label %for.end972, !dbg !481

for.body961.lr.ph:                                ; preds = %for.end955
  %161 = sext i32 %159 to i64
  br label %for.body961, !dbg !481

for.body961:                                      ; preds = %for.body961.lr.ph, %for.body961
  %indvars.iv2035 = phi i64 [ %161, %for.body961.lr.ph ], [ %indvars.iv.next2036, %for.body961 ]
  %typed_outval921.11789 = phi x86_fp80 [ %typed_outval921.0, %for.body961.lr.ph ], [ %add969, %for.body961 ]
  %162 = add nsw i64 %indvars.iv2035, %_vindex917.1.lcssa, !dbg !483
  %arrayidx964 = getelementptr inbounds x86_fp80* %typed_vdata918.01805, i64 %162, !dbg !483
  %163 = load x86_fp80* %arrayidx964, align 16, !dbg !483, !tbaa !485
  %mul968 = fmul x86_fp80 %163, %163, !dbg !483
  %add969 = fadd x86_fp80 %typed_outval921.11789, %mul968, !dbg !483
  tail call void @llvm.dbg.value(metadata !{x86_fp80 %add969}, i64 0, metadata !237), !dbg !483
  %indvars.iv.next2036 = add i64 %indvars.iv2035, 1, !dbg !481
  %164 = trunc i64 %indvars.iv.next2036 to i32, !dbg !481
  %cmp959 = icmp slt i32 %164, %160, !dbg !481
  br i1 %cmp959, label %for.body961, label %for.end972, !dbg !481

for.end972:                                       ; preds = %for.body961, %for.end955
  %typed_outval921.1.lcssa = phi x86_fp80 [ %typed_outval921.0, %for.end955 ], [ %add969, %for.body961 ]
  br i1 %cmp161982, label %if.then975, label %while.end1020, !dbg !477

if.then975:                                       ; preds = %for.end972
  %165 = load i32* %arrayidx52, align 4, !dbg !486, !tbaa !293
  %inc978 = add nsw i32 %165, 1, !dbg !486
  store i32 %inc978, i32* %arrayidx52, align 4, !dbg !486, !tbaa !293
  %166 = load i32* %arrayidx55, align 4, !dbg !486, !tbaa !293
  %cmp981 = icmp slt i32 %inc978, %166, !dbg !486
  br i1 %cmp981, label %while.body942, label %for.cond985.preheader, !dbg !486

for.cond985.preheader:                            ; preds = %if.then975
  br i1 %cmp611992, label %for.body988, label %while.end1020, !dbg !488

for.cond985:                                      ; preds = %for.body988
  %inc999 = add nsw i32 %_dim916.11793, 1, !dbg !488
  %167 = trunc i64 %indvars.iv.next2040 to i32, !dbg !488
  %cmp986 = icmp slt i32 %167, %num_dims, !dbg !488
  br i1 %cmp986, label %for.body988, label %while.end1020, !dbg !488

for.body988:                                      ; preds = %for.cond985.preheader, %for.cond985
  %indvars.iv2039 = phi i64 [ %indvars.iv.next2040, %for.cond985 ], [ 2, %for.cond985.preheader ]
  %_dim916.11793 = phi i32 [ %inc999, %for.cond985 ], [ 2, %for.cond985.preheader ]
  %arrayidx990 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2039, !dbg !491
  %168 = load i32* %arrayidx990, align 4, !dbg !491, !tbaa !293
  %inc991 = add nsw i32 %168, 1, !dbg !491
  store i32 %inc991, i32* %arrayidx990, align 4, !dbg !491, !tbaa !293
  %arrayidx993 = getelementptr inbounds i32* %to, i64 %indvars.iv2039, !dbg !491
  %169 = load i32* %arrayidx993, align 4, !dbg !491, !tbaa !293
  %cmp994 = icmp slt i32 %inc991, %169, !dbg !491
  %indvars.iv.next2040 = add i64 %indvars.iv2039, 1, !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32 %inc999}, i64 0, metadata !232), !dbg !488
  br i1 %cmp994, label %for.cond1006.loopexit, label %for.cond985, !dbg !491

for.cond1006.loopexit:                            ; preds = %for.body988
  %cmp10071795 = icmp sgt i32 %_dim916.11793, 0, !dbg !493
  br i1 %cmp10071795, label %for.body1009.lr.ph, label %while.body942, !dbg !493

for.body1009.lr.ph:                               ; preds = %for.cond1006.loopexit
  %170 = sext i32 %_dim916.11793 to i64
  br label %for.body1009, !dbg !493

for.body1009:                                     ; preds = %for.body1009.lr.ph, %for.body1009
  %indvars.iv2041 = phi i64 [ %170, %for.body1009.lr.ph ], [ %indvars.iv.next2042, %for.body1009 ]
  %indvars.iv.next2042 = add i64 %indvars.iv2041, -1, !dbg !493
  %arrayidx1011 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2042, !dbg !493
  %171 = load i32* %arrayidx1011, align 4, !dbg !493, !tbaa !293
  %arrayidx1013 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2042, !dbg !493
  store i32 %171, i32* %arrayidx1013, align 4, !dbg !493, !tbaa !293
  %172 = trunc i64 %indvars.iv.next2042 to i32, !dbg !493
  %cmp1007 = icmp sgt i32 %172, 0, !dbg !493
  br i1 %cmp1007, label %for.body1009, label %while.body942, !dbg !493

while.end1020:                                    ; preds = %for.end972, %for.cond985, %for.cond985.preheader
  %conv1021 = fptrunc x86_fp80 %typed_outval921.1.lcssa to double, !dbg !475
  %indvars.iv.next2048 = add i64 %indvars.iv2047, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %194}, i64 0, metadata !92), !dbg !475
  %arrayidx1024 = getelementptr inbounds double* %outvals, i64 %indvars.iv2047, !dbg !475
  store double %conv1021, double* %arrayidx1024, align 8, !dbg !475, !tbaa !309
  %inc1026 = add nsw i32 %_j915.01804, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %inc1026}, i64 0, metadata !231), !dbg !472
  %incdec.ptr1027 = getelementptr inbounds x86_fp80* %typed_vdata918.01805, i64 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1027}, i64 0, metadata !234), !dbg !472
  %exitcond2049 = icmp eq i32 %inc1026, %num_outvals, !dbg !472
  br i1 %exitcond2049, label %for.cond922.for.inc1154.loopexit1801_crit_edge, label %for.cond927.preheader, !dbg !472

sw.bb1029:                                        ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %174}, i64 0, metadata !243), !dbg !495
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !496
  br i1 %cmp42002, label %for.cond1043.preheader.lr.ph, label %for.inc1154, !dbg !496

for.cond1043.preheader.lr.ph:                     ; preds = %sw.bb1029
  %arrayidx1036 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2202, !dbg !495
  %173 = load i8** %arrayidx1036, align 8, !dbg !495, !tbaa !297
  %174 = bitcast i8* %173 to %struct.CCTK_COMPLEX16*, !dbg !495
  %175 = sext i32 %total_outvals.02010 to i64
  br label %for.cond1043.preheader, !dbg !496

for.cond1043.preheader:                           ; preds = %while.end1146, %for.cond1043.preheader.lr.ph
  %indvars.iv2028 = phi i64 [ %175, %for.cond1043.preheader.lr.ph ], [ %indvars.iv.next2029, %while.end1146 ]
  %typed_vdata1034.01778 = phi %struct.CCTK_COMPLEX16* [ %174, %for.cond1043.preheader.lr.ph ], [ %incdec.ptr1152, %while.end1146 ]
  %_j1031.01777 = phi i32 [ 0, %for.cond1043.preheader.lr.ph ], [ %inc1151, %while.end1146 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !251), !dbg !498
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !498
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !241), !dbg !498
  br label %while.body1058, !dbg !498

while.body1058:                                   ; preds = %if.then1101, %for.body1135, %for.cond1132.loopexit, %for.cond1043.preheader
  %typed_outval1037.0 = phi double [ 0.000000e+00, %for.cond1043.preheader ], [ %typed_outval1037.1.lcssa, %for.cond1132.loopexit ], [ %typed_outval1037.1.lcssa, %for.body1135 ], [ %typed_outval1037.1.lcssa, %if.then1101 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !242), !dbg !500
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !238), !dbg !502
  br i1 %cmp161982, label %for.body1062, label %for.end1071, !dbg !502

for.body1062:                                     ; preds = %for.body1062, %while.body1058
  %indvars.iv2012 = phi i64 [ 1, %while.body1058 ], [ %indvars.iv.next2013, %for.body1062 ]
  %_vindex1033.11759 = phi i32 [ 0, %while.body1058 ], [ %add1068, %for.body1062 ]
  %arrayidx1064 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2012, !dbg !502
  %176 = load i32* %arrayidx1064, align 4, !dbg !502, !tbaa !293
  %arrayidx1066 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2012, !dbg !502
  %177 = load i32* %arrayidx1066, align 4, !dbg !502, !tbaa !293
  %mul1067 = mul nsw i32 %177, %176, !dbg !502
  %add1068 = add nsw i32 %mul1067, %_vindex1033.11759, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %add1068}, i64 0, metadata !242), !dbg !502
  %indvars.iv.next2013 = add i64 %indvars.iv2012, 1, !dbg !502
  %lftr.wideiv2014 = trunc i64 %indvars.iv.next2013 to i32, !dbg !502
  %exitcond2015 = icmp eq i32 %lftr.wideiv2014, %num_dims, !dbg !502
  br i1 %exitcond2015, label %for.cond1059.for.end1071_crit_edge, label %for.body1062, !dbg !502

for.cond1059.for.end1071_crit_edge:               ; preds = %for.body1062
  %phitmp = sext i32 %add1068 to i64, !dbg !502
  br label %for.end1071, !dbg !502

for.end1071:                                      ; preds = %for.cond1059.for.end1071_crit_edge, %while.body1058
  %_vindex1033.1.lcssa = phi i64 [ %phitmp, %for.cond1059.for.end1071_crit_edge ], [ 0, %while.body1058 ]
  %178 = load i32* %from, align 4, !dbg !504, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %178}, i64 0, metadata !238), !dbg !504
  %179 = load i32* %to, align 4, !dbg !504, !tbaa !293
  %cmp10751761 = icmp slt i32 %178, %179, !dbg !504
  br i1 %cmp10751761, label %for.body1077.lr.ph, label %for.end1098, !dbg !504

for.body1077.lr.ph:                               ; preds = %for.end1071
  %180 = sext i32 %178 to i64
  br label %for.body1077, !dbg !504

for.body1077:                                     ; preds = %for.body1077.lr.ph, %for.body1077
  %indvars.iv2016 = phi i64 [ %180, %for.body1077.lr.ph ], [ %indvars.iv.next2017, %for.body1077 ]
  %typed_outval1037.11763 = phi double [ %typed_outval1037.0, %for.body1077.lr.ph ], [ %add1095, %for.body1077 ]
  %181 = add nsw i64 %indvars.iv2016, %_vindex1033.1.lcssa, !dbg !506
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata1034.01778, i64 %181, i32 0, !dbg !506
  %182 = load double* %Re, align 8, !dbg !506, !tbaa !309
  %mul1085 = fmul double %182, %182, !dbg !506
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata1034.01778, i64 %181, i32 1, !dbg !506
  %183 = load double* %Im, align 8, !dbg !506, !tbaa !309
  %mul1093 = fmul double %183, %183, !dbg !506
  %add1094 = fadd double %mul1085, %mul1093, !dbg !506
  %add1095 = fadd double %typed_outval1037.11763, %add1094, !dbg !506
  tail call void @llvm.dbg.value(metadata !{double %add1095}, i64 0, metadata !251), !dbg !506
  %indvars.iv.next2017 = add i64 %indvars.iv2016, 1, !dbg !504
  %184 = trunc i64 %indvars.iv.next2017 to i32, !dbg !504
  %cmp1075 = icmp slt i32 %184, %179, !dbg !504
  br i1 %cmp1075, label %for.body1077, label %for.end1098, !dbg !504

for.end1098:                                      ; preds = %for.body1077, %for.end1071
  %typed_outval1037.1.lcssa = phi double [ %typed_outval1037.0, %for.end1071 ], [ %add1095, %for.body1077 ]
  br i1 %cmp161982, label %if.then1101, label %while.end1146, !dbg !500

if.then1101:                                      ; preds = %for.end1098
  %185 = load i32* %arrayidx52, align 4, !dbg !508, !tbaa !293
  %inc1104 = add nsw i32 %185, 1, !dbg !508
  store i32 %inc1104, i32* %arrayidx52, align 4, !dbg !508, !tbaa !293
  %186 = load i32* %arrayidx55, align 4, !dbg !508, !tbaa !293
  %cmp1107 = icmp slt i32 %inc1104, %186, !dbg !508
  br i1 %cmp1107, label %while.body1058, label %for.cond1111.preheader, !dbg !508

for.cond1111.preheader:                           ; preds = %if.then1101
  br i1 %cmp611992, label %for.body1114, label %while.end1146, !dbg !510

for.cond1111:                                     ; preds = %for.body1114
  %inc1125 = add nsw i32 %_dim1032.11767, 1, !dbg !510
  %187 = trunc i64 %indvars.iv.next2021 to i32, !dbg !510
  %cmp1112 = icmp slt i32 %187, %num_dims, !dbg !510
  br i1 %cmp1112, label %for.body1114, label %while.end1146, !dbg !510

for.body1114:                                     ; preds = %for.cond1111.preheader, %for.cond1111
  %indvars.iv2020 = phi i64 [ %indvars.iv.next2021, %for.cond1111 ], [ 2, %for.cond1111.preheader ]
  %_dim1032.11767 = phi i32 [ %inc1125, %for.cond1111 ], [ 2, %for.cond1111.preheader ]
  %arrayidx1116 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2020, !dbg !513
  %188 = load i32* %arrayidx1116, align 4, !dbg !513, !tbaa !293
  %inc1117 = add nsw i32 %188, 1, !dbg !513
  store i32 %inc1117, i32* %arrayidx1116, align 4, !dbg !513, !tbaa !293
  %arrayidx1119 = getelementptr inbounds i32* %to, i64 %indvars.iv2020, !dbg !513
  %189 = load i32* %arrayidx1119, align 4, !dbg !513, !tbaa !293
  %cmp1120 = icmp slt i32 %inc1117, %189, !dbg !513
  %indvars.iv.next2021 = add i64 %indvars.iv2020, 1, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %inc1125}, i64 0, metadata !241), !dbg !510
  br i1 %cmp1120, label %for.cond1132.loopexit, label %for.cond1111, !dbg !513

for.cond1132.loopexit:                            ; preds = %for.body1114
  %cmp11331769 = icmp sgt i32 %_dim1032.11767, 0, !dbg !515
  br i1 %cmp11331769, label %for.body1135.lr.ph, label %while.body1058, !dbg !515

for.body1135.lr.ph:                               ; preds = %for.cond1132.loopexit
  %190 = sext i32 %_dim1032.11767 to i64
  br label %for.body1135, !dbg !515

for.body1135:                                     ; preds = %for.body1135.lr.ph, %for.body1135
  %indvars.iv2022 = phi i64 [ %190, %for.body1135.lr.ph ], [ %indvars.iv.next2023, %for.body1135 ]
  %indvars.iv.next2023 = add i64 %indvars.iv2022, -1, !dbg !515
  %arrayidx1137 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2023, !dbg !515
  %191 = load i32* %arrayidx1137, align 4, !dbg !515, !tbaa !293
  %arrayidx1139 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2023, !dbg !515
  store i32 %191, i32* %arrayidx1139, align 4, !dbg !515, !tbaa !293
  %192 = trunc i64 %indvars.iv.next2023 to i32, !dbg !515
  %cmp1133 = icmp sgt i32 %192, 0, !dbg !515
  br i1 %cmp1133, label %for.body1135, label %while.body1058, !dbg !515

while.end1146:                                    ; preds = %for.end1098, %for.cond1111, %for.cond1111.preheader
  %indvars.iv.next2029 = add i64 %indvars.iv2028, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %193}, i64 0, metadata !92), !dbg !498
  %arrayidx1149 = getelementptr inbounds double* %outvals, i64 %indvars.iv2028, !dbg !498
  store double %typed_outval1037.1.lcssa, double* %arrayidx1149, align 8, !dbg !498, !tbaa !309
  %inc1151 = add nsw i32 %_j1031.01777, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %inc1151}, i64 0, metadata !240), !dbg !496
  %incdec.ptr1152 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata1034.01778, i64 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %incdec.ptr1152}, i64 0, metadata !243), !dbg !496
  %exitcond2030 = icmp eq i32 %inc1151, %num_outvals, !dbg !496
  br i1 %exitcond2030, label %for.cond1038.for.inc1154.loopexit_crit_edge, label %for.cond1043.preheader, !dbg !496

sw.default:                                       ; preds = %for.body
  %call = tail call i32 @CCTK_Warn(i32 1, i32 318, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !517
  br label %return, !dbg !518

for.cond1038.for.inc1154.loopexit_crit_edge:      ; preds = %while.end1146
  %193 = add i32 %total_outvals.02010, %num_outvals, !dbg !496
  br label %for.inc1154, !dbg !496

for.cond922.for.inc1154.loopexit1801_crit_edge:   ; preds = %while.end1020
  %194 = add i32 %total_outvals.02010, %num_outvals, !dbg !472
  br label %for.inc1154, !dbg !472

for.cond807.for.inc1154.loopexit1826_crit_edge:   ; preds = %while.end905
  %195 = add i32 %total_outvals.02010, %num_outvals, !dbg !450
  br label %for.inc1154, !dbg !450

for.cond691.for.inc1154.loopexit1851_crit_edge:   ; preds = %while.end789
  %196 = add i32 %total_outvals.02010, %num_outvals, !dbg !426
  br label %for.inc1154, !dbg !426

for.cond576.for.inc1154.loopexit1876_crit_edge:   ; preds = %while.end674
  %197 = add i32 %total_outvals.02010, %num_outvals, !dbg !403
  br label %for.inc1154, !dbg !403

for.cond460.for.inc1154.loopexit1901_crit_edge:   ; preds = %while.end558
  %198 = add i32 %total_outvals.02010, %num_outvals, !dbg !379
  br label %for.inc1154, !dbg !379

for.cond344.for.inc1154.loopexit1926_crit_edge:   ; preds = %while.end442
  %199 = add i32 %total_outvals.02010, %num_outvals, !dbg !357
  br label %for.inc1154, !dbg !357

for.cond224.for.inc1154.loopexit1951_crit_edge:   ; preds = %while.end326
  %200 = add i32 %total_outvals.02010, %num_outvals, !dbg !333
  br label %for.inc1154, !dbg !333

for.cond108.for.inc1154.loopexit1976_crit_edge:   ; preds = %while.end206
  %201 = add i32 %total_outvals.02010, %num_outvals, !dbg !311
  br label %for.inc1154, !dbg !311

for.cond3.for.inc1154.loopexit2001_crit_edge:     ; preds = %while.end
  %202 = add i32 %total_outvals.02010, %num_outvals, !dbg !280
  br label %for.inc1154, !dbg !280

for.inc1154:                                      ; preds = %sw.bb, %for.cond3.for.inc1154.loopexit2001_crit_edge, %sw.bb99, %for.cond108.for.inc1154.loopexit1976_crit_edge, %sw.bb215, %for.cond224.for.inc1154.loopexit1951_crit_edge, %sw.bb335, %for.cond344.for.inc1154.loopexit1926_crit_edge, %sw.bb451, %for.cond460.for.inc1154.loopexit1901_crit_edge, %sw.bb567, %for.cond576.for.inc1154.loopexit1876_crit_edge, %sw.bb682, %for.cond691.for.inc1154.loopexit1851_crit_edge, %sw.bb798, %for.cond807.for.inc1154.loopexit1826_crit_edge, %sw.bb913, %for.cond922.for.inc1154.loopexit1801_crit_edge, %sw.bb1029, %for.cond1038.for.inc1154.loopexit_crit_edge
  %total_outvals.11 = phi i32 [ %193, %for.cond1038.for.inc1154.loopexit_crit_edge ], [ %total_outvals.02010, %sw.bb1029 ], [ %194, %for.cond922.for.inc1154.loopexit1801_crit_edge ], [ %total_outvals.02010, %sw.bb913 ], [ %195, %for.cond807.for.inc1154.loopexit1826_crit_edge ], [ %total_outvals.02010, %sw.bb798 ], [ %196, %for.cond691.for.inc1154.loopexit1851_crit_edge ], [ %total_outvals.02010, %sw.bb682 ], [ %197, %for.cond576.for.inc1154.loopexit1876_crit_edge ], [ %total_outvals.02010, %sw.bb567 ], [ %198, %for.cond460.for.inc1154.loopexit1901_crit_edge ], [ %total_outvals.02010, %sw.bb451 ], [ %199, %for.cond344.for.inc1154.loopexit1926_crit_edge ], [ %total_outvals.02010, %sw.bb335 ], [ %200, %for.cond224.for.inc1154.loopexit1951_crit_edge ], [ %total_outvals.02010, %sw.bb215 ], [ %201, %for.cond108.for.inc1154.loopexit1976_crit_edge ], [ %total_outvals.02010, %sw.bb99 ], [ %202, %for.cond3.for.inc1154.loopexit2001_crit_edge ], [ %total_outvals.02010, %sw.bb ]
  %indvars.iv.next2203 = add i64 %indvars.iv2202, 1, !dbg !279
  %203 = trunc i64 %indvars.iv.next2203 to i32, !dbg !279
  %cmp = icmp slt i32 %203, %num_inarrays, !dbg !279
  br i1 %cmp, label %for.body, label %for.end1156, !dbg !279

for.end1156:                                      ; preds = %for.inc1154, %entry
  %total_outvals.0.lcssa = phi i32 [ 0, %entry ], [ %total_outvals.11, %for.inc1154 ]
  %call1157 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !519
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call1157}, i64 0, metadata !93), !dbg !519
  %cmp1158 = icmp slt i32 %proc, 0, !dbg !520
  br i1 %cmp1158, label %for.cond1163.preheader, label %lor.lhs.false, !dbg !520

lor.lhs.false:                                    ; preds = %for.end1156
  %myproc = getelementptr inbounds %struct.PGH* %call1157, i64 0, i32 3, !dbg !520
  %204 = load i32* %myproc, align 4, !dbg !520, !tbaa !293
  %cmp1160 = icmp eq i32 %204, %proc, !dbg !520
  %cmp11641755 = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !521
  %or.cond = and i1 %cmp1160, %cmp11641755, !dbg !520
  br i1 %or.cond, label %for.body1166.lr.ph, label %return, !dbg !520

for.cond1163.preheader:                           ; preds = %for.end1156
  %cmp11641755.old = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !521
  br i1 %cmp11641755.old, label %for.body1166.lr.ph, label %return, !dbg !521

for.body1166.lr.ph:                               ; preds = %lor.lhs.false, %for.cond1163.preheader
  %conv1169 = sitofp i32 %num_points to double, !dbg !524
  br label %for.body1166, !dbg !521

for.body1166:                                     ; preds = %for.body1166, %for.body1166.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body1166.lr.ph ], [ %indvars.iv.next, %for.body1166 ]
  %arrayidx1168 = getelementptr inbounds double* %outvals, i64 %indvars.iv, !dbg !524
  %205 = load double* %arrayidx1168, align 8, !dbg !524, !tbaa !309
  %div = fdiv double %205, %conv1169, !dbg !524
  %call1170 = tail call double @sqrt(double %div) #6, !dbg !524
  store double %call1170, double* %arrayidx1168, align 8, !dbg !524, !tbaa !309
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !521
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !521
  %exitcond = icmp eq i32 %lftr.wideiv, %total_outvals.0.lcssa, !dbg !521
  br i1 %exitcond, label %return, label %for.body1166, !dbg !521

return:                                           ; preds = %for.cond1163.preheader, %for.body1166, %lor.lhs.false, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %lor.lhs.false ], [ 0, %for.body1166 ], [ 0, %for.cond1163.preheader ]
  ret i32 %retval.0, !dbg !526
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionNorm2GVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !67), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !68), !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !69), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !70), !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %outvals}, i64 0, metadata !71), !dbg !531
  tail call void @llvm.dbg.value(metadata !{i32 %num_invars}, i64 0, metadata !72), !dbg !532
  tail call void @llvm.dbg.value(metadata !{i32* %invars}, i64 0, metadata !73), !dbg !533
  %call = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6, !dbg !534
  ret i32 %call, !dbg !534
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionGVs(%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !252, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !63, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c", metadata !"CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm2Arrays", metadata !"PUGH_ReductionNorm2Arrays", metadata !"", i32 112, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm2Arrays, null, null, metadata !52, i32 122} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 122] [PUGH_ReductionNorm2Arrays]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !14, metadata !42, metadata !14, metadata !14, metadata !43, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !18, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777328, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 112]
!54 = metadata !{i32 786689, metadata !11, metadata !"proc", metadata !5, i32 33554545, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 113]
!55 = metadata !{i32 786689, metadata !11, metadata !"num_dims", metadata !5, i32 50331762, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_dims] [line 114]
!56 = metadata !{i32 786689, metadata !11, metadata !"dims", metadata !5, i32 67108979, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dims] [line 115]
!57 = metadata !{i32 786689, metadata !11, metadata !"num_inarrays", metadata !5, i32 83886196, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_inarrays] [line 116]
!58 = metadata !{i32 786689, metadata !11, metadata !"inarrays", metadata !5, i32 100663413, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarrays] [line 117]
!59 = metadata !{i32 786689, metadata !11, metadata !"intype", metadata !5, i32 117440630, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intype] [line 118]
!60 = metadata !{i32 786689, metadata !11, metadata !"num_outvals", metadata !5, i32 134217847, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 119]
!61 = metadata !{i32 786689, metadata !11, metadata !"outvals", metadata !5, i32 150995064, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 120]
!62 = metadata !{i32 786689, metadata !11, metadata !"outtype", metadata !5, i32 167772281, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 121]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm2GVs", metadata !"PUGH_ReductionNorm2GVs", metadata !"", i32 180, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm2GVs, null, null, metadata !66, i32 187} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 187] [PUGH_ReductionNorm2GVs]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !43, metadata !14, metadata !23}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!67 = metadata !{i32 786689, metadata !63, metadata !"GH", metadata !5, i32 16777396, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 180]
!68 = metadata !{i32 786689, metadata !63, metadata !"proc", metadata !5, i32 33554613, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 181]
!69 = metadata !{i32 786689, metadata !63, metadata !"num_outvals", metadata !5, i32 50331830, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 182]
!70 = metadata !{i32 786689, metadata !63, metadata !"outtype", metadata !5, i32 67109047, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 183]
!71 = metadata !{i32 786689, metadata !63, metadata !"outvals", metadata !5, i32 83886264, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 184]
!72 = metadata !{i32 786689, metadata !63, metadata !"num_invars", metadata !5, i32 100663481, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_invars] [line 185]
!73 = metadata !{i32 786689, metadata !63, metadata !"invars", metadata !5, i32 117440698, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invars] [line 186]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm2", metadata !"PUGH_ReductionNorm2", metadata !"", i32 208, metadata !75, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2, null, null, metadata !77, i32 221} ; [ DW_TAG_subprogram ] [line 208] [local] [def] [scope 221] [PUGH_ReductionNorm2]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !23, metadata !23, metadata !23, metadata !14, metadata !14, metadata !23, metadata !42, metadata !14, metadata !33}
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !161, metadata !166, metadata !167, metadata !168, metadata !169, metadata !173, metadata !174, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !183, metadata !184, metadata !185, metadata !186, metadata !189, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !201, metadata !202, metadata !205, metadata !206, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !215, metadata !216, metadata !217, metadata !218, metadata !221, metadata !222, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !237, metadata !238, metadata !240, metadata !241, metadata !242, metadata !243, metadata !251}
!78 = metadata !{i32 786689, metadata !74, metadata !"GH", metadata !5, i32 16777424, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 208]
!79 = metadata !{i32 786689, metadata !74, metadata !"proc", metadata !5, i32 33554641, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 209]
!80 = metadata !{i32 786689, metadata !74, metadata !"num_dims", metadata !5, i32 50331858, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_dims] [line 210]
!81 = metadata !{i32 786689, metadata !74, metadata !"from", metadata !5, i32 67109075, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 211]
!82 = metadata !{i32 786689, metadata !74, metadata !"to", metadata !5, i32 83886292, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 212]
!83 = metadata !{i32 786689, metadata !74, metadata !"iterator", metadata !5, i32 100663509, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iterator] [line 213]
!84 = metadata !{i32 786689, metadata !74, metadata !"points_per_dim", metadata !5, i32 117440726, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [points_per_dim] [line 214]
!85 = metadata !{i32 786689, metadata !74, metadata !"num_points", metadata !5, i32 134217943, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_points] [line 215]
!86 = metadata !{i32 786689, metadata !74, metadata !"num_inarrays", metadata !5, i32 150995160, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_inarrays] [line 216]
!87 = metadata !{i32 786689, metadata !74, metadata !"intypes", metadata !5, i32 167772377, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intypes] [line 217]
!88 = metadata !{i32 786689, metadata !74, metadata !"inarrays", metadata !5, i32 184549594, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarrays] [line 218]
!89 = metadata !{i32 786689, metadata !74, metadata !"num_outvals", metadata !5, i32 201326811, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 219]
!90 = metadata !{i32 786689, metadata !74, metadata !"outvals", metadata !5, i32 218104028, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 220]
!91 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !5, i32 222, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 222]
!92 = metadata !{i32 786688, metadata !74, metadata !"total_outvals", metadata !5, i32 222, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_outvals] [line 222]
!93 = metadata !{i32 786688, metadata !74, metadata !"pughGH", metadata !5, i32 223, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 223]
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!95 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!96 = metadata !{i32 786451, metadata !97, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !98, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!97 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !149, metadata !159}
!99 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!100 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!101 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!102 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!103 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!104 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!105 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!106 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!107 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!108 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!109 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!110 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!111 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!112 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!113 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!114 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!115 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!116 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!117 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!118 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!119 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!120 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !121} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!123 = metadata !{i32 786454, metadata !97, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!124 = metadata !{i32 786451, metadata !125, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !126, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!125 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !146, metadata !148}
!127 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!128 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!129 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!130 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !131} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!132 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !131} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!133 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!134 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!135 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!136 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!137 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !131} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!138 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!139 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!140 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!141 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !142} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !23, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !145}
!144 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!145 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!146 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !147} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!147 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !131, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!148 = metadata !{i32 786445, metadata !125, metadata !124, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !147} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!149 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !150} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!152 = metadata !{i32 786454, metadata !97, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!153 = metadata !{i32 786451, metadata !125, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !154, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158}
!155 = metadata !{i32 786445, metadata !125, metadata !153, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!156 = metadata !{i32 786445, metadata !125, metadata !153, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!157 = metadata !{i32 786445, metadata !125, metadata !153, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !131} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!158 = metadata !{i32 786445, metadata !125, metadata !153, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!159 = metadata !{i32 786445, metadata !97, metadata !96, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !160} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!161 = metadata !{i32 786688, metadata !162, metadata !"_i", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 243]
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 243, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 240, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!164 = metadata !{i32 786443, metadata !1, metadata !165, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!165 = metadata !{i32 786443, metadata !1, metadata !74, i32 237, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!166 = metadata !{i32 786688, metadata !162, metadata !"_j", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 243]
!167 = metadata !{i32 786688, metadata !162, metadata !"_dim", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 243]
!168 = metadata !{i32 786688, metadata !162, metadata !"_vindex", metadata !5, i32 243, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 243]
!169 = metadata !{i32 786688, metadata !162, metadata !"typed_vdata", metadata !5, i32 243, metadata !170, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 243]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_BYTE]
!171 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_BYTE", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [CCTK_BYTE] [line 59, size 0, align 0, offset 0] [from unsigned char]
!172 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!173 = metadata !{i32 786688, metadata !162, metadata !"typed_outval", metadata !5, i32 243, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 243]
!174 = metadata !{i32 786688, metadata !175, metadata !"_i", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 249]
!175 = metadata !{i32 786443, metadata !1, metadata !163, i32 249, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!176 = metadata !{i32 786688, metadata !175, metadata !"_j", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 249]
!177 = metadata !{i32 786688, metadata !175, metadata !"_dim", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 249]
!178 = metadata !{i32 786688, metadata !175, metadata !"_vindex", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 249]
!179 = metadata !{i32 786688, metadata !175, metadata !"typed_vdata", metadata !5, i32 249, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 249]
!180 = metadata !{i32 786688, metadata !175, metadata !"typed_outval", metadata !5, i32 249, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 249]
!181 = metadata !{i32 786688, metadata !182, metadata !"_i", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 256]
!182 = metadata !{i32 786443, metadata !1, metadata !163, i32 256, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!183 = metadata !{i32 786688, metadata !182, metadata !"_j", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 256]
!184 = metadata !{i32 786688, metadata !182, metadata !"_dim", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 256]
!185 = metadata !{i32 786688, metadata !182, metadata !"_vindex", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 256]
!186 = metadata !{i32 786688, metadata !182, metadata !"typed_vdata", metadata !5, i32 256, metadata !187, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 256]
!187 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!188 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!189 = metadata !{i32 786688, metadata !182, metadata !"typed_outval", metadata !5, i32 256, metadata !188, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 256]
!190 = metadata !{i32 786688, metadata !191, metadata !"_i", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 264]
!191 = metadata !{i32 786443, metadata !1, metadata !163, i32 264, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"_j", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 264]
!193 = metadata !{i32 786688, metadata !191, metadata !"_dim", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 264]
!194 = metadata !{i32 786688, metadata !191, metadata !"_vindex", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 264]
!195 = metadata !{i32 786688, metadata !191, metadata !"typed_vdata", metadata !5, i32 264, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 264]
!196 = metadata !{i32 786688, metadata !191, metadata !"typed_outval", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 264]
!197 = metadata !{i32 786688, metadata !198, metadata !"_i", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 272]
!198 = metadata !{i32 786443, metadata !1, metadata !163, i32 272, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!199 = metadata !{i32 786688, metadata !198, metadata !"_j", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 272]
!200 = metadata !{i32 786688, metadata !198, metadata !"_dim", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 272]
!201 = metadata !{i32 786688, metadata !198, metadata !"_vindex", metadata !5, i32 272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 272]
!202 = metadata !{i32 786688, metadata !198, metadata !"typed_vdata", metadata !5, i32 272, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 272]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!204 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!205 = metadata !{i32 786688, metadata !198, metadata !"typed_outval", metadata !5, i32 272, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 272]
!206 = metadata !{i32 786688, metadata !207, metadata !"_i", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 279]
!207 = metadata !{i32 786443, metadata !1, metadata !163, i32 279, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!208 = metadata !{i32 786688, metadata !207, metadata !"_j", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 279]
!209 = metadata !{i32 786688, metadata !207, metadata !"_dim", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 279]
!210 = metadata !{i32 786688, metadata !207, metadata !"_vindex", metadata !5, i32 279, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 279]
!211 = metadata !{i32 786688, metadata !207, metadata !"typed_vdata", metadata !5, i32 279, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 279]
!212 = metadata !{i32 786688, metadata !207, metadata !"typed_outval", metadata !5, i32 279, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 279]
!213 = metadata !{i32 786688, metadata !214, metadata !"_i", metadata !5, i32 286, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 286]
!214 = metadata !{i32 786443, metadata !1, metadata !163, i32 286, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!215 = metadata !{i32 786688, metadata !214, metadata !"_j", metadata !5, i32 286, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 286]
!216 = metadata !{i32 786688, metadata !214, metadata !"_dim", metadata !5, i32 286, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 286]
!217 = metadata !{i32 786688, metadata !214, metadata !"_vindex", metadata !5, i32 286, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 286]
!218 = metadata !{i32 786688, metadata !214, metadata !"typed_vdata", metadata !5, i32 286, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 286]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!220 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!221 = metadata !{i32 786688, metadata !214, metadata !"typed_outval", metadata !5, i32 286, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 286]
!222 = metadata !{i32 786688, metadata !223, metadata !"_i", metadata !5, i32 294, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 294]
!223 = metadata !{i32 786443, metadata !1, metadata !163, i32 294, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!224 = metadata !{i32 786688, metadata !223, metadata !"_j", metadata !5, i32 294, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 294]
!225 = metadata !{i32 786688, metadata !223, metadata !"_dim", metadata !5, i32 294, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 294]
!226 = metadata !{i32 786688, metadata !223, metadata !"_vindex", metadata !5, i32 294, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 294]
!227 = metadata !{i32 786688, metadata !223, metadata !"typed_vdata", metadata !5, i32 294, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 294]
!228 = metadata !{i32 786688, metadata !223, metadata !"typed_outval", metadata !5, i32 294, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 294]
!229 = metadata !{i32 786688, metadata !230, metadata !"_i", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 302]
!230 = metadata !{i32 786443, metadata !1, metadata !163, i32 302, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!231 = metadata !{i32 786688, metadata !230, metadata !"_j", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 302]
!232 = metadata !{i32 786688, metadata !230, metadata !"_dim", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 302]
!233 = metadata !{i32 786688, metadata !230, metadata !"_vindex", metadata !5, i32 302, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 302]
!234 = metadata !{i32 786688, metadata !230, metadata !"typed_vdata", metadata !5, i32 302, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 302]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!236 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!237 = metadata !{i32 786688, metadata !230, metadata !"typed_outval", metadata !5, i32 302, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 302]
!238 = metadata !{i32 786688, metadata !239, metadata !"_i", metadata !5, i32 312, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 312]
!239 = metadata !{i32 786443, metadata !1, metadata !163, i32 312, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!240 = metadata !{i32 786688, metadata !239, metadata !"_j", metadata !5, i32 312, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 312]
!241 = metadata !{i32 786688, metadata !239, metadata !"_dim", metadata !5, i32 312, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 312]
!242 = metadata !{i32 786688, metadata !239, metadata !"_vindex", metadata !5, i32 312, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 312]
!243 = metadata !{i32 786688, metadata !239, metadata !"typed_vdata", metadata !5, i32 312, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 312]
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX16]
!245 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX16", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [CCTK_COMPLEX16] [line 44, size 0, align 0, offset 0] [from ]
!246 = metadata !{i32 786451, metadata !247, null, metadata !"", i32 40, i64 128, i64 64, i32 0, i32 0, null, metadata !248, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 128, align 64, offset 0] [from ]
!247 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cctk_Types.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!248 = metadata !{metadata !249, metadata !250}
!249 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"Re", i32 42, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [Re] [line 42, size 64, align 64, offset 0] [from double]
!250 = metadata !{i32 786445, metadata !247, metadata !246, metadata !"Im", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [Im] [line 43, size 64, align 64, offset 64] [from double]
!251 = metadata !{i32 786688, metadata !239, metadata !"typed_outval", metadata !5, i32 312, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 312]
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!254 = metadata !{i32 24, i32 0, metadata !4, null}
!255 = metadata !{i32 112, i32 0, metadata !11, null}
!256 = metadata !{i32 113, i32 0, metadata !11, null}
!257 = metadata !{i32 114, i32 0, metadata !11, null}
!258 = metadata !{i32 115, i32 0, metadata !11, null}
!259 = metadata !{i32 116, i32 0, metadata !11, null}
!260 = metadata !{i32 117, i32 0, metadata !11, null}
!261 = metadata !{i32 118, i32 0, metadata !11, null}
!262 = metadata !{i32 119, i32 0, metadata !11, null}
!263 = metadata !{i32 120, i32 0, metadata !11, null}
!264 = metadata !{i32 121, i32 0, metadata !11, null}
!265 = metadata !{i32 123, i32 0, metadata !11, null}
!266 = metadata !{i32 208, i32 0, metadata !74, null}
!267 = metadata !{i32 209, i32 0, metadata !74, null}
!268 = metadata !{i32 210, i32 0, metadata !74, null}
!269 = metadata !{i32 211, i32 0, metadata !74, null}
!270 = metadata !{i32 212, i32 0, metadata !74, null}
!271 = metadata !{i32 213, i32 0, metadata !74, null}
!272 = metadata !{i32 214, i32 0, metadata !74, null}
!273 = metadata !{i32 215, i32 0, metadata !74, null}
!274 = metadata !{i32 216, i32 0, metadata !74, null}
!275 = metadata !{i32 217, i32 0, metadata !74, null}
!276 = metadata !{i32 218, i32 0, metadata !74, null}
!277 = metadata !{i32 219, i32 0, metadata !74, null}
!278 = metadata !{i32 220, i32 0, metadata !74, null}
!279 = metadata !{i32 237, i32 0, metadata !165, null}
!280 = metadata !{i32 243, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !162, i32 243, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!282 = metadata !{i32 243, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 243, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!284 = metadata !{i32 243, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 243, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!286 = metadata !{i32 786443, metadata !1, metadata !283, i32 243, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!287 = metadata !{i32 243, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !286, i32 243, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!289 = metadata !{i32 243, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 243, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 243, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!292 = metadata !{i32 239, i32 0, metadata !164, null}
!293 = metadata !{metadata !"int", metadata !294}
!294 = metadata !{metadata !"omnipotent char", metadata !295}
!295 = metadata !{metadata !"Simple C/C++ TBAA"}
!296 = metadata !{i32 243, i32 0, metadata !162, null}
!297 = metadata !{metadata !"any pointer", metadata !294}
!298 = metadata !{i8 0}
!299 = metadata !{i32 1}
!300 = metadata !{i32 243, i32 0, metadata !286, null}
!301 = metadata !{i32 243, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !286, i32 243, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!303 = metadata !{i32 243, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 243, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!305 = metadata !{i32 243, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !290, i32 243, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!307 = metadata !{i32 243, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !291, i32 243, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!309 = metadata !{metadata !"double", metadata !294}
!310 = metadata !{i32 249, i32 0, metadata !175, null}
!311 = metadata !{i32 249, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !175, i32 249, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!313 = metadata !{i32 249, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !312, i32 249, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!315 = metadata !{i32 249, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !314, i32 249, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!317 = metadata !{i32 249, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !316, i32 249, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!319 = metadata !{i32 249, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !316, i32 249, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!321 = metadata !{i32 249, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 249, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!323 = metadata !{i32 249, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !316, i32 249, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!325 = metadata !{i32 249, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !327, i32 249, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!327 = metadata !{i32 786443, metadata !1, metadata !324, i32 249, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!328 = metadata !{i32 249, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !326, i32 249, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!330 = metadata !{i32 249, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !327, i32 249, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!332 = metadata !{i32 256, i32 0, metadata !182, null}
!333 = metadata !{i32 256, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !182, i32 256, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!335 = metadata !{i16 0}
!336 = metadata !{i32 256, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 256, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!338 = metadata !{i32 256, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !337, i32 256, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!340 = metadata !{i32 256, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 256, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!342 = metadata !{i32 256, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !339, i32 256, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!344 = metadata !{i32 256, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 256, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!346 = metadata !{metadata !"short", metadata !294}
!347 = metadata !{i32 256, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !339, i32 256, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!349 = metadata !{i32 256, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !351, i32 256, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!351 = metadata !{i32 786443, metadata !1, metadata !348, i32 256, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!352 = metadata !{i32 256, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !350, i32 256, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!354 = metadata !{i32 256, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !351, i32 256, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!356 = metadata !{i32 264, i32 0, metadata !191, null}
!357 = metadata !{i32 264, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !191, i32 264, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!359 = metadata !{i32 264, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !358, i32 264, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!361 = metadata !{i32 264, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !360, i32 264, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!363 = metadata !{i32 264, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !362, i32 264, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!365 = metadata !{i32 264, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !362, i32 264, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!367 = metadata !{i32 264, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !366, i32 264, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!369 = metadata !{i32 264, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !362, i32 264, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!371 = metadata !{i32 264, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !373, i32 264, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!373 = metadata !{i32 786443, metadata !1, metadata !370, i32 264, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!374 = metadata !{i32 264, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !372, i32 264, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!376 = metadata !{i32 264, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !373, i32 264, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!378 = metadata !{i32 272, i32 0, metadata !198, null}
!379 = metadata !{i32 272, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !198, i32 272, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!381 = metadata !{i64 0}
!382 = metadata !{i32 272, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !380, i32 272, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!384 = metadata !{i32 272, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !383, i32 272, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!386 = metadata !{i32 272, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !385, i32 272, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!388 = metadata !{i32 272, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !385, i32 272, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!390 = metadata !{i32 272, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !389, i32 272, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!392 = metadata !{metadata !"long", metadata !294}
!393 = metadata !{i32 272, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !385, i32 272, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!395 = metadata !{i32 272, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !397, i32 272, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!397 = metadata !{i32 786443, metadata !1, metadata !394, i32 272, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!398 = metadata !{i32 272, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !396, i32 272, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!400 = metadata !{i32 272, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !397, i32 272, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!402 = metadata !{i32 279, i32 0, metadata !207, null}
!403 = metadata !{i32 279, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !207, i32 279, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!405 = metadata !{double 0.000000e+00}
!406 = metadata !{i32 279, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !404, i32 279, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!408 = metadata !{i32 279, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !407, i32 279, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!410 = metadata !{i32 279, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 279, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!412 = metadata !{i32 279, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !409, i32 279, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!414 = metadata !{i32 279, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !413, i32 279, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!416 = metadata !{i32 279, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !409, i32 279, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!418 = metadata !{i32 279, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 279, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 279, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!421 = metadata !{i32 279, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !419, i32 279, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!423 = metadata !{i32 279, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !420, i32 279, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!425 = metadata !{i32 286, i32 0, metadata !214, null}
!426 = metadata !{i32 286, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !214, i32 286, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!428 = metadata !{float 0.000000e+00}
!429 = metadata !{i32 286, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !427, i32 286, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!431 = metadata !{i32 286, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !430, i32 286, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!433 = metadata !{i32 286, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 286, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!435 = metadata !{i32 286, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !432, i32 286, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!437 = metadata !{i32 286, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 286, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!439 = metadata !{metadata !"float", metadata !294}
!440 = metadata !{i32 286, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !432, i32 286, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!442 = metadata !{i32 286, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !444, i32 286, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!444 = metadata !{i32 786443, metadata !1, metadata !441, i32 286, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!445 = metadata !{i32 286, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !443, i32 286, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!447 = metadata !{i32 286, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !444, i32 286, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!449 = metadata !{i32 294, i32 0, metadata !223, null}
!450 = metadata !{i32 294, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !223, i32 294, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!452 = metadata !{i32 294, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 294, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!454 = metadata !{i32 294, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !453, i32 294, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!456 = metadata !{i32 294, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !455, i32 294, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!458 = metadata !{i32 294, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !455, i32 294, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!460 = metadata !{i32 294, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !459, i32 294, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!462 = metadata !{i32 294, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !455, i32 294, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!464 = metadata !{i32 294, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 294, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!466 = metadata !{i32 786443, metadata !1, metadata !463, i32 294, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!467 = metadata !{i32 294, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !465, i32 294, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!469 = metadata !{i32 294, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !466, i32 294, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!471 = metadata !{i32 302, i32 0, metadata !230, null}
!472 = metadata !{i32 302, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !230, i32 302, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!474 = metadata !{x86_fp80 0xK00000000000000000000}
!475 = metadata !{i32 302, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 302, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!477 = metadata !{i32 302, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !476, i32 302, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!479 = metadata !{i32 302, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !478, i32 302, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!481 = metadata !{i32 302, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !478, i32 302, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!483 = metadata !{i32 302, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !482, i32 302, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!485 = metadata !{metadata !"long double", metadata !294}
!486 = metadata !{i32 302, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !478, i32 302, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!488 = metadata !{i32 302, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 302, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!490 = metadata !{i32 786443, metadata !1, metadata !487, i32 302, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!491 = metadata !{i32 302, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !489, i32 302, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!493 = metadata !{i32 302, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !490, i32 302, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!495 = metadata !{i32 312, i32 0, metadata !239, null}
!496 = metadata !{i32 312, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !239, i32 312, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!498 = metadata !{i32 312, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !497, i32 312, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!500 = metadata !{i32 312, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !499, i32 312, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!502 = metadata !{i32 312, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!504 = metadata !{i32 312, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!506 = metadata !{i32 312, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !505, i32 312, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!508 = metadata !{i32 312, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!510 = metadata !{i32 312, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 312, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!512 = metadata !{i32 786443, metadata !1, metadata !509, i32 312, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!513 = metadata !{i32 312, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !511, i32 312, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!515 = metadata !{i32 312, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !512, i32 312, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!517 = metadata !{i32 318, i32 0, metadata !163, null}
!518 = metadata !{i32 319, i32 0, metadata !163, null}
!519 = metadata !{i32 323, i32 0, metadata !74, null}
!520 = metadata !{i32 349, i32 0, metadata !74, null}
!521 = metadata !{i32 351, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !523, i32 351, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!523 = metadata !{i32 786443, metadata !1, metadata !74, i32 350, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!524 = metadata !{i32 353, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !522, i32 352, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c]
!526 = metadata !{i32 357, i32 0, metadata !74, null}
!527 = metadata !{i32 180, i32 0, metadata !63, null}
!528 = metadata !{i32 181, i32 0, metadata !63, null}
!529 = metadata !{i32 182, i32 0, metadata !63, null}
!530 = metadata !{i32 183, i32 0, metadata !63, null}
!531 = metadata !{i32 184, i32 0, metadata !63, null}
!532 = metadata !{i32 185, i32 0, metadata !63, null}
!533 = metadata !{i32 186, i32 0, metadata !63, null}
!534 = metadata !{i32 188, i32 0, metadata !63, null}
