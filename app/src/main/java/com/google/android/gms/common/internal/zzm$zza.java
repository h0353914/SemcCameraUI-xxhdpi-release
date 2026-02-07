package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class zzm$zza {
    private final String zzPp;
    private final ComponentName zzagb;

    public zzm$zza(ComponentName componentName) {
        this.zzPp = null;
        this.zzagb = (ComponentName) zzx.zzw(componentName);
    }

    public zzm$zza(String str) {
        this.zzPp = zzx.zzcr(str);
        this.zzagb = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzm$zza)) {
            return false;
        }
        zzm$zza zzm_zza = (zzm$zza) obj;
        return zzw.equal(this.zzPp, zzm_zza.zzPp) && zzw.equal(this.zzagb, zzm_zza.zzagb);
    }

    public int hashCode() {
        return zzw.hashCode(this.zzPp, this.zzagb);
    }

    public String toString() {
        return this.zzPp == null ? this.zzagb.flattenToString() : this.zzPp;
    }

    public Intent zzpm() {
        return this.zzPp != null ? new Intent(this.zzPp).setPackage("com.google.android.gms") : new Intent().setComponent(this.zzagb);
    }
}
