package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public class NotificationCompat$Action {
    static final String EXTRA_SEMANTIC_ACTION = "android.support.action.semanticAction";
    static final String EXTRA_SHOWS_USER_INTERFACE = "android.support.action.showsUserInterface";
    public static final int SEMANTIC_ACTION_ARCHIVE = 5;
    public static final int SEMANTIC_ACTION_CALL = 10;
    public static final int SEMANTIC_ACTION_DELETE = 4;
    public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
    public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
    public static final int SEMANTIC_ACTION_MUTE = 6;
    public static final int SEMANTIC_ACTION_NONE = 0;
    public static final int SEMANTIC_ACTION_REPLY = 1;
    public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
    public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
    public static final int SEMANTIC_ACTION_UNMUTE = 7;
    public PendingIntent actionIntent;
    public int icon;
    private boolean mAllowGeneratedReplies;
    private final RemoteInput[] mDataOnlyRemoteInputs;
    final Bundle mExtras;
    private final RemoteInput[] mRemoteInputs;
    private final int mSemanticAction;
    boolean mShowsUserInterface;
    public CharSequence title;

    public NotificationCompat$Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        this(i, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true);
    }

    NotificationCompat$Action(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i2, boolean z2) {
        this.mShowsUserInterface = true;
        this.icon = i;
        this.title = NotificationCompat$Builder.limitCharSequenceLength(charSequence);
        this.actionIntent = pendingIntent;
        this.mExtras = bundle == null ? new Bundle() : bundle;
        this.mRemoteInputs = remoteInputArr;
        this.mDataOnlyRemoteInputs = remoteInputArr2;
        this.mAllowGeneratedReplies = z;
        this.mSemanticAction = i2;
        this.mShowsUserInterface = z2;
    }

    public int getIcon() {
        return this.icon;
    }

    public CharSequence getTitle() {
        return this.title;
    }

    public PendingIntent getActionIntent() {
        return this.actionIntent;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public boolean getAllowGeneratedReplies() {
        return this.mAllowGeneratedReplies;
    }

    public RemoteInput[] getRemoteInputs() {
        return this.mRemoteInputs;
    }

    public int getSemanticAction() {
        return this.mSemanticAction;
    }

    public RemoteInput[] getDataOnlyRemoteInputs() {
        return this.mDataOnlyRemoteInputs;
    }

    public boolean getShowsUserInterface() {
        return this.mShowsUserInterface;
    }
}
