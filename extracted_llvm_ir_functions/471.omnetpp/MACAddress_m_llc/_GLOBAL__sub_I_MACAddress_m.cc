define internal void @_GLOBAL__sub_I_MACAddress_m.cc() #4 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL33__MACAddressDescriptor__class_reg, void ()* @_ZL34__MACAddressDescriptor__class_codev) #10, !dbg !3336
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL33__MACAddressDescriptor__class_reg to i8*), i8* @__dso_handle) #5, !dbg !3336
  ret void
}
