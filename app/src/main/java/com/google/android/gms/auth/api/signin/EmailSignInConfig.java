package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public class EmailSignInConfig implements SafeParcelable {
    public static final Parcelable$Creator<EmailSignInConfig> CREATOR = new zza();
    final int versionCode;
    private final Uri zzSU;
    private String zzSV;
    private Uri zzSW;

    EmailSignInConfig(int i, Uri uri, String str, Uri uri2) {
        zzx.zzb(uri, "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzh(uri.toString(), "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzb(Patterns.WEB_URL.matcher(uri.toString()).matches(), "Invalid server widget url");
        this.versionCode = i;
        this.zzSU = uri;
        this.zzSV = str;
        this.zzSW = uri2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[Catch: ClassCastException -> 0x0049, TryCatch #0 {ClassCastException -> 0x0049, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x0016, B:14:0x0029, B:16:0x0031, B:19:0x003c, B:12:0x001d), top: B:25:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c A[Catch: ClassCastException -> 0x0049, TRY_LEAVE, TryCatch #0 {ClassCastException -> 0x0049, blocks: (B:5:0x0004, B:7:0x0012, B:9:0x0016, B:14:0x0029, B:16:0x0031, B:19:0x003c, B:12:0x001d), top: B:25:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        EmailSignInConfig emailSignInConfig;
        boolean z = false;
        if (obj == null) {
            return false;
        }
        try {
            emailSignInConfig = (EmailSignInConfig) obj;
        } catch (ClassCastException unused) {
        }
        if (this.zzSU.equals(emailSignInConfig.zzlO())) {
            if (this.zzSW == null) {
                if (emailSignInConfig.zzlP() == null) {
                    if (TextUtils.isEmpty(this.zzSV)) {
                        if (this.zzSV.equals(emailSignInConfig.zzlQ())) {
                            z = true;
                        }
                    } else if (TextUtils.isEmpty(emailSignInConfig.zzlQ())) {
                        z = true;
                    }
                }
            } else if (this.zzSW.equals(emailSignInConfig.zzlP())) {
                if (TextUtils.isEmpty(this.zzSV)) {
                }
            }
            return z;
        }
        return z;
    }

    public int hashCode() {
        return new com.google.android.gms.auth.api.signin.internal.zzc().zzl(this.zzSU).zzl(this.zzSW).zzl(this.zzSV).zzmd();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public Uri zzlO() {
        return this.zzSU;
    }

    public Uri zzlP() {
        return this.zzSW;
    }

    public String zzlQ() {
        return this.zzSV;
    }
}
