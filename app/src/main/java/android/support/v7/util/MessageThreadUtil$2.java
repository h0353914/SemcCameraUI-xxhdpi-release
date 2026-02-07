package android.support.v7.util;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
class MessageThreadUtil$2<T> implements ThreadUtil$BackgroundCallback<T> {
    static final int LOAD_TILE = 3;
    static final int RECYCLE_TILE = 4;
    static final int REFRESH = 1;
    static final int UPDATE_RANGE = 2;
    final /* synthetic */ MessageThreadUtil this$0;
    final /* synthetic */ ThreadUtil$BackgroundCallback val$callback;
    final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
    private final Executor mExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
    AtomicBoolean mBackgroundRunning = new AtomicBoolean(false);
    private Runnable mBackgroundRunnable = new MessageThreadUtil$2$1(this);

    MessageThreadUtil$2(MessageThreadUtil messageThreadUtil, ThreadUtil$BackgroundCallback threadUtil$BackgroundCallback) {
        this.this$0 = messageThreadUtil;
        this.val$callback = threadUtil$BackgroundCallback;
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void refresh(int i) {
        sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(1, i, (Object) null));
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void updateRange(int i, int i2, int i3, int i4, int i5) {
        sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem.obtainMessage(2, i, i2, i3, i4, i5, null));
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void loadTile(int i, int i2) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, i, i2));
    }

    @Override // android.support.v7.util.ThreadUtil$BackgroundCallback
    public void recycleTile(TileList$Tile<T> tileList$Tile) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(4, 0, tileList$Tile));
    }

    private void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessage(messageThreadUtil$SyncQueueItem);
        maybeExecuteBackgroundRunnable();
    }

    private void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessageAtFrontOfQueue(messageThreadUtil$SyncQueueItem);
        maybeExecuteBackgroundRunnable();
    }

    private void maybeExecuteBackgroundRunnable() {
        if (this.mBackgroundRunning.compareAndSet(false, true)) {
            this.mExecutor.execute(this.mBackgroundRunnable);
        }
    }
}
