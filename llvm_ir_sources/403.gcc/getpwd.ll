; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/getpwd.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@getpwd.pwd = internal unnamed_addr global i8* null, align 8
@getpwd.failure_errno = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @getpwd() #0 {
  %dotstat = alloca %struct.stat, align 8
  %pwdstat = alloca %struct.stat, align 8
  %1 = load i8** @getpwd.pwd, align 8, !dbg !99, !tbaa !100
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !10, metadata !104), !dbg !105
  %2 = bitcast %struct.stat* %dotstat to i8*, !dbg !106
  call void @llvm.lifetime.start(i64 144, i8* %2) #1, !dbg !106
  %3 = bitcast %struct.stat* %pwdstat to i8*, !dbg !106
  call void @llvm.lifetime.start(i64 144, i8* %3) #1, !dbg !106
  %4 = icmp eq i8* %1, null, !dbg !107
  br i1 %4, label %5, label %47, !dbg !108

; <label>:5                                       ; preds = %0
  %6 = load i32* @getpwd.failure_errno, align 4, !dbg !109, !tbaa !110
  %7 = tail call i32* @__error() #6, !dbg !112
  store i32 %6, i32* %7, align 4, !dbg !113, !tbaa !110
  %8 = icmp eq i32 %6, 0, !dbg !113
  br i1 %8, label %9, label %47, !dbg !114

; <label>:9                                       ; preds = %5
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !115
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !10, metadata !104), !dbg !105
  %11 = icmp eq i8* %10, null, !dbg !116
  br i1 %11, label %.preheader, label %12, !dbg !117

; <label>:12                                      ; preds = %9
  %13 = load i8* %10, align 1, !dbg !118, !tbaa !119
  %14 = icmp eq i8 %13, 47, !dbg !120
  br i1 %14, label %15, label %.preheader, !dbg !121

; <label>:15                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata %struct.stat* %pwdstat, i64 0, metadata !84, metadata !104), !dbg !122
  %16 = call i32 @"\01_stat$INODE64"(i8* %10, %struct.stat* %pwdstat) #6, !dbg !123
  %17 = icmp eq i32 %16, 0, !dbg !124
  br i1 %17, label %18, label %.preheader, !dbg !125

; <label>:18                                      ; preds = %15
  call void @llvm.dbg.value(metadata %struct.stat* %dotstat, i64 0, metadata !17, metadata !104), !dbg !126
  %19 = call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), %struct.stat* %dotstat) #6, !dbg !127
  %20 = icmp eq i32 %19, 0, !dbg !128
  br i1 %20, label %21, label %.preheader, !dbg !129

; <label>:21                                      ; preds = %18
  %22 = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 3, !dbg !130
  %23 = load i64* %22, align 8, !dbg !130, !tbaa !131
  %24 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 3, !dbg !137
  %25 = load i64* %24, align 8, !dbg !137, !tbaa !131
  %26 = icmp eq i64 %23, %25, !dbg !138
  br i1 %26, label %27, label %.preheader, !dbg !139

; <label>:27                                      ; preds = %21
  %28 = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 0, !dbg !140
  %29 = load i32* %28, align 8, !dbg !140, !tbaa !141
  %30 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 0, !dbg !142
  %31 = load i32* %30, align 8, !dbg !142, !tbaa !141
  %32 = icmp eq i32 %29, %31, !dbg !143
  br i1 %32, label %.loopexit, label %.preheader, !dbg !144

.preheader:                                       ; preds = %9, %27, %21, %18, %15, %12
  %33 = call noalias i8* @xmalloc(i64 100) #6, !dbg !145
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !10, metadata !104), !dbg !105
  %34 = call i8* @getcwd(i8* %33, i64 100) #6, !dbg !146
  %35 = icmp eq i8* %34, null, !dbg !147
  br i1 %35, label %.lr.ph, label %.loopexit, !dbg !148

; <label>:36                                      ; preds = %.lr.ph
  %37 = call noalias i8* @xmalloc(i64 %44) #6, !dbg !145
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !10, metadata !104), !dbg !105
  %38 = call i8* @getcwd(i8* %37, i64 %44) #6, !dbg !146
  %39 = icmp eq i8* %38, null, !dbg !147
  br i1 %39, label %.lr.ph, label %.loopexit, !dbg !148

.lr.ph:                                           ; preds = %.preheader, %36
  %40 = phi i8* [ %37, %36 ], [ %33, %.preheader ]
  %s.03 = phi i64 [ %44, %36 ], [ 100, %.preheader ]
  %41 = call i32* @__error() #6, !dbg !149
  %42 = load i32* %41, align 4, !dbg !149, !tbaa !110
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !85, metadata !104), !dbg !150
  call void @free(i8* %40) #7, !dbg !151
  %43 = icmp eq i32 %42, 34, !dbg !152
  %44 = shl i64 %s.03, 1, !dbg !154
  call void @llvm.dbg.value(metadata i64 %44, i64 0, metadata !11, metadata !104), !dbg !155
  br i1 %43, label %36, label %45, !dbg !156

