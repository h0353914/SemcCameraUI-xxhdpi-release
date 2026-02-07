package com.google.android.gms.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
interface zzli$zzf<A extends Api$zzb> {
    void cancel();

    boolean isReady();

    void zza(zzli$zze zzli_zze);

    void zzb(A a) throws DeadObjectException;

    Integer zznF();

    void zznJ();

    int zznK();

    Api$zzc<A> zznx();

    void zzv(Status status);

    void zzw(Status status);
}
