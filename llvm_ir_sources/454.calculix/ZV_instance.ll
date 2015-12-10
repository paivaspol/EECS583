; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in ZV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in ZV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ZV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ZV_setEntry(%p,%d,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_owned(%struct._ZV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !21), !dbg !68
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._ZV* null) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 2, !dbg !76
  %1 = load i32* %owned, align 4, !dbg !76, !tbaa !77
  ret i32 %1, !dbg !76
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_maxsize(%struct._ZV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !24), !dbg !78
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !80, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ZV* null) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1, !dbg !83
  %1 = load i32* %maxsize, align 4, !dbg !83, !tbaa !77
  ret i32 %1, !dbg !83
}

; Function Attrs: nounwind optsize uwtable
define i32 @ZV_size(%struct._ZV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !27), !dbg !84
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._ZV* null) #5, !dbg !86
  tail call void @exit(i32 -1) #6, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !89
  %1 = load i32* %size, align 4, !dbg !89, !tbaa !77
  ret i32 %1, !dbg !89
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_entry(%struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !32), !dbg !90
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !33), !dbg !91
  tail call void @llvm.dbg.value(metadata !{double* %pReal}, i64 0, metadata !34), !dbg !92
  tail call void @llvm.dbg.value(metadata !{double* %pImag}, i64 0, metadata !35), !dbg !93
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !94
  %cmp1 = icmp eq double* %pReal, null, !dbg !94
  %or.cond = or i1 %cmp, %cmp1, !dbg !94
  %cmp3 = icmp eq double* %pImag, null, !dbg !94
  %or.cond39 = or i1 %or.cond, %cmp3, !dbg !94
  br i1 %or.cond39, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %loc, -1, !dbg !98
  %size10.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %size10.phi.trans.insert, align 4, !dbg !99, !tbaa !77
  %cmp6 = icmp sgt i32 %.pre, %loc, !dbg !98
  %or.cond40 = and i1 %cmp4, %cmp6, !dbg !98
  br i1 %or.cond40, label %lor.lhs.false7, label %if.then9, !dbg !98

lor.lhs.false7:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !98
  %1 = load double** %vec, align 8, !dbg !98, !tbaa !72
  %cmp8 = icmp eq double* %1, null, !dbg !98
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !98

if.then9:                                         ; preds = %if.end, %lor.lhs.false7
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !99, !tbaa !72
  %vec11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !99
  %3 = load double** %vec11, align 8, !dbg !99, !tbaa !72
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag, i32 %.pre, double* %3) #5, !dbg !99
  tail call void @exit(i32 -1) #6, !dbg !101
  unreachable, !dbg !101

if.end13:                                         ; preds = %lor.lhs.false7
  %mul = shl nsw i32 %loc, 1, !dbg !102
  %idxprom = sext i32 %mul to i64, !dbg !102
  %arrayidx = getelementptr inbounds double* %1, i64 %idxprom, !dbg !102
  %4 = load double* %arrayidx, align 8, !dbg !102, !tbaa !103
  store double %4, double* %pReal, align 8, !dbg !102, !tbaa !103
  %add38 = or i32 %mul, 1, !dbg !104
  %idxprom16 = sext i32 %add38 to i64, !dbg !104
  %arrayidx18 = getelementptr inbounds double* %1, i64 %idxprom16, !dbg !104
  %5 = load double* %arrayidx18, align 8, !dbg !104, !tbaa !103
  store double %5, double* %pImag, align 8, !dbg !104, !tbaa !103
  ret void, !dbg !105
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_pointersToEntry(%struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !41), !dbg !106
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !42), !dbg !107
  tail call void @llvm.dbg.value(metadata !{double** %ppReal}, i64 0, metadata !43), !dbg !108
  tail call void @llvm.dbg.value(metadata !{double** %ppImag}, i64 0, metadata !44), !dbg !109
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !110
  %cmp1 = icmp eq double** %ppReal, null, !dbg !110
  %or.cond = or i1 %cmp, %cmp1, !dbg !110
  %cmp3 = icmp eq double** %ppImag, null, !dbg !110
  %or.cond39 = or i1 %or.cond, %cmp3, !dbg !110
  br i1 %or.cond39, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !111, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #5, !dbg !111
  tail call void @exit(i32 -1) #6, !dbg !113
  unreachable, !dbg !113

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i32 %loc, -1, !dbg !114
  %size10.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %size10.phi.trans.insert, align 4, !dbg !115, !tbaa !77
  %cmp6 = icmp sgt i32 %.pre, %loc, !dbg !114
  %or.cond40 = and i1 %cmp4, %cmp6, !dbg !114
  br i1 %or.cond40, label %lor.lhs.false7, label %if.then9, !dbg !114

