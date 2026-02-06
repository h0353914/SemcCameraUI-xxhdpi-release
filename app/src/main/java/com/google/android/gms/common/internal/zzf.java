package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient$Builder;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzqx;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class zzf {
    private final Account zzQd;
    private final String zzRq;
    private final Set<Scope> zzaaF;
    private final int zzaaG;
    private final View zzaaH;
    private final String zzaaI;
    private final zzqx zzaaT;
    private final Set<Scope> zzafh;
    private final Map<Api<?>, zzf$zza> zzafi;
    private Integer zzafj;

    public zzf(Account account, Set<Scope> set, Map<Api<?>, zzf$zza> map, int i, View view, String str, String str2, zzqx zzqxVar) {
        this.zzQd = account;
        this.zzaaF = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.zzafi = map == null ? Collections.EMPTY_MAP : map;
        this.zzaaH = view;
        this.zzaaG = i;
        this.zzRq = str;
        this.zzaaI = str2;
        this.zzaaT = zzqxVar;
        HashSet hashSet = new HashSet(this.zzaaF);
        Iterator<zzf$zza> it = this.zzafi.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().zzTm);
        }
        this.zzafh = Collections.unmodifiableSet(hashSet);
    }

    public static zzf zzak(Context context) {
        return new GoogleApiClient$Builder(context).zznB();
    }

    public Account getAccount() {
        return this.zzQd;
    }

    @Deprecated
    public String getAccountName() {
        if (this.zzQd != null) {
            return this.zzQd.name;
        }
        return null;
    }

    public void zza(Integer num) {
        this.zzafj = num;
    }

    public Set<Scope> zzb(Api<?> api) {
        zzf$zza zzf_zza = this.zzafi.get(api);
        if (zzf_zza == null || zzf_zza.zzTm.isEmpty()) {
            return this.zzaaF;
        }
        HashSet hashSet = new HashSet(this.zzaaF);
        hashSet.addAll(zzf_zza.zzTm);
        return hashSet;
    }

    public Account zzoI() {
        return this.zzQd != null ? this.zzQd : new Account("<<default account>>", "com.google");
    }

    public int zzoJ() {
        return this.zzaaG;
    }

    public Set<Scope> zzoK() {
        return this.zzaaF;
    }

    public Set<Scope> zzoL() {
        return this.zzafh;
    }

    public Map<Api<?>, zzf$zza> zzoM() {
        return this.zzafi;
    }

    public String zzoN() {
        return this.zzRq;
    }

    public String zzoO() {
        return this.zzaaI;
    }

    public View zzoP() {
        return this.zzaaH;
    }

    public zzqx zzoQ() {
        return this.zzaaT;
    }

    public Integer zzoR() {
        return this.zzafj;
    }
}
