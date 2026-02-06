package android.support.v4.media;

import android.os.Bundle;

public class MediaBrowserServiceCompat$Result<T> {
    private final Object mDebug;
    private boolean mDetachCalled;
    private int mFlags;
    private boolean mSendErrorCalled;
    private boolean mSendProgressUpdateCalled;
    private boolean mSendResultCalled;

    void onResultSent(T t) {
    }

    MediaBrowserServiceCompat$Result(Object obj) {
        this.mDebug = obj;
    }

    public void sendResult(T t) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
        }
        this.mSendResultCalled = true;
        onResultSent(t);
    }

    public void sendProgressUpdate(Bundle bundle) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            throw new IllegalStateException("sendProgressUpdate() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
        }
        checkExtraFields(bundle);
        this.mSendProgressUpdateCalled = true;
        onProgressUpdateSent(bundle);
    }

    public void sendError(Bundle bundle) {
        if (this.mSendResultCalled || this.mSendErrorCalled) {
            throw new IllegalStateException("sendError() called when either sendResult() or sendError() had already been called for: " + this.mDebug);
        }
        this.mSendErrorCalled = true;
        onErrorSent(bundle);
    }

    public void detach() {
        if (this.mDetachCalled) {
            throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
        }
        if (this.mSendResultCalled) {
            throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
        }
        if (this.mSendErrorCalled) {
            throw new IllegalStateException("detach() called when sendError() had already been called for: " + this.mDebug);
        }
        this.mDetachCalled = true;
    }

    boolean isDone() {
        return this.mDetachCalled || this.mSendResultCalled || this.mSendErrorCalled;
    }

    void setFlags(int i) {
        this.mFlags = i;
    }

    int getFlags() {
        return this.mFlags;
    }

    void onProgressUpdateSent(Bundle bundle) {
        throw new UnsupportedOperationException("It is not supported to send an interim update for " + this.mDebug);
    }

    void onErrorSent(Bundle bundle) {
        throw new UnsupportedOperationException("It is not supported to send an error for " + this.mDebug);
    }

    private void checkExtraFields(Bundle bundle) {
        if (bundle != null && bundle.containsKey("android.media.browse.extra.DOWNLOAD_PROGRESS")) {
            float f = bundle.getFloat("android.media.browse.extra.DOWNLOAD_PROGRESS");
            if (f < -1.0E-5f || f > 1.00001f) {
                throw new IllegalArgumentException("The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0].");
            }
        }
    }
}
