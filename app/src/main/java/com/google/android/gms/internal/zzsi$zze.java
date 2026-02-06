package com.google.android.gms.internal;

import java.io.IOException;

public final class zzsi$zze extends zzry<zzsi$zze> {
    private static volatile zzsi$zze[] zzbjf;
    public String key;
    public String value;

    public zzsi$zze() {
        zzFX();
    }

    public static zzsi$zze[] zzFW() {
        if (zzbjf == null) {
            synchronized (zzsc.zzbiu) {
                if (zzbjf == null) {
                    zzbjf = new zzsi$zze[0];
                }
            }
        }
        return zzbjf;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsi$zze)) {
            return false;
        }
        zzsi$zze zzsi_zze = (zzsi$zze) obj;
        if (this.key == null) {
            if (zzsi_zze.key != null) {
                return false;
            }
        } else if (!this.key.equals(zzsi_zze.key)) {
            return false;
        }
        if (this.value == null) {
            if (zzsi_zze.value != null) {
                return false;
            }
        } else if (!this.value.equals(zzsi_zze.value)) {
            return false;
        }
        return (this.zzbik == null || this.zzbik.isEmpty()) ? zzsi_zze.zzbik == null || zzsi_zze.zzbik.isEmpty() : this.zzbik.equals(zzsi_zze.zzbik);
    }

    public int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = 31 * (((((527 + getClass().getName().hashCode()) * 31) + (this.key == null ? 0 : this.key.hashCode())) * 31) + (this.value == null ? 0 : this.value.hashCode()));
        if (this.zzbik != null && !this.zzbik.isEmpty()) {
            iHashCode = this.zzbik.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    protected int zzB() {
        int iZzB = super.zzB();
        if (!this.key.equals("")) {
            iZzB += zzrx.zzn(1, this.key);
        }
        return !this.value.equals("") ? iZzB + zzrx.zzn(2, this.value) : iZzB;
    }

    public zzsi$zze zzFX() {
        this.key = "";
        this.value = "";
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public zzsi$zze zzK(zzrw zzrwVar) throws IOException {
        while (true) {
            int iZzFo = zzrwVar.zzFo();
            if (iZzFo == 0) {
                return this;
            }
            if (iZzFo == 10) {
                this.key = zzrwVar.readString();
            } else if (iZzFo == 18) {
                this.value = zzrwVar.readString();
            } else if (!zza(zzrwVar, iZzFo)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws IOException {
        if (!this.key.equals("")) {
            zzrxVar.zzb(1, this.key);
        }
        if (!this.value.equals("")) {
            zzrxVar.zzb(2, this.value);
        }
        super.zza(zzrxVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public /* synthetic */ zzse zzb(zzrw zzrwVar) throws IOException {
        return zzK(zzrwVar);
    }
}
