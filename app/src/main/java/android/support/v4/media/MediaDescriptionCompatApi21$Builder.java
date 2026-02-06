package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription$Builder;
import android.net.Uri;
import android.os.Bundle;

class MediaDescriptionCompatApi21$Builder {
    public static Object newInstance() {
        return new MediaDescription$Builder();
    }

    public static void setMediaId(Object obj, String str) {
        ((MediaDescription$Builder) obj).setMediaId(str);
    }

    public static void setTitle(Object obj, CharSequence charSequence) {
        ((MediaDescription$Builder) obj).setTitle(charSequence);
    }

    public static void setSubtitle(Object obj, CharSequence charSequence) {
        ((MediaDescription$Builder) obj).setSubtitle(charSequence);
    }

    public static void setDescription(Object obj, CharSequence charSequence) {
        ((MediaDescription$Builder) obj).setDescription(charSequence);
    }

    public static void setIconBitmap(Object obj, Bitmap bitmap) {
        ((MediaDescription$Builder) obj).setIconBitmap(bitmap);
    }

    public static void setIconUri(Object obj, Uri uri) {
        ((MediaDescription$Builder) obj).setIconUri(uri);
    }

    public static void setExtras(Object obj, Bundle bundle) {
        ((MediaDescription$Builder) obj).setExtras(bundle);
    }

    public static Object build(Object obj) {
        return ((MediaDescription$Builder) obj).build();
    }

    private MediaDescriptionCompatApi21$Builder() {
    }
}
