define internal void @_GLOBAL__sub_I_utils.cc() #7 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @llvm.dbg.value(metadata %class.MessageTracer* @_ZN13MessageTracer3trcE, i64 0, metadata !3607, metadata !4864) #5, !dbg !5024
  tail call void @llvm.dbg.value(metadata %class.MessageTracer* @_ZN13MessageTracer3trcE, i64 0, metadata !3604, metadata !4864) #5, !dbg !5027
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%class.MessageTracer* @_ZN13MessageTracer3trcE to i8*), i8 0, i64 16, i32 8, i1 false) #5, !dbg !5029
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.MessageTracer*)* @_ZN13MessageTracerD1Ev to void (i8*)*), i8* bitcast (%class.MessageTracer* @_ZN13MessageTracer3trcE to i8*), i8* @__dso_handle) #5, !dbg !5030
  ret void
}
