package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.zzw;

/* JADX INFO: loaded from: classes.dex */
final class zza$zza {
    public final Uri uri;

    public zza$zza(Uri uri) {
        this.uri = uri;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zza$zza)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return zzw.equal(((zza$zza) obj).uri, this.uri);
    }

    public int hashCode() {
        return zzw.hashCode(this.uri);
    }
}
