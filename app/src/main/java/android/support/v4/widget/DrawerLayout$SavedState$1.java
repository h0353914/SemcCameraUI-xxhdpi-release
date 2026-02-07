package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

/* JADX INFO: loaded from: classes.dex */
class DrawerLayout$SavedState$1 implements Parcelable$ClassLoaderCreator<DrawerLayout$SavedState> {
    DrawerLayout$SavedState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$ClassLoaderCreator
    public /* bridge */ /* synthetic */ DrawerLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$ClassLoaderCreator
    public DrawerLayout$SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new DrawerLayout$SavedState(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public DrawerLayout$SavedState createFromParcel(Parcel parcel) {
        return new DrawerLayout$SavedState(parcel, null);
    }

    @Override // android.os.Parcelable$Creator
    public DrawerLayout$SavedState[] newArray(int i) {
        return new DrawerLayout$SavedState[i];
    }
}
