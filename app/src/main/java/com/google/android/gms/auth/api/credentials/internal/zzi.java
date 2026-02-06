package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zzi implements Parcelable$Creator<SaveRequest> {
    static void zza(SaveRequest saveRequest, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) saveRequest.getCredential(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, saveRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ SaveRequest createFromParcel(Parcel parcel) {
        return zzK(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ SaveRequest[] newArray(int i) {
        return zzaB(i);
    }

    public SaveRequest zzK(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        Credential credential = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            int iZzbM = com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao);
            if (iZzbM == 1) {
                credential = (Credential) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Credential.CREATOR);
            } else if (iZzbM != 1000) {
                com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
            } else {
                iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new SaveRequest(iZzg, credential);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public SaveRequest[] zzaB(int i) {
        return new SaveRequest[i];
    }
}
