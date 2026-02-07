package com.duolingo.open.rtlviewpager;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/* JADX INFO: loaded from: classes.dex */
class RtlViewPager$SavedState$1 implements ParcelableCompatCreatorCallbacks<RtlViewPager$SavedState> {
    RtlViewPager$SavedState$1() {
    }

    @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
    public /* bridge */ /* synthetic */ RtlViewPager$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
    public /* bridge */ /* synthetic */ RtlViewPager$SavedState[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
    public RtlViewPager$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new RtlViewPager$SavedState(parcel, classLoader, (RtlViewPager$1) null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.support.v4.os.ParcelableCompatCreatorCallbacks
    public RtlViewPager$SavedState[] newArray(int i) {
        return new RtlViewPager$SavedState[i];
    }
}
