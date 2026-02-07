package android.support.v4.os;

import android.os.Parcelable$Creator;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ParcelableCompat {
    @Deprecated
    public static <T> Parcelable$Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new ParcelableCompat$ParcelableCompatCreatorHoneycombMR2(parcelableCompatCreatorCallbacks);
    }

    private ParcelableCompat() {
    }
}
