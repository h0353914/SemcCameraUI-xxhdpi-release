package android.support.v7.util;

import android.util.Log;

class MessageThreadUtil$2$1 implements Runnable {
    final /* synthetic */ MessageThreadUtil$2 this$1;

    MessageThreadUtil$2$1(MessageThreadUtil$2 messageThreadUtil$2) {
        this.this$1 = messageThreadUtil$2;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            MessageThreadUtil$SyncQueueItem next = this.this$1.mQueue.next();
            if (next != null) {
                switch (next.what) {
                    case 1:
                        this.this$1.mQueue.removeMessages(1);
                        this.this$1.val$callback.refresh(next.arg1);
                        break;
                    case 2:
                        this.this$1.mQueue.removeMessages(2);
                        this.this$1.mQueue.removeMessages(3);
                        this.this$1.val$callback.updateRange(next.arg1, next.arg2, next.arg3, next.arg4, next.arg5);
                        break;
                    case 3:
                        this.this$1.val$callback.loadTile(next.arg1, next.arg2);
                        break;
                    case 4:
                        this.this$1.val$callback.recycleTile((TileList$Tile) next.data);
                        break;
                    default:
                        Log.e("ThreadUtil", "Unsupported message, what=" + next.what);
                        break;
                }
            } else {
                this.this$1.mBackgroundRunning.set(false);
                return;
            }
        }
    }
}
