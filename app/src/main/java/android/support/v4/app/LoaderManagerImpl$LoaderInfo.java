package android.support.v4.app;

import android.arch.lifecycle.LifecycleOwner;
import android.arch.lifecycle.MutableLiveData;
import android.arch.lifecycle.Observer;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;
import android.support.v4.content.Loader$OnLoadCompleteListener;
import android.support.v4.util.DebugUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class LoaderManagerImpl$LoaderInfo<D> extends MutableLiveData<D> implements Loader$OnLoadCompleteListener<D> {

    @Nullable
    private final Bundle mArgs;
    private final int mId;
    private LifecycleOwner mLifecycleOwner;

    @NonNull
    private final Loader<D> mLoader;
    private LoaderManagerImpl$LoaderObserver<D> mObserver;
    private Loader<D> mPriorLoader;

    LoaderManagerImpl$LoaderInfo(int i, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
        this.mId = i;
        this.mArgs = bundle;
        this.mLoader = loader;
        this.mPriorLoader = loader2;
        this.mLoader.registerListener(i, this);
    }

    @NonNull
    Loader<D> getLoader() {
        return this.mLoader;
    }

    @Override // android.arch.lifecycle.LiveData
    protected void onActive() {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Starting: " + this);
        }
        this.mLoader.startLoading();
    }

    @Override // android.arch.lifecycle.LiveData
    protected void onInactive() {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        this.mLoader.stopLoading();
    }

    @NonNull
    @MainThread
    Loader<D> setCallback(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = new LoaderManagerImpl$LoaderObserver<>(this.mLoader, loaderManager$LoaderCallbacks);
        observe(lifecycleOwner, loaderManagerImpl$LoaderObserver);
        if (this.mObserver != null) {
            removeObserver(this.mObserver);
        }
        this.mLifecycleOwner = lifecycleOwner;
        this.mObserver = loaderManagerImpl$LoaderObserver;
        return this.mLoader;
    }

    void markForRedelivery() {
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner;
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = this.mObserver;
        if (lifecycleOwner == null || loaderManagerImpl$LoaderObserver == null) {
            return;
        }
        super.removeObserver(loaderManagerImpl$LoaderObserver);
        observe(lifecycleOwner, loaderManagerImpl$LoaderObserver);
    }

    boolean isCallbackWaitingForData() {
        return (!hasActiveObservers() || this.mObserver == null || this.mObserver.hasDeliveredData()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.arch.lifecycle.LiveData
    public void removeObserver(@NonNull Observer<? super D> observer) {
        super.removeObserver(observer);
        this.mLifecycleOwner = null;
        this.mObserver = null;
    }

    @MainThread
    Loader<D> destroy(boolean z) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "  Destroying: " + this);
        }
        this.mLoader.cancelLoad();
        this.mLoader.abandon();
        LoaderManagerImpl$LoaderObserver<D> loaderManagerImpl$LoaderObserver = this.mObserver;
        if (loaderManagerImpl$LoaderObserver != null) {
            removeObserver(loaderManagerImpl$LoaderObserver);
            if (z) {
                loaderManagerImpl$LoaderObserver.reset();
            }
        }
        this.mLoader.unregisterListener(this);
        if ((loaderManagerImpl$LoaderObserver != null && !loaderManagerImpl$LoaderObserver.hasDeliveredData()) || z) {
            this.mLoader.reset();
            return this.mPriorLoader;
        }
        return this.mLoader;
    }

    @Override // android.support.v4.content.Loader$OnLoadCompleteListener
    public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d) {
        if (LoaderManagerImpl.DEBUG) {
            Log.v("LoaderManager", "onLoadComplete: " + this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            setValue(d);
            return;
        }
        if (LoaderManagerImpl.DEBUG) {
            Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
        }
        postValue(d);
    }

    @Override // android.arch.lifecycle.MutableLiveData, android.arch.lifecycle.LiveData
    public void setValue(D d) {
        super.setValue(d);
        if (this.mPriorLoader != null) {
            this.mPriorLoader.reset();
            this.mPriorLoader = null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.mId);
        sb.append(" : ");
        DebugUtils.buildShortClassTag(this.mLoader, sb);
        sb.append("}}");
        return sb.toString();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.mId);
        printWriter.print(" mArgs=");
        printWriter.println(this.mArgs);
        printWriter.print(str);
        printWriter.print("mLoader=");
        printWriter.println(this.mLoader);
        this.mLoader.dump(str + "  ", fileDescriptor, printWriter, strArr);
        if (this.mObserver != null) {
            printWriter.print(str);
            printWriter.print("mCallbacks=");
            printWriter.println(this.mObserver);
            this.mObserver.dump(str + "  ", printWriter);
        }
        printWriter.print(str);
        printWriter.print("mData=");
        printWriter.println(getLoader().dataToString(getValue()));
        printWriter.print(str);
        printWriter.print("mStarted=");
        printWriter.println(hasActiveObservers());
    }
}
