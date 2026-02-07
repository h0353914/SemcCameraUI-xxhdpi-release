package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzlb$zza;
import com.google.android.gms.internal.zzlm;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class GoogleApiClient {
    public abstract ConnectionResult blockingConnect();

    public abstract ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    public abstract PendingResult<Status> clearDefaultAccountAndReconnect();

    public abstract void connect();

    public abstract void disconnect();

    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract ConnectionResult getConnectionResult(Api<?> api);

    public Context getContext() {
        throw new UnsupportedOperationException();
    }

    public Looper getLooper() {
        throw new UnsupportedOperationException();
    }

    public int getSessionId() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasConnectedApi(Api<?> api);

    public abstract boolean isConnected();

    public abstract boolean isConnecting();

    public abstract boolean isConnectionCallbacksRegistered(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks);

    public abstract boolean isConnectionFailedListenerRegistered(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener);

    public abstract void reconnect();

    public abstract void registerConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks);

    public abstract void registerConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener);

    public abstract void stopAutoManage(FragmentActivity fragmentActivity);

    public abstract void unregisterConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks);

    public abstract void unregisterConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener);

    public <C extends Api$zzb> C zza(Api$zzc<C> api$zzc) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api$zzb, R extends Result, T extends zzlb$zza<R, A>> T zza(T t) {
        throw new UnsupportedOperationException();
    }

    public boolean zza(Api<?> api) {
        throw new UnsupportedOperationException();
    }

    public <A extends Api$zzb, T extends zzlb$zza<? extends Result, A>> T zzb(T t) {
        throw new UnsupportedOperationException();
    }

    public <L> zzlm<L> zzo(L l) {
        throw new UnsupportedOperationException();
    }
}
