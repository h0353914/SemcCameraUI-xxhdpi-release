package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;

/* JADX INFO: loaded from: classes.dex */
public final class zzlv$zza {
    public final int zzaeE;
    public final int zzaeF;

    public zzlv$zza(int i, int i2) {
        this.zzaeE = i;
        this.zzaeF = i2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzlv$zza)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        zzlv$zza zzlv_zza = (zzlv$zza) obj;
        return zzlv_zza.zzaeE == this.zzaeE && zzlv_zza.zzaeF == this.zzaeF;
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzaeE), Integer.valueOf(this.zzaeF));
    }
}
