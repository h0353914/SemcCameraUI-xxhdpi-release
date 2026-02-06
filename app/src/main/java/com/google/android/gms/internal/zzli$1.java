package com.google.android.gms.internal;

class zzli$1 implements zzli$zze {
    final /* synthetic */ zzli zzacr;

    zzli$1(zzli zzliVar) {
        this.zzacr = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzli$zze
    public void zzc(zzli$zzf<?> zzli_zzf) {
        this.zzacr.zzacm.remove(zzli_zzf);
        if (zzli_zzf.zznF() == null || zzli.zza(this.zzacr) == null) {
            return;
        }
        zzli.zza(this.zzacr).remove(zzli_zzf.zznF().intValue());
    }
}
