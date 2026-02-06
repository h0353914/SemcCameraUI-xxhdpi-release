package android.support.v7.util;

interface ThreadUtil<T> {
    ThreadUtil$BackgroundCallback<T> getBackgroundProxy(ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback);

    ThreadUtil$MainThreadCallback<T> getMainThreadProxy(ThreadUtil$MainThreadCallback<T> threadUtil$MainThreadCallback);
}
