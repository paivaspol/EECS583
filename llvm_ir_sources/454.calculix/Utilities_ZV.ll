; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZVinit(%d,%f,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVdotU(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVdotC(%d,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ZVdotiU(%d,%p,%p,%p,%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVaxpy(%d,%p,%f,%f,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ZVscale(%d,%p,%f,%f)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [49 x i8] c"\0A fatal error in ZVfprintf(%p,%d,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"\0A < %12.4e, %12.4e >\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVminabs(%d,%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVmaxabs(%d,%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ZVcopy(%d,%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [45 x i8] c"\0A fatal error in ZVsub(%d,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ZVscale2(%d,%p,%p,...)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [81 x i8] c"\0A fatal error in ZVgather, invalid input\0A size = %d, y = %p, x = %p, index = %p\0A\00", align 1
@.str17 = private unnamed_addr constant [81 x i8] c"\0A fatal error in ZVscatter, invalid data\0A size = %d, y = %p, index = %p, x = %p\0A\00", align 1
@.str18 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ZVzero(%d,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @Zabs(double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !10), !dbg !826
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !11), !dbg !827
  %cmp = fcmp oeq double %real, 0.000000e+00, !dbg !828
  br i1 %cmp, label %if.then, label %if.else, !dbg !828

if.then:                                          ; preds = %entry
  %call = tail call double @fabs(double %imag) #5, !dbg !829
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !12), !dbg !829
  br label %if.end18, !dbg !831

if.else:                                          ; preds = %entry
  %cmp1 = fcmp oeq double %imag, 0.000000e+00, !dbg !832
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !832

if.then2:                                         ; preds = %if.else
  %call3 = tail call double @fabs(double %real) #5, !dbg !833
  tail call void @llvm.dbg.value(metadata !{double %call3}, i64 0, metadata !12), !dbg !833
  br label %if.end18, !dbg !835

if.else4:                                         ; preds = %if.else
  %cmp5 = fcmp ult double %real, %imag, !dbg !836
  br i1 %cmp5, label %if.else10, label %if.then6, !dbg !836

if.then6:                                         ; preds = %if.else4
  %div = fdiv double %imag, %real, !dbg !837
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !13), !dbg !837
  %call7 = tail call double @fabs(double %real) #5, !dbg !839
  %mul = fmul double %div, %div, !dbg !839
  %add = fadd double %mul, 1.000000e+00, !dbg !839
  %call8 = tail call double @sqrt(double %add) #6, !dbg !839
  %mul9 = fmul double %call7, %call8, !dbg !839
  tail call void @llvm.dbg.value(metadata !{double %mul9}, i64 0, metadata !12), !dbg !839
  br label %if.end18, !dbg !840

if.else10:                                        ; preds = %if.else4
  %div11 = fdiv double %real, %imag, !dbg !841
  tail call void @llvm.dbg.value(metadata !{double %div11}, i64 0, metadata !13), !dbg !841
  %call12 = tail call double @fabs(double %imag) #5, !dbg !843
  %mul13 = fmul double %div11, %div11, !dbg !843
  %add14 = fadd double %mul13, 1.000000e+00, !dbg !843
  %call15 = tail call double @sqrt(double %add14) #6, !dbg !843
  %mul16 = fmul double %call12, %call15, !dbg !843
  tail call void @llvm.dbg.value(metadata !{double %mul16}, i64 0, metadata !12), !dbg !843
  br label %if.end18

if.end18:                                         ; preds = %if.then2, %if.else10, %if.then6, %if.then
  %abs.0 = phi double [ %call, %if.then ], [ %call3, %if.then2 ], [ %mul9, %if.then6 ], [ %mul16, %if.else10 ]
  ret double %abs.0, !dbg !844
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Zrecip(double %areal, double %aimag, double* nocapture %pbreal, double* nocapture %pbimag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !20), !dbg !845
  tail call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !21), !dbg !846
  tail call void @llvm.dbg.value(metadata !{double* %pbreal}, i64 0, metadata !22), !dbg !847
  tail call void @llvm.dbg.value(metadata !{double* %pbimag}, i64 0, metadata !23), !dbg !848
  %cmp = fcmp oeq double %areal, 0.000000e+00, !dbg !849
  %cmp1 = fcmp oeq double %aimag, 0.000000e+00, !dbg !849
  %or.cond = and i1 %cmp, %cmp1, !dbg !849
  br i1 %or.cond, label %return, label %if.end, !dbg !849

if.end:                                           ; preds = %entry
  %call = tail call double @fabs(double %areal) #5, !dbg !850
  %call2 = tail call double @fabs(double %aimag) #5, !dbg !850
  %cmp3 = fcmp ult double %call, %call2, !dbg !850
  br i1 %cmp3, label %if.else, label %if.then4, !dbg !850

if.then4:                                         ; preds = %if.end
  %div = fdiv double %aimag, %areal, !dbg !851
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !26), !dbg !851
  %mul = fmul double %div, %aimag, !dbg !853
  %add = fadd double %mul, %areal, !dbg !853
  %div5 = fdiv double 1.000000e+00, %add, !dbg !853
  tail call void @llvm.dbg.value(metadata !{double %div5}, i64 0, metadata !25), !dbg !853
  %0 = fmul double %div, %div5, !dbg !854
  %mul6 = fsub double -0.000000e+00, %0, !dbg !854
  tail call void @llvm.dbg.value(metadata !{double %mul6}, i64 0, metadata !24), !dbg !854
  br label %if.end13, !dbg !855

if.else:                                          ; preds = %if.end
  %div7 = fdiv double %areal, %aimag, !dbg !856
  tail call void @llvm.dbg.value(metadata !{double %div7}, i64 0, metadata !26), !dbg !856
  %mul8 = fmul double %div7, %areal, !dbg !858
  %add9 = fadd double %mul8, %aimag, !dbg !858
  %div10 = fdiv double -1.000000e+00, %add9, !dbg !858
  tail call void @llvm.dbg.value(metadata !{double %div10}, i64 0, metadata !24), !dbg !858
  %1 = fmul double %div7, %div10, !dbg !859
  %mul12 = fsub double -0.000000e+00, %1, !dbg !859
  tail call void @llvm.dbg.value(metadata !{double %mul12}, i64 0, metadata !25), !dbg !859
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  %bimag.0 = phi double [ %mul6, %if.then4 ], [ %div10, %if.else ]
  %breal.0 = phi double [ %div5, %if.then4 ], [ %mul12, %if.else ]
  store double %breal.0, double* %pbreal, align 8, !dbg !860, !tbaa !861
  store double %bimag.0, double* %pbimag, align 8, !dbg !864, !tbaa !861
  br label %return, !dbg !865

return:                                           ; preds = %entry, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !865
}

; Function Attrs: nounwind optsize uwtable
define i32 @Zrecip2(double %areal, double %aimag, double %breal, double %bimag, double %creal, double %cimag, double %dreal, double %dimag, double* %pereal, double* %peimag, double* %pfreal, double* %pfimag, double* %pgreal, double* %pgimag, double* %phreal, double* %phimag) #0 {
entry:
  %yreal = alloca double, align 8
  %yimag = alloca double, align 8
  call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !31), !dbg !866
  call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !32), !dbg !867
  call void @llvm.dbg.value(metadata !{double %breal}, i64 0, metadata !33), !dbg !868
  call void @llvm.dbg.value(metadata !{double %bimag}, i64 0, metadata !34), !dbg !869
  call void @llvm.dbg.value(metadata !{double %creal}, i64 0, metadata !35), !dbg !870
  call void @llvm.dbg.value(metadata !{double %cimag}, i64 0, metadata !36), !dbg !871
  call void @llvm.dbg.value(metadata !{double %dreal}, i64 0, metadata !37), !dbg !872
  call void @llvm.dbg.value(metadata !{double %dimag}, i64 0, metadata !38), !dbg !873
  call void @llvm.dbg.value(metadata !{double* %pereal}, i64 0, metadata !39), !dbg !874
  call void @llvm.dbg.value(metadata !{double* %peimag}, i64 0, metadata !40), !dbg !875
  call void @llvm.dbg.value(metadata !{double* %pfreal}, i64 0, metadata !41), !dbg !876
  call void @llvm.dbg.value(metadata !{double* %pfimag}, i64 0, metadata !42), !dbg !877
  call void @llvm.dbg.value(metadata !{double* %pgreal}, i64 0, metadata !43), !dbg !878
  call void @llvm.dbg.value(metadata !{double* %pgimag}, i64 0, metadata !44), !dbg !879
  call void @llvm.dbg.value(metadata !{double* %phreal}, i64 0, metadata !45), !dbg !880
  call void @llvm.dbg.value(metadata !{double* %phimag}, i64 0, metadata !46), !dbg !881
  call void @llvm.dbg.declare(metadata !{double* %yreal}, metadata !49), !dbg !882
  call void @llvm.dbg.declare(metadata !{double* %yimag}, metadata !50), !dbg !882
  %mul = fmul double %areal, %dreal, !dbg !883
  %mul1 = fmul double %aimag, %dimag, !dbg !883
  %sub = fsub double %mul, %mul1, !dbg !883
  %mul2 = fmul double %breal, %creal, !dbg !883
  %sub3 = fsub double %sub, %mul2, !dbg !883
  %mul4 = fmul double %bimag, %cimag, !dbg !883
  %add = fadd double %mul4, %sub3, !dbg !883
  call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !47), !dbg !883
  %mul5 = fmul double %areal, %dimag, !dbg !884
  %mul6 = fmul double %aimag, %dreal, !dbg !884
  %add7 = fadd double %mul6, %mul5, !dbg !884
  %mul8 = fmul double %breal, %cimag, !dbg !884
  %sub9 = fsub double %add7, %mul8, !dbg !884
  %mul10 = fmul double %bimag, %creal, !dbg !884
  %sub11 = fsub double %sub9, %mul10, !dbg !884
  call void @llvm.dbg.value(metadata !{double %sub11}, i64 0, metadata !48), !dbg !884
  %call = call i32 @Zrecip(double %add, double %sub11, double* %yreal, double* %yimag) #7, !dbg !885
  %cmp = icmp eq double* %pereal, null, !dbg !886
  br i1 %cmp, label %if.end, label %if.then, !dbg !886

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !887
  %0 = load double* %yreal, align 8, !dbg !887, !tbaa !861
  %mul12 = fmul double %0, %dreal, !dbg !887
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !887
  %1 = load double* %yimag, align 8, !dbg !887, !tbaa !861
  %mul13 = fmul double %1, %dimag, !dbg !887
  %sub14 = fsub double %mul12, %mul13, !dbg !887
  store double %sub14, double* %pereal, align 8, !dbg !887, !tbaa !861
  br label %if.end, !dbg !889

if.end:                                           ; preds = %entry, %if.then
  %cmp15 = icmp eq double* %peimag, null, !dbg !890
  br i1 %cmp15, label %if.end20, label %if.then16, !dbg !890

if.then16:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !891
  %2 = load double* %yimag, align 8, !dbg !891, !tbaa !861
  %mul17 = fmul double %2, %dreal, !dbg !891
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !891
  %3 = load double* %yreal, align 8, !dbg !891, !tbaa !861
  %mul18 = fmul double %3, %dimag, !dbg !891
  %add19 = fadd double %mul17, %mul18, !dbg !891
  store double %add19, double* %peimag, align 8, !dbg !891, !tbaa !861
  br label %if.end20, !dbg !893

if.end20:                                         ; preds = %if.end, %if.then16
  %cmp21 = icmp eq double* %pfreal, null, !dbg !894
  br i1 %cmp21, label %if.end27, label %if.then22, !dbg !894

if.then22:                                        ; preds = %if.end20
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !895
  %4 = load double* %yreal, align 8, !dbg !895, !tbaa !861
  %5 = fmul double %4, %breal, !dbg !895
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !895
  %6 = load double* %yimag, align 8, !dbg !895, !tbaa !861
  %mul25 = fmul double %6, %bimag, !dbg !895
  %add26 = fsub double %mul25, %5, !dbg !895
  store double %add26, double* %pfreal, align 8, !dbg !895, !tbaa !861
  br label %if.end27, !dbg !897

if.end27:                                         ; preds = %if.end20, %if.then22
  %cmp28 = icmp eq double* %pfimag, null, !dbg !898
  br i1 %cmp28, label %if.end34, label %if.then29, !dbg !898

if.then29:                                        ; preds = %if.end27
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !899
  %7 = load double* %yimag, align 8, !dbg !899, !tbaa !861
  %8 = fmul double %7, %breal, !dbg !899
  %mul31 = fsub double -0.000000e+00, %8, !dbg !899
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !899
  %9 = load double* %yreal, align 8, !dbg !899, !tbaa !861
  %mul32 = fmul double %9, %bimag, !dbg !899
  %sub33 = fsub double %mul31, %mul32, !dbg !899
  store double %sub33, double* %pfimag, align 8, !dbg !899, !tbaa !861
  br label %if.end34, !dbg !901

if.end34:                                         ; preds = %if.end27, %if.then29
  %cmp35 = icmp eq double* %pgreal, null, !dbg !902
  br i1 %cmp35, label %if.end41, label %if.then36, !dbg !902

if.then36:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !903
  %10 = load double* %yreal, align 8, !dbg !903, !tbaa !861
  %11 = fmul double %10, %creal, !dbg !903
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !903
  %12 = load double* %yimag, align 8, !dbg !903, !tbaa !861
  %mul39 = fmul double %12, %cimag, !dbg !903
  %add40 = fsub double %mul39, %11, !dbg !903
  store double %add40, double* %pgreal, align 8, !dbg !903, !tbaa !861
  br label %if.end41, !dbg !905

if.end41:                                         ; preds = %if.end34, %if.then36
  %cmp42 = icmp eq double* %pgimag, null, !dbg !906
  br i1 %cmp42, label %if.end48, label %if.then43, !dbg !906

if.then43:                                        ; preds = %if.end41
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !907
  %13 = load double* %yimag, align 8, !dbg !907, !tbaa !861
  %14 = fmul double %13, %creal, !dbg !907
  %mul45 = fsub double -0.000000e+00, %14, !dbg !907
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !907
  %15 = load double* %yreal, align 8, !dbg !907, !tbaa !861
  %mul46 = fmul double %15, %cimag, !dbg !907
  %sub47 = fsub double %mul45, %mul46, !dbg !907
  store double %sub47, double* %pgimag, align 8, !dbg !907, !tbaa !861
  br label %if.end48, !dbg !909

if.end48:                                         ; preds = %if.end41, %if.then43
  %cmp49 = icmp eq double* %phreal, null, !dbg !910
  br i1 %cmp49, label %if.end54, label %if.then50, !dbg !910

if.then50:                                        ; preds = %if.end48
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !911
  %16 = load double* %yreal, align 8, !dbg !911, !tbaa !861
  %mul51 = fmul double %16, %areal, !dbg !911
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !911
  %17 = load double* %yimag, align 8, !dbg !911, !tbaa !861
  %mul52 = fmul double %17, %aimag, !dbg !911
  %sub53 = fsub double %mul51, %mul52, !dbg !911
  store double %sub53, double* %phreal, align 8, !dbg !911, !tbaa !861
  br label %if.end54, !dbg !913

if.end54:                                         ; preds = %if.end48, %if.then50
  %cmp55 = icmp eq double* %phimag, null, !dbg !914
  br i1 %cmp55, label %if.end60, label %if.then56, !dbg !914

if.then56:                                        ; preds = %if.end54
  call void @llvm.dbg.value(metadata !{double* %yimag}, i64 0, metadata !50), !dbg !915
  %18 = load double* %yimag, align 8, !dbg !915, !tbaa !861
  %mul57 = fmul double %18, %areal, !dbg !915
  call void @llvm.dbg.value(metadata !{double* %yreal}, i64 0, metadata !49), !dbg !915
  %19 = load double* %yreal, align 8, !dbg !915, !tbaa !861
  %mul58 = fmul double %19, %aimag, !dbg !915
  %add59 = fadd double %mul57, %mul58, !dbg !915
  store double %add59, double* %phimag, align 8, !dbg !915, !tbaa !861
  br label %if.end60, !dbg !917

if.end60:                                         ; preds = %if.end54, %if.then56
  ret i32 1, !dbg !918
}

; Function Attrs: nounwind optsize uwtable
define noalias double* @ZVinit(i32 %n, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !55), !dbg !919
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !56), !dbg !920
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !57), !dbg !921
  %cmp = icmp slt i32 %n, 1, !dbg !922
  br i1 %cmp, label %if.then, label %if.then2, !dbg !922

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !923, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i32 %n, double %real, double %imag) #6, !dbg !923
  tail call void @exit(i32 -1) #8, !dbg !926
  unreachable, !dbg !926

if.then2:                                         ; preds = %entry
  %mul = shl nsw i32 %n, 1, !dbg !927
  %conv = sext i32 %mul to i64, !dbg !928
  %mul4 = shl nsw i64 %conv, 3, !dbg !928
  %call5 = tail call noalias i8* @malloc(i64 %mul4) #6, !dbg !928
  %1 = bitcast i8* %call5 to double*, !dbg !928
  tail call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !58), !dbg !928
  %cmp6 = icmp eq i8* %call5, null, !dbg !928
  br i1 %cmp6, label %if.then8, label %for.cond.preheader, !dbg !928

for.cond.preheader:                               ; preds = %if.then2
  %cmp2645 = icmp sgt i32 %n, 0, !dbg !930
  br i1 %cmp2645, label %for.body, label %for.end, !dbg !930

if.then8:                                         ; preds = %if.then2
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !932, !tbaa !925
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul4, i32 181, i8* getelementptr inbounds ([83 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !932
  tail call void @exit(i32 -1) #8, !dbg !932
  unreachable, !dbg !932

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.046 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %1, i64 %indvars.iv, !dbg !934
  store double %real, double* %arrayidx, align 8, !dbg !934, !tbaa !861
  %3 = or i64 %indvars.iv, 1, !dbg !936
  %arrayidx29 = getelementptr inbounds double* %1, i64 %3, !dbg !936
  store double %imag, double* %arrayidx29, align 8, !dbg !936, !tbaa !861
  %inc = add nsw i32 %ii.046, 1, !dbg !930
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !59), !dbg !930
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !930
  %exitcond = icmp eq i32 %inc, %n, !dbg !930
  br i1 %exitcond, label %for.end, label %for.body, !dbg !930

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret double* %1, !dbg !937
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU(i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !65), !dbg !938
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !66), !dbg !939
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !67), !dbg !940
  tail call void @llvm.dbg.value(metadata !{double* %prdot}, i64 0, metadata !68), !dbg !941
  tail call void @llvm.dbg.value(metadata !{double* %pidot}, i64 0, metadata !69), !dbg !942
  %cmp = icmp slt i32 %size, 0, !dbg !943
  %cmp1 = icmp eq double* %y, null, !dbg !943
  %or.cond = or i1 %cmp, %cmp1, !dbg !943
  %cmp3 = icmp eq double* %x, null, !dbg !943
  %or.cond47 = or i1 %or.cond, %cmp3, !dbg !943
  %cmp5 = icmp eq double* %prdot, null, !dbg !943
  %or.cond48 = or i1 %or.cond47, %cmp5, !dbg !943
  %cmp7 = icmp eq double* %pidot, null, !dbg !943
  %or.cond49 = or i1 %or.cond48, %cmp7, !dbg !943
  br i1 %or.cond49, label %if.then, label %for.cond.preheader, !dbg !943

for.cond.preheader:                               ; preds = %entry
  %cmp850 = icmp sgt i32 %size, 0, !dbg !944
  br i1 %cmp850, label %for.body, label %for.end, !dbg !944

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !946, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #6, !dbg !946
  tail call void @exit(i32 -1) #8, !dbg !948
  unreachable, !dbg !948

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.053 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %isum.052 = phi double [ %add21, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.051 = phi double [ %add17, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !949
  %1 = load double* %arrayidx, align 8, !dbg !949, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !73), !dbg !949
  %2 = or i64 %indvars.iv, 1, !dbg !951
  %arrayidx10 = getelementptr inbounds double* %x, i64 %2, !dbg !951
  %3 = load double* %arrayidx10, align 8, !dbg !951, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !72), !dbg !951
  %arrayidx12 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !952
  %4 = load double* %arrayidx12, align 8, !dbg !952, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !75), !dbg !952
  %arrayidx15 = getelementptr inbounds double* %y, i64 %2, !dbg !953
  %5 = load double* %arrayidx15, align 8, !dbg !953, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !74), !dbg !953
  %mul = fmul double %1, %4, !dbg !954
  %mul16 = fmul double %3, %5, !dbg !954
  %sub = fsub double %mul, %mul16, !dbg !954
  %add17 = fadd double %rsum.051, %sub, !dbg !954
  tail call void @llvm.dbg.value(metadata !{double %add17}, i64 0, metadata !71), !dbg !954
  %mul18 = fmul double %1, %5, !dbg !955
  %mul19 = fmul double %3, %4, !dbg !955
  %add20 = fadd double %mul19, %mul18, !dbg !955
  %add21 = fadd double %isum.052, %add20, !dbg !955
  tail call void @llvm.dbg.value(metadata !{double %add21}, i64 0, metadata !70), !dbg !955
  %inc = add nsw i32 %ii.053, 1, !dbg !944
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !76), !dbg !944
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !944
  %exitcond = icmp eq i32 %inc, %size, !dbg !944
  br i1 %exitcond, label %for.end, label %for.body, !dbg !944

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add21, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add17, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !dbg !956, !tbaa !861
  store double %isum.0.lcssa, double* %pidot, align 8, !dbg !957, !tbaa !861
  ret void, !dbg !958
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC(i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !80), !dbg !959
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !81), !dbg !960
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !82), !dbg !961
  tail call void @llvm.dbg.value(metadata !{double* %prdot}, i64 0, metadata !83), !dbg !962
  tail call void @llvm.dbg.value(metadata !{double* %pidot}, i64 0, metadata !84), !dbg !963
  %cmp = icmp slt i32 %size, 0, !dbg !964
  %cmp1 = icmp eq double* %y, null, !dbg !964
  %or.cond = or i1 %cmp, %cmp1, !dbg !964
  %cmp3 = icmp eq double* %x, null, !dbg !964
  %or.cond48 = or i1 %or.cond, %cmp3, !dbg !964
  %cmp5 = icmp eq double* %prdot, null, !dbg !964
  %or.cond49 = or i1 %or.cond48, %cmp5, !dbg !964
  %cmp7 = icmp eq double* %pidot, null, !dbg !964
  %or.cond50 = or i1 %or.cond49, %cmp7, !dbg !964
  br i1 %or.cond50, label %if.then, label %for.cond.preheader, !dbg !964

for.cond.preheader:                               ; preds = %entry
  %cmp851 = icmp sgt i32 %size, 0, !dbg !965
  br i1 %cmp851, label %for.body, label %for.end, !dbg !965

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), i32 %size, double* %y, double* %x, double* %prdot, double* %pidot) #6, !dbg !967
  tail call void @exit(i32 -1) #8, !dbg !969
  unreachable, !dbg !969

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.054 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %isum.053 = phi double [ %add22, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.052 = phi double [ %add18, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !970
  %1 = load double* %arrayidx, align 8, !dbg !970, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !88), !dbg !970
  %2 = or i64 %indvars.iv, 1, !dbg !972
  %arrayidx10 = getelementptr inbounds double* %x, i64 %2, !dbg !972
  %3 = load double* %arrayidx10, align 8, !dbg !972, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !87), !dbg !972
  %arrayidx12 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !973
  %4 = load double* %arrayidx12, align 8, !dbg !973, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !90), !dbg !973
  %arrayidx15 = getelementptr inbounds double* %y, i64 %2, !dbg !974
  %5 = load double* %arrayidx15, align 8, !dbg !974, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !89), !dbg !974
  %mul = fmul double %1, %4, !dbg !975
  %mul16 = fmul double %3, %5, !dbg !975
  %add17 = fadd double %mul, %mul16, !dbg !975
  %add18 = fadd double %rsum.052, %add17, !dbg !975
  tail call void @llvm.dbg.value(metadata !{double %add18}, i64 0, metadata !86), !dbg !975
  %6 = fmul double %1, %5, !dbg !976
  %mul20 = fmul double %3, %4, !dbg !976
  %add21 = fsub double %mul20, %6, !dbg !976
  %add22 = fadd double %isum.053, %add21, !dbg !976
  tail call void @llvm.dbg.value(metadata !{double %add22}, i64 0, metadata !85), !dbg !976
  %inc = add nsw i32 %ii.054, 1, !dbg !965
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !91), !dbg !965
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !965
  %exitcond = icmp eq i32 %inc, %size, !dbg !965
  br i1 %exitcond, label %for.end, label %for.body, !dbg !965

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add22, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add18, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !dbg !977, !tbaa !861
  store double %isum.0.lcssa, double* %pidot, align 8, !dbg !978, !tbaa !861
  ret void, !dbg !979
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotiU(i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !98), !dbg !980
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !99), !dbg !981
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !100), !dbg !982
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !101), !dbg !983
  tail call void @llvm.dbg.value(metadata !{double* %prdot}, i64 0, metadata !102), !dbg !984
  tail call void @llvm.dbg.value(metadata !{double* %pidot}, i64 0, metadata !103), !dbg !985
  %cmp = icmp slt i32 %size, 0, !dbg !986
  %cmp1 = icmp eq double* %y, null, !dbg !986
  %or.cond = or i1 %cmp, %cmp1, !dbg !986
  %cmp3 = icmp eq i32* %index, null, !dbg !986
  %or.cond59 = or i1 %or.cond, %cmp3, !dbg !986
  %cmp5 = icmp eq double* %x, null, !dbg !986
  %or.cond60 = or i1 %or.cond59, %cmp5, !dbg !986
  %cmp7 = icmp eq double* %prdot, null, !dbg !986
  %or.cond61 = or i1 %or.cond60, %cmp7, !dbg !986
  %cmp9 = icmp eq double* %pidot, null, !dbg !986
  %or.cond62 = or i1 %or.cond61, %cmp9, !dbg !986
  br i1 %or.cond62, label %if.then, label %for.cond.preheader, !dbg !986

for.cond.preheader:                               ; preds = %entry
  %cmp1063 = icmp sgt i32 %size, 0, !dbg !987
  br i1 %cmp1063, label %for.body, label %for.end, !dbg !987

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !989, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #6, !dbg !989
  tail call void @exit(i32 -1) #8, !dbg !991
  unreachable, !dbg !991

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body ], [ 0, %for.cond.preheader ], !dbg !987
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %isum.065 = phi double [ %add29, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.064 = phi double [ %add25, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !992
  %1 = load double* %arrayidx, align 8, !dbg !992, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !107), !dbg !992
  %2 = or i64 %indvars.iv, 1, !dbg !994
  %arrayidx12 = getelementptr inbounds double* %x, i64 %2, !dbg !994
  %3 = load double* %arrayidx12, align 8, !dbg !994, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !106), !dbg !994
  %arrayidx14 = getelementptr inbounds i32* %index, i64 %indvars.iv70, !dbg !995
  %4 = load i32* %arrayidx14, align 4, !dbg !995, !tbaa !996
  %mul = shl nsw i32 %4, 1, !dbg !995
  %idxprom15 = sext i32 %mul to i64, !dbg !995
  %arrayidx16 = getelementptr inbounds double* %y, i64 %idxprom15, !dbg !995
  %5 = load double* %arrayidx16, align 8, !dbg !995, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !109), !dbg !995
  %add2058 = or i32 %mul, 1, !dbg !997
  %idxprom21 = sext i32 %add2058 to i64, !dbg !997
  %arrayidx22 = getelementptr inbounds double* %y, i64 %idxprom21, !dbg !997
  %6 = load double* %arrayidx22, align 8, !dbg !997, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !108), !dbg !997
  %mul23 = fmul double %1, %5, !dbg !998
  %mul24 = fmul double %3, %6, !dbg !998
  %sub = fsub double %mul23, %mul24, !dbg !998
  %add25 = fadd double %rsum.064, %sub, !dbg !998
  tail call void @llvm.dbg.value(metadata !{double %add25}, i64 0, metadata !105), !dbg !998
  %mul26 = fmul double %1, %6, !dbg !999
  %mul27 = fmul double %3, %5, !dbg !999
  %add28 = fadd double %mul27, %mul26, !dbg !999
  %add29 = fadd double %isum.065, %add28, !dbg !999
  tail call void @llvm.dbg.value(metadata !{double %add29}, i64 0, metadata !104), !dbg !999
  %indvars.iv.next71 = add i64 %indvars.iv70, 1, !dbg !987
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !987
  %lftr.wideiv = trunc i64 %indvars.iv.next71 to i32, !dbg !987
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !987
  br i1 %exitcond, label %for.end, label %for.body, !dbg !987

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add29, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add25, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !dbg !1000, !tbaa !861
  store double %isum.0.lcssa, double* %pidot, align 8, !dbg !1001, !tbaa !861
  ret void, !dbg !1002
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotiC(i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !114), !dbg !1003
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !115), !dbg !1004
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !116), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !117), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{double* %prdot}, i64 0, metadata !118), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{double* %pidot}, i64 0, metadata !119), !dbg !1008
  %cmp = icmp slt i32 %size, 0, !dbg !1009
  %cmp1 = icmp eq double* %y, null, !dbg !1009
  %or.cond = or i1 %cmp, %cmp1, !dbg !1009
  %cmp3 = icmp eq i32* %index, null, !dbg !1009
  %or.cond60 = or i1 %or.cond, %cmp3, !dbg !1009
  %cmp5 = icmp eq double* %x, null, !dbg !1009
  %or.cond61 = or i1 %or.cond60, %cmp5, !dbg !1009
  %cmp7 = icmp eq double* %prdot, null, !dbg !1009
  %or.cond62 = or i1 %or.cond61, %cmp7, !dbg !1009
  %cmp9 = icmp eq double* %pidot, null, !dbg !1009
  %or.cond63 = or i1 %or.cond62, %cmp9, !dbg !1009
  br i1 %or.cond63, label %if.then, label %for.cond.preheader, !dbg !1009

for.cond.preheader:                               ; preds = %entry
  %cmp1064 = icmp sgt i32 %size, 0, !dbg !1010
  br i1 %cmp1064, label %for.body, label %for.end, !dbg !1010

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1012, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str6, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x, double* %prdot, double* %pidot) #6, !dbg !1012
  tail call void @exit(i32 -1) #8, !dbg !1014
  unreachable, !dbg !1014

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body ], [ 0, %for.cond.preheader ], !dbg !1010
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %isum.066 = phi double [ %add30, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %rsum.065 = phi double [ %add26, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1015
  %1 = load double* %arrayidx, align 8, !dbg !1015, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !123), !dbg !1015
  %2 = or i64 %indvars.iv, 1, !dbg !1017
  %arrayidx12 = getelementptr inbounds double* %x, i64 %2, !dbg !1017
  %3 = load double* %arrayidx12, align 8, !dbg !1017, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !122), !dbg !1017
  %arrayidx14 = getelementptr inbounds i32* %index, i64 %indvars.iv71, !dbg !1018
  %4 = load i32* %arrayidx14, align 4, !dbg !1018, !tbaa !996
  %mul = shl nsw i32 %4, 1, !dbg !1018
  %idxprom15 = sext i32 %mul to i64, !dbg !1018
  %arrayidx16 = getelementptr inbounds double* %y, i64 %idxprom15, !dbg !1018
  %5 = load double* %arrayidx16, align 8, !dbg !1018, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !125), !dbg !1018
  %add2059 = or i32 %mul, 1, !dbg !1019
  %idxprom21 = sext i32 %add2059 to i64, !dbg !1019
  %arrayidx22 = getelementptr inbounds double* %y, i64 %idxprom21, !dbg !1019
  %6 = load double* %arrayidx22, align 8, !dbg !1019, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !124), !dbg !1019
  %mul23 = fmul double %1, %5, !dbg !1020
  %mul24 = fmul double %3, %6, !dbg !1020
  %add25 = fadd double %mul23, %mul24, !dbg !1020
  %add26 = fadd double %rsum.065, %add25, !dbg !1020
  tail call void @llvm.dbg.value(metadata !{double %add26}, i64 0, metadata !121), !dbg !1020
  %7 = fmul double %1, %6, !dbg !1021
  %mul28 = fmul double %3, %5, !dbg !1021
  %add29 = fsub double %mul28, %7, !dbg !1021
  %add30 = fadd double %isum.066, %add29, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{double %add30}, i64 0, metadata !120), !dbg !1021
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !1010
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1010
  %lftr.wideiv = trunc i64 %indvars.iv.next72 to i32, !dbg !1010
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1010
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1010

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %isum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add30, %for.body ]
  %rsum.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %add26, %for.body ]
  store double %rsum.0.lcssa, double* %prdot, align 8, !dbg !1022, !tbaa !861
  store double %isum.0.lcssa, double* %pidot, align 8, !dbg !1023, !tbaa !861
  ret void, !dbg !1024
}

; Function Attrs: nounwind optsize uwtable
define void @ZVaxpy(i32 %size, double* %y, double %areal, double %aimag, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !132), !dbg !1025
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !133), !dbg !1026
  tail call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !134), !dbg !1027
  tail call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !135), !dbg !1028
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !136), !dbg !1029
  %cmp = icmp slt i32 %size, 0, !dbg !1030
  %cmp1 = icmp eq double* %y, null, !dbg !1030
  %or.cond = or i1 %cmp, %cmp1, !dbg !1030
  %cmp3 = icmp eq double* %x, null, !dbg !1030
  %or.cond39 = or i1 %or.cond, %cmp3, !dbg !1030
  br i1 %or.cond39, label %if.then, label %for.cond.preheader, !dbg !1030

for.cond.preheader:                               ; preds = %entry
  %cmp440 = icmp sgt i32 %size, 0, !dbg !1031
  br i1 %cmp440, label %for.body, label %for.end, !dbg !1031

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1033, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag, double* %x) #6, !dbg !1033
  tail call void @exit(i32 -1) #8, !dbg !1035
  unreachable, !dbg !1035

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.041 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1036
  %1 = load double* %arrayidx, align 8, !dbg !1036, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !138), !dbg !1036
  %2 = or i64 %indvars.iv, 1, !dbg !1038
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2, !dbg !1038
  %3 = load double* %arrayidx6, align 8, !dbg !1038, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !137), !dbg !1038
  %mul = fmul double %1, %areal, !dbg !1039
  %mul7 = fmul double %3, %aimag, !dbg !1039
  %sub = fsub double %mul, %mul7, !dbg !1039
  %arrayidx9 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1039
  %4 = load double* %arrayidx9, align 8, !dbg !1039, !tbaa !861
  %add10 = fadd double %4, %sub, !dbg !1039
  store double %add10, double* %arrayidx9, align 8, !dbg !1039, !tbaa !861
  %mul11 = fmul double %3, %areal, !dbg !1040
  %mul12 = fmul double %1, %aimag, !dbg !1040
  %add13 = fadd double %mul12, %mul11, !dbg !1040
  %arrayidx16 = getelementptr inbounds double* %y, i64 %2, !dbg !1040
  %5 = load double* %arrayidx16, align 8, !dbg !1040, !tbaa !861
  %add17 = fadd double %5, %add13, !dbg !1040
  store double %add17, double* %arrayidx16, align 8, !dbg !1040, !tbaa !861
  %inc = add nsw i32 %ii.041, 1, !dbg !1031
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !139), !dbg !1031
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1031
  %exitcond = icmp eq i32 %inc, %size, !dbg !1031
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1031

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1041
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscale(i32 %size, double* %y, double %areal, double %aimag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !145), !dbg !1042
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !146), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !147), !dbg !1044
  tail call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !148), !dbg !1045
  %cmp = icmp slt i32 %size, 0, !dbg !1046
  %cmp1 = icmp eq double* %y, null, !dbg !1046
  %or.cond = or i1 %cmp, %cmp1, !dbg !1046
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !1046

for.cond.preheader:                               ; preds = %entry
  %cmp234 = icmp sgt i32 %size, 0, !dbg !1047
  br i1 %cmp234, label %for.body, label %for.end, !dbg !1047

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1049, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str8, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag) #6, !dbg !1049
  tail call void @exit(i32 -1) #8, !dbg !1051
  unreachable, !dbg !1051

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.035 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1052
  %1 = load double* %arrayidx, align 8, !dbg !1052, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !150), !dbg !1052
  %2 = or i64 %indvars.iv, 1, !dbg !1054
  %arrayidx4 = getelementptr inbounds double* %y, i64 %2, !dbg !1054
  %3 = load double* %arrayidx4, align 8, !dbg !1054, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !149), !dbg !1054
  %mul = fmul double %1, %areal, !dbg !1055
  %mul5 = fmul double %3, %aimag, !dbg !1055
  %sub = fsub double %mul, %mul5, !dbg !1055
  store double %sub, double* %arrayidx, align 8, !dbg !1055, !tbaa !861
  %mul8 = fmul double %3, %areal, !dbg !1056
  %mul9 = fmul double %1, %aimag, !dbg !1056
  %add10 = fadd double %mul9, %mul8, !dbg !1056
  store double %add10, double* %arrayidx4, align 8, !dbg !1056, !tbaa !861
  %inc = add nsw i32 %ii.035, 1, !dbg !1047
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !151), !dbg !1047
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1047
  %exitcond = icmp eq i32 %inc, %size, !dbg !1047
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1047

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1057
}

; Function Attrs: nounwind optsize uwtable
define void @ZVfprintf(%struct._IO_FILE* %fp, i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !214), !dbg !1058
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !215), !dbg !1059
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !216), !dbg !1060
  %cmp = icmp slt i32 %size, 0, !dbg !1061
  %cmp1 = icmp eq double* %y, null, !dbg !1061
  %or.cond = or i1 %cmp, %cmp1, !dbg !1061
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !1061

