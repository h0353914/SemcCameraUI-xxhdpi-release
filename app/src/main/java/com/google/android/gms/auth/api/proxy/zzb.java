package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable$Creator<ProxyRequest> {
    static void zza(ProxyRequest proxyRequest, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, proxyRequest.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, proxyRequest.httpMethod);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, proxyRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyRequest.zzSK, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        return zzM(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ ProxyRequest[] newArray(int i) {
        return zzaD(i);
    }

    public ProxyRequest zzM(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        int iZzg2 = 0;
        String strZzp = null;
        byte[] bArrZzs = null;
        Bundle bundleZzr = null;
        long jZzi = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            int iZzbM = com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao);
            if (iZzbM != 1000) {
                switch (iZzbM) {
                    case 1:
                        strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                        break;
                    case 2:
                        iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                        break;
                    case 3:
                        jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzao);
                        break;
                    case 4:
                        bArrZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzao);
                        break;
                    case 5:
                        bundleZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzao);
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
            return new ProxyRequest(iZzg, strZzp, iZzg2, jZzi, bArrZzs, bundleZzr);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public ProxyRequest[] zzaD(int i) {
        return new ProxyRequest[i];
    }
}
