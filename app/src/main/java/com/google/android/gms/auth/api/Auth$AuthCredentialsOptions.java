package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.api.Api$ApiOptions$Optional;

/* JADX INFO: loaded from: classes.dex */
public final class Auth$AuthCredentialsOptions implements Api$ApiOptions$Optional {
    private final String zzRY;
    private final PasswordSpecification zzRZ;

    public Bundle zzly() {
        Bundle bundle = new Bundle();
        bundle.putString("consumer_package", this.zzRY);
        bundle.putParcelable("password_specification", this.zzRZ);
        return bundle;
    }
}
