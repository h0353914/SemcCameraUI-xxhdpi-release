package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class zzk implements Handler$Callback {
    private final Handler mHandler;
    private final zzk$zza zzafP;
    private final ArrayList<GoogleApiClient$ConnectionCallbacks> zzafQ = new ArrayList<>();
    final ArrayList<GoogleApiClient$ConnectionCallbacks> zzafR = new ArrayList<>();
    private final ArrayList<GoogleApiClient$OnConnectionFailedListener> zzafS = new ArrayList<>();
    private volatile boolean zzafT = false;
    private final AtomicInteger zzafU = new AtomicInteger(0);
    private boolean zzafV = false;
    private final Object zzpd = new Object();

    public zzk(Looper looper, zzk$zza zzk_zza) {
        this.zzafP = zzk_zza;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler$Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", "Don't know how to handle message: " + message.what, new Exception());
            return false;
        }
        GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks = (GoogleApiClient$ConnectionCallbacks) message.obj;
        synchronized (this.zzpd) {
            if (this.zzafT && this.zzafP.isConnected() && this.zzafQ.contains(googleApiClient$ConnectionCallbacks)) {
                googleApiClient$ConnectionCallbacks.onConnected(this.zzafP.zzmS());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        boolean zContains;
        zzx.zzw(googleApiClient$ConnectionCallbacks);
        synchronized (this.zzpd) {
            zContains = this.zzafQ.contains(googleApiClient$ConnectionCallbacks);
        }
        return zContains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        boolean zContains;
        zzx.zzw(googleApiClient$OnConnectionFailedListener);
        synchronized (this.zzpd) {
            zContains = this.zzafS.contains(googleApiClient$OnConnectionFailedListener);
        }
        return zContains;
    }

    public void registerConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        zzx.zzw(googleApiClient$ConnectionCallbacks);
        synchronized (this.zzpd) {
            if (this.zzafQ.contains(googleApiClient$ConnectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + googleApiClient$ConnectionCallbacks + " is already registered");
            } else {
                this.zzafQ.add(googleApiClient$ConnectionCallbacks);
            }
        }
        if (this.zzafP.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, googleApiClient$ConnectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        zzx.zzw(googleApiClient$OnConnectionFailedListener);
        synchronized (this.zzpd) {
            if (this.zzafS.contains(googleApiClient$OnConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + googleApiClient$OnConnectionFailedListener + " is already registered");
            } else {
                this.zzafS.add(googleApiClient$OnConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        zzx.zzw(googleApiClient$ConnectionCallbacks);
        synchronized (this.zzpd) {
            if (!this.zzafQ.remove(googleApiClient$ConnectionCallbacks)) {
                Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + googleApiClient$ConnectionCallbacks + " not found");
            } else if (this.zzafV) {
                this.zzafR.add(googleApiClient$ConnectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        zzx.zzw(googleApiClient$OnConnectionFailedListener);
        synchronized (this.zzpd) {
            if (!this.zzafS.remove(googleApiClient$OnConnectionFailedListener)) {
                Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + googleApiClient$OnConnectionFailedListener + " not found");
            }
        }
    }

    public void zzbG(int i) {
        zzx.zza(Looper.myLooper() == this.mHandler.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzpd) {
            this.zzafV = true;
            ArrayList<GoogleApiClient$ConnectionCallbacks> arrayList = new ArrayList(this.zzafQ);
            int i2 = this.zzafU.get();
            for (GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks : arrayList) {
                if (!this.zzafT || this.zzafU.get() != i2) {
                    break;
                } else if (this.zzafQ.contains(googleApiClient$ConnectionCallbacks)) {
                    googleApiClient$ConnectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.zzafR.clear();
            this.zzafV = false;
        }
    }

    public void zzh(Bundle bundle) {
        boolean z = true;
        zzx.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzpd) {
            zzx.zzZ(!this.zzafV);
            this.mHandler.removeMessages(1);
            this.zzafV = true;
            if (this.zzafR.size() != 0) {
                z = false;
            }
            zzx.zzZ(z);
            ArrayList<GoogleApiClient$ConnectionCallbacks> arrayList = new ArrayList(this.zzafQ);
            int i = this.zzafU.get();
            for (GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks : arrayList) {
                if (!this.zzafT || !this.zzafP.isConnected() || this.zzafU.get() != i) {
                    break;
                } else if (!this.zzafR.contains(googleApiClient$ConnectionCallbacks)) {
                    googleApiClient$ConnectionCallbacks.onConnected(bundle);
                }
            }
            this.zzafR.clear();
            this.zzafV = false;
        }
    }

    public void zzi(ConnectionResult connectionResult) {
        zzx.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzpd) {
            ArrayList<GoogleApiClient$OnConnectionFailedListener> arrayList = new ArrayList(this.zzafS);
            int i = this.zzafU.get();
            for (GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener : arrayList) {
                if (this.zzafT && this.zzafU.get() == i) {
                    if (this.zzafS.contains(googleApiClient$OnConnectionFailedListener)) {
                        googleApiClient$OnConnectionFailedListener.onConnectionFailed(connectionResult);
                    }
                }
                return;
            }
        }
    }

    public void zzpk() {
        this.zzafT = false;
        this.zzafU.incrementAndGet();
    }

    public void zzpl() {
        this.zzafT = true;
    }
}
