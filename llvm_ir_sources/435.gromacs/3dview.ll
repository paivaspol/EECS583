; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_3dview = type { [3 x [3 x float]], [4 x float], [4 x float], [4 x [4 x float]], [4 x [4 x float]], float, float }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"Error: invalid axis: %d\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"Error: Zero Length Vector - No View Specified\00", align 1
@rotate_3d.RotP = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@rotate_3d.RotM = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str7 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @m4_op([4 x float]* nocapture %m, float* nocapture %x, float* nocapture %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %m}, i64 0, metadata !16), !dbg !238
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !17), !dbg !238
  tail call void @llvm.dbg.value(metadata !{float* %v}, i64 0, metadata !18), !dbg !238
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !239
  %arrayidx6 = getelementptr inbounds float* %x, i64 1, !dbg !241
  %arrayidx11 = getelementptr inbounds float* %x, i64 2, !dbg !241
  br label %for.body, !dbg !239

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [4 x float]* %m, i64 0, i64 %indvars.iv, !dbg !241
  %0 = load float* %arrayidx1, align 4, !dbg !241, !tbaa !242
  %1 = load float* %x, align 4, !dbg !241, !tbaa !242
  %mul = fmul float %0, %1, !dbg !241
  %arrayidx5 = getelementptr inbounds [4 x float]* %m, i64 1, i64 %indvars.iv, !dbg !241
  %2 = load float* %arrayidx5, align 4, !dbg !241, !tbaa !242
  %3 = load float* %arrayidx6, align 4, !dbg !241, !tbaa !242
  %mul7 = fmul float %2, %3, !dbg !241
  %add = fadd float %mul, %mul7, !dbg !241
  %arrayidx10 = getelementptr inbounds [4 x float]* %m, i64 2, i64 %indvars.iv, !dbg !241
  %4 = load float* %arrayidx10, align 4, !dbg !241, !tbaa !242
  %5 = load float* %arrayidx11, align 4, !dbg !241, !tbaa !242
  %mul12 = fmul float %4, %5, !dbg !241
  %add13 = fadd float %add, %mul12, !dbg !241
  %arrayidx16 = getelementptr inbounds [4 x float]* %m, i64 3, i64 %indvars.iv, !dbg !241
  %6 = load float* %arrayidx16, align 4, !dbg !241, !tbaa !242
  %add17 = fadd float %6, %add13, !dbg !241
  %arrayidx19 = getelementptr inbounds float* %v, i64 %indvars.iv, !dbg !241
  store float %add17, float* %arrayidx19, align 4, !dbg !241, !tbaa !242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !239
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !239
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !239
  br i1 %exitcond, label %for.end, label %for.body, !dbg !239

for.end:                                          ; preds = %for.body
  ret void, !dbg !245
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define void @unity_m4([4 x float]* nocapture %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %m}, i64 0, metadata !25), !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !26), !dbg !247
  br label %for.cond1.preheader, !dbg !247

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv21 = phi i64 [ 0, %entry ], [ %indvars.iv.next22, %for.inc11 ]
  br label %for.body3, !dbg !249

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !251
  %1 = trunc i64 %indvars.iv21 to i32, !dbg !251
  %cmp4 = icmp eq i32 %1, %0, !dbg !251
  %arrayidx6 = getelementptr inbounds [4 x float]* %m, i64 %indvars.iv21, i64 %indvars.iv, !dbg !252
  %. = select i1 %cmp4, float 1.000000e+00, float 0.000000e+00, !dbg !252
  store float %., float* %arrayidx6, align 4, !dbg !252, !tbaa !242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !249
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !249
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !249
  br i1 %exitcond, label %for.inc11, label %for.body3, !dbg !249

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next22 = add i64 %indvars.iv21, 1, !dbg !247
  %lftr.wideiv23 = trunc i64 %indvars.iv.next22 to i32, !dbg !247
  %exitcond24 = icmp eq i32 %lftr.wideiv23, 4, !dbg !247
  br i1 %exitcond24, label %for.end13, label %for.cond1.preheader, !dbg !247

for.end13:                                        ; preds = %for.inc11
  ret void, !dbg !253
}

; Function Attrs: nounwind optsize uwtable
define void @print_m4(%struct._IO_FILE* %fp, i8* %s, [4 x float]* nocapture %A) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !89), !dbg !254
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !90), !dbg !254
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !91), !dbg !254
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !255
  br i1 %tobool, label %if.end, label %if.then, !dbg !255

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #5, !dbg !256
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !258
  br label %for.body, !dbg !258

for.body:                                         ; preds = %for.end, %if.then
  %indvars.iv24 = phi i64 [ 0, %if.then ], [ %indvars.iv.next25, %for.end ]
  %fputc = tail call i32 @fputc(i32 9, %struct._IO_FILE* %fp), !dbg !260
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !262
  br label %for.body4, !dbg !262

for.body4:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body4 ]
  %arrayidx6 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv24, i64 %indvars.iv, !dbg !264
  %0 = load float* %arrayidx6, align 4, !dbg !264, !tbaa !242
  %conv = fpext float %0 to double, !dbg !264
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %conv) #5, !dbg !264
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !262
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !262
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !262
  br i1 %exitcond, label %for.end, label %for.body4, !dbg !262

for.end:                                          ; preds = %for.body4
  %fputc21 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !265
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !258
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32, !dbg !258
  %exitcond27 = icmp eq i32 %lftr.wideiv26, 4, !dbg !258
  br i1 %exitcond27, label %if.end, label %for.body, !dbg !258

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !266
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @print_v4(%struct._IO_FILE* %fp, i8* %s, i32 %dim, float* nocapture %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !98), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !99), !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !100), !dbg !267
  tail call void @llvm.dbg.value(metadata !{float* %a}, i64 0, metadata !101), !dbg !267
  %tobool = icmp eq %struct._IO_FILE* %fp, null, !dbg !268
  br i1 %tobool, label %if.end, label %if.then, !dbg !268

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #5, !dbg !269
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !271
  %cmp7 = icmp sgt i32 %dim, 0, !dbg !271
  br i1 %cmp7, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds float* %a, i64 %indvars.iv, !dbg !273
  %0 = load float* %arrayidx, align 4, !dbg !273, !tbaa !242
  %conv = fpext float %0 to double, !dbg !273
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %conv) #5, !dbg !273
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !271
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !271
  %exitcond = icmp eq i32 %lftr.wideiv, %dim, !dbg !271
  br i1 %exitcond, label %for.end, label %for.body, !dbg !271

for.end:                                          ; preds = %for.body, %if.then
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %entry, %for.end
  ret void, !dbg !276
}

; Function Attrs: nounwind optsize uwtable
define void @mult_matrix([4 x float]* nocapture %A, [4 x float]* nocapture %B, [4 x float]* nocapture %C) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !107), !dbg !277
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %B}, i64 0, metadata !108), !dbg !277
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %C}, i64 0, metadata !109), !dbg !277
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !110), !dbg !278
  br label %for.cond1.preheader, !dbg !278

for.cond1.preheader:                              ; preds = %for.inc24, %entry
  %indvars.iv47 = phi i64 [ 0, %entry ], [ %indvars.iv.next48, %for.inc24 ]
  br label %for.body3, !dbg !280

for.body3:                                        ; preds = %for.inc21, %for.cond1.preheader
  %indvars.iv42 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next43, %for.inc21 ]
  %arrayidx5 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv47, i64 %indvars.iv42, !dbg !282
  store float 0.000000e+00, float* %arrayidx5, align 4, !dbg !282, !tbaa !242
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !284
  br label %for.body8, !dbg !284

for.body8:                                        ; preds = %for.body8, %for.body3
  %0 = phi float [ 0.000000e+00, %for.body3 ], [ %add, %for.body8 ], !dbg !286
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next, %for.body8 ]
  %arrayidx12 = getelementptr inbounds [4 x float]* %B, i64 %indvars.iv47, i64 %indvars.iv, !dbg !286
  %1 = load float* %arrayidx12, align 4, !dbg !286, !tbaa !242
  %arrayidx16 = getelementptr inbounds [4 x float]* %C, i64 %indvars.iv, i64 %indvars.iv42, !dbg !286
  %2 = load float* %arrayidx16, align 4, !dbg !286, !tbaa !242
  %mul = fmul float %1, %2, !dbg !286
  %add = fadd float %0, %mul, !dbg !286
  store float %add, float* %arrayidx5, align 4, !dbg !286, !tbaa !242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !284
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !284
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !284
  br i1 %exitcond, label %for.inc21, label %for.body8, !dbg !284

for.inc21:                                        ; preds = %for.body8
  %indvars.iv.next43 = add i64 %indvars.iv42, 1, !dbg !280
  %lftr.wideiv44 = trunc i64 %indvars.iv.next43 to i32, !dbg !280
  %exitcond45 = icmp eq i32 %lftr.wideiv44, 4, !dbg !280
  br i1 %exitcond45, label %for.inc24, label %for.body3, !dbg !280

for.inc24:                                        ; preds = %for.inc21
  %indvars.iv.next48 = add i64 %indvars.iv47, 1, !dbg !278
  %lftr.wideiv49 = trunc i64 %indvars.iv.next48 to i32, !dbg !278
  %exitcond50 = icmp eq i32 %lftr.wideiv49, 4, !dbg !278
  br i1 %exitcond50, label %for.end26, label %for.cond1.preheader, !dbg !278

for.end26:                                        ; preds = %for.inc24
  ret void, !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define void @rotate(i32 %axis, float %angle, [4 x float]* nocapture %A) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %axis}, i64 0, metadata !117), !dbg !288
  tail call void @llvm.dbg.value(metadata !{float %angle}, i64 0, metadata !118), !dbg !288
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !119), !dbg !288
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !289), !dbg !291
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !292), !dbg !293
  br label %for.cond1.preheader.i, !dbg !293

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %0 = trunc i64 %indvars.iv21.i to i32, !dbg !294
  br label %for.body3.i, !dbg !295

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %1 = trunc i64 %indvars.iv.i to i32, !dbg !294
  %cmp4.i = icmp eq i32 %0, %1, !dbg !294
  %arrayidx6.i = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv21.i, i64 %indvars.iv.i, !dbg !296
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00, !dbg !296
  store float %..i, float* %arrayidx6.i, align 4, !dbg !296, !tbaa !242
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !295
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !295
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !295
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i, !dbg !295

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1, !dbg !293
  %lftr.wideiv86 = trunc i64 %indvars.iv.next22.i to i32, !dbg !293
  %exitcond87 = icmp eq i32 %lftr.wideiv86, 4, !dbg !293
  br i1 %exitcond87, label %unity_m4.exit, label %for.cond1.preheader.i, !dbg !293

unity_m4.exit:                                    ; preds = %for.inc11.i
  switch i32 %axis, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb40
  ], !dbg !297

sw.bb:                                            ; preds = %unity_m4.exit
  %conv = fpext float %angle to double, !dbg !298
  %call = tail call double @cos(double %conv) #5, !dbg !298
  %conv1 = fptrunc double %call to float, !dbg !298
  %arrayidx2 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1, !dbg !298
  store float %conv1, float* %arrayidx2, align 4, !dbg !298, !tbaa !242
  %call4 = tail call double @sin(double %conv) #5, !dbg !300
  %2 = fptrunc double %call4 to float, !dbg !300
  %conv5 = fsub float -0.000000e+00, %2, !dbg !300
  %arrayidx7 = getelementptr inbounds [4 x float]* %A, i64 1, i64 2, !dbg !300
  store float %conv5, float* %arrayidx7, align 4, !dbg !300, !tbaa !242
  %call9 = tail call double @sin(double %conv) #5, !dbg !301
  %conv10 = fptrunc double %call9 to float, !dbg !301
  %arrayidx12 = getelementptr inbounds [4 x float]* %A, i64 2, i64 1, !dbg !301
  store float %conv10, float* %arrayidx12, align 4, !dbg !301, !tbaa !242
  %call14 = tail call double @cos(double %conv) #5, !dbg !302
  %conv15 = fptrunc double %call14 to float, !dbg !302
  %arrayidx17 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2, !dbg !302
  store float %conv15, float* %arrayidx17, align 4, !dbg !302, !tbaa !242
  br label %sw.epilog, !dbg !303

