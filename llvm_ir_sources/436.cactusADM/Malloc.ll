; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.t_memhash = type { i64, i64, i8* }
%struct.t_memticket = type { i64 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [19 x i8] c"Allocation error! \00", align 1
@totmem = internal unnamed_addr global i64 0, align 8
@pastmem = internal unnamed_addr global i64 0, align 8
@memfileDB = internal global %struct.cHandledData* null, align 8
@.str1 = private unnamed_addr constant [10 x i8] c"ticket_%d\00", align 1
@n_tickets = internal unnamed_addr global i32 0, align 4
@ticketDB = internal global %struct.cHandledData* null, align 8
@.str2 = private unnamed_addr constant [63 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"CCTK_MemTicketCash: Cannot find ticket %d \0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"CCTK_Memstat: total: %lu  past: %lu  diff %+ld \0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/util/Malloc.c,v 1.15 2001/10/30 15:29:50 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_Malloc_c() #0 {
entry:
  ret i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), !dbg !111
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @CCTKi_Malloc(i64 %size, i32 %line, i8* %file) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !19), !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !20), !dbg !112
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !21), !dbg !112
  %add = add i64 %size, 40, !dbg !113
  %call = tail call noalias i8* @malloc(i64 %add) #7, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !33), !dbg !113
  %tobool = icmp eq i8* %call, null, !dbg !114
  br i1 %tobool, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !115, !tbaa !117
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %0), !dbg !115
  br label %if.end, !dbg !120

if.end:                                           ; preds = %entry, %if.then
  %ok = bitcast i8* %call to i64*, !dbg !121
  store i64 424242, i64* %ok, align 8, !dbg !121, !tbaa !122
  %size2 = getelementptr inbounds i8* %call, i64 8, !dbg !123
  %2 = bitcast i8* %size2 to i64*, !dbg !123
  store i64 %size, i64* %2, align 8, !dbg !123, !tbaa !122
  %tsize = getelementptr inbounds i8* %call, i64 16, !dbg !124
  %3 = bitcast i8* %tsize to i64*, !dbg !124
  store i64 %add, i64* %3, align 8, !dbg !124, !tbaa !122
  %line4 = getelementptr inbounds i8* %call, i64 24, !dbg !125
  %4 = bitcast i8* %line4 to i32*, !dbg !125
  store i32 %line, i32* %4, align 4, !dbg !125, !tbaa !126
  %file5 = getelementptr inbounds i8* %call, i64 32, !dbg !127
  %5 = bitcast i8* %file5 to i8**, !dbg !127
  store i8* %file, i8** %5, align 8, !dbg !127, !tbaa !117
  %6 = load i64* @totmem, align 8, !dbg !128, !tbaa !122
  store i64 %6, i64* @pastmem, align 8, !dbg !128, !tbaa !122
  %add6 = add i64 %6, %size, !dbg !129
  store i64 %add6, i64* @totmem, align 8, !dbg !129, !tbaa !122
  %add.ptr = getelementptr inbounds i8* %call, i64 40, !dbg !130
  ret i8* %add.ptr, !dbg !130
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_UpdateMemByFile(i32 %size, i32 %line, i8* %file) #1 {
entry:
  %memfile = alloca %struct.t_memhash*, align 8
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !39), !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !40), !dbg !131
  call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !41), !dbg !131
  call void @llvm.dbg.declare(metadata !{%struct.t_memhash** %memfile}, metadata !42), !dbg !132
  call void @llvm.dbg.value(metadata !133, i64 0, metadata !51), !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !40), !dbg !135
  %0 = load %struct.cHandledData** @memfileDB, align 8, !dbg !136, !tbaa !117
  %1 = bitcast %struct.t_memhash** %memfile to i8**, !dbg !136
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %file, i8** %1) #7, !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !50), !dbg !136
  %cmp = icmp sgt i32 %call, -1, !dbg !136
  br i1 %cmp, label %if.then, label %if.else7, !dbg !136

