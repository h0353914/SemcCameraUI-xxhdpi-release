package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

class SeekBarPreference$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<SeekBarPreference$SavedState> CREATOR = new SeekBarPreference$SavedState$1();
    int max;
    int min;
    int seekBarValue;

    public SeekBarPreference$SavedState(Parcel parcel) {
        super(parcel);
        this.seekBarValue = parcel.readInt();
        this.min = parcel.readInt();
        this.max = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.seekBarValue);
        parcel.writeInt(this.min);
        parcel.writeInt(this.max);
    }

    public SeekBarPreference$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
