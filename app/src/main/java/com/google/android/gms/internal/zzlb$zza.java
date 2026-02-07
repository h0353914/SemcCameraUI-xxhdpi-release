package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlb$zza<R extends Result, A extends Api$zzb> extends zzlc<R> implements zzlb$zzb<R>, zzli$zzf<A> {
    private final Api$zzc<A> zzZM;
    private AtomicReference<zzli$zze> zzabg;

    protected zzlb$zza(Api$zzc<A> api$zzc, GoogleApiClient googleApiClient) {
        super(((GoogleApiClient) zzx.zzb(googleApiClient, "GoogleApiClient must not be null")).getLooper());
        this.zzabg = new AtomicReference<>();
        this.zzZM = (Api$zzc) zzx.zzw(api$zzc);
    }

    private void zza(RemoteException remoteException) {
        zzv(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    protected abstract void zza(A a) throws RemoteException;

    @Override // com.google.android.gms.internal.zzli$zzf
    public void zza(zzli$zze zzli_zze) {
        this.zzabg.set(zzli_zze);
    }

    @Override // com.google.android.gms.internal.zzli$zzf
    public final void zzb(A a) throws DeadObjectException {
        try {
            zza(a);
        } catch (DeadObjectException e) {
            zza(e);
            throw e;
        } catch (RemoteException e2) {
            zza(e2);
        }
    }

    @Override // com.google.android.gms.internal.zzli$zzf
    public void zznJ() {
        setResultCallback(null);
    }

    @Override // com.google.android.gms.internal.zzli$zzf
    public int zznK() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzlc
    protected void zznL() {
        zzli$zze andSet = this.zzabg.getAndSet(null);
        if (andSet != null) {
            andSet.zzc(this);
        }
    }

    @Override // com.google.android.gms.internal.zzli$zzf
    public final Api$zzc<A> zznx() {
        return this.zzZM;
    }

    @Override // com.google.android.gms.internal.zzlb$zzb
    public /* synthetic */ void zzp(Object obj) {
        super.zzb((Result) obj);
    }

    @Override // com.google.android.gms.internal.zzlb$zzb, com.google.android.gms.internal.zzli$zzf
    public final void zzv(Status status) {
        zzx.zzb(!status.isSuccess(), "Failed result must not be success");
        zzb(zzb(status));
    }
}
