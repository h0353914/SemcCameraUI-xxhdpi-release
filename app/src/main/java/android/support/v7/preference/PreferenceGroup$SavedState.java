package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

class PreferenceGroup$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<PreferenceGroup$SavedState> CREATOR = new PreferenceGroup$SavedState$1();
    int mInitialExpandedChildrenCount;

    PreferenceGroup$SavedState(Parcel parcel) {
        super(parcel);
        this.mInitialExpandedChildrenCount = parcel.readInt();
    }

    PreferenceGroup$SavedState(Parcelable parcelable, int i) {
        super(parcelable);
        this.mInitialExpandedChildrenCount = i;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.mInitialExpandedChildrenCount);
    }
}
