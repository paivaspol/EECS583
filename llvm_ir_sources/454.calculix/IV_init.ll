; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_init(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A size = %d, maxsize = %d \0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A owned = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [67 x i8] c"\0A fatal error in IV_init2(%p,%d,%d,%d,%p)\0A owned = %d and vec = %p\00", align 1
@.str5 = private unnamed_addr constant [50 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [73 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A iv->maxsize = %d, iv->owned = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [71 x i8] c"\0A fatal error in IV_setMaxsize(%p,%d)\0A iv->size = %d, iv->vec is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_setSize(%p,%d)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [84 x i8] c"\0A fatal error in IV_setSize(%p,%d)\0A iv->maxsize = %d, newsize = %d, iv->owned = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IV_init(%struct._IV* %iv, i32 %size, i32* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !20), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !21), !dbg !49
  tail call void @llvm.dbg.value(metadata !{i32* %entries}, i64 0, metadata !22), !dbg !50
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !51
  %cmp1 = icmp slt i32 %size, 0, !dbg !51
  %or.cond = or i1 %cmp, %cmp1, !dbg !51
  br i1 %or.cond, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !52, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32* %entries) #5, !dbg !52
  tail call void @exit(i32 -1) #6, !dbg !57
  unreachable, !dbg !57

if.end:                                           ; preds = %entry
  tail call void @IV_clearData(%struct._IV* %iv) #5, !dbg !58
  %size2 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !59
  store i32 %size, i32* %size2, align 4, !dbg !59, !tbaa !60
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !59
  store i32 %size, i32* %maxsize, align 4, !dbg !59, !tbaa !60
  %cmp3 = icmp eq i32* %entries, null, !dbg !61
  br i1 %cmp3, label %if.else, label %if.then4, !dbg !61

if.then4:                                         ; preds = %if.end
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !62
  store i32 0, i32* %owned, align 4, !dbg !62, !tbaa !60
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !64
  store i32* %entries, i32** %vec, align 8, !dbg !64, !tbaa !54
  br label %if.end11, !dbg !65

if.else:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %size, 0, !dbg !66
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !66

if.then6:                                         ; preds = %if.else
  %owned7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !67
  store i32 1, i32* %owned7, align 4, !dbg !67, !tbaa !60
  %call8 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !69
  %vec9 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !69
  store i32* %call8, i32** %vec9, align 8, !dbg !69, !tbaa !54
  br label %if.end11, !dbg !70

if.end11:                                         ; preds = %if.else, %if.then6, %if.then4
  ret void, !dbg !71
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_init1(%struct._IV* %iv, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !27), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !73
  tail call void @IV_init(%struct._IV* %iv, i32 %size, i32* null) #7, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: nounwind optsize uwtable
define void @IV_init2(%struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !33), !dbg !76
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %maxsize}, i64 0, metadata !35), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %owned}, i64 0, metadata !36), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32* %vec}, i64 0, metadata !37), !dbg !80
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !82, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._IV* null, i32 %size, i32 %maxsize, i32 %owned, i32* %vec) #5, !dbg !82
  tail call void @exit(i32 -1) #6, !dbg !84
  unreachable, !dbg !84

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %size, 0, !dbg !85
  %cmp2 = icmp slt i32 %maxsize, %size, !dbg !85
  %or.cond = or i1 %cmp1, %cmp2, !dbg !85
  br i1 %or.cond, label %if.then3, label %if.end5, !dbg !85

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !54
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str2, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec, i32 %size, i32 %maxsize) #5, !dbg !86
  tail call void @exit(i32 -1) #6, !dbg !88
  unreachable, !dbg !88

if.end5:                                          ; preds = %if.end
  %2 = icmp ugt i32 %owned, 1, !dbg !89
  br i1 %2, label %if.then9, label %if.end11, !dbg !89

if.then9:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !54
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 %owned, i32* %vec, i32 %owned) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

if.end11:                                         ; preds = %if.end5
  %cmp12 = icmp eq i32 %owned, 1, !dbg !93
  %cmp13 = icmp eq i32* %vec, null, !dbg !93
  %or.cond64 = and i1 %cmp12, %cmp13, !dbg !93
  br i1 %or.cond64, label %if.then14, label %if.end16, !dbg !93

