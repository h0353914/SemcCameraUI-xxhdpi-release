package android.support.v4.media;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
class MediaDescriptionCompat$1 implements Parcelable$Creator<MediaDescriptionCompat> {
    MediaDescriptionCompat$1() {
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaDescriptionCompat createFromParcel(Parcel parcel) {
        return createFromParcel(parcel);
    }

    @Override // android.os.Parcelable$Creator
    public /* bridge */ /* synthetic */ MediaDescriptionCompat[] newArray(int i) {
        return newArray(i);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaDescriptionCompat createFromParcel(Parcel parcel) {
        if (Build$VERSION.SDK_INT < 21) {
            return new MediaDescriptionCompat(parcel);
        }
        return MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(parcel));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable$Creator
    public MediaDescriptionCompat[] newArray(int i) {
        return new MediaDescriptionCompat[i];
    }
}
