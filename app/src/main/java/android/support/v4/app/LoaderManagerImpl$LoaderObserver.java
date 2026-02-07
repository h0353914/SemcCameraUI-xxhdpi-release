package android.support.v4.app;

import android.arch.lifecycle.Observer;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;
import android.util.Log;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class LoaderManagerImpl$LoaderObserver<D> implements Observer<D> {

    @NonNull
    private final LoaderManager$LoaderCallbacks<D> mCallback;
    private boolean mDeliveredData = false;

    @NonNull
    private final Loader<D> mLoader;

    LoaderManagerImpl$LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        this.mLoader = loader;
        this.mCallback = loaderManager$LoaderCallbacks;
    }

    @Override // android.arch.lifecycle.Observer
    public void onChanged(@Nullable D d) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  onLoadFinished in " + this.mLoader + ": " + this.mLoader.dataToString(d));
        }
        this.mCallback.onLoadFinished(this.mLoader, d);
        this.mDeliveredData = true;
    }

    boolean hasDeliveredData() {
        return this.mDeliveredData;
    }

    @MainThread
    void reset() {
        if (this.mDeliveredData) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v("LoaderManager", "  Resetting: " + this.mLoader);
            }
            this.mCallback.onLoaderReset(this.mLoader);
        }
    }

    public String toString() {
        return this.mCallback.toString();
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mDeliveredData=");
        printWriter.println(this.mDeliveredData);
    }
}
