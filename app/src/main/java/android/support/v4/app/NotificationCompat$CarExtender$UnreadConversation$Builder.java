package android.support.v4.app;

import android.app.PendingIntent;
import java.util.ArrayList;
import java.util.List;

public class NotificationCompat$CarExtender$UnreadConversation$Builder {
    private long mLatestTimestamp;
    private final List<String> mMessages = new ArrayList();
    private final String mParticipant;
    private PendingIntent mReadPendingIntent;
    private RemoteInput mRemoteInput;
    private PendingIntent mReplyPendingIntent;

    public NotificationCompat$CarExtender$UnreadConversation$Builder(String str) {
        this.mParticipant = str;
    }

    public NotificationCompat$CarExtender$UnreadConversation$Builder addMessage(String str) {
        this.mMessages.add(str);
        return this;
    }

    public NotificationCompat$CarExtender$UnreadConversation$Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
        this.mRemoteInput = remoteInput;
        this.mReplyPendingIntent = pendingIntent;
        return this;
    }

    public NotificationCompat$CarExtender$UnreadConversation$Builder setReadPendingIntent(PendingIntent pendingIntent) {
        this.mReadPendingIntent = pendingIntent;
        return this;
    }

    public NotificationCompat$CarExtender$UnreadConversation$Builder setLatestTimestamp(long j) {
        this.mLatestTimestamp = j;
        return this;
    }

    public NotificationCompat$CarExtender$UnreadConversation build() {
        return new NotificationCompat$CarExtender$UnreadConversation((String[]) this.mMessages.toArray(new String[this.mMessages.size()]), this.mRemoteInput, this.mReplyPendingIntent, this.mReadPendingIntent, new String[]{this.mParticipant}, this.mLatestTimestamp);
    }
}
