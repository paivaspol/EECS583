define internal void @_GLOBAL__sub_I_EtherHost_n.cc() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL19__EtherHost__if_reg, void ()* @_ZL20__EtherHost__if_codev) #9, !dbg !5666
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL19__EtherHost__if_reg to i8*), i8* @__dso_handle) #2, !dbg !5666
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL20__EtherHost__mod_reg, void ()* @_ZL21__EtherHost__mod_codev) #9, !dbg !5668
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL20__EtherHost__mod_reg to i8*), i8* @__dso_handle) #2, !dbg !5668
  ret void
}
