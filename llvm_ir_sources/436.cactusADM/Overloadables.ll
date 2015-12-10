; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Overloadables.c,v 1.5 2001/11/05 15:01:46 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Overloadables_c() #0 {
entry:
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0), !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define i32 @PUGH_GroupDynamicData(%struct.cGH* %GH, i32 %group, %struct.GROUPDYNAMICDATA* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !68), !dbg !146
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !69), !dbg !146
  tail call void @llvm.dbg.value(metadata !{%struct.GROUPDYNAMICDATA* %data}, i64 0, metadata !70), !dbg !146
  %tobool = icmp eq %struct.GROUPDYNAMICDATA* %data, null, !dbg !147
  br i1 %tobool, label %if.end21, label %if.then, !dbg !147

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_GroupTypeI(i32 %group) #4, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !71), !dbg !148
  %0 = and i32 %call, -2, !dbg !150
  %1 = icmp eq i32 %0, 2, !dbg !150
  br i1 %1, label %if.then3, label %if.end21, !dbg !150

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @CCTK_FirstVarIndexI(i32 %group) #4, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !72), !dbg !151
  %call5 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #4, !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.PGH* %call5}, i64 0, metadata !73), !dbg !153
  %tobool6 = icmp eq %struct.PGH* %call5, null, !dbg !154
  br i1 %tobool6, label %if.end21, label %if.then7, !dbg !154

if.then7:                                         ; preds = %if.then3
  %idxprom = sext i32 %call4 to i64, !dbg !155
  %variables = getelementptr inbounds %struct.PGH* %call5, i64 0, i32 7, !dbg !155
  %2 = load i8**** %variables, align 8, !dbg !155, !tbaa !157
  %arrayidx40 = getelementptr inbounds i8*** %2, i64 %idxprom, !dbg !155
  %arrayidx41 = load i8*** %arrayidx40, align 8, !dbg !155
  %3 = load i8** %arrayidx41, align 8, !dbg !155
  %extras9 = getelementptr inbounds i8* %3, i64 56, !dbg !155
  %4 = bitcast i8* %extras9 to %struct.PGExtras**, !dbg !155
  %5 = load %struct.PGExtras** %4, align 8, !dbg !155, !tbaa !157
  tail call void @llvm.dbg.value(metadata !{%struct.PGExtras* %5}, i64 0, metadata !141), !dbg !155
  %dim = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 0, !dbg !160
  %6 = load i32* %dim, align 4, !dbg !160, !tbaa !161
  %dim10 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0, !dbg !160
  store i32 %6, i32* %dim10, align 4, !dbg !160, !tbaa !161
  %lnsize = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 6, !dbg !162
  %7 = load i32** %lnsize, align 8, !dbg !162, !tbaa !157
  %lsh = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 2, !dbg !162
  store i32* %7, i32** %lsh, align 8, !dbg !162, !tbaa !157
  %nsize = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 1, !dbg !163
  %8 = load i32** %nsize, align 8, !dbg !163, !tbaa !157
  %gsh = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 1, !dbg !163
  store i32* %8, i32** %gsh, align 8, !dbg !163, !tbaa !157
  %myproc = getelementptr inbounds %struct.PGH* %call5, i64 0, i32 3, !dbg !164
  %9 = load i32* %myproc, align 4, !dbg !164, !tbaa !161
  %idxprom11 = sext i32 %9 to i64, !dbg !164
  %lb = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 3, !dbg !164
  %10 = load i32*** %lb, align 8, !dbg !164, !tbaa !157
  %arrayidx12 = getelementptr inbounds i32** %10, i64 %idxprom11, !dbg !164
  %11 = load i32** %arrayidx12, align 8, !dbg !164, !tbaa !157
  %lbnd = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 3, !dbg !164
  store i32* %11, i32** %lbnd, align 8, !dbg !164, !tbaa !157
  %ub = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 4, !dbg !165
  %12 = load i32*** %ub, align 8, !dbg !165, !tbaa !157
  %arrayidx15 = getelementptr inbounds i32** %12, i64 %idxprom11, !dbg !165
  %13 = load i32** %arrayidx15, align 8, !dbg !165, !tbaa !157
  %ubnd = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 4, !dbg !165
  store i32* %13, i32** %ubnd, align 8, !dbg !165, !tbaa !157
  %nghostzones = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 12, !dbg !166
  %14 = load i32** %nghostzones, align 8, !dbg !166, !tbaa !157
  %nghostzones16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 6, !dbg !166
  store i32* %14, i32** %nghostzones16, align 8, !dbg !166, !tbaa !157
  %bbox = getelementptr inbounds %struct.PGExtras* %5, i64 0, i32 5, !dbg !167
  %15 = load i32** %bbox, align 8, !dbg !167, !tbaa !157
  %bbox17 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 5, !dbg !167
  store i32* %15, i32** %bbox17, align 8, !dbg !167, !tbaa !157
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !168
  br label %if.end21, !dbg !169

