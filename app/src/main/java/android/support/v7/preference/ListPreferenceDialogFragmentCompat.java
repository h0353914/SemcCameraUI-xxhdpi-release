package android.support.v7.preference;

import android.content.DialogInterface$OnClickListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog$Builder;

public class ListPreferenceDialogFragmentCompat extends PreferenceDialogFragmentCompat {
    private static final String SAVE_STATE_ENTRIES = "ListPreferenceDialogFragment.entries";
    private static final String SAVE_STATE_ENTRY_VALUES = "ListPreferenceDialogFragment.entryValues";
    private static final String SAVE_STATE_INDEX = "ListPreferenceDialogFragment.index";
    int mClickedDialogEntryIndex;
    private CharSequence[] mEntries;
    private CharSequence[] mEntryValues;

    public static ListPreferenceDialogFragmentCompat newInstance(String str) {
        ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat = new ListPreferenceDialogFragmentCompat();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        listPreferenceDialogFragmentCompat.setArguments(bundle);
        return listPreferenceDialogFragmentCompat;
    }

    @Override // android.support.v7.preference.PreferenceDialogFragmentCompat, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ListPreference listPreference = getListPreference();
            if (listPreference.getEntries() == null || listPreference.getEntryValues() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            this.mClickedDialogEntryIndex = listPreference.findIndexOfValue(listPreference.getValue());
            this.mEntries = listPreference.getEntries();
            this.mEntryValues = listPreference.getEntryValues();
            return;
        }
        this.mClickedDialogEntryIndex = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.mEntries = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.mEntryValues = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }

    @Override // android.support.v7.preference.PreferenceDialogFragmentCompat, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.mClickedDialogEntryIndex);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.mEntries);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.mEntryValues);
    }

    private ListPreference getListPreference() {
        return (ListPreference) getPreference();
    }

    @Override // android.support.v7.preference.PreferenceDialogFragmentCompat
    protected void onPrepareDialogBuilder(AlertDialog$Builder alertDialog$Builder) {
        super.onPrepareDialogBuilder(alertDialog$Builder);
        alertDialog$Builder.setSingleChoiceItems(this.mEntries, this.mClickedDialogEntryIndex, new ListPreferenceDialogFragmentCompat$1(this));
        alertDialog$Builder.setPositiveButton((CharSequence) null, (DialogInterface$OnClickListener) null);
    }

    @Override // android.support.v7.preference.PreferenceDialogFragmentCompat
    public void onDialogClosed(boolean z) {
        ListPreference listPreference = getListPreference();
        if (!z || this.mClickedDialogEntryIndex < 0) {
            return;
        }
        String string = this.mEntryValues[this.mClickedDialogEntryIndex].toString();
        if (listPreference.callChangeListener(string)) {
            listPreference.setValue(string);
        }
    }
}
