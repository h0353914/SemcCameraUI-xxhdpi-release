package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api$ApiOptions;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.common.api.Api$zzd;
import com.google.android.gms.common.api.Api$zze;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient$Builder;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf$zza;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzk$zza;
import com.google.android.gms.common.internal.zzx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class zzli extends GoogleApiClient {
    private final Context mContext;
    private final int zzaaM;
    private final Looper zzaaO;
    private final GoogleApiAvailability zzaaP;
    final Api$zza<? extends zzqw, zzqx> zzaaQ;
    final zzf zzabI;
    final zzk zzabZ;
    private volatile boolean zzacb;
    private final zzli$zza zzace;
    zzli$zzd zzacf;
    private zza zzacn;
    private final Lock zzabt = new ReentrantLock();
    final Queue<zzli$zzf<?>> zzaca = new LinkedList();
    private long zzacc = 120000;
    private long zzacd = 5000;
    final Map<Api$zzc<?>, Api$zzb> zzacg = new HashMap();
    final Map<Api$zzc<?>, ConnectionResult> zzach = new HashMap();
    Set<Scope> zzaci = new HashSet();
    private ConnectionResult zzack = null;
    private final Set<zzlm<?>> zzacl = Collections.newSetFromMap(new WeakHashMap());
    final Set<zzli$zzf<?>> zzacm = Collections.newSetFromMap(new ConcurrentHashMap(16, 0.75f, 2));
    private final zzli$zze zzaco = new zzli$1(this);
    private final GoogleApiClient$ConnectionCallbacks zzacp = new zzli$2(this);
    private final zzk$zza zzacq = new zzli$3(this);
    final Map<Api<?>, Integer> zzabJ = new HashMap();
    private final Condition zzabY = this.zzabt.newCondition();
    private volatile zzlj zzacj = new zzlh(this);

    public zzli(Context context, Looper looper, zzf zzfVar, GoogleApiAvailability googleApiAvailability, Api$zza<? extends zzqw, zzqx> api$zza, Map<Api<?>, Api$ApiOptions> map, ArrayList<GoogleApiClient$ConnectionCallbacks> arrayList, ArrayList<GoogleApiClient$OnConnectionFailedListener> arrayList2, int i) {
        this.mContext = context;
        this.zzabZ = new zzk(looper, this.zzacq);
        this.zzaaO = looper;
        this.zzace = new zzli$zza(this, looper);
        this.zzaaP = googleApiAvailability;
        this.zzaaM = i;
        Iterator<GoogleApiClient$ConnectionCallbacks> it = arrayList.iterator();
        while (it.hasNext()) {
            this.zzabZ.registerConnectionCallbacks(it.next());
        }
        Iterator<GoogleApiClient$OnConnectionFailedListener> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            this.zzabZ.registerConnectionFailedListener(it2.next());
        }
        Map<Api<?>, zzf$zza> mapZzoM = zzfVar.zzoM();
        for (Api<?> api : map.keySet()) {
            Api$ApiOptions api$ApiOptions = map.get(api);
            int i2 = mapZzoM.get(api) != null ? mapZzoM.get(api).zzafk ? 1 : 2 : 0;
            this.zzabJ.put(api, Integer.valueOf(i2));
            this.zzacg.put(api.zznx(), api.zzny() ? zza(api.zznw(), api$ApiOptions, context, looper, zzfVar, this.zzacp, zza(api, i2)) : zza(api.zznv(), api$ApiOptions, context, looper, zzfVar, this.zzacp, zza(api, i2)));
        }
        this.zzabI = zzfVar;
        this.zzaaQ = api$zza;
    }

    private void resume() {
        this.zzabt.lock();
        try {
            if (zzoc()) {
                connect();
            }
        } finally {
            this.zzabt.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api$zzb, O> C zza(Api$zza<C, O> api$zza, Object obj, Context context, Looper looper, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return (C) api$zza.zza(context, looper, zzfVar, obj, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
    }

    private GoogleApiClient$OnConnectionFailedListener zza(Api<?> api, int i) {
        return new zzli$4(this, api, i);
    }

    static /* synthetic */ zza zza(zzli zzliVar) {
        return zzliVar.zzacn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <C extends Api$zzd, O> zzac zza(Api$zze<C, O> api$zze, Object obj, Context context, Looper looper, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return new zzac(context, looper, api$zze.zznA(), googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener, zzfVar, api$zze.zzn(obj));
    }

    private void zza(GoogleApiClient googleApiClient, zzlo zzloVar, boolean z) {
        zzlx.zzagw.zzb(googleApiClient).setResultCallback(new zzli$7(this, zzloVar, z, googleApiClient));
    }

    private static void zza(zzli$zzf<?> zzli_zzf, zza zzaVar, IBinder iBinder) {
        if (zzli_zzf.isReady()) {
            zzli_zzf.zza(new zzli$zzc(zzli_zzf, zzaVar, iBinder, null));
            return;
        }
        if (iBinder == null || !iBinder.isBinderAlive()) {
            zzli_zzf.zza(null);
        } else {
            zzli$zzc zzli_zzc = new zzli$zzc(zzli_zzf, zzaVar, iBinder, null);
            zzli_zzf.zza(zzli_zzc);
            try {
                iBinder.linkToDeath(zzli_zzc, 0);
                return;
            } catch (RemoteException unused) {
            }
        }
        zzli_zzf.cancel();
        zzaVar.remove(zzli_zzf.zznF().intValue());
    }

    static /* synthetic */ void zza(zzli zzliVar, GoogleApiClient googleApiClient, zzlo zzloVar, boolean z) {
        zzliVar.zza(googleApiClient, zzloVar, z);
    }

    static /* synthetic */ Lock zzb(zzli zzliVar) {
        return zzliVar.zzabt;
    }

    static /* synthetic */ zzlj zzc(zzli zzliVar) {
        return zzliVar.zzacj;
    }

    static /* synthetic */ void zzd(zzli zzliVar) {
        zzliVar.resume();
    }

    static /* synthetic */ void zze(zzli zzliVar) {
        zzliVar.zzod();
    }

    static /* synthetic */ int zzf(zzli zzliVar) {
        return zzliVar.zzaaM;
    }

    private void zzod() {
        this.zzabt.lock();
        try {
            if (zzof()) {
                connect();
            }
        } finally {
            this.zzabt.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        ConnectionResult connectionResult;
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.zzabt.lock();
        try {
            connect();
            while (isConnecting()) {
                try {
                    this.zzabY.await();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    connectionResult = new ConnectionResult(15, null);
                }
            }
            connectionResult = isConnected() ? ConnectionResult.zzZY : this.zzack != null ? this.zzack : new ConnectionResult(13, null);
            return connectionResult;
        } finally {
            this.zzabt.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r4 = new com.google.android.gms.common.ConnectionResult(14, null);
     */
    @Override // com.google.android.gms.common.api.GoogleApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        ConnectionResult connectionResult;
        zzx.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        zzx.zzb(timeUnit, "TimeUnit must not be null");
        this.zzabt.lock();
        try {
            connect();
            long nanos = timeUnit.toNanos(j);
            while (true) {
                if (isConnecting()) {
                    try {
                        nanos = this.zzabY.awaitNanos(nanos);
                        if (nanos <= 0) {
                            break;
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        connectionResult = new ConnectionResult(15, null);
                    }
                } else {
                    connectionResult = isConnected() ? ConnectionResult.zzZY : this.zzack != null ? this.zzack : new ConnectionResult(13, null);
                }
            }
            return connectionResult;
        } finally {
            this.zzabt.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        zzx.zza(isConnected(), "GoogleApiClient is not connected yet.");
        zzlo zzloVar = new zzlo(this);
        if (this.zzacg.containsKey(zzlx.zzRk)) {
            zza((GoogleApiClient) this, zzloVar, false);
            return zzloVar;
        }
        AtomicReference atomicReference = new AtomicReference();
        zzli$5 zzli_5 = new zzli$5(this, atomicReference, zzloVar);
        GoogleApiClient googleApiClientBuild = new GoogleApiClient$Builder(this.mContext).addApi(zzlx.API).addConnectionCallbacks(zzli_5).addOnConnectionFailedListener(new zzli$6(this, zzloVar)).setHandler(this.zzace).build();
        atomicReference.set(googleApiClientBuild);
        googleApiClientBuild.connect();
        return zzloVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        this.zzabt.lock();
        try {
            this.zzacj.connect();
        } finally {
            this.zzabt.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.zzabt.lock();
        try {
            zzof();
            this.zzacj.disconnect();
        } finally {
            this.zzabt.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mState=").append((CharSequence) this.zzacj.getName());
        printWriter.append(" mResuming=").print(this.zzacb);
        printWriter.append(" mWorkQueue.size()=").print(this.zzaca.size());
        printWriter.append(" mUnconsumedRunners.size()=").println(this.zzacm.size());
        String str2 = str + "  ";
        for (Api<?> api : this.zzabJ.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.zzacg.get(api.zznx()).dump(str2, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        ConnectionResult connectionResult;
        Api$zzc<?> api$zzcZznx = api.zznx();
        this.zzabt.lock();
        try {
            if (!isConnected() && !zzoc()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.zzacg.containsKey(api$zzcZznx)) {
                this.zzabt.unlock();
                throw new IllegalArgumentException(api.getName() + " was never registered with GoogleApiClient");
            }
            if (this.zzacg.get(api$zzcZznx).isConnected()) {
                connectionResult = ConnectionResult.zzZY;
            } else if (this.zzach.containsKey(api$zzcZznx)) {
                connectionResult = this.zzach.get(api$zzcZznx);
            } else {
                Log.i("GoogleApiClientImpl", zzog());
                Log.wtf("GoogleApiClientImpl", api.getName() + " requested in getConnectionResult is not connected but is not present in the failed connections map", new Exception());
                connectionResult = new ConnectionResult(8, null);
            }
            return connectionResult;
        } finally {
            this.zzabt.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzaaO;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(Api<?> api) {
        Api$zzb api$zzb = this.zzacg.get(api.zznx());
        return api$zzb != null && api$zzb.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.zzacj instanceof zzlf;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.zzacj instanceof zzlg;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        return this.zzabZ.isConnectionCallbacksRegistered(googleApiClient$ConnectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return this.zzabZ.isConnectionFailedListenerRegistered(googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        this.zzabZ.registerConnectionCallbacks(googleApiClient$ConnectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this.zzabZ.registerConnectionFailedListener(googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(FragmentActivity fragmentActivity) {
        if (this.zzaaM < 0) {
            throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
        }
        zzlp zzlpVarZza = zzlp.zza(fragmentActivity);
        if (zzlpVarZza == null) {
            new Handler(this.mContext.getMainLooper()).post(new zzli$8(this, fragmentActivity));
        } else {
            zzlpVarZza.zzbp(this.zzaaM);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        this.zzabZ.unregisterConnectionCallbacks(googleApiClient$ConnectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this.zzabZ.unregisterConnectionFailedListener(googleApiClient$OnConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <C extends Api$zzb> C zza(Api$zzc<C> api$zzc) {
        C c = (C) this.zzacg.get(api$zzc);
        zzx.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api$zzb, R extends Result, T extends zzlb$zza<R, A>> T zza(T t) {
        zzx.zzb(t.zznx() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        zzx.zzb(this.zzacg.containsKey(t.zznx()), "GoogleApiClient is not configured to use the API required for this call.");
        this.zzabt.lock();
        try {
            return (T) this.zzacj.zza(t);
        } finally {
            this.zzabt.unlock();
        }
    }

    void zza(zzli$zzb zzli_zzb) {
        this.zzace.sendMessage(this.zzace.obtainMessage(3, zzli_zzb));
    }

    void zza(RuntimeException runtimeException) {
        this.zzace.sendMessage(this.zzace.obtainMessage(4, runtimeException));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(Api<?> api) {
        return this.zzacg.containsKey(api.zznx());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api$zzb, T extends zzlb$zza<? extends Result, A>> T zzb(T t) {
        zzx.zzb(t.zznx() != null, "This task can not be executed (it's probably a Batch or malformed)");
        this.zzabt.lock();
        try {
            if (zzoc()) {
                this.zzaca.add(t);
                while (!this.zzaca.isEmpty()) {
                    zzli$zzf<A> zzli_zzf = (zzli$zzf) this.zzaca.remove();
                    zzb(zzli_zzf);
                    zzli_zzf.zzv(Status.zzabd);
                }
            } else {
                t = (T) this.zzacj.zzb(t);
            }
            return t;
        } finally {
            this.zzabt.unlock();
        }
    }

    <A extends Api$zzb> void zzb(zzli$zzf<A> zzli_zzf) {
        this.zzacm.add(zzli_zzf);
        zzli_zzf.zza(this.zzaco);
    }

    void zzg(ConnectionResult connectionResult) {
        this.zzabt.lock();
        try {
            this.zzack = connectionResult;
            this.zzacj = new zzlh(this);
            this.zzacj.begin();
            this.zzabY.signalAll();
        } finally {
            this.zzabt.unlock();
        }
    }

    void zznY() {
        for (zzli$zzf<?> zzli_zzf : this.zzacm) {
            zzli_zzf.zza(null);
            if (zzli_zzf.zznF() == null) {
                zzli_zzf.cancel();
            } else {
                zzli_zzf.zznJ();
                zza(zzli_zzf, this.zzacn, zza((Api$zzc) zzli_zzf.zznx()).zznz());
            }
        }
        this.zzacm.clear();
        Iterator<zzlm<?>> it = this.zzacl.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.zzacl.clear();
    }

    void zznZ() {
        Iterator<Api$zzb> it = this.zzacg.values().iterator();
        while (it.hasNext()) {
            it.next().disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzlm<L> zzo(L l) {
        zzx.zzb(l, "Listener must not be null");
        this.zzabt.lock();
        try {
            zzlm<L> zzlmVar = new zzlm<>(this.zzaaO, l);
            this.zzacl.add(zzlmVar);
            return zzlmVar;
        } finally {
            this.zzabt.unlock();
        }
    }

    void zzoa() {
        this.zzabt.lock();
        try {
            this.zzacj = new zzlg(this, this.zzabI, this.zzabJ, this.zzaaP, this.zzaaQ, this.zzabt, this.mContext);
            this.zzacj.begin();
            this.zzabY.signalAll();
        } finally {
            this.zzabt.unlock();
        }
    }

    void zzob() {
        this.zzabt.lock();
        try {
            zzof();
            this.zzacj = new zzlf(this);
            this.zzacj.begin();
            this.zzabY.signalAll();
        } finally {
            this.zzabt.unlock();
        }
    }

    boolean zzoc() {
        return this.zzacb;
    }

    void zzoe() {
        if (zzoc()) {
            return;
        }
        this.zzacb = true;
        if (this.zzacf == null) {
            this.zzacf = (zzli$zzd) zzll.zza(this.mContext.getApplicationContext(), new zzli$zzd(this), this.zzaaP);
        }
        this.zzace.sendMessageDelayed(this.zzace.obtainMessage(1), this.zzacc);
        this.zzace.sendMessageDelayed(this.zzace.obtainMessage(2), this.zzacd);
    }

    boolean zzof() {
        if (!zzoc()) {
            return false;
        }
        this.zzacb = false;
        this.zzace.removeMessages(2);
        this.zzace.removeMessages(1);
        if (this.zzacf != null) {
            this.zzacf.unregister();
            this.zzacf = null;
        }
        return true;
    }

    String zzog() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
}