sw.bb18:                                          ; preds = %unity_m4.exit
  %conv19 = fpext float %angle to double, !dbg !304
  %call20 = tail call double @cos(double %conv19) #5, !dbg !304
  %conv21 = fptrunc double %call20 to float, !dbg !304
  %arrayidx23 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0, !dbg !304
  store float %conv21, float* %arrayidx23, align 4, !dbg !304, !tbaa !242
  %call25 = tail call double @sin(double %conv19) #5, !dbg !305
  %conv26 = fptrunc double %call25 to float, !dbg !305
  %arrayidx28 = getelementptr inbounds [4 x float]* %A, i64 0, i64 2, !dbg !305
  store float %conv26, float* %arrayidx28, align 4, !dbg !305, !tbaa !242
  %call30 = tail call double @sin(double %conv19) #5, !dbg !306
  %3 = fptrunc double %call30 to float, !dbg !306
  %conv32 = fsub float -0.000000e+00, %3, !dbg !306
  %arrayidx34 = getelementptr inbounds [4 x float]* %A, i64 2, i64 0, !dbg !306
  store float %conv32, float* %arrayidx34, align 4, !dbg !306, !tbaa !242
  %call36 = tail call double @cos(double %conv19) #5, !dbg !307
  %conv37 = fptrunc double %call36 to float, !dbg !307
  %arrayidx39 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2, !dbg !307
  store float %conv37, float* %arrayidx39, align 4, !dbg !307, !tbaa !242
  br label %sw.epilog, !dbg !308

sw.bb40:                                          ; preds = %unity_m4.exit
  %conv41 = fpext float %angle to double, !dbg !309
  %call42 = tail call double @cos(double %conv41) #5, !dbg !309
  %conv43 = fptrunc double %call42 to float, !dbg !309
  %arrayidx45 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0, !dbg !309
  store float %conv43, float* %arrayidx45, align 4, !dbg !309, !tbaa !242
  %call47 = tail call double @sin(double %conv41) #5, !dbg !310
  %4 = fptrunc double %call47 to float, !dbg !310
  %conv49 = fsub float -0.000000e+00, %4, !dbg !310
  %arrayidx51 = getelementptr inbounds [4 x float]* %A, i64 0, i64 1, !dbg !310
  store float %conv49, float* %arrayidx51, align 4, !dbg !310, !tbaa !242
  %call53 = tail call double @sin(double %conv41) #5, !dbg !311
  %conv54 = fptrunc double %call53 to float, !dbg !311
  %arrayidx56 = getelementptr inbounds [4 x float]* %A, i64 1, i64 0, !dbg !311
  store float %conv54, float* %arrayidx56, align 4, !dbg !311, !tbaa !242
  %call58 = tail call double @cos(double %conv41) #5, !dbg !312
  %conv59 = fptrunc double %call58 to float, !dbg !312
  %arrayidx61 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1, !dbg !312
  store float %conv59, float* %arrayidx61, align 4, !dbg !312, !tbaa !242
  br label %sw.epilog, !dbg !313

sw.default:                                       ; preds = %unity_m4.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %axis) #5, !dbg !314
  br label %sw.epilog, !dbg !315

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb18, %sw.bb
  ret void, !dbg !316
}

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @translate(float %tx, float %ty, float %tz, [4 x float]* nocapture %A) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %tx}, i64 0, metadata !124), !dbg !317
  tail call void @llvm.dbg.value(metadata !{float %ty}, i64 0, metadata !125), !dbg !317
  tail call void @llvm.dbg.value(metadata !{float %tz}, i64 0, metadata !126), !dbg !317
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !127), !dbg !317
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %A}, i64 0, metadata !318), !dbg !320
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !321), !dbg !322
  br label %for.cond1.preheader.i, !dbg !322

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %0 = trunc i64 %indvars.iv21.i to i32, !dbg !323
  br label %for.body3.i, !dbg !324

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %1 = trunc i64 %indvars.iv.i to i32, !dbg !323
  %cmp4.i = icmp eq i32 %0, %1, !dbg !323
  %arrayidx6.i = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv21.i, i64 %indvars.iv.i, !dbg !325
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00, !dbg !325
  store float %..i, float* %arrayidx6.i, align 4, !dbg !325, !tbaa !242
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !324
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !324
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !324
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i, !dbg !324

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1, !dbg !322
  %lftr.wideiv9 = trunc i64 %indvars.iv.next22.i to i32, !dbg !322
  %exitcond10 = icmp eq i32 %lftr.wideiv9, 4, !dbg !322
  br i1 %exitcond10, label %unity_m4.exit, label %for.cond1.preheader.i, !dbg !322

unity_m4.exit:                                    ; preds = %for.inc11.i
  %arrayidx1 = getelementptr inbounds [4 x float]* %A, i64 3, i64 0, !dbg !326
  store float %tx, float* %arrayidx1, align 4, !dbg !326, !tbaa !242
  %arrayidx3 = getelementptr inbounds [4 x float]* %A, i64 3, i64 1, !dbg !327
  store float %ty, float* %arrayidx3, align 4, !dbg !327, !tbaa !242
  %arrayidx5 = getelementptr inbounds [4 x float]* %A, i64 3, i64 2, !dbg !328
  store float %tz, float* %arrayidx5, align 4, !dbg !328, !tbaa !242
  ret void, !dbg !329
}

; Function Attrs: nounwind optsize uwtable
define void @calculate_view(%struct.t_3dview* nocapture %view) #0 {
entry:
  %To = alloca [4 x [4 x float]], align 16
  %Te = alloca [4 x [4 x float]], align 16
  %T1 = alloca [4 x [4 x float]], align 16
  %T2 = alloca [4 x [4 x float]], align 16
  %T3 = alloca [4 x [4 x float]], align 16
  %T4 = alloca [4 x [4 x float]], align 16
  %T5 = alloca [4 x [4 x float]], align 16
  %N1 = alloca [4 x [4 x float]], align 16
  %D1 = alloca [4 x [4 x float]], align 16
  %D2 = alloca [4 x [4 x float]], align 16
  %D3 = alloca [4 x [4 x float]], align 16
  %D4 = alloca [4 x [4 x float]], align 16
  %D5 = alloca [4 x [4 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_3dview* %view}, i64 0, metadata !152), !dbg !330
  %0 = bitcast [4 x [4 x float]]* %To to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %0) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %To}, metadata !153), !dbg !331
  %1 = bitcast [4 x [4 x float]]* %Te to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %1) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %Te}, metadata !154), !dbg !331
  %2 = bitcast [4 x [4 x float]]* %T1 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %2) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %T1}, metadata !155), !dbg !331
  %3 = bitcast [4 x [4 x float]]* %T2 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %3) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %T2}, metadata !156), !dbg !331
  %4 = bitcast [4 x [4 x float]]* %T3 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %4) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %T3}, metadata !157), !dbg !331
  %5 = bitcast [4 x [4 x float]]* %T4 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %5) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %T4}, metadata !158), !dbg !331
  %6 = bitcast [4 x [4 x float]]* %T5 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %6) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %T5}, metadata !159), !dbg !331
  %7 = bitcast [4 x [4 x float]]* %N1 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %7) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %N1}, metadata !160), !dbg !331
  %8 = bitcast [4 x [4 x float]]* %D1 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %8) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %D1}, metadata !161), !dbg !331
  %9 = bitcast [4 x [4 x float]]* %D2 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %9) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %D2}, metadata !162), !dbg !331
  %10 = bitcast [4 x [4 x float]]* %D3 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %10) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %D3}, metadata !163), !dbg !331
  %11 = bitcast [4 x [4 x float]]* %D4 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %11) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %D4}, metadata !164), !dbg !331
  %12 = bitcast [4 x [4 x float]]* %D5 to i8*, !dbg !331
  call void @llvm.lifetime.start(i64 64, i8* %12) #4, !dbg !331
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %D5}, metadata !165), !dbg !331
  %arrayidx = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0, !dbg !332
  %13 = load float* %arrayidx, align 4, !dbg !332, !tbaa !242
  call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !166), !dbg !332
  %arrayidx2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1, !dbg !333
  %14 = load float* %arrayidx2, align 4, !dbg !333, !tbaa !242
  call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !167), !dbg !333
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2, !dbg !334
  %15 = load float* %arrayidx4, align 4, !dbg !334, !tbaa !242
  call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !168), !dbg !334
  %mul = fmul float %13, %13, !dbg !335
  %mul5 = fmul float %14, %14, !dbg !335
  %add = fadd float %mul, %mul5, !dbg !335
  %mul6 = fmul float %15, %15, !dbg !335
  %add7 = fadd float %add, %mul6, !dbg !335
  %conv8 = call float @sqrtf(float %add7) #2, !dbg !335
  call void @llvm.dbg.value(metadata !{float %conv8}, i64 0, metadata !169), !dbg !335
  %conv14 = call float @sqrtf(float %add) #2, !dbg !336
  call void @llvm.dbg.value(metadata !{float %conv14}, i64 0, metadata !170), !dbg !336
  %conv15 = fpext float %conv8 to double, !dbg !337
  %cmp = fcmp olt double %conv15, 1.000000e-06, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !338
  br label %if.end, !dbg !338

if.end:                                           ; preds = %if.then, %entry
  %arrayidx17 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0, !dbg !339
  %16 = load float* %arrayidx17, align 4, !dbg !339, !tbaa !242
  %arrayidx19 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 1, !dbg !339
  %17 = load float* %arrayidx19, align 4, !dbg !339, !tbaa !242
  %arrayidx22 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 2, !dbg !339
  %18 = load float* %arrayidx22, align 4, !dbg !339, !tbaa !242
  %sub23 = fsub float -0.000000e+00, %18, !dbg !339
  tail call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !340), !dbg !341
  tail call void @llvm.dbg.value(metadata !{float %sub20}, i64 0, metadata !342), !dbg !341
  tail call void @llvm.dbg.value(metadata !{float %sub23}, i64 0, metadata !343), !dbg !341
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay}, i64 0, metadata !344), !dbg !341
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay}, i64 0, metadata !345), !dbg !347
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !348), !dbg !349
  br label %for.cond1.preheader.i.i, !dbg !349

for.cond1.preheader.i.i:                          ; preds = %for.inc11.i.i, %if.end
  %indvars.iv21.i.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next22.i.i, %for.inc11.i.i ]
  %19 = trunc i64 %indvars.iv21.i.i to i32, !dbg !350
  br label %for.body3.i.i, !dbg !351

for.body3.i.i:                                    ; preds = %for.body3.i.i, %for.cond1.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.cond1.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body3.i.i ]
  %20 = trunc i64 %indvars.iv.i.i to i32, !dbg !350
  %cmp4.i.i = icmp eq i32 %19, %20, !dbg !350
  %arrayidx6.i.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 %indvars.iv21.i.i, i64 %indvars.iv.i.i, !dbg !352
  %..i.i = select i1 %cmp4.i.i, float 1.000000e+00, float 0.000000e+00, !dbg !352
  store float %..i.i, float* %arrayidx6.i.i, align 4, !dbg !352, !tbaa !242
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !351
  %lftr.wideiv236 = trunc i64 %indvars.iv.next.i.i to i32, !dbg !351
  %exitcond237 = icmp eq i32 %lftr.wideiv236, 4, !dbg !351
  br i1 %exitcond237, label %for.inc11.i.i, label %for.body3.i.i, !dbg !351

for.inc11.i.i:                                    ; preds = %for.body3.i.i
  %indvars.iv.next22.i.i = add i64 %indvars.iv21.i.i, 1, !dbg !349
  %lftr.wideiv238 = trunc i64 %indvars.iv.next22.i.i to i32, !dbg !349
  %exitcond239 = icmp eq i32 %lftr.wideiv238, 4, !dbg !349
  br i1 %exitcond239, label %translate.exit, label %for.cond1.preheader.i.i, !dbg !349

translate.exit:                                   ; preds = %for.inc11.i.i
  %sub = fsub float -0.000000e+00, %16, !dbg !339
  %sub20 = fsub float -0.000000e+00, %17, !dbg !339
  %arraydecay = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 0, !dbg !339
  %arrayidx1.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 0, !dbg !353
  store float %sub, float* %arrayidx1.i, align 16, !dbg !353, !tbaa !242
  %arrayidx3.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 1, !dbg !354
  store float %sub20, float* %arrayidx3.i, align 4, !dbg !354, !tbaa !242
  %arrayidx5.i = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 2, !dbg !355
  store float %sub23, float* %arrayidx5.i, align 8, !dbg !355, !tbaa !242
  %21 = load float* %arrayidx, align 4, !dbg !356, !tbaa !242
  %22 = load float* %arrayidx2, align 4, !dbg !356, !tbaa !242
  %23 = load float* %arrayidx4, align 4, !dbg !356, !tbaa !242
  %sub32 = fsub float -0.000000e+00, %23, !dbg !356
  tail call void @llvm.dbg.value(metadata !{float %sub26}, i64 0, metadata !357), !dbg !358
  tail call void @llvm.dbg.value(metadata !{float %sub29}, i64 0, metadata !359), !dbg !358
  tail call void @llvm.dbg.value(metadata !{float %sub32}, i64 0, metadata !360), !dbg !358
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay33}, i64 0, metadata !361), !dbg !358
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay33}, i64 0, metadata !362), !dbg !364
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !365), !dbg !366
  br label %for.cond1.preheader.i.i135, !dbg !366

for.cond1.preheader.i.i135:                       ; preds = %for.inc11.i.i147, %translate.exit
  %indvars.iv21.i.i134 = phi i64 [ 0, %translate.exit ], [ %indvars.iv.next22.i.i144, %for.inc11.i.i147 ]
  %24 = trunc i64 %indvars.iv21.i.i134 to i32, !dbg !367
  br label %for.body3.i.i143, !dbg !368

