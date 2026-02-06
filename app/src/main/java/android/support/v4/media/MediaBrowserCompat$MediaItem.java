package android.support.v4.media;

import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable$Creator<MediaBrowserCompat$MediaItem> CREATOR = new MediaBrowserCompat$MediaItem$1();
    public static final int FLAG_BROWSABLE = 1;
    public static final int FLAG_PLAYABLE = 2;
    private final MediaDescriptionCompat mDescription;
    private final int mFlags;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static MediaBrowserCompat$MediaItem fromMediaItem(Object obj) {
        if (obj == null || Build$VERSION.SDK_INT < 21) {
            return null;
        }
        return new MediaBrowserCompat$MediaItem(MediaDescriptionCompat.fromMediaDescription(MediaBrowserCompatApi21$MediaItem.getDescription(obj)), MediaBrowserCompatApi21$MediaItem.getFlags(obj));
    }

    public static List<MediaBrowserCompat$MediaItem> fromMediaItemList(List<?> list) {
        if (list == null || Build$VERSION.SDK_INT < 21) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(fromMediaItem(it.next()));
        }
        return arrayList;
    }

    public MediaBrowserCompat$MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i) {
        if (mediaDescriptionCompat == null) {
            throw new IllegalArgumentException("description cannot be null");
        }
        if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
            throw new IllegalArgumentException("description must have a non-empty media id");
        }
        this.mFlags = i;
        this.mDescription = mediaDescriptionCompat;
    }

    MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.mFlags = parcel.readInt();
        this.mDescription = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mFlags);
        this.mDescription.writeToParcel(parcel, i);
    }

    public String toString() {
        return "MediaItem{mFlags=" + this.mFlags + ", mDescription=" + this.mDescription + '}';
    }

    public int getFlags() {
        return this.mFlags;
    }

    public boolean isBrowsable() {
        return (this.mFlags & 1) != 0;
    }

    public boolean isPlayable() {
        return (this.mFlags & 2) != 0;
    }

    @NonNull
    public MediaDescriptionCompat getDescription() {
        return this.mDescription;
    }

    @Nullable
    public String getMediaId() {
        return this.mDescription.getMediaId();
    }
}
