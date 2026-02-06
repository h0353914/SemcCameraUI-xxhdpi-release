package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class StringToIntConverter$Entry implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    final int versionCode;
    final String zzagS;
    final int zzagT;

    StringToIntConverter$Entry(int i, String str, int i2) {
        this.versionCode = i;
        this.zzagS = str;
        this.zzagT = i2;
    }

    StringToIntConverter$Entry(String str, int i) {
        this.versionCode = 1;
        this.zzagS = str;
        this.zzagT = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzc zzcVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc zzcVar = CREATOR;
        zzc.zza(this, parcel, i);
    }
}
