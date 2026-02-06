package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import java.util.Arrays;

class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem implements Parcelable {
    public static final Parcelable$Creator<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> CREATOR = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1();
    int mGapDir;
    int[] mGapPerSpan;
    boolean mHasUnwantedGapAfter;
    int mPosition;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(Parcel parcel) {
        this.mPosition = parcel.readInt();
        this.mGapDir = parcel.readInt();
        this.mHasUnwantedGapAfter = parcel.readInt() == 1;
        int i = parcel.readInt();
        if (i > 0) {
            this.mGapPerSpan = new int[i];
            parcel.readIntArray(this.mGapPerSpan);
        }
    }

    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {
    }

    int getGapForSpan(int i) {
        if (this.mGapPerSpan == null) {
            return 0;
        }
        return this.mGapPerSpan[i];
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mPosition);
        parcel.writeInt(this.mGapDir);
        parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
        if (this.mGapPerSpan != null && this.mGapPerSpan.length > 0) {
            parcel.writeInt(this.mGapPerSpan.length);
            parcel.writeIntArray(this.mGapPerSpan);
        } else {
            parcel.writeInt(0);
        }
    }

    public String toString() {
        return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
    }
}
