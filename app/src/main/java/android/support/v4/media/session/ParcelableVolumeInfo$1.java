package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class ParcelableVolumeInfo$1 implements Parcelable$Creator<ParcelableVolumeInfo> {
    ParcelableVolumeInfo$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ParcelableVolumeInfo createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ ParcelableVolumeInfo[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
        return new ParcelableVolumeInfo(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public ParcelableVolumeInfo[] newArray(int i) {
        return new ParcelableVolumeInfo[i];
    }
}
