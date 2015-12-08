; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/check_unitarity.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@lattice = external global %struct.site*
@sites_on_node = external global i32
@.str = private unnamed_addr constant [61 x i8] c"Unitarity problem on node %d, site %d, dir %d, deviation=%f\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [52 x i8] c"Unitarity problem on node %d, maximum deviation=%f\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"SU3 matrix:\00"
@str8 = private unnamed_addr constant [15 x i8] c"repeat in hex:\00"
@str9 = private unnamed_addr constant [5 x i8] c"  \0A \00"

; Function Attrs: nounwind optsize uwtable
define double @check_unitarity() #0 {
entry:
  %0 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp124 = icmp sgt i32 %0, 0
  br i1 %cmp124, label %for.cond1.preheader.lr.ph, label %for.end69.thread

for.end69.thread:                                 ; preds = %entry
  %call71149 = tail call double @sqrt(double 0x7FF8000000000000) #5
  br label %if.end77

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = load %struct.site** @lattice, align 8, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc67
  %i.0128 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc68, %for.inc67 ]
  %av_deviation.0127 = phi double [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %add, %for.inc67 ]
  %max_deviation.0126 = phi double [ 0.000000e+00, %for.cond1.preheader.lr.ph ], [ %max_deviation.2, %for.inc67 ]
  %s.0125 = phi %struct.site* [ %1, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.inc67 ]
  br label %for.body3

for.body3:                                        ; preds = %if.end, %for.cond1.preheader
  %indvars.iv144 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next145, %if.end ]
  %av_deviation.1123 = phi double [ %av_deviation.0127, %for.cond1.preheader ], [ %add, %if.end ]
  %max_deviation.1122 = phi double [ %max_deviation.0126, %for.cond1.preheader ], [ %max_deviation.2, %if.end ]
  %arrayidx = getelementptr inbounds %struct.site* %s.0125, i64 0, i32 8, i64 %indvars.iv144
  %call = tail call double @check_su3(%struct.su3_matrix* %arrayidx) #6
  %cmp4 = fcmp ogt double %call, 1.000000e-04
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %call5 = tail call i32 (...)* @mynode() #5
  %2 = trunc i64 %indvars.iv144 to i32
  %call6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 %call5, i32 %i.0128, i32 %2, double %call) #5
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str, i64 0, i64 0))
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.end, %if.then
  %indvars.iv132 = phi i64 [ 0, %if.then ], [ %indvars.iv.next133, %for.end ]
  br label %for.body13

for.body13:                                       ; preds = %for.body13, %for.cond11.preheader
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body13 ]
  %real = getelementptr inbounds %struct.site* %s.0125, i64 0, i32 8, i64 %indvars.iv144, i32 0, i64 %indvars.iv132, i64 %indvars.iv, i32 0
  %3 = load double* %real, align 8, !tbaa !4
  %call18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %3) #5
  %imag = getelementptr inbounds %struct.site* %s.0125, i64 0, i32 8, i64 %indvars.iv144, i32 0, i64 %indvars.iv132, i64 %indvars.iv, i32 1
  %4 = load double* %imag, align 8, !tbaa !4
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %4) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body13

for.end:                                          ; preds = %for.body13
  %putchar116 = tail call i32 @putchar(i32 10) #4
  %indvars.iv.next133 = add i64 %indvars.iv132, 1
  %lftr.wideiv134 = trunc i64 %indvars.iv.next133 to i32
  %exitcond135 = icmp eq i32 %lftr.wideiv134, 3
  br i1 %exitcond135, label %for.end28, label %for.cond11.preheader

