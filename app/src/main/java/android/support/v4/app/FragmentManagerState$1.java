package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class FragmentManagerState$1 implements Parcelable$Creator<FragmentManagerState> {
    FragmentManagerState$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ FragmentManagerState createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ FragmentManagerState[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public FragmentManagerState createFromParcel(Parcel parcel) {
        return new FragmentManagerState(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public FragmentManagerState[] newArray(int i) {
        return new FragmentManagerState[i];
    }
}
