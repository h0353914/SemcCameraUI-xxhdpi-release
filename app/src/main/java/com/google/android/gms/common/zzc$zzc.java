package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
abstract class zzc$zzc extends zzc$zza {
    private static final WeakReference<byte[]> zzaaj = new WeakReference<>(null);
    private WeakReference<byte[]> zzaai;

    zzc$zzc(byte[] bArr) {
        super(bArr);
        this.zzaai = zzaaj;
    }

    @Override // com.google.android.gms.common.zzc$zza
    byte[] getBytes() {
        byte[] bArrZznr;
        synchronized (this) {
            bArrZznr = this.zzaai.get();
            if (bArrZznr == null) {
                bArrZznr = zznr();
                this.zzaai = new WeakReference<>(bArrZznr);
            }
        }
        return bArrZznr;
    }

    protected abstract byte[] zznr();
}
