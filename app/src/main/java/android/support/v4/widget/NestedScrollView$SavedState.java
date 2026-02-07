package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

/* JADX INFO: loaded from: classes.dex */
class NestedScrollView$SavedState extends View$BaseSavedState {
    public static final Parcelable$Creator<NestedScrollView$SavedState> CREATOR = new NestedScrollView$SavedState$1();
    public int scrollPosition;

    NestedScrollView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    NestedScrollView$SavedState(Parcel parcel) {
        super(parcel);
        this.scrollPosition = parcel.readInt();
    }

    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.scrollPosition);
    }

    public String toString() {
        return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
    }
}
