; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in Chv_addChevron(%p,%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [122 x i8] c"\0A fatal error in Chv_addChevron()\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [142 x i8] c"\0A fatal error in Chv_addChevron()\0A type is SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Chv_addChevron()\0A type is %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A chevron id %d not found in colind[]\00", align 1
@.str5 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A ii %d, negative offset %d\0A\00", align 1
@.str6 = private unnamed_addr constant [80 x i8] c"\0A fatal error in Chv_addChevron(%p,%d,%d,%p,%p)\0A jcol %d not found in colind[]\0A\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"\0A colind\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"\0A chvind\00", align 1
@.str9 = private unnamed_addr constant [128 x i8] c"\0A fatal error in Chv_addChevron()\0A chevron is hermitian, but the scalar has nonzero imaginary part\0A sum is no longer hermitian\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad symflag %d\0A\00", align 1
@.str12 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A chvI->symflag = %d, chvJ->symflag = %d\0A\00", align 1
@.str13 = private unnamed_addr constant [116 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A bad dimensions\0A nDI = %d, nLI = %d, nUI = %d\0A nDI = %d, nLI = %d, nUI = %d\00", align 1
@.str14 = private unnamed_addr constant [82 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A column indicesI do not nest in indicesJ\0A\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"\0A colindI\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"\0A colindJ\00", align 1
@.str17 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A row indicesI do not nest in indicesJ\0A\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"\0A rowindI\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"\0A rowindJ\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Chv_assembleChv(%p,%p)\0A ichvI = %d, ichvJ = %d, rowindI[ichvI] = %d\00", align 1
@.str21 = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_assemblePostponedData(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_addChevron(%struct._Chv* %chv, double* %alpha, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !39), !dbg !109
  call void @llvm.dbg.value(metadata !{double* %alpha}, i64 0, metadata !40), !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %ichv}, i64 0, metadata !41), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %chvsize}, i64 0, metadata !42), !dbg !112
  call void @llvm.dbg.value(metadata !{i32* %chvind}, i64 0, metadata !43), !dbg !113
  call void @llvm.dbg.value(metadata !{double* %chvent}, i64 0, metadata !44), !dbg !114
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !51), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32* %nD}, metadata !52), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32* %nL}, metadata !53), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32* %nU}, metadata !54), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !56), !dbg !116
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !117
  %cmp1 = icmp slt i32 %ichv, 0, !dbg !117
  %or.cond = or i1 %cmp, %cmp1, !dbg !117
  %cmp3 = icmp slt i32 %chvsize, 0, !dbg !117
  %or.cond797 = or i1 %or.cond, %cmp3, !dbg !117
  %cmp5 = icmp eq i32* %chvind, null, !dbg !117
  %or.cond798 = or i1 %or.cond797, %cmp5, !dbg !117
  %cmp7 = icmp eq double* %chvent, null, !dbg !117
  %or.cond799 = or i1 %or.cond798, %cmp7, !dbg !117
  br i1 %or.cond799, label %if.then, label %if.end, !dbg !117

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !118, !tbaa !120
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, double* %alpha, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent) #6, !dbg !118
  call void @exit(i32 -1) #7, !dbg !123
  unreachable, !dbg !123

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !124
  %1 = load i32* %type, align 4, !dbg !124, !tbaa !125
  switch i32 %1, label %sw.default18 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ], !dbg !124

sw.bb:                                            ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !126
  %2 = load i32* %symflag, align 4, !dbg !126, !tbaa !125
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb11.thread
    i32 2, label %sw.bb11.thread
  ], !dbg !126

sw.default:                                       ; preds = %sw.bb
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !120
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([122 x i8]* @.str1, i64 0, i64 0), i32 %2) #6, !dbg !128
  call void @exit(i32 -1) #7, !dbg !130
  unreachable, !dbg !130

sw.bb11.thread:                                   ; preds = %sw.bb, %sw.bb
  br label %sw.epilog21, !dbg !131

sw.bb11:                                          ; preds = %if.end
  %symflag12.phi.trans.insert = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %.pre = load i32* %symflag12.phi.trans.insert, align 4, !dbg !131, !tbaa !125
  %switch = icmp ult i32 %.pre, 3, !dbg !131
  br i1 %switch, label %sw.epilog21, label %sw.default14, !dbg !131

sw.default14:                                     ; preds = %sw.bb11
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !132, !tbaa !120
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([142 x i8]* @.str2, i64 0, i64 0), i32 %.pre) #6, !dbg !132
  call void @exit(i32 -1) #7, !dbg !134
  unreachable, !dbg !134

sw.default18:                                     ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !135, !tbaa !120
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0), i32 %1) #6, !dbg !135
  call void @exit(i32 -1) #7, !dbg !136
  unreachable, !dbg !136

sw.epilog21:                                      ; preds = %sw.bb11.thread, %sw.bb11
  %symflag12962 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !131
  %cmp22 = icmp eq i32 %chvsize, 0, !dbg !137
  br i1 %cmp22, label %return, label %lor.lhs.false23, !dbg !137

lor.lhs.false23:                                  ; preds = %sw.epilog21
  switch i32 %1, label %if.end37 [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true30
  ], !dbg !137

land.lhs.true:                                    ; preds = %lor.lhs.false23
  %6 = load double* %alpha, align 8, !dbg !137, !tbaa !138
  %cmp26 = fcmp oeq double %6, 0.000000e+00, !dbg !137
  br i1 %cmp26, label %return, label %if.end37, !dbg !137

land.lhs.true30:                                  ; preds = %lor.lhs.false23
  %7 = load double* %alpha, align 8, !dbg !137, !tbaa !138
  %cmp32 = fcmp oeq double %7, 0.000000e+00, !dbg !137
  br i1 %cmp32, label %land.lhs.true33, label %if.end37, !dbg !137

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %arrayidx34 = getelementptr inbounds double* %alpha, i64 1, !dbg !137
  %8 = load double* %arrayidx34, align 8, !dbg !137, !tbaa !138
  %cmp35 = fcmp oeq double %8, 0.000000e+00, !dbg !137
  br i1 %cmp35, label %return, label %if.end37, !dbg !137

if.end37:                                         ; preds = %lor.lhs.false23, %land.lhs.true, %land.lhs.true33, %land.lhs.true30
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #6, !dbg !139
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #6, !dbg !140
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !46), !dbg !141
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !52), !dbg !141
  %9 = load i32* %nD, align 4, !dbg !141, !tbaa !125
  %cmp38870 = icmp sgt i32 %9, 0, !dbg !141
  br i1 %cmp38870, label %for.body.lr.ph, label %for.end, !dbg !141

for.body.lr.ph:                                   ; preds = %if.end37
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !143
  %10 = load i32** %colind, align 8, !dbg !143, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !52), !dbg !141
  br label %for.body, !dbg !141

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !52), !dbg !141
  %11 = trunc i64 %indvars.iv.next953 to i32, !dbg !141
  %cmp38 = icmp slt i32 %11, %9, !dbg !141
  br i1 %cmp38, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv952 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next953, %for.cond ]
  %iloc.0871 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !143
  %arrayidx39 = getelementptr inbounds i32* %10, i64 %indvars.iv952, !dbg !143
  %12 = load i32* %arrayidx39, align 4, !dbg !143, !tbaa !125
  %cmp40 = icmp eq i32 %12, %ichv, !dbg !143
  %indvars.iv.next953 = add i64 %indvars.iv952, 1, !dbg !141
  %inc = add nsw i32 %iloc.0871, 1, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !46), !dbg !141
  br i1 %cmp40, label %for.end, label %for.cond, !dbg !143

for.end:                                          ; preds = %for.cond, %for.body, %if.end37
  %iloc.0.lcssa = phi i32 [ 0, %if.end37 ], [ %iloc.0871, %for.body ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !52), !dbg !145
  %cmp43 = icmp eq i32 %iloc.0.lcssa, %9, !dbg !145
  br i1 %cmp43, label %if.then44, label %if.end46, !dbg !145

if.then44:                                        ; preds = %for.end
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !146, !tbaa !120
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %ichv) #6, !dbg !146
  call void @exit(i32 -1) #7, !dbg !148
  unreachable, !dbg !148

if.end46:                                         ; preds = %for.end
  %14 = load i32* %symflag12962, align 4, !dbg !149, !tbaa !125
  switch i32 %14, label %return [
    i32 0, label %if.then52
    i32 1, label %if.then52
    i32 2, label %if.then255
  ], !dbg !149

if.then52:                                        ; preds = %if.end46, %if.end46
  call void @llvm.dbg.value(metadata !{i32* %nD}, i64 0, metadata !52), !dbg !150
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !54), !dbg !150
  %15 = load i32* %nU, align 4, !dbg !150, !tbaa !125
  %add = add i32 %9, -1, !dbg !150
  %sub = add i32 %add, %15, !dbg !150
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !50), !dbg !150
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %iloc.0.lcssa}, i64 0, metadata !48), !dbg !151
  %cmp54831 = icmp sgt i32 %chvsize, 0, !dbg !151
  br i1 %cmp54831, label %for.body55.lr.ph, label %for.end80, !dbg !151

for.body55.lr.ph:                                 ; preds = %if.then52
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !153
  %16 = load i32** %colind, align 8, !dbg !153, !tbaa !120
  br label %for.body55, !dbg !151

for.body55:                                       ; preds = %for.body55.lr.ph, %if.end75
  %indvars.iv905 = phi i64 [ 0, %for.body55.lr.ph ], [ %indvars.iv.next906, %if.end75 ]
  %ii.0833 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc79, %if.end75 ]
  %jj.0832 = phi i32 [ %iloc.0.lcssa, %for.body55.lr.ph ], [ %jj.1823, %if.end75 ]
  %arrayidx57 = getelementptr inbounds i32* %chvind, i64 %indvars.iv905, !dbg !155
  %17 = load i32* %arrayidx57, align 4, !dbg !155, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !55), !dbg !155
  %cmp58 = icmp slt i32 %17, 0, !dbg !155
  br i1 %cmp58, label %if.then59, label %if.end63, !dbg !155

if.then59:                                        ; preds = %for.body55
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !120
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([76 x i8]* @.str5, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %ii.0833, i32 %17) #6, !dbg !156
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !158, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %19, i32 %chvsize, i32* %chvind) #6, !dbg !158
  call void @exit(i32 -1) #7, !dbg !159
  unreachable, !dbg !159

if.end63:                                         ; preds = %for.body55
  %add64 = add nsw i32 %17, %ichv, !dbg !160
  call void @llvm.dbg.value(metadata !{i32 %add64}, i64 0, metadata !47), !dbg !160
  %cmp65822 = icmp sgt i32 %jj.0832, %sub, !dbg !153
  br i1 %cmp65822, label %if.then71, label %land.rhs.lr.ph, !dbg !153

land.rhs.lr.ph:                                   ; preds = %if.end63
  %20 = sext i32 %jj.0832 to i64
  br label %land.rhs, !dbg !153

while.cond:                                       ; preds = %land.rhs
  %indvars.iv.next895 = add i64 %indvars.iv894, 1, !dbg !153
  %inc69 = add nsw i32 %jj.1823, 1, !dbg !161
  %21 = trunc i64 %indvars.iv894 to i32, !dbg !153
  %cmp65 = icmp slt i32 %21, %sub, !dbg !153
  br i1 %cmp65, label %land.rhs, label %if.then71, !dbg !153

land.rhs:                                         ; preds = %while.cond, %land.rhs.lr.ph
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %while.cond ], [ %20, %land.rhs.lr.ph ]
  %jj.1823 = phi i32 [ %inc69, %while.cond ], [ %jj.0832, %land.rhs.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !153
  %arrayidx67 = getelementptr inbounds i32* %16, i64 %indvars.iv894, !dbg !153
  %22 = load i32* %arrayidx67, align 4, !dbg !153, !tbaa !125
  %cmp68 = icmp eq i32 %add64, %22, !dbg !153
  call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !48), !dbg !161
  br i1 %cmp68, label %if.end75, label %while.cond

if.then71:                                        ; preds = %if.end63, %while.cond
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !120
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %add64) #6, !dbg !163
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !165, !tbaa !120
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %24), !dbg !165
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !51), !dbg !166
  %27 = load i32* %ncol, align 4, !dbg !166, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !166
  %28 = load i32** %colind, align 8, !dbg !166, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %26, i32 %27, i32* %28) #6, !dbg !166
  %29 = load %struct._IO_FILE** @stderr, align 8, !dbg !167, !tbaa !120
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %29), !dbg !167
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !168, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %31, i32 %chvsize, i32* %chvind) #6, !dbg !168
  call void @exit(i32 -1) #7, !dbg !169
  unreachable, !dbg !169

if.end75:                                         ; preds = %land.rhs
  store i32 %jj.1823, i32* %arrayidx57, align 4, !dbg !170, !tbaa !125
  %indvars.iv.next906 = add i64 %indvars.iv905, 1, !dbg !151
  %inc79 = add nsw i32 %ii.0833, 1, !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %inc79}, i64 0, metadata !45), !dbg !151
  %32 = trunc i64 %indvars.iv.next906 to i32, !dbg !151
  %cmp54 = icmp slt i32 %32, %chvsize, !dbg !151
  br i1 %cmp54, label %for.body55, label %for.end80, !dbg !151

for.end80:                                        ; preds = %if.end75, %if.then52
  %33 = load i32* %type, align 4, !dbg !171, !tbaa !125
  switch i32 %33, label %for.cond239.preheader [
    i32 1, label %if.then83
    i32 2, label %if.then119
  ], !dbg !171

if.then83:                                        ; preds = %for.end80
  %call84 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #6, !dbg !172
  %idx.ext = sext i32 %iloc.0.lcssa to i64, !dbg !172
  %34 = load double* %alpha, align 8, !dbg !174, !tbaa !138
  %cmp86 = fcmp oeq double %34, 1.000000e+00, !dbg !174
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !175
  br i1 %cmp86, label %for.cond88.preheader, label %for.cond101.preheader, !dbg !174

for.cond101.preheader:                            ; preds = %if.then83
  br i1 %cmp54831, label %for.body103, label %return, !dbg !178

for.cond88.preheader:                             ; preds = %if.then83
  br i1 %cmp54831, label %for.body90, label %return, !dbg !175

for.body90:                                       ; preds = %for.cond88.preheader, %for.body90
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %for.body90 ], [ 0, %for.cond88.preheader ]
  %arrayidx92 = getelementptr inbounds double* %chvent, i64 %indvars.iv873, !dbg !181
  %35 = load double* %arrayidx92, align 8, !dbg !181, !tbaa !138
  %arrayidx94 = getelementptr inbounds i32* %chvind, i64 %indvars.iv873, !dbg !181
  %36 = load i32* %arrayidx94, align 4, !dbg !181, !tbaa !125
  %idxprom95 = sext i32 %36 to i64, !dbg !181
  %add.ptr.sum796 = sub i64 %idxprom95, %idx.ext, !dbg !181
  %arrayidx96 = getelementptr inbounds double* %call84, i64 %add.ptr.sum796, !dbg !181
  %37 = load double* %arrayidx96, align 8, !dbg !181, !tbaa !138
  %add97 = fadd double %35, %37, !dbg !181
  store double %add97, double* %arrayidx96, align 8, !dbg !181, !tbaa !138
  %indvars.iv.next874 = add i64 %indvars.iv873, 1, !dbg !175
  %lftr.wideiv875 = trunc i64 %indvars.iv.next874 to i32, !dbg !175
  %exitcond876 = icmp eq i32 %lftr.wideiv875, %chvsize, !dbg !175
  br i1 %exitcond876, label %for.cond239.preheader, label %for.body90, !dbg !175

for.cond239.preheader:                            ; preds = %for.body200, %for.body166, %for.body133, %for.body103, %for.body90, %for.end80
  br i1 %cmp54831, label %for.body241.lr.ph, label %return, !dbg !183

for.body241.lr.ph:                                ; preds = %for.cond239.preheader
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !185
  %38 = load i32** %colind, align 8, !dbg !185, !tbaa !120
  br label %for.body241, !dbg !183

for.body103:                                      ; preds = %for.cond101.preheader, %for.body103.for.body103_crit_edge
  %39 = phi double [ %.pre954, %for.body103.for.body103_crit_edge ], [ %34, %for.cond101.preheader ]
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %for.body103.for.body103_crit_edge ], [ 0, %for.cond101.preheader ]
  %arrayidx106 = getelementptr inbounds double* %chvent, i64 %indvars.iv877, !dbg !187
  %40 = load double* %arrayidx106, align 8, !dbg !187, !tbaa !138
  %mul = fmul double %39, %40, !dbg !187
  %arrayidx108 = getelementptr inbounds i32* %chvind, i64 %indvars.iv877, !dbg !187
  %41 = load i32* %arrayidx108, align 4, !dbg !187, !tbaa !125
  %idxprom109 = sext i32 %41 to i64, !dbg !187
  %add.ptr.sum = sub i64 %idxprom109, %idx.ext, !dbg !187
  %arrayidx110 = getelementptr inbounds double* %call84, i64 %add.ptr.sum, !dbg !187
  %42 = load double* %arrayidx110, align 8, !dbg !187, !tbaa !138
  %add111 = fadd double %mul, %42, !dbg !187
  store double %add111, double* %arrayidx110, align 8, !dbg !187, !tbaa !138
  %indvars.iv.next878 = add i64 %indvars.iv877, 1, !dbg !178
  %lftr.wideiv879 = trunc i64 %indvars.iv.next878 to i32, !dbg !178
  %exitcond880 = icmp eq i32 %lftr.wideiv879, %chvsize, !dbg !178
  br i1 %exitcond880, label %for.cond239.preheader, label %for.body103.for.body103_crit_edge, !dbg !178

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  %.pre954 = load double* %alpha, align 8, !dbg !187, !tbaa !138
  br label %for.body103, !dbg !178