lor.lhs.false7:                                   ; preds = %if.end
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !114
  %1 = load double** %vec, align 8, !dbg !114, !tbaa !72
  %cmp8 = icmp eq double* %1, null, !dbg !114
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !114

if.then9:                                         ; preds = %if.end, %lor.lhs.false7
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !115, !tbaa !72
  %vec11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !115
  %3 = load double** %vec11, align 8, !dbg !115, !tbaa !72
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag, i32 %.pre, double* %3) #5, !dbg !115
  tail call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

if.end13:                                         ; preds = %lor.lhs.false7
  %mul = shl nsw i32 %loc, 1, !dbg !118
  %idxprom = sext i32 %mul to i64, !dbg !118
  %arrayidx = getelementptr inbounds double* %1, i64 %idxprom, !dbg !118
  store double* %arrayidx, double** %ppReal, align 8, !dbg !118, !tbaa !72
  %add38 = or i32 %mul, 1, !dbg !119
  %idxprom16 = sext i32 %add38 to i64, !dbg !119
  %4 = load double** %vec, align 8, !dbg !119, !tbaa !72
  %arrayidx18 = getelementptr inbounds double* %4, i64 %idxprom16, !dbg !119
  store double* %arrayidx18, double** %ppImag, align 8, !dbg !119, !tbaa !72
  ret void, !dbg !120
}

; Function Attrs: nounwind optsize uwtable
define double* @ZV_entries(%struct._ZV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !49), !dbg !121
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !122

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !123, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), %struct._ZV* null) #5, !dbg !123
  tail call void @exit(i32 -1) #6, !dbg !125
  unreachable, !dbg !125

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !126
  %1 = load double** %vec, align 8, !dbg !126, !tbaa !72
  ret double* %1, !dbg !126
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_sizeAndEntries(%struct._ZV* %dv, i32* %psize, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !55), !dbg !127
  tail call void @llvm.dbg.value(metadata !{i32* %psize}, i64 0, metadata !56), !dbg !128
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !57), !dbg !129
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !130
  %cmp1 = icmp eq i32* %psize, null, !dbg !130
  %or.cond = or i1 %cmp, %cmp1, !dbg !130
  %cmp3 = icmp eq double** %pentries, null, !dbg !130
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !130
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !131, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._ZV* %dv, i32* %psize, double** %pentries) #5, !dbg !131
  tail call void @exit(i32 -1) #6, !dbg !133
  unreachable, !dbg !133

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !134
  %1 = load i32* %size, align 4, !dbg !134, !tbaa !77
  store i32 %1, i32* %psize, align 4, !dbg !134, !tbaa !77
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !135
  %2 = load double** %vec, align 8, !dbg !135, !tbaa !72
  store double* %2, double** %pentries, align 8, !dbg !135, !tbaa !72
  ret void, !dbg !136
}

; Function Attrs: nounwind optsize uwtable
define void @ZV_setEntry(%struct._ZV* %dv, i32 %loc, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ZV* %dv}, i64 0, metadata !62), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !63), !dbg !138
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !64), !dbg !139
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !65), !dbg !140
  %cmp = icmp eq %struct._ZV* %dv, null, !dbg !141
  %cmp1 = icmp slt i32 %loc, 0, !dbg !141
  %or.cond = or i1 %cmp, %cmp1, !dbg !141
  br i1 %or.cond, label %if.then, label %if.end, !dbg !141

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !142, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double %real, double %imag) #5, !dbg !142
  tail call void @exit(i32 -1) #6, !dbg !144
  unreachable, !dbg !144

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1, !dbg !145
  %1 = load i32* %maxsize, align 4, !dbg !145, !tbaa !77
  %cmp2 = icmp sgt i32 %1, %loc, !dbg !145
  br i1 %cmp2, label %if.end11, label %if.then3, !dbg !145

