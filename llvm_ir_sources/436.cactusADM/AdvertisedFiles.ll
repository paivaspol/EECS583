; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.ioAdvertisedFileListenerCallbacks = type { i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }

@listener_DB = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/IOUtil/src/AdvertisedFiles.c,v 1.5 2001/10/30 13:56:31 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c() #0 {
entry:
  ret i8* getelementptr inbounds ([96 x i8]* @.str, i64 0, i64 0), !dbg !102
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOUtil_RegisterAdvertisedFileListener(%struct.cGH* nocapture %GH, i8* %listener, %struct.ioAdvertisedFileListenerCallbacks* %callbacks) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !74), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i8* %listener}, i64 0, metadata !75), !dbg !103
  tail call void @llvm.dbg.value(metadata !{%struct.ioAdvertisedFileListenerCallbacks* %callbacks}, i64 0, metadata !76), !dbg !104
  tail call void @llvm.dbg.value(metadata !105, i64 0, metadata !77), !dbg !106
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !74), !dbg !107
  %tobool = icmp eq i8* %listener, null, !dbg !108
  %tobool2 = icmp eq %struct.ioAdvertisedFileListenerCallbacks* %callbacks, null, !dbg !108
  %or.cond = or i1 %tobool, %tobool2, !dbg !108
  br i1 %or.cond, label %if.end9, label %if.then, !dbg !108

if.then:                                          ; preds = %entry
  %call = tail call noalias i8* @malloc(i64 8) #5, !dbg !109
  %tobool3 = icmp eq i8* %call, null, !dbg !111
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !111

if.then4:                                         ; preds = %if.then
  %0 = bitcast %struct.ioAdvertisedFileListenerCallbacks* %callbacks to i64*, !dbg !112
  %1 = bitcast i8* %call to i64*, !dbg !112
  %2 = load i64* %0, align 8, !dbg !112
  store i64 %2, i64* %1, align 8, !dbg !112
  %call5 = tail call i32 @StoreNamedData(%struct.PNamedData** @listener_DB, i8* %listener, i8* %call) #5, !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !77), !dbg !114
  %tobool6 = icmp eq i32 %call5, 0, !dbg !115
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !115

if.then7:                                         ; preds = %if.then4
  tail call void @free(i8* %call) #5, !dbg !116
  br label %if.end9, !dbg !116

if.end9:                                          ; preds = %if.then4, %if.then, %entry, %if.then7
  %retval1.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.then4 ], [ -1, %if.then ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !117
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !82), !dbg !118
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !83), !dbg !118
  tail call void @llvm.dbg.value(metadata !{%struct.ioAdvertisedFileDesc* %description}, i64 0, metadata !84), !dbg !119
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !120
  %listener.010 = load %struct.PNamedData** @listener_DB, align 8, !dbg !121
  %tobool11 = icmp eq %struct.PNamedData* %listener.010, null, !dbg !122
  br i1 %tobool11, label %while.end, label %while.body, !dbg !122

while.body:                                       ; preds = %entry, %if.end
  %listener.013 = phi %struct.PNamedData* [ %listener.0, %if.end ], [ %listener.010, %entry ]
  %retval1.012 = phi i32 [ %retval1.1, %if.end ], [ 0, %entry ]
  %data = getelementptr inbounds %struct.PNamedData* %listener.013, i64 0, i32 3, !dbg !123
  %0 = load i8** %data, align 8, !dbg !123, !tbaa !125
  %tobool2 = icmp eq i8* %0, null, !dbg !128
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !128

land.lhs.true:                                    ; preds = %while.body
  %advertise = bitcast i8* %0 to i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)**, !dbg !128
  %1 = load i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)** %advertise, align 8, !dbg !128, !tbaa !125
  %tobool3 = icmp eq i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* %1, null, !dbg !128
  br i1 %tobool3, label %if.end, label %if.then, !dbg !128

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %1(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %description) #5, !dbg !129
  %or = or i32 %call, %retval1.012, !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !85), !dbg !129
  br label %if.end, !dbg !129

if.end:                                           ; preds = %land.lhs.true, %while.body, %if.then
  %retval1.1 = phi i32 [ %or, %if.then ], [ %retval1.012, %land.lhs.true ], [ %retval1.012, %while.body ]
  %next = getelementptr inbounds %struct.PNamedData* %listener.013, i64 0, i32 1, !dbg !130
  %listener.0 = load %struct.PNamedData** %next, align 8, !dbg !121
  %tobool = icmp eq %struct.PNamedData* %listener.0, null, !dbg !122
  br i1 %tobool, label %while.end, label %while.body, !dbg !122

while.end:                                        ; preds = %if.end, %entry
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %retval1.1, %if.end ]
  ret i32 %retval1.0.lcssa, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !99, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !80}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c", metadata !"CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_CactusBase_IOUtil_AdvertisedFiles_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOUtil_RegisterAdvertisedFileListener", metadata !"IOUtil_RegisterAdvertisedFileListener", metadata !"", i32 67, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileListenerCallbacks*)* @IOUtil_RegisterAdvertisedFileListener, null, null, metadata !73, i32 69} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 69] [IOUtil_RegisterAdvertisedFileListener]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !8, metadata !53}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!21 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !18, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !19, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !19, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ioAdvertisedFileListenerCallbacks]
