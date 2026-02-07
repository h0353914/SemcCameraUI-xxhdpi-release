package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.view.View$BaseSavedState;

/* JADX INFO: loaded from: classes.dex */
class FragmentTabHost$SavedState extends View$BaseSavedState {
    public static final Parcelable$Creator<FragmentTabHost$SavedState> CREATOR = new FragmentTabHost$SavedState$1();
    String curTab;

    FragmentTabHost$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    FragmentTabHost$SavedState(Parcel parcel) {
        super(parcel);
        this.curTab = parcel.readString();
    }

    @Override // android.view.View$BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.curTab);
    }

    public String toString() {
        return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
    }
}