if.then3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !66), !dbg !146
  %cmp5 = icmp slt i32 %1, 10, !dbg !147
  %.mul = select i1 %cmp5, i32 10, i32 %1, !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32 %.mul}, i64 0, metadata !66), !dbg !148
  %cmp8 = icmp sgt i32 %.mul, %loc, !dbg !150
  %add = add nsw i32 %loc, 1, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !66), !dbg !151
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add, !dbg !150
  tail call void @ZV_setMaxsize(%struct._ZV* %dv, i32 %.mul.add) #5, !dbg !153
  br label %if.end11, !dbg !154

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !155
  %2 = load i32* %size, align 4, !dbg !155, !tbaa !77
  %cmp12 = icmp sgt i32 %2, %loc, !dbg !155
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !155

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1, !dbg !156
  store i32 %add14, i32* %size, align 4, !dbg !156, !tbaa !77
  br label %if.end16, !dbg !158

if.end16:                                         ; preds = %if.end11, %if.then13
  %mul17 = shl nsw i32 %loc, 1, !dbg !159
  %idxprom = sext i32 %mul17 to i64, !dbg !159
  %vec = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !159
  %3 = load double** %vec, align 8, !dbg !159, !tbaa !72
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !159
  store double %real, double* %arrayidx, align 8, !dbg !159, !tbaa !103
  %add1943 = or i32 %mul17, 1, !dbg !160
  %idxprom20 = sext i32 %add1943 to i64, !dbg !160
  %arrayidx22 = getelementptr inbounds double* %3, i64 %idxprom20, !dbg !160
  store double %imag, double* %arrayidx22, align 8, !dbg !160, !tbaa !103
  ret void, !dbg !161
}

