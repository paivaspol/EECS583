; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str2 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/util/File.c,v 1.27 2002/01/18 16:29:01 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_File_c() #0 {
  ret i8* getelementptr inbounds ([80 x i8]* @.str2, i64 0, i64 0), !dbg !110
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CreateDirectory(i32 %mode, i8* %pathname) #1 {
  %path = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata i32 %mode, i64 0, metadata !22, metadata !111), !dbg !112
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !23, metadata !111), !dbg !113
  %1 = bitcast %struct.stat* %statbuf to i8*, !dbg !114
  call void @llvm.lifetime.start(i64 144, i8* %1) #2, !dbg !114
  %2 = tail call i64 @strlen(i8* %pathname) #7, !dbg !115
  %3 = add i64 %2, 1, !dbg !116
  %4 = tail call i8* @malloc(i64 %3) #7, !dbg !117
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !26, metadata !111), !dbg !118
  %5 = icmp eq i8* %4, null, !dbg !119
  br i1 %5, label %58, label %6, !dbg !121

; <label>:6                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !111), !dbg !122
  store i8 0, i8* %4, align 1, !dbg !123, !tbaa !125
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !25, metadata !111), !dbg !128
  store i8* %pathname, i8** %path, align 8, !dbg !129, !tbaa !130
  %7 = call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false), !dbg !132
  %8 = trunc i32 %mode to i16, !dbg !136
  %9 = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 1, !dbg !140
  br label %.thread.outer, !dbg !142

.thread.outer:                                    ; preds = %32, %28, %6
  %retval.0.ph = phi i32 [ 0, %6 ], [ 1, %28 ], [ 1, %32 ]
  br label %.thread

.thread:                                          ; preds = %.thread.outer, %25
  call void @llvm.dbg.value(metadata i8** %path, i64 0, metadata !25, metadata !111), !dbg !128
  %10 = call i8* @Util_StrSep(i8** %path, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7, !dbg !143
  call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !27, metadata !111), !dbg !144
  %11 = icmp eq i8* %10, null, !dbg !142
  br i1 %11, label %36, label %12, !dbg !142

; <label>:12                                      ; preds = %.thread
  %13 = load i8* %4, align 1, !dbg !145, !tbaa !125
  %14 = icmp eq i8 %13, 0, !dbg !145
  br i1 %14, label %17, label %15, !dbg !146

; <label>:15                                      ; preds = %12
  %16 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 %7, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i8* %4, i8* %10) #7, !dbg !147
  br label %22, !dbg !149

; <label>:17                                      ; preds = %12
  %18 = load i8* %10, align 1, !dbg !132, !tbaa !125
  %19 = icmp ne i8 %18, 0, !dbg !132
  %20 = select i1 %19, i8* %10, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), !dbg !132
  %21 = call i8* @__strcpy_chk(i8* %4, i8* %20, i64 %7) #7, !dbg !132
  br label %22

; <label>:22                                      ; preds = %17, %15
  call void @llvm.dbg.value(metadata %struct.stat* %statbuf, i64 0, metadata !28, metadata !111), !dbg !150
  %23 = call i32 @"\01_stat$INODE64"(i8* %4, %struct.stat* %statbuf) #7, !dbg !151
  %24 = icmp eq i32 %23, 0, !dbg !151
  br i1 %24, label %32, label %25, !dbg !152

; <label>:25                                      ; preds = %22
  %26 = call i32 @mkdir(i8* %4, i16 zeroext %8) #7, !dbg !136
  %27 = icmp eq i32 %26, -1, !dbg !153
  br i1 %27, label %28, label %.thread, !dbg !154

; <label>:28                                      ; preds = %25
  %29 = call i32* @__error() #7, !dbg !155
  %30 = load i32* %29, align 4, !dbg !155, !tbaa !157
  %31 = icmp eq i32 %30, 17, !dbg !159
  br i1 %31, label %.thread.outer, label %.thread9

; <label>:32                                      ; preds = %22
  %33 = load i16* %9, align 4, !dbg !140, !tbaa !160
  %34 = and i16 %33, -4096, !dbg !140
  %35 = icmp eq i16 %34, 16384, !dbg !140
  br i1 %35, label %.thread.outer, label %.thread9

; <label>:36                                      ; preds = %.thread
  call void @llvm.dbg.value(metadata i8** %path, i64 0, metadata !25, metadata !111), !dbg !128
  %37 = load i8** %path, align 8, !dbg !166, !tbaa !130
  %38 = ptrtoint i8* %37 to i64, !dbg !170
  %39 = ptrtoint i8* %pathname to i64, !dbg !170
  %40 = sub i64 %38, %39, !dbg !170
  %41 = call i64 @strlen(i8* %pathname) #7, !dbg !171
  %42 = icmp ult i64 %40, %41, !dbg !172
  br i1 %42, label %43, label %.thread9, !dbg !173

