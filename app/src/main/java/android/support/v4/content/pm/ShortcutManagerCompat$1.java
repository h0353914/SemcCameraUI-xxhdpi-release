package android.support.v4.content.pm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender$SendIntentException;

/* JADX INFO: loaded from: classes.dex */
class ShortcutManagerCompat$1 extends BroadcastReceiver {
    final /* synthetic */ IntentSender val$callback;

    ShortcutManagerCompat$1(IntentSender intentSender) {
        this.val$callback = intentSender;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            this.val$callback.sendIntent(context, 0, null, null, null);
        } catch (IntentSender$SendIntentException unused) {
        }
    }
}
