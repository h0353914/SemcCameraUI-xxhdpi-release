package com.google.android.apps.gsa.publicsearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

public final class SystemParcelableWrapper implements Parcelable {
    public static final Parcelable$Creator<SystemParcelableWrapper> CREATOR = new SystemParcelableWrapper$1();
    private final Parcelable parcelable;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SystemParcelableWrapper(Parcelable parcelable) {
        if (!isSystemParcelable(parcelable)) {
            throw new IllegalArgumentException("Only Android system classes can be passed in SystemParcelableWrapper.");
        }
        this.parcelable = parcelable;
    }

    public Parcelable getParcelable() {
        return this.parcelable;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.parcelable, flags);
    }

    static boolean isSystemParcelable(Parcelable parcelable) {
        return parcelable.getClass().getName().startsWith("android.os.");
    }
}