if.then119:                                       ; preds = %for.end80
  %call120 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #6, !dbg !189
  %mul121 = shl nsw i32 %iloc.0.lcssa, 1, !dbg !189
  %idx.ext122 = sext i32 %mul121 to i64, !dbg !189
  %43 = load double* %alpha, align 8, !dbg !190, !tbaa !138
  %cmp126 = fcmp oeq double %43, 1.000000e+00, !dbg !190
  br i1 %cmp126, label %land.lhs.true127, label %if.else157, !dbg !190

land.lhs.true127:                                 ; preds = %if.then119
  %arrayidx128 = getelementptr inbounds double* %alpha, i64 1, !dbg !190
  %44 = load double* %arrayidx128, align 8, !dbg !190, !tbaa !138
  %cmp129 = fcmp oeq double %44, 0.000000e+00, !dbg !190
  br i1 %cmp129, label %for.cond131.preheader, label %if.else157, !dbg !190

for.cond131.preheader:                            ; preds = %land.lhs.true127
  br i1 %cmp54831, label %for.body133, label %return, !dbg !191

for.body133:                                      ; preds = %for.cond131.preheader, %for.body133
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %for.body133 ], [ 0, %for.cond131.preheader ]
  %45 = trunc i64 %indvars.iv881 to i32, !dbg !194
  %mul134 = shl nsw i32 %45, 1, !dbg !194
  %idxprom135 = sext i32 %mul134 to i64, !dbg !194
  %arrayidx136 = getelementptr inbounds double* %chvent, i64 %idxprom135, !dbg !194
  %46 = load double* %arrayidx136, align 8, !dbg !194, !tbaa !138
  %arrayidx138 = getelementptr inbounds i32* %chvind, i64 %indvars.iv881, !dbg !194
  %47 = load i32* %arrayidx138, align 4, !dbg !194, !tbaa !125
  %mul139 = shl nsw i32 %47, 1, !dbg !194
  %idxprom140 = sext i32 %mul139 to i64, !dbg !194
  %add.ptr124.sum792 = sub i64 %idxprom140, %idx.ext122, !dbg !194
  %arrayidx141 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum792, !dbg !194
  %48 = load double* %arrayidx141, align 8, !dbg !194, !tbaa !138
  %add142 = fadd double %46, %48, !dbg !194
  store double %add142, double* %arrayidx141, align 8, !dbg !194, !tbaa !138
  %add144793 = or i32 %mul134, 1, !dbg !196
  %idxprom145 = sext i32 %add144793 to i64, !dbg !196
  %arrayidx146 = getelementptr inbounds double* %chvent, i64 %idxprom145, !dbg !196
  %49 = load double* %arrayidx146, align 8, !dbg !196, !tbaa !138
  %add150794 = or i32 %mul139, 1, !dbg !196
  %idxprom151 = sext i32 %add150794 to i64, !dbg !196
  %add.ptr124.sum795 = sub i64 %idxprom151, %idx.ext122, !dbg !196
  %arrayidx152 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum795, !dbg !196
  %50 = load double* %arrayidx152, align 8, !dbg !196, !tbaa !138
  %add153 = fadd double %49, %50, !dbg !196
  store double %add153, double* %arrayidx152, align 8, !dbg !196, !tbaa !138
  %indvars.iv.next882 = add i64 %indvars.iv881, 1, !dbg !191
  %lftr.wideiv883 = trunc i64 %indvars.iv.next882 to i32, !dbg !191
  %exitcond884 = icmp eq i32 %lftr.wideiv883, %chvsize, !dbg !191
  br i1 %exitcond884, label %for.cond239.preheader, label %for.body133, !dbg !191

if.else157:                                       ; preds = %land.lhs.true127, %if.then119
  %cmp159 = fcmp une double %43, 0.000000e+00, !dbg !197
  br i1 %cmp159, label %land.lhs.true160, label %if.else194, !dbg !197

land.lhs.true160:                                 ; preds = %if.else157
  %arrayidx161 = getelementptr inbounds double* %alpha, i64 1, !dbg !197
  %51 = load double* %arrayidx161, align 8, !dbg !197, !tbaa !138
  %cmp162 = fcmp oeq double %51, 0.000000e+00, !dbg !197
  br i1 %cmp162, label %for.cond164.preheader, label %if.else194, !dbg !197

for.cond164.preheader:                            ; preds = %land.lhs.true160
  br i1 %cmp54831, label %for.body166, label %return, !dbg !198

for.body166:                                      ; preds = %for.cond164.preheader, %for.body166.for.body166_crit_edge
  %52 = phi double [ %.pre955, %for.body166.for.body166_crit_edge ], [ %43, %for.cond164.preheader ]
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %for.body166.for.body166_crit_edge ], [ 0, %for.cond164.preheader ]
  %53 = trunc i64 %indvars.iv885 to i32, !dbg !201
  %mul168 = shl nsw i32 %53, 1, !dbg !201
  %idxprom169 = sext i32 %mul168 to i64, !dbg !201
  %arrayidx170 = getelementptr inbounds double* %chvent, i64 %idxprom169, !dbg !201
  %54 = load double* %arrayidx170, align 8, !dbg !201, !tbaa !138
  %mul171 = fmul double %52, %54, !dbg !201
  %arrayidx173 = getelementptr inbounds i32* %chvind, i64 %indvars.iv885, !dbg !201
  %55 = load i32* %arrayidx173, align 4, !dbg !201, !tbaa !125
  %mul174 = shl nsw i32 %55, 1, !dbg !201
  %idxprom175 = sext i32 %mul174 to i64, !dbg !201
  %add.ptr124.sum788 = sub i64 %idxprom175, %idx.ext122, !dbg !201
  %arrayidx176 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum788, !dbg !201
  %56 = load double* %arrayidx176, align 8, !dbg !201, !tbaa !138
  %add177 = fadd double %mul171, %56, !dbg !201
  store double %add177, double* %arrayidx176, align 8, !dbg !201, !tbaa !138
  %57 = load double* %alpha, align 8, !dbg !203, !tbaa !138
  %add180789 = or i32 %mul168, 1, !dbg !203
  %idxprom181 = sext i32 %add180789 to i64, !dbg !203
  %arrayidx182 = getelementptr inbounds double* %chvent, i64 %idxprom181, !dbg !203
  %58 = load double* %arrayidx182, align 8, !dbg !203, !tbaa !138
  %mul183 = fmul double %57, %58, !dbg !203
  %add187790 = or i32 %mul174, 1, !dbg !203
  %idxprom188 = sext i32 %add187790 to i64, !dbg !203
  %add.ptr124.sum791 = sub i64 %idxprom188, %idx.ext122, !dbg !203
  %arrayidx189 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum791, !dbg !203
  %59 = load double* %arrayidx189, align 8, !dbg !203, !tbaa !138
  %add190 = fadd double %mul183, %59, !dbg !203
  store double %add190, double* %arrayidx189, align 8, !dbg !203, !tbaa !138
  %indvars.iv.next886 = add i64 %indvars.iv885, 1, !dbg !198
  %lftr.wideiv887 = trunc i64 %indvars.iv.next886 to i32, !dbg !198
  %exitcond888 = icmp eq i32 %lftr.wideiv887, %chvsize, !dbg !198
  br i1 %exitcond888, label %for.cond239.preheader, label %for.body166.for.body166_crit_edge, !dbg !198

for.body166.for.body166_crit_edge:                ; preds = %for.body166
  %.pre955 = load double* %alpha, align 8, !dbg !201, !tbaa !138
  br label %for.body166, !dbg !198

if.else194:                                       ; preds = %land.lhs.true160, %if.else157
  %60 = load i32* %symflag12962, align 4, !dbg !204, !tbaa !125
  %cmp196 = icmp eq i32 %60, 0, !dbg !204
  br i1 %cmp196, label %for.cond198.preheader, label %if.else232, !dbg !204

for.cond198.preheader:                            ; preds = %if.else194
  br i1 %cmp54831, label %for.body200.lr.ph, label %return, !dbg !205

for.body200.lr.ph:                                ; preds = %for.cond198.preheader
  %arrayidx202 = getelementptr inbounds double* %alpha, i64 1, !dbg !207
  br label %for.body200, !dbg !205

for.body200:                                      ; preds = %for.body200.for.body200_crit_edge, %for.body200.lr.ph
  %61 = phi double [ %43, %for.body200.lr.ph ], [ %.pre956, %for.body200.for.body200_crit_edge ]
  %indvars.iv889 = phi i64 [ 0, %for.body200.lr.ph ], [ %indvars.iv.next890, %for.body200.for.body200_crit_edge ]
  call void @llvm.dbg.value(metadata !{double %61}, i64 0, metadata !58), !dbg !207
  %62 = load double* %arrayidx202, align 8, !dbg !207, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %62}, i64 0, metadata !62), !dbg !207
  %63 = trunc i64 %indvars.iv889 to i32, !dbg !209
  %mul203 = shl nsw i32 %63, 1, !dbg !209
  %idxprom204 = sext i32 %mul203 to i64, !dbg !209
  %arrayidx205 = getelementptr inbounds double* %chvent, i64 %idxprom204, !dbg !209
  %64 = load double* %arrayidx205, align 8, !dbg !209, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %64}, i64 0, metadata !63), !dbg !209
  %add207785 = or i32 %mul203, 1, !dbg !209
  %idxprom208 = sext i32 %add207785 to i64, !dbg !209
  %arrayidx209 = getelementptr inbounds double* %chvent, i64 %idxprom208, !dbg !209
  %65 = load double* %arrayidx209, align 8, !dbg !209, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %65}, i64 0, metadata !64), !dbg !209
  %mul210 = fmul double %61, %64, !dbg !210
  %mul211 = fmul double %62, %65, !dbg !210
  %sub212 = fsub double %mul210, %mul211, !dbg !210
  %arrayidx214 = getelementptr inbounds i32* %chvind, i64 %indvars.iv889, !dbg !210
  %66 = load i32* %arrayidx214, align 4, !dbg !210, !tbaa !125
  %mul215 = shl nsw i32 %66, 1, !dbg !210
  %idxprom216 = sext i32 %mul215 to i64, !dbg !210
  %add.ptr124.sum = sub i64 %idxprom216, %idx.ext122, !dbg !210
  %arrayidx217 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum, !dbg !210
  %67 = load double* %arrayidx217, align 8, !dbg !210, !tbaa !138
  %add218 = fadd double %67, %sub212, !dbg !210
  store double %add218, double* %arrayidx217, align 8, !dbg !210, !tbaa !138
  %mul219 = fmul double %61, %65, !dbg !211
  %mul220 = fmul double %62, %64, !dbg !211
  %add221 = fadd double %mul220, %mul219, !dbg !211
  %add225786 = or i32 %mul215, 1, !dbg !211
  %idxprom226 = sext i32 %add225786 to i64, !dbg !211
  %add.ptr124.sum787 = sub i64 %idxprom226, %idx.ext122, !dbg !211
  %arrayidx227 = getelementptr inbounds double* %call120, i64 %add.ptr124.sum787, !dbg !211
  %68 = load double* %arrayidx227, align 8, !dbg !211, !tbaa !138
  %add228 = fadd double %add221, %68, !dbg !211
  store double %add228, double* %arrayidx227, align 8, !dbg !211, !tbaa !138
  %indvars.iv.next890 = add i64 %indvars.iv889, 1, !dbg !205
  %lftr.wideiv891 = trunc i64 %indvars.iv.next890 to i32, !dbg !205
  %exitcond892 = icmp eq i32 %lftr.wideiv891, %chvsize, !dbg !205
  br i1 %exitcond892, label %for.cond239.preheader, label %for.body200.for.body200_crit_edge, !dbg !205

for.body200.for.body200_crit_edge:                ; preds = %for.body200
  %.pre956 = load double* %alpha, align 8, !dbg !207, !tbaa !138
  br label %for.body200, !dbg !205

if.else232:                                       ; preds = %if.else194
  %69 = load %struct._IO_FILE** @stderr, align 8, !dbg !212, !tbaa !120
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([128 x i8]* @.str9, i64 0, i64 0), i64 127, i64 1, %struct._IO_FILE* %69), !dbg !212
  call void @exit(i32 -1) #7, !dbg !214
  unreachable, !dbg !214

for.body241:                                      ; preds = %for.body241, %for.body241.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body241.lr.ph ], [ %indvars.iv.next, %for.body241 ]
  %arrayidx243 = getelementptr inbounds i32* %chvind, i64 %indvars.iv, !dbg !185
  %71 = load i32* %arrayidx243, align 4, !dbg !185, !tbaa !125
  %idxprom244 = sext i32 %71 to i64, !dbg !185
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !185
  %arrayidx245 = getelementptr inbounds i32* %38, i64 %idxprom244, !dbg !185
  %72 = load i32* %arrayidx245, align 4, !dbg !185, !tbaa !125
  %sub246 = sub nsw i32 %72, %ichv, !dbg !185
  store i32 %sub246, i32* %arrayidx243, align 4, !dbg !185, !tbaa !125
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !183
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !183
  %exitcond = icmp eq i32 %lftr.wideiv, %chvsize, !dbg !183
  br i1 %exitcond, label %return, label %for.body241, !dbg !183

if.then255:                                       ; preds = %if.end46
  call void @llvm.dbg.value(metadata !{i32 %iloc.0.lcssa}, i64 0, metadata !49), !dbg !215
  call void @llvm.dbg.value(metadata !{i32* %nU}, i64 0, metadata !54), !dbg !216
  %73 = load i32* %nU, align 4, !dbg !216, !tbaa !125
  %add256 = add i32 %9, -1, !dbg !216
  %sub257 = add i32 %add256, %73, !dbg !216
  call void @llvm.dbg.value(metadata !{i32 %sub257}, i64 0, metadata !50), !dbg !216
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %sub257}, i64 0, metadata !48), !dbg !217
  %cmp259866 = icmp sgt i32 %chvsize, 0, !dbg !217
  br i1 %cmp259866, label %for.body260.lr.ph, label %for.cond287.preheader, !dbg !217

for.body260.lr.ph:                                ; preds = %if.then255
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !219
  %74 = load i32** %colind, align 8, !dbg !219, !tbaa !120
  br label %for.body260, !dbg !217

for.cond287.preheader:                            ; preds = %if.end279, %for.body260, %if.then255
  %ii.7.lcssa = phi i32 [ 0, %if.then255 ], [ %ii.7868, %for.body260 ], [ %inc285, %if.end279 ]
  %cmp288856 = icmp slt i32 %ii.7.lcssa, %chvsize, !dbg !221
  br i1 %cmp288856, label %for.body289.lr.ph, label %for.end312, !dbg !221

for.body289.lr.ph:                                ; preds = %for.cond287.preheader
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !223
  %75 = load i32** %colind, align 8, !dbg !223, !tbaa !120
  %76 = sext i32 %ii.7.lcssa to i64
  br label %for.body289, !dbg !221

for.body260:                                      ; preds = %for.body260.lr.ph, %if.end279
  %indvars.iv948 = phi i64 [ 0, %for.body260.lr.ph ], [ %indvars.iv.next949, %if.end279 ]
  %ii.7868 = phi i32 [ 0, %for.body260.lr.ph ], [ %inc285, %if.end279 ]
  %jj.2867 = phi i32 [ %sub257, %for.body260.lr.ph ], [ %jj.3861, %if.end279 ]
  %arrayidx262 = getelementptr inbounds i32* %chvind, i64 %indvars.iv948, !dbg !225
  %77 = load i32* %arrayidx262, align 4, !dbg !225, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32 %77}, i64 0, metadata !55), !dbg !225
  %cmp263 = icmp sgt i32 %77, -1, !dbg !225
  br i1 %cmp263, label %for.cond287.preheader, label %if.end265, !dbg !225

if.end265:                                        ; preds = %for.body260
  %sub266 = sub nsw i32 %ichv, %77, !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %sub266}, i64 0, metadata !47), !dbg !226
  %cmp268860 = icmp slt i32 %jj.2867, %iloc.0.lcssa, !dbg !219
  br i1 %cmp268860, label %if.then277, label %land.rhs269.lr.ph, !dbg !219

land.rhs269.lr.ph:                                ; preds = %if.end265
  %78 = sext i32 %jj.2867 to i64
  br label %land.rhs269, !dbg !219

while.cond267:                                    ; preds = %land.rhs269
  %indvars.iv.next941 = add i64 %indvars.iv940, -1, !dbg !219
  %dec = add nsw i32 %jj.3861, -1, !dbg !227
  %79 = trunc i64 %indvars.iv940 to i32, !dbg !219
  %cmp268 = icmp sgt i32 %79, %iloc.0.lcssa, !dbg !219
  br i1 %cmp268, label %land.rhs269, label %if.then277, !dbg !219

