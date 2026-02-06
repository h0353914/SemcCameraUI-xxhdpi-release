package android.support.v7.preference;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

class ListPreferenceDialogFragmentCompat$1 implements DialogInterface$OnClickListener {
    final /* synthetic */ ListPreferenceDialogFragmentCompat this$0;

    ListPreferenceDialogFragmentCompat$1(ListPreferenceDialogFragmentCompat listPreferenceDialogFragmentCompat) {
        this.this$0 = listPreferenceDialogFragmentCompat;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.mClickedDialogEntryIndex = i;
        this.this$0.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
