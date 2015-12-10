define internal void @_GLOBAL__sub_I_EtherApp_m.cc() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL24__EtherAppReq__class_reg, void ()* @_ZL25__EtherAppReq__class_codev) #8
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL24__EtherAppReq__class_reg to i8*), i8* @__dso_handle) #3
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL34__EtherAppReqDescriptor__class_reg, void ()* @_ZL35__EtherAppReqDescriptor__class_codev) #8
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL34__EtherAppReqDescriptor__class_reg to i8*), i8* @__dso_handle) #3
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL25__EtherAppResp__class_reg, void ()* @_ZL26__EtherAppResp__class_codev) #8
  %3 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL25__EtherAppResp__class_reg to i8*), i8* @__dso_handle) #3
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(%class.ExecuteOnStartup* @_ZL35__EtherAppRespDescriptor__class_reg, void ()* @_ZL36__EtherAppRespDescriptor__class_codev) #8
  %4 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%class.ExecuteOnStartup*)* @_ZN16ExecuteOnStartupD1Ev to void (i8*)*), i8* bitcast (%class.ExecuteOnStartup* @_ZL35__EtherAppRespDescriptor__class_reg to i8*), i8* @__dso_handle) #3
  ret void
}
