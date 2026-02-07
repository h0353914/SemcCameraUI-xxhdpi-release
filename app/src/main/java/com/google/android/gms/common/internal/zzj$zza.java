package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes.dex */
abstract class zzj$zza extends zzj<T>.zzj$zzc<Boolean> {
    public final int statusCode;
    public final Bundle zzafJ;
    final /* synthetic */ zzj zzafK;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected zzj$zza(zzj zzjVar, int i, Bundle bundle) {
        super(zzjVar, true);
        this.zzafK = zzjVar;
        this.statusCode = i;
        this.zzafJ = bundle;
    }

    protected void zzc(Boolean bool) {
        ConnectionResult connectionResult;
        if (bool == null) {
            zzj.zza(this.zzafK, 1, (IInterface) null);
            return;
        }
        int i = this.statusCode;
        if (i != 0) {
            if (i == 10) {
                zzj.zza(this.zzafK, 1, (IInterface) null);
                throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
            }
            zzj.zza(this.zzafK, 1, (IInterface) null);
            connectionResult = new ConnectionResult(this.statusCode, this.zzafJ != null ? (PendingIntent) this.zzafJ.getParcelable("pendingIntent") : null);
        } else {
            if (zzpf()) {
                return;
            }
            zzj.zza(this.zzafK, 1, (IInterface) null);
            connectionResult = new ConnectionResult(8, null);
        }
        zzh(connectionResult);
    }

    protected abstract void zzh(ConnectionResult connectionResult);

    protected abstract boolean zzpf();

    @Override // com.google.android.gms.common.internal.zzj$zzc
    protected void zzpg() {
    }

    @Override // com.google.android.gms.common.internal.zzj$zzc
    protected /* synthetic */ void zzt(Boolean bool) {
        zzc(bool);
    }
}
