package android.support.v14.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.preference.PreferenceViewHolder;
import android.support.v7.preference.TwoStatePreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;

/* JADX INFO: loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final SwitchPreference$Listener mListener;
    private CharSequence mSwitchOff;
    private CharSequence mSwitchOn;

    public SwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mListener = new SwitchPreference$Listener(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.preference.R$styleable.SwitchPreference, i, i2);
        setSummaryOn(TypedArrayUtils.getString(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.SwitchPreference_summaryOn, android.support.v7.preference.R$styleable.SwitchPreference_android_summaryOn));
        setSummaryOff(TypedArrayUtils.getString(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.SwitchPreference_summaryOff, android.support.v7.preference.R$styleable.SwitchPreference_android_summaryOff));
        setSwitchTextOn(TypedArrayUtils.getString(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.SwitchPreference_switchTextOn, android.support.v7.preference.R$styleable.SwitchPreference_android_switchTextOn));
        setSwitchTextOff(TypedArrayUtils.getString(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.SwitchPreference_switchTextOff, android.support.v7.preference.R$styleable.SwitchPreference_android_switchTextOff));
        setDisableDependentsState(TypedArrayUtils.getBoolean(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.SwitchPreference_disableDependentsState, android.support.v7.preference.R$styleable.SwitchPreference_android_disableDependentsState, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, android.support.v7.preference.R$attr.switchPreferenceStyle, 16843629));
    }

    public SwitchPreference(Context context) {
        this(context, null);
    }

    @Override // android.support.v7.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        syncSwitchView(preferenceViewHolder.findViewById(16908352));
        syncSummaryView(preferenceViewHolder);
    }

    public void setSwitchTextOn(CharSequence charSequence) {
        this.mSwitchOn = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOff(CharSequence charSequence) {
        this.mSwitchOff = charSequence;
        notifyChanged();
    }

    public void setSwitchTextOn(int i) {
        setSwitchTextOn(getContext().getString(i));
    }

    public void setSwitchTextOff(int i) {
        setSwitchTextOff(getContext().getString(i));
    }

    public CharSequence getSwitchTextOn() {
        return this.mSwitchOn;
    }

    public CharSequence getSwitchTextOff() {
        return this.mSwitchOff;
    }

    @Override // android.support.v7.preference.Preference
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    protected void performClick(View view) {
        super.performClick(view);
        syncViewIfAccessibilityEnabled(view);
    }

    private void syncViewIfAccessibilityEnabled(View view) {
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            syncSwitchView(view.findViewById(16908352));
            syncSummaryView(view.findViewById(16908304));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void syncSwitchView(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.mChecked);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.mSwitchOn);
            r4.setTextOff(this.mSwitchOff);
            r4.setOnCheckedChangeListener(this.mListener);
        }
    }
}
