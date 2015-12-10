; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"PUGH_ReductionNorm1: Unknown variable type\00", align 1
@.str3 = private unnamed_addr constant [61 x i8] c"$Id: ReductionNorm1.c,v 1.4 2001/05/14 17:06:20 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c() #0 {
entry:
  ret i8* getelementptr inbounds ([61 x i8]* @.str3, i64 0, i64 0), !dbg !254
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionNorm1Arrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
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
  %call = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm1) #5, !dbg !265
  ret i32 %call, !dbg !265
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @PUGH_ReductionNorm1(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture %intypes, i8** nocapture %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
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
  %cmp2041 = icmp sgt i32 %num_inarrays, 0, !dbg !279
  br i1 %cmp2041, label %for.body.lr.ph, label %for.end1206, !dbg !279

for.body.lr.ph:                                   ; preds = %entry
  %cmp42035 = icmp sgt i32 %num_outvals, 0, !dbg !280
  %0 = bitcast i32* %iterator to i8*, !dbg !282
  %1 = bitcast i32* %from to i8*, !dbg !282
  %conv = sext i32 %num_dims to i64, !dbg !282
  %mul14 = shl nsw i64 %conv, 2, !dbg !282
  %cmp162015 = icmp sgt i32 %num_dims, 1, !dbg !284
  %arrayidx47 = getelementptr inbounds i32* %iterator, i64 1, !dbg !287
  %arrayidx50 = getelementptr inbounds i32* %to, i64 1, !dbg !287
  %cmp562025 = icmp sgt i32 %num_dims, 2, !dbg !289
  br label %for.body, !dbg !279

for.body:                                         ; preds = %for.body.lr.ph, %for.inc1204
  %indvars.iv2235 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next2236, %for.inc1204 ]
  %total_outvals.02043 = phi i32 [ 0, %for.body.lr.ph ], [ %total_outvals.11, %for.inc1204 ]
  %arrayidx = getelementptr inbounds i32* %intypes, i64 %indvars.iv2235, !dbg !292
  %2 = load i32* %arrayidx, align 4, !dbg !292, !tbaa !293
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb94
    i32 3, label %sw.bb214
    i32 4, label %sw.bb344
    i32 5, label %sw.bb469
    i32 6, label %sw.bb594
    i32 7, label %sw.bb718
    i32 8, label %sw.bb843
    i32 9, label %sw.bb967
    i32 10, label %sw.bb1092
  ], !dbg !292

sw.bb:                                            ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !169), !dbg !296
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !166), !dbg !280
  br i1 %cmp42035, label %for.cond7.preheader.lr.ph, label %for.inc1204, !dbg !280

for.cond7.preheader.lr.ph:                        ; preds = %sw.bb
  %arrayidx2 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !296
  %3 = load i8** %arrayidx2, align 8, !dbg !296, !tbaa !297
  %4 = sext i32 %total_outvals.02043 to i64
  br label %for.cond7.preheader, !dbg !280

for.cond7.preheader:                              ; preds = %while.end, %for.cond7.preheader.lr.ph
  %indvars.iv2232 = phi i64 [ %4, %for.cond7.preheader.lr.ph ], [ %indvars.iv.next2233, %while.end ]
  %typed_vdata.02038 = phi i8* [ %3, %for.cond7.preheader.lr.ph ], [ %incdec.ptr, %while.end ]
  %_j.02037 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %inc92, %while.end ]
  tail call void @llvm.dbg.value(metadata !298, i64 0, metadata !173), !dbg !282
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !282
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !167), !dbg !282
  br label %while.body, !dbg !282

while.body:                                       ; preds = %if.then, %for.body77, %for.cond74.loopexit, %for.cond7.preheader
  %typed_outval.0 = phi i8 [ 0, %for.cond7.preheader ], [ %typed_outval.1.lcssa, %for.cond74.loopexit ], [ %typed_outval.1.lcssa, %for.body77 ], [ %typed_outval.1.lcssa, %if.then ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !168), !dbg !300
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !161), !dbg !284
  br i1 %cmp162015, label %for.body18, label %for.end27, !dbg !284

for.body18:                                       ; preds = %for.body18, %while.body
  %indvars.iv2216 = phi i64 [ 1, %while.body ], [ %indvars.iv.next2217, %for.body18 ]
  %_vindex.12017 = phi i32 [ 0, %while.body ], [ %add24, %for.body18 ]
  %arrayidx20 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2216, !dbg !284
  %5 = load i32* %arrayidx20, align 4, !dbg !284, !tbaa !293
  %arrayidx22 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2216, !dbg !284
  %6 = load i32* %arrayidx22, align 4, !dbg !284, !tbaa !293
  %mul23 = mul nsw i32 %6, %5, !dbg !284
  %add24 = add nsw i32 %mul23, %_vindex.12017, !dbg !284
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !168), !dbg !284
  %indvars.iv.next2217 = add i64 %indvars.iv2216, 1, !dbg !284
  %lftr.wideiv2218 = trunc i64 %indvars.iv.next2217 to i32, !dbg !284
  %exitcond2219 = icmp eq i32 %lftr.wideiv2218, %num_dims, !dbg !284
  br i1 %exitcond2219, label %for.cond15.for.end27_crit_edge, label %for.body18, !dbg !284

for.cond15.for.end27_crit_edge:                   ; preds = %for.body18
  %phitmp2245 = sext i32 %add24 to i64, !dbg !284
  br label %for.end27, !dbg !284

for.end27:                                        ; preds = %for.cond15.for.end27_crit_edge, %while.body
  %_vindex.1.lcssa = phi i64 [ %phitmp2245, %for.cond15.for.end27_crit_edge ], [ 0, %while.body ]
  %7 = load i32* %from, align 4, !dbg !301, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !161), !dbg !301
  %8 = load i32* %to, align 4, !dbg !301, !tbaa !293
  %cmp312020 = icmp slt i32 %7, %8, !dbg !301
  br i1 %cmp312020, label %for.body33.lr.ph, label %for.end43, !dbg !301

for.body33.lr.ph:                                 ; preds = %for.end27
  %9 = sext i32 %7 to i64
  br label %for.body33, !dbg !301

for.body33:                                       ; preds = %for.body33.lr.ph, %for.body33
  %indvars.iv2220 = phi i64 [ %9, %for.body33.lr.ph ], [ %indvars.iv.next2221, %for.body33 ]
  %typed_outval.12022 = phi i8 [ %typed_outval.0, %for.body33.lr.ph ], [ %add39, %for.body33 ]
  %10 = add nsw i64 %indvars.iv2220, %_vindex.1.lcssa, !dbg !303
  %arrayidx36 = getelementptr inbounds i8* %typed_vdata.02038, i64 %10, !dbg !303
  %11 = load i8* %arrayidx36, align 1, !dbg !303, !tbaa !294
  %add39 = add i8 %11, %typed_outval.12022, !dbg !303
  tail call void @llvm.dbg.value(metadata !{i8 %add39}, i64 0, metadata !173), !dbg !303
  %indvars.iv.next2221 = add i64 %indvars.iv2220, 1, !dbg !301
  %12 = trunc i64 %indvars.iv.next2221 to i32, !dbg !301
  %cmp31 = icmp slt i32 %12, %8, !dbg !301
  br i1 %cmp31, label %for.body33, label %for.end43, !dbg !301

for.end43:                                        ; preds = %for.body33, %for.end27
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %for.end27 ], [ %add39, %for.body33 ]
  br i1 %cmp162015, label %if.then, label %while.end, !dbg !300

if.then:                                          ; preds = %for.end43
  %13 = load i32* %arrayidx47, align 4, !dbg !287, !tbaa !293
  %inc48 = add nsw i32 %13, 1, !dbg !287
  store i32 %inc48, i32* %arrayidx47, align 4, !dbg !287, !tbaa !293
  %14 = load i32* %arrayidx50, align 4, !dbg !287, !tbaa !293
  %cmp51 = icmp slt i32 %inc48, %14, !dbg !287
  br i1 %cmp51, label %while.body, label %for.cond55.preheader, !dbg !287

for.cond55.preheader:                             ; preds = %if.then
  br i1 %cmp562025, label %for.body58, label %while.end, !dbg !289

for.cond55:                                       ; preds = %for.body58
  %inc68 = add nsw i32 %_dim.12026, 1, !dbg !289
  %15 = trunc i64 %indvars.iv.next2225 to i32, !dbg !289
  %cmp56 = icmp slt i32 %15, %num_dims, !dbg !289
  br i1 %cmp56, label %for.body58, label %while.end, !dbg !289

for.body58:                                       ; preds = %for.cond55.preheader, %for.cond55
  %indvars.iv2224 = phi i64 [ %indvars.iv.next2225, %for.cond55 ], [ 2, %for.cond55.preheader ]
  %_dim.12026 = phi i32 [ %inc68, %for.cond55 ], [ 2, %for.cond55.preheader ]
  %arrayidx60 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2224, !dbg !305
  %16 = load i32* %arrayidx60, align 4, !dbg !305, !tbaa !293
  %inc61 = add nsw i32 %16, 1, !dbg !305
  store i32 %inc61, i32* %arrayidx60, align 4, !dbg !305, !tbaa !293
  %arrayidx63 = getelementptr inbounds i32* %to, i64 %indvars.iv2224, !dbg !305
  %17 = load i32* %arrayidx63, align 4, !dbg !305, !tbaa !293
  %cmp64 = icmp slt i32 %inc61, %17, !dbg !305
  %indvars.iv.next2225 = add i64 %indvars.iv2224, 1, !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %inc68}, i64 0, metadata !167), !dbg !289
  br i1 %cmp64, label %for.cond74.loopexit, label %for.cond55, !dbg !305

for.cond74.loopexit:                              ; preds = %for.body58
  %cmp752028 = icmp sgt i32 %_dim.12026, 0, !dbg !307
  br i1 %cmp752028, label %for.body77.lr.ph, label %while.body, !dbg !307

for.body77.lr.ph:                                 ; preds = %for.cond74.loopexit
  %18 = sext i32 %_dim.12026 to i64
  br label %for.body77, !dbg !307

for.body77:                                       ; preds = %for.body77.lr.ph, %for.body77
  %indvars.iv2226 = phi i64 [ %18, %for.body77.lr.ph ], [ %indvars.iv.next2227, %for.body77 ]
  %indvars.iv.next2227 = add i64 %indvars.iv2226, -1, !dbg !307
  %arrayidx79 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2227, !dbg !307
  %19 = load i32* %arrayidx79, align 4, !dbg !307, !tbaa !293
  %arrayidx81 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2227, !dbg !307
  store i32 %19, i32* %arrayidx81, align 4, !dbg !307, !tbaa !293
  %20 = trunc i64 %indvars.iv.next2227 to i32, !dbg !307
  %cmp75 = icmp sgt i32 %20, 0, !dbg !307
  br i1 %cmp75, label %for.body77, label %while.body, !dbg !307

while.end:                                        ; preds = %for.end43, %for.cond55, %for.cond55.preheader
  %conv87 = uitofp i8 %typed_outval.1.lcssa to double, !dbg !282
  %indvars.iv.next2233 = add i64 %indvars.iv2232, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %205}, i64 0, metadata !92), !dbg !282
  %arrayidx90 = getelementptr inbounds double* %outvals, i64 %indvars.iv2232, !dbg !282
  store double %conv87, double* %arrayidx90, align 8, !dbg !282, !tbaa !309
  %inc92 = add nsw i32 %_j.02037, 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !166), !dbg !280
  %incdec.ptr = getelementptr inbounds i8* %typed_vdata.02038, i64 1, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !169), !dbg !280
  %exitcond2234 = icmp eq i32 %inc92, %num_outvals, !dbg !280
  br i1 %exitcond2234, label %for.cond3.for.inc1204.loopexit2034_crit_edge, label %for.cond7.preheader, !dbg !280

sw.bb94:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i32* %22}, i64 0, metadata !179), !dbg !310
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !176), !dbg !311
  br i1 %cmp42035, label %for.cond108.preheader.lr.ph, label %for.inc1204, !dbg !311

for.cond108.preheader.lr.ph:                      ; preds = %sw.bb94
  %arrayidx101 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !310
  %21 = load i8** %arrayidx101, align 8, !dbg !310, !tbaa !297
  %22 = bitcast i8* %21 to i32*, !dbg !310
  %23 = sext i32 %total_outvals.02043 to i64
  br label %for.cond108.preheader, !dbg !311

for.cond108.preheader:                            ; preds = %while.end205, %for.cond108.preheader.lr.ph
  %indvars.iv2213 = phi i64 [ %23, %for.cond108.preheader.lr.ph ], [ %indvars.iv.next2214, %while.end205 ]
  %typed_vdata99.02013 = phi i32* [ %22, %for.cond108.preheader.lr.ph ], [ %incdec.ptr212, %while.end205 ]
  %_j96.02012 = phi i32 [ 0, %for.cond108.preheader.lr.ph ], [ %inc211, %while.end205 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !180), !dbg !313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !313
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !177), !dbg !313
  br label %while.body123, !dbg !313

while.body123:                                    ; preds = %if.then160, %for.body194, %for.cond191.loopexit, %for.cond108.preheader
  %typed_outval102.0 = phi i32 [ 0, %for.cond108.preheader ], [ %typed_outval102.1.lcssa, %for.cond191.loopexit ], [ %typed_outval102.1.lcssa, %for.body194 ], [ %typed_outval102.1.lcssa, %if.then160 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !178), !dbg !315
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !174), !dbg !317
  br i1 %cmp162015, label %for.body127, label %for.end136, !dbg !317

for.body127:                                      ; preds = %for.body127, %while.body123
  %indvars.iv2197 = phi i64 [ 1, %while.body123 ], [ %indvars.iv.next2198, %for.body127 ]
  %_vindex98.11992 = phi i32 [ 0, %while.body123 ], [ %add133, %for.body127 ]
  %arrayidx129 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2197, !dbg !317
  %24 = load i32* %arrayidx129, align 4, !dbg !317, !tbaa !293
  %arrayidx131 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2197, !dbg !317
  %25 = load i32* %arrayidx131, align 4, !dbg !317, !tbaa !293
  %mul132 = mul nsw i32 %25, %24, !dbg !317
  %add133 = add nsw i32 %mul132, %_vindex98.11992, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %add133}, i64 0, metadata !178), !dbg !317
  %indvars.iv.next2198 = add i64 %indvars.iv2197, 1, !dbg !317
  %lftr.wideiv2199 = trunc i64 %indvars.iv.next2198 to i32, !dbg !317
  %exitcond2200 = icmp eq i32 %lftr.wideiv2199, %num_dims, !dbg !317
  br i1 %exitcond2200, label %for.cond124.for.end136_crit_edge, label %for.body127, !dbg !317

for.cond124.for.end136_crit_edge:                 ; preds = %for.body127
  %phitmp2244 = sext i32 %add133 to i64, !dbg !317
  br label %for.end136, !dbg !317

for.end136:                                       ; preds = %for.cond124.for.end136_crit_edge, %while.body123
  %_vindex98.1.lcssa = phi i64 [ %phitmp2244, %for.cond124.for.end136_crit_edge ], [ 0, %while.body123 ]
  %26 = load i32* %from, align 4, !dbg !319, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !174), !dbg !319
  %27 = load i32* %to, align 4, !dbg !319, !tbaa !293
  %cmp1401995 = icmp slt i32 %26, %27, !dbg !319
  br i1 %cmp1401995, label %for.body142.lr.ph, label %for.end157, !dbg !319

for.body142.lr.ph:                                ; preds = %for.end136
  %28 = sext i32 %26 to i64
  br label %for.body142, !dbg !319

for.body142:                                      ; preds = %for.body142.lr.ph, %for.body142
  %indvars.iv2201 = phi i64 [ %28, %for.body142.lr.ph ], [ %indvars.iv.next2202, %for.body142 ]
  %typed_outval102.11997 = phi i32 [ %typed_outval102.0, %for.body142.lr.ph ], [ %add154, %for.body142 ]
  %29 = add nsw i64 %indvars.iv2201, %_vindex98.1.lcssa, !dbg !321
  %arrayidx145 = getelementptr inbounds i32* %typed_vdata99.02013, i64 %29, !dbg !321
  %30 = load i32* %arrayidx145, align 4, !dbg !321, !tbaa !293
  %cmp146 = icmp slt i32 %30, 0, !dbg !321
  %sub = sub nsw i32 0, %30, !dbg !321
  %cond = select i1 %cmp146, i32 %sub, i32 %30, !dbg !321
  %add154 = add nsw i32 %cond, %typed_outval102.11997, !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %add154}, i64 0, metadata !180), !dbg !321
  %indvars.iv.next2202 = add i64 %indvars.iv2201, 1, !dbg !319
  %31 = trunc i64 %indvars.iv.next2202 to i32, !dbg !319
  %cmp140 = icmp slt i32 %31, %27, !dbg !319
  br i1 %cmp140, label %for.body142, label %for.end157, !dbg !319

for.end157:                                       ; preds = %for.body142, %for.end136
  %typed_outval102.1.lcssa = phi i32 [ %typed_outval102.0, %for.end136 ], [ %add154, %for.body142 ]
  br i1 %cmp162015, label %if.then160, label %while.end205, !dbg !315

