package android.support.v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface Pools$Pool<T> {
    @Nullable
    T acquire();

    boolean release(@NonNull T t);
}
