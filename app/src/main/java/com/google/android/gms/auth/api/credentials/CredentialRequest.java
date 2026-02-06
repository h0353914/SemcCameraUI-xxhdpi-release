package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public final class CredentialRequest implements SafeParcelable {
    public static final Parcelable$Creator<CredentialRequest> CREATOR = new zzc();
    final int mVersionCode;
    private final boolean zzSo;
    private final String[] zzSp;
    private final CredentialPickerConfig zzSq;
    private final CredentialPickerConfig zzSr;

    CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2) {
        this.mVersionCode = i;
        this.zzSo = z;
        this.zzSp = (String[]) zzx.zzw(strArr);
        this.zzSq = credentialPickerConfig == null ? new CredentialPickerConfig$Builder().build() : credentialPickerConfig;
        this.zzSr = credentialPickerConfig2 == null ? new CredentialPickerConfig$Builder().build() : credentialPickerConfig2;
    }

    private CredentialRequest(CredentialRequest$Builder credentialRequest$Builder) {
        this(2, CredentialRequest$Builder.zza(credentialRequest$Builder), CredentialRequest$Builder.zzb(credentialRequest$Builder), CredentialRequest$Builder.zzc(credentialRequest$Builder), CredentialRequest$Builder.zzd(credentialRequest$Builder));
    }

    /* synthetic */ CredentialRequest(CredentialRequest$Builder credentialRequest$Builder, CredentialRequest$1 credentialRequest$1) {
        this(credentialRequest$Builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String[] getAccountTypes() {
        return this.zzSp;
    }

    public CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.zzSr;
    }

    public CredentialPickerConfig getCredentialPickerConfig() {
        return this.zzSq;
    }

    public boolean getSupportsPasswordLogin() {
        return this.zzSo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
