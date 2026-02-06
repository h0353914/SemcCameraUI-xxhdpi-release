package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.support.v4.content.res.TypedArrayUtils;
import android.text.TextUtils;
import android.util.AttributeSet;

public class EditTextPreference extends DialogPreference {
    private String mText;

    public EditTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, R$attr.editTextPreferenceStyle, 16842898));
    }

    public EditTextPreference(Context context) {
        this(context, null);
    }

    public void setText(String str) {
        boolean zShouldDisableDependents = shouldDisableDependents();
        this.mText = str;
        persistString(str);
        boolean zShouldDisableDependents2 = shouldDisableDependents();
        if (zShouldDisableDependents2 != zShouldDisableDependents) {
            notifyDependencyChange(zShouldDisableDependents2);
        }
    }

    public String getText() {
        return this.mText;
    }

    @Override // android.support.v7.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // android.support.v7.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setText(getPersistedString((String) obj));
    }

    @Override // android.support.v7.preference.Preference
    public boolean shouldDisableDependents() {
        return TextUtils.isEmpty(this.mText) || super.shouldDisableDependents();
    }

    @Override // android.support.v7.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        EditTextPreference$SavedState editTextPreference$SavedState = new EditTextPreference$SavedState(parcelableOnSaveInstanceState);
        editTextPreference$SavedState.text = getText();
        return editTextPreference$SavedState;
    }

    @Override // android.support.v7.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(EditTextPreference$SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        EditTextPreference$SavedState editTextPreference$SavedState = (EditTextPreference$SavedState) parcelable;
        super.onRestoreInstanceState(editTextPreference$SavedState.getSuperState());
        setText(editTextPreference$SavedState.text);
    }
}
