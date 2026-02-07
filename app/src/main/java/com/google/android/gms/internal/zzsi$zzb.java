package com.google.android.gms.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzsi$zzb extends zzry<zzsi$zzb> {
    public String version;
    public int zzbiJ;
    public String zzbiK;

    public zzsi$zzb() {
        zzFT();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsi$zzb)) {
            return false;
        }
        zzsi$zzb zzsi_zzb = (zzsi$zzb) obj;
        if (this.zzbiJ != zzsi_zzb.zzbiJ) {
            return false;
        }
        if (this.zzbiK == null) {
            if (zzsi_zzb.zzbiK != null) {
                return false;
            }
        } else if (!this.zzbiK.equals(zzsi_zzb.zzbiK)) {
            return false;
        }
        if (this.version == null) {
            if (zzsi_zzb.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzsi_zzb.version)) {
            return false;
        }
        return (this.zzbik == null || this.zzbik.isEmpty()) ? zzsi_zzb.zzbik == null || zzsi_zzb.zzbik.isEmpty() : this.zzbik.equals(zzsi_zzb.zzbik);
    }

    public int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = 31 * (((((((527 + getClass().getName().hashCode()) * 31) + this.zzbiJ) * 31) + (this.zzbiK == null ? 0 : this.zzbiK.hashCode())) * 31) + (this.version == null ? 0 : this.version.hashCode()));
        if (this.zzbik != null && !this.zzbik.isEmpty()) {
            iHashCode = this.zzbik.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    protected int zzB() {
        int iZzB = super.zzB();
        if (this.zzbiJ != 0) {
            iZzB += zzrx.zzA(1, this.zzbiJ);
        }
        if (!this.zzbiK.equals("")) {
            iZzB += zzrx.zzn(2, this.zzbiK);
        }
        return !this.version.equals("") ? iZzB + zzrx.zzn(3, this.version) : iZzB;
    }

    public zzsi$zzb zzFT() {
        this.zzbiJ = 0;
        this.zzbiK = "";
        this.version = "";
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public zzsi$zzb zzH(zzrw zzrwVar) throws IOException {
        while (true) {
            int iZzFo = zzrwVar.zzFo();
            if (iZzFo == 0) {
                return this;
            }
            if (iZzFo == 8) {
                int iZzFr = zzrwVar.zzFr();
                switch (iZzFr) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                        this.zzbiJ = iZzFr;
                        break;
                }
            } else if (iZzFo == 18) {
                this.zzbiK = zzrwVar.readString();
            } else if (iZzFo == 26) {
                this.version = zzrwVar.readString();
            } else if (!zza(zzrwVar, iZzFo)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws IOException {
        if (this.zzbiJ != 0) {
            zzrxVar.zzy(1, this.zzbiJ);
        }
        if (!this.zzbiK.equals("")) {
            zzrxVar.zzb(2, this.zzbiK);
        }
        if (!this.version.equals("")) {
            zzrxVar.zzb(3, this.version);
        }
        super.zza(zzrxVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public /* synthetic */ zzse zzb(zzrw zzrwVar) throws IOException {
        return zzH(zzrwVar);
    }
}
