package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable$Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class zzd<T extends SafeParcelable> extends AbstractDataBuffer<T> {
    private static final String[] zzadn = {"data"};
    private final Parcelable$Creator<T> zzado;

    public zzd(DataHolder dataHolder, Parcelable$Creator<T> parcelable$Creator) {
        super(dataHolder);
        this.zzado = parcelable$Creator;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public /* synthetic */ Object get(int i) {
        return zzbs(i);
    }

    public T zzbs(int i) {
        byte[] bArrZzg = this.zzabq.zzg("data", i, this.zzabq.zzbt(i));
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrZzg, 0, bArrZzg.length);
        parcelObtain.setDataPosition(0);
        T tCreateFromParcel = this.zzado.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return tCreateFromParcel;
    }
}
