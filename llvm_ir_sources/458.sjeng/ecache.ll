; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECacheType = type { i32, i32, i32 }

@hash = external global i32
@ECacheSize = external global i32
@ECache = common global %struct.ECacheType* null, align 8
@hold_hash = external global i32
@ECacheProbes = common global i32 0, align 4
@ECacheHits = common global i32 0, align 4
@str = private unnamed_addr constant [33 x i8] c"Out of memory allocating ECache.\00"

; Function Attrs: nounwind optsize uwtable
define void @storeECache(i32 %score) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %score}, i64 0, metadata !10), !dbg !37
  %0 = load i32* @hash, align 4, !dbg !38, !tbaa !39
  %1 = load i32* @ECacheSize, align 4, !dbg !38, !tbaa !39
  %rem = urem i32 %0, %1, !dbg !38
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !11), !dbg !38
  %idxprom = sext i32 %rem to i64, !dbg !42
  %2 = load %struct.ECacheType** @ECache, align 8, !dbg !42, !tbaa !43
  %stored_hash = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 0, !dbg !42
  store i32 %0, i32* %stored_hash, align 4, !dbg !42, !tbaa !39
  %3 = load i32* @hold_hash, align 4, !dbg !44, !tbaa !39
  %hold_hash = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 1, !dbg !44
  store i32 %3, i32* %hold_hash, align 4, !dbg !44, !tbaa !39
  %score5 = getelementptr inbounds %struct.ECacheType* %2, i64 %idxprom, i32 2, !dbg !45
  store i32 %score, i32* %score5, align 4, !dbg !45, !tbaa !39
  ret void, !dbg !46
}

; Function Attrs: nounwind optsize uwtable
define void @checkECache(i32* nocapture %score, i32* nocapture %in_cache) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !17), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32* %in_cache}, i64 0, metadata !18), !dbg !47
  %0 = load i32* @ECacheProbes, align 4, !dbg !48, !tbaa !39
  %inc = add i32 %0, 1, !dbg !48
  store i32 %inc, i32* @ECacheProbes, align 4, !dbg !48, !tbaa !39
  %1 = load i32* @hash, align 4, !dbg !49, !tbaa !39
  %2 = load i32* @ECacheSize, align 4, !dbg !49, !tbaa !39
  %rem = urem i32 %1, %2, !dbg !49
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !19), !dbg !49
  %idxprom = sext i32 %rem to i64, !dbg !50
  %3 = load %struct.ECacheType** @ECache, align 8, !dbg !50, !tbaa !43
  %stored_hash = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 0, !dbg !50
  %4 = load i32* %stored_hash, align 4, !dbg !50, !tbaa !39
  %cmp = icmp eq i32 %4, %1, !dbg !50
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !50

land.lhs.true:                                    ; preds = %entry
  %hold_hash = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 1, !dbg !50
  %5 = load i32* %hold_hash, align 4, !dbg !50, !tbaa !39
  %6 = load i32* @hold_hash, align 4, !dbg !50, !tbaa !39
  %cmp3 = icmp eq i32 %5, %6, !dbg !50
  br i1 %cmp3, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32* @ECacheHits, align 4, !dbg !51, !tbaa !39
  %inc4 = add i32 %7, 1, !dbg !51
  store i32 %inc4, i32* @ECacheHits, align 4, !dbg !51, !tbaa !39
  store i32 1, i32* %in_cache, align 4, !dbg !53, !tbaa !39
  %score7 = getelementptr inbounds %struct.ECacheType* %3, i64 %idxprom, i32 2, !dbg !54
  %8 = load i32* %score7, align 4, !dbg !54, !tbaa !39
  store i32 %8, i32* %score, align 4, !dbg !54, !tbaa !39
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !56
}

; Function Attrs: nounwind optsize uwtable
define void @reset_ecache() #0 {
entry:
  %0 = load %struct.ECacheType** @ECache, align 8, !dbg !57, !tbaa !43
  %1 = bitcast %struct.ECacheType* %0 to i8*, !dbg !57
  %2 = load i32* @ECacheSize, align 4, !dbg !57, !tbaa !39
  %conv = sext i32 %2 to i64, !dbg !57
  %mul = mul i64 %conv, 12, !dbg !57
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @alloc_ecache() #0 {
entry:
  %0 = load i32* @ECacheSize, align 4, !dbg !59, !tbaa !39
  %conv = sext i32 %0 to i64, !dbg !59
  %mul = mul i64 %conv, 12, !dbg !59
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !59
  %1 = bitcast i8* %call to %struct.ECacheType*, !dbg !59
  store %struct.ECacheType* %1, %struct.ECacheType** @ECache, align 8, !dbg !59, !tbaa !43
  %cmp = icmp eq i8* %call, null, !dbg !60
  br i1 %cmp, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str, i64 0, i64 0)), !dbg !61
  tail call void @exit(i32 1) #6, !dbg !63
  unreachable, !dbg !63