for.body3.i.i143:                                 ; preds = %for.body3.i.i143, %for.cond1.preheader.i.i135
  %indvars.iv.i.i136 = phi i64 [ 0, %for.cond1.preheader.i.i135 ], [ %indvars.iv.next.i.i140, %for.body3.i.i143 ]
  %25 = trunc i64 %indvars.iv.i.i136 to i32, !dbg !367
  %cmp4.i.i137 = icmp eq i32 %24, %25, !dbg !367
  %arrayidx6.i.i138 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 %indvars.iv21.i.i134, i64 %indvars.iv.i.i136, !dbg !369
  %..i.i139 = select i1 %cmp4.i.i137, float 1.000000e+00, float 0.000000e+00, !dbg !369
  store float %..i.i139, float* %arrayidx6.i.i138, align 4, !dbg !369, !tbaa !242
  %indvars.iv.next.i.i140 = add i64 %indvars.iv.i.i136, 1, !dbg !368
  %lftr.wideiv232 = trunc i64 %indvars.iv.next.i.i140 to i32, !dbg !368
  %exitcond233 = icmp eq i32 %lftr.wideiv232, 4, !dbg !368
  br i1 %exitcond233, label %for.inc11.i.i147, label %for.body3.i.i143, !dbg !368

for.inc11.i.i147:                                 ; preds = %for.body3.i.i143
  %indvars.iv.next22.i.i144 = add i64 %indvars.iv21.i.i134, 1, !dbg !366
  %lftr.wideiv234 = trunc i64 %indvars.iv.next22.i.i144 to i32, !dbg !366
  %exitcond235 = icmp eq i32 %lftr.wideiv234, 4, !dbg !366
  br i1 %exitcond235, label %translate.exit151, label %for.cond1.preheader.i.i135, !dbg !366

translate.exit151:                                ; preds = %for.inc11.i.i147
  %sub26 = fsub float -0.000000e+00, %21, !dbg !356
  %sub29 = fsub float -0.000000e+00, %22, !dbg !356
  %arraydecay33 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 0, !dbg !356
  %arrayidx1.i148 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 0, !dbg !370
  store float %sub26, float* %arrayidx1.i148, align 16, !dbg !370, !tbaa !242
  %arrayidx3.i149 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 1, !dbg !371
  store float %sub29, float* %arrayidx3.i149, align 4, !dbg !371, !tbaa !242
  %arrayidx5.i150 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 2, !dbg !372
  store float %sub32, float* %arrayidx5.i150, align 8, !dbg !372, !tbaa !242
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay34}, i64 0, metadata !373), !dbg !375
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !376), !dbg !377
  br label %for.cond1.preheader.i, !dbg !377

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %translate.exit151
  %indvars.iv21.i = phi i64 [ 0, %translate.exit151 ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %26 = trunc i64 %indvars.iv21.i to i32, !dbg !378
  br label %for.body3.i, !dbg !379

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %27 = trunc i64 %indvars.iv.i to i32, !dbg !378
  %cmp4.i = icmp eq i32 %26, %27, !dbg !378
  %arrayidx6.i = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 %indvars.iv21.i, i64 %indvars.iv.i, !dbg !380
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00, !dbg !380
  store float %..i, float* %arrayidx6.i, align 4, !dbg !380, !tbaa !242
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !379
  %lftr.wideiv228 = trunc i64 %indvars.iv.next.i to i32, !dbg !379
  %exitcond229 = icmp eq i32 %lftr.wideiv228, 4, !dbg !379
  br i1 %exitcond229, label %for.inc11.i, label %for.body3.i, !dbg !379

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1, !dbg !377
  %lftr.wideiv230 = trunc i64 %indvars.iv.next22.i to i32, !dbg !377
  %exitcond231 = icmp eq i32 %lftr.wideiv230, 4, !dbg !377
  br i1 %exitcond231, label %unity_m4.exit, label %for.cond1.preheader.i, !dbg !377

unity_m4.exit:                                    ; preds = %for.inc11.i
  %arraydecay34 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 0, !dbg !374
  %arrayidx36 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 1, !dbg !381
  store float 0.000000e+00, float* %arrayidx36, align 4, !dbg !381, !tbaa !242
  %arrayidx38 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 2, !dbg !381
  store float -1.000000e+00, float* %arrayidx38, align 8, !dbg !381, !tbaa !242
  %arrayidx40 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 1, !dbg !381
  store float 1.000000e+00, float* %arrayidx40, align 4, !dbg !381, !tbaa !242
  %arrayidx42 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 2, !dbg !381
  store float 0.000000e+00, float* %arrayidx42, align 8, !dbg !381, !tbaa !242
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay43}, i64 0, metadata !382), !dbg !384
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !385), !dbg !386
  br label %for.cond1.preheader.i155, !dbg !386

for.cond1.preheader.i155:                         ; preds = %for.inc11.i167, %unity_m4.exit
  %indvars.iv21.i154 = phi i64 [ 0, %unity_m4.exit ], [ %indvars.iv.next22.i164, %for.inc11.i167 ]
  %28 = trunc i64 %indvars.iv21.i154 to i32, !dbg !387
  br label %for.body3.i163, !dbg !388

for.body3.i163:                                   ; preds = %for.body3.i163, %for.cond1.preheader.i155
  %indvars.iv.i156 = phi i64 [ 0, %for.cond1.preheader.i155 ], [ %indvars.iv.next.i160, %for.body3.i163 ]
  %29 = trunc i64 %indvars.iv.i156 to i32, !dbg !387
  %cmp4.i157 = icmp eq i32 %28, %29, !dbg !387
  %arrayidx6.i158 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 %indvars.iv21.i154, i64 %indvars.iv.i156, !dbg !389
  %..i159 = select i1 %cmp4.i157, float 1.000000e+00, float 0.000000e+00, !dbg !389
  store float %..i159, float* %arrayidx6.i158, align 4, !dbg !389, !tbaa !242
  %indvars.iv.next.i160 = add i64 %indvars.iv.i156, 1, !dbg !388
  %lftr.wideiv224 = trunc i64 %indvars.iv.next.i160 to i32, !dbg !388
  %exitcond225 = icmp eq i32 %lftr.wideiv224, 4, !dbg !388
  br i1 %exitcond225, label %for.inc11.i167, label %for.body3.i163, !dbg !388

for.inc11.i167:                                   ; preds = %for.body3.i163
  %indvars.iv.next22.i164 = add i64 %indvars.iv21.i154, 1, !dbg !386
  %lftr.wideiv226 = trunc i64 %indvars.iv.next22.i164 to i32, !dbg !386
  %exitcond227 = icmp eq i32 %lftr.wideiv226, 4, !dbg !386
  br i1 %exitcond227, label %unity_m4.exit168, label %for.cond1.preheader.i155, !dbg !386

unity_m4.exit168:                                 ; preds = %for.inc11.i167
  %arraydecay43 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, !dbg !383
  %cmp44 = fcmp ogt float %conv14, 0.000000e+00, !dbg !390
  br i1 %cmp44, label %if.then46, label %for.cond1.preheader.i170, !dbg !390

if.then46:                                        ; preds = %unity_m4.exit168
  %sub47 = fsub float -0.000000e+00, %14, !dbg !391
  %div = fdiv float %sub47, %conv14, !dbg !391
  %arrayidx49 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 0, !dbg !391
  store float %div, float* %arrayidx49, align 16, !dbg !391, !tbaa !242
  %div50 = fdiv float %13, %conv14, !dbg !391
  %arrayidx52 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 2, !dbg !391
  store float %div50, float* %arrayidx52, align 8, !dbg !391, !tbaa !242
  %sub53 = fsub float -0.000000e+00, %13, !dbg !391
  %div54 = fdiv float %sub53, %conv14, !dbg !391
  %arrayidx56 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 0, !dbg !391
  store float %div54, float* %arrayidx56, align 16, !dbg !391, !tbaa !242
  %arrayidx60 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 2, !dbg !391
  store float %div, float* %arrayidx60, align 8, !dbg !391, !tbaa !242
  br label %for.cond1.preheader.i170, !dbg !391

for.cond1.preheader.i170:                         ; preds = %unity_m4.exit168, %if.then46, %for.inc11.i182
  %indvars.iv21.i169 = phi i64 [ %indvars.iv.next22.i179, %for.inc11.i182 ], [ 0, %if.then46 ], [ 0, %unity_m4.exit168 ]
  %30 = trunc i64 %indvars.iv21.i169 to i32, !dbg !392
  br label %for.body3.i178, !dbg !394

for.body3.i178:                                   ; preds = %for.body3.i178, %for.cond1.preheader.i170
  %indvars.iv.i171 = phi i64 [ 0, %for.cond1.preheader.i170 ], [ %indvars.iv.next.i175, %for.body3.i178 ]
  %31 = trunc i64 %indvars.iv.i171 to i32, !dbg !392
  %cmp4.i172 = icmp eq i32 %30, %31, !dbg !392
  %arrayidx6.i173 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 %indvars.iv21.i169, i64 %indvars.iv.i171, !dbg !395
  %..i174 = select i1 %cmp4.i172, float 1.000000e+00, float 0.000000e+00, !dbg !395
  store float %..i174, float* %arrayidx6.i173, align 4, !dbg !395, !tbaa !242
  %indvars.iv.next.i175 = add i64 %indvars.iv.i171, 1, !dbg !394
  %lftr.wideiv220 = trunc i64 %indvars.iv.next.i175 to i32, !dbg !394
  %exitcond221 = icmp eq i32 %lftr.wideiv220, 4, !dbg !394
  br i1 %exitcond221, label %for.inc11.i182, label %for.body3.i178, !dbg !394

for.inc11.i182:                                   ; preds = %for.body3.i178
  %indvars.iv.next22.i179 = add i64 %indvars.iv21.i169, 1, !dbg !396
  %lftr.wideiv222 = trunc i64 %indvars.iv.next22.i179 to i32, !dbg !396
  %exitcond223 = icmp eq i32 %lftr.wideiv222, 4, !dbg !396
  br i1 %exitcond223, label %unity_m4.exit183, label %for.cond1.preheader.i170, !dbg !396

unity_m4.exit183:                                 ; preds = %for.inc11.i182
  %arraydecay62 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 0, !dbg !393
  %div63 = fdiv float %conv14, %conv8, !dbg !397
  %arrayidx65 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 1, !dbg !397
  store float %div63, float* %arrayidx65, align 4, !dbg !397, !tbaa !242
  %div66 = fdiv float %15, %conv8, !dbg !397
  %arrayidx68 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 2, !dbg !397
  store float %div66, float* %arrayidx68, align 8, !dbg !397, !tbaa !242
  %sub69 = fsub float -0.000000e+00, %15, !dbg !397
  %div70 = fdiv float %sub69, %conv8, !dbg !397
  %arrayidx72 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 1, !dbg !397
  store float %div70, float* %arrayidx72, align 4, !dbg !397, !tbaa !242
  %arrayidx75 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 2, !dbg !397
  store float %div63, float* %arrayidx75, align 8, !dbg !397, !tbaa !242
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay76}, i64 0, metadata !398), !dbg !400
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !401), !dbg !402
  br label %for.cond1.preheader.i185, !dbg !402

for.cond1.preheader.i185:                         ; preds = %for.inc11.i197, %unity_m4.exit183
  %indvars.iv21.i184 = phi i64 [ 0, %unity_m4.exit183 ], [ %indvars.iv.next22.i194, %for.inc11.i197 ]
  %32 = trunc i64 %indvars.iv21.i184 to i32, !dbg !403
  br label %for.body3.i193, !dbg !404

for.body3.i193:                                   ; preds = %for.body3.i193, %for.cond1.preheader.i185
  %indvars.iv.i186 = phi i64 [ 0, %for.cond1.preheader.i185 ], [ %indvars.iv.next.i190, %for.body3.i193 ]
  %33 = trunc i64 %indvars.iv.i186 to i32, !dbg !403
  %cmp4.i187 = icmp eq i32 %32, %33, !dbg !403
  %arrayidx6.i188 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 %indvars.iv21.i184, i64 %indvars.iv.i186, !dbg !405
  %..i189 = select i1 %cmp4.i187, float 1.000000e+00, float 0.000000e+00, !dbg !405
  store float %..i189, float* %arrayidx6.i188, align 4, !dbg !405, !tbaa !242
  %indvars.iv.next.i190 = add i64 %indvars.iv.i186, 1, !dbg !404
  %lftr.wideiv216 = trunc i64 %indvars.iv.next.i190 to i32, !dbg !404
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 4, !dbg !404
  br i1 %exitcond217, label %for.inc11.i197, label %for.body3.i193, !dbg !404