for.cond.preheader:                               ; preds = %entry
  %cmp217 = icmp sgt i32 %size, 0, !dbg !1062
  br i1 %cmp217, label %for.body, label %for.end, !dbg !1062

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1064, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str9, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, double* %y) #6, !dbg !1064
  tail call void @exit(i32 -1) #8, !dbg !1066
  unreachable, !dbg !1066

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.018 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1067
  %1 = load double* %arrayidx, align 8, !dbg !1067, !tbaa !861
  %2 = or i64 %indvars.iv, 1, !dbg !1067
  %arrayidx4 = getelementptr inbounds double* %y, i64 %2, !dbg !1067
  %3 = load double* %arrayidx4, align 8, !dbg !1067, !tbaa !861
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), double %1, double %3) #6, !dbg !1067
  %inc = add nsw i32 %ii.018, 1, !dbg !1062
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !217), !dbg !1062
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1062
  %exitcond = icmp eq i32 %inc, %size, !dbg !1062
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1062

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1069
}

; Function Attrs: nounwind optsize uwtable
define double @ZVminabs(i32 %size, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !223), !dbg !1070
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !224), !dbg !1071
  %cmp = icmp slt i32 %size, 0, !dbg !1072
  %cmp1 = icmp eq double* %x, null, !dbg !1072
  %or.cond = or i1 %cmp, %cmp1, !dbg !1072
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !1072

for.cond.preheader:                               ; preds = %entry
  %cmp256 = icmp sgt i32 %size, 0, !dbg !1073
  br i1 %cmp256, label %for.body, label %for.end, !dbg !1073

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1075, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), i32 %size, double* %x) #6, !dbg !1075
  tail call void @exit(i32 -1) #8, !dbg !1077
  unreachable, !dbg !1077

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %ii.058 = phi i32 [ %inc, %if.end25 ], [ 0, %for.cond.preheader ]
  %minabs.057 = phi double [ %minabs.1, %if.end25 ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1078
  %1 = load double* %arrayidx, align 8, !dbg !1078, !tbaa !861
  %call3 = tail call double @fabs(double %1) #5, !dbg !1078
  tail call void @llvm.dbg.value(metadata !{double %call3}, i64 0, metadata !228), !dbg !1078
  %2 = or i64 %indvars.iv, 1, !dbg !1080
  %arrayidx5 = getelementptr inbounds double* %x, i64 %2, !dbg !1080
  %3 = load double* %arrayidx5, align 8, !dbg !1080, !tbaa !861
  %call6 = tail call double @fabs(double %3) #5, !dbg !1080
  tail call void @llvm.dbg.value(metadata !{double %call6}, i64 0, metadata !226), !dbg !1080
  %cmp7 = fcmp oeq double %1, 0.000000e+00, !dbg !1081
  br i1 %cmp7, label %if.end25, label %if.else, !dbg !1081

if.else:                                          ; preds = %for.body
  %cmp9 = fcmp oeq double %3, 0.000000e+00, !dbg !1082
  br i1 %cmp9, label %if.end25, label %if.else11, !dbg !1082

if.else11:                                        ; preds = %if.else
  %cmp12 = fcmp ult double %call3, %call6, !dbg !1083
  br i1 %cmp12, label %if.else17, label %if.then13, !dbg !1083

if.then13:                                        ; preds = %if.else11
  %div = fdiv double %call6, %call3, !dbg !1084
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !229), !dbg !1084
  %mul = fmul double %div, %div, !dbg !1086
  %add14 = fadd double %mul, 1.000000e+00, !dbg !1086
  %call15 = tail call double @sqrt(double %add14) #6, !dbg !1086
  %mul16 = fmul double %call3, %call15, !dbg !1086
  tail call void @llvm.dbg.value(metadata !{double %mul16}, i64 0, metadata !225), !dbg !1086
  br label %if.end25, !dbg !1087

if.else17:                                        ; preds = %if.else11
  %div18 = fdiv double %call3, %call6, !dbg !1088
  tail call void @llvm.dbg.value(metadata !{double %div18}, i64 0, metadata !229), !dbg !1088
  %mul19 = fmul double %div18, %div18, !dbg !1090
  %add20 = fadd double %mul19, 1.000000e+00, !dbg !1090
  %call21 = tail call double @sqrt(double %add20) #6, !dbg !1090
  %mul22 = fmul double %call6, %call21, !dbg !1090
  tail call void @llvm.dbg.value(metadata !{double %mul22}, i64 0, metadata !225), !dbg !1090
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.body, %if.else17, %if.then13
  %abs.0 = phi double [ %mul16, %if.then13 ], [ %mul22, %if.else17 ], [ %call6, %for.body ], [ %call3, %if.else ]
  %cmp26 = icmp eq i32 %ii.058, 0, !dbg !1091
  %cmp28 = fcmp ogt double %minabs.057, %abs.0, !dbg !1091
  %or.cond55 = or i1 %cmp26, %cmp28, !dbg !1091
  tail call void @llvm.dbg.value(metadata !{double %abs.0}, i64 0, metadata !227), !dbg !1092
  %minabs.1 = select i1 %or.cond55, double %abs.0, double %minabs.057, !dbg !1091
  %inc = add nsw i32 %ii.058, 1, !dbg !1073
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !230), !dbg !1073
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1073
  %exitcond = icmp eq i32 %inc, %size, !dbg !1073
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1073

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %minabs.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %minabs.1, %if.end25 ]
  ret double %minabs.0.lcssa, !dbg !1094
}

; Function Attrs: nounwind optsize uwtable
define double @ZVmaxabs(i32 %size, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !234), !dbg !1095
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !235), !dbg !1096
  %cmp = icmp slt i32 %size, 0, !dbg !1097
  %cmp1 = icmp eq double* %x, null, !dbg !1097
  %or.cond = or i1 %cmp, %cmp1, !dbg !1097
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !1097

for.cond.preheader:                               ; preds = %entry
  %cmp256 = icmp sgt i32 %size, 0, !dbg !1098
  br i1 %cmp256, label %for.body, label %for.end, !dbg !1098

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1100, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str12, i64 0, i64 0), i32 %size, double* %x) #6, !dbg !1100
  tail call void @exit(i32 -1) #8, !dbg !1102
  unreachable, !dbg !1102

for.body:                                         ; preds = %for.cond.preheader, %if.end25
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end25 ], [ 0, %for.cond.preheader ]
  %ii.058 = phi i32 [ %inc, %if.end25 ], [ 0, %for.cond.preheader ]
  %maxabs.057 = phi double [ %maxabs.1, %if.end25 ], [ 0.000000e+00, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1103
  %1 = load double* %arrayidx, align 8, !dbg !1103, !tbaa !861
  %call3 = tail call double @fabs(double %1) #5, !dbg !1103
  tail call void @llvm.dbg.value(metadata !{double %call3}, i64 0, metadata !239), !dbg !1103
  %2 = or i64 %indvars.iv, 1, !dbg !1105
  %arrayidx5 = getelementptr inbounds double* %x, i64 %2, !dbg !1105
  %3 = load double* %arrayidx5, align 8, !dbg !1105, !tbaa !861
  %call6 = tail call double @fabs(double %3) #5, !dbg !1105
  tail call void @llvm.dbg.value(metadata !{double %call6}, i64 0, metadata !237), !dbg !1105
  %cmp7 = fcmp oeq double %1, 0.000000e+00, !dbg !1106
  br i1 %cmp7, label %if.end25, label %if.else, !dbg !1106

if.else:                                          ; preds = %for.body
  %cmp9 = fcmp oeq double %3, 0.000000e+00, !dbg !1107
  br i1 %cmp9, label %if.end25, label %if.else11, !dbg !1107

if.else11:                                        ; preds = %if.else
  %cmp12 = fcmp ult double %call3, %call6, !dbg !1108
  br i1 %cmp12, label %if.else17, label %if.then13, !dbg !1108

if.then13:                                        ; preds = %if.else11
  %div = fdiv double %call6, %call3, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !240), !dbg !1109
  %mul = fmul double %div, %div, !dbg !1111
  %add14 = fadd double %mul, 1.000000e+00, !dbg !1111
  %call15 = tail call double @sqrt(double %add14) #6, !dbg !1111
  %mul16 = fmul double %call3, %call15, !dbg !1111
  tail call void @llvm.dbg.value(metadata !{double %mul16}, i64 0, metadata !236), !dbg !1111
  br label %if.end25, !dbg !1112

if.else17:                                        ; preds = %if.else11
  %div18 = fdiv double %call3, %call6, !dbg !1113
  tail call void @llvm.dbg.value(metadata !{double %div18}, i64 0, metadata !240), !dbg !1113
  %mul19 = fmul double %div18, %div18, !dbg !1115
  %add20 = fadd double %mul19, 1.000000e+00, !dbg !1115
  %call21 = tail call double @sqrt(double %add20) #6, !dbg !1115
  %mul22 = fmul double %call6, %call21, !dbg !1115
  tail call void @llvm.dbg.value(metadata !{double %mul22}, i64 0, metadata !236), !dbg !1115
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.body, %if.else17, %if.then13
  %abs.0 = phi double [ %mul16, %if.then13 ], [ %mul22, %if.else17 ], [ %call6, %for.body ], [ %call3, %if.else ]
  %cmp26 = icmp eq i32 %ii.058, 0, !dbg !1116
  %cmp28 = fcmp olt double %maxabs.057, %abs.0, !dbg !1116
  %or.cond55 = or i1 %cmp26, %cmp28, !dbg !1116
  tail call void @llvm.dbg.value(metadata !{double %abs.0}, i64 0, metadata !238), !dbg !1117
  %maxabs.1 = select i1 %or.cond55, double %abs.0, double %maxabs.057, !dbg !1116
  %inc = add nsw i32 %ii.058, 1, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !241), !dbg !1098
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1098
  %exitcond = icmp eq i32 %inc, %size, !dbg !1098
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1098

for.end:                                          ; preds = %if.end25, %for.cond.preheader
  %maxabs.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %maxabs.1, %if.end25 ]
  ret double %maxabs.0.lcssa, !dbg !1119
}

; Function Attrs: nounwind optsize uwtable
define void @ZVcopy(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !247), !dbg !1120
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !248), !dbg !1121
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !249), !dbg !1122
  %cmp = icmp slt i32 %size, 0, !dbg !1123
  %cmp1 = icmp eq double* %y, null, !dbg !1123
  %or.cond = or i1 %cmp, %cmp1, !dbg !1123
  %cmp3 = icmp eq double* %x, null, !dbg !1123
  %or.cond27 = or i1 %or.cond, %cmp3, !dbg !1123
  br i1 %or.cond27, label %if.then, label %for.cond.preheader, !dbg !1123

for.cond.preheader:                               ; preds = %entry
  %cmp428 = icmp sgt i32 %size, 0, !dbg !1124
  br i1 %cmp428, label %for.body, label %for.end, !dbg !1124

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1126, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str13, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !1126
  tail call void @exit(i32 -1) #8, !dbg !1128
  unreachable, !dbg !1128

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.029 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1129
  %1 = load double* %arrayidx, align 8, !dbg !1129, !tbaa !861
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1129
  store double %1, double* %arrayidx6, align 8, !dbg !1129, !tbaa !861
  %2 = or i64 %indvars.iv, 1, !dbg !1131
  %arrayidx8 = getelementptr inbounds double* %x, i64 %2, !dbg !1131
  %3 = load double* %arrayidx8, align 8, !dbg !1131, !tbaa !861
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2, !dbg !1131
  store double %3, double* %arrayidx11, align 8, !dbg !1131, !tbaa !861
  %inc = add nsw i32 %ii.029, 1, !dbg !1124
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !250), !dbg !1124
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1124
  %exitcond = icmp eq i32 %inc, %size, !dbg !1124
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1124

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1132
}

; Function Attrs: nounwind optsize uwtable
define void @ZVsub(i32 %size, double* %y, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !254), !dbg !1133
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !255), !dbg !1134
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !256), !dbg !1135
  %cmp = icmp slt i32 %size, 0, !dbg !1136
  %cmp1 = icmp eq double* %y, null, !dbg !1136
  %or.cond = or i1 %cmp, %cmp1, !dbg !1136
  %cmp3 = icmp eq double* %x, null, !dbg !1136
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !1136
  br i1 %or.cond28, label %if.then, label %for.cond.preheader, !dbg !1136

for.cond.preheader:                               ; preds = %entry
  %cmp429 = icmp sgt i32 %size, 0, !dbg !1137
  br i1 %cmp429, label %for.body, label %for.end, !dbg !1137

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1139, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str14, i64 0, i64 0), i32 %size, double* %y, double* %x) #6, !dbg !1139
  tail call void @exit(i32 -1) #8, !dbg !1141
  unreachable, !dbg !1141

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.030 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1142
  %1 = load double* %arrayidx, align 8, !dbg !1142, !tbaa !861
  %arrayidx6 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1142
  %2 = load double* %arrayidx6, align 8, !dbg !1142, !tbaa !861
  %sub = fsub double %2, %1, !dbg !1142
  store double %sub, double* %arrayidx6, align 8, !dbg !1142, !tbaa !861
  %3 = or i64 %indvars.iv, 1, !dbg !1144
  %arrayidx8 = getelementptr inbounds double* %x, i64 %3, !dbg !1144
  %4 = load double* %arrayidx8, align 8, !dbg !1144, !tbaa !861
  %arrayidx11 = getelementptr inbounds double* %y, i64 %3, !dbg !1144
  %5 = load double* %arrayidx11, align 8, !dbg !1144, !tbaa !861
  %sub12 = fsub double %5, %4, !dbg !1144
  store double %sub12, double* %arrayidx11, align 8, !dbg !1144, !tbaa !861
  %inc = add nsw i32 %ii.030, 1, !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !257), !dbg !1137
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1137
  %exitcond = icmp eq i32 %inc, %size, !dbg !1137
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1137

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1145
}

; Function Attrs: nounwind optsize uwtable
define void @ZVaxpy2(i32 %size, double* nocapture %z, double %areal, double %aimag, double* %x, double %breal, double %bimag, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !263), !dbg !1146
  tail call void @llvm.dbg.value(metadata !{double* %z}, i64 0, metadata !264), !dbg !1147
  tail call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !265), !dbg !1148
  tail call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !266), !dbg !1149
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !267), !dbg !1150
  tail call void @llvm.dbg.value(metadata !{double %breal}, i64 0, metadata !268), !dbg !1151
  tail call void @llvm.dbg.value(metadata !{double %bimag}, i64 0, metadata !269), !dbg !1152
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !270), !dbg !1153
  %cmp = icmp slt i32 %size, 0, !dbg !1154
  %cmp1 = icmp eq double* %y, null, !dbg !1154
  %or.cond = or i1 %cmp, %cmp1, !dbg !1154
  %cmp3 = icmp eq double* %x, null, !dbg !1154
  %or.cond59 = or i1 %or.cond, %cmp3, !dbg !1154
  br i1 %or.cond59, label %if.then, label %for.cond.preheader, !dbg !1154

for.cond.preheader:                               ; preds = %entry
  %cmp460 = icmp sgt i32 %size, 0, !dbg !1155
  br i1 %cmp460, label %for.body, label %for.end, !dbg !1155

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1157, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %size, double* %y, double %areal, double %aimag, double* %x) #6, !dbg !1157
  tail call void @exit(i32 -1) #8, !dbg !1159
  unreachable, !dbg !1159

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.061 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1160
  %1 = load double* %arrayidx, align 8, !dbg !1160, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !272), !dbg !1160
  %2 = or i64 %indvars.iv, 1, !dbg !1162
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2, !dbg !1162
  %3 = load double* %arrayidx6, align 8, !dbg !1162, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !271), !dbg !1162
  %arrayidx8 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1163
  %4 = load double* %arrayidx8, align 8, !dbg !1163, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !274), !dbg !1163
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2, !dbg !1164
  %5 = load double* %arrayidx11, align 8, !dbg !1164, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !273), !dbg !1164
  %mul = fmul double %1, %areal, !dbg !1165
  %mul12 = fmul double %3, %aimag, !dbg !1165
  %sub = fsub double %mul, %mul12, !dbg !1165
  %mul13 = fmul double %4, %breal, !dbg !1165
  %add14 = fadd double %sub, %mul13, !dbg !1165
  %mul15 = fmul double %5, %bimag, !dbg !1165
  %sub16 = fsub double %add14, %mul15, !dbg !1165
  %arrayidx18 = getelementptr inbounds double* %z, i64 %indvars.iv, !dbg !1165
  %6 = load double* %arrayidx18, align 8, !dbg !1165, !tbaa !861
  %add19 = fadd double %6, %sub16, !dbg !1165
  store double %add19, double* %arrayidx18, align 8, !dbg !1165, !tbaa !861
  %mul20 = fmul double %3, %areal, !dbg !1166
  %mul21 = fmul double %1, %aimag, !dbg !1166
  %add22 = fadd double %mul21, %mul20, !dbg !1166
  %mul23 = fmul double %5, %breal, !dbg !1166
  %add24 = fadd double %add22, %mul23, !dbg !1166
  %mul25 = fmul double %4, %bimag, !dbg !1166
  %add26 = fadd double %mul25, %add24, !dbg !1166
  %arrayidx29 = getelementptr inbounds double* %z, i64 %2, !dbg !1166
  %7 = load double* %arrayidx29, align 8, !dbg !1166, !tbaa !861
  %add30 = fadd double %7, %add26, !dbg !1166
  store double %add30, double* %arrayidx29, align 8, !dbg !1166, !tbaa !861
  %inc = add nsw i32 %ii.061, 1, !dbg !1155
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !275), !dbg !1155
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1155
  %exitcond = icmp eq i32 %inc, %size, !dbg !1155
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1155

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1167
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscale2(i32 %size, double* %x, double* %y, double %areal, double %aimag, double %breal, double %bimag, double %creal, double %cimag, double %dreal, double %dimag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !281), !dbg !1168
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !282), !dbg !1169
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !283), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{double %areal}, i64 0, metadata !284), !dbg !1171
  tail call void @llvm.dbg.value(metadata !{double %aimag}, i64 0, metadata !285), !dbg !1172
  tail call void @llvm.dbg.value(metadata !{double %breal}, i64 0, metadata !286), !dbg !1173
  tail call void @llvm.dbg.value(metadata !{double %bimag}, i64 0, metadata !287), !dbg !1174
  tail call void @llvm.dbg.value(metadata !{double %creal}, i64 0, metadata !288), !dbg !1175
  tail call void @llvm.dbg.value(metadata !{double %cimag}, i64 0, metadata !289), !dbg !1176
  tail call void @llvm.dbg.value(metadata !{double %dreal}, i64 0, metadata !290), !dbg !1177
  tail call void @llvm.dbg.value(metadata !{double %dimag}, i64 0, metadata !291), !dbg !1178
  %cmp = icmp slt i32 %size, 0, !dbg !1179
  %cmp1 = icmp eq double* %x, null, !dbg !1179
  %or.cond = or i1 %cmp, %cmp1, !dbg !1179
  %cmp3 = icmp eq double* %y, null, !dbg !1179
  %or.cond91 = or i1 %or.cond, %cmp3, !dbg !1179
  br i1 %or.cond91, label %if.then, label %for.cond.preheader, !dbg !1179

for.cond.preheader:                               ; preds = %entry
  %cmp492 = icmp sgt i32 %size, 0, !dbg !1180
  br i1 %cmp492, label %for.body, label %for.end, !dbg !1180

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1182, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str15, i64 0, i64 0), i32 %size, double* %x, double* %y) #6, !dbg !1182
  tail call void @exit(i32 -1) #8, !dbg !1184
  unreachable, !dbg !1184

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.093 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %x, i64 %indvars.iv, !dbg !1185
  %1 = load double* %arrayidx, align 8, !dbg !1185, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !293), !dbg !1185
  %2 = or i64 %indvars.iv, 1, !dbg !1187
  %arrayidx6 = getelementptr inbounds double* %x, i64 %2, !dbg !1187
  %3 = load double* %arrayidx6, align 8, !dbg !1187, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !292), !dbg !1187
  %arrayidx8 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1188
  %4 = load double* %arrayidx8, align 8, !dbg !1188, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !295), !dbg !1188
  %arrayidx11 = getelementptr inbounds double* %y, i64 %2, !dbg !1189
  %5 = load double* %arrayidx11, align 8, !dbg !1189, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !294), !dbg !1189
  %mul = fmul double %1, %areal, !dbg !1190
  %mul12 = fmul double %3, %aimag, !dbg !1190
  %sub = fsub double %mul, %mul12, !dbg !1190
  %mul13 = fmul double %4, %breal, !dbg !1190
  %add14 = fadd double %sub, %mul13, !dbg !1190
  %mul15 = fmul double %5, %bimag, !dbg !1190
  %sub16 = fsub double %add14, %mul15, !dbg !1190
  store double %sub16, double* %arrayidx, align 8, !dbg !1190, !tbaa !861
  %mul19 = fmul double %3, %areal, !dbg !1191
  %mul20 = fmul double %1, %aimag, !dbg !1191
  %add21 = fadd double %mul20, %mul19, !dbg !1191
  %mul22 = fmul double %5, %breal, !dbg !1191
  %add23 = fadd double %add21, %mul22, !dbg !1191
  %mul24 = fmul double %4, %bimag, !dbg !1191
  %add25 = fadd double %mul24, %add23, !dbg !1191
  store double %add25, double* %arrayidx6, align 8, !dbg !1191, !tbaa !861
  %mul29 = fmul double %1, %creal, !dbg !1192
  %mul30 = fmul double %3, %cimag, !dbg !1192
  %sub31 = fsub double %mul29, %mul30, !dbg !1192
  %mul32 = fmul double %4, %dreal, !dbg !1192
  %add33 = fadd double %sub31, %mul32, !dbg !1192
  %mul34 = fmul double %5, %dimag, !dbg !1192
  %sub35 = fsub double %add33, %mul34, !dbg !1192
  store double %sub35, double* %arrayidx8, align 8, !dbg !1192, !tbaa !861
  %mul38 = fmul double %3, %creal, !dbg !1193
  %mul39 = fmul double %1, %cimag, !dbg !1193
  %add40 = fadd double %mul39, %mul38, !dbg !1193
  %mul41 = fmul double %5, %dreal, !dbg !1193
  %add42 = fadd double %add40, %mul41, !dbg !1193
  %mul43 = fmul double %4, %dimag, !dbg !1193
  %add44 = fadd double %mul43, %add42, !dbg !1193
  store double %add44, double* %arrayidx11, align 8, !dbg !1193, !tbaa !861
  %inc = add nsw i32 %ii.093, 1, !dbg !1180
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !296), !dbg !1180
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1180
  %exitcond = icmp eq i32 %inc, %size, !dbg !1180
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1180

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1194
}

; Function Attrs: nounwind optsize uwtable
define void @ZVgather(i32 %size, double* %y, double* %x, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !302), !dbg !1195
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !303), !dbg !1196
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !304), !dbg !1197
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !305), !dbg !1198
  %cmp = icmp sgt i32 %size, 0, !dbg !1199
  br i1 %cmp, label %if.then, label %if.end17, !dbg !1199

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1200
  %cmp2 = icmp eq double* %x, null, !dbg !1200
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1200
  %cmp4 = icmp eq i32* %index, null, !dbg !1200
  %or.cond35 = or i1 %or.cond, %cmp4, !dbg !1200
  br i1 %or.cond35, label %if.then5, label %for.body, !dbg !1200

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1201, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str16, i64 0, i64 0), i32 %size, double* %y, double* %x, i32* %index) #6, !dbg !1201
  tail call void @exit(i32 -1) #8, !dbg !1203
  unreachable, !dbg !1203

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body ], [ 0, %if.then ], !dbg !1204
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1206
  %1 = load i32* %arrayidx, align 4, !dbg !1206, !tbaa !996
  %mul = shl nsw i32 %1, 1, !dbg !1206
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !310), !dbg !1206
  %idxprom7 = sext i32 %mul to i64, !dbg !1208
  %arrayidx8 = getelementptr inbounds double* %x, i64 %idxprom7, !dbg !1208
  %2 = load double* %arrayidx8, align 8, !dbg !1208, !tbaa !861
  %arrayidx10 = getelementptr inbounds double* %y, i64 %indvars.iv39, !dbg !1208
  store double %2, double* %arrayidx10, align 8, !dbg !1208, !tbaa !861
  %add33 = or i32 %mul, 1, !dbg !1209
  %idxprom11 = sext i32 %add33 to i64, !dbg !1209
  %arrayidx12 = getelementptr inbounds double* %x, i64 %idxprom11, !dbg !1209
  %3 = load double* %arrayidx12, align 8, !dbg !1209, !tbaa !861
  %4 = or i64 %indvars.iv39, 1, !dbg !1209
  %arrayidx15 = getelementptr inbounds double* %y, i64 %4, !dbg !1209
  store double %3, double* %arrayidx15, align 8, !dbg !1209, !tbaa !861
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1204
  %indvars.iv.next40 = add i64 %indvars.iv39, 2, !dbg !1204
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1204
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1204
  br i1 %exitcond, label %if.end17, label %for.body, !dbg !1204

if.end17:                                         ; preds = %for.body, %entry
  ret void, !dbg !1210
}

; Function Attrs: nounwind optsize uwtable
define void @ZVscatter(i32 %size, double* %y, i32* %index, double* %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !315), !dbg !1211
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !316), !dbg !1212
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !317), !dbg !1213
  tail call void @llvm.dbg.value(metadata !{double* %x}, i64 0, metadata !318), !dbg !1214
  %cmp = icmp sgt i32 %size, 0, !dbg !1215
  br i1 %cmp, label %if.then, label %if.end17, !dbg !1215

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq double* %y, null, !dbg !1216
  %cmp2 = icmp eq double* %x, null, !dbg !1216
  %or.cond = or i1 %cmp1, %cmp2, !dbg !1216
  %cmp4 = icmp eq i32* %index, null, !dbg !1216
  %or.cond35 = or i1 %or.cond, %cmp4, !dbg !1216
  br i1 %or.cond35, label %if.then5, label %for.body, !dbg !1216

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1217, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str17, i64 0, i64 0), i32 %size, double* %y, i32* %index, double* %x) #6, !dbg !1217
  tail call void @exit(i32 -1) #8, !dbg !1219
  unreachable, !dbg !1219

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body ], [ 0, %if.then ], !dbg !1220
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !1222
  %1 = load i32* %arrayidx, align 4, !dbg !1222, !tbaa !996
  %mul = shl nsw i32 %1, 1, !dbg !1222
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !323), !dbg !1222
  %arrayidx8 = getelementptr inbounds double* %x, i64 %indvars.iv39, !dbg !1224
  %2 = load double* %arrayidx8, align 8, !dbg !1224, !tbaa !861
  %idxprom9 = sext i32 %mul to i64, !dbg !1224
  %arrayidx10 = getelementptr inbounds double* %y, i64 %idxprom9, !dbg !1224
  store double %2, double* %arrayidx10, align 8, !dbg !1224, !tbaa !861
  %3 = or i64 %indvars.iv39, 1, !dbg !1225
  %arrayidx12 = getelementptr inbounds double* %x, i64 %3, !dbg !1225
  %4 = load double* %arrayidx12, align 8, !dbg !1225, !tbaa !861
  %add1334 = or i32 %mul, 1, !dbg !1225
  %idxprom14 = sext i32 %add1334 to i64, !dbg !1225
  %arrayidx15 = getelementptr inbounds double* %y, i64 %idxprom14, !dbg !1225
  store double %4, double* %arrayidx15, align 8, !dbg !1225, !tbaa !861
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1220
  %indvars.iv.next40 = add i64 %indvars.iv39, 2, !dbg !1220
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1220
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !dbg !1220
  br i1 %exitcond, label %if.end17, label %for.body, !dbg !1220

