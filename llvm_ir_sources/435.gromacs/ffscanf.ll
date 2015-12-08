; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ffscanf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"unknown ffscanf format '%c'\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ffscanf(%struct._IO_FILE* nocapture %in, i8* %fmt, ...) #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [4096 x i8], align 16
  %dval = alloca double, align 8
  %0 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i8* [ %fmt, %entry ], [ %incdec.ptr69, %for.inc ]
  %2 = load i8* %storemerge, align 1, !tbaa !0
  switch i8 %2, label %if.else [
    i8 0, label %for.end70
    i8 37, label %if.then
  ]

if.then:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %storemerge, i64 1
  %3 = load i8* %incdec.ptr, align 1, !tbaa !0
  %idxprom4.i = sext i8 %3 to i64
  %call.i = call i16** @__ctype_b_loc() #5
  %4 = load i16** %call.i, align 8, !tbaa !2
  %arrayidx5.i = getelementptr inbounds i16* %4, i64 %idxprom4.i
  %5 = load i16* %arrayidx5.i, align 2, !tbaa !3
  %and6.i = and i16 %5, 2048
  %tobool7.i = icmp eq i16 %and6.i, 0
  br i1 %tobool7.i, label %for.end, label %while.body.i

while.body.i:                                     ; preds = %if.then, %while.body.i
  %6 = phi i8 [ %8, %while.body.i ], [ %3, %if.then ]
  %7 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %incdec.ptr, %if.then ]
  %fld.08.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then ]
  %mul.i = mul nsw i32 %fld.08.i, 10
  %incdec.ptr.i = getelementptr inbounds i8* %7, i64 1
  %conv2.i = sext i8 %6 to i32
  %sub.i = add i32 %mul.i, -48
  %add.i = add i32 %sub.i, %conv2.i
  %8 = load i8* %incdec.ptr.i, align 1, !tbaa !0
  %idxprom.i = sext i8 %8 to i64
  %arrayidx.i = getelementptr inbounds i16* %4, i64 %idxprom.i
  %9 = load i16* %arrayidx.i, align 2, !tbaa !3
  %and.i = and i16 %9, 2048
  %tobool.i = icmp eq i16 %and.i, 0
  br i1 %tobool.i, label %getfld.exit, label %while.body.i

getfld.exit:                                      ; preds = %while.body.i
  %cmp481 = icmp sgt i32 %add.i, 0
  br i1 %cmp481, label %for.body6, label %for.end

for.body6:                                        ; preds = %getfld.exit, %for.body6
  %i.082 = phi i32 [ %i.0.inc, %for.body6 ], [ 0, %getfld.exit ]
  %call7 = call i32 @fgetc(%struct._IO_FILE* %in) #6
  %conv8 = trunc i32 %call7 to i8
  %idxprom = sext i32 %i.082 to i64
  %arrayidx = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom
  store i8 %conv8, i8* %arrayidx, align 1, !tbaa !0
  %sext.mask = and i32 %call7, 255
  %not.cmp12 = icmp ne i32 %sext.mask, 10
  %inc = zext i1 %not.cmp12 to i32
  %i.0.inc = add nsw i32 %inc, %i.082
  %cmp4 = icmp slt i32 %i.0.inc, %add.i
  br i1 %cmp4, label %for.body6, label %for.end

for.end:                                          ; preds = %if.then, %for.body6, %getfld.exit
  %fld.0.lcssa.i85 = phi i32 [ %add.i, %getfld.exit ], [ %add.i, %for.body6 ], [ 0, %if.then ]
  %incdec.ptr.i8084 = phi i8* [ %incdec.ptr.i, %getfld.exit ], [ %incdec.ptr.i, %for.body6 ], [ %incdec.ptr, %if.then ]
  %idxprom15 = sext i32 %fld.0.lcssa.i85 to i64
  %arrayidx16 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1, !tbaa !0
  %10 = load i8* %incdec.ptr.i8084, align 1, !tbaa !0
  %conv17 = sext i8 %10 to i32
  switch i32 %conv17, label %for.inc [
    i32 100, label %sw.bb
    i32 102, label %sw.bb21
    i32 70, label %sw.bb36
    i32 114, label %sw.bb51
  ]

sw.bb:                                            ; preds = %for.end
  %gp_offset = load i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %reg_save_area = load i8** %1, align 16
  %11 = sext i32 %gp_offset to i64
  %12 = getelementptr i8* %reg_save_area, i64 %11
  %13 = add i32 %gp_offset, 8
  store i32 %13, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %12, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32**
  %14 = load i32** %vaarg.addr, align 8
  %call20 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %14) #6
  br label %for.inc

sw.bb21:                                          ; preds = %for.end
  %gp_offset25 = load i32* %gp_offset_p, align 16
  %fits_in_gp26 = icmp ult i32 %gp_offset25, 41
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29