for.inc11.i197:                                   ; preds = %for.body3.i193
  %indvars.iv.next22.i194 = add i64 %indvars.iv21.i184, 1, !dbg !402
  %lftr.wideiv218 = trunc i64 %indvars.iv.next22.i194 to i32, !dbg !402
  %exitcond219 = icmp eq i32 %lftr.wideiv218, 4, !dbg !402
  br i1 %exitcond219, label %unity_m4.exit198, label %for.cond1.preheader.i185, !dbg !402

unity_m4.exit198:                                 ; preds = %for.inc11.i197
  %arraydecay76 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 0, !dbg !399
  %arrayidx78 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 2, i64 2, !dbg !406
  store float -1.000000e+00, float* %arrayidx78, align 8, !dbg !406, !tbaa !242
  tail call void @llvm.dbg.value(metadata !{[4 x float]* %arraydecay79}, i64 0, metadata !407), !dbg !409
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !410), !dbg !411
  br label %for.cond1.preheader.i200, !dbg !411

for.cond1.preheader.i200:                         ; preds = %for.inc11.i212, %unity_m4.exit198
  %indvars.iv21.i199 = phi i64 [ 0, %unity_m4.exit198 ], [ %indvars.iv.next22.i209, %for.inc11.i212 ]
  %34 = trunc i64 %indvars.iv21.i199 to i32, !dbg !412
  br label %for.body3.i208, !dbg !413

for.body3.i208:                                   ; preds = %for.body3.i208, %for.cond1.preheader.i200
  %indvars.iv.i201 = phi i64 [ 0, %for.cond1.preheader.i200 ], [ %indvars.iv.next.i205, %for.body3.i208 ]
  %35 = trunc i64 %indvars.iv.i201 to i32, !dbg !412
  %cmp4.i202 = icmp eq i32 %34, %35, !dbg !412
  %arrayidx6.i203 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 %indvars.iv21.i199, i64 %indvars.iv.i201, !dbg !414
  %..i204 = select i1 %cmp4.i202, float 1.000000e+00, float 0.000000e+00, !dbg !414
  store float %..i204, float* %arrayidx6.i203, align 4, !dbg !414, !tbaa !242
  %indvars.iv.next.i205 = add i64 %indvars.iv.i201, 1, !dbg !413
  %lftr.wideiv = trunc i64 %indvars.iv.next.i205 to i32, !dbg !413
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !413
  br i1 %exitcond, label %for.inc11.i212, label %for.body3.i208, !dbg !413

for.inc11.i212:                                   ; preds = %for.body3.i208
  %indvars.iv.next22.i209 = add i64 %indvars.iv21.i199, 1, !dbg !411
  %lftr.wideiv214 = trunc i64 %indvars.iv.next22.i209 to i32, !dbg !411
  %exitcond215 = icmp eq i32 %lftr.wideiv214, 4, !dbg !411
  br i1 %exitcond215, label %unity_m4.exit213, label %for.cond1.preheader.i200, !dbg !411

unity_m4.exit213:                                 ; preds = %for.inc11.i212
  %arraydecay79 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 0, !dbg !408
  %arraydecay80 = getelementptr inbounds [4 x [4 x float]]* %T1, i64 0, i64 0, !dbg !415
  %arraydecay82 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0, !dbg !415
  call void @mult_matrix([4 x float]* %arraydecay80, [4 x float]* %arraydecay, [4 x float]* %arraydecay82) #6, !dbg !415
  %arraydecay83 = getelementptr inbounds [4 x [4 x float]]* %D1, i64 0, i64 0, !dbg !416
  call void @mult_matrix([4 x float]* %arraydecay83, [4 x float]* %arraydecay33, [4 x float]* %arraydecay34) #6, !dbg !416
  %arraydecay86 = getelementptr inbounds [4 x [4 x float]]* %D2, i64 0, i64 0, !dbg !417
  call void @mult_matrix([4 x float]* %arraydecay86, [4 x float]* %arraydecay43, [4 x float]* %arraydecay62) #6, !dbg !417
  %arraydecay89 = getelementptr inbounds [4 x [4 x float]]* %D3, i64 0, i64 0, !dbg !418
  call void @mult_matrix([4 x float]* %arraydecay89, [4 x float]* %arraydecay76, [4 x float]* %arraydecay79) #6, !dbg !418
  %arraydecay92 = getelementptr inbounds [4 x [4 x float]]* %D4, i64 0, i64 0, !dbg !419
  call void @mult_matrix([4 x float]* %arraydecay92, [4 x float]* %arraydecay80, [4 x float]* %arraydecay83) #6, !dbg !419
  %arraydecay95 = getelementptr inbounds [4 x [4 x float]]* %D5, i64 0, i64 0, !dbg !420
  call void @mult_matrix([4 x float]* %arraydecay95, [4 x float]* %arraydecay86, [4 x float]* %arraydecay89) #6, !dbg !420
  %arraydecay98 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 3, i64 0, !dbg !421
  call void @mult_matrix([4 x float]* %arraydecay98, [4 x float]* %arraydecay92, [4 x float]* %arraydecay95) #6, !dbg !421
  call void @llvm.lifetime.end(i64 64, i8* %12) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %11) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %10) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %9) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %8) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %7) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %6) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %5) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %4) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %3) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %2) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %1) #4, !dbg !422
  call void @llvm.lifetime.end(i64 64, i8* %0) #4, !dbg !422
  ret void, !dbg !422
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @zoom_3d(%struct.t_3dview* nocapture %view, float %fac) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_3dview* %view}, i64 0, metadata !175), !dbg !423
  tail call void @llvm.dbg.value(metadata !{float %fac}, i64 0, metadata !176), !dbg !423
  tail call void @llvm.dbg.value(metadata !424, i64 0, metadata !180), !dbg !425
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !181), !dbg !426
  br label %for.body, !dbg !426

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv168 = phi i64 [ 0, %entry ], [ %indvars.iv.next169, %for.body ]
  %dr2.0166 = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv168, !dbg !428
  %0 = load float* %arrayidx, align 4, !dbg !428, !tbaa !242
  tail call void @llvm.dbg.value(metadata !{float %0}, i64 0, metadata !177), !dbg !428
  %mul = fmul float %0, %0, !dbg !430
  %add = fadd float %dr2.0166, %mul, !dbg !430
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !180), !dbg !430
  %indvars.iv.next169 = add i64 %indvars.iv168, 1, !dbg !426
  %lftr.wideiv170 = trunc i64 %indvars.iv.next169 to i32, !dbg !426
  %exitcond171 = icmp eq i32 %lftr.wideiv170, 3, !dbg !426
  br i1 %exitcond171, label %for.end, label %for.body, !dbg !426

for.end:                                          ; preds = %for.body
  %conv1 = tail call float @sqrtf(float %add) #2, !dbg !431
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !179), !dbg !431
  %cmp2 = fcmp olt float %fac, 1.000000e+00, !dbg !432
  br i1 %cmp2, label %if.then, label %for.body67, !dbg !432

if.then:                                          ; preds = %for.end
  %arraydecay = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0, !dbg !433
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !435) #4, !dbg !436
  %1 = load float* %arraydecay, align 4, !dbg !437, !tbaa !242
  %mul.i = fmul float %1, %1, !dbg !437
  %arrayidx2.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 1, !dbg !437
  %2 = load float* %arrayidx2.i, align 4, !dbg !437, !tbaa !242
  %mul4.i = fmul float %2, %2, !dbg !437
  %add.i = fadd float %mul.i, %mul4.i, !dbg !437
  %arrayidx5.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 2, !dbg !437
  %3 = load float* %arrayidx5.i, align 4, !dbg !437, !tbaa !242
  %mul7.i = fmul float %3, %3, !dbg !437
  %add8.i = fadd float %add.i, %mul7.i, !dbg !437
  %conv9.i = tail call float @sqrtf(float %add8.i) #2, !dbg !437
  %arraydecay8 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 0, !dbg !433
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !435) #4, !dbg !436
  %4 = load float* %arraydecay8, align 4, !dbg !437, !tbaa !242
  %mul.i93 = fmul float %4, %4, !dbg !437
  %arrayidx2.i94 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1, !dbg !437
  %5 = load float* %arrayidx2.i94, align 4, !dbg !437, !tbaa !242
  %mul4.i95 = fmul float %5, %5, !dbg !437
  %add.i96 = fadd float %mul.i93, %mul4.i95, !dbg !437
  %arrayidx5.i97 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 2, !dbg !437
  %6 = load float* %arrayidx5.i97, align 4, !dbg !437, !tbaa !242
  %mul7.i98 = fmul float %6, %6, !dbg !437
  %add8.i99 = fadd float %add.i96, %mul7.i98, !dbg !437
  %conv9.i100 = tail call float @sqrtf(float %add8.i99) #2, !dbg !437
  %arraydecay12 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 0, !dbg !433
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !435) #4, !dbg !436
  %7 = load float* %arraydecay12, align 4, !dbg !437, !tbaa !242
  %mul.i101 = fmul float %7, %7, !dbg !437
  %arrayidx2.i102 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 1, !dbg !437
  %8 = load float* %arrayidx2.i102, align 4, !dbg !437, !tbaa !242
  %mul4.i103 = fmul float %8, %8, !dbg !437
  %add.i104 = fadd float %mul.i101, %mul4.i103, !dbg !437
  %arrayidx5.i105 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 2, !dbg !437
  %9 = load float* %arrayidx5.i105, align 4, !dbg !437, !tbaa !242
  %mul7.i106 = fmul float %9, %9, !dbg !437
  %add8.i107 = fadd float %add.i104, %mul7.i106, !dbg !437
  %conv9.i108 = tail call float @sqrtf(float %add8.i107) #2, !dbg !437
  %cmp14 = fcmp ogt float %conv9.i100, %conv9.i108, !dbg !433
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !433

cond.true:                                        ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !435) #4, !dbg !436
  %10 = load float* %arraydecay8, align 4, !dbg !437, !tbaa !242
  %mul.i109 = fmul float %10, %10, !dbg !437
  %11 = load float* %arrayidx2.i94, align 4, !dbg !437, !tbaa !242
  %mul4.i111 = fmul float %11, %11, !dbg !437
  %add.i112 = fadd float %mul.i109, %mul4.i111, !dbg !437
  %12 = load float* %arrayidx5.i97, align 4, !dbg !437, !tbaa !242
  %mul7.i114 = fmul float %12, %12, !dbg !437
  %add8.i115 = fadd float %add.i112, %mul7.i114, !dbg !437
  %conv9.i116 = tail call float @sqrtf(float %add8.i115) #2, !dbg !437
  br label %cond.end, !dbg !433

cond.false:                                       ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !435) #4, !dbg !436
  %13 = load float* %arraydecay12, align 4, !dbg !437, !tbaa !242
  %mul.i117 = fmul float %13, %13, !dbg !437
  %14 = load float* %arrayidx2.i102, align 4, !dbg !437, !tbaa !242
  %mul4.i119 = fmul float %14, %14, !dbg !437
  %add.i120 = fadd float %mul.i117, %mul4.i119, !dbg !437
  %15 = load float* %arrayidx5.i105, align 4, !dbg !437, !tbaa !242
  %mul7.i122 = fmul float %15, %15, !dbg !437
  %add8.i123 = fadd float %add.i120, %mul7.i122, !dbg !437
  %conv9.i124 = tail call float @sqrtf(float %add8.i123) #2, !dbg !437
  br label %cond.end, !dbg !433

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %conv9.i116, %cond.true ], [ %conv9.i124, %cond.false ], !dbg !433
  %cmp24 = fcmp ogt float %conv9.i, %cond, !dbg !433
  br i1 %cmp24, label %cond.true26, label %cond.false31, !dbg !433

cond.true26:                                      ; preds = %cond.end
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !435) #4, !dbg !436
  %16 = load float* %arraydecay, align 4, !dbg !437, !tbaa !242
  %mul.i125 = fmul float %16, %16, !dbg !437
  %17 = load float* %arrayidx2.i, align 4, !dbg !437, !tbaa !242
  %mul4.i127 = fmul float %17, %17, !dbg !437
  %add.i128 = fadd float %mul.i125, %mul4.i127, !dbg !437
  %18 = load float* %arrayidx5.i, align 4, !dbg !437, !tbaa !242
  %mul7.i130 = fmul float %18, %18, !dbg !437
  %add8.i131 = fadd float %add.i128, %mul7.i130, !dbg !437
  %conv9.i132 = tail call float @sqrtf(float %add8.i131) #2, !dbg !437
  br label %cond.end54, !dbg !433

