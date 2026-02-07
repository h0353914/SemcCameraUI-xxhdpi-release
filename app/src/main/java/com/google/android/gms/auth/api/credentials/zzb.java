package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.zza$zza;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable$Creator<CredentialPickerConfig> {
    static void zza(CredentialPickerConfig credentialPickerConfig, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, credentialPickerConfig.shouldShowAddAccountButton());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, credentialPickerConfig.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, credentialPickerConfig.shouldShowCancelButton());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ CredentialPickerConfig createFromParcel(Parcel parcel) {
        return zzF(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ CredentialPickerConfig[] newArray(int i) {
        return zzaw(i);
    }

    public CredentialPickerConfig zzF(Parcel parcel) {
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        boolean zZzc = false;
        boolean zZzc2 = false;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            int iZzbM = com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao);
            if (iZzbM != 1000) {
                switch (iZzbM) {
                    case 1:
                        zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                        break;
                    case 2:
                        zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
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
            return new CredentialPickerConfig(iZzg, zZzc, zZzc2);
        }
        throw new zza$zza("Overread allowed size end=" + iZzap, parcel);
    }

    public CredentialPickerConfig[] zzaw(int i) {
        return new CredentialPickerConfig[i];
    }
}
