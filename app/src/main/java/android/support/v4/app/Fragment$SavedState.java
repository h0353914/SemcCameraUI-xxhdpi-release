package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
public class Fragment$SavedState implements Parcelable {
    public static final Parcelable$Creator<Fragment$SavedState> CREATOR = new Fragment$SavedState$1();
    final Bundle mState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    Fragment$SavedState(Bundle bundle) {
        this.mState = bundle;
    }

    Fragment$SavedState(Parcel parcel, ClassLoader classLoader) {
        this.mState = parcel.readBundle();
        if (classLoader == null || this.mState == null) {
            return;
        }
        this.mState.setClassLoader(classLoader);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.mState);
    }
}
