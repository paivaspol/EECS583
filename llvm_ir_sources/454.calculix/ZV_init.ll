; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in ZV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in ZV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A zv->maxsize = %d, zv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in ZV_setMaxsize(%p,%d)\0A zv->size = %d, zv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in ZV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in ZV_setSize(%p,%d)\0A zv->maxsize = %d, newsize = %d, zv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ZV_init(%struct._ZV* %zv, i32 %size, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %zv}, i64 0, metadata !21), !dbg !49
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !22), !dbg !50
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !23), !dbg !51
  %cmp = icmp eq %struct._ZV* %zv, null, !dbg !52
  %cmp1 = icmp slt i32 %size, 0, !dbg !52
  %or.cond = or i1 %cmp, %cmp1, !dbg !52
  br i1 %or.cond, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !53, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._ZV* %zv, i32 %size, double* %entries) #5, !dbg !53
  tail call void @exit(i32 -1) #6, !dbg !58
  unreachable, !dbg !58

if.end:                                           ; preds = %entry
  tail call void @ZV_clearData(%struct._ZV* %zv) #5, !dbg !59
  %size2 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !60
  store i32 %size, i32* %size2, align 4, !dbg !60, !tbaa !61
  %maxsize = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !60
  store i32 %size, i32* %maxsize, align 4, !dbg !60, !tbaa !61
  %cmp3 = icmp eq double* %entries, null, !dbg !62
  br i1 %cmp3, label %if.else, label %if.then4, !dbg !62

if.then4:                                         ; preds = %if.end
  %owned = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !63
  store i32 0, i32* %owned, align 4, !dbg !63, !tbaa !61
  %vec = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !65
  store double* %entries, double** %vec, align 8, !dbg !65, !tbaa !55
  br label %if.end11, !dbg !66

if.else:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %size, 0, !dbg !67
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !67

if.then6:                                         ; preds = %if.else
  %owned7 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !68
  store i32 1, i32* %owned7, align 4, !dbg !68, !tbaa !61
  %mul = shl nsw i32 %size, 1, !dbg !70
  %call8 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #5, !dbg !70
  %vec9 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !70
  store double* %call8, double** %vec9, align 8, !dbg !70, !tbaa !55
  br label %if.end11, !dbg !71

if.end11:                                         ; preds = %if.else, %if.then6, %if.then4
  ret void, !dbg !72
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ZV_clearData(%struct._ZV*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize uwtable
define void @ZV_init1(%struct._ZV* %zv, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %zv}, i64 0, metadata !28), !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !29), !dbg !74
  tail call void @ZV_init(%struct._ZV* %zv, i32 %size, double* null) #7, !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_init2(%struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %zv}, i64 0, metadata !34), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !35), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %maxsize}, i64 0, metadata !36), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %owned}, i64 0, metadata !37), !dbg !80
  tail call void @llvm.dbg.value(metadata !{double* %vec}, i64 0, metadata !38), !dbg !81
  %cmp = icmp eq %struct._ZV* %zv, null, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !83, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._ZV* null, i32 %size, i32 %maxsize, i32 %owned, double* %vec) #5, !dbg !83
  tail call void @exit(i32 -1) #6, !dbg !85
  unreachable, !dbg !85

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %size, 0, !dbg !86
  %cmp2 = icmp slt i32 %maxsize, %size, !dbg !86
  %or.cond = or i1 %cmp1, %cmp2, !dbg !86
  br i1 %or.cond, label %if.then3, label %if.end5, !dbg !86

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !87, !tbaa !55
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %size, i32 %maxsize) #5, !dbg !87
  tail call void @exit(i32 -1) #6, !dbg !89
  unreachable, !dbg !89

if.end5:                                          ; preds = %if.end
  %2 = icmp ugt i32 %owned, 1, !dbg !90
  br i1 %2, label %if.then9, label %if.end11, !dbg !90

if.then9:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !91, !tbaa !55
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 %owned, double* %vec, i32 %owned) #5, !dbg !91
  tail call void @exit(i32 -1) #6, !dbg !93
  unreachable, !dbg !93

