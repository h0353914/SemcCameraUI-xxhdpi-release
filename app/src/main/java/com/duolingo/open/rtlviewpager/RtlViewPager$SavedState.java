package com.duolingo.open.rtlviewpager;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.os.ParcelableCompat;

public class RtlViewPager$SavedState implements Parcelable {
    public static final Parcelable$Creator<RtlViewPager$SavedState> CREATOR = ParcelableCompat.newCreator(new RtlViewPager$SavedState$1());
    private final int mLayoutDirection;
    private final Parcelable mViewPagerSavedState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* synthetic */ RtlViewPager$SavedState(Parcel parcel, ClassLoader classLoader, RtlViewPager$1 rtlViewPager$1) {
        this(parcel, classLoader);
    }

    /* synthetic */ RtlViewPager$SavedState(Parcelable parcelable, int i, RtlViewPager$1 rtlViewPager$1) {
        this(parcelable, i);
    }

    static /* synthetic */ int access$200(RtlViewPager$SavedState rtlViewPager$SavedState) {
        return rtlViewPager$SavedState.mLayoutDirection;
    }

    static /* synthetic */ Parcelable access$300(RtlViewPager$SavedState rtlViewPager$SavedState) {
        return rtlViewPager$SavedState.mViewPagerSavedState;
    }

    private RtlViewPager$SavedState(Parcelable parcelable, int i) {
        this.mViewPagerSavedState = parcelable;
        this.mLayoutDirection = i;
    }

    private RtlViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        this.mViewPagerSavedState = parcel.readParcelable(classLoader == null ? getClass().getClassLoader() : classLoader);
        this.mLayoutDirection = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mViewPagerSavedState, i);
        parcel.writeInt(this.mLayoutDirection);
    }
}
