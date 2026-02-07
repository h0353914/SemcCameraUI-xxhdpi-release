package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.view.AbsSavedState;

/* JADX INFO: loaded from: classes.dex */
class SlidingPaneLayout$SavedState extends AbsSavedState {
    public static final Parcelable$Creator<SlidingPaneLayout$SavedState> CREATOR = new SlidingPaneLayout$SavedState$1();
    boolean isOpen;

    SlidingPaneLayout$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    SlidingPaneLayout$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.isOpen = parcel.readInt() != 0;
    }

    @Override // android.support.v4.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.isOpen ? 1 : 0);
    }
}
