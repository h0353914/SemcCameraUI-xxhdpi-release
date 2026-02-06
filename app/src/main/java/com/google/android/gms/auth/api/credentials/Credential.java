package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import java.util.Collections;
import java.util.List;

public class Credential implements SafeParcelable {
    public static final Parcelable$Creator<Credential> CREATOR = new zza();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    private final String mName;
    final int mVersionCode;
    private final Uri zzSh;
    private final List<IdToken> zzSi;
    private final String zzSj;
    private final String zzSk;
    private final String zzSl;
    private final String zzSm;
    private final String zzwN;

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6) {
        this.mVersionCode = i;
        this.zzwN = (String) zzx.zzw(str);
        this.mName = str2;
        this.zzSh = uri;
        this.zzSi = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzSj = str3;
        this.zzSk = str4;
        this.zzSl = str5;
        this.zzSm = str6;
    }

    static /* synthetic */ String zza(Credential credential) {
        return credential.zzwN;
    }

    static /* synthetic */ String zzb(Credential credential) {
        return credential.mName;
    }

    static /* synthetic */ Uri zzc(Credential credential) {
        return credential.zzSh;
    }

    static /* synthetic */ List zzd(Credential credential) {
        return credential.zzSi;
    }

    static /* synthetic */ String zze(Credential credential) {
        return credential.zzSj;
    }

    static /* synthetic */ String zzf(Credential credential) {
        return credential.zzSk;
    }

    static /* synthetic */ String zzg(Credential credential) {
        return credential.zzSl;
    }

    static /* synthetic */ String zzh(Credential credential) {
        return credential.zzSm;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.zzwN, credential.zzwN) && TextUtils.equals(this.mName, credential.mName) && zzw.equal(this.zzSh, credential.zzSh) && TextUtils.equals(this.zzSj, credential.zzSj) && TextUtils.equals(this.zzSk, credential.zzSk) && TextUtils.equals(this.zzSl, credential.zzSl);
    }

    public String getAccountType() {
        return this.zzSk;
    }

    public String getGeneratedPassword() {
        return this.zzSl;
    }

    public String getId() {
        return this.zzwN;
    }

    public List<IdToken> getIdTokens() {
        return this.zzSi;
    }

    public String getName() {
        return this.mName;
    }

    public String getPassword() {
        return this.zzSj;
    }

    public Uri getProfilePictureUri() {
        return this.zzSh;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzwN, this.mName, this.zzSh, this.zzSj, this.zzSk, this.zzSl);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public String zzlI() {
        return this.zzSm;
    }
}
