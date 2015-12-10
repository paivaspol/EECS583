; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IDLinearWaves/cctk_ThornBindings.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iAttributeList = type { i8*, %union.iAttributeData }
%union.iAttributeData = type { i8** }

@.str = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@CCTKi_BindingsThorn_IDLinearWaves.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str1 = private unnamed_addr constant [14 x i8] c"idlinearwaves\00", align 1
@CCTKi_BindingsThorn_IDLinearWaves.implementation = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i8* null], align 16
@.str2 = private unnamed_addr constant [5 x i8] c"GRID\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"EINSTEIN\00", align 1
@CCTKi_BindingsThorn_IDLinearWaves.ancestors = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i8* null], align 16
@.str5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"friends\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsThorn_IDLinearWaves() #0 {
entry:
  %name = alloca [2 x i8*], align 16
  %implementation = alloca [2 x i8*], align 16
  %ancestors = alloca [4 x i8*], align 16
  %friends = alloca [1 x i8*], align 8
  %attributes = alloca [5 x %struct.iAttributeList], align 16
  call void @llvm.dbg.declare(metadata !{[2 x i8*]* %name}, metadata !11), !dbg !51
  %0 = bitcast [2 x i8*]* %name to i8*, !dbg !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_IDLinearWaves.name to i8*), i64 16, i32 16, i1 false), !dbg !51
  call void @llvm.dbg.declare(metadata !{[2 x i8*]* %implementation}, metadata !18), !dbg !52
  %1 = bitcast [2 x i8*]* %implementation to i8*, !dbg !52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_IDLinearWaves.implementation to i8*), i64 16, i32 16, i1 false), !dbg !52
  call void @llvm.dbg.declare(metadata !{[4 x i8*]* %ancestors}, metadata !19), !dbg !53
  %2 = bitcast [4 x i8*]* %ancestors to i8*, !dbg !54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([4 x i8*]* @CCTKi_BindingsThorn_IDLinearWaves.ancestors to i8*), i64 32, i32 16, i1 false), !dbg !54
  call void @llvm.dbg.declare(metadata !{[1 x i8*]* %friends}, metadata !23), !dbg !55
  %3 = getelementptr inbounds [1 x i8*]* %friends, i64 0, i64 0, !dbg !56
  store i8* null, i8** %3, align 8, !dbg !56
  %4 = bitcast [5 x %struct.iAttributeList]* %attributes to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 80, i8* %4) #2, !dbg !57
  call void @llvm.dbg.declare(metadata !{[5 x %struct.iAttributeList]* %attributes}, metadata !27), !dbg !57
  %attribute = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 0, !dbg !58
  store i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8** %attribute, align 16, !dbg !58, !tbaa !59
  %arraydecay = getelementptr inbounds [2 x i8*]* %name, i64 0, i64 0, !dbg !62
  %StringList = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 1, i32 0, !dbg !62
  store i8** %arraydecay, i8*** %StringList, align 8, !dbg !62, !tbaa !59
  %attribute4 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 0, !dbg !63
  store i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i8** %attribute4, align 16, !dbg !63, !tbaa !59
  %arraydecay5 = getelementptr inbounds [2 x i8*]* %implementation, i64 0, i64 0, !dbg !64
  %StringList8 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 1, i32 0, !dbg !64
  store i8** %arraydecay5, i8*** %StringList8, align 8, !dbg !64, !tbaa !59
  %attribute10 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 0, !dbg !65
  store i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0), i8** %attribute10, align 16, !dbg !65, !tbaa !59
  %arraydecay11 = getelementptr inbounds [4 x i8*]* %ancestors, i64 0, i64 0, !dbg !66
  %StringList14 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 1, i32 0, !dbg !66
  store i8** %arraydecay11, i8*** %StringList14, align 8, !dbg !66, !tbaa !59
  %attribute16 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 0, !dbg !67
  store i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8** %attribute16, align 16, !dbg !67, !tbaa !59
  %StringList20 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 1, i32 0, !dbg !68
  store i8** %3, i8*** %StringList20, align 8, !dbg !68, !tbaa !59
  %attribute22 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 4, i32 0, !dbg !69
  %arraydecay26 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, !dbg !70
  %5 = bitcast i8** %attribute22 to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 16, i1 false), !dbg !71
  %call = call i32 @CCTKi_RegisterThorn(%struct.iAttributeList* %arraydecay26) #4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !10), !dbg !70
  call void @llvm.lifetime.end(i64 80, i8* %4) #2, !dbg !72
  ret i32 %call, !dbg !72
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @CCTKi_RegisterThorn(%struct.iAttributeList*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IDLinearWaves/cctk_ThornBindings.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IDLinearWaves/cctk_ThornBindings.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsThorn_IDLinearWaves", metadata !"CCTKi_BindingsThorn_IDLinearWaves", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsThorn_IDLinearWaves, null, null, metadata !9, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [CCTKi_BindingsThorn_IDLinearWaves]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IDLinearWaves/cctk_ThornBindings.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !18, metadata !19, metadata !23, metadata !27}
!10 = metadata !{i32 786688, metadata !4, metadata !"retval", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 14]
!11 = metadata !{i32 786688, metadata !4, metadata !"name", metadata !5, i32 16, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 16]
!12 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !13, metadata !16, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!18 = metadata !{i32 786688, metadata !4, metadata !"implementation", metadata !5, i32 17, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [implementation] [line 17]
!19 = metadata !{i32 786688, metadata !4, metadata !"ancestors", metadata !5, i32 18, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ancestors] [line 18]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !13, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!23 = metadata !{i32 786688, metadata !4, metadata !"friends", metadata !5, i32 26, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [friends] [line 26]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 64, i32 0, i32 0, metadata !13, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!27 = metadata !{i32 786688, metadata !4, metadata !"attributes", metadata !5, i32 34, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [attributes] [line 34]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !29, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from iAttributeList]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"iAttributeList", i32 31, i64 128, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [iAttributeList] [line 31, size 128, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IDLinearWaves/../include/cctki_ActiveThorns.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"attribute", i32 33, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [attribute] [line 33, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"AttributeData", i32 34, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [AttributeData] [line 34, size 64, align 64, offset 64] [from iAttributeData]
!34 = metadata !{i32 786455, metadata !30, null, metadata !"iAttributeData", i32 25, i64 64, i64 64, i64 0, i32 0, null, metadata !35, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [iAttributeData] [line 25, size 64, align 64, offset 0] [from ]
!35 = metadata !{metadata !36, metadata !38}
!36 = metadata !{i32 786445, metadata !30, metadata !34, metadata !"StringList", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [StringList] [line 27, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !34, metadata !"FuncList", i32 28, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [FuncList] [line 28, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from iFuncList]
!41 = metadata !{i32 786451, metadata !30, null, metadata !"iFuncList", i32 18, i64 192, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [iFuncList] [line 18, size 192, align 64, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786445, metadata !30, metadata !41, metadata !"keyword", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [keyword] [line 20, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !30, metadata !41, metadata !"signature", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [signature] [line 21, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !30, metadata !41, metadata !"func", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [func] [line 22, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!51 = metadata !{i32 16, i32 0, metadata !4, null}
!52 = metadata !{i32 17, i32 0, metadata !4, null}
!53 = metadata !{i32 18, i32 0, metadata !4, null}
!54 = metadata !{i32 24, i32 0, metadata !4, null}
!55 = metadata !{i32 26, i32 0, metadata !4, null}
!56 = metadata !{i32 29, i32 0, metadata !4, null}
!57 = metadata !{i32 34, i32 0, metadata !4, null}
!58 = metadata !{i32 36, i32 0, metadata !4, null}
!59 = metadata !{metadata !"any pointer", metadata !60}
!60 = metadata !{metadata !"omnipotent char", metadata !61}
!61 = metadata !{metadata !"Simple C/C++ TBAA"}
!62 = metadata !{i32 37, i32 0, metadata !4, null}
!63 = metadata !{i32 38, i32 0, metadata !4, null}
!64 = metadata !{i32 39, i32 0, metadata !4, null}
!65 = metadata !{i32 40, i32 0, metadata !4, null}
!66 = metadata !{i32 41, i32 0, metadata !4, null}
!67 = metadata !{i32 42, i32 0, metadata !4, null}
!68 = metadata !{i32 43, i32 0, metadata !4, null}
!69 = metadata !{i32 44, i32 0, metadata !4, null}
!70 = metadata !{i32 48, i32 0, metadata !4, null}
!71 = metadata !{i32 45, i32 0, metadata !4, null}
!72 = metadata !{i32 51, i32 0, metadata !4, null}