vaarg.in_reg27:                                   ; preds = %sw.bb21
  %reg_save_area28 = load i8** %1, align 16
  %15 = sext i32 %gp_offset25 to i64
  %16 = getelementptr i8* %reg_save_area28, i64 %15
  %17 = add i32 %gp_offset25, 8
  store i32 %17, i32* %gp_offset_p, align 16
  br label %vaarg.end33

vaarg.in_mem29:                                   ; preds = %sw.bb21
  %overflow_arg_area31 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next32 = getelementptr i8* %overflow_arg_area31, i64 8
  store i8* %overflow_arg_area.next32, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end33

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %vaarg.addr34.in = phi i8* [ %16, %vaarg.in_reg27 ], [ %overflow_arg_area31, %vaarg.in_mem29 ]
  %vaarg.addr34 = bitcast i8* %vaarg.addr34.in to float**
  %18 = load float** %vaarg.addr34, align 8
  %call35 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), float* %18) #6
  br label %for.inc

sw.bb36:                                          ; preds = %for.end
  %gp_offset40 = load i32* %gp_offset_p, align 16
  %fits_in_gp41 = icmp ult i32 %gp_offset40, 41
  br i1 %fits_in_gp41, label %vaarg.in_reg42, label %vaarg.in_mem44

vaarg.in_reg42:                                   ; preds = %sw.bb36
  %reg_save_area43 = load i8** %1, align 16
  %19 = sext i32 %gp_offset40 to i64
  %20 = getelementptr i8* %reg_save_area43, i64 %19
  %21 = add i32 %gp_offset40, 8
  store i32 %21, i32* %gp_offset_p, align 16
  br label %vaarg.end48

vaarg.in_mem44:                                   ; preds = %sw.bb36
  %overflow_arg_area46 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next47 = getelementptr i8* %overflow_arg_area46, i64 8
  store i8* %overflow_arg_area.next47, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end48

vaarg.end48:                                      ; preds = %vaarg.in_mem44, %vaarg.in_reg42
  %vaarg.addr49.in = phi i8* [ %20, %vaarg.in_reg42 ], [ %overflow_arg_area46, %vaarg.in_mem44 ]
  %vaarg.addr49 = bitcast i8* %vaarg.addr49.in to double**
  %22 = load double** %vaarg.addr49, align 8
  %call50 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %22) #6
  br label %for.inc

sw.bb51:                                          ; preds = %for.end
  %call53 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %dval) #6
  %23 = load double* %dval, align 8, !tbaa !4
  %conv54 = fptrunc double %23 to float
  %gp_offset57 = load i32* %gp_offset_p, align 16
  %fits_in_gp58 = icmp ult i32 %gp_offset57, 41
  br i1 %fits_in_gp58, label %vaarg.in_reg59, label %vaarg.in_mem61

vaarg.in_reg59:                                   ; preds = %sw.bb51
  %reg_save_area60 = load i8** %1, align 16
  %24 = sext i32 %gp_offset57 to i64
  %25 = getelementptr i8* %reg_save_area60, i64 %24
  %26 = add i32 %gp_offset57, 8
  store i32 %26, i32* %gp_offset_p, align 16
  br label %vaarg.end65

vaarg.in_mem61:                                   ; preds = %sw.bb51
  %overflow_arg_area63 = load i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next64 = getelementptr i8* %overflow_arg_area63, i64 8
  store i8* %overflow_arg_area.next64, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end65

vaarg.end65:                                      ; preds = %vaarg.in_mem61, %vaarg.in_reg59
  %vaarg.addr66.in = phi i8* [ %25, %vaarg.in_reg59 ], [ %overflow_arg_area63, %vaarg.in_mem61 ]
  %vaarg.addr66 = bitcast i8* %vaarg.addr66.in to float**
  %27 = load float** %vaarg.addr66, align 8
  store float %conv54, float* %27, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %for.cond
  %conv = sext i8 %2 to i32
  %add = add nsw i32 %conv, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %add) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.end, %vaarg.end65, %vaarg.end48, %vaarg.end33, %vaarg.end
  %incdec.ptr.i79 = phi i8* [ %storemerge, %if.else ], [ %incdec.ptr.i8084, %for.end ], [ %incdec.ptr.i8084, %vaarg.end65 ], [ %incdec.ptr.i8084, %vaarg.end48 ], [ %incdec.ptr.i8084, %vaarg.end33 ], [ %incdec.ptr.i8084, %vaarg.end ]
  %incdec.ptr69 = getelementptr inbounds i8* %incdec.ptr.i79, i64 1
  br label %for.cond

for.end70:                                        ; preds = %for.cond
  call void @llvm.va_end(i8* %arraydecay1)
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"any pointer", metadata !0}
!3 = metadata !{metadata !"short", metadata !0}
!4 = metadata !{metadata !"double", metadata !0}
!5 = metadata !{metadata !"float", metadata !0}
