package android.support.v14.preference;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
class PreferenceFragment$1 extends Handler {
    final /* synthetic */ PreferenceFragment this$0;

    PreferenceFragment$1(PreferenceFragment preferenceFragment) {
        this.this$0 = preferenceFragment;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        this.this$0.bindPreferences();
    }
}