if.then:                                          ; preds = %entry
  %2 = load %struct.cHandledData** @memfileDB, align 8, !dbg !137, !tbaa !117
  %call2 = call i8* @Util_GetHandledData(%struct.cHandledData* %2, i32 %call) #7, !dbg !137
  %3 = bitcast i8* %call2 to %struct.t_memhash*, !dbg !137
  call void @llvm.dbg.value(metadata !{%struct.t_memhash* %3}, i64 0, metadata !42), !dbg !137
  store %struct.t_memhash* %3, %struct.t_memhash** %memfile, align 8, !dbg !137, !tbaa !117
  %tobool = icmp eq i8* %call2, null, !dbg !139
  br i1 %tobool, label %if.end22, label %if.then3, !dbg !139

if.then3:                                         ; preds = %if.then
  %conv = sext i32 %size to i64, !dbg !140
  %size4 = bitcast i8* %call2 to i64*, !dbg !140
  %4 = load i64* %size4, align 8, !dbg !140, !tbaa !122
  %add = add i64 %4, %conv, !dbg !140
  store i64 %add, i64* %size4, align 8, !dbg !140, !tbaa !122
  call void @llvm.dbg.value(metadata !{%struct.t_memhash** %memfile}, i64 0, metadata !42), !dbg !142
  %tsize = getelementptr inbounds i8* %call2, i64 8, !dbg !142
  %5 = bitcast i8* %tsize to i64*, !dbg !142
  %6 = load i64* %5, align 8, !dbg !142, !tbaa !122
  %add6 = add i64 %6, %conv, !dbg !142
  store i64 %add6, i64* %5, align 8, !dbg !142, !tbaa !122
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !143
  br label %if.end22, !dbg !144

if.else7:                                         ; preds = %entry
  %call8 = call noalias i8* @malloc(i64 24) #7, !dbg !145
  %7 = bitcast i8* %call8 to %struct.t_memhash*, !dbg !145
  call void @llvm.dbg.value(metadata !{%struct.t_memhash* %7}, i64 0, metadata !42), !dbg !145
  store %struct.t_memhash* %7, %struct.t_memhash** %memfile, align 8, !dbg !145, !tbaa !117
  %tobool9 = icmp eq i8* %call8, null, !dbg !147
  br i1 %tobool9, label %if.end22, label %if.then10, !dbg !147

if.then10:                                        ; preds = %if.else7
  call void @llvm.dbg.value(metadata !{%struct.t_memhash** %memfile}, i64 0, metadata !42), !dbg !148
  call void @llvm.dbg.value(metadata !{%struct.t_memhash** %memfile}, i64 0, metadata !42), !dbg !150
  %file18 = getelementptr inbounds i8* %call8, i64 16, !dbg !150
  %8 = bitcast i8* %file18 to i8**, !dbg !150
  store i8* %file, i8** %8, align 8, !dbg !150, !tbaa !117
  call void @llvm.dbg.value(metadata !{%struct.t_memhash** %memfile}, i64 0, metadata !42), !dbg !151
  %call19 = call i32 @Util_NewHandle(%struct.cHandledData** @memfileDB, i8* %file, i8* %call8) #7, !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !51), !dbg !151
  br label %if.end22, !dbg !152

