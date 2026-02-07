package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class NestedScrollView$SavedState$1 implements Parcelable$Creator<NestedScrollView$SavedState> {
    NestedScrollView$SavedState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ NestedScrollView$SavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ NestedScrollView$SavedState[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public NestedScrollView$SavedState createFromParcel(Parcel parcel) {
        return new NestedScrollView$SavedState(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public NestedScrollView$SavedState[] newArray(int i) {
        return new NestedScrollView$SavedState[i];
    }
}
