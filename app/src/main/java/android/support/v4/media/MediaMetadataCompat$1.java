package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class MediaMetadataCompat$1 implements Parcelable$Creator<MediaMetadataCompat> {
    MediaMetadataCompat$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaMetadataCompat createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaMetadataCompat[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaMetadataCompat createFromParcel(Parcel parcel) {
        return new MediaMetadataCompat(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaMetadataCompat[] newArray(int i) {
        return new MediaMetadataCompat[i];
    }
}