; <label>:45                                      ; preds = %.lr.ph
  store i32 %42, i32* @getpwd.failure_errno, align 4, !dbg !157, !tbaa !110
  %46 = call i32* @__error() #6, !dbg !159
  store i32 %42, i32* %46, align 4, !dbg !160, !tbaa !110
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !10, metadata !104), !dbg !105
  br label %.loopexit, !dbg !161

.loopexit:                                        ; preds = %36, %.preheader, %45, %27
  %p.0 = phi i8* [ %10, %27 ], [ null, %45 ], [ %33, %.preheader ], [ %37, %36 ]
  store i8* %p.0, i8** @getpwd.pwd, align 8, !dbg !162, !tbaa !100
  br label %47, !dbg !163

; <label>:47                                      ; preds = %5, %0, %.loopexit
  %p.1 = phi i8* [ %1, %0 ], [ null, %5 ], [ %p.0, %.loopexit ]
  call void @llvm.lifetime.end(i64 144, i8* %3) #1, !dbg !164
  call void @llvm.lifetime.end(i64 144, i8* %2) #1, !dbg !164
  ret i8* %p.1, !dbg !164
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32* @__error() #2

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #2

; Function Attrs: optsize
declare i8* @getcwd(i8*, i64) #2

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !92, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/403.gcc/src/getpwd.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "getpwd", scope: !1, file: !1, line: 65, type: !5, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @getpwd, variables: !9)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !{!10, !11, !17, !84, !85}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !4, file: !1, line: 70, type: !7)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !4, file: !1, line: 71, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 30, baseType: !14)
!13 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !15, line: 92, baseType: !16)
!15 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dotstat", scope: !4, file: !1, line: 72, type: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !19, line: 182, size: 1152, align: 64, elements: !20)
!19 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !{!21, !28, !34, !37, !41, !47, !51, !52, !60, !61, !62, !63, !69, !73, !77, !78, !79, !80}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !18, file: !19, line: 182, baseType: !22, size: 32, align: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !23, line: 30, baseType: !24)
!23 = !DIFile(filename: "/usr/include/sys/_types/_dev_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !25, line: 57, baseType: !26)
!25 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 44, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !18, file: !19, line: 182, baseType: !29, size: 16, align: 16, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !30, line: 30, baseType: !31)
!30 = !DIFile(filename: "/usr/include/sys/_types/_mode_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !25, line: 70, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 43, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !18, file: !19, line: 182, baseType: !35, size: 16, align: 16, offset: 48)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !36, line: 30, baseType: !32)
!36 = !DIFile(filename: "/usr/include/sys/_types/_nlink_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!37 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !18, file: !19, line: 182, baseType: !38, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !25, line: 62, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !15, line: 47, baseType: !40)
!40 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !18, file: !19, line: 182, baseType: !42, size: 32, align: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !43, line: 30, baseType: !44)
!43 = !DIFile(filename: "/usr/include/sys/_types/_uid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !25, line: 75, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 45, baseType: !46)
!46 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !18, file: !19, line: 182, baseType: !48, size: 32, align: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !49, line: 30, baseType: !50)
!49 = !DIFile(filename: "/usr/include/sys/_types/_gid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !25, line: 60, baseType: !45)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !18, file: !19, line: 182, baseType: !22, size: 32, align: 32, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !18, file: !19, line: 182, baseType: !53, size: 128, align: 64, offset: 256)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !54, line: 30, size: 128, align: 64, elements: !55)
!54 = !DIFile(filename: "/usr/include/sys/_types/_timespec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !{!56, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !53, file: !54, line: 32, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !15, line: 120, baseType: !58)
!58 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !53, file: !54, line: 33, baseType: !58, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !18, file: !19, line: 182, baseType: !53, size: 128, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !18, file: !19, line: 182, baseType: !53, size: 128, align: 64, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !18, file: !19, line: 182, baseType: !53, size: 128, align: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !18, file: !19, line: 182, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !65, line: 30, baseType: !66)
!65 = !DIFile(filename: "/usr/include/sys/_types/_off_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !25, line: 71, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !15, line: 46, baseType: !68)
!68 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !18, file: !19, line: 182, baseType: !70, size: 64, align: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !71, line: 30, baseType: !72)
!71 = !DIFile(filename: "/usr/include/sys/_types/_blkcnt_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !25, line: 55, baseType: !67)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !18, file: !19, line: 182, baseType: !74, size: 32, align: 32, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !75, line: 30, baseType: !76)
!75 = !DIFile(filename: "/usr/include/sys/_types/_blksize_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !25, line: 56, baseType: !26)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !18, file: !19, line: 182, baseType: !45, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !18, file: !19, line: 182, baseType: !45, size: 32, align: 32, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !18, file: !19, line: 182, baseType: !26, size: 32, align: 32, offset: 992)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !18, file: !19, line: 182, baseType: !81, size: 128, align: 64, offset: 1024)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 2)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pwdstat", scope: !4, file: !1, line: 72, type: !18)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !86, file: !1, line: 86, type: !27)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 85, column: 4)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 84, column: 2)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 84, column: 2)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 76, column: 11)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 75, column: 5)
!91 = distinct !DILexicalBlock(scope: !4, file: !1, line: 74, column: 7)
!92 = !{!93, !94}
!93 = !DIGlobalVariable(name: "pwd", scope: !4, file: !1, line: 67, type: !7, isLocal: true, isDefinition: true, variable: i8** @getpwd.pwd)
!94 = !DIGlobalVariable(name: "failure_errno", scope: !4, file: !1, line: 68, type: !27, isLocal: true, isDefinition: true, variable: i32* @getpwd.failure_errno)
!95 = !{i32 2, !"Dwarf Version", i32 2}
!96 = !{i32 2, !"Debug Info Version", i32 700000003}
!97 = !{i32 1, !"PIC Level", i32 2}
!98 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!99 = !DILocation(line: 70, column: 13, scope: !4)
!100 = !{!101, !101, i64 0}
!101 = !{!"any pointer", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !DIExpression()
!105 = !DILocation(line: 70, column: 9, scope: !4)
!106 = !DILocation(line: 72, column: 3, scope: !4)
!107 = !DILocation(line: 74, column: 8, scope: !91)
!108 = !DILocation(line: 74, column: 10, scope: !91)
!109 = !DILocation(line: 74, column: 23, scope: !91)
!110 = !{!111, !111, i64 0}
!111 = !{!"int", !102, i64 0}
!112 = !DILocation(line: 74, column: 15, scope: !91)
!113 = !DILocation(line: 74, column: 21, scope: !91)
!114 = !DILocation(line: 74, column: 7, scope: !4)
!115 = !DILocation(line: 76, column: 19, scope: !89)
!116 = !DILocation(line: 76, column: 35, scope: !89)
!117 = !DILocation(line: 77, column: 7, scope: !89)
!118 = !DILocation(line: 77, column: 10, scope: !89)
!119 = !{!102, !102, i64 0}
!120 = !DILocation(line: 77, column: 13, scope: !89)
!121 = !DILocation(line: 78, column: 7, scope: !89)
!122 = !DILocation(line: 72, column: 24, scope: !4)
!123 = !DILocation(line: 78, column: 10, scope: !89)
!124 = !DILocation(line: 78, column: 29, scope: !89)
!125 = !DILocation(line: 79, column: 7, scope: !89)
!126 = !DILocation(line: 72, column: 15, scope: !4)
!127 = !DILocation(line: 79, column: 10, scope: !89)
!128 = !DILocation(line: 79, column: 31, scope: !89)
!129 = !DILocation(line: 80, column: 7, scope: !89)
!130 = !DILocation(line: 80, column: 18, scope: !89)
!131 = !{!132, !134, i64 8}
!132 = !{!"stat", !111, i64 0, !133, i64 4, !133, i64 6, !134, i64 8, !111, i64 16, !111, i64 20, !111, i64 24, !135, i64 32, !135, i64 48, !135, i64 64, !135, i64 80, !134, i64 96, !134, i64 104, !111, i64 112, !111, i64 116, !111, i64 120, !111, i64 124, !102, i64 128}
!133 = !{!"short", !102, i64 0}
!134 = !{!"long long", !102, i64 0}
!135 = !{!"timespec", !136, i64 0, !136, i64 8}
!136 = !{!"long", !102, i64 0}
!137 = !DILocation(line: 80, column: 36, scope: !89)
!138 = !DILocation(line: 80, column: 25, scope: !89)
!139 = !DILocation(line: 81, column: 7, scope: !89)
!140 = !DILocation(line: 81, column: 18, scope: !89)
!141 = !{!132, !111, i64 0}
!142 = !DILocation(line: 81, column: 36, scope: !89)
!143 = !DILocation(line: 81, column: 25, scope: !89)
!144 = !DILocation(line: 76, column: 11, scope: !90)
!145 = !DILocation(line: 84, column: 40, scope: !87)
!146 = !DILocation(line: 84, column: 28, scope: !87)
!147 = !DILocation(line: 84, column: 26, scope: !87)
!148 = !DILocation(line: 84, column: 2, scope: !88)
!149 = !DILocation(line: 86, column: 14, scope: !86)
!150 = !DILocation(line: 86, column: 10, scope: !86)
!151 = !DILocation(line: 87, column: 6, scope: !86)
!152 = !DILocation(line: 89, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !86, file: !1, line: 89, column: 10)
!154 = !DILocation(line: 84, column: 60, scope: !87)
!155 = !DILocation(line: 71, column: 10, scope: !4)
!156 = !DILocation(line: 89, column: 10, scope: !86)
!157 = !DILocation(line: 92, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !1, line: 91, column: 8)
!159 = !DILocation(line: 92, column: 3, scope: !158)
!160 = !DILocation(line: 92, column: 9, scope: !158)
!161 = !DILocation(line: 94, column: 3, scope: !158)
!162 = !DILocation(line: 100, column: 11, scope: !90)
!163 = !DILocation(line: 101, column: 5, scope: !90)
!164 = !DILocation(line: 103, column: 1, scope: !4)
