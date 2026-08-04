package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzlm;

/* loaded from: /home/h/tmp/SemcCameraUI-xxhdpi-release/SemcCameraUI-xxhdpi-release/build/apk/classes.dex */
public abstract class zzld<L> implements zzlm.zzb<L> {
    private final DataHolder zzabq;

    protected zzld(DataHolder dataHolder) {
        this.zzabq = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzlm.zzb
    public void zznN() {
        if (this.zzabq != null) {
            this.zzabq.close();
        }
    }

    @Override // com.google.android.gms.internal.zzlm.zzb
    public final void zzq(L l) {
        zza(l, this.zzabq);
    }
}
