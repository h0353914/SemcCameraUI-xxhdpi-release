package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
final class zzj$zzb extends Handler {
    final /* synthetic */ zzj zzafK;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj$zzb(zzj zzjVar, Looper looper) {
        super(looper);
        this.zzafK = zzjVar;
    }

    private void zza(Message message) {
        zzj$zzc zzj_zzc = (zzj$zzc) message.obj;
        zzj_zzc.zzpg();
        zzj_zzc.unregister();
    }

    private boolean zzb(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 5 || message.what == 6;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.zzafK.zzafH.get() != message.arg1) {
            if (zzb(message)) {
                zza(message);
                return;
            }
            return;
        }
        if ((message.what == 1 || message.what == 5 || message.what == 6) && !this.zzafK.isConnecting()) {
            zza(message);
            return;
        }
        if (message.what == 3) {
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, null);
            zzj.zza(this.zzafK).zza(connectionResult);
            this.zzafK.onConnectionFailed(connectionResult);
            return;
        }
        if (message.what == 4) {
            zzj.zza(this.zzafK, 4, (IInterface) null);
            if (zzj.zzb(this.zzafK) != null) {
                zzj.zzb(this.zzafK).onConnectionSuspended(message.arg2);
            }
            this.zzafK.onConnectionSuspended(message.arg2);
            zzj.zza(this.zzafK, 4, 1, (IInterface) null);
            return;
        }
        if (message.what == 2 && !this.zzafK.isConnected()) {
            zza(message);
            return;
        }
        if (zzb(message)) {
            ((zzj$zzc) message.obj).zzph();
            return;
        }
        Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
    }
}
