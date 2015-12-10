; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/cctk_ThornBindings.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.iAttributeList = type { i8*, %union.iAttributeData }
%union.iAttributeData = type { i8** }

@.str = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@CCTKi_BindingsThorn_Time.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@CCTKi_BindingsThorn_Time.implementation = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8* null], align 16
@.str2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"friends\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsThorn_Time() #0 {
  %name = alloca [2 x i8*], align 16
  %implementation = alloca [2 x i8*], align 16
  %ancestors = alloca [1 x i8*], align 8
  %friends = alloca [1 x i8*], align 8
  %attributes = alloca [5 x %struct.iAttributeList], align 16
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %name, metadata !10, metadata !51), !dbg !52
  %1 = bitcast [2 x i8*]* %name to i8*, !dbg !52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_Time.name to i8*), i64 16, i32 16, i1 false), !dbg !52
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %implementation, metadata !17, metadata !51), !dbg !53
  %2 = bitcast [2 x i8*]* %implementation to i8*, !dbg !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_Time.implementation to i8*), i64 16, i32 16, i1 false), !dbg !53
  tail call void @llvm.dbg.declare(metadata [1 x i8*]* %ancestors, metadata !18, metadata !51), !dbg !54
  %3 = bitcast [1 x i8*]* %ancestors to i64*, !dbg !54
  store i64 0, i64* %3, align 8, !dbg !54
  tail call void @llvm.dbg.declare(metadata [1 x i8*]* %friends, metadata !22, metadata !51), !dbg !55
  %4 = bitcast [1 x i8*]* %friends to i64*, !dbg !55
  store i64 0, i64* %4, align 8, !dbg !55
  %5 = bitcast [5 x %struct.iAttributeList]* %attributes to i8*, !dbg !56
  call void @llvm.lifetime.start(i64 80, i8* %5) #2, !dbg !56
  tail call void @llvm.dbg.declare(metadata [5 x %struct.iAttributeList]* %attributes, metadata !23, metadata !51), !dbg !57
  %6 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 0, !dbg !58
  store i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8** %6, align 16, !dbg !59, !tbaa !60
  %7 = getelementptr inbounds [2 x i8*]* %name, i64 0, i64 0, !dbg !65
  %8 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 1, i32 0, !dbg !66
  store i8** %7, i8*** %8, align 8, !dbg !67, !tbaa !68
  %9 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 0, !dbg !69
  store i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8** %9, align 16, !dbg !70, !tbaa !60
  %10 = getelementptr inbounds [2 x i8*]* %implementation, i64 0, i64 0, !dbg !71
  %11 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 1, i32 0, !dbg !72
  store i8** %10, i8*** %11, align 8, !dbg !73, !tbaa !68
  %12 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 0, !dbg !74
  store i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8** %12, align 16, !dbg !75, !tbaa !60
  %13 = getelementptr inbounds [1 x i8*]* %ancestors, i64 0, i64 0, !dbg !76
  %14 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 1, i32 0, !dbg !77
  store i8** %13, i8*** %14, align 8, !dbg !78, !tbaa !68
  %15 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 0, !dbg !79
  store i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8** %15, align 16, !dbg !80, !tbaa !60
  %16 = getelementptr inbounds [1 x i8*]* %friends, i64 0, i64 0, !dbg !81
  %17 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 1, i32 0, !dbg !82
  store i8** %16, i8*** %17, align 8, !dbg !83, !tbaa !68
  %18 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 4, i32 0, !dbg !84
  %19 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, !dbg !85
  %20 = bitcast i8** %18 to i8*, !dbg !86
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 16, i32 16, i1 false), !dbg !87
  %21 = call i32 @CCTKi_RegisterThorn(%struct.iAttributeList* %19) #4, !dbg !86
  call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !9, metadata !51), !dbg !88
  call void @llvm.lifetime.end(i64 80, i8* %5) #2, !dbg !89
  ret i32 %21, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @CCTKi_RegisterThorn(%struct.iAttributeList*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/cctk_ThornBindings.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsThorn_Time", scope: !1, file: !1, line: 11, type: !5, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsThorn_Time, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !17, !18, !22, !23}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !4, file: !1, line: 14, type: !7)
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !4, file: !1, line: 16, type: !11)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, align: 64, elements: !15)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 2)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "implementation", scope: !4, file: !1, line: 17, type: !11)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ancestors", scope: !4, file: !1, line: 18, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 1)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "friends", scope: !4, file: !1, line: 23, type: !19)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attributes", scope: !4, file: !1, line: 31, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 640, align: 64, elements: !45)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "iAttributeList", file: !26, line: 31, size: 128, align: 64, elements: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/../include/cctki_ActiveThorns.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !25, file: !26, line: 33, baseType: !12, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "AttributeData", scope: !25, file: !26, line: 34, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DICompositeType(tag: DW_TAG_union_type, name: "iAttributeData", file: !26, line: 25, size: 64, align: 64, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "StringList", scope: !30, file: !26, line: 27, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "FuncList", scope: !30, file: !26, line: 28, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "iFuncList", file: !26, line: 18, size: 192, align: 64, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !37, file: !26, line: 20, baseType: !12, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !37, file: !26, line: 21, baseType: !12, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !37, file: !26, line: 22, baseType: !42, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null}
!45 = !{!46}
!46 = !DISubrange(count: 5)
!47 = !{i32 2, !"Dwarf Version", i32 2}
!48 = !{i32 2, !"Debug Info Version", i32 700000003}
!49 = !{i32 1, !"PIC Level", i32 2}
!50 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!51 = !DIExpression()
!52 = !DILocation(line: 16, column: 15, scope: !4)
!53 = !DILocation(line: 17, column: 15, scope: !4)
!54 = !DILocation(line: 18, column: 15, scope: !4)
!55 = !DILocation(line: 23, column: 15, scope: !4)
!56 = !DILocation(line: 31, column: 3, scope: !4)
!57 = !DILocation(line: 31, column: 25, scope: !4)
!58 = !DILocation(line: 33, column: 17, scope: !4)
!59 = !DILocation(line: 33, column: 27, scope: !4)
!60 = !{!61, !62, i64 0}
!61 = !{!"iAttributeList", !62, i64 0, !63, i64 8}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !DILocation(line: 34, column: 44, scope: !4)
!66 = !DILocation(line: 34, column: 31, scope: !4)
!67 = !DILocation(line: 34, column: 42, scope: !4)
!68 = !{!62, !62, i64 0}
!69 = !DILocation(line: 35, column: 17, scope: !4)
!70 = !DILocation(line: 35, column: 27, scope: !4)
!71 = !DILocation(line: 36, column: 44, scope: !4)
!72 = !DILocation(line: 36, column: 31, scope: !4)
!73 = !DILocation(line: 36, column: 42, scope: !4)
!74 = !DILocation(line: 37, column: 17, scope: !4)
!75 = !DILocation(line: 37, column: 27, scope: !4)
!76 = !DILocation(line: 38, column: 44, scope: !4)
!77 = !DILocation(line: 38, column: 31, scope: !4)
!78 = !DILocation(line: 38, column: 42, scope: !4)
!79 = !DILocation(line: 39, column: 17, scope: !4)
!80 = !DILocation(line: 39, column: 27, scope: !4)
!81 = !DILocation(line: 40, column: 44, scope: !4)
!82 = !DILocation(line: 40, column: 31, scope: !4)
!83 = !DILocation(line: 40, column: 42, scope: !4)
!84 = !DILocation(line: 41, column: 17, scope: !4)
!85 = !DILocation(line: 45, column: 32, scope: !4)
!86 = !DILocation(line: 45, column: 12, scope: !4)
!87 = !DILocation(line: 42, column: 42, scope: !4)
!88 = !DILocation(line: 14, column: 7, scope: !4)
!89 = !DILocation(line: 48, column: 1, scope: !4)
