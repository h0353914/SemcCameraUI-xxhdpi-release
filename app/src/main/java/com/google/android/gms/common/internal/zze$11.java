package com.google.android.gms.common.internal;

class zze$11 extends zze {
    final /* synthetic */ char zzaff;

    zze$11(char c) {
        this.zzaff = c;
    }

    @Override // com.google.android.gms.common.internal.zze
    public zze zza(zze zzeVar) {
        return zzeVar.zzd(this.zzaff) ? zzeVar : super.zza(zzeVar);
    }

    @Override // com.google.android.gms.common.internal.zze
    public boolean zzd(char c) {
        return c == this.zzaff;
    }
}