if.then14:                                        ; preds = %if.end11
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !94, !tbaa !54
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32 %size, i32 %maxsize, i32 1, i32* null, i32 1, i32* null) #5, !dbg !94
  tail call void @exit(i32 -1) #6, !dbg !96
  unreachable, !dbg !96

if.end16:                                         ; preds = %if.end11
  tail call void @IV_clearData(%struct._IV* %iv) #5, !dbg !97
  br i1 %cmp13, label %if.then18, label %if.else, !dbg !98

if.then18:                                        ; preds = %if.end16
  tail call void @IV_init(%struct._IV* %iv, i32 %size, i32* null) #7, !dbg !99
  br label %if.end23, !dbg !101

if.else:                                          ; preds = %if.end16
  %size19 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !102
  store i32 %size, i32* %size19, align 4, !dbg !102, !tbaa !60
  %maxsize20 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !104
  store i32 %maxsize, i32* %maxsize20, align 4, !dbg !104, !tbaa !60
  %owned21 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !105
  store i32 %owned, i32* %owned21, align 4, !dbg !105, !tbaa !60
  %vec22 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !106
  store i32* %vec, i32** %vec22, align 8, !dbg !106, !tbaa !54
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  ret void, !dbg !107
}

; Function Attrs: nounwind optsize uwtable
define void @IV_setMaxsize(%struct._IV* %iv, i32 %newmaxsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !40), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %newmaxsize}, i64 0, metadata !41), !dbg !109
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !110
  %cmp1 = icmp slt i32 %newmaxsize, 0, !dbg !110
  %or.cond = or i1 %cmp, %cmp1, !dbg !110
  br i1 %or.cond, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !111, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize) #5, !dbg !111
  tail call void @exit(i32 -1) #6, !dbg !113
  unreachable, !dbg !113

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !114
  %1 = load i32* %maxsize, align 4, !dbg !114, !tbaa !60
  %cmp2 = icmp sgt i32 %1, 0, !dbg !114
  br i1 %cmp2, label %land.lhs.true, label %if.end8, !dbg !114

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !114
  %2 = load i32* %owned, align 4, !dbg !114, !tbaa !60
  %cmp3 = icmp eq i32 %2, 0, !dbg !114
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !114

if.then4:                                         ; preds = %land.lhs.true
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !115, !tbaa !54
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([73 x i8]* @.str6, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize, i32 %1, i32 0) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %cmp10 = icmp eq i32 %1, %newmaxsize, !dbg !118
  br i1 %cmp10, label %if.end38, label %if.then11, !dbg !118

if.then11:                                        ; preds = %if.end8
  %call12 = tail call i32* @IVinit(i32 %newmaxsize, i32 -1) #5, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !42), !dbg !119
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !120
  %4 = load i32* %size, align 4, !dbg !120, !tbaa !60
  %cmp13 = icmp sgt i32 %4, 0, !dbg !120
  %vec15 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !121
  br i1 %cmp13, label %if.then14, label %if.end29, !dbg !120

if.then14:                                        ; preds = %if.then11
  %5 = load i32** %vec15, align 8, !dbg !121, !tbaa !54
  %cmp16 = icmp eq i32* %5, null, !dbg !121
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !121

if.then17:                                        ; preds = %if.then14
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !123, !tbaa !54
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([71 x i8]* @.str7, i64 0, i64 0), %struct._IV* %iv, i32 %newmaxsize, i32 %4) #5, !dbg !123
  tail call void @exit(i32 -1) #6, !dbg !125
  unreachable, !dbg !125

if.end20:                                         ; preds = %if.then14
  %cmp22 = icmp sgt i32 %4, %newmaxsize, !dbg !126
  br i1 %cmp22, label %if.else, label %if.then23, !dbg !126

if.then23:                                        ; preds = %if.end20
  tail call void @IVcopy(i32 %4, i32* %call12, i32* %5) #5, !dbg !127
  br label %if.end29, !dbg !129

