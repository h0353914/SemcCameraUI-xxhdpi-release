package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo$Scope;
import android.support.v4.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;

public abstract class AsyncTaskLoader<D> extends Loader<D> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncTaskLoader";

    /* JADX WARN: Incorrect inner types in field signature: Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask; */
    volatile AsyncTaskLoader$LoadTask mCancellingTask;
    private final Executor mExecutor;
    Handler mHandler;
    long mLastLoadCompleteTime;

    /* JADX WARN: Incorrect inner types in field signature: Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask; */
    volatile AsyncTaskLoader$LoadTask mTask;
    long mUpdateThrottle;

    public void cancelLoadInBackground() {
    }

    @Nullable
    public abstract D loadInBackground();

    public void onCanceled(@Nullable D d) {
    }

    public AsyncTaskLoader(@NonNull Context context) {
        this(context, ModernAsyncTask.THREAD_POOL_EXECUTOR);
    }

    private AsyncTaskLoader(@NonNull Context context, @NonNull Executor executor) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
        this.mExecutor = executor;
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }

    @Override // android.support.v4.content.Loader
    protected void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new AsyncTaskLoader$LoadTask(this);
        executePendingTask();
    }

    @Override // android.support.v4.content.Loader
    protected boolean onCancelLoad() {
        if (this.mTask == null) {
            return false;
        }
        if (!this.mStarted) {
            this.mContentChanged = true;
        }
        if (this.mCancellingTask != null) {
            if (this.mTask.waiting) {
                this.mTask.waiting = false;
                this.mHandler.removeCallbacks(this.mTask);
            }
            this.mTask = null;
            return false;
        }
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
            this.mTask = null;
            return false;
        }
        boolean zCancel = this.mTask.cancel(false);
        if (zCancel) {
            this.mCancellingTask = this.mTask;
            cancelLoadInBackground();
        }
        this.mTask = null;
        return zCancel;
    }

    void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.waiting) {
            this.mTask.waiting = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.waiting = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
        } else {
            this.mTask.executeOnExecutor(this.mExecutor, (Void[]) null);
        }
    }

    /* JADX WARN: Incorrect inner types in method signature: (Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;TD;)V */
    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnCancelled(AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask, Object obj) {
        onCanceled(obj);
        if (this.mCancellingTask == asyncTaskLoader$LoadTask) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    /* JADX WARN: Incorrect inner types in method signature: (Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;TD;)V */
    /* JADX WARN: Multi-variable type inference failed */
    void dispatchOnLoadComplete(AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask, Object obj) {
        if (this.mTask != asyncTaskLoader$LoadTask) {
            dispatchOnCancelled(asyncTaskLoader$LoadTask, obj);
            return;
        }
        if (isAbandoned()) {
            onCanceled(obj);
            return;
        }
        commitContentChanged();
        this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
        this.mTask = null;
        deliverResult(obj);
    }

    @Nullable
    protected D onLoadInBackground() {
        return loadInBackground();
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public void waitForLoader() {
        AsyncTaskLoader$LoadTask asyncTaskLoader$LoadTask = this.mTask;
        if (asyncTaskLoader$LoadTask != null) {
            asyncTaskLoader$LoadTask.waitForLoader();
        }
    }

    @Override // android.support.v4.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.waiting);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.waiting);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.mUpdateThrottle, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
