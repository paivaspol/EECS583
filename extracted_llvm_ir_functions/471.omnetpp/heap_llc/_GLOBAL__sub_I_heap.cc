define internal void @_GLOBAL__sub_I_heap.cc() #8 section "__TEXT,__StaticInit,regular,pure_instructions" {
  store i32 16384, i32* getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 1), align 8, !tbaa !2
  %1 = tail call i8* @malloc(i64 16384) #10
  store i8* %1, i8** getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 0), align 8, !tbaa !9
  %2 = icmp eq i8* %1, null
  %3 = zext i1 %2 to i8
  store i8 %3, i8* getelementptr inbounds (%class.MemManager* @_ZL10memManager, i64 0, i32 2), align 4, !tbaa !10
  %4 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.MemManager*)* @_ZN10MemManagerD1Ev to void (i8*)*), i8* bitcast (%class.MemManager* @_ZL10memManager to i8*), i8* @__dso_handle) #2
  ret void
}
