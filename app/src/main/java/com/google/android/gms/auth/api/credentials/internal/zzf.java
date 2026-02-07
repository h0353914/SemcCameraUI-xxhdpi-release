package com.google.android.gms.auth.api.credentials.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzf implements Parcelable$Creator<DeleteRequest> {
    static void zza(DeleteRequest deleteRequest, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) deleteRequest.getCredential(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, deleteRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ DeleteRequest createFromParcel(Parcel parcel) {
        return zzJ(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ DeleteRequest[] newArray(int i) {
        return zzaA(i);
    }

    public DeleteRequest zzJ(Parcel parcel) {
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
            return new DeleteRequest(iZzg, credential);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public DeleteRequest[] zzaA(int i) {
        return new DeleteRequest[i];
    }
}
