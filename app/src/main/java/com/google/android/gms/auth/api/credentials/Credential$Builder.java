package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

public class Credential$Builder {
    private String mName;
    private Uri zzSh;
    private List<IdToken> zzSi;
    private String zzSj;
    private String zzSk;
    private String zzSl;
    private String zzSm;
    private final String zzwN;

    public Credential$Builder(Credential credential) {
        this.zzwN = Credential.zza(credential);
        this.mName = Credential.zzb(credential);
        this.zzSh = Credential.zzc(credential);
        this.zzSi = Credential.zzd(credential);
        this.zzSj = Credential.zze(credential);
        this.zzSk = Credential.zzf(credential);
        this.zzSl = Credential.zzg(credential);
        this.zzSm = Credential.zzh(credential);
    }

    public Credential$Builder(String str) {
        this.zzwN = str;
    }

    public Credential build() {
        if (TextUtils.isEmpty(this.zzSj) || TextUtils.isEmpty(this.zzSk)) {
            return new Credential(3, this.zzwN, this.mName, this.zzSh, this.zzSi, this.zzSj, this.zzSk, this.zzSl, this.zzSm);
        }
        throw new IllegalStateException("Only one of password or accountType may be set");
    }

    public Credential$Builder setAccountType(String str) {
        String scheme = Uri.parse(str).getScheme();
        zzx.zzaa("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme));
        this.zzSk = str;
        return this;
    }

    public Credential$Builder setName(String str) {
        this.mName = str;
        return this;
    }

    public Credential$Builder setPassword(String str) {
        this.zzSj = str;
        return this;
    }

    public Credential$Builder setProfilePictureUri(Uri uri) {
        this.zzSh = uri;
        return this;
    }
}
