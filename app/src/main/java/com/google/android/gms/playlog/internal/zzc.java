package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable$Creator;

public class zzc implements Parcelable$Creator<LogEvent> {
    static void zza(LogEvent logEvent, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, logEvent.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, logEvent.zzaRG);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, logEvent.tag, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, logEvent.zzaRI, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, logEvent.zzaRJ, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, logEvent.zzaRH);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ LogEvent createFromParcel(Parcel parcel) {
        return zzgi(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ LogEvent[] newArray(int i) {
        return zziU(i);
    }

    public LogEvent zzgi(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        long jZzi = 0;
        long jZzi2 = 0;
        String strZzp = null;
        byte[] bArrZzs = null;
        Bundle bundleZzr = null;
        int iZzg = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzao);
                    break;
                case 3:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 4:
                    bArrZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzao);
                    break;
                case 5:
                    bundleZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzao);
                    break;
                case 6:
                    jZzi2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new LogEvent(iZzg, jZzi, jZzi2, strZzp, bArrZzs, bundleZzr);
        }
        throw new com.google.android.gms.common.internal.safeparcel.zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public LogEvent[] zziU(int i) {
        return new LogEvent[i];
    }
}