if.then160:                                       ; preds = %for.end157
  %32 = load i32* %arrayidx47, align 4, !dbg !323, !tbaa !293
  %inc163 = add nsw i32 %32, 1, !dbg !323
  store i32 %inc163, i32* %arrayidx47, align 4, !dbg !323, !tbaa !293
  %33 = load i32* %arrayidx50, align 4, !dbg !323, !tbaa !293
  %cmp166 = icmp slt i32 %inc163, %33, !dbg !323
  br i1 %cmp166, label %while.body123, label %for.cond170.preheader, !dbg !323

for.cond170.preheader:                            ; preds = %if.then160
  br i1 %cmp562025, label %for.body173, label %while.end205, !dbg !325

for.cond170:                                      ; preds = %for.body173
  %inc184 = add nsw i32 %_dim97.12001, 1, !dbg !325
  %34 = trunc i64 %indvars.iv.next2206 to i32, !dbg !325
  %cmp171 = icmp slt i32 %34, %num_dims, !dbg !325
  br i1 %cmp171, label %for.body173, label %while.end205, !dbg !325

for.body173:                                      ; preds = %for.cond170.preheader, %for.cond170
  %indvars.iv2205 = phi i64 [ %indvars.iv.next2206, %for.cond170 ], [ 2, %for.cond170.preheader ]
  %_dim97.12001 = phi i32 [ %inc184, %for.cond170 ], [ 2, %for.cond170.preheader ]
  %arrayidx175 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2205, !dbg !328
  %35 = load i32* %arrayidx175, align 4, !dbg !328, !tbaa !293
  %inc176 = add nsw i32 %35, 1, !dbg !328
  store i32 %inc176, i32* %arrayidx175, align 4, !dbg !328, !tbaa !293
  %arrayidx178 = getelementptr inbounds i32* %to, i64 %indvars.iv2205, !dbg !328
  %36 = load i32* %arrayidx178, align 4, !dbg !328, !tbaa !293
  %cmp179 = icmp slt i32 %inc176, %36, !dbg !328
  %indvars.iv.next2206 = add i64 %indvars.iv2205, 1, !dbg !325
  tail call void @llvm.dbg.value(metadata !{i32 %inc184}, i64 0, metadata !177), !dbg !325
  br i1 %cmp179, label %for.cond191.loopexit, label %for.cond170, !dbg !328

for.cond191.loopexit:                             ; preds = %for.body173
  %cmp1922003 = icmp sgt i32 %_dim97.12001, 0, !dbg !330
  br i1 %cmp1922003, label %for.body194.lr.ph, label %while.body123, !dbg !330

for.body194.lr.ph:                                ; preds = %for.cond191.loopexit
  %37 = sext i32 %_dim97.12001 to i64
  br label %for.body194, !dbg !330

for.body194:                                      ; preds = %for.body194.lr.ph, %for.body194
  %indvars.iv2207 = phi i64 [ %37, %for.body194.lr.ph ], [ %indvars.iv.next2208, %for.body194 ]
  %indvars.iv.next2208 = add i64 %indvars.iv2207, -1, !dbg !330
  %arrayidx196 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2208, !dbg !330
  %38 = load i32* %arrayidx196, align 4, !dbg !330, !tbaa !293
  %arrayidx198 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2208, !dbg !330
  store i32 %38, i32* %arrayidx198, align 4, !dbg !330, !tbaa !293
  %39 = trunc i64 %indvars.iv.next2208 to i32, !dbg !330
  %cmp192 = icmp sgt i32 %39, 0, !dbg !330
  br i1 %cmp192, label %for.body194, label %while.body123, !dbg !330

while.end205:                                     ; preds = %for.end157, %for.cond170, %for.cond170.preheader
  %conv206 = sitofp i32 %typed_outval102.1.lcssa to double, !dbg !313
  %indvars.iv.next2214 = add i64 %indvars.iv2213, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %204}, i64 0, metadata !92), !dbg !313
  %arrayidx209 = getelementptr inbounds double* %outvals, i64 %indvars.iv2213, !dbg !313
  store double %conv206, double* %arrayidx209, align 8, !dbg !313, !tbaa !309
  %inc211 = add nsw i32 %_j96.02012, 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32 %inc211}, i64 0, metadata !176), !dbg !311
  %incdec.ptr212 = getelementptr inbounds i32* %typed_vdata99.02013, i64 1, !dbg !311
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr212}, i64 0, metadata !179), !dbg !311
  %exitcond2215 = icmp eq i32 %inc211, %num_outvals, !dbg !311
  br i1 %exitcond2215, label %for.cond103.for.inc1204.loopexit2009_crit_edge, label %for.cond108.preheader, !dbg !311

sw.bb214:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i16* %41}, i64 0, metadata !186), !dbg !332
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !333
  br i1 %cmp42035, label %for.cond228.preheader.lr.ph, label %for.inc1204, !dbg !333

for.cond228.preheader.lr.ph:                      ; preds = %sw.bb214
  %arrayidx221 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !332
  %40 = load i8** %arrayidx221, align 8, !dbg !332, !tbaa !297
  %41 = bitcast i8* %40 to i16*, !dbg !332
  %42 = sext i32 %total_outvals.02043 to i64
  br label %for.cond228.preheader, !dbg !333

for.cond228.preheader:                            ; preds = %while.end335, %for.cond228.preheader.lr.ph
  %indvars.iv2194 = phi i64 [ %42, %for.cond228.preheader.lr.ph ], [ %indvars.iv.next2195, %while.end335 ]
  %typed_vdata219.01988 = phi i16* [ %41, %for.cond228.preheader.lr.ph ], [ %incdec.ptr342, %while.end335 ]
  %_j216.01987 = phi i32 [ 0, %for.cond228.preheader.lr.ph ], [ %inc341, %while.end335 ]
  tail call void @llvm.dbg.value(metadata !335, i64 0, metadata !189), !dbg !336
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !336
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !184), !dbg !336
  br label %while.body243, !dbg !336

while.body243:                                    ; preds = %if.then290, %for.body324, %for.cond321.loopexit, %for.cond228.preheader
  %typed_outval222.0 = phi i16 [ 0, %for.cond228.preheader ], [ %typed_outval222.1.lcssa, %for.cond321.loopexit ], [ %typed_outval222.1.lcssa, %for.body324 ], [ %typed_outval222.1.lcssa, %if.then290 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !185), !dbg !338
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !181), !dbg !340
  br i1 %cmp162015, label %for.body247, label %for.end256, !dbg !340

for.body247:                                      ; preds = %for.body247, %while.body243
  %indvars.iv2178 = phi i64 [ 1, %while.body243 ], [ %indvars.iv.next2179, %for.body247 ]
  %_vindex218.11967 = phi i32 [ 0, %while.body243 ], [ %add253, %for.body247 ]
  %arrayidx249 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2178, !dbg !340
  %43 = load i32* %arrayidx249, align 4, !dbg !340, !tbaa !293
  %arrayidx251 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2178, !dbg !340
  %44 = load i32* %arrayidx251, align 4, !dbg !340, !tbaa !293
  %mul252 = mul nsw i32 %44, %43, !dbg !340
  %add253 = add nsw i32 %mul252, %_vindex218.11967, !dbg !340
  tail call void @llvm.dbg.value(metadata !{i32 %add253}, i64 0, metadata !185), !dbg !340
  %indvars.iv.next2179 = add i64 %indvars.iv2178, 1, !dbg !340
  %lftr.wideiv2180 = trunc i64 %indvars.iv.next2179 to i32, !dbg !340
  %exitcond2181 = icmp eq i32 %lftr.wideiv2180, %num_dims, !dbg !340
  br i1 %exitcond2181, label %for.cond244.for.end256_crit_edge, label %for.body247, !dbg !340

for.cond244.for.end256_crit_edge:                 ; preds = %for.body247
  %phitmp2243 = sext i32 %add253 to i64, !dbg !340
  br label %for.end256, !dbg !340

for.end256:                                       ; preds = %for.cond244.for.end256_crit_edge, %while.body243
  %_vindex218.1.lcssa = phi i64 [ %phitmp2243, %for.cond244.for.end256_crit_edge ], [ 0, %while.body243 ]
  %45 = load i32* %from, align 4, !dbg !342, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !181), !dbg !342
  %46 = load i32* %to, align 4, !dbg !342, !tbaa !293
  %cmp2601970 = icmp slt i32 %45, %46, !dbg !342
  br i1 %cmp2601970, label %for.body262.lr.ph, label %for.end287, !dbg !342

for.body262.lr.ph:                                ; preds = %for.end256
  %47 = sext i32 %45 to i64
  br label %for.body262, !dbg !342

for.body262:                                      ; preds = %for.body262.lr.ph, %for.body262
  %indvars.iv2182 = phi i64 [ %47, %for.body262.lr.ph ], [ %indvars.iv.next2183, %for.body262 ]
  %typed_outval222.11972 = phi i16 [ %typed_outval222.0, %for.body262.lr.ph ], [ %add283, %for.body262 ]
  %48 = add nsw i64 %indvars.iv2182, %_vindex218.1.lcssa, !dbg !344
  %arrayidx265 = getelementptr inbounds i16* %typed_vdata219.01988, i64 %48, !dbg !344
  %49 = load i16* %arrayidx265, align 2, !dbg !344, !tbaa !346
  %cmp267 = icmp slt i16 %49, 0, !dbg !344
  %sub274 = sub i16 0, %49, !dbg !344
  %cond281 = select i1 %cmp267, i16 %sub274, i16 %49, !dbg !344
  %add283 = add i16 %cond281, %typed_outval222.11972, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i16 %add283}, i64 0, metadata !189), !dbg !344
  %indvars.iv.next2183 = add i64 %indvars.iv2182, 1, !dbg !342
  %50 = trunc i64 %indvars.iv.next2183 to i32, !dbg !342
  %cmp260 = icmp slt i32 %50, %46, !dbg !342
  br i1 %cmp260, label %for.body262, label %for.end287, !dbg !342

for.end287:                                       ; preds = %for.body262, %for.end256
  %typed_outval222.1.lcssa = phi i16 [ %typed_outval222.0, %for.end256 ], [ %add283, %for.body262 ]
  br i1 %cmp162015, label %if.then290, label %while.end335, !dbg !338

if.then290:                                       ; preds = %for.end287
  %51 = load i32* %arrayidx47, align 4, !dbg !347, !tbaa !293
  %inc293 = add nsw i32 %51, 1, !dbg !347
  store i32 %inc293, i32* %arrayidx47, align 4, !dbg !347, !tbaa !293
  %52 = load i32* %arrayidx50, align 4, !dbg !347, !tbaa !293
  %cmp296 = icmp slt i32 %inc293, %52, !dbg !347
  br i1 %cmp296, label %while.body243, label %for.cond300.preheader, !dbg !347

for.cond300.preheader:                            ; preds = %if.then290
  br i1 %cmp562025, label %for.body303, label %while.end335, !dbg !349

for.cond300:                                      ; preds = %for.body303
  %inc314 = add nsw i32 %_dim217.11976, 1, !dbg !349
  %53 = trunc i64 %indvars.iv.next2187 to i32, !dbg !349
  %cmp301 = icmp slt i32 %53, %num_dims, !dbg !349
  br i1 %cmp301, label %for.body303, label %while.end335, !dbg !349

for.body303:                                      ; preds = %for.cond300.preheader, %for.cond300
  %indvars.iv2186 = phi i64 [ %indvars.iv.next2187, %for.cond300 ], [ 2, %for.cond300.preheader ]
  %_dim217.11976 = phi i32 [ %inc314, %for.cond300 ], [ 2, %for.cond300.preheader ]
  %arrayidx305 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2186, !dbg !352
  %54 = load i32* %arrayidx305, align 4, !dbg !352, !tbaa !293
  %inc306 = add nsw i32 %54, 1, !dbg !352
  store i32 %inc306, i32* %arrayidx305, align 4, !dbg !352, !tbaa !293
  %arrayidx308 = getelementptr inbounds i32* %to, i64 %indvars.iv2186, !dbg !352
  %55 = load i32* %arrayidx308, align 4, !dbg !352, !tbaa !293
  %cmp309 = icmp slt i32 %inc306, %55, !dbg !352
  %indvars.iv.next2187 = add i64 %indvars.iv2186, 1, !dbg !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc314}, i64 0, metadata !184), !dbg !349
  br i1 %cmp309, label %for.cond321.loopexit, label %for.cond300, !dbg !352

for.cond321.loopexit:                             ; preds = %for.body303
  %cmp3221978 = icmp sgt i32 %_dim217.11976, 0, !dbg !354
  br i1 %cmp3221978, label %for.body324.lr.ph, label %while.body243, !dbg !354

for.body324.lr.ph:                                ; preds = %for.cond321.loopexit
  %56 = sext i32 %_dim217.11976 to i64
  br label %for.body324, !dbg !354

for.body324:                                      ; preds = %for.body324.lr.ph, %for.body324
  %indvars.iv2188 = phi i64 [ %56, %for.body324.lr.ph ], [ %indvars.iv.next2189, %for.body324 ]
  %indvars.iv.next2189 = add i64 %indvars.iv2188, -1, !dbg !354
  %arrayidx326 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2189, !dbg !354
  %57 = load i32* %arrayidx326, align 4, !dbg !354, !tbaa !293
  %arrayidx328 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2189, !dbg !354
  store i32 %57, i32* %arrayidx328, align 4, !dbg !354, !tbaa !293
  %58 = trunc i64 %indvars.iv.next2189 to i32, !dbg !354
  %cmp322 = icmp sgt i32 %58, 0, !dbg !354
  br i1 %cmp322, label %for.body324, label %while.body243, !dbg !354

while.end335:                                     ; preds = %for.end287, %for.cond300, %for.cond300.preheader
  %conv336 = sitofp i16 %typed_outval222.1.lcssa to double, !dbg !336
  %indvars.iv.next2195 = add i64 %indvars.iv2194, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %203}, i64 0, metadata !92), !dbg !336
  %arrayidx339 = getelementptr inbounds double* %outvals, i64 %indvars.iv2194, !dbg !336
  store double %conv336, double* %arrayidx339, align 8, !dbg !336, !tbaa !309
  %inc341 = add nsw i32 %_j216.01987, 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %inc341}, i64 0, metadata !183), !dbg !333
  %incdec.ptr342 = getelementptr inbounds i16* %typed_vdata219.01988, i64 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i16* %incdec.ptr342}, i64 0, metadata !186), !dbg !333
  %exitcond2196 = icmp eq i32 %inc341, %num_outvals, !dbg !333
  br i1 %exitcond2196, label %for.cond223.for.inc1204.loopexit1984_crit_edge, label %for.cond228.preheader, !dbg !333

sw.bb344:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i32* %60}, i64 0, metadata !195), !dbg !356
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !192), !dbg !357
  br i1 %cmp42035, label %for.cond358.preheader.lr.ph, label %for.inc1204, !dbg !357

for.cond358.preheader.lr.ph:                      ; preds = %sw.bb344
  %arrayidx351 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !356
  %59 = load i8** %arrayidx351, align 8, !dbg !356, !tbaa !297
  %60 = bitcast i8* %59 to i32*, !dbg !356
  %61 = sext i32 %total_outvals.02043 to i64
  br label %for.cond358.preheader, !dbg !357

for.cond358.preheader:                            ; preds = %while.end460, %for.cond358.preheader.lr.ph
  %indvars.iv2175 = phi i64 [ %61, %for.cond358.preheader.lr.ph ], [ %indvars.iv.next2176, %while.end460 ]
  %typed_vdata349.01963 = phi i32* [ %60, %for.cond358.preheader.lr.ph ], [ %incdec.ptr467, %while.end460 ]
  %_j346.01962 = phi i32 [ 0, %for.cond358.preheader.lr.ph ], [ %inc466, %while.end460 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !196), !dbg !359
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !359
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !193), !dbg !359
  br label %while.body373, !dbg !359

while.body373:                                    ; preds = %if.then415, %for.body449, %for.cond446.loopexit, %for.cond358.preheader
  %typed_outval352.0 = phi i32 [ 0, %for.cond358.preheader ], [ %typed_outval352.1.lcssa, %for.cond446.loopexit ], [ %typed_outval352.1.lcssa, %for.body449 ], [ %typed_outval352.1.lcssa, %if.then415 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !194), !dbg !361
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !190), !dbg !363
  br i1 %cmp162015, label %for.body377, label %for.end386, !dbg !363

for.body377:                                      ; preds = %for.body377, %while.body373
  %indvars.iv2159 = phi i64 [ 1, %while.body373 ], [ %indvars.iv.next2160, %for.body377 ]
  %_vindex348.11942 = phi i32 [ 0, %while.body373 ], [ %add383, %for.body377 ]
  %arrayidx379 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2159, !dbg !363
  %62 = load i32* %arrayidx379, align 4, !dbg !363, !tbaa !293
  %arrayidx381 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2159, !dbg !363
  %63 = load i32* %arrayidx381, align 4, !dbg !363, !tbaa !293
  %mul382 = mul nsw i32 %63, %62, !dbg !363
  %add383 = add nsw i32 %mul382, %_vindex348.11942, !dbg !363
  tail call void @llvm.dbg.value(metadata !{i32 %add383}, i64 0, metadata !194), !dbg !363
  %indvars.iv.next2160 = add i64 %indvars.iv2159, 1, !dbg !363
  %lftr.wideiv2161 = trunc i64 %indvars.iv.next2160 to i32, !dbg !363
  %exitcond2162 = icmp eq i32 %lftr.wideiv2161, %num_dims, !dbg !363
  br i1 %exitcond2162, label %for.cond374.for.end386_crit_edge, label %for.body377, !dbg !363

