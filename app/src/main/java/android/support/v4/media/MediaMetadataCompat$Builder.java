package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetadataCompat$Builder {
    private final Bundle mBundle;

    public MediaMetadataCompat$Builder() {
        this.mBundle = new Bundle();
    }

    public MediaMetadataCompat$Builder(MediaMetadataCompat mediaMetadataCompat) {
        this.mBundle = new Bundle(mediaMetadataCompat.mBundle);
        MediaSessionCompat.ensureClassLoader(this.mBundle);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public MediaMetadataCompat$Builder(MediaMetadataCompat mediaMetadataCompat, int i) {
        this(mediaMetadataCompat);
        for (String str : this.mBundle.keySet()) {
            Object obj = this.mBundle.get(str);
            if (obj instanceof Bitmap) {
                Bitmap bitmap = (Bitmap) obj;
                if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                    putBitmap(str, scaleBitmap(bitmap, i));
                }
            }
        }
    }

    public MediaMetadataCompat$Builder putText(String str, CharSequence charSequence) {
        if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) && MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() != 1) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
        }
        this.mBundle.putCharSequence(str, charSequence);
        return this;
    }

    public MediaMetadataCompat$Builder putString(String str, String str2) {
        if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) && MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() != 1) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }
        this.mBundle.putCharSequence(str, str2);
        return this;
    }

    public MediaMetadataCompat$Builder putLong(String str, long j) {
        if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) && MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() != 0) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }
        this.mBundle.putLong(str, j);
        return this;
    }

    public MediaMetadataCompat$Builder putRating(String str, RatingCompat ratingCompat) {
        if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) && MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() != 3) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
        }
        if (Build$VERSION.SDK_INT >= 19) {
            this.mBundle.putParcelable(str, (Parcelable) ratingCompat.getRating());
        } else {
            this.mBundle.putParcelable(str, ratingCompat);
        }
        return this;
    }

    public MediaMetadataCompat$Builder putBitmap(String str, Bitmap bitmap) {
        if (MediaMetadataCompat.METADATA_KEYS_TYPE.containsKey(str) && MediaMetadataCompat.METADATA_KEYS_TYPE.get(str).intValue() != 2) {
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }
        this.mBundle.putParcelable(str, bitmap);
        return this;
    }

    public MediaMetadataCompat build() {
        return new MediaMetadataCompat(this.mBundle);
    }

    private Bitmap scaleBitmap(Bitmap bitmap, int i) {
        float f = i;
        float fMin = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
        return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), true);
    }
}
