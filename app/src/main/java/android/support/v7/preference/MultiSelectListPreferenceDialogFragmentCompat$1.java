package android.support.v7.preference;

import android.content.DialogInterface;
import android.content.DialogInterface$OnMultiChoiceClickListener;

/* JADX INFO: loaded from: classes.dex */
class MultiSelectListPreferenceDialogFragmentCompat$1 implements DialogInterface$OnMultiChoiceClickListener {
    final /* synthetic */ MultiSelectListPreferenceDialogFragmentCompat this$0;

    MultiSelectListPreferenceDialogFragmentCompat$1(MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat) {
        this.this$0 = multiSelectListPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface$OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        if (z) {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat = this.this$0;
            multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged = this.this$0.mNewValues.add(this.this$0.mEntryValues[i].toString()) | multiSelectListPreferenceDialogFragmentCompat.mPreferenceChanged;
        } else {
            MultiSelectListPreferenceDialogFragmentCompat multiSelectListPreferenceDialogFragmentCompat2 = this.this$0;
            multiSelectListPreferenceDialogFragmentCompat2.mPreferenceChanged = this.this$0.mNewValues.remove(this.this$0.mEntryValues[i].toString()) | multiSelectListPreferenceDialogFragmentCompat2.mPreferenceChanged;
        }
    }
}
