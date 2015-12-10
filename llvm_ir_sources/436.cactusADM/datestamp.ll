; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/datestamp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [24 x i8] c"  Compiled on %s at %s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"Dec 10 2015\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"17:25:57\00", align 1
@CCTK_CompileDate.date = internal global [13 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [8 x i8] c"4.0.b11\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"b11\00", align 1
@.str7 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/datestamp.c,v 1.13 2001/12/06 15:07:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_src_datestamp_c() #0 {
  ret i8* getelementptr inbounds ([80 x i8]* @.str7, i64 0, i64 0), !dbg !29
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_DateStamp() #1 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_CompileTime() #0 {
  ret i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), !dbg !32
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CompileDate() #1 {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i64 12, i32 1, i1 false), !dbg !33
  ret i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0), !dbg !34
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_FullVersion() #0 {
  ret i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), !dbg !35
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MajorVersion() #0 {
  ret i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), !dbg !36
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MinorVersion() #0 {
  ret i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), !dbg !37
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MicroVersion() #0 {
  ret i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !38
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !19, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/datestamp.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !13, !14, !15, !16, !17, !18}
!4 = !DISubprogram(name: "CCTKi_version_src_datestamp_c", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_src_datestamp_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_DateStamp", scope: !1, file: !1, line: 31, type: !11, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_DateStamp, variables: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DISubprogram(name: "CCTK_CompileTime", scope: !1, file: !1, line: 51, type: !5, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_CompileTime, variables: !2)
!14 = !DISubprogram(name: "CCTK_CompileDate", scope: !1, file: !1, line: 71, type: !5, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_CompileDate, variables: !2)
!15 = !DISubprogram(name: "CCTK_FullVersion", scope: !1, file: !1, line: 109, type: !5, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_FullVersion, variables: !2)
!16 = !DISubprogram(name: "CCTK_MajorVersion", scope: !1, file: !1, line: 114, type: !5, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_MajorVersion, variables: !2)
!17 = !DISubprogram(name: "CCTK_MinorVersion", scope: !1, file: !1, line: 119, type: !5, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_MinorVersion, variables: !2)
!18 = !DISubprogram(name: "CCTK_MicroVersion", scope: !1, file: !1, line: 124, type: !5, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTK_MicroVersion, variables: !2)
!19 = !{!20, !24}
!20 = !DIGlobalVariable(name: "date", scope: !14, file: !1, line: 73, type: !21, isLocal: true, isDefinition: true, variable: [13 x i8]* @CCTK_CompileDate.date)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 104, align: 8, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 13)
!24 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 17, type: !7, isLocal: true, isDefinition: true)
!25 = !{i32 2, !"Dwarf Version", i32 2}
!26 = !{i32 2, !"Debug Info Version", i32 700000003}
!27 = !{i32 1, !"PIC Level", i32 2}
!28 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!29 = !DILocation(line: 20, column: 51, scope: !4)
!30 = !DILocation(line: 33, column: 3, scope: !10)
!31 = !DILocation(line: 34, column: 1, scope: !10)
!32 = !DILocation(line: 53, column: 3, scope: !13)
!33 = !DILocation(line: 78, column: 3, scope: !14)
!34 = !DILocation(line: 84, column: 3, scope: !14)
!35 = !DILocation(line: 111, column: 3, scope: !15)
!36 = !DILocation(line: 116, column: 3, scope: !16)
!37 = !DILocation(line: 121, column: 3, scope: !17)
!38 = !DILocation(line: 126, column: 3, scope: !18)
