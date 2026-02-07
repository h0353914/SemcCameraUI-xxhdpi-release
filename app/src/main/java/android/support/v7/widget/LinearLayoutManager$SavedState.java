package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
public class LinearLayoutManager$SavedState implements Parcelable {
    public static final Parcelable$Creator<LinearLayoutManager$SavedState> CREATOR = new LinearLayoutManager$SavedState$1();
    boolean mAnchorLayoutFromEnd;
    int mAnchorOffset;
    int mAnchorPosition;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LinearLayoutManager$SavedState() {
    }

    LinearLayoutManager$SavedState(Parcel parcel) {
        this.mAnchorPosition = parcel.readInt();
        this.mAnchorOffset = parcel.readInt();
        this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
    }

    public LinearLayoutManager$SavedState(LinearLayoutManager$SavedState linearLayoutManager$SavedState) {
        this.mAnchorPosition = linearLayoutManager$SavedState.mAnchorPosition;
        this.mAnchorOffset = linearLayoutManager$SavedState.mAnchorOffset;
        this.mAnchorLayoutFromEnd = linearLayoutManager$SavedState.mAnchorLayoutFromEnd;
    }

    boolean hasValidAnchor() {
        return this.mAnchorPosition >= 0;
    }

    void invalidateAnchor() {
        this.mAnchorPosition = -1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mAnchorPosition);
        parcel.writeInt(this.mAnchorOffset);
        parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
    }
}