land.rhs269:                                      ; preds = %while.cond267, %land.rhs269.lr.ph
  %indvars.iv940 = phi i64 [ %indvars.iv.next941, %while.cond267 ], [ %78, %land.rhs269.lr.ph ]
  %jj.3861 = phi i32 [ %dec, %while.cond267 ], [ %jj.2867, %land.rhs269.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !219
  %arrayidx271 = getelementptr inbounds i32* %74, i64 %indvars.iv940, !dbg !219
  %80 = load i32* %arrayidx271, align 4, !dbg !219, !tbaa !125
  %cmp272 = icmp eq i32 %sub266, %80, !dbg !219
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !48), !dbg !227
  br i1 %cmp272, label %if.end279, label %while.cond267

if.then277:                                       ; preds = %if.end265, %while.cond267
  %81 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !120
  %call278 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %sub266) #6, !dbg !229
  call void @exit(i32 -1) #7, !dbg !231
  unreachable, !dbg !231

if.end279:                                        ; preds = %land.rhs269
  %add281 = sub i32 %iloc.0.lcssa, %jj.3861, !dbg !232
  store i32 %add281, i32* %arrayidx262, align 4, !dbg !232, !tbaa !125
  %indvars.iv.next949 = add i64 %indvars.iv948, 1, !dbg !217
  %inc285 = add nsw i32 %ii.7868, 1, !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %inc285}, i64 0, metadata !45), !dbg !217
  %82 = trunc i64 %indvars.iv.next949 to i32, !dbg !217
  %cmp259 = icmp slt i32 %82, %chvsize, !dbg !217
  br i1 %cmp259, label %for.body260, label %for.cond287.preheader, !dbg !217

for.body289:                                      ; preds = %for.body289.lr.ph, %if.end306
  %indvars.iv937 = phi i64 [ %76, %for.body289.lr.ph ], [ %indvars.iv.next938, %if.end306 ]
  %jj.4857 = phi i32 [ %iloc.0.lcssa, %for.body289.lr.ph ], [ %jj.5853, %if.end306 ]
  %arrayidx291 = getelementptr inbounds i32* %chvind, i64 %indvars.iv937, !dbg !233
  %83 = load i32* %arrayidx291, align 4, !dbg !233, !tbaa !125
  %add292 = add nsw i32 %83, %ichv, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %add292}, i64 0, metadata !47), !dbg !233
  %cmp294852 = icmp sgt i32 %jj.4857, %sub257, !dbg !223
  br i1 %cmp294852, label %if.then304, label %land.rhs295.lr.ph, !dbg !223

land.rhs295.lr.ph:                                ; preds = %for.body289
  %84 = sext i32 %jj.4857 to i64
  br label %land.rhs295, !dbg !223

while.cond293:                                    ; preds = %land.rhs295
  %indvars.iv.next933 = add i64 %indvars.iv932, 1, !dbg !223
  %inc301 = add nsw i32 %jj.5853, 1, !dbg !234
  %85 = trunc i64 %indvars.iv932 to i32, !dbg !223
  %cmp294 = icmp slt i32 %85, %sub257, !dbg !223
  br i1 %cmp294, label %land.rhs295, label %if.then304, !dbg !223

land.rhs295:                                      ; preds = %while.cond293, %land.rhs295.lr.ph
  %indvars.iv932 = phi i64 [ %indvars.iv.next933, %while.cond293 ], [ %84, %land.rhs295.lr.ph ]
  %jj.5853 = phi i32 [ %inc301, %while.cond293 ], [ %jj.4857, %land.rhs295.lr.ph ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !223
  %arrayidx297 = getelementptr inbounds i32* %75, i64 %indvars.iv932, !dbg !223
  %86 = load i32* %arrayidx297, align 4, !dbg !223, !tbaa !125
  %cmp298 = icmp eq i32 %add292, %86, !dbg !223
  call void @llvm.dbg.value(metadata !{i32 %inc301}, i64 0, metadata !48), !dbg !234
  br i1 %cmp298, label %if.end306, label %while.cond293

if.then304:                                       ; preds = %for.body289, %while.cond293
  %87 = load %struct._IO_FILE** @stderr, align 8, !dbg !236, !tbaa !120
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([80 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %ichv, i32 %chvsize, i32* %chvind, double* %chvent, i32 %add292) #6, !dbg !236
  call void @exit(i32 -1) #7, !dbg !238
  unreachable, !dbg !238

if.end306:                                        ; preds = %land.rhs295
  %sub307 = sub nsw i32 %jj.5853, %iloc.0.lcssa, !dbg !239
  store i32 %sub307, i32* %arrayidx291, align 4, !dbg !239, !tbaa !125
  %indvars.iv.next938 = add i64 %indvars.iv937, 1, !dbg !221
  %88 = trunc i64 %indvars.iv.next938 to i32, !dbg !221
  %cmp288 = icmp slt i32 %88, %chvsize, !dbg !221
  br i1 %cmp288, label %for.body289, label %for.end312, !dbg !221

for.end312:                                       ; preds = %if.end306, %for.cond287.preheader
  %call313 = call double* @Chv_diagLocation(%struct._Chv* %chv, i32 %iloc.0.lcssa) #6, !dbg !240
  call void @llvm.dbg.value(metadata !{double* %call313}, i64 0, metadata !57), !dbg !240
  %89 = load i32* %type, align 4, !dbg !241, !tbaa !125
  switch i32 %89, label %for.cond466.preheader [
    i32 1, label %if.then316
    i32 2, label %if.then353
  ], !dbg !241

if.then316:                                       ; preds = %for.end312
  %90 = load double* %alpha, align 8, !dbg !242, !tbaa !138
  %cmp318 = fcmp oeq double %90, 1.000000e+00, !dbg !242
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !244
  br i1 %cmp318, label %for.cond320.preheader, label %for.cond334.preheader, !dbg !242

for.cond334.preheader:                            ; preds = %if.then316
  br i1 %cmp259866, label %for.body336, label %return, !dbg !247

for.cond320.preheader:                            ; preds = %if.then316
  br i1 %cmp259866, label %for.body322, label %return, !dbg !244

for.body322:                                      ; preds = %for.cond320.preheader, %for.body322
  %indvars.iv911 = phi i64 [ %indvars.iv.next912, %for.body322 ], [ 0, %for.cond320.preheader ]
  %arrayidx324 = getelementptr inbounds double* %chvent, i64 %indvars.iv911, !dbg !250
  %91 = load double* %arrayidx324, align 8, !dbg !250, !tbaa !138
  %arrayidx326 = getelementptr inbounds i32* %chvind, i64 %indvars.iv911, !dbg !250
  %92 = load i32* %arrayidx326, align 4, !dbg !250, !tbaa !125
  %idxprom327 = sext i32 %92 to i64, !dbg !250
  %arrayidx328 = getelementptr inbounds double* %call313, i64 %idxprom327, !dbg !250
  %93 = load double* %arrayidx328, align 8, !dbg !250, !tbaa !138
  %add329 = fadd double %91, %93, !dbg !250
  store double %add329, double* %arrayidx328, align 8, !dbg !250, !tbaa !138
  %indvars.iv.next912 = add i64 %indvars.iv911, 1, !dbg !244
  %lftr.wideiv913 = trunc i64 %indvars.iv.next912 to i32, !dbg !244
  %exitcond914 = icmp eq i32 %lftr.wideiv913, %chvsize, !dbg !244
  br i1 %exitcond914, label %for.cond466.preheader, label %for.body322, !dbg !244

for.cond466.preheader:                            ; preds = %for.body430, %for.body395, %for.body362, %for.body336, %for.body322, %for.end312
  br i1 %cmp259866, label %for.body468.lr.ph, label %return, !dbg !252

for.body468.lr.ph:                                ; preds = %for.cond466.preheader
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !254
  %94 = load i32** %colind, align 8, !dbg !254, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !257
  br label %for.body468, !dbg !252

for.body336:                                      ; preds = %for.cond334.preheader, %for.body336.for.body336_crit_edge
  %95 = phi double [ %.pre957, %for.body336.for.body336_crit_edge ], [ %90, %for.cond334.preheader ]
  %indvars.iv915 = phi i64 [ %indvars.iv.next916, %for.body336.for.body336_crit_edge ], [ 0, %for.cond334.preheader ]
  %arrayidx339 = getelementptr inbounds double* %chvent, i64 %indvars.iv915, !dbg !259
  %96 = load double* %arrayidx339, align 8, !dbg !259, !tbaa !138
  %mul340 = fmul double %95, %96, !dbg !259
  %arrayidx342 = getelementptr inbounds i32* %chvind, i64 %indvars.iv915, !dbg !259
  %97 = load i32* %arrayidx342, align 4, !dbg !259, !tbaa !125
  %idxprom343 = sext i32 %97 to i64, !dbg !259
  %arrayidx344 = getelementptr inbounds double* %call313, i64 %idxprom343, !dbg !259
  %98 = load double* %arrayidx344, align 8, !dbg !259, !tbaa !138
  %add345 = fadd double %mul340, %98, !dbg !259
  store double %add345, double* %arrayidx344, align 8, !dbg !259, !tbaa !138
  %indvars.iv.next916 = add i64 %indvars.iv915, 1, !dbg !247
  %lftr.wideiv917 = trunc i64 %indvars.iv.next916 to i32, !dbg !247
  %exitcond918 = icmp eq i32 %lftr.wideiv917, %chvsize, !dbg !247
  br i1 %exitcond918, label %for.cond466.preheader, label %for.body336.for.body336_crit_edge, !dbg !247

for.body336.for.body336_crit_edge:                ; preds = %for.body336
  %.pre957 = load double* %alpha, align 8, !dbg !259, !tbaa !138
  br label %for.body336, !dbg !247

if.then353:                                       ; preds = %for.end312
  %99 = load double* %alpha, align 8, !dbg !261, !tbaa !138
  %cmp355 = fcmp oeq double %99, 1.000000e+00, !dbg !261
  br i1 %cmp355, label %land.lhs.true356, label %if.else386, !dbg !261

land.lhs.true356:                                 ; preds = %if.then353
  %arrayidx357 = getelementptr inbounds double* %alpha, i64 1, !dbg !261
  %100 = load double* %arrayidx357, align 8, !dbg !261, !tbaa !138
  %cmp358 = fcmp oeq double %100, 0.000000e+00, !dbg !261
  br i1 %cmp358, label %for.cond360.preheader, label %if.else386, !dbg !261

for.cond360.preheader:                            ; preds = %land.lhs.true356
  br i1 %cmp259866, label %for.body362, label %return, !dbg !262

for.body362:                                      ; preds = %for.cond360.preheader, %for.body362
  %indvars.iv919 = phi i64 [ %indvars.iv.next920, %for.body362 ], [ 0, %for.cond360.preheader ]
  %101 = trunc i64 %indvars.iv919 to i32, !dbg !265
  %mul363 = shl nsw i32 %101, 1, !dbg !265
  %idxprom364 = sext i32 %mul363 to i64, !dbg !265
  %arrayidx365 = getelementptr inbounds double* %chvent, i64 %idxprom364, !dbg !265
  %102 = load double* %arrayidx365, align 8, !dbg !265, !tbaa !138
  %arrayidx367 = getelementptr inbounds i32* %chvind, i64 %indvars.iv919, !dbg !265
  %103 = load i32* %arrayidx367, align 4, !dbg !265, !tbaa !125
  %mul368 = shl nsw i32 %103, 1, !dbg !265
  %idxprom369 = sext i32 %mul368 to i64, !dbg !265
  %arrayidx370 = getelementptr inbounds double* %call313, i64 %idxprom369, !dbg !265
  %104 = load double* %arrayidx370, align 8, !dbg !265, !tbaa !138
  %add371 = fadd double %102, %104, !dbg !265
  store double %add371, double* %arrayidx370, align 8, !dbg !265, !tbaa !138
  %add373783 = or i32 %mul363, 1, !dbg !267
  %idxprom374 = sext i32 %add373783 to i64, !dbg !267
  %arrayidx375 = getelementptr inbounds double* %chvent, i64 %idxprom374, !dbg !267
  %105 = load double* %arrayidx375, align 8, !dbg !267, !tbaa !138
  %add379784 = or i32 %mul368, 1, !dbg !267
  %idxprom380 = sext i32 %add379784 to i64, !dbg !267
  %arrayidx381 = getelementptr inbounds double* %call313, i64 %idxprom380, !dbg !267
  %106 = load double* %arrayidx381, align 8, !dbg !267, !tbaa !138
  %add382 = fadd double %105, %106, !dbg !267
  store double %add382, double* %arrayidx381, align 8, !dbg !267, !tbaa !138
  %indvars.iv.next920 = add i64 %indvars.iv919, 1, !dbg !262
  %lftr.wideiv921 = trunc i64 %indvars.iv.next920 to i32, !dbg !262
  %exitcond922 = icmp eq i32 %lftr.wideiv921, %chvsize, !dbg !262
  br i1 %exitcond922, label %for.cond466.preheader, label %for.body362, !dbg !262

if.else386:                                       ; preds = %land.lhs.true356, %if.then353
  %cmp388 = fcmp une double %99, 1.000000e+00, !dbg !268
  br i1 %cmp388, label %land.lhs.true389, label %for.cond428.preheader, !dbg !268

for.cond428.preheader:                            ; preds = %land.lhs.true389, %if.else386
  br i1 %cmp259866, label %for.body430.lr.ph, label %return, !dbg !269

for.body430.lr.ph:                                ; preds = %for.cond428.preheader
  %arrayidx432 = getelementptr inbounds double* %alpha, i64 1, !dbg !271
  br label %for.body430, !dbg !269

land.lhs.true389:                                 ; preds = %if.else386
  %arrayidx390 = getelementptr inbounds double* %alpha, i64 1, !dbg !268
  %107 = load double* %arrayidx390, align 8, !dbg !268, !tbaa !138
  %cmp391 = fcmp oeq double %107, 0.000000e+00, !dbg !268
  br i1 %cmp391, label %for.cond393.preheader, label %for.cond428.preheader, !dbg !268

for.cond393.preheader:                            ; preds = %land.lhs.true389
  br i1 %cmp259866, label %for.body395, label %return, !dbg !273

for.body395:                                      ; preds = %for.cond393.preheader, %for.body395.for.body395_crit_edge
  %108 = phi double [ %.pre958, %for.body395.for.body395_crit_edge ], [ %99, %for.cond393.preheader ]
  %indvars.iv923 = phi i64 [ %indvars.iv.next924, %for.body395.for.body395_crit_edge ], [ 0, %for.cond393.preheader ]
  %109 = trunc i64 %indvars.iv923 to i32, !dbg !276
  %mul397 = shl nsw i32 %109, 1, !dbg !276
  %idxprom398 = sext i32 %mul397 to i64, !dbg !276
  %arrayidx399 = getelementptr inbounds double* %chvent, i64 %idxprom398, !dbg !276
  %110 = load double* %arrayidx399, align 8, !dbg !276, !tbaa !138
  %mul400 = fmul double %108, %110, !dbg !276
  %arrayidx402 = getelementptr inbounds i32* %chvind, i64 %indvars.iv923, !dbg !276
  %111 = load i32* %arrayidx402, align 4, !dbg !276, !tbaa !125
  %mul403 = shl nsw i32 %111, 1, !dbg !276
  %idxprom404 = sext i32 %mul403 to i64, !dbg !276
  %arrayidx405 = getelementptr inbounds double* %call313, i64 %idxprom404, !dbg !276
  %112 = load double* %arrayidx405, align 8, !dbg !276, !tbaa !138
  %add406 = fadd double %mul400, %112, !dbg !276
  store double %add406, double* %arrayidx405, align 8, !dbg !276, !tbaa !138
  %113 = load double* %alpha, align 8, !dbg !278, !tbaa !138
  %add409781 = or i32 %mul397, 1, !dbg !278
  %idxprom410 = sext i32 %add409781 to i64, !dbg !278
  %arrayidx411 = getelementptr inbounds double* %chvent, i64 %idxprom410, !dbg !278
  %114 = load double* %arrayidx411, align 8, !dbg !278, !tbaa !138
  %mul412 = fmul double %113, %114, !dbg !278
  %add416782 = or i32 %mul403, 1, !dbg !278
  %idxprom417 = sext i32 %add416782 to i64, !dbg !278
  %arrayidx418 = getelementptr inbounds double* %call313, i64 %idxprom417, !dbg !278
  %115 = load double* %arrayidx418, align 8, !dbg !278, !tbaa !138
  %add419 = fadd double %mul412, %115, !dbg !278
  store double %add419, double* %arrayidx418, align 8, !dbg !278, !tbaa !138
  %indvars.iv.next924 = add i64 %indvars.iv923, 1, !dbg !273
  %lftr.wideiv925 = trunc i64 %indvars.iv.next924 to i32, !dbg !273
  %exitcond926 = icmp eq i32 %lftr.wideiv925, %chvsize, !dbg !273
  br i1 %exitcond926, label %for.cond466.preheader, label %for.body395.for.body395_crit_edge, !dbg !273

for.body395.for.body395_crit_edge:                ; preds = %for.body395
  %.pre958 = load double* %alpha, align 8, !dbg !276, !tbaa !138
  br label %for.body395, !dbg !273

for.body430:                                      ; preds = %for.body430.for.body430_crit_edge, %for.body430.lr.ph
  %116 = phi double [ %99, %for.body430.lr.ph ], [ %.pre959, %for.body430.for.body430_crit_edge ]
  %indvars.iv927 = phi i64 [ 0, %for.body430.lr.ph ], [ %indvars.iv.next928, %for.body430.for.body430_crit_edge ]
  call void @llvm.dbg.value(metadata !{double %116}, i64 0, metadata !65), !dbg !271
  %117 = load double* %arrayidx432, align 8, !dbg !271, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %117}, i64 0, metadata !69), !dbg !271
  %118 = trunc i64 %indvars.iv927 to i32, !dbg !279
  %mul433 = shl nsw i32 %118, 1, !dbg !279
  %idxprom434 = sext i32 %mul433 to i64, !dbg !279
  %arrayidx435 = getelementptr inbounds double* %chvent, i64 %idxprom434, !dbg !279
  %119 = load double* %arrayidx435, align 8, !dbg !279, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %119}, i64 0, metadata !70), !dbg !279
  %add437779 = or i32 %mul433, 1, !dbg !279
  %idxprom438 = sext i32 %add437779 to i64, !dbg !279
  %arrayidx439 = getelementptr inbounds double* %chvent, i64 %idxprom438, !dbg !279
  %120 = load double* %arrayidx439, align 8, !dbg !279, !tbaa !138
  call void @llvm.dbg.value(metadata !{double %120}, i64 0, metadata !71), !dbg !279
  %mul440 = fmul double %116, %119, !dbg !280
  %mul441 = fmul double %117, %120, !dbg !280
  %sub442 = fsub double %mul440, %mul441, !dbg !280
  %arrayidx444 = getelementptr inbounds i32* %chvind, i64 %indvars.iv927, !dbg !280
  %121 = load i32* %arrayidx444, align 4, !dbg !280, !tbaa !125
  %mul445 = shl nsw i32 %121, 1, !dbg !280
  %idxprom446 = sext i32 %mul445 to i64, !dbg !280
  %arrayidx447 = getelementptr inbounds double* %call313, i64 %idxprom446, !dbg !280
  %122 = load double* %arrayidx447, align 8, !dbg !280, !tbaa !138
  %add448 = fadd double %122, %sub442, !dbg !280
  store double %add448, double* %arrayidx447, align 8, !dbg !280, !tbaa !138
  %mul449 = fmul double %116, %120, !dbg !281
  %mul450 = fmul double %117, %119, !dbg !281
  %add451 = fadd double %mul450, %mul449, !dbg !281
  %add455780 = or i32 %mul445, 1, !dbg !281
  %idxprom456 = sext i32 %add455780 to i64, !dbg !281
  %arrayidx457 = getelementptr inbounds double* %call313, i64 %idxprom456, !dbg !281
  %123 = load double* %arrayidx457, align 8, !dbg !281, !tbaa !138
  %add458 = fadd double %add451, %123, !dbg !281
  store double %add458, double* %arrayidx457, align 8, !dbg !281, !tbaa !138
  %indvars.iv.next928 = add i64 %indvars.iv927, 1, !dbg !269
  %lftr.wideiv929 = trunc i64 %indvars.iv.next928 to i32, !dbg !269
  %exitcond930 = icmp eq i32 %lftr.wideiv929, %chvsize, !dbg !269
  br i1 %exitcond930, label %for.cond466.preheader, label %for.body430.for.body430_crit_edge, !dbg !269