if.else:                                          ; preds = %if.end20
  tail call void @IVcopy(i32 %newmaxsize, i32* %call12, i32* %5) #5, !dbg !130
  store i32 %newmaxsize, i32* %size, align 4, !dbg !132, !tbaa !60
  br label %if.end29

if.end29:                                         ; preds = %if.then11, %if.then23, %if.else
  %7 = load i32** %vec15, align 8, !dbg !133, !tbaa !54
  %cmp31 = icmp eq i32* %7, null, !dbg !133
  br i1 %cmp31, label %if.end34, label %if.then32, !dbg !133

if.then32:                                        ; preds = %if.end29
  tail call void @IVfree(i32* %7) #5, !dbg !134
  br label %if.end34, !dbg !136

if.end34:                                         ; preds = %if.end29, %if.then32
  store i32 %newmaxsize, i32* %maxsize, align 4, !dbg !137, !tbaa !60
  %owned36 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !138
  store i32 1, i32* %owned36, align 4, !dbg !138, !tbaa !60
  store i32* %call12, i32** %vec15, align 8, !dbg !139, !tbaa !54
  br label %if.end38, !dbg !140

if.end38:                                         ; preds = %if.end8, %if.end34
  ret void, !dbg !141
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_setSize(%struct._IV* %iv, i32 %newsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !46), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %newsize}, i64 0, metadata !47), !dbg !143
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !144
  %cmp1 = icmp slt i32 %newsize, 0, !dbg !144
  %or.cond = or i1 %cmp, %cmp1, !dbg !144
  br i1 %or.cond, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !145, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, i32 %newsize) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !147
  unreachable, !dbg !147

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !148
  %1 = load i32* %maxsize, align 4, !dbg !148, !tbaa !60
  %cmp2 = icmp sgt i32 %1, 0, !dbg !148
  %cmp4 = icmp slt i32 %1, %newsize, !dbg !148
  %or.cond33 = and i1 %cmp2, %cmp4, !dbg !148
  br i1 %or.cond33, label %land.lhs.true5, label %if.end11, !dbg !148

land.lhs.true5:                                   ; preds = %if.end
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !148
  %2 = load i32* %owned, align 4, !dbg !148, !tbaa !60
  %cmp6 = icmp eq i32 %2, 0, !dbg !148
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !148

if.then7:                                         ; preds = %land.lhs.true5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !149, !tbaa !54
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([84 x i8]* @.str9, i64 0, i64 0), %struct._IV* %iv, i32 %newsize, i32 %1, i32 %newsize, i32 0) #5, !dbg !149
  tail call void @exit(i32 -1) #6, !dbg !151
  unreachable, !dbg !151

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  br i1 %cmp4, label %if.then14, label %if.end15, !dbg !152

if.then14:                                        ; preds = %if.end11
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %newsize) #7, !dbg !153
  br label %if.end15, !dbg !155

