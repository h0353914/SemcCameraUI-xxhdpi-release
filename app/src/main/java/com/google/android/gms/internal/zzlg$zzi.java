package com.google.android.gms.internal;

abstract class zzlg$zzi implements Runnable {
    final /* synthetic */ zzlg zzabL;

    private zzlg$zzi(zzlg zzlgVar) {
        this.zzabL = zzlgVar;
    }

    /* synthetic */ zzlg$zzi(zzlg zzlgVar, zzlg$1 zzlg_1) {
        this(zzlgVar);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // java.lang.Runnable
    public void run() {
        zzlg.zzc(this.zzabL).lock();
        try {
            try {
                if (Thread.interrupted()) {
                } else {
                    zznO();
                }
            } catch (RuntimeException e) {
                zzlg.zzd(this.zzabL).zza(e);
            }
        } finally {
            zzlg.zzc(this.zzabL).unlock();
        }
    }

    protected abstract void zznO();
}