; <label>:43                                      ; preds = %36
  call void @llvm.dbg.value(metadata %struct.stat* %statbuf, i64 0, metadata !28, metadata !111), !dbg !150
  %44 = call i32 @"\01_stat$INODE64"(i8* %pathname, %struct.stat* %statbuf) #7, !dbg !174
  %45 = icmp eq i32 %44, 0, !dbg !174
  br i1 %45, label %54, label %46, !dbg !177

; <label>:46                                      ; preds = %43
  %47 = call i32 @mkdir(i8* %pathname, i16 zeroext %8) #7, !dbg !178
  %48 = icmp eq i32 %47, -1, !dbg !181
  br i1 %48, label %49, label %.thread9, !dbg !182

; <label>:49                                      ; preds = %46
  %50 = call i32* @__error() #7, !dbg !183
  %51 = load i32* %50, align 4, !dbg !183, !tbaa !157
  %52 = icmp eq i32 %51, 17, !dbg !185
  %53 = select i1 %52, i32 1, i32 -2, !dbg !183
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !24, metadata !111), !dbg !122
  br label %.thread9, !dbg !186

; <label>:54                                      ; preds = %43
  %55 = load i16* %9, align 4, !dbg !187, !tbaa !160
  %56 = and i16 %55, -4096, !dbg !187
  %57 = icmp eq i16 %56, 16384, !dbg !187
  %.1 = select i1 %57, i32 1, i32 -3
  br label %.thread9

.thread9:                                         ; preds = %28, %32, %54, %36, %46, %49
  %retval.3 = phi i32 [ %53, %49 ], [ %retval.0.ph, %46 ], [ %retval.0.ph, %36 ], [ %.1, %54 ], [ -2, %28 ], [ -3, %32 ]
  call void @free(i8* %4) #8, !dbg !189
  br label %58, !dbg !190

; <label>:58                                      ; preds = %0, %.thread9
  %retval.4 = phi i32 [ %retval.3, %.thread9 ], [ -1, %0 ]
  call void @llvm.lifetime.end(i64 144, i8* %1) #2, !dbg !191
  ret i32 %retval.4, !dbg !191
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @Util_StrSep(i8**, i8*) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #5

; Function Attrs: nounwind optsize
declare i32 @mkdir(i8* nocapture readonly, i16 zeroext) #3

