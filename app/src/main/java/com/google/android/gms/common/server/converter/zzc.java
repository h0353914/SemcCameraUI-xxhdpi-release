package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable$Creator<StringToIntConverter$Entry> {
    static void zza(StringToIntConverter$Entry stringToIntConverter$Entry, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, stringToIntConverter$Entry.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, stringToIntConverter$Entry.zzagS, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, stringToIntConverter$Entry.zzagT);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ StringToIntConverter$Entry createFromParcel(Parcel parcel) {
        return zzau(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ StringToIntConverter$Entry[] newArray(int i) {
        return zzbS(i);
    }

    public StringToIntConverter$Entry zzau(Parcel parcel) {
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
            return new StringToIntConverter$Entry(iZzg, strZzp, iZzg2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public StringToIntConverter$Entry[] zzbS(int i) {
        return new StringToIntConverter$Entry[i];
    }
}
