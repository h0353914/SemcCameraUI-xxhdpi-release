package android.support.v14.preference;

import android.widget.CompoundButton;
import android.widget.CompoundButton$OnCheckedChangeListener;

/* JADX INFO: loaded from: classes.dex */
class SwitchPreference$Listener implements CompoundButton$OnCheckedChangeListener {
    final /* synthetic */ SwitchPreference this$0;

    SwitchPreference$Listener(SwitchPreference switchPreference) {
        this.this$0 = switchPreference;
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
