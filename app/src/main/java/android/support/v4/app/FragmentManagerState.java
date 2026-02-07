package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

/* JADX INFO: compiled from: FragmentManager.java */
/* JADX INFO: loaded from: classes.dex */
final class FragmentManagerState implements Parcelable {
    public static final Parcelable$Creator<FragmentManagerState> CREATOR = new FragmentManagerState$1();
    FragmentState[] mActive;
    int[] mAdded;
    BackStackState[] mBackStack;
    int mNextFragmentIndex;
    int mPrimaryNavActiveIndex;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FragmentManagerState() {
        this.mPrimaryNavActiveIndex = -1;
    }

    public FragmentManagerState(Parcel parcel) {
        this.mPrimaryNavActiveIndex = -1;
        this.mActive = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.mAdded = parcel.createIntArray();
        this.mBackStack = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
        this.mPrimaryNavActiveIndex = parcel.readInt();
        this.mNextFragmentIndex = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.mActive, i);
        parcel.writeIntArray(this.mAdded);
        parcel.writeTypedArray(this.mBackStack, i);
        parcel.writeInt(this.mPrimaryNavActiveIndex);
        parcel.writeInt(this.mNextFragmentIndex);
    }
}