if.end17:                                         ; preds = %for.body, %entry
  ret void, !dbg !1226
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU33(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !328), !dbg !1227
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !329), !dbg !1228
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !330), !dbg !1229
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !331), !dbg !1230
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !332), !dbg !1231
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !333), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !334), !dbg !1233
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !335), !dbg !1234
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !353), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !352), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !351), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !350), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !349), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !348), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !347), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !346), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !345), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !344), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !343), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !342), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !341), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !340), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !339), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !338), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !337), !dbg !1236
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !336), !dbg !1236
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !368), !dbg !1237
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !366), !dbg !1237
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !367), !dbg !1237
  %cmp226 = icmp sgt i32 %n, 0, !dbg !1237
  br i1 %cmp226, label %for.body, label %for.end, !dbg !1237

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.body ], [ 1, %entry ], !dbg !1237
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0245 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0244 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0243 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0242 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0241 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0240 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0239 = phi double [ %add67, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0238 = phi double [ %add75, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0237 = phi double [ %add83, %for.body ], [ 0.000000e+00, %entry ]
  %i22.0236 = phi double [ %add91, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0235 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0234 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0233 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %r22.0232 = phi double [ %add87, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0231 = phi double [ %add79, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0230 = phi double [ %add71, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0229 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0228 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0227 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1240
  %0 = load double* %arrayidx, align 8, !dbg !1240, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !363), !dbg !1240
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv265, !dbg !1240
  %1 = load double* %arrayidx2, align 8, !dbg !1240, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !360), !dbg !1240
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1242
  %2 = load double* %arrayidx4, align 8, !dbg !1242, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !364), !dbg !1242
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv265, !dbg !1242
  %3 = load double* %arrayidx6, align 8, !dbg !1242, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !361), !dbg !1242
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1243
  %4 = load double* %arrayidx8, align 8, !dbg !1243, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !365), !dbg !1243
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv265, !dbg !1243
  %5 = load double* %arrayidx10, align 8, !dbg !1243, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !362), !dbg !1243
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1244
  %6 = load double* %arrayidx12, align 8, !dbg !1244, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !357), !dbg !1244
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv265, !dbg !1244
  %7 = load double* %arrayidx14, align 8, !dbg !1244, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !354), !dbg !1244
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1245
  %8 = load double* %arrayidx16, align 8, !dbg !1245, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !358), !dbg !1245
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv265, !dbg !1245
  %9 = load double* %arrayidx18, align 8, !dbg !1245, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !355), !dbg !1245
  %arrayidx20 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1246
  %10 = load double* %arrayidx20, align 8, !dbg !1246, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %10}, i64 0, metadata !359), !dbg !1246
  %arrayidx22 = getelementptr inbounds double* %x2, i64 %indvars.iv265, !dbg !1246
  %11 = load double* %arrayidx22, align 8, !dbg !1246, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !356), !dbg !1246
  %mul = fmul double %0, %6, !dbg !1247
  %mul23 = fmul double %1, %7, !dbg !1247
  %sub = fsub double %mul, %mul23, !dbg !1247
  %add = fadd double %r00.0235, %sub, !dbg !1247
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !345), !dbg !1247
  %mul24 = fmul double %0, %7, !dbg !1247
  %mul25 = fmul double %1, %6, !dbg !1247
  %add26 = fadd double %mul25, %mul24, !dbg !1247
  %add27 = fadd double %i00.0244, %add26, !dbg !1247
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !336), !dbg !1247
  %mul28 = fmul double %0, %8, !dbg !1248
  %mul29 = fmul double %1, %9, !dbg !1248
  %sub30 = fsub double %mul28, %mul29, !dbg !1248
  %add31 = fadd double %r01.0234, %sub30, !dbg !1248
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !346), !dbg !1248
  %mul32 = fmul double %0, %9, !dbg !1248
  %mul33 = fmul double %1, %8, !dbg !1248
  %add34 = fadd double %mul33, %mul32, !dbg !1248
  %add35 = fadd double %i01.0243, %add34, !dbg !1248
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !337), !dbg !1248
  %mul36 = fmul double %0, %10, !dbg !1249
  %mul37 = fmul double %1, %11, !dbg !1249
  %sub38 = fsub double %mul36, %mul37, !dbg !1249
  %add39 = fadd double %r02.0233, %sub38, !dbg !1249
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !347), !dbg !1249
  %mul40 = fmul double %0, %11, !dbg !1249
  %mul41 = fmul double %1, %10, !dbg !1249
  %add42 = fadd double %mul41, %mul40, !dbg !1249
  %add43 = fadd double %i02.0242, %add42, !dbg !1249
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !338), !dbg !1249
  %mul44 = fmul double %2, %6, !dbg !1250
  %mul45 = fmul double %3, %7, !dbg !1250
  %sub46 = fsub double %mul44, %mul45, !dbg !1250
  %add47 = fadd double %r10.0227, %sub46, !dbg !1250
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !348), !dbg !1250
  %mul48 = fmul double %2, %7, !dbg !1250
  %mul49 = fmul double %3, %6, !dbg !1250
  %add50 = fadd double %mul49, %mul48, !dbg !1250
  %add51 = fadd double %i10.0241, %add50, !dbg !1250
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !339), !dbg !1250
  %mul52 = fmul double %2, %8, !dbg !1251
  %mul53 = fmul double %3, %9, !dbg !1251
  %sub54 = fsub double %mul52, %mul53, !dbg !1251
  %add55 = fadd double %r11.0228, %sub54, !dbg !1251
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !349), !dbg !1251
  %mul56 = fmul double %2, %9, !dbg !1251
  %mul57 = fmul double %3, %8, !dbg !1251
  %add58 = fadd double %mul57, %mul56, !dbg !1251
  %add59 = fadd double %i11.0240, %add58, !dbg !1251
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !340), !dbg !1251
  %mul60 = fmul double %2, %10, !dbg !1252
  %mul61 = fmul double %3, %11, !dbg !1252
  %sub62 = fsub double %mul60, %mul61, !dbg !1252
  %add63 = fadd double %r12.0229, %sub62, !dbg !1252
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !350), !dbg !1252
  %mul64 = fmul double %2, %11, !dbg !1252
  %mul65 = fmul double %3, %10, !dbg !1252
  %add66 = fadd double %mul65, %mul64, !dbg !1252
  %add67 = fadd double %i12.0239, %add66, !dbg !1252
  tail call void @llvm.dbg.value(metadata !{double %add67}, i64 0, metadata !341), !dbg !1252
  %mul68 = fmul double %4, %6, !dbg !1253
  %mul69 = fmul double %5, %7, !dbg !1253
  %sub70 = fsub double %mul68, %mul69, !dbg !1253
  %add71 = fadd double %r20.0230, %sub70, !dbg !1253
  tail call void @llvm.dbg.value(metadata !{double %add71}, i64 0, metadata !351), !dbg !1253
  %mul72 = fmul double %4, %7, !dbg !1253
  %mul73 = fmul double %5, %6, !dbg !1253
  %add74 = fadd double %mul73, %mul72, !dbg !1253
  %add75 = fadd double %i20.0238, %add74, !dbg !1253
  tail call void @llvm.dbg.value(metadata !{double %add75}, i64 0, metadata !342), !dbg !1253
  %mul76 = fmul double %4, %8, !dbg !1254
  %mul77 = fmul double %5, %9, !dbg !1254
  %sub78 = fsub double %mul76, %mul77, !dbg !1254
  %add79 = fadd double %r21.0231, %sub78, !dbg !1254
  tail call void @llvm.dbg.value(metadata !{double %add79}, i64 0, metadata !352), !dbg !1254
  %mul80 = fmul double %4, %9, !dbg !1254
  %mul81 = fmul double %5, %8, !dbg !1254
  %add82 = fadd double %mul81, %mul80, !dbg !1254
  %add83 = fadd double %i21.0237, %add82, !dbg !1254
  tail call void @llvm.dbg.value(metadata !{double %add83}, i64 0, metadata !343), !dbg !1254
  %mul84 = fmul double %4, %10, !dbg !1255
  %mul85 = fmul double %5, %11, !dbg !1255
  %sub86 = fsub double %mul84, %mul85, !dbg !1255
  %add87 = fadd double %r22.0232, %sub86, !dbg !1255
  tail call void @llvm.dbg.value(metadata !{double %add87}, i64 0, metadata !353), !dbg !1255
  %mul88 = fmul double %4, %11, !dbg !1255
  %mul89 = fmul double %5, %10, !dbg !1255
  %add90 = fadd double %mul89, %mul88, !dbg !1255
  %add91 = fadd double %i22.0236, %add90, !dbg !1255
  tail call void @llvm.dbg.value(metadata !{double %add91}, i64 0, metadata !344), !dbg !1255
  %inc = add nsw i32 %ii.0245, 1, !dbg !1237
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !366), !dbg !1237
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1237
  %indvars.iv.next266 = add i64 %indvars.iv265, 2, !dbg !1237
  %exitcond = icmp eq i32 %inc, %n, !dbg !1237
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1237

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add67, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add75, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add83, %for.body ]
  %i22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add91, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %r22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add87, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add79, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add71, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1256, !tbaa !861
  %arrayidx95 = getelementptr inbounds double* %sums, i64 1, !dbg !1256
  store double %i00.0.lcssa, double* %arrayidx95, align 8, !dbg !1256, !tbaa !861
  %arrayidx96 = getelementptr inbounds double* %sums, i64 2, !dbg !1257
  store double %r01.0.lcssa, double* %arrayidx96, align 8, !dbg !1257, !tbaa !861
  %arrayidx97 = getelementptr inbounds double* %sums, i64 3, !dbg !1257
  store double %i01.0.lcssa, double* %arrayidx97, align 8, !dbg !1257, !tbaa !861
  %arrayidx98 = getelementptr inbounds double* %sums, i64 4, !dbg !1258
  store double %r02.0.lcssa, double* %arrayidx98, align 8, !dbg !1258, !tbaa !861
  %arrayidx99 = getelementptr inbounds double* %sums, i64 5, !dbg !1258
  store double %i02.0.lcssa, double* %arrayidx99, align 8, !dbg !1258, !tbaa !861
  %arrayidx100 = getelementptr inbounds double* %sums, i64 6, !dbg !1259
  store double %r10.0.lcssa, double* %arrayidx100, align 8, !dbg !1259, !tbaa !861
  %arrayidx101 = getelementptr inbounds double* %sums, i64 7, !dbg !1259
  store double %i10.0.lcssa, double* %arrayidx101, align 8, !dbg !1259, !tbaa !861
  %arrayidx102 = getelementptr inbounds double* %sums, i64 8, !dbg !1260
  store double %r11.0.lcssa, double* %arrayidx102, align 8, !dbg !1260, !tbaa !861
  %arrayidx103 = getelementptr inbounds double* %sums, i64 9, !dbg !1260
  store double %i11.0.lcssa, double* %arrayidx103, align 8, !dbg !1260, !tbaa !861
  %arrayidx104 = getelementptr inbounds double* %sums, i64 10, !dbg !1261
  store double %r12.0.lcssa, double* %arrayidx104, align 8, !dbg !1261, !tbaa !861
  %arrayidx105 = getelementptr inbounds double* %sums, i64 11, !dbg !1261
  store double %i12.0.lcssa, double* %arrayidx105, align 8, !dbg !1261, !tbaa !861
  %arrayidx106 = getelementptr inbounds double* %sums, i64 12, !dbg !1262
  store double %r20.0.lcssa, double* %arrayidx106, align 8, !dbg !1262, !tbaa !861
  %arrayidx107 = getelementptr inbounds double* %sums, i64 13, !dbg !1262
  store double %i20.0.lcssa, double* %arrayidx107, align 8, !dbg !1262, !tbaa !861
  %arrayidx108 = getelementptr inbounds double* %sums, i64 14, !dbg !1263
  store double %r21.0.lcssa, double* %arrayidx108, align 8, !dbg !1263, !tbaa !861
  %arrayidx109 = getelementptr inbounds double* %sums, i64 15, !dbg !1263
  store double %i21.0.lcssa, double* %arrayidx109, align 8, !dbg !1263, !tbaa !861
  %arrayidx110 = getelementptr inbounds double* %sums, i64 16, !dbg !1264
  store double %r22.0.lcssa, double* %arrayidx110, align 8, !dbg !1264, !tbaa !861
  %arrayidx111 = getelementptr inbounds double* %sums, i64 17, !dbg !1264
  store double %i22.0.lcssa, double* %arrayidx111, align 8, !dbg !1264, !tbaa !861
  ret void, !dbg !1265
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU32(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !373), !dbg !1266
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !374), !dbg !1267
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !375), !dbg !1268
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !376), !dbg !1269
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !377), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !378), !dbg !1271
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !379), !dbg !1272
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !391), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !390), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !389), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !388), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !387), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !386), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !385), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !384), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !383), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !382), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !381), !dbg !1273
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !380), !dbg !1273
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !404), !dbg !1274
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !402), !dbg !1274
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !403), !dbg !1274
  %cmp155 = icmp sgt i32 %n, 0, !dbg !1274
  br i1 %cmp155, label %for.body, label %for.end, !dbg !1274

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ], !dbg !1274
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1276
  %0 = load double* %arrayidx, align 8, !dbg !1276, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !399), !dbg !1276
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182, !dbg !1276
  %1 = load double* %arrayidx2, align 8, !dbg !1276, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !396), !dbg !1276
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1278
  %2 = load double* %arrayidx4, align 8, !dbg !1278, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !400), !dbg !1278
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182, !dbg !1278
  %3 = load double* %arrayidx6, align 8, !dbg !1278, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !397), !dbg !1278
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1279
  %4 = load double* %arrayidx8, align 8, !dbg !1279, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !401), !dbg !1279
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv182, !dbg !1279
  %5 = load double* %arrayidx10, align 8, !dbg !1279, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !398), !dbg !1279
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1280
  %6 = load double* %arrayidx12, align 8, !dbg !1280, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !394), !dbg !1280
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv182, !dbg !1280
  %7 = load double* %arrayidx14, align 8, !dbg !1280, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !392), !dbg !1280
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1281
  %8 = load double* %arrayidx16, align 8, !dbg !1281, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !395), !dbg !1281
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv182, !dbg !1281
  %9 = load double* %arrayidx18, align 8, !dbg !1281, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !393), !dbg !1281
  %mul = fmul double %0, %6, !dbg !1282
  %mul19 = fmul double %1, %7, !dbg !1282
  %sub = fsub double %mul, %mul19, !dbg !1282
  %add = fadd double %r00.0161, %sub, !dbg !1282
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !386), !dbg !1282
  %mul20 = fmul double %0, %7, !dbg !1282
  %mul21 = fmul double %1, %6, !dbg !1282
  %add22 = fadd double %mul21, %mul20, !dbg !1282
  %add23 = fadd double %i00.0167, %add22, !dbg !1282
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !380), !dbg !1282
  %mul24 = fmul double %0, %8, !dbg !1283
  %mul25 = fmul double %1, %9, !dbg !1283
  %sub26 = fsub double %mul24, %mul25, !dbg !1283
  %add27 = fadd double %r01.0160, %sub26, !dbg !1283
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !387), !dbg !1283
  %mul28 = fmul double %0, %9, !dbg !1283
  %mul29 = fmul double %1, %8, !dbg !1283
  %add30 = fadd double %mul29, %mul28, !dbg !1283
  %add31 = fadd double %i01.0166, %add30, !dbg !1283
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !381), !dbg !1283
  %mul32 = fmul double %2, %6, !dbg !1284
  %mul33 = fmul double %3, %7, !dbg !1284
  %sub34 = fsub double %mul32, %mul33, !dbg !1284
  %add35 = fadd double %r10.0159, %sub34, !dbg !1284
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !388), !dbg !1284
  %mul36 = fmul double %2, %7, !dbg !1284
  %mul37 = fmul double %3, %6, !dbg !1284
  %add38 = fadd double %mul37, %mul36, !dbg !1284
  %add39 = fadd double %i10.0165, %add38, !dbg !1284
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !382), !dbg !1284
  %mul40 = fmul double %2, %8, !dbg !1285
  %mul41 = fmul double %3, %9, !dbg !1285
  %sub42 = fsub double %mul40, %mul41, !dbg !1285
  %add43 = fadd double %r11.0158, %sub42, !dbg !1285
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !389), !dbg !1285
  %mul44 = fmul double %2, %9, !dbg !1285
  %mul45 = fmul double %3, %8, !dbg !1285
  %add46 = fadd double %mul45, %mul44, !dbg !1285
  %add47 = fadd double %i11.0164, %add46, !dbg !1285
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !383), !dbg !1285
  %mul48 = fmul double %4, %6, !dbg !1286
  %mul49 = fmul double %5, %7, !dbg !1286
  %sub50 = fsub double %mul48, %mul49, !dbg !1286
  %add51 = fadd double %r20.0156, %sub50, !dbg !1286
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !390), !dbg !1286
  %mul52 = fmul double %4, %7, !dbg !1286
  %mul53 = fmul double %5, %6, !dbg !1286
  %add54 = fadd double %mul53, %mul52, !dbg !1286
  %add55 = fadd double %i20.0163, %add54, !dbg !1286
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !384), !dbg !1286
  %mul56 = fmul double %4, %8, !dbg !1287
  %mul57 = fmul double %5, %9, !dbg !1287
  %sub58 = fsub double %mul56, %mul57, !dbg !1287
  %add59 = fadd double %r21.0157, %sub58, !dbg !1287
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !391), !dbg !1287
  %mul60 = fmul double %4, %9, !dbg !1287
  %mul61 = fmul double %5, %8, !dbg !1287
  %add62 = fadd double %mul61, %mul60, !dbg !1287
  %add63 = fadd double %i21.0162, %add62, !dbg !1287
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !385), !dbg !1287
  %inc = add nsw i32 %ii.0168, 1, !dbg !1274
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !402), !dbg !1274
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1274
  %indvars.iv.next183 = add i64 %indvars.iv182, 2, !dbg !1274
  %exitcond = icmp eq i32 %inc, %n, !dbg !1274
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1274

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1288, !tbaa !861
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1, !dbg !1288
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !dbg !1288, !tbaa !861
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2, !dbg !1289
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !dbg !1289, !tbaa !861
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3, !dbg !1289
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !dbg !1289, !tbaa !861
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4, !dbg !1290
  store double %r10.0.lcssa, double* %arrayidx70, align 8, !dbg !1290, !tbaa !861
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5, !dbg !1290
  store double %i10.0.lcssa, double* %arrayidx71, align 8, !dbg !1290, !tbaa !861
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6, !dbg !1291
  store double %r11.0.lcssa, double* %arrayidx72, align 8, !dbg !1291, !tbaa !861
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7, !dbg !1291
  store double %i11.0.lcssa, double* %arrayidx73, align 8, !dbg !1291, !tbaa !861
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8, !dbg !1292
  store double %r20.0.lcssa, double* %arrayidx74, align 8, !dbg !1292, !tbaa !861
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9, !dbg !1292
  store double %i20.0.lcssa, double* %arrayidx75, align 8, !dbg !1292, !tbaa !861
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10, !dbg !1293
  store double %r21.0.lcssa, double* %arrayidx76, align 8, !dbg !1293, !tbaa !861
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11, !dbg !1293
  store double %i21.0.lcssa, double* %arrayidx77, align 8, !dbg !1293, !tbaa !861
  ret void, !dbg !1294
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU31(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !409), !dbg !1295
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !410), !dbg !1296
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !411), !dbg !1297
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !412), !dbg !1298
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !413), !dbg !1299
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !414), !dbg !1300
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !420), !dbg !1301
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !419), !dbg !1301
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !418), !dbg !1301
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !417), !dbg !1301
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !416), !dbg !1301
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !415), !dbg !1301
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !431), !dbg !1302
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !429), !dbg !1302
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !430), !dbg !1302
  %cmp84 = icmp sgt i32 %n, 0, !dbg !1302
  br i1 %cmp84, label %for.body, label %for.end, !dbg !1302

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ], !dbg !1302
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i10.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i20.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r10.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r20.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1304
  %0 = load double* %arrayidx, align 8, !dbg !1304, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !426), !dbg !1304
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99, !dbg !1304
  %1 = load double* %arrayidx2, align 8, !dbg !1304, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !423), !dbg !1304
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1306
  %2 = load double* %arrayidx4, align 8, !dbg !1306, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !427), !dbg !1306
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv99, !dbg !1306
  %3 = load double* %arrayidx6, align 8, !dbg !1306, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !424), !dbg !1306
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1307
  %4 = load double* %arrayidx8, align 8, !dbg !1307, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !428), !dbg !1307
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv99, !dbg !1307
  %5 = load double* %arrayidx10, align 8, !dbg !1307, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !425), !dbg !1307
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1308
  %6 = load double* %arrayidx12, align 8, !dbg !1308, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !422), !dbg !1308
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv99, !dbg !1308
  %7 = load double* %arrayidx14, align 8, !dbg !1308, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !421), !dbg !1308
  %mul = fmul double %0, %6, !dbg !1309
  %mul15 = fmul double %1, %7, !dbg !1309
  %sub = fsub double %mul, %mul15, !dbg !1309
  %add = fadd double %r00.087, %sub, !dbg !1309
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !418), !dbg !1309
  %mul16 = fmul double %0, %7, !dbg !1309
  %mul17 = fmul double %1, %6, !dbg !1309
  %add18 = fadd double %mul17, %mul16, !dbg !1309
  %add19 = fadd double %i00.090, %add18, !dbg !1309
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !415), !dbg !1309
  %mul20 = fmul double %2, %6, !dbg !1310
  %mul21 = fmul double %3, %7, !dbg !1310
  %sub22 = fsub double %mul20, %mul21, !dbg !1310
  %add23 = fadd double %r10.086, %sub22, !dbg !1310
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !419), !dbg !1310
  %mul24 = fmul double %2, %7, !dbg !1310
  %mul25 = fmul double %3, %6, !dbg !1310
  %add26 = fadd double %mul25, %mul24, !dbg !1310
  %add27 = fadd double %i10.089, %add26, !dbg !1310
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !416), !dbg !1310
  %mul28 = fmul double %4, %6, !dbg !1311
  %mul29 = fmul double %5, %7, !dbg !1311
  %sub30 = fsub double %mul28, %mul29, !dbg !1311
  %add31 = fadd double %r20.085, %sub30, !dbg !1311
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !420), !dbg !1311
  %mul32 = fmul double %4, %7, !dbg !1311
  %mul33 = fmul double %5, %6, !dbg !1311
  %add34 = fadd double %mul33, %mul32, !dbg !1311
  %add35 = fadd double %i20.088, %add34, !dbg !1311
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !417), !dbg !1311
  %inc = add nsw i32 %ii.091, 1, !dbg !1302
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !429), !dbg !1302
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1302
  %indvars.iv.next100 = add i64 %indvars.iv99, 2, !dbg !1302
  %exitcond = icmp eq i32 %inc, %n, !dbg !1302
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1302

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1312, !tbaa !861
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1, !dbg !1312
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !dbg !1312, !tbaa !861
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2, !dbg !1313
  store double %r10.0.lcssa, double* %arrayidx40, align 8, !dbg !1313, !tbaa !861
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3, !dbg !1313
  store double %i10.0.lcssa, double* %arrayidx41, align 8, !dbg !1313, !tbaa !861
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4, !dbg !1314
  store double %r20.0.lcssa, double* %arrayidx42, align 8, !dbg !1314, !tbaa !861
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5, !dbg !1314
  store double %i20.0.lcssa, double* %arrayidx43, align 8, !dbg !1314, !tbaa !861
  ret void, !dbg !1315
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU23(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !434), !dbg !1316
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !435), !dbg !1317
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !436), !dbg !1318
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !437), !dbg !1319
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !438), !dbg !1320
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !439), !dbg !1321
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !440), !dbg !1322
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !452), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !451), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !450), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !449), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !448), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !447), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !446), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !445), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !444), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !443), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !442), !dbg !1323
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !441), !dbg !1323
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !465), !dbg !1324
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !463), !dbg !1324
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !464), !dbg !1324
  %cmp155 = icmp sgt i32 %n, 0, !dbg !1324
  br i1 %cmp155, label %for.body, label %for.end, !dbg !1324

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ], !dbg !1324
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1326
  %0 = load double* %arrayidx, align 8, !dbg !1326, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !461), !dbg !1326
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182, !dbg !1326
  %1 = load double* %arrayidx2, align 8, !dbg !1326, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !459), !dbg !1326
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1328
  %2 = load double* %arrayidx4, align 8, !dbg !1328, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !462), !dbg !1328
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182, !dbg !1328
  %3 = load double* %arrayidx6, align 8, !dbg !1328, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !460), !dbg !1328
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1329
  %4 = load double* %arrayidx8, align 8, !dbg !1329, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !456), !dbg !1329
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv182, !dbg !1329
  %5 = load double* %arrayidx10, align 8, !dbg !1329, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !453), !dbg !1329
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1330
  %6 = load double* %arrayidx12, align 8, !dbg !1330, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !457), !dbg !1330
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv182, !dbg !1330
  %7 = load double* %arrayidx14, align 8, !dbg !1330, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !454), !dbg !1330
  %arrayidx16 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1331
  %8 = load double* %arrayidx16, align 8, !dbg !1331, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !458), !dbg !1331
  %arrayidx18 = getelementptr inbounds double* %x2, i64 %indvars.iv182, !dbg !1331
  %9 = load double* %arrayidx18, align 8, !dbg !1331, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !455), !dbg !1331
  %mul = fmul double %0, %4, !dbg !1332
  %mul19 = fmul double %1, %5, !dbg !1332
  %sub = fsub double %mul, %mul19, !dbg !1332
  %add = fadd double %r00.0161, %sub, !dbg !1332
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !447), !dbg !1332
  %mul20 = fmul double %0, %5, !dbg !1332
  %mul21 = fmul double %1, %4, !dbg !1332
  %add22 = fadd double %mul21, %mul20, !dbg !1332
  %add23 = fadd double %i00.0167, %add22, !dbg !1332
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !441), !dbg !1332
  %mul24 = fmul double %0, %6, !dbg !1333
  %mul25 = fmul double %1, %7, !dbg !1333
  %sub26 = fsub double %mul24, %mul25, !dbg !1333
  %add27 = fadd double %r01.0160, %sub26, !dbg !1333
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !448), !dbg !1333
  %mul28 = fmul double %0, %7, !dbg !1333
  %mul29 = fmul double %1, %6, !dbg !1333
  %add30 = fadd double %mul29, %mul28, !dbg !1333
  %add31 = fadd double %i01.0166, %add30, !dbg !1333
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !442), !dbg !1333
  %mul32 = fmul double %0, %8, !dbg !1334
  %mul33 = fmul double %1, %9, !dbg !1334
  %sub34 = fsub double %mul32, %mul33, !dbg !1334
  %add35 = fadd double %r02.0159, %sub34, !dbg !1334
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !449), !dbg !1334
  %mul36 = fmul double %0, %9, !dbg !1334
  %mul37 = fmul double %1, %8, !dbg !1334
  %add38 = fadd double %mul37, %mul36, !dbg !1334
  %add39 = fadd double %i02.0165, %add38, !dbg !1334
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !443), !dbg !1334
  %mul40 = fmul double %2, %4, !dbg !1335
  %mul41 = fmul double %3, %5, !dbg !1335
  %sub42 = fsub double %mul40, %mul41, !dbg !1335
  %add43 = fadd double %r10.0158, %sub42, !dbg !1335
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !450), !dbg !1335
  %mul44 = fmul double %2, %5, !dbg !1335
  %mul45 = fmul double %3, %4, !dbg !1335
  %add46 = fadd double %mul45, %mul44, !dbg !1335
  %add47 = fadd double %i10.0164, %add46, !dbg !1335
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !444), !dbg !1335
  %mul48 = fmul double %2, %6, !dbg !1336
  %mul49 = fmul double %3, %7, !dbg !1336
  %sub50 = fsub double %mul48, %mul49, !dbg !1336
  %add51 = fadd double %r11.0156, %sub50, !dbg !1336
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !451), !dbg !1336
  %mul52 = fmul double %2, %7, !dbg !1336
  %mul53 = fmul double %3, %6, !dbg !1336
  %add54 = fadd double %mul53, %mul52, !dbg !1336
  %add55 = fadd double %i11.0163, %add54, !dbg !1336
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !445), !dbg !1336
  %mul56 = fmul double %2, %8, !dbg !1337
  %mul57 = fmul double %3, %9, !dbg !1337
  %sub58 = fsub double %mul56, %mul57, !dbg !1337
  %add59 = fadd double %r12.0157, %sub58, !dbg !1337
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !452), !dbg !1337
  %mul60 = fmul double %2, %9, !dbg !1337
  %mul61 = fmul double %3, %8, !dbg !1337
  %add62 = fadd double %mul61, %mul60, !dbg !1337
  %add63 = fadd double %i12.0162, %add62, !dbg !1337
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !446), !dbg !1337
  %inc = add nsw i32 %ii.0168, 1, !dbg !1324
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !463), !dbg !1324
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1324
  %indvars.iv.next183 = add i64 %indvars.iv182, 2, !dbg !1324
  %exitcond = icmp eq i32 %inc, %n, !dbg !1324
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1324

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1338, !tbaa !861
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1, !dbg !1338
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !dbg !1338, !tbaa !861
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2, !dbg !1339
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !dbg !1339, !tbaa !861
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3, !dbg !1339
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !dbg !1339, !tbaa !861
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4, !dbg !1340
  store double %r02.0.lcssa, double* %arrayidx70, align 8, !dbg !1340, !tbaa !861
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5, !dbg !1340
  store double %i02.0.lcssa, double* %arrayidx71, align 8, !dbg !1340, !tbaa !861
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6, !dbg !1341
  store double %r10.0.lcssa, double* %arrayidx72, align 8, !dbg !1341, !tbaa !861
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7, !dbg !1341
  store double %i10.0.lcssa, double* %arrayidx73, align 8, !dbg !1341, !tbaa !861
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8, !dbg !1342
  store double %r11.0.lcssa, double* %arrayidx74, align 8, !dbg !1342, !tbaa !861
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9, !dbg !1342
  store double %i11.0.lcssa, double* %arrayidx75, align 8, !dbg !1342, !tbaa !861
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10, !dbg !1343
  store double %r12.0.lcssa, double* %arrayidx76, align 8, !dbg !1343, !tbaa !861
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11, !dbg !1343
  store double %i12.0.lcssa, double* %arrayidx77, align 8, !dbg !1343, !tbaa !861
  ret void, !dbg !1344
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU22(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !468), !dbg !1345
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !469), !dbg !1346
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !470), !dbg !1347
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !471), !dbg !1348
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !472), !dbg !1349
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !473), !dbg !1350
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !481), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !480), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !479), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !478), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !477), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !476), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !475), !dbg !1351
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !474), !dbg !1351
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !492), !dbg !1352
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !490), !dbg !1352
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !491), !dbg !1352
  %cmp106 = icmp sgt i32 %n, 0, !dbg !1352
  br i1 %cmp106, label %for.body, label %for.end, !dbg !1352

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body ], [ 1, %entry ], !dbg !1352
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0115 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0114 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0113 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0112 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0111 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0110 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0109 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0108 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0107 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1354
  %0 = load double* %arrayidx, align 8, !dbg !1354, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !488), !dbg !1354
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv125, !dbg !1354
  %1 = load double* %arrayidx2, align 8, !dbg !1354, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !486), !dbg !1354
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1356
  %2 = load double* %arrayidx4, align 8, !dbg !1356, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !489), !dbg !1356
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv125, !dbg !1356
  %3 = load double* %arrayidx6, align 8, !dbg !1356, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !487), !dbg !1356
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1357
  %4 = load double* %arrayidx8, align 8, !dbg !1357, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !484), !dbg !1357
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv125, !dbg !1357
  %5 = load double* %arrayidx10, align 8, !dbg !1357, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !482), !dbg !1357
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1358
  %6 = load double* %arrayidx12, align 8, !dbg !1358, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !485), !dbg !1358
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv125, !dbg !1358
  %7 = load double* %arrayidx14, align 8, !dbg !1358, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !483), !dbg !1358
  %mul = fmul double %0, %4, !dbg !1359
  %mul15 = fmul double %1, %5, !dbg !1359
  %sub = fsub double %mul, %mul15, !dbg !1359
  %add = fadd double %r00.0110, %sub, !dbg !1359
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !478), !dbg !1359
  %mul16 = fmul double %0, %5, !dbg !1359
  %mul17 = fmul double %1, %4, !dbg !1359
  %add18 = fadd double %mul17, %mul16, !dbg !1359
  %add19 = fadd double %i00.0114, %add18, !dbg !1359
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !474), !dbg !1359
  %mul20 = fmul double %0, %6, !dbg !1360
  %mul21 = fmul double %1, %7, !dbg !1360
  %sub22 = fsub double %mul20, %mul21, !dbg !1360
  %add23 = fadd double %r01.0109, %sub22, !dbg !1360
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !479), !dbg !1360
  %mul24 = fmul double %0, %7, !dbg !1360
  %mul25 = fmul double %1, %6, !dbg !1360
  %add26 = fadd double %mul25, %mul24, !dbg !1360
  %add27 = fadd double %i01.0113, %add26, !dbg !1360
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !475), !dbg !1360
  %mul28 = fmul double %2, %4, !dbg !1361
  %mul29 = fmul double %3, %5, !dbg !1361
  %sub30 = fsub double %mul28, %mul29, !dbg !1361
  %add31 = fadd double %r10.0108, %sub30, !dbg !1361
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !480), !dbg !1361
  %mul32 = fmul double %2, %5, !dbg !1361
  %mul33 = fmul double %3, %4, !dbg !1361
  %add34 = fadd double %mul33, %mul32, !dbg !1361
  %add35 = fadd double %i10.0112, %add34, !dbg !1361
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !476), !dbg !1361
  %mul36 = fmul double %2, %6, !dbg !1362
  %mul37 = fmul double %3, %7, !dbg !1362
  %sub38 = fsub double %mul36, %mul37, !dbg !1362
  %add39 = fadd double %r11.0107, %sub38, !dbg !1362
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !481), !dbg !1362
  %mul40 = fmul double %2, %7, !dbg !1362
  %mul41 = fmul double %3, %6, !dbg !1362
  %add42 = fadd double %mul41, %mul40, !dbg !1362
  %add43 = fadd double %i11.0111, %add42, !dbg !1362
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !477), !dbg !1362
  %inc = add nsw i32 %ii.0115, 1, !dbg !1352
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !490), !dbg !1352
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1352
  %indvars.iv.next126 = add i64 %indvars.iv125, 2, !dbg !1352
  %exitcond = icmp eq i32 %inc, %n, !dbg !1352
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1352

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1363, !tbaa !861
  %arrayidx47 = getelementptr inbounds double* %sums, i64 1, !dbg !1363
  store double %i00.0.lcssa, double* %arrayidx47, align 8, !dbg !1363, !tbaa !861
  %arrayidx48 = getelementptr inbounds double* %sums, i64 2, !dbg !1364
  store double %r01.0.lcssa, double* %arrayidx48, align 8, !dbg !1364, !tbaa !861
  %arrayidx49 = getelementptr inbounds double* %sums, i64 3, !dbg !1364
  store double %i01.0.lcssa, double* %arrayidx49, align 8, !dbg !1364, !tbaa !861
  %arrayidx50 = getelementptr inbounds double* %sums, i64 4, !dbg !1365
  store double %r10.0.lcssa, double* %arrayidx50, align 8, !dbg !1365, !tbaa !861
  %arrayidx51 = getelementptr inbounds double* %sums, i64 5, !dbg !1365
  store double %i10.0.lcssa, double* %arrayidx51, align 8, !dbg !1365, !tbaa !861
  %arrayidx52 = getelementptr inbounds double* %sums, i64 6, !dbg !1366
  store double %r11.0.lcssa, double* %arrayidx52, align 8, !dbg !1366, !tbaa !861
  %arrayidx53 = getelementptr inbounds double* %sums, i64 7, !dbg !1366
  store double %i11.0.lcssa, double* %arrayidx53, align 8, !dbg !1366, !tbaa !861
  ret void, !dbg !1367
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU21(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !495), !dbg !1368
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !496), !dbg !1369
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !497), !dbg !1370
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !498), !dbg !1371
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !499), !dbg !1372
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !503), !dbg !1373
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !502), !dbg !1373
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !501), !dbg !1373
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !500), !dbg !1373
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !512), !dbg !1374
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !510), !dbg !1374
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !511), !dbg !1374
  %cmp57 = icmp sgt i32 %n, 0, !dbg !1374
  br i1 %cmp57, label %for.body, label %for.end, !dbg !1374

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ], !dbg !1374
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i10.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r10.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1376
  %0 = load double* %arrayidx, align 8, !dbg !1376, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !508), !dbg !1376
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68, !dbg !1376
  %1 = load double* %arrayidx2, align 8, !dbg !1376, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !506), !dbg !1376
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1378
  %2 = load double* %arrayidx4, align 8, !dbg !1378, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !509), !dbg !1378
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv68, !dbg !1378
  %3 = load double* %arrayidx6, align 8, !dbg !1378, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !507), !dbg !1378
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1379
  %4 = load double* %arrayidx8, align 8, !dbg !1379, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !505), !dbg !1379
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv68, !dbg !1379
  %5 = load double* %arrayidx10, align 8, !dbg !1379, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !504), !dbg !1379
  %mul = fmul double %0, %4, !dbg !1380
  %mul11 = fmul double %1, %5, !dbg !1380
  %sub = fsub double %mul, %mul11, !dbg !1380
  %add = fadd double %r00.059, %sub, !dbg !1380
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !502), !dbg !1380
  %mul12 = fmul double %0, %5, !dbg !1380
  %mul13 = fmul double %1, %4, !dbg !1380
  %add14 = fadd double %mul13, %mul12, !dbg !1380
  %add15 = fadd double %i00.061, %add14, !dbg !1380
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !500), !dbg !1380
  %mul16 = fmul double %2, %4, !dbg !1381
  %mul17 = fmul double %3, %5, !dbg !1381
  %sub18 = fsub double %mul16, %mul17, !dbg !1381
  %add19 = fadd double %r10.058, %sub18, !dbg !1381
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !503), !dbg !1381
  %mul20 = fmul double %2, %5, !dbg !1381
  %mul21 = fmul double %3, %4, !dbg !1381
  %add22 = fadd double %mul21, %mul20, !dbg !1381
  %add23 = fadd double %i10.060, %add22, !dbg !1381
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !501), !dbg !1381
  %inc = add nsw i32 %ii.062, 1, !dbg !1374
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !510), !dbg !1374
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1374
  %indvars.iv.next69 = add i64 %indvars.iv68, 2, !dbg !1374
  %exitcond = icmp eq i32 %inc, %n, !dbg !1374
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1374

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1382, !tbaa !861
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1, !dbg !1382
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !dbg !1382, !tbaa !861
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2, !dbg !1383
  store double %r10.0.lcssa, double* %arrayidx28, align 8, !dbg !1383, !tbaa !861
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3, !dbg !1383
  store double %i10.0.lcssa, double* %arrayidx29, align 8, !dbg !1383, !tbaa !861
  ret void, !dbg !1384
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU13(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !515), !dbg !1385
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !516), !dbg !1386
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !517), !dbg !1387
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !518), !dbg !1388
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !519), !dbg !1389
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !520), !dbg !1390
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !526), !dbg !1391
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !525), !dbg !1391
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !524), !dbg !1391
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !523), !dbg !1391
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !522), !dbg !1391
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !521), !dbg !1391
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !537), !dbg !1392
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !535), !dbg !1392
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !536), !dbg !1392
  %cmp84 = icmp sgt i32 %n, 0, !dbg !1392
  br i1 %cmp84, label %for.body, label %for.end, !dbg !1392

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ], !dbg !1392
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i02.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r02.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1394
  %0 = load double* %arrayidx, align 8, !dbg !1394, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !534), !dbg !1394
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99, !dbg !1394
  %1 = load double* %arrayidx2, align 8, !dbg !1394, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !533), !dbg !1394
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1396
  %2 = load double* %arrayidx4, align 8, !dbg !1396, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !530), !dbg !1396
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv99, !dbg !1396
  %3 = load double* %arrayidx6, align 8, !dbg !1396, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !527), !dbg !1396
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1397
  %4 = load double* %arrayidx8, align 8, !dbg !1397, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !531), !dbg !1397
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv99, !dbg !1397
  %5 = load double* %arrayidx10, align 8, !dbg !1397, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !528), !dbg !1397
  %arrayidx12 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1398
  %6 = load double* %arrayidx12, align 8, !dbg !1398, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !532), !dbg !1398
  %arrayidx14 = getelementptr inbounds double* %x2, i64 %indvars.iv99, !dbg !1398
  %7 = load double* %arrayidx14, align 8, !dbg !1398, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !529), !dbg !1398
  %mul = fmul double %0, %2, !dbg !1399
  %mul15 = fmul double %1, %3, !dbg !1399
  %sub = fsub double %mul, %mul15, !dbg !1399
  %add = fadd double %r00.087, %sub, !dbg !1399
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !524), !dbg !1399
  %mul16 = fmul double %0, %3, !dbg !1399
  %mul17 = fmul double %1, %2, !dbg !1399
  %add18 = fadd double %mul17, %mul16, !dbg !1399
  %add19 = fadd double %i00.090, %add18, !dbg !1399
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !521), !dbg !1399
  %mul20 = fmul double %0, %4, !dbg !1400
  %mul21 = fmul double %1, %5, !dbg !1400
  %sub22 = fsub double %mul20, %mul21, !dbg !1400
  %add23 = fadd double %r01.086, %sub22, !dbg !1400
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !525), !dbg !1400
  %mul24 = fmul double %0, %5, !dbg !1400
  %mul25 = fmul double %1, %4, !dbg !1400
  %add26 = fadd double %mul25, %mul24, !dbg !1400
  %add27 = fadd double %i01.089, %add26, !dbg !1400
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !522), !dbg !1400
  %mul28 = fmul double %0, %6, !dbg !1401
  %mul29 = fmul double %1, %7, !dbg !1401
  %sub30 = fsub double %mul28, %mul29, !dbg !1401
  %add31 = fadd double %r02.085, %sub30, !dbg !1401
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !526), !dbg !1401
  %mul32 = fmul double %0, %7, !dbg !1401
  %mul33 = fmul double %1, %6, !dbg !1401
  %add34 = fadd double %mul33, %mul32, !dbg !1401
  %add35 = fadd double %i02.088, %add34, !dbg !1401
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !523), !dbg !1401
  %inc = add nsw i32 %ii.091, 1, !dbg !1392
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !535), !dbg !1392
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1392
  %indvars.iv.next100 = add i64 %indvars.iv99, 2, !dbg !1392
  %exitcond = icmp eq i32 %inc, %n, !dbg !1392
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1392

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1402, !tbaa !861
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1, !dbg !1402
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !dbg !1402, !tbaa !861
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2, !dbg !1403
  store double %r01.0.lcssa, double* %arrayidx40, align 8, !dbg !1403, !tbaa !861
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3, !dbg !1403
  store double %i01.0.lcssa, double* %arrayidx41, align 8, !dbg !1403, !tbaa !861
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4, !dbg !1404
  store double %r02.0.lcssa, double* %arrayidx42, align 8, !dbg !1404, !tbaa !861
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5, !dbg !1404
  store double %i02.0.lcssa, double* %arrayidx43, align 8, !dbg !1404, !tbaa !861
  ret void, !dbg !1405
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU12(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !540), !dbg !1406
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !541), !dbg !1407
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !542), !dbg !1408
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !543), !dbg !1409
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !544), !dbg !1410
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !548), !dbg !1411
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !547), !dbg !1411
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !546), !dbg !1411
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !545), !dbg !1411
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !557), !dbg !1412
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !555), !dbg !1412
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !556), !dbg !1412
  %cmp57 = icmp sgt i32 %n, 0, !dbg !1412
  br i1 %cmp57, label %for.body, label %for.end, !dbg !1412

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ], !dbg !1412
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i01.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %r01.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1414
  %0 = load double* %arrayidx, align 8, !dbg !1414, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !554), !dbg !1414
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68, !dbg !1414
  %1 = load double* %arrayidx2, align 8, !dbg !1414, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !553), !dbg !1414
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1416
  %2 = load double* %arrayidx4, align 8, !dbg !1416, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !551), !dbg !1416
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv68, !dbg !1416
  %3 = load double* %arrayidx6, align 8, !dbg !1416, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !549), !dbg !1416
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1417
  %4 = load double* %arrayidx8, align 8, !dbg !1417, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !552), !dbg !1417
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv68, !dbg !1417
  %5 = load double* %arrayidx10, align 8, !dbg !1417, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !550), !dbg !1417
  %mul = fmul double %0, %2, !dbg !1418
  %mul11 = fmul double %1, %3, !dbg !1418
  %sub = fsub double %mul, %mul11, !dbg !1418
  %add = fadd double %r00.059, %sub, !dbg !1418
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !547), !dbg !1418
  %mul12 = fmul double %0, %3, !dbg !1418
  %mul13 = fmul double %1, %2, !dbg !1418
  %add14 = fadd double %mul13, %mul12, !dbg !1418
  %add15 = fadd double %i00.061, %add14, !dbg !1418
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !545), !dbg !1418
  %mul16 = fmul double %0, %4, !dbg !1419
  %mul17 = fmul double %1, %5, !dbg !1419
  %sub18 = fsub double %mul16, %mul17, !dbg !1419
  %add19 = fadd double %r01.058, %sub18, !dbg !1419
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !548), !dbg !1419
  %mul20 = fmul double %0, %5, !dbg !1419
  %mul21 = fmul double %1, %4, !dbg !1419
  %add22 = fadd double %mul21, %mul20, !dbg !1419
  %add23 = fadd double %i01.060, %add22, !dbg !1419
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !546), !dbg !1419
  %inc = add nsw i32 %ii.062, 1, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !555), !dbg !1412
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1412
  %indvars.iv.next69 = add i64 %indvars.iv68, 2, !dbg !1412
  %exitcond = icmp eq i32 %inc, %n, !dbg !1412
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1412

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1420, !tbaa !861
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1, !dbg !1420
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !dbg !1420, !tbaa !861
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2, !dbg !1421
  store double %r01.0.lcssa, double* %arrayidx28, align 8, !dbg !1421, !tbaa !861
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3, !dbg !1421
  store double %i01.0.lcssa, double* %arrayidx29, align 8, !dbg !1421, !tbaa !861
  ret void, !dbg !1422
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotU11(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !562), !dbg !1423
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !563), !dbg !1424
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !564), !dbg !1425
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !565), !dbg !1426
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !567), !dbg !1427
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !566), !dbg !1427
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !574), !dbg !1428
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !572), !dbg !1428
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !573), !dbg !1428
  %cmp30 = icmp sgt i32 %n, 0, !dbg !1428
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1428

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body ], [ 1, %entry ], !dbg !1428
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.033 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.032 = phi double [ %add11, %for.body ], [ 0.000000e+00, %entry ]
  %r00.031 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1430
  %0 = load double* %arrayidx, align 8, !dbg !1430, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !571), !dbg !1430
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv37, !dbg !1430
  %1 = load double* %arrayidx2, align 8, !dbg !1430, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !570), !dbg !1430
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1432
  %2 = load double* %arrayidx4, align 8, !dbg !1432, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !569), !dbg !1432
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv37, !dbg !1432
  %3 = load double* %arrayidx6, align 8, !dbg !1432, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !568), !dbg !1432
  %mul = fmul double %0, %2, !dbg !1433
  %mul7 = fmul double %1, %3, !dbg !1433
  %sub = fsub double %mul, %mul7, !dbg !1433
  %add = fadd double %r00.031, %sub, !dbg !1433
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !567), !dbg !1433
  %mul8 = fmul double %0, %3, !dbg !1433
  %mul9 = fmul double %1, %2, !dbg !1433
  %add10 = fadd double %mul9, %mul8, !dbg !1433
  %add11 = fadd double %i00.032, %add10, !dbg !1433
  tail call void @llvm.dbg.value(metadata !{double %add11}, i64 0, metadata !566), !dbg !1433
  %inc = add nsw i32 %ii.033, 1, !dbg !1428
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !572), !dbg !1428
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1428
  %indvars.iv.next38 = add i64 %indvars.iv37, 2, !dbg !1428
  %exitcond = icmp eq i32 %inc, %n, !dbg !1428
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1428

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add11, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1434, !tbaa !861
  %arrayidx15 = getelementptr inbounds double* %sums, i64 1, !dbg !1434
  store double %i00.0.lcssa, double* %arrayidx15, align 8, !dbg !1434, !tbaa !861
  ret void, !dbg !1435
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC33(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !577), !dbg !1436
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !578), !dbg !1437
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !579), !dbg !1438
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !580), !dbg !1439
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !581), !dbg !1440
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !582), !dbg !1441
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !583), !dbg !1442
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !584), !dbg !1443
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !602), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !601), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !600), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !599), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !598), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !597), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !596), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !595), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !594), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !593), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !592), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !591), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !590), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !589), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !588), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !587), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !586), !dbg !1444
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !585), !dbg !1444
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !617), !dbg !1445
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !615), !dbg !1445
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !616), !dbg !1445
  %cmp226 = icmp sgt i32 %n, 0, !dbg !1445
  br i1 %cmp226, label %for.body, label %for.end, !dbg !1445

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.body ], [ 1, %entry ], !dbg !1445
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0245 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0244 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0243 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0242 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0241 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0240 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0239 = phi double [ %add67, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0238 = phi double [ %add75, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0237 = phi double [ %add83, %for.body ], [ 0.000000e+00, %entry ]
  %i22.0236 = phi double [ %add91, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0235 = phi double [ %add24, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0234 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0233 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %r22.0232 = phi double [ %add87, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0231 = phi double [ %add79, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0230 = phi double [ %add71, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0229 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0228 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0227 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1447
  %0 = load double* %arrayidx, align 8, !dbg !1447, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !612), !dbg !1447
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv265, !dbg !1447
  %1 = load double* %arrayidx2, align 8, !dbg !1447, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !609), !dbg !1447
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1449
  %2 = load double* %arrayidx4, align 8, !dbg !1449, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !613), !dbg !1449
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv265, !dbg !1449
  %3 = load double* %arrayidx6, align 8, !dbg !1449, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !610), !dbg !1449
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1450
  %4 = load double* %arrayidx8, align 8, !dbg !1450, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !614), !dbg !1450
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv265, !dbg !1450
  %5 = load double* %arrayidx10, align 8, !dbg !1450, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !611), !dbg !1450
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1451
  %6 = load double* %arrayidx12, align 8, !dbg !1451, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !606), !dbg !1451
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv265, !dbg !1451
  %7 = load double* %arrayidx14, align 8, !dbg !1451, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !603), !dbg !1451
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1452
  %8 = load double* %arrayidx16, align 8, !dbg !1452, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !607), !dbg !1452
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv265, !dbg !1452
  %9 = load double* %arrayidx18, align 8, !dbg !1452, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !604), !dbg !1452
  %arrayidx20 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1453
  %10 = load double* %arrayidx20, align 8, !dbg !1453, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %10}, i64 0, metadata !608), !dbg !1453
  %arrayidx22 = getelementptr inbounds double* %x2, i64 %indvars.iv265, !dbg !1453
  %11 = load double* %arrayidx22, align 8, !dbg !1453, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %11}, i64 0, metadata !605), !dbg !1453
  %mul = fmul double %0, %6, !dbg !1454
  %mul23 = fmul double %1, %7, !dbg !1454
  %add = fadd double %mul, %mul23, !dbg !1454
  %add24 = fadd double %r00.0235, %add, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{double %add24}, i64 0, metadata !594), !dbg !1454
  %mul25 = fmul double %0, %7, !dbg !1454
  %mul26 = fmul double %1, %6, !dbg !1454
  %sub = fsub double %mul25, %mul26, !dbg !1454
  %add27 = fadd double %i00.0244, %sub, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !585), !dbg !1454
  %mul28 = fmul double %0, %8, !dbg !1455
  %mul29 = fmul double %1, %9, !dbg !1455
  %add30 = fadd double %mul28, %mul29, !dbg !1455
  %add31 = fadd double %r01.0234, %add30, !dbg !1455
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !595), !dbg !1455
  %mul32 = fmul double %0, %9, !dbg !1455
  %mul33 = fmul double %1, %8, !dbg !1455
  %sub34 = fsub double %mul32, %mul33, !dbg !1455
  %add35 = fadd double %i01.0243, %sub34, !dbg !1455
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !586), !dbg !1455
  %mul36 = fmul double %0, %10, !dbg !1456
  %mul37 = fmul double %1, %11, !dbg !1456
  %add38 = fadd double %mul36, %mul37, !dbg !1456
  %add39 = fadd double %r02.0233, %add38, !dbg !1456
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !596), !dbg !1456
  %mul40 = fmul double %0, %11, !dbg !1456
  %mul41 = fmul double %1, %10, !dbg !1456
  %sub42 = fsub double %mul40, %mul41, !dbg !1456
  %add43 = fadd double %i02.0242, %sub42, !dbg !1456
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !587), !dbg !1456
  %mul44 = fmul double %2, %6, !dbg !1457
  %mul45 = fmul double %3, %7, !dbg !1457
  %add46 = fadd double %mul44, %mul45, !dbg !1457
  %add47 = fadd double %r10.0227, %add46, !dbg !1457
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !597), !dbg !1457
  %mul48 = fmul double %2, %7, !dbg !1457
  %mul49 = fmul double %3, %6, !dbg !1457
  %sub50 = fsub double %mul48, %mul49, !dbg !1457
  %add51 = fadd double %i10.0241, %sub50, !dbg !1457
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !588), !dbg !1457
  %mul52 = fmul double %2, %8, !dbg !1458
  %mul53 = fmul double %3, %9, !dbg !1458
  %add54 = fadd double %mul52, %mul53, !dbg !1458
  %add55 = fadd double %r11.0228, %add54, !dbg !1458
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !598), !dbg !1458
  %mul56 = fmul double %2, %9, !dbg !1458
  %mul57 = fmul double %3, %8, !dbg !1458
  %sub58 = fsub double %mul56, %mul57, !dbg !1458
  %add59 = fadd double %i11.0240, %sub58, !dbg !1458
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !589), !dbg !1458
  %mul60 = fmul double %2, %10, !dbg !1459
  %mul61 = fmul double %3, %11, !dbg !1459
  %add62 = fadd double %mul60, %mul61, !dbg !1459
  %add63 = fadd double %r12.0229, %add62, !dbg !1459
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !599), !dbg !1459
  %mul64 = fmul double %2, %11, !dbg !1459
  %mul65 = fmul double %3, %10, !dbg !1459
  %sub66 = fsub double %mul64, %mul65, !dbg !1459
  %add67 = fadd double %i12.0239, %sub66, !dbg !1459
  tail call void @llvm.dbg.value(metadata !{double %add67}, i64 0, metadata !590), !dbg !1459
  %mul68 = fmul double %4, %6, !dbg !1460
  %mul69 = fmul double %5, %7, !dbg !1460
  %add70 = fadd double %mul68, %mul69, !dbg !1460
  %add71 = fadd double %r20.0230, %add70, !dbg !1460
  tail call void @llvm.dbg.value(metadata !{double %add71}, i64 0, metadata !600), !dbg !1460
  %mul72 = fmul double %4, %7, !dbg !1460
  %mul73 = fmul double %5, %6, !dbg !1460
  %sub74 = fsub double %mul72, %mul73, !dbg !1460
  %add75 = fadd double %i20.0238, %sub74, !dbg !1460
  tail call void @llvm.dbg.value(metadata !{double %add75}, i64 0, metadata !591), !dbg !1460
  %mul76 = fmul double %4, %8, !dbg !1461
  %mul77 = fmul double %5, %9, !dbg !1461
  %add78 = fadd double %mul76, %mul77, !dbg !1461
  %add79 = fadd double %r21.0231, %add78, !dbg !1461
  tail call void @llvm.dbg.value(metadata !{double %add79}, i64 0, metadata !601), !dbg !1461
  %mul80 = fmul double %4, %9, !dbg !1461
  %mul81 = fmul double %5, %8, !dbg !1461
  %sub82 = fsub double %mul80, %mul81, !dbg !1461
  %add83 = fadd double %i21.0237, %sub82, !dbg !1461
  tail call void @llvm.dbg.value(metadata !{double %add83}, i64 0, metadata !592), !dbg !1461
  %mul84 = fmul double %4, %10, !dbg !1462
  %mul85 = fmul double %5, %11, !dbg !1462
  %add86 = fadd double %mul84, %mul85, !dbg !1462
  %add87 = fadd double %r22.0232, %add86, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{double %add87}, i64 0, metadata !602), !dbg !1462
  %mul88 = fmul double %4, %11, !dbg !1462
  %mul89 = fmul double %5, %10, !dbg !1462
  %sub90 = fsub double %mul88, %mul89, !dbg !1462
  %add91 = fadd double %i22.0236, %sub90, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{double %add91}, i64 0, metadata !593), !dbg !1462
  %inc = add nsw i32 %ii.0245, 1, !dbg !1445
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !615), !dbg !1445
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1445
  %indvars.iv.next266 = add i64 %indvars.iv265, 2, !dbg !1445
  %exitcond = icmp eq i32 %inc, %n, !dbg !1445
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1445

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add67, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add75, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add83, %for.body ]
  %i22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add91, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add24, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %r22.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add87, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add79, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add71, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1463, !tbaa !861
  %arrayidx95 = getelementptr inbounds double* %sums, i64 1, !dbg !1463
  store double %i00.0.lcssa, double* %arrayidx95, align 8, !dbg !1463, !tbaa !861
  %arrayidx96 = getelementptr inbounds double* %sums, i64 2, !dbg !1464
  store double %r01.0.lcssa, double* %arrayidx96, align 8, !dbg !1464, !tbaa !861
  %arrayidx97 = getelementptr inbounds double* %sums, i64 3, !dbg !1464
  store double %i01.0.lcssa, double* %arrayidx97, align 8, !dbg !1464, !tbaa !861
  %arrayidx98 = getelementptr inbounds double* %sums, i64 4, !dbg !1465
  store double %r02.0.lcssa, double* %arrayidx98, align 8, !dbg !1465, !tbaa !861
  %arrayidx99 = getelementptr inbounds double* %sums, i64 5, !dbg !1465
  store double %i02.0.lcssa, double* %arrayidx99, align 8, !dbg !1465, !tbaa !861
  %arrayidx100 = getelementptr inbounds double* %sums, i64 6, !dbg !1466
  store double %r10.0.lcssa, double* %arrayidx100, align 8, !dbg !1466, !tbaa !861
  %arrayidx101 = getelementptr inbounds double* %sums, i64 7, !dbg !1466
  store double %i10.0.lcssa, double* %arrayidx101, align 8, !dbg !1466, !tbaa !861
  %arrayidx102 = getelementptr inbounds double* %sums, i64 8, !dbg !1467
  store double %r11.0.lcssa, double* %arrayidx102, align 8, !dbg !1467, !tbaa !861
  %arrayidx103 = getelementptr inbounds double* %sums, i64 9, !dbg !1467
  store double %i11.0.lcssa, double* %arrayidx103, align 8, !dbg !1467, !tbaa !861
  %arrayidx104 = getelementptr inbounds double* %sums, i64 10, !dbg !1468
  store double %r12.0.lcssa, double* %arrayidx104, align 8, !dbg !1468, !tbaa !861
  %arrayidx105 = getelementptr inbounds double* %sums, i64 11, !dbg !1468
  store double %i12.0.lcssa, double* %arrayidx105, align 8, !dbg !1468, !tbaa !861
  %arrayidx106 = getelementptr inbounds double* %sums, i64 12, !dbg !1469
  store double %r20.0.lcssa, double* %arrayidx106, align 8, !dbg !1469, !tbaa !861
  %arrayidx107 = getelementptr inbounds double* %sums, i64 13, !dbg !1469
  store double %i20.0.lcssa, double* %arrayidx107, align 8, !dbg !1469, !tbaa !861
  %arrayidx108 = getelementptr inbounds double* %sums, i64 14, !dbg !1470
  store double %r21.0.lcssa, double* %arrayidx108, align 8, !dbg !1470, !tbaa !861
  %arrayidx109 = getelementptr inbounds double* %sums, i64 15, !dbg !1470
  store double %i21.0.lcssa, double* %arrayidx109, align 8, !dbg !1470, !tbaa !861
  %arrayidx110 = getelementptr inbounds double* %sums, i64 16, !dbg !1471
  store double %r22.0.lcssa, double* %arrayidx110, align 8, !dbg !1471, !tbaa !861
  %arrayidx111 = getelementptr inbounds double* %sums, i64 17, !dbg !1471
  store double %i22.0.lcssa, double* %arrayidx111, align 8, !dbg !1471, !tbaa !861
  ret void, !dbg !1472
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC32(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !620), !dbg !1473
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !621), !dbg !1474
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !622), !dbg !1475
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !623), !dbg !1476
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !624), !dbg !1477
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !625), !dbg !1478
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !626), !dbg !1479
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !638), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !637), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !636), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !635), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !634), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !633), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !632), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !631), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !630), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !629), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !628), !dbg !1480
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !627), !dbg !1480
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !651), !dbg !1481
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !649), !dbg !1481
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !650), !dbg !1481
  %cmp155 = icmp sgt i32 %n, 0, !dbg !1481
  br i1 %cmp155, label %for.body, label %for.end, !dbg !1481

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ], !dbg !1481
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i20.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i21.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r21.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r20.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1483
  %0 = load double* %arrayidx, align 8, !dbg !1483, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !646), !dbg !1483
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182, !dbg !1483
  %1 = load double* %arrayidx2, align 8, !dbg !1483, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !643), !dbg !1483
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1485
  %2 = load double* %arrayidx4, align 8, !dbg !1485, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !647), !dbg !1485
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182, !dbg !1485
  %3 = load double* %arrayidx6, align 8, !dbg !1485, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !644), !dbg !1485
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1486
  %4 = load double* %arrayidx8, align 8, !dbg !1486, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !648), !dbg !1486
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv182, !dbg !1486
  %5 = load double* %arrayidx10, align 8, !dbg !1486, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !645), !dbg !1486
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1487
  %6 = load double* %arrayidx12, align 8, !dbg !1487, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !641), !dbg !1487
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv182, !dbg !1487
  %7 = load double* %arrayidx14, align 8, !dbg !1487, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !639), !dbg !1487
  %arrayidx16 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1488
  %8 = load double* %arrayidx16, align 8, !dbg !1488, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !642), !dbg !1488
  %arrayidx18 = getelementptr inbounds double* %x1, i64 %indvars.iv182, !dbg !1488
  %9 = load double* %arrayidx18, align 8, !dbg !1488, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !640), !dbg !1488
  %mul = fmul double %0, %6, !dbg !1489
  %mul19 = fmul double %1, %7, !dbg !1489
  %add = fadd double %mul, %mul19, !dbg !1489
  %add20 = fadd double %r00.0161, %add, !dbg !1489
  tail call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !633), !dbg !1489
  %mul21 = fmul double %0, %7, !dbg !1489
  %mul22 = fmul double %1, %6, !dbg !1489
  %sub = fsub double %mul21, %mul22, !dbg !1489
  %add23 = fadd double %i00.0167, %sub, !dbg !1489
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !627), !dbg !1489
  %mul24 = fmul double %0, %8, !dbg !1490
  %mul25 = fmul double %1, %9, !dbg !1490
  %add26 = fadd double %mul24, %mul25, !dbg !1490
  %add27 = fadd double %r01.0160, %add26, !dbg !1490
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !634), !dbg !1490
  %mul28 = fmul double %0, %9, !dbg !1490
  %mul29 = fmul double %1, %8, !dbg !1490
  %sub30 = fsub double %mul28, %mul29, !dbg !1490
  %add31 = fadd double %i01.0166, %sub30, !dbg !1490
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !628), !dbg !1490
  %mul32 = fmul double %2, %6, !dbg !1491
  %mul33 = fmul double %3, %7, !dbg !1491
  %add34 = fadd double %mul32, %mul33, !dbg !1491
  %add35 = fadd double %r10.0159, %add34, !dbg !1491
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !635), !dbg !1491
  %mul36 = fmul double %2, %7, !dbg !1491
  %mul37 = fmul double %3, %6, !dbg !1491
  %sub38 = fsub double %mul36, %mul37, !dbg !1491
  %add39 = fadd double %i10.0165, %sub38, !dbg !1491
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !629), !dbg !1491
  %mul40 = fmul double %2, %8, !dbg !1492
  %mul41 = fmul double %3, %9, !dbg !1492
  %add42 = fadd double %mul40, %mul41, !dbg !1492
  %add43 = fadd double %r11.0158, %add42, !dbg !1492
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !636), !dbg !1492
  %mul44 = fmul double %2, %9, !dbg !1492
  %mul45 = fmul double %3, %8, !dbg !1492
  %sub46 = fsub double %mul44, %mul45, !dbg !1492
  %add47 = fadd double %i11.0164, %sub46, !dbg !1492
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !630), !dbg !1492
  %mul48 = fmul double %4, %6, !dbg !1493
  %mul49 = fmul double %5, %7, !dbg !1493
  %add50 = fadd double %mul48, %mul49, !dbg !1493
  %add51 = fadd double %r20.0156, %add50, !dbg !1493
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !637), !dbg !1493
  %mul52 = fmul double %4, %7, !dbg !1493
  %mul53 = fmul double %5, %6, !dbg !1493
  %sub54 = fsub double %mul52, %mul53, !dbg !1493
  %add55 = fadd double %i20.0163, %sub54, !dbg !1493
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !631), !dbg !1493
  %mul56 = fmul double %4, %8, !dbg !1494
  %mul57 = fmul double %5, %9, !dbg !1494
  %add58 = fadd double %mul56, %mul57, !dbg !1494
  %add59 = fadd double %r21.0157, %add58, !dbg !1494
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !638), !dbg !1494
  %mul60 = fmul double %4, %9, !dbg !1494
  %mul61 = fmul double %5, %8, !dbg !1494
  %sub62 = fsub double %mul60, %mul61, !dbg !1494
  %add63 = fadd double %i21.0162, %sub62, !dbg !1494
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !632), !dbg !1494
  %inc = add nsw i32 %ii.0168, 1, !dbg !1481
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !649), !dbg !1481
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1481
  %indvars.iv.next183 = add i64 %indvars.iv182, 2, !dbg !1481
  %exitcond = icmp eq i32 %inc, %n, !dbg !1481
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1481

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r21.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1495, !tbaa !861
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1, !dbg !1495
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !dbg !1495, !tbaa !861
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2, !dbg !1496
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !dbg !1496, !tbaa !861
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3, !dbg !1496
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !dbg !1496, !tbaa !861
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4, !dbg !1497
  store double %r10.0.lcssa, double* %arrayidx70, align 8, !dbg !1497, !tbaa !861
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5, !dbg !1497
  store double %i10.0.lcssa, double* %arrayidx71, align 8, !dbg !1497, !tbaa !861
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6, !dbg !1498
  store double %r11.0.lcssa, double* %arrayidx72, align 8, !dbg !1498, !tbaa !861
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7, !dbg !1498
  store double %i11.0.lcssa, double* %arrayidx73, align 8, !dbg !1498, !tbaa !861
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8, !dbg !1499
  store double %r20.0.lcssa, double* %arrayidx74, align 8, !dbg !1499, !tbaa !861
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9, !dbg !1499
  store double %i20.0.lcssa, double* %arrayidx75, align 8, !dbg !1499, !tbaa !861
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10, !dbg !1500
  store double %r21.0.lcssa, double* %arrayidx76, align 8, !dbg !1500, !tbaa !861
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11, !dbg !1500
  store double %i21.0.lcssa, double* %arrayidx77, align 8, !dbg !1500, !tbaa !861
  ret void, !dbg !1501
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC31(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %y2, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !654), !dbg !1502
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !655), !dbg !1503
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !656), !dbg !1504
  tail call void @llvm.dbg.value(metadata !{double* %y2}, i64 0, metadata !657), !dbg !1505
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !658), !dbg !1506
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !659), !dbg !1507
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !665), !dbg !1508
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !664), !dbg !1508
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !663), !dbg !1508
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !662), !dbg !1508
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !661), !dbg !1508
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !660), !dbg !1508
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !676), !dbg !1509
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !674), !dbg !1509
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !675), !dbg !1509
  %cmp84 = icmp sgt i32 %n, 0, !dbg !1509
  br i1 %cmp84, label %for.body, label %for.end, !dbg !1509

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ], !dbg !1509
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i10.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i20.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r10.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r20.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1511
  %0 = load double* %arrayidx, align 8, !dbg !1511, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !671), !dbg !1511
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99, !dbg !1511
  %1 = load double* %arrayidx2, align 8, !dbg !1511, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !668), !dbg !1511
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1513
  %2 = load double* %arrayidx4, align 8, !dbg !1513, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !672), !dbg !1513
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv99, !dbg !1513
  %3 = load double* %arrayidx6, align 8, !dbg !1513, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !669), !dbg !1513
  %arrayidx8 = getelementptr inbounds double* %y2, i64 %indvars.iv, !dbg !1514
  %4 = load double* %arrayidx8, align 8, !dbg !1514, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !673), !dbg !1514
  %arrayidx10 = getelementptr inbounds double* %y2, i64 %indvars.iv99, !dbg !1514
  %5 = load double* %arrayidx10, align 8, !dbg !1514, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !670), !dbg !1514
  %arrayidx12 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1515
  %6 = load double* %arrayidx12, align 8, !dbg !1515, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !667), !dbg !1515
  %arrayidx14 = getelementptr inbounds double* %x0, i64 %indvars.iv99, !dbg !1515
  %7 = load double* %arrayidx14, align 8, !dbg !1515, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !666), !dbg !1515
  %mul = fmul double %0, %6, !dbg !1516
  %mul15 = fmul double %1, %7, !dbg !1516
  %add = fadd double %mul, %mul15, !dbg !1516
  %add16 = fadd double %r00.087, %add, !dbg !1516
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !663), !dbg !1516
  %mul17 = fmul double %0, %7, !dbg !1516
  %mul18 = fmul double %1, %6, !dbg !1516
  %sub = fsub double %mul17, %mul18, !dbg !1516
  %add19 = fadd double %i00.090, %sub, !dbg !1516
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !660), !dbg !1516
  %mul20 = fmul double %2, %6, !dbg !1517
  %mul21 = fmul double %3, %7, !dbg !1517
  %add22 = fadd double %mul20, %mul21, !dbg !1517
  %add23 = fadd double %r10.086, %add22, !dbg !1517
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !664), !dbg !1517
  %mul24 = fmul double %2, %7, !dbg !1517
  %mul25 = fmul double %3, %6, !dbg !1517
  %sub26 = fsub double %mul24, %mul25, !dbg !1517
  %add27 = fadd double %i10.089, %sub26, !dbg !1517
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !661), !dbg !1517
  %mul28 = fmul double %4, %6, !dbg !1518
  %mul29 = fmul double %5, %7, !dbg !1518
  %add30 = fadd double %mul28, %mul29, !dbg !1518
  %add31 = fadd double %r20.085, %add30, !dbg !1518
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !665), !dbg !1518
  %mul32 = fmul double %4, %7, !dbg !1518
  %mul33 = fmul double %5, %6, !dbg !1518
  %sub34 = fsub double %mul32, %mul33, !dbg !1518
  %add35 = fadd double %i20.088, %sub34, !dbg !1518
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !662), !dbg !1518
  %inc = add nsw i32 %ii.091, 1, !dbg !1509
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !674), !dbg !1509
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1509
  %indvars.iv.next100 = add i64 %indvars.iv99, 2, !dbg !1509
  %exitcond = icmp eq i32 %inc, %n, !dbg !1509
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1509

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r20.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1519, !tbaa !861
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1, !dbg !1519
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !dbg !1519, !tbaa !861
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2, !dbg !1520
  store double %r10.0.lcssa, double* %arrayidx40, align 8, !dbg !1520, !tbaa !861
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3, !dbg !1520
  store double %i10.0.lcssa, double* %arrayidx41, align 8, !dbg !1520, !tbaa !861
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4, !dbg !1521
  store double %r20.0.lcssa, double* %arrayidx42, align 8, !dbg !1521, !tbaa !861
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5, !dbg !1521
  store double %i20.0.lcssa, double* %arrayidx43, align 8, !dbg !1521, !tbaa !861
  ret void, !dbg !1522
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC23(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !679), !dbg !1523
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !680), !dbg !1524
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !681), !dbg !1525
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !682), !dbg !1526
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !683), !dbg !1527
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !684), !dbg !1528
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !685), !dbg !1529
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !697), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !696), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !695), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !694), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !693), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !692), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !691), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !690), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !689), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !688), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !687), !dbg !1530
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !686), !dbg !1530
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !710), !dbg !1531
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !708), !dbg !1531
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !709), !dbg !1531
  %cmp155 = icmp sgt i32 %n, 0, !dbg !1531
  br i1 %cmp155, label %for.body, label %for.end, !dbg !1531

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %for.body ], [ 1, %entry ], !dbg !1531
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0168 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0167 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0166 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %i02.0165 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0164 = phi double [ %add47, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0163 = phi double [ %add55, %for.body ], [ 0.000000e+00, %entry ]
  %i12.0162 = phi double [ %add63, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0161 = phi double [ %add20, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0160 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %r02.0159 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0158 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r12.0157 = phi double [ %add59, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0156 = phi double [ %add51, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1533
  %0 = load double* %arrayidx, align 8, !dbg !1533, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !706), !dbg !1533
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv182, !dbg !1533
  %1 = load double* %arrayidx2, align 8, !dbg !1533, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !704), !dbg !1533
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1535
  %2 = load double* %arrayidx4, align 8, !dbg !1535, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !707), !dbg !1535
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv182, !dbg !1535
  %3 = load double* %arrayidx6, align 8, !dbg !1535, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !705), !dbg !1535
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1536
  %4 = load double* %arrayidx8, align 8, !dbg !1536, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !701), !dbg !1536
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv182, !dbg !1536
  %5 = load double* %arrayidx10, align 8, !dbg !1536, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !698), !dbg !1536
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1537
  %6 = load double* %arrayidx12, align 8, !dbg !1537, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !702), !dbg !1537
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv182, !dbg !1537
  %7 = load double* %arrayidx14, align 8, !dbg !1537, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !699), !dbg !1537
  %arrayidx16 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1538
  %8 = load double* %arrayidx16, align 8, !dbg !1538, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %8}, i64 0, metadata !703), !dbg !1538
  %arrayidx18 = getelementptr inbounds double* %x2, i64 %indvars.iv182, !dbg !1538
  %9 = load double* %arrayidx18, align 8, !dbg !1538, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %9}, i64 0, metadata !700), !dbg !1538
  %mul = fmul double %0, %4, !dbg !1539
  %mul19 = fmul double %1, %5, !dbg !1539
  %add = fadd double %mul, %mul19, !dbg !1539
  %add20 = fadd double %r00.0161, %add, !dbg !1539
  tail call void @llvm.dbg.value(metadata !{double %add20}, i64 0, metadata !692), !dbg !1539
  %mul21 = fmul double %0, %5, !dbg !1539
  %mul22 = fmul double %1, %4, !dbg !1539
  %sub = fsub double %mul21, %mul22, !dbg !1539
  %add23 = fadd double %i00.0167, %sub, !dbg !1539
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !686), !dbg !1539
  %mul24 = fmul double %0, %6, !dbg !1540
  %mul25 = fmul double %1, %7, !dbg !1540
  %add26 = fadd double %mul24, %mul25, !dbg !1540
  %add27 = fadd double %r01.0160, %add26, !dbg !1540
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !693), !dbg !1540
  %mul28 = fmul double %0, %7, !dbg !1540
  %mul29 = fmul double %1, %6, !dbg !1540
  %sub30 = fsub double %mul28, %mul29, !dbg !1540
  %add31 = fadd double %i01.0166, %sub30, !dbg !1540
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !687), !dbg !1540
  %mul32 = fmul double %0, %8, !dbg !1541
  %mul33 = fmul double %1, %9, !dbg !1541
  %add34 = fadd double %mul32, %mul33, !dbg !1541
  %add35 = fadd double %r02.0159, %add34, !dbg !1541
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !694), !dbg !1541
  %mul36 = fmul double %0, %9, !dbg !1541
  %mul37 = fmul double %1, %8, !dbg !1541
  %sub38 = fsub double %mul36, %mul37, !dbg !1541
  %add39 = fadd double %i02.0165, %sub38, !dbg !1541
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !688), !dbg !1541
  %mul40 = fmul double %2, %4, !dbg !1542
  %mul41 = fmul double %3, %5, !dbg !1542
  %add42 = fadd double %mul40, %mul41, !dbg !1542
  %add43 = fadd double %r10.0158, %add42, !dbg !1542
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !695), !dbg !1542
  %mul44 = fmul double %2, %5, !dbg !1542
  %mul45 = fmul double %3, %4, !dbg !1542
  %sub46 = fsub double %mul44, %mul45, !dbg !1542
  %add47 = fadd double %i10.0164, %sub46, !dbg !1542
  tail call void @llvm.dbg.value(metadata !{double %add47}, i64 0, metadata !689), !dbg !1542
  %mul48 = fmul double %2, %6, !dbg !1543
  %mul49 = fmul double %3, %7, !dbg !1543
  %add50 = fadd double %mul48, %mul49, !dbg !1543
  %add51 = fadd double %r11.0156, %add50, !dbg !1543
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !696), !dbg !1543
  %mul52 = fmul double %2, %7, !dbg !1543
  %mul53 = fmul double %3, %6, !dbg !1543
  %sub54 = fsub double %mul52, %mul53, !dbg !1543
  %add55 = fadd double %i11.0163, %sub54, !dbg !1543
  tail call void @llvm.dbg.value(metadata !{double %add55}, i64 0, metadata !690), !dbg !1543
  %mul56 = fmul double %2, %8, !dbg !1544
  %mul57 = fmul double %3, %9, !dbg !1544
  %add58 = fadd double %mul56, %mul57, !dbg !1544
  %add59 = fadd double %r12.0157, %add58, !dbg !1544
  tail call void @llvm.dbg.value(metadata !{double %add59}, i64 0, metadata !697), !dbg !1544
  %mul60 = fmul double %2, %9, !dbg !1544
  %mul61 = fmul double %3, %8, !dbg !1544
  %sub62 = fsub double %mul60, %mul61, !dbg !1544
  %add63 = fadd double %i12.0162, %sub62, !dbg !1544
  tail call void @llvm.dbg.value(metadata !{double %add63}, i64 0, metadata !691), !dbg !1544
  %inc = add nsw i32 %ii.0168, 1, !dbg !1531
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !708), !dbg !1531
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1531
  %indvars.iv.next183 = add i64 %indvars.iv182, 2, !dbg !1531
  %exitcond = icmp eq i32 %inc, %n, !dbg !1531
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1531

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add47, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add55, %for.body ]
  %i12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add63, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add20, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r12.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add59, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add51, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1545, !tbaa !861
  %arrayidx67 = getelementptr inbounds double* %sums, i64 1, !dbg !1545
  store double %i00.0.lcssa, double* %arrayidx67, align 8, !dbg !1545, !tbaa !861
  %arrayidx68 = getelementptr inbounds double* %sums, i64 2, !dbg !1546
  store double %r01.0.lcssa, double* %arrayidx68, align 8, !dbg !1546, !tbaa !861
  %arrayidx69 = getelementptr inbounds double* %sums, i64 3, !dbg !1546
  store double %i01.0.lcssa, double* %arrayidx69, align 8, !dbg !1546, !tbaa !861
  %arrayidx70 = getelementptr inbounds double* %sums, i64 4, !dbg !1547
  store double %r02.0.lcssa, double* %arrayidx70, align 8, !dbg !1547, !tbaa !861
  %arrayidx71 = getelementptr inbounds double* %sums, i64 5, !dbg !1547
  store double %i02.0.lcssa, double* %arrayidx71, align 8, !dbg !1547, !tbaa !861
  %arrayidx72 = getelementptr inbounds double* %sums, i64 6, !dbg !1548
  store double %r10.0.lcssa, double* %arrayidx72, align 8, !dbg !1548, !tbaa !861
  %arrayidx73 = getelementptr inbounds double* %sums, i64 7, !dbg !1548
  store double %i10.0.lcssa, double* %arrayidx73, align 8, !dbg !1548, !tbaa !861
  %arrayidx74 = getelementptr inbounds double* %sums, i64 8, !dbg !1549
  store double %r11.0.lcssa, double* %arrayidx74, align 8, !dbg !1549, !tbaa !861
  %arrayidx75 = getelementptr inbounds double* %sums, i64 9, !dbg !1549
  store double %i11.0.lcssa, double* %arrayidx75, align 8, !dbg !1549, !tbaa !861
  %arrayidx76 = getelementptr inbounds double* %sums, i64 10, !dbg !1550
  store double %r12.0.lcssa, double* %arrayidx76, align 8, !dbg !1550, !tbaa !861
  %arrayidx77 = getelementptr inbounds double* %sums, i64 11, !dbg !1550
  store double %i12.0.lcssa, double* %arrayidx77, align 8, !dbg !1550, !tbaa !861
  ret void, !dbg !1551
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC22(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !713), !dbg !1552
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !714), !dbg !1553
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !715), !dbg !1554
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !716), !dbg !1555
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !717), !dbg !1556
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !718), !dbg !1557
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !726), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !725), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !724), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !723), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !722), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !721), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !720), !dbg !1558
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !719), !dbg !1558
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !737), !dbg !1559
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !735), !dbg !1559
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !736), !dbg !1559
  %cmp106 = icmp sgt i32 %n, 0, !dbg !1559
  br i1 %cmp106, label %for.body, label %for.end, !dbg !1559

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body ], [ 1, %entry ], !dbg !1559
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.0115 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.0114 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.0113 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i10.0112 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %i11.0111 = phi double [ %add43, %for.body ], [ 0.000000e+00, %entry ]
  %r00.0110 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r01.0109 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r10.0108 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %r11.0107 = phi double [ %add39, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1561
  %0 = load double* %arrayidx, align 8, !dbg !1561, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !733), !dbg !1561
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv125, !dbg !1561
  %1 = load double* %arrayidx2, align 8, !dbg !1561, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !731), !dbg !1561
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1563
  %2 = load double* %arrayidx4, align 8, !dbg !1563, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !734), !dbg !1563
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv125, !dbg !1563
  %3 = load double* %arrayidx6, align 8, !dbg !1563, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !732), !dbg !1563
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1564
  %4 = load double* %arrayidx8, align 8, !dbg !1564, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !729), !dbg !1564
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv125, !dbg !1564
  %5 = load double* %arrayidx10, align 8, !dbg !1564, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !727), !dbg !1564
  %arrayidx12 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1565
  %6 = load double* %arrayidx12, align 8, !dbg !1565, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !730), !dbg !1565
  %arrayidx14 = getelementptr inbounds double* %x1, i64 %indvars.iv125, !dbg !1565
  %7 = load double* %arrayidx14, align 8, !dbg !1565, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !728), !dbg !1565
  %mul = fmul double %0, %4, !dbg !1566
  %mul15 = fmul double %1, %5, !dbg !1566
  %add = fadd double %mul, %mul15, !dbg !1566
  %add16 = fadd double %r00.0110, %add, !dbg !1566
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !723), !dbg !1566
  %mul17 = fmul double %0, %5, !dbg !1566
  %mul18 = fmul double %1, %4, !dbg !1566
  %sub = fsub double %mul17, %mul18, !dbg !1566
  %add19 = fadd double %i00.0114, %sub, !dbg !1566
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !719), !dbg !1566
  %mul20 = fmul double %0, %6, !dbg !1567
  %mul21 = fmul double %1, %7, !dbg !1567
  %add22 = fadd double %mul20, %mul21, !dbg !1567
  %add23 = fadd double %r01.0109, %add22, !dbg !1567
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !724), !dbg !1567
  %mul24 = fmul double %0, %7, !dbg !1567
  %mul25 = fmul double %1, %6, !dbg !1567
  %sub26 = fsub double %mul24, %mul25, !dbg !1567
  %add27 = fadd double %i01.0113, %sub26, !dbg !1567
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !720), !dbg !1567
  %mul28 = fmul double %2, %4, !dbg !1568
  %mul29 = fmul double %3, %5, !dbg !1568
  %add30 = fadd double %mul28, %mul29, !dbg !1568
  %add31 = fadd double %r10.0108, %add30, !dbg !1568
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !725), !dbg !1568
  %mul32 = fmul double %2, %5, !dbg !1568
  %mul33 = fmul double %3, %4, !dbg !1568
  %sub34 = fsub double %mul32, %mul33, !dbg !1568
  %add35 = fadd double %i10.0112, %sub34, !dbg !1568
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !721), !dbg !1568
  %mul36 = fmul double %2, %6, !dbg !1569
  %mul37 = fmul double %3, %7, !dbg !1569
  %add38 = fadd double %mul36, %mul37, !dbg !1569
  %add39 = fadd double %r11.0107, %add38, !dbg !1569
  tail call void @llvm.dbg.value(metadata !{double %add39}, i64 0, metadata !726), !dbg !1569
  %mul40 = fmul double %2, %7, !dbg !1569
  %mul41 = fmul double %3, %6, !dbg !1569
  %sub42 = fsub double %mul40, %mul41, !dbg !1569
  %add43 = fadd double %i11.0111, %sub42, !dbg !1569
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !722), !dbg !1569
  %inc = add nsw i32 %ii.0115, 1, !dbg !1559
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !735), !dbg !1559
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1559
  %indvars.iv.next126 = add i64 %indvars.iv125, 2, !dbg !1559
  %exitcond = icmp eq i32 %inc, %n, !dbg !1559
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1559

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %i11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add43, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  %r11.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add39, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1570, !tbaa !861
  %arrayidx47 = getelementptr inbounds double* %sums, i64 1, !dbg !1570
  store double %i00.0.lcssa, double* %arrayidx47, align 8, !dbg !1570, !tbaa !861
  %arrayidx48 = getelementptr inbounds double* %sums, i64 2, !dbg !1571
  store double %r01.0.lcssa, double* %arrayidx48, align 8, !dbg !1571, !tbaa !861
  %arrayidx49 = getelementptr inbounds double* %sums, i64 3, !dbg !1571
  store double %i01.0.lcssa, double* %arrayidx49, align 8, !dbg !1571, !tbaa !861
  %arrayidx50 = getelementptr inbounds double* %sums, i64 4, !dbg !1572
  store double %r10.0.lcssa, double* %arrayidx50, align 8, !dbg !1572, !tbaa !861
  %arrayidx51 = getelementptr inbounds double* %sums, i64 5, !dbg !1572
  store double %i10.0.lcssa, double* %arrayidx51, align 8, !dbg !1572, !tbaa !861
  %arrayidx52 = getelementptr inbounds double* %sums, i64 6, !dbg !1573
  store double %r11.0.lcssa, double* %arrayidx52, align 8, !dbg !1573, !tbaa !861
  %arrayidx53 = getelementptr inbounds double* %sums, i64 7, !dbg !1573
  store double %i11.0.lcssa, double* %arrayidx53, align 8, !dbg !1573, !tbaa !861
  ret void, !dbg !1574
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC21(i32 %n, double* nocapture %y0, double* nocapture %y1, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !740), !dbg !1575
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !741), !dbg !1576
  tail call void @llvm.dbg.value(metadata !{double* %y1}, i64 0, metadata !742), !dbg !1577
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !743), !dbg !1578
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !744), !dbg !1579
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !748), !dbg !1580
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !747), !dbg !1580
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !746), !dbg !1580
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !745), !dbg !1580
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !757), !dbg !1581
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !755), !dbg !1581
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !756), !dbg !1581
  %cmp57 = icmp sgt i32 %n, 0, !dbg !1581
  br i1 %cmp57, label %for.body, label %for.end, !dbg !1581

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ], !dbg !1581
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i10.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %r10.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1583
  %0 = load double* %arrayidx, align 8, !dbg !1583, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !753), !dbg !1583
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68, !dbg !1583
  %1 = load double* %arrayidx2, align 8, !dbg !1583, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !751), !dbg !1583
  %arrayidx4 = getelementptr inbounds double* %y1, i64 %indvars.iv, !dbg !1585
  %2 = load double* %arrayidx4, align 8, !dbg !1585, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !754), !dbg !1585
  %arrayidx6 = getelementptr inbounds double* %y1, i64 %indvars.iv68, !dbg !1585
  %3 = load double* %arrayidx6, align 8, !dbg !1585, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !752), !dbg !1585
  %arrayidx8 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1586
  %4 = load double* %arrayidx8, align 8, !dbg !1586, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !750), !dbg !1586
  %arrayidx10 = getelementptr inbounds double* %x0, i64 %indvars.iv68, !dbg !1586
  %5 = load double* %arrayidx10, align 8, !dbg !1586, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !749), !dbg !1586
  %mul = fmul double %0, %4, !dbg !1587
  %mul11 = fmul double %1, %5, !dbg !1587
  %add = fadd double %mul, %mul11, !dbg !1587
  %add12 = fadd double %r00.059, %add, !dbg !1587
  tail call void @llvm.dbg.value(metadata !{double %add12}, i64 0, metadata !747), !dbg !1587
  %mul13 = fmul double %0, %5, !dbg !1587
  %mul14 = fmul double %1, %4, !dbg !1587
  %sub = fsub double %mul13, %mul14, !dbg !1587
  %add15 = fadd double %i00.061, %sub, !dbg !1587
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !745), !dbg !1587
  %mul16 = fmul double %2, %4, !dbg !1588
  %mul17 = fmul double %3, %5, !dbg !1588
  %add18 = fadd double %mul16, %mul17, !dbg !1588
  %add19 = fadd double %r10.058, %add18, !dbg !1588
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !748), !dbg !1588
  %mul20 = fmul double %2, %5, !dbg !1588
  %mul21 = fmul double %3, %4, !dbg !1588
  %sub22 = fsub double %mul20, %mul21, !dbg !1588
  %add23 = fadd double %i10.060, %sub22, !dbg !1588
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !746), !dbg !1588
  %inc = add nsw i32 %ii.062, 1, !dbg !1581
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !755), !dbg !1581
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1581
  %indvars.iv.next69 = add i64 %indvars.iv68, 2, !dbg !1581
  %exitcond = icmp eq i32 %inc, %n, !dbg !1581
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1581

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add12, %for.body ]
  %r10.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1589, !tbaa !861
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1, !dbg !1589
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !dbg !1589, !tbaa !861
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2, !dbg !1590
  store double %r10.0.lcssa, double* %arrayidx28, align 8, !dbg !1590, !tbaa !861
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3, !dbg !1590
  store double %i10.0.lcssa, double* %arrayidx29, align 8, !dbg !1590, !tbaa !861
  ret void, !dbg !1591
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC13(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %x2, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !760), !dbg !1592
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !761), !dbg !1593
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !762), !dbg !1594
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !763), !dbg !1595
  tail call void @llvm.dbg.value(metadata !{double* %x2}, i64 0, metadata !764), !dbg !1596
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !765), !dbg !1597
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !771), !dbg !1598
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !770), !dbg !1598
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !769), !dbg !1598
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !768), !dbg !1598
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !767), !dbg !1598
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !766), !dbg !1598
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !782), !dbg !1599
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !780), !dbg !1599
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !781), !dbg !1599
  %cmp84 = icmp sgt i32 %n, 0, !dbg !1599
  br i1 %cmp84, label %for.body, label %for.end, !dbg !1599

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.body ], [ 1, %entry ], !dbg !1599
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.091 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.090 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %i01.089 = phi double [ %add27, %for.body ], [ 0.000000e+00, %entry ]
  %i02.088 = phi double [ %add35, %for.body ], [ 0.000000e+00, %entry ]
  %r00.087 = phi double [ %add16, %for.body ], [ 0.000000e+00, %entry ]
  %r01.086 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r02.085 = phi double [ %add31, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1601
  %0 = load double* %arrayidx, align 8, !dbg !1601, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !779), !dbg !1601
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv99, !dbg !1601
  %1 = load double* %arrayidx2, align 8, !dbg !1601, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !778), !dbg !1601
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1603
  %2 = load double* %arrayidx4, align 8, !dbg !1603, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !775), !dbg !1603
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv99, !dbg !1603
  %3 = load double* %arrayidx6, align 8, !dbg !1603, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !772), !dbg !1603
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1604
  %4 = load double* %arrayidx8, align 8, !dbg !1604, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !776), !dbg !1604
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv99, !dbg !1604
  %5 = load double* %arrayidx10, align 8, !dbg !1604, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !773), !dbg !1604
  %arrayidx12 = getelementptr inbounds double* %x2, i64 %indvars.iv, !dbg !1605
  %6 = load double* %arrayidx12, align 8, !dbg !1605, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %6}, i64 0, metadata !777), !dbg !1605
  %arrayidx14 = getelementptr inbounds double* %x2, i64 %indvars.iv99, !dbg !1605
  %7 = load double* %arrayidx14, align 8, !dbg !1605, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !774), !dbg !1605
  %mul = fmul double %0, %2, !dbg !1606
  %mul15 = fmul double %1, %3, !dbg !1606
  %add = fadd double %mul, %mul15, !dbg !1606
  %add16 = fadd double %r00.087, %add, !dbg !1606
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !769), !dbg !1606
  %mul17 = fmul double %0, %3, !dbg !1606
  %mul18 = fmul double %1, %2, !dbg !1606
  %sub = fsub double %mul17, %mul18, !dbg !1606
  %add19 = fadd double %i00.090, %sub, !dbg !1606
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !766), !dbg !1606
  %mul20 = fmul double %0, %4, !dbg !1607
  %mul21 = fmul double %1, %5, !dbg !1607
  %add22 = fadd double %mul20, %mul21, !dbg !1607
  %add23 = fadd double %r01.086, %add22, !dbg !1607
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !770), !dbg !1607
  %mul24 = fmul double %0, %5, !dbg !1607
  %mul25 = fmul double %1, %4, !dbg !1607
  %sub26 = fsub double %mul24, %mul25, !dbg !1607
  %add27 = fadd double %i01.089, %sub26, !dbg !1607
  tail call void @llvm.dbg.value(metadata !{double %add27}, i64 0, metadata !767), !dbg !1607
  %mul28 = fmul double %0, %6, !dbg !1608
  %mul29 = fmul double %1, %7, !dbg !1608
  %add30 = fadd double %mul28, %mul29, !dbg !1608
  %add31 = fadd double %r02.085, %add30, !dbg !1608
  tail call void @llvm.dbg.value(metadata !{double %add31}, i64 0, metadata !771), !dbg !1608
  %mul32 = fmul double %0, %7, !dbg !1608
  %mul33 = fmul double %1, %6, !dbg !1608
  %sub34 = fsub double %mul32, %mul33, !dbg !1608
  %add35 = fadd double %i02.088, %sub34, !dbg !1608
  tail call void @llvm.dbg.value(metadata !{double %add35}, i64 0, metadata !768), !dbg !1608
  %inc = add nsw i32 %ii.091, 1, !dbg !1599
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !780), !dbg !1599
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1599
  %indvars.iv.next100 = add i64 %indvars.iv99, 2, !dbg !1599
  %exitcond = icmp eq i32 %inc, %n, !dbg !1599
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1599

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add27, %for.body ]
  %i02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add16, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r02.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add31, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1609, !tbaa !861
  %arrayidx39 = getelementptr inbounds double* %sums, i64 1, !dbg !1609
  store double %i00.0.lcssa, double* %arrayidx39, align 8, !dbg !1609, !tbaa !861
  %arrayidx40 = getelementptr inbounds double* %sums, i64 2, !dbg !1610
  store double %r01.0.lcssa, double* %arrayidx40, align 8, !dbg !1610, !tbaa !861
  %arrayidx41 = getelementptr inbounds double* %sums, i64 3, !dbg !1610
  store double %i01.0.lcssa, double* %arrayidx41, align 8, !dbg !1610, !tbaa !861
  %arrayidx42 = getelementptr inbounds double* %sums, i64 4, !dbg !1611
  store double %r02.0.lcssa, double* %arrayidx42, align 8, !dbg !1611, !tbaa !861
  %arrayidx43 = getelementptr inbounds double* %sums, i64 5, !dbg !1611
  store double %i02.0.lcssa, double* %arrayidx43, align 8, !dbg !1611, !tbaa !861
  ret void, !dbg !1612
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC12(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %x1, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !785), !dbg !1613
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !786), !dbg !1614
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !787), !dbg !1615
  tail call void @llvm.dbg.value(metadata !{double* %x1}, i64 0, metadata !788), !dbg !1616
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !789), !dbg !1617
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !793), !dbg !1618
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !792), !dbg !1618
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !791), !dbg !1618
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !790), !dbg !1618
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !802), !dbg !1619
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !800), !dbg !1619
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !801), !dbg !1619
  %cmp57 = icmp sgt i32 %n, 0, !dbg !1619
  br i1 %cmp57, label %for.body, label %for.end, !dbg !1619

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body ], [ 1, %entry ], !dbg !1619
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.062 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.061 = phi double [ %add15, %for.body ], [ 0.000000e+00, %entry ]
  %i01.060 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %r00.059 = phi double [ %add12, %for.body ], [ 0.000000e+00, %entry ]
  %r01.058 = phi double [ %add19, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1621
  %0 = load double* %arrayidx, align 8, !dbg !1621, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !799), !dbg !1621
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv68, !dbg !1621
  %1 = load double* %arrayidx2, align 8, !dbg !1621, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !798), !dbg !1621
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1623
  %2 = load double* %arrayidx4, align 8, !dbg !1623, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !796), !dbg !1623
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv68, !dbg !1623
  %3 = load double* %arrayidx6, align 8, !dbg !1623, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !794), !dbg !1623
  %arrayidx8 = getelementptr inbounds double* %x1, i64 %indvars.iv, !dbg !1624
  %4 = load double* %arrayidx8, align 8, !dbg !1624, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !797), !dbg !1624
  %arrayidx10 = getelementptr inbounds double* %x1, i64 %indvars.iv68, !dbg !1624
  %5 = load double* %arrayidx10, align 8, !dbg !1624, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %5}, i64 0, metadata !795), !dbg !1624
  %mul = fmul double %0, %2, !dbg !1625
  %mul11 = fmul double %1, %3, !dbg !1625
  %add = fadd double %mul, %mul11, !dbg !1625
  %add12 = fadd double %r00.059, %add, !dbg !1625
  tail call void @llvm.dbg.value(metadata !{double %add12}, i64 0, metadata !792), !dbg !1625
  %mul13 = fmul double %0, %3, !dbg !1625
  %mul14 = fmul double %1, %2, !dbg !1625
  %sub = fsub double %mul13, %mul14, !dbg !1625
  %add15 = fadd double %i00.061, %sub, !dbg !1625
  tail call void @llvm.dbg.value(metadata !{double %add15}, i64 0, metadata !790), !dbg !1625
  %mul16 = fmul double %0, %4, !dbg !1626
  %mul17 = fmul double %1, %5, !dbg !1626
  %add18 = fadd double %mul16, %mul17, !dbg !1626
  %add19 = fadd double %r01.058, %add18, !dbg !1626
  tail call void @llvm.dbg.value(metadata !{double %add19}, i64 0, metadata !793), !dbg !1626
  %mul20 = fmul double %0, %5, !dbg !1626
  %mul21 = fmul double %1, %4, !dbg !1626
  %sub22 = fsub double %mul20, %mul21, !dbg !1626
  %add23 = fadd double %i01.060, %sub22, !dbg !1626
  tail call void @llvm.dbg.value(metadata !{double %add23}, i64 0, metadata !791), !dbg !1626
  %inc = add nsw i32 %ii.062, 1, !dbg !1619
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !800), !dbg !1619
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1619
  %indvars.iv.next69 = add i64 %indvars.iv68, 2, !dbg !1619
  %exitcond = icmp eq i32 %inc, %n, !dbg !1619
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1619

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add15, %for.body ]
  %i01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add12, %for.body ]
  %r01.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add19, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1627, !tbaa !861
  %arrayidx27 = getelementptr inbounds double* %sums, i64 1, !dbg !1627
  store double %i00.0.lcssa, double* %arrayidx27, align 8, !dbg !1627, !tbaa !861
  %arrayidx28 = getelementptr inbounds double* %sums, i64 2, !dbg !1628
  store double %r01.0.lcssa, double* %arrayidx28, align 8, !dbg !1628, !tbaa !861
  %arrayidx29 = getelementptr inbounds double* %sums, i64 3, !dbg !1628
  store double %i01.0.lcssa, double* %arrayidx29, align 8, !dbg !1628, !tbaa !861
  ret void, !dbg !1629
}

