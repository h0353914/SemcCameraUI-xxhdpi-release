package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class RatingCompat$1 implements Parcelable$Creator<RatingCompat> {
    RatingCompat$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ RatingCompat createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ RatingCompat[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public RatingCompat createFromParcel(Parcel parcel) {
        return new RatingCompat(parcel.readInt(), parcel.readFloat());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public RatingCompat[] newArray(int i) {
        return new RatingCompat[i];
    }
}
