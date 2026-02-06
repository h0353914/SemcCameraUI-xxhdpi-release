package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

class ViewPager$SavedState$1 implements Parcelable$ClassLoaderCreator<ViewPager$SavedState> {
    ViewPager$SavedState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$ClassLoaderCreator
    public /* bridge */ /* synthetic */ ViewPager$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$ClassLoaderCreator
    public ViewPager$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ViewPager$SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public ViewPager$SavedState createFromParcel(Parcel parcel) {
        return new ViewPager$SavedState(parcel, null);
    }

    @Override // android.os.Parcelable$Creator
    public ViewPager$SavedState[] newArray(int i) {
        return new ViewPager$SavedState[i];
    }
}
