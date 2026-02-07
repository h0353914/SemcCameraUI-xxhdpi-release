package android.support.v7.preference;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class PreferenceGroupAdapter$PreferenceLayout {
    String mName;
    int mResId;
    int mWidgetResId;

    PreferenceGroupAdapter$PreferenceLayout() {
    }

    PreferenceGroupAdapter$PreferenceLayout(PreferenceGroupAdapter$PreferenceLayout preferenceGroupAdapter$PreferenceLayout) {
        this.mResId = preferenceGroupAdapter$PreferenceLayout.mResId;
        this.mWidgetResId = preferenceGroupAdapter$PreferenceLayout.mWidgetResId;
        this.mName = preferenceGroupAdapter$PreferenceLayout.mName;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PreferenceGroupAdapter$PreferenceLayout)) {
            return false;
        }
        PreferenceGroupAdapter$PreferenceLayout preferenceGroupAdapter$PreferenceLayout = (PreferenceGroupAdapter$PreferenceLayout) obj;
        return this.mResId == preferenceGroupAdapter$PreferenceLayout.mResId && this.mWidgetResId == preferenceGroupAdapter$PreferenceLayout.mWidgetResId && TextUtils.equals(this.mName, preferenceGroupAdapter$PreferenceLayout.mName);
    }

    public int hashCode() {
        return (31 * (((527 + this.mResId) * 31) + this.mWidgetResId)) + this.mName.hashCode();
    }
}
