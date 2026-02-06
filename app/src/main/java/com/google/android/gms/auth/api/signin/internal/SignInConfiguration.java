package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.EmailSignInConfig;
import com.google.android.gms.auth.api.signin.FacebookSignInConfig;
import com.google.android.gms.auth.api.signin.GoogleSignInConfig;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public final class SignInConfiguration implements SafeParcelable {
    public static final Parcelable$Creator<SignInConfiguration> CREATOR = new zzh();
    private static int zzTr = 31;
    final int versionCode;
    private String zzTl;
    private final String zzTs;
    private EmailSignInConfig zzTt;
    private GoogleSignInConfig zzTu;
    private FacebookSignInConfig zzTv;
    private String zzTw;

    SignInConfiguration(int i, String str, String str2, EmailSignInConfig emailSignInConfig, GoogleSignInConfig googleSignInConfig, FacebookSignInConfig facebookSignInConfig, String str3) {
        this.versionCode = i;
        this.zzTs = zzx.zzcr(str);
        this.zzTl = str2;
        this.zzTt = emailSignInConfig;
        this.zzTu = googleSignInConfig;
        this.zzTv = facebookSignInConfig;
        this.zzTw = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0039 A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044 A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005b A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072 A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082 A[Catch: ClassCastException -> 0x0096, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0089 A[Catch: ClassCastException -> 0x0096, TRY_LEAVE, TryCatch #0 {ClassCastException -> 0x0096, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x001a, B:14:0x0031, B:16:0x0039, B:21:0x0050, B:23:0x0054, B:28:0x0067, B:30:0x006b, B:35:0x007e, B:37:0x0082, B:40:0x0089, B:33:0x0072, B:26:0x005b, B:19:0x0044, B:12:0x0025), top: B:46:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        SignInConfiguration signInConfiguration;
        boolean z = false;
        if (obj == null) {
            return false;
        }
        try {
            signInConfiguration = (SignInConfiguration) obj;
        } catch (ClassCastException unused) {
        }
        if (this.zzTs.equals(signInConfiguration.zzme())) {
            if (TextUtils.isEmpty(this.zzTl)) {
                if (TextUtils.isEmpty(signInConfiguration.zzmb())) {
                    if (TextUtils.isEmpty(this.zzTw)) {
                        if (this.zzTw.equals(signInConfiguration.zzmi())) {
                            if (this.zzTt != null) {
                            }
                        }
                    } else if (TextUtils.isEmpty(signInConfiguration.zzmi())) {
                        if (this.zzTt != null) {
                            if (signInConfiguration.zzmf() == null) {
                                if (this.zzTv != null) {
                                    if (signInConfiguration.zzmh() == null) {
                                        if (this.zzTu != null) {
                                            if (signInConfiguration.zzmg() == null) {
                                                z = true;
                                            }
                                        } else if (this.zzTu.equals(signInConfiguration.zzmg())) {
                                            z = true;
                                        }
                                    }
                                } else if (this.zzTv.equals(signInConfiguration.zzmh())) {
                                    if (this.zzTu != null) {
                                    }
                                }
                            }
                        } else if (this.zzTt.equals(signInConfiguration.zzmf())) {
                            if (this.zzTv != null) {
                            }
                        }
                    }
                }
            } else if (this.zzTl.equals(signInConfiguration.zzmb())) {
                if (TextUtils.isEmpty(this.zzTw)) {
                }
            }
            return z;
        }
        return z;
    }

    public int hashCode() {
        return new zzc().zzl(this.zzTs).zzl(this.zzTl).zzl(this.zzTw).zzl(this.zzTt).zzl(this.zzTu).zzl(this.zzTv).zzmd();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public String zzmb() {
        return this.zzTl;
    }

    public String zzme() {
        return this.zzTs;
    }

    public EmailSignInConfig zzmf() {
        return this.zzTt;
    }

    public GoogleSignInConfig zzmg() {
        return this.zzTu;
    }

    public FacebookSignInConfig zzmh() {
        return this.zzTv;
    }

    public String zzmi() {
        return this.zzTw;
    }
}
