package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable$Creator<ProxyResponse> {
    static void zza(ProxyResponse proxyResponse, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, proxyResponse.googlePlayServicesStatusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyResponse.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) proxyResponse.recoveryAction, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, proxyResponse.statusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyResponse.zzSK, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyResponse.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        return zzN(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ProxyResponse[] newArray(int i) {
        return zzaE(i);
    }

    public ProxyResponse zzN(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundleZzr = null;
        byte[] bArrZzs = null;
        int iZzg = 0;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            int iZzbM = com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao);
            if (iZzbM != 1000) {
                switch (iZzbM) {
                    case 1:
                        iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                        break;
                    case 2:
                        pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, PendingIntent.CREATOR);
                        break;
                    case 3:
                        iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                        break;
                    case 4:
                        bundleZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzao);
                        break;
                    case 5:
                        bArrZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzao);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                        break;
                }
            } else {
                iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new ProxyResponse(iZzg, iZzg2, pendingIntent, iZzg3, bundleZzr, bArrZzs);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public ProxyResponse[] zzaE(int i) {
        return new ProxyResponse[i];
    }
}
