define internal void @_GLOBAL__sub_I_heap.cc() #8 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @llvm.dbg.value(metadata %class.MemManager* @_ZL10memManager, i64 0, metadata !47, metadata !259) #2, !dbg !384
  tail call void @llvm.dbg.value(metadata i32 16384, i64 0, metadata !48, metadata !259) #2, !dbg !387
  tail call void @llvm.dbg.value(metadata %class.MemManager* @_ZL10memManager, i64 0, metadata !42, metadata !259) #2, !dbg !388
  tail call void @llvm.dbg.value(metadata i32 16384, i64 0, metadata !44, metadata !259) #2, !dbg !390
  store i32 16384, i32* getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 1), align 8, !dbg !391, !tbaa !265
  %1 = tail call i8* @malloc(i64 16384) #11, !dbg !392
  store i8* %1, i8** getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 0), align 8, !dbg !393, !tbaa !276
  %2 = icmp eq i8* %1, null, !dbg !394
  %3 = zext i1 %2 to i8, !dbg !395
  store i8 %3, i8* getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 2), align 4, !dbg !395, !tbaa !280
  %4 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.MemManager*)* @_ZN10MemManagerD1Ev to void (i8*)*), i8* bitcast (%class.MemManager* @_ZL10memManager to i8*), i8* @__dso_handle) #2, !dbg !396
  ret void
}