; Function Attrs: nounwind optsize uwtable
define void @ZVdotC11(i32 %n, double* nocapture %y0, double* nocapture %x0, double* nocapture %sums) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !805), !dbg !1630
  tail call void @llvm.dbg.value(metadata !{double* %y0}, i64 0, metadata !806), !dbg !1631
  tail call void @llvm.dbg.value(metadata !{double* %x0}, i64 0, metadata !807), !dbg !1632
  tail call void @llvm.dbg.value(metadata !{double* %sums}, i64 0, metadata !808), !dbg !1633
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !810), !dbg !1634
  tail call void @llvm.dbg.value(metadata !1235, i64 0, metadata !809), !dbg !1634
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !817), !dbg !1635
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !815), !dbg !1635
  tail call void @llvm.dbg.value(metadata !1239, i64 0, metadata !816), !dbg !1635
  %cmp30 = icmp sgt i32 %n, 0, !dbg !1635
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1635

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body ], [ 1, %entry ], !dbg !1635
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %ii.033 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %i00.032 = phi double [ %add11, %for.body ], [ 0.000000e+00, %entry ]
  %r00.031 = phi double [ %add8, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %y0, i64 %indvars.iv, !dbg !1637
  %0 = load double* %arrayidx, align 8, !dbg !1637, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !814), !dbg !1637
  %arrayidx2 = getelementptr inbounds double* %y0, i64 %indvars.iv37, !dbg !1637
  %1 = load double* %arrayidx2, align 8, !dbg !1637, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %1}, i64 0, metadata !813), !dbg !1637
  %arrayidx4 = getelementptr inbounds double* %x0, i64 %indvars.iv, !dbg !1639
  %2 = load double* %arrayidx4, align 8, !dbg !1639, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %2}, i64 0, metadata !812), !dbg !1639
  %arrayidx6 = getelementptr inbounds double* %x0, i64 %indvars.iv37, !dbg !1639
  %3 = load double* %arrayidx6, align 8, !dbg !1639, !tbaa !861
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !811), !dbg !1639
  %mul = fmul double %0, %2, !dbg !1640
  %mul7 = fmul double %1, %3, !dbg !1640
  %add = fadd double %mul, %mul7, !dbg !1640
  %add8 = fadd double %r00.031, %add, !dbg !1640
  tail call void @llvm.dbg.value(metadata !{double %add8}, i64 0, metadata !810), !dbg !1640
  %mul9 = fmul double %0, %3, !dbg !1640
  %mul10 = fmul double %1, %2, !dbg !1640
  %sub = fsub double %mul9, %mul10, !dbg !1640
  %add11 = fadd double %i00.032, %sub, !dbg !1640
  tail call void @llvm.dbg.value(metadata !{double %add11}, i64 0, metadata !809), !dbg !1640
  %inc = add nsw i32 %ii.033, 1, !dbg !1635
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !815), !dbg !1635
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1635
  %indvars.iv.next38 = add i64 %indvars.iv37, 2, !dbg !1635
  %exitcond = icmp eq i32 %inc, %n, !dbg !1635
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1635

