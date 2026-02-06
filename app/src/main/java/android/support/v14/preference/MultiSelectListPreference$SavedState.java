package android.support.v14.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.NonNull;
import android.support.v7.preference.Preference$BaseSavedState;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

class MultiSelectListPreference$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<MultiSelectListPreference$SavedState> CREATOR = new MultiSelectListPreference$SavedState$1();
    Set<String> mValues;

    MultiSelectListPreference$SavedState(Parcel parcel) {
        super(parcel);
        int i = parcel.readInt();
        this.mValues = new HashSet();
        String[] strArr = new String[i];
        parcel.readStringArray(strArr);
        Collections.addAll(this.mValues, strArr);
    }

    MultiSelectListPreference$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.mValues.size());
        parcel.writeStringArray((String[]) this.mValues.toArray(new String[this.mValues.size()]));
    }
}
