package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build$VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public final class InputContentInfoCompat {
    private final InputContentInfoCompat$InputContentInfoCompatImpl mImpl;

    public InputContentInfoCompat(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        if (Build$VERSION.SDK_INT >= 25) {
            this.mImpl = new InputContentInfoCompat$InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
        } else {
            this.mImpl = new InputContentInfoCompat$InputContentInfoCompatBaseImpl(uri, clipDescription, uri2);
        }
    }

    private InputContentInfoCompat(@NonNull InputContentInfoCompat$InputContentInfoCompatImpl inputContentInfoCompat$InputContentInfoCompatImpl) {
        this.mImpl = inputContentInfoCompat$InputContentInfoCompatImpl;
    }

    @NonNull
    public Uri getContentUri() {
        return this.mImpl.getContentUri();
    }

    @NonNull
    public ClipDescription getDescription() {
        return this.mImpl.getDescription();
    }

    @Nullable
    public Uri getLinkUri() {
        return this.mImpl.getLinkUri();
    }

    @Nullable
    public static InputContentInfoCompat wrap(@Nullable Object obj) {
        if (obj != null && Build$VERSION.SDK_INT >= 25) {
            return new InputContentInfoCompat(new InputContentInfoCompat$InputContentInfoCompatApi25Impl(obj));
        }
        return null;
    }

    @Nullable
    public Object unwrap() {
        return this.mImpl.getInputContentInfo();
    }

    public void requestPermission() {
        this.mImpl.requestPermission();
    }

    public void releasePermission() {
        this.mImpl.releasePermission();
    }
}
