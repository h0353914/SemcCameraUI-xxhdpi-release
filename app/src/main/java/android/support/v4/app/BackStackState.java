package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: BackStackRecord.java */
/* JADX INFO: loaded from: classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable$Creator<BackStackState> CREATOR = new BackStackState$1();
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int mIndex;
    final String mName;
    final int[] mOps;
    final boolean mReorderingAllowed;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;
    final int mTransitionStyle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BackStackState(BackStackRecord backStackRecord) {
        int size = backStackRecord.mOps.size();
        this.mOps = new int[size * 6];
        if (!backStackRecord.mAddToBackStack) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        int i2 = 0;
        while (i < size) {
            BackStackRecord$Op backStackRecord$Op = backStackRecord.mOps.get(i);
            int i3 = i2 + 1;
            this.mOps[i2] = backStackRecord$Op.cmd;
            int i4 = i3 + 1;
            this.mOps[i3] = backStackRecord$Op.fragment != null ? backStackRecord$Op.fragment.mIndex : -1;
            int i5 = i4 + 1;
            this.mOps[i4] = backStackRecord$Op.enterAnim;
            int i6 = i5 + 1;
            this.mOps[i5] = backStackRecord$Op.exitAnim;
            int i7 = i6 + 1;
            this.mOps[i6] = backStackRecord$Op.popEnterAnim;
            this.mOps[i7] = backStackRecord$Op.popExitAnim;
            i++;
            i2 = i7 + 1;
        }
        this.mTransition = backStackRecord.mTransition;
        this.mTransitionStyle = backStackRecord.mTransitionStyle;
        this.mName = backStackRecord.mName;
        this.mIndex = backStackRecord.mIndex;
        this.mBreadCrumbTitleRes = backStackRecord.mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = backStackRecord.mBreadCrumbTitleText;
        this.mBreadCrumbShortTitleRes = backStackRecord.mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = backStackRecord.mBreadCrumbShortTitleText;
        this.mSharedElementSourceNames = backStackRecord.mSharedElementSourceNames;
        this.mSharedElementTargetNames = backStackRecord.mSharedElementTargetNames;
        this.mReorderingAllowed = backStackRecord.mReorderingAllowed;
    }

    public BackStackState(Parcel parcel) {
        this.mOps = parcel.createIntArray();
        this.mTransition = parcel.readInt();
        this.mTransitionStyle = parcel.readInt();
        this.mName = parcel.readString();
        this.mIndex = parcel.readInt();
        this.mBreadCrumbTitleRes = parcel.readInt();
        this.mBreadCrumbTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mBreadCrumbShortTitleRes = parcel.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSharedElementSourceNames = parcel.createStringArrayList();
        this.mSharedElementTargetNames = parcel.createStringArrayList();
        this.mReorderingAllowed = parcel.readInt() != 0;
    }

    public BackStackRecord instantiate(FragmentManagerImpl fragmentManagerImpl) {
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManagerImpl);
        int i = 0;
        int i2 = 0;
        while (i < this.mOps.length) {
            BackStackRecord$Op backStackRecord$Op = new BackStackRecord$Op();
            int i3 = i + 1;
            backStackRecord$Op.cmd = this.mOps[i];
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i2 + " base fragment #" + this.mOps[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.mOps[i3];
            if (i5 >= 0) {
                backStackRecord$Op.fragment = fragmentManagerImpl.mActive.get(i5);
            } else {
                backStackRecord$Op.fragment = null;
            }
            int i6 = i4 + 1;
            backStackRecord$Op.enterAnim = this.mOps[i4];
            int i7 = i6 + 1;
            backStackRecord$Op.exitAnim = this.mOps[i6];
            int i8 = i7 + 1;
            backStackRecord$Op.popEnterAnim = this.mOps[i7];
            backStackRecord$Op.popExitAnim = this.mOps[i8];
            backStackRecord.mEnterAnim = backStackRecord$Op.enterAnim;
            backStackRecord.mExitAnim = backStackRecord$Op.exitAnim;
            backStackRecord.mPopEnterAnim = backStackRecord$Op.popEnterAnim;
            backStackRecord.mPopExitAnim = backStackRecord$Op.popExitAnim;
            backStackRecord.addOp(backStackRecord$Op);
            i2++;
            i = i8 + 1;
        }
        backStackRecord.mTransition = this.mTransition;
        backStackRecord.mTransitionStyle = this.mTransitionStyle;
        backStackRecord.mName = this.mName;
        backStackRecord.mIndex = this.mIndex;
        backStackRecord.mAddToBackStack = true;
        backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
        backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
        backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
        backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
        backStackRecord.mSharedElementSourceNames = this.mSharedElementSourceNames;
        backStackRecord.mSharedElementTargetNames = this.mSharedElementTargetNames;
        backStackRecord.mReorderingAllowed = this.mReorderingAllowed;
        backStackRecord.bumpBackStackNesting(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.mOps);
        parcel.writeInt(this.mTransition);
        parcel.writeInt(this.mTransitionStyle);
        parcel.writeString(this.mName);
        parcel.writeInt(this.mIndex);
        parcel.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, parcel, 0);
        parcel.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, parcel, 0);
        parcel.writeStringList(this.mSharedElementSourceNames);
        parcel.writeStringList(this.mSharedElementTargetNames);
        parcel.writeInt(this.mReorderingAllowed ? 1 : 0);
    }
}
