package android.support.v4.media.session;

import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.app.BundleCompat;

public final class MediaSessionCompat$Token implements Parcelable {
    public static final Parcelable$Creator<MediaSessionCompat$Token> CREATOR = new MediaSessionCompat$Token$1();
    private IMediaSession mExtraBinder;
    private final Object mInner;
    private Bundle mSessionToken2Bundle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    MediaSessionCompat$Token(Object obj) {
        this(obj, null, null);
    }

    MediaSessionCompat$Token(Object obj, IMediaSession iMediaSession) {
        this(obj, iMediaSession, null);
    }

    MediaSessionCompat$Token(Object obj, IMediaSession iMediaSession, Bundle bundle) {
        this.mInner = obj;
        this.mExtraBinder = iMediaSession;
        this.mSessionToken2Bundle = bundle;
    }

    public static MediaSessionCompat$Token fromToken(Object obj) {
        return fromToken(obj, null);
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static MediaSessionCompat$Token fromToken(Object obj, IMediaSession iMediaSession) {
        if (obj == null || Build$VERSION.SDK_INT < 21) {
            return null;
        }
        return new MediaSessionCompat$Token(MediaSessionCompatApi21.verifyToken(obj), iMediaSession);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build$VERSION.SDK_INT >= 21) {
            parcel.writeParcelable((Parcelable) this.mInner, i);
        } else {
            parcel.writeStrongBinder((IBinder) this.mInner);
        }
    }

    public int hashCode() {
        if (this.mInner == null) {
            return 0;
        }
        return this.mInner.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaSessionCompat$Token)) {
            return false;
        }
        MediaSessionCompat$Token mediaSessionCompat$Token = (MediaSessionCompat$Token) obj;
        if (this.mInner == null) {
            return mediaSessionCompat$Token.mInner == null;
        }
        if (mediaSessionCompat$Token.mInner == null) {
            return false;
        }
        return this.mInner.equals(mediaSessionCompat$Token.mInner);
    }

    public Object getToken() {
        return this.mInner;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public IMediaSession getExtraBinder() {
        return this.mExtraBinder;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setExtraBinder(IMediaSession iMediaSession) {
        this.mExtraBinder = iMediaSession;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Bundle getSessionToken2Bundle() {
        return this.mSessionToken2Bundle;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void setSessionToken2Bundle(Bundle bundle) {
        this.mSessionToken2Bundle = bundle;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.TOKEN", this);
        if (this.mExtraBinder != null) {
            BundleCompat.putBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER", this.mExtraBinder.asBinder());
        }
        if (this.mSessionToken2Bundle != null) {
            bundle.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", this.mSessionToken2Bundle);
        }
        return bundle;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static MediaSessionCompat$Token fromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        IMediaSession iMediaSessionAsInterface = IMediaSession$Stub.asInterface(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
        MediaSessionCompat$Token mediaSessionCompat$Token = (MediaSessionCompat$Token) bundle.getParcelable("android.support.v4.media.session.TOKEN");
        if (mediaSessionCompat$Token == null) {
            return null;
        }
        return new MediaSessionCompat$Token(mediaSessionCompat$Token.mInner, iMediaSessionAsInterface, bundle2);
    }
}