for.cond374.for.end386_crit_edge:                 ; preds = %for.body377
  %phitmp2242 = sext i32 %add383 to i64, !dbg !363
  br label %for.end386, !dbg !363

for.end386:                                       ; preds = %for.cond374.for.end386_crit_edge, %while.body373
  %_vindex348.1.lcssa = phi i64 [ %phitmp2242, %for.cond374.for.end386_crit_edge ], [ 0, %while.body373 ]
  %64 = load i32* %from, align 4, !dbg !365, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %64}, i64 0, metadata !190), !dbg !365
  %65 = load i32* %to, align 4, !dbg !365, !tbaa !293
  %cmp3901945 = icmp slt i32 %64, %65, !dbg !365
  br i1 %cmp3901945, label %for.body392.lr.ph, label %for.end412, !dbg !365

for.body392.lr.ph:                                ; preds = %for.end386
  %66 = sext i32 %64 to i64
  br label %for.body392, !dbg !365

for.body392:                                      ; preds = %for.body392.lr.ph, %for.body392
  %indvars.iv2163 = phi i64 [ %66, %for.body392.lr.ph ], [ %indvars.iv.next2164, %for.body392 ]
  %typed_outval352.11947 = phi i32 [ %typed_outval352.0, %for.body392.lr.ph ], [ %add409, %for.body392 ]
  %67 = add nsw i64 %indvars.iv2163, %_vindex348.1.lcssa, !dbg !367
  %arrayidx395 = getelementptr inbounds i32* %typed_vdata349.01963, i64 %67, !dbg !367
  %68 = load i32* %arrayidx395, align 4, !dbg !367, !tbaa !293
  %cmp396 = icmp slt i32 %68, 0, !dbg !367
  %sub402 = sub nsw i32 0, %68, !dbg !367
  %cond408 = select i1 %cmp396, i32 %sub402, i32 %68, !dbg !367
  %add409 = add nsw i32 %cond408, %typed_outval352.11947, !dbg !367
  tail call void @llvm.dbg.value(metadata !{i32 %add409}, i64 0, metadata !196), !dbg !367
  %indvars.iv.next2164 = add i64 %indvars.iv2163, 1, !dbg !365
  %69 = trunc i64 %indvars.iv.next2164 to i32, !dbg !365
  %cmp390 = icmp slt i32 %69, %65, !dbg !365
  br i1 %cmp390, label %for.body392, label %for.end412, !dbg !365

for.end412:                                       ; preds = %for.body392, %for.end386
  %typed_outval352.1.lcssa = phi i32 [ %typed_outval352.0, %for.end386 ], [ %add409, %for.body392 ]
  br i1 %cmp162015, label %if.then415, label %while.end460, !dbg !361

if.then415:                                       ; preds = %for.end412
  %70 = load i32* %arrayidx47, align 4, !dbg !369, !tbaa !293
  %inc418 = add nsw i32 %70, 1, !dbg !369
  store i32 %inc418, i32* %arrayidx47, align 4, !dbg !369, !tbaa !293
  %71 = load i32* %arrayidx50, align 4, !dbg !369, !tbaa !293
  %cmp421 = icmp slt i32 %inc418, %71, !dbg !369
  br i1 %cmp421, label %while.body373, label %for.cond425.preheader, !dbg !369

for.cond425.preheader:                            ; preds = %if.then415
  br i1 %cmp562025, label %for.body428, label %while.end460, !dbg !371

for.cond425:                                      ; preds = %for.body428
  %inc439 = add nsw i32 %_dim347.11951, 1, !dbg !371
  %72 = trunc i64 %indvars.iv.next2168 to i32, !dbg !371
  %cmp426 = icmp slt i32 %72, %num_dims, !dbg !371
  br i1 %cmp426, label %for.body428, label %while.end460, !dbg !371

for.body428:                                      ; preds = %for.cond425.preheader, %for.cond425
  %indvars.iv2167 = phi i64 [ %indvars.iv.next2168, %for.cond425 ], [ 2, %for.cond425.preheader ]
  %_dim347.11951 = phi i32 [ %inc439, %for.cond425 ], [ 2, %for.cond425.preheader ]
  %arrayidx430 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2167, !dbg !374
  %73 = load i32* %arrayidx430, align 4, !dbg !374, !tbaa !293
  %inc431 = add nsw i32 %73, 1, !dbg !374
  store i32 %inc431, i32* %arrayidx430, align 4, !dbg !374, !tbaa !293
  %arrayidx433 = getelementptr inbounds i32* %to, i64 %indvars.iv2167, !dbg !374
  %74 = load i32* %arrayidx433, align 4, !dbg !374, !tbaa !293
  %cmp434 = icmp slt i32 %inc431, %74, !dbg !374
  %indvars.iv.next2168 = add i64 %indvars.iv2167, 1, !dbg !371
  tail call void @llvm.dbg.value(metadata !{i32 %inc439}, i64 0, metadata !193), !dbg !371
  br i1 %cmp434, label %for.cond446.loopexit, label %for.cond425, !dbg !374

for.cond446.loopexit:                             ; preds = %for.body428
  %cmp4471953 = icmp sgt i32 %_dim347.11951, 0, !dbg !376
  br i1 %cmp4471953, label %for.body449.lr.ph, label %while.body373, !dbg !376

for.body449.lr.ph:                                ; preds = %for.cond446.loopexit
  %75 = sext i32 %_dim347.11951 to i64
  br label %for.body449, !dbg !376

for.body449:                                      ; preds = %for.body449.lr.ph, %for.body449
  %indvars.iv2169 = phi i64 [ %75, %for.body449.lr.ph ], [ %indvars.iv.next2170, %for.body449 ]
  %indvars.iv.next2170 = add i64 %indvars.iv2169, -1, !dbg !376
  %arrayidx451 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2170, !dbg !376
  %76 = load i32* %arrayidx451, align 4, !dbg !376, !tbaa !293
  %arrayidx453 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2170, !dbg !376
  store i32 %76, i32* %arrayidx453, align 4, !dbg !376, !tbaa !293
  %77 = trunc i64 %indvars.iv.next2170 to i32, !dbg !376
  %cmp447 = icmp sgt i32 %77, 0, !dbg !376
  br i1 %cmp447, label %for.body449, label %while.body373, !dbg !376

while.end460:                                     ; preds = %for.end412, %for.cond425, %for.cond425.preheader
  %conv461 = sitofp i32 %typed_outval352.1.lcssa to double, !dbg !359
  %indvars.iv.next2176 = add i64 %indvars.iv2175, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %202}, i64 0, metadata !92), !dbg !359
  %arrayidx464 = getelementptr inbounds double* %outvals, i64 %indvars.iv2175, !dbg !359
  store double %conv461, double* %arrayidx464, align 8, !dbg !359, !tbaa !309
  %inc466 = add nsw i32 %_j346.01962, 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32 %inc466}, i64 0, metadata !192), !dbg !357
  %incdec.ptr467 = getelementptr inbounds i32* %typed_vdata349.01963, i64 1, !dbg !357
  tail call void @llvm.dbg.value(metadata !{i32* %incdec.ptr467}, i64 0, metadata !195), !dbg !357
  %exitcond2177 = icmp eq i32 %inc466, %num_outvals, !dbg !357
  br i1 %exitcond2177, label %for.cond353.for.inc1204.loopexit1959_crit_edge, label %for.cond358.preheader, !dbg !357

sw.bb469:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{i64* %79}, i64 0, metadata !202), !dbg !378
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !199), !dbg !379
  br i1 %cmp42035, label %for.cond483.preheader.lr.ph, label %for.inc1204, !dbg !379

for.cond483.preheader.lr.ph:                      ; preds = %sw.bb469
  %arrayidx476 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !378
  %78 = load i8** %arrayidx476, align 8, !dbg !378, !tbaa !297
  %79 = bitcast i8* %78 to i64*, !dbg !378
  %80 = sext i32 %total_outvals.02043 to i64
  br label %for.cond483.preheader, !dbg !379

for.cond483.preheader:                            ; preds = %while.end585, %for.cond483.preheader.lr.ph
  %indvars.iv2156 = phi i64 [ %80, %for.cond483.preheader.lr.ph ], [ %indvars.iv.next2157, %while.end585 ]
  %typed_vdata474.01938 = phi i64* [ %79, %for.cond483.preheader.lr.ph ], [ %incdec.ptr592, %while.end585 ]
  %_j471.01937 = phi i32 [ 0, %for.cond483.preheader.lr.ph ], [ %inc591, %while.end585 ]
  tail call void @llvm.dbg.value(metadata !381, i64 0, metadata !205), !dbg !382
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !382
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !200), !dbg !382
  br label %while.body498, !dbg !382

while.body498:                                    ; preds = %if.then540, %for.body574, %for.cond571.loopexit, %for.cond483.preheader
  %typed_outval477.0 = phi i64 [ 0, %for.cond483.preheader ], [ %typed_outval477.1.lcssa, %for.cond571.loopexit ], [ %typed_outval477.1.lcssa, %for.body574 ], [ %typed_outval477.1.lcssa, %if.then540 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !201), !dbg !384
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !197), !dbg !386
  br i1 %cmp162015, label %for.body502, label %for.end511, !dbg !386

for.body502:                                      ; preds = %for.body502, %while.body498
  %indvars.iv2140 = phi i64 [ 1, %while.body498 ], [ %indvars.iv.next2141, %for.body502 ]
  %_vindex473.11917 = phi i32 [ 0, %while.body498 ], [ %add508, %for.body502 ]
  %arrayidx504 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2140, !dbg !386
  %81 = load i32* %arrayidx504, align 4, !dbg !386, !tbaa !293
  %arrayidx506 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2140, !dbg !386
  %82 = load i32* %arrayidx506, align 4, !dbg !386, !tbaa !293
  %mul507 = mul nsw i32 %82, %81, !dbg !386
  %add508 = add nsw i32 %mul507, %_vindex473.11917, !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32 %add508}, i64 0, metadata !201), !dbg !386
  %indvars.iv.next2141 = add i64 %indvars.iv2140, 1, !dbg !386
  %lftr.wideiv2142 = trunc i64 %indvars.iv.next2141 to i32, !dbg !386
  %exitcond2143 = icmp eq i32 %lftr.wideiv2142, %num_dims, !dbg !386
  br i1 %exitcond2143, label %for.cond499.for.end511_crit_edge, label %for.body502, !dbg !386

for.cond499.for.end511_crit_edge:                 ; preds = %for.body502
  %phitmp2241 = sext i32 %add508 to i64, !dbg !386
  br label %for.end511, !dbg !386

for.end511:                                       ; preds = %for.cond499.for.end511_crit_edge, %while.body498
  %_vindex473.1.lcssa = phi i64 [ %phitmp2241, %for.cond499.for.end511_crit_edge ], [ 0, %while.body498 ]
  %83 = load i32* %from, align 4, !dbg !388, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %83}, i64 0, metadata !197), !dbg !388
  %84 = load i32* %to, align 4, !dbg !388, !tbaa !293
  %cmp5151920 = icmp slt i32 %83, %84, !dbg !388
  br i1 %cmp5151920, label %for.body517.lr.ph, label %for.end537, !dbg !388

for.body517.lr.ph:                                ; preds = %for.end511
  %85 = sext i32 %83 to i64
  br label %for.body517, !dbg !388

for.body517:                                      ; preds = %for.body517.lr.ph, %for.body517
  %indvars.iv2144 = phi i64 [ %85, %for.body517.lr.ph ], [ %indvars.iv.next2145, %for.body517 ]
  %typed_outval477.11922 = phi i64 [ %typed_outval477.0, %for.body517.lr.ph ], [ %add534, %for.body517 ]
  %86 = add nsw i64 %indvars.iv2144, %_vindex473.1.lcssa, !dbg !390
  %arrayidx520 = getelementptr inbounds i64* %typed_vdata474.01938, i64 %86, !dbg !390
  %87 = load i64* %arrayidx520, align 8, !dbg !390, !tbaa !392
  %cmp521 = icmp slt i64 %87, 0, !dbg !390
  %sub527 = sub nsw i64 0, %87, !dbg !390
  %cond533 = select i1 %cmp521, i64 %sub527, i64 %87, !dbg !390
  %add534 = add nsw i64 %cond533, %typed_outval477.11922, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i64 %add534}, i64 0, metadata !205), !dbg !390
  %indvars.iv.next2145 = add i64 %indvars.iv2144, 1, !dbg !388
  %88 = trunc i64 %indvars.iv.next2145 to i32, !dbg !388
  %cmp515 = icmp slt i32 %88, %84, !dbg !388
  br i1 %cmp515, label %for.body517, label %for.end537, !dbg !388

for.end537:                                       ; preds = %for.body517, %for.end511
  %typed_outval477.1.lcssa = phi i64 [ %typed_outval477.0, %for.end511 ], [ %add534, %for.body517 ]
  br i1 %cmp162015, label %if.then540, label %while.end585, !dbg !384

if.then540:                                       ; preds = %for.end537
  %89 = load i32* %arrayidx47, align 4, !dbg !393, !tbaa !293
  %inc543 = add nsw i32 %89, 1, !dbg !393
  store i32 %inc543, i32* %arrayidx47, align 4, !dbg !393, !tbaa !293
  %90 = load i32* %arrayidx50, align 4, !dbg !393, !tbaa !293
  %cmp546 = icmp slt i32 %inc543, %90, !dbg !393
  br i1 %cmp546, label %while.body498, label %for.cond550.preheader, !dbg !393

for.cond550.preheader:                            ; preds = %if.then540
  br i1 %cmp562025, label %for.body553, label %while.end585, !dbg !395

for.cond550:                                      ; preds = %for.body553
  %inc564 = add nsw i32 %_dim472.11926, 1, !dbg !395
  %91 = trunc i64 %indvars.iv.next2149 to i32, !dbg !395
  %cmp551 = icmp slt i32 %91, %num_dims, !dbg !395
  br i1 %cmp551, label %for.body553, label %while.end585, !dbg !395

for.body553:                                      ; preds = %for.cond550.preheader, %for.cond550
  %indvars.iv2148 = phi i64 [ %indvars.iv.next2149, %for.cond550 ], [ 2, %for.cond550.preheader ]
  %_dim472.11926 = phi i32 [ %inc564, %for.cond550 ], [ 2, %for.cond550.preheader ]
  %arrayidx555 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2148, !dbg !398
  %92 = load i32* %arrayidx555, align 4, !dbg !398, !tbaa !293
  %inc556 = add nsw i32 %92, 1, !dbg !398
  store i32 %inc556, i32* %arrayidx555, align 4, !dbg !398, !tbaa !293
  %arrayidx558 = getelementptr inbounds i32* %to, i64 %indvars.iv2148, !dbg !398
  %93 = load i32* %arrayidx558, align 4, !dbg !398, !tbaa !293
  %cmp559 = icmp slt i32 %inc556, %93, !dbg !398
  %indvars.iv.next2149 = add i64 %indvars.iv2148, 1, !dbg !395
  tail call void @llvm.dbg.value(metadata !{i32 %inc564}, i64 0, metadata !200), !dbg !395
  br i1 %cmp559, label %for.cond571.loopexit, label %for.cond550, !dbg !398

for.cond571.loopexit:                             ; preds = %for.body553
  %cmp5721928 = icmp sgt i32 %_dim472.11926, 0, !dbg !400
  br i1 %cmp5721928, label %for.body574.lr.ph, label %while.body498, !dbg !400

for.body574.lr.ph:                                ; preds = %for.cond571.loopexit
  %94 = sext i32 %_dim472.11926 to i64
  br label %for.body574, !dbg !400

for.body574:                                      ; preds = %for.body574.lr.ph, %for.body574
  %indvars.iv2150 = phi i64 [ %94, %for.body574.lr.ph ], [ %indvars.iv.next2151, %for.body574 ]
  %indvars.iv.next2151 = add i64 %indvars.iv2150, -1, !dbg !400
  %arrayidx576 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2151, !dbg !400
  %95 = load i32* %arrayidx576, align 4, !dbg !400, !tbaa !293
  %arrayidx578 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2151, !dbg !400
  store i32 %95, i32* %arrayidx578, align 4, !dbg !400, !tbaa !293
  %96 = trunc i64 %indvars.iv.next2151 to i32, !dbg !400
  %cmp572 = icmp sgt i32 %96, 0, !dbg !400
  br i1 %cmp572, label %for.body574, label %while.body498, !dbg !400

