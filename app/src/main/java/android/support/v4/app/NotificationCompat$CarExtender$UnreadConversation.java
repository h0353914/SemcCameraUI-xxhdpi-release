package android.support.v4.app;

import android.app.PendingIntent;

public class NotificationCompat$CarExtender$UnreadConversation {
    private final long mLatestTimestamp;
    private final String[] mMessages;
    private final String[] mParticipants;
    private final PendingIntent mReadPendingIntent;
    private final RemoteInput mRemoteInput;
    private final PendingIntent mReplyPendingIntent;

    NotificationCompat$CarExtender$UnreadConversation(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
        this.mMessages = strArr;
        this.mRemoteInput = remoteInput;
        this.mReadPendingIntent = pendingIntent2;
        this.mReplyPendingIntent = pendingIntent;
        this.mParticipants = strArr2;
        this.mLatestTimestamp = j;
    }

    public String[] getMessages() {
        return this.mMessages;
    }

    public RemoteInput getRemoteInput() {
        return this.mRemoteInput;
    }

    public PendingIntent getReplyPendingIntent() {
        return this.mReplyPendingIntent;
    }

    public PendingIntent getReadPendingIntent() {
        return this.mReadPendingIntent;
    }

    public String[] getParticipants() {
        return this.mParticipants;
    }

    public String getParticipant() {
        if (this.mParticipants.length > 0) {
            return this.mParticipants[0];
        }
        return null;
    }

    public long getLatestTimestamp() {
        return this.mLatestTimestamp;
    }
}
