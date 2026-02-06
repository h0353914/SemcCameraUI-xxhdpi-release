package android.support.v14.preference;

import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

class ListPreferenceDialogFragment$1 implements DialogInterface$OnClickListener {
    final /* synthetic */ ListPreferenceDialogFragment this$0;

    ListPreferenceDialogFragment$1(ListPreferenceDialogFragment listPreferenceDialogFragment) {
        this.this$0 = listPreferenceDialogFragment;
    }

    @Override // android.content.DialogInterface$OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.this$0.mClickedDialogEntryIndex = i;
        this.this$0.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