for.body430.for.body430_crit_edge:                ; preds = %for.body430
  %.pre959 = load double* %alpha, align 8, !dbg !271, !tbaa !138
  br label %for.body430, !dbg !269

for.body468:                                      ; preds = %for.inc491, %for.body468.lr.ph
  %indvars.iv907 = phi i64 [ 0, %for.body468.lr.ph ], [ %indvars.iv.next908, %for.inc491 ]
  %arrayidx470 = getelementptr inbounds i32* %chvind, i64 %indvars.iv907, !dbg !282
  %124 = load i32* %arrayidx470, align 4, !dbg !282, !tbaa !125
  %cmp471 = icmp slt i32 %124, 0, !dbg !282
  br i1 %cmp471, label %if.then472, label %if.else481, !dbg !282

if.then472:                                       ; preds = %for.body468
  %sub475 = sub nsw i32 %iloc.0.lcssa, %124, !dbg !254
  %idxprom476 = sext i32 %sub475 to i64, !dbg !254
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !254
  %arrayidx477 = getelementptr inbounds i32* %94, i64 %idxprom476, !dbg !254
  %125 = load i32* %arrayidx477, align 4, !dbg !254, !tbaa !125
  %sub478 = sub nsw i32 %ichv, %125, !dbg !254
  br label %for.inc491, !dbg !283

if.else481:                                       ; preds = %for.body468
  %add484 = add nsw i32 %124, %iloc.0.lcssa, !dbg !257
  %idxprom485 = sext i32 %add484 to i64, !dbg !257
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !56), !dbg !257
  %arrayidx486 = getelementptr inbounds i32* %94, i64 %idxprom485, !dbg !257
  %126 = load i32* %arrayidx486, align 4, !dbg !257, !tbaa !125
  %sub487 = sub nsw i32 %126, %ichv, !dbg !257
  br label %for.inc491

for.inc491:                                       ; preds = %if.then472, %if.else481
  %storemerge = phi i32 [ %sub487, %if.else481 ], [ %sub478, %if.then472 ]
  store i32 %storemerge, i32* %arrayidx470, align 4, !dbg !254, !tbaa !125
  %indvars.iv.next908 = add i64 %indvars.iv907, 1, !dbg !252
  %lftr.wideiv909 = trunc i64 %indvars.iv.next908 to i32, !dbg !252
  %exitcond910 = icmp eq i32 %lftr.wideiv909, %chvsize, !dbg !252
  br i1 %exitcond910, label %return, label %for.body468, !dbg !252

return:                                           ; preds = %for.cond320.preheader, %for.cond334.preheader, %for.cond360.preheader, %for.cond393.preheader, %for.cond428.preheader, %for.cond88.preheader, %for.cond101.preheader, %for.cond131.preheader, %for.cond164.preheader, %for.cond198.preheader, %for.cond466.preheader, %for.inc491, %for.cond239.preheader, %for.body241, %if.end46, %sw.epilog21, %land.lhs.true, %land.lhs.true33
  ret void, !dbg !284
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #4

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare double* @Chv_diagLocation(%struct._Chv*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @Chv_assembleChv(%struct._Chv* %chvJ, %struct._Chv* %chvI) #0 {
entry:
  %ncolI = alloca i32, align 4
  %ncolJ = alloca i32, align 4
  %nDI = alloca i32, align 4
  %nDJ = alloca i32, align 4
  %nLI = alloca i32, align 4
  %nLJ = alloca i32, align 4
  %nrowI = alloca i32, align 4
  %nrowJ = alloca i32, align 4
  %nUI = alloca i32, align 4
  %nUJ = alloca i32, align 4
  %colindJ = alloca i32*, align 8
  %colindI = alloca i32*, align 8
  %rowindI = alloca i32*, align 8
  %rowindJ = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvJ}, i64 0, metadata !76), !dbg !285
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chvI}, i64 0, metadata !77), !dbg !286
  call void @llvm.dbg.declare(metadata !{i32* %ncolI}, metadata !84), !dbg !287
  call void @llvm.dbg.declare(metadata !{i32* %ncolJ}, metadata !85), !dbg !287
  call void @llvm.dbg.declare(metadata !{i32* %nDI}, metadata !86), !dbg !287
  call void @llvm.dbg.declare(metadata !{i32* %nDJ}, metadata !87), !dbg !287
  call void @llvm.dbg.declare(metadata !{i32* %nLI}, metadata !88), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nLJ}, metadata !89), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nrowI}, metadata !90), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nrowJ}, metadata !91), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nUI}, metadata !92), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32* %nUJ}, metadata !93), !dbg !288
  call void @llvm.dbg.declare(metadata !{i32** %colindJ}, metadata !95), !dbg !289
  call void @llvm.dbg.declare(metadata !{i32** %colindI}, metadata !96), !dbg !289
  call void @llvm.dbg.declare(metadata !{i32** %rowindI}, metadata !97), !dbg !289
  call void @llvm.dbg.declare(metadata !{i32** %rowindJ}, metadata !98), !dbg !289
  %cmp = icmp eq %struct._Chv* %chvJ, null, !dbg !290
  %cmp1 = icmp eq %struct._Chv* %chvI, null, !dbg !290
  %or.cond = or i1 %cmp, %cmp1, !dbg !290
  br i1 %or.cond, label %if.then, label %if.end, !dbg !290

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !291, !tbaa !120
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #6, !dbg !291
  call void @exit(i32 -1) #7, !dbg !293
  unreachable, !dbg !293

if.end:                                           ; preds = %entry
  %symflag = getelementptr inbounds %struct._Chv* %chvI, i64 0, i32 5, !dbg !294
  %1 = load i32* %symflag, align 4, !dbg !294, !tbaa !125
  %switch = icmp ult i32 %1, 3, !dbg !294
  br i1 %switch, label %if.end12, label %if.then9, !dbg !294

if.then9:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !295, !tbaa !120
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str11, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %1) #6, !dbg !295
  call void @exit(i32 -1) #7, !dbg !297
  unreachable, !dbg !297

if.end12:                                         ; preds = %if.end
  %symflag14 = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 5, !dbg !298
  %3 = load i32* %symflag14, align 4, !dbg !298, !tbaa !125
  %cmp15 = icmp eq i32 %1, %3, !dbg !298
  br i1 %cmp15, label %if.end20, label %if.then16, !dbg !298

if.then16:                                        ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !299, !tbaa !120
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %1, i32 %3) #6, !dbg !299
  call void @exit(i32 -1) #7, !dbg !301
  unreachable, !dbg !301

if.end20:                                         ; preds = %if.end12
  call void @Chv_dimensions(%struct._Chv* %chvJ, i32* %nDJ, i32* %nLJ, i32* %nUJ) #6, !dbg !302
  call void @Chv_dimensions(%struct._Chv* %chvI, i32* %nDI, i32* %nLI, i32* %nUI) #6, !dbg !303
  call void @llvm.dbg.value(metadata !{i32* %nDI}, i64 0, metadata !86), !dbg !304
  %5 = load i32* %nDI, align 4, !dbg !304, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32* %nLI}, i64 0, metadata !88), !dbg !304
  %6 = load i32* %nLI, align 4, !dbg !304, !tbaa !125
  %add = add nsw i32 %6, %5, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %nDJ}, i64 0, metadata !87), !dbg !304
  %7 = load i32* %nDJ, align 4, !dbg !304, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32* %nLJ}, i64 0, metadata !89), !dbg !304
  %8 = load i32* %nLJ, align 4, !dbg !304, !tbaa !125
  %add21 = add nsw i32 %8, %7, !dbg !304
  %cmp22 = icmp sgt i32 %add, %add21, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %nUI}, i64 0, metadata !92), !dbg !305
  %.pre = load i32* %nUI, align 4, !dbg !305, !tbaa !125
  br i1 %cmp22, label %if.end20.if.then27_crit_edge, label %lor.lhs.false23, !dbg !304

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @llvm.dbg.value(metadata !{i32* %nUJ}, i64 0, metadata !93), !dbg !305
  %.pre577 = load i32* %nUJ, align 4, !dbg !305, !tbaa !125
  br label %if.then27, !dbg !304

lor.lhs.false23:                                  ; preds = %if.end20
  %add24 = add nsw i32 %.pre, %5, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %nUJ}, i64 0, metadata !93), !dbg !304
  %9 = load i32* %nUJ, align 4, !dbg !304, !tbaa !125
  %add25 = add nsw i32 %9, %7, !dbg !304
  %cmp26 = icmp sgt i32 %add24, %add25, !dbg !304
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !304

if.then27:                                        ; preds = %if.end20.if.then27_crit_edge, %lor.lhs.false23
  %10 = phi i32 [ %.pre577, %if.end20.if.then27_crit_edge ], [ %9, %lor.lhs.false23 ]
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !305, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nDI}, i64 0, metadata !86), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %nLI}, i64 0, metadata !88), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %nUI}, i64 0, metadata !92), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %nDJ}, i64 0, metadata !87), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %nLJ}, i64 0, metadata !89), !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %nUJ}, i64 0, metadata !93), !dbg !305
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([116 x i8]* @.str13, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %5, i32 %6, i32 %.pre, i32 %7, i32 %8, i32 %10) #6, !dbg !305
  call void @exit(i32 -1) #7, !dbg !307
  unreachable, !dbg !307

if.end29:                                         ; preds = %lor.lhs.false23
  call void @Chv_columnIndices(%struct._Chv* %chvJ, i32* %ncolJ, i32** %colindJ) #6, !dbg !308
  call void @Chv_columnIndices(%struct._Chv* %chvI, i32* %ncolI, i32** %colindI) #6, !dbg !309
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !310
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !310
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !310
  %12 = load i32* %ncolI, align 4, !dbg !310, !tbaa !125
  %cmp30505 = icmp sgt i32 %12, 0, !dbg !310
  br i1 %cmp30505, label %while.cond.preheader.lr.ph, label %for.end, !dbg !310

while.cond.preheader.lr.ph:                       ; preds = %if.end29
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !312
  %13 = load i32** %colindI, align 8, !dbg !312, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !314
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !95), !dbg !314
  %14 = load i32** %colindJ, align 8, !dbg !314, !tbaa !120
  br label %while.cond.preheader, !dbg !310

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %if.end37
  %15 = phi i32 [ %12, %while.cond.preheader.lr.ph ], [ %21, %if.end37 ]
  %indvars.iv575 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next576, %if.end37 ]
  %jj.0507 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %jj.1.lcssa, %if.end37 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !314
  %16 = load i32* %ncolJ, align 4, !dbg !314, !tbaa !125
  %cmp31502 = icmp slt i32 %jj.0507, %16, !dbg !314
  br i1 %cmp31502, label %land.rhs.lr.ph, label %while.end, !dbg !314

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %arrayidx = getelementptr inbounds i32* %13, i64 %indvars.iv575, !dbg !314
  %17 = load i32* %arrayidx, align 4, !dbg !314, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !314
  %18 = sext i32 %jj.0507 to i64
  br label %land.rhs, !dbg !314

while.cond:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !314
  %19 = trunc i64 %indvars.iv.next573 to i32, !dbg !314
  %cmp31 = icmp slt i32 %19, %16, !dbg !314
  br i1 %cmp31, label %land.rhs, label %while.end, !dbg !314

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.cond
  %indvars.iv572 = phi i64 [ %18, %land.rhs.lr.ph ], [ %indvars.iv.next573, %while.cond ]
  %jj.1503 = phi i32 [ %jj.0507, %land.rhs.lr.ph ], [ %inc, %while.cond ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !314
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !95), !dbg !314
  %arrayidx33 = getelementptr inbounds i32* %14, i64 %indvars.iv572, !dbg !314
  %20 = load i32* %arrayidx33, align 4, !dbg !314, !tbaa !125
  %cmp34 = icmp eq i32 %17, %20, !dbg !314
  %indvars.iv.next573 = add i64 %indvars.iv572, 1, !dbg !314
  %inc = add nsw i32 %jj.1503, 1, !dbg !315
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !83), !dbg !315
  br i1 %cmp34, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs, %while.cond.preheader
  %jj.1.lcssa = phi i32 [ %jj.0507, %while.cond.preheader ], [ %jj.1503, %land.rhs ], [ %inc, %while.cond ]
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !317
  %cmp35 = icmp eq i32 %jj.1.lcssa, %16, !dbg !317
  br i1 %cmp35, label %for.end, label %if.end37, !dbg !317

if.end37:                                         ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !312
  %arrayidx39 = getelementptr inbounds i32* %13, i64 %indvars.iv575, !dbg !312
  store i32 %jj.1.lcssa, i32* %arrayidx39, align 4, !dbg !312, !tbaa !125
  %indvars.iv.next576 = add i64 %indvars.iv575, 1, !dbg !310
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !310
  %21 = load i32* %ncolI, align 4, !dbg !310, !tbaa !125
  %22 = trunc i64 %indvars.iv.next576 to i32, !dbg !310
  %cmp30 = icmp slt i32 %22, %21, !dbg !310
  br i1 %cmp30, label %while.cond.preheader, label %for.end, !dbg !310

for.end:                                          ; preds = %if.end37, %while.end, %if.end29
  %23 = phi i32 [ %12, %if.end29 ], [ %15, %while.end ], [ %21, %if.end37 ]
  %jj.2 = phi i32 [ 0, %if.end29 ], [ %16, %while.end ], [ %jj.1.lcssa, %if.end37 ]
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !318
  %24 = load i32* %ncolJ, align 4, !dbg !318, !tbaa !125
  %cmp41 = icmp eq i32 %jj.2, %24, !dbg !318
  br i1 %cmp41, label %if.then42, label %if.end46, !dbg !318

