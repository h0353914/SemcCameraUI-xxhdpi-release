package com.sonyericsson.android.camera.configuration.parameters;

/* JADX INFO: loaded from: classes.dex */
class UserSettingValueHolder$NormalState extends UserSettingValueHolder<T>.UserSettingValueHolder$ParameterState {
    final /* synthetic */ UserSettingValueHolder this$0;

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public void applyCurrentValue() {
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public boolean reset() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSettingValueHolder$NormalState(UserSettingValueHolder userSettingValueHolder) {
        super(userSettingValueHolder);
        this.this$0 = userSettingValueHolder;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UserSettingValueHolder$NormalState(UserSettingValueHolder userSettingValueHolder, T t, T t2, T t3) {
        super(userSettingValueHolder, t, t2, t3);
        this.this$0 = userSettingValueHolder;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)Z */
    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public boolean forceChange(UserSettingValue userSettingValue) {
        UserSettingValueHolder.access$102(this.this$0, new UserSettingValueHolder$ForceChangedState(this.this$0, userSettingValue, this.this$0.get(), null));
        UserSettingValueHolder.access$002(this.this$0, true);
        return true;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public void applyRecommendedValue(UserSettingValue userSettingValue) {
        UserSettingValueHolder.access$102(this.this$0, new UserSettingValueHolder$ForceChangedState(this.this$0, userSettingValue, this.this$0.get(), userSettingValue));
        UserSettingValueHolder.access$002(this.this$0, true);
    }
}
