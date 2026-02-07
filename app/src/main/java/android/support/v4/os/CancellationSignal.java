package android.support.v4.os;

import android.os.Build$VERSION;

/* JADX INFO: loaded from: classes.dex */
public final class CancellationSignal {
    private boolean mCancelInProgress;
    private Object mCancellationSignalObj;
    private boolean mIsCanceled;
    private CancellationSignal$OnCancelListener mOnCancelListener;

    public boolean isCanceled() {
        boolean z;
        synchronized (this) {
            z = this.mIsCanceled;
        }
        return z;
    }

    public void throwIfCanceled() {
        if (isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public void cancel() {
        synchronized (this) {
            if (this.mIsCanceled) {
                return;
            }
            this.mIsCanceled = true;
            this.mCancelInProgress = true;
            CancellationSignal$OnCancelListener cancellationSignal$OnCancelListener = this.mOnCancelListener;
            Object obj = this.mCancellationSignalObj;
            if (cancellationSignal$OnCancelListener != null) {
                try {
                    cancellationSignal$OnCancelListener.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.mCancelInProgress = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build$VERSION.SDK_INT >= 16) {
                ((android.os.CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.mCancelInProgress = false;
                notifyAll();
            }
        }
    }

    public void setOnCancelListener(CancellationSignal$OnCancelListener cancellationSignal$OnCancelListener) {
        synchronized (this) {
            waitForCancelFinishedLocked();
            if (this.mOnCancelListener == cancellationSignal$OnCancelListener) {
                return;
            }
            this.mOnCancelListener = cancellationSignal$OnCancelListener;
            if (this.mIsCanceled && cancellationSignal$OnCancelListener != null) {
                cancellationSignal$OnCancelListener.onCancel();
            }
        }
    }

    public Object getCancellationSignalObject() {
        Object obj;
        if (Build$VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.mCancellationSignalObj == null) {
                this.mCancellationSignalObj = new android.os.CancellationSignal();
                if (this.mIsCanceled) {
                    ((android.os.CancellationSignal) this.mCancellationSignalObj).cancel();
                }
            }
            obj = this.mCancellationSignalObj;
        }
        return obj;
    }

    private void waitForCancelFinishedLocked() {
        while (this.mCancelInProgress) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
