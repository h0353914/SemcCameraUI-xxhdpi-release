package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class MediaSessionCompat$ResultReceiverWrapper$1 implements Parcelable$Creator<MediaSessionCompat$ResultReceiverWrapper> {
    MediaSessionCompat$ResultReceiverWrapper$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$ResultReceiverWrapper createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$ResultReceiverWrapper[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$ResultReceiverWrapper createFromParcel(Parcel parcel) {
        return new MediaSessionCompat$ResultReceiverWrapper(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$ResultReceiverWrapper[] newArray(int i) {
        return new MediaSessionCompat$ResultReceiverWrapper[i];
    }
}
