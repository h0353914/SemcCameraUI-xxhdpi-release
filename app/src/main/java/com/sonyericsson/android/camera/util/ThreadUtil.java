package com.sonyericsson.android.camera.util;

import android.support.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class ThreadUtil {
    @NonNull
    public static ExecutorService buildExecutor(@NonNull String str) {
        return buildExecutor(str, 5);
    }

    @NonNull
    public static ExecutorService buildExecutor(@NonNull String str, int i) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadUtil$NamedThreadFactory(str, i, false));
    }

    @NonNull
    public static ScheduledExecutorService buildScheduledExecutor(@NonNull String str) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadUtil$NamedThreadFactory(str, 5, false));
    }

    @NonNull
    public static ScheduledExecutorService buildScheduledExecutor(@NonNull String str, int i) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadUtil$NamedThreadFactory(str, i, false));
    }

    @NonNull
    public static ExecutorService buildPoolExecutor(@NonNull String str, int i) {
        return buildPoolExecutor(str, i, 5);
    }

    @NonNull
    public static ExecutorService buildPoolExecutor(@NonNull String str, int i, int i2) {
        return Executors.newFixedThreadPool(i, new ThreadUtil$NamedThreadFactory(str, i2, true));
    }
}
