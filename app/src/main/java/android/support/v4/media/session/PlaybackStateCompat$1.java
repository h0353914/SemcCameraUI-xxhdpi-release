package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class PlaybackStateCompat$1 implements Parcelable$Creator<PlaybackStateCompat> {
    PlaybackStateCompat$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PlaybackStateCompat createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PlaybackStateCompat[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PlaybackStateCompat createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PlaybackStateCompat[] newArray(int i) {
        return new PlaybackStateCompat[i];
    }
}
