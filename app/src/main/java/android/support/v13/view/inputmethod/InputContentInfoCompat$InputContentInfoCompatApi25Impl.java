package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.inputmethod.InputContentInfo;

@RequiresApi(25)
final class InputContentInfoCompat$InputContentInfoCompatApi25Impl implements InputContentInfoCompat$InputContentInfoCompatImpl {

    @NonNull
    final InputContentInfo mObject;

    InputContentInfoCompat$InputContentInfoCompatApi25Impl(@NonNull Object obj) {
        this.mObject = (InputContentInfo) obj;
    }

    InputContentInfoCompat$InputContentInfoCompatApi25Impl(@NonNull Uri uri, @NonNull ClipDescription clipDescription, @Nullable Uri uri2) {
        this.mObject = new InputContentInfo(uri, clipDescription, uri2);
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @NonNull
    public Uri getContentUri() {
        return this.mObject.getContentUri();
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @NonNull
    public ClipDescription getDescription() {
        return this.mObject.getDescription();
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @Nullable
    public Uri getLinkUri() {
        return this.mObject.getLinkUri();
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    @Nullable
    public Object getInputContentInfo() {
        return this.mObject;
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void requestPermission() {
        this.mObject.requestPermission();
    }

    @Override // android.support.v13.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl
    public void releasePermission() {
        this.mObject.releasePermission();
    }
}
