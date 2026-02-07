package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
protected abstract class zzj$zzc<TListener> {
    private TListener mListener;
    final /* synthetic */ zzj zzafK;
    private boolean zzafL = false;

    public zzj$zzc(zzj zzjVar, TListener tlistener) {
        this.zzafK = zzjVar;
        this.mListener = tlistener;
    }

    public void unregister() {
        zzpi();
        synchronized (zzj.zzc(this.zzafK)) {
            zzj.zzc(this.zzafK).remove(this);
        }
    }

    protected abstract void zzpg();

    public void zzph() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.mListener;
            if (this.zzafL) {
                Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
            }
        }
        if (tlistener != null) {
            try {
                zzt(tlistener);
            } catch (RuntimeException e) {
                zzpg();
                throw e;
            }
        } else {
            zzpg();
        }
        synchronized (this) {
            this.zzafL = true;
        }
        unregister();
    }

    public void zzpi() {
        synchronized (this) {
            this.mListener = null;
        }
    }

    protected abstract void zzt(TListener tlistener);
}
