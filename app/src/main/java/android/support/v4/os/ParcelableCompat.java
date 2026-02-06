package android.support.v4.os;

import android.os.Parcelable$Creator;

@Deprecated
public final class ParcelableCompat {
    @Deprecated
    public static <T> Parcelable$Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new ParcelableCompat$ParcelableCompatCreatorHoneycombMR2(parcelableCompatCreatorCallbacks);
    }

    private ParcelableCompat() {
    }
}