if.end15:                                         ; preds = %if.then14, %if.end11
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !156
  store i32 %newsize, i32* %size, align 4, !dbg !156, !tbaa !60
  ret void, !dbg !157
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !23, metadata !29, metadata !38, metadata !44}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_init", metadata !"IV_init", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32, i32*)* @IV_init, null, null, metadata !19, i32 28} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 28] [IV_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !18}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{metadata !20, metadata !21, metadata !22}
!20 = metadata !{i32 786689, metadata !4, metadata !"iv", metadata !5, i32 16777241, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 25]
!21 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 33554458, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!22 = metadata !{i32 786689, metadata !4, metadata !"entries", metadata !5, i32 50331675, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 27]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_init1", metadata !"IV_init1", metadata !"", i32 76, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32)* @IV_init1, null, null, metadata !26, i32 79} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 79] [IV_init1]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !8, metadata !14}
!26 = metadata !{metadata !27, metadata !28}
!27 = metadata !{i32 786689, metadata !23, metadata !"iv", metadata !5, i32 16777293, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 77]
!28 = metadata !{i32 786689, metadata !23, metadata !"size", metadata !5, i32 33554510, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 78]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_init2", metadata !"IV_init2", metadata !"", i32 93, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32, i32, i32, i32*)* @IV_init2, null, null, metadata !32, i32 99} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 99] [IV_init2]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !18}
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!33 = metadata !{i32 786689, metadata !29, metadata !"iv", metadata !5, i32 16777310, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 94]
!34 = metadata !{i32 786689, metadata !29, metadata !"size", metadata !5, i32 33554527, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 95]
!35 = metadata !{i32 786689, metadata !29, metadata !"maxsize", metadata !5, i32 50331744, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxsize] [line 96]
!36 = metadata !{i32 786689, metadata !29, metadata !"owned", metadata !5, i32 67108961, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owned] [line 97]
!37 = metadata !{i32 786689, metadata !29, metadata !"vec", metadata !5, i32 83886178, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vec] [line 98]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_setMaxsize", metadata !"IV_setMaxsize", metadata !"", i32 163, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32)* @IV_setMaxsize, null, null, metadata !39, i32 166} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 166] [IV_setMaxsize]
!39 = metadata !{metadata !40, metadata !41, metadata !42}
!40 = metadata !{i32 786689, metadata !38, metadata !"iv", metadata !5, i32 16777380, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 164]
!41 = metadata !{i32 786689, metadata !38, metadata !"newmaxsize", metadata !5, i32 33554597, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newmaxsize] [line 165]
!42 = metadata !{i32 786688, metadata !43, metadata !"vec", metadata !5, i32 189, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec] [line 189]
!43 = metadata !{i32 786443, metadata !1, metadata !38, i32 183, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_setSize", metadata !"IV_setSize", metadata !"", i32 253, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32)* @IV_setSize, null, null, metadata !45, i32 256} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 256] [IV_setSize]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786689, metadata !44, metadata !"iv", metadata !5, i32 16777470, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 254]
!47 = metadata !{i32 786689, metadata !44, metadata !"newsize", metadata !5, i32 33554687, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 255]
!48 = metadata !{i32 25, i32 0, metadata !4, null}
!49 = metadata !{i32 26, i32 0, metadata !4, null}
!50 = metadata !{i32 27, i32 0, metadata !4, null}
!51 = metadata !{i32 29, i32 0, metadata !4, null}
!52 = metadata !{i32 30, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!54 = metadata !{metadata !"any pointer", metadata !55}
!55 = metadata !{metadata !"omnipotent char", metadata !56}
!56 = metadata !{metadata !"Simple C/C++ TBAA"}
!57 = metadata !{i32 32, i32 0, metadata !53, null}
!58 = metadata !{i32 39, i32 0, metadata !4, null}
!59 = metadata !{i32 45, i32 0, metadata !4, null}
!60 = metadata !{metadata !"int", metadata !55}
!61 = metadata !{i32 51, i32 0, metadata !4, null}
!62 = metadata !{i32 52, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!64 = metadata !{i32 53, i32 0, metadata !63, null}
!65 = metadata !{i32 54, i32 0, metadata !63, null}
!66 = metadata !{i32 54, i32 0, metadata !4, null}
!67 = metadata !{i32 55, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !4, i32 54, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!69 = metadata !{i32 56, i32 0, metadata !68, null}
!70 = metadata !{i32 57, i32 0, metadata !68, null}
!71 = metadata !{i32 65, i32 0, metadata !4, null}
!72 = metadata !{i32 77, i32 0, metadata !23, null}
!73 = metadata !{i32 78, i32 0, metadata !23, null}
!74 = metadata !{i32 80, i32 0, metadata !23, null}
!75 = metadata !{i32 82, i32 0, metadata !23, null}
!76 = metadata !{i32 94, i32 0, metadata !29, null}
!77 = metadata !{i32 95, i32 0, metadata !29, null}
!78 = metadata !{i32 96, i32 0, metadata !29, null}
!79 = metadata !{i32 97, i32 0, metadata !29, null}
!80 = metadata !{i32 98, i32 0, metadata !29, null}
!81 = metadata !{i32 105, i32 0, metadata !29, null}
!82 = metadata !{i32 106, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !29, i32 105, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!84 = metadata !{i32 108, i32 0, metadata !83, null}
!85 = metadata !{i32 110, i32 0, metadata !29, null}
!86 = metadata !{i32 111, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !29, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!88 = metadata !{i32 114, i32 0, metadata !87, null}
!89 = metadata !{i32 116, i32 0, metadata !29, null}
!90 = metadata !{i32 117, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !29, i32 116, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!92 = metadata !{i32 119, i32 0, metadata !91, null}
!93 = metadata !{i32 121, i32 0, metadata !29, null}
!94 = metadata !{i32 122, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !29, i32 121, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!96 = metadata !{i32 125, i32 0, metadata !95, null}
!97 = metadata !{i32 132, i32 0, metadata !29, null}
!98 = metadata !{i32 134, i32 0, metadata !29, null}
!99 = metadata !{i32 140, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !29, i32 134, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!101 = metadata !{i32 141, i32 0, metadata !100, null}
!102 = metadata !{i32 147, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !29, i32 141, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!104 = metadata !{i32 148, i32 0, metadata !103, null}
!105 = metadata !{i32 149, i32 0, metadata !103, null}
!106 = metadata !{i32 150, i32 0, metadata !103, null}
!107 = metadata !{i32 152, i32 0, metadata !29, null}
!108 = metadata !{i32 164, i32 0, metadata !38, null}
!109 = metadata !{i32 165, i32 0, metadata !38, null}
!110 = metadata !{i32 172, i32 0, metadata !38, null}
!111 = metadata !{i32 173, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !38, i32 172, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!113 = metadata !{i32 175, i32 0, metadata !112, null}
!114 = metadata !{i32 177, i32 0, metadata !38, null}
!115 = metadata !{i32 178, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !38, i32 177, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!117 = metadata !{i32 181, i32 0, metadata !116, null}
!118 = metadata !{i32 183, i32 0, metadata !38, null}
!119 = metadata !{i32 189, i32 0, metadata !43, null}
!120 = metadata !{i32 190, i32 0, metadata !43, null}
!121 = metadata !{i32 196, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !43, i32 190, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!123 = metadata !{i32 197, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 196, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!125 = metadata !{i32 200, i32 0, metadata !124, null}
!126 = metadata !{i32 202, i32 0, metadata !122, null}
!127 = metadata !{i32 208, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !122, i32 202, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!129 = metadata !{i32 209, i32 0, metadata !128, null}
!130 = metadata !{i32 215, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !122, i32 209, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!132 = metadata !{i32 216, i32 0, metadata !131, null}
!133 = metadata !{i32 219, i32 0, metadata !43, null}
!134 = metadata !{i32 225, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !43, i32 219, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!136 = metadata !{i32 226, i32 0, metadata !135, null}
!137 = metadata !{i32 232, i32 0, metadata !43, null}
!138 = metadata !{i32 233, i32 0, metadata !43, null}
!139 = metadata !{i32 234, i32 0, metadata !43, null}
!140 = metadata !{i32 235, i32 0, metadata !43, null}
!141 = metadata !{i32 242, i32 0, metadata !38, null}
!142 = metadata !{i32 254, i32 0, metadata !44, null}
!143 = metadata !{i32 255, i32 0, metadata !44, null}
!144 = metadata !{i32 262, i32 0, metadata !44, null}
!145 = metadata !{i32 263, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !44, i32 262, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!147 = metadata !{i32 265, i32 0, metadata !146, null}
!148 = metadata !{i32 267, i32 0, metadata !44, null}
!149 = metadata !{i32 268, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !44, i32 267, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!151 = metadata !{i32 271, i32 0, metadata !150, null}
!152 = metadata !{i32 273, i32 0, metadata !44, null}
!153 = metadata !{i32 279, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !44, i32 273, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_init.c]
!155 = metadata !{i32 280, i32 0, metadata !154, null}
!156 = metadata !{i32 281, i32 0, metadata !44, null}
!157 = metadata !{i32 289, i32 0, metadata !44, null}
