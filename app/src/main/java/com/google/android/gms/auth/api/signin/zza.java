package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

public class zza implements Parcelable$Creator<EmailSignInConfig> {
    static void zza(EmailSignInConfig emailSignInConfig, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, emailSignInConfig.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) emailSignInConfig.zzlO(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, emailSignInConfig.zzlQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) emailSignInConfig.zzlP(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ EmailSignInConfig createFromParcel(Parcel parcel) {
        return zzO(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ EmailSignInConfig[] newArray(int i) {
        return zzaF(i);
    }

    public EmailSignInConfig zzO(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        Uri uri = null;
        int iZzg = 0;
        String strZzp = null;
        Uri uri2 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Uri.CREATOR);
                    break;
                case 3:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 4:
                    uri2 = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Uri.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() == iZzap) {
            return new EmailSignInConfig(iZzg, uri, strZzp, uri2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public EmailSignInConfig[] zzaF(int i) {
        return new EmailSignInConfig[i];
    }
}