for.end:                                          ; preds = %for.body, %entry
  %i00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add11, %for.body ]
  %r00.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add8, %for.body ]
  store double %r00.0.lcssa, double* %sums, align 8, !dbg !1641, !tbaa !861
  %arrayidx15 = getelementptr inbounds double* %sums, i64 1, !dbg !1641
  store double %i00.0.lcssa, double* %arrayidx15, align 8, !dbg !1641, !tbaa !861
  ret void, !dbg !1642
}

; Function Attrs: nounwind optsize uwtable
define void @ZVzero(i32 %size, double* %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !822), !dbg !1643
  tail call void @llvm.dbg.value(metadata !{double* %y}, i64 0, metadata !823), !dbg !1644
  %cmp = icmp slt i32 %size, 0, !dbg !1645
  %cmp1 = icmp eq double* %y, null, !dbg !1645
  %or.cond = or i1 %cmp, %cmp1, !dbg !1645
  br i1 %or.cond, label %if.then, label %for.cond.preheader, !dbg !1645

for.cond.preheader:                               ; preds = %entry
  %cmp215 = icmp sgt i32 %size, 0, !dbg !1646
  br i1 %cmp215, label %for.body, label %for.end, !dbg !1646

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1648, !tbaa !925
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str18, i64 0, i64 0), i32 %size, double* %y) #6, !dbg !1648
  tail call void @exit(i32 -1) #8, !dbg !1650
  unreachable, !dbg !1650

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %ii.016 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %1 = or i64 %indvars.iv, 1, !dbg !1651
  %arrayidx = getelementptr inbounds double* %y, i64 %1, !dbg !1651
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !1651, !tbaa !861
  %arrayidx4 = getelementptr inbounds double* %y, i64 %indvars.iv, !dbg !1651
  store double 0.000000e+00, double* %arrayidx4, align 8, !dbg !1651, !tbaa !861
  %inc = add nsw i32 %ii.016, 1, !dbg !1646
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !824), !dbg !1646
  %indvars.iv.next = add i64 %indvars.iv, 2, !dbg !1646
  %exitcond = icmp eq i32 %inc, %size, !dbg !1646
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1646

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !1653
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14, metadata !27, metadata !51, metadata !61, metadata !78, metadata !93, metadata !112, metadata !128, metadata !141, metadata !153, metadata !219, metadata !232, metadata !243, metadata !252, metadata !259, metadata !277, metadata !298, metadata !311, metadata !324, metadata !369, metadata !405, metadata !432, metadata !466, metadata !493, metadata !513, metadata !538, metadata !558, metadata !575, metadata !618, metadata !652, metadata !677, metadata !711, metadata !738, metadata !758, metadata !783, metadata !803, metadata !818}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Zabs", metadata !"Zabs", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @Zabs, null, null, metadata !9, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [Zabs]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13}
!10 = metadata !{i32 786689, metadata !4, metadata !"real", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 15]
!11 = metadata !{i32 786689, metadata !4, metadata !"imag", metadata !5, i32 33554448, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 16]
!12 = metadata !{i32 786688, metadata !4, metadata !"abs", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abs] [line 18]
!13 = metadata !{i32 786688, metadata !4, metadata !"val", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 18]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Zrecip", metadata !"Zrecip", metadata !"", i32 46, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, double, double*, double*)* @Zrecip, null, null, metadata !19, i32 51} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 51] [Zrecip]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !17, metadata !8, metadata !8, metadata !18, metadata !18}
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!20 = metadata !{i32 786689, metadata !14, metadata !"areal", metadata !5, i32 16777263, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 47]
!21 = metadata !{i32 786689, metadata !14, metadata !"aimag", metadata !5, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 48]
!22 = metadata !{i32 786689, metadata !14, metadata !"pbreal", metadata !5, i32 50331697, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pbreal] [line 49]
!23 = metadata !{i32 786689, metadata !14, metadata !"pbimag", metadata !5, i32 67108914, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pbimag] [line 50]
!24 = metadata !{i32 786688, metadata !14, metadata !"bimag", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bimag] [line 52]
!25 = metadata !{i32 786688, metadata !14, metadata !"breal", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [breal] [line 52]
!26 = metadata !{i32 786688, metadata !14, metadata !"fac", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 52]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Zrecip2", metadata !"Zrecip2", metadata !"", i32 89, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, double, double, double, double, double, double, double, double*, double*, double*, double*, double*, double*, double*, double*)* @Zrecip2, null, null, metadata !30, i32 106} ; [ DW_TAG_subprogram ] [line 89] [def] [scope 106] [Zrecip2]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !17, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!31 = metadata !{i32 786689, metadata !27, metadata !"areal", metadata !5, i32 16777306, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 90]
!32 = metadata !{i32 786689, metadata !27, metadata !"aimag", metadata !5, i32 33554523, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 91]
!33 = metadata !{i32 786689, metadata !27, metadata !"breal", metadata !5, i32 50331740, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [breal] [line 92]
!34 = metadata !{i32 786689, metadata !27, metadata !"bimag", metadata !5, i32 67108957, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bimag] [line 93]
!35 = metadata !{i32 786689, metadata !27, metadata !"creal", metadata !5, i32 83886174, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [creal] [line 94]
!36 = metadata !{i32 786689, metadata !27, metadata !"cimag", metadata !5, i32 100663391, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cimag] [line 95]
!37 = metadata !{i32 786689, metadata !27, metadata !"dreal", metadata !5, i32 117440608, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dreal] [line 96]
!38 = metadata !{i32 786689, metadata !27, metadata !"dimag", metadata !5, i32 134217825, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dimag] [line 97]
!39 = metadata !{i32 786689, metadata !27, metadata !"pereal", metadata !5, i32 150995042, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pereal] [line 98]
!40 = metadata !{i32 786689, metadata !27, metadata !"peimag", metadata !5, i32 167772259, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [peimag] [line 99]
!41 = metadata !{i32 786689, metadata !27, metadata !"pfreal", metadata !5, i32 184549476, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfreal] [line 100]
!42 = metadata !{i32 786689, metadata !27, metadata !"pfimag", metadata !5, i32 201326693, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfimag] [line 101]
!43 = metadata !{i32 786689, metadata !27, metadata !"pgreal", metadata !5, i32 218103910, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pgreal] [line 102]
!44 = metadata !{i32 786689, metadata !27, metadata !"pgimag", metadata !5, i32 234881127, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pgimag] [line 103]
!45 = metadata !{i32 786689, metadata !27, metadata !"phreal", metadata !5, i32 251658344, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phreal] [line 104]
!46 = metadata !{i32 786689, metadata !27, metadata !"phimag", metadata !5, i32 268435561, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [phimag] [line 105]
!47 = metadata !{i32 786688, metadata !27, metadata !"xreal", metadata !5, i32 107, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 107]
!48 = metadata !{i32 786688, metadata !27, metadata !"ximag", metadata !5, i32 107, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 107]
!49 = metadata !{i32 786688, metadata !27, metadata !"yreal", metadata !5, i32 107, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 107]
!50 = metadata !{i32 786688, metadata !27, metadata !"yimag", metadata !5, i32 107, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 107]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVinit", metadata !"ZVinit", metadata !"", i32 168, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (i32, double, double)* @ZVinit, null, null, metadata !54, i32 172} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 172] [ZVinit]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !18, metadata !17, metadata !8, metadata !8}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!55 = metadata !{i32 786689, metadata !51, metadata !"n", metadata !5, i32 16777385, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 169]
!56 = metadata !{i32 786689, metadata !51, metadata !"real", metadata !5, i32 33554602, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 170]
!57 = metadata !{i32 786689, metadata !51, metadata !"imag", metadata !5, i32 50331819, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 171]
!58 = metadata !{i32 786688, metadata !51, metadata !"x", metadata !5, i32 173, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 173]
!59 = metadata !{i32 786688, metadata !51, metadata !"ii", metadata !5, i32 174, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 174]
!60 = metadata !{i32 786688, metadata !51, metadata !"jj", metadata !5, i32 174, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 174]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU", metadata !"ZVdotU", metadata !"", i32 201, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotU, null, null, metadata !64, i32 207} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 207] [ZVdotU]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !18, metadata !18}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!65 = metadata !{i32 786689, metadata !61, metadata !"size", metadata !5, i32 16777418, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 202]
!66 = metadata !{i32 786689, metadata !61, metadata !"y", metadata !5, i32 33554635, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 203]
!67 = metadata !{i32 786689, metadata !61, metadata !"x", metadata !5, i32 50331852, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 204]
!68 = metadata !{i32 786689, metadata !61, metadata !"prdot", metadata !5, i32 67109069, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prdot] [line 205]
!69 = metadata !{i32 786689, metadata !61, metadata !"pidot", metadata !5, i32 83886286, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pidot] [line 206]
!70 = metadata !{i32 786688, metadata !61, metadata !"isum", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 208]
!71 = metadata !{i32 786688, metadata !61, metadata !"rsum", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 208]
!72 = metadata !{i32 786688, metadata !61, metadata !"ximag", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 208]
!73 = metadata !{i32 786688, metadata !61, metadata !"xreal", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 208]
!74 = metadata !{i32 786688, metadata !61, metadata !"yimag", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 208]
!75 = metadata !{i32 786688, metadata !61, metadata !"yreal", metadata !5, i32 208, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 208]
!76 = metadata !{i32 786688, metadata !61, metadata !"ii", metadata !5, i32 209, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 209]
!77 = metadata !{i32 786688, metadata !61, metadata !"jj", metadata !5, i32 209, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 209]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC", metadata !"ZVdotC", metadata !"", i32 244, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotC, null, null, metadata !79, i32 250} ; [ DW_TAG_subprogram ] [line 244] [def] [scope 250] [ZVdotC]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!80 = metadata !{i32 786689, metadata !78, metadata !"size", metadata !5, i32 16777461, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 245]
!81 = metadata !{i32 786689, metadata !78, metadata !"y", metadata !5, i32 33554678, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 246]
!82 = metadata !{i32 786689, metadata !78, metadata !"x", metadata !5, i32 50331895, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 247]
!83 = metadata !{i32 786689, metadata !78, metadata !"prdot", metadata !5, i32 67109112, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prdot] [line 248]
!84 = metadata !{i32 786689, metadata !78, metadata !"pidot", metadata !5, i32 83886329, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pidot] [line 249]
!85 = metadata !{i32 786688, metadata !78, metadata !"isum", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 251]
!86 = metadata !{i32 786688, metadata !78, metadata !"rsum", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 251]
!87 = metadata !{i32 786688, metadata !78, metadata !"ximag", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 251]
!88 = metadata !{i32 786688, metadata !78, metadata !"xreal", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 251]
!89 = metadata !{i32 786688, metadata !78, metadata !"yimag", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 251]
!90 = metadata !{i32 786688, metadata !78, metadata !"yreal", metadata !5, i32 251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 251]
!91 = metadata !{i32 786688, metadata !78, metadata !"ii", metadata !5, i32 252, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 252]
!92 = metadata !{i32 786688, metadata !78, metadata !"jj", metadata !5, i32 252, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 252]
!93 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotiU", metadata !"ZVdotiU", metadata !"", i32 287, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*, double*, double*)* @ZVdotiU, null, null, metadata !97, i32 294} ; [ DW_TAG_subprogram ] [line 287] [def] [scope 294] [ZVdotiU]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !17, metadata !18, metadata !96, metadata !18, metadata !18, metadata !18}
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!98 = metadata !{i32 786689, metadata !93, metadata !"size", metadata !5, i32 16777504, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 288]
!99 = metadata !{i32 786689, metadata !93, metadata !"y", metadata !5, i32 33554721, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 289]
!100 = metadata !{i32 786689, metadata !93, metadata !"index", metadata !5, i32 50331938, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 290]
!101 = metadata !{i32 786689, metadata !93, metadata !"x", metadata !5, i32 67109155, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 291]
!102 = metadata !{i32 786689, metadata !93, metadata !"prdot", metadata !5, i32 83886372, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prdot] [line 292]
!103 = metadata !{i32 786689, metadata !93, metadata !"pidot", metadata !5, i32 100663589, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pidot] [line 293]
!104 = metadata !{i32 786688, metadata !93, metadata !"isum", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 295]
!105 = metadata !{i32 786688, metadata !93, metadata !"rsum", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 295]
!106 = metadata !{i32 786688, metadata !93, metadata !"ximag", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 295]
!107 = metadata !{i32 786688, metadata !93, metadata !"xreal", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 295]
!108 = metadata !{i32 786688, metadata !93, metadata !"yimag", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 295]
!109 = metadata !{i32 786688, metadata !93, metadata !"yreal", metadata !5, i32 295, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 295]
!110 = metadata !{i32 786688, metadata !93, metadata !"ii", metadata !5, i32 296, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 296]
!111 = metadata !{i32 786688, metadata !93, metadata !"jj", metadata !5, i32 296, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 296]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotiC", metadata !"ZVdotiC", metadata !"", i32 336, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*, double*, double*)* @ZVdotiC, null, null, metadata !113, i32 343} ; [ DW_TAG_subprogram ] [line 336] [def] [scope 343] [ZVdotiC]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127}
!114 = metadata !{i32 786689, metadata !112, metadata !"size", metadata !5, i32 16777553, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 337]
!115 = metadata !{i32 786689, metadata !112, metadata !"y", metadata !5, i32 33554770, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 338]
!116 = metadata !{i32 786689, metadata !112, metadata !"index", metadata !5, i32 50331987, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 339]
!117 = metadata !{i32 786689, metadata !112, metadata !"x", metadata !5, i32 67109204, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 340]
!118 = metadata !{i32 786689, metadata !112, metadata !"prdot", metadata !5, i32 83886421, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prdot] [line 341]
!119 = metadata !{i32 786689, metadata !112, metadata !"pidot", metadata !5, i32 100663638, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pidot] [line 342]
!120 = metadata !{i32 786688, metadata !112, metadata !"isum", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isum] [line 344]
!121 = metadata !{i32 786688, metadata !112, metadata !"rsum", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsum] [line 344]
!122 = metadata !{i32 786688, metadata !112, metadata !"ximag", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 344]
!123 = metadata !{i32 786688, metadata !112, metadata !"xreal", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 344]
!124 = metadata !{i32 786688, metadata !112, metadata !"yimag", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 344]
!125 = metadata !{i32 786688, metadata !112, metadata !"yreal", metadata !5, i32 344, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 344]
!126 = metadata !{i32 786688, metadata !112, metadata !"ii", metadata !5, i32 345, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 345]
!127 = metadata !{i32 786688, metadata !112, metadata !"jj", metadata !5, i32 345, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 345]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVaxpy", metadata !"ZVaxpy", metadata !"", i32 380, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double, double*)* @ZVaxpy, null, null, metadata !131, i32 386} ; [ DW_TAG_subprogram ] [line 380] [def] [scope 386] [ZVaxpy]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !17, metadata !18, metadata !8, metadata !8, metadata !18}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!132 = metadata !{i32 786689, metadata !128, metadata !"size", metadata !5, i32 16777597, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 381]
!133 = metadata !{i32 786689, metadata !128, metadata !"y", metadata !5, i32 33554814, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 382]
!134 = metadata !{i32 786689, metadata !128, metadata !"areal", metadata !5, i32 50332031, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 383]
!135 = metadata !{i32 786689, metadata !128, metadata !"aimag", metadata !5, i32 67109248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 384]
!136 = metadata !{i32 786689, metadata !128, metadata !"x", metadata !5, i32 83886465, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 385]
!137 = metadata !{i32 786688, metadata !128, metadata !"ximag", metadata !5, i32 387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 387]
!138 = metadata !{i32 786688, metadata !128, metadata !"xreal", metadata !5, i32 387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 387]
!139 = metadata !{i32 786688, metadata !128, metadata !"ii", metadata !5, i32 388, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 388]
!140 = metadata !{i32 786688, metadata !128, metadata !"jj", metadata !5, i32 388, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 388]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVscale", metadata !"ZVscale", metadata !"", i32 424, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double)* @ZVscale, null, null, metadata !144, i32 429} ; [ DW_TAG_subprogram ] [line 424] [def] [scope 429] [ZVscale]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{null, metadata !17, metadata !18, metadata !8, metadata !8}
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152}
!145 = metadata !{i32 786689, metadata !141, metadata !"size", metadata !5, i32 16777641, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 425]
!146 = metadata !{i32 786689, metadata !141, metadata !"y", metadata !5, i32 33554858, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 426]
!147 = metadata !{i32 786689, metadata !141, metadata !"areal", metadata !5, i32 50332075, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 427]
!148 = metadata !{i32 786689, metadata !141, metadata !"aimag", metadata !5, i32 67109292, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 428]
!149 = metadata !{i32 786688, metadata !141, metadata !"yimag", metadata !5, i32 430, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 430]
!150 = metadata !{i32 786688, metadata !141, metadata !"yreal", metadata !5, i32 430, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 430]
!151 = metadata !{i32 786688, metadata !141, metadata !"ii", metadata !5, i32 431, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 431]
!152 = metadata !{i32 786688, metadata !141, metadata !"jj", metadata !5, i32 431, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 431]
!153 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVfprintf", metadata !"ZVfprintf", metadata !"", i32 455, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, double*)* @ZVfprintf, null, null, metadata !213, i32 459} ; [ DW_TAG_subprogram ] [line 455] [def] [scope 459] [ZVfprintf]
!154 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{null, metadata !156, metadata !17, metadata !18}
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!157 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!158 = metadata !{i32 786451, metadata !159, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!159 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!160 = metadata !{metadata !161, metadata !162, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !183, metadata !184, metadata !185, metadata !186, metadata !189, metadata !191, metadata !193, metadata !197, metadata !199, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !208, metadata !209}
!161 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!162 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!164 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!165 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!166 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!167 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!168 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!169 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!170 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!171 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!172 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!173 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!174 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !163} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!175 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !176} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!177 = metadata !{i32 786451, metadata !159, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !178, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180, metadata !182}
!179 = metadata !{i32 786445, metadata !159, metadata !177, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!180 = metadata !{i32 786445, metadata !159, metadata !177, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!181 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!182 = metadata !{i32 786445, metadata !159, metadata !177, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!183 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !181} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!184 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!185 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !17} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!186 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !187} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!187 = metadata !{i32 786454, metadata !159, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!188 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!189 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !190} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!190 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!191 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !192} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!192 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!193 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !194} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !164, metadata !195, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!195 = metadata !{metadata !196}
!196 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!197 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !198} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!199 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !200} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!200 = metadata !{i32 786454, metadata !159, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!201 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !198} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!202 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !198} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!203 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !198} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!204 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !198} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!205 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !206} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!206 = metadata !{i32 786454, metadata !159, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!207 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!208 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !17} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!209 = metadata !{i32 786445, metadata !159, metadata !158, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !210} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !164, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218}
!214 = metadata !{i32 786689, metadata !153, metadata !"fp", metadata !5, i32 16777672, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 456]
!215 = metadata !{i32 786689, metadata !153, metadata !"size", metadata !5, i32 33554889, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 457]
!216 = metadata !{i32 786689, metadata !153, metadata !"y", metadata !5, i32 50332106, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 458]
!217 = metadata !{i32 786688, metadata !153, metadata !"ii", metadata !5, i32 460, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 460]
!218 = metadata !{i32 786688, metadata !153, metadata !"jj", metadata !5, i32 460, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 460]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVminabs", metadata !"ZVminabs", metadata !"", i32 488, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*)* @ZVminabs, null, null, metadata !222, i32 491} ; [ DW_TAG_subprogram ] [line 488] [def] [scope 491] [ZVminabs]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{metadata !8, metadata !17, metadata !18}
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231}
!223 = metadata !{i32 786689, metadata !219, metadata !"size", metadata !5, i32 16777705, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 489]
!224 = metadata !{i32 786689, metadata !219, metadata !"x", metadata !5, i32 33554922, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 490]
!225 = metadata !{i32 786688, metadata !219, metadata !"abs", metadata !5, i32 492, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abs] [line 492]
!226 = metadata !{i32 786688, metadata !219, metadata !"imag", metadata !5, i32 492, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 492]
!227 = metadata !{i32 786688, metadata !219, metadata !"minabs", metadata !5, i32 492, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minabs] [line 492]
!228 = metadata !{i32 786688, metadata !219, metadata !"real", metadata !5, i32 492, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 492]
!229 = metadata !{i32 786688, metadata !219, metadata !"val", metadata !5, i32 492, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 492]
!230 = metadata !{i32 786688, metadata !219, metadata !"ii", metadata !5, i32 493, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 493]
!231 = metadata !{i32 786688, metadata !219, metadata !"jj", metadata !5, i32 493, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 493]
!232 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVmaxabs", metadata !"ZVmaxabs", metadata !"", i32 541, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (i32, double*)* @ZVmaxabs, null, null, metadata !233, i32 544} ; [ DW_TAG_subprogram ] [line 541] [def] [scope 544] [ZVmaxabs]
!233 = metadata !{metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242}
!234 = metadata !{i32 786689, metadata !232, metadata !"size", metadata !5, i32 16777758, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 542]
!235 = metadata !{i32 786689, metadata !232, metadata !"x", metadata !5, i32 33554975, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 543]
!236 = metadata !{i32 786688, metadata !232, metadata !"abs", metadata !5, i32 545, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abs] [line 545]
!237 = metadata !{i32 786688, metadata !232, metadata !"imag", metadata !5, i32 545, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 545]
!238 = metadata !{i32 786688, metadata !232, metadata !"maxabs", metadata !5, i32 545, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxabs] [line 545]
!239 = metadata !{i32 786688, metadata !232, metadata !"real", metadata !5, i32 545, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 545]
!240 = metadata !{i32 786688, metadata !232, metadata !"val", metadata !5, i32 545, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 545]
!241 = metadata !{i32 786688, metadata !232, metadata !"ii", metadata !5, i32 546, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 546]
!242 = metadata !{i32 786688, metadata !232, metadata !"jj", metadata !5, i32 546, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 546]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVcopy", metadata !"ZVcopy", metadata !"", i32 594, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @ZVcopy, null, null, metadata !246, i32 598} ; [ DW_TAG_subprogram ] [line 594] [def] [scope 598] [ZVcopy]
!244 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!245 = metadata !{null, metadata !17, metadata !18, metadata !18}
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251}
!247 = metadata !{i32 786689, metadata !243, metadata !"size", metadata !5, i32 16777811, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 595]
!248 = metadata !{i32 786689, metadata !243, metadata !"y", metadata !5, i32 33555028, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 596]
!249 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !5, i32 50332245, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 597]
!250 = metadata !{i32 786688, metadata !243, metadata !"ii", metadata !5, i32 599, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 599]
!251 = metadata !{i32 786688, metadata !243, metadata !"jj", metadata !5, i32 599, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 599]
!252 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVsub", metadata !"ZVsub", metadata !"", i32 622, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*)* @ZVsub, null, null, metadata !253, i32 626} ; [ DW_TAG_subprogram ] [line 622] [def] [scope 626] [ZVsub]
!253 = metadata !{metadata !254, metadata !255, metadata !256, metadata !257, metadata !258}
!254 = metadata !{i32 786689, metadata !252, metadata !"size", metadata !5, i32 16777839, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 623]
!255 = metadata !{i32 786689, metadata !252, metadata !"y", metadata !5, i32 33555056, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 624]
!256 = metadata !{i32 786689, metadata !252, metadata !"x", metadata !5, i32 50332273, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 625]
!257 = metadata !{i32 786688, metadata !252, metadata !"ii", metadata !5, i32 627, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 627]
!258 = metadata !{i32 786688, metadata !252, metadata !"jj", metadata !5, i32 627, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 627]
!259 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVaxpy2", metadata !"ZVaxpy2", metadata !"", i32 653, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double, double, double*, double, double, double*)* @ZVaxpy2, null, null, metadata !262, i32 662} ; [ DW_TAG_subprogram ] [line 653] [def] [scope 662] [ZVaxpy2]
!260 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!261 = metadata !{null, metadata !17, metadata !18, metadata !8, metadata !8, metadata !18, metadata !8, metadata !8, metadata !18}
!262 = metadata !{metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276}
!263 = metadata !{i32 786689, metadata !259, metadata !"size", metadata !5, i32 16777870, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 654]
!264 = metadata !{i32 786689, metadata !259, metadata !"z", metadata !5, i32 33555087, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 655]
!265 = metadata !{i32 786689, metadata !259, metadata !"areal", metadata !5, i32 50332304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 656]
!266 = metadata !{i32 786689, metadata !259, metadata !"aimag", metadata !5, i32 67109521, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 657]
!267 = metadata !{i32 786689, metadata !259, metadata !"x", metadata !5, i32 83886738, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 658]
!268 = metadata !{i32 786689, metadata !259, metadata !"breal", metadata !5, i32 100663955, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [breal] [line 659]
!269 = metadata !{i32 786689, metadata !259, metadata !"bimag", metadata !5, i32 117441172, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bimag] [line 660]
!270 = metadata !{i32 786689, metadata !259, metadata !"y", metadata !5, i32 134218389, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 661]
!271 = metadata !{i32 786688, metadata !259, metadata !"ximag", metadata !5, i32 663, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 663]
!272 = metadata !{i32 786688, metadata !259, metadata !"xreal", metadata !5, i32 663, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 663]
!273 = metadata !{i32 786688, metadata !259, metadata !"yimag", metadata !5, i32 663, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 663]
!274 = metadata !{i32 786688, metadata !259, metadata !"yreal", metadata !5, i32 663, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 663]
!275 = metadata !{i32 786688, metadata !259, metadata !"ii", metadata !5, i32 664, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 664]
!276 = metadata !{i32 786688, metadata !259, metadata !"jj", metadata !5, i32 664, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 664]
!277 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVscale2", metadata !"ZVscale2", metadata !"", i32 705, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double, double, double, double, double, double, double, double)* @ZVscale2, null, null, metadata !280, i32 717} ; [ DW_TAG_subprogram ] [line 705] [def] [scope 717] [ZVscale2]
!278 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!280 = metadata !{metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297}
!281 = metadata !{i32 786689, metadata !277, metadata !"size", metadata !5, i32 16777922, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 706]
!282 = metadata !{i32 786689, metadata !277, metadata !"x", metadata !5, i32 33555139, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 707]
!283 = metadata !{i32 786689, metadata !277, metadata !"y", metadata !5, i32 50332356, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 708]
!284 = metadata !{i32 786689, metadata !277, metadata !"areal", metadata !5, i32 67109573, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [areal] [line 709]
!285 = metadata !{i32 786689, metadata !277, metadata !"aimag", metadata !5, i32 83886790, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aimag] [line 710]
!286 = metadata !{i32 786689, metadata !277, metadata !"breal", metadata !5, i32 100664007, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [breal] [line 711]
!287 = metadata !{i32 786689, metadata !277, metadata !"bimag", metadata !5, i32 117441224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bimag] [line 712]
!288 = metadata !{i32 786689, metadata !277, metadata !"creal", metadata !5, i32 134218441, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [creal] [line 713]
!289 = metadata !{i32 786689, metadata !277, metadata !"cimag", metadata !5, i32 150995658, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cimag] [line 714]
!290 = metadata !{i32 786689, metadata !277, metadata !"dreal", metadata !5, i32 167772875, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dreal] [line 715]
!291 = metadata !{i32 786689, metadata !277, metadata !"dimag", metadata !5, i32 184550092, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dimag] [line 716]
!292 = metadata !{i32 786688, metadata !277, metadata !"ximag", metadata !5, i32 718, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 718]
!293 = metadata !{i32 786688, metadata !277, metadata !"xreal", metadata !5, i32 718, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 718]
!294 = metadata !{i32 786688, metadata !277, metadata !"yimag", metadata !5, i32 718, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yimag] [line 718]
!295 = metadata !{i32 786688, metadata !277, metadata !"yreal", metadata !5, i32 718, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yreal] [line 718]
!296 = metadata !{i32 786688, metadata !277, metadata !"ii", metadata !5, i32 719, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 719]
!297 = metadata !{i32 786688, metadata !277, metadata !"jj", metadata !5, i32 719, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 719]
!298 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVgather", metadata !"ZVgather", metadata !"", i32 747, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, i32*)* @ZVgather, null, null, metadata !301, i32 752} ; [ DW_TAG_subprogram ] [line 747] [def] [scope 752] [ZVgather]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !96}
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !309, metadata !310}
!302 = metadata !{i32 786689, metadata !298, metadata !"size", metadata !5, i32 16777964, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 748]
!303 = metadata !{i32 786689, metadata !298, metadata !"y", metadata !5, i32 33555181, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 749]
!304 = metadata !{i32 786689, metadata !298, metadata !"x", metadata !5, i32 50332398, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 750]
!305 = metadata !{i32 786689, metadata !298, metadata !"index", metadata !5, i32 67109615, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 751]
!306 = metadata !{i32 786688, metadata !307, metadata !"i", metadata !5, i32 760, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 760]
!307 = metadata !{i32 786443, metadata !1, metadata !308, i32 759, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!308 = metadata !{i32 786443, metadata !1, metadata !298, i32 753, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!309 = metadata !{i32 786688, metadata !307, metadata !"j", metadata !5, i32 760, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 760]
!310 = metadata !{i32 786688, metadata !307, metadata !"k", metadata !5, i32 760, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 760]
!311 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVscatter", metadata !"ZVscatter", metadata !"", i32 779, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, i32*, double*)* @ZVscatter, null, null, metadata !314, i32 784} ; [ DW_TAG_subprogram ] [line 779] [def] [scope 784] [ZVscatter]
!312 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{null, metadata !17, metadata !18, metadata !96, metadata !18}
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !322, metadata !323}
!315 = metadata !{i32 786689, metadata !311, metadata !"size", metadata !5, i32 16777996, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 780]
!316 = metadata !{i32 786689, metadata !311, metadata !"y", metadata !5, i32 33555213, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 781]
!317 = metadata !{i32 786689, metadata !311, metadata !"index", metadata !5, i32 50332430, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 782]
!318 = metadata !{i32 786689, metadata !311, metadata !"x", metadata !5, i32 67109647, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 783]
!319 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !5, i32 792, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 792]
!320 = metadata !{i32 786443, metadata !1, metadata !321, i32 791, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!321 = metadata !{i32 786443, metadata !1, metadata !311, i32 785, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!322 = metadata !{i32 786688, metadata !320, metadata !"j", metadata !5, i32 792, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 792]
!323 = metadata !{i32 786688, metadata !320, metadata !"k", metadata !5, i32 792, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 792]
!324 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU33", metadata !"ZVdotU33", metadata !"", i32 813, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*, double*)* @ZVdotU33, null, null, metadata !327, i32 822} ; [ DW_TAG_subprogram ] [line 813] [def] [scope 822] [ZVdotU33]
!325 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!326 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!327 = metadata !{metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368}
!328 = metadata !{i32 786689, metadata !324, metadata !"n", metadata !5, i32 16778030, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 814]
!329 = metadata !{i32 786689, metadata !324, metadata !"y0", metadata !5, i32 33555247, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 815]
!330 = metadata !{i32 786689, metadata !324, metadata !"y1", metadata !5, i32 50332464, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 816]
!331 = metadata !{i32 786689, metadata !324, metadata !"y2", metadata !5, i32 67109681, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 817]
!332 = metadata !{i32 786689, metadata !324, metadata !"x0", metadata !5, i32 83886898, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 818]
!333 = metadata !{i32 786689, metadata !324, metadata !"x1", metadata !5, i32 100664115, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 819]
!334 = metadata !{i32 786689, metadata !324, metadata !"x2", metadata !5, i32 117441332, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 820]
!335 = metadata !{i32 786689, metadata !324, metadata !"sums", metadata !5, i32 134218549, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 821]
!336 = metadata !{i32 786688, metadata !324, metadata !"i00", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 823]
!337 = metadata !{i32 786688, metadata !324, metadata !"i01", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 823]
!338 = metadata !{i32 786688, metadata !324, metadata !"i02", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 823]
!339 = metadata !{i32 786688, metadata !324, metadata !"i10", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 823]
!340 = metadata !{i32 786688, metadata !324, metadata !"i11", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 823]
!341 = metadata !{i32 786688, metadata !324, metadata !"i12", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i12] [line 823]
!342 = metadata !{i32 786688, metadata !324, metadata !"i20", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 823]
!343 = metadata !{i32 786688, metadata !324, metadata !"i21", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i21] [line 823]
!344 = metadata !{i32 786688, metadata !324, metadata !"i22", metadata !5, i32 823, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i22] [line 823]
!345 = metadata !{i32 786688, metadata !324, metadata !"r00", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 824]
!346 = metadata !{i32 786688, metadata !324, metadata !"r01", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 824]
!347 = metadata !{i32 786688, metadata !324, metadata !"r02", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 824]
!348 = metadata !{i32 786688, metadata !324, metadata !"r10", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 824]
!349 = metadata !{i32 786688, metadata !324, metadata !"r11", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 824]
!350 = metadata !{i32 786688, metadata !324, metadata !"r12", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r12] [line 824]
!351 = metadata !{i32 786688, metadata !324, metadata !"r20", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 824]
!352 = metadata !{i32 786688, metadata !324, metadata !"r21", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r21] [line 824]
!353 = metadata !{i32 786688, metadata !324, metadata !"r22", metadata !5, i32 824, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r22] [line 824]
!354 = metadata !{i32 786688, metadata !324, metadata !"xi0", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 825]
!355 = metadata !{i32 786688, metadata !324, metadata !"xi1", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 825]
!356 = metadata !{i32 786688, metadata !324, metadata !"xi2", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 825]
!357 = metadata !{i32 786688, metadata !324, metadata !"xr0", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 825]
!358 = metadata !{i32 786688, metadata !324, metadata !"xr1", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 825]
!359 = metadata !{i32 786688, metadata !324, metadata !"xr2", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 825]
!360 = metadata !{i32 786688, metadata !324, metadata !"yi0", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 825]
!361 = metadata !{i32 786688, metadata !324, metadata !"yi1", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 825]
!362 = metadata !{i32 786688, metadata !324, metadata !"yi2", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 825]
!363 = metadata !{i32 786688, metadata !324, metadata !"yr0", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 825]
!364 = metadata !{i32 786688, metadata !324, metadata !"yr1", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 825]
!365 = metadata !{i32 786688, metadata !324, metadata !"yr2", metadata !5, i32 825, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 825]
!366 = metadata !{i32 786688, metadata !324, metadata !"ii", metadata !5, i32 826, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 826]
!367 = metadata !{i32 786688, metadata !324, metadata !"iloc", metadata !5, i32 826, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 826]
!368 = metadata !{i32 786688, metadata !324, metadata !"rloc", metadata !5, i32 826, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 826]
!369 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU32", metadata !"ZVdotU32", metadata !"", i32 870, metadata !370, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @ZVdotU32, null, null, metadata !372, i32 878} ; [ DW_TAG_subprogram ] [line 870] [def] [scope 878] [ZVdotU32]
!370 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!371 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!372 = metadata !{metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404}
!373 = metadata !{i32 786689, metadata !369, metadata !"n", metadata !5, i32 16778087, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 871]
!374 = metadata !{i32 786689, metadata !369, metadata !"y0", metadata !5, i32 33555304, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 872]
!375 = metadata !{i32 786689, metadata !369, metadata !"y1", metadata !5, i32 50332521, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 873]
!376 = metadata !{i32 786689, metadata !369, metadata !"y2", metadata !5, i32 67109738, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 874]
!377 = metadata !{i32 786689, metadata !369, metadata !"x0", metadata !5, i32 83886955, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 875]
!378 = metadata !{i32 786689, metadata !369, metadata !"x1", metadata !5, i32 100664172, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 876]
!379 = metadata !{i32 786689, metadata !369, metadata !"sums", metadata !5, i32 117441389, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 877]
!380 = metadata !{i32 786688, metadata !369, metadata !"i00", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 879]
!381 = metadata !{i32 786688, metadata !369, metadata !"i01", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 879]
!382 = metadata !{i32 786688, metadata !369, metadata !"i10", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 879]
!383 = metadata !{i32 786688, metadata !369, metadata !"i11", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 879]
!384 = metadata !{i32 786688, metadata !369, metadata !"i20", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 879]
!385 = metadata !{i32 786688, metadata !369, metadata !"i21", metadata !5, i32 879, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i21] [line 879]
!386 = metadata !{i32 786688, metadata !369, metadata !"r00", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 880]
!387 = metadata !{i32 786688, metadata !369, metadata !"r01", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 880]
!388 = metadata !{i32 786688, metadata !369, metadata !"r10", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 880]
!389 = metadata !{i32 786688, metadata !369, metadata !"r11", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 880]
!390 = metadata !{i32 786688, metadata !369, metadata !"r20", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 880]
!391 = metadata !{i32 786688, metadata !369, metadata !"r21", metadata !5, i32 880, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r21] [line 880]
!392 = metadata !{i32 786688, metadata !369, metadata !"xi0", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 881]
!393 = metadata !{i32 786688, metadata !369, metadata !"xi1", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 881]
!394 = metadata !{i32 786688, metadata !369, metadata !"xr0", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 881]
!395 = metadata !{i32 786688, metadata !369, metadata !"xr1", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 881]
!396 = metadata !{i32 786688, metadata !369, metadata !"yi0", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 881]
!397 = metadata !{i32 786688, metadata !369, metadata !"yi1", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 881]
!398 = metadata !{i32 786688, metadata !369, metadata !"yi2", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 881]
!399 = metadata !{i32 786688, metadata !369, metadata !"yr0", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 881]
!400 = metadata !{i32 786688, metadata !369, metadata !"yr1", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 881]
!401 = metadata !{i32 786688, metadata !369, metadata !"yr2", metadata !5, i32 881, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 881]
!402 = metadata !{i32 786688, metadata !369, metadata !"ii", metadata !5, i32 882, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 882]
!403 = metadata !{i32 786688, metadata !369, metadata !"iloc", metadata !5, i32 882, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 882]
!404 = metadata !{i32 786688, metadata !369, metadata !"rloc", metadata !5, i32 882, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 882]
!405 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU31", metadata !"ZVdotU31", metadata !"", i32 919, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotU31, null, null, metadata !408, i32 926} ; [ DW_TAG_subprogram ] [line 919] [def] [scope 926] [ZVdotU31]
!406 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!407 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !18, metadata !18, metadata !18}
!408 = metadata !{metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431}
!409 = metadata !{i32 786689, metadata !405, metadata !"n", metadata !5, i32 16778136, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 920]
!410 = metadata !{i32 786689, metadata !405, metadata !"y0", metadata !5, i32 33555353, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 921]
!411 = metadata !{i32 786689, metadata !405, metadata !"y1", metadata !5, i32 50332570, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 922]
!412 = metadata !{i32 786689, metadata !405, metadata !"y2", metadata !5, i32 67109787, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 923]
!413 = metadata !{i32 786689, metadata !405, metadata !"x0", metadata !5, i32 83887004, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 924]
!414 = metadata !{i32 786689, metadata !405, metadata !"sums", metadata !5, i32 100664221, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 925]
!415 = metadata !{i32 786688, metadata !405, metadata !"i00", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 927]
!416 = metadata !{i32 786688, metadata !405, metadata !"i10", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 927]
!417 = metadata !{i32 786688, metadata !405, metadata !"i20", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 927]
!418 = metadata !{i32 786688, metadata !405, metadata !"r00", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 927]
!419 = metadata !{i32 786688, metadata !405, metadata !"r10", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 927]
!420 = metadata !{i32 786688, metadata !405, metadata !"r20", metadata !5, i32 927, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 927]
!421 = metadata !{i32 786688, metadata !405, metadata !"xi0", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 928]
!422 = metadata !{i32 786688, metadata !405, metadata !"xr0", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 928]
!423 = metadata !{i32 786688, metadata !405, metadata !"yi0", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 928]
!424 = metadata !{i32 786688, metadata !405, metadata !"yi1", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 928]
!425 = metadata !{i32 786688, metadata !405, metadata !"yi2", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 928]
!426 = metadata !{i32 786688, metadata !405, metadata !"yr0", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 928]
!427 = metadata !{i32 786688, metadata !405, metadata !"yr1", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 928]
!428 = metadata !{i32 786688, metadata !405, metadata !"yr2", metadata !5, i32 928, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 928]
!429 = metadata !{i32 786688, metadata !405, metadata !"ii", metadata !5, i32 929, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 929]
!430 = metadata !{i32 786688, metadata !405, metadata !"iloc", metadata !5, i32 929, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 929]
!431 = metadata !{i32 786688, metadata !405, metadata !"rloc", metadata !5, i32 929, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 929]
!432 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU23", metadata !"ZVdotU23", metadata !"", i32 958, metadata !370, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @ZVdotU23, null, null, metadata !433, i32 966} ; [ DW_TAG_subprogram ] [line 958] [def] [scope 966] [ZVdotU23]
!433 = metadata !{metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465}
!434 = metadata !{i32 786689, metadata !432, metadata !"n", metadata !5, i32 16778175, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 959]
!435 = metadata !{i32 786689, metadata !432, metadata !"y0", metadata !5, i32 33555392, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 960]
!436 = metadata !{i32 786689, metadata !432, metadata !"y1", metadata !5, i32 50332609, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 961]
!437 = metadata !{i32 786689, metadata !432, metadata !"x0", metadata !5, i32 67109826, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 962]
!438 = metadata !{i32 786689, metadata !432, metadata !"x1", metadata !5, i32 83887043, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 963]
!439 = metadata !{i32 786689, metadata !432, metadata !"x2", metadata !5, i32 100664260, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 964]
!440 = metadata !{i32 786689, metadata !432, metadata !"sums", metadata !5, i32 117441477, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 965]
!441 = metadata !{i32 786688, metadata !432, metadata !"i00", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 967]
!442 = metadata !{i32 786688, metadata !432, metadata !"i01", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 967]
!443 = metadata !{i32 786688, metadata !432, metadata !"i02", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 967]
!444 = metadata !{i32 786688, metadata !432, metadata !"i10", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 967]
!445 = metadata !{i32 786688, metadata !432, metadata !"i11", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 967]
!446 = metadata !{i32 786688, metadata !432, metadata !"i12", metadata !5, i32 967, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i12] [line 967]
!447 = metadata !{i32 786688, metadata !432, metadata !"r00", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 968]
!448 = metadata !{i32 786688, metadata !432, metadata !"r01", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 968]
!449 = metadata !{i32 786688, metadata !432, metadata !"r02", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 968]
!450 = metadata !{i32 786688, metadata !432, metadata !"r10", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 968]
!451 = metadata !{i32 786688, metadata !432, metadata !"r11", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 968]
!452 = metadata !{i32 786688, metadata !432, metadata !"r12", metadata !5, i32 968, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r12] [line 968]
!453 = metadata !{i32 786688, metadata !432, metadata !"xi0", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 969]
!454 = metadata !{i32 786688, metadata !432, metadata !"xi1", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 969]
!455 = metadata !{i32 786688, metadata !432, metadata !"xi2", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 969]
!456 = metadata !{i32 786688, metadata !432, metadata !"xr0", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 969]
!457 = metadata !{i32 786688, metadata !432, metadata !"xr1", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 969]
!458 = metadata !{i32 786688, metadata !432, metadata !"xr2", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 969]
!459 = metadata !{i32 786688, metadata !432, metadata !"yi0", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 969]
!460 = metadata !{i32 786688, metadata !432, metadata !"yi1", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 969]
!461 = metadata !{i32 786688, metadata !432, metadata !"yr0", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 969]
!462 = metadata !{i32 786688, metadata !432, metadata !"yr1", metadata !5, i32 969, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 969]
!463 = metadata !{i32 786688, metadata !432, metadata !"ii", metadata !5, i32 970, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 970]
!464 = metadata !{i32 786688, metadata !432, metadata !"iloc", metadata !5, i32 970, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 970]
!465 = metadata !{i32 786688, metadata !432, metadata !"rloc", metadata !5, i32 970, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 970]
!466 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU22", metadata !"ZVdotU22", metadata !"", i32 1007, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotU22, null, null, metadata !467, i32 1014} ; [ DW_TAG_subprogram ] [line 1007] [def] [scope 1014] [ZVdotU22]
!467 = metadata !{metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492}
!468 = metadata !{i32 786689, metadata !466, metadata !"n", metadata !5, i32 16778224, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1008]
!469 = metadata !{i32 786689, metadata !466, metadata !"y0", metadata !5, i32 33555441, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1009]
!470 = metadata !{i32 786689, metadata !466, metadata !"y1", metadata !5, i32 50332658, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1010]
!471 = metadata !{i32 786689, metadata !466, metadata !"x0", metadata !5, i32 67109875, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1011]
!472 = metadata !{i32 786689, metadata !466, metadata !"x1", metadata !5, i32 83887092, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1012]
!473 = metadata !{i32 786689, metadata !466, metadata !"sums", metadata !5, i32 100664309, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1013]
!474 = metadata !{i32 786688, metadata !466, metadata !"i00", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1015]
!475 = metadata !{i32 786688, metadata !466, metadata !"i01", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1015]
!476 = metadata !{i32 786688, metadata !466, metadata !"i10", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1015]
!477 = metadata !{i32 786688, metadata !466, metadata !"i11", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 1015]
!478 = metadata !{i32 786688, metadata !466, metadata !"r00", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1015]
!479 = metadata !{i32 786688, metadata !466, metadata !"r01", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1015]
!480 = metadata !{i32 786688, metadata !466, metadata !"r10", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1015]
!481 = metadata !{i32 786688, metadata !466, metadata !"r11", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 1015]
!482 = metadata !{i32 786688, metadata !466, metadata !"xi0", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1016]
!483 = metadata !{i32 786688, metadata !466, metadata !"xi1", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1016]
!484 = metadata !{i32 786688, metadata !466, metadata !"xr0", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1016]
!485 = metadata !{i32 786688, metadata !466, metadata !"xr1", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1016]
!486 = metadata !{i32 786688, metadata !466, metadata !"yi0", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1016]
!487 = metadata !{i32 786688, metadata !466, metadata !"yi1", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1016]
!488 = metadata !{i32 786688, metadata !466, metadata !"yr0", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1016]
!489 = metadata !{i32 786688, metadata !466, metadata !"yr1", metadata !5, i32 1016, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1016]
!490 = metadata !{i32 786688, metadata !466, metadata !"ii", metadata !5, i32 1017, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1017]
!491 = metadata !{i32 786688, metadata !466, metadata !"iloc", metadata !5, i32 1017, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1017]
!492 = metadata !{i32 786688, metadata !466, metadata !"rloc", metadata !5, i32 1017, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1017]
!493 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU21", metadata !"ZVdotU21", metadata !"", i32 1048, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotU21, null, null, metadata !494, i32 1054} ; [ DW_TAG_subprogram ] [line 1048] [def] [scope 1054] [ZVdotU21]
!494 = metadata !{metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512}
!495 = metadata !{i32 786689, metadata !493, metadata !"n", metadata !5, i32 16778265, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1049]
!496 = metadata !{i32 786689, metadata !493, metadata !"y0", metadata !5, i32 33555482, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1050]
!497 = metadata !{i32 786689, metadata !493, metadata !"y1", metadata !5, i32 50332699, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1051]
!498 = metadata !{i32 786689, metadata !493, metadata !"x0", metadata !5, i32 67109916, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1052]
!499 = metadata !{i32 786689, metadata !493, metadata !"sums", metadata !5, i32 83887133, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1053]
!500 = metadata !{i32 786688, metadata !493, metadata !"i00", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1055]
!501 = metadata !{i32 786688, metadata !493, metadata !"i10", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1055]
!502 = metadata !{i32 786688, metadata !493, metadata !"r00", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1055]
!503 = metadata !{i32 786688, metadata !493, metadata !"r10", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1055]
!504 = metadata !{i32 786688, metadata !493, metadata !"xi0", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1055]
!505 = metadata !{i32 786688, metadata !493, metadata !"xr0", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1055]
!506 = metadata !{i32 786688, metadata !493, metadata !"yi0", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1055]
!507 = metadata !{i32 786688, metadata !493, metadata !"yi1", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1055]
!508 = metadata !{i32 786688, metadata !493, metadata !"yr0", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1055]
!509 = metadata !{i32 786688, metadata !493, metadata !"yr1", metadata !5, i32 1055, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1055]
!510 = metadata !{i32 786688, metadata !493, metadata !"ii", metadata !5, i32 1056, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1056]
!511 = metadata !{i32 786688, metadata !493, metadata !"iloc", metadata !5, i32 1056, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1056]
!512 = metadata !{i32 786688, metadata !493, metadata !"rloc", metadata !5, i32 1056, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1056]
!513 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU13", metadata !"ZVdotU13", metadata !"", i32 1082, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotU13, null, null, metadata !514, i32 1089} ; [ DW_TAG_subprogram ] [line 1082] [def] [scope 1089] [ZVdotU13]
!514 = metadata !{metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537}
!515 = metadata !{i32 786689, metadata !513, metadata !"n", metadata !5, i32 16778299, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1083]
!516 = metadata !{i32 786689, metadata !513, metadata !"y0", metadata !5, i32 33555516, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1084]
!517 = metadata !{i32 786689, metadata !513, metadata !"x0", metadata !5, i32 50332733, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1085]
!518 = metadata !{i32 786689, metadata !513, metadata !"x1", metadata !5, i32 67109950, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1086]
!519 = metadata !{i32 786689, metadata !513, metadata !"x2", metadata !5, i32 83887167, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 1087]
!520 = metadata !{i32 786689, metadata !513, metadata !"sums", metadata !5, i32 100664384, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1088]
!521 = metadata !{i32 786688, metadata !513, metadata !"i00", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1090]
!522 = metadata !{i32 786688, metadata !513, metadata !"i01", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1090]
!523 = metadata !{i32 786688, metadata !513, metadata !"i02", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 1090]
!524 = metadata !{i32 786688, metadata !513, metadata !"r00", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1090]
!525 = metadata !{i32 786688, metadata !513, metadata !"r01", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1090]
!526 = metadata !{i32 786688, metadata !513, metadata !"r02", metadata !5, i32 1090, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 1090]
!527 = metadata !{i32 786688, metadata !513, metadata !"xi0", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1091]
!528 = metadata !{i32 786688, metadata !513, metadata !"xi1", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1091]
!529 = metadata !{i32 786688, metadata !513, metadata !"xi2", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 1091]
!530 = metadata !{i32 786688, metadata !513, metadata !"xr0", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1091]
!531 = metadata !{i32 786688, metadata !513, metadata !"xr1", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1091]
!532 = metadata !{i32 786688, metadata !513, metadata !"xr2", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 1091]
!533 = metadata !{i32 786688, metadata !513, metadata !"yi0", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1091]
!534 = metadata !{i32 786688, metadata !513, metadata !"yr0", metadata !5, i32 1091, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1091]
!535 = metadata !{i32 786688, metadata !513, metadata !"ii", metadata !5, i32 1092, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1092]
!536 = metadata !{i32 786688, metadata !513, metadata !"iloc", metadata !5, i32 1092, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1092]
!537 = metadata !{i32 786688, metadata !513, metadata !"rloc", metadata !5, i32 1092, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1092]
!538 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU12", metadata !"ZVdotU12", metadata !"", i32 1121, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotU12, null, null, metadata !539, i32 1127} ; [ DW_TAG_subprogram ] [line 1121] [def] [scope 1127] [ZVdotU12]
!539 = metadata !{metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557}
!540 = metadata !{i32 786689, metadata !538, metadata !"n", metadata !5, i32 16778338, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1122]
!541 = metadata !{i32 786689, metadata !538, metadata !"y0", metadata !5, i32 33555555, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1123]
!542 = metadata !{i32 786689, metadata !538, metadata !"x0", metadata !5, i32 50332772, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1124]
!543 = metadata !{i32 786689, metadata !538, metadata !"x1", metadata !5, i32 67109989, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1125]
!544 = metadata !{i32 786689, metadata !538, metadata !"sums", metadata !5, i32 83887206, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1126]
!545 = metadata !{i32 786688, metadata !538, metadata !"i00", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1128]
!546 = metadata !{i32 786688, metadata !538, metadata !"i01", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1128]
!547 = metadata !{i32 786688, metadata !538, metadata !"r00", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1128]
!548 = metadata !{i32 786688, metadata !538, metadata !"r01", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1128]
!549 = metadata !{i32 786688, metadata !538, metadata !"xi0", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1128]
!550 = metadata !{i32 786688, metadata !538, metadata !"xi1", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1128]
!551 = metadata !{i32 786688, metadata !538, metadata !"xr0", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1128]
!552 = metadata !{i32 786688, metadata !538, metadata !"xr1", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1128]
!553 = metadata !{i32 786688, metadata !538, metadata !"yi0", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1128]
!554 = metadata !{i32 786688, metadata !538, metadata !"yr0", metadata !5, i32 1128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1128]
!555 = metadata !{i32 786688, metadata !538, metadata !"ii", metadata !5, i32 1129, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1129]
!556 = metadata !{i32 786688, metadata !538, metadata !"iloc", metadata !5, i32 1129, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1129]
!557 = metadata !{i32 786688, metadata !538, metadata !"rloc", metadata !5, i32 1129, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1129]
!558 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotU11", metadata !"ZVdotU11", metadata !"", i32 1155, metadata !559, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*)* @ZVdotU11, null, null, metadata !561, i32 1160} ; [ DW_TAG_subprogram ] [line 1155] [def] [scope 1160] [ZVdotU11]
!559 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!560 = metadata !{null, metadata !17, metadata !18, metadata !18, metadata !18}
!561 = metadata !{metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574}
!562 = metadata !{i32 786689, metadata !558, metadata !"n", metadata !5, i32 16778372, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1156]
!563 = metadata !{i32 786689, metadata !558, metadata !"y0", metadata !5, i32 33555589, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1157]
!564 = metadata !{i32 786689, metadata !558, metadata !"x0", metadata !5, i32 50332806, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1158]
!565 = metadata !{i32 786689, metadata !558, metadata !"sums", metadata !5, i32 67110023, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1159]
!566 = metadata !{i32 786688, metadata !558, metadata !"i00", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1161]
!567 = metadata !{i32 786688, metadata !558, metadata !"r00", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1161]
!568 = metadata !{i32 786688, metadata !558, metadata !"xi0", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1161]
!569 = metadata !{i32 786688, metadata !558, metadata !"xr0", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1161]
!570 = metadata !{i32 786688, metadata !558, metadata !"yi0", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1161]
!571 = metadata !{i32 786688, metadata !558, metadata !"yr0", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1161]
!572 = metadata !{i32 786688, metadata !558, metadata !"ii", metadata !5, i32 1162, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1162]
!573 = metadata !{i32 786688, metadata !558, metadata !"iloc", metadata !5, i32 1162, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1162]
!574 = metadata !{i32 786688, metadata !558, metadata !"rloc", metadata !5, i32 1162, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1162]
!575 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC33", metadata !"ZVdotC33", metadata !"", i32 1185, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*, double*)* @ZVdotC33, null, null, metadata !576, i32 1194} ; [ DW_TAG_subprogram ] [line 1185] [def] [scope 1194] [ZVdotC33]
!576 = metadata !{metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617}
!577 = metadata !{i32 786689, metadata !575, metadata !"n", metadata !5, i32 16778402, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1186]
!578 = metadata !{i32 786689, metadata !575, metadata !"y0", metadata !5, i32 33555619, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1187]
!579 = metadata !{i32 786689, metadata !575, metadata !"y1", metadata !5, i32 50332836, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1188]
!580 = metadata !{i32 786689, metadata !575, metadata !"y2", metadata !5, i32 67110053, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 1189]
!581 = metadata !{i32 786689, metadata !575, metadata !"x0", metadata !5, i32 83887270, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1190]
!582 = metadata !{i32 786689, metadata !575, metadata !"x1", metadata !5, i32 100664487, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1191]
!583 = metadata !{i32 786689, metadata !575, metadata !"x2", metadata !5, i32 117441704, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 1192]
!584 = metadata !{i32 786689, metadata !575, metadata !"sums", metadata !5, i32 134218921, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1193]
!585 = metadata !{i32 786688, metadata !575, metadata !"i00", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1195]
!586 = metadata !{i32 786688, metadata !575, metadata !"i01", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1195]
!587 = metadata !{i32 786688, metadata !575, metadata !"i02", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 1195]
!588 = metadata !{i32 786688, metadata !575, metadata !"i10", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1195]
!589 = metadata !{i32 786688, metadata !575, metadata !"i11", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 1195]
!590 = metadata !{i32 786688, metadata !575, metadata !"i12", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i12] [line 1195]
!591 = metadata !{i32 786688, metadata !575, metadata !"i20", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 1195]
!592 = metadata !{i32 786688, metadata !575, metadata !"i21", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i21] [line 1195]
!593 = metadata !{i32 786688, metadata !575, metadata !"i22", metadata !5, i32 1195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i22] [line 1195]
!594 = metadata !{i32 786688, metadata !575, metadata !"r00", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1196]
!595 = metadata !{i32 786688, metadata !575, metadata !"r01", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1196]
!596 = metadata !{i32 786688, metadata !575, metadata !"r02", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 1196]
!597 = metadata !{i32 786688, metadata !575, metadata !"r10", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1196]
!598 = metadata !{i32 786688, metadata !575, metadata !"r11", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 1196]
!599 = metadata !{i32 786688, metadata !575, metadata !"r12", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r12] [line 1196]
!600 = metadata !{i32 786688, metadata !575, metadata !"r20", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 1196]
!601 = metadata !{i32 786688, metadata !575, metadata !"r21", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r21] [line 1196]
!602 = metadata !{i32 786688, metadata !575, metadata !"r22", metadata !5, i32 1196, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r22] [line 1196]
!603 = metadata !{i32 786688, metadata !575, metadata !"xi0", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1197]
!604 = metadata !{i32 786688, metadata !575, metadata !"xi1", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1197]
!605 = metadata !{i32 786688, metadata !575, metadata !"xi2", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 1197]
!606 = metadata !{i32 786688, metadata !575, metadata !"xr0", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1197]
!607 = metadata !{i32 786688, metadata !575, metadata !"xr1", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1197]
!608 = metadata !{i32 786688, metadata !575, metadata !"xr2", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 1197]
!609 = metadata !{i32 786688, metadata !575, metadata !"yi0", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1197]
!610 = metadata !{i32 786688, metadata !575, metadata !"yi1", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1197]
!611 = metadata !{i32 786688, metadata !575, metadata !"yi2", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 1197]
!612 = metadata !{i32 786688, metadata !575, metadata !"yr0", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1197]
!613 = metadata !{i32 786688, metadata !575, metadata !"yr1", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1197]
!614 = metadata !{i32 786688, metadata !575, metadata !"yr2", metadata !5, i32 1197, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 1197]
!615 = metadata !{i32 786688, metadata !575, metadata !"ii", metadata !5, i32 1198, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1198]
!616 = metadata !{i32 786688, metadata !575, metadata !"iloc", metadata !5, i32 1198, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1198]
!617 = metadata !{i32 786688, metadata !575, metadata !"rloc", metadata !5, i32 1198, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1198]
!618 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC32", metadata !"ZVdotC32", metadata !"", i32 1242, metadata !370, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @ZVdotC32, null, null, metadata !619, i32 1250} ; [ DW_TAG_subprogram ] [line 1242] [def] [scope 1250] [ZVdotC32]
!619 = metadata !{metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651}
!620 = metadata !{i32 786689, metadata !618, metadata !"n", metadata !5, i32 16778459, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1243]
!621 = metadata !{i32 786689, metadata !618, metadata !"y0", metadata !5, i32 33555676, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1244]
!622 = metadata !{i32 786689, metadata !618, metadata !"y1", metadata !5, i32 50332893, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1245]
!623 = metadata !{i32 786689, metadata !618, metadata !"y2", metadata !5, i32 67110110, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 1246]
!624 = metadata !{i32 786689, metadata !618, metadata !"x0", metadata !5, i32 83887327, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1247]
!625 = metadata !{i32 786689, metadata !618, metadata !"x1", metadata !5, i32 100664544, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1248]
!626 = metadata !{i32 786689, metadata !618, metadata !"sums", metadata !5, i32 117441761, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1249]
!627 = metadata !{i32 786688, metadata !618, metadata !"i00", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1251]
!628 = metadata !{i32 786688, metadata !618, metadata !"i01", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1251]
!629 = metadata !{i32 786688, metadata !618, metadata !"i10", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1251]
!630 = metadata !{i32 786688, metadata !618, metadata !"i11", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 1251]
!631 = metadata !{i32 786688, metadata !618, metadata !"i20", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 1251]
!632 = metadata !{i32 786688, metadata !618, metadata !"i21", metadata !5, i32 1251, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i21] [line 1251]
!633 = metadata !{i32 786688, metadata !618, metadata !"r00", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1252]
!634 = metadata !{i32 786688, metadata !618, metadata !"r01", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1252]
!635 = metadata !{i32 786688, metadata !618, metadata !"r10", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1252]
!636 = metadata !{i32 786688, metadata !618, metadata !"r11", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 1252]
!637 = metadata !{i32 786688, metadata !618, metadata !"r20", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 1252]
!638 = metadata !{i32 786688, metadata !618, metadata !"r21", metadata !5, i32 1252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r21] [line 1252]
!639 = metadata !{i32 786688, metadata !618, metadata !"xi0", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1253]
!640 = metadata !{i32 786688, metadata !618, metadata !"xi1", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1253]
!641 = metadata !{i32 786688, metadata !618, metadata !"xr0", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1253]
!642 = metadata !{i32 786688, metadata !618, metadata !"xr1", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1253]
!643 = metadata !{i32 786688, metadata !618, metadata !"yi0", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1253]
!644 = metadata !{i32 786688, metadata !618, metadata !"yi1", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1253]
!645 = metadata !{i32 786688, metadata !618, metadata !"yi2", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 1253]
!646 = metadata !{i32 786688, metadata !618, metadata !"yr0", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1253]
!647 = metadata !{i32 786688, metadata !618, metadata !"yr1", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1253]
!648 = metadata !{i32 786688, metadata !618, metadata !"yr2", metadata !5, i32 1253, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 1253]
!649 = metadata !{i32 786688, metadata !618, metadata !"ii", metadata !5, i32 1254, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1254]
!650 = metadata !{i32 786688, metadata !618, metadata !"iloc", metadata !5, i32 1254, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1254]
!651 = metadata !{i32 786688, metadata !618, metadata !"rloc", metadata !5, i32 1254, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1254]
!652 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC31", metadata !"ZVdotC31", metadata !"", i32 1291, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotC31, null, null, metadata !653, i32 1298} ; [ DW_TAG_subprogram ] [line 1291] [def] [scope 1298] [ZVdotC31]
!653 = metadata !{metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !675, metadata !676}
!654 = metadata !{i32 786689, metadata !652, metadata !"n", metadata !5, i32 16778508, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1292]
!655 = metadata !{i32 786689, metadata !652, metadata !"y0", metadata !5, i32 33555725, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1293]
!656 = metadata !{i32 786689, metadata !652, metadata !"y1", metadata !5, i32 50332942, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1294]
!657 = metadata !{i32 786689, metadata !652, metadata !"y2", metadata !5, i32 67110159, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 1295]
!658 = metadata !{i32 786689, metadata !652, metadata !"x0", metadata !5, i32 83887376, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1296]
!659 = metadata !{i32 786689, metadata !652, metadata !"sums", metadata !5, i32 100664593, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1297]
!660 = metadata !{i32 786688, metadata !652, metadata !"i00", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1299]
!661 = metadata !{i32 786688, metadata !652, metadata !"i10", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1299]
!662 = metadata !{i32 786688, metadata !652, metadata !"i20", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i20] [line 1299]
!663 = metadata !{i32 786688, metadata !652, metadata !"r00", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1299]
!664 = metadata !{i32 786688, metadata !652, metadata !"r10", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1299]
!665 = metadata !{i32 786688, metadata !652, metadata !"r20", metadata !5, i32 1299, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r20] [line 1299]
!666 = metadata !{i32 786688, metadata !652, metadata !"xi0", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1300]
!667 = metadata !{i32 786688, metadata !652, metadata !"xr0", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1300]
!668 = metadata !{i32 786688, metadata !652, metadata !"yi0", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1300]
!669 = metadata !{i32 786688, metadata !652, metadata !"yi1", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1300]
!670 = metadata !{i32 786688, metadata !652, metadata !"yi2", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi2] [line 1300]
!671 = metadata !{i32 786688, metadata !652, metadata !"yr0", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1300]
!672 = metadata !{i32 786688, metadata !652, metadata !"yr1", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1300]
!673 = metadata !{i32 786688, metadata !652, metadata !"yr2", metadata !5, i32 1300, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr2] [line 1300]
!674 = metadata !{i32 786688, metadata !652, metadata !"ii", metadata !5, i32 1301, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1301]
!675 = metadata !{i32 786688, metadata !652, metadata !"iloc", metadata !5, i32 1301, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1301]
!676 = metadata !{i32 786688, metadata !652, metadata !"rloc", metadata !5, i32 1301, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1301]
!677 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC23", metadata !"ZVdotC23", metadata !"", i32 1330, metadata !370, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*, double*)* @ZVdotC23, null, null, metadata !678, i32 1338} ; [ DW_TAG_subprogram ] [line 1330] [def] [scope 1338] [ZVdotC23]
!678 = metadata !{metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710}
!679 = metadata !{i32 786689, metadata !677, metadata !"n", metadata !5, i32 16778547, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1331]
!680 = metadata !{i32 786689, metadata !677, metadata !"y0", metadata !5, i32 33555764, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1332]
!681 = metadata !{i32 786689, metadata !677, metadata !"y1", metadata !5, i32 50332981, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1333]
!682 = metadata !{i32 786689, metadata !677, metadata !"x0", metadata !5, i32 67110198, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1334]
!683 = metadata !{i32 786689, metadata !677, metadata !"x1", metadata !5, i32 83887415, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1335]
!684 = metadata !{i32 786689, metadata !677, metadata !"x2", metadata !5, i32 100664632, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 1336]
!685 = metadata !{i32 786689, metadata !677, metadata !"sums", metadata !5, i32 117441849, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1337]
!686 = metadata !{i32 786688, metadata !677, metadata !"i00", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1339]
!687 = metadata !{i32 786688, metadata !677, metadata !"i01", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1339]
!688 = metadata !{i32 786688, metadata !677, metadata !"i02", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 1339]
!689 = metadata !{i32 786688, metadata !677, metadata !"i10", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1339]
!690 = metadata !{i32 786688, metadata !677, metadata !"i11", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 1339]
!691 = metadata !{i32 786688, metadata !677, metadata !"i12", metadata !5, i32 1339, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i12] [line 1339]
!692 = metadata !{i32 786688, metadata !677, metadata !"r00", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1340]
!693 = metadata !{i32 786688, metadata !677, metadata !"r01", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1340]
!694 = metadata !{i32 786688, metadata !677, metadata !"r02", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 1340]
!695 = metadata !{i32 786688, metadata !677, metadata !"r10", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1340]
!696 = metadata !{i32 786688, metadata !677, metadata !"r11", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 1340]
!697 = metadata !{i32 786688, metadata !677, metadata !"r12", metadata !5, i32 1340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r12] [line 1340]
!698 = metadata !{i32 786688, metadata !677, metadata !"xi0", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1341]
!699 = metadata !{i32 786688, metadata !677, metadata !"xi1", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1341]
!700 = metadata !{i32 786688, metadata !677, metadata !"xi2", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 1341]
!701 = metadata !{i32 786688, metadata !677, metadata !"xr0", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1341]
!702 = metadata !{i32 786688, metadata !677, metadata !"xr1", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1341]
!703 = metadata !{i32 786688, metadata !677, metadata !"xr2", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 1341]
!704 = metadata !{i32 786688, metadata !677, metadata !"yi0", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1341]
!705 = metadata !{i32 786688, metadata !677, metadata !"yi1", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1341]
!706 = metadata !{i32 786688, metadata !677, metadata !"yr0", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1341]
!707 = metadata !{i32 786688, metadata !677, metadata !"yr1", metadata !5, i32 1341, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1341]
!708 = metadata !{i32 786688, metadata !677, metadata !"ii", metadata !5, i32 1342, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1342]
!709 = metadata !{i32 786688, metadata !677, metadata !"iloc", metadata !5, i32 1342, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1342]
!710 = metadata !{i32 786688, metadata !677, metadata !"rloc", metadata !5, i32 1342, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1342]
!711 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC22", metadata !"ZVdotC22", metadata !"", i32 1379, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotC22, null, null, metadata !712, i32 1386} ; [ DW_TAG_subprogram ] [line 1379] [def] [scope 1386] [ZVdotC22]
!712 = metadata !{metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737}
!713 = metadata !{i32 786689, metadata !711, metadata !"n", metadata !5, i32 16778596, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1380]
!714 = metadata !{i32 786689, metadata !711, metadata !"y0", metadata !5, i32 33555813, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1381]
!715 = metadata !{i32 786689, metadata !711, metadata !"y1", metadata !5, i32 50333030, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1382]
!716 = metadata !{i32 786689, metadata !711, metadata !"x0", metadata !5, i32 67110247, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1383]
!717 = metadata !{i32 786689, metadata !711, metadata !"x1", metadata !5, i32 83887464, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1384]
!718 = metadata !{i32 786689, metadata !711, metadata !"sums", metadata !5, i32 100664681, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1385]
!719 = metadata !{i32 786688, metadata !711, metadata !"i00", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1387]
!720 = metadata !{i32 786688, metadata !711, metadata !"i01", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1387]
!721 = metadata !{i32 786688, metadata !711, metadata !"i10", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1387]
!722 = metadata !{i32 786688, metadata !711, metadata !"i11", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i11] [line 1387]
!723 = metadata !{i32 786688, metadata !711, metadata !"r00", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1387]
!724 = metadata !{i32 786688, metadata !711, metadata !"r01", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1387]
!725 = metadata !{i32 786688, metadata !711, metadata !"r10", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1387]
!726 = metadata !{i32 786688, metadata !711, metadata !"r11", metadata !5, i32 1387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r11] [line 1387]
!727 = metadata !{i32 786688, metadata !711, metadata !"xi0", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1388]
!728 = metadata !{i32 786688, metadata !711, metadata !"xi1", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1388]
!729 = metadata !{i32 786688, metadata !711, metadata !"xr0", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1388]
!730 = metadata !{i32 786688, metadata !711, metadata !"xr1", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1388]
!731 = metadata !{i32 786688, metadata !711, metadata !"yi0", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1388]
!732 = metadata !{i32 786688, metadata !711, metadata !"yi1", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1388]
!733 = metadata !{i32 786688, metadata !711, metadata !"yr0", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1388]
!734 = metadata !{i32 786688, metadata !711, metadata !"yr1", metadata !5, i32 1388, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1388]
!735 = metadata !{i32 786688, metadata !711, metadata !"ii", metadata !5, i32 1389, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1389]
!736 = metadata !{i32 786688, metadata !711, metadata !"iloc", metadata !5, i32 1389, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1389]
!737 = metadata !{i32 786688, metadata !711, metadata !"rloc", metadata !5, i32 1389, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1389]
!738 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC21", metadata !"ZVdotC21", metadata !"", i32 1420, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotC21, null, null, metadata !739, i32 1426} ; [ DW_TAG_subprogram ] [line 1420] [def] [scope 1426] [ZVdotC21]
!739 = metadata !{metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757}
!740 = metadata !{i32 786689, metadata !738, metadata !"n", metadata !5, i32 16778637, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1421]
!741 = metadata !{i32 786689, metadata !738, metadata !"y0", metadata !5, i32 33555854, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1422]
!742 = metadata !{i32 786689, metadata !738, metadata !"y1", metadata !5, i32 50333071, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 1423]
!743 = metadata !{i32 786689, metadata !738, metadata !"x0", metadata !5, i32 67110288, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1424]
!744 = metadata !{i32 786689, metadata !738, metadata !"sums", metadata !5, i32 83887505, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1425]
!745 = metadata !{i32 786688, metadata !738, metadata !"i00", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1427]
!746 = metadata !{i32 786688, metadata !738, metadata !"i10", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i10] [line 1427]
!747 = metadata !{i32 786688, metadata !738, metadata !"r00", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1427]
!748 = metadata !{i32 786688, metadata !738, metadata !"r10", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r10] [line 1427]
!749 = metadata !{i32 786688, metadata !738, metadata !"xi0", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1427]
!750 = metadata !{i32 786688, metadata !738, metadata !"xr0", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1427]
!751 = metadata !{i32 786688, metadata !738, metadata !"yi0", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1427]
!752 = metadata !{i32 786688, metadata !738, metadata !"yi1", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi1] [line 1427]
!753 = metadata !{i32 786688, metadata !738, metadata !"yr0", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1427]
!754 = metadata !{i32 786688, metadata !738, metadata !"yr1", metadata !5, i32 1427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr1] [line 1427]
!755 = metadata !{i32 786688, metadata !738, metadata !"ii", metadata !5, i32 1428, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1428]
!756 = metadata !{i32 786688, metadata !738, metadata !"iloc", metadata !5, i32 1428, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1428]
!757 = metadata !{i32 786688, metadata !738, metadata !"rloc", metadata !5, i32 1428, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1428]
!758 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC13", metadata !"ZVdotC13", metadata !"", i32 1454, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*, double*)* @ZVdotC13, null, null, metadata !759, i32 1461} ; [ DW_TAG_subprogram ] [line 1454] [def] [scope 1461] [ZVdotC13]
!759 = metadata !{metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782}
!760 = metadata !{i32 786689, metadata !758, metadata !"n", metadata !5, i32 16778671, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1455]
!761 = metadata !{i32 786689, metadata !758, metadata !"y0", metadata !5, i32 33555888, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1456]
!762 = metadata !{i32 786689, metadata !758, metadata !"x0", metadata !5, i32 50333105, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1457]
!763 = metadata !{i32 786689, metadata !758, metadata !"x1", metadata !5, i32 67110322, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1458]
!764 = metadata !{i32 786689, metadata !758, metadata !"x2", metadata !5, i32 83887539, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x2] [line 1459]
!765 = metadata !{i32 786689, metadata !758, metadata !"sums", metadata !5, i32 100664756, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1460]
!766 = metadata !{i32 786688, metadata !758, metadata !"i00", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1462]
!767 = metadata !{i32 786688, metadata !758, metadata !"i01", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1462]
!768 = metadata !{i32 786688, metadata !758, metadata !"i02", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i02] [line 1462]
!769 = metadata !{i32 786688, metadata !758, metadata !"r00", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1462]
!770 = metadata !{i32 786688, metadata !758, metadata !"r01", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1462]
!771 = metadata !{i32 786688, metadata !758, metadata !"r02", metadata !5, i32 1462, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r02] [line 1462]
!772 = metadata !{i32 786688, metadata !758, metadata !"xi0", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1463]
!773 = metadata !{i32 786688, metadata !758, metadata !"xi1", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1463]
!774 = metadata !{i32 786688, metadata !758, metadata !"xi2", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi2] [line 1463]
!775 = metadata !{i32 786688, metadata !758, metadata !"xr0", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1463]
!776 = metadata !{i32 786688, metadata !758, metadata !"xr1", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1463]
!777 = metadata !{i32 786688, metadata !758, metadata !"xr2", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr2] [line 1463]
!778 = metadata !{i32 786688, metadata !758, metadata !"yi0", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1463]
!779 = metadata !{i32 786688, metadata !758, metadata !"yr0", metadata !5, i32 1463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1463]
!780 = metadata !{i32 786688, metadata !758, metadata !"ii", metadata !5, i32 1464, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1464]
!781 = metadata !{i32 786688, metadata !758, metadata !"iloc", metadata !5, i32 1464, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1464]
!782 = metadata !{i32 786688, metadata !758, metadata !"rloc", metadata !5, i32 1464, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1464]
!783 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC12", metadata !"ZVdotC12", metadata !"", i32 1493, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*, double*)* @ZVdotC12, null, null, metadata !784, i32 1499} ; [ DW_TAG_subprogram ] [line 1493] [def] [scope 1499] [ZVdotC12]
!784 = metadata !{metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802}
!785 = metadata !{i32 786689, metadata !783, metadata !"n", metadata !5, i32 16778710, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1494]
!786 = metadata !{i32 786689, metadata !783, metadata !"y0", metadata !5, i32 33555927, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1495]
!787 = metadata !{i32 786689, metadata !783, metadata !"x0", metadata !5, i32 50333144, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1496]
!788 = metadata !{i32 786689, metadata !783, metadata !"x1", metadata !5, i32 67110361, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x1] [line 1497]
!789 = metadata !{i32 786689, metadata !783, metadata !"sums", metadata !5, i32 83887578, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1498]
!790 = metadata !{i32 786688, metadata !783, metadata !"i00", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1500]
!791 = metadata !{i32 786688, metadata !783, metadata !"i01", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i01] [line 1500]
!792 = metadata !{i32 786688, metadata !783, metadata !"r00", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1500]
!793 = metadata !{i32 786688, metadata !783, metadata !"r01", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r01] [line 1500]
!794 = metadata !{i32 786688, metadata !783, metadata !"xi0", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1500]
!795 = metadata !{i32 786688, metadata !783, metadata !"xi1", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi1] [line 1500]
!796 = metadata !{i32 786688, metadata !783, metadata !"xr0", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1500]
!797 = metadata !{i32 786688, metadata !783, metadata !"xr1", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr1] [line 1500]
!798 = metadata !{i32 786688, metadata !783, metadata !"yi0", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1500]
!799 = metadata !{i32 786688, metadata !783, metadata !"yr0", metadata !5, i32 1500, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1500]
!800 = metadata !{i32 786688, metadata !783, metadata !"ii", metadata !5, i32 1501, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1501]
!801 = metadata !{i32 786688, metadata !783, metadata !"iloc", metadata !5, i32 1501, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1501]
!802 = metadata !{i32 786688, metadata !783, metadata !"rloc", metadata !5, i32 1501, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1501]
!803 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVdotC11", metadata !"ZVdotC11", metadata !"", i32 1527, metadata !559, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*, double*, double*)* @ZVdotC11, null, null, metadata !804, i32 1532} ; [ DW_TAG_subprogram ] [line 1527] [def] [scope 1532] [ZVdotC11]
!804 = metadata !{metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817}
!805 = metadata !{i32 786689, metadata !803, metadata !"n", metadata !5, i32 16778744, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1528]
!806 = metadata !{i32 786689, metadata !803, metadata !"y0", metadata !5, i32 33555961, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y0] [line 1529]
!807 = metadata !{i32 786689, metadata !803, metadata !"x0", metadata !5, i32 50333178, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x0] [line 1530]
!808 = metadata !{i32 786689, metadata !803, metadata !"sums", metadata !5, i32 67110395, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sums] [line 1531]
!809 = metadata !{i32 786688, metadata !803, metadata !"i00", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i00] [line 1533]
!810 = metadata !{i32 786688, metadata !803, metadata !"r00", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r00] [line 1533]
!811 = metadata !{i32 786688, metadata !803, metadata !"xi0", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi0] [line 1533]
!812 = metadata !{i32 786688, metadata !803, metadata !"xr0", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xr0] [line 1533]
!813 = metadata !{i32 786688, metadata !803, metadata !"yi0", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yi0] [line 1533]
!814 = metadata !{i32 786688, metadata !803, metadata !"yr0", metadata !5, i32 1533, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yr0] [line 1533]
!815 = metadata !{i32 786688, metadata !803, metadata !"ii", metadata !5, i32 1534, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1534]
!816 = metadata !{i32 786688, metadata !803, metadata !"iloc", metadata !5, i32 1534, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 1534]
!817 = metadata !{i32 786688, metadata !803, metadata !"rloc", metadata !5, i32 1534, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rloc] [line 1534]
!818 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZVzero", metadata !"ZVzero", metadata !"", i32 1559, metadata !819, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, double*)* @ZVzero, null, null, metadata !821, i32 1562} ; [ DW_TAG_subprogram ] [line 1559] [def] [scope 1562] [ZVzero]
!819 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!820 = metadata !{null, metadata !17, metadata !18}
!821 = metadata !{metadata !822, metadata !823, metadata !824, metadata !825}
!822 = metadata !{i32 786689, metadata !818, metadata !"size", metadata !5, i32 16778776, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1560]
!823 = metadata !{i32 786689, metadata !818, metadata !"y", metadata !5, i32 33555993, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1561]
!824 = metadata !{i32 786688, metadata !818, metadata !"ii", metadata !5, i32 1563, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1563]
!825 = metadata !{i32 786688, metadata !818, metadata !"jj", metadata !5, i32 1563, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1563]
!826 = metadata !{i32 15, i32 0, metadata !4, null}
!827 = metadata !{i32 16, i32 0, metadata !4, null}
!828 = metadata !{i32 20, i32 0, metadata !4, null}
!829 = metadata !{i32 21, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!831 = metadata !{i32 22, i32 0, metadata !830, null}
!832 = metadata !{i32 22, i32 0, metadata !4, null}
!833 = metadata !{i32 23, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!835 = metadata !{i32 24, i32 0, metadata !834, null}
!836 = metadata !{i32 24, i32 0, metadata !4, null}
!837 = metadata !{i32 25, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!839 = metadata !{i32 26, i32 0, metadata !838, null}
!840 = metadata !{i32 27, i32 0, metadata !838, null}
!841 = metadata !{i32 28, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!843 = metadata !{i32 29, i32 0, metadata !842, null}
!844 = metadata !{i32 31, i32 0, metadata !4, null}
!845 = metadata !{i32 47, i32 0, metadata !14, null}
!846 = metadata !{i32 48, i32 0, metadata !14, null}
!847 = metadata !{i32 49, i32 0, metadata !14, null}
!848 = metadata !{i32 50, i32 0, metadata !14, null}
!849 = metadata !{i32 53, i32 0, metadata !14, null}
!850 = metadata !{i32 56, i32 0, metadata !14, null}
!851 = metadata !{i32 57, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !1, metadata !14, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!853 = metadata !{i32 58, i32 0, metadata !852, null} ; [ DW_TAG_imported_module ]
!854 = metadata !{i32 59, i32 0, metadata !852, null}
!855 = metadata !{i32 60, i32 0, metadata !852, null}
!856 = metadata !{i32 61, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !14, i32 60, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!858 = metadata !{i32 62, i32 0, metadata !857, null}
!859 = metadata !{i32 63, i32 0, metadata !857, null}
!860 = metadata !{i32 65, i32 0, metadata !14, null}
!861 = metadata !{metadata !"double", metadata !862}
!862 = metadata !{metadata !"omnipotent char", metadata !863}
!863 = metadata !{metadata !"Simple C/C++ TBAA"}
!864 = metadata !{i32 66, i32 0, metadata !14, null}
!865 = metadata !{i32 68, i32 0, metadata !14, null}
!866 = metadata !{i32 90, i32 0, metadata !27, null}
!867 = metadata !{i32 91, i32 0, metadata !27, null}
!868 = metadata !{i32 92, i32 0, metadata !27, null}
!869 = metadata !{i32 93, i32 0, metadata !27, null}
!870 = metadata !{i32 94, i32 0, metadata !27, null}
!871 = metadata !{i32 95, i32 0, metadata !27, null}
!872 = metadata !{i32 96, i32 0, metadata !27, null}
!873 = metadata !{i32 97, i32 0, metadata !27, null}
!874 = metadata !{i32 98, i32 0, metadata !27, null}
!875 = metadata !{i32 99, i32 0, metadata !27, null}
!876 = metadata !{i32 100, i32 0, metadata !27, null}
!877 = metadata !{i32 101, i32 0, metadata !27, null}
!878 = metadata !{i32 102, i32 0, metadata !27, null}
!879 = metadata !{i32 103, i32 0, metadata !27, null}
!880 = metadata !{i32 104, i32 0, metadata !27, null}
!881 = metadata !{i32 105, i32 0, metadata !27, null}
!882 = metadata !{i32 107, i32 0, metadata !27, null}
!883 = metadata !{i32 113, i32 0, metadata !27, null}
!884 = metadata !{i32 114, i32 0, metadata !27, null}
!885 = metadata !{i32 120, i32 0, metadata !27, null}
!886 = metadata !{i32 128, i32 0, metadata !27, null}
!887 = metadata !{i32 129, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !27, i32 128, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!889 = metadata !{i32 130, i32 0, metadata !888, null}
!890 = metadata !{i32 131, i32 0, metadata !27, null}
!891 = metadata !{i32 132, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !27, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!893 = metadata !{i32 133, i32 0, metadata !892, null}
!894 = metadata !{i32 134, i32 0, metadata !27, null}
!895 = metadata !{i32 135, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !27, i32 134, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!897 = metadata !{i32 136, i32 0, metadata !896, null}
!898 = metadata !{i32 137, i32 0, metadata !27, null}
!899 = metadata !{i32 138, i32 0, metadata !900, null}
!900 = metadata !{i32 786443, metadata !1, metadata !27, i32 137, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!901 = metadata !{i32 139, i32 0, metadata !900, null}
!902 = metadata !{i32 140, i32 0, metadata !27, null}
!903 = metadata !{i32 141, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !27, i32 140, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!905 = metadata !{i32 142, i32 0, metadata !904, null}
!906 = metadata !{i32 143, i32 0, metadata !27, null}
!907 = metadata !{i32 144, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !27, i32 143, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!909 = metadata !{i32 145, i32 0, metadata !908, null}
!910 = metadata !{i32 146, i32 0, metadata !27, null}
!911 = metadata !{i32 147, i32 0, metadata !912, null}
!912 = metadata !{i32 786443, metadata !1, metadata !27, i32 146, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!913 = metadata !{i32 148, i32 0, metadata !912, null}
!914 = metadata !{i32 149, i32 0, metadata !27, null}
!915 = metadata !{i32 150, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !27, i32 149, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!917 = metadata !{i32 151, i32 0, metadata !916, null}
!918 = metadata !{i32 152, i32 0, metadata !27, null}
!919 = metadata !{i32 169, i32 0, metadata !51, null}
!920 = metadata !{i32 170, i32 0, metadata !51, null}
!921 = metadata !{i32 171, i32 0, metadata !51, null}
!922 = metadata !{i32 176, i32 0, metadata !51, null}
!923 = metadata !{i32 177, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !51, i32 176, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!925 = metadata !{metadata !"any pointer", metadata !862}
!926 = metadata !{i32 179, i32 0, metadata !924, null}
!927 = metadata !{i32 181, i32 0, metadata !51, null}
!928 = metadata !{i32 181, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !51, i32 181, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!930 = metadata !{i32 182, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !51, i32 182, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!932 = metadata !{i32 181, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !929, i32 181, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!934 = metadata !{i32 183, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !931, i32 182, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!936 = metadata !{i32 184, i32 0, metadata !935, null}
!937 = metadata !{i32 186, i32 0, metadata !51, null}
!938 = metadata !{i32 202, i32 0, metadata !61, null}
!939 = metadata !{i32 203, i32 0, metadata !61, null}
!940 = metadata !{i32 204, i32 0, metadata !61, null}
!941 = metadata !{i32 205, i32 0, metadata !61, null}
!942 = metadata !{i32 206, i32 0, metadata !61, null}
!943 = metadata !{i32 211, i32 0, metadata !61, null}
!944 = metadata !{i32 218, i32 0, metadata !945, null}
!945 = metadata !{i32 786443, metadata !1, metadata !61, i32 218, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!946 = metadata !{i32 213, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !61, i32 212, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!948 = metadata !{i32 215, i32 0, metadata !947, null}
!949 = metadata !{i32 219, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !945, i32 218, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!951 = metadata !{i32 220, i32 0, metadata !950, null}
!952 = metadata !{i32 221, i32 0, metadata !950, null}
!953 = metadata !{i32 222, i32 0, metadata !950, null}
!954 = metadata !{i32 223, i32 0, metadata !950, null}
!955 = metadata !{i32 224, i32 0, metadata !950, null}
!956 = metadata !{i32 226, i32 0, metadata !61, null}
!957 = metadata !{i32 227, i32 0, metadata !61, null}
!958 = metadata !{i32 229, i32 0, metadata !61, null}
!959 = metadata !{i32 245, i32 0, metadata !78, null}
!960 = metadata !{i32 246, i32 0, metadata !78, null}
!961 = metadata !{i32 247, i32 0, metadata !78, null}
!962 = metadata !{i32 248, i32 0, metadata !78, null}
!963 = metadata !{i32 249, i32 0, metadata !78, null}
!964 = metadata !{i32 254, i32 0, metadata !78, null}
!965 = metadata !{i32 261, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !78, i32 261, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!967 = metadata !{i32 256, i32 0, metadata !968, null}
!968 = metadata !{i32 786443, metadata !1, metadata !78, i32 255, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!969 = metadata !{i32 258, i32 0, metadata !968, null}
!970 = metadata !{i32 262, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !966, i32 261, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!972 = metadata !{i32 263, i32 0, metadata !971, null}
!973 = metadata !{i32 264, i32 0, metadata !971, null}
!974 = metadata !{i32 265, i32 0, metadata !971, null}
!975 = metadata !{i32 266, i32 0, metadata !971, null}
!976 = metadata !{i32 267, i32 0, metadata !971, null}
!977 = metadata !{i32 269, i32 0, metadata !78, null}
!978 = metadata !{i32 270, i32 0, metadata !78, null}
!979 = metadata !{i32 272, i32 0, metadata !78, null}
!980 = metadata !{i32 288, i32 0, metadata !93, null}
!981 = metadata !{i32 289, i32 0, metadata !93, null}
!982 = metadata !{i32 290, i32 0, metadata !93, null}
!983 = metadata !{i32 291, i32 0, metadata !93, null}
!984 = metadata !{i32 292, i32 0, metadata !93, null}
!985 = metadata !{i32 293, i32 0, metadata !93, null}
!986 = metadata !{i32 298, i32 0, metadata !93, null}
!987 = metadata !{i32 305, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !93, i32 305, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!989 = metadata !{i32 300, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !93, i32 299, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!991 = metadata !{i32 302, i32 0, metadata !990, null}
!992 = metadata !{i32 311, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !988, i32 305, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!994 = metadata !{i32 312, i32 0, metadata !993, null}
!995 = metadata !{i32 313, i32 0, metadata !993, null}
!996 = metadata !{metadata !"int", metadata !862}
!997 = metadata !{i32 314, i32 0, metadata !993, null}
!998 = metadata !{i32 315, i32 0, metadata !993, null}
!999 = metadata !{i32 316, i32 0, metadata !993, null}
!1000 = metadata !{i32 318, i32 0, metadata !93, null}
!1001 = metadata !{i32 319, i32 0, metadata !93, null}
!1002 = metadata !{i32 321, i32 0, metadata !93, null}
!1003 = metadata !{i32 337, i32 0, metadata !112, null}
!1004 = metadata !{i32 338, i32 0, metadata !112, null}
!1005 = metadata !{i32 339, i32 0, metadata !112, null}
!1006 = metadata !{i32 340, i32 0, metadata !112, null}
!1007 = metadata !{i32 341, i32 0, metadata !112, null}
!1008 = metadata !{i32 342, i32 0, metadata !112, null}
!1009 = metadata !{i32 347, i32 0, metadata !112, null}
!1010 = metadata !{i32 354, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !112, i32 354, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1012 = metadata !{i32 349, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !112, i32 348, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1014 = metadata !{i32 351, i32 0, metadata !1013, null}
!1015 = metadata !{i32 355, i32 0, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !1, metadata !1011, i32 354, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1017 = metadata !{i32 356, i32 0, metadata !1016, null}
!1018 = metadata !{i32 357, i32 0, metadata !1016, null}
!1019 = metadata !{i32 358, i32 0, metadata !1016, null}
!1020 = metadata !{i32 359, i32 0, metadata !1016, null}
!1021 = metadata !{i32 360, i32 0, metadata !1016, null}
!1022 = metadata !{i32 362, i32 0, metadata !112, null}
!1023 = metadata !{i32 363, i32 0, metadata !112, null}
!1024 = metadata !{i32 365, i32 0, metadata !112, null}
!1025 = metadata !{i32 381, i32 0, metadata !128, null}
!1026 = metadata !{i32 382, i32 0, metadata !128, null}
!1027 = metadata !{i32 383, i32 0, metadata !128, null}
!1028 = metadata !{i32 384, i32 0, metadata !128, null}
!1029 = metadata !{i32 385, i32 0, metadata !128, null}
!1030 = metadata !{i32 390, i32 0, metadata !128, null}
!1031 = metadata !{i32 395, i32 0, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !1, metadata !128, i32 395, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1033 = metadata !{i32 391, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !128, i32 390, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1035 = metadata !{i32 393, i32 0, metadata !1034, null}
!1036 = metadata !{i32 396, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1032, i32 395, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1038 = metadata !{i32 397, i32 0, metadata !1037, null}
!1039 = metadata !{i32 404, i32 0, metadata !1037, null}
!1040 = metadata !{i32 405, i32 0, metadata !1037, null}
!1041 = metadata !{i32 411, i32 0, metadata !128, null}
!1042 = metadata !{i32 425, i32 0, metadata !141, null}
!1043 = metadata !{i32 426, i32 0, metadata !141, null}
!1044 = metadata !{i32 427, i32 0, metadata !141, null}
!1045 = metadata !{i32 428, i32 0, metadata !141, null}
!1046 = metadata !{i32 433, i32 0, metadata !141, null}
!1047 = metadata !{i32 438, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !141, i32 438, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1049 = metadata !{i32 434, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !141, i32 433, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1051 = metadata !{i32 436, i32 0, metadata !1050, null}
!1052 = metadata !{i32 439, i32 0, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !1, metadata !1048, i32 438, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1054 = metadata !{i32 440, i32 0, metadata !1053, null}
!1055 = metadata !{i32 441, i32 0, metadata !1053, null}
!1056 = metadata !{i32 442, i32 0, metadata !1053, null}
!1057 = metadata !{i32 444, i32 0, metadata !141, null}
!1058 = metadata !{i32 456, i32 0, metadata !153, null}
!1059 = metadata !{i32 457, i32 0, metadata !153, null}
!1060 = metadata !{i32 458, i32 0, metadata !153, null}
!1061 = metadata !{i32 462, i32 0, metadata !153, null}
!1062 = metadata !{i32 467, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !153, i32 467, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1064 = metadata !{i32 463, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !153, i32 462, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1066 = metadata !{i32 465, i32 0, metadata !1065, null}
!1067 = metadata !{i32 473, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1063, i32 467, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1069 = metadata !{i32 476, i32 0, metadata !153, null}
!1070 = metadata !{i32 489, i32 0, metadata !219, null}
!1071 = metadata !{i32 490, i32 0, metadata !219, null}
!1072 = metadata !{i32 495, i32 0, metadata !219, null}
!1073 = metadata !{i32 501, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !219, i32 501, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1075 = metadata !{i32 496, i32 0, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !1, metadata !219, i32 495, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1077 = metadata !{i32 498, i32 0, metadata !1076, null}
!1078 = metadata !{i32 502, i32 0, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !1, metadata !1074, i32 501, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1080 = metadata !{i32 503, i32 0, metadata !1079, null}
!1081 = metadata !{i32 507, i32 0, metadata !1079, null}
!1082 = metadata !{i32 509, i32 0, metadata !1079, null}
!1083 = metadata !{i32 511, i32 0, metadata !1079, null}
!1084 = metadata !{i32 512, i32 0, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !1, metadata !1079, i32 511, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1086 = metadata !{i32 513, i32 0, metadata !1085, null}
!1087 = metadata !{i32 514, i32 0, metadata !1085, null}
!1088 = metadata !{i32 515, i32 0, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !1, metadata !1079, i32 514, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1090 = metadata !{i32 516, i32 0, metadata !1089, null}
!1091 = metadata !{i32 521, i32 0, metadata !1079, null}
!1092 = metadata !{i32 522, i32 0, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !1, metadata !1079, i32 521, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1094 = metadata !{i32 529, i32 0, metadata !219, null}
!1095 = metadata !{i32 542, i32 0, metadata !232, null}
!1096 = metadata !{i32 543, i32 0, metadata !232, null}
!1097 = metadata !{i32 548, i32 0, metadata !232, null}
!1098 = metadata !{i32 554, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !232, i32 554, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1100 = metadata !{i32 549, i32 0, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !1, metadata !232, i32 548, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1102 = metadata !{i32 551, i32 0, metadata !1101, null}
!1103 = metadata !{i32 555, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1099, i32 554, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1105 = metadata !{i32 556, i32 0, metadata !1104, null}
!1106 = metadata !{i32 560, i32 0, metadata !1104, null}
!1107 = metadata !{i32 562, i32 0, metadata !1104, null}
!1108 = metadata !{i32 564, i32 0, metadata !1104, null}
!1109 = metadata !{i32 565, i32 0, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !1, metadata !1104, i32 564, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1111 = metadata !{i32 566, i32 0, metadata !1110, null}
!1112 = metadata !{i32 567, i32 0, metadata !1110, null}
!1113 = metadata !{i32 568, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1, metadata !1104, i32 567, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1115 = metadata !{i32 569, i32 0, metadata !1114, null}
!1116 = metadata !{i32 574, i32 0, metadata !1104, null}
!1117 = metadata !{i32 575, i32 0, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !1, metadata !1104, i32 574, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1119 = metadata !{i32 582, i32 0, metadata !232, null}
!1120 = metadata !{i32 595, i32 0, metadata !243, null}
!1121 = metadata !{i32 596, i32 0, metadata !243, null}
!1122 = metadata !{i32 597, i32 0, metadata !243, null}
!1123 = metadata !{i32 601, i32 0, metadata !243, null}
!1124 = metadata !{i32 606, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !243, i32 606, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1126 = metadata !{i32 602, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !243, i32 601, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1128 = metadata !{i32 604, i32 0, metadata !1127, null}
!1129 = metadata !{i32 607, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1125, i32 606, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1131 = metadata !{i32 608, i32 0, metadata !1130, null}
!1132 = metadata !{i32 610, i32 0, metadata !243, null}
!1133 = metadata !{i32 623, i32 0, metadata !252, null}
!1134 = metadata !{i32 624, i32 0, metadata !252, null}
!1135 = metadata !{i32 625, i32 0, metadata !252, null}
!1136 = metadata !{i32 629, i32 0, metadata !252, null}
!1137 = metadata !{i32 634, i32 0, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !252, i32 634, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1139 = metadata !{i32 630, i32 0, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !1, metadata !252, i32 629, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1141 = metadata !{i32 632, i32 0, metadata !1140, null}
!1142 = metadata !{i32 635, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !1138, i32 634, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1144 = metadata !{i32 636, i32 0, metadata !1143, null}
!1145 = metadata !{i32 638, i32 0, metadata !252, null}
!1146 = metadata !{i32 654, i32 0, metadata !259, null}
!1147 = metadata !{i32 655, i32 0, metadata !259, null}
!1148 = metadata !{i32 656, i32 0, metadata !259, null}
!1149 = metadata !{i32 657, i32 0, metadata !259, null}
!1150 = metadata !{i32 658, i32 0, metadata !259, null}
!1151 = metadata !{i32 659, i32 0, metadata !259, null}
!1152 = metadata !{i32 660, i32 0, metadata !259, null}
!1153 = metadata !{i32 661, i32 0, metadata !259, null}
!1154 = metadata !{i32 666, i32 0, metadata !259, null}
!1155 = metadata !{i32 671, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !1, metadata !259, i32 671, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1157 = metadata !{i32 667, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !259, i32 666, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1159 = metadata !{i32 669, i32 0, metadata !1158, null}
!1160 = metadata !{i32 672, i32 0, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !1156, i32 671, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1162 = metadata !{i32 673, i32 0, metadata !1161, null}
!1163 = metadata !{i32 674, i32 0, metadata !1161, null}
!1164 = metadata !{i32 675, i32 0, metadata !1161, null}
!1165 = metadata !{i32 684, i32 0, metadata !1161, null}
!1166 = metadata !{i32 685, i32 0, metadata !1161, null}
!1167 = metadata !{i32 691, i32 0, metadata !259, null}
!1168 = metadata !{i32 706, i32 0, metadata !277, null}
!1169 = metadata !{i32 707, i32 0, metadata !277, null}
!1170 = metadata !{i32 708, i32 0, metadata !277, null}
!1171 = metadata !{i32 709, i32 0, metadata !277, null}
!1172 = metadata !{i32 710, i32 0, metadata !277, null}
!1173 = metadata !{i32 711, i32 0, metadata !277, null}
!1174 = metadata !{i32 712, i32 0, metadata !277, null}
!1175 = metadata !{i32 713, i32 0, metadata !277, null}
!1176 = metadata !{i32 714, i32 0, metadata !277, null}
!1177 = metadata !{i32 715, i32 0, metadata !277, null}
!1178 = metadata !{i32 716, i32 0, metadata !277, null}
!1179 = metadata !{i32 721, i32 0, metadata !277, null}
!1180 = metadata !{i32 726, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !277, i32 726, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1182 = metadata !{i32 722, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !277, i32 721, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1184 = metadata !{i32 724, i32 0, metadata !1183, null}
!1185 = metadata !{i32 727, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !1181, i32 726, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1187 = metadata !{i32 728, i32 0, metadata !1186, null}
!1188 = metadata !{i32 729, i32 0, metadata !1186, null}
!1189 = metadata !{i32 730, i32 0, metadata !1186, null}
!1190 = metadata !{i32 731, i32 0, metadata !1186, null}
!1191 = metadata !{i32 732, i32 0, metadata !1186, null}
!1192 = metadata !{i32 733, i32 0, metadata !1186, null}
!1193 = metadata !{i32 734, i32 0, metadata !1186, null}
!1194 = metadata !{i32 736, i32 0, metadata !277, null}
!1195 = metadata !{i32 748, i32 0, metadata !298, null}
!1196 = metadata !{i32 749, i32 0, metadata !298, null}
!1197 = metadata !{i32 750, i32 0, metadata !298, null}
!1198 = metadata !{i32 751, i32 0, metadata !298, null}
!1199 = metadata !{i32 753, i32 0, metadata !298, null}
!1200 = metadata !{i32 754, i32 0, metadata !308, null}
!1201 = metadata !{i32 755, i32 0, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1, metadata !308, i32 754, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1203 = metadata !{i32 758, i32 0, metadata !1202, null}
!1204 = metadata !{i32 761, i32 0, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !1, metadata !307, i32 761, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1206 = metadata !{i32 762, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !1, metadata !1205, i32 761, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1208 = metadata !{i32 763, i32 0, metadata !1207, null}
!1209 = metadata !{i32 764, i32 0, metadata !1207, null}
!1210 = metadata !{i32 768, i32 0, metadata !298, null}
!1211 = metadata !{i32 780, i32 0, metadata !311, null}
!1212 = metadata !{i32 781, i32 0, metadata !311, null}
!1213 = metadata !{i32 782, i32 0, metadata !311, null}
!1214 = metadata !{i32 783, i32 0, metadata !311, null}
!1215 = metadata !{i32 785, i32 0, metadata !311, null}
!1216 = metadata !{i32 786, i32 0, metadata !321, null}
!1217 = metadata !{i32 787, i32 0, metadata !1218, null}
!1218 = metadata !{i32 786443, metadata !1, metadata !321, i32 786, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1219 = metadata !{i32 790, i32 0, metadata !1218, null}
!1220 = metadata !{i32 793, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !320, i32 793, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1222 = metadata !{i32 794, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !1221, i32 793, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1224 = metadata !{i32 795, i32 0, metadata !1223, null}
!1225 = metadata !{i32 796, i32 0, metadata !1223, null}
!1226 = metadata !{i32 800, i32 0, metadata !311, null}
!1227 = metadata !{i32 814, i32 0, metadata !324, null}
!1228 = metadata !{i32 815, i32 0, metadata !324, null}
!1229 = metadata !{i32 816, i32 0, metadata !324, null}
!1230 = metadata !{i32 817, i32 0, metadata !324, null}
!1231 = metadata !{i32 818, i32 0, metadata !324, null}
!1232 = metadata !{i32 819, i32 0, metadata !324, null}
!1233 = metadata !{i32 820, i32 0, metadata !324, null}
!1234 = metadata !{i32 821, i32 0, metadata !324, null}
!1235 = metadata !{double 0.000000e+00}
!1236 = metadata !{i32 828, i32 0, metadata !324, null}
!1237 = metadata !{i32 830, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !1, metadata !324, i32 830, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1239 = metadata !{i32 1}
!1240 = metadata !{i32 831, i32 0, metadata !1241, null}
!1241 = metadata !{i32 786443, metadata !1, metadata !1238, i32 830, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1242 = metadata !{i32 832, i32 0, metadata !1241, null}
!1243 = metadata !{i32 833, i32 0, metadata !1241, null}
!1244 = metadata !{i32 834, i32 0, metadata !1241, null}
!1245 = metadata !{i32 835, i32 0, metadata !1241, null}
!1246 = metadata !{i32 836, i32 0, metadata !1241, null}
!1247 = metadata !{i32 837, i32 0, metadata !1241, null}
!1248 = metadata !{i32 838, i32 0, metadata !1241, null}
!1249 = metadata !{i32 839, i32 0, metadata !1241, null}
!1250 = metadata !{i32 840, i32 0, metadata !1241, null}
!1251 = metadata !{i32 841, i32 0, metadata !1241, null}
!1252 = metadata !{i32 842, i32 0, metadata !1241, null}
!1253 = metadata !{i32 843, i32 0, metadata !1241, null}
!1254 = metadata !{i32 844, i32 0, metadata !1241, null}
!1255 = metadata !{i32 845, i32 0, metadata !1241, null}
!1256 = metadata !{i32 847, i32 0, metadata !324, null}
!1257 = metadata !{i32 848, i32 0, metadata !324, null}
!1258 = metadata !{i32 849, i32 0, metadata !324, null}
!1259 = metadata !{i32 850, i32 0, metadata !324, null}
!1260 = metadata !{i32 851, i32 0, metadata !324, null}
!1261 = metadata !{i32 852, i32 0, metadata !324, null}
!1262 = metadata !{i32 853, i32 0, metadata !324, null}
!1263 = metadata !{i32 854, i32 0, metadata !324, null}
!1264 = metadata !{i32 855, i32 0, metadata !324, null}
!1265 = metadata !{i32 857, i32 0, metadata !324, null}
!1266 = metadata !{i32 871, i32 0, metadata !369, null}
!1267 = metadata !{i32 872, i32 0, metadata !369, null}
!1268 = metadata !{i32 873, i32 0, metadata !369, null}
!1269 = metadata !{i32 874, i32 0, metadata !369, null}
!1270 = metadata !{i32 875, i32 0, metadata !369, null}
!1271 = metadata !{i32 876, i32 0, metadata !369, null}
!1272 = metadata !{i32 877, i32 0, metadata !369, null}
!1273 = metadata !{i32 884, i32 0, metadata !369, null}
!1274 = metadata !{i32 886, i32 0, metadata !1275, null}
!1275 = metadata !{i32 786443, metadata !1, metadata !369, i32 886, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1276 = metadata !{i32 887, i32 0, metadata !1277, null}
!1277 = metadata !{i32 786443, metadata !1, metadata !1275, i32 886, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1278 = metadata !{i32 888, i32 0, metadata !1277, null}
!1279 = metadata !{i32 889, i32 0, metadata !1277, null}
!1280 = metadata !{i32 890, i32 0, metadata !1277, null}
!1281 = metadata !{i32 891, i32 0, metadata !1277, null}
!1282 = metadata !{i32 892, i32 0, metadata !1277, null}
!1283 = metadata !{i32 893, i32 0, metadata !1277, null}
!1284 = metadata !{i32 894, i32 0, metadata !1277, null}
!1285 = metadata !{i32 895, i32 0, metadata !1277, null}
!1286 = metadata !{i32 896, i32 0, metadata !1277, null}
!1287 = metadata !{i32 897, i32 0, metadata !1277, null}
!1288 = metadata !{i32 899, i32 0, metadata !369, null}
!1289 = metadata !{i32 900, i32 0, metadata !369, null}
!1290 = metadata !{i32 901, i32 0, metadata !369, null}
!1291 = metadata !{i32 902, i32 0, metadata !369, null}
!1292 = metadata !{i32 903, i32 0, metadata !369, null}
!1293 = metadata !{i32 904, i32 0, metadata !369, null}
!1294 = metadata !{i32 906, i32 0, metadata !369, null}
!1295 = metadata !{i32 920, i32 0, metadata !405, null}
!1296 = metadata !{i32 921, i32 0, metadata !405, null}
!1297 = metadata !{i32 922, i32 0, metadata !405, null}
!1298 = metadata !{i32 923, i32 0, metadata !405, null}
!1299 = metadata !{i32 924, i32 0, metadata !405, null}
!1300 = metadata !{i32 925, i32 0, metadata !405, null}
!1301 = metadata !{i32 931, i32 0, metadata !405, null}
!1302 = metadata !{i32 932, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1, metadata !405, i32 932, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1304 = metadata !{i32 933, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1303, i32 932, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1306 = metadata !{i32 934, i32 0, metadata !1305, null}
!1307 = metadata !{i32 935, i32 0, metadata !1305, null}
!1308 = metadata !{i32 936, i32 0, metadata !1305, null}
!1309 = metadata !{i32 937, i32 0, metadata !1305, null}
!1310 = metadata !{i32 938, i32 0, metadata !1305, null}
!1311 = metadata !{i32 939, i32 0, metadata !1305, null}
!1312 = metadata !{i32 941, i32 0, metadata !405, null}
!1313 = metadata !{i32 942, i32 0, metadata !405, null}
!1314 = metadata !{i32 943, i32 0, metadata !405, null}
!1315 = metadata !{i32 945, i32 0, metadata !405, null}
!1316 = metadata !{i32 959, i32 0, metadata !432, null}
!1317 = metadata !{i32 960, i32 0, metadata !432, null}
!1318 = metadata !{i32 961, i32 0, metadata !432, null}
!1319 = metadata !{i32 962, i32 0, metadata !432, null}
!1320 = metadata !{i32 963, i32 0, metadata !432, null}
!1321 = metadata !{i32 964, i32 0, metadata !432, null}
!1322 = metadata !{i32 965, i32 0, metadata !432, null}
!1323 = metadata !{i32 972, i32 0, metadata !432, null}
!1324 = metadata !{i32 974, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !1, metadata !432, i32 974, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1326 = metadata !{i32 975, i32 0, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !1, metadata !1325, i32 974, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1328 = metadata !{i32 976, i32 0, metadata !1327, null}
!1329 = metadata !{i32 977, i32 0, metadata !1327, null}
!1330 = metadata !{i32 978, i32 0, metadata !1327, null}
!1331 = metadata !{i32 979, i32 0, metadata !1327, null}
!1332 = metadata !{i32 980, i32 0, metadata !1327, null}
!1333 = metadata !{i32 981, i32 0, metadata !1327, null}
!1334 = metadata !{i32 982, i32 0, metadata !1327, null}
!1335 = metadata !{i32 983, i32 0, metadata !1327, null}
!1336 = metadata !{i32 984, i32 0, metadata !1327, null}
!1337 = metadata !{i32 985, i32 0, metadata !1327, null}
!1338 = metadata !{i32 987, i32 0, metadata !432, null}
!1339 = metadata !{i32 988, i32 0, metadata !432, null}
!1340 = metadata !{i32 989, i32 0, metadata !432, null}
!1341 = metadata !{i32 990, i32 0, metadata !432, null}
!1342 = metadata !{i32 991, i32 0, metadata !432, null}
!1343 = metadata !{i32 992, i32 0, metadata !432, null}
!1344 = metadata !{i32 994, i32 0, metadata !432, null}
!1345 = metadata !{i32 1008, i32 0, metadata !466, null}
!1346 = metadata !{i32 1009, i32 0, metadata !466, null}
!1347 = metadata !{i32 1010, i32 0, metadata !466, null}
!1348 = metadata !{i32 1011, i32 0, metadata !466, null}
!1349 = metadata !{i32 1012, i32 0, metadata !466, null}
!1350 = metadata !{i32 1013, i32 0, metadata !466, null}
!1351 = metadata !{i32 1019, i32 0, metadata !466, null}
!1352 = metadata !{i32 1020, i32 0, metadata !1353, null}
!1353 = metadata !{i32 786443, metadata !1, metadata !466, i32 1020, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1354 = metadata !{i32 1021, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !1, metadata !1353, i32 1020, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1356 = metadata !{i32 1022, i32 0, metadata !1355, null}
!1357 = metadata !{i32 1023, i32 0, metadata !1355, null}
!1358 = metadata !{i32 1024, i32 0, metadata !1355, null}
!1359 = metadata !{i32 1025, i32 0, metadata !1355, null}
!1360 = metadata !{i32 1026, i32 0, metadata !1355, null}
!1361 = metadata !{i32 1027, i32 0, metadata !1355, null}
!1362 = metadata !{i32 1028, i32 0, metadata !1355, null}
!1363 = metadata !{i32 1030, i32 0, metadata !466, null}
!1364 = metadata !{i32 1031, i32 0, metadata !466, null}
!1365 = metadata !{i32 1032, i32 0, metadata !466, null}
!1366 = metadata !{i32 1033, i32 0, metadata !466, null}
!1367 = metadata !{i32 1035, i32 0, metadata !466, null}
!1368 = metadata !{i32 1049, i32 0, metadata !493, null}
!1369 = metadata !{i32 1050, i32 0, metadata !493, null}
!1370 = metadata !{i32 1051, i32 0, metadata !493, null}
!1371 = metadata !{i32 1052, i32 0, metadata !493, null}
!1372 = metadata !{i32 1053, i32 0, metadata !493, null}
!1373 = metadata !{i32 1058, i32 0, metadata !493, null}
!1374 = metadata !{i32 1059, i32 0, metadata !1375, null}
!1375 = metadata !{i32 786443, metadata !1, metadata !493, i32 1059, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1376 = metadata !{i32 1060, i32 0, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !1, metadata !1375, i32 1059, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1378 = metadata !{i32 1061, i32 0, metadata !1377, null}
!1379 = metadata !{i32 1062, i32 0, metadata !1377, null}
!1380 = metadata !{i32 1063, i32 0, metadata !1377, null}
!1381 = metadata !{i32 1064, i32 0, metadata !1377, null}
!1382 = metadata !{i32 1066, i32 0, metadata !493, null}
!1383 = metadata !{i32 1067, i32 0, metadata !493, null}
!1384 = metadata !{i32 1069, i32 0, metadata !493, null}
!1385 = metadata !{i32 1083, i32 0, metadata !513, null}
!1386 = metadata !{i32 1084, i32 0, metadata !513, null}
!1387 = metadata !{i32 1085, i32 0, metadata !513, null}
!1388 = metadata !{i32 1086, i32 0, metadata !513, null}
!1389 = metadata !{i32 1087, i32 0, metadata !513, null}
!1390 = metadata !{i32 1088, i32 0, metadata !513, null}
!1391 = metadata !{i32 1094, i32 0, metadata !513, null}
!1392 = metadata !{i32 1095, i32 0, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !1, metadata !513, i32 1095, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1394 = metadata !{i32 1096, i32 0, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !1, metadata !1393, i32 1095, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1396 = metadata !{i32 1097, i32 0, metadata !1395, null}
!1397 = metadata !{i32 1098, i32 0, metadata !1395, null}
!1398 = metadata !{i32 1099, i32 0, metadata !1395, null}
!1399 = metadata !{i32 1100, i32 0, metadata !1395, null}
!1400 = metadata !{i32 1101, i32 0, metadata !1395, null}
!1401 = metadata !{i32 1102, i32 0, metadata !1395, null}
!1402 = metadata !{i32 1104, i32 0, metadata !513, null}
!1403 = metadata !{i32 1105, i32 0, metadata !513, null}
!1404 = metadata !{i32 1106, i32 0, metadata !513, null}
!1405 = metadata !{i32 1108, i32 0, metadata !513, null}
!1406 = metadata !{i32 1122, i32 0, metadata !538, null}
!1407 = metadata !{i32 1123, i32 0, metadata !538, null}
!1408 = metadata !{i32 1124, i32 0, metadata !538, null}
!1409 = metadata !{i32 1125, i32 0, metadata !538, null}
!1410 = metadata !{i32 1126, i32 0, metadata !538, null}
!1411 = metadata !{i32 1131, i32 0, metadata !538, null}
!1412 = metadata !{i32 1132, i32 0, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1, metadata !538, i32 1132, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1414 = metadata !{i32 1133, i32 0, metadata !1415, null}
!1415 = metadata !{i32 786443, metadata !1, metadata !1413, i32 1132, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1416 = metadata !{i32 1134, i32 0, metadata !1415, null}
!1417 = metadata !{i32 1135, i32 0, metadata !1415, null}
!1418 = metadata !{i32 1136, i32 0, metadata !1415, null}
!1419 = metadata !{i32 1137, i32 0, metadata !1415, null}
!1420 = metadata !{i32 1139, i32 0, metadata !538, null}
!1421 = metadata !{i32 1140, i32 0, metadata !538, null}
!1422 = metadata !{i32 1142, i32 0, metadata !538, null}
!1423 = metadata !{i32 1156, i32 0, metadata !558, null}
!1424 = metadata !{i32 1157, i32 0, metadata !558, null}
!1425 = metadata !{i32 1158, i32 0, metadata !558, null}
!1426 = metadata !{i32 1159, i32 0, metadata !558, null}
!1427 = metadata !{i32 1164, i32 0, metadata !558, null}
!1428 = metadata !{i32 1165, i32 0, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !1, metadata !558, i32 1165, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1430 = metadata !{i32 1166, i32 0, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !1, metadata !1429, i32 1165, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1432 = metadata !{i32 1167, i32 0, metadata !1431, null}
!1433 = metadata !{i32 1168, i32 0, metadata !1431, null}
!1434 = metadata !{i32 1170, i32 0, metadata !558, null}
!1435 = metadata !{i32 1172, i32 0, metadata !558, null}
!1436 = metadata !{i32 1186, i32 0, metadata !575, null}
!1437 = metadata !{i32 1187, i32 0, metadata !575, null}
!1438 = metadata !{i32 1188, i32 0, metadata !575, null}
!1439 = metadata !{i32 1189, i32 0, metadata !575, null}
!1440 = metadata !{i32 1190, i32 0, metadata !575, null}
!1441 = metadata !{i32 1191, i32 0, metadata !575, null}
!1442 = metadata !{i32 1192, i32 0, metadata !575, null}
!1443 = metadata !{i32 1193, i32 0, metadata !575, null}
!1444 = metadata !{i32 1200, i32 0, metadata !575, null}
!1445 = metadata !{i32 1202, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1, metadata !575, i32 1202, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1447 = metadata !{i32 1203, i32 0, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !1, metadata !1446, i32 1202, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1449 = metadata !{i32 1204, i32 0, metadata !1448, null}
!1450 = metadata !{i32 1205, i32 0, metadata !1448, null}
!1451 = metadata !{i32 1206, i32 0, metadata !1448, null}
!1452 = metadata !{i32 1207, i32 0, metadata !1448, null}
!1453 = metadata !{i32 1208, i32 0, metadata !1448, null}
!1454 = metadata !{i32 1209, i32 0, metadata !1448, null}
!1455 = metadata !{i32 1210, i32 0, metadata !1448, null}
!1456 = metadata !{i32 1211, i32 0, metadata !1448, null}
!1457 = metadata !{i32 1212, i32 0, metadata !1448, null}
!1458 = metadata !{i32 1213, i32 0, metadata !1448, null}
!1459 = metadata !{i32 1214, i32 0, metadata !1448, null}
!1460 = metadata !{i32 1215, i32 0, metadata !1448, null}
!1461 = metadata !{i32 1216, i32 0, metadata !1448, null}
!1462 = metadata !{i32 1217, i32 0, metadata !1448, null}
!1463 = metadata !{i32 1219, i32 0, metadata !575, null}
!1464 = metadata !{i32 1220, i32 0, metadata !575, null}
!1465 = metadata !{i32 1221, i32 0, metadata !575, null}
!1466 = metadata !{i32 1222, i32 0, metadata !575, null}
!1467 = metadata !{i32 1223, i32 0, metadata !575, null}
!1468 = metadata !{i32 1224, i32 0, metadata !575, null}
!1469 = metadata !{i32 1225, i32 0, metadata !575, null}
!1470 = metadata !{i32 1226, i32 0, metadata !575, null}
!1471 = metadata !{i32 1227, i32 0, metadata !575, null}
!1472 = metadata !{i32 1229, i32 0, metadata !575, null}
!1473 = metadata !{i32 1243, i32 0, metadata !618, null}
!1474 = metadata !{i32 1244, i32 0, metadata !618, null}
!1475 = metadata !{i32 1245, i32 0, metadata !618, null}
!1476 = metadata !{i32 1246, i32 0, metadata !618, null}
!1477 = metadata !{i32 1247, i32 0, metadata !618, null}
!1478 = metadata !{i32 1248, i32 0, metadata !618, null}
!1479 = metadata !{i32 1249, i32 0, metadata !618, null}
!1480 = metadata !{i32 1256, i32 0, metadata !618, null}
!1481 = metadata !{i32 1258, i32 0, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !1, metadata !618, i32 1258, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1483 = metadata !{i32 1259, i32 0, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1258, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1485 = metadata !{i32 1260, i32 0, metadata !1484, null}
!1486 = metadata !{i32 1261, i32 0, metadata !1484, null}
!1487 = metadata !{i32 1262, i32 0, metadata !1484, null}
!1488 = metadata !{i32 1263, i32 0, metadata !1484, null}
!1489 = metadata !{i32 1264, i32 0, metadata !1484, null}
!1490 = metadata !{i32 1265, i32 0, metadata !1484, null}
!1491 = metadata !{i32 1266, i32 0, metadata !1484, null}
!1492 = metadata !{i32 1267, i32 0, metadata !1484, null}
!1493 = metadata !{i32 1268, i32 0, metadata !1484, null}
!1494 = metadata !{i32 1269, i32 0, metadata !1484, null}
!1495 = metadata !{i32 1271, i32 0, metadata !618, null}
!1496 = metadata !{i32 1272, i32 0, metadata !618, null}
!1497 = metadata !{i32 1273, i32 0, metadata !618, null}
!1498 = metadata !{i32 1274, i32 0, metadata !618, null}
!1499 = metadata !{i32 1275, i32 0, metadata !618, null}
!1500 = metadata !{i32 1276, i32 0, metadata !618, null}
!1501 = metadata !{i32 1278, i32 0, metadata !618, null}
!1502 = metadata !{i32 1292, i32 0, metadata !652, null}
!1503 = metadata !{i32 1293, i32 0, metadata !652, null}
!1504 = metadata !{i32 1294, i32 0, metadata !652, null}
!1505 = metadata !{i32 1295, i32 0, metadata !652, null}
!1506 = metadata !{i32 1296, i32 0, metadata !652, null}
!1507 = metadata !{i32 1297, i32 0, metadata !652, null}
!1508 = metadata !{i32 1303, i32 0, metadata !652, null}
!1509 = metadata !{i32 1304, i32 0, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !1, metadata !652, i32 1304, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1511 = metadata !{i32 1305, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1, metadata !1510, i32 1304, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1513 = metadata !{i32 1306, i32 0, metadata !1512, null}
!1514 = metadata !{i32 1307, i32 0, metadata !1512, null}
!1515 = metadata !{i32 1308, i32 0, metadata !1512, null}
!1516 = metadata !{i32 1309, i32 0, metadata !1512, null}
!1517 = metadata !{i32 1310, i32 0, metadata !1512, null}
!1518 = metadata !{i32 1311, i32 0, metadata !1512, null}
!1519 = metadata !{i32 1313, i32 0, metadata !652, null}
!1520 = metadata !{i32 1314, i32 0, metadata !652, null}
!1521 = metadata !{i32 1315, i32 0, metadata !652, null}
!1522 = metadata !{i32 1317, i32 0, metadata !652, null}
!1523 = metadata !{i32 1331, i32 0, metadata !677, null}
!1524 = metadata !{i32 1332, i32 0, metadata !677, null}
!1525 = metadata !{i32 1333, i32 0, metadata !677, null}
!1526 = metadata !{i32 1334, i32 0, metadata !677, null}
!1527 = metadata !{i32 1335, i32 0, metadata !677, null}
!1528 = metadata !{i32 1336, i32 0, metadata !677, null}
!1529 = metadata !{i32 1337, i32 0, metadata !677, null}
!1530 = metadata !{i32 1344, i32 0, metadata !677, null}
!1531 = metadata !{i32 1346, i32 0, metadata !1532, null}
!1532 = metadata !{i32 786443, metadata !1, metadata !677, i32 1346, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1533 = metadata !{i32 1347, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1, metadata !1532, i32 1346, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1535 = metadata !{i32 1348, i32 0, metadata !1534, null}
!1536 = metadata !{i32 1349, i32 0, metadata !1534, null}
!1537 = metadata !{i32 1350, i32 0, metadata !1534, null}
!1538 = metadata !{i32 1351, i32 0, metadata !1534, null}
!1539 = metadata !{i32 1352, i32 0, metadata !1534, null}
!1540 = metadata !{i32 1353, i32 0, metadata !1534, null}
!1541 = metadata !{i32 1354, i32 0, metadata !1534, null}
!1542 = metadata !{i32 1355, i32 0, metadata !1534, null}
!1543 = metadata !{i32 1356, i32 0, metadata !1534, null}
!1544 = metadata !{i32 1357, i32 0, metadata !1534, null}
!1545 = metadata !{i32 1359, i32 0, metadata !677, null}
!1546 = metadata !{i32 1360, i32 0, metadata !677, null}
!1547 = metadata !{i32 1361, i32 0, metadata !677, null}
!1548 = metadata !{i32 1362, i32 0, metadata !677, null}
!1549 = metadata !{i32 1363, i32 0, metadata !677, null}
!1550 = metadata !{i32 1364, i32 0, metadata !677, null}
!1551 = metadata !{i32 1366, i32 0, metadata !677, null}
!1552 = metadata !{i32 1380, i32 0, metadata !711, null}
!1553 = metadata !{i32 1381, i32 0, metadata !711, null}
!1554 = metadata !{i32 1382, i32 0, metadata !711, null}
!1555 = metadata !{i32 1383, i32 0, metadata !711, null}
!1556 = metadata !{i32 1384, i32 0, metadata !711, null}
!1557 = metadata !{i32 1385, i32 0, metadata !711, null}
!1558 = metadata !{i32 1391, i32 0, metadata !711, null}
!1559 = metadata !{i32 1392, i32 0, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !1, metadata !711, i32 1392, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1561 = metadata !{i32 1393, i32 0, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !1, metadata !1560, i32 1392, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1563 = metadata !{i32 1394, i32 0, metadata !1562, null}
!1564 = metadata !{i32 1395, i32 0, metadata !1562, null}
!1565 = metadata !{i32 1396, i32 0, metadata !1562, null}
!1566 = metadata !{i32 1397, i32 0, metadata !1562, null}
!1567 = metadata !{i32 1398, i32 0, metadata !1562, null}
!1568 = metadata !{i32 1399, i32 0, metadata !1562, null}
!1569 = metadata !{i32 1400, i32 0, metadata !1562, null}
!1570 = metadata !{i32 1402, i32 0, metadata !711, null}
!1571 = metadata !{i32 1403, i32 0, metadata !711, null}
!1572 = metadata !{i32 1404, i32 0, metadata !711, null}
!1573 = metadata !{i32 1405, i32 0, metadata !711, null}
!1574 = metadata !{i32 1407, i32 0, metadata !711, null}
!1575 = metadata !{i32 1421, i32 0, metadata !738, null}
!1576 = metadata !{i32 1422, i32 0, metadata !738, null}
!1577 = metadata !{i32 1423, i32 0, metadata !738, null}
!1578 = metadata !{i32 1424, i32 0, metadata !738, null}
!1579 = metadata !{i32 1425, i32 0, metadata !738, null}
!1580 = metadata !{i32 1430, i32 0, metadata !738, null}
!1581 = metadata !{i32 1431, i32 0, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !1, metadata !738, i32 1431, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1583 = metadata !{i32 1432, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !1, metadata !1582, i32 1431, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1585 = metadata !{i32 1433, i32 0, metadata !1584, null}
!1586 = metadata !{i32 1434, i32 0, metadata !1584, null}
!1587 = metadata !{i32 1435, i32 0, metadata !1584, null}
!1588 = metadata !{i32 1436, i32 0, metadata !1584, null}
!1589 = metadata !{i32 1438, i32 0, metadata !738, null}
!1590 = metadata !{i32 1439, i32 0, metadata !738, null}
!1591 = metadata !{i32 1441, i32 0, metadata !738, null}
!1592 = metadata !{i32 1455, i32 0, metadata !758, null}
!1593 = metadata !{i32 1456, i32 0, metadata !758, null}
!1594 = metadata !{i32 1457, i32 0, metadata !758, null}
!1595 = metadata !{i32 1458, i32 0, metadata !758, null}
!1596 = metadata !{i32 1459, i32 0, metadata !758, null}
!1597 = metadata !{i32 1460, i32 0, metadata !758, null}
!1598 = metadata !{i32 1466, i32 0, metadata !758, null}
!1599 = metadata !{i32 1467, i32 0, metadata !1600, null}
!1600 = metadata !{i32 786443, metadata !1, metadata !758, i32 1467, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1601 = metadata !{i32 1468, i32 0, metadata !1602, null}
!1602 = metadata !{i32 786443, metadata !1, metadata !1600, i32 1467, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1603 = metadata !{i32 1469, i32 0, metadata !1602, null}
!1604 = metadata !{i32 1470, i32 0, metadata !1602, null}
!1605 = metadata !{i32 1471, i32 0, metadata !1602, null}
!1606 = metadata !{i32 1472, i32 0, metadata !1602, null}
!1607 = metadata !{i32 1473, i32 0, metadata !1602, null}
!1608 = metadata !{i32 1474, i32 0, metadata !1602, null}
!1609 = metadata !{i32 1476, i32 0, metadata !758, null}
!1610 = metadata !{i32 1477, i32 0, metadata !758, null}
!1611 = metadata !{i32 1478, i32 0, metadata !758, null}
!1612 = metadata !{i32 1480, i32 0, metadata !758, null}
!1613 = metadata !{i32 1494, i32 0, metadata !783, null}
!1614 = metadata !{i32 1495, i32 0, metadata !783, null}
!1615 = metadata !{i32 1496, i32 0, metadata !783, null}
!1616 = metadata !{i32 1497, i32 0, metadata !783, null}
!1617 = metadata !{i32 1498, i32 0, metadata !783, null}
!1618 = metadata !{i32 1503, i32 0, metadata !783, null}
!1619 = metadata !{i32 1504, i32 0, metadata !1620, null}
!1620 = metadata !{i32 786443, metadata !1, metadata !783, i32 1504, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1621 = metadata !{i32 1505, i32 0, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !1, metadata !1620, i32 1504, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1623 = metadata !{i32 1506, i32 0, metadata !1622, null}
!1624 = metadata !{i32 1507, i32 0, metadata !1622, null}
!1625 = metadata !{i32 1508, i32 0, metadata !1622, null}
!1626 = metadata !{i32 1509, i32 0, metadata !1622, null}
!1627 = metadata !{i32 1511, i32 0, metadata !783, null}
!1628 = metadata !{i32 1512, i32 0, metadata !783, null}
!1629 = metadata !{i32 1514, i32 0, metadata !783, null}
!1630 = metadata !{i32 1528, i32 0, metadata !803, null}
!1631 = metadata !{i32 1529, i32 0, metadata !803, null}
!1632 = metadata !{i32 1530, i32 0, metadata !803, null}
!1633 = metadata !{i32 1531, i32 0, metadata !803, null}
!1634 = metadata !{i32 1536, i32 0, metadata !803, null}
!1635 = metadata !{i32 1537, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1, metadata !803, i32 1537, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1637 = metadata !{i32 1538, i32 0, metadata !1638, null}
!1638 = metadata !{i32 786443, metadata !1, metadata !1636, i32 1537, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1639 = metadata !{i32 1539, i32 0, metadata !1638, null}
!1640 = metadata !{i32 1540, i32 0, metadata !1638, null}
!1641 = metadata !{i32 1542, i32 0, metadata !803, null}
!1642 = metadata !{i32 1544, i32 0, metadata !803, null}
!1643 = metadata !{i32 1560, i32 0, metadata !818, null}
!1644 = metadata !{i32 1561, i32 0, metadata !818, null}
!1645 = metadata !{i32 1565, i32 0, metadata !818, null}
!1646 = metadata !{i32 1570, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !1, metadata !818, i32 1570, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1648 = metadata !{i32 1566, i32 0, metadata !1649, null}
!1649 = metadata !{i32 786443, metadata !1, metadata !818, i32 1565, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1650 = metadata !{i32 1568, i32 0, metadata !1649, null}
!1651 = metadata !{i32 1571, i32 0, metadata !1652, null}
!1652 = metadata !{i32 786443, metadata !1, metadata !1647, i32 1570, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_ZV.c]
!1653 = metadata !{i32 1573, i32 0, metadata !818, null}
