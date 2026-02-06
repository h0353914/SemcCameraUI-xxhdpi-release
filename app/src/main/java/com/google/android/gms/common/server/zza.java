package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zza implements Parcelable$Creator<FavaDiagnosticsEntity> {
    static void zza(FavaDiagnosticsEntity favaDiagnosticsEntity, Parcel parcel, int i) {
        int iZzaq = zzb.zzaq(parcel);
        zzb.zzc(parcel, 1, favaDiagnosticsEntity.mVersionCode);
        zzb.zza(parcel, 2, favaDiagnosticsEntity.zzagM, false);
        zzb.zzc(parcel, 3, favaDiagnosticsEntity.zzagN);
        zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
        return zzar(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FavaDiagnosticsEntity[] newArray(int i) {
        return zzbP(i);
    }

    public FavaDiagnosticsEntity zzar(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        String strZzp = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 3:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FavaDiagnosticsEntity(iZzg, strZzp, iZzg2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FavaDiagnosticsEntity[] zzbP(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
