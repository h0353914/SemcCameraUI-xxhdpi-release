package com.sonyericsson.album.fastview;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
class FastViewManager$1 implements ServiceConnection {
    final /* synthetic */ FastViewManager this$0;

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    FastViewManager$1(FastViewManager fastViewManager) {
        this.this$0 = fastViewManager;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        FastViewManager.access$002(this.this$0, IFastViewService$Stub.asInterface(iBinder));
        if (FastViewManager.access$100(this.this$0) != null) {
            FastViewManager.access$100(this.this$0).onPrewarmed();
        }
    }
}
