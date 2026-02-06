package android.support.v4.content;

import android.support.v4.os.OperationCanceledException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Add missing generic type declarations: [D] */
final class AsyncTaskLoader$LoadTask<D> extends ModernAsyncTask<Void, Void, D> implements Runnable {
    private final CountDownLatch mDone = new CountDownLatch(1);
    final /* synthetic */ AsyncTaskLoader this$0;
    boolean waiting;

    AsyncTaskLoader$LoadTask(AsyncTaskLoader asyncTaskLoader) {
        this.this$0 = asyncTaskLoader;
    }

    @Override // android.support.v4.content.ModernAsyncTask
    protected /* bridge */ /* synthetic */ Object doInBackground(Void[] voidArr) {
        return doInBackground2(voidArr);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected D doInBackground2(Void... voidArr) {
        try {
            return (D) this.this$0.onLoadInBackground();
        } catch (OperationCanceledException e) {
            if (isCancelled()) {
                return null;
            }
            throw e;
        }
    }

    @Override // android.support.v4.content.ModernAsyncTask
    protected void onPostExecute(D d) {
        try {
            this.this$0.dispatchOnLoadComplete(this, d);
        } finally {
            this.mDone.countDown();
        }
    }

    @Override // android.support.v4.content.ModernAsyncTask
    protected void onCancelled(D d) {
        try {
            this.this$0.dispatchOnCancelled(this, d);
        } finally {
            this.mDone.countDown();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.waiting = false;
        this.this$0.executePendingTask();
    }

    public void waitForLoader() {
        try {
            this.mDone.await();
        } catch (InterruptedException unused) {
        }
    }
}
