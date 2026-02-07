package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable$Creator<AuthAccountResult> {
    static void zza(AuthAccountResult authAccountResult, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, authAccountResult.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ AuthAccountResult createFromParcel(Parcel parcel) {
        return zzgB(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ AuthAccountResult[] newArray(int i) {
        return zzjo(i);
    }

    public AuthAccountResult zzgB(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            if (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao) != 1) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
            } else {
                iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new AuthAccountResult(iZzg);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public AuthAccountResult[] zzjo(int i) {
        return new AuthAccountResult[i];
    }
}
