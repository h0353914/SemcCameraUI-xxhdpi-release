package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzf$zza {
    public final Set<Scope> zzTm;
    public final boolean zzafk;

    public zzf$zza(Set<Scope> set, boolean z) {
        zzx.zzw(set);
        this.zzTm = Collections.unmodifiableSet(set);
        this.zzafk = z;
    }
}
