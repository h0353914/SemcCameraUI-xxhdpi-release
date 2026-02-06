package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zzb implements Parcelable$Creator<FieldMappingDictionary$FieldMapPair> {
    static void zza(FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fieldMappingDictionary$FieldMapPair.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, fieldMappingDictionary$FieldMapPair.key, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) fieldMappingDictionary$FieldMapPair.zzahi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary$FieldMapPair createFromParcel(Parcel parcel) {
        return zzaw(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FieldMappingDictionary$FieldMapPair[] newArray(int i) {
        return zzbU(i);
    }

    public FieldMappingDictionary$FieldMapPair zzaw(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        String strZzp = null;
        int iZzg = 0;
        FastJsonResponse$Field fastJsonResponse$Field = null;
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
                    fastJsonResponse$Field = (FastJsonResponse$Field) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, FastJsonResponse$Field.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FieldMappingDictionary$FieldMapPair(iZzg, strZzp, fastJsonResponse$Field);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FieldMappingDictionary$FieldMapPair[] zzbU(int i) {
        return new FieldMappingDictionary$FieldMapPair[i];
    }
}