while.end585:                                     ; preds = %for.end537, %for.cond550, %for.cond550.preheader
  %conv586 = sitofp i64 %typed_outval477.1.lcssa to double, !dbg !382
  %indvars.iv.next2157 = add i64 %indvars.iv2156, 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %201}, i64 0, metadata !92), !dbg !382
  %arrayidx589 = getelementptr inbounds double* %outvals, i64 %indvars.iv2156, !dbg !382
  store double %conv586, double* %arrayidx589, align 8, !dbg !382, !tbaa !309
  %inc591 = add nsw i32 %_j471.01937, 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i32 %inc591}, i64 0, metadata !199), !dbg !379
  %incdec.ptr592 = getelementptr inbounds i64* %typed_vdata474.01938, i64 1, !dbg !379
  tail call void @llvm.dbg.value(metadata !{i64* %incdec.ptr592}, i64 0, metadata !202), !dbg !379
  %exitcond2158 = icmp eq i32 %inc591, %num_outvals, !dbg !379
  br i1 %exitcond2158, label %for.cond478.for.inc1204.loopexit1934_crit_edge, label %for.cond483.preheader, !dbg !379

sw.bb594:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %98}, i64 0, metadata !211), !dbg !402
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !208), !dbg !403
  br i1 %cmp42035, label %for.cond608.preheader.lr.ph, label %for.inc1204, !dbg !403

for.cond608.preheader.lr.ph:                      ; preds = %sw.bb594
  %arrayidx601 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !402
  %97 = load i8** %arrayidx601, align 8, !dbg !402, !tbaa !297
  %98 = bitcast i8* %97 to double*, !dbg !402
  %99 = sext i32 %total_outvals.02043 to i64
  br label %for.cond608.preheader, !dbg !403

for.cond608.preheader:                            ; preds = %while.end710, %for.cond608.preheader.lr.ph
  %indvars.iv2137 = phi i64 [ %99, %for.cond608.preheader.lr.ph ], [ %indvars.iv.next2138, %while.end710 ]
  %typed_vdata599.01913 = phi double* [ %98, %for.cond608.preheader.lr.ph ], [ %incdec.ptr716, %while.end710 ]
  %_j596.01912 = phi i32 [ 0, %for.cond608.preheader.lr.ph ], [ %inc715, %while.end710 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !212), !dbg !406
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !406
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !209), !dbg !406
  br label %while.body623, !dbg !406

while.body623:                                    ; preds = %if.then665, %for.body699, %for.cond696.loopexit, %for.cond608.preheader
  %typed_outval602.0 = phi double [ 0.000000e+00, %for.cond608.preheader ], [ %typed_outval602.1.lcssa, %for.cond696.loopexit ], [ %typed_outval602.1.lcssa, %for.body699 ], [ %typed_outval602.1.lcssa, %if.then665 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !210), !dbg !408
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !206), !dbg !410
  br i1 %cmp162015, label %for.body627, label %for.end636, !dbg !410

for.body627:                                      ; preds = %for.body627, %while.body623
  %indvars.iv2121 = phi i64 [ 1, %while.body623 ], [ %indvars.iv.next2122, %for.body627 ]
  %_vindex598.11892 = phi i32 [ 0, %while.body623 ], [ %add633, %for.body627 ]
  %arrayidx629 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2121, !dbg !410
  %100 = load i32* %arrayidx629, align 4, !dbg !410, !tbaa !293
  %arrayidx631 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2121, !dbg !410
  %101 = load i32* %arrayidx631, align 4, !dbg !410, !tbaa !293
  %mul632 = mul nsw i32 %101, %100, !dbg !410
  %add633 = add nsw i32 %mul632, %_vindex598.11892, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %add633}, i64 0, metadata !210), !dbg !410
  %indvars.iv.next2122 = add i64 %indvars.iv2121, 1, !dbg !410
  %lftr.wideiv2123 = trunc i64 %indvars.iv.next2122 to i32, !dbg !410
  %exitcond2124 = icmp eq i32 %lftr.wideiv2123, %num_dims, !dbg !410
  br i1 %exitcond2124, label %for.cond624.for.end636_crit_edge, label %for.body627, !dbg !410

for.cond624.for.end636_crit_edge:                 ; preds = %for.body627
  %phitmp2240 = sext i32 %add633 to i64, !dbg !410
  br label %for.end636, !dbg !410

for.end636:                                       ; preds = %for.cond624.for.end636_crit_edge, %while.body623
  %_vindex598.1.lcssa = phi i64 [ %phitmp2240, %for.cond624.for.end636_crit_edge ], [ 0, %while.body623 ]
  %102 = load i32* %from, align 4, !dbg !412, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %102}, i64 0, metadata !206), !dbg !412
  %103 = load i32* %to, align 4, !dbg !412, !tbaa !293
  %cmp6401895 = icmp slt i32 %102, %103, !dbg !412
  br i1 %cmp6401895, label %for.body642.lr.ph, label %for.end662, !dbg !412

for.body642.lr.ph:                                ; preds = %for.end636
  %104 = sext i32 %102 to i64
  br label %for.body642, !dbg !412

for.body642:                                      ; preds = %for.body642.lr.ph, %cond.end657
  %indvars.iv2125 = phi i64 [ %104, %for.body642.lr.ph ], [ %indvars.iv.next2126, %cond.end657 ]
  %typed_outval602.11897 = phi double [ %typed_outval602.0, %for.body642.lr.ph ], [ %add659, %cond.end657 ]
  %105 = add nsw i64 %indvars.iv2125, %_vindex598.1.lcssa, !dbg !414
  %arrayidx645 = getelementptr inbounds double* %typed_vdata599.01913, i64 %105, !dbg !414
  %106 = load double* %arrayidx645, align 8, !dbg !414, !tbaa !309
  %cmp646 = fcmp olt double %106, 0.000000e+00, !dbg !414
  br i1 %cmp646, label %cond.true648, label %cond.end657, !dbg !414

cond.true648:                                     ; preds = %for.body642
  %sub652 = fsub double -0.000000e+00, %106, !dbg !414
  br label %cond.end657, !dbg !414

cond.end657:                                      ; preds = %for.body642, %cond.true648
  %cond658 = phi double [ %sub652, %cond.true648 ], [ %106, %for.body642 ], !dbg !414
  %add659 = fadd double %typed_outval602.11897, %cond658, !dbg !414
  tail call void @llvm.dbg.value(metadata !{double %add659}, i64 0, metadata !212), !dbg !414
  %indvars.iv.next2126 = add i64 %indvars.iv2125, 1, !dbg !412
  %107 = trunc i64 %indvars.iv.next2126 to i32, !dbg !412
  %cmp640 = icmp slt i32 %107, %103, !dbg !412
  br i1 %cmp640, label %for.body642, label %for.end662, !dbg !412

for.end662:                                       ; preds = %cond.end657, %for.end636
  %typed_outval602.1.lcssa = phi double [ %typed_outval602.0, %for.end636 ], [ %add659, %cond.end657 ]
  br i1 %cmp162015, label %if.then665, label %while.end710, !dbg !408

if.then665:                                       ; preds = %for.end662
  %108 = load i32* %arrayidx47, align 4, !dbg !416, !tbaa !293
  %inc668 = add nsw i32 %108, 1, !dbg !416
  store i32 %inc668, i32* %arrayidx47, align 4, !dbg !416, !tbaa !293
  %109 = load i32* %arrayidx50, align 4, !dbg !416, !tbaa !293
  %cmp671 = icmp slt i32 %inc668, %109, !dbg !416
  br i1 %cmp671, label %while.body623, label %for.cond675.preheader, !dbg !416

for.cond675.preheader:                            ; preds = %if.then665
  br i1 %cmp562025, label %for.body678, label %while.end710, !dbg !418

for.cond675:                                      ; preds = %for.body678
  %inc689 = add nsw i32 %_dim597.11901, 1, !dbg !418
  %110 = trunc i64 %indvars.iv.next2130 to i32, !dbg !418
  %cmp676 = icmp slt i32 %110, %num_dims, !dbg !418
  br i1 %cmp676, label %for.body678, label %while.end710, !dbg !418

for.body678:                                      ; preds = %for.cond675.preheader, %for.cond675
  %indvars.iv2129 = phi i64 [ %indvars.iv.next2130, %for.cond675 ], [ 2, %for.cond675.preheader ]
  %_dim597.11901 = phi i32 [ %inc689, %for.cond675 ], [ 2, %for.cond675.preheader ]
  %arrayidx680 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2129, !dbg !421
  %111 = load i32* %arrayidx680, align 4, !dbg !421, !tbaa !293
  %inc681 = add nsw i32 %111, 1, !dbg !421
  store i32 %inc681, i32* %arrayidx680, align 4, !dbg !421, !tbaa !293
  %arrayidx683 = getelementptr inbounds i32* %to, i64 %indvars.iv2129, !dbg !421
  %112 = load i32* %arrayidx683, align 4, !dbg !421, !tbaa !293
  %cmp684 = icmp slt i32 %inc681, %112, !dbg !421
  %indvars.iv.next2130 = add i64 %indvars.iv2129, 1, !dbg !418
  tail call void @llvm.dbg.value(metadata !{i32 %inc689}, i64 0, metadata !209), !dbg !418
  br i1 %cmp684, label %for.cond696.loopexit, label %for.cond675, !dbg !421

for.cond696.loopexit:                             ; preds = %for.body678
  %cmp6971903 = icmp sgt i32 %_dim597.11901, 0, !dbg !423
  br i1 %cmp6971903, label %for.body699.lr.ph, label %while.body623, !dbg !423

for.body699.lr.ph:                                ; preds = %for.cond696.loopexit
  %113 = sext i32 %_dim597.11901 to i64
  br label %for.body699, !dbg !423

for.body699:                                      ; preds = %for.body699.lr.ph, %for.body699
  %indvars.iv2131 = phi i64 [ %113, %for.body699.lr.ph ], [ %indvars.iv.next2132, %for.body699 ]
  %indvars.iv.next2132 = add i64 %indvars.iv2131, -1, !dbg !423
  %arrayidx701 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2132, !dbg !423
  %114 = load i32* %arrayidx701, align 4, !dbg !423, !tbaa !293
  %arrayidx703 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2132, !dbg !423
  store i32 %114, i32* %arrayidx703, align 4, !dbg !423, !tbaa !293
  %115 = trunc i64 %indvars.iv.next2132 to i32, !dbg !423
  %cmp697 = icmp sgt i32 %115, 0, !dbg !423
  br i1 %cmp697, label %for.body699, label %while.body623, !dbg !423

while.end710:                                     ; preds = %for.end662, %for.cond675, %for.cond675.preheader
  %indvars.iv.next2138 = add i64 %indvars.iv2137, 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %200}, i64 0, metadata !92), !dbg !406
  %arrayidx713 = getelementptr inbounds double* %outvals, i64 %indvars.iv2137, !dbg !406
  store double %typed_outval602.1.lcssa, double* %arrayidx713, align 8, !dbg !406, !tbaa !309
  %inc715 = add nsw i32 %_j596.01912, 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{i32 %inc715}, i64 0, metadata !208), !dbg !403
  %incdec.ptr716 = getelementptr inbounds double* %typed_vdata599.01913, i64 1, !dbg !403
  tail call void @llvm.dbg.value(metadata !{double* %incdec.ptr716}, i64 0, metadata !211), !dbg !403
  %exitcond2139 = icmp eq i32 %inc715, %num_outvals, !dbg !403
  br i1 %exitcond2139, label %for.cond603.for.inc1204.loopexit1909_crit_edge, label %for.cond608.preheader, !dbg !403

sw.bb718:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{float* %117}, i64 0, metadata !218), !dbg !425
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !215), !dbg !426
  br i1 %cmp42035, label %for.cond732.preheader.lr.ph, label %for.inc1204, !dbg !426

for.cond732.preheader.lr.ph:                      ; preds = %sw.bb718
  %arrayidx725 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !425
  %116 = load i8** %arrayidx725, align 8, !dbg !425, !tbaa !297
  %117 = bitcast i8* %116 to float*, !dbg !425
  %118 = sext i32 %total_outvals.02043 to i64
  br label %for.cond732.preheader, !dbg !426

for.cond732.preheader:                            ; preds = %while.end834, %for.cond732.preheader.lr.ph
  %indvars.iv2118 = phi i64 [ %118, %for.cond732.preheader.lr.ph ], [ %indvars.iv.next2119, %while.end834 ]
  %typed_vdata723.01888 = phi float* [ %117, %for.cond732.preheader.lr.ph ], [ %incdec.ptr841, %while.end834 ]
  %_j720.01887 = phi i32 [ 0, %for.cond732.preheader.lr.ph ], [ %inc840, %while.end834 ]
  tail call void @llvm.dbg.value(metadata !428, i64 0, metadata !221), !dbg !429
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !429
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !216), !dbg !429
  br label %while.body747, !dbg !429

while.body747:                                    ; preds = %if.then789, %for.body823, %for.cond820.loopexit, %for.cond732.preheader
  %typed_outval726.0 = phi float [ 0.000000e+00, %for.cond732.preheader ], [ %typed_outval726.1.lcssa, %for.cond820.loopexit ], [ %typed_outval726.1.lcssa, %for.body823 ], [ %typed_outval726.1.lcssa, %if.then789 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !217), !dbg !431
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !213), !dbg !433
  br i1 %cmp162015, label %for.body751, label %for.end760, !dbg !433

for.body751:                                      ; preds = %for.body751, %while.body747
  %indvars.iv2102 = phi i64 [ 1, %while.body747 ], [ %indvars.iv.next2103, %for.body751 ]
  %_vindex722.11867 = phi i32 [ 0, %while.body747 ], [ %add757, %for.body751 ]
  %arrayidx753 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2102, !dbg !433
  %119 = load i32* %arrayidx753, align 4, !dbg !433, !tbaa !293
  %arrayidx755 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2102, !dbg !433
  %120 = load i32* %arrayidx755, align 4, !dbg !433, !tbaa !293
  %mul756 = mul nsw i32 %120, %119, !dbg !433
  %add757 = add nsw i32 %mul756, %_vindex722.11867, !dbg !433
  tail call void @llvm.dbg.value(metadata !{i32 %add757}, i64 0, metadata !217), !dbg !433
  %indvars.iv.next2103 = add i64 %indvars.iv2102, 1, !dbg !433
  %lftr.wideiv2104 = trunc i64 %indvars.iv.next2103 to i32, !dbg !433
  %exitcond2105 = icmp eq i32 %lftr.wideiv2104, %num_dims, !dbg !433
  br i1 %exitcond2105, label %for.cond748.for.end760_crit_edge, label %for.body751, !dbg !433

for.cond748.for.end760_crit_edge:                 ; preds = %for.body751
  %phitmp2239 = sext i32 %add757 to i64, !dbg !433
  br label %for.end760, !dbg !433

for.end760:                                       ; preds = %for.cond748.for.end760_crit_edge, %while.body747
  %_vindex722.1.lcssa = phi i64 [ %phitmp2239, %for.cond748.for.end760_crit_edge ], [ 0, %while.body747 ]
  %121 = load i32* %from, align 4, !dbg !435, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %121}, i64 0, metadata !213), !dbg !435
  %122 = load i32* %to, align 4, !dbg !435, !tbaa !293
  %cmp7641870 = icmp slt i32 %121, %122, !dbg !435
  br i1 %cmp7641870, label %for.body766.lr.ph, label %for.end786, !dbg !435

for.body766.lr.ph:                                ; preds = %for.end760
  %123 = sext i32 %121 to i64
  br label %for.body766, !dbg !435

for.body766:                                      ; preds = %for.body766.lr.ph, %cond.end781
  %indvars.iv2106 = phi i64 [ %123, %for.body766.lr.ph ], [ %indvars.iv.next2107, %cond.end781 ]
  %typed_outval726.11872 = phi float [ %typed_outval726.0, %for.body766.lr.ph ], [ %add783, %cond.end781 ]
  %124 = add nsw i64 %indvars.iv2106, %_vindex722.1.lcssa, !dbg !437
  %arrayidx769 = getelementptr inbounds float* %typed_vdata723.01888, i64 %124, !dbg !437
  %125 = load float* %arrayidx769, align 4, !dbg !437, !tbaa !439
  %cmp770 = fcmp olt float %125, 0.000000e+00, !dbg !437
  br i1 %cmp770, label %cond.true772, label %cond.end781, !dbg !437

cond.true772:                                     ; preds = %for.body766
  %sub776 = fsub float -0.000000e+00, %125, !dbg !437
  br label %cond.end781, !dbg !437

cond.end781:                                      ; preds = %for.body766, %cond.true772
  %cond782 = phi float [ %sub776, %cond.true772 ], [ %125, %for.body766 ], !dbg !437
  %add783 = fadd float %typed_outval726.11872, %cond782, !dbg !437
  tail call void @llvm.dbg.value(metadata !{float %add783}, i64 0, metadata !221), !dbg !437
  %indvars.iv.next2107 = add i64 %indvars.iv2106, 1, !dbg !435
  %126 = trunc i64 %indvars.iv.next2107 to i32, !dbg !435
  %cmp764 = icmp slt i32 %126, %122, !dbg !435
  br i1 %cmp764, label %for.body766, label %for.end786, !dbg !435