cond.false31:                                     ; preds = %cond.end
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !435) #4, !dbg !436
  %19 = load float* %arraydecay8, align 4, !dbg !437, !tbaa !242
  %mul.i133 = fmul float %19, %19, !dbg !437
  %20 = load float* %arrayidx2.i94, align 4, !dbg !437, !tbaa !242
  %mul4.i135 = fmul float %20, %20, !dbg !437
  %add.i136 = fadd float %mul.i133, %mul4.i135, !dbg !437
  %21 = load float* %arrayidx5.i97, align 4, !dbg !437, !tbaa !242
  %mul7.i138 = fmul float %21, %21, !dbg !437
  %add8.i139 = fadd float %add.i136, %mul7.i138, !dbg !437
  %conv9.i140 = tail call float @sqrtf(float %add8.i139) #2, !dbg !437
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !435) #4, !dbg !436
  %22 = load float* %arraydecay12, align 4, !dbg !437, !tbaa !242
  %mul.i141 = fmul float %22, %22, !dbg !437
  %23 = load float* %arrayidx2.i102, align 4, !dbg !437, !tbaa !242
  %mul4.i143 = fmul float %23, %23, !dbg !437
  %add.i144 = fadd float %mul.i141, %mul4.i143, !dbg !437
  %24 = load float* %arrayidx5.i105, align 4, !dbg !437, !tbaa !242
  %mul7.i146 = fmul float %24, %24, !dbg !437
  %add8.i147 = fadd float %add.i144, %mul7.i146, !dbg !437
  %conv9.i148 = tail call float @sqrtf(float %add8.i147) #2, !dbg !437
  %cmp40 = fcmp ogt float %conv9.i140, %conv9.i148, !dbg !433
  br i1 %cmp40, label %cond.true42, label %cond.false47, !dbg !433

cond.true42:                                      ; preds = %cond.false31
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay8}, i64 0, metadata !435) #4, !dbg !436
  %25 = load float* %arraydecay8, align 4, !dbg !437, !tbaa !242
  %mul.i149 = fmul float %25, %25, !dbg !437
  %26 = load float* %arrayidx2.i94, align 4, !dbg !437, !tbaa !242
  %mul4.i151 = fmul float %26, %26, !dbg !437
  %add.i152 = fadd float %mul.i149, %mul4.i151, !dbg !437
  %27 = load float* %arrayidx5.i97, align 4, !dbg !437, !tbaa !242
  %mul7.i154 = fmul float %27, %27, !dbg !437
  %add8.i155 = fadd float %add.i152, %mul7.i154, !dbg !437
  %conv9.i156 = tail call float @sqrtf(float %add8.i155) #2, !dbg !437
  br label %cond.end54, !dbg !433

cond.false47:                                     ; preds = %cond.false31
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay12}, i64 0, metadata !435) #4, !dbg !436
  %28 = load float* %arraydecay12, align 4, !dbg !437, !tbaa !242
  %mul.i157 = fmul float %28, %28, !dbg !437
  %29 = load float* %arrayidx2.i102, align 4, !dbg !437, !tbaa !242
  %mul4.i159 = fmul float %29, %29, !dbg !437
  %add.i160 = fadd float %mul.i157, %mul4.i159, !dbg !437
  %30 = load float* %arrayidx5.i105, align 4, !dbg !437, !tbaa !242
  %mul7.i162 = fmul float %30, %30, !dbg !437
  %add8.i163 = fadd float %add.i160, %mul7.i162, !dbg !437
  %conv9.i164 = tail call float @sqrtf(float %add8.i163) #2, !dbg !437
  br label %cond.end54, !dbg !433

cond.end54:                                       ; preds = %cond.true42, %cond.false47, %cond.true26
  %cond55 = phi float [ %conv9.i132, %cond.true26 ], [ %conv9.i156, %cond.true42 ], [ %conv9.i164, %cond.false47 ], !dbg !433
  tail call void @llvm.dbg.value(metadata !{float %cond55}, i64 0, metadata !178), !dbg !433
  %mul56 = fmul float %conv1, %fac, !dbg !439
  %conv57 = fpext float %mul56 to double, !dbg !439
  %conv58 = fpext float %cond55 to double, !dbg !439
  %mul59 = fmul double %conv58, 1.100000e+00, !dbg !439
  %cmp60 = fcmp olt double %conv57, %mul59, !dbg !439
  br i1 %cmp60, label %return, label %for.body67, !dbg !439

for.body67:                                       ; preds = %for.end, %cond.end54, %for.body67
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body67 ], [ 0, %cond.end54 ], [ 0, %for.end ]
  %arrayidx70 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv, !dbg !440
  %31 = load float* %arrayidx70, align 4, !dbg !440, !tbaa !242
  %mul71 = fmul float %31, %fac, !dbg !440
  store float %mul71, float* %arrayidx70, align 4, !dbg !440, !tbaa !242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !442
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !442
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !442
  br i1 %exitcond, label %for.end74, label %for.body67, !dbg !442

for.end74:                                        ; preds = %for.body67
  tail call void @calculate_view(%struct.t_3dview* %view) #6, !dbg !443
  br label %return, !dbg !444

return:                                           ; preds = %cond.end54, %for.end74
  %retval.0 = phi i32 [ 1, %for.end74 ], [ 0, %cond.end54 ]
  ret i32 %retval.0, !dbg !444
}

; Function Attrs: nounwind optsize uwtable
define void @rotate_3d(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #0 {
entry:
  %m4 = alloca [4 x [4 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_3dview* %view}, i64 0, metadata !186), !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %axis}, i64 0, metadata !187), !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %bPositive}, i64 0, metadata !188), !dbg !445
  %0 = bitcast [4 x [4 x float]]* %m4 to i8*, !dbg !446
  call void @llvm.lifetime.start(i64 64, i8* %0) #4, !dbg !446
  call void @llvm.dbg.declare(metadata !{[4 x [4 x float]]* %m4}, metadata !191), !dbg !446
  call void @llvm.dbg.value(metadata !447, i64 0, metadata !192), !dbg !448
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !189), !dbg !449
  br label %for.body, !dbg !449

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %indvars.iv, i64 0, !dbg !451
  %1 = trunc i64 %indvars.iv to i32, !dbg !451
  call void @rotate(i32 %1, float 0x3FD0C15240000000, [4 x float]* %arraydecay) #6, !dbg !451
  %arraydecay3 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %indvars.iv, i64 0, !dbg !453
  call void @rotate(i32 %1, float 0xBFD0C15240000000, [4 x float]* %arraydecay3) #6, !dbg !453
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !449
  %lftr.wideiv60 = trunc i64 %indvars.iv.next to i32, !dbg !449
  %exitcond61 = icmp eq i32 %lftr.wideiv60, 3, !dbg !449
  br i1 %exitcond61, label %if.end, label %for.body, !dbg !449

if.end:                                           ; preds = %for.body
  %tobool4 = icmp eq i32 %bPositive, 0, !dbg !454
  %arraydecay6 = getelementptr inbounds [4 x [4 x float]]* %m4, i64 0, i64 0, !dbg !455
  %arraydecay7 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0, !dbg !455
  %idxprom8 = sext i32 %axis to i64, !dbg !455
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !454

if.then5:                                         ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %idxprom8, i64 0, !dbg !455
  call void @mult_matrix([4 x float]* %arraydecay6, [4 x float]* %arraydecay7, [4 x float]* %arraydecay10) #6, !dbg !455
  br label %for.cond21.preheader, !dbg !455

if.else:                                          ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %idxprom8, i64 0, !dbg !456
  call void @mult_matrix([4 x float]* %arraydecay6, [4 x float]* %arraydecay7, [4 x float]* %arraydecay16) #6, !dbg !456
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.then5, %if.else, %for.cond21.preheader
  %indvar = phi i64 [ %indvar.next, %for.cond21.preheader ], [ 0, %if.else ], [ 0, %if.then5 ]
  %scevgep = getelementptr %struct.t_3dview* %view, i64 0, i32 4, i64 %indvar, i64 0
  %scevgep57 = bitcast float* %scevgep to i8*
  %scevgep58 = getelementptr [4 x [4 x float]]* %m4, i64 0, i64 %indvar, i64 0
  %scevgep5859 = bitcast float* %scevgep58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep57, i8* %scevgep5859, i64 16, i32 4, i1 false), !dbg !457
  %indvar.next = add i64 %indvar, 1, !dbg !460
  %lftr.wideiv = trunc i64 %indvar.next to i32, !dbg !460
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !460
  br i1 %exitcond, label %for.end38, label %for.cond21.preheader, !dbg !460

for.end38:                                        ; preds = %for.cond21.preheader
  call void @calculate_view(%struct.t_3dview* %view) #6, !dbg !461
  call void @llvm.lifetime.end(i64 64, i8* %0) #4, !dbg !462
  ret void, !dbg !462
}

; Function Attrs: nounwind optsize uwtable
define void @translate_view(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_3dview* %view}, i64 0, metadata !196), !dbg !463
  tail call void @llvm.dbg.value(metadata !{i32 %axis}, i64 0, metadata !197), !dbg !463
  tail call void @llvm.dbg.value(metadata !{i32 %bPositive}, i64 0, metadata !198), !dbg !463
  %tobool = icmp eq i32 %bPositive, 0, !dbg !464
  %idxprom = sext i32 %axis to i64, !dbg !465
  %arrayidx2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 %idxprom, i64 %idxprom, !dbg !465
  %0 = load float* %arrayidx2, align 4, !dbg !465, !tbaa !242
  %div = fmul float %0, 1.250000e-01, !dbg !465
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 %idxprom, !dbg !465
  %1 = load float* %arrayidx4, align 4, !dbg !465, !tbaa !242
  br i1 %tobool, label %if.else, label %if.then, !dbg !464

if.then:                                          ; preds = %entry
  %add = fadd float %1, %div, !dbg !465
  br label %if.end, !dbg !465

if.else:                                          ; preds = %entry
  %sub = fsub float %1, %div, !dbg !466
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi float [ %sub, %if.else ], [ %add, %if.then ]
  store float %storemerge, float* %arrayidx4, align 4, !dbg !465, !tbaa !242
  tail call void @calculate_view(%struct.t_3dview* %view) #6, !dbg !467
  ret void, !dbg !468
}

; Function Attrs: nounwind optsize uwtable
define void @reset_view(%struct.t_3dview* %view) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_3dview* %view}, i64 0, metadata !201), !dbg !469
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !471), !dbg !473
  tail call void @llvm.dbg.value(metadata !470, i64 0, metadata !474), !dbg !473
  %sc_x.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 5, !dbg !475
  store float 4.000000e+00, float* %sc_x.i, align 4, !dbg !475, !tbaa !242
  %sc_y.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 6, !dbg !477
  store float 4.000000e+00, float* %sc_y.i, align 4, !dbg !477, !tbaa !242
  %arraydecay = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0, !dbg !478
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !479), !dbg !480
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !481, !tbaa !242
  %arrayidx1.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1, !dbg !483
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !483, !tbaa !242
  %arrayidx2.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2, !dbg !484
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !484, !tbaa !242
  %arraydecay1 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, !dbg !485
  %arraydecay2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0, !dbg !485
  tail call void @calc_box_center([3 x float]* %arraydecay1, float* %arraydecay2) #5, !dbg !485
  %arrayidx4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0, !dbg !486
  %0 = load float* %arrayidx4, align 4, !dbg !486, !tbaa !242
  %arrayidx7 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1, !dbg !486
  %1 = load float* %arrayidx7, align 4, !dbg !486, !tbaa !242
  %cmp = fcmp ogt float %0, %1, !dbg !486
  %. = select i1 %cmp, float %0, float %1, !dbg !486
  %conv14 = fmul float %., 3.000000e+00, !dbg !486
  store float %conv14, float* %arrayidx2.i, align 4, !dbg !486, !tbaa !242
  %call = tail call i32 @zoom_3d(%struct.t_3dview* %view, float 1.000000e+00) #6, !dbg !487
  %arrayidx18 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 3, !dbg !488
  store float 0.000000e+00, float* %arrayidx18, align 4, !dbg !488, !tbaa !242
  %arrayidx20 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 3, !dbg !488
  store float 0.000000e+00, float* %arrayidx20, align 4, !dbg !488, !tbaa !242
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !489), !dbg !491
  br label %for.cond1.preheader.i, !dbg !491

for.cond1.preheader.i:                            ; preds = %for.inc11.i, %entry
  %indvars.iv21.i = phi i64 [ 0, %entry ], [ %indvars.iv.next22.i, %for.inc11.i ]
  %2 = trunc i64 %indvars.iv21.i to i32, !dbg !492
  br label %for.body3.i, !dbg !493

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %3 = trunc i64 %indvars.iv.i to i32, !dbg !492
  %cmp4.i = icmp eq i32 %2, %3, !dbg !492
  %arrayidx6.i = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 %indvars.iv21.i, i64 %indvars.iv.i, !dbg !494
  %..i = select i1 %cmp4.i, float 1.000000e+00, float 0.000000e+00, !dbg !494
  store float %..i, float* %arrayidx6.i, align 4, !dbg !494, !tbaa !242
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !493
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !493
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !493
  br i1 %exitcond, label %for.inc11.i, label %for.body3.i, !dbg !493

