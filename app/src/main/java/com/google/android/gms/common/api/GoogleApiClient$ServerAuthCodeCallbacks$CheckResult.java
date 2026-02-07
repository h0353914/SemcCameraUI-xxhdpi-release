package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class GoogleApiClient$ServerAuthCodeCallbacks$CheckResult {
    private Set<Scope> zzTm;
    private boolean zzaaV;

    private GoogleApiClient$ServerAuthCodeCallbacks$CheckResult(boolean z, Set<Scope> set) {
        this.zzaaV = z;
        this.zzTm = set;
    }

    public static GoogleApiClient$ServerAuthCodeCallbacks$CheckResult newAuthNotRequiredResult() {
        return new GoogleApiClient$ServerAuthCodeCallbacks$CheckResult(false, null);
    }

    public static GoogleApiClient$ServerAuthCodeCallbacks$CheckResult newAuthRequiredResult(Set<Scope> set) {
        zzx.zzb((set == null || set.isEmpty()) ? false : true, "A non-empty scope set is required if further auth is needed.");
        return new GoogleApiClient$ServerAuthCodeCallbacks$CheckResult(true, set);
    }

    public boolean zznD() {
        return this.zzaaV;
    }

    public Set<Scope> zznE() {
        return this.zzTm;
    }
}
