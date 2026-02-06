package android.support.v7.util;

class MessageThreadUtil$MessageQueue {
    private MessageThreadUtil$SyncQueueItem mRoot;

    MessageThreadUtil$MessageQueue() {
    }

    synchronized MessageThreadUtil$SyncQueueItem next() {
        if (this.mRoot == null) {
            return null;
        }
        MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = this.mRoot;
        this.mRoot = this.mRoot.next;
        return messageThreadUtil$SyncQueueItem;
    }

    synchronized void sendMessageAtFrontOfQueue(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        messageThreadUtil$SyncQueueItem.next = this.mRoot;
        this.mRoot = messageThreadUtil$SyncQueueItem;
    }

    synchronized void sendMessage(MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem) {
        if (this.mRoot == null) {
            this.mRoot = messageThreadUtil$SyncQueueItem;
            return;
        }
        MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem2 = this.mRoot;
        while (messageThreadUtil$SyncQueueItem2.next != null) {
            messageThreadUtil$SyncQueueItem2 = messageThreadUtil$SyncQueueItem2.next;
        }
        messageThreadUtil$SyncQueueItem2.next = messageThreadUtil$SyncQueueItem;
    }

    synchronized void removeMessages(int i) {
        while (this.mRoot != null && this.mRoot.what == i) {
            MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem = this.mRoot;
            this.mRoot = this.mRoot.next;
            messageThreadUtil$SyncQueueItem.recycle();
        }
        if (this.mRoot != null) {
            MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem2 = this.mRoot;
            MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem3 = messageThreadUtil$SyncQueueItem2.next;
            while (messageThreadUtil$SyncQueueItem3 != null) {
                MessageThreadUtil$SyncQueueItem messageThreadUtil$SyncQueueItem4 = messageThreadUtil$SyncQueueItem3.next;
                if (messageThreadUtil$SyncQueueItem3.what == i) {
                    messageThreadUtil$SyncQueueItem2.next = messageThreadUtil$SyncQueueItem4;
                    messageThreadUtil$SyncQueueItem3.recycle();
                } else {
                    messageThreadUtil$SyncQueueItem2 = messageThreadUtil$SyncQueueItem3;
                }
                messageThreadUtil$SyncQueueItem3 = messageThreadUtil$SyncQueueItem4;
            }
        }
    }
}