for.inc11.i:                                      ; preds = %for.body3.i
  %indvars.iv.next22.i = add i64 %indvars.iv21.i, 1, !dbg !491
  %lftr.wideiv34 = trunc i64 %indvars.iv.next22.i to i32, !dbg !491
  %exitcond35 = icmp eq i32 %lftr.wideiv34, 4, !dbg !491
  br i1 %exitcond35, label %unity_m4.exit, label %for.cond1.preheader.i, !dbg !491

unity_m4.exit:                                    ; preds = %for.inc11.i
  tail call void @calculate_view(%struct.t_3dview* %view) #6, !dbg !495
  ret void, !dbg !496
}

; Function Attrs: optsize
declare void @calc_box_center([3 x float]*, float*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.t_3dview* @init_view([3 x float]* nocapture %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !210), !dbg !497
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str7, i64 0, i64 0), i32 305, i32 1, i32 204) #5, !dbg !498
  tail call void @llvm.dbg.value(metadata !{%struct.t_3dview* %1}, i64 0, metadata !211), !dbg !498
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !212), !dbg !499
  %box8 = bitcast i8* %call to [3 x [3 x float]]*, !dbg !501
  br label %for.cond1.preheader, !dbg !499

for.cond1.preheader:                              ; preds = %for.inc11, %entry
  %indvars.iv24 = phi i64 [ 0, %entry ], [ %indvars.iv.next25, %for.inc11 ]
  br label %for.body3, !dbg !503

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv24, i64 %indvars.iv, !dbg !501
  %0 = load float* %arrayidx5, align 4, !dbg !501, !tbaa !242
  %arrayidx10 = getelementptr inbounds [3 x [3 x float]]* %box8, i64 0, i64 %indvars.iv24, i64 %indvars.iv, !dbg !501
  store float %0, float* %arrayidx10, align 4, !dbg !501, !tbaa !242
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !503
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !503
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !503
  br i1 %exitcond, label %for.inc11, label %for.body3, !dbg !503

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !499
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32, !dbg !499
  %exitcond27 = icmp eq i32 %lftr.wideiv26, 3, !dbg !499
  br i1 %exitcond27, label %for.end13, label %for.cond1.preheader, !dbg !499

