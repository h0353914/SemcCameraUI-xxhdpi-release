package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    protected boolean mChecked;
    private boolean mCheckedSet;
    private boolean mDisableDependentsState;
    private CharSequence mSummaryOff;
    private CharSequence mSummaryOn;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context) {
        this(context, null);
    }

    @Override // android.support.v7.preference.Preference
    protected void onClick() {
        super.onClick();
        boolean z = !isChecked();
        if (callChangeListener(Boolean.valueOf(z))) {
            setChecked(z);
        }
    }

    public void setChecked(boolean z) {
        boolean z2 = this.mChecked != z;
        if (z2 || !this.mCheckedSet) {
            this.mChecked = z;
            this.mCheckedSet = true;
            persistBoolean(z);
            if (z2) {
                notifyDependencyChange(shouldDisableDependents());
                notifyChanged();
            }
        }
    }

    public boolean isChecked() {
        return this.mChecked;
    }

    @Override // android.support.v7.preference.Preference
    public boolean shouldDisableDependents() {
        return (this.mDisableDependentsState ? this.mChecked : !this.mChecked) || super.shouldDisableDependents();
    }

    public void setSummaryOn(CharSequence charSequence) {
        this.mSummaryOn = charSequence;
        if (isChecked()) {
            notifyChanged();
        }
    }

    public void setSummaryOn(int i) {
        setSummaryOn(getContext().getString(i));
    }

    public CharSequence getSummaryOn() {
        return this.mSummaryOn;
    }

    public void setSummaryOff(CharSequence charSequence) {
        this.mSummaryOff = charSequence;
        if (isChecked()) {
            return;
        }
        notifyChanged();
    }

    public void setSummaryOff(int i) {
        setSummaryOff(getContext().getString(i));
    }

    public CharSequence getSummaryOff() {
        return this.mSummaryOff;
    }

    public boolean getDisableDependentsState() {
        return this.mDisableDependentsState;
    }

    public void setDisableDependentsState(boolean z) {
        this.mDisableDependentsState = z;
    }

    @Override // android.support.v7.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // android.support.v7.preference.Preference
    protected void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = false;
        }
        setChecked(getPersistedBoolean(((Boolean) obj).booleanValue()));
    }

    protected void syncSummaryView(PreferenceViewHolder preferenceViewHolder) {
        syncSummaryView(preferenceViewHolder.findViewById(16908304));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void syncSummaryView(View view) {
        int i;
        if (!(view instanceof TextView)) {
            return;
        }
        TextView textView = (TextView) view;
        boolean z = true;
        if (this.mChecked && !TextUtils.isEmpty(this.mSummaryOn)) {
            textView.setText(this.mSummaryOn);
        } else {
            if (!this.mChecked && !TextUtils.isEmpty(this.mSummaryOff)) {
                textView.setText(this.mSummaryOff);
            }
            if (z) {
                CharSequence summary = getSummary();
                if (!TextUtils.isEmpty(summary)) {
                    textView.setText(summary);
                    z = false;
                }
            }
            i = z ? 8 : 0;
            if (i == textView.getVisibility()) {
                textView.setVisibility(i);
                return;
            }
            return;
        }
        z = false;
        if (z) {
        }
        if (z) {
        }
        if (i == textView.getVisibility()) {
        }
    }

    @Override // android.support.v7.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        TwoStatePreference$SavedState twoStatePreference$SavedState = new TwoStatePreference$SavedState(parcelableOnSaveInstanceState);
        twoStatePreference$SavedState.checked = isChecked();
        return twoStatePreference$SavedState;
    }

    @Override // android.support.v7.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(TwoStatePreference$SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        TwoStatePreference$SavedState twoStatePreference$SavedState = (TwoStatePreference$SavedState) parcelable;
        super.onRestoreInstanceState(twoStatePreference$SavedState.getSuperState());
        setChecked(twoStatePreference$SavedState.checked);
    }
}
