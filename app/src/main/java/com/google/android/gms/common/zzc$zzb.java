package com.google.android.gms.common;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class zzc$zzb extends zzc$zza {
    private final byte[] zzaah;

    zzc$zzb(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.zzaah = bArr;
    }

    @Override // com.google.android.gms.common.zzc$zza
    byte[] getBytes() {
        return this.zzaah;
    }
}