if.end11:                                         ; preds = %if.end5
  %cmp12 = icmp eq i32 %owned, 1, !dbg !94
  %cmp13 = icmp eq double* %vec, null, !dbg !94
  %or.cond64 = and i1 %cmp12, %cmp13, !dbg !94
  br i1 %or.cond64, label %if.then14, label %if.end16, !dbg !94

if.then14:                                        ; preds = %if.end11
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !55
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._ZV* %zv, i32 %size, i32 %maxsize, i32 1, double* null, i32 1, double* null) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end16:                                         ; preds = %if.end11
  tail call void @ZV_clearData(%struct._ZV* %zv) #5, !dbg !98
  br i1 %cmp13, label %if.then18, label %if.else, !dbg !99

if.then18:                                        ; preds = %if.end16
  tail call void @ZV_init(%struct._ZV* %zv, i32 %size, double* null) #7, !dbg !100
  br label %if.end23, !dbg !102

if.else:                                          ; preds = %if.end16
  %size19 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !103
  store i32 %size, i32* %size19, align 4, !dbg !103, !tbaa !61
  %maxsize20 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !105
  store i32 %maxsize, i32* %maxsize20, align 4, !dbg !105, !tbaa !61
  %owned21 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !106
  store i32 %owned, i32* %owned21, align 4, !dbg !106, !tbaa !61
  %vec22 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !107
  store double* %vec, double** %vec22, align 8, !dbg !107, !tbaa !55
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  ret void, !dbg !108
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_setMaxsize(%struct._ZV* %zv, i32 %newmaxsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %zv}, i64 0, metadata !41), !dbg !109
  tail call void @llvm.dbg.value(metadata !{i32 %newmaxsize}, i64 0, metadata !42), !dbg !110
  %cmp = icmp eq %struct._ZV* %zv, null, !dbg !111
  %cmp1 = icmp slt i32 %newmaxsize, 0, !dbg !111
  %or.cond = or i1 %cmp, %cmp1, !dbg !111
  br i1 %or.cond, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !112, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize) #5, !dbg !112
  tail call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !115
  %1 = load i32* %maxsize, align 4, !dbg !115, !tbaa !61
  %cmp2 = icmp sgt i32 %1, 0, !dbg !115
  br i1 %cmp2, label %land.lhs.true, label %if.end8, !dbg !115

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !115
  %2 = load i32* %owned, align 4, !dbg !115, !tbaa !61
  %cmp3 = icmp eq i32 %2, 0, !dbg !115
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !115

if.then4:                                         ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !116, !tbaa !55
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize, i32 %1, i32 0) #5, !dbg !116
  tail call void @exit(i32 -1) #6, !dbg !118
  unreachable, !dbg !118

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %cmp10 = icmp eq i32 %1, %newmaxsize, !dbg !119
  br i1 %cmp10, label %if.end40, label %if.then11, !dbg !119

if.then11:                                        ; preds = %if.end8
  %mul = shl nsw i32 %newmaxsize, 1, !dbg !120
  %call12 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #5, !dbg !120
  tail call void @llvm.dbg.value(metadata !{double* %call12}, i64 0, metadata !43), !dbg !120
  %size = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !121
  %4 = load i32* %size, align 4, !dbg !121, !tbaa !61
  %cmp13 = icmp sgt i32 %4, 0, !dbg !121
  %vec15 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 3, !dbg !122
  br i1 %cmp13, label %if.then14, label %if.end31, !dbg !121

if.then14:                                        ; preds = %if.then11
  %5 = load double** %vec15, align 8, !dbg !122, !tbaa !55
  %cmp16 = icmp eq double* %5, null, !dbg !122
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !122

if.then17:                                        ; preds = %if.then14
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !124, !tbaa !55
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._ZV* %zv, i32 %newmaxsize, i32 %4) #5, !dbg !124
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

if.end20:                                         ; preds = %if.then14
  %cmp22 = icmp sgt i32 %4, %newmaxsize, !dbg !127
  br i1 %cmp22, label %if.else, label %if.then23, !dbg !127

if.then23:                                        ; preds = %if.end20
  %mul25 = shl nsw i32 %4, 1, !dbg !128
  tail call void @DVcopy(i32 %mul25, double* %call12, double* %5) #5, !dbg !128
  br label %if.end31, !dbg !130

