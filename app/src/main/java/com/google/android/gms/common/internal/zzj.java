package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient$zza;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzj<T extends IInterface> implements Api$zzb, zzk$zza {
    public static final String[] zzafI = {"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final Account zzQd;
    private final Set<Scope> zzTm;
    private final Looper zzaaO;
    private final GoogleApiAvailability zzaaP;
    private final zzf zzabI;
    private T zzafA;
    private final ArrayList<zzj<T>.zzj$zzc<?>> zzafB;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/google/android/gms/common/internal/zzj<TT;>.zze; */
    private zzj$zze zzafC;
    private int zzafD;
    private final GoogleApiClient$ConnectionCallbacks zzafE;
    private final GoogleApiClient$OnConnectionFailedListener zzafF;
    private final int zzafG;
    protected AtomicInteger zzafH;
    private final zzl zzafx;
    private zzs zzafy;
    private GoogleApiClient$zza zzafz;
    private final Object zzpd;

    protected zzj(Context context, Looper looper, int i, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this(context, looper, zzl.zzal(context), GoogleApiAvailability.getInstance(), i, zzfVar, (GoogleApiClient$ConnectionCallbacks) zzx.zzw(googleApiClient$ConnectionCallbacks), (GoogleApiClient$OnConnectionFailedListener) zzx.zzw(googleApiClient$OnConnectionFailedListener));
    }

    protected zzj(Context context, Looper looper, zzl zzlVar, GoogleApiAvailability googleApiAvailability, int i, zzf zzfVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this.zzpd = new Object();
        this.zzafB = new ArrayList<>();
        this.zzafD = 1;
        this.zzafH = new AtomicInteger(0);
        this.mContext = (Context) zzx.zzb(context, "Context must not be null");
        this.zzaaO = (Looper) zzx.zzb(looper, "Looper must not be null");
        this.zzafx = (zzl) zzx.zzb(zzlVar, "Supervisor must not be null");
        this.zzaaP = (GoogleApiAvailability) zzx.zzb(googleApiAvailability, "API availability must not be null");
        this.mHandler = new zzj$zzb(this, looper);
        this.zzafG = i;
        this.zzabI = (zzf) zzx.zzw(zzfVar);
        this.zzQd = zzfVar.getAccount();
        this.zzTm = zza(zzfVar.zzoL());
        this.zzafE = googleApiClient$ConnectionCallbacks;
        this.zzafF = googleApiClient$OnConnectionFailedListener;
    }

    static /* synthetic */ GoogleApiClient$zza zza(zzj zzjVar) {
        return zzjVar.zzafz;
    }

    static /* synthetic */ zzs zza(zzj zzjVar, zzs zzsVar) {
        zzjVar.zzafy = zzsVar;
        return zzsVar;
    }

    private Set<Scope> zza(Set<Scope> set) {
        Set<Scope> setZzb = zzb(set);
        if (setZzb == null) {
            return setZzb;
        }
        Iterator<Scope> it = setZzb.iterator();
        while (it.hasNext()) {
            if (!set.contains(it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setZzb;
    }

    static /* synthetic */ void zza(zzj zzjVar, int i, IInterface iInterface) {
        zzjVar.zzb(i, iInterface);
    }

    private boolean zza(int i, int i2, T t) {
        synchronized (this.zzpd) {
            if (this.zzafD != i) {
                return false;
            }
            zzb(i2, t);
            return true;
        }
    }

    static /* synthetic */ boolean zza(zzj zzjVar, int i, int i2, IInterface iInterface) {
        return zzjVar.zza(i, i2, iInterface);
    }

    static /* synthetic */ GoogleApiClient$ConnectionCallbacks zzb(zzj zzjVar) {
        return zzjVar.zzafE;
    }

    private void zzb(int i, T t) {
        zzx.zzaa((i == 3) == (t != null));
        synchronized (this.zzpd) {
            this.zzafD = i;
            this.zzafA = t;
            zzc(i, t);
            switch (i) {
                case 1:
                    zzoY();
                    break;
                case 2:
                    zzoX();
                    break;
                case 3:
                    zzoW();
                    break;
            }
        }
    }

    static /* synthetic */ ArrayList zzc(zzj zzjVar) {
        return zzjVar.zzafB;
    }

    static /* synthetic */ Set zzd(zzj zzjVar) {
        return zzjVar.zzTm;
    }

    static /* synthetic */ GoogleApiClient$OnConnectionFailedListener zze(zzj zzjVar) {
        return zzjVar.zzafF;
    }

    private void zzoX() {
        if (this.zzafC != null) {
            Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzfK());
            this.zzafx.zzb(zzfK(), this.zzafC, zzoV());
            this.zzafH.incrementAndGet();
        }
        this.zzafC = new zzj$zze(this, this.zzafH.get());
        if (this.zzafx.zza(zzfK(), this.zzafC, zzoV())) {
            return;
        }
        Log.e("GmsClient", "unable to connect to service: " + zzfK());
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzafH.get(), 9));
    }

    private void zzoY() {
        if (this.zzafC != null) {
            this.zzafx.zzb(zzfK(), this.zzafC, zzoV());
            this.zzafC = null;
        }
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public void disconnect() {
        this.zzafH.incrementAndGet();
        synchronized (this.zzafB) {
            int size = this.zzafB.size();
            for (int i = 0; i < size; i++) {
                this.zzafB.get(i).zzpi();
            }
            this.zzafB.clear();
        }
        zzb(1, null);
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        String str2;
        synchronized (this.zzpd) {
            i = this.zzafD;
            t = this.zzafA;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        switch (i) {
            case 1:
                str2 = "DISCONNECTED";
                break;
            case 2:
                str2 = "CONNECTING";
                break;
            case 3:
                str2 = "CONNECTED";
                break;
            case 4:
                str2 = "DISCONNECTING";
                break;
            default:
                str2 = "UNKNOWN";
                break;
        }
        printWriter.print(str2);
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.println("null");
        } else {
            printWriter.append((CharSequence) zzfL()).append("@").println(Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zzaaO;
    }

    @Override // com.google.android.gms.common.api.Api$zzb, com.google.android.gms.common.internal.zzk$zza
    public boolean isConnected() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzafD == 3;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzpd) {
            z = this.zzafD == 2;
        }
        return z;
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
    }

    protected void onConnectionSuspended(int i) {
    }

    protected abstract T zzW(IBinder iBinder);

    protected void zza(int i, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i2, -1, new zzj$zzi(this, i, bundle)));
    }

    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzj$zzg(this, i, iBinder, bundle)));
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public void zza(GoogleApiClient$zza googleApiClient$zza) {
        this.zzafz = (GoogleApiClient$zza) zzx.zzb(googleApiClient$zza, "Connection progress callbacks cannot be null.");
        zzb(2, null);
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public void zza(zzp zzpVar) {
        try {
            this.zzafy.zza(new zzj$zzd(this, this.zzafH.get()), new ValidateAccountRequest(zzpVar, (Scope[]) this.zzTm.toArray(new Scope[this.zzTm.size()]), this.mContext.getPackageName(), zzpd()));
        } catch (DeadObjectException unused) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (RemoteException e) {
            Log.w("GmsClient", "Remote exception occurred", e);
        }
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public void zza(zzp zzpVar, Set<Scope> set) {
        try {
            GetServiceRequest getServiceRequestZzg = new GetServiceRequest(this.zzafG).zzcl(this.mContext.getPackageName()).zzg(zzly());
            if (set != null) {
                getServiceRequestZzg.zzd(set);
            }
            if (zzlN()) {
                getServiceRequestZzg.zzc(zzoI()).zzc(zzpVar);
            } else if (zzpe()) {
                getServiceRequestZzg.zzc(this.zzQd);
            }
            this.zzafy.zza(new zzj$zzd(this, this.zzafH.get()), getServiceRequestZzg);
        } catch (DeadObjectException unused) {
            Log.w("GmsClient", "service died");
            zzbE(1);
        } catch (RemoteException e) {
            Log.w("GmsClient", "Remote exception occurred", e);
        }
    }

    protected Set<Scope> zzb(Set<Scope> set) {
        return set;
    }

    public void zzbE(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, this.zzafH.get(), i));
    }

    protected void zzbF(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, i, -1, new zzj$zzh(this)));
    }

    protected void zzc(int i, T t) {
    }

    protected abstract String zzfK();

    protected abstract String zzfL();

    @Override // com.google.android.gms.common.api.Api$zzb
    public boolean zzlN() {
        return false;
    }

    protected Bundle zzly() {
        return new Bundle();
    }

    @Override // com.google.android.gms.common.internal.zzk$zza
    public Bundle zzmS() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Api$zzb
    public IBinder zznz() {
        if (this.zzafy == null) {
            return null;
        }
        return this.zzafy.asBinder();
    }

    public final Account zzoI() {
        return this.zzQd != null ? this.zzQd : new Account("<<default account>>", "com.google");
    }

    protected final String zzoV() {
        return this.zzabI.zzoO();
    }

    protected void zzoW() {
    }

    public void zzoZ() {
        int iIsGooglePlayServicesAvailable = this.zzaaP.isGooglePlayServicesAvailable(this.mContext);
        if (iIsGooglePlayServicesAvailable == 0) {
            zza(new zzj$zzf(this));
            return;
        }
        zzb(1, null);
        this.zzafz = new zzj$zzf(this);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzafH.get(), iIsGooglePlayServicesAvailable));
    }

    protected final zzf zzpa() {
        return this.zzabI;
    }

    protected final void zzpb() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public final T zzpc() throws DeadObjectException {
        T t;
        synchronized (this.zzpd) {
            if (this.zzafD == 4) {
                throw new DeadObjectException();
            }
            zzpb();
            zzx.zza(this.zzafA != null, "Client is connected but service is null");
            t = this.zzafA;
        }
        return t;
    }

    protected Bundle zzpd() {
        return null;
    }

    public boolean zzpe() {
        return false;
    }
}
