package android.support.v7.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl$AutoNightModeManager$1 extends BroadcastReceiver {
    final /* synthetic */ AppCompatDelegateImpl$AutoNightModeManager this$1;

    AppCompatDelegateImpl$AutoNightModeManager$1(AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager) {
        this.this$1 = appCompatDelegateImpl$AutoNightModeManager;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.this$1.dispatchTimeChanged();
    }
}
