package com.sonyericsson.android.camera.configuration.parameters;

/* JADX INFO: loaded from: classes.dex */
class UserSettingValueHolder$ForceChangedState extends UserSettingValueHolder<T>.UserSettingValueHolder$ParameterState {
    final /* synthetic */ UserSettingValueHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSettingValueHolder$ForceChangedState(UserSettingValueHolder userSettingValueHolder) {
        super(userSettingValueHolder);
        this.this$0 = userSettingValueHolder;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UserSettingValueHolder$ForceChangedState(UserSettingValueHolder userSettingValueHolder, T t, T t2, T t3) {
        super(userSettingValueHolder, t, t2, t3);
        this.this$0 = userSettingValueHolder;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)Z */
    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public boolean forceChange(UserSettingValue userSettingValue) {
        setCurrentValue(userSettingValue);
        return false;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public boolean reset() {
        UserSettingValueHolder.access$102(this.this$0, new UserSettingValueHolder$NormalState(this.this$0, this.mCurrentValue, null, null));
        UserSettingValueHolder.access$002(this.this$0, true);
        return true;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public void applyRecommendedValue(UserSettingValue userSettingValue) {
        setCurrentValue(userSettingValue);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.UserSettingValueHolder$ParameterState
    public void applyCurrentValue() {
        if (this.mRecommendedValue != null) {
            setCurrentValue(this.mRecommendedValue);
        }
    }
}