for.end13:                                        ; preds = %for.inc11
  %1 = bitcast i8* %call to %struct.t_3dview*, !dbg !498
  tail call void @reset_view(%struct.t_3dview* %1) #6, !dbg !504
  ret %struct.t_3dview* %1, !dbg !505
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !233, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !21, metadata !28, metadata !94, metadata !103, metadata !113, metadata !120, metadata !128, metadata !171, metadata !182, metadata !194, metadata !199, metadata !203, metadata !214, metadata !221, metadata !228}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"m4_op", metadata !"m4_op", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([4 x float]*, float*, float*)* @m4_op, null, null, metadata !15, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [m4_op]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !10, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from real]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!11 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19}
!16 = metadata !{i32 786689, metadata !4, metadata !"m", metadata !5, i32 16777260, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 44]
!17 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 33554476, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 44]
!18 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !5, i32 50331692, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 44]
!19 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 46, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 46]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"unity_m4", metadata !"unity_m4", metadata !"", i32 52, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([4 x float]*)* @unity_m4, null, null, metadata !24, i32 53} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 53] [unity_m4]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !8}
!24 = metadata !{metadata !25, metadata !26, metadata !27}
!25 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 52]
!26 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 54]
!27 = metadata !{i32 786688, metadata !21, metadata !"j", metadata !5, i32 54, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 54]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_m4", metadata !"print_m4", metadata !"", i32 64, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, [4 x float]*)* @print_m4, null, null, metadata !88, i32 65} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 65] [print_m4]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !31, metadata !38, metadata !8}
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!32 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!33 = metadata !{i32 786451, metadata !34, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !35, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!34 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!35 = metadata !{metadata !36, metadata !37, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !58, metadata !59, metadata !60, metadata !61, metadata !64, metadata !66, metadata !68, metadata !72, metadata !74, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !83, metadata !84}
!36 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!37 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!39 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!40 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!42 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!45 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!46 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!47 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!48 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!49 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!50 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !51} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!52 = metadata !{i32 786451, metadata !34, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !57}
!54 = metadata !{i32 786445, metadata !34, metadata !52, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !34, metadata !52, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!57 = metadata !{i32 786445, metadata !34, metadata !52, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!58 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !56} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!59 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!60 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!61 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !62} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!62 = metadata !{i32 786454, metadata !34, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!63 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!64 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !65} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!65 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!66 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !67} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!67 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!68 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !69} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !39, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!72 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !73} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !75} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!75 = metadata !{i32 786454, metadata !34, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!76 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!77 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!78 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!79 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!80 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !81} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!81 = metadata !{i32 786454, metadata !34, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!82 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !20} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!84 = metadata !{i32 786445, metadata !34, metadata !33, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !39, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!89 = metadata !{i32 786689, metadata !28, metadata !"fp", metadata !5, i32 16777280, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 64]
!90 = metadata !{i32 786689, metadata !28, metadata !"s", metadata !5, i32 33554496, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 64]
!91 = metadata !{i32 786689, metadata !28, metadata !"A", metadata !5, i32 50331712, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 64]
!92 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !5, i32 66, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 66]
!93 = metadata !{i32 786688, metadata !28, metadata !"j", metadata !5, i32 66, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 66]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"print_v4", metadata !"print_v4", metadata !"", i32 79, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32, float*)* @print_v4, null, null, metadata !97, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [print_v4]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !31, metadata !38, metadata !20, metadata !14}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786689, metadata !94, metadata !"fp", metadata !5, i32 16777295, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 79]
!99 = metadata !{i32 786689, metadata !94, metadata !"s", metadata !5, i32 33554511, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 79]
!100 = metadata !{i32 786689, metadata !94, metadata !"dim", metadata !5, i32 50331727, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 79]
!101 = metadata !{i32 786689, metadata !94, metadata !"a", metadata !5, i32 67108943, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 79]
!102 = metadata !{i32 786688, metadata !94, metadata !"j", metadata !5, i32 81, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 81]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mult_matrix", metadata !"mult_matrix", metadata !"", i32 91, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([4 x float]*, [4 x float]*, [4 x float]*)* @mult_matrix, null, null, metadata !106, i32 92} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 92] [mult_matrix]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !8, metadata !8, metadata !8}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!107 = metadata !{i32 786689, metadata !103, metadata !"A", metadata !5, i32 16777307, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 91]
!108 = metadata !{i32 786689, metadata !103, metadata !"B", metadata !5, i32 33554523, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 91]
!109 = metadata !{i32 786689, metadata !103, metadata !"C", metadata !5, i32 50331739, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 91]
!110 = metadata !{i32 786688, metadata !103, metadata !"i", metadata !5, i32 93, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 93]
!111 = metadata !{i32 786688, metadata !103, metadata !"j", metadata !5, i32 93, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 93]
!112 = metadata !{i32 786688, metadata !103, metadata !"k", metadata !5, i32 93, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 93]
!113 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rotate", metadata !"rotate", metadata !"", i32 103, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float, [4 x float]*)* @rotate, null, null, metadata !116, i32 104} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 104] [rotate]
!114 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{null, metadata !20, metadata !10, metadata !8}
!116 = metadata !{metadata !117, metadata !118, metadata !119}
!117 = metadata !{i32 786689, metadata !113, metadata !"axis", metadata !5, i32 16777319, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis] [line 103]
!118 = metadata !{i32 786689, metadata !113, metadata !"angle", metadata !5, i32 33554535, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [angle] [line 103]
!119 = metadata !{i32 786689, metadata !113, metadata !"A", metadata !5, i32 50331751, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 103]
!120 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"translate", metadata !"translate", metadata !"", i32 131, metadata !121, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float, float, float, [4 x float]*)* @translate, null, null, metadata !123, i32 132} ; [ DW_TAG_subprogram ] [line 131] [def] [scope 132] [translate]
!121 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{null, metadata !10, metadata !10, metadata !10, metadata !8}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127}
!124 = metadata !{i32 786689, metadata !120, metadata !"tx", metadata !5, i32 16777347, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tx] [line 131]
!125 = metadata !{i32 786689, metadata !120, metadata !"ty", metadata !5, i32 33554563, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ty] [line 131]
!126 = metadata !{i32 786689, metadata !120, metadata !"tz", metadata !5, i32 50331779, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tz] [line 131]
!127 = metadata !{i32 786689, metadata !120, metadata !"A", metadata !5, i32 67108995, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 131]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calculate_view", metadata !"calculate_view", metadata !"", i32 145, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_3dview*)* @calculate_view, null, null, metadata !151, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [calculate_view]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !131}
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_3dview]
!132 = metadata !{i32 786454, metadata !1, null, metadata !"t_3dview", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [t_3dview] [line 57, size 0, align 0, offset 0] [from ]
!133 = metadata !{i32 786451, metadata !134, null, metadata !"", i32 51, i64 1632, i64 32, i32 0, i32 0, null, metadata !135, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 51, size 1632, align 32, offset 0] [from ]
!134 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!135 = metadata !{metadata !136, metadata !141, metadata !143, metadata !144, metadata !148, metadata !149, metadata !150}
!136 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"box", i32 52, i64 288, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [box] [line 52, size 288, align 32, offset 0] [from matrix]
!137 = metadata !{i32 786454, metadata !134, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !139, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!139 = metadata !{metadata !140, metadata !140}
!140 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!141 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"eye", i32 53, i64 128, i64 32, i64 288, i32 0, metadata !142} ; [ DW_TAG_member ] [eye] [line 53, size 128, align 32, offset 288] [from vec4]
!142 = metadata !{i32 786454, metadata !134, null, metadata !"vec4", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [vec4] [line 45, size 0, align 0, offset 0] [from ]
!143 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"origin", i32 53, i64 128, i64 32, i64 416, i32 0, metadata !142} ; [ DW_TAG_member ] [origin] [line 53, size 128, align 32, offset 416] [from vec4]
!144 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"proj", i32 54, i64 512, i64 32, i64 544, i32 0, metadata !145} ; [ DW_TAG_member ] [proj] [line 54, size 512, align 32, offset 544] [from mat4]
!145 = metadata !{i32 786454, metadata !134, null, metadata !"mat4", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [mat4] [line 47, size 0, align 0, offset 0] [from ]
!146 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !10, metadata !147, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from real]
!147 = metadata !{metadata !13, metadata !13}
!148 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"Rot", i32 55, i64 512, i64 32, i64 1056, i32 0, metadata !145} ; [ DW_TAG_member ] [Rot] [line 55, size 512, align 32, offset 1056] [from mat4]
!149 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"sc_x", i32 56, i64 32, i64 32, i64 1568, i32 0, metadata !10} ; [ DW_TAG_member ] [sc_x] [line 56, size 32, align 32, offset 1568] [from real]
!150 = metadata !{i32 786445, metadata !134, metadata !133, metadata !"sc_y", i32 56, i64 32, i64 32, i64 1600, i32 0, metadata !10} ; [ DW_TAG_member ] [sc_y] [line 56, size 32, align 32, offset 1600] [from real]
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170}
!152 = metadata !{i32 786689, metadata !128, metadata !"view", metadata !5, i32 16777361, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 145]
!153 = metadata !{i32 786688, metadata !128, metadata !"To", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [To] [line 148]
!154 = metadata !{i32 786688, metadata !128, metadata !"Te", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Te] [line 148]
!155 = metadata !{i32 786688, metadata !128, metadata !"T1", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T1] [line 148]
!156 = metadata !{i32 786688, metadata !128, metadata !"T2", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T2] [line 148]
!157 = metadata !{i32 786688, metadata !128, metadata !"T3", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T3] [line 148]
!158 = metadata !{i32 786688, metadata !128, metadata !"T4", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T4] [line 148]
!159 = metadata !{i32 786688, metadata !128, metadata !"T5", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T5] [line 148]
!160 = metadata !{i32 786688, metadata !128, metadata !"N1", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N1] [line 148]
!161 = metadata !{i32 786688, metadata !128, metadata !"D1", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D1] [line 148]
!162 = metadata !{i32 786688, metadata !128, metadata !"D2", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D2] [line 148]
!163 = metadata !{i32 786688, metadata !128, metadata !"D3", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D3] [line 148]
!164 = metadata !{i32 786688, metadata !128, metadata !"D4", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D4] [line 148]
!165 = metadata !{i32 786688, metadata !128, metadata !"D5", metadata !5, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D5] [line 148]
!166 = metadata !{i32 786688, metadata !128, metadata !"dx", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 149]
!167 = metadata !{i32 786688, metadata !128, metadata !"dy", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dy] [line 149]
!168 = metadata !{i32 786688, metadata !128, metadata !"dz", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dz] [line 149]
!169 = metadata !{i32 786688, metadata !128, metadata !"l", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 149]
!170 = metadata !{i32 786688, metadata !128, metadata !"r", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 149]
!171 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"zoom_3d", metadata !"zoom_3d", metadata !"", i32 205, metadata !172, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.t_3dview*, float)* @zoom_3d, null, null, metadata !174, i32 206} ; [ DW_TAG_subprogram ] [line 205] [def] [scope 206] [zoom_3d]
!172 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!173 = metadata !{metadata !20, metadata !131, metadata !10}
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!175 = metadata !{i32 786689, metadata !171, metadata !"view", metadata !5, i32 16777421, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 205]
!176 = metadata !{i32 786689, metadata !171, metadata !"fac", metadata !5, i32 33554637, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fac] [line 205]
!177 = metadata !{i32 786688, metadata !171, metadata !"dr", metadata !5, i32 207, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr] [line 207]
!178 = metadata !{i32 786688, metadata !171, metadata !"bm", metadata !5, i32 208, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bm] [line 208]
!179 = metadata !{i32 786688, metadata !171, metadata !"dr1", metadata !5, i32 208, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr1] [line 208]
!180 = metadata !{i32 786688, metadata !171, metadata !"dr2", metadata !5, i32 208, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dr2] [line 208]
!181 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !5, i32 209, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!182 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rotate_3d", metadata !"rotate_3d", metadata !"", i32 229, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_3dview*, i32, i32)* @rotate_3d, null, null, metadata !185, i32 230} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 230] [rotate_3d]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{null, metadata !131, metadata !20, metadata !20}
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!186 = metadata !{i32 786689, metadata !182, metadata !"view", metadata !5, i32 16777445, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 229]
!187 = metadata !{i32 786689, metadata !182, metadata !"axis", metadata !5, i32 33554661, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis] [line 229]
!188 = metadata !{i32 786689, metadata !182, metadata !"bPositive", metadata !5, i32 50331877, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPositive] [line 229]
!189 = metadata !{i32 786688, metadata !182, metadata !"i", metadata !5, i32 234, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 234]
!190 = metadata !{i32 786688, metadata !182, metadata !"j", metadata !5, i32 234, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 234]
!191 = metadata !{i32 786688, metadata !182, metadata !"m4", metadata !5, i32 235, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m4] [line 235]
!192 = metadata !{i32 786688, metadata !193, metadata !"rot", metadata !5, i32 238, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot] [line 238]
!193 = metadata !{i32 786443, metadata !1, metadata !182, i32 237, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!194 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"translate_view", metadata !"translate_view", metadata !"", i32 269, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_3dview*, i32, i32)* @translate_view, null, null, metadata !195, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [translate_view]
!195 = metadata !{metadata !196, metadata !197, metadata !198}
!196 = metadata !{i32 786689, metadata !194, metadata !"view", metadata !5, i32 16777485, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 269]
!197 = metadata !{i32 786689, metadata !194, metadata !"axis", metadata !5, i32 33554701, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis] [line 269]
!198 = metadata !{i32 786689, metadata !194, metadata !"bPositive", metadata !5, i32 50331917, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bPositive] [line 269]
!199 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_view", metadata !"reset_view", metadata !"", i32 281, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_3dview*)* @reset_view, null, null, metadata !200, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [reset_view]
!200 = metadata !{metadata !201, metadata !202}
!201 = metadata !{i32 786689, metadata !199, metadata !"view", metadata !5, i32 16777497, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 281]
!202 = metadata !{i32 786688, metadata !199, metadata !"i", metadata !5, i32 283, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 283]
!203 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_view", metadata !"init_view", metadata !"", i32 300, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.t_3dview* ([3 x float]*)* @init_view, null, null, metadata !209, i32 301} ; [ DW_TAG_subprogram ] [line 300] [def] [scope 301] [init_view]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !131, metadata !206}
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !10, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!208 = metadata !{metadata !140}
!209 = metadata !{metadata !210, metadata !211, metadata !212, metadata !213}
!210 = metadata !{i32 786689, metadata !203, metadata !"box", metadata !5, i32 16777516, metadata !206, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 300]
!211 = metadata !{i32 786688, metadata !203, metadata !"view", metadata !5, i32 302, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [view] [line 302]
!212 = metadata !{i32 786688, metadata !203, metadata !"i", metadata !5, i32 303, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 303]
!213 = metadata !{i32 786688, metadata !203, metadata !"j", metadata !5, i32 303, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 303]
!214 = metadata !{i32 786478, metadata !215, metadata !216, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !217, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !219, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!215 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!216 = metadata !{i32 786473, metadata !215}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!217 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!218 = metadata !{null, metadata !14}
!219 = metadata !{metadata !220}
!220 = metadata !{i32 786689, metadata !214, metadata !"a", metadata !216, i32 16777532, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"set_scale", metadata !"set_scale", metadata !"", i32 139, metadata !222, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !224, i32 140} ; [ DW_TAG_subprogram ] [line 139] [local] [def] [scope 140] [set_scale]
!222 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!223 = metadata !{null, metadata !131, metadata !10, metadata !10}
!224 = metadata !{metadata !225, metadata !226, metadata !227}
!225 = metadata !{i32 786689, metadata !221, metadata !"view", metadata !5, i32 16777355, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [view] [line 139]
!226 = metadata !{i32 786689, metadata !221, metadata !"sx", metadata !5, i32 33554571, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sx] [line 139]
!227 = metadata !{i32 786689, metadata !221, metadata !"sy", metadata !5, i32 50331787, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sy] [line 139]
!228 = metadata !{i32 786478, metadata !215, metadata !216, metadata !"norm", metadata !"norm", metadata !"", i32 358, metadata !229, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !231, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [norm]
!229 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!230 = metadata !{metadata !10, metadata !14}
!231 = metadata !{metadata !232}
!232 = metadata !{i32 786689, metadata !228, metadata !"a", metadata !216, i32 16777574, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 358]
!233 = metadata !{metadata !234, metadata !235, metadata !237}
!234 = metadata !{i32 786484, i32 0, metadata !182, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !5, i32 231, metadata !20, i32 1, i32 1, null, null}
!235 = metadata !{i32 786484, i32 0, metadata !182, metadata !"RotP", metadata !"RotP", metadata !"", metadata !5, i32 232, metadata !236, i32 1, i32 1, [3 x [4 x [4 x float]]]* @rotate_3d.RotP, null} ; [ DW_TAG_variable ] [RotP] [line 232] [local] [def]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !145, metadata !208, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 32, offset 0] [from mat4]
!237 = metadata !{i32 786484, i32 0, metadata !182, metadata !"RotM", metadata !"RotM", metadata !"", metadata !5, i32 233, metadata !236, i32 1, i32 1, [3 x [4 x [4 x float]]]* @rotate_3d.RotM, null} ; [ DW_TAG_variable ] [RotM] [line 233] [local] [def]
!238 = metadata !{i32 44, i32 0, metadata !4, null}
!239 = metadata !{i32 48, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!241 = metadata !{i32 49, i32 0, metadata !240, null}
!242 = metadata !{metadata !"float", metadata !243}
!243 = metadata !{metadata !"omnipotent char", metadata !244}
!244 = metadata !{metadata !"Simple C/C++ TBAA"}
!245 = metadata !{i32 50, i32 0, metadata !4, null}
!246 = metadata !{i32 52, i32 0, metadata !21, null}
!247 = metadata !{i32 56, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !21, i32 56, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!249 = metadata !{i32 57, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !248, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!251 = metadata !{i32 58, i32 0, metadata !250, null} ; [ DW_TAG_imported_module ]
!252 = metadata !{i32 59, i32 0, metadata !250, null}
!253 = metadata !{i32 62, i32 0, metadata !21, null}
!254 = metadata !{i32 64, i32 0, metadata !28, null}
!255 = metadata !{i32 68, i32 0, metadata !28, null}
!256 = metadata !{i32 69, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !28, i32 68, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!258 = metadata !{i32 70, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 70, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!260 = metadata !{i32 71, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !259, i32 70, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!262 = metadata !{i32 72, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !261, i32 72, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!264 = metadata !{i32 73, i32 0, metadata !263, null}
!265 = metadata !{i32 74, i32 0, metadata !261, null}
!266 = metadata !{i32 77, i32 0, metadata !28, null}
!267 = metadata !{i32 79, i32 0, metadata !94, null}
!268 = metadata !{i32 83, i32 0, metadata !94, null}
!269 = metadata !{i32 84, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !94, i32 83, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!271 = metadata !{i32 85, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 85, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!273 = metadata !{i32 86, i32 0, metadata !272, null}
!274 = metadata !{i32 87, i32 0, metadata !270, null}
!275 = metadata !{i32 88, i32 0, metadata !270, null}
!276 = metadata !{i32 89, i32 0, metadata !94, null}
!277 = metadata !{i32 91, i32 0, metadata !103, null}
!278 = metadata !{i32 95, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !103, i32 95, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!280 = metadata !{i32 96, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !279, i32 96, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!282 = metadata !{i32 97, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !281, i32 96, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!284 = metadata !{i32 98, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 98, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!286 = metadata !{i32 99, i32 0, metadata !285, null}
!287 = metadata !{i32 101, i32 0, metadata !103, null}
!288 = metadata !{i32 103, i32 0, metadata !113, null}
!289 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [m] [line 52]
!290 = metadata !{i32 105, i32 0, metadata !113, null}
!291 = metadata !{i32 52, i32 0, metadata !21, metadata !290}
!292 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !290} ; [ DW_TAG_auto_variable ] [i] [line 54]
!293 = metadata !{i32 56, i32 0, metadata !248, metadata !290}
!294 = metadata !{i32 58, i32 0, metadata !250, metadata !290} ; [ DW_TAG_imported_module ]
!295 = metadata !{i32 57, i32 0, metadata !250, metadata !290}
!296 = metadata !{i32 59, i32 0, metadata !250, metadata !290}
!297 = metadata !{i32 107, i32 0, metadata !113, null}
!298 = metadata !{i32 109, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !113, i32 107, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!300 = metadata !{i32 110, i32 0, metadata !299, null}
!301 = metadata !{i32 111, i32 0, metadata !299, null}
!302 = metadata !{i32 112, i32 0, metadata !299, null}
!303 = metadata !{i32 113, i32 0, metadata !299, null}
!304 = metadata !{i32 115, i32 0, metadata !299, null}
!305 = metadata !{i32 116, i32 0, metadata !299, null}
!306 = metadata !{i32 117, i32 0, metadata !299, null}
!307 = metadata !{i32 118, i32 0, metadata !299, null}
!308 = metadata !{i32 119, i32 0, metadata !299, null}
!309 = metadata !{i32 121, i32 0, metadata !299, null}
!310 = metadata !{i32 122, i32 0, metadata !299, null}
!311 = metadata !{i32 123, i32 0, metadata !299, null}
!312 = metadata !{i32 124, i32 0, metadata !299, null}
!313 = metadata !{i32 125, i32 0, metadata !299, null}
!314 = metadata !{i32 127, i32 0, metadata !299, null}
!315 = metadata !{i32 128, i32 0, metadata !299, null}
!316 = metadata !{i32 129, i32 0, metadata !113, null}
!317 = metadata !{i32 131, i32 0, metadata !120, null}
!318 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !319} ; [ DW_TAG_arg_variable ] [m] [line 52]
!319 = metadata !{i32 133, i32 0, metadata !120, null}
!320 = metadata !{i32 52, i32 0, metadata !21, metadata !319}
!321 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !319} ; [ DW_TAG_auto_variable ] [i] [line 54]
!322 = metadata !{i32 56, i32 0, metadata !248, metadata !319}
!323 = metadata !{i32 58, i32 0, metadata !250, metadata !319} ; [ DW_TAG_imported_module ]
!324 = metadata !{i32 57, i32 0, metadata !250, metadata !319}
!325 = metadata !{i32 59, i32 0, metadata !250, metadata !319}
!326 = metadata !{i32 134, i32 0, metadata !120, null}
!327 = metadata !{i32 135, i32 0, metadata !120, null}
!328 = metadata !{i32 136, i32 0, metadata !120, null}
!329 = metadata !{i32 137, i32 0, metadata !120, null}
!330 = metadata !{i32 145, i32 0, metadata !128, null}
!331 = metadata !{i32 148, i32 0, metadata !128, null}
!332 = metadata !{i32 152, i32 0, metadata !128, null}
!333 = metadata !{i32 153, i32 0, metadata !128, null}
!334 = metadata !{i32 154, i32 0, metadata !128, null}
!335 = metadata !{i32 155, i32 0, metadata !128, null}
!336 = metadata !{i32 156, i32 0, metadata !128, null}
!337 = metadata !{i32 161, i32 0, metadata !128, null}
!338 = metadata !{i32 162, i32 0, metadata !128, null}
!339 = metadata !{i32 163, i32 0, metadata !128, null}
!340 = metadata !{i32 786689, metadata !120, metadata !"tx", metadata !5, i32 16777347, metadata !10, i32 0, metadata !339} ; [ DW_TAG_arg_variable ] [tx] [line 131]
!341 = metadata !{i32 131, i32 0, metadata !120, metadata !339}
!342 = metadata !{i32 786689, metadata !120, metadata !"ty", metadata !5, i32 33554563, metadata !10, i32 0, metadata !339} ; [ DW_TAG_arg_variable ] [ty] [line 131]
!343 = metadata !{i32 786689, metadata !120, metadata !"tz", metadata !5, i32 50331779, metadata !10, i32 0, metadata !339} ; [ DW_TAG_arg_variable ] [tz] [line 131]
!344 = metadata !{i32 786689, metadata !120, metadata !"A", metadata !5, i32 67108995, metadata !8, i32 0, metadata !339} ; [ DW_TAG_arg_variable ] [A] [line 131]
!345 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !346} ; [ DW_TAG_arg_variable ] [m] [line 52]
!346 = metadata !{i32 133, i32 0, metadata !120, metadata !339}
!347 = metadata !{i32 52, i32 0, metadata !21, metadata !346}
!348 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [i] [line 54]
!349 = metadata !{i32 56, i32 0, metadata !248, metadata !346}
!350 = metadata !{i32 58, i32 0, metadata !250, metadata !346} ; [ DW_TAG_imported_module ]
!351 = metadata !{i32 57, i32 0, metadata !250, metadata !346}
!352 = metadata !{i32 59, i32 0, metadata !250, metadata !346}
!353 = metadata !{i32 134, i32 0, metadata !120, metadata !339}
!354 = metadata !{i32 135, i32 0, metadata !120, metadata !339}
!355 = metadata !{i32 136, i32 0, metadata !120, metadata !339}
!356 = metadata !{i32 165, i32 0, metadata !128, null}
!357 = metadata !{i32 786689, metadata !120, metadata !"tx", metadata !5, i32 16777347, metadata !10, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [tx] [line 131]
!358 = metadata !{i32 131, i32 0, metadata !120, metadata !356}
!359 = metadata !{i32 786689, metadata !120, metadata !"ty", metadata !5, i32 33554563, metadata !10, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [ty] [line 131]
!360 = metadata !{i32 786689, metadata !120, metadata !"tz", metadata !5, i32 50331779, metadata !10, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [tz] [line 131]
!361 = metadata !{i32 786689, metadata !120, metadata !"A", metadata !5, i32 67108995, metadata !8, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [A] [line 131]
!362 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !363} ; [ DW_TAG_arg_variable ] [m] [line 52]
!363 = metadata !{i32 133, i32 0, metadata !120, metadata !356}
!364 = metadata !{i32 52, i32 0, metadata !21, metadata !363}
!365 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !363} ; [ DW_TAG_auto_variable ] [i] [line 54]
!366 = metadata !{i32 56, i32 0, metadata !248, metadata !363}
!367 = metadata !{i32 58, i32 0, metadata !250, metadata !363} ; [ DW_TAG_imported_module ]
!368 = metadata !{i32 57, i32 0, metadata !250, metadata !363}
!369 = metadata !{i32 59, i32 0, metadata !250, metadata !363}
!370 = metadata !{i32 134, i32 0, metadata !120, metadata !356}
!371 = metadata !{i32 135, i32 0, metadata !120, metadata !356}
!372 = metadata !{i32 136, i32 0, metadata !120, metadata !356}
!373 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !374} ; [ DW_TAG_arg_variable ] [m] [line 52]
!374 = metadata !{i32 168, i32 0, metadata !128, null}
!375 = metadata !{i32 52, i32 0, metadata !21, metadata !374}
!376 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !374} ; [ DW_TAG_auto_variable ] [i] [line 54]
!377 = metadata !{i32 56, i32 0, metadata !248, metadata !374}
!378 = metadata !{i32 58, i32 0, metadata !250, metadata !374} ; [ DW_TAG_imported_module ]
!379 = metadata !{i32 57, i32 0, metadata !250, metadata !374}
!380 = metadata !{i32 59, i32 0, metadata !250, metadata !374}
!381 = metadata !{i32 169, i32 0, metadata !128, null}
!382 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !383} ; [ DW_TAG_arg_variable ] [m] [line 52]
!383 = metadata !{i32 171, i32 0, metadata !128, null}
!384 = metadata !{i32 52, i32 0, metadata !21, metadata !383}
!385 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !383} ; [ DW_TAG_auto_variable ] [i] [line 54]
!386 = metadata !{i32 56, i32 0, metadata !248, metadata !383}
!387 = metadata !{i32 58, i32 0, metadata !250, metadata !383} ; [ DW_TAG_imported_module ]
!388 = metadata !{i32 57, i32 0, metadata !250, metadata !383}
!389 = metadata !{i32 59, i32 0, metadata !250, metadata !383}
!390 = metadata !{i32 172, i32 0, metadata !128, null}
!391 = metadata !{i32 173, i32 0, metadata !128, null}
!392 = metadata !{i32 58, i32 0, metadata !250, metadata !393} ; [ DW_TAG_imported_module ]
!393 = metadata !{i32 175, i32 0, metadata !128, null}
!394 = metadata !{i32 57, i32 0, metadata !250, metadata !393}
!395 = metadata !{i32 59, i32 0, metadata !250, metadata !393}
!396 = metadata !{i32 56, i32 0, metadata !248, metadata !393}
!397 = metadata !{i32 176, i32 0, metadata !128, null}
!398 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !399} ; [ DW_TAG_arg_variable ] [m] [line 52]
!399 = metadata !{i32 178, i32 0, metadata !128, null}
!400 = metadata !{i32 52, i32 0, metadata !21, metadata !399}
!401 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !399} ; [ DW_TAG_auto_variable ] [i] [line 54]
!402 = metadata !{i32 56, i32 0, metadata !248, metadata !399}
!403 = metadata !{i32 58, i32 0, metadata !250, metadata !399} ; [ DW_TAG_imported_module ]
!404 = metadata !{i32 57, i32 0, metadata !250, metadata !399}
!405 = metadata !{i32 59, i32 0, metadata !250, metadata !399}
!406 = metadata !{i32 179, i32 0, metadata !128, null}
!407 = metadata !{i32 786689, metadata !21, metadata !"m", metadata !5, i32 16777268, metadata !8, i32 0, metadata !408} ; [ DW_TAG_arg_variable ] [m] [line 52]
!408 = metadata !{i32 181, i32 0, metadata !128, null}
!409 = metadata !{i32 52, i32 0, metadata !21, metadata !408}
!410 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !408} ; [ DW_TAG_auto_variable ] [i] [line 54]
!411 = metadata !{i32 56, i32 0, metadata !248, metadata !408}
!412 = metadata !{i32 58, i32 0, metadata !250, metadata !408} ; [ DW_TAG_imported_module ]
!413 = metadata !{i32 57, i32 0, metadata !250, metadata !408}
!414 = metadata !{i32 59, i32 0, metadata !250, metadata !408}
!415 = metadata !{i32 184, i32 0, metadata !128, null}
!416 = metadata !{i32 185, i32 0, metadata !128, null}
!417 = metadata !{i32 186, i32 0, metadata !128, null}
!418 = metadata !{i32 187, i32 0, metadata !128, null}
!419 = metadata !{i32 188, i32 0, metadata !128, null}
!420 = metadata !{i32 189, i32 0, metadata !128, null}
!421 = metadata !{i32 191, i32 0, metadata !128, null}
!422 = metadata !{i32 203, i32 0, metadata !128, null}
!423 = metadata !{i32 205, i32 0, metadata !171, null}
!424 = metadata !{float 0.000000e+00}
!425 = metadata !{i32 211, i32 0, metadata !171, null}
!426 = metadata !{i32 212, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !171, i32 212, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!428 = metadata !{i32 213, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !427, i32 212, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!430 = metadata !{i32 214, i32 0, metadata !429, null}
!431 = metadata !{i32 216, i32 0, metadata !171, null}
!432 = metadata !{i32 217, i32 0, metadata !171, null}
!433 = metadata !{i32 218, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !171, i32 217, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!435 = metadata !{i32 786689, metadata !228, metadata !"a", metadata !216, i32 16777574, metadata !14, i32 0, metadata !433} ; [ DW_TAG_arg_variable ] [a] [line 358]
!436 = metadata !{i32 358, i32 0, metadata !228, metadata !433}
!437 = metadata !{i32 360, i32 0, metadata !438, metadata !433}
!438 = metadata !{i32 786443, metadata !215, metadata !228} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!439 = metadata !{i32 219, i32 0, metadata !434, null}
!440 = metadata !{i32 224, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !171, i32 223, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!442 = metadata !{i32 223, i32 0, metadata !441, null}
!443 = metadata !{i32 225, i32 0, metadata !171, null}
!444 = metadata !{i32 226, i32 0, metadata !171, null}
!445 = metadata !{i32 229, i32 0, metadata !182, null}
!446 = metadata !{i32 235, i32 0, metadata !182, null}
!447 = metadata !{float 0x3FD0C15240000000}
!448 = metadata !{i32 238, i32 0, metadata !193, null}
!449 = metadata !{i32 240, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !193, i32 240, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!451 = metadata !{i32 241, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !1, metadata !450, i32 240, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!453 = metadata !{i32 242, i32 0, metadata !452, null}
!454 = metadata !{i32 258, i32 0, metadata !182, null}
!455 = metadata !{i32 259, i32 0, metadata !182, null}
!456 = metadata !{i32 261, i32 0, metadata !182, null}
!457 = metadata !{i32 264, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !459, i32 263, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!459 = metadata !{i32 786443, metadata !1, metadata !182, i32 262, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!460 = metadata !{i32 262, i32 0, metadata !459, null}
!461 = metadata !{i32 266, i32 0, metadata !182, null}
!462 = metadata !{i32 267, i32 0, metadata !182, null}
!463 = metadata !{i32 269, i32 0, metadata !194, null}
!464 = metadata !{i32 274, i32 0, metadata !194, null}
!465 = metadata !{i32 275, i32 0, metadata !194, null}
!466 = metadata !{i32 277, i32 0, metadata !194, null}
!467 = metadata !{i32 278, i32 0, metadata !194, null}
!468 = metadata !{i32 279, i32 0, metadata !194, null}
!469 = metadata !{i32 281, i32 0, metadata !199, null}
!470 = metadata !{float 4.000000e+00}
!471 = metadata !{i32 786689, metadata !221, metadata !"sx", metadata !5, i32 33554571, metadata !10, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [sx] [line 139]
!472 = metadata !{i32 288, i32 0, metadata !199, null}
!473 = metadata !{i32 139, i32 0, metadata !221, metadata !472}
!474 = metadata !{i32 786689, metadata !221, metadata !"sy", metadata !5, i32 50331787, metadata !10, i32 0, metadata !472} ; [ DW_TAG_arg_variable ] [sy] [line 139]
!475 = metadata !{i32 141, i32 0, metadata !476, metadata !472}
!476 = metadata !{i32 786443, metadata !1, metadata !221} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!477 = metadata !{i32 142, i32 0, metadata !476, metadata !472}
!478 = metadata !{i32 289, i32 0, metadata !199, null}
!479 = metadata !{i32 786689, metadata !214, metadata !"a", metadata !216, i32 16777532, metadata !14, i32 0, metadata !478} ; [ DW_TAG_arg_variable ] [a] [line 316]
!480 = metadata !{i32 316, i32 0, metadata !214, metadata !478}
!481 = metadata !{i32 321, i32 0, metadata !482, metadata !478}
!482 = metadata !{i32 786443, metadata !215, metadata !214} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!483 = metadata !{i32 322, i32 0, metadata !482, metadata !478}
!484 = metadata !{i32 323, i32 0, metadata !482, metadata !478}
!485 = metadata !{i32 290, i32 0, metadata !199, null}
!486 = metadata !{i32 291, i32 0, metadata !199, null}
!487 = metadata !{i32 292, i32 0, metadata !199, null}
!488 = metadata !{i32 293, i32 0, metadata !199, null}
!489 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !5, i32 54, metadata !20, i32 0, metadata !490} ; [ DW_TAG_auto_variable ] [i] [line 54]
!490 = metadata !{i32 296, i32 0, metadata !199, null}
!491 = metadata !{i32 56, i32 0, metadata !248, metadata !490}
!492 = metadata !{i32 58, i32 0, metadata !250, metadata !490} ; [ DW_TAG_imported_module ]
!493 = metadata !{i32 57, i32 0, metadata !250, metadata !490}
!494 = metadata !{i32 59, i32 0, metadata !250, metadata !490}
!495 = metadata !{i32 297, i32 0, metadata !199, null}
!496 = metadata !{i32 298, i32 0, metadata !199, null}
!497 = metadata !{i32 300, i32 0, metadata !203, null}
!498 = metadata !{i32 305, i32 0, metadata !203, null}
!499 = metadata !{i32 308, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !203, i32 308, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!501 = metadata !{i32 310, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !500, i32 309, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/3dview.c]
!503 = metadata !{i32 309, i32 0, metadata !502, null}
!504 = metadata !{i32 312, i32 0, metadata !203, null}
!505 = metadata !{i32 314, i32 0, metadata !203, null}