if.end22:                                         ; preds = %if.else7, %if.then, %if.then10, %if.then3
  %retval1.0 = phi i32 [ 0, %if.then3 ], [ %call19, %if.then10 ], [ -3, %if.then ], [ -1, %if.else7 ]
  ret i32 %retval1.0, !dbg !153
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #4

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_MemTicketRequest() #1 {
entry:
  %tmem = alloca %struct.t_memticket*, align 8
  %tname = alloca [20 x i8], align 16
  call void @llvm.dbg.declare(metadata !{%struct.t_memticket** %tmem}, metadata !57), !dbg !154
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %tname}, metadata !63), !dbg !155
  %arraydecay = getelementptr inbounds [20 x i8]* %tname, i64 0, i64 0, !dbg !156
  %0 = load i32* @n_tickets, align 4, !dbg !156, !tbaa !126
  %inc = add nsw i32 %0, 1, !dbg !156
  store i32 %inc, i32* @n_tickets, align 4, !dbg !156, !tbaa !126
  %call = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i32 %0) #7, !dbg !156
  %1 = load %struct.cHandledData** @ticketDB, align 8, !dbg !157, !tbaa !117
  %2 = bitcast %struct.t_memticket** %tmem to i8**, !dbg !157
  %call2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %arraydecay, i8** %2) #7, !dbg !157
  %cmp = icmp sgt i32 %call2, -1, !dbg !157
  br i1 %cmp, label %if.end9, label %if.else, !dbg !157

if.else:                                          ; preds = %entry
  %call3 = call noalias i8* @malloc(i64 8) #7, !dbg !158
  %3 = bitcast i8* %call3 to %struct.t_memticket*, !dbg !158
  call void @llvm.dbg.value(metadata !{%struct.t_memticket* %3}, i64 0, metadata !57), !dbg !158
  store %struct.t_memticket* %3, %struct.t_memticket** %tmem, align 8, !dbg !158, !tbaa !117
  %tobool = icmp eq i8* %call3, null, !dbg !160
  br i1 %tobool, label %if.end9, label %if.then4, !dbg !160

if.then4:                                         ; preds = %if.else
  %4 = load i64* @totmem, align 8, !dbg !161, !tbaa !122
  call void @llvm.dbg.value(metadata !{%struct.t_memticket** %tmem}, i64 0, metadata !57), !dbg !162
  %size = bitcast i8* %call3 to i64*, !dbg !162
  store i64 %4, i64* %size, align 8, !dbg !162, !tbaa !122
  call void @llvm.dbg.value(metadata !{%struct.t_memticket** %tmem}, i64 0, metadata !57), !dbg !164
  %call7 = call i32 @Util_NewHandle(%struct.cHandledData** @ticketDB, i8* %arraydecay, i8* %call3) #7, !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !56), !dbg !164
  br label %if.end9, !dbg !165

if.end9:                                          ; preds = %if.else, %entry, %if.then4
  %this_ticket.0 = phi i32 [ %call7, %if.then4 ], [ -3, %entry ], [ -2, %if.else ]
  ret i32 %this_ticket.0, !dbg !166
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly uwtable
define i64 @CCTK_TotalMemory() #5 {
entry:
  %0 = load i64* @totmem, align 8, !dbg !167, !tbaa !122
  ret i64 %0, !dbg !167
}

; Function Attrs: nounwind optsize uwtable
define i64 @CCTK_MemTicketCash(i32 %this_ticket) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_ticket}, i64 0, metadata !72), !dbg !168
  %0 = load %struct.cHandledData** @ticketDB, align 8, !dbg !169, !tbaa !117
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_ticket) #7, !dbg !169
  %tobool = icmp eq i8* %call, null, !dbg !170
  br i1 %tobool, label %if.else, label %if.then, !dbg !170

if.then:                                          ; preds = %entry
  %size = bitcast i8* %call to i64*, !dbg !171
  %1 = load i64* %size, align 8, !dbg !171, !tbaa !122
  tail call void @llvm.dbg.value(metadata !{i64 %1}, i64 0, metadata !74), !dbg !171
  %2 = load i64* @totmem, align 8, !dbg !173, !tbaa !122
  %sub = sub i64 %2, %1, !dbg !174
  tail call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !73), !dbg !174
  br label %if.end, !dbg !175

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 474, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 %this_ticket) #7, !dbg !176
  tail call void @llvm.dbg.value(metadata !178, i64 0, metadata !73), !dbg !179
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tdiff.0 = phi i64 [ %sub, %if.then ], [ 666, %if.else ]
  ret i64 %tdiff.0, !dbg !180
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_MemTicketDelete(i32 %this_ticket) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %this_ticket}, i64 0, metadata !80), !dbg !181
  %0 = load %struct.cHandledData** @ticketDB, align 8, !dbg !182, !tbaa !117
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %this_ticket) #7, !dbg !182
  %tobool = icmp eq i8* %call, null, !dbg !183
  br i1 %tobool, label %if.end, label %if.then, !dbg !183

