package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.NonNull;

class ListPreference$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<ListPreference$SavedState> CREATOR = new ListPreference$SavedState$1();
    String value;

    public ListPreference$SavedState(Parcel parcel) {
        super(parcel);
        this.value = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.value);
    }

    public ListPreference$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
