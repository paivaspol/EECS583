define internal void @_GLOBAL__sub_I_example.cc() #15 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ofstream"* @out_file, i64 0, metadata !8569, metadata !9465), !dbg !14719
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ios"* bitcast (%"class.std::__1::basic_ios.base"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2) to %"class.std::__1::basic_ios"*), i64 0, metadata !8572, metadata !9465), !dbg !14722
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_ostream"* bitcast (%"class.std::__1::basic_ofstream"* @out_file to %"class.std::__1::basic_ostream"*), i64 0, metadata !8578, metadata !9465), !dbg !14724
  tail call void @llvm.dbg.value(metadata i8** getelementptr inbounds ([4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1), i64 0, metadata !8579, metadata !9465), !dbg !14724
  store i64 ptrtoint (i8** getelementptr inbounds ([10 x i8*]* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, i64 3) to i64), i64* bitcast (%"class.std::__1::basic_ofstream"* @out_file to i64*), align 8, !dbg !14726, !tbaa !9470
  store i64 ptrtoint (i8** getelementptr inbounds ([10 x i8*]* @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE, i64 0, i64 8) to i64), i64* bitcast (%"class.std::__1::basic_ios.base"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2) to i64*), align 8, !dbg !14726, !tbaa !9470
  invoke void @_ZNSt3__18ios_base4initEPv(%"class.std::__1::ios_base"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2, i32 0), i8* bitcast (%"class.std::__1::basic_filebuf"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 1) to i8*)) #16
          to label %1 unwind label %2, !dbg !14727

; <label>:1                                       ; preds = %0
  store %"class.std::__1::basic_ostream"* null, %"class.std::__1::basic_ostream"** getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2, i32 1), align 8, !dbg !14730, !tbaa !14731
  store i32 -1, i32* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2, i32 2), align 8, !dbg !14732, !tbaa !14470
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 3) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 0, i32 0), align 8, !dbg !14733, !tbaa !9470
  store i32 (...)** bitcast (i8** getelementptr inbounds ([10 x i8*]* @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 8) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2, i32 0, i32 0), align 8, !dbg !14733, !tbaa !9470
  tail call void @llvm.dbg.value(metadata %"class.std::__1::basic_filebuf"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 1), i64 0, metadata !8587, metadata !9465), !dbg !14734
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev(%"class.std::__1::basic_filebuf"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 1)) #16
          to label %__cxx_global_var_init.exit unwind label %6, !dbg !14736

; <label>:2                                       ; preds = %0
  %3 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !14737
  %4 = extractvalue { i8*, i32 } %3, 0, !dbg !14737
  %5 = extractvalue { i8*, i32 } %3, 1, !dbg !14737
  br label %10, !dbg !14737

; <label>:6                                       ; preds = %1
  %7 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          cleanup, !dbg !14737
  %8 = extractvalue { i8*, i32 } %7, 0, !dbg !14737
  %9 = extractvalue { i8*, i32 } %7, 1, !dbg !14737
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ostream"* bitcast (%"class.std::__1::basic_ofstream"* @out_file to %"class.std::__1::basic_ostream"*), i8** getelementptr inbounds ([4 x i8*]* @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE, i64 0, i64 1)) #16
          to label %10 unwind label %14, !dbg !14738

; <label>:10                                      ; preds = %6, %2
  %.01.i.i = phi i8* [ %8, %6 ], [ %4, %2 ], !dbg !14740
  %.0.i.i = phi i32 [ %9, %6 ], [ %5, %2 ], !dbg !14740
  invoke void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(%"class.std::__1::basic_ios"* bitcast (%"class.std::__1::basic_ios.base"* getelementptr inbounds (%"class.std::__1::basic_ofstream"* @out_file, i64 0, i32 2) to %"class.std::__1::basic_ios"*)) #16
          to label %11 unwind label %14, !dbg !14738

; <label>:11                                      ; preds = %10
  %12 = insertvalue { i8*, i32 } undef, i8* %.01.i.i, 0, !dbg !14738
  %13 = insertvalue { i8*, i32 } %12, i32 %.0.i.i, 1, !dbg !14738
  resume { i8*, i32 } %13, !dbg !14738

; <label>:14                                      ; preds = %10, %6
  %15 = landingpad { i8*, i32 } personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*)
          catch i8* null, !dbg !14738
  %16 = extractvalue { i8*, i32 } %15, 0, !dbg !14738
  tail call void @__clang_call_terminate(i8* %16) #17, !dbg !14738
  unreachable, !dbg !14738

__cxx_global_var_init.exit:                       ; preds = %1
  %17 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__1::basic_ofstream"*)* @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev to void (i8*)*), i8* bitcast (%"class.std::__1::basic_ofstream"* @out_file to i8*), i8* @__dso_handle) #1, !dbg !14740
  ret void
}
