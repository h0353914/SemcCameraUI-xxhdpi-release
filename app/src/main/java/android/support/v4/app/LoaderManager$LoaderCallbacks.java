package android.support.v4.app;

import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.Loader;

/* JADX INFO: loaded from: classes.dex */
public interface LoaderManager$LoaderCallbacks<D> {
    @NonNull
    @MainThread
    Loader<D> onCreateLoader(int i, @Nullable Bundle bundle);

    @MainThread
    void onLoadFinished(@NonNull Loader<D> loader, D d);

    @MainThread
    void onLoaderReset(@NonNull Loader<D> loader);
}
