package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable$ClassLoaderCreator;

/* JADX INFO: loaded from: classes.dex */
class AbsSavedState$2 implements Parcelable$ClassLoaderCreator<AbsSavedState> {
    AbsSavedState$2() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$ClassLoaderCreator
    public /* bridge */ /* synthetic */ AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return createFromParcel(parcel, classLoader);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ Object[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$ClassLoaderCreator
    public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
        if (parcel.readParcelable(classLoader) != null) {
            throw new IllegalStateException("superState must be null");
        }
        return AbsSavedState.EMPTY_STATE;
    }

    @Override // android.os.Parcelable$Creator
    public AbsSavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }

    @Override // android.os.Parcelable$Creator
    public AbsSavedState[] newArray(int i) {
        return new AbsSavedState[i];
    }
}