if.else:                                          ; preds = %if.end20
  tail call void @DVcopy(i32 %mul, double* %call12, double* %5) #5, !dbg !131
  store i32 %newmaxsize, i32* %size, align 4, !dbg !133, !tbaa !61
  br label %if.end31

if.end31:                                         ; preds = %if.then11, %if.then23, %if.else
  %7 = load double** %vec15, align 8, !dbg !134, !tbaa !55
  %cmp33 = icmp eq double* %7, null, !dbg !134
  br i1 %cmp33, label %if.end36, label %if.then34, !dbg !134

if.then34:                                        ; preds = %if.end31
  tail call void @DVfree(double* %7) #5, !dbg !135
  br label %if.end36, !dbg !137

if.end36:                                         ; preds = %if.end31, %if.then34
  store i32 %newmaxsize, i32* %maxsize, align 4, !dbg !138, !tbaa !61
  %owned38 = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !139
  store i32 1, i32* %owned38, align 4, !dbg !139, !tbaa !61
  store double* %call12, double** %vec15, align 8, !dbg !140, !tbaa !55
  br label %if.end40, !dbg !141

if.end40:                                         ; preds = %if.end8, %if.end36
  ret void, !dbg !142
}

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @ZV_setSize(%struct._ZV* %zv, i32 %newsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %zv}, i64 0, metadata !47), !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %newsize}, i64 0, metadata !48), !dbg !144
  %cmp = icmp eq %struct._ZV* %zv, null, !dbg !145
  %cmp1 = icmp slt i32 %newsize, 0, !dbg !145
  %or.cond = or i1 %cmp, %cmp1, !dbg !145
  br i1 %or.cond, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !146, !tbaa !55
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._ZV* %zv, i32 %newsize) #5, !dbg !146
  tail call void @exit(i32 -1) #6, !dbg !148
  unreachable, !dbg !148

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 1, !dbg !149
  %1 = load i32* %maxsize, align 4, !dbg !149, !tbaa !61
  %cmp2 = icmp sgt i32 %1, 0, !dbg !149
  %cmp4 = icmp slt i32 %1, %newsize, !dbg !149
  %or.cond33 = and i1 %cmp2, %cmp4, !dbg !149
  br i1 %or.cond33, label %land.lhs.true5, label %if.end11, !dbg !149

land.lhs.true5:                                   ; preds = %if.end
  %owned = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 2, !dbg !149
  %2 = load i32* %owned, align 4, !dbg !149, !tbaa !61
  %cmp6 = icmp eq i32 %2, 0, !dbg !149
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !149

if.then7:                                         ; preds = %land.lhs.true5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !55
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._ZV* %zv, i32 %newsize, i32 %1, i32 %newsize, i32 0) #5, !dbg !150
  tail call void @exit(i32 -1) #6, !dbg !152
  unreachable, !dbg !152

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  br i1 %cmp4, label %if.then14, label %if.end15, !dbg !153

if.then14:                                        ; preds = %if.end11
  tail call void @ZV_setMaxsize(%struct._ZV* %zv, i32 %newsize) #7, !dbg !154
  br label %if.end15, !dbg !156

