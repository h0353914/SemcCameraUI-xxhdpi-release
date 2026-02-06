package android.support.v7.util;

class MessageThreadUtil<T> implements ThreadUtil<T> {
    MessageThreadUtil() {
    }

    @Override // android.support.v7.util.ThreadUtil
    public ThreadUtil$MainThreadCallback<T> getMainThreadProxy(ThreadUtil$MainThreadCallback<T> threadUtil$MainThreadCallback) {
        return new MessageThreadUtil$1(this, threadUtil$MainThreadCallback);
    }

    @Override // android.support.v7.util.ThreadUtil
    public ThreadUtil$BackgroundCallback<T> getBackgroundProxy(ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback) {
        return new MessageThreadUtil$2(this, threadUtil$BackgroundCallback);
    }
}
