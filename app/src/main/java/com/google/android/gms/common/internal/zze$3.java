package com.google.android.gms.common.internal;

import java.util.Arrays;

class zze$3 extends zze {
    final /* synthetic */ char[] zzafc;

    zze$3(char[] cArr) {
        this.zzafc = cArr;
    }

    @Override // com.google.android.gms.common.internal.zze
    public boolean zzd(char c) {
        return Arrays.binarySearch(this.zzafc, c) >= 0;
    }
}