if.end15:                                         ; preds = %if.then14, %if.end11
  %size = getelementptr inbounds %struct._ZV* %zv, i64 0, i32 0, !dbg !157
  store i32 %newsize, i32* %size, align 4, !dbg !157, !tbaa !61
  ret void, !dbg !158
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !24, metadata !30, metadata !39, metadata !45}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_init", metadata !"ZV_init", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32, double*)* @ZV_init, null, null, metadata !20, i32 29} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 29] [ZV_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !18}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ZV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ZV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ZV] [line 20, size 0, align 0, offset 0] [from _ZV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ZV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ZV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/../ZV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{metadata !21, metadata !22, metadata !23}
!21 = metadata !{i32 786689, metadata !4, metadata !"zv", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zv] [line 26]
!22 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 33554459, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 27]
!23 = metadata !{i32 786689, metadata !4, metadata !"entries", metadata !5, i32 50331676, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 28]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_init1", metadata !"ZV_init1", metadata !"", i32 70, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32)* @ZV_init1, null, null, metadata !27, i32 73} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 73] [ZV_init1]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !8, metadata !14}
!27 = metadata !{metadata !28, metadata !29}
!28 = metadata !{i32 786689, metadata !24, metadata !"zv", metadata !5, i32 16777287, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zv] [line 71]
!29 = metadata !{i32 786689, metadata !24, metadata !"size", metadata !5, i32 33554504, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 72]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_init2", metadata !"ZV_init2", metadata !"", i32 87, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32, i32, i32, double*)* @ZV_init2, null, null, metadata !33, i32 93} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 93] [ZV_init2]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !18}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!34 = metadata !{i32 786689, metadata !30, metadata !"zv", metadata !5, i32 16777304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zv] [line 88]
!35 = metadata !{i32 786689, metadata !30, metadata !"size", metadata !5, i32 33554521, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 89]
!36 = metadata !{i32 786689, metadata !30, metadata !"maxsize", metadata !5, i32 50331738, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxsize] [line 90]
!37 = metadata !{i32 786689, metadata !30, metadata !"owned", metadata !5, i32 67108955, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owned] [line 91]
!38 = metadata !{i32 786689, metadata !30, metadata !"vec", metadata !5, i32 83886172, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 92]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_setMaxsize", metadata !"ZV_setMaxsize", metadata !"", i32 157, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32)* @ZV_setMaxsize, null, null, metadata !40, i32 160} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 160] [ZV_setMaxsize]
!40 = metadata !{metadata !41, metadata !42, metadata !43}
!41 = metadata !{i32 786689, metadata !39, metadata !"zv", metadata !5, i32 16777374, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zv] [line 158]
!42 = metadata !{i32 786689, metadata !39, metadata !"newmaxsize", metadata !5, i32 33554591, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newmaxsize] [line 159]
!43 = metadata !{i32 786688, metadata !44, metadata !"vec", metadata !5, i32 183, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 183]
!44 = metadata !{i32 786443, metadata !1, metadata !39, i32 177, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_setSize", metadata !"ZV_setSize", metadata !"", i32 236, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32)* @ZV_setSize, null, null, metadata !46, i32 239} ; [ DW_TAG_subprogram ] [line 236] [def] [scope 239] [ZV_setSize]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786689, metadata !45, metadata !"zv", metadata !5, i32 16777453, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zv] [line 237]
!48 = metadata !{i32 786689, metadata !45, metadata !"newsize", metadata !5, i32 33554670, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 238]
!49 = metadata !{i32 26, i32 0, metadata !4, null}
!50 = metadata !{i32 27, i32 0, metadata !4, null}
!51 = metadata !{i32 28, i32 0, metadata !4, null}
!52 = metadata !{i32 30, i32 0, metadata !4, null}
!53 = metadata !{i32 31, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!55 = metadata !{metadata !"any pointer", metadata !56}
!56 = metadata !{metadata !"omnipotent char", metadata !57}
!57 = metadata !{metadata !"Simple C/C++ TBAA"}
!58 = metadata !{i32 33, i32 0, metadata !54, null}
!59 = metadata !{i32 40, i32 0, metadata !4, null}
!60 = metadata !{i32 46, i32 0, metadata !4, null}
!61 = metadata !{metadata !"int", metadata !56}
!62 = metadata !{i32 52, i32 0, metadata !4, null}
!63 = metadata !{i32 53, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!65 = metadata !{i32 54, i32 0, metadata !64, null}
!66 = metadata !{i32 55, i32 0, metadata !64, null}
!67 = metadata !{i32 55, i32 0, metadata !4, null}
!68 = metadata !{i32 56, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!70 = metadata !{i32 57, i32 0, metadata !69, null}
!71 = metadata !{i32 58, i32 0, metadata !69, null} ; [ DW_TAG_imported_module ]
!72 = metadata !{i32 59, i32 0, metadata !4, null}
!73 = metadata !{i32 71, i32 0, metadata !24, null}
!74 = metadata !{i32 72, i32 0, metadata !24, null}
!75 = metadata !{i32 74, i32 0, metadata !24, null}
!76 = metadata !{i32 76, i32 0, metadata !24, null}
!77 = metadata !{i32 88, i32 0, metadata !30, null}
!78 = metadata !{i32 89, i32 0, metadata !30, null}
!79 = metadata !{i32 90, i32 0, metadata !30, null}
!80 = metadata !{i32 91, i32 0, metadata !30, null}
!81 = metadata !{i32 92, i32 0, metadata !30, null}
!82 = metadata !{i32 99, i32 0, metadata !30, null}
!83 = metadata !{i32 100, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !30, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!85 = metadata !{i32 102, i32 0, metadata !84, null}
!86 = metadata !{i32 104, i32 0, metadata !30, null}
!87 = metadata !{i32 105, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !30, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!89 = metadata !{i32 108, i32 0, metadata !88, null}
!90 = metadata !{i32 110, i32 0, metadata !30, null}
!91 = metadata !{i32 111, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !30, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!93 = metadata !{i32 113, i32 0, metadata !92, null}
!94 = metadata !{i32 115, i32 0, metadata !30, null}
!95 = metadata !{i32 116, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !30, i32 115, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!97 = metadata !{i32 119, i32 0, metadata !96, null}
!98 = metadata !{i32 126, i32 0, metadata !30, null}
!99 = metadata !{i32 128, i32 0, metadata !30, null}
!100 = metadata !{i32 134, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !30, i32 128, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!102 = metadata !{i32 135, i32 0, metadata !101, null}
!103 = metadata !{i32 141, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !30, i32 135, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!105 = metadata !{i32 142, i32 0, metadata !104, null}
!106 = metadata !{i32 143, i32 0, metadata !104, null}
!107 = metadata !{i32 144, i32 0, metadata !104, null}
!108 = metadata !{i32 146, i32 0, metadata !30, null}
!109 = metadata !{i32 158, i32 0, metadata !39, null}
!110 = metadata !{i32 159, i32 0, metadata !39, null}
!111 = metadata !{i32 166, i32 0, metadata !39, null}
!112 = metadata !{i32 167, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !39, i32 166, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!114 = metadata !{i32 169, i32 0, metadata !113, null}
!115 = metadata !{i32 171, i32 0, metadata !39, null}
!116 = metadata !{i32 172, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !39, i32 171, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!118 = metadata !{i32 175, i32 0, metadata !117, null}
!119 = metadata !{i32 177, i32 0, metadata !39, null}
!120 = metadata !{i32 183, i32 0, metadata !44, null}
!121 = metadata !{i32 184, i32 0, metadata !44, null}
!122 = metadata !{i32 190, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !44, i32 184, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!124 = metadata !{i32 191, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !123, i32 190, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!126 = metadata !{i32 194, i32 0, metadata !125, null}
!127 = metadata !{i32 196, i32 0, metadata !123, null}
!128 = metadata !{i32 197, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !123, i32 196, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!130 = metadata !{i32 198, i32 0, metadata !129, null}
!131 = metadata !{i32 204, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !123, i32 198, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!133 = metadata !{i32 205, i32 0, metadata !132, null}
!134 = metadata !{i32 208, i32 0, metadata !44, null}
!135 = metadata !{i32 214, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !44, i32 208, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!137 = metadata !{i32 215, i32 0, metadata !136, null}
!138 = metadata !{i32 221, i32 0, metadata !44, null}
!139 = metadata !{i32 222, i32 0, metadata !44, null}
!140 = metadata !{i32 223, i32 0, metadata !44, null}
!141 = metadata !{i32 224, i32 0, metadata !44, null}
!142 = metadata !{i32 225, i32 0, metadata !39, null}
!143 = metadata !{i32 237, i32 0, metadata !45, null}
!144 = metadata !{i32 238, i32 0, metadata !45, null}
!145 = metadata !{i32 245, i32 0, metadata !45, null}
!146 = metadata !{i32 246, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !45, i32 245, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!148 = metadata !{i32 248, i32 0, metadata !147, null}
!149 = metadata !{i32 250, i32 0, metadata !45, null}
!150 = metadata !{i32 251, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !45, i32 250, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!152 = metadata !{i32 254, i32 0, metadata !151, null}
!153 = metadata !{i32 256, i32 0, metadata !45, null}
!154 = metadata !{i32 262, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !45, i32 256, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_init.c]
!156 = metadata !{i32 263, i32 0, metadata !155, null}
!157 = metadata !{i32 264, i32 0, metadata !45, null}
!158 = metadata !{i32 266, i32 0, metadata !45, null}
