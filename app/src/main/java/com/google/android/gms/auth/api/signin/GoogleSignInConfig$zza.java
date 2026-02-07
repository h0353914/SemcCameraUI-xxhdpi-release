package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class GoogleSignInConfig$zza {
    private Account zzQd;
    private boolean zzTi;
    private boolean zzTj;
    private boolean zzTk;
    private String zzTl;
    private Set<Scope> zzTm = new HashSet(Arrays.asList(GoogleSignInConfig.zzTg));

    public GoogleSignInConfig zzmc() {
        return new GoogleSignInConfig(this.zzTm, this.zzQd, this.zzTi, this.zzTj, this.zzTk, this.zzTl, (GoogleSignInConfig$1) null);
    }
}
