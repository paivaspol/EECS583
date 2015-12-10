; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@getpwd.pwd = internal unnamed_addr global i8* null, align 8
@getpwd.failure_errno = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @getpwd() #0 {
entry:
  %dotstat = alloca %struct.stat, align 8
  %pwdstat = alloca %struct.stat, align 8
  %0 = load i8** @getpwd.pwd, align 8, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !11), !dbg !64
  %1 = bitcast %struct.stat* %dotstat to i8*, !dbg !68
  call void @llvm.lifetime.start(i64 144, i8* %1) #2, !dbg !68
  call void @llvm.dbg.declare(metadata !{%struct.stat* %dotstat}, metadata !15), !dbg !68
  %2 = bitcast %struct.stat* %pwdstat to i8*, !dbg !68
  call void @llvm.lifetime.start(i64 144, i8* %2) #2, !dbg !68
  call void @llvm.dbg.declare(metadata !{%struct.stat* %pwdstat}, metadata !56), !dbg !68
  %tobool = icmp eq i8* %0, null, !dbg !69
  br i1 %tobool, label %land.lhs.true, label %if.end32, !dbg !69

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* @getpwd.failure_errno, align 4, !dbg !69, !tbaa !70
  %call = call i32* @__errno_location() #7, !dbg !69
  store i32 %3, i32* %call, align 4, !dbg !69, !tbaa !70
  %tobool1 = icmp eq i32 %3, 0, !dbg !69
  br i1 %tobool1, label %if.then, label %if.end32, !dbg !69

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) #8, !dbg !71
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !11), !dbg !71
  %cmp = icmp eq i8* %call2, null, !dbg !71
  br i1 %cmp, label %for.cond.preheader, label %land.lhs.true3, !dbg !71

land.lhs.true3:                                   ; preds = %if.then
  %4 = load i8* %call2, align 1, !dbg !71, !tbaa !66
  %cmp4 = icmp eq i8 %4, 47, !dbg !71
  br i1 %cmp4, label %land.lhs.true6, label %for.cond.preheader, !dbg !71

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = call i32 @stat(i8* %call2, %struct.stat* %pwdstat) #8, !dbg !72
  %cmp8 = icmp eq i32 %call7, 0, !dbg !72
  br i1 %cmp8, label %land.lhs.true10, label %for.cond.preheader, !dbg !72

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0), %struct.stat* %dotstat) #8, !dbg !73
  %cmp12 = icmp eq i32 %call11, 0, !dbg !73
  br i1 %cmp12, label %land.lhs.true14, label %for.cond.preheader, !dbg !73

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %st_ino = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 1, !dbg !73
  %5 = load i64* %st_ino, align 8, !dbg !73, !tbaa !74
  %st_ino15 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 1, !dbg !73
  %6 = load i64* %st_ino15, align 8, !dbg !73, !tbaa !74
  %cmp16 = icmp eq i64 %5, %6, !dbg !73
  br i1 %cmp16, label %land.lhs.true18, label %for.cond.preheader, !dbg !73

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %st_dev = getelementptr inbounds %struct.stat* %dotstat, i64 0, i32 0, !dbg !73
  %7 = load i64* %st_dev, align 8, !dbg !73, !tbaa !74
  %st_dev19 = getelementptr inbounds %struct.stat* %pwdstat, i64 0, i32 0, !dbg !73
  %8 = load i64* %st_dev19, align 8, !dbg !73, !tbaa !74
  %cmp20 = icmp eq i64 %7, %8, !dbg !73
  br i1 %cmp20, label %if.end31, label %for.cond.preheader, !dbg !73

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true18, %land.lhs.true14, %land.lhs.true10, %land.lhs.true6, %land.lhs.true3
  %call2342 = call noalias i8* @xmalloc(i64 100) #8, !dbg !75
  %call2443 = call i8* @getcwd(i8* %call2342, i64 100) #8, !dbg !75
  %lnot44 = icmp eq i8* %call2443, null, !dbg !75
  br i1 %lnot44, label %for.body, label %if.end31, !dbg !75

for.cond:                                         ; preds = %for.body
  %call23 = call noalias i8* @xmalloc(i64 %mul) #8, !dbg !75
  %call24 = call i8* @getcwd(i8* %call23, i64 %mul) #8, !dbg !75
  %lnot = icmp eq i8* %call24, null, !dbg !75
  br i1 %lnot, label %for.body, label %if.end31, !dbg !75

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %call2346 = phi i8* [ %call23, %for.cond ], [ %call2342, %for.cond.preheader ]
  %s.045 = phi i64 [ %mul, %for.cond ], [ 100, %for.cond.preheader ]
  %9 = load i32* %call, align 4, !dbg !76, !tbaa !70
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !57), !dbg !76
  call void @free(i8* %call2346) #8, !dbg !77
  %cmp27 = icmp eq i32 %9, 34, !dbg !78
  %mul = shl i64 %s.045, 1, !dbg !75
  call void @llvm.dbg.value(metadata !{i64 %mul}, i64 0, metadata !12), !dbg !75
  br i1 %cmp27, label %for.cond, label %if.then29, !dbg !78

if.then29:                                        ; preds = %for.body
  store i32 %9, i32* @getpwd.failure_errno, align 4, !dbg !79, !tbaa !70
  store i32 %9, i32* %call, align 4, !dbg !79, !tbaa !70
  call void @llvm.dbg.value(metadata !81, i64 0, metadata !11), !dbg !82
  br label %if.end31, !dbg !83

