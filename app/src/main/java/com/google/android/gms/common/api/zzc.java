package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable$Creator<Scope> {
    static void zza(Scope scope, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, scope.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, scope.zznG(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ Scope createFromParcel(Parcel parcel) {
        return zzad(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ Scope[] newArray(int i) {
        return zzbl(i);
    }

    public Scope zzad(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        String strZzp = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new Scope(iZzg, strZzp);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public Scope[] zzbl(int i) {
        return new Scope[i];
    }
}
