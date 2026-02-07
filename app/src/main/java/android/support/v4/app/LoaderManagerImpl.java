package android.support.v4.app;

import android.arch.lifecycle.LifecycleOwner;
import android.arch.lifecycle.ViewModelStore;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes.dex */
class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";

    @NonNull
    private final LifecycleOwner mLifecycleOwner;

    @NonNull
    private final LoaderManagerImpl$LoaderViewModel mLoaderViewModel;

    LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.mLifecycleOwner = lifecycleOwner;
        this.mLoaderViewModel = LoaderManagerImpl$LoaderViewModel.getInstance(viewModelStore);
    }

    @NonNull
    @MainThread
    private <D> Loader<D> createAndInstallLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.mLoaderViewModel.startCreatingLoader();
            Loader<D> loaderOnCreateLoader = loaderManager$LoaderCallbacks.onCreateLoader(i, bundle);
            if (loaderOnCreateLoader == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (loaderOnCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(loaderOnCreateLoader.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + loaderOnCreateLoader);
            }
            LoaderManagerImpl$LoaderInfo loaderManagerImpl$LoaderInfo = new LoaderManagerImpl$LoaderInfo(i, bundle, loaderOnCreateLoader, loader);
            if (DEBUG) {
                Log.v("LoaderManager", "  Created new loader " + loaderManagerImpl$LoaderInfo);
            }
            this.mLoaderViewModel.putLoader(i, loaderManagerImpl$LoaderInfo);
            this.mLoaderViewModel.finishCreatingLoader();
            return loaderManagerImpl$LoaderInfo.setCallback(this.mLifecycleOwner, loaderManager$LoaderCallbacks);
        } catch (Throwable th) {
            this.mLoaderViewModel.finishCreatingLoader();
            throw th;
        }
    }

    @Override // android.support.v4.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (DEBUG) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (loader == null) {
            return createAndInstallLoader(i, bundle, loaderManager$LoaderCallbacks, null);
        }
        if (DEBUG) {
            Log.v("LoaderManager", "  Re-using existing loader " + loader);
        }
        return loader.setCallback(this.mLifecycleOwner, loaderManager$LoaderCallbacks);
    }

    @Override // android.support.v4.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i, @Nullable Bundle bundle, @NonNull LoaderManager$LoaderCallbacks<D> loaderManager$LoaderCallbacks) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        return createAndInstallLoader(i, bundle, loaderManager$LoaderCallbacks, loader != null ? loader.destroy(false) : null);
    }

    @Override // android.support.v4.app.LoaderManager
    @MainThread
    public void destroyLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        if (DEBUG) {
            Log.v("LoaderManager", "destroyLoader in " + this + " of " + i);
        }
        LoaderManagerImpl$LoaderInfo loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            loader.destroy(true);
            this.mLoaderViewModel.removeLoader(i);
        }
    }

    @Override // android.support.v4.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i) {
        if (this.mLoaderViewModel.isCreatingLoader()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderManagerImpl$LoaderInfo<D> loader = this.mLoaderViewModel.getLoader(i);
        if (loader != null) {
            return loader.getLoader();
        }
        return null;
    }

    @Override // android.support.v4.app.LoaderManager
    public void markForRedelivery() {
        this.mLoaderViewModel.markForRedelivery();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mLifecycleOwner, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.mLoaderViewModel.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.support.v4.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.mLoaderViewModel.hasRunningLoaders();
    }
}