for.end786:                                       ; preds = %cond.end781, %for.end760
  %typed_outval726.1.lcssa = phi float [ %typed_outval726.0, %for.end760 ], [ %add783, %cond.end781 ]
  br i1 %cmp162015, label %if.then789, label %while.end834, !dbg !431

if.then789:                                       ; preds = %for.end786
  %127 = load i32* %arrayidx47, align 4, !dbg !440, !tbaa !293
  %inc792 = add nsw i32 %127, 1, !dbg !440
  store i32 %inc792, i32* %arrayidx47, align 4, !dbg !440, !tbaa !293
  %128 = load i32* %arrayidx50, align 4, !dbg !440, !tbaa !293
  %cmp795 = icmp slt i32 %inc792, %128, !dbg !440
  br i1 %cmp795, label %while.body747, label %for.cond799.preheader, !dbg !440

for.cond799.preheader:                            ; preds = %if.then789
  br i1 %cmp562025, label %for.body802, label %while.end834, !dbg !442

for.cond799:                                      ; preds = %for.body802
  %inc813 = add nsw i32 %_dim721.11876, 1, !dbg !442
  %129 = trunc i64 %indvars.iv.next2111 to i32, !dbg !442
  %cmp800 = icmp slt i32 %129, %num_dims, !dbg !442
  br i1 %cmp800, label %for.body802, label %while.end834, !dbg !442

for.body802:                                      ; preds = %for.cond799.preheader, %for.cond799
  %indvars.iv2110 = phi i64 [ %indvars.iv.next2111, %for.cond799 ], [ 2, %for.cond799.preheader ]
  %_dim721.11876 = phi i32 [ %inc813, %for.cond799 ], [ 2, %for.cond799.preheader ]
  %arrayidx804 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2110, !dbg !445
  %130 = load i32* %arrayidx804, align 4, !dbg !445, !tbaa !293
  %inc805 = add nsw i32 %130, 1, !dbg !445
  store i32 %inc805, i32* %arrayidx804, align 4, !dbg !445, !tbaa !293
  %arrayidx807 = getelementptr inbounds i32* %to, i64 %indvars.iv2110, !dbg !445
  %131 = load i32* %arrayidx807, align 4, !dbg !445, !tbaa !293
  %cmp808 = icmp slt i32 %inc805, %131, !dbg !445
  %indvars.iv.next2111 = add i64 %indvars.iv2110, 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i32 %inc813}, i64 0, metadata !216), !dbg !442
  br i1 %cmp808, label %for.cond820.loopexit, label %for.cond799, !dbg !445

for.cond820.loopexit:                             ; preds = %for.body802
  %cmp8211878 = icmp sgt i32 %_dim721.11876, 0, !dbg !447
  br i1 %cmp8211878, label %for.body823.lr.ph, label %while.body747, !dbg !447

for.body823.lr.ph:                                ; preds = %for.cond820.loopexit
  %132 = sext i32 %_dim721.11876 to i64
  br label %for.body823, !dbg !447

for.body823:                                      ; preds = %for.body823.lr.ph, %for.body823
  %indvars.iv2112 = phi i64 [ %132, %for.body823.lr.ph ], [ %indvars.iv.next2113, %for.body823 ]
  %indvars.iv.next2113 = add i64 %indvars.iv2112, -1, !dbg !447
  %arrayidx825 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2113, !dbg !447
  %133 = load i32* %arrayidx825, align 4, !dbg !447, !tbaa !293
  %arrayidx827 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2113, !dbg !447
  store i32 %133, i32* %arrayidx827, align 4, !dbg !447, !tbaa !293
  %134 = trunc i64 %indvars.iv.next2113 to i32, !dbg !447
  %cmp821 = icmp sgt i32 %134, 0, !dbg !447
  br i1 %cmp821, label %for.body823, label %while.body747, !dbg !447

while.end834:                                     ; preds = %for.end786, %for.cond799, %for.cond799.preheader
  %conv835 = fpext float %typed_outval726.1.lcssa to double, !dbg !429
  %indvars.iv.next2119 = add i64 %indvars.iv2118, 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %199}, i64 0, metadata !92), !dbg !429
  %arrayidx838 = getelementptr inbounds double* %outvals, i64 %indvars.iv2118, !dbg !429
  store double %conv835, double* %arrayidx838, align 8, !dbg !429, !tbaa !309
  %inc840 = add nsw i32 %_j720.01887, 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{i32 %inc840}, i64 0, metadata !215), !dbg !426
  %incdec.ptr841 = getelementptr inbounds float* %typed_vdata723.01888, i64 1, !dbg !426
  tail call void @llvm.dbg.value(metadata !{float* %incdec.ptr841}, i64 0, metadata !218), !dbg !426
  %exitcond2120 = icmp eq i32 %inc840, %num_outvals, !dbg !426
  br i1 %exitcond2120, label %for.cond727.for.inc1204.loopexit1884_crit_edge, label %for.cond732.preheader, !dbg !426

sw.bb843:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{double* %136}, i64 0, metadata !227), !dbg !449
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !224), !dbg !450
  br i1 %cmp42035, label %for.cond857.preheader.lr.ph, label %for.inc1204, !dbg !450

for.cond857.preheader.lr.ph:                      ; preds = %sw.bb843
  %arrayidx850 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !449
  %135 = load i8** %arrayidx850, align 8, !dbg !449, !tbaa !297
  %136 = bitcast i8* %135 to double*, !dbg !449
  %137 = sext i32 %total_outvals.02043 to i64
  br label %for.cond857.preheader, !dbg !450

for.cond857.preheader:                            ; preds = %while.end959, %for.cond857.preheader.lr.ph
  %indvars.iv2099 = phi i64 [ %137, %for.cond857.preheader.lr.ph ], [ %indvars.iv.next2100, %while.end959 ]
  %typed_vdata848.01863 = phi double* [ %136, %for.cond857.preheader.lr.ph ], [ %incdec.ptr965, %while.end959 ]
  %_j845.01862 = phi i32 [ 0, %for.cond857.preheader.lr.ph ], [ %inc964, %while.end959 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !228), !dbg !452
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !452
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !225), !dbg !452
  br label %while.body872, !dbg !452

while.body872:                                    ; preds = %if.then914, %for.body948, %for.cond945.loopexit, %for.cond857.preheader
  %typed_outval851.0 = phi double [ 0.000000e+00, %for.cond857.preheader ], [ %typed_outval851.1.lcssa, %for.cond945.loopexit ], [ %typed_outval851.1.lcssa, %for.body948 ], [ %typed_outval851.1.lcssa, %if.then914 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !226), !dbg !454
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !222), !dbg !456
  br i1 %cmp162015, label %for.body876, label %for.end885, !dbg !456

for.body876:                                      ; preds = %for.body876, %while.body872
  %indvars.iv2083 = phi i64 [ 1, %while.body872 ], [ %indvars.iv.next2084, %for.body876 ]
  %_vindex847.11842 = phi i32 [ 0, %while.body872 ], [ %add882, %for.body876 ]
  %arrayidx878 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2083, !dbg !456
  %138 = load i32* %arrayidx878, align 4, !dbg !456, !tbaa !293
  %arrayidx880 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2083, !dbg !456
  %139 = load i32* %arrayidx880, align 4, !dbg !456, !tbaa !293
  %mul881 = mul nsw i32 %139, %138, !dbg !456
  %add882 = add nsw i32 %mul881, %_vindex847.11842, !dbg !456
  tail call void @llvm.dbg.value(metadata !{i32 %add882}, i64 0, metadata !226), !dbg !456
  %indvars.iv.next2084 = add i64 %indvars.iv2083, 1, !dbg !456
  %lftr.wideiv2085 = trunc i64 %indvars.iv.next2084 to i32, !dbg !456
  %exitcond2086 = icmp eq i32 %lftr.wideiv2085, %num_dims, !dbg !456
  br i1 %exitcond2086, label %for.cond873.for.end885_crit_edge, label %for.body876, !dbg !456

for.cond873.for.end885_crit_edge:                 ; preds = %for.body876
  %phitmp2238 = sext i32 %add882 to i64, !dbg !456
  br label %for.end885, !dbg !456

for.end885:                                       ; preds = %for.cond873.for.end885_crit_edge, %while.body872
  %_vindex847.1.lcssa = phi i64 [ %phitmp2238, %for.cond873.for.end885_crit_edge ], [ 0, %while.body872 ]
  %140 = load i32* %from, align 4, !dbg !458, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %140}, i64 0, metadata !222), !dbg !458
  %141 = load i32* %to, align 4, !dbg !458, !tbaa !293
  %cmp8891845 = icmp slt i32 %140, %141, !dbg !458
  br i1 %cmp8891845, label %for.body891.lr.ph, label %for.end911, !dbg !458

for.body891.lr.ph:                                ; preds = %for.end885
  %142 = sext i32 %140 to i64
  br label %for.body891, !dbg !458

for.body891:                                      ; preds = %for.body891.lr.ph, %cond.end906
  %indvars.iv2087 = phi i64 [ %142, %for.body891.lr.ph ], [ %indvars.iv.next2088, %cond.end906 ]
  %typed_outval851.11847 = phi double [ %typed_outval851.0, %for.body891.lr.ph ], [ %add908, %cond.end906 ]
  %143 = add nsw i64 %indvars.iv2087, %_vindex847.1.lcssa, !dbg !460
  %arrayidx894 = getelementptr inbounds double* %typed_vdata848.01863, i64 %143, !dbg !460
  %144 = load double* %arrayidx894, align 8, !dbg !460, !tbaa !309
  %cmp895 = fcmp olt double %144, 0.000000e+00, !dbg !460
  br i1 %cmp895, label %cond.true897, label %cond.end906, !dbg !460

cond.true897:                                     ; preds = %for.body891
  %sub901 = fsub double -0.000000e+00, %144, !dbg !460
  br label %cond.end906, !dbg !460

cond.end906:                                      ; preds = %for.body891, %cond.true897
  %cond907 = phi double [ %sub901, %cond.true897 ], [ %144, %for.body891 ], !dbg !460
  %add908 = fadd double %typed_outval851.11847, %cond907, !dbg !460
  tail call void @llvm.dbg.value(metadata !{double %add908}, i64 0, metadata !228), !dbg !460
  %indvars.iv.next2088 = add i64 %indvars.iv2087, 1, !dbg !458
  %145 = trunc i64 %indvars.iv.next2088 to i32, !dbg !458
  %cmp889 = icmp slt i32 %145, %141, !dbg !458
  br i1 %cmp889, label %for.body891, label %for.end911, !dbg !458

for.end911:                                       ; preds = %cond.end906, %for.end885
  %typed_outval851.1.lcssa = phi double [ %typed_outval851.0, %for.end885 ], [ %add908, %cond.end906 ]
  br i1 %cmp162015, label %if.then914, label %while.end959, !dbg !454

if.then914:                                       ; preds = %for.end911
  %146 = load i32* %arrayidx47, align 4, !dbg !462, !tbaa !293
  %inc917 = add nsw i32 %146, 1, !dbg !462
  store i32 %inc917, i32* %arrayidx47, align 4, !dbg !462, !tbaa !293
  %147 = load i32* %arrayidx50, align 4, !dbg !462, !tbaa !293
  %cmp920 = icmp slt i32 %inc917, %147, !dbg !462
  br i1 %cmp920, label %while.body872, label %for.cond924.preheader, !dbg !462

for.cond924.preheader:                            ; preds = %if.then914
  br i1 %cmp562025, label %for.body927, label %while.end959, !dbg !464

for.cond924:                                      ; preds = %for.body927
  %inc938 = add nsw i32 %_dim846.11851, 1, !dbg !464
  %148 = trunc i64 %indvars.iv.next2092 to i32, !dbg !464
  %cmp925 = icmp slt i32 %148, %num_dims, !dbg !464
  br i1 %cmp925, label %for.body927, label %while.end959, !dbg !464

for.body927:                                      ; preds = %for.cond924.preheader, %for.cond924
  %indvars.iv2091 = phi i64 [ %indvars.iv.next2092, %for.cond924 ], [ 2, %for.cond924.preheader ]
  %_dim846.11851 = phi i32 [ %inc938, %for.cond924 ], [ 2, %for.cond924.preheader ]
  %arrayidx929 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2091, !dbg !467
  %149 = load i32* %arrayidx929, align 4, !dbg !467, !tbaa !293
  %inc930 = add nsw i32 %149, 1, !dbg !467
  store i32 %inc930, i32* %arrayidx929, align 4, !dbg !467, !tbaa !293
  %arrayidx932 = getelementptr inbounds i32* %to, i64 %indvars.iv2091, !dbg !467
  %150 = load i32* %arrayidx932, align 4, !dbg !467, !tbaa !293
  %cmp933 = icmp slt i32 %inc930, %150, !dbg !467
  %indvars.iv.next2092 = add i64 %indvars.iv2091, 1, !dbg !464
  tail call void @llvm.dbg.value(metadata !{i32 %inc938}, i64 0, metadata !225), !dbg !464
  br i1 %cmp933, label %for.cond945.loopexit, label %for.cond924, !dbg !467

for.cond945.loopexit:                             ; preds = %for.body927
  %cmp9461853 = icmp sgt i32 %_dim846.11851, 0, !dbg !469
  br i1 %cmp9461853, label %for.body948.lr.ph, label %while.body872, !dbg !469

for.body948.lr.ph:                                ; preds = %for.cond945.loopexit
  %151 = sext i32 %_dim846.11851 to i64
  br label %for.body948, !dbg !469

for.body948:                                      ; preds = %for.body948.lr.ph, %for.body948
  %indvars.iv2093 = phi i64 [ %151, %for.body948.lr.ph ], [ %indvars.iv.next2094, %for.body948 ]
  %indvars.iv.next2094 = add i64 %indvars.iv2093, -1, !dbg !469
  %arrayidx950 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2094, !dbg !469
  %152 = load i32* %arrayidx950, align 4, !dbg !469, !tbaa !293
  %arrayidx952 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2094, !dbg !469
  store i32 %152, i32* %arrayidx952, align 4, !dbg !469, !tbaa !293
  %153 = trunc i64 %indvars.iv.next2094 to i32, !dbg !469
  %cmp946 = icmp sgt i32 %153, 0, !dbg !469
  br i1 %cmp946, label %for.body948, label %while.body872, !dbg !469

while.end959:                                     ; preds = %for.end911, %for.cond924, %for.cond924.preheader
  %indvars.iv.next2100 = add i64 %indvars.iv2099, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %198}, i64 0, metadata !92), !dbg !452
  %arrayidx962 = getelementptr inbounds double* %outvals, i64 %indvars.iv2099, !dbg !452
  store double %typed_outval851.1.lcssa, double* %arrayidx962, align 8, !dbg !452, !tbaa !309
  %inc964 = add nsw i32 %_j845.01862, 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{i32 %inc964}, i64 0, metadata !224), !dbg !450
  %incdec.ptr965 = getelementptr inbounds double* %typed_vdata848.01863, i64 1, !dbg !450
  tail call void @llvm.dbg.value(metadata !{double* %incdec.ptr965}, i64 0, metadata !227), !dbg !450
  %exitcond2101 = icmp eq i32 %inc964, %num_outvals, !dbg !450
  br i1 %exitcond2101, label %for.cond852.for.inc1204.loopexit1859_crit_edge, label %for.cond857.preheader, !dbg !450

sw.bb967:                                         ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %155}, i64 0, metadata !234), !dbg !471
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !231), !dbg !472
  br i1 %cmp42035, label %for.cond981.preheader.lr.ph, label %for.inc1204, !dbg !472

for.cond981.preheader.lr.ph:                      ; preds = %sw.bb967
  %arrayidx974 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !471
  %154 = load i8** %arrayidx974, align 8, !dbg !471, !tbaa !297
  %155 = bitcast i8* %154 to x86_fp80*, !dbg !471
  %156 = sext i32 %total_outvals.02043 to i64
  br label %for.cond981.preheader, !dbg !472

for.cond981.preheader:                            ; preds = %while.end1083, %for.cond981.preheader.lr.ph
  %indvars.iv2080 = phi i64 [ %156, %for.cond981.preheader.lr.ph ], [ %indvars.iv.next2081, %while.end1083 ]
  %typed_vdata972.01838 = phi x86_fp80* [ %155, %for.cond981.preheader.lr.ph ], [ %incdec.ptr1090, %while.end1083 ]
  %_j969.01837 = phi i32 [ 0, %for.cond981.preheader.lr.ph ], [ %inc1089, %while.end1083 ]
  tail call void @llvm.dbg.value(metadata !474, i64 0, metadata !237), !dbg !475
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !475
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !232), !dbg !475
  br label %while.body996, !dbg !475

while.body996:                                    ; preds = %if.then1038, %for.body1072, %for.cond1069.loopexit, %for.cond981.preheader
  %typed_outval975.0 = phi x86_fp80 [ 0xK00000000000000000000, %for.cond981.preheader ], [ %typed_outval975.1.lcssa, %for.cond1069.loopexit ], [ %typed_outval975.1.lcssa, %for.body1072 ], [ %typed_outval975.1.lcssa, %if.then1038 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !233), !dbg !477
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !229), !dbg !479
  br i1 %cmp162015, label %for.body1000, label %for.end1009, !dbg !479