for.end28:                                        ; preds = %for.end
  %puts114 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str8, i64 0, i64 0))
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end54, %for.end28
  %indvars.iv140 = phi i64 [ 0, %for.end28 ], [ %indvars.iv.next141, %for.end54 ]
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %for.cond33.preheader
  %indvars.iv136 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next137, %for.body35 ]
  %real41 = getelementptr inbounds %struct.site* %s.0125, i64 0, i32 8, i64 %indvars.iv144, i32 0, i64 %indvars.iv140, i64 %indvars.iv136, i32 0
  %5 = load double* %real41, align 8, !tbaa !4
  %6 = bitcast double %5 to i64
  %ifval.sroa.0.0.extract.trunc = trunc i64 %6 to i32
  %call42 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32 %ifval.sroa.0.0.extract.trunc) #5
  %imag48 = getelementptr inbounds %struct.site* %s.0125, i64 0, i32 8, i64 %indvars.iv144, i32 0, i64 %indvars.iv140, i64 %indvars.iv136, i32 1
  %7 = load double* %imag48, align 8, !tbaa !4
  %8 = bitcast double %7 to i64
  %ifval.sroa.0.0.extract.trunc79 = trunc i64 %8 to i32
  %call51 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32 %ifval.sroa.0.0.extract.trunc79) #5
  %indvars.iv.next137 = add i64 %indvars.iv136, 1
  %lftr.wideiv138 = trunc i64 %indvars.iv.next137 to i32
  %exitcond139 = icmp eq i32 %lftr.wideiv138, 3
  br i1 %exitcond139, label %for.end54, label %for.body35

for.end54:                                        ; preds = %for.body35
  %putchar = tail call i32 @putchar(i32 10) #4
  %indvars.iv.next141 = add i64 %indvars.iv140, 1
  %lftr.wideiv142 = trunc i64 %indvars.iv.next141 to i32
  %exitcond143 = icmp eq i32 %lftr.wideiv142, 3
  br i1 %exitcond143, label %for.end58, label %for.cond33.preheader

for.end58:                                        ; preds = %for.end54
  %puts115 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str9, i64 0, i64 0))
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call60 = tail call i32 @fflush(%struct._IO_FILE* %9) #5
  tail call void @terminate(i32 1) #5
  br label %if.end

if.end:                                           ; preds = %for.end58, %for.body3
  %cmp61 = fcmp olt double %max_deviation.1122, %call
  %max_deviation.2 = select i1 %cmp61, double %call, double %max_deviation.1122
  %mul = fmul double %call, %call
  %add = fadd double %av_deviation.1123, %mul
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv146 = trunc i64 %indvars.iv.next145 to i32
  %exitcond147 = icmp eq i32 %lftr.wideiv146, 4
  br i1 %exitcond147, label %for.inc67, label %for.body3

for.inc67:                                        ; preds = %if.end
  %inc68 = add nsw i32 %i.0128, 1
  %incdec.ptr = getelementptr inbounds %struct.site* %s.0125, i64 1
  %10 = load i32* @sites_on_node, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc68, %10
  br i1 %cmp, label %for.cond1.preheader, label %for.end69

for.end69:                                        ; preds = %for.inc67
  %phitmp = shl i32 %inc68, 2
  %phitmp131 = sitofp i32 %phitmp to double
  %div = fdiv double %add, %phitmp131
  %call71 = tail call double @sqrt(double %div) #5
  %cmp72 = fcmp ogt double %max_deviation.2, 1.000000e-04
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %for.end69
  %call75 = tail call i32 (...)* @mynode() #5
  %call76 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str7, i64 0, i64 0), i32 %call75, double %max_deviation.2) #5
  br label %if.end77

if.end77:                                         ; preds = %for.end69.thread, %if.then74, %for.end69
  %max_deviation.0.lcssa151 = phi double [ 0.000000e+00, %for.end69.thread ], [ %max_deviation.2, %if.then74 ], [ %max_deviation.2, %for.end69 ]
  ret double %max_deviation.0.lcssa151
}

