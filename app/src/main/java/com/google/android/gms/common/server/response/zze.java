package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zze implements Parcelable$Creator<SafeParcelResponse> {
    static void zza(SafeParcelResponse safeParcelResponse, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, safeParcelResponse.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, safeParcelResponse.zzpV(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) safeParcelResponse.zzpW(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        return zzaz(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ SafeParcelResponse[] newArray(int i) {
        return zzbX(i);
    }

    public SafeParcelResponse zzaz(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        Parcel parcelZzE = null;
        int iZzg = 0;
        FieldMappingDictionary fieldMappingDictionary = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    parcelZzE = com.google.android.gms.common.internal.safeparcel.zza.zzE(parcel, iZzao);
                    break;
                case 3:
                    fieldMappingDictionary = (FieldMappingDictionary) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, FieldMappingDictionary.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new SafeParcelResponse(iZzg, parcelZzE, fieldMappingDictionary);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public SafeParcelResponse[] zzbX(int i) {
        return new SafeParcelResponse[i];
    }
}
