package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;

public final class MediaDescriptionCompat$Builder {
    private CharSequence mDescription;
    private Bundle mExtras;
    private Bitmap mIcon;
    private Uri mIconUri;
    private String mMediaId;
    private Uri mMediaUri;
    private CharSequence mSubtitle;
    private CharSequence mTitle;

    public MediaDescriptionCompat$Builder setMediaId(@Nullable String str) {
        this.mMediaId = str;
        return this;
    }

    public MediaDescriptionCompat$Builder setTitle(@Nullable CharSequence charSequence) {
        this.mTitle = charSequence;
        return this;
    }

    public MediaDescriptionCompat$Builder setSubtitle(@Nullable CharSequence charSequence) {
        this.mSubtitle = charSequence;
        return this;
    }

    public MediaDescriptionCompat$Builder setDescription(@Nullable CharSequence charSequence) {
        this.mDescription = charSequence;
        return this;
    }

    public MediaDescriptionCompat$Builder setIconBitmap(@Nullable Bitmap bitmap) {
        this.mIcon = bitmap;
        return this;
    }

    public MediaDescriptionCompat$Builder setIconUri(@Nullable Uri uri) {
        this.mIconUri = uri;
        return this;
    }

    public MediaDescriptionCompat$Builder setExtras(@Nullable Bundle bundle) {
        this.mExtras = bundle;
        return this;
    }

    public MediaDescriptionCompat$Builder setMediaUri(@Nullable Uri uri) {
        this.mMediaUri = uri;
        return this;
    }

    public MediaDescriptionCompat build() {
        return new MediaDescriptionCompat(this.mMediaId, this.mTitle, this.mSubtitle, this.mDescription, this.mIcon, this.mIconUri, this.mExtras, this.mMediaUri);
    }
}