; Function Attrs: optsize
declare i32* @__error() #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_createdirectory_(i32* nocapture %ierr, i32* nocapture readonly %mode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !99, metadata !111), !dbg !192
  tail call void @llvm.dbg.value(metadata i32* %mode, i64 0, metadata !100, metadata !111), !dbg !193
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !101, metadata !111), !dbg !194
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !102, metadata !111), !dbg !194
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !195
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !103, metadata !111), !dbg !195
  %2 = load i32* %mode, align 4, !dbg !196, !tbaa !157
  %3 = tail call i32 @CCTK_CreateDirectory(i32 %2, i8* %1) #8, !dbg !197
  store i32 %3, i32* %ierr, align 4, !dbg !198, !tbaa !157
  tail call void @free(i8* %1) #8, !dbg !199
  ret void, !dbg !200
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !11, globals: !104, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !9, line: 92, baseType: !10)
!9 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!11 = !{!12, !17, !94}
!12 = !DISubprogram(name: "CCTKi_version_util_File_c", scope: !1, file: !1, line: 30, type: !13, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_util_File_c, variables: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !DISubprogram(name: "CCTK_CreateDirectory", scope: !1, file: !1, line: 85, type: !18, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @CCTK_CreateDirectory, variables: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20, !15}
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25, !26, !27, !28}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 1, scope: !17, file: !1, line: 85, type: !20)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 2, scope: !17, file: !1, line: 85, type: !15)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !17, file: !1, line: 87, type: !20)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !17, file: !1, line: 88, type: !15)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current", scope: !17, file: !1, line: 89, type: !4)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "token", scope: !17, file: !1, line: 90, type: !15)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statbuf", scope: !17, file: !1, line: 91, type: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !30, line: 182, size: 1152, align: 64, elements: !31)
!30 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !{!32, !38, !44, !47, !51, !57, !61, !62, !70, !71, !72, !73, !79, !83, !87, !88, !89, !90}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !29, file: !30, line: 182, baseType: !33, size: 32, align: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !34, line: 30, baseType: !35)
!34 = !DIFile(filename: "/usr/include/sys/_types/_dev_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !36, line: 57, baseType: !37)
!36 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !9, line: 44, baseType: !20)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !29, file: !30, line: 182, baseType: !39, size: 16, align: 16, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !40, line: 30, baseType: !41)
!40 = !DIFile(filename: "/usr/include/sys/_types/_mode_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !36, line: 70, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 43, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !29, file: !30, line: 182, baseType: !45, size: 16, align: 16, offset: 48)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !46, line: 30, baseType: !42)
!46 = !DIFile(filename: "/usr/include/sys/_types/_nlink_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !29, file: !30, line: 182, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !36, line: 62, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 47, baseType: !50)
!50 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !29, file: !30, line: 182, baseType: !52, size: 32, align: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !53, line: 30, baseType: !54)
!53 = !DIFile(filename: "/usr/include/sys/_types/_uid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !36, line: 75, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 45, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !29, file: !30, line: 182, baseType: !58, size: 32, align: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !59, line: 30, baseType: !60)
!59 = !DIFile(filename: "/usr/include/sys/_types/_gid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !36, line: 60, baseType: !55)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !29, file: !30, line: 182, baseType: !33, size: 32, align: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !29, file: !30, line: 182, baseType: !63, size: 128, align: 64, offset: 256)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !64, line: 30, size: 128, align: 64, elements: !65)
!64 = !DIFile(filename: "/usr/include/sys/_types/_timespec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!65 = !{!66, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !63, file: !64, line: 32, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !9, line: 120, baseType: !68)
!68 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !63, file: !64, line: 33, baseType: !68, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !29, file: !30, line: 182, baseType: !63, size: 128, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !29, file: !30, line: 182, baseType: !63, size: 128, align: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !29, file: !30, line: 182, baseType: !63, size: 128, align: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !29, file: !30, line: 182, baseType: !74, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !75, line: 30, baseType: !76)
!75 = !DIFile(filename: "/usr/include/sys/_types/_off_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !36, line: 71, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !9, line: 46, baseType: !78)
!78 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !29, file: !30, line: 182, baseType: !80, size: 64, align: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !81, line: 30, baseType: !82)
!81 = !DIFile(filename: "/usr/include/sys/_types/_blkcnt_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !36, line: 55, baseType: !77)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !29, file: !30, line: 182, baseType: !84, size: 32, align: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "/usr/include/sys/_types/_blksize_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !36, line: 56, baseType: !37)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !29, file: !30, line: 182, baseType: !55, size: 32, align: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !29, file: !30, line: 182, baseType: !55, size: 32, align: 32, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !29, file: !30, line: 182, baseType: !37, size: 32, align: 32, offset: 992)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !29, file: !30, line: 182, baseType: !91, size: 128, align: 64, offset: 1024)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, align: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 2)
!94 = !DISubprogram(name: "cctk_createdirectory_", scope: !1, file: !1, line: 170, type: !95, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i32)* @cctk_createdirectory_, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97, !97, !4, !56}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !94, file: !1, line: 171, type: !97)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !94, file: !1, line: 171, type: !97)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !94, file: !1, line: 171, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !94, file: !1, line: 171, type: !56)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dirname", scope: !94, file: !1, line: 173, type: !4)
!104 = !{!105}
!105 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 28, type: !15, isLocal: true, isDefinition: true)
!106 = !{i32 2, !"Dwarf Version", i32 2}
!107 = !{i32 2, !"Debug Info Version", i32 700000003}
!108 = !{i32 1, !"PIC Level", i32 2}
!109 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!110 = !DILocation(line: 30, column: 1, scope: !12)
!111 = !DIExpression()
!112 = !DILocation(line: 85, column: 31, scope: !17)
!113 = !DILocation(line: 85, column: 49, scope: !17)
!114 = !DILocation(line: 91, column: 3, scope: !17)
!115 = !DILocation(line: 94, column: 30, scope: !17)
!116 = !DILocation(line: 94, column: 48, scope: !17)
!117 = !DILocation(line: 94, column: 22, scope: !17)
!118 = !DILocation(line: 89, column: 9, scope: !17)
!119 = !DILocation(line: 95, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !17, file: !1, line: 95, column: 7)
!121 = !DILocation(line: 95, column: 7, scope: !17)
!122 = !DILocation(line: 87, column: 7, scope: !17)
!123 = !DILocation(line: 98, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 96, column: 3)
!125 = !{!126, !126, i64 0}
!126 = !{!"omnipotent char", !127, i64 0}
!127 = !{!"Simple C/C++ TBAA"}
!128 = !DILocation(line: 88, column: 15, scope: !17)
!129 = !DILocation(line: 100, column: 10, scope: !124)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !126, i64 0}
!132 = !DILocation(line: 110, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 109, column: 7)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 104, column: 11)
!135 = distinct !DILexicalBlock(scope: !124, file: !1, line: 102, column: 5)
!136 = !DILocation(line: 115, column: 13, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 115, column: 13)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 114, column: 7)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 113, column: 11)
!140 = !DILocation(line: 120, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !1, line: 120, column: 16)
!142 = !DILocation(line: 101, column: 5, scope: !124)
!143 = !DILocation(line: 101, column: 21, scope: !124)
!144 = !DILocation(line: 90, column: 15, scope: !17)
!145 = !DILocation(line: 104, column: 11, scope: !134)
!146 = !DILocation(line: 104, column: 11, scope: !135)
!147 = !DILocation(line: 106, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !134, file: !1, line: 105, column: 7)
!149 = !DILocation(line: 107, column: 7, scope: !148)
!150 = !DILocation(line: 91, column: 15, scope: !17)
!151 = !DILocation(line: 113, column: 11, scope: !139)
!152 = !DILocation(line: 113, column: 11, scope: !135)
!153 = !DILocation(line: 115, column: 43, scope: !137)
!154 = !DILocation(line: 115, column: 13, scope: !138)
!155 = !DILocation(line: 117, column: 20, scope: !156)
!156 = distinct !DILexicalBlock(scope: !137, file: !1, line: 116, column: 9)
!157 = !{!158, !158, i64 0}
!158 = !{!"int", !126, i64 0}
!159 = !DILocation(line: 117, column: 26, scope: !156)
!160 = !{!161, !162, i64 4}
!161 = !{!"stat", !158, i64 0, !162, i64 4, !162, i64 6, !163, i64 8, !158, i64 16, !158, i64 20, !158, i64 24, !164, i64 32, !164, i64 48, !164, i64 64, !164, i64 80, !163, i64 96, !163, i64 104, !158, i64 112, !158, i64 116, !158, i64 120, !158, i64 124, !126, i64 128}
!162 = !{!"short", !126, i64 0}
!163 = !{!"long long", !126, i64 0}
!164 = !{!"timespec", !165, i64 0, !165, i64 8}
!165 = !{!"long", !126, i64 0}
!166 = !DILocation(line: 138, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 138, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 136, column: 5)
!169 = distinct !DILexicalBlock(scope: !124, file: !1, line: 135, column: 9)
!170 = !DILocation(line: 138, column: 26, scope: !167)
!171 = !DILocation(line: 138, column: 40, scope: !167)
!172 = !DILocation(line: 138, column: 38, scope: !167)
!173 = !DILocation(line: 138, column: 11, scope: !168)
!174 = !DILocation(line: 140, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 140, column: 13)
!176 = distinct !DILexicalBlock(scope: !167, file: !1, line: 139, column: 7)
!177 = !DILocation(line: 140, column: 13, scope: !176)
!178 = !DILocation(line: 142, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 142, column: 15)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 141, column: 9)
!181 = !DILocation(line: 142, column: 46, scope: !179)
!182 = !DILocation(line: 142, column: 15, scope: !180)
!183 = !DILocation(line: 144, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 143, column: 11)
!185 = !DILocation(line: 144, column: 28, scope: !184)
!186 = !DILocation(line: 145, column: 11, scope: !184)
!187 = !DILocation(line: 147, column: 20, scope: !188)
!188 = distinct !DILexicalBlock(scope: !175, file: !1, line: 147, column: 18)
!189 = !DILocation(line: 158, column: 5, scope: !124)
!190 = !DILocation(line: 160, column: 3, scope: !124)
!191 = !DILocation(line: 167, column: 1, scope: !17)
!192 = !DILocation(line: 171, column: 34, scope: !94)
!193 = !DILocation(line: 171, column: 45, scope: !94)
!194 = !DILocation(line: 171, column: 51, scope: !94)
!195 = !DILocation(line: 173, column: 3, scope: !94)
!196 = !DILocation(line: 174, column: 33, scope: !94)
!197 = !DILocation(line: 174, column: 11, scope: !94)
!198 = !DILocation(line: 174, column: 9, scope: !94)
!199 = !DILocation(line: 175, column: 3, scope: !94)
!200 = !DILocation(line: 176, column: 1, scope: !94)
