package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class zzsi$zzd extends zzry<zzsi$zzd> {
    public String tag;
    public long zzbiO;
    public long zzbiP;
    public int zzbiQ;
    public int zzbiR;
    public boolean zzbiS;
    public zzsi$zze[] zzbiT;
    public zzsi$zzb zzbiU;
    public byte[] zzbiV;
    public byte[] zzbiW;
    public byte[] zzbiX;
    public zzsi$zza zzbiY;
    public String zzbiZ;
    public long zzbja;
    public zzsi$zzc zzbjb;
    public byte[] zzbjc;
    public int zzbjd;
    public int[] zzbje;

    public zzsi$zzd() {
        zzFV();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsi$zzd)) {
            return false;
        }
        zzsi$zzd zzsi_zzd = (zzsi$zzd) obj;
        if (this.zzbiO != zzsi_zzd.zzbiO || this.zzbiP != zzsi_zzd.zzbiP) {
            return false;
        }
        if (this.tag == null) {
            if (zzsi_zzd.tag != null) {
                return false;
            }
        } else if (!this.tag.equals(zzsi_zzd.tag)) {
            return false;
        }
        if (this.zzbiQ != zzsi_zzd.zzbiQ || this.zzbiR != zzsi_zzd.zzbiR || this.zzbiS != zzsi_zzd.zzbiS || !zzsc.equals(this.zzbiT, zzsi_zzd.zzbiT)) {
            return false;
        }
        if (this.zzbiU == null) {
            if (zzsi_zzd.zzbiU != null) {
                return false;
            }
        } else if (!this.zzbiU.equals(zzsi_zzd.zzbiU)) {
            return false;
        }
        if (!Arrays.equals(this.zzbiV, zzsi_zzd.zzbiV) || !Arrays.equals(this.zzbiW, zzsi_zzd.zzbiW) || !Arrays.equals(this.zzbiX, zzsi_zzd.zzbiX)) {
            return false;
        }
        if (this.zzbiY == null) {
            if (zzsi_zzd.zzbiY != null) {
                return false;
            }
        } else if (!this.zzbiY.equals(zzsi_zzd.zzbiY)) {
            return false;
        }
        if (this.zzbiZ == null) {
            if (zzsi_zzd.zzbiZ != null) {
                return false;
            }
        } else if (!this.zzbiZ.equals(zzsi_zzd.zzbiZ)) {
            return false;
        }
        if (this.zzbja != zzsi_zzd.zzbja) {
            return false;
        }
        if (this.zzbjb == null) {
            if (zzsi_zzd.zzbjb != null) {
                return false;
            }
        } else if (!this.zzbjb.equals(zzsi_zzd.zzbjb)) {
            return false;
        }
        if (Arrays.equals(this.zzbjc, zzsi_zzd.zzbjc) && this.zzbjd == zzsi_zzd.zzbjd && zzsc.equals(this.zzbje, zzsi_zzd.zzbje)) {
            return (this.zzbik == null || this.zzbik.isEmpty()) ? zzsi_zzd.zzbik == null || zzsi_zzd.zzbik.isEmpty() : this.zzbik.equals(zzsi_zzd.zzbik);
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = 31 * (((((((((((((((((((((((((((((((((((((527 + getClass().getName().hashCode()) * 31) + ((int) (this.zzbiO ^ (this.zzbiO >>> 32)))) * 31) + ((int) (this.zzbiP ^ (this.zzbiP >>> 32)))) * 31) + (this.tag == null ? 0 : this.tag.hashCode())) * 31) + this.zzbiQ) * 31) + this.zzbiR) * 31) + (this.zzbiS ? 1231 : 1237)) * 31) + zzsc.hashCode(this.zzbiT)) * 31) + (this.zzbiU == null ? 0 : this.zzbiU.hashCode())) * 31) + Arrays.hashCode(this.zzbiV)) * 31) + Arrays.hashCode(this.zzbiW)) * 31) + Arrays.hashCode(this.zzbiX)) * 31) + (this.zzbiY == null ? 0 : this.zzbiY.hashCode())) * 31) + (this.zzbiZ == null ? 0 : this.zzbiZ.hashCode())) * 31) + ((int) (this.zzbja ^ (this.zzbja >>> 32)))) * 31) + (this.zzbjb == null ? 0 : this.zzbjb.hashCode())) * 31) + Arrays.hashCode(this.zzbjc)) * 31) + this.zzbjd) * 31) + zzsc.hashCode(this.zzbje));
        if (this.zzbik != null && !this.zzbik.isEmpty()) {
            iHashCode = this.zzbik.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    protected int zzB() {
        int iZzB = super.zzB();
        if (this.zzbiO != 0) {
            iZzB += zzrx.zzd(1, this.zzbiO);
        }
        if (!this.tag.equals("")) {
            iZzB += zzrx.zzn(2, this.tag);
        }
        if (this.zzbiT != null && this.zzbiT.length > 0) {
            int iZzc = iZzB;
            for (int i = 0; i < this.zzbiT.length; i++) {
                zzsi$zze zzsi_zze = this.zzbiT[i];
                if (zzsi_zze != null) {
                    iZzc += zzrx.zzc(3, zzsi_zze);
                }
            }
            iZzB = iZzc;
        }
        if (!Arrays.equals(this.zzbiV, zzsh.zzbiE)) {
            iZzB += zzrx.zzb(6, this.zzbiV);
        }
        if (this.zzbiY != null) {
            iZzB += zzrx.zzc(7, this.zzbiY);
        }
        if (!Arrays.equals(this.zzbiW, zzsh.zzbiE)) {
            iZzB += zzrx.zzb(8, this.zzbiW);
        }
        if (this.zzbiU != null) {
            iZzB += zzrx.zzc(9, this.zzbiU);
        }
        if (this.zzbiS) {
            iZzB += zzrx.zzc(10, this.zzbiS);
        }
        if (this.zzbiQ != 0) {
            iZzB += zzrx.zzA(11, this.zzbiQ);
        }
        if (this.zzbiR != 0) {
            iZzB += zzrx.zzA(12, this.zzbiR);
        }
        if (!Arrays.equals(this.zzbiX, zzsh.zzbiE)) {
            iZzB += zzrx.zzb(13, this.zzbiX);
        }
        if (!this.zzbiZ.equals("")) {
            iZzB += zzrx.zzn(14, this.zzbiZ);
        }
        if (this.zzbja != 180000) {
            iZzB += zzrx.zze(15, this.zzbja);
        }
        if (this.zzbjb != null) {
            iZzB += zzrx.zzc(16, this.zzbjb);
        }
        if (this.zzbiP != 0) {
            iZzB += zzrx.zzd(17, this.zzbiP);
        }
        if (!Arrays.equals(this.zzbjc, zzsh.zzbiE)) {
            iZzB += zzrx.zzb(18, this.zzbjc);
        }
        if (this.zzbjd != 0) {
            iZzB += zzrx.zzA(19, this.zzbjd);
        }
        if (this.zzbje == null || this.zzbje.length <= 0) {
            return iZzB;
        }
        int iZzlJ = 0;
        for (int i2 = 0; i2 < this.zzbje.length; i2++) {
            iZzlJ += zzrx.zzlJ(this.zzbje[i2]);
        }
        return iZzB + iZzlJ + (2 * this.zzbje.length);
    }

    public zzsi$zzd zzFV() {
        this.zzbiO = 0L;
        this.zzbiP = 0L;
        this.tag = "";
        this.zzbiQ = 0;
        this.zzbiR = 0;
        this.zzbiS = false;
        this.zzbiT = zzsi$zze.zzFW();
        this.zzbiU = null;
        this.zzbiV = zzsh.zzbiE;
        this.zzbiW = zzsh.zzbiE;
        this.zzbiX = zzsh.zzbiE;
        this.zzbiY = null;
        this.zzbiZ = "";
        this.zzbja = 180000L;
        this.zzbjb = null;
        this.zzbjc = zzsh.zzbiE;
        this.zzbjd = 0;
        this.zzbje = zzsh.zzbix;
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public zzsi$zzd zzJ(zzrw zzrwVar) throws IOException {
        zzse zzseVar;
        while (true) {
            int iZzFo = zzrwVar.zzFo();
            switch (iZzFo) {
                case 0:
                    return this;
                case 8:
                    this.zzbiO = zzrwVar.zzFq();
                    continue;
                case 18:
                    this.tag = zzrwVar.readString();
                    continue;
                case 26:
                    int iZzc = zzsh.zzc(zzrwVar, 26);
                    int length = this.zzbiT == null ? 0 : this.zzbiT.length;
                    zzsi$zze[] zzsi_zzeArr = new zzsi$zze[iZzc + length];
                    if (length != 0) {
                        System.arraycopy(this.zzbiT, 0, zzsi_zzeArr, 0, length);
                    }
                    while (length < zzsi_zzeArr.length - 1) {
                        zzsi_zzeArr[length] = new zzsi$zze();
                        zzrwVar.zza(zzsi_zzeArr[length]);
                        zzrwVar.zzFo();
                        length++;
                    }
                    zzsi_zzeArr[length] = new zzsi$zze();
                    zzrwVar.zza(zzsi_zzeArr[length]);
                    this.zzbiT = zzsi_zzeArr;
                    continue;
                case 50:
                    this.zzbiV = zzrwVar.readBytes();
                    continue;
                case 58:
                    if (this.zzbiY == null) {
                        this.zzbiY = new zzsi$zza();
                    }
                    zzseVar = this.zzbiY;
                    break;
                case 66:
                    this.zzbiW = zzrwVar.readBytes();
                    continue;
                case 74:
                    if (this.zzbiU == null) {
                        this.zzbiU = new zzsi$zzb();
                    }
                    zzseVar = this.zzbiU;
                    break;
                case 80:
                    this.zzbiS = zzrwVar.zzFs();
                    continue;
                case 88:
                    this.zzbiQ = zzrwVar.zzFr();
                    continue;
                case 96:
                    this.zzbiR = zzrwVar.zzFr();
                    continue;
                case 106:
                    this.zzbiX = zzrwVar.readBytes();
                    continue;
                case 114:
                    this.zzbiZ = zzrwVar.readString();
                    continue;
                case 120:
                    this.zzbja = zzrwVar.zzFu();
                    continue;
                case 130:
                    if (this.zzbjb == null) {
                        this.zzbjb = new zzsi$zzc();
                    }
                    zzseVar = this.zzbjb;
                    break;
                case 136:
                    this.zzbiP = zzrwVar.zzFq();
                    continue;
                case 146:
                    this.zzbjc = zzrwVar.readBytes();
                    continue;
                case 152:
                    int iZzFr = zzrwVar.zzFr();
                    switch (iZzFr) {
                        case 0:
                        case 1:
                        case 2:
                            this.zzbjd = iZzFr;
                            break;
                        default:
                            continue;
                    }
                    break;
                case 160:
                    int iZzc2 = zzsh.zzc(zzrwVar, 160);
                    int length2 = this.zzbje == null ? 0 : this.zzbje.length;
                    int[] iArr = new int[iZzc2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzbje, 0, iArr, 0, length2);
                    }
                    while (length2 < iArr.length - 1) {
                        iArr[length2] = zzrwVar.zzFr();
                        zzrwVar.zzFo();
                        length2++;
                    }
                    iArr[length2] = zzrwVar.zzFr();
                    this.zzbje = iArr;
                    continue;
                case 162:
                    int iZzlC = zzrwVar.zzlC(zzrwVar.zzFv());
                    int position = zzrwVar.getPosition();
                    int i = 0;
                    while (zzrwVar.zzFA() > 0) {
                        zzrwVar.zzFr();
                        i++;
                    }
                    zzrwVar.zzlE(position);
                    int length3 = this.zzbje == null ? 0 : this.zzbje.length;
                    int[] iArr2 = new int[i + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzbje, 0, iArr2, 0, length3);
                    }
                    while (length3 < iArr2.length) {
                        iArr2[length3] = zzrwVar.zzFr();
                        length3++;
                    }
                    this.zzbje = iArr2;
                    zzrwVar.zzlD(iZzlC);
                    continue;
                default:
                    if (!zza(zzrwVar, iZzFo)) {
                        return this;
                    }
                    continue;
                    break;
            }
            zzrwVar.zza(zzseVar);
        }
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws IOException {
        if (this.zzbiO != 0) {
            zzrxVar.zzb(1, this.zzbiO);
        }
        if (!this.tag.equals("")) {
            zzrxVar.zzb(2, this.tag);
        }
        if (this.zzbiT != null && this.zzbiT.length > 0) {
            for (int i = 0; i < this.zzbiT.length; i++) {
                zzsi$zze zzsi_zze = this.zzbiT[i];
                if (zzsi_zze != null) {
                    zzrxVar.zza(3, zzsi_zze);
                }
            }
        }
        if (!Arrays.equals(this.zzbiV, zzsh.zzbiE)) {
            zzrxVar.zza(6, this.zzbiV);
        }
        if (this.zzbiY != null) {
            zzrxVar.zza(7, this.zzbiY);
        }
        if (!Arrays.equals(this.zzbiW, zzsh.zzbiE)) {
            zzrxVar.zza(8, this.zzbiW);
        }
        if (this.zzbiU != null) {
            zzrxVar.zza(9, this.zzbiU);
        }
        if (this.zzbiS) {
            zzrxVar.zzb(10, this.zzbiS);
        }
        if (this.zzbiQ != 0) {
            zzrxVar.zzy(11, this.zzbiQ);
        }
        if (this.zzbiR != 0) {
            zzrxVar.zzy(12, this.zzbiR);
        }
        if (!Arrays.equals(this.zzbiX, zzsh.zzbiE)) {
            zzrxVar.zza(13, this.zzbiX);
        }
        if (!this.zzbiZ.equals("")) {
            zzrxVar.zzb(14, this.zzbiZ);
        }
        if (this.zzbja != 180000) {
            zzrxVar.zzc(15, this.zzbja);
        }
        if (this.zzbjb != null) {
            zzrxVar.zza(16, this.zzbjb);
        }
        if (this.zzbiP != 0) {
            zzrxVar.zzb(17, this.zzbiP);
        }
        if (!Arrays.equals(this.zzbjc, zzsh.zzbiE)) {
            zzrxVar.zza(18, this.zzbjc);
        }
        if (this.zzbjd != 0) {
            zzrxVar.zzy(19, this.zzbjd);
        }
        if (this.zzbje != null && this.zzbje.length > 0) {
            for (int i2 = 0; i2 < this.zzbje.length; i2++) {
                zzrxVar.zzy(20, this.zzbje[i2]);
            }
        }
        super.zza(zzrxVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public /* synthetic */ zzse zzb(zzrw zzrwVar) throws IOException {
        return zzJ(zzrwVar);
    }
}
