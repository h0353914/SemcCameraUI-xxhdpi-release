package android.support.v14.preference;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class MultiSelectListPreference$SavedState$1 implements Parcelable$Creator<MultiSelectListPreference$SavedState> {
    MultiSelectListPreference$SavedState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MultiSelectListPreference$SavedState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MultiSelectListPreference$SavedState[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MultiSelectListPreference$SavedState createFromParcel(Parcel parcel) {
        return new MultiSelectListPreference$SavedState(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MultiSelectListPreference$SavedState[] newArray(int i) {
        return new MultiSelectListPreference$SavedState[i];
    }
}
