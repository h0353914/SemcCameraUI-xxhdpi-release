package android.support.v14.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.support.annotation.ArrayRes;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.preference.internal.AbstractMultiSelectListPreference;
import android.util.AttributeSet;
import java.util.HashSet;
import java.util.Set;

public class MultiSelectListPreference extends AbstractMultiSelectListPreference {
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;
    private Set<String> mValues;

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mValues = new HashSet();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, android.support.v7.preference.R$styleable.MultiSelectListPreference, i, i2);
        this.mEntries = TypedArrayUtils.getTextArray(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.MultiSelectListPreference_entries, android.support.v7.preference.R$styleable.MultiSelectListPreference_android_entries);
        this.mEntryValues = TypedArrayUtils.getTextArray(typedArrayObtainStyledAttributes, android.support.v7.preference.R$styleable.MultiSelectListPreference_entryValues, android.support.v7.preference.R$styleable.MultiSelectListPreference_android_entryValues);
        typedArrayObtainStyledAttributes.recycle();
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, android.support.v7.preference.R$attr.dialogPreferenceStyle, 16842897));
    }

    public MultiSelectListPreference(Context context) {
        this(context, null);
    }

    public void setEntries(CharSequence[] charSequenceArr) {
        this.mEntries = charSequenceArr;
    }

    public void setEntries(@ArrayRes int i) {
        setEntries(getContext().getResources().getTextArray(i));
    }

    @Override // android.support.v7.preference.internal.AbstractMultiSelectListPreference
    public CharSequence[] getEntries() {
        return this.mEntries;
    }

    public void setEntryValues(CharSequence[] charSequenceArr) {
        this.mEntryValues = charSequenceArr;
    }

    public void setEntryValues(@ArrayRes int i) {
        setEntryValues(getContext().getResources().getTextArray(i));
    }

    @Override // android.support.v7.preference.internal.AbstractMultiSelectListPreference
    public CharSequence[] getEntryValues() {
        return this.mEntryValues;
    }

    @Override // android.support.v7.preference.internal.AbstractMultiSelectListPreference
    public void setValues(Set<String> set) {
        this.mValues.clear();
        this.mValues.addAll(set);
        persistStringSet(set);
    }

    @Override // android.support.v7.preference.internal.AbstractMultiSelectListPreference
    public Set<String> getValues() {
        return this.mValues;
    }

    public int findIndexOfValue(String str) {
        if (str == null || this.mEntryValues == null) {
            return -1;
        }
        for (int length = this.mEntryValues.length - 1; length >= 0; length--) {
            if (this.mEntryValues[length].equals(str)) {
                return length;
            }
        }
        return -1;
    }

    protected boolean[] getSelectedItems() {
        CharSequence[] charSequenceArr = this.mEntryValues;
        int length = charSequenceArr.length;
        Set<String> set = this.mValues;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = set.contains(charSequenceArr[i].toString());
        }
        return zArr;
    }

    @Override // android.support.v7.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // android.support.v7.preference.Preference
    protected void onSetInitialValue(Object obj) {
        setValues(getPersistedStringSet((Set) obj));
    }

    @Override // android.support.v7.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return parcelableOnSaveInstanceState;
        }
        MultiSelectListPreference$SavedState multiSelectListPreference$SavedState = new MultiSelectListPreference$SavedState(parcelableOnSaveInstanceState);
        multiSelectListPreference$SavedState.mValues = getValues();
        return multiSelectListPreference$SavedState;
    }

    @Override // android.support.v7.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(MultiSelectListPreference$SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        MultiSelectListPreference$SavedState multiSelectListPreference$SavedState = (MultiSelectListPreference$SavedState) parcelable;
        super.onRestoreInstanceState(multiSelectListPreference$SavedState.getSuperState());
        setValues(multiSelectListPreference$SavedState.mValues);
    }
}
