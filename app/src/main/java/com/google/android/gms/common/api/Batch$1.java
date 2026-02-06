package com.google.android.gms.common.api;

class Batch$1 implements PendingResult$zza {
    final /* synthetic */ Batch zzaaC;

    Batch$1(Batch batch) {
        this.zzaaC = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult$zza
    public void zzt(Status status) {
        synchronized (Batch.zza(this.zzaaC)) {
            if (this.zzaaC.isCanceled()) {
                return;
            }
            if (status.isCanceled()) {
                Batch.zza(this.zzaaC, true);
            } else if (!status.isSuccess()) {
                Batch.zzb(this.zzaaC, true);
            }
            Batch.zzb(this.zzaaC);
            if (Batch.zzc(this.zzaaC) == 0) {
                if (Batch.zzd(this.zzaaC)) {
                    Batch.zze(this.zzaaC);
                } else {
                    this.zzaaC.zzb(new BatchResult(Batch.zzf(this.zzaaC) ? new Status(13) : Status.zzabb, Batch.zzg(this.zzaaC)));
                }
            }
        }
    }
}
