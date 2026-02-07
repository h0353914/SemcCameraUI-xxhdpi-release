package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf$zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlp;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqu;
import com.google.android.gms.internal.zzqw;
import com.google.android.gms.internal.zzqx;
import com.google.android.gms.internal.zzqx$zza;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class GoogleApiClient$Builder {
    private final Context mContext;
    private Account zzQd;
    private String zzRq;
    private final Set<Scope> zzaaF;
    private int zzaaG;
    private View zzaaH;
    private String zzaaI;
    private final Map<Api<?>, zzf$zza> zzaaJ;
    private final Map<Api<?>, Api$ApiOptions> zzaaK;
    private FragmentActivity zzaaL;
    private int zzaaM;
    private GoogleApiClient$OnConnectionFailedListener zzaaN;
    private Looper zzaaO;
    private GoogleApiAvailability zzaaP;
    private Api$zza<? extends zzqw, zzqx> zzaaQ;
    private final ArrayList<GoogleApiClient$ConnectionCallbacks> zzaaR;
    private final ArrayList<GoogleApiClient$OnConnectionFailedListener> zzaaS;
    private zzqx zzaaT;

    public GoogleApiClient$Builder(Context context) {
        this.zzaaF = new HashSet();
        this.zzaaJ = new zzme();
        this.zzaaK = new zzme();
        this.zzaaM = -1;
        this.zzaaP = GoogleApiAvailability.getInstance();
        this.zzaaQ = zzqu.zzRl;
        this.zzaaR = new ArrayList<>();
        this.zzaaS = new ArrayList<>();
        this.mContext = context;
        this.zzaaO = context.getMainLooper();
        this.zzRq = context.getPackageName();
        this.zzaaI = context.getClass().getName();
    }

    public GoogleApiClient$Builder(Context context, GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        this(context);
        zzx.zzb(googleApiClient$ConnectionCallbacks, "Must provide a connected listener");
        this.zzaaR.add(googleApiClient$ConnectionCallbacks);
        zzx.zzb(googleApiClient$OnConnectionFailedListener, "Must provide a connection failed listener");
        this.zzaaS.add(googleApiClient$OnConnectionFailedListener);
    }

    static /* synthetic */ FragmentActivity zza(GoogleApiClient$Builder googleApiClient$Builder) {
        return googleApiClient$Builder.zzaaL;
    }

    private <O extends Api$ApiOptions> void zza(Api<O> api, O o, int i, Scope... scopeArr) {
        boolean z = true;
        if (i != 1) {
            if (i != 2) {
                throw new IllegalArgumentException("Invalid resolution mode: '" + i + "', use a constant from GoogleApiClient.ResolutionMode");
            }
            z = false;
        }
        HashSet hashSet = new HashSet(api.zznv().zzm(o));
        for (Scope scope : scopeArr) {
            hashSet.add(scope);
        }
        this.zzaaJ.put(api, new zzf$zza(hashSet, z));
    }

    static /* synthetic */ void zza(GoogleApiClient$Builder googleApiClient$Builder, zzlp zzlpVar, GoogleApiClient googleApiClient) {
        googleApiClient$Builder.zza(zzlpVar, googleApiClient);
    }

    private void zza(zzlp zzlpVar, GoogleApiClient googleApiClient) {
        zzlpVar.zza(this.zzaaM, googleApiClient, this.zzaaN);
    }

    private GoogleApiClient zznC() {
        zzli zzliVar = new zzli(this.mContext.getApplicationContext(), this.zzaaO, zznB(), this.zzaaP, this.zzaaQ, this.zzaaK, this.zzaaR, this.zzaaS, this.zzaaM);
        zzlp zzlpVarZza = zzlp.zza(this.zzaaL);
        if (zzlpVarZza == null) {
            new Handler(this.mContext.getMainLooper()).post(new GoogleApiClient$Builder$1(this, zzliVar));
            return zzliVar;
        }
        zza(zzlpVarZza, zzliVar);
        return zzliVar;
    }

    public GoogleApiClient$Builder addApi(Api<? extends Api$ApiOptions$NotRequiredOptions> api) {
        zzx.zzb(api, "Api must not be null");
        this.zzaaK.put(api, null);
        this.zzaaF.addAll(api.zznv().zzm(null));
        return this;
    }

    public <O extends Api$ApiOptions$HasOptions> GoogleApiClient$Builder addApi(Api<O> api, O o) {
        zzx.zzb(api, "Api must not be null");
        zzx.zzb(o, "Null options are not permitted for this Api");
        this.zzaaK.put(api, o);
        this.zzaaF.addAll(api.zznv().zzm(o));
        return this;
    }

    public <O extends Api$ApiOptions$HasOptions> GoogleApiClient$Builder addApiIfAvailable(Api<O> api, O o, Scope... scopeArr) {
        zzx.zzb(api, "Api must not be null");
        zzx.zzb(o, "Null options are not permitted for this Api");
        this.zzaaK.put(api, o);
        zza(api, o, 1, scopeArr);
        return this;
    }

    public GoogleApiClient$Builder addApiIfAvailable(Api<? extends Api$ApiOptions$NotRequiredOptions> api, Scope... scopeArr) {
        zzx.zzb(api, "Api must not be null");
        this.zzaaK.put(api, null);
        zza(api, null, 1, scopeArr);
        return this;
    }

    public GoogleApiClient$Builder addConnectionCallbacks(GoogleApiClient$ConnectionCallbacks googleApiClient$ConnectionCallbacks) {
        zzx.zzb(googleApiClient$ConnectionCallbacks, "Listener must not be null");
        this.zzaaR.add(googleApiClient$ConnectionCallbacks);
        return this;
    }

    public GoogleApiClient$Builder addOnConnectionFailedListener(GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        zzx.zzb(googleApiClient$OnConnectionFailedListener, "Listener must not be null");
        this.zzaaS.add(googleApiClient$OnConnectionFailedListener);
        return this;
    }

    public GoogleApiClient$Builder addScope(Scope scope) {
        zzx.zzb(scope, "Scope must not be null");
        this.zzaaF.add(scope);
        return this;
    }

    public GoogleApiClient build() {
        zzx.zzb(!this.zzaaK.isEmpty(), "must call addApi() to add at least one API");
        return this.zzaaM >= 0 ? zznC() : new zzli(this.mContext, this.zzaaO, zznB(), this.zzaaP, this.zzaaQ, this.zzaaK, this.zzaaR, this.zzaaS, -1);
    }

    public GoogleApiClient$Builder enableAutoManage(FragmentActivity fragmentActivity, int i, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        zzx.zzb(i >= 0, "clientId must be non-negative");
        this.zzaaM = i;
        this.zzaaL = (FragmentActivity) zzx.zzb(fragmentActivity, "Null activity is not permitted.");
        this.zzaaN = googleApiClient$OnConnectionFailedListener;
        return this;
    }

    public GoogleApiClient$Builder enableAutoManage(FragmentActivity fragmentActivity, GoogleApiClient$OnConnectionFailedListener googleApiClient$OnConnectionFailedListener) {
        return enableAutoManage(fragmentActivity, 0, googleApiClient$OnConnectionFailedListener);
    }

    public GoogleApiClient$Builder requestServerAuthCode(String str, GoogleApiClient$ServerAuthCodeCallbacks googleApiClient$ServerAuthCodeCallbacks) {
        this.zzaaT = new zzqx$zza().zza(str, googleApiClient$ServerAuthCodeCallbacks).zzCi();
        return this;
    }

    public GoogleApiClient$Builder setAccountName(String str) {
        this.zzQd = str == null ? null : new Account(str, "com.google");
        return this;
    }

    public GoogleApiClient$Builder setGravityForPopups(int i) {
        this.zzaaG = i;
        return this;
    }

    public GoogleApiClient$Builder setHandler(Handler handler) {
        zzx.zzb(handler, "Handler must not be null");
        this.zzaaO = handler.getLooper();
        return this;
    }

    public GoogleApiClient$Builder setViewForPopups(View view) {
        zzx.zzb(view, "View must not be null");
        this.zzaaH = view;
        return this;
    }

    public GoogleApiClient$Builder useDefaultAccount() {
        return setAccountName("<<default account>>");
    }

    public zzf zznB() {
        if (this.zzaaK.containsKey(zzqu.API)) {
            zzx.zza(this.zzaaT == null, "SignIn.API can't be used in conjunction with requestServerAuthCode.");
            this.zzaaT = (zzqx) this.zzaaK.get(zzqu.API);
        }
        return new zzf(this.zzQd, this.zzaaF, this.zzaaJ, this.zzaaG, this.zzaaH, this.zzRq, this.zzaaI, this.zzaaT != null ? this.zzaaT : zzqx.zzaUZ);
    }
}