for.body1000:                                     ; preds = %for.body1000, %while.body996
  %indvars.iv2064 = phi i64 [ 1, %while.body996 ], [ %indvars.iv.next2065, %for.body1000 ]
  %_vindex971.11817 = phi i32 [ 0, %while.body996 ], [ %add1006, %for.body1000 ]
  %arrayidx1002 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2064, !dbg !479
  %157 = load i32* %arrayidx1002, align 4, !dbg !479, !tbaa !293
  %arrayidx1004 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2064, !dbg !479
  %158 = load i32* %arrayidx1004, align 4, !dbg !479, !tbaa !293
  %mul1005 = mul nsw i32 %158, %157, !dbg !479
  %add1006 = add nsw i32 %mul1005, %_vindex971.11817, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %add1006}, i64 0, metadata !233), !dbg !479
  %indvars.iv.next2065 = add i64 %indvars.iv2064, 1, !dbg !479
  %lftr.wideiv2066 = trunc i64 %indvars.iv.next2065 to i32, !dbg !479
  %exitcond2067 = icmp eq i32 %lftr.wideiv2066, %num_dims, !dbg !479
  br i1 %exitcond2067, label %for.cond997.for.end1009_crit_edge, label %for.body1000, !dbg !479

for.cond997.for.end1009_crit_edge:                ; preds = %for.body1000
  %phitmp2237 = sext i32 %add1006 to i64, !dbg !479
  br label %for.end1009, !dbg !479

for.end1009:                                      ; preds = %for.cond997.for.end1009_crit_edge, %while.body996
  %_vindex971.1.lcssa = phi i64 [ %phitmp2237, %for.cond997.for.end1009_crit_edge ], [ 0, %while.body996 ]
  %159 = load i32* %from, align 4, !dbg !481, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %159}, i64 0, metadata !229), !dbg !481
  %160 = load i32* %to, align 4, !dbg !481, !tbaa !293
  %cmp10131820 = icmp slt i32 %159, %160, !dbg !481
  br i1 %cmp10131820, label %for.body1015.lr.ph, label %for.end1035, !dbg !481

for.body1015.lr.ph:                               ; preds = %for.end1009
  %161 = sext i32 %159 to i64
  br label %for.body1015, !dbg !481

for.body1015:                                     ; preds = %for.body1015.lr.ph, %cond.end1030
  %indvars.iv2068 = phi i64 [ %161, %for.body1015.lr.ph ], [ %indvars.iv.next2069, %cond.end1030 ]
  %typed_outval975.11822 = phi x86_fp80 [ %typed_outval975.0, %for.body1015.lr.ph ], [ %add1032, %cond.end1030 ]
  %162 = add nsw i64 %indvars.iv2068, %_vindex971.1.lcssa, !dbg !483
  %arrayidx1018 = getelementptr inbounds x86_fp80* %typed_vdata972.01838, i64 %162, !dbg !483
  %163 = load x86_fp80* %arrayidx1018, align 16, !dbg !483, !tbaa !485
  %cmp1019 = fcmp olt x86_fp80 %163, 0xK00000000000000000000, !dbg !483
  br i1 %cmp1019, label %cond.true1021, label %cond.end1030, !dbg !483

cond.true1021:                                    ; preds = %for.body1015
  %sub1025 = fsub x86_fp80 0xK80000000000000000000, %163, !dbg !483
  br label %cond.end1030, !dbg !483

cond.end1030:                                     ; preds = %for.body1015, %cond.true1021
  %cond1031 = phi x86_fp80 [ %sub1025, %cond.true1021 ], [ %163, %for.body1015 ], !dbg !483
  %add1032 = fadd x86_fp80 %typed_outval975.11822, %cond1031, !dbg !483
  tail call void @llvm.dbg.value(metadata !{x86_fp80 %add1032}, i64 0, metadata !237), !dbg !483
  %indvars.iv.next2069 = add i64 %indvars.iv2068, 1, !dbg !481
  %164 = trunc i64 %indvars.iv.next2069 to i32, !dbg !481
  %cmp1013 = icmp slt i32 %164, %160, !dbg !481
  br i1 %cmp1013, label %for.body1015, label %for.end1035, !dbg !481

for.end1035:                                      ; preds = %cond.end1030, %for.end1009
  %typed_outval975.1.lcssa = phi x86_fp80 [ %typed_outval975.0, %for.end1009 ], [ %add1032, %cond.end1030 ]
  br i1 %cmp162015, label %if.then1038, label %while.end1083, !dbg !477

if.then1038:                                      ; preds = %for.end1035
  %165 = load i32* %arrayidx47, align 4, !dbg !486, !tbaa !293
  %inc1041 = add nsw i32 %165, 1, !dbg !486
  store i32 %inc1041, i32* %arrayidx47, align 4, !dbg !486, !tbaa !293
  %166 = load i32* %arrayidx50, align 4, !dbg !486, !tbaa !293
  %cmp1044 = icmp slt i32 %inc1041, %166, !dbg !486
  br i1 %cmp1044, label %while.body996, label %for.cond1048.preheader, !dbg !486

for.cond1048.preheader:                           ; preds = %if.then1038
  br i1 %cmp562025, label %for.body1051, label %while.end1083, !dbg !488

for.cond1048:                                     ; preds = %for.body1051
  %inc1062 = add nsw i32 %_dim970.11826, 1, !dbg !488
  %167 = trunc i64 %indvars.iv.next2073 to i32, !dbg !488
  %cmp1049 = icmp slt i32 %167, %num_dims, !dbg !488
  br i1 %cmp1049, label %for.body1051, label %while.end1083, !dbg !488

for.body1051:                                     ; preds = %for.cond1048.preheader, %for.cond1048
  %indvars.iv2072 = phi i64 [ %indvars.iv.next2073, %for.cond1048 ], [ 2, %for.cond1048.preheader ]
  %_dim970.11826 = phi i32 [ %inc1062, %for.cond1048 ], [ 2, %for.cond1048.preheader ]
  %arrayidx1053 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2072, !dbg !491
  %168 = load i32* %arrayidx1053, align 4, !dbg !491, !tbaa !293
  %inc1054 = add nsw i32 %168, 1, !dbg !491
  store i32 %inc1054, i32* %arrayidx1053, align 4, !dbg !491, !tbaa !293
  %arrayidx1056 = getelementptr inbounds i32* %to, i64 %indvars.iv2072, !dbg !491
  %169 = load i32* %arrayidx1056, align 4, !dbg !491, !tbaa !293
  %cmp1057 = icmp slt i32 %inc1054, %169, !dbg !491
  %indvars.iv.next2073 = add i64 %indvars.iv2072, 1, !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32 %inc1062}, i64 0, metadata !232), !dbg !488
  br i1 %cmp1057, label %for.cond1069.loopexit, label %for.cond1048, !dbg !491

for.cond1069.loopexit:                            ; preds = %for.body1051
  %cmp10701828 = icmp sgt i32 %_dim970.11826, 0, !dbg !493
  br i1 %cmp10701828, label %for.body1072.lr.ph, label %while.body996, !dbg !493

for.body1072.lr.ph:                               ; preds = %for.cond1069.loopexit
  %170 = sext i32 %_dim970.11826 to i64
  br label %for.body1072, !dbg !493

for.body1072:                                     ; preds = %for.body1072.lr.ph, %for.body1072
  %indvars.iv2074 = phi i64 [ %170, %for.body1072.lr.ph ], [ %indvars.iv.next2075, %for.body1072 ]
  %indvars.iv.next2075 = add i64 %indvars.iv2074, -1, !dbg !493
  %arrayidx1074 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2075, !dbg !493
  %171 = load i32* %arrayidx1074, align 4, !dbg !493, !tbaa !293
  %arrayidx1076 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2075, !dbg !493
  store i32 %171, i32* %arrayidx1076, align 4, !dbg !493, !tbaa !293
  %172 = trunc i64 %indvars.iv.next2075 to i32, !dbg !493
  %cmp1070 = icmp sgt i32 %172, 0, !dbg !493
  br i1 %cmp1070, label %for.body1072, label %while.body996, !dbg !493

while.end1083:                                    ; preds = %for.end1035, %for.cond1048, %for.cond1048.preheader
  %conv1084 = fptrunc x86_fp80 %typed_outval975.1.lcssa to double, !dbg !475
  %indvars.iv.next2081 = add i64 %indvars.iv2080, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %197}, i64 0, metadata !92), !dbg !475
  %arrayidx1087 = getelementptr inbounds double* %outvals, i64 %indvars.iv2080, !dbg !475
  store double %conv1084, double* %arrayidx1087, align 8, !dbg !475, !tbaa !309
  %inc1089 = add nsw i32 %_j969.01837, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %inc1089}, i64 0, metadata !231), !dbg !472
  %incdec.ptr1090 = getelementptr inbounds x86_fp80* %typed_vdata972.01838, i64 1, !dbg !472
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %incdec.ptr1090}, i64 0, metadata !234), !dbg !472
  %exitcond2082 = icmp eq i32 %inc1089, %num_outvals, !dbg !472
  br i1 %exitcond2082, label %for.cond976.for.inc1204.loopexit1834_crit_edge, label %for.cond981.preheader, !dbg !472

sw.bb1092:                                        ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %174}, i64 0, metadata !243), !dbg !495
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !240), !dbg !496
  br i1 %cmp42035, label %for.cond1106.preheader.lr.ph, label %for.inc1204, !dbg !496

for.cond1106.preheader.lr.ph:                     ; preds = %sw.bb1092
  %arrayidx1099 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv2235, !dbg !495
  %173 = load i8** %arrayidx1099, align 8, !dbg !495, !tbaa !297
  %174 = bitcast i8* %173 to %struct.CCTK_COMPLEX16*, !dbg !495
  %175 = sext i32 %total_outvals.02043 to i64
  br label %for.cond1106.preheader, !dbg !496

for.cond1106.preheader:                           ; preds = %while.end1195, %for.cond1106.preheader.lr.ph
  %indvars.iv2061 = phi i64 [ %175, %for.cond1106.preheader.lr.ph ], [ %indvars.iv.next2062, %while.end1195 ]
  %typed_vdata1097.01811 = phi %struct.CCTK_COMPLEX16* [ %174, %for.cond1106.preheader.lr.ph ], [ %incdec.ptr1201, %while.end1195 ]
  %_j1094.01810 = phi i32 [ 0, %for.cond1106.preheader.lr.ph ], [ %inc1200, %while.end1195 ]
  tail call void @llvm.dbg.value(metadata !405, i64 0, metadata !251), !dbg !498
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %mul14, i32 4, i1 false), !dbg !498
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !241), !dbg !498
  br label %while.body1121, !dbg !498

while.body1121:                                   ; preds = %if.then1150, %for.body1184, %for.cond1181.loopexit, %for.cond1106.preheader
  %typed_outval1100.0 = phi double [ 0.000000e+00, %for.cond1106.preheader ], [ %typed_outval1100.1.lcssa, %for.cond1181.loopexit ], [ %typed_outval1100.1.lcssa, %for.body1184 ], [ %typed_outval1100.1.lcssa, %if.then1150 ]
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !242), !dbg !500
  tail call void @llvm.dbg.value(metadata !299, i64 0, metadata !238), !dbg !502
  br i1 %cmp162015, label %for.body1125, label %for.end1134, !dbg !502

for.body1125:                                     ; preds = %for.body1125, %while.body1121
  %indvars.iv2045 = phi i64 [ 1, %while.body1121 ], [ %indvars.iv.next2046, %for.body1125 ]
  %_vindex1096.11792 = phi i32 [ 0, %while.body1121 ], [ %add1131, %for.body1125 ]
  %arrayidx1127 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2045, !dbg !502
  %176 = load i32* %arrayidx1127, align 4, !dbg !502, !tbaa !293
  %arrayidx1129 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv2045, !dbg !502
  %177 = load i32* %arrayidx1129, align 4, !dbg !502, !tbaa !293
  %mul1130 = mul nsw i32 %177, %176, !dbg !502
  %add1131 = add nsw i32 %mul1130, %_vindex1096.11792, !dbg !502
  tail call void @llvm.dbg.value(metadata !{i32 %add1131}, i64 0, metadata !242), !dbg !502
  %indvars.iv.next2046 = add i64 %indvars.iv2045, 1, !dbg !502
  %lftr.wideiv2047 = trunc i64 %indvars.iv.next2046 to i32, !dbg !502
  %exitcond2048 = icmp eq i32 %lftr.wideiv2047, %num_dims, !dbg !502
  br i1 %exitcond2048, label %for.cond1122.for.end1134_crit_edge, label %for.body1125, !dbg !502

for.cond1122.for.end1134_crit_edge:               ; preds = %for.body1125
  %phitmp = sext i32 %add1131 to i64, !dbg !502
  br label %for.end1134, !dbg !502

for.end1134:                                      ; preds = %for.cond1122.for.end1134_crit_edge, %while.body1121
  %_vindex1096.1.lcssa = phi i64 [ %phitmp, %for.cond1122.for.end1134_crit_edge ], [ 0, %while.body1121 ]
  %178 = load i32* %from, align 4, !dbg !504, !tbaa !293
  tail call void @llvm.dbg.value(metadata !{i32 %178}, i64 0, metadata !238), !dbg !504
  %179 = load i32* %to, align 4, !dbg !504, !tbaa !293
  %cmp11381794 = icmp slt i32 %178, %179, !dbg !504
  br i1 %cmp11381794, label %for.body1140.lr.ph, label %for.end1147, !dbg !504

for.body1140.lr.ph:                               ; preds = %for.end1134
  %180 = sext i32 %178 to i64
  br label %for.body1140, !dbg !504

for.body1140:                                     ; preds = %for.body1140.lr.ph, %for.body1140
  %indvars.iv2049 = phi i64 [ %180, %for.body1140.lr.ph ], [ %indvars.iv.next2050, %for.body1140 ]
  %typed_outval1100.11796 = phi double [ %typed_outval1100.0, %for.body1140.lr.ph ], [ %add1144, %for.body1140 ]
  %181 = add nsw i64 %indvars.iv2049, %_vindex1096.1.lcssa, !dbg !506
  %182 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata1097.01811, i64 %181, i32 0, !dbg !506
  %183 = load double* %182, align 1, !dbg !506
  %184 = getelementptr %struct.CCTK_COMPLEX16* %typed_vdata1097.01811, i64 %181, i32 1, !dbg !506
  %185 = load double* %184, align 1, !dbg !506
  %call = tail call double @CCTK_Cmplx16Abs(double %183, double %185) #5, !dbg !506
  %add1144 = fadd double %typed_outval1100.11796, %call, !dbg !506
  tail call void @llvm.dbg.value(metadata !{double %add1144}, i64 0, metadata !251), !dbg !506
  %indvars.iv.next2050 = add i64 %indvars.iv2049, 1, !dbg !504
  %186 = load i32* %to, align 4, !dbg !504, !tbaa !293
  %187 = trunc i64 %indvars.iv.next2050 to i32, !dbg !504
  %cmp1138 = icmp slt i32 %187, %186, !dbg !504
  br i1 %cmp1138, label %for.body1140, label %for.end1147, !dbg !504

for.end1147:                                      ; preds = %for.body1140, %for.end1134
  %typed_outval1100.1.lcssa = phi double [ %typed_outval1100.0, %for.end1134 ], [ %add1144, %for.body1140 ]
  br i1 %cmp162015, label %if.then1150, label %while.end1195, !dbg !500

if.then1150:                                      ; preds = %for.end1147
  %188 = load i32* %arrayidx47, align 4, !dbg !508, !tbaa !293
  %inc1153 = add nsw i32 %188, 1, !dbg !508
  store i32 %inc1153, i32* %arrayidx47, align 4, !dbg !508, !tbaa !293
  %189 = load i32* %arrayidx50, align 4, !dbg !508, !tbaa !293
  %cmp1156 = icmp slt i32 %inc1153, %189, !dbg !508
  br i1 %cmp1156, label %while.body1121, label %for.cond1160.preheader, !dbg !508

for.cond1160.preheader:                           ; preds = %if.then1150
  br i1 %cmp562025, label %for.body1163, label %while.end1195, !dbg !510

for.cond1160:                                     ; preds = %for.body1163
  %inc1174 = add nsw i32 %_dim1095.11800, 1, !dbg !510
  %190 = trunc i64 %indvars.iv.next2054 to i32, !dbg !510
  %cmp1161 = icmp slt i32 %190, %num_dims, !dbg !510
  br i1 %cmp1161, label %for.body1163, label %while.end1195, !dbg !510

for.body1163:                                     ; preds = %for.cond1160.preheader, %for.cond1160
  %indvars.iv2053 = phi i64 [ %indvars.iv.next2054, %for.cond1160 ], [ 2, %for.cond1160.preheader ]
  %_dim1095.11800 = phi i32 [ %inc1174, %for.cond1160 ], [ 2, %for.cond1160.preheader ]
  %arrayidx1165 = getelementptr inbounds i32* %iterator, i64 %indvars.iv2053, !dbg !513
  %191 = load i32* %arrayidx1165, align 4, !dbg !513, !tbaa !293
  %inc1166 = add nsw i32 %191, 1, !dbg !513
  store i32 %inc1166, i32* %arrayidx1165, align 4, !dbg !513, !tbaa !293
  %arrayidx1168 = getelementptr inbounds i32* %to, i64 %indvars.iv2053, !dbg !513
  %192 = load i32* %arrayidx1168, align 4, !dbg !513, !tbaa !293
  %cmp1169 = icmp slt i32 %inc1166, %192, !dbg !513
  %indvars.iv.next2054 = add i64 %indvars.iv2053, 1, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %inc1174}, i64 0, metadata !241), !dbg !510
  br i1 %cmp1169, label %for.cond1181.loopexit, label %for.cond1160, !dbg !513

