package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

class TwoStatePreference$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<TwoStatePreference$SavedState> CREATOR = new TwoStatePreference$SavedState$1();
    boolean checked;

    public TwoStatePreference$SavedState(Parcel parcel) {
        super(parcel);
        this.checked = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.checked ? 1 : 0);
    }

    public TwoStatePreference$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
