package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class zzc {
    public static <T extends SafeParcelable> T zza(Intent intent, String str, Parcelable$Creator<T> parcelable$Creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) zza(byteArrayExtra, parcelable$Creator);
    }

    public static <T extends SafeParcelable> T zza(byte[] bArr, Parcelable$Creator<T> parcelable$Creator) {
        zzx.zzw(parcelable$Creator);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        T tCreateFromParcel = parcelable$Creator.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return tCreateFromParcel;
    }

    public static <T extends SafeParcelable> void zza(T t, Intent intent, String str) {
        intent.putExtra(str, zza(t));
    }

    public static <T extends SafeParcelable> byte[] zza(T t) {
        Parcel parcelObtain = Parcel.obtain();
        t.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        return bArrMarshall;
    }
}
