package android.support.v13.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;

public final class InputConnectionCompat {
    private static final String COMMIT_CONTENT_ACTION = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT";
    private static final String COMMIT_CONTENT_CONTENT_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI";
    private static final String COMMIT_CONTENT_DESCRIPTION_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION";
    private static final String COMMIT_CONTENT_FLAGS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS";
    private static final String COMMIT_CONTENT_LINK_URI_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI";
    private static final String COMMIT_CONTENT_OPTS_KEY = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS";
    private static final String COMMIT_CONTENT_RESULT_RECEIVER = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER";
    public static final int INPUT_CONTENT_GRANT_READ_URI_PERMISSION = 1;

    static boolean handlePerformPrivateCommand(@Nullable String str, @NonNull Bundle bundle, @NonNull InputConnectionCompat$OnCommitContentListener inputConnectionCompat$OnCommitContentListener) throws Throwable {
        ResultReceiver resultReceiver;
        if (!TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str) || bundle == null) {
            return false;
        }
        try {
            resultReceiver = (ResultReceiver) bundle.getParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
            try {
                boolean zOnCommitContent = inputConnectionCompat$OnCommitContentListener.onCommitContent(new InputContentInfoCompat((Uri) bundle.getParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"), (ClipDescription) bundle.getParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"), (Uri) bundle.getParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI")), bundle.getInt("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"), (Bundle) bundle.getParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"));
                if (resultReceiver != null) {
                    resultReceiver.send(zOnCommitContent ? 1 : 0, null);
                }
                return zOnCommitContent;
            } catch (Throwable th) {
                th = th;
                if (resultReceiver != null) {
                    resultReceiver.send(0, null);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = null;
        }
    }

    public static boolean commitContent(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputContentInfoCompat inputContentInfoCompat, int i, @Nullable Bundle bundle) {
        boolean z;
        ClipDescription description = inputContentInfoCompat.getDescription();
        String[] contentMimeTypes = EditorInfoCompat.getContentMimeTypes(editorInfo);
        int length = contentMimeTypes.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            if (description.hasMimeType(contentMimeTypes[i2])) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return false;
        }
        if (Build$VERSION.SDK_INT >= 25) {
            return inputConnection.commitContent((InputContentInfo) inputContentInfoCompat.unwrap(), i, bundle);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI", inputContentInfoCompat.getContentUri());
        bundle2.putParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION", inputContentInfoCompat.getDescription());
        bundle2.putParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI", inputContentInfoCompat.getLinkUri());
        bundle2.putInt("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS", i);
        bundle2.putParcelable("android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS", bundle);
        return inputConnection.performPrivateCommand("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", bundle2);
    }

    @NonNull
    public static InputConnection createWrapper(@NonNull InputConnection inputConnection, @NonNull EditorInfo editorInfo, @NonNull InputConnectionCompat$OnCommitContentListener inputConnectionCompat$OnCommitContentListener) {
        if (inputConnection == null) {
            throw new IllegalArgumentException("inputConnection must be non-null");
        }
        if (editorInfo == null) {
            throw new IllegalArgumentException("editorInfo must be non-null");
        }
        if (inputConnectionCompat$OnCommitContentListener == null) {
            throw new IllegalArgumentException("onCommitContentListener must be non-null");
        }
        if (Build$VERSION.SDK_INT >= 25) {
            return new InputConnectionCompat$1(inputConnection, false, inputConnectionCompat$OnCommitContentListener);
        }
        return EditorInfoCompat.getContentMimeTypes(editorInfo).length == 0 ? inputConnection : new InputConnectionCompat$2(inputConnection, false, inputConnectionCompat$OnCommitContentListener);
    }

    @Deprecated
    public InputConnectionCompat() {
    }
}
