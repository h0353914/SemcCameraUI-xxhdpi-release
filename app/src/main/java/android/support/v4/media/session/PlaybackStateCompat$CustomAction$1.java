package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable$Creator;

class PlaybackStateCompat$CustomAction$1 implements Parcelable$Creator<PlaybackStateCompat$CustomAction> {
    PlaybackStateCompat$CustomAction$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PlaybackStateCompat$CustomAction createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ PlaybackStateCompat$CustomAction[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PlaybackStateCompat$CustomAction createFromParcel(Parcel parcel) {
        return new PlaybackStateCompat$CustomAction(parcel);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public PlaybackStateCompat$CustomAction[] newArray(int i) {
        return new PlaybackStateCompat$CustomAction[i];
    }
}