if.end21:                                         ; preds = %entry, %if.then, %if.then3, %if.then7
  %retval1.0 = phi i32 [ 0, %if.then7 ], [ -3, %if.then3 ], [ -2, %if.then ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !170
}

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !143, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGH_Overloadables_c", metadata !"CCTKi_version_CactusPUGH_PUGH_Overloadables_c", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGH_Overloadables_c, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [CCTKi_version_CactusPUGH_PUGH_Overloadables_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGH_GroupDynamicData", metadata !"PUGH_GroupDynamicData", metadata !"", i32 57, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @PUGH_GroupDynamicData, null, null, metadata !67, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [PUGH_GroupDynamicData]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14, metadata !53}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!18 = metadata !{i32 786451, metadata !19, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !20, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!19 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGroupDynamicData]
!54 = metadata !{i32 786454, metadata !1, null, metadata !"cGroupDynamicData", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [cGroupDynamicData] [line 23, size 0, align 0, offset 0] [from GROUPDYNAMICDATA]
!55 = metadata !{i32 786451, metadata !56, null, metadata !"GROUPDYNAMICDATA", i32 14, i64 448, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [GROUPDYNAMICDATA] [line 14, size 448, align 64, offset 0] [from ]
!56 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_GroupsOnGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!57 = metadata !{metadata !58, metadata !59, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!58 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"dim", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 16, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"gsh", i32 17, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [gsh] [line 17, size 64, align 64, offset 64] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"lsh", i32 18, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [lsh] [line 18, size 64, align 64, offset 128] [from ]
!63 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"lbnd", i32 19, i64 64, i64 64, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [lbnd] [line 19, size 64, align 64, offset 192] [from ]
!64 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"ubnd", i32 20, i64 64, i64 64, i64 256, i32 0, metadata !60} ; [ DW_TAG_member ] [ubnd] [line 20, size 64, align 64, offset 256] [from ]
!65 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"bbox", i32 21, i64 64, i64 64, i64 320, i32 0, metadata !60} ; [ DW_TAG_member ] [bbox] [line 21, size 64, align 64, offset 320] [from ]
!66 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"nghostzones", i32 22, i64 64, i64 64, i64 384, i32 0, metadata !60} ; [ DW_TAG_member ] [nghostzones] [line 22, size 64, align 64, offset 384] [from ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !141, metadata !142}
!68 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777273, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 57]
!69 = metadata !{i32 786689, metadata !11, metadata !"group", metadata !5, i32 33554489, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 57]
!70 = metadata !{i32 786689, metadata !11, metadata !"data", metadata !5, i32 50331705, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 57]
!71 = metadata !{i32 786688, metadata !11, metadata !"gtype", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gtype] [line 59]
!72 = metadata !{i32 786688, metadata !11, metadata !"var", metadata !5, i32 59, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 59]
!73 = metadata !{i32 786688, metadata !11, metadata !"pughGH", metadata !5, i32 60, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pughGH] [line 60]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGH]
!75 = metadata !{i32 786454, metadata !1, null, metadata !"pGH", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [pGH] [line 81, size 0, align 0, offset 0] [from PGH]
!76 = metadata !{i32 786451, metadata !77, null, metadata !"PGH", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGH] [line 13, size 1152, align 64, offset 0] [from ]
!77 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !129, metadata !139}
!79 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"callerid", i32 17, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [callerid] [line 17, size 64, align 64, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"dim", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 18, size 32, align 32, offset 64] [from int]
!81 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"nprocs", i32 21, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nprocs] [line 21, size 32, align 32, offset 96] [from int]
!82 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"myproc", i32 22, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [myproc] [line 22, size 32, align 32, offset 128] [from int]
!83 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"commmodel", i32 23, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [commmodel] [line 23, size 32, align 32, offset 160] [from int]
!84 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"nvariables", i32 27, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nvariables] [line 27, size 32, align 32, offset 192] [from int]
!85 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"narrays", i32 28, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [narrays] [line 28, size 32, align 32, offset 224] [from int]
!86 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"variables", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !42} ; [ DW_TAG_member ] [variables] [line 29, size 64, align 64, offset 256] [from ]
!87 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"timelevel", i32 32, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [timelevel] [line 32, size 32, align 32, offset 320] [from int]
!88 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"perme", i32 34, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 34, size 64, align 64, offset 384] [from ]
!89 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"periodic", i32 35, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [periodic] [line 35, size 32, align 32, offset 448] [from int]
!90 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"forceSync", i32 37, i64 32, i64 32, i64 480, i32 0, metadata !14} ; [ DW_TAG_member ] [forceSync] [line 37, size 32, align 32, offset 480] [from int]
!91 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"dx0", i32 41, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [dx0] [line 41, size 64, align 64, offset 512] [from double]
!92 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"dy0", i32 41, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [dy0] [line 41, size 64, align 64, offset 576] [from double]
!93 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"dz0", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [dz0] [line 41, size 64, align 64, offset 640] [from double]
!94 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"dt0", i32 41, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [dt0] [line 41, size 64, align 64, offset 704] [from double]
!95 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"level", i32 44, i64 32, i64 32, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [level] [line 44, size 32, align 32, offset 768] [from int]
!96 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"mglevel", i32 45, i64 32, i64 32, i64 800, i32 0, metadata !14} ; [ DW_TAG_member ] [mglevel] [line 45, size 32, align 32, offset 800] [from int]
!97 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"convlevel", i32 46, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [convlevel] [line 46, size 32, align 32, offset 832] [from int]
!98 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"active", i32 49, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [active] [line 49, size 32, align 32, offset 864] [from int]
!99 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"comm_time", i32 53, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [comm_time] [line 53, size 32, align 32, offset 896] [from int]
!100 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"GFExtras", i32 76, i64 64, i64 64, i64 960, i32 0, metadata !101} ; [ DW_TAG_member ] [GFExtras] [line 76, size 64, align 64, offset 960] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pGExtras]
!103 = metadata !{i32 786454, metadata !77, null, metadata !"pGExtras", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [pGExtras] [line 72, size 0, align 0, offset 0] [from PGExtras]
!104 = metadata !{i32 786451, metadata !105, null, metadata !"PGExtras", i32 37, i64 2368, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [PGExtras] [line 37, size 2368, align 64, offset 0] [from ]
!105 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !126, metadata !128}
!107 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"dim", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 39, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"nsize", i32 41, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nsize] [line 41, size 64, align 64, offset 64] [from ]
!109 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"maxskew", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [maxskew] [line 44, size 64, align 64, offset 128] [from double]
!110 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"lb", i32 45, i64 64, i64 64, i64 192, i32 0, metadata !111} ; [ DW_TAG_member ] [lb] [line 45, size 64, align 64, offset 192] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"ub", i32 46, i64 64, i64 64, i64 256, i32 0, metadata !111} ; [ DW_TAG_member ] [ub] [line 46, size 64, align 64, offset 256] [from ]
!113 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"bbox", i32 47, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [bbox] [line 47, size 64, align 64, offset 320] [from ]
!114 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"lnsize", i32 49, i64 64, i64 64, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [lnsize] [line 49, size 64, align 64, offset 384] [from ]
!115 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"npoints", i32 50, i64 32, i64 32, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [npoints] [line 50, size 32, align 32, offset 448] [from int]
!116 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"rnpoints", i32 51, i64 64, i64 64, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [rnpoints] [line 51, size 64, align 64, offset 512] [from ]
!117 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"rnsize", i32 52, i64 64, i64 64, i64 576, i32 0, metadata !111} ; [ DW_TAG_member ] [rnsize] [line 52, size 64, align 64, offset 576] [from ]
!118 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"iterator", i32 55, i64 64, i64 64, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [iterator] [line 55, size 64, align 64, offset 640] [from ]
!119 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"hyper_volume", i32 56, i64 64, i64 64, i64 704, i32 0, metadata !24} ; [ DW_TAG_member ] [hyper_volume] [line 56, size 64, align 64, offset 704] [from ]
!120 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"nghostzones", i32 59, i64 64, i64 64, i64 768, i32 0, metadata !24} ; [ DW_TAG_member ] [nghostzones] [line 59, size 64, align 64, offset 768] [from ]
!121 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"ownership", i32 60, i64 512, i64 64, i64 832, i32 0, metadata !122} ; [ DW_TAG_member ] [ownership] [line 60, size 512, align 64, offset 832] [from ]
!122 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !24, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!123 = metadata !{metadata !124, metadata !125}
!124 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!125 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!126 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"ghosts", i32 64, i64 512, i64 64, i64 1344, i32 0, metadata !127} ; [ DW_TAG_member ] [ghosts] [line 64, size 512, align 64, offset 1344] [from ]
!127 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !111, metadata !123, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !105, metadata !104, metadata !"overlap", i32 68, i64 512, i64 64, i64 1856, i32 0, metadata !127} ; [ DW_TAG_member ] [overlap] [line 68, size 512, align 64, offset 1856] [from ]
!129 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"Connectivity", i32 77, i64 64, i64 64, i64 1024, i32 0, metadata !130} ; [ DW_TAG_member ] [Connectivity] [line 77, size 64, align 64, offset 1024] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pConnectivity]
!132 = metadata !{i32 786454, metadata !77, null, metadata !"pConnectivity", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [pConnectivity] [line 29, size 0, align 0, offset 0] [from PConnectivity]
!133 = metadata !{i32 786451, metadata !105, null, metadata !"PConnectivity", i32 23, i64 256, i64 64, i32 0, i32 0, null, metadata !134, i32 0, null, null} ; [ DW_TAG_structure_type ] [PConnectivity] [line 23, size 256, align 64, offset 0] [from ]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138}
!135 = metadata !{i32 786445, metadata !105, metadata !133, metadata !"dim", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 25, size 32, align 32, offset 0] [from int]
!136 = metadata !{i32 786445, metadata !105, metadata !133, metadata !"nprocs", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [nprocs] [line 26, size 64, align 64, offset 64] [from ]
!137 = metadata !{i32 786445, metadata !105, metadata !133, metadata !"neighbours", i32 27, i64 64, i64 64, i64 128, i32 0, metadata !111} ; [ DW_TAG_member ] [neighbours] [line 27, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786445, metadata !105, metadata !133, metadata !"perme", i32 28, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [perme] [line 28, size 64, align 64, offset 192] [from ]
!139 = metadata !{i32 786445, metadata !77, metadata !76, metadata !"identity_string", i32 79, i64 64, i64 64, i64 1088, i32 0, metadata !140} ; [ DW_TAG_member ] [identity_string] [line 79, size 64, align 64, offset 1088] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!141 = metadata !{i32 786688, metadata !11, metadata !"extras", metadata !5, i32 61, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extras] [line 61]
!142 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 62, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 62]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, null, null}
!145 = metadata !{i32 19, i32 0, metadata !4, null}
!146 = metadata !{i32 57, i32 0, metadata !11, null}
!147 = metadata !{i32 65, i32 0, metadata !11, null}
!148 = metadata !{i32 67, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !11, i32 66, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c]
!150 = metadata !{i32 68, i32 0, metadata !149, null}
!151 = metadata !{i32 71, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !149, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c]
!153 = metadata !{i32 73, i32 0, metadata !152, null}
!154 = metadata !{i32 74, i32 0, metadata !152, null}
!155 = metadata !{i32 76, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !152, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c]
!157 = metadata !{metadata !"any pointer", metadata !158}
!158 = metadata !{metadata !"omnipotent char", metadata !159}
!159 = metadata !{metadata !"Simple C/C++ TBAA"}
!160 = metadata !{i32 78, i32 0, metadata !156, null}
!161 = metadata !{metadata !"int", metadata !158}
!162 = metadata !{i32 79, i32 0, metadata !156, null}
!163 = metadata !{i32 80, i32 0, metadata !156, null}
!164 = metadata !{i32 81, i32 0, metadata !156, null}
!165 = metadata !{i32 82, i32 0, metadata !156, null}
!166 = metadata !{i32 83, i32 0, metadata !156, null}
!167 = metadata !{i32 84, i32 0, metadata !156, null}
!168 = metadata !{i32 86, i32 0, metadata !156, null}
!169 = metadata !{i32 87, i32 0, metadata !156, null}
!170 = metadata !{i32 103, i32 0, metadata !11, null}
