package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;

public class zza implements Parcelable$Creator<FastJsonResponse$Field> {
    static void zza(FastJsonResponse$Field fastJsonResponse$Field, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, fastJsonResponse$Field.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, fastJsonResponse$Field.zzpB());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, fastJsonResponse$Field.zzpH());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, fastJsonResponse$Field.zzpC());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, fastJsonResponse$Field.zzpI());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, fastJsonResponse$Field.zzpJ(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, fastJsonResponse$Field.zzpK());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, fastJsonResponse$Field.zzpM(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) fastJsonResponse$Field.zzpO(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FastJsonResponse$Field createFromParcel(Parcel parcel) {
        return zzav(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FastJsonResponse$Field[] newArray(int i) {
        return zzbT(i);
    }

    public FastJsonResponse$Field zzav(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        String strZzp = null;
        String strZzp2 = null;
        ConverterWrapper converterWrapper = null;
        int iZzg = 0;
        int iZzg2 = 0;
        boolean zZzc = false;
        int iZzg3 = 0;
        boolean zZzc2 = false;
        int iZzg4 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 3:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 4:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 5:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 6:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 7:
                    iZzg4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 8:
                    strZzp2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 9:
                    converterWrapper = (ConverterWrapper) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, ConverterWrapper.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FastJsonResponse$Field(iZzg, iZzg2, zZzc, iZzg3, zZzc2, strZzp, iZzg4, strZzp2, converterWrapper);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FastJsonResponse$Field[] zzbT(int i) {
        return new FastJsonResponse$Field[i];
    }
}
