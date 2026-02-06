package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;

public class zza$zza extends RuntimeException {
    public zza$zza(String str, Parcel parcel) {
        super(str + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
    }
}
