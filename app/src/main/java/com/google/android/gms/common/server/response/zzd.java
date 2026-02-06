package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.ArrayList;

public class zzd implements Parcelable$Creator<FieldMappingDictionary$Entry> {
    static void zza(FieldMappingDictionary$Entry fieldMappingDictionary$Entry, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fieldMappingDictionary$Entry.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, fieldMappingDictionary$Entry.className, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, fieldMappingDictionary$Entry.zzahh, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary$Entry createFromParcel(Parcel parcel) {
        return zzay(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary$Entry[] newArray(int i) {
        return zzbW(i);
    }

    public FieldMappingDictionary$Entry zzay(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        String strZzp = null;
        int iZzg = 0;
        ArrayList arrayListZzc = null;
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
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao, FieldMappingDictionary$FieldMapPair.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FieldMappingDictionary$Entry(iZzg, strZzp, arrayListZzc);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FieldMappingDictionary$Entry[] zzbW(int i) {
        return new FieldMappingDictionary$Entry[i];
    }
}
