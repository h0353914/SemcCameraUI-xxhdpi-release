package android.support.v7.app;

import android.support.v4.view.KeyEventDispatcher$Component;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDialog$1 implements KeyEventDispatcher$Component {
    final /* synthetic */ AppCompatDialog this$0;

    AppCompatDialog$1(AppCompatDialog appCompatDialog) {
        this.this$0 = appCompatDialog;
    }

    @Override // android.support.v4.view.KeyEventDispatcher$Component
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return this.this$0.superDispatchKeyEvent(keyEvent);
    }
}
