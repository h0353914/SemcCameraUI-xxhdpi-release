package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

class ActionMenuPresenter$SavedState implements Parcelable {
    public static final Parcelable$Creator<ActionMenuPresenter$SavedState> CREATOR = new ActionMenuPresenter$SavedState$1();
    public int openSubMenuId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    ActionMenuPresenter$SavedState() {
    }

    ActionMenuPresenter$SavedState(Parcel parcel) {
        this.openSubMenuId = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.openSubMenuId);
    }
}