for.cond1181.loopexit:                            ; preds = %for.body1163
  %cmp11821802 = icmp sgt i32 %_dim1095.11800, 0, !dbg !515
  br i1 %cmp11821802, label %for.body1184.lr.ph, label %while.body1121, !dbg !515

for.body1184.lr.ph:                               ; preds = %for.cond1181.loopexit
  %193 = sext i32 %_dim1095.11800 to i64
  br label %for.body1184, !dbg !515

for.body1184:                                     ; preds = %for.body1184.lr.ph, %for.body1184
  %indvars.iv2055 = phi i64 [ %193, %for.body1184.lr.ph ], [ %indvars.iv.next2056, %for.body1184 ]
  %indvars.iv.next2056 = add i64 %indvars.iv2055, -1, !dbg !515
  %arrayidx1186 = getelementptr inbounds i32* %from, i64 %indvars.iv.next2056, !dbg !515
  %194 = load i32* %arrayidx1186, align 4, !dbg !515, !tbaa !293
  %arrayidx1188 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next2056, !dbg !515
  store i32 %194, i32* %arrayidx1188, align 4, !dbg !515, !tbaa !293
  %195 = trunc i64 %indvars.iv.next2056 to i32, !dbg !515
  %cmp1182 = icmp sgt i32 %195, 0, !dbg !515
  br i1 %cmp1182, label %for.body1184, label %while.body1121, !dbg !515

while.end1195:                                    ; preds = %for.end1147, %for.cond1160, %for.cond1160.preheader
  %indvars.iv.next2062 = add i64 %indvars.iv2061, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %196}, i64 0, metadata !92), !dbg !498
  %arrayidx1198 = getelementptr inbounds double* %outvals, i64 %indvars.iv2061, !dbg !498
  store double %typed_outval1100.1.lcssa, double* %arrayidx1198, align 8, !dbg !498, !tbaa !309
  %inc1200 = add nsw i32 %_j1094.01810, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{i32 %inc1200}, i64 0, metadata !240), !dbg !496
  %incdec.ptr1201 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata1097.01811, i64 1, !dbg !496
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %incdec.ptr1201}, i64 0, metadata !243), !dbg !496
  %exitcond2063 = icmp eq i32 %inc1200, %num_outvals, !dbg !496
  br i1 %exitcond2063, label %for.cond1101.for.inc1204.loopexit_crit_edge, label %for.cond1106.preheader, !dbg !496

sw.default:                                       ; preds = %for.body
  %call1203 = tail call i32 @CCTK_Warn(i32 1, i32 318, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !517
  br label %return, !dbg !518

for.cond1101.for.inc1204.loopexit_crit_edge:      ; preds = %while.end1195
  %196 = add i32 %total_outvals.02043, %num_outvals, !dbg !496
  br label %for.inc1204, !dbg !496

for.cond976.for.inc1204.loopexit1834_crit_edge:   ; preds = %while.end1083
  %197 = add i32 %total_outvals.02043, %num_outvals, !dbg !472
  br label %for.inc1204, !dbg !472

for.cond852.for.inc1204.loopexit1859_crit_edge:   ; preds = %while.end959
  %198 = add i32 %total_outvals.02043, %num_outvals, !dbg !450
  br label %for.inc1204, !dbg !450

for.cond727.for.inc1204.loopexit1884_crit_edge:   ; preds = %while.end834
  %199 = add i32 %total_outvals.02043, %num_outvals, !dbg !426
  br label %for.inc1204, !dbg !426

for.cond603.for.inc1204.loopexit1909_crit_edge:   ; preds = %while.end710
  %200 = add i32 %total_outvals.02043, %num_outvals, !dbg !403
  br label %for.inc1204, !dbg !403

for.cond478.for.inc1204.loopexit1934_crit_edge:   ; preds = %while.end585
  %201 = add i32 %total_outvals.02043, %num_outvals, !dbg !379
  br label %for.inc1204, !dbg !379

for.cond353.for.inc1204.loopexit1959_crit_edge:   ; preds = %while.end460
  %202 = add i32 %total_outvals.02043, %num_outvals, !dbg !357
  br label %for.inc1204, !dbg !357

for.cond223.for.inc1204.loopexit1984_crit_edge:   ; preds = %while.end335
  %203 = add i32 %total_outvals.02043, %num_outvals, !dbg !333
  br label %for.inc1204, !dbg !333

for.cond103.for.inc1204.loopexit2009_crit_edge:   ; preds = %while.end205
  %204 = add i32 %total_outvals.02043, %num_outvals, !dbg !311
  br label %for.inc1204, !dbg !311

for.cond3.for.inc1204.loopexit2034_crit_edge:     ; preds = %while.end
  %205 = add i32 %total_outvals.02043, %num_outvals, !dbg !280
  br label %for.inc1204, !dbg !280

for.inc1204:                                      ; preds = %sw.bb, %for.cond3.for.inc1204.loopexit2034_crit_edge, %sw.bb94, %for.cond103.for.inc1204.loopexit2009_crit_edge, %sw.bb214, %for.cond223.for.inc1204.loopexit1984_crit_edge, %sw.bb344, %for.cond353.for.inc1204.loopexit1959_crit_edge, %sw.bb469, %for.cond478.for.inc1204.loopexit1934_crit_edge, %sw.bb594, %for.cond603.for.inc1204.loopexit1909_crit_edge, %sw.bb718, %for.cond727.for.inc1204.loopexit1884_crit_edge, %sw.bb843, %for.cond852.for.inc1204.loopexit1859_crit_edge, %sw.bb967, %for.cond976.for.inc1204.loopexit1834_crit_edge, %sw.bb1092, %for.cond1101.for.inc1204.loopexit_crit_edge
  %total_outvals.11 = phi i32 [ %196, %for.cond1101.for.inc1204.loopexit_crit_edge ], [ %total_outvals.02043, %sw.bb1092 ], [ %197, %for.cond976.for.inc1204.loopexit1834_crit_edge ], [ %total_outvals.02043, %sw.bb967 ], [ %198, %for.cond852.for.inc1204.loopexit1859_crit_edge ], [ %total_outvals.02043, %sw.bb843 ], [ %199, %for.cond727.for.inc1204.loopexit1884_crit_edge ], [ %total_outvals.02043, %sw.bb718 ], [ %200, %for.cond603.for.inc1204.loopexit1909_crit_edge ], [ %total_outvals.02043, %sw.bb594 ], [ %201, %for.cond478.for.inc1204.loopexit1934_crit_edge ], [ %total_outvals.02043, %sw.bb469 ], [ %202, %for.cond353.for.inc1204.loopexit1959_crit_edge ], [ %total_outvals.02043, %sw.bb344 ], [ %203, %for.cond223.for.inc1204.loopexit1984_crit_edge ], [ %total_outvals.02043, %sw.bb214 ], [ %204, %for.cond103.for.inc1204.loopexit2009_crit_edge ], [ %total_outvals.02043, %sw.bb94 ], [ %205, %for.cond3.for.inc1204.loopexit2034_crit_edge ], [ %total_outvals.02043, %sw.bb ]
  %indvars.iv.next2236 = add i64 %indvars.iv2235, 1, !dbg !279
  %206 = trunc i64 %indvars.iv.next2236 to i32, !dbg !279
  %cmp = icmp slt i32 %206, %num_inarrays, !dbg !279
  br i1 %cmp, label %for.body, label %for.end1206, !dbg !279

for.end1206:                                      ; preds = %for.inc1204, %entry
  %total_outvals.0.lcssa = phi i32 [ 0, %entry ], [ %total_outvals.11, %for.inc1204 ]
  %call1207 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5, !dbg !519
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call1207}, i64 0, metadata !93), !dbg !519
  %cmp1208 = icmp slt i32 %proc, 0, !dbg !520
  br i1 %cmp1208, label %for.cond1213.preheader, label %lor.lhs.false, !dbg !520

lor.lhs.false:                                    ; preds = %for.end1206
  %myproc = getelementptr inbounds %struct.PGH* %call1207, i64 0, i32 3, !dbg !520
  %207 = load i32* %myproc, align 4, !dbg !520, !tbaa !293
  %cmp1210 = icmp eq i32 %207, %proc, !dbg !520
  %cmp12141788 = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !521
  %or.cond = and i1 %cmp1210, %cmp12141788, !dbg !520
  br i1 %or.cond, label %for.body1216.lr.ph, label %return, !dbg !520

for.cond1213.preheader:                           ; preds = %for.end1206
  %cmp12141788.old = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !521
  br i1 %cmp12141788.old, label %for.body1216.lr.ph, label %return, !dbg !521

for.body1216.lr.ph:                               ; preds = %lor.lhs.false, %for.cond1213.preheader
  %conv1217 = sitofp i32 %num_points to double, !dbg !524
  br label %for.body1216, !dbg !521

for.body1216:                                     ; preds = %for.body1216, %for.body1216.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body1216.lr.ph ], [ %indvars.iv.next, %for.body1216 ]
  %arrayidx1219 = getelementptr inbounds double* %outvals, i64 %indvars.iv, !dbg !524
  %208 = load double* %arrayidx1219, align 8, !dbg !524, !tbaa !309
  %div = fdiv double %208, %conv1217, !dbg !524
  store double %div, double* %arrayidx1219, align 8, !dbg !524, !tbaa !309
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !521
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !521
  %exitcond = icmp eq i32 %lftr.wideiv, %total_outvals.0.lcssa, !dbg !521
  br i1 %exitcond, label %return, label %for.body1216, !dbg !521