if.then42:                                        ; preds = %for.end
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !319, !tbaa !120
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([82 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #6, !dbg !319
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !120
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %26), !dbg !321
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !322, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !322
  %29 = load i32* %ncolI, align 4, !dbg !322, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !322
  %30 = load i32** %colindI, align 8, !dbg !322, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %28, i32 %29, i32* %30) #6, !dbg !322
  %31 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !120
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %31), !dbg !323
  %33 = load %struct._IO_FILE** @stderr, align 8, !dbg !324, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolJ}, i64 0, metadata !85), !dbg !324
  %34 = load i32* %ncolJ, align 4, !dbg !324, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !95), !dbg !324
  %35 = load i32** %colindJ, align 8, !dbg !324, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %33, i32 %34, i32* %35) #6, !dbg !324
  call void @exit(i32 -1) #7, !dbg !325
  unreachable, !dbg !325

if.end46:                                         ; preds = %for.end
  %36 = load i32* %symflag14, align 4, !dbg !326, !tbaa !125
  switch i32 %36, label %for.cond87.preheader [
    i32 0, label %if.then52
    i32 1, label %if.then52
    i32 2, label %if.then55
  ], !dbg !326

if.then52:                                        ; preds = %if.end46, %if.end46
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !327
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !90), !dbg !327
  store i32 %23, i32* %nrowI, align 4, !dbg !327, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !329
  %37 = load i32** %colindI, align 8, !dbg !329, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %37}, i64 0, metadata !97), !dbg !329
  store i32* %37, i32** %rowindI, align 8, !dbg !329, !tbaa !120
  br label %for.cond87.preheader, !dbg !330

for.cond87.preheader:                             ; preds = %if.end46, %for.end78, %if.then52
  call void @llvm.dbg.value(metadata !{i32* %nDI}, i64 0, metadata !86), !dbg !331
  %38 = load i32* %nDI, align 4, !dbg !331, !tbaa !125
  %cmp88493 = icmp sgt i32 %38, 0, !dbg !331
  br i1 %cmp88493, label %for.body89.lr.ph, label %for.cond279.preheader, !dbg !331

for.body89.lr.ph:                                 ; preds = %for.cond87.preheader
  %type = getelementptr inbounds %struct._Chv* %chvJ, i64 0, i32 4, !dbg !333
  br label %for.body89, !dbg !331

if.then55:                                        ; preds = %if.end46
  call void @Chv_rowIndices(%struct._Chv* %chvJ, i32* %nrowJ, i32** %rowindJ) #6, !dbg !335
  call void @Chv_rowIndices(%struct._Chv* %chvI, i32* %nrowI, i32** %rowindI) #6, !dbg !337
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !80), !dbg !338
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !338
  %39 = load i32* %nrowI, align 4, !dbg !338, !tbaa !125
  %cmp57498 = icmp sgt i32 %39, 0, !dbg !338
  br i1 %cmp57498, label %while.cond59.preheader.lr.ph, label %for.end78, !dbg !338

while.cond59.preheader.lr.ph:                     ; preds = %if.then55
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !340
  %40 = load i32** %rowindI, align 8, !dbg !340, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !342
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !98), !dbg !342
  %41 = load i32** %rowindJ, align 8, !dbg !342, !tbaa !120
  br label %while.cond59.preheader, !dbg !338

while.cond59.preheader:                           ; preds = %while.cond59.preheader.lr.ph, %if.end73
  %indvars.iv568 = phi i64 [ 0, %while.cond59.preheader.lr.ph ], [ %indvars.iv.next569, %if.end73 ]
  %jj.3500 = phi i32 [ 0, %while.cond59.preheader.lr.ph ], [ %jj.4.lcssa, %if.end73 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !342
  %42 = load i32* %nrowJ, align 4, !dbg !342, !tbaa !125
  %cmp60496 = icmp slt i32 %jj.3500, %42, !dbg !342
  br i1 %cmp60496, label %land.rhs61.lr.ph, label %while.end70, !dbg !342

land.rhs61.lr.ph:                                 ; preds = %while.cond59.preheader
  %arrayidx63 = getelementptr inbounds i32* %40, i64 %indvars.iv568, !dbg !342
  %43 = load i32* %arrayidx63, align 4, !dbg !342, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !342
  %44 = sext i32 %jj.3500 to i64
  br label %land.rhs61, !dbg !342

while.cond59:                                     ; preds = %land.rhs61
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !342
  %45 = trunc i64 %indvars.iv.next566 to i32, !dbg !342
  %cmp60 = icmp slt i32 %45, %42, !dbg !342
  br i1 %cmp60, label %land.rhs61, label %while.end70, !dbg !342

land.rhs61:                                       ; preds = %land.rhs61.lr.ph, %while.cond59
  %indvars.iv565 = phi i64 [ %44, %land.rhs61.lr.ph ], [ %indvars.iv.next566, %while.cond59 ]
  %jj.4497 = phi i32 [ %jj.3500, %land.rhs61.lr.ph ], [ %inc69, %while.cond59 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !342
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !98), !dbg !342
  %arrayidx65 = getelementptr inbounds i32* %41, i64 %indvars.iv565, !dbg !342
  %46 = load i32* %arrayidx65, align 4, !dbg !342, !tbaa !125
  %cmp66 = icmp eq i32 %43, %46, !dbg !342
  %indvars.iv.next566 = add i64 %indvars.iv565, 1, !dbg !342
  %inc69 = add nsw i32 %jj.4497, 1, !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !83), !dbg !343
  br i1 %cmp66, label %while.end70, label %while.cond59

while.end70:                                      ; preds = %while.cond59, %land.rhs61, %while.cond59.preheader
  %jj.4.lcssa = phi i32 [ %jj.3500, %while.cond59.preheader ], [ %jj.4497, %land.rhs61 ], [ %inc69, %while.cond59 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !345
  %cmp71 = icmp eq i32 %jj.4.lcssa, %42, !dbg !345
  br i1 %cmp71, label %for.end78, label %if.end73, !dbg !345

if.end73:                                         ; preds = %while.end70
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !340
  %arrayidx75 = getelementptr inbounds i32* %40, i64 %indvars.iv568, !dbg !340
  store i32 %jj.4.lcssa, i32* %arrayidx75, align 4, !dbg !340, !tbaa !125
  %indvars.iv.next569 = add i64 %indvars.iv568, 1, !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !338
  %47 = load i32* %nrowI, align 4, !dbg !338, !tbaa !125
  %48 = trunc i64 %indvars.iv.next569 to i32, !dbg !338
  %cmp57 = icmp slt i32 %48, %47, !dbg !338
  br i1 %cmp57, label %while.cond59.preheader, label %for.end78, !dbg !338

for.end78:                                        ; preds = %if.end73, %while.end70, %if.then55
  %jj.5 = phi i32 [ 0, %if.then55 ], [ %42, %while.end70 ], [ %jj.4.lcssa, %if.end73 ]
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !346
  %49 = load i32* %nrowJ, align 4, !dbg !346, !tbaa !125
  %cmp79 = icmp eq i32 %jj.5, %49, !dbg !346
  br i1 %cmp79, label %if.then80, label %for.cond87.preheader, !dbg !346

if.then80:                                        ; preds = %for.end78
  %50 = load %struct._IO_FILE** @stderr, align 8, !dbg !347, !tbaa !120
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([79 x i8]* @.str17, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI) #6, !dbg !347
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !349, !tbaa !120
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %51), !dbg !349
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !350
  %54 = load i32* %nrowI, align 4, !dbg !350, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !350
  %55 = load i32** %rowindI, align 8, !dbg !350, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %53, i32 %54, i32* %55) #6, !dbg !350
  %56 = load %struct._IO_FILE** @stderr, align 8, !dbg !351, !tbaa !120
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %56), !dbg !351
  %58 = load %struct._IO_FILE** @stderr, align 8, !dbg !352, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nrowJ}, i64 0, metadata !91), !dbg !352
  %59 = load i32* %nrowJ, align 4, !dbg !352, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !98), !dbg !352
  %60 = load i32** %rowindJ, align 8, !dbg !352, !tbaa !120
  call void @IVfprintf(%struct._IO_FILE* %58, i32 %59, i32* %60) #6, !dbg !352
  call void @exit(i32 -1) #7, !dbg !353
  unreachable, !dbg !353

for.cond279.preheader:                            ; preds = %for.inc276, %for.cond87.preheader
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !354
  %61 = load i32* %ncolI, align 4, !dbg !354, !tbaa !125
  %cmp280466 = icmp sgt i32 %61, 0, !dbg !354
  br i1 %cmp280466, label %for.body281.lr.ph, label %for.end290, !dbg !354

for.body281.lr.ph:                                ; preds = %for.cond279.preheader
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !356
  %62 = load i32** %colindI, align 8, !dbg !356, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !95), !dbg !356
  %63 = load i32** %colindJ, align 8, !dbg !356, !tbaa !120
  br label %for.body281, !dbg !354

for.body89:                                       ; preds = %for.inc276.for.body89_crit_edge, %for.body89.lr.ph
  %indvars.iv557 = phi i64 [ 0, %for.body89.lr.ph ], [ %indvars.iv.next558, %for.inc276.for.body89_crit_edge ]
  %indvars.iv546 = phi i64 [ 1, %for.body89.lr.ph ], [ %indvars.iv.next547, %for.inc276.for.body89_crit_edge ]
  %ichvI.0494 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc277, %for.inc276.for.body89_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !358
  %64 = load i32** %colindI, align 8, !dbg !358, !tbaa !120
  %arrayidx91 = getelementptr inbounds i32* %64, i64 %indvars.iv557, !dbg !358
  %65 = load i32* %arrayidx91, align 4, !dbg !358, !tbaa !125
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !82), !dbg !358
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !359
  %66 = load i32** %rowindI, align 8, !dbg !359, !tbaa !120
  %arrayidx93 = getelementptr inbounds i32* %66, i64 %indvars.iv557, !dbg !359
  %67 = load i32* %arrayidx93, align 4, !dbg !359, !tbaa !125
  %cmp94 = icmp eq i32 %65, %67, !dbg !359
  br i1 %cmp94, label %if.end99, label %if.then95, !dbg !359

if.then95:                                        ; preds = %for.body89
  %68 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !120
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._Chv* %chvJ, %struct._Chv* %chvI, i32 %ichvI.0494, i32 %65, i32 %67) #6, !dbg !360
  call void @exit(i32 -1) #7, !dbg !362
  unreachable, !dbg !362

if.end99:                                         ; preds = %for.body89
  %69 = trunc i64 %indvars.iv557 to i32, !dbg !363
  %call100 = call double* @Chv_diagLocation(%struct._Chv* %chvI, i32 %69) #6, !dbg !363
  call void @llvm.dbg.value(metadata !{double* %call100}, i64 0, metadata !78), !dbg !363
  %call101 = call double* @Chv_diagLocation(%struct._Chv* %chvJ, i32 %65) #6, !dbg !364
  call void @llvm.dbg.value(metadata !{double* %call101}, i64 0, metadata !79), !dbg !364
  %70 = load i32* %type, align 4, !dbg !333, !tbaa !125
  switch i32 %70, label %if.end118 [
    i32 1, label %if.then103
    i32 2, label %if.then110
  ], !dbg !333

if.then103:                                       ; preds = %if.end99
  %71 = load double* %call100, align 8, !dbg !365, !tbaa !138
  %72 = load double* %call101, align 8, !dbg !365, !tbaa !138
  %add106 = fadd double %71, %72, !dbg !365
  store double %add106, double* %call101, align 8, !dbg !365, !tbaa !138
  br label %if.end118, !dbg !367

if.then110:                                       ; preds = %if.end99
  %73 = load double* %call100, align 8, !dbg !368, !tbaa !138
  %74 = load double* %call101, align 8, !dbg !368, !tbaa !138
  %add113 = fadd double %73, %74, !dbg !368
  store double %add113, double* %call101, align 8, !dbg !368, !tbaa !138
  %arrayidx114 = getelementptr inbounds double* %call100, i64 1, !dbg !370
  %75 = load double* %arrayidx114, align 8, !dbg !370, !tbaa !138
  %arrayidx115 = getelementptr inbounds double* %call101, i64 1, !dbg !370
  %76 = load double* %arrayidx115, align 8, !dbg !370, !tbaa !138
  %add116 = fadd double %75, %76, !dbg !370
  store double %add116, double* %arrayidx115, align 8, !dbg !370, !tbaa !138
  br label %if.end118, !dbg !371

if.end118:                                        ; preds = %if.end99, %if.then110, %if.then103
  %77 = load i32* %symflag14, align 4, !dbg !372, !tbaa !125
  switch i32 %77, label %for.inc276 [
    i32 0, label %if.then124
    i32 1, label %if.then124
    i32 2, label %if.then178
  ], !dbg !372

if.then124:                                       ; preds = %if.end118, %if.end118
  switch i32 %70, label %for.inc276 [
    i32 1, label %for.cond129.preheader
    i32 2, label %for.cond148.preheader
  ], !dbg !373

for.cond129.preheader:                            ; preds = %if.then124
  %78 = add nsw i64 %indvars.iv557, 1, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !375
  %79 = load i32* %ncolI, align 4, !dbg !375, !tbaa !125
  %80 = trunc i64 %78 to i32, !dbg !375
  %cmp130488 = icmp slt i32 %80, %79, !dbg !375
  br i1 %cmp130488, label %for.body131.lr.ph, label %for.inc276, !dbg !375

for.body131.lr.ph:                                ; preds = %for.cond129.preheader
  %ii.2487 = add nsw i32 %ichvI.0494, 1, !dbg !375
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !378
  %81 = load i32** %colindI, align 8, !dbg !378, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !375
  br label %for.body131, !dbg !375

for.cond148.preheader:                            ; preds = %if.then124
  %82 = add nsw i64 %indvars.iv557, 1, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !380
  %83 = load i32* %ncolI, align 4, !dbg !380, !tbaa !125
  %84 = trunc i64 %82 to i32, !dbg !380
  %cmp149483 = icmp slt i32 %84, %83, !dbg !380
  br i1 %cmp149483, label %for.body150.lr.ph, label %for.inc276, !dbg !380

for.body150.lr.ph:                                ; preds = %for.cond148.preheader
  %ii.3482 = add nsw i32 %ichvI.0494, 1, !dbg !380
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !383
  %85 = load i32** %colindI, align 8, !dbg !383, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !380
  br label %for.body150, !dbg !380

for.body131:                                      ; preds = %for.body131.lr.ph, %for.body131
  %indvars.iv551 = phi i64 [ 1, %for.body131.lr.ph ], [ %indvars.iv.next552, %for.body131 ], !dbg !375
  %indvars.iv548 = phi i64 [ %indvars.iv546, %for.body131.lr.ph ], [ %indvars.iv.next549, %for.body131 ], !dbg !331
  %ii.2490 = phi i32 [ %ii.2487, %for.body131.lr.ph ], [ %ii.2, %for.body131 ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !378
  %arrayidx133 = getelementptr inbounds i32* %81, i64 %indvars.iv548, !dbg !378
  %86 = load i32* %arrayidx133, align 4, !dbg !378, !tbaa !125
  %sub = sub nsw i32 %86, %65, !dbg !378
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !94), !dbg !378
  %arrayidx135 = getelementptr inbounds double* %call100, i64 %indvars.iv551, !dbg !385
  %87 = load double* %arrayidx135, align 8, !dbg !385, !tbaa !138
  %idxprom136 = sext i32 %sub to i64, !dbg !385
  %arrayidx137 = getelementptr inbounds double* %call101, i64 %idxprom136, !dbg !385
  %88 = load double* %arrayidx137, align 8, !dbg !385, !tbaa !138
  %add138 = fadd double %87, %88, !dbg !385
  store double %add138, double* %arrayidx137, align 8, !dbg !385, !tbaa !138
  %indvars.iv.next552 = add i64 %indvars.iv551, 1, !dbg !375
  %ii.2 = add nsw i32 %ii.2490, 1, !dbg !375
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !375
  %cmp130 = icmp slt i32 %ii.2, %79, !dbg !375
  %indvars.iv.next549 = add i64 %indvars.iv548, 1, !dbg !375
  br i1 %cmp130, label %for.body131, label %for.inc276, !dbg !375

