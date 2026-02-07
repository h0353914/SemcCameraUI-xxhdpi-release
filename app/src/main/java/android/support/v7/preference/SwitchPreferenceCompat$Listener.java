package android.support.v7.preference;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

/* JADX INFO: loaded from: classes.dex */
class SwitchPreferenceCompat$Listener implements CompoundButton$OnCheckedChangeListener {
    final /* synthetic */ SwitchPreferenceCompat this$0;

    SwitchPreferenceCompat$Listener(SwitchPreferenceCompat switchPreferenceCompat) {
        this.this$0 = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton$OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!this.this$0.callChangeListener(Boolean.valueOf(z))) {
            compoundButton.setChecked(!z);
        } else {
            this.this$0.setChecked(z);
        }
    }
}
