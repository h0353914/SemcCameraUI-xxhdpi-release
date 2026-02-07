package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable$Creator<FacebookSignInConfig> {
    static void zza(FacebookSignInConfig facebookSignInConfig, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, facebookSignInConfig.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) facebookSignInConfig.zzlR(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 3, facebookSignInConfig.zzlS(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FacebookSignInConfig createFromParcel(Parcel parcel) {
        return zzP(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ FacebookSignInConfig[] newArray(int i) {
        return zzaG(i);
    }

    public FacebookSignInConfig zzP(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        Intent intent = null;
        int iZzg = 0;
        ArrayList<String> arrayListZzD = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Intent.CREATOR);
                    break;
                case 3:
                    arrayListZzD = com.google.android.gms.common.internal.safeparcel.zza.zzD(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new FacebookSignInConfig(iZzg, intent, arrayListZzD);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public FacebookSignInConfig[] zzaG(int i) {
        return new FacebookSignInConfig[i];
    }
}
