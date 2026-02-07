package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable$Creator<StringToIntConverter> {
    static void zza(StringToIntConverter stringToIntConverter, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, stringToIntConverter.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, stringToIntConverter.zzpA(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ StringToIntConverter createFromParcel(Parcel parcel) {
        return zzat(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ StringToIntConverter[] newArray(int i) {
        return zzbR(i);
    }

    public StringToIntConverter zzat(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        ArrayList arrayListZzc = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao, StringToIntConverter$Entry.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new StringToIntConverter(iZzg, arrayListZzc);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public StringToIntConverter[] zzbR(int i) {
        return new StringToIntConverter[i];
    }
}
