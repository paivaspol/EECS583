define internal void @_GLOBAL__sub_I_EtherSwitch_n.cc() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL21__EtherSwitch__if_reg, void ()* @_ZL22__EtherSwitch__if_codev) #9, !dbg !5582
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL21__EtherSwitch__if_reg to i8*), i8* @__dso_handle) #2, !dbg !5582
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL22__EtherSwitch__mod_reg, void ()* @_ZL23__EtherSwitch__mod_codev) #9, !dbg !5584
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL22__EtherSwitch__mod_reg to i8*), i8* @__dso_handle) #2, !dbg !5584
  ret void
}
