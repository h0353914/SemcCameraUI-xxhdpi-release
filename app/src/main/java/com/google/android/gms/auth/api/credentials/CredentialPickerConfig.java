package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CredentialPickerConfig implements SafeParcelable {
    public static final Parcelable$Creator<CredentialPickerConfig> CREATOR = new zzb();
    private final boolean mShowCancelButton;
    final int mVersionCode;
    private final boolean zzSn;

    CredentialPickerConfig(int i, boolean z, boolean z2) {
        this.mVersionCode = i;
        this.zzSn = z;
        this.mShowCancelButton = z2;
    }

    private CredentialPickerConfig(CredentialPickerConfig$Builder credentialPickerConfig$Builder) {
        this(1, CredentialPickerConfig$Builder.zza(credentialPickerConfig$Builder), CredentialPickerConfig$Builder.zzb(credentialPickerConfig$Builder));
    }

    /* synthetic */ CredentialPickerConfig(CredentialPickerConfig$Builder credentialPickerConfig$Builder, CredentialPickerConfig$1 credentialPickerConfig$1) {
        this(credentialPickerConfig$Builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean shouldShowAddAccountButton() {
        return this.zzSn;
    }

    public boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
