package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata$Builder;
import android.media.Rating;

public class MediaMetadataCompatApi21$Builder {
    public static Object newInstance() {
        return new MediaMetadata$Builder();
    }

    public static void putBitmap(Object obj, String str, Bitmap bitmap) {
        ((MediaMetadata$Builder) obj).putBitmap(str, bitmap);
    }

    public static void putLong(Object obj, String str, long j) {
        ((MediaMetadata$Builder) obj).putLong(str, j);
    }

    public static void putRating(Object obj, String str, Object obj2) {
        ((MediaMetadata$Builder) obj).putRating(str, (Rating) obj2);
    }

    public static void putText(Object obj, String str, CharSequence charSequence) {
        ((MediaMetadata$Builder) obj).putText(str, charSequence);
    }

    public static void putString(Object obj, String str, String str2) {
        ((MediaMetadata$Builder) obj).putString(str, str2);
    }

    public static Object build(Object obj) {
        return ((MediaMetadata$Builder) obj).build();
    }

    private MediaMetadataCompatApi21$Builder() {
    }
}
