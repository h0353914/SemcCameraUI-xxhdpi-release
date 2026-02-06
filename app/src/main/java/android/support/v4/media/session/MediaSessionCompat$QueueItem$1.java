package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class MediaSessionCompat$QueueItem$1 implements Parcelable$Creator<MediaSessionCompat$QueueItem> {
    MediaSessionCompat$QueueItem$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$QueueItem createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$QueueItem[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$QueueItem createFromParcel(Parcel parcel) {
        return new MediaSessionCompat$QueueItem(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$QueueItem[] newArray(int i) {
        return new MediaSessionCompat$QueueItem[i];
    }
}
