package android.support.v7.preference;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class PreferenceGroup$SavedState$1 implements Parcelable$Creator<PreferenceGroup$SavedState> {
    PreferenceGroup$SavedState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PreferenceGroup$SavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PreferenceGroup$SavedState[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PreferenceGroup$SavedState createFromParcel(Parcel parcel) {
        return new PreferenceGroup$SavedState(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PreferenceGroup$SavedState[] newArray(int i) {
        return new PreferenceGroup$SavedState[i];
    }
}
