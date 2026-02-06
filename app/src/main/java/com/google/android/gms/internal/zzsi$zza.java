package com.google.android.gms.internal;

import java.io.IOException;

public final class zzsi$zza extends zzry<zzsi$zza> {
    public String[] zzbiF;
    public String[] zzbiG;
    public int[] zzbiH;
    public long[] zzbiI;

    public zzsi$zza() {
        zzFS();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzsi$zza)) {
            return false;
        }
        zzsi$zza zzsi_zza = (zzsi$zza) obj;
        if (zzsc.equals(this.zzbiF, zzsi_zza.zzbiF) && zzsc.equals(this.zzbiG, zzsi_zza.zzbiG) && zzsc.equals(this.zzbiH, zzsi_zza.zzbiH) && zzsc.equals(this.zzbiI, zzsi_zza.zzbiI)) {
            return (this.zzbik == null || this.zzbik.isEmpty()) ? zzsi_zza.zzbik == null || zzsi_zza.zzbik.isEmpty() : this.zzbik.equals(zzsi_zza.zzbik);
        }
        return false;
    }

    public int hashCode() {
        return (31 * (((((((((527 + getClass().getName().hashCode()) * 31) + zzsc.hashCode(this.zzbiF)) * 31) + zzsc.hashCode(this.zzbiG)) * 31) + zzsc.hashCode(this.zzbiH)) * 31) + zzsc.hashCode(this.zzbiI))) + ((this.zzbik == null || this.zzbik.isEmpty()) ? 0 : this.zzbik.hashCode());
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    protected int zzB() {
        int iZzB = super.zzB();
        if (this.zzbiF != null && this.zzbiF.length > 0) {
            int iZzfA = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.zzbiF.length; i2++) {
                String str = this.zzbiF[i2];
                if (str != null) {
                    i++;
                    iZzfA += zzrx.zzfA(str);
                }
            }
            iZzB = iZzB + iZzfA + (i * 1);
        }
        if (this.zzbiG != null && this.zzbiG.length > 0) {
            int iZzfA2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzbiG.length; i4++) {
                String str2 = this.zzbiG[i4];
                if (str2 != null) {
                    i3++;
                    iZzfA2 += zzrx.zzfA(str2);
                }
            }
            iZzB = iZzB + iZzfA2 + (i3 * 1);
        }
        if (this.zzbiH != null && this.zzbiH.length > 0) {
            int iZzlJ = 0;
            for (int i5 = 0; i5 < this.zzbiH.length; i5++) {
                iZzlJ += zzrx.zzlJ(this.zzbiH[i5]);
            }
            iZzB = iZzB + iZzlJ + (this.zzbiH.length * 1);
        }
        if (this.zzbiI == null || this.zzbiI.length <= 0) {
            return iZzB;
        }
        int iZzaa = 0;
        for (int i6 = 0; i6 < this.zzbiI.length; i6++) {
            iZzaa += zzrx.zzaa(this.zzbiI[i6]);
        }
        return iZzB + iZzaa + (1 * this.zzbiI.length);
    }

    public zzsi$zza zzFS() {
        this.zzbiF = zzsh.zzbiC;
        this.zzbiG = zzsh.zzbiC;
        this.zzbiH = zzsh.zzbix;
        this.zzbiI = zzsh.zzbiy;
        this.zzbik = null;
        this.zzbiv = -1;
        return this;
    }

    public zzsi$zza zzG(zzrw zzrwVar) throws IOException {
        int iZzlC;
        while (true) {
            int iZzFo = zzrwVar.zzFo();
            if (iZzFo == 0) {
                return this;
            }
            if (iZzFo == 10) {
                int iZzc = zzsh.zzc(zzrwVar, 10);
                int length = this.zzbiF == null ? 0 : this.zzbiF.length;
                String[] strArr = new String[iZzc + length];
                if (length != 0) {
                    System.arraycopy(this.zzbiF, 0, strArr, 0, length);
                }
                while (length < strArr.length - 1) {
                    strArr[length] = zzrwVar.readString();
                    zzrwVar.zzFo();
                    length++;
                }
                strArr[length] = zzrwVar.readString();
                this.zzbiF = strArr;
            } else if (iZzFo == 18) {
                int iZzc2 = zzsh.zzc(zzrwVar, 18);
                int length2 = this.zzbiG == null ? 0 : this.zzbiG.length;
                String[] strArr2 = new String[iZzc2 + length2];
                if (length2 != 0) {
                    System.arraycopy(this.zzbiG, 0, strArr2, 0, length2);
                }
                while (length2 < strArr2.length - 1) {
                    strArr2[length2] = zzrwVar.readString();
                    zzrwVar.zzFo();
                    length2++;
                }
                strArr2[length2] = zzrwVar.readString();
                this.zzbiG = strArr2;
            } else if (iZzFo != 24) {
                if (iZzFo == 26) {
                    iZzlC = zzrwVar.zzlC(zzrwVar.zzFv());
                    int position = zzrwVar.getPosition();
                    int i = 0;
                    while (zzrwVar.zzFA() > 0) {
                        zzrwVar.zzFr();
                        i++;
                    }
                    zzrwVar.zzlE(position);
                    int length3 = this.zzbiH == null ? 0 : this.zzbiH.length;
                    int[] iArr = new int[i + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzbiH, 0, iArr, 0, length3);
                    }
                    while (length3 < iArr.length) {
                        iArr[length3] = zzrwVar.zzFr();
                        length3++;
                    }
                    this.zzbiH = iArr;
                } else if (iZzFo == 32) {
                    int iZzc3 = zzsh.zzc(zzrwVar, 32);
                    int length4 = this.zzbiI == null ? 0 : this.zzbiI.length;
                    long[] jArr = new long[iZzc3 + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzbiI, 0, jArr, 0, length4);
                    }
                    while (length4 < jArr.length - 1) {
                        jArr[length4] = zzrwVar.zzFq();
                        zzrwVar.zzFo();
                        length4++;
                    }
                    jArr[length4] = zzrwVar.zzFq();
                    this.zzbiI = jArr;
                } else if (iZzFo == 34) {
                    iZzlC = zzrwVar.zzlC(zzrwVar.zzFv());
                    int position2 = zzrwVar.getPosition();
                    int i2 = 0;
                    while (zzrwVar.zzFA() > 0) {
                        zzrwVar.zzFq();
                        i2++;
                    }
                    zzrwVar.zzlE(position2);
                    int length5 = this.zzbiI == null ? 0 : this.zzbiI.length;
                    long[] jArr2 = new long[i2 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.zzbiI, 0, jArr2, 0, length5);
                    }
                    while (length5 < jArr2.length) {
                        jArr2[length5] = zzrwVar.zzFq();
                        length5++;
                    }
                    this.zzbiI = jArr2;
                } else if (!zza(zzrwVar, iZzFo)) {
                    return this;
                }
                zzrwVar.zzlD(iZzlC);
            } else {
                int iZzc4 = zzsh.zzc(zzrwVar, 24);
                int length6 = this.zzbiH == null ? 0 : this.zzbiH.length;
                int[] iArr2 = new int[iZzc4 + length6];
                if (length6 != 0) {
                    System.arraycopy(this.zzbiH, 0, iArr2, 0, length6);
                }
                while (length6 < iArr2.length - 1) {
                    iArr2[length6] = zzrwVar.zzFr();
                    zzrwVar.zzFo();
                    length6++;
                }
                iArr2[length6] = zzrwVar.zzFr();
                this.zzbiH = iArr2;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzry, com.google.android.gms.internal.zzse
    public void zza(zzrx zzrxVar) throws IOException {
        if (this.zzbiF != null && this.zzbiF.length > 0) {
            for (int i = 0; i < this.zzbiF.length; i++) {
                String str = this.zzbiF[i];
                if (str != null) {
                    zzrxVar.zzb(1, str);
                }
            }
        }
        if (this.zzbiG != null && this.zzbiG.length > 0) {
            for (int i2 = 0; i2 < this.zzbiG.length; i2++) {
                String str2 = this.zzbiG[i2];
                if (str2 != null) {
                    zzrxVar.zzb(2, str2);
                }
            }
        }
        if (this.zzbiH != null && this.zzbiH.length > 0) {
            for (int i3 = 0; i3 < this.zzbiH.length; i3++) {
                zzrxVar.zzy(3, this.zzbiH[i3]);
            }
        }
        if (this.zzbiI != null && this.zzbiI.length > 0) {
            for (int i4 = 0; i4 < this.zzbiI.length; i4++) {
                zzrxVar.zzb(4, this.zzbiI[i4]);
            }
        }
        super.zza(zzrxVar);
    }

    @Override // com.google.android.gms.internal.zzse
    public /* synthetic */ zzse zzb(zzrw zzrwVar) throws IOException {
        return zzG(zzrwVar);
    }
}