for.body150:                                      ; preds = %for.body150.lr.ph, %for.body150
  %indvars.iv544 = phi i64 [ 1, %for.body150.lr.ph ], [ %indvars.iv.next545, %for.body150 ], !dbg !380
  %indvars.iv541 = phi i64 [ %indvars.iv546, %for.body150.lr.ph ], [ %indvars.iv.next542, %for.body150 ], !dbg !331
  %ii.3485 = phi i32 [ %ii.3482, %for.body150.lr.ph ], [ %ii.3, %for.body150 ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !383
  %arrayidx152 = getelementptr inbounds i32* %85, i64 %indvars.iv541, !dbg !383
  %89 = load i32* %arrayidx152, align 4, !dbg !383, !tbaa !125
  %sub153 = sub nsw i32 %89, %65, !dbg !383
  call void @llvm.dbg.value(metadata !{i32 %sub153}, i64 0, metadata !94), !dbg !383
  %90 = trunc i64 %indvars.iv544 to i32, !dbg !386
  %mul = shl nsw i32 %90, 1, !dbg !386
  %idxprom154 = sext i32 %mul to i64, !dbg !386
  %arrayidx155 = getelementptr inbounds double* %call100, i64 %idxprom154, !dbg !386
  %91 = load double* %arrayidx155, align 8, !dbg !386, !tbaa !138
  %mul156 = shl nsw i32 %sub153, 1, !dbg !386
  %idxprom157 = sext i32 %mul156 to i64, !dbg !386
  %arrayidx158 = getelementptr inbounds double* %call101, i64 %idxprom157, !dbg !386
  %92 = load double* %arrayidx158, align 8, !dbg !386, !tbaa !138
  %add159 = fadd double %91, %92, !dbg !386
  store double %add159, double* %arrayidx158, align 8, !dbg !386, !tbaa !138
  %add161462 = or i32 %mul, 1, !dbg !387
  %idxprom162 = sext i32 %add161462 to i64, !dbg !387
  %arrayidx163 = getelementptr inbounds double* %call100, i64 %idxprom162, !dbg !387
  %93 = load double* %arrayidx163, align 8, !dbg !387, !tbaa !138
  %add165463 = or i32 %mul156, 1, !dbg !387
  %idxprom166 = sext i32 %add165463 to i64, !dbg !387
  %arrayidx167 = getelementptr inbounds double* %call101, i64 %idxprom166, !dbg !387
  %94 = load double* %arrayidx167, align 8, !dbg !387, !tbaa !138
  %add168 = fadd double %93, %94, !dbg !387
  store double %add168, double* %arrayidx167, align 8, !dbg !387, !tbaa !138
  %indvars.iv.next545 = add i64 %indvars.iv544, 1, !dbg !380
  %ii.3 = add nsw i32 %ii.3485, 1, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !380
  %cmp149 = icmp slt i32 %ii.3, %83, !dbg !380
  %indvars.iv.next542 = add i64 %indvars.iv541, 1, !dbg !380
  br i1 %cmp149, label %for.body150, label %for.inc276, !dbg !380

if.then178:                                       ; preds = %if.end118
  switch i32 %70, label %for.inc276 [
    i32 1, label %if.then181
    i32 2, label %if.then217
  ], !dbg !388

if.then181:                                       ; preds = %if.then178
  %95 = add nsw i64 %indvars.iv557, 1, !dbg !390
  %add182 = add nsw i32 %ichvI.0494, 1, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %add182}, i64 0, metadata !80), !dbg !390
  call void @llvm.dbg.value(metadata !393, i64 0, metadata !83), !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !390
  %96 = load i32* %ncolI, align 4, !dbg !390, !tbaa !125
  %97 = trunc i64 %95 to i32, !dbg !390
  %cmp184474 = icmp slt i32 %97, %96, !dbg !390
  br i1 %cmp184474, label %for.body185.lr.ph, label %for.cond199.loopexit, !dbg !390

for.body185.lr.ph:                                ; preds = %if.then181
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !394
  %98 = load i32** %colindI, align 8, !dbg !394, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !390
  br label %for.body185, !dbg !390

for.body185:                                      ; preds = %for.body185.lr.ph, %for.body185
  %indvars.iv529 = phi i64 [ %indvars.iv546, %for.body185.lr.ph ], [ %indvars.iv.next530, %for.body185 ], !dbg !331
  %indvars.iv525 = phi i64 [ 1, %for.body185.lr.ph ], [ %indvars.iv.next526, %for.body185 ]
  %ii.4475 = phi i32 [ %add182, %for.body185.lr.ph ], [ %inc195, %for.body185 ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !394
  %arrayidx187 = getelementptr inbounds i32* %98, i64 %indvars.iv529, !dbg !394
  %99 = load i32* %arrayidx187, align 4, !dbg !394, !tbaa !125
  %sub188 = sub nsw i32 %99, %65, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %sub188}, i64 0, metadata !94), !dbg !394
  %arrayidx190 = getelementptr inbounds double* %call100, i64 %indvars.iv525, !dbg !396
  %100 = load double* %arrayidx190, align 8, !dbg !396, !tbaa !138
  %idxprom191 = sext i32 %sub188 to i64, !dbg !396
  %arrayidx192 = getelementptr inbounds double* %call101, i64 %idxprom191, !dbg !396
  %101 = load double* %arrayidx192, align 8, !dbg !396, !tbaa !138
  %add193 = fadd double %100, %101, !dbg !396
  store double %add193, double* %arrayidx192, align 8, !dbg !396, !tbaa !138
  %inc195 = add nsw i32 %ii.4475, 1, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %inc195}, i64 0, metadata !80), !dbg !390
  %indvars.iv.next526 = add i64 %indvars.iv525, 1, !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !390
  %cmp184 = icmp slt i32 %inc195, %96, !dbg !390
  %indvars.iv.next530 = add i64 %indvars.iv529, 1, !dbg !390
  br i1 %cmp184, label %for.body185, label %for.cond199.loopexit, !dbg !390

for.cond199.loopexit:                             ; preds = %for.body185, %if.then181
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !397
  %102 = load i32* %nrowI, align 4, !dbg !397, !tbaa !125
  %cmp200478 = icmp slt i32 %97, %102, !dbg !397
  br i1 %cmp200478, label %for.body201.lr.ph, label %for.inc276, !dbg !397

for.body201.lr.ph:                                ; preds = %for.cond199.loopexit
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !399
  %103 = load i32** %rowindI, align 8, !dbg !399, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !397
  br label %for.body201, !dbg !397

for.body201:                                      ; preds = %for.body201.lr.ph, %for.body201
  %indvars.iv536 = phi i64 [ %indvars.iv546, %for.body201.lr.ph ], [ %indvars.iv.next537, %for.body201 ], !dbg !331
  %indvars.iv532 = phi i64 [ -1, %for.body201.lr.ph ], [ %indvars.iv.next533, %for.body201 ]
  %ii.5479 = phi i32 [ %add182, %for.body201.lr.ph ], [ %inc212, %for.body201 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !399
  %arrayidx203 = getelementptr inbounds i32* %103, i64 %indvars.iv536, !dbg !399
  %104 = load i32* %arrayidx203, align 4, !dbg !399, !tbaa !125
  %arrayidx206 = getelementptr inbounds double* %call100, i64 %indvars.iv532, !dbg !401
  %105 = load double* %arrayidx206, align 8, !dbg !401, !tbaa !138
  %sub204461 = sub i32 %65, %104, !dbg !401
  %idxprom208 = sext i32 %sub204461 to i64, !dbg !401
  %arrayidx209 = getelementptr inbounds double* %call101, i64 %idxprom208, !dbg !401
  %106 = load double* %arrayidx209, align 8, !dbg !401, !tbaa !138
  %add210 = fadd double %105, %106, !dbg !401
  store double %add210, double* %arrayidx209, align 8, !dbg !401, !tbaa !138
  %inc212 = add nsw i32 %ii.5479, 1, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %inc212}, i64 0, metadata !80), !dbg !397
  %indvars.iv.next533 = add i64 %indvars.iv532, -1, !dbg !397
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !397
  %cmp200 = icmp slt i32 %inc212, %102, !dbg !397
  %indvars.iv.next537 = add i64 %indvars.iv536, 1, !dbg !397
  br i1 %cmp200, label %for.body201, label %for.inc276, !dbg !397

if.then217:                                       ; preds = %if.then178
  %107 = add nsw i64 %indvars.iv557, 1, !dbg !402
  %add218 = add nsw i32 %ichvI.0494, 1, !dbg !402
  call void @llvm.dbg.value(metadata !{i32 %add218}, i64 0, metadata !80), !dbg !402
  call void @llvm.dbg.value(metadata !393, i64 0, metadata !83), !dbg !402
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !402
  %108 = load i32* %ncolI, align 4, !dbg !402, !tbaa !125
  %109 = trunc i64 %107 to i32, !dbg !402
  %cmp220468 = icmp slt i32 %109, %108, !dbg !402
  br i1 %cmp220468, label %for.body221.lr.ph, label %for.cond246.loopexit, !dbg !402

for.body221.lr.ph:                                ; preds = %if.then217
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !405
  %110 = load i32** %colindI, align 8, !dbg !405, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !402
  br label %for.body221, !dbg !402

for.body221:                                      ; preds = %for.body221.lr.ph, %for.body221
  %indvars.iv515 = phi i64 [ %indvars.iv546, %for.body221.lr.ph ], [ %indvars.iv.next516, %for.body221 ], !dbg !331
  %indvars.iv511 = phi i64 [ 1, %for.body221.lr.ph ], [ %indvars.iv.next512, %for.body221 ]
  %ii.6469 = phi i32 [ %add218, %for.body221.lr.ph ], [ %inc242, %for.body221 ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !405
  %arrayidx223 = getelementptr inbounds i32* %110, i64 %indvars.iv515, !dbg !405
  %111 = load i32* %arrayidx223, align 4, !dbg !405, !tbaa !125
  %sub224 = sub nsw i32 %111, %65, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %sub224}, i64 0, metadata !94), !dbg !405
  %112 = trunc i64 %indvars.iv511 to i32, !dbg !407
  %mul225 = shl nsw i32 %112, 1, !dbg !407
  %idxprom226 = sext i32 %mul225 to i64, !dbg !407
  %arrayidx227 = getelementptr inbounds double* %call100, i64 %idxprom226, !dbg !407
  %113 = load double* %arrayidx227, align 8, !dbg !407, !tbaa !138
  %mul228 = shl nsw i32 %sub224, 1, !dbg !407
  %idxprom229 = sext i32 %mul228 to i64, !dbg !407
  %arrayidx230 = getelementptr inbounds double* %call101, i64 %idxprom229, !dbg !407
  %114 = load double* %arrayidx230, align 8, !dbg !407, !tbaa !138
  %add231 = fadd double %113, %114, !dbg !407
  store double %add231, double* %arrayidx230, align 8, !dbg !407, !tbaa !138
  %add233459 = or i32 %mul225, 1, !dbg !408
  %idxprom234 = sext i32 %add233459 to i64, !dbg !408
  %arrayidx235 = getelementptr inbounds double* %call100, i64 %idxprom234, !dbg !408
  %115 = load double* %arrayidx235, align 8, !dbg !408, !tbaa !138
  %add237460 = or i32 %mul228, 1, !dbg !408
  %idxprom238 = sext i32 %add237460 to i64, !dbg !408
  %arrayidx239 = getelementptr inbounds double* %call101, i64 %idxprom238, !dbg !408
  %116 = load double* %arrayidx239, align 8, !dbg !408, !tbaa !138
  %add240 = fadd double %115, %116, !dbg !408
  store double %add240, double* %arrayidx239, align 8, !dbg !408, !tbaa !138
  %inc242 = add nsw i32 %ii.6469, 1, !dbg !402
  call void @llvm.dbg.value(metadata !{i32 %inc242}, i64 0, metadata !80), !dbg !402
  %indvars.iv.next512 = add i64 %indvars.iv511, 1, !dbg !402
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !402
  %cmp220 = icmp slt i32 %inc242, %108, !dbg !402
  %indvars.iv.next516 = add i64 %indvars.iv515, 1, !dbg !402
  br i1 %cmp220, label %for.body221, label %for.cond246.loopexit, !dbg !402

for.cond246.loopexit:                             ; preds = %for.body221, %if.then217
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !409
  %117 = load i32* %nrowI, align 4, !dbg !409, !tbaa !125
  %cmp247471 = icmp slt i32 %109, %117, !dbg !409
  br i1 %cmp247471, label %for.body248.lr.ph, label %for.inc276, !dbg !409

for.body248.lr.ph:                                ; preds = %for.cond246.loopexit
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !411
  %118 = load i32** %rowindI, align 8, !dbg !411, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !409
  br label %for.body248, !dbg !409

for.body248:                                      ; preds = %for.body248.lr.ph, %for.body248
  %indvars.iv522 = phi i64 [ %indvars.iv546, %for.body248.lr.ph ], [ %indvars.iv.next523, %for.body248 ], !dbg !331
  %indvars.iv518 = phi i64 [ -1, %for.body248.lr.ph ], [ %indvars.iv.next519, %for.body248 ]
  %ii.7472 = phi i32 [ %add218, %for.body248.lr.ph ], [ %inc269, %for.body248 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !411
  %arrayidx250 = getelementptr inbounds i32* %118, i64 %indvars.iv522, !dbg !411
  %119 = load i32* %arrayidx250, align 4, !dbg !411, !tbaa !125
  %120 = trunc i64 %indvars.iv518 to i32, !dbg !413
  %mul252 = shl nsw i32 %120, 1, !dbg !413
  %idxprom253 = sext i32 %mul252 to i64, !dbg !413
  %arrayidx254 = getelementptr inbounds double* %call100, i64 %idxprom253, !dbg !413
  %121 = load double* %arrayidx254, align 8, !dbg !413, !tbaa !138
  %suba = sub i32 %65, %119, !dbg !413
  %mul255 = shl i32 %suba, 1, !dbg !413
  %idxprom256 = sext i32 %mul255 to i64, !dbg !413
  %arrayidx257 = getelementptr inbounds double* %call101, i64 %idxprom256, !dbg !413
  %122 = load double* %arrayidx257, align 8, !dbg !413, !tbaa !138
  %add258 = fadd double %121, %122, !dbg !413
  store double %add258, double* %arrayidx257, align 8, !dbg !413, !tbaa !138
  %add260457 = or i32 %mul252, 1, !dbg !414
  %idxprom261 = sext i32 %add260457 to i64, !dbg !414
  %arrayidx262 = getelementptr inbounds double* %call100, i64 %idxprom261, !dbg !414
  %123 = load double* %arrayidx262, align 8, !dbg !414, !tbaa !138
  %add264458 = or i32 %mul255, 1, !dbg !414
  %idxprom265 = sext i32 %add264458 to i64, !dbg !414
  %arrayidx266 = getelementptr inbounds double* %call101, i64 %idxprom265, !dbg !414
  %124 = load double* %arrayidx266, align 8, !dbg !414, !tbaa !138
  %add267 = fadd double %123, %124, !dbg !414
  store double %add267, double* %arrayidx266, align 8, !dbg !414, !tbaa !138
  %inc269 = add nsw i32 %ii.7472, 1, !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %inc269}, i64 0, metadata !80), !dbg !409
  %indvars.iv.next519 = add i64 %indvars.iv518, -1, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !409
  %cmp247 = icmp slt i32 %inc269, %117, !dbg !409
  %indvars.iv.next523 = add i64 %indvars.iv522, 1, !dbg !409
  br i1 %cmp247, label %for.body248, label %for.inc276, !dbg !409

for.inc276:                                       ; preds = %for.cond129.preheader, %for.body131, %for.cond148.preheader, %for.body150, %for.cond199.loopexit, %for.body201, %for.cond246.loopexit, %for.body248, %if.then178, %if.end118, %if.then124
  %indvars.iv.next558 = add i64 %indvars.iv557, 1, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %inc277}, i64 0, metadata !81), !dbg !331
  call void @llvm.dbg.value(metadata !{i32* %nDI}, i64 0, metadata !86), !dbg !331
  %125 = load i32* %nDI, align 4, !dbg !331, !tbaa !125
  %126 = trunc i64 %indvars.iv.next558 to i32, !dbg !331
  %cmp88 = icmp slt i32 %126, %125, !dbg !331
  br i1 %cmp88, label %for.inc276.for.body89_crit_edge, label %for.cond279.preheader, !dbg !331

for.inc276.for.body89_crit_edge:                  ; preds = %for.inc276
  %indvars.iv.next547 = add i64 %indvars.iv546, 1, !dbg !331
  %inc277 = add nsw i32 %ichvI.0494, 1, !dbg !331
  br label %for.body89, !dbg !331

for.body281:                                      ; preds = %for.body281.lr.ph, %for.body281
  %indvars.iv509 = phi i64 [ 0, %for.body281.lr.ph ], [ %indvars.iv.next510, %for.body281 ]
  call void @llvm.dbg.value(metadata !{i32** %colindI}, i64 0, metadata !96), !dbg !356
  %arrayidx283 = getelementptr inbounds i32* %62, i64 %indvars.iv509, !dbg !356
  %127 = load i32* %arrayidx283, align 4, !dbg !356, !tbaa !125
  %idxprom284 = sext i32 %127 to i64, !dbg !356
  call void @llvm.dbg.value(metadata !{i32** %colindJ}, i64 0, metadata !95), !dbg !356
  %arrayidx285 = getelementptr inbounds i32* %63, i64 %idxprom284, !dbg !356
  %128 = load i32* %arrayidx285, align 4, !dbg !356, !tbaa !125
  store i32 %128, i32* %arrayidx283, align 4, !dbg !356, !tbaa !125
  %indvars.iv.next510 = add i64 %indvars.iv509, 1, !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %ncolI}, i64 0, metadata !84), !dbg !354
  %129 = load i32* %ncolI, align 4, !dbg !354, !tbaa !125
  %130 = trunc i64 %indvars.iv.next510 to i32, !dbg !354
  %cmp280 = icmp slt i32 %130, %129, !dbg !354
  br i1 %cmp280, label %for.body281, label %for.end290, !dbg !354