if.then:                                          ; preds = %entry
  %1 = load %struct.cHandledData** @ticketDB, align 8, !dbg !184, !tbaa !117
  %call1 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %1, i32 %this_ticket) #7, !dbg !184
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !186
  br label %if.end, !dbg !187

if.end:                                           ; preds = %entry, %if.then
  %ret_val.0 = phi i32 [ 0, %if.then ], [ -1, %entry ]
  ret i32 %ret_val.0, !dbg !188
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @CCTK_MemStat() #1 {
entry:
  %0 = load i64* @totmem, align 8, !dbg !189, !tbaa !122
  %1 = load i64* @pastmem, align 8, !dbg !189, !tbaa !122
  %sub = sub i64 %0, %1, !dbg !189
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i64 %0, i64 %1, i64 %sub) #7, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !89, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !35, metadata !52, metadata !67, metadata !76, metadata !83, metadata !86}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_Malloc_c", metadata !"CCTKi_version_util_Malloc_c", metadata !"", i32 52, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_Malloc_c, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [CCTKi_version_util_Malloc_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_Malloc", metadata !"CCTKi_Malloc", metadata !"", i32 131, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i64, i32, i8*)* @CCTKi_Malloc, null, null, metadata !18, i32 132} ; [ DW_TAG_subprogram ] [line 131] [def] [scope 132] [CCTKi_Malloc]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !17, metadata !8}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!16 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !33}
!19 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777347, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 131]
!20 = metadata !{i32 786689, metadata !11, metadata !"line", metadata !5, i32 33554563, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 131]
!21 = metadata !{i32 786689, metadata !11, metadata !"file", metadata !5, i32 50331779, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 131]
!22 = metadata !{i32 786688, metadata !11, metadata !"info", metadata !5, i32 133, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 133]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mallocinfo]
!24 = metadata !{i32 786454, metadata !1, null, metadata !"t_mallocinfo", i32 78, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [t_mallocinfo] [line 78, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 71, i64 320, i64 64, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 71, size 320, align 64, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !32}
!27 = metadata !{i32 786445, metadata !1, metadata !25, metadata !"ok", i32 73, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [ok] [line 73, size 64, align 64, offset 0] [from long unsigned int]
!28 = metadata !{i32 786445, metadata !1, metadata !25, metadata !"size", i32 74, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [size] [line 74, size 64, align 64, offset 64] [from long unsigned int]
!29 = metadata !{i32 786445, metadata !1, metadata !25, metadata !"tsize", i32 75, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [tsize] [line 75, size 64, align 64, offset 128] [from long unsigned int]
!30 = metadata !{i32 786445, metadata !1, metadata !25, metadata !"line", i32 76, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [line] [line 76, size 32, align 32, offset 192] [from unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !1, metadata !25, metadata !"file", i32 77, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [file] [line 77, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786688, metadata !11, metadata !"data", metadata !5, i32 134, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 134]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_UpdateMemByFile", metadata !"CCTKi_UpdateMemByFile", metadata !"", i32 346, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @CCTKi_UpdateMemByFile, null, null, metadata !38, i32 347} ; [ DW_TAG_subprogram ] [line 346] [def] [scope 347] [CCTKi_UpdateMemByFile]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !17, metadata !17, metadata !17, metadata !8}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !50, metadata !51}
!39 = metadata !{i32 786689, metadata !35, metadata !"size", metadata !5, i32 16777562, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 346]
!40 = metadata !{i32 786689, metadata !35, metadata !"line", metadata !5, i32 33554778, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 346]
!41 = metadata !{i32 786689, metadata !35, metadata !"file", metadata !5, i32 50331994, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 346]
!42 = metadata !{i32 786688, metadata !35, metadata !"memfile", metadata !5, i32 348, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memfile] [line 348]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_memhash]
!44 = metadata !{i32 786454, metadata !1, null, metadata !"t_memhash", i32 64, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [t_memhash] [line 64, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 59, i64 192, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 192, align 64, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !49}
!47 = metadata !{i32 786445, metadata !1, metadata !45, metadata !"size", i32 61, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [size] [line 61, size 64, align 64, offset 0] [from long unsigned int]
!48 = metadata !{i32 786445, metadata !1, metadata !45, metadata !"tsize", i32 62, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [tsize] [line 62, size 64, align 64, offset 64] [from long unsigned int]
!49 = metadata !{i32 786445, metadata !1, metadata !45, metadata !"file", i32 63, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [file] [line 63, size 64, align 64, offset 128] [from ]
!50 = metadata !{i32 786688, metadata !35, metadata !"handle", metadata !5, i32 349, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 349]
!51 = metadata !{i32 786688, metadata !35, metadata !"retval", metadata !5, i32 349, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 349]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MemTicketRequest", metadata !"CCTK_MemTicketRequest", metadata !"", i32 413, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_MemTicketRequest, null, null, metadata !55, i32 414} ; [ DW_TAG_subprogram ] [line 413] [def] [scope 414] [CCTK_MemTicketRequest]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !17}
!55 = metadata !{metadata !56, metadata !57, metadata !63}
!56 = metadata !{i32 786688, metadata !52, metadata !"this_ticket", metadata !5, i32 415, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [this_ticket] [line 415]
!57 = metadata !{i32 786688, metadata !52, metadata !"tmem", metadata !5, i32 416, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmem] [line 416]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_memticket]
!59 = metadata !{i32 786454, metadata !1, null, metadata !"t_memticket", i32 88, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [t_memticket] [line 88, size 0, align 0, offset 0] [from ]
!60 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 85, i64 64, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 85, size 64, align 64, offset 0] [from ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786445, metadata !1, metadata !60, metadata !"size", i32 87, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [size] [line 87, size 64, align 64, offset 0] [from long unsigned int]
!63 = metadata !{i32 786688, metadata !52, metadata !"tname", metadata !5, i32 417, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tname] [line 417]
!64 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !10, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MemTicketCash", metadata !"CCTK_MemTicketCash", metadata !"", i32 459, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32)* @CCTK_MemTicketCash, null, null, metadata !71, i32 460} ; [ DW_TAG_subprogram ] [line 459] [def] [scope 460] [CCTK_MemTicketCash]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !17}
!70 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75}
!72 = metadata !{i32 786689, metadata !67, metadata !"this_ticket", metadata !5, i32 16777675, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_ticket] [line 459]
!73 = metadata !{i32 786688, metadata !67, metadata !"tdiff", metadata !5, i32 461, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tdiff] [line 461]
!74 = metadata !{i32 786688, metadata !67, metadata !"tsize", metadata !5, i32 462, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tsize] [line 462]
!75 = metadata !{i32 786688, metadata !67, metadata !"tmem", metadata !5, i32 463, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmem] [line 463]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MemTicketDelete", metadata !"CCTK_MemTicketDelete", metadata !"", i32 498, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_MemTicketDelete, null, null, metadata !79, i32 499} ; [ DW_TAG_subprogram ] [line 498] [def] [scope 499] [CCTK_MemTicketDelete]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !17, metadata !17}
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786689, metadata !76, metadata !"this_ticket", metadata !5, i32 16777714, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_ticket] [line 498]
!81 = metadata !{i32 786688, metadata !76, metadata !"ret_val", metadata !5, i32 500, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret_val] [line 500]
!82 = metadata !{i32 786688, metadata !76, metadata !"tmem", metadata !5, i32 501, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmem] [line 501]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MemStat", metadata !"CCTK_MemStat", metadata !"", i32 534, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTK_MemStat, null, null, metadata !2, i32 535} ; [ DW_TAG_subprogram ] [line 534] [def] [scope 535] [CCTK_MemStat]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{null}
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_TotalMemory", metadata !"CCTK_TotalMemory", metadata !"", i32 555, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 ()* @CCTK_TotalMemory, null, null, metadata !2, i32 556} ; [ DW_TAG_subprogram ] [line 555] [def] [scope 556] [CCTK_TotalMemory]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !16}
!89 = metadata !{metadata !90, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110}
!90 = metadata !{i32 786484, i32 0, null, metadata !"ticketDB", metadata !"ticketDB", metadata !"", metadata !5, i32 95, metadata !91, i32 1, i32 1, %struct.cHandledData** @ticketDB, null} ; [ DW_TAG_variable ] [ticketDB] [line 95] [local] [def]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!92 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!93 = metadata !{i32 786451, metadata !94, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !95, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!94 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!95 = metadata !{metadata !96, metadata !104, metadata !105}
!96 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!98 = metadata !{i32 786454, metadata !94, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!99 = metadata !{i32 786451, metadata !94, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !103}
!101 = metadata !{i32 786445, metadata !94, metadata !99, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!102 = metadata !{i32 786445, metadata !94, metadata !99, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!103 = metadata !{i32 786445, metadata !94, metadata !99, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!104 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!105 = metadata !{i32 786445, metadata !94, metadata !93, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!106 = metadata !{i32 786484, i32 0, null, metadata !"n_tickets", metadata !"n_tickets", metadata !"", metadata !5, i32 98, metadata !17, i32 1, i32 1, i32* @n_tickets, null} ; [ DW_TAG_variable ] [n_tickets] [line 98] [local] [def]
!107 = metadata !{i32 786484, i32 0, null, metadata !"memfileDB", metadata !"memfileDB", metadata !"", metadata !5, i32 96, metadata !91, i32 1, i32 1, %struct.cHandledData** @memfileDB, null} ; [ DW_TAG_variable ] [memfileDB] [line 96] [local] [def]
!108 = metadata !{i32 786484, i32 0, null, metadata !"pastmem", metadata !"pastmem", metadata !"", metadata !5, i32 101, metadata !16, i32 1, i32 1, i64* @pastmem, null} ; [ DW_TAG_variable ] [pastmem] [line 101] [local] [def]
!109 = metadata !{i32 786484, i32 0, null, metadata !"totmem", metadata !"totmem", metadata !"", metadata !5, i32 100, metadata !16, i32 1, i32 1, i64* @totmem, null} ; [ DW_TAG_variable ] [totmem] [line 100] [local] [def]
!110 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 50, metadata !8, i32 1, i32 1, null, null}
!111 = metadata !{i32 52, i32 0, metadata !4, null}
!112 = metadata !{i32 131, i32 0, metadata !11, null}
!113 = metadata !{i32 136, i32 0, metadata !11, null}
!114 = metadata !{i32 137, i32 0, metadata !11, null}
!115 = metadata !{i32 139, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !11, i32 138, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!117 = metadata !{metadata !"any pointer", metadata !118}
!118 = metadata !{metadata !"omnipotent char", metadata !119}
!119 = metadata !{metadata !"Simple C/C++ TBAA"}
!120 = metadata !{i32 140, i32 0, metadata !116, null}
!121 = metadata !{i32 142, i32 0, metadata !11, null}
!122 = metadata !{metadata !"long", metadata !118}
!123 = metadata !{i32 143, i32 0, metadata !11, null}
!124 = metadata !{i32 144, i32 0, metadata !11, null}
!125 = metadata !{i32 145, i32 0, metadata !11, null}
!126 = metadata !{metadata !"int", metadata !118}
!127 = metadata !{i32 146, i32 0, metadata !11, null}
!128 = metadata !{i32 148, i32 0, metadata !11, null}
!129 = metadata !{i32 149, i32 0, metadata !11, null}
!130 = metadata !{i32 165, i32 0, metadata !11, null}
!131 = metadata !{i32 346, i32 0, metadata !35, null}
!132 = metadata !{i32 348, i32 0, metadata !35, null}
!133 = metadata !{i32 -1}
!134 = metadata !{i32 349, i32 0, metadata !35, null}
!135 = metadata !{i32 353, i32 0, metadata !35, null}
!136 = metadata !{i32 355, i32 0, metadata !35, null}
!137 = metadata !{i32 357, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !35, i32 356, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!139 = metadata !{i32 360, i32 0, metadata !138, null}
!140 = metadata !{i32 362, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !138, i32 361, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!142 = metadata !{i32 363, i32 0, metadata !141, null}
!143 = metadata !{i32 364, i32 0, metadata !141, null}
!144 = metadata !{i32 365, i32 0, metadata !141, null}
!145 = metadata !{i32 374, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !35, i32 372, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!147 = metadata !{i32 375, i32 0, metadata !146, null}
!148 = metadata !{i32 378, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !146, i32 376, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!150 = metadata !{i32 379, i32 0, metadata !149, null}
!151 = metadata !{i32 380, i32 0, metadata !149, null}
!152 = metadata !{i32 381, i32 0, metadata !149, null}
!153 = metadata !{i32 387, i32 0, metadata !35, null}
!154 = metadata !{i32 416, i32 0, metadata !52, null}
!155 = metadata !{i32 417, i32 0, metadata !52, null}
!156 = metadata !{i32 419, i32 0, metadata !52, null}
!157 = metadata !{i32 421, i32 0, metadata !52, null}
!158 = metadata !{i32 427, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !52, i32 426, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!160 = metadata !{i32 429, i32 0, metadata !159, null}
!161 = metadata !{i32 557, i32 0, metadata !86, metadata !162}
!162 = metadata !{i32 431, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !159, i32 430, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!164 = metadata !{i32 432, i32 0, metadata !163, null}
!165 = metadata !{i32 433, i32 0, metadata !163, null}
!166 = metadata !{i32 439, i32 0, metadata !52, null}
!167 = metadata !{i32 557, i32 0, metadata !86, null}
!168 = metadata !{i32 459, i32 0, metadata !67, null}
!169 = metadata !{i32 465, i32 0, metadata !67, null}
!170 = metadata !{i32 467, i32 0, metadata !67, null}
!171 = metadata !{i32 469, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !67, i32 468, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!173 = metadata !{i32 557, i32 0, metadata !86, metadata !174}
!174 = metadata !{i32 470, i32 0, metadata !172, null}
!175 = metadata !{i32 471, i32 0, metadata !172, null}
!176 = metadata !{i32 474, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !67, i32 473, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!178 = metadata !{i64 666}
!179 = metadata !{i32 476, i32 0, metadata !177, null}
!180 = metadata !{i32 478, i32 0, metadata !67, null}
!181 = metadata !{i32 498, i32 0, metadata !76, null}
!182 = metadata !{i32 503, i32 0, metadata !76, null}
!183 = metadata !{i32 505, i32 0, metadata !76, null}
!184 = metadata !{i32 507, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !76, i32 506, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c]
!186 = metadata !{i32 508, i32 0, metadata !185, null}
!187 = metadata !{i32 509, i32 0, metadata !185, null}
!188 = metadata !{i32 514, i32 0, metadata !76, null}
!189 = metadata !{i32 536, i32 0, metadata !83, null}
!190 = metadata !{i32 538, i32 0, metadata !83, null}
