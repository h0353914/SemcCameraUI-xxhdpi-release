package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zzb implements Parcelable$Creator<FACLData> {
    static void zza(FACLData fACLData, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fACLData.version);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) fACLData.zzTD, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, fACLData.zzTE, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, fACLData.zzTF);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, fACLData.zzTG, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FACLData createFromParcel(Parcel parcel) {
        return zzU(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FACLData[] newArray(int i) {
        return zzaL(i);
    }

    public FACLData zzU(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        boolean zZzc = false;
        FACLConfig fACLConfig = null;
        String strZzp = null;
        String strZzp2 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    fACLConfig = (FACLConfig) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, FACLConfig.CREATOR);
                    break;
                case 3:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 4:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 5:
                    strZzp2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FACLData(iZzg, fACLConfig, strZzp, zZzc, strZzp2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FACLData[] zzaL(int i) {
        return new FACLData[i];
    }
}
