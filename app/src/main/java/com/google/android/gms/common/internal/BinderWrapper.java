package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable$Creator<BinderWrapper> CREATOR = new BinderWrapper$1();
    private IBinder zzaeJ;

    public BinderWrapper() {
        this.zzaeJ = null;
    }

    public BinderWrapper(IBinder iBinder) {
        this.zzaeJ = null;
        this.zzaeJ = iBinder;
    }

    private BinderWrapper(Parcel parcel) {
        this.zzaeJ = null;
        this.zzaeJ = parcel.readStrongBinder();
    }

    /* synthetic */ BinderWrapper(Parcel parcel, BinderWrapper$1 binderWrapper$1) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzaeJ);
    }
}
