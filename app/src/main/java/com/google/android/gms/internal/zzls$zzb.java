package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable$ConstantState;

final class zzls$zzb extends Drawable$ConstantState {
    int zzaew;
    int zzaex;

    zzls$zzb(zzls$zzb zzls_zzb) {
        if (zzls_zzb != null) {
            this.zzaew = zzls_zzb.zzaew;
            this.zzaex = zzls_zzb.zzaex;
        }
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public int getChangingConfigurations() {
        return this.zzaew;
    }

    @Override // android.graphics.drawable.Drawable$ConstantState
    public Drawable newDrawable() {
        return new zzls(this);
    }
}
