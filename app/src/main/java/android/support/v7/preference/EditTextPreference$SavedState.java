package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class EditTextPreference$SavedState extends Preference$BaseSavedState {
    public static final Parcelable$Creator<EditTextPreference$SavedState> CREATOR = new EditTextPreference$SavedState$1();
    String text;

    public EditTextPreference$SavedState(Parcel parcel) {
        super(parcel);
        this.text = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.text);
    }

    public EditTextPreference$SavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
