package com.google.android.gms.auth.api.credentials;

/* JADX INFO: loaded from: classes.dex */
public class CredentialPickerConfig$Builder {
    private boolean zzSn = false;
    private boolean mShowCancelButton = true;

    static /* synthetic */ boolean zza(CredentialPickerConfig$Builder credentialPickerConfig$Builder) {
        return credentialPickerConfig$Builder.zzSn;
    }

    static /* synthetic */ boolean zzb(CredentialPickerConfig$Builder credentialPickerConfig$Builder) {
        return credentialPickerConfig$Builder.mShowCancelButton;
    }

    public CredentialPickerConfig build() {
        return new CredentialPickerConfig(this, null);
    }

    public CredentialPickerConfig$Builder setShowAddAccountButton(boolean z) {
        this.zzSn = z;
        return this;
    }

    public CredentialPickerConfig$Builder setShowCancelButton(boolean z) {
        this.mShowCancelButton = z;
        return this;
    }
}