if.end31:                                         ; preds = %for.cond.preheader, %for.cond, %if.then29, %land.lhs.true18
  %p.0 = phi i8* [ %call2, %land.lhs.true18 ], [ null, %if.then29 ], [ %call2342, %for.cond.preheader ], [ %call23, %for.cond ]
  store i8* %p.0, i8** @getpwd.pwd, align 8, !dbg !84, !tbaa !65
  br label %if.end32, !dbg !85

if.end32:                                         ; preds = %land.lhs.true, %entry, %if.end31
  %p.1 = phi i8* [ %0, %entry ], [ null, %land.lhs.true ], [ %p.0, %if.end31 ]
  call void @llvm.lifetime.end(i64 144, i8* %2) #2, !dbg !86
  call void @llvm.lifetime.end(i64 144, i8* %1) #2, !dbg !86
  ret i8* %p.1, !dbg !86
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @getcwd(i8*, i64) #5

; Function Attrs: optsize
declare noalias i8* @xmalloc(i64) #6

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !61, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"getpwd", metadata !"getpwd", metadata !"", i32 65, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @getpwd, null, null, metadata !10, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [getpwd]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!9 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!10 = metadata !{metadata !11, metadata !12, metadata !15, metadata !56, metadata !57}
!11 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 70, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 70]
!12 = metadata !{i32 786688, metadata !4, metadata !"s", metadata !5, i32 71, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 71]
!13 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!14 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!15 = metadata !{i32 786688, metadata !4, metadata !"dotstat", metadata !5, i32 72, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dotstat] [line 72]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [from ]
!17 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stat.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !23, metadata !25, metadata !28, metadata !30, metadata !32, metadata !34, metadata !35, metadata !38, metadata !40, metadata !42, metadata !50, metadata !51, metadata !52}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!20 = metadata !{i32 786454, metadata !17, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!22 = metadata !{i32 786454, metadata !17, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!24 = metadata !{i32 786454, metadata !17, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!26 = metadata !{i32 786454, metadata !17, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!27 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !29} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!29 = metadata !{i32 786454, metadata !17, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!31 = metadata !{i32 786454, metadata !17, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !33} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!33 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!36 = metadata !{i32 786454, metadata !17, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!37 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!39 = metadata !{i32 786454, metadata !17, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !41} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!41 = metadata !{i32 786454, metadata !17, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!42 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !43} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!43 = metadata !{i32 786451, metadata !44, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [from ]
!44 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!45 = metadata !{metadata !46, metadata !48}
!46 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!47 = metadata !{i32 786454, metadata !44, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!48 = metadata !{i32 786445, metadata !44, metadata !43, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!49 = metadata !{i32 786454, metadata !44, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!50 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !43} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!51 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !43} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!52 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !53} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!53 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !49, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!56 = metadata !{i32 786688, metadata !4, metadata !"pwdstat", metadata !5, i32 72, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pwdstat] [line 72]
!57 = metadata !{i32 786688, metadata !58, metadata !"e", metadata !5, i32 86, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 86]
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 85, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c]
!59 = metadata !{i32 786443, metadata !1, metadata !60, i32 84, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c]
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c]
!61 = metadata !{metadata !62, metadata !63}
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"pwd", metadata !"pwd", metadata !"", metadata !5, i32 67, metadata !8, i32 1, i32 1, i8** @getpwd.pwd, null} ; [ DW_TAG_variable ] [pwd] [line 67] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"failure_errno", metadata !"failure_errno", metadata !"", metadata !5, i32 68, metadata !33, i32 1, i32 1, i32* @getpwd.failure_errno, null} ; [ DW_TAG_variable ] [failure_errno] [line 68] [local] [def]
!64 = metadata !{i32 70, i32 0, metadata !4, null}
!65 = metadata !{metadata !"any pointer", metadata !66}
!66 = metadata !{metadata !"omnipotent char", metadata !67}
!67 = metadata !{metadata !"Simple C/C++ TBAA"}
!68 = metadata !{i32 72, i32 0, metadata !4, null}
!69 = metadata !{i32 74, i32 0, metadata !4, null}
!70 = metadata !{metadata !"int", metadata !66}
!71 = metadata !{i32 76, i32 0, metadata !60, null}
!72 = metadata !{i32 78, i32 0, metadata !60, null}
!73 = metadata !{i32 79, i32 0, metadata !60, null}
!74 = metadata !{metadata !"long", metadata !66}
!75 = metadata !{i32 84, i32 0, metadata !59, null}
!76 = metadata !{i32 86, i32 0, metadata !58, null}
!77 = metadata !{i32 87, i32 0, metadata !58, null}
!78 = metadata !{i32 89, i32 0, metadata !58, null}
!79 = metadata !{i32 92, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !58, i32 91, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/403.gcc/src/getpwd.c]
!81 = metadata !{i8* null}
!82 = metadata !{i32 93, i32 0, metadata !80, null}
!83 = metadata !{i32 94, i32 0, metadata !80, null}
!84 = metadata !{i32 100, i32 0, metadata !60, null}
!85 = metadata !{i32 101, i32 0, metadata !60, null}
!86 = metadata !{i32 103, i32 0, metadata !4, null}