!55 = metadata !{i32 786454, metadata !1, null, metadata !"ioAdvertisedFileListenerCallbacks", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [ioAdvertisedFileListenerCallbacks] [line 48, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 43, i64 64, i64 64, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 43, size 64, align 64, offset 0] [from ]
!57 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/ioutil_AdvertisedFiles.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"advertise", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [advertise] [line 45, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !14, metadata !15, metadata !8, metadata !63}
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ioAdvertisedFileDesc]
!65 = metadata !{i32 786454, metadata !57, null, metadata !"ioAdvertisedFileDesc", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [ioAdvertisedFileDesc] [line 36, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 29, i64 320, i64 64, i32 0, i32 0, null, metadata !67, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 29, size 320, align 64, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!68 = metadata !{i32 786445, metadata !57, metadata !66, metadata !"thorn", i32 31, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [thorn] [line 31, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !57, metadata !66, metadata !"varname", i32 32, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [varname] [line 32, size 64, align 64, offset 64] [from ]
!70 = metadata !{i32 786445, metadata !57, metadata !66, metadata !"mimetype", i32 33, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [mimetype] [line 33, size 64, align 64, offset 128] [from ]
!71 = metadata !{i32 786445, metadata !57, metadata !66, metadata !"slice", i32 34, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [slice] [line 34, size 64, align 64, offset 192] [from ]
!72 = metadata !{i32 786445, metadata !57, metadata !66, metadata !"description", i32 35, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [description] [line 35, size 64, align 64, offset 256] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!74 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777283, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 67]
!75 = metadata !{i32 786689, metadata !11, metadata !"listener", metadata !5, i32 33554499, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [listener] [line 67]
!76 = metadata !{i32 786689, metadata !11, metadata !"callbacks", metadata !5, i32 50331716, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [callbacks] [line 68]
!77 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 70, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 70]
!78 = metadata !{i32 786688, metadata !11, metadata !"new_callbacks", metadata !5, i32 71, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_callbacks] [line 71]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ioAdvertisedFileListenerCallbacks]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IOUtil_AdvertiseFile", metadata !"IOUtil_AdvertiseFile", metadata !"", i32 126, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*)* @IOUtil_AdvertiseFile, null, null, metadata !81, i32 128} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 128] [IOUtil_AdvertiseFile]
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !98}
!82 = metadata !{i32 786689, metadata !80, metadata !"GH", metadata !5, i32 16777342, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 126]
!83 = metadata !{i32 786689, metadata !80, metadata !"filename", metadata !5, i32 33554558, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 126]
!84 = metadata !{i32 786689, metadata !80, metadata !"description", metadata !5, i32 50331775, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [description] [line 127]
!85 = metadata !{i32 786688, metadata !80, metadata !"retval", metadata !5, i32 129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 129]
!86 = metadata !{i32 786688, metadata !80, metadata !"listener", metadata !5, i32 130, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [listener] [line 130]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!89 = metadata !{i32 786451, metadata !90, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!90 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!91 = metadata !{metadata !92, metadata !94, metadata !95, metadata !97}
!92 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!94 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !93} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!95 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !96} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!97 = metadata !{i32 786445, metadata !90, metadata !89, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!98 = metadata !{i32 786688, metadata !80, metadata !"callbacks", metadata !5, i32 131, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [callbacks] [line 131]
!99 = metadata !{metadata !100, metadata !101}
!100 = metadata !{i32 786484, i32 0, null, metadata !"listener_DB", metadata !"listener_DB", metadata !"", metadata !5, i32 32, metadata !87, i32 1, i32 1, %struct.PNamedData** @listener_DB, null} ; [ DW_TAG_variable ] [listener_DB] [line 32] [local] [def]
!101 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!102 = metadata !{i32 24, i32 0, metadata !4, null}
!103 = metadata !{i32 67, i32 0, metadata !11, null}
!104 = metadata !{i32 68, i32 0, metadata !11, null}
!105 = metadata !{i32 -1}
!106 = metadata !{i32 70, i32 0, metadata !11, null}
!107 = metadata !{i32 75, i32 0, metadata !11, null}
!108 = metadata !{i32 77, i32 0, metadata !11, null}
!109 = metadata !{i32 80, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !11, i32 78, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c]
!111 = metadata !{i32 81, i32 0, metadata !110, null}
!112 = metadata !{i32 83, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !110, i32 82, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c]
!114 = metadata !{i32 84, i32 0, metadata !113, null}
!115 = metadata !{i32 85, i32 0, metadata !113, null}
!116 = metadata !{i32 86, i32 0, metadata !113, null}
!117 = metadata !{i32 90, i32 0, metadata !11, null}
!118 = metadata !{i32 126, i32 0, metadata !80, null}
!119 = metadata !{i32 127, i32 0, metadata !80, null}
!120 = metadata !{i32 129, i32 0, metadata !80, null}
!121 = metadata !{i32 135, i32 0, metadata !80, null}
!122 = metadata !{i32 138, i32 0, metadata !80, null}
!123 = metadata !{i32 140, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !80, i32 139, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOUtil/AdvertisedFiles.c]
!125 = metadata !{metadata !"any pointer", metadata !126}
!126 = metadata !{metadata !"omnipotent char", metadata !127}
!127 = metadata !{metadata !"Simple C/C++ TBAA"}
!128 = metadata !{i32 141, i32 0, metadata !124, null}
!129 = metadata !{i32 142, i32 0, metadata !124, null}
!130 = metadata !{i32 143, i32 0, metadata !124, null}
!131 = metadata !{i32 146, i32 0, metadata !80, null}