if.end:                                           ; preds = %entry
  ret void, !dbg !64
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @free_ecache() #0 {
entry:
  %0 = load %struct.ECacheType** @ECache, align 8, !dbg !65, !tbaa !43
  %1 = bitcast %struct.ECacheType* %0 to i8*, !dbg !65
  tail call void @free(i8* %1) #5, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !25, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !12, metadata !20, metadata !23, metadata !24}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"storeECache", metadata !"storeECache", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @storeECache, null, null, metadata !9, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [storeECache]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11}
!10 = metadata !{i32 786689, metadata !4, metadata !"score", metadata !5, i32 16777243, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 27]
!11 = metadata !{i32 786688, metadata !4, metadata !"ecindex", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecindex] [line 29]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"checkECache", metadata !"checkECache", metadata !"", i32 38, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @checkECache, null, null, metadata !16, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [checkECache]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !15, metadata !15}
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!16 = metadata !{metadata !17, metadata !18, metadata !19}
!17 = metadata !{i32 786689, metadata !12, metadata !"score", metadata !5, i32 16777254, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [score] [line 38]
!18 = metadata !{i32 786689, metadata !12, metadata !"in_cache", metadata !5, i32 33554470, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_cache] [line 38]
!19 = metadata !{i32 786688, metadata !12, metadata !"ecindex", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ecindex] [line 40]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_ecache", metadata !"reset_ecache", metadata !"", i32 57, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @reset_ecache, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 58] [reset_ecache]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null}
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"alloc_ecache", metadata !"alloc_ecache", metadata !"", i32 63, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @alloc_ecache, null, null, metadata !2, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [alloc_ecache]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"free_ecache", metadata !"free_ecache", metadata !"", i32 79, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @free_ecache, null, null, metadata !2, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [free_ecache]
!25 = metadata !{metadata !26, metadata !35, metadata !36}
!26 = metadata !{i32 786484, i32 0, null, metadata !"ECache", metadata !"ECache", metadata !"", metadata !5, i32 22, metadata !27, i32 0, i32 1, %struct.ECacheType** @ECache, null} ; [ DW_TAG_variable ] [ECache] [line 22] [def]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ECacheType]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"ECacheType", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [ECacheType] [line 19, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 14, i64 96, i64 32, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 96, align 32, offset 0] [from ]
!30 = metadata !{metadata !31, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"stored_hash", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [stored_hash] [line 16, size 32, align 32, offset 0] [from unsigned int]
!32 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!33 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"hold_hash", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [hold_hash] [line 17, size 32, align 32, offset 32] [from unsigned int]
!34 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"score", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [score] [line 18, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786484, i32 0, null, metadata !"ECacheProbes", metadata !"ECacheProbes", metadata !"", metadata !5, i32 24, metadata !32, i32 0, i32 1, i32* @ECacheProbes, null} ; [ DW_TAG_variable ] [ECacheProbes] [line 24] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"ECacheHits", metadata !"ECacheHits", metadata !"", metadata !5, i32 25, metadata !32, i32 0, i32 1, i32* @ECacheHits, null} ; [ DW_TAG_variable ] [ECacheHits] [line 25] [def]
!37 = metadata !{i32 27, i32 0, metadata !4, null}
!38 = metadata !{i32 31, i32 0, metadata !4, null}
!39 = metadata !{metadata !"int", metadata !40}
!40 = metadata !{metadata !"omnipotent char", metadata !41}
!41 = metadata !{metadata !"Simple C/C++ TBAA"}
!42 = metadata !{i32 33, i32 0, metadata !4, null}
!43 = metadata !{metadata !"any pointer", metadata !40}
!44 = metadata !{i32 34, i32 0, metadata !4, null}
!45 = metadata !{i32 35, i32 0, metadata !4, null}
!46 = metadata !{i32 36, i32 0, metadata !4, null}
!47 = metadata !{i32 38, i32 0, metadata !12, null}
!48 = metadata !{i32 42, i32 0, metadata !12, null}
!49 = metadata !{i32 44, i32 0, metadata !12, null}
!50 = metadata !{i32 46, i32 0, metadata !12, null}
!51 = metadata !{i32 50, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !12, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c]
!53 = metadata !{i32 52, i32 0, metadata !52, null}
!54 = metadata !{i32 53, i32 0, metadata !52, null}
!55 = metadata !{i32 54, i32 0, metadata !52, null}
!56 = metadata !{i32 55, i32 0, metadata !12, null}
!57 = metadata !{i32 59, i32 0, metadata !20, null}
!58 = metadata !{i32 60, i32 0, metadata !20, null}
!59 = metadata !{i32 65, i32 0, metadata !23, null}
!60 = metadata !{i32 67, i32 0, metadata !23, null}
!61 = metadata !{i32 69, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !23, i32 68, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/ecache.c]
!63 = metadata !{i32 70, i32 0, metadata !62, null}
!64 = metadata !{i32 76, i32 0, metadata !23, null}
!65 = metadata !{i32 81, i32 0, metadata !24, null}
!66 = metadata !{i32 82, i32 0, metadata !24, null}
