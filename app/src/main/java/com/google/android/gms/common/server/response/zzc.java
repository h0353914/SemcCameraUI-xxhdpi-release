package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.ArrayList;

public class zzc implements Parcelable$Creator<FieldMappingDictionary> {
    static void zza(FieldMappingDictionary fieldMappingDictionary, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fieldMappingDictionary.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, fieldMappingDictionary.zzpS(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, fieldMappingDictionary.zzpT(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary createFromParcel(Parcel parcel) {
        return zzax(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary[] newArray(int i) {
        return zzbV(i);
    }

    public FieldMappingDictionary zzax(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        ArrayList arrayListZzc = null;
        int iZzg = 0;
        String strZzp = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao, FieldMappingDictionary$Entry.CREATOR);
                    break;
                case 3:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FieldMappingDictionary(iZzg, arrayListZzc, strZzp);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FieldMappingDictionary[] zzbV(int i) {
        return new FieldMappingDictionary[i];
    }
}
