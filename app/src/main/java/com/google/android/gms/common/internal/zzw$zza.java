package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzw$zza {
    private final Object zzJm;
    private final List<String> zzago;

    private zzw$zza(Object obj) {
        this.zzJm = zzx.zzw(obj);
        this.zzago = new ArrayList();
    }

    /* synthetic */ zzw$zza(Object obj, zzw$1 zzw_1) {
        this(obj);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(this.zzJm.getClass().getSimpleName());
        sb.append('{');
        int size = this.zzago.size();
        for (int i = 0; i < size; i++) {
            sb.append(this.zzago.get(i));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public zzw$zza zzg(String str, Object obj) {
        this.zzago.add(((String) zzx.zzw(str)) + "=" + String.valueOf(obj));
        return this;
    }
}
