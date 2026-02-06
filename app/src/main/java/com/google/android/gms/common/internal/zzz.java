package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zzz implements Parcelable$Creator<ResolveAccountResponse> {
    static void zza(ResolveAccountResponse resolveAccountResponse, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, resolveAccountResponse.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, resolveAccountResponse.zzaeH, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) resolveAccountResponse.zzpr(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, resolveAccountResponse.zzps());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, resolveAccountResponse.zzpt());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ResolveAccountResponse createFromParcel(Parcel parcel) {
        return zzam(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return zzbK(i);
    }

    public ResolveAccountResponse zzam(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        IBinder iBinderZzq = null;
        ConnectionResult connectionResult = null;
        int iZzg = 0;
        boolean zZzc = false;
        boolean zZzc2 = false;
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
                    connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, ConnectionResult.CREATOR);
                    break;
                case 4:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 5:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new ResolveAccountResponse(iZzg, iBinderZzq, connectionResult, zZzc, zZzc2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public ResolveAccountResponse[] zzbK(int i) {
        return new ResolveAccountResponse[i];
    }
}
