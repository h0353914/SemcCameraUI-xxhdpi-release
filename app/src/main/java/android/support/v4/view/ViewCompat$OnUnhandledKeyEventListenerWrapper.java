package android.support.v4.view;

import android.support.annotation.RequiresApi;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnUnhandledKeyEventListener;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(28)
class ViewCompat$OnUnhandledKeyEventListenerWrapper implements View$OnUnhandledKeyEventListener {
    private ViewCompat$OnUnhandledKeyEventListenerCompat mCompatListener;

    ViewCompat$OnUnhandledKeyEventListenerWrapper(ViewCompat$OnUnhandledKeyEventListenerCompat viewCompat$OnUnhandledKeyEventListenerCompat) {
        this.mCompatListener = viewCompat$OnUnhandledKeyEventListenerCompat;
    }

    @Override // android.view.View$OnUnhandledKeyEventListener
    public boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent) {
        return this.mCompatListener.onUnhandledKeyEvent(view, keyEvent);
    }
}
