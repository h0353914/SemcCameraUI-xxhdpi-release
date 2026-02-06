package android.support.v7.preference;

import android.os.Handler;
import android.os.Message;

class PreferenceFragmentCompat$1 extends Handler {
    final /* synthetic */ PreferenceFragmentCompat this$0;

    PreferenceFragmentCompat$1(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.this$0 = preferenceFragmentCompat;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        this.this$0.bindPreferences();
    }
}
