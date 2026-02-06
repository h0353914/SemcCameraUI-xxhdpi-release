package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

final class LocalBroadcastManager$ReceiverRecord {
    boolean broadcasting;
    boolean dead;
    final IntentFilter filter;
    final BroadcastReceiver receiver;

    LocalBroadcastManager$ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        this.filter = intentFilter;
        this.receiver = broadcastReceiver;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.receiver);
        sb.append(" filter=");
        sb.append(this.filter);
        if (this.dead) {
            sb.append(" DEAD");
        }
        sb.append("}");
        return sb.toString();
    }
}
