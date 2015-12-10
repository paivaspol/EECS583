define internal void @_GLOBAL__sub_I_MACRelayUnitNP_n.cc() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL24__MACRelayUnitNP__if_reg, void ()* @_ZL25__MACRelayUnitNP__if_codev) #4
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL24__MACRelayUnitNP__if_reg to i8*), i8* @__dso_handle) #2
  ret void
}
