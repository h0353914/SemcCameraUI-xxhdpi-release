package com.google.android.apps.gsa.publicsearch;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class SystemParcelableWrapper$1 implements Parcelable$Creator<SystemParcelableWrapper> {
    SystemParcelableWrapper$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ SystemParcelableWrapper createFromParcel(Parcel source) {
        return createFromParcel(source);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ SystemParcelableWrapper[] newArray(int size) {
        return newArray(size);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public SystemParcelableWrapper createFromParcel(Parcel source) {
        return new SystemParcelableWrapper(source.readParcelable(null));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public SystemParcelableWrapper[] newArray(int size) {
        return new SystemParcelableWrapper[size];
    }
}
