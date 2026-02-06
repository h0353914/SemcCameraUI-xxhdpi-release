package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class BinderWrapper$1 implements Parcelable$Creator<BinderWrapper> {
    BinderWrapper$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ BinderWrapper createFromParcel(Parcel parcel) {
        return zzaj(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* synthetic */ BinderWrapper[] newArray(int i) {
        return zzbC(i);
    }

    public BinderWrapper zzaj(Parcel parcel) {
        return new BinderWrapper(parcel, null);
    }

    public BinderWrapper[] zzbC(int i) {
        return new BinderWrapper[i];
    }
}
