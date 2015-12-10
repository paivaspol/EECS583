; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [53 x i8] c"\0A error in Pencil_readFromFile(%p,%s,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxA\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A\0A inpmtxB\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"\0A error in Pencil_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"\0A\0A Pencil : matrix pencil object :\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c" real entries\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"\0A sigma = %20.12e \00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c" complex entries\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"\0A sigma = %20.12e + %20.12e*i\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_readFromFiles(%struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !63), !dbg !132
  tail call void @llvm.dbg.value(metadata !{i8* %inpmtxAfileName}, i64 0, metadata !64), !dbg !133
  tail call void @llvm.dbg.value(metadata !{i8* %inpmtxBfileName}, i64 0, metadata !65), !dbg !134
  tail call void @llvm.dbg.value(metadata !135, i64 0, metadata !66), !dbg !136
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !137
  %cmp1 = icmp eq i8* %inpmtxAfileName, null, !dbg !137
  %or.cond = or i1 %cmp, %cmp1, !dbg !137
  %cmp3 = icmp eq i8* %inpmtxBfileName, null, !dbg !137
  %or.cond33 = or i1 %or.cond, %cmp3, !dbg !137
  br i1 %or.cond33, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !138, !tbaa !140
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i8* %inpmtxAfileName, i8* %inpmtxBfileName) #7, !dbg !138
  br label %return, !dbg !143

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strcmp(i8* %inpmtxAfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !144
  %cmp5 = icmp eq i32 %call4, 0, !dbg !144
  br i1 %cmp5, label %if.end11, label %if.then6, !dbg !144

if.then6:                                         ; preds = %if.end
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !145
  %1 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !145, !tbaa !140
  %call7 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %1, i8* %inpmtxAfileName) #7, !dbg !145
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !66), !dbg !145
  %cmp8 = icmp eq i32 %call7, 1, !dbg !147
  br i1 %cmp8, label %if.end11, label %return, !dbg !147

if.end11:                                         ; preds = %if.then6, %if.end
  %call12 = tail call i32 @strcmp(i8* %inpmtxBfileName, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !148
  %cmp13 = icmp eq i32 %call12, 0, !dbg !148
  br i1 %cmp13, label %return, label %if.then14, !dbg !148

if.then14:                                        ; preds = %if.end11
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !149
  %2 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !149, !tbaa !140
  %call15 = tail call i32 @InpMtx_readFromFile(%struct._InpMtx* %2, i8* %inpmtxBfileName) #7, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !66), !dbg !149
  ret i32 %call15, !dbg !151

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call7, %if.then6 ], [ 1, %if.end11 ]
  ret i32 %retval.0, !dbg !152
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @InpMtx_readFromFile(%struct._InpMtx*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_writeForHumanEye(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !126), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !127), !dbg !154
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !155
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !155
  %or.cond = or i1 %cmp, %cmp1, !dbg !155
  br i1 %or.cond, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !140
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, %struct._IO_FILE* %fp) #7, !dbg !156
  tail call void @exit(i32 -1) #9, !dbg !158
  unreachable, !dbg !158

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #10, !dbg !159
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !160
  %1 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !160, !tbaa !140
  %cmp3 = icmp eq %struct._InpMtx* %1, null, !dbg !160
  br i1 %cmp3, label %if.end8, label %if.then4, !dbg !160

if.then4:                                         ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp), !dbg !161
  %3 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !163, !tbaa !140
  %call7 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %3, %struct._IO_FILE* %fp) #7, !dbg !163
  br label %if.end8, !dbg !164

if.end8:                                          ; preds = %if.end, %if.then4
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !165
  %4 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !165, !tbaa !140
  %cmp9 = icmp eq %struct._InpMtx* %4, null, !dbg !165
  br i1 %cmp9, label %if.end14, label %if.then10, !dbg !165

if.then10:                                        ; preds = %if.end8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp), !dbg !166
  %6 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !168, !tbaa !140
  %call13 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %6, %struct._IO_FILE* %fp) #7, !dbg !168
  br label %if.end14, !dbg !169

if.end14:                                         ; preds = %if.end8, %if.then10
  ret i32 1, !dbg !170
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Pencil_writeStats(%struct._Pencil* %pencil, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !130), !dbg !171
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !131), !dbg !172
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !173
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !173
  %or.cond = or i1 %cmp, %cmp1, !dbg !173
  br i1 %or.cond, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !140
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), %struct._Pencil* %pencil, %struct._IO_FILE* %fp) #7, !dbg !174
  tail call void @exit(i32 -1) #9, !dbg !176
  unreachable, !dbg !176

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %fp), !dbg !177
  %type = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !178
  %2 = load i32* %type, align 4, !dbg !178, !tbaa !179
  switch i32 %2, label %if.end17 [
    i32 1, label %if.then4
    i32 2, label %if.then9
  ], !dbg !178

