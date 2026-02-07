package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable$Creator<MediaDescriptionCompat> CREATOR = new MediaDescriptionCompat$1();

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    private final CharSequence mDescription;
    private Object mDescriptionObj;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mMediaId = str;
        this.mTitle = charSequence;
        this.mSubtitle = charSequence2;
        this.mDescription = charSequence3;
        this.mIcon = bitmap;
        this.mIconUri = uri;
        this.mExtras = bundle;
        this.mMediaUri = uri2;
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = getClass().getClassLoader();
        this.mIcon = (Bitmap) parcel.readParcelable(classLoader);
        this.mIconUri = (Uri) parcel.readParcelable(classLoader);
        this.mExtras = parcel.readBundle(classLoader);
        this.mMediaUri = (Uri) parcel.readParcelable(classLoader);
    }

    @Nullable
    public String getMediaId() {
        return this.mMediaId;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    @Nullable
    public Uri getIconUri() {
        return this.mIconUri;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build$VERSION.SDK_INT < 21) {
            parcel.writeString(this.mMediaId);
            TextUtils.writeToParcel(this.mTitle, parcel, i);
            TextUtils.writeToParcel(this.mSubtitle, parcel, i);
            TextUtils.writeToParcel(this.mDescription, parcel, i);
            parcel.writeParcelable(this.mIcon, i);
            parcel.writeParcelable(this.mIconUri, i);
            parcel.writeBundle(this.mExtras);
            parcel.writeParcelable(this.mMediaUri, i);
            return;
        }
        MediaDescriptionCompatApi21.writeToParcel(getMediaDescription(), parcel, i);
    }

    public String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    public Object getMediaDescription() {
        if (this.mDescriptionObj != null || Build$VERSION.SDK_INT < 21) {
            return this.mDescriptionObj;
        }
        Object objNewInstance = MediaDescriptionCompatApi21$Builder.newInstance();
        MediaDescriptionCompatApi21$Builder.setMediaId(objNewInstance, this.mMediaId);
        MediaDescriptionCompatApi21$Builder.setTitle(objNewInstance, this.mTitle);
        MediaDescriptionCompatApi21$Builder.setSubtitle(objNewInstance, this.mSubtitle);
        MediaDescriptionCompatApi21$Builder.setDescription(objNewInstance, this.mDescription);
        MediaDescriptionCompatApi21$Builder.setIconBitmap(objNewInstance, this.mIcon);
        MediaDescriptionCompatApi21$Builder.setIconUri(objNewInstance, this.mIconUri);
        Bundle bundle = this.mExtras;
        if (Build$VERSION.SDK_INT < 23 && this.mMediaUri != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.mMediaUri);
        }
        MediaDescriptionCompatApi21$Builder.setExtras(objNewInstance, bundle);
        if (Build$VERSION.SDK_INT >= 23) {
            MediaDescriptionCompatApi23$Builder.setMediaUri(objNewInstance, this.mMediaUri);
        }
        this.mDescriptionObj = MediaDescriptionCompatApi21$Builder.build(objNewInstance);
        return this.mDescriptionObj;
    }

    public static MediaDescriptionCompat fromMediaDescription(Object obj) {
        Uri uri;
        Bundle bundle = null;
        if (obj == null || Build$VERSION.SDK_INT < 21) {
            return null;
        }
        MediaDescriptionCompat$Builder mediaDescriptionCompat$Builder = new MediaDescriptionCompat$Builder();
        mediaDescriptionCompat$Builder.setMediaId(MediaDescriptionCompatApi21.getMediaId(obj));
        mediaDescriptionCompat$Builder.setTitle(MediaDescriptionCompatApi21.getTitle(obj));
        mediaDescriptionCompat$Builder.setSubtitle(MediaDescriptionCompatApi21.getSubtitle(obj));
        mediaDescriptionCompat$Builder.setDescription(MediaDescriptionCompatApi21.getDescription(obj));
        mediaDescriptionCompat$Builder.setIconBitmap(MediaDescriptionCompatApi21.getIconBitmap(obj));
        mediaDescriptionCompat$Builder.setIconUri(MediaDescriptionCompatApi21.getIconUri(obj));
        Bundle extras = MediaDescriptionCompatApi21.getExtras(obj);
        if (extras != null) {
            MediaSessionCompat.ensureClassLoader(extras);
            uri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            uri = null;
        }
        if (uri == null) {
            bundle = extras;
        } else if (!extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || extras.size() != 2) {
            extras.remove("android.support.v4.media.description.MEDIA_URI");
            extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = extras;
        }
        mediaDescriptionCompat$Builder.setExtras(bundle);
        if (uri != null) {
            mediaDescriptionCompat$Builder.setMediaUri(uri);
        } else if (Build$VERSION.SDK_INT >= 23) {
            mediaDescriptionCompat$Builder.setMediaUri(MediaDescriptionCompatApi23.getMediaUri(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatBuild = mediaDescriptionCompat$Builder.build();
        mediaDescriptionCompatBuild.mDescriptionObj = obj;
        return mediaDescriptionCompatBuild;
    }
}
