package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class zzsi$zzc extends zzry<zzsi$zzc> {
    public byte[] zzbiL;
    public byte[][] zzbiM;
    public boolean zzbiN;

    public zzsi$zzc() {
        zzFU();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsi$zzc)) {
            return false;
        }
        zzsi$zzc zzsi_zzc = (zzsi$zzc) obj;
        if (Arrays.equals(this.zzbiL, zzsi_zzc.zzbiL) && zzsc.zza(this.zzbiM, zzsi_zzc.zzbiM) && this.zzbiN == zzsi_zzc.zzbiN) {
            return (this.zzbik == null || this.zzbik.isEmpty()) ? zzsi_zzc.zzbik == null || zzsi_zzc.zzbik.isEmpty() : this.zzbik.equals(zzsi_zzc.zzbik);
        }
        return false;
    }

    public int hashCode() {
        return (31 * (((((((527 + getClass().getName().hashCode()) * 31) + Arrays.hashCode(this.zzbiL)) * 31) + zzsc.zza(this.zzbiM)) * 31) + (this.zzbiN ? 1231 : 1237))) + ((this.zzbik == null || this.zzbik.isEmpty()) ? 0 : this.zzbik.hashCode());
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    protected int zzB() {
        int iZzB = super.zzB();
        if (!Arrays.equals(this.zzbiL, zzsh.zzbiE)) {
            iZzB += zzrx.zzb(1, this.zzbiL);
        }
        if (this.zzbiM != null && this.zzbiM.length > 0) {
            int iZzE = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.zzbiM.length; i2++) {
                byte[] bArr = this.zzbiM[i2];
                if (bArr != null) {
                    i++;
                    iZzE += zzrx.zzE(bArr);
                }
            }
            iZzB = iZzB + iZzE + (1 * i);
        }
        return this.zzbiN ? iZzB + zzrx.zzc(3, this.zzbiN) : iZzB;
    }

    public zzsi$zzc zzFU() {
        this.zzbiL = zzsh.zzbiE;
        this.zzbiM = zzsh.zzbiD;
        this.zzbiN = false;
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public zzsi$zzc zzI(zzrw zzrwVar) throws IOException {
        while (true) {
            int iZzFo = zzrwVar.zzFo();
            if (iZzFo == 0) {
                return this;
            }
            if (iZzFo == 10) {
                this.zzbiL = zzrwVar.readBytes();
            } else if (iZzFo == 18) {
                int iZzc = zzsh.zzc(zzrwVar, 18);
                int length = this.zzbiM == null ? 0 : this.zzbiM.length;
                byte[][] bArr = new byte[iZzc + length][];
                if (length != 0) {
                    System.arraycopy(this.zzbiM, 0, bArr, 0, length);
                }
                while (length < bArr.length - 1) {
                    bArr[length] = zzrwVar.readBytes();
                    zzrwVar.zzFo();
                    length++;
                }
                bArr[length] = zzrwVar.readBytes();
                this.zzbiM = bArr;
            } else if (iZzFo == 24) {
                this.zzbiN = zzrwVar.zzFs();
            } else if (!zza(zzrwVar, iZzFo)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws IOException {
        if (!Arrays.equals(this.zzbiL, zzsh.zzbiE)) {
            zzrxVar.zza(1, this.zzbiL);
        }
        if (this.zzbiM != null && this.zzbiM.length > 0) {
            for (int i = 0; i < this.zzbiM.length; i++) {
                byte[] bArr = this.zzbiM[i];
                if (bArr != null) {
                    zzrxVar.zza(2, bArr);
                }
            }
        }
        if (this.zzbiN) {
            zzrxVar.zzb(3, this.zzbiN);
        }
        super.zza(zzrxVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public /* synthetic */ zzse zzb(zzrw zzrwVar) throws IOException {
        return zzI(zzrwVar);
    }
}