if.then4:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp), !dbg !180
  %arrayidx = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !182
  %4 = load double* %arrayidx, align 8, !dbg !182, !tbaa !183
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), double %4) #7, !dbg !182
  br label %if.end17, !dbg !184

if.then9:                                         ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp), !dbg !185
  %arrayidx12 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !187
  %6 = load double* %arrayidx12, align 8, !dbg !187, !tbaa !183
  %arrayidx14 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !187
  %7 = load double* %arrayidx14, align 8, !dbg !187, !tbaa !183
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), double %6, double %7) #7, !dbg !187
  br label %if.end17, !dbg !188

if.end17:                                         ; preds = %if.end, %if.then9, %if.then4
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !189
  %8 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !189, !tbaa !140
  %cmp18 = icmp eq %struct._InpMtx* %8, null, !dbg !189
  br i1 %cmp18, label %if.end23, label %if.then19, !dbg !189

if.then19:                                        ; preds = %if.end17
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp), !dbg !190
  %10 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !192, !tbaa !140
  %call22 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %10, %struct._IO_FILE* %fp) #7, !dbg !192
  br label %if.end23, !dbg !193

if.end23:                                         ; preds = %if.end17, %if.then19
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !194
  %11 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !194, !tbaa !140
  %cmp24 = icmp eq %struct._InpMtx* %11, null, !dbg !194
  br i1 %cmp24, label %if.end29, label %if.then25, !dbg !194

if.then25:                                        ; preds = %if.end23
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %fp), !dbg !195
  %13 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !197, !tbaa !140
  %call28 = tail call i32 @InpMtx_writeStats(%struct._InpMtx* %13, %struct._IO_FILE* %fp) #7, !dbg !197
  br label %if.end29, !dbg !198

if.end29:                                         ; preds = %if.end23, %if.then25
  ret i32 1, !dbg !199
}

