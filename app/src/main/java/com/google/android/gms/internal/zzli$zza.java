package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class zzli$zza extends Handler {
    final /* synthetic */ zzli zzacr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzli$zza(zzli zzliVar, Looper looper) {
        super(looper);
        this.zzacr = zzliVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zzli.zze(this.zzacr);
                return;
            case 2:
                zzli.zzd(this.zzacr);
                return;
            case 3:
                ((zzli$zzb) message.obj).zzg(this.zzacr);
                return;
            case 4:
                throw ((RuntimeException) message.obj);
            default:
                Log.w("GoogleApiClientImpl", "Unknown message id: " + message.what);
                return;
        }
    }
}
