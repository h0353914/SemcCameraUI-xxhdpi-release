package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api$zza;
import com.google.android.gms.common.api.Api$zzb;
import com.google.android.gms.common.api.Api$zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf$zza;
import com.google.android.gms.common.internal.zzp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public class zzlg implements zzlj {
    private final Context mContext;
    private final GoogleApiAvailability zzaaP;
    private final Api$zza<? extends zzqw, zzqx> zzaaQ;
    private zzqw zzabB;
    private int zzabC;
    private boolean zzabD;
    private boolean zzabE;
    private zzp zzabF;
    private boolean zzabG;
    private boolean zzabH;
    private final zzf zzabI;
    private final Map<Api<?>, Integer> zzabJ;
    private final zzli zzabr;
    private final Lock zzabt;
    private ConnectionResult zzabu;
    private int zzabv;
    private int zzaby;
    private int zzabw = 0;
    private boolean zzabx = false;
    private final Bundle zzabz = new Bundle();
    private final Set<Api$zzc> zzabA = new HashSet();
    private ArrayList<Future<?>> zzabK = new ArrayList<>();

    public zzlg(zzli zzliVar, zzf zzfVar, Map<Api<?>, Integer> map, GoogleApiAvailability googleApiAvailability, Api$zza<? extends zzqw, zzqx> api$zza, Lock lock, Context context) {
        this.zzabr = zzliVar;
        this.zzabI = zzfVar;
        this.zzabJ = map;
        this.zzaaP = googleApiAvailability;
        this.zzaaQ = api$zza;
        this.zzabt = lock;
        this.mContext = context;
    }

    private void zzY(boolean z) {
        if (this.zzabB != null) {
            if (this.zzabB.isConnected() && z) {
                this.zzabB.zzCe();
            }
            this.zzabB.disconnect();
            this.zzabF = null;
        }
    }

    static /* synthetic */ Context zza(zzlg zzlgVar) {
        return zzlgVar.mContext;
    }

    private void zza(ResolveAccountResponse resolveAccountResponse) {
        if (zzbn(0)) {
            ConnectionResult connectionResultZzpr = resolveAccountResponse.zzpr();
            if (connectionResultZzpr.isSuccess()) {
                this.zzabF = resolveAccountResponse.zzpq();
                this.zzabE = true;
                this.zzabG = resolveAccountResponse.zzps();
                this.zzabH = resolveAccountResponse.zzpt();
            } else {
                if (!zze(connectionResultZzpr)) {
                    zzf(connectionResultZzpr);
                    return;
                }
                zznV();
            }
            zznQ();
        }
    }

    static /* synthetic */ void zza(zzlg zzlgVar, ConnectionResult connectionResult) {
        zzlgVar.zzf(connectionResult);
    }

    static /* synthetic */ void zza(zzlg zzlgVar, ConnectionResult connectionResult, Api api, int i) {
        zzlgVar.zzb(connectionResult, api, i);
    }

    static /* synthetic */ void zza(zzlg zzlgVar, ResolveAccountResponse resolveAccountResponse) {
        zzlgVar.zza(resolveAccountResponse);
    }

    private boolean zza(int i, int i2, ConnectionResult connectionResult) {
        if (i2 != 1 || zzd(connectionResult)) {
            return this.zzabu == null || i < this.zzabv;
        }
        return false;
    }

    static /* synthetic */ boolean zza(zzlg zzlgVar, int i) {
        return zzlgVar.zzbn(i);
    }

    static /* synthetic */ GoogleApiAvailability zzb(zzlg zzlgVar) {
        return zzlgVar.zzaaP;
    }

    private void zzb(ConnectionResult connectionResult, Api<?> api, int i) {
        if (i != 2) {
            int priority = api.zznv().getPriority();
            if (zza(priority, i, connectionResult)) {
                this.zzabu = connectionResult;
                this.zzabv = priority;
            }
        }
        this.zzabr.zzach.put(api.zznx(), connectionResult);
    }

    static /* synthetic */ boolean zzb(zzlg zzlgVar, ConnectionResult connectionResult) {
        return zzlgVar.zze(connectionResult);
    }

    private boolean zzbn(int i) {
        if (this.zzabw == i) {
            return true;
        }
        Log.i("GoogleApiClientConnecting", this.zzabr.zzog());
        Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + zzbo(this.zzabw) + " but received callback for step " + zzbo(i), new Exception());
        zzf(new ConnectionResult(8, null));
        return false;
    }

    private String zzbo(int i) {
        switch (i) {
            case 0:
                return "STEP_GETTING_SERVICE_BINDINGS";
            case 1:
                return "STEP_VALIDATING_ACCOUNT";
            case 2:
                return "STEP_AUTHENTICATING";
            case 3:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    static /* synthetic */ Lock zzc(zzlg zzlgVar) {
        return zzlgVar.zzabt;
    }

    private void zzc(ConnectionResult connectionResult) {
        if (zzbn(2)) {
            if (!connectionResult.isSuccess()) {
                if (!zze(connectionResult)) {
                    zzf(connectionResult);
                    return;
                }
                zznV();
            }
            zznT();
        }
    }

    static /* synthetic */ void zzc(zzlg zzlgVar, ConnectionResult connectionResult) {
        zzlgVar.zzc(connectionResult);
    }

    static /* synthetic */ zzli zzd(zzlg zzlgVar) {
        return zzlgVar.zzabr;
    }

    private boolean zzd(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.zzaaP.zzbi(connectionResult.getErrorCode()) != null;
    }

    private boolean zze(ConnectionResult connectionResult) {
        if (this.zzabC != 2) {
            return this.zzabC == 1 && !connectionResult.hasResolution();
        }
        return true;
    }

    static /* synthetic */ boolean zze(zzlg zzlgVar) {
        return zzlgVar.zzabD;
    }

    static /* synthetic */ zzqw zzf(zzlg zzlgVar) {
        return zzlgVar.zzabB;
    }

    private void zzf(ConnectionResult connectionResult) {
        zznW();
        zzY(!connectionResult.hasResolution());
        this.zzabr.zzach.clear();
        this.zzabr.zzg(connectionResult);
        if (!this.zzaaP.zzd(this.mContext, connectionResult.getErrorCode())) {
            this.zzabr.zzof();
        }
        if (!this.zzabx && !this.zzabr.zzoc()) {
            this.zzabr.zzabZ.zzi(connectionResult);
        }
        this.zzabx = false;
        this.zzabr.zzabZ.zzpk();
    }

    static /* synthetic */ zzp zzg(zzlg zzlgVar) {
        return zzlgVar.zzabF;
    }

    static /* synthetic */ Set zzh(zzlg zzlgVar) {
        return zzlgVar.zznX();
    }

    static /* synthetic */ void zzi(zzlg zzlgVar) {
        zzlgVar.zznV();
    }

    static /* synthetic */ void zzj(zzlg zzlgVar) {
        zzlgVar.zznT();
    }

    static /* synthetic */ boolean zzk(zzlg zzlgVar) {
        return zzlgVar.zznP();
    }

    static /* synthetic */ void zzl(zzlg zzlgVar) {
        zzlgVar.zznQ();
    }

    static /* synthetic */ void zzm(zzlg zzlgVar) {
        zzlgVar.zznS();
    }

    private boolean zznP() {
        ConnectionResult connectionResult;
        this.zzaby--;
        if (this.zzaby > 0) {
            return false;
        }
        if (this.zzaby < 0) {
            Log.i("GoogleApiClientConnecting", this.zzabr.zzog());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            connectionResult = new ConnectionResult(8, null);
        } else {
            if (this.zzabu == null) {
                return true;
            }
            connectionResult = this.zzabu;
        }
        zzf(connectionResult);
        return false;
    }

    private void zznQ() {
        if (this.zzaby != 0) {
            return;
        }
        if (!this.zzabD) {
            zznT();
        } else if (this.zzabE) {
            zznR();
        }
    }

    private void zznR() {
        ArrayList arrayList = new ArrayList();
        this.zzabw = 1;
        this.zzaby = this.zzabr.zzacg.size();
        for (Api$zzc<?> api$zzc : this.zzabr.zzacg.keySet()) {
            if (!this.zzabr.zzach.containsKey(api$zzc)) {
                arrayList.add(this.zzabr.zzacg.get(api$zzc));
            } else if (zznP()) {
                zznS();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.zzabK.add(zzlk.zzoj().submit(new zzlg$zzh(this, arrayList)));
    }

    private void zznS() {
        this.zzabw = 2;
        this.zzabr.zzaci = zznX();
        this.zzabK.add(zzlk.zzoj().submit(new zzlg$zzc(this, null)));
    }

    private void zznT() {
        ArrayList arrayList = new ArrayList();
        this.zzabw = 3;
        this.zzaby = this.zzabr.zzacg.size();
        for (Api$zzc<?> api$zzc : this.zzabr.zzacg.keySet()) {
            if (!this.zzabr.zzach.containsKey(api$zzc)) {
                arrayList.add(this.zzabr.zzacg.get(api$zzc));
            } else if (zznP()) {
                zznU();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.zzabK.add(zzlk.zzoj().submit(new zzlg$zzf(this, arrayList)));
    }

    private void zznU() {
        this.zzabr.zzob();
        zzlk.zzoj().execute(new zzlg$1(this));
        if (this.zzabB != null) {
            if (this.zzabG) {
                this.zzabB.zza(this.zzabF, this.zzabH);
            }
            zzY(false);
        }
        Iterator<Api$zzc<?>> it = this.zzabr.zzach.keySet().iterator();
        while (it.hasNext()) {
            this.zzabr.zzacg.get(it.next()).disconnect();
        }
        if (!this.zzabx) {
            this.zzabr.zzabZ.zzh(this.zzabz.isEmpty() ? null : this.zzabz);
        } else {
            this.zzabx = false;
            disconnect();
        }
    }

    private void zznV() {
        this.zzabD = false;
        this.zzabr.zzaci = Collections.emptySet();
        for (Api$zzc<?> api$zzc : this.zzabA) {
            if (!this.zzabr.zzach.containsKey(api$zzc)) {
                this.zzabr.zzach.put(api$zzc, new ConnectionResult(17, null));
            }
        }
    }

    private void zznW() {
        Iterator<Future<?>> it = this.zzabK.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.zzabK.clear();
    }

    private Set<Scope> zznX() {
        HashSet hashSet = new HashSet(this.zzabI.zzoK());
        Map<Api<?>, zzf$zza> mapZzoM = this.zzabI.zzoM();
        for (Api<?> api : mapZzoM.keySet()) {
            if (!this.zzabr.zzach.containsKey(api.zznx())) {
                hashSet.addAll(mapZzoM.get(api).zzTm);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void begin() {
        this.zzabr.zzabZ.zzpl();
        this.zzabr.zzach.clear();
        this.zzabx = false;
        this.zzabD = false;
        this.zzabu = null;
        this.zzabw = 0;
        this.zzabC = 2;
        this.zzabE = false;
        this.zzabG = false;
        HashMap map = new HashMap();
        boolean z = false;
        for (Api<?> api : this.zzabJ.keySet()) {
            Api$zzb api$zzb = this.zzabr.zzacg.get(api.zznx());
            int iIntValue = this.zzabJ.get(api).intValue();
            z |= api.zznv().getPriority() == 1;
            if (api$zzb.zzlN()) {
                this.zzabD = true;
                if (iIntValue < this.zzabC) {
                    this.zzabC = iIntValue;
                }
                if (iIntValue != 0) {
                    this.zzabA.add(api.zznx());
                }
            }
            map.put(api$zzb, new zzlg$zzd(this, api, iIntValue));
        }
        if (z) {
            this.zzabD = false;
        }
        if (this.zzabD) {
            this.zzabI.zza(Integer.valueOf(this.zzabr.getSessionId()));
            zzlg$zzg zzlg_zzg = new zzlg$zzg(this, null);
            this.zzabB = (zzqw) this.zzaaQ.zza(this.mContext, this.zzabr.getLooper(), this.zzabI, this.zzabI.zzoQ(), zzlg_zzg, zzlg_zzg);
        }
        this.zzaby = this.zzabr.zzacg.size();
        this.zzabK.add(zzlk.zzoj().submit(new zzlg$zze(this, map)));
    }

    @Override // com.google.android.gms.internal.zzlj
    public void connect() {
        this.zzabx = false;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void disconnect() {
        Iterator<zzli$zzf<?>> it = this.zzabr.zzaca.iterator();
        while (it.hasNext()) {
            zzli$zzf<?> next = it.next();
            if (next.zznK() != 1) {
                next.cancel();
                it.remove();
            }
        }
        this.zzabr.zznY();
        if (this.zzabu == null && !this.zzabr.zzaca.isEmpty()) {
            this.zzabx = true;
            return;
        }
        zznW();
        zzY(true);
        this.zzabr.zzach.clear();
        this.zzabr.zzg(null);
        this.zzabr.zzabZ.zzpk();
    }

    @Override // com.google.android.gms.internal.zzlj
    public String getName() {
        return "CONNECTING";
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnected(Bundle bundle) {
        if (zzbn(3)) {
            if (bundle != null) {
                this.zzabz.putAll(bundle);
            }
            if (zznP()) {
                zznU();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public void onConnectionSuspended(int i) {
        zzf(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api$zzb, R extends Result, T extends zzlb$zza<R, A>> T zza(T t) {
        this.zzabr.zzaca.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzlj
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
        if (zzbn(3)) {
            zzb(connectionResult, api, i);
            if (zznP()) {
                zznU();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlj
    public <A extends Api$zzb, T extends zzlb$zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
