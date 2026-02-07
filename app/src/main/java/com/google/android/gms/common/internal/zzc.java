package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable$Creator<AuthAccountRequest> {
    static void zza(AuthAccountRequest authAccountRequest, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, authAccountRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, authAccountRequest.zzaeH, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) authAccountRequest.zzaeI, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ AuthAccountRequest createFromParcel(Parcel parcel) {
        return zzai(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ AuthAccountRequest[] newArray(int i) {
        return zzbB(i);
    }

    public AuthAccountRequest zzai(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        IBinder iBinderZzq = null;
        int iZzg = 0;
        Scope[] scopeArr = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    iBinderZzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, iZzao);
                    break;
                case 3:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao, Scope.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new AuthAccountRequest(iZzg, iBinderZzq, scopeArr);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public AuthAccountRequest[] zzbB(int i) {
        return new AuthAccountRequest[i];
    }
}
