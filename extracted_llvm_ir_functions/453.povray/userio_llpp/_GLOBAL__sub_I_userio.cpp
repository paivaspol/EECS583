define internal void @_GLOBAL__sub_I_userio.cpp() #9 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @llvm.dbg.value(metadata %"class.pov::DebugTextStreamBuffer"* @_ZN3pov20Debug_Message_BufferE, i64 0, metadata !471, metadata !1132), !dbg !1618
  tail call void @llvm.dbg.value(metadata %"class.pov::DebugTextStreamBuffer"* @_ZN3pov20Debug_Message_BufferE, i64 0, metadata !467, metadata !1132), !dbg !1621
  tail call void @_ZN8pov_base16TextStreamBufferC2Emj(%"class.pov_base::TextStreamBuffer"* getelementptr inbounds (%"class.pov::DebugTextStreamBuffer"* @_ZN3pov20Debug_Message_BufferE, i64 0, i32 0), i64 8192, i32 160) #10, !dbg !1623
  store i32 (...)** bitcast (i8** getelementptr inbounds ([7 x i8*]* @_ZTVN3pov21DebugTextStreamBufferE, i64 0, i64 2) to i32 (...)**), i32 (...)*** getelementptr inbounds (%"class.pov::DebugTextStreamBuffer"* @_ZN3pov20Debug_Message_BufferE, i64 0, i32 0, i32 0), align 8, !dbg !1624, !tbaa !1138
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.pov::DebugTextStreamBuffer"*)* @_ZN3pov21DebugTextStreamBufferD1Ev to void (i8*)*), i8* bitcast (%"class.pov::DebugTextStreamBuffer"* @_ZN3pov20Debug_Message_BufferE to i8*), i8* @__dso_handle) #1, !dbg !1625
  ret void
}
