package android.support.v7.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Add missing generic type declarations: [T] */
class MessageThreadUtil$1<T> implements ThreadUtil$MainThreadCallback<T> {
    static final int ADD_TILE = 2;
    static final int REMOVE_TILE = 3;
    static final int UPDATE_ITEM_COUNT = 1;
    final /* synthetic */ MessageThreadUtil this$0;
    final /* synthetic */ ThreadUtil$MainThreadCallback val$callback;
    final MessageThreadUtil$MessageQueue mQueue = new MessageThreadUtil$MessageQueue();
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private Runnable mMainThreadRunnable = new MessageThreadUtil$1$1(this);

    MessageThreadUtil$1(MessageThreadUtil messageThreadUtil, ThreadUtil$MainThreadCallback threadUtil$MainThreadCallback) {
        this.this$0 = messageThreadUtil;
        this.val$callback = threadUtil$MainThreadCallback;
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void updateItemCount(int i, int i2) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(1, i, i2));
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void addTile(int i, TileList$Tile<T> tileList$Tile) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(2, i, tileList$Tile));
    }

    @Override // android.support.v7.util.ThreadUtil$MainThreadCallback
    public void removeTile(int i, int i2) {
        sendMessage(MessageThreadUtil$SyncQueueItem.obtainMessage(3, i, i2));
    }

    private void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        this.mQueue.sendMessage(messageThreadUtil$SyncQueueItem);
        this.mMainThreadHandler.post(this.mMainThreadRunnable);
    }
}
