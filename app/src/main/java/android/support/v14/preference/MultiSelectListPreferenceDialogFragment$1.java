package android.support.v14.preference;

import android.content.DialogInterface;
import android.content.DialogInterface$OnMultiChoiceClickListener;

/* JADX INFO: loaded from: classes.dex */
class MultiSelectListPreferenceDialogFragment$1 implements DialogInterface$OnMultiChoiceClickListener {
    final /* synthetic */ MultiSelectListPreferenceDialogFragment this$0;

    MultiSelectListPreferenceDialogFragment$1(MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment) {
        this.this$0 = multiSelectListPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface$OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        if (z) {
            MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment = this.this$0;
            multiSelectListPreferenceDialogFragment.mPreferenceChanged = this.this$0.mNewValues.add(this.this$0.mEntryValues[i].toString()) | multiSelectListPreferenceDialogFragment.mPreferenceChanged;
        } else {
            MultiSelectListPreferenceDialogFragment multiSelectListPreferenceDialogFragment2 = this.this$0;
            multiSelectListPreferenceDialogFragment2.mPreferenceChanged = this.this$0.mNewValues.remove(this.this$0.mEntryValues[i].toString()) | multiSelectListPreferenceDialogFragment2.mPreferenceChanged;
        }
    }
}