; Function Attrs: nounwind optsize uwtable
define double @check_su3(%struct.su3_matrix* %c) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %max.0560 = phi double [ 0.000000e+00, %entry ], [ %max.1, %for.body ]
  %real = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 0, i32 0
  %0 = load double* %real, align 8, !tbaa !4
  %mul = fmul double %0, %0
  %imag = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 0, i32 1
  %1 = load double* %imag, align 8, !tbaa !4
  %mul16 = fmul double %1, %1
  %add = fadd double %mul, %mul16
  %real21 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 1, i32 0
  %2 = load double* %real21, align 8, !tbaa !4
  %mul27 = fmul double %2, %2
  %add28 = fadd double %add, %mul27
  %imag33 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 1, i32 1
  %3 = load double* %imag33, align 8, !tbaa !4
  %mul39 = fmul double %3, %3
  %add40 = fadd double %add28, %mul39
  %real45 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 2, i32 0
  %4 = load double* %real45, align 8, !tbaa !4
  %mul51 = fmul double %4, %4
  %add52 = fadd double %add40, %mul51
  %imag57 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 %indvars.iv, i64 2, i32 1
  %5 = load double* %imag57, align 8, !tbaa !4
  %mul63 = fmul double %5, %5
  %add64 = fadd double %add52, %mul63
  %call = tail call double @sqrt(double %add64) #5
  %sub = fadd double %call, -1.000000e+00
  %call65 = tail call double @fabs(double %sub) #7
  %cmp66 = fcmp olt double %max.0560, %call65
  %max.1 = select i1 %cmp66, double %call65, double %max.0560
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %real70 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 0, i32 0
  %6 = load double* %real70, align 8, !tbaa !4
  %real74 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 0, i32 0
  %7 = load double* %real74, align 8, !tbaa !4
  %mul75 = fmul double %6, %7
  %imag79 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 0, i32 1
  %8 = load double* %imag79, align 8, !tbaa !4
  %imag83 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 0, i32 1
  %9 = load double* %imag83, align 8, !tbaa !4
  %mul84 = fmul double %8, %9
  %add85 = fadd double %mul75, %mul84
  %real89 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 1, i32 0
  %10 = load double* %real89, align 8, !tbaa !4
  %real93 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 1, i32 0
  %11 = load double* %real93, align 8, !tbaa !4
  %mul94 = fmul double %10, %11
  %add95 = fadd double %add85, %mul94
  %imag99 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 1, i32 1
  %12 = load double* %imag99, align 8, !tbaa !4
  %imag103 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 1, i32 1
  %13 = load double* %imag103, align 8, !tbaa !4
  %mul104 = fmul double %12, %13
  %add105 = fadd double %add95, %mul104
  %real109 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 2, i32 0
  %14 = load double* %real109, align 8, !tbaa !4
  %real113 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 2, i32 0
  %15 = load double* %real113, align 8, !tbaa !4
  %mul114 = fmul double %14, %15
  %add115 = fadd double %add105, %mul114
  %imag119 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 0, i64 2, i32 1
  %16 = load double* %imag119, align 8, !tbaa !4
  %imag123 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 1, i64 2, i32 1
  %17 = load double* %imag123, align 8, !tbaa !4
  %mul124 = fmul double %16, %17
  %add125 = fadd double %add115, %mul124
  %mul134 = fmul double %6, %9
  %mul143 = fmul double %7, %8
  %sub144 = fsub double %mul134, %mul143
  %mul153 = fmul double %10, %13
  %add154 = fadd double %sub144, %mul153
  %mul163 = fmul double %11, %12
  %sub164 = fsub double %add154, %mul163
  %mul173 = fmul double %14, %17
  %add174 = fadd double %sub164, %mul173
  %mul183 = fmul double %15, %16
  %sub184 = fsub double %add174, %mul183
  %mul185 = fmul double %add125, %add125
  %mul186 = fmul double %sub184, %sub184
  %add187 = fadd double %mul185, %mul186
  %call188 = tail call double @sqrt(double %add187) #5
  %cmp189 = fcmp olt double %max.1, %call188
  %max.2 = select i1 %cmp189, double %call188, double %max.1
  %18 = load double* %real70, align 8, !tbaa !4
  %real199 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 0, i32 0
  %19 = load double* %real199, align 8, !tbaa !4
  %mul200 = fmul double %18, %19
  %20 = load double* %imag79, align 8, !tbaa !4
  %imag208 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 0, i32 1
  %21 = load double* %imag208, align 8, !tbaa !4
  %mul209 = fmul double %20, %21
  %add210 = fadd double %mul200, %mul209
  %22 = load double* %real89, align 8, !tbaa !4
  %real218 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 1, i32 0
  %23 = load double* %real218, align 8, !tbaa !4
  %mul219 = fmul double %22, %23
  %add220 = fadd double %add210, %mul219
  %24 = load double* %imag99, align 8, !tbaa !4
  %imag228 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 1, i32 1
  %25 = load double* %imag228, align 8, !tbaa !4
  %mul229 = fmul double %24, %25
  %add230 = fadd double %add220, %mul229
  %26 = load double* %real109, align 8, !tbaa !4
  %real238 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 2, i32 0
  %27 = load double* %real238, align 8, !tbaa !4
  %mul239 = fmul double %26, %27
  %add240 = fadd double %add230, %mul239
  %28 = load double* %imag119, align 8, !tbaa !4
  %imag248 = getelementptr inbounds %struct.su3_matrix* %c, i64 0, i32 0, i64 2, i64 2, i32 1
  %29 = load double* %imag248, align 8, !tbaa !4
  %mul249 = fmul double %28, %29
  %add250 = fadd double %add240, %mul249
  %mul259 = fmul double %18, %21
  %mul268 = fmul double %19, %20
  %sub269 = fsub double %mul259, %mul268
  %mul278 = fmul double %22, %25
  %add279 = fadd double %sub269, %mul278
  %mul288 = fmul double %23, %24
  %sub289 = fsub double %add279, %mul288
  %mul298 = fmul double %26, %29
  %add299 = fadd double %sub289, %mul298
  %mul308 = fmul double %27, %28
  %sub309 = fsub double %add299, %mul308
  %mul310 = fmul double %add250, %add250
  %mul311 = fmul double %sub309, %sub309
  %add312 = fadd double %mul310, %mul311
  %call313 = tail call double @sqrt(double %add312) #5
  %cmp314 = fcmp olt double %max.2, %call313
  %max.3 = select i1 %cmp314, double %call313, double %max.2
  %30 = load double* %real74, align 8, !tbaa !4
  %31 = load double* %real199, align 8, !tbaa !4
  %mul325 = fmul double %30, %31
  %32 = load double* %imag83, align 8, !tbaa !4
  %33 = load double* %imag208, align 8, !tbaa !4
  %mul334 = fmul double %32, %33
  %add335 = fadd double %mul325, %mul334
  %34 = load double* %real93, align 8, !tbaa !4
  %35 = load double* %real218, align 8, !tbaa !4
  %mul344 = fmul double %34, %35
  %add345 = fadd double %add335, %mul344
  %36 = load double* %imag103, align 8, !tbaa !4
  %37 = load double* %imag228, align 8, !tbaa !4
  %mul354 = fmul double %36, %37
  %add355 = fadd double %add345, %mul354
  %38 = load double* %real113, align 8, !tbaa !4
  %39 = load double* %real238, align 8, !tbaa !4
  %mul364 = fmul double %38, %39
  %add365 = fadd double %add355, %mul364
  %40 = load double* %imag123, align 8, !tbaa !4
  %41 = load double* %imag248, align 8, !tbaa !4
  %mul374 = fmul double %40, %41
  %add375 = fadd double %add365, %mul374
  %mul384 = fmul double %30, %33
  %mul393 = fmul double %31, %32
  %sub394 = fsub double %mul384, %mul393
  %mul403 = fmul double %34, %37
  %add404 = fadd double %sub394, %mul403
  %mul413 = fmul double %35, %36
  %sub414 = fsub double %add404, %mul413
  %mul423 = fmul double %38, %41
  %add424 = fadd double %sub414, %mul423
  %mul433 = fmul double %39, %40
  %sub434 = fsub double %add424, %mul433
  %mul435 = fmul double %add375, %add375
  %mul436 = fmul double %sub434, %sub434
  %add437 = fadd double %mul435, %mul436
  %call438 = tail call double @sqrt(double %add437) #5
  %cmp439 = fcmp olt double %max.3, %call438
  %max.4 = select i1 %cmp439, double %call438, double %max.3
  ret double %max.4
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @mynode(...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @terminate(i32) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
