package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

interface InputContentInfoCompat$InputContentInfoCompatImpl {
    @NonNull
    Uri getContentUri();

    @NonNull
    ClipDescription getDescription();

    @Nullable
    Object getInputContentInfo();

    @Nullable
    Uri getLinkUri();

    void releasePermission();

    void requestPermission();
}