return:                                           ; preds = %for.cond1213.preheader, %for.body1216, %lor.lhs.false, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %lor.lhs.false ], [ 0, %for.body1216 ], [ 0, %for.cond1213.preheader ]
  ret i32 %retval.0, !dbg !526
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_ReductionNorm1GVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !67), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %proc}, i64 0, metadata !68), !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %num_outvals}, i64 0, metadata !69), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %outtype}, i64 0, metadata !70), !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %outvals}, i64 0, metadata !71), !dbg !531
  tail call void @llvm.dbg.value(metadata !{i32 %num_invars}, i64 0, metadata !72), !dbg !532
  tail call void @llvm.dbg.value(metadata !{i32* %invars}, i64 0, metadata !73), !dbg !533
  %call = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm1) #5, !dbg !534
  ret i32 %call, !dbg !534
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionGVs(%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare double @CCTK_Cmplx16Abs(double, double) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !252, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !63, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c", metadata !"CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm1Arrays", metadata !"PUGH_ReductionNorm1Arrays", metadata !"", i32 111, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm1Arrays, null, null, metadata !52, i32 121} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 121] [PUGH_ReductionNorm1Arrays]
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
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777327, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 111]
!54 = metadata !{i32 786689, metadata !11, metadata !"proc", metadata !5, i32 33554544, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 112]
!55 = metadata !{i32 786689, metadata !11, metadata !"num_dims", metadata !5, i32 50331761, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_dims] [line 113]
!56 = metadata !{i32 786689, metadata !11, metadata !"dims", metadata !5, i32 67108978, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dims] [line 114]
!57 = metadata !{i32 786689, metadata !11, metadata !"num_inarrays", metadata !5, i32 83886195, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_inarrays] [line 115]
!58 = metadata !{i32 786689, metadata !11, metadata !"inarrays", metadata !5, i32 100663412, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarrays] [line 116]
!59 = metadata !{i32 786689, metadata !11, metadata !"intype", metadata !5, i32 117440629, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intype] [line 117]
!60 = metadata !{i32 786689, metadata !11, metadata !"num_outvals", metadata !5, i32 134217846, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 118]
!61 = metadata !{i32 786689, metadata !11, metadata !"outvals", metadata !5, i32 150995063, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 119]
!62 = metadata !{i32 786689, metadata !11, metadata !"outtype", metadata !5, i32 167772280, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 120]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm1GVs", metadata !"PUGH_ReductionNorm1GVs", metadata !"", i32 179, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm1GVs, null, null, metadata !66, i32 186} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 186] [PUGH_ReductionNorm1GVs]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !14, metadata !43, metadata !14, metadata !23}
!66 = metadata !{metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!67 = metadata !{i32 786689, metadata !63, metadata !"GH", metadata !5, i32 16777395, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 179]
!68 = metadata !{i32 786689, metadata !63, metadata !"proc", metadata !5, i32 33554612, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 180]
!69 = metadata !{i32 786689, metadata !63, metadata !"num_outvals", metadata !5, i32 50331829, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 181]
!70 = metadata !{i32 786689, metadata !63, metadata !"outtype", metadata !5, i32 67109046, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outtype] [line 182]
!71 = metadata !{i32 786689, metadata !63, metadata !"outvals", metadata !5, i32 83886263, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 183]
!72 = metadata !{i32 786689, metadata !63, metadata !"num_invars", metadata !5, i32 100663480, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_invars] [line 184]
!73 = metadata !{i32 786689, metadata !63, metadata !"invars", metadata !5, i32 117440697, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [invars] [line 185]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_ReductionNorm1", metadata !"PUGH_ReductionNorm1", metadata !"", i32 207, metadata !75, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm1, null, null, metadata !77, i32 220} ; [ DW_TAG_subprogram ] [line 207] [local] [def] [scope 220] [PUGH_ReductionNorm1]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{metadata !14, metadata !15, metadata !14, metadata !14, metadata !23, metadata !23, metadata !23, metadata !23, metadata !14, metadata !14, metadata !23, metadata !42, metadata !14, metadata !33}
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !161, metadata !166, metadata !167, metadata !168, metadata !169, metadata !173, metadata !174, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !183, metadata !184, metadata !185, metadata !186, metadata !189, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !201, metadata !202, metadata !205, metadata !206, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !215, metadata !216, metadata !217, metadata !218, metadata !221, metadata !222, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !237, metadata !238, metadata !240, metadata !241, metadata !242, metadata !243, metadata !251}
!78 = metadata !{i32 786689, metadata !74, metadata !"GH", metadata !5, i32 16777423, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 207]
!79 = metadata !{i32 786689, metadata !74, metadata !"proc", metadata !5, i32 33554640, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 208]
!80 = metadata !{i32 786689, metadata !74, metadata !"num_dims", metadata !5, i32 50331857, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_dims] [line 209]
!81 = metadata !{i32 786689, metadata !74, metadata !"from", metadata !5, i32 67109074, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 210]
!82 = metadata !{i32 786689, metadata !74, metadata !"to", metadata !5, i32 83886291, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 211]
!83 = metadata !{i32 786689, metadata !74, metadata !"iterator", metadata !5, i32 100663508, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iterator] [line 212]
!84 = metadata !{i32 786689, metadata !74, metadata !"points_per_dim", metadata !5, i32 117440725, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [points_per_dim] [line 213]
!85 = metadata !{i32 786689, metadata !74, metadata !"num_points", metadata !5, i32 134217942, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_points] [line 214]
!86 = metadata !{i32 786689, metadata !74, metadata !"num_inarrays", metadata !5, i32 150995159, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_inarrays] [line 215]
!87 = metadata !{i32 786689, metadata !74, metadata !"intypes", metadata !5, i32 167772376, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [intypes] [line 216]
!88 = metadata !{i32 786689, metadata !74, metadata !"inarrays", metadata !5, i32 184549593, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inarrays] [line 217]
!89 = metadata !{i32 786689, metadata !74, metadata !"num_outvals", metadata !5, i32 201326810, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_outvals] [line 218]
!90 = metadata !{i32 786689, metadata !74, metadata !"outvals", metadata !5, i32 218104027, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outvals] [line 219]
!91 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !5, i32 221, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 221]
!92 = metadata !{i32 786688, metadata !74, metadata !"total_outvals", metadata !5, i32 221, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_outvals] [line 221]
!93 = metadata !{i32 786688, metadata !74, metadata !"pughGH", metadata !5, i32 222, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 222]
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
!161 = metadata !{i32 786688, metadata !162, metadata !"_i", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 242]
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 242, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 239, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!164 = metadata !{i32 786443, metadata !1, metadata !165, i32 237, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!165 = metadata !{i32 786443, metadata !1, metadata !74, i32 236, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!166 = metadata !{i32 786688, metadata !162, metadata !"_j", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 242]
!167 = metadata !{i32 786688, metadata !162, metadata !"_dim", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 242]
!168 = metadata !{i32 786688, metadata !162, metadata !"_vindex", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 242]
!169 = metadata !{i32 786688, metadata !162, metadata !"typed_vdata", metadata !5, i32 242, metadata !170, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 242]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_BYTE]
!171 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_BYTE", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [CCTK_BYTE] [line 59, size 0, align 0, offset 0] [from unsigned char]
!172 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!173 = metadata !{i32 786688, metadata !162, metadata !"typed_outval", metadata !5, i32 242, metadata !171, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 242]
!174 = metadata !{i32 786688, metadata !175, metadata !"_i", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 250]
!175 = metadata !{i32 786443, metadata !1, metadata !163, i32 250, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!176 = metadata !{i32 786688, metadata !175, metadata !"_j", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 250]
!177 = metadata !{i32 786688, metadata !175, metadata !"_dim", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 250]
!178 = metadata !{i32 786688, metadata !175, metadata !"_vindex", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 250]
!179 = metadata !{i32 786688, metadata !175, metadata !"typed_vdata", metadata !5, i32 250, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 250]
!180 = metadata !{i32 786688, metadata !175, metadata !"typed_outval", metadata !5, i32 250, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 250]
!181 = metadata !{i32 786688, metadata !182, metadata !"_i", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 257]
!182 = metadata !{i32 786443, metadata !1, metadata !163, i32 257, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!183 = metadata !{i32 786688, metadata !182, metadata !"_j", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 257]
!184 = metadata !{i32 786688, metadata !182, metadata !"_dim", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 257]
!185 = metadata !{i32 786688, metadata !182, metadata !"_vindex", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 257]
!186 = metadata !{i32 786688, metadata !182, metadata !"typed_vdata", metadata !5, i32 257, metadata !187, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 257]
!187 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!188 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!189 = metadata !{i32 786688, metadata !182, metadata !"typed_outval", metadata !5, i32 257, metadata !188, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 257]
!190 = metadata !{i32 786688, metadata !191, metadata !"_i", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 265]
!191 = metadata !{i32 786443, metadata !1, metadata !163, i32 265, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"_j", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 265]
!193 = metadata !{i32 786688, metadata !191, metadata !"_dim", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 265]
!194 = metadata !{i32 786688, metadata !191, metadata !"_vindex", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 265]
!195 = metadata !{i32 786688, metadata !191, metadata !"typed_vdata", metadata !5, i32 265, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 265]
!196 = metadata !{i32 786688, metadata !191, metadata !"typed_outval", metadata !5, i32 265, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 265]
!197 = metadata !{i32 786688, metadata !198, metadata !"_i", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 273]
!198 = metadata !{i32 786443, metadata !1, metadata !163, i32 273, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!199 = metadata !{i32 786688, metadata !198, metadata !"_j", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 273]
!200 = metadata !{i32 786688, metadata !198, metadata !"_dim", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 273]
!201 = metadata !{i32 786688, metadata !198, metadata !"_vindex", metadata !5, i32 273, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 273]
!202 = metadata !{i32 786688, metadata !198, metadata !"typed_vdata", metadata !5, i32 273, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 273]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!204 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!205 = metadata !{i32 786688, metadata !198, metadata !"typed_outval", metadata !5, i32 273, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 273]
!206 = metadata !{i32 786688, metadata !207, metadata !"_i", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 280]
!207 = metadata !{i32 786443, metadata !1, metadata !163, i32 280, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!208 = metadata !{i32 786688, metadata !207, metadata !"_j", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 280]
!209 = metadata !{i32 786688, metadata !207, metadata !"_dim", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 280]
!210 = metadata !{i32 786688, metadata !207, metadata !"_vindex", metadata !5, i32 280, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 280]
!211 = metadata !{i32 786688, metadata !207, metadata !"typed_vdata", metadata !5, i32 280, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 280]
!212 = metadata !{i32 786688, metadata !207, metadata !"typed_outval", metadata !5, i32 280, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 280]
!213 = metadata !{i32 786688, metadata !214, metadata !"_i", metadata !5, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 287]
!214 = metadata !{i32 786443, metadata !1, metadata !163, i32 287, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!215 = metadata !{i32 786688, metadata !214, metadata !"_j", metadata !5, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 287]
!216 = metadata !{i32 786688, metadata !214, metadata !"_dim", metadata !5, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 287]
!217 = metadata !{i32 786688, metadata !214, metadata !"_vindex", metadata !5, i32 287, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 287]
!218 = metadata !{i32 786688, metadata !214, metadata !"typed_vdata", metadata !5, i32 287, metadata !219, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 287]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!220 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!221 = metadata !{i32 786688, metadata !214, metadata !"typed_outval", metadata !5, i32 287, metadata !220, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 287]
!222 = metadata !{i32 786688, metadata !223, metadata !"_i", metadata !5, i32 295, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 295]
!223 = metadata !{i32 786443, metadata !1, metadata !163, i32 295, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!224 = metadata !{i32 786688, metadata !223, metadata !"_j", metadata !5, i32 295, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 295]
!225 = metadata !{i32 786688, metadata !223, metadata !"_dim", metadata !5, i32 295, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 295]
!226 = metadata !{i32 786688, metadata !223, metadata !"_vindex", metadata !5, i32 295, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 295]
!227 = metadata !{i32 786688, metadata !223, metadata !"typed_vdata", metadata !5, i32 295, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 295]
!228 = metadata !{i32 786688, metadata !223, metadata !"typed_outval", metadata !5, i32 295, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 295]
!229 = metadata !{i32 786688, metadata !230, metadata !"_i", metadata !5, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 303]
!230 = metadata !{i32 786443, metadata !1, metadata !163, i32 303, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!231 = metadata !{i32 786688, metadata !230, metadata !"_j", metadata !5, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_j] [line 303]
!232 = metadata !{i32 786688, metadata !230, metadata !"_dim", metadata !5, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dim] [line 303]
!233 = metadata !{i32 786688, metadata !230, metadata !"_vindex", metadata !5, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_vindex] [line 303]
!234 = metadata !{i32 786688, metadata !230, metadata !"typed_vdata", metadata !5, i32 303, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_vdata] [line 303]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long double]
!236 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!237 = metadata !{i32 786688, metadata !230, metadata !"typed_outval", metadata !5, i32 303, metadata !236, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typed_outval] [line 303]
!238 = metadata !{i32 786688, metadata !239, metadata !"_i", metadata !5, i32 312, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_i] [line 312]
!239 = metadata !{i32 786443, metadata !1, metadata !163, i32 312, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
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
!253 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!254 = metadata !{i32 23, i32 0, metadata !4, null}
!255 = metadata !{i32 111, i32 0, metadata !11, null}
!256 = metadata !{i32 112, i32 0, metadata !11, null}
!257 = metadata !{i32 113, i32 0, metadata !11, null}
!258 = metadata !{i32 114, i32 0, metadata !11, null}
!259 = metadata !{i32 115, i32 0, metadata !11, null}
!260 = metadata !{i32 116, i32 0, metadata !11, null}
!261 = metadata !{i32 117, i32 0, metadata !11, null}
!262 = metadata !{i32 118, i32 0, metadata !11, null}
!263 = metadata !{i32 119, i32 0, metadata !11, null}
!264 = metadata !{i32 120, i32 0, metadata !11, null}
!265 = metadata !{i32 122, i32 0, metadata !11, null}
!266 = metadata !{i32 207, i32 0, metadata !74, null}
!267 = metadata !{i32 208, i32 0, metadata !74, null}
!268 = metadata !{i32 209, i32 0, metadata !74, null}
!269 = metadata !{i32 210, i32 0, metadata !74, null}
!270 = metadata !{i32 211, i32 0, metadata !74, null}
!271 = metadata !{i32 212, i32 0, metadata !74, null}
!272 = metadata !{i32 213, i32 0, metadata !74, null}
!273 = metadata !{i32 214, i32 0, metadata !74, null}
!274 = metadata !{i32 215, i32 0, metadata !74, null}
!275 = metadata !{i32 216, i32 0, metadata !74, null}
!276 = metadata !{i32 217, i32 0, metadata !74, null}
!277 = metadata !{i32 218, i32 0, metadata !74, null}
!278 = metadata !{i32 219, i32 0, metadata !74, null}
!279 = metadata !{i32 236, i32 0, metadata !165, null}
!280 = metadata !{i32 242, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !162, i32 242, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!282 = metadata !{i32 242, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 242, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!284 = metadata !{i32 242, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 242, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!286 = metadata !{i32 786443, metadata !1, metadata !283, i32 242, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!287 = metadata !{i32 242, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !286, i32 242, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!289 = metadata !{i32 242, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 242, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 242, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!292 = metadata !{i32 238, i32 0, metadata !164, null}
!293 = metadata !{metadata !"int", metadata !294}
!294 = metadata !{metadata !"omnipotent char", metadata !295}
!295 = metadata !{metadata !"Simple C/C++ TBAA"}
!296 = metadata !{i32 242, i32 0, metadata !162, null}
!297 = metadata !{metadata !"any pointer", metadata !294}
!298 = metadata !{i8 0}
!299 = metadata !{i32 1}
!300 = metadata !{i32 242, i32 0, metadata !286, null}
!301 = metadata !{i32 242, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !286, i32 242, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!303 = metadata !{i32 242, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !302, i32 242, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!305 = metadata !{i32 242, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !290, i32 242, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!307 = metadata !{i32 242, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !291, i32 242, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!309 = metadata !{metadata !"double", metadata !294}
!310 = metadata !{i32 250, i32 0, metadata !175, null}
!311 = metadata !{i32 250, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !175, i32 250, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!313 = metadata !{i32 250, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !312, i32 250, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!315 = metadata !{i32 250, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !314, i32 250, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!317 = metadata !{i32 250, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !316, i32 250, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!319 = metadata !{i32 250, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !316, i32 250, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!321 = metadata !{i32 250, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 250, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!323 = metadata !{i32 250, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !316, i32 250, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!325 = metadata !{i32 250, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !327, i32 250, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!327 = metadata !{i32 786443, metadata !1, metadata !324, i32 250, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!328 = metadata !{i32 250, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !326, i32 250, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!330 = metadata !{i32 250, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !327, i32 250, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!332 = metadata !{i32 257, i32 0, metadata !182, null}
!333 = metadata !{i32 257, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !182, i32 257, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!335 = metadata !{i16 0}
!336 = metadata !{i32 257, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !334, i32 257, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!338 = metadata !{i32 257, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !337, i32 257, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!340 = metadata !{i32 257, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 257, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!342 = metadata !{i32 257, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !339, i32 257, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!344 = metadata !{i32 257, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 257, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!346 = metadata !{metadata !"short", metadata !294}
!347 = metadata !{i32 257, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !339, i32 257, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!349 = metadata !{i32 257, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !351, i32 257, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!351 = metadata !{i32 786443, metadata !1, metadata !348, i32 257, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!352 = metadata !{i32 257, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !350, i32 257, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!354 = metadata !{i32 257, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !351, i32 257, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!356 = metadata !{i32 265, i32 0, metadata !191, null}
!357 = metadata !{i32 265, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !191, i32 265, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!359 = metadata !{i32 265, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !358, i32 265, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!361 = metadata !{i32 265, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !360, i32 265, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!363 = metadata !{i32 265, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !362, i32 265, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!365 = metadata !{i32 265, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !362, i32 265, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!367 = metadata !{i32 265, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !366, i32 265, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!369 = metadata !{i32 265, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !362, i32 265, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!371 = metadata !{i32 265, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !373, i32 265, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!373 = metadata !{i32 786443, metadata !1, metadata !370, i32 265, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!374 = metadata !{i32 265, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !372, i32 265, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!376 = metadata !{i32 265, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !373, i32 265, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!378 = metadata !{i32 273, i32 0, metadata !198, null}
!379 = metadata !{i32 273, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !198, i32 273, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!381 = metadata !{i64 0}
!382 = metadata !{i32 273, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !380, i32 273, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!384 = metadata !{i32 273, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !383, i32 273, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!386 = metadata !{i32 273, i32 0, metadata !387, null}
!387 = metadata !{i32 786443, metadata !1, metadata !385, i32 273, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!388 = metadata !{i32 273, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !385, i32 273, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!390 = metadata !{i32 273, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !389, i32 273, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!392 = metadata !{metadata !"long", metadata !294}
!393 = metadata !{i32 273, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !385, i32 273, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!395 = metadata !{i32 273, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !397, i32 273, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!397 = metadata !{i32 786443, metadata !1, metadata !394, i32 273, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!398 = metadata !{i32 273, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !396, i32 273, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!400 = metadata !{i32 273, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !397, i32 273, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!402 = metadata !{i32 280, i32 0, metadata !207, null}
!403 = metadata !{i32 280, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !207, i32 280, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!405 = metadata !{double 0.000000e+00}
!406 = metadata !{i32 280, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !404, i32 280, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!408 = metadata !{i32 280, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !407, i32 280, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!410 = metadata !{i32 280, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !409, i32 280, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!412 = metadata !{i32 280, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !409, i32 280, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!414 = metadata !{i32 280, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !413, i32 280, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!416 = metadata !{i32 280, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !409, i32 280, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!418 = metadata !{i32 280, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !420, i32 280, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 280, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!421 = metadata !{i32 280, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !419, i32 280, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!423 = metadata !{i32 280, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !420, i32 280, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!425 = metadata !{i32 287, i32 0, metadata !214, null}
!426 = metadata !{i32 287, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !214, i32 287, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!428 = metadata !{float 0.000000e+00}
!429 = metadata !{i32 287, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !427, i32 287, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!431 = metadata !{i32 287, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !430, i32 287, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!433 = metadata !{i32 287, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 287, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!435 = metadata !{i32 287, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !432, i32 287, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!437 = metadata !{i32 287, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 287, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!439 = metadata !{metadata !"float", metadata !294}
!440 = metadata !{i32 287, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !432, i32 287, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!442 = metadata !{i32 287, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !444, i32 287, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!444 = metadata !{i32 786443, metadata !1, metadata !441, i32 287, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!445 = metadata !{i32 287, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !443, i32 287, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!447 = metadata !{i32 287, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !444, i32 287, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!449 = metadata !{i32 295, i32 0, metadata !223, null}
!450 = metadata !{i32 295, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !223, i32 295, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!452 = metadata !{i32 295, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !451, i32 295, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!454 = metadata !{i32 295, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !453, i32 295, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!456 = metadata !{i32 295, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !455, i32 295, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!458 = metadata !{i32 295, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !455, i32 295, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!460 = metadata !{i32 295, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !459, i32 295, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!462 = metadata !{i32 295, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !455, i32 295, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!464 = metadata !{i32 295, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 295, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!466 = metadata !{i32 786443, metadata !1, metadata !463, i32 295, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!467 = metadata !{i32 295, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !465, i32 295, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!469 = metadata !{i32 295, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !466, i32 295, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!471 = metadata !{i32 303, i32 0, metadata !230, null}
!472 = metadata !{i32 303, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !230, i32 303, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!474 = metadata !{x86_fp80 0xK00000000000000000000}
!475 = metadata !{i32 303, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !473, i32 303, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!477 = metadata !{i32 303, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !476, i32 303, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!479 = metadata !{i32 303, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !478, i32 303, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!481 = metadata !{i32 303, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !478, i32 303, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!483 = metadata !{i32 303, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !482, i32 303, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!485 = metadata !{metadata !"long double", metadata !294}
!486 = metadata !{i32 303, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !478, i32 303, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!488 = metadata !{i32 303, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 303, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!490 = metadata !{i32 786443, metadata !1, metadata !487, i32 303, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!491 = metadata !{i32 303, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !489, i32 303, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!493 = metadata !{i32 303, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !490, i32 303, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!495 = metadata !{i32 312, i32 0, metadata !239, null}
!496 = metadata !{i32 312, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !239, i32 312, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!498 = metadata !{i32 312, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !1, metadata !497, i32 312, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!500 = metadata !{i32 312, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !499, i32 312, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!502 = metadata !{i32 312, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!504 = metadata !{i32 312, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!506 = metadata !{i32 312, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !505, i32 312, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!508 = metadata !{i32 312, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !501, i32 312, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!510 = metadata !{i32 312, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !512, i32 312, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!512 = metadata !{i32 786443, metadata !1, metadata !509, i32 312, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!513 = metadata !{i32 312, i32 0, metadata !514, null}
!514 = metadata !{i32 786443, metadata !1, metadata !511, i32 312, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!515 = metadata !{i32 312, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !512, i32 312, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!517 = metadata !{i32 318, i32 0, metadata !163, null}
!518 = metadata !{i32 319, i32 0, metadata !163, null}
!519 = metadata !{i32 323, i32 0, metadata !74, null}
!520 = metadata !{i32 349, i32 0, metadata !74, null}
!521 = metadata !{i32 351, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !523, i32 351, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!523 = metadata !{i32 786443, metadata !1, metadata !74, i32 350, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!524 = metadata !{i32 353, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !522, i32 352, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c]
!526 = metadata !{i32 357, i32 0, metadata !74, null}
!527 = metadata !{i32 179, i32 0, metadata !63, null}
!528 = metadata !{i32 180, i32 0, metadata !63, null}
!529 = metadata !{i32 181, i32 0, metadata !63, null}
!530 = metadata !{i32 182, i32 0, metadata !63, null}
!531 = metadata !{i32 183, i32 0, metadata !63, null}
!532 = metadata !{i32 184, i32 0, metadata !63, null}
!533 = metadata !{i32 185, i32 0, metadata !63, null}
!534 = metadata !{i32 187, i32 0, metadata !63, null}
