package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult$zza;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class zzlc<R extends Result> extends PendingResult<R> {
    private boolean zzL;
    private volatile R zzaaX;
    protected final zzlc$zza<R> zzabi;
    private ResultCallback<? super R> zzabk;
    private volatile boolean zzabl;
    private boolean zzabm;
    private zzq zzabn;
    private Integer zzabo;
    private volatile zzlq<R> zzabp;
    private final Object zzabh = new Object();
    private final CountDownLatch zzoS = new CountDownLatch(1);
    private final ArrayList<PendingResult$zza> zzabj = new ArrayList<>();

    @Deprecated
    protected zzlc(Looper looper) {
        this.zzabi = new zzlc$zza<>(looper);
    }

    protected zzlc(GoogleApiClient googleApiClient) {
        this.zzabi = new zzlc$zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    private R get() {
        R r;
        synchronized (this.zzabh) {
            zzx.zza(!this.zzabl, "Result has already been consumed.");
            zzx.zza(isReady(), "Result is not ready.");
            r = this.zzaaX;
            this.zzaaX = null;
            this.zzabk = null;
            this.zzabl = true;
        }
        zznL();
        return r;
    }

    private void zzc(R r) {
        this.zzaaX = r;
        this.zzabn = null;
        this.zzoS.countDown();
        Status status = this.zzaaX.getStatus();
        if (this.zzabk != null) {
            this.zzabi.zznM();
            if (!this.zzL) {
                this.zzabi.zza(this.zzabk, get());
            }
        }
        Iterator<PendingResult$zza> it = this.zzabj.iterator();
        while (it.hasNext()) {
            it.next().zzt(status);
        }
        this.zzabj.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                Log.w("BasePendingResult", "Unable to release " + result, e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        zzx.zza(!this.zzabl, "Result has already been consumed");
        zzx.zza(this.zzabp == null, "Cannot await if then() has been called.");
        try {
            this.zzoS.await();
        } catch (InterruptedException unused) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), "Result is not ready.");
        return (R) get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        zzx.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        zzx.zza(!this.zzabl, "Result has already been consumed.");
        zzx.zza(this.zzabp == null, "Cannot await if then() has been called.");
        try {
            if (!this.zzoS.await(j, timeUnit)) {
                zzw(Status.zzabe);
            }
        } catch (InterruptedException unused) {
            zzw(Status.zzabc);
        }
        zzx.zza(isReady(), "Result is not ready.");
        return (R) get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.zzabh) {
            if (!this.zzL && !this.zzabl) {
                if (this.zzabn != null) {
                    try {
                        this.zzabn.cancel();
                    } catch (RemoteException unused) {
                    }
                }
                zzd(this.zzaaX);
                this.zzabk = null;
                this.zzL = true;
                zzc(zzb(Status.zzabf));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzabh) {
            z = this.zzL;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zzoS.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        boolean z = true;
        zzx.zza(!this.zzabl, "Result has already been consumed.");
        synchronized (this.zzabh) {
            if (this.zzabp != null) {
                z = false;
            }
            zzx.zza(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza(resultCallback, get());
            } else {
                this.zzabk = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        boolean z = true;
        zzx.zza(!this.zzabl, "Result has already been consumed.");
        synchronized (this.zzabh) {
            if (this.zzabp != null) {
                z = false;
            }
            zzx.zza(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzabi.zza(resultCallback, get());
            } else {
                this.zzabk = resultCallback;
                this.zzabi.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult$zza pendingResult$zza) {
        zzx.zza(!this.zzabl, "Result has already been consumed.");
        zzx.zzb(pendingResult$zza != null, "Callback cannot be null.");
        synchronized (this.zzabh) {
            if (isReady()) {
                pendingResult$zza.zzt(this.zzaaX.getStatus());
            } else {
                this.zzabj.add(pendingResult$zza);
            }
        }
    }

    protected final void zza(zzq zzqVar) {
        synchronized (this.zzabh) {
            this.zzabn = zzqVar;
        }
    }

    protected abstract R zzb(Status status);

    public final void zzb(R r) {
        synchronized (this.zzabh) {
            if (!this.zzabm && !this.zzL) {
                zzx.zza(!isReady(), "Results have already been set");
                zzx.zza(!this.zzabl, "Result has already been consumed");
                zzc(r);
                return;
            }
            zzd(r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zznF() {
        return this.zzabo;
    }

    protected void zznL() {
    }

    public final void zzw(Status status) {
        synchronized (this.zzabh) {
            if (!isReady()) {
                zzb(zzb(status));
                this.zzabm = true;
            }
        }
    }
}