; Function Attrs: optsize
declare i32 @InpMtx_writeForHumanEye(%struct._InpMtx*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @InpMtx_writeStats(%struct._InpMtx*, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !67, metadata !128}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_readFromFiles", metadata !"Pencil_readFromFiles", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Pencil*, i8*, i8*)* @Pencil_readFromFiles, null, null, metadata !62, i32 25} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 25] [Pencil_readFromFiles]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !60, metadata !60}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Pencil]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Pencil", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Pencil] [line 17, size 0, align 0, offset 0] [from _Pencil]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Pencil", i32 18, i64 320, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Pencil] [line 18, size 320, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../Pencil.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !55, metadata !56}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 19, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 19, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symflag", i32 20, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 20, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inpmtxA", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [inpmtxA] [line 21, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../InpMtx/InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !29, metadata !39, metadata !40, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!28 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!29 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!30 = metadata !{i32 786454, metadata !20, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!39 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!40 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !41} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!41 = metadata !{i32 786454, metadata !20, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!50 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!51 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !8} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!53 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!54 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !30} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!55 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inpmtxB", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [inpmtxB] [line 22, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sigma", i32 23, i64 128, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [sigma] [line 23, size 128, align 64, offset 192] [from ]
!57 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !28, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from double]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!61 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66}
!63 = metadata !{i32 786689, metadata !4, metadata !"pencil", metadata !5, i32 16777238, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 22]
!64 = metadata !{i32 786689, metadata !4, metadata !"inpmtxAfileName", metadata !5, i32 33554455, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtxAfileName] [line 23]
!65 = metadata !{i32 786689, metadata !4, metadata !"inpmtxBfileName", metadata !5, i32 50331672, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtxBfileName] [line 24]
!66 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 26]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_writeForHumanEye", metadata !"Pencil_writeForHumanEye", metadata !"", i32 63, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Pencil*, %struct._IO_FILE*)* @Pencil_writeForHumanEye, null, null, metadata !125, i32 66} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 66] [Pencil_writeForHumanEye]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !8, metadata !9, metadata !70}
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!73 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !95, metadata !96, metadata !97, metadata !98, metadata !101, metadata !103, metadata !105, metadata !109, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !120, metadata !121}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!77 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!78 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!79 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!80 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!82 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!86 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !60} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!87 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!89 = metadata !{i32 786451, metadata !73, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92, metadata !94}
!91 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786445, metadata !73, metadata !89, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!95 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !93} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!96 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!97 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!98 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !99} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!99 = metadata !{i32 786454, metadata !73, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!100 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!101 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !102} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!102 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !104} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!104 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!105 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !106} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !61, metadata !107, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!107 = metadata !{metadata !108}
!108 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!109 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !110} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!111 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !112} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!112 = metadata !{i32 786454, metadata !73, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!113 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!114 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!115 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!116 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!117 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !118} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!118 = metadata !{i32 786454, metadata !73, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!119 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!120 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!121 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !122} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !61, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!125 = metadata !{metadata !126, metadata !127}
!126 = metadata !{i32 786689, metadata !67, metadata !"pencil", metadata !5, i32 16777280, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 64]
!127 = metadata !{i32 786689, metadata !67, metadata !"fp", metadata !5, i32 33554497, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 65]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_writeStats", metadata !"Pencil_writeStats", metadata !"", i32 99, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Pencil*, %struct._IO_FILE*)* @Pencil_writeStats, null, null, metadata !129, i32 102} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 102] [Pencil_writeStats]
!129 = metadata !{metadata !130, metadata !131}
!130 = metadata !{i32 786689, metadata !128, metadata !"pencil", metadata !5, i32 16777316, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 100]
!131 = metadata !{i32 786689, metadata !128, metadata !"fp", metadata !5, i32 33554533, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 101]
!132 = metadata !{i32 22, i32 0, metadata !4, null}
!133 = metadata !{i32 23, i32 0, metadata !4, null}
!134 = metadata !{i32 24, i32 0, metadata !4, null}
!135 = metadata !{i32 1}
!136 = metadata !{i32 26, i32 0, metadata !4, null}
!137 = metadata !{i32 32, i32 0, metadata !4, null}
!138 = metadata !{i32 34, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!140 = metadata !{metadata !"any pointer", metadata !141}
!141 = metadata !{metadata !"omnipotent char", metadata !142}
!142 = metadata !{metadata !"Simple C/C++ TBAA"}
!143 = metadata !{i32 36, i32 0, metadata !139, null}
!144 = metadata !{i32 38, i32 0, metadata !4, null}
!145 = metadata !{i32 39, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!147 = metadata !{i32 40, i32 0, metadata !146, null}
!148 = metadata !{i32 44, i32 0, metadata !4, null}
!149 = metadata !{i32 45, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!151 = metadata !{i32 46, i32 0, metadata !150, null}
!152 = metadata !{i32 50, i32 0, metadata !4, null}
!153 = metadata !{i32 64, i32 0, metadata !67, null}
!154 = metadata !{i32 65, i32 0, metadata !67, null}
!155 = metadata !{i32 67, i32 0, metadata !67, null}
!156 = metadata !{i32 68, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !67, i32 67, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!158 = metadata !{i32 70, i32 0, metadata !157, null}
!159 = metadata !{i32 77, i32 0, metadata !67, null}
!160 = metadata !{i32 78, i32 0, metadata !67, null}
!161 = metadata !{i32 79, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !67, i32 78, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!163 = metadata !{i32 80, i32 0, metadata !162, null}
!164 = metadata !{i32 81, i32 0, metadata !162, null}
!165 = metadata !{i32 82, i32 0, metadata !67, null}
!166 = metadata !{i32 83, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !67, i32 82, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!168 = metadata !{i32 84, i32 0, metadata !167, null}
!169 = metadata !{i32 85, i32 0, metadata !167, null}
!170 = metadata !{i32 86, i32 0, metadata !67, null}
!171 = metadata !{i32 100, i32 0, metadata !128, null}
!172 = metadata !{i32 101, i32 0, metadata !128, null}
!173 = metadata !{i32 108, i32 0, metadata !128, null}
!174 = metadata !{i32 109, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !128, i32 108, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!176 = metadata !{i32 111, i32 0, metadata !175, null}
!177 = metadata !{i32 113, i32 0, metadata !128, null}
!178 = metadata !{i32 114, i32 0, metadata !128, null}
!179 = metadata !{metadata !"int", metadata !141}
!180 = metadata !{i32 115, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !128, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!182 = metadata !{i32 116, i32 0, metadata !181, null}
!183 = metadata !{metadata !"double", metadata !141}
!184 = metadata !{i32 117, i32 0, metadata !181, null}
!185 = metadata !{i32 118, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !128, i32 117, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!187 = metadata !{i32 119, i32 0, metadata !186, null}
!188 = metadata !{i32 121, i32 0, metadata !186, null}
!189 = metadata !{i32 122, i32 0, metadata !128, null}
!190 = metadata !{i32 123, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !128, i32 122, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!192 = metadata !{i32 124, i32 0, metadata !191, null}
!193 = metadata !{i32 125, i32 0, metadata !191, null}
!194 = metadata !{i32 126, i32 0, metadata !128, null}
!195 = metadata !{i32 127, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !128, i32 126, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_IO.c]
!197 = metadata !{i32 128, i32 0, metadata !196, null}
!198 = metadata !{i32 129, i32 0, metadata !196, null}
!199 = metadata !{i32 131, i32 0, metadata !128, null}
