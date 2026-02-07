package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class InputContentInfoCompat$InputContentInfoCompatBaseImpl implements InputContentInfoCompat$InputContentInfoCompatImpl {

    @NonNull
    private final Uri mContentUri;

    @NonNull
    private final ClipDescription mDescription;

    @Nullable
    private final Uri mLinkUri;

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @Nullable
    public Object getInputContentInfo() {
        return null;
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void releasePermission() {
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void requestPermission() {
    }

    InputContentInfoCompat$InputContentInfoCompatBaseImpl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        this.mContentUri = uri;
        this.mDescription = clipDescription;
        this.mLinkUri = uri2;
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @NonNull
    public Uri getContentUri() {
        return this.mContentUri;
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @NonNull
    public ClipDescription getDescription() {
        return this.mDescription;
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @Nullable
    public Uri getLinkUri() {
        return this.mLinkUri;
    }
}
