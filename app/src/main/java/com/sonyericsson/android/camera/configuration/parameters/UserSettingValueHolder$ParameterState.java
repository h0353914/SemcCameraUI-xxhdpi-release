package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.util.CamLog;

abstract class UserSettingValueHolder$ParameterState {

    /* JADX INFO: Incorrect field signature: TT; */
    protected UserSettingValue mCurrentValue;

    /* JADX INFO: Incorrect field signature: TT; */
    protected UserSettingValue mOriginalValue;

    /* JADX INFO: Incorrect field signature: TT; */
    protected UserSettingValue mRecommendedValue;
    final /* synthetic */ UserSettingValueHolder this$0;

    public abstract void applyCurrentValue();

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    public abstract void applyRecommendedValue(UserSettingValue userSettingValue);

    /* JADX WARN: Incorrect types in method signature: (TT;)Z */
    public abstract boolean forceChange(UserSettingValue userSettingValue);

    public abstract boolean reset();

    public UserSettingValueHolder$ParameterState(UserSettingValueHolder userSettingValueHolder) {
        this.this$0 = userSettingValueHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserSettingValueHolder$ParameterState(UserSettingValueHolder userSettingValueHolder, T t, T t2, T t3) {
        this.this$0 = userSettingValueHolder;
        setCurrentValue(t);
        setOriginalValue(t2);
        setRecommendedValue(t3);
    }

    public void dumpStackTrace() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        CamLog.d("## dump stack trace ...");
        for (int i = 1; i < stackTrace.length; i++) {
            CamLog.d("trace:" + stackTrace[i].getClassName() + "#" + stackTrace[i].getMethodName());
        }
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    public final void setCurrentValue(UserSettingValue userSettingValue) {
        if (this.mCurrentValue != userSettingValue) {
            UserSettingValueHolder.access$002(this.this$0, true);
        }
        if (userSettingValue == null) {
            CamLog.d("[" + getClass().getSimpleName() + "] setCurrentValue() mCurrentValue: null");
            dumpStackTrace();
        }
        this.mCurrentValue = userSettingValue;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TT; */
    public final UserSettingValue getCurrentValue() {
        return this.mCurrentValue;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TT; */
    public final UserSettingValue getOriginalValue() {
        return this.mOriginalValue;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    public final void setOriginalValue(UserSettingValue userSettingValue) {
        this.mOriginalValue = userSettingValue;
    }

    /* JADX WARN: Incorrect return type in method signature: ()TT; */
    public final UserSettingValue getRecommendedValue() {
        return this.mRecommendedValue;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    public final void setRecommendedValue(UserSettingValue userSettingValue) {
        this.mRecommendedValue = userSettingValue;
    }
}
