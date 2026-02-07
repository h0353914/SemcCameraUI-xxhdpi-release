package android.support.v4.content;

import android.content.Intent;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
final class LocalBroadcastManager$BroadcastRecord {
    final Intent intent;
    final ArrayList<LocalBroadcastManager$ReceiverRecord> receivers;

    LocalBroadcastManager$BroadcastRecord(Intent intent, ArrayList<LocalBroadcastManager$ReceiverRecord> arrayList) {
        this.intent = intent;
        this.receivers = arrayList;
    }
}