for.end290:                                       ; preds = %for.body281, %for.cond279.preheader
  %131 = load i32* %symflag14, align 4, !dbg !415, !tbaa !125
  %cmp292 = icmp eq i32 %131, 2, !dbg !415
  br i1 %cmp292, label %for.cond294.preheader, label %if.end306, !dbg !415

for.cond294.preheader:                            ; preds = %for.end290
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !416
  %132 = load i32* %nrowI, align 4, !dbg !416, !tbaa !125
  %cmp295464 = icmp sgt i32 %132, 0, !dbg !416
  br i1 %cmp295464, label %for.body296.lr.ph, label %if.end306, !dbg !416

for.body296.lr.ph:                                ; preds = %for.cond294.preheader
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !419
  %133 = load i32** %rowindI, align 8, !dbg !419, !tbaa !120
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !98), !dbg !419
  %134 = load i32** %rowindJ, align 8, !dbg !419, !tbaa !120
  br label %for.body296, !dbg !416

for.body296:                                      ; preds = %for.body296.lr.ph, %for.body296
  %indvars.iv = phi i64 [ 0, %for.body296.lr.ph ], [ %indvars.iv.next, %for.body296 ]
  call void @llvm.dbg.value(metadata !{i32** %rowindI}, i64 0, metadata !97), !dbg !419
  %arrayidx298 = getelementptr inbounds i32* %133, i64 %indvars.iv, !dbg !419
  %135 = load i32* %arrayidx298, align 4, !dbg !419, !tbaa !125
  %idxprom299 = sext i32 %135 to i64, !dbg !419
  call void @llvm.dbg.value(metadata !{i32** %rowindJ}, i64 0, metadata !98), !dbg !419
  %arrayidx300 = getelementptr inbounds i32* %134, i64 %idxprom299, !dbg !419
  %136 = load i32* %arrayidx300, align 4, !dbg !419, !tbaa !125
  store i32 %136, i32* %arrayidx298, align 4, !dbg !419, !tbaa !125
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !416
  call void @llvm.dbg.value(metadata !{i32* %nrowI}, i64 0, metadata !90), !dbg !416
  %137 = load i32* %nrowI, align 4, !dbg !416, !tbaa !125
  %138 = trunc i64 %indvars.iv.next to i32, !dbg !416
  %cmp295 = icmp slt i32 %138, %137, !dbg !416
  br i1 %cmp295, label %for.body296, label %if.end306, !dbg !416

if.end306:                                        ; preds = %for.cond294.preheader, %for.body296, %for.end290
  ret void, !dbg !421
}

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_assemblePostponedData(%struct._Chv* %newchv, %struct._Chv* %oldchv, %struct._Chv* %firstchild) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %newchv}, i64 0, metadata !103), !dbg !422
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %oldchv}, i64 0, metadata !104), !dbg !423
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %firstchild}, i64 0, metadata !105), !dbg !424
  %cmp = icmp eq %struct._Chv* %newchv, null, !dbg !425
  %cmp1 = icmp eq %struct._Chv* %oldchv, null, !dbg !425
  %or.cond = or i1 %cmp, %cmp1, !dbg !425
  %cmp3 = icmp eq %struct._Chv* %firstchild, null, !dbg !425
  %or.cond80 = or i1 %or.cond, %cmp3, !dbg !425
  br i1 %or.cond80, label %if.then, label %for.body.lr.ph, !dbg !425

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !426, !tbaa !120
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str21, i64 0, i64 0), %struct._Chv* %newchv, %struct._Chv* %oldchv, %struct._Chv* %firstchild) #6, !dbg !426
  tail call void @exit(i32 -1) #7, !dbg !428
  unreachable, !dbg !428

for.body.lr.ph:                                   ; preds = %entry
  tail call void @Chv_zero(%struct._Chv* %newchv) #6, !dbg !429
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !430
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %firstchild}, i64 0, metadata !106), !dbg !431
  %colind = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 7, !dbg !433
  br label %for.body, !dbg !431

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ndelay.088 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %child.087 = phi %struct._Chv* [ %firstchild, %for.body.lr.ph ], [ %5, %for.body ]
  %nD = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 1, !dbg !433
  %1 = load i32* %nD, align 4, !dbg !433, !tbaa !125
  %2 = load i32** %colind, align 8, !dbg !433, !tbaa !120
  %idx.ext = sext i32 %ndelay.088 to i64, !dbg !433
  %add.ptr = getelementptr inbounds i32* %2, i64 %idx.ext, !dbg !433
  %colind5 = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 7, !dbg !433
  %3 = load i32** %colind5, align 8, !dbg !433, !tbaa !120
  tail call void @IVcopy(i32 %1, i32* %add.ptr, i32* %3) #6, !dbg !433
  %4 = load i32* %nD, align 4, !dbg !435, !tbaa !125
  %add = add nsw i32 %4, %ndelay.088, !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !108), !dbg !435
  %next = getelementptr inbounds %struct._Chv* %child.087, i64 0, i32 10, !dbg !431
  %5 = load %struct._Chv** %next, align 8, !dbg !431, !tbaa !120
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %5}, i64 0, metadata !106), !dbg !431
  %cmp4 = icmp eq %struct._Chv* %5, null, !dbg !431
  br i1 %cmp4, label %for.end, label %for.body, !dbg !431

for.end:                                          ; preds = %for.body
  %nD7 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 1, !dbg !436
  %6 = load i32* %nD7, align 4, !dbg !436, !tbaa !125
  %nU = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 3, !dbg !436
  %7 = load i32* %nU, align 4, !dbg !436, !tbaa !125
  %add8 = add nsw i32 %7, %6, !dbg !436
  %8 = load i32** %colind, align 8, !dbg !436, !tbaa !120
  %idx.ext10 = sext i32 %add to i64, !dbg !436
  %add.ptr11 = getelementptr inbounds i32* %8, i64 %idx.ext10, !dbg !436
  %colind12 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 7, !dbg !436
  %9 = load i32** %colind12, align 8, !dbg !436, !tbaa !120
  tail call void @IVcopy(i32 %add8, i32* %add.ptr11, i32* %9) #6, !dbg !436
  %symflag = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 5, !dbg !437
  %10 = load i32* %symflag, align 4, !dbg !437, !tbaa !125
  %cmp13 = icmp eq i32 %10, 2, !dbg !437
  br i1 %cmp13, label %for.body17.lr.ph, label %for.body37.lr.ph, !dbg !437

for.body17.lr.ph:                                 ; preds = %for.end
  %rowind = getelementptr inbounds %struct._Chv* %newchv, i64 0, i32 6, !dbg !438
  br label %for.body17, !dbg !442

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %ndelay.185 = phi i32 [ 0, %for.body17.lr.ph ], [ %add23, %for.body17 ]
  %child.184 = phi %struct._Chv* [ %firstchild, %for.body17.lr.ph ], [ %15, %for.body17 ]
  %nD18 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 1, !dbg !438
  %11 = load i32* %nD18, align 4, !dbg !438, !tbaa !125
  %12 = load i32** %rowind, align 8, !dbg !438, !tbaa !120
  %idx.ext19 = sext i32 %ndelay.185 to i64, !dbg !438
  %add.ptr20 = getelementptr inbounds i32* %12, i64 %idx.ext19, !dbg !438
  %rowind21 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 6, !dbg !438
  %13 = load i32** %rowind21, align 8, !dbg !438, !tbaa !120
  tail call void @IVcopy(i32 %11, i32* %add.ptr20, i32* %13) #6, !dbg !438
  %14 = load i32* %nD18, align 4, !dbg !443, !tbaa !125
  %add23 = add nsw i32 %14, %ndelay.185, !dbg !443
  tail call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !108), !dbg !443
  %next25 = getelementptr inbounds %struct._Chv* %child.184, i64 0, i32 10, !dbg !442
  %15 = load %struct._Chv** %next25, align 8, !dbg !442, !tbaa !120
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %15}, i64 0, metadata !106), !dbg !442
  %cmp16 = icmp eq %struct._Chv* %15, null, !dbg !442
  br i1 %cmp16, label %for.end26, label %for.body17, !dbg !442

for.end26:                                        ; preds = %for.body17
  %16 = load i32* %nD7, align 4, !dbg !444, !tbaa !125
  %17 = load i32* %nU, align 4, !dbg !444, !tbaa !125
  %add29 = add nsw i32 %17, %16, !dbg !444
  %18 = load i32** %rowind, align 8, !dbg !444, !tbaa !120
  %idx.ext31 = sext i32 %add23 to i64, !dbg !444
  %add.ptr32 = getelementptr inbounds i32* %18, i64 %idx.ext31, !dbg !444
  %rowind33 = getelementptr inbounds %struct._Chv* %oldchv, i64 0, i32 6, !dbg !444
  %19 = load i32** %rowind33, align 8, !dbg !444, !tbaa !120
  tail call void @IVcopy(i32 %add29, i32* %add.ptr32, i32* %19) #6, !dbg !444
  br label %for.body37.lr.ph, !dbg !445

for.body37.lr.ph:                                 ; preds = %for.end, %for.end26
  %ndelay.2 = phi i32 [ %add23, %for.end26 ], [ %add, %for.end ]
  tail call void @Chv_assembleChv(%struct._Chv* %newchv, %struct._Chv* %oldchv) #8, !dbg !446
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %firstchild}, i64 0, metadata !106), !dbg !447
  br label %for.body37, !dbg !447

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %child.282 = phi %struct._Chv* [ %firstchild, %for.body37.lr.ph ], [ %20, %for.body37 ]
  tail call void @Chv_assembleChv(%struct._Chv* %newchv, %struct._Chv* %child.282) #8, !dbg !449
  %next39 = getelementptr inbounds %struct._Chv* %child.282, i64 0, i32 10, !dbg !447
  %20 = load %struct._Chv** %next39, align 8, !dbg !447, !tbaa !120
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %20}, i64 0, metadata !106), !dbg !447
  %cmp36 = icmp eq %struct._Chv* %20, null, !dbg !447
  br i1 %cmp36, label %for.end40, label %for.body37, !dbg !447

for.end40:                                        ; preds = %for.body37
  ret i32 %ndelay.2, !dbg !451
}

