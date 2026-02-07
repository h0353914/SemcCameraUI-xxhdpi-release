package android.support.v7.util;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class MessageThreadUtil$1$1 implements Runnable {
    final /* synthetic */ MessageThreadUtil$1 this$1;

    MessageThreadUtil$1$1(MessageThreadUtil$1 messageThreadUtil$1) {
        this.this$1 = messageThreadUtil$1;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageThreadUtil$SyncQueueItem next = this.this$1.mQueue.next();
        while (next != null) {
            switch (next.what) {
                case 1:
                    this.this$1.val$callback.updateItemCount(next.arg1, next.arg2);
                    break;
                case 2:
                    this.this$1.val$callback.addTile(next.arg1, (TileList$Tile) next.data);
                    break;
                case 3:
                    this.this$1.val$callback.removeTile(next.arg1, next.arg2);
                    break;
                default:
                    Log.e("ThreadUtil", "Unsupported message, what=" + next.what);
                    break;
            }
            next = this.this$1.mQueue.next();
        }
    }
}
