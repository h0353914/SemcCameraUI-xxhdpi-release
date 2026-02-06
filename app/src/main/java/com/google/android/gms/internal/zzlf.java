package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

public class zzlf implements zzlj {
    private final zzli zzabr;

    public zzlf(zzli zzliVar) {
        this.zzabr = zzliVar;
    }

    private <A extends Api$zzb> void zza(zzli$zzf<A> zzli_zzf) throws DeadObjectException {
        this.zzabr.zzb(zzli_zzf);
        Api$zzb api$zzbZza = this.zzabr.zza(zzli_zzf.zznx());
        if (api$zzbZza.isConnected() || !this.zzabr.zzach.containsKey(zzli_zzf.zznx())) {
            zzli_zzf.zzb(api$zzbZza);
        } else {
            zzli_zzf.zzv(new Status(17));
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void begin() {
        while (!this.zzabr.zzaca.isEmpty()) {
            try {
                zza(this.zzabr.zzaca.remove());
            } catch (DeadObjectException e) {
                Log.w("GACConnected", "Service died while flushing queue", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzlj
    public void disconnect() {
        this.zzabr.zzach.clear();
        this.zzabr.zznY();
        this.zzabr.zzg(null);
        this.zzabr.zzabZ.zzpk();
    }

    @Override // com.google.android.gms.internal.zzlj
    public String getName() {
        return "CONNECTED";
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnectionSuspended(int i) {
        if (i == 1) {
            this.zzabr.zzoe();
        }
        Iterator<zzli$zzf<?>> it = this.zzabr.zzacm.iterator();
        while (it.hasNext()) {
            it.next().zzw(new Status(8, "The connection to Google Play services was lost"));
        }
        this.zzabr.zzg(null);
        this.zzabr.zzabZ.zzbG(i);
        this.zzabr.zzabZ.zzpk();
        if (i == 2) {
            this.zzabr.connect();
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api$zzb, R extends Result, T extends zzlb$zza<R, A>> T zza(T t) {
        return (T) zzb(t);
    }

    @Override // com.google.android.gms.internal.zzlj
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api$zzb, T extends zzlb$zza<? extends Result, A>> T zzb(T t) {
        try {
            zza((zzli$zzf) t);
            return t;
        } catch (DeadObjectException unused) {
            this.zzabr.zza(new zzlf$1(this, this));
            return t;
        }
    }
}
