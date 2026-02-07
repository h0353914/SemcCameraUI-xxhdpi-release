package com.google.android.gms.common;

import com.google.android.gms.common.internal.zzx;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class zzc$zza {
    private int zzaag;

    protected zzc$zza(byte[] bArr) {
        zzx.zzb(bArr.length == 25, "cert hash data has incorrect length");
        this.zzaag = Arrays.hashCode(bArr);
    }

    protected static byte[] zzbX(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzc$zza)) {
            return false;
        }
        return Arrays.equals(getBytes(), ((zzc$zza) obj).getBytes());
    }

    abstract byte[] getBytes();

    public int hashCode() {
        return this.zzaag;
    }
}
