define internal void @_GLOBAL__sub_I_EtherEncap.cc() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL21__EtherEncap__mod_reg, void ()* @_ZL22__EtherEncap__mod_codev) #10, !dbg !5911
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL21__EtherEncap__mod_reg to i8*), i8* @__dso_handle) #2, !dbg !5911
  ret void
}
