package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompat$Token$1 implements Parcelable$Creator<MediaSessionCompat$Token> {
    MediaSessionCompat$Token$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$Token createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaSessionCompat$Token[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$Token createFromParcel(Parcel parcel) {
        Object strongBinder;
        if (Build$VERSION.SDK_INT >= 21) {
            strongBinder = parcel.readParcelable(null);
        } else {
            strongBinder = parcel.readStrongBinder();
        }
        return new MediaSessionCompat$Token(strongBinder);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaSessionCompat$Token[] newArray(int i) {
        return new MediaSessionCompat$Token[i];
    }
}
