package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzj$zzf;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class zzi extends zzj<zzf> implements zzqw {
    private final boolean zzaVl;
    private final ExecutorService zzaVm;
    private final zzqx zzaaT;
    private final com.google.android.gms.common.internal.zzf zzabI;
    private Integer zzafj;

    public zzi(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzf zzfVar, zzqx zzqxVar, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener, ExecutorService executorService) {
        super(context, looper, 44, zzfVar, googleApiClient$ConnectionCallbacks, googleApiClient$OnConnectionFailedListener);
        this.zzaVl = z;
        this.zzabI = zzfVar;
        this.zzaaT = zzqxVar;
        this.zzafj = zzfVar.zzoR();
        this.zzaVm = executorService;
    }

    public static Bundle zza(zzqx zzqxVar, Integer num, ExecutorService executorService) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzqxVar.zzCf());
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzqxVar.zzlY());
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzqxVar.zzmb());
        if (zzqxVar.zzCg() != null) {
            bundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new zzi$zza(zzqxVar, executorService).asBinder()));
        }
        if (num != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", num.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", zzqxVar.zzCh());
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzqxVar.zzma());
        return bundle;
    }

    @Override // com.google.android.gms.internal.zzqw
    public void connect() {
        zza(new zzj$zzf(this));
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zzCe() {
        try {
            zzpc().zzjq(this.zzafj.intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzdO(iBinder);
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzp zzpVar, Set<Scope> set, zze zzeVar) {
        zzx.zzb(zzeVar, "Expecting a valid ISignInCallbacks");
        try {
            zzpc().zza(new AuthAccountRequest(zzpVar, set), zzeVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when authAccount is called");
            try {
                zzeVar.zza(new ConnectionResult(8, null), new AuthAccountResult());
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzp zzpVar, boolean z) {
        try {
            zzpc().zza(zzpVar, this.zzafj.intValue(), z);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzqw
    public void zza(zzt zztVar) {
        zzx.zzb(zztVar, "Expecting a valid IResolveAccountCallbacks");
        try {
            zzpc().zza(new ResolveAccountRequest(this.zzabI.zzoI(), this.zzafj.intValue()), zztVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when resolveAccount is called");
            try {
                zztVar.zzb(new ResolveAccountResponse(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    protected zzf zzdO(IBinder iBinder) {
        return zzf$zza.zzdN(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfK() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected String zzfL() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.zzj, com.google.android.gms.common.api.Api$zzb
    public boolean zzlN() {
        return this.zzaVl;
    }

    @Override // com.google.android.gms.common.internal.zzj
    protected Bundle zzly() {
        Bundle bundleZza = zza(this.zzaaT, this.zzabI.zzoR(), this.zzaVm);
        if (!getContext().getPackageName().equals(this.zzabI.zzoN())) {
            bundleZza.putString("com.google.android.gms.signin.internal.realClientPackageName", this.zzabI.zzoN());
        }
        return bundleZza;
    }
}