; Function Attrs: optsize
declare void @Chv_zero(%struct._Chv*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !72, metadata !99}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_addChevron", metadata !"Chv_addChevron", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, double*, i32, i32, i32*, double*)* @Chv_addChevron, null, null, metadata !38, i32 28} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 28] [Chv_addChevron]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !24, metadata !14, metadata !14, metadata !21, metadata !24}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !62, metadata !63, metadata !64, metadata !65, metadata !69, metadata !70, metadata !71}
!39 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 22]
!40 = metadata !{i32 786689, metadata !4, metadata !"alpha", metadata !5, i32 33554455, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 23]
!41 = metadata !{i32 786689, metadata !4, metadata !"ichv", metadata !5, i32 50331672, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ichv] [line 24]
!42 = metadata !{i32 786689, metadata !4, metadata !"chvsize", metadata !5, i32 67108889, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvsize] [line 25]
!43 = metadata !{i32 786689, metadata !4, metadata !"chvind", metadata !5, i32 83886106, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvind] [line 26]
!44 = metadata !{i32 786689, metadata !4, metadata !"chvent", metadata !5, i32 100663323, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvent] [line 27]
!45 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 29]
!46 = metadata !{i32 786688, metadata !4, metadata !"iloc", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 29]
!47 = metadata !{i32 786688, metadata !4, metadata !"jcol", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 29]
!48 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 29]
!49 = metadata !{i32 786688, metadata !4, metadata !"jjfirst", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jjfirst] [line 29]
!50 = metadata !{i32 786688, metadata !4, metadata !"jjlast", metadata !5, i32 29, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jjlast] [line 29]
!51 = metadata !{i32 786688, metadata !4, metadata !"ncol", metadata !5, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 30]
!52 = metadata !{i32 786688, metadata !4, metadata !"nD", metadata !5, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 30]
!53 = metadata !{i32 786688, metadata !4, metadata !"nL", metadata !5, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nL] [line 30]
!54 = metadata !{i32 786688, metadata !4, metadata !"nU", metadata !5, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nU] [line 30]
!55 = metadata !{i32 786688, metadata !4, metadata !"offset", metadata !5, i32 30, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 30]
!56 = metadata !{i32 786688, metadata !4, metadata !"colind", metadata !5, i32 31, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 31]
!57 = metadata !{i32 786688, metadata !4, metadata !"diag", metadata !5, i32 32, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diag] [line 32]
!58 = metadata !{i32 786688, metadata !59, metadata !"alphareal", metadata !5, i32 228, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alphareal] [line 228]
!59 = metadata !{i32 786443, metadata !1, metadata !60, i32 227, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 203, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 127, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!62 = metadata !{i32 786688, metadata !59, metadata !"alphaimag", metadata !5, i32 228, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alphaimag] [line 228]
!63 = metadata !{i32 786688, metadata !59, metadata !"xreal", metadata !5, i32 228, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 228]
!64 = metadata !{i32 786688, metadata !59, metadata !"ximag", metadata !5, i32 228, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 228]
!65 = metadata !{i32 786688, metadata !66, metadata !"alphareal", metadata !5, i32 350, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alphareal] [line 350]
!66 = metadata !{i32 786443, metadata !1, metadata !67, i32 349, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!67 = metadata !{i32 786443, metadata !1, metadata !68, i32 333, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!68 = metadata !{i32 786443, metadata !1, metadata !4, i32 255, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!69 = metadata !{i32 786688, metadata !66, metadata !"alphaimag", metadata !5, i32 350, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alphaimag] [line 350]
!70 = metadata !{i32 786688, metadata !66, metadata !"xreal", metadata !5, i32 350, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xreal] [line 350]
!71 = metadata !{i32 786688, metadata !66, metadata !"ximag", metadata !5, i32 350, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ximag] [line 350]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_assembleChv", metadata !"Chv_assembleChv", metadata !"", i32 391, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, %struct._Chv*)* @Chv_assembleChv, null, null, metadata !75, i32 394} ; [ DW_TAG_subprogram ] [line 391] [def] [scope 394] [Chv_assembleChv]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{null, metadata !8, metadata !8}
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!76 = metadata !{i32 786689, metadata !72, metadata !"chvJ", metadata !5, i32 16777608, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvJ] [line 392]
!77 = metadata !{i32 786689, metadata !72, metadata !"chvI", metadata !5, i32 33554825, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvI] [line 393]
!78 = metadata !{i32 786688, metadata !72, metadata !"diagI", metadata !5, i32 395, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diagI] [line 395]
!79 = metadata !{i32 786688, metadata !72, metadata !"diagJ", metadata !5, i32 395, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diagJ] [line 395]
!80 = metadata !{i32 786688, metadata !72, metadata !"ii", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 396]
!81 = metadata !{i32 786688, metadata !72, metadata !"ichvI", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichvI] [line 396]
!82 = metadata !{i32 786688, metadata !72, metadata !"ichvJ", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ichvJ] [line 396]
!83 = metadata !{i32 786688, metadata !72, metadata !"jj", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 396]
!84 = metadata !{i32 786688, metadata !72, metadata !"ncolI", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolI] [line 396]
!85 = metadata !{i32 786688, metadata !72, metadata !"ncolJ", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncolJ] [line 396]
!86 = metadata !{i32 786688, metadata !72, metadata !"nDI", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nDI] [line 396]
!87 = metadata !{i32 786688, metadata !72, metadata !"nDJ", metadata !5, i32 396, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nDJ] [line 396]
!88 = metadata !{i32 786688, metadata !72, metadata !"nLI", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLI] [line 397]
!89 = metadata !{i32 786688, metadata !72, metadata !"nLJ", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nLJ] [line 397]
!90 = metadata !{i32 786688, metadata !72, metadata !"nrowI", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowI] [line 397]
!91 = metadata !{i32 786688, metadata !72, metadata !"nrowJ", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrowJ] [line 397]
!92 = metadata !{i32 786688, metadata !72, metadata !"nUI", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUI] [line 397]
!93 = metadata !{i32 786688, metadata !72, metadata !"nUJ", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUJ] [line 397]
!94 = metadata !{i32 786688, metadata !72, metadata !"offset", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 397]
!95 = metadata !{i32 786688, metadata !72, metadata !"colindJ", metadata !5, i32 398, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindJ] [line 398]
!96 = metadata !{i32 786688, metadata !72, metadata !"colindI", metadata !5, i32 398, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colindI] [line 398]
!97 = metadata !{i32 786688, metadata !72, metadata !"rowindI", metadata !5, i32 398, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindI] [line 398]
!98 = metadata !{i32 786688, metadata !72, metadata !"rowindJ", metadata !5, i32 398, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowindJ] [line 398]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_assemblePostponedData", metadata !"Chv_assemblePostponedData", metadata !"", i32 653, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, %struct._Chv*, %struct._Chv*)* @Chv_assemblePostponedData, null, null, metadata !102, i32 657} ; [ DW_TAG_subprogram ] [line 653] [def] [scope 657] [Chv_assemblePostponedData]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !14, metadata !8, metadata !8, metadata !8}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!103 = metadata !{i32 786689, metadata !99, metadata !"newchv", metadata !5, i32 16777870, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newchv] [line 654]
!104 = metadata !{i32 786689, metadata !99, metadata !"oldchv", metadata !5, i32 33555087, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldchv] [line 655]
!105 = metadata !{i32 786689, metadata !99, metadata !"firstchild", metadata !5, i32 50332304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstchild] [line 656]
!106 = metadata !{i32 786688, metadata !99, metadata !"child", metadata !5, i32 658, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [child] [line 658]
!107 = metadata !{i32 786688, metadata !99, metadata !"ierr", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 659]
!108 = metadata !{i32 786688, metadata !99, metadata !"ndelay", metadata !5, i32 659, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndelay] [line 659]
!109 = metadata !{i32 22, i32 0, metadata !4, null}
!110 = metadata !{i32 23, i32 0, metadata !4, null}
!111 = metadata !{i32 24, i32 0, metadata !4, null}
!112 = metadata !{i32 25, i32 0, metadata !4, null}
!113 = metadata !{i32 26, i32 0, metadata !4, null}
!114 = metadata !{i32 27, i32 0, metadata !4, null}
!115 = metadata !{i32 30, i32 0, metadata !4, null}
!116 = metadata !{i32 31, i32 0, metadata !4, null}
!117 = metadata !{i32 38, i32 0, metadata !4, null}
!118 = metadata !{i32 40, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!120 = metadata !{metadata !"any pointer", metadata !121}
!121 = metadata !{metadata !"omnipotent char", metadata !122}
!122 = metadata !{metadata !"Simple C/C++ TBAA"}
!123 = metadata !{i32 44, i32 0, metadata !119, null}
!124 = metadata !{i32 46, i32 0, metadata !4, null}
!125 = metadata !{metadata !"int", metadata !121}
!126 = metadata !{i32 48, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!128 = metadata !{i32 53, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !127, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!130 = metadata !{i32 57, i32 0, metadata !129, null}
!131 = metadata !{i32 61, i32 0, metadata !127, null}
!132 = metadata !{i32 67, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !127, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!134 = metadata !{i32 72, i32 0, metadata !133, null}
!135 = metadata !{i32 77, i32 0, metadata !127, null}
!136 = metadata !{i32 80, i32 0, metadata !127, null}
!137 = metadata !{i32 87, i32 0, metadata !4, null}
!138 = metadata !{metadata !"double", metadata !121}
!139 = metadata !{i32 103, i32 0, metadata !4, null}
!140 = metadata !{i32 104, i32 0, metadata !4, null}
!141 = metadata !{i32 111, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !4, i32 111, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!143 = metadata !{i32 112, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !142, i32 111, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!145 = metadata !{i32 116, i32 0, metadata !4, null}
!146 = metadata !{i32 122, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !4, i32 116, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!148 = metadata !{i32 125, i32 0, metadata !147, null}
!149 = metadata !{i32 127, i32 0, metadata !4, null}
!150 = metadata !{i32 134, i32 0, metadata !61, null}
!151 = metadata !{i32 135, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !61, i32 135, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!153 = metadata !{i32 150, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !152, i32 135, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!155 = metadata !{i32 136, i32 0, metadata !154, null}
!156 = metadata !{i32 137, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !154, i32 136, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!158 = metadata !{i32 141, i32 0, metadata !157, null}
!159 = metadata !{i32 142, i32 0, metadata !157, null}
!160 = metadata !{i32 144, i32 0, metadata !154, null}
!161 = metadata !{i32 151, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !154, i32 150, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!163 = metadata !{i32 158, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !154, i32 157, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!165 = metadata !{i32 162, i32 0, metadata !164, null}
!166 = metadata !{i32 163, i32 0, metadata !164, null}
!167 = metadata !{i32 164, i32 0, metadata !164, null}
!168 = metadata !{i32 165, i32 0, metadata !164, null}
!169 = metadata !{i32 166, i32 0, metadata !164, null}
!170 = metadata !{i32 168, i32 0, metadata !154, null}
!171 = metadata !{i32 180, i32 0, metadata !61, null}
!172 = metadata !{i32 181, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !61, i32 180, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!174 = metadata !{i32 189, i32 0, metadata !173, null}
!175 = metadata !{i32 190, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 190, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!177 = metadata !{i32 786443, metadata !1, metadata !173, i32 189, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!178 = metadata !{i32 199, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !180, i32 199, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!180 = metadata !{i32 786443, metadata !1, metadata !173, i32 198, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!181 = metadata !{i32 196, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !176, i32 190, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!183 = metadata !{i32 247, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !61, i32 247, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!185 = metadata !{i32 248, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !184, i32 247, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!187 = metadata !{i32 200, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !179, i32 199, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!189 = metadata !{i32 204, i32 0, metadata !60, null}
!190 = metadata !{i32 212, i32 0, metadata !60, null}
!191 = metadata !{i32 213, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 213, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!193 = metadata !{i32 786443, metadata !1, metadata !60, i32 212, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!194 = metadata !{i32 219, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !192, i32 213, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!196 = metadata !{i32 220, i32 0, metadata !195, null}
!197 = metadata !{i32 222, i32 0, metadata !60, null}
!198 = metadata !{i32 223, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !200, i32 223, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!200 = metadata !{i32 786443, metadata !1, metadata !60, i32 222, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!201 = metadata !{i32 224, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !199, i32 223, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!203 = metadata !{i32 225, i32 0, metadata !202, null}
!204 = metadata !{i32 227, i32 0, metadata !60, null}
!205 = metadata !{i32 229, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !59, i32 229, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!207 = metadata !{i32 230, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !206, i32 229, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!209 = metadata !{i32 231, i32 0, metadata !208, null}
!210 = metadata !{i32 232, i32 0, metadata !208, null}
!211 = metadata !{i32 233, i32 0, metadata !208, null}
!212 = metadata !{i32 236, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !60, i32 235, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!214 = metadata !{i32 239, i32 0, metadata !213, null}
!215 = metadata !{i32 262, i32 0, metadata !68, null}
!216 = metadata !{i32 263, i32 0, metadata !68, null}
!217 = metadata !{i32 264, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !68, i32 264, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!219 = metadata !{i32 269, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 264, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!221 = metadata !{i32 281, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !68, i32 281, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!223 = metadata !{i32 283, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !222, i32 281, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!225 = metadata !{i32 265, i32 0, metadata !220, null}
!226 = metadata !{i32 268, i32 0, metadata !220, null}
!227 = metadata !{i32 270, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !220, i32 269, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!229 = metadata !{i32 273, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !220, i32 272, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!231 = metadata !{i32 277, i32 0, metadata !230, null}
!232 = metadata !{i32 279, i32 0, metadata !220, null}
!233 = metadata !{i32 282, i32 0, metadata !224, null}
!234 = metadata !{i32 284, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !224, i32 283, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!236 = metadata !{i32 287, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !224, i32 286, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!238 = metadata !{i32 291, i32 0, metadata !237, null}
!239 = metadata !{i32 293, i32 0, metadata !224, null}
!240 = metadata !{i32 305, i32 0, metadata !68, null}
!241 = metadata !{i32 313, i32 0, metadata !68, null}
!242 = metadata !{i32 314, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !68, i32 313, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!244 = metadata !{i32 315, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !246, i32 315, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!246 = metadata !{i32 786443, metadata !1, metadata !243, i32 314, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!247 = metadata !{i32 324, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 324, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!249 = metadata !{i32 786443, metadata !1, metadata !243, i32 323, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!250 = metadata !{i32 321, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !245, i32 315, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!252 = metadata !{i32 364, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !68, i32 364, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!254 = metadata !{i32 366, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !256, i32 365, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!256 = metadata !{i32 786443, metadata !1, metadata !253, i32 364, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!257 = metadata !{i32 368, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !256, i32 367, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!259 = metadata !{i32 330, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !248, i32 324, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!261 = metadata !{i32 334, i32 0, metadata !67, null}
!262 = metadata !{i32 335, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !264, i32 335, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!264 = metadata !{i32 786443, metadata !1, metadata !67, i32 334, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!265 = metadata !{i32 341, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !263, i32 335, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!267 = metadata !{i32 342, i32 0, metadata !266, null}
!268 = metadata !{i32 344, i32 0, metadata !67, null}
!269 = metadata !{i32 351, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !66, i32 351, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!271 = metadata !{i32 352, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 351, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!273 = metadata !{i32 345, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !275, i32 345, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!275 = metadata !{i32 786443, metadata !1, metadata !67, i32 344, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!276 = metadata !{i32 346, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !274, i32 345, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!278 = metadata !{i32 347, i32 0, metadata !277, null}
!279 = metadata !{i32 353, i32 0, metadata !272, null}
!280 = metadata !{i32 354, i32 0, metadata !272, null}
!281 = metadata !{i32 355, i32 0, metadata !272, null}
!282 = metadata !{i32 365, i32 0, metadata !256, null}
!283 = metadata !{i32 367, i32 0, metadata !255, null}
!284 = metadata !{i32 377, i32 0, metadata !4, null}
!285 = metadata !{i32 392, i32 0, metadata !72, null}
!286 = metadata !{i32 393, i32 0, metadata !72, null}
!287 = metadata !{i32 396, i32 0, metadata !72, null}
!288 = metadata !{i32 397, i32 0, metadata !72, null}
!289 = metadata !{i32 398, i32 0, metadata !72, null}
!290 = metadata !{i32 404, i32 0, metadata !72, null}
!291 = metadata !{i32 405, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !72, i32 404, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!293 = metadata !{i32 407, i32 0, metadata !292, null}
!294 = metadata !{i32 409, i32 0, metadata !72, null}
!295 = metadata !{i32 412, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !72, i32 411, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!297 = metadata !{i32 414, i32 0, metadata !296, null}
!298 = metadata !{i32 416, i32 0, metadata !72, null}
!299 = metadata !{i32 417, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !72, i32 416, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!301 = metadata !{i32 420, i32 0, metadata !300, null}
!302 = metadata !{i32 427, i32 0, metadata !72, null}
!303 = metadata !{i32 428, i32 0, metadata !72, null}
!304 = metadata !{i32 429, i32 0, metadata !72, null}
!305 = metadata !{i32 430, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !72, i32 429, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!307 = metadata !{i32 435, i32 0, metadata !306, null}
!308 = metadata !{i32 442, i32 0, metadata !72, null}
!309 = metadata !{i32 443, i32 0, metadata !72, null}
!310 = metadata !{i32 450, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !72, i32 450, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!312 = metadata !{i32 461, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !311, i32 450, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!314 = metadata !{i32 451, i32 0, metadata !313, null}
!315 = metadata !{i32 456, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !313, i32 451, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!317 = metadata !{i32 458, i32 0, metadata !313, null}
!318 = metadata !{i32 467, i32 0, metadata !72, null}
!319 = metadata !{i32 468, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !72, i32 467, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!321 = metadata !{i32 470, i32 0, metadata !320, null}
!322 = metadata !{i32 471, i32 0, metadata !320, null}
!323 = metadata !{i32 472, i32 0, metadata !320, null}
!324 = metadata !{i32 473, i32 0, metadata !320, null}
!325 = metadata !{i32 474, i32 0, metadata !320, null}
!326 = metadata !{i32 476, i32 0, metadata !72, null}
!327 = metadata !{i32 482, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !72, i32 476, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!329 = metadata !{i32 483, i32 0, metadata !328, null}
!330 = metadata !{i32 484, i32 0, metadata !328, null}
!331 = metadata !{i32 532, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !72, i32 532, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!333 = metadata !{i32 548, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !332, i32 532, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!335 = metadata !{i32 490, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !72, i32 484, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!337 = metadata !{i32 491, i32 0, metadata !336, null}
!338 = metadata !{i32 498, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !336, i32 498, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!340 = metadata !{i32 505, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 498, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!342 = metadata !{i32 499, i32 0, metadata !341, null}
!343 = metadata !{i32 500, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !341, i32 499, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!345 = metadata !{i32 502, i32 0, metadata !341, null}
!346 = metadata !{i32 507, i32 0, metadata !336, null}
!347 = metadata !{i32 508, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !336, i32 507, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!349 = metadata !{i32 510, i32 0, metadata !348, null}
!350 = metadata !{i32 511, i32 0, metadata !348, null}
!351 = metadata !{i32 512, i32 0, metadata !348, null}
!352 = metadata !{i32 513, i32 0, metadata !348, null}
!353 = metadata !{i32 514, i32 0, metadata !348, null}
!354 = metadata !{i32 626, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !72, i32 626, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!356 = metadata !{i32 627, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !355, i32 626, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!358 = metadata !{i32 533, i32 0, metadata !334, null}
!359 = metadata !{i32 534, i32 0, metadata !334, null}
!360 = metadata !{i32 535, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !334, i32 534, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!362 = metadata !{i32 538, i32 0, metadata !361, null}
!363 = metadata !{i32 540, i32 0, metadata !334, null}
!364 = metadata !{i32 541, i32 0, metadata !334, null}
!365 = metadata !{i32 549, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !334, i32 548, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!367 = metadata !{i32 550, i32 0, metadata !366, null}
!368 = metadata !{i32 551, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !334, i32 550, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!370 = metadata !{i32 552, i32 0, metadata !369, null}
!371 = metadata !{i32 553, i32 0, metadata !369, null}
!372 = metadata !{i32 554, i32 0, metadata !334, null}
!373 = metadata !{i32 560, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !334, i32 554, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!375 = metadata !{i32 561, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !377, i32 561, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!377 = metadata !{i32 786443, metadata !1, metadata !374, i32 560, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!378 = metadata !{i32 562, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !376, i32 561, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!380 = metadata !{i32 570, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !382, i32 570, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!382 = metadata !{i32 786443, metadata !1, metadata !374, i32 569, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!383 = metadata !{i32 571, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !381, i32 570, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!385 = metadata !{i32 567, i32 0, metadata !379, null}
!386 = metadata !{i32 576, i32 0, metadata !384, null}
!387 = metadata !{i32 577, i32 0, metadata !384, null}
!388 = metadata !{i32 586, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !334, i32 580, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!390 = metadata !{i32 587, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !392, i32 587, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!392 = metadata !{i32 786443, metadata !1, metadata !389, i32 586, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!393 = metadata !{i32 1}
!394 = metadata !{i32 588, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !391, i32 587, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!396 = metadata !{i32 592, i32 0, metadata !395, null}
!397 = metadata !{i32 594, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !392, i32 594, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!399 = metadata !{i32 595, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !398, i32 594, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!401 = metadata !{i32 599, i32 0, metadata !400, null}
!402 = metadata !{i32 602, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !404, i32 602, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!404 = metadata !{i32 786443, metadata !1, metadata !389, i32 601, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!405 = metadata !{i32 603, i32 0, metadata !406, null}
!406 = metadata !{i32 786443, metadata !1, metadata !403, i32 602, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!407 = metadata !{i32 607, i32 0, metadata !406, null}
!408 = metadata !{i32 608, i32 0, metadata !406, null}
!409 = metadata !{i32 610, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !404, i32 610, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!411 = metadata !{i32 611, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !410, i32 610, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!413 = metadata !{i32 615, i32 0, metadata !412, null}
!414 = metadata !{i32 616, i32 0, metadata !412, null}
!415 = metadata !{i32 629, i32 0, metadata !72, null}
!416 = metadata !{i32 630, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !418, i32 630, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!418 = metadata !{i32 786443, metadata !1, metadata !72, i32 629, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!419 = metadata !{i32 631, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !1, metadata !417, i32 630, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!421 = metadata !{i32 634, i32 0, metadata !72, null}
!422 = metadata !{i32 654, i32 0, metadata !99, null}
!423 = metadata !{i32 655, i32 0, metadata !99, null}
!424 = metadata !{i32 656, i32 0, metadata !99, null}
!425 = metadata !{i32 665, i32 0, metadata !99, null}
!426 = metadata !{i32 666, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !99, i32 665, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!428 = metadata !{i32 669, i32 0, metadata !427, null}
!429 = metadata !{i32 671, i32 0, metadata !99, null}
!430 = metadata !{i32 690, i32 0, metadata !99, null}
!431 = metadata !{i32 691, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !99, i32 691, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!433 = metadata !{i32 692, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !432, i32 691, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!435 = metadata !{i32 693, i32 0, metadata !434, null}
!436 = metadata !{i32 695, i32 0, metadata !99, null}
!437 = metadata !{i32 702, i32 0, metadata !99, null}
!438 = metadata !{i32 705, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !440, i32 704, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!440 = metadata !{i32 786443, metadata !1, metadata !441, i32 704, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!441 = metadata !{i32 786443, metadata !1, metadata !99, i32 702, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!442 = metadata !{i32 704, i32 0, metadata !440, null}
!443 = metadata !{i32 706, i32 0, metadata !439, null}
!444 = metadata !{i32 708, i32 0, metadata !441, null}
!445 = metadata !{i32 715, i32 0, metadata !441, null}
!446 = metadata !{i32 721, i32 0, metadata !99, null}
!447 = metadata !{i32 731, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !99, i32 731, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!449 = metadata !{i32 732, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !448, i32 731, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_assemble.c]
!451 = metadata !{i32 739, i32 0, metadata !99, null}
