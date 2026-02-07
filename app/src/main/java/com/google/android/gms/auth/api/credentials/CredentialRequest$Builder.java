package com.google.android.gms.auth.api.credentials;

/* JADX INFO: loaded from: classes.dex */
public final class CredentialRequest$Builder {
    private boolean zzSo;
    private String[] zzSp;
    private CredentialPickerConfig zzSq;
    private CredentialPickerConfig zzSr;

    static /* synthetic */ boolean zza(CredentialRequest$Builder credentialRequest$Builder) {
        return credentialRequest$Builder.zzSo;
    }

    static /* synthetic */ String[] zzb(CredentialRequest$Builder credentialRequest$Builder) {
        return credentialRequest$Builder.zzSp;
    }

    static /* synthetic */ CredentialPickerConfig zzc(CredentialRequest$Builder credentialRequest$Builder) {
        return credentialRequest$Builder.zzSq;
    }

    static /* synthetic */ CredentialPickerConfig zzd(CredentialRequest$Builder credentialRequest$Builder) {
        return credentialRequest$Builder.zzSr;
    }

    public CredentialRequest build() {
        if (this.zzSp == null) {
            this.zzSp = new String[0];
        }
        if (this.zzSo || this.zzSp.length != 0) {
            return new CredentialRequest(this, null);
        }
        throw new IllegalStateException("At least one authentication method must be specified");
    }

    public CredentialRequest$Builder setAccountTypes(String... strArr) {
        this.zzSp = strArr;
        return this;
    }

    public CredentialRequest$Builder setCredentialHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
        this.zzSr = credentialPickerConfig;
        return this;
    }

    public CredentialRequest$Builder setCredentialPickerConfig(CredentialPickerConfig credentialPickerConfig) {
        this.zzSq = credentialPickerConfig;
        return this;
    }

    public CredentialRequest$Builder setSupportsPasswordLogin(boolean z) {
        this.zzSo = z;
        return this;
    }
}