; Function Attrs: optsize
declare void @ZV_setMaxsize(%struct._ZV*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22, metadata !25, metadata !28, metadata !36, metadata !45, metadata !50, metadata !58}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_owned", metadata !"ZV_owned", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ZV*)* @ZV_owned, null, null, metadata !20, i32 17} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 17] [ZV_owned]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ZV]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"ZV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ZV] [line 20, size 0, align 0, offset 0] [from _ZV]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_ZV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ZV] [line 21, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/../ZV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786689, metadata !4, metadata !"dv", metadata !5, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 16]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_maxsize", metadata !"ZV_maxsize", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ZV*)* @ZV_maxsize, null, null, metadata !23, i32 36} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 36] [ZV_maxsize]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !22, metadata !"dv", metadata !5, i32 16777251, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 35]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_size", metadata !"ZV_size", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ZV*)* @ZV_size, null, null, metadata !26, i32 55} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 55] [ZV_size]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !25, metadata !"dv", metadata !5, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 54]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_entry", metadata !"ZV_entry", metadata !"", i32 72, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32, double*, double*)* @ZV_entry, null, null, metadata !31, i32 77} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 77] [ZV_entry]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !9, metadata !8, metadata !18, metadata !18}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786689, metadata !28, metadata !"dv", metadata !5, i32 16777289, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 73]
!33 = metadata !{i32 786689, metadata !28, metadata !"loc", metadata !5, i32 33554506, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 74]
!34 = metadata !{i32 786689, metadata !28, metadata !"pReal", metadata !5, i32 50331723, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pReal] [line 75]
!35 = metadata !{i32 786689, metadata !28, metadata !"pImag", metadata !5, i32 67108940, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pImag] [line 76]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_pointersToEntry", metadata !"ZV_pointersToEntry", metadata !"", i32 103, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32, double**, double**)* @ZV_pointersToEntry, null, null, metadata !40, i32 108} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 108] [ZV_pointersToEntry]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !9, metadata !8, metadata !39, metadata !39}
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44}
!41 = metadata !{i32 786689, metadata !36, metadata !"dv", metadata !5, i32 16777320, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 104]
!42 = metadata !{i32 786689, metadata !36, metadata !"loc", metadata !5, i32 33554537, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 105]
!43 = metadata !{i32 786689, metadata !36, metadata !"ppReal", metadata !5, i32 50331754, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppReal] [line 106]
!44 = metadata !{i32 786689, metadata !36, metadata !"ppImag", metadata !5, i32 67108971, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppImag] [line 107]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_entries", metadata !"ZV_entries", metadata !"", i32 134, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._ZV*)* @ZV_entries, null, null, metadata !48, i32 136} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 136] [ZV_entries]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !18, metadata !9}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !45, metadata !"dv", metadata !5, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 135]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_sizeAndEntries", metadata !"ZV_sizeAndEntries", metadata !"", i32 154, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32*, double**)* @ZV_sizeAndEntries, null, null, metadata !54, i32 158} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 158] [ZV_sizeAndEntries]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !9, metadata !53, metadata !39}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!54 = metadata !{metadata !55, metadata !56, metadata !57}
!55 = metadata !{i32 786689, metadata !50, metadata !"dv", metadata !5, i32 16777371, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 155]
!56 = metadata !{i32 786689, metadata !50, metadata !"psize", metadata !5, i32 33554588, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 156]
!57 = metadata !{i32 786689, metadata !50, metadata !"pentries", metadata !5, i32 50331805, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 157]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ZV_setEntry", metadata !"ZV_setEntry", metadata !"", i32 178, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ZV*, i32, double, double)* @ZV_setEntry, null, null, metadata !61, i32 183} ; [ DW_TAG_subprogram ] [line 178] [def] [scope 183] [ZV_setEntry]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !9, metadata !8, metadata !19, metadata !19}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!62 = metadata !{i32 786689, metadata !58, metadata !"dv", metadata !5, i32 16777395, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 179]
!63 = metadata !{i32 786689, metadata !58, metadata !"loc", metadata !5, i32 33554612, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 180]
!64 = metadata !{i32 786689, metadata !58, metadata !"real", metadata !5, i32 50331829, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 181]
!65 = metadata !{i32 786689, metadata !58, metadata !"imag", metadata !5, i32 67109046, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 182]
!66 = metadata !{i32 786688, metadata !67, metadata !"newmaxsize", metadata !5, i32 195, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmaxsize] [line 195]
!67 = metadata !{i32 786443, metadata !1, metadata !58, i32 194, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!68 = metadata !{i32 16, i32 0, metadata !4, null}
!69 = metadata !{i32 18, i32 0, metadata !4, null}
!70 = metadata !{i32 19, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!72 = metadata !{metadata !"any pointer", metadata !73}
!73 = metadata !{metadata !"omnipotent char", metadata !74}
!74 = metadata !{metadata !"Simple C/C++ TBAA"}
!75 = metadata !{i32 21, i32 0, metadata !71, null}
!76 = metadata !{i32 23, i32 0, metadata !4, null}
!77 = metadata !{metadata !"int", metadata !73}
!78 = metadata !{i32 35, i32 0, metadata !22, null}
!79 = metadata !{i32 37, i32 0, metadata !22, null}
!80 = metadata !{i32 38, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !22, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!82 = metadata !{i32 40, i32 0, metadata !81, null}
!83 = metadata !{i32 42, i32 0, metadata !22, null}
!84 = metadata !{i32 54, i32 0, metadata !25, null}
!85 = metadata !{i32 56, i32 0, metadata !25, null}
!86 = metadata !{i32 57, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !25, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!88 = metadata !{i32 59, i32 0, metadata !87, null}
!89 = metadata !{i32 61, i32 0, metadata !25, null}
!90 = metadata !{i32 73, i32 0, metadata !28, null}
!91 = metadata !{i32 74, i32 0, metadata !28, null}
!92 = metadata !{i32 75, i32 0, metadata !28, null}
!93 = metadata !{i32 76, i32 0, metadata !28, null}
!94 = metadata !{i32 78, i32 0, metadata !28, null}
!95 = metadata !{i32 79, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !28, i32 78, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!97 = metadata !{i32 81, i32 0, metadata !96, null}
!98 = metadata !{i32 83, i32 0, metadata !28, null}
!99 = metadata !{i32 84, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !28, i32 83, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!101 = metadata !{i32 87, i32 0, metadata !100, null}
!102 = metadata !{i32 89, i32 0, metadata !28, null}
!103 = metadata !{metadata !"double", metadata !73}
!104 = metadata !{i32 90, i32 0, metadata !28, null}
!105 = metadata !{i32 92, i32 0, metadata !28, null}
!106 = metadata !{i32 104, i32 0, metadata !36, null}
!107 = metadata !{i32 105, i32 0, metadata !36, null}
!108 = metadata !{i32 106, i32 0, metadata !36, null}
!109 = metadata !{i32 107, i32 0, metadata !36, null}
!110 = metadata !{i32 109, i32 0, metadata !36, null}
!111 = metadata !{i32 110, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !36, i32 109, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!113 = metadata !{i32 112, i32 0, metadata !112, null}
!114 = metadata !{i32 114, i32 0, metadata !36, null}
!115 = metadata !{i32 115, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !36, i32 114, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!117 = metadata !{i32 118, i32 0, metadata !116, null}
!118 = metadata !{i32 120, i32 0, metadata !36, null}
!119 = metadata !{i32 121, i32 0, metadata !36, null}
!120 = metadata !{i32 123, i32 0, metadata !36, null}
!121 = metadata !{i32 135, i32 0, metadata !45, null}
!122 = metadata !{i32 137, i32 0, metadata !45, null}
!123 = metadata !{i32 138, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !45, i32 137, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!125 = metadata !{i32 140, i32 0, metadata !124, null}
!126 = metadata !{i32 142, i32 0, metadata !45, null}
!127 = metadata !{i32 155, i32 0, metadata !50, null}
!128 = metadata !{i32 156, i32 0, metadata !50, null}
!129 = metadata !{i32 157, i32 0, metadata !50, null}
!130 = metadata !{i32 159, i32 0, metadata !50, null}
!131 = metadata !{i32 160, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !50, i32 159, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!133 = metadata !{i32 162, i32 0, metadata !132, null}
!134 = metadata !{i32 164, i32 0, metadata !50, null}
!135 = metadata !{i32 165, i32 0, metadata !50, null}
!136 = metadata !{i32 167, i32 0, metadata !50, null}
!137 = metadata !{i32 179, i32 0, metadata !58, null}
!138 = metadata !{i32 180, i32 0, metadata !58, null}
!139 = metadata !{i32 181, i32 0, metadata !58, null}
!140 = metadata !{i32 182, i32 0, metadata !58, null}
!141 = metadata !{i32 189, i32 0, metadata !58, null}
!142 = metadata !{i32 190, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !58, i32 189, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!144 = metadata !{i32 192, i32 0, metadata !143, null}
!145 = metadata !{i32 194, i32 0, metadata !58, null}
!146 = metadata !{i32 195, i32 0, metadata !67, null}
!147 = metadata !{i32 196, i32 0, metadata !67, null}
!148 = metadata !{i32 197, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !67, i32 196, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!150 = metadata !{i32 199, i32 0, metadata !67, null}
!151 = metadata !{i32 200, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !67, i32 199, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!153 = metadata !{i32 202, i32 0, metadata !67, null}
!154 = metadata !{i32 203, i32 0, metadata !67, null}
!155 = metadata !{i32 204, i32 0, metadata !58, null}
!156 = metadata !{i32 205, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !58, i32 204, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c]
!158 = metadata !{i32 206, i32 0, metadata !157, null}
!159 = metadata !{i32 207, i32 0, metadata !58, null}
!160 = metadata !{i32 208, i32 0, metadata !58, null}
!161 = metadata !{i32 210, i32 0, metadata !58, null}
